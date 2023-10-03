Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BDD7B7335
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 23:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F5410E31E;
	Tue,  3 Oct 2023 21:19:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63F410E31E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 21:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696367971; x=1727903971;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TKied/IC7PD++g0wDjlHM6jTQtjPxBFGG8dmyOIHYVI=;
 b=Dkq8cUEi/l+catt+9MK8RYMo38W0HpIvuueg25JX4lUGqRh9QLuNBeJU
 KdiQo6SsYMu/KyMaePLuqktxWbhBDapXzk/ANejq9WF29KJQZO3bLFd7H
 gfyS7VQb8gdTOD2PbBmSX78tzEMCund8NUvH+zFSNokvhmmUsQhyECY50
 kmQtwA795P2oe2cU/lHxPIA82IduulYnrsaSVPN85OCUGnbqVIsZ9j2FP
 j7vfICfapjWkz5oWx8HRdMd3q/cYfbwxTmHD38gOorlSxbHiUv/fWEfk0
 JUjWyD1Pr0TVhr4BMoqZ6GZQsQJfFVacDdLl1fGCS2Nf4wLe3rOJegGXn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="368038627"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="368038627"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 14:19:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="727774244"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="727774244"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 14:19:22 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 14:08:40 -0700
Message-Id: <20231003210840.1173401-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Increase MCR lock timeout
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
Cc: gregory.f.germano@intel.com, saurabhg.gupta@intel.com,
 jonathan.cavitt@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Increase the timeout MCR waits for the steering semaphore
in intel_gt_mcr_lock by a factor of 10.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 326c2ed1d99bb..e3f7fb1248809 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -378,7 +378,7 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
 	 */
 	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
 		err = wait_for(intel_uncore_read_fw(gt->uncore,
-						    MTL_STEER_SEMAPHORE) == 0x1, 100);
+						    MTL_STEER_SEMAPHORE) == 0x1, 1000);
 
 	/*
 	 * Even on platforms with a hardware lock, we'll continue to grab
-- 
2.25.1

