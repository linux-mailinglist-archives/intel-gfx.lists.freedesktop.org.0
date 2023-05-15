Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F02AB702445
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 08:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48F8610E133;
	Mon, 15 May 2023 06:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7448610E133
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 06:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684131369; x=1715667369;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gmtaHzth87qceu3EO8VUYMQIjxhvW3zp/cFfDlq6ooQ=;
 b=GF6CaQCP6WtSIVQhFlCwU3izaviKMtvZPn2L1Ba7NoOnV3kbH23fN18P
 E5Zu+OuSxI4+Ngg2yjOMZZkxz0i5ud6eDCrqERmgbPQJALsH1mVnUkADX
 zjHW3f6RmlGgDxm6ZhU44D/JVkvNYxVvbj/9/56+FmOHUWYcgw2Z3cTtu
 5VAw8UK3aVQbPDGY2U6o0XMnvUZgBP9kcYH3crP7spqsU0JJ+S9CIKEM0
 Sw5QQcfGaGgYGr6UoIM0SqGG7rCNk5Gi/arw86els3nlT+j6ERECm4ZSB
 ScYfHFePJTTAelx83orQR9KgfSNPBeCUHdLR6znusK7syunzRDkZC/Y/o g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="335655688"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="335655688"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 23:16:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="875058841"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="875058841"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 14 May 2023 23:16:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 14 May 2023 23:16:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 14 May 2023 23:16:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 14 May 2023 23:16:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 14 May 2023 23:16:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AF/PNa9v3rN5EiiHAu61zfdBTfu7BzIoAXOb+5DmpCeSJLIuo3kVrV6VP/+o75yy6Roh0915gbNk0dltg1aGNXRLytHEaLcTpkKGI3UvJ87uR/PxDEeFRsokYt1eDAc7qGeWhacgAVPBvFoQtfw5hVKR5NmTMv8wPgsPZ/2WES9yFLiWsq4fIapJ66ZbAD/uzhfWtiULBxG5qmJgg2S2Ntsuk2apA8HXn4quBv4uUqFR8VqvON/vTYArbWxzKuIiG0JeOS1ZI6sw+tRVhAP/f+2w3UUXhb1AnH3YQtwGRYxlida31p1IHZMeNvaACCsZY6c6omUB2ScPcbGnski/VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3flspDPv5aKv45u2yTwKOSp3MBhCRVaY36JwaA2DMa4=;
 b=h0/ng/n808JhkEJ6+RG+Kf51GaRgCeZl1Z6D29jpi1ILibV/UIHFMfcXkvbSrT+P2wD4ZqTRyc55X4fToZkXWAm2Ff0I3FoJc8ohAIo5bg58fSSFTh6zAxVe+8GLqKVwIThvuaVx7XuEaPwZkkmedZI8SLkdLEw0WWp5jXBOB4kKk+b494HV4o81kEq/129GYS62lqSKWysMklACvQZ+luo4tc63lurf3kzhRuiKs+y5ItMbPrU/NKMzoUOrmiyCGjfe6XIiNklg09N6HMprkkxKRM6Jnl4G5vaFJGhARRyGPKYuacg2IQTiWXFRY+OZxks4O4SnM5gkP5VtRmrLjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM4PR11MB8178.namprd11.prod.outlook.com (2603:10b6:8:18f::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.29; Mon, 15 May 2023 06:16:03 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc%3]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 06:16:03 +0000
Date: Sun, 14 May 2023 23:16:01 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZGHOIR2aDL5xh5PW@orsosgc001.jf.intel.com>
References: <20230513015545.2807282-1-umesh.nerlige.ramappa@intel.com>
 <20230513015545.2807282-6-umesh.nerlige.ramappa@intel.com>
 <875y8wetbf.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <875y8wetbf.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY5PR17CA0030.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::43) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM4PR11MB8178:EE_
X-MS-Office365-Filtering-Correlation-Id: cc403f51-8f83-4252-4c2d-08db550bdc0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wBoKGIuOwbXXF7hpc8HoAiEQrGnclJBcxQnAAsMEe8Ixj+A2OIOt6OwOz0cR5oWMDofxIBqT05rNjwu5FdocfY3AqwUTGnh5yRCkU+KeqUClbZykh1I6IE4iV2naD19SmWKp/GvuxSR7lly3/WU7YKj6kERnDp+SoDN343/MMiNj0ewwuRNois8QT+3vInL9FTYJcj2IDCF5NVVtU1RTaS6wFLWJM7EKpFga7iyr9powZGqzlA8vkZQtnI5uYE54LYImG4DQVMCwwEdMyJVNWQiu9pClOYMDl/JkhoYYUpz0on9dASETvxRx2oAYCXtZRrVzT87G4IV0px+PWA0Tv3m1FOwe4FxGVrECyyaDSL6UFn4NXnlDC0qGttVqE8/gY4oblQD/GFADS60tJqKsLzi1hJlPXHMSZsUcGsvfjSTo5eWWanXcnueShZ9qP2ImbrkCvOv4dhUcaC3iQo1eY+4q3r0mSSqGy1b8pTpqluz6DRkR4ITarVCAN6pmoAqm9k6XyeCEkU1FGJtY0z+sgxunOViSohOkExpwrTUokb81SxW8Mn+4Ndyuduf390He
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(346002)(136003)(39860400002)(396003)(451199021)(83380400001)(4326008)(6636002)(82960400001)(41300700001)(38100700002)(6512007)(26005)(6506007)(6486002)(478600001)(66946007)(316002)(66476007)(66556008)(8676002)(8936002)(6862004)(5660300002)(30864003)(2906002)(86362001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVQ3V212a1ZLbzdmT1lYZVNtK0l6R3pvdGdqTUpad3l3bkRKUzR6RXNJR3F5?=
 =?utf-8?B?MEo2SEtUN3pmb0NqY1NROVdrdGpUa1pkZElSMHB0eUM4Q0g5VkVCd2hBRE9O?=
 =?utf-8?B?SnBNa1VQTGYzTGR5UHUwZUFpRjYrdXB6NjlRZ1h3Um82dFZRb2l2L052djlJ?=
 =?utf-8?B?K1U5RlBpVjBDNWw0ekZ3RUZKeTcrRFZQZk1LQm44TXNqTzFTTnZGN0NmdlZM?=
 =?utf-8?B?UzRHK3pheUl1M2FQUGc1N2h6ZmRETG1BaEV1a1doQ2w4MDdhbHlmQzV3Wklr?=
 =?utf-8?B?bWM3emtuQ3c5MUtXS2Fabm84RmgvcmlhWkszZzd3N01VSDdIaU93SVhaZ3Yw?=
 =?utf-8?B?a3RHeHUzUGIvM2ptV2h1bk5iMlFPbjFscjQybmYxcjB1TFIzRW80VEowTHN5?=
 =?utf-8?B?ZlRoTUFSYVVLM2c1Z0kxZ3RVL1ptN2JzdHhpSFhrdnhTcTlFbi9ucHZuS2o1?=
 =?utf-8?B?UFFVQi9mWmM5YmZmWFZBVXhZb2RoTnJsamN6QzVGMTR3am1XMENUM1MyZWV5?=
 =?utf-8?B?bXdSV1BYQ0VqVklVK3Y2K3NQaE91NXNVa0xnQyt2cmRYNjQvVVY4RFJES1pM?=
 =?utf-8?B?M0pUYmtkZ2E0Z0Uwakl1cWR3RmtrZWZ4aW5ETDJYZGJuSHpFaWpIWU9vZEV2?=
 =?utf-8?B?d0svUkVwWGpxV1diT01US3hDc0FaV0tteUtEOUlwRkMzMWcyWC9WVTBBV1Zw?=
 =?utf-8?B?Q295a09maE9BdncxTkFXOTZScVVJS25Ob2ZMTDFTa3NDV3dxQTVJdnVjOVN6?=
 =?utf-8?B?OHNHR0hzR3RWdVZPRFZ6SDQ5aGtjcUdFM1kzNXl1YlNRNUFHQTVSczN3VmVK?=
 =?utf-8?B?V2JVWmZBYVZFNzJTK0NFelovRng4Rm90QnM2bXhMUk1mTmVReUtsSmpJa2FH?=
 =?utf-8?B?YXVaR20xR3BzM0xmZy9veTliaXZ2Y21jdmZ3NWVnRW9HVXZMWTcwQm5kMElY?=
 =?utf-8?B?dlgxZ2pQekhhTTMyRlFTZUMrQXFaeXE0VHdVWmFqK2RRUmp6c015QnBGR0N4?=
 =?utf-8?B?ZHIvQ215ckd0ODJDRnFFdmlzeXZtK2JuM0c0M3RoSzRWWjVGVUovZXh3K09L?=
 =?utf-8?B?M0xxejVUcCtEdldHZHVsUWhrUEJhS1dLNThpSGhjbElZTWVHYlBqWW9QbTBX?=
 =?utf-8?B?czAzaGRobjVadSsveHZvbUcxdlhyUEpPY1dVSDdhRjFkTkJyUHdwL2tiNlVL?=
 =?utf-8?B?QUVaQXVMZjdMOXlFTk9Qam9DUHdhSXc5QXJKU1NJYjFBakRyMzFkUjMydDZr?=
 =?utf-8?B?RUtBYU81ZlBaRnNDaWZ5b2tuRW9PL2h1Y3lDMmNXMUoxYkdheTZBMHBLUVR2?=
 =?utf-8?B?Z1NEdHhWQlUrdlFmTTN5N0hwV0xiVnFid3RVWDNkekwybnNldXFBMUJFZllo?=
 =?utf-8?B?TmhtdTNpMG9GL3dtZ0l1SUZUU3o0RFZVNWUxRkRhRWVWdnF0dEQ3elpXa1ls?=
 =?utf-8?B?aVd4ejNneW9xdkdpZ1NNUmtXM3Jua1A0amkvY2Yzd0RRc1lVWjIwMTJrOFN6?=
 =?utf-8?B?NFJrSzAyM3o2cmZHVlYxMVRNWXZOa1ZkblM4M25UeVU1bmJBcGM5bWgrb2p1?=
 =?utf-8?B?S1BleWk0eTVXaGVUTEVVWjhlL0I0OEVFQXN2eXV5R2ZoelJnQVdid045T1Uy?=
 =?utf-8?B?eUNtNWNTZXNBMHBRNW5EbWdWc296OGV3WWZVTWtVZWJYdEgrQXpLYkRpbjBT?=
 =?utf-8?B?YjNBZytuOVVOQUM5U2tOMk50bW9sSWFTcnUyUDdkTVBZRjRINHJOcFNhbUQ4?=
 =?utf-8?B?eVBQdkxaYWNwZklXVGtEV3FNSUg1YUJOcHNURFJLdG5CaGNVcDJMYnNkeHJ4?=
 =?utf-8?B?Skk2MFFIVCtrL3BvaHp3TnlFait2SG5UME9tOFFEdkc5dWlxMDhjOXg0OWVD?=
 =?utf-8?B?UVpUdjJrcVN3SW4rTStmREN3TzRpdjA2YzZnb2V3dllhUHlWazVROFRQaGdk?=
 =?utf-8?B?TWIwc205aVZEV1d2Yk02WlFLTjBGT0lEM0xUT3ZlVGNhb0FoVU9yRW5JYlhH?=
 =?utf-8?B?R1lDOXNycDlpWHhMNytqUWFIU1FZRWFDdHd0YzhCRlR2NHZxUWUxcUZMMlQr?=
 =?utf-8?B?UndaMkphYWdhMnVtOUJ5MFRVWDRvblRjVDZWOXl0eGVlUTdtVjl1RlhjQWxa?=
 =?utf-8?B?RC95aTNvODhhdFZ5ODlvZEZKYWR3aDJrZEhEZEVsbXZVbXhmWUt1TGxVbFVB?=
 =?utf-8?Q?djQsw0MQoOEwmJgl2eW4s34=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc403f51-8f83-4252-4c2d-08db550bdc0f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 06:16:03.0676 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5eCy7Wl28F/FYhp5R73s/0nW9PwujAiqJd1pWkLzv2UHQ6JOmVo+61CDjZ1aT4lWHF8sJwxiMNubQ3vmvW6+4y3d+m1Ga0sPJebnGthJf1U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8178
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/pmu: Prepare for multi-tile
 non-engine counters
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

On Fri, May 12, 2023 at 09:41:56PM -0700, Dixit, Ashutosh wrote:
>On Fri, 12 May 2023 18:55:44 -0700, Umesh Nerlige Ramappa wrote:
>>
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Reserve some bits in the counter config namespace which will carry the
>> tile id and prepare the code to handle this.
>>
>> No per tile counters have been added yet.
>>
>> v2:
>> - Fix checkpatch issues
>> - Use 4 bits for gt id in non-engine counters. Drop FIXME.
>> - Set MAX GTs to 4. Drop FIXME.
>>
>> v3: (Ashutosh, Tvrtko)
>> - Drop BUG_ON that would never fire
>> - Make enable u64
>> - Pull in some code from next patch
>
>Just a reminder in case you want to do something like:
>
>#define I915_PMU_MAX_GTS I915_MAX_GT
>
>Or replace I915_PMU_MAX_GTS by I915_MAX_GT.

Hmmm, I thought I sent out a response separately for that in the 
previous series, but I am not able to locate it, strange. Anyways, I did 
try that and ran into issues that Tvrtko was mentioning w.r.t. header 
dependencies. I think i915_drv.h includes intel_engine.h and that 
includes i915_pmu.h. So including i915_drv.h in i915_pmu.h for the 
definition of I915_MAX_GT is just wreaking havoc during compile.

Hence, gave up on that and using whatever existed before in Tvrtko's 
patch.

Thanks,
Umesh

>
>But otherwise v3 LGTM:
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_pmu.c | 148 +++++++++++++++++++++++---------
>>  drivers/gpu/drm/i915/i915_pmu.h |  11 ++-
>>  include/uapi/drm/i915_drm.h     |  17 +++-
>>  3 files changed, 129 insertions(+), 47 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> index 725b01b00775..b3dd9e51c5cc 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -56,11 +56,21 @@ static bool is_engine_config(u64 config)
>>	return config < __I915_PMU_OTHER(0);
>>  }
>>
>> +static unsigned int config_gt_id(const u64 config)
>> +{
>> +	return config >> __I915_PMU_GT_SHIFT;
>> +}
>> +
>> +static u64 config_counter(const u64 config)
>> +{
>> +	return config & ~(~0ULL << __I915_PMU_GT_SHIFT);
>> +}
>> +
>>  static unsigned int other_bit(const u64 config)
>>  {
>>	unsigned int val;
>>
>> -	switch (config) {
>> +	switch (config_counter(config)) {
>>	case I915_PMU_ACTUAL_FREQUENCY:
>>		val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
>>		break;
>> @@ -78,7 +88,9 @@ static unsigned int other_bit(const u64 config)
>>		return -1;
>>	}
>>
>> -	return I915_ENGINE_SAMPLE_COUNT + val;
>> +	return I915_ENGINE_SAMPLE_COUNT +
>> +	       config_gt_id(config) * __I915_PMU_TRACKED_EVENT_COUNT +
>> +	       val;
>>  }
>>
>>  static unsigned int config_bit(const u64 config)
>> @@ -104,10 +116,22 @@ static unsigned int event_bit(struct perf_event *event)
>>	return config_bit(event->attr.config);
>>  }
>>
>> +static u64 frequency_enabled_mask(void)
>> +{
>> +	unsigned int i;
>> +	u64 mask = 0;
>> +
>> +	for (i = 0; i < I915_PMU_MAX_GTS; i++)
>> +		mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
>> +			config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
>> +
>> +	return mask;
>> +}
>> +
>>  static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>  {
>>	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>> -	u32 enable;
>> +	u64 enable;
>>
>>	/*
>>	 * Only some counters need the sampling timer.
>> @@ -120,9 +144,7 @@ static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>	 * Mask out all the ones which do not need the timer, or in
>>	 * other words keep all the ones that could need the timer.
>>	 */
>> -	enable &= config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>> -		  config_mask(I915_PMU_REQUESTED_FREQUENCY) |
>> -		  ENGINE_SAMPLE_MASK;
>> +	enable &= frequency_enabled_mask() | ENGINE_SAMPLE_MASK;
>>
>>	/*
>>	 * When the GPU is idle per-engine counters do not need to be
>> @@ -164,9 +186,37 @@ static inline s64 ktime_since_raw(const ktime_t kt)
>>	return ktime_to_ns(ktime_sub(ktime_get_raw(), kt));
>>  }
>>
>> +static unsigned int
>> +__sample_idx(struct i915_pmu *pmu, unsigned int gt_id, int sample)
>> +{
>> +	unsigned int idx = gt_id * __I915_NUM_PMU_SAMPLERS + sample;
>> +
>> +	GEM_BUG_ON(idx >= ARRAY_SIZE(pmu->sample));
>> +
>> +	return idx;
>> +}
>> +
>> +static u64 read_sample(struct i915_pmu *pmu, unsigned int gt_id, int sample)
>> +{
>> +	return pmu->sample[__sample_idx(pmu, gt_id, sample)].cur;
>> +}
>> +
>> +static void
>> +store_sample(struct i915_pmu *pmu, unsigned int gt_id, int sample, u64 val)
>> +{
>> +	pmu->sample[__sample_idx(pmu, gt_id, sample)].cur = val;
>> +}
>> +
>> +static void
>> +add_sample_mult(struct i915_pmu *pmu, unsigned int gt_id, int sample, u32 val, u32 mul)
>> +{
>> +	pmu->sample[__sample_idx(pmu, gt_id, sample)].cur += mul_u32_u32(val, mul);
>> +}
>> +
>>  static u64 get_rc6(struct intel_gt *gt)
>>  {
>>	struct drm_i915_private *i915 = gt->i915;
>> +	const unsigned int gt_id = gt->info.id;
>>	struct i915_pmu *pmu = &i915->pmu;
>>	unsigned long flags;
>>	bool awake = false;
>> @@ -181,7 +231,7 @@ static u64 get_rc6(struct intel_gt *gt)
>>	spin_lock_irqsave(&pmu->lock, flags);
>>
>>	if (awake) {
>> -		pmu->sample[__I915_SAMPLE_RC6].cur = val;
>> +		store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
>>	} else {
>>		/*
>>		 * We think we are runtime suspended.
>> @@ -190,14 +240,14 @@ static u64 get_rc6(struct intel_gt *gt)
>>		 * on top of the last known real value, as the approximated RC6
>>		 * counter value.
>>		 */
>> -		val = ktime_since_raw(pmu->sleep_last);
>> -		val += pmu->sample[__I915_SAMPLE_RC6].cur;
>> +		val = ktime_since_raw(pmu->sleep_last[gt_id]);
>> +		val += read_sample(pmu, gt_id, __I915_SAMPLE_RC6);
>>	}
>>
>> -	if (val < pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur)
>> -		val = pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur;
>> +	if (val < read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED))
>> +		val = read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED);
>>	else
>> -		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = val;
>> +		store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED, val);
>>
>>	spin_unlock_irqrestore(&pmu->lock, flags);
>>
>> @@ -207,13 +257,20 @@ static u64 get_rc6(struct intel_gt *gt)
>>  static void init_rc6(struct i915_pmu *pmu)
>>  {
>>	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>> -	intel_wakeref_t wakeref;
>> +	struct intel_gt *gt;
>> +	unsigned int i;
>> +
>> +	for_each_gt(gt, i915, i) {
>> +		intel_wakeref_t wakeref;
>> +
>> +		with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
>> +			u64 val = __get_rc6(gt);
>>
>> -	with_intel_runtime_pm(to_gt(i915)->uncore->rpm, wakeref) {
>> -		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(to_gt(i915));
>> -		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur =
>> -					pmu->sample[__I915_SAMPLE_RC6].cur;
>> -		pmu->sleep_last = ktime_get_raw();
>> +			store_sample(pmu, i, __I915_SAMPLE_RC6, val);
>> +			store_sample(pmu, i, __I915_SAMPLE_RC6_LAST_REPORTED,
>> +				     val);
>> +			pmu->sleep_last[i] = ktime_get_raw();
>> +		}
>>	}
>>  }
>>
>> @@ -221,8 +278,8 @@ static void park_rc6(struct intel_gt *gt)
>>  {
>>	struct i915_pmu *pmu = &gt->i915->pmu;
>>
>> -	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(gt);
>> -	pmu->sleep_last = ktime_get_raw();
>> +	store_sample(pmu, gt->info.id, __I915_SAMPLE_RC6, __get_rc6(gt));
>> +	pmu->sleep_last[gt->info.id] = ktime_get_raw();
>>  }
>>
>>  static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
>> @@ -362,34 +419,30 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
>>	}
>>  }
>>
>> -static void
>> -add_sample_mult(struct i915_pmu_sample *sample, u32 val, u32 mul)
>> -{
>> -	sample->cur += mul_u32_u32(val, mul);
>> -}
>> -
>> -static bool frequency_sampling_enabled(struct i915_pmu *pmu)
>> +static bool
>> +frequency_sampling_enabled(struct i915_pmu *pmu, unsigned int gt)
>>  {
>>	return pmu->enable &
>> -	       (config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>> -		config_mask(I915_PMU_REQUESTED_FREQUENCY));
>> +	       (config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt)) |
>> +		config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt)));
>>  }
>>
>>  static void
>>  frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>  {
>>	struct drm_i915_private *i915 = gt->i915;
>> +	const unsigned int gt_id = gt->info.id;
>>	struct i915_pmu *pmu = &i915->pmu;
>>	struct intel_rps *rps = &gt->rps;
>>
>> -	if (!frequency_sampling_enabled(pmu))
>> +	if (!frequency_sampling_enabled(pmu, gt_id))
>>		return;
>>
>>	/* Report 0/0 (actual/requested) frequency while parked. */
>>	if (!intel_gt_pm_get_if_awake(gt))
>>		return;
>>
>> -	if (pmu->enable & config_mask(I915_PMU_ACTUAL_FREQUENCY)) {
>> +	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt_id))) {
>>		u32 val;
>>
>>		/*
>> @@ -405,12 +458,12 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>		if (!val)
>>			val = intel_gpu_freq(rps, rps->cur_freq);
>>
>> -		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_ACT],
>> +		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_ACT,
>>				val, period_ns / 1000);
>>	}
>>
>> -	if (pmu->enable & config_mask(I915_PMU_REQUESTED_FREQUENCY)) {
>> -		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_REQ],
>> +	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt_id))) {
>> +		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_REQ,
>>				intel_rps_get_requested_frequency(rps),
>>				period_ns / 1000);
>>	}
>> @@ -444,9 +497,7 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>>
>>	for_each_gt(gt, i915, i) {
>>		engines_sample(gt, period_ns);
>> -
>> -		if (i == 0) /* FIXME */
>> -			frequency_sample(gt, period_ns);
>> +		frequency_sample(gt, period_ns);
>>	}
>>
>>	hrtimer_forward(hrtimer, now, ns_to_ktime(PERIOD));
>> @@ -488,7 +539,13 @@ config_status(struct drm_i915_private *i915, u64 config)
>>  {
>>	struct intel_gt *gt = to_gt(i915);
>>
>> -	switch (config) {
>> +	unsigned int gt_id = config_gt_id(config);
>> +	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
>> +
>> +	if (gt_id > max_gt_id)
>> +		return -ENOENT;
>> +
>> +	switch (config_counter(config)) {
>>	case I915_PMU_ACTUAL_FREQUENCY:
>>		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>>			/* Requires a mutex for sampling! */
>> @@ -499,6 +556,8 @@ config_status(struct drm_i915_private *i915, u64 config)
>>			return -ENODEV;
>>		break;
>>	case I915_PMU_INTERRUPTS:
>> +		if (gt_id)
>> +			return -ENOENT;
>>		break;
>>	case I915_PMU_RC6_RESIDENCY:
>>		if (!gt->rc6.supported)
>> @@ -596,22 +655,27 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
>>			val = engine->pmu.sample[sample].cur;
>>		}
>>	} else {
>> -		switch (event->attr.config) {
>> +		const unsigned int gt_id = config_gt_id(event->attr.config);
>> +		const u64 config = config_counter(event->attr.config);
>> +
>> +		switch (config) {
>>		case I915_PMU_ACTUAL_FREQUENCY:
>>			val =
>> -			   div_u64(pmu->sample[__I915_SAMPLE_FREQ_ACT].cur,
>> +			   div_u64(read_sample(pmu, gt_id,
>> +					       __I915_SAMPLE_FREQ_ACT),
>>				   USEC_PER_SEC /* to MHz */);
>>			break;
>>		case I915_PMU_REQUESTED_FREQUENCY:
>>			val =
>> -			   div_u64(pmu->sample[__I915_SAMPLE_FREQ_REQ].cur,
>> +			   div_u64(read_sample(pmu, gt_id,
>> +					       __I915_SAMPLE_FREQ_REQ),
>>				   USEC_PER_SEC /* to MHz */);
>>			break;
>>		case I915_PMU_INTERRUPTS:
>>			val = READ_ONCE(pmu->irq_count);
>>			break;
>>		case I915_PMU_RC6_RESIDENCY:
>> -			val = get_rc6(to_gt(i915));
>> +			val = get_rc6(i915->gt[gt_id]);
>>			break;
>>		case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
>>			val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>> index 3a811266ac6a..ea2d24ef5664 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.h
>> +++ b/drivers/gpu/drm/i915/i915_pmu.h
>> @@ -38,13 +38,16 @@ enum {
>>	__I915_NUM_PMU_SAMPLERS
>>  };
>>
>> +#define I915_PMU_MAX_GTS 4
>> +
>>  /*
>>   * How many different events we track in the global PMU mask.
>>   *
>>   * It is also used to know to needed number of event reference counters.
>>   */
>>  #define I915_PMU_MASK_BITS \
>> -	(I915_ENGINE_SAMPLE_COUNT + __I915_PMU_TRACKED_EVENT_COUNT)
>> +	(I915_ENGINE_SAMPLE_COUNT + \
>> +	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
>>
>>  #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
>>
>> @@ -95,7 +98,7 @@ struct i915_pmu {
>>	 *
>>	 * Low bits are engine samplers and other events continue from there.
>>	 */
>> -	u32 enable;
>> +	u64 enable;
>>
>>	/**
>>	 * @timer_last:
>> @@ -124,11 +127,11 @@ struct i915_pmu {
>>	 * Only global counters are held here, while the per-engine ones are in
>>	 * struct intel_engine_cs.
>>	 */
>> -	struct i915_pmu_sample sample[__I915_NUM_PMU_SAMPLERS];
>> +	struct i915_pmu_sample sample[I915_PMU_MAX_GTS * __I915_NUM_PMU_SAMPLERS];
>>	/**
>>	 * @sleep_last: Last time GT parked for RC6 estimation.
>>	 */
>> -	ktime_t sleep_last;
>> +	ktime_t sleep_last[I915_PMU_MAX_GTS];
>>	/**
>>	 * @irq_count: Number of interrupts
>>	 *
>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>> index dba7c5a5b25e..d5ac1fdeb2b1 100644
>> --- a/include/uapi/drm/i915_drm.h
>> +++ b/include/uapi/drm/i915_drm.h
>> @@ -280,7 +280,16 @@ enum drm_i915_pmu_engine_sample {
>>  #define I915_PMU_ENGINE_SEMA(class, instance) \
>>	__I915_PMU_ENGINE(class, instance, I915_SAMPLE_SEMA)
>>
>> -#define __I915_PMU_OTHER(x) (__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x))
>> +/*
>> + * Top 4 bits of every non-engine counter are GT id.
>> + */
>> +#define __I915_PMU_GT_SHIFT (60)
>> +
>> +#define ___I915_PMU_OTHER(gt, x) \
>> +	(((__u64)__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x)) | \
>> +	((__u64)(gt) << __I915_PMU_GT_SHIFT))
>> +
>> +#define __I915_PMU_OTHER(x) ___I915_PMU_OTHER(0, x)
>>
>>  #define I915_PMU_ACTUAL_FREQUENCY	__I915_PMU_OTHER(0)
>>  #define I915_PMU_REQUESTED_FREQUENCY	__I915_PMU_OTHER(1)
>> @@ -290,6 +299,12 @@ enum drm_i915_pmu_engine_sample {
>>
>>  #define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
>>
>> +#define __I915_PMU_ACTUAL_FREQUENCY(gt)		___I915_PMU_OTHER(gt, 0)
>> +#define __I915_PMU_REQUESTED_FREQUENCY(gt)	___I915_PMU_OTHER(gt, 1)
>> +#define __I915_PMU_INTERRUPTS(gt)		___I915_PMU_OTHER(gt, 2)
>> +#define __I915_PMU_RC6_RESIDENCY(gt)		___I915_PMU_OTHER(gt, 3)
>> +#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	___I915_PMU_OTHER(gt, 4)
>> +
>>  /* Each region is a minimum of 16k, and there are at most 255 of them.
>>   */
>>  #define I915_NR_TEX_REGIONS 255	/* table size 2k - maximum due to use
>> --
>> 2.36.1
>>
