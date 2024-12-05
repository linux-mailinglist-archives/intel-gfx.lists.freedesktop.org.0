Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AB09E5417
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 12:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DC5610E3B6;
	Thu,  5 Dec 2024 11:37:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g6xSkfNS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C084310E3B6
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 11:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733398621; x=1764934621;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HgK2+bsPxJ9oOzk81WLzDaJKEbO2LBFP/qgudkbYFA8=;
 b=g6xSkfNS0WjrLamFIcWhEy0hzTJEGMzvHIco//uUqxGJbyrP79jzYcxv
 Vt62QIuVXniikS5xEz2MwWMXY6ZgCAqfD+mRFg5Py3ejLNpw5VsOWK52T
 3lVFvXrvzW7RI6pR927YR64OEzsOUdvbH8fyBK7/qmAwBuLkwLGWhs/fY
 hMQiGHQ72g/UpdlauHn+er3Qw6U9xAlMhYi67CkPZBxtLZSfAIEobwtZW
 rzr+/k+8C2//z/nhC9UiPzQrYSi5hc0GtkRP1L/FXKFQ4AtwsIGMLNPZv
 Od3YwMNkkVgm6xbqwpE1Rbxqw+CB+7/yxBaJwe/FiZx4wVYqaGBJFHdqa A==;
X-CSE-ConnectionGUID: xvADdWlRSum/0vV3MW5ubw==
X-CSE-MsgGUID: u22ydlNSS2O+nzDBH08O/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33589189"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="33589189"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 03:37:00 -0800
X-CSE-ConnectionGUID: 2b7LxiJkRUaipf9QyKmQaQ==
X-CSE-MsgGUID: +MmCCWfqTxyLzoadVVlwGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="93962767"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa009.jf.intel.com with ESMTP; 05 Dec 2024 03:36:59 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chris.p.wilson@intel.com,
	andi.shyti@intel.com,
	nitin.r.gote@intel.com
Subject: [PATCH v1 1/1] drm/i915/gt: Increase a time to retry RING_HEAD reset
Date: Thu,  5 Dec 2024 17:27:36 +0530
Message-Id: <20241205115736.1420991-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Issue is seen again where engine resets fails because the engine resumes
from an incorrect RING_HEAD. So, increase a time if at first the
write doesn't succeed and retry again.

Fixes: 6ef0e3ef2662 ("drm/i915/gt: Retry RING_HEAD reset until it get sticks")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 32f3b52a183a..bc9f28524713 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -231,7 +231,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	set_pp_dir(engine);
 
 	/* First wake the ring up to an empty/idle ring */
-	for ((kt) = ktime_get() + (2 * NSEC_PER_MSEC);
+	for ((kt) = ktime_get() + (50 * NSEC_PER_MSEC);
 			ktime_before(ktime_get(), (kt)); cpu_relax()) {
 		/*
 		 * In case of resets fails because engine resumes from
-- 
2.25.1

