Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC05A3FBA1A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 18:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1CC089B03;
	Mon, 30 Aug 2021 16:26:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A529489CDD
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 16:26:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="279318071"
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="279318071"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 09:26:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="497802579"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga008.fm.intel.com with ESMTP; 30 Aug 2021 09:26:12 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Mon, 30 Aug 2021 21:52:40 +0530
Message-Id: <20210830162240.3891502-9-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V3 8/8] drm/i915/selftest: Remove Renderer class
 check for l3cc table read
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

Some platform like XEHPSVD does not have Renderer engines. since
read_l3cc_table() is guarded by renderer class due to that check
of L3CC table was not being performed on those platforms.

Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_mocs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index 2b0207dfbf21c..05f5c57f82699 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -281,7 +281,7 @@ static int check_mocs_engine(struct live_mocs *arg,
 	offset = i915_ggtt_offset(vma);
 	if (!err)
 		err = read_mocs_table(rq, arg->mocs, &offset);
-	if (!err && ce->engine->class == RENDER_CLASS)
+	if (!err)
 		err = read_l3cc_table(rq, arg->l3cc, &offset);
 	if (!err)
 		err = read_aux_regs(rq, aux, &offset);
@@ -296,7 +296,7 @@ static int check_mocs_engine(struct live_mocs *arg,
 	vaddr = arg->vaddr;
 	if (!err)
 		err = check_mocs_table(ce->engine, arg->mocs, &vaddr);
-	if (!err && ce->engine->class == RENDER_CLASS)
+	if (!err)
 		err = check_l3cc_table(ce->engine, arg->l3cc, &vaddr);
 	if (!err)
 		err = check_aux_regs(ce->engine, aux, &vaddr);
-- 
2.26.2

