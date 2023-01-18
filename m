Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC6B672349
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1439810E79C;
	Wed, 18 Jan 2023 16:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF6C510E798
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059460; x=1705595460;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=98KJ6C2rsqcfjjXBbKoupzjuJQsK2AcZoaYVmw4Rrd0=;
 b=AtRg69oqcP10Ww6EXvb0m9381FXpPad/UDqlJ4QJ9Snla6soAUxSc8UM
 UJ9gChhYHGRRSar8GUWC/RmBM/4OxFyGKy97u4dJMlzKTdRB9zC56IRa5
 3k/+O3QFTf9Gna/tR9O2g78o6SizsoeR7qVdoGBNw10hTPzGheSbnFTCY
 TUQ1yhuKPPnUYKZ6KXw1Ij8oEmqOehmJoaWnrhd4XCMDXE2Bue0TsT5KK
 EJGDV+pGhF8I5+qgE1dTiZ4I2pJeB0R7uEwssnSd1qpNw5CZ2Qg2/EVK8
 Mp8Do16IHUkyFU/0PJUvGpobjHaeDkHtQdtrwbAROtHn7SjfAwn6W3jJg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289817"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289817"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:30:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060446"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060446"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:30:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:30:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:32 +0200
Message-Id: <20230118163040.29808-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/dsb: Dump the DSB command buffer
 when DSB fails
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
index 9e25b1345927..f454329b6901 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -92,6 +92,22 @@ static bool assert_dsb_has_room(struct intel_dsb *dsb)
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
@@ -260,10 +276,21 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1))
+	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
+		u32 offset = i915_ggtt_offset(dsb->vma);
+
+		intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id),
+			       DSB_ENABLE | DSB_HALT);
+
 		drm_err(&dev_priv->drm,
-			"[CRTC:%d:%s] DSB %d timed out waiting for idle\n",
-			crtc->base.base.id, crtc->base.name, dsb->id);
+			"[CRTC:%d:%s] DSB %d timed out waiting for idle (current head=0x%x, head=0x%x, tail=0x%x)\n",
+			crtc->base.base.id, crtc->base.name, dsb->id,
+			intel_de_read(dev_priv, DSB_CURRENT_HEAD(pipe, dsb->id)) - offset,
+			intel_de_read(dev_priv, DSB_HEAD(pipe, dsb->id)) - offset,
+			intel_de_read(dev_priv, DSB_TAIL(pipe, dsb->id)) - offset);
+
+		intel_dsb_dump(dsb);
+	}
 
 	/* Attempt to reset it */
 	dsb->free_pos = 0;
-- 
2.38.2

