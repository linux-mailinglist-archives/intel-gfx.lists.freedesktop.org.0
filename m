Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AANfORQ4n2m5ZQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:57:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE2A19BDF3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:57:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB4FA10E7EA;
	Wed, 25 Feb 2026 17:57:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IDUlZ8w7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3072C10E80E;
 Wed, 25 Feb 2026 17:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772042257; x=1803578257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B/O/PRLz6Ea1GKEFhzKwtVVkAQVnxtrWQ8rUO2140+E=;
 b=IDUlZ8w7tbPdR4cDo0cFkVKHRDEDd8MOViLD4tzsZD7SpMbx/uLQxKSw
 odekgtT9GOJhbpLB82fewzLz6cC0j+aX3/bbYk9mCb6RZcVxelLQIPuuB
 XfNzje/QXvr75vN+YHiKajEd6I5Anu/zh4BZJYbXy+n6WFQGHKXuLQPC5
 fBnX9EAUdkMzEAjcnhKUanvnHClTLbLA2IxPhBUCpoT+PwtmVojmsrhsM
 EcOJmo8liq057L99AUOVzpxsLk877Y/yb1tJ3FdcvOCrlMpqtBvUWpe7B
 Gbr+zdth9A0QjlubcTpiCkGb/hIHvb+cKs57ru6M9dYNzC3hlYuLUidsU Q==;
X-CSE-ConnectionGUID: nFK3WiqeTrOZFBIYTRTysg==
X-CSE-MsgGUID: jNl/H1xhQdOdxneaRaz7tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76961523"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76961523"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:37 -0800
X-CSE-ConnectionGUID: o6XFFQoJRnmWcvh0wBNjYw==
X-CSE-MsgGUID: CEEhSVS1SlyUTL+L7G04mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220811995"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 4/8] drm/i915/perf: prefer REG_MASKED_FIELD_ENABLE() and
 REG_MASKED_FIELD_DISABLE()
Date: Wed, 25 Feb 2026 19:57:06 +0200
Message-ID: <93caec439ad10ef8b163162c52407abf36df69f5.1772042022.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772042022.git.jani.nikula@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
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
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: ADE2A19BDF3
X-Rspamd-Action: no action

Using REG_MASKED_FIELD_ENABLE() and REG_MASKED_FIELD_DISABLE() is more
obvious to the reader than having the ternary expression inside
REG_MASKED_FIELD().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 9ad4383404ff..19b82427aa41 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2635,10 +2635,9 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
 		{
 			RING_CONTEXT_CONTROL(ce->engine->mmio_base),
 			CTX_CONTEXT_CONTROL,
-			REG_MASKED_FIELD(GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE,
-					 active ?
-					 GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE :
-					 0)
+			active ?
+			REG_MASKED_FIELD_ENABLE(GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE) :
+			REG_MASKED_FIELD_DISABLE(GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE),
 		},
 	};
 
@@ -2847,9 +2846,10 @@ gen8_enable_metric_set(struct i915_perf_stream *stream,
 
 static u32 oag_report_ctx_switches(const struct i915_perf_stream *stream)
 {
-	return REG_MASKED_FIELD(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS,
-				(stream->sample_flags & SAMPLE_OA_REPORT) ?
-				0 : GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
+	if (stream->sample_flags & SAMPLE_OA_REPORT)
+		return REG_MASKED_FIELD_DISABLE(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
+	else
+		return REG_MASKED_FIELD_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
 }
 
 static int
-- 
2.47.3

