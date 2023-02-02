Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 200D16876D6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 08:56:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A2DF10E03A;
	Thu,  2 Feb 2023 07:56:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E3D710E03A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 07:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675324590; x=1706860590;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fQHuVjqmt4LMnywZv0hh2b2r/GR+4RPA5tUzcKSRJDI=;
 b=Fd1XW5PbM0Iqpn1FPP9KheHK+WX7amRiGb/4NfQ+fUCX68XUSka2RNiP
 TnXHfdSDKB7D58ovzHDvbPuSSk5yYb5gZ8B2IXwTLX9EBe0sUIGRxWq/N
 BEKxGiH9mFv5/Njcu7mDlBDXZGD12ey5/mahn7Jf3sT6uPxI4FxYMdPZt
 hPKAYRHJ3JnDloZAgBDPjhPYHlV3x1VpFwtFRZvb5ZVp//Qk6wnuXIqoA
 quP8ODAtKtOFHSQ6S0El8IP9oyYDIBHL2EI39lqHGCbaqximuCoEHwS+Y
 PdD1XWAEnapk60QlL/+vc+Xb9pn+22VhL4haKjzWKk/drVOMPZKhDYFjF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="328398279"
X-IronPort-AV: E=Sophos;i="5.97,266,1669104000"; d="scan'208";a="328398279"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 23:56:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="697599163"
X-IronPort-AV: E=Sophos;i="5.97,266,1669104000"; d="scan'208";a="697599163"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 01 Feb 2023 23:55:50 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 23:55:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 23:55:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 1 Feb 2023 23:55:49 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Feb 2023 23:55:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlE8tKg7LZTisuxcQ9jNljkVshQc3l4aV5M7iRF8R4gYzU0Unvog52DN+U3kARBvj35jgGiMaxRIT5gqER+u4m+q0/VrizzXTRxDM2Gt3oLC+Cl4/RsFdOmPyFrZt5/HxZqNkdCuxihO4lfWQCX8iJNvqaisqlkziMyK9dq52NL7gHLTmrYbTTil3+eNz2jMJoAEB265JSOeEG1nZuVkAmxA0QaUK6WyhByqZxKKBbatRVqGsvW0OPgwcn8EfZZ/gyN0qcn62bJAvh04kkMrBM+7PZOiLW/IxhUjx//mjWZFAp3kOSjRekREzg1cSWidnA4wyQ6zaZ03lqwqEwpf7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jpWLpHthOZYPeiDVSFyAGnZ7Ethy1NlTPPybiUPcFDo=;
 b=hmdbSufk0Qd2XR6OQroNffNUC2FHoahXP5LWGDKlVLoGico3Z/Vth5ac1+1Cmq3W6yZ5Hlm8pv5XNb0DVjR5n2pKlqHQEzwMreOZdhrhSoypZGT4pYqc0KGArpLBUgyRFIz2r7ltZ23sQpIMk25gcgpOA5A2q5kHQVK91eukb2P5WKXrpdcqVm6PwTTmQVZEQRjQ5727Def6RjzUOJpU6yrh1Q2fWOnh4Ziy+9VsBEJoSZlmPUQ4TGhA3i2d3HLKUNR9egwYmkG1PDXqOPXoKyWYbm/PrkXvjP+Lc9B2uqokKHlN2B6szq23xpgvCgj4qubMkfJMjT+MmX1vwctvDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6278.namprd11.prod.outlook.com (2603:10b6:208:3c2::8)
 by SJ0PR11MB4943.namprd11.prod.outlook.com (2603:10b6:a03:2ad::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.28; Thu, 2 Feb
 2023 07:55:42 +0000
Received: from MN0PR11MB6278.namprd11.prod.outlook.com
 ([fe80::cbc8:47f3:a8c0:f974]) by MN0PR11MB6278.namprd11.prod.outlook.com
 ([fe80::cbc8:47f3:a8c0:f974%2]) with mapi id 15.20.6043.038; Thu, 2 Feb 2023
 07:55:42 +0000
Date: Wed, 1 Feb 2023 23:55:39 -0800
From: Harish Chegondi <harish.chegondi@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <Y9trfuArLcU/ySIg@intel.com>
References: <20230201232801.123684-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230201232801.123684-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR05CA0163.namprd05.prod.outlook.com
 (2603:10b6:a03:339::18) To MN0PR11MB6278.namprd11.prod.outlook.com
 (2603:10b6:208:3c2::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6278:EE_|SJ0PR11MB4943:EE_
X-MS-Office365-Filtering-Correlation-Id: 2fd82c91-6f21-48b1-15f8-08db04f2e1d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UkJf4tbVMuhb5TyJW1V5vHFcbA7t+VfUpyv//naXvLu0TOxVpoc03NgAjEzxVtWuzJOUs/qdlqJIC5tQ86UkRQ1uPzDuatwQlpjmiNzvwdHz3IgDmDU4Buf0TqizMeXBk7yCuDlf5/dfuzJ7kFcssX4xur5f4ZAQiQcwfkjj8CNvZKAmAUmC9CPdy/HeACrb5G0197LCony33D3coPYtIKDFMq8kEIOgHwgoUHb/USw5SAslWAQAsbltx09xCDNLhZuP40ZdZ9/twXQvtC3xqphrtylDma2AIYCbdcKqCT+a8eTaiIbqQ+V77ZyX9CdLZ2DHhmiC8YfZcQ4PtqkU82lM6/O5DoKjG5z1ooEsc6I3wkMEqaKvYKhBfrtI91mVULjdhAxjRXEZqBzZG/9HQHQWVPqrsTA+iaiCE7UjN9YzsaCW5pQPZ5Gbp4ddiutEVX4HdFPZp0J6ZPiP8Lypg2Uf1gwJVxm9mBU/nEEcOilnuXfF2L5kXaa4koVg6UhTKB26AnOxnqOFMugDICeYChZNn51sUvr/U4JhI+7WYtdmmchdRmcvxqaBcih/pPJH6h71iVzAFcXjHL+enGXg+5A6m8Am8yZdBnDXJRq5G0gaffOE46MdHSdjRzYRLQiKpMB+HrLIc9YX69MXMxZi3g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6278.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(366004)(346002)(136003)(451199018)(66946007)(66476007)(66556008)(6486002)(4326008)(8676002)(38100700002)(86362001)(36756003)(6666004)(83380400001)(186003)(26005)(6512007)(6506007)(2616005)(41300700001)(8936002)(6862004)(5660300002)(6636002)(37006003)(316002)(82960400001)(2906002)(44832011)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUVEMm5uTUhSQWNDS0JYamxtRTZpL3FYaVpwTHloSEFSTGFWb20yZ0ZzSk9G?=
 =?utf-8?B?WGtkejhRbUFXdUdWd3I1Z1dpNzFJVEU0L29lQWJkT2NZdWRCVFdhaDUrZ00r?=
 =?utf-8?B?VXFPTUtMclVwNGNWWHBwVXBqNGZZM21lNW9abW8vZFkraG14T3dlMGlsdGND?=
 =?utf-8?B?eFNZZm9tMkFLTHNlNm5RSGI4aFdlU0RSSEVpQnRWYVJpVlUvdmZGWjRrR1ll?=
 =?utf-8?B?Sms1MS9iRTAwYjREbHkzRjZHQzJUblFSbTZYT2pUY053WkR0Tzh3S25hZ0FM?=
 =?utf-8?B?UHM5K0kxUG42QWFjQm1YNWFyZnV6WVovUEo0TUc1dG5remxFOHV5WmRVTC9a?=
 =?utf-8?B?YVF4Y1J6WVpGTlJsR0U4OFlheCtnT3R4c2xHTy9LUXNjUEwzR0QvNGVXMStJ?=
 =?utf-8?B?MUNVbmRnNC9iUVZ1cHdjN29CUzk3RVpUdXJmYWtyS1NjTUJWcFNZMXFKdWRM?=
 =?utf-8?B?M2s0dHFnbmVyTkI1WFJrSE1NdXhpNDlSMFZNQmsyNm54cGlCTTYxS2hrNVZO?=
 =?utf-8?B?d2F1RFBERmFaYzV4eGFVSkRRWEtSNmtDaUtjOHdpa0JZWWYzNy9SeUYxQnFl?=
 =?utf-8?B?N3htQUQzWm1qekFpVlJTYWtUcWpxK1pHdFRWUk5YV2xaSWJBMkVTVDdJWWli?=
 =?utf-8?B?Sk0yT0JwSG10WkxOeVgwTTMvU0R5T3h1K0NYYjVUN0JqSTFBMHpaekI4UDR5?=
 =?utf-8?B?enQzbTcxcWtGNm1BTFlsSjQ3R2pWdUwxWWUwcTJ6YWh1cmlDWmRrTmVjaEsr?=
 =?utf-8?B?T21nRzQxTTNEWlV5c3V6YXEzVnU4Snk3MlpnVExPRXlOd3N0Wi9ibjRRb0ox?=
 =?utf-8?B?RTZubGJYT1J1czJGNjAvYmk0S1plS3ZlWStoMzVmODRBeit4eVpyZGFTalRk?=
 =?utf-8?B?NkZZYnZSWjVhMlVScUdhc2ZSNmdwQjM1d1FqdkxkU0hSZXFnL2tyR2NUWHVS?=
 =?utf-8?B?OGEyTC9yb2FySlJtMjkrZDlBWDFncWJzWDdkNllXZjBQYVBCMlhqZjNxQkJG?=
 =?utf-8?B?Y0Evdko4OE8vQjNMbm1LdWkxL1NPWVhhS3JDTlBMOGtDbFl1OFBmZjB0NU9O?=
 =?utf-8?B?OStEZVRJa0svYVozejJHMTRpMHVsV29yT29HL05xVkNobEwyWUg1dUZOTzM0?=
 =?utf-8?B?STBJMnVLZlNYRWtJdzV5MWxLVGFxc3R6ZlFDRTIwd1Z6Lzg3VFIyRmVjUHRF?=
 =?utf-8?B?WS9vMTRUVTl2T2w2U2VIUkQ2UXJKdUJsSUNsK1hoZWZSNnN4OUNTOVRESGor?=
 =?utf-8?B?VFZ1eWgzYW5LSkRDOEo1ajN0anJnUUFBdW5YZXdJMTRDL01MOE5XM3cwSGJ0?=
 =?utf-8?B?T1VSWGNRRFY3Q3BaOEZYQ0djamVkR3lpU2R2K2FESUdoOTc2UXc3R3pUNXk3?=
 =?utf-8?B?YjVITVRlQVJHRHVJSjJ3MWR3UjBTU1NDb0g1Vnh5ZzYxd0R1VUJsaDcrdVpX?=
 =?utf-8?B?UDJ2ZHVoKzF4TzlOeTdoUGNPOHI1NWhJRmwraVJmZEVFSS91WVlla29ON1ly?=
 =?utf-8?B?OHVjOW1JU1RhVGRLdVh1anhtbktTWCtGZ0dabVZHUmNNZGkxS0JoTXJGWU5o?=
 =?utf-8?B?anVYMUlBVHRQcDUxU28raWJib1lveTV3Tis3YUxVMy9taEU2Ym5JSXdhM3pC?=
 =?utf-8?B?a09oY1kybTBENjJTeldiQ3dXSHBOOTZ0OGZMODM5aStCVm5FMjh0aTVJajVD?=
 =?utf-8?B?Q2hlUnFjaDZONFA1Z1ZwSG9YbGxVSzV4VWtLZG5iSm9paVVPWXl4emJld0Ir?=
 =?utf-8?B?ZVEzNzRiWTdObE04UzZqcGhheGNLUGJlYWlYYmg1ekpVNm40OFBzOFgyTDJR?=
 =?utf-8?B?d3ZiVzZXL3RZOFRab0xJU0JKSWJXQkZPZmNXNjRjYkJvdS8zRTU1NHByTDRV?=
 =?utf-8?B?LzQvaGoya2ZuZllIUXh4WDBobm9YOThnN1A3cmdJeW9ZS3p3cUlKSmFCcHdF?=
 =?utf-8?B?WmhoWDdDeFVqQ1ZGeWJzUm5DYVhSbXVPd1ExY2ZHb200NHZGWGU1ZDFIeWdK?=
 =?utf-8?B?bUZyTTdjdWpvVXAwQk54REl5aFFJaWl6TkdZYm9uSkN3RUxCdVVxall5UVg5?=
 =?utf-8?B?TGV4UEFOZy9hZkVaMEdNWnd5SEx5eFJqWUFQR1RhdXliYkpLMVpoTFVsbmtM?=
 =?utf-8?B?R3RjNFhUUXVsTDVTZkp2b0h0RmI0Nk5XN0E5aHdzdjVrRDNDbmlEeHBtaXpw?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fd82c91-6f21-48b1-15f8-08db04f2e1d3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6278.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 07:55:42.2079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XB8K0ySA1A5CyhR7jM6rpww+X/Pi2cc8zpn8k2mkPB8CF7SLE16/6XaMHpQhBe9134pZq9uSAA7H26BurnfR2UPEwDOcC62UcNc56R3eRng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4943
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix memory leaks in scatterlist
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

On Wed, Feb 01, 2023 at 03:28:01PM -0800, Matt Atwood wrote:
> This patch fixes memory leaks on error escapes in i915_scatterlist.c
> 
> Fixes: c3bfba9a2225 ("drm/i915: Check for integer truncation on scatterlist creation")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Harish Chegondi <harish.chegondi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_scatterlist.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.c b/drivers/gpu/drm/i915/i915_scatterlist.c
> index 756289e43dff6..7c7a86921b1c7 100644
> --- a/drivers/gpu/drm/i915/i915_scatterlist.c
> +++ b/drivers/gpu/drm/i915/i915_scatterlist.c
> @@ -98,8 +98,10 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
>  	st = &rsgt->table;
>  	/* restricted by sg_alloc_table */
>  	if (WARN_ON(overflows_type(DIV_ROUND_UP_ULL(node->size, segment_pages),
> -				   unsigned int)))
> +				   unsigned int))) {
> +		i915_refct_sgt_put(rsgt);
>  		return ERR_PTR(-E2BIG);
> +	}
>  
>  	if (sg_alloc_table(st, DIV_ROUND_UP_ULL(node->size, segment_pages),
>  			   GFP_KERNEL)) {
> @@ -183,8 +185,10 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
>  	i915_refct_sgt_init(rsgt, size);
>  	st = &rsgt->table;
>  	/* restricted by sg_alloc_table */
> -	if (WARN_ON(overflows_type(PFN_UP(res->size), unsigned int)))
> +	if (WARN_ON(overflows_type(PFN_UP(res->size), unsigned int))) {
> +		i915_refct_sgt_put(rsgt);
>  		return ERR_PTR(-E2BIG);
> +	}
>  
>  	if (sg_alloc_table(st, PFN_UP(res->size), GFP_KERNEL)) {
>  		i915_refct_sgt_put(rsgt);
> -- 
> 2.39.1
> 
