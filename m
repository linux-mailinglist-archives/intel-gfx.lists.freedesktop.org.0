Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 349D15ECF59
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 23:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0185210E13E;
	Tue, 27 Sep 2022 21:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DCF310E139
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 21:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664314592; x=1695850592;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FUTF6+F81/iy1b2GEo3TT7SMcUsQbKfrmri1PDHVOWU=;
 b=fQGor/o6rL6udambln8CGUYoLOuGlWpQbBavwe5+7SKXrlTVPK14svPE
 YkTl8rrvt+qeJF1dGgK6mPVmEPjRTgxoZDHHy7XKYXG4sY2q+qgENT2kG
 hQnyyTLik2P3aWqsPW0NVDgqh+AZsbzdogRAYMe17qhSjk79jTPvKP/0l
 sPe+S5odgTcwZxDZ249ZNqzrVOE1h929SLmRdkGXj2SoTyDqznm0HF33P
 KF8n2PWpiDZeOAVZCNCQscNibUcvNtn0EXbx8t8KGY8NrmKOfhvwWUPrY
 eEceoj0MDQU0DEbmMwberDoCRZ+nWfCT6U+359wUd3n1i4I1E3rZyWzOS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="288591540"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="288591540"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 14:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="623906096"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="623906096"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 27 Sep 2022 14:36:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 14:36:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 14:36:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 14:36:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 14:36:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MMG6LFSwDD/1My2r3Pvhjwy6chaAtxizlIzGuNjD3rkFkEcBrnwTaTUQQLoer0EcYdaIG0eIbWnoNE0RKza6XOMvKVOvYbH05AenPaqe3OmUyU9hrIHnqXuPO4EaHbKyIspJRvGs7CT2e7YMi64NvL2pxJsB5zqmTC4vA+xX+TcDBc5N7ataawKelYPo0xnsVLYStG8BhzwNsAQWXBdlmtGK8SmUvSD2uSihBrTc5Y9JtEQMokeaX6Pgzo+eaJvY4qbngHG3nObGGBqkZ5ZHyePHjNtkHdfKvGD32lXns4P/ukYzuKyol3hRDsHhnmLTczgb2SWDCRgNs/rytha6lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kewSwE+NoxEPBFjClP3VJSfeYsNhElHze0OIst950KU=;
 b=SnJ417Jc9HwIgni7enqrV4b3qeXUwXVE673P2meeruki00SwcnzV8n697go+z4oPtdjvGpBYiFfXc6MCIsnf6AVNogZs415uYcSM7jCTSh1PuFT/6OkGe+bY9/E65rvFB9trPShS9AZMdtm+GS3b+k56DyxLoYtaG7QYVZzZW5wyDy4dyQEhA3Veuzyx0nekEQDrj71aepeQ5Yz2Z3N2Z4pv12J6kTEjoFd0OOgMY4uXwoywoF1V2/+30r3teVzwwHi8FoSoZGOKrtnMBAWrtEtfnKGpiEeAKBMPUP/0OW9z/iCG//GtjkkvanChHJoOtvxsp7P0V4yPRNW6JCIxmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.15; Tue, 27 Sep
 2022 21:36:27 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::280f:75b5:17ad:1668]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::280f:75b5:17ad:1668%3]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 21:36:27 +0000
Message-ID: <ad885543-02f3-5a44-0d06-0ffe48cf29e2@intel.com>
Date: Tue, 27 Sep 2022 14:36:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
References: <20220926215410.2268295-1-andrzej.hajda@intel.com>
 <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
 <7039faf9-b2a1-9400-fdc7-f5dcd7a8dd9a@intel.com>
 <f34e60c9-17ea-56a0-acb2-bb8d97363993@intel.com>
 <c3af2831-d06b-5818-baf2-e88b4d1f6694@linux.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <c3af2831-d06b-5818-baf2-e88b4d1f6694@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR08CA0072.namprd08.prod.outlook.com
 (2603:10b6:a03:117::49) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|PH7PR11MB6522:EE_
X-MS-Office365-Filtering-Correlation-Id: f325e8f5-94d4-41ef-b3ed-08daa0d0551f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sVme2+ey7drc+jUikcQ2rBG8j+s0sLIuOolJMM2UZiRxjlYtAiWajFl6C9tamGDhr8di1RfiJXToJoy02E6SnQ9fS84Zs5sjaftoR5PsRP4fzf9OVoCgKG8KR/nAlHlVcvtHKwp+IwGkLyUTIf1gTMUorcAQbIjHq5IaWH9Osg8h1Tv3/vgICMf13+5RRopRV6bG2u3MtBk9/36xc72O2fANbtJUbW5zZWBiUx01JdoWM0Svgt1hJO3agPj0WS1aSeLRTJ9IKxR/Ix7rPUx/EiObzrlkoKqEpmCu5ESU3c7xnS+EkFqn3MpGuF4LtMPuc/Y5/gMf9m04L2YbfHP36drFZdt8dU1jX05v8FBb7HWRzoW5vy93m6y4CnvsIWtij3d1R3k/8PqkF5gUPonsNAqIjmhdhg4cFIuN0JWS0TO3KS/OXigZQ0qaCbSgedxekXmmoJuk7fbBFXABBNwpsTgWpm28SCafHuFRVSow2+pwhV2AbtVZLYpfwMyMbOO+u5yFfyDRrAFwkDP0zJpUocNdq1rbi34g27IzrQiZFU3pLUzY3sLYYUWrUC0mN1zMLXKlT5UuDKZI97LUmnELXLBeCRUMVUGJEdkEbC6vu6JtS2AkpeExJuvSacJmU1UDuPXZmK58BJM/8hp3HrSSwWH97QH63h86OLLZpJ/wdk1MWmnlzyaNQChb02k037TGmwyho8VpVOK7LaWC4UCTvO+D+CIJ7cKJW68pnb0avzYyM065aqQ1NyyTK3RCaWRa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(396003)(366004)(346002)(136003)(451199015)(31686004)(8676002)(6512007)(6506007)(26005)(66946007)(4326008)(66556008)(83380400001)(53546011)(66476007)(5660300002)(316002)(36756003)(6486002)(966005)(478600001)(8936002)(54906003)(2906002)(110136005)(31696002)(86362001)(186003)(38100700002)(6666004)(82960400001)(41300700001)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vmp0UHlheHNldUUrWkpBMUhkbjlNSTc0bGJRVGsydFcrYlgyenFxTFBYMW51?=
 =?utf-8?B?NGVLVGtzNmlWM3R1SVQrZHZldk8ycHBNSmR6b0U1Z0RIcVp3ckR5UWl2dXl1?=
 =?utf-8?B?Q1I3alcvckRld2VHTUo1aERoMFlTV1FHTHg3VnNOUHpGSGxLUzUxbTNzaTNa?=
 =?utf-8?B?QjEvUE1maHdTN2FSR3VvbWpScE1xSXluUU5pQU1LZHJHajUwUzk1cndlZUlm?=
 =?utf-8?B?a0xIV2pteFUvUkRhRHhkT0pRVlUxZWNLbTRPU2tGYUs0YTRNYTFSMnpuS0Rx?=
 =?utf-8?B?L3dyL2pMSmk4Z3hQbHp6R0FxLzBKOHNkc3AxZFVKbzNQMVlLaHFzanFGQnI1?=
 =?utf-8?B?OFN3ZXF0b2RBU005RVZlbVp3a3V2UFptRGgrdHc5dWg5WEJoejlaWEtvSnEy?=
 =?utf-8?B?QzVESkxLU1ZjN0dEclhGZVFNQmp3MVN6amFHQTVzZzFGSlZLSXdvOXBkREFV?=
 =?utf-8?B?aXluNy9uWk9KYlVTVTdKdVlZWEhYZ3J6U1IwcHptUXV1U0ZmZTVFRk9FVFNI?=
 =?utf-8?B?TGZyVm5MOWNwdUNsSFNwUmpzUWJBVXRrSE5wcHlkdGsyQ1R4cDZ3akVIemdu?=
 =?utf-8?B?eWxtaUF4dXVOWkVKdFNjZ3RRRXVIcXkvZ0gyaEI4dC9lRmN2RzRyVGZ3U1h6?=
 =?utf-8?B?dm9qelFtcFBWcHV6MlRFcVFEMmE4Z2lFWnlCR3dSVDBaNHJzVWFFQXJMdGY1?=
 =?utf-8?B?TEd5VlorWE1BOW1QNmlieWhxaFI3bm0rekpIZVVjQ0p6bjlyU2pvUzdrQ20r?=
 =?utf-8?B?dGNEdVZZc0NXbjZBa3hCVThNR3ZONmlnZzRSVm5TMjc3Zk9tcHAvdXMwemJR?=
 =?utf-8?B?WlVyaVZPbURDbUFweEthU0l0dkZ1UFAyYklOYUg2WkxDZjViZ3RZOCtZMEVi?=
 =?utf-8?B?TWNwckhNbWFrNnFxdFE5ZEE5V2QxcHpuVjN4cXJVVlAxcnBMYlBpUFFHdE55?=
 =?utf-8?B?M2lCcGFoMmR4YmlnV3haZ0tiUFFwR0dqR0R4elFkbHVPVVBBS0FsdDJvajlZ?=
 =?utf-8?B?cTU1VWhZN2l0ZTZoSU1mUDVsdkRwWFJWUm5udGRidWJTa2VjdkFZcnAyNjFC?=
 =?utf-8?B?ek1ra0lzeDJIVkR5Q3lLc2VrVDA3UCtJck1Yc3NtR29LS0RWdE5uUGZ4d1lm?=
 =?utf-8?B?UlpCZElGK1dPTXpSK1lIMWFHMWR3NVk2cDdVbVAvWGhmWGIyYW1EZDR1Ni9n?=
 =?utf-8?B?Q2hBa0FtR3BxQzBJSFNNWjRFMzN1VW1mbC9teDFtL1RtWm1RN2RjUTlVYkNh?=
 =?utf-8?B?SUs0bmcvckNpVXVGZC9ZMmJXWVc4M0t1SkdoaWxjdnVvaXVlS1N0NmthN214?=
 =?utf-8?B?ZzJaenk3WHY5UTRHTHJSK2pCazRHTkoveW5MVUVRWEMwV0s4YzFxM0JCTWpm?=
 =?utf-8?B?UndrV3JBNkhoQTlkeGxZTWtRdDY0SVdCM3FpdGU5UUl0OWw2b2ZzZ2JMUFJz?=
 =?utf-8?B?MUNPdXdqZkZKVUVUTWhuakZMZnZuejVqMUg2VlZvekdlK3EyZWMvc1JnVWRX?=
 =?utf-8?B?UFJXL3Y1ZzY4VDlOWmZoc0JkeTg4aURITXBiK2pjS1J2a050TXppUjlwaU1n?=
 =?utf-8?B?SkhDZHRnMmpNOWZPNHhMQW1Dd282TkpnbW9Rdkp1OS9qb0tJOGp0UU5CeUcx?=
 =?utf-8?B?aUE0KzhJRkhyT0dsUU10ZTZNK3NyVzVZWE9BcjgzcVZqYjBqeFRBcHh2WVZJ?=
 =?utf-8?B?Zm9sQ1EzZjNrNkN5RHIwWHlrQVFocGYrbUltS200Y1RQYVoyUkxOb3VzcU5W?=
 =?utf-8?B?NStKWFk0d2lLVEVrRTArNnlxTWdpTnhzOCtxeUVtWnJQVXpyd1pMZGd5K2I3?=
 =?utf-8?B?ZTl5em03QU84blRsU3VxSzdtemhxZElmN05PZDQ4NGpWbHhjQ2Y0YUdMSlQr?=
 =?utf-8?B?elN0ZEEyZzJRTnJSMDh1YXVPWmdoL2xGZDJBMU1GNkRiTVc4ajZGOFNoZWIr?=
 =?utf-8?B?TzdDYzJFeW5kdG5ZNWU4UnZJNDJYT2dLd3pVYys3YzVPcDJ6RVM3SGo5NFhR?=
 =?utf-8?B?Tm5OZmtBOXlnMUs0VGVFNE56V2VqSVRqSDVpMmo1dTlQOGk4M0JSK01IcVNE?=
 =?utf-8?B?a2FoL3RsOElpd0tJc0ZodGhJcGljcGhHdUZORU96N3hkZGp0bkUrTm9uRjNS?=
 =?utf-8?B?aTVuUi8rY1hQM25XVnhVSEQ4SnFSc2gyVUlrTFE4QUdwbDRSOFV0MXJBZ1VN?=
 =?utf-8?Q?J+I+KWMD55FkGVBGTCKyPZs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f325e8f5-94d4-41ef-b3ed-08daa0d0551f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 21:36:27.1110 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WHXIrl15gdLuYqlSKJq1cY34w9yOzdbJbT5Kx7L8mCHd9X9Oiccr5iAE3bULWKsVcxk8a3HgTZkxE8ba8bzt3F6pHR6A3LvVsCY4bbD7AYo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6522
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: do not capture error state on
 exiting context
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 9/27/2022 12:45 AM, Tvrtko Ursulin wrote:
>
> On 27/09/2022 07:49, Andrzej Hajda wrote:
>>
>>
>> On 27.09.2022 01:34, Ceraolo Spurio, Daniele wrote:
>>>
>>>
>>> On 9/26/2022 3:44 PM, Andi Shyti wrote:
>>>> Hi Andrzej,
>>>>
>>>> On Mon, Sep 26, 2022 at 11:54:09PM +0200, Andrzej Hajda wrote:
>>>>> Capturing error state is time consuming (up to 350ms on DG2), so 
>>>>> it should
>>>>> be avoided if possible. Context reset triggered by context removal 
>>>>> is a
>>>>> good example.
>>>>> With this patch multiple igt tests will not timeout and should run 
>>>>> faster.
>>>>>
>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
>>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>> fine for me:
>>>>
>>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>>
>>>> Just to be on the safe side, can we also have the ack from any of
>>>> the GuC folks? Daniele, John?
>>>>
>>>> Andi
>>>>
>>>>
>>>>> ---
>>>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> index 22ba66e48a9b01..cb58029208afe1 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> @@ -4425,7 +4425,8 @@ static void guc_handle_context_reset(struct 
>>>>> intel_guc *guc,
>>>>>       trace_intel_context_reset(ce);
>>>>>         if (likely(!intel_context_is_banned(ce))) {
>>>>> -        capture_error_state(guc, ce);
>>>>> +        if (!intel_context_is_exiting(ce))
>>>>> +            capture_error_state(guc, ce);
>
> I am not sure here - if we have a persistent context which caused a 
> GPU hang I'd expect we'd still want error capture.
>
> What causes the reset in the affected IGTs? Always preemption timeout?
>
>>>>>           guc_context_replay(ce);
>>>
>>> You definitely don't want to replay requests of a context that is 
>>> going away.
>>
>> My intention was to just avoid error capture, but that's even better, 
>> only condition change:
>> -        if (likely(!intel_context_is_banned(ce))) {
>> +       if (likely(intel_context_is_schedulable(ce)))  {
>
> Yes that helper was intended to be used for contexts which should not 
> be scheduled post exit or ban.
>
> Daniele - you say there are some misses in the GuC backend. Should 
> most, or even all in intel_guc_submission.c be converted to use 
> intel_context_is_schedulable? My idea indeed was that "ban" should be 
> a level up from the backends. Backend should only distinguish between 
> "should I run this or not", and not the reason.

I think that all of them should be updated, but I'd like Matt B to 
confirm as he's more familiar with the code than me.

Daniele

>
> Regards,
>
> Tvrtko
>
>>
>>>
>>> This seems at least in part due to 
>>> https://patchwork.freedesktop.org/patch/487531/, where we replaced 
>>> the "context_ban" with "context_exiting". There are several places 
>>> where we skipped operations if the context was banned (here 
>>> included) which are now not covered anymore for exiting contexts. 
>>> Maybe we need a new checker function to check both flags in places 
>>> where we don't care why the context is being removed (ban vs 
>>> exiting), just that it is?
>>>
>>> Daniele
>>>
>>>>>       } else {
>>>>>           drm_info(&guc_to_gt(guc)->i915->drm,
>>
>> And maybe degrade above to drm_dbg, to avoid spamming dmesg?
>>
>> Regards
>> Andrzej
>>
>>
>>>>> -- 
>>>>> 2.34.1
>>>
>>

