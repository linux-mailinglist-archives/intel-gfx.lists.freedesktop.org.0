Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 738D87DF6D5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEAC810E0BD;
	Thu,  2 Nov 2023 15:46:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D63510E0BD
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698939989; x=1730475989;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lqsFx4ffxbZ068ibxNIdz03fOlIVyt/civFO8dr5M/c=;
 b=le84A8V3+sDlvMowCcEYLHldCTMKRbhKD6MpdVRwMHVdnXBM6lJBC6e4
 TV5a2bvYhdfcJo4V360v9UJ6+abGXA/qJTrAsVwdDDSpoYDlt6IcdUFm7
 2dzxIqwT/kejhzraUWjYc8FQ8F/Aq8exsIsPNlbbYht1urbwII3//1Wab
 ytB2AOWlt+JjT8H2PjB1l042PP3YfyLrWk5QbjZSWopcK8ro6cARb6zmn
 xbSKXO9EMR4D2qi9Mj/ncXImDnr5yVzAsrjyKrwDhTWwJ51WefAGfvusy
 nqbLPNm4LAyk+2c8g4E7mnjfkdZMpHH8ZQwDvaunAlE9J9Stsdy29gkmM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="455222646"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="455222646"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:46:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="2466133"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:46:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:46:22 +0200
Message-Id: <20231102154623.2288054-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: use PIPE_CONF_CHECK_BOOL() for
 bool members
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

Don't treat bools as integers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 49ded4e32883..268c16ec9d00 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5206,8 +5206,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_QUIRK(quirk) \
 	((current_config->quirks | pipe_config->quirks) & (quirk))
 
-	PIPE_CONF_CHECK_I(hw.enable);
-	PIPE_CONF_CHECK_I(hw.active);
+	PIPE_CONF_CHECK_BOOL(hw.enable);
+	PIPE_CONF_CHECK_BOOL(hw.active);
 
 	PIPE_CONF_CHECK_I(cpu_transcoder);
 	PIPE_CONF_CHECK_I(mst_master_transcoder);
@@ -5414,8 +5414,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(dsc.config.second_line_bpg_offset);
 	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
 
-	PIPE_CONF_CHECK_I(dsc.compression_enable);
-	PIPE_CONF_CHECK_I(dsc.dsc_split);
+	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
+	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
-- 
2.39.2

