Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCC697F02E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4570B10E460;
	Mon, 23 Sep 2024 18:12:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ERphGvgN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2208710E44C;
 Mon, 23 Sep 2024 18:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115120; x=1758651120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yvyY76OaLsacnB97aKHgVt1AlF8bV+sjCAYDzmfhDi4=;
 b=ERphGvgNLeioSRRUwpiN8BZ40xhBL3fCR7Lt7unztGNu2tjKLM/IYsMN
 ZFCF8b4+boa/1uKM+W9NJv8wxmhfhZqAov5UctN4le4uu5wGu6xsico/K
 up9KiCzAjlrgdf7wFCckvC71MtpPBmd4plOchexcJtXwWLNPI1NAfuahq
 Oce5Wk6xR2DLZlIjSLyft54pclhGOWcqCb1+akuQiib/sR5Vg3Lw5B5tW
 MS93EqZ33q5Fb0/Ug6vH0Ayhyl1CPC0m0D84RCxeDdP3vTB+5sqqsdWt8
 xYlF4coS2MjwBxB0mZWmp86Gr1s28NC/E+oqcVjjcnCeyRbPB3AA+ReQZ Q==;
X-CSE-ConnectionGUID: qaPjk/i7T6uSL+qhKt0l1g==
X-CSE-MsgGUID: B0/0DWQfTfawB0p6Ua8Fpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866252"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866252"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:59 -0700
X-CSE-ConnectionGUID: ycrPwrJPQN6oxJMspswhMw==
X-CSE-MsgGUID: RFXGjDgzSS2BelqQSCFLTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734309"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 08/16] drm/i915/display: Add macro HAS_ULTRAJOINER()
Date: Mon, 23 Sep 2024 23:43:28 +0530
Message-ID: <20240923181336.3303940-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
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

Add macro to check if platform supports Ultrajoiner.

v2:
-Use check for DISPLAY_VER >= 20, and add bmg as a special case. (Ville)
-Add check for HAS_DSC. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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

