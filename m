Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E74BE952DCC
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 14:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C0B910E217;
	Thu, 15 Aug 2024 12:00:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NxtlvuaH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E037D10E318
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2024 12:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723723207; x=1755259207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0cQs83EnaTZh0mXMLUOnE+h/YPvEkTtUavIl1IETFro=;
 b=NxtlvuaHyheUyxvrqnGvA0u1gW4PtnznnTwjHr+M1uJLNLOq4pWbC031
 xcJyMcgDoE/RxiRY5Z+in9MFH6KU5Ps3wnRABPrV9DCDxLSWkNR9iCmCM
 KmcBjCSpblxT8ZjSOs4UgJfWd7GWeVyqe51DNrL0iJMYS0e86ZvqF+WOK
 4hW0bxmYMAf1MjEKT3E6Dh2I2m0HgHub/IxYd91MCgabhS94bhp2BOvDI
 89k1Lubnl4gZ98zkrl+alcRHZ2txN9gB51VpY2saCxkjQP4ql5ieErNmR
 70bWppbSOFKUur7L5mP04u8Kn9V9P5LtF/FXvRsNZMQWwpKPAtPlW4Ez7 g==;
X-CSE-ConnectionGUID: gTvqGw0wRb+KruDl+eowxA==
X-CSE-MsgGUID: +R2lgEUQShu4EbrCaHP0DQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="22135657"
X-IronPort-AV: E=Sophos;i="6.10,148,1719903600"; d="scan'208";a="22135657"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 05:00:07 -0700
X-CSE-ConnectionGUID: jplLi3Q+Sf2VWRS2ibIq8A==
X-CSE-MsgGUID: +etqQHxiSeOuam3YEUUwgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,148,1719903600"; d="scan'208";a="58960842"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 05:00:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915: make intel_display_power_domain_str() static
Date: Thu, 15 Aug 2024 15:00:02 +0300
Message-Id: <20240815120002.3472727-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

The function isn't used outside of intel_display_power.c. Make it
static.

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display_power.h | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index cf8b38f2ebf5..39ab3117265c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -36,7 +36,7 @@
 	for_each_power_well_reverse(__dev_priv, __power_well)		        \
 		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
 
-const char *
+static const char *
 intel_display_power_domain_str(enum intel_display_power_domain domain)
 {
 	switch (domain) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 0962f6aaeee6..425452c5a469 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -183,9 +183,6 @@ void intel_display_power_resume(struct drm_i915_private *i915);
 void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 					     u32 state);
 
-const char *
-intel_display_power_domain_str(enum intel_display_power_domain domain);
-
 bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				    enum intel_display_power_domain domain);
 intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
-- 
2.39.2

