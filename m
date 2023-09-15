Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C206F7A2768
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 21:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2ADA10E66F;
	Fri, 15 Sep 2023 19:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF71C10E085;
 Fri, 15 Sep 2023 19:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694807452; x=1726343452;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eX4EaUKkeC3cP/CdL7SkwiZ37vZNV7HlQ9jPxBeyHCI=;
 b=GCxtHbqRun7qzMd03nyzksXirbzSR3NgJjsMnHiDNhPdaoIIwirg3glB
 bZ2u4Kl+Ccdz+8f+zjOvzxMUvXCnftmwpRZtaAhvA/v8L7zlAXnBjDpm5
 bN41/sjwuc7sR5DabZtrkXbD9YKNGE0UPVLkFp519RzoIerOY2eVsceMe
 iEpUy7Ild5038uGs6ylUiZLfYau/F/6Vd5i5WGnBE6+6kaRVKxxmMZf3j
 lRPbzQ6fzOzUDVwo+VxE8WMv7fcOh3UW/9ke6ezcuRsrFth1qMlschugs
 NEy6jqc9WHFFuKUQA8dM1cLmXq7MjaRwTHb2zzYAznxsoj6nWAksaYcC9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="369649571"
X-IronPort-AV: E=Sophos;i="6.02,150,1688454000"; d="scan'208";a="369649571"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 12:50:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="694828424"
X-IronPort-AV: E=Sophos;i="6.02,150,1688454000"; d="scan'208";a="694828424"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 12:50:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 12:50:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 12:50:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 12:50:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 12:50:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z3NzwPSrg723d8JuLrU31dnClgXsRLQ7XN53XlKPSatmLwJkBco5bQg+wC5eAIr9ms3duf3Ffc2wIISZ3V74vJ0fbKKz1/XyNp8ZpeGFPJy0RK7HlzA27h63N76Sbbon7MWi/DitQnBdUYlGjF1OXgkcpcSJvya03u0cDX9koA2Tw/lobYyBGQciwoi3Ld/fm0SPYpMVcS334UYIORU/tEHR1uj9r4moePbEzDfU01ykp3Qx8WPdS3Iv5JFa521ah9RRZgFHHAs+ksNI6U6ACbWWOGeBLaRHbazlsXWV+AoihHivtWKSnXvsMf/oKupDlbuIiYjHUx9bta+z36ztVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6wr099vytTUbaytkM2ni/a0g7Qj/9to8MMhpyX6N/pQ=;
 b=VQLcv8SREk5gjpBNsNPQ9IJWZ7an+Jhnc4H/Pi/2Z3acGfYrengkFnH+OsvkT7tZwnYUYlqTD8t582WN/Ek8nwHLf3jnb7WqmKYN2OciFcu/eqz5HSK6sYKQclc1Dr34cH3D9sY90kGgNlE7ErEKLwTxI4Oq1GhrDH9vB7nSHrcelIOe1rtHnFTVyRTBN6vYIh7lPjOxMMd2/2gSWujR02GI+Tva5am1gWnQpRuo79JAIu+5v2joZCTsY9gcKou1pJtzN8IuBOnBJ+UVA53koMIVAth27XgBa7cIRF6yDpmRcgzkPQLYPUGceHVQ5Qluoz8nDmi61ABa6i7eW0I6Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB7985.namprd11.prod.outlook.com (2603:10b6:510:240::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.21; Fri, 15 Sep
 2023 19:50:48 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 19:50:46 +0000
Date: Fri, 15 Sep 2023 12:50:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230915195041.GG2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
 <20230915174651.1928176-11-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230915174651.1928176-11-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0119.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB7985:EE_
X-MS-Office365-Filtering-Correlation-Id: aae89620-7bae-48f6-3cf1-08dbb6250db1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U/5ud+dZ2Br5z5wftK8N3FFZZaDoqhPhgKYPTK06VRed/Dfmn1tOFc+f9AGEhRWxBSCfCsjap3WENcjr3UZ3YLknbPnuoSklb7jXU9aXCdJQHgu/5QqzurVLpOpMX3MnCdPBdwHb5/yuG+ezEo7N00dcgNf+THwtpNC0NhteG7qcUhlDjfA2bEERltgCdJft1sVtqrkbQTvN5TjvHUFg43prT1aqc2MLNcTYQk6r/vcpEqX+LAnc1CWIuk8SIirZbSE4nHBkEr0+mnEVEAWcGZ3yU+FDZYHs/FeLgxxJaVaZTvfhva/Ino6gly//GxxUlrz6tVBQ7Ojgx2sz8rjY7u2ufdZ7+RD4OQjxltQIfJ60TIedMV/xVbgpxpqA5RZS6RC95daxdcTNvHQUKFFXQj/bmgmBsCheLLPWCmNKdeGtiJI6YbPC176qF2D4MaU/bkbHOxBcIqCzuhmXDyWLXhnTlcbAfNrdbl1FwyAjzrelJNeHcaUInmUtxKtFRuEXb0jzA9rEvVeM+j2Le7U7/61KMg40GsLm/gzulHIRdCyZx9gkYAaiOMoKK99/pDuu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(136003)(366004)(396003)(186009)(1800799009)(451199024)(8676002)(450100002)(4326008)(8936002)(6862004)(5660300002)(6636002)(316002)(41300700001)(66556008)(66476007)(66946007)(54906003)(82960400001)(83380400001)(38100700002)(33656002)(6512007)(86362001)(1076003)(26005)(2906002)(478600001)(6666004)(6506007)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FsvdRLqDK/XZ/QI/ntPqEP3O2JtFw/MrkGgmcXgNpJHjeWP7Y9ijLRoY25vl?=
 =?us-ascii?Q?1+RdyB4SaSGdWfQBOXTxwnn2TMXLdhbbMY1jXDRa+digj18Ee5Nw8RPX6z8Y?=
 =?us-ascii?Q?1QQUocOVJ/lv7WXL16wodB4mAAD/y1Sc3aklRNW9zwT7wcbtzuxzF4nz1D2L?=
 =?us-ascii?Q?voN9hoAtVVSoJtXQm002I5bS6cJ3Yoiq/92tj+jPvfz7LW49uKDWBrCf1p8N?=
 =?us-ascii?Q?ZutH8FhXLL6TV0djF3kxqsox3RTO5njRSepTc1ligIntv4AduW6RN0SFCM4/?=
 =?us-ascii?Q?pzrXYTQ1/04rAWd0LvJ+yzNfoNd2u2ZteVV+JuJm47wImqiIiaz5+MrQ2jrI?=
 =?us-ascii?Q?WfKklUdn+3xvNujalX3yjTRSqHR88juj0lISaPUoZ0lUs9qe5/vMI6PGuijd?=
 =?us-ascii?Q?5qWH1lrkRYbnVaCm7KpjWp0D/qPUgA8+dJQB0LJKb0VzeT9reyNlq2z1wXXB?=
 =?us-ascii?Q?DbgVrJBzfVQzwnTlGICCTNHVA/MhTVWOjv8s7XaogAskg7nbPUJSjnPhcdIf?=
 =?us-ascii?Q?ew43W5Xd3kDn+dhVLlWB1SJCIt4EevH+MIGiQzOq1VBW6m4CCbm1/pqa+4es?=
 =?us-ascii?Q?xtZnrz7c9+ZPlgdjW6axFsLz9cPihV2htQfu7VZNdnkB+Dfxej7UHcQg2ESa?=
 =?us-ascii?Q?9irSFqsLIG31kBCUBHPQ8OG46npIYl3x8LY0Q/20k1LPd5/M9E4yStAURKhR?=
 =?us-ascii?Q?50fhHt5yDj3UvpxE66f5TkIqWanDa1DsR3/Wg675itCziS2UlqALtMp4d4RM?=
 =?us-ascii?Q?Z+72UIfRrMH42kqVtqralD+FLZAB2d64/KYbwaVC0S4F4E+prZttHX4FTO/M?=
 =?us-ascii?Q?HIVNcc7IORynEY5XBU0ZrzLTjeO/HrZmgyBvaeYmAc7P4zEkYmNvZCS5OOkK?=
 =?us-ascii?Q?ubL/1pvTsjhaWBzASNZ7W9b9BVKOeuYnKwppJFaL5hqkIh/jbAl9BK7IXRuK?=
 =?us-ascii?Q?4qU/kcX+t1ZfAV/my367Bo82cJCjIagasqeASwsgI2IIimhyVwDnWem0aKA+?=
 =?us-ascii?Q?IEf7mokXWESotgMHkiz1DkS1k61WUoxZDT4g0oj/DwVmdsrv+TT4DF5DDWXC?=
 =?us-ascii?Q?IfisMvrCLFphCmHWQTZoINx6TZ82ieviZv6H6DTtmiYmhROkkCV+sFSZLs+y?=
 =?us-ascii?Q?Yrow2GX48YVcEcIcLTgH9b/SJrb1u84ZHViZdqyjQfDqDoS93eghaEdmKbQi?=
 =?us-ascii?Q?I0AxUDtTqk0+pv9ATqozWl3AukH83PY9H5M5otUdPkwa8v8INd9kzlsnLavw?=
 =?us-ascii?Q?btzG0nVifjQKED9nEM791xfHgV5mgW5pGlO9D2wYdSSUbggrOhiZyqrOARSY?=
 =?us-ascii?Q?HaX/2qeMVc8F0f1xZYfsBV7CWda/LjrXhs7ZGAu7Y6hBKqeoGphce2rWYL6I?=
 =?us-ascii?Q?TF72hYXn/1uMDUxPQd5jBcL/yUMqcqkQrtkUS1hRYswAhyEW+wKicCD3Migl?=
 =?us-ascii?Q?DtEk45zSHoiFnmDcGm4YU9cYrNzDxTDAxPD+b/P7FUPfMbnYahW04NH+c7c5?=
 =?us-ascii?Q?hfA1Yime1x58MJKNN0kaQmaiHHzvEu3ErkKgGXxnat6cg7lWUUbana9vY7pd?=
 =?us-ascii?Q?Gihknab6qE4y3S6e1b9UBbL6EcIM9r593q8ebkM7R4bgStUzbMiH8zmdm12E?=
 =?us-ascii?Q?+Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aae89620-7bae-48f6-3cf1-08dbb6250db1
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 19:50:46.4962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mom24tvcKwBXlzEEDmu0I2jg31hR6C7uRDA54+/pq/LfgA2PKeSZHyNSC8GjAli6rZJCrS2d6yLoBz+EO3ZZgvCvwHIirp0OnFoglHrL/Y4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7985
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4 10/30] drm/i915/display:
 Consolidate saved port bits in intel_digital_port
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

On Fri, Sep 15, 2023 at 10:46:31AM -0700, Lucas De Marchi wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> We use multiple variables for HDMI and DisplayPort to store the value of
> DDI_BUF_CTL register (now called DDI_CTL_DE in the spec). Consolidate it
> to just one in struct intel_digital_port. This is a preparation step for
> future changes in D2D enable/disable sequence for xe2lpd that need to
> save some additional bits.
> 
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 36 +++++++++++-------------
>  drivers/gpu/drm/i915/display/intel_dp.c  |  2 +-
>  2 files changed, 18 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4668de45d6fe..29c9386659ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -325,26 +325,25 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  
>  	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
> -	intel_dp->DP = dig_port->saved_port_bits |
> +	dig_port->saved_port_bits |=

Before this patch, saved_port_bits was a copy of DDI_BUF_PORT_REVERSAL
and DDI_A_4_LANES, either based on a value we readout from hardware at
startup, or based on VBT settings.  So it was a value of some
fundamental settings that we "saved" once at startup time and could then
just re-use thereafter.

If we're going to start saving per-modeset information (such as lane
count and link rate), then that's a pretty fundamental change to the
purpose of this field, and "saved_port_bits" doesn't really feel like an
appropriate name anymore.  We should probably rename it and add some
documentation on the field explaining exactly what its purpose is and
how/when it gets updated.

>  		DDI_PORT_WIDTH(crtc_state->lane_count) |
>  		DDI_BUF_TRANS_SELECT(0);
>  
>  	if (DISPLAY_VER(i915) >= 14) {
>  		if (intel_dp_is_uhbr(crtc_state))
> -			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
> +			dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_40BIT;
>  		else
> -			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
> +			dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_10BIT;
>  	}
>  
>  	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> -		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
> +		dig_port->saved_port_bits |= ddi_buf_phy_link_rate(crtc_state->port_clock);
>  		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
> -			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> +			dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  	}
>  }
>  
> @@ -1450,7 +1449,7 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	int level = intel_ddi_level(encoder, crtc_state, 0);
>  	enum port port = encoder->port;
>  	u32 signal_levels;
> @@ -1467,10 +1466,10 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
>  	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
>  		    signal_levels);
>  
> -	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
> -	intel_dp->DP |= signal_levels;
> +	dig_port->saved_port_bits &= ~DDI_BUF_EMP_MASK;
> +	dig_port->saved_port_bits |= signal_levels;
>  
> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>  }
>  
> @@ -3145,7 +3144,6 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	struct drm_connector *connector = conn_state->connector;
>  	enum port port = encoder->port;
>  	enum phy phy = intel_port_to_phy(dev_priv, port);
> -	u32 buf_ctl;
>  
>  	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
>  					       crtc_state->hdmi_high_tmds_clock_ratio,
> @@ -3211,7 +3209,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	 * is filled with lane count, already set in the crtc_state.
>  	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
>  	 */
> -	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
> +	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
>  	if (DISPLAY_VER(dev_priv) >= 14) {
>  		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
>  		u32 port_buf = 0;
> @@ -3224,13 +3222,13 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
>  			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
>  
> -		buf_ctl |= DDI_PORT_WIDTH(lane_count);
> +		dig_port->saved_port_bits |= DDI_PORT_WIDTH(lane_count);
>  	} else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
>  		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
> -		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> +		dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  	}
>  
> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
> +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
>  
>  	intel_wait_ddi_buf_active(dev_priv, port);
>  
> @@ -3448,8 +3446,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  	mtl_port_buf_ctl_program(encoder, crtc_state);
>  
>  	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
> -	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> +	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
> +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>  
>  	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
> @@ -3499,8 +3497,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  	    (intel_tc_port_in_dp_alt_mode(dig_port) || intel_tc_port_in_legacy_mode(dig_port)))
>  		adlp_tbt_to_dp_alt_switch_wa(encoder);
>  
> -	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> +	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
> +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>  
>  	intel_wait_ddi_buf_active(dev_priv, port);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 189c5737e63a..2346cd32f5a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6025,7 +6025,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	intel_dp->pps.active_pipe = INVALID_PIPE;
>  
>  	/* Preserve the current hw state. */
> -	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
> +	dig_port->saved_port_bits = intel_de_read(dev_priv, intel_dp->output_reg);

Isn't this going to potentially clobber the lane reversal setting we
determined from the VBT near the beginning of intel_ddi_init()?


Matt

>  	intel_dp->attached_connector = intel_connector;
>  
>  	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
