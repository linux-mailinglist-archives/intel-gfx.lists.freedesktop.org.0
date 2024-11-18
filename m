Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9513E9D1C11
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 00:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FBA310E56D;
	Mon, 18 Nov 2024 23:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ypmc/QkG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC3910E56D;
 Mon, 18 Nov 2024 23:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731974024; x=1763510024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6HuH8m53Oed5iG6uEP1upukBxI178/zU7kfo8CAz7GA=;
 b=Ypmc/QkGYK6SWd6FpUcLiWRxE8uyX61E40doscPN4rgiGDwUYGeQO/3M
 drHQqiNpN1lFiJ5ZUnpT2sYJb3lN7k+HcpZhLwJWnYWa1/47DVV28cT58
 +Ai7IJ3SgQT5roYVRmPzrc2fVQLYh/7rCKrDQRT9N1a3dZmaH+TaVvLVi
 NYV0G++D3XpAwhQdIPJqkdduhL280DPKveGTqkWE+KUrEalJQKBQR9ZKD
 akwzDzGfw3MLLfqB72LAS6x5/7u+5kQEAtDp8IVXb47PkDs8aWhQrlU50
 PmEsTZStedMXIhQve4lX7RAB1L6WYClyujO0K/FmfJF3FzXD3mwOUhm0h w==;
X-CSE-ConnectionGUID: 6AV3UdggR9OhNX5u6lmjqQ==
X-CSE-MsgGUID: lw/IaSe8TdmjlHur7Ms93g==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="32090839"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="32090839"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:53:44 -0800
X-CSE-ConnectionGUID: JKRbXHhdTMyxyX559E05bQ==
X-CSE-MsgGUID: oH3dpXd5S2yObmyTtSlK0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="94186012"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.2])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:53:41 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: [RFC PATCH 2/4] drm/i915/display: add register definitions for fbc
 dirty rect support
Date: Tue, 19 Nov 2024 01:53:23 +0200
Message-Id: <20241118235325.353010-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241118235325.353010-1-vinod.govindapillai@intel.com>
References: <20241118235325.353010-1-vinod.govindapillai@intel.com>
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

Register definitions for FBC dirty rect support

Bspec: 71675, 73424
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc_regs.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
index ae0699c3c2fe..b1d0161a3196 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
@@ -100,6 +100,15 @@
 #define   FBC_STRIDE_MASK	REG_GENMASK(14, 0)
 #define   FBC_STRIDE(x)		REG_FIELD_PREP(FBC_STRIDE_MASK, (x))
 
+#define XE3_FBC_DIRTY_RECT(fbc_id)	_MMIO_PIPE((fbc_id), 0x43230, 0x43270)
+#define   FBC_DIRTY_RECT_END_LINE_MASK		REG_GENMASK(31, 16)
+#define   FBC_DIRTY_RECT_END_LINE(val)		REG_FIELD_PREP(FBC_DIRTY_RECT_END_LINE_MASK, (val))
+#define   FBC_DIRTY_RECT_START_LINE_MASK	REG_GENMASK(15, 0)
+#define   FBC_DIRTY_RECT_START_LINE(val)	REG_FIELD_PREP(FBC_DIRTY_RECT_START_LINE_MASK, (val))
+
+#define XE3_FBC_DIRTY_CTL(fbc_id)	_MMIO_PIPE((fbc_id), 0x43234, 0x43274)
+#define   FBC_DIRTY_RECT_EN		REG_BIT(31)
+
 #define ILK_FBC_RT_BASE		_MMIO(0x2128)
 #define   ILK_FBC_RT_VALID	REG_BIT(0)
 #define   SNB_FBC_FRONT_BUFFER	REG_BIT(1)
-- 
2.34.1

