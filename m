Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C70ED9E1628
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 09:47:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D3310E985;
	Tue,  3 Dec 2024 08:47:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZmFN1nrD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1C8A10E978;
 Tue,  3 Dec 2024 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733215654; x=1764751654;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Sy+gL5lR6y+WZ+ydZJ5MKafGV2IcuCULUa4WXykoaM=;
 b=ZmFN1nrDJuTXg0xFxD21wFUPB05woRigXU0UriBg25CnjgrkyMagjV1U
 g07B8S/HMCW+UaX+IEnWpoyIzhkZWTTq8tVbV883Ii0SoO/vsveH0rsW2
 wRQs4QgMZkic5XkD6pFM2zItRFc2X65FzNlq4END30eAJaFBLj74UBSRu
 GnuDbTXS629PbuAW740pIS5148llLnI5QFHVftyC3QlW2856fc2IeaAKG
 ioFK+BXPQOkJu6CTpGpbbdsflYombXy7o9PizTAhQMKAqoV8D/C9GVloC
 bm5KMWMiKuh4gjnlifA+YBJ8zCaIXh6ykSU9FgAo/I+L0eRA4vfNXxtmS Q==;
X-CSE-ConnectionGUID: nOG5BnrqTPe1cMGt+WMIUw==
X-CSE-MsgGUID: eds8g0xkR3CF0SOVufniQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="44805471"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="44805471"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:47:25 -0800
X-CSE-ConnectionGUID: 1c4hLITMT1eiyDbd4+5+FQ==
X-CSE-MsgGUID: VsHxy1AATUWIA+IasnuhRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="94198919"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 03 Dec 2024 00:47:23 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 6/6] drm/i915/wm: Club the initialized variables together
Date: Tue,  3 Dec 2024 14:17:06 +0530
Message-Id: <20241203084706.2126189-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241203084706.2126189-1-suraj.kandpal@intel.com>
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
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

Refactor program_dpkgc function so that all initialized variables
are clubbed together.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 4c032b1758e7..d93f6786db0e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2862,9 +2862,9 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
 	u32 latency = LNL_PKG_C_LATENCY_MASK;
+	u32 added_wake_time = 0;
 	u32 max_linetime = 0;
 	u32 clear, val;
-	u32 added_wake_time = 0;
 	bool fixed_refresh_rate = false;
 	int i;
 
-- 
2.34.1

