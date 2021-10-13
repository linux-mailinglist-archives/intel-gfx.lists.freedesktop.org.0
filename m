Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C43C042CC24
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 22:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58C66EB62;
	Wed, 13 Oct 2021 20:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2046EB62
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 20:53:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="224981328"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="224981328"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 13:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="524779096"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 13 Oct 2021 13:39:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 13:39:27 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 13:39:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 13 Oct 2021 13:39:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 13 Oct 2021 13:39:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GXOhXZguIYzdVSQ06lcbRaLSRJ7W92+4gQuuhik3l7/+M6lu5hj5JxnAhqssKnVQ7cNXWQL5BYA5R7AbP4Pplcm5pH005IMEen5u00y6O/c0dBppP7c6UO/AeGuAwEfQ0Ajma3LrnSPQ+bCsOF+2u+2hvAk81hYwobF5xFJ0uUb8+ectug0EI01sk3/esEGxS1S+Q8z4IsDP1ZWdd9SmK5hp8vC9RWac903bEl+YqFk0E2ontF/vBtZDlNm21w5Fp/rjbyYO/KTjT2wshVK7c3b7efdKFh6aIeXzwgpq2W3RhxJF9kGdRKhOnW3D1RNfYua9KZIVBqzM/kQr7p71gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5UcWoWm2f1L3X8wrQGIj9VzAtTjxDsbw7I7noGUH1dw=;
 b=mpPuySnoNVBc8wyQrF7DNyDNtBXMiarCHCbqtHhmSoJhAUkmxSzptbQ6YPeBSggQQ5ouK41NWQIXKFPDZRvBSELJ/eW3eJZpoysEz9epospYt2bM7+WGqSV0ZzoR+IzbBtIHNQ4Krmujwgyroo6tH25Oqwk+CM0zfeD5Loz1m4FJVNqcAWInQXwQx+OM+t1MmKiEpvXLNX67JHbr5EKewkvATI4zp2lvNwWFt+Z1JBG5fukiz9qAuxCiPY3rtEgED0IROmzEToVZqna+j9C5ksSw+C2ajZ+E1j1Gj3GWA3FN3VN5US96MeHb3pMiczrxAK1LZ2ebf2CkpTp+nnlr1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5UcWoWm2f1L3X8wrQGIj9VzAtTjxDsbw7I7noGUH1dw=;
 b=m3eRdhnLByjx/LyXLTyo9jzLwn222YH5YDASp+BLLYKqQlgOu9i3uHCEeeFY+zW8m9xF/ARKLR/DEZiAua7V+5mYPjQs75oCQtGmPWnh1/B3yaVDfg40b2CSzMx21roVPMKRqt6vqg9CNDVnKtrR5YrrsGtKsreEVPwzIEGgKJA=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4247.namprd11.prod.outlook.com (2603:10b6:610:42::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Wed, 13 Oct
 2021 20:39:24 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633%5]) with mapi id 15.20.4608.016; Wed, 13 Oct 2021
 20:39:24 +0000
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20211001011218.276557-1-jose.souza@intel.com>
 <20211005231851.67698-1-jose.souza@intel.com>
 <41dfbcd5-736e-49fa-c870-64d1ad7d4464@intel.com>
 <9f3c65b36ef8a6709a7225302f7446658f794061.camel@intel.com>
 <06a95df1-d37f-f6e9-81cd-1af1f256c9f2@intel.com>
 <71c53299fbf288261d7ce3807439b42e09608f71.camel@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <8ff11fe7-cb4c-2893-9722-6103b8621e00@intel.com>
Date: Wed, 13 Oct 2021 23:39:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <71c53299fbf288261d7ce3807439b42e09608f71.camel@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6P192CA0002.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::12)
 To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.174] (134.134.139.70) by
 DB6P192CA0002.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.15 via Frontend Transport; Wed, 13 Oct 2021 20:39:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a796f3d1-14cd-405e-4da3-08d98e898af0
X-MS-TrafficTypeDiagnostic: CH2PR11MB4247:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB4247E6D7BEA7F986453870E9B8B79@CH2PR11MB4247.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bc+XNjUDqbXTMV13qdCJeaMf0Cbi3z8JkCDz3SBjTROCn/CQ39Ob6s+cuvurj54TnmnB6C2kG33JnfPvs5+h2vrkVQxeC5MmbvADDrA3SkCwyTE2aPE+Z0UnpZATUiIx8+m13Y9khNhz4b7YKhv4ZdCf8M8mcb+l1L+w6u6gjp/u53QB7H39EdZBnwIa0XMAJRTrurnMKoL9FUVW9ZNuenScKxvz0g6+v5aJTKFjo9zcKJv7Etjnss3zYhMw28hr5oqaK7tcOjY0TeH63qsEaf/pzRHBig6ofApaYGm5HYzysDew9v1TqbQCGt4ESsT1mFj3NDC2mB36I3dP/XR/xjXDRd/2XiHigXFDyO9y5olLKLQJTCRMcitVqh2rlhNpigIRX64NwTRFwRDGVjPH4KHOskvf3IIB/hEyvqqBlv6C+Nn+d7z4HCwa8iO2JOSZzgOviecJS0VSuAslUPV25PNu1Z79m5nGZs7MjKxEMyCgcJY6daaXL7p/8NY8Q/wP3bHXK/dUDJWV5/pyxwrgNY8RHXs57UeZdNTlgYTyQpshkXN2VIY9Ai6I8Nw+O6af2Eid1gMCmEJK/4uqlS15dRWLqjMireKqhqHCBvCChAhJRBocbPEm2LQXOLWYF2t89LDrXu9VfQLc5cUOWHZVS5TDkZ5cyRwVwii+Lt9d/l6sgF+x35nSeUjPyQlnfZQJTBLtrxXGAnmvJKKSeMOwB0fCU/TmSCKbf4cdPMhD7Is=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66946007)(66556008)(5660300002)(66476007)(82960400001)(8936002)(8676002)(6666004)(6486002)(16576012)(86362001)(508600001)(53546011)(316002)(36756003)(2906002)(38100700002)(83380400001)(26005)(66574015)(31696002)(186003)(2616005)(30864003)(956004)(31686004)(15650500001)(4326008)(110136005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFpPNDBrYzBxRnYxQUxhWkZnSTdRWHZPTWhsR0xlQW91UmEveHM0MnM2QVc4?=
 =?utf-8?B?T0sxUWxyYnEzQUY5bytyTjJYRTZLYXVML3lJMTlYUCtoSC9Hc1RWSkZkVjc2?=
 =?utf-8?B?SjV3dW44YkRZQUlGTElKT0htWU1wcnJ3QzBjMUlXOGc5ME5tYVJRS3NmejFY?=
 =?utf-8?B?eWZ1TEJRN1JZdWgycFM0ZHRydkx2cW5xdkRWOGVqZllGN0pOaHkyMHlNcnBW?=
 =?utf-8?B?MmpnUWkvYTVIK1dCYVZ0MUNxdmpXNXV1dlNJWlNvQW9WQmZXeVdwbnJZbTlh?=
 =?utf-8?B?aFRaU3d1UWNzZTl1aWZoOHhYVXl4N0lhVUVuL3g2VXpFOHBMVG9SdFVkTWFZ?=
 =?utf-8?B?L2hURkdmV3JkY0NObW5BcG1aUDZpQVgwZDllcUhxbkhjaW1nYnpxMFUzMFZ5?=
 =?utf-8?B?TU8rbXZVcGRLL1NSa3I3cnZERENkWFBUa0EzWG9tdEd0MUpQSGQxcUhCNTZ2?=
 =?utf-8?B?WitFZzVha0t6Njk3aDc3R25qU29zdlhaR3c2M21OU2dOL0lxblpCVXZVMEMx?=
 =?utf-8?B?LzdYRS9nNSttZkRrQlY4dnh6a3BTZkpOZXhzcVRqM0ZrYXByQ2lvWkRBUFZJ?=
 =?utf-8?B?U2c3MDRIRjFpVkVibG0rd2NMVEJqeUppNEtWSk9HLzBrUnRoS0hJZ3NqUGEw?=
 =?utf-8?B?SkpoMEdka1llcUNHYVBWdklZNEFZOHhUenI5SnNzMVc4aFVJV3FhUVk0by9Q?=
 =?utf-8?B?Umlad0JLRHB1ZFlzTVRsT2VtbnFnMFhyTjZickdLNGdvcitRNFFyTEI4R2Jp?=
 =?utf-8?B?cDVDNUlnWFhYSklib3JQK1ZkMzhITEdXZGlZNFl2KzhSaVQxNVpGWm9KM0Z2?=
 =?utf-8?B?cGhOdzBWL2l2TmVqQ3kvYW1qOHBCZG9kaTlrU1NNYWFkZUtJNVVLN0pZWUd6?=
 =?utf-8?B?Q2tGMFY2anVyUGE5YTVTQlp3ZVppdXVhQUpqa0VFY040MVp6VjNNQ3Q3bndH?=
 =?utf-8?B?YzJiMWx3NEo1RndVV05xWHY3L1ZkVmZYNjRCSjVQSCtoOE5FcXg0SFpMQWp0?=
 =?utf-8?B?NzI3SUtlYjRseE1sNWVUWDF6QnZ0VFd1cXhBRTlmS1pqR2hjMVlJN3hTNVdo?=
 =?utf-8?B?TUV5Z3A5NHAzMWRZTXFsS2wwUXVwUzdXRDZycXE4MFQzZHl3Q3g3QjN2aEtw?=
 =?utf-8?B?alJkV25ScGpiN0kwODdnY25PVGxhWUNVc1VqcElTNTRMWWxzYmtmMzYzK2c4?=
 =?utf-8?B?cGFwZkhpWm91Rlp5S3hQMitsT09vSDkyQUNLdjk4Tjlkc21Pd2hGS0l4dkxZ?=
 =?utf-8?B?bUtEdDE2TVBQYlZvMjZYeVB1U1VMRFZLenU1RXRJejJ1amZOVG1iVUd6MTdJ?=
 =?utf-8?B?bUt3YlJhYVVULzRMR29YazREZHRsTHphWjVPZktxeGVaTk9hbVVTR2Z3UWo1?=
 =?utf-8?B?OGRLVFpGalFobSthNjBEMDNmQnRxaXBVNW9IeEtweU1QdVB0eUp4dlVra0RP?=
 =?utf-8?B?cldJdm5qZElET292ei85Y0R4cVgxbk9CUWNKeC9LZDFwclZ2NWFrc1ZhREt3?=
 =?utf-8?B?MHpwMkI0RGxwRW8rR25YWDFKTjl6eVA4RVRrbmZKV1MrR2Jsc0RGSy9STTRt?=
 =?utf-8?B?UE1oczdpY0MyMUlNQmVJNHJjVTYxWWJCQUlxWWhvWW1NS1R2RU4vTVNGTnBT?=
 =?utf-8?B?dlBySXFkOFZKVHhsTnpPSmJTQ2t0ZldoRXNlbFNid0F2R25tVVY0SGp3TVpN?=
 =?utf-8?B?UUtFUEV4aVZMNHFJbWNQcEcyRW9NMzVXS0xheWUzQStuekxVYitESC9BOWVE?=
 =?utf-8?Q?+OboT/pGE2QeswHjr++Ei0tp7mWxxJ/A/6MgqDs?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a796f3d1-14cd-405e-4da3-08d98e898af0
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 20:39:24.6435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yydXO+rR8Cb5IaW5LG6KoL7XUiTiOlbkP5Ct34444iNvDtP2VHoGRn0EqNnaNYwT7bVUMeN+qihZ4PxXXO3h+ccQBGjxJVTJwC76JeZ/w5Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4247
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Wait PSR2 get out of
 deep sleep to update pipe
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



On 10/11/21 11:53 PM, Souza, Jose wrote:
> On Thu, 2021-10-07 at 12:31 +0300, Gwan-gyeong Mun wrote:
>>
>> On 10/6/21 11:04 PM, Souza, Jose wrote:
>>> On Wed, 2021-10-06 at 11:50 +0300, Gwan-gyeong Mun wrote:
>>>>
>>>> On 10/6/21 2:18 AM, José Roberto de Souza wrote:
>>>>> Alderlake-P was getting 'max time under evasion' messages when PSR2
>>>>> is enabled, this is due PIPE_SCANLINE/PIPEDSL returning 0 over a
>>>>> period of time longer than VBLANK_EVASION_TIME_US.
>>>>>
>>>>> For PSR1 we had the same issue so intel_psr_wait_for_idle() was
>>>>> implemented to wait for PSR1 to get into idle state but nothing was
>>>>> done for PSR2.
>>>>>
>>>>> For PSR2 we can't only wait for idle state as PSR2 tends to keep
>>>>> into sleep state(ready to send selective updates).
>>>>> Waiting for any state below deep sleep proved to be effective in
>>>>> avoiding the evasion messages and also not wasted a lot of time.
>>>>>
>>>>> v2:
>>>>> - dropping the additional wait_for loops, only the _wait_for_atomic()
>>>>> is necessary
>>>>> - waiting for states below EDP_PSR2_STATUS_STATE_DEEP_SLEEP
>>>>>
>>>>> v3:
>>>>> - dropping intel_wait_for_condition_atomic() function
>>>>>
>>>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>>>> ---
>>>>>     .../drm/i915/display/intel_display_debugfs.c  |  3 +-
>>>>>     drivers/gpu/drm/i915/display/intel_psr.c      | 52 +++++++++++--------
>>>>>     drivers/gpu/drm/i915/i915_reg.h               | 10 ++--
>>>>>     3 files changed, 36 insertions(+), 29 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>> index 309d74fd86ce1..d7dd3a57c6170 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>> @@ -303,8 +303,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
>>>>>     };
>>>>>     val = intel_de_read(dev_priv,
>>>>>         EDP_PSR2_STATUS(intel_dp->psr.transcoder));
>>>>> -status_val = (val & EDP_PSR2_STATUS_STATE_MASK) >>
>>>>> -      EDP_PSR2_STATUS_STATE_SHIFT;
>>>>> +status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
>>>>>     if (status_val < ARRAY_SIZE(live_status))
>>>>>     status = live_status[status_val];
>>>>>     } else {
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> index 7a205fd5023bb..ade514fc0a24d 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> @@ -1809,15 +1809,21 @@ void intel_psr_post_plane_update(const struct intel_atomic_state *state)
>>>>>     _intel_psr_post_plane_update(state, crtc_state);
>>>>>     }
>>>>>
>>>>> -/**
>>>>> - * psr_wait_for_idle - wait for PSR1 to idle
>>>>> - * @intel_dp: Intel DP
>>>>> - * @out_value: PSR status in case of failure
>>>>> - *
>>>>> - * Returns: 0 on success or -ETIMEOUT if PSR status does not idle.
>>>>> - *
>>>>> - */
>>>>> -static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
>>>>> +static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
>>>>> +{
>>>>> +struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>>>> +
>>>>> +/*
>>>>> + * Any state lower than EDP_PSR2_STATUS_STATE_DEEP_SLEEP is enough.
>>>>> + * As all higher states has bit 4 of PSR2 state set we can just wait for
>>>>> + * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
>>>>> + */
>>>>> +return intel_de_wait_for_clear(dev_priv,
>>>>> +       EDP_PSR2_STATUS(intel_dp->psr.transcoder),
>>>>> +       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
>>>> Under the DEEP_SLEEP state, there are IDLE, CAPTURE, CPTURE_FS, SLEEP,
>>>> BUFON_FW, ML_UP, SU_STANDBY, etc. In this case, whether the evasion
>>>> messages are completely tested in the state that changes quickly I think
>>>> the test period is a little insufficient.
>>>
>>> What is your suggestion of test for this?
>>>
>>> I left my Alderlake-P running overnight(more than 12 hours) with a News website open.
>>> This website reloads the page at every 5 minutes, so it entered and exited DC5/6 states several times without any evasion messages.
>>>
>>>> I think it may be necessary to test a little more or to have
>>>> confirmation from the HW person in charge.
>>>
>>> I can file an issue for this but it will probably several weeks to get an answer.
>>>
>> Yes, I am not disparaging what you tested.
>> However, since the current code confirms that only the 31st bit of the
>> PSR2_STATUS register is changed to 0 operationally,
>> it does not guarantee that the tested use cases have been tested for
>> IDLE, CAPTURE, CPTURE_FS, SLEEP, BUFON_FW, ML_UP, SU_STANDBY, and
>> FAST_SLEEP states.
>>
>> I can't think of a way to test each of the above states right now, but
>> what I can suggest is that "intel_de_wait_for_clear(dev_priv,
>> EDP_PSR2_STATUS(intel_dp->psr.transcoder),
>> EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50)" works normally. After that, can
>> you put a code that prints the current PSR2 status?
>>
>> If so, I think it will be easy to analyze the problem in case evasion
>> messages occur again after this code is applied later.
>> If additional confirmation from the responsible HW developer is received
>> at a later time, it is thought that future work such as deleting the
>> code that outputs the newly added current PSR Status at that time will
>> be possible.
> 
> Print the PSR status at every flip is too verbose.
> 
> Other option would be print the PSR status in case a evasion happened but that would not give us much information as the status would have changed
> between intel_pipe_update_start() and intel_pipe_update_end().
> 
> The current solution is better than no wait and if evasion messages comes back we can be more restrictive and make it wait for idle or sleep PSR2
> states.
> Rather than not waiting here, I agree to wait.
But unless you're just waiting for an IDLE state here,
when an evasion message occurs in CAPTURE, CPTURE_FS, SLEEP, BUFON_FW, 
ML_UP, SU_STANDBY, and FAST_SLEEP states, isn't it hard to know what 
caused the problem?
(If there is a problem, we need to reproduce the problem again, but if 
there is a problem at a certain time, you know that it is difficult to 
reproduce.)

If you can't add additional debugging information here, IMHO how about 
applying this patch after getting confirmation from the HW person as 
mentioned in the previous email?

Br,
G.G.
>>
>> Br,
>> G.G.
>>>>
>>>> [PSR2_STATUS]
>>>> +-------+------------+-------------------------------------------------+
>>>>> Value |    Name    | Description                                     |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 0000b|    IDLE    | Reset state                                     |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 0001b|   CAPTURE  | Send capture frame                              |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 0010b|  CPTURE_FS | Fast sleep after capture frame is sent          |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 0011b|    SLEEP   | Selective Update                                |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 0100b|   BUFON_FW | Turn Buffer on and Send Fast wake               |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 0101b|    ML_UP   | Turn Main link up and send SR                   |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 0110b| SU_STANDBY | Selective update or Standby state               |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 0111b| FAST_SLEEP | Send Fast sleep                                 |
>>>>
>>>> +-------+------------+-------------------------------------------------+
>>>>> 1000b| DEEP_SLEEP | Enter Deep sleep                                |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 1001b|   BUF_ON   | Turn ON IO Buffer                               |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 1010b|   TG_ON    | Turn ON Timing Generator                        |
>>>> +-------+------------+-------------------------------------------------+
>>>>> 1011b| BUFON_FW_2 |Turn Buffer on and Send Fast wake for 3 BlockCase|
>>>> +-------+------------+-------------------------------------------------+
>>>>> +}
>>>>> +
>>>>> +static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
>>>>>     {
>>>>>     struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>>>>
>>>>> @@ -1827,15 +1833,13 @@ static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
>>>>>      * exit training time + 1.5 ms of aux channel handshake. 50 ms is
>>>>>      * defensive enough to cover everything.
>>>>>      */
>>>>> -return __intel_wait_for_register(&dev_priv->uncore,
>>>>> - EDP_PSR_STATUS(intel_dp->psr.transcoder),
>>>>> - EDP_PSR_STATUS_STATE_MASK,
>>>>> - EDP_PSR_STATUS_STATE_IDLE, 2, 50,
>>>>> - out_value);
>>>>> +return intel_de_wait_for_clear(dev_priv,
>>>>> +       EDP_PSR_STATUS(intel_dp->psr.transcoder),
>>>>> +       EDP_PSR_STATUS_STATE_MASK, 50);
>>>>>     }
>>>>>
>>>>>     /**
>>>>> - * intel_psr_wait_for_idle - wait for PSR1 to idle
>>>>> + * intel_psr_wait_for_idle - wait for PSR be ready for a pipe update
>>>>>      * @new_crtc_state: new CRTC state
>>>>>      *
>>>>>      * This function is expected to be called from pipe_update_start() where it is
>>>>> @@ -1852,19 +1856,23 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
>>>>>     for_each_intel_encoder_mask_with_psr(&dev_priv->drm, encoder,
>>>>>          new_crtc_state->uapi.encoder_mask) {
>>>>>     struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>>>> -u32 psr_status;
>>>>> +int ret;
>>>>>
>>>>>     mutex_lock(&intel_dp->psr.lock);
>>>>> -if (!intel_dp->psr.enabled || intel_dp->psr.psr2_enabled) {
>>>>> +
>>>>> +if (!intel_dp->psr.enabled) {
>>>>>     mutex_unlock(&intel_dp->psr.lock);
>>>>>     continue;
>>>>>     }
>>>>>
>>>>> -/* when the PSR1 is enabled */
>>>>> -if (psr_wait_for_idle(intel_dp, &psr_status))
>>>>> -drm_err(&dev_priv->drm,
>>>>> -"PSR idle timed out 0x%x, atomic update may fail\n",
>>>>> -psr_status);
>>>>> +if (intel_dp->psr.psr2_enabled)
>>>>> +ret = _psr2_ready_for_pipe_update_locked(intel_dp);
>>>>> +else
>>>>> +ret = _psr1_ready_for_pipe_update_locked(intel_dp);
>>>>> +
>>>>> +if (ret)
>>>>> +drm_err(&dev_priv->drm, "PSR wait timed out, atomic update may fail\n");
>>>>> +
>>>>>     mutex_unlock(&intel_dp->psr.lock);
>>>>>     }
>>>>>     }
>>>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>>>> index a897f4abea0c3..e101579d3a4d8 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>>>> @@ -4700,11 +4700,11 @@ enum {
>>>>>     #define  PSR_EVENT_LPSP_MODE_EXIT(1 << 1)
>>>>>     #define  PSR_EVENT_PSR_DISABLE(1 << 0)
>>>>>
>>>>> -#define _PSR2_STATUS_A0x60940
>>>>> -#define _PSR2_STATUS_EDP0x6f940
>>>>> -#define EDP_PSR2_STATUS(tran)_MMIO_TRANS2(tran, _PSR2_STATUS_A)
>>>>> -#define EDP_PSR2_STATUS_STATE_MASK     (0xf << 28)
>>>>> -#define EDP_PSR2_STATUS_STATE_SHIFT    28
>>>>> +#define _PSR2_STATUS_A0x60940
>>>>> +#define _PSR2_STATUS_EDP0x6f940
>>>>> +#define EDP_PSR2_STATUS(tran)_MMIO_TRANS2(tran, _PSR2_STATUS_A)
>>>>> +#define EDP_PSR2_STATUS_STATE_MASKREG_GENMASK(31, 28)
>>>>> +#define EDP_PSR2_STATUS_STATE_DEEP_SLEEPREG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
>>>>>
>>>>>     #define _PSR2_SU_STATUS_A0x60914
>>>>>     #define _PSR2_SU_STATUS_EDP0x6f914
>>>>>
>>>
> 
