Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CEAABD1ED
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9595510E57D;
	Tue, 20 May 2025 08:29:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RddaerGG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D1F10E567
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 May 2025 08:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747729772; x=1779265772;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=n4KKfozHPhqI3Q9aiI3wnhoTO4HwWUgdEzQEJNWaSDc=;
 b=RddaerGG74W+G41bCl+s+ABtcrahpPuou5WHFIeGbmzvuL3fgK5KECgP
 cVBXQHs9hqcAzf7CjGE/o0kgH8Ob46LQnnu/e5SFX7K9JyTtTnOEkLJ8h
 EFpMOkbm8+5Wpo5jexdA9ZqM4+4hyeKWAWEi1iWmh/FML2686Clb63jel
 LxysQQgzBLI1Qjue9w5xhV8bxtTRdGDfK7+mW+7syBcCKQMPB8MLOV966
 4+SpCIXwX3A0Y4OJLv+Ug9CF3l8cyJAbQmXu8qzQk1qrw/URoZid26kiJ
 zkjgEr4wCs6/Xnz1onAuajqJXMn7/l8T2EfUHscL9yu+XrjDJUHi/Ai5E A==;
X-CSE-ConnectionGUID: +F0cHu5+SLeo4Asmww025w==
X-CSE-MsgGUID: aU5tpRuvRNKjf56w1kztXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49804352"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49804352"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:29:31 -0700
X-CSE-ConnectionGUID: eXSLfn9xQJW+zvtigO7stw==
X-CSE-MsgGUID: E5tK6johQMWDkzhTuiHAkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144875718"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.245.245.155])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:29:30 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/dkl: return if tc_port is invalid in
 dkl_phy_set_hip_idx()
Date: Tue, 20 May 2025 11:26:58 +0300
Message-ID: <20250520082917.1302665-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250520082917.1302665-1-luciano.coelho@intel.com>
References: <20250520082917.1302665-1-luciano.coelho@intel.com>
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

In dkl_phy_set_hip_idx(), we may try to shift a value negatively,
whose behavior is undefined.  This can happen because we define
TC_PORT_NONE to -1, so theoretically tc_port could be -1.  We will
then use tc_port to shift to the correct address of the specified
port, but if it's negative, anything can happen.

If this happens or tc_port exceeds I915_MAX_TC_PORTS, it's safer to
return with a warning than risk an invalid write.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dkl_phy.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index dad7192132ad..35e919eae369 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -25,7 +25,9 @@ dkl_phy_set_hip_idx(struct intel_display *display, struct intel_dkl_phy_reg reg)
 {
 	enum tc_port tc_port = DKL_REG_TC_PORT(reg);
 
-	drm_WARN_ON(display->drm, tc_port < TC_PORT_1 || tc_port >= I915_MAX_TC_PORTS);
+	if (drm_WARN_ON(display->drm,
+			tc_port < TC_PORT_1 || tc_port >= I915_MAX_TC_PORTS))
+		return;
 
 	intel_de_write(display,
 		       HIP_INDEX_REG(tc_port),
-- 
2.47.2

