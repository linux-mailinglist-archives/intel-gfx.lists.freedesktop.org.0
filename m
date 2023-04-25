Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 135F56EE816
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 21:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81C0310E086;
	Tue, 25 Apr 2023 19:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2965C10E086
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 19:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682450011; x=1713986011;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=779UDJap9k2KOzIR5qfc2UnW6p4kTqv27m6ubYVaRDM=;
 b=APJHc/cDQDv6b7zC55O78W3J0KysYFlP+UhbLWiZDuxkVQvMzvgf5/t+
 DCpHZqlu4KPuKAc/ON/g/oCVr1qduSr0zBlJ+bwaDc5XnVE0nTHuWnmLe
 MDDgn/KEDd7LJxQrhy/RMRsm/arLwrhTd01ROlNlOGuZ9J2Maez/os4Yn
 h2ptpITqXZaB1P+UXYKlT7nheNlo9l5Wmzkrt/uZVWOvUFFzN9BoXU8VM
 OW83EIrdAT8nqONzOLXI0ORL5RAPDz6XcFaC9NblEROPxrPg3FYb7zSth
 Nwi0Yea81Ac5MaErdt7nl5FzCOKeD0OxPbyOH/AR++lQrrMHesevdDHpO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="412165448"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="412165448"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 12:09:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="758268196"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="758268196"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 25 Apr 2023 12:09:41 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 12:09:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 12:09:41 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 12:09:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OQtlo4Gy4StVOto73En9ILMzmaNw+Qt6rimnsXcRYX5GjnYpLKCum+oDMnlddu9Z+K8a8ieYG3129675kCDlQmt8eXCaH4Ye1WlelXx4KWpMFsyoxFodXhDJsywRHSikixSVI9gw+xO40E9BmngHhRnmNzkJyT5Rxnkm5u68oexpFcXaOUrZbPmxIURGXKEUlImDoy1FLrv0+UPKoPQzQ5w4kaniFWVifqIJyW7/5ZuQgxgvqURmwYj7kFufWcgeEIE7AOnKTdSVLiZwRyM9uPyHwAUzUI/51iLwk/ZifwLWz/bSccZWkUNkhe7ehTafxu88nGT0s/7BgxbsR8KCww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wxnxUTlaIapdb5qT+8z2sGDMTEp0X7EvjBxMCC2xdwo=;
 b=R7Cc+BLMTaGXuOJ5Vfbyq9qaGsSnRvcWHRjUtANLSeEQkNNp8foWQ7eTPgX596r5MHvKm/RKPeeycweldgV9UctcOGCmVeB8uvEvCdsXsl8oJKfwvjKBL16Yo3xX+100qzMgReaLB3MYH4D8c/H19cALoQMO8VmrEmQBje2GJWabUZ1QngDwBHhUoMLryOEyzcj5JhitfsEHh15gFD6rn0aa5EW34NKA3y1Zx7ZTZKp6f6AalcNgWwH8PQA0+RYeA7E4MQS0dNGXQyXn29XAis11/Cqfa6L0fv2DfRRWsItOWOuChjPTTsm/FAEFKvAi5MoKLvEKHoxNoTon9vinJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MN6PR11MB8147.namprd11.prod.outlook.com (2603:10b6:208:46f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.34; Tue, 25 Apr
 2023 19:09:39 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6319.033; Tue, 25 Apr 2023
 19:09:39 +0000
Date: Tue, 25 Apr 2023 12:08:33 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEglMWTBPmtoqar6@invictus>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-5-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-5-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR05CA0101.namprd05.prod.outlook.com
 (2603:10b6:a03:334::16) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|MN6PR11MB8147:EE_
X-MS-Office365-Filtering-Correlation-Id: 0629b8c5-6e49-478d-30a5-08db45c09de4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i6zbdbRBS49dlhxYOi7W1YWI/zXAy6wyb+HpSJw3a+w1HaNmPLnouK7k5qiqG9wR1R5KCWh8Jy/THcX8NWHIdZiLuAhlBWMO4Jc1FctsoDtU4Ljw6lFzj0cIng6wHulSpRnGQ0CX/HzuUPdUxMxaYaseioLWDE3ageK+mul1RuMBq91QrV5g8CgZlp4D99wPkLBoKzrDaIFt76y0Z6pyJlBzDpdJP0C1U9xRcqt6PLh396J74AvkDIyhsdYcy0ty8tzUcxGXn/yqjjdRnK9fqiaZM9BuhF5duDLm5lRc9q8zRdsrcs0AarfJby/ZrqMM9X+SYn52Wgw0mnlyaTo5sr5RjRG/xWV5SymhYE3POy8k+yFvbwpGWSDprZZiup6v61XQfCDJqKcr6RMfg4wepK3mNShW4sEvWH2QaUR7ncjY1RDwKh0M5TAfFgI2aP/FsH7jdiyWsJpq+eu0Ri+fV9Eh4YHWNkLDHLEB/NmoCNjJQCpJj4bnjel6kD6C94bDGzAvu7kQin4tiFus1UwY4Bn707O7/+fZRgupI2FjfussshVKhf0fYG+k0lmYp+jb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(366004)(376002)(136003)(396003)(346002)(451199021)(478600001)(83380400001)(6512007)(26005)(9686003)(6506007)(66556008)(6666004)(6486002)(6636002)(66946007)(186003)(41300700001)(38100700002)(5660300002)(44832011)(82960400001)(316002)(4326008)(86362001)(66476007)(2906002)(8676002)(6862004)(8936002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dRq+uPGmcKsd7IH1vQSBBDl8i1r+28THD2eiNoFTLIsgPV0OmkYRamPB+1W7?=
 =?us-ascii?Q?ixpqULdBPL4PBQAkaq5xJBkGjPbMi+7bYjQQLlMjbd5Bk8zk3zWYdMryvm9m?=
 =?us-ascii?Q?JaMAK4wiQCkQPcm5GceEHcz88VSBeQrTIiXHmYtoJkzpYMP84WtvPnsn81u7?=
 =?us-ascii?Q?E5UkEHwRyseMi+eQBxrN0y/gQjLfGFwIs0amluIpuM9dKuiv0HwHkKflVv+j?=
 =?us-ascii?Q?kXyeYvx6HS0NhOymXlZhHUWb218+mHTJxNyLDKHbyZ+k8KIDq1D5aBhiVmyD?=
 =?us-ascii?Q?eWaHSUTUYdqxYBo/6Zr8TZg6gW+6o94P13vafosR+WCmtbbIGpchJ9VRSXYh?=
 =?us-ascii?Q?U8iEcCF54A7BDL7i0SVieicnxoa7ym9ZcZQELT4aATBY5vletzxTX7IHK2/r?=
 =?us-ascii?Q?aH/txu/31XqppoTqbF0TtUSfaObgKzrC+zMoVKJQ+ZX4F5x36CpSMJ1lW3/x?=
 =?us-ascii?Q?lNoChGiJoIABzIEqlQ8kS5Om3qRmfdj3eV6TSSRHKlms3Gg5bRYQAIBmK2qz?=
 =?us-ascii?Q?IrCXREtH6u+to9VkpCHjBcPbLwFRZl6xyhjSiJYj4MttWvx9lbJABv5rBWYo?=
 =?us-ascii?Q?nfVGTlARIYG7qCGn/Nj2HCo2WwB0CaVlE0yTYtkzMQ2CHmmuen0TmsqIL+Ka?=
 =?us-ascii?Q?uwxg/UDiOsxRHpDCXuUF+rBU4FymOx9jcXGwLGF9v6RSXZyvfIm06oa7R4u5?=
 =?us-ascii?Q?G0ryPankAs4YSWfcT+oCwHhwYQaVGmyAZkNZ3cZya0UKe049Mz0uzmOyYITt?=
 =?us-ascii?Q?gHRC0e5mkpDZur7+4dhiyaKPe2+S0LLCfsuxhbCNAMmD4EcedpSdDQsRzz79?=
 =?us-ascii?Q?LUjjORt6jzzaH3kw2sLfvisGqGqyxu7SsIgwsQwEzrMbqitcAizS1suBkxPQ?=
 =?us-ascii?Q?lPh4ux5jQG71uk2xrm9RptKR4876OwP221Gc6EIUxYdGiWvcbjACbrGe1E1H?=
 =?us-ascii?Q?RZx8nyHMmNGZbfS8nbSC3I6UWLKjYrFaGuUQorYygd22Pmx7MnBhIO+izkw0?=
 =?us-ascii?Q?uykp0jJ/nntjmgN+i+1H6DC3LUq518NiQRZnUxhGuQ+nfIKsjaGuZLBoUGky?=
 =?us-ascii?Q?QngW96Iz0NYaE9QF2mVhukKfkwk0nu/rb4L0V7Y9MeWKD6ZA0enW2YfxHYxf?=
 =?us-ascii?Q?+a36ZVtJNFOa3KKXjbagzTMEvy6xYzMNienwg1shElclwp0cVajLr9ZCPMGZ?=
 =?us-ascii?Q?3eSZI+HJSSNayfNvrv+jtfhK8YiI0K9PK/TK8Z4Dnfcs8rgD3vRubXujEvg0?=
 =?us-ascii?Q?zKYDrAz/qMWJ/DSMF+ecdG47vFIQXICr0VGdRTuWjHWGEty7x1niX+uzr8UI?=
 =?us-ascii?Q?sD5JCMvRsJh5mE45OFNIOdb3NOQARkAuVoEeJeflE3oou4HyqlnCyRolx61a?=
 =?us-ascii?Q?YU5bwyRAk4GLbo3M8mLTx4Go0ro4EE8Q7V+jpqKdIdZSUyRwNhXqKDe1lvcM?=
 =?us-ascii?Q?CITl4E6Y/steAvwuQatevm3lDmAuHw/iKsVv9QFX674u+ec42IPAWVeDdzYv?=
 =?us-ascii?Q?443NiByi7romMK2AeA+XFr0Lh6kFmkyJTIhBAw37e19v57CJA7EmMFPlUYUL?=
 =?us-ascii?Q?Xs8mepVOABWtmcdBYTEyLb01Q1q3D77jSsEHZBONUCoUtXPyyqOwzTrGYj6W?=
 =?us-ascii?Q?YhZYbo2zZW+Ug4xIWtrtVwI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0629b8c5-6e49-478d-30a5-08db45c09de4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 19:09:39.6397 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6abe9NvbuZ9+7AEfoK6kGjNZYh8sRB5wvnR/6zSUJTzpHZqqQXPzHy6Dld+3H33RmnAQRQAhk+KHnf4lD+eYgz4K9TgBgaF7kuYZYJCIzfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8147
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/mtl: C20 port clock
 calculation
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

On Thu, Apr 20, 2023 at 03:40:41PM +0300, Mika Kahola wrote:
> Calculate port clock with C20 phy.
> 
> BSpec: 64568
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 45 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  4 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +
>  5 files changed, 55 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 144474540ef4..f7720acaf58c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2274,6 +2274,51 @@ int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>  	return tmpclk;
>  }
>  
> +int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
> +				 const struct intel_c20pll_state *pll_state)
> +{
> +	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
> +	unsigned int multiplier, refclk = 38400;
> +	unsigned int tx_clk_div;
> +	unsigned int ref_clk_mpllb_div;
> +	unsigned int fb_clk_div4_en;
> +	unsigned int ref, vco;
> +	unsigned int tx_rate_mult;
> +	unsigned int tx_rate = REG_FIELD_GET(C20_PHY_TX_RATE, pll_state->tx[0]);
> +
> +	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
This method of judging mplla vs mpllb seems more appropriate than the one used
during intel_c20pll_readout_hw_state in patch 02/13.

Update 2/13 mplla vs mpllb selection based on this logic.

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> +		tx_rate_mult = 1;
> +		frac_en = REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state->mpllb[6]);
> +		frac_quot = pll_state->mpllb[8];
> +		frac_rem =  pll_state->mpllb[9];
> +		frac_den =  pll_state->mpllb[7];
> +		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mpllb[0]);
> +		tx_clk_div = REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, pll_state->mpllb[0]);
> +		ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
> +		fb_clk_div4_en = 0;
> +	} else {
> +		tx_rate_mult = 2;
> +		frac_en = REG_FIELD_GET(C20_MPLLA_FRACEN, pll_state->mplla[6]);
> +		frac_quot = pll_state->mplla[8];
> +		frac_rem =  pll_state->mplla[9];
> +		frac_den =  pll_state->mplla[7];
> +		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mplla[0]);
> +		tx_clk_div = REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, pll_state->mplla[1]);
> +		ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mplla[6]);
> +		fb_clk_div4_en = REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_state->mplla[0]);
> +	}
> +
> +	if (frac_en)
> +		frac = frac_quot + DIV_ROUND_CLOSEST(frac_rem, frac_den);
> +	else
> +		frac = 0;
> +
> +	ref = DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1 << ref_clk_mpllb_div);
> +	vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(ref, (multiplier << (17 - 2)) + frac) >> 17, 10);
> +
> +	return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
> +}
> +
>  static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  					 const struct intel_crtc_state *crtc_state,
>  					 bool lane_reversal)
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index c643aae27bac..83bd3500091b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -34,6 +34,8 @@ void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_c20pll_state *pll_state);
>  void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
>  				const struct intel_c20pll_state *hw_state);
> +int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
> +				 const struct intel_c20pll_state *pll_state);
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
>  int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 6fcb1680fb54..a5e5bee24533 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -195,17 +195,21 @@
>  #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
>  #define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
>  #define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
> +#define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
>  #define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
>  #define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
>  #define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
>  #define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
>  #define   C20_MPLLA_FRACEN		REG_BIT(14)
> +#define   C20_FB_CLK_DIV4_EN		REG_BIT(13)
>  #define   C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
>  #define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
>  #define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
>  #define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
>  #define   C20_MPLLB_FRACEN		REG_BIT(13)
> +#define   C20_REF_CLK_MPLLB_DIV_MASK	REG_GENMASK(12, 10)
>  #define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
> +#define   C20_PHY_USE_MPLLB		REG_BIT(7)
>  
>  #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx) (0x303D + (idx))
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d414dd8c26bf..8e6d6afca400 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3856,13 +3856,13 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
>  	if (intel_is_c10phy(i915, phy)) {
>  		intel_c10pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10);
>  		intel_c10pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c10);
> +		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
>  	} else {
>  		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20);
>  		intel_c20pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c20);
> +		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);
>  	}
>  
> -	crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
> -
>  	intel_ddi_get_config(encoder, crtc_state);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index a9fbef0fa817..ca0f362a40e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1014,6 +1014,8 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
>  	/* TODO: Do the readback via intel_compute_shared_dplls() */
>  	if (intel_is_c10phy(i915, phy))
>  		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
> +	else
> +		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);
>  
>  	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
>  
> -- 
> 2.34.1
> 
