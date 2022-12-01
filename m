Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B068763E66A
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 01:22:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D866910E518;
	Thu,  1 Dec 2022 00:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB4C610E518
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 00:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669854149; x=1701390149;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=huXfdaLre31IDUoMjc6p2v+uShfe7ojt3lVw3T9AbEg=;
 b=VHbeirJzTnLxgKCJNkQoM6TBv+o47RE/h8TeJs+YVb2skglSUKdduftR
 nQ87tYH63wWGRqSqBNlEUcXil7DtCouHkOGYeGxUO05PEqrkzBc8R9Wdd
 XACEK5YIqKXZrzunLUTPiCsosnIwGy/ReAphKhj5wjyvUpFPZNvr+Cc26
 nZ0mr+NFRCInfvpNWq7JzHABAX+RQpglxHIq5qGCGccJCby6wobRudJDK
 1zRJYdiEq62HGvmfFaCJDkg7PhufCXUqL20eP2rmR9Bz5l3tdEaIVCSpu
 aZw5jsXGHQ5i+T4ozPfveEsSU2lESI3ax8Ym0PPitIxKa/n0Lc+S6c9hQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313173819"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313173819"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:22:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="818831378"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="818831378"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 30 Nov 2022 16:22:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 16:22:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 16:22:26 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 16:22:26 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 16:22:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/VbrCUnpH+uoIuu3zfSILulmIgSvsyTF3hZcbV6d3KY9ajzC+LepUK3a72L+5SOTkoQZibCvaHKlw+dtONLGHMIWSNMonunpMxuJFEzVQSCcpC8guAasfPGsbvjGPSi5zO+5tpGL4h1AiU/+dE8Iwl8MvlYkQ6BBSZjwReH4bJbOINbufEidESchUu0BnIvkYjZqXYAoW8v8AJFOfaarYYbzLgdKl+0GQt8vgcxbr2MGYTkyCd+5d6RUDXmpZ8P3e04zEW4XfYhgDUMxiiw2/hAUEZSJhKnR8tYHCUTwvGxrpUPKeEifhkwg+S5C5g3LwhWbBfCI1MGBv+7HMRTEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2MolhUO4vl7kORDH/o4Nq8ret+uDhlHCe8INFD2lCYc=;
 b=ctAdpCppBbGBTSN1jYV2bi1fzb/o9d0KZzqUrgF4ADJSpodvJVk7gwpUSzAplRQ3IpWvacxeIDzC1zWf8T7nixrPEsqEIN8p63Gb05QfIKrYxHDLgU1M3rdXsfcBuxjsBLNz/viFPYJazgFFVEHe55MNoycSnY2437UXJOes0BocBnsnr8Uk7SEZUiBk/IOuh4179kFW+zWrhJsMYQYroZf6fkCiaFvnDcM0/SKbFQnN7Jm5y6s+AbXyAxxHJWwN1UffBMZ7c0I7HWfKuZGPCAIiRJM/Sft9HTslxc/Oinlw5n7pdSYRbE6CnK+Na4RJ1aondlSRtyQhFucjbrYQIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH8PR11MB6952.namprd11.prod.outlook.com (2603:10b6:510:224::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 00:22:25 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::aaaa:56aa:988:ba00]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::aaaa:56aa:988:ba00%7]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 00:22:24 +0000
Message-ID: <0846a17b-9562-0592-003a-4336fcac8f51@intel.com>
Date: Wed, 30 Nov 2022 16:22:22 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221128165209.353706-1-andrzej.hajda@intel.com>
 <36b9d912-84b3-d050-59aa-b95c245551d2@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <36b9d912-84b3-d050-59aa-b95c245551d2@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0102.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::43) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH8PR11MB6952:EE_
X-MS-Office365-Filtering-Correlation-Id: aa5d104f-92ed-43ef-6d16-08dad3321ef4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WRgTDpHjawgdLGwrIt8VqBg3BwJhTepmNgIN27NaafLkXQE7KXAC0O3vg4laCKAmLc0uvJPLP2qgwQLpv4hQWkzuivFzm0S74bV7ySkk6vyriu4QFzPTohsrd5DHg+BjmlPC1UE5EU5CpEtP/J9yOLRmp9zqOPwAN40LbFlMewyrc4J9DQWV8X532PEFQFkK1glUA/6V8q5iMCzXhkJEAz4tFVBobl6qHNuIVkQlSSGDJYhT2GzfmrnvjNYTuwgzW/1UdEH7sNYqzDhQaAjgIA/rNnz2BrFeuOhbKJWrCAi+rJa+VCeni7PHxZLKAaSuJZl/uy2QyJhGFDujKFGm5jBSzvew6fvWjQ5zhPpGvD9eVrKfnKKTEUGygr0X/jzGyh34ZkJA9/6ZMV8WQwOF7Yrcj6YknKWuqzZMuDQHpAPf1mLgzF1b/clFKreglN3xDu6+A6oK3j/Y4qHvoeYOuZGTKVt0Q1z+S7iAp19OGxTVPxR3YSXDgIUssNdJGK3aDTM74s3PZL2LKCITmoHbuhmRUFzQs61jAgJrkQrJBQlICYQuFb6XT3w9b22S8H9yZcTcz0tr0/fqL0d4mMjWVEt98q+bioQCdfNCtzP80ABfxeBQFs2xHsqhr+XH+fzGT+KFq2BgaDR5hwpwziJNfPFX44GNxLqomaAR+RM9I66qfd3bm+wUCBTlKC3OiVak
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(396003)(366004)(39860400002)(136003)(451199015)(5660300002)(54906003)(41300700001)(2616005)(6512007)(316002)(110136005)(82960400001)(66556008)(8676002)(36756003)(66946007)(66476007)(4326008)(38100700002)(186003)(8936002)(26005)(2906002)(83380400001)(86362001)(6506007)(6486002)(31696002)(966005)(478600001)(53546011)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHZSTDk2N01Kak1ISEI5bW5XNEQ2a0FiUHE0V05xOGtaZHJLRFJrb3BSWkU4?=
 =?utf-8?B?QlZNQ0l1emNST1h3TFVxOU94UW40NHQvOXlIK09OZ0xEZnRBU2VIZDhoalVv?=
 =?utf-8?B?SFJIR0Z1VWI5R0pLcTRvY3VUb1Zrb0x5ZWVRNDU0US8xbmZ2aHJpamFHa3kv?=
 =?utf-8?B?bFkvOHNZMmJzOElCNDFSaTlQNkpvRW9QRk0zdm9LZ21YTTNvMkJFK0FHYlhr?=
 =?utf-8?B?Y3VJZzRUZVFzdU1CL2pYbDZmMWU2cGl2dG5NaDVhQzR6Sk8xNnB6YUtSQ0ZX?=
 =?utf-8?B?aGxrcWErN2xldDlmY0d3dk1lbDczYXJlQ3FwTGpqTUxSa0JKK2hTUWltNnlN?=
 =?utf-8?B?cnhYUWZmUlZkS1N1ZHpybFBjUlhTdGQzNnhSUXZWRXRjbkJFMW1RYnNWRm05?=
 =?utf-8?B?UFNaUmt2M0pqVnMrZ3B0bmJYaXkvS1VIS09xTTVkY0tQSHh6Y2NlckxOM1dG?=
 =?utf-8?B?djBjZzh1aXlFYTl5Qmt6aXdXZW9uMkJ3aWx5NGNJdVhJeXBSTXpBY0pzR3Rj?=
 =?utf-8?B?Q0VtQUFSb0FDdlBVTWNqTVhrbHlBZnpVMHBzZEpKQWZwa3VPYTFzSFcxTmRU?=
 =?utf-8?B?SEdFMVVGKzZJT255MVc3RHFsNDJHR21HdWdHcCt3QWorZHl2V21KQVlva3JM?=
 =?utf-8?B?MGxQbzdiYU9WbVg1anZUTXJUM0ZiaGo1emVoNGMyUUJhajRaRzBQMDNhclZ5?=
 =?utf-8?B?WWVCYnowM1dkb2FORk5GU05pSWVSR1hNdzdYTitlWmxuRFRNckJOb0dQRFRt?=
 =?utf-8?B?ODlEQUkvNUZhTVJvMlo2RGhxSXVPWG1EcUt0V2hUdUJUSURRbmRqOFA4OHlE?=
 =?utf-8?B?OE9zbUliL3k2Ykk0ckRXdURTeWpVSFMzYmtuQ1RwUHZBV1phd3RsbWpFY29E?=
 =?utf-8?B?V21EN2FMcDlRL3E0MUFpdVZqRHF5VEJZYTN0TXhHY1ZIWVBGZUZsenBSQUlS?=
 =?utf-8?B?bWVQRFpJTU1ZcU5jRERnTmVqNmNQUVF6SVJGMmswb1ViNkNVZjFnakM3NkRQ?=
 =?utf-8?B?R3JtUUJHenhkVmNlQzN4anNGKzJpditoSnJlOWZNOE9HRTlObWRpWFNkZVQx?=
 =?utf-8?B?MEthYVRKbGV2cVNlU0dTdjlhZUY1b1hSM1VESWhXY1dTbG8vRWcwQWUyTkI4?=
 =?utf-8?B?Z3RGM3l1NDFLc2w2Mit6S3R5OFVGL2JJT1JZa3VVSUJqbmorZUpTL3hOZlhZ?=
 =?utf-8?B?dTFNeUoyNnp0MmZxL0k3SEVHaUdpcnZUTHdoSEhyV0o5c21hS0NsWDVxVko2?=
 =?utf-8?B?T0J4amVFbkNWN3RnN2FUaXVQVXFGdTdHNXpHVlVtK1hBRFhiZkxEeDVKR2g0?=
 =?utf-8?B?VThDTDdlTmhwbXhGNm1EZDdEZ3FvQnltbGlKM2VvNm05QnNMbi9FZkd4QXlG?=
 =?utf-8?B?N3NSZnkrQ2hFYmFBOVJGd3Z2MmwveHdSYmRhMVArcnZBaU1aMktBTWppOFA4?=
 =?utf-8?B?bWMzSTRLbU5pM1l2MmxrTEVkdHNEcndvS1dmQk1vTUJpQXhkUkFidFdjSWVX?=
 =?utf-8?B?RkYrbG43eUhhT3JneURqWjVyTHp0K0ErMDk3UVZWaXFhUGpEZW1iYlpubktw?=
 =?utf-8?B?U1RXSmxpZy9wZzdqMDRHUW9xWU5ZNEc0ZEhOVkdiZ3hSSm1GcHFpODMyM0lx?=
 =?utf-8?B?dEhBbUtpNFdybWowT2hsSVRxRlF0QkVNSURKNWtram1SNDczNXozNStZR3Nm?=
 =?utf-8?B?UVFyVVJaa29Cak95dnlnNUVVb3l2c1F5c2lSUXZaZTZCQ3M0QXVST0QxOUtv?=
 =?utf-8?B?ZzEzM0ZKa0Y0ZFVEMmhpWmI1U2pxUm5BeXdxL25URUNSbkVJc2lmQnpqODBz?=
 =?utf-8?B?c0pIclpwclRLZjM3MFZrdmZTNGNBK0t5OE90Mm9ONjEvYjRXQmhnMlJWM01x?=
 =?utf-8?B?K1ZrUDBZUE1NVXVYNlgwT1dhenUybmZ3S09XS2tSK3F3SGZYaklVQXRtQ3N0?=
 =?utf-8?B?aERPYnBqVG1ZNTlrTzRXRzFMZXZRZit3Q1prWnAwVCs4WWxmYzN2VTl0dFY0?=
 =?utf-8?B?VmgxL0xOaWZGdHVMR0pFRWpLR0kyUEsxaWVTYm5KMmFTeFkrRWtBWk9Mdnp1?=
 =?utf-8?B?My9pT0M4azFlajA4bEM5YjlFdUYzc2t5eHhUblNwYVo0V0hXY1dXeEFvUGh4?=
 =?utf-8?B?L3I1MzgvdXVJNHdWcjBiTFlORU5OM0hTdE9ucW4yc1hZdmY0SUFiTG5RNDcw?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa5d104f-92ed-43ef-6d16-08dad3321ef4
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 00:22:24.8913 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OL5x8nNDPPlvpXPSw87zaDXUfWKZwI7EkXL2uC17k9aYvRz9WuiOYvUUo7Ia2Fsb33vl/ybIAKrP8Y9FouVhpKaoB83v3fFlvpbw352p6Fc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6952
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix exiting context timeout
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/29/2022 00:43, Tvrtko Ursulin wrote:
> On 28/11/2022 16:52, Andrzej Hajda wrote:
>> In case context is exiting preempt_timeout_ms is used for timeout,
>> but since introduction of DRM_I915_PREEMPT_TIMEOUT_COMPUTE it increases
>> to 7.5 seconds. Heartbeat occurs earlier but it is still 2.5s.
>>
>> Fixes: d7a8680ec9fb21 ("drm/i915: Improve long running compute w/a 
>> for GuC submission")
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2410
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>> Hi all,
>>
>> I am not sure what is expected solution here, and if my patch does not
>> actually reverts intentions of patch d7a8680ec9fb21. Feel free to 
>> propose
>> something better.
>> Other alternative would be to increase t/o in IGT tests, but I am not 
>> sure
>> if this is good direction.
>
> Is it the hack with the FIXME marker from 47daf84a8bfb ("drm/i915: 
> Make the heartbeat play nice with long pre-emption timeouts") that 
> actually breaks things? (If IGT modifies the preempt timeout the 
> heartbeat extension will not work as intended.)
>
> If so, I think we agreed during review that was a weakness which needs 
> to be addressed, but I would need to re-read the old threads to 
> remember what was the plan. Regardless what it was it may be time is 
> now to continue with those improvements.
>
What is the actual issue? Just that closing contexts are taking forever 
to actually close? That would be the whole point of the 
'context_is_exiting' patch. Which I still totally disagree with.

If the context is being closed 'gracefully' and it is intended that it 
should be allowed time to pre-empt without being killed via an engine 
reset then the 7.5s delay is required. That is the officially agreed 
upon timeout to allow compute capable contexts to reach a pre-emption 
point before they should be killed. If an IGT is failing because it 
enforces a shorter timeout then the IGT needs to be updated to account 
for the fact that i915 has to support slow compute workloads.

If the context is being closed 'forcefully' and should be killed 
immediately then you should be using the 'BANNED_PREEMPT_TIMEOUT' value 
not the sysfs/config value.

Regarding heartbeats...

The heartbeat period is 2.5s. But there are up to five heartbeat periods 
between the heartbeat starting and it declaring a hang. The patch you 
mention also introduced a check on the pre-emption timeout when the last 
period starts. If the pre-emption timeout is longer than the heartbeat 
period then the last period is extended to guarantee that a full 
pre-emption time is granted before declaring the hang.

Are you saying that a heartbeat timeout is occurring and killing the 
system? Or are you just worried that something doesn't align correctly?

John.

> Regards,
>
> Tvrtko
>
>>
>> Regards
>> Andrzej
>> ---
>>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c 
>> b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> index 49a8f10d76c77b..bbbbcd9e00f947 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> @@ -1248,6 +1248,10 @@ static unsigned long 
>> active_preempt_timeout(struct intel_engine_cs *engine,
>>       /* Force a fast reset for terminated contexts (ignoring sysfs!) */
>>       if (unlikely(intel_context_is_banned(rq->context) || 
>> bad_request(rq)))
>>           return INTEL_CONTEXT_BANNED_PREEMPT_TIMEOUT_MS;
>> +    else if (unlikely(intel_context_is_exiting(rq->context)))
>> +        return min_t(typeof(unsigned long),
>> + READ_ONCE(engine->props.preempt_timeout_ms),
>> +                 CONFIG_DRM_I915_PREEMPT_TIMEOUT);
>>         return READ_ONCE(engine->props.preempt_timeout_ms);
>>   }

