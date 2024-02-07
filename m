Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 455D084D043
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 18:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68D9A10E3EC;
	Wed,  7 Feb 2024 17:58:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WtYwALU2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A33810E633
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 17:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707328697; x=1738864697;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kyiz0V1Glt2OLYudAiH2q4hMrG0vwyAinIB9CLkI0cQ=;
 b=WtYwALU2GUMou/kxyHfSbWjwu8CFYUq+xl7RrdjJpnXWS6n4OJL2h/Eg
 4BryG4ovDr1WuknpUMo2LpD/8v6Dv7AdF6lq7FGW9QbWqWeY6Y/NDcZnO
 Xm+pBh9w0gcHTw2RDUv4DVYcaDdXgpCO6m5LImb8lNFELlia6oFnKoQ2D
 lcw7ETKwMfMyJ8eu1jV5khj3lAI5httP5BSxrFk5KlRdekvLe78j+SEFg
 ARYGv3lSkO79CvqoFPIpPwP/Dap9G5767cz3I0SIWFEBY1A3/Pn4mjl/y
 PCLcYdJsgmLN/aiFY2IQpSyKci/Q57Pcr7EYrviJltcJLmjT+OK5NgMw3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="12403253"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="12403253"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 09:58:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="6037794"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 09:58:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 09:58:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 09:58:15 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 09:58:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TSw/D8MB3n1dR023TYAIe/OkcE4GCmR2t/oROPsqkV+OvB4Kge+zV4og7YtjMot0APg9vefxEYGukN5V5K9fRFpU3N5NFibn9zle4PGm335ukWERsRwO20ph1SoK8ZzIBeoW5lS0hBSNUqlRJ2U0ChRHCSaSM1qHFOS4OgyysV0dSu+SFrTJ3HgtkMUagltLUsmCPszF2RnLIO/ZyPZjzCqPH3FYTDD0qmMhvY3l4OdV7mB1JAv7UNs07VDYNcMXmh2FLRX610SM1BBMbxhU2E6WV07kJ7HOJR9Vv2kWi6WcIlj7GMywRIMWj1HKRy2yJAtVkQHktPenSMtmdzyZ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T9gk0vKvD1jX4y8hni8CNchXQ2gJsSAwn5KXXLn0c9U=;
 b=XtxXfKPGS2T9OwDXbSunlJe9CsVA3hfRwnXRxjov8qxIlXCZwTaAkrgikXtmO+secdb5XL/e8D790vkXprPD6UTWTdJi6TdPxIlXpjD4AyklC6q5YEu+NUqc2+BWpotsnYciaGosxxhK6t/4q8666gXcxlrFIWKCG/58kF4EcRjpvXr7W/xnuCt6VzUBLpbw8Ttdx67tYJlmLGDsQn/0DnEwqFalDdXlETTqwggeWIROPuekMFJsmgLdVYZ0uJSCWcJntkpEoMa/fbCppIZ9VVECXTyXvY8Zj7ZYciIKnMi1AdXySxhidRt3bIdMds65Isv8YEb9//G3FfaTIIeurQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by DM4PR11MB6020.namprd11.prod.outlook.com (2603:10b6:8:61::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Wed, 7 Feb
 2024 17:58:11 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f%3]) with mapi id 15.20.7249.038; Wed, 7 Feb 2024
 17:58:11 +0000
Message-ID: <7d7256bb-c1ef-410a-929f-78fc3235af31@intel.com>
Date: Wed, 7 Feb 2024 09:58:06 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Content-Language: en-GB
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Balasubrawmanian,
 Vivaik" <vivaik.balasubrawmanian@intel.com>, "Souza, Jose"
 <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
CC: "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "kenneth@whitecape.org" <kenneth@whitecape.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Zanoni, Paulo R"
 <paulo.r.zanoni@intel.com>, "Ghuge, Sagar" <sagar.ghuge@intel.com>
References: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
 <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
 <fe98dc0052a87bf4b916f34813233d7fa69752a1.camel@intel.com>
 <531ad2c0-445a-4fdc-bdb7-d50bf70d5c69@linux.intel.com>
 <e32a2e57-97b6-4872-a89e-d32224a8d834@intel.com>
 <ebc1d9a29f2fd91f371393be07e95a76b63ae47b.camel@intel.com>
 <5a190ddc-5739-4b39-86e4-afaef7b76244@linux.intel.com>
 <170730576548.11898.4029866271114753571@jlahtine-mobl.ger.corp.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <170730576548.11898.4029866271114753571@jlahtine-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR03CA0014.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::24) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|DM4PR11MB6020:EE_
X-MS-Office365-Filtering-Correlation-Id: 1eb5daee-36fd-4e69-1db7-08dc2806592d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KyLkKGoCwzWkOd7PLz8VF7PMbovbsZ439oefGutycUt1UGSPAqfOykZZ03wnaM2qs+6cPKnJrdIDBhq6G6TFp/t7HkkNy7G7x0o4Hj9sdP8G7Nry8cT/yEgdE+OpSq6Gv6aJl3oFlCU60/fBmAHcE+UCKUCShhs3/P58ZUIQ9kIr/iNpOlNA0vBFZ+e4E+/L61DbpBCPJYtzae4zzds094j9aoPwkcnQTjv7UgECgeMbVefbT0UucECXi0KppLJbrUlNnk6cHjaCy8Gz73O8+J2KuOdq/Tw1NGByl1sjqEv9XH5AL47IeKh+86wGjYDrOqmctQZAR2DgO0Aa01EOxgODeteuzPi8lJbM5LuGMwL0J8XZKYjQxKdcxO0/xqs++ULrnwVBEWKKpopzxM9mlJHVKGHd5jBWT5RN6jDd0NhGYvskDrJEdSO6GLhuum0WjSKKk8JdR8+m439b1k2SrN/dyaAkEOK7ow3nROMC4Twj+ng/XB+tOjCYD/W3jhQiskMzsCjeN47vK/oZGWUTvjfB175+lmJ4OWAavsllP16uYytVWnX3owJdbSQDzTR84nsXg3l5CEfyqu0nzNsGcG1jjHvOvwiPFMqUPj3fBzZ4QLx6YcY6J5htXeIBap+d
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(366004)(39860400002)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(2906002)(5660300002)(30864003)(31686004)(41300700001)(31696002)(83380400001)(38100700002)(26005)(82960400001)(2616005)(86362001)(6506007)(6512007)(53546011)(110136005)(54906003)(66476007)(66556008)(6666004)(6486002)(36756003)(478600001)(966005)(66946007)(4326008)(8936002)(8676002)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ei81MlhUV09NczViNWprY1prZkNHaGliK0Q3RnlYUTVHV3NVRjhYdnUyR1pu?=
 =?utf-8?B?RUZ5Wm5zR3pHU0hUNCtpNFhUSnVxeWVMRjI5RkJIckQzYm1CalZZbFg1SCt5?=
 =?utf-8?B?RTZEV29xRFlHYVhabFRoeUg2VmM0OWcyRERlN0d2c29rYmJLTG9ROU4zM1ZV?=
 =?utf-8?B?WVpFUmJvWEF0NnJPVm5xWlR5QWk0REpTUVpWMWNSaFlGZ1JSSTdubGlBRVNJ?=
 =?utf-8?B?OHQxaFFwN2RXWnQvMEh5d3JYK2wzSTA4SDQwUU9Delhodk5JU1h5WWNId01X?=
 =?utf-8?B?MWgxR2Y5Ry83SExqSGh4WDVoMFNZNmNtNk8zMW9UeXVIMHF4dGpHQ3cxUmM2?=
 =?utf-8?B?R1UxSGludXBJTUZ5SWdBU0Q5YXdtNzdqcEgwSDEzT3NoVFUrTjdKbDhDRHBM?=
 =?utf-8?B?Mk5xYnJnK2ptTVFySTd0Tlp2TDhjdXFNTDJ1OTlRUGxUazFTbEtpbk9IaE93?=
 =?utf-8?B?QlZmN0tla0hsbHNMaGhzT1p2U2xiOXdYOElWY2dEZ1JNSGR4NjBQTnM0WXhK?=
 =?utf-8?B?d1ZlVm0yRm1zTlc3WEVBRFMxa1d1TU5SRjBuMVpCS096T1RqQnN2aFplU0N1?=
 =?utf-8?B?bmV5NmpZdVkwekRpaWw4VXBkT2lrSE12eEJQUm1HbzErYTdSZ1k1eFBtdW1h?=
 =?utf-8?B?R3lCRHplbkhWMGF2eWlmemczUkVaUmZUMk5WclZVSUxqU1RDc3VnZGdaeUIy?=
 =?utf-8?B?NWdUTDFGUE84dUhkbjVZMCtJcHR2bzY0VlFvdjJNUXdyNHRYM0JwYXBOZGRP?=
 =?utf-8?B?aE4rN0gvYXZNTW9EeURza2Y1c3poVHZCUGNjSTV6cGZTbG1Tb1hNWnhzb252?=
 =?utf-8?B?OUZDZUJjcGVYYTRTSmFvVlR4SU1SUzVmcWtPU1BFYVBlZWdKZmtlQ1ZJRWZj?=
 =?utf-8?B?MkpOZkF2VVVWS052QWhBbmt3dWZSQXEyNmNaVEx1dmcyQ1hYbHNrcGdmLzQ0?=
 =?utf-8?B?cnFYMGJoM0RhNmt0WE1RMkJPYzNUWWRBdU1ic2tRMFF4eXY5cXV2T2paWEVV?=
 =?utf-8?B?aHNFZTZ2NkcrZTBETTl6bk83c2tPUW42TURPR1d6SVpMMXBFMHlHTzdzQUhM?=
 =?utf-8?B?d1c4SHFjMXNDbUwzNHJJS3YyYUF3d0lUTXNzMkVWWldTL2w5aDhXZ2U0ellE?=
 =?utf-8?B?b2VzRTk0eDE4N0EwQk1rOThnbytLYlJnS2FZZnBCUGdQMWIxb0NnRndjZ3Ay?=
 =?utf-8?B?cVBSSjRpNzFFdFlXbENmNCsrN3RnYXo5Nm5NVTBzOUxQLzFLeXBNbXRMRE8y?=
 =?utf-8?B?TGQwaVpaREgrOU8zZ0xBUUdOS0dBbkxCUHFGV1NUeDNQNDJYTGlXcUNpN1pj?=
 =?utf-8?B?dnpIUStyUm45bFg1czBUQm11eEh3SHh5QjZveHZXMXZmQmVWa204UDdDbElr?=
 =?utf-8?B?RE84dytCYTFUZGhSLy9EN2kxMzBRdUw0VHE5TDVXb1d0OGlZOUFYK2E4VCtI?=
 =?utf-8?B?MzRrNnlTa1BPS2tLUkhHM0g5OXRLL3Y5ei9HbkFaSDVyUDJOczFNNDVXd0pH?=
 =?utf-8?B?OWhYSWpPK0tBRVkrenNHaVd0Q2F0V2Q4QktVUE0xelhsOVFtSWo4ejR6RnRk?=
 =?utf-8?B?UW1OcW1mUk5hdGVqZmtxTDNLd1VmQytlSVEwNG52MFFoWVo2NXpZaVpYNjll?=
 =?utf-8?B?OGsybjM3TXFucUkrUmRJWVBRdmZTVTBzUElVVE5oYVRFL2hGRGVEaGQrNTlJ?=
 =?utf-8?B?amVhd1VZSFZ4TlNzOXhEOTBoYUtNL3NNc3ZIRE80ZG0xODZTTG5pZU1ySGs2?=
 =?utf-8?B?cEhFenM2bTF0TmxtUEtOYytoY3YrbWUrbUdtdEgzWmJhV3NHNWFZWTlDTFBr?=
 =?utf-8?B?a1MzeUhNNkQ4NEJLb1piSnN2UUVKejQ1NnJDeXdLY2IyZjlmdTRlUFgrc0kz?=
 =?utf-8?B?c1VmYTRWUlNWb25nT0lldDBzU1VYQWZyL0NXR3hIckhuWlpYL2xkT0tUQUd4?=
 =?utf-8?B?cm1tY0I5ZG83cTZ1UHY5ZWhyTDFzdndsUG5EYkdWd3A4MTNZanl0UHQvV2Zz?=
 =?utf-8?B?LzJPYzBPRHVKODdWUmtKVU1VZ1J0WDl6eTJDOHF4c0lsbUpQZEM3VDhiQkti?=
 =?utf-8?B?c2cxTVJ3NmNvZ2ZzNHpoY2ZmWWkvVU5GU1ZtVEdzVEx2MEJybGM0azhGU2sw?=
 =?utf-8?B?dnRFV3BNNkFxYmYzazBITFk2ZVBrN3F0Z2FFR1VlSmxJWTZLcytTclVLemQ4?=
 =?utf-8?B?QkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eb5daee-36fd-4e69-1db7-08dc2806592d
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2024 17:58:11.2450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f3Is4z8KDVLEItP5xT+v2+eOTdyE4bxgf7LLd9/LbFmanHa2tNO1MzCFhYU2elb3zmCZAzlej/Q5nuozXzNT4lxZpzfY48QkK3FmvaAjJVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6020
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

On 2/7/2024 03:36, Joonas Lahtinen wrote:
> Quoting Tvrtko Ursulin (2024-02-07 10:44:01)
>> On 06/02/2024 20:51, Souza, Jose wrote:
>>> On Tue, 2024-02-06 at 12:42 -0800, John Harrison wrote:
>>>> On 2/6/2024 08:33, Tvrtko Ursulin wrote:
>>>>> On 01/02/2024 18:25, Souza, Jose wrote:
>>>>>> On Wed, 2024-01-24 at 08:55 +0000, Tvrtko Ursulin wrote:
>>>>>>> On 24/01/2024 08:19, Joonas Lahtinen wrote:
>>>>>>>> Add reporting of the GuC submissio/VF interface version via GETPARAM
>>>>>>>> properties. Mesa intends to use this information to check for old
>>>>>>>> firmware versions with known bugs before enabling features like async
>>>>>>>> compute.
>>>>>>> There was
>>>>>>> https://patchwork.freedesktop.org/patch/560704/?series=124592&rev=1
>>>>>>> which does everything in one go so would be my preference.
>>>>>> IMO Joonas version brings less burden to be maintained(no new struct).
>>>>>> But both versions works, please just get into some agreement so we
>>>>>> can move this forward.
>>>>> So I would really prefer the query. Simplified version would do like
>>>>> the compile tested only:
>>>> Vivaik's patch is definitely preferred. It is much cleaner to make one
>>>> single call than having to make four separate calls. It is also
>>>> extensible to other firmwares if required. The only blockage against it
>>>> was whether it was a good thing to report at all. If that blockage is no
>>>> longer valid then we should just merge the patch that has already been
>>>> discussed, polished, fixed, etc. rather than starting the whole process
>>>> from scratch.
>>> Agreed.
>>>
>>> Vivaik can you please rebase and send it again?
>> Note there was review feedback not addressed so do that too please.
>> AFAIR incorrect usage of copy item, pad/rsvd/mbz checking and questions
>> about padding in general. Last is why I proposed a simplified version
>> which is not future extensible and avoids the need for padding.
> Yeah, I don't think there is point an adding an extensible interface as
> we're not going to add further FW version queries. This only the
> submission interface version we're going to expose:
The media team have flip flopped multiple times about whether they need 
a HuC version query.

>
>           * Note that the spec for the CSS header defines this version number
>           * as 'vf_version' as it was originally intended for virtualisation.
>           * However, it is applicable to native submission as well.
>
> If somebody wants to work on the simplified version like Tvrtko
> suggested below, I have no objection. We can also remove the reference
> to the VF version even if that's used by the header definition.
>
> But if there are just suggestions but no actual patches floated, then we
> should be merging the GETPARAM version with the "VF" word removed.
The original patch was posted to the mailing list many months ago. Why 
do you say 'just suggestions but no patches floated'?


>
> We've already discussed on the topic for some months so doing the
> minimal changes to fulfill Mesa requirements should be considered a
> priority to avoid further delays.
>
>> Regards,
>>
>> Tvrtko
>>
>>>
>>>> And note that it is four calls not three. The code below is missing the
>>>> branch version number.
> Not even kernel uses the 'build' version anywhere. I don't see how there
> could be 'build' version for the VF interface version? It's not supposed
> to version a concrete firmware build but the API contract implemented by
> the build where patch version should already be incremented for each
> fix.
>
> So adding the build does not seem appropriate as there is no plan to
> extend this API any further.
I did not say "build" version. There is no build version. I said 
"branch" version. And the branch version absolute becomes important if 
we ever have to release a bug fix to an LTS branch. So it needs to be 
part of the interface from the beginning and the UMDs need to be using 
it from the beginning.

John.


>
> Regards, Joonas
>
>>>> John.
>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/i915_query.c
>>>>> b/drivers/gpu/drm/i915/i915_query.c
>>>>> index 00871ef99792..999687f6a3d4 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_query.c
>>>>> +++ b/drivers/gpu/drm/i915/i915_query.c
>>>>> @@ -551,6 +551,37 @@ static int query_hwconfig_blob(struct
>>>>> drm_i915_private *i915,
>>>>>           return hwconfig->size;
>>>>>    }
>>>>>
>>>>> +static int
>>>>> +query_guc_submission_version(struct drm_i915_private *i915,
>>>>> +                            struct drm_i915_query_item *query)
>>>>> +{
>>>>> +       struct drm_i915_query_guc_submission_version __user *query_ptr =
>>>>> + u64_to_user_ptr(query->data_ptr);
>>>>> +       struct drm_i915_query_guc_submission_version ver;
>>>>> +       struct intel_guc *guc = &to_gt(i915)->uc.guc;
>>>>> +       const size_t size = sizeof(ver);
>>>>> +       int ret;
>>>>> +
>>>>> +       if (!intel_uc_uses_guc_submission(&to_gt(i915)->uc))
>>>>> +               return -ENODEV;
>>>>> +
>>>>> +       ret = copy_query_item(&ver, size, size, query);
>>>>> +       if (ret != 0)
>>>>> +               return ret;
>>>>> +
>>>>> +       if (ver.major || ver.minor || ver.patch)
>>>>> +               return -EINVAL;
>>>>> +
>>>>> +       ver.major = guc->submission_version.major;
>>>>> +       ver.minor = guc->submission_version.minor;
>>>>> +       ver.patch = guc->submission_version.patch;
>>>>> +
>>>>> +       if (copy_to_user(query_ptr, &ver, size))
>>>>> +               return -EFAULT;
>>>>> +
>>>>> +       return 0;
>>>>> +}
>>>>> +
>>>>>    static int (* const i915_query_funcs[])(struct drm_i915_private
>>>>> *dev_priv,
>>>>>                                           struct drm_i915_query_item
>>>>> *query_item) = {
>>>>>           query_topology_info,
>>>>> @@ -559,6 +590,7 @@ static int (* const i915_query_funcs[])(struct
>>>>> drm_i915_private *dev_priv,
>>>>>           query_memregion_info,
>>>>>           query_hwconfig_blob,
>>>>>           query_geometry_subslices,
>>>>> +       query_guc_submission_version,
>>>>>    };
>>>>>
>>>>>    int i915_query_ioctl(struct drm_device *dev, void *data, struct
>>>>> drm_file *file)
>>>>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>>>> index 550c496ce76d..d80d9b5e1eda 100644
>>>>> --- a/include/uapi/drm/i915_drm.h
>>>>> +++ b/include/uapi/drm/i915_drm.h
>>>>> @@ -3038,6 +3038,7 @@ struct drm_i915_query_item {
>>>>>            *  - %DRM_I915_QUERY_MEMORY_REGIONS (see struct
>>>>> drm_i915_query_memory_regions)
>>>>>            *  - %DRM_I915_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob
>>>>> uAPI`)
>>>>>            *  - %DRM_I915_QUERY_GEOMETRY_SUBSLICES (see struct
>>>>> drm_i915_query_topology_info)
>>>>> +        *  - %DRM_I915_QUERY_GUC_SUBMISSION_VERSION (see struct
>>>>> drm_i915_query_guc_submission_version)
>>>>>            */
>>>>>           __u64 query_id;
>>>>>    #define DRM_I915_QUERY_TOPOLOGY_INFO           1
>>>>> @@ -3046,6 +3047,7 @@ struct drm_i915_query_item {
>>>>>    #define DRM_I915_QUERY_MEMORY_REGIONS          4
>>>>>    #define DRM_I915_QUERY_HWCONFIG_BLOB           5
>>>>>    #define DRM_I915_QUERY_GEOMETRY_SUBSLICES      6
>>>>> +#define DRM_I915_QUERY_GUC_SUBMISSION_VERSION  7
>>>>>    /* Must be kept compact -- no holes and well documented */
>>>>>
>>>>>           /**
>>>>> @@ -3591,6 +3593,15 @@ struct drm_i915_query_memory_regions {
>>>>>           struct drm_i915_memory_region_info regions[];
>>>>>    };
>>>>>
>>>>> +/**
>>>>> +* struct drm_i915_query_guc_submission_version - query GuC submission
>>>>> interface version
>>>>> +*/
>>>>> +struct drm_i915_query_guc_submission_version {
>>>>> +       __u64 major;
>>>>> +       __u64 minor;
>>>>> +       __u64 patch;
>>>>> +};
>>>>> +
>>>>>    /**
>>>>>     * DOC: GuC HWCONFIG blob uAPI
>>>>>     *
>>>>>
>>>>> It is not that much bigger that the triple get param and IMO nicer.
>>>>>
>>>>> But if there is no motivation to do it properly then feel free to
>>>>> proceed with this, I will not block it.
>>>>>
>>>>> Regards,
>>>>>
>>>>> Tvrtko
>>>>>
>>>>> P.S.
>>>>> Probably still make sure to remove the reference to SR-IOV.
>>>>>
>>>>>>> During the time of that patch there was discussion whether firmware
>>>>>>> version or submission version was better. I vaguely remember someone
>>>>>>> raised an issue with the latter. Adding John in case he remembers.
>>>>>>>
>>>>>>>> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>>>>>>> Cc: Kenneth Graunke <kenneth@whitecape.org>
>>>>>>>> Cc: Jose Souza <jose.souza@intel.com>
>>>>>>>> Cc: Sagar Ghuge <sagar.ghuge@intel.com>
>>>>>>>> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
>>>>>>>> Cc: John Harrison <John.C.Harrison@Intel.com>
>>>>>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>>>>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>>>>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>>> ---
>>>>>>>>      drivers/gpu/drm/i915/i915_getparam.c | 12 ++++++++++++
>>>>>>>>      include/uapi/drm/i915_drm.h          | 13 +++++++++++++
>>>>>>>>      2 files changed, 25 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/i915/i915_getparam.c
>>>>>>>> b/drivers/gpu/drm/i915/i915_getparam.c
>>>>>>>> index 5c3fec63cb4c1..f176372debc54 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/i915_getparam.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/i915_getparam.c
>>>>>>>> @@ -113,6 +113,18 @@ int i915_getparam_ioctl(struct drm_device
>>>>>>>> *dev, void *data,
>>>>>>>>              if (value < 0)
>>>>>>>>                  return value;
>>>>>>>>              break;
>>>>>>>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR:
>>>>>>>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_MINOR:
>>>>>>>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_PATCH:
>>>>>>>> +        if (!intel_uc_uses_guc_submission(&to_gt(i915)->uc))
>>>>>>>> +            return -ENODEV;
>>>>>>>> +        if (param->param == I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR)
>>>>>>>> +            value = to_gt(i915)->uc.guc.submission_version.major;
>>>>>>>> +        else if (param->param ==
>>>>>>>> I915_PARAM_GUC_SUBMISSION_VERSION_MINOR)
>>>>>>>> +            value = to_gt(i915)->uc.guc.submission_version.minor;
>>>>>>>> +        else
>>>>>>>> +            value = to_gt(i915)->uc.guc.submission_version.patch;
>>>>>>>> +        break;
>>>>>>>>          case I915_PARAM_MMAP_GTT_VERSION:
>>>>>>>>              /* Though we've started our numbering from 1, and so
>>>>>>>> class all
>>>>>>>>               * earlier versions as 0, in effect their value is
>>>>>>>> undefined as
>>>>>>>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>>>>>>> index fd4f9574d177a..7d5a47f182542 100644
>>>>>>>> --- a/include/uapi/drm/i915_drm.h
>>>>>>>> +++ b/include/uapi/drm/i915_drm.h
>>>>>>>> @@ -806,6 +806,19 @@ typedef struct drm_i915_irq_wait {
>>>>>>>>       */
>>>>>>>>      #define I915_PARAM_PXP_STATUS         58
>>>>>>>>      +/*
>>>>>>>> + * Query for the GuC submission/VF interface version number
>>>>>>> What is this VF you speak of? :/
>>>>>>>
>>>>>>> Regards,
>>>>>>>
>>>>>>> Tvrtko
>>>>>>>
>>>>>>>> + *
>>>>>>>> + * -ENODEV is returned if GuC submission is not used
>>>>>>>> + *
>>>>>>>> + * On success, returns the respective GuC submission/VF interface
>>>>>>>> major,
>>>>>>>> + * minor or patch version as per the requested parameter.
>>>>>>>> + *
>>>>>>>> + */
>>>>>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR 59
>>>>>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MINOR 60
>>>>>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_PATCH 61
>>>>>>>> +
>>>>>>>>      /* Must be kept compact -- no holes and well documented */
>>>>>>>>         /**

