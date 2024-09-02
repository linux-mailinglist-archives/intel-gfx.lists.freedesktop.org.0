Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD813968939
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:54:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5391C10E2FA;
	Mon,  2 Sep 2024 13:54:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a+GmImBk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA0AC10E2FA
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285247; x=1756821247;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ip9OHnP+NOCGfkfmhNql3KX7ZeDbn9w1vbN4OHQY1h4=;
 b=a+GmImBkQIh116DhSsth6KGsaw8VBuYWEDRV4uIewlqRqKjtKMF95L6L
 pegHDblcIac5xxtIkeX/y8LzoZgsq1EKMkqpID3pp8jh3+G7QhXxREImu
 dSz/oFFnsAJHya+3JbLl8yC1emPod9YhKFJHvu0FBvZQ+EaA2LgI6CrCE
 fAgorwTy57xn69pGfd2ZOtVBwADhKGezzqpiiTMgd/QyOUd7ASX+17ajr
 l0UXIPeo8hq9fFSQhXnlu4scEp2gJHkmJu0jZ3+HzYkfjGErxgN6adZSk
 n6aSNtzwxsByLL9rjytj2izHC3ce5mjbND9djT0xKPqFlgfvdTyLp3yTE w==;
X-CSE-ConnectionGUID: GE/rOGPTRiKvYG3Xox/V5g==
X-CSE-MsgGUID: HvAo4r7zTmiLtVrepEHZIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343648"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343648"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:54:06 -0700
X-CSE-ConnectionGUID: 74o2VH1OSjWgwwFF58/OKA==
X-CSE-MsgGUID: DcIrq0OzS1iG+lisAmKppQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623894"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:54:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:54:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/13] drm/i915: Introduce intel_scanlines_to_usecs()
Date: Mon,  2 Sep 2024 16:53:37 +0300
Message-ID: <20240902135342.1050-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
References: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Introduce intel_scanlines_to_usecs() as a counterpart to
intel_usecs_to_scanlines().

We'll have some use for this in DSB code as we want to do
relative scanline waits to evade the delayed vblank, but
unfortunately DSB can't do relative scanline waits (only
absolute). So we'll instead convert the relative scanline
count to usec and do a relative usec wait instead (which the
DSB knows how to do).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.h |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 1b578cad2813..77cfab1d13de 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -457,6 +457,17 @@ int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 				1000 * adjusted_mode->crtc_htotal);
 }
 
+int intel_scanlines_to_usecs(const struct drm_display_mode *adjusted_mode,
+			     int scanlines)
+{
+	/* paranoia */
+	if (!adjusted_mode->crtc_clock)
+		return 1;
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(scanlines, adjusted_mode->crtc_htotal * 1000),
+				adjusted_mode->crtc_clock);
+}
+
 /**
  * intel_pipe_update_start() - start update of a set of display registers
  * @state: the atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index b615b7ab5ccd..c1dd8c42cea2 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -28,6 +28,8 @@ struct intel_crtc_state;
 
 int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 			     int usecs);
+int intel_scanlines_to_usecs(const struct drm_display_mode *adjusted_mode,
+			     int scanlines);
 void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
 u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
 int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
-- 
2.44.2

