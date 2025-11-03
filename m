Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BB1C2D6E1
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B180610E461;
	Mon,  3 Nov 2025 17:20:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ANfJwGme";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CF2210E462;
 Mon,  3 Nov 2025 17:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190415; x=1793726415;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=x+j816Jt8gvQ49GnEeZNHVbf0cRAJsUH4JvfAUxsbOM=;
 b=ANfJwGmeYkEgirdNru3gyEwcbUhfZs46WXmqqh0NnJhNBovaKKxOcT6v
 /bIZGehHkk0QaSR7Dsk1Ojxrybj3mUlRyAZYGAkkvFSL2ExaO684HtR+E
 /FzbJNaTb6GKOsLVuP4G5IaJIfXlslgBdLSQlQiIY42BYbWSAowTNCYDE
 SvIPZhIJVq0QqfY6n5b4AdxIYy2bPCATUSpt4SsbT+7bkr+lRduGIfkeu
 rkWaJFY0vWwN28qAu0ZqahuNEJmk5RbdGNoFxwYcnI2+uekb8TgT0bth1
 kzu2ZRdHLSO6WSsi+inH2Rya3aj10oWmzOCFYRtBLf2IHlcVTjsVpoE/x g==;
X-CSE-ConnectionGUID: MfNCRxlNSBWg9CHNDIYd6Q==
X-CSE-MsgGUID: 9Em4XOrETuqLkW5tzZPFhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310023"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310023"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:15 -0800
X-CSE-ConnectionGUID: q9AL/wP/TRyA9Z6Z4S080w==
X-CSE-MsgGUID: 0x7qU8M7RfCOIHZceC8Rcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606410"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:12 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:02 -0300
Subject: [PATCH v3 11/29] drm/i915/xe3p_lpd: Extend Wa_16025573575
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-11-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

