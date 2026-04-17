Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFIBNfX/4Wna0QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 11:40:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7057741969F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 11:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9592310E98F;
	Fri, 17 Apr 2026 09:39:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W17sJ1pW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A3A410E98F;
 Fri, 17 Apr 2026 09:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776418799; x=1807954799;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8d4x6HIQKjA/6kTFS32505T4OlCQ4L2MOdTWEG2RAMI=;
 b=W17sJ1pWx+Bud6bFhP1VPhH/WmphwUUc5shiopqL+l/nGOdFQR4/+kao
 qIlbWq/lPVePESCRszYG0OpuRN2oJFSrJV0x0WS2sQDZaYgLYTGS07qK6
 Gdwn+eFya04fdIf23CboHVpLlrjsfh03OwZ4QO9Wz/hav/S9sgKef2R60
 xu+PrastG0Uw5+yrmM9b6Cq0QBgxlgpk6rSOU9D3otsZqqDdQJnBfJkEl
 SDQUcujw+4CVBo8a/HdFyR973PqSXBnQMluQd/TrsJnyJqtduKUhnUGOJ
 bN7GdA7fJlzV4UqX08QV+X8PPbZ9/GWWh884xPkUP9Vemf5A/KMPnhbsm Q==;
X-CSE-ConnectionGUID: Fc0u9RVHSsO+ji/URpsx9Q==
X-CSE-MsgGUID: DSB+WTr+RleQYCt5CmIJ6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="100080152"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="100080152"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 02:39:58 -0700
X-CSE-ConnectionGUID: oZK4pDItTMqgnurTRi801w==
X-CSE-MsgGUID: YTp1OKySSMK/m2zdiADELg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="254212491"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.127])
 by fmviesa002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2026 02:39:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/11] drm/i915: Introduce pin_params.needs_cpu_lmem_access
In-Reply-To: <20260416174448.28264-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
 <20260416174448.28264-5-ville.syrjala@linux.intel.com>
Date: Fri, 17 Apr 2026 12:39:54 +0300
Message-ID: <8e03ca87134e5bebee44aabeccd5fb86a096d4fa@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7057741969F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 16 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add a new flag pin_params.neeeds_cpu_lmem_access so that the
> low level pinning code doesn't need to peek into the display
> driver's framebuffer structure.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.h | 1 +
>  drivers/gpu/drm/i915/i915_fb_pin.c          | 4 +++-
>  drivers/gpu/drm/xe/display/xe_fb_pin.c      | 3 ++-
>  3 files changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.h
> index e6271437459d..bcf5a1f46092 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -19,6 +19,7 @@ struct intel_fb_pin_params {
>  	unsigned int alignment;
>  	unsigned int phys_alignment;
>  	unsigned int vtd_guard;
> +	bool needs_cpu_lmem_access;
>  };
>=20=20
>  struct i915_vma *
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i9=
15_fb_pin.c
> index 780be25ad43b..96ffc4b0d809 100644
> --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -61,7 +61,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>  			 * ensure it is always in the mappable part of lmem, if this is
>  			 * a small-bar device.
>  			 */
> -			if (intel_fb_needs_cpu_access(fb))
> +			if (pin_params->needs_cpu_lmem_access)
>  				flags &=3D ~I915_BO_ALLOC_GPU_ONLY;
>  			ret =3D __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
>  							flags);
> @@ -275,6 +275,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state,
>  			.alignment =3D intel_plane_fb_min_alignment(plane_state),
>  			.phys_alignment =3D intel_plane_fb_min_phys_alignment(plane_state),
>  			.vtd_guard =3D intel_plane_fb_vtd_guard(plane_state),
> +			.needs_cpu_lmem_access =3D intel_fb_needs_cpu_access(&fb->base),

IIUC this path never uses .needs_cpu_lmem_access, but you initialize it
anyway. What I find confusing is initializing it here apparently
unnecessarily, but then leaving it out on a number of other paths that
don't need it.

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>  		};
>  		int fence_id =3D -1;
>=20=20
> @@ -289,6 +290,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state,
>  		struct intel_fb_pin_params pin_params =3D {
>  			.view =3D &plane_state->view.gtt,
>  			.alignment =3D intel_plane_fb_min_alignment(plane_state),
> +			.needs_cpu_lmem_access =3D intel_fb_needs_cpu_access(&fb->base),
>  		};
>=20=20
>  		vma =3D i915_dpt_pin_to_ggtt(fb->dpt, pin_params.alignment / 512);
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 205492639dba..a4eb06cfa769 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -335,7 +335,7 @@ static struct i915_vma *__xe_pin_fb_vma(const struct =
intel_framebuffer *fb,
>=20=20
>  	refcount_set(&vma->ref, 1);
>  	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
> -	    intel_fb_needs_cpu_access(&fb->base) &&
> +	    pin_params->needs_cpu_lmem_access &&
>  	    !(bo->flags & XE_BO_FLAG_NEEDS_CPU_ACCESS)) {
>  		struct xe_vram_region *vram =3D xe_device_get_root_tile(xe)->mem.vram;
>=20=20
> @@ -474,6 +474,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_=
plane_state,
>  	struct intel_fb_pin_params pin_params =3D {
>  		.view =3D &new_plane_state->view.gtt,
>  		.alignment =3D plane->min_alignment(plane, fb, 0),
> +		.needs_cpu_lmem_access =3D intel_fb_needs_cpu_access(fb),
>  	};
>=20=20
>  	if (reuse_vma(new_plane_state, old_plane_state))

--=20
Jani Nikula, Intel
