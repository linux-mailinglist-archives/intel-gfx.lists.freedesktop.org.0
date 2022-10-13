Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 316735FE0BA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 20:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8779A10E303;
	Thu, 13 Oct 2022 18:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3D310E31B
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 18:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665684886; x=1697220886;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hjFV5sYjBF6I8wPCtSn9ETztiLwqcp0+jiSCcVtt5mk=;
 b=H2MECbgIi88c01jX17CAYMnoMC74eMdjQQ9tOgNRI1XbIcGomyPOeWtH
 zoIGfHBXOV3tQ+tlKcTPn2GIUoRkwNVdFa0/t8LrUeyF+Z7u9yNOtuq1O
 6RfyxkLMwCmz+BFe5XOpibVr8SfpKKBppxEeexTrcdiEpnP1/mtYmTSyn
 MxgD+WZwFUkTBsCTIGIYxmQTjZK81E/LIPaD7xvEK90EJOFHhHs0rsISm
 4DsETX1o0z5CaN88yeMDsdr8mhQHTLwZabL9CRBB6noV2gcyutZ9OB/Y6
 KYgPjhQt+ADhfQ29j1y4YzgGIuQtwM4038JjONrQjIpNEvXGr1kRt9TVK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="367183586"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="367183586"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 11:14:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="769732446"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="769732446"
Received: from josouza-mobl2.fso.intel.com ([10.230.19.147])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 11:14:35 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Oct 2022 11:14:26 -0700
Message-Id: <20221013181426.306746-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915: Extend Wa_1607297627 to Alderlake-P
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

BSpec: 54369
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

