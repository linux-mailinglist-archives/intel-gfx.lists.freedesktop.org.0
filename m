Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D833349A1DC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 01:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAFC410E2DF;
	Tue, 25 Jan 2022 00:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B478410E2DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 00:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643071843; x=1674607843;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lfTSI42YOjUoMgpW6hRjak8IoMqT5IZ9otyQGfQF5/Y=;
 b=EL6VanQC6h3PNBZmv8Ww9pxLO+VV7Ri0LD+26xLYmAJQf/hcgSU3LnyR
 bynPEFVUrloL1/vZZmcF/fjxGgffp5Vh1QaJdee1smOFUHGtor3XDaUZs
 iDIEQdv+l71x9SOtL0RWrpPkm/pt3ufqzvYVSRHZDoVOZppm79ejZqFAk
 HbHPQL6/pmKKq4lW+Ftdv/pGBofwlctaK1ly3fx/N/TRD+9MOezxDrVGg
 9QcETAAsBYn2rb1Ki30nOVk4XQbPwVV5pGnZ91aXqhGhY2rYYRXRZKz3z
 UmbbDRv5HWttTUxeD1whySmpWHmPOyj8ALK4lUw1rWzx7Qm6iRslsgwT+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="245020118"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="245020118"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 16:50:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="580579230"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 16:50:42 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 16:48:23 -0800
Message-Id: <20220125004823.4033793-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND] drm/i915/rpl-s: Add stepping info
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
index a4b16b9e2e55..9012e4b76a49 100644
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
+		revids = adls_rpls_revids;
+		size = ARRAY_SIZE(adls_rpls_revids);
 	} else if (IS_ALDERLAKE_S(i915)) {
 		revids = adls_revids;
 		size = ARRAY_SIZE(adls_revids);
-- 
2.25.1

