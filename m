Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A3BA022B0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 11:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2597610E5FE;
	Mon,  6 Jan 2025 10:09:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f3S2g5Mz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9261310E601
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2025 10:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736158172; x=1767694172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Txbztbma7JwBwqIx66zSrXolwpm4/Y5+nhy5WsF9ddI=;
 b=f3S2g5Mzwhyk5MIq4lQiLQNslM7o0sRWbtkuVjj7u3pGY7k6paTAarNn
 6eFZNvzjtpWHS5L6FOyiZKxILdQNaWqSR+cvqaChadurMLvnIa3E1x9fG
 50LzafuattTsrqSCLwIgpL++XNfG3flD4M82p/khcZl65onNC/H0C0/O2
 31g6H1yzJ57rvkhQwij0bDyN/LU9SJBE7RF4yUHAyKslYJ4szCrpMILlz
 UXty7k08QkjHfaiSqy2onsOav5B3Id5FGWZfnAr9dHfbG+5uvUh/4QMkr
 fUGlXJUxGoMQbwSYbZ1I4VbAZ+IGPPzzJ9aDCcgPtJ3J5ankuXI6SImRA w==;
X-CSE-ConnectionGUID: kodNNhqZTV67HW4/XHYcoA==
X-CSE-MsgGUID: QMeOiknQSbCFwfcgzx8bLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="36459656"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="36459656"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 02:09:32 -0800
X-CSE-ConnectionGUID: wc9G1tOKS96EIa179c1QyA==
X-CSE-MsgGUID: GxJ87AtAQkiQ3fB6xr7fxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107370499"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa004.jf.intel.com with ESMTP; 06 Jan 2025 02:09:30 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v1 6/8] drm/i915/soc: fix typos in i915/soc files
Date: Mon,  6 Jan 2025 16:00:35 +0530
Message-Id: <20250106103037.1401847-7-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250106103037.1401847-1-nitin.r.gote@intel.com>
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
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

Fix all typos in files under drm/i915/soc reported by codespell tool.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_pch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 842db43e46c0..9f7c9dbc178e 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -243,7 +243,7 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	 * underneath. This is a requirement from virtualization team.
 	 *
 	 * In some virtualized environments (e.g. XEN), there is irrelevant
-	 * ISA bridge in the system. To work reliably, we should scan trhough
+	 * ISA bridge in the system. To work reliably, we should scan through
 	 * all the ISA bridge devices and check for the first match, instead
 	 * of only checking the first one.
 	 */
-- 
2.25.1

