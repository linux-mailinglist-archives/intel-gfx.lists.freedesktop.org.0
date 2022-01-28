Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F19F249F523
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 09:32:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32FA51122C4;
	Fri, 28 Jan 2022 08:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9ACA1122C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 08:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643358736; x=1674894736;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YD2c2TA6WIGjWevwVlJ84sLAkmb80SSiKIhXteFOzmc=;
 b=dhK5SiNjMP/qus88VTkpocRth8f1w3NOC9KH+Xet02gxcOMTyOotkC4G
 hls+lp9A7T6y3Ji2Ne/pTiVNyVB/jWw9aafhZtw3zT0SYDdkpJbCcr/Nb
 1Hrn+SZ0gylxXrDeiYQoL2jPN7irvoSzu3I6zChZL7jxw3aZhTJ7rdzqR
 rbn+prdIPWuZ0C8lDrdNpJoEDp3INYyi8vM8FbPHN+M3yKu5+bkU+tjGl
 OgUGL9NCpubwnIqNGVSVFDkETv/WxN6XZ4sesqMz8+6lBjQYqgSSE45M3
 2RIdyXDeAVWBpNWk9Q8Xincic6APbSDOqUSLhTAB0/AAMQxklGlaQEFM3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="247299115"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="247299115"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 00:32:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="629036285"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 28 Jan 2022 00:32:15 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 00:32:15 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 00:32:14 -0800
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14]) by
 ORSMSX601.amr.corp.intel.com ([10.22.229.14]) with mapi id 15.01.2308.020;
 Fri, 28 Jan 2022 00:32:14 -0800
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015227452
Thread-Index: AQHYE7b/QEdBNHjTyUO8QnD/TvsmB6x4G2og
Date: Fri, 28 Jan 2022 08:32:14 +0000
Message-ID: <bf725668ee794a309d6c6ebbd88c9388@intel.com>
References: <20220127194855.3963296-1-matthew.d.roper@intel.com>
In-Reply-To: <20220127194855.3963296-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015227452
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

Reviewed-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt=
 Roper
Sent: Thursday, January 27, 2022 11:49 AM
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015227452

Note that the bspec doesn't list the bit we're programming here (bit 11) as=
 being present on DG2, but we've confirmed with the hardware team that this=
 is a documentation mistake and the bit does indeed exist on all Xe_HP-base=
d platforms.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/=
i915/gt/intel_workarounds.c
index 748b2daf043f..065dc1c2bb71 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2045,6 +2045,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, s=
truct i915_wa_list *wal)  {
 	struct drm_i915_private *i915 =3D engine->i915;
=20
+	if (IS_DG2(engine->i915)) {
+		/* Wa_14015227452:dg2 */
+		wa_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
+	}
+
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0)) {
 		/* Wa_14013392000:dg2_g11 */
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE); diff =
--git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h i=
ndex 2e4dd9db63fe..38c23dd36300 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8927,6 +8927,7 @@ enum {
=20
 #define GEN9_ROW_CHICKEN4				_MMIO(0xe48c)
 #define   GEN12_DISABLE_GRF_CLEAR			REG_BIT(13)
+#define   XEHP_DIS_BBL_SYSPIPE				REG_BIT(11)
 #define   GEN12_DISABLE_TDL_PUSH			REG_BIT(9)
 #define   GEN11_DIS_PICK_2ND_EU				REG_BIT(7)
 #define   GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX	REG_BIT(4)
--
2.34.1

