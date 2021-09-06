Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7458F401E0A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 18:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F3F89915;
	Mon,  6 Sep 2021 16:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA7A389915
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 16:05:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="207224940"
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="207224940"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 09:05:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="691728829"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 06 Sep 2021 09:05:11 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 6 Sep 2021 09:05:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 6 Sep 2021 09:05:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 6 Sep 2021 09:05:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 6 Sep 2021 09:05:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PmKzZS+wEPMXRgZZwdqu2fG1le9r8Dke8gRnIK5oGmi4bK6twW9HAszCxGDcjIag5Kqls3gvw8QNjyxwIGrp7EAJtCcIodejC8kgh01/1FnNLezgBALLsGy5Wu6TyJIa09XX1yCRGQz9PNKDYqEbs0maDuW7oyMTiSC/oCjIS1nTBLamWilL2pICfljRCI40KG5cPOy5+vxqYmwAbJRWAs7uLMhOuhwLE9rU9YbIvwi54bMAEHGEUQ/N1BkKLUlj7EP9yHqo5hQWgcgnyg5tPU7cBtrvuGuC5BEQ85VGc2mS/snupkMNkE2bRr/46jJYso6ppnlHYFy/Z3FdyEpJTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=RppC5Ft8WIzwyIQ4/cNbu5st0boGEREoFflG9wO3Hjk=;
 b=KI3Q4BIsKpxxAFOOw+Bj6LjiUD3YTEfwvpR+beHeV3ugRFFyMaIbII9+kxM8DfIqBywAX9iyvxS7rp2Dv8wQFR+7MCXFI2KcTwKp7g/wwimVusNODzDkks0tv5cSFMYuep8SW3LDl7+WjJ8KVl8dGA2LSo2+MrLoSyZCNU6IWmTXsAb8ypDScO9QFbd5YkQaWYVWnxhEhJRahh4tdOWYKZmhBHTnJeH9sckLHEs5mfPzCYP5TFGE1/omA/Hv56oZ+QgNlZ6bhPbIOWeKwozDRQQwW9UrU2V/7//ExGoJvFfiBV3j1DY9l3uw5rdPMd/84dH6cU9RELCy+091zgyq5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RppC5Ft8WIzwyIQ4/cNbu5st0boGEREoFflG9wO3Hjk=;
 b=n+D7QYiDKHy3rzlDOBcq5LC3r0LGB807AQGrU47GDuRwTt4K9BOd9TQvVIIzDr0X89WYSNLoSE5V4tmKd0catw++sWk53pGJ5IgjLv/xyYaXPj7NSZZL9XPWv2qxumLy/Wlmwle2vaLQBzO1s3HeFLNNJ99FKicTy665vOmKVZY=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5425.namprd11.prod.outlook.com (2603:10b6:610:d0::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Mon, 6 Sep
 2021 16:05:09 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c%5]) with mapi id 15.20.4478.025; Mon, 6 Sep 2021
 16:05:09 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210825005840.170796-1-jose.souza@intel.com>
 <20210825005840.170796-9-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <eb2c43ed-a515-e5f2-4489-10810b8b4dd6@intel.com>
Date: Mon, 6 Sep 2021 19:05:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210825005840.170796-9-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0282.eurprd04.prod.outlook.com
 (2603:10a6:10:28c::17) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.185] (134.134.137.82) by
 DU2PR04CA0282.eurprd04.prod.outlook.com (2603:10a6:10:28c::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.23 via Frontend Transport; Mon, 6 Sep 2021 16:05:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 770961ef-169d-45a1-10cf-08d97150196a
X-MS-TrafficTypeDiagnostic: CH0PR11MB5425:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5425DAE1B1868BBE7B2F7746B8D29@CH0PR11MB5425.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:191;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: upwjSvetLjQXr+6mQFZoMzSnGMZqL43iRavbtJkBXfrfVQH90U7mREgKeMhNiT33cT2m50VReuob9HXCcjwDi7k3xN5GsvlY8VooWpK4vZll0kPrOG4W0HgicnpSuTGNHGup0tPrztzqdE2HZRjDTmb5ZWzEpXEl1yUQOa7LYEVs4VSskmpPqf4yEuUG9R7Yo0WPDCj/PT30Zpu82n9/fua5Zj3xVy3YPaDAYpgaCNt4W0AJs6lE7FdhXf/VDWnHTwV/sRM7+Uo3A1guoYERMEZLR3oWmf6UivZrZWuAHxJwAECh4j2ucB/DmTNY+mzrz2z+t2ilikuazwx/ziCToZY6uUn+2Sh5B/FWJ2Fre46xN+Nbbv1hhOmeMZdr7UgJDUItagtKYjSXh4dCzArZ2PQ++rYJO/kdvdBycxKTuG5coZ5f9mlJwiapXLLshQ53d/KGmrTmcMFQDNfpCgGQXlB1MoahX43wRPjViUt83g0Qz2BnS0y5TNksHCSXGqwl6mf0/7TB5Au4CR0FctyQYLXICWyqdXYHL7Uoy8vTzppn4FOurqDaqWzav7++3OmbCCOKHsOUAr2/npTso7SS+LDHWzqJpE8ocjz3SaVGpuY+G6Kollf9ASYHX7Ze4ru0nyw4pmOfbr5S/Ml3QWJ0lnnWt91HEuFcNrOiVdkqD+yFdpy2+00J2FFMr0JV1Dc2zUnQmku5JOrnrQ3duoHzcs62URVzgMmvnA/Wv6MQAuc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(346002)(39860400002)(376002)(366004)(30864003)(53546011)(86362001)(66476007)(6486002)(8936002)(38100700002)(66946007)(6666004)(83380400001)(5660300002)(8676002)(2616005)(36756003)(956004)(2906002)(66556008)(316002)(16576012)(186003)(478600001)(26005)(31696002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STM1L3JYWklueEpTd3NibDBYSU1nMVhwdlZYOXNBTXllcTg5VVZ0SldJdEM0?=
 =?utf-8?B?M0tvcHZnWTBkN0pGUkRTK3RJK25TUUFmcjkvTWthTEFhRUdYRmRjbTdKYzFn?=
 =?utf-8?B?WHJ0NTVIM0E1K1cxb2ZnWlcwQWJzbmhqUkxJeHhCejhXdmFTZ3E0bW8wVXQx?=
 =?utf-8?B?RWRlR1NIM3BjQWlHTVBZVUloQi9CMzdsL2hSWHBlZnVHR2hzTzdqcm5ieXJ3?=
 =?utf-8?B?b2lRNFByK0h3QWdRdFAycFBsOWNEZ2FObS8wT2NZaFZJbVo4M09jTzExdnVy?=
 =?utf-8?B?NG96cWNjMFJoMHdCS0tWc1RnR0hMT3FNN2d1OWFCcGRURXFvZWgxOUROZTNr?=
 =?utf-8?B?cXNZY2tRUHBxMzlpUVRzT2VMRzFjNzV1L3FFU2MzQW5yV0F5MDNocmlDZTJN?=
 =?utf-8?B?RlIyY0d6WVpLWEQzdGZKbk14ay9Db2s4NDRTemtKanJRMjlseUVhSnE5cWFM?=
 =?utf-8?B?a0xyc2RUL2M5c2JhUTBETjFPU0JiUGtYVGtIQnpjWHJVSUtVWDlrejJ2ekdl?=
 =?utf-8?B?OU5oWlBTNlpGYTZkdlg2L1BlaUtxOFpQbVB0L0ZtL3JCL0Z4YXQxZzN1R0x3?=
 =?utf-8?B?SEorMFZFQmJBeEZLK3gwTC9xc3I0dVNvNGZEZjlhUTZWdnVvaFdoUSt1MkNj?=
 =?utf-8?B?RlJ2NnJsb2N3aXlScUdMeWkvVDFpK0U2SG1maTBCWUkzaGROL0p4Qjdsc3pD?=
 =?utf-8?B?YVREUVNFZUF3R3VLOW1MaktLeEJGbmF6UEFEUUJ3YlgyM0xMOVhBbXpKNnM5?=
 =?utf-8?B?aEVuZFZnMmpCaEtwRjFTQisyZWY1aWlod25yRFBMWnFmMjBZZzlyNGhFVGJs?=
 =?utf-8?B?MVhtbWljSGdpYUswdGJlTTFmSVA0WG56UmYrWWhySk9SZGE3cGd4U3FJaDVE?=
 =?utf-8?B?WWw2SUR5Yms5RDJOanFpQksvVk1IWnkxTGRmeVBPRWJ2TUE1NVZGdUwyUVdB?=
 =?utf-8?B?dEVRaklBYTlBcEJ0aytLaWFRbUc1cDJaZ05ZUFVPdE0wNGU5eHJCVXQvZFJN?=
 =?utf-8?B?U1pOZWx3T3gyemw4eVhJMVFyOU5YWnF3RTBDdVdETWxRK2t5cEFGcW5mREZB?=
 =?utf-8?B?RGFsSXE2Zmo1Y3h2Y253RmdVVFU3UVk0SXhNdEYvT3lRRzhONXYwSU5VVFZo?=
 =?utf-8?B?Nlg0MzJ6aWtZMmFtMFkyV3JYNkwzR3JrOS9NRUJ4Y0ZtbHNEckRIUVVibVhF?=
 =?utf-8?B?a3Vudm5LbmRFR1FyYms4VlJvMFhab3QxMzNpNGx2dUZyazltdUlLME5Ec2xG?=
 =?utf-8?B?M0h0Sm9kL2NiS2VkajVYdXZaMDIrSm0wRGQwMnYza0FsQk5pQTNWTWpZay9E?=
 =?utf-8?B?N2NPUzg0alFhMUNhT3p6VlVLOTZRUnBTbStoT2NjbUJ3czA1bnBqSEJ2S2d5?=
 =?utf-8?B?QW9CZ2FCZVlWdVBHNDN1Tm80Z0tkOHZBbUkvNG80b280Q3pKMGcwS3oyamVx?=
 =?utf-8?B?WUt5T1ZiN2dpZWh2ZWcxZDU1S3QwRVAxZDZ2MkJGRkJSaHRhTDA1U010dm9U?=
 =?utf-8?B?Ynh6SzgvRjdXcjlXVlgrR1h5TThya05mZTJLVTdFQUFZRituNW9sMElaTUVD?=
 =?utf-8?B?ZzdEQ2Y1QTk5aWI5NE5EU0VYNWY5K1ZMMjhRNTdGVTBUSFhMcDd3Z2xHNFRw?=
 =?utf-8?B?RGp2L1h3VThmcWlGbUxyRmgzMWs3NXg1OStlQkxpRnRaTnNIRkV5VmZYaXJ3?=
 =?utf-8?B?VmZaeHRra1d2TDhPZEJEQjdDc1dwblZXNVYrVjQyL1RpelJoVFhleDhlb2JU?=
 =?utf-8?Q?UoIAWnZZudyODjHq+R64pf+vuOPjkb593wk++rk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 770961ef-169d-45a1-10cf-08d97150196a
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2021 16:05:09.0864 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HTLqCG/DvMYKkceUI3d4VigBLLykIkSAzNALYzwcL3NMZ6PZcvX23ao6r05L2mcGA3uy1yg7JB/kh/u/V6KxcO6HmwOogERl5pD1+fILpro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5425
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 8/8] drm/i915/display: Drop PSR
 frontbuffer rendering support
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

Looks good to me.
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 8/25/21 3:58 AM, José Roberto de Souza wrote:
> After commit "drm/i915/display/skl+: Drop frontbuffer rendering
> support" frontbuffer rendering is not supported for display 9 and
> newer and as PSR is only supported by default in display 9 and newer
> we can now drop all frontbuffer rendering support for PSR code.
> 
> Some DC3CO code was commented with a macro, because the function
> caller is being dropped. As DC3CO is already disabled by default
> because it requires changes in its sequences
> 
> Two DC3CO functions lost their callers while dropping frontbuffer
> rendering but as DC3CO is already disabled by default because it
> requires fixes, will leave this task to whoever will fix DC3CO.
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  |   2 -
>   .../drm/i915/display/intel_display_types.h    |   2 -
>   .../gpu/drm/i915/display/intel_frontbuffer.c  |   2 -
>   drivers/gpu/drm/i915/display/intel_psr.c      | 186 ++----------------
>   drivers/gpu/drm/i915/display/intel_psr.h      |   8 +-
>   5 files changed, 18 insertions(+), 182 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index ca819f9e353d0..6d733b276d5b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -374,8 +374,6 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
>   	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
>   		   enableddisabled(enabled), val);
>   	psr_source_status(intel_dp, m);
> -	seq_printf(m, "Busy frontbuffer bits: 0x%08x\n",
> -		   psr->busy_frontbuffer_bits);
>   
>   	/*
>   	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c2725d07b9303..18616435dcb18 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1512,7 +1512,6 @@ struct intel_psr {
>   	enum transcoder transcoder;
>   	bool active;
>   	struct work_struct work;
> -	unsigned int busy_frontbuffer_bits;
>   	bool sink_psr2_support;
>   	bool link_standby;
>   	bool colorimetry_support;
> @@ -1523,7 +1522,6 @@ struct intel_psr {
>   	ktime_t last_entry_attempt;
>   	ktime_t last_exit;
>   	bool sink_not_reliable;
> -	bool irq_aux_error;
>   	u16 su_w_granularity;
>   	u16 su_y_granularity;
>   	u32 dc3co_exitline;
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 3860f87dac31c..1d8314d3712f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -93,7 +93,6 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
>   
>   	might_sleep();
>   	intel_drrs_flush(i915, frontbuffer_bits);
> -	intel_psr_flush(i915, frontbuffer_bits, origin);
>   	intel_fbc_flush(i915, frontbuffer_bits, origin);
>   }
>   
> @@ -195,7 +194,6 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
>   	trace_intel_frontbuffer_invalidate(frontbuffer_bits, origin);
>   
>   	might_sleep();
> -	intel_psr_invalidate(i915, frontbuffer_bits, origin);
>   	intel_drrs_invalidate(i915, frontbuffer_bits);
>   	intel_fbc_invalidate(i915, frontbuffer_bits, origin);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 3f6fb7d67f84d..8c9bd5846a8d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -224,15 +224,12 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
>   		drm_warn(&dev_priv->drm, "[transcoder %s] PSR aux error\n",
>   			 transcoder_name(cpu_transcoder));
>   
> -		intel_dp->psr.irq_aux_error = true;
> -
>   		/*
>   		 * If this interruption is not masked it will keep
>   		 * interrupting so fast that it prevents the scheduled
>   		 * work to run.
>   		 * Also after a PSR error, we don't want to arm PSR
>   		 * again so we don't care about unmask the interruption
> -		 * or unset irq_aux_error.
>   		 */
>   		val = intel_de_read(dev_priv, imr_reg);
>   		val |= EDP_PSR_ERROR(trans_shift);
> @@ -614,14 +611,6 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
>   	intel_de_write(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder), val);
>   }
>   
> -static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -
> -	psr2_program_idle_frames(intel_dp, 0);
> -	intel_display_power_set_target_dc_state(dev_priv, DC_STATE_EN_DC3CO);
> -}
> -
>   static void tgl_psr2_disable_dc3co(struct intel_dp *intel_dp)
>   {
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> @@ -1177,7 +1166,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>   	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
>   
>   	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
> -	intel_dp->psr.busy_frontbuffer_bits = 0;
>   	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>   	intel_dp->psr.transcoder = crtc_state->cpu_transcoder;
>   	/* DC5/DC6 requires at least 6 idle frames */
> @@ -1784,36 +1772,6 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
>   	}
>   }
>   
> -static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -	i915_reg_t reg;
> -	u32 mask;
> -	int err;
> -
> -	if (!intel_dp->psr.enabled)
> -		return false;
> -
> -	if (intel_dp->psr.psr2_enabled) {
> -		reg = EDP_PSR2_STATUS(intel_dp->psr.transcoder);
> -		mask = EDP_PSR2_STATUS_STATE_MASK;
> -	} else {
> -		reg = EDP_PSR_STATUS(intel_dp->psr.transcoder);
> -		mask = EDP_PSR_STATUS_STATE_MASK;
> -	}
> -
> -	mutex_unlock(&intel_dp->psr.lock);
> -
> -	err = intel_de_wait_for_clear(dev_priv, reg, mask, 50);
> -	if (err)
> -		drm_err(&dev_priv->drm,
> -			"Timed out waiting for PSR Idle for re-enable\n");
> -
> -	/* After the unlocked wait, verify that PSR is still wanted! */
> -	mutex_lock(&intel_dp->psr.lock);
> -	return err == 0 && intel_dp->psr.enabled;
> -}
> -
>   static int intel_psr_fastset_force(struct drm_i915_private *dev_priv)
>   {
>   	struct drm_connector_list_iter conn_iter;
> @@ -1912,16 +1870,6 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
>   	return ret;
>   }
>   
> -static void intel_psr_handle_irq(struct intel_dp *intel_dp)
> -{
> -	struct intel_psr *psr = &intel_dp->psr;
> -
> -	intel_psr_disable_locked(intel_dp);
> -	psr->sink_not_reliable = true;
> -	/* let's make sure that sink is awaken */
> -	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
> -}
> -
>   static void intel_psr_work(struct work_struct *work)
>   {
>   	struct intel_dp *intel_dp =
> @@ -1929,75 +1877,30 @@ static void intel_psr_work(struct work_struct *work)
>   
>   	mutex_lock(&intel_dp->psr.lock);
>   
> -	if (!intel_dp->psr.enabled)
> -		goto unlock;
> -
> -	if (READ_ONCE(intel_dp->psr.irq_aux_error))
> -		intel_psr_handle_irq(intel_dp);
> -
> -	/*
> -	 * We have to make sure PSR is ready for re-enable
> -	 * otherwise it keeps disabled until next full enable/disable cycle.
> -	 * PSR might take some time to get fully disabled
> -	 * and be ready for re-enable.
> -	 */
> -	if (!__psr_wait_for_idle_locked(intel_dp))
> -		goto unlock;
> -
> -	/*
> -	 * The delayed work can race with an invalidate hence we need to
> -	 * recheck. Since psr_flush first clears this and then reschedules we
> -	 * won't ever miss a flush when bailing out here.
> -	 */
> -	if (intel_dp->psr.busy_frontbuffer_bits || intel_dp->psr.active)
> -		goto unlock;
> +	/* Handling PSR error interruption */
> +	intel_psr_disable_locked(intel_dp);
> +	intel_dp->psr.sink_not_reliable = true;
> +	/* let's make sure that sink is awaken */
> +	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
>   
> -	intel_psr_activate(intel_dp);
> -unlock:
>   	mutex_unlock(&intel_dp->psr.lock);
>   }
>   
> -/**
> - * intel_psr_invalidate - Invalidade PSR
> - * @dev_priv: i915 device
> - * @frontbuffer_bits: frontbuffer plane tracking bits
> - * @origin: which operation caused the invalidate
> - *
> - * Since the hardware frontbuffer tracking has gaps we need to integrate
> - * with the software frontbuffer tracking. This function gets called every
> - * time frontbuffer rendering starts and a buffer gets dirtied. PSR must be
> - * disabled if the frontbuffer mask contains a buffer relevant to PSR.
> - *
> - * Dirty frontbuffers relevant to PSR are tracked in busy_frontbuffer_bits."
> +/*
> + * TODO: Functions below lost their callers to a refactor but as DC3CO is
> + * already disabled by default because it requires fixes, will leave this task
> + * to whoever will fix DC3CO.
>    */
> -void intel_psr_invalidate(struct drm_i915_private *dev_priv,
> -			  unsigned frontbuffer_bits, enum fb_op_origin origin)
> -{
> -	struct intel_encoder *encoder;
> -
> -	if (origin == ORIGIN_FLIP)
> -		return;
> -
> -	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> -		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
> -		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -
> -		mutex_lock(&intel_dp->psr.lock);
> -		if (!intel_dp->psr.enabled) {
> -			mutex_unlock(&intel_dp->psr.lock);
> -			continue;
> -		}
> -
> -		pipe_frontbuffer_bits &=
> -			INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe);
> -		intel_dp->psr.busy_frontbuffer_bits |= pipe_frontbuffer_bits;
> +#if 0
>   
> -		if (pipe_frontbuffer_bits)
> -			intel_psr_exit(intel_dp);
> +static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   
> -		mutex_unlock(&intel_dp->psr.lock);
> -	}
> +	psr2_program_idle_frames(intel_dp, 0);
> +	intel_display_power_set_target_dc_state(dev_priv, DC_STATE_EN_DC3CO);
>   }
> +
>   /*
>    * When we will be completely rely on PSR2 S/W tracking in future,
>    * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
> @@ -2032,62 +1935,7 @@ tgl_dc3co_flush(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
>   	mutex_unlock(&intel_dp->psr.lock);
>   }
>   
> -/**
> - * intel_psr_flush - Flush PSR
> - * @dev_priv: i915 device
> - * @frontbuffer_bits: frontbuffer plane tracking bits
> - * @origin: which operation caused the flush
> - *
> - * Since the hardware frontbuffer tracking has gaps we need to integrate
> - * with the software frontbuffer tracking. This function gets called every
> - * time frontbuffer rendering has completed and flushed out to memory. PSR
> - * can be enabled again if no other frontbuffer relevant to PSR is dirty.
> - *
> - * Dirty frontbuffers relevant to PSR are tracked in busy_frontbuffer_bits.
> - */
> -void intel_psr_flush(struct drm_i915_private *dev_priv,
> -		     unsigned frontbuffer_bits, enum fb_op_origin origin)
> -{
> -	struct intel_encoder *encoder;
> -
> -	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> -		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
> -		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -
> -		if (origin == ORIGIN_FLIP) {
> -			tgl_dc3co_flush(intel_dp, frontbuffer_bits, origin);
> -			continue;
> -		}
> -
> -		mutex_lock(&intel_dp->psr.lock);
> -		if (!intel_dp->psr.enabled) {
> -			mutex_unlock(&intel_dp->psr.lock);
> -			continue;
> -		}
> -
> -		pipe_frontbuffer_bits &=
> -			INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe);
> -		intel_dp->psr.busy_frontbuffer_bits &= ~pipe_frontbuffer_bits;
> -
> -		/*
> -		 * If the PSR is paused by an explicit intel_psr_paused() call,
> -		 * we have to ensure that the PSR is not activated until
> -		 * intel_psr_resume() is called.
> -		 */
> -		if (intel_dp->psr.paused) {
> -			mutex_unlock(&intel_dp->psr.lock);
> -			continue;
> -		}
> -
> -		/* By definition flush = invalidate + flush */
> -		if (pipe_frontbuffer_bits)
> -			psr_force_hw_tracking_exit(intel_dp);
> -
> -		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
> -			schedule_work(&intel_dp->psr.work);
> -		mutex_unlock(&intel_dp->psr.lock);
> -	}
> -}
> +#endif
>   
>   /**
>    * intel_psr_init - Init basic PSR work and mutex.
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 641521b101c82..58e2e5c2b81ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -6,7 +6,7 @@
>   #ifndef __INTEL_PSR_H__
>   #define __INTEL_PSR_H__
>   
> -#include "intel_frontbuffer.h"
> +#include <linux/types.h>
>   
>   struct drm_connector;
>   struct drm_connector_state;
> @@ -29,12 +29,6 @@ void intel_psr_update(struct intel_dp *intel_dp,
>   		      const struct intel_crtc_state *crtc_state,
>   		      const struct drm_connector_state *conn_state);
>   int intel_psr_debug_set(struct intel_dp *intel_dp, u64 value);
> -void intel_psr_invalidate(struct drm_i915_private *dev_priv,
> -			  unsigned frontbuffer_bits,
> -			  enum fb_op_origin origin);
> -void intel_psr_flush(struct drm_i915_private *dev_priv,
> -		     unsigned frontbuffer_bits,
> -		     enum fb_op_origin origin);
>   void intel_psr_init(struct intel_dp *intel_dp);
>   void intel_psr_compute_config(struct intel_dp *intel_dp,
>   			      struct intel_crtc_state *crtc_state);
> 
