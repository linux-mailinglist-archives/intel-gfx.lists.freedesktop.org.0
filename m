Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B621C8688A9
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 06:34:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2D210F01A;
	Tue, 27 Feb 2024 05:34:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="npXuBxH0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 772CD10F0AD;
 Tue, 27 Feb 2024 05:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709012044; x=1740548044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FFiwHv/v+R6EjHJr9nnYSxGEHkKmliAuTDqqI3jRfl8=;
 b=npXuBxH0xkMtiij8El85NH/RzwLirw6a+gZJOc92Jk7p32QqBpCaMBv2
 n8DzPQQooTZGgHOyPrvNVR7gK+sAG13s06+AbUVtivyvOfmP032Hb8hVe
 l4XF3pPhldT0TnOEbA5+7bokz1W06IKV/pgZroQ25NgwbYMJ0+QAJ0rYP
 KFefZeWd8WRXu350F0FFglyjj9BnxlLl4sm3WTD1R4ruvGguZWEegQOFm
 85kL3MEMxPSbAt8C5slluGEhcUw8F4dgD6mpmH1zIMTF65Rhs+cCrgKkm
 s9xL40pPAgfy/X9UQ/I5w6k/wNtZfdLrSJIAfyJ8gBx4zUIvrzPG4hKFt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3182899"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="3182899"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 21:34:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6857582"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 26 Feb 2024 21:34:02 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/4] drm/i915/hdcp: Move intel_hdcp_gsc_message def away from
 header file
Date: Tue, 27 Feb 2024 11:02:01 +0530
Message-ID: <20240227053204.1748920-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240227053204.1748920-1-suraj.kandpal@intel.com>
References: <20240227053204.1748920-1-suraj.kandpal@intel.com>
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

Move intel_hdcp_gsc_message definition into intel_hdcp_gsc.h
so that intel_hdcp_gsc_message can be redefined for xe as needed.

--v2
-Correct commit message to reflect what patch is actually doing [Arun]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h | 7 +------
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 302bff75b06c..35823e1f65d6 100644
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
2.43.2

