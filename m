Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1928A90844
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 18:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4349F10E0F9;
	Wed, 16 Apr 2025 16:05:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kKUHx8cp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD27410E070
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 16:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744819504; x=1776355504;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yFWjMxs3Gc+h7rrfOJsLgfQi2YuAQqe9WcGSFEDuKfc=;
 b=kKUHx8cp2Knj5O8em7YDwNLnTL5R8zSxhofapLJ5FBXNDGvQGIfA4D1x
 ilNpxGB3PyXt/TZpwhnbwV8Oe+Rru1VmuPg/dvRfNDSZG+UPOcnSvcJKW
 OnZKFjbPnPG554G3x8onPz9YdctMJt1WMUMuRe74XGf4WDbEYRZTYeO5q
 ti2fPgFeYcoapHLD01KwlEClTLAW9PcADloy58eCAFdiMKstEWpvpNTvf
 QbUBWjwNty0kLlh35coWyRuwinWNlP8zw9LRTJ5A5B49k3AMJzWxVuCTf
 xhdt01xHKoYzuf+STgi7i6KKy/nZHKrIn2LfJugwFgBd5po52CQYte/1i g==;
X-CSE-ConnectionGUID: rTLhvxvCRGKDDi8mviEQ9Q==
X-CSE-MsgGUID: MPjhDqHTQ4CePzgAirE5KA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46390538"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="46390538"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 09:04:58 -0700
X-CSE-ConnectionGUID: cfkbLg6SSmmCaGOSuESUNA==
X-CSE-MsgGUID: zC76jfIbTwCqC3UE6x8I6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="131428850"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 09:04:56 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>
Subject: [PATCH v2] drm/xe/pxp: do not queue unneeded terminations from debugfs
Date: Wed, 16 Apr 2025 09:04:49 -0700
Message-ID: <20250416160449.1293068-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The PXP terminate debugfs currently unconditionally simulates a
termination, no matter what the HW status is. This is unneeded if PXP is
not in use and can cause errors if the HW init hasn't completed yet.
To solve these issues, we can simply limit the terminations to the cases
where PXP is fully initialized and in use.

v2: s/pxp_status/ready/ to avoid confusion with pxp->status (John)

Fixes: 385a8015b214 ("drm/xe/pxp: Add PXP debugfs support")
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4749
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/xe/xe_pxp_debugfs.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pxp_debugfs.c b/drivers/gpu/drm/xe/xe_pxp_debugfs.c
index ccfbacf08efc..525a2f6bb076 100644
--- a/drivers/gpu/drm/xe/xe_pxp_debugfs.c
+++ b/drivers/gpu/drm/xe/xe_pxp_debugfs.c
@@ -66,9 +66,18 @@ static int pxp_terminate(struct seq_file *m, void *data)
 {
 	struct xe_pxp *pxp = node_to_pxp(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
+	int ready = xe_pxp_get_readiness_status(pxp);
 
-	if (!xe_pxp_is_enabled(pxp))
-		return -ENODEV;
+	if (ready < 0)
+		return ready; /* disabled or error occurred */
+	else if (!ready)
+		return -EBUSY; /* init still in progress */
+
+	/* no need for a termination if PXP is not active */
+	if (pxp->status != XE_PXP_ACTIVE) {
+		drm_printf(&p, "PXP not active\n");
+		return 0;
+	}
 
 	/* simulate a termination interrupt */
 	spin_lock_irq(&pxp->xe->irq.lock);
-- 
2.43.0

