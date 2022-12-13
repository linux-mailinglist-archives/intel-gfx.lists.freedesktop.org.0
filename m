Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 656DF64B023
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 08:03:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C8210E2E6;
	Tue, 13 Dec 2022 07:03:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144E310E2C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 07:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670914984; x=1702450984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eRfXoQQVPHvHwmvTV6WTPHThqPii8aPFp6SSbIEmiNw=;
 b=avL0OLTumDiNDh6cu7iYh+lGSeSGwr7/jAOy6+sPKN50dT+S+yVBUJhr
 1/A1HpnO1EbN5xDTDey7+NPYwL94WL+FCgufe0TH6TjkBmAMyEpK2FYUk
 LmRD7t96Pko8rThXfKMdgs7fDp757mGlL4BRoga1o5pE/vQdWLmg3vMl0
 s0nXf58dbUiVjCxwxxalNiXRAba5lMlq05IbpH/c/soy5DbElo/0jCciq
 7cIC0r2mWKFwQmWTgDQG0/US7n1fBFsz3yKpQU5/tKO7p/b8XoqjGfWeR
 i5pGx31R7IsQ2eXbxs6AmuKpvUuNonnDYi4q3d2ICZaIOUyRxW/2IiUYV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="404319158"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="404319158"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 23:03:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="977347016"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="977347016"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga005.fm.intel.com with ESMTP; 12 Dec 2022 23:03:01 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Dec 2022 12:31:53 +0530
Message-Id: <20221213070158.2621403-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221213070158.2621403-1-suraj.kandpal@intel.com>
References: <20221213070158.2621403-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/7] drm/i915/hdcp: Keep cp fw agonstic
 naming convention
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anshuman Gupta <anshuman.gupta@intel.com>

Change the include/drm/i915_mei_hdcp_interface.h to
include/drm/i915_cp_fw_hdcp_interface.h

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Acked-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h          | 2 +-
 drivers/misc/mei/hdcp/mei_hdcp.c                            | 2 +-
 ...915_mei_hdcp_interface.h => i915_cp_fw_hdcp_interface.h} | 6 +++---
 3 files changed, 5 insertions(+), 5 deletions(-)
 rename include/drm/{i915_mei_hdcp_interface.h => i915_cp_fw_hdcp_interface.h} (97%)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 32e8b2fc3cc6..52d93e89b4c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -43,7 +43,7 @@
 #include <drm/drm_rect.h>
 #include <drm/drm_vblank.h>
 #include <drm/drm_vblank_work.h>
-#include <drm/i915_mei_hdcp_interface.h>
+#include <drm/i915_cp_fw_hdcp_interface.h>
 #include <media/cec-notifier.h>
 
 #include "i915_vma.h"
diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
index e889a8bd7ac8..7e3cd3fd7f7b 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.c
+++ b/drivers/misc/mei/hdcp/mei_hdcp.c
@@ -23,7 +23,7 @@
 #include <linux/component.h>
 #include <drm/drm_connector.h>
 #include <drm/i915_component.h>
-#include <drm/i915_mei_hdcp_interface.h>
+#include <drm/i915_cp_fw_hdcp_interface.h>
 
 #include "mei_hdcp.h"
 
diff --git a/include/drm/i915_mei_hdcp_interface.h b/include/drm/i915_cp_fw_hdcp_interface.h
similarity index 97%
rename from include/drm/i915_mei_hdcp_interface.h
rename to include/drm/i915_cp_fw_hdcp_interface.h
index f441cbcd95a4..e5dc6b985b2f 100644
--- a/include/drm/i915_mei_hdcp_interface.h
+++ b/include/drm/i915_cp_fw_hdcp_interface.h
@@ -6,8 +6,8 @@
  * Ramalingam C <ramalingam.c@intel.com>
  */
 
-#ifndef _I915_MEI_HDCP_INTERFACE_H_
-#define _I915_MEI_HDCP_INTERFACE_H_
+#ifndef _I915_CP_FW_HDCP_INTERFACE_H_
+#define _I915_CP_FW_HDCP_INTERFACE_H_
 
 #include <linux/mutex.h>
 #include <linux/device.h>
@@ -181,4 +181,4 @@ struct i915_hdcp_comp_master {
 	struct mutex mutex;
 };
 
-#endif /* _I915_MEI_HDCP_INTERFACE_H_ */
+#endif /* _I915_CP_FW_HDCP_INTERFACE_H_ */
-- 
2.25.1

