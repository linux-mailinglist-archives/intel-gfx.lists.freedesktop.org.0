Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C096ADA93
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 10:43:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EA8210E112;
	Tue,  7 Mar 2023 09:43:03 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B37B10E112
 for <Intel-GFX@lists.freedesktop.org>; Tue,  7 Mar 2023 09:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678182182; x=1709718182;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tcsBDoFjS+YmXo0ocUMsl1jYJoN7SYV/PTCmzTwgZ+k=;
 b=TUdd8nXG9p5N/kPpZoRivL61wvtKuF8benT4jzzNOE1YEf3A8BwQdt9o
 cCUwZiP6PHWCHlYGEuibUYm/TNv+CRFrcMl8In58/QkA2xFrS8m8gVUz/
 2K6baTsXGXRafuqN8Ysq1bIduoDS7cDP8172rTkzcjRF19KtUefeCa2TF
 Kj/CLEbAYrLFhwQkLeiZGSTJ1sdtht2A2vihs0XfCe1diZUTaH/sxgU42
 vlFQ4+B1MmbnRDxAW5SnTQsDj9KigDueSoj/LiU68NsdJyki8gjd3Tg0N
 5HGIGLHYEjKIsEJP86Lw0R0RsYkMGJPJWKoSRC1xzDRNIv11BAaY0rC8H g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="316210000"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="316210000"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 01:43:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="800337647"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="800337647"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga004.jf.intel.com with ESMTP; 07 Mar 2023 01:43:00 -0800
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue,  7 Mar 2023 15:16:43 +0530
Message-Id: <20230307094643.532271-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] drm/i915/selftest: Remove avoidable init assignment
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

We can skip the assignment and i915 variable
altogether and use refernce directly. Also used at
single place only.

Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 7a27aba3da8a..a9b79888c193 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1117,9 +1117,8 @@ static int live_empty_request(void *arg)
 
 static struct i915_vma *recursive_batch(struct intel_gt *gt)
 {
-	struct drm_i915_private *i915 = gt->i915;
 	struct drm_i915_gem_object *obj;
-	const int ver = GRAPHICS_VER(i915);
+	const int ver = GRAPHICS_VER(gt->i915);
 	struct i915_vma *vma;
 	u32 *cmd;
 	int err;
-- 
2.25.1

