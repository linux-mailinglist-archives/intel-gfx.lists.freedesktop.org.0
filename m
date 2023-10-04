Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7317B8C4E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 21:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C8C10E1A1;
	Wed,  4 Oct 2023 19:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A2910E1A1
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 19:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696446643; x=1727982643;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VX4f2t5PkQRSKNKPBFsE/ScgbTFgq7dOOWQoUFsq/lI=;
 b=C+nmbUDc2aI8l+dJ7NlTyC2692D3wr82SvrYsrW1HcI9qNkDZz0gxC6n
 sYKBnxaXx/9XbroTAzAV2s0U2xQGgNUWWAbq4cik+2dKYyVygKRSW+qYL
 T3xvfjbk8ketA4CY6DgKUZmBcvnG0jT3I2xtF8WAMHs/SUah+cyq3bBQK
 vs7vPb0RSMLM6pYK8qulcnhGp6eyUpiyeXtGjhV2W7H391mLbGW2nuWlP
 3d1aUO7j0+qVOLyrhUeb2ZUpWzBvuC9BRBtH73ndFwwJ0HQQYvtlIOrYB
 d3z1jtwQTPbVBVcRKXLyDcyR0D4uuKbGhEgWaBATFCZq5BDVdYX9+YnyI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="383178064"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="383178064"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 12:10:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="751448795"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="751448795"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2023 12:10:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 12:10:37 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 12:10:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 4 Oct 2023 12:10:37 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 4 Oct 2023 12:10:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MbBLrXYXxaq6XK69iic7cq/z6JtNf9m6bZTTywr3y3Z6+oPJcZlojyswCKgjnN7v3bdkWneDJbz7ENDXswlK6OrkzRgUoslunNn5/i5IdVHAY/aumhNk1s6Dsv33E559JVjD3shd/8kTIgU9CztS90kf5AVJ5jRNC08ZXp+th86jTNXWVcmEqJpqnrdh740yGZlOQO8Df7hBX6hvQQR7fknGVmzwS51JN9JEHPhng2/wgxlleFuAbu+bSi0ADuVMWjR+YafIfAJDyI0XTObKOjUdDVg8lt+68tBxQVtKB9U8XwR0COwTO6wj0giVZxnKgk6FSo8QnZ+x5OQS1dBfGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4TllhbTVGvYC27OXdLh8iYAnXSGDJExocp63+hmy934=;
 b=FrM3NlxWRjmXdqBLVPOlDC2eMkWBpGIvx3PuUSktc9kXMnWPm3+b4yaly/TvqcpXw33a+7330K2cq5dEs3e19dptBMgBPgh3aJaU/he1xUFhUUJa/bDzuyrlNuVcYL2ndFVaNG38fzKFz7WhmpHKxn5Wzps5jostdAE3U1P2m3/0TnqdiOyMA0FRcFWqzVyLQ6DGUB9ouu0r6bsAVPVFE1bMZSsXVvAHyGz5ZkMIj1ZamulJNGhQpTSN7ELVqv5bTEYp49f3Y+lo1Wkj2n9D2QdbQcdY1SNjhKWMPOoh6dkQOX63WBV62l/CZHvsprfgzI3L1yosmUhrYCvS39Inlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN6PR11MB3908.namprd11.prod.outlook.com (2603:10b6:405:7d::13)
 by SN7PR11MB7092.namprd11.prod.outlook.com (2603:10b6:806:29b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.35; Wed, 4 Oct
 2023 19:10:35 +0000
Received: from BN6PR11MB3908.namprd11.prod.outlook.com
 ([fe80::92a:bbbf:656b:dcb5]) by BN6PR11MB3908.namprd11.prod.outlook.com
 ([fe80::92a:bbbf:656b:dcb5%5]) with mapi id 15.20.6838.030; Wed, 4 Oct 2023
 19:10:35 +0000
Message-ID: <c9a82cfc-9034-4a77-fe9e-ddde2245e0fc@intel.com>
Date: Wed, 4 Oct 2023 12:10:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
To: Andi Shyti <andi.shyti@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
References: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
 <ZR23GiB9UzY4OYLg@ashyti-mobl2.lan>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <ZR23GiB9UzY4OYLg@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0251.namprd03.prod.outlook.com
 (2603:10b6:303:b4::16) To BN6PR11MB3908.namprd11.prod.outlook.com
 (2603:10b6:405:7d::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN6PR11MB3908:EE_|SN7PR11MB7092:EE_
X-MS-Office365-Filtering-Correlation-Id: 540711e3-b8e7-471d-6916-08dbc50d964a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m5YaV6u9ufolU5WO6bH/IWmFpw9RLW4zyyN/mnG0zgzpNE1LavCTfL1zj3WyAxgzcIszSTei0GUVt0Kbqk62MPHNAYjanUvAi25KKOiVNjpxKSribJyerbajWRBUaNpAEc+41rTWFmB4LxJytnSWh0ZoibJoDU6O0svYEBEJoJ9PG/kYpg648qEO9mEpmQsnc4ECB+iqaNjDO1YXHBK70mqRLCQFqUWhGh0BdjbRPB/AFKPVbTGgf4rtZa/G9MECZQ9Bv0zvW84AaRfp4JvLjG9lXGgM4P2X5qloCGbotgNIhCLzH+yytI0fnNZJhfSg6dSYlDr7G95R/xMAAR8SuVaZ4ceoUewpvd4X2DIeZKmy0rDDpGQFT7VK29xIkJjEE+qY4NsL6QhVEUE4M2l9sRH5fpdLF9XxjRc4PLgznTA0OPQ+m0wcKLqoHtv4K2umcwtOvDSiaPPDkf/hY5wYy8kIRvRro/BBcICyWpGxxuZL0gdsYmAhzBrZdszPNFxu7mJ9Ru522nBVwky6dzWq4OX3NabAsQUxNQSxnWs0xj89S+l/5/gHWdSBJkSbs4wK91zIDUsbykWX2SnzaqsHv70r1y+Wx6b9S1j0saEEt88k6xoxR8yxoTaX5dGwGCumWWNCrVT8XRoYBy7EDVsolg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB3908.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(136003)(396003)(366004)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(31686004)(5660300002)(8676002)(2906002)(4326008)(8936002)(41300700001)(2616005)(316002)(6636002)(66556008)(66476007)(66946007)(110136005)(26005)(6666004)(36756003)(6506007)(53546011)(6512007)(82960400001)(38100700002)(83380400001)(86362001)(31696002)(478600001)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFRxTEpDYzF0aTZOdkJFeTVHaEtQSzNncHk4RGI4N0xtVXo1a0FCMDJ6REsx?=
 =?utf-8?B?RDF1eGM0MWMwVEJCZytMNktLMVlaOG4zQkhpZEp0UEpJZTlzVTI4cEF3cVhX?=
 =?utf-8?B?ZXJjYVVob2Vza3hhWVV3TnAyU3Uxa0JZVmtXYVdWWEt3RVlZWU5pOHZYNm1s?=
 =?utf-8?B?emNBeWx2MVZOSVZVK2MyMG5zMWxyc3RYRkVmN0hGTkZweWxKaHB1bFJhcitQ?=
 =?utf-8?B?S1EvZE9vbXZnOU1JclFnMlF0OTJ5Skd3RkhhNVRyNnA2WmF6eStzZWpza3Qy?=
 =?utf-8?B?Y1JBVlEydkhqY3U5NXUySXZQNlExUUdHeVdWL3VraGRiS3dsME01ZXFKR0hL?=
 =?utf-8?B?S1FXaXd1a0FCSmtMYnd4UVB3NWpZWWVIRkpUbGRZaDNpZXlBSzRuMHcweTNU?=
 =?utf-8?B?QlAzSTB5MjFKWUxmSUxpaW5xTmYyWlltK3JYQ3g2T2pCKzVzQnplZ3VwSVYx?=
 =?utf-8?B?WkpsQW5sUHpKTGJoMktqeXVkOGk4VzVXTWl0RGpNRjAxVFI3dGxJVzI4SEYv?=
 =?utf-8?B?bVoweGpDZ1BYMHhCdEdZWWV6OTRhcGxZcEYzTHlYOU5VaXBQQmVCelppSVds?=
 =?utf-8?B?bWZMSjlnRFA2dEl6Qlp4V1h3ZjVtUDZXcGIyc3VsTnF5UFoxNHc3T0hRZkJ4?=
 =?utf-8?B?aGR6SWQrRlBSVFd6ZEFjZkhDZFFFSWFxaTdwdkpzSVhrL2l5SHB0VitZOElS?=
 =?utf-8?B?SHhBMWsxVHBaTjRzc2JDRGVPYk1QdGxKUXAvYkEreU8wQUhMRTd2Ty95cFpv?=
 =?utf-8?B?NHc0WkJaTy9Ka1o4V2h2WmFkditPcUcwV1NuQjVyMExsNk4rVmd2NVhkUXl6?=
 =?utf-8?B?b1hnY0F5N3JUdDBmTnVaK0J3MEVOaDJGc3J3QTFRQUFXVjlqc3VkOE90M1BN?=
 =?utf-8?B?YnY2RmdYcHBZTkV4TVBCTXFPVjhqNWdXR1h0ekUvOGR6bVR5eW02eXBTcUZu?=
 =?utf-8?B?NS9VYTFXTmhpcWhnbjJONXN5Z2tQYlRzS0k1V1J2dDRRdlM2WGxkaDhVRVVz?=
 =?utf-8?B?bDlpV2FYTmNkUnJVY3pRWTY4TmF1aUtQVTJlS1hYbmNkSmtUcndNQW9uc3FG?=
 =?utf-8?B?c1Z2b04yMXZQdEUvWDRJRlMvVm02WE1DUzJLN0dZdjVaVEpLMkY1Ulk0aVdj?=
 =?utf-8?B?ak40UlhWVWw2VExjRm9uWHVkWTVmRUlJYVZxZDRoMG15aWR6dVcvaWg3WGs1?=
 =?utf-8?B?eE1LSDNKNzVaTnZsSUNOSU1ld1plc293NlN4dWhYbGsrWk1XYmRxZlg1eFB4?=
 =?utf-8?B?MDBCTC91VmtIMW1GWm1mSnRITFZQcU9UQjVIZFR4ZXVxQWhNQ2M0QmJ2elhr?=
 =?utf-8?B?WTBZenlZR0VvVEVnT1lhU3QwRnVraXFlOTRIWGkvVFRLQXhSUFh4WFFzNnNX?=
 =?utf-8?B?b3Y0SjNOaDVwVjRvWjhOb25ZN1Fkc094Tk14bm9FVkRGTTNMQ0lOd09hUEhC?=
 =?utf-8?B?NlRxZjlTemFjVkh6b2xPc2xlaFBLODREZUluVDZicjBMNXZSWkx5T2JERTBE?=
 =?utf-8?B?cjBCQ0JVNGpTS0NHK2ZSK3BFV3dNM1JuczcrTFZBeHdrWFhpZ0VqQUpYVlFw?=
 =?utf-8?B?NnhyRUJyN3YyZk14UDR5cnc5emdlV0puenBRalpMbGdVdTFvTVpYWndseTk1?=
 =?utf-8?B?NDBaQ2FjcURsQ0krYTB5SldnaW5PbU9MTzBDS243L00wKzIrc3Y3c1RjWis4?=
 =?utf-8?B?Vi9yNFpZU014bXRVSk5reVowcnVLR2hHWGhOSHJ1ZEdJeDAwY2xhT1d1TU5z?=
 =?utf-8?B?MlQxbFZrRmkvRXc2YTFpNG4xaVN5SXVWQkRGa1hxM2hRUXJmWjUvdjl4UnBM?=
 =?utf-8?B?b1NXM1kyM0Nrc2p4THhnYkNlSGM1d2ppdnRGMHQ5cDFnUjFiYWhoSUxmZGRy?=
 =?utf-8?B?YlM2TkVBTWUvMTFOV2NZbTMwNkNpaGVRNGk2VWQyVEJIUnluUTE3cWZMaG9y?=
 =?utf-8?B?RitjNjJLSFpMc2pCRW1MNndISFBZcWR0bHUyTlRGVm1KTEdZbFNmcXZtWkRK?=
 =?utf-8?B?ak1pcTVNdEJrclNEMDhyUEJlYzQ2bUNOaGFSVDVVMFNxUHFOMW1LWVVwT2px?=
 =?utf-8?B?SDUwdGkxb0Y4OTluejltb1FvbTRQVW5yVko0THlrVXE3enRvc0dLMTRTUWFZ?=
 =?utf-8?B?a0VwUUErMU9GREt4YTRLWWQwNlozM2NMaUd4MVA2OEZMdTQrdXNQRW5OTWUw?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 540711e3-b8e7-471d-6916-08dbc50d964a
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB3908.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 19:10:35.3802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OEQi0YbfnJcRPFcn9zk9jzrNc+8Vd2pNxWMzoy6IS/yeb+mz9Oznd6BndfVOoke+j+1PGNaygaQt/ai/f9hPc+gP6bDZ3iPZXTSMnkxw3Ok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7092
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/4] drm/i915: Add GuC TLB Invalidation
 pci tags
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/4/2023 12:03, Andi Shyti wrote:
> Hi Jonathan,
>
> On Wed, Oct 04, 2023 at 11:36:22AM -0700, Jonathan Cavitt wrote:
>> Add pci (device info) tags for if GuC TLB Invalidation is enabled.
>> Since GuC based TLB invalidation is only strictly necessary for MTL
>> resently, only enable GuC based TLB invalidations for MTL.
>>
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Jani was mentioning that the pci tags is not a proper title.
>
> No need to resend, I think I will merge this series, so that, if
> you agree, I can change /pci tags/pci flag/ before pushing.
Have all the review comments been addressed? Surely it can't be pushed 
until it has at least an ack from everyone who has expressed concerns 
about the changes?

John.

>
> In any case.
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>
> Andi
>
>> ---
>>   drivers/gpu/drm/i915/i915_drv.h          | 1 +
>>   drivers/gpu/drm/i915/i915_pci.c          | 1 +
>>   drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
>>   3 files changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 2b7a6db4d0d44..1e25cc1e3dba1 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -807,4 +807,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>   #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>>   				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>>   
>> +#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>> index df7c261410f79..c3a5d5efb45d1 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -837,6 +837,7 @@ static const struct intel_device_info mtl_info = {
>>   	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
>>   	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
>>   	.require_force_probe = 1,
>> +	.has_guc_tlb_invalidation = 1,
>>   	MTL_CACHELEVEL,
>>   };
>>   
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>> index 39817490b13fd..ad54db0a22470 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -173,7 +173,8 @@ enum intel_ppgtt_type {
>>   	func(has_coherent_ggtt); \
>>   	func(tuning_thread_rr_after_dep); \
>>   	func(unfenced_needs_alignment); \
>> -	func(hws_needs_physical);
>> +	func(hws_needs_physical); \
>> +	func(has_guc_tlb_invalidation);
>>   
>>   struct intel_ip_version {
>>   	u8 ver;
>> -- 
>> 2.25.1

