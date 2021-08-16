Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE473ED827
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 15:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A571889FC8;
	Mon, 16 Aug 2021 13:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A9E89EEB;
 Mon, 16 Aug 2021 13:57:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="279607077"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="279607077"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 06:56:59 -0700
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="441091179"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 06:56:59 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <daniel.vetter@ffwll.ch>
Date: Mon, 16 Aug 2021 06:51:30 -0700
Message-Id: <20210816135139.10060-14-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210816135139.10060-1-matthew.brost@intel.com>
References: <20210816135139.10060-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/22] drm/i915/guc: Reset LRC descriptor if
 register returns -ENODEV
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

Reset LRC descriptor if a context register returns -ENODEV as this means
we are mid-reset.

Fixes: eb5e7da736f3 ("drm/i915/guc: Reset implementation for new GuC interface")
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 8d45585773f3..3a01743e09ea 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1399,10 +1399,12 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 	} else {
 		with_intel_runtime_pm(runtime_pm, wakeref)
 			ret = register_context(ce, loop);
-		if (unlikely(ret == -EBUSY))
+		if (unlikely(ret == -EBUSY)) {
+			reset_lrc_desc(guc, desc_idx);
+		} else if (unlikely(ret == -ENODEV)) {
 			reset_lrc_desc(guc, desc_idx);
-		else if (unlikely(ret == -ENODEV))
 			ret = 0;	/* Will get registered later */
+		}
 	}
 
 	return ret;
-- 
2.32.0

