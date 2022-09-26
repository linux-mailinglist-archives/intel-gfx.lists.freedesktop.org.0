Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2D05EB2F3
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 23:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E43E10E0DA;
	Mon, 26 Sep 2022 21:17:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A3D10E0DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 21:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664227051; x=1695763051;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ddGU5g6v5tLt16GCRFJjeQlxiZab5U3dAe7inG/lbJk=;
 b=ljdQSu9oZmc72dq0APzAASCgb1kFiPcSdLAF8RNxLuLdQIfvO/IUBA80
 8Co5S1yRyIIZyPv+532Ba/1X9EILBxCfRGMLpkTLibu9WSXxwBlZd2/ew
 uUV8DAl/vot3vLHZm3K1+g/l8C316quDgU+VyQMVd7GC3VzGvinAvsXUi
 XzmVFTldsnObJU+HcnQUdI2E8pEoXaiReBrDzHc4sJKQ/zGCKoglmgBeA
 BRxPEX7PFkMTDV3r3tzU02oICOp8AdVZG2+sIZbBpsF+VswyImQAY2nIZ
 mN4QrC/D9pRrizIVYefGNCkNt45OhKez0B2fcmzy5/50rtk7fHs87Nggl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="298741573"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="298741573"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 14:17:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="598900163"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="598900163"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 26 Sep 2022 14:17:25 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 14:17:25 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 14:17:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 14:17:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 14:17:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cCKPJvpT1/gYVH6BsHl50Aolp5V3NH2y6nCk/dOCssNa4czibYca40o+Kb9Yx3A5w0BTgz+GRebj25IQik8Fh9Qi7gApSXJFtGLHNptPeTynGmlMr4LHDNwZUQxswqxwIYM7Y6GI/60XVijbLDWJhVK9eF4SHE32V/kpfS/YRBI1IasnOiVVTcu8KYTkhI2wAA+dG2dOo2qvBrl/ykM+4/8WC7RTkHnHOq0Ko2/LSdJRj1sEvXmUbfD3CVub7kkTb+WfVFU/djK+XyvlBbTQaFeJgGZ5ctIlHPKgSwFLoJnNYr50tHVjskV14xkTrwPNZjXwa5rdBRcy8lJxIbfkNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gfXuzOl3GCsI8KtVMSzK/Z8EonwTbXrReEMiIQ4XR+8=;
 b=AZ+TuFW7lLk5bctvqj+z2l9VRWxuhfyUCbYNwAH/Fur9YiYAsWab4zMONdGN8wp1yI6pPV5/ImqQIAXIZefl1SmxEePg2tOwj7I4g6kZ2ow0TRkQjyBG2H9dAeccvwEftwuc1Hx1zHsvN8zfftDwAbytYRAclNQeHoFdyrhvY8xBum0LDFcbElfDH7qqubX743JC4a13ClfPY3mYVZK10kgUJ7J84LE50/IukR7vzhi8B8BZKpJ/jJ/ipRjpY6xbmAM9gAcZf+MQUk9MuJvSzcCJ5eC7wBHAwIDnazuXQ7QGbiqK4APnO7QRYE7RmSfFt14fRW+Yt+L9bNWAjImvig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by SJ0PR11MB5056.namprd11.prod.outlook.com (2603:10b6:a03:2d5::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 21:17:23 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6%5]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 21:17:23 +0000
Message-ID: <53226382-9d11-abdf-e907-a972a8f2e535@intel.com>
Date: Mon, 26 Sep 2022 14:17:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>, "Dixit, Ashutosh"
 <ashutosh.dixit@intel.com>
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
 <20220923201154.283784-15-umesh.nerlige.ramappa@intel.com>
 <87y1u6uo32.wl-ashutosh.dixit@intel.com> <YzHtF8QESFmQOBhv@unerlige-ril>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <YzHtF8QESFmQOBhv@unerlige-ril>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0002.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::7) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|SJ0PR11MB5056:EE_
X-MS-Office365-Filtering-Correlation-Id: 9134e257-96d3-4b41-a58f-08daa0048106
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p2O8Q4S1GjzMPdT8nPdGciYOaeQ2THvkVBbhsdjxa76QDXkOCbPE1sesYg9IgiW7OET0yFN/BUYWdI/zN3/HhTihyYzl8tgg3N4OoXu9snLZ7Rxlzpz3wtPuCmbp6lgChhNtOEn34Fr9yEuQadECgyJTLfH+g5yxHpftxnDljG3LVjXXB2phptS3PTqe+JajDUcqmCEjp1Au/eeQN2b9wJjI1dQiXsSeN8g1z3IVZ6QzmAZXVMrokXz6frU9BTiPp3QBKm+m24Ap4FbqFau9lYIiH4upHVe0g2bth/WNLStNUBNBCxggF9vnPpsDW6ElU5LXyyC7KNMe6KTjGRUgzPzE8Ka4w5VnWsgXBsCt2j5aveUh1spDMjBj9YF9JokxD5OdXm/KLVGce6/vq6Uxlu2EfEVcHbGIwtBrc5s4Y+tEEFtbZK/5/LG52uoIXwsN7Lo4r9zHbie2+yisn8/G3BOh7ilH1ZxjXOCtsvYPNkA+xaMHIa1C7xG9QkZp4NWMXdRbyHZNTLbN6AfDcHmw6D5/KAXI2OFGFE62rtHkBp85h6eGyXAcnxzVOeFpoxOFXxxWS8mma/ekkWFWZsMAZ427ZJrTfNMGlspcCe51zl/EbQklvcxe1Pl1psT+UpjJMYPhaL5r+FxbTZjha55XnrigqQJU8dXVE0ogb9VyX5cs3prW3JlvGm75pXWAlFGE5eYqoQ/yi9QP6JZSaFKupDsS8b4Lh8pGXbYAKfmggIn9XRoTb2pyjmsT2iQbXISzZrGv5ffxtkzgA191mnqgfk41opybmg9taBgcmO445Dw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(39860400002)(346002)(376002)(366004)(451199015)(31686004)(186003)(2616005)(38100700002)(82960400001)(6486002)(6512007)(26005)(53546011)(6506007)(478600001)(8936002)(41300700001)(66476007)(8676002)(4326008)(66556008)(66946007)(2906002)(5660300002)(110136005)(6636002)(316002)(54906003)(36756003)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXVjcmNNdXk1U3BRek11YmtCbDdjelI1N1hUbUZTaGpmb09xdm0yYmRpK1o3?=
 =?utf-8?B?TG9ycXRLdVAxRXV1bDAwRUlwZzIyS1NkbEZ3YmdXWkdtYUsvOFdwU3BYWFh0?=
 =?utf-8?B?ZHBhSnUwWjBaTVcwVWZpcXl6djNZeGhWMzVZOWcxbmJLYkxsVGZmU3BPMDJm?=
 =?utf-8?B?bUVDaEREUGpiUEU0enpSQUFlNXhOa3paSHkrSkFPcXZZQ1YvMlEzSnc5TW1K?=
 =?utf-8?B?ajFuUE9pOFB1eGY5UXhxS2RLUlljMzlrNzUvMnF2VEhKNSsrQll6dElLZnlj?=
 =?utf-8?B?K0wvMUNBUng3dHk4cGs1bWczOFllSDkwUk5Tb3pSQkttSHVGZGhnaVF0N1p4?=
 =?utf-8?B?Y2VxMTBuVi9sRjBqcVVNVWp0MGFFTG5OMFRRVWpNckZCZ3VXaWdoQjlqbHQ3?=
 =?utf-8?B?bnVwbmphVXlqeDVlZ3NFdUhPOXU5STlDeXlGeTFQUHZ1YjdheEVONjZ3T3g0?=
 =?utf-8?B?M216SnhPVXlldXE4OHNIQjZwTVFZQXA3NHdlVjlnNmpIa0c4TEZsZXFOaHVi?=
 =?utf-8?B?WENmbFdBNm5HTkFjWFZXL01SenZTcFRucUJIeVpuMSszVFNOUU0zNHg4Yndo?=
 =?utf-8?B?UklFQ1ZsMEFXOVdTMHN4YUd1NncrRDEyK1J6b0tqMTgwTlhnazk4a01COUFr?=
 =?utf-8?B?eHJpMDJiZzFxMGx6QkhIazhjYXJuRVphcllHTVJkQmx4OEIvSkhEV1Z1aldB?=
 =?utf-8?B?Ky9KaUN2Rk5aNlhTY3ptSXZoU0NXTUF2RzdlRTM0NFpOZzlDU0NjWmpIVUR3?=
 =?utf-8?B?eUFEdVpwZ2ZuOXdtanE5MHdVMUlnRVlKNWhva3AyNnlwS0hTQm5xTzJ5UlRr?=
 =?utf-8?B?dVRybkhEbk9MSTRYeXZxZUkwaW1oYUI5SWp3cHFNL2NwZHI5VFZtNFZWdU5r?=
 =?utf-8?B?UUV0RVYwdXRTQ3l2dDVqczl4NGw4N0VnNURtVlhyNTMwc0VSTE9pUWh3Y2h5?=
 =?utf-8?B?YnNpbVF5L210cnJkUzB0YWR4SGxNTlNLYytrb3liamNwNXBZM2E2ek1kL0ly?=
 =?utf-8?B?WktCWUQzZHY5WmVUNEdZUG40UGZkekQ5WCtJK3pPcldrZVJzb241bUdUallR?=
 =?utf-8?B?UytFb3poZUoyK0d5NVVuUExaQXROY0I2eGs3V3lZZGhZRFZsSjlvYmJ0Nncx?=
 =?utf-8?B?M2RFb08rbDQ5YkRNWmx2NFlrWGV1RUlzblFzK0c3TkJjNnp0dHlKdytEY1l2?=
 =?utf-8?B?SWpHSDkzUkFpOENTQXhPZUpXNFFxM1JacTZxdnlPQWd3RkNXeFRIV2M4T05B?=
 =?utf-8?B?NHJuMTYwVHlCY0NxNkorY1hFWlgzb2dEUnh0ZEM3U3hIVG5iQlJlNzZYY05n?=
 =?utf-8?B?ZmgwOUU4dXFXWnZZRjIwNW03NmJvdGxmVGtkN3dCdDh3NXNTN2ZCR05QcFV6?=
 =?utf-8?B?b0l4RHVZWXpSY3pXajlaZGJpazFTb2VWWEVHc2dGZjNFRTBBTnZQZkNGRWZY?=
 =?utf-8?B?aGM0RjdyVlM1MEp4NUxHeGFEZFV5ZHRzNEtJdlJubE95R2VHdm1JWTBtaGtF?=
 =?utf-8?B?a0ZoZnc1dFFGV01DdTBtdlVnV0twUnk3bWpLUDNHNHFjR2VZTU5oeFNkQXky?=
 =?utf-8?B?ZzZVM2lNdk1URCtaWkdZOWVmcXEvcXZDcklsVkJ2RHB5ZmorbGtYMnFXZGFz?=
 =?utf-8?B?SGp1VjdsVmp0L3pwNjdPWVBvZXVKcnd5RkQxMGx2RHUxK2szRk1MQ1ZrOTBo?=
 =?utf-8?B?Qm04YXMzYmFxVHdzM2dOTExMTFg1cXkwbEM1akwxV0diYVJxaTBJYVgrUkNH?=
 =?utf-8?B?NStwSTQzNElja0hmR2wrSEJ5VXpyN240YWhzUVM2MDlzU3R6aCs5a1lZcnow?=
 =?utf-8?B?T2dYWGV6MFJyVU9Cbmo5Rk9ZZEdMVzF5VG9LY3FvMjJzQjdMSzJHVXdKYnov?=
 =?utf-8?B?YUJoNUIwUWF6NVdMRE81YXZ6WWhiWW4zL2tUUUZQcms0NW84T0NPV1hSZGhO?=
 =?utf-8?B?NEg4VWJLaDNITzZmek1Sd0tOaWFsR24wMlExSWM4alZtUjBTSEwvbGEzVm42?=
 =?utf-8?B?WnZSUHRkS0JVajZUemFYVDM3dlVCdFo0OGo5aU1LMDNjZW85bXI1ZEVWSHU4?=
 =?utf-8?B?N05OdHVJcmhwNWF4MENBdlJKa3ZnMVRqVkZHWFZiTW9wTXJnaGx0TEE0Zldt?=
 =?utf-8?B?NmpyUlV3Ny8vVlNSbEswcGlxMHlEYXlEN1F3a1VYbytmN0Fjd2VZd1BCU3Rh?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9134e257-96d3-4b41-a58f-08daa0048106
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 21:17:23.2606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oc7+iKOOcjgpgvtlEoWr4bTD/9irxvZHeG3ohPCT9NuD8IfDue8hZb6gcbb0dB63tf3Pn7RakOG50di6ip5cgMjNp6TLPM5iwoxlj9ZzhA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5056
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 14/15] drm/i915/guc: Support OA when
 Wa_16011777198 is enabled
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


On 9/26/2022 11:19 AM, Umesh Nerlige Ramappa wrote:
> On Mon, Sep 26, 2022 at 08:56:01AM -0700, Dixit, Ashutosh wrote:
>> On Fri, 23 Sep 2022 13:11:53 -0700, Umesh Nerlige Ramappa wrote:
>>>
>>> From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>
>> Hi Umesh/Vinay,
>>
>>> @@ -3254,6 +3265,24 @@ static int i915_oa_stream_init(struct 
>>> i915_perf_stream *stream,
>>>     intel_engine_pm_get(stream->engine);
>>>     intel_uncore_forcewake_get(stream->uncore, FORCEWAKE_ALL);
>>>
>>> +    /*
>>> +     * Wa_16011777198:dg2: GuC resets render as part of the Wa. 
>>> This causes
>>> +     * OA to lose the configuration state. Prevent this by 
>>> overriding GUCRC
>>> +     * mode.
>>> +     */
>>> +    if (intel_guc_slpc_is_used(&gt->uc.guc) &&
>>> +        intel_uc_uses_guc_rc(&gt->uc) &&
>>
>> Is this condition above correct? E.g. what happens when:
>>
>> a. GuCRC is used but SLPC is not used?

Currently, we have no way to separate out GuC RC and SLPC. Both are on 
when guc submission is enabled/supported. So, the above check is kind of 
redundant anyways.

Thanks,

Vinay.

>> b. GuCRC is not used. Don't we need to disable RC6 in host based RC6
>>   control?
>
> When using host based rc6, existing OA code is using forcewake and a 
> reference to engine_pm to prevent rc6. Other questions, directing to 
> @Vinay.
>
> Thanks,
> Umesh
>
>>
>> Do we need to worry about these cases?
>>
>> Or if we always expect both GuCRC and SLPC to be used on DG2 then I 
>> think
>> let's get rid of these from the if condition and add a drm_err() if 
>> we see
>> these not being used and OA is being enabled on DG2?
>>
>> Thanks.
>> -- 
>> Ashutosh
>>
>>> + (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>>> +         IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))) {
>>> +        ret = intel_guc_slpc_override_gucrc_mode(&gt->uc.guc.slpc,
>>> +                             SLPC_GUCRC_MODE_GUCRC_NO_RC6);
>>> +        if (ret) {
>>> +            drm_dbg(&stream->perf->i915->drm,
>>> +                "Unable to override gucrc mode\n");
>>> +            goto err_config;
>>> +        }
>>> +    }
>>> +
>>>     ret = alloc_oa_buffer(stream);
>>>     if (ret)
>>>         goto err_oa_buf_alloc;
>>> -- 
>>> 2.25.1
>>>
