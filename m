Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B588AAE32
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 14:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4CFD10FE85;
	Fri, 19 Apr 2024 12:12:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QRSUgWZv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CBF410FE94
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 12:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713528730; x=1745064730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZOHk+n0Ai8GxQXDuQLUOo51yweQAEWezxTQXMdQl15E=;
 b=QRSUgWZvtgCW+UHhwTijAQ3Iru8NTGfkuI8xE13wCe/A8A6KgI0tA+TK
 KYZtnZ2lynPt0RGGrAnd0VEcC/pNPSjGAsD9dihIQsemf5jvNlxIfbek6
 0bX8shRbE8ojI/9GEhwZ9bu7p+eWYsuBbG/NzO6TWPOmvnR4bCuHf8ldD
 TcLWZGkNQwfnjpWhe4aodQKONOUcCWFDdkcI/mNkIVdIPSCxSZgm478Hf
 FXBxKBctsxoDa4K7cXIP/dC/1hDlxB63OOP0qdkkjpRJAWyZtip3rhXsm
 9JyqBP9S4hLnLaxfutEsw8IuhLT6fSwBROUt2twfDE2F0ghZp67HSj3Fx w==;
X-CSE-ConnectionGUID: tx07om5nQAqsvNTJIbLnmQ==
X-CSE-MsgGUID: mNSEbCYCRs2vLF+mZgS4mA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19735939"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19735939"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:12:10 -0700
X-CSE-ConnectionGUID: asJAbOeNSuGdKhHy8K55Rw==
X-CSE-MsgGUID: uqOWVu7yRParUA5Rv5fxqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28149560"
Received: from mkuznet1-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.63.13])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:12:09 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 09/11] drm/i915/psr: Update PSR module parameter
 descriptions
Date: Fri, 19 Apr 2024 15:11:39 +0300
Message-Id: <20240419121141.2665945-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240419121141.2665945-1-jouni.hogander@intel.com>
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
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

We are re-using PSR module parameters for panel replay. Update module
parameter descriptions with panel replay information:

enable_psr:

-1 (default) == follow what is in VBT
0 == disable PSR/PR
1 == Allow PSR1 and PR full frame update
2 == allow PSR1/PSR2 and PR Selective Update

enable_psr2_sel_fetch

0 == disable selective fetch for PSR and PR
1 (default) == allow selective fetch for PSR PR

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index f40b223cc8a1..2c96656dc4c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -102,7 +102,8 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
 
 intel_display_param_named_unsafe(enable_psr, int, 0400,
 	"Enable PSR "
-	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
+	"(0=disabled, 1=enable up to PSR1 and Panel Replay full frame update, "
+	"2=enable up to PSR2 and Panel Replay Selective Update) "
 	"Default: -1 (use per-chip default)");
 
 intel_display_param_named(psr_safest_params, bool, 0400,
@@ -112,7 +113,7 @@ intel_display_param_named(psr_safest_params, bool, 0400,
 	"Default: 0");
 
 intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
-	"Enable PSR2 selective fetch "
+	"Enable PSR2 and Panel Replay selective fetch "
 	"(0=disabled, 1=enabled) "
 	"Default: 1");
 
-- 
2.34.1

