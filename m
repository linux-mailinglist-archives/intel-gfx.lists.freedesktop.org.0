Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092BD9BDF3B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 08:19:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F1010E63E;
	Wed,  6 Nov 2024 07:19:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="sE/24+/o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3639710E63B;
 Wed,  6 Nov 2024 07:19:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 01898A42782;
 Wed,  6 Nov 2024 07:17:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4267FC4CECD;
 Wed,  6 Nov 2024 07:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1730877560;
 bh=9VDRpqXuHQP3USdtet2ftCXd4j+wNqj/OyABCMJoxfs=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=sE/24+/oTHT72vuUdAQbeaXtCvG76q3fnadDC2baIe73iC0jdNUtX+dJLZ4zMMBUY
 773vn7gkeRS7N40lIXqm9xnntaDW78v7Xo2guneBZ3YxG879qgbSzV/Dz18XFnLxO1
 vQ3wFHReqJQ0jJRLgs4aUkLVC9Ue7SsYCsazgzj8=
Subject: Patch "drm/i915/display/dp: Compute AS SDP when vrr is also enabled"
 has been added to the 6.11-stable tree
To: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 lucas.demarchi@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 rodrigo.vivi@intel.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Wed, 06 Nov 2024 08:18:53 +0100
In-Reply-To: <20241024033815.3538736-8-lucas.demarchi@intel.com>
Message-ID: <2024110653-tweed-drinking-0bb4@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore
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


This is a note to let you know that I've just added the patch titled

    drm/i915/display/dp: Compute AS SDP when vrr is also enabled

to the 6.11-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     drm-i915-display-dp-compute-as-sdp-when-vrr-is-also-enabled.patch
and it can be found in the queue-6.11 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable+bounces-87988-greg=kroah.com@vger.kernel.org Thu Oct 24 05:39:12 2024
From: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Wed, 23 Oct 2024 20:38:00 -0700
Subject: drm/i915/display/dp: Compute AS SDP when vrr is also enabled
To: stable@vger.kernel.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>, Arun R Murthy <arun.r.murthy@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20241024033815.3538736-8-lucas.demarchi@intel.com>

From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

commit eb53e5b933b9ff315087305b3dc931af3067d19c upstream.

AS SDP should be computed when VRR timing generator is also enabled.
Correct the compute condition to compute params of Adaptive sync SDP
when VRR timing genrator is enabled along with sink support indication.

--v2:
Modify if condition (Jani).

Fixes: b2013783c445 ("drm/i915/display: Cache adpative sync caps to use it later")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
(added prefix drm in subject)
Link: https://patchwork.freedesktop.org/patch/msgid/20240730040941.396862-1-mitulkumar.ajitkumar.golani@intel.com
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/display/intel_dp.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2627,7 +2627,7 @@ static void intel_dp_compute_as_sdp(stru
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
+	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);


Patches currently in stable-queue which might be from lucas.demarchi@intel.com are

queue-6.11/drm-xe-add-mmio-read-before-ggtt-invalidate.patch
queue-6.11/drm-i915-disable-fbc-due-to-wa_16023588340.patch
queue-6.11/drm-i915-skip-programming-fia-link-enable-bits-for-mtl.patch
queue-6.11/drm-i915-display-cache-adpative-sync-caps-to-use-it-later.patch
queue-6.11/drm-i915-display-don-t-enable-decompression-on-xe2-with-tile4.patch
queue-6.11/drm-xe-xe2-introduce-performance-changes.patch
queue-6.11/drm-xe-define-stateless_compression_ctrl-as-mcr-register.patch
queue-6.11/drm-i915-hdcp-add-encoder-check-in-hdcp2_get_capability.patch
queue-6.11/drm-i915-hdcp-add-encoder-check-in-intel_hdcp_get_capability.patch
queue-6.11/drm-xe-don-t-short-circuit-tdr-on-jobs-not-started.patch
queue-6.11/drm-xe-write-all-slices-if-its-mcr-register.patch
queue-6.11/drm-i915-move-rawclk-from-runtime-to-display-runtime-info.patch
queue-6.11/drm-xe-display-drop-unused-rawclk_freq-and-runtime_info.patch
queue-6.11/drm-xe-xe2hpg-add-wa_15016589081.patch
queue-6.11/drm-i915-display-dp-compute-as-sdp-when-vrr-is-also-enabled.patch
queue-6.11/drm-i915-pps-disable-dpls_gating-around-pps-sequence.patch
queue-6.11/drm-i915-dp-clear-vsc-sdp-during-post-ddi-disable-routine.patch
queue-6.11/drm-xe-xe2-add-performance-turning-changes.patch
queue-6.11/drm-i915-psr-prevent-panel-replay-if-crc-calculation-is-enabled.patch
queue-6.11/drm-xe-move-enable-host-l2-vram-post-mcr-init.patch
queue-6.11/drm-xe-support-nomodeset-kernel-command-line-option.patch
queue-6.11/drm-xe-xe2hpg-introduce-performance-tuning-changes-for-xe2_hpg.patch
queue-6.11/drm-i915-display-wa-for-re-initialize-dispcnlunitt1-xosc-clock.patch
