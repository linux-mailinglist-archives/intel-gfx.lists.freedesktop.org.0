Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D735567234E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E263610E7A4;
	Wed, 18 Jan 2023 16:31:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D1AE10E79A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059462; x=1705595462;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QUaTaO5tgKY73YqljWnj+cvBz85Fht36TuTx2TWpSok=;
 b=XpO7Jb2nyllfRiahQIFITH+msc+WGiLujafK732r0+GoZYB6Jx0mrERo
 gFxQythKuHGgN9HupErQotgMvnq0DGE5xx/Q4jbgZaSMa9d8aQNM/tF9N
 dzPim+BHaAd9NeaCZK3TPp+KKZlfV+WeJOCes0ZgjoFAUveGEUP3eK0gd
 WPl5HITm622RHvyuzt2r8dlNYWlgUovmqzjfQXzojXI7GqMxXknm2OU9F
 q42uSx8dQxZmRJkHqkJA8Vy1CUz099Pyv80ZAgYeX6dg36i/eq/rFibk7
 A+SY+TBj1sfmgImpQFWwLErLcHmHVuZLR1eSR1E/4myp7mEtvKM4scSwM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289828"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289828"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:31:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060447"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060447"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:30:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:30:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:33 +0200
Message-Id: <20230118163040.29808-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/dsb: Allow vblank synchronized
 DSB execution
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

Allow the caller to ask for the DSB commands to execute
during vblank.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c   | 4 +++-
 drivers/gpu/drm/i915/display/intel_dsb.h   | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 6d6d300fa2df..162d671182e3 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1258,7 +1258,7 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 
 	if (crtc_state->dsb) {
 		intel_dsb_finish(crtc_state->dsb);
-		intel_dsb_commit(crtc_state->dsb);
+		intel_dsb_commit(crtc_state->dsb, false);
 		intel_dsb_wait(crtc_state->dsb);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index f454329b6901..43679090eceb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -237,10 +237,11 @@ void intel_dsb_finish(struct intel_dsb *dsb)
 /**
  * intel_dsb_commit() - Trigger workload execution of DSB.
  * @dsb: DSB context
+ * @wait_for_vblank: wait for vblank before executing
  *
  * This function is used to do actual write to hardware using DSB.
  */
-void intel_dsb_commit(struct intel_dsb *dsb)
+void intel_dsb_commit(struct intel_dsb *dsb, bool wait_for_vblank)
 {
 	struct intel_crtc *crtc = dsb->crtc;
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -258,6 +259,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 	}
 
 	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id),
+		       (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
 		       DSB_ENABLE);
 	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
 		       i915_ggtt_offset(dsb->vma));
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 6b22499e8a5d..b8148b47022d 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -19,7 +19,8 @@ void intel_dsb_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
-void intel_dsb_commit(struct intel_dsb *dsb);
+void intel_dsb_commit(struct intel_dsb *dsb,
+		      bool wait_for_vblank);
 void intel_dsb_wait(struct intel_dsb *dsb);
 
 #endif
-- 
2.38.2

