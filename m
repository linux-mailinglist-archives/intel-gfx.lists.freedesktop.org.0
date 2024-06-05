Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE17B8FC910
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58DCD10E752;
	Wed,  5 Jun 2024 10:27:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kz/BNDgA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 708C610E733
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583219; x=1749119219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QzbaYwNku9+IYGziluxOY2fTMxqcKTHwAR6eo3qXjlY=;
 b=Kz/BNDgA6/1t2kSfa8cPaiTE6Bg4l3DXMABW3GZH4DWsL7TI1djlokND
 19ZfdzBBnChGX5jukAzb+AVNw+3Cj19+OYok4wZg3FymrX5lHhOa3iX40
 BYeeF9uPy7haa6Z8IHRcnXXfcT1q1BJoT/sVUyyjA5+v3BJ0faCDRDEqp
 kYCR+xT4+A/krKVlmQgS0r8Qcu++pASdEF0ZfRRRDRI9wV0a4+VZvbYfd
 CGCuxH8i3hHIMVxqHvUMKKchXc3F2F13Lv80Vur1jFdckimGQh1do4oT3
 Qf9330OmbsMBo3AH9JaO26+PxuzN1ZUjMZl+F0pBAQo8io8S6eI3fahrp g==;
X-CSE-ConnectionGUID: YsQdMVqpQ0ascoH0LTuLYA==
X-CSE-MsgGUID: OallDe6qT663gND5FbyhRw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136164"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136164"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:59 -0700
X-CSE-ConnectionGUID: HqbmqeT9TNusEX+xmyACsA==
X-CSE-MsgGUID: RcLutANORf+rgHLmlptoYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686317"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:58 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 23/26] drm/i915/psr: Check Early Transport for Panel Replay
 as well
Date: Wed,  5 Jun 2024 13:25:50 +0300
Message-Id: <20240605102553.187309-24-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Move Early Transport validity check to be performed for Panel Replay as
well and use Early Transport for eDP Panel Replay always.

v2:set crtc_state->enable_psr2_su_region_et directly (not in if block)

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3aec56d005ef..97d1e4ef6ca5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1394,9 +1394,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay))
-		crtc_state->enable_psr2_su_region_et = true;
-
 	return true;
 }
 
@@ -1458,6 +1455,9 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
+	crtc_state->enable_psr2_su_region_et =
+		psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay);
+
 	return true;
 
 unsupported:
-- 
2.34.1

