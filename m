Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9390464236A
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 08:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24BB210E10A;
	Mon,  5 Dec 2022 07:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6C010E123
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 07:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670224024; x=1701760024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=19+1oskTrxf8U9aO+OD9a9nPrVtOnsZjj8J1h8M+5qs=;
 b=b8bbfHJuxzEuskWGcylGfRCZf+5jhI0Squfxp9+X9wi3Y0ldJh8YLeA8
 6m23QCjfK6st801eabgE2KrIbWNh5EC2fBY9eK08+mUz8S2SysQoy4oQ2
 k0OpzrGjvq+54hPAWyXN0y8RJP+EzjjgSSC2qBytc6Uu/freLZVC3DDHQ
 sFqY4xDrxyTYC8nxAyb96oUWGGMnhIg+LohS8I59kvVYhUQIdxG23z+ZQ
 jDbLsC0Xz7DHYOW/uOr6j6HWazLl29l9tdTJ34zPovnNVRk16FZ0b5l/q
 RzoK3+bOIFlZ1Qk2ETmkE2katso7M6rvXWyIFn7/eXIK2AzcG3bDl4k7h w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="317423689"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="317423689"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:07:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="676489407"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="676489407"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 04 Dec 2022 23:07:02 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 12:35:42 +0530
Message-Id: <20221205070543.2510309-9-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221205070543.2510309-1-suraj.kandpal@intel.com>
References: <20221205070543.2510309-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/hdcp: Keep cp fw agonstic naming
 convention
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
---
 drivers/gpu/drm/i915/display/intel_display_types.h          | 2 +-
 drivers/misc/mei/hdcp/mei_hdcp.c                            | 2 +-
 ...915_mei_hdcp_interface.h => i915_cp_fw_hdcp_interface.h} | 6 +++---
 3 files changed, 5 insertions(+), 5 deletions(-)
 rename include/drm/{i915_mei_hdcp_interface.h => i915_cp_fw_hdcp_interface.h} (97%)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ff3ef37d099e..8619240e63c1 100644
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

