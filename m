Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B13A66E07
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 09:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D27E10E1F4;
	Tue, 18 Mar 2025 08:21:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M6K6CeIS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321BE10E1F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Mar 2025 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742286085; x=1773822085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I7qIQZa8Wd9z9BzHYDqoO8cep0peOeF6Kw1ohcVsclU=;
 b=M6K6CeIStEMNcEmpLmgbqY/tn2Rt1C5Yeopciitw4Z/UCn7oV+Qqxt+n
 miAglVbS+CCqf5c3yN00myMtD/oTDtI0TnHlD7UeRsMQTIp/l56bY5uIJ
 KwcFGUOmxsL9z8dXTySNgbgXPKx96vCLzu73drkxFGxSq19hPyUJ9HKZ4
 nDdj7uD0sOIKXpxI82KZefxg57yiZsOpjU5P2nisMYHI27fkiB6AGOdfG
 WlBhoqRhyHi3w7/WafQFi164a/MFDxS71vhiL2TkI6WAmnUGhefALxhq5
 m6Vp9JmDA4ICkozUTx6UVRAX6EV5MDH222HyEZoFNxMCZnZESmVkizALm A==;
X-CSE-ConnectionGUID: fZbeHOrET+WPGb1wJrtcyg==
X-CSE-MsgGUID: zKYb9aMTQ1S83lspWzgKkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="54799563"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="54799563"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 01:21:25 -0700
X-CSE-ConnectionGUID: DpxFrO9TRQWlNFZs2dtiBQ==
X-CSE-MsgGUID: wSR4Cvb5S0WcJw/ZWIsxSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122686648"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa007.jf.intel.com with ESMTP; 18 Mar 2025 01:21:23 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH] drm/i915/display: Read panel replay source status through
 PSR2 status register
Date: Tue, 18 Mar 2025 13:28:59 +0530
Message-Id: <20250318075859.2638954-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PTL onwards get panel replay status from PSR2 status register
instead of SRD status.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4e938bad808c..fb2cc56727af 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3634,8 +3634,8 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 	const char *status = "unknown";
 	u32 val, status_val;
 
-	if (intel_dp_is_edp(intel_dp) && (intel_dp->psr.sel_update_enabled ||
-					  intel_dp->psr.panel_replay_enabled)) {
+	if ((intel_dp_is_edp(intel_dp) || DISPLAY_VER(display) >= 30) &&
+	    (intel_dp->psr.sel_update_enabled || intel_dp->psr.panel_replay_enabled)) {
 		static const char * const live_status[] = {
 			"IDLE",
 			"CAPTURE",
-- 
2.29.0

