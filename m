Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMOEIb+2EGqFcwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:04:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0DD5B9DDB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D0810E574;
	Fri, 22 May 2026 20:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eqQRwkic";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 785F410E50E;
 Fri, 22 May 2026 20:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779480252; x=1811016252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nIT7dZ2m5Dym1o3ca7njSCnG4b83DV56nQpuNks5l14=;
 b=eqQRwkicsBAPWwLdH8q5XgaYji7QeQDQLynSxQSUYdCSJfYXjwVJ48/i
 E8ErZelQSQbkLJtgYxhKKVn0Ko7UTW/4/W1mxUGUMiNVRSEFQJX40X/1e
 fu5PG4hCB+GRa2CS3X5Tz33q6WaHkUdPFzZ4fcIJc1xqvbIPhKCG39EBu
 rvBaaSdhovThfhUplQxUTn0xVDNwU/mF/nBu6GJZCcD7F4g6qvDb3wevi
 usnhp8uMzLWJH4VZQkq45uEb1OM6OdTPTLKOd0uCfcYHqZCe/1tfzAYuE
 4JYvuzCoLc0TkjB7B/L0ZXXfoi4J+3ED8PLfmpAd9fWbUf5cn2UPuGVfs g==;
X-CSE-ConnectionGUID: f6NQ1uufRMqtLqCEzPYgVQ==
X-CSE-MsgGUID: /FrUWk2QRL26M7p1kZV2Ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84299665"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="84299665"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:04:06 -0700
X-CSE-ConnectionGUID: GLTUpphcTEG/Dm42YzgBSg==
X-CSE-MsgGUID: xpTtiRjFTIaWQ5RDI5LaCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="245042234"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:04:04 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/10] drm/i915/bw: Fix bw rounding direction
Date: Fri, 22 May 2026 23:03:39 +0300
Message-ID: <20260522200346.17377-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 5C0DD5B9DDB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The DRAM bandwidth value should be rounded down, not up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 442e6b657ca5..bbaafcc1b6be 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -555,7 +555,7 @@ static int icl_get_bw_info(struct intel_display *display,
 			 */
 			ct = max_t(int, sp->t_rc, sp->t_rp + sp->t_rcd +
 				   (clpchgroup - 1) * qi.t_bl + sp->t_rdpre);
-			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
+			bw = sp->dclk * clpchgroup * 32 * num_channels / ct;
 
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - soc_bw_params->derating) / 100);
@@ -658,7 +658,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 			 */
 			ct = max_t(int, sp->t_rc, sp->t_rp + sp->t_rcd +
 				   (clpchgroup - 1) * qi.t_bl + sp->t_rdpre);
-			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
+			bw = sp->dclk * clpchgroup * 32 * num_channels / ct;
 
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - soc_bw_params->derating) / 100);
-- 
2.52.0

