Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIV8Ij8X1mnwAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:52:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6163B9565
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30AA810E590;
	Wed,  8 Apr 2026 08:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R1u49rmM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFC6C10E590;
 Wed,  8 Apr 2026 08:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775638332; x=1807174332;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vbO2BYpIKhi+q6PbAzMbdF7oKGfg1wxEOCYsct9YavI=;
 b=R1u49rmMUp1oqORiwO/Tx/WkdWBRXJHh8+R8rKgXe1ZCOJJ0ueZTHoHT
 F/EbuonGqX81+SPZDC3IYSvAvKEky1grNhd8kxUOoZUb/FYk5UM526tes
 uqUd8uDl4YFHw9vfdy4LnjgWBuai8WxRNYApIXUa79uJxIrnIIcFwUker
 ApPWD4XCLZM4yQQs96qecGhjkR32Yyl7m3f08BKK3NxG1jZwbJ2MHr/xx
 0nTdTSs8YdhhyRThDjP89Y+i5ShKRa9pXDhAhlhEa50WwiWmo/Yz3CDmo
 LRyDh/T+bAJT/4u+IOuVpiamUluMpAWTEU4a6iAekeYxuXjI3ovIvvkjO A==;
X-CSE-ConnectionGUID: 7kdybOdESwaiv/Ccx//vyg==
X-CSE-MsgGUID: CRVpl4pbSK2g7zCvA+dC3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76335225"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76335225"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:52:12 -0700
X-CSE-ConnectionGUID: eQXDQ9zOTpGGJNpGOtjdtQ==
X-CSE-MsgGUID: VOXO52aRReWbEMeHjaXj3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="225235574"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:52:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 08/12] drm/xe/fb: Use i915_gtt_view_is_*()
In-Reply-To: <20260407155053.32156-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
 <20260407155053.32156-9-ville.syrjala@linux.intel.com>
Date: Wed, 08 Apr 2026 11:52:06 +0300
Message-ID: <d01bcc79ced299ed6e08b5e162b38b20e0c7e997@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DC6163B9565
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 07 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the naked GTT view type checks with the new
> i915_gtt_view_is_*() helpers. This isolates the code
> from GTT view implementation details.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 9873904a950d..5cda276af534 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -145,9 +145,9 @@ static unsigned int xe_dpt_size(struct drm_gem_object=
 *obj,
>  	unsigned int pages;
>  	int pte_size =3D 8;
>=20=20
> -	if (view->type =3D=3D I915_GTT_VIEW_NORMAL)
> +	if (i915_gtt_view_is_normal(view))
>  		pages =3D obj->size / XE_PAGE_SIZE;
> -	else if (view->type =3D=3D I915_GTT_VIEW_REMAPPED)
> +	else if (i915_gtt_view_is_remapped(view))
>  		pages =3D intel_remapped_info_size(&view->remapped);
>  	else
>  		pages =3D intel_rotation_info_size(&view->rotated);
> @@ -195,7 +195,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_fra=
mebuffer *fb,
>  	if (IS_ERR(dpt))
>  		return PTR_ERR(dpt);
>=20=20
> -	if (view->type =3D=3D I915_GTT_VIEW_NORMAL) {
> +	if (i915_gtt_view_is_normal(view)) {
>  		u64 pte =3D xe_ggtt_encode_pte_flags(ggtt, bo, xe->pat.idx[XE_CACHE_NO=
NE]);
>  		u32 x;
>=20=20
> @@ -204,7 +204,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_fra=
mebuffer *fb,
>=20=20
>  			iosys_map_wr(&dpt->vmap, x * 8, u64, pte | addr);
>  		}
> -	} else if (view->type =3D=3D I915_GTT_VIEW_REMAPPED) {
> +	} else if (i915_gtt_view_is_remapped(view)) {
>  		write_dpt_remapped(bo, &view->remapped, &dpt->vmap);
>  	} else {
>  		const struct intel_rotation_info *rot_info =3D &view->rotated;
> @@ -298,7 +298,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_fr=
amebuffer *fb,
>  		align =3D max(align, SZ_64K);
>=20=20
>  	/* Fast case, preallocated GGTT view? */
> -	if (bo->ggtt_node[tile0->id] && view->type =3D=3D I915_GTT_VIEW_NORMAL)=
 {
> +	if (bo->ggtt_node[tile0->id] && i915_gtt_view_is_normal(view)) {
>  		vma->node =3D bo->ggtt_node[tile0->id];
>  		return 0;
>  	}
> @@ -306,7 +306,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_fr=
amebuffer *fb,
>  	/* TODO: Consider sharing framebuffer mapping?
>  	 * embed i915_vma inside intel_framebuffer
>  	 */
> -	if (view->type =3D=3D I915_GTT_VIEW_NORMAL)
> +	if (i915_gtt_view_is_normal(view))
>  		size =3D xe_bo_size(bo);
>  	else
>  		/* display uses tiles instead of bytes here, so convert it back.. */
> @@ -314,7 +314,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_fr=
amebuffer *fb,
>=20=20
>  	pte =3D xe_ggtt_encode_pte_flags(ggtt, bo, xe->pat.idx[XE_CACHE_NONE]);
>  	vma->node =3D xe_ggtt_insert_node_transform(ggtt, bo, pte, size, align,
> -						  view->type =3D=3D I915_GTT_VIEW_NORMAL ?
> +						  i915_gtt_view_is_normal(view) ?
>  						  NULL : write_ggtt_rotated_node,
>  						  &(struct fb_rotate_args){view, bo});
>  	if (IS_ERR(vma->node))

--=20
Jani Nikula, Intel
