Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9463C7F9F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 09:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692246E195;
	Wed, 14 Jul 2021 07:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323C26E195
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 07:55:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="274134910"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="274134910"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 00:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="630302994"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 14 Jul 2021 00:55:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 00:55:42 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 00:55:41 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Wed, 14 Jul 2021 13:25:39 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Box, David E" <david.e.box@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [REBASED v2] drm/i915: Tweaked Wa_14010685332 for all PCHs
Thread-Index: AQHXdu9fY+Kpo98dqky7/Fz0S9/knKtBAiwAgAEZmfA=
Date: Wed, 14 Jul 2021 07:55:38 +0000
Message-ID: <2c30496803f340a7a8d17bf8d951db28@intel.com>
References: <20210325093213.20794-1-anshuman.gupta@intel.com>,
 <20210712070917.10851-1-anshuman.gupta@intel.com>
 <MW3PR11MB4522E99061866F53DEEFB60BA1159@MW3PR11MB4522.namprd11.prod.outlook.com>
In-Reply-To: <MW3PR11MB4522E99061866F53DEEFB60BA1159@MW3PR11MB4522.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [REBASED v2] drm/i915: Tweaked Wa_14010685332 for
 all PCHs
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks David for providing Ack on it.
Shall I use your " Tested-by: David E. Box <david.e.box@intel.com>" tag for=
 this patch ?
Br,
Anshuman Gupta.

From: Box, David E <david.e.box@intel.com> =

Sent: Wednesday, July 14, 2021 2:02 AM
To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-gfx@lists.freedesktop=
.org
Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Vivi, Rodrigo <rodrigo.vi=
vi@intel.com>; Deak, Imre <imre.deak@intel.com>
Subject: Re: [REBASED v2] drm/i915: Tweaked Wa_14010685332 for all PCHs

Tested and confirmed working on TGL-H Dell platforms.

David Box
Linux Power Management =

IAGS/SSE
________________________________________
From: Gupta, Anshuman <mailto:anshuman.gupta@intel.com>
Sent: Monday, July 12, 2021 12:09 AM
To: mailto:intel-gfx@lists.freedesktop.org <mailto:intel-gfx@lists.freedesk=
top.org>
Cc: Box, David E <mailto:david.e.box@intel.com>; Gupta, Anshuman <mailto:an=
shuman.gupta@intel.com>; Roper, Matthew D <mailto:matthew.d.roper@intel.com=
>; Vivi, Rodrigo <mailto:rodrigo.vivi@intel.com>; Deak, Imre <mailto:imre.d=
eak@intel.com>
Subject: [REBASED v2] drm/i915: Tweaked Wa_14010685332 for all PCHs =

=A0
dispcnlunit1_cp_xosc_clkreq clock observed to be active on TGL-H platform
despite Wa_14010685332 original sequence, thus blocks entry to deeper s0ix =
state.

The Tweaked Wa_14010685332 sequence fixes this issue, therefore use tweaked
Wa_14010685332 sequence for every PCH since PCH_CNP.

v2:
- removed RKL from comment and simplified condition. [Rodrigo]

Fixes: b896898c7369 ("drm/i915: Tweaked Wa_14010685332 for PCHs used on gen=
11 platforms")
Cc: Matt Roper <mailto:matthew.d.roper@intel.com>
Cc: Rodrigo Vivi <mailto:rodrigo.vivi@intel.com>
Cc: Imre Deak <mailto:imre.deak@intel.com>
Signed-off-by: Anshuman Gupta <mailto:anshuman.gupta@intel.com>
Reviewed-by: Rodrigo Vivi <mailto:rodrigo.vivi@intel.com>
---
=A0.../drm/i915/display/intel_display_power.c=A0=A0=A0 | 16 +++++++-------
=A0drivers/gpu/drm/i915/i915_irq.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 | 21 -------------------
=A02 files changed, 8 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c
index 285380079aab..28a363119560 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -6388,13 +6388,13 @@ void intel_display_power_suspend_late(struct drm_i9=
15_private *i915)
=A0=A0=A0=A0=A0=A0=A0=A0 if (DISPLAY_VER(i915) >=3D 11 || IS_GEMINILAKE(i91=
5) ||
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 IS_BROXTON(i915)) {
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bxt_enable_dc9(i915);
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Tweaked Wa_14010685332:icp,j=
sp,mcc */
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (INTEL_PCH_TYPE(i915) >=3D P=
CH_ICP && INTEL_PCH_TYPE(i915) <=3D PCH_MCC)
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_d=
e_rmw(i915, SOUTH_CHICKEN1,
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DI=
S);
=A0=A0=A0=A0=A0=A0=A0=A0 } else if (IS_HASWELL(i915) || IS_BROADWELL(i915))=
 {
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 hsw_enable_pc8(i915);
=A0=A0=A0=A0=A0=A0=A0=A0 }
+
+=A0=A0=A0=A0=A0=A0 /* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
+=A0=A0=A0=A0=A0=A0 if (INTEL_PCH_TYPE(i915) >=3D PCH_CNP && INTEL_PCH_TYPE=
(i915) < PCH_DG1)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_de_rmw(i915, SOUTH_CHICKE=
N1, SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
=A0}
=A0
=A0void intel_display_power_resume_early(struct drm_i915_private *i915)
@@ -6403,13 +6403,13 @@ void intel_display_power_resume_early(struct drm_i9=
15_private *i915)
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 IS_BROXTON(i915)) {
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gen9_sanitize_dc_state(i91=
5);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bxt_disable_dc9(i915);
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Tweaked Wa_14010685332:icp,j=
sp,mcc */
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (INTEL_PCH_TYPE(i915) >=3D P=
CH_ICP && INTEL_PCH_TYPE(i915) <=3D PCH_MCC)
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_d=
e_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
-
=A0=A0=A0=A0=A0=A0=A0=A0 } else if (IS_HASWELL(i915) || IS_BROADWELL(i915))=
 {
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 hsw_disable_pc8(i915);
=A0=A0=A0=A0=A0=A0=A0=A0 }
+
+=A0=A0=A0=A0=A0=A0 /* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
+=A0=A0=A0=A0=A0=A0 if (INTEL_PCH_TYPE(i915) >=3D PCH_CNP && INTEL_PCH_TYPE=
(i915) < PCH_DG1)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_de_rmw(i915, SOUTH_CHICKE=
N1, SBCLK_RUN_REFCLK_DIS, 0);
=A0}
=A0
=A0void intel_display_power_suspend(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_ir=
q.c
index 1d4c683c9de9..99c75a9d7ffa 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3064,24 +3064,6 @@ static void valleyview_irq_reset(struct drm_i915_pri=
vate *dev_priv)
=A0=A0=A0=A0=A0=A0=A0=A0 spin_unlock_irq(&dev_priv->irq_lock);
=A0}
=A0
-static void cnp_display_clock_wa(struct drm_i915_private *dev_priv)
-{
-=A0=A0=A0=A0=A0=A0 struct intel_uncore *uncore =3D &dev_priv->uncore;
-
-=A0=A0=A0=A0=A0=A0 /*
-=A0=A0=A0=A0=A0=A0=A0 * Wa_14010685332:cnp/cmp,tgp,adp
-=A0=A0=A0=A0=A0=A0=A0 * TODO: Clarify which platforms this applies to
-=A0=A0=A0=A0=A0=A0=A0 * TODO: Figure out if this workaround can be applied=
 in the s0ix suspend/resume handlers as
-=A0=A0=A0=A0=A0=A0=A0 * on earlier platforms and whether the workaround is=
 also needed for runtime suspend/resume
-=A0=A0=A0=A0=A0=A0=A0 */
-=A0=A0=A0=A0=A0=A0 if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_CNP ||
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP && I=
NTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_uncore_rmw(uncore, SOUTH_=
CHICKEN1, SBCLK_RUN_REFCLK_DIS,
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 SBCLK_RUN_REFCLK_DIS);
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_uncore_rmw(uncore, SOUTH_=
CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
-=A0=A0=A0=A0=A0=A0 }
-}
-
=A0static void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
=A0{
=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_uncore *uncore =3D &dev_priv->uncore;
@@ -3115,7 +3097,6 @@ static void gen8_irq_reset(struct drm_i915_private *d=
ev_priv)
=A0=A0=A0=A0=A0=A0=A0=A0 if (HAS_PCH_SPLIT(dev_priv))
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ibx_irq_reset(dev_priv);
=A0
-=A0=A0=A0=A0=A0=A0 cnp_display_clock_wa(dev_priv);
=A0}
=A0
=A0static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -3159,8 +3140,6 @@ static void gen11_display_irq_reset(struct drm_i915_p=
rivate *dev_priv)
=A0
=A0=A0=A0=A0=A0=A0=A0=A0 if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 GEN3_IRQ_RESET(uncore, SDE=
);
-
-=A0=A0=A0=A0=A0=A0 cnp_display_clock_wa(dev_priv);
=A0}
=A0
=A0static void gen11_irq_reset(struct drm_i915_private *dev_priv)
-- =

2.26.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
