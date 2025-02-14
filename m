Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6AEA35D78
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:22:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E39010EC79;
	Fri, 14 Feb 2025 12:22:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PuFJ57r+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90BEE10EC6B;
 Fri, 14 Feb 2025 12:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535771; x=1771071771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ACbEnYj7s+Tfd7NANfj01BCL/euB+20e90RzXn+v6iU=;
 b=PuFJ57r+RxEwWXXS1kHQAF2DtL3EijqVRi3ZaEtGUuPk5pMYtJsqVxCQ
 QAQlyHvhtbwb/YfFRHNgPFuMpvhjKIzb27xgOMnAVrDsrdQ+X3E8VMN86
 z4LJdz1rhp1IYmuqgxOeT9Y2pb8jjCJ44C6kk/MGW+g1ZohHuqYGnHk40
 sWguCPyTkgJP0ClW3eVT59Zp42XT0MxBgT5krnaePfZvi5AdzZrejPvf8
 HbnOMRL2GRVlvuJ30x64iFj5Qme36HIG6i11r8nSZVICMhVAxlQOHnaZw
 Z8dBvra7g/FHt1j3bfhPnhCWoQgZ+Ugr3L52LDqIuEIb/dwVPA+jBaGba g==;
X-CSE-ConnectionGUID: rI/7tPEQRa+mfhSm6LL/sA==
X-CSE-MsgGUID: AN8oSvH6TKm7n1/oqdZm9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51256010"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51256010"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:50 -0800
X-CSE-ConnectionGUID: wleluhKhSHy/wxmOO7btyg==
X-CSE-MsgGUID: DBYNrCCJTyCiVPLEdjpjbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309578"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:48 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 12/19] drm/i915/display: Extend WA 14015406119 for PSR2
Date: Fri, 14 Feb 2025 17:41:22 +0530
Message-ID: <20250214121130.1808451-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
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

Wa_14015406119 is required for PSR1/2 while working with fixed refresh
rate with VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 47d8dbf39b5c..66c5ad46bfea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2617,8 +2617,9 @@ static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
-		IS_DISPLAY_VER(display, 13, 14);
+	return intel_vrr_possible(crtc_state) &&
+	       (crtc_state->has_psr || crtc_state->has_sel_update) &&
+	       IS_DISPLAY_VER(display, 13, 14);
 }
 
 static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

