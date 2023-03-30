Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BDE6D0294
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 13:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF6E10E21A;
	Thu, 30 Mar 2023 11:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D9310E246
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 11:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680174481; x=1711710481;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fCfxw2o6ipup2/s8qO360gGglnVS5v5dnRltVTg9+x0=;
 b=QPrY4nCoaZU3nX5WxbhaSnUYJoqlDMd5d7oAb5EYRIXAuOPNCSzzykOH
 Z8Tz0WoUIXEkbeq8QkZZ4chR3Jt2Hf/NaFq6oXBsQmRu52+IrX6p2FW/e
 aTaBqSVfujuwUwLh0dYKxHZW1tmZTh11cR1e7dd+BcsIRABau8BvDEonR
 HYnoihkJ94sBJYtSaf6m9q7j5n1ID4kEtlM0lYw85EJBW72VsmbK+IXu1
 1n9lw1IWlylm7DA3gCVgL8C5RhdreNj3hLaUNVVcWBrnKTTa4jn9Fm0Dd
 SC88I0E3usangduKJiQXcbStklICnOD7FjHoPyirE72Z1tNjU9c18ylyW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="343590370"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="343590370"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 04:08:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="717269018"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="717269018"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 30 Mar 2023 04:08:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 04:08:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 04:08:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 04:08:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 04:07:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3icMJfD7ILif2UxunnD0ZeHD1gsC/HJRL6H+SNdCSEkhGcusEIZDChqVVg5q8eeSohqx2k7P3xpb9NWKZefjS6+ANrnZ65kxgorfYi87OLk9udRRyKub1v+fNUJuGlkkGHHZRqeAz3kF2rMztWqzbGDFT6T5zNxYtd1X+WDZDsZB0+wuJoU49mpLO/xiyg8VO9r1Cdjm99PD2R9XWNq30lZPSzEM6j0rDoWkSzl7xCbTEJDJtvbmVuLv1Oo5FNp/rBek4FRXEGM2wRx8LAdKCessaI0DIOsvKGbUNQhpmwrCHVpDLFtRKPA55vlk/WmBeLDtivodlBEiYMstkj/tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+MHTUoDbHZ0e8K1HlM4zbjhpyiiPuHeausnBF0KHx1Q=;
 b=buiN3EiAJiCD40d58JkBMmhdnxqkkAclbtMyWRXXZhQW6WRwf9tGjwOSdlERxPjKUfKvz86JCa+zJhBItmLO69wJNHmjtxXVHfEAg5AhCltos0515DgqfhVFzs8GJGcgRtTOnES8sro594q9Kn6fpIG4y2Qop+jA2NaDlCDf8IrBFQKPrz93DD+9M4Bx3leQTGQKySyQvYjBmKKUKiqh14XXNN9YOx4ysy2r1YoIErcU+5wd1/mweuhK/d8M1gOpgTHbv/dkLGBzNqwBlzLUAQEe4tBBZv2sPZnDdENOnnZKvhdxxP/iHJ0WW4lUnb2kZH9VAySuZpYz/HNtIlSHXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by DS0PR11MB6421.namprd11.prod.outlook.com (2603:10b6:8:c7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Thu, 30 Mar
 2023 11:07:58 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::d383:a1b9:4c0:7d04]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::d383:a1b9:4c0:7d04%6]) with mapi id 15.20.6222.033; Thu, 30 Mar 2023
 11:07:58 +0000
Message-ID: <a53bcdc5-7ba2-2bc8-036b-d8f15bcc8299@intel.com>
Date: Thu, 30 Mar 2023 16:37:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
 <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
 <ZCQLhkwNGRnZkD4k@intel.com> <f62f54f4-b42f-dc23-2ae9-2be450854bb1@intel.com>
 <ZCQYkQHDnPLX0Ee2@intel.com> <32039884-4045-478a-e03b-09afba2b15a3@intel.com>
 <ZCQiijNDxTqT98bw@intel.com> <ZCRArK2LURNnjLbx@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZCRArK2LURNnjLbx@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0071.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::18) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|DS0PR11MB6421:EE_
X-MS-Office365-Filtering-Correlation-Id: 7795949f-d2f2-4bf8-e57b-08db310f04d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dGgtpBoUBpzEElhIHhTtQIf1W3H4nI8l4pnvkJ738zC5yN8CZHORepxD4DEIC3bhiwwfu8KqUOcaq1UdU4phvm/lsgd/6+zSfQ/aS6xrReoUldGO5udI2nYyJjqNl8n2mx18rTfzMY3pUxXFOlHwIrv9apNA7Qo7FndwOCneWU/mPMga0ilQF2VBLipyzh/8O2cFstX3ykrqv7p/YOQynjA7jgYj7YrgNVq6AwoRRDTuxgvgVJd3LJeeEf5Ri+kgOE4oGJj0JkUoeWloPFnYpHiMgAxTRFhInGKF+nG26nXxuqAK9FIani1Ms8c7ERepK3XPyjmCJxOPjz0uWN1MdBREzPR9X4Tv3C9Xxp8xb/QA6xxDgKN70/D+snpep8hg7wHCTAKKTQ8iW3unjXFBymkmjw37nclqsZ5BH07+4G5D3tkF8lvs1Z2FAysSJeXmi2DxLtFiKa0BaYjssSVQ7Sr3BXXUsBXmRD2rmego/hgeC7cL+T9Bc5nZ/B4lcQCYqEgv+3cboKfVmtowKRUlLz23YNiVpA7gOmkwh5fYeUvBMELPFnTcJ7esDB0BZLUizsp95BCsxLhwfDM6MJ0fGcThRBTeZfNObFjkN9TaeB5r/oFbcc19smT3vvEauXOi6dCT/QJPyZFM3PlHTSn6Ww==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(366004)(136003)(376002)(451199021)(86362001)(55236004)(53546011)(36756003)(110136005)(6486002)(6512007)(6666004)(478600001)(38100700002)(66946007)(66476007)(6506007)(2906002)(186003)(83380400001)(8676002)(316002)(31686004)(31696002)(4326008)(5660300002)(82960400001)(66556008)(8936002)(26005)(2616005)(66574015)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWZZNVB0WGFscG1uQjJrR0pkWVBwREc1K2U3TXVod1FSTEhjYVJ2dGFJdGlr?=
 =?utf-8?B?SkROTHQ1VVVZdWpTS3RCaGV2UWxRZGprOE9XTGw2RlZBMElhcW8ySkhzY3lJ?=
 =?utf-8?B?M0FTNUFZNzNkbjdWWkRoZlZubWc1VzQrQk9JQk45Q0tYWG1lL0lRR3RmcHJl?=
 =?utf-8?B?RDE3endMRGJnRFVUZE5rWnRmMzRMaTNLSUwwVUVTM0ZYUEc3UytFc1MrUDRC?=
 =?utf-8?B?cEhHSUJhVzlaaXRzcm9iL2RPTXFoKzFqTWM5aGNOeGIweWQ4MGJDWnZMZ0ls?=
 =?utf-8?B?cURtQnA2OGw5M3BPMUZHemM3R3d6WmlyQklPY293VSszbDJiN2x5MUJGQ1dJ?=
 =?utf-8?B?UDZKTG5KUk5ERy9yWFphRzFBZ3cvbEFyZWFGa2NkUjZmQXlSRzV1QkVnWmNW?=
 =?utf-8?B?alBnVEVXYzN1MEltY2VOaE9aVUhISWFVWndUM3dDMlhpUk1waXlNcDZXQXlW?=
 =?utf-8?B?eXhVU3JtVkRFTlk0RjRGWk51UDljdHpQeWxwK0RHa0ZxajFNeFVUN3J2aGM2?=
 =?utf-8?B?aG9haFllVVhLSENvNEZxT1JIRFRsRlVqbW5GVnliV21wRXFWR0RCYUE2eUlt?=
 =?utf-8?B?a3lFUFF6NmNrRnJCSEp4alZpQ2pUVmdVRjUxeTBsUXVWY3lVek5GNzdjZUl2?=
 =?utf-8?B?aTNiSWRudVozaXE0SExObVBzcXVycFhQN0ZWYTQ1M05mSloybExwYXNqS1U0?=
 =?utf-8?B?b1pZdjE5cHQ0VSs0UVJWMTNTUDFGV1JGMXZ2U1VmaG5oRlE0amdHaVdWc05N?=
 =?utf-8?B?OGZ5Ui9PY3llOTRISzF1UEZkOFZONnM1RTZvVW9lT1pRL1d2SXlZSWxEeDM3?=
 =?utf-8?B?a090eERsaHU0aVVBVE9NNDRuUnUvbC9rRkpGN1ovME1nckV3bVdhRGhhc2pn?=
 =?utf-8?B?QXJjN25sak9kaGJLR04yekpUZGRWRStOVGlyRTJMU1pPRi9hSkM5TDRQWmVs?=
 =?utf-8?B?dm5uaFJXVU1hUmVXYVphSTJUai9hd1JqUkdaNDl4RFBtMHdPMGFGamRFM05s?=
 =?utf-8?B?Z3pyQkZxTzliZzJGT0ovK1RFOUtIbVcyVTJTa3IrZXRHY1hkRG5mb0p5c0RG?=
 =?utf-8?B?MHBJRzN6ckJPTmxPNmJ6SEI1R2Q0TXpCQm43VWsyWDFsWHlCK3g5S1MySW1B?=
 =?utf-8?B?RmZucndCY3BiT284OTlUdGZ5UlA2cnhjckduUEdBQW9WR1ZZMENxVEZuQkNa?=
 =?utf-8?B?UlBpUnJqWHl3bnZrVUdod0xmYmE1aHczWVNJbVpISm1OV2hHbUs3c3kwSXNr?=
 =?utf-8?B?ZE1pRUV6UFlVZUpwWVQyaWNuaVU2RGp6RUlBV0hIeFJ4UGNza2ZVV0kwUk1t?=
 =?utf-8?B?alhaR2xlUzBQSWtMZG1GVkptNG1RVmNacTZQRDVjZlFDdnFra3p5T1RuajFR?=
 =?utf-8?B?UDU1cG43bllUSjJmcmdlZVc5WTltcVI3bHJPZVNlVFJZTXNlNnVnSnNPdXZY?=
 =?utf-8?B?SDZSQ3BTVW9jalpqNGdmMU1CejY0aENUaDhaUVZremtmeUJHQ1B4ZzMzd3Zo?=
 =?utf-8?B?WDV0NGs2b01sZVd1THZOTlF5dnVxUkRCNDlhZXV5SE1meHlxZ3EvMXpoQkNI?=
 =?utf-8?B?eDZpSjd6QVhZUDlsWVplbDZlMXpvcGU5dDJBREM1VWlVcDdaQndsd2h0MGZP?=
 =?utf-8?B?R3l6QkxSWnBTb0FURlRoSElORFRiazI5VjFTL0ppdVpTcWpvd3ZhZ3g4M1Jp?=
 =?utf-8?B?eVpVVW9yMW51Z1A4c1VOd0xYcHI0RjdIck05R2N0dDloczJNU0RyL21QRHJF?=
 =?utf-8?B?UktJSTdLbkRrNHpza0VoRTFiRndrSnlCL1YyWlJJZnA0WkM4SEp2ZFJ6UUdX?=
 =?utf-8?B?REphWDdsL2tjK2pvdjhQY2Z1d3QxTGRyZDJsaVo5S05KZmc0UlczRDJjWWtP?=
 =?utf-8?B?ZXJxcktNQlIzM0RCR0FUZm12VUg4Qlh5UVFSQWVGMVV5MHhIR0ZWRDhaNTRV?=
 =?utf-8?B?TGV6Umhrb2VpSEJQL01qbXVZblRDa3JIR0w3TjNkR3dGR1BJUFErMFZOZFlK?=
 =?utf-8?B?SENxOVoveWJnaDU5ZUU2aWNBNitENVppbGFGbG5pRm1jb1B2alFnSkhxdjdk?=
 =?utf-8?B?RGNHYWNKaDJJa09pNlJualN6NTZLa1ZnR2wvTWtLWGQ2UmtxbHNGV2RrNmsw?=
 =?utf-8?B?QXVYdnk4UWR3eENQa1p2Y2JSUWgzbE5JTzgyMW9TcUdLUHFvU1ZNa2pLWFNX?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7795949f-d2f2-4bf8-e57b-08db310f04d7
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 11:07:58.0230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GhWxQWtY+9957qHB0N2UQuIDk1IBRGFRa/S5uf5LJ/e4UH1nFi1o841q/5q3dfSp3MbMINDiemf9/hj9a+4fIC/Tq9x5/6N3QT4QoMb7vn8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6421
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Use current cdclk for DSC
 Bigjoiner BW check
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


On 3/29/2023 7:14 PM, Lisovskiy, Stanislav wrote:
> On Wed, Mar 29, 2023 at 02:35:38PM +0300, Ville Syrjälä wrote:
>> On Wed, Mar 29, 2023 at 05:00:55PM +0530, Nautiyal, Ankit K wrote:
>>> On 3/29/2023 4:23 PM, Ville Syrjälä wrote:
>>>> On Wed, Mar 29, 2023 at 04:06:21PM +0530, Nautiyal, Ankit K wrote:
>>>>> On 3/29/2023 3:27 PM, Ville Syrjälä wrote:
>>>>>> On Wed, Mar 29, 2023 at 02:14:49PM +0530, Ankit Nautiyal wrote:
>>>>>>> As per Bspec, Big Joiner BW check is:
>>>>>>> Output bpp <= PPC * CDCLK frequency * Big joiner interface bits /
>>>>>>> Pixel clock
>>>>>>>
>>>>>>> Currently we always use max_cdclk in the check for both modevalid
>>>>>>> and compute config steps.
>>>>>>>
>>>>>>> During modevalid use max_cdclk_freq for the check.
>>>>>>> During compute config step use current cdclk for the check.
>>>>>> Nak. cdclk is computed much later based on what is actually needed.
>>>>>> The cdclk freq you are using here is essentially a random number.
>>>>> Oh I didn't realise that, perhaps I was lucky when I tested this.
>>>>>
>>>>> So this check where CDCLK is mentioned, actually expects max_cdclk_freq?
>>>>>
> We use max_cdclk_freq basically as a "hack" to estimate what could be the max
> amount of the CDCLK, because for the reasons, Ville mentioned, we can't use
> CDCLK directly here, because it hasn't been yet calculated.
>
> However we anyway know CDCLK will be aligned accordingly to pixel rate.
>
>>>>> If it doesnt then, we might have a compressed_bpp value, that might be
>>>>> violating the big joiner bw check.
>>>>>
>>>>> Should this be handled while computing cdclk?
>>>> Yes. I suggest adding something like intel_vdsc_min_cdclk() that
>>>> handles all of it.
>>>
>>> I can try that out.
> It is all again about that same chicken&egg problem.
> Our paradigm is that CDCLK is the last thing that we calculate, however that
> check instructs us to choose the output bpp which obeys
>
> Output bpp <= PPC * CDCLK frequency * Big joiner interface bits / pixel clock
>
> rule.
>
> If we choose to adjust CDCLK accordingly, we loose an option to actually change
> the ourpur bpp to save the power, because theoretically we could avoid increasing
> CDCLK to match that rule, by decreasing the output bpp..
>
> So this kinda leads us to possibly waste more power.

I understand there is a tradeoff of power and performance, and what we 
are trying to do is to set the maximum compressed bpp (to have minimum 
compression).

But there is a possibility with bigjoiner case, where we set the 
compressed_bpp as per max_cdclk_freq, but the check fails as 
compressed_bpp is too high for the computed cdclk as per the Bigjoiner 
BW check.

This might not be faced every time bigjoiner + dsc are involved, as 
there are link_bw_check, and other dsc checks that might limit the 
compressed_bpp and the computed cdclk is sufficient.

However, there are cases where the bigjoiner check is actually failing, 
and resulting in pipe fifo underruns. I have seen in my testing with an 
8k setup via PCON->HDMI2.1:

For 8k@30 the compressed_bpp is set to 21 which according to 
max_cdclk_freq is fine, but the with actual cdclock of 307200 KHz, the 
compressed_bpp of 21 bpp is getting too much, resulting is bigjoiner bw 
check failure, causing underruns and no-display.

For 8k@60 we do not see this issue, as the compressed_bpp is limited by 
link bandwidth check to 10bpp, and also the cdclock is computed is 
actually max_cdclk_freq.

For 4k@120 again we see compressed_bpp is set to 21, and cdclk computed 
to be max_cdclk_freq so the check doesnt fail.

So IMHO, we do need a check to avoid the issue mentioned above.

I think let the existing check in dp_get_output_bpp remain as it is, 
with max_cdclk_freq. This will help to get an acceptable compressed_bpp, 
and if other dsc constraint come into play we will get a lesser value 
for the bpp.

Let’s add a check in intel_crtc_compute_min_cdclk  : 
intel_vdsc_min_cdclk() (as suggested by Ville), where, if bigjoiner is 
used, update the min_cdclk to accommodate the compressed_bpp. In worst 
case we have to use max_cdclk_freq.

I have tested something like this with the above mentioned setup. The 
compressed_bpp is set as 21 as before, but the cdclck computed is 556800 
KHz, which enough to honor the check, and is still less than the max 
cdclk of 652800 KHz.

If this approach makes sense, I can float the changes.

Regards,

Ankit


>
> Stan
>
>>> Will also add *Pipe BW check*: Pixel clock < PPC * CDCLK frequency *
>>> Number of pipes joined, which seems to be missing.
>> That is already accounted for in the pixel rate.
>>
>>> So with pipe bw_check cdclk should be >  Pixel clock / (PPC * Number of
>>> pipes joined)
>>>
>>> In addition, as per bigjoiner check it should be >= compressed_bpp /
>>> (PPC * bigjoiner interface bits).
>>>
>>> Regards,
>>>
>>> Ankit
>>>
>>>>> Regards,
>>>>>
>>>>> Ankit
>>>>>
>>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>>> ---
>>>>>>>     drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
>>>>>>>     drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>>>>>>>     drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
>>>>>>>     3 files changed, 8 insertions(+), 3 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>> index 3fe651a8f5d0..d6600de1ab49 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>> @@ -711,6 +711,7 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>>>>>>>     u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>>>>     				u32 link_clock, u32 lane_count,
>>>>>>>     				u32 mode_clock, u32 mode_hdisplay,
>>>>>>> +				unsigned int cdclk,
>>>>>>>     				bool bigjoiner,
>>>>>>>     				u32 pipe_bpp,
>>>>>>>     				u32 timeslots)
>>>>>>> @@ -757,9 +758,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>>>>     
>>>>>>>     	if (bigjoiner) {
>>>>>>>     		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 12 ? 24 : 36;
>>>>>>> -		u32 max_bpp_bigjoiner =
>>>>>>> -			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
>>>>>>> -			intel_dp_mode_to_fec_clock(mode_clock);
>>>>>>> +
>>>>>>> +		u32 max_bpp_bigjoiner = cdclk * 2 * bigjoiner_interface_bits /
>>>>>>> +					intel_dp_mode_to_fec_clock(mode_clock);
>>>>>>>     
>>>>>>>     		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
>>>>>>>     	}
>>>>>>> @@ -1073,6 +1074,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>>>>>     							    max_lanes,
>>>>>>>     							    target_clock,
>>>>>>>     							    mode->hdisplay,
>>>>>>> +							    dev_priv->display.cdclk.max_cdclk_freq,
>>>>>>>     							    bigjoiner,
>>>>>>>     							    pipe_bpp, 64) >> 4;
>>>>>>>     			dsc_slice_count =
>>>>>>> @@ -1580,6 +1582,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>>>>>>     							    pipe_config->lane_count,
>>>>>>>     							    adjusted_mode->crtc_clock,
>>>>>>>     							    adjusted_mode->crtc_hdisplay,
>>>>>>> +							    dev_priv->display.cdclk.hw.cdclk,
>>>>>>>     							    pipe_config->bigjoiner_pipes,
>>>>>>>     							    pipe_bpp,
>>>>>>>     							    timeslots);
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>>> index ef39e4f7a329..d150bfe8abf4 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>>> @@ -106,6 +106,7 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>>>>>>>     u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>>>>     				u32 link_clock, u32 lane_count,
>>>>>>>     				u32 mode_clock, u32 mode_hdisplay,
>>>>>>> +				unsigned int cdclk,
>>>>>>>     				bool bigjoiner,
>>>>>>>     				u32 pipe_bpp,
>>>>>>>     				u32 timeslots);
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>>>>> index a860cbc5dbea..266e31b78729 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>>>>> @@ -925,6 +925,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>>>>>>     							    max_lanes,
>>>>>>>     							    target_clock,
>>>>>>>     							    mode->hdisplay,
>>>>>>> +							    dev_priv->display.cdclk.max_cdclk_freq,
>>>>>>>     							    bigjoiner,
>>>>>>>     							    pipe_bpp, 64) >> 4;
>>>>>>>     			dsc_slice_count =
>>>>>>> -- 
>>>>>>> 2.25.1
>> -- 
>> Ville Syrjälä
>> Intel
