Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E169A87F07
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 13:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F80C10E593;
	Mon, 14 Apr 2025 11:30:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P2HwZ+MX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802E210E588;
 Mon, 14 Apr 2025 11:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744630207; x=1776166207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TqsR0YwdQjQtz80f8EbFek0wptrlCQLzmMpU3VZY2/I=;
 b=P2HwZ+MXWYO/jrmDiT6l9ssEbiqDXC9vIwamvxd5UCaP+V3UhA2rSjpY
 P4o875WaLM0SRokb8HcsOTQaSjCfi2ghE7yFe86HSIQrLRwpnKhelw8ts
 YZmRF+fJu4+QObAk1j8sk4srMXOrmFCRH1sB+QhAfG6dC0Dtu2kyCQde0
 ibtZgHR/5anOlSFMgtIqSTIPLlxG8AT0MLQaK2FeXFKRoAO3R8VTNW4It
 +uZ53eOUYXWT/pzsse3b0HVL82AlzSCX+PnneJUFXCew1OlnDJrftotC1
 wTXPoVYlAMQuImlLCZqpRejfaxmXUNMslcBhlzhYT2fJkQAEBh6ecWrGm A==;
X-CSE-ConnectionGUID: 3V0TLCsNTfyRRRRCcnNnag==
X-CSE-MsgGUID: tsOBOHL5R9CFoQCf5osmtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57481051"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57481051"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:30:03 -0700
X-CSE-ConnectionGUID: yDAoGecBRdmS86RFWXDLNA==
X-CSE-MsgGUID: aj18Z4xBSEyLDxU5+hjhJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129761678"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:30:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI v3 2/6] drm/i915: record GEN2_IER in gtier[0] for pre-ilk error
 capture
Date: Mon, 14 Apr 2025 14:29:44 +0300
Message-Id: <f637219fe3accb69963266773b9ef7c1131875e4.1744630147.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744630147.git.jani.nikula@intel.com>
References: <cover.1744630147.git.jani.nikula@intel.com>
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

In pre-ilk platforms the engine interrupts live in GEN2_IER. Capture it
as part of gtier instead of display.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index cf31e8fecd8d..64c760e7b7ee 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1782,8 +1782,6 @@ static void gt_record_display_regs(struct intel_gt_coredump *gt)
 		gt->ier = intel_uncore_read(uncore, VLV_IER);
 	else if (HAS_PCH_SPLIT(i915))
 		gt->ier = intel_uncore_read(uncore, DEIER);
-	else
-		gt->ier = intel_uncore_read(uncore, GEN2_IER);
 }
 
 /* Capture all other registers that GuC doesn't capture. */
@@ -1822,6 +1820,9 @@ static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
 	} else if (HAS_PCH_SPLIT(i915)) {
 		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
 		gt->ngtier = 1;
+	} else {
+		gt->gtier[0] = intel_uncore_read(uncore, GEN2_IER);
+		gt->ngtier = 1;
 	}
 
 	gt->eir = intel_uncore_read(uncore, EIR);
-- 
2.39.5

