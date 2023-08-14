Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 179EE77C141
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 22:06:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB42C10E0F1;
	Mon, 14 Aug 2023 20:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9994010E0D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 20:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692043601; x=1723579601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S4CUectUMAkQJyXZR1kX6g2PT1HJkLU7d2xWaClEjXU=;
 b=L+7MdSJDHxSjmoCKvjz+dm9cwJV9cN9it1dpHc2FJPhTWyF/zHLZU1mM
 nSGg1Jvho7LqD0ccUq7fNpJdtDC1bHfcnPt1r5I4DVcqJslIMoYghIcvi
 nzeKqQfLiN3kkoWIOsT9eWuNUxc5fn/hTInElxFNnuLsiX/Q7EoxRhIjf
 HFvyZrAeJ3ZDbudmMGj2lUzHjRNZg1LMOQ86roGcwKTf2Ej58YZ7aqlJ+
 YDyuhIxF3iQLOg2yKjS4XsAG4Bk16gxayvZQqNRE1iXdgfyFc9ifHpD57
 q+5ua/OnQ7ZeAIkA162GVd1GAIUTNeZ7G+xJyoHLHYciN4Gh2HaygtLL6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="369602867"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="369602867"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="683420483"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="683420483"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 13:06:35 -0700
Message-ID: <20230814200632.56105-13-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230814200632.56105-11-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/9] drm/i915/xelpmp: Don't assume
 workarounds extend to future platforms
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The currently implemented Xe_LPM+ workarounds are specific to media
version 13.00.  When new IP versions show up in the future, they'll need
their own workaround lists.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3ae0dbd39eaa..3108ad1d6207 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1818,10 +1818,10 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 	gt_tuning_settings(gt, wal);
 
 	if (gt->type == GT_MEDIA) {
-		if (MEDIA_VER(i915) >= 13)
+		if (MEDIA_VER_FULL(i915) == IP_VER(13, 0))
 			xelpmp_gt_workarounds_init(gt, wal);
 		else
-			MISSING_CASE(MEDIA_VER(i915));
+			MISSING_CASE(MEDIA_VER_FULL(i915));
 
 		return;
 	}
-- 
2.41.0

