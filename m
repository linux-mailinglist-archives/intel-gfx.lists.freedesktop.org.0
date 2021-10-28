Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A2943E76A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 19:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710A16E0E5;
	Thu, 28 Oct 2021 17:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F526E0E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 17:36:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="293927825"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="293927825"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:36:48 -0700
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="487233696"
Received: from ralfseng-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.156])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:36:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, airlied@gmail.com, daniel@ffwll.ch,
 ville.syrjala@linux.intel.com, Dave Airlie <airlied@redhat.com>
In-Reply-To: <20211022172233.ehi6spnogih5vkmh@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1634918767.git.jani.nikula@intel.com>
 <9a04d5af717f6fddcf21a3c096eb3807dffbc1cf.1634918767.git.jani.nikula@intel.com>
 <20211022172233.ehi6spnogih5vkmh@ldmartin-desk2>
Date: Thu, 28 Oct 2021 20:36:42 +0300
Message-ID: <87cznpf3v9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 22 Oct 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Oct 22, 2021 at 07:27:55PM +0300, Jani Nikula wrote:
>>With an anonymous struct, this can be pure hierarchical organization
>>without code changes.
>
> start reading from patch 1 left me confused. A sentence here that next
> patches will add the sub-struct name would be good.

Fixed in v2.

>
> Lucas De Marchi
>
>>
>>Cc: Dave Airlie <airlied@redhat.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/i915_drv.h | 43 +++++++++++++++++----------------
>> 1 file changed, 22 insertions(+), 21 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>index 19e6700a4315..ee210e12648a 100644
>>--- a/drivers/gpu/drm/i915/i915_drv.h
>>+++ b/drivers/gpu/drm/i915/i915_drv.h
>>@@ -995,9 +995,6 @@ struct drm_i915_private {
>> 	/* Display internal color functions */
>> 	const struct intel_color_funcs *color_funcs;
>>
>>-	/* Display internal audio functions */
>>-	const struct intel_audio_funcs *audio_funcs;
>>-
>> 	/* Display CDCLK functions */
>> 	const struct intel_cdclk_funcs *cdclk_funcs;
>>
>>@@ -1084,17 +1081,6 @@ struct drm_i915_private {
>> 	struct drm_property *broadcast_rgb_property;
>> 	struct drm_property *force_audio_property;
>>
>>-	/* hda/i915 audio component */
>>-	struct i915_audio_component *audio_component;
>>-	bool audio_component_registered;
>>-	/**
>>-	 * av_mutex - mutex for audio/video sync
>>-	 *
>>-	 */
>>-	struct mutex av_mutex;
>>-	int audio_power_refcount;
>>-	u32 audio_freq_cntrl;
>>-
>> 	u32 fdi_rx_config;
>>
>> 	/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
>>@@ -1227,14 +1213,29 @@ struct drm_i915_private {
>>
>> 	bool ipc_enabled;
>>
>>-	/* Used to save the pipe-to-encoder mapping for audio */
>>-	struct intel_encoder *av_enc_map[I915_MAX_PIPES];
>>-
>>-	/* necessary resource sharing with HDMI LPE audio driver. */
>> 	struct {
>>-		struct platform_device *platdev;
>>-		int	irq;
>>-	} lpe_audio;
>>+		/* Display internal audio functions */
>>+		const struct intel_audio_funcs *audio_funcs;
>>+
>>+		/* hda/i915 audio component */
>>+		struct i915_audio_component *audio_component;
>>+		bool audio_component_registered;
>>+		/**
>>+		 * av_mutex - mutex for audio/video sync
>>+		 */
>>+		struct mutex av_mutex;
>>+		int audio_power_refcount;
>>+		u32 audio_freq_cntrl;
>>+
>>+		/* Used to save the pipe-to-encoder mapping for audio */
>>+		struct intel_encoder *av_enc_map[I915_MAX_PIPES];
>>+
>>+		/* necessary resource sharing with HDMI LPE audio driver. */
>>+		struct {
>>+			struct platform_device *platdev;
>>+			int irq;
>>+		} lpe_audio;
>>+	};
>>
>> 	struct i915_pmu pmu;
>>
>>-- 
>>2.30.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
