Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 524547D81EF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 13:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8AED10E7B6;
	Thu, 26 Oct 2023 11:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89AEE10E7B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 11:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698320472; x=1729856472;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J7sEQozampFXJWZDbfpc9oCQHbCHHQoEQqat5tQ2/o8=;
 b=eJMlpWR7a4V2lpDXqY2bCSQiS1tnT13K/mUYqslsMiIRNeA7zeRNXonh
 r4pBtW/dOUyK2FCS289Kt2fmrFzWg4AQUY83A3KAhrruMN6F+hIbvr3ON
 hoi0xQMBsR4ZKPe7RneL2b958a8m2Q3GuNYZ6wKdUwGZ4VlVoZ9q+OLKP
 B3wyLRZ0k8RiSdtyo4irPEHi6zon6Akjx/K1B93aJxQ3rvGaYp3eODq2K
 aJVo0UObWxP51njAuDXuXJqsbA0cEWerkcUOkYluykAL/Q5CMRxleuljZ
 WFiF4agyOY+QlddkNf0mBcCiMPHcTHqfpVUIxXKn/voAPa3tS/uNbJM8F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="6151077"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="6151077"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 04:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="481767"
Received: from unknown (HELO jhogande-mobl1.fi.intel.com) ([10.237.66.43])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 04:40:51 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 14:40:49 +0300
Message-Id: <20231026114049.2013478-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Include drm_drv.h in
 intel_display_params.c
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

intel_display_params.c is accessing drm_drv->name. Due to this include
drm_drv.h to avoid build problem with Xe.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 11e03cfb774d..cd1dd2fbd8a4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <drm/drm_drv.h>
+
 #include "intel_display_params.h"
 #include "i915_drv.h"
 
-- 
2.34.1

