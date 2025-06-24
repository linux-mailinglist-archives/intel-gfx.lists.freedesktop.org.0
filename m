Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9CAAE5E86
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A20CC10E516;
	Tue, 24 Jun 2025 07:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MxCCxV6P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA9D10E514;
 Tue, 24 Jun 2025 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751514; x=1782287514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gEk9gb2fGqVpTE1oTFvstK1ZLn1JpLPgDQUA3abSosY=;
 b=MxCCxV6PRbVFpemm8JabyYqQ1UkSFv4yPVskzldw72UcM9GHQCsU8mYS
 IGA5Al9JTH5xcFTbw+zLeD9i4xe0KUm660npadY/l2hlKcnXpQAwbjnCJ
 Ozdncoij2L7kn6v2lsf+pmou+jjapAHSdhssnjpZ3CYsowKjQi0MveoLL
 Azy4f2JCM4Zfd76nWeXVhrivfHMVIpdHMMShhYRjJn1X9m+/LdjOst3/I
 dh9ahWhlftF5t5F4bgjBbGSIFjl5ge8hlbqdJn2abI1J8CullTiIY5OnS
 lCsPjA9wnkaNqH+jpnZlXcENHcVdRRsIY12fB64yVTnBPYld+aijf+nxi Q==;
X-CSE-ConnectionGUID: 4POSV9ynQXCRA43jGVoc2g==
X-CSE-MsgGUID: CAndeFccRsq2oUOYqZCBxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398342"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398342"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:53 -0700
X-CSE-ConnectionGUID: zlUCC9mnSDW8FM7w3/l+qQ==
X-CSE-MsgGUID: Mkp+4BIqQSK9pIFGehLLQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446546"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:46 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 18/18] drm/i915/vrr: Enable DC Balance
Date: Tue, 24 Jun 2025 13:19:48 +0530
Message-ID: <20250624074948.671761-19-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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

Enable DC Balance from vrr compute config and related hw flag.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index d5359a96054b..e48a795a8c18 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -277,6 +277,9 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+	if (intel_vrr_dc_balance_possible(crtc_state))
+		crtc_state->vrr.dc_balance.enable = true;
 }
 
 /*
@@ -686,6 +689,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		ctl |= VRR_CTL_CMRR_ENABLE;
 
 	if (crtc_state->vrr.dc_balance.enable) {
+		ctl |= VRR_CTL_DCB_ADJ_ENABLE;
 		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
 			       ADAPTIVE_SYNC_COUNTER_EN);
 		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, true);
-- 
2.48.1

