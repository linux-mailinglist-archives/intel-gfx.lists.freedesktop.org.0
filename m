Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B4158949B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 01:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D032BF9D;
	Wed,  3 Aug 2022 23:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D7CE2AC2F
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 23:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659567807; x=1691103807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ojYydcw4fKilI4BG+AUOp4AFByCjjMTvur965ObJLQs=;
 b=Cep49evfAFRZh09Dgf78OlWAXMlv9jybBVZPPTdJ2py5+0td996XI59C
 bjV2cuctVcql0Y+aPEmSSN0OsiZW7JknCN0x9U4tA2VpyJl/9+LwZ/1vs
 a0qpeS7XcsSxpfxPGqm4XRCZc/KKWx8VVfOVd4OyijuR3n2tLCXx/EaQU
 9SdnjajcrrXllHVQkGWCKTObNnuid+Cxn2z9vrtb/BV968TuwrQSRB4Re
 GA+r8cdMfpOSaJKwO8cjjBGSKl7Bohu5r2+Pzhl0Yo7SGeWGEfGF46PEX
 F6sfDbAkqqfk2AbnxK/2ZtBXIE3T12oDiupK+/SyHyrOo2+16ladW5ZUS w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="376095920"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="376095920"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 16:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="603001776"
Received: from dut022-tglu.fm.intel.com ([10.105.19.23])
 by orsmga002.jf.intel.com with ESMTP; 03 Aug 2022 16:03:25 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: 
Date: Wed,  3 Aug 2022 23:03:25 +0000
Message-Id: <20220803230325.137593-2-stuart.summers@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220803230325.137593-1-stuart.summers@intel.com>
References: <20220803230325.137593-1-stuart.summers@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Only disable PMU on stop if not
 already closed
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There can be a race in the PMU process teardown vs the
time when the driver is unbound in which the user attempts
to stop the PMU process, but the actual data structure
in the kernel is no longer available. Avoid this use-after-free
by skipping the PMU disable in i915_pmu_event_stop() when
the PMU has already been closed/unregistered by the driver.

Fixes: b00bccb3f0bb ("drm/i915/pmu: Handle PCI unbind")
Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 958b37123bf12..0d02f338118e4 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -760,9 +760,17 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
 
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
+out:
 	event->hw.state = PERF_HES_STOPPED;
 }
 
-- 
2.25.1

