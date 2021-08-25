Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C11443F6E79
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 06:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10FCB6E14B;
	Wed, 25 Aug 2021 04:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEADE6E14B
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 04:35:28 +0000 (UTC)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4E84A3F04D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 04:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1629866126;
 bh=EZ0RcFlcruqJ36q6Ff+KAIdffnhNgylg/ObOSYM0RTQ=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=wOHtZyMsXLJYqwW3GL6WNN2Vxm1UyV2bnxTEXE5HUtn4IFj6vRLsFRmQExYsUTORc
 4/o6bB1oM4eh67wKZdzkDQNGl+IswH8PRdQK0BNWOEDCq+MV7MmyVdTeLN523JQQRt
 NAw/VXt9sTQl9mJr2bpj2s5PqKqQI12Z60pOgnOik6mBFQmGydBniH/gDmc6/tpZeG
 wJiv92CAB6kuYiobKKDiUYBpZ79U/p1Yx5OozAjVL0lunvBkPZ2sB153FIDF/3oE9q
 jjvjI3hw3JVP//r8RzmZBoGuegJzHVGNM+AoXN6AdoiewduNnLQPnaL5uU9ZbBFxPB
 8hl3lYE7vYm/w==
Received: by mail-pl1-f200.google.com with SMTP id
 h13-20020a170902f54d00b00134c35c8d05so3142007plf.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 21:35:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EZ0RcFlcruqJ36q6Ff+KAIdffnhNgylg/ObOSYM0RTQ=;
 b=Br5yipkmmQIB+A8z72eJUUt5vn5vbZOFGdOBzfDQuFCUkMFWbE0g7aP+mre4cttDpZ
 kUhFUgbH7hxArZQhaMZiF/nSLb+COZBXpk0T3Xu6XVof0tByk9d8+JrFVpfvdK5tQyud
 Xakg8swtLszbcViF0VpDgF3EvV/pNG08LkTVCpYBLJHHKdP+34++J6/YJ+VBRatC2iBq
 xtsB0C3dQFxuChQWry4p4/AqaVjpPSRv9gsPATO7gr6fMgX7BS2W6MGg1AoZJVR+PkDl
 H0j67LKoI4+lJSt5UCzm/vjGbqKDHzgagSy0xO4D5SOiwLLGWAxxfrQAVylUhWNmyOe3
 H8VQ==
X-Gm-Message-State: AOAM532chfSjAr9Z1cSB8x4GxtlLji7+3pqjo7XHZoo3cUYld8wcAMTa
 6iIYJ+UmtfIjmG1rAB7ue9il6hjW88zNhqCDZuMrU1Ou2DLQKWEG8a7URhGe02/DLkec7hIsjv6
 8LEOxRtQyPaofDS26Kb8OG7pzRmSl4WFjvjcyw4tBKUXOxg==
X-Received: by 2002:a17:902:6bc7:b0:12d:aa67:695e with SMTP id
 m7-20020a1709026bc700b0012daa67695emr36226776plt.76.1629866124463; 
 Tue, 24 Aug 2021 21:35:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyTCOvXfJkXl4+aTAA/Pc6COhJMOp5DjkRBYSXE7TAnpAiIAGet9SrtfFdfK0LXeonWApRDgg==
X-Received: by 2002:a17:902:6bc7:b0:12d:aa67:695e with SMTP id
 m7-20020a1709026bc700b0012daa67695emr36226753plt.76.1629866124093; 
 Tue, 24 Aug 2021 21:35:24 -0700 (PDT)
Received: from canonical.com (61-220-137-34.HINET-IP.hinet.net.
 [61.220.137.34])
 by smtp.gmail.com with ESMTPSA id g10sm20491557pfh.120.2021.08.24.21.35.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 21:35:23 -0700 (PDT)
From: Koba Ko <koba.ko@canonical.com>
To: intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com
Date: Wed, 25 Aug 2021 12:35:21 +0800
Message-Id: <20210825043522.346512-1-koba.ko@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm: i915: move intel_pch.h to include/drm
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

Because AMD GPU have a issue on RKL platform,
driver needs to determine which intel platfomr is and
if the platform is RKL, disable PCIE_DPM for AMD polaris-series GPUs.

Move intel_pch.h to includ/drm

Ref: https://lists.freedesktop.org/archives/amd-gfx/2021-August/067413.html
Signed-off-by: Koba Ko <koba.ko@canonical.com>
---
 drivers/gpu/drm/i915/i915_drv.h                   | 4 +++-
 drivers/gpu/drm/i915/intel_pch.c                  | 2 +-
 {drivers/gpu/drm/i915 => include/drm}/intel_pch.h | 2 --
 3 files changed, 4 insertions(+), 4 deletions(-)
 rename {drivers/gpu/drm/i915 => include/drm}/intel_pch.h (98%)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 106f218cec2b..7d091927d9b4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -60,6 +60,7 @@
 #include <drm/drm_connector.h>
 #include <drm/i915_mei_hdcp_interface.h>
 #include <drm/ttm/ttm_device.h>
+#include <drm/intel_pch.h>
 
 #include "i915_params.h"
 #include "i915_reg.h"
@@ -89,7 +90,6 @@
 
 #include "intel_device_info.h"
 #include "intel_memory_region.h"
-#include "intel_pch.h"
 #include "intel_runtime_pm.h"
 #include "intel_step.h"
 #include "intel_uncore.h"
@@ -1336,6 +1336,8 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 	(drm_WARN_ON(&(__i915)->drm, INTEL_GT_STEP(__i915) == STEP_NONE), \
 	 INTEL_GT_STEP(__i915) >= (since) && INTEL_GT_STEP(__i915) < (until))
 
+void intel_detect_pch(struct drm_i915_private *dev_priv);
+
 static __always_inline unsigned int
 __platform_mask_index(const struct intel_runtime_info *info,
 		      enum intel_platform p)
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index d1d4b97b86f5..43162d1338bc 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -4,7 +4,7 @@
  */
 
 #include "i915_drv.h"
-#include "intel_pch.h"
+#include <drm/intel_pch.h>
 
 /* Map PCH device id to PCH type, or PCH_NONE if unknown. */
 static enum intel_pch
diff --git a/drivers/gpu/drm/i915/intel_pch.h b/include/drm/intel_pch.h
similarity index 98%
rename from drivers/gpu/drm/i915/intel_pch.h
rename to include/drm/intel_pch.h
index 7c0d83d292dc..168c83c836b4 100644
--- a/drivers/gpu/drm/i915/intel_pch.h
+++ b/include/drm/intel_pch.h
@@ -84,6 +84,4 @@ enum intel_pch {
 #define HAS_PCH_NOP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_NOP)
 #define HAS_PCH_SPLIT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) != PCH_NONE)
 
-void intel_detect_pch(struct drm_i915_private *dev_priv);
-
 #endif /* __INTEL_PCH__ */
-- 
2.25.1

