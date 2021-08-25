Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8422F3F7730
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 16:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA3A6E249;
	Wed, 25 Aug 2021 14:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2054.outbound.protection.outlook.com [40.107.237.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68766E21A;
 Wed, 25 Aug 2021 14:22:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RkyVl2ZD7tYZOWmPhc8GgQT/QhviuC+0Hkh73ome0d5MOm4myMK0Vv9qSs/7KUrpcmjdpxEQEMAaP9mo16ft1wDtvGY6zNtPQNtrA8Z/Ur7/0V0sLpWrXZ6FO+liLAmOyBCNKw5+qGWvx6TkU64SGpOqivVkT6CTVi1fkFmQ+yTZM8H70/Nmn8d7y4yDu4hz1T1DCr6VPCFcMKyVmsCW3Vh8aeHveZgXJihy4jpW6wevtdcYwOoPz8qLbQZmmF3xKlf3kn5uJYMIVjuRolxy/Q4yMXRwk5EnWyeUMej1BBkI4EEv4Hboob+8vrv4I6Ja+F1WPy9fNJlVWy28BwftxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fewK8RBicUg5VAbXXRa9EhEPfngNqx6oVDjKHo+hUK0=;
 b=EeTp4AZ3cvzPQU4un6AI7onsMQRfRENZMkHw114RpA6kW8fhMGUwVzEPgbHGLbejvyPpl8oOpPqABo5xmVgTRL2O80bwUilNsh/E5v0sJsOXbKCH9+V0+Ud/eRsSKY10T7dDqQRChESBfbxBSgZQPc/a6jz9MRRP9AInP1cEMXHUcTwe0ohq5bcqjN0cda4Zj03lfRzCULcgf43WDyDRbW3Wj7tos2v8YkB9PPft+AmCqigLSCxWG2JDnRqpMKGSdI5dIkXnRXdrXs2h3rrFEhmipRqui7OMuktjhZpj8WGoXZIiGTsndV+KGoaNt9cgx9hJXhyOF2uM0H2aPsP03g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fewK8RBicUg5VAbXXRa9EhEPfngNqx6oVDjKHo+hUK0=;
 b=0icHygCCZTJYve7GeAmZlhzqQasHgMfmNVVdDJOw3X49Y0G19HLj+14BRvttafj7CcfegoFPD0XxqqdgC8R9RTaNAlCMVhhWu7dOK6uecC08ADqhRZ0lCbMLvJkC+ukWef3iVF374Y7ywxyIAzxqmHr98u36tGapk3AmOe3emmA=
Authentication-Results: amd.com; dkim=none (message not signed)
 header.d=none;amd.com; dmarc=none action=none header.from=amd.com;
Received: from BL1PR12MB5349.namprd12.prod.outlook.com (2603:10b6:208:31f::7)
 by BL0PR12MB5538.namprd12.prod.outlook.com (2603:10b6:208:1c9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Wed, 25 Aug
 2021 14:22:01 +0000
Received: from BL1PR12MB5349.namprd12.prod.outlook.com
 ([fe80::152:9dd3:45a4:eeb6]) by BL1PR12MB5349.namprd12.prod.outlook.com
 ([fe80::152:9dd3:45a4:eeb6%4]) with mapi id 15.20.4415.024; Wed, 25 Aug 2021
 14:22:01 +0000
To: Koba Ko <koba.ko@canonical.com>, Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "Feng, Kenneth" <Kenneth.Feng@amd.com>,
 Alex Deucher <Alexander.Deucher@amd.com>
References: <20210825043522.346512-1-koba.ko@canonical.com>
 <20210825043522.346512-2-koba.ko@canonical.com> <87y28pev59.fsf@intel.com>
 <CAJB-X+X2Vbj9bAj98yxfAhi2-LMk0=_Hq=b1-1o5iOykQRj5fQ@mail.gmail.com>
 <87sfyxes9b.fsf@intel.com>
 <CAJB-X+WAS0-O436qbXAHO9Q0GDEoUW8bU7VvgX74fonUiBD1Ew@mail.gmail.com>
From: "Lazar, Lijo" <lijo.lazar@amd.com>
Message-ID: <b784af82-4876-6c76-db7a-d130c3991894@amd.com>
Date: Wed, 25 Aug 2021 19:51:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <CAJB-X+WAS0-O436qbXAHO9Q0GDEoUW8bU7VvgX74fonUiBD1Ew@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BM1PR01CA0100.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::16)
 To BL1PR12MB5349.namprd12.prod.outlook.com
 (2603:10b6:208:31f::7)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.31.157.114] (165.204.158.249) by
 BM1PR01CA0100.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Wed, 25 Aug 2021 14:21:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4dfe68c5-ef12-4d0f-c82e-08d967d3b46e
X-MS-TrafficTypeDiagnostic: BL0PR12MB5538:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL0PR12MB55383A287BB22B16A68F925797C69@BL0PR12MB5538.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QxXFQgPBZ5yacMmfvxc7gGm5W5mmhglfqZwXR323RNf1eiq5jSVv6Zq6k2EoYDlQ0yLg9x8kA3p6DSmAVWv6/+tatLDCUypb/HjSRs+/XiAyN2QWeFDjGUqADc3AQSvg1StX7QKdf6cU4WbDwQdrzA6a3nrzOVmVgC27q6XfUGTmy11yMIg3L+W5NM01u79iyTmA+/pt1+remfwDwd28XEe0NncAVsL/LXUmH312tZcpF8U7Evpk8yy6UoXNf1/HX50G2N9H3uQa+0HDDZhFWvIa0P4m7pM2gdhOLz7UdDvLf1I3XiIIVrKrfzHSa3GUyYaq4tQsWWBQ6c4lueIJ4OPHwST5Oo/6cYNWorzU/bmoRLB68MGV30M5V2w6zzWpH/Y472xQAc5T+ilpTK/aUJb1h4Bi7gIApITlTUvy6dUdDAIplqO0DadTR18IOd+a3MaDe47jJfcs31mAwRC9EPtzDebt28JVSl7hMdBsoUb5N96r2J8zJOHYMEy9LcY0WDq+wEDM+b7kSSN4E5AQUMKJbIuBDsrijoFNWVTgutCdasCvZpR8XuKRiZDrcsNl/lr/zDw6phkBz2jOKkTCumpPrp9y3uZDXSUtXNJrPUIcDkoSI1BwmvTlablg0rgtzkGRD8j/mDLw38Xtl7FPwg7gn9NxTytJIE2F7Vr65yrc2jfBwS/ovZ9h+8/YgTKI8PsyYci5W4rgrT369wGEeTxt7v6vnMJO08W4SdDiLSQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR12MB5349.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(396003)(376002)(39860400002)(346002)(4326008)(66556008)(6486002)(2616005)(2906002)(53546011)(110136005)(54906003)(5660300002)(8936002)(8676002)(31686004)(38100700002)(36756003)(66476007)(31696002)(86362001)(186003)(83380400001)(6666004)(26005)(966005)(316002)(478600001)(16576012)(66946007)(45080400002)(956004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bU81QzIrMzUybzRFSmRIMk9lV2gvTHJwblJOanM0WHp2THJ1TkEycGJUM1Fk?=
 =?utf-8?B?c1hjUE5JQVg5YkV0SWd0RnJOeVovdU4yNS94K1QwbXNreDZHNVFLVW1KS3RI?=
 =?utf-8?B?emZuYi9oSjlja2dGN1VqSUhlTGp1bjFQUmczQ0ZvQnlId3M5VzNYeGtQdC9j?=
 =?utf-8?B?cC9Fb0REMXJ2amI5S3J5Tmthd0lmdjIwTXFTYVpkaE1uMmwrd09RSXBFclhs?=
 =?utf-8?B?dm1KSnZjblM4bVRxQzVCMVZsOEtqTDhQNndtaTZtdkhLUW9LZk12K2FGeE82?=
 =?utf-8?B?dm9OVWR4UTFScFBONkhCZG00QTNDR1kvOEpzc3NjK241eHJZbWhHM2ltNW9x?=
 =?utf-8?B?LzBtMlM3MGVDdFY3ZjdVSHNXUnhnUWJ6eSs5RzI4aUNqT2E1SkFqcVQyNHlu?=
 =?utf-8?B?K0FUTDhFb2pUeGpyL095R3RhYjMvRWNmaUJZM2pDMnRNN3B6ME1IanIzQVQ1?=
 =?utf-8?B?RGJHWTFSVjNERVJIZG5ObU1YVVBoai9MZWxNczhGQlpBVEpiY09udWxNc0lH?=
 =?utf-8?B?N0tOKzk5QTZmKzZvWHpyU3FsQitJUDB6SUtwUEZxRXA2ZmVaMXlmVjlzNnd5?=
 =?utf-8?B?TDVSUFVHSkdoWk03R3o4Kzc2TVpSeFhhMnpKeXVRRytYdmhOSmlTODh5eFlj?=
 =?utf-8?B?N0VJTVpOVkdDZzhtT3NlRFU1S1pTbm00dUZpMEoyQUNaMnJWK1lkVGN5aTl4?=
 =?utf-8?B?dDNOQ0R4bmtTeFJNajBScUdmREZnQUFnODJOaFJTL2VOUGNkVThNSTRhcDZi?=
 =?utf-8?B?cEVvbFluZGlqdFJpd0JEcEc1Q3FVU1phRGxaOVRrczJVbzJlQzNkZjVCTVdz?=
 =?utf-8?B?dmtqcGNyaUZEWjJKYVFiTHNSVUlMOGdHSDRBNDBqU2FnbktTR2prQncwY2ND?=
 =?utf-8?B?aUpjbVNSclVVYzZ0MGVrQzZLR3NOL3hjMVdNK2l0bktYL3l3aGlvTExqNkc3?=
 =?utf-8?B?WUhYV3I3M0NRU1FnZ3Z4TnpxS3M5Q1NaRFNLTElZdEVsdVJwTTU1eWdxbHIv?=
 =?utf-8?B?S2VGZFNLK2MyNzJJNFVKdm42Y2lzM3ZoRGtLYndnRGd2ZEo5VVZZWVBLL09C?=
 =?utf-8?B?bTNmbllFcTNlNVczYVNyTUpLKzZwN21vWEEzVit0anlDYWpmV1JxNm9MRTJ1?=
 =?utf-8?B?STdoSXlkWXFBOFhWdWVBYlpXU2xLWWQzMTJ4R2o2Qmpwd3ovTFMxNk8yUDlG?=
 =?utf-8?B?RFJiNlh3cjJBUHF2eTJFQXRMRDA1UTVRRVZqTThYci9QcGJMRU5aY3JBQlhz?=
 =?utf-8?B?cmYyaW5XWUdYMkpCc2NXaGwrcmdLclZRLy9hZTYxcHBNT2ZkMUZNaXZCc0Vu?=
 =?utf-8?B?Q1Y1YS9XdlJmaTBNbDNQWHRpWlIyNHA1QVEyNWRFMEJFQnJrVlg2M012TC82?=
 =?utf-8?B?RGVBUzV2QUJlV3pyVENuU3R3cVpEWjdHRlh2YVZMWTY4dHRPM2hpT01YSWI4?=
 =?utf-8?B?M21vbkEwMW1ldmQzaTFoN2cxbmtubDU1MG5pMUxsMWx3WWRESlpEOWluM3hx?=
 =?utf-8?B?ZmpPdGNDNk01MldURDJ2Si9KanU3RVJlYnZwMjExT09oTjFhVU1qVUNETUJO?=
 =?utf-8?B?ektsQmRoQ243SlJuUklyZ1h2MXlIL1c5S0FzalJvUU0xaE1rcUF4cEhCajdI?=
 =?utf-8?B?eGh2S1Q1UHVZbXJHY01qcVlub2p0Vm5aL1RMY3ozcndYQTdTSHppLzBxUy9I?=
 =?utf-8?B?aDZPaERZT3h3QWRTak4rMEZ0bGxkaGFwV2xBbEpOb3ZQV2FYNDUvZEpoWElr?=
 =?utf-8?Q?SVMEpG4Kix/X8lkuX3EmOYSaP7nq00gPU7Z7Z+b?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dfe68c5-ef12-4d0f-c82e-08d967d3b46e
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5349.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2021 14:22:01.4148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w43lR9vz+OGew9YOdEOc3RKzonhVkcTzZft0dqymctpjj9CxIaAVTiWrrlpM3Lha
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB5538
X-Mailman-Approved-At: Wed, 25 Aug 2021 14:24:33 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/amdgpu: Disable PCIE_DPM on Intel
 RKL Platform
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



On 8/25/2021 4:46 PM, Koba Ko wrote:
> On Wed, Aug 25, 2021 at 6:24 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>
>> On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
>>> On Wed, Aug 25, 2021 at 5:22 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>>>
>>>> On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
>>>>> AMD polaris GPUs have an issue about audio noise on RKL platform,
>>>>> they provide a commit to fix but for SMU7-based GPU still
>>>>> need another module parameter,
>>>>>
>>>>> For avoiding the module parameter, switch PCI_DPM by determining
>>>>> intel platform in amd drm driver.
>>>>
>>>> I'll just note that you could have a Tiger Lake PCH combined with a
>>>> number of platforms other than Rocket Lake, including not just the
>>>> obvious Tiger Lake but also Sky Lake, Kaby Lake, Coffee Lake, and Comet
>>>> Lake.
>>>>
>>>> Again, I don't know what the root cause or fix should be, the workaround
>>>> presented here impacts a much larger number of platforms than where
>>>> you're claiming the issue is.
>>>
>>> Hi Jani, thanks for your feedback.
>>> Is there any way to identify the RKL PCH?
>>> I trace the intel_pch.c and can't find the only pch id for RKL.
>>>
>>> INTEL_PCH_TGP_DEVICE_ID_TYPE is used by both TGL and RKL.
>>>
>>> so it seems that using IS_ROCKETLAKE() is the only way.
>>
>> I don't think there is a Rocket Lake PCH. But is the problem related to
>> the PCH or not?
> 
> I thought its' not because the issue wouldn't be observed on the TGL platform.
> I only tried RKL platform and it use
> INTEL_PCH_TGP_DEVICE_ID_TYPE/INTEL_PCH_TGP2_DEVICE_ID_TYPE,
> As per AMD guys, they said the issue is only triggered in RKL platform.
> 
>>
>> The GPU PCI IDs are in i915_pciids.h. See INTEL_RKL_IDS() for
>> RKL. There's a lot of indirection, but that's what IS_ROCKETLAKE() boils
>> down to. But again, I'm not sure if that's what you want or not.
> Thanks for suggestions,
> 
> Just want a way to check if it's a RKL platform,
> After tracing the kernel, can check by CPU VENDOR(lacks type), check
> igpu(but there're cpus without igpu)
> and check pch type(it seems one pch has multiple combinations with CPU).
> for check igpu, as per my current understanding,  only found RKL CPU with igpu.
> Is there a RKL CPU without integrated gpu?
> 

Just for RKL - you could do fetch the x86 info and check

#ifdef CONFIG_X86_64
         struct cpuinfo_x86 *c = &cpu_data(0);
	// Family/Model check, find the model
	(c->x86 == 6 && c->x86_model == INTEL_FAM6_ROCKETLAKE)
#endif

I think we don't use anything like this so far. So Alex should give a 
nod as well.

Thanks,
Lijo

>>
>> BR,
>> Jani.
>>
>>
>>>
>>> Thanks
>>>>
>>>> BR,
>>>> Jani.
>>>>
>>>>
>>>>>
>>>>> Fixes: 1a31474cdb48 ("drm/amd/pm: workaround for audio noise issue")
>>>>> Ref: https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.freedesktop.org%2Farchives%2Famd-gfx%2F2021-August%2F067413.html&amp;data=04%7C01%7Clijo.lazar%40amd.com%7C888ab428f2bb4f32e4d408d967c4ae08%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637654916721463596%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=Bgf14CmIx%2FTOD54LN6dccZL0U5gT9lv9yTw7MfKc2sQ%3D&amp;reserved=0
>>>>> Signed-off-by: Koba Ko <koba.ko@canonical.com>
>>>>> ---
>>>>>   .../drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c   | 21 ++++++++++++++++++-
>>>>>   1 file changed, 20 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
>>>>> index 0541bfc81c1b..346110dd0f51 100644
>>>>> --- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
>>>>> +++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
>>>>> @@ -1733,6 +1733,25 @@ static int smu7_disable_dpm_tasks(struct pp_hwmgr *hwmgr)
>>>>>        return result;
>>>>>   }
>>>>>
>>>>> +#include <drm/intel_pch.h>
>>>>> +
>>>>> +static bool intel_tgp_chk(void)
>>>>> +{
>>>>> +     struct pci_dev *pch = NULL;
>>>>> +     unsigned short id;
>>>>> +
>>>>> +     while ((pch = pci_get_class(PCI_CLASS_BRIDGE_ISA << 8, pch))) {
>>>>> +             if (pch->vendor != PCI_VENDOR_ID_INTEL)
>>>>> +                     continue;
>>>>> +
>>>>> +             id = pch->device & INTEL_PCH_DEVICE_ID_MASK;
>>>>> +             if (id == INTEL_PCH_TGP_DEVICE_ID_TYPE || INTEL_PCH_TGP2_DEVICE_ID_TYPE)
>>>>
>>>> PS. This is always true. ;)
>>>
>>> got, thanks
>>>
>>>>
>>>>> +                     return true;
>>>>> +     }
>>>>> +
>>>>> +     return false;
>>>>> +}
>>>>> +
>>>>>   static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
>>>>>   {
>>>>>        struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
>>>>> @@ -1758,7 +1777,7 @@ static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
>>>>>
>>>>>        data->mclk_dpm_key_disabled = hwmgr->feature_mask & PP_MCLK_DPM_MASK ? false : true;
>>>>>        data->sclk_dpm_key_disabled = hwmgr->feature_mask & PP_SCLK_DPM_MASK ? false : true;
>>>>> -     data->pcie_dpm_key_disabled = hwmgr->feature_mask & PP_PCIE_DPM_MASK ? false : true;
>>>>> +     data->pcie_dpm_key_disabled = intel_tgp_chk() || !(hwmgr->feature_mask & PP_PCIE_DPM_MASK);
>>>>>        /* need to set voltage control types before EVV patching */
>>>>>        data->voltage_control = SMU7_VOLTAGE_CONTROL_NONE;
>>>>>        data->vddci_control = SMU7_VOLTAGE_CONTROL_NONE;
>>>>
>>>> --
>>>> Jani Nikula, Intel Open Source Graphics Center
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center
