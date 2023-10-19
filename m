Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2767D0176
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 20:28:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED3C10E0CC;
	Thu, 19 Oct 2023 18:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC52510E538
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 18:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697740117; x=1729276117;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jkqoXVr6WMqz4DtBG7jB7az4GdT5+O4uLoSPAZWcVwI=;
 b=EIVI/V869BLg1kE1Dxt6QWcaXRZ/RBDNU2IUCxuHS+WXRZ6a3rL+CQEo
 T9wFgzaBQI+H/+ewzrHnBlMd3so2QoNE3TI1VNCHVv7A8PrK54j5JZVOr
 EkReSmZvQCCMmkf/iImT3q6svDvCLM/2TSUzue3Wz1Q+CaX1p/snFK3Kr
 MXkqNAqpzdfc+pap1NRQlV8RQ/rWaKpRuj+SIHC0vzXz3bv80gQwKm3R4
 CfmY2ioem4gO4lLvZ8/3lR/DpVoSwHl37cGaiMr0aAbR9ZlrSQ5FUACPp
 0PFY8NkCEu3bLZbGsirCrZrO2lUoUZPsXW2DFlw3LtFnuGjCJSjnTkKdS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="366568687"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="366568687"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 11:28:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="792104847"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="792104847"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 11:28:36 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Oct 2023 11:28:36 -0700
Message-Id: <20231019182836.3761023-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Check if pmu is closed before
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

v2: s/is/if/ in commit title

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

