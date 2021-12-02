Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 556DF4669B7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 19:15:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92CD26EB21;
	Thu,  2 Dec 2021 18:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A0496EAA0;
 Thu,  2 Dec 2021 18:15:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236575940"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="236575940"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 10:15:39 -0800
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="477995732"
Received: from cmichel-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.25.51])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 10:15:38 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Dec 2021 18:15:11 +0000
Message-Id: <20211202181515.2794397-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211202181515.2794397-1-matthew.auld@intel.com>
References: <20211202181515.2794397-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/migrate: fix offset calculation
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ensure we add the engine base only after we calculate the qword offset
into the PTE window.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index d553b76b1168..cb0bb3b94644 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -284,10 +284,10 @@ static int emit_pte(struct i915_request *rq,
 	GEM_BUG_ON(GRAPHICS_VER(rq->engine->i915) < 8);
 
 	/* Compute the page directory offset for the target address range */
-	offset += (u64)rq->engine->instance << 32;
 	offset >>= 12;
 	offset *= sizeof(u64);
 	offset += 2 * CHUNK_SZ;
+	offset += (u64)rq->engine->instance << 32;
 
 	cs = intel_ring_begin(rq, 6);
 	if (IS_ERR(cs))
-- 
2.31.1

