Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 587C669B691
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Feb 2023 01:06:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A8710E208;
	Sat, 18 Feb 2023 00:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E64710E208
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Feb 2023 00:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676678764; x=1708214764;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ft2TTeWRKBHCZ1PH/v7KcXOQh2dUlY/u81kFVjYx0I8=;
 b=hE/t250Zgp2wJNA851PIUF+6fbSk8TyqQAKwfK955GbtvT2mDEMRKkT4
 XOZaH4gwBXUm0Nsvg2aGUgt9PSt2g4LbMXXdzwgFlj3C7a+uae0WJLzNl
 BJGwor74ExryfNl71oZmlBbxlUga0FUlhVeX6km47XD+yFzILniTFbvGT
 BvCFzpCAJIOd0ZqNYpbsCuMS3uISDaULXkNKHQDnLo42TIjtr9YQQhjEt
 t8luR9bMyfIiZz3KyFIUUKVnspfkaCF74YTXC8FW/CR7Qs0QJ4E5ZtX5B
 uDZPKSWPiRheLpbY1Ij+cM1zjqs7Sq9I0+yoGbH7Kbgh4zO9hUZOaERPb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="418343917"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="418343917"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 16:06:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="844741365"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="844741365"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 17 Feb 2023 16:06:03 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 16:06:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 17 Feb 2023 16:06:03 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 17 Feb 2023 16:06:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DV0ezRkHlQbTKLM1DZywtlYcMCveLDkk6vwWf1kq6pihWBr9/RDQ0r+5XuJENvgs5zxSgXtQ3/IogLVolWLXQUxIAxwmeKC0KbNDtana+yTDk1CU896kddooBnSC1RtX9BTDd6LaIcIcovgDy0Nd/ygsM6bZVMQRAFgqCF0TOg26ykKp90vBzHCzFZ96UvmieWkNc2CZpryG9UtVxqpVWAlQqSmn8hadG1pw42qyiwzpH95Ex4dx+vxbGYcsTD2EBfeuGujm6D7nOmPRPXIzSfPA6TRSQu3f1cl6/R2yS78qb0UScBxDC4qDHom7Is23Ix4j7GNOuw1qR0KHbWBoAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eVCCkDHJKUB6BJPQeOe4AQipMl1wAexDuA5AfbjVvH4=;
 b=MY8D5v30VbwR818aq4Nx5g5rKgFsoJajndedLcj+4Zufuu/DIe5aj9HyIp3o2Olj4YWFolEf62Nhrb+oCeVWaSZXPKOxrH9UFZLpoQPYwYbnBmYXOBGlsz7emEzYixQqQeT6ozdVjfERkIulqxBwGumLuUmSMWhAG/wp6ieNKUnnRRTKN3JWI3igXxkgbsAZVK//r1kTc4jrkfYcVDaxnMt+EHAK33aelpua/jzbvxNmgsgjW6EL49+zf40bY/AYIibeRqzRAGBQNg6JQSICp7OamBMvdtgNQ+Jve1OOvH7DsFpWDDm/quYIsnO663btL4ot1oVbHPEx1brdCtmYsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM6PR11MB4738.namprd11.prod.outlook.com (2603:10b6:5:2a3::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.13; Sat, 18 Feb 2023 00:06:01 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Sat, 18 Feb 2023
 00:06:01 +0000
Date: Fri, 17 Feb 2023 16:05:50 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y/AWXg7u6/fnwtpH@orsosgc001.jf.intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
 <20230217005850.2511422-8-umesh.nerlige.ramappa@intel.com>
 <87edqof1qt.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87edqof1qt.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0372.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::17) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM6PR11MB4738:EE_
X-MS-Office365-Filtering-Correlation-Id: 6814a948-6446-40c9-7100-08db1143eb0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nCqiZivsL2DmQLghUn59ZdFRPdPVkGqF4MMff5a8QtmvK7+Ws7rgv7uo7v0R3ML4h7+7qCrnBWHL2V3XBMCVsIyWtDDU4ym0uotKIKKVQntIf3Vso71NFYXD4YrkC/ZtBRu+8ndonqALjPAAIP2b1Hkmyprw+7vicrrcqsSczPveqJxi5PScmSFBrvGDOhsnNUier6ClJKG8aTBZFnf37N/dT94LfT62jHN8R6pNHaLpUUAzXDGlQFe6087bbvz00JBRQOHXbiXHC1qaRy5HjfPON0buTFKjTMWZY7RpJSBtuzujcR0nC65hKXfdswH6l29pF49Q2UipDhoOfemcnN4OjulAPhPA0LmZYWPgZQfvCX7pB8GcA15Iw/E436W4kkenkoixdwVI7Xa+ra5P3nWd3PPGalr/7f2KdKkk7mWuIarkcxXiP0cXGestB9CALJTYNVxkC9Dt+osZ4guKf/5pocIafdHxtGfaweyJ1+GV+h1iacQYsUIIbCoq5Vlyo1qH2UOh89J6fp4/Mh205P4OTsUIqnDKMhS+oDuOhdm8nFR0WQXtVK4uflxyQ8CBlwDknZQ/szNQBm3icPtbzgstRGyLqccTv6hpEZDOAZzxh9Yx92VmPMSUH5zcy5TFmKuCQMk3CB65XW8V0bGrxQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(396003)(39860400002)(376002)(136003)(451199018)(83380400001)(2906002)(86362001)(6486002)(478600001)(6666004)(26005)(186003)(6512007)(66946007)(6506007)(38100700002)(82960400001)(5660300002)(8936002)(6862004)(4326008)(41300700001)(66556008)(8676002)(66476007)(316002)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2NoSzR4WU9tTnlhRXhDQmhpVXVsRHhLWmtjakVhY3RUcmRDaGNHc0xzTy81?=
 =?utf-8?B?M2tKZmM5WkFFMUtramFjUVNUNTBqUWd3SSt0cjhjOWdvS3BkaTFZSmhTT29u?=
 =?utf-8?B?ZW0yMWJuWFowYi9QWU11bkdjM21SSms3cGpONkVCYVhZRjlaYm5tMVVtZDNU?=
 =?utf-8?B?MVRSNjF6WEUzeGpvdGpNOUpqNFZRdVZtbEFIeTdVcmpsa1lIakltTWN1V2NX?=
 =?utf-8?B?Y3Z2SWVGR3JIaVB0SFpTODh3QkhDaEx3VHpXL1JlSFF0SGlHSDJGWVExdzhI?=
 =?utf-8?B?K2laWmVOUzNYV2drdkZJcEFRNi83bmxrR1FuK0psdnZMbmhSRFVUVXJDVzdG?=
 =?utf-8?B?QTd3S1JFVVdBaTlESG9IMXp1Y2pqTlpzNUk2S3M1V2tqSzMzeEx5SitYVXAr?=
 =?utf-8?B?WW9RS1RnUXRnd2RGT3lublFJL25TN3B3SVB0NFZJbzFYVGhHeDZPdzZNNFVW?=
 =?utf-8?B?dDNINVpWQUc5ZXVJd2ZEZlRIUCtNU1YyQldzdVFFQzdJN3pCcklNNVFyV29W?=
 =?utf-8?B?cVExT0VoWUMvUCtsTjhiaHN3bXpINGxjUFJBWjZJTG11R045aUZxd244Rjk1?=
 =?utf-8?B?eVB2MW8wRGlXa3UxaEU0ejYrOVVMNDc0UnRxUlFONnFncm9VN2piaW1hUXlG?=
 =?utf-8?B?SHhSS1dHczZnaXlwQmxQb011ZmhqOS9zekUvMmlFRGllYUdMWGlmQ1c2K3pW?=
 =?utf-8?B?MUFlVG1FOGlXUTRDYlgyMkgrTDdYVjdJVEc5bkNTYmJENGcwZHcrb0l5amsw?=
 =?utf-8?B?UFdIZ1hTaXc0M09QenEybEQrQ2FoZnRjVTJKTWo0RmZPMDg0V0J4UDMwRzli?=
 =?utf-8?B?M294LytGVWZPcElqNGl4amtFeG9iOTBURkZjaUVENUtrWnFSYUJxNCt3OG5s?=
 =?utf-8?B?SnFzME1rUllTUEtWYmFWcmxTUzdOQ1lyUi8wZWVoVHFCZXYyRzlFQ2hwdnlX?=
 =?utf-8?B?REtQUWdLYXhBMGJ5cjRvK09PQ2JsVkpPVXFWdEtRazRUR29DZ29Vd2dJZG5x?=
 =?utf-8?B?S3NHb3ZpQ3d2aW9NSFJiZEJIbUxLL2ljZ3VuVGJMbElEcGUzQm9MbUMxK0lw?=
 =?utf-8?B?YWU2MFJrdUFUY2tCSGNEOG9ZOTFOVG1uTEw2ZUErZlM0OXFIK0w5NXZTNkJ2?=
 =?utf-8?B?MXVBRXpUZWdtZWhJTFZwQ0dlOUZWM29hQWNiSGVYVktmSkZIMkRmL25TTnNP?=
 =?utf-8?B?U0hOSHZoZWNsZEpuVFVkdkllSmlVYmZ1NlhORndQTkwwLzIzZWYxNjY5TTRn?=
 =?utf-8?B?UlBZSUJKRkJmZENySEQrOEtpeGJmMXJxb2FTUFJlRUhpTklTQmJKcmtCR2pG?=
 =?utf-8?B?N3FDNXhVK3dNcHlubElSV0FRdC8vUmtkRGF1WnRGNUh1U3dBQ0lDdVVqTjRj?=
 =?utf-8?B?ZjRvalhDUW8vL2tFdUQzUDhLSy9hUnV2ejdiZDNxVXZKaCtNcStGSXc0dS9s?=
 =?utf-8?B?RDI5NTRka2pDa1YzQmwzTkZHMG9QNHR6Mk5qZldtNGQ1WWNSVnprVkU3cnNi?=
 =?utf-8?B?ZWwwMVZYaFZNbFhFV1dCNnZ0a1ZaZHp2cXBxS0JnM1Q0VUczOVcxTjJWRHVG?=
 =?utf-8?B?clQzT1N1Q05Jc2dSOTA5UHFZdnRQa1VScEJ6QU9wTFp6SGU2Yi9DL1A4eGUz?=
 =?utf-8?B?Z0NTRUxCNE5hU0dqR2xJRmVJTTNFb1dHS0JGK1VXTzNRY1RPQjFmSnN1b1lk?=
 =?utf-8?B?dGpJRVNNcUVaRTlsZk83UU5rTUdZR3ZjYXRXUmphdGJrS280a0hwYmJNREhI?=
 =?utf-8?B?bzBFUThyYjZwUFhBQzdXc0VDYnJ4WDlWYlRlbVExVTgzVkdGeUJuM0RnZ2pp?=
 =?utf-8?B?bmVUMjlVVlZFc25rRjFWb2cxR1dGd3pJYjZVQjBCMENPYnlpK3VBdS82cHM2?=
 =?utf-8?B?dldBcXJDbEFNdTVvekQ5ckNzbk9RUHlPVEMxUTI0cVAzeXVKZGFzb3dmUGxF?=
 =?utf-8?B?RHNtOXlnTGtrTG5kQXkwcVNHaDVQTzZvMUt0VjFlNGhhM3R1NVNFVnZZazBr?=
 =?utf-8?B?MzNMK09Xd3dCdWErVnZjWmtoakRmR1plUEJQOG53Z21qODdmUGJ5dkY0RDha?=
 =?utf-8?B?c2Q5OFpIcmpoZVlDWWJYNzhNT1U3bFRSM01YaEVndmtFb2kycWhJM0NxTEQ2?=
 =?utf-8?B?TWRsVndHK1diQ2FyMmcyNmtpTDI5TDlkL2d0a0N4ejAzYzFEYkw0TmZWb0FC?=
 =?utf-8?Q?NGJ1dCKwciDcsi4/UX7oPUw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6814a948-6446-40c9-7100-08db1143eb0b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2023 00:06:00.8496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ahYEaNMrDBTYtWf7iLc8f0GTdL8ssurieKcFXgmHL5n9r2XUbNSJXAWm7ZlQCH/tPRluc1Jem4xfWmMDf7Yuj+kSI+ooh59ly7Mm3pi8jOo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4738
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915/perf: Handle non-power-of-2
 reports
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

On Fri, Feb 17, 2023 at 12:58:18PM -0800, Dixit, Ashutosh wrote:
>On Thu, 16 Feb 2023 16:58:48 -0800, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh, couple of nits below.
>
>> Some of the newer OA formats are not powers of 2. For those formats,
>> adjust the hw_tail accordingly when checking for new reports.
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 50 ++++++++++++++++++--------------
>>  1 file changed, 28 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 9715b964aa1e..d3a1892c93be 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -542,6 +542,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>>	bool pollin;
>>	u32 hw_tail;
>>	u64 now;
>> +	u32 partial_report_size;
>>
>>	/* We have to consider the (unlikely) possibility that read() errors
>>	 * could result in an OA buffer reset which might reset the head and
>> @@ -551,10 +552,16 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>>
>>	hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
>>
>> -	/* The tail pointer increases in 64 byte increments,
>> -	 * not in report_size steps...
>> +	/* The tail pointer increases in 64 byte increments, whereas report
>> +	 * sizes need not be integral multiples or 64 or powers of 2.
>s/or/of/ ---------------------------------------^
>
>Also I think report sizes can only be multiples of 64, the ones we have
>seen till now definitely are. Also the lower 6 bits of tail pointer are 0.

Agree, the only addition to the old comment should be that the new 
reports may not be powers of 2.

>
>> +	 * Compute potentially partially landed report in the OA buffer
>>	 */
>> -	hw_tail &= ~(report_size - 1);
>> +	partial_report_size = OA_TAKEN(hw_tail, stream->oa_buffer.tail);
>> +	partial_report_size %= report_size;
>> +
>> +	/* Subtract partial amount off the tail */
>> +	hw_tail = gtt_offset + ((hw_tail - partial_report_size) &
>> +				(stream->oa_buffer.vma->size - 1));
>
>Couple of questions here because OA_TAKEN uses OA_BUFFER_SIZE and the above
>expression uses stream->oa_buffer.vma->size:
>
>1. Is 'OA_BUFFER_SIZE == stream->oa_buffer.vma->size'? We seem to be using
>   the two interchaneably in the code.

Yes. I think the code was updated to use vma->size when support for 
selecting OA buffer size along with large OA buffers was added, but we 
haven't pushed that upstream yet. Since I have cherry-picked patches 
here, there is some inconsistency. I would just change this patch to use 
OA_BUFFER_SIZE for now.

>2. If yes, can we add an assert about this in alloc_oa_buffer?

If I change to OA_BUFFER_SIZE, then okay to skip assert? Do you suspect 
that the vma size may actually differ from what we requested?

>3. Can the above expression be changed to:
>
>	hw_tail = gtt_offset + OA_TAKEN(hw_tail, partial_report_size);

Not if hw_tail has rolled over, but stream->oa_buffer.tail hasn't.

>
>It would be good to use the same construct if possible. Maybe we can even
>change OA_TAKEN to something like:
>
>#define OA_TAKEN(tail, head)    ((tail - head) & (stream->oa_buffer.vma->size - 1))

I am thinking of changing to OA_BUFFER_SIZE at other places in this 
patch. Thoughts?

>
>>
>>	now = ktime_get_mono_fast_ns();
>>
>> @@ -677,6 +684,8 @@ static int append_oa_sample(struct i915_perf_stream *stream,
>>  {
>>	int report_size = stream->oa_buffer.format->size;
>>	struct drm_i915_perf_record_header header;
>> +	int report_size_partial;
>> +	u8 *oa_buf_end;
>>
>>	header.type = DRM_I915_PERF_RECORD_SAMPLE;
>>	header.pad = 0;
>> @@ -690,8 +699,21 @@ static int append_oa_sample(struct i915_perf_stream *stream,
>>		return -EFAULT;
>>	buf += sizeof(header);
>>
>> -	if (copy_to_user(buf, report, report_size))
>> +	oa_buf_end = stream->oa_buffer.vaddr +
>> +		     stream->oa_buffer.vma->size;
>> +	report_size_partial = oa_buf_end - report;
>> +
>> +	if (report_size_partial < report_size) {
>> +		if (copy_to_user(buf, report, report_size_partial))
>> +			return -EFAULT;
>> +		buf += report_size_partial;
>> +
>> +		if (copy_to_user(buf, stream->oa_buffer.vaddr,
>> +				 report_size - report_size_partial))
>> +			return -EFAULT;
>> +	} else if (copy_to_user(buf, report, report_size)) {
>>		return -EFAULT;
>> +	}
>>
>>	(*offset) += header.size;
>>
>> @@ -759,8 +781,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>>	 * all a power of two).
>>	 */
>>	if (drm_WARN_ONCE(&uncore->i915->drm,
>> -			  head > OA_BUFFER_SIZE || head % report_size ||
>> -			  tail > OA_BUFFER_SIZE || tail % report_size,
>> +			  head > OA_BUFFER_SIZE ||
>> +			  tail > OA_BUFFER_SIZE,
>
>The comment above the if () also needs to be fixed.

Will fix

>
>Also, does it make sense to have 'head % 64 || tail % 64' checks above? As
>I was saying above head and tail will be 64 byte aligned.

Since head and tail are derived from HW registers and the HW only 
increments them by 64, we should be good even without the %64.

Thanks,
Umesh
