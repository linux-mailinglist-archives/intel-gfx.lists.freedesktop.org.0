Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBAD84BB5D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 17:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C1E112B17;
	Tue,  6 Feb 2024 16:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bTLBGlAR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A351126EA;
 Tue,  6 Feb 2024 16:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707238189; x=1738774189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n48FIy/dkN3piPnJK/veTQ8/V/6PdTE2UpJbM5X4Sv0=;
 b=bTLBGlARigaJDoNhikYfJJ2KOlWUUGGJ8ECGI+XtuddC6fW7//hDkxgU
 /V8x0IDQ3QW5X6bVJc2A7VLMwDRe6ATttt+PauKHtQliIrHa65xAkViYq
 8y8NhpJtwySLi8XVSPm0UsJnR51giOe2ULWSqbSAhimOYVmfIIGymbI3f
 wV3IDvor6+raHrHgA5mUD7SJdun0KL4IonlPEwNnmRDsgklM5USGu3sT1
 vK7MAGJA1ZhkFnLr/7/jZLBmzL3v+ZPWCTaoKaNF6/MAUWojJX0LoOZcA
 VXsGUg6x0858wyzl1FNN9QOHo9C8EW/HYQKZE/EEy1hv7wfsQYfqarTAo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="11525157"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="11525157"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 08:49:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="24309527"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 06 Feb 2024 08:49:45 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com, chaitanya.kumar.borah@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/3] drm/i915/hdcp: Move intel_hdcp_gsc_message def away from
 header file
Date: Tue,  6 Feb 2024 22:17:40 +0530
Message-Id: <20240206164742.1222593-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240206164742.1222593-1-suraj.kandpal@intel.com>
References: <20240206164742.1222593-1-suraj.kandpal@intel.com>
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

Move intel_hdcp_gsc_message definition into intel_hdcp_gsc_message.c
so that intel_hdcp_gsc_message can be redefined for xe as needed.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h | 7 +------
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 18117b789b16..e44f60f00e8b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -13,6 +13,12 @@
 #include "intel_hdcp_gsc.h"
 #include "intel_hdcp_gsc_message.h"
 
+struct intel_hdcp_gsc_message {
+	struct i915_vma *vma;
+	void *hdcp_cmd_in;
+	void *hdcp_cmd_out;
+};
+
 bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
 {
 	return DISPLAY_VER(i915) >= 14;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index eba2057c5a9e..5f610df61cc9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -10,12 +10,7 @@
 #include <linux/types.h>
 
 struct drm_i915_private;
-
-struct intel_hdcp_gsc_message {
-	struct i915_vma *vma;
-	void *hdcp_cmd_in;
-	void *hdcp_cmd_out;
-};
+struct intel_hdcp_gsc_message;
 
 bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
 ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
-- 
2.25.1

