Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E07D76A0595
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 11:05:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D7AD10EB07;
	Thu, 23 Feb 2023 10:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95DF510EB06
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 10:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677146743; x=1708682743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=++NkVaPAc1HxAwY7guQcVXH7CG6/nopLhn5eOKhxcis=;
 b=IIQ0HCS7rvEBrnTKIIaHM4v+OGo160k5q9XWG3zw4xXvO7lq/J+r1rV6
 8QH1/TDASnd3YBYx4UzzIE3U5x9KzSnpYlDodMBC2a3ftwv6tjYtIRWSO
 CPkNmAsxIfJ0EYHkXn1Aztc6dcMV8WRLnp4WVc0WlTRMjFvsMioEw+YQo
 3kmbgJ7jtUH/uXngdpimX98YZvlrenpR8aqorlyS0Km83jSLesCp6LqRy
 TqlzYBKPgiJkHscEx4R9k0gUsanVWUN6d+9XBBJqD/B4dX0SR8cUxZ+H4
 CP16Ij/FiygNqe6fNuzipaDr/7XjrpsqAGwvY8YiLhyn9C4t8He4VDJYS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="331838349"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="331838349"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 02:05:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="917920204"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="917920204"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 02:05:41 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:35:03 +0530
Message-Id: <20230223100503.3323627-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230223100503.3323627-1-anshuman.gupta@intel.com>
References: <20230223100503.3323627-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftest: Fix ktime_get() and h/w
 access order
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use ktime_get() after accessing the mmio or any driver resource,
while using wall time for various calculation that depends on
the inserted delay in order to account any mmio and resource
access latency.

Cc: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index c0cc0dd78c7c..84e77e8dbba1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -537,8 +537,8 @@ static u64 __measure_frequency(u32 *cntr, int duration_ms)
 {
 	u64 dc, dt;
 
-	dt = ktime_get();
 	dc = READ_ONCE(*cntr);
+	dt = ktime_get();
 	usleep_range(1000 * duration_ms, 2000 * duration_ms);
 	dc = READ_ONCE(*cntr) - dc;
 	dt = ktime_get() - dt;
@@ -566,8 +566,8 @@ static u64 __measure_cs_frequency(struct intel_engine_cs *engine,
 {
 	u64 dc, dt;
 
-	dt = ktime_get();
 	dc = intel_uncore_read_fw(engine->uncore, CS_GPR(0));
+	dt = ktime_get();
 	usleep_range(1000 * duration_ms, 2000 * duration_ms);
 	dc = intel_uncore_read_fw(engine->uncore, CS_GPR(0)) - dc;
 	dt = ktime_get() - dt;
@@ -1094,8 +1094,8 @@ static u64 __measure_power(int duration_ms)
 {
 	u64 dE, dt;
 
-	dt = ktime_get();
 	dE = librapl_energy_uJ();
+	dt = ktime_get();
 	usleep_range(1000 * duration_ms, 2000 * duration_ms);
 	dE = librapl_energy_uJ() - dE;
 	dt = ktime_get() - dt;
-- 
2.25.1

