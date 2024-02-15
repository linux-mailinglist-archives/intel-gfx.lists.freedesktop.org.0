Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7C68569C3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08DB010E9E6;
	Thu, 15 Feb 2024 16:41:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MeWdDFeS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E8A10E9F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015289; x=1739551289;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jhlzAyMIqt4Drp3gAQcVPLIgEAX/kBksoNRN9aEIrQU=;
 b=MeWdDFeSO6lM14aqe1GKSDMoi0ama+uo1xNlbE1pD705roZIEuHGPH7k
 O2GRPBmPtknKT/FdxjhrGTSASbTyltfFdd/1kpwTB4SGIdvLPt1P5aWx+
 ZK6I5WELJQdJTajBehs0m0vKx9vrSDTd3qXOe9r0XsPtIANG8/xog3vy5
 opZZ+yjqrHHP+iM3fQvaYN8SBhcwDOxaftKPitmxHss4idOkaWooKxcHi
 MDCxDAwIwpKtDscvzmP0GZBhYfgUctV3ig3FXe0Xk0fWmc8eXKG6mxl/v
 1x2Htzybfoi7OA6WuiK0nMlsUanH2Ay8LITv7Yj5Q6rwg4vgfdU+STrI4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19630070"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19630070"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434863"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434863"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:41:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:41:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/12] drm/i915: Skip intel_crtc_state_dump() if debugs aren't
 enabled
Date: Thu, 15 Feb 2024 18:40:52 +0200
Message-ID: <20240215164055.30585-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_crtc_state_dump() does a whole boatload of string formatting
which is all wasted energy if the debugs aren't even enabled. Skip
the whole thing in that case.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index b5b9b99213cf..cd78c200d483 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -192,6 +192,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	char buf[64];
 	int i;
 
+	if (!drm_debug_enabled(DRM_UT_KMS))
+		return;
+
 	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
 
 	drm_printf(&p, "[CRTC:%d:%s] enable: %s [%s]\n",
-- 
2.43.0

