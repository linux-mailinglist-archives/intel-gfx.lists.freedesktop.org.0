Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21C3C7006A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 17:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7BAA10E135;
	Wed, 19 Nov 2025 16:21:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NAmmyqj3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C2E410E0A1;
 Wed, 19 Nov 2025 16:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763569265; x=1795105265;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LbcBQJS1MnguCtD0gd5kLhC8MtN5TgGGj6rY9LPB86w=;
 b=NAmmyqj34Fx77Uil2vmr/ZE7BXQ6zklFQWHJ4MG5ZwKpArfzPKa2W3SI
 Ot2RKZVpxfUbV6MWL/YfOVYW52gEj/VsbMVWVbR7Ajfp5CPEUfWTX6XLd
 xp4DgZ91e3p99wH4Nn8eMxZwThjk0KPDfMpFORDIraC9OKvlKTAyYmdRz
 xvbknfbI3gQ0iqec8eHRNszBVcUaDXx+AcpVH4kn+v7cckFj+N0Ihx9/Q
 G8+pELzDAggugWnT98Rt6kWyc61WLbqnv3k5pOaaJhXZC+dcMQ4NKlpD3
 Hb9rSNZdbQT+Q+C+PRCUGy1Tn6O5pFz6EPR+dFXx/mxbFSDSWWXfkrGcM g==;
X-CSE-ConnectionGUID: zXVPeywITwuMnMBzE8kAQA==
X-CSE-MsgGUID: q59UwihKSYWLXJ8lC4MjbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65708189"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="65708189"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 08:21:05 -0800
X-CSE-ConnectionGUID: iU6XEDTeSKeQ2Jx4xsimOg==
X-CSE-MsgGUID: VQds+4l8RYyuWZyINzLkmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191534145"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 08:21:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH v3] drm/i915/display: change pipe allocation order for
 discrete platforms
In-Reply-To: <zwnd5dffcsqtclwepv5ujcuofisozrdqfyhu4j4qoscksb5tm7@qsllynjzq3bp>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251119153321.2640969-1-jani.nikula@intel.com>
 <zwnd5dffcsqtclwepv5ujcuofisozrdqfyhu4j4qoscksb5tm7@qsllynjzq3bp>
Date: Wed, 19 Nov 2025 18:21:00 +0200
Message-ID: <0f3fa8d418b6e92aa4cd91f5c00c1e7f3df90ca7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 19 Nov 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Wed, Nov 19, 2025 at 05:33:21PM +0200, Jani Nikula wrote:
>>When big joiner is enabled, it reserves the adjacent pipe as the
>>secondary pipe. This happens without the user space knowing, and
>>subsequent attempts at using the CRTC with that pipe will fail. If the
>>user space does not have a coping mechanism, i.e. trying another CRTC,
>>this leads to a black screen.
>>
>>Try to reduce the impact of the problem on discrete platforms by mapping
>>the CRTCs to pipes in order A, C, B, and D. If the user space reserves
>>CRTCs in order, this should trick it to using pipes that are more likely
>>to be available for and after joining.
>>
>>Limit this to discrete platforms, which have four pipes, and no eDP, a
>>combination that should benefit the most with least drawbacks.
>>
>>Although there are currently no platforms with more than four pipes, add
>>a fallback for initializing the rest of the pipes to not miss them.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>>---
>>
>>v2: Also remove WARN_ON()
>>
>>v3: Limit to discrete
>>
>>There are a number of issues in IGT with assuming CRTC index == pipe, at
>>least with CRC and vblank waits. With them being used a lot in tests, we
>>won't get enough test coverage until they're fixed.
>>---
>> drivers/gpu/drm/i915/display/intel_crtc.c     |  2 --
>> .../drm/i915/display/intel_display_driver.c   | 26 ++++++++++++++++++-
>> 2 files changed, 25 insertions(+), 3 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
>>index 9d2a23c96c61..11e58d07ddef 100644
>>--- a/drivers/gpu/drm/i915/display/intel_crtc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>>@@ -394,8 +394,6 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>>
>> 	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
>>
>>-	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
>>-
>> 	if (HAS_CASF(display))
>> 		drm_crtc_create_sharpness_strength_property(&crtc->base);
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>index 7e000ba3e08b..b5c9cdf14a43 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>@@ -452,6 +452,7 @@ bool intel_display_driver_check_access(struct intel_display *display)
>> /* part #2: call after irq install, but before gem init */
>> int intel_display_driver_probe_nogem(struct intel_display *display)
>> {
>>+	u8 pipe_mask = U8_MAX;
>> 	enum pipe pipe;
>> 	int ret;
>>
>>@@ -470,7 +471,30 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
>> 		    INTEL_NUM_PIPES(display),
>> 		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
>>
>>-	for_each_pipe(display, pipe) {
>
> this would previously skip fused off pipes from
> __intel_display_device_info_runtime_init(). Now we are just
> going to err_mode_config if one of the (first 4) pipes are
> fused off.
>
> I think we should check DISPLAY_RUNTIME_INFO(__dev_priv)->pipe_mask
> inside your loop below or IMO it would avoid some redundancy to change
> that to loop twice with for_each_pipe_masked(), passing
> PIPE_A | PIPE_C on first iteration.

Good catch, thanks!

BR,
Jani.

>
> Lucas De Marchi
>
>>+	/*
>>+	 * Expose the pipes in order A, C, B, D on discrete platforms to trick
>>+	 * user space into using pipes that are more likely to be available for
>>+	 * both a) user space if pipe B has been reserved for the joiner, and b)
>>+	 * the joiner if pipe A doesn't need the joiner.
>>+	 *
>>+	 * Fall back to normal initialization for the remaining pipes, if any.
>>+	 */
>>+	if (HAS_BIGJOINER(display) && display->platform.dgfx) {
>>+		enum pipe pipe_order[] = { PIPE_A, PIPE_C, PIPE_B, PIPE_D };
>>+		int i;
>>+
>>+		for (i = 0; i < ARRAY_SIZE(pipe_order); i++) {
>>+			pipe = pipe_order[i];
>>+
>>+			ret = intel_crtc_init(display, pipe);
>>+			if (ret)
>>+				goto err_mode_config;
>>+
>>+			pipe_mask &= ~BIT(pipe);
>>+		}
>>+	}
>>+
>>+	for_each_pipe_masked(display, pipe, pipe_mask) {
>> 		ret = intel_crtc_init(display, pipe);
>> 		if (ret)
>> 			goto err_mode_config;
>>-- 
>>2.47.3
>>

-- 
Jani Nikula, Intel
