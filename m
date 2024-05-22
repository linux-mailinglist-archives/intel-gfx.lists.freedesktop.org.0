Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D71B68CC5A2
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98A810E427;
	Wed, 22 May 2024 17:34:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvxH0OTG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E9410E1C7;
 Wed, 22 May 2024 17:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399285; x=1747935285;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dsdCXZVo5dDZnXKWIb8GoEarsCHcPxhJO89VB9NiTE4=;
 b=HvxH0OTGSLoCp1qNIwI/J2Dd6RSiqaDEMxg3nhtSTIeYeDbVxTVVbYFs
 g2mAxdBGy5YD0+y41m/wAMjO1TYgmuj1/hJbwbwLKi+xyOQldTq876ATw
 SoRl4PCQlUqgYIzwfXCZQph4lt4t91FfrAp0ghQc6yJLmVMsZp3s98kpl
 GpMI4479KBiFJxTOI1s/q1tF3O7OEyaN2c106ej6IzgFRLXPRIFX1shgw
 oD9kQkWjM3KsR2wrqzZaKtsTRD34S9f92f4RkcKayr6PWWmqJG0U7vmCs
 gpIjdBQ6zjVRmOfuTh89asM0A2aU+hLmq0OPwoJl3v8vHN0e7CM5mBvIw Q==;
X-CSE-ConnectionGUID: Zob6JYNPRTWVptZ5Bc2utw==
X-CSE-MsgGUID: oRySzi5+T/qCupqvXlihyQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12611460"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12611460"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:45 -0700
X-CSE-ConnectionGUID: H+Hmb9kJRnunZK4DsqS4GQ==
X-CSE-MsgGUID: j3C3Kr5mRQ+A3zOlYxFjyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33475061"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 10/10] drm/i915/display: add probe message
Date: Wed, 22 May 2024 20:33:47 +0300
Message-Id: <f9a4d015a2981ace2ef5b40b189efeaf6b18fb29.1716399081.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
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

Add an info message about which display device was probed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 59b8ca174ef8..5b6dfb5032e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1305,6 +1305,11 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
 		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
 
+	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display version %u.%02u\n",
+		 desc->name, subdesc ? "/" : "", subdesc ? subdesc->name : "",
+		 pdev->device, DISPLAY_RUNTIME_INFO(i915)->ip.ver,
+		 DISPLAY_RUNTIME_INFO(i915)->ip.rel);
+
 	return;
 
 no_display:
-- 
2.39.2

