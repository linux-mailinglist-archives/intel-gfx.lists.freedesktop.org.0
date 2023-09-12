Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A0779D454
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 17:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 868A710E42C;
	Tue, 12 Sep 2023 15:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06B7210E42C;
 Tue, 12 Sep 2023 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694531194; x=1726067194;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HhCi4A8Xu/LC1zVGfUtYYtONEBrlXe2QWKO4x+fEDSI=;
 b=dGGUWEnldzWd6aXPeWtMcseq3S+lvJ9YoDMwHaQVyawew0zQRlGGGDUj
 1dbCylHriFQvxLnO90FSTOKLnsTiBE7TIoQ9+aBUfwX8jD7zsW+nYqI7R
 FmXKLROEbcM2MDpmBti8BNlhRzaHJT3Q+0m0IJViLpXki6jYvNgDCuPcN
 Q5WulNyq2guLLql2imYKYGfVirCXlwXbBQlXWPBGRUX8moJ05baYQw4uj
 j8HqXidScONKkQ+q2WNn6K/dvDHn4eL10HeRoMME2ZoImvJhWQa9Hp9lo
 pnPR+UUUaklCkEn4o7UyOH6Q4tlQH16ignX8oWmunNLHZZUI7pM/ey5Mk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="381104458"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="381104458"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 08:05:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="1074579307"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="1074579307"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 08:05:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:05:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 08:05:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 08:05:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fw64XzOl3JyG3T31DaX9SFlbbltzD1JhSlc/TO/HsEmN+WUPqU+NcOdVrl55ggWRpDhUQVx4cngSOrYcGWrEnIGSH6uYwSZj+TrZ5B8EnC3ub7sPhlIpMn6x6DA/ZfGhzfxlp0bN/GYhKdPvGovn1FV+7OqFaGjO6zwpnGfDuKrAucwmDyrjl1IHA/zo9RLafZgHM1AIwhjvTQ6uVHDj9RPUIg2Z93qudRAQ6W6Aq17OIGOA+GKlJoA24jQ6EQwPVu5CYtlI5JCsPdt38bnRIeZecYagN+lsxi/BVUh9+JSB0ta9xlymyMS6aBGpblYhtI5NIulvXdcLFpe5ymRF+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+dvtU01tw9heH80tzsGYtoZNeWTrrs68b7qxYOSMTeY=;
 b=VD8Ge9dTwrdQyc7XwTMFZfLORnL8oz+KSp2sZhq+DvBjBM1CISkiDAHcV/EGBGrv4Xdt8iHNs5DyrLb6yxKyHlfF+BFXHWX2aN/yCaYFK3NeTt03I5Yv50fsqd+tGJjnRbyN5g1B5OwmlVeBi7gSRFuBW7s/tiulDtLgHWO9z2I4ZgJ7d3PeS6vmnIRU5+f8gPls4SHG+UM5l5pZgKwsH6Hhqz55oNLlES/ePO1HvbSgiBXX7auex2vEwhCepo45u2pxNuz0EGlwzIfcVQTuFOS3aiMjchF2oWq/UuWwiJSoX+d9dcLZelHOolEtKJCMeTwj/ncNVIqjSaesyhgM6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CYXPR11MB8691.namprd11.prod.outlook.com (2603:10b6:930:d5::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.31; Tue, 12 Sep 2023 15:05:55 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 15:05:55 +0000
Date: Tue, 12 Sep 2023 08:05:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230912150551.GF2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-25-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912044837.1672060-25-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0203.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::28) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CYXPR11MB8691:EE_
X-MS-Office365-Filtering-Correlation-Id: 93710c40-7047-477c-288a-08dbb3a1c333
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OHYcJFmg1Ftk7Z3rWp6ehuAUriobMVGIaRKJG3vKCiFVYJ5IKEvhfFrmFaFtOnSBmLpYclW8ibpC+ty31ZcSMjZu5dQ0649YHTYwgJcI02Soe677rPgTqcBE3A3KcfZD+YXNIxOA+UyYrlNfjPE3cQYs8qboVWpOaW/+9HdEExWKGquJmKIPhAy3eKDF5su4L3KrykZy7rO3pEDCuTFccfnAqRTGF6xnVxE8twXCUnX8glP72RM/hMMtrit+OtVKosbz0XQFd1JtDXg4/rYr6IPZ1BT4Xo0qIg5NUwsclUOfN+KibipJo81rAarKzeR/dlkb/ntIbycqEVb/rg3CQfQoysThwqhBCVWqvFyR/fpsy4/oq9tr8MKUBn3iPAYJkobE+UrENIMv4JUb7wohF/mjk8/IkzusSKWTeP0LVxWyrV1zUm8bxSstrRlJhsWA/ti2w1zJDm7JSTJpD2hag+YFgQYn5lBNrKZWD3xSmkXcfQTPWtZ30dFOS7+h1PmdCAhfJI/DSPuxaLkmTZlZS7dM/jnddjI/VHY2ICqw0CGLkbLEtxU4SxzwqHmorCOL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(396003)(376002)(346002)(39860400002)(186009)(1800799009)(451199024)(6486002)(6506007)(6512007)(6666004)(83380400001)(33656002)(86362001)(82960400001)(38100700002)(1076003)(26005)(66556008)(66476007)(6636002)(316002)(41300700001)(66946007)(2906002)(4326008)(450100002)(6862004)(8676002)(8936002)(5660300002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wgeLbr3i5XkGa5VuvEHvyDNVirhS0NbpCrtFXDV07LyyOTMVv+nZAcn2q2hy?=
 =?us-ascii?Q?7lQjIzBUJ+lqH5l4SG7ww+BQSLHpAX4ZyXCnwy4lhJ78rFTuaam8T9vSTe2k?=
 =?us-ascii?Q?F02n//Q/UNL+z7wlQm8i99gsxr3If52XCm+QarjI+PS5wp5dZIBmlTHiF36h?=
 =?us-ascii?Q?fTG5pMNf3g35HDWEHVPp3cqdKxPiKwI0NpRnkJLuzTabGt2u3Wrh3aTMjbMC?=
 =?us-ascii?Q?hjWccmrt25kGFD7bpwuZufzjXPUnvyfjeLJsby0D8ncihm6cbRVOeALjhkVR?=
 =?us-ascii?Q?sCcXKtkCkGVMF1fjDbrko6Pph6dAjIhTGX9RGEJaJesrte27vLm7rSox6lYB?=
 =?us-ascii?Q?tAxynOgBNOJZe6CI/4xii84xd9PUL0n3wdFlN+mdkfttQO5ohazR3YfPY0Zk?=
 =?us-ascii?Q?dduchGQ7gsQ+wHkmwVOUKR0XDwYymf+dg/yL+dfE2qgE3fK+dn3+gaiBREOg?=
 =?us-ascii?Q?bB9q/LsTMRpzkiNNkCwkfBBm4q53O/0SoWdd5aoJ2hp8ibLi03ej+77ZwrQk?=
 =?us-ascii?Q?ou2p+Pku0hrdbXMHs6qx9XZBZI9hazCDqkf2s2xIiNm4EIT9G9InNKaXm7oK?=
 =?us-ascii?Q?pl3zGzbHOs+9vgvEB3OESdHaGOMD4sQQAI6NXMpPehnZqP4OUFRNFve8dWA+?=
 =?us-ascii?Q?tZIWJi3x0ASRVq+CeOSL6aXzFPVWhmbf3VjE40rDOk8jPYecj5urbFUoW937?=
 =?us-ascii?Q?Dhz2uoorN9VBfOFFEJwNVgF/SaHc/sirTYCTqjyjwKtEF+CSstsu/ZYNDVZz?=
 =?us-ascii?Q?/YmIFWbpWboGUYkoFNPveiTLJ9fa7LtypsElZxz607qszKZyPHDLPxWFYZ4n?=
 =?us-ascii?Q?czE6idljSHyodhRkEJPC0sRPgBFNb730jvNLbgATx3t3mU1tQcYX16+3N22D?=
 =?us-ascii?Q?0kfs8+0Feq9b9zYROVyYfUpwDyO7b+Inf1i6WJARQ0h4p/FKfXJxuGWkha4L?=
 =?us-ascii?Q?QtDWdPqZQZ6FPLY5pTyZm0pz2nvPtJVPHJD8nXrNjLFj95tQMoY3x1meLVT5?=
 =?us-ascii?Q?lTU6MnqopsPhAoEUdk2VRiXILGCVyRCW9+epiKhz+SrFOHDktKPOCT7dWyRu?=
 =?us-ascii?Q?V6axOcZPb9/5pMX8bCtcXX3j5taNhDR1LJ3KyE7Qfxs+9DYgFIihqZdCxAlD?=
 =?us-ascii?Q?hLMPFSp9V+y/JUBaJc1p30Neq9ei3pGN4ZHE4WJP3VHIT60D+mUGBiZg3tLm?=
 =?us-ascii?Q?kIQ7+WdAm0ExYZZtAXUR5I4kVjebxPkPRlEmyQe03PVtA1O27ncbk+Xfj/dd?=
 =?us-ascii?Q?Aow/n2hOh1bKsrBtA5mDrhz7WMy1cqClErtJ4tnm20CyQp/PmaOr8tJIRZ/k?=
 =?us-ascii?Q?ihV3hE5D3SC5KmnU3OWdWVsXJ/bzeB2vLH7/RUkuoJg3xvQkZ4P2B2Bir0yV?=
 =?us-ascii?Q?URBGTSAL/iJxGFcnyw3tX0GTiOwwgmMd0rGicVvJQuRqSaKMvSC4WjdRQsuq?=
 =?us-ascii?Q?hP+IUgoRmwyYwfEIj1+rPRGjR99ExZ3ErQJ5J1laYSG3i3VHBwV5wsMrYFCp?=
 =?us-ascii?Q?5WNRYETc7sb/KD5RWhjgAoo9ImQwkOs5PsCuFioxz8cyBOf+6jD/oj52E4RZ?=
 =?us-ascii?Q?O0bD184tBCxAWKiL0ztcKJik13VrDUSZnILDnmgJYuw4CiD0/+iwk5CMYwQw?=
 =?us-ascii?Q?Ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93710c40-7047-477c-288a-08dbb3a1c333
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 15:05:55.1024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OMIGCEtLpm/mONP33nII41GpRInQCCR02K30E7IdvziNzgjpQAoIlWlshyHT49oHHPIovhVegjisdIBTeHfVzAtwZ18NaaCVpb0I8IBJ8ZQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 24/29] drm/i915/lnl: Add CDCLK table
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 11, 2023 at 09:48:32PM -0700, Lucas De Marchi wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Add a new CDCLK table for Lunar Lake.
> 
> v2:
>   - Remove mdclk from the table as it's not needed (Matt Roper)
>   - Update waveform values to the latest from spec (Matt Roper)
>   - Rename functions and calculation to match by pixel rate (Lucas)
> v3: Keep only the table: as far as intel_pixel_rate_to_cdclk()
>     is concerned, the minimum cdclk should still be half the pixel
>     rate on Xe2 (bspec 68858:
>     "Pipe maximum pixel rate = 2 * CDCLK frequency * Pipe Ratio")
>     (Matt Roper)
> 
> Bspec: 68861, 68858
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 30 +++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 656ff50def39..4cde78db83a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1382,6 +1382,31 @@ static const struct intel_cdclk_vals mtl_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> +	{ .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> +	{}
> +};
> +
>  static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
>  {
>  	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
> @@ -3591,7 +3616,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
>   */
>  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  {
> -	if (DISPLAY_VER(dev_priv) >= 14) {
> +	if (DISPLAY_VER(dev_priv) >= 20) {
> +		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
> +		dev_priv->display.cdclk.table = lnl_cdclk_table;
> +	} else if (DISPLAY_VER(dev_priv) >= 14) {
>  		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
>  		dev_priv->display.cdclk.table = mtl_cdclk_table;
>  	} else if (IS_DG2(dev_priv)) {
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
