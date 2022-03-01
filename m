Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C444C82A6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 05:48:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D787E10E50A;
	Tue,  1 Mar 2022 04:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0FDE10E50A
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 04:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646110122; x=1677646122;
 h=from:to:cc:subject:date:message-id;
 bh=ZDhELL6udtnxxcm1AJJmrWDAGcPCAb6IzLaTpYUzTEw=;
 b=h1XM4v2qGsZKAl5H3EdC2KxErU71iJ3hJwghcPm5vgcinMF3/wywwibJ
 izm8mFcldg859637Rp0PBe0GNbTFI6CpQD7KnnMq+9+D0ol0O1U+wbRpa
 qugzPzWYDdlbv+OgigDEmjSSIJn5FfA0KSDQqEUjtEZvwGw3pGFp4cZfO
 /eZjsiH6UTOCoLboxblh9kVy0MUHKHy06l1N4l2d5UY7XLJqjnggMdn8c
 DS8ewZWbo8Csyf8vqc9sYA+Ti+wPpHzaieMswuU7AyUgFDYQFhuUXhfEH
 jktI3O+DmTn+SJt60dl/4xqdW6vKhpieuozGMP8wJhHHz6l2ULLbZFigG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="339487917"
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="339487917"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 20:48:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="608686422"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga004.fm.intel.com with ESMTP; 28 Feb 2022 20:48:41 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 13:01:41 +0800
Message-Id: <20220301050141.12203-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: add more TMDS clock rate supported by
 HDMI driver
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

