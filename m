Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EB3997C79
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 07:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5A5E10E86D;
	Thu, 10 Oct 2024 05:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TaXVZdQC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB7710E86D;
 Thu, 10 Oct 2024 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728538463; x=1760074463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=But5542R3jhDoKCWxeMyyDDgaHMeCkN6TOj1X5AsQ1U=;
 b=TaXVZdQCIS10QB9h8iwyabrhl1MIe/vkMjWHVkqQZZ4uJeomDV6vRK1w
 iPgEHklT0b9IOT31ldOOKr+CTB9SxzddvtermttyO/EtPaZcUpcZNvty2
 q+9u349xR/J6cxvewapgZPZcMoKX0WGonbsVNFwH9wSr7MUs+7/Wh4STW
 dIpkEzkapLcdHlN/ag0vxhqvr1quCLW2vStabyo4N+ScD0o+xUrSAIAQV
 8EMJSZDrmVT1GscUvIfd8trMURDz7IW25o3/1HVFHzWIeIJOW30pk9n/U
 euiyLtnd1X3Rx3KVbKA8vte8tTkLYFRAbpg9Cuet53+0tdGceatsPO9qV Q==;
X-CSE-ConnectionGUID: VPi4ieSpRzexvFwp/bKknA==
X-CSE-MsgGUID: F2i/TKrkRJqmqdKpUd9eNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="30749359"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="30749359"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:22 -0700
X-CSE-ConnectionGUID: QZJsfSPbQmaisXAhH8DKkQ==
X-CSE-MsgGUID: chiJNq6nSKmdzahS5MgY7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="76697280"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.162])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/7] drm/i915/psr: Add TRANS_PUSH register bit definition for
 PSR
Date: Thu, 10 Oct 2024 08:33:10 +0300
Message-Id: <20241010053316.1580527-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241010053316.1580527-1-jouni.hogander@intel.com>
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
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
index 6ed0e0dc97e76..50540eac61a31 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -100,6 +100,7 @@
 #define TRANS_PUSH(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
 #define  TRANS_PUSH_EN				REG_BIT(31)
 #define  TRANS_PUSH_SEND			REG_BIT(30)
+#define  LNL_TRANS_PUSH_PSR_PR_EN		REG_BIT(16)
 
 #define _TRANS_VRR_VSYNC_A			0x60078
 #define TRANS_VRR_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
-- 
2.34.1

