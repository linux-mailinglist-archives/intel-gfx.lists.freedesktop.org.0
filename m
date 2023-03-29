Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ADE6CEC73
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 17:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 938E010EB2B;
	Wed, 29 Mar 2023 15:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E0010EB25
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680102675; x=1711638675;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q5C5FRyVA0pdIY5t+Zl8AUe9aGcMjKWPXxm8xPMVWMo=;
 b=X91UMLfe/WEPAXYeVc6Y9zoiarkUmkpMB9HDGGWUt+MwwKvkyE+xWJwO
 CvXFAYpeImDs2Uv6KvI9BtrirRLQGsl1Nyl0ptqHSCBn+RZEXHGkCYG4F
 /9GJJ2hKW21Y/lh+KVXwEpdsUCizWV8cLwbsG07DUZkMwt4DXxuGImG5/
 4tTarFMYiGw8rdipZUnQ2egZMkcTAXIRWUWcU5EFpUbaIWX/o0Ktca4Xl
 1R6I9y5WQT7J33Uv06ePe/hSmyY0lHwF0NzAix2eB+McWO7zlPLPI6j6W
 FyYdgYxVgRaVr+rNEqxCoJq8spWNtSzoPrOOapL6MNryjstdiJz7RsFaX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="368672933"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="368672933"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="753626069"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="753626069"
Received: from pgarraul-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.223.204])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 18:07:02 +0300
Message-Id: <20230329150703.432072-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230329150703.432072-1-jouni.hogander@intel.com>
References: <20230329150703.432072-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 5/6] drm/i915/psr: Check that vblank is long
 enough for psr2
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

Ensure vblank >= psr2 vblank
where
Psr2 vblank = PSR2_CTL Block Count Number maximum line count.

Bspec: 71580, 49274

v2: Use calculated block count number maximum line count

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 07b0c016e78a..446c8acc265b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -968,6 +968,15 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
+	if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
+	    crtc_state->hw.adjusted_mode.crtc_vblank_start <
+	    psr2_block_count_lines(intel_dp)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR2 not enabled, too short vblank time\n");
+		return false;
+	}
+
 	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
 		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
 		    !HAS_PSR_HW_TRACKING(dev_priv)) {
-- 
2.34.1

