Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2B79AF055
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 21:05:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A152110E0AA;
	Thu, 24 Oct 2024 19:05:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jFDp9/La";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 313FC10E0AA;
 Thu, 24 Oct 2024 19:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729796707; x=1761332707;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CUT4OjIxzd/G6bEfXJqqCF40mnI07mJEeU9wBbJfaxg=;
 b=jFDp9/Laz7dyQ/kdJopsECFVNDe5in0USNo6MSbTr3DdtWJJJ2MvGK1h
 B9+aBTzidtBH1uG9jc/QEI2auWFCnVITRo9h52Fq98ka02obd+yMus2kr
 W8g4wiOA0t1zBTbc44/geyXZlIqu3RAFllbtK/0Vh74Fr6gB7pMCRJgYt
 fP/TWDW/mRTEzs4T+xMZ4l0/lwdZw/8mPy3lc2GfG2Pmo5zmm4kI+G84Q
 KkQmzK/nvc5lOlQRW9f1rROqvifSy1B/x35Z+XJULH0dgMOsbKxTP5gLG
 r2/vS8ap/DuDAdjUVzJ+JsE7vR8we1iEJqKdLkI3JhtbXcELhrpcZAzPf A==;
X-CSE-ConnectionGUID: TwjDKI4fRiGTKiwWnD9L8g==
X-CSE-MsgGUID: q92obwpvRl6nnzHbb0HgXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="33352402"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="33352402"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 12:05:07 -0700
X-CSE-ConnectionGUID: JwBurotmQduv81asFOi3qA==
X-CSE-MsgGUID: oWllSUcxS/yUVblIDMZjPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80675403"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 12:05:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 12:05:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 12:05:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 12:05:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=soiiej07ojESivjJq45SXLUKR8COEkAAkUOyyqs4P/1wLxAjIXDkEClQ6L06ovByl0dxEUC4L7lQ6sqln464dcC3NhsugFTR+xIc3JZSG7GftMUnOSkwnGZxTW03UxeO1kUrDiqDWbK1GcYfVURBLuMuMdbE2aNbNy5uilssknflzKz4A8T2SzWwlqMwxfg3oqu4It06i7XAmnXtVL5SoRd1dGsbThO2w0AIXVK6e21AN1V12j2JRzQycg2KojISe6j8Z7DOjovey8JsFwQolhkBq9xjwkigT1ZJhbPBjSk5daFAUZKZheSg89jr4ZMIR3Ld88D+AIpEbSWfd+37QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m78VIyr592qQ+E3i5Zlzr1RaaO2SrRG1GM1AkT9wOq4=;
 b=dA7GH9iP2toLC2toZsNoX92g7ud0vXnbueF+ISpVWPf5nJVv78/KIHbXNLo1C+2xCMLUYNRSOuGc0OGTui3BqTJKeMBabjU1Xu+TnwKLuZFrRgyOkgTPYv6lYduDYX/fauY6PPgpZICG1qqpnZtVh00D7hhGR2cZkfu5ZfmrY73IjgVZYVgrnDJywUyAc80H3SdhxsO1aTlm84bQYodpHGqoF1wjBVKRjbPfbkJclH9Hp5LyHfR0Wd5DfHdoZ6GnktDWAxDF85SWOo4fEdhGMcOxwHtFyhKuGaxKZBmGAEPMWRmN4xMrkSeo6Y2d/AeZ7pltG/1UsvlzZmSE+cS+jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY5PR11MB6487.namprd11.prod.outlook.com (2603:10b6:930:31::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Thu, 24 Oct
 2024 19:05:02 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 19:05:02 +0000
Date: Thu, 24 Oct 2024 12:04:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 02/12] drm/i915/xe3lpd: Disable HDCP Line Rekeying for
 Xe3
Message-ID: <20241024190458.GL5725@mdroper-desk1.amr.corp.intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-3-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241023214701.963830-3-clinton.a.taylor@intel.com>
X-ClientProxiedBy: BY5PR17CA0003.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::16) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY5PR11MB6487:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d4b05ed-6b02-4e21-c137-08dcf45ec388
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JbzhRXZpwCUmRXDtdGFxtwO4UWbioSVRviyeByL+TxniL1uNerzoA2U4CjjA?=
 =?us-ascii?Q?RGsHM5P1rdL+9p1/Ckwu4Gx3IFJmBqkUYfvRpC29PR1/SWqqs9MRadpQM03S?=
 =?us-ascii?Q?hJp3vjrzLdYWVMCGQM8A5t6UnSBFRBF4cWFxsiJzmMbW3fCw/wGpSN2BJDBr?=
 =?us-ascii?Q?XnDptkwjAwbdkLGZAaVO+IXWoFWDuyZgJlemKw7dR+kylBcwLeXyNVofF0vK?=
 =?us-ascii?Q?YmE2eSRDvRvDDwt3ZZ2sO0GxgxVEGvwHEClibiImNWjKAkXKu6egwNpH9L/p?=
 =?us-ascii?Q?pGRDZi6NPh5iwX+9PWbPE0C1uAu+BvyBEsMBgN+BI4OT998QDz0hVS/T4X9u?=
 =?us-ascii?Q?ogE4bGR3XGUfh3A5iPxXC8uiS0nkZE8tux1ViBYBR6x04MavwVu9OP39b4b9?=
 =?us-ascii?Q?GpQ7fGXHl6hn9tfGtb4nOoyZlA56MrUeiGfxE28S0NmJ96aeCJJ9cpCSzEVN?=
 =?us-ascii?Q?+8HgnUEJ/UFAVfToie4BgLMEUio79fffGs8+0lpr78P6EoyxWeIXTt1IPH+j?=
 =?us-ascii?Q?6tHdj3PgBqolxgkmIYxA9wBfzVida6Ttny6H3kLw7sohRh1Sh2RJMGUiPtgL?=
 =?us-ascii?Q?e+dUmADio/W1t9V2YmpQ2nm0lpvhbIE891uarmrQwftQvMglGH6wOJAFg+Ef?=
 =?us-ascii?Q?baoXk9vqhJPIZboy0MkkRTcYfMbbpNKhdoiZXYD8CTjAoQw3AbrdONL8th4B?=
 =?us-ascii?Q?hqONty7lALnh7rp2zVApkySQFqRBagqKq7hFrlUXHLISTi9av9Ey/RGy39FU?=
 =?us-ascii?Q?W/mWKyAmnjFsGkviJEBOY90s+3Yn6ksEi5kEq5ps/n/Icc//ZhVyvZh0LovR?=
 =?us-ascii?Q?3YtBSUzDjwiRN42Yq4K/JkB3LsxPtaT5WzpMWeecP9yVEDIc3yqIz2VZdyL1?=
 =?us-ascii?Q?90i/Aw7vPpb/BbY/mDsD61X/OJmMOKooWcS1VDtWWMkDt0yVFMUjy7bfNKlc?=
 =?us-ascii?Q?K4QLPb3UyS6cNmLOkmU7WsOsgQyxuG88ASMvhc94IbuEcvgaHYiURQF9zy91?=
 =?us-ascii?Q?CjftrpwtH/2NmNLatCpDZ2rX2t9QLicOnv66vkHISdOW3WkXj3X/Ajr3uqmU?=
 =?us-ascii?Q?TulXZdhktGBOarq0nFOQW7oXpYqVcYJJCe7/89ZfWNNyvb+Yz0kHNxO5VV2E?=
 =?us-ascii?Q?UlEWKKf2DNJNLvXUO6cOOMI0iKGTMoT/O3J70q/eX9t6AymjVV94Cup6ewIh?=
 =?us-ascii?Q?7vOjGDy7Z945/XG9051GBW/TXnMRoCgwXFUHoW+AWkcDBR3bfn3vgBeZ+ivY?=
 =?us-ascii?Q?OSG88KyOO3IIrF73Ke6vm542ZYcgeqsvLx7rmwvtm6LnRhOYRkHWEs0RUsGR?=
 =?us-ascii?Q?44w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dEDgbpLzE6X51zl2mBpj8oSeY58Fm1LMgcm0q0puIL1e1zfZIj2xwCoxcbIZ?=
 =?us-ascii?Q?rMxxnxTTqzCkkCByAfD4qGc0tDAJL6WCcdss22LHclkT40vCfpmlo5kQLTZ2?=
 =?us-ascii?Q?thpbw9rzwVNo2UC6etE7zYT9UPgdBEiS3nQtehgVCHDLnZALU47v4cNdnSPT?=
 =?us-ascii?Q?s1Mx++kLzwpIMCTbwSBJ4/udV/Y5rv+S72FXq+HNK31mTbLBFtu6cUb8T/8N?=
 =?us-ascii?Q?LckE4xtqbe9CAY8wwI7xcVPhrEv3ofcfFL55X3gSkWc5x41MTTUGK6wDuitc?=
 =?us-ascii?Q?o6yRVpICjv497KQZvrGRPwBw4yasLd+ZrL1ez7eqtnWPdh9EjVKTciDghVvu?=
 =?us-ascii?Q?NqYiOg2g7qMlyqVJ+FUKvG9Z47ZZoZYDrhC6iMOm4P7rLkSb3Uoe3pP6DCXy?=
 =?us-ascii?Q?vDo+9d/ELY5NlUfgldRuFIRw7Y1YivYDudfYqH4b6ZLKlZFmRXypDiM/SeDG?=
 =?us-ascii?Q?ecAb9cSnT/0awLn+0FlyVYCW4AhU1vI0YH8K3eJy3YOvsOVIvW87wE3Rr3eQ?=
 =?us-ascii?Q?CksJrV/rwFYfqHfGONqB8djlIVkuj+JT9Y+dhWAwNp2R9L1h5JTVabpzrr46?=
 =?us-ascii?Q?6L+RMd7aEftqG7T7Z0pQc189DLOZHFmHT/Mx8JbLvf9dfyMFpsFy5sF/sGg1?=
 =?us-ascii?Q?cj4z5ui/YHW2o94A3XJnPnTd+1JgXRcqXLKuG1Dwz7MMPXau9CmZXn/H24lZ?=
 =?us-ascii?Q?Mmrd6E4ebK3shoYXT2pJOcNCAdAfLM4MAioFK9uA4DrUPF53VaR3jM2QooOE?=
 =?us-ascii?Q?66eX5GDBXJDxwGHEfTovdUPkDZB4l6/gMfA8bS6xnzW8cTXDREpM3Hbz2cfi?=
 =?us-ascii?Q?EJTnMf0K8ENdcO7CcYi0SghAevBehjHFlOsbRrIIL2fPzjb/WV13mxULvTWF?=
 =?us-ascii?Q?1HpyOKQDvKKmax9cyv15ArOxIL+WwomAIK553BJZ8K81w90vY7zjzwmpbXxh?=
 =?us-ascii?Q?ISPewO7vAlYl4Bv+y2lYnZyPR5ufNJYv+ebBjfi/Y/iYsToWc3rFdWQg4vJP?=
 =?us-ascii?Q?Qv4r+EYN2FU6bDEsiQBaqC/bKbOE+OMUowGBtOpQUja16QvrpTNih80TbceK?=
 =?us-ascii?Q?mnJKlx0a5HK9l/FjPBK5gTeMSW8L3k8ZJhq1HHti8Pmb+WFwApcUOEzHJTha?=
 =?us-ascii?Q?37Xzeuqfg21vMhEih1LCFf3RaSa9EHsoy+Q1b/pD+7GRdKza0/rE2TS22vlm?=
 =?us-ascii?Q?+yVbvsFuA8SdOKFlGWXHGPY4YQYkj96FFcg4RWBUDuO/KD21SHrFHyPffzJH?=
 =?us-ascii?Q?U7N7zgQiud6hZt/SqyXpftCSO3Q6iN3IKLwJznyocuAuXlOHN162tXotJwLu?=
 =?us-ascii?Q?8wJnESX41AT1PAtGWr/XgigBzlzCAFYNmkcWc+pXO/659VjFAFlU82Uw03RR?=
 =?us-ascii?Q?lItSDd873428Muxb0iLejNFOnYaoJFYBQk0Nsf4xfF05Pe5YGj68ESl1Xd37?=
 =?us-ascii?Q?xyxykzX+CzDfVt0GpLipo7ow44QrQaedmshc9hw0ZxEkmADhz4jchZZ8U+I7?=
 =?us-ascii?Q?ZhHVVvBwrfacnET5mSjUBg5vqk9VfuLl4Qrg3cCsK0Gg5iZBhe2mowSUhelP?=
 =?us-ascii?Q?KDnYYpaLCd6kTj7Whx9YDCLUX0a852+X+mgCyt4bHsu7alnNOqi1BckpsGQ2?=
 =?us-ascii?Q?Ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d4b05ed-6b02-4e21-c137-08dcf45ec388
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 19:05:02.5655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B8wBni73EYDrpys4/9uSYrc9cpcrag16LrUJCgQU/XC5NEgTx8hRWofFk95Ffs13fIr3+NWOTiMUqOSLgbp0tLpt8pJhwgSXsQozwADIlaE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6487
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 23, 2024 at 02:46:51PM -0700, Clint Taylor wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> We need to disable HDCP Line Rekeying for Xe3 when we are using an HDMI
> encoder.
> 
> v2: add additional definition instead of function, commit message typo
> fix and update.
> v3: restore lost conditional from v2.
> v4: subject line and subject message updated, fix the if ladder order,
> fix the bit definition order.

Copying over my feedback from the previous version, since I think this
new series was getting posted at the same time I left my comment:

"""
This is still missing the "why" for this change.  Is there a bspec
reference that gives the details?  From the description of the bit
itself, it sounds like the setting here (for both Xe3 and earlier Xe2)
should be based on the HDCP version rather than the platform/stepping.

As mentioned previously, this entire function is labeled as "/* WA:
16022217614 */"  If we're now using this function for something other
than that specific workaround, then we need to fix/move that comment.
"""

> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

BTW, for all of the patches in this series, you need to add your own
s-o-b line at the bottom as well if it doesn't already exist.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++++---
>  drivers/gpu/drm/i915/i915_reg.h           |  1 +
>  2 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..70dfc9d4d6ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -43,14 +43,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  		return;
>  
>  	if (DISPLAY_VER(display) >= 14) {
> -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> -			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> -				     0, HDCP_LINE_REKEY_DISABLE);
> +		if (DISPLAY_VER(display) >= 30)
> +			intel_de_rmw(display,
> +				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> +				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
>  			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
>  			intel_de_rmw(display,
>  				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
>  				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> +				     0, HDCP_LINE_REKEY_DISABLE);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 89e4381f8baa..8d758947f301 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3817,6 +3817,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_PVSYNC		(1 << 17)
>  #define  TRANS_DDI_PHSYNC		(1 << 16)
>  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
>  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
