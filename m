Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D3D824615
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 17:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A166110E4F1;
	Thu,  4 Jan 2024 16:25:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CF9510E4C9;
 Thu,  4 Jan 2024 16:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704385525; x=1735921525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aClyCFMfObtAePhOg+cx59V8fhgqwMgSP5xjB2jdBhU=;
 b=CdhOZbFub4bVbuenwrjiJFXO/rllnU8xOiIPXNYpS1yQDUAurD3UfohJ
 Z9DfjwFPZNY3UDGuh8rvB1edPbPHvPXCXqwlxY7vH5SLBWVq8RQlHUfzu
 dIiGjpycy6aOoa1CxymuwCrKq/mZJmCpkxwXh7PCkmddI5nVmh/5VmgyS
 6mzZwo7rty6DAsUi4qywre4is8FadKURusBFQRgadiJSs9W3eMbKuybmm
 NQiEuLoneV+7i5tuSmcdadSKOyAJ8WEg6QfwypYRUzFuC8ZbRG48e52qa
 zHFS+8BamQkomP+mY2uoCsQUTCmQaPtb0CPwjmMOLKk+9ZYnvhZpQzGYe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="428459497"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="428459497"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:24:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="903868053"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="903868053"
Received: from josouza-mobl2.bz.intel.com ([10.87.243.88])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:24:19 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 3/3] drm/xe: Use intel_wakeref_t in intel_runtime_pm
 functions
Date: Thu,  4 Jan 2024 08:24:11 -0800
Message-ID: <20240104162411.56085-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240104162411.56085-1-jose.souza@intel.com>
References: <20240104162411.56085-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Now intel_wakeref_t is a unsigned long and Xe KMD version of those
functions should use the same type, so changing from bool to
intel_wakeref_t.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 5d2a77b52db41..420eba0e4be00 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -162,18 +162,18 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 
 #include "intel_wakeref.h"
 
-static inline bool intel_runtime_pm_get(struct xe_runtime_pm *pm)
+static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
 {
 	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
 
 	if (xe_pm_runtime_get(xe) < 0) {
 		xe_pm_runtime_put(xe);
-		return false;
+		return 0;
 	}
-	return true;
+	return 1;
 }
 
-static inline bool intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
+static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
 {
 	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
 
@@ -187,7 +187,7 @@ static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
 	xe_pm_runtime_put(xe);
 }
 
-static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, bool wakeref)
+static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_t wakeref)
 {
 	if (wakeref)
 		intel_runtime_pm_put_unchecked(pm);
-- 
2.43.0

