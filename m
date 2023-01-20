Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3115674892
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 02:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ADC510E371;
	Fri, 20 Jan 2023 01:07:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B68A10E371
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 01:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674176852; x=1705712852;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1pP86+KusGyHK+ybvYbW364xwSE84xit+k1E1CBKEec=;
 b=k8d2NhlDLX3EBT3cTB7eeUrZBHI+kn5V0vomg4A+3NCs1pKJjkmGENmI
 1PsulfExM6LkfzKzYaF296tOqmEOIBDShe46SAw1+U8rgEU/wzkZgFbQs
 1IuEiNegoGQImF66bWHwAOVS0H7nryAcFxdCenSNpd29E70HZDnHVtBiw
 gGcbqsAMK8Nb5HVGDnjWEBruga8jDSGo8fws/JPlEk8AbDCDco7fr0vfj
 fp6imw4Idbb+JxYlj6jgZXmWqyDf9oGkZZtq7tQ0RauSQO/sy3B4Nohg8
 ruOYpZvAJk2xM+nckPFAij1T37vszOrCTSlWUgpUatUl6QUamehH+zRro w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="324161367"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="324161367"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 17:07:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="637976680"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="637976680"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 17:07:31 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Jan 2023 17:06:39 -0800
Message-Id: <20230120010639.3691331-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230120010639.3691331-1-radhakrishna.sripada@intel.com>
References: <20230120010639.3691331-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add Wa_22015279794
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

This patch adds the workaround to disable IC prefetch.

Original Author: Madhumitha Tolakanhalli Pradeep
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index c52c5f9ad9ce..47ff4ca2bd61 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1677,6 +1677,10 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
 		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
 
+	/* Wa_22015279794: mtl-p[a0] */
+	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
+		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
+				 ENABLE_PREFETCH_INTO_IC);
 	/*
 	 * Unlike older platforms, we no longer setup implicit steering here;
 	 * all MCR accesses are explicitly steered.
-- 
2.34.1

