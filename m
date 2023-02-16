Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96853699B5C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 18:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA1410EE5C;
	Thu, 16 Feb 2023 17:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E8AF10E33C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 17:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676568917; x=1708104917;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/JeroHmUo06nogxMowUVve6iyVaifLXJdkg7RH6iFdc=;
 b=MTamuy36pnzuyAhHb8XOfb2KjV8WjmjHMsraAtDTM49Gp3Ai5++gCjvt
 5S/c24HPEk9bEjobnx4rYmFUJqlF2dVsfzQ/FKWeqWmsAYpNmazxiEgrj
 rY9UDIi9awUlTf8QJAU1xsFKvJWR8SrmDFt6B/DBLDTAAz/BDLGD6NHQM
 GWJ68/ilMnlAgqkoFAZ53Nmi2uzghUhB9WfBpMh0uWpHYAqt/vcmi4+Kl
 tgHZRBLM+3NwPRPvKch0lZ7Fqq7wsCJCShR0Uo6u8O7p9YdvY2geNJ1MT
 NubQw90Xsyh+2WJcn9HlIpTzy02ojaxcpQuMQ9WR2jffA0zkUYuf1bZS7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="394239888"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="394239888"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 09:31:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="844237950"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="844237950"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 16 Feb 2023 09:31:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 09:31:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 09:31:01 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 09:31:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zf7uukZARXDXxQ89sqEJONCQlRE33c5o+n8Ka4r3hmx6dQHXrWRJp+mLeTkfnJhn1GjupcCSS3/AghY/FDocSn+JAGBbwHFNqDTwVxlJucKJxhbUUZES6QwOrLkTzvLUQs6gefygZJIIGM5KwCN7la/Tru4q9vqd3gYaNY1J41KmSntNsJEVuZ4PL2lt3VF4lkU+MUD1S2d2JUoB0u+yhcE609TMm3buhtJlKxAkpFRbXsTReKnDPYzl5NsXdu25aLgRSAZ0B/+2CIi/1zF1RS54Ze9DcPldlPIrcDzw45yQZwZx4cnvILicTVOrI+yMJTfMyuE48WRuoaFUrnHNgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Qt2JZWK7xYaZQXZpxeH+6bYbvmfEQqy6+MHZuPZx/Y=;
 b=XXMWsU3o53sXER9qhZZRJ07Qv1snt8RyJznQNpTT6SU3VZqI69UlZIG1OCCE4SB4xLO7M07WYMTrmKghofcdi/vFwFFde4MzUJOrXgWS48rFnHh8EJWGnMPifrkMhVDtlEZw+V/uWANgUlQVs1qGXmE6rllYILcU63JRshP0iSOkhKQjw6FniCRDJaq/g88RB37L2HGrJcBsonbrUqYu/VBxP3cX8P/Q8WpO4YYe8mryMD5j/9QYomN+L4N7tyQRGXfoGNmSbB7yax88P1Ol7Gro14bt3hjXgJvWIoR75w3MhVsQWOPaJj+q2rPDA116zNiHLATGDJzVAMy9OYKbLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ1PR11MB6300.namprd11.prod.outlook.com (2603:10b6:a03:455::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Thu, 16 Feb
 2023 17:31:00 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Thu, 16 Feb 2023
 17:31:00 +0000
Date: Thu, 16 Feb 2023 09:30:57 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y+5oUVso8T0MYaOa@orsosgc001.jf.intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-3-umesh.nerlige.ramappa@intel.com>
 <871qmqntx1.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <871qmqntx1.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR11CA0047.namprd11.prod.outlook.com
 (2603:10b6:a03:80::24) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ1PR11MB6300:EE_
X-MS-Office365-Filtering-Correlation-Id: 02b737ac-ce3d-4298-7fac-08db104391cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /Nab+72K0TwfMrRgiPDReyOtyCnQALa8NJ8eMAwfBhZTVIkLFvleyhv2uAF2aMmwuPvo++POIWEZUhs1uwAiQJZGHlCE8pmOR3A8T5wARf9aQ8AzBsfOJy3e/Lu35X7WbKVnb2uYt9L/izQuUuMUlZUgwErEAie4mJ68gkb0EkRjj6VvGG8wJB2VNcyfes6+ylQMFP9LuCuAiegN6pnKzArzbISOfdn5KDhVMXUodPQWx0RaSla1yZr26Gs3InikV7Wr1fBVgEUVehWC9dpu3nV62YG45I+04rt5mSmaywriQEVDvFIaasH9f1N1CWcWODtMGVgLf1lOaIpwKgH8EjkxLretcm1ttsVIqvdlfZ84Vtr5CB+h37o0/J/fuf0UORkejd8n7zfK+PLCCWZWFrvdLfbdB6Lud7evWuggMZ+De43dc5rq5JKW8HdGFZn8CT8ZMQ8P1plZ1Me1OcIcYntTzCq6BoOWsDD+mYQW2Ns2IfpvX5ULESExFo4xrq0aWYOvHvhPiHdL7pS2G9yhFMOSRcOdC8NU33iqncA1PpwJJtIN3qfC9ueS0nx3coh4Zfdsrd0oX1JjoWpDYbwHFV9nQCOeXeHxtqvIXy66p5CfK1EFm3RqcaFEF0arW7gk+aCkeruDCkbe4bwbpkQGY1k7if1u2v65VLcb/u4fcg6wLlBEpFDIY7/bTlkwkwgh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(346002)(366004)(39860400002)(136003)(451199018)(2906002)(26005)(83380400001)(186003)(6512007)(86362001)(8936002)(38100700002)(6636002)(6862004)(82960400001)(66946007)(8676002)(66556008)(66476007)(316002)(4326008)(478600001)(41300700001)(6666004)(6506007)(5660300002)(6486002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTZFRUVnL1lQL1JsdFQ2bVV3dUR6YmVRM2JUdDVCQmtTSld4WWR6d1BVRFRN?=
 =?utf-8?B?UzdQTFV0QnplSHZ6MG1IQWNtaFg2elhYalpZYjRQRm42N3VrOFV6b29mSlhy?=
 =?utf-8?B?T2ZPbWkwblBOVjZLTEY4bGllNjZpYTBLT2V5TUdpeWdZTnlvSnp6d3hiVFA5?=
 =?utf-8?B?cUU5Q0pGcnpISFJPR0xoRXNkMllheS93Ri9jQzFOUHdidWF4WW5oeStFTkYx?=
 =?utf-8?B?elRNVlhqWENqRm45R3d5djgvL29NZjN3eU43WWpyeHc1SE1VaThXc1dsR2U0?=
 =?utf-8?B?dDgzK2ZVRWNWZU41Y2VHZ3VBY29xRU52dWtKcmd4eEpmOGdXc3hXRzZQcXgz?=
 =?utf-8?B?RTBPRDlDeDEzWXhBcFIrYnpyc1RDRGNtTUxBeGVHMFV6YXZNRkV0bTFpMlcv?=
 =?utf-8?B?ZUo2N0lIdDRFekFTOVUrL2hyeDlvZ05QeGtVM3JMQjdVY3dmWGprUFJ4dGpQ?=
 =?utf-8?B?UEV3ZGJUbk9rTGdyVldJKzBnbm9xam1kQlJCUWw4YzBUWUFMbFl2Wm9tbnJF?=
 =?utf-8?B?alJLVzBWTWc1cDNVSkVKakJZUzc2N2dzL1R3Ym5uRDNJTHFLRytTdlNuRWVZ?=
 =?utf-8?B?VFk2V1dTQXY0NDhJdkp5c3ZDWlJOUzZRYjQ0elBlQ0dvTG90THVIZ1ZxNlVm?=
 =?utf-8?B?eHVQRG83UzcwaWpMbmY0NUJQd3h5VnkzejE0SzRldVpiam9RQzRTWHpZSlFJ?=
 =?utf-8?B?UCtveFNkcWN2dnprRklMYytZSjhtNXZ6K2ZjcVlqU2tDc2lWOENnK3VqQTZJ?=
 =?utf-8?B?aVErRVpEaU9JS0hSaTA5c0R2TVRpcUVUMHhKOGRNcGwwWHB5Wi9pb0dldE9N?=
 =?utf-8?B?SFg5NnpnQnZzbDhlQUZoRHpqMXlvT1NtWHY1RVluVHFhcHNQVldvQzk4SUVC?=
 =?utf-8?B?QUoxeE9WU2xrWklBejRJV2d4Qmc2bjhMaDlrcFp0VFR6Mmk3Rnd1cXdrUDRL?=
 =?utf-8?B?OVo4UjNNeGZidHJTWUJUT0h5Zk53NUpvT2tzZGQ1K1lZQURMSDFIVENla0Nv?=
 =?utf-8?B?cnFXL0l5OXNZY2lKUktadTN4RkUrNFR2UjZodmkwekZMSUxxTzRQbHM3cU5j?=
 =?utf-8?B?c0Zhd1BocnZibnBFejIrWUVxTzJhMDRzb3dWb1p3VlUzRFFtb0hWdWo4eVJr?=
 =?utf-8?B?T2RaMEpKNmUzTG9HaWJVSTFGMmVoU1RDNE1Qb0YrRHRDMUF3ZVJtcEhUNGlW?=
 =?utf-8?B?dFhJYWY0UzZsVTgxLzNzeWhMQVY4TmtjdDB5U0t2SEFSTW03NUlSOGF6Ni8z?=
 =?utf-8?B?STd2MzA0ZHM2T2hZYlAyS2EvNWZpVzlOeU44RWVSYjdLbEVxUlMvK1ZvR3J3?=
 =?utf-8?B?anM3UFUzVkk3NVAxOTdiYW56VzJXamNQUHRhcFZHaUJDNmpsQkMxaGt6Uyt4?=
 =?utf-8?B?Q1o5dWJLODBUejk0NWFrZTlqdG03bFJTNmRzTUNQaWM0Vit1WW16bUFHekxx?=
 =?utf-8?B?aFpjQXFrRG15TndZSExnUEFVcldzK2ZWQ01QLzJtblpZbm9HNzl5aHN0dHl2?=
 =?utf-8?B?Q2hiTXpENEVzNGl0UWtuMGVPTUxLQVN4RUJJOTVYWkFwaGVSQWlLczdjZmNX?=
 =?utf-8?B?U3R1SDkxcG9NR2Q2SmlnTHdFRmN4Rjk5UmFJNkxrSXZ1TjkzbjB1VW56Z2pX?=
 =?utf-8?B?ZW01VkxSa0NNdnNHRm9FSGJFVnlYNFJVa3UzZ0J2U09mUmJROGZ1c0s2RlA2?=
 =?utf-8?B?L1FROTk0Qkh6OUkyOWY1eVpRcmR3S3dVZEVjcFFSTVJQQ2M3WHlOOHV3eDNw?=
 =?utf-8?B?cDc5bWgzaWZxdTNiWVBSdVl1bjdLQkROUVVzRTZDS203OUk4QnhWSGxxNVB5?=
 =?utf-8?B?UXBuWTZSRVdRTzl5TlNIWUkydkhORWd5ZTFyMmxWK0cyVC9zLzBGQi9HMGJU?=
 =?utf-8?B?Wm5yYWx2Q2ZWc0RFWHl5ekRxdUM5RmIvTHpNUkRabTYzVUlVVktIdVoyMTN1?=
 =?utf-8?B?eHlZaDBGMHVqQ2NQUVJmd09oL2tPak9JM1BTL2pKVzlTV2xacFVwSGtCcGY4?=
 =?utf-8?B?b0VUcElhK0dYSkZKSEN1dHpUUm41N2l0c3dNNnBidTNvUzFLUklEa002Umd0?=
 =?utf-8?B?UEc0eGk4UTBCU0trRFNOVUYyUTc4c0hvdEdmbU9Td0I3dHh1bmRzZFNGOUty?=
 =?utf-8?B?WGFBVkYvSWxaRDd6TVZmNjN2RjJoSk11VWNjV3NRSTdTSVR6dFlSZXVRMGZ3?=
 =?utf-8?Q?qjm3DsaVb/jEC7sN6oN4bpQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02b737ac-ce3d-4298-7fac-08db104391cb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 17:30:59.9818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8IhwaAWc4ouRFnqhhw4RbnbcGD+dv+dBiJ1DnXSYPd/LLYq2+UPcXDEXXRjPrOCNoll3HbC5qZArYR8bNUy3mIWNBbY8ccuAJZDh1hi+eVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6300
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/perf: Add helper to check
 supported OA engines
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 15, 2023 at 07:58:02PM -0800, Dixit, Ashutosh wrote:
>On Tue, 14 Feb 2023 16:54:12 -0800, Umesh Nerlige Ramappa wrote:
>>
>> Add helper to check for supported OA engines.
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 19 ++++++++++++++++---
>>  1 file changed, 16 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 393a0da8b7c8..a879ae4bf8d7 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -1570,6 +1570,19 @@ free_noa_wait(struct i915_perf_stream *stream)
>>	i915_vma_unpin_and_release(&stream->noa_wait, 0);
>>  }
>>
>> +static bool engine_supports_oa(const struct intel_engine_cs *engine)
>> +{
>> +	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
>> +
>> +	if (intel_engine_is_virtual(engine))
>> +		return false;
>
>Let's move this check to a different (or a separate) patch (with
>explanation about OA and virtual engines in case of separate patch). It is
>strange to see this check in this patch since previously we have only
>supported render (I think there is only a single render engine so no
>virtual render engines are possible, correct?).

will do.

>
>With the changes above this is:
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
>Is there anything intrinsically wrong with virtual engines that we cannot
>get OA data for them? Since we get OA data from an OA unit not engines so
>wondering why this restriction. So if I have a virtual engine consisting of
>two VDBOX engines attached to a single OAM unit we cannot get OA data for
>this virtual engine?
>
>Or is just that we haven't handled such cases? In that case it is fine to
>disallow virtual engines till we can support them. Sorry just trying to
>understand the restriction.

iirc, we cannot modify the context image for the virtual engine.  
Something to do with lrc state for such engines. Also OA supports only a 
concept of one engine instance passed to it, so a virtual engine does 
not fit the interface definition.

Thanks,
Umesh
