Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5730958E5E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69B0710E859;
	Tue, 20 Aug 2024 19:01:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cbfHCFzZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B3610E851;
 Tue, 20 Aug 2024 19:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180483; x=1755716483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zQOgKlx62S5FuSiQpRHQCfq5ZTL2D5xT+pIteB2yv60=;
 b=cbfHCFzZ0fmTVpMtmVZMpfAinqwezPiVzioU5r0eY8/80YFIftBaQ/r1
 NLhF5jiXAqR44t7VSQ8ZDrBuhSOAZ0BlAI2iAN9dugA6dGcgMrvVaJiTH
 zG4K1RKaLntNwmjtur1MgrhIUSWrAT7WSp1JxEpRI35QSh9BqNpP+JHcp
 C0zGLHAkN/jdJl6MjvLJbjSwhLGajDsoM7chp17XAfb4ipbgqbbnkS70I
 u85+wGvkJPga7zmu67MG+Gn4F0G42RLEQneu5JIDMqAmRz4XDy7tIcjPc
 9rf3hNj1Ctfc8i8nM6Nwvlc0mGNSCNN6/kZj0GxYvxke0jw33H24Vhs1+ Q==;
X-CSE-ConnectionGUID: o+5c7v96SiK5B+xvDEbl4A==
X-CSE-MsgGUID: bF2gz7pVT/yt8upYuJTHLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22035976"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22035976"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:23 -0700
X-CSE-ConnectionGUID: 3zJIAp8OTCClxkVi7dyFKQ==
X-CSE-MsgGUID: uYDlaA9TQcOW2CsSM/66JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="65676480"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 05/10] drm/i915/display: rename IS_DISPLAY_IP_RANGE() to
 IS_DISPLAY_VER_FULL()
Date: Tue, 20 Aug 2024 22:00:38 +0300
Message-Id: <adb43f45ad0b1846c2cb9a5861ba1f727c41ae83.1724180287.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724180287.git.jani.nikula@intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
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

Unify macro naming. Be more in line with DISPLAY_VER() and
IS_DISPLAY_VER().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_power.c  | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 13453ea4daea..30c624989902 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -161,7 +161,7 @@ enum intel_display_subplatform {
 #define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
 
 /* Check that device has a display IP version within the specific range. */
-#define IS_DISPLAY_IP_RANGE(__i915, from, until) ( \
+#define IS_DISPLAY_VER_FULL(__i915, from, until) ( \
 	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
 	(DISPLAY_VER_FULL(__i915) >= (from) && \
 	 DISPLAY_VER_FULL(__i915) <= (until)))
@@ -182,7 +182,7 @@ enum intel_display_subplatform {
  * stepping bound for the specified IP version.
  */
 #define IS_DISPLAY_IP_STEP(__i915, ipver, from, until) \
-	(IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
+	(IS_DISPLAY_VER_FULL((__i915), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__i915), (from), (until)))
 
 #define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 39ab3117265c..ef2fdbf97346 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1684,7 +1684,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 		intel_dmc_load_program(dev_priv);
 
 	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
-	if (IS_DISPLAY_IP_RANGE(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
+	if (IS_DISPLAY_VER_FULL(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
 		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
 			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
 			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
-- 
2.39.2

