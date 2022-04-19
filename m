Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75885507674
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 19:28:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A267210EEB8;
	Tue, 19 Apr 2022 17:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE77010EEB8
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 17:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650389314; x=1681925314;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4R2WJf4X2221tugLl88xSrdpNHJe87WZ05VdOLuBVjg=;
 b=jKeokDc7m723Va6PCc8kIHEBfN2gsZz5jA7JmMfatFwb7IBhDw7CKjjk
 Y3p54DmLj78q0w55NFLyC6bX769cwR59+VTWaD/F44VeavctzhMKUAqJ3
 sSwXgGOZ6GCr2SJTujZVdCICI+pIIMg8nMSMskrwPMSiwGdYFsmJ2XKBL
 7X2xzfYQ822rHvMOIdsjBoUqqckZndlG73ntF/Qbbke/qaDUzzBGOjL8T
 MWUKbPUyiCfzpxFsX4sNZamCWaH7f+lzn5Q/Ubzz+B8wE6s5RZDulweX4
 mAQCygnT2QxI26j6rT3TSY/9lJk9NxFMEWFzd/tX5/y1ke3GYrMsb/pv0 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="244408202"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="244408202"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 10:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="530524321"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 19 Apr 2022 10:28:34 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Apr 2022 10:28:33 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Apr 2022 10:28:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Apr 2022 10:28:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Apr 2022 10:28:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aFy70UZhNF7jPkRoQ3qcl+WN0nZAeocKCKsMCJc6Q9kMp3O2EnfqIM0EYdCL+lc+wj2bj2GKE2cNhxSGcabF+DpI20pD+R5rih7TyPsurnVtw/15MagFydM6tgzr7pONhThgDxkPLwqFsoLU8STZWqKhzeUVIb7iut13awjwX/SsaZfo7b3xS1CT+K66Hm4lmGPtxucaViY+c9TUWNho7OmHV6Ey7fp8jBH0k5mgt8eZ56+8f4Qni6aSPv6Jm9P9n5DdtApv3uYWMx4WzmK2fTGC0EVZ7gkssVyg92wKv/UkcjOzHv3JL/6/R1tu44eFT4Q1UXK2hYl2C85QVzz1kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q2qHxsnXOS+KJ4ZuPCbNTDb0LjaSijFRqqohF9XQZeE=;
 b=gOT2SZE7vcI/Cx7BtG+j8QRrQuOYWrbrFQuPO1Hmuu4ruPl8HffQEt+XJdfW7V8SG/HLGGMdgv+jJv4CF1Pgp0nyRo5E9RzmCQA1Z3u8J250mBdX2iRdXKMjsCCeIFe19/+2cuN+N5fXz83yKaX295BZoJidwtGa+TfFK/GyVjOcqTh1VIcAbQQb7vyyzc4lCK+z//vuU7IGRMtceEcW9ytH5/iuvYYgfAzycJly0RqBpvKN8HQOKVIOeY6wStOr/X/i/SN4kgfZzIuaOeyDDtbI4rzBl1wHjl00mP3X752vRJXCuFQXQHETQHsZAdlYOvmUUdxY8VXs6d1PdKr/2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BN6PR11MB3954.namprd11.prod.outlook.com (2603:10b6:405:79::35)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Tue, 19 Apr
 2022 17:28:31 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001%7]) with mapi id 15.20.5164.025; Tue, 19 Apr 2022
 17:28:30 +0000
Message-ID: <a4ed45eb-d5a5-9feb-2ddd-037d08db2679@intel.com>
Date: Tue, 19 Apr 2022 10:28:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.0
Content-Language: en-GB
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220419000737.420867-1-daniele.ceraolospurio@intel.com>
 <20220419000737.420867-7-daniele.ceraolospurio@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220419000737.420867-7-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0061.namprd03.prod.outlook.com
 (2603:10b6:a03:331::6) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab3579b1-c2de-407e-936b-08da222a05ab
X-MS-TrafficTypeDiagnostic: BN6PR11MB3954:EE_
X-Microsoft-Antispam-PRVS: <BN6PR11MB39546B10483F2BCF360121A9BDF29@BN6PR11MB3954.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uMS3uWMEcLSbj0AvCG5rWEagGCd3/owJVZf3KnMJg3At64s/vTlNb8ohWI36XBjhB2XqZ/YhO9tmJN+nJUW8AY3YMDgD9uKXf7cINK5PtbgXLrEsbnl0QaP4oijc3MRFBsZMSk5+iDEdgxAGoILC1vCwgIdHCBGPvQzzxSPJzihjwLWBmm2LCfmy4yf4VEOnMGuIwZy1BPnaRLXeGxwpUXjtpYpKtCe1AMb5HMNe4J33VqAF3aIdVtude0sIAK2Dvpofy8CaASGiJHy8EJDNwob2zvpWqFLuE09TmYQkMwKrXkchps9XV6I55b5OH732peQ2PXeoZZOSGG6fd/d+VXGByNTkSyq0ZMS7SUlEdkHK8qeRtUrUhDGZoNbW/G3yzzwivMNLXODIKSDpq8k5P11DSyWyHprwI1OplTBJ3kqCW+6h3ywUKryF/E5LYZMERct0Jfc8BLOKvfvxKMCqLYZcNGKAEmyOATfh2DVEBFafknBDQt9uCdmpYR2vaIQHaWFpWTdJmjEQayoHz8v7XwSm7PlA2VfWZcpjRz8Z/HpBY1UsYxn0O+P9J3g3NHfvNJ2e3buJRX7x8lLH/fUufhCaOZ134+fB4xYmbKMjkEBII/57GEOUVxDA3edpHO2jetjZCGabBhup+2zWlU9D+9ysszQkpq8Zp9yP8ZmYK6gMg3/KXy+lzLnCblMfMjeAMlIf+kVNlGu5RNkEqUXviEQfWQqRqTFfMc2t6j/Lh8w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(8936002)(2906002)(26005)(36756003)(6512007)(53546011)(66946007)(38100700002)(66556008)(82960400001)(4326008)(508600001)(83380400001)(6486002)(8676002)(31686004)(5660300002)(66476007)(2616005)(186003)(31696002)(86362001)(316002)(107886003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3FqRkxCaURTaHRRdGllMTZwQUpwR0NIS0pBd1Rya1BmZjVWOVVTY1NoQUFB?=
 =?utf-8?B?RUNpYW9tVlNpbG96NEhwZHI4VlZSWlpOemtpQ2NSVWhGRy9nK0w5aUd4WkJo?=
 =?utf-8?B?MlpUSTNXZklwVWtxeTBXUjFUWWx4a2NQd3FiN0FGYWxSSjI0RGRRVU45L25x?=
 =?utf-8?B?ZlVtUjhualZEUjlSNUErMXNtVGpvUEloM0owVmFHUXpTbWlHYUxZWFIwK09Z?=
 =?utf-8?B?R2RxbmRqN3MvVXc2WlF1MzJRVlE1R3VsdzZQVUxWVExiZkltTXVaZUgvOC9G?=
 =?utf-8?B?QUJPL0p3VXdIU1BOMGVjbGZEMUpSdmZPTmdzTVlocWZ6ZVR2bDZBMGRQMDhE?=
 =?utf-8?B?enl3TzdjKzh1RSt4ZGJ3REpTYVZxSEd5WWUwaHRveXYvRTRhcnlxQXZoTWxY?=
 =?utf-8?B?RHFreWNVN3lEN3gyTXBmc05uRFlrYnp4emZBdGtwVTByWWdrS0M3MzE2TVdF?=
 =?utf-8?B?d2l3b2MzeU44WDNwMTEyRE81RVR3VXQyUkUrTkVxR1VhR2dVYUFndE81bCtQ?=
 =?utf-8?B?SnBLSndOMWs2ZGFKakxXL3I3K3FDWVFqSS9ZWjUxZC9PLzljNkx0V01uRE5M?=
 =?utf-8?B?TkUrQjFldGVTZW5zYk1KS05MRUdBYVRXZDBlazJPSXJCdFF6eXZSdDF4WFlS?=
 =?utf-8?B?MzZKMXdmT1AwSTdUVThxZ0I3RzM5L2xPM3FpM3pJaHB1VTFWSUpQUS8wdHUv?=
 =?utf-8?B?bCswTWRLV1o2SkozWmhIY0VjdGZiRmtNMFNlTjBydHhxRGptYXIrNVVOZTEy?=
 =?utf-8?B?TUlhVUU2OGdxekI1ZXFzby9ZZjNUN3RPSTZDWFk2aUo2TVAwcmQxcWpjV2JV?=
 =?utf-8?B?TTdMbTNxVmNQU2xBVklGNURHQW13bHFwWVJsUmUvSUdobDIxeUsyek1iQXpH?=
 =?utf-8?B?bjAxWWJ0THdPSWlvdm1UWDZsMGwyRjQwbUU0OGdIOUxHOEx4TzdUaW8yU3Zy?=
 =?utf-8?B?U2NFODFrTGtiZlVWRWU2bzduNENNaldIOXA4Zk1pR3lLS0Z0QXRFcEVyNWpN?=
 =?utf-8?B?WFlkSXJNZFdHOExqczJ2WDNvVjdyd25TRWhSdUZXTHV5ckNxVFY0VXlXRXJn?=
 =?utf-8?B?UjRHRENFZ0VvSStoZ1UwczNRanc5NmR1eWo5VGZ0dzkrYmhlVWNYSWV4S0Jo?=
 =?utf-8?B?NXRUUlY0MnJXWlFGTlZRZ01kb3pVdjN5RW9CM2pTZk5nV2NJankwU3BRYUNK?=
 =?utf-8?B?TWoxcEgwdUJvQTlMWE0xNk1TRnhQQmptdGZRd0hEeUpHSGp3RERjZEE1cUhC?=
 =?utf-8?B?d3NhSkpIZUlSQ3NTRFl6RDUweVNVV1VvbnFuS3FxUHNBdXh4QnM2b1k5WjVr?=
 =?utf-8?B?M2tWclQxWVVMTzdBckdKTkFIRmZiWklYNUNkNFgwb1VuU1IrRUx5cGVOOEpl?=
 =?utf-8?B?cTNHUXM1dWhSbVR0SG9rS29PdkdYMmNoZGJmMnRIYnBWNGlPM1VMYVg1OGVK?=
 =?utf-8?B?aVN1UXZtNmRMSk5Vbk90Zk1wSytwbG5pZnBraXNaWVhURm1Tb1Z0UmJHNEpi?=
 =?utf-8?B?aWFhb1ZsK0MxYVl0cWp0aSs1ZnFSUkY5WFZxQlgyb2VGNWJobGE5dlNOQXdY?=
 =?utf-8?B?dW5xSnNlbXptR2Y1eUZDL3pnNFJMUnJGbUc2Y3NyTHB4bWIyUGxkR2lqY3FN?=
 =?utf-8?B?aUQ4YktjMGI0Y29va0VQc1MyRTAzdHZIQlhLRzdFcEp0VlluaXg1Z3Y0bmpq?=
 =?utf-8?B?MFNBR0UxUVhrK2UrM095US9ERG9jbndhYm1hN2toOHVVdHZTdnVGZ1hraGZa?=
 =?utf-8?B?bkpxUTh1bjU0QWVpa3hwbENRMmtMYUs0Y3VULzlmY1hKSVZnMmtsY3pLSlFE?=
 =?utf-8?B?TFZnNEVUaGFWdmUwR0srdTJnSEMxZDNSMUJmNVhHbjZqVTZtNXk5bHg2VnZ6?=
 =?utf-8?B?TndVdk5IbTRzQmZ1bGJ5L212NFNkUGdEOERYNk04bS93OXFvLzB4M2JpYVRh?=
 =?utf-8?B?UzNIQllpbytZUWIyTzBwYnVJWFFmOGorbkNQZERoWFdROHJpS0Y5cUNaands?=
 =?utf-8?B?MDV4Q3VvekJHVHp3UFExMUo5S2xacXhlRXN1djlTV1BpZitMVk5uenFaa212?=
 =?utf-8?B?dktkM0Iyd3pBVHBaM0lVMkpNOUN5a0ZaZUNqS1Y0UmJkUnovZjhMTi8xT20r?=
 =?utf-8?B?a0FMc2lQUXlxL1lsRUFXMjFOSmtac01iMlJRR1J0UFpyMXdGUDNYZWVTTDRj?=
 =?utf-8?B?MDloSlRMdU03YTRITzBEQVlhYUdmWlo2Z1FLbTlxRUtlbmdmK0Z6VVN5TTdS?=
 =?utf-8?B?T2o2WFFUOVZxOTNPN0NlMlU3bUFBUWxuRndPdFEzK21MZmZIVGgzaGRqVzhS?=
 =?utf-8?B?dEZzK0Z4L1B1d1ZFcU9lVjA2THUwSU1ENjRPSmo5VnFJdmh4WS96UzRDd0Na?=
 =?utf-8?Q?dnST3vsPtfnVGtsI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab3579b1-c2de-407e-936b-08da222a05ab
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2022 17:28:30.8572 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JI7/s2nyK5u2exa8o7LX6ef3L8iK8IUX1slE8BBKH+SUhJbVSifZ/dvu7wNGPAzFmHbAOUmAHZ9NQbYsIUl9RWSTWQmu9OhRxBfqZ4e6aps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3954
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915/dg2: add gsc with special
 gsc bar offsets
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
Cc: alexander.usyskin@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 4/18/2022 17:07, Daniele Ceraolo Spurio wrote:
> From: Tomas Winkler <tomas.winkler@intel.com>
>
> DG2 uses different GSC offsets on memory bar
> and uses PXP head (HECI1).
>
> v2 (Daniele): Rebased to before the ATS patches
Have checked that the rebase looks good. I don't really know much about 
the GSC code but I can verify that Daniele's rebase has correctly kept 
the code that he previously reviewed as good. So based on his r-b of v1, 
v2 is:

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> #v1
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gsc.c | 22 +++++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_pci.c     |  1 +
>   drivers/gpu/drm/i915/i915_reg.h     |  2 ++
>   3 files changed, 24 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
> index 21e860861f0b5..0e494028b81d0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
> @@ -54,6 +54,19 @@ static const struct gsc_def gsc_def_dg1[] = {
>   	}
>   };
>   
> +static const struct gsc_def gsc_def_dg2[] = {
> +	{
> +		.name = "mei-gsc",
> +		.bar = DG2_GSC_HECI1_BASE,
> +		.bar_size = GSC_BAR_LENGTH,
> +	},
> +	{
> +		.name = "mei-gscfi",
> +		.bar = DG2_GSC_HECI2_BASE,
> +		.bar_size = GSC_BAR_LENGTH,
> +	}
> +};
> +
>   static void gsc_release_dev(struct device *dev)
>   {
>   	struct auxiliary_device *aux_dev = to_auxiliary_dev(dev);
> @@ -90,7 +103,14 @@ static void gsc_init_one(struct drm_i915_private *i915,
>   	if (intf_id == 0 && !HAS_HECI_PXP(i915))
>   		return;
>   
> -	def = &gsc_def_dg1[intf_id];
> +	if (IS_DG1(i915)) {
> +		def = &gsc_def_dg1[intf_id];
> +	} else if (IS_DG2(i915)) {
> +		def = &gsc_def_dg2[intf_id];
> +	} else {
> +		drm_warn_once(&i915->drm, "Unknown platform\n");
> +		return;
> +	}
>   
>   	if (!def->name) {
>   		drm_warn_once(&i915->drm, "HECI%d is not implemented!\n", intf_id + 1);
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 06e6dad0d7f71..cb6dcc3f48f4f 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1051,6 +1051,7 @@ static const struct intel_device_info xehpsdv_info = {
>   	.has_4tile = 1, \
>   	.has_64k_pages = 1, \
>   	.has_guc_deprivilege = 1, \
> +	.has_heci_pxp = 1, \
>   	.needs_compact_pt = 1, \
>   	.platform_engine_mask = \
>   		BIT(RCS0) | BIT(BCS0) | \
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 1dd7b7de60029..efcfe32cd8eba 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -978,6 +978,8 @@
>   #define BLT_RING_BASE		0x22000
>   #define DG1_GSC_HECI1_BASE	0x00258000
>   #define DG1_GSC_HECI2_BASE	0x00259000
> +#define DG2_GSC_HECI1_BASE	0x00373000
> +#define DG2_GSC_HECI2_BASE	0x00374000
>   
>   
>   

