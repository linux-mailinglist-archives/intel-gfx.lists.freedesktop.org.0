Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C7BAFD008
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 18:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50E4A10E6AF;
	Tue,  8 Jul 2025 16:03:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZLeSpmdq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555B210E6A8;
 Tue,  8 Jul 2025 16:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751990634; x=1783526634;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xkYaikiy/ZWOk+GstInh3MQeIvJ9mOGz5371wWfcJ/Q=;
 b=ZLeSpmdq16ytE20R8Fqn95jOvGjsfSapFBIcajpJAacnxJX+JoX+qzca
 a+oNnVxNJiC/8j3pl8+7k3KP79yl1bROZJhDg1jS2dxjW6Kly7f88kNvM
 RIfaJiHU0cDep4MGuijmZWDNtj+wb33QOznLW6RwaVKS56Ac1kXNaKxAB
 OerJTNGKJ1UHdzl57HJKMPa+SHPoQ97P/HlID79d9i1rbQUacJpVRTRzE
 /8g+ZPS+kBdMwQPpqEPsOe4oWKm1MaJX70jhnq/79dQAaXkSsZo8eJ5nI
 qCnDypwBYvvGKuNZgn5dwHTiq8puQ0nIF8Act2fqNV1zp/Tylz00sFFYT g==;
X-CSE-ConnectionGUID: HHGaPA1/T5extodP5FqtVA==
X-CSE-MsgGUID: awWi8yYlQ22vAjpsoKAyLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="58039063"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="58039063"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 09:03:42 -0700
X-CSE-ConnectionGUID: HtEqvJqlTOe0Tjko6DKr1w==
X-CSE-MsgGUID: mjYgg+AkRtup6hbVpa8hhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="161179587"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.55])
 by orviesa005.jf.intel.com with SMTP; 08 Jul 2025 09:03:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jul 2025 19:03:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/opregion: Extract
 intel_opregion_runtime_{suspend, resume}()
Date: Tue,  8 Jul 2025 19:03:18 +0300
Message-ID: <20250708160320.5653-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250708160320.5653-1-ville.syrjala@linux.intel.com>
References: <20250708160320.5653-1-ville.syrjala@linux.intel.com>
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

Extract the opregion runtime PM stuff to new functions. We'll
need to add a bit more to the suspend side, and we don't want
to clutter the top level runtime PM code with such details.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 41 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_opregion.h | 11 +++++
 drivers/gpu/drm/i915/i915_driver.c            | 25 +----------
 3 files changed, 54 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 81efdb17fc0c..9e39ab55a099 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1255,6 +1255,47 @@ void intel_opregion_suspend(struct intel_display *display, pci_power_t state)
 		intel_opregion_suspend_display(display);
 }
 
+void intel_opregion_runtime_resume(struct intel_display *display)
+{
+	struct intel_opregion *opregion = display->opregion;
+
+	if (!opregion)
+		return;
+
+	intel_opregion_notify_adapter(display, PCI_D0);
+}
+
+void intel_opregion_runtime_suspend(struct intel_display *display)
+{
+	struct intel_opregion *opregion = display->opregion;
+
+	if (!opregion)
+		return;
+
+	/*
+	 * FIXME: We really should find a document that references the arguments
+	 * used below!
+	 */
+	if (display->platform.broadwell) {
+		/*
+		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
+		 * being detected, and the call we do at intel_runtime_resume()
+		 * won't be able to restore them. Since PCI_D3hot matches the
+		 * actual specification and appears to be working, use it.
+		 */
+		intel_opregion_notify_adapter(display, PCI_D3hot);
+	} else {
+		/*
+		 * current versions of firmware which depend on this opregion
+		 * notification have repurposed the D1 definition to mean
+		 * "runtime suspended" vs. what you would normally expect (D3)
+		 * to distinguish it from notifications that might be sent via
+		 * the suspend path.
+		 */
+		intel_opregion_notify_adapter(display, PCI_D1);
+	}
+}
+
 void intel_opregion_unregister(struct intel_display *display)
 {
 	struct intel_opregion *opregion = display->opregion;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 8101eeebfd8b..7067ffe07744 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -44,6 +44,9 @@ void intel_opregion_resume(struct intel_display *display);
 void intel_opregion_suspend(struct intel_display *display,
 			    pci_power_t state);
 
+void intel_opregion_runtime_resume(struct intel_display *display);
+void intel_opregion_runtime_suspend(struct intel_display *display);
+
 bool intel_opregion_asle_present(struct intel_display *display);
 void intel_opregion_asle_intr(struct intel_display *display);
 int intel_opregion_notify_encoder(struct intel_encoder *encoder,
@@ -88,6 +91,14 @@ static inline void intel_opregion_suspend(struct intel_display *display,
 {
 }
 
+static inline void intel_opregion_runtime_resume(struct intel_display *display)
+{
+}
+
+static inline void intel_opregion_runtime_suspend(struct intel_display *display)
+{
+}
+
 static inline bool intel_opregion_asle_present(struct intel_display *display)
 {
 	return false;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c6263c6d3384..da0b7d9da3d5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1553,28 +1553,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (root_pdev)
 		pci_d3cold_disable(root_pdev);
 
-	/*
-	 * FIXME: We really should find a document that references the arguments
-	 * used below!
-	 */
-	if (IS_BROADWELL(dev_priv)) {
-		/*
-		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
-		 * being detected, and the call we do at intel_runtime_resume()
-		 * won't be able to restore them. Since PCI_D3hot matches the
-		 * actual specification and appears to be working, use it.
-		 */
-		intel_opregion_notify_adapter(display, PCI_D3hot);
-	} else {
-		/*
-		 * current versions of firmware which depend on this opregion
-		 * notification have repurposed the D1 definition to mean
-		 * "runtime suspended" vs. what you would normally expect (D3)
-		 * to distinguish it from notifications that might be sent via
-		 * the suspend path.
-		 */
-		intel_opregion_notify_adapter(display, PCI_D1);
-	}
+	intel_opregion_runtime_suspend(display);
 
 	assert_forcewakes_inactive(&dev_priv->uncore);
 
@@ -1603,7 +1582,7 @@ static int intel_runtime_resume(struct device *kdev)
 	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
 	disable_rpm_wakeref_asserts(rpm);
 
-	intel_opregion_notify_adapter(display, PCI_D0);
+	intel_opregion_runtime_resume(display);
 
 	root_pdev = pcie_find_root_port(pdev);
 	if (root_pdev)
-- 
2.49.0

