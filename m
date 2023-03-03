Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4B66A8E5C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 01:53:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E915310E0C2;
	Fri,  3 Mar 2023 00:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BCCE10E0C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Mar 2023 00:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677804784; x=1709340784;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NG07UW7leB2kdTMCigDSeqifDPjB+lsVmf8PvQKJ0No=;
 b=cOlgC5bmQ/Q2/GzWvelsOCiDdKIV2qOy70B/QOS/orRiMTj5Ee7RpIiQ
 hOa+LaM1ZTSyZ75xMARiEM1vQJ3ekxv9wY7efOFVA32xFWLX/r2tNp0M+
 QiCOlxOwPZexNY6HuFI2JJI2rLrdBwJgi13UQHSkBd2cQEgXTRXjzA+gZ
 //h8q6DC1bwAjCls8koHDnmISg7M7sJHPuh8pe3LZ0BblqtZ/ESZOey5F
 t1OQvkbthBE52Kyt2gahFWZwQFKwzeFhVtbDBXEc4nwyLUNml4oZFDPOE
 wnKeFdD1A4QegXqQnM2xYpYWfLxa40idhZElesE13EvEkoWxibogZkVuX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="318730675"
X-IronPort-AV: E=Sophos;i="5.98,229,1673942400"; d="scan'208";a="318730675"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 16:52:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="849290955"
X-IronPort-AV: E=Sophos;i="5.98,229,1673942400"; d="scan'208";a="849290955"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 02 Mar 2023 16:52:50 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 16:52:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 16:52:49 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 2 Mar 2023 16:52:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dg9n3vmJpEtLv9RptFgjjHE21pXGmmCIFd/nl9pOOaGSMAFE4tZPdwstuicQyQLB+m1uv853zxOi+qmQqiTPQIt2ijxJd1zoX3NdkwFAD51Fqzxx5EwhnvbCrkxJ6mobG821KwBXXkqUoZIicL4wvPUCmoG96V8leWx17c5zfxOO+czk0dTSEfSx18DuKkXnVmhEsSZNLby9e7snzcA32OUGKTKMN6hsN4t06kba5gJLtNTOxTF1NdeZ/T/zD+issc8tNSwsKTQywHxm0N9reHECDe8dZRLTcEman3F7RJ7pHVet/1vJaHajlhB+gDofbJtyaksVeg45czQi1MOosg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TUkQ0P3D6m0rYVwJValGNM5r35WKu6mWoUX8FYWh9Eo=;
 b=Kb5rYfeQ6DcifZWtL0me+JAYzPcPu2mmev0R4DdbRNWWk9z5jV54IxXTrG6Pq8zSZkd5jHTU/YCt2Jtv7J0ftG5dl7rpistVvwMphnn1trRX5XZ1Am/qR+JjPncswNVFom6zas5cKB6sCy4Nojl3MwtcScAF5JzI0blRWw8KBrEycRV9dEOXLvfVoNXOpOnUTGVNHii0G9iGb+ggpVMeALQwMCprKutnjID1U/YlaOtVOwomoVc7tFayW+CzcLT9srdL8KvdLJPspvV5rDclWkMkPgexY7AIEGig3L6mxDHRdOhIKaQZDbBImIM9D/t641oNMYNu4LPrCrrcl6kGIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ0PR11MB5118.namprd11.prod.outlook.com (2603:10b6:a03:2dd::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.21; Fri, 3 Mar
 2023 00:52:47 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6156.021; Fri, 3 Mar 2023
 00:52:46 +0000
Date: Thu, 2 Mar 2023 16:52:23 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZAFExzJcc24zah7A@orsosgc001.jf.intel.com>
References: <20230228022329.3615793-1-umesh.nerlige.ramappa@intel.com>
 <20230228022329.3615793-9-umesh.nerlige.ramappa@intel.com>
 <87mt4w3zgx.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87mt4w3zgx.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR05CA0170.namprd05.prod.outlook.com
 (2603:10b6:a03:339::25) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ0PR11MB5118:EE_
X-MS-Office365-Filtering-Correlation-Id: a704204f-0299-43a9-2ef0-08db1b819a9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BIrgMm48WXvG5Au+9TqffjuNb/JcLYIZLmzVNF0QXb45w6GJSwotqqLeImwEcM9F3hK7NISOaz97FdMsy/+fRPXPCfBnEfGOYXOG0gLoXrY9fmw4weP0qBu0xSIQCXQ33YvgX4rTx1imv31mhOZaIJ3V6pgrLxpzbdEBafTYEK8jPecxqjJyVP3XGMNw4yS1lCt3Qrikrvmb7VwyF0c6x/QJeouFb6O3Hf6cdkJOBWV+7yuf1rl4OgCMzYkAExpGT+MIU8GKsdZT0eBdLdKGptMuEB2oYjP8Gu2Q+IHJZVRHsuLF9ccdgHpLrcfM0/jfXvBz+lEobn1h7/+4sc2i/DAxAE+v15tjmnkK0rDlu9Z2TeaZdINH06xl1TkLtFlOxS6Z+YEBTZZAU000OivxGccDsFNkfHvEczkrjLeEFRgOxM/5woPROjBA/abPVDNvzzKGjVDy0BBvMCedR3p8rlB5A17YeBnXqbTlZWTeCVJsvqQOM74drKoqO/JO9QQOSjny8ooXXWPQNU6H80hkqRqCHPoSxAtd4Hh6fgQv9IuNv4PcjwRosAfUM1yc4nKBf9g+ABm7Qmk+1MaoUfGFIzt6f2NPniUikkFG8JnyjcbLl+/buMU2AbBhZhbe4PFv0jt4q6D9j4ryXHR100xE9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(346002)(376002)(396003)(366004)(451199018)(6512007)(66476007)(186003)(26005)(38100700002)(82960400001)(8936002)(6862004)(4326008)(8676002)(66946007)(41300700001)(2906002)(5660300002)(478600001)(66556008)(6666004)(6506007)(6486002)(6636002)(316002)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTcyN3VtK0luRXFCQVNDWWRyYzlRQmVDZ2g2aXF2eWdzOHRBVmVCNDdDVHBZ?=
 =?utf-8?B?d3Q0Mk9BU1drdkdUeEVTYjZlbU1ldjBnMUhsTklTL3dod0tOS0JhNUFjVjNX?=
 =?utf-8?B?TXdlOW1HQ2trMzVlMG1jOHBkdkVJZnMvMHEzUm9iRHVRQ0dYSHFqT2ZtbXBn?=
 =?utf-8?B?NmZzYm9hQXBNSHJHd1NycjZ0aStLSjJvSHQrZlpHT2RSUytEZ3pwQnFZR29P?=
 =?utf-8?B?aEgveVc1Wm5Ha2NsNUdKbVgveXY0SXprdWZUNmVrRUxFM1g4cCtmR1ptdDcx?=
 =?utf-8?B?eGNJZzJwTFRMN2w4dmdXaldQNElaZTBVQU9GN0w1RVRGV2U4ZDFEcXBueWlF?=
 =?utf-8?B?b1E0cG1Wdkpnekh0MjkzUEp6emFpSVU0ajg3VUlqbnNpeEh1Q2w2Zmg0b1Zk?=
 =?utf-8?B?Q0hjSHNoY2NTRmtLK2pvQUFVZzYzaEhuQlRqUUNSR3N3MkpWVkQ0N2NKWWVt?=
 =?utf-8?B?bjBTK01TdkErQzNORW5FTUxJd3J6Zm4xVjRBM012bzJ6TEVFZERkYlc5THd4?=
 =?utf-8?B?amxtZkFYVDIxOG1aQ2JTQkI4eTZBczVvYkwrcUhkNndlSzdXVit5aVdtWDdx?=
 =?utf-8?B?VG5xZnNTUzNWYUltOWxVQytMMlRHNWN0WnA5eUxmNnZXSzVnSFhVWjVacjlE?=
 =?utf-8?B?b1RGVHRxZ1V5Q0VjOERJbzFDUTFXMHA0b05BMHdOdHJTUWh2S3hEMmhYVkI1?=
 =?utf-8?B?TDlnZ2laUXg3cDU4QlNuYU04L0ZpY3NwQnM0Q09tYkJWQWdTOU1WMGl3K1ph?=
 =?utf-8?B?bGYwY1JVUGJrWlVvK2xxeVhlME5hRC84eEI1blFxbFRSSkhaSXEyR2RKMFRE?=
 =?utf-8?B?R3VwR0tmd2NidEY0UlRhbENWS2pyZ1VNWUdZclFXWkIzSnlHNnNtZTg0cUFZ?=
 =?utf-8?B?MHphSS8rbnk5ZVFqT0o5eFlmcm8yeER0dk5ialVIUTF0anF6Wldwc0pxbGJ6?=
 =?utf-8?B?WCt4K2tRdWE4RlZkUWRNejdtazA1SmU1N1pnaGo1Z1dkVHZrelBrejlsM2RZ?=
 =?utf-8?B?aVFXQ2lqNUxoWllISjExK2czNGVSYU1KM0lMMXJhaml3RTlTY2FqSXFKNHlS?=
 =?utf-8?B?cVQ2dGtpYjl0a0g3dDg3NHdXcjNxbmJ3TnpUMHJSUDMvc1NnaUhzVXJlcGlt?=
 =?utf-8?B?TmZRbzY5Kzl3QTN2TlVpVnNzMVNncUtGeGpMaDR2enJMdTFUTHY3TU00M3Rr?=
 =?utf-8?B?dmY3L3VLUXl0SC9pU1VTdEpUZXNpdVZjWjMyZUVQc0Jna3llc0R0bWRuYkhq?=
 =?utf-8?B?YVRaa3Arb0V0bS9kMFlwRGRMSGJmNUNBK2VzTk1MUktST0RtTVNVWlpyd2hC?=
 =?utf-8?B?NG1rT0lUbFgwOTVJaFlhNERDWEZBVGZ6RnFsNkF4WlYvZk5MVUNGVDFTSnVE?=
 =?utf-8?B?bTRpWUw1UDU2cC9WaldFSkN2VDlLZS9Pd2kxM013RE5PY00xbVVla0I5MkNj?=
 =?utf-8?B?T2lPVnNwZjJPcVg5R0Q3RFg5a2xPT0JyeFdNa29STi80Q2pramJTK0dYazh5?=
 =?utf-8?B?N0xUMnFiT1d5RW9mR1ZFWngzYVQyM1NPSm5hR0I1bHBkeHpmVDlxT2xkby9m?=
 =?utf-8?B?TjREVy81c2tRekFnaXc3MEExNzdvcjZyVlVwUVhMQ0szNTN4SjU0Nko5M0ls?=
 =?utf-8?B?dDU3SGFVVEdqM1JZTWUweldhQ2lBRjAvUGNMSW1nc0M1TS9jVnByR1M0U05G?=
 =?utf-8?B?Z0gwbFlydTY0bnhacFMyekhzZi9jdklpWlFDNUZyTGRBeENMYjg5VU1qMlBm?=
 =?utf-8?B?UkNGcUI4eGhyS1Y0aWVnQnhvUlp3K2t3d1dTVjk5UkZjWmVXenBBZDQ3UDBZ?=
 =?utf-8?B?Qyt3ZHRFNmVFdHAzeUM4ZGJDaGRua0dXb1ppbmFtQmVTQTlSU2dWR0gwNzJr?=
 =?utf-8?B?aVozZzBQclU0RStNR21kZmY4VlZFbUNXK3VEVk1ma3ZZS2ZrbTZKWkdaSENU?=
 =?utf-8?B?UUZFT1ZXa2VJNXFycmlxQmJoVHdvTlU1aGJueWdlT2FtSFhKcTF6M0xwTnpo?=
 =?utf-8?B?U3BRQUZEZlo3RHZMZnFXZEllajRYU1psZEJGVG5vWTRSd05IQnJyOVYzcUVz?=
 =?utf-8?B?WndmZ0w3WEMrVkNhQ0NocDRqelQzTDArbWQwSVF4Nmw2bmUzWkZyT3pKWnBQ?=
 =?utf-8?B?YmI0T2hkKzZvZlNmekZXclBCUElwT0xxSlJOWTdyVHBlYVdobllaNExSMmVa?=
 =?utf-8?Q?q3kdF7dB5w4sRuKfMcpAF2k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a704204f-0299-43a9-2ef0-08db1b819a9a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2023 00:52:46.3615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BqJK3hhzqnHqbaCWmrVtc4N8X4InNzwHuWkVYXx4JNeZAws04ZBdPzxv3HBaKjUBAHkp2JXYqyTbflajqTYRuEBaLmytG3NJwML+LamKVu8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5118
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 8/9] drm/i915/perf: Add engine class
 instance parameters to perf
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

On Wed, Mar 01, 2023 at 01:59:10PM -0800, Dixit, Ashutosh wrote:
>On Mon, 27 Feb 2023 18:23:28 -0800, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>> index 8df261c5ab9b..8ce20004a9dd 100644
>> --- a/include/uapi/drm/i915_drm.h
>> +++ b/include/uapi/drm/i915_drm.h
>> @@ -2758,6 +2758,28 @@ enum drm_i915_perf_property_id {
>>	 */
>>	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
>>
>> +	/**
>> +	 * In platforms with multiple OA buffers, the engine class instance must
>
>I'd say "one engine class instance".
>
>> +	 * be passed to open a stream to a OA unit corresponding to the engine.
>> +	 * Multiple engines may be mapped to the same OA unit.
>
>Maybe (at the risk of over-stating) something like "Multiple engines may be
>mapped to the same OA unit. The OA unit is identified by class:instance of
>any engine mapped to it".
>
>But it's ok to not change anything here.
>
>> +	 *
>> +	 * In addition to the class:instance, if a gem context is also passed, then
>> +	 * 1) the report headers of OA reports from any contexts that do not
>> +	 *    match this specific engine context are squashed.
>
>This one I don't understand: we seem to be mixing gem contexts and engine
>context here. Also, afais there are no changes related to this in this
>series. This context squashing has always been happening, so why add this
>comment to DRM_I915_PERF_PROP_OA_ENGINE_CLASS (or to this patch)? If we
>want to clarify something maybe this comment should be added to
>DRM_I915_PERF_PROP_CTX_HANDLE? But otherwise I think we should just drop
>this comment, at least from this patch?
>
>> +	 * 2) if the engine supports MI_REPORT_PERF_COUNT, this specific engine
>> +	 *    context is configured for this command.

I think I will drop 1 and 2 since they are not specifically related to 
the class:instance parameters.

Thanks,
Umesh

>> +	 *
>> +	 * This property is available in perf revision 6.
>> +	 */
>> +	DRM_I915_PERF_PROP_OA_ENGINE_CLASS,
>> +
>> +	/**
>> +	 * This parameter specifies the engine instance.
>> +	 *
>> +	 * This property is available in perf revision 6.
>> +	 */
>> +	DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE,
>> +
>>	DRM_I915_PERF_PROP_MAX /* non-ABI */
>>  };
>
>Thanks.
>--
>Ashutosh
