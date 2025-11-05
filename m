Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65E3C35FA3
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3185410E767;
	Wed,  5 Nov 2025 14:08:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a6k24bm0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9B510E764;
 Wed,  5 Nov 2025 14:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351729; x=1793887729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ay9a4Omhs1aEHMVqh3JLRxFoRk+IRnyVmJ51blEX+BM=;
 b=a6k24bm0Bb7hEEWgYsP2v/HPltFEzqNEIsQWcW2OEUpQP9SHLwypNtha
 MXK7uxVaRx/+CcL4cj6lxCUxUvq6dIRHi1UW4zdgMVqHIewpRGkY9sl57
 avxM+XMRKSewj4bgcl0wcEzZ1jSLEqufDF6cnfb76SGgddWCSWcpHJow1
 psahuZ+o8nLKm+kEwoKKsYinKUJgks1LiIrEQIWppiWqL9rQ7j6JhaeCt
 goyNISrskZnQOM4PDxoTcVOnPJ0C0LeHaKdY0cv8edT6abDbQ9xQylnLU
 KWT2TrU8K2jlfYXguzv0d8ASsuY4mNRJMseqWNA+ysMHRCc7kICCEErDf A==;
X-CSE-ConnectionGUID: 9m+Lq1QqTTiCRGBlQz/8Cw==
X-CSE-MsgGUID: YsaRo7RASZyVodqRmdNftA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348417"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348417"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:26 -0800
X-CSE-ConnectionGUID: +n4fbBvaTYW7Lg7t73UInQ==
X-CSE-MsgGUID: JragKNsqQPmXUN3ZpCHnkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562990"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:25 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 11/17] drm/i915/xe3p_lpd: Extend Wa_16025573575
Date: Wed,  5 Nov 2025 11:07:00 -0300
Message-ID: <20251105140651.71713-30-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

Wa_16025573575 also applies to Xe3p_LPD, so let's include it in the IP
version checks.

Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-11-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index c528aaa679ca..e38e5e87877c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -49,7 +49,8 @@ void intel_display_wa_apply(struct intel_display *display)
  */
 static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 {
-	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
+	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002 ||
+		DISPLAY_VERx100(display) == 3500;
 }
 
 /*
-- 
2.51.0

