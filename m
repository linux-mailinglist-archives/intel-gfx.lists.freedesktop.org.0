Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 085577FDE6E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 18:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A37210E645;
	Wed, 29 Nov 2023 17:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A9F10E645
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 17:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701279222; x=1732815222;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ituqQ+bAdcn1lCWogAMQpj/wKlFY1PcAeg5RxNAwlUc=;
 b=MRiaxkSc9pJeUFQBNBru7mqb2exeWRUxfy/qhK4uz7yQNOZDzyl/fh4G
 k7PtYUM8odgZDS196xjWQkm/Tjn1Hua1Ycy4Y8JPHNJM7hQ6y3FKTXRYJ
 LAFPS0mxFVzUuh8O8U2Uh95wZEwGByrvQqe2DcLrh79kEX5eJQGnYez9R
 5jmf44yco3lM+E/tx1KJdxTIV6cGjRn76AggRdFHbnUmjFZ8Xam3Ux0+z
 TXqUF1uCPsr87xpgcGk6wGoOJd1AT4IHBY8wH22DZR7+6NvyWpZJPaoYu
 nE9S4WPkUsjfMyUPRy59nqnxGLX7z6UdhaNmeskDBEuAXfpJFAlBFzB2S g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="392943248"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="392943248"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:33:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="10416351"
Received: from dstavrak-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.61])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:33:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Nov 2023 19:33:16 +0200
Message-Id: <20231129173317.1192269-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: use PIPE_CONF_CHECK_BOOL() for
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

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9dc22fc8b3d3..d62cdae7ab6b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5091,8 +5091,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_QUIRK(quirk) \
 	((current_config->quirks | pipe_config->quirks) & (quirk))
 
-	PIPE_CONF_CHECK_I(hw.enable);
-	PIPE_CONF_CHECK_I(hw.active);
+	PIPE_CONF_CHECK_BOOL(hw.enable);
+	PIPE_CONF_CHECK_BOOL(hw.active);
 
 	PIPE_CONF_CHECK_I(cpu_transcoder);
 	PIPE_CONF_CHECK_I(mst_master_transcoder);
@@ -5301,8 +5301,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(dsc.config.second_line_bpg_offset);
 	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
 
-	PIPE_CONF_CHECK_I(dsc.compression_enable);
-	PIPE_CONF_CHECK_I(dsc.dsc_split);
+	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
+	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
-- 
2.39.2

