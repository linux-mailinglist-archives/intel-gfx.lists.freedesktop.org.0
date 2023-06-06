Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B85F724CBB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6457D10E39B;
	Tue,  6 Jun 2023 19:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28EDB10E399
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078914; x=1717614914;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HO4Itcpt5SrqIRD2L5uUCZ5Hoyk1tnTqrLaPZ+disDk=;
 b=lLDTjOwTtccRt7TuQqfqejxM4iBKysi2TpmvK4NjVUmJEnwHb6CWtWv2
 y+OZiYPG088/FLWd+0RqjZJkHvjxi4mNkdwaDd4b6EsnbZPnOfRgcMZjF
 EiZjmTBSd/MDKQB54gBEzouRrLI5fWGqubdIcUlQtVbCrYHVYiNQVJcd/
 UTDiy086ZlX8se25TdNk0mJOwh28O7APWHe7hkXFX0U9c0lIMV1XPdIRQ
 ATEIni68TlxmAph8I60udHc7W7rORB3m3MZxsA6z/iousvHyOOJu7HmdQ
 f/WdLXhfe6o2uGNtm9Sxmquz4UvYnn9nbgXZijloG2+xDFcVGV74bJMzC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146225"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146225"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187007"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187007"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:47 +0300
Message-Id: <20230606191504.18099-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/19] drm/i915/dsb: Use non-locked register
 access
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

Avoid the locking overhead for DSB registers. We don't need the locks
and intel_dsb_commit() in particular needs to be called from the
vblank evade critical section and thus needs to be fast.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index bed058d2c3ac..97e593d9f100 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -96,7 +96,7 @@ static bool assert_dsb_has_room(struct intel_dsb *dsb)
 static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
 			enum dsb_id id)
 {
-	return intel_de_read(i915, DSB_CTRL(pipe, id)) & DSB_STATUS_BUSY;
+	return intel_de_read_fw(i915, DSB_CTRL(pipe, id)) & DSB_STATUS_BUSY;
 }
 
 static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
@@ -243,13 +243,13 @@ void intel_dsb_commit(struct intel_dsb *dsb, bool wait_for_vblank)
 		return;
 	}
 
-	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id),
-		       (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
-		       DSB_ENABLE);
-	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
-		       i915_ggtt_offset(dsb->vma));
-	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
-		       i915_ggtt_offset(dsb->vma) + tail);
+	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
+			  (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
+			  DSB_ENABLE);
+	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
+			  i915_ggtt_offset(dsb->vma));
+	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
+			  i915_ggtt_offset(dsb->vma) + tail);
 }
 
 void intel_dsb_wait(struct intel_dsb *dsb)
@@ -266,7 +266,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 	/* Attempt to reset it */
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
-	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id), 0);
+	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id), 0);
 }
 
 /**
-- 
2.39.3

