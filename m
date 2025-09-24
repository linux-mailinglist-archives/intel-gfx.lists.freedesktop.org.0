Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B209B99AF1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB1310E70E;
	Wed, 24 Sep 2025 11:54:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eGQQB0Eb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6C789149;
 Wed, 24 Sep 2025 11:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758714867; x=1790250867;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=PRUny6RG6qhyqL7rgBxW8QiKtn1YkBs7+872DxRe960=;
 b=eGQQB0EbHaI5IEhEZC5iZ8PubOaGIeritIemZ2OQlll6NqaXJH1t+VYN
 HpjHAwBd+VD84VXHx8p5/Xkr+5NmKohV4+q92nuPD8idPHmf83Cnj8UfF
 REAhZ8FRDOwNJ4Xe+0tkzLfLx+PeLQdkhsIu/4jJkMzBlxxbcsqt87IO+
 +nnvMagMKvBqJNm7iqTuPphl0U6TTQCtMGqMC8eKJRPUI+YRtO7Hx5ksh
 35OoAr8nUlhvPptEQAuq2uHy7pnQI17uDAOgMBH5IiAoUQNh/W0hY/dO8
 CM5JGcHsbz8qsX4SC1QZS1hnwpMVxTDEzRrCxpFMz75lnLJ9Gr+omggtx A==;
X-CSE-ConnectionGUID: t/w8FMtIRg+1CfjShLjtpQ==
X-CSE-MsgGUID: mipGqmRcQi60xY/MTArqvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71631180"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71631180"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:54:27 -0700
X-CSE-ConnectionGUID: EUyAPi2WQjygGa7o8+BFKg==
X-CSE-MsgGUID: hITsMzzoQLaD0fxd01/nXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176620533"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.74])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:54:26 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 24 Sep 2025 08:54:10 -0300
Subject: [PATCH] drm/i915/display: Enable PICA power before AUX
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-pica-power-before-aux-v1-1-9fa95b80842c@intel.com>
X-B4-Tracking: v=1; b=H4sIAOLb02gC/x3MMQqAMAxA0atIZgOxIqJXEYe2Rs1iS4paEO9uc
 XzD/w8kVuEEY/WA8iVJwlHQ1BX43R4boyzFYMh0NJgWo3iLMdys6HgNymjPjD0RDd4vjesdlDY
 qr5L/7zS/7wdM26oOZwAAAA==
X-Change-ID: 20250923-pica-power-before-aux-70009ccd1b7b
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.15-dev
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

According to Bspec, before enabling AUX power, we need to have the
"power well containing Aux logic powered up". Starting with Xe2_LPD,
such power well is the "PICA" power well, which is managed by the driver
on demand.

While we did add the mapping of AUX power domains to the PICA power
well, we ended up placing its power well descriptor after the
descriptor for AUX power. As a result, when enabling power wells for one
of the aux power domains, the driver will enable AUX power before PICA
power, going against the order specified in Bspec.

It appears that issue did not become apparent to us mainly because,
luckily, AUX power is brought up after we assert PICA power, even if
done in the wrong order; and in enough time for the first AUX
transaction to succeed.

Furthermore, I have also realized that, in some cases, like driver
initialization, PICA power is already up when we need to acquire AUX
power.

One case where we can observe the incorrect ordering is when the driver
is resuming from runtime PM suspend. Here is an excerpt of a dmesg with
some extra debug logs extracted from a LNL machine to illustrate the
issue:

    [  +0.000156] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling AUX_TC1
    [  +0.001312] xe 0000:00:02.0: [drm:xelpdp_aux_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 0
    [  +0.000127] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling PICA_TC
    [  +0.001072] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 1
    [  +0.000102] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC2 power status: 0
    [  +0.000090] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC3 power status: 0
    [  +0.000092] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC4 power status: 0

The first "DBG: ..." line shows that AUX power for TC1 is off after we
assert and wait. The remaining lines show that AUX power for TC1 was on
after we enabled PICA power and waited for AUX power.

It is important that we stay compliant with the spec, so let's fix this
by listing the power wells in an order that matches the requirements
from Bspec. (As a side note, it would be nice if we could define those
dependencies explicitly.)

After this change, we have:

    [  +0.000146] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling PICA_TC
    [  +0.001417] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 0
    [  +0.000116] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC2 power status: 0
    [  +0.000096] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC3 power status: 0
    [  +0.000094] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC4 power status: 0
    [  +0.000095] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling AUX_TC1
    [  +0.000915] xe 0000:00:02.0: [drm:xelpdp_aux_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 1

Bspec: 68967, 68886, 72519
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 39b71fffa2cd..d057bbde42c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1582,8 +1582,8 @@ static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_dcoff),
-	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
+	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
 };
 
 /*
@@ -1713,8 +1713,8 @@ static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
-	I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
+	I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
 };
 
 static const struct i915_power_well_desc wcl_power_wells_main[] = {
@@ -1766,8 +1766,8 @@ static const struct i915_power_well_desc_list wcl_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
-	I915_PW_DESCRIPTORS(wcl_power_wells_main),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
+	I915_PW_DESCRIPTORS(wcl_power_wells_main),
 };
 
 static void init_power_well_domains(const struct i915_power_well_instance *inst,

---
base-commit: 308a05859081aae4125b58d186d582b814c6deb2
change-id: 20250923-pica-power-before-aux-70009ccd1b7b

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

