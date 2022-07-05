Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E8156699E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132721124A8;
	Tue,  5 Jul 2022 11:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF33C10E021;
 Tue,  5 Jul 2022 10:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657018194; x=1688554194;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rSrd0Ae/0JSEDxRd+dimy8jUuxmcwWgVGUCrAjTItTs=;
 b=EQzkCeqWHzPFjlfxCxZ+NR36h1gGx6PGrDvwBnQRfX/oR5zPX4I4ZBe1
 UZAvYMT4JfbpikgVwmAuodgwPTaMojal3RpDUkiHF22YHfzRB0KTAZEYA
 Mr+Vklx9vqSA1/Lm+NpkaSnJGfp75oDeMgl59rpHQN6Kqa2OyAnry/GOj
 3lMHN9RMkKcrUrcsIA3QwEBBYFpEVol+wOt3bW4Ut+A2IYo9Q4phoLFWV
 Y3X6ZIMASkYnnW4JO6zUzlNXTGk0ROImbc0O/73zwUKVBxQJxlltTMwzn
 t+8EDFCqjaNbjz3LIYLfDs5kSZkroDHE3dWFMKTqtQk/R0G8hEyDXcLnB g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="280874186"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="280874186"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:49:54 -0700
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="625407079"
Received: from dilipban-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.227.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:49:52 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  5 Jul 2022 11:49:45 +0100
Message-Id: <20220705104945.118962-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/gem_exec_capture: adjust the pi
 subtest
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This was broken by the kernel change: 71b1669ea9bd ("drm/i915/uapi:
tweak error capture on recoverable contexts"). Update the test to use
non-recoverable context if needed.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6350
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/gem_exec_capture.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index c2639082..a25f529b 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -721,6 +721,15 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
 
 		ctx2 = intel_ctx_create_all_physical(fd);
 		igt_assert(ctx2);
+		if (needs_recoverable_ctx(fd)) {
+			struct drm_i915_gem_context_param param = {
+				.ctx_id = ctx2->id,
+				.param = I915_CONTEXT_PARAM_RECOVERABLE,
+				.value = 0,
+			};
+
+			gem_context_set_param(fd, &param);
+		}
 
 		intel_allocator_init();
 		/* Reopen the allocator in the new process. */
-- 
2.36.1

