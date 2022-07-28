Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8195839ED
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 09:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AABD11B6B3;
	Thu, 28 Jul 2022 07:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7792110F3AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 07:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658995147; x=1690531147;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U3Y1qow+zMgpQaD11dWpycIlSP7JNcftb4XNH2NtKoE=;
 b=k6DQ9ZYLGucZCkI/GjSwrDZ2/2Dhoz4PCQt/O3S0gR3XjvgQuUugCzg7
 KEzC9/S6dh63p5C93/JpZzEmj+z7H5o2aPZgkLIRu//cQBBxu6ORMH5QF
 kUT/eb5D0rni98Mjbax6/xsrI9Xo1kLdY19jGmkPdxryCIuRfbemYg2UJ
 G9DNSxVn2+EuWvr43U1vCfZVqTMYaDpIhbnuZ+Zd7F3fSXd+sMUJPCwqY
 w20V4oOCPfzsVvNnUACrrrj0D/0V1zEON/6kU6pVfRqq9mbs6C2TXb+oo
 3jyBfcp5OUPKdtyFnat4+FsfPI/c4reciqmfrl3yZeg2BMWpG9nuqT8ND A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="289645193"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="289645193"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 00:59:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659602920"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jul 2022 00:59:06 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 00:59:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 00:59:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 00:59:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGqDjTY1j9s95p/sdKyme++kVatzNm4b/ih4O2OFaVi2GK5nox82qCqozujesv/40CIyfnRdQC9mXLJ3ihTquPe/d3jzLNrLMnAPArBqQLNwByrOW4tqAmCJ0TR5jHweJCbhzq5g1XxbLdd99VlSspKVL6SBGWHDjLAY9CDuTQmARkdHeRwJkXgt6Bb9ZXJP7p7/+Ub99orLg39jUzYStPWaMCWllQSvndah/63NE/2IWVPCASD0pF8iUFTHlFsqQEjJm3UtmBth3oH419ciKeC2h1YLtAyPwLuPP+YCUIaTLCui078EtoEr1ytp53X/++ax1l+huA/l2IBkhvy6Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y8+Pjh/qalq7/A7BpKEm/k5n0O89cCQ4kmSFzZAyNqc=;
 b=P8Dix8HFl+myQkMUPdtG4/0/Kuh86BjNdgJSykMsaUKyFTLC++43+7L4yH/qTEkMYapwyG39cbok95IgGNhNG+KkAjM96upDHGO9ySOwf4B6pPy6HxgYHVvWSWX+HnKfBwEdsf4PD8QI0Tas0iBWUV7Gx3N9Q21BPKhwCGB+RaafcHD1uWEReGvykaHmn6JJ7T7bDV5Tks3ExSfFUWF7JOUk+NQT6flVpVJ9upUuGk8zz7+sQILeu7V6UjcgLV+ACW/VeafnBEYX4auRpPbUriafY/00su5e1TWbwGQbyBKmdHN0Ya0lkNqncfnYKq2vfNz5Qar0lhcIC7vuWnqBIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA0PR11MB4765.namprd11.prod.outlook.com (2603:10b6:806:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Thu, 28 Jul
 2022 07:58:59 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::3d0f:2102:5483:18e]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::3d0f:2102:5483:18e%5]) with mapi id 15.20.5458.025; Thu, 28 Jul 2022
 07:58:59 +0000
Message-ID: <bae2b00c-276e-a522-ead2-7f9f0fbd249a@intel.com>
Date: Thu, 28 Jul 2022 09:58:55 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20220727173306.16247-1-nirmoy.das@intel.com>
 <YuGg45GRtl7w1r1I@alfio.lan>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <YuGg45GRtl7w1r1I@alfio.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO2P265CA0047.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:61::35) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c693671-3b53-4a54-e7af-08da706f0725
X-MS-TrafficTypeDiagnostic: SA0PR11MB4765:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vacSHV9HMQWT3Ths5kteK5wKwzG1sRfFAdt9F/mScpvWXRrCfdfpwvqG4OAQh+OpzPL4MMYTAxR9pY9IG3n7q3r7AGOS7A611A8Q/xZDx7cq5iueFoOW72E4fTnuPCNJOuOA1kyN6YoaqbHb16pbYQbMfN45V96WtQCetkLdJVfHXKT0qkHeCr9emoDI6U/62l0RyMWzwiFUEkwtBLPscBrv5fWFP3yqAX3R50RLZMmuouMkI/4hsGeanz0nn/lk6OW+OpYHz4Fh0Z4k4//PVLhWidEvV7i4VWJe//z/CDvrsBnoH0XNPnSfNUBGsciDjpbkImfMkV2LGf7nPkUgWOZv2qiPVjv2zDue/ZhM49lN9hwd/ZifBvf10pOkGa3ZoiXm/QpqI6MqyK/bLKy97BMBxbDT3ieIDtnyjHsPibZKXwLULBxNMuqA3+pwXM8xkGb95Od+ybYd+jNlBJTNuGfUQW3LbaQDVGure1gWCLegdpq8pesFbC6+sbeIYvhSi5pgvi/ExW4aOg5F+AH3kODha+/WU7mnMIxIgkI67xZ0Kx3hZGSnoT9SPLyZ05n7iF4UoDsNZzWGbHr6xrsXWz0pX7dDusmvW38r94irOb6XnpD4DiCFMGGRnqnXC93nMzOyaXOJKwW4joQF6DOb5HPNulRCjbCxapusq7VI3785d5CB24jLu1RdOM58Skb79ltSNmIHWrtf1MjcKozMw4JLQ5KhioISYB+SSXVWf6d+PRmo90jcmzluvgf7gVAVR5Z9tHdflDfhL0Uw7pU4NAjrWdTRkl4nidwm8BulxGi5wI2JtCEIKFr3vq+aPdpN6GkCQ8l9UeRHCVDZMN7gdQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(39860400002)(366004)(376002)(396003)(86362001)(36756003)(82960400001)(6916009)(66476007)(8676002)(4326008)(66556008)(66946007)(41300700001)(31686004)(38100700002)(316002)(5660300002)(53546011)(8936002)(478600001)(186003)(6486002)(2906002)(6666004)(6506007)(2616005)(31696002)(26005)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkZqTVFKVThpclZPNkRJRHNjYmE1MkFLNE9mVzhtZ2hpMWI0Y0lDYU1HaitR?=
 =?utf-8?B?UjFGUG12MENoOHN3WHgwRjh2Z3dmMFJLS3hnQS9ETVY2RzN6S3dUTCtuM3ND?=
 =?utf-8?B?bzFZN3o3VjRuQlJ4MStXWU9QVjFxKzZvT1c2RkpLNzJ5LzB0YmxDeW5Bb3Vl?=
 =?utf-8?B?UXhSSDgyTnhBK0hxU2RwSzh6QWh1OXNSNWF0WHNmMGZPUzJ3ZGZlYWZiRTY0?=
 =?utf-8?B?NjU5YmpDZDJUU05KQVpDUklBcTNtMUloTFlIVFQzWmZhMVR0RUpJUTZpVUlq?=
 =?utf-8?B?VzQ1WXkwSzNiOGdISWw2REhFZWRkeE5oS25RbUpyTmNZc2xaQVN1YS9rN25Y?=
 =?utf-8?B?T0Y4am9ISklsTnAvYmdncTFqaGVTQ2pleFFZdlFkajIrT1N0WnpZWWdueEE5?=
 =?utf-8?B?d3F4VzBiaXNPazVBT1ZNSG9BRnkwd0xRckZqVDhTVHBhV0NQeDh4dnp6RUVi?=
 =?utf-8?B?VGFkUE5SeDZUSERDRGpETEl0bHlUMFd3UlJiUzNRaVlNa29zNVYzZlNtMmxZ?=
 =?utf-8?B?SXpzY3lHeXBFN0ZKcXRTK09WV0Ivbi9qZWZ2eXZaanlabGxzOHVsNmpjdlY0?=
 =?utf-8?B?SkExcVVNcmoyUERmaUQzS3I4ZnF6Y0p1NjVuTmo3MTVjNS9adlFFUXQ4QldL?=
 =?utf-8?B?eDNsWGQyNm1TOGoxa3RQNEZtV1ptcmtrZUQ3anhEWEEzTnZWM1Q5ckRyNUls?=
 =?utf-8?B?WWRnV21ENnBlT01iZk5qN3pTZjdabGgxVlF3RGJTeXJFZXBDcE9qdnpEMUlx?=
 =?utf-8?B?RnhoTDdYbk9KMGZhUWJMOUE0MEJCZmJ4ZE1MMlZpenNzM21QOUxwRFREdzB3?=
 =?utf-8?B?NmQ2cnd4Wk90S21UMGZnc29ZdzZvRDZzbkpIdWg1WFgzd3ZSUHdHZ1BFUmRS?=
 =?utf-8?B?Z3dyWXRuUDJHN25LenpiYTJUL29vVG5Tb1gyd0dYVnc4RkZCU3Z4eStzcVhM?=
 =?utf-8?B?U3hDN01YYWpzNXpvZHd1M3JQS3d3aExHYkNnRlpsZTRycm00ZGFYeDdXd2hD?=
 =?utf-8?B?OTJRVmhwZ3FjR281UGNLTW1aaXNrMUp4TG03RXRVdGROY0ZIUjA3ak56VnB2?=
 =?utf-8?B?MU1Ra2JkRm03UDlLZytWZTVlaC95MXhZUXJLSVpzUVYvdjFkVU9zaUFTdGxh?=
 =?utf-8?B?STVFcm05UVpqTmJFQTh3V0ZpamVkcnE2TVZoZlVhRTVKell2VHllSEV2TEpC?=
 =?utf-8?B?NThZcWtaTGlmZnJXcU5kV2N6d3E5SkEvSUhFNlQ2NDVWeW1Bb0d6Wktxcmx6?=
 =?utf-8?B?RCtzUCtYSmNJNHNNTXVOdndrOWxxcHBEbERNa01sNDJjYUpXak8vczJ4TTlZ?=
 =?utf-8?B?bFVzSFpVTlRYVFNxYWduVU5nUXBkY0tSUXducUhmWWZvRzl5S1ZtZm01blNF?=
 =?utf-8?B?U0NuSFdBQWZQRHRHM1JTK0tlUS9lYjQvbUFTWjhoNlN6R2ZFVDN6QncrN3Fq?=
 =?utf-8?B?RFdvemVYTEtNSEQvUE1FWVYvWFFVdStpUGVQT1hhdU5oU0twclRReHRUU0Qw?=
 =?utf-8?B?c3dEZUtEVlFmc0JKb1UwNFEzRHgrSm80d0w3SW5abkZ2dFYzbk5SVUIzQXJ0?=
 =?utf-8?B?UmNFV1NteGxrSW81Sk5JSTZBOEMzV29ib25tSEkyTXYvVVE2c3NncHBGbnpG?=
 =?utf-8?B?dzlzWGZjQ3IzMDNRRFlFWXlSOFRMYnpYaFM4anRUYUt5UHl6R0VabVp0SmRY?=
 =?utf-8?B?TG52Rno1czVCT092cVFmYVVodzg0WHh2bVJ6aHg1RmNuKzl5VGRPZXM2VmR4?=
 =?utf-8?B?dncxTERQMGFXUVFHZVFGZmp3dmMwcTNIWU1YdUhMNG1DcGgrcHBjUklWc0tN?=
 =?utf-8?B?bEVzVUdEVWtJbXhHQUVzdlUzK0dhWlQyVFFVQzRtaXB6enhtK25xdHpYWnh6?=
 =?utf-8?B?RFJ5QVlPMFliazJDRWRneWdQT2c0V3lnTHE4NkVRbU9ML29QbnVIYU9uS2x1?=
 =?utf-8?B?Ulo2S2hWQTN5ZTZDRjJrRmlyc3ZDUG1FZjRNdVErUnJHNFBZaEFGaVdTSXhN?=
 =?utf-8?B?WElFZnFKajlTWlRkTE1XRGxpNlcvNUJUWklKM0dTQmVpcVJHVW1iRUJ2Qm9z?=
 =?utf-8?B?UzQxcjFhdnIza3RlWFNYZUFEd0d1RldzOE5nblNYYk5RczBoU0F6dExRYVlH?=
 =?utf-8?Q?eWWmKUBSYSTNxW4UzYpuxwHzb?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c693671-3b53-4a54-e7af-08da706f0725
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2022 07:58:59.2295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VUs6GfgSdxRt2wUS+zLR77WS9TxHyjOFHLTY588U/2k/FaMix6l5JGJ/I/hb/vEOrD58chkssFgzrzfxvAX+Sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4765
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: disable pci resize on 32-bit
 machine
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
Cc: priyanka.dandamudi@intel.com, intel-gfx@lists.freedesktop.org,
 naresh.kamboju@linaro.org, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/27/2022 10:32 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> On Wed, Jul 27, 2022 at 07:33:06PM +0200, Nirmoy Das wrote:
>> PCI bar resize only works with 64 bit BAR so disable
>> this on 32-bit machine and resolve below compilation error:
>>
>> drivers/gpu/drm/i915/gt/intel_region_lmem.c:94:23: error: result of
>> comparison of constant 4294967296 with expression of type
>> 'resource_size_t' (aka 'unsigned int') is always false
>> [-Werror,-Wtautological-constant-out-of-range-compare]
>>                      root_res->start > 0x100000000ull)
>>
>> Fixes: a91d1a17cd341 ("drm/i915: Add support for LMEM PCIe resizable bar")
>> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
>> Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
>> Acked-by: Matthew Auld <matthew.auld@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>
> Andi
>
> PS You forgot to CC the author of the patch you are fixing


Yes missed that :/ Thanks for reviewing , Andi.


Nirmoy

