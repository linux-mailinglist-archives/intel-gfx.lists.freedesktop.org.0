Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C943587F24
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 17:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76FBA8FEF8;
	Tue,  2 Aug 2022 15:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 486A78FEF6
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 15:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659454821; x=1690990821;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=poQmit8qbVLoM8xbkzLoTR1oG+hrYo+/2doi1kpIKno=;
 b=AV+ytE7J05EM91lQ04OqU0VY5czWvtjHMl18uX9BUfqgz5m5T79P/mD1
 fpoos+YJv8TSdNKdC7dza9j4n2yt9p2c+xL4cZtd0HETL7Iq8M7IeUL0E
 KqcyTaaa/tneAMQ5E2rLJMbPB2DYYOROmQhSNQG3vEh/YFWwdxHHFFBa3
 qphEAUZmRzkMU9A/3yVFrfnSeqMlSGIJ7SGq6kLs9+XfytLstdSeOiE4p
 FHnr+MgcVynUyORH7yCBE2wJQE4DC0v/Wj39S1ItrGE6yJzLJymljRuBH
 c3ZP4+I4y54qN2XkkQlqDddQSiGmZ0cRJXcvEaoekxFVWJJ3lkQwCdoiS g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="289454013"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="289454013"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:40:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="606060621"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 02 Aug 2022 08:40:20 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 08:40:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 08:40:19 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 08:40:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J7ZPLpTaugo51jJ38zFYg/vdUp7iy1il1sKJLVkYFBWcYIhMHQiuE/p2A2xnrNhfrorg7kHs8k6jaSHAAYt8Xg3/mkN6vFcqUgGAqBbwH7kzEmhpuYULTOgJwKDy4SiiueA9sWcFpRk0L6y7ukRRj2Jr699HEnLVh07nCBKtsq742eEa9V2bDdUtdXbuwLWG7w3WDwJlUTz5advvxBXObdFQowCO5RACWEWiD8mKbHMx8tUFv8QqkRCuqNXp6pQxDr+CPKpUhoGaUA0o9ZOjNJ3wuERs+0ZDCOws968w1TGf0zdAuv4qZYU6V2frqgES12S14JQqvGY5NaVcxgoQMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MpbepLSZb7cr8dmZyXQJiJtP6Z2xDCYVYzU1MizcWVM=;
 b=KfqGeiMB7b7neOYurgA8aTIiIeBExBm5DrgUP1HaHM2gh7XYC19THt2oEgLFG6luO2h0WdckGZTVv3CQp4DVfQlWmHYwX/2bUfsK09ZICTDsk8Bh/LetjhisgwWfYTrOjbHdEQcW3vKo09A0kSF7YDEu5yM/oOp438ynfB52vhvrVuncFnHizhisNaeEW5sJvNAKGoH5twjourxSs7svbZaU5hwSKabe+i/1zRZhfSEzGX5W5G/XtOq8p/BpXUKYBjqsFO1Q9uRW4BQ3TyWRfBtubNoDklq92h6G/Ww3EfXSFLzxP8zQAQ+fW62WehqKioHPAtRnEpeEbsyeZtiujQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BN6PR11MB3986.namprd11.prod.outlook.com (2603:10b6:405:77::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Tue, 2 Aug
 2022 15:40:17 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 15:40:17 +0000
Date: Tue, 2 Aug 2022 08:40:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YulFXg/hVgmVp+Ju@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-11-radhakrishna.sripada@intel.com>
 <Yuh8mFUogLg9GqEf@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Yuh8mFUogLg9GqEf@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY5PR03CA0001.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::11) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 58a3b8b4-1944-4545-fa85-08da749d4c87
X-MS-TrafficTypeDiagnostic: BN6PR11MB3986:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nJw3TSdNPt1zd27FwyUeiVEKU5h/hRKA/x65Z6g8/w4FeDYnYKXD+4VSFlwaWtiuknd7umq87glLwtUZFsqs5Aei7Vkyx6L0foTsSh5AsnEu+Dyv8Dz3tLEolS8/1Sy+7qyfSqygXXyCfTZOSCe7n3H55CI+v+pTiPGi1YtwturKHQnPIvNMLGISyy2Dk3519qXrTMlAsZsiA1j9ZQ0nY/PNDjfx7pKqqKReNb6yxGB6Va9UhH7tws7KfLWmkDr8uVmjjis/d1JQHyE3HKRwktlJkw8lq0N6zjLylx67fY8e2qpGQkpigbJx7vhzEdhubTwR5KBntUkE3peLMvA/ztXMUcEuITlqIRulQnUy1EUj7z9Ap8GXn4MwD952sCKySawd8AUsNUaUH0Sa6aWFbvvGmBWCD0hDWSUe5QvGU+P139c3p45vWTUN8Prt3Jo1BvV7clVg0+wlhnapDRKpOSMcAUB5ac7VnjUwLWch/xw6f472bcWE+08WHY9U/oClOJmL/ftzYBzYEm4Bn1VCn4SpVlWgfgxfhDoNC/vYCCHKlAVbMABxcNWM/87Nhv4jVgBbKpi0UnuEuheAn/n73F+orvcDCI9hH588ZKG0DKEnBkCybseIxUM5H+TxjyrcY2KQnli0CH0MRTsMNATUpEC9QuqrcTq0bB9JuCkHqmvMkDYbab3AsIBcCLdT6ixxRpc/7PmXANoT2XjsRBgcqn0dmrDJSKtgkQmtsFFZ39s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(136003)(366004)(39860400002)(346002)(6512007)(6666004)(86362001)(6506007)(26005)(41300700001)(6636002)(316002)(6486002)(478600001)(82960400001)(38100700002)(186003)(66476007)(83380400001)(8676002)(4326008)(66946007)(66556008)(30864003)(2906002)(5660300002)(6862004)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0sIDqcHNTAP0jNdYBldPsn8ngK2SqTwjqHgrF7sEEkTfN+TL8Z8qZKYxem8e?=
 =?us-ascii?Q?CoUtwmadcsPUwU3T8NBnkCSNwFUfU5Tgtn5+29d71bOBgxIy4ZoB4xYmzn0Z?=
 =?us-ascii?Q?KF2L0Cx0Dngr1uFNARO0ZerZOuH8YIsp7zO5ipvid5QGe6HSY55CzQlHVyCu?=
 =?us-ascii?Q?Qd+F5hnGHEAdjbDUuIMu1sf+FtKboTq46xLouIPsDg4fg2lqk/FioSkPpbk+?=
 =?us-ascii?Q?KTECxgPs9vmrQFNtW9jFb9YV+Z/cnZqbqkYSpeTH76fTKp0zpaDGDMFfuiYG?=
 =?us-ascii?Q?qrDu7dOaPJHsm1p+R8P4Oiqbs42xZSxJ4plgohQ5P9h9tUL6GUYNlOAvd4nm?=
 =?us-ascii?Q?geNkdm6S7nIhypHuw+51vjwTSlgLauAaNq/YpjuX5EyF/V1f110NSIarR3gN?=
 =?us-ascii?Q?iXEk9Yg5SbCk+L8wUSI0P1KKz4uvlPR/+w6VPIMhz0fMThY27to6qE9CfcAS?=
 =?us-ascii?Q?fQZaPgmPU+jKfNEY7BWzD08bmdMZvoUhM+Yw/99aFQeOZRGYKKutAgByclrq?=
 =?us-ascii?Q?louRbf2gx4OhHJ5I5QO+Q0AW+4JXE1U5iE6ja+BasaxIyhMAOGHKPH95UBM5?=
 =?us-ascii?Q?f3m17XmBp/NkndnYTvFVcnXk+rkT8cfi1MvuVu458OdAwDr8OFSyqGxGOQ/8?=
 =?us-ascii?Q?fxku/RnKFDmF0KqLFGF2w/o5p4OnDAEKPSPdiHArYoRQ3Njp7MVjFUiW70rn?=
 =?us-ascii?Q?p83qfTdVY3y1DCQpiDSVI395YMLKG+rCS9kS0P7rx0rELlEC5qQiHpz+ZjlA?=
 =?us-ascii?Q?WSbZhLdVhNRGfAEadO978ScrlHNqmXLRmIHr6C/ee66ziAhr/xFIiKfM+BhI?=
 =?us-ascii?Q?RRYX+HciiICflQLANIsk/7toOC/rU8m/rnAINqTahhonJ4v+kypEohNOKC5P?=
 =?us-ascii?Q?6rEyl6KmzVTU1pCEZy6QujCL8t2ksko4smfpP3bOnKM6FM2ifd/t20yMSgeB?=
 =?us-ascii?Q?L9s5j60gm0tCEyHU9TZYTkK9sWJo0nV8bz4yOH2dw55jkTSxauOpI2SJz0eB?=
 =?us-ascii?Q?vGkrGOI04q+SZYaZcsVkibnDod3w/eOaJXfuf61J5fog2e7Up6vsy/d4y129?=
 =?us-ascii?Q?ZkBNheUCgQHXE8XYTFG6FtIi/YJZcIZlgs6CsoMRq+Rp88SzPitcHNVczuEw?=
 =?us-ascii?Q?WVRLV0BdAot/SzjAL41rjdYAU536tRhwYVyf3xZTcRe6/bX4d5SSMsSka47q?=
 =?us-ascii?Q?UAq7lVXG/S8x3FZb2WFvgvXNLuIpPgQrQu8CelGwG21pAJLkFacdPqEpdFkM?=
 =?us-ascii?Q?PZf//FuykT0QFrLPwVndqtvbNz+i4gF95QswNF1ySHRIAye2sTVy4q0Qm53U?=
 =?us-ascii?Q?tGlZQ135xmBBQ9lXeEnxA8+yWYkb4yy5u4xRSTkmz3TSTq81pcvzjsFYYWfl?=
 =?us-ascii?Q?anB7L3ORBR1n/0HViffOMsMZ6HYDOD6LCsCkpc1Z2IceSfuC6Hah6jTeSQhP?=
 =?us-ascii?Q?kSzmm08h82W+UF5jg7q/NktQJJWNMQ9yApEyJhwVpEZXqrChAal+fIxC/fFl?=
 =?us-ascii?Q?H7GEYGXdBJqbQ4i9L+mL7wos2M9ubPmxuq6Af9VIEcVvKdCus3xapbTQe1eW?=
 =?us-ascii?Q?bmliVZXaLVqWyFHtplvf8iJO4ZPEmf6ya5EMfTAR4Q/VU8gflf/jFMf13YgK?=
 =?us-ascii?Q?dA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58a3b8b4-1944-4545-fa85-08da749d4c87
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 15:40:17.0888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 03Sf3WNVct3ugMoj1Ifruwbb42gcYCaqpfxzvNf3BTmbIkwaxrcVX9OZJYq7NZ0uiR/VKbkuGWK5bN36ywG9DqmkCP+9ahlzULX8t8IfJyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3986
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/23] drm/i915/mtl: Add display power wells
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

On Mon, Aug 01, 2022 at 06:23:39PM -0700, Matt Roper wrote:
> On Wed, Jul 27, 2022 at 06:34:07PM -0700, Radhakrishna Sripada wrote:
> > From: Imre Deak <imre.deak@intel.com>
> > 
> > Add support for display power wells on MTL. The differences from D13:

Also, this should be "...from Xe_LPD"


Matt

> > - The AUX HW block is moved to the PICA block, where the registers are on
> >   an always-on power well and the functionality needs to be powered on/off
> >   via the AUX_CH_CTL register: [1], [2]
> > - The DDI IO power on/off programming sequence is moved to the PHY PLL
> >   enable/disable sequence. [3], [4], [5]
> > 
> > Bspec: [1] 49233, [2] 65247, [3] 64568, [4] 65451, [5] 65450
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../i915/display/intel_display_power_map.c    | 115 +++++++++++++++++-
> >  .../i915/display/intel_display_power_well.c   |  43 +++++++
> >  .../i915/display/intel_display_power_well.h   |   4 +
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c   |   8 ++
> >  drivers/gpu/drm/i915/i915_reg.h               |  30 +++++
> >  5 files changed, 199 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > index 97b367f39f35..cd28976f8076 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > @@ -1350,6 +1350,117 @@ static const struct i915_power_well_desc_list xelpd_power_wells[] = {
> >  	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
> >  };
> >  
> > +/*
> > + * MTL is based on XELPD power domains with the exception of power gating for:
> > + * - DDI_IO (moved to PLL logic)
> > + * - AUX and AUX_IO functionality and register access for USBC1-4 (PICA always-on)
> > + */
> > +#define XELPDP_PW_2_POWER_DOMAINS \
> > +	XELPD_PW_B_POWER_DOMAINS, \
> > +	XELPD_PW_C_POWER_DOMAINS, \
> > +	XELPD_PW_D_POWER_DOMAINS, \
> > +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > +	POWER_DOMAIN_VGA, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC4
> > +
> > +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_pw_2,
> > +	XELPDP_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
> > +	XELPDP_PW_2_POWER_DOMAINS,
> > +	POWER_DOMAIN_AUDIO_MMIO,
> > +	POWER_DOMAIN_MODESET,
> > +	POWER_DOMAIN_AUX_A,
> > +	POWER_DOMAIN_AUX_B,
> > +	POWER_DOMAIN_INIT);
> > +
> > +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc1,
> > +	POWER_DOMAIN_AUX_USBC1,
> > +	POWER_DOMAIN_AUX_TBT1);
> > +
> > +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc2,
> > +	POWER_DOMAIN_AUX_USBC2,
> > +	POWER_DOMAIN_AUX_TBT2);
> > +
> > +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc3,
> > +	POWER_DOMAIN_AUX_USBC3,
> > +	POWER_DOMAIN_AUX_TBT3);
> > +
> > +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc4,
> > +	POWER_DOMAIN_AUX_USBC4,
> > +	POWER_DOMAIN_AUX_TBT4);
> > +
> > +static const struct i915_power_well_desc xelpdp_power_wells_main[] = {
> > +	{
> > +		.instances = &I915_PW_INSTANCES(
> > +			I915_PW("DC_off", &xelpdp_pwdoms_dc_off,
> > +				.id = SKL_DISP_DC_OFF),
> > +		),
> > +		.ops = &gen9_dc_off_power_well_ops,
> > +	}, {
> > +		.instances = &I915_PW_INSTANCES(
> > +			I915_PW("PW_2", &xelpdp_pwdoms_pw_2,
> > +				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
> > +				.id = SKL_DISP_PW_2),
> > +		),
> > +		.ops = &hsw_power_well_ops,
> > +		.has_vga = true,
> > +		.has_fuses = true,
> > +	}, {
> > +		.instances = &I915_PW_INSTANCES(
> > +			I915_PW("PW_A", &xelpd_pwdoms_pw_a,
> > +				.hsw.idx = XELPD_PW_CTL_IDX_PW_A),
> > +		),
> > +		.ops = &hsw_power_well_ops,
> > +		.irq_pipe_mask = BIT(PIPE_A),
> > +		.has_fuses = true,
> > +	}, {
> > +		.instances = &I915_PW_INSTANCES(
> > +			I915_PW("PW_B", &xelpd_pwdoms_pw_b,
> > +				.hsw.idx = XELPD_PW_CTL_IDX_PW_B),
> > +		),
> > +		.ops = &hsw_power_well_ops,
> > +		.irq_pipe_mask = BIT(PIPE_B),
> > +		.has_fuses = true,
> > +	}, {
> > +		.instances = &I915_PW_INSTANCES(
> > +			I915_PW("PW_C", &xelpd_pwdoms_pw_c,
> > +				.hsw.idx = XELPD_PW_CTL_IDX_PW_C),
> > +		),
> > +		.ops = &hsw_power_well_ops,
> > +		.irq_pipe_mask = BIT(PIPE_C),
> > +		.has_fuses = true,
> > +	}, {
> > +		.instances = &I915_PW_INSTANCES(
> > +			I915_PW("PW_D", &xelpd_pwdoms_pw_d,
> > +				.hsw.idx = XELPD_PW_CTL_IDX_PW_D),
> > +		),
> > +		.ops = &hsw_power_well_ops,
> > +		.irq_pipe_mask = BIT(PIPE_D),
> > +		.has_fuses = true,
> > +	}, {
> > +		.instances = &I915_PW_INSTANCES(
> > +			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
> > +			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
> > +			I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpdp.aux_ch = AUX_CH_USBC1),
> > +			I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpdp.aux_ch = AUX_CH_USBC2),
> > +			I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelpdp.aux_ch = AUX_CH_USBC3),
> > +			I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelpdp.aux_ch = AUX_CH_USBC4),
> > +		),
> > +		.ops = &xelpdp_aux_power_well_ops,
> > +	},
> > +};
> > +
> > +static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
> > +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> > +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> > +	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> > +};
> > +
> >  static void init_power_well_domains(const struct i915_power_well_instance *inst,
> >  				    struct i915_power_well *power_well)
> >  {
> > @@ -1457,7 +1568,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
> >  		return 0;
> >  	}
> >  
> > -	if (DISPLAY_VER(i915) >= 13)
> > +	if (DISPLAY_VER(i915) >= 14)
> > +		return set_power_wells(power_domains, xelpdp_power_wells);
> > +	else if (DISPLAY_VER(i915) >= 13)
> >  		return set_power_wells(power_domains, xelpd_power_wells);
> >  	else if (IS_DG1(i915))
> >  		return set_power_wells(power_domains, dg1_power_wells);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 91cfd5890f46..7c854c1a110b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -1797,6 +1797,42 @@ tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private *dev_priv,
> >  	return intel_power_well_refcount(power_well);
> >  }
> >  
> > +static void xelpdp_aux_power_well_sync_hw(struct drm_i915_private *i915,
> > +					  struct i915_power_well *power_well)
> > +{
> > +}
> 
> We can just use i9xx_power_well_sync_hw_noop instead of creating another
> empty function.
> 
> > +
> > +static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > +					 struct i915_power_well *power_well)
> > +{
> > +	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> > +
> > +	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> > +		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
> > +		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
> > +	/* The power status flag doesn't indicate that the power up completed. */
> 
> This comment isn't super clear by itself.  Maybe something like
> 
>         /*
>          * The power status flag cannot be used to determine whether aux
>          * power wells have finished powering up.  Instead we're
>          * expected to just wait a fixed 600us after raising the request
>          * bit.
>          */
> 
> would be more clear.
> 
> > +	usleep_range(600, 1200);
> > +}
> > +
> > +static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
> > +					  struct i915_power_well *power_well)
> > +{
> > +	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> > +
> > +	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> > +		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
> > +		     0);
> > +	usleep_range(10, 30);
> > +}
> > +
> > +static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
> > +					  struct i915_power_well *power_well)
> > +{
> > +	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> > +
> > +	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
> > +		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
> > +}
> >  
> >  const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
> >  	.sync_hw = i9xx_power_well_sync_hw_noop,
> > @@ -1910,3 +1946,10 @@ const struct i915_power_well_ops tgl_tc_cold_off_ops = {
> >  	.disable = tgl_tc_cold_off_power_well_disable,
> >  	.is_enabled = tgl_tc_cold_off_power_well_is_enabled,
> >  };
> > +
> > +const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
> > +	.sync_hw = xelpdp_aux_power_well_sync_hw,
> > +	.enable = xelpdp_aux_power_well_enable,
> > +	.disable = xelpdp_aux_power_well_disable,
> > +	.is_enabled = xelpdp_aux_power_well_enabled,
> > +};
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > index d0624642dcb6..03d11576327d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > @@ -80,6 +80,9 @@ struct i915_power_well_instance {
> >  			 */
> >  			u8 idx;
> >  		} hsw;
> > +		struct {
> > +			u8 aux_ch;
> > +		} xelpdp;
> >  	};
> >  };
> >  
> > @@ -169,5 +172,6 @@ extern const struct i915_power_well_ops vlv_dpio_power_well_ops;
> >  extern const struct i915_power_well_ops icl_aux_power_well_ops;
> >  extern const struct i915_power_well_ops icl_ddi_power_well_ops;
> >  extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
> > +extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
> >  
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 2bc119374555..40c4bdd9cb26 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -150,6 +150,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
> >  				u32 unused)
> >  {
> >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > +	struct drm_i915_private *i915 =	to_i915(dig_port->base.base.dev);
> >  	u32 ret;
> >  
> >  	/*
> > @@ -170,6 +171,13 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
> >  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> >  		ret |= DP_AUX_CH_CTL_TBT_IO;
> >  
> > +	/*
> > +	 * Power request bit is already set during aux power well enable.
> > +	 * Preserve the bit across aux transactions.
> > +	 */
> > +	if (DISPLAY_VER(i915) >= 14)
> > +		ret |= XELPDP_DP_AUX_CH_CTL_POWER_REQUEST;
> > +
> >  	return ret;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index baf747adf1db..6087d40eed70 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3619,6 +3619,34 @@
> >  #define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
> >  #define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
> >  
> > +#define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
> > +#define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
> > +#define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
> > +#define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
> > +
> > +#define _XELPDP_USBC1_AUX_CH_DATA1	0x16F214
> > +#define _XELPDP_USBC2_AUX_CH_DATA1	0x16F414
> > +#define _XELPDP_USBC3_AUX_CH_DATA1	0x16F614
> > +#define _XELPDP_USBC4_AUX_CH_DATA1	0x16F814
> > +
> > +#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
> > +						       _DPA_AUX_CH_CTL, \
> > +						       _DPB_AUX_CH_CTL, \
> > +						       0, /* port/aux_ch C is non-existent */ \
> > +						       _XELPDP_USBC1_AUX_CH_CTL, \
> > +						       _XELPDP_USBC2_AUX_CH_CTL, \
> > +						       _XELPDP_USBC3_AUX_CH_CTL, \
> > +						       _XELPDP_USBC4_AUX_CH_CTL))
> > +
> > +#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
> > +						       _DPA_AUX_CH_DATA1, \
> > +						       _DPB_AUX_CH_DATA1, \
> > +						       0, /* port/aux_ch C is non-existent */ \
> > +						       _XELPDP_USBC1_AUX_CH_DATA1, \
> > +						       _XELPDP_USBC2_AUX_CH_DATA1, \
> > +						       _XELPDP_USBC3_AUX_CH_DATA1, \
> > +						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
> > +
> >  #define   DP_AUX_CH_CTL_SEND_BUSY	    (1 << 31)
> >  #define   DP_AUX_CH_CTL_DONE		    (1 << 30)
> >  #define   DP_AUX_CH_CTL_INTERRUPT	    (1 << 29)
> > @@ -3631,6 +3659,8 @@
> >  #define   DP_AUX_CH_CTL_RECEIVE_ERROR	    (1 << 25)
> >  #define   DP_AUX_CH_CTL_MESSAGE_SIZE_MASK    (0x1f << 20)
> >  #define   DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT   20
> > +#define   XELPDP_DP_AUX_CH_CTL_POWER_REQUEST (1 << 19)
> > +#define   XELPDP_DP_AUX_CH_CTL_POWER_STATUS  (1 << 18)
> 
> We should probably start using REG_BIT() for the new bits at least.
> 
> 
> Matt
> 
> >  #define   DP_AUX_CH_CTL_PRECHARGE_2US_MASK   (0xf << 16)
> >  #define   DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT  16
> >  #define   DP_AUX_CH_CTL_AUX_AKSV_SELECT	    (1 << 15)
> > -- 
> > 2.25.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
