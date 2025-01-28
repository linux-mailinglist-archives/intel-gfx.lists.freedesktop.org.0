Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D179A20DB6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 16:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289B510E69F;
	Tue, 28 Jan 2025 15:54:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GbUvwVAv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C515D10E694;
 Tue, 28 Jan 2025 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738079693; x=1769615693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z8HaHNA/EvnZCI6bP3CQij/7XIITDrWKT0BQwesX79E=;
 b=GbUvwVAvMBfOEGe4rshyR8xbnuLystG+EXzweRDZnfqdEf0pR9eSm+2c
 6N3vZtVMgIDl0X6APbeV4hcd94L44XuaRUDCr2nHmHwEf7WfnIRA7D7ZJ
 Ok3hUCiAIk/wKixa1auaU+bt5oKGHBKJk2AQwXLFOjOVp+BXsNf+nH1hY
 OwECD8LSm4ODugDZEhkLT8PwdT4nVWbv4NOS+M6qhbGr7tSYPn2Vy/tdl
 ZqDnDvpdeFxNNBaSM1G89hZE2IxzKpna39tp05sUDmeTnvrtUyvHAgUKa
 VhV8q9yJ5dT91Ts8ESnhK7egGCOx3n02DUspZEghAT0xWk4OggfC2XPBa g==;
X-CSE-ConnectionGUID: RO4glurDQ4a9PfjPD7I5aQ==
X-CSE-MsgGUID: sQTQKwNLQ1G/waTz8lUcQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49228105"
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="49228105"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:53 -0800
X-CSE-ConnectionGUID: eWgG30bxSiyeNanZmoNX2Q==
X-CSE-MsgGUID: eHqYlxJVRR+340aOPGgWMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="139635374"
Received: from slindbla-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.171])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 07:54:51 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v5 5/7] drm/i915/xe3: avoid calling fbc activate if fbc is
 active
Date: Tue, 28 Jan 2025 17:54:16 +0200
Message-ID: <20250128155418.305595-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250128155418.305595-1-vinod.govindapillai@intel.com>
References: <20250128155418.305595-1-vinod.govindapillai@intel.com>
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
routine again. This is more relevant in case of dirty rect
support in FBC. Xe doesn't support legacy fences. Hence fence
programming also not required as part of this fbc_hw_activate.
Any FBC related register updates done after enabling the dirty
rect support in xe3 will trigger nuke by FBC HW. So avoid
calling fbc activate routine again if the FBC is already active.

The front buffer rendering sequence will call intel_fbc_flush()
and which will call intel_fbc_nuke() or intel_fbc_activate()
based on FBC status explicitly and won't get impacted by this
change.

v2: use HAS_FBC_DIRTY_RECT()
    move this functionality within intel_fbc_activate()

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index df05904bac8a..951dc81b7b97 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -739,8 +739,19 @@ static void intel_fbc_nuke(struct intel_fbc *fbc)
 
 static void intel_fbc_activate(struct intel_fbc *fbc)
 {
+	struct intel_display *display = fbc->display;
+
 	lockdep_assert_held(&fbc->lock);
 
+	/*
+	 * When dirty rectangle is enabled, any updates to FBC registers will
+	 * trigger nuke. So avoid calling intel_fbc_activate if fbc is already
+	 * active and for XE3 cases. Xe doesn't support legacy fences. So
+	 * no need to update the fences as well.
+	 */
+	if (HAS_FBC_DIRTY_RECT(display) && fbc->active)
+		return;
+
 	intel_fbc_hw_activate(fbc);
 	intel_fbc_nuke(fbc);
 
-- 
2.43.0

