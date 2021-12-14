Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B53A447490B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 18:14:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8DFC10E1FB;
	Tue, 14 Dec 2021 17:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA4B910E126;
 Tue, 14 Dec 2021 17:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639502070; x=1671038070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+t+IYa+onmrRcxvOJjKYFtf3l6LDynZbl3ClATBruNA=;
 b=mcMN2wQ2Mn/ztjcPn9UJG3jJI8wjRXMoGkmonpVm9msXV6+FaMvQsaKj
 fECx3pwB9pY2Iz8GqKuje87uh+YpQmG7hE5Tw+4sWYW6qeKbwCPERKTmX
 75WXYRkhS8W3KAj+WPp8z4BnBMeUEkKWNWE596asifMmWy7HKb1vGfqT6
 yyzc7HULGgnuWx0o/8ISePJGnmxexOgd9IeWMjiqr0gFBovMHtrVs1Hjo
 NwsFhs70B+S3WyKP9LyHKmesRwNtSmHk2uDOmR0ZyomWajQFvzMYhhZL7
 OleHbvQSfFIP+/6X/5Bg/DSgdBUqKsQTI756VB7nl2hFrrL8aWojHa4+N Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="219043202"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="219043202"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 09:10:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="614357549"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 09:10:26 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 14 Dec 2021 09:04:56 -0800
Message-Id: <20211214170500.28569-4-matthew.brost@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211214170500.28569-1-matthew.brost@intel.com>
References: <20211214170500.28569-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/guc: Remove racey GEM_BUG_ON
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

A full GT reset can race with the last context put resulting in the
context ref count being zero but the destroyed bit not yet being set.
Remove GEM_BUG_ON in scrub_guc_desc_for_outstanding_g2h that asserts the
destroyed bit must be set in ref count is zero.

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 0fb2eeff0262..36c2965db49b 100644
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

