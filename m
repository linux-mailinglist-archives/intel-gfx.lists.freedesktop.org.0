Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FA546F382
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 19:57:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E8410E234;
	Thu,  9 Dec 2021 18:57:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB49D10E234;
 Thu,  9 Dec 2021 18:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639076240; x=1670612240;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QMRY9/2Sg/dLApOz+9TkX5plCaAnhLuG1/KEB7LeElI=;
 b=HYSBVLubWNjS400FeY6hv5A/Q07Vu/scQCmhkD67SD/2H4DSiMdWBhsO
 Ka9v1XU0IlyHBBWr8+UvoPI6aPRuF+zN5+gp0XO4LLsdr8ykZ6eQRoNtb
 KEx6KTEXgN+d/hpcQY/5aRV94o9j+qGGoIBVG74bn/t0ynFex70XYWRad
 OUSr5IajZzBmstT03Otev2IPd9WrI8Q9JES/qARnLi4wc4WAkb4CX7p7S
 7xIpwkj+A3SgBgJHAp4k9Sqz+PBPY5jiFrdEijpEHwbE9tKHGlxhWtjIt
 yLvPHXTRlteb+QmrRQsBcbMOnoULFQ9MyKfCKDeuO6TzbmwQS7ymxI2sx w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="237988229"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="237988229"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 10:57:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="612630549"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 10:57:08 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  9 Dec 2021 10:51:41 -0800
Message-Id: <20211209185141.21292-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Remove racey GEM_BUG_ON
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

A full GT can race with the last context put resulting in the context
ref count being zero but the destroyed bit not yet being set. Remove
GEM_BUG_ON in scrub_guc_desc_for_outstanding_g2h that asserts the
destroyed bit must be set in ref count is zero.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 9b7b4f4e0d91..0f99bb83293a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1040,8 +1040,6 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 
 		spin_unlock(&ce->guc_state.lock);
 
-		GEM_BUG_ON(!do_put && !destroyed);
-
 		if (pending_enable || destroyed || deregister) {
 			decr_outstanding_submission_g2h(guc);
 			if (deregister)
-- 
2.33.1

