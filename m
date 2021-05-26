Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF91391A69
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82756EDBC;
	Wed, 26 May 2021 14:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6AC36ED9F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 14:37:33 +0000 (UTC)
IronPort-SDR: 9/MJD7DooyrmsoVAE8Cv6Pr9y9EbNJmLQPXGkv9ERXvec+zxy6s+WC4wvlFkzZPWkElnWxnDVB
 D7UjWxoEz5bw==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="223666154"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223666154"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:37:33 -0700
IronPort-SDR: lIUrDQqvAWpdOy/PquDn7MUEDr7rszzod98nFO2r2T9JzCLMqc0J4cI9Amr6Pfbyjy18IrvzM0
 QW288YfIriGQ==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="476968690"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:37:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 17:37:28 +0300
Message-Id: <20210526143729.2563672-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210526143729.2563672-1-imre.deak@intel.com>
References: <20210526143729.2563672-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Fix incorrect assert about
 pending power domain async-put work
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's possible that an already dequeued put_async_work() will release the
reference (*) that was put asynchronously after the dequeue happened.
This leaves an async-put work pending, without any reference to release.
A subsequent async-put may trigger the

drm_WARN_ON(!queue_delayed_work(&power_domains->async_put_work));

warn due to async_put_work() still pending. To avoid the warn, cancel
the pending async_put_work() when releasing the reference at (*) above.

Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/3421
Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/2289
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2f7d1664c4738..a95bbf23e6b7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2263,6 +2263,12 @@ intel_display_power_put_async_work(struct work_struct *work)
 			fetch_and_zero(&power_domains->async_put_domains[1]);
 		queue_async_put_domains_work(power_domains,
 					     fetch_and_zero(&new_work_wakeref));
+	} else {
+		/*
+		 * Cancel the work that got queued after this one got dequeued,
+		 * since here we released the corresponding async-put reference.
+		 */
+		cancel_delayed_work(&power_domains->async_put_work);
 	}
 
 out_verify:
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
