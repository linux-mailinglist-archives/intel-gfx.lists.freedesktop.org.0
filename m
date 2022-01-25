Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD3949A1CB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 01:19:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9932610E2C8;
	Tue, 25 Jan 2022 00:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26BC510E292
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 00:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643069937; x=1674605937;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gULhRD6gIQ3QQXAmfHek6eW9L4pe4KVMd/Gw7qAUmiU=;
 b=ByzPCKKqG+4wBii852Af7lN+fwc4hOFHpAfjd6E77OwTIb2xmB25qjNZ
 4pefhpqLV2TaAdmlDUp/Fs81fpkTPijnv72R9/tPvEusi7Qo1lJ3MVZm8
 +NQvixZH60VnD+NuAOLEj4arOMBfjvS1xIopGopAxvH1kFC0E/WYFa8yE
 T3WdIEwnjfx9ps74RmTm6aeXR7cB4ODYQqGc50cyKSsdfpCpGIs/X71oX
 6T74Gm79hB8ZwA06P+hZBRmO1js/bbPiVIYcY15HsDyxRvrflPoHUmJaV
 zT3k+6cTIaxCTD0DaxLB3hcXG7nQrBWQ79uU3w0j3XLijc/4KVs+ACzo9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="226159911"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="226159911"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 16:18:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="580570951"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 16:18:55 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 16:16:35 -0800
Message-Id: <20220125001635.4004286-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915/rpl-s: Add stepping info
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
Cc: Roper@freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add stepping-substepping info in
accordance to BSpec changes.
Though it looks weird, the revision ID
for the newer stepping is indeed backwards
and is in accordance to the spec.

v2: Rearrange the platforms in logical order (Matt)

Bspec: 53655
Cc: Roper, Matthew D <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index a4b16b9e2e55..be055eb0b610 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -122,6 +122,11 @@ static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
 	[0x5] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
 };
 
+static const struct intel_step_info adls_rpls_revids[] = {
+	[0x4] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_D0 },
+	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
+};
+
 void intel_step_init(struct drm_i915_private *i915)
 {
 	const struct intel_step_info *revids = NULL;
@@ -129,6 +134,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	int revid = INTEL_REVID(i915);
 	struct intel_step_info step = {};
 
+
 	if (IS_DG2_G10(i915)) {
 		revids = dg2_g10_revid_step_tbl;
 		size = ARRAY_SIZE(dg2_g10_revid_step_tbl);
@@ -141,6 +147,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ALDERLAKE_P(i915)) {
 		revids = adlp_revids;
 		size = ARRAY_SIZE(adlp_revids);
+	} else if (IS_ADLS_RPLS(i915)) {
+                revids = adls_rpls_revids;
+                size = ARRAY_SIZE(adls_rpls_revids);
 	} else if (IS_ALDERLAKE_S(i915)) {
 		revids = adls_revids;
 		size = ARRAY_SIZE(adls_revids);
-- 
2.25.1

