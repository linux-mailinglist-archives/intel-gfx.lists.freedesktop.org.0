Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF52988073
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:36:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A4810EC6A;
	Fri, 27 Sep 2024 08:36:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P79JjCiS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F47D10EC5F;
 Fri, 27 Sep 2024 08:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727426209; x=1758962209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P52R4SD5Fi/AfTtte9RUU9QzZB1KVGjS+Hf3IpquhZU=;
 b=P79JjCiSu3UaR9CcxMcuZHoWFDQEFiA2ygk946CH2ByLEpqbBgmTq7b6
 ixpForAHEX4K0uQ42WwolosLdnVHKpecfpCzlYciTSKCby8IAPWvenVlx
 Ts8To20qoRMZDKx47y6838aAAf/JQbFJ2m0X0qx10Rh55iEYtoFyYPtRj
 l8VGue8YqWWwz3zjKoTCvLV35QE3RnaNFdYrGjs3xdDsDsu+DPKqCqX0M
 yamnDl9U7F1gQVO9NfilymO3snHce3pru5vipO9N57b92ijh7Q52Xk6+/
 iYFx7sma7xHcHYFCxyNe0vCfQaVTNIFNRAXaENi3vkb5j6qaJ1f7oJU+O g==;
X-CSE-ConnectionGUID: JwvWttQZSJaqI3axWef69g==
X-CSE-MsgGUID: v3z2ygvPSFq4yTPOHJ8QdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="51977622"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="51977622"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:36:49 -0700
X-CSE-ConnectionGUID: aXAOZ/uYSxWjeqnpgeCGmg==
X-CSE-MsgGUID: u/Y2fvx1TYSTAglaaLsQdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77409392"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:36:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 07/17] drm/i915/display: Add macro HAS_ULTRAJOINER()
Date: Fri, 27 Sep 2024 14:08:21 +0530
Message-ID: <20240927083831.3913645-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add macro to check if platform supports Ultrajoiner.

v2:
-Use check for DISPLAY_VER >= 20, and add bmg as a special case. (Ville)
-Add check for HAS_DSC. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 6a5bee59e6aa..220cca6333ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -154,6 +154,9 @@ enum intel_display_subplatform {
 #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
 					  BIT(trans)) != 0)
 #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
+#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) >= 20 || \
+					  (IS_DGFX(i915) && DISPLAY_VER(i915) == 14)) && \
+					 HAS_DSC(i915))
 #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
 #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
 #define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
-- 
2.45.2

