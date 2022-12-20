Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A54D651F82
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 12:13:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62EAA10E3A7;
	Tue, 20 Dec 2022 11:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD6F10E3A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 11:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671534769; x=1703070769;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+j/IXLWM+nofZFEONakoA4sjpfP3f8dxf7iTmwpbKUE=;
 b=kU57df1qenIWdRk3WPjR9cxZwfNFRN7CQ2ztl0vOGsH1j00mPK8e6bPS
 WKxy+BRkvb+dhL59mLRsHs6DY/6CDZFSwoSDOTrSI9p8HAskb3uDv3iu2
 gnJLoMSa7OGJaKbbN+EWhK4PMIK4uJI3IO1V3ngVh9iJUXqYeeit2Y5Mm
 TTk58tTnNuA+dZUcX0ZxaHvZ0eMOJjIdUhnbL3TTZEPDzKVULf1kgOHMV
 NoXsjrnX1oyX+2yok4Jl/otUbb6wtfdae0qeGiih92dbTakyuQlXon+9+
 CX3p9a5PuOVwTnmOPltg9fCJK8DycHLWmUzMEkp9h7gJEOIu4F5wXtxS7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="303013150"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="303013150"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 03:12:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="714384248"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="714384248"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 20 Dec 2022 03:12:45 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 03:12:45 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 03:12:45 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 20 Dec 2022 03:12:45 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 20 Dec 2022 03:12:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eBpShYVdcu56avSxf6VqJnXnWz3V9oNkIclR2li7LEyr0HdVCE+LpbCLd6kfUfV2MSbbxuI7xuJofvvRIV9p8g0lkcRxWT506emeyOV1GBZMa9QfTu+Y0KOeLsESgMikShpYPC6nL6yL12ElMm4ONnDstK+T1YBFwz8wYAbw3ZcwadlNwJupbU7ipWrQAebyGPftYgOrJGoGAEdmug4MLdtGC7UyIc3b7aNTHnwwLnlkI1+RILMc12RbYaMxoPkfQymsTViJi3U4iY+ZrzvMljTL1UOF5k97MdfdM+ScymmKZyctnWyaRL2JcU8lZlQrqbGKWKPUkfEU7jiOOJQzmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gzQ3fU3baxgOaHwbQFu3MVhZ8ojt4hHtYApucXxoUWc=;
 b=li5nl4cxLvAaSckBhG7TflPxIsG5Dz58PWkAUuBlC+rL12ZXD6jGIU9DIvtb84ysQ552jZ12LWeXySR+RGMsOsPql4Yu3yjhwgJsgAWr3PDIhIKwtLl5GMhes0J4XkwZVxV8d5dN6l9lqrD6ggUAo1rkbrQDc+p3PwxoybLWv9mFt+V0qlLJ5/IbYa19M806Kh32lNxdlp0aYbyumurVVF9ACYchcBlWSRfEp+cXEAfIPLhhlJMuZDtbVhG8B4A9pxoELNYaNZqp1R2h5RdEz9H/2w6QLqde6iOiw7D3wj13tBzNUMceDqtbgTh/X2PQCYYfAfvojGnaARxYl8VFOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ1PR11MB6227.namprd11.prod.outlook.com (2603:10b6:a03:45a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 11:12:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e%6]) with mapi id 15.20.5924.016; Tue, 20 Dec 2022
 11:12:43 +0000
Message-ID: <fa41b2aa-94f8-e400-0a05-9bf08cf83d83@intel.com>
Date: Tue, 20 Dec 2022 16:42:35 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221220034512.2898859-1-ankit.k.nautiyal@intel.com>
 <875ye64ffj.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <875ye64ffj.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ1PR11MB6227:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fdc7233-e720-41a0-2343-08dae27b1d73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LT9l1U3lUj4TMwHpHHvHCj9Ib/GudDAOXOenj04f4MMrPSCHZtgifXfRdYH7bhv1cIYfVocEZUMI6jFsAAUF+bIj0bkNjDi93TDEHjtF4F3pBnkLMM9Cek6Q9MGYUNiyF4mL+3aX03IwzoAIdkcuTuQDD7NqSwPQv6/93EcLB62y2ZWIXcS1eCyqmiIUG8nW4Inw+f3kTtaHEVtlQb0DRhuQ7aDv2BuM5YRt6z11c8kMZEkRb2kk8Hn+sMKuWZCNmAjiV3wiPg+ZqvkRDwpnCxAGcx9FFeeLU13kFOqjX+T1/t8TcjAw36fy6Fxs5ETeDm1Y4WntkQa8mcgAuWCkznP9QpmI8MUb5YmgtzMk9UVxJP2e04JSzobHaI5lQG3uUgioAFQu/2dcBEkDDAoZapyra5cvhvqRJy1wco+8mhbf4LP+GAOv8QVX5SlLQ/PddyVgQo340vMlj9tGs+tgSeftCHE5hteEtf7dwVDbKlmBLMfHOyBHnHBgk5O5GlPKPDWVJm4zeqJ75gGjlp6WXRWa4GuGeOuHNCYCgU8ou+byN03jCLs2QO2FySw9m372lFVbWpds3HyJIpCCq5fxDWUPKhrorLO/z6bYH+78CGukOB/vHOJvLRQpr4qTnIfBhlAR6QU48yrXvloBbbAWHKmaA9mhipetOlBeyU2HJ8JkBH+N7RwrF4k3shuwEp56NFMwvEhk/ZLT1TMXKvY89CC9pIc3uf3cOTJQXc7b5CM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(346002)(39860400002)(376002)(136003)(451199015)(8936002)(31686004)(6512007)(5660300002)(83380400001)(55236004)(53546011)(66556008)(66476007)(6506007)(8676002)(41300700001)(66946007)(86362001)(2906002)(2616005)(38100700002)(82960400001)(186003)(26005)(6486002)(36756003)(478600001)(6666004)(31696002)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHI3cWplQUVCejYvUGV1NS83SjhTcGNQbEVLQU9zMmcvTkYrMElWb1huUFZz?=
 =?utf-8?B?RUo4QzF1UjdwTmkwcXVUazVFNCtha2xGYVlvVCtydWRrRkJxSmlLclJmV0RP?=
 =?utf-8?B?aVR5UUl2YWs0cGZBZEZiU2ZDbllSQndyN25wT3dqQ0FyKyswUC8rTmllR2V6?=
 =?utf-8?B?cjhFTjh3Y3VrLzNVTS9TZ3VTN1BmTTVkNlFlcG9iSlZTMFljNG9tZGg1S1ky?=
 =?utf-8?B?NE1uWUZPV3BUNHlSVVRzQ2x2OWx2a2g0Nlg0SmpaZmtjSlNXSUN6eFhWd05p?=
 =?utf-8?B?eWRHZS9RTHFMdTR3N2ZwUmJQQUIyMFZOeTRXOEFqZWFWNWUrU1RxNTZ1Q0dp?=
 =?utf-8?B?SStEYlIrVTNJZmJXc2hjWXRZZ3h3RVBUNjlZZHoyeGhzZWh0RkhVZFBSalFL?=
 =?utf-8?B?b0dzbURabnZqaVNCNGZWWlBpVVJWblpuUnhoOU9IQXkySFNhbkJuTVhLZEkr?=
 =?utf-8?B?VzRWZC9hZUhJSnZ0WVFWL0g1WDN1TkVGT0hOdFQ1QVVJZENrbXM3ejhQZjJV?=
 =?utf-8?B?Y3ROR3BsNzUxZUN4SFNCUSsrei8vQzBhejJyYnFoZHJoYjNxSStRUEVCVitp?=
 =?utf-8?B?T0E1aEZ3VlpFYXFmWWVOeUlUaGpiMDJIcHNMR2tFNEV2cTZoaEV0OTlCM00v?=
 =?utf-8?B?T3RoM0lTbndIbm1tbnROZUp3T2E3RExabTBGYzI0a3d4Z1U3WlZPb2lYWWpS?=
 =?utf-8?B?TXcrU2U2bk5BamRESC8vazNLTE9tS29ZN0xtZmRUSk1vY0tzaXZaOXNoWlFv?=
 =?utf-8?B?RWhYZGFsZFVUNFZjNnh4ckhDUUlPelBGb3ZpOWZ5VGtmdUZjRHcwM2w5MEho?=
 =?utf-8?B?eDNYNGRiekp4dytjNStoZVhqcnFscmo0R2t0cTdIZStkRHhtWmxxNW5EdUdp?=
 =?utf-8?B?NWw3Q05Xb1RUeVpER0gzNXpMNldCNVB3c2VUV0dhVHl1VWp4NEVNMmlsdkJu?=
 =?utf-8?B?ditTWm1lWTRQVmh1QjZJKzhiVnF3cTFBRE1STDROZG1zblJ6THJSL3hYRU9M?=
 =?utf-8?B?K0VCR0JCV3V4b01GWFFJTCtVSkNGT0x3YnVNV2VnMTdndDJFUzRtaGh2MFB5?=
 =?utf-8?B?b01NT1Z1ZWMxZzM4NHpOVURjUGVuRWtUN0dTV2JOVjNtWnB2N2pDaUZiUzZY?=
 =?utf-8?B?Zjh0dzRVbjVpN0c5MmZlZUpRQzRkT05XZGZJZmYxZUZ1OFFGdmxZNWlkK2FB?=
 =?utf-8?B?N0dBVnRaWGpwYlF6V1NBL09WbkQ0TUlPdjlRYnJmL00rbWVYT2dRK0lFa1dx?=
 =?utf-8?B?SlRnVlBrU2VSU3FCdFBCWjBvUXVoRExqWFREWGExZnNnUXhWdCtIUVpCVm8z?=
 =?utf-8?B?dmVpWkZheDZxcHY2amZDT1JjeFdDV2xBQVJROUF6TjNyOWhGSVBZNEVVRkhk?=
 =?utf-8?B?K3RPU3hyQmI1ZkJDZDRzSjFqbTM1YU9td2ViYzJ3Z2ZTQVREdGVjaGlvWkZk?=
 =?utf-8?B?M2pteko5aHlyeHpiT1Y4WnRteHhMYUdtT1JyQmhNZnlXZ0c3WXdEK0lsZVRu?=
 =?utf-8?B?TzBIMUtNMnIvNW9PY2l2MHdMTmZLcXl2WUhmTmFVUldJSXVpeGxQWGIzZ2tT?=
 =?utf-8?B?YkYwNEt4bjVnOEsrNkVmU3RCendPUlpkVzBRWmMzRSt4Q1c0ekgveHQzRUV4?=
 =?utf-8?B?N2w1MTVYSEExNU92NFZZWWZHcjNDZWFWaUV5b2VKempqdmtoQ05vaWsvLzk3?=
 =?utf-8?B?N1lHR2dHMWxOQkI2ZnRGditYVXpBT0psUXBHbFF5N3RkSmo1SzdVL250MWdN?=
 =?utf-8?B?N2JyT0NTRXpaSzRtL1JNS0h1UDdtb29KSWdWa1htNTVjc3hROE9FektDZFRD?=
 =?utf-8?B?U29RaVEwWWpPSzgzbDN5SDZKeEIxWlZmY2UvRyt3RWdiVHYvL3NsYkFwUHhi?=
 =?utf-8?B?MjZhcE9jRFBXUkNJa0FtMmxOU2QyRVp5c1d2Um12TGZlSlFWMjJKa2t5dFhE?=
 =?utf-8?B?ZjZEQ0d5TnRBU1BRK1Y1Y0dkM29NZXBtNTZqVWhKMldkVENvaUJmYjlTYms4?=
 =?utf-8?B?N3lYbmQ5RjU3emdQNjh4K0tDUjJuOUhnVnZXQythQ2lOOVQ5UXlqNVZNblhU?=
 =?utf-8?B?TDh5QUV3b2J4ZDlMRFhHVFZKSFhiVExZdUJmS05YYVYxWElheFBtVHRodFhT?=
 =?utf-8?B?ZXE2Rnh4c0plUVROMlRDeStwRW1kaGZEMEVpMHlFYk1nMTBLMDVDU3NsV0or?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fdc7233-e720-41a0-2343-08dae27b1d73
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2022 11:12:43.2723 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Q6NLWljCq+DDMkz8pWEwy2qppvLNzWlaMxlrru8l3qHobuBj5rWWiLbbnGIk/IkPJXV+o8XsD3vIIHQvCPWj77PRfufS9w5QLC2PippLeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6227
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
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


On 12/20/2022 2:31 PM, Jani Nikula wrote:
> On Tue, 20 Dec 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> There are cases, where devices have an HDMI1.4 retimer, and TMDS clock rate
>> is capped to 340MHz via VBT. In such cases scrambling might be supported
>> by the platform and an HDMI2.0 sink for lower TMDS rates, but not
>> supported by the retimer, causing blankouts.
>>
>> So avoid enabling scrambling, if the TMDS clock is capped to <= 340MHz.
>>
>> v2: Added comment, documenting the rationale to check for TMDS clock,
>> before going for scrambling. (Arun)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 21 ++++++++++++++++++++-
>>   1 file changed, 20 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index efa2da080f62..7603426af9a0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2244,6 +2244,25 @@ static bool intel_hdmi_is_cloned(const struct intel_crtc_state *crtc_state)
>>   		!is_power_of_2(crtc_state->uapi.encoder_mask);
>>   }
>>   
>> +static bool source_can_support_scrambling(struct intel_encoder *encoder)
> "source can support scrambling" reads like "if this function returns
> true, source might support scrambing, but also might not, depends on
> something else".
>
> So does this mean "source supports scrambling" or "source can support
> scrambling"? If the latter, as it is now named, what *else* is required
> for source to support scrambling?

Hmm.. the intention is to have a function to check if source supports 
scrambling.

Sink side support is checked by 'scdc->scrambling.supported' so we want 
to have a function that tells us, whether source supports scrambling.

I will modify the function name to : source_supports_scrambling() to 
avoid the confusion.

Thanks & Regards,

Ankit


> BR,
> Jani.
>
>
>
>> +{
>> +	/*
>> +	 * Gen 10+ support HDMI 2.0 : the max tmds clock is 594MHz, and
>> +	 * scrambling is supported.
>> +	 * But there seem to be cases where certain platforms that support
>> +	 * HDMI 2.0, have an HDMI1.4 retimer chip, and the max tmds clock is
>> +	 * capped by VBT to less than 340MHz.
>> +	 *
>> +	 * In such cases when an HDMI2.0 sink is connected, it creates a
>> +	 * problem : the platform and the sink both support scrambling but the
>> +	 * HDMI 1.4 retimer chip doesn't.
>> +	 *
>> +	 * So go for scrambling, based on the max tmds clock taking into account,
>> +	 * restrictions coming from VBT.
>> +	 */
>> +	return intel_hdmi_source_max_tmds_clock(encoder) > 340000;
>> +}
>> +
>>   int intel_hdmi_compute_config(struct intel_encoder *encoder,
>>   			      struct intel_crtc_state *pipe_config,
>>   			      struct drm_connector_state *conn_state)
>> @@ -2301,7 +2320,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>>   
>>   	pipe_config->lane_count = 4;
>>   
>> -	if (scdc->scrambling.supported && DISPLAY_VER(dev_priv) >= 10) {
>> +	if (scdc->scrambling.supported && source_can_support_scrambling(encoder)) {
>>   		if (scdc->scrambling.low_rates)
>>   			pipe_config->hdmi_scrambling = true;
