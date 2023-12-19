Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30123818466
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 10:28:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA04E10E42E;
	Tue, 19 Dec 2023 09:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E3B10E00E
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 09:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702978107; x=1734514107;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=ZJYSoadGvvXnE/dLZB1eeRqt2GbSpdb8cP24T5z/62E=;
 b=Vy9hS995/3E7rOCTBNNr28kc6mDaWD5ZSzfq8K8adjCgQbnZgGuj10Ll
 1DQ6ZpWW/Z67ol1/NH60rG+GCXLM1ZstgPQWCX9wJoMu8ENBf9XJgglv+
 abJS/OFGdsTBjUCKNZ0/pTDhZCvXX2wsK9Al8Dpw0Kd+21Hr9ECABHgVA
 rHfdi4VUQXhu+nDfQgcNgnHwLlc0CvqsX5pH0v2h5x8HOjB5LiYu3eGCw
 LK91uC6wYDnr6tRgMOxz+JfU09rlUxoVAuEloiTh3OgpNGo06GZ26s+JP
 6+J/BwEjfUATuAtyUw/bWErIAVzCqet1sZt0UMn7CDwC1G72/Uq2x+jYE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="394509087"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
 d="scan'208,217";a="394509087"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 01:28:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="919570805"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
 d="scan'208,217";a="919570805"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2023 01:28:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Dec 2023 01:28:23 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Dec 2023 01:28:23 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Dec 2023 01:28:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cO9ux2cX+aMUJuPpDrWXFbloei9u8XUjBlVNQHz2nhQuDwo3XuAJB44E6eTZu+0OWIk8cotwURGvu4MXu7HYUQdCF3LFdebW1C/u7Ax3syZW0Mn1J7iG0SFwW9omuxaJ362K0389pz1Ss/TmcfYRthV15s9OYsCl0Glzib7U+DPzym6EOm59lenGSjUFp4PHHFCgHdcjRjt9JvGMf452nJr73IPpEFNWwEaMnehtnopRSfGS47ZJUEunva5xFoOG4iIk8V37k7Cb8fQ0xTC7jYYic2kQR4DZoGh8A5LJ3Fli2F+NIj11RKGXmLE504iOhf9gXeQbHWZpL4CHU2Ra5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yd+I8VN3ZQUwaDTMV772o5ftreehUCI047uB4lllM/s=;
 b=mFKODvXR21eHLEkoLdbEfRkt2NmVXtdGSTrFplMBPT5zHT12TOe9VjkcPHdiElC9mjZcHMabPXLcllTYrorP9Qfr2OfopesQHLHfPIq/eU1ztpy2mX2VmlzwPW7Q2kbUUK685I66s7YCoIb+l2UrecEW+kfnnCv2GGPMtp8IVFBSfv6e18bpx4q8zi47n07H4WwE+FSfrENTdNxTxNnbQUoVaVwGA3rIttSVLx/E31uWqnN3JNcJrER6JGiO/E0XZkEVq4ZtfDvD9ZirbJnMrB8tF3qxcxzP1aXiGceRqPWCQjXb60wxbntlY57zMVQ2aM4Xsz40uIy6k16CrP6/sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8597.namprd11.prod.outlook.com (2603:10b6:510:304::22)
 by LV8PR11MB8488.namprd11.prod.outlook.com (2603:10b6:408:1e7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Tue, 19 Dec
 2023 09:28:19 +0000
Received: from PH7PR11MB8597.namprd11.prod.outlook.com
 ([fe80::80ad:e241:4aec:60a9]) by PH7PR11MB8597.namprd11.prod.outlook.com
 ([fe80::80ad:e241:4aec:60a9%7]) with mapi id 15.20.7091.034; Tue, 19 Dec 2023
 09:28:18 +0000
Content-Type: multipart/alternative;
 boundary="------------Vts9J3xADOAyIt9KqWkr2SzN"
Message-ID: <991265ab-7c0c-4e46-9b68-1e57655c28ee@intel.com>
Date: Tue, 19 Dec 2023 14:58:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/xelpg: Add fake PCH for xelpg
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20231218110313.1233745-1-haridhar.kalvala@intel.com>
 <20231218155204.GC1885854@mdroper-desk1.amr.corp.intel.com>
 <20231218155437.GD1885854@mdroper-desk1.amr.corp.intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20231218155437.GD1885854@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: PN2P287CA0003.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::17) To PH7PR11MB8597.namprd11.prod.outlook.com
 (2603:10b6:510:304::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8597:EE_|LV8PR11MB8488:EE_
X-MS-Office365-Filtering-Correlation-Id: a44c4803-d2af-4fb3-fad8-08dc0074d5bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HjeB3za78k82XqkVtRwhwLT0nPrtn405FcIy/uREha5fsU0P67acC1b6qsmOMXSVA26Dq0RXJ6aIwila8BBSvdtVb/ekc3ocY5qRyPpJ0NtbOLcYiTpLwsJeItTdkp67zWhN6ssbChiwtfZDkLm0Mf7BP2hD8paHNy+njXTYthBIALCJ9vlLKyzNaE7ziuyhA7qoIzP/OgQtD9rigHmdP7X2uulblmiJZ6Xrfa+EhrIR2Q9CtbU4aIgzIQjjNw+26kxuyhLSXSzIVSz74TI33fEv2mijPdt29hjSVPDEgOPcbL3yCaGWQgPd9R3L8d2DgGVrD66fgCSlBoZWOtMwuCumHqnbjXpcQ5ExO2LlUQLA0Mb3//SONPheYA3AKNXQV4IuzxZ0213D5Uvh890kY0OT2UVdZp57ZhBBEba/W0x0ZFzgaQGBAo5Altv15kf+tQrCB61fQcemv2VDu/v2uWVwzlf4BJtNzi47HDhuYsBQ1v8pbGMc4cT2rLT/LezdGr1e1pjal3I8kdPdbYmc60oXzKH8BLjREr70pDfmGevQy4WbV2r4IS1WbigZFx8wfvrrB1Em1tATOPu81o868rs1wFP2tIdc7oSLXdvrY/GFTMTJisrKruEuhTETA7YzT66FjCD8LS3ME/I6ucgmOz1bdE74IfXdu1JOqPoRGaK7sJqt3/k/j/QKNkFodCZp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8597.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(39860400002)(396003)(366004)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(2616005)(26005)(6666004)(53546011)(6506007)(6512007)(33964004)(478600001)(83380400001)(30864003)(2906002)(5660300002)(8936002)(6862004)(4326008)(8676002)(41300700001)(66946007)(6486002)(316002)(66476007)(66556008)(6636002)(37006003)(82960400001)(38100700002)(36756003)(31696002)(86362001)(31686004)(226253002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODZiT0tiUExpV2YwNHBxTG5oaHdPTTJ0MGlQNlhqUHZnc2JFM3F1RTVPY2NQ?=
 =?utf-8?B?VVl3UXBpQTQrM3N6Ymk4ODBuNzlzOVVrOFo1ZldVeTFZcG1NVmlvc3RhbW9s?=
 =?utf-8?B?U1lodys4TmdocXFMVmNld1lxd2wxR29ORi8rVjJKc2JNM2FQSjdYYnY0czc3?=
 =?utf-8?B?dEdWeWEvY0ZrOEcweDBOb0RhTzFiRHJoQ0phQWdpTFNjTE1XeS9rZjhGTTQx?=
 =?utf-8?B?RWlkQ3RodFR1djRQL2VHUnpqNHJPWUJ3UXB2Q0cwam94MjBnUGpMaVllVG1i?=
 =?utf-8?B?Ym1WM1lINUtNa01aL2xmYnpZMTJ1dGpEZXZnWGsvaTNjTHpJb2xzcW5iN3dP?=
 =?utf-8?B?ak5DRWhyL2Q1NHl3TXhRRUFyNjdkdC93RExmZjBSOTBMdmJLNEpzeGJDSDJv?=
 =?utf-8?B?cEw4T0ZYWjJHU2xJSGdkOVZmM1lUYVE5YWtYVWhMYnVlNE8wVlJ5OVBqTzMy?=
 =?utf-8?B?ajFtNkRCeTdGSnUxbzlWUEtEeEd6SHA4b0d1Q1ZpOTlUQ1gxTmo0KzFUOFFl?=
 =?utf-8?B?bGhrOUNIWHhYV2FyenpYZE4rZGZoZk54QXFxc2VWRXNrcFJIZENzSlJ4K1VZ?=
 =?utf-8?B?RWFTdFhyb1FmZGJLb21JU2VpdEZBdklHTHQvN082TWZVNWladkZuV1JMWUN5?=
 =?utf-8?B?RHZKbFVvNUwxWkhOeDR2amxYZlhDcnM5MzY4OUluQkExNzh4aUFqNm5vcVZS?=
 =?utf-8?B?R2p4cXJucWxVdnFFY1Rja3laL0F2RlVzOHEyZDlwam5kU3F6SDRaQi9lVGpP?=
 =?utf-8?B?cm9Edk5hOWF0cXoyb3h2UkM2M200Nk9XY0hESzd3Zk91ZmJveTZZU3ZQYnFP?=
 =?utf-8?B?N2dFc1FidzhUelZsbHVSdU5vK2ZPYVZYaXg4c1NFdjFHSVROVlY4QWJObGR2?=
 =?utf-8?B?bmp1SlVoVDdVVU52Tkk5TlJSQkxBRVovRWFGSDJaekQzRnZBT2RwRzdqaTJs?=
 =?utf-8?B?Rk4ybThiUjlMaDJ4MjdyeHNtbFdoaEZiRnk1eVhla0M4SEhmaDNiOXdNRjdR?=
 =?utf-8?B?RXU4aUVQSVl4VlkrQ1RzaTMyRkxkYUY2U2toeDd5Q0NrYnNjTTdCZ29rYlAx?=
 =?utf-8?B?bzBZbXlLdVdZcTBWNmpmY0JDVVhJc1JTNENwM1RsUFQzbnZWeWJ1d1FONVFE?=
 =?utf-8?B?Z2lFSHNJMkdZV29rcjBqOXNPcmhxWGprY2ZWa3pwYW9SME9Gb2d5NjVZeXN6?=
 =?utf-8?B?cGFydE9VMW9ZS05rbXBEL3V4YlNKNHVSTUtwU3hXajFybzM3ancvYW5DWFlU?=
 =?utf-8?B?dE1iYjZOemNXL2I1ODZKZndvVTdqOXhiSWpOVWtjSzIxdU1CYUtLWnYwMll3?=
 =?utf-8?B?RTJZSTRZZHZJZjlrMzVkektKOHE0dTRPcnB5TUZvRUY5bUFVaHpCTVJhRFlS?=
 =?utf-8?B?cmdySlNySFB1eVJPQjN0bjBIeWdmWldHSUZHRkVaaHdzT3BQTUw2MXgyOSs5?=
 =?utf-8?B?Ny9KWkhBbHF0S0p6cmNta3R4YmMvVjhOYmJQa1dXUmJhMlJGazFEKzZoRXNw?=
 =?utf-8?B?bHRyWnE1S05nWUpSQnArUmpuYXVYSmpVRjlKVmhQdG5hUjBRNUx3ODFaTG9u?=
 =?utf-8?B?K1RiSVNIazU5YUkvaGRSS0crVjA0b2EwdFVTV0l3VW9YcDF2YW1GNnk2SVdB?=
 =?utf-8?B?UFhnMmRtQWZxRit4N29qeEdYRm9yYjBWU3NvKzNmbkRiSkp5VXU5blFucDdX?=
 =?utf-8?B?aU10dkFVM29oT2k3Qkl6NUFrYnNqZGk3b2dEL1ZhMnEybWhmbFhwL3NlUVhB?=
 =?utf-8?B?dnhtOVMyNVJqSHVVc0tXeGJWaG12M3RhVlRSUncvdjBSby9WYkpEUE5UNEM5?=
 =?utf-8?B?dU9QNExTMjJhZUlFMm5mOW9RL044dXVQdnhZdHdWZGdGQUhPbml0MFJhcUJ0?=
 =?utf-8?B?T3Z2QTBucmFzaml5QVN1NCtjN2oxNXlMUHd2Mm1VV1NZRExGTVF0S3A3dDRL?=
 =?utf-8?B?enU1S2tTUXB3VDJnWi9rRUU0dS9RMEtuZ0lRNG1VdmhnUFZnRzlkVG1ka2pz?=
 =?utf-8?B?N0svZHJQNks1cUJVdHBQdDl3OFFuQWNSTmh5c29lWjRSRGliK1JMcFhFa21j?=
 =?utf-8?B?S0cvOWVhZWpWRDhJWWhKZjdXQkdldHNhbEJUUlFBeUh1TUJJTlcxcXRHSXlT?=
 =?utf-8?B?VFJqSEcvVVNpbkVQK0hzdUs0VVZ2ZDhpMjdUVGM3RzRVcXFqTjd3RUJ6ZzhB?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a44c4803-d2af-4fb3-fad8-08dc0074d5bc
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8597.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2023 09:28:18.5367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fc7OEh+UweDQfjv0LrOhmY+s06wPPJ+/9quNgReC2W9aVPlnu+mqpHk5OUcIu3AprkNCKCPtsi8ft0N3oCzpuh/WxD1gE7iJB+iTYw+lyeQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8488
X-OriginatorOrg: intel.com
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

--------------Vts9J3xADOAyIt9KqWkr2SzN
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 12/18/2023 9:24 PM, Matt Roper wrote:
> Oh, and one more thing I forgot to mention before hitting send...the
> title for this patch doesn't make sense.  Xe_LPG is the graphics IP used
> by MTL; that's completely unrelated to the display IP (which is
> Xe_LPD+).
>
> Since we're assigning the fake PCH value based off the platform
> (IS_METEORLAKE) rather than the display version, this should just be
> "drm/i915/mtl: Add fake PCH for Meteor Lake"
>
>
> Matt
Sure, I will update.
> On Mon, Dec 18, 2023 at 07:52:12AM -0800, Matt Roper wrote:
>> On Mon, Dec 18, 2023 at 04:33:13PM +0530, Haridhar Kalvala wrote:
>>> Correct the implementation trying to detect MTL PCH with
>>> the MTL fake PCH id.
>>>
>>> On MTL, both the North Display (NDE) and South Display (SDE) functionality
>>> reside on the same die (the SoC die in this case), unlike many past
>>> platforms where the SDE was on a separate PCH die. The code is (badly)
>>> structured today in a way that assumes the SDE is always on the PCH for
>>> modern platforms, so on platforms where we don't actually need to identify
>>> the PCH to figure out how the SDE behaves (i.e., all DG1/2 GPUs as well as
>>> MTL and LNL),we've been assigning a "fake PCH" as a quickhack that allows
>>> us to avoid restructuring a bunch of the code.we've been assigning a
>>> "fake PCH" as a quick hack that allows us to avoid restructuring a bunch
>>> of the code.
>>>
>>> Signed-off-by: Haridhar Kalvala<haridhar.kalvala@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_backlight.c   |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_cdclk.c       |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_display_irq.c |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_gmbus.c       |  6 ++----
>>>   drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  7 +++----
>>>   drivers/gpu/drm/i915/display/intel_pps.c         |  2 +-
>>>   drivers/gpu/drm/i915/soc/intel_pch.c             | 12 +++++++-----
>>>   drivers/gpu/drm/i915/soc/intel_pch.h             |  4 ++--
>>>   8 files changed, 18 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
>>> index 612d4cd9dacb..696ae59874a9 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
>>> @@ -1465,7 +1465,7 @@ static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int
>>>   
>>>   	if (controller == 1 &&
>>>   	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
>>> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
>>> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>>>   		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>>>   
>>>   	return true;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> index c985ebb6831a..2e6e55d3e885 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> @@ -3469,7 +3469,7 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>>>   
>>>   	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>>>   		freq = dg1_rawclk(dev_priv);
>>> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
>>> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
>>>   		/*
>>>   		 * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
>>>   		 * "RAWCLK_FREQ defaults to the values for 38.4 and does
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> index a7d8f3fc98de..e318e24d1efd 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> @@ -986,7 +986,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
>>>   	 * their flags both in the PICA and SDE IIR.
>>>   	 */
>>>   	if (*pch_iir & SDE_PICAINTERRUPT) {
>>> -		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
>>> +		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) <= PCH_ADP);
>>>   
>>>   		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
>>>   		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
>>> index 40d7b6f3f489..2d9c740ba17e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>>> @@ -155,7 +155,8 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>>>   	const struct gmbus_pin *pins;
>>>   	size_t size;
>>>   
>>> -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
>>> +	if ((INTEL_PCH_TYPE(i915) >= PCH_LNL) ||
>>> +	    (INTEL_PCH_TYPE(i915) >= PCH_MTL)) {
>> You only need the MTL condition here.  The LNL check becomes redundant.
yeah, removed.
>>>   		pins = gmbus_pins_mtp;
>>>   		size = ARRAY_SIZE(gmbus_pins_mtp);
>>>   	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
>>> @@ -164,9 +165,6 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>>>   	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>>>   		pins = gmbus_pins_dg1;
>>>   		size = ARRAY_SIZE(gmbus_pins_dg1);
>>> -	} else if (INTEL_PCH_TYPE(i915) >= PCH_MTP) {
>>> -		pins = gmbus_pins_mtp;
>>> -		size = ARRAY_SIZE(gmbus_pins_mtp);
>>>   	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
>>>   		pins = gmbus_pins_icp;
>>>   		size = ARRAY_SIZE(gmbus_pins_icp);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>>> index 04f62f27ad74..63f697383bf3 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>>> @@ -163,12 +163,11 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>>>   	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>>>   		return;
>>>   
>>> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
>>> +	if ((INTEL_PCH_TYPE(dev_priv) >= PCH_LNL) ||
>>> +	    (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL))
>> Ditto
yeah, removed.
>>
>>>   		hpd->pch_hpd = hpd_mtp;
>>>   	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>>>   		hpd->pch_hpd = hpd_sde_dg1;
>>> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
>>> -		hpd->pch_hpd = hpd_mtp;
>>>   	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>>>   		hpd->pch_hpd = hpd_icp;
>>>   	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
>>> @@ -1139,7 +1138,7 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
>>>   
>>>   	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
>>>   		xe2lpd_sde_hpd_irq_setup(i915);
>>> -	else if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
>>> +	else if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
>>>   		mtp_hpd_irq_setup(i915);
>>>   }
>>>   
>>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
>>> index a8fa3a20990e..2d65a538f83e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>>> @@ -366,7 +366,7 @@ static bool intel_pps_is_valid(struct intel_dp *intel_dp)
>>>   
>>>   	if (intel_dp->pps.pps_idx == 1 &&
>>>   	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
>>> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
>>> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>>>   		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>>>   
>>>   	return true;
>>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
>>> index 240beafb38ed..f693c1ffbeee 100644
>>> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
>>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
>>> @@ -140,11 +140,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>>>   		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
>>>   			    !IS_ALDERLAKE_P(dev_priv));
>>>   		return PCH_ADP;
>>> -	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
>>> -	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:
>> The #define's for these should also be removed from intel_pch.h
sure, removed.
>> .
>>> -		drm_dbg_kms(&dev_priv->drm, "Found Meteor Lake PCH\n");
>>> -		drm_WARN_ON(&dev_priv->drm, !IS_METEORLAKE(dev_priv));
>>> -		return PCH_MTP;
>>>   	default:
>>>   		return PCH_NONE;
>>>   	}
>>> @@ -225,6 +220,13 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>>>   	if (DISPLAY_VER(dev_priv) >= 20) {
>>>   		dev_priv->pch_type = PCH_LNL;
>>>   		return;
>>> +	} else if (IS_METEORLAKE(dev_priv)) {
>>> +		/*
>>> +		 * Both north display and south display are on the SoC die.
>>> +		 * The real PCH is uninvolved in display.
>>> +		 */
>>> +		dev_priv->pch_type = PCH_MTL;
>>> +		return;
>>>   	} else if (IS_DG2(dev_priv)) {
>>>   		dev_priv->pch_type = PCH_DG2;
>>>   		return;
>>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
>>> index 1b03ea60a7a8..b044bb0a77ae 100644
>>> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
>>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
>>> @@ -25,11 +25,11 @@ enum intel_pch {
>>>   	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
>>>   	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
>>>   	PCH_ADP,	/* Alder Lake PCH */
>>> -	PCH_MTP,	/* Meteor Lake PCH */
>>>   
>>>   	/* Fake PCHs, functionality handled on the same PCI dev */
>>>   	PCH_DG1 = 1024,
>>>   	PCH_DG2,
>>> +	PCH_MTL,
>>>   	PCH_LNL,
>>>   };
>>>   
>>> @@ -68,7 +68,7 @@ enum intel_pch {
>>>   #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>>>   #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
>>>   #define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
>>> -#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
>>> +#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTL)
>> Since this is a fake PCH, this macro should be HAS_PCH_MTL() to match
>> the naming of the LNL fake PCH.
>>
>> It looks like this macro only gets used in a single place in
>> map_ddc_pin(), and that's another case where the MTL + LNL conditions
>> can be consolidated now that the PCH enum has been reordered.  So maybe
>> you can just remove this macro entirely once you make that change.  In
>> fact, it doesn't look like HAS_PCH_LNL is used anywhere today either, so
>> a follow-up patch to remove that unused definition might be a good idea
>> as well.
>>
>>
>> Matt

sure, modified and removed unused macros.

Thanks & regards,

Haridhar Kalvala

>>>   #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
>>>   #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
>>>   #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
>>> -- 
>>> 2.25.1
>>>
>> -- 
>> Matt Roper
>> Graphics Software Engineer
>> Linux GPU Platform Enablement
>> Intel Corporation

-- 
Regards,
Haridhar Kalvala

--------------Vts9J3xADOAyIt9KqWkr2SzN
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 12/18/2023 9:24 PM, Matt Roper
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20231218155437.GD1885854@mdroper-desk1.amr.corp.intel.com">
      <pre class="moz-quote-pre" wrap="">Oh, and one more thing I forgot to mention before hitting send...the
title for this patch doesn't make sense.  Xe_LPG is the graphics IP used
by MTL; that's completely unrelated to the display IP (which is
Xe_LPD+).

Since we're assigning the fake PCH value based off the platform
(IS_METEORLAKE) rather than the display version, this should just be
&quot;drm/i915/mtl: Add fake PCH for Meteor Lake&quot;


Matt
</pre>
    </blockquote>
    Sure, I will update.<br>
    <blockquote type="cite" cite="mid:20231218155437.GD1885854@mdroper-desk1.amr.corp.intel.com">
      <pre class="moz-quote-pre" wrap="">
On Mon, Dec 18, 2023 at 07:52:12AM -0800, Matt Roper wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">On Mon, Dec 18, 2023 at 04:33:13PM +0530, Haridhar Kalvala wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Correct the implementation trying to detect MTL PCH with
the MTL fake PCH id.

On MTL, both the North Display (NDE) and South Display (SDE) functionality
reside on the same die (the SoC die in this case), unlike many past
platforms where the SDE was on a separate PCH die. The code is (badly)
structured today in a way that assumes the SDE is always on the PCH for
modern platforms, so on platforms where we don't actually need to identify
the PCH to figure out how the SDE behaves (i.e., all DG1/2 GPUs as well as
MTL and LNL),we've been assigning a &quot;fake PCH&quot; as a quickhack that allows
us to avoid restructuring a bunch of the code.we've been assigning a
&quot;fake PCH&quot; as a quick hack that allows us to avoid restructuring a bunch
of the code.

Signed-off-by: Haridhar Kalvala <a class="moz-txt-link-rfc2396E" href="mailto:haridhar.kalvala@intel.com">&lt;haridhar.kalvala@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_backlight.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_display_irq.c |  2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c       |  6 ++----
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  7 +++----
 drivers/gpu/drm/i915/display/intel_pps.c         |  2 +-
 drivers/gpu/drm/i915/soc/intel_pch.c             | 12 +++++++-----
 drivers/gpu/drm/i915/soc/intel_pch.h             |  4 ++--
 8 files changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 612d4cd9dacb..696ae59874a9 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1465,7 +1465,7 @@ static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int
 
 	if (controller == 1 &amp;&amp;
 	    INTEL_PCH_TYPE(i915) &gt;= PCH_ICP &amp;&amp;
-	    INTEL_PCH_TYPE(i915) &lt; PCH_MTP)
+	    INTEL_PCH_TYPE(i915) &lt;= PCH_ADP)
 		return intel_de_read(i915, SOUTH_CHICKEN1) &amp; ICP_SECOND_PPS_IO_SELECT;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c985ebb6831a..2e6e55d3e885 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3469,7 +3469,7 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 
 	if (INTEL_PCH_TYPE(dev_priv) &gt;= PCH_DG1)
 		freq = dg1_rawclk(dev_priv);
-	else if (INTEL_PCH_TYPE(dev_priv) &gt;= PCH_MTP)
+	else if (INTEL_PCH_TYPE(dev_priv) &gt;= PCH_MTL)
 		/*
 		 * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
 		 * &quot;RAWCLK_FREQ defaults to the values for 38.4 and does
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a7d8f3fc98de..e318e24d1efd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -986,7 +986,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
 	 * their flags both in the PICA and SDE IIR.
 	 */
 	if (*pch_iir &amp; SDE_PICAINTERRUPT) {
-		drm_WARN_ON(&amp;i915-&gt;drm, INTEL_PCH_TYPE(i915) &lt; PCH_MTP);
+		drm_WARN_ON(&amp;i915-&gt;drm, INTEL_PCH_TYPE(i915) &lt;= PCH_ADP);
 
 		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
 		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 40d7b6f3f489..2d9c740ba17e 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -155,7 +155,8 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
 	const struct gmbus_pin *pins;
 	size_t size;
 
-	if (INTEL_PCH_TYPE(i915) &gt;= PCH_LNL) {
+	if ((INTEL_PCH_TYPE(i915) &gt;= PCH_LNL) ||
+	    (INTEL_PCH_TYPE(i915) &gt;= PCH_MTL)) {
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
You only need the MTL condition here.  The LNL check becomes redundant.
</pre>
      </blockquote>
    </blockquote>
    yeah, removed.<br>
    <blockquote type="cite" cite="mid:20231218155437.GD1885854@mdroper-desk1.amr.corp.intel.com">
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap=""> 		pins = gmbus_pins_mtp;
 		size = ARRAY_SIZE(gmbus_pins_mtp);
 	} else if (INTEL_PCH_TYPE(i915) &gt;= PCH_DG2) {
@@ -164,9 +165,6 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
 	} else if (INTEL_PCH_TYPE(i915) &gt;= PCH_DG1) {
 		pins = gmbus_pins_dg1;
 		size = ARRAY_SIZE(gmbus_pins_dg1);
-	} else if (INTEL_PCH_TYPE(i915) &gt;= PCH_MTP) {
-		pins = gmbus_pins_mtp;
-		size = ARRAY_SIZE(gmbus_pins_mtp);
 	} else if (INTEL_PCH_TYPE(i915) &gt;= PCH_ICP) {
 		pins = gmbus_pins_icp;
 		size = ARRAY_SIZE(gmbus_pins_icp);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 04f62f27ad74..63f697383bf3 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -163,12 +163,11 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
 		return;
 
-	if (INTEL_PCH_TYPE(dev_priv) &gt;= PCH_LNL)
+	if ((INTEL_PCH_TYPE(dev_priv) &gt;= PCH_LNL) ||
+	    (INTEL_PCH_TYPE(dev_priv) &gt;= PCH_MTL))
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Ditto</pre>
      </blockquote>
    </blockquote>
    yeah, removed.
    <blockquote type="cite" cite="mid:20231218155437.GD1885854@mdroper-desk1.amr.corp.intel.com">
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">

</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap=""> 		hpd-&gt;pch_hpd = hpd_mtp;
 	else if (INTEL_PCH_TYPE(dev_priv) &gt;= PCH_DG1)
 		hpd-&gt;pch_hpd = hpd_sde_dg1;
-	else if (INTEL_PCH_TYPE(dev_priv) &gt;= PCH_MTP)
-		hpd-&gt;pch_hpd = hpd_mtp;
 	else if (INTEL_PCH_TYPE(dev_priv) &gt;= PCH_ICP)
 		hpd-&gt;pch_hpd = hpd_icp;
 	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
@@ -1139,7 +1138,7 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
 
 	if (INTEL_PCH_TYPE(i915) &gt;= PCH_LNL)
 		xe2lpd_sde_hpd_irq_setup(i915);
-	else if (INTEL_PCH_TYPE(i915) &gt;= PCH_MTP)
+	else if (INTEL_PCH_TYPE(i915) &gt;= PCH_MTL)
 		mtp_hpd_irq_setup(i915);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index a8fa3a20990e..2d65a538f83e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -366,7 +366,7 @@ static bool intel_pps_is_valid(struct intel_dp *intel_dp)
 
 	if (intel_dp-&gt;pps.pps_idx == 1 &amp;&amp;
 	    INTEL_PCH_TYPE(i915) &gt;= PCH_ICP &amp;&amp;
-	    INTEL_PCH_TYPE(i915) &lt; PCH_MTP)
+	    INTEL_PCH_TYPE(i915) &lt;= PCH_ADP)
 		return intel_de_read(i915, SOUTH_CHICKEN1) &amp; ICP_SECOND_PPS_IO_SELECT;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 240beafb38ed..f693c1ffbeee 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -140,11 +140,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_WARN_ON(&amp;dev_priv-&gt;drm, !IS_ALDERLAKE_S(dev_priv) &amp;&amp;
 			    !IS_ALDERLAKE_P(dev_priv));
 		return PCH_ADP;
-	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
-	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
The #define's for these should also be removed from intel_pch.h
</pre>
      </blockquote>
    </blockquote>
    sure, removed.<br>
    <blockquote type="cite" cite="mid:20231218155437.GD1885854@mdroper-desk1.amr.corp.intel.com">
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap=""><span style="white-space: normal">.</span></pre>
      </blockquote>
    </blockquote>
    <blockquote type="cite" cite="mid:20231218155437.GD1885854@mdroper-desk1.amr.corp.intel.com">
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">-		drm_dbg_kms(&amp;dev_priv-&gt;drm, &quot;Found Meteor Lake PCH\n&quot;);
-		drm_WARN_ON(&amp;dev_priv-&gt;drm, !IS_METEORLAKE(dev_priv));
-		return PCH_MTP;
 	default:
 		return PCH_NONE;
 	}
@@ -225,6 +220,13 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) &gt;= 20) {
 		dev_priv-&gt;pch_type = PCH_LNL;
 		return;
+	} else if (IS_METEORLAKE(dev_priv)) {
+		/*
+		 * Both north display and south display are on the SoC die.
+		 * The real PCH is uninvolved in display.
+		 */
+		dev_priv-&gt;pch_type = PCH_MTL;
+		return;
 	} else if (IS_DG2(dev_priv)) {
 		dev_priv-&gt;pch_type = PCH_DG2;
 		return;
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
index 1b03ea60a7a8..b044bb0a77ae 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.h
+++ b/drivers/gpu/drm/i915/soc/intel_pch.h
@@ -25,11 +25,11 @@ enum intel_pch {
 	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
 	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
 	PCH_ADP,	/* Alder Lake PCH */
-	PCH_MTP,	/* Meteor Lake PCH */
 
 	/* Fake PCHs, functionality handled on the same PCI dev */
 	PCH_DG1 = 1024,
 	PCH_DG2,
+	PCH_MTL,
 	PCH_LNL,
 };
 
@@ -68,7 +68,7 @@ enum intel_pch {
 #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)-&gt;pch_type)
 #define INTEL_PCH_ID(dev_priv)			((dev_priv)-&gt;pch_id)
 #define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
-#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
+#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTL)
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Since this is a fake PCH, this macro should be HAS_PCH_MTL() to match
the naming of the LNL fake PCH.

It looks like this macro only gets used in a single place in
map_ddc_pin(), and that's another case where the MTL + LNL conditions
can be consolidated now that the PCH enum has been reordered.  So maybe
you can just remove this macro entirely once you make that change.  In
fact, it doesn't look like HAS_PCH_LNL is used anywhere today either, so
a follow-up patch to remove that unused definition might be a good idea
as well.


Matt
</pre>
      </blockquote>
    </blockquote>
    <p>sure, modified and removed unused macros.</p>
    <p>Thanks &amp; regards,</p>
    <p>Haridhar Kalvala<br>
    </p>
    <blockquote type="cite" cite="mid:20231218155437.GD1885854@mdroper-desk1.amr.corp.intel.com">
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap=""> #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
 #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
 #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
-- 
2.25.1

</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Regards,
Haridhar Kalvala</pre>
  </body>
</html>

--------------Vts9J3xADOAyIt9KqWkr2SzN--
