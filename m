Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB069C3A88
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6E210E45B;
	Mon, 11 Nov 2024 09:10:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YA+boHvl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431D510E462;
 Mon, 11 Nov 2024 09:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316226; x=1762852226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TmoVsO63wRvIu/AFQ1Sx646xgQjFuN3VmNP5zMQaEPw=;
 b=YA+boHvlUic4ch0w8qeN6HzIzScoGxk3PAnMSPl1iXAP0ZZYUcBFCKdP
 AQh+Hcbkx/atpMFkMQRqoKIKZLiLfHz4pK2jhsavEuL7AAhrSvoAaarW0
 bAQlQVfPe4LLwL+B+2lXeg0v6HOgd5Vtr5rNA2aXw365A+1LlrfgL8i+5
 5MNP8FiPSu5oYbu+0VTKBoe3l80A9jT6YQ+j/i/XxYanYmy3ZHNKLW+2b
 GjkVpeaFMoOIrKpGUgY4XH9nUpX6fqT29//JPQhWGD01zqr6XpUO/dOfE
 2QsqnUC3OWhxhf+i9/KL+2IXUfM3lmgajT9R71f76kEkZDX4JZpOigeUa w==;
X-CSE-ConnectionGUID: 3Va9EAePQhiRYJx0qp0gow==
X-CSE-MsgGUID: 1uASj2LYQ6SNa8DPaQDW1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052402"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052402"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:26 -0800
X-CSE-ConnectionGUID: /tjHR8GUQSGrapavFUBH9Q==
X-CSE-MsgGUID: 5b55oxzFRHyKXWU/aKozWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762687"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:24 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 16/23] drm/i915/vrr: Fill fixed refresh mode in
 vrr_get_compute_config
Date: Mon, 11 Nov 2024 14:42:14 +0530
Message-ID: <20241111091221.2992818-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

Read the vrr fixed refresh rate mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index ecd4b06cb273..bc3b78a6bf8b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -473,6 +473,10 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmin = intel_de_read(display,
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
+		if (crtc_state->vrr.mode != INTEL_VRRTG_MODE_CMRR &&
+		    crtc_state->vrr.vmax == crtc_state->vrr.flipline &&
+		    crtc_state->vrr.vmin == crtc_state->vrr.flipline)
+			crtc_state->vrr.mode = INTEL_VRRTG_MODE_FIXED_RR;
 	}
 
 	if (crtc_state->vrr.tg_enable) {
-- 
2.45.2

