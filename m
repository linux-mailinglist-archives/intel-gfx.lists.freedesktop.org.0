Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8073F63B5EE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 00:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5C610E355;
	Mon, 28 Nov 2022 23:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C1510E346;
 Mon, 28 Nov 2022 23:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669678223; x=1701214223;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=awQ2n/Ud7CtZyl2Lym+ycmv+VNKC5OMB2RlaX2/DgEQ=;
 b=TKaJn4ucrZk6JFAFj7HB847tvU6IS6F0gC635CSzB30qB7PHZ9kb4RKI
 hIndaGpmrX8zu6tk9a6t4u+RQOLhBAvO4dMGbrTlq312mU6stJqVUM+dD
 nMKw/VMwUq/tyTvGJ1yaWrabuSM0vKiS06JJsQTaAXKXVE+tt5MSqgrcz
 xJLRDXmTU14klIDx0wRw8l40FptCZ5zG6A2xXvZ22WsAhu/ieAi3pf7MV
 UNM3djdZSMws2wB64I7/UTkFcJ7W3A8QpPugj4FFA/5rz5mu8ujM/yz9i
 7XCR2uFRtUUtMUKPS3nsopD7o/dUPeMhCBkmdjLcZ/nv20s0IbsMQjHuD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="302556670"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="302556670"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 15:30:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="706982245"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="706982245"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 15:30:23 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 15:30:10 -0800
Message-Id: <20221128233014.4000136-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221128233014.4000136-1-matthew.d.roper@intel.com>
References: <20221128233014.4000136-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915/gt: Correct kerneldoc for
 intel_gt_mcr_wait_for_reg()
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The kerneldoc function name was not updated when this function was
converted to a non-fw form.

Fixes: 192bb40f030a ("drm/i915/gt: Manage uncore->lock while waiting on MCR register")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index d9a8ff9e5e57..ea86c1ab5dc5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -702,7 +702,7 @@ void intel_gt_mcr_get_ss_steering(struct intel_gt *gt, unsigned int dss,
 }
 
 /**
- * intel_gt_mcr_wait_for_reg_fw - wait until MCR register matches expected state
+ * intel_gt_mcr_wait_for_reg - wait until MCR register matches expected state
  * @gt: GT structure
  * @reg: the register to read
  * @mask: mask to apply to register value
-- 
2.38.1

