Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C297846AE1
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 09:40:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A912B10E5D2;
	Fri,  2 Feb 2024 08:40:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f8iq4Unz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C63B10E561;
 Fri,  2 Feb 2024 08:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706863200; x=1738399200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n48FIy/dkN3piPnJK/veTQ8/V/6PdTE2UpJbM5X4Sv0=;
 b=f8iq4Unz/OhTyn9ZvPAoWry21FT3MzVXrQHrQVKyY5jgUswK1g1hkrdh
 1ti4Yb+PZX9/ONeqJP5AXom62CGe/zXlZBHRH0lQoK91hlKQS1A6yEKdr
 0K2GsAlfoo7cyTQvTSjhSdgj2vG0kWzfVLlEUswFfr8XI1k+7li5ytz3u
 jjgvOaMdZrJ8P9+Z9KtL1lazpBrrgXMp3MMXUwoxfQU9bAsKASTNuPuab
 LFDCRlFJNdJPco+L05e+33M80YldrtdEgesN6O1z8kX/FWXIL3UECPuPy
 5k9cotnp3BP5pVp+Jqc+vSpu/8KlXMpAhJ5kBzjL8AxI7IeujvdpBv4TC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="25562481"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="25562481"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:39:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="4635263"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa004.fm.intel.com with ESMTP; 02 Feb 2024 00:39:52 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com, chaitanya.kumar.borah@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/3] drm/i915/hdcp: Move intel_hdcp_gsc_message def away from
 header file
Date: Fri,  2 Feb 2024 14:07:36 +0530
Message-Id: <20240202083737.1088306-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240202083737.1088306-1-suraj.kandpal@intel.com>
References: <20240202083737.1088306-1-suraj.kandpal@intel.com>
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

