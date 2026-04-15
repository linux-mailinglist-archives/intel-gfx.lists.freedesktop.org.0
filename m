Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJwxLVf932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:04:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C45D407DF9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E76BA10E755;
	Wed, 15 Apr 2026 21:04:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QNelsroR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C07D010E758;
 Wed, 15 Apr 2026 21:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776287060; x=1807823060;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SfOJmDFmBqf6eFlgOr/J4Qg1nnKIVNhHmeBnEziUops=;
 b=QNelsroREQF2dzeZSElfp4TfuAcui4pDUs1cXxxUmVmT6yYpWxO/qfMm
 RFX3NJZAHbuexM/OZFkXicPvPOz3AqpaNsHEkcHixmZ/Ut2fSZc2NDnMc
 IUSo5e9F1kgb1g1GRWU6C0TD+ksFjS6Bn8NXOPoiyInoHqr8xfQYZpScP
 V+EEedBX77RyjTBjizmmjzeh1Rs1bkp51UNYXPNHTRZN4oyi+cWTf3Ke0
 XGXXY2apjerbYscBN4VO10DZDS5y57LAlx3g+v7AE41SSCtvcxc2raP6d
 9nXEZggIv24zWiaV3Bry6nYlF4Qp0FlU6hqNxwc2vSHbY2fJOT1v9kMoW A==;
X-CSE-ConnectionGUID: OB6FX7bfSA+ZAFKC9u93iw==
X-CSE-MsgGUID: bZ9fCiDxTSa8V+6R6z1z3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="81158070"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="81158070"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:04:20 -0700
X-CSE-ConnectionGUID: 8cAZ1lm4ScOZG95t1jIbqw==
X-CSE-MsgGUID: cMjTJwrGRlOEp9LN7q/tAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="225830438"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:04:19 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v3 1/7] drm/i915: Clear i915->display when no longer valid
Date: Thu, 16 Apr 2026 00:04:05 +0300
Message-ID: <20260415210411.24750-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260415210411.24750-1-ville.syrjala@linux.intel.com>
References: <20260415210411.24750-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 8C45D407DF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Don't leave a stale i915->display pointer hanging around after
the display driver has been torn down. Apparently the gt code
calls into the reset codepaths after this, and if the display
pointer is still around we may try to access freed memory.

The whole teardown sequence here seems rather suspect. Why is
display done first and then everything else via the managed
release? Who the heck knows. Someone really needs to dig into
this stuff and figure out the proper init/cleanup sequence for
both i915 (real and mock) and xe...

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c               | 1 +
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 195e34acef30..d31819758f3d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -310,6 +310,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	i915_params_free(&dev_priv->params);
 
 	intel_display_device_remove(display);
+	dev_priv->display = NULL;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 27dc0e40a8d7..796c9b070e41 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -277,6 +277,7 @@ void mock_destroy_device(struct drm_i915_private *i915)
 	struct device *dev = i915->drm.dev;
 
 	intel_display_device_remove(i915->display);
+	i915->display = NULL;
 
 	devres_release_group(dev, NULL);
 	put_device(dev);
-- 
2.52.0

