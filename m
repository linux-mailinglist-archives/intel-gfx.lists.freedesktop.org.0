Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE3C6B0E9C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 17:25:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494A010E679;
	Wed,  8 Mar 2023 16:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7D1C10E679
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 16:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678292708; x=1709828708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RDMwClJJ22571XOHmRP41GpjdTNCszwPkkIOtPxSKQE=;
 b=eo0Hk4aup5NRPq4ZVwQysKEuHkPp1QHhDsymWgl3P4fIPHHI6mY9TdpJ
 A2nFISMKBy5FFM+2nEA/g88NDl3EsQeeyYM1leKVOA0fhvbKzXj/zyqg5
 7WGg9G1PkTnQPaLpVyP9CuhnMD/e+4yqlKiMtGnHbSr8ZMuY5AlGifo9x
 Iuq5Hiw210ZTozWfxtw37i76VUQ9vdmEpLlNbVEp9a1z8EW3uMj9rv4RV
 LqsJBjyzzTwoE16yLwgfZt2tcSK5Sr9Bm4bUnRF2GjI3Bc7gAMo/Ok4tf
 sSIBEGAkT+QRrwnsM9YaaFkWVqNnJJi+9xhGyTH1uFJBd1EfSID/x4AnP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="422471594"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="422471594"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 08:25:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="626976797"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="626976797"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 08:25:07 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Mar 2023 18:25:03 +0200
Message-Id: <20230308162503.3219200-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230308162503.3219200-1-imre.deak@intel.com>
References: <20230308162503.3219200-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/3] drm/i915/opregion: Register display debugfs
 later, after initialization steps
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the display debugfs registration later, after initializing steps
for opregion/acpi/audio. These latter ones don't depend on the debugfs
entries, OTOH some debugfs entries may depend on the initialized state.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index edbcb1273ca28..e7e7a29e117dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8886,14 +8886,14 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
-	intel_display_debugfs_register(i915);
-
 	/* Must be done after probing outputs */
 	intel_opregion_register(i915);
 	intel_acpi_video_register(i915);
 
 	intel_audio_init(i915);
 
+	intel_display_debugfs_register(i915);
+
 	/*
 	 * Some ports require correctly set-up hpd registers for
 	 * detection to work properly (leading to ghost connected
-- 
2.37.1

