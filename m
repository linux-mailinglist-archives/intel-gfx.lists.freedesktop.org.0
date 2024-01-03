Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DB082280B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 06:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8640A10E048;
	Wed,  3 Jan 2024 05:20:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9587910E048
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 05:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704259213; x=1735795213;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T0eFt/nhB+BU5LJanwlfBscQEF0oIr8vOt69H9MkoHI=;
 b=jGUYyBBEjNcQhFb3s5YtT8bJkypnDp9qigQgTCHiHAU6EDh5nuur+uXn
 lWnCjPYuK6DyjCw8RVkhsFsTo0K9C7L9sH7BtkQV/cKJv/p7qENpqz0S1
 IwGjhpnvMqQBG9ItlGXURCQSFTFP+RJoIixFcEXFJKOw2lCUkizjftnU8
 BfvCeryeBzDMrARiX3hw2kYtEpbOzfJYBkL58+E0fXufA9A3kqHQxBgtN
 xsmuDAaDqV4YuqpVMfdQ5noWJFB+69uB8+ORrYV74wjMJS1QfmNmqw0aZ
 9WGMvja340vefo0urV8zolqiAlxC6OavAUEBe02nvDKlvudc/ov/Nswaf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="10351961"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="10351961"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 21:20:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="898769816"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="898769816"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jan 2024 21:20:09 -0800
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [V2] drm/i915: Add workaround 14019877138
Date: Wed,  3 Jan 2024 11:01:11 +0530
Message-Id: <20240103053111.763172-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WA 14019877138 needed for Graphics 12.70/71 both

V2(Jani):
  - Use drm/i915

Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3eacbc50caf8..270b56fc85e2 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -820,6 +820,9 @@ static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_18019271663 */
 	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
+
+	/* Wa_14019877138 */
+	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
-- 
2.25.1

