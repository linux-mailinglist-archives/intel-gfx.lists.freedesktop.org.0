Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE4279919A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 23:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1D0310E20F;
	Fri,  8 Sep 2023 21:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A651D10E20F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 21:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694209559; x=1725745559;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dI714YdP6BpcNaPe4bIX6PwteHUtxdN8VqD66OtOD7Q=;
 b=YHJ9dzO6yIMEB+zdWvhKaYwiYtXrlTQasyUuVuwm1ARem31Hrw7a430L
 W6CCV2p6pso1da68y4iRpgmb8DTNmETdLOOoBSKDsyvAc5afetH/SX0ZK
 pbSCfHBOtPJ9VXR0YwVTaaa4FukePgRtuI8zYynqgDaKAV+h5yqp5gejK
 T0X41yOR3XCSfeXt+PNUHXjuDOobyPJ9qOhRWAwUNwuLAdjCzo0bo//g0
 YNgWaKvy79gB9QCtL8QClga6JGIELsdtKhWTxjfySPfyAccC7EZ/2spLp
 N+4uNLH/VxRpTwBczwXaZdepR+ZeFop4WoNFA91Z6xwm4f+vJFf2l79uy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="375128211"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="375128211"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 14:45:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="989410991"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="989410991"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 14:45:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 14:45:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 14:45:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 14:45:43 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 14:45:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AtGa+44C+M4igLtgRRItVIxTBi65aL9RwRGgvXrOnma6NVyAoqfFb1OT7meQmGYDVkY5Hui7+P4veLEtfLbr/qseLnBSfyuWozVYy7ozJkCJ1iTMjUCcDqQNY0mbPQ6ZIlGbfQ7wshYWF9BgqVUTFfUf+SmnDc0QL2olH+OtEJCoexuiCMvKFwUtajnlJhW1Nlq0Q0FugHAgnDIFnPkItoG9nsd6GDC995YoF76GvfbiCrrEyv8qw+gtGBYn45EdIiYTSKhjJwM5y53rdHuShPxNTb4X3q2cs3A2CjztnqTMLTBpiomLZDohBSjY1iHW0buo0V/8mYpvdUGqpEjguQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2noDv9VU12cufovIVbITIChS8A4z2uKA8Fve7Y2kD9k=;
 b=EGnizOMu3qDeUmkavNPbtdxEvcMp2Uqk5g9tV8mU80havCyEfa0jYv0/5z7J5XAXdv75J54nSlXraGfqHsVeNn1kTXkiAIkAiO0Cz2b0f4v7t9lsljaBiacV1nGuzyNGWLPk+f6k23DsOrBqCCga/KnFf0+k4WwMAl+4VVbjbO1M9FcNV+d+9apc6LF1DBgU7z8rb2wrc8lc9AWpGWjEiIi4FXpzkAa1nuyQt43WsFJJ1d5XQqN/KWIejpg7wCIldKCrDCldV8P8RreePIHESgLLAfurUaWpd/OIxF2A9PexKQiuCissiIxrRJtiyy8RmwmQksPAHyHbKFt/fMTpnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN6PR11MB8147.namprd11.prod.outlook.com (2603:10b6:208:46f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 21:45:36 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 21:45:36 +0000
Date: Fri, 8 Sep 2023 16:45:33 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <fi5xscz3ycdvcq2fe6ptjwoicw6clcao7xwxsos5sbr2kczqob@f7wo7gsjzegj>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
 <20230906234732.3728630-7-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230906234732.3728630-7-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR03CA0215.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::10) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN6PR11MB8147:EE_
X-MS-Office365-Filtering-Correlation-Id: 9055a39d-a547-40e1-1dac-08dbb0b4ef4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HGA3M+AseGykBN4d/oYeDK+DlVdwdwNYnLjdExiG2lslVsyRJHfjQIf32uUaPssgIXQLsk4yJHcAYD9ZZVhak0mIkHQT2GBg4P6ae9ASYEEmVuxxJg1D4C3IvB3GbgNJ0RgRUu5N4ihikLklM15hW1tYnVZWsrtcn+ZPXPtfW33GQrsfowVSYeS1PCEZtwIoLeHaUrd07l876EyjMsdNwQoAz1Q8MsGLuJDhlRIGWA1XDbzxBMiyx0TK9PGOJNg16RKmvdl8yDbS1epOSmYzTOvcNKHXtOXL9PkiQfHcxb7/oDeyFPm7NaObedMrM+3T+dF8s4zMPTxzjKYtuf78reA61yHcXgSi1FyUH6D4v9di1PLRxBxImcxVhvCyg9FipGomhr3BFFO89YTyn747z9FvaEy8SCS/39k28iborkJc19Lm/mtn5KRecTOcN5AnIaYKdLascDA4D8Tbveucb6I4vFlpubU2S12HTyieFVReMlfelNvhJUmsxQPexYp+uD2tC50CyS+rLnDPGQFI/Dtz18s3j+zZGzfyzSqW9suebURILcQtOfHDszHyub5Q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(376002)(39860400002)(366004)(396003)(346002)(1800799009)(186009)(451199024)(5660300002)(26005)(6862004)(8676002)(4326008)(8936002)(2906002)(33716001)(83380400001)(86362001)(38100700002)(82960400001)(66946007)(66476007)(6636002)(6506007)(316002)(66556008)(6486002)(6666004)(41300700001)(478600001)(6512007)(9686003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4CsYz6ZblRQgGffE0D7stUgkuEybhElztnyEtUkjSecrz1TmZeNhVUZ2kceZ?=
 =?us-ascii?Q?gfPKNJ27EJpzwidG2T9DnjtS9oXl3/ECb36GI4V/2Do7OcOt3mVZ66otj/ZU?=
 =?us-ascii?Q?RnOyAGQywSIFAmikZ5uGnxTomWvq1w4PHvnh/0TdiBrRHiLr4PcfgLpf5SYU?=
 =?us-ascii?Q?JyEnEa/lSXo/bn73k8C80ReFWOmq2sCg2JS9b3LtmVDXgYzEKHHX6Xx3DU3w?=
 =?us-ascii?Q?Ku/zCoDtnYFismyTYPEZoCIC8eyvnc2N62wHh813B5glo2A/6SEafdBMZ22r?=
 =?us-ascii?Q?0ZKhUfuHgYFQxUmVPwBnKFyrWyMmCWo/mCIfNxR6lF+QPZPn4LMswLsqt7yg?=
 =?us-ascii?Q?CyNfcicwMqqBXUa8qLLUOvSKjsfF0H0pkJqhnDSFTu91awZcMYNYcx7r1Ci2?=
 =?us-ascii?Q?1PDFJTg31VY9tZRZiUjCSvl+GVwDglHE7uY5xxcRkhf45BaihLnD3sodcfR9?=
 =?us-ascii?Q?g4pIGm9v/cQfHIoqALEGvhNUFMjwb/auuXLDwOfLJfEqJ0LfOo7xTXCg3i4N?=
 =?us-ascii?Q?Vd/hveeAjq1wEQN+iz7UlD2OET3EXRZggR8e7x2b1n8i9Qzk49HgJmtMusvp?=
 =?us-ascii?Q?+YLUL/thJCYZvMfuecQtFV1MkMrpcK9KPQLswNKbWhDv/N4bsLa/I9rwzJuv?=
 =?us-ascii?Q?IWFCI/iQj+pd/0zNsFhlxGy29oUL4uSDG7KlOQcoUg8GaR9KKh2h5Oaw63e4?=
 =?us-ascii?Q?zS4nyjSbYjSQPsE9blM0+RW5RRDasTFvn6m6AgB+F6AorLq3nFAvWyTWYg9f?=
 =?us-ascii?Q?bnTLwt2uFZMGZ+XYbQEKfxabOI8t5o8GHQu/t8GayDjyW5Vb7+vFRSc4B1RF?=
 =?us-ascii?Q?tfBbYkRK7NHyaS4dbsXQXVzqU1OwF09PMLGScYbeSXnHkXo3igU0qloX+2DP?=
 =?us-ascii?Q?fG727esDXBHs3Gg8Ka2mo+t8PCoRu1YfcZNToeOjuyTwyIJV0BIxcD9XFxMQ?=
 =?us-ascii?Q?I7qLz4Bu0B9drpTEoYtOx5i0OU68IJheOKcwvrRFA2z2HbzY7V21HrQoM3Uq?=
 =?us-ascii?Q?7PR1eu0UchqVLyt4Gw6U3z7gKXBY41AttkLF/kwwxdgfqCfukT6NUITB9Pl1?=
 =?us-ascii?Q?3OmehO456gI8Q5krT1ypPqNTwHvdGuZXA9cvxFFW9TJ6kwXkmIgP0jSEtu7n?=
 =?us-ascii?Q?e2vu61Oau407qmDlDkfYjzfrEzN9wtOyJ3dJ6oFZbC7KVHosklj+tNba4ajG?=
 =?us-ascii?Q?JDzX0GF0KSOXq6B5ayioJtm3pYFo4W/8seuuPkXR9n/BHNDIqww39YCvze8L?=
 =?us-ascii?Q?bNUDWoNS1tYKdxvIs2+DtCvD5pNXG1czdxhL1pzSwpurKiFJ3meaFRT+jnQS?=
 =?us-ascii?Q?686V0+CYVT0sqL66qbZFI3C9aupJIXKq/O+tMedg+jKEiJmaWxoHE8xf1PvJ?=
 =?us-ascii?Q?Ok18LuBUrGMBgjc2E8NFOLyb6OH8Z2w0cy0Y1T7Omo0GA8Ojr/YCx9Ms15HU?=
 =?us-ascii?Q?PT213gnfFSpIfrwTZzUQIwBLnZXIk+cglAHQIDVok2HXxwDx84212GUi0//b?=
 =?us-ascii?Q?nFgiYF5hoVM+4waK+XtT9tHODJNqCSMUzpV1e+Aa7dfWva306MfyuSGsFQEF?=
 =?us-ascii?Q?Iae2ToVOcSPpkH/i2G4AzZUAbHEl94n/eZ8RbmWZvZtNFntRMCU6i/CNAlb0?=
 =?us-ascii?Q?9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9055a39d-a547-40e1-1dac-08dbb0b4ef4c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 21:45:36.1826 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ms85gjx+h9zYRL4cUxdu/tqMf7kHMPzF7BP9GFDeDjAuZMPY9hfUXbyuGLnJwEuVIAMKq7fOX/xdyTI1DyVnyvddwdbdwF8OrjX4GkB8LJo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8147
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Stop forcing clock gating
 init for future platforms
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 06, 2023 at 04:47:34PM -0700, Matt Roper wrote:
>In the early days of i915, pretty much every platform needed to
>initialize _something_ in the clock gating init functions.  In some
>cases the items initialized were inside the GT (and really should have
>been initialized through the GT workaround infrastructure instead).
>In other cases they were display programming (sometimes not even related
>to "clock gating" at all!) which probably needs to move inside the
>display-specific code.  The number of initialization tasks that are
>truly "clock gating" and don't fall within the GT or display domains is
>relatively limited.  Let's stop forcing future platforms to always
>define a clock gating init hook.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/intel_clock_gating.c | 10 +++-------
> 1 file changed, 3 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
>index c66eb6abd4a2..1f2e2d7087cb 100644
>--- a/drivers/gpu/drm/i915/intel_clock_gating.c
>+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
>@@ -835,9 +835,7 @@ CG_FUNCS(nop);
>  */
> void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
> {
>-	if (IS_METEORLAKE(i915))
>-		i915->clock_gating_funcs = &nop_clock_gating_funcs;
>-	else if (IS_PONTEVECCHIO(i915))
>+	if (IS_PONTEVECCHIO(i915))

shouldn't we use the normal "last platforms first" and just add a check
here for GRAPHICS/DISPLAY version >= x?

> 		i915->clock_gating_funcs = &pvc_clock_gating_funcs;
> 	else if (IS_DG2(i915))
> 		i915->clock_gating_funcs = &dg2_clock_gating_funcs;
>@@ -845,7 +843,7 @@ void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
> 		i915->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
> 	else if (IS_ALDERLAKE_P(i915))
> 		i915->clock_gating_funcs = &adlp_clock_gating_funcs;
>-	else if (GRAPHICS_VER(i915) == 12)
>+	else if (DISPLAY_VER(i915) == 12)

why changing this while the others still check for graphics version?

Lucas De Marchi

> 		i915->clock_gating_funcs = &gen12lp_clock_gating_funcs;
> 	else if (GRAPHICS_VER(i915) == 11)
> 		i915->clock_gating_funcs = &icl_clock_gating_funcs;
>@@ -885,8 +883,6 @@ void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
> 		i915->clock_gating_funcs = &i85x_clock_gating_funcs;
> 	else if (GRAPHICS_VER(i915) == 2)
> 		i915->clock_gating_funcs = &i830_clock_gating_funcs;
>-	else {
>-		MISSING_CASE(INTEL_DEVID(i915));
>+	else
> 		i915->clock_gating_funcs = &nop_clock_gating_funcs;
>-	}
> }
>-- 
>2.41.0
>
