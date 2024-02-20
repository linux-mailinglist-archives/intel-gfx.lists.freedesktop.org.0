Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE5185CBE2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 00:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375CC10E3C1;
	Tue, 20 Feb 2024 23:16:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CcFHTL42";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F4EE10E3C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 23:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708470997; x=1740006997;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qhweotjNsS2SRjU0xWQ4P1eqZty6CNoKY6jC/SFsm3k=;
 b=CcFHTL42k9d+dAk+MnQTkyYhNfTB1Zmp9DmSq1OQdAtMwxSwzfVfNce1
 SeFIDYq94pmh86KszjHJU7coehQ/axQmRpy5VqjtVLAOQjyBr3582HoY4
 /O9yK9tzmYyaaCq9DIC3uNsk1Zb5ZABx8MOAktQNgl55TkTNyzqzXlIx2
 C0/MaloWQ3qkK/CnPZ1hJ5RY0jyIWx6+7md16Ru838+Ad/1n2vXhHj022
 Ucia+K35HIkK1BVpziNRa+mK6yi+jAdx7/BA6Fm8gy5ETbvDGxsdwR+hR
 2UC7B2ffNbiS3p5hTBIvxXDiBMZX/D+1o9b2tGxiKskMYyc/EiYqFU7TQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="13310100"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="13310100"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 15:16:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="9492410"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2024 15:16:36 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 20 Feb 2024 15:16:35 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 20 Feb 2024 15:16:35 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 20 Feb 2024 15:16:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Na8dUcHny01OhKMy0xchrx9A9pVEbWPwPZwz9l0bVG0Y5NsvVTgwWeIDH6h+mEZGTCvuXoUetNE7Xl2CVaqWe3Q7r3Ymjt7Klzbpr+eJSucLajJmniySCiB5zXWl9PMXMZjM9mgwiZxZT7K9E7EH+82kSDvd009K7jzOLo6ZIRiEm96T4ewMt90tWpQeCAoOPSsVtBeVJNJhmcrg7YsV51AIcxdYEvrykolEC3GgWS4xS5WvfaBBbfEXXU1wFnwPpURrL/e/8wf00FhsbWwJL/VvEZa4JRZv/RKCoMnfkePxYVhs7KOSshiyyOplcxKUfJZY/TUI10wvKpSss/J+bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bF21CaRSylpaEE8cHS6hNRBuBSnSkKam9llpnMu1OEM=;
 b=ZRy51yevof6b6OwWjYsixg+ujOyufmA6NsNW6lcgR9fyKulxsMawk+tlYTyTbtuxi0W/Oka5HMJvly5dPfhU6Ju8DSg7rztlp0jbJUposVkRQ/2cwgvIuou2M1sHrYOaNAzog2BJKv2zqZ5EJQP7nrYKctBfyt4KNkt/0H5GFwweawfB8Pb0dg+UfXYv52vux3+fmpObBAZzV6A59nIXdxunwpv7E8fg4yY96Mo5U8mMomrmgQNRZ1KiVTSmdstmx/D+OfZYUBbMr9dght1UHE2uJtq75jzSzrx2uD+RD1vE2jIgRNJX8KhepSkzmp/veK5xnNB8Soumd98wU7y3mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by BN9PR11MB5401.namprd11.prod.outlook.com (2603:10b6:408:11a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 23:16:25 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f%3]) with mapi id 15.20.7316.018; Tue, 20 Feb 2024
 23:16:25 +0000
Message-ID: <bb9bd07a-5197-46e1-8541-aeb540b421a3@intel.com>
Date: Tue, 20 Feb 2024 15:16:22 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: GuC issue
Content-Language: en-GB
To: <maksym@wezdecki.pl>, "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 <natur.produkt@pm.me>
References: <mpy7oR29BN-ZuXsGo_DrVjgvt7tZXStYEkdhwHKRFqzjB6DkbATG6i8qLYaNq2fAsXIUiYXJ6HBXTurfBaLHuwcxeggLjtKQHdxwVWdsO04=@pm.me>
 <af232621-ed88-466e-9162-7698b5583503@intel.com>
 <dRxB0peDhbOHBqsX5rpWZN-qZtPdwWItk-L1ZAZm8RH8LQYpNBGa9qghm3dOCuM4fqbzOsNAFEafiu2zSrQNbnH6oCrlBb1fiAm5AhJQr64=@pm.me>
 <G6cnnxkrPv0dkDZ2VYL51hau5Mm-RdGVA74E0lhunn-U3XoV3d8OwF92LK-lCbQ24yM8ksZuOh9EAEpvAgz7Td0xtfFwT-Zy7M-5KJ73qqY=@wezdecki.pl>
 <jDjRWkHtb3G4vJFfktNDbWc_n_3WjYYvIOYbXmZHxbcITIeP3k6FnjerNyECm8NNpgs0H1DRJTaeiE5c9qYib5djHdq34VG4wOPZbNPEj-s=@wezdecki.pl>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <jDjRWkHtb3G4vJFfktNDbWc_n_3WjYYvIOYbXmZHxbcITIeP3k6FnjerNyECm8NNpgs0H1DRJTaeiE5c9qYib5djHdq34VG4wOPZbNPEj-s=@wezdecki.pl>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::25) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|BN9PR11MB5401:EE_
X-MS-Office365-Filtering-Correlation-Id: d4804f2c-a8bb-451c-aeb2-08dc3269f545
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rj/4XLUYOaVNEW6rhpQ6dDGbN9k+shAaoe5DXn1wxEQRRIKyfSjrMJd7JOjQvtipp2g07hx3GavBgLI5B+ELndF74ZlwN8tVpylSL4r/Kr4rDgCumSv88iqhqThq7N+FVEe7/5dD7XiYFx77yMPz73I2wrK0qzfBp9TCNNt26A2rhgq0RkEgvga0a0eNP4mik9jt7Dueuw5VFdNhFao/eIYgIm/rGaKKRPzU8k4wbEl3q/U7agYggAJfbZbn7sQehB1gOFfwJjMEhn31N5tZarTGXpyYGPCI+8AnCOiiu4necumADGfevoBx2cTE9BJxODi1JehVRcizaIPqhee/j3Nl5fNyP8AiI7bTWzGrWl2qSt3bTsrOR+P9rxy+/tM0fMQBLy/fMbVGtITXz615Q1LVjQTyMxpjyP1CRzHrloDYQP/vhwpd8k3BJ3I2JDZne1qY1E6OiLpBBH7o8YAkSB8Atp4UHigMB9syDhVu4WVE6KDvfoQHoeykkv+32pjrC1/2U3D5ck0F5vNDLk9ZnrbP2BAKzcyvNdMi7KF78RA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejBvSjU5NzNwWkNOZ1dyNXhnLzZDNUVoYWIrNnhOajlJTzhLajNvbW01YlRo?=
 =?utf-8?B?Nk92ZktUUGhjT1B4SjgrSVVJYXJENm9aOVZxRGpRK0xaMG1ZbHhXK1NDTXNp?=
 =?utf-8?B?a2Jnd3kySWFZZEtzbkpSdjNYVjBheGNuc2ZFK3YzbXIvcEZ3ZE4yaVFZU1hs?=
 =?utf-8?B?ekJuKzZRRTUvZENxY1c4dE9KZE9VSmsvL0ZPcFRzSDEvaGVObmVINElBTlR3?=
 =?utf-8?B?bnF5STVEY29QTGJvTXZxM0t2dFdQTmgybTFPUU1FVWhDSWJOSFlweHNyanhJ?=
 =?utf-8?B?UDlHZnh0SVE4VTI4dGFnOGRsQjFZK2JDeHdRSWJYMXZBbFBpRDh4TXcxcnhL?=
 =?utf-8?B?RVFaNmtvNmI4ak9hcnFDYkZXMkwxR1lvRVdNWHlxMzFhR3o2UDVzTDZHdkE5?=
 =?utf-8?B?U1RLRHVaWlJXRjNBT21NV2VKVHNDTy82dEtrRlRpeXFMTWhSUnR0M1BYL08y?=
 =?utf-8?B?UHFHWVg1aXorVlJWYUZwRjc0SUQvWnl0aFU1bDdWLzRUTlh2N3A4QjBET0xY?=
 =?utf-8?B?WnFOck9aK0VrbC9raEd4ZEZLVXVNdlhteVhsOU8zVVBzcjdMdVY0c2lPNE1R?=
 =?utf-8?B?NWhOL0xOS2pqc1I1OUhsODZvTEZsRFZGYUV3SG5weUdKWnhZOTNVcUpCeTFr?=
 =?utf-8?B?VThWblBrNE9iaG5oTlBrdVBxUFBkUzU2RnRUK1YwWmN5RVFBWUtyZDEvaXFY?=
 =?utf-8?B?TjJxS0FxRFdkdWZrdUZTVVRaTEI3U0hqbTUyUkt1dFFSOW5QRkEyYVJhTnR6?=
 =?utf-8?B?akRXQlVzK1MvMmRla3FhT0NzYWRwWUxZc0d0UHNvRjFXTklaRVpBMVh2M0xt?=
 =?utf-8?B?Z1RmeXRFYXBuOHF4MFcrQVVOZ0wzS2kraGRXdW5Ha1JGOXpvYlRlQXRZNVdM?=
 =?utf-8?B?M1cwOGs3cFA1alJ3WWFaWU5CT2NRQ3lCa1pNNGtkUVdLWTRZOS9vOFVhdUNh?=
 =?utf-8?B?US9rSVRJeS95MUxzYjVnc0NZZkVmbmpiVnBoWU8yQ0E0TEtoVFB3a3RKVWd2?=
 =?utf-8?B?cDV0djBtYjBsdmlzNWZ5czJTUDlRb0FkQjQ4NENyaEdOQ1gyUm5sZ1V1Ui93?=
 =?utf-8?B?RmdZY2JFd2FWeHhndnNkUXhTbi9ia3pYZ01JWndpZG9Qa3JyQVNhMW5NZ2Zo?=
 =?utf-8?B?NWcxcmZGaVlPV0loNkxuOE9VUnZhMXAxN1pzV0Y2anlqWFhqcWNDb05IZzlB?=
 =?utf-8?B?VGxucTI0a0F1QU83azJYMHovbkxmbm1pV2Rpc1VLd2VWdXZQSndXbVp1eHF2?=
 =?utf-8?B?dkVHdFRUWSswd202cGN5VFRTWDFzRTgzVEtTZkxmcy82azRIMU13SUNSNFht?=
 =?utf-8?B?ay9CZHJ3UUpXMzZvTGNlWGMzYU1xZTloYmNGL01lbWora244NVd4Tm1LU2pt?=
 =?utf-8?B?YmJEeEtlM3piZXJNby9mWTVwWENrUUlKZFk3bThFeGZPTSt6OUZyUVdjY0lo?=
 =?utf-8?B?MnZLS1YvQUZKdzVKcW9KblZQNDE4eGUwYnB3THZab2ZjdW50YnJzTjJ3UVRM?=
 =?utf-8?B?cDN2b3RyL29ESVo1OE9lMkZKQ1NSTUZnRThyUmpPMFEyN3ppNE82REtpc04x?=
 =?utf-8?B?cSt5RGhjb2I5TXdUSFVKalNwaUxxNVJFOHpuV05CVmVRR0FUbVBvZkZpd1dm?=
 =?utf-8?B?V2pUY2U1em42ekUzVWwreDdwQ2ZINVRCL2hOZ3FXUGNpOE9wd3pRR1lPa1NG?=
 =?utf-8?B?aXlYb2kvbzJZSnhXNTVEL21TN0dWbXB5a01LTm1HN0pVU0JuL281a1FUeE5C?=
 =?utf-8?B?WGcwTmw0WFVyS1dVN3lJNHc5aVJzYjN4MnU1N1M3TkRDZVBnalJTTzJxRUN1?=
 =?utf-8?B?MkZWNVB2Tzc2Ny93M1QyUGxxOVcyeDNHaGh1VnhBR21NM2dEU3NIS2llVUdU?=
 =?utf-8?B?R0cycXhDZ21KeTVLNkUxUHVkdEFKL0xibFEvbk1CMTFQVWRBQzhLY3d3eFFW?=
 =?utf-8?B?cnVGaUJXbVFYdWhmRHoraGxCcGRKZ29GTlhjdnM3Z05GcHhoMmx6RUlHNzRi?=
 =?utf-8?B?Rjc4OC9iWHlxSTZyQko2ZmdhS0lGVjhEU0ViVnU5U0FHQklyY2FsWXYzTTRj?=
 =?utf-8?B?eW5LTWhjbXA5OFJCRUhUOFRnVTJZc1VZemNMWDZvMGpXaGI0S3RndmZFaGo2?=
 =?utf-8?B?MEVYV3lOQjFpR2trSlI0VjNUdTVtQW1jU0FjZWpzbndiUEtRbys2b1JaekdI?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4804f2c-a8bb-451c-aeb2-08dc3269f545
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 23:16:24.9280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rNugymC8YRutaRtO6fpCr+2ee7XgzBoPhVp1i7qNOFHp8fo+GV0g94zmBLOFVQx8zobSoh6h+rIYd3Txabs1/3hScq7D5HOFl0UmaC+6QbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5401
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

Hello,

Something is very corrupted with that GuC log. The log consists of a 
header page and then a stream of log entry structures. The structure is 
supposed to be 20 bytes long and starts with a four byte time stamp. But 
I am seeing what is conceivably a 32bit timestamp appearing at 21 byte 
increments through the log. Even more curiously, the time stamp seems to 
have an 0x0D, 0x0A after it. Are you doing any printf type operation in 
order to write the log out from memory to disk?

INTEL_GUC_LOAD_STATUS_INIT_DATA_INVALID means that the GuC did not like 
the initialisation data passed in. Most likely, something in the ADS 
structure is not valid. If you try with the latest GuC version, that 
might give you more information as to what is the incorrect. More status 
codes have been added since 70.1.1.

John.


On 2/20/2024 05:03, maksym@wezdecki.pl wrote:
> Hi,
>
> Please see GuC log attached to this email.
>
> Log size is "PAGE_SIZE+Debug Log(64KB) + Crash Log (8KB) + Capture Log (1M)"
>
> Can anybody from Intel decode this log buffer? Thanks.
>
> What am I doing wrong?
>
> Maksym
>
>
> poniedziałek, 19 lutego 2024 09:44, maksym@wezdecki.pl <maksym@wezdecki.pl> napisał(a):
>
>>
>> Hi,
>>
>> I fixed one issue in my driver. Log address was set incorrectly.
>>
>> Right now, after GuC uploading, GUC_STATUS changed.
>> Right now, intel_guc_load_status is INTEL_GUC_LOAD_STATUS_INIT_DATA_INVALID = 0x71.
>>
>> What does it mean?
>> Could you please help me with this?
>>
>> Thanks,
>> Maksym
>>
>>
>>
>> piątek, 9 lutego 2024 08:42, natur.produkt@pm.me natur.produkt@pm.me napisał(a):
>>
>>> Hello,
>>>
>>> Please see my comments below.
>>>
>>> piątek, 9 lutego 2024 2:45 AM, John Harrison john.c.harrison@intel.com napisał(a):
>>>
>>>> Hello,
>>>>
>>>> What platform is this on? And which GuC firmware version are you using?
>>> It's TGL. I'm using tgl_guc_70.1.1.bin firmware blob.
>>>
>>>> One thing you made need to do is force maximum GT frequency during GuC
>>>> load. That is something the i915 driver does. If the system decides the
>>>> GPU is idle and drops the frequency to minimum then it can take multiple
>>>> seconds for the GuC initialisation to complete.
>>> Thanks for the hint. I'm not doing that at all in my code. How am I supposed to do this? Is there a specific register for that?
>>>
>>>> Did the status change at all during that second of waiting? Or was it
>>>> still reading LAPIC_DONE?
>>> It's always LAPIC_DONE.
>>>
>>>> For ADS documentation, I'm afraid that the best we currently have
>>>> publicly available is the i915 driver code. If you are not intending to
>>>> use GuC submission then most of the ADS can be ignored.
>>> Ok, that great. Which part of ADS is must-have then?
>>>
>>>> If you can share the GuC log, that might provide some clues as to what
>>>> is happening. For just logging the boot process, you shouldn't need to
>>>> allocate a large log. The default size of i915 for release builds is
>>>> 64KB. That should be plenty.
>>> I'll collect GuC log as soon as possible. Is it something that can be understood without a knowledge of GuC internals? Or is it simply hex dumps?
>>>
>>>> John.
>>>>
>>>> On 2/6/2024 23:59, natur.produkt@pm.me wrote:
>>>>
>>>>> Hi,
>>>>>
>>>>> I'm currently implementing GuC/HuC firmware support in one Safety Critical OS.
>>>>> I'm following i915 code and I implemented all paths (I don't want GuC submission or SLPC features). I need GuC to authenticate HuC firmware blob.
>>>>>
>>>>> I mirrored GuC implementation in my code.
>>>>>
>>>>> After GuC DMA transfer succeeds, I'm reading GUC_STATUS register.
>>>>> HW returns INTEL_BOOTROM_STATUS_JUMP_PASSED as bootrom status and INTEL_GUC_LOAD_STATUS_LAPIC_DONE as GuC load status.
>>>>>
>>>>> Unfortunately, after one second of waiting, the status didn't get changed to INTEL_GUC_LOAD_STATUS_READY at all.
>>>>>
>>>>> What is a potential issue here?
>>>>> Could you please help me?
>>>>>
>>>>> In addition to this, could you please point out some documentation about GuC's ADS struct?
>>>>>
>>>>> Thanks,
>>>>> Maksym

