Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E91D9C63AD1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F4210E398;
	Mon, 17 Nov 2025 10:59:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UBdiObwZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1B910E397;
 Mon, 17 Nov 2025 10:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377177; x=1794913177;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eICGWTo3j3oIEBB9V7po7PGhkIq+WH2mGEXiDY4Z618=;
 b=UBdiObwZskoJ7eh7jSC2WipFV9An4bA9rvPKAZTL7vNqYTs9/AJmKIRC
 9u0S1tjCtYnCMI8jnrGPLRBmecw+TD/CJZj3K9ASW9j9z40yOZM/Al+Rd
 RPJWhhWYq0wImG36aHMCcQG0Utt4Sad3VcWcCy57eLWg5ei0fqjXW3taD
 KkTjRgGks8brb0dYQomy6+MFXUlrkN74sAsyRGwqSb77Bpz85mm1fdmpV
 sBOcyuOir0b3EXQQB8avjiOqgNNZ6mxNM9ikU13a53KpF8PKsw7F8HLiu
 s7bMD83HJPgs+xMdqHv9WQiMK6VJVDBgiSN91NVnOctQJuSTSbhDF4pH8 Q==;
X-CSE-ConnectionGUID: RymLNHdaQqW6o7CofX77Cg==
X-CSE-MsgGUID: wnmHK8ATScKGQAGHzpWOsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475426"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475426"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:37 -0800
X-CSE-ConnectionGUID: ofRwEUGURRKvQYyuPgdYeg==
X-CSE-MsgGUID: 3zIhAVgtTSOqwzYerE5KAA==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:36 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 27/32] drm/i915/cx0: Add MTL+ .crtc_get_dpll hook
Date: Mon, 17 Nov 2025 12:45:57 +0200
Message-Id: <20251117104602.2363671-28-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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

Add .crtc_get_dpll function pointer to support MTL+
platforms.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 342d46b7b1af..2da65bb20f1c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1720,6 +1720,7 @@ static const struct intel_dpll_global_funcs xe3plpd_dpll_funcs = {
 
 static const struct intel_dpll_global_funcs mtl_dpll_funcs = {
 	.crtc_compute_clock = mtl_crtc_compute_clock,
+	.crtc_get_dpll = hsw_crtc_get_dpll,
 };
 
 static const struct intel_dpll_global_funcs dg2_dpll_funcs = {
-- 
2.34.1

