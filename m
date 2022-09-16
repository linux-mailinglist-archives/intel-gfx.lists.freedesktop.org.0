Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3455BB051
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 17:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9677110ED6A;
	Fri, 16 Sep 2022 15:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB0A10E499
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 15:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663342590; x=1694878590;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mgoPKzzG9raJ7+UEM0HPMmKR6rrGJVQNS0GLRcMHCxo=;
 b=XjYhRUTMQLj43TAVzqKGs4J/C7y1ly3b95qbZ/JDcwkgwViulauOs8sN
 oSaPSGkDle9WUHA70ynSckw4RsfAcyw4+6BdkpYuxo15Q+SG1HcNIQ3Ek
 pV2maOS51wRGG3SZ93j2fPvthExG8UHt9oBkkUjy68aIrgRTtyxlcEraC
 KnBEOAVImaszU1E7Afqn9bJzW+/r0ouIcOEOSuvXQ+PUw9Ds+9QQOiAB9
 ZqufrdwAqLIKdidE/QLc2JrVUxEFThC6k4DkN29uhpxW3mTNCitTE8pEI
 +QEXdhf7vVq9+sewrKO73ceIEB+yTEH0AlVTa7yh4YYgSrkUTXjuBJPM+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="296603760"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="296603760"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 08:36:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="650909109"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 16 Sep 2022 08:36:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 08:36:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 08:36:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 08:36:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aUR8IWvseLTID0vGLCwbrYUOSPNkJHf50MZc5UeJInUvjUvIL1eLvUnIjVcVUAiQhGV87hFaPRL5XuVThkLJKDXqSG69/lqcjZCOKq35RcY/vQO8oWVRJHqArJlssIv+XqYrzNL1/L4uRDB+l9HGmLfRuEBxHDxoqFB81Lg67jJz/H2n2b93Y4h3FJMan9yW6y77u7HdvUPwf2Tex8yGnyH2tE9wAhhfoPbEs5z4CPpZ7OsSdz09gOW6zxQA9SKsZjlxbTJcCFbWdUinrySiCg6HeuTimtEiZW7LrNwXxEoewAoMb4rTCTsCLNaSCI2z6lgi8DtwAMauKZoSr5tLUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sU5V+v61yOncFMHFrt+oD3rXcNG+J0XoWtv1tWtBYf0=;
 b=fmJOnNJx+XmxX3zuxvLby/JIorrleLA9KfrDqkpW//o/ABj/F426BPdGZBMQ07sRKif2+QbYtdZTmOjRBBXh27eYNTSZf0ucjYL7jp1TqNpYYeyN/QGS1IuWHNsYmsudjJqqMjmb+escWPlMWz9avfFpxd3EnYm7hFHQuE8EklnR3B9jvybn3MjPDX/DC/6rrJsqmi/D/hW5MvNHdgTUAGkwx6ryWEKCLj9jFdEPd7C6Tr+sMv/QBfsINvSXQRTKzYBQd8yLFZyuB15FDmzpN9xz93fYreHDXWWr59QbLiXQ3dnUwPeqOgzaXnixTBKt0WYkGjAcsVSKYKfNQBQPww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 SJ0PR11MB5868.namprd11.prod.outlook.com (2603:10b6:a03:42b::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Fri, 16 Sep 2022 15:36:26 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::c057:13f9:7c74:62b4]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::c057:13f9:7c74:62b4%4]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 15:36:25 +0000
Message-ID: <c6e968c8-aaa0-949c-61c9-857ef5d9f617@intel.com>
Date: Fri, 16 Sep 2022 08:36:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Teres Alexis, Alan
 Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220915021218.1412111-1-alan.previn.teres.alexis@intel.com>
 <20220915021218.1412111-2-alan.previn.teres.alexis@intel.com>
 <5aec4a0d-e99b-011d-68a9-84ad1f1120bf@linux.intel.com>
 <2808b0f67797543e453e74b4e156df4a5cdd8656.camel@intel.com>
 <70636d43-57e8-46ac-7751-d8fd0fb13d72@linux.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <70636d43-57e8-46ac-7751-d8fd0fb13d72@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0045.namprd11.prod.outlook.com
 (2603:10b6:a03:80::22) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|SJ0PR11MB5868:EE_
X-MS-Office365-Filtering-Correlation-Id: e593f9c1-6122-4dd4-1497-08da97f9375a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YMje+C9Xc8az+jbHhE3dvKhO35YvbvHzGFdBB2eNfWTdxmEJUi6uZxyURJfQw0XxkcYg/Xz/yFbscQw1/CIgy/4BHPqbLZ3pGWT9eZ7GYSK2hiVfAGBQGxTwenguFDRTOC20RBzrFrVCRg8lfbGiFQKN7QXyrc1Y1X3CEG2B7bWGBoG3yu1kOwAEakh385CDlIx2CSIudHHzAU8RCoQyh5wfU9+3VQNyiXdlJvrL9DHMEm/6n16JciqoIJI/aLCO9Swfu5tH/+3/9oK4zoT1BzwyFgiDpnC0IuagWY2s30vly6pFHItpADHZqOeT39nS4v0fbZTx3rrtILy1gaTUKceudfonXKZFN1gGRnaqQx9IGQVlBSZxwOUv27UNvsnRTaC3LyGaHSDOTGVaavYlCHQlqUqK6LwBtzv5fDv6nI7Gx4wxwPuXnkDd7zMCgvjmKOlNNX+jXd4MLAXwCCLUgDrL1jUdNBGUvsOttZ+y0wcjbbaMBO6EwuKrByY9R7l5l3RH9YTrJHIGWB3l8TnToeo8v4eFSfnodbnxFqQz++GJ4osRkuODDAAhW8Vifmoj8LjeHej7A3jRy5pM9UeFe84ujwcfH1BGaPHf8AZQNN1qjCK2xOaykH4mo3PnGbDcayV2j4rvO2dKGb8XNSmqzQz7L1XA2k4Nu0x+awo+co3nuIN9HbH5/9CK94oAmD929wVsAE7kLh3W3JTDGN6OsEumopfNptdPXUjTJfedQvv7cc7wexll+RjiR6YIzYjAS2DFEr798s+77qg+6ZHu49mIKoYhy9wpdZn/uikRHTA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(366004)(376002)(346002)(396003)(451199015)(38100700002)(66556008)(8936002)(53546011)(66476007)(31696002)(2906002)(41300700001)(30864003)(36756003)(2616005)(82960400001)(83380400001)(5660300002)(186003)(26005)(86362001)(110136005)(6512007)(478600001)(316002)(31686004)(8676002)(6506007)(66946007)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHZPaHA2OHdMb0h4SWdsVGNEUkMvdWFqN3FJdU1QVmxHNkFsaCtzL0E5cnlo?=
 =?utf-8?B?ZWN2bk1EYStYaDJqYmU2cE4yTUZ6NXlQSnhjNHdXWVpleXhML2NleTN6a0J4?=
 =?utf-8?B?QmpwRnBZM2lLQ1lueDVEaW13S1JraUJmMXdGSzI4UFE0ZTZQSXB0enNlUTNK?=
 =?utf-8?B?bDg0QkFpR2pPQnBtM1Y4K1N5WmgyeVVXUFZpcVdxYlhzSnR2ekFOWFo3N25y?=
 =?utf-8?B?bEJldGt2Nks4UytrejBCNkVTQjBRWnFIK3RqczAvaUVhYkpCYlZOWnJFS1NJ?=
 =?utf-8?B?Z0gxcDUxZHIvcWE4RDZqWFBiUzJmMVo3akE0SEc3QjQwSSttZ212aksyTzBE?=
 =?utf-8?B?a1NGQ0Qwb0RTMER2Rm5CZVJ4eWVSTWdLaVcxVHNkWlBkNzNpQUtJQ0VMOE85?=
 =?utf-8?B?aVRSWDZKdkZsUXo2Myt5NFFJNjY4T0pLUkc5dXhoTmxWWWNEUEZVSGluVGxn?=
 =?utf-8?B?dHNmWGkzd0YybXdxRE1WM3BVYmplbEJhYmM4Q0NmaTkzQVZNNmZ4VTRISmh5?=
 =?utf-8?B?V1BJN292VThFbSt6dTJMR3JSclViUUpFNkhzeHUwdm9POEN3dVBUSmdmOGRU?=
 =?utf-8?B?TDNGaU1xT3UzTE1ib1pva2xBNUNUTmVvR1g3eWR0eERtYmRaNEtSMTFGTmJY?=
 =?utf-8?B?cmZuZ204TVpmbW93UW1WRnNKYXdUSEFpUWpMZHRmMGU4SGxZTHhvdUpMQnB0?=
 =?utf-8?B?L0U2QVNXRFJQTU4rK0JJdnZjSko4bWVlbG0rN2E0U2FmRHp2QzlhZ3B0bEpK?=
 =?utf-8?B?aWZ0a2VxNmQwclUxbmlQTXpoc1Flb3ZabWpXZTdsUGplOHRPdU54a2RkUFRs?=
 =?utf-8?B?TFBsUFhRYmtzVE1maHZ3M1ZTdlVMUkl5RkIxMkV3ZVAzVXhaMjg1SVBuUWVq?=
 =?utf-8?B?aGMwYUt0RHhhZjhJaWhJYjFVQlpmd1hpbDhONUgxYm81TEo5Zkc5TzUvdHFl?=
 =?utf-8?B?VlczYTl0eTZ2SEI3MVJXd09EbHZERm1zcVpVZmdlSTlSZ09iL3dpWVlxb09L?=
 =?utf-8?B?cHdVRTdkRDUyUUFRQ0Y4ajdCYmVUUlNrZVVGR2Q1aWdlRWwxaWFCbXF5TXV1?=
 =?utf-8?B?bVk2eWVEcUUxZnlxWU9GTVdudjdqbVg1S1MyR2MrWjNSblpBYk43blBRYVAv?=
 =?utf-8?B?M3JUR3hNeW9UdXhCaS8yYVp4QnI5cHNWRlF5dk50Nk5hWHlvYVp3N25wSHFm?=
 =?utf-8?B?N3BldFhxV0VsZWluamJ0a0wxYUg5VUROR2c4OFlFMCs5T2xUV0p2dWk0c21w?=
 =?utf-8?B?SG4wYmhiVWg0WGhBYmN1aDBkM3Z6ZUlBVmVOdHVYOVRidkZJRytKREh6K0N6?=
 =?utf-8?B?RDh6L3BoY0hwNVczQnBVNlE1Z3VQV204Q0xuNkszaTFYdVM3d1JZdmE3R0k2?=
 =?utf-8?B?Z25kbi9ES0tyZFRtanM2empOc2kwOVpOQllXZTRmdWtYMDZHeXhqM3o3YWtn?=
 =?utf-8?B?WUdnSEdPckxXUWVvNzkzNVByY1daRzROSy9yQlBGdDhXTDkzN1IyS1JhRWg2?=
 =?utf-8?B?VkMxeUJqUnMrWThkbDFXVXJkdzVtSExGbGloZy9wQmNreUFXODYwRUltNStv?=
 =?utf-8?B?U3NIejhoUFMreUJsVVpoVWN5dWxVaVNWZ0UxYWg3MUxaaFNCN1JhcWxFNDRM?=
 =?utf-8?B?NG1SWUp6eEN0eDc0UXdGOVQvMUVBdHdHL2JrK3V2U1NBZm8vQWF1d1lxZUNs?=
 =?utf-8?B?UHJ2V2J2dEhDUDdMMGhMcUNpSmw2ckY4YmlpSmtnRjNDUEZ5NGRGVW5HQkdx?=
 =?utf-8?B?bzdHY0IxWFVJVnd1S1dncEVDTkpkakIxbzVtVDBld3dPNE9mZ3BuUjFMVUVh?=
 =?utf-8?B?MmVvYUtoVVdWR3gvTXNxNDM5SE9sREFxVUNjUEliTlhZeTNhQ2dWY3BVNW12?=
 =?utf-8?B?bFNVcFBsVWFNS2t0Z1E4ek9rblY2RU1jWWNzM1ZjMkdsZWF1V0cyQVJGWTAz?=
 =?utf-8?B?d0Y0Y0JiaUkydy95SlhRVmROVjVkaHM3cStLKzJoZ0Z3U1ZVa3Q5eGRaUDdZ?=
 =?utf-8?B?ZDZYOVhtcjFCMmc2a3A4L3JsMk1MMGxEb2JxTUFHVTlha3h5YU00Mm5KbDcz?=
 =?utf-8?B?RVJicjUyemIyRUNVbTNTeVlDS1VZRzBiK0FlSkdHelJ3RFJNR3Y2TUNQU01t?=
 =?utf-8?B?dHdQNzBzVEdvWktybEZtcHJoRUJWMjlsd3VyZ2xvTHZvQU9YcWI4NEFKRlAz?=
 =?utf-8?Q?3/0OaP/AeMEjol0pH0q68V4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e593f9c1-6122-4dd4-1497-08da97f9375a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 15:36:25.8897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: arevSjgIM1QgMImymjX3bJZ56yTq7QIwUnTGe8nqEYVB3MlUKQDhwjbT5yh4Mq5E59Aw858OUSYQB4UKy17HIawlVLrbCOXDsjJZyezR7Dg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
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



On 9/16/2022 1:58 AM, Tvrtko Ursulin wrote:
>
> On 16/09/2022 08:53, Teres Alexis, Alan Previn wrote:
>>
>> On Thu, 2022-09-15 at 09:48 +0100, Tvrtko Ursulin wrote:
>>> On 15/09/2022 03:12, Alan Previn wrote:
>>>> From: Matthew Brost <matthew.brost@intel.com>
>>>>
>>>> Add a delay, configurable via debugfs (default 34ms), to disable
>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>>>
>>
>>>> +        u16 guc_ids_in_use;
>>>
>>> Any specific reason to use u16? It can usually just result in larger
>>> code generated and I don't see any space saving needed or achieved when
>>> it is sandwiched between two struct list_heads.
>>>
>> no specific reason - will switch to uint32.
>
> Unsigned int would be best. Every time there is explicit width 
> specified it looks like there is special reason for the width - like 
> interacting with hardware or firmware protocol. At least I always see 
> it like that.
>
>>>> +        u64 sched_disable_delay_ms;
>>>
>>> 64-bits for the delay then sounds like overkill. Both should IMO 
>>> just be
>>> unsigned ints.
>>>
>> avoiding some typecasting on related functions that reference this
>> but thats not a good excuse so will fix it.
>
> Right, yes, clamp/cap/validate at debugfs entry points should do it.
>
>>>> +        int sched_disable_gucid_threshold;
>>>
>>> unsigned int as well, so reader does not have to think about:
>>>    return guc->submission_state.guc_ids_in_use >
>>>     guc->submission_state.sched_disable_gucid_threshold;
>>>
>>> further down.
>>>
>> yes agreed - will fix.
>>
>>
>>>> +static void __delay_sched_disable(struct work_struct *wrk)
>>>> +{
>>>> +    struct intel_context *ce =
>>>> +        container_of(wrk, typeof(*ce), 
>>>> guc_state.sched_disable_delay.work);
>>>> +    struct intel_guc *guc = ce_to_guc(ce);
>>>> +    unsigned long flags;
>>>> +
>>>>        spin_lock_irqsave(&ce->guc_state.lock, flags);
>>>>    +    if (bypass_sched_disable(guc, ce)) {
>>>> +        spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>>>> +        intel_context_sched_disable_unpin(ce);
>>>> +    } else {
>>>> +        do_sched_disable(guc, ce, flags);
>>>> +    }
>>>
>>> lock
>>> if
>>>     unlock
>>>     do sttuff
>>> else
>>>     do_sched_disable - which unlocks inside
>>>
>>> Now move to next block..
>>>
>>>> +}
>>>> +
>>>> +static bool guc_id_pressure(struct intel_guc *guc, struct 
>>>> intel_context *ce)
>>>> +{
>>>>        /*
>>>> -     * We have to check if the context has been disabled by 
>>>> another thread,
>>>> -     * check if submssion has been disabled to seal a race with 
>>>> reset and
>>>> -     * finally check if any more requests have been committed to the
>>>> -     * context ensursing that a request doesn't slip through the
>>>> -     * 'context_pending_disable' fence.
>>>> +     * parent contexts are perma-pinned, if we are unpinning do 
>>>> schedule
>>>> +     * disable immediately.
>>>>         */
>>>> -    if (unlikely(!context_enabled(ce) || submission_disabled(guc) ||
>>>> -             context_has_committed_requests(ce))) {
>>>> -        clr_context_enabled(ce);
>>>> +    if (intel_context_is_parent(ce))
>>>> +        return true;
>>>> +
>>>> +    /*
>>>> +     * If we are beyond the threshold for avail guc_ids, do 
>>>> schedule disable immediately.
>>>> +     */
>>>> +    return guc->submission_state.guc_ids_in_use >
>>>> + guc->submission_state.sched_disable_gucid_threshold;
>>>> +}
>>>> +
>>>> +static void guc_context_sched_disable(struct intel_context *ce)
>>>> +{
>>>> +    struct intel_guc *guc = ce_to_guc(ce);
>>>> +    u64 delay = guc->submission_state.sched_disable_delay_ms;
>>>> +    unsigned long flags;
>>>> +
>>>> +    spin_lock_irqsave(&ce->guc_state.lock, flags);
>>>> +
>>>> +    if (bypass_sched_disable(guc, ce)) {
>>>> +        spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>>>> +        intel_context_sched_disable_unpin(ce);
>>>> +    } else if (!intel_context_is_closed(ce) && 
>>>> !guc_id_pressure(guc, ce) &&
>>>> +           delay) {
>>>> spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>>>> -        goto unpin;
>>>> +        mod_delayed_work(system_unbound_wq,
>>>> +                 &ce->guc_state.sched_disable_delay,
>>>> +                 msecs_to_jiffies(delay));
>>>> +    } else {
>>>> +        do_sched_disable(guc, ce, flags);
>>>>        }
>>>
>>> lock
>>> if
>>>     unlock
>>>     do stuff
>>> else if
>>>     unlock
>>>     do stuff
>>> else
>>>     do_sched_disable - which unlocks inside
>>>
>>> IMO it creates less readable code for the benefit of not repeating
>>> with_intel_runtime_pm -> __guc_context_sched_disable two times. Dunno..
>>> it's ugly but I have no suggestions. Hm does it have to send using the
>>> busy loop? It couldn't just queue the request and then wait for 
>>> reply if
>>> disable message was emitted?
>>>
>> I agree that the above code lacks readability - will see if i can 
>> break it down to smaller
>> functions with cleaner in-function lock/unlock pairs. I agree that a 
>> little code duplication
>> is better than less readable code. It was inherited code i didn't 
>> want to modify but I'll
>> go ahead and refactor this.
>>
>> On the busy loop - im assuming you are refering to the actual ct 
>> sending. I'll consult my
>> team if i am missing anything more but based on comments, I believe 
>> callers must use that
>> function to guarantee reservation of space in the G2H CTB to always 
>> have space to capture
>> responses for actions that MUST be acknowledged from GuC 
>> (acknowledged by either replying
>> with a success or failure). This is necessary for coherent guc-id 
>> state machine (because the
>> GuC firmware will drop requests for guc-id's that are not registered 
>> or not in a
>> 'sched-enabled' state).
>
> Maybe to explain what I meant a bit better. I thought that the reason 
> for strange unlock pattern is the with_runtime_pm which needs to 
> happen for the CT send/receive loop. What I meant was would it be 
> possible to do it like this:
>
> state lock
> ...
> sent = queue_msg_2_guc (this would be i915 only, no runtime pm needed)
> ...
> state unlock
>
> if (sent)
>   with_runtime_pm:
>      send/receive queued guc messages (only this would talk to guc)
>
> But I have truly no idea if the CT messaging infrastructure supports 
> something like this.
>
> Anyway, see what it is possible and if it is not or too hard for now 
> leave it be.
>
>>>> -    guc_id = prep_context_pending_disable(ce);
>>>> +}
>>>>    -    spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>>>> +static void guc_flush_all_delayed_disable_sched_contexts(struct 
>>>> intel_guc *guc)
>>>> +{
>>>> +    struct intel_context *ce;
>>>> +    unsigned long index;
>>>> +    unsigned long flags;
>>>> +    unsigned long ceflags;
>>>>    -    with_intel_runtime_pm(runtime_pm, wakeref)
>>>> -        __guc_context_sched_disable(guc, ce, guc_id);
>>>> +    xa_lock_irqsave(&guc->context_lookup, flags);
>>>> +    xa_for_each(&guc->context_lookup, index, ce) {
>>>> +        if (!kref_get_unless_zero(&ce->ref))
>>>> +            continue;
>>>> +        xa_unlock(&guc->context_lookup);
>>>
>>> So this whole loop _needs_ to run with interrupts disabled? Explaining
>>> why in a comment would be good.
>>>
>> Being mid-reset, the locking mode is consistent with other functions 
>> also used
>> as part of the reset preparation that parses and potentially modifies 
>> contexts.
>> I believe the goal is to handle all of this parsing without getting 
>> conflicting
>> latent G2H replies that breaks the preparation flow (that herds 
>> active contexts
>> into a fewer set of states as part of reset) - but i will double check
>> with my colleagues.
>>
>>>> +        if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
>>>> + cancel_delayed_work(&ce->guc_state.sched_disable_delay)) {
>>>> +            spin_lock_irqsave(&ce->guc_state.lock, ceflags);
>>>> + spin_unlock_irqrestore(&ce->guc_state.lock, ceflags);
>>>
>>> This deserves a comment about what lock toggling wants to ensure.
>>>
>> I realize this might have been my local rebasing mistake, the 
>> intention was to
>> handle cases where sched_disable_delay wasn't pending but potentially 
>> still
>> executing do_sched_disable. I believe I could try 
>> cancel_delayed_work_sync (but
>> not sure if i can call that might-sleep funtion mid reset while not-
>> interruptible). Else, i would move that lock-unlock to if the
>> cancel_delayed_work did not return true (as per original intent 
>> before my
>> rebase error).
>
> Okay a comment like "flush any currently executing do_sched_disable" 
> above the lock toggling would do then. Even better if you add what 
> happens if that flushing isn't done.
>
>>
>>> Also, if the loops runs with interrupts disabled what is the point of
>>> irqsave variant in here??
>> Yes - its redundant, let me fix that, apologies for that.
>>
>>>
>>> Also2, what is the reason for dropping the lock? intel_context_put?
>> Being consistent with other reset preparation code that closes contexts,
>> the lock is dropped before the intel_context_put.
>> (I hope i am not misunderstanding your question).
>
> Right, okay.. so for locking inversion issues - intel_context_put must 
> not be called with guc_state.lock held, yes?
>
> Not a mandatory request, but if you want you could look into the 
> option of avoiding lock dropping and instead doing xa_erase and 
> recording the list of contexts for sched disable or put in a local 
> list, and doing them all in one block outside the locked/irq disabled 
> section. Although tbh I am not sure if that would improve anything. 
> Probably not in this case of a reset path, but if there are other 
> places in GuC code which do this it may be beneficial for less 
> hammering on the CPU and core synchronisation for atomics.
>
>>>
>>>> +    /*
>>>> +     * If the context gets closed while the execbuf is ongoing, 
>>>> the context
>>>> +     * close code will race with the below code to cancel the 
>>>> delayed work.
>>>> +     * If the context close wins the race and cancels the work, it 
>>>> will
>>>> +     * immediately call the sched disable (see guc_context_close), 
>>>> so there
>>>> +     * is a chance we can get past this check while the 
>>>> sched_disable code
>>>> +     * is being executed. To make sure that code completes before 
>>>> we check
>>>> +     * the status further down, we wait for the close process to 
>>>> complete.
>>>> +     */
>>>> +    if (cancel_delayed_work_sync(&ce->guc_state.sched_disable_delay))
>>>> +        intel_context_sched_disable_unpin(ce);
>>>> +    else if (intel_context_is_closed(ce))
>>>> +        wait_for(context_close_done(ce), 1);
>>>
>>> Comment makes it sounds important to handle the race, althought it
>>> doesn't really explain the consequences. But most importantly, what if
>>> close doesn't complete in 1ms?
>>
>> will add the consequence (i believe the consequence is that we could 
>> prematurely
>> read context flags bit indicating its gucid is still registered and 
>> after skipping
>> re-registration, find that context gets closed and guc-id freed).
>>
>> Yes the 1 second is arbitrary and unnervingly short. Just spent 
>> sometime trying to
>
> One millisecond even. :)

Normally 1ms is not a slow time for this. We can only hit the wait if 
the context_close call has already called the cancel_delayed_work, so 
the only thing left to do in that function is to send the H2G, which is 
relatively fast. However, I've just realized that if the H2G buffer is 
full the H2G will stall, so in that case it can take longer (maximum 
stall time before a hang is declared is 1.5s).

>
> What would be the consequence of prematurely reading the still 
> registered context flag? Execbuf fails? GuC hangs? Kernel crashes? 
> Something else?

i915 thinks that a request pending with the GuC, while GuC thinks we 
disabled it (because the completion of the delayed_disable happens after 
the new request has been submitted). The heartbeat will still go 
through, so no reset will be triggered, the request is just lost. A new 
request submission on the same context should be able to recover it, but 
we didn't test that.


>
> And why cant' this race with context close happen at any other point 
> than this particular spot in guc_request_alloc? Immediately after the 
> added checks? After atomic_add_unless?

The race is tied to the canceling of the delayed work. context_close 
only does something if it cancels the delayed work, so if the 
cancel_delayed_work_sync here does the cancelling then context_close is 
a no-op.

>
>> figure out portions of the SCHED_foo state machine bits and believe 
>> that its possible
>> for guc_request_alloc to just force context_close to be done from 
>> here as it would
>> force it into a state requiring re-registration and would close that 
>> a few lines
>> below. I will however verify with my team mates as i am new to these 
>> SCHED_foo state
>> machine bits.

I'm not sure we want to force context_close unconditionally here, that'd 
be a big overhead. Doing it only if there is a close pending is also 
potentially an issue, the whole point is that the close can race in. The 
close also has to work on its own, because in the normal use-cases we 
don't get a context_close while a request submission is ongoing.
Unless you meant something different and I completely misunderstood.

Daniele

>
> Yes it always looked complicated and perhaps it has even grown more so 
> - I'm afraid I cannot be of any help there.
>
> Regards,
>
> Tvrtko

