Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BA55FB887
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 18:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D69DF10E405;
	Tue, 11 Oct 2022 16:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9B5010E405
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 16:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665506965; x=1697042965;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LtTY5fVcNygVvCY3KjqtmHkvW/F09xTGlQKd5ouMKns=;
 b=IQpbo5hmdFsAd9W+cz0VxdZI2b57QDz6jHfGlsT2rXdBPSRnXJS8s3fe
 vL6S6exkMdQRZcmWmoI7fYghaMU3gRL5Ne4czBDGsDwJkKYth8Gb+tzNH
 LFdeeUcpxcwLoM5pMK7a+oDk+n6EwmW0fBeAxWrHnChxhjNhF5+U0Y9pD
 zec+/WorQwfJ4PMLUgJRWtvP0JatKObKaNELn+qb8j6E/PWKcJ6XBq2DF
 5w3AvN46ZWOKtBgBbpeA9d9q166ByrZDD90aIMT+3vTaO6Tw4GFqxdRxP
 TB4EoWz429GCgAs+juKkmE7lfu4CAW2rq7zPbNuTthqKmqe0enjTu2vP9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="284942153"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="284942153"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 09:36:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="715576197"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="715576197"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Oct 2022 09:36:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 09:36:21 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 09:36:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 11 Oct 2022 09:36:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 11 Oct 2022 09:36:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K6TRDuRmhJhXIlZLJ6yW4WE9lgaD3aEG3qimTKgDgJzdq0phuFqVzfKBTKdftIsHbE/71LGMyeRR1JhDzMdAajiAQPBV4I/UHEmIdImjt+MyaLtRzksiRe5mFmDjCetdeAO9p8dBnrm+RucDlaK6y9OlrA/ztDzrTsWA58DLFdnt+uXxMyz9iZyTbuzvqlKvVNbAq8rfRPs2tsedIGSCtvPLlTZP5W1VOP9Eyt1VW+4EZS7A6HNXG7yBCReFpzLlcPOkzkoTaRQ3mddZMz9jdAz5uoJ8gXCLSzYYHqE7utYTFcDqhloXDaBGKKrEw9Am64jnaE18fuJ+V0UqG7XRKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VXBZcepbafRQYWT1Up4KblJLLspcHNlg84UWn85x7yg=;
 b=P4Ti55rOnRbcP8f9ZCl8yPqqIpWcQT49z0xdKHnEWq8nEL6UekENlSVlpOKlxLX5rp2v13naCPJSyZLbkcHHeG9HKltN3Jrnl2FGfhvR6KaNectsysnJtYqDiyOttXVEJArzYwqtKUJ/E/CEsCTka6fcHJnq8JC3RBhPKGL43XCRCrUybnN+77TiloqqHRHHPDepIgTve3O/Yr6w+GGPqskLWlj/TXthZhZ0tPxjYCvcXRg5g7UHaEu9pifjvoIeOpL/WMFgVparVra4EHOHPZHPtfbZ65tHlWAhJNLFd7rz7u38v2AnT4yU2TrTWQ3IZaC8xAwrnXBTg9sEs5ocKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ0PR11MB6791.namprd11.prod.outlook.com (2603:10b6:a03:484::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5709.19; Tue, 11 Oct 2022 16:36:19 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::c072:cd8d:ce60:30cd]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::c072:cd8d:ce60:30cd%3]) with mapi id 15.20.5709.021; Tue, 11 Oct 2022
 16:36:19 +0000
Date: Tue, 11 Oct 2022 09:36:08 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y0WbeIQMzTZeOcjA@unerlige-ril>
References: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
 <20221010181434.513477-5-umesh.nerlige.ramappa@intel.com>
 <87tu4b1adz.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87tu4b1adz.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR07CA0037.namprd07.prod.outlook.com
 (2603:10b6:a03:60::14) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ0PR11MB6791:EE_
X-MS-Office365-Filtering-Correlation-Id: af21a3a7-09dc-4fd6-5bff-08daaba6b98a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xooj/F2F/gchIafVwX+pTIIavHQuUuYfzE0ewGiWmhwD888UMPquilUewj95BfTJ7b1ziLb+pURzuBgdsgtrMg4OM7WZ9Sns7VD9kYyCBYAalEk9x4iFuq6kXlc9w72BEY9qTTLkbYF06ajaeFY+i+tIpLwW1RlIZ8s4ATy3SRse6tSIf9KcRWI/C815dlNggqS70+waYxjeXrVDFsC4o4Fv+0e7iSwWtoyDWhFT5INzotQeFfuVzBXRlrGsnVLB4Xcj7xtFfd7Eqfj7rBjXwJQJLGRniXbo6nt60cqYHQ+EZGALbvcpMJqYwY0scs2UI04fl9o8350IbZ7aH0Ktoaq0ToWSspigngn8zLYJTAd7J+PgW4UQGKkzQJ2ua+c4rspsfjKsoiNQGUOOTfyWyxp/U3gNonSBhoSZaeJv+VZts0dA3EmOaWiwHn1jFdAZOEodaKkZKGz/6WYAq0fl4/+b4JGr30h/RzgexDp4F5rNe+yfKYGW+kqVP2iXk/uyBwNJ4+Pdutabgn7my2lMXRlBMmlKXMdENGl1aQkUNbvSj8+a+uTi7rsn+YSfF3NSR3ZWv3wfROWJNS7h660la+03cyreRIAHPdZSN3r5F9BPPU0gVWcTdmyTeabTOOrkm/txrf9Q5U24Ox8FecYlh0fizpvC3cGkDvHlhoHfJ/3DKVTxw18FtFQEXyp8PWbgFd9TnaJF3S6wjx8QlaSeTw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(366004)(396003)(39860400002)(346002)(376002)(451199015)(5660300002)(4326008)(8676002)(186003)(107886003)(86362001)(6666004)(8936002)(6636002)(9686003)(6512007)(83380400001)(66476007)(26005)(6862004)(316002)(66946007)(66556008)(82960400001)(6506007)(41300700001)(33716001)(2906002)(6486002)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEJibEozcDhiaFdUYXZhYnhrR25BMzVwYnYzSkxLeUJCNzZKckZzbHRwMUl6?=
 =?utf-8?B?a0dVT2tBa1k3UjhMcFVTd3dpWDl4ZXlUQkJvS05OMWFKYnBOTnU0STlrVlQ1?=
 =?utf-8?B?UXdrckEydmRrNzkvb0U5MXBKKzA0Uk9NNWk5N1paeVFCcnhBaDQwUlA3SHZ3?=
 =?utf-8?B?Ylhnb05BaVk3WjhZakdPaU1Dd3I1Z21HSGpybkFRYllrWCtadEdSb0x6dkNL?=
 =?utf-8?B?azNtaVFkOGx4S0xDMWoxMWtPbDVFL2hsY21ValB2bHIwV1QydktTd0xUdUlN?=
 =?utf-8?B?QlpvUVpBQ21IZGw0cFhBRHBQajdMcXdPeEhNSHZhcmRYREpCdDFOWlZ6Mndv?=
 =?utf-8?B?bjhaN291OExWTmlOVFFpS3I5NzVNQ2tiTnpMYVNZMm1HV0tRcU1md3R6Nlpv?=
 =?utf-8?B?YjB1THRlNm1rd1E3b1lPU09TZ1JQQUhZdnZTYnh6OUFid2NWVEVtamc2UXFN?=
 =?utf-8?B?K1ZKL0ZveWtLT1RPWlBqN0h5dnNJN3RSdzBGMk5KSTdiRDVNeDFMSHlTNW4v?=
 =?utf-8?B?YVY1NU54cGM4Z2NDRUhoNVYybWdPU3ppeEZ5TExkc3dRMDZ3bG9RZ1dOV0g1?=
 =?utf-8?B?RDBJdE5KUENhdHpCOVhjREFmV1UrQW81Z3RrWk0xWWowVldJMlMyOWhLYWhX?=
 =?utf-8?B?MlVpWDZxdnAxOVBTVnBSRnZwTlVqOGVwNUx3ZGNHM0ZkZHhXY2NiOFJHZ1hh?=
 =?utf-8?B?SUpTYzNTUkZLS0JYSGxlZ2h6NVE0V1Znak5tYXljam9HQ0FjWGVQak54a0pE?=
 =?utf-8?B?clJ3aFpEM1Zmc3dxeERvbjZPOGV1MExXejE0Y3RYcGUzVTkyVEVxd3pJcEdm?=
 =?utf-8?B?U0tzdkFyd00wNkRLaEZOQjJZcVdSUjZlNlRMSStsRzRIdy9DM2NmcXkwUzNP?=
 =?utf-8?B?NE13T0gySnFyU2dacFdOckJNU0REODFRbTBMN0xTU2dWamI4Q0RhR1VhRXNx?=
 =?utf-8?B?TjA2cjhTSXg5My9UZFZaL0FlUHFTd1RnY01GaVhiRm5mS0NkSDNLMnd6UGp2?=
 =?utf-8?B?TWgwWEp3dmV6Uk9OekRzMGx6T3VQSHZxcHp4Q2NzNnIrTWJUM3k5SlpTODJN?=
 =?utf-8?B?WHoydkxkZ3dQVkZ3T1pZMHRwNWlMVmU2VktJWWhTZDd5WnBrNWVIOXNPelNJ?=
 =?utf-8?B?ZWMwS3Vxb05WN0hXR2dTRVEwend2emNySnRSUWVFQ0VOVXBQRGxvTTAvUit4?=
 =?utf-8?B?SmIwa1pvSFBnaEhWbEkxMEdwUXhjMjk1dVZ4WENoV1EySlozOHRJVWZTYnlD?=
 =?utf-8?B?UmZubGIwcnJnZHVCMkR6aTFBeEtsM2VRNGVlTDZOUVBqV3VsRXc0VnYyVllX?=
 =?utf-8?B?SkQvSlRzWnMrNVE4TXBwdjJUbk1lU3h0dTJhZ3lWRE9WMEhXOGhlcnkxR3li?=
 =?utf-8?B?bEJpTUl5bVRaRkM0NHk2ZitoMlZvM3R1QW83STBXUVNNelYySmdlbThtb0N0?=
 =?utf-8?B?UmZXTzErZnlJY3VuQnFrU3lxaXVGOElTdnU4NENDbi9XaHFJWWNLcUVGd0NE?=
 =?utf-8?B?RmdObVRvNTM3R3BiMXJMRzlEeHNRU2d0aUJtaDR6ajVwc1lhNDg0ZFNyVnlD?=
 =?utf-8?B?K0hGQmxBcUV4Q1JrN0xRTVN3dm16Q2Z1Uy9teTBvS213N0ZXQ1FnZzlOR0ho?=
 =?utf-8?B?UDgweGl4M21UeWJSWmZGQ1JUZlI3dEdVUFVLZnhwRXAzbVA5VzZlUGlyNWRi?=
 =?utf-8?B?VHlNeFB4amRZdWdKR2FTQURRbmlvd2lHNWdRYjByb2hWaE0xL0NmN1ZqRmV1?=
 =?utf-8?B?V0UzcE0rNmxmdTF4bStoWC8xbDZoL2VzN1JTYmZhNVdPYVZkZThzL1dISHBJ?=
 =?utf-8?B?d0JuMmhSRGdGV1piZ1ExclQ0R3RMTk1CMG4rSzNlOHMySzNJME5wNGNWNmxw?=
 =?utf-8?B?cDJBeUNuUzFPRmpBaTB5aFJ0bHRqMUNNTkN0N3VXNkh4VDhIMDB3MnpZOEZu?=
 =?utf-8?B?RTBhRUtMYk5jRUwzVjA3bEtFcWl3Z25VZExGQzRsWFYwZGMybW1OZktLQ0JQ?=
 =?utf-8?B?czB3T3p3MjJpUGNzUUhkdHNXdUZXakRFVGdITHVCeGdScVJRMm5kOUg4dVlB?=
 =?utf-8?B?S2lTZ3pVdHZteHc0UFZrbDNheXNTZ2h4d1RUeFR0NFdrQkR0WjdCV2xhQmhz?=
 =?utf-8?B?a0w0VUFncUU1RDRMcE1zb2NJRmNsQTNrYkVvK1pDMGpxRmkvMGwrOXhDY0ZE?=
 =?utf-8?Q?YI2+f+aBp1kda7D9fWXi//A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af21a3a7-09dc-4fd6-5bff-08daaba6b98a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2022 16:36:19.6182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ezSqdL1VK7c+FozbKchZalts7NXzq7korgXjI6Q0lBmnp24Aq6nss0djX5cijvp26gf+Zq7ogLGNO7qNMaG5T1IQpb/MmF3BNnN7ibOaMYs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6791
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 04/16] drm/i915/perf: Determine gen12 oa
 ctx offset at runtime
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

On Mon, Oct 10, 2022 at 05:17:44PM -0700, Dixit, Ashutosh wrote:
>On Mon, 10 Oct 2022 11:14:22 -0700, Umesh Nerlige Ramappa wrote:
>
>Hi Umesh,
>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index cd57b5836386..b292aa39633e 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -1358,6 +1358,68 @@ static int gen12_get_render_context_id(struct i915_perf_stream *stream)
>>	return 0;
>>  }
>>
>> +#define valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)
>> +static bool oa_find_reg_in_lri(u32 *state, u32 reg, u32 *offset, u32 end)
>> +{
>> +	u32 idx = *offset;
>> +	u32 len = min(MI_LRI_LEN(state[idx]) + idx, end);
>> +	bool found = false;
>
>My recommendation would be to put something like this here:
>
>	if (MI_LRI_LEN(state[idx]) & 0x1)
>		drm_warn("MI_LRI instruction with odd length\n");
>
>Because we expect the MI_LRI length to even and I am not sure what is in
>the context image. But maybe not needed?

will add.

>
>> @@ -2436,15 +2514,18 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>>		},
>>	};
>>
>> -	/* Modify the context image of pinned context with regs_context*/
>> -	err = intel_context_lock_pinned(ce);
>> -	if (err)
>> -		return err;
>> +	/* Modify the context image of pinned context with regs_context */
>> +	if (valid_oactxctrl_offset(offset)) {
>
>As I said before, this check is not needed, if we didn't have valid a
>offset we should return error from oa_get_render_ctx_id. For if we have
>this check and offset is not valid, can we skip this code and will things
>still work? Or do we need to return an error from
>gen12_configure_oar_context?

I missed that from the previous comments. Will add.

>
>> +		err = intel_context_lock_pinned(ce);
>> +		if (err)
>> +			return err;
>>
>> -	err = gen8_modify_context(ce, regs_context, ARRAY_SIZE(regs_context));
>> -	intel_context_unlock_pinned(ce);
>> -	if (err)
>> -		return err;
>> +		err = gen8_modify_context(ce, regs_context,
>> +					  ARRAY_SIZE(regs_context));
>> +		intel_context_unlock_pinned(ce);
>> +		if (err)
>> +			return err;
>> +	}
>
>With the if statement removed or handled otherwise, this is:
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
