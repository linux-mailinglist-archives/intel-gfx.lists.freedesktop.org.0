Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBE14EC9B3
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 18:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E18110E73D;
	Wed, 30 Mar 2022 16:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D3B10E73D
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 16:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648657981; x=1680193981;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x1vfz2tbLRIVuXqkhC6Z8ZeEF4BqAPQrD6E+nhOfzAw=;
 b=G66br6qzQnEqUN2WuPrOHSXta6ddUuY+EEPXAKTPJMRt+CKTn6rnYppU
 5I0I7sQb2uNtmxzFBjcZm8yncRhjZ2UzDjT59rqT3fSrQ71uFP0E5LckV
 /4spMTXaInkjLebiQVWaTCudBN6td5DR/dbxJbi162WLbkMLg8UHTQVAU
 wzJ752OgjsrE+uWCSIsgIJ69MxPrGB3TKpMwcOPVC4wsJoLgiFgL61jc3
 bTihTi8SAxymc/4bofV2I83CPF9EEtKZl4eFc4PtGFe02jt4wF1IMiPn5
 CXFhoAeXCmTd9K2bGWiRGJOwtebH9+I9O1yX5EVFi/8Kj5zULttB8Rfxi A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259559640"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="259559640"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 09:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="521955074"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 30 Mar 2022 09:33:01 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 30 Mar 2022 09:33:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 30 Mar 2022 09:32:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 30 Mar 2022 09:32:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 30 Mar 2022 09:32:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HOa58mluZsZDJ99TB7c0iG6uHuxv4GupeB7Havu4poCaveMVwncTpi/HgnAVeYsKcJLiuFRp/VFY8pDfdXL0yXk4F15QLNBYeLrOVu6pWgMxHMcF4cILtMMtjerg9e8NCRs7Wd465bOmHyUfbZW/Y1bfPAlA75iPsvSs9GsWY332O3zw6exk9mW5SB/7lk7COcRiKbofmeqWKrI2VcmONBxdUAKgJiXLRmB507t35DsIZ+IXQcKfRcMeaSJiBB5CpaDeEfuaIItadSvhiqSCyzpeAfI7k+5/7ZgMMdWqlQvoBH/AklJoThe14yvjypcZk+2aWCsXqWouT0fcd7RJHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=79vhnjCGqyxvb9NiAG3dje0JJFkqilmfyGIr0W6PVYg=;
 b=T/y01deXvV+2/n1U+gCDFVTSljj1Fwb01W6SMj3n4C1ACzE+mhTkfdNSlbjcFrhFYotOihcC6Zz8VC9jGT9QahpQb4IvyCCV4h3H48nD9Ltfc7IWf0L/QzKF25PgAw6r6EnCB0S2dKPSXRdAxirrFVoC1HgvRjkZxebWeI/tByZrAlqrh5rxBOhBx8mxKZJR24sTtLE11xDsN117ywiKMJb/Ny0QZzMphwpybwf9vwoEoMexRMJtPBqFRLbqUhnztGJZ8lm1ZsfahW5HshJ2uGlfQtcuc4Ku7/VsetVRczHgJljc6EnZbY6W/+6GoCZxNgBliYCbiyadJKN5/pCbeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by MWHPR11MB1888.namprd11.prod.outlook.com (2603:10b6:300:10e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.19; Wed, 30 Mar
 2022 16:32:57 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::5dae:3976:a7b2:8cd2]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::5dae:3976:a7b2:8cd2%4]) with mapi id 15.20.5102.022; Wed, 30 Mar 2022
 16:32:57 +0000
Message-ID: <904b27d6-d4ad-c032-5bc0-e4de2c8e2fb2@intel.com>
Date: Wed, 30 Mar 2022 09:32:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220329235830.1025100-1-casey.g.bowman@intel.com>
 <20220329235830.1025100-2-casey.g.bowman@intel.com>
 <874k3fd9tx.fsf@intel.com>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <874k3fd9tx.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P223CA0023.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::28) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 21c9af05-13b7-4dbe-9bb0-08da126af2be
X-MS-TrafficTypeDiagnostic: MWHPR11MB1888:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MWHPR11MB188878A900D53FB8D4031A16DD1F9@MWHPR11MB1888.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bJlmW5GkF+kEZNb8n+uesbDV9jdXwCB6mg0I5IbuWQSoJoevjhuDL7pzw7+aLB33bUwWNnRhrYKQCpd/+TOYz2coMAJJzrF+7+0ZpLOJseJ9cEJTxHptZEBUSoyzU0q3l1CO4vo1/bbKciqUSCI3hv7rlPvSdHE1stN3w857zPk9KvYY8paFnOeLJT7wxfNk+8+wx4/15qrFEbYKT0NRYiLiZh/yG8vg+JwvVZnctX/CZupjvhLtmuBmlB5K8G7E9CDRNqg/Zl5q4WIJfZdV8Qlp+cFZq84GGoz/PurL6KvdqWtASEr1JfL+bV7rs+VoSjYDxIQvg360CBk9X7Tj172rA1y9dzRnHEv4moVJSbECK4VRr+l80cRHLqNQ+cgqtoC7vlNqFjVFJVyhTVVIQ77G40SrjMUWGgk81B1IvzpIexmp0x9ciNv5fGAEHXRdis8CAMKcnrrvalvYT5Bn5Ih+WgJBUDRiFtyQ7GIBirtiN3JzwjhKwnGpISH8miDHjtn+nwFMPfOfzy4QxihGgCls2fMxyITh0DJduOFOB/tdixtE5L7GPnvtAIa48zJGJ+Ob17pqlnSGcQCVO72bcea6J9q+tC9Y+bobLwF/KKjRgYNBHZuNYdnZlJibAFgF1Ir81EBGbe6Ry1c3TEi6aJZDRDCJVI9FMHTTwea7a6T0/isijLfJIK1qLDdgZD2KsT+Fci09MiV56zbqDykkIrg6Uq9IDQ8dEcA2YzJxMYw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(508600001)(8676002)(66476007)(31686004)(8936002)(66946007)(31696002)(2906002)(4326008)(66556008)(53546011)(6506007)(186003)(6512007)(316002)(26005)(6486002)(36756003)(86362001)(82960400001)(2616005)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFFQN3ZOODZqdGltMFh5N1F6NWk4VWp2TExIWC9od09yK0Q1YjVGaFRMWmZG?=
 =?utf-8?B?THBZV0tnRHZ0MU1FRjVMWTh1cGpwaTFlOVpuaVlqZE5VZmNZUDBVNW0veVUy?=
 =?utf-8?B?cUlNMmdoNTc2b3JjVGphTlRncGw0TlNtN0E0ZzBvVGtpS0tHKzYrVmVJcUIr?=
 =?utf-8?B?ek1CbXFVY1VoWkZvM1ByTFJIY3RmZjJDdXBodWFHaFdIK0E3d2JvQzd4WC82?=
 =?utf-8?B?OEtGODlST1ZxSysyTlExeGVxTjNlWXh4VzZ6bzN5Q2s5OHJqSFUrbnpEbEh6?=
 =?utf-8?B?TnhXUngvTjR1NFpXV1FFR1FXaFBXa1FWRVhGR0NXZ3NHYzRTMFE4UHNqa1pI?=
 =?utf-8?B?dnlFMEk0SkNkTVlYM3p5cW1qbGx1Kyt4NHRZK2pRMXMxWkNxbmxLMktXR0o2?=
 =?utf-8?B?dGVhQnE2cC9aTjRVZ2l4MmtjVHhQaGprRzJHd0ppQ2N4dG9kcDF1MUhrMHFV?=
 =?utf-8?B?cXlnTzlBVkhxYTRyTGJkeEEyMk5OR3ZaWXpJSjgxL0pSRjQyZ01uOUpMcGdF?=
 =?utf-8?B?U0JORklPMm1RaEJ3Uk1wajhYdWI4L3pMYmZLYU92c1JDbzFLRXBjN3EzM3I1?=
 =?utf-8?B?d0hiZnlPRFROMjg0UlFqMkl0WHJmUzZscXl4SWZmamJWeFR2K2NQMzl0OW1E?=
 =?utf-8?B?aTFYc2xYcTZNTDNyOWVqSE9wYXZNNU1LNEMxWmdMd0NXckJiTzhqaWgwbmQx?=
 =?utf-8?B?Sm9YNmg2YWZwd0lvNkhUL051QzdtbWVDV0tUa2tVUGkzWEloOTBGdFBkRUVS?=
 =?utf-8?B?bndzVTRSdmJqUkhKVjh4Nmg4bG5ISFlXZlc1OUg3NlFhUmZ6NGJSaHE3WjhR?=
 =?utf-8?B?S2ZmV2tEUHhoUU1iZk9pUS9oRG8raXNZQ1NrQXB1U1VXcWdpdUE0ajlwRHNr?=
 =?utf-8?B?aWc5eEhGVU9uR05oNlA5OUwwMU9WQ2RXc25MdFZneXdzcWt1cEdZeVpLLzF5?=
 =?utf-8?B?aWhubklzMmVjeDNkNjllNlVlR29HaHBSWWYyRGh2M3YrbUV3bXlzbDE4b0xF?=
 =?utf-8?B?Y1c4eWJmcjNiTkJ2YjNzRklINUxuQ09Ub1FmYmEzR3Z2QlV1OFRRWCsrMHdY?=
 =?utf-8?B?RWdCTTBHcndwSXBWTHlKZStVblk0Yksxa293OVlMbGd3TGh6ZW5rMnZwUTFp?=
 =?utf-8?B?Qk9yd01EREVWRkw4M2wxM0JicHlucFFNbDNPNUdoYkZtVEpibGw2cDFNT0Y1?=
 =?utf-8?B?RHUrWW5vdytqbTFHc0JJS052cXhpRlgyaVBYRFhFejhmQnUyV2MzY2pRQzVJ?=
 =?utf-8?B?Z1NhM25jZFJ3YysrZzhubmlmV2o0VmRpUjlwQlJOc1ZDOUN5VndtZ24ybnFQ?=
 =?utf-8?B?MElRblNHYS82Rm92aG9YdFJlZlBOdnU3cCt1TE1HVnBrL09Zb1I3NWVaWU1o?=
 =?utf-8?B?OWVWOFlXcWExLzJiaHFwTUFZSXdwaWNCLzVrWjVTa0FNdFIzOFJYcU10MGJn?=
 =?utf-8?B?TUhDS3pTRlo5STE3ZFhvQWZpUzdDQ0hHS0g2WTlsWmZuQXVaSlJoL0l5QXhT?=
 =?utf-8?B?NFFzZTFhMWVGMlROdXdpTFg2bW5VK1FPaGkxaTJrYVVpMS92RVdDQ3REYVlC?=
 =?utf-8?B?Q2gvSkZEL3NtZVlMV3NjMXhEQURGaE1hNjFLczZoMW9CaUFDVFRhWWVPdzM4?=
 =?utf-8?B?SlpsSzVxVWpXZ3NlTnA5akl5cjlSbWFpVjVDd3pDdHpnYUtxN0JOb1ROVWVL?=
 =?utf-8?B?cDhYMzJISktRd3ZjekhoQkhMM3BiUTZKRFFCU2hsZmJyUGRmTi94d2FBUVR6?=
 =?utf-8?B?S0FvODB1WGdKVUd4NC9oQlJxZ2Z3WitUd202SHdNSmpYWGtGTG5Yb2ZOR0Vk?=
 =?utf-8?B?dG9WNE1ETzhaSkRFMWdhMW1aYlJZUTZKZUl1ZW1qR0JZcHEwL3lGY3hMUjFB?=
 =?utf-8?B?Qm9KOG1zeHlJcVBIcGhyR3NleEcyZmJ4eCtvMmgrY2ZRTS9KcWxnTDZmU0JW?=
 =?utf-8?B?c3Jvbmcwa1d4Q3ZDd082aFhzdTZCbVVxL2hBaW9pa3Q1REx4UThITXducGFI?=
 =?utf-8?B?bWNIZUEzMkNGMEpoVmZNZEJEeHcxeFo4MXhnUHNROHpzYmFKayt5K3UzOGhm?=
 =?utf-8?B?VjloTFpqSExLTXlNZ3RJanArOXQ4Q29ERXBIZDlZQ3BvazVSTGtINXhJL0U2?=
 =?utf-8?B?aEdIUHIyS1hpaTlVeFJuZlVheWtNZHFqNkRDbnpnS2FIT1Bha2MwZ2ZSa0pI?=
 =?utf-8?B?NVVJQ1dBTTYzUFB5MGV5QURybTJmNGgyZU42RXhvMC8yQysyRm04cG0wWWtk?=
 =?utf-8?B?MUhDRk5yTFJhTTlNVVljWDBhLy9lbHpOSDEvUUpodFJITmpjNWIvTEQwdHNJ?=
 =?utf-8?B?R1kwZ0lFQnhtK0h5MjBpRTl4UUkzcG8xT2FyUHJVUklkOGpHQS80bC8zeFBO?=
 =?utf-8?Q?rLKj60xV3Ami+9sY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21c9af05-13b7-4dbe-9bb0-08da126af2be
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2022 16:32:57.6007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ib3gqInoi5asJttHAJBVRv+lVuEr0SAWFZwDn8HSF+0NOn10co3e9Pzili4YqLYfoFlaufN75dpRmjs8MSMXJvW4/eEhPTLjFar7/f/rGmY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1888
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/gt: Split intel-gtt
 functions by arch
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
Cc: thomas.hellstrom@linux.intel.com, chris@chris-wilson.co.uk,
 lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/30/22 03:16, Jani Nikula wrote:
> On Tue, 29 Mar 2022, Casey Bowman <casey.g.bowman@intel.com> wrote:
>> +/* Stubs for non-x86 platforms */
>> +#else
>> +static inline void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
>> +{
>> +}
>> +static inline int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>> +{
>> +	/* No HW should be probed for this case yet, return fail */
>> +	return -1;
>> +}
>> +static inline int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt)
>> +{
>> +	/* No HW should be probed for this case yet, return fail */
>> +	return -1;
>> +}
>> +static inline int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
>> +{
>> +	/* No HW should be probed for this case yet, return fail */
>> +	return -1;
>> +}
>> +static inline int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private *i915)
>> +{
>> +	/* No HW should be enabled for this case yet, return fail */
>> +	return -1;
>> +}
>> +#endif
> Never use magic -1 for negative errno returns. That's -EPERM and not
> what you mean. -ENODEV or -EINVAL are better here.
>
> (As an exception, returning -1 is *maybe* fine for functions that return
> an index or something, and have zero chance of propagating to somewhere
> that actually interprets the number as a negative errno.)
>
> BR,
> Jani.
>

Thanks for pointing this out, the error codes slipped my mind when
creating these stubs. I'll fix that.

Regards,
Casey
