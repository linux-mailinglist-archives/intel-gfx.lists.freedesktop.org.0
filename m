Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BCE646E28
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 12:12:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F6C10E1C1;
	Thu,  8 Dec 2022 11:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722FA10E495
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 11:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670497961; x=1702033961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z+uwpfMo8WsJSUSAV8lJG3HDMcDkZ2uyLsOZNmCREB4=;
 b=lWOvtt8qfI4WiSIU3KZXgtRI27hoUu8Kuymn5OpeMeNOJyBHea958FJM
 Kzg7hGJt3BBtnCFHZ5eXvRa94Y9gO90viTynTt01qBfBlz8QRQTlHD75N
 hD9iKk4+9Pzt8zIURmbX6YW10k9IDMMTT64gQJ0s3LTFG6VzJJPHDA1S1
 IU3o0CMo+SNmOdXjFDDiCpA5tGFflqQzq3mU1TJSNxvpttTbVuuENdPpO
 rwwBu1mSeG39dVh/SK5mjquvkTIOxhTlDIaGzctlBy5gNYYMQ5NlvzHdd
 LtH1Dklzg2Yn9buSBqrIcOl5RVPvV6e5exo7vP5sB4rrSMA56R+tnwZo0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="318995980"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="318995980"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 03:12:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="710426090"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="710426090"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 03:12:39 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 12:12:17 +0100
Message-Id: <20221208111217.3734461-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221208111217.3734461-1-andrzej.hajda@intel.com>
References: <20221208111217.3734461-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: use fetch_and_zero if
 applicable
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Simplify the code.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_context.c        | 6 ++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 +--
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index 76fbae358072df..307dbbe853a3e9 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -227,8 +227,7 @@ static int __live_active_context(struct intel_engine_cs *engine)
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	saved_heartbeat = engine->props.heartbeat_interval_ms;
-	engine->props.heartbeat_interval_ms = 0;
+	saved_heartbeat = fetch_and_zero(&engine->props.heartbeat_interval_ms);
 
 	for (pass = 0; pass <= 2; pass++) {
 		struct i915_request *rq;
@@ -385,8 +384,7 @@ static int __live_remote_context(struct intel_engine_cs *engine)
 		goto err_remote;
 	}
 
-	saved_heartbeat = engine->props.heartbeat_interval_ms;
-	engine->props.heartbeat_interval_ms = 0;
+	saved_heartbeat = fetch_and_zero(&engine->props.heartbeat_interval_ms);
 	intel_engine_pm_get(engine);
 
 	for (pass = 0; pass <= 2; pass++) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 53f7f599cde3a2..f9dd77838917f6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4747,8 +4747,7 @@ static void reset_fail_worker_func(struct work_struct *w)
 	unsigned long flags;
 
 	spin_lock_irqsave(&guc->submission_state.lock, flags);
-	reset_fail_mask = guc->submission_state.reset_fail_mask;
-	guc->submission_state.reset_fail_mask = 0;
+	reset_fail_mask = fetch_and_zero(&guc->submission_state.reset_fail_mask);
 	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 
 	if (likely(reset_fail_mask))
-- 
2.34.1

