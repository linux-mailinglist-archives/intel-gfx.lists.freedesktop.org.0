Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4042148D694
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 12:18:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1ED010E32E;
	Thu, 13 Jan 2022 11:18:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA6EF10E32E
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 11:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642072699; x=1673608699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RuY9306Z2ewEDs2u8dlv4z681hfE8TgqR1Bgfsa9k8Q=;
 b=Dc7xun14oGqChKlVu1JwfHL3MDl1mHkQ1ochwNPwqPfOmKWhRuHeJ06r
 3xYON/gdSBFUvkks4xEsXP4P06owaBWyNPSQbsMrL/WXHjLBitWre81HA
 re+T8P85Zcu5DffLGT1jeKtz3XF7XgdaFlJ9AfBUoMlfEXiPW1g0BsnVm
 uKgR4JSn36T4UsdL972E/HWUoht+kRQxqUkhywCwT543Ax8vKjmLOKKgT
 OjJ6OyPT6mF/5NVnLAkXbohzAVtsi4qfummbwmokSOVAP1/IkxTPJmjdM
 EzZ3wpONAAZCMdj7NQ8f0QRtmo8g9ktMaIurcp3CbdMmcI5tmTcaZWQKv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="330336190"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="330336190"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 03:18:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="515888291"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 03:18:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jan 2022 13:18:03 +0200
Message-Id: <2c18d26a7e6ceb025af7e91a56f8694de94fd3ee.1642072583.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642072583.git.jani.nikula@intel.com>
References: <cover.1642072583.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/opregion: check port number bounds
 for SWSCI display power state
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
Cc: jani.nikula@intel.com, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The mapping from enum port to whatever port numbering scheme is used by
the SWSCI Display Power State Notification is odd, and the memory of it
has faded. In any case, the parameter only has space for ports numbered
[0..4], and UBSAN reports bit shift beyond it when the platform has port
F or more.

Since the SWSCI functionality is supposed to be obsolete for new
platforms (i.e. ones that might have port F or more), just bail out
early if the mapped and mangled port number is beyond what the Display
Power State Notification can support.

Fixes: 9c4b0a683193 ("drm/i915: add opregion function to notify bios of encoder enable/disable")
Cc: <stable@vger.kernel.org> # v3.13+
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4800
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index af9d30f56cc1..ad1afe9df6c3 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -363,6 +363,21 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 		port++;
 	}
 
+	/*
+	 * The port numbering and mapping here is bizarre. The now-obsolete
+	 * swsci spec supports ports numbered [0..4]. Port E is handled as a
+	 * special case, but port F and beyond are not. The functionality is
+	 * supposed to be obsolete for new platforms. Just bail out if the port
+	 * number is out of bounds after mapping.
+	 */
+	if (port > 4) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "[ENCODER:%d:%s] port %c (index %u) out of bounds for display power state notification\n",
+			    intel_encoder->base.base.id, intel_encoder->base.name,
+			    port_name(intel_encoder->port), port);
+		return -EINVAL;
+	}
+
 	if (!enable)
 		parm |= 4 << 8;
 
-- 
2.30.2

