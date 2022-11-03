Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29185617AD0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 11:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365AE889BE;
	Thu,  3 Nov 2022 10:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AD110E26E
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 10:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667471309; x=1699007309;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=idKMqEl58//TihxI/5c2QlAln6tclugJGCnueH8vT/4=;
 b=lbMIc7MXm15kMisUhEdGXGDHVfJt8CNdjKBEz/jojCjXEnOsniDSXWK2
 cOEtFWooTtFr/IFgKTS+2yq5+SDfiRFqbb/l/0nvaUHX51kpZn38sIyiW
 DS9gxlbe47cXhyVyUJcVynv2twikwR3vPhHjSENlYHP4dYMVEVm8xLgPf
 MZYNQlKGz8zDNFTziXzDf5iAaXDn4+lSUS+7fNm5NUdam9Y1CfK/JyXRd
 XN3cbT1mjO9/Xs8ImEpACMSXePTH1/U8S55oste/Wl+Csqh4gJ37v1c7v
 VPVuAoyQpyLBd/SH8LQIqvfUVcvXbe9B3xY6j2Jsl9afppI1+fb7cLehW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="289358665"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="289358665"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 03:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="634622894"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="634622894"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 03 Nov 2022 03:28:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 03:28:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 03:28:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 03:28:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lr1pgwEbs2SA91aLUZYOmmQtGXO7OGHamVGct931PDfn47XhOrNhjRQlUgzoGv4P4m/DtzJwQ8qQEHTdI6Mj0au2fnuhVUoRlu7kuEGI/lCGxRLqoq6NH9rzBV5P/7F0pRiEl5I3u1ZyjCLKTJ1wBbt4rGWl5ZX50zSr6lewRec977RcaeJfsAqe4XCNaHP0ibO3F3Xm88N1guH7vEuOPJSNNB2ybl39zUZt4LkaHwhgrYX2Hwk5YhcAEgOGzeAJx5Xyohf8lnYFHxLqdNtS09eXFX6GVxsZRnh7U8VJHtH/SlAUg5QzFaXxd3ZGUzV8gM+FFxhTbFSKg4+lW2v8Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3lhDgfdFcxxsAkZAqKwnQu3662btqVK0MZN2PpvFdm0=;
 b=nUkm8vqm6DhhG25C18HE8q0OUnmhQx59sFCrHx18cL/4HTIofpH+gLitxnrnNawriyLL6QYHSepj6zCDCx5Nqs1BwarDST8cKTLngaWCqbMXIS1wL/bOO9XUyqKmw9umP0MNIR0YhY+u58FIzkovCpQzrRATmZemqVtC/tvQr21S8KEOGytSIqrnkCnl5FbtrsP8HJWJTLnZQvlFU10chWtn8tkBU0kTv0zt/lc0KUXslhTl861sp3DYax89k8dCIDMeIXD5nVScipa9OSmlZb0AkmegqpGLmPENC5lOjsI71uSn8Lu5x0jH2gtJT6Xd1qcfPGxUK8+P/OLbwvGvcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Thu, 3 Nov
 2022 10:28:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 10:28:26 +0000
Message-ID: <f5f2bb39-cfd3-3bb8-ab14-b746d7ee1c7a@intel.com>
Date: Thu, 3 Nov 2022 15:58:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-5-ville.syrjala@linux.intel.com>
 <8865235e-1eb5-c97d-59ec-39e125e0bcbb@intel.com> <Y2OLQj9BaOAmwd0v@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y2OLQj9BaOAmwd0v@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0082.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::27) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6817:EE_
X-MS-Office365-Filtering-Correlation-Id: 619eeb3c-27c3-4b72-4a8f-08dabd862448
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5fOdI9C8KKsw9kgM0mmxAGWrnA6aPYFoBRM012AEOsjY0ZH8BoJgVjg8ZF+Fmdlw2KTY3Ij5aHfACNYvDE1N9NaWYBLUFgNWMLRUDuHiVOKgNseGN0mLimWP6MpSj46dEz4Jf8g2w89SedYwnVFzqVCN+7ys2aKZ9lkp9BrBwgMY7lW3YU/ciY6wKtjjpmCGTx07w5e2VaA6Y6jMw66aOV1gnvFsdNjs7+4E2zD/gyXPc2zrNnHRJIiasEYpfnkzu5iqGd5+wUzfjARM64eQKONyoCVVl3dC+1QwKFd5KjSha17b8nhvT7O0Lv+dihVfY5syDeJounhASrnHrlGnOJWjIggEtyDjD+r324bnHFfNLvff1QCecyIRWWrvyS8NKJ63S4lfPNgMlmPAoIyMZttO8YqWxMary3LsmnIUYJdMmgC9VsNOt4yFkx4kB2xvcCKZ/Hx5cgThzKRggGZjVXiS9GGRSmlHR01bTd5lZNK4Ce9OTGbrDtAbHvzcgjuSoAGBBdvllNmcExGlLHPX7oOz0I8Fu/GDUGVZN2sk5Ko/QA5i83S6U0RijLsfbksbdWR3yftE8hxmPz1nSWGYGBiLfuobmuhUY4LB2w0JTttu/DUmGobOCQGfLj63mFXivulChji3nODO+8mAcyA/9EwqIrgoZUmAea0FeFBufRvLLSnbhqNak+XstJNuk2ysh7Q9c9krX3AG3ADjKbNiYOGjOgsDZ8aBJBus5y2jMxFQeZ4ju/nft0ArdO7lf9Jzm4xfLX3kpoHe+oiaE4P2Snxam3egS3m6gAW3BY04sc0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(366004)(39860400002)(396003)(451199015)(36756003)(31696002)(86362001)(6916009)(31686004)(82960400001)(38100700002)(186003)(2616005)(2906002)(6512007)(53546011)(478600001)(6506007)(83380400001)(26005)(55236004)(6666004)(41300700001)(66556008)(66946007)(66476007)(4326008)(5660300002)(316002)(8936002)(8676002)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnBuZ0tTM2dNRVZ6aXFPS0dxdWFERDBtcjNpUEIwdDFtcXJ1djV2TmN1WFE3?=
 =?utf-8?B?dkh6SjdKY2w1QWFhNDdkMURRTE84a25DaC9aSWs1WFZXYlROWHU0UXgxWEJO?=
 =?utf-8?B?OFd6aTJLL1p0R2s4V2FjOGhRUUFqQnFmYUhTNE1uVWtsanljbjZPdFByenhM?=
 =?utf-8?B?UGxHU01KUWpiWE9XYnBySllOS1EySHhmMkl4R0ZLbnRVb0xpTnZZUTQ2R3ph?=
 =?utf-8?B?OVo1bTRtOUVsbzFaT24rK2ppZ1lCbVlXSTV2Y1FRZDFjSHhETGE5d0lFVVlp?=
 =?utf-8?B?blA4VXBrMDIyRE0wTkVVNmpxUVgvdDkvblBiUnk1Y0pvK0FBdHUxa05zZmhG?=
 =?utf-8?B?OXd3S3ZVQmovMkxOZ2xuSTB5SjNLb242TXBSdDg2eG9iYlpkcjNWSDhmOUpo?=
 =?utf-8?B?aTZrR3pzMWt3Vk9zSllCMWFiMGlvWjh3MDZiOUJMMWV6S3JzNUlRdGxDbzVB?=
 =?utf-8?B?UklyWmJOYzlzdU1tNTlkaXRVSWhBVTZwazNHYm9PVHhOdDFKMDZ2UDVObGx3?=
 =?utf-8?B?c1JaamxiQUtUWkZ4Z1FiZkNaZ3dtVWJSRURkS2NtVFMxZXpiWDB5YnZsU3Zn?=
 =?utf-8?B?dDJXejdXN21QODN6NWEwbGFja016N2dMMTNTVGdJcmxveE1JbG9ta0hXTTVs?=
 =?utf-8?B?ZkpIV0s2MUxVdEhRYU4xaVprSEpRa1U0VjlDOXNXWjdXa0dGN09uTDIyM3o2?=
 =?utf-8?B?dnhFZktJZTRPbkU3azV0WlpzOTl0Q0ZqeEI1UGNpU214Sis0eVQ0TmpPbGNT?=
 =?utf-8?B?RVZPU2wwS0hyQlBZMDk5VFJWMVd4YlBRbk9LVmpCYy9FQ0xhaTBmdTJkWUtX?=
 =?utf-8?B?aUZ6ZGdMVVNkblhaKzFyZE5uL2RTbU90eENUdmcxMjJ6S2IzVEtLdWxZUnlw?=
 =?utf-8?B?T0FKR1dwVHFmRVEyZEY2Mmh6UFdWN2hRcHdtN1FIN3VTWGkvdGg3RnlmUWsr?=
 =?utf-8?B?bEFGV29oRkFDV2hFdEtxZVFPeERlMEhWK3gvRlROVFE5M3hFRHpGVXAxMUdL?=
 =?utf-8?B?dHhiZ1JNNG1vdDlLN1dkTlFxV1FWYXNxMUJmNUdJQ08wZ1BPdXExQzIvVXkr?=
 =?utf-8?B?ejdEbnY1Nlg1eTZ3TGRhQktQVGUveEtYQUROb1ZkNXhEU0t4cXpjNjdaRHo0?=
 =?utf-8?B?WURrdlB5b2k1UzZpbkFyMGxOelRvcDhqZTViZzAraGNLYWlTaWV0eXZHTHRN?=
 =?utf-8?B?QTRCM3owYkpQcDBsNnpSYktldE9DU3RlTDFrbEhONVRBOHRnTlNwSVRUcC8x?=
 =?utf-8?B?YjdHL1RzakpRZFVqN2N4ZTB0b2tDRnJVYVNTa3ladU5ZOFVmaVpBbGo0bnBZ?=
 =?utf-8?B?UG9CamhMUnRDaURDRmpkajNJVUVtUzJmTzZJWlo4STRFSjNTMU81UUxidzk1?=
 =?utf-8?B?THhJSzVDandBdzBPU0FrL0hENGQ1Si9ORlUwSkN3THFFTXNRc1BaQWdIbENL?=
 =?utf-8?B?ZkhVbGxWSmo3Y0hsbHg3a0UwNG5JbStINy9SSXkwSEFobE9aK0orTTNYaHVw?=
 =?utf-8?B?aXJDWnAzaW8vaGZ5eTQ0MUpYbEF4eEdpNzY2dEFlOVgrOUdYZ2E1Y05LQm1k?=
 =?utf-8?B?MUpxdUZYQjFOK0lJdVhCMEhSUWxDNVUydndRQTFTTkNhM0ZEUnFRcE9zcVRn?=
 =?utf-8?B?c2xtWkUreVFvcmthVGp4NlZZTE9GcUE3ZzdCWUcwWURXR1FnaGo4aWNhVTUz?=
 =?utf-8?B?azA0eS9ZODVJcmh1Zy9JV1VjVGNrdjBkcmVXUlZaZFBXL1RMbVp5VzgwK0Y1?=
 =?utf-8?B?MTM3ZWZCNDRmanl6Y2ZrRGd1dkIvSGV6YWxERGpBK21jVEtPdkFIRWNsaWtX?=
 =?utf-8?B?cDNlWmgrMHVjVUtyWFgzQ3NvOVowaGNEaFRUTmlYQ0ZiVnhCelNXZ0srTzFJ?=
 =?utf-8?B?Vk8yUkJQRWJoUnErODR2VFV3NDQ5ZUVvZlJ4RnFmL2pyYU5MMlV3WThrbktm?=
 =?utf-8?B?ai9ZR2pVTW8ydWc0cjV5R1FHRnFaMkZES3hyNkduS2cvV3hqbVFMWGdxL3B5?=
 =?utf-8?B?Y0I3aWlVaUllZmF0KzA0c01Kd0JkS2xKdG9YV1RqTWVKV1pJY3ZjSU1ZVVhv?=
 =?utf-8?B?Rks3dUxYbE5rMVEyM0xiMTRxcUNSTXc5RFlMQ01jL0RWV013VjBmVXR1NThh?=
 =?utf-8?B?cVU1bkNDbHRGbTBxTk9lUHFhT0tJaWhaOHlKeGZ0c1NSWW0zYXlpYVVpbm90?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 619eeb3c-27c3-4b72-4a8f-08dabd862448
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 10:28:26.1611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7punRgeLhR5ED7AvVwsrM7Ytovvw9n3vKnGMERb2Pe3R+vBt8kiWXDncgjJhGner7BvHFVCDeRfA5gB48zAqGqs+pjmT6Zp9CxOieZCUFfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915:
 s/icl_load_gcmax/ivb_load_lut_max/
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


On 11/3/2022 3:04 PM, Ville Syrjälä wrote:
> On Thu, Nov 03, 2022 at 11:49:20AM +0530, Nautiyal, Ankit K wrote:
>> Seems the offset is same since IVB.
>>
>> The Gamma correction max seem to be defined since IVB, but this doesnt
>> seem to be used during ivb_load_luts, but only for multi-segmented gamma.
> It would be used for the 12.4 interpolated gamma mode on
> earlier platforms, but we don't expose that currently.
>
>> Is it that the default value of 1.0 is sufficient for other platforms?
> Since it's not used in any of the gamma modes we do expose
> it doesn't matter what we leave there atm.


Fair enough.

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
>> Regards,
>>
>> Ankit
>>
>> On 10/26/2022 5:08 PM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> Unify icl_load_gcmax() with the rest of the function
>>> naming scheme by calling it ivb_load_lut_max() instead.
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_color.c | 6 +++---
>>>    1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>>> index 415e0a6839a4..e73e6ea6f82f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>>> @@ -935,8 +935,8 @@ static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
>>>    }
>>>    
>>>    static void
>>> -icl_load_gcmax(const struct intel_crtc_state *crtc_state,
>>> -	       const struct drm_color_lut *color)
>>> +ivb_load_lut_max(const struct intel_crtc_state *crtc_state,
>>> +		 const struct drm_color_lut *color)
>>>    {
>>>    	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>    	enum pipe pipe = crtc->pipe;
>>> @@ -1028,7 +1028,7 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>>>    
>>>    	/* The last entry in the LUT is to be programmed in GCMAX */
>>>    	entry = &lut[256 * 8 * 128];
>>> -	icl_load_gcmax(crtc_state, entry);
>>> +	ivb_load_lut_max(crtc_state, entry);
>>>    	ivb_load_lut_ext_max(crtc_state);
>>>    }
>>>    
