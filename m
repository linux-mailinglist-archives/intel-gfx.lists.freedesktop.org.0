Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E06B4034E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4523B10E704;
	Tue,  2 Sep 2025 13:31:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NrS5lyYW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A38C510E6FB;
 Tue,  2 Sep 2025 13:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819897; x=1788355897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GBuJf5Gk7CgxtYsUgLAxZRDPd2ml9cMOy1or+IQnrLg=;
 b=NrS5lyYWDiAQNT7pqmSGW/LZ/g5+lGBF8NbaD8fbfkNeTmzFzVaMEAKw
 XZLgezX6XW5MrLSBQJd0PuQyr2zzzqQfkby6SvPzSRJKHRRsTHIo+jgKb
 O93WITuXTM15JJ1ZefB1xPNp76jJ1SL3J9ghKQoAdCUteby8vo36dr+Xh
 Jw451LL3G6k8tCGujBV/e8aPx8KdWLg5UccRpSe4URFAEZopPBHn7PknG
 ODerHwIBknaJHJ+n4zoLrPwQp6Wjdn1IHg+vtHZUVMn8AoLyETcOvg0nR
 M2GBhhwdnxYEu29l3CJ7oyhsL9dTD/nxlxRArSJtctFeCXb4T51EEFnXS Q==;
X-CSE-ConnectionGUID: 4NCE1i0yQgWvt2XMRXRRzg==
X-CSE-MsgGUID: SLkruJLrQyKafWBqta/fGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62736431"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="62736431"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:31:37 -0700
X-CSE-ConnectionGUID: kbsTdGODS6uqazLS9lRd7g==
X-CSE-MsgGUID: /ywOmUqbTLmNe8NDJhta2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176587358"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.118])
 by orviesa005.jf.intel.com with SMTP; 02 Sep 2025 06:31:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Sep 2025 16:31:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/8] drm/i915/dram: Fix some spelling aroynd the 16Gb DIMM w/a
Date: Tue,  2 Sep 2025 16:31:11 +0300
Message-ID: <20250902133113.18778-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use consistent spelling when talking about the 16Gb DIMM w/a.

Even currently language is a bit off as the w/a is actually
about DIMMs with 16Gb DRAM devices on them, not the total capacity
of the whole DIMM. But this language does more or less match how
Bspec talks about this stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ae3ce0d65cfc..0b9c86042e78 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3209,9 +3209,9 @@ adjust_wm_latency(struct intel_display *display,
 	}
 
 	/*
-	 * WA Level-0 adjustment for 16GB DIMMs: SKL+
+	 * WA Level-0 adjustment for 16Gb DIMMs: SKL+
 	 * If we could not get dimm info enable this WA to prevent from
-	 * any underrun. If not able to get Dimm info assume 16GB dimm
+	 * any underrun. If not able to get DIMM info assume 16Gb DIMM
 	 * to avoid any underrun.
 	 */
 	if (!display->platform.dg2 && dram_info->has_16gb_dimms)
-- 
2.49.1

