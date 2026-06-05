Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QwCCNqvzImqlfgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 18:04:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A4964993A
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 18:04:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NQoT1lup;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1404310E654;
	Fri,  5 Jun 2026 16:04:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C9410E654;
 Fri,  5 Jun 2026 16:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780675497; x=1812211497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ygkjwjM3g1z5Tnfy4bQVwzZ/PgH5nt027mkPgrIqBNI=;
 b=NQoT1lupQZpxYwEFWgU70z2+zIzvBA42ZXPgkKsvk38yclPKBDvS3Te9
 z0VlltccCxgqdKRjHTvfenlQG7ozGSTFjpJ1moA1LymauZ5T9c37Bt1JE
 ivOObGcbuEHi94vMrLuAq6XIQZXuXaFCgXwxTSEPK9YPO+vathLd7BWBZ
 nhlZLfKIzuKBPUFQ25D4NDvlkJwwSOUYS86Y1PhKKku5hFb/DWF+eukRc
 AMbQPSWLLPXG6jFV2QuPdW6QnCaaGUAQLnQV7PzqSUPqxZYFIrXrpVlJo
 MKl/mrQcQQXjhm+NyBToVhDV5JOR7xpQllHhuz9o5rQ2/bI7qL73t8I3A A==;
X-CSE-ConnectionGUID: mV87VVt+RF+uoLVRr7Z6EQ==
X-CSE-MsgGUID: F9rsxdLTSWmwI6jjp0y9jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="98928787"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="98928787"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 09:04:57 -0700
X-CSE-ConnectionGUID: l0bmUZegTjeumw6lTPDazA==
X-CSE-MsgGUID: LX5IPLrPSdyPEJlI8F4QeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="268566321"
Received: from osgc-sh-dragon.sh.intel.com ([10.239.81.44])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 09:04:54 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 raag.jadav@intel.com
Subject: [PATCH 4/5] drm/{i915,
 xe}: Refactor generic_handle_irq_safe() error messages
Date: Sat,  6 Jun 2026 00:04:43 +0800
Message-ID: <20260605160444.3833295-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260605160444.3833295-1-jonathan.cavitt@intel.com>
References: <20260605160444.3833295-1-jonathan.cavitt@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 83A4964993A

Currently, all but one uses of generic_handle_irq_safe() report error
messages using .*_err_ratelimited() error reporting helper functions.
These helper functions declare their error messages in the following
form:

"error handling [COMPONENT NAME] irq: %d\n"

.*_err_ratelimited() already logs "error" as a part of the error
message, so declaring the error is redundant.  Reword it.

v2:
- Use drm_err_ratelimited() correctly (jcavitt)

v3:
- Use xe_err_ratelimited() instead (Jadav)
- Split into patch series (jcavitt)

Suggested-by: Raag Jadav <raag.jadav@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_gsc.c            | 2 +-
 drivers/gpu/drm/xe/xe_heci_gsc.c               | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 022ad18044bf..e756ed1d1132 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -265,7 +265,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
 	ret = generic_handle_irq_safe(display->audio.lpe.irq);
 	if (ret)
 		drm_err_ratelimited(display->drm,
-				    "error handling LPE audio irq: %d\n", ret);
+				    "failed to handle LPE audio irq: %d\n", ret);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index 050d909fb4f8..c2d76b0bc5fe 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -286,7 +286,7 @@ static void gsc_irq_handler(struct intel_gt *gt, unsigned int intf_id)
 
 	ret = generic_handle_irq_safe(gt->gsc.intf[intf_id].irq);
 	if (ret)
-		gt_err_ratelimited(gt, "error handling GSC irq: %d\n", ret);
+		gt_err_ratelimited(gt, "failed to handle GSC irq: %d\n", ret);
 }
 
 void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir)
diff --git a/drivers/gpu/drm/xe/xe_heci_gsc.c b/drivers/gpu/drm/xe/xe_heci_gsc.c
index d716371fbbe9..477004058834 100644
--- a/drivers/gpu/drm/xe/xe_heci_gsc.c
+++ b/drivers/gpu/drm/xe/xe_heci_gsc.c
@@ -223,7 +223,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
 
 	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
 	if (ret)
-		xe_err_ratelimited(xe, "error handling GSC irq: %d\n", ret);
+		xe_err_ratelimited(xe, "failed to handle GSC irq: %d\n", ret);
 }
 
 void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
@@ -243,5 +243,5 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
 
 	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
 	if (ret)
-		xe_err_ratelimited(xe, "error handling GSC irq: %d\n", ret);
+		xe_err_ratelimited(xe, "failed to handle GSC irq: %d\n", ret);
 }
-- 
2.53.0

