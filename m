Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B75BF53BA95
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 16:20:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A3D8112D7D;
	Thu,  2 Jun 2022 14:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764BE112D77
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 14:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654179641; x=1685715641;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8wISFmGdZ8hD31kH5sLhZgRxV8fzd5Xm0Mui0I7fiB4=;
 b=Cl2ha9KpqvOZ64IKZrJYXhCeTvz31WbB6DhGqs8lMWWmA8tfVam2sFZH
 QD7Y3kKafWIi1dYqwDTA5D2zg7y5WDck1nBre1w7Q2Ffe9HKrwUaY40cR
 OebJGJkOPD0i2jccuFCX3xmWkteI8GANfyJAhYCncADxdu3GGiSWWCx7M
 3FU5pL1s2ld7ttf6CltAQR2n4ZDBdFFRaydrKZ8Ywbi4linI7P2UlqcBu
 EiVSVeP52/iOgTQc0pG4lhYX7F5h1Lp7oohCVlryyRIUqBh6WXTJ470u/
 FMBquz0Vewyqm+XPVnfzCN4nEt/li6Y+gNGUPC66GOTe++M+Fz9ydvI3S w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="339007313"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="339007313"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 07:20:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="905007706"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga005.fm.intel.com with ESMTP; 02 Jun 2022 07:20:38 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jun 2022 19:48:49 +0530
Message-Id: <20220602141850.21301-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20220602141850.21301-1-animesh.manna@intel.com>
References: <20220602141850.21301-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 4/5] drm/i915/display: prepend connector
 name to the backlight
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

From: Arun R Murthy <arun.r.murthy@intel.com>

With the enablement of dual eDP, there will have to exist two entries of
backlight sysfs file. In order to avoid sysfs file name duplication, the
file names are prepended with the connector name.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 68513206a66a..211fa0f07239 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -967,6 +967,8 @@ int intel_backlight_device_register(struct intel_connector *connector)
 		props.power = FB_BLANK_POWERDOWN;
 
 	name = kstrdup("intel_backlight", GFP_KERNEL);
+	name = kasprintf(GFP_KERNEL, "%s.intel_backlight",
+			connector->base.name);
 	if (!name)
 		return -ENOMEM;
 
-- 
2.29.0

