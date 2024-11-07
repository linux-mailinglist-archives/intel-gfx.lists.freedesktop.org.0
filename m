Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD38D9C0AF7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:12:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EAB410E87C;
	Thu,  7 Nov 2024 16:12:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ECG6goqn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D9C810E880
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 16:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730995931; x=1762531931;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DxmF6k/cn0PJgoAjjsDAwnwi7WbR9fV2Eoi4glJLnY8=;
 b=ECG6goqndmemp86dCCecShsCha7ObLpGnpHZ64zAo5an/CCbywRNDANm
 fV39YLyzK2IYqec20+PZ9fsvXPK6xWf+gKF8nPSkEgx5rSG76dzx/NBDJ
 nGTv223lLOEEGkgBIN6Nfn3N0jNzaO/b411TTBW0FWHDhXPOpmGHGXSSJ
 kgURRl9OxPo7PC7iH6LeYzareVnMdT6Qn4x6qLU0kZQKUOdxUV2u+2kFg
 s2OtERa5VEiyPt48w33kJHNeVxrP9MOAuU7JQcg3Byjsq/LhkfreMGTHg
 Nt3rOuafvaE1puW7JuVvaRRJGmnZmZHxxixHd5InWO9Pnjty6wJTXjmDA g==;
X-CSE-ConnectionGUID: o8X743G5R7ypLK5gdB3rPg==
X-CSE-MsgGUID: wfQ6n4LeSfiQBWOh6t5Kxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41443331"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41443331"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:11:48 -0800
X-CSE-ConnectionGUID: Z7uWlVYQQAKksNGcV5LEFg==
X-CSE-MsgGUID: BPOT+EUbTAqoPbFq/JKFwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85277869"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 08:11:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 18:11:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/10] drm/i915/crt: Drop pointless drm_device variables
Date: Thu,  7 Nov 2024 18:11:21 +0200
Message-ID: <20241107161123.16269-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Remove a bunch of pointless 'struct drm_device *dev' local variables.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 0962a239288b..5c3c6bc16a9e 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -364,8 +364,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
 		     struct drm_display_mode *mode)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_device *dev = connector->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	int max_dotclk = display->cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 	int max_clock;
@@ -490,9 +489,8 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_device *dev = connector->dev;
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	u32 adpa;
 	bool ret;
 
@@ -541,9 +539,8 @@ static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
 static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_device *dev = connector->dev;
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	bool reenable_hpd;
 	u32 adpa;
 	bool ret;
@@ -597,8 +594,7 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_device *dev = connector->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	u32 stat;
 	bool ret = false;
 	int i, tries = 0;
@@ -956,8 +952,7 @@ intel_crt_detect(struct drm_connector *connector,
 static int intel_crt_get_modes(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_device *dev = connector->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct intel_encoder *intel_encoder = &crt->base;
 	intel_wakeref_t wakeref;
-- 
2.45.2

