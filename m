Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LyHKz6L5mlRyAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:23:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A651433A97
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE13D10EB5D;
	Mon, 20 Apr 2026 20:23:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FKKeRsQY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 775B910EB5D;
 Mon, 20 Apr 2026 20:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776716604; x=1808252604;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SffsjP3W3XQyjzn0y85jq1NSRkXHFoBMyVjrGJNqLM4=;
 b=FKKeRsQYyL2L2HPodvY6ZDgrlfx0/XS9c45/lXmUaCoDjlVWJ9YsTiGN
 eQMTJ8xlQJ2YpCNJjRvOmvHGSvM+FEkOWzzf7609rdyQUXjZO6eQSx/yn
 9OjjwBTnH0Cgtn/yOP/CqvDXrdxKg3fpVWLkQII+WcyCELIlKJBVBmCtj
 DPvQU1PzOxI9JfR4AqpsRHK4U34nEw2f7om6ILE9Stimnwqj33W7vvXtD
 qDCkmD8bkcWHnymW03ghKNlVeEIRu98PhVdm0XNoV6Eoxtp3EZ2LvKHSP
 jG+AT8/Hn7RWtdZA7jxGdudjl7uXp8+MrNMVTD/9Bb9BX6x+//hJXtJ1M g==;
X-CSE-ConnectionGUID: DxCXLh7JR2CoUzDB/M1Snw==
X-CSE-MsgGUID: cMt/o+ozS3mdVqyXvb+SDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77765269"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="77765269"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 13:23:24 -0700
X-CSE-ConnectionGUID: 2rZhjdAKT8icjxqnfQYywg==
X-CSE-MsgGUID: Geg/9fpvQ8SHIra1jHBSTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="231736636"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.229])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 13:23:22 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v4 8/8] drm/i915: remove HAS_PCH_NOP() dependency from clock
 gating
Date: Mon, 20 Apr 2026 23:22:16 +0300
Message-ID: <20260420202252.3846880-9-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420202252.3846880-1-luciano.coelho@intel.com>
References: <20260420202252.3846880-1-luciano.coelho@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 6A651433A97
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

intel_pch_init_clock_gating() already handles unsupported PCH types,
including PCH_NOP, by doing nothing.

Drop the explicit HAS_PCH_NOP() check from the IVB clock gating
path and always call the display helper directly. This removes one
more direct dependency on display-side PCH macros from
intel_clock_gating.c.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/intel_clock_gating.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index c27b6f9266b1..86bdeb20f427 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -31,7 +31,7 @@
 #include <drm/intel/mchbar_regs.h>
 
 #include "display/intel_display_clock_gating.h"
-#include "display/intel_display_core.h"
+#include "display/intel_pch.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_mcr.h"
@@ -290,8 +290,7 @@ static void ivb_init_clock_gating(struct drm_i915_private *i915)
 	intel_uncore_rmw(&i915->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
 			 GEN6_MBC_SNPCR_MED);
 
-	if (!HAS_PCH_NOP(display))
-		intel_pch_init_clock_gating(display);
+	intel_pch_init_clock_gating(display);
 
 	gen6_check_mch_setup(i915);
 }
-- 
2.53.0

