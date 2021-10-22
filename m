Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 903B3437BCF
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 19:22:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E043A6E7FE;
	Fri, 22 Oct 2021 17:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C766E7FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 17:22:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="226801168"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="226801168"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 10:22:37 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="721951024"
Received: from ptoro-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.47.175])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 10:22:37 -0700
Date: Fri, 22 Oct 2021 10:22:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, airlied@gmail.com, daniel@ffwll.ch,
 ville.syrjala@linux.intel.com, Dave Airlie <airlied@redhat.com>
Message-ID: <20211022172233.ehi6spnogih5vkmh@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1634918767.git.jani.nikula@intel.com>
 <9a04d5af717f6fddcf21a3c096eb3807dffbc1cf.1634918767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <9a04d5af717f6fddcf21a3c096eb3807dffbc1cf.1634918767.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/audio: group audio under
 anonymous struct in drm_i915_private
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

On Fri, Oct 22, 2021 at 07:27:55PM +0300, Jani Nikula wrote:
>With an anonymous struct, this can be pure hierarchical organization
>without code changes.

start reading from patch 1 left me confused. A sentence here that next
patches will add the sub-struct name would be good.

Lucas De Marchi

>
>Cc: Dave Airlie <airlied@redhat.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/i915_drv.h | 43 +++++++++++++++++----------------
> 1 file changed, 22 insertions(+), 21 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index 19e6700a4315..ee210e12648a 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -995,9 +995,6 @@ struct drm_i915_private {
> 	/* Display internal color functions */
> 	const struct intel_color_funcs *color_funcs;
>
>-	/* Display internal audio functions */
>-	const struct intel_audio_funcs *audio_funcs;
>-
> 	/* Display CDCLK functions */
> 	const struct intel_cdclk_funcs *cdclk_funcs;
>
>@@ -1084,17 +1081,6 @@ struct drm_i915_private {
> 	struct drm_property *broadcast_rgb_property;
> 	struct drm_property *force_audio_property;
>
>-	/* hda/i915 audio component */
>-	struct i915_audio_component *audio_component;
>-	bool audio_component_registered;
>-	/**
>-	 * av_mutex - mutex for audio/video sync
>-	 *
>-	 */
>-	struct mutex av_mutex;
>-	int audio_power_refcount;
>-	u32 audio_freq_cntrl;
>-
> 	u32 fdi_rx_config;
>
> 	/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
>@@ -1227,14 +1213,29 @@ struct drm_i915_private {
>
> 	bool ipc_enabled;
>
>-	/* Used to save the pipe-to-encoder mapping for audio */
>-	struct intel_encoder *av_enc_map[I915_MAX_PIPES];
>-
>-	/* necessary resource sharing with HDMI LPE audio driver. */
> 	struct {
>-		struct platform_device *platdev;
>-		int	irq;
>-	} lpe_audio;
>+		/* Display internal audio functions */
>+		const struct intel_audio_funcs *audio_funcs;
>+
>+		/* hda/i915 audio component */
>+		struct i915_audio_component *audio_component;
>+		bool audio_component_registered;
>+		/**
>+		 * av_mutex - mutex for audio/video sync
>+		 */
>+		struct mutex av_mutex;
>+		int audio_power_refcount;
>+		u32 audio_freq_cntrl;
>+
>+		/* Used to save the pipe-to-encoder mapping for audio */
>+		struct intel_encoder *av_enc_map[I915_MAX_PIPES];
>+
>+		/* necessary resource sharing with HDMI LPE audio driver. */
>+		struct {
>+			struct platform_device *platdev;
>+			int irq;
>+		} lpe_audio;
>+	};
>
> 	struct i915_pmu pmu;
>
>-- 
>2.30.2
>
