Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 544BF64E548
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:39:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803F910E5AE;
	Fri, 16 Dec 2022 00:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDDDD10E5AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151125; x=1702687125;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YToql9RRrP4Mt4EhPRH5EGGr2lCmR702lDgsWkJIzvo=;
 b=VXFQIXL2xULE1AaVuDf+CvTgYSGB0dUngXFavPwsGXKaUKVIKvrnM06T
 /p0IjRl3/5CvADt5WQ0ah483UDnuao0a3U5kagrxRCyvynzhvnX/jyqOQ
 FtKOdAFkpaplDpw+/lFdW1OTdmwmtpW7y2anjhZ75YuHCYqeZciE+ZUBf
 XkzKvuXPyr/Ww8WMBQ8riZa/Kul7iTxtyQqVQHIWPg2n7GcWtNH1BChfY
 wHP7O4xUmJHcpqX1Ylyxqw49hjKecllA4TllnFMkYJqZscm95S7kPRq7c
 8PM/bAIHN90xAqfQSf0yjWiVEJgqGg9gHe4N+/gjxVl8dB0/ppZnrh7Sj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103874"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103874"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100224"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100224"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:07 +0200
Message-Id: <20221216003810.13338-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/dsb: Allow the caller to pass in
 the DSB buffer size
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

The caller should more or less know how many DSB commands it
wants to emit into the command buffer, so allow it to specify
the size of the command buffer rather than having the low level
DSB code guess it.

Technically we can emit as many as 134+1033 (for adl+ degamma +
10bit gamma) register writes but thanks to the DSB indexed register
write command we get significant space savings so the current size
estimate of 8KiB (~1024 DSB commands) is sufficient for now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c   | 42 +++++++++++++---------
 drivers/gpu/drm/i915/display/intel_dsb.h   |  3 +-
 3 files changed, 29 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 76603357252d..8d97c299e657 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1380,7 +1380,7 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 	/* FIXME DSB has issues loading LUTs, disable it for now */
 	return;
 
-	crtc_state->dsb = intel_dsb_prepare(crtc);
+	crtc_state->dsb = intel_dsb_prepare(crtc, 1024);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 636c57767f97..7c593ec84d41 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -30,21 +30,24 @@ struct intel_dsb {
 	struct intel_crtc *crtc;
 
 	/*
-	 * free_pos will point the first free entry position
-	 * and help in calculating tail of command buffer.
+	 * maximum number of dwords the buffer will hold.
 	 */
-	int free_pos;
+	unsigned int size;
 
 	/*
-	 * ins_start_offset will help to store start address of the dsb
+	 * free_pos will point the first free dword and
+	 * help in calculating tail of command buffer.
+	 */
+	unsigned int free_pos;
+
+	/*
+	 * ins_start_offset will help to store start dword of the dsb
 	 * instuction and help in identifying the batch of auto-increment
 	 * register.
 	 */
-	u32 ins_start_offset;
+	unsigned int ins_start_offset;
 };
 
-#define DSB_BUF_SIZE    (2 * PAGE_SIZE)
-
 /**
  * DOC: DSB
  *
@@ -76,7 +79,7 @@ static bool assert_dsb_has_room(struct intel_dsb *dsb)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/* each instruction is 2 dwords */
-	return !drm_WARN(&i915->drm, ALIGN(dsb->free_pos, 2) > DSB_BUF_SIZE / 4 - 2,
+	return !drm_WARN(&i915->drm, dsb->free_pos > dsb->size - 2,
 			 "DSB buffer overflow\n");
 }
 
@@ -168,7 +171,7 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 		if (intel_dsb_prev_ins_is_mmio_write(dsb, reg)) {
 			u32 prev_val = buf[dsb->ins_start_offset + 0];
 
-			buf[dsb->ins_start_offset + 0] = 1; /* size */
+			buf[dsb->ins_start_offset + 0] = 1; /* count */
 			buf[dsb->ins_start_offset + 1] =
 				(DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT) |
 				i915_mmio_reg_offset(reg);
@@ -178,7 +181,7 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 		}
 
 		buf[dsb->free_pos++] = val;
-		/* Update the size. */
+		/* Update the count */
 		buf[dsb->ins_start_offset]++;
 
 		/* if number of data words is odd, then the last dword should be 0.*/
@@ -250,6 +253,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 /**
  * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
  * @crtc: the CRTC
+ * @max_cmds: number of commands we need to fit into command buffer
  *
  * This function prepare the command buffer which is used to store dsb
  * instructions with data.
@@ -257,25 +261,30 @@ void intel_dsb_commit(struct intel_dsb *dsb)
  * Returns:
  * DSB context, NULL on failure
  */
-struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc)
+struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
+				    unsigned int max_cmds)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_dsb *dsb;
 	struct drm_i915_gem_object *obj;
-	struct i915_vma *vma;
-	u32 *buf;
 	intel_wakeref_t wakeref;
+	struct intel_dsb *dsb;
+	struct i915_vma *vma;
+	unsigned int size;
+	u32 *buf;
 
 	if (!HAS_DSB(i915))
 		return NULL;
 
-	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
+	dsb = kzalloc(sizeof(*dsb), GFP_KERNEL);
 	if (!dsb)
 		goto out;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
-	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
+	/* ~1 qword per instruction, full cachelines */
+	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
+
+	obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
 	if (IS_ERR(obj))
 		goto out_put_rpm;
 
@@ -297,6 +306,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc)
 	dsb->vma = vma;
 	dsb->crtc = crtc;
 	dsb->cmd_buf = buf;
+	dsb->size = size / 4; /* in dwords */
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 25d774049cc2..05c221b6d0a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -13,7 +13,8 @@
 struct intel_crtc;
 struct intel_dsb;
 
-struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc);
+struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
+				    unsigned int max_cmds);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
-- 
2.37.4

