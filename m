Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5763B27BAD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Aug 2025 10:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BBA810E386;
	Fri, 15 Aug 2025 08:52:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SJhK0FYm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD06610E386;
 Fri, 15 Aug 2025 08:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755247940; x=1786783940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l2N8p5TcLnSsyIfKYCNa/Tjgp7q88h3EuhKQ2AoGUgo=;
 b=SJhK0FYmHrtRikv8gF+M1e8ZS2mT84O3GxvpMsux3Cy6izVQCmiqgGWO
 ztOnkCdiH9cOIOdpeH+/XiXPkmGwyqRV9dIOypuufeTBtuH5FdhVK2DtD
 7Lbc3XCeBWPSQ3UsI/ij2SrwVy9tXN2AEi4fB1aPd69VxlZC45rWunvPZ
 o2i1cj1dFGTwgruE53opLicEiEcAMtv999k2M+DASPcx933B52s9CFBTu
 9sC6O+fQ9+UrxvnKJy5qqfHgwgK7zhHL3KrQeWUlqOcR/KH9u3F/iWEOx
 iitPj3yxLjvRimRiz8Sm8edO7PZkKVraCceGmSIJ8SMeiB8B6bcieyLKo w==;
X-CSE-ConnectionGUID: dJb/GbpEQ3O59aURIkzAbA==
X-CSE-MsgGUID: UB2ah3lWQLqOHG+LUKaGqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11522"; a="57647499"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="57647499"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 01:52:19 -0700
X-CSE-ConnectionGUID: JC/jk3JNTASY+1XCmgeH0g==
X-CSE-MsgGUID: s0IMr+mcR9ujwIM4h7M0tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="167233443"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 01:52:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/3] drm/i915/psr: Do not activate disabled PSR on
 irq_aux_error
Date: Fri, 15 Aug 2025 11:45:33 +0300
Message-ID: <20250815084534.1637030-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250815084534.1637030-1-jouni.hogander@intel.com>
References: <20250815084534.1637030-1-jouni.hogander@intel.com>
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

Currently intel_psr_work is continuing to activation of PSR which was just
disabled when irq_aux_error == true.

Fix this by skipping everything else than intel_psr_handle_irq in
intel_psr_work when irq_aux_error == true.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 226d4d1c7c82..3930d28e3486 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3209,8 +3209,10 @@ static void intel_psr_work(struct work_struct *work)
 	if (!intel_dp->psr.enabled)
 		goto unlock;
 
-	if (READ_ONCE(intel_dp->psr.irq_aux_error))
+	if (READ_ONCE(intel_dp->psr.irq_aux_error)) {
 		intel_psr_handle_irq(intel_dp);
+		goto unlock;
+	}
 
 	/*
 	 * We have to make sure PSR is ready for re-enable
-- 
2.43.0

