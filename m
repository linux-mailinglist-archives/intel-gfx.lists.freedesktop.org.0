Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C99E687CD5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 13:05:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C1710E4FF;
	Thu,  2 Feb 2023 12:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8123010E4FF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 12:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675339515; x=1706875515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yIEBw/rAPyVIalYZOjh/uKwJDDwc3mKSph2t0H7xWJ0=;
 b=VuvK3/W7lcFN4zo2uCvjnAxpLim3FN1Gmxww6txeYb6bGiA4xQQQ25wN
 1xJt8pGUemZ+1AOnSsU+vvPRSPdCwW2kd1H4fnVqGTdvbV+U0Ei1vB1iU
 xZCY2NhY7bI3DKMC0DXJbHMZop35Z24Bn2vHeYV6QN0zzSCfe4jXcHpZk
 8gQVQNkwYr/zXBRzNmm3eQQmnFIVg83TR2WWtxgmdbIPmJ7kAuDHD/pkl
 2N+LxENxfBFptb1lwvUrRQbbqrzINmy10VB0Z09xmRZPo1SkXhdI9uCOr
 vb+Lx3EvBQG0XeK7byJA4N2QGCEH/6MLU96So1QNiXV34lEK4fV2GIO74 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308767237"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308767237"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:05:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="615255520"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="615255520"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:05:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 14:04:51 +0200
Message-Id: <311213ce328575a95d793a219d4dac7d947086cc.1675339447.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675339447.git.jani.nikula@intel.com>
References: <cover.1675339447.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/dmc: add is_valid_dmc_id() and use
 it
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a name to the dmc id validity check.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 4cc62b040518..ab0ad8e3e620 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -252,6 +252,11 @@ struct stepping_info {
 #define for_each_dmc_id(__dmc_id) \
 	for ((__dmc_id) = DMC_FW_MAIN; (__dmc_id) < DMC_FW_MAX; (__dmc_id)++)
 
+static bool is_valid_dmc_id(enum intel_dmc_id dmc_id)
+{
+	return dmc_id >= DMC_FW_MAIN && dmc_id < DMC_FW_MAX;
+}
+
 static bool has_dmc_id_fw(struct drm_i915_private *i915, enum intel_dmc_id dmc_id)
 {
 	return i915->display.dmc.dmc_info[dmc_id].payload;
@@ -549,7 +554,7 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
 	for (i = 0; i < num_entries; i++) {
 		dmc_id = package_ver <= 1 ? DMC_FW_MAIN : fw_info[i].dmc_id;
 
-		if (dmc_id >= DMC_FW_MAX) {
+		if (!is_valid_dmc_id(dmc_id)) {
 			drm_dbg(&i915->drm, "Unsupported firmware id: %u\n", dmc_id);
 			continue;
 		}
-- 
2.34.1

