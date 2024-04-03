Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF838969C6
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CCCE1128E9;
	Wed,  3 Apr 2024 09:00:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SW+jHBWa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406271128E7
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 09:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712134831; x=1743670831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GeTmgVUPhPTAH7oSIP1ugEbK4+4MyUa2sk0sbLJDSpY=;
 b=SW+jHBWaerIiU2qnTgMHBebRaHAjgXDsnxevhbU/SWvr5JymSNIVd+td
 mN5DOiLeN7am4oe2CB3yIfpxu3CgduHi/ttJofTR3AsyMc9rQdM8SIxoc
 dhzP5Od0+Zntpv6AsyUN/jX06Fpkl3aHph3G+8ClZu8T9frrnGWzri1Xl
 ZOjAAsu6kqh02Bl76BL6+M3FRRiBr1GBMrnVAN4XNxo+p8M66tzf6nWek
 EKPHSWk3p4kVYYAJBz8Vx+tfgxlaXvqpM9RVWIn+HpA7dZg99UxbSzBvk
 7mal/ozvgcfcdm1oAziqEBoBgPekDnGeRW/oVQC6G9CUMHd0IpKskbmp1 g==;
X-CSE-ConnectionGUID: 5lZaDbWcTjKLLbv2SSyLvw==
X-CSE-MsgGUID: r/09r5wsR2KaGedoUZbwMw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7472388"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7472388"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:30 -0700
X-CSE-ConnectionGUID: FDre3FehSHiRBQxwJKu2hg==
X-CSE-MsgGUID: NbrQKiXhQkaOnRT1dr7YAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18452956"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.35.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 03/19] drm/i915/psr: Intel_psr_pause/resume needs to
 support panel replay
Date: Wed,  3 Apr 2024 11:59:57 +0300
Message-Id: <20240403090013.54296-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240403090013.54296-1-jouni.hogander@intel.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
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

Currently intel_psr_pause and intel_psr_resume do nothing in case of panel
replay. Change them to perform pause and return also in case of panel
replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 10a7795cdb6f..bd99b9953274 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2104,7 +2104,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 
-	if (!CAN_PSR(intel_dp))
+	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
 		return;
 
 	mutex_lock(&psr->lock);
@@ -2137,7 +2137,7 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 {
 	struct intel_psr *psr = &intel_dp->psr;
 
-	if (!CAN_PSR(intel_dp))
+	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
 		return;
 
 	mutex_lock(&psr->lock);
-- 
2.34.1

