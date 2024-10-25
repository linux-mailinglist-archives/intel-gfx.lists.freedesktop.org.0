Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCED9B0913
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE30310EB13;
	Fri, 25 Oct 2024 16:02:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zj5SfnFO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D911A10EB0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 16:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872158; x=1761408158;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+tU+hnS3v0kko76tvaq20/XUEF948WIb28DNlkWqP8E=;
 b=Zj5SfnFOeLR9HPowk7+EVZfKU737zVX0Q8gEfGBaw7oNdaAnaSsOUxm/
 OZX0B/XwAZwlCBCR/2lJS9rPQnEe/rEjva6YoSDDt1bsp4PHbSLcx865u
 12ylSxcPQhmot/GTL7eqzcFsn486GXtnDOW3JGFtugXnGG8YM4QiV5W+F
 g9BqWBzv0wMq+oIkvuZe8Udo8p0+kGAn8lg+ho5RH1OyV9FpBoDy+72Lk
 0m9cJrTMDFmQuUM24JJk3uWd66AxzUFn1kw/BRQUe+qb7Xxek6bR1Y/K5
 CviTAU72BMvZk2psnaHtOs/FR7V/TZWmmbEeQBhQuKkl79VoKdPBhZtnN g==;
X-CSE-ConnectionGUID: CVjX7H3GQ1GtbcbPF8lmtA==
X-CSE-MsgGUID: 9i478rdYQbirsuTyK3owCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33242406"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33242406"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:37 -0700
X-CSE-ConnectionGUID: mf2xTv80R4qpw8hxgRSFZQ==
X-CSE-MsgGUID: 2Nsm95N4RpSv5cNfnPs+7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81783715"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:37 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v5 8/8] drm/i915/dp: Write the source OUI for non-eDP sinks as
 well
Date: Fri, 25 Oct 2024 19:02:59 +0300
Message-ID: <20241025160259.3088727-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241025160259.3088727-1-imre.deak@intel.com>
References: <20241025160259.3088727-1-imre.deak@intel.com>
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

v2: Rebased on latest patch version.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11776
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 916301aa9f6b6..24daf5f973770 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3407,9 +3407,6 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
 	u8 oui[] = { 0x00, 0xaa, 0x01 };
 	u8 buf[3] = {};
 
-	if (!intel_dp_is_edp(intel_dp))
-		return;
-
 	if (READ_ONCE(intel_dp->oui_valid))
 		return;
 
@@ -6133,6 +6130,8 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 
 	if (long_hpd) {
 		intel_dp->reset_link_params = true;
+		intel_dp_invalidate_source_oui(intel_dp);
+
 		return IRQ_NONE;
 	}
 
-- 
2.44.2

