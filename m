Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF19B1C5A2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 14:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B10010E10E;
	Wed,  6 Aug 2025 12:13:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nc4GUuDD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECF6B10E757
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 12:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754482436; x=1786018436;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7dGmCBDUFRYCDpYdZxHou0U16LHWAvqOUurQYlbhs8M=;
 b=Nc4GUuDDrypgw86J7QldwXEX7TyCR1CroE+EA9yc6NGDX/YF08T8p5zk
 PB41Jn9Iq9NoqeeFRfm6I57ucHDvnQmImsOFohgIoNvGtM1DEhIBtyIf7
 MirhE0qNXHeCsw/mDDiT062iXAJgRxMcvY94dAgyupXPlDOWGusZM/rLk
 ZGMTZbGFVqD6h/Qn5Or4pq9Dyx2MFue/rWW28FeNJzQoArhTo8yNRBuOE
 cSomR6NldrSaKWeRmb+6zsj+pPfZLDawFSZJrORE1pUpILIJA6SsjeKPE
 P+CAl1CFkSyI5elX1xLQgV2uHzHwj//X7lSr5lPKDSaL+B6x/trD/Tnr/ A==;
X-CSE-ConnectionGUID: Fe/K6sPZSYC8yIMaYuMrtw==
X-CSE-MsgGUID: cPkbbRsrRyuGDAyFItMwow==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56933517"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56933517"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 05:13:56 -0700
X-CSE-ConnectionGUID: 1Yp4EJW5Sz+mxI8U2JP91A==
X-CSE-MsgGUID: hPClCrIIRX6nr60aHcBVig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="164773314"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 05:13:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/dsi: Fix overflow issue in pclk parsing
In-Reply-To: <20250806102727.2043589-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250806102727.2043589-1-jouni.hogander@intel.com>
Date: Wed, 06 Aug 2025 15:13:51 +0300
Message-ID: <c02246564c85265aae33d6206ea750c274901cf3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 06 Aug 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Parsed divider p will overflow and is considered being valid divider in
> case pll_ctl =3D=3D 0.
>
> Fix this by using do while.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm=
/i915/display/vlv_dsi_pll.c
> index b52463fdec47..f56985c3da54 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> @@ -142,10 +142,10 @@ static int vlv_dsi_pclk(struct intel_encoder *encod=
er,
>  	pll_div &=3D DSI_PLL_M1_DIV_MASK;
>  	pll_div =3D pll_div >> DSI_PLL_M1_DIV_SHIFT;
>=20=20
> -	while (pll_ctl) {
> +	do {
>  		pll_ctl =3D pll_ctl >> 1;
>  		p++;
> -	}
> +	} while (pll_ctl);
>  	p--;

Alternatively, use p =3D lfs(pll_ctl), check the return value, and p--
after that?


>=20=20
>  	if (!p) {

--=20
Jani Nikula, Intel
