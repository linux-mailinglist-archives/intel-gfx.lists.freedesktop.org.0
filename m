Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E539603A64
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 09:13:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B053610F16B;
	Wed, 19 Oct 2022 07:13:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D97B10F161
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 07:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666163599; x=1697699599;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6dBjrkXQKsFz22pQeeNiRPZzaAujB/+Yrx+JTxnNa7E=;
 b=d43MgwDs/b1/PXY30RKFvD769QSDIdmFn2m1O5Bcw5Nj/X8pwUmg9n7v
 grsQCVEM7qVR7UmnK/qAO7edIaa3KRBlQNiqkmVx7lXlaUxoQ01gElH1w
 ODNEbbkOpPL+5Tk0FA1kM6c+Ark7ygJxlrh/+W/YGgE6eVWiSFIevNyef
 Hn3zT/7m7CPHDv+2Wlz0gDaWKelGxwPwDDy0EmpdrxOenC+WjjnAfc5Qh
 bOg0xU1y4NG42swXOzo/eXORIxYTXlqPzUMyHBKoiaD2Zo8tQAN1eSmlH
 xkkB6jG1XrL62GTBKECrBaZcCZYAFnlDRIwN1erojkrJrZj6FUplwXRlA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="368379878"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="368379878"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 00:13:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="623994878"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="623994878"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 00:13:15 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 09:12:52 +0200
Message-Id: <20221019071252.180682-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: add prefetch padding to
 store_dw batchbuffer
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instruction prefetch mechanism requires that 512 bytes after the last
command should be readable by EU. Otherwise DMAR errors and engine
hangs can happen.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5278
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index 3c55e77b0f1b00..fe999a02f8e10a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -50,7 +50,7 @@ igt_emit_store_dw(struct i915_vma *vma,
 	u32 *cmd;
 	int err;
 
-	size = (4 * count + 1) * sizeof(u32);
+	size = (4 * count + 1) * sizeof(u32) + 512;
 	size = round_up(size, PAGE_SIZE);
 	obj = i915_gem_object_create_internal(vma->vm->i915, size);
 	if (IS_ERR(obj))
-- 
2.34.1

