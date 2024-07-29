Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D4C93F7F5
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE6A610E3EE;
	Mon, 29 Jul 2024 14:30:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NxixKNjH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 328D510E3EE;
 Mon, 29 Jul 2024 14:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722263446; x=1753799446;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NAYHpFMsdCI+7g9sU9Y6st5zQ+1z00NQooDTjBDPOYs=;
 b=NxixKNjH/W2IPf2LbrUZ9AePjiROH4l7khIBDqxdckV5/4AdmQt86TH2
 gmGvdRVLP5Pyj8WuaSkM/7BSVKEgyk52ZoXKkCO4xvmUZEU4CLfgSDD5m
 Rqlcs8E6MkkGoqEZTHFd9hMvv02Jen8COibousE8OC6e/xPe5WqBcfjcs
 ZgHhJSXZkPJxSoLlbmTXIFa9ZDSPKKS5yTKqWJLHavF9V1k6tSAOQQV3q
 ZshujZj9stXbLIf/IuZo9Z7y3BaCdAXAkce6+OwK8LT2DnoOZKy23J5F1
 h+b4S8KKDQqTRhOSXY/bRayGMELJ7UHEVC38tIgnD8ty0Y5gcEc3+tpKj Q==;
X-CSE-ConnectionGUID: 6BtpkM4aQ4CygO3gZNfR0g==
X-CSE-MsgGUID: p8h4MjTwSDS4iO0LSBkPJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19823119"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="19823119"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:46 -0700
X-CSE-ConnectionGUID: wllZHgOdSSuURgq6BibNWQ==
X-CSE-MsgGUID: dI5MwLfuQ+KcywIsTs4gcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53651640"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/10] drm/i915: support struct device and pci_dev in
 to_intel_display()
Date: Mon, 29 Jul 2024 17:30:07 +0300
Message-Id: <2ed3f1045be7e3869a3742880c6518f46af39fda.1722263308.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
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

Now that both xe and i915 store struct drm_device in drvdata, we can
trivially support struct device and struct pci_dev in
to_intel_display().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a9d2acdc51a4..ce9c2f9ff5b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2208,6 +2208,10 @@ static inline int to_bpp_x16(int bpp)
  */
 #define __drm_device_to_intel_display(p) \
 	(&to_i915(p)->display)
+#define __device_to_intel_display(p)				\
+	__drm_device_to_intel_display(dev_get_drvdata(p))
+#define __pci_dev_to_intel_display(p)				\
+	__drm_device_to_intel_display(pci_get_drvdata(p))
 #define __intel_connector_to_intel_display(p)		\
 	__drm_device_to_intel_display((p)->base.dev)
 #define __intel_crtc_to_intel_display(p)		\
@@ -2231,6 +2235,8 @@ static inline int to_bpp_x16(int bpp)
 #define to_intel_display(p)				\
 	_Generic(*p,					\
 		 __assoc(drm_device, p),		\
+		 __assoc(device, p),			\
+		 __assoc(pci_dev, p),			\
 		 __assoc(intel_connector, p),		\
 		 __assoc(intel_crtc, p),		\
 		 __assoc(intel_crtc_state, p),		\
-- 
2.39.2

