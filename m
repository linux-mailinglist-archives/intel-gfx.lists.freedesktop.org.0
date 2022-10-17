Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A25EE601021
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 15:24:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68DC910E235;
	Mon, 17 Oct 2022 13:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15CF810E492
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 13:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666013087; x=1697549087;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ndiz5jKWy/hHXCJyf+htdIrh07/97C8mk2+1N4KJlwo=;
 b=MHwYOlgeouSvr+YIHDsw+hy5ZutSSzRWIyKYEEelpQyxVkKkvQ3weuEb
 6MfkvR2aHADf7M919V1jYH6XXlxgVfbN3X4o0kfqVX2UwXJdxoBgrilHp
 I9bqZPMhzBKeRkvnZr4rLTzXyWWMYW5jTBZSjf4/w4zEcLUzjrUv+1USh
 bzrMtgGpG4P/WqxvlMfZwXjZTNU5O9Au3nO86EjVX3ktFejyxglTaeRKz
 YQhRt4XhzMzOs083vghhsSReA4TRzG+4QxgYc93Eu7zhTV8laKoGsuKLT
 09qu2OtTTw1yZCC2oevA6VjqylD5h1pmAREPq9VQ/ZicuuX3AbUR8x6B0 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="286189010"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="286189010"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 06:24:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="957333774"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="957333774"
Received: from vnamiran-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.209.134.224])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 06:24:45 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Oct 2022 06:24:32 -0700
Message-Id: <20221017132432.112850-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Extend Wa_1607297627 to Alderlake-P
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Workaround 1607297627 was missed for Alderlake-P, so here extending it
to it and adding the fixes tag so this WA is backported to all
stable kernels.

v2:
- fixed subject
- added Fixes tag

BSpec: 54369
Fixes: dfb924e33927 ("drm/i915/adlp: Remove require_force_probe protection")
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b8eb20a155f0d..e1d5df3a5756e 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2300,11 +2300,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	}
 
 	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
-	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
+	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
 		/*
 		 * Wa_1607030317:tgl
 		 * Wa_1607186500:tgl
-		 * Wa_1607297627:tgl,rkl,dg1[a0]
+		 * Wa_1607297627:tgl,rkl,dg1[a0],adlp
 		 *
 		 * On TGL and RKL there are multiple entries for this WA in the
 		 * BSpec; some indicate this is an A0-only WA, others indicate
-- 
2.38.0

