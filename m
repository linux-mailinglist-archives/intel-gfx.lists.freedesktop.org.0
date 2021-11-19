Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCE0457053
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 15:09:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 429996E0CB;
	Fri, 19 Nov 2021 14:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A29026E270
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 14:09:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="234248902"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="234248902"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 06:09:07 -0800
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="537111979"
Received: from sjschmid-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.22.100])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 06:09:06 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Nov 2021 06:09:31 -0800
Message-Id: <20211119140931.32791-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211119140931.32791-1-jose.souza@intel.com>
References: <20211119140931.32791-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add workaround numbers to
 GEN7_COMMON_SLICE_CHICKEN1 whitelisting
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

Those two workarounds needs to be implemented in UMD, KMD only needs
to whitelist the registers, so here only adding the workaround number
to facilitate future workaroud table checks.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index cd2935b9e7c81..c3211325c2d3e 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1869,7 +1869,11 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
 				  RING_FORCE_TO_NONPRIV_RANGE_4);
 
-		/* Wa_1808121037:tgl */
+		/*
+		 * Wa_1808121037:tgl
+		 * Wa_14012131227:dg1
+		 * Wa_1508744258:tgl,rkl,dg1,adl-s,adl-p
+		 */
 		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
 
 		/* Wa_1806527549:tgl */
-- 
2.33.1

