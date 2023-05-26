Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62640712ACF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B238910E812;
	Fri, 26 May 2023 16:39:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F16810E824
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119144; x=1716655144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hRDjaWP+ETw6kRXLPtFEoxIQPgv2pvb7KQQ0F80fovw=;
 b=Xn5uZmDk154NKMHtmoZ+Mamg/lBUCSDSHUE2WG2KkzlP2Im4TGJka1HA
 5sAxvARb4iymmSgeGPxm4SrKOWm9LDA6n4ZN4BOQ+NZIWBVO1zYx2OtIX
 p4HdGTcjS/SOfn7sMud/Zow8I0mwqtHJdAz7gQnzmYduqb+fTsPsZYhnw
 ZprrLiic64qsnSQpUAzYbN0h58epQsDX3Co+Ey8MKsxxkElBpVaunNrlb
 /533VFaGo44fS+39DSxpt1/EZ14AL2rvK945eD1kGZ3F3HRKqj2nVn3oD
 6EMQhRroKqaHAjkfUX3Z8Ve5eQ6LahwYgrDOQtP/1ysK6W1dgBRn65Rrx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="333872448"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="333872448"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:39:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="817608597"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="817608597"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:39:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:38:06 +0300
Message-Id: <eb041f426bc3d76ef7a0ea906f99367cbf439b1a.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/15] drm/i915: annotate maybe unused but set
 intel_crtc_state variables
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prepare for re-enabling -Wunused-but-set-variable.

for_each_new_intel_crtc_in_state() requires passing in a struct
intel_crtc_state pointer, which it uses, but in a few places this leads
to warning about unused but set variables. Annotate them with
__maybe_unused.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1e635ab0315..4854d8ff6e1e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5707,7 +5707,7 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 
 static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 {
-	struct intel_crtc_state *crtc_state;
+	struct intel_crtc_state __maybe_unused *crtc_state;
 	struct intel_crtc *crtc;
 	int i;
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d1245c847f1c..063929a42a42 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2900,7 +2900,7 @@ static int
 skl_compute_wm(struct intel_atomic_state *state)
 {
 	struct intel_crtc *crtc;
-	struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-- 
2.39.2

