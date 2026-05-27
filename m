Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AB3mBjnBFmrOqgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 12:02:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A128A5E2547
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 12:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9196410E75F;
	Wed, 27 May 2026 10:02:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NmT4K20y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B0DD10E75E;
 Wed, 27 May 2026 10:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779876150; x=1811412150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6LJnDXyC2SWpb6tmBAGXJrM7AYgz52PVkis82qGFXkE=;
 b=NmT4K20yGzzgbUFHd+wxVmkeciZjXRlOVx+kmDXeZy0eEI00w2JmtMd+
 Tn96hdU+FGJqSfEMUcR2SDRfqVkK1HN4/9diXfk7M1izbBj/VNLK/difb
 8sEiattbEZeuOLPPRrFWFrx5BLdiPq4Tl3XXTvae/E79GIlZSeUdsir2M
 uwZZ6B4vwatG9Mvnt4wZC5jQT0LUnDsuQdah3ARZKmBVg7QqBYRpUwiN5
 T4QMrVPvK/b1Lpi3FAMpqqOqZvpwouN9lUAz/BSUbWO9ltNZUvUdRbKj5
 12N/d5cF2egLxYkJgORpVY9e2nzJXXw4BJXSCX8wGJNigGhpT7UUhKE4z A==;
X-CSE-ConnectionGUID: EILa4ChLRlKwFVDxkDDgww==
X-CSE-MsgGUID: bYIF7x/rRoSx8CGeSBn3dQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="80608474"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80608474"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 03:02:25 -0700
X-CSE-ConnectionGUID: nYuNSYjdTiOnNjRe6SUfaw==
X-CSE-MsgGUID: LVWtcVDJSGizfx8K0qCyxA==
X-ExtLoop1: 1
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.38])
 by fmviesa003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 03:02:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 2/2] drm/i915: rename intel_runtime_{suspend,
 resume} to i915_pm_runtime_{suspend, resume}
Date: Wed, 27 May 2026 13:02:12 +0300
Message-ID: <fc5b796a3fd764a64b257edfdbe08e54b690efbc.1779876087.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1779876087.git.jani.nikula@intel.com>
References: <cover.1779876087.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.978];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: A128A5E2547
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

All the other struct dev_pm_ops hooks are named i915_pm_*(), but the
.runtime_suspend and .runtime_resume hooks are called
intel_runtime_suspend() and intel_runtime_resume(), respectively.

Rename intel_runtime_suspend() to i915_pm_runtime_suspend() and
intel_runtime_resume() to i915_pm_runtime_resume() to unify.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d6b94a29c91d..58081b52461a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1558,7 +1558,7 @@ static int i915_pm_restore(struct device *kdev)
 	return i915_pm_resume(kdev);
 }
 
-static int intel_runtime_suspend(struct device *kdev)
+static int i915_pm_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 	struct intel_display *display = dev_priv->display;
@@ -1632,7 +1632,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (IS_BROADWELL(dev_priv)) {
 		/*
 		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
-		 * being detected, and the call we do at intel_runtime_resume()
+		 * being detected, and the call we do at i915_pm_runtime_resume()
 		 * won't be able to restore them. Since PCI_D3hot matches the
 		 * actual specification and appears to be working, use it.
 		 */
@@ -1657,7 +1657,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	return 0;
 }
 
-static int intel_runtime_resume(struct device *kdev)
+static int i915_pm_runtime_resume(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 	struct intel_display *display = dev_priv->display;
@@ -1765,8 +1765,8 @@ const struct dev_pm_ops i915_pm_ops = {
 	.restore = i915_pm_restore,
 
 	/* S0ix (via runtime suspend) event handlers */
-	.runtime_suspend = intel_runtime_suspend,
-	.runtime_resume = intel_runtime_resume,
+	.runtime_suspend = i915_pm_runtime_suspend,
+	.runtime_resume = i915_pm_runtime_resume,
 };
 
 static const struct file_operations i915_driver_fops = {
-- 
2.47.3

