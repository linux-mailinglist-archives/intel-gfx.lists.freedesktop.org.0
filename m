Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPlqGaxTc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:55:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CB274A37
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:55:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599DF10E20E;
	Fri, 23 Jan 2026 10:55:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ELQQ6ivQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1919D10E20E;
 Fri, 23 Jan 2026 10:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165737; x=1800701737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SorLMNo4WZmYYE+iWNMiVz6nMFCzvbxLRzgbEul/ADc=;
 b=ELQQ6ivQuaJcKMuQMRsljUlnlAKO29KjpCCJsjlrCzSedN062pBOJOdz
 ZAZdLYmrxc0ssNPv14235rEMykIT7pemtFmLLWHf5Frzo6f+XdmcwlMi8
 k3NgYhxh3KXu9+ATeVYlg1mF8//7xa+jZ+DDF3ro4koME0QWh0KQDtHIl
 JS/AG1QnU6MJmOwhOvs6okRywFYux72eK0d8ESr6dOq4OhPHx0PBbVCPd
 XFPHHXdl5l4r6xPtysZMp0urf1smgZLIbrdm1//1THbowazxYAKjz3HMY
 tUMeaxlM8DucrS2ll2sSOyDURmDsFaLX2dh/w0MWLx6Yb/sLHq8wzyzuj Q==;
X-CSE-ConnectionGUID: gEcB8wKFRp6ZLKzcnj8B5g==
X-CSE-MsgGUID: Lkn98MWFR4GDrEsk29lNQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="81529991"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81529991"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:55:36 -0800
X-CSE-ConnectionGUID: 5MqxKO1BRkiujFyuUsDLFQ==
X-CSE-MsgGUID: tHNkbwMcSfCeFiRYtDoWsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211461478"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 23 Jan 2026 02:55:34 -0800
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH 1/1] drm/{i915, xe}/pcode: rename GEN6_PCODE_DATA to match spec
Date: Fri, 23 Jan 2026 11:55:25 +0100
Message-ID: <20260123105525.572035-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260123105525.572035-1-michal.grzelak@intel.com>
References: <20260123105525.572035-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 93CB274A37
X-Rspamd-Action: no action

Variable naming val and val1 has to match register macro naming;
historically, corresponding macros were named GEN6_PCODE_DATA and
GEN6_PCODE_DATA1. Since GEN6_PCODE_DATA has been renamed by spec to
GEN6_PCODE_DATA0, rename register macro to match spec and variable val
into val0 in functions declaring val1.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_parent.c   |  4 ++--
 drivers/gpu/drm/i915/display/intel_parent.h   |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  2 +-
 drivers/gpu/drm/i915/intel_pcode.c            | 14 +++++++-------
 drivers/gpu/drm/i915/intel_pcode.h            |  2 +-
 drivers/gpu/drm/xe/display/xe_display_pcode.c |  4 ++--
 drivers/gpu/drm/xe/xe_pcode.c                 |  4 ++--
 drivers/gpu/drm/xe/xe_pcode.h                 |  2 +-
 10 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 7f73695a0444..6fc694d58f78 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -93,9 +93,9 @@ void intel_parent_pc8_unblock(struct intel_display *display)
 }
 
 /* pcode */
-int intel_parent_pcode_read(struct intel_display *display, u32 mbox, u32 *val, u32 *val1)
+int intel_parent_pcode_read(struct intel_display *display, u32 mbox, u32 *val0, u32 *val1)
 {
-	return display->parent->pcode->read(display->drm, mbox, val, val1);
+	return display->parent->pcode->read(display->drm, mbox, val0, val1);
 }
 
 int intel_parent_pcode_write_timeout(struct intel_display *display, u32 mbox, u32 val, int timeout_ms)
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 04782bb26b61..b38a4d35767f 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -37,7 +37,7 @@ void intel_parent_pc8_block(struct intel_display *display);
 void intel_parent_pc8_unblock(struct intel_display *display);
 
 /* pcode */
-int intel_parent_pcode_read(struct intel_display *display, u32 mbox, u32 *val, u32 *val1);
+int intel_parent_pcode_read(struct intel_display *display, u32 mbox, u32 *val0, u32 *val1);
 int intel_parent_pcode_write_timeout(struct intel_display *display, u32 mbox, u32 val, int timeout_ms);
 int intel_parent_pcode_write(struct intel_display *display, u32 mbox, u32 val);
 int intel_parent_pcode_request(struct intel_display *display, u32 mbox, u32 request,
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index bd20f287720f..6e6a892911dc 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1707,7 +1707,7 @@ static int mailbox_write(struct intel_vgpu *vgpu, unsigned int offset,
 {
 	u32 value = *(u32 *)p_data;
 	u32 cmd = value & 0xff;
-	u32 *data0 = &vgpu_vreg_t(vgpu, GEN6_PCODE_DATA);
+	u32 *data0 = &vgpu_vreg_t(vgpu, GEN6_PCODE_DATA0);
 
 	switch (cmd) {
 	case GEN9_PCODE_READ_MEM_LATENCY:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5bf3b4ab2baa..92a189f9f6dc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1176,7 +1176,7 @@
 /*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
 #define     PCODE_MBOX_DOMAIN_NONE		0x0
 #define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
-#define GEN6_PCODE_DATA				_MMIO(0x138128)
+#define GEN6_PCODE_DATA0			_MMIO(0x138128)
 #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
 #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
 #define GEN6_PCODE_DATA1			_MMIO(0x13812C)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 052596ac83a0..dc54c2a33a58 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -606,7 +606,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(GEN6_UCGCTL1);
 	MMIO_D(GEN6_UCGCTL2);
 	MMIO_F(_MMIO(0x4f000), 0x90);
-	MMIO_D(GEN6_PCODE_DATA);
+	MMIO_D(GEN6_PCODE_DATA0);
 	MMIO_D(_MMIO(0x13812c));
 	MMIO_D(GEN7_ERR_INT);
 	MMIO_D(HSW_EDRAM_CAP);
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index 76c5916b28f4..fd8fd52ec40f 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -57,7 +57,7 @@ static int gen7_check_mailbox_status(u32 mbox)
 }
 
 static int __snb_pcode_rw(struct intel_uncore *uncore, u32 mbox,
-			  u32 *val, u32 *val1,
+			  u32 *val0, u32 *val1,
 			  int fast_timeout_us, int slow_timeout_ms,
 			  bool is_read)
 {
@@ -72,7 +72,7 @@ static int __snb_pcode_rw(struct intel_uncore *uncore, u32 mbox,
 	if (intel_uncore_read_fw(uncore, GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY)
 		return -EAGAIN;
 
-	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA, *val);
+	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA0, *val0);
 	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA1, val1 ? *val1 : 0);
 	intel_uncore_write_fw(uncore,
 			      GEN6_PCODE_MAILBOX, GEN6_PCODE_READY | mbox);
@@ -86,7 +86,7 @@ static int __snb_pcode_rw(struct intel_uncore *uncore, u32 mbox,
 		return -ETIMEDOUT;
 
 	if (is_read)
-		*val = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA);
+		*val0 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA0);
 	if (is_read && val1)
 		*val1 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA1);
 
@@ -96,12 +96,12 @@ static int __snb_pcode_rw(struct intel_uncore *uncore, u32 mbox,
 		return gen6_check_mailbox_status(mbox);
 }
 
-int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1)
+int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val0, u32 *val1)
 {
 	int err;
 
 	mutex_lock(&uncore->i915->sb_lock);
-	err = __snb_pcode_rw(uncore, mbox, val, val1, 500, 20, true);
+	err = __snb_pcode_rw(uncore, mbox, val0, val1, 500, 20, true);
 	mutex_unlock(&uncore->i915->sb_lock);
 
 	if (err) {
@@ -277,11 +277,11 @@ int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u3
 	return err;
 }
 
-static int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
+static int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val0, u32 *val1)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
-	return snb_pcode_read(&i915->uncore, mbox, val, val1);
+	return snb_pcode_read(&i915->uncore, mbox, val0, val1);
 }
 
 static int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 19795ea8172e..deecc64bc1b3 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -11,7 +11,7 @@
 struct drm_device;
 struct intel_uncore;
 
-int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
+int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val0, u32 *val1);
 int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms);
 #define snb_pcode_write(uncore, mbox, val) \
 	snb_pcode_write_timeout((uncore), (mbox), (val), 1)
diff --git a/drivers/gpu/drm/xe/display/xe_display_pcode.c b/drivers/gpu/drm/xe/display/xe_display_pcode.c
index f6820ef7e666..8dc9cbdb18ec 100644
--- a/drivers/gpu/drm/xe/display/xe_display_pcode.c
+++ b/drivers/gpu/drm/xe/display/xe_display_pcode.c
@@ -6,12 +6,12 @@
 #include "xe_device.h"
 #include "xe_pcode.h"
 
-static int xe_display_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
+static int xe_display_pcode_read(struct drm_device *drm, u32 mbox, u32 *val0, u32 *val1)
 {
 	struct xe_device *xe = to_xe_device(drm);
 	struct xe_tile *tile = xe_device_get_root_tile(xe);
 
-	return xe_pcode_read(tile, mbox, val, val1);
+	return xe_pcode_read(tile, mbox, val0, val1);
 }
 
 static int xe_display_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
diff --git a/drivers/gpu/drm/xe/xe_pcode.c b/drivers/gpu/drm/xe/xe_pcode.c
index dc66d0c7ee06..37303ac09080 100644
--- a/drivers/gpu/drm/xe/xe_pcode.c
+++ b/drivers/gpu/drm/xe/xe_pcode.c
@@ -132,12 +132,12 @@ int xe_pcode_write64_timeout(struct xe_tile *tile, u32 mbox, u32 data0, u32 data
 	return err;
 }
 
-int xe_pcode_read(struct xe_tile *tile, u32 mbox, u32 *val, u32 *val1)
+int xe_pcode_read(struct xe_tile *tile, u32 mbox, u32 *val0, u32 *val1)
 {
 	int err;
 
 	mutex_lock(&tile->pcode.lock);
-	err = pcode_mailbox_rw(tile, mbox, val, val1, 1, true, false);
+	err = pcode_mailbox_rw(tile, mbox, val0, val1, 1, true, false);
 	mutex_unlock(&tile->pcode.lock);
 
 	return err;
diff --git a/drivers/gpu/drm/xe/xe_pcode.h b/drivers/gpu/drm/xe/xe_pcode.h
index 490e4f269607..ccb5f71c78c6 100644
--- a/drivers/gpu/drm/xe/xe_pcode.h
+++ b/drivers/gpu/drm/xe/xe_pcode.h
@@ -17,7 +17,7 @@ int xe_pcode_probe_early(struct xe_device *xe);
 int xe_pcode_ready(struct xe_device *xe, bool locked);
 int xe_pcode_init_min_freq_table(struct xe_tile *tile, u32 min_gt_freq,
 				 u32 max_gt_freq);
-int xe_pcode_read(struct xe_tile *tile, u32 mbox, u32 *val, u32 *val1);
+int xe_pcode_read(struct xe_tile *tile, u32 mbox, u32 *val0, u32 *val1);
 int xe_pcode_write_timeout(struct xe_tile *tile, u32 mbox, u32 val,
 			   int timeout_ms);
 int xe_pcode_write64_timeout(struct xe_tile *tile, u32 mbox, u32 data0,
-- 
2.45.2

