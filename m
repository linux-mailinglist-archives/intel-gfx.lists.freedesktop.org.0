Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UInMLH90ymmB9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 15:02:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6678D35B94C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 15:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F6910E76B;
	Mon, 30 Mar 2026 13:02:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dsUTQaAI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AD410E76B;
 Mon, 30 Mar 2026 13:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774875772; x=1806411772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dKJNEmqnoCMZ/IrFMCTcypFVG0Zbea0AvUy3HlyP1Lw=;
 b=dsUTQaAIq+9RQmnkOgGSetrQnbIPFugXkk79vNji9zBoS+QII7ngAEh+
 3FJ20iHH7G5/Rt81IydvKR0tkKBanE5nc9Vy/c6oTA3Qe5gtENWCfNzbX
 6jijx82McsgFY5WNKbSW9oIMm2d019Wb8FaulYWz6U+ISeDEBgRWe0ASD
 Hzbgvau4CIkkAaOAn+33hnKPhWmw94uwz6aqEDTxhSfK710ElDlkUMKx2
 m/CH1/HTEhSL0eMowstCDZ3/ifLgJQk3lsRS4CNzDfdfH1JkmBJEHIg2g
 ie4qCP6xHP3Zbnznl8k3uY69GHkxEdYcFhmwaiLlpSt8zuNjEWzQK3bJK A==;
X-CSE-ConnectionGUID: LCNkbqoTR+e3B2QVM8PnJA==
X-CSE-MsgGUID: mEALqsPOT92EKSTCls8xow==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="79767828"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="79767828"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:02:52 -0700
X-CSE-ConnectionGUID: kpG/TtqwSoqKCwn2y4jJBA==
X-CSE-MsgGUID: i17dFXppTCW5IZpqp1Z4HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="256560152"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:02:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/xe/step: switch from enum xe_step to intel_step naming
Date: Mon, 30 Mar 2026 16:02:35 +0300
Message-ID: <87530eaa2052ae4a3c97c7fb87e261d1f73341a7.1774875688.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1774875688.git.jani.nikula@intel.com>
References: <cover.1774875688.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 6678D35B94C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove the xe_step macro, and use the enum intel_step name directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/tests/xe_pci.c  | 4 ++--
 drivers/gpu/drm/xe/xe_step.c       | 2 +-
 drivers/gpu/drm/xe/xe_step.h       | 4 ++--
 drivers/gpu/drm/xe/xe_step_types.h | 2 --
 4 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/tests/xe_pci.c b/drivers/gpu/drm/xe/tests/xe_pci.c
index f3179b31f13e..860409c579f8 100644
--- a/drivers/gpu/drm/xe/tests/xe_pci.c
+++ b/drivers/gpu/drm/xe/tests/xe_pci.c
@@ -131,12 +131,12 @@ static const char *subplatform_prefix(enum xe_subplatform s)
 	return s == XE_SUBPLATFORM_NONE ? "" : " ";
 }
 
-static const char *step_prefix(enum xe_step step)
+static const char *step_prefix(enum intel_step step)
 {
 	return step == STEP_NONE ? "" : " ";
 }
 
-static const char *step_name(enum xe_step step)
+static const char *step_name(enum intel_step step)
 {
 	return step == STEP_NONE ? "" : xe_step_name(step);
 }
diff --git a/drivers/gpu/drm/xe/xe_step.c b/drivers/gpu/drm/xe/xe_step.c
index d0f888c31831..fb9c31613ca7 100644
--- a/drivers/gpu/drm/xe/xe_step.c
+++ b/drivers/gpu/drm/xe/xe_step.c
@@ -278,7 +278,7 @@ void xe_step_gmdid_get(struct xe_device *xe,
 	case STEP_##name:	\
 		return #name;
 
-const char *xe_step_name(enum xe_step step)
+const char *xe_step_name(enum intel_step step)
 {
 	switch (step) {
 	STEP_NAME_LIST(STEP_NAME_CASE);
diff --git a/drivers/gpu/drm/xe/xe_step.h b/drivers/gpu/drm/xe/xe_step.h
index 41f1c95c46e5..ea36b22cc297 100644
--- a/drivers/gpu/drm/xe/xe_step.h
+++ b/drivers/gpu/drm/xe/xe_step.h
@@ -18,8 +18,8 @@ void xe_step_pre_gmdid_get(struct xe_device *xe);
 void xe_step_gmdid_get(struct xe_device *xe,
 		       u32 graphics_gmdid_revid,
 		       u32 media_gmdid_revid);
-static inline u32 xe_step_to_gmdid(enum xe_step step) { return step - STEP_A0; }
+static inline u32 xe_step_to_gmdid(enum intel_step step) { return step - STEP_A0; }
 
-const char *xe_step_name(enum xe_step step);
+const char *xe_step_name(enum intel_step step);
 
 #endif
diff --git a/drivers/gpu/drm/xe/xe_step_types.h b/drivers/gpu/drm/xe/xe_step_types.h
index 808385f81804..f60572b93523 100644
--- a/drivers/gpu/drm/xe/xe_step_types.h
+++ b/drivers/gpu/drm/xe/xe_step_types.h
@@ -10,8 +10,6 @@
 
 #include <drm/intel/step.h>
 
-#define xe_step intel_step
-
 struct xe_step_info {
 	u8 platform;
 	u8 graphics;
-- 
2.47.3

