Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DD4A18E56
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 10:30:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1A310E5B6;
	Wed, 22 Jan 2025 09:30:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kkBUxA8d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AADB210E38D;
 Wed, 22 Jan 2025 09:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737538226; x=1769074226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GnFxqkSDfVsOE00WUPsVpcNEcEIZ+bzTe6jNX9+501U=;
 b=kkBUxA8djPG+aWR2uW80ptB2UhBW+3zZYXd3AAa3S7gpB7HVn2x09HuT
 HyJI7Aj/vzYHrKL2KxP224XUIgX4MgIlvnvuuIoNVfmR0NVfrXWwvtg5n
 X8tAbnshab31GFtzNnexsSh72sWUDhopcq3A0pve70P2abM3fnObAfreH
 p5snqCrnnJC0i9EzjvV4K2+qKaaPR1Ku+ju7lzr+QhCtQH3TbqfjOnFBe
 emwFuffop53vGWmCFQJZagFngBqSw52dBscYxHpMVoyqfUihIWz+aoMn/
 DuUY4Xw/YXeYFqq3ugxEoyb3W6kVhoZrCyTTUPzNluIs6oSKaTgTNer1I w==;
X-CSE-ConnectionGUID: w2e2UwwITGycL1kUvE2Jew==
X-CSE-MsgGUID: 3DWDN+EBQSWAcEOqDsdOcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38156740"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="38156740"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:30:26 -0800
X-CSE-ConnectionGUID: WtmbllZGTAyMHvWtvcBi4w==
X-CSE-MsgGUID: r6GYKjSiQeW5OLnUWlxb4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="137929343"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.31])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:30:24 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v4 1/6] drm/i915/xe3: avoid calling fbc activate if fbc is
 active
Date: Wed, 22 Jan 2025 11:30:01 +0200
Message-ID: <20250122093006.405711-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250122093006.405711-1-vinod.govindapillai@intel.com>
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
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
Xe doesn't support legacy fences. Hence fence programming also
not required as part of this fbc_haw_activate.

"intel_atomic_commit_tail-> intel_post_plane_update->
intel_fbc_post_update-> _intel_fbc_post_update" path will be
executed during the normal flip cases. FBC HW will nuke on sync
flip event and driver do not need to call the nuke explicitly.

This is much more relevant in case of dirty rectangle support
in FBC with the follow-up patches. Nuke on flip in that case will
remove all the benefits of fetching only the modified region.
Also any FBC related register updates with dirty rectangle
support enabled will trigger nuke by FBC HW.

The front buffer rendering sequence will call intel_fbc_flush()
and which will call intel_fbc_nuke() or intel_fbc_activate()
based on FBC status explicitly and won't get impacted by this
change.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index df05904bac8a..ab9649dd606c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1556,11 +1556,22 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 
 static void __intel_fbc_post_update(struct intel_fbc *fbc)
 {
+	struct intel_display *display = fbc->display;
+
 	lockdep_assert_held(&fbc->lock);
 
 	fbc->flip_pending = false;
 	fbc->busy_bits = 0;
 
+	/*
+	 * When dirty rectangle is enabled, any updates to FBC registers will
+	 * trigger nuke. So avoid calling intel_fbc_activate if fbc is already
+	 * active and for XE3 cases. Xe doesn't support legacy fences. So
+	 * no need to update the fences as well.
+	 */
+	if (DISPLAY_VER(display) >= 30 && fbc->active)
+		return;
+
 	intel_fbc_activate(fbc);
 }
 
-- 
2.43.0

