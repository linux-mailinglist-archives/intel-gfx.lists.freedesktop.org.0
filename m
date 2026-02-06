Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NCoEM/lhWnCHwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:59:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EF6FDCE1
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:59:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E68FF10E138;
	Fri,  6 Feb 2026 12:59:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XNYwbEFG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF7C110E080
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Feb 2026 12:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770382795; x=1801918795;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fpD0oJcbx/351/OVL5SDkSXl4Mdq+mrWhy1h4qTLRw0=;
 b=XNYwbEFGZBmhdcYqCNMy76dg7Ucu+J37zcaq7B5KBs4EsQnXkryU9ZaM
 /2TUHjKS3iS4tgqdU3a6ygjg8Ck88rW5dESQg5aBM0YWg8f41q5OxhvSL
 eL2ehr7u7LT+oVXM3IzLhf6pyJ8rPxDqOxjwuYz2FhAtxZ+A0O6IxnmHG
 KlF4LnXzNL97mv43RFsFukBzDjHV7yVGK8sCr+BWggM5f7N+9eFucAkXV
 I220DE6D+KCp9lp4bxwBZ3+Rlw1wckQ2T2Hbpm0+TtBTfLAXP0dz56Oq/
 hFnDYxo+VuVNEDt1K2JPPvxrjaoujx1XXUNt8XH6E/t2RTqoe27qtgEwa w==;
X-CSE-ConnectionGUID: ya8aIUf9R5aTdT6sHWnU5A==
X-CSE-MsgGUID: eS+wYSKwSmG1Q9D0x7Cpcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82956848"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="82956848"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:59:54 -0800
X-CSE-ConnectionGUID: 1gKb3imdRzSEi/Cck5ALjw==
X-CSE-MsgGUID: 0WekwC6RTU+1r92lIToEqg==
X-ExtLoop1: 1
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.129])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:59:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/overlay: remove dead code with MTL platform checks
Date: Fri,  6 Feb 2026 14:59:49 +0200
Message-ID: <20260206125949.243643-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C1EF6FDCE1
X-Rspamd-Action: no action

Commit c5741c5c1122 ("drm/i915/display: Do not use stolen on MTL") added
some checks for MTL in overlay code. However, this is never run on
MTL. Clean it up.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 88eb7ae5765c..ae2a3527645f 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1358,12 +1358,11 @@ static int get_registers(struct intel_overlay *overlay, bool use_phys)
 {
 	struct intel_display *display = overlay->display;
 	struct drm_i915_private *i915 = to_i915(display->drm);
-	struct drm_i915_gem_object *obj = ERR_PTR(-ENODEV);
+	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	int err;
 
-	if (!display->platform.meteorlake) /* Wa_22018444074 */
-		obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
+	obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
 	if (IS_ERR(obj))
-- 
2.47.3

