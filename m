Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2428DB1D659
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 13:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ECB010E0DE;
	Thu,  7 Aug 2025 11:09:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eK6NKBYj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39E9910E0DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 11:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754564949; x=1786100949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VUr1nw017sGEXlmY3XDF/8NZaW9pLVm8G9pv4j15b0w=;
 b=eK6NKBYj3+Y8F5MHn2xd7jyJyRYapBbppnyvrcjU/yx9w9qr5kIIHn4U
 xZPN+To9K+WQpQ20vvuZvF4YRl0RSGxeIbS82NQBNA1A8eu0arIbY9bjC
 dxt85Epf9IGAx5FEvVyk5Hlg3dhfR/YPLOXkLvOGZs8rAEob2/PPMFnDI
 /umNdXfQhXIhn4+2g3oqjQlpdkxiWVnz64Q0KPmKuhQkj8Lm9oWqa2ew0
 TPavUyedIsGKn6H3mF82TlqFQspky9Oti7ppBfIxlSSJoDPCVJEvNrVxQ
 ZM2H/e5VDtb7+sIzRTUC0i+V68+EohKwvasQODntGrMcg5cKX/Drvufzc Q==;
X-CSE-ConnectionGUID: MJcmKeJwTM+r4KX7F0n6BQ==
X-CSE-MsgGUID: uDcWBeJTQKq9dpjc8fem0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="59511520"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="59511520"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:09:09 -0700
X-CSE-ConnectionGUID: 7vLstbwYR02G65FTH4swXQ==
X-CSE-MsgGUID: e7dyMuPsSGKcZTA4xXhZxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165448911"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa008.fm.intel.com with ESMTP; 07 Aug 2025 04:09:07 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.nikula@intel.com,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/scaler: Fix condition for WA_14011503117
Date: Thu,  7 Aug 2025 16:33:53 +0530
Message-Id: <20250807110353.3170959-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250806101930.2969802-1>
References: <20250806101930.2969802-1>
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

Add a check statement to check the scaler_id, if
less than 0 then return.

v2: Add scaler_id check [Jani]
v3: Modify commit message[Suraj]

Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index cd7ebbeb9508..c6cccf170ff1 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -960,7 +960,7 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
 	const struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 
-	if (!scaler_state && scaler_state->scaler_id == -1)
+	if (scaler_state->scaler_id < 0)
 		return;
 
 	intel_de_write_fw(display,
-- 
2.25.1

