Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0BD9723E7
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 22:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F9110E6AA;
	Mon,  9 Sep 2024 20:43:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKGLSUL/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61AC210E6A8
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 20:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725914636; x=1757450636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JuFE7ZRDXMZ9lUpDeHGiw9jIwTYVBoJgpr0njb6cFiU=;
 b=mKGLSUL//CF60+pVNTgQXKmbfsB52VU5CjfVfVrhpBOq4qwv7esKmAZV
 t1UJXHuawSlyglBXvBiaxOmeGVTKDv1ifvMJnHXpjNSlOHOUA8ncpDpmH
 kQ2XN+jelxKzeqImh6l7m7bSWJT6wL+cqqZu5J+fIEC/w8+tppdR2Olru
 2CcKZ+J3mFMWbQynpKHvBKsjC557en7brFEtQDacgMb9VBshxksC/OG//
 ty9AzBY5lzb4IyyLcrLltlYXBwlSJIrSvgIT0OR7GvktWN7Ml8Aj2r7hl
 faf/D+2YppEVnrTXYB1BaCmV6Wdaa+2Hg9Trz7GZ5heSfBoCrq8Z55A+C w==;
X-CSE-ConnectionGUID: q/U9OLXdTWiFOLX7xwidDw==
X-CSE-MsgGUID: DMTlnCwgTgyjjWPy7V/tfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24451320"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24451320"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 13:43:56 -0700
X-CSE-ConnectionGUID: Wuz/JrbYTSWjF8pBi4IMEw==
X-CSE-MsgGUID: r2MDCemyRXW9LjWwUVER9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="71578750"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 13:43:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Subject: [CI 2/2] drm/i915/pmu: Use event_to_pmu()
Date: Mon,  9 Sep 2024 13:43:40 -0700
Message-ID: <20240909204340.3646458-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240909204340.3646458-1-lucas.demarchi@intel.com>
References: <20240909204340.3646458-1-lucas.demarchi@intel.com>
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

i915 pointer is not needed in this function and all the others simply
calculate the i915_pmu container based on the event->pmu. Follow the
same logic as in other functions.

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 34d798245fac9..67b6cbdeff1da 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -834,15 +834,14 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
 
 static void i915_pmu_event_stop(struct perf_event *event, int flags)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = event_to_pmu(event);
 
 	if (pmu->closed)
 		goto out;
 
 	if (flags & PERF_EF_UPDATE)
 		i915_pmu_event_read(event);
+
 	i915_pmu_disable(event);
 
 out:
-- 
2.43.0

