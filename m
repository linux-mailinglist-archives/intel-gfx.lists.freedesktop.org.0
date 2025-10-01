Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 195ACBB1356
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 18:05:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32CC910E734;
	Wed,  1 Oct 2025 16:05:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fkwlRlTZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 171A310E732;
 Wed,  1 Oct 2025 16:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759334709; x=1790870709;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=QJeQyZK4a49G13gBeTQcxmqn2jNkr+FRxrVFOBTMsMA=;
 b=fkwlRlTZGE6h682a1bcxEj70+VlGmFbxImKy8pn+ZgP/K+sFhHZnI5gZ
 Zal/Hr/suPg6qLr8Dx5QPphARl1+8vZylHl4DmS9ugsZPSpgFjPjM8TID
 Om8QS2cKbslVpE4Qk1wICXv7dFgI+0r1i/eQX5Rdx8IxZ/oSB49/MeqYr
 LfPwBuw7u78T/dR9zZUdos8H5BNWbQwE7ArANGES6+laCM6C/mLkCeyJN
 WAn8Ro7Yal6lAl6rjogUsSyoe+yaS4VqlW0QPSsXOuzsynJaVlphTrFgm
 sUqdDyDaBAe9EezEzaWMCT06wRZTXs/5P424PhPjYiisMxiq+R4ZfHQ6A g==;
X-CSE-ConnectionGUID: hoHL56EPQdeyNeV5iC+uXg==
X-CSE-MsgGUID: 6TGkeASPQ1Ke0iKusb4/yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61570382"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61570382"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 09:05:09 -0700
X-CSE-ConnectionGUID: dyvnorYlQgSIVwXC9T+imw==
X-CSE-MsgGUID: sGjgutouSa2JAIDuJRtAMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="178628805"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.146])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 09:05:07 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 01 Oct 2025 13:04:49 -0300
Subject: [PATCH v2 2/2] drm/i915/display: Enable PICA power before AUX
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-pica-power-before-aux-v2-2-6308df4de5a8@intel.com>
References: <20251001-pica-power-before-aux-v2-0-6308df4de5a8@intel.com>
In-Reply-To: <20251001-pica-power-before-aux-v2-0-6308df4de5a8@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>
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
index e89f18b7037f..9b49952994ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1588,8 +1588,8 @@ static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_dcoff),
 	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
-	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
+	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
 };
 
 /*
@@ -1710,8 +1710,8 @@ static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
 	I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
-	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
+	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
 };
 
 static const struct i915_power_well_desc wcl_power_wells_main[] = {
@@ -1768,8 +1768,8 @@ static const struct i915_power_well_desc_list wcl_power_wells[] = {
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
 	I915_PW_DESCRIPTORS(wcl_power_wells_main),
-	I915_PW_DESCRIPTORS(wcl_power_wells_aux),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
+	I915_PW_DESCRIPTORS(wcl_power_wells_aux),
 };
 
 static void init_power_well_domains(const struct i915_power_well_instance *inst,

-- 
2.51.0

