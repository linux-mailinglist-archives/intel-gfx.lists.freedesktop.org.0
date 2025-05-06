Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 647EAAAC8D6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9AF310E6BD;
	Tue,  6 May 2025 14:57:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dulv6xtP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFFB510E6CF;
 Tue,  6 May 2025 14:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746543435; x=1778079435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iVoT7PVzKtYXZ7uhpJNNx4C/MbRzeUsKvoy3fq4IHwM=;
 b=Dulv6xtPwI5q8klJS7tS3dmG0QeyH2lrdn+em4imQdGA5xgfbtvLTKi2
 Ky4szOoPdxx9WZA3ZWDKoesBDdPgJTktTh2awK0sYVetoYGmXqvK1IB0t
 CJsvrkoJ56By6fGjIP9Yz57kGwD4koHJmMmYNvIsWizUGjcdJMbJtw6vg
 0RG552btypSuNKuuZl8Pz1sg8Z87UePmhuIN2H/wV/k911ZJ2SVtkyi/H
 n8awv/16HCr+QM0XS25JMKTQsbRpWZTyzMvJDSsS5A3WyWbRSzc80iTgh
 4nHPySUo0QqE4zKuXFL34hkpQ+1dKZRV9irTvdKOX0WlcHn5lWX/5qQ0F g==;
X-CSE-ConnectionGUID: cHBpym3fQXeOWSmNSiLL5g==
X-CSE-MsgGUID: TvRb63jLRxGGeUnueScRyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59205957"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59205957"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:57:15 -0700
X-CSE-ConnectionGUID: gapDyeSkRXa4hKuLdX0Dtg==
X-CSE-MsgGUID: twumaOFcT2+flfrBnOeShg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="166572098"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2025 07:57:13 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v4 01/17] drm/i915/vrr: Fix the adjustment for the fixed rr
 vtotal for Display < 13
Date: Tue,  6 May 2025 20:25:01 +0530
Message-ID: <20250506145517.4129419-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Correct the adjustment required for fixed refresh rate mode for Display
< 13. The vblank delay must be added and not subtracted to get the fixed
rr vtotal.

Fixes: bef1e60c7087 ("drm/i915/vrr: Prepare for fixed refresh rate timings")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c6565baf815a..45445198129f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -263,7 +263,7 @@ int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
 	if (DISPLAY_VER(display) >= 13)
 		return crtc_vtotal;
 	else
-		return crtc_vtotal -
+		return crtc_vtotal +
 			intel_vrr_real_vblank_delay(crtc_state);
 }
 
-- 
2.48.1

