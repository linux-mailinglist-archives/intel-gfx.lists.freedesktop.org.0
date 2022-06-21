Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5365531ED
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06F9810F157;
	Tue, 21 Jun 2022 12:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6497610F157
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814176; x=1687350176;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XFh6KYcv/4vTP2Xeb1L2xBxqwnmRcB8VTYIuQVsnDE0=;
 b=a5Jci3MT6qutT7e5/rhPBrbGrNkjr1bO2LOfoiwtFhhyfTNENybzGETd
 WxDlt/Tif+bndbVKFbuHKmBMGq7g1mvuHwq3F/oAWGS3nPOWKN28ARqKD
 I8JxvJJnEL3dDwkMvZKsys7YsxuLLbClgREynQMSWC6tHlIj1SW9VjbfX
 6UrFc7D5kfrFnYzvsXMEWuHbPnuH9Pm86YWqgaKI50YHU6QDL7BRfxcLR
 CfXl9FrcYAr56Vy4rg4Kj0bfOyS2ze4iq+acjkizLibFXwIn7zBmBE81r
 A1zWM0F+p9P9k5/Irg5nrhPXC3SESiYUj0JHZlD4QFG1lCFfczuPGUbgj g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280835651"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="280835651"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:22:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="729817476"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2022 05:22:52 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjt013778; Tue, 21 Jun 2022 13:22:49 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:13 +0530
Message-Id: <20220621123516.370479-9-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: Guard rpm helpers in rpm_get/put
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

Guard rpm helpers in rpm_get/put with is_intel_rpm_allowed
to avoid rpm helpers in intel_engine/gt_pm_get/put
called from  user_forcewake, intel_gt_resume, i915_ttm_accel_move
and intel_context_enter/exit_engine

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/intel_wakeref.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index dfd87d082218..00a5335387a4 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -11,15 +11,17 @@
 
 static void rpm_get(struct intel_wakeref *wf)
 {
-	wf->wakeref = intel_runtime_pm_get(wf->rpm);
+	if (is_intel_rpm_allowed(wf->rpm))
+		wf->wakeref = intel_runtime_pm_get(wf->rpm);
 }
 
 static void rpm_put(struct intel_wakeref *wf)
 {
 	intel_wakeref_t wakeref = fetch_and_zero(&wf->wakeref);
 
-	intel_runtime_pm_put(wf->rpm, wakeref);
-	INTEL_WAKEREF_BUG_ON(!wakeref);
+	if (wakeref)
+		intel_runtime_pm_put(wf->rpm, wakeref);
+
 }
 
 int __intel_wakeref_get_first(struct intel_wakeref *wf)
-- 
2.25.1

