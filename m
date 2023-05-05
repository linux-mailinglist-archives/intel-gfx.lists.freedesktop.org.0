Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8CC6F79E2
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 02:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9EF10E1F1;
	Fri,  5 May 2023 00:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E974D10E54A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 00:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683245058; x=1714781058;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IzGPGshtriFvh3Zh+NywmcSpe5ohv7wWsgWjtcrho3A=;
 b=ilAGUaucQs4o7BQMo789YEdF0T3yIAFMh8MtdNE7ZPFjTZS7woH5x2pN
 w4X+D4oz2NwkhxkJbMh6JFMye0NHPQXlYQj604FWbAFBujJm4f9R4TIi7
 i9FlwBJhDYealXjAFoWRBHlOdDcWkIQXWkP46YU2bRW0zt7+Gq5lZnMqU
 lilV2e6YE0HwYoJ4/yAZQd8ZH/FLdGF+Lbl41gCXOMtUvySbagwtd8XsI
 P20+4oDKhxRIH4oO3opxKy0KaIrWmZIInMYfm7EZ1VtsAvfvWThnOTSw0
 0eRsg4f3j2ImoKVpcQzXX27TgpTixWd7Yr3qWjrYNKS5W7Ue09KFX6dpY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="338267747"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="338267747"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 17:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="1027184832"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="1027184832"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 04 May 2023 17:04:16 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 17:04:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 4 May 2023 17:04:16 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 4 May 2023 17:04:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e8Ezdb5Cf1VrPjvnhLwTLwExsZwSvjklFxwXtdSWMSPJO081x18jMXSAqlxgpKRN7yenc4IDpJvC4AyQK6Cml0oMCIBkjlrzNKA2tPxKRWxdbnAFVLpGwkFR7dFObOJ4sKoa2r221dqQv0NYPeQt/5M1HOZHiHKJXfwRrH46Rw7CEV/IDEaFIQFcxnguYHdVrRuOvjtGAhzJaNGh7j+ydIrFd6/cxF2lf1iLvrc00sN1qsLGfvcBKqyIJPk2nCglNBWhQekpZgbhNlpRI+TaixQhH7MIy3WYh2ICOUGGrxwQRRBG5ENKVUeP3wp7hQ1MVQwEL9v4UrBq9RiX+w5Tmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rwrmnHrzalnMCLAO/4xfXrcLzck6JqSKdYWD1HZCNZQ=;
 b=KT7sD28mOvoassgQYeE1XS1Yxx6VexXsbSl1vRp1zHOrVhYBiFRoeYI6oUESOIgkzSFvGrCFomjzwIQ9nfyDJ0PTDy3bzRxR06AWL5cwFPszH/ELoePOHvnE9Y7FzoFNUOnnFa3QTlhNDnGLzVB4WLBW6TXhfRan7wFuPEzuYlYdwOKFpFZFWoNTadYiwCglARR/tZm4pFNgndRtw50E1HLqR84fElJSDPnk1RMrHy8r6Q1nBmBErg++Mu4vdY3pHJdKA+u67njmqPuC4s5sQX+tOV9KebVx3PoMeTmUQANzQpI49vNQOi0aRakseMxj/9o7TXGj063Mvg+ildJjaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CO6PR11MB5652.namprd11.prod.outlook.com (2603:10b6:5:35e::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.26; Fri, 5 May 2023 00:04:13 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%7]) with mapi id 15.20.6363.022; Fri, 5 May 2023
 00:04:13 +0000
Date: Thu, 4 May 2023 17:04:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <20230505000410.GH6250@mdroper-desk1.amr.corp.intel.com>
References: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
 <20230427150016.1566833-2-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230427150016.1566833-2-vinod.govindapillai@intel.com>
X-ClientProxiedBy: BY3PR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::15) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CO6PR11MB5652:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e9976d2-7c1d-416e-e9ac-08db4cfc4299
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WxMfm3gYvuVUAOEXmo7iOzA9sVBDyc5KsAm/TSRrsvs5vpiyrpM7+JWy9/jmUl2TLJY3igQU1VpfXeuWl3FOuxtcoIfLGzU0qgrSSwf2Fxbr5ioRPE16nF/vvhsG8RsbN+9Xqpnw9pttjlhDOHbOf9N62Klv01wa+e8zZz2eVtgOyvxFbnDnETNkyk6UTg8QoeDhBtFcJHgmLhzx6cWN4azykI9mJ/TQW/niTDtNPTdqMqo9/5As3qFbEuEmXNyt+U1d6vMvrUHSTYbAfzSSSfywdJNMvAYaLkqYYSZv9QRY86rCzxZhax5aN+Nt1WYN0hvhuMe5npt5ESvNHOvhc2jHuNW9jfszdvuHSKFMXfjzVO0qFAbLHg2z36serQZJnqNV/Q9urEXAySz+AfltaK3QV42HOo4KN9JekN/LnkECbZf6L58mRMz8vbyaYz6uPY15PbgJAVflc29mpm9STkfh3pql/nXKyFoOD1v7ewkkqKt7ip9TS88Ap0WhwZs8a8hw78djmLVk23naRII9IxlNt+/93kCPAS9nufTikUZZU3p+GIn9ATL5ksgukzgf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(396003)(346002)(376002)(451199021)(478600001)(8676002)(5660300002)(6862004)(38100700002)(8936002)(82960400001)(86362001)(26005)(1076003)(6512007)(6506007)(66946007)(66556008)(6636002)(107886003)(6486002)(83380400001)(4326008)(66476007)(186003)(33656002)(41300700001)(2906002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OAMG1NjucpVvi1y5cnJ/vYVS4ow8G/7UqpscltViJXwMLIlkc9ysyfkHV4fD?=
 =?us-ascii?Q?JurozA5K11pFuStDIdU+SYifbaT2x32/AOD8hAgiYWI2W/FHYDivNEyRnxpe?=
 =?us-ascii?Q?75nVg2/ufl2DwYW2XTLoIbM51t3nYTAA7Wi2IXArAWqeiIqPGXrq37Icrbfu?=
 =?us-ascii?Q?ZQEJHymA78Uw6ElKKPhQjxaO6DcCXm0ebc2AJmGMVTlwtQ4dRXX6HB4EahPN?=
 =?us-ascii?Q?C0r2paefYg/etW99f9Un0Cj8wFYXuDwl8W7gDaTsviebIJQFbR2WW8ZEfczQ?=
 =?us-ascii?Q?1HaIN0qxFKQRjRmYCkF/60HKakEVb3GOTV3v26qSVdezOgTrWD/L/DD41rMc?=
 =?us-ascii?Q?Do3RF0k5tLw5JVZTXwpLym2s5GvsEJ8vcQnjlwSx0t5pqe6nyZauYu3AKC76?=
 =?us-ascii?Q?caKILwf19CcmumwepvcMjnBKW5iZw48Nftd4pZE8SXyGeFhvMk40utwiWJ2q?=
 =?us-ascii?Q?XeTdcbauIKMUmBWOU8AfYoIFpmVsGJEx8LEDUN7Hyw7g1FAs2Wle554PluYt?=
 =?us-ascii?Q?hxLyVcwFDZSfywyR0dBPkcOIjgHltx45ZWiqMvG4vtBpuFbCzOVKRfIpDFt2?=
 =?us-ascii?Q?zM0nSzQ4UfMnBdlInuCu97ZmUOzumWj4dIQKt4Fn0iiAuHqdu4fIthvAzx9s?=
 =?us-ascii?Q?H3CMk90wR6FS7C3saIu2uGaydZezZPGkMirW8Z0vKurQtVNjKBxRwojaf5Zh?=
 =?us-ascii?Q?63QRwybWOo7WSMJ287K3dptRoQF1/j4VzhSUAbWemsPqVZSGXnhsjydx/MRI?=
 =?us-ascii?Q?fYnz6QX3GP0W61HJeRW+IFCM9/S5SbRhDKNnG7T8Fei5eZbdldxiVTXdUMqg?=
 =?us-ascii?Q?JsrVP1sYXUb7EvyVQdLKjiffzZGVqHIEE2gk+Oym8R+T4acK6ttftWaOONQB?=
 =?us-ascii?Q?3/2uYw4YFS5ftu+PhtIaNj8tLXAEdjF+vMe2qtFmMkA0s6Z/4d3Oy5GrVNXr?=
 =?us-ascii?Q?eMmpOyrI+YmKktMI+Fw2hlQDQzQF75tzlsvzPk050GdktWKDBXTXjOFqzqF8?=
 =?us-ascii?Q?Bgi3cft/6vvsmdsPbY2n8Z0pelrIDGxF8xu/scNmC2/hBSrVtFHvJyH7UIc8?=
 =?us-ascii?Q?UhQJFvTQNgLUy9NSMidarSg8AwYoHPnYPTX5BfpsRdQUQpHld5a5/OxV+5cL?=
 =?us-ascii?Q?s1FDZbdMMpjGHRbn89umCsIHUIA+REVIGIjxxGhQu2E3SBW9BZjkwoZTHCt9?=
 =?us-ascii?Q?ILusWYpFHe1V7BNGozj0DmBB9evpDuErxqCybqc3AIRxc5KiOVe0nlAyjmrb?=
 =?us-ascii?Q?0LQtrLpWJX8pWav5HQW02ivc3/xmRHuhkXJrssxNffVN95+kAwRlYn+0JkCK?=
 =?us-ascii?Q?L5/PZvE3NW7C2vmVfl4XRoimKh8k8T7Vo3d1Eib4qt9AIpJSio2vjTbci1xd?=
 =?us-ascii?Q?j/sy3DqQW+wlGmFt+bAb7I45E72SGiBFi6xsSPmjaHZW83/1/ksrvsa3zztx?=
 =?us-ascii?Q?KDlrirg2zKQi+nCSY4Emcu4CwnjZ+SjzN112ZeSJtj+8y64YYp9k1kIK/r6w?=
 =?us-ascii?Q?PID7dOVTGCOO4SsQbTeSFE5h8sPBCTZrZP9n9c9bDM8gi02AxPIhK1nnvk6H?=
 =?us-ascii?Q?jlCWHtN5ZbBB1OlfkehOquFTWpVSe+qg0ktmj+kXGgrzFbat0zQImOOJeWsz?=
 =?us-ascii?Q?hg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e9976d2-7c1d-416e-e9ac-08db4cfc4299
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2023 00:04:13.7675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZQjFcWgPb/hzaaUYtLAGea1iRvo4f81dvCkpSmNlHtX3nJXjduCgojzgs3dosEND9CrZ15gCcKtbhGdpBngsYRzT5cjoFMTh3f1I2CZmhl8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5652
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/8] drm/i915: fix the derating
 percentage for MTL
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 27, 2023 at 06:00:09PM +0300, Vinod Govindapillai wrote:
> Follow the values from bspec for the percentage overhead for
> efficiency in MTL BW calculations.
> 
> Bspec: 64631
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Looks like the bspec was updated with this new value on March 30th.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 597d5816ad1b..ab405c48ca3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -379,7 +379,7 @@ static const struct intel_sa_info mtl_sa_info = {
>  	.deburst = 32,
>  	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> -	.derating = 20,
> +	.derating = 10,
>  };
>  
>  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
