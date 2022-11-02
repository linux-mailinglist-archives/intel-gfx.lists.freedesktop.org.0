Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7692D616092
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:09:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E6B10E47D;
	Wed,  2 Nov 2022 10:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BDB10E47D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383740; x=1698919740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CDvcDep6JUp/MhW6hUpQfQQJf9FLC/gJBvbVkaiSDNE=;
 b=He2g428VJNFEEiiDi/tGugGzBt6Y5GXLPk+MMr2qY8P4xl47isfNdUSY
 TL0nZPQdQJkt+IzYgVevEVOWO8t1mAnMvKi0EeI5LtX7hqqgMJBpB8i1E
 TLszwm8McV8NNrWRjfJu8iNSLSpmCRDdxW9foXGBxR6XvYwakMhMxs9OK
 RnD1DMyGaInFthIcqMHA9uwFLom/s7uQPZ4siKhRWHKi1HdX5JVFt9BlU
 rSkTeqngQYb9K0Sy5ZHCT+KF8AvpzxZO6m6UEKYiRxLYeYmxUG70Nd9Qj
 GJ2zrPOT2KWuDMkHbfWVNjpj8XKiV1K29zWdSAY5uArqUIDXiDxHg6/oZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296807660"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296807660"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="963469088"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="963469088"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:16 +0200
Message-Id: <8523aa88daaf2dbf0ce138980142dbcd6d1ae0bc.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 08/16] drm/i915/display: reduce the includes
 in intel_dvo_dev.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Only include what's needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo_dev.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
index 50205f064d93..ecff7b190856 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
+++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
@@ -23,12 +23,12 @@
 #ifndef __INTEL_DVO_DEV_H__
 #define __INTEL_DVO_DEV_H__
 
-#include <linux/i2c.h>
-
-#include <drm/drm_crtc.h>
-
 #include "i915_reg_defs.h"
 
+enum drm_connector_status;
+struct drm_display_mode;
+struct i2c_adapter;
+
 struct intel_dvo_device {
 	const char *name;
 	int type;
-- 
2.34.1

