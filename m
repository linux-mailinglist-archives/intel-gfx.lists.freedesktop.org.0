Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E89289F879F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 23:14:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A9710EDE8;
	Thu, 19 Dec 2024 22:14:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HgT0iKtJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380E410EDF1;
 Thu, 19 Dec 2024 22:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734646497; x=1766182497;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=z2WAFNkOgtFdMXVQnkq3RyX0K7lcpZTf2NK+Z+D5//A=;
 b=HgT0iKtJRqmr4oURQijSTgiHWUWcXRZm7kMgHXgdcceFAKesu/68PecK
 eKuDA9Hqj14QndOZ7mNYquJgy5HK3AZ3XYoAmY8efyu8/UjG/OiPE8z39
 B3g2MmVbqZbtmN2XENnxBd19W/Vs7EpWqdFd2gsnko9YwvQFBjTmmsPVi
 UBVJJagPOk3Mqg4JmQPDkT0B/NTFQWAffvxyHZKZvKLbnrlndZ0WtRxyj
 dI1zGf/UNzXSoSzdLDxijVq3fLN/CisDHLp2SDEx8iEHLjpwVg7da1CiR
 7VZGV+Je3/eqN14p6c0lWjvwiigukATTDEiQMKAtpIHu83LoMWxMlfm7E g==;
X-CSE-ConnectionGUID: mgVi5+lwSTmJm5uc+GIQgw==
X-CSE-MsgGUID: FWN5Or3fSM6xOLstwnpw5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="35217713"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="35217713"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:14:57 -0800
X-CSE-ConnectionGUID: 6lEckARNRAmKUZEwy3PNIg==
X-CSE-MsgGUID: roL1aCyLSUGmHr7IFgjrHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102944125"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.91])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:14:56 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/dmc_wl: Show description string for enable_dmc_wl
Date: Thu, 19 Dec 2024 19:14:14 -0300
Message-ID: <20241219221429.109668-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241219221429.109668-1-gustavo.sousa@intel.com>
References: <20241219221429.109668-1-gustavo.sousa@intel.com>
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

We already provide the value resulting from sanitization of
enable_dmc_wl in dmesg, however the reader will need to either have the
meanings memorized or look them up in the parameter's documentation.
Let's make things easier by providing a short human-readable name for
the parameter in dmesg.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index cff841521ca0..2315c6318b51 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -279,6 +279,8 @@ static bool __intel_dmc_wl_supported(struct intel_display *display)
 
 static void intel_dmc_wl_sanitize_param(struct intel_display *display)
 {
+	const char *desc;
+
 	if (!HAS_DMC_WAKELOCK(display)) {
 		display->params.enable_dmc_wl = ENABLE_DMC_WL_DISABLED;
 	} else if (display->params.enable_dmc_wl < 0) {
@@ -294,8 +296,20 @@ static void intel_dmc_wl_sanitize_param(struct intel_display *display)
 		    display->params.enable_dmc_wl < 0 ||
 		    display->params.enable_dmc_wl >= ENABLE_DMC_WL_MAX);
 
-	drm_dbg_kms(display->drm, "Sanitized enable_dmc_wl value: %d\n",
-		    display->params.enable_dmc_wl);
+	switch (display->params.enable_dmc_wl) {
+	case ENABLE_DMC_WL_DISABLED:
+		desc = "disabled";
+		break;
+	case ENABLE_DMC_WL_ENABLED:
+		desc = "enabled";
+		break;
+	default:
+		desc = "unknown";
+		break;
+	}
+
+	drm_dbg_kms(display->drm, "Sanitized enable_dmc_wl value: %d (%s)\n",
+		    display->params.enable_dmc_wl, desc);
 }
 
 void intel_dmc_wl_init(struct intel_display *display)
-- 
2.47.1

