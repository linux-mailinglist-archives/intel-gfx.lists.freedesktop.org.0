Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A71AE5E77
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92EA310E4F6;
	Tue, 24 Jun 2025 07:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mqr0+gKb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E73D10E4F6;
 Tue, 24 Jun 2025 07:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751475; x=1782287475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a5HKZ6jiSburgoq9lir2JN+2ae/ow+C3pDA7b0NACdM=;
 b=mqr0+gKbJuj747eB5PYk4zhpopNB91MKX+MkjZ4pwjnLUVGN1uhZWrxd
 gbEOHLE+23gH0rrurtO1j2L8gXcRi1+dTeXoglSzpoJgyFXh+SdQbrwwR
 Sd/NH+yMnX+vvrksEL0vX6nXItvQrOmUqrIfIT70agZe+8M2m4xgIk/zu
 v9qZaWd/zuV+L+QsEopPLpW1oEIr5hyzygETrrHSCVQ9eM15O4naluB2w
 +VYSofrZHFiKv1HEgVpvcO+EJzdJWw8Fr6fx6QtIemjiilDWUVFlgYG+r
 t6nW2gxC73zPllv8sGqlVij3pHZ7MTuJ2aeH5rALXspwl5Ywlv1jRN/Ev g==;
X-CSE-ConnectionGUID: ws+CiS/lQAOipIKxoOllag==
X-CSE-MsgGUID: j1ceuCVARb6Hzyu47aV4lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398223"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398223"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:15 -0700
X-CSE-ConnectionGUID: sfKe2H2zSzuAr9mbqtzhug==
X-CSE-MsgGUID: BlOklLGuRC+Eg5pjz8QWzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446389"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:13 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 03/18] drm/i915/display: Add pipe dmc registers and bits
 for DC Balance
Date: Tue, 24 Jun 2025 13:19:33 +0530
Message-ID: <20250624074948.671761-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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

Co-authored-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 6f406315dd65..66cc92cc3f50 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -394,4 +394,55 @@ enum pipedmc_event_id {
 #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
 #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
 
+#define _PIPEDMC_DCB_CTL_A			0x5f1a0
+#define _PIPEDMC_DCB_CTL_B			0x5f5a0
+#define PIPEDMC_DCB_CTL(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_CTL_A,\
+							   _PIPEDMC_DCB_CTL_B)
+#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
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
 #endif /* __INTEL_DMC_REGS_H__ */
-- 
2.48.1

