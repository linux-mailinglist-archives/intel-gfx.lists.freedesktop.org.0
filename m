Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D84B315FE
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 12:59:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7310910EAC3;
	Fri, 22 Aug 2025 10:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="llenHf17";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8448D10EAC2;
 Fri, 22 Aug 2025 10:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755860342; x=1787396342;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cS7TZZCySoBPv6EDVf4bC6rBKVIFp3K8gSdeZSmFxJA=;
 b=llenHf17EDbTAaHtRPzdl6i4E5diCHeb8iCWS0n7sTmdU/aUHg63bdCl
 EcmHysZkqIsFJLZj6hriiD2IaRt1QXUzJf+PwR05RmposX+XsovFLY9kG
 JvpIrMoOcFgGfT5yo5l/vJPvSIk6LE8hneAXqomzz1skW4Z8rO7IakM/i
 X2fPGyLJxm5tu8dsUS70cTZA0whCX75AZgWabMeWQXVrrGf2UNeoozpzj
 6a/cbGpsdw9dVtJ3EEDOOmgbCMQTZf+ji254AImAoxfT6FHhik5xGbSsA
 /icO/j6P2X0Yk3ou/nlpIDFp5jI+lZypUNZJXMLdv2YHsV5ijSz1QiQJv Q==;
X-CSE-ConnectionGUID: PdA4aamUTTKJbHGqN56njA==
X-CSE-MsgGUID: 49MfJo3GRr+GEv5Xfp3WVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="61978628"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="61978628"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 03:59:01 -0700
X-CSE-ConnectionGUID: eU0zV0FcRBSDqkV0YdJvkg==
X-CSE-MsgGUID: /7vFgKCXSF2yOKhTjfuwRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="199558210"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.79])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 03:58:59 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Do not unnecessarily remove underrun on idle
 PSR WA
Date: Fri, 22 Aug 2025 13:58:46 +0300
Message-ID: <20250822105846.1023631-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

We are currently removing underrun on idle PSR WA even if it's not
applied. Fix this by checking pkg_c_latency_used on PSR exit as well.

Fixes: 9b1795e9b0ae ("drm/i915/psr: Underrun on idle PSR wa only when pkgc latency > delayed vblank")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b4091d28e814..88eceb8f00fd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2090,8 +2090,9 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 
 		drm_WARN_ON(display->drm, !(val & EDP_PSR2_ENABLE));
 	} else {
-		if (DISPLAY_VER(display) == 20 ||
-		    IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+		if ((DISPLAY_VER(display) == 20 ||
+		     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
+			intel_dp->psr.pkg_c_latency_used)
 			intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(display,
 								       intel_dp->psr.pipe,
 								       false);
-- 
2.43.0

