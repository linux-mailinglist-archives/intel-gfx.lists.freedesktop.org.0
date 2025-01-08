Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 457F5A05ED0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E561910E125;
	Wed,  8 Jan 2025 14:36:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DaFWrPvK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0731A10E125
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 14:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736346998; x=1767882998;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wMz70q1QaMTelBIAaPGNgWNE8Jjb8VuFq2WkR8doOSE=;
 b=DaFWrPvKRlTbNm5Jf6hmIh7qvHywvBfA9FkY+7WsSm1jOx2EQxVBGLRb
 MRlQo6GMZs52ePIt82uvG86eFH81382RaDSnfMrEAv2pDJ/FAQJZ3FKae
 ao17xoaR8wURdGyyThd30TP5xlBJFioUKziNQtZgwfQ8cfuoXhmvxlnDL
 ALL7JyrXniRe3hXQRTEJGBz0l02IkA31JU8nxL5Bz9WOjlxJXggjRzTLv
 rea1wibCn8hmiEv1lqNyKyeAnnhjd8icR4NxFyCQmGOfg/x0XQR5O0Rl7
 hNTIViSVhqCDNEDSI7scT7RpBD4m0LRDmZzb5JzOH3D8oBpWEe3qkO6WG w==;
X-CSE-ConnectionGUID: M/U5IkChRqelJlIsXhvK6w==
X-CSE-MsgGUID: G7I4HZzWSqaobDysgrLM8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47932266"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="47932266"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:36:38 -0800
X-CSE-ConnectionGUID: y+A97VllRYG8r1Ou8tmp9g==
X-CSE-MsgGUID: qR/EonNfSlaQOWLRAoymGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103618371"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orviesa007.jf.intel.com with ESMTP; 08 Jan 2025 06:36:37 -0800
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH] drm/i915/bios: Define eDP pipe joiner feature for VBT
Date: Wed,  8 Jan 2025 20:06:38 +0530
Message-Id: <20250108143638.1125237-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
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

There is new field "edp pipe joiner feature" size of 2 bytes in the
eDP VBT block. Each bit represent panel number to be enable/disable
for this feature.

Default value:
For ARL platform, 0x0000 to keep the feature disabled by default.
Xe3lpd onwards, 0xFFFF to keep the feature enable by default by VBT.

Bspec: 20142
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index e9b809568cd4..2fdad5170896 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -1090,6 +1090,7 @@ struct bdb_edp {
 	u16 edp_dsc_disable;					/* 251+ */
 	u16 t6_delay_support;					/* 260+ */
 	u16 link_idle_time[16];					/* 260+ */
+	u16 edp_pipe_joiner_feature;				/* 261+ */
 } __packed;
 
 /*
-- 
2.34.1

