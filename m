Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE4A645C53
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 15:20:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EBD10E3B9;
	Wed,  7 Dec 2022 14:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9746B10E3B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 14:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670422844; x=1701958844;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JkNPgUi+V8v050j/tgUwj0eaBZaPZXTOIInyRDuwDZs=;
 b=jb+qjITHjIGJHuWYHCVyYz/BeWgLX/ajW8IGrax45gpiLvlWQqeMc6UH
 4BZq+gV8rngU1fwsxAJFIlDwYf0ArALIaK9eIlJPSs7YIiNDDiKJ/LSmQ
 x1ZVrsfoiGtG9k0gL2fM+aFOmMmt3sLORFU3w3GiXW3jWHhbMMFFibmqL
 yKvqbKtUfWlQoNt7NlhbJHWq9AgkONOE7DZesLZVOqy+RdB/6wJBb8mw9
 GEHa67prsOeXh21mbktpcMohTRkjWtgXKqPSN/j2LNatQ6jo79KXuepfN
 Y92SF/62yKkcA7Hi8P5pYEj00RY+lECapgt9Un47RB3I5eRW1mSo+RNQN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="318757638"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="318757638"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 06:20:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="753113297"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="753113297"
Received: from kstrozan-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.5.34])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 06:20:17 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 14:19:13 +0000
Message-Id: <20221207141913.210995-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/migrate: fix corner case in CCS aux
 copying
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
Cc: Shuicheng Lin <shuicheng.lin@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the case of lmem -> lmem transfers, which is currently only possible
with small-bar systems, we need to ensure we copy the CCS aux state
as-is, rather than nuke it. This should fix some nasty visual corruption
sometimes seen on DG2 small-bar systems, when also using DG2_RC_CCS_CC
for the surface.

Fixes: e3afc690188b ("drm/i915/display: consider DG2_RC_CCS_CC when migrating buffers")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Shuicheng Lin <shuicheng.lin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 37 +++++++++++++++++++------
 1 file changed, 29 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index b405a04135ca..e25de6a8e04c 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -829,14 +829,35 @@ intel_context_migrate_copy(struct intel_context *ce,
 			if (err)
 				goto out_rq;
 
-			/*
-			 * While we can't always restore/manage the CCS state,
-			 * we still need to ensure we don't leak the CCS state
-			 * from the previous user, so make sure we overwrite it
-			 * with something.
-			 */
-			err = emit_copy_ccs(rq, dst_offset, INDIRECT_ACCESS,
-					    dst_offset, DIRECT_ACCESS, len);
+			if (src_is_lmem) {
+				/*
+				 * If the src is already in lmem, then we must
+				 * be doing an lmem -> lmem transfer, and so
+				 * should be safe to directly copy the CCS
+				 * state. In this case we have either
+				 * initialised the CCS aux state when first
+				 * clearing the pages (since it is already
+				 * allocated in lmem), or the user has
+				 * potentially populated it, in which case we
+				 * need to copy the CCS state as-is.
+				 */
+				err = emit_copy_ccs(rq,
+						    dst_offset, INDIRECT_ACCESS,
+						    src_offset, INDIRECT_ACCESS,
+						    len);
+			} else {
+				/*
+				 * While we can't always restore/manage the CCS
+				 * state, we still need to ensure we don't leak
+				 * the CCS state from the previous user, so make
+				 * sure we overwrite it with something.
+				 */
+				err = emit_copy_ccs(rq,
+						    dst_offset, INDIRECT_ACCESS,
+						    dst_offset, DIRECT_ACCESS,
+						    len);
+			}
+
 			if (err)
 				goto out_rq;
 
-- 
2.38.1

