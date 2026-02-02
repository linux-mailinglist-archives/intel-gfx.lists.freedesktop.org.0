Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDTDLz2CgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D118CB474
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F151D10E45E;
	Mon,  2 Feb 2026 10:53:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KXkyhfCc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6EA10E45E;
 Mon,  2 Feb 2026 10:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770029627; x=1801565627;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8w11NIAeGaxobtFZZqqxVEDqNov1+wailnBFSsUjuNg=;
 b=KXkyhfCc6Po+6kHX1hu7FOIjh3povCW5N2hgeaXTDGGTF200F0UNN3q/
 Hh8I33SGFbYTxQ56FIJpBMhz7WUXvUj4s0f/tdSoaXVaq0guKb+GGHu7Q
 VoBK2gQuhICia7FM0snaVg4tSZ5sYsR/PUh5SI1JVZoihdoZUQ236IDKf
 9NGtOd9ckFLZNG1M7QCQQgXBvXF5KEJHp07s9gtAD/j5B7LWwRaqfOX4v
 JYVOEnO3e+N5qB/UhzHZxH2sCQYR9hNNXHvtiJAdoQp7/kct3rm6K3nQ/
 2sjT5++3RN3QuRIHxHSeD1/e31r3FPVgX6wD5CrTx80pfegVlYEVrcVnc w==;
X-CSE-ConnectionGUID: CgUyqkkSTI+6xOUctzrE4Q==
X-CSE-MsgGUID: XTP9EdXkQgWQs5YPC7xerg==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70385073"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70385073"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:47 -0800
X-CSE-ConnectionGUID: HWWHALMQSF2zkiGQbTjHgw==
X-CSE-MsgGUID: DOi6LhgHSgyPui+2rwx+eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="232419902"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:45 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 17/17] drm/i915/display: Extend the max dotclock limit to WCL
Date: Mon,  2 Feb 2026 16:07:31 +0530
Message-ID: <20260202103731.357416-18-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260202103731.357416-1-ankit.k.nautiyal@intel.com>
References: <20260202103731.357416-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7D118CB474
X-Rspamd-Action: no action

From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Add upper limit check for pixel clock for WCL.

For prior platforms though the bspec mentions the dotclock limits, however
these are intentionally not enforced to avoid regressions, unless real
issues are observed.

BSpec: 49199, 68912
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9cfeb5530fd8..bd4219467e0e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8006,8 +8006,16 @@ int intel_max_uncompressed_dotclock(struct intel_display *display)
 	int max_dotclock = display->cdclk.max_dotclk_freq;
 	int limit = max_dotclock;
 
-	if (DISPLAY_VER(display) >= 30)
+	if (DISPLAY_VERx100(display) == 3002)
+		limit = 937500;
+	else if (DISPLAY_VER(display) >= 30)
 		limit = 1350000;
+	/*
+	 * Note: For other platforms though there are limits given
+	 * in the Bspec, however the limit is intentionally not
+	 * enforced to avoid regressions, unless real issues are
+	 * observed.
+	 */
 
 	return min(max_dotclock, limit);
 }
-- 
2.45.2

