Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E29953D0253
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 21:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629C76E226;
	Tue, 20 Jul 2021 19:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91BA76E226
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 19:51:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="272433117"
X-IronPort-AV: E=Sophos;i="5.84,255,1620716400"; d="scan'208";a="272433117"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 12:51:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,255,1620716400"; d="scan'208";a="500880967"
Received: from tjathaud-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.255.230.66])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 12:51:39 -0700
Date: Tue, 20 Jul 2021 12:51:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210720195138.vmy2w3ktcgupbs4z@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210625235600.765677-1-jose.souza@intel.com>
 <20210625235600.765677-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210625235600.765677-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Disable FBC when PSR2
 is enabled display 12 and newer
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 25, 2021 at 04:56:00PM -0700, Jose Souza wrote:
>This is now a requirement for all display 12 and newer, not only for
>tigerlake.
>
>BSpec: 50422
>Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i9=
15/display/intel_fbc.c
>index 7dc72e4a4656b..270b1f26566df 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -911,11 +911,11 @@ static bool intel_fbc_can_activate(struct intel_crtc=
 *crtc)
> 	}
>
> 	/*
>-	 * Tigerlake is not supporting FBC with PSR2.
>+	 * Display 12+ is not supporting FBC with PSR2.
> 	 * Recommendation is to keep this combination disabled
> 	 * Bspec: 50422 HSD: 14010260002
> 	 */
>-	if (fbc->state_cache.psr2_active && IS_TIGERLAKE(dev_priv)) {
>+	if (fbc->state_cache.psr2_active && DISPLAY_VER(dev_priv) >=3D 12) {
> 		fbc->no_fbc_reason =3D "not supported with PSR2";
> 		return false;
> 	}
>-- =

>2.32.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
