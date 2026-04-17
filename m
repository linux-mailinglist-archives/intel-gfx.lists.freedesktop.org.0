Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qA8rCTMA4mna0QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 11:41:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C900C4196E9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 11:41:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 590AB10E99B;
	Fri, 17 Apr 2026 09:41:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMLbC3eR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67DBC10E99F;
 Fri, 17 Apr 2026 09:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776418863; x=1807954863;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nmlaRPKRlUpzNtf9EWoYcPZDbITqq8qMURg5SFX04Ss=;
 b=BMLbC3eR/ZzCxQupiPUh78vRv3PMZhJVD5h5sPvQ1JKMcMGWZjhYVVRB
 bdCfy1JagYXRPj3DSnUEPHaPU5r8pyQPY1T3p1ssfN8FTKwN2X4zBFcxq
 nBnE5cRNxZcIoyOIIqsvISWMnumjf9YL9zKWot6e2zG1gY8F8T168IqDb
 DBbsNs402Sv3MQiY5PP9Wfrw7a2hMrwMjd7CpdocYQ0qGnB2bcUfWEr6q
 Weyv45zjmTS8YkCqMTYWR/nPhx/XVnYt4BKZ1i2E9/N1ucNpxdPWEz2Yh
 P8lMScDASmchAcx9byQLLW5LKu6Kcc2Pquabp1yvj71OcKGk48Vosdj0i g==;
X-CSE-ConnectionGUID: 2/PzXhV9SkexDswKDmVqAA==
X-CSE-MsgGUID: rkIKp5o1SVyenteMKaCp7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="81030024"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="81030024"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 02:41:02 -0700
X-CSE-ConnectionGUID: lOcToc/RRIWO+LW8yWZBnA==
X-CSE-MsgGUID: TBgoQnBmRaCn91Yyochomw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="230871694"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.127])
 by orviesa009-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2026 02:41:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 03/11] drm/i915: Extract intel_fb_needs_cpu_access()
In-Reply-To: <20260416174448.28264-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
 <20260416174448.28264-4-ville.syrjala@linux.intel.com>
Date: Fri, 17 Apr 2026 12:40:57 +0300
Message-ID: <4785c0693ee8cc26a007468ab699b65f7a5e4331@intel.com>
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
X-Rspamd-Queue-Id: C900C4196E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 16 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the naked "does the framebuffer have a clear color
> plane?" checks with a more abstract helper that simply tells
> us whether we require CPU access to the framebuffer's memory.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_fb.h | 1 +
>  drivers/gpu/drm/i915/i915_fb_pin.c      | 2 +-
>  drivers/gpu/drm/xe/display/xe_fb_pin.c  | 2 +-
>  4 files changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index c4af368deffd..cbeb39ebdb73 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -521,6 +521,11 @@ bool intel_fb_needs_64k_phys(u64 modifier)
>  				      INTEL_PLANE_CAP_NEED64K_PHYS);
>  }
>=20=20
> +bool intel_fb_needs_cpu_access(const struct drm_framebuffer *fb)
> +{
> +	return intel_fb_rc_ccs_cc_plane(fb) >=3D 0;
> +}
> +
>  /**
>   * intel_fb_is_tile4_modifier: Check if a modifier is a tile4 modifier t=
ype
>   * @modifier: Modifier to check
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index fc2c4d59bf06..0a027e2595b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -38,6 +38,7 @@ bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>  bool intel_fb_is_mc_ccs_modifier(u64 modifier);
>  bool intel_fb_needs_64k_phys(u64 modifier);
>  bool intel_fb_is_tile4_modifier(u64 modifier);
> +bool intel_fb_needs_cpu_access(const struct drm_framebuffer *fb);
>=20=20
>  bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int col=
or_plane);
>  int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i9=
15_fb_pin.c
> index 4fe6b9859b3f..780be25ad43b 100644
> --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -61,7 +61,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>  			 * ensure it is always in the mappable part of lmem, if this is
>  			 * a small-bar device.
>  			 */
> -			if (intel_fb_rc_ccs_cc_plane(fb) >=3D 0)
> +			if (intel_fb_needs_cpu_access(fb))
>  				flags &=3D ~I915_BO_ALLOC_GPU_ONLY;
>  			ret =3D __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
>  							flags);
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 58cd527e1fde..205492639dba 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -335,7 +335,7 @@ static struct i915_vma *__xe_pin_fb_vma(const struct =
intel_framebuffer *fb,
>=20=20
>  	refcount_set(&vma->ref, 1);
>  	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
> -	    intel_fb_rc_ccs_cc_plane(&fb->base) >=3D 0 &&
> +	    intel_fb_needs_cpu_access(&fb->base) &&
>  	    !(bo->flags & XE_BO_FLAG_NEEDS_CPU_ACCESS)) {
>  		struct xe_vram_region *vram =3D xe_device_get_root_tile(xe)->mem.vram;

--=20
Jani Nikula, Intel
