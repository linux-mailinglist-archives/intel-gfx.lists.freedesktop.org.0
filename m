Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFQ0JxNOBGrNGgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 12:10:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAA55312D3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 12:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4910510EDD4;
	Wed, 13 May 2026 10:10:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iX86Llvo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22BEA10EDD1;
 Wed, 13 May 2026 10:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778667024; x=1810203024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t9TbpCBRVDFUjiN+pAfbpJjXJMPdQAzhAct3nnejYbM=;
 b=iX86Llvo8R0UYsDMgJuqlDfWqE0QL9zEfvH8imHxrRSkREb7eExSn2a9
 WVya1LKR8tNbqiIrFkMKOvbr/axo5LSKeAg3+ZW1GLknts0slZ9keaKf8
 5ZegIZ7ft5TsqkttXEu4FP6mCKxSSr1/ez6KUxNInK0figgZFw9k8Oa7U
 /cajbWxrOCYc/RZ/LgAzcpzGOPfLlfTB84nTWWd5jCHy/sPdw2Pro7WQS
 +arlbh5ZkveRLBEbbPrG81MIRxiEtlHVc3Gt+btSbyvGXvkk/zR+NLh1j
 ZdxwUd7eK2M1AOUyKI4e/zLuohTnMrnZMWyWZW1cLlcFcF22WoUWKQojb A==;
X-CSE-ConnectionGUID: PKnHvBqGQxa5tgzwihJ+uw==
X-CSE-MsgGUID: xaMU9A3aT2mDhP1mPTSSMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90973159"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="90973159"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 03:10:24 -0700
X-CSE-ConnectionGUID: ERDcq16OSB+C9U1jqe5/cw==
X-CSE-MsgGUID: 3g6QDgsfSzCo5RNNivwkZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="233770359"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.102])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 03:10:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v3 2/6] drm/i915/irq: constify pipe stats parameters
Date: Wed, 13 May 2026 13:10:07 +0300
Message-ID: <679387717b7d086174676714db5aa5eed8ef1643.1778666967.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1778666967.git.jani.nikula@intel.com>
References: <cover.1778666967.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 4BAA55312D3
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

The pipe stat irq handling doesn't need to modify the pipe stats
arrays. Make them const.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_irq.h | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index bf4b5e7b6011..d30b063714b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -597,7 +597,7 @@ void i9xx_pipestat_irq_ack(struct intel_display *display,
 }
 
 void i915_pipestat_irq_handler(struct intel_display *display,
-			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
+			       u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
 {
 	bool blc_event = false;
 	enum pipe pipe;
@@ -621,7 +621,7 @@ void i915_pipestat_irq_handler(struct intel_display *display,
 }
 
 void i965_pipestat_irq_handler(struct intel_display *display,
-			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
+			       u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
 {
 	bool blc_event = false;
 	enum pipe pipe;
@@ -648,7 +648,7 @@ void i965_pipestat_irq_handler(struct intel_display *display,
 }
 
 void valleyview_pipestat_irq_handler(struct intel_display *display,
-				     u32 pipe_stats[I915_MAX_PIPES])
+				     const u32 pipe_stats[I915_MAX_PIPES])
 {
 	enum pipe pipe;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index e2b1674fae06..d25b9ea4272b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -78,9 +78,9 @@ void i915_disable_pipestat(struct intel_display *display, enum pipe pipe, u32 st
 
 void i9xx_pipestat_irq_ack(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
 
-void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
-void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
-void valleyview_pipestat_irq_handler(struct intel_display *display, u32 pipe_stats[I915_MAX_PIPES]);
+void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
+void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
+void valleyview_pipestat_irq_handler(struct intel_display *display, const u32 pipe_stats[I915_MAX_PIPES]);
 
 void vlv_display_error_irq_ack(struct intel_display *display, u32 *eir, u32 *dpinvgtt);
 void vlv_display_error_irq_handler(struct intel_display *display, u32 eir, u32 dpinvgtt);
-- 
2.47.3

