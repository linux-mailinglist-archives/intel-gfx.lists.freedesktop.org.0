Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMMiJK+2EGpDcwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:03:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BDC5B9DBC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAAAB10E568;
	Fri, 22 May 2026 20:03:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WyWtHPxV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52C6510E568;
 Fri, 22 May 2026 20:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779480237; x=1811016237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MUMHXfMEKI664gtM/L3Cj0apNgP7qBO0RoZsqG7Yb9s=;
 b=WyWtHPxV7v7oHcDYP9cPoIGCnrtRaXfRxe5Km/rutGsh0BPhMJpETpv/
 +sI6jKAzEh1+AiuMJFF5EjrRoj6h9DWWfsei7r3S3U0YoOMhIKI8p6Akx
 GnN6C6BiglcHBSerj+nbYM1xzeIPZqU/vLtjAn62dn6pM+4kJV4jteQ21
 rmYuRVu7GbJXcKct5yi2Bl8yKjNo7fOs0FhWUCjMVF3MnYcmwKddq8htu
 WABoQGG0OS993UY2LG5sSX0aooNpgDxcOG4FIMtReWyvv6DsJytZ/U4Fw
 8/D6yDoPHOTlyUDGkgjADq+DiSdiTyEmOVVp4GdPp9EesEwgXEhT2HmTy A==;
X-CSE-ConnectionGUID: dSB+ckN8RtmJ0DlhiUJjJQ==
X-CSE-MsgGUID: 8b6eXNjSR2qbFD6kiF1HSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84299656"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="84299656"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:03:57 -0700
X-CSE-ConnectionGUID: 6HAUbOtZSvS0ZozrhPgMRA==
X-CSE-MsgGUID: AD2DzoC6RzWYz4h1KaFB3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="245042161"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:03:55 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/10] drm/i915/bw: Fix num_planes handling on TGL+
Date: Fri, 22 May 2026 23:03:37 +0300
Message-ID: <20260522200346.17377-2-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 65BDC5B9DBC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The TGL+ bw code has an off by one error on the num_planes
calculation, and tgl_max_bw_index() incorrectly bumps
the num_planes to 1 from 0.

That approach made sense on ICL where num_planes is more or
a less minimum number of planes to consider for the group,
but on TGL+ num_planes really is a maximum number of planes,
so these adjustments no longer make any sense there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index d7b2bc80f8e3..d10eebec196e 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -636,8 +636,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 			bi_next = &display->bw.max[i + 1];
 
 			if (clpchgroup < clperchgroup)
-				bi_next->num_planes = (ipqdepth - clpchgroup) /
-						       clpchgroup + 1;
+				bi_next->num_planes = (ipqdepth - clpchgroup) / clpchgroup;
 			else
 				bi_next->num_planes = 0;
 		}
@@ -802,11 +801,6 @@ static unsigned int tgl_max_bw_index(struct intel_display *display,
 {
 	int i;
 
-	/*
-	 * Let's return max bw for 0 planes
-	 */
-	num_planes = max(1, num_planes);
-
 	for (i = ARRAY_SIZE(display->bw.max) - 1; i >= 0; i--) {
 		const struct intel_bw_info *bi =
 			&display->bw.max[i];
-- 
2.52.0

