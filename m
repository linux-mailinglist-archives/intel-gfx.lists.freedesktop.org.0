Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E35B99AEE7
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 00:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF9D10E2F1;
	Fri, 11 Oct 2024 22:55:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cc0vY/LE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CCC210E2F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 22:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728687313; x=1760223313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JiwuPzjgKOW+98aSOHdvXirT8c2zPb6r2BSYy66ajaA=;
 b=Cc0vY/LEIwDXaZTRqZXSFKxQhUVAv0O3O+TNQ8GIlP2VjF8M9jRSm4tB
 bYGHcpCNdT+i8lyMUshyK39UXJ1kJ2Wav5wbJLyVP30W4eDrzy+TwIs14
 niKSjn2Obdxb4wRe/YFjkE5oGE8i8o81/536C9NOpfEWwAw1vcpeBj1Kx
 Yx5n8L+HATzLpcLRy8o85UYKmNn+NHUM0x+Cy8SqsRl+th5VH4/n0Lne5
 0D2lfLPEnQk54hEnwLs7vkVg3xPCkJ3o8wBbiBSEGj8/5p+F5Y2KFelrd
 FX9336hpgS/2KMlc6TLD4Cr3aYCxtiZfcercJ4LkvThgZ1B/N6w0cCOEW g==;
X-CSE-ConnectionGUID: 6I9e9J8qTauYGg9/N/49hA==
X-CSE-MsgGUID: ZNiYo10oQ8CY900dcbwxAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53519748"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="53519748"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
X-CSE-ConnectionGUID: Y7C13T72STSMZ8qD41yjrA==
X-CSE-MsgGUID: kst7psRUTM+NYYIBoLTDGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77040410"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, stable@vger.kernel.org
Subject: [PATCH 3/8] drm/i915/pmu: Fix crash due to use-after-free
Date: Fri, 11 Oct 2024 15:54:25 -0700
Message-ID: <20241011225430.1219345-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241011225430.1219345-1-lucas.demarchi@intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
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

When an i915 PMU counter is enabled and the driver is then unbound, the
PMU will be unregistered via perf_pmu_unregister(), however the event
will still be alive. i915 currently tries to deal with this situation
by:

	a) Marking the pmu as "closed" and shortcut the calls from perf
	b) Taking a reference from i915, that is put back when the event
	   is destroyed.
	c) Setting event_init to NULL to avoid any further event

(a) is ugly, but may be left as is since it protects not trying to
access the HW that is now gone. Unless a pmu driver can call
perf_pmu_unregister() and not receive any more calls, it's a necessary
ugliness.

(b) doesn't really work: when the event is destroyed and the i915 ref is
put it may free the i915 object, that contains the pmu, not only the
event. After event->destroy() callback, perf still expects the pmu
object to be alive.

Instead of pigging back on the event->destroy() to take and put the
device reference, implement the new get()/put() on the pmu object for
that purpose.

(c) is only done to have a flag to avoid some function entrypoints when
pmu is unregistered.

Cc: stable@vger.kernel.org # 5.11+
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 36 ++++++++++++++++++++-------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 4d05d98f51b8e..dc9f753369170 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -515,15 +515,6 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	return HRTIMER_RESTART;
 }
 
-static void i915_pmu_event_destroy(struct perf_event *event)
-{
-	struct i915_pmu *pmu = event_to_pmu(event);
-	struct drm_i915_private *i915 = pmu_to_i915(pmu);
-
-	drm_WARN_ON(&i915->drm, event->parent);
-
-	drm_dev_put(&i915->drm);
-}
 
 static int
 engine_event_status(struct intel_engine_cs *engine,
@@ -629,11 +620,6 @@ static int i915_pmu_event_init(struct perf_event *event)
 	if (ret)
 		return ret;
 
-	if (!event->parent) {
-		drm_dev_get(&i915->drm);
-		event->destroy = i915_pmu_event_destroy;
-	}
-
 	return 0;
 }
 
@@ -872,6 +858,24 @@ static int i915_pmu_event_event_idx(struct perf_event *event)
 	return 0;
 }
 
+static struct pmu *i915_pmu_get(struct pmu *base)
+{
+	struct i915_pmu *pmu = container_of(base, struct i915_pmu, base);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
+
+	drm_dev_get(&i915->drm);
+
+	return base;
+}
+
+static void i915_pmu_put(struct pmu *base)
+{
+	struct i915_pmu *pmu = container_of(base, struct i915_pmu, base);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
+
+	drm_dev_put(&i915->drm);
+}
+
 struct i915_str_attribute {
 	struct device_attribute attr;
 	const char *str;
@@ -1154,6 +1158,8 @@ static void free_pmu(struct drm_device *dev, void *res)
 	struct i915_pmu *pmu = res;
 	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 
+	perf_pmu_free(&pmu->base);
+
 	free_event_attributes(pmu);
 	kfree(pmu->base.attr_groups);
 	if (IS_DGFX(i915))
@@ -1299,6 +1305,8 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	pmu->base.stop		= i915_pmu_event_stop;
 	pmu->base.read		= i915_pmu_event_read;
 	pmu->base.event_idx	= i915_pmu_event_event_idx;
+	pmu->base.get		= i915_pmu_get;
+	pmu->base.put		= i915_pmu_put;
 
 	ret = perf_pmu_register(&pmu->base, pmu->name, -1);
 	if (ret)
-- 
2.47.0

