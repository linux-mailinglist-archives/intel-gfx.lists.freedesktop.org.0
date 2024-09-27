Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DBB988824
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:21:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2660210ECD9;
	Fri, 27 Sep 2024 15:21:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="daRESU/L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 718F410ECD7;
 Fri, 27 Sep 2024 15:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727450458; x=1758986458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P52R4SD5Fi/AfTtte9RUU9QzZB1KVGjS+Hf3IpquhZU=;
 b=daRESU/LIJEADJ2bx9HBy0vAE/b3Z3PYu+aJGCNu2PH9iKyBy8vtN9f+
 6n17Z/QKppt0TWFtaQzJtRk0zLMtvRCoXYVGcp0egdXQBSlVZ8HotiEZM
 ByO+zOaHh7sMzmi6zmvogtTT6jxCEOfnaJIk2yHeqvaK8piSuixqQrLf7
 SQmXCogiP7Ux5sWOomxlFNP1FXFboOJlT5MtrHcHZvlY7d9JmimBa1mpZ
 5GkvMPG3+eVzC69+DGr1S9NKbXtIDwd7aI0YLrt1pr4Ebepn9cw4FyXkx
 xr2Ioo3V83MUZa4w0p5WDfNy+h9ygXNd329bMIfvOXgFEd4p7o8E5UtL1 Q==;
X-CSE-ConnectionGUID: T+Nwk1TFSnGcorclbcJuwQ==
X-CSE-MsgGUID: AFoVcnOQQn2av2N0c8qOYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="37179733"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="37179733"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:20:58 -0700
X-CSE-ConnectionGUID: tkQEF9oaSsSlbNURm5/+hA==
X-CSE-MsgGUID: Nb0Pna2FSWmSa+JI+AmKXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="95896934"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:20:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 07/17] drm/i915/display: Add macro HAS_ULTRAJOINER()
Date: Fri, 27 Sep 2024 20:52:31 +0530
Message-ID: <20240927152241.4014909-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
References: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
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

