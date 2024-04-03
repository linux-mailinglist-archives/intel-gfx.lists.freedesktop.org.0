Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44896896E1C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6DC112A24;
	Wed,  3 Apr 2024 11:23:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lvguFFgJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E25112A24;
 Wed,  3 Apr 2024 11:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143409; x=1743679409;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aXwO+YyrDlXCOTfVyyvxISMPpqPvIKOZ+rBZD0M63z8=;
 b=lvguFFgJwHdeZu8cN4z8jk7Vmo5ED0dWkK1DOSpelHLq0N0OMD4tTUWU
 B6n8n4ZVTwS2b/cShNIb9UPEBZg2huZ9SCEVyj6BAfCV+M8+mqcif7/9Q
 knVxO7Vw50A5YhNpRFUY03p+buxct/PQvA42QSO6t8Dm50YMmDz6DqoIM
 1jkQu4PA1fWCB/ktXPBulqdRpLKV955hXOjKy/F0jCuRUNm0kDXx2ts5F
 YTySMd1S8MIoR0wwCPkjXTTX1/lI2bHgRVOJ81nCyTk9fPack2kewf9sq
 Y1LHNNF7jMa5/lE6VB5508BLqzJsEK8aLYCPmLnV3a4oKgLnopaGLU7pu Q==;
X-CSE-ConnectionGUID: LKaNxbhASHWoj9PCH0Z/LQ==
X-CSE-MsgGUID: TXNeiNzFSZuUbUGy9pU8yg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824148"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824148"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:29 -0700
X-CSE-ConnectionGUID: JiGWVb1OQCC4y6h+SdXpsw==
X-CSE-MsgGUID: HFG9j150QZGm0qcd2SGb9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358552"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:27 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 19/25] drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
Date: Wed,  3 Apr 2024 16:52:47 +0530
Message-Id: <20240403112253.1432390-20-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: José Roberto de Souza <jose.souza@intel.com>

Xe2_HPD doesn't have DBOX BW credits, so here programing it with
zero.

BSpec: 49213
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index bc341abcab2f..22ae782e89f4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3733,7 +3733,7 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
 		if (!new_crtc_state->hw.active)
 			continue;
 
-		if (DISPLAY_VER(i915) >= 14) {
+		if (DISPLAY_VER(i915) >= 14 && !IS_BATTLEMAGE(i915)) {
 			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
 							      new_dbuf_state->active_pipes))
 				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
-- 
2.25.1

