Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE34616A61
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:15:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBBC10E533;
	Wed,  2 Nov 2022 17:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD0510E52C
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667409341; x=1698945341;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r71vNBN03LIVB6wnqV9QXXNTheuJEPBjeFhgZWFfXdw=;
 b=BucexkhswqsXcy3Fz/LaLovuw3roIcw1GLJzj8vJxKs3udZEdPpTx2Iy
 AmsroNEX8RRsywjKbqNSPJwGt3nTt/5xFRjg29pJa40drZ5Sclc7wEeLy
 wf9bTfYG96fehD/RqVB17MQXlnbsq85THRxurt2RJwVCwfHU7YE0KaZhO
 +0S0mrC/iqnATVAfNugAKYHYKjWiOAGObx0FrCxFB99ShCdWIXFA3IeEG
 Nu84M9MqRD0FXZNcW4VfFEOOj2IgATjSLrqzGUZpevq/jORztgljZ2nYX
 bHFzPxJ2D74ytrqaSigSzifI6M+52v8khk/CyueIFChUXNzmft/Ny5cg1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="296918907"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="296918907"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:15:38 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="636857846"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="636857846"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:15:37 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 19:15:27 +0200
Message-Id: <20221102171530.3261282-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221102171530.3261282-1-imre.deak@intel.com>
References: <20221102171530.3261282-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Add missing AUX_IO_A power
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

