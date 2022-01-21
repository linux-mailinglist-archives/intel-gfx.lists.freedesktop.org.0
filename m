Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 028094965A4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 20:33:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DDB310E197;
	Fri, 21 Jan 2022 19:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE61710E197
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 19:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642793577; x=1674329577;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jIPMO+Q0vCiZeAr+6YZ+l4MeMsDdt41HBTunr3NdKZA=;
 b=emL9Tl0OB39+4UJlI/W6angzVeTB4yAi0ZOi0Tqt/Q5WJg0nyzhSd+QB
 kVfP64gm/sDNcWUJnmMT/27pUfkbIkiLEaRRgdbAbX2BKYTgBJuU6BVO7
 VZ4KkHja3M3bL0ZZLnKXGnN5OOHOiZnMYgQdLDyrxOKMxSXoxIpmSIwSZ
 XIYzNhnafcabzIvh4Nk0kwXaujRNiySm7JNStDzjt6XHnbGMjaTBWq/7A
 Kv9jkgiH3ozTn3VI/HLjXkRfnu5KGZmAc1u7ke07L4MRhIaz0dwD4pIRG
 6mfWAWBEn2H8fIKpitkV6dKK6mWlGIM6Y40U1114MYoR40aI6dkV3WSCT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="244553097"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="244553097"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 11:32:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="626839603"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 11:32:56 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 11:30:23 -0800
Message-Id: <20220121193023.3546246-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rpl-s: Add stepping info
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

Add stepping-substepping info in
accordance to BSpec changes.

Bspec: 53655
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index a4b16b9e2e55..74cb9dadcab9 100644
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
@@ -129,7 +134,11 @@ void intel_step_init(struct drm_i915_private *i915)
 	int revid = INTEL_REVID(i915);
 	struct intel_step_info step = {};
 
-	if (IS_DG2_G10(i915)) {
+
+	if (IS_ADLS_RPLS(i915)) {
+		revids = adls_rpls_revids;
+		size = ARRAY_SIZE(adls_rpls_revids);
+	} else if (IS_DG2_G10(i915)) {
 		revids = dg2_g10_revid_step_tbl;
 		size = ARRAY_SIZE(dg2_g10_revid_step_tbl);
 	} else if (IS_DG2_G11(i915)) {
-- 
2.25.1

