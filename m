Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB73B5FCE69
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 00:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3571F10E286;
	Wed, 12 Oct 2022 22:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB1210E1B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 22:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665613681; x=1697149681;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cYPDCOInneXwwrjNdmY2F5CVY9oCekHkqztJ43HDOwY=;
 b=ZxuZch+GQwj+mBQRdLPgbkH84TmryGbhcxgQ514rD72Mv/Te8YrcHXHP
 6X1TD3ATlkrRK+QHvROPqFZ0of7cDINV8B2bYVMyN2oDYWAzzGxlHkDR9
 bsQf9Q8dQs5Y+07WsFYj7lHMEdgnU1PZekNUTeTV+8cIZWq35N3ss6Ncp
 80l9qlUb8vHNgL5EJuPAx3P3luUKTUgb2v6Qcm7wDngP3oQLGyWQJjwOt
 Au6U3grz1wrMBj9/TTEX92Evyypexr5xZT0mll+mfxZWbiV42B0W2Emiu
 Bc7cIFiCcspnRjyxl3TeAZ86x/dUmJH3PlMGp7gE2/+ME+Cb9+CEMeKgu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="288191115"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="288191115"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="660097677"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="660097677"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Wed, 12 Oct 2022 22:27:36 +0000
Message-Id: <20221012222739.27296-14-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 13/16] drm/i915/perf: Save/restore EU flex
 counters across reset
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

If a drm client is killed, then hw contexts used by the client are reset
immediately. This reset clears the EU flex counter configuration. If an
OA use case is running in parallel, it would start seeing zeroed eu
counter values following the reset even if the drm client is restarted.
Save/restore the EU flex counter config so that the EU counters can be
monitored continuously across resets.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 657f0beb8e06..6d9996e24cce 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -376,6 +376,14 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 	for (i = 0; i < GEN9_LNCFCMOCS_REG_COUNT; i++)
 		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
 
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL0, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL1, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL2, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL3, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL4, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL5, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL6, false);
+
 	return ret ? -1 : 0;
 }
 
-- 
2.25.1

