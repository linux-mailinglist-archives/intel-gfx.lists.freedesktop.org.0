Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F3F5BA2FC
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 00:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38ECF10E2F2;
	Thu, 15 Sep 2022 22:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB3710E2EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 22:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663282173; x=1694818173;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gqyDPR5RFONrCPknNw5TJn3WUoWs/ZDRt+hYfUFQMG4=;
 b=hGArgkXuzP9EYRpvmLdVWMCE6FUkQ/gc4uHOlAl019OtITs6dPFsa9ou
 BuP/PXnT7X0m1kqALe5jnpPwDiNYIyOcA23DTk0TRcKBtrH4QefAgpMfQ
 dSUQc3on0Ngrk7n71cnuf0BEHuol1c5/rrBFjDy0osfQnJ8dhqMVD6T6t
 hvtO+lMcPQs94OnZvwYput0KlZ9iOm70wiosyO/xMQeUpIMhE6qxgyf0Z
 2eQE1mHXGkBhdo6hu1vBWfJ8m0+pg/7oNfeaK1Yi9/IAjn/pTjgcJNfmC
 SfpEtpl2J7BPq6v7DFWc4RPOenaPyL99r92ybW+a/kO4vvjAzQAkoBzua A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="360601025"
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="360601025"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 15:49:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="706542323"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Sep 2022 15:49:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 15:49:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 15:49:31 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 15:49:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LLpxtTcbL6D8OGTjLGuw2Im3G/rNKPAnUwm6H9R1QHghNSBHRABlTmmVs43PYU+nRzbNpDfJbwYoGU/v2LzvcYyf20O9N80e7yVqb5Rnhnu2EkLpTJM+ex8OxgCGZOylAr1e7IpTJQRmJdJHi/pP86lYB36Geo0oI5mRcYcfOms15HjQMdFAnGidnQGkPV62kqP9R16Uh5PlDx4q2Scgv6Xdsc+Eon7A5VQ1+prGLgheT/7hEmnM/VUIpbuqijILQVP5EQUd1HFtRrglzE3bH2ot/8J++INKIki1aSeyK3GTYraV4FK2KkHg/dPYU3Xi/EO8V29Ew2XuXDKAlyY2ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DWIv9zaHrZZZVAzm2m/0o6PMeqBtpvlqTE15FKCSObk=;
 b=dMsOuNpWY09Qkt9mVwVCOhET8MFfY6jIOfaWGntYHp+TVUGu1Jr1k7QBszwyY4+sJ6YIFTiwAcU95LGOqTXsrj+0MkARAmmHsE+mBRKGsmaqyERVSFLMJl7zke3c8IeNZzRBl6wuf0pDzfJkiDx8eJIyTqq9M5V3ki3Bva9mf9RMnwuc4EfYP2/yTPkmb6Wd1VVoA/oe0/LJR+Y98i/SV/AxaEg32WAHiVOjlPHw+TQSLELa0lA7oq1au+OXrC9HRdrnW3UKH6NCDrhOGIkv4D1XH5BUnj1hr5m97UQFWKx2lfYOHjx+JYHUAz2iNiB/MxpWSyT2KGqXLUovGE6QWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA1PR11MB6989.namprd11.prod.outlook.com (2603:10b6:806:2be::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.20; Thu, 15 Sep 2022 22:49:29 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 22:49:29 +0000
Date: Thu, 15 Sep 2022 15:49:27 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <YyOr98/p13pWWm+k@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-2-umesh.nerlige.ramappa@intel.com>
 <9afc705a-87a1-c51e-b223-e32accbcd2fe@intel.com>
 <YxeF0b6ohtFcDXf6@unerlige-ril>
 <f1e9e230-2626-0f6c-02a7-e063122b759b@intel.com>
 <YyJVB9DpKwhqqCHR@unerlige-ril> <YyJgJT6ByYZToC2h@unerlige-ril>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <YyJgJT6ByYZToC2h@unerlige-ril>
X-ClientProxiedBy: BYAPR06CA0026.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::39) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA1PR11MB6989:EE_
X-MS-Office365-Filtering-Correlation-Id: cb11b56e-b431-48f5-1f51-08da976c8c86
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HAxFac8XFRYGdQTncoaS/FZe/3tIHNMdYW4M5xtnHg1dvBdoXNmI/gLXIA53dVMmq3sxF0zZl7cBGW//RRYG2kvqq3HUDkXtHlM+IxGPPMf8K4scN69Hey/inUuY8C5U1RWa5l5lbyD7TWm0Hyd/XJKN5r+YkON2XVORZujEvRa8aJea6yCwweUS8UXu/bJYpqN78Wqh1XiilexY7m1MO50xPRG7jXU/+OCVeZGuczhD24EXx8fz/Z5RGsD0Y1IoHym0fTwJ/f4wfoImdRZ6TZ8F9hKAQZaue+N6+A2UNBEcxfExqnNlhtnyKZHcZgsGWy8nesNTdBWKJUe9aeXo0xeLK3Nao2nEje5V9RXkxF+HgEnqWFqAUw328La/8xOZBLS2ye4edU3GayCVv1TANYnJ0nO2wzP1CIO8xoB0LNsaA0B04D4NbvWQzrPWTn+aCZ0aWTwsdkqJuszhp4Kn3zRuf9kQD5nwg4AK275UUNGfFfThaZqiviStkxqu96Ff8b9tOyEPKcZqL/XeG2xZQjIcB3s3WQ8YgH1mu9DWJzl09zN42lU1zLmZTyJidFjD1nNXxgyBpkjx5VGf5OzO7hrmn3vyPSkjH18CZqy6qIr50e03EFU9YjPgutyHqnejiNweQ15w1/3wH5R8sKGcFH6KO944B+7ItPBa+qT8b5/jB8jNRodl73zqlZ5ThgSoxroAvintV/CB49ho86DY9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(376002)(396003)(136003)(346002)(366004)(451199015)(38100700002)(107886003)(478600001)(33716001)(4326008)(26005)(6486002)(9686003)(8676002)(66946007)(86362001)(5660300002)(82960400001)(66476007)(41300700001)(83380400001)(66556008)(6506007)(8936002)(6862004)(6512007)(2906002)(186003)(6636002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmxBMTUzMHB0WUNpUEFYdWc3cUtNcjM4YjlJSVhJWkZaRWpZU1c4THIxR09J?=
 =?utf-8?B?T1pXeEoybUZaV240TDdjc2l2alFVd1BXRlIzVTdZa1pJUlA3bW9VS1owYjNM?=
 =?utf-8?B?QU5KS1NWRW1RTys4VHlIOXVKRUp3TzNOdkY3cUt3K3lkQkFtaGV4K2NJbXZR?=
 =?utf-8?B?ZWhoWDFZS0w5N1EyZ2NpUWRNY21WbFQzRzg1M1daUTRjOWRuaUQzWW1tR0ZQ?=
 =?utf-8?B?UHpqVFFpQnFCeGQ4NUlEd3ZKeFo4ckJqcTVyOVRtWGdoRDB1WUEyL2x2MWFz?=
 =?utf-8?B?RGdEVWU3a3BwSkVlcWFBSlhhUHl5NFpxWnk2TnByVnpLbVRrTWN6ZUNXN0tY?=
 =?utf-8?B?YitVNkpiSmxxYjBIR3YrM1dUN29OM3A2TEU2TDJQNUVnVlpnYWNjVUxZNU0w?=
 =?utf-8?B?VWt5MXUyalEwelhSRnFsc3QzaXVWbUxjTFI0anNNbUl0VEovYlNQZ2JTSENZ?=
 =?utf-8?B?VzRTcnpoUzYvb2tZNDgzYW4wSHhwankyenJENnJUWHpJRjBJVUFVMmJLVWlr?=
 =?utf-8?B?bnI2anV0d3p5bXZYZ015SnRvOCtWWTV2bDlCenU4OXJzaXlUcmxPT0RucFFS?=
 =?utf-8?B?bXY4MC8wNHQzM1YvVGdTdEtuZkNsSUxWVEU3Q2ptUWw0anE5eDN2MkE3VVNz?=
 =?utf-8?B?QTVzZDJIbCtrQkI0eUNmWUxLN3gyNzRTK1J2TGZXN0VGcEFobnhWYWtBNVh5?=
 =?utf-8?B?VXZ2VUc0UnF6L2hodFF0SHpLa2hBYktxUlNXOCswUE0zYTlRZnRhbFJkc2t0?=
 =?utf-8?B?cDVtd2tFRVhUWlQ0aGVtR1VkbDk2L3c1WXBxN0xtUEp2bkJ2dlFrVXgxLzJD?=
 =?utf-8?B?eHdFc0JzY3diTU5KOGh4bDV6TkdmazRxeWJIRDdXeTMvV2U0UFlpRlUxd0k1?=
 =?utf-8?B?QjlVclVNMVV1ZDdJRTIzRkhjdGIyZjRwblZSY1NIS3pYUE5VVGozdHpxZ3JU?=
 =?utf-8?B?RlQzZkZXZCtkN1lHOGx4dU1tMlpwaHpKYnZLM2xySDY1YVFzVlJUd1BJQkYr?=
 =?utf-8?B?ZCtoNGxQcTYvckJIZEtzTW5VUFFKbk5hQWgvMlpMQlZBUWtaeHlPRXVUTFg4?=
 =?utf-8?B?VnpZTVpuODcyV1F0WFJsS28yMWduQnhYZmsyeGlHaUFHWGxxRkhPK0tDcXlJ?=
 =?utf-8?B?VzdKenhNR281d2Y1R3FVdzEzeXB2blRvZ3krTDBCUmxONzE1THkxb3NvWDlB?=
 =?utf-8?B?RVVCVTBtYXFlS0NBNXErWWdUcGR2L3hXRTFXM1FIdGpGQUtPazhkZE9Sb1o5?=
 =?utf-8?B?d2NmVWt0K1JRTEtFaSt3eEhiLzYybkFvTTdrN2ppT3FjYmlvNDVxTTFteXdM?=
 =?utf-8?B?SVQ4YUhNVS9Cbnl3QkI1dlJ0K3NpdlU3ai8rWGE3Zm5LR2dwVTU3OTRuRWp4?=
 =?utf-8?B?K010andxVFQ4U1JUejBMNlZrQWRSak13SnhCcjNMUWtOZml6WlZvamQxSW9U?=
 =?utf-8?B?cEsxdnpZbTcyc3pMdDh5SzR1MzdqNWU3aTFNOFpuVFVCam9MR3N2ZkNyU3d5?=
 =?utf-8?B?SVA3UU1icVZ3bEl2aitmWWFaL2thTXdvSDBPRnNhTCtnVHV0ZzJLOFFGbUIv?=
 =?utf-8?B?RXh0Mnlpa3YxRysyWmphayt1Zlp0a1l3UU04c2g0Y2lNTWtFQVcwMUhuNW9Q?=
 =?utf-8?B?ejVTUFVNbklHd2hacDJEbHcvSGhLRWNzRGczTTN4SHBaUmY1NFRmWHIwLzhJ?=
 =?utf-8?B?RnJwVm1qblorODZ4akI0dmRZUzB5bFNWZHg1WXNGdEpuZEFTSnF2NmJhVlFr?=
 =?utf-8?B?MStla25YS3JSY1hWNmt6Q2xnQm9vNkFjVkU4bjJhZ0N3R3I3N0ZieklSRWg4?=
 =?utf-8?B?T1BWRTVOdU5iZnM5ZFBYcENFZEdWZW50YmlsNlBtWWthYmFnYjJ3THZ2cWJF?=
 =?utf-8?B?aGt3QURraXhSZXIrMVRRZGh4Qk5IczhMcUhFdlNuVm85a1h4RURtZ2pqVHBo?=
 =?utf-8?B?cWkwODlnNDJoTEYzbGN6b0lVL1FZUlpMV1NWSWFIbS9vUnJTSFVRaTFyRkRH?=
 =?utf-8?B?bkZIcEp1ZjkxbjlSdjlpM0pBRkoyTVo2d3djckhGR0hZTWRYZWhpRS9MWWE4?=
 =?utf-8?B?MXd5WThJeEdtOWNMRHE1OWxxU0NUV25MRUtpbTJjdVVPSms3eHRuWjVxUVJX?=
 =?utf-8?B?b2xhLzNpQVZ5aGZJWHFydDFidFlGUmlWemJOK0ZPZEoyVkRuZE1OblV3QW40?=
 =?utf-8?Q?UfyQrItZ8bIp/alxfe9B7cY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb11b56e-b431-48f5-1f51-08da976c8c86
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 22:49:29.8396 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mKsokqCCzdFUeL9S6skjZ+kFP0IWNfdAx3Z5hoy2IEyJcC5HQaJ7RQmkAtFpeL8Ef7ZqUCS3/u+DV8V9U/5veT6Z5ed7lXT+JoUMBhomKDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6989
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915/perf: Fix OA filtering logic
 for GuC mode
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

On Wed, Sep 14, 2022 at 04:13:41PM -0700, Umesh Nerlige Ramappa wrote:
>On Wed, Sep 14, 2022 at 03:26:15PM -0700, Umesh Nerlige Ramappa wrote:
>>On Tue, Sep 06, 2022 at 09:39:33PM +0300, Lionel Landwerlin wrote:
>>>On 06/09/2022 20:39, Umesh Nerlige Ramappa wrote:
>>>>On Tue, Sep 06, 2022 at 05:33:00PM +0300, Lionel Landwerlin wrote:
>>>>>On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>>>>>With GuC mode of submission, GuC is in control of defining 
>>>>>>the context id field
>>>>>>that is part of the OA reports. To filter reports, UMD and 
>>>>>>KMD must know what sw
>>>>>>context id was chosen by GuC. There is not interface between 
>>>>>>KMD and GuC to
>>>>>>determine this, so read the upper-dword of EXECLIST_STATUS 
>>>>>>to filter/squash OA
>>>>>>reports for the specific context.
>>>>>>
>>>>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>>
>>>>>
>>>>>I assume you checked with GuC that this doesn't change as the 
>>>>>context is running?
>>>>
>>>>Correct.
>>>>
>>>>>
>>>>>With i915/execlist submission mode, we had to ask i915 to pin 
>>>>>the sw_id/ctx_id.
>>>>>
>>>>
>>>>From GuC perspective, the context id can change once KMD 
>>>>de-registers the context and that will not happen while the 
>>>>context is in use.
>>>>
>>>>Thanks,
>>>>Umesh
>>>
>>>
>>>Thanks Umesh,
>>>
>>>
>>>Maybe I should have been more precise in my question :
>>>
>>>
>>>Can the ID change while the i915-perf stream is opened?
>>>
>>>Because the ID not changing while the context is running makes sense.
>>>
>>>But since the number of available IDs is limited to 2k or 
>>>something on Gfx12, it's possible the GuC has to reuse IDs if too 
>>>many apps want to run during the period of time while i915-perf is 
>>>active and filtering.
>>>
>>
>>available guc ids are 64k with 4k reserved for multi-lrc, so GuC may 
>>have to reuse ids once 60k ids are used up.
>
>Spoke to the GuC team again and if there are a lot of contexts (> 60K) 
>running, there is a possibility of the context id being recycled. In 
>that case, the capture would be broken. I would track this as a 
>separate JIRA and follow up on a solution.
>
>From OA use case perspective, are we interested in monitoring just one 
>hardware context? If we make sure this context is not stolen, are we 
>good?
>

+ John

Based on John's inputs - if a context is pinned, then KMD does not steal 
it's id. It would just look for something else or wait for a context to 
be available (pin count 0 I believe).

Since we pin the context for the duration of the OA use case, we should 
be good here.

Thanks,
Umesh

>Thanks,
>Umesh
>
>>
>>Thanks,
>>Umesh
>>
>>>
>>>-Lionel
>>>
>>>
>>>>
>>>>>
>>>>>If that's not the case then filtering is broken.
>>>>>
>>>>>
>>>>>-Lionel
>>>>>
>>>>>
