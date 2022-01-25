Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 816F149B9AA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 18:08:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6846510E36A;
	Tue, 25 Jan 2022 17:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C46C10E368;
 Tue, 25 Jan 2022 17:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643130477; x=1674666477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ArETKnG5QbGKwv1LyRiJY1fC5lpFd+YU00o2DMBVH/Q=;
 b=QbaHGFdyVWLm0Wn7I5ZVlEg1Wc/ExEgQfwwFs0PXK9CvT85faqWKUXO2
 Sbz/4+P9Kx3U7Q/JdNF4HTBAGqo51A27sPZgWJnrW9qh44GAvNZ1qMeLD
 G2wXww4Q6fP0qhl4FEKcguIEuaIAu8fBGEbQJVF6HDqrub6olTXnmFhvH
 BYbV0WvmSDZWcGpP0M39JjnpVwbA6D7fSwxkhMmsbSTb6TB/jT0sdPVnS
 RaaoNQWBA7bKXxNwSsHkCQAV3Ak+vhdlL4Vgk/RET9aH8El5w/LsXd1ae
 G0kfJ8ybiqrfTURcldQ1OL3tIF7pNsamsnjUtCkgbHSz2u4jyQudv/+zL Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="243950050"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="243950050"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 09:04:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="479564694"
Received: from skirillo-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.32.77])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 09:04:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jan 2022 19:03:42 +0200
Message-Id: <903db46b607279b4e4e16626032fea44bb990d12.1643130139.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1643130139.git.jani.nikula@intel.com>
References: <cover.1643130139.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/dp: move
 intel_dp_prepare_link_train() call
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Call it from the higher level function, as it will be shared between two
code paths.

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9451f336f28f..4e507aa75a03 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1083,8 +1083,6 @@ intel_dp_link_train_all_phys(struct intel_dp *intel_dp,
 	bool ret = true;
 	int i;
 
-	intel_dp_prepare_link_train(intel_dp, crtc_state);
-
 	for (i = lttpr_count - 1; i >= 0; i--) {
 		enum drm_dp_phy dp_phy = DP_PHY_LTTPR(i);
 
@@ -1127,6 +1125,8 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 		/* Still continue with enabling the port and link training. */
 		lttpr_count = 0;
 
+	intel_dp_prepare_link_train(intel_dp, crtc_state);
+
 	if (!intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count))
 		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
 }
-- 
2.30.2

