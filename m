Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F269C5111
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D66810E594;
	Tue, 12 Nov 2024 08:45:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bv8NumvR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C0E210E591;
 Tue, 12 Nov 2024 08:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731401157; x=1762937157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hIXeuFhpIeUNqGZ33Yr0m+mB8qPT1Fu9RLp9d7PsxLE=;
 b=bv8NumvRSBmYsDwJhsB/jYpQZycZ5omKkZGmOFVKJphGV1xAZ1wfCBeU
 oUoqmKnCFBtXiDV9cms1/a+mmc7JAJWA05q4BlpcgVLG9gErSkkQpvuZV
 9pTpoeVK/hxKIMUzE6yKzi1wAXbZkLPh44qkccHPA55tcuMp5WeaDRJER
 476kkuCJKk6stDA4Is7YAtfkVjRR/2eczKUIxfA2rWyUQYv1sJncvnVN3
 PJzDAGJNAiwlfWKbeMmOCOBQEC+CsxrJ93TvIyW50oO/5AO8kPm7VYXyz
 CFBGO5AGYqqEj1S7f4+yTbuzWZ+/9cg2NIJKEWBegSYQqA/tq8KpIS757 g==;
X-CSE-ConnectionGUID: 80k7nsxARuqbLC7QEXEXAQ==
X-CSE-MsgGUID: wVFEXHrkRJikgkis8Nv8Jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31449606"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="31449606"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:45:57 -0800
X-CSE-ConnectionGUID: sJGqbBBCTQyY97Tbc0b5fw==
X-CSE-MsgGUID: NRGPGCBPQcmOVqIBnlj8qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="124851956"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 12 Nov 2024 00:45:56 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/6] drm/i915/watermark: Refactor dpkgc value prepration
Date: Tue, 12 Nov 2024 14:15:39 +0530
Message-Id: <20241112084542.1337314-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112084542.1337314-1-suraj.kandpal@intel.com>
References: <20241112084542.1337314-1-suraj.kandpal@intel.com>
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

Refactor the value getting prepped to be written into the PKG_C_LATENCY
register by ORing the REG_FIELD_PREP values instead of having val
getiing operated on twice.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3fa463159b0b..4c92ada1c851 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2866,8 +2866,8 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool fixed_refresh_rate
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
-	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
+	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
+		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
 	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
 }
-- 
2.34.1

