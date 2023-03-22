Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E58676C4780
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 11:22:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E3310E8F1;
	Wed, 22 Mar 2023 10:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 548FC10E8EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 10:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679480556; x=1711016556;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OpIohCV9mSvEJbVx+JWExw1ShEEITey9w9M4p7itJnY=;
 b=jPkUxaP2WzecAH8HK/RGNE9tSZWk2lP0AGvWc+3M/nQyVtM7MUiI4paR
 4r1siY09KaKLFklT+7vtKdv5CWykmAbCsZYMl453YEym700azilFxxGfe
 Uwfl0VCL+YCBGIHzKu/DODS5JAtYDIdkcbGSNhCyuAyoNg4dbhOZK5+nL
 In4edA8eTFj2MLeonpSi6W1cLIUKq+zWw2ulqJ0ZqnMpiJo6cyBkkhqEq
 U5VRjVuzhrpZqITZ99h0ns9fw4J1wjLkvi/aoPDsx2T1l2GXPFgrxnC0M
 F25bXnnxQqlrMHYY2yHQIk98XZqbEevKZhhYvLiYtZrKmWIJYeVxSvdCf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340714799"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340714799"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:22:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="1011309829"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="1011309829"
Received: from swcompto-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.36])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:22:34 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 12:22:03 +0200
Message-Id: <20230322102204.116056-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322102204.116056-1-jouni.hogander@intel.com>
References: <20230322102204.116056-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/5] drm/i915/psr: Check that vblank is long
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
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4b7c946a9a25..b53c71c06105 100644
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

