Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0385E9EBC
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 12:12:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A76810E65D;
	Mon, 26 Sep 2022 10:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39D5F10E668
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 10:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664187118; x=1695723118;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4nkyp4ONi8cY4FAnh/W0paxhFeTn+Le3jSFxvoHIq2A=;
 b=hxIn58G/CR6xGiEnXd3tpijYWOqNC3lJYpYZBEgdkbqNQnngrgot5AUM
 lbn/a2XMB6iENUjOF/VAvcMKIFyPytn9wVRvOZVIdROeKT96vIoZ6QVxQ
 A/OA26L2ZZvYNiSfgGkh3UG2ssGLW0lMbnBTjkZrz1OwfAfMMewNFQDJz
 uaZUclc5iXR9nHtK+Dx2A0vb8Y/UhKTYQ3A3/6kSK1WgsiTqY7TpnMe+q
 dSN0Hw7QzAsqw+px6cxV9Q6/C1Z4O2AK0rK+UHY3KIo7CcII6UDas3PS8
 OZQ7bkBDvBfNlxzn2xk7UnJnqyNOHYPhzDmq7DE6apqccUFcssR9wX6uI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="299713049"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="299713049"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 03:11:57 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="572153171"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="572153171"
Received: from lsabisze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.243])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 03:11:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220920072450.2b6wizrw2i5tyk5k@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220916082642.3451961-1-jani.nikula@intel.com>
 <20220916152638.u3rnatqrq52x5d32@ldmartin-desk2.lan>
 <87edw7rdgy.fsf@intel.com>
 <20220920072450.2b6wizrw2i5tyk5k@ldmartin-desk2.lan>
Date: Mon, 26 Sep 2022 13:11:36 +0300
Message-ID: <87tu4u30o7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix device info for devices
 without display
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

On Tue, 20 Sep 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Sep 19, 2022 at 11:10:53AM +0300, Jani Nikula wrote:
>>On Fri, 16 Sep 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Fri, Sep 16, 2022 at 11:26:42AM +0300, Jani Nikula wrote:
>>>>Commit 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask
>>>>to runtime info") moved the pipe_mask member from struct
>>>>intel_device_info to intel_runtime_info, but overlooked some of our
>>>>platforms initializing device info .display = {}. This is significant,
>>>>as pipe_mask is the single point of truth for a device having a display
>>>>or not; the platforms in question left pipe_mask to whatever was set for
>>>>the platforms they "inherit" from in the complex macro scheme we have.
>>>>
>>>>Add new NO_DISPLAY macro initializing .__runtime.pipe_mask = 0, which
>>>>will cause the device info .display sub-struct to be zeroed in
>>>>intel_device_info_runtime_init(). A better solution (or simply audit of
>>>>proper use of HAS_DISPLAY() checks) is required before moving forward
>>>>with [1].
>>>>
>>>>Also clear all the display related members in runtime info if there's no
>>>>display. The latter is a bit tedious, but it's for completeness at this
>>>>time, to ensure similar functionality as before.
>>>>
>>>>[1] https://lore.kernel.org/r/dfda1bf67f02ceb07c280b7a13216405fd1f7a34.1660137416.git.jani.nikula@intel.com
>>>>
>>>>Fixes: 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info")
>>>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>>Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
>>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>---
>>>> drivers/gpu/drm/i915/i915_pci.c          | 11 ++++++-----
>>>> drivers/gpu/drm/i915/intel_device_info.c |  6 ++++++
>>>> 2 files changed, 12 insertions(+), 5 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>>>>index 77e7df21f539..cd4487a1d3be 100644
>>>>--- a/drivers/gpu/drm/i915/i915_pci.c
>>>>+++ b/drivers/gpu/drm/i915/i915_pci.c
>>>>@@ -41,6 +41,8 @@
>>>> 	.__runtime.media.ip.ver = (x), \
>>>> 	.__runtime.display.ip.ver = (x)
>>>>
>>>>+#define NO_DISPLAY .__runtime.pipe_mask = 0
>>>>+
>>>> #define I845_PIPE_OFFSETS \
>>>> 	.display.pipe_offsets = { \
>>>> 		[TRANSCODER_A] = PIPE_A_OFFSET,	\
>>>>@@ -519,9 +521,8 @@ static const struct intel_device_info ivb_m_gt2_info = {
>>>> static const struct intel_device_info ivb_q_info = {
>>>> 	GEN7_FEATURES,
>>>> 	PLATFORM(INTEL_IVYBRIDGE),
>>>>+	NO_DISPLAY,
>>>> 	.gt = 2,
>>>>-	.__runtime.pipe_mask = 0, /* legal, last one wins */
>>>>-	.__runtime.cpu_transcoder_mask = 0,
>>>> 	.has_l3_dpf = 1,
>>>> };
>>>>
>>>>@@ -1039,7 +1040,7 @@ static const struct intel_device_info xehpsdv_info = {
>>>> 	XE_HPM_FEATURES,
>>>> 	DGFX_FEATURES,
>>>> 	PLATFORM(INTEL_XEHPSDV),
>>>>-	.display = { },
>>>>+	NO_DISPLAY,
>>>> 	.has_64k_pages = 1,
>>>> 	.needs_compact_pt = 1,
>>>> 	.has_media_ratio_mode = 1,
>>>>@@ -1081,7 +1082,7 @@ static const struct intel_device_info dg2_info = {
>>>>
>>>> static const struct intel_device_info ats_m_info = {
>>>> 	DG2_FEATURES,
>>>>-	.display = { 0 },
>>>>+	NO_DISPLAY,
>>>> 	.require_force_probe = 1,
>>>> 	.tuning_thread_rr_after_dep = 1,
>>>> };
>>>>@@ -1103,7 +1104,7 @@ static const struct intel_device_info pvc_info = {
>>>> 	.__runtime.graphics.ip.rel = 60,
>>>> 	.__runtime.media.ip.rel = 60,
>>>> 	PLATFORM(INTEL_PONTEVECCHIO),
>>>>-	.display = { 0 },
>>>>+	NO_DISPLAY,
>>>> 	.has_flat_ccs = 0,
>>>> 	.__runtime.platform_engine_mask =
>>>> 		BIT(BCS0) |
>>>>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>>>>index 1434dc33cf49..20575eb77ea7 100644
>>>>--- a/drivers/gpu/drm/i915/intel_device_info.c
>>>>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>>>>@@ -433,8 +433,14 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>>>> 		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
>>>> 						   DRIVER_ATOMIC);
>>>> 		memset(&info->display, 0, sizeof(info->display));
>>>>+
>>>>+		runtime->cpu_transcoder_mask = 0;
>>>> 		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
>>>> 		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
>>>>+		runtime->fbc_mask = 0;
>>>>+		runtime->has_hdcp = false;
>>>>+		runtime->has_dmc = false;
>>>>+		runtime->has_dsc = false;
>>>
>>> why are these not inside __runtime.display?
>>
>>The short answer, because there isn't one. It's an anonymous struct for
>>now.
>
> /me confused... that doesn't really answer the question. Why would we
> not move these inside a display substruct? When moving stuff out of
> device_info.display.x, it seems the better place would be inside
> __runtime.display.x, not __runtime.x.
>
> I must be missing something here. We had a "recent" move of these flags
> lying around in device_info to be inside a display substruct -
> commit d53db442db36 ("drm/i915: Move display device info capabilities to its
> own struct") - to be able to keep the display flags together
> and zero them together.

So there were a few discussions spread around, but effectively the patch
has stalled here.

There's probably a bigger discussion to be had about the management of
mutable and immutable device info, and display and non-display info.

In the mean time, okay to merge this one?


BR,
Jani.


>
> Lucas De Marchi
>
>>
>>BR,
>>Jani.
>>
>>
>>-- 
>>Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
