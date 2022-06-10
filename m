Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A8B546815
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 16:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADDD9112755;
	Fri, 10 Jun 2022 14:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C322C112755
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 14:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654870259; x=1686406259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rg3RV4/hdk7MsTsSmjnWUZARuF1yKeYWwbXzYKCEja4=;
 b=SuTKNyYWL11GG+2Yc6BccMPeVyVJ2noiZAYl5EA13GAhBPLaw/1gqfOC
 wuNOhyTSXAStq/+EJ2x44FEyqJKXcfAsNVxUR1UM0UmgZEQLcObWDqSTz
 xOIAK9RomhxxDDKv9gyVJBKXKDPKK2wFuWHwOxTNROV3d8+Hq12eWhQXl
 fSBjwWaQQ+L7YrdpzL7ASlW6HG6KVhi5RrHjLTaknofwXXLvgAb9VqrFf
 OAIU0u7146bLYsdhH8iaAFSVse2xL1lFY+RPRGbVqUKgHUZahnu+QwQib
 hrMZ7lueHcFq2G2kHGHVesdv1bNnGB2F+SJ7tYVzsI5t/eDId3V0fsq61 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="277673683"
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="277673683"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 07:10:39 -0700
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="828270569"
Received: from vrao2-mobl1.gar.corp.intel.com (HELO localhost) ([10.252.58.80])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 07:10:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 17:10:26 +0300
Message-Id: <45c97c93bb9262c08aefa7b4bfe31f3f3481c998.1654870175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1654870175.git.jani.nikula@intel.com>
References: <cover.1654870175.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/bios: no need to pass i915 to
 parse_ddi_port()
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

i915 is available via devdata, grab it there instead of passing.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 8f9b879e140b..59d55a99bc2e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2561,9 +2561,9 @@ static bool is_port_valid(struct drm_i915_private *i915, enum port port)
 	return true;
 }
 
-static void parse_ddi_port(struct drm_i915_private *i915,
-			   struct intel_bios_encoder_data *devdata)
+static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 {
+	struct drm_i915_private *i915 = devdata->i915;
 	const struct child_device_config *child = &devdata->child;
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
 	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
@@ -2659,7 +2659,7 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
 		return;
 
 	list_for_each_entry(devdata, &i915->vbt.display_devices, node)
-		parse_ddi_port(i915, devdata);
+		parse_ddi_port(devdata);
 }
 
 static void
-- 
2.30.2

