Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F255818E93
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 18:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84EF110E1AA;
	Tue, 19 Dec 2023 17:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8356B10E1AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 17:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703008143; x=1734544143;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WOdiJ64idmboFNcU3c1rBuLpwT+AbIvkVOqeE1hCyQc=;
 b=RNSrUfg6vg9tvfayf4GetOp8LSqJbmmJP/dUrjNDC3dAjWQHd0PYaelC
 dv0lZ0iDUZuQlck0V1zHH72alkgLBmuSFZhijdifznGMjibB61NMnG2LF
 1cAT63Zby2ylgvqX2yHOFjGHZQ9za80tlRSJNEv1iOTv4u638dThKXTuy
 XuVI1WJ3xWwUXEj00v33iif97XDmlIkRl1g8wRZ+Ht9rXbszvK3bF++rg
 g9O53t67OnwaPGhLgjzAI6F/9Q5WgA0JufCuR8ZsGtONRn6Xfg4U1vABS
 Reb0i2GICj8OTZPwp79QScOQHheCW0cpw7wrFaRTwFbeSpqcGGLDs5zVk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="460038177"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="460038177"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 09:49:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="776058395"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="776058395"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2023 09:49:03 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Dec 2023 09:49:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Dec 2023 09:49:02 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Dec 2023 09:49:02 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Dec 2023 09:49:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lrijoHOUVazErEf0fmMCobPEUu896FJKchHsmpA0MjHkd/s2bI7hzO2VqmLCeVSgrYPUc6oExyqeWvwDBX60AcIrwWSAqqyVVVpihpyaBwu/i98S+MKmhjSpi18LZFLCy+lNMYFbcMSd7SdCbG8uSR7gtJtCaWAlp2MwdtyUHTgCsTZhSrgNjllVbvL6bThmll6jccjnh324imda2Uv3NMM2z+DFaWTcbDh5smJxsL5g1sgjlSFHaktwYbFwnFMz1bgPQbmUNy3tjdoIlhJH0Ir4II5sldpslGYW9AJutyfOY7fLI7GcM1vCpvEugMAQUITz5+hQoxJejfcLj3VNLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bBNj0ZOgzdnA5UVL6TuQ0aG/fjiw26ZW0Xkn1GGd/QM=;
 b=j0BqF5M9HqzIq1Q9UAM+5o8nW5XbVwVAkJOYjnVZCkYGW2TZn0gAW+PfZwSqAwn7wgfeQKLIA6VtIVuwcw4Z35DrOwJ1P53Nyf4yfcrS2lkMyYBozEg6H1MB5URll69o/+gvUJ109BTsbJaxxxrjnwpWEATB0onX1xDSr/LG17Mkz5a5o770IeiXO8j8kx0e9yM9rF/puv3TI7I9Y+3IkQMvcNu3UtvCls0oSxzj0nJaFiWOBDRPtIjWYwLBob3WfIR1vFA+85tFzR1ZcTFawXVvQdACz5OuyOYqx/1Chnnq93ZZKGtqIWsdJZ9YVixZW4VKAWeyjD+xLax2GOp4cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ2PR11MB7619.namprd11.prod.outlook.com (2603:10b6:a03:4d1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Tue, 19 Dec
 2023 17:48:59 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7091.034; Tue, 19 Dec 2023
 17:48:59 +0000
Date: Tue, 19 Dec 2023 09:48:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Shuicheng Lin <shuicheng.lin@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Add MCR type check for wa registers
Message-ID: <20231219174856.GB2808452@mdroper-desk1.amr.corp.intel.com>
References: <[PATCH]drm/i915/guc:ChangewaregisterstoMCRtype>
 <20231218114644.3799660-1-shuicheng.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231218114644.3799660-1-shuicheng.lin@intel.com>
X-ClientProxiedBy: BYAPR01CA0045.prod.exchangelabs.com (2603:10b6:a03:94::22)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ2PR11MB7619:EE_
X-MS-Office365-Filtering-Correlation-Id: 21e6cc18-50a2-468c-0701-08dc00bac74e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QSiPKXfrV3wn3m3cMg9Z1l8rqFKNrktlaZeXLvxLvyof6FTWahf33duZ/JM7R679acggJEmO+rJzrCiaesRx662BPfNHVxI7wvOdWMVSBc4mLVl1tAMRpXCtJvBsDI7CyuGLm1QP6t91J0fQqKAj8vyaUII2cB1FbqdexaoJbSHkFd8xMTBYH26hGcn1JyVsGnUYkXuPHrnprtipQ07feQDeS6ULszoTJ3EgFONySUk850maGGydZKA15t5D38GDYuUL/Y8ToUbttD7zeYcJKgpEFXt+j/zDBWKZfeY2zptbYjJVTTsadcRvYVexDdCQdu2HZd2fjDhTkrNWqacdv6yJghGopqYNR/q88KXd8kxBU7mgLDIQtgyXHU/GP6FAkArwnNk5cXdzPtoqj5yKna/f9xzw4Gjfx3pGqhAsuaUpZH76sUo4bcwth0v5Lk+PyOLhHU7SqxUh91+I7lTGEdoA+BeaNi3R2BRoiDiYiVtGopfuLFl8SRm7vwpYr93r4x3lkuiLaC//TPO3Z5LOkIKR+ThzDZpc2MnpesBxgRqgv7x9UweR0MQyVlAuKAMy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(346002)(39860400002)(396003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(1076003)(26005)(83380400001)(6512007)(5660300002)(4326008)(8936002)(66556008)(41300700001)(6506007)(6666004)(478600001)(2906002)(6486002)(8676002)(66946007)(316002)(66476007)(6862004)(6636002)(82960400001)(86362001)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K8GYSHQ4hyTdJXEwEXu2nDDvu+b1wR7B+3gxibmxPB70xyzyA3Yaap2qXVvY?=
 =?us-ascii?Q?0KjBBiiJbHmj8zDtOBETE5D5DmxmYsrqEipgjIk+Bi+eHwN4V5BnlLzPuBNg?=
 =?us-ascii?Q?nlbfBrqrvdELX4H3U07jH7IiXxiQxc6M2zxV57hIEiN9P8jT7Z9FNXa2KAn+?=
 =?us-ascii?Q?4na6POLxbGi9VvSMInOR8FrFh1eWVM8cnwitIaskZ6i4nxULqan7tgY7bayn?=
 =?us-ascii?Q?ihYe3qMEYlD373a15woYCQoNQZIAAtpTpgX2Ajrh6TzapGatoDnS1Ov42vO/?=
 =?us-ascii?Q?hXTOCi9np1QJd2O3B79fLGFR4mej4m2npjqFij38H1TGlA8lfGgCuwg38HQI?=
 =?us-ascii?Q?eNrAfdhI5TzXk7OwuL6W0S9O6oYkEHvERnS76/V101j7FHI/Mb5DFzGTIpTX?=
 =?us-ascii?Q?nCwaIzXaUAOcOdKInbYlJv+oPvAA7BJR+Kgj2cXr9zT5DTD91FIXQsA47SNR?=
 =?us-ascii?Q?56MqgrAlLHi4uMaGeepMr8C6K4uCnvq6hluXi1vWe7RX/7OwJm2Y1SL3J5mi?=
 =?us-ascii?Q?xhSzGK8xx1lHdc28T0hr+e8sWd+44V9m9nAOgjVzc1HPjRSGnZuPC38YvNmS?=
 =?us-ascii?Q?4xCktbhdkgiUwfTI0FSMp1+kPlAOXnER5DnoXZugmQ4PFfCH8MkR/SHeTXQf?=
 =?us-ascii?Q?9B9wHx0n9igg5JfXltdkY0sTjdacczb77ifIJALTD7Anmcz3TFUNDYrVz1gN?=
 =?us-ascii?Q?CUOw5/rZ/H7AtIeBM1Ls2q9W8ynOrU4ttI/ByU0L090fG1AnzVP/mmuYhTeF?=
 =?us-ascii?Q?2j7dTPrgcZ0l+16aIPobBXY/NyzfpOJiQ3GfYKuzhfQkC8Wy4stcKo1K10Gq?=
 =?us-ascii?Q?LV2Sn/Q/5G6CIioC9p9ijXu+0bKCz8QeYYFsYfRiGhK44Dlmy7t7ys2oveYY?=
 =?us-ascii?Q?xHNxrkk/s1F8Cy8B71NBUADWjn6dLBWqKNKtoR8kOXc0TeDSD8yE81RjYveH?=
 =?us-ascii?Q?VOj2jjaCiAqNUHgBmS8F7O0Xq4XKxt8TmLoRYRh6mgw73fI15R/TXl5xo3Xz?=
 =?us-ascii?Q?gXEIaeO1Kecb1sZ7gEEaOlVfFk0pbO6sANqNKq80qFMKQQ4vkYa3xiTiUW7G?=
 =?us-ascii?Q?XFEVYm/oKiX2vP5vR9AoAym+x+bm2vhJbaDuSvQXGEiJTl2oedSr+PnHdVh+?=
 =?us-ascii?Q?N8531C3H12zzcdiXLTWF06GuGkMMIrlNHQ9QGvraYw5T9NlGApBEmbXYnZU6?=
 =?us-ascii?Q?aG76g49AILL2yVcafGn0mpwZI7ApPosbrkNRy1HbH/gjCYZ2TSHkmzAYMhZ7?=
 =?us-ascii?Q?KqD8hv0DUhhfXVw8aKpqD+J0r0x6+K1pPo3dhVE+bwXaNDl0d7OrylfQzEbQ?=
 =?us-ascii?Q?0ojKoqVkh2X4a6b6QjMpCUpNbQeiXeYElSqk4x1WTH5pjHT+NAdJviqdRQkL?=
 =?us-ascii?Q?hreQKmt6lw+jhfAw06yiOqVqapsCDwT4Zflel55Cqns/hpoXagr2z/z8ARAh?=
 =?us-ascii?Q?uUqQSoCwzeQbXSvFoGvtFuhS+WhcoM4yNrpVXaGfPDnUJVpg8vQ6bOtiXVV9?=
 =?us-ascii?Q?QCJpvDv1lzRCTUx0szRuSOE6/KWCg0MTM6JZVJnx6j42RsW4J1BMUTdxk5vF?=
 =?us-ascii?Q?tTkqjDDVEZsO6ZwVWmpfNT4pCZSCaisdD02stynP1j3Ky23eSB1dP6d4MvP8?=
 =?us-ascii?Q?3Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21e6cc18-50a2-468c-0701-08dc00bac74e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2023 17:48:59.1755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zno3RNRq0mEFTznilyzbAioa5HkJoHngGMJlRSsPuzTeX350WpQZsvE9DSd0vzq7YBaPJ4RB0I5736l67M8J7dScazmHc1xT3u8+2Yg6f3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7619
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

On Mon, Dec 18, 2023 at 11:46:44AM +0000, Shuicheng Lin wrote:
> Some of the wa registers are MCR registers, which have different
> read/write process with normal MMIO registers.
> Add function intel_gt_is_mcr_reg to check whether it is mcr register
> or not.
> 
> Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c     | 27 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.h     |  2 ++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  6 ++++-
>  3 files changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index e253750a51c5..b3ee9d152dbe 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -81,6 +81,11 @@ static const struct intel_mmio_range dg2_lncf_steering_table[] = {
>  	{},
>  };
>  
> +static const struct intel_mmio_range dg2_dss_steering_table[] = {
> +	{ 0x00E400, 0x00E7FF },
> +	{},
> +};

This is incomplete.  There are a _lot_ more DSS MCR ranges than this.

> +
>  /*
>   * We have several types of MCR registers on PVC where steering to (0,0)
>   * will always provide us with a non-terminated value.  We'll stick them
> @@ -190,6 +195,7 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>  	} else if (IS_DG2(i915)) {
>  		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
>  		gt->steering_table[LNCF] = dg2_lncf_steering_table;
> +		gt->steering_table[DSS] = dg2_dss_steering_table;

Why are you making this change only on DG2?  There are DSS steering
ranges that we've been implicitly steering on many platforms.  Switching
to explicit steering is something that should probably happen on all
platforms or no platforms.

>  		/*
>  		 * No need to hook up the GAM table since it has a dedicated
>  		 * steering control register on DG2 and can use implicit
> @@ -715,6 +721,27 @@ void intel_gt_mcr_get_nonterminated_steering(struct intel_gt *gt,
>  	*instance = gt->default_steering.instanceid;
>  }
>  
> +/*
> + * intel_gt_is_mcr_reg - check whether it is a mcr register or not
> + * @gt: GT structure
> + * @reg: the register to check
> + *
> + * Returns true if @reg belong to a register range of any steering type,
> + * otherwise, return false.
> + */
> +bool intel_gt_is_mcr_reg(struct intel_gt *gt, i915_reg_t reg)
> +{
> +	int type;
> +	i915_mcr_reg_t mcr_reg = {.reg = reg.reg};
> +
> +	for (type = 0; type < NUM_STEERING_TYPES; type++) {
> +		if (reg_needs_read_steering(gt, mcr_reg, type)) {
> +			return true;
> +		}
> +	}
> +	return false;
> +}

We don't need this function; see below.

> +
>  /**
>   * intel_gt_mcr_read_any_fw - reads one instance of an MCR register
>   * @gt: GT structure
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
> index 01ac565a56a4..1ac5e6e2814e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
> @@ -30,6 +30,8 @@ void intel_gt_mcr_multicast_write_fw(struct intel_gt *gt,
>  u32 intel_gt_mcr_multicast_rmw(struct intel_gt *gt, i915_mcr_reg_t reg,
>  			       u32 clear, u32 set);
>  
> +bool intel_gt_is_mcr_reg(struct intel_gt *gt, i915_reg_t reg);
> +
>  void intel_gt_mcr_get_nonterminated_steering(struct intel_gt *gt,
>  					     i915_mcr_reg_t reg,
>  					     u8 *group, u8 *instance);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 63724e17829a..6c3910c9dce5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -377,8 +377,12 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
>  	    CCS_MASK(engine->gt))
>  		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE, true);
>  
> +	/* Check whether there is MCR register or not */
>  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
> +		if (intel_gt_is_mcr_reg(gt, wa->reg))

The proper condition here would be wa->is_mcr.  Of course that assumes
that you actually define all of the workarounds appropriately (using the
MCR variants when appropriate) and also the registers properly (using
MCR_REG() instead of _MMIO).

Converting all of the implicit steering over to explicit steering is a
lot of invasive changes to the code, and I'm not sure it's really worth
it at this point.  A much simpler and equally effective fix for the GuC
not steering DSS (and GSLICE) ranges properly would be to just add the
steering flags inside guc_mmio_reg_add() so that it gets added to all
registers (both MCR and non-MCR).  That's basically what we used to do
(and we even still have a comment to that effect inside
guc_mcr_reg_add()).  Then guc_mcr_reg_add() can become a one-line
function to just typecast the register.


Matt

> +			ret |= GUC_MCR_REG_ADD(gt, regset, wa->mcr_reg, wa->masked_reg);
> +		else
> +			ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
>  
>  	/* Be extra paranoid and include all whitelist registers. */
>  	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
