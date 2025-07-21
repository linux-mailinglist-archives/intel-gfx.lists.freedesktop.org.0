Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D30B0C262
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 13:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3060710E4FB;
	Mon, 21 Jul 2025 11:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EqOhkIbp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECF0110E4F8;
 Mon, 21 Jul 2025 11:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753096468; x=1784632468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PzIqd7wcHLEwzvzikpm6aRUOveP+5Ix5FDrPvxyf0KI=;
 b=EqOhkIbpi58PkgVnAk9rzHly51i1G28XNJnOh+WQDx70I27Az1c65VgG
 s7BMMt4enIoh3rK0qb1IWIZUnkwzZ/x2tC31ZuXZbZnUOiMF9+8PyhvdG
 nAR71mf5O9xRphQHgDOiOLY89D+wIvPMgOV0lxiIPcsokYacw7VxaZSPU
 0fYSqeG7KstWo6LsnwjRKMI1seGPIB+9cGi/6nPnHhtw1YRhG7wdFGeZl
 RMYlIw8jAmnsjkJsu26WXxHvdTq8dvhhA70RNRuZ5aCLy6Luwz0DyiJvr
 9vsBRbiDdjJWZvzaq6htCOePQDf0Xf7wMBkUlznvdmclp/ZVOoFI9b7Ic Q==;
X-CSE-ConnectionGUID: xBS4HMC+QRWqWc3e9xdHHg==
X-CSE-MsgGUID: XYvZ5KPnShSMQ3fBOZP/dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55427267"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55427267"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 04:14:28 -0700
X-CSE-ConnectionGUID: aX/5KX7sRw6ZMWO/WY3urw==
X-CSE-MsgGUID: xuC1/rS9R6usW5WGpPfkzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="159146174"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.64])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 04:14:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 2/7] drm/i915/psr: Add TRANS_PUSH register bit definition
 for PSR
Date: Mon, 21 Jul 2025 14:14:01 +0300
Message-ID: <20250721111406.1468064-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250721111406.1468064-1-jouni.hogander@intel.com>
References: <20250721111406.1468064-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add TRANS_PUSH register bit LNL_TRANS_PUSH_PSR_PR_EN definition for PSR
usage.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index ba9b9215dc11..a67b2eb125ce 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -97,6 +97,7 @@
 #define TRANS_PUSH(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_PUSH_A)
 #define   TRANS_PUSH_EN				REG_BIT(31)
 #define   TRANS_PUSH_SEND			REG_BIT(30)
+#define   LNL_TRANS_PUSH_PSR_PR_EN		REG_BIT(16)
 
 #define _TRANS_VRR_VSYNC_A			0x60078
 #define TRANS_VRR_VSYNC(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_VSYNC_A)
-- 
2.43.0

