Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A019963E5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 10:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C72D10E6A6;
	Wed,  9 Oct 2024 08:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8171F10E6A5;
 Wed,  9 Oct 2024 08:51:57 +0000 (UTC)
Received: from 91-155-255-253.elisa-laajakaista.fi ([91.155.255.253]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1sySQE-00000000M1d-3KfA; Wed, 09 Oct 2024 11:51:55 +0300
Message-ID: <3382f8ac70c049b67c85d5b9a49e9074bec514ac.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 intel-xe@lists.freedesktop.org, 	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>
Date: Wed, 09 Oct 2024 11:51:53 +0300
In-Reply-To: <20241008223741.82790-4-matthew.s.atwood@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-4-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 03/10] drm/i915/xe3lpd: Add new display power wells
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

On Tue, 2024-10-08 at 15:37 -0700, Matt Atwood wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
>=20
> Xe3's power well handling is similar to previous platforms, but there
> are a few changes that need to be handled to ensure optimal power
> management:
>  - PGB now only depends on PG1, not PG2
>  - Transcoder B is now in PG1 (was previously in PGB)
>  - Transcoders C & D are now in PG2 (were previously in PGC/PGD)
>  - DC states now require PG2 to be off (whereas on Xe2 it could remain
>    on as a dependency of PGB, although the features inside of it could
>    not be used).
>=20
> Bspec: 72519, 68851
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
