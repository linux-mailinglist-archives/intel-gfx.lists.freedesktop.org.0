Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 986A8705B63
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 01:35:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA1410E389;
	Tue, 16 May 2023 23:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E05C10E386
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 23:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684280139; x=1715816139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CelYkmB1/m4ItmUgogM+FRqPlWoJ6AXltO/8LYu6FVc=;
 b=Id4GBcCoEJU/L5NEkm2bhRz/V4gXh1rmQABrpXr3WsFHnujixQghd+KB
 8gLLEi/LjtLl62SMt1hq/P+ptLuk45O7p8Cm5Dc7wVxl7hn3vaphrG5zH
 ZF9A0GBFYHlzsj82cMvrjK6L/qunxMCqXt++fhzs2Fv98lgeOKT9nXl/c
 h3OjeUzkdSF8RoWxBhn+DSzbE8T20RPLckp7lxXfQ/Ps3ADwZLe4s0w7u
 dgiUdVhFavCbYRRT1A8Bb2qRWSww68Ug9wCnvekx2kM5S+ebwu6ToOyj3
 9emhxeMbphI/JDnPlkxaib/bDrLfZuyueUImsyYJHtlZTYhlcEUx5NOoa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="340996419"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="340996419"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="732160683"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="732160683"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:35:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 16:35:30 -0700
Message-Id: <20230516233534.3610598-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
References: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/7] drm/i915/pmu: Skip sampling engines with
 no enabled counters
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

As we have more and more engines do not waste time sampling the ones no-
one is monitoring.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 9edf87ee5d10..6d594f67f365 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -350,6 +350,9 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
 		return;
 
 	for_each_engine(engine, gt, id) {
+		if (!engine->pmu.enable)
+			continue;
+
 		if (!intel_engine_pm_get_if_awake(engine))
 			continue;
 
-- 
2.36.1

