Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B647866A4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 06:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6CF210E0E8;
	Thu, 24 Aug 2023 04:20:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAC310E0E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 04:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692850842; x=1724386842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dwhAG61idSAFwJIvoiH6Z7R8Tms0/oHBTk94cjcRKtM=;
 b=fp10Oxbzr/gcDI68slk4un86BNOrB5aSjW8Y4FlgnHmz7RKpQ/Y5074r
 kRB67MH3mBw3terprS4MDjtawz79gfrlN4IjCd1K96nHKnihU0keJDPQh
 okDZD6G8VEpJnru4jLimAMdTbadMewPjRF1GpMSgb1c7c6WnXtiuqQhfO
 sh+H4i/JpNtIOcRDotFlZnDUD6bWr2JF+a8qYWfxCTK4nXx5vgobi2ub/
 Z69K9ahXYqX2a1jwu9QZZkt62ajVVnDAIE/peqqug+oo8ehNF+G9F4UMw
 X/TMp3hz1GtkZRRKFAqHwgIF0ac3RKiUGtyTzvgw2UU+2X29qft9R0LjL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="371750955"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="371750955"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 21:20:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730441460"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730441460"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga007.jf.intel.com with ESMTP; 23 Aug 2023 21:20:40 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 09:39:48 +0530
Message-Id: <20230824040952.186407-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20230824040952.186407-1-animesh.manna@intel.com>
References: <20230824040952.186407-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/6] drm/i915/panelreplay: Added
 HAS_PANEL_REPLAY() macro
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

Platforms having Display 13 and above will support panel
replay feature of DP 2.0 monitor. Added a HAS_PANEL_REPLAY()
macro to check for panel replay capability.

v1: Initial version.
v2: DISPLAY_VER() removed as HAS_DP20() is having platform check. [Jouni]

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 8198401aa5be..ab615a3199da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -61,6 +61,7 @@ struct drm_printer;
 #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
 #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
+#define HAS_PANEL_REPLAY(dev_priv)	(HAS_DP20(dev_priv))
 #define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)
 #define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))
-- 
2.29.0

