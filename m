Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EA3C24970
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C3610EB73;
	Fri, 31 Oct 2025 10:48:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ubm4xVFr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8934C10EB70;
 Fri, 31 Oct 2025 10:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907688; x=1793443688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bDAY9JgmB6GcmqEvuH8FPTvEnsdVXgabwmcu7Ppqvn8=;
 b=Ubm4xVFrQ45Yod5YtDBvIMKSLeYu5Wn8mHYruiDJ0FnZxpLWMHHtGE7+
 usKQt9ILoMpNJzYH5Ndp5RWtMyi9kIaRkoBKuqEQEPo/xyz245bTtQeG/
 A+oZq57z/j2Yva3fTqBNNRU+pH9kzaZLzF/AWvZ5baE5NJeRBwNQf3E/l
 eKiw0BUW9eubOffdn9fVLwpfIM5wyeg+N4dzsBTlLlXBerGKsGXt0/6qz
 nAqka1+6CJlxwZKCMjbueRbSYvL6anYANp3L8RS670N7droHcXdB5wonZ
 dae7jrcF2Xw99b9abSzp2ybxlDvKLmMteSuA3lFKE7X4eNABkKTtIUGVE w==;
X-CSE-ConnectionGUID: Srrkt6g4QA+X14yDLx7WBA==
X-CSE-MsgGUID: sJA0q3FxTAGxrZHM7TSQqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217578"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217578"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:08 -0700
X-CSE-ConnectionGUID: iJrBqdu9QQSlORD47/AkmQ==
X-CSE-MsgGUID: qxdyMUcHRMKSACqAfeUdpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441403"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:07 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI 20/32] drm/i915/display: MTL+ .put_dplls
Date: Fri, 31 Oct 2025 12:35:37 +0200
Message-Id: <20251031103549.173208-21-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
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

Add .put_dplls function pointer to support MTL+ platforms
on dpll framework. Reusing ICL function pointer.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c6af2816594d..cd612acad6e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4448,6 +4448,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
 	.compute_dplls = mtl_compute_dplls,
 	.get_dplls = mtl_get_dplls,
+	.put_dplls = icl_put_dplls,
 };
 
 /**
-- 
2.34.1

