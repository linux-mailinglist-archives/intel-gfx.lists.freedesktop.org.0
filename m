Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A930DAD7C76
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 22:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E83210E1AD;
	Thu, 12 Jun 2025 20:35:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oJ2p9ZTm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06FF910E1A7;
 Thu, 12 Jun 2025 20:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749760500; x=1781296500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EIElUrKFkDwdELXFYGaGoOXmRj25eCe35unOEGEe7No=;
 b=oJ2p9ZTm+qQm0c2aLDONA5H37S5JZQxBYD4eoELDACVnEoFQrHXTNs40
 tzXufE/LAKVTYqVtzOop1qWYsaFRZggpYhEsECm5J1fthiaYEzztnsar+
 XyZLBKRtPjrjrOSGAIllN9Zp9LOFfh4Bi6V5ZN1Z/vLRHXskXDQOJukSx
 6KqVLyggs80w73MujRVk30IctVW+7gwaQk9swAG8qJcYNgE5Fji1sfA8e
 JGKL5gIGPwHbO192c1UEjTZPopTuU8xZP34axxp3NlEg1rE2/pcJzNGmT
 SYnqGkypAN4PMVMbLcS2TRfSiF/inXcpRRLRfC478FcZ/ib1SV3f7rB7n A==;
X-CSE-ConnectionGUID: BFVSRrtZQsSc5lzNZ1QQdA==
X-CSE-MsgGUID: NUGfIKuSQSq+i58h8ohM5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52106973"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52106973"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:35:00 -0700
X-CSE-ConnectionGUID: 12xIjnVoQp2jewxNCk1ouQ==
X-CSE-MsgGUID: ivXt1gVsQ9W2x7GTKZBH4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148520073"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa009.fm.intel.com with ESMTP; 12 Jun 2025 13:34:58 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Atwood <matthew.s.atwood@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v5 5/9] drm/i915: Set max cdclk for display 30.02
Date: Fri, 13 Jun 2025 02:04:44 +0530
Message-Id: <20250612203448.2948795-6-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
References: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
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

From: Matt Atwood <matthew.s.atwood@intel.com>

Display version 30.02 has a lower max cdclk rate than 30.00.

Bspec: 68861
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 38b3094b37d7..1cbb1d526fe8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3386,7 +3386,9 @@ static int intel_compute_max_dotclk(struct intel_display *display)
  */
 void intel_update_max_cdclk(struct intel_display *display)
 {
-	if (DISPLAY_VER(display) >= 30) {
+	if (DISPLAY_VERx100(display) >= 3002) {
+		display->cdclk.max_cdclk_freq = 480000;
+	} else if (DISPLAY_VER(display) >= 30) {
 		display->cdclk.max_cdclk_freq = 691200;
 	} else if (display->platform.jasperlake || display->platform.elkhartlake) {
 		if (display->cdclk.hw.ref == 24000)
-- 
2.34.1

