Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A019B92F4
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 15:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609A910E1EE;
	Fri,  1 Nov 2024 14:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47D6210E1EE;
 Fri,  1 Nov 2024 14:17:52 +0000 (UTC)
Received: from 91-155-254-188.elisa-laajakaista.fi ([91.155.254.188]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t6sT8-00000001Fa7-1OzP; Fri, 01 Nov 2024 16:17:50 +0200
Message-ID: <7d67cf10d39068d17a4a348b628b15f69cde264b.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Date: Fri, 01 Nov 2024 16:17:40 +0200
In-Reply-To: <20241021222744.294371-10-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-10-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 09/13] drm/i915/dmc_wl: Deal with existing references
 when disabling
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
> It is possible that there are active wakelock references at the time we
> are disabling the DMC wakelock mechanism. We need to deal with that in
> two ways:
>=20
> (A) Implement the missing step from Bspec:
>=20
>     The Bspec instructs us to clear any existing wakelock request bit
>     after disabling the mechanism. That gives a clue that it is okay to
>     disable while there are locks held and we do not need to wait for
>     them. However, since the spec is not explicit about it, we need
>     still to get confirmation with the hardware team. Let's thus
>     implement the spec and add a TODO note.
>=20
> (B) Ensure a consistent driver state:
>=20
>     The enable/disable logic would be problematic if the following
>     sequence of events would happen:
>=20
>     1. Function A calls intel_dmc_wl_get();
>     2. Some function calls intel_dmc_wl_disable();
>     3. Some function calls intel_dmc_wl_enable();
>     4. Function A is done and calls intel_dmc_wl_put().
>=20
>     At (2), the refcount becomes zero and then (4) causes an invalid
>     decrement to the refcount. That would cause some issues:
>=20
>         - At the time between (3) and (4), function A would think that
>           the hardware lock is held but it could not be really held
>           until intel_dmc_wl_get() is called by something else.
>         - The call made to (4) could cause the refcount to become zero
>           and consequently the hardware lock to be released while there
>           could be innocent paths trusting they still have the lock.
>=20
>     To fix that, we need to keep the refcount correctly in sync with
>     intel_dmc_wl_{get,put}() calls and retake the hardware lock when
>     enabling the DMC wakelock with a non-zero refcount.
>=20
>     One missing piece left to be handled here is the following scenario:
>=20
>     1. Function A calls intel_dmc_wl_get();
>     2. Some function calls intel_dmc_wl_disable();
>     3. Some function calls intel_dmc_wl_enable();
>     4. Concurrently with (3), function A performs the MMIO in between
>        setting DMC_WAKELOCK_CFG_ENABLE and asserting the lock with
>        __intel_dmc_wl_take().
>=20
>     I'm mostly sure this would cause issues future display IPs if DMC
>     trap implementation was completely removed. We need to check with
>     the hardware team whether it would be safe to assert the hardware
>     lock before setting DMC_WAKELOCK_CFG_ENABLE to avoid this scenario.
>     If not, then we would have to deal with that via software
>     synchronization.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
