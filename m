Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CE332ACB0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 02:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 070F66E3CE;
	Wed,  3 Mar 2021 01:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED14D6E342
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 01:07:48 +0000 (UTC)
IronPort-SDR: WATAeOiSwVeoyINBJAOf6GNncWiT4w6KbNiQ8MMzSMmWDKLje3ZbO17xSEAQVdUV7pyeCS05jD
 ogId50cAnENg==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="187115121"
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="187115121"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 17:07:44 -0800
IronPort-SDR: CmkSpaQ8Vip+fKhLi5vqtVfd9Paz0+1Z7i6LNcm5lzB/mXGE0wDEy3CM6X7COeNnVmsQxtTXmz
 gvTUjFyz5J7Q==
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="518071487"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 17:07:44 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Mar 2021 17:07:27 -0800
Message-Id: <20210303010728.3605269-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210303010728.3605269-1-lucas.demarchi@intel.com>
References: <20210303010728.3605269-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Wa_14010826681 does the same as
 Wa_22010271021
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Caz Yokoyama <caz.yokoyama@intel.com>

Add a comment marking Wa_14010826681 as the same as Wa_22010271021
for easy verification.

Bspec: 54508, 52890

Cc: Clinton Taylor <clinton.a.taylor@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 9e6e405aabac..e678fa8d2ab9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1682,7 +1682,8 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 
 		/*
 		 * Wa_1606700617:tgl,dg1
-		 * Wa_22010271021:tgl,rkl,dg1, adl-s
+		 * Wa_22010271021:tgl,rkl,dg1,adl-s
+		 * Wa_14010826681:tgl,dg1
 		 */
 		wa_masked_en(wal,
 			     GEN9_CS_DEBUG_MODE1,
-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
