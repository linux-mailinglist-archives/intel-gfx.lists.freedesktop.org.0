Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F9C7EFC38
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Nov 2023 00:46:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB0A110E7A7;
	Fri, 17 Nov 2023 23:46:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E34E10E7A1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 23:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700264816; x=1731800816;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4xiqJwSkeBtAc7Hp74zsL8nHcT3ZZxSlRkIug/nQVcQ=;
 b=csFEWnKg56I1VoQnNWDmOsEHZPRB8E1/JW2D87m5ydi593KyMNmi0aUb
 8wTku6z/D7PD283q9SxFRQAddhYOTshkjtAVm8W7Cb+RbBLWYBnWhHUOF
 vVm3WEShAQ6mIPBNejuvAMxB4XlvooJBUS1dY/S+x3Ja/1LbyuFgoMbZS
 Ds5apkI+ntUYhv/cj8OB9IRwjsqH6TRkhYINlIOdOP5+Ix9OGYlvLqjFO
 kJeAWZ0S/y9OCDLz6RSJAH2bAwImOoIbZ/7GOxz1DkBXw98B+oClZtC+c
 NxXydjJGyDSmPvRWCjLLEC8wRK4qUGPMBX+kucne0GSwLq1FWPD5nUq0j w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="4470704"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; 
   d="scan'208";a="4470704"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 15:46:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="715679879"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="715679879"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 15:46:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 15:46:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 15:46:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 15:46:53 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 15:46:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GSZYA14HxdOUB2lpaxqpOW8Ntwy3qXHXO+CrZEiRMbWYPgkBrFEDo/w89/SHKcGBD0qVjLch6ncQic7QbaN3FFu4CCUq6L7vZhQfPKOLvqB6z+qjuGi8m9N2kOyfDKPBNliPeVF3/gza87iWdhS9cElw4yY5qrPvHGALsa1C8HLsXJ1ZygSH5jq9u/1yjfRHTf/gpfOtrUmdroD5VUaGpj2t0XyNCEHy2VGnY/KpX0jsGX+hATqHyJBez7UNs0qTh9o7KBh0XP28bllN+mxKH7NYwbLL1c33E4Lrfn0mh8fCYVJsFcC3VAFm8A26fxiLyW0zd6mxYmGSkr7MMguZgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OBsosXhoz0+d8nPcPlmyXXWKsk824WdMabYb96nY3a0=;
 b=TURwIyXlZ4fbtWisTIZupXlHP80+8tf2nFXEqVWwJ0B3HCE8EtzEwQSvZxRMgcLROGlebnQPkgtmz441KSDbIYcZ7sfrPMnkLqzPZmyLbrZCA2wU7Y1lvoumNkExJna8Ke/Zs7LVq//CiB40sBZEarNB762tmWjfUg2/sPFp2QVCJCWuGzk4X15Cw9VdLKzWGeeZhK3GyrXwz9v6CoIN6+gj9xmjHfroNzDds1/JZMeXD3B0OQydeyh1gMZNx3CVsEBxUsRhlFcXiAXPYJNBlBGzezG/2g+BkCUlheOH0XKHjSqaDqah+MMi8DUbGN6RzQPVsSn4GGL34M0UpSW5zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by DM4PR11MB5389.namprd11.prod.outlook.com (2603:10b6:5:394::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.23; Fri, 17 Nov
 2023 23:46:50 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::706b:7540:497b:14aa]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::706b:7540:497b:14aa%7]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 23:46:50 +0000
Date: Fri, 17 Nov 2023 15:46:48 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <20231117234648.GC1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231111114320.87277-1-vinod.govindapillai@intel.com>
 <20231111114320.87277-2-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231111114320.87277-2-vinod.govindapillai@intel.com>
X-ClientProxiedBy: BYAPR08CA0017.namprd08.prod.outlook.com
 (2603:10b6:a03:100::30) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|DM4PR11MB5389:EE_
X-MS-Office365-Filtering-Correlation-Id: 737b0e7d-e4e8-4a28-957d-08dbe7c77836
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: md21Ymb9ODXX2UhUYOLwhf6qUEzmUh5tkxY0QXb6QfFOxcr+oK9Zhe8EknEVRuGmvNNZTUxgPJgESgnkDlCjI4eDwgUkDcMRT8mV4H88nwPrOQiwi28gPMr/urZ51MJJgJMBv1D0erwwSFBS1XtIYMoU5N1fRKpLeGVl9SAe4C0aOaK/+Mu/Et1PYvHNjjlIvfsF5LhF9KsWrYw4yBrATa0VMR1IwOeQB05ww5DTQU7JAuNMb+8q2m6OPYuBG/+WzG9uBa7zZdngLjfAh21vdlVveQ/g1ikRZph3jS3WultEhHhIsnJxc/laAz0u7ofo1qM7UVGDkw7UcLTUeoilskSX/PKbnNgABo9cctLrULB2RqtVBT2RltWTezCX+VsPyLQ/M2EFOwvBnhF/n5M6IwJQiDFOf68D/qDVJ5+47bpV5Azna5qpItOBfCku75H7c0CbYnLiSYh9Uq4BEqjU4n9ePGhrjzDRRxFX+uONNQ88/qRCVIyaU9myEspEptdVzO+7QxZCUzc+YbP4v/IpF4XNWuCjA83VOTUWJw5tbIynqmOCtdMn5snjj2uMi0/Q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(346002)(376002)(136003)(230922051799003)(186009)(451199024)(1800799011)(64100799003)(316002)(8936002)(8676002)(6862004)(4326008)(6636002)(66946007)(66476007)(66556008)(5660300002)(6486002)(478600001)(82960400001)(83380400001)(86362001)(2906002)(6506007)(26005)(1076003)(41300700001)(33656002)(107886003)(6512007)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XqDcFXnjTmXPBj0CuCViev6bEypMlMiVYrSduqof84bVh7SPOEkkq7j8PqST?=
 =?us-ascii?Q?ycAN7gpk+Qi+wNDp7uqt/mKAXTq203vnX+3Dg51JPwSXnj5MahVWx9j2TVPZ?=
 =?us-ascii?Q?YQU84iSTTfrEkyW/XjBfOe/9VjFtsxqqq9TSsOEgfqbZXEqZRDNzTxfnrkVh?=
 =?us-ascii?Q?KomzfM5aTgqCbDz19uA7XgVVZ3u/gTihJfv6mRy6IqqauCpfNkBNqLxem8Tb?=
 =?us-ascii?Q?rX1IKdCEE2ndQ98AxkVZwEK+9F6QwbTJMOJQ8bthY21XpM6M3TfSeUdfDPrd?=
 =?us-ascii?Q?V0x0ZfwDqjA2AabXgnmK8hPHy75lcn6b+OZ2uthIiA1JudrwdNG93AS80DuP?=
 =?us-ascii?Q?wA7OJfsOBZ+fk5Q9BsN6nTSrdze/PvO1DzyylJ7nB+fJQSRRd2JXgb0Q2PcJ?=
 =?us-ascii?Q?a+0uR3qsuUr9OigojPCHvU3qpvOHrmMjxS3k2DsbKPZTPvftfrFs/DoSjdpe?=
 =?us-ascii?Q?zVdRHvjeskFPlJz3VgL114XF10WP5teS69/bEKGjs7/8JJBo/2wVKrIi+7ns?=
 =?us-ascii?Q?hf+Q0x4LkYslwNj8Z2KxmFi0DhK9b7W+HvvBMmrIKz3sn28+rsQRfq+ImOX2?=
 =?us-ascii?Q?ynlSQNif7NJ0n22nYhIVhgMU0oS0UjoNFkhgEKMKQU4gbyotaFSic4Ne4YCz?=
 =?us-ascii?Q?67Svd228LhiolLEy2UEjflFGX7Ojiyjeu7kj72vLU7znVa1QjoWOj9S7fHrl?=
 =?us-ascii?Q?s59m0hE0JZx+Ds+dtWLzXjjNms22GPRAVHR67FRsk6HYnYh8nDb+Q1o77GTH?=
 =?us-ascii?Q?aAQw3ITVY+i/1ZmWloASBGi3nDyWcAO7B/76mxPQTGULxfQIc/vTxNvZ3gpK?=
 =?us-ascii?Q?XJi6+u87p0fNtT0kAnTDwzetUfMk5Sm1Blq4kn45W2SDjHkaJb6CELOjZCh5?=
 =?us-ascii?Q?N6ifQ4SPxK44BlXOug2uHnksrBTLBSxJX47mOVum7aoDlOqreSE8J07fFT+o?=
 =?us-ascii?Q?C9hrtQNxWLUhSlGvfvwMO7Kb8ztfD0xpLxnhe7283eI615SbmeHHukpAeMYj?=
 =?us-ascii?Q?5OYLA974dipZMCOvGkM67Yl3Df3hYzhUliQj2T93p9AcSkSg4QbNdwmguF0O?=
 =?us-ascii?Q?ssoSV2eaOgQQJ0ItmNM4BKJ4Ed4+Gbdjov9Pfvt3u/lkSouXCQY4J9bRzPp2?=
 =?us-ascii?Q?jQuH+9LZ3zdKPWA2EYQY5Dvb5qSU+83Oq8rXA6a4tGnym/srpw56TIg0VZ6m?=
 =?us-ascii?Q?zS41ZCl87EV5tYqdblJS/htEt7f/UT9bZ6FW/D9pb+iyGpP9un3K1KbXi2I1?=
 =?us-ascii?Q?DORcU3KT+0hD3oB8QU3FAZVLns7/B2xG6q1+4CLIRexgJc4XOzhUvf9aSyKi?=
 =?us-ascii?Q?ffLdeoaxbKEMsWnm6ZK1XGvvz0/IuuGDlnHetfvDvuQA2HhCfsiraxW+dEoP?=
 =?us-ascii?Q?hEYddkY8m1KXt5llL7Hg3kKN6TvOOH5LXChH+7Z2F1Jvl/fPXQEcDvOdHCb+?=
 =?us-ascii?Q?X39XZg+ekfXq/lRDaMlD80KBnkma1KK4fTvghyg1IkS4Ye00N+acYCiIOVhX?=
 =?us-ascii?Q?oBjiB7ki3dOQmTjfgdwi1KaO9Gfql+mSrAtX5f26G+ACvJ0XH7QNlIDEV+f2?=
 =?us-ascii?Q?nGzVQIrDSiSozZkALtj3xU3DcEchmtxmGaQeuzkrYnmE0dLrGrUtb+f+XqCS?=
 =?us-ascii?Q?Mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 737b0e7d-e4e8-4a28-957d-08dbe7c77836
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2023 23:46:50.6670 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xg0SDIVVsAj3mcd0mZRgwmLYZPhJ0rRjLoohWmVnSgKtEh10K9FOov995aglwBcrJ41KcUsySPSlhMwLN7AOjBqVXzJsSWsSKj2AVvmwYYM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5389
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/xe2lpd: implement WA for
 underruns while enabling FBC
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

On Sat, Nov 11, 2023 at 01:43:20PM +0200, Vinod Govindapillai wrote:
> FIFO underruns are observed when FBC is enabled on plane 2 or
> plane 3. Recommended WA is to update the FBC enabling sequence.
> The plane binding register bits need to be updated separately
> before programming the FBC enable bit.
> 
> Bspec: 74151
> Reviewed-by: Mika Kahola <mika.kahola@intel.com> #v3
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index bde12fe62275..b73cf1c5ba33 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -608,6 +608,7 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>  static void ivb_fbc_activate(struct intel_fbc *fbc)
>  {
>  	struct drm_i915_private *i915 = fbc->i915;
> +	u32 dpfc_ctl;
>  
>  	if (DISPLAY_VER(i915) >= 10)
>  		glk_fbc_program_cfb_stride(fbc);
> @@ -617,8 +618,13 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
>  	if (intel_gt_support_legacy_fencing(to_gt(i915)))
>  		snb_fbc_program_fence(fbc);
>  
> +	/* wa_14019417088 Alternative WA*/
> +	dpfc_ctl = ivb_dpfc_ctl(fbc);
> +	if (DISPLAY_VER(i915) >= 20)

Workarounds should never be ">=."  When they first show up in the
workaround database, they apply to some or all steppings of one very
specific IP version and only get carried forward to additional IP
versions and platforms when the workaround database also lists those
additional versions under the same lineage number.

In this case this workaround applies to all steppings of display IP
version 20.0 so we should be matching on that exactly so that we don't
apply this to future platforms where it isn't wanted.


Matt

> +		intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
> +
>  	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
> -		       DPFC_CTL_EN | ivb_dpfc_ctl(fbc));
> +		       DPFC_CTL_EN | dpfc_ctl);
>  }
>  
>  static bool ivb_fbc_is_compressing(struct intel_fbc *fbc)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
