Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DE05969CD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 08:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107D410FD00;
	Wed, 17 Aug 2022 06:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA79B10FCE8
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 06:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660718908; x=1692254908;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=cNCmvjcDorILDQ/W4f3bZ6ICcgw7hciNVmcRwfRz9LU=;
 b=VvGWeEeND5K+pi/um2FZJAaII3ORn+f/hTgbH+YdrdDtWSJgfBrHjbBP
 eQT91Hd2/4+jsCH35czk9R/0hDQDPslEpYrmuqrkyk3yg3t2AthEX8Zhp
 UvJo/3bXryiQwNSbrsuHJyXN4PexZYGojPAfc2FcKo6jmGo7E4JZhUzpF
 Xvs/WbQk50bswnFWXlcKAe5ErXnffhDYC1Pmf6g6JJN7xFRvXyRlmNvub
 LiSYa6Pw4T1X2fmYRqOd9oHYUEYDbMouBG12F8sz9CntMSiSc4sLKITOE
 bgonplzNAflTklr1w0PW7FOudId+ev8TznSP6jacaKQuhwUevAtErvEPK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="272186049"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="272186049"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 23:48:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="667474998"
Received: from sbammi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 23:48:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220817012322.rm4xuqdt7vxtmtov@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <a5641ef131cf70d404b5344eb8c3cd1688fdaae6.1660230121.git.jani.nikula@intel.com>
 <20220817012322.rm4xuqdt7vxtmtov@ldmartin-desk2.lan>
Date: Wed, 17 Aug 2022 09:48:24 +0300
Message-ID: <875yirqsav.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct to
 drm_i915_private
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 16 Aug 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Aug 11, 2022 at 06:07:12PM +0300, Jani Nikula wrote:
>>In another long-overdue cleanup, add a display sub-struct to
>>drm_i915_private, and start moving display related members there. Start
>>with display funcs that need a rename anyway to not collide with the new
>>display member.
>>
>>Add a new header under display/ for defining struct intel_display.
>>
>>Rename struct drm_i915_display_funcs to intel_display_funcs while at it.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_display.c  | 28 +++++++-------
>> .../gpu/drm/i915/display/intel_display_core.h | 38 +++++++++++++++++++
>> .../drm/i915/display/intel_modeset_setup.c    |  2 +-
>> .../drm/i915/display/intel_plane_initial.c    |  2 +-
>> drivers/gpu/drm/i915/i915_drv.h               | 21 ++--------
>> 5 files changed, 57 insertions(+), 34 deletions(-)
>> create mode 100644 drivers/gpu/drm/i915/display/intel_display_core.h
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
>>index f143adefdf38..24ab1501beea 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>>@@ -4144,7 +4144,7 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_s=
tate *crtc_state)
>> 	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> 	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>>
>>-	if (!i915->display->get_pipe_config(crtc, crtc_state))
>>+	if (!i915->display.funcs.crtc->get_pipe_config(crtc, crtc_state))
>> 		return false;
>>
>> 	crtc_state->hw.active =3D true;
>>@@ -7119,7 +7119,7 @@ static void intel_enable_crtc(struct intel_atomic_s=
tate *state,
>>
>> 	intel_crtc_update_active_timings(new_crtc_state);
>>
>>-	dev_priv->display->crtc_enable(state, crtc);
>>+	dev_priv->display.funcs.crtc->crtc_enable(state, crtc);
>>
>> 	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
>> 		return;
>>@@ -7198,7 +7198,7 @@ static void intel_old_crtc_state_disables(struct in=
tel_atomic_state *state,
>> 	 */
>> 	intel_crtc_disable_pipe_crc(crtc);
>>
>>-	dev_priv->display->crtc_disable(state, crtc);
>>+	dev_priv->display.funcs.crtc->crtc_disable(state, crtc);
>
> lgtm. Regarding names: it's a little weird to have "crtc doubled in the f=
uncs.crtc->crtc_
> and it not being consistent accross all functions
>
>
>> 	crtc->active =3D false;
>> 	intel_fbc_disable(crtc);
>> 	intel_disable_shared_dpll(old_crtc_state);
>>@@ -7586,7 +7586,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>> 	}
>>
>> 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
>>-	dev_priv->display->commit_modeset_enables(state);
>>+	dev_priv->display.funcs.crtc->commit_modeset_enables(state);
>>
>> 	intel_encoders_update_complete(state);
>>
>>@@ -8317,7 +8317,7 @@ static const struct drm_mode_config_funcs intel_mod=
e_funcs =3D {
>> 	.atomic_state_free =3D intel_atomic_state_free,
>> };
>>
>>-static const struct drm_i915_display_funcs skl_display_funcs =3D {
>>+static const struct intel_display_funcs skl_display_funcs =3D {
>> 	.get_pipe_config =3D hsw_get_pipe_config,
>> 	.crtc_enable =3D hsw_crtc_enable,
>> 	.crtc_disable =3D hsw_crtc_disable,
>>@@ -8325,7 +8325,7 @@ static const struct drm_i915_display_funcs skl_disp=
lay_funcs =3D {
>> 	.get_initial_plane_config =3D skl_get_initial_plane_config,
>> };
>>
>>-static const struct drm_i915_display_funcs ddi_display_funcs =3D {
>>+static const struct intel_display_funcs ddi_display_funcs =3D {
>> 	.get_pipe_config =3D hsw_get_pipe_config,
>> 	.crtc_enable =3D hsw_crtc_enable,
>> 	.crtc_disable =3D hsw_crtc_disable,
>>@@ -8333,7 +8333,7 @@ static const struct drm_i915_display_funcs ddi_disp=
lay_funcs =3D {
>> 	.get_initial_plane_config =3D i9xx_get_initial_plane_config,
>> };
>>
>>-static const struct drm_i915_display_funcs pch_split_display_funcs =3D {
>>+static const struct intel_display_funcs pch_split_display_funcs =3D {
>> 	.get_pipe_config =3D ilk_get_pipe_config,
>> 	.crtc_enable =3D ilk_crtc_enable,
>> 	.crtc_disable =3D ilk_crtc_disable,
>>@@ -8341,7 +8341,7 @@ static const struct drm_i915_display_funcs pch_spli=
t_display_funcs =3D {
>> 	.get_initial_plane_config =3D i9xx_get_initial_plane_config,
>> };
>>
>>-static const struct drm_i915_display_funcs vlv_display_funcs =3D {
>>+static const struct intel_display_funcs vlv_display_funcs =3D {
>> 	.get_pipe_config =3D i9xx_get_pipe_config,
>> 	.crtc_enable =3D valleyview_crtc_enable,
>> 	.crtc_disable =3D i9xx_crtc_disable,
>>@@ -8349,7 +8349,7 @@ static const struct drm_i915_display_funcs vlv_disp=
lay_funcs =3D {
>> 	.get_initial_plane_config =3D i9xx_get_initial_plane_config,
>> };
>>
>>-static const struct drm_i915_display_funcs i9xx_display_funcs =3D {
>>+static const struct intel_display_funcs i9xx_display_funcs =3D {
>> 	.get_pipe_config =3D i9xx_get_pipe_config,
>> 	.crtc_enable =3D i9xx_crtc_enable,
>> 	.crtc_disable =3D i9xx_crtc_disable,
>>@@ -8372,16 +8372,16 @@ void intel_init_display_hooks(struct drm_i915_pri=
vate *dev_priv)
>> 	intel_dpll_init_clock_hook(dev_priv);
>>
>> 	if (DISPLAY_VER(dev_priv) >=3D 9) {
>>-		dev_priv->display =3D &skl_display_funcs;
>>+		dev_priv->display.funcs.crtc =3D &skl_display_funcs;
>> 	} else if (HAS_DDI(dev_priv)) {
>>-		dev_priv->display =3D &ddi_display_funcs;
>>+		dev_priv->display.funcs.crtc =3D &ddi_display_funcs;
>> 	} else if (HAS_PCH_SPLIT(dev_priv)) {
>>-		dev_priv->display =3D &pch_split_display_funcs;
>>+		dev_priv->display.funcs.crtc =3D &pch_split_display_funcs;
>> 	} else if (IS_CHERRYVIEW(dev_priv) ||
>> 		   IS_VALLEYVIEW(dev_priv)) {
>>-		dev_priv->display =3D &vlv_display_funcs;
>>+		dev_priv->display.funcs.crtc =3D &vlv_display_funcs;
>> 	} else {
>>-		dev_priv->display =3D &i9xx_display_funcs;
>>+		dev_priv->display.funcs.crtc =3D &i9xx_display_funcs;
>> 	}
>>
>> 	intel_fdi_init_hook(dev_priv);
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
>>new file mode 100644
>>index 000000000000..aafe548875cc
>>--- /dev/null
>>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>@@ -0,0 +1,38 @@
>>+/* SPDX-License-Identifier: MIT */
>>+/*
>>+ * Copyright =C2=A9 2022 Intel Corporation
>>+ */
>>+
>>+#ifndef __INTEL_DISPLAY_CORE_H__
>>+#define __INTEL_DISPLAY_CORE_H__
>>+
>>+#include <linux/types.h>
>>+
>>+struct intel_atomic_state;
>>+struct intel_crtc;
>>+struct intel_crtc_state;
>>+struct intel_initial_plane_config;
>>+
>>+struct intel_display_funcs {
>
> in the same line as comment above. Maybe we could give this struct a
> better name? Because it's already inside a intel_display.funcs.crtc
>
> display->funcs.crtc->get_pipe_config()
> display->funcs.crtc->get_initial_plane_nfig()
> display->funcs.crtc->enable()
> display->funcs.crtc->disable()
> display->funcs.crtc->commit_modeset_enables()
>
> and then call this `struct intel_crtc_funcs`.
>
> This can be done later as this commit itself is basically moving things
> with the same name inside a substruct.

I guess my question is, are the functions inside "crtc enough" to be
called intel_crtc_funcs? Though intel_display_funcs is really too
generic too.

Maybe I'll just go with crtc.

> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks!

--=20
Jani Nikula, Intel Open Source Graphics Center
