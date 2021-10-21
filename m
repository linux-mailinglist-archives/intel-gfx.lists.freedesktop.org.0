Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29266436272
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 15:10:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C4176EC5F;
	Thu, 21 Oct 2021 13:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8C26EC54
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 13:10:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="252527138"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="252527138"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 06:07:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="495140952"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 21 Oct 2021 06:07:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 06:07:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 06:07:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 06:07:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kiDcp45VtwC/06oGj0HI45UR+ZZnxkdMwuuqA7w5SB4sS76Jn8ntl9KliALXHElQc/rRg/GPx5DtFugnCWNH/94czk3e/WvtE51z84BPHumaBh39dI7hfn2vkovWxNR5zYiw92yD8AAkAl4k1SuDCg9KB835ZLpaQp1l7n0706FnxzVdniHahElf5cty+2kVNlfDBWjmE4e+7EyVG6tpW7d88ecEExIo4Qz7zg+SQHI2ikDZtfITbMJDqfCJujUcPceNtaIjPkHZTg4OqmeiHBxDdoNxXJWSIOmM/DHuO2hcJgKOFVuyW01rzaYXMfePTkWDMCGjXggeg723ysJrfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ELPSLD0/+vaZaj23vZVoE6o84z6VOgyvEEkvRiPh9uI=;
 b=G41NUYJ0gU4/iUel0GQ0rGt3VFuBwqEvRgW8GK3p6z1vYimLRpyaZ8GwrRuyNg+8XhDAuSOk4uDajKRaBrBNieW6ko9fDuVxj7ZSSg+vK+jpEBVysc1yOOxeeB7Y6mglASJW3CI06Jl/PYKNa6A+dU6RudHpNSJX3daSL17ZO1xGRZSVtmT5Rcr2VHVskiU8S6PgAdZMkGM42URP1AMdO3rGD/YZ6EyXWnd4DkxwTrMZLY8eABJkUPy2mtQfBsh00L5Fk3iL6uKz4XEXISGLm70Tcvud31BGdN+NTJWj9LqOo/gREO7QczNdya23k0cg/EAXM92J3+fSO37JRkWivw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ELPSLD0/+vaZaj23vZVoE6o84z6VOgyvEEkvRiPh9uI=;
 b=BjWd+z+aBMAPYyWEo1Opgm0LqYH13tSb/JOJZBXqmDcy89UFQGdl2xzMcEtHWkWMyseJgHdoThdmrUoQhcTDm18cxzD2kb9vFx8JeBw+4IUq5eotKuZQY7/WRZWHVFFfLo1ZO3PpkCzCYjJHQMBeo1vWlc8pP02C1AVsYqB3fpY=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5460.namprd11.prod.outlook.com (2603:10b6:610:d3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16; Thu, 21 Oct
 2021 13:07:07 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633%5]) with mapi id 15.20.4628.018; Thu, 21 Oct 2021
 13:07:07 +0000
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20211001011218.276557-1-jose.souza@intel.com>
 <20211005231851.67698-1-jose.souza@intel.com>
 <41dfbcd5-736e-49fa-c870-64d1ad7d4464@intel.com>
 <9f3c65b36ef8a6709a7225302f7446658f794061.camel@intel.com>
 <06a95df1-d37f-f6e9-81cd-1af1f256c9f2@intel.com>
 <71c53299fbf288261d7ce3807439b42e09608f71.camel@intel.com>
 <8ff11fe7-cb4c-2893-9722-6103b8621e00@intel.com>
 <3d71206cc138189469f34f62461265d4f1069b30.camel@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <02179ad1-a55f-4191-fbff-644845e1e805@intel.com>
Date: Thu, 21 Oct 2021 16:06:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <3d71206cc138189469f34f62461265d4f1069b30.camel@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR07CA0201.eurprd07.prod.outlook.com
 (2603:10a6:6:42::31) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.174] (134.134.137.83) by
 DB6PR07CA0201.eurprd07.prod.outlook.com (2603:10a6:6:42::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.10 via Frontend Transport; Thu, 21 Oct 2021 13:07:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 73806235-890a-4139-8af7-08d99493af4f
X-MS-TrafficTypeDiagnostic: CH0PR11MB5460:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CH0PR11MB5460865852CBB0E421289141B8BF9@CH0PR11MB5460.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VBaeXBZAuti5aVEKjfKny4cD1AUHHXbf7IgTQPJK5LE+MJXBl9BU13hByBYgoIoYCdHu2AmiEqJc0rcJH2pkTU0bzXJmyClnCoeFKL18y3UMScqZ4P+XNI2lb9j+/zCCmVeXRK9NGZuExfph1BBZh0i5O4gp00EwhpaP8KwuYeCYYdJQluBDsxv1slRtZV3Pwe7ikdzSTVFB/SxHHFXWu3aqC3aRZ1T9rwEgpSM4PK2lA5MZCa80uk1H7ELMsAuhr5lHQ8r2v09gBbTAX2ujTwg8DrueUW2TojTqTPom6U/j3wGLs3Dj29Z6c1J1Ow8qWuTzhcejC4eUd5UMTkLty89lVdsk9ob2nb10DJTIkJZAI4UQDdQKHVTIAr33rOyTBH/WbHpdrw2Ay5hWiRtvi3PW7p3eMTYyaAX/gSWK3PsN1k4dkAAWGqX6gsKNVsVAG8YJLzXQM4FyoWvJD6KKtO0WnWUcZ7mCqnfkfyJD6rdP2Eh9H/OHLF6WhHWU3JRh1+uDS0seNd+ADQKkkAcFTn7QsN16WeVG09ajr3tMdb+7CofEk8DpvyFGcm3ceoXsYW4KewaoV/cpctmw28IkytwUTIOhyIKiF74eCgSvBmHnx4ll6gx/V8EiV8rwkewZ8HqP5Nbbjr49gONL22f44Gfoy+K2jdgWwTk8wNaLUDSusswauDTQlQmSub6IrPBz8kL62Ar7Y85k602yAlNq5JTXy3gtBYvM2BgUIHRrCCVLsCKYkFymh3Wmo4GuRROW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(26005)(6666004)(38100700002)(316002)(508600001)(186003)(4001150100001)(5660300002)(110136005)(53546011)(30864003)(31696002)(16576012)(86362001)(66946007)(66476007)(66556008)(4326008)(2616005)(31686004)(8936002)(15650500001)(82960400001)(66574015)(956004)(6486002)(2906002)(36756003)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aW1jYkZRTUNHaXA0WW1uWllQWkNRYnZHSHhlWUw0WHB1OVp4NWtYVXplK21t?=
 =?utf-8?B?c1RwNEpXQnNzN2hhZUIyWW5xL25mK29OcUtjelVxbjROL1BSTmNUNTZQS1BD?=
 =?utf-8?B?bEcrU0xONzVWVm9WTEZKa0I1aTRHSHdSd2piZlR0WE50TUNlZWVxQlh3OFBh?=
 =?utf-8?B?RUE0bW03UG9EbXVxa0xwNk5BWjJYY2wvdmw0SStxNTZxQ0YrSHd4WllGbzZW?=
 =?utf-8?B?aFBobzBEejVod3NibjNXd05PM2RJTmVIWmxlYUFFakVNNzhZTlZIL3ppQXZ3?=
 =?utf-8?B?Y2xIQTk1WEZBeThsaXgwK1Jnd29iM1ozMnlxbmpmRGZBRVFHRzRjOVhSeUxt?=
 =?utf-8?B?bnY3VEJPTG0zM2RTRkpvRzVkaUpYeTV5KzYrVlFHWGhmTHZycERHbVQrd1py?=
 =?utf-8?B?Rm9sQ0ZWeC82WWJlTEw2Yk4rWFBCSmpVbkxMZ1dON3diayszOHZXNEQvejdl?=
 =?utf-8?B?M2Q1U3VLODRBS2JuUkppNnA3dUF6K1JRbDlGUFdrc2VvYjFHQnljVHRLWDBr?=
 =?utf-8?B?a3JIeTgzZnJBeWVrMSt5L2FMby9PeHRKV1B0QzR4aGFwNmJiRnJKWlhBaFNx?=
 =?utf-8?B?eVpEVTFSS2VDaXlUYjV2SjdLTFZaK29hTG5QTEhNV3VDemZMT2VTYXQxUjQz?=
 =?utf-8?B?T0NEK29tNnpETFZ0Z1RHakRMbUhmS1lpdDhNTW8rR0Nvc015VVVzUVYxYlFZ?=
 =?utf-8?B?YlVsemZXT3VscXNCSnF4SjRyTzdjbHd5aEErdm9vOEl0dEROQ0pFUG9HdEFZ?=
 =?utf-8?B?eW1WUzVUQ1k0ZUd2VHErQk1Nd3ZUYWEvcGR5SUczWXJxSjh1bS9VYlo3c0Qv?=
 =?utf-8?B?TGRmNU5aVlhTa3Q0Y0xtdGRiK2pqK2VydnVCYnlIbFFZeC9aVlhhL3ZYdm9I?=
 =?utf-8?B?YWRxbnVCNVhkSStXdmpVdExJYU4yLzM0MGVIcDhxYm93TmR4cVRaNk9weTdD?=
 =?utf-8?B?ZWQxWXRPcWxOTk9YQklwTXVvYkJodUJFa0p1bjFDUEEvbWxkbHFpY0ZlUjhD?=
 =?utf-8?B?dGhWYnRjb3c0VUV5emlQeG9ZMEFaSGhEMVBKd3VHNDBOSjJIOC9NQjF6U0lC?=
 =?utf-8?B?Z1VTN0gwaVJBK0dxVnAxU1lUa2k5MzlkbXN1dkpNTzBmd3U2YzYycktYMEJV?=
 =?utf-8?B?b1NKQjZMbk5iekhJMGtjUWZFejZGZXhuZ29PbG9ycDhzdGxrTHZiVjRlSURh?=
 =?utf-8?B?Y3dkNmdGVFFXS0kzT3BjaHhOd0RncCthSGgyK0l4MnBsUFR6eHM2cU10N0dD?=
 =?utf-8?B?NFlUa1NhT2dhbzVGWXhYRWU1bWJneDJURWJ3YmwyQjRIb21lSExiVk1TbndZ?=
 =?utf-8?B?bzVOUE91QnRTMS8xV2pOWTE4R3A0aFBzZG92bHR4Q3kvdTVFMCtmNVB5eHd2?=
 =?utf-8?B?aTNQUDljdEpmWDhYTUFGZlR2U2c2ZWxKdlprRlROZU1aNGluMFV3Ukx5bG5F?=
 =?utf-8?B?aTcwWXgrUlNjeDNjalRkTUY4VlpRcHM3bTJvZzZKS2tVL2dyT1QyUFArdWZp?=
 =?utf-8?B?c1BPL3J0anVNOVhQR1JUeGg5aVZ6N2xsNXQzamcvU05HUzRYZzRPQS9leFhp?=
 =?utf-8?B?cWdHeW9MaHlxbTl0NzN6OTYxVHl0TVpPVnYxdENkc3M3dkpIb0VmVXBERUx5?=
 =?utf-8?B?RWZPUkNMcmU2WDJFc0w3WXFxM1pMRnFzQmpCd0dWbGIxMjZXK3hHNEQxYnhx?=
 =?utf-8?B?TElwQlQxemRqeFRxSnRpOXFtcFBMWGtBUlh5QisxdTd2NGpIT2ZLWjdDaVRv?=
 =?utf-8?B?Z0sxcGlwRU9rNzBrMlR2aVA2dUE0TGJlS1Nod0p0b2ZGeWl2bW56RmNsWnlY?=
 =?utf-8?B?T3R0Y3c5dkJCUWtwUVhKWDlxVEJ1bjJ3NHB2QjNFMklXZ2lzUWt1WGMxT3VV?=
 =?utf-8?B?ekZuYS9ZRHMwV0FweENhL09uR05EQ3FHZ2RqUVhYNnQ2dUtHOUNPYzduZk1R?=
 =?utf-8?Q?irSU0oDn1pvbjC2UsHb95Q7SOpB0+Y9q?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73806235-890a-4139-8af7-08d99493af4f
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2021 13:07:07.6216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gwan-gyeong.mun@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5460
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



On 10/14/21 12:03 AM, Souza, Jose wrote:
> On Wed, 2021-10-13 at 23:39 +0300, Gwan-gyeong Mun wrote:
>>
>> On 10/11/21 11:53 PM, Souza, Jose wrote:
>>> On Thu, 2021-10-07 at 12:31 +0300, Gwan-gyeong Mun wrote:
>>>>
>>>> On 10/6/21 11:04 PM, Souza, Jose wrote:
>>>>> On Wed, 2021-10-06 at 11:50 +0300, Gwan-gyeong Mun wrote:
>>>>>>
>>>>>> On 10/6/21 2:18 AM, José Roberto de Souza wrote:
>>>>>>> Alderlake-P was getting 'max time under evasion' messages when PSR2
>>>>>>> is enabled, this is due PIPE_SCANLINE/PIPEDSL returning 0 over a
>>>>>>> period of time longer than VBLANK_EVASION_TIME_US.
>>>>>>>
>>>>>>> For PSR1 we had the same issue so intel_psr_wait_for_idle() was
>>>>>>> implemented to wait for PSR1 to get into idle state but nothing was
>>>>>>> done for PSR2.
>>>>>>>
>>>>>>> For PSR2 we can't only wait for idle state as PSR2 tends to keep
>>>>>>> into sleep state(ready to send selective updates).
>>>>>>> Waiting for any state below deep sleep proved to be effective in
>>>>>>> avoiding the evasion messages and also not wasted a lot of time.
>>>>>>>
>>>>>>> v2:
>>>>>>> - dropping the additional wait_for loops, only the _wait_for_atomic()
>>>>>>> is necessary
>>>>>>> - waiting for states below EDP_PSR2_STATUS_STATE_DEEP_SLEEP
>>>>>>>
>>>>>>> v3:
>>>>>>> - dropping intel_wait_for_condition_atomic() function
>>>>>>>
>>>>>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>>>>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>>>>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>>>>>> ---
>>>>>>>      .../drm/i915/display/intel_display_debugfs.c  |  3 +-
>>>>>>>      drivers/gpu/drm/i915/display/intel_psr.c      | 52 +++++++++++--------
>>>>>>>      drivers/gpu/drm/i915/i915_reg.h               | 10 ++--
>>>>>>>      3 files changed, 36 insertions(+), 29 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>>>> index 309d74fd86ce1..d7dd3a57c6170 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>>>> @@ -303,8 +303,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
>>>>>>>      };
>>>>>>>      val = intel_de_read(dev_priv,
>>>>>>>          EDP_PSR2_STATUS(intel_dp->psr.transcoder));
>>>>>>> -status_val = (val & EDP_PSR2_STATUS_STATE_MASK) >>
>>>>>>> -      EDP_PSR2_STATUS_STATE_SHIFT;
>>>>>>> +status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
>>>>>>>      if (status_val < ARRAY_SIZE(live_status))
>>>>>>>      status = live_status[status_val];
>>>>>>>      } else {
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>>>> index 7a205fd5023bb..ade514fc0a24d 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>>>> @@ -1809,15 +1809,21 @@ void intel_psr_post_plane_update(const struct intel_atomic_state *state)
>>>>>>>      _intel_psr_post_plane_update(state, crtc_state);
>>>>>>>      }
>>>>>>>
>>>>>>> -/**
>>>>>>> - * psr_wait_for_idle - wait for PSR1 to idle
>>>>>>> - * @intel_dp: Intel DP
>>>>>>> - * @out_value: PSR status in case of failure
>>>>>>> - *
>>>>>>> - * Returns: 0 on success or -ETIMEOUT if PSR status does not idle.
>>>>>>> - *
>>>>>>> - */
>>>>>>> -static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
>>>>>>> +static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
>>>>>>> +{
>>>>>>> +struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>>>>>> +
>>>>>>> +/*
>>>>>>> + * Any state lower than EDP_PSR2_STATUS_STATE_DEEP_SLEEP is enough.
>>>>>>> + * As all higher states has bit 4 of PSR2 state set we can just wait for
>>>>>>> + * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
>>>>>>> + */
>>>>>>> +return intel_de_wait_for_clear(dev_priv,
>>>>>>> +       EDP_PSR2_STATUS(intel_dp->psr.transcoder),
>>>>>>> +       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
>>>>>> Under the DEEP_SLEEP state, there are IDLE, CAPTURE, CPTURE_FS, SLEEP,
>>>>>> BUFON_FW, ML_UP, SU_STANDBY, etc. In this case, whether the evasion
>>>>>> messages are completely tested in the state that changes quickly I think
>>>>>> the test period is a little insufficient.
>>>>>
>>>>> What is your suggestion of test for this?
>>>>>
>>>>> I left my Alderlake-P running overnight(more than 12 hours) with a News website open.
>>>>> This website reloads the page at every 5 minutes, so it entered and exited DC5/6 states several times without any evasion messages.
>>>>>
>>>>>> I think it may be necessary to test a little more or to have
>>>>>> confirmation from the HW person in charge.
>>>>>
>>>>> I can file an issue for this but it will probably several weeks to get an answer.
>>>>>
>>>> Yes, I am not disparaging what you tested.
>>>> However, since the current code confirms that only the 31st bit of the
>>>> PSR2_STATUS register is changed to 0 operationally,
>>>> it does not guarantee that the tested use cases have been tested for
>>>> IDLE, CAPTURE, CPTURE_FS, SLEEP, BUFON_FW, ML_UP, SU_STANDBY, and
>>>> FAST_SLEEP states.
>>>>
>>>> I can't think of a way to test each of the above states right now, but
>>>> what I can suggest is that "intel_de_wait_for_clear(dev_priv,
>>>> EDP_PSR2_STATUS(intel_dp->psr.transcoder),
>>>> EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50)" works normally. After that, can
>>>> you put a code that prints the current PSR2 status?
>>>>
>>>> If so, I think it will be easy to analyze the problem in case evasion
>>>> messages occur again after this code is applied later.
>>>> If additional confirmation from the responsible HW developer is received
>>>> at a later time, it is thought that future work such as deleting the
>>>> code that outputs the newly added current PSR Status at that time will
>>>> be possible.
>>>
>>> Print the PSR status at every flip is too verbose.
>>>
>>> Other option would be print the PSR status in case a evasion happened but that would not give us much information as the status would have changed
>>> between intel_pipe_update_start() and intel_pipe_update_end().
>>>
>>> The current solution is better than no wait and if evasion messages comes back we can be more restrictive and make it wait for idle or sleep PSR2
>>> states.
>>> Rather than not waiting here, I agree to wait.
>> But unless you're just waiting for an IDLE state here,
>> when an evasion message occurs in CAPTURE, CPTURE_FS, SLEEP, BUFON_FW,
>> ML_UP, SU_STANDBY, and FAST_SLEEP states, isn't it hard to know what
>> caused the problem?
>> (If there is a problem, we need to reproduce the problem again, but if
>> there is a problem at a certain time, you know that it is difficult to
>> reproduce.)
> 
> We can't only wait for idle, when PSR2 is active it stays at sleep state.
> If a evasion happens and state is in CAPTURE do you know for sure what are the previous states of CAPTURE?
> I can have some assumptions but not sure and specification don't have this information too.
> 
> ChromeOS reported evasion errors in their end today, their branch did not had this patch so we can't wait several weeks to get an answer from HW team.
> Windows driver uses DMC queue to do flips, so we can't even check what Windows driver does.
> 
Hi, today I got the confirmation from HW's responsible developer.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

And if you don't mind could you add the below comments to the commit 
messages or comments?

The timing generator affects the return value of PIPE_SCANLINE/PIPEDSL.
When the PSR2 is going to Deep Sleep state, the timing generator turns off.
And after the time to wake the link back up (it depends on PSR2_CTL[TP2 
Time]), the timing generator will be turned back.

the below-listed states are the PSR2 states where the timing generator 
is still running.
therefore it is safe to use the value of PIPE_SCANLINE/PIPEDSL when 
PSR2_STATUS[PSR2 State] indicates these states.
: IDLE, CAPTURE, CPTURE_FS, SLEEP, BUFON_FW, ML_UP, SU_STANDBY.

Thanks,
G.G.
>>
>> If you can't add additional debugging information here, IMHO how about
>> applying this patch after getting confirmation from the HW person as
>> mentioned in the previous email?
>>
>> Br,
>> G.G.
>>>>
>>>> Br,
>>>> G.G.
>>>>>>
>>>>>> [PSR2_STATUS]
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> Value |    Name    | Description                                     |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 0000b|    IDLE    | Reset state                                     |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 0001b|   CAPTURE  | Send capture frame                              |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 0010b|  CPTURE_FS | Fast sleep after capture frame is sent          |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 0011b|    SLEEP   | Selective Update                                |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 0100b|   BUFON_FW | Turn Buffer on and Send Fast wake               |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 0101b|    ML_UP   | Turn Main link up and send SR                   |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 0110b| SU_STANDBY | Selective update or Standby state               |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 0111b| FAST_SLEEP | Send Fast sleep                                 |
>>>>>>
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 1000b| DEEP_SLEEP | Enter Deep sleep                                |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 1001b|   BUF_ON   | Turn ON IO Buffer                               |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 1010b|   TG_ON    | Turn ON Timing Generator                        |
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> 1011b| BUFON_FW_2 |Turn Buffer on and Send Fast wake for 3 BlockCase|
>>>>>> +-------+------------+-------------------------------------------------+
>>>>>>> +}
>>>>>>> +
>>>>>>> +static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
>>>>>>>      {
>>>>>>>      struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>>>>>>
>>>>>>> @@ -1827,15 +1833,13 @@ static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
>>>>>>>       * exit training time + 1.5 ms of aux channel handshake. 50 ms is
>>>>>>>       * defensive enough to cover everything.
>>>>>>>       */
>>>>>>> -return __intel_wait_for_register(&dev_priv->uncore,
>>>>>>> - EDP_PSR_STATUS(intel_dp->psr.transcoder),
>>>>>>> - EDP_PSR_STATUS_STATE_MASK,
>>>>>>> - EDP_PSR_STATUS_STATE_IDLE, 2, 50,
>>>>>>> - out_value);
>>>>>>> +return intel_de_wait_for_clear(dev_priv,
>>>>>>> +       EDP_PSR_STATUS(intel_dp->psr.transcoder),
>>>>>>> +       EDP_PSR_STATUS_STATE_MASK, 50);
>>>>>>>      }
>>>>>>>
>>>>>>>      /**
>>>>>>> - * intel_psr_wait_for_idle - wait for PSR1 to idle
>>>>>>> + * intel_psr_wait_for_idle - wait for PSR be ready for a pipe update
>>>>>>>       * @new_crtc_state: new CRTC state
>>>>>>>       *
>>>>>>>       * This function is expected to be called from pipe_update_start() where it is
>>>>>>> @@ -1852,19 +1856,23 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
>>>>>>>      for_each_intel_encoder_mask_with_psr(&dev_priv->drm, encoder,
>>>>>>>           new_crtc_state->uapi.encoder_mask) {
>>>>>>>      struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>>>>>> -u32 psr_status;
>>>>>>> +int ret;
>>>>>>>
>>>>>>>      mutex_lock(&intel_dp->psr.lock);
>>>>>>> -if (!intel_dp->psr.enabled || intel_dp->psr.psr2_enabled) {
>>>>>>> +
>>>>>>> +if (!intel_dp->psr.enabled) {
>>>>>>>      mutex_unlock(&intel_dp->psr.lock);
>>>>>>>      continue;
>>>>>>>      }
>>>>>>>
>>>>>>> -/* when the PSR1 is enabled */
>>>>>>> -if (psr_wait_for_idle(intel_dp, &psr_status))
>>>>>>> -drm_err(&dev_priv->drm,
>>>>>>> -"PSR idle timed out 0x%x, atomic update may fail\n",
>>>>>>> -psr_status);
>>>>>>> +if (intel_dp->psr.psr2_enabled)
>>>>>>> +ret = _psr2_ready_for_pipe_update_locked(intel_dp);
>>>>>>> +else
>>>>>>> +ret = _psr1_ready_for_pipe_update_locked(intel_dp);
>>>>>>> +
>>>>>>> +if (ret)
>>>>>>> +drm_err(&dev_priv->drm, "PSR wait timed out, atomic update may fail\n");
>>>>>>> +
>>>>>>>      mutex_unlock(&intel_dp->psr.lock);
>>>>>>>      }
>>>>>>>      }
>>>>>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>>>>>> index a897f4abea0c3..e101579d3a4d8 100644
>>>>>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>>>>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>>>>>> @@ -4700,11 +4700,11 @@ enum {
>>>>>>>      #define  PSR_EVENT_LPSP_MODE_EXIT(1 << 1)
>>>>>>>      #define  PSR_EVENT_PSR_DISABLE(1 << 0)
>>>>>>>
>>>>>>> -#define _PSR2_STATUS_A0x60940
>>>>>>> -#define _PSR2_STATUS_EDP0x6f940
>>>>>>> -#define EDP_PSR2_STATUS(tran)_MMIO_TRANS2(tran, _PSR2_STATUS_A)
>>>>>>> -#define EDP_PSR2_STATUS_STATE_MASK     (0xf << 28)
>>>>>>> -#define EDP_PSR2_STATUS_STATE_SHIFT    28
>>>>>>> +#define _PSR2_STATUS_A0x60940
>>>>>>> +#define _PSR2_STATUS_EDP0x6f940
>>>>>>> +#define EDP_PSR2_STATUS(tran)_MMIO_TRANS2(tran, _PSR2_STATUS_A)
>>>>>>> +#define EDP_PSR2_STATUS_STATE_MASKREG_GENMASK(31, 28)
>>>>>>> +#define EDP_PSR2_STATUS_STATE_DEEP_SLEEPREG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
>>>>>>>
>>>>>>>      #define _PSR2_SU_STATUS_A0x60914
>>>>>>>      #define _PSR2_SU_STATUS_EDP0x6f914
>>>>>>>
>>>>>
>>>
> 
