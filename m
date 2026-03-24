Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLN5JkeWwmkbfQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:48:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E067309B36
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:48:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E89C410E6DB;
	Tue, 24 Mar 2026 13:48:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ezlDiHwT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BFDC10E6DA;
 Tue, 24 Mar 2026 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774360133; x=1805896133;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LiORRQEVrklL58wna1zQrhOz36fkpIQQWO0VC7pMwq8=;
 b=ezlDiHwTedqe5Bc0Klf3k7EdGEixKrp18nm460raPsn9Sriq63XeKcUo
 desLP8jHYvqW+OTi0WTgPsLh3ih42oLwiGWY+ZBCxNjfP2jhLQGPzwsZc
 qYOBJQOCu35M11779C37X2MkNKAW7umIbwWoarscyq7JUsN0ZPFbbtrwK
 8ORnLETVNahQWgvoK4WVtMnY6RAuGYFKQyZt1+pGgfC84Uh+ScF7i81NZ
 PdtESrtU8x0Ica7COSoyoEMzdVxRH92oAD8zQRq+BsOirIZbj946n3GiM
 X3uJHe2ovydoedNq4JdEB0+t9RhVsJdjkQ/BHX9pnsQWg0IjNeW/KL9OL A==;
X-CSE-ConnectionGUID: URpbemTrSWenhgZGHOZ6HQ==
X-CSE-MsgGUID: vwmTdx9iThusqx9bYMmnjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75254808"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75254808"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:48:53 -0700
X-CSE-ConnectionGUID: nUygZglUQdeKDNq4ZpYuHA==
X-CSE-MsgGUID: ZjP18TY9QEeLVjQpe/NYCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="224323787"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:48:51 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/9] drm/i915/wm: Reject SAGV consistently when
 block_time_us==0
Date: Tue, 24 Mar 2026 15:48:35 +0200
Message-ID: <20260324134843.2364-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 6E067309B36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have three ways for the platform to indicate that
SAGV is not supported:
- pcode returns zero block time
- pcode returns only a single QGV point (icl+)
- pcode rejects the SAGV enable/disable command (pre-icl)

We don't currently consider all those factors when computing
pipe_sagv_reject, meaning we might still try to enable
SAGV when we should not.

I think one plausible scenario is when pcode returns a
zero block time, and all the pipes are disabled. In
that case intel_crtc_can_enable_sagv() will return true
for all pipes, and thus we might try to enable SAGV
despite pcode indicating that it's not supported.

Make sure pipe_sagv_reject will consistently reject
SAGV when our cached block time is zero. That will cover
all the aforementioned mechanisms by which SAGV can be
disabled.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d45b3bcc6ef0..09988f46e083 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -308,9 +308,6 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	enum plane_id plane_id;
 	int max_level = INT_MAX;
 
-	if (!intel_has_sagv(display))
-		return false;
-
 	if (!crtc_state->hw.active)
 		return true;
 
@@ -377,6 +374,9 @@ bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
+	if (!display->sagv.block_time_us)
+		return false;
+
 	if (!display->params.enable_sagv)
 		return false;
 
-- 
2.52.0

