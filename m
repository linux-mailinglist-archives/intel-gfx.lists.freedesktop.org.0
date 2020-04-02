Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5910919C076
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 13:50:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB446EA65;
	Thu,  2 Apr 2020 11:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2DA06EA65
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 11:49:59 +0000 (UTC)
IronPort-SDR: FwmJ8xq9lqVAqxp1BiGKYRNzON3ByZZLkkKJOINdlwO/L/eNK+d0IC/Y9zmjPlMJ92quP8rVTM
 Po8t9CJibfRA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:49:59 -0700
IronPort-SDR: aYpqT3Je5VgvRUN1a0SMDejAZb/2YfV2+0w3K3F4EadlNisUdbMrzZFbqPtJsjYCBhbX2F4gT/
 JB6A3ZyBCojg==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="249802002"
Received: from assenmac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.35.117])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:49:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Apr 2020 14:48:13 +0300
Message-Id: <20200402114819.17232-11-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402114819.17232-1-jani.nikula@intel.com>
References: <20200402114819.17232-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 11/17] drm/i915/error: prefer struct drm_device
 based logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer struct drm_device based logging over struct device based logging.

No functional changes.

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 2a4cd0ba5464..424ad975a360 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1858,7 +1858,7 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
 		return;
 
 	i915 = error->i915;
-	dev_info(i915->drm.dev, "%s\n", error_msg(error));
+	drm_info(&i915->drm, "%s\n", error_msg(error));
 
 	if (error->simulated ||
 	    cmpxchg(&i915->gpu_error.first_error, NULL, error))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
