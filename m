Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C659068DA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A57A610E9E7;
	Thu, 13 Jun 2024 09:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="enKoGIJ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC8D10E9E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271193; x=1749807193;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zr4bMTiYhDMEBckt6KW6nJPqzTIfMBdCkGJ2bZIFfnE=;
 b=enKoGIJ5xcwMTzUHhdLT6Xqvyq/W1hLWZlc6rPtfgVy85cVr4OPPnpPP
 CrGWjnaOj7VHKOlGIyEq9iTImOC07FUb8qDhI8OzC1m6ps88xsZnwYwoT
 gKR8klW8Zr7smQtiMrOoP1A6SKMugTj/5uMXvKgzs+D/b8Yv/DLFgBL/V
 hg1lHLORC9eaXMX0a68zgT+QkJ5YXvmPvaw8S3bfD9Bs/lAzOq4DqDLak
 JfQWAxw1USI1CQl0XyQcgbYPScEjtohudwQzETNw2PB1aeJhd7RBN+M6v
 TrRNZCEvFKxDWRe0Q7kfBbsCRog/F2LEoej4wjiyWX6lmXxkfZDBnWKRG Q==;
X-CSE-ConnectionGUID: R24e1rCzRBmf6XG5h8CsXw==
X-CSE-MsgGUID: CYGXtnnMSBe1uamqHEeemw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802513"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802513"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:13 -0700
X-CSE-ConnectionGUID: WiyELW9fSeyS9UNhAnFCmQ==
X-CSE-MsgGUID: uT9gIIP0SbuCZaLXJIqQlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523420"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:12 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 13/20] drm/i915/psr: Check panel Early Transport capability
 for eDP PR
Date: Thu, 13 Jun 2024 12:32:32 +0300
Message-Id: <20240613093239.1293629-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Our HW doesn't support panel replay without Early Transport on eDP.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7e1cbcc2e58f..946db0e60966 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -571,11 +571,18 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (intel_dp_is_edp(intel_dp) &&
-	    (!intel_alpm_aux_less_wake_supported(intel_dp))) {
-		drm_dbg_kms(&i915->drm,
-			    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
-		return;
+	if (intel_dp_is_edp(intel_dp)) {
+		if (!intel_alpm_aux_less_wake_supported(intel_dp)) {
+			drm_dbg_kms(&i915->drm,
+				    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
+			return;
+		}
+
+		if (!(intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)) {
+			drm_dbg_kms(&i915->drm,
+				    "Panel doesn't support early transport, eDP Panel Replay not possible\n");
+			return;
+		}
 	}
 
 	intel_dp->psr.sink_panel_replay_support = true;
-- 
2.34.1

