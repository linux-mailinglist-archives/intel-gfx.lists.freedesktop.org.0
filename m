Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E37416C535C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 19:12:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6E510E9BE;
	Wed, 22 Mar 2023 18:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 575F110E9BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 18:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679508771; x=1711044771;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hb68a1HpvvF11YAQgyhj6Dg3Mq17qb3BkKBoi07RBVk=;
 b=n5/T2R+ugezyjCttpMQNLAQZgk4DH/e7z4Q+jnbQWouT9cTzW6mHRj1e
 tX+VUCMKOwSQrTryAnz3bmGfazYqKZudy5SRRtTwKG4xiM9iWYLIiN2jE
 j3ad3QWP7zmgziO8DA8ft/KpX4yWWEGWlBzBowcAz4LkuaZfZ9qGj35aS
 N0PjwKmSX3NXTO87H/a1dksLhUUvXp78Qhnvl5AOcpcdlDx+fazQ2+mEQ
 fFmPrDE5Jj0qPf13W1MPCENVXaKVRFxd6BfhGJyyuFIyWe5AMWILLUzMe
 vimGYgs2VAZC9KJ7odkrkPDmy77n6fY2d8vHhPSBuJ+B6nPGqVL1SSMj0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="341652919"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="341652919"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 11:12:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="675384598"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="675384598"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 22 Mar 2023 11:12:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Mar 2023 20:12:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 20:12:19 +0200
Message-Id: <20230322181219.5511-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add i915.enable_sagv modparam
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

Currently we have no sane way to forcibly disable SAGV, which
makes debugging things a PITA. Manually poking at the pcode
mailbox with it's various SAGV/QGV/PSF formats is no fun,
and likely to be clobbered by the driver anyway.

Let's add a modparam for this.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++++
 drivers/gpu/drm/i915/i915_params.c           | 3 +++
 drivers/gpu/drm/i915/i915_params.h           | 1 +
 3 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 50a9a6adbe32..ff70225c0263 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -411,6 +411,9 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
+	if (!i915->params.enable_sagv)
+		return false;
+
 	if (DISPLAY_VER(i915) >= 12)
 		return tgl_crtc_can_enable_sagv(crtc_state);
 	else
@@ -3696,6 +3699,7 @@ static int intel_sagv_status_show(struct seq_file *m, void *unused)
 	};
 
 	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(i915)));
+	seq_printf(m, "SAGV modparam: %s\n", str_enabled_disabled(i915->params.enable_sagv));
 	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display.sagv.status]);
 	seq_printf(m, "SAGV block time: %d usec\n", i915->display.sagv.block_time_us);
 
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index ade744cccfea..66141906ea05 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -121,6 +121,9 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
 	"(0=disabled, 1=enabled) "
 	"Default: 0");
 
+i915_param_named_unsafe(enable_sagv, bool, 0600,
+	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
+
 i915_param_named_unsafe(force_probe, charp, 0400,
 	"Force probe options for specified supported devices. "
 	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 3f51f90145b6..6798b5c2363d 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -56,6 +56,7 @@ struct drm_printer;
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
 	param(bool, enable_psr2_sel_fetch, true, 0400) \
+	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
 	param(int, invert_brightness, 0, 0600) \
-- 
2.39.2

