Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E37F119C07E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 13:50:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FCD66EA6A;
	Thu,  2 Apr 2020 11:50:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3AF76EA67
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 11:50:24 +0000 (UTC)
IronPort-SDR: 9XsihoauRjBCYvXktsDC/ULwLCNuiD/FglhulZEhMNpnA8tLRrHLNAn791g/4Vr03JxNzFZdof
 av4K9YyIm4GA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:50:24 -0700
IronPort-SDR: pu7TOL4OSRO3BBPUshyd6nJEKuCDLwJmoYpOx2OlXK56sEprVfXd+QKxm0rwzxb+kTQcJEBPJs
 NQJnTbGt4NuQ==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="238502228"
Received: from assenmac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.35.117])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:50:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Apr 2020 14:48:16 +0300
Message-Id: <20200402114819.17232-14-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402114819.17232-1-jani.nikula@intel.com>
References: <20200402114819.17232-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 14/17] drm/i915/uncore: prefer struct drm_device
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
 drivers/gpu/drm/i915/intel_uncore.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 013312e9b55c..fa86b7ab2d99 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -665,7 +665,7 @@ void intel_uncore_forcewake_user_put(struct intel_uncore *uncore)
 		mmio_debug_resume(uncore->debug);
 
 		if (check_for_unclaimed_mmio(uncore))
-			dev_info(uncore->i915->drm.dev,
+			drm_info(&uncore->i915->drm,
 				 "Invalid mmio detected during user access\n");
 		spin_unlock(&uncore->debug->lock);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
