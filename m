Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA47D70CD83
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 00:09:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A02210E39D;
	Mon, 22 May 2023 22:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 054D710E39D
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 22:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684793339; x=1716329339;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Lf2bVtwqnixyri65cTdm6aEehcvEaAuhCtC+JXzxXxw=;
 b=KJjxk7NBwn5G1cIdvP7cqNMcltNu+q2UF1yb7t6xxMmZkzzs8nQdEx0j
 oPfSPHYVjD2/HwGKnx49zstiRf7aVb5q0Fq9c1/qzwkiMWVmZafOQHSSt
 dudo3dwLfWNDPOYNyaOgd4ohoInqNG7PVppCNR+FrFF657S2i9I2WF6qY
 vUa8CbHMY1WEYxON0CwE1XKjmr/gFESzPPqP7i83JhkUdXPU9AbC+iUSE
 S7tFtdnpV4E7F4r0GI5RPUeB4is70C3Y30lLc7X/EaqPFbwMdomC+gUdP
 4Plnzi6DUQ/lVs+bnf3vSxVdP2qdogG59cf+pgODlDLzPvWCx+yhp5VvL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="350566869"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="350566869"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 15:08:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="681120660"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="681120660"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 22 May 2023 15:08:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 15:08:58 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 15:08:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 15:08:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 15:08:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C1nvRAHI1OmFxCIWbWNYGX2z1xAASXkjIj5sVxqBXv6RLy+tIa69DBy62AVEkXz+M7roXf0H4RpX2dSazRZkEAtazJQ6u4eK8j4GgF3/0EQmpO+S4lU1huvO/NM9osNzuheEQ06KGKgTQmfEl7/kOTaRvvoE8cAdYavhz/X0eF7dABEZVS47Kbo0phxT0RXqbH2bogSCGksVTfAhQcC8iwgOmG5F0NZM1jvLYbFrs3f+u32pHFpCHH5o1uDmqF8PpXN9+f6GPHdDepVGpmPJ294K8DnsRPkR0xXi/r9z4oPjbp7Yrdrfh8STe2szi61St9uPTjrDtq62DSQaAu/XVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/I8dUim334NJyZCJpqiDU8qLJEOKj8X7aZTAgzc4V6w=;
 b=gQCm/dBXuvQTu1ApQSKL9EJ7R8K70cJlwgvH/rmLKqEkjcqrQP99HR2X+BlEupgfO7H6ObxXdDF491A+jsg5WDGwxswvvpRmnhALpA30r2QwioU3/kc1DoJ0kbsghe5yt5WpDAH7CMC1GWy01fBfQOC6+EL2j9ta14IURmvm6D8PG5G1NKMuADbVKwfXKVq2vtpqvL2rR5oBN5PfkkyUDdFugpa3Mu/sLRd7Tpfh6JLrdMu1JBbuz2hJCXC4BrmaGGSaJAn2s2TpOpDRFsQeC4Ld5uXRNIPSxCw+MA/tH2rTR02k2ocGPIfYdg3bNejpFVXxayhx3bE0frxV1JSQ8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA1PR11MB7015.namprd11.prod.outlook.com (2603:10b6:806:2b8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 22:08:55 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281%7]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 22:08:55 +0000
Date: Mon, 22 May 2023 15:08:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZGvn6vTwgEz7I5h/@orsosgc001.jf.intel.com>
References: <20230519225642.134778-1-umesh.nerlige.ramappa@intel.com>
 <87mt1wqfsz.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87mt1wqfsz.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0P220CA0029.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::13) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA1PR11MB7015:EE_
X-MS-Office365-Filtering-Correlation-Id: 66c98cf4-3ef1-4767-1a7f-08db5b1121e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6P5C9hko6SaDDfzGRzoFEsnZv5u9/PmozIeDtRFirByNvFIca/2SbziEE4b0hiTbLBuTCW8gry7uo6H9c+2JNw0GZcbqgb/P0BcutWFLjAZ0xHBLlbnT7nvWvltLZht2eUCYl1h0HzMn4q6FEyW2wmkp8EhneT1HCKT72pkQLWpaxeJTjadCohLUOUB//nnwTeXkKjHfXwYlSwoHZwcS+pD/ZzAeMKrhYaIIcocCSZD/tiVFTTzYea0OiQ7cFnWzTYY4wjWV3C+I/lUS+At9W43QQKj2SxCwmhHC4vLhZhfF9IopUMggYM06xV1/iGItUcoFs4rxizqVMzZdInXsXn6wXGKhW51aZvmLpKIEvNoOzcpu7yskC4xjfm5AzQKJVx9SUGbwsUHjAB1dOvgJOm3K8xOqdD0noIXGBWxjGc2WYD2xfSMPbhECGbZBdzbwwemlgAgswmzFRO3nnrDgzd4gF1qqhRQNZfFMMwz+a8wIft6kmcUihMozOjNiSJqw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(346002)(376002)(39860400002)(396003)(451199021)(86362001)(6636002)(4326008)(66556008)(66476007)(316002)(2906002)(5660300002)(478600001)(41300700001)(66946007)(8936002)(6862004)(8676002)(966005)(6486002)(82960400001)(83380400001)(6666004)(38100700002)(6506007)(6512007)(26005)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWhnblhkdE9oVTAvWlJlYmlLWkdObkNTMTNmOHN4N1hianRCTXFQNVVXMERN?=
 =?utf-8?B?QlVDd1ZDRW9LdTZiUHczT2VRZStEU01tOEhYSHVkN3kwZXhKbzZYZnBSYjFz?=
 =?utf-8?B?a1NOTGFNeC9OcUdkZGlLUk5rMHRweTZiOWhwY0RmM3BORU4rQjgrNFFoQmkv?=
 =?utf-8?B?TG8wVndzTVZJMmRaQytwRlpJSGpSN1c5c0tDN2pBQTlrbjdZb2RDNjJERlZ3?=
 =?utf-8?B?VG02SHhQbXErekFWTzZVN3VBWWE5U2hVS0VhM1VsSUJmc2I0ZVUwYVZkZW1T?=
 =?utf-8?B?U2p2RFFkYzdJMkVNMFNZVDZ2Q1NTV2IzYVNxbWQyNE5GY0Z6a1BHZHhxdVls?=
 =?utf-8?B?d1E2czgyRk1sbDFEMktrV1A5RjQvVFhKNGxMVnFET1JtVG1mN29CQXFCTC9P?=
 =?utf-8?B?M245N1l5ZjByWVNRNFkzMGo1emRUS1poSzBzalV4a3BNU0RaNmhMMVNwZU1X?=
 =?utf-8?B?S21nWjYzNVpGRkxpL1FwdktheCtCcURyT2h0Sm5ZeXpvZTNvZ09NMTJCNzc1?=
 =?utf-8?B?Z2hYV3ZhRHF3eDFLclQyWDI1UXJKQmNUMWZhQ01IN1pqZXcyekhBZGJiMmdD?=
 =?utf-8?B?RUFNdEpQRng2Q21CdHNZQXN2cmRDUlM0WCtNYnhOUXlGRWZGUW9xSlRYT3o0?=
 =?utf-8?B?U2U5dzBnSjJqMmxUSWJBNlloR1JqODEwOWRydDRGZFhMck9OSjBYUGg5TjlU?=
 =?utf-8?B?M3hkVDhoOS9qVElYNWFYRzJ5UVlxd0s2WU03TDdHSHltMmdNM2s0YjZDa0FK?=
 =?utf-8?B?L1dNVWo0elNLR3k4RVphN0xYQ29MUEtRR015N3p5UHdEVlhrYXBMajNEaEtW?=
 =?utf-8?B?dVBWSWI5ZFkyajdXZGMxNmpTK0psYStDblJjYWhZTmhCamxBRDlBbXZaRFg4?=
 =?utf-8?B?VzArT2dDZ0d3SmpCKzFFNUlnR0NKVEZNMjd4WVNVTUxTanJLWWxuN09TOHNK?=
 =?utf-8?B?WEN6UTl3VU9vdkdXL2owZDM3SzVXcWpDT3pqaDBoTk5vcXFqQ0IwZ25ydWNv?=
 =?utf-8?B?YUhVSXQ0ZDU2NjhOSHdmK2VhZEtXOURZeGsyQ1p6N0pCQUVlck5Selpiekhq?=
 =?utf-8?B?bXpGS3QxNXMvRWpsMEtYZ3d6bmZzcWMzdWRkVzhkVmt3N0llRm5td1FZdjVK?=
 =?utf-8?B?Zlp3UVZIYU5ESUVqb3I4NzlNUjUwN29BRlRQdWozUm43bFY0d3I0ajRVVFRR?=
 =?utf-8?B?QllrWCtUaGVVRGJQNXdMa3BTUlhJaTN3cldwLzQwTGFGNEtCTVo2T3I2YUt6?=
 =?utf-8?B?QnRjeU0zNjlEc09NNnFZQTVNUUcxeVFrYnBWOGEvbmdXcDdqRytmL1dkcjYx?=
 =?utf-8?B?Q3hXS0diYUMzb1VjdThkdlNNMTh5QUI4aGJ3MnJOMytYZEZ1M0JVczVQNENi?=
 =?utf-8?B?aFRGT0xvY3QwdFgzb0E2VDUrcWp1UTJaNmhjaTRRYXhDR0dCNVhnMmhiS3Jq?=
 =?utf-8?B?YXoxdTVFN00wSCtCTDNpYVJ5bDRkQW5sa0JoRzY5dG4xMXVKVXVYMUdLWUFB?=
 =?utf-8?B?b05KZHpMSVF2UTNxSWJ1dVFJK0dCR2N0RkdNYTh6VTEyY1NMUlpVQkxTTTls?=
 =?utf-8?B?Rko4NHRkcmpyQWtXSkNSVVR3TG5MRW5SbHhEM2Z5czRjZ2dwRGs1TzF3L1Bq?=
 =?utf-8?B?VnpvRVduaTRKek5QOVNwbzBKR0VHTkZUT1dYUDlXT1BYckFiYzBxbGFiUWxE?=
 =?utf-8?B?c0VENkJyVGR2cks2WksydWRXQmRSL3BBVUdnWUJFajdoQmdtMm5ZRFFYaDlW?=
 =?utf-8?B?R3k3di83VTQ1ak9sbjZJTFhDT2V1SVR0YzJDU3E0cEtMekdlRm5EeGs2NGsy?=
 =?utf-8?B?R09iSGZta2dCZS95akhuWEtxQnBFOWxKZ1Jqa25RQlcwemRBRnV1TWM4Y1BC?=
 =?utf-8?B?NnQ1eHY5bldSQkg0bHlvaFZNb05wVnFkSFR5L1ZQcWZzdEtzUkovUS9sVUpj?=
 =?utf-8?B?aVU3bnRnWGpLT2FONGVHbDVIb01iUzFhQVFYWEd0YWxwRnVvaGRqMFVibDlP?=
 =?utf-8?B?SDdnQTJjM3h4MFpXaDBJQTgybys5TWVuMGVmbncyWHZRZVFNZmJWZytvdTJp?=
 =?utf-8?B?b0d6ZUZycDdxcmcvOThCU3dTZkpQZWNQMlk3cHBHS1J1WHlPbzB3bDZTbHJU?=
 =?utf-8?B?aktVa05qdTByNE9tcWt0SCtIUG5IUmNvZlhnOCtBeFZyeUpZeHl1L2FseVhG?=
 =?utf-8?Q?oyYmr0Em3rv/XbQKJl8Quks=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66c98cf4-3ef1-4767-1a7f-08db5b1121e3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 22:08:54.9146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KT9tsaegIR3OcAvIFXtxhZp4RwDjx2RjXMM83r/Kd98eLJIu2IFjNfTsRuobA61vBgh/a+61LlAQ8w2CHJA6iWmFANdEv2eu5O/SpBgxDMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7015
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/perf: Avoid reading OA reports before
 they land
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

On Mon, May 22, 2023 at 01:20:12PM -0700, Dixit, Ashutosh wrote:
>On Fri, 19 May 2023 15:56:42 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> On DG2, capturing OA reports while running heavy render workloads
>> sometimes results in invalid OA reports where 64-byte chunks inside
>> reports have stale values. Under memory pressure, high OA sampling rates
>> (13.3 us) and heavy render workload, occassionally, the OA HW TAIL
>> pointer does not progress as fast as the sampling rate. When these
>> glitches occur, the TAIL pointer takes approx. 200us to progress.  While
>> this is expected behavior from the HW perspective, invalid reports are
>> not expected.
>>
>> In oa_buffer_check_unlocked(), when we execute the if condition, we are
>> updating the oa_buffer.tail to the aging tail and then setting pollin
>> based on this tail value, however, we do not have a chance to rewind and
>> validate the reports prior to setting pollin. The validation happens
>> in a subsequent call to oa_buffer_check_unlocked(). If a read occurs
>> before this validation, then we end up reading reports up until this
>> oa_buffer.tail value which includes invalid reports. Though found on
>> DG2, this affects all platforms.
>>
>> Set the pollin only in the else condition in oa_buffer_check_unlocked.
>>
>> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7484
>> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7757
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 19d5652300ee..61536e3c4ac9 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -545,7 +545,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>>	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
>>	int report_size = stream->oa_buffer.format->size;
>>	unsigned long flags;
>> -	bool pollin;
>> +	bool pollin = false;
>>	u32 hw_tail;
>>	u64 now;
>>	u32 partial_report_size;
>> @@ -620,10 +620,10 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>>		stream->oa_buffer.tail = gtt_offset + tail;
>>		stream->oa_buffer.aging_tail = gtt_offset + hw_tail;
>>		stream->oa_buffer.aging_timestamp = now;
>> -	}
>>
>> -	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
>> -			  stream->oa_buffer.head - gtt_offset) >= report_size;
>> +		pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
>> +				  stream->oa_buffer.head - gtt_offset) >= report_size;
>> +	}
>
>The issue has been correctly identified above. But seems that the real
>cause for the issue is not that pollin statement above is misplaced but
>that updating the tail via aging is unreliable (at least with the present
>timeout as you mention above). Also, it is not clear why we have tail aging
>at all, since it seems we can detect when reports land (by checking
>report_id and timestamp). So rather than move the pollin into the else, we
>should just eliminate the if () part. And if we are eliminating the if ()
>we can just eliminate the concept of tail aging from the code (and
>comments) and rely solely on explicit detection of reports landing.

I thought so too, it would be much simpler code. Looks like Lionel 
agrees with removing this code as well. 

I do have a couple concerns though.

- In the blocking case, i915_perf_read() path waits on a queue with the
condition being oa_buffer_check_unlocked(). If sampling rate is high, 
oa_buffer_check_unlocked will almost always return true. If we remove 
the if block, we may run the rewind logic too often to detect reports 
that landed. The aging logic is just giving a 100us buffer to avoid 
repeated checks here if tail hasn't moved. (although tbh, 100 us is very 
small).

- The other concern - by dropping all this aging logic, are we changing 
   underlying behavior?

- Is there a significant ROI on current patch vs. dropping all the aging 
   logic?

>
>Separately, there seems to be another related bug in the code, I have sent
>a patch for that here:
>
>https://patchwork.freedesktop.org/series/118151/

That's a valid new issue and different from this one, but related to the 
rewind logic. lgtm.

Thanks,
Umesh
>
>Thanks.
>--
>Ashutosh
