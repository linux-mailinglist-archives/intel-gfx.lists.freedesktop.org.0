Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9C586010E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 19:22:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBAB10EA14;
	Thu, 22 Feb 2024 18:22:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fr97zmTx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A911310EA14
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 18:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708626172; x=1740162172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zicaIXiCiWUwqlx4LxXmbxEE8hv9XTSqtXqhqFwQdZc=;
 b=fr97zmTx85ovKj82bPxhmpRC98trxFm4C3SPaDquOmpFI0yCCJqW8cTG
 8/zH1CfTlv93/qhYrQBObAfOv5k1+MvVAB/39tgq4TaSiM+3B6A1sbIQ+
 dpkmCiXownpmWDiQAd74yIJwKbiTMXHLl73+iE8zEf5macyErxDEeldiL
 33J1aKv8KUD6cMfCE39Ypt31x4w503hqMsJS9RVCONwmp5c71fdqvtjWi
 1irN3AqeYb/LkLvK06XACtAd8VAAJBUTFJSVII8Ss8xBXewU3VX5nSLHJ
 uFbZfZFKe5mx072b2H3BV3FnNuLvvLV93jsK5gAvjcdSjkjWUUgdCmoQZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2753735"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2753735"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 10:22:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="913567533"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="913567533"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2024 10:22:49 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH] drm/i915/panelreplay: Move out psr_init_dpcd() from
 init_connector()
Date: Thu, 22 Feb 2024 23:38:24 +0530
Message-Id: <20240222180824.3634193-1-animesh.manna@intel.com>
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

Move psr_init_dpcd() from init-connector to connector-detect
function.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 3 +++
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 217196196e50..4553e1f5f1fc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5709,6 +5709,9 @@ intel_dp_detect(struct drm_connector *connector,
 		goto out;
 	}
 
+	if (!intel_dp_is_edp(intel_dp))
+		intel_psr_init_dpcd(intel_dp);
+
 	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
 
 	intel_dp_configure_mst(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 72cadad09db5..6927785fd6ff 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2883,9 +2883,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	if (!(HAS_PSR(dev_priv) || HAS_DP20(dev_priv)))
 		return;
 
-	if (!intel_dp_is_edp(intel_dp))
-		intel_psr_init_dpcd(intel_dp);
-
 	/*
 	 * HSW spec explicitly says PSR is tied to port A.
 	 * BDW+ platforms have a instance of PSR registers per transcoder but
-- 
2.29.0

