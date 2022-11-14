Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 011CC627DA3
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093AB10E0D6;
	Mon, 14 Nov 2022 12:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D746210E0B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668428594; x=1699964594;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r71vNBN03LIVB6wnqV9QXXNTheuJEPBjeFhgZWFfXdw=;
 b=XdC+niGSZ3SlBqvmEIkwBhS99Gqr/+7l+qvNXjk5fkCor3GHrhFJGA03
 8Vhcft2Y+2fz7WqTHnMQV9bh27O8rJpcOEoEFDrTk9JHUdflCSeMknsHl
 x1vrw78mh/T9zE4Vr/8RWzUFKBDqDCgplLR53A+yiUyl9+Lxik2250eTo
 KfsEjIxagxIRY0DdsWNUcJ9bK0S5TLZ62o2fvu/UgH6iEm0v6DGF9tQr3
 9juUJiz3UTS18Ozrkox5RH2IkJxVqLlwfTbvFT+pysR8JXcQzp4/ZeEwV
 snk2GVh5ig11pwTiSZmyX45WPBLKXGGh/Y6sgKowyTTjTIXkpOVlLTs5B w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="310664132"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310664132"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:23:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="671539862"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671539862"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:23:02 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 14:22:48 +0200
Message-Id: <20221114122251.21327-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221114122251.21327-1-imre.deak@intel.com>
References: <20221114122251.21327-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 6/9] drm/i915: Add missing AUX_IO_A power
 domain->well mappings
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

BXT and GLK were missing the AUX_IO_A power domain -> PHY A common power
well mapping, add these now. This didn't cause a problem as the
AUX_IO_A and DDI_LANES_A power domains are acquired together.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index b82c0d0a80c5f..aa9d1ae9e8a26 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -441,6 +441,7 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
 
 I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
 	POWER_DOMAIN_PORT_DDI_LANES_A,
+	POWER_DOMAIN_AUX_IO_A,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_INIT);
 
@@ -525,6 +526,7 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_ddi_io_c,	POWER_DOMAIN_PORT_DDI_IO_C);
 
 I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_a,
 	POWER_DOMAIN_PORT_DDI_LANES_A,
+	POWER_DOMAIN_AUX_IO_A,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_INIT);
 
-- 
2.37.1

