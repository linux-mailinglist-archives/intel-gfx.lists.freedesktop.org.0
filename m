Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E0219C074
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 13:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B5476EA64;
	Thu,  2 Apr 2020 11:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8477C6EA64
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 11:49:51 +0000 (UTC)
IronPort-SDR: d5j0lpkc4ugdOXRrfSD2p8IWgc5Cj5k0hdpVj0Z/UWtb9+iBv1q2mAtgC44NlxnqBj3fEGnLUZ
 AiFs6if78dZQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:49:51 -0700
IronPort-SDR: 89rgaLouI4bZe67To98QX5vcoop4m00KWefVe9aDQhtXf/ztfF8Xd1xNkARUxRMem6s53Qojxj
 cUMT8YrrR9HA==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="252967621"
Received: from assenmac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.35.117])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:49:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Apr 2020 14:48:12 +0300
Message-Id: <20200402114819.17232-10-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402114819.17232-1-jani.nikula@intel.com>
References: <20200402114819.17232-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 10/17] drm/i915/uc: prefer struct drm_device
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
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 12 ++++++------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 10 +++++-----
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index b11e564ef22e..4681cdd24da4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -45,12 +45,12 @@ static void __confirm_options(struct intel_uc *uc)
 {
 	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
 
-	DRM_DEV_DEBUG_DRIVER(i915->drm.dev,
-			     "enable_guc=%d (guc:%s submission:%s huc:%s)\n",
-			     i915_modparams.enable_guc,
-			     yesno(intel_uc_wants_guc(uc)),
-			     yesno(intel_uc_wants_guc_submission(uc)),
-			     yesno(intel_uc_wants_huc(uc)));
+	drm_dbg(&i915->drm,
+		"enable_guc=%d (guc:%s submission:%s huc:%s)\n",
+		i915_modparams.enable_guc,
+		yesno(intel_uc_wants_guc(uc)),
+		yesno(intel_uc_wants_guc_submission(uc)),
+		yesno(intel_uc_wants_huc(uc)));
 
 	if (i915_modparams.enable_guc == -1)
 		return;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index fa893dd1823c..129db476f69e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -32,11 +32,11 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 			       enum intel_uc_fw_status status)
 {
 	uc_fw->__status =  status;
-	DRM_DEV_DEBUG_DRIVER(__uc_fw_to_gt(uc_fw)->i915->drm.dev,
-			     "%s firmware -> %s\n",
-			     intel_uc_fw_type_repr(uc_fw->type),
-			     status == INTEL_UC_FIRMWARE_SELECTED ?
-			     uc_fw->path : intel_uc_fw_status_repr(status));
+	drm_dbg(&__uc_fw_to_gt(uc_fw)->i915->drm,
+		"%s firmware -> %s\n",
+		intel_uc_fw_type_repr(uc_fw->type),
+		status == INTEL_UC_FIRMWARE_SELECTED ?
+		uc_fw->path : intel_uc_fw_status_repr(status));
 }
 #endif
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
