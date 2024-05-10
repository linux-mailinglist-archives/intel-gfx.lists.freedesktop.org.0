Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C49B8C279A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C3E010EDB8;
	Fri, 10 May 2024 15:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UY31UnN0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1BB10EDB8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354640; x=1746890640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tuP3ZSBDkE3BNYzslDMJkMQnXZ0xkAmXiw3P1YWVLEw=;
 b=UY31UnN0rg+6v6yuRfBMV3AFldCZtRotoLiSWysxibj6usqV7ALOsmo0
 xIjQGTekxxuqwXywb9gI5KjTuqUDG4PGZRVx8i7c+7a8MdTuEoTxggIyy
 kTA6NE87HkTZVaeq+2Ao2uGfjSS7TLDTH//vFZAZTTpKoOJf6WK6muIrq
 w/Es6WwyVuRLbTf1r0jg/3skXi0fpijHiJVubtfh2UnOleWBMtixbFTo1
 C5pD+oiX9YepqLcPtt183Lj+BmcrLmU5xrR+knZ2TfKi6n0SRElMyXFwz
 R0KFv5hmnRxECobc01mBZWVn2//4HcvlTahKO9SQVrjKWggC6WXSkxenW w==;
X-CSE-ConnectionGUID: bC9bog+8RJmvGVgzx5yNaA==
X-CSE-MsgGUID: /Bo/OrEMTwKDxjXkjwjUXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468867"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468867"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:23:59 -0700
X-CSE-ConnectionGUID: CY9+HvcLTYiY1GPh4wAZXA==
X-CSE-MsgGUID: yyxhpaE7SSGNrN/UA48IgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29594973"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:23:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:23:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: [PATCH 08/16] drm/i915/gvt: Use PLANE_CTL and PLANE_SURF defines
Date: Fri, 10 May 2024 18:23:21 +0300
Message-ID: <20240510152329.24098-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
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

Stop hand rolling PLANE_CTL and PLANE_SURF for the third plane
and just use the real thing.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
CC: Zhi Wang <zhi.wang.linux@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index b53c98cd6d7f..843bdb46d49c 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -1030,12 +1030,12 @@ static int iterate_skl_plus_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PLANE_AUX_OFFSET(PIPE_C, 1));
 	MMIO_D(PLANE_AUX_OFFSET(PIPE_C, 2));
 	MMIO_D(PLANE_AUX_OFFSET(PIPE_C, 3));
-	MMIO_D(_MMIO(_PLANE_CTL_3_A));
-	MMIO_D(_MMIO(_PLANE_CTL_3_B));
-	MMIO_D(_MMIO(0x72380));
-	MMIO_D(_MMIO(0x7239c));
-	MMIO_D(_MMIO(_PLANE_SURF_3_A));
-	MMIO_D(_MMIO(_PLANE_SURF_3_B));
+	MMIO_D(PLANE_CTL(PIPE_A, 2));
+	MMIO_D(PLANE_CTL(PIPE_B, 2));
+	MMIO_D(PLANE_CTL(PIPE_C, 2));
+	MMIO_D(PLANE_SURF(PIPE_A, 2));
+	MMIO_D(PLANE_SURF(PIPE_B, 2));
+	MMIO_D(PLANE_SURF(PIPE_C, 2));
 	MMIO_D(DMC_SSP_BASE);
 	MMIO_D(DMC_HTP_SKL);
 	MMIO_D(DMC_LAST_WRITE);
-- 
2.43.2

