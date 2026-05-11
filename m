Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKDqAkRNAmrIqgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:42:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D15A6516708
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6577B10E8FF;
	Mon, 11 May 2026 21:42:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uhq9HYxi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E2E210E8FC;
 Mon, 11 May 2026 21:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535746; x=1810071746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ugm3i+5fWFPSZ0GYc1oA+c313LbbpCDLgX7nq5ut95w=;
 b=Uhq9HYxi3tNeIDp1Aan4PhZXBoOsqm1rFKiyXJZa8wfNlUPvCeZ5ghqy
 roxBTD9If0jVZuoXDb7VOE2XS5NYqGndCzTmQdOVgp/fyWQdqix/UwIeB
 5V+EDk+r+H+rGguVWIp98xBmgjGEKlUrN6ehuP+7UrQpjnwpjDyNWPShS
 m8tNwb+78A4uhAWB2N18x+MX1+3LY0fsSrOdSziQSYKcZtuW/Kuzuq9e3
 Sj7SA4pdEkBHRaaZbGwgJCMnyRXASEbmzeDdDRGzQZUBNtUqbpgFOk1RL
 YhMkkN6kZFOQJI7Kvz9oqaQQqZJtUoKi/l4/ff4LfT5IiVXVQLEvCxSgC Q==;
X-CSE-ConnectionGUID: 6QjAmLG8Sc2YYWdzmVUnXQ==
X-CSE-MsgGUID: zRV67957SYikmBTz32LGtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90816934"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="90816934"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:42:26 -0700
X-CSE-ConnectionGUID: JxFHvxTdQW+Ws/aixXfBXQ==
X-CSE-MsgGUID: drNK+B3pQUy1VNzq4qyECg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="275702964"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.104])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:42:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 14/14] drm/i915: Print the phys_base in addition to the
 dma_addr for the BIOS FB
Date: Tue, 12 May 2026 00:41:22 +0300
Message-ID: <20260511214122.8468-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: D15A6516708
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Print the dma_addr, phys_base and memory region name for the BIOS FB.
Should make it a bit easier to see whether everything looks correct or
not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_initial_plane.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 90095a913428..d7792b65ec15 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -68,12 +68,12 @@ initial_plane_phys(struct drm_i915_private *i915,
 		return false;
 	}
 
-	drm_dbg_kms(&i915->drm, "Using dma_addr=%pa, based on initial plane programming\n",
-		    &dma_addr);
-
 	*out_phys_base = dma_addr - mem->region.start;
 	*out_mem = mem;
 
+	drm_dbg_kms(&i915->drm, "Initial plane dma_addr=%pa phys_base=%pa mem=%s\n",
+		    &dma_addr, out_phys_base, mem->name);
+
 	return true;
 }
 
-- 
2.52.0

