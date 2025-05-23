Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2ACAC1D28
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 08:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9643010E760;
	Fri, 23 May 2025 06:39:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AombxMLW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE12010E760;
 Fri, 23 May 2025 06:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747982353; x=1779518353;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=04abXeBGXVDiqeeQwRHfQoL2JQpC3Ns4l8uLdUyfon8=;
 b=AombxMLWSL0bx21b3v7/B10iV2NCA5F86yABd00KKAHI1ZxpuyqzB0s1
 7mM2O/mhsTk5OtyNTqPxQ7PSNUuHyWy8pRudBDOJcpajhGZVo27Px64mP
 AmaydV9+s/uLLs3yYZfVq3/PRqcuoGb2iOIXEph0W56sm09YArr9xXfao
 ygsBoXwho+ZkpUhqzeCWN85MtDfdmx/kF545seI4zz5kXxhTyjvhApFY+
 7fq2vHHOxGr3+oSEpWBuAPX9aS0uIFpeMFXSHiXrO/roE/VKJLlNlKY2p
 gU4Ih5Y7dDshLyj2ibKC97Q6MHQiq0o2WzMBlfjKki0g8krKbBOzVFm1f w==;
X-CSE-ConnectionGUID: JIkff8MIQ8+XMkFmntuA/g==
X-CSE-MsgGUID: HLevf//IR8K9c1+yOD/CzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67592253"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67592253"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 23:39:13 -0700
X-CSE-ConnectionGUID: lMRQoHUNRAGL1NZU/RX+qw==
X-CSE-MsgGUID: gZCZa7buSoeHda3ra+uEmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="171985320"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 23:39:10 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v8 05/11] drm/i915/dsb: add intel_dsb_gosub_finish()
Date: Fri, 23 May 2025 11:50:35 +0530
Message-Id: <20250523062041.166468-6-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
References: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
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

A DSB buffer which will be used for GOSUB execution does not need
the DEWAKE mechanism but still need to be 64 bit aligned. Add helper
to finish preparation of a dsb buffer to be executed with GOSUB
instruction.

v2: Add a cacheline of noops at the end of GOSUB buffer (Ville)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index cd32b59adf18..04c2096df2dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -606,6 +606,19 @@ void intel_dsb_gosub(struct intel_dsb *dsb,
 	intel_dsb_align_tail(dsb);
 }
 
+void intel_dsb_gosub_finish(struct intel_dsb *dsb)
+{
+	intel_dsb_align_tail(dsb);
+
+	/*
+	 * "All subroutines called by the GOSUB instruction
+	 *  must end with a cacheline of NOPs"
+	 */
+	intel_dsb_noop(dsb, 8);
+
+	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
+}
+
 void intel_dsb_finish(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 8b2cf0a7b7e6..6900acd603b8 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -31,6 +31,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 				    enum intel_dsb_id dsb_id,
 				    unsigned int max_cmds);
 void intel_dsb_finish(struct intel_dsb *dsb);
+void intel_dsb_gosub_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
-- 
2.25.1

