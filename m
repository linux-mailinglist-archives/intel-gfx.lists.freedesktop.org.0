Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5CC97B2BF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:15:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30A3D10E4AC;
	Tue, 17 Sep 2024 16:15:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fqt4xcr1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D3D10E4B0;
 Tue, 17 Sep 2024 16:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589713; x=1758125713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YFhpPtDKeL88zvkqAUzong+jAid35mivPWoaovPTjos=;
 b=fqt4xcr1q1dqfSZvbyqI3H0QW2EZCEHzffPVRNMPiz6E57/uul49Q5XN
 CGOBaRaEyuRsbuoatE8XznV95DnBTD104G940XnqzfMnClLTV7KHwRngz
 U0qXqipexkvHuToMk4TovU/euHDDlYppL6QNPlCX12K8+d/wjS82v2Z39
 T3Ubqilzb12hxuDJdpyjdOekDzzxfw/CW6LDtRP/eCnoCsTkw3jVFhOYi
 JccmdI8yt+ATkbXOSRJx6lPp9v9+Rc5TzeQfqcVtBOdM6eoYGgBwst+i5
 8AGom8sokaRQeM/WrvyvpzR88EWT52PQv3BoSvN/amxYoTTjzRtUDW0CD g==;
X-CSE-ConnectionGUID: 3nQPoTkQS0iYfhHMN36qog==
X-CSE-MsgGUID: OZo7bhvETVCRMqZJ3voz5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="13559477"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="13559477"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:12 -0700
X-CSE-ConnectionGUID: A0ptZWh1RXqmLpxT8fNTWw==
X-CSE-MsgGUID: Bqid8ynCRpq+Z50ZCONApA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73336858"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 10/22] drm/xe/display: use correct bo type in
 intel_fbdev_fb_alloc()
Date: Tue, 17 Sep 2024 19:13:49 +0300
Message-Id: <344a5a4c88a3ce17dd276b0155bcdbf93e5fb475.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

It's really struct xe_bo, and struct drm_i915_gem_object only works
because of -Ddrm_i915_gem_object=xe_bo in xe Makefile.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 48478a6bed6f..c290387964c0 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -20,7 +20,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	struct drm_device *dev = helper->dev;
 	struct xe_device *xe = to_xe_device(dev);
 	struct drm_mode_fb_cmd2 mode_cmd = {};
-	struct drm_i915_gem_object *obj;
+	struct xe_bo *obj;
 	int size;
 
 	/* we don't do packed 24bpp */
-- 
2.39.2

