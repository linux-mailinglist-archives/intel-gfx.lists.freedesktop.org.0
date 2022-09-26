Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EE75EB3A6
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 23:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12CE210E7CA;
	Mon, 26 Sep 2022 21:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5D7710E7CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 21:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664229272; x=1695765272;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EYOIFs2ihha7avZ+vjfcCRcdVjxoVF0LQHLlwEHIdaI=;
 b=F48CQPZCklM8q1G1+y9YmxWauIw5I5yHYKTRHE0NOjCzEeaMIjwaxKO9
 nHyWNppbKHbtGBtEAjk3Y1UYiv3pfVvHA954y75BLD5PoZ7dtd2to2wxy
 hok4qpAnxkN7IE0fKhF1jQVvJfI5/UjIbZ/wR4Rsow/BToJrJra6znmi8
 m+trSBW8cne8hBx4CcXxXWwlSU2grNVIL0E0nH65olVadxeAFGEJAyLrN
 p4CbVPtANICerGWWBeb58nlZrircNrzDt6IEqrdLgG/9X97reY4MJT9Dl
 fNNqktReWATka+rfRCNQ8/l+lbkHcgEh/xgC2Od9LvWpWdSGavYI47iYZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="387440986"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="387440986"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 14:54:31 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="683710291"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="683710291"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 14:54:29 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 23:54:09 +0200
Message-Id: <20220926215410.2268295-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: do not capture error state on
 exiting context
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
Cc: chris@chris-wilson.co.uk, Andrzej Hajda <andrzej.hajda@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Capturing error state is time consuming (up to 350ms on DG2), so it should
be avoided if possible. Context reset triggered by context removal is a
good example.
With this patch multiple igt tests will not timeout and should run faster.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 22ba66e48a9b01..cb58029208afe1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4425,7 +4425,8 @@ static void guc_handle_context_reset(struct intel_guc *guc,
 	trace_intel_context_reset(ce);
 
 	if (likely(!intel_context_is_banned(ce))) {
-		capture_error_state(guc, ce);
+		if (!intel_context_is_exiting(ce))
+			capture_error_state(guc, ce);
 		guc_context_replay(ce);
 	} else {
 		drm_info(&guc_to_gt(guc)->i915->drm,
-- 
2.34.1

