Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C29A583664
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4FA10EC9F;
	Thu, 28 Jul 2022 01:35:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A84CD10E48B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972083; x=1690508083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TReGJbaRDsJl8sLuLC8Q/+CjCzFHctS6He78uaBxpCM=;
 b=ILFXGfe6PEt6N1fNLmOkjedcgjqZZ1aFq9yrMJZvnku5Wr8p8OCRyf/F
 0c3b0ptYRGAwzk8nzzRk158TDqANAIIexSQj3e2zPFrXCsHlmZX0XAy5c
 g8R3UbHpx14wMWm0wr/LQfAMdpQAvSUf2TnxeOkYWnUeNHr6iSDDSYa0Y
 G9J8swbHM+RVDkRXzgwfzNvW23wvgmCIifxD61EhEwjQGSsk015EFTVL0
 xDr22apmUKwnluLBEguCR0NZII6XW5ccRrMYLj3HJc89WSNA+aXksZnLY
 XIXCRP4Rr99s6ctMIMG+Jda81dP6oLmH8SubyHwbEmlkSVZURotMUGupZ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288403229"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288403229"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659456943"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:38 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:33:59 -0700
Message-Id: <20220728013420.3750388-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/23] drm/i915: Parse and set stepping for
 platforms with GMD
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

From: José Roberto de Souza <jose.souza@intel.com>

The GMD step field do not properly match the current stepping convention
that we use(STEP_A0, STEP_A1, STEP_B0...).

One platform could have { arch = 12, rel = 70, step = 1 } and the
actual stepping is STEP_B0 but without the translation of the step
field would mean STEP_A1.
That is why we will need to have gmd_to_intel_step tables for each IP.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 60 +++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 42b3133d8387..0fa7147c7d0f 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -135,6 +135,48 @@ static const struct intel_step_info adlp_n_revids[] = {
 	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_D0 },
 };
 
+struct gmd_to_intel_step {
+	struct ip_version gmd;
+	enum intel_step step;
+};
+
+static const struct gmd_to_intel_step gmd_graphics_table[] = {
+	{ .gmd.ver = 12, .gmd.rel = 70, .gmd.step = 0, .step = STEP_A0 },
+	{ .gmd.ver = 12, .gmd.rel = 70, .gmd.step = 4, .step = STEP_B0 },
+	{ .gmd.ver = 12, .gmd.rel = 71, .gmd.step = 0, .step = STEP_A0 },
+	{ .gmd.ver = 12, .gmd.rel = 71, .gmd.step = 4, .step = STEP_B0 },
+	{ .gmd.ver = 12, .gmd.rel = 73, .gmd.step = 0, .step = STEP_A0 },
+	{ .gmd.ver = 12, .gmd.rel = 73, .gmd.step = 4, .step = STEP_B0 },
+};
+
+static const struct gmd_to_intel_step gmd_media_table[] = {
+	{ .gmd.ver = 13, .gmd.rel = 70, .gmd.step = 0, .step = STEP_A0 },
+	{ .gmd.ver = 13, .gmd.rel = 70, .gmd.step = 4, .step = STEP_B0 },
+};
+
+static const struct gmd_to_intel_step gmd_display_table[] = {
+	{ .gmd.ver = 14, .gmd.rel = 0, .gmd.step = 0, .step = STEP_A0 },
+	{ .gmd.ver = 14, .gmd.rel = 0, .gmd.step = 4, .step = STEP_B0 },
+};
+
+static u8 gmd_to_intel_step(struct drm_i915_private *i915,
+			    struct ip_version *gmd,
+			    const struct gmd_to_intel_step *table,
+			    int len)
+{
+	int i;
+
+	for (i = 0; i < len; i++) {
+		if (table[i].gmd.ver == gmd->ver &&
+		    table[i].gmd.rel == gmd->rel &&
+		    table[i].gmd.step == gmd->step)
+			return table[i].step;
+	}
+
+	drm_dbg(&i915->drm, "Using future steppings\n");
+	return STEP_FUTURE;
+}
+
 static void pvc_step_init(struct drm_i915_private *i915, int pci_revid);
 
 void intel_step_init(struct drm_i915_private *i915)
@@ -144,6 +186,24 @@ void intel_step_init(struct drm_i915_private *i915)
 	int revid = INTEL_REVID(i915);
 	struct intel_step_info step = {};
 
+	if (HAS_GMD_ID(i915)) {
+		step.graphics_step = gmd_to_intel_step(i915,
+						       &RUNTIME_INFO(i915)->graphics,
+						       gmd_graphics_table,
+						       ARRAY_SIZE(gmd_graphics_table));
+		step.media_step = gmd_to_intel_step(i915,
+						    &RUNTIME_INFO(i915)->media,
+						    gmd_media_table,
+						    ARRAY_SIZE(gmd_media_table));
+		step.display_step = gmd_to_intel_step(i915,
+						      &RUNTIME_INFO(i915)->display,
+						      gmd_display_table,
+						      ARRAY_SIZE(gmd_display_table));
+		RUNTIME_INFO(i915)->step = step;
+
+		return;
+	}
+
 	if (IS_PONTEVECCHIO(i915)) {
 		pvc_step_init(i915, revid);
 		return;
-- 
2.25.1

