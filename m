Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBACB6CD6C4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 11:46:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2919B10EA6D;
	Wed, 29 Mar 2023 09:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF6BA10EA6C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680083193; x=1711619193;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mzFA7yNLicpvnP9Y/ehVkHe29hm8yAPbc9Xa0A2uBM4=;
 b=GY4cTa8i5wtIgTclxecL9+WWuSJ6zm0SUdGFeEssYQfYgSj0gS/XDDbK
 0Mi4FDRp+fkzrxgrBz4X1KaYEDVsfHHzs/NzcaMBcDsRH1LFX9txjU1cv
 ka6iIrGPZnZMQW8J3xvl4knlmFFe0EqihR0WQJgnlDWSe1+sYijBtU6TX
 kAWRMcT9lTZRK7elkStGfB6l36lhLzg5iwc17OLXEtGsTFlwgWLHKA75e
 M8fG21XVMpKaJF6yjJtZj7auyJee6aVnQk9x9P78+WGluoncBIOEP1ROl
 0NjqWlY345lMjp6t8i4ksJRQOgUvzAJjMoCd9hNKR6wIemx3w2Yiq2jbz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="342424905"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="342424905"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 02:46:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="677724785"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="677724785"
Received: from pgarraul-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.223.204])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 02:46:09 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 12:45:31 +0300
Message-Id: <20230329094532.221450-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230329094532.221450-1-jouni.hogander@intel.com>
References: <20230329094532.221450-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 5/6] drm/i915/psr: Check that vblank is long
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
index 28d06e347fe6..f86d9f83429f 100644
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

