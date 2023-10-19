Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E82727D0158
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 20:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8582E10E533;
	Thu, 19 Oct 2023 18:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C26610E533
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 18:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697739844; x=1729275844;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vsjFJqoY/w2pzqPl92Ce8/HrMNxJZAA/vzsllBqoONM=;
 b=OGc2aAJTTTEK6MRFHvcAtCBQAB3PcXdSyBAv4/T4oeW3uE3G5SUqfXw1
 fn38fC0J1s1ojxBA20IQVHmx2RqH1RhPYQFH90xc/GYTsEiCQEfEb07I3
 q83Dfbh77EwHsxPZcq1aWM08KHJl/3s1Vha7U2dx5waHce7QZKZsXfNMM
 NGNDTdrgJAcSNr8ChNbw2HlVNGtksRYcjTD/0JafeeWT3uOcbq+H3d3bs
 SiXu1o9f9gTkhWYhDZpDFGKGleGUaVM4R3aQ54hZsGkvf7RVuAdNhb0Xd
 ++vrnrp3Jgm6+7XH2muOdk62oquTCUr6W74kjVe/3lMoYBky5nlMl5GQY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="390219463"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="390219463"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 11:24:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="757148710"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="757148710"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 11:24:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Oct 2023 11:23:59 -0700
Message-Id: <20231019182359.3692458-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Check is pmu is closed before
 stopping event
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

When the driver unbinds, pmu is unregistered and i915->uabi_engines is
set to RB_ROOT. Due to this, when i915 PMU tries to stop the engine
events, it issues a warn_on because engine lookup fails.

All perf hooks are taking care of this using a pmu->closed flag that is
set when PMU unregisters. The stop event seems to have been left out.

Check for pmu->closed in pmu_event_stop as well.

Based on discussion here -
https://patchwork.freedesktop.org/patch/492079/?series=105790&rev=2

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 108b675088ba..f861863eb7c1 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -831,9 +831,18 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
 
 static void i915_pmu_event_stop(struct perf_event *event, int flags)
 {
+	struct drm_i915_private *i915 =
+		container_of(event->pmu, typeof(*i915), pmu.base);
+	struct i915_pmu *pmu = &i915->pmu;
+
+	if (pmu->closed)
+		goto out;
+
 	if (flags & PERF_EF_UPDATE)
 		i915_pmu_event_read(event);
 	i915_pmu_disable(event);
+
+out:
 	event->hw.state = PERF_HES_STOPPED;
 }
 
-- 
2.38.1

