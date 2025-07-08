Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FC9AFD006
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 18:03:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EADE610E6AB;
	Tue,  8 Jul 2025 16:03:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WtHUsJDJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8AFE10E6A7;
 Tue,  8 Jul 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751990634; x=1783526634;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uj/T++5sWy9RTSzcSBeQ8xzmjEO0aDsCXwlXDe/JQBA=;
 b=WtHUsJDJQJQtmy0bbmhjLuHqTbDZlG0yoNwZlSxoRtpJ1KEo5ukTFmJK
 QtGJd3yhyX69a4u0MN7m/5Vw0z2b4Q89YyTUq61aj66Dm/PLbGuQl2sck
 JH6J3j6F6j2L27VxJVJ5YbWjl9KWp0vJa3NVELMh1SF7MEw6V3X9oVAXK
 q7DJc15V7lbi9wf0DbKmY27p5By8MiW7l6lZXCvmvila995AQPbBj2+AK
 tKCHBnnKe3I/LEn20pP7gffDzzQdbj0ogeyAk72wJPrzLzePyO8Rk3gxr
 MixadccJaeQCTfn4a+qHRl0cyl+eBKoswOFsVCEL6g16RN7XKeaKzw3I9 g==;
X-CSE-ConnectionGUID: WC/ceOTPRoeXAYk+feGDBA==
X-CSE-MsgGUID: 6dgreLPpR9OwTjlYiBQWww==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="58039064"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="58039064"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 09:03:42 -0700
X-CSE-ConnectionGUID: SvRXUOgNSRaoZAXDOiPNWA==
X-CSE-MsgGUID: rZy3TRH4Rd6VLxAYSITyBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="161179614"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.55])
 by orviesa005.jf.intel.com with SMTP; 08 Jul 2025 09:03:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jul 2025 19:03:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/opregion: Make intel_opregion_notify_adapter()
 static
Date: Tue,  8 Jul 2025 19:03:19 +0300
Message-ID: <20250708160320.5653-3-ville.syrjala@linux.intel.com>
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

intel_opregion_notify_adapter() is no longer needed outside
intel_opregion.c. Make it static.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_opregion.h | 8 --------
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 9e39ab55a099..e99616ea2ae6 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -470,8 +470,8 @@ static const struct {
 	{ PCI_D3cold,	0x04 },
 };
 
-int intel_opregion_notify_adapter(struct intel_display *display,
-				  pci_power_t state)
+static int intel_opregion_notify_adapter(struct intel_display *display,
+					 pci_power_t state)
 {
 	int i;
 
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 7067ffe07744..d5b60029e007 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -51,8 +51,6 @@ bool intel_opregion_asle_present(struct intel_display *display);
 void intel_opregion_asle_intr(struct intel_display *display);
 int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 				  bool enable);
-int intel_opregion_notify_adapter(struct intel_display *display,
-				  pci_power_t state);
 int intel_opregion_get_panel_type(struct intel_display *display);
 const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector);
 
@@ -114,12 +112,6 @@ intel_opregion_notify_encoder(struct intel_encoder *encoder, bool enable)
 	return 0;
 }
 
-static inline int
-intel_opregion_notify_adapter(struct intel_display *display, pci_power_t state)
-{
-	return 0;
-}
-
 static inline int intel_opregion_get_panel_type(struct intel_display *display)
 {
 	return -ENODEV;
-- 
2.49.0

