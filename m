Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CECA9B8AA
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BEB210E84D;
	Thu, 24 Apr 2025 20:01:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OPPv8Gch";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C159A10E812;
 Thu, 24 Apr 2025 20:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524915; x=1777060915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gtOGEmAFx/XwG4bQFqxFNuQbP8HexiRz++ShXKPwxzo=;
 b=OPPv8GchELpGvxZ4ZMAxGX6iqU+2Bo0w0b1gLG+uiEzzGLCiqy++TRWw
 JAArN7yUn4Dg13BiKKWCzcMDSljv6NDb09mTPY2uelP/jN7IU2OZvO4eD
 mXySOO8FyPlodT+eTEDTCzXhz04x09X2mp9ye6+yg3RXo7RY5da4HvJqj
 N4g15Ds44qy2kyxwuogzV2ESZaVIisdKS5Km80Ym//Y5soQ2b4uKeFFSF
 09/KwKeu5u9/CXMVOXc+5phO3AUL1NdB0v6rdJaowVmjBNCCn5GJBkFr4
 5Trn2/+jmzZUBk2zjddsNkqoSITaw8XrB1IePeogTbtEGBHLKRHysLvY8 A==;
X-CSE-ConnectionGUID: A0zgotv8QrGcN/vVfGEyAA==
X-CSE-MsgGUID: uvcI/FxlTa2IKOJM39OMtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543385"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543385"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:01:55 -0700
X-CSE-ConnectionGUID: cDQfiCY6QoqqToQDX2Lzxw==
X-CSE-MsgGUID: VllypiL0T0GGG+8ArHFNfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="137788241"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:01:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 01/10] drm/i915/hdcp: remove duplicate declarations
Date: Thu, 24 Apr 2025 23:01:33 +0300
Message-Id: <f300d7cdb2af681291df938194f575f05c2c41bc.1745524803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745524803.git.jani.nikula@intel.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_hdcp_gsc_msg_send() and intel_hdcp_gsc_check_status() are declared
in intel_hdcp_gsc.h.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c | 1 +
 drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h | 5 -----
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index 129104fa9b16..d4620b54beba 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -8,6 +8,7 @@
 
 #include "i915_drv.h"
 #include "intel_display_types.h"
+#include "intel_hdcp_gsc.h"
 #include "intel_hdcp_gsc_message.h"
 
 int
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
index 2d597f27e931..1af2f7c745fd 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
@@ -9,7 +9,6 @@
 #include <linux/types.h>
 
 struct device;
-struct drm_i915_private;
 struct hdcp_port_data;
 struct hdcp2_ake_init;
 struct hdcp2_ake_send_cert;
@@ -24,10 +23,6 @@ struct hdcp2_rep_send_ack;
 struct hdcp2_rep_stream_ready;
 struct intel_display;
 
-ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
-				size_t msg_in_len, u8 *msg_out,
-				size_t msg_out_len);
-bool intel_hdcp_gsc_check_status(struct intel_display *display);
 int
 intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 				struct hdcp2_ake_init *ake_data);
-- 
2.39.5

