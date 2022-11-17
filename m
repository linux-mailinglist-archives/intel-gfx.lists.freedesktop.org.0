Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A04CF62E724
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 22:41:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C393B10E694;
	Thu, 17 Nov 2022 21:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B74810E694
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 21:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668721296; x=1700257296;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uYqKMYu+Drk4OEVugCB8E6NBwL/9COwcgj0j8h9LKzQ=;
 b=h1e2UhfxU1sbgW9EZo6At3o60/2v7B/m2mw+/450cXeFZ3mo5hSwuHBY
 nDMp1eNcdecHMfTz0oKqiEpv9gj520jNgVvgmXQ++3YoahAxzZ5tBz4NW
 gh0WAhy88Dw+VBx1ZaC3J78QXdGAG8XklJG0p3d8PgjZBQEAuBYwnkMIC
 M/dhxA4V0gdwUSw8PN+U2udE/GnNWnqxkOrt/h5TvQJlkLgKIiEZgA2ax
 4CYLudyuNekqaqPrgJGaOfa26YKhM+AoSYpWMDIUpqbn4lXNq3mM09cJI
 QuJv32tiPUOKIzXJxXDZ4wu/Ee1WpJlHnV8WBbSufKul/ynJ5ProUAgHd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="377248800"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="377248800"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 13:41:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="708789776"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="708789776"
Received: from pasafier-mobl.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.212.77.208])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 13:41:35 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Nov 2022 13:41:32 -0800
Message-Id: <20221117214132.152061-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rpl-p: Add stepping info
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

Add stepping-substepping info in accordance to bpsec changes.

Bspec: 55376

Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 75d7a86c60c07..84a6fe736a3b5 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -131,6 +131,10 @@ static const struct intel_step_info adls_rpls_revids[] = {
 	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
 };
 
+static const struct intel_step_info adlp_rplp_revids[] = {
+	[0x4] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_E0 },
+};
+
 static const struct intel_step_info adlp_n_revids[] = {
 	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_D0 },
 };
@@ -187,6 +191,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ADLP_N(i915)) {
 		revids = adlp_n_revids;
 		size = ARRAY_SIZE(adlp_n_revids);
+	} else if (IS_ADLP_RPLP(i915)) {
+		revids = adlp_rplp_revids;
+		size = ARRAY_SIZE(adlp_rplp_revids);
 	} else if (IS_ALDERLAKE_P(i915)) {
 		revids = adlp_revids;
 		size = ARRAY_SIZE(adlp_revids);
-- 
2.38.1

