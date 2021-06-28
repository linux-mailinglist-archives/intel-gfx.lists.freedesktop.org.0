Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 946DF3B6316
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 16:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7C66E48B;
	Mon, 28 Jun 2021 14:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973966E487
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Jun 2021 14:49:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="269097985"
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="269097985"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 07:49:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="456358351"
Received: from kbommu-nuc8i7beh.iind.intel.com ([10.145.162.97])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jun 2021 07:49:16 -0700
From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Jun 2021 20:08:28 +0530
Message-Id: <20210628143829.22995-4-krishnaiah.bommu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
References: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] Klock work Fix for possible memory leak in
 intel_execlists_submission.c
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index cdb2126a159a8..a4673900af0e0 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3847,6 +3847,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 err_put:
 	intel_context_put(&ve->context);
+	kfree(ve);
 	return ERR_PTR(err);
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
