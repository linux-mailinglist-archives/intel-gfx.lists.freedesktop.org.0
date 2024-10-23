Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C09979ABF4A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A542810E756;
	Wed, 23 Oct 2024 06:50:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LUFjFeTf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52ACC10E757;
 Wed, 23 Oct 2024 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666254; x=1761202254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vgwx+ahHrdEmXNWIGdg5TR9e6SOSsvPMxUbsa6fiK0g=;
 b=LUFjFeTft/JMwaWMLyD0oV1CCAFcB4gH/tCV+GTDPc+KaTonPYzdoaRO
 M91DY62CN2MqnNpIUDGMehx7TQuBC3xwGLUoHw+86+dOhP7dGw4HtiM5q
 f1uqcEe4urTOxPCmpykZm7LqCzT6vsYJqJ8X0JOBCXYkwq3DdB45nxpwY
 rUwjTeGyzy+k5O9oKskdSxVSqOmTJBEQKPtfry1nF+WuMwajDvEEJNLcQ
 pFFhS1p7tzQ45UKDmu3Xoa9Zg9staH9zc6/m3ubw68U/tZmii//FyWnvJ
 mv1hXrTNpqt+j+efzNcrR9coV58eo1QN9W/+bBBvhPDtz+8BhF1JNGElk Q==;
X-CSE-ConnectionGUID: qOBZj/77RV2mZOcyZsE0qA==
X-CSE-MsgGUID: UUTmpEyORgGuMMJagL/4Yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097477"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097477"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:54 -0700
X-CSE-ConnectionGUID: Q6sw8USGTIqQ5GILWbuKlQ==
X-CSE-MsgGUID: XrtN8PrOQxypNodfX50Teg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691557"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 08/16] drm/i915/display: Add macro HAS_PIXEL_REPLICATION
Date: Wed, 23 Oct 2024 12:22:49 +0530
Message-ID: <20241023065257.190035-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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

Add macro for Pixel replication support with DSC.

Bspec: 49259, 68912
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 071a36b51f79..a21b910879df 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -149,6 +149,9 @@ enum intel_display_subplatform {
 #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
+#define HAS_PIXEL_REPLICATION(i915)	(HAS_DSC(i915) && \
+					 (DISPLAY_VER(i915) >= 20 || \
+					  DISPLAY_VER_FULL(i915) == IP_VER(14, 1)))
 #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
 #define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)
-- 
2.45.2

