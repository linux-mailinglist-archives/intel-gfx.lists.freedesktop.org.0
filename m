Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 172859EBB9B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398CA10E97B;
	Tue, 10 Dec 2024 21:10:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c143+cVK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5588610E97E
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865054; x=1765401054;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=j6u/cKqBxVI9hGnHZlyzGbb4y2xCsSdyNzfyW+CnY7k=;
 b=c143+cVKB1bS5JtmtOu47tVJYyD3YvYShEXmSBgjJGFgP0KskSDm03MA
 MtP0v+dBlnKzeu0SJ84i65lf7L7Uc/0PcvGy3ewCXvwV6OtBTQ34icW3G
 8tVV9n2TdGa5s9BILySlP6zjd0Fs4k+Xb5AuWI/zCHXqI48OBbBv5UvjR
 Xa2cJNzTxLbUfRp95prPY9mPQd/yI264K24VI5t1tZf7Vyk+yiB8VqNAM
 sR24OtyU2IswNyuk7tr23ErDdNhJ4OXGUwwWT+LY8HV4MV6r3frMiTgpa
 mDQSm40MOOqUwl4Aol+XiDI1q59xBMuLWbzKYZMffjdBikdOICPGnDku4 A==;
X-CSE-ConnectionGUID: Wb/znePyTLmoBc6ePhRc0A==
X-CSE-MsgGUID: LR2qCTylSuGvb/P/F3ZFtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620216"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620216"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:54 -0800
X-CSE-ConnectionGUID: okf3sCJOTCWAGSUNZCuP/A==
X-CSE-MsgGUID: +iYME41IRIyLGc7g46o0Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735157"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 16/18] drm/i915/vrr: Plumb the DSB into intel_vrr_send_push()
Date: Tue, 10 Dec 2024 23:10:05 +0200
Message-ID: <20241210211007.5976-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

Plumb the DSB down into intel_vrr_send_push() so that we can
perform the opration on the DSB.

TRANS_PUSH, being a transcoder register, needs non-posted writes
to make it through.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c  | 14 +++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.h  |  4 +++-
 3 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a2c528d707f4..3bb57a74b333 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -713,7 +713,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	 * which would cause the next frame to terminate already at vmin
 	 * vblank start instead of vmax vblank start.
 	 */
-	intel_vrr_send_push(new_crtc_state);
+	intel_vrr_send_push(NULL, new_crtc_state);
 
 	local_irq_enable();
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 98dd92316595..d589a62fcfed 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -391,7 +391,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.flipline - 1);
 }
 
-void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
+void intel_vrr_send_push(struct intel_dsb *dsb,
+			 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -399,8 +400,15 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN | TRANS_PUSH_SEND);
+	if (dsb)
+		intel_dsb_nonpost_start(dsb);
+
+	intel_de_write_dsb(display, dsb,
+			   TRANS_PUSH(display, cpu_transcoder),
+			   TRANS_PUSH_EN | TRANS_PUSH_SEND);
+
+	if (dsb)
+		intel_dsb_nonpost_end(dsb);
 }
 
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 8e8961adce39..899cbf40f880 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -12,6 +12,7 @@ struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
+struct intel_dsb;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
@@ -22,7 +23,8 @@ void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
-void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
+void intel_vrr_send_push(struct intel_dsb *dsb,
+			 const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
-- 
2.45.2

