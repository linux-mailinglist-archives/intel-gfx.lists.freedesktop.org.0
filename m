Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E0C724CBC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C090F10E3A6;
	Tue,  6 Jun 2023 19:15:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 022AE10E39E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078917; x=1717614917;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wc2F8bztOxgIb7HkrcJZGyIIFTl/gbZ9i6QOSDuwBJ8=;
 b=ZsuhODb9mAeh2+xvTg6PRkoE68CWkxYPBrn/ZOhir/OnexDbQdlkKgx+
 HLET804NaJSSk/mega3kMkhLPLEaxpDWYU5XZ8UlZYHosQ1eKmqMLYOWU
 grsbw/1SZDo+9qd/37WNkhvmtYO4tiCgVj5DsQ8a9+r3xtSk3tG6h4Qoo
 zGc9SNbBQ2q1L8fke8G+7zj2TjtXkoMJk32dL6DS9QginfsgOs4/FDNNt
 dvfYLQbV7g5nJ13SxPBIsg4R7WFcPwbhdWmynCE5hsaNvv/AygBHvfati
 SN5p+0zF6MxzQFcCk5+v0F2ItyyuIuMw+OH6CS5VTnFGavEuE8S7kA5Xf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146236"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146236"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187013"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187013"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:48 +0300
Message-Id: <20230606191504.18099-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/19] drm/i915/dsb: Dump the DSB command
 buffer when DSB fails
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

Dump the full DSB command buffers and head/tail pointers if the
the DSB hasn't completed its job in time.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 33 +++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 97e593d9f100..42911abcd3ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -93,6 +93,22 @@ static bool assert_dsb_has_room(struct intel_dsb *dsb)
 			 crtc->base.base.id, crtc->base.name, dsb->id);
 }
 
+static void intel_dsb_dump(struct intel_dsb *dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	const u32 *buf = dsb->cmd_buf;
+	int i;
+
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] DSB %d commands {\n",
+		    crtc->base.base.id, crtc->base.name, dsb->id);
+	for (i = 0; i < ALIGN(dsb->free_pos, 64 / 4); i += 4)
+		drm_dbg_kms(&i915->drm,
+			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n",
+			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
+	drm_dbg_kms(&i915->drm, "}\n");
+}
+
 static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
 			enum dsb_id id)
 {
@@ -258,10 +274,21 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1))
+	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
+		u32 offset = i915_ggtt_offset(dsb->vma);
+
+		intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
+				  DSB_ENABLE | DSB_HALT);
+
 		drm_err(&dev_priv->drm,
-			"[CRTC:%d:%s] DSB %d timed out waiting for idle\n",
-			crtc->base.base.id, crtc->base.name, dsb->id);
+			"[CRTC:%d:%s] DSB %d timed out waiting for idle (current head=0x%x, head=0x%x, tail=0x%x)\n",
+			crtc->base.base.id, crtc->base.name, dsb->id,
+			intel_de_read_fw(dev_priv, DSB_CURRENT_HEAD(pipe, dsb->id)) - offset,
+			intel_de_read_fw(dev_priv, DSB_HEAD(pipe, dsb->id)) - offset,
+			intel_de_read_fw(dev_priv, DSB_TAIL(pipe, dsb->id)) - offset);
+
+		intel_dsb_dump(dsb);
+	}
 
 	/* Attempt to reset it */
 	dsb->free_pos = 0;
-- 
2.39.3

