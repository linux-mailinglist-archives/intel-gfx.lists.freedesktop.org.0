Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E50189C0ED4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 20:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66F310E239;
	Thu,  7 Nov 2024 19:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D28C10E236;
 Thu,  7 Nov 2024 19:23:12 +0000 (UTC)
Received: from 91-155-254-188.elisa-laajakaista.fi ([91.155.254.188]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t9861-00000001XeF-37Ie; Thu, 07 Nov 2024 21:23:10 +0200
Message-ID: <57edfe78f9da272e0312ad77ee8ff7060932ae8c.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Date: Thu, 07 Nov 2024 21:23:06 +0200
In-Reply-To: <20241107182921.102193-18-gustavo.sousa@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
 <20241107182921.102193-18-gustavo.sousa@intel.com>
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
Subject: Re: [PATCH v3 17/18] drm/i915/dmc_wl: Do nothing until initialized
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

On Thu, 2024-11-07 at 15:27 -0300, Gustavo Sousa wrote:
> There is a bit of a chicken and egg situation where we depend on runtime
> info to know that DMC and wakelock are supported by the hardware, and
> such information is grabbed via display MMIO functions, which in turns
> call intel_dmc_wl_get() and intel_dmc_wl_put() as part of their regular
> flow.

s/which in turns call/which in turn calls/


> Since we do not expect DC states (and consequently the wakelock
> mechanism) to be enabled until DMC and DMC wakelock software structures
> are initialized, a simple and safe solution to this is to turn
> intel_dmc_wl_get() and intel_dmc_wl_put() into no-op until we have
> properly initialized.


About "safe" here... Can we be sure this will be race-free?


> Let's implement that via a new field "initialized". Not that, since we
> expect __intel_dmc_wl_supported() to be used for most non-static DMC
> wakelock functions, let's add a drm_WARN_ONCE() there for when it is
> called prior to initialization.


s/not that/note that/


> The only exception of functions that can be called before initialization
> are intel_dmc_wl_get() and intel_dmc_wl_put(), so we bail before
> calling __intel_dmc_wl_supported() if not initialized.
>=20
> An alternative solution would be to revise MMIO-related stuff in the
> whole driver initialization sequence, but that would possibly come with
> the cost of some added ordering dependencies and complexity to the
> source code.

I think this can be kept out of the commit message.  It's not very
clear what you mean and it sounds much more complex than the solution
you implemented.  Unless race can really be an issue here, but then the
whole commit message should be changed to an eventual more complex
solution.

--
Cheers,
Luca.
