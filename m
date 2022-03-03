Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C9C4CB8C6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 09:25:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F116710EABB;
	Thu,  3 Mar 2022 08:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 623C010EABB
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 08:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646295910; x=1677831910;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=Bhh3EY/qfsnwrl45HvB5llyqxY9LlCivC72E5e0owco=;
 b=liwJI4bdRIoiKl9NB+7Cb2V/cgai5zduvO26xMo7dW6UglEm6mbKEwE3
 dtofE8jbTKHGTzf/xSHDf0+Tmc+FoM1K9utEda5fCPDWvUhpvs5bSEwu6
 A5WCfjcvqiUcLrDj8iDrYWsDTRamTa1jV/+8e8+LtWNI6TMpkO5uTcTy5
 swCEat50YbK8Rksggnw3gUCvz8FH8ZeQjcxTfDcl/HFKT6byDA5q0b5OU
 Q9qkyLGyL+LtLYWMLMQBJtxV6+SCP5tlA7R+aQVt3YfdLAplu+o0klwaE
 fjd3KFfdX8VaSBkmlbayOM2xOhp/1E8B4x+QZNZuVQW/HQ1X3wF65Pj3h g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="278292957"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="278292957"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 00:24:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="545782047"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2022 00:24:50 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 16:38:02 +0800
Message-Id: <20220303083802.5071-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220301050141.12203-1-shawn.c.lee@intel.com>
References: <20220301050141.12203-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v2] drm/i915: update new TMDS clock setting defined by
 VBT
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

VBT 249 update to support more TMDS clock rate 3.00G, 3.40G
and 5.94G. Refer to this new definition to configure max
TMDS clock rate for HDMI driver.

BSpec: 20124

v2: new subject

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 6 ++++++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 3 +++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 40b5e7ed12c2..a559a1914588 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1955,6 +1955,12 @@ static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_data *devd
 		fallthrough;
 	case HDMI_MAX_DATA_RATE_PLATFORM:
 		return 0;
+	case HDMI_MAX_DATA_RATE_594:
+		return 594000;
+	case HDMI_MAX_DATA_RATE_340:
+		return 340000;
+	case HDMI_MAX_DATA_RATE_300:
+		return 300000;
 	case HDMI_MAX_DATA_RATE_297:
 		return 297000;
 	case HDMI_MAX_DATA_RATE_165:
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index b9397d9363c5..e0508990df48 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -289,6 +289,9 @@ struct bdb_general_features {
 #define HDMI_MAX_DATA_RATE_PLATFORM	0			/* 204 */
 #define HDMI_MAX_DATA_RATE_297		1			/* 204 */
 #define HDMI_MAX_DATA_RATE_165		2			/* 204 */
+#define HDMI_MAX_DATA_RATE_594		3			/* 249 */
+#define HDMI_MAX_DATA_RATE_340		4			/* 249 */
+#define HDMI_MAX_DATA_RATE_300		5			/* 249 */
 
 #define LEGACY_CHILD_DEVICE_CONFIG_SIZE		33
 
-- 
2.17.1

