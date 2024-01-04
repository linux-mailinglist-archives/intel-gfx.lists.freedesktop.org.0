Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A348247A8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 18:45:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2014110E522;
	Thu,  4 Jan 2024 17:45:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D62D10E51C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 17:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704390325; x=1735926325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AFKqCxwfqh6jAJgqSnpr068sWuoUiQfZPICMw4+FNmg=;
 b=BuvZgToidmiMdAj3WGDJQ43pvwP83OHCqYkD94f19qd1HjHJmEPoPHrC
 XPVj+qgVLeKVoJG0nU3laCTPXDlRvbkkhqiEdodxslTPjv1/MD9s1WPg0
 KyEX2+wSs7mSGHS97CCKPurVnyDQPhb4mMVCizrN2Z4iwk8y7yotlnFWq
 3E3IU7bqmSwWCpQkzDS7ogB6i0F9Fe3TMxN4ENiFpPxvLrgHVLDbZqAJn
 ajqU+/qgMSVHCGFSqJ+d32lI5ggF2AF5OQzWifFZdta4RqXZI0JGcBISA
 ka3XzuqYIbRAbW6iMizENhfUTB9RUwfGdVnJedGpww5XOmmBpHRllGyFg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4093851"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4093851"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:44:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="923988800"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="923988800"
Received: from pdelarag-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.32])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:43:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/5] drm/i915/dmc: use DISPLAY_VER instead of GRAPHICS_VER
Date: Thu,  4 Jan 2024 19:43:47 +0200
Message-Id: <20240104174350.823605-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104174350.823605-1-jani.nikula@intel.com>
References: <20240104174350.823605-1-jani.nikula@intel.com>
MIME-Version: 1.0
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display	code should not	care about graphics version.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index b70502586ab9..835781624482 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1158,7 +1158,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 		   str_yes_no(intel_dmc_has_payload(i915)));
 	seq_printf(m, "path: %s\n", dmc ? dmc->fw_path : "N/A");
 	seq_printf(m, "Pipe A fw needed: %s\n",
-		   str_yes_no(GRAPHICS_VER(i915) >= 12));
+		   str_yes_no(DISPLAY_VER(i915) >= 12));
 	seq_printf(m, "Pipe A fw loaded: %s\n",
 		   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEA)));
 	seq_printf(m, "Pipe B fw needed: %s\n",
-- 
2.39.2

