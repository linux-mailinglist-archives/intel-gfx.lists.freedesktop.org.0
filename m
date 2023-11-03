Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 337BA7E01BA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 12:09:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B75710E54B;
	Fri,  3 Nov 2023 11:09:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1ABE10E54B
 for <Intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 11:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699009768; x=1730545768;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P2sfapWyYFCTwd1rlWKG3mEhhOSOofsyfQ5FaL6WQZU=;
 b=JPnhsnmTH2R3dhakrVlHGgm/Z9+Vp+H6owEdTzqvIZ0kCLiCSeDltk8/
 t+qFJYsJ6QqfAtrNMw8RNnNlTge2usOZoH1qE7vUxOMQ4wJp/ivU8VH3w
 7r7i+z2RyOBwP2tIsTFPLoy3+B5Vp38W6tqry8odJUUMOVNPrt0JLnhMM
 pTPf3bZHyX1uQ8tJb9hZAkCUQVSQisk3g7C6ScuaR04o27zqP8fF7t7KN
 IteypiXrJoZ5P5Cgyrvk9udi2RP5DNvnqHAZs6jRCr3RT7t24whT/8bwN
 kJdTVYVbe+7Fzkww470RCEypJsyTaQ7BCOiiBc9oaULyYJKZPSbQP5MTK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="455416490"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="455416490"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 04:09:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="796592520"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="796592520"
Received: from sdobbela-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.223.51])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 04:09:27 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  3 Nov 2023 11:09:22 +0000
Message-Id: <20231103110922.430122-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915: Fix potential spectre vulnerability
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

From: Kunwu Chan <chentao@kylinos.cn>

Fix smatch warning:
drivers/gpu/drm/i915/gem/i915_gem_context.c:847 set_proto_ctx_sseu()
warn: potential spectre issue 'pc->user_engines' [r] (local cap)

Fixes: d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle create parameters (v5)")
Cc: <stable@vger.kernel.org> # v5.15+
Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 9a9ff84c90d7..e38f06a6e56e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -844,6 +844,7 @@ static int set_proto_ctx_sseu(struct drm_i915_file_private *fpriv,
 		if (idx >= pc->num_user_engines)
 			return -EINVAL;
 
+		idx = array_index_nospec(idx, pc->num_user_engines);
 		pe = &pc->user_engines[idx];
 
 		/* Only render engine supports RPCS configuration. */
-- 
2.39.2

