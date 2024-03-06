Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B437872CC9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 03:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A515F10FCD8;
	Wed,  6 Mar 2024 02:30:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V1zN1qGG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108F510FCD8
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 02:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709692200; x=1741228200;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BljxBbAspQSW8ydSzyByXy6HGopkVrHUvulLgqIAa2o=;
 b=V1zN1qGGBzZpcsR5BkSDRNBuPlGCTNfZFYWWRXwyyp+YrAfuj6UN333L
 n8qmyg+eAZQ9ZJ4KD4c3tAxz1LckBFWCmJ+RX7g3c3mQwSqAW6pB7lpRc
 kmgLjoAhTA49Hlcbfiwc0X2FZesIR/OGcfyACC+tRw0BpHdKiFyk4Fbag
 MIqtidVeAy2J2fhp9gCzyutxTLvv1OQnG4nCJM+qZg7RHCjIwK1A/VxtL
 f0i3B+YLz+bczA+VPnQ/MGMxixnwhIzpXJtd6tfZf0zyWAwGPtdDEhZ1o
 emYKGBIGUR+lKbs3W3Ob75w/OV/BdCy9Xb0JbP3/Wigx3kz1UddyG3DFo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4144095"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="4144095"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 18:29:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="14154584"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2024 18:29:59 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 18:29:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Mar 2024 18:29:58 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Mar 2024 18:29:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ci/7F4zik+DKTkijRbo3g2lYIjY2gFfhSI6FqMJLO10ZsTmwfkJb2VroSCg+irHXEbksutsK2N7oVktlNxmqXxR/1XC/zPL61enZR7ZmufcWnoYLuAY/GNK5MF8+i9g84e+zdMeZHNEggPIGQvYxbjOnfBGr4Zf3Nbdt+9laNomQs/aLtOUn+q5XAdSjyXI7zx1u7wqIsaSyyQJF4QwxV97XUYW083rpjPqJr2nvnJ28yoL1pGYwjEZVkywZQh9LfoESMJUpqavRGZ/FJ6EvhXfjbhR45+Tmy/rRQJPU6foVwFkItMnawWXHhfPf56MIHaGEZW8IHCz0ziYnMHb2rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ypU1YW1/9eVtXtrJJRu+a2Dkvs5gbMVvRPqKoFYUlZY=;
 b=nYESw1lYILS3VEXT5Uujn+FAr5+R8tU1H27Wxwl94ikaQquYpQTGQkRMJthByBsnbq4Iaw9bM0ZxOUYyIihjLiK0gujY/sIndT8jMZVH6mMiq/MCkolnwm6Weq0U9y438r+gqzcGDkdVX1IxE1+gYNAWle/RmqmFBm3QdDhHvDJ3I21CPxTQ3C2eTrB1epdY32C/gjuvsnI4MFv3f/pxHDLb1LzLAMJVByXQ7Tzyrn4i8k+AQrWvF01cQKjgR7X/Yyij+YKrKU68xWlxGw0Zug+xC9GeROg6Ujgex1AZrKSXj4tNhnsF9jhACCbOOPNLFzUgBb1uCqXNybEmVooS/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by IA0PR11MB7884.namprd11.prod.outlook.com (2603:10b6:208:3dc::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Wed, 6 Mar
 2024 02:29:55 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::ce60:5b9:e62f:ed8f]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::ce60:5b9:e62f:ed8f%3]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 02:29:55 +0000
Message-ID: <2f2e1395-b44c-4ce1-93b3-e9049f19ac05@intel.com>
Date: Wed, 6 Mar 2024 07:59:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] drm/i915/bios: abstract child device expected size
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240226175854.287871-1-jani.nikula@intel.com>
 <20240226175854.287871-3-jani.nikula@intel.com>
 <f9a638c9-86ae-4595-9d19-85b3eb66ac58@intel.com> <87cys92aoa.fsf@intel.com>
Content-Language: en-US
From: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
In-Reply-To: <87cys92aoa.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2P287CA0003.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::17) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|IA0PR11MB7884:EE_
X-MS-Office365-Filtering-Correlation-Id: f6d4a9fd-2808-48de-c46a-08dc3d854f9a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yHum4hCokVxXN9eqdSgfWBGshgGmsMv5rMrgFaw1OJ1XWnV56zdBVRF5mhDRuefAnHjTEqDfFiQQiJgbcukAeyYRdx3PkqHCbO8gm8LYYVBXXXDSOfMXwZXLn8JEVLtPQoCDei8IzPLWp+B2jPqCGCP3mmItLAnf/S3tqC2Lx9jyoCFTvPoYSd03e2OHfdscvLvO3F1JQv2iDQRpVDYekv6N6s01Zml3OAwX5QcQQW13+tp05sgESqMtUvC89JaJHQPWagKD75bcdGOtdZjkfw4Rh9OQ6ynmVBpTH4o2ErRbfcPlMHoRT6a0ZWveNehMKQc2GwXLlHk8MyfR6I59iR62maAQw7A75IWC+6/hQ9KvXd6p3q4N1IEVHQ/jamWFzxK1m4Rc2vk8XmWaY0hOtX986SaDE1kAhTJ/XOTelv96Nn7IvAm6FsmHZFN6MSKNg/j7who4Y46CURfYTqzQ7PhH275RLjZ94+uRoC+FNzMhU8/IvLcjUP21iTkjVzA90iLkffMOh2MREIgvr7d0an0aGw9BktzKTdUaEmrK7Wx+huHNjvQtfQn3ASC+itlOH17CzR/E4DscO019PUqCRhiH/1nb3oWifIjW+bt20sVPjq6ixrE8jExkxDTKSRM/6m4GEssuiMUeBxH5LkQ3gWVpCcIhlj2a2hFIY6Px8HY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3g5UDVnSzZFOE95bGpaM25zN3cxQVlKd0F2Y2JWVmZXSjRIc3ZPajh1YnVR?=
 =?utf-8?B?Q2t1UkY5bnVWOWZONWlJTVVGZk9wOUYyTGQrTWkxSUwzUit4QVBiTWhjZUdH?=
 =?utf-8?B?ODlna1lsRUNKYmt6ZmFjQ2hGS3Rjb3NxVGJ4bVFiU09hRlkvWUVnV0hZT3Zk?=
 =?utf-8?B?OHRxd1F1MUFTek9kKzFLd2xJR3pUK2ErdWNnY3VucmZMdkpJQ0E3U2FhT1lK?=
 =?utf-8?B?UmdnZmE2amdKeHpuSHRyNTZ3cHdDcGpBNlBDeHUwc2swdVBtczFqTThQNWtE?=
 =?utf-8?B?b2hzS0tHMXQyM1huU2kyMnhaRmdvR25zWk02SWpuMG1HTzJSNDhiaXFsbC9B?=
 =?utf-8?B?ejFEVlNvaFlXTUM4QVo0b2xtVDdXVXBQZWFicXEzWXREbEZHOStVYjJnQzR4?=
 =?utf-8?B?c01KTEZaSURLSkRuSWpPUENXMk9IUEFVYWdSU3pSUFRreStwdkFGQ3pCVTlx?=
 =?utf-8?B?aW1DaUMrNncwSVdzN3UveHpTYTJDRUgzdXVKSHd1NTRjSW1ISGxSQ0k0eFp5?=
 =?utf-8?B?WHdOT2FvUVdyRmNEblQ3bnc1K1ZBTGNSR2RwcUZnZDlmazgyZ2hyL0F4OThS?=
 =?utf-8?B?NUo4VVE3TndndmhqTWJMc21HUms2M3NySCthZHVlWDNhNGU1KzVIaTYwam5y?=
 =?utf-8?B?c0hST1dJYnJmUjYxWkpJZXJnY1k3cG5zOGZhVjFGWFRqN0dXdFB4cWFaQjhz?=
 =?utf-8?B?K0NXUmZZWXZJQzNkeldsajYrbjQzQ1orNXBTRlpMSFFVZk8rZEJzZG9zS3FY?=
 =?utf-8?B?cXkwZTBndWRFblhDRk9obmJIUUM4cmNqOXh5bWFPRktFUUJpTTZvNUVuU3Nl?=
 =?utf-8?B?c1ROeUYycVBSVkxoelM2bGN3QzFLaG92OXNmMENkRFpabzFzbE44VnowaGt0?=
 =?utf-8?B?L2pDR3hQMUFGS1ZHRUI2Y1o2Y1NHVC93ekJrcmc4RHNNUnRJV1NyR2c1eTJh?=
 =?utf-8?B?ODJJcU9ZQ1hPQStiRG9mZDlRYXd5WlA5K3p5aVplUmMxNDhidTRpT0tMc3Rk?=
 =?utf-8?B?ckk3MGRCTitsVXFoVUZCbmdFZHkvZzZaVWlSeGFUQ0NaL0I3dCtZN0NTZ01k?=
 =?utf-8?B?cXlYM2ZmOWhsTWRIMHQzWGptbjEzdmY3aDF1czlVR0JETzlqOXFhZ29oV0tK?=
 =?utf-8?B?c2orVTVOaGJycVpxaVArRGJQMmxFcEUyUzRQTTQra2dZV2ZwUUJwLzFvZjQ2?=
 =?utf-8?B?YS9TK2JBQ1FHQkxjMThoVkVncmZBSWZnRTlEeDY1WkdlOCtYdklwNHFONTRo?=
 =?utf-8?B?K2F4bWtlRDBDeThRRnBIMGdDSFByM3pYU1hqTzBZZXlaKzVjR3ZJZjROTnRM?=
 =?utf-8?B?MGlOUUlmR1ZENy9MVjM5R0JWZndCNHptZjQ3cHQ5dzVnbDZsYVFWVnR4NHVU?=
 =?utf-8?B?dlc4TnA4RldkRE4rVzFjS0lxMkx6ZU5mZVcvNFRiVktnaFFwMTYzU3NBWEQy?=
 =?utf-8?B?NkhjRkd2UTNTOWpJMTR2eWdPQkVsQzU3ZXMyOFp3eUxwUFQzNWVhMjdvcG1T?=
 =?utf-8?B?NktkYmNVMGJsVjBTbW5RVzF1MmsxZHo5a0R2RklJTWF1RVNFT1BQUUg4aEdO?=
 =?utf-8?B?ME9ZRFhlSStpcXA1dnpZTEJncFlrZDFHNngyZlUySml3QWYwV25oWlRNU2V1?=
 =?utf-8?B?Z0t6L1NQRC80OENSZXQybE5XRUR4TjhTY3owQ2g5Qjh0MlVoZ2xYTDhFeHgy?=
 =?utf-8?B?YjdUNUZBOUFkQ0h5T3BlbmlLbVBpOWhCK3kyUXc0SU51aUFhZC9oVVQycHJZ?=
 =?utf-8?B?blVpeVYwYXE4UnRBWHFmcUNKWUhwVzlQN3dpckRDRWY4QlVBdjdISkd2THgw?=
 =?utf-8?B?bElLVHBURm5lMk40cjR0UEwvbGtJcjdwUW1yNUUyTkdWV2U4UXZqL3BrazI3?=
 =?utf-8?B?MXkwZWUzemNVeDRoempzY2w2Qk5SMW5jZVZoQmNVczNYbUZZV0c3bVAyS1NO?=
 =?utf-8?B?TWs1NmJuL1N4OG5yNXlIOUhQODdpYWFLUjhQVmRZbS9SZVBLNzU5UXQwRXpr?=
 =?utf-8?B?RGZsL0hZRUJqb083U1NYaGdwVWVkb3ppL3haVVZDVlgydDBpWDRGOWd4cFo3?=
 =?utf-8?B?ZzFoY1N3azNoSG9ORCs3MUpMcmhZZDlKWlFJYWovcmc4Vm5qNWJBeGpNeUNI?=
 =?utf-8?B?YXNKdk50aDVnOHpFVFlqTXAwMWRTK3daMG9uUGpzZTFRNWorcHNJQmhwbWhO?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6d4a9fd-2808-48de-c46a-08dc3d854f9a
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2024 02:29:55.8387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GhkfKr4HM5aa7PaAL/6iM1PW2RCgKOgrU+i+AaTJXdPCcuwjQJ4BivsU+hDcNxbjshatWse62JbOSMEiurPuDmzcZndYsYKJcvmzd654bwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7884
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/5/2024 16:43, Jani Nikula wrote:
> On Tue, 05 Mar 2024, "Chauhan, Shekhar" <shekhar.chauhan@intel.com> wrote:
>> On 2/26/2024 23:28, Jani Nikula wrote:
>>> Add a function to return the expected child device size. Flip the if
>>> ladder around and use the same versions as in documentation to make it
>>> easier to verify. Return an error for unknown versions. No functional
>>> changes.
>>>
>>> v2: Move BUILD_BUG_ON() next to the expected sizes
>>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_bios.c | 40 ++++++++++++++---------
>>>    1 file changed, 24 insertions(+), 16 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>>> index c0f41bd1f946..343726de9aa7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>> @@ -2699,27 +2699,35 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
>>>    		print_ddi_port(devdata);
>>>    }
>>>    
>>> +static int child_device_expected_size(u16 version)
>>> +{
>>> +	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>>> +
>>> +	if (version > 256)
>>> +		return -ENOENT;
>>> +	else if (version >= 256)
>> Correct me if I'm wrong, but isn't version >= 256, a bit cryptic after
>> the first check?
>> Would it be wise to make it version > 256, return -ENOENT and if version
>> == 256, return 40?
> It may look so right now, but consider these future cases:
>
> - VBT version gets bumped, and we get the info that, say, version 270
>    still has size 40. What needs to be changed?
>
> - VBT version gets bumped, and we get the info that, say, version 271
>    has size 41. What needs to be changed?
>
> Note that VBT versions above are pure examples, and don't reflect the
> spec in any way.
>
> We know right now that versions >= 256 will have size 40. We don't want
> to express that in a way that requires us to modify it in the
> future. This is the difference to the old if ladder.
Understood. Thanks.
>
> Indeed, we could already bump the first if to
>
> 	if (version > 257)
>
> because we now know version 257 has size 40.
>
> BR,
> Jani.
>
>
>>> +		return 40;
>>> +	else if (version >= 216)
>>> +		return 39;
>>> +	else if (version >= 196)
>>> +		return 38;
>>> +	else if (version >= 195)
>>> +		return 37;
>>> +	else if (version >= 111)
>>> +		return LEGACY_CHILD_DEVICE_CONFIG_SIZE;
>>> +	else if (version >= 106)
>>> +		return 27;
>>> +	else
>>> +		return 22;
>>> +}
>>> +
>>>    static bool child_device_size_valid(struct drm_i915_private *i915, int size)
>>>    {
>>>    	int expected_size;
>>>    
>>> -	if (i915->display.vbt.version < 106) {
>>> -		expected_size = 22;
>>> -	} else if (i915->display.vbt.version < 111) {
>>> -		expected_size = 27;
>>> -	} else if (i915->display.vbt.version < 195) {
>>> -		expected_size = LEGACY_CHILD_DEVICE_CONFIG_SIZE;
>>> -	} else if (i915->display.vbt.version == 195) {
>>> -		expected_size = 37;
>>> -	} else if (i915->display.vbt.version <= 215) {
>>> -		expected_size = 38;
>>> -	} else if (i915->display.vbt.version <= 255) {
>>> -		expected_size = 39;
>>> -	} else if (i915->display.vbt.version <= 256) {
>>> -		expected_size = 40;
>>> -	} else {
>>> +	expected_size = child_device_expected_size(i915->display.vbt.version);
>>> +	if (expected_size < 0) {
>>>    		expected_size = sizeof(struct child_device_config);
>>> -		BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>>>    		drm_dbg(&i915->drm,
>>>    			"Expected child device config size for VBT version %u not known; assuming %d\n",
>>>    			i915->display.vbt.version, expected_size);

-- 
-shekhar

