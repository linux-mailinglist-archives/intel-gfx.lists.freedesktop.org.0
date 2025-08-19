Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38840B2C43C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:54:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C922610E5E7;
	Tue, 19 Aug 2025 12:54:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fzuPkNb5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5307910E5E6;
 Tue, 19 Aug 2025 12:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608059; x=1787144059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fmu7VrX7ZixcPcPWyxhhNVGeAKzsUG5847442WVae9k=;
 b=fzuPkNb5b2CiYZh/BBRiN3XZPHVLCKwFXJm5d+NnVhXoFedP+H141QR5
 WZuOciA/8Bg9JKkg8T+OKdYAogXXWYQ7zpX7KjrfK1VxBOPwR7HsFM3xL
 Q07xwAmqoC2qPHRYt4o1Rgq2GTIclYLqhWzBxLZY5zGjB7GZlRH35IW8b
 x9f1Bs101lx6yRtAxcCV/AU0I0dbNdAfZNN6S8Pr3hKMRRmIGzv9TxwuX
 AhnNsVMCw/cda0N56Dxz4z50xw019vlQVRy3LFHtmJxehGX4EkK8MQHHe
 XlNK2IG9LnsksorgPQhM4kDtaDFyzjeWy7L2Cr+KAncTVwyApUjPEkfW6 A==;
X-CSE-ConnectionGUID: bP5R9DS3S56Zk1ukecABCQ==
X-CSE-MsgGUID: /db8rB5CSDCqKDVSYTyT0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69222128"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="69222128"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:19 -0700
X-CSE-ConnectionGUID: 4cN+lTn8Sdm3JnT+K4wb4w==
X-CSE-MsgGUID: D/itJ1k/QQiwbZV2NLQ5/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168089261"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 06/12] drm/i915: make vlv_get_cck_clock() static
Date: Tue, 19 Aug 2025 15:53:36 +0300
Message-ID: <b67410d32ac2b68d02491bc04e1b0f64fba1a0db.1755607980.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755607980.git.jani.nikula@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
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

vlv_get_cck_clock() is no longer used outside of intel_display.c, make
it static.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display.h | 2 --
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 644028d0c7ef..98fdaa159a4a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -153,8 +153,8 @@ int vlv_get_hpll_vco(struct drm_device *drm)
 	return vco_freq[hpll_freq] * 1000;
 }
 
-int vlv_get_cck_clock(struct drm_device *drm,
-		      const char *name, u32 reg, int ref_freq)
+static int vlv_get_cck_clock(struct drm_device *drm,
+			     const char *name, u32 reg, int ref_freq)
 {
 	u32 val;
 	int divider;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 9fdbc4ad5391..57b06cad314b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -436,8 +436,6 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
 void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
 int vlv_get_hpll_vco(struct drm_device *drm);
-int vlv_get_cck_clock(struct drm_device *drm,
-		      const char *name, u32 reg, int ref_freq);
 int vlv_clock_get_hrawclk(struct drm_device *drm);
 int vlv_clock_get_czclk(struct drm_device *drm);
 int vlv_clock_get_cdclk(struct drm_device *drm);
-- 
2.47.2

