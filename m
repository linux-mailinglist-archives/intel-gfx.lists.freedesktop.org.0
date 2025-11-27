Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5ABC8D790
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D5010E7BC;
	Thu, 27 Nov 2025 09:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GieoQH9i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C68610E7B5;
 Thu, 27 Nov 2025 09:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234958; x=1795770958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yVrMESJFfKyAw6FLzoatL/DYGZ0EbJqTqozojG8PQjo=;
 b=GieoQH9ircMBcLs5vgYRXPUt3KveWPr0hddRmZfgv2xNjbxhJM8VbY4s
 nZFb6gqTk3KahHEvagVBWR8NrWaPF4oGsy/COhitWkg6EPOxTBEnbaICx
 vkbhcbQEJkCrwC8pa3QvFuvCG/JFgx1YnzBLjbVaKOGF7nvL/X03IsTDq
 LgSqY8Z1u0DbPljQ2lXlDKBWjD4eINDOjZE/ci/ZB0Fde4MOnpCn0blRC
 Q3a5OwJcNQ8f123l7ps6ETQAxxe+NRkpSl92+OYjjCqZxAQfDGlmw0pvw
 PLRAbLIn1pmHTBmB6BOn1r8qw5GYDpBvGqVbcZ4gBVUY63Hi8UJjrS5UH Q==;
X-CSE-ConnectionGUID: mntvDZgbTMy7tPahj2p62w==
X-CSE-MsgGUID: 7V0cs5H+QdOf77CXNjEN5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642324"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642324"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:15:58 -0800
X-CSE-ConnectionGUID: Nr0S5EbGTYew29YcmZAWYg==
X-CSE-MsgGUID: wzN2Ssm9S1WfXcIWYVr6JA==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:15:57 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 02/17] drm/i915/dmc: Add pipe dmc registers and bits for DC
 Balance
Date: Thu, 27 Nov 2025 14:45:59 +0530
Message-ID: <20251127091614.648791-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add pipe dmc registers and  access bits for DC Balance params
configuration and enablement.

--v2:
- Separate register definitions for transcoder and
pipe dmc. (Ankit)
- Use MMIO pipe macros instead of transcoder ones. (Ankit)
- Remove dev_priv use. (Jani, Nikula)

--v3:
- Add all register address, from capital alphabet to small. (Ankit)
- Add EVT CTL registers.
- Add co-author tag.
- Add event flag for Triggering DC Balance.

--v4:
- Add DCB Flip count and balance reset registers.

--v5:
- Correct macro usage for flip count. (Ankit)
- Use register offset in lower case.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index c5aa49921cb9..38e342b45af0 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -584,4 +584,64 @@ enum pipedmc_event_id {
 #define PTL_PIPEDMC_EXEC_TIME_LINES(start_mmioaddr) _MMIO((start_mmioaddr) + 0x6b8)
 #define PTL_PIPEDMC_END_OF_EXEC_GB(start_mmioaddr) _MMIO((start_mmioaddr) + 0x6c0)
 
+#define _PIPEDMC_DCB_CTL_A			0x5f1a0
+#define _PIPEDMC_DCB_CTL_B			0x5f5a0
+#define PIPEDMC_DCB_CTL(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_CTL_A,\
+							   _PIPEDMC_DCB_CTL_B)
+#define  PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
+
+#define _PIPEDMC_DCB_VBLANK_A			0x5f1bc
+#define _PIPEDMC_DCB_VBLANK_B			0x5f5bc
+#define PIPEDMC_DCB_VBLANK(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_VBLANK_A,\
+							   _PIPEDMC_DCB_VBLANK_B)
+
+#define _PIPEDMC_DCB_SLOPE_A			0x5f1b8
+#define _PIPEDMC_DCB_SLOPE_B			0x5f5b8
+#define PIPEDMC_DCB_SLOPE(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_SLOPE_A,\
+							   _PIPEDMC_DCB_SLOPE_B)
+
+#define _PIPEDMC_DCB_GUARDBAND_A		0x5f1b4
+#define _PIPEDMC_DCB_GUARDBAND_B		0x5f5b4
+#define PIPEDMC_DCB_GUARDBAND(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_GUARDBAND_A,\
+							   _PIPEDMC_DCB_GUARDBAND_B)
+
+#define _PIPEDMC_DCB_MAX_INCREASE_A		0x5f1ac
+#define _PIPEDMC_DCB_MAX_INCREASE_B		0x5f5ac
+#define PIPEDMC_DCB_MAX_INCREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_INCREASE_A,\
+							   _PIPEDMC_DCB_MAX_INCREASE_B)
+
+#define _PIPEDMC_DCB_MAX_DECREASE_A		0x5f1b0
+#define _PIPEDMC_DCB_MAX_DECREASE_B		0x5f5b0
+#define PIPEDMC_DCB_MAX_DECREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_DECREASE_A,\
+							   _PIPEDMC_DCB_MAX_DECREASE_B)
+
+#define _PIPEDMC_DCB_VMIN_A			0x5f1a4
+#define _PIPEDMC_DCB_VMIN_B			0x5f5a4
+#define PIPEDMC_DCB_VMIN(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMIN_A,\
+							   _PIPEDMC_DCB_VMIN_B)
+
+#define _PIPEDMC_DCB_VMAX_A			0x5f1a8
+#define _PIPEDMC_DCB_VMAX_B			0x5f5a8
+#define PIPEDMC_DCB_VMAX(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMAX_A,\
+							   _PIPEDMC_DCB_VMAX_B)
+
+#define _PIPEDMC_DCB_DEBUG_A			0x5f1c0
+#define _PIPEDMC_DCB_DEBUG_B			0x5f5c0
+#define PIPEDMC_DCB_DEBUG(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_DCB_DEBUG_A,\
+							   _PIPEDMC_DCB_DEBUG_B)
+
+#define _PIPEDMC_EVT_CTL_3_A			0x5f040
+#define _PIPEDMC_EVT_CTL_3_B			0x5f440
+#define PIPEDMC_EVT_CTL_3(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_EVT_CTL_3_A,\
+							   _PIPEDMC_EVT_CTL_3_B)
+
+#define _PIPEDMC_DCB_FLIP_COUNT_A		0x906a4
+#define _PIPEDMC_DCB_FLIP_COUNT_B		0x986a4
+#define PIPEDMC_DCB_FLIP_COUNT(pipe)		_MMIO_PIPE(pipe, _PIPEDMC_DCB_FLIP_COUNT_A,\
+							   _PIPEDMC_DCB_FLIP_COUNT_B)
+
+#define _PIPEDMC_DCB_BALANCE_RESET_A		0x906a8
+#define _PIPEDMC_DCB_BALANCE_RESET_B		0x986a8
+#define PIPEDMC_DCB_BALANCE_RESET(pipe)		_MMIO_PIPE(pipe, _PIPEDMC_DCB_BALANCE_RESET_A,\
+							   _PIPEDMC_DCB_BALANCE_RESET_B)
 #endif /* __INTEL_DMC_REGS_H__ */
-- 
2.48.1

