Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9401CA7E213
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 16:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A98F10E4C0;
	Mon,  7 Apr 2025 14:39:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZzFZIwZT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8759B10E4B5;
 Mon,  7 Apr 2025 14:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744036768; x=1775572768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mzUfaTbkxDg0msRhwk5u2Ua7PhI7A2AdJZJnRF10aO0=;
 b=ZzFZIwZTTsIqvZTMWxUOR2e912kQbjEH5pp4/Ijesi2SYCoRKMRfUBnK
 b4QVXcxOiGt9WL61zUTZPJwySUc860Do2ie2pbua5lJCyWYj8yAXU8F42
 WLvGwOkLW1GIn9pC0HcfSBD4Demw+wBZfKfO+LDO5KoxXZSv0XTLl7rwB
 ezZu/flI4Rno07XdvcAVrmrDKUImWLynOueQsZIf6Vn3PQytbe7e9LYx3
 wrPvQpI7+zSIReKIGfk9Sh5EgxTomSKJVttJ82YQjipgXZRYfZYcOCJO9
 sGmawdA6zsVbOgUZGz5C/PhDxDzx+45RI1vtIlT8fpxxBo4Dg5DafkyvK Q==;
X-CSE-ConnectionGUID: vkADmyPDSDWYAs9EK2fP1A==
X-CSE-MsgGUID: ltP1lzEzSY2V1M8iuOv7ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44572445"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="44572445"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 07:39:28 -0700
X-CSE-ConnectionGUID: VkGtgCaBTJikoHW2gjfr0Q==
X-CSE-MsgGUID: yIquvMXfSAyZLTQNldoM/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="158963739"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 07 Apr 2025 07:39:26 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 08/11] drm/i915: use GOSUB to program doubled buffered LUT
 registers
Date: Mon,  7 Apr 2025 19:53:56 +0530
Message-Id: <20250407142359.1398410-9-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

With addition of double buffered GAMMA registers in PTL, we can now
program them in the active region. Use GOSUB instruction of DSB to
program them.

It is done in the following steps:
	1. intel_color_prepare_commit()
		- If the platform supports, prepare a dsb instance (dsb_color)
		  hooked to DSB0.
		- Add all the register write instructions to dsb_color through
		  the load_lut() hook
                - Do not add the vrr_send_push() logic to the buffer as it
		  should be taken care by dsb_commit instance of DSB0
                - Finish preparation of the buffer by aligning it to 64 bit

	2. intel_atomic_dsb_finish()
		- Add the gosub instruction into the dsb_commit instance of DSB0
		  using intel_dsb_gosub()
		- If needed, add the vrr_send_push() logic to dsb_commit after it

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 13 ++++++++---
 drivers/gpu/drm/i915/display/intel_display.c  | 22 ++++++++++++++++---
 .../drm/i915/display/intel_display_device.h   |  1 +
 3 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index bb2da3a53e9c..49429404bd82 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1982,20 +1982,27 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
-	crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
+	if (HAS_DOUBLE_BUFFERED_LUT(display))
+		crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_0, 1024);
+	else
+		crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
+
 	if (!crtc_state->dsb_color)
 		return;
 
 	display->funcs.color->load_luts(crtc_state);
 
-	if (crtc_state->use_dsb) {
+	if (crtc_state->use_dsb && !HAS_DOUBLE_BUFFERED_LUT(display)) {
 		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
 		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
 		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
 		intel_dsb_interrupt(crtc_state->dsb_color);
 	}
 
-	intel_dsb_finish(crtc_state->dsb_color);
+	if (HAS_DOUBLE_BUFFERED_LUT(display))
+		intel_dsb_gosub_finish(crtc_state->dsb_color);
+	else
+		intel_dsb_finish(crtc_state->dsb_color);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 69c1790199d3..85e28b4c9e66 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7239,9 +7239,25 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		}
 	}
 
-	if (new_crtc_state->dsb_color)
-		intel_dsb_chain(state, new_crtc_state->dsb_commit,
-				new_crtc_state->dsb_color, true);
+	if (new_crtc_state->dsb_color) {
+		if (HAS_DOUBLE_BUFFERED_LUT(display)) {
+			intel_dsb_gosub(new_crtc_state->dsb_commit,
+					new_crtc_state->dsb_color);
+
+			if (new_crtc_state->use_dsb) {
+				intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
+
+				intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
+				intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
+				intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
+							  new_crtc_state);
+				intel_dsb_interrupt(new_crtc_state->dsb_commit);
+			}
+		} else {
+			intel_dsb_chain(state, new_crtc_state->dsb_commit,
+					new_crtc_state->dsb_color, true);
+		}
+	}
 
 	intel_dsb_finish(new_crtc_state->dsb_commit);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 368b0d3417c2..14943b47824b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -157,6 +157,7 @@ struct intel_display_platforms {
 #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
 #define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
 #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
+#define HAS_DOUBLE_BUFFERED_LUT(__display)	(DISPLAY_VER(__display) >= 30)
 #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
 #define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
 #define HAS_DPT(__display)		(DISPLAY_VER(__display) >= 13)
-- 
2.25.1

