Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD968672348
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A1710E79B;
	Wed, 18 Jan 2023 16:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A28910E795
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059459; x=1705595459;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8Hthh15Zt84gTQn2zcH5t96f6sKdD6zPBXlJnBp0asI=;
 b=jycR4uZ60xtLNbThiVKF03N+CrMuYWdy9wzVRK41DZNaGNPRCQJvvkhq
 gQfby6drKEAVeYmYzsbgBNODcrXF1WCPcfrEQjbLf3b28IcvT3oMr732y
 VVDkNNsbYYtfOUa/9a1TfU94Ddtcdj6KlT6Mb5txve3+P8IuNPkJq/2tF
 MgawWAHU7GNtGS06nhiTr3WPWGHGH5EKf0G9zItCrwKaBz/A+d3UzIr1p
 /Md2Dpm+Nb2jET3/KfwrvwLuxyE36o80ZkL17Chw2wKkjrk+E69nwLdwX
 rAYwmRWrW6AZGXBTcrn4+d3fYATS6rszIRE8icW6s5zlRP9qB/uWOvpDE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289800"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289800"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:30:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060440"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060440"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:30:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:30:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:31 +0200
Message-Id: <20230118163040.29808-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Introduce intel_dsb_finish()
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

Introduce a function to emits whatever commands we need
at the end of the DSB command buffer. For the moment we
only do the tail cacheline alignment there, but eventually
we might want eg. emit an interrupt.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c   | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_dsb.h   |  1 +
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 5d99913429b9..6d6d300fa2df 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1257,6 +1257,7 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 	}
 
 	if (crtc_state->dsb) {
+		intel_dsb_finish(crtc_state->dsb);
 		intel_dsb_commit(crtc_state->dsb);
 		intel_dsb_wait(crtc_state->dsb);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 0b2faa33f204..9e25b1345927 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -199,7 +199,7 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 	}
 }
 
-static u32 intel_dsb_align_tail(struct intel_dsb *dsb)
+static void intel_dsb_align_tail(struct intel_dsb *dsb)
 {
 	u32 aligned_tail, tail;
 
@@ -211,8 +211,11 @@ static u32 intel_dsb_align_tail(struct intel_dsb *dsb)
 		       aligned_tail - tail);
 
 	dsb->free_pos = aligned_tail / 4;
+}
 
-	return aligned_tail;
+void intel_dsb_finish(struct intel_dsb *dsb)
+{
+	intel_dsb_align_tail(dsb);
 }
 
 /**
@@ -228,8 +231,8 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 	enum pipe pipe = crtc->pipe;
 	u32 tail;
 
-	tail = intel_dsb_align_tail(dsb);
-	if (tail == 0)
+	tail = dsb->free_pos * 4;
+	if (drm_WARN_ON(&dev_priv->drm, !IS_ALIGNED(tail, CACHELINE_BYTES)))
 		return;
 
 	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 7999199c2464..6b22499e8a5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -15,6 +15,7 @@ struct intel_dsb;
 
 struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
 				    unsigned int max_cmds);
+void intel_dsb_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
-- 
2.38.2

