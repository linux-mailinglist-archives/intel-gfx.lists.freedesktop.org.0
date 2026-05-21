Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEAALGfcDmoVCwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 12:20:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4826C5A32A4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 12:20:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B366210F2CD;
	Thu, 21 May 2026 10:20:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lMKUQM3N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 922ED10F21B
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 10:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779358820; x=1810894820;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1HMo6HTVG+AzbxQfpi4i/0fH5cfnYeDNlQVC46jcYn8=;
 b=lMKUQM3NNESisss0fSBC7V+wa3N+8mVQBZmxZ4inxXtNTYsT+BRZjYkN
 5MIh7u8qQOugdy8AL3Be7J6aA66u7X0ott9HEBGw6viBb2CYdTuGsdMM7
 lq8h0XJq/I9UrPM7il7c0OEUoqWFUHr513P3i+lRr3AsvnrqXXGzVtYvD
 qB4UbH+0JxdsYWEZra6dHLjHxC4bajBOdoop7jt+/zSJ+Bt14q2Ej+ly2
 1bdRZzWOJzSMvGn72xPr2GSV6+TQGoXY0UfK/h6GKDC56Xb6+pnI5d8f+
 bKS1W/oRPUsK3Gqr8JdoOOs3N2NlI+dvnoRDuel+EDwm026CpbycYL0ai g==;
X-CSE-ConnectionGUID: EufMpvxTSDCf6uEGKIJvNg==
X-CSE-MsgGUID: W7gGrHVuRxadP+4LNF3WnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="67799792"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="67799792"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 03:20:20 -0700
X-CSE-ConnectionGUID: 64nMZtsYTBGIBZ7VnwlXKw==
X-CSE-MsgGUID: pt7PDQHCQQqBSXBwRwlBbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="236069645"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.101])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 03:20:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915: replace mock drm_driver .release with drmm
 action
Date: Thu, 21 May 2026 13:20:09 +0300
Message-ID: <20260521102009.2863402-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260521102009.2863402-1-jani.nikula@intel.com>
References: <20260521102009.2863402-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 4826C5A32A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace the struct drm_driver .release hook and manual i915->do_release
handling with a proper drmm action in the selftest mock driver. Start
off with using the old release hook as the action, although going
forward this should be made more fine grained.

Remove the now unused .do_release member from struct drm_i915_private.

There are no intentional functional changes here.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h                  |  3 ---
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 12 +++++-------
 2 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 844ed79e7211..75088c8bbd59 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -172,9 +172,6 @@ struct drm_i915_private {
 	/* display device data, must be placed after drm device member */
 	struct intel_display *display;
 
-	/* FIXME: Device release actions should all be moved to drmm_ */
-	bool do_release;
-
 	/* i915 device parameters */
 	struct i915_params params;
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 796c9b070e41..c4bfefda3cf4 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -59,13 +59,10 @@ void mock_device_flush(struct drm_i915_private *i915)
 						  NULL));
 }
 
-static void mock_device_release(struct drm_device *dev)
+static void mock_device_release(struct drm_device *dev, void *unused)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 
-	if (!i915->do_release)
-		goto out;
-
 	mock_device_flush(i915);
 	intel_gt_driver_remove(to_gt(i915));
 
@@ -81,14 +78,12 @@ static void mock_device_release(struct drm_device *dev)
 
 	drm_mode_config_cleanup(&i915->drm);
 
-out:
 	i915_params_free(&i915->params);
 }
 
 static const struct drm_driver mock_driver = {
 	.name = "mock",
 	.driver_features = DRIVER_GEM,
-	.release = mock_device_release,
 };
 
 static void release_dev(struct device *dev)
@@ -249,9 +244,12 @@ struct drm_i915_private *mock_gem_device(void)
 	__clear_bit(I915_WEDGED, &to_gt(i915)->reset.flags);
 	intel_engines_driver_register(i915);
 
-	i915->do_release = true;
 	ida_init(&i915->selftest.mock_region_instances);
 
+	ret = drmm_add_action_or_reset(&i915->drm, mock_device_release, NULL);
+	if (ret)
+		return NULL;
+
 	return i915;
 
 err_context:
-- 
2.47.3

