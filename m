Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7D66AC809
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 17:32:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C848410E405;
	Mon,  6 Mar 2023 16:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29E3810E3FF;
 Mon,  6 Mar 2023 16:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678120370; x=1709656370;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=tWIS1fDOoAR997SIfPLRFSn5hDKzRRgGJcW8CcVa3mw=;
 b=RxuB9jrQ36H7qpxArGFTmF+Atr0DxOXlJIHvjP3aYZA6qhUHdUylWLcF
 pTWk12YHbQb3H4pDA9LlwUEechgxkMP7ArST6cILSxv3zZktzKjYKh8wr
 td4y/2ckzIuVY2lz0h7lNYtpLidZ9lQh2Sik9c8qlbt/WE1kFFQphRwsX
 DfySHFGs4Jh1Md9ZMqyKs80hZKNiLkGTolQaycq2zyyKiBlrs8h5rfJ8k
 uSMobpTPLzeKjFNLIhvmVODbmQL4naAfjx4luC9Zv+C+LnDPGYpG1Y1Mf
 eB8MPtv1W5Ho27rsZQR+sQsMNiL4UQZE9cg9wGddfeyg5uVBFwxYcIaT4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="315998813"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="315998813"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 08:32:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="745132975"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="745132975"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 08:32:46 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 06 Mar 2023 17:32:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230224-track_gt-v4-8-464e8ab4c9ab@intel.com>
References: <20230224-track_gt-v4-0-464e8ab4c9ab@intel.com>
In-Reply-To: <20230224-track_gt-v4-0-464e8ab4c9ab@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-Mailer: b4 0.11.1
Subject: [Intel-gfx] [PATCH v4 08/10] drm/i915: Correct type of wakeref
 variable
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
Cc: netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Dumazet <edumazet@google.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wakeref has dedicated type. Assumption it will be int
compatible forever is incorrect.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 978820f8697059..c35f551193c9ad 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3235,7 +3235,7 @@ static void destroyed_worker_func(struct work_struct *w)
 	struct intel_guc *guc = container_of(w, struct intel_guc,
 					     submission_state.destroyed_worker);
 	struct intel_gt *gt = guc_to_gt(guc);
-	int tmp;
+	intel_wakeref_t tmp;
 
 	with_intel_gt_pm(gt, tmp)
 		deregister_destroyed_contexts(guc);

-- 
2.34.1
