Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B31D4A10632
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 13:07:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D3010E1FC;
	Tue, 14 Jan 2025 12:07:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ibmn5HKS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9922810E1FC;
 Tue, 14 Jan 2025 12:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736856459; x=1768392459;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zaFtisvSnsi/JFbX60FDvKzZZFA0oJhO7MF9bqRSbBo=;
 b=ibmn5HKSVa0uIjmJ5WeY9xtsZwDsEKuCb4tuIuLT4l1R1XN/ANN769nZ
 6WA8287VEDai4396q7cUoyP0jOXsfVYapu/Y3dvmZHRjAbISd08BHvbPx
 VBR158OXyCijidLxG//NnUaIMpEKnjso+o297hWkIzz1ufx85MUsugfw/
 hryHTh6jDoizvmIv4YDJ5tI0tN0au7A+mIX/lzQ95ymDVXsNZ6FQujuAt
 AiRNAM87LBuKXD5egksoFI5XCRNQgWk+2qQJflaWTLufTi4BgUqMIekLG
 NF/OKzkE4FstMavZCFHO94+0AfUEWJ+gs1FqRXwdIW8lAfgULYp+YpGSy Q==;
X-CSE-ConnectionGUID: ma3mVZxTRbyhzT1EeyaIHg==
X-CSE-MsgGUID: n8anAT2tTXquje90YUnsYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39956170"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="39956170"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:07:38 -0800
X-CSE-ConnectionGUID: KmLmMZQVRqmuNCD58Qb++w==
X-CSE-MsgGUID: KZR/NUpARf6xAES6eKkM7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108849095"
Received: from carterle-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.225])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:07:35 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH v3 1/4] drm/i915/display: avoid calling fbc activate if fbc is
 active
Date: Tue, 14 Jan 2025 14:07:16 +0200
Message-ID: <20250114120719.191372-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250114120719.191372-1-vinod.govindapillai@intel.com>
References: <20250114120719.191372-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

If FBC is already active, we don't need to call FBC activate
routine again during the post plane update. As this will
explicitly call the nuke and also rewrite the FBC ctl registers.
"intel_atomic_commit_tail-> intel_post_plane_update->
intel_fbc_post_update-> _intel_fbc_post_update" path will be
executed during the normal flip cases. FBC HW will nuke on sync
flip event and driver do not need to call the nuke explicitly.
This is much more relevant in case of dirty rectangle support
in FBC with the followup patches. Nuke on flip in that case will
remove all the benefits of fetching only the modified region.

The front buffer rendering sequence will call intel_fbc_flush()
and which will call intel_fbc_nuke() or intel_fbc_activate()
based on FBC status explicitly and won't get impacted by this
change.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index df05904bac8a..fd540ff5e57e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1561,7 +1561,8 @@ static void __intel_fbc_post_update(struct intel_fbc *fbc)
 	fbc->flip_pending = false;
 	fbc->busy_bits = 0;
 
-	intel_fbc_activate(fbc);
+	if (!fbc->active)
+		intel_fbc_activate(fbc);
 }
 
 void intel_fbc_post_update(struct intel_atomic_state *state,
-- 
2.43.0

