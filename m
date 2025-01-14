Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8FAA10633
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 13:07:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B63E910E25A;
	Tue, 14 Jan 2025 12:07:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RW9I93tB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0313810E22E;
 Tue, 14 Jan 2025 12:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736856463; x=1768392463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XYsyJT8J2OF9pn7ILpJ7PNkcACDwCS/nczJsWSJyF/4=;
 b=RW9I93tBi4i7kPw5ApnFKQEENDQuXTMK6JygyIJwT12ITHl8DeuyxlyM
 VNNPJ2+acxheY/JRlmA3M9+IfeUS9U5BTXMZxw4rADE1sgQyBmRhY8pOe
 Ydf7ff7iftIkyJnZpoe/BDREwrcKe76Az0b+Y8S8Q0GLoPPIG3A7znlcN
 c34xtgLRqccgn18uOXScg8BjYCrkiHtZRVMMd4Iix1BYKLG0ZEcYQdGcM
 W4+wmR6UmEF1hczPj2brUTXwj2VJfXK/I05dsl0v4y1GPz7oe9toL9mR6
 N2Xgb7tToBqEXwa2JWbgEBojOkX4R8oCqF0Ia8stBaLnxMd8YwX0pAuP4 w==;
X-CSE-ConnectionGUID: 9pr3ej05QiuVBBYLM840Fg==
X-CSE-MsgGUID: NMn0pCgfS5SaEu38Uyjz5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39956208"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="39956208"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:07:42 -0800
X-CSE-ConnectionGUID: a4AYgh3LR0CroykdvS/EcQ==
X-CSE-MsgGUID: /xr3Mr00SDGQj/ET8dhNFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108849112"
Received: from carterle-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.225])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:07:39 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH v3 2/4] drm/i915/xe: add register definitions for fbc dirty
 rect support
Date: Tue, 14 Jan 2025 14:07:17 +0200
Message-ID: <20250114120719.191372-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250114120719.191372-1-vinod.govindapillai@intel.com>
References: <20250114120719.191372-1-vinod.govindapillai@intel.com>
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
2.43.0

