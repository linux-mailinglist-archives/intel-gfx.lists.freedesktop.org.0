Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 839658D49E7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 12:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0420910E304;
	Thu, 30 May 2024 10:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E/BJC3/g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B8C010E304
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 10:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717066387; x=1748602387;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LtVrlpACEsOeEIpHbAPgjgf8KTsgfxXd2CTGd5NfjKA=;
 b=E/BJC3/gfbh1Hm1EwmqISo3HNs6tRVNwFNs8guUncmys0sMMvHp2obCA
 cN8x4hbZgaiOgNIsvN/s7Ks/jJNIA3CNuYvlsZcGLEJIR72xs7lDfVJuk
 GMfaD1SzYXU8Hgi19RRy5TRfAygQhntO34oPJf3xmmRHorL6rMRkTkKE2
 L0LhCJSwVULbDBdi9Y1TFgOOjyO/6hYMVOrK5w4D+5koKfE616tKdnEaX
 cVQL5OWVddKCn/dtRusxvpEjYHL5SLnrpitfbXNWczZGh1KarbXouYodY
 ht8X7AYVx+fGyBuDPvqRR8hd1cn3iAsox4lwQTcE/0niPU3b69vGnxW9s g==;
X-CSE-ConnectionGUID: pNIIGMAhTZe7d8k8X1DngQ==
X-CSE-MsgGUID: a+oBglryQcmoz1CHUTdBgQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24152338"
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="24152338"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 03:53:07 -0700
X-CSE-ConnectionGUID: AIZGy1CORTCCbyCyhwCh3g==
X-CSE-MsgGUID: 3SoQzc0AS1GYYP1QIT5TYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="66646676"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 03:53:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Fix assert on pending async-put power domain work
 when it requeues itself
Date: Thu, 30 May 2024 13:53:12 +0300
Message-ID: <20240530105312.1016485-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

Commit dd839aa857eb ("drm/i915: Fix incorrect assert about pending power domain async-put work")

fixed the assert about a pending work dropping a display power reference
asynchronously, leading to the

drm_WARN_ON(!queue_delayed_work(&power_domains->async_put_work));

warn next time around a power reference was put asynchronously, due to a
stale instance of the work still being pending. However the fix didn't
consider the case where multiple power reference was acquired and put,
requiring the work to requeue itself. Extend the fix for this case as
well canceling the pending instance of the work before it requeues
itself.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10915
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34b6d843bc9ef..8c49ac053dfb0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -675,6 +675,12 @@ intel_display_power_put_async_work(struct work_struct *work)
 	release_async_put_domains(power_domains,
 				  &power_domains->async_put_domains[0]);
 
+	/*
+	 * Cancel the work that got queued after this one got dequeued,
+	 * since here we released the corresponding async-put reference.
+	 */
+	cancel_async_put_work(power_domains, false);
+
 	/* Requeue the work if more domains were async put meanwhile. */
 	if (!bitmap_empty(power_domains->async_put_domains[1].bits, POWER_DOMAIN_NUM)) {
 		bitmap_copy(power_domains->async_put_domains[0].bits,
@@ -686,12 +692,6 @@ intel_display_power_put_async_work(struct work_struct *work)
 					     fetch_and_zero(&new_work_wakeref),
 					     power_domains->async_put_next_delay);
 		power_domains->async_put_next_delay = 0;
-	} else {
-		/*
-		 * Cancel the work that got queued after this one got dequeued,
-		 * since here we released the corresponding async-put reference.
-		 */
-		cancel_async_put_work(power_domains, false);
 	}
 
 out_verify:
-- 
2.43.3

