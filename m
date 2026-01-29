Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CO93Djcie2mZBgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 10:02:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D307DADEA6
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 10:02:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EF5710E81C;
	Thu, 29 Jan 2026 09:02:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HRdzlL3s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9893B10E81C;
 Thu, 29 Jan 2026 09:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769677358; x=1801213358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xjk+7+T+jpsJbw8ykVCK3/qop20c+9wsEO6fjitKV+c=;
 b=HRdzlL3sWfK2oHzPn5kLtAVtGfmXbymhjkYRe7VVCkJVbxnqKdZkSAGX
 xgizOQwGihm6Td4ZKaicEqs0CR62kYERAHxpXlY9EEgGpab/+b6lTbLQa
 InhiEifa6CI+ewqXIKjstk0fEQOCj2vSl1jbk+JqgtFtzNUgh/ck3GoVV
 7xx5Mo/ng1PYncK5RsT973YuRn5Ud6f2XaCKNl0OUKo8QGiZSdE/ksfMn
 xisK8xPkCFQJqafU9UtdmfS20ss0OjrxfIIWc1xfWP5d6ufRTYdTRIGhK
 8MORMo7yvHt+wCj6btzF3nKGqgiyS8PX+0dL+Zyuo90zBAcvRavzPRXUc A==;
X-CSE-ConnectionGUID: K4sbfrtCQEev1e7GTqhNlg==
X-CSE-MsgGUID: iQcIIXA+TT6235vjn3c3qA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="69920777"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="69920777"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 01:02:37 -0800
X-CSE-ConnectionGUID: aAA483+xQXqQ24zbGtq2XQ==
X-CSE-MsgGUID: gu5cnNSZS9+B5SxR5RP//w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213020951"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 29 Jan 2026 01:02:35 -0800
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 1/1] i915/i915_driver: move intel_gvt_init() level higher
Date: Thu, 29 Jan 2026 10:01:29 +0100
Message-ID: <20260129090129.2601661-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260129090129.2601661-1-michal.grzelak@intel.com>
References: <20260129090129.2601661-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RBL_SEM_FAIL(0.00)[131.252.210.177:query timed out];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[intel.com:query timed out,gitlab.freedesktop.org:query timed out];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[gitlab.freedesktop.org:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: D307DADEA6
X-Rspamd-Action: no action

Both initialisation and removal of GVT happen at different abstraction
levels. Hence caller of i915_driver_hw_probe() has no way of knowing
status of intel_gvt_init(). This can lead to an unbalanced number of
calls of intel_gvt_init() and intel_gvt_driver_remove() since GVT error
path is currently handled in i915_driver_probe(). One such scenario has
been seen with i915_driver_hw_probe() fault injection, which caused
double entry deletion and list corruption.

Move intel_gvt_init() up to i915_driver_probe(). Add out_cleanup_gvt
error path for removing gvt. Trigger it only after intel_gvt_init()
succeeded.

In case intel_gvt_init() failed, theoretically we should follow err_msi
error path. That is actually impossible since call to intel_gvt_init()
unconditionally returns 0, although it claims to return negative error
code on failure. Thus follow standard out_cleanup_hw error path on a
hypothetical future intel_gvt_init() failure. Remove err_msi label from
i915_driver_hw_probe() since intel_gvt_init() was the only user of it.

Changelog:
v1->v2
- don't move err_msi error path from i915_driver_hw_probe (Jani)
- rewrite commit message

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 1e087dfe03d0..114f73902746 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -557,10 +557,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 			drm_dbg(&dev_priv->drm, "can't enable MSI");
 	}
 
-	ret = intel_gvt_init(dev_priv);
-	if (ret)
-		goto err_msi;
-
 	intel_opregion_setup(display);
 
 	ret = i915_pcode_init(dev_priv);
@@ -581,7 +577,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 err_opregion:
 	intel_opregion_cleanup(display);
-err_msi:
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
 err_mem_regions:
@@ -870,9 +865,13 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret < 0)
 		goto out_cleanup_mmio;
 
+	ret = intel_gvt_init(i915);
+	if (ret)
+		goto out_cleanup_hw;
+
 	ret = intel_display_driver_probe_noirq(display);
 	if (ret < 0)
-		goto out_cleanup_hw;
+		goto out_cleanup_gvt;
 
 	ret = intel_irq_install(i915);
 	if (ret)
@@ -921,6 +920,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	intel_irq_uninstall(i915);
 out_cleanup_modeset:
 	intel_display_driver_remove_nogem(display);
+out_cleanup_gvt:
+	intel_gvt_driver_remove(i915);
 out_cleanup_hw:
 	i915_driver_hw_remove(i915);
 	intel_memory_regions_driver_release(i915);
@@ -928,7 +929,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_gem_drain_freed_objects(i915);
 	i915_ggtt_driver_late_release(i915);
 out_cleanup_mmio:
-	intel_gvt_driver_remove(i915);
 	i915_driver_mmio_release(i915);
 out_runtime_pm_put:
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
-- 
2.45.2

