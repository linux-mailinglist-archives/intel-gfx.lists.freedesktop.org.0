Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BC4624520
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 16:08:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7098910E861;
	Thu, 10 Nov 2022 15:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA08C10E861
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 15:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668092887; x=1699628887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Va1qbIrkMXBPrGq0KSauTcpyuA5oQINOU/LJDqiop0M=;
 b=AmJTnmbpDRWYSN8Ub3wxZnwJdWLQRiYzeqMGTOR7V0wOVGt9z9oB3z/t
 XUVmHdRK8moekeVXib7QKyO1OACNkE916G34Y9DE4Q+ehgjyO/xVjfQv7
 gBGZaG64Uw7sS4OJO+5/IwF1JkNkyJgYpPTcVZTVAns15uTGYIm/ux92F
 XCqyx4jw5f5xw2I4qwuaF8/LbrkzZ5dIoCZqff6sW2D6b4/j4D7y+L7rv
 wTmrREIPSNPm9v+X9AvsgxX6/wDxp6qx2j4eIONnObn+utoX/LcRZNSJk
 I1uvSJCNUGzpwiD4e9QDVSwPhshE6t32qLAAfi8PoRUEnbWfRCH2AGO6g A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397624610"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="397624610"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 07:08:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="668436553"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="668436553"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga008.jf.intel.com with ESMTP; 10 Nov 2022 07:08:06 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 20:33:05 +0530
Message-Id: <20221110150307.3366-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20221110150307.3366-1-animesh.manna@intel.com>
References: <20221110150307.3366-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/panelreplay: Added
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

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 05b3300cc4ed..ba47f4409d0b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -873,6 +873,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
 #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
+#define HAS_PANEL_REPLAY(dev_priv)	 (DISPLAY_VER(dev_priv) >= 13)
 #define HAS_PSR_HW_TRACKING(dev_priv) \
 	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
-- 
2.29.0

