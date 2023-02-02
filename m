Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AAD687CD4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 13:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2B7910E4F4;
	Thu,  2 Feb 2023 12:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E948210E4F4
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 12:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675339509; x=1706875509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/cZArHpi4bMQzjxYaBSlykuw5cf76NR5VCoTRiiKNOM=;
 b=ZJa25gt1nhER1gcPHk7Szk0qD2yFZkZVCf5+0HFKfP6yqbO4U7/rmSAY
 b5xzQiitZI6iBQoSI9TcMiGBePK/L5E5Oai7fJ4Mrgees0FyTTaRWJJBS
 gCEY7eFQpt4cB4Jsyfm6BXUpPNqCk1jM0gOeSOj45AUSJ9ZTQNz0c8Wj4
 BeWp3bt0ru+MQz/EArjvlaZgAj1ruqlf89quVI2fgbJ77LPdLmgVaX5K3
 M4Fu+IxCa2Mm7XfMWHgUOpht0O+yL1RQJ/aGQTyw6IHpQVbeCa+qD63gi
 I9Ksd4dZOaVp6T4l8R70WTtu0/RQLd4L2DF0C+q6Ggis58Z9Wfaa3irNp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308767221"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308767221"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:05:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="695756760"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="695756760"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:05:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 14:04:50 +0200
Message-Id: <b4e1c862687f79861a5fa4bfa6797ecda2136fab.1675339447.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675339447.git.jani.nikula@intel.com>
References: <cover.1675339447.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/dmc: remove unnecessary dmc_id
 validity check
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

The dmc_id comes from for_each_dmc_id() in parse_dmc_fw() ->
parse_dmc_fw_header() -> dmc_mmio_addr_sanity_check(). It's valid by
definition.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 51109cb1d1b5..4cc62b040518 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -576,11 +576,6 @@ static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc,
 	u32 start_range, end_range;
 	int i;
 
-	if (dmc_id >= DMC_FW_MAX) {
-		drm_warn(&i915->drm, "Unsupported firmware id %u\n", dmc_id);
-		return false;
-	}
-
 	if (header_ver == 1) {
 		start_range = DMC_MMIO_START_RANGE;
 		end_range = DMC_MMIO_END_RANGE;
-- 
2.34.1

