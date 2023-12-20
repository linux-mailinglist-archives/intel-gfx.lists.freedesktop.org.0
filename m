Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A0081A8CA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 23:12:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B8510E625;
	Wed, 20 Dec 2023 22:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC1AA10E641
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 22:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703110319; x=1734646319;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=n6m2IEHNhLjmZ9FOrCBTKEvZv5liPZsxyJGMKbUIBkg=;
 b=SuOqfQVr8Dbk6URLbSIEeulynyy+D503i3XJ+TrmiAoLVffN/ZrGVmUK
 oJb+PuJQgnFkE79DwCicIL3A9Kq1SRyqd5mbVjfPtt4VcWq0tGKbKwd+P
 D1KEtLyv1bjH/8Aczy9fW+1RfRLMrinyI1SByrMqE344CRDshiSo6sXyJ
 oud44IpGTuhEsXYJRErxYWAZmNH1DKFP9knpNX0OE4KJmdM20Gk2s2dwW
 WFIbzbT8WBKs14RX3BQBopQ3z12zJxEKlUvWQub10HhL6j2ENLg8Q/z2Y
 eVjrBiXNEL93oXGd37Rf8hoSnb5OQggTM7XeTRKDEEFOVf9X5w0PXlGnl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="462328219"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="462328219"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:11:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="18106223"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 14:11:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 14:11:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 14:11:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 14:11:47 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 14:11:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IOgqMSgTbjTENm73uMBiUb6qsUWO6LLU1asWUC6eLrrDZ/mD1XNMl3dZQtFnuqT+0PKjQVEOHEBddDYUUKZ5MhK764WSrYAjcHgUlZfGFXdryzk4i9/wSroWycmLlc/Vm1YP2bh8q0N5jmtsVBL+dsZrPbD+EGTTH0SHQ8UD7wD7FC+9sjFamztwC35ypdG7FfSLoBEN3zp79BENhp42w1IEKj0ZGIm9EP+B5SnVSyqRh7/LSdPGEiDRj0KajejrGc0i1c+35nckyp9pH35HY+YviPbOj6rzzIty+C/58IJ+B2M2t72qE0P1IPv0EywWlZqTOg3y0+xleE91DaCAsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qTlGzraEBaETNVJMKy1m7ijKcVjXFk3MFB1y2hk3iVk=;
 b=FdgvrUwSuEB863bD0cQgneO+0GXZuttSMs0FYUHTmeDQHTs9uedV1MDRH56b/HiMvJ40x4IQBmDDIR0+YRnq/WGyw/Z3yVTLNOf6idxibIZTu9c5TZS7zON/K50qEbTi27bwgwei5ag+6JKgpPRvN5jrDgRdbxUi/n6Qos4pNi7eVR5muwmI1QT+yt8A9G651zd2K/dfnCmZiyJl4GWwbFTCz3lsW09Wqsl9sFc4jltQ53RrOU1N/kDQmdGUIRJGzh9LyD/nJST2cC6kYQdyJ7UDdRXs3RZVXRv7kShXSGnP006BdYwmfJs8UR0Mogs+GkKYCoCQgln1YHoZkOmBwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB5957.namprd11.prod.outlook.com (2603:10b6:510:1e0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 22:11:39 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::48d6:d63b:c2a0:e07]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::48d6:d63b:c2a0:e07%3]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 22:11:39 +0000
Date: Wed, 20 Dec 2023 14:11:36 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>
Subject: Re: [PATCH v2] drm/i915/mtl: Add fake PCH for Meteor Lake
Message-ID: <20231220221136.GL1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231219185233.1469675-1-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231219185233.1469675-1-haridhar.kalvala@intel.com>
X-ClientProxiedBy: SJ0PR05CA0117.namprd05.prod.outlook.com
 (2603:10b6:a03:334::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB5957:EE_
X-MS-Office365-Filtering-Correlation-Id: 77a56ee8-d2be-43e8-e6ba-08dc01a8a37c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7c/8tFZ0G9j/miBhbnTL+1vY4fYiDh8kJPceINkmjGGN+oeEUoOGn8FEjnK0MiuqkdjTvzeVmOgUv3QNr5OgVZNMdk1/lBbocMnJhu0+trPpchRhxUKfgM2NrjlLt3dNLvUT57nFvI/69xAHdnCfhv74oUHNtTJI2tg+6u3g0ppVoxo6fqbHtFHgIiPkVApAhlcm9lg7NMXERtGxhLr727IUk9IPntaOtcZulekLWqaXP5le+wMKTSKCmZIM1k31OSrhwxXZOM7aoiH6/XvGmG1dGCULgw5Nkc35Q/XEPu6YqrdMGSJ4gBwGAsQuTCSQOOZFxtwKCLJQc1m6aguPmOeHSu9Pjjdglk7MszfjSnV0FhHNYKYBqiDdzZSkET7hixcc2gq4AAFGXPBdE8uzRxizzKvOrpcosjHaodjqkiDv/xis0/wozW+J+kVB/v3K7mtxFhgkwMLFdqkgXIOZ2NHabWti6euOfNgyqI26qBkCxVP9ZpSJUUwNjlCcenT46Xf0Sy1xNS2ZpaXqBzH4lqs15oxWKTN8Vfqic97N0CfPrqpuQiUB+RYG69ol0WVj20g2dkNbN2BEeSTb9tYAWtGbO0t5qLGb3wjIwalVCAao7Z4W9Xi0scMuHrsnf5Zu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(376002)(396003)(136003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(1076003)(6486002)(6666004)(5660300002)(26005)(6636002)(316002)(6512007)(6506007)(66476007)(66556008)(66946007)(83380400001)(478600001)(4326008)(8936002)(8676002)(6862004)(2906002)(41300700001)(86362001)(38100700002)(33656002)(30864003)(82960400001)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lp+2xayLOhSj1E1H75XLV5EVLKibpkCR5OXdZLuc2FoeJjDcl0Scxg4ZwP9h?=
 =?us-ascii?Q?2bLxUDjE84kcSnwDNTpbQE5J29juDkCsXUA6aZCI0IPaJqfqLkutzXlK8WCJ?=
 =?us-ascii?Q?gvcjDlKftb9puebykh2y3wpH02f2OVR5ZIpstE+LOX8Og6KUgYyPxpw50Y8m?=
 =?us-ascii?Q?mep+w94YkfosTJFE5C1qW5A18sTq7674Oxa8BsqdP5Rb6in42hW+EEvib7cI?=
 =?us-ascii?Q?7M26mg0wfcEF2dWJvvltkoSzyTX0xC+WbAnQaUthbPfBeBxneQ4Lbz3Uvl9H?=
 =?us-ascii?Q?SJpfSYJJWSaOhKMZTEDu9M1DuvDjBMMFEWbTD2PPKKN2uqYNuLxbzQFmQvFr?=
 =?us-ascii?Q?uY7HUcxeDX5Gthy21fPDqEjEJmkuT2OS9q6bTlM2A3JYh9iVqxT8xK4eJuAW?=
 =?us-ascii?Q?LmvW6Q0kUBM5LYlcmYnUObDNMVrWamr1x/0Yu8wTwrf0y2l+D+wes57RCIhH?=
 =?us-ascii?Q?AIi87XEz+P2hAaueGvmRo1Cpis07NYQSAUc1XXxHXHn7/nfJWoYM8FlrNdYU?=
 =?us-ascii?Q?AotAZYVt2Pi4PZmzZAEmc7NoJ9rr9ElV7tR8C2DhqOLqdMFFrwbwLwJOhJaw?=
 =?us-ascii?Q?8O9TOzOpc4+B0ycaINDALS6e8ba+KOX1XdaixcvvDKFV1yKX+CC82OjgCmP7?=
 =?us-ascii?Q?FBo+e9UqxJI9Vx4kd92RKCstSnG5t10UXt/1eoU3/tXZk4qKXxSDkQuygIos?=
 =?us-ascii?Q?7RUWjYi5fG5NbPR1Ufmgymk5ov23qUwCmqUeFyEgZO3f11CbPt+eLIYieMf6?=
 =?us-ascii?Q?Luy4LkZb4rk1oVlFGocn3+Aba5DF72BDEgMk3Eh3KvTrorQx0eZ746W2u4Em?=
 =?us-ascii?Q?0CcKkSnUpgNeVi77Hf/Ge5zl4wpj7bS3Zwm+zRCkHeNsRhBdicr5JeSDYqpD?=
 =?us-ascii?Q?SHybNFQUy3JD/DC/tdAmyNl4ChctOlZB22UFbliVTD8p2Cy/RAdoHfPGrH/F?=
 =?us-ascii?Q?t8+oAMW8CETUZfBhnO9QulW+Vc/QbUZsIdOKlzEeVDnhvqn4HLGP3XcBl+Ry?=
 =?us-ascii?Q?leoOrrUwhUn1um7dHxAOa8kPF2zmYPpiELhfov+hvJE5hJx+4k5gCvn5nqBJ?=
 =?us-ascii?Q?GrIiREsjIAqV1IKCytcG/Y1Y/owQHIRunXGOgC9SIp2iWVlkdxEaITyB6vSu?=
 =?us-ascii?Q?ix/g0/0CAGsxe1lYU66GiHJ7aJrai2oBndZxB+OOzVMigykfN2nlw4tkSQSN?=
 =?us-ascii?Q?HcmfdxpRXCIptdaY0wDP5hiOK6A3pNaZL5nCr2c7JBB3DISCWFrL4Qbg/OV6?=
 =?us-ascii?Q?tEqcqm1JAqpFXHBb1IhHFJAPNmXV6fpM1KKDatS5kTKKBm+tHHtmC3pMlDnN?=
 =?us-ascii?Q?6ipkoN41WUQT7s0AZUdDD5EHMhzdAMMuWoVgR7A+wcY9K4hFp63xjT2k/dMp?=
 =?us-ascii?Q?ygi+/vUroGYpmEkjEU+lRqAGrKb+vjZdNeybTY1eEG43VY6gFyXAMBxOmXRY?=
 =?us-ascii?Q?JfxbK72XstiZ22D1vgA7xzxjCgOaSI7Q977ONCVEk+VkgQ3kJvLdZkKLjKoF?=
 =?us-ascii?Q?hJPpEwhFNfRErztiOnlTSMTO4FPpPcLLnB0FYg/UbcCotttPY0nq5OUdZQNq?=
 =?us-ascii?Q?gGugmmXye98asQDtdfc+DO7wBU5uslA0k0fgkxlQlhT3UaJl4zvZOcZpYdLA?=
 =?us-ascii?Q?UA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77a56ee8-d2be-43e8-e6ba-08dc01a8a37c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 22:11:39.0594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OjUeDkvYUzefUlNgoxw2iEvE1Ms40UzpAqLNiuC9eaPleNIf7psmdaKMNq44x1QuHTDe6RlLe1A28XGg2zFUmY1udKv9jCo8/3U5DroiJT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5957
X-OriginatorOrg: intel.com
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

On Wed, Dec 20, 2023 at 12:22:33AM +0530, Haridhar Kalvala wrote:
> Correct the implementation trying to detect MTL PCH with
> the MTL fake PCH id.
> 
> On MTL, both the North Display (NDE) and South Display (SDE) functionality
> reside on the same die (the SoC die in this case), unlike many past
> platforms where the SDE was on a separate PCH die. The code is (badly)
> structured today in a way that assumes the SDE is always on the PCH for
> modern platforms, so on platforms where we don't actually need to identify
> the PCH to figure out how the SDE behaves (i.e., all DG1/2 GPUs as well as
> MTL and LNL),we've been assigning a "fake PCH" as a quickhack that allows
> us to avoid restructuring a bunch of the code.we've been assigning a
> "fake PCH" as a quick hack that allows us to avoid restructuring a bunch
> of the code.
> 
> Removed unused macros of LNL amd MTL as well.
> 
> v2: Reorder PCH_MTL conditional check (Matt Roper)
>     Reverting to PCH_MTL for PICA interrupt(Matt Roper)
> 
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c        |  3 +--
>  drivers/gpu/drm/i915/display/intel_cdclk.c       |  6 +++---
>  drivers/gpu/drm/i915/display/intel_display_irq.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c       |  5 +----
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  6 ++----
>  drivers/gpu/drm/i915/display/intel_pps.c         |  2 +-
>  drivers/gpu/drm/i915/soc/intel_pch.c             | 16 ++++++++--------
>  drivers/gpu/drm/i915/soc/intel_pch.h             |  6 +-----
>  9 files changed, 19 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 612d4cd9dacb..696ae59874a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -1465,7 +1465,7 @@ static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int
>  
>  	if (controller == 1 &&
>  	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>  		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>  
>  	return true;
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index aa169b0055e9..0e61e424802e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2204,8 +2204,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>  	if (IS_DGFX(i915))
>  		return vbt_pin;
>  
> -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL || HAS_PCH_MTP(i915) ||
> -	    IS_ALDERLAKE_P(i915)) {
> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
>  		ddc_pin_map = adlp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
>  	} else if (IS_ALDERLAKE_S(i915)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index c985ebb6831a..b251a71092dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3467,15 +3467,15 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>  {
>  	u32 freq;
>  
> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
> -		freq = dg1_rawclk(dev_priv);
> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
>  		/*
>  		 * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
>  		 * "RAWCLK_FREQ defaults to the values for 38.4 and does
>  		 * not need to be programmed."
>  		 */
>  		freq = 38400;
> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
> +		freq = dg1_rawclk(dev_priv);
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
>  		freq = cnp_rawclk(dev_priv);
>  	else if (HAS_PCH_SPLIT(dev_priv))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index a7d8f3fc98de..6964f4b95865 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -986,7 +986,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
>  	 * their flags both in the PICA and SDE IIR.
>  	 */
>  	if (*pch_iir & SDE_PICAINTERRUPT) {
> -		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
> +		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTL);
>  
>  		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
>  		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 40d7b6f3f489..854566ba5414 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -155,7 +155,7 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>  	const struct gmbus_pin *pins;
>  	size_t size;
>  
> -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL) {
>  		pins = gmbus_pins_mtp;
>  		size = ARRAY_SIZE(gmbus_pins_mtp);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
> @@ -164,9 +164,6 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>  		pins = gmbus_pins_dg1;
>  		size = ARRAY_SIZE(gmbus_pins_dg1);
> -	} else if (INTEL_PCH_TYPE(i915) >= PCH_MTP) {
> -		pins = gmbus_pins_mtp;
> -		size = ARRAY_SIZE(gmbus_pins_mtp);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
>  		pins = gmbus_pins_icp;
>  		size = ARRAY_SIZE(gmbus_pins_icp);
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 04f62f27ad74..76076509f771 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -163,12 +163,10 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>  		return;
>  
> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
> +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
>  		hpd->pch_hpd = hpd_mtp;
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>  		hpd->pch_hpd = hpd_sde_dg1;
> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> -		hpd->pch_hpd = hpd_mtp;
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  		hpd->pch_hpd = hpd_icp;
>  	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
> @@ -1139,7 +1137,7 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
>  
>  	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
>  		xe2lpd_sde_hpd_irq_setup(i915);
> -	else if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
> +	else if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
>  		mtp_hpd_irq_setup(i915);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index a8fa3a20990e..2d65a538f83e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -366,7 +366,7 @@ static bool intel_pps_is_valid(struct intel_dp *intel_dp)
>  
>  	if (intel_dp->pps.pps_idx == 1 &&
>  	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>  		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>  
>  	return true;
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
> index 240beafb38ed..3cad6dac06b0 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -140,11 +140,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
>  			    !IS_ALDERLAKE_P(dev_priv));
>  		return PCH_ADP;
> -	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
> -	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:
> -		drm_dbg_kms(&dev_priv->drm, "Found Meteor Lake PCH\n");
> -		drm_WARN_ON(&dev_priv->drm, !IS_METEORLAKE(dev_priv));
> -		return PCH_MTP;
>  	default:
>  		return PCH_NONE;
>  	}
> @@ -173,9 +168,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
>  	 * make an educated guess as to which PCH is really there.
>  	 */
>  
> -	if (IS_METEORLAKE(dev_priv))
> -		id = INTEL_PCH_MTP_DEVICE_ID_TYPE;
> -	else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
> +	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
>  		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
>  	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
> @@ -225,6 +218,13 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >= 20) {
>  		dev_priv->pch_type = PCH_LNL;
>  		return;
> +	} else if (IS_METEORLAKE(dev_priv)) {
> +		/*
> +		 * Both north display and south display are on the SoC die.
> +		 * The real PCH is uninvolved in display.
> +		 */
> +		dev_priv->pch_type = PCH_MTL;
> +		return;
>  	} else if (IS_DG2(dev_priv)) {
>  		dev_priv->pch_type = PCH_DG2;
>  		return;
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
> index 1b03ea60a7a8..89e89ede265d 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
> @@ -25,11 +25,11 @@ enum intel_pch {
>  	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
>  	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
>  	PCH_ADP,	/* Alder Lake PCH */
> -	PCH_MTP,	/* Meteor Lake PCH */
>  
>  	/* Fake PCHs, functionality handled on the same PCI dev */
>  	PCH_DG1 = 1024,
>  	PCH_DG2,
> +	PCH_MTL,
>  	PCH_LNL,
>  };
>  
> @@ -59,16 +59,12 @@ enum intel_pch {
>  #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
>  #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
>  #define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
> -#define INTEL_PCH_MTP_DEVICE_ID_TYPE		0x7E00
> -#define INTEL_PCH_MTP2_DEVICE_ID_TYPE		0xAE00
>  #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
>  #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
>  #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
>  
>  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
> -#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
> -#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
>  #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
>  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
>  #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
