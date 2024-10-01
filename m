Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C2998BC1D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 14:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D649E10E318;
	Tue,  1 Oct 2024 12:32:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AtHI/DWg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E25CB10E317
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 12:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727785955; x=1759321955;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=I5Kp8Nn93LBKYCSrwqeMH+VH9NfUm7YnjApmEHYBEjs=;
 b=AtHI/DWg3wwuFf+zj5QDmVPu2e4uNIuzdG/C2WRgrRJXT/KQJEX55eRL
 FutuSo4Hq5TFoSFIJ4S5HfLJvdKuAxhXV0yzrfC7xqv9SdcTG2ZMelmSW
 HfviWJ5p/CQf6TivDLSvPFecgPng+uyNELKQa1bAaeuOnxjf8gy48HsqC
 aNVTvwqUqFwVLADLckp7NfczCzxMzGoH4mds2kVQ/pJmawuEm4S0yRZP5
 Ruw585+huw8BzGlXzLpJePscuIzE/3cKqPR/Jjk5H0DQxmJstfsTFS/LX
 XqyfOWrT8LOsdaUe4VmSP6q1xWTEHEn5vK0edbWyT/FW0ePo30dQ7mxOP g==;
X-CSE-ConnectionGUID: kP48Gm23RE6hrYoo7cdtPg==
X-CSE-MsgGUID: 86qaGDOWQ2KJ3ZhTweTrUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="30624385"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="30624385"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 05:32:35 -0700
X-CSE-ConnectionGUID: r/efW5sLTfemQ81TQRm5qQ==
X-CSE-MsgGUID: 7k8Z0K1ORxi2Hq5qX3P/Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="74448048"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 05:32:35 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 3/3] drm/i915/dp: Write the source OUI for non-eDP sinks as
 well
Date: Tue,  1 Oct 2024 15:32:59 +0300
Message-ID: <20241001123259.616486-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241001123259.616486-1-imre.deak@intel.com>
References: <20241001123259.616486-1-imre.deak@intel.com>
MIME-Version: 1.0
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

At least the i-tec USB-C Nano 2x Display Docking Station (containing a
Synaptics MST branch device) requires the driver to update the source
OUI DPCD registers to expose its DSC capability. Accordingly update the
OUI for all sink types (besides eDP where this has been done already).

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11776
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2d6ffbeae07a0..3cc4ef8744f88 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3341,9 +3341,6 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
 	u8 oui[] = { 0x00, 0xaa, 0x01 };
 	u8 buf[3] = {};
 
-	if (!intel_dp_is_edp(intel_dp))
-		return;
-
 	/*
 	 * During driver init, we want to be careful and avoid changing the source OUI if it's
 	 * already set to what we want, so as to avoid clearing any state by accident
@@ -4159,6 +4156,8 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
 	if (intel_dp_init_lttpr_and_dprx_caps(intel_dp) < 0)
 		return false;
 
+	intel_dp_init_source_oui(intel_dp);
+
 	/*
 	 * Don't clobber cached eDP rates. Also skip re-reading
 	 * the OUI/ID since we know it won't change.
@@ -6035,6 +6034,8 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 
 	if (long_hpd) {
 		intel_dp->reset_link_params = true;
+		intel_dp_invalidate_source_oui(intel_dp);
+
 		return IRQ_NONE;
 	}
 
-- 
2.44.2

