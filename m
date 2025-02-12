Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C425A326F6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 14:27:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94E410E8A2;
	Wed, 12 Feb 2025 13:27:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oKIOCYw0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7799C10E896;
 Wed, 12 Feb 2025 13:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739366842; x=1770902842;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VTVaCHXXcWNBK+rc5wG5//Zqd4Y/KK+Z5sqxoM/ndy4=;
 b=oKIOCYw0aPrFRjq7xnI0SKnjNG1RTNtQRBlgSJCC5wvWs7sfstYk9thi
 YhsORktkK0949yOsAeXq6D7OoZGgWtEZB+VQ84Inek/JQAcm+e620t9R1
 4uCEyb/5/q/QxDYXQ2d8f/lHx56FtCwRu1vwdoDdYykBN68oG4rn36/aq
 DRBl6VAcV91BtZ/26NlWdaE6VRo5d6HKdPXObjvfL2Vevw7g4l2vLpmKb
 PfLBmnTLlntt7DcoJxFFni6T/yk0mxbWz0o6tVOUwnRNTCEVb1Ao8Yc2w
 pY6480gn9tSUq/2m/pUBKYRZOZ077m0CElV/KiCWJDC4tZnHCHqsBkHlY A==;
X-CSE-ConnectionGUID: 8mz5ZgtGSMaTAsEBgxQGEA==
X-CSE-MsgGUID: ldUCUTGNRuGNykpOTub8Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="51416186"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="51416186"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:27:21 -0800
X-CSE-ConnectionGUID: LNnMY4wrTtGThNw7uMAwxw==
X-CSE-MsgGUID: RyGCHfJ8Sv+kMD7OvnsfeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="112655795"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.97])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:27:20 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/display: Use explicit cast in POWER_DOMAIN_*()
 macros
Date: Wed, 12 Feb 2025 10:26:37 -0300
Message-ID: <20250212132658.323640-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250212132658.323640-1-gustavo.sousa@intel.com>
References: <20250212132658.323640-1-gustavo.sousa@intel.com>
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

Let the compiler know that we are intetionally using a different enum
type to perform arithmetic with enum intel_display_power_domain in the
POWER_DOMAIN_*(). Do that by explicitly casting the macro argument to
int.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.com/
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index a3a5c1be8bab..3caa3f517a32 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -117,12 +117,12 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
 };
 
-#define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
+#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
 #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
-		((pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
+		((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
 #define POWER_DOMAIN_TRANSCODER(tran) \
 	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
-	 (tran) + POWER_DOMAIN_TRANSCODER_A)
+	 (int)(tran) + POWER_DOMAIN_TRANSCODER_A)
 
 struct intel_power_domain_mask {
 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
-- 
2.48.1

