Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M26QNL2ZKWrRaQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5890966BD71
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=f91uygHv;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5F4610EB14;
	Wed, 10 Jun 2026 17:07:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B421710E689;
 Wed, 10 Jun 2026 17:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111226; x=1812647226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6tgYfBnaE0vIpQ0zMFwSMa19fUSXJpi0joM7uRJ8lgY=;
 b=f91uygHvErS8oRu0NCAF5jc1gHoyPQxcyy6Od/lFCGGliwmxaigyl3r3
 ZPWbYq0LMsu4buQ5JRb4AUwC41n7+dez6W94G7+3JNVl1mz/PWM58or2Q
 xnvLcnHX92gSv7IixRNBD/+0iWFarTnp5BNf0rgMuwvGqDXQYqqxJ/S7o
 vjI4AlYpSN0y/9DCkuMHiTd+31PtH8RINXg+yniYFWlUNRLDSi0qTePF5
 yu2PKaqeU9CcXmwkLiOQU5bB9dEhTsLNZBbLvWZxEb4DqSQaXjGZTO4rp
 GMgjC7wmWPLsPOz3O3/wby63HTSvHSVQyQ25DVCwM+/S6ktxcAcabXBaS A==;
X-CSE-ConnectionGUID: 9m325HMAT+qirnCOZHLMGw==
X-CSE-MsgGUID: dExvUG04TJKtQmDMYFvTYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="99490277"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="99490277"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:06 -0700
X-CSE-ConnectionGUID: vdaYAJcWTP6Z49uj6wR+/Q==
X-CSE-MsgGUID: AUUrGMh+QQqIhHZYzJyCAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="250507278"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:05 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/14] drm/i915/cdclk: Pass CDCLK in MHz to pcode on DG2
Date: Wed, 10 Jun 2026 20:06:39 +0300
Message-ID: <20260610170652.5320-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5890966BD71

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We are currently trying to pass the CDCLK in kHz to the pcode
on DG2, while the pcode expects a value in MHz units. Adjust
the units appropriately.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9ca56bab281f..9718062d8d6c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2703,8 +2703,10 @@ static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
 	 * if CDCLK is decreasing or not changing, set bits 25:16 to current CDCLK,
 	 * which basically means we choose the maximum of old and new CDCLK, if we know both
 	 */
-	if (change_cdclk)
+	if (change_cdclk) {
 		cdclk = max(new_cdclk_state->actual.cdclk, old_cdclk_state->actual.cdclk);
+		cdclk = DIV_ROUND_UP(cdclk, 1000);
+	}
 
 	/*
 	 * According to "Sequence For Pipe Count Change",
@@ -2740,8 +2742,10 @@ static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
 	 * According to "Sequence After Frequency Change",
 	 * set bits 25:16 to current CDCLK
 	 */
-	if (update_cdclk)
+	if (update_cdclk) {
 		cdclk = new_cdclk_state->actual.cdclk;
+		cdclk = DIV_ROUND_UP(cdclk, 1000);
+	}
 
 	/*
 	 * According to "Sequence For Pipe Count Change",
-- 
2.53.0

