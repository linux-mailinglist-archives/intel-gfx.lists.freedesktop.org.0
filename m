Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2425699CE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 07:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CD0A1123AD;
	Thu,  7 Jul 2022 05:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F0881123AD
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 05:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657171700; x=1688707700;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WGExE9RlMLRiYIFoFClHvxH0aD7H7BjDqjkHVerIwvc=;
 b=iSA5dGacV3c7hvAH+YcuZOIy67fTj7LreZ3kx7nMRbruHew17BFQJgvf
 gHGyiEFEOz7uVAlmGG0qxkeWGDbl5sYeo9gtNeBkzvIcoLbrm/RaCs39/
 xf1CahbIpsQ41xJH7r+ps2NPQmK64zkXWspMrhqvUOj3BfAZj2VsafPBO
 duMErWnfdP5gatRnLRUcgw9r7bgyBX1EAXdpJjCNUKxwix0muv6XEsKt5
 7bvucFTlMnrUt8bdEyOCnx8feii8nidwtOeNw2YKMFl9hy8b5STWnfR7x
 WuYAqlRnGiVSSbQGbHXfuJ0P50YkIXw8tW/XDljpq0qRXpbNIYASjpRXX g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="284675064"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="284675064"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 22:28:16 -0700
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="568367791"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 22:28:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Jul 2022 10:57:12 +0530
Message-Id: <20220707052712.2033748-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require HDMI2.1
 FRL
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

HDMI2.1 requires some higher resolution video modes to be enumerated
only if HDMI2.1 Fixed Rate Link (FRL) is supported.
Current platforms do not support FRL transmission so prune modes
that require HDMI2.1 FRL.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ebd91aa69dd2..93c00b61795f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1974,6 +1974,20 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 	return status;
 }
 
+/*
+ * HDMI2.1 requires higher resolution modes like 8k60, 4K120 to be
+ * enumerated only if FRL is supported. Platforms not supporting FRL
+ * must prune these modes.
+ */
+static bool
+hdmi21_frl_quirk(int dotclock, bool frl_supported)
+{
+	if (dotclock >= 600000 && !frl_supported)
+		return true;
+
+	return false;
+}
+
 static enum drm_mode_status
 intel_hdmi_mode_valid(struct drm_connector *connector,
 		      struct drm_display_mode *mode)
@@ -2001,6 +2015,13 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 		clock *= 2;
 	}
 
+	/*
+	 * Current Platforms do not support HDMI2.1 FRL mode of transmission,
+	 * so prune the modes that require FRL.
+	 */
+	if (hdmi21_frl_quirk(clock, false))
+		return MODE_BAD;
+
 	ycbcr_420_only = drm_mode_is_420_only(&connector->display_info, mode);
 
 	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, ycbcr_420_only);
-- 
2.25.1

