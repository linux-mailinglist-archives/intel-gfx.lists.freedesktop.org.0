Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 806BCC63FF2
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 13:09:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061EA10E3A5;
	Mon, 17 Nov 2025 12:09:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hq/Qdcom";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0323C10E38E;
 Mon, 17 Nov 2025 12:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763381397; x=1794917397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XTw4ru0Ev2ulxohwIXOjkFLgOlJV59tOlJL10kDb7tc=;
 b=Hq/QdcomIeOTnRujH07eUEEmuK/w9mh9njqYcgdD7sFEuKeqv2b6sevK
 fHyzM90H6XZ64Y1OTQe1IvDKb3RukSU6xrfAAbxkuzhwHELTUB50d2ozR
 ByUNsGosYnCpu3ROWx8ht7XiYi4Glpwg/ZeMooD/DMqFeCyda+I+nZ0KG
 pT2TrF0WmzvImbO3RuvTgKo4dWimRYHQ94YSO7Cmp7gRivP36anew6smc
 Rgjtr1xUl77Ol3p0Ag7f169frhnO2cAFvumu2uJeww69hwoFcmbJCcfA/
 BaQQ86ahTAFs3jNxA9/gMFygofVYADy8wo/9IJJl+AgFYdCtmMpT9af4Y A==;
X-CSE-ConnectionGUID: xNfYfAK4S1C2iMEVtFxTmw==
X-CSE-MsgGUID: k/sPQG4ISVmQbCQwsPT21w==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="52945790"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="52945790"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:09:57 -0800
X-CSE-ConnectionGUID: v5ZtvXSHTXiziBbFMX2aog==
X-CSE-MsgGUID: MyZqymhwRmiD8UCOXbEvRA==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 04:09:55 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 7/8] drm/i915/cmtg: program sync to port for cmtg
Date: Mon, 17 Nov 2025 17:12:15 +0530
Message-Id: <20251117114216.1522615-8-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20251117114216.1522615-1-animesh.manna@intel.com>
References: <20251117114216.1522615-1-animesh.manna@intel.com>
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

Program Cmtg Sync to Port Sync. Set before enabling the timing generator.
While cmtg start running this bit will be cleared.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c      | 3 +++
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 0a804554f16d..d5793842815f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -274,4 +274,7 @@ void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 
 	/* Program CMTG MN */
 	intel_cpu_cmtg_transcoder_set_m_n(crtc_state);
+
+	/* Program Cmtg Sync to Port Sync, TRANS_CMTG_CTL */
+	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_SYNC_TO_PORT, CMTG_SYNC_TO_PORT);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 1bbdb66ee587..aace1490a741 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -24,7 +24,9 @@ enum cmtg {
 
 #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
 #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
+#define TRANS_CMTG_CTL(id)		_MMIO(0x6fa88 + (id) * 0x100)
 #define  CMTG_ENABLE			REG_BIT(31)
+#define  CMTG_SYNC_TO_PORT		REG_BIT(29)
 
 #define TRANS_HTOTAL_CMTG(id)		_MMIO(0x6F000 + (id) * 0x100)
 #define TRANS_HBLANK_CMTG(id)		_MMIO(0x6F004 + (id) * 0x100)
-- 
2.29.0

