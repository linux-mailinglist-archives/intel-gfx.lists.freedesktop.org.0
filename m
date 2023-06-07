Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0AE72570F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 10:13:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4182F10E461;
	Wed,  7 Jun 2023 08:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AEEB10E45E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 08:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686125575; x=1717661575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yIFro2OixaipKPUBDiH9ufEe7FkQSLIiKfKL8soGkMI=;
 b=oHSw+yDRsjp1HUcVsfUtlvqteQNoJs0rC9at+UBo+uGQ5f4Wd7smWfap
 pV1Fmqtd8UWCVnZK5aLyF/SsqlUOvTzceB5NJu+W/RAZrhkVCy7I7gX0C
 m7yuk2EmDEyQEOabqj43b6P+zL50UryGMYbrj5XiUm9fyrhe2OK1kdXHj
 n+GmotOnpUcsBZSh6fMfY9WOL4g40NngoFGPO6ppvkIjuugzphH8Sx2MU
 oAjjpFwu/17V5mpHouDID0HSEUiXkc0tKq1yehLuXKGjytlQqDXbzsB7R
 ggXEM6b9jZ3Ce8U85W9Xi6fl3JIWNobrUA8K+Q0Gt8FG07Fkt/7RFMoc7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="336544427"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="336544427"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 01:12:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="956122226"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="956122226"
Received: from tneuman-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.210.241])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 01:12:54 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jun 2023 11:12:26 +0300
Message-Id: <20230607081227.96992-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230607081227.96992-1-jouni.hogander@intel.com>
References: <20230607081227.96992-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915/display: Remove
 i915_gem_object_types.h from intel_frontbuffer.h
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

Now as we have removed all the references to internals of i915_gem_object
from the frontbuffer header we can also remove including
i915_gem_object_types.h.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index eeccc847331d..72d89be3284b 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -28,7 +28,6 @@
 #include <linux/bits.h>
 #include <linux/kref.h>
 
-#include "gem/i915_gem_object_types.h"
 #include "i915_active_types.h"
 
 struct drm_i915_private;
-- 
2.34.1

