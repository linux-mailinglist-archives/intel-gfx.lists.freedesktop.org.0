Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9430E672347
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9459710E798;
	Wed, 18 Jan 2023 16:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA8C510E795
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059456; x=1705595456;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=66UBW/BuwFZPnxDxtfiXoqjyNcWEFOcfMDMFIQ4jdl4=;
 b=I7fSvYkaa56xl8U2KkXp+uyA0aeeB0Gpd67DqAZTsRk2ixFaxxDR2uk1
 30tGHRKyvigXpGWBOAogcZefbKXJXSpQ4QFxLzunxAMGbY7DjyD7iD2uY
 ocIXKh9r2eyEL84f9dGsE6zA03qBWpj0Gjt3TAC0X8KeYbv4TsYZ/5lba
 X9j3hdzxINPj1WzgE2xusdvrlHztrVxCxCwtrHvenib+xwboXJivD+/yT
 HokvoiHFemY8LeHEdoMTOm7zexhcq9MVMFqULUC6MQjFvFcP3gg9nkSOK
 9vnegRs6lqBT6vvzL4Uf7/FND2TTZMBaQnlKFi0HMbEHoEGaFuZiTZnIP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289770"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289770"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:30:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060432"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060432"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:30:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:30:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:30 +0200
Message-Id: <20230118163040.29808-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/13] drm/i915/dsb: Split intel_dsb_wait() from
 intel_dsb_commit()
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

Starting the DSB execution vs. waiting for it stop are two
totally different things. Split intel_dsb_wait() from
intel_dsb_commit() so that we can eventually allow the DSB
to execute asynchronously.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c |  4 +++-
 drivers/gpu/drm/i915/display/intel_dsb.c   | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h   |  1 +
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8d97c299e657..5d99913429b9 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1256,8 +1256,10 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 		break;
 	}
 
-	if (crtc_state->dsb)
+	if (crtc_state->dsb) {
 		intel_dsb_commit(crtc_state->dsb);
+		intel_dsb_wait(crtc_state->dsb);
+	}
 }
 
 static u32 chv_cgm_degamma_ldw(const struct drm_color_lut *color)
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index f41146fc84d7..0b2faa33f204 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -235,7 +235,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
 		drm_err(&dev_priv->drm, "[CRTC:%d:%s] DSB %d is busy\n",
 			crtc->base.base.id, crtc->base.name, dsb->id);
-		goto reset;
+		return;
 	}
 
 	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id),
@@ -249,13 +249,20 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 		    "DSB execution started - head 0x%x, tail 0x%x\n",
 		    i915_ggtt_offset(dsb->vma),
 		    i915_ggtt_offset(dsb->vma) + tail);
+}
+
+void intel_dsb_wait(struct intel_dsb *dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
 
 	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1))
 		drm_err(&dev_priv->drm,
 			"[CRTC:%d:%s] DSB %d timed out waiting for idle\n",
 			crtc->base.base.id, crtc->base.name, dsb->id);
 
-reset:
+	/* Attempt to reset it */
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
 	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id), 0);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 05c221b6d0a4..7999199c2464 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -19,5 +19,6 @@ void intel_dsb_cleanup(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
 void intel_dsb_commit(struct intel_dsb *dsb);
+void intel_dsb_wait(struct intel_dsb *dsb);
 
 #endif
-- 
2.38.2

