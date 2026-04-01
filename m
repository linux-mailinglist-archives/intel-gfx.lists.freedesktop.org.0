Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKGAIVEZzWnOaAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 15:10:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D7337AF98
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 15:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8012410F000;
	Wed,  1 Apr 2026 13:10:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AUdJt+KP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82A6B10F002;
 Wed,  1 Apr 2026 13:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775049038; x=1806585038;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=+wTRVpRMLQWrFfg0pd54Ao0kao4iJ09L+CXlH9anmh8=;
 b=AUdJt+KPaA86cSadO3eynLbRhs38PT8tKnl88rILj6z908Pe/M9A52zD
 ya4Gvgf8BTX8lb8QU9GUEs48Yqw4m/Cc088tPZ3xtl8bfGxkGUj+1FV+H
 5qv+HZAHfISd8Afs07Ee6IvMFUp42bLei6d/pp/1DFbGZpZB+ISDeZb4b
 jyZ9gC4Ymy0kTQrAB9+LN7nF8WHOr2/IoUFaMv8GXcftSKx0uYdmN/g/o
 /MBYTbD3LqWmNvOuhhdfrkyc22ZupoWzNH5ecZoNyikTqh1yqS4gwzqNt
 iizxLBjooYyth1bGwdcEG5e7Ut84Y42ofynqGPKLa0USngWSQDAMqDwG7 Q==;
X-CSE-ConnectionGUID: GPqamYX4Sly49w4s/Pyj2A==
X-CSE-MsgGUID: GQAMyxbOQS6M64e5/Se8kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76144685"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76144685"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 06:10:38 -0700
X-CSE-ConnectionGUID: SO3H7KxGTZ2VUGDOQfPDkg==
X-CSE-MsgGUID: 6r+8Mc6xQS6UlFaI2m3b6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="257153180"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 06:10:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915: Remove the vma parent interface
In-Reply-To: <20260331162138.19258-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260331162138.19258-1-ville.syrjala@linux.intel.com>
 <20260331162138.19258-2-ville.syrjala@linux.intel.com>
Date: Wed, 01 Apr 2026 16:10:33 +0300
Message-ID: <c7f18600dcf13e32aab0cb5914019a95af8c423e@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F3D7337AF98
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 31 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> With the fb pinning stuff directly returning the fence_id
> there is no longer any need for the vma parent interface.
> Get rid of it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_parent.c  |  9 ---------
>  drivers/gpu/drm/i915/display/intel_parent.h  |  3 ---
>  drivers/gpu/drm/i915/i915_driver.c           |  1 -
>  drivers/gpu/drm/i915/i915_vma.c              | 10 ----------
>  drivers/gpu/drm/i915/i915_vma.h              |  2 --
>  include/drm/intel/display_parent_interface.h |  7 -------
>  6 files changed, 32 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/dr=
m/i915/display/intel_parent.c
> index 2e3bad2b3e6b..4142fe3eed7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -338,15 +338,6 @@ void intel_parent_stolen_node_free(struct intel_disp=
lay *display, const struct i
>  	display->parent->stolen->node_free(node);
>  }
>=20=20
> -/* vma */
> -int intel_parent_vma_fence_id(struct intel_display *display, const struc=
t i915_vma *vma)
> -{
> -	if (!display->parent->vma)
> -		return -1;
> -
> -	return display->parent->vma->fence_id(vma);
> -}
> -
>  /* generic */
>  void intel_parent_fence_priority_display(struct intel_display *display, =
struct dma_fence *fence)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/dr=
m/i915/display/intel_parent.h
> index 2013e5ed5aa9..c1214d3329a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -109,9 +109,6 @@ u64 intel_parent_stolen_node_size(struct intel_displa=
y *display, const struct in
>  struct intel_stolen_node *intel_parent_stolen_node_alloc(struct intel_di=
splay *display);
>  void intel_parent_stolen_node_free(struct intel_display *display, const =
struct intel_stolen_node *node);
>=20=20
> -/* vma */
> -int intel_parent_vma_fence_id(struct intel_display *display, const struc=
t i915_vma *vma);
> -
>  /* generic */
>  bool intel_parent_has_auxccs(struct intel_display *display);
>  bool intel_parent_has_fenced_regions(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 385a634c3ed0..6dde714d4646 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -780,7 +780,6 @@ static const struct intel_display_parent_interface pa=
rent =3D {
>  	.rpm =3D &i915_display_rpm_interface,
>  	.rps =3D &i915_display_rps_interface,
>  	.stolen =3D &i915_display_stolen_interface,
> -	.vma =3D &i915_display_vma_interface,
>=20=20
>  	.fence_priority_display =3D fence_priority_display,
>  	.has_auxccs =3D has_auxccs,
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_=
vma.c
> index 6a3a4d4244dc..afc192d9931b 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -27,7 +27,6 @@
>=20=20
>  #include <drm/drm_gem.h>
>  #include <drm/drm_print.h>
> -#include <drm/intel/display_parent_interface.h>
>=20=20
>  #include "display/intel_fb.h"
>  #include "display/intel_frontbuffer.h"
> @@ -2333,12 +2332,3 @@ int __init i915_vma_module_init(void)
>=20=20
>  	return 0;
>  }
> -
> -static int i915_vma_fence_id(const struct i915_vma *vma)
> -{
> -	return vma->fence ? vma->fence->id : -1;
> -}
> -
> -const struct intel_display_vma_interface i915_display_vma_interface =3D {
> -	.fence_id =3D i915_vma_fence_id,
> -};
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_=
vma.h
> index fa2d9b429db6..892306ab935d 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -476,6 +476,4 @@ int i915_vma_module_init(void);
>  I915_SELFTEST_DECLARE(int i915_vma_get_pages(struct i915_vma *vma));
>  I915_SELFTEST_DECLARE(void i915_vma_put_pages(struct i915_vma *vma));
>=20=20
> -extern const struct intel_display_vma_interface i915_display_vma_interfa=
ce;
> -
>  #endif
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/i=
ntel/display_parent_interface.h
> index 97ec94a2e749..aef6a16efd90 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -176,10 +176,6 @@ struct intel_display_stolen_interface {
>  	void (*node_free)(const struct intel_stolen_node *node);
>  };
>=20=20
> -struct intel_display_vma_interface {
> -	int (*fence_id)(const struct i915_vma *vma);
> -};
> -
>  /**
>   * struct intel_display_parent_interface - services parent driver provid=
es to display
>   *
> @@ -235,9 +231,6 @@ struct intel_display_parent_interface {
>  	/** @stolen: Stolen memory. */
>  	const struct intel_display_stolen_interface *stolen;
>=20=20
> -	/** @vma: VMA interface. Optional. */
> -	const struct intel_display_vma_interface *vma;
> -
>  	/* Generic independent functions */
>  	struct {
>  		/** @fence_priority_display: Set display priority. Optional. */

--=20
Jani Nikula, Intel
