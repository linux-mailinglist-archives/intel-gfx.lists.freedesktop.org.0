Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LiKLf9n62m2MgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:54:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6FD45EB31
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:54:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C528B10F595;
	Fri, 24 Apr 2026 12:54:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nAgRUw+L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13DEA10F588;
 Fri, 24 Apr 2026 12:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777035259; x=1808571259;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=F7fVqqyGz11k58pQuZgjyvlpB0N/6Ks5MOoOPm/+T3Q=;
 b=nAgRUw+LEcWYsM25bwrRBkHbjqZAj+IwATIhzE0hv/k5XLmhXlzBK+cR
 G2sI91/zYB4CFEIhpHp5Ic51Kt+P+LWjAsg7JY8ZDFHlfz3tfOOdWJr4s
 Kfhxq9F55Z2XMfi/4nrJ+xeCDDKHbvi5SIEd3sNlqEqgOZoznh5exlIpN
 Ds8dvzDGpKDF8m8m4Q7XCOo9oB59BkII3ccNTfMWsdwsn6lH1fOGS7VFs
 X+hJ+vdPujLFM3FKTQUjVkKAlkPQjJ4TpGCTq7gdJoh+Pu96TTKkk0HGO
 hcS7PI9O+uQH8Tt3CvVCVC8n74qbNshVIsxNv0JQjmoK1MfMEvQ/MLjae A==;
X-CSE-ConnectionGUID: jup6yHWjTYmc+jCJwhLyIg==
X-CSE-MsgGUID: KOfrhtlcSyyqeivxnieezw==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="95575706"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="95575706"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 05:54:18 -0700
X-CSE-ConnectionGUID: lW+G8RduTrivjwSd0QDOHQ==
X-CSE-MsgGUID: Nbk1FAwOTKamF90mP+rqVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="231936084"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 05:54:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 14/16] drm/i915/fbdev: Use
 intel_parent_fb_pin_ggtt_(un)pin()
In-Reply-To: <20260423165346.20884-15-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
 <20260423165346.20884-15-ville.syrjala@linux.intel.com>
Date: Fri, 24 Apr 2026 15:54:14 +0300
Message-ID: <9a2adaacf189bc66e1a3ef29665dcdbf5ae0ce80@intel.com>
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
X-Rspamd-Queue-Id: AC6FD45EB31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Thu, 23 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the intel_fb_pin_to_ggtt() and intel_fb_unpin_vma() with the
> new abstract parent interface (intel_parent_fb_pin_ggtt_(un)pin()).
>
> xe no longer needs intel_fb_unpin_vma(), and in i915 it now
> becomes and internal function to i915_fb_pin.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.h |  2 --
>  drivers/gpu/drm/i915/display/intel_fbdev.c  | 14 +++++++-------
>  drivers/gpu/drm/i915/i915_fb_pin.c          |  2 +-
>  drivers/gpu/drm/xe/display/xe_fb_pin.c      |  5 -----
>  4 files changed, 8 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.h
> index 84530f20d7d1..6ff17d3e2cf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -20,8 +20,6 @@ intel_fb_pin_to_ggtt(struct drm_gem_object *obj,
>  		     const struct intel_fb_pin_params *pin_params,
>  		     int *out_fence_id);
>=20=20
> -void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id);
> -
>  int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
>  		       const struct intel_plane_state *old_plane_state);
>  void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index aa2701795caa..8463f88149a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -53,7 +53,6 @@
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
> -#include "intel_fb_pin.h"
>  #include "intel_fbdev.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_parent.h"
> @@ -133,6 +132,7 @@ static int intel_fbdev_mmap(struct fb_info *info, str=
uct vm_area_struct *vma)
>  static void intel_fbdev_fb_destroy(struct fb_info *info)
>  {
>  	struct drm_fb_helper *fb_helper =3D info->par;
> +	struct intel_display *display =3D to_intel_display(fb_helper->client.de=
v);
>  	struct intel_fbdev *ifbdev =3D to_intel_fbdev(fb_helper);
>=20=20
>  	drm_fb_helper_fini(fb_helper);
> @@ -142,7 +142,7 @@ static void intel_fbdev_fb_destroy(struct fb_info *in=
fo)
>  	 * the info->screen_base mmaping. Leaking the VMA is simpler than
>  	 * trying to rectify all the possible error paths leading here.
>  	 */
> -	intel_fb_unpin_vma(ifbdev->vma, -1);
> +	intel_parent_fb_pin_ggtt_unpin(display, ifbdev->vma, -1);
>  	drm_framebuffer_remove(fb_helper->fb);
>=20=20
>  	drm_client_release(&fb_helper->client);
> @@ -274,6 +274,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_help=
er *helper,
>  	struct i915_vma *vma;
>  	bool prealloc =3D false;
>  	struct drm_gem_object *obj;
> +	u32 offset;
>  	int ret;
>=20=20
>  	ifbdev->fb =3D NULL;
> @@ -321,11 +322,10 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_he=
lper *helper,
>  						       DRM_MODE_ROTATE_0);
>  	pin_params.needs_low_address =3D intel_plane_needs_low_address(display);
>=20=20
> -	vma =3D intel_fb_pin_to_ggtt(obj, &pin_params, NULL);
> -	if (IS_ERR(vma)) {
> -		ret =3D PTR_ERR(vma);
> +	ret =3D intel_parent_fb_pin_ggtt_pin(display, obj, &pin_params,
> +					   &vma, &offset, NULL);
> +	if (ret)
>  		goto out_unlock;
> -	}
>=20=20
>  	helper->funcs =3D &intel_fb_helper_funcs;
>  	helper->fb =3D &fb->base;
> @@ -356,7 +356,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_help=
er *helper,
>  	return 0;
>=20=20
>  out_unpin:
> -	intel_fb_unpin_vma(vma, -1);
> +	intel_parent_fb_pin_ggtt_unpin(display, vma, -1);
>  out_unlock:
>  	intel_display_rpm_put(display, wakeref);
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i9=
15_fb_pin.c
> index 1f08e364d569..cedefee46fbf 100644
> --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -222,7 +222,7 @@ intel_fb_pin_to_ggtt(struct drm_gem_object *_obj,
>  	return vma;
>  }
>=20=20
> -void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
> +static void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
>  {
>  	if (fence_id >=3D 0)
>  		i915_vma_unpin_fence(vma);
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index e2b6ce3686a3..c3171625d150 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -424,11 +424,6 @@ intel_fb_pin_to_ggtt(struct drm_gem_object *obj,
>  	return __xe_pin_fb_vma(obj, false, pin_params);
>  }
>=20=20
> -void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
> -{
> -	__xe_unpin_fb_vma(vma);
> -}
> -
>  static int xe_fb_pin_ggtt_pin(struct drm_gem_object *obj,
>  			      const struct intel_fb_pin_params *pin_params,
>  			      struct i915_vma **out_ggtt_vma,

--=20
Jani Nikula, Intel
