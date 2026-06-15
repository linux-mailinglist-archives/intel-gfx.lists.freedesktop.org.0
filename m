Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LQGyJPBIMGpxQwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:48:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD46689495
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:48:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fU1EKhD+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E95EC10E5C8;
	Mon, 15 Jun 2026 18:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0182510E5C8;
 Mon, 15 Jun 2026 18:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781549294; x=1813085294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HmITvIHEmwdA41jDXMuKcIKtIygreAB2xIqS/dtrl1c=;
 b=fU1EKhD++rjP/CBCgs+wo914nxpAQ7+TMjfMMZlCfYVVsctNspL4NbDz
 6BzNlmKI82jMWsJANA4mKF+xQ1nS1jLA4kmfhSxl/i0GmHigI7pkkd39d
 LREorIGb2Dv2IuWUTPY2j/7P0aoSfaH+IYqpDRcQDFEeEayWm7HOCA73D
 diW23+ll3s62MkeEPxIWNl14yl1ESBQRGcPoN1/RhRIIhpKtChPj6apuJ
 m7isrMhYHOF9pJ0jYrJb+fH2K6Z/p7yzpinqHBp16oVh1fVB4UShlCPV7
 5PS77in8K1RE+iA8Ud5gUiPe5urWN0gQr+ft4I3PYf6INX8VrglYxYz0V A==;
X-CSE-ConnectionGUID: Wga/PNz1SU68ZPK9tlKdig==
X-CSE-MsgGUID: sYwcXZV3QdKXAFOMgm7o2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81438579"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="81438579"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:48:14 -0700
X-CSE-ConnectionGUID: wKmCO3Z0TVygVSXkJ/RDcQ==
X-CSE-MsgGUID: uEQ+Ot/2TV6yPNXpup5w7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="247628545"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:48:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/6] drm/i915: move intel_display_device_probe() call a level
 higher
Date: Mon, 15 Jun 2026 21:47:58 +0300
Message-ID: <c97a8790a5cb1f6b10061286adad8148972c5b3b.1781549229.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1781549229.git.jani.nikula@intel.com>
References: <cover.1781549229.git.jani.nikula@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FD46689495

Having display probe be called from i915_driver_create() is slightly
misleading, and an artefact from the past. Move the
intel_display_device_probe() call a level higher.

Use the shared PCI disable error path while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 0520cd124686..a69eb3a84005 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -802,7 +802,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	const struct intel_device_info *match_info =
 		(struct intel_device_info *)ent->driver_data;
 	struct drm_i915_private *i915;
-	struct intel_display *display;
 
 	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
 				  struct drm_i915_private, drm);
@@ -817,12 +816,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, match_info);
 
-	display = intel_display_device_probe(pdev, &parent);
-	if (IS_ERR(display))
-		return ERR_CAST(display);
-
-	i915->display = display;
-
 	return i915;
 }
 
@@ -851,11 +844,17 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	i915 = i915_driver_create(pdev, ent);
 	if (IS_ERR(i915)) {
-		pci_disable_device(pdev);
-		return PTR_ERR(i915);
+		ret = PTR_ERR(i915);
+		goto out_pci_disable;
 	}
 
-	display = i915->display;
+	display = intel_display_device_probe(pdev, &parent);
+	if (IS_ERR(display)) {
+		ret = PTR_ERR(display);
+		goto out_pci_disable;
+	}
+
+	i915->display = display;
 
 	ret = i915_driver_early_probe(i915);
 	if (ret < 0)
-- 
2.47.3

