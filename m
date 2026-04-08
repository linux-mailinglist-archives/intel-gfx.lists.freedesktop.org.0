Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMH6LEcW1mnwAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:48:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 413D13B94D6
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA3310E599;
	Wed,  8 Apr 2026 08:48:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="efTlf/PX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A818810E599;
 Wed,  8 Apr 2026 08:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775638085; x=1807174085;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=af6cqsDfb4RHtYcnxqGMTVRKtK2idONTp7yXoh8TXMA=;
 b=efTlf/PXzgUKjLMnqaeH/p1UO3DlMHKbmgyrHy8BvMvuVlYvCllQJ+Id
 Ysdfe5NvN31zlHtNB3CN4M4Zxt1TG5q7NyNr8WUO29JMZIjTqYXbIzusR
 GoTNFh7RrUTw0zHc023XeK8+nN1w5td4OJRro/cYjzu68TDpBO6JnTmNM
 pP9up1YSefd/E7l7UoMLvYIGey2vDDNL1LLB+XTYi9s3vBY0DJXBzg36E
 2uZQWl+JhvU495RaGf9v+m79e88VtvShodKh/DLn61a2/pvPQ/zu8s2gr
 iQ+wydngxZAbHlrQPqueAs/BN4V5DCYoRJp5JtjpAeSo7KLQyj2x725es g==;
X-CSE-ConnectionGUID: TCY2fhSvT2utGKWX6/Fe1A==
X-CSE-MsgGUID: JclW8ILVRMSPebV231F2GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80502315"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80502315"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:48:04 -0700
X-CSE-ConnectionGUID: MW3dQT1fQB+ozRFlA4ddCA==
X-CSE-MsgGUID: DSRGHrtvQICTuz5uAwuqdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228346258"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:48:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/12] drm/xe/fb: Extract xe_dpt_size()
In-Reply-To: <20260407155053.32156-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
 <20260407155053.32156-7-ville.syrjala@linux.intel.com>
Date: Wed, 08 Apr 2026 11:47:59 +0300
Message-ID: <6c2020b26cb953ee922a15710112a5afe7ef5927@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 413D13B94D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 07 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Declutter the xe fb pinning code by extracting the DPT size
> calculation into its own function.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 30 +++++++++++++++-----------
>  1 file changed, 18 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 72efafb189f7..9873904a950d 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -139,6 +139,22 @@ write_dpt_remapped(struct xe_bo *bo,
>  	}
>  }
>=20=20
> +static unsigned int xe_dpt_size(struct drm_gem_object *obj,
> +				const struct i915_gtt_view *view)
> +{
> +	unsigned int pages;
> +	int pte_size =3D 8;
> +
> +	if (view->type =3D=3D I915_GTT_VIEW_NORMAL)
> +		pages =3D obj->size / XE_PAGE_SIZE;
> +	else if (view->type =3D=3D I915_GTT_VIEW_REMAPPED)
> +		pages =3D intel_remapped_info_size(&view->remapped);
> +	else
> +		pages =3D intel_rotation_info_size(&view->rotated);
> +
> +	return ALIGN(pages * pte_size, XE_PAGE_SIZE);
> +}
> +
>  static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
>  			       const struct i915_gtt_view *view,
>  			       struct i915_vma *vma,
> @@ -149,17 +165,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_fr=
amebuffer *fb,
>  	struct xe_ggtt *ggtt =3D tile0->mem.ggtt;
>  	struct drm_gem_object *obj =3D intel_fb_bo(&fb->base);
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj), *dpt;
> -	u32 dpt_size, size =3D bo->ttm.base.size;
> -
> -	if (view->type =3D=3D I915_GTT_VIEW_NORMAL)
> -		dpt_size =3D ALIGN(size / XE_PAGE_SIZE * 8, XE_PAGE_SIZE);
> -	else if (view->type =3D=3D I915_GTT_VIEW_REMAPPED)
> -		dpt_size =3D ALIGN(intel_remapped_info_size(&view->remapped) * 8,
> -				 XE_PAGE_SIZE);
> -	else
> -		/* display uses 4K tiles instead of bytes here, convert to entries.. */
> -		dpt_size =3D ALIGN(intel_rotation_info_size(&view->rotated) * 8,
> -				 XE_PAGE_SIZE);
> +	u32 dpt_size =3D xe_dpt_size(obj, view);
>=20=20
>  	if (IS_DGFX(xe))
>  		dpt =3D xe_bo_create_pin_map_at_novm(xe, tile0,
> @@ -193,7 +199,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_fra=
mebuffer *fb,
>  		u64 pte =3D xe_ggtt_encode_pte_flags(ggtt, bo, xe->pat.idx[XE_CACHE_NO=
NE]);
>  		u32 x;
>=20=20
> -		for (x =3D 0; x < size / XE_PAGE_SIZE; x++) {
> +		for (x =3D 0; x < obj->size / XE_PAGE_SIZE; x++) {
>  			u64 addr =3D xe_bo_addr(bo, x * XE_PAGE_SIZE, XE_PAGE_SIZE);
>=20=20
>  			iosys_map_wr(&dpt->vmap, x * 8, u64, pte | addr);

--=20
Jani Nikula, Intel
