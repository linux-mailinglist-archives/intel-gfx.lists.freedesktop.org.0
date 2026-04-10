Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPtuESEd2WmLmQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:54:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C27B3D9D19
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:54:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1EC110E251;
	Fri, 10 Apr 2026 15:54:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dtue6XK+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50DC310E140;
 Fri, 10 Apr 2026 15:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775836445; x=1807372445;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=FLUWo4os64Bjqg7TaRnaZIMTYbuimZx2sq906koI2Oo=;
 b=Dtue6XK+lo6QFOl3KQdVDIB46/kpW5UFJvGW2Xdb0R1F1aUoSW+VeK3u
 pELau0vT40dpG09c5QoYaTtv4EEHdIECTi0ptR5okG9rTDu2q1BHDeU8s
 uYTCi2nkftjMJgGan2hyjHRE0iWre2oimd+CfZzHPF2+QVHB8MsW2yS2f
 n0bgGlIEJRYZFfbNHNpGdkq/je4L3bK1E4UTBLeqJsYD71Q0gWXZ3uV+T
 fbkD9rB7ACpEmG4v+boVPRLYe5SNTQ6fHlETCQE4H3nNjUibTutBKzV9r
 9D7mJgeTitjFSY5cJ7BA16eYg+fhvnMn5Z6kAvwhJZFvOZbWLyZdXc8qj Q==;
X-CSE-ConnectionGUID: fDwoToHlT66OCKFTcfuD4g==
X-CSE-MsgGUID: BCPAzZpdSPS8fMbYVebtKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="80718566"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="80718566"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:54:04 -0700
X-CSE-ConnectionGUID: 6bgCElC/QWm7YbnifT/7zA==
X-CSE-MsgGUID: s4fwIyOhT4y60t61zMmo1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="233186321"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:54:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/10] drm/i915: Move initial plane vblank wait into
 display code
In-Reply-To: <20260410150449.9699-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
 <20260410150449.9699-6-ville.syrjala@linux.intel.com>
Date: Fri, 10 Apr 2026 18:53:58 +0300
Message-ID: <337f90c770b4a7b7db437ecb1ddfa14787898232@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
X-Rspamd-Queue-Id: 6C27B3D9D19
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The initial plane vblank wait operates on display registers,
> so it really belongs in the display code proper. Move it there.
>
> We can use intel_parent_irq_enabled() to determine if we can
> rely on interrupts or not.
>
> On average we should end up waiting half a frame here, so the
> polling interval can be fairly long. 1 ms (which actually
> makes poll_timeout_us() use ~250-1000 usec) seems good enough
> to me.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Yes, it's all nicer this way. Just goes on to show how it's sometimes
better to do things one way to get things rolling, and only afterwards
you understand how it should be done.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_initial_plane.c    | 22 ++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_initial_plane.c     |  6 -----
>  drivers/gpu/drm/xe/display/xe_initial_plane.c | 19 ----------------
>  include/drm/intel/display_parent_interface.h  |  2 --
>  4 files changed, 21 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers=
/gpu/drm/i915/display/intel_initial_plane.c
> index 911d67dceba9..74e10d34c63c 100644
> --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> @@ -1,14 +1,20 @@
>  // SPDX-License-Identifier: MIT
>  /* Copyright =C2=A9 2025 Intel Corporation */
>=20=20
> +#include <linux/iopoll.h>
> +
>  #include <drm/drm_print.h>
>  #include <drm/intel/display_parent_interface.h>
>=20=20
> +#include "intel_crtc.h"
> +#include "intel_de.h"
>  #include "intel_display_core.h"
> +#include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_initial_plane.h"
> +#include "intel_parent.h"
>  #include "intel_plane.h"
>=20=20
>  struct intel_initial_plane_configs {
> @@ -18,8 +24,22 @@ struct intel_initial_plane_configs {
>  void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> +	u32 start_ts, end_ts;
> +	int ret;
>=20=20
> -	display->parent->initial_plane->vblank_wait(&crtc->base);
> +	/* xe doesn't have interrupts enabled this early */
> +	if (intel_parent_irq_enabled(display)) {
> +		intel_crtc_wait_for_next_vblank(crtc);
> +		return;
> +	}
> +
> +	start_ts =3D intel_de_read(display, PIPE_FRMTMSTMP(crtc->pipe));
> +
> +	ret =3D poll_timeout_us(end_ts =3D intel_de_read(display, PIPE_FRMTMSTM=
P(crtc->pipe)),
> +			      end_ts !=3D start_ts, 1000, 40 * 1000, false);
> +	if (ret)
> +		drm_warn(display->drm, "[CRTC:%d:%s] early vblank wait timed out\n",
> +			 crtc->base.base.id, crtc->base.name);
>  }
>=20=20
>  static const struct intel_plane_state *
> diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/=
i915/i915_initial_plane.c
> index 5cb1adde67b6..7775e657271b 100644
> --- a/drivers/gpu/drm/i915/i915_initial_plane.c
> +++ b/drivers/gpu/drm/i915/i915_initial_plane.c
> @@ -16,11 +16,6 @@
>  #include "i915_drv.h"
>  #include "i915_initial_plane.h"
>=20=20
> -static void i915_initial_plane_vblank_wait(struct drm_crtc *crtc)
> -{
> -	intel_crtc_wait_for_next_vblank(to_intel_crtc(crtc));
> -}
> -
>  static enum intel_memory_type
>  initial_plane_memory_type(struct drm_i915_private *i915)
>  {
> @@ -282,7 +277,6 @@ static void i915_plane_config_fini(struct intel_initi=
al_plane_config *plane_conf
>  }
>=20=20
>  const struct intel_display_initial_plane_interface i915_display_initial_=
plane_interface =3D {
> -	.vblank_wait =3D i915_initial_plane_vblank_wait,
>  	.alloc_obj =3D i915_alloc_initial_plane_obj,
>  	.setup =3D i915_initial_plane_setup,
>  	.config_fini =3D i915_plane_config_fini,
> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/=
drm/xe/display/xe_initial_plane.c
> index 8f2d0244c03f..37bd15d12169 100644
> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> @@ -7,8 +7,6 @@
>=20=20
>  #include "regs/xe_gtt_defs.h"
>=20=20
> -#include "intel_crtc.h"
> -#include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
>  #include "intel_fb_pin.h"
> @@ -19,22 +17,6 @@
>  #include "xe_mmio.h"
>  #include "xe_vram_types.h"
>=20=20
> -/* Early xe has no irq */
> -static void xe_initial_plane_vblank_wait(struct drm_crtc *_crtc)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
> -	struct xe_device *xe =3D to_xe_device(crtc->base.dev);
> -	struct xe_reg pipe_frmtmstmp =3D XE_REG(i915_mmio_reg_offset(PIPE_FRMTM=
STMP(crtc->pipe)));
> -	u32 timestamp;
> -	int ret;
> -
> -	timestamp =3D xe_mmio_read32(xe_root_tile_mmio(xe), pipe_frmtmstmp);
> -
> -	ret =3D xe_mmio_wait32_not(xe_root_tile_mmio(xe), pipe_frmtmstmp, ~0U, =
timestamp, 40000U, &timestamp, false);
> -	if (ret < 0)
> -		drm_warn(&xe->drm, "waiting for early vblank failed with %i\n", ret);
> -}
> -
>  static struct xe_bo *
>  initial_plane_bo(struct xe_device *xe,
>  		 struct intel_initial_plane_config *plane_config)
> @@ -172,7 +154,6 @@ static void xe_plane_config_fini(struct intel_initial=
_plane_config *plane_config
>  }
>=20=20
>  const struct intel_display_initial_plane_interface xe_display_initial_pl=
ane_interface =3D {
> -	.vblank_wait =3D xe_initial_plane_vblank_wait,
>  	.alloc_obj =3D xe_alloc_initial_plane_obj,
>  	.setup =3D xe_initial_plane_setup,
>  	.config_fini =3D xe_plane_config_fini,
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/i=
ntel/display_parent_interface.h
> index 9041897c772e..b513e3f9924d 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -8,7 +8,6 @@
>=20=20
>  enum vlv_iosf_sb_unit;
>  struct dma_fence;
> -struct drm_crtc;
>  struct drm_device;
>  struct drm_file;
>  struct drm_framebuffer;
> @@ -87,7 +86,6 @@ struct intel_display_hdcp_interface {
>  };
>=20=20
>  struct intel_display_initial_plane_interface {
> -	void (*vblank_wait)(struct drm_crtc *crtc);
>  	struct drm_gem_object *(*alloc_obj)(struct drm_device *drm, struct inte=
l_initial_plane_config *plane_config);
>  	int (*setup)(struct drm_plane_state *plane_state, struct intel_initial_=
plane_config *plane_config,
>  		     struct drm_framebuffer *fb, struct i915_vma *vma);

--=20
Jani Nikula, Intel
