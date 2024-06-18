Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6830390D49E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 16:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D3E510E6B5;
	Tue, 18 Jun 2024 14:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQFFMoLy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A18CF10E6AF;
 Tue, 18 Jun 2024 14:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718720615; x=1750256615;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MIMY9hVL2JJyBQ934Nwvo2GD8BNSJZVlDYWJFJkWPL0=;
 b=XQFFMoLy0/3mLSUwYskAaGY2TVwQOJc8BEfsQHDUG/ZiQmq8Ed/uQhXz
 s+96Qc83Nb6QzlZOQN20jwfeWpIV6+wOpCLYhATgwXoyM6h+Y/hk8IeOH
 MIEpU3bffXLRnbqVlnxMxX2tRXSNWlF+iIKOvxbolMD6o/yd1OfHf4S93
 n4zzUjDoEUiWY9TMnPCOLcfv6rw03fl+MQwVO/zcBhRe7hXaIkpn+uqHt
 gQu4QVmpjua4Kg90D3Y/LBYyzue0GLB8P14KcPNpQ+C1EKu5gCOjj+I4S
 yh8ytR18Ae++ilbylzvM3cJRIz3HSgGERNzTUiKIsjtsxy7PDMyBBgmcI g==;
X-CSE-ConnectionGUID: vUnsQvCHRaW9VKvZwhSAcw==
X-CSE-MsgGUID: JP6dfvQuSvWKLqJi5Wb47Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="27016879"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="27016879"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:34 -0700
X-CSE-ConnectionGUID: b9lCNE9QSxSMJvEnRJ0uVg==
X-CSE-MsgGUID: 6uJhAhl0Qg2AU/JjnndwVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41687819"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 lucas.demarchi@intel.com
Subject: [PATCH 5/6] drm/i915/display: add "is" member to struct intel_display
Date: Tue, 18 Jun 2024 17:22:55 +0300
Message-Id: <450b5883a7783d0967c3da8ce853af0c2da8082f.1718719962.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718719962.git.jani.nikula@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
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

Facilitate using display->is.HASWELL etc. for identifying platforms and
subplatforms. Merge platform and subplatform members together.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 +++
 .../drm/i915/display/intel_display_device.c   | 19 +++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 7715fc329057..35bea92893af 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -286,6 +286,9 @@ struct intel_display {
 	/* drm device backpointer */
 	struct drm_device *drm;
 
+	/* Platform identification */
+	struct intel_display_is is;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 0c275d85bd30..954caea38005 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1269,8 +1269,25 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
 	return NULL;
 }
 
+static void mem_or(void *_dst, const void *_src, size_t size)
+{
+	const u8 *src = _src;
+	u8 *dst = _dst;
+	size_t i;
+
+	for (i = 0; i < size; i++)
+		dst[i] |= src[i];
+}
+
+static void merge_display_is(struct intel_display_is *dst,
+			     const struct intel_display_is *src)
+{
+	mem_or(dst, src, sizeof(*dst));
+}
+
 void intel_display_device_probe(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	const struct intel_display_device_info *info;
 	struct intel_display_ip_ver ip_ver = {};
@@ -1308,11 +1325,13 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 
 	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
 	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
+	display->is = desc->is;
 
 	subdesc = find_subplatform_desc(pdev, desc);
 	if (subdesc) {
 		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
 		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
+		merge_display_is(&display->is, &subdesc->is);
 	}
 
 	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
-- 
2.39.2

