Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB995ED21F
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D16E10E205;
	Wed, 28 Sep 2022 00:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4E310E1F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325627; x=1695861627;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lotmPtD5Xv0Dy2I17d3pJxwOjpF6XDs0Mc/UKlqBWP4=;
 b=a2yBvHABqEEMpeM26FQMfxtnooh5QkOmFKl/R0sNE+zv96oEaRqAtDzk
 EcWM9kEng6BbCpi/qSDmUFLsoaXLw5On1ezHgHbZ0B1ScRXs8mVCI+Jd/
 OlkscGXiA0gZipRt/uEx/PfFJsw4Tu8FROLLHmHhO2sI5Penf6calQIgx
 e5X3+Ii88Q9G/3Kbh3F0flaSigxLBZIKg3nFJcHEep3g9OgoXL42boMfw
 ha+1RYml49uA0VS3KfWq5dbXqEcrynLkfJDr8KDL8gWKQagZjIBxI6a4K
 Z2ffdhmbENtte9FKx+wmy8CeEhQJAGkrrOFHYYv9qMtuuPtHH11HDsNgg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752088"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752088"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841195"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841195"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:26 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:43 -0700
Message-Id: <20220928004145.745803-14-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 13/15] drm/i915/huc: better define HuC status
 getparam possible return values.
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

The current HuC status getparam return values are a bit confusing in
regards to what happens in some scenarios. In particular, most of the
error cases cause the ioctl to return an error, but a couple of them,
INIT_FAIL and LOAD_FAIL, are not explicitly handled and neither is
their expected return value documented; these 2 error cases therefore
end up into the catch-all umbrella of the "HuC not loaded" case, with
this case therefore including both some error scenarios and the load
in progress one.

The updates included in this patch change the handling so that all
error cases behave the same way, i.e. return an errno code, and so
that the HuC load in progress case is unambiguous.

The patch also includes a small change to the FW init path to make sure
we always transition to an error state if something goes wrong.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Tony Ye <tony.ye@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Acked-by: Tony Ye <tony.ye@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c   |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_huc.c   | 14 +++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c |  1 -
 include/uapi/drm/i915_drm.h              | 16 ++++++++++++++++
 4 files changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index bac06e3d6f2c..27b09ba1d295 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -441,6 +441,7 @@ int intel_guc_init(struct intel_guc *guc)
 err_fw:
 	intel_uc_fw_fini(&guc->fw);
 out:
+	intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_INIT_FAIL);
 	i915_probe_error(gt->i915, "failed with %d\n", ret);
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 5f2144c78f8a..4d1cc383b681 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -285,6 +285,7 @@ int intel_huc_init(struct intel_huc *huc)
 	return 0;
 
 out:
+	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_INIT_FAIL);
 	drm_info(&i915->drm, "HuC init failed with %d\n", err);
 	return err;
 }
@@ -404,13 +405,8 @@ bool intel_huc_is_authenticated(struct intel_huc *huc)
  * This function reads status register to verify if HuC
  * firmware was successfully loaded.
  *
- * Returns:
- *  * -ENODEV if HuC is not present on this platform,
- *  * -EOPNOTSUPP if HuC firmware is disabled,
- *  * -ENOPKG if HuC firmware was not installed,
- *  * -ENOEXEC if HuC firmware is invalid or mismatched,
- *  * 0 if HuC firmware is not running,
- *  * 1 if HuC firmware is authenticated and running.
+ * The return values match what is expected for the I915_PARAM_HUC_STATUS
+ * getparam.
  */
 int intel_huc_check_status(struct intel_huc *huc)
 {
@@ -423,6 +419,10 @@ int intel_huc_check_status(struct intel_huc *huc)
 		return -ENOPKG;
 	case INTEL_UC_FIRMWARE_ERROR:
 		return -ENOEXEC;
+	case INTEL_UC_FIRMWARE_INIT_FAIL:
+		return -ENOMEM;
+	case INTEL_UC_FIRMWARE_LOAD_FAIL:
+		return -EIO;
 	default:
 		break;
 	}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index b91ad4aede1f..9fae911026d5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -904,7 +904,6 @@ int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
 out_unpin:
 	i915_gem_object_unpin_pages(uc_fw->obj);
 out:
-	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_INIT_FAIL);
 	return err;
 }
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 520ad2691a99..629198f1d8d8 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -645,6 +645,22 @@ typedef struct drm_i915_irq_wait {
  */
 #define   I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP	(1ul << 5)
 
+/*
+ * Query the status of HuC load.
+ *
+ * The query can fail in the following scenarios with the listed error codes:
+ *  -ENODEV if HuC is not present on this platform,
+ *  -EOPNOTSUPP if HuC firmware usage is disabled,
+ *  -ENOPKG if HuC firmware fetch failed,
+ *  -ENOEXEC if HuC firmware is invalid or mismatched,
+ *  -ENOMEM if i915 failed to prepare the FW objects for transfer to the uC,
+ *  -EIO if the FW transfer or the FW authentication failed.
+ *
+ * If the IOCTL is successful, the returned parameter will be set to one of the
+ * following values:
+ *  * 0 if HuC firmware load is not complete,
+ *  * 1 if HuC firmware is authenticated and running.
+ */
 #define I915_PARAM_HUC_STATUS		 42
 
 /* Query whether DRM_I915_GEM_EXECBUFFER2 supports the ability to opt-out of
-- 
2.37.3

