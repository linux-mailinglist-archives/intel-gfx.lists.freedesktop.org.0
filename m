Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A713E1B35
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 20:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D42C6EB21;
	Thu,  5 Aug 2021 18:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99CDE6EB2F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 18:26:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="275271126"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="275271126"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 11:26:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="442568527"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 05 Aug 2021 11:26:48 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 5 Aug 2021 11:26:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 5 Aug 2021 11:26:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 5 Aug 2021 11:26:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VmfL3SGZpTr7IYSKs+oiYVWA2NbV2GLMKCz0NgY9Q0uryy7qyNS2OAxSmrGx4AancsiPKhRuzH9Ie6/K5ya3a0Nz1tCiAW2NbaSQDy9T3GDfqNxu8mRf4yGVvG/ghbOEfOb5Q5Ry9RxGxGyznwQ3marIhd2HIayzMUiL5VLsg4w5RWEkIBkhlqerL/bAow7Ejptpdqd7256UPB1kDGCze0fWRtncYHHgwN28GRhslH9G6ZZcOK2Ld2cshGlhZ73aEy99BDLVDptWGDPKO+pI19/SGtp/59S5U5gOjWuZVm+KsM1C7T5JrKD+FN3U3RLZ8E8uATqMTW1fFHV5Z/KPPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hg3qLW3WiUjh0nXNTY6x3bN4PBQ//NhqTR8ax+YlWys=;
 b=JWO9osE+Ogy8vF+tUW6dYSNNnG9MMTVPuBbpiFfVmQaRbXJYn0L2GRdhKR2HGwWVMioZDhMS0657vu1R3mHM+Or90ZeGkEk7hYu/k/Dkp7OQczA3QoIBx28rwXCCR14njKfraW9qfLjvpRwfBvTsc2Z08+WkWKTkp/r3+6tHeplJZ8bVCYFmMVsm0D59G17t4XLYRp0L8qz2/tkhBwT7EFK4wd5zSt2yl+3e5snFu31OxmS3OWmv0Psh3cZBO7alEg66GwWQUcA0FW5AfNEZS8S6bGW1gkqam3IKSESRPbWGX8/6I1h1aOsUc5WljTzG9g4t01o6EaD5qRNO3CTrkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hg3qLW3WiUjh0nXNTY6x3bN4PBQ//NhqTR8ax+YlWys=;
 b=NZyDJoHBYIkE/7HxZfyDxPujuGaeszB0J1CzjxTzMy6BaPg+8JrPUu+xoW6jTgGR/SnIkbFVwLG4oIk9AN2Dn50M3n6lfqEL3gaia1vkskXSEM0mmk6Zv6rQM20ZhCU0L3ZeERkVvBqjH6Vqda3HwNEOz9vZx1K6p2aq79FVJWg=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5691.namprd11.prod.outlook.com (2603:10b6:610:110::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.18; Thu, 5 Aug
 2021 18:26:43 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a%8]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 18:26:43 +0000
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20210731001019.150373-1-jose.souza@intel.com>
 <20210731001019.150373-4-jose.souza@intel.com>
 <c0055e67-2841-0ef9-c18f-d60e9e186897@intel.com>
 <c30de5129bec44f07238d2e8906c031820a5e36d.camel@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <701ae0b8-7e24-de5a-286d-e12bc0a44a07@intel.com>
Date: Thu, 5 Aug 2021 21:26:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <c30de5129bec44f07238d2e8906c031820a5e36d.camel@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0052.eurprd04.prod.outlook.com
 (2603:10a6:10:234::27) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.237.72.186] (134.134.139.85) by
 DU2PR04CA0052.eurprd04.prod.outlook.com (2603:10a6:10:234::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.16 via Frontend Transport; Thu, 5 Aug 2021 18:26:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a609893f-7934-4e9b-8530-08d9583e9310
X-MS-TrafficTypeDiagnostic: CH0PR11MB5691:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5691A593ECB32301987626F7B8F29@CH0PR11MB5691.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r4hQb84wGhlYYOZiE5L5dijyXOgMR92hAAmmPl/HJ9pzaXpOs2JMfVnbyOhgzhf+NXZKZZV0Ze3q/y+qkeuFtWElN/5wzbWJOGn8CR4ZVMCkJTA3dTr93n3y1/m6TC13wHZyFzUH1sncu+8KMo0pvWt0s0wWd7qheLoU/WiSnWsmHCuS0YOmTcn/VuCWohk1T3ZeL1s7VRA4F26rMN56vqzRYdPkMs7L9FDP/py63Iml9k3JKDIEqETs7UpKRV5qjmso7vdFghuJDzhx/8nOFpwMYwKbh+VCkon46o22tLyVqknpl4WvP8GiPM9hAIQCsQGodiNy2YVJu8vECakvLr+0OqgBQ7TzdZoMCnKbMJAG/Rs5Yl+DdRXkcsZ6Pp+cVjtXzOSMwHgLH+TdS4yKbgP09kIsxzNqEAagpSRbqwUHH3Q7LS43cMYTxFASqZ0SLca3Sq/rBsFzK2wTZ6awQc6PBFBxD/fEJlAPm7m1rVSgLkJMePvK9TdEfjTa+Hrpz/6Krup9TjOOSvSQKvKuT8Y6hJI89FO97Ka9+2ybuF/jyhqDr+VYmhReo7lr2NYcDFVVmZ8GbnCvsUq1viQoRjLCWJfcB3/Ok9SakCEk1AICizOyRdYuEn7aY3ZR5WaG+KecCbri67eyoJHAil5WMPjrUL/G5+WOss+KCJKtahowjesx6UfK+fu3eU+7lO5iPq7v24Pj92XJ1xpDlQ7f1XQZeeisnraZfWOJcN/EzvI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(396003)(366004)(376002)(346002)(86362001)(316002)(5660300002)(38100700002)(16576012)(53546011)(31686004)(956004)(66476007)(110136005)(66946007)(66556008)(478600001)(83380400001)(36756003)(2616005)(8676002)(8936002)(31696002)(186003)(6666004)(6486002)(26005)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2Z0ZGxyNVJHR1pvdDh2ZDYwR3N4YVlxSVFtTGRMclNQNWs1cGt2Y0tUZkZu?=
 =?utf-8?B?a2tlaVFhU0pxSDBPeFAxTWpJK0dIMkxqZ0huVlZXTmhxVGlhbWlvNTgrWXZT?=
 =?utf-8?B?bWZQSW5hMktxZ05VV3c2NGhJUjJERzYreDdBS25BTEdZTUpnYkR4NlF2bHYx?=
 =?utf-8?B?RHdFMVd3cUZPWjMrSzU5WDFLc3dMZ25VV3IzMUdBZWEvTjZsVEJxZUl0bkoy?=
 =?utf-8?B?NW85Zm0za2NIbjF3QmljWWxhVERSS29uNWVCUTMvWjlmSmNZVHJnYVUyRWlo?=
 =?utf-8?B?V0M3cHY5bDMrZVdCN0thek9JcWNJRnBtUEZ0eTcxTThCVTJzcUppdmNGTm53?=
 =?utf-8?B?b3JGUW9kUGx0Z0JPVE5JTE1RMkU2d21EQlFINGJINnRQZ2huRWJMeEVTVEhS?=
 =?utf-8?B?eFkrSFVlbllxd1FkZzlCWGFnL3R1Rkdja1VhYmllSDFtY0xXbFVQZU5HNXFG?=
 =?utf-8?B?N1owZVhyandZTmlRYXRhSFpvUTNVZ1J3K3IwWUJKNnNpRUYzcGtqbk9wQk1i?=
 =?utf-8?B?ZFVuZVZDc3Y5QlJ2TkY1bUFJU3ZQdjBLUEFUSE91MEJUVGdNSHZ5UHpXUGJm?=
 =?utf-8?B?dG9GdDU4UHEvYXZETjErZ25NNnFzWlc3NXpMUTBSTk1TbWpuWU5hWFZqUEJG?=
 =?utf-8?B?QUVKRGEyRGJYRGMxSXZSSU42c01JT3NhdkZaaXJySzdBeG53Y0ZDQnh3NW1C?=
 =?utf-8?B?UnVrbkgwSlZsbTFLWEJqdlhEdWRYQjNvTW14eEp5Q0Y5MVBBN25sclVOdzkr?=
 =?utf-8?B?WjY1aWQxMzdjMzF1Rm9TcHhWVFFvSHNhQUVuL3RRNlR1K1c5bTNwcGpNVzBv?=
 =?utf-8?B?MlZHdjhDeGpaVmtYMWxFVm5PaU5PYnJxMjhkMjRtZHdML0pPZWYwVTY5dVNE?=
 =?utf-8?B?a0FldjBaYjZGMnE3d3JuT2VKbU9waHVTbHJBMVd0OUthZXg5ZkhJWmo4S3VJ?=
 =?utf-8?B?R2pJak1UU3VHQnFNZVYybzdrVnA2Vm5JT0t4NHFDVzBVNDI1aVYwcWpEdlhD?=
 =?utf-8?B?UXlJb1I4dktsWUlHRTAwakQwa3EzdkdRYzZtVXpTMkFKYTVNaVpiZyt2a0VE?=
 =?utf-8?B?ZndQbHcrV0NYVk1Kc3A5MXBodkQvbzdSR1MvOVUxV0UrY0pUM1hnUndrZyta?=
 =?utf-8?B?VDl0Zkh3N3BBUk9wOVZqMGtpZXlNNjVKK1N5REJXbWt0NDg2VWk2NDNzSExs?=
 =?utf-8?B?eXdUYnh1anA0SjloQXh0WEErRzF4bllibWFHZVc3bVBRYS9YQWJycTJTMi9M?=
 =?utf-8?B?eG5SQ3prS3cycHdHRUxRZEJlTi8xOG1IT254MW9YNytCL1YwUlRtSG1WSXVU?=
 =?utf-8?B?RWdzL0NoQ3dCeXNBdmdQNXNqY09EaUxjRnhacEw4NXFmMjY3Y1FGY0g4MWZn?=
 =?utf-8?B?OWV5YjJSRXhxcHBuUkRMb3NHUlA5cFREZDNTVXVmU1pQaUpzYys2RmFLT01n?=
 =?utf-8?B?cUU2R1JhZC9tZVh3NHV0WW5QZlFMWlJIajVjc0NMdmxWci9zU3NGZ3drNjJ6?=
 =?utf-8?B?cDcyazRSNjk0NlpoYXllN1BBS1N4QVlkcDBBNTFhYjFaK05PY1hTTzdQWXB3?=
 =?utf-8?B?S1gxdFBJYUF0TDcrOGsyTTFhL3IzWStRVUE0NG9mVFV1L0lJaWpJcVNoeGlk?=
 =?utf-8?B?c09xdS9mamJTZ0RpUEtJVUFwNHBVaGZnZVV1cC9ldnlkT1VWc0FxYUhrMUd5?=
 =?utf-8?B?ZXh4ZXRGR3dNM0RDUyttY29XZmhDM2ZtYklQRzJzeFUvSzVpb0NUdm1RSFVz?=
 =?utf-8?Q?TJYfVs94aVcrp8aT6i+AO367CGgh/RaPV/3fv2E?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a609893f-7934-4e9b-8530-08d9583e9310
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 18:26:43.2486 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 41Uc7vxVsJ2sB2g0iPqcOIymtnLBdP5jyiYW5ldq8EmZ3X5Lq/jiClou6JmQnfhF59JCVvjOUzmBobkbpEVlvUsr8c4VQ2MQFdPxVhU91Yo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] DO_NOT_MERGE: drm/i915/display: Enable
 PSR2 selective fetch by default
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



On 8/3/21 8:18 PM, Souza, Jose wrote:
> On Tue, 2021-08-03 at 14:17 +0300, Gwan-gyeong Mun wrote:
>>
>> On 7/31/21 3:10 AM, José Roberto de Souza wrote:
>>> Only to execute tests with PSR2 selective fetch enabled and check what
>>> is broken.
>>>
>>> IGT tests know to fail with this:
>>> - kms_cursor_legacy: all tests that checks if evasion happend, I have
>>> fix for it making cursor_slowpath() returns true for display 12+.
>>>
>>> - kms_psr2_su: The pageflip test, it needs to have the damage clip set
>>> otherwise it will update the whole screen and the selective blocks
>>> will not match with expected.
>>>
>> kms_psr2_su is a test case for intel PSR2 HW tracking and kms_psr2_sf is
>> used as a test for intel PSR2 manual tracking. Is it necessary to modify
>> kms_psr2_su for testing PSR2 manual tracking?
> 
> kms_psr2_su is to test that PSR2 is sending selective updates, just adding a couple of lines we can make it work with selective fetch.
> 
>>> - kms_psr: psr2_*_(mmap_gtt, mmap_cpu, blt and render), all those
>>> tests should be dropped or skipped for display 12+.
>>>
>> Could you explain in more detail why we need to skip on display 12+?
> 
> This are stuff that would end up calling intel_psr_invalidate/flush().
> 

Thanks for the explanation.
And there is an issue confirmed in local tests, so I leave additional 
comments.
>>
>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_psr.c | 9 ---------
>>>    drivers/gpu/drm/i915/i915_params.h       | 2 +-
>>>    2 files changed, 1 insertion(+), 10 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>> index 894a2d35668a2..e128f0c2aeecc 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> @@ -877,15 +877,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>>>    return false;
>>>    }
>>>
>>> -/*
>>> - * We are missing the implementation of some workarounds to enabled PSR2
>>> - * in Alderlake_P, until ready PSR2 should be kept disabled.
>>> - */
>>> -if (IS_ALDERLAKE_P(dev_priv)) {
>>> -drm_dbg_kms(&dev_priv->drm, "PSR2 is missing the implementation of workarounds\n");
>>> -return false;
>>> -}
>>> -
>>>    if (!transcoder_has_psr2(dev_priv, crtc_state->cpu_transcoder)) {
>>>    drm_dbg_kms(&dev_priv->drm,
>>>        "PSR2 not supported in transcoder %s\n",
>>> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
>>> index f27eceb82c0f5..8d725b64592d8 100644
>>> --- a/drivers/gpu/drm/i915/i915_params.h
>>> +++ b/drivers/gpu/drm/i915/i915_params.h
>>> @@ -55,7 +55,7 @@ struct drm_printer;
>>>    param(int, enable_fbc, -1, 0600) \
>>>    param(int, enable_psr, -1, 0600) \
>>>    param(bool, psr_safest_params, false, 0400) \
>>> -param(bool, enable_psr2_sel_fetch, false, 0400) \
>>> +param(bool, enable_psr2_sel_fetch, true, 0400) \
If we do not modify this part and do not enable it by default at boot 
time as shown in the original code below,
param(bool, enable_psr2_sel_fetch, false, 0400) \

when we execute the kms_psr2_sf test case of igt, the FIFO underrun as 
below still occurs.

i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun: port,transcoder,

When PSR2 panel is used, PSR1 is enabled by default when 
enable_psr2_sel_fetch is not enabled by default.
And when kms_psr2_sf is executed, the mode is changed to PSR2, and when 
kms_psr2_sf is terminated, PSR2 is deactivated and PSR1 is re-enabled. 
At this point. I suspect there is a problem.

>>>    param(int, disable_power_well, -1, 0400) \
>>>    param(int, enable_ips, 1, 0600) \
>>>    param(int, invert_brightness, 0, 0600) \
>>>
> 
