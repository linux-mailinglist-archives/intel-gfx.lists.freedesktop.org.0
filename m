Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eL8HNNBc1Wl/5QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 21:36:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF243B3BFE
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 21:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D49010E4B2;
	Tue,  7 Apr 2026 19:36:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kqy3Tey1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60B8F10E4AE;
 Tue,  7 Apr 2026 19:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775590605; x=1807126605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KcQc7Uhow7v4eg6cTcihvy2wp0brQ8h1gPLFU9q2bVw=;
 b=Kqy3Tey1mmA4a6mbilIiZJ9QcdrcadDg5jkC0Pqp+aEb0y0PP+iD6zr/
 0jIm3Ryj+0tn+Yr/JBzB87LS6CO7gfve2d3CFb2ZjHMA4oNqQZGCtezoK
 fiPo6Ly1wAo6amVJsX7bhLnSOlh+T1kJ1XUBGCpqK9qb1K2pyugWAKxi5
 FYgfWr0mEMkVk1FX2q1FD7dTqiqe0G2ND7YnetidkgllU2hIYCxMFqnzr
 YrEKtzeYO1LD3f9zHJMv85KersB0H3nCHD4Ef505n4jyXP/TWy3dn5qSI
 V2TaNDji4ljLIoVYB1wEa/AtguqKOcWB08qjLgs9TaRzCokjRucNZo38I Q==;
X-CSE-ConnectionGUID: cpPlJO1FT6mVELzF0gjZPA==
X-CSE-MsgGUID: DX1Pk1bARwGlZt9m175SRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80424021"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="80424021"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 12:36:45 -0700
X-CSE-ConnectionGUID: DBvECtArRXySe5XUaVZo3g==
X-CSE-MsgGUID: CV52+UM3Qj+g8drvrLMO9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="227419447"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 12:36:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/5] drm/i915/mchbar: drop unnecessary intel_mchbar_regs.h
 include
Date: Tue,  7 Apr 2026 22:36:27 +0300
Message-ID: <7eaf98e648240e3011bfb85d0330787074c39205.1775590536.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1775590536.git.jani.nikula@intel.com>
References: <cover.1775590536.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 8BF243B3BFE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There are some unnecessary includes. Remove.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 1 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 1 -
 drivers/gpu/drm/i915/gvt/handlers.c           | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index babaf16e72f2..adf2512e2ed5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -19,7 +19,6 @@
 #include "intel_gt_pm_debugfs.h"
 #include "intel_gt_regs.h"
 #include "intel_llc.h"
-#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_rc6.h"
 #include "intel_rps.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index fa9af08f9708..a75f05ff1110 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -16,7 +16,6 @@
 #include "i915_wait_util.h"
 #include "intel_guc_print.h"
 #include "intel_guc_slpc.h"
-#include "intel_mchbar_regs.h"
 
 /**
  * DOC: SLPC - Dynamic Frequency management
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index a34f56630af9..9f61867e2478 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -71,7 +71,6 @@
 #include "i915_drv.h"
 #include "i915_pvinfo.h"
 #include "i915_reg.h"
-#include "intel_mchbar_regs.h"
 #include "sched_policy.h"
 
 /* XXX FIXME i915 has changed PP_XXX definition */
-- 
2.47.3

