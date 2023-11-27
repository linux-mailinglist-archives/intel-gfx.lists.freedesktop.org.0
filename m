Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A987F9924
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 07:21:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8FAD10E074;
	Mon, 27 Nov 2023 06:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE72E10E074
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701066085; x=1732602085;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3DImVlCXO7v3mPFGmzH5FqnLWdtcB5xQQ0O6kgTyZGo=;
 b=mkiSkvAPnABcCKsD0OLpU3G2R/RPe7H0TDE8e/0U8KGrNAJ3DlnxK76c
 QCXSD7aiSdPVZTX50pqkHS62x7Z2SmxKRa9Z3BgfJmFBTjEgNXHrXQKAa
 oFDR1xh14MtAvIFWDLnoPde9hTkEBK+nEV24oJWtFzk5676sSnsH9clGM
 NL/wHRqDp0OTL7ZqCvvQ+CzAkvBy1NBv4uK8RsbU4WHffKm2AAnhsijPs
 tuVrUNjcWqTJ0PNvN8Fa7hIn20a2CGTAQs4xfVg5nPz78dvFehZ8Ekcg0
 NxI5ygu+tK8Fo5QTt+H7vwa2Gieiq+tt7et6ypbszs8MNOm8/+HPkpqIb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="396550389"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="396550389"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2023 22:21:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="761513008"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="761513008"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2023 22:21:24 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 26 Nov 2023 22:21:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 26 Nov 2023 22:21:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 26 Nov 2023 22:21:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IqDf0xcpOwoLe4oya/tvuS/LUgwMcL7bKpOVgvkF5kzTn0uwLUskcdwe9jU6TJHFKNy4HD2d0nRyuUczWQnk1AYQKW/vCw6CobNl5vxYhg2WB1uxUHcaUMl/kSNf1/ZSZsRcgGP5FtdFGteuYhlRa7OHtqh1LDHasrGcTMK9xSohgcC8WrzFFRKpRkPfqpL/FZRvw6CG52vHTRh1Fw+8LNUs/Y7WxHcnuIcOTgbcICdAZEXiNvOgyM3rzzoczA7t/+4r9/NytZaCINBFoaiVz8s/alyc9RWCD3xGh+a1TIeoEzkzZnPjC2i+a9sLV90ireVqOxdQnllSXbXC236oDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GMkVyYpaQFh7J5JgqzMOEWQdN+8oVNMCADf/NRc0btY=;
 b=EX4DbmTXY7GWS017rtbBe0dcgjDdQ09oDXQUw+sacMnz3oB6QWdDbyytRluGCl5Yc2+MkyhA+Mz0c4IQEMT8wy53wvRh2aLmtzUT0Q4vB+LBltkB4QjpjaLVvNvZI3HmcFnGl+PbYI7FiVpxxuWSF9095QITrD8FwDrpxc2lxHqUpfi7WkKIGO0/ULQ4ro2U+BRYCU18/vrVl4AFVjiVpybgibR0jmr4718qvMqDYdKgDoHu8K8S+MbzH3LW4xaO5B86H0Cg1Ud5/cv+iqgvwxpTQIMW+WCGVO7T/Qpyqmb8Ae/K3Rfinu9aOt/c3bG8/vpCyC+aXB8lmvghZ2ek0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7555.namprd11.prod.outlook.com (2603:10b6:806:311::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Mon, 27 Nov
 2023 06:21:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9%4]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 06:21:22 +0000
Message-ID: <c3b55937-d0d6-4d40-2035-d5584645bc97@intel.com>
Date: Mon, 27 Nov 2023 11:51:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231123042733.1027046-1-ankit.k.nautiyal@intel.com>
 <20231123042733.1027046-4-ankit.k.nautiyal@intel.com>
 <87bkbj9tqd.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87bkbj9tqd.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0081.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7555:EE_
X-MS-Office365-Filtering-Correlation-Id: c6d4a3d9-5134-4186-0ef8-08dbef1112e3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iSGFAYn7mkyzphnOV59ckN7fqay4TBRaeeQareyIZ0jCMkf5eJ+p6L/AAyL/CIdPNMshVg66HDwJRc4GMxsVIOdLSxSGqj+9RX1IqnGOmjfSNcIo891DGnakKYCMesgnxWY2PpPNaZhUtLyJXbya7zIU7F2a7GIa2L1XymIKDdc+2j8ChmDr1izJ8XiZRsaBe+j1rh51O34H54zbMtBF//lt66mLHDWcFp+60aS6JKLUWGnIPd5eQYVXbYKNQRIiq4C531sg3eUg3YSCGMT5NWHFtkFIxF22T171zz17BJ9U9pL4sFH244/kka37GMDhq/dUx1PSkPbpMpsTAM3TGfCA09c/UtFLQaUrAYXov9a+rhgxflVZH5O4VJ95sQWfjPBsJrbgTTpGjb2yfB48syj8OzGxWCzqw2PK0QpCDdjyWcRIAGnk3Hq5MKSz5HMkIOOFJcWiXbpXoPuF2aBpW/ZEt/gG4BjPP7AteFnwXiQn5la3I7YkPQVDWAz99oKR4ZGrxASqGcwT64vpIVN90oBPa8JW1Ttv0QgXSSYwVKhQY8ptbORpJcNYYDT77X/XSLHQMV4AaoVOGS5oLUJyiSDW9uhx/BkP6qeJt8RDedBAubIe/PaPuLrKAQw2/H64syjjstbBVPdY1F0O3U9XLQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(396003)(346002)(376002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(316002)(6512007)(55236004)(6506007)(53546011)(86362001)(31696002)(107886003)(2616005)(66476007)(6666004)(26005)(6486002)(36756003)(478600001)(83380400001)(82960400001)(38100700002)(66556008)(66946007)(5660300002)(2906002)(41300700001)(31686004)(4326008)(8936002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2pqbEFrM2QvNUJLVW0xMVBsdG9BR3JpOGFTclg1cE9xTzIzRktCemRvanBI?=
 =?utf-8?B?TkRYS3Y1NnEyTWtyM2JNWFBrc2Q0VFBWVE9VNklqaTNqdFFSYmcxZkppZFFW?=
 =?utf-8?B?L1pkazQ0aE56WlJ4V0dISFRobWRjMFR4bHZBWTJVZzhSVUNodjFmMy9PTWhB?=
 =?utf-8?B?eTFpM3FKbkxGRGh0alJoNmZTdHBZU2VmaTgrK1p5ZG5sRERWeDltcGFuWlNv?=
 =?utf-8?B?Mk0vQy9TRmdYNzJNcE1SZ0JoSWZKQU53cWpleFBKQ2I4Rm9oUHFCYS9rYm1k?=
 =?utf-8?B?a21JL2pSSjVTTEIwQkhTbnhoTW00dHdROEpnTlBDWlhnNk5tbExBYzM0MUpo?=
 =?utf-8?B?UnR6SGtSZWE0bENpZnZvczNTR0JIcU9JOW4rYjh2TldoWXZqb1ZLeG1aSWo0?=
 =?utf-8?B?NXF0WEhnZFdNOHUzb2lneEx6NWVSSlg5UUQxeUhZcTMzY1E5OXhOUzB6Wmoy?=
 =?utf-8?B?cENJUnJDR1hiamdtL1FsbHJNakc3VDkrWTBMbE4xbVl3bUIxdlZwTkF4cUgw?=
 =?utf-8?B?THh3WG5yaXpYNHFFejZKdFNvMGkwdll4R2plVGc4WjhqeDhuMGdJTm1JR3hl?=
 =?utf-8?B?a1BIM2NzaHBxOXZob0F3d2VDRy9nTjJZSFZDRFY3UnFvT1Q2SThING9PMWhp?=
 =?utf-8?B?UEJ4dUxQL0VKSU90WTl0dFRUVTk0d3F4WTNNRlhPRmZiTThNUnJGSkJqd0Z1?=
 =?utf-8?B?RUNOcnpkREJ1QnpSWDIxY3VVN21sRVR4ZGt3TzJyaWQ0V1J2bXBzSHRlT1J4?=
 =?utf-8?B?MGY3d0djUEFZRGVLeS9WeUNIM0dXdnExYkNRbDVRTVh6a3ZCYmNZb3dNUWNK?=
 =?utf-8?B?alhSbTZaOW40N0paMHEyRXJUcWw2TUhNaGZyVVh4WlhoL3dXZTlHWUtOd3Z0?=
 =?utf-8?B?UThKb2dRT0cxNTNBQmlXbmdub2RWODEvZzRtZWt3OXhIeVpHdlhoazBaNmln?=
 =?utf-8?B?THRMODF4alNWS2hRMm9ORzRnNGc2VnNVVlVBTnk3WGtoVE83ZDdOWFpmUmIz?=
 =?utf-8?B?RSt0L2VEQkw4cEgzY1FCS0JXLzJKMlhqWjMrYmdvR01KQ0psMkZYRVh3MTI3?=
 =?utf-8?B?LzFKb1dzTHRqOU5lWnB2OHlxUGpQRTNrMlRTc3J6QWhhNXNXS3BDU2xHb2d6?=
 =?utf-8?B?bThUVnIyRzFSU0JiQUhPbDArMWhMOXY2WUd0akJsaTFvaEdTS3g0dTRIQUxw?=
 =?utf-8?B?bFZMQWZ0cTE5aG5MOGZoVzMraWtrdGxmUWdrV2krb1plQlVtS2FDR3dUSmsz?=
 =?utf-8?B?ancycTcxeTlyWkdyWXZGdVJncFc4UjlMZElFK1U5MUttTFo5T1B4Q210SXc2?=
 =?utf-8?B?cXgvQ2xtVzZzK3JpREt0N1J3YjM3b1RReHFtbHVmYkFKQm5nemxUZHZHRi9T?=
 =?utf-8?B?cnJHQU5yYWRHUmdnNjZISXVYMDJvNjh6eFBTTnJtd09weWpZcTAxbVdwck5R?=
 =?utf-8?B?REliMGJ3dWFnQS9IRkNPa2libUxTeWx2R25icHZ2V2tzTklkOVJCbXZtZ3BY?=
 =?utf-8?B?SEpndDd3TDRxVnFzWWlmVjdVdTZERDBzWEI4Uy9JckRWN1oxamUvWDF3V3Bm?=
 =?utf-8?B?TzB6cjdpQlUxaTZ1YkF3TU02VlREem4zTmdQQU1xZy9zWGdvQXRJQ3kvc1Ju?=
 =?utf-8?B?dDN2bmthUDJhZnRha1hOY1NCSmhuZlVIMU9Wb3BBS3N3QmtYb0FwemRHUG4x?=
 =?utf-8?B?eXpPamRIUWtGVjJMS3dmVkN2MXJsd0MyQU5JUG5LVS9Qc1poemV0MjdWVXdL?=
 =?utf-8?B?L0k1Q2ZoVEJXZE5rb1NyN1JFNm9hWUxscmRMUjM5bWVJbnMxQThQU1JreGlS?=
 =?utf-8?B?MDByZEcrSVA2anpsV1ExNm1EMVpKWVo5dTlYNVFVSGhtYzRDZDcvL3I3ckUw?=
 =?utf-8?B?eW5DL2ZZMWNhNEUwME94dXFJZEVkTWwzSlViUnZLUDQ1YkxUSURPWVR4bzVi?=
 =?utf-8?B?RnBuSkZZeUx0TDRJSVRlMzl6aVI3MnZiRmhWR0s1bFd4M0hUYWhkTTNpLzd1?=
 =?utf-8?B?ZWdaMFliTHB2eHhNZ0tsazZpOVVraTdtNzhFWm14ZnFKaUQyaWJhMHNMTzBM?=
 =?utf-8?B?a3dKTXFrcnNMalkvbUFtSG5GUGdFWDlKUkJreWY5QmxRYndQWEtmVEllb0JW?=
 =?utf-8?B?V3IwOVpHRmh1ZVZXanBIZ3lsbWpudGRpZWc4alUxY2t0YUNnNTB1MFh6T1NP?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6d4a3d9-5134-4186-0ef8-08dbef1112e3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 06:21:22.2407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T+N9el3+toRngI688RDYwqe/Dp/lrN3ZTimGfBxNCDTrRSBwK9FlRx3kyf29c56zCjGy8LAbmXaQyp3B1ZdgKvK3h+hHclOaG5mD8tVoNC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7555
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Use helpers to get dsc
 min/max input bpc
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


On 11/24/2023 6:46 PM, Jani Nikula wrote:
> On Thu, 23 Nov 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Use helpers for source min/max input bpc with DSC.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     |  2 --
>>   drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++++-------
>>   3 files changed, 6 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 37320cc4346f..0f5040c114b3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1622,7 +1622,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>   	return -EINVAL;
>>   }
>>   
>> -static
>>   u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
> It would probably be for the best to make these ints instead of u8.


Alright, will change return type to int and re-send this patch.

Regards,

Ankit

>
> BR,
> Jani.
>
>>   {
>>   	if (!HAS_DSC(i915))
>> @@ -2022,7 +2021,6 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>>   					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
>>   }
>>   
>> -static
>>   u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
>>   {
>>   	/* Min DSC Input BPC for ICL+ is 8 */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 05db46b111f2..931c5eb71cd0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -184,5 +184,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>>   					struct link_config_limits *limits);
>>   
>>   void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
>> +u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915);
>> +u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915);
>>   
>>   #endif /* __INTEL_DP_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index d3d53e1b4489..337db31777df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -293,17 +293,14 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>>   	int i, num_bpc;
>>   	u8 dsc_bpc[3] = {};
>>   	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
>> -	u8 dsc_max_bpc;
>> +	u8 dsc_max_bpc, dsc_min_bpc;
>>   	int min_compressed_bpp, max_compressed_bpp;
>>   
>> -	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>> -	if (DISPLAY_VER(i915) >= 12)
>> -		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
>> -	else
>> -		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
>> +	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
>> +	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>>   
>>   	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
>> -	min_bpp = limits->pipe.min_bpp;
>> +	min_bpp = max_t(u8, dsc_min_bpc * 3, limits->pipe.min_bpp);
>>   
>>   	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
>>   						       dsc_bpc);
