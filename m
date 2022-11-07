Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 224D861FF7E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 21:24:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F29910E448;
	Mon,  7 Nov 2022 20:24:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2964B10E448
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 20:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667852666; x=1699388666;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EaA9C2ayT8T1CFQ5a6uFwM1tRn+E0cXWo9WNjSZUI20=;
 b=Dmwh7tZypCGhjLqtMHFlw8GKwAFMHufDH2TxrdDKJN9izUaYIySXS4bG
 q4CSkV+ZVaYDQW1/OhYA89FrD5hRifYNeLlmdU5Ew43wHvLLEGQGZdEf1
 MWdbakfiE1IFOv6JI7BhUy8TsMr1v5DrtD0pMNP1SJ5emBB62x/E1VKM3
 VOG7uFzP92sKv1xfPsiZq3ahqPbs23WBYrUv+ylGKYed1etUvLkLaPwdL
 qmFmVBe0nSl6dCeObf7sYgos1IeS5E1ODG94fV5B4hUy8/VvuS5p5794c
 KNOAX0iOjC/NnnI22tcNyBIeIDC/Y2t0HLtlHRPle5s//i6iRJT/LaEm9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="312303076"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="312303076"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 12:24:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="587113453"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="587113453"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 12:24:15 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 12:24:10 -0800
Message-Id: <20221107202410.1976895-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Fix kernel-doc warning
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

Fix kernel-doc issue from a previous commit.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Fixes: 2db609c01495 ("drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops")
---
 drivers/gpu/drm/i915/i915_perf_types.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index e0c96b44eda8..ca150b7af3f2 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -146,8 +146,8 @@ struct i915_perf_stream {
 	 */
 	struct intel_engine_cs *engine;
 
-	/*
-	 * Lock associated with operations on stream
+	/**
+	 * @lock: Lock associated with operations on stream
 	 */
 	struct mutex lock;
 
-- 
2.36.1

