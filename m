Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EAB9A0B5E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61A110E702;
	Wed, 16 Oct 2024 13:24:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ww4CjGlx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F6AB10E6F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729085040; x=1760621040;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AulHWYoA1CFkAi67AfvEQ9WQYMuMQQ/4W1lU3EEs7ho=;
 b=Ww4CjGlxXF6++nlNM/sRM6zvgFsXr3V+JT12I2ILrhKROMkpL8DySKRr
 xwCd9p+g4BWthBVq8P0d81S2qVOmXofjfD9XI2LBjMItSTEe4gjY7Acjb
 PxZyv23NkHDgFq6WwvIxQbKsv89OxVl3GLzHeCfkPpgSs0dfzadV4AmqT
 fGtzHokzzDThTSa1BkTxI8VNvQ/zDJzCGNpD1UyHUuTudrpztDCZeUkfl
 0kzFz3It+bFFM64dA8DLtahab5bu7+Wv/JJ5Xmd2YyXofX61q3C8OI0kX
 MeQ9IVAyrA2vOKeiVB8hZOdiku1FnX+Ddn1J28ucWZ1OHNyj5urVAkzKg Q==;
X-CSE-ConnectionGUID: dH7A24z/QLmOg7LFbOt5Og==
X-CSE-MsgGUID: 7HeWSyXfTlGd/CgsI14zxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46005987"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46005987"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:45 -0700
X-CSE-ConnectionGUID: 3dSm1LrWRS2b7uMWkEJq+w==
X-CSE-MsgGUID: iglNq0rJS2a/ZYoG4/whSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78384460"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 8/8] drm/i915/dp: Write the source OUI for non-eDP sinks as
 well
Date: Wed, 16 Oct 2024 16:24:05 +0300
Message-ID: <20241016132405.2231744-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241016132405.2231744-1-imre.deak@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 063fe92d43786..456c87a65ad8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3407,9 +3407,6 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
 	u8 oui[] = { 0x00, 0xaa, 0x01 };
 	u8 buf[3] = {};
 
-	if (!intel_dp_is_edp(intel_dp))
-		return;
-
 	oui_valid = READ_ONCE(intel_dp->oui_valid);
 
 	/*
@@ -6138,6 +6135,8 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 
 	if (long_hpd) {
 		intel_dp->reset_link_params = true;
+		intel_dp_invalidate_source_oui(intel_dp);
+
 		return IRQ_NONE;
 	}
 
-- 
2.44.2

