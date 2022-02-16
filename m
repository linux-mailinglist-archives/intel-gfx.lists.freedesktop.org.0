Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B364B8D02
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 16:57:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED78A10EA6B;
	Wed, 16 Feb 2022 15:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CEF210EA64
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 15:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645027023; x=1676563023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YhgsS54TROjSbKmTPUJcxvhzvnHLjdVkjNN5YuQyWXA=;
 b=igM6EwvNJ3OI79JkOY7IbuG0ElCrWu3B3Zud9/xAas0mDqL1slyEAKCB
 eFuNSSX3RutA/1ik1/X1m97rb0AHSWPyU+j2sHYCgF0yEA+mVpHXUeUR7
 QtjkhwDb+r72V9vDiqtOSJxuG/SKaxbdsrY05TkHvXp1fxCf5n1g4fDX+
 pgOdTsbzDkbja4IBXOGB/uaV32pXpqWTX0WHglwCdjvap16AcjBw0tPux
 Q172vmvz2RO8w6k9771oQ4qT7sDVkUErwTsh9eTqA3H3iX3sFRpJ7LCwz
 QSwb1JqIzOxr0dHwynL4RF55hQxyoDZ4WjTRBX+V6Qd+DmALbLLOdRLUT w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="337083187"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="337083187"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 07:47:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="503080850"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.113])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 07:47:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Feb 2022 17:47:09 +0200
Message-Id: <20220216154711.3329667-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220216154711.3329667-1-jani.nikula@intel.com>
References: <20220216154711.3329667-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dsi: add separate init timer mask
 definition for ICL DSI
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

Having a separate definition will be useful for splitting VLV and ICL
register files.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h        | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 479d5e1165d9..3c01565e62b2 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -570,7 +570,7 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 	/* Program T-INIT master registers */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		tmp = intel_de_read(dev_priv, ICL_DSI_T_INIT_MASTER(port));
-		tmp &= ~MASTER_INIT_TIMER_MASK;
+		tmp &= ~DSI_T_INIT_MASTER_MASK;
 		tmp |= intel_dsi->init_count;
 		intel_de_write(dev_priv, ICL_DSI_T_INIT_MASTER(port), tmp);
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4ea1713e6b60..5646c843fd0d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9204,6 +9204,7 @@ enum skl_power_gate {
 #define ICL_DSI_T_INIT_MASTER(port)	_MMIO_PORT(port,	\
 						   _ICL_DSI_T_INIT_MASTER_0,\
 						   _ICL_DSI_T_INIT_MASTER_1)
+#define   DSI_T_INIT_MASTER_MASK	REG_GENMASK(15, 0)
 
 #define _DPHY_CLK_TIMING_PARAM_0	0x162180
 #define _DPHY_CLK_TIMING_PARAM_1	0x6c180
-- 
2.30.2

