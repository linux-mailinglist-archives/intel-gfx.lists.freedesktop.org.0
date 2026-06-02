Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ygOROxNbH2oFlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 00:37:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0FF6327D6
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 00:37:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Z9hFHfeW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93D4A10F633;
	Tue,  2 Jun 2026 22:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19DEF10F62D;
 Tue,  2 Jun 2026 22:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780439822; x=1811975822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HKTEoHJYLhw7T6YaotN/IMotgVDJSGD0KvbEhHjIZLs=;
 b=Z9hFHfeWb8egSNWZtz4aZhMA/xwkJGga21N1YPyVfqEjDMHj4MW6St3t
 jW/YklWs/NgbnPFFjbK2xzlBVSznH7n1+hTzET8Rz0vJHcVnexhlWr0wK
 D/HPt6mY/CpEaLIYWToT25WfloJk0fR3tZkvvVtjFkv+ANaNSTcZ2Jezk
 KiClB4OTDYZspcNtw1K5UokjP3D+2WYt8eRG17wRhUZCmXCrMHX8PyTR0
 Y8U1dln7jwoGT8v285l9jRgl4Cj03kWvIPikWVnVo2ksJBlBuUw0pJIWd
 04LYoPJZ9Ic+zDBVyvx6wDoYTz24aGIjjLPl15smXH7oTD+95IDhK6EXU g==;
X-CSE-ConnectionGUID: GYqWPaQBR2ShWmimlFlp8w==
X-CSE-MsgGUID: SRXQi3N9RZ2NOrp3ehBPrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="92348347"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="92348347"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 15:37:02 -0700
X-CSE-ConnectionGUID: c5PvABPsQiGH+k+6Xmv9cg==
X-CSE-MsgGUID: kFPJjPq8QVyVayvfZnIHgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="243879082"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 02 Jun 2026 15:37:00 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v4 1/2] drm/i915/pcode: rename GEN6_PCODE_DATA to match spec
Date: Wed,  3 Jun 2026 00:36:39 +0200
Message-ID: <20260602223640.1375933-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260602223640.1375933-1-michal.grzelak@intel.com>
References: <20260602223640.1375933-1-michal.grzelak@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C0FF6327D6

Variable naming of val and val1 should match register macro naming.
Historically, corresponding macros were named GEN6_PCODE_DATA and
GEN6_PCODE_DATA1.

Rename register macro GEN6_PCODE_DATA to GEN6_PCODE_DATA0 since spec
appended '0' to the register name. Rename val into val0 in functions
declaring val1 for both i915-specific and shared display code.

v4->v5
- split i915 changes from xe (Jani)

v3->v4
- apply the rename to the read()'s signature as well (Sashiko)

v2->v3
- resolve conflict from rebase

v1->v2
- rebase onto drm-tip (Jani)

Bspec: 19978
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_parent.c  |  4 ++--
 drivers/gpu/drm/i915/display/intel_parent.h  |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c          |  2 +-
 drivers/gpu/drm/i915/i915_reg.h              |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  |  2 +-
 drivers/gpu/drm/i915/intel_pcode.c           | 14 +++++++-------
 drivers/gpu/drm/i915/intel_pcode.h           |  2 +-
 include/drm/intel/display_parent_interface.h |  2 +-
 8 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index a5816561be408..05e58115c6b64 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -279,9 +279,9 @@ void intel_parent_pc8_unblock(struct intel_display *display)
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
index 27e35f891a6bb..81d0f5da465c6 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -113,7 +113,7 @@ void intel_parent_pc8_block(struct intel_display *display);
 void intel_parent_pc8_unblock(struct intel_display *display);
 
 /* pcode */
-int intel_parent_pcode_read(struct intel_display *display, u32 mbox, u32 *val, u32 *val1);
+int intel_parent_pcode_read(struct intel_display *display, u32 mbox, u32 *val0, u32 *val1);
 int intel_parent_pcode_write_timeout(struct intel_display *display, u32 mbox, u32 val, int timeout_ms);
 int intel_parent_pcode_write(struct intel_display *display, u32 mbox, u32 val);
 int intel_parent_pcode_request(struct intel_display *display, u32 mbox, u32 request,
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 9f61867e24781..22dd0179863ee 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1706,7 +1706,7 @@ static int mailbox_write(struct intel_vgpu *vgpu, unsigned int offset,
 {
 	u32 value = *(u32 *)p_data;
 	u32 cmd = value & 0xff;
-	u32 *data0 = &vgpu_vreg_t(vgpu, GEN6_PCODE_DATA);
+	u32 *data0 = &vgpu_vreg_t(vgpu, GEN6_PCODE_DATA0);
 
 	switch (cmd) {
 	case GEN9_PCODE_READ_MEM_LATENCY:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 64e906380131a..d873072b7a92e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -697,7 +697,7 @@
 #define    EDRAM_WAYS_IDX(cap)			(((cap) >> 5) & 0x7)
 #define    EDRAM_SETS_IDX(cap)			(((cap) >> 8) & 0x3)
 
-#define GEN6_PCODE_DATA				_MMIO(0x138128)
+#define GEN6_PCODE_DATA0			_MMIO(0x138128)
 #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
 #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
 #define GEN6_PCODE_DATA1			_MMIO(0x13812C)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index de118fae0a497..25b72b20e709c 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -611,7 +611,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(GEN6_UCGCTL1);
 	MMIO_D(GEN6_UCGCTL2);
 	MMIO_F(_MMIO(0x4f000), 0x90);
-	MMIO_D(GEN6_PCODE_DATA);
+	MMIO_D(GEN6_PCODE_DATA0);
 	MMIO_D(_MMIO(0x13812c));
 	MMIO_D(GEN7_ERR_INT);
 	MMIO_D(HSW_EDRAM_CAP);
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index c07d48fc1b355..1c9d1f4137570 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -58,7 +58,7 @@ static int gen7_check_mailbox_status(u32 mbox)
 }
 
 static int __snb_pcode_rw(struct intel_uncore *uncore, u32 mbox,
-			  u32 *val, u32 *val1,
+			  u32 *val0, u32 *val1,
 			  int fast_timeout_us, int slow_timeout_ms,
 			  bool is_read)
 {
@@ -73,7 +73,7 @@ static int __snb_pcode_rw(struct intel_uncore *uncore, u32 mbox,
 	if (intel_uncore_read_fw(uncore, GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY)
 		return -EAGAIN;
 
-	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA, *val);
+	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA0, *val0);
 	intel_uncore_write_fw(uncore, GEN6_PCODE_DATA1, val1 ? *val1 : 0);
 	intel_uncore_write_fw(uncore,
 			      GEN6_PCODE_MAILBOX, GEN6_PCODE_READY | mbox);
@@ -87,7 +87,7 @@ static int __snb_pcode_rw(struct intel_uncore *uncore, u32 mbox,
 		return -ETIMEDOUT;
 
 	if (is_read)
-		*val = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA);
+		*val0 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA0);
 	if (is_read && val1)
 		*val1 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA1);
 
@@ -97,12 +97,12 @@ static int __snb_pcode_rw(struct intel_uncore *uncore, u32 mbox,
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
@@ -278,11 +278,11 @@ int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u3
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
index 19795ea8172e7..deecc64bc1b36 100644
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
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 39991afeb173d..e76b6f544d5e4 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -177,7 +177,7 @@ struct intel_display_pc8_interface {
 };
 
 struct intel_display_pcode_interface {
-	int (*read)(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1);
+	int (*read)(struct drm_device *drm, u32 mbox, u32 *val0, u32 *val1);
 	int (*write)(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms);
 	int (*request)(struct drm_device *drm, u32 mbox, u32 request,
 		       u32 reply_mask, u32 reply, int timeout_base_ms);
-- 
2.45.2

