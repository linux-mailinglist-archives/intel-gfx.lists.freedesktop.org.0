Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 872756BE78C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 12:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFAB110EEE8;
	Fri, 17 Mar 2023 11:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58F6B10EEE6
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 11:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679051123; x=1710587123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+aCaAN4kvTTfyXrfWLfnYICFJbMX8jrfWoZRYhOV/qg=;
 b=DburD9stQHl1WaSdfDShACNksOV2wxvuCg6ktNT9nSewn0QhegwRmAJJ
 ve7TkghUrop9vyEyB7whPxgO/Jm/bfbmXFtHT7dnRi40RNy/JeemTJABK
 4PvCUj5xhLywzfQgWm28N1H5jvO1LGD3X/OEUlp1ZOYRKYajTBvxxX22R
 sxG9Go5HczWAbSp+/ZT3BH9MX7/ANcmsWy3R0CxuxkC5wWYT/tyshyg9H
 D1fqgdB+OVaXr5Q8ASbZ5zyJ6S2meX7tvhGsVU3csnpAdtQixjsI26jVb
 5OpIRGiLsm84JVPg1Lq4AqpqrELYM6+hnBDVXnJ1aBZayi1AoItvFr5H1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="318634684"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="318634684"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:05:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="744517027"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="744517027"
Received: from nkiryuhi-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.188])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:05:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 13:04:36 +0200
Message-Id: <20230317110437.2780483-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230317110437.2780483-1-jouni.hogander@intel.com>
References: <20230317110437.2780483-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/psr: Check that vblank is long
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a6edd65b8edb..a385cb8dbf13 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -958,6 +958,14 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
+	if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
+	    crtc_state->hw.adjusted_mode.crtc_vblank_start < 12) {
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

