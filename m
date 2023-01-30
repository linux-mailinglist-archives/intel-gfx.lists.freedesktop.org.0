Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8BE680B68
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 11:58:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91D2010E100;
	Mon, 30 Jan 2023 10:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFEE410E21F;
 Mon, 30 Jan 2023 10:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675076290; x=1706612290;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wLZuujn7MRptauxDFXFc+litpmE5pOiRfRiCgOhRWhI=;
 b=Q/qU6/DFBJOCghu6gUScXSFwSoj013dyJLWF/loY32k2AaoWnc/NfHMV
 6TGZZDi8O8j/MtM9kTxkGQI6nrmZB5QVRYBYAdT/pA1tYAesItsOOjLiR
 aA4SDBiOtWQvsIe6lCq6t+jQcom6xbLqB6p1tpnbWKxg2VChSsFzYCpGd
 kPxrwP4ufs2+ov8WD3539aAfwCagbLmMXXjnXZl16wAQHE7SYmLe9Dli8
 UDhU9Fy6eKHyBLlylD1XbFy1rdGxhcXmm3Kg2ggUE1mOWaKf25Pf7J+3c
 Ch+Hy91O2Lr2LpYAYI5VWi34XvKf0N0uNsaEfOfDMfNtM5gDHHXDGBJiF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="325227198"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="325227198"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 02:58:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="727459013"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="727459013"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jan 2023 02:58:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 02:58:09 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 02:58:09 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 02:58:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PEjHAOl5HXoVl+oqQEIN8+WNE+mkVFhF0A4OS1Ef8WuXgC7YzMZtfMXYvnrkO6TStfsKoP0PvgouN9NP6clzoQDQlBK5AZgcTOSr26uQI5WuFetEYGH4h7Di1Oo26FM0PzJ/ZcPCp/8Qitx/jKw+6atHlIM9NlKHuHBHpoXMMDstRpAT6Ceci/kPxzp4qlaEvdZshIMUjTjhjzyNQpOVEK1RoBzbcHli6cN24WfhywuHeDBm0e9p9w2peucgLoLT1A9cn8KZ99knaCN3UwnlJ5qkV8eMu1CpgsScZxCCix7XlIzYFreLImfNu8ReMdsDkeHI5vDjb9NOKmAjDt6ONA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=meTd+HJyGNZ3oTRm2FgtTyJ7UsQBYVoUmcp1WxgpQRs=;
 b=MJWsLDryOGAxWCBDwSBPHBuod/nvRd6biqnObSJvIpvTiBpi64BN22YqIuC/hZgsGe5SZqnQSPa21hNiL6sh9ladNSzkoZkXCVnACka6FAgic/rWRLHud1pLWUyPfwPWvxJuTmtNcRKklJZt684gatN0rcAKb5OxEFrtyrjI+uut4yoPrzZyvvaeIwqJJMjfa5138oZjpUSytrkQfFOc4+IfouBrKtYqJ5r3e3FtwXUP6zbVOPJJ9C4ab1enaYMwSwc31eCk8SBpO8gAQHRNcvtPDH+wzKv0evI5Kfc1L2r0mmQ1jAglpzfTdVhBRDxlwGx1jEA5BWZgJLKFFZOxvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by PH8PR11MB8106.namprd11.prod.outlook.com (2603:10b6:510:255::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Mon, 30 Jan
 2023 10:58:07 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::755:cc4:8c46:509f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::755:cc4:8c46:509f%6]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 10:58:07 +0000
Message-ID: <68602dd2-698c-7458-4c1f-620f518fe949@intel.com>
Date: Mon, 30 Jan 2023 11:58:02 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, <igt-dev@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
 <20230127111241.3624629-6-tvrtko.ursulin@linux.intel.com>
 <20230127161052.thz5q2sqxtge2cwn@kamilkon-desk1>
 <facc58f1-ec41-67bc-3cb2-a15965b7a27d@linux.intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <facc58f1-ec41-67bc-3cb2-a15965b7a27d@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0183.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::19) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|PH8PR11MB8106:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e624cfc-8f25-46c3-1f70-08db02b0de02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HVxYqxAsVXmtxnuNBb2gT+XQKiEF1sZAtQ5hy8TBQWfE4rOnzDu2Fanc07AwsMhFr1PKeu2i3wJQaZ2G6VHY84WqIQQ0hY2ADrWwxmkRHUrrffIWGPSH2FuL6qJ3F+VBqHI4NJim9Db44NP8dVEcO57q15dFOwDsIh4D0q+X7EOzKYf4944YcEKQOCZyI6/qdhHMdVGUnW9eX5JtyWuH8y9y6CDDEsQuVg/7gdUBO4N1U2hob0cjhVpz1PSKWGkj1fgtm9UKYIKRNtprWixdEhnpOE34feyWectLomLUqzPLT/zbVIdX30bnuvbpWnDxLR99DOlhzcLS/xdrNsipjEssM7MXhf3KFDI4548tHgdaYFlZ2zVgKaCrn6LXOYNbuMqX0x+Rbha7tE7mNx6HefR8wA2j6RuspUa4dgIjrNqAgRC1zi7lbFU9K3JewRLii8GgZaoXdiS1F5/CkRLo0q+TnojLgSrBsrjzaloUB+mX2wOxeRNgACcCeEjmKUKVpibVJcEIP8GOwLNAE0i7jgG79nF4IFmczFopCNo+ygjotN3Gifn3LvTtiSGvaOmrknHstZXl6iAP/91g3VkCm7qVtLiT1unreuTdJ4lGhMNSxAl4gvCBf8B46u6SPK5sGRVgM7PyFddcjnmjerKPd30+y/dc3DtliDHIEaQ/RUotFK23MmpMxsSmWoYIF6rnx32natlGxFKbumxeV974YEACgS+WCCli3mLvBUx8CQy7sUeSQSvJWVpVOMl9eW0axh0yYojyJk4S7dPGLG63mA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(396003)(366004)(376002)(136003)(451199018)(41300700001)(5660300002)(8936002)(8676002)(86362001)(83380400001)(82960400001)(66476007)(6486002)(110136005)(66556008)(6636002)(38100700002)(36756003)(66946007)(316002)(31696002)(966005)(6512007)(6666004)(6506007)(186003)(478600001)(53546011)(26005)(2616005)(31686004)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHp3Z3BLNkZaVWc5L3RUWHoyTFJyMVJ2QmkzTk15a0swelBISDFXUGw2MlhB?=
 =?utf-8?B?cGZnTFlUTjVKUDF4T0hlUGxHN3drNVNzUGRLdlZHZEs5MnRBTnFlMzhpeFY3?=
 =?utf-8?B?TjMrSnIzVzNBSCtaM0hPVUF5QVJBYzNSTVkvODJQYnlqV3BrNmJhZFI1TGlR?=
 =?utf-8?B?cmFsTFMvSjk5cFNLT095aVlYK2J0UUxlNXZmeFBaNGREdjUrN29vNUNmZDZ4?=
 =?utf-8?B?dVZqTlBkd214cEF5ZXhmaVpaVElOQ2NwcWVxS3VzM1JXcTNLS09lcEd3eUdZ?=
 =?utf-8?B?elRhd3Vid3J4TUF5V1lJRXZ5SGxEM3VrTVhlSlZLQTJVNTI1TVJucVljSmFv?=
 =?utf-8?B?MVJqNyt0aWQ2d0ltTkhtSUZhRDJHcjhxaWQvODhxazFWRHpnUXFHbnNyVklV?=
 =?utf-8?B?Vy9UeThNMWFveGdCMERRNWZOdkM0VnlMdDJTaEk4UkhhdG9wcC9mNTQ1U0RT?=
 =?utf-8?B?WGNWL05mV2NzdzgyajAwTkUwb2ptRm83Q0NYcUV1d0ZWZlVVRGI5Q0l6U0lZ?=
 =?utf-8?B?WHY2bVU2RUxsemMrMXcwTjFvbEJYK2V4dnRZbkM1UDVZek9lVkhsNjFRdXM5?=
 =?utf-8?B?K1lHQU81aUk1eUo3dXJ3QlVvN0hBQnlmWUxCUW82bGUxVmlicWpqVlliTk0w?=
 =?utf-8?B?MFB0MHBtWjc5SUxEcDZzdGhWNWdDckhudE1rbFNKU3RTUzJMVkpLbEczVkU5?=
 =?utf-8?B?U1dwOHgyc0Nsb1FNa1NiaVFDNU5HbmFyRWxhTHFBbm5ZZFRWaWxBeVk0UWR6?=
 =?utf-8?B?c3phY3JZTTEvV3NDcUxxdG9OS2FKVUtwYXRId1N0bTFVMVJNQndvOXIvWncy?=
 =?utf-8?B?dHdaU3V1dEtZRXBqaTFIZzljcVpwUjEzZHNNWEdzb2Fjb0hrMy9leGU0dGNU?=
 =?utf-8?B?M0o5QzJodzV4QlBnYythbnZHMUw1MW16eEhoMzFRTUY1eGEvOWVyeGN0bFlU?=
 =?utf-8?B?Z0cxNjhuRUtPYjVYdWNKVjZGZ0orZkRjdGZhQkM2MENybjBCVUxzOGJ3c0gz?=
 =?utf-8?B?QUpOTFpSRnRpL0hTU0M0N2E1b0lTdHZJNllrQmpLeGF4TUN2UEprRDI2bHIz?=
 =?utf-8?B?RCsvSGh0TGZqMDN6WEFvN3RyZjU5aVBZdkJlK2V5TFFpakdEa2ZwMEp6c0xw?=
 =?utf-8?B?VC9UVUMxbE5Lc0dlKzI2TkEvNGl1MHNEUExWTkxidUhEMUM1VjFLMEYrM0JT?=
 =?utf-8?B?SE5IRnFidFdNZFc3dFNSei84M2FBWmFPdzkxU0djdGxYV0p6MHlMNkpoR3Nw?=
 =?utf-8?B?bkg4cytSYmZRREhLZ1N0WFhnbytNUDhzQkhVU0lraElaRkd6bjg4b2UyVk13?=
 =?utf-8?B?SVJlMld5RDkxYWhKN295UDc0UCsxTlRGUWhMT3l4VWJLY0tGbVZpR2pXNGxh?=
 =?utf-8?B?TXRzV09ScjErKzB4eWc1ckRLNUkzRWlNVFo4eHJVTS92NTFaUU9MQyt1NW1B?=
 =?utf-8?B?Q0FLaWlWV2J5bzBYY3BRNmR1dFpIaVNIWGZ0L3plNWtiZ2t6MnhaVWRpUE5S?=
 =?utf-8?B?R3RsSW5BOVFXRFhwT2JaU1RtM0h3ejlia24vZ29ENno0bVdDRjUwa2tuMTIr?=
 =?utf-8?B?Q0ppcFZyY0JTU3FYbmVLRDEwNjhNWG0zdDBCNzBRN2RlOUVMMW1TVGpucU5o?=
 =?utf-8?B?N3FnRDV6NzhUV1Jqc0JyY3FITU80MHlBWlpRVUZlaVZJaDM1K21lMzN1YmUx?=
 =?utf-8?B?dlBZdXlnLzhRRnZFL2dtV2JiUzBNaXlQWVFOTW9mTEs1R1ptVG9Td0owUUVR?=
 =?utf-8?B?dlZFdERmS1VrVkErczJrdkxyOHBVWk02eDRxMmgwQnhDMytNVVZJYVpKMDFH?=
 =?utf-8?B?aUpMOVpiSGgwaXBmWHhqbExSUjAvSEdGbWUxK0swcGRhWW1TaTFCMWZFN1V3?=
 =?utf-8?B?RkM1Ti94MjZuM3NlVXF3YnA2emhiVE9oQjdmbWF1V1NUWXZDRnI2NXNYb3BE?=
 =?utf-8?B?ZUsvaWFDTTdjdmptVkNQOEFKNlljOVZRKzdQMVhocWd2bjVnSjFIdVppNEEy?=
 =?utf-8?B?MlhUMmswZW01Z3FEY1JudzlLOGNmbWNOeFBnWWI2WTFjQklsWmZmRm9JalA2?=
 =?utf-8?B?QVdWdXdpMFR0VklhUEczYSs4bEhqSm5FNlhRTnI5ejFaMUlSQVg2M2w3ZEta?=
 =?utf-8?Q?qksz5S7A0Ghmegf0kRIrU9BVc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e624cfc-8f25-46c3-1f70-08db02b0de02
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 10:58:06.8675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EX6KbLfNWX2kBomC+Hnf1pBWCKNs9SLtxIu5//niJ5aNB9Gyc7TBPUYYIdhnMud9VOQY2h8/hZikjYRibuSp0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8106
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 5/6] intel_gpu_top: Fix
 cleanup on old kernels / unsupported GPU
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


On 1/30/2023 11:55 AM, Tvrtko Ursulin wrote:
>
> On 27/01/2023 16:10, Kamil Konieczny wrote:
>> Hi Tvrtko,
>>
>> On 2023-01-27 at 11:12:40 +0000, Tvrtko Ursulin wrote:
>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>> Avoid trying to dereference null engines on exit when there are either
>>> none which are supported, or kernel does not have i915 PMU support.
>>>
>>> Also fix a memory leak on the same failure path just so Valgrind 
>>> runs are
>>> quite.
>>>
>>> v2:
>>>   * Fix a memory leak in the same failure mode too.
>>
>> Please rebase, patch do not apply.
>
> Hm how, CI applied it fine. Maybe you mean as standalone? There is the 
> same patch here: 
> https://patchwork.freedesktop.org/patch/519751/?series=113096&rev=2
>
>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Acked-by: Nirmoy Das <nirmoy.das@intel.com> # v1
>> -------------------------------------------- ^^^^^
>> Delete this.
>
> I can do that only if Nirmoy agrees. ;)


Sorry I missed this, my a-b stays as it is with the new version of this 
patch.


Regards,

Nirmoy

>
> Regards,
>
> Tvrtko
>
>> Rest looks good,
>>
>> Regards,
>> Kamil
>>
>>> ---
>>>   tools/intel_gpu_top.c | 21 ++++++++++++++-------
>>>   1 file changed, 14 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>>> index 7aa233570463..0a1de41b3374 100644
>>> --- a/tools/intel_gpu_top.c
>>> +++ b/tools/intel_gpu_top.c
>>> @@ -340,7 +340,7 @@ static struct engines *discover_engines(char 
>>> *device)
>>>         d = opendir(sysfs_root);
>>>       if (!d)
>>> -        return NULL;
>>> +        goto err;
>>>         while ((dent = readdir(d)) != NULL) {
>>>           const char *endswith = "-busy";
>>> @@ -423,10 +423,8 @@ static struct engines *discover_engines(char 
>>> *device)
>>>       }
>>>         if (ret) {
>>> -        free(engines);
>>>           errno = ret;
>>> -
>>> -        return NULL;
>>> +        goto err;
>>>       }
>>>         qsort(engine_ptr(engines, 0), engines->num_engines,
>>> @@ -435,6 +433,11 @@ static struct engines *discover_engines(char 
>>> *device)
>>>       engines->root = d;
>>>         return engines;
>>> +
>>> +err:
>>> +    free(engines);
>>> +
>>> +    return NULL;
>>>   }
>>>     static void free_engines(struct engines *engines)
>>> @@ -448,6 +451,9 @@ static void free_engines(struct engines *engines)
>>>       };
>>>       unsigned int i;
>>>   +    if (!engines)
>>> +        return;
>>> +
>>>       for (pmu = &free_list[0]; *pmu; pmu++) {
>>>           if ((*pmu)->present)
>>>               free((char *)(*pmu)->units);
>>> @@ -2568,7 +2574,7 @@ int main(int argc, char **argv)
>>>               "Failed to detect engines! (%s)\n(Kernel 4.16 or newer 
>>> is required for i915 PMU support.)\n",
>>>               strerror(errno));
>>>           ret = EXIT_FAILURE;
>>> -        goto err;
>>> +        goto err_engines;
>>>       }
>>>         ret = pmu_init(engines);
>>> @@ -2585,7 +2591,7 @@ int main(int argc, char **argv)
>>>   "More information can be found at 'Perf events and tool security' 
>>> document:\n"
>>> "https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html\n");
>>>           ret = EXIT_FAILURE;
>>> -        goto err;
>>> +        goto err_pmu;
>>>       }
>>>         ret = EXIT_SUCCESS;
>>> @@ -2699,8 +2705,9 @@ int main(int argc, char **argv)
>>>           free_clients(clients);
>>>         free(codename);
>>> -err:
>>> +err_pmu:
>>>       free_engines(engines);
>>> +err_engines:
>>>       free(pmu_device);
>>>   exit:
>>>       igt_devices_free();
>>> -- 
>>> 2.34.1
>>>
