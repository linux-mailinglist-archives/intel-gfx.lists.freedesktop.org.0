Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA9875036C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 11:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E6B10E3DA;
	Wed, 12 Jul 2023 09:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D86610E3DA
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 09:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689154859; x=1720690859;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SRNhaAnRNS6dlq/S+VOFF3a8XiA4DsWpaoDUsOXQbKI=;
 b=oAa5vBcYHcGlWIjAurXTQcwHnGft3ncKvE3kfqhVxkfJoZ8nSZ5Ifq3/
 itM8FEPCthb7AnTvc0SrvYjPdBcny9xFHFs/3NAngKAJSsuWR5gkT7BRK
 iv6dygyk80UkSU21w5ld42nzuF3pflE9fWfyIAYyx0mSBIO5XsB5xRKCD
 nkNlYcZj5cANwwDGB6e1X+TjJtyTtfML3WJuBqoKCV8az2Fwev+ZYyZud
 T9nACkRS4KDs8Y2+cTdT2jv8EGZ8uZ343N660FLTl4lkNHw4vRrW853Is
 Gu0nXFentaPJ2ti88+ARhHcAzJBlhRERqgnqNP/s9QR6WlOnjl8tGJCi0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="364882145"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="364882145"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 02:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="1052114125"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="1052114125"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 12 Jul 2023 02:40:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 02:40:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 02:40:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 02:40:57 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 02:40:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T55UC9rN8WpZuGiiYL9Hc7DOv+D1J9QfhStqexPq7PQCDNzU84B7RV70UVXvt22nBYRWQChPCd6tIlcCo1doae+8mz9GfwsuQHeeJF64bLiXwvn5NU0SnJ7dyT7QFfkvrCpcMPuv1MEJUdOD8HcC6at6AliF8amxao9d3eXg1FqijbbEw9TR06OnKxCpSYS9qAmLh5tovOGRvJNR1pTdDRIRZP/dIPgjtPr0NgzGdoLcxLbZRxcvxqft8jfj4evvQ3TbjmhNFHnesvqd8jGq8lm9L+3OtObg2JeiPRDBufbUF0Evrh257XhSHSTVwv2LV4VydI0xU9+gcP/OvvQLeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lbkeK090x/m3u3ou03dX9/RxG83Ss+Uk5mMQAVz+PbA=;
 b=XF3XBqsT45UomUG0iuCgJrrwR1PBh2Mskl0ZXUvF0KTAULKH84oTT8oBVOZ7Q0fpHfyIxetMEGmL3f1YxB1OXLRZOUglskXg5kn/ulKNt9KaCUKUkyxKUHRrdbDeumT2oXjPE0lf1uXHlPLumrGeCXJlV56O8eVNgmrLggcDu1+6k2FGQqG7U2JjkmWDe6LUXquNUj2MIujEoi3AhxHulTsY/R9RFMzkvkphIHRx0ME1J91TjyeNveYPqaKXjpTMDcTt0YARi+xZ4Ci2+AUNDRQZNxQS6oRBHBv2bXBfSFQFIkhnpUY9ENcfsynuHexz26R0Lvbnh8FqeHlykhoWuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by DM4PR11MB6359.namprd11.prod.outlook.com (2603:10b6:8:b9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Wed, 12 Jul
 2023 09:40:56 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::4a21:547:c3d4:18e3]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::4a21:547:c3d4:18e3%6]) with mapi id 15.20.6588.022; Wed, 12 Jul 2023
 09:40:56 +0000
Message-ID: <dbf7f62e-d665-ac9b-c57a-81526fb43006@intel.com>
Date: Wed, 12 Jul 2023 15:10:41 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Luca Coelho <luca@coelho.fi>, Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230626130555.2391750-1-suraj.kandpal@intel.com>
 <85bc887748d4058e8f2d8924db8ea73cf8c8e3be.camel@coelho.fi>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <85bc887748d4058e8f2d8924db8ea73cf8c8e3be.camel@coelho.fi>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:49::17) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|DM4PR11MB6359:EE_
X-MS-Office365-Filtering-Correlation-Id: ff17cd83-1fa1-445f-80a3-08db82bc16fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RcQ/WwncbmXtYj96V8U6HRY7WSIlmqpuiExqGChwSZVBt+LFrewh8+pSEOIKe7idQSW0jrEZ7wm5fBK9OvIIyjq2+1FCo6TSAuxU9biYT3HMUAYCQ1caOAet2PDDjesGIxViI3xgs5uS7YinriDo5E9ngh9ntKZqK5X43FqImqc4kF+dKOJ68qK7oaHTndxoWHbgDtYZkQ0dDsMS3KvZ4OcWgbQHfKsR0KBVWtwGL2b5yEJU5HqLPehcbwg84jx1U7bi8TlQE37LLodo973BgNAv/b61oPHJdrPSJb80udP7Lj1l7JEHnV7r7LT8QH1afgkWWCbYDsJ3T0n4FUGFwakPNWfUNH1l3F1MrpeRIeL52fu7DZgojO65lswE2ShZKCoew1fz3ATfluaItBUuDhLjJvcD/vbmOpOkDO9yX9R4kp/3qJ1i45WNj2qvoLkMohfn5vE1yWeqcCJcYQd7wEdWqP8kZG9B8jyzIIATeZI24tHasL2l6A2Ywx2b1QQCOlafY2e/REYSZBoZ5bJaWECA6wjEDSGaF/bUb3cH+r0fR1YXNopH4LmciRp7x2uXt/hmkWiHxTd/EAz0MXel8GcJYnjOvya38mIuj+sNk3mTX2FnQVkthizs+jUfbRxaMabTZrEySavTwz8upLQcxg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(136003)(396003)(376002)(39860400002)(451199021)(110136005)(6666004)(6486002)(36756003)(2906002)(478600001)(82960400001)(41300700001)(8936002)(8676002)(5660300002)(38100700002)(316002)(66556008)(66946007)(66476007)(31696002)(83380400001)(31686004)(55236004)(53546011)(86362001)(2616005)(186003)(26005)(6506007)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTF1cW1tWFB2UktXcjR1Q2liMDZtdVAxWUpjTEZwcmRsMi9lSXpFcXY2MXVj?=
 =?utf-8?B?YkhuK0lMNXliRUQwYjJkdkdpaDBJQUpESkRlTmMwaUtSNnpHR2hrdTVtVXVz?=
 =?utf-8?B?SjlUOEh2NHk0ajE5eHB4YkdhTG9CSWFGRWNHV1l1dnNWbHprN01MWktHYTdB?=
 =?utf-8?B?TU1vTEFlY2w1MUI5TGhMYmRHWm9URzNHemlicWgydFlXa21BR2tobXpBeWdS?=
 =?utf-8?B?a0NvazV2UFQvM3U3RkVDOGV0ek1CUzVCQzIrd3RMbHlTT3o1ZnFuQk5QT0JE?=
 =?utf-8?B?M1krUE1ERTRBekhLMW4yTlF1c3dtdmp4OEdyOFdzdVBubG44aDhxdStlUS9C?=
 =?utf-8?B?VVBWL1RTQW9BWkR1YjBWL25yUWVidXRvcmVyalR3ejFqMFpFZzR4MDNKOWRv?=
 =?utf-8?B?eDJaNGREQ3l3dVJIK1FPTTRXVzU0NkNiWE9OV3IrZVVXaEhaT3B0S29yV3JZ?=
 =?utf-8?B?R3o3cW5zM0NTbkxvR2VmZHFFSTdoRnpNQUV6dSs2cENFWWVURTFxQXU0NTkx?=
 =?utf-8?B?bnhZQVQ0VytuNmpxYzh4Y2tzQ1o2WlBSc203blNKNUd1VFN3MVcxcVZYdlBy?=
 =?utf-8?B?ZmxtRjhVVmd3Z25NUWl3VmFYd29meUozeFR5WlVBUHVLWGhBODBKS09VREMr?=
 =?utf-8?B?UVJ1c3YyajA5TklEempNUStzN1VMOW1LMU1sWkptekVOUEIrRmtyRS91Skwr?=
 =?utf-8?B?bUVUS05kUTV0RFNuMW9MR3pKaDI4ZTBEYmpQekphb1FsRFFvS1ErelRSZjZ1?=
 =?utf-8?B?RkhmZFpjdWZkNWt1MjNXYTFSdEVuUkRKdG5PUFZWMVNqOEpuNytpVGZyZlRF?=
 =?utf-8?B?cWtRZFo5OTQ5MFo5dmhvRVVVSnNSSVZrd252bHBrUHd4Y3pyUEIweWE1a1Js?=
 =?utf-8?B?V29pU3VucURQYnJZSCtzbG5mWi9md0wySDVBd2hXVHhudHFQMTlVM0JHKzNN?=
 =?utf-8?B?U3pCK1JPbTdBOG8veWxWbE5TL2tNVThWbFlIbkJEank4czZ6bHFGTlVUdHg4?=
 =?utf-8?B?VmRuM1hvRjRueGsxQjM1NWxFMERjTUNFTGZ2TEI1RU5qNlVBdURWM3BTL0d4?=
 =?utf-8?B?V1ZickY4QmVJMnZTZ3BKalJFcGgzWjVDOTZ4V0NOOUY4bi9Dd1JRaXhJV2c2?=
 =?utf-8?B?a1puUzNuaFlVUDdGM2wxb2RVYXZRMXo3NmRLK1pDS3RGSWcrSXduck4xTDY2?=
 =?utf-8?B?b0lFalFOTUdYcGo0eFZ0NUhXSEtKcTA5a1l4d2tZTzREZmlOQjZ5ODlxaWNy?=
 =?utf-8?B?V05IQmNzRk93WE1ZczRwZ1JLdjVTSWc2N1RmQ2lnclQwV2E2emxqUy9ZRjVw?=
 =?utf-8?B?dmZrWDdPd010OU5kWWlhczRqbDYrdlY0VGtzd3dVKzh5Qzh1VFNrMWs2a01P?=
 =?utf-8?B?VDl4a0xFZkdPY0dkdUdOVXpsdDZoTWpjcVdRdnE1UW90djcycSt6bkNncU9u?=
 =?utf-8?B?dEl6NXpnb0M0emZ5TUtpVU5uYUw5Y1JEQS9qN0kzb1ppTWk4UU5YZGMybzZZ?=
 =?utf-8?B?dnVBZDI0cTRBazZ2azNsM2FobVlDakpHWVFjamk5eTFNSFlEWTV5M1c2OHY1?=
 =?utf-8?B?Z3VWdHEwYitqdzVkejZvWVNiRmlHYkZUR05xZUdBaGN2Q01JMkNUTEY2eHcv?=
 =?utf-8?B?WGNuKzVmekxoNDRDcjd1OUpvZGZtMURFVEZGUzBtbExCRDdQblEyVXJ5T0hY?=
 =?utf-8?B?Y1lOcnh2K0ZGNzAxalBFWnJ5M0Y4MTlGS2NjNWdJMlRVQmxDOUhzWkREZ3p3?=
 =?utf-8?B?K1ZSRzNRYWRRbEc1TXFTTTZ0dHBFNVNzd1NmUldtdkJSYVNKdTVJcCtBNjYr?=
 =?utf-8?B?RTJZZDl1d3ZiTllyMG1RRUM0MXpnVjBYenpDeFhjT3hlOVNSejZ3RXRQdm82?=
 =?utf-8?B?cU5ocGJuTkhkNHQyQzBmbytFVStXcG5JVVhpWGM3aDQ0YnRvQkVJSURxOEpH?=
 =?utf-8?B?M2FDbmJCRzBPMUI0bEhUTFlRL2dxZHBISFhvZk1QRTFVMGIwOGk5bkFveEVC?=
 =?utf-8?B?QTc1TEM3eUpCdWtYWThNT0pTZm9LVTBFU0J4cU53RUFwK3lrMmJiTlRLaHBI?=
 =?utf-8?B?ZVNxYndyeThMYVRyYXdoRUFpdDh4R1lORnBCb2RGc3owL0ZNMDBmZHZzM1Uv?=
 =?utf-8?B?RGRCUEZsdGhTQ1JTTXZndEU0TjRrc1QyRExsMUtKcVB6SDgyWGFOQ0p5elI0?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff17cd83-1fa1-445f-80a3-08db82bc16fb
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 09:40:55.8787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /+yMo4pTJCfA9gNUzrW4qhFfqwyV00p8S4RjZcHbo6UQGTExX1QoXZSk2jvJpnHPmbyMCvE29+jlD213d7sCy/7y0XZSQawQ8WlfDTPIKQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6359
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vdsc: Remove FIXME in
 intel_dsc_compute_config
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


On 6/26/2023 7:26 PM, Luca Coelho wrote:
> On Mon, 2023-06-26 at 18:35 +0530, Suraj Kandpal wrote:
>> Remove the FIXME and the code related to it as after verification
>> it does seem the previous values were typos and no hardware spec
>> mentions using these particular rc_params.
>>
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index bd9116d2cd76..d27e84696f31 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -237,18 +237,6 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>>   
>>   		if (ret)
>>   			return ret;
>> -
>> -		/*
>> -		 * FIXME: verify that the hardware actually needs these
>> -		 * modifications rather than them being simple typos.
>> -		 */
>> -		if (compressed_bpp == 6 &&
>> -		    vdsc_cfg->bits_per_component == 8)
>> -			vdsc_cfg->rc_quant_incr_limit1 = 23;
>> -
>> -		if (compressed_bpp == 8 &&
>> -		    vdsc_cfg->bits_per_component == 14)
>> -			vdsc_cfg->rc_range_params[0].range_bpg_offset = 0;
>>   	}
>>   
>>   	/*
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Pushed to drm-intel-next.

Thanks for the patch and the reviews.

Regards,

Ankit


> --
> Cheers,
> Luca.
