Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 019F68AC45F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565E41127FD;
	Mon, 22 Apr 2024 06:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M/KaPffN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6031127F4;
 Mon, 22 Apr 2024 06:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768030; x=1745304030;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5QA0qTJlC16TkcGeB/0jnC+Hgt0qiT8Uz/NCtckbIvE=;
 b=M/KaPffNHStgD/TO4sj0B2YH3+3zm8Iv5sOvpt5+t0qELBrT0rLOHg3k
 rEDzNIfYa87bV69PWH7Hq/oOuRGEir2yUAwNFEAJNwFHtfbvRZyOPCtXA
 umGkQvDaPWcEAaL13SFef1GZwsw4F6zvTcDovJ4yW2AxsGs7APP4llu/l
 +26VObVDa2rNRlpqW0u7pMNfCfak+E7fimjOma32aP25wx02virO4w4U2
 ApZwrvqI/CZDNYvQ6pBNh0Eo5E/k7bu/ePzjXY+NJF03jMik31g8p+8YJ
 nSBseKQhzFSyRRSySU46woj+pY4OR3J8g51juA02hsBEPOFhAxyR92hCb g==;
X-CSE-ConnectionGUID: vtZU+sA1TTimJqam7h3txw==
X-CSE-MsgGUID: dJ8aUR8QQ2uIAjXgClrRAQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208645"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208645"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:30 -0700
X-CSE-ConnectionGUID: yTfb/WGPQ2iwNr5IBz+KeA==
X-CSE-MsgGUID: JicYLIwdS6GdUPwxn0Iy3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896506"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:28 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v4 12/19] drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
Date: Mon, 22 Apr 2024 12:10:31 +0530
Message-Id: <20240422064038.1451579-13-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
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

No display IP beyond Xe_LPD+ has "BW credits" bits in MBUS_DBOX_CTL
register. Restrict the programming only to Xe_LPD+.

BSpec: 49213
CC: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 8436af8525da..baa4b5ad96b7 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3604,7 +3604,7 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
 		u32 pipe_val = val;
 
-		if (DISPLAY_VER(i915) >= 14) {
+		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
 			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
 							      new_dbuf_state->active_pipes))
 				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
-- 
2.25.1

