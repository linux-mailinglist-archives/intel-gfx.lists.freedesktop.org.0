Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E23764E53E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:38:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D9EB10E0C9;
	Fri, 16 Dec 2022 00:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E8610E5A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151100; x=1702687100;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ww9Lg5m91wNT9YWz8xcc2kADkWHiW94gq2nNsDfOgV4=;
 b=HK5ozQK5+DJBQkgtni7EK1/NqcXvBJ7RcLYWg9WD0cRe8um+dmNX/3gT
 vAJUpD5SG91yHvBS7cUrNLM4o4NX0dxuPseNOaFMy0vvFoxy/5oTA1Ws0
 IeV3fR3PaQkKcPedjXNEdUECHlrSCnqKpbm5FLItxSN6GbU4im9/G6ywc
 HguA5xOh3TaUzFjK5riKqGBXU8DsnAtq10kJXDFlahTZIO04k5k3ppHfz
 jy1G2jOnU4pBeLkpx4060vWJR23ykFcvA8G59YuceQ8vnI+a5C7v0xDTO
 sXxK+OD7VH9+zzq2fsfpnI07bec3Jitl8193smekYvMRmZ2aAPKHnfbhO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103805"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103805"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100176"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100176"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:37:59 +0200
Message-Id: <20221216003810.13338-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/13] drm/i915/dsb: Inline DSB_CTRL writes into
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

No point in having these wrappers for a simple DSB_CTRL write.
Inline them into intel_dsb_commit().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 62 ++++++------------------
 1 file changed, 14 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ebebaf802dee..90a22af30aab 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -76,34 +76,6 @@ static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
 	return intel_de_read(i915, DSB_CTRL(pipe, id)) & DSB_STATUS_BUSY;
 }
 
-static bool intel_dsb_enable_engine(struct drm_i915_private *i915,
-				    enum pipe pipe, enum dsb_id id)
-{
-	if (is_dsb_busy(i915, pipe, id)) {
-		drm_dbg_kms(&i915->drm, "DSB engine is busy.\n");
-		return false;
-	}
-
-	intel_de_write(i915, DSB_CTRL(pipe, id), DSB_ENABLE);
-	intel_de_posting_read(i915, DSB_CTRL(pipe, id));
-
-	return true;
-}
-
-static bool intel_dsb_disable_engine(struct drm_i915_private *i915,
-				     enum pipe pipe, enum dsb_id id)
-{
-	if (is_dsb_busy(i915, pipe, id)) {
-		drm_dbg_kms(&i915->drm, "DSB engine is busy.\n");
-		return false;
-	}
-
-	intel_de_write(i915, DSB_CTRL(pipe, id), 0);
-	intel_de_posting_read(i915, DSB_CTRL(pipe, id));
-
-	return true;
-}
-
 /**
  * intel_dsb_indexed_reg_write() -Write to the DSB context for auto
  * increment register.
@@ -223,42 +195,36 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 	if (!(dsb && dsb->free_pos))
 		return;
 
-	if (!intel_dsb_enable_engine(dev_priv, pipe, dsb->id))
-		goto reset;
-
-	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
-		drm_err(&dev_priv->drm,
-			"HEAD_PTR write failed - dsb engine is busy.\n");
-		goto reset;
-	}
-	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
-		       i915_ggtt_offset(dsb->vma));
-
 	tail = ALIGN(dsb->free_pos * 4, CACHELINE_BYTES);
 	if (tail > dsb->free_pos * 4)
 		memset(&dsb->cmd_buf[dsb->free_pos], 0,
 		       (tail - dsb->free_pos * 4));
 
 	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
-		drm_err(&dev_priv->drm,
-			"TAIL_PTR write failed - dsb engine is busy.\n");
+		drm_err(&dev_priv->drm, "DSB engine is busy.\n");
 		goto reset;
 	}
-	drm_dbg_kms(&dev_priv->drm,
-		    "DSB execution started - head 0x%x, tail 0x%x\n",
-		    i915_ggtt_offset(dsb->vma), tail);
+
+	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id),
+		       DSB_ENABLE);
+	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
+		       i915_ggtt_offset(dsb->vma));
 	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
 		       i915_ggtt_offset(dsb->vma) + tail);
-	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "DSB execution started - head 0x%x, tail 0x%x\n",
+		    i915_ggtt_offset(dsb->vma),
+		    i915_ggtt_offset(dsb->vma) + tail);
+
+	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1))
 		drm_err(&dev_priv->drm,
 			"Timed out waiting for DSB workload completion.\n");
-		goto reset;
-	}
 
 reset:
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
-	intel_dsb_disable_engine(dev_priv, pipe, dsb->id);
+	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id), 0);
 }
 
 /**
-- 
2.37.4

