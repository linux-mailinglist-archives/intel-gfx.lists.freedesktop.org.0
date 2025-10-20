Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A838BF3045
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C8FD10E4BD;
	Mon, 20 Oct 2025 18:51:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z85USCFE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16AA410E4BF;
 Mon, 20 Oct 2025 18:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986277; x=1792522277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h9Y7uQjI4iskxkktNbUFSXMQKz3y51tXwPP57WINEDg=;
 b=Z85USCFEsCruMeEL/g3xQWSesTZVm1gKLqfiOArA9mqI3OYAn++ZMJfd
 g4eKgoXrhkzG+HYDvrz3ZlXJYdKP9oTjcdzID09OjXoVoew1raSUKwIup
 JB2+iRRpgJNe4DYNcaeTPbIXDGOroe/Uos7hvZiQK+DFNCItC9MiUexkd
 usXiRsebsZ6BNZHLweAxU0a9lvSdo13SYJbg96Pq877OnS0+T9Sx4LFKT
 MaxufXHDRwX3aDXva+YrkEeo8o9yRSa5O0BMLLz4hqyxZVTvDj6UPliMT
 V/TjOnUd7MI0sYsPCkhb8YLqby4zaOHOvmvGYm6fxeB52Hf3A3jr+SwHS w==;
X-CSE-ConnectionGUID: speEpiCVRO+Zy9DdGlcGtw==
X-CSE-MsgGUID: WDXyteIcTbuT1ANz7TuS7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63013027"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63013027"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:16 -0700
X-CSE-ConnectionGUID: +OBnb4bYSGSUgKulo5FIfg==
X-CSE-MsgGUID: KWxW/plfRBuISN7mHTzDkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="183807639"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:14 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/22] drm/i915/vrr: Avoid redundant TRANS_PUSH write in
 intel_vrr_enable()
Date: Mon, 20 Oct 2025 21:50:25 +0300
Message-ID: <20251020185038.4272-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We keep TRANS_PUSH_EN always set for always_use_vrr_tg() platfforms,
so there is no need to write it again in  intel_vrr_enable().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b2f139addc8b..6e8f8e673312 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -709,12 +709,12 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 
 	intel_vrr_set_vrr_timings(crtc_state);
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
-
 	if (!intel_vrr_always_use_vrr_tg(display)) {
 		intel_vrr_set_db_point_and_transmission_line(crtc_state);
 
+		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+			       TRANS_PUSH_EN);
+
 		if (crtc_state->cmrr.enable) {
 			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
-- 
2.49.1

