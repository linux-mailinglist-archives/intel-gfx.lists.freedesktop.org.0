Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC6A676190
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Jan 2023 00:29:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99E110EB2B;
	Fri, 20 Jan 2023 23:29:00 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8D1E10EB23;
 Fri, 20 Jan 2023 23:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674257330; x=1705793330;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NZ6L9RYHczTAmmUkpMQxggbG7ytl0rIzwE0gQkol4Vw=;
 b=euL5rn0zTjkKYLiXfunQmRjuPJWgqwd+w+oO7vrpcjUjSyuSknKUwrmd
 QlUcUf+mihDyDj5J7VaNwh9YfepcNx2NvmbEYB/WHvSMA9qWl9YhYali3
 TI8SEi9PXPxndwCjnZp7FY1ZbB1jPDmkP3w9OHh90j1MjvB20hjzcM92U
 lggCRFq/qEpqZ8wQg6cthbrn4h7kcnye/7W5Im7IVNKqxF7oUUUz2ht35
 q19psK4j7ClDwQQ8Xy+3ACzpcuZxI1S65ue5XZp5mNPpYXzMNPgnFlGqw
 wbSMJPi0DQ5NwzesAyb2XlRLRN/NXOnfnqpFPEyBfdRShQSqX/SOWO6mv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="324413568"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="324413568"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 15:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="693021625"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="693021625"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga001.jf.intel.com with ESMTP; 20 Jan 2023 15:28:49 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri, 20 Jan 2023 15:28:30 -0800
Message-Id: <20230120232831.28177-7-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230120232831.28177-1-John.C.Harrison@Intel.com>
References: <20230120232831.28177-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 6/7] drm/i915/guc: Add a debug print on GuC
 triggered reset
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

For understanding bug reports, it can be useful to have an explicit
dmesg print when a reset notification is received from GuC. As opposed
to simply inferring that this happened from other messages.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index b6b4061e4b633..b11d98092ffd1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4666,6 +4666,10 @@ static void guc_handle_context_reset(struct intel_guc *guc,
 {
 	trace_intel_context_reset(ce);
 
+	drm_dbg(&guc_to_gt(guc)->i915->drm, "Got GuC reset of 0x%04X, exiting = %d, banned = %d\n",
+		ce->guc_id.id, test_bit(CONTEXT_EXITING, &ce->flags),
+		test_bit(CONTEXT_BANNED, &ce->flags));
+
 	if (likely(intel_context_is_schedulable(ce))) {
 		capture_error_state(guc, ce);
 		guc_context_replay(ce);
-- 
2.39.0

