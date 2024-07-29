Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F68E93FEE6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 22:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D560C10E47E;
	Mon, 29 Jul 2024 20:14:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eihKe8Px";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1178010E47E
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 20:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722284061; x=1753820061;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7Ux8vSB70ZlKUjQoF7DmcMg0hLj1OyxI8GqTsQeLaFk=;
 b=eihKe8PxG3f/MYz9SvvvRo4CQF921WsR5pt5JV/JejjCsWEleed+luLU
 jPpQJtM5iH5T6XZdy1e9FSGFAiQF3TSxNka0RXdb49cDxxtFSm3vkRIZ4
 A+pjWnyOmIjSsr07S+DxkJadZ20TZaxXkxxmigFpqxktFxSYRAwJs+1Qk
 nmxXOmDMWu/7o411uOICOyjzhDPOUkBGXLA7RxZJ0PjYXyOiUpPcI6Pe1
 WTqHh/q+iQ1b7RIEPjhrTDF7cGLO1fEUQBYjWN2mOGppUbfkk6znDmSj3
 9F80QYHntBZudyZQgPJmJ52o1bdp92Z1B1MRzt7PWsTrwvR8qbiwPdwKZ g==;
X-CSE-ConnectionGUID: cQrqIIfGQhOx63qHJPiEDg==
X-CSE-MsgGUID: tRBO0Y9pSpaSyKP1+3LpGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="31476465"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="31476465"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 13:14:20 -0700
X-CSE-ConnectionGUID: MXQ6rfDQS069OCe7CtTiSQ==
X-CSE-MsgGUID: thZEGeogRFmTds/tD+61EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="84743250"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 13:14:20 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 13:14:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 13:14:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 13:14:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D90mU4bZTceOSxl5Vl8R9w0zADCBwDhNKsS13JUlE8gXrHmxGzAIyOWbDGmiXkxKe3kgXVcd5pMSjLLzvwnwc7JxZhKkvfG/9BFcRb3Qyvr9NtRfLA/rz8ti3R56Zw8Wd/kUxJiLLq5Yb+a0s3CgtHRe071IfOkO/xRIAOy0bp74lUm+9wiQ5fPMh7iyBYS6bLMsFfdYGUXCkZroainVDay0Ixq5pQZWcaNcPLb07pBc4icmk9OfYRC3rYttOJZy7Ov3dUI79jpzuznPGdj0i/hMUa1a6ycAj/JG02OGBJNwuiPd+uD9V5fTB/USjzBdHBhAibE9dA0aYI5NQ/BI7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FyPqaBmHLsj6UWqFgoZS09kJY2lnWeRHy+Dv708lzVk=;
 b=WCOc8NwQ45nRPUSJEMZId1NLhK7J/dfzoDFCnWTVXI/LzyM/kWvAv6vgdKG2p4ej+CqrxSFcaVmrUbJL/Z5boV4n5ulTplMHksRO5mjtwKpM4vrsH/sxhy+87J1fEXS9kseqOQ3nmY3ZVPQCthiUTrGjBgNleEf1O1jotmScR4njo5On7ievK+W+g7K0vDIJm62lFX8oT9G/5DYsxS4yJ5LpFdqlLmqXxaXIIhr3Wzm8i5FyDXzBlAk4kZ4yI8n3xeHPvb514HPgcGdQpHJHDCiCUXq40zlNv2OAK3zqexigvHRakqmG5eeJr0QF+2KcAmWmpaC+OsznjoYIXvxN9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB5015.namprd11.prod.outlook.com (2603:10b6:510:39::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Mon, 29 Jul
 2024 20:14:17 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 20:14:17 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240729200441.2337924-1-dnyaneshwar.bhadane@intel.com>
References: <20240729200441.2337924-1-dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH] [CI] drm/i915/dmc: Hardcode path to MTL DMC v2.22
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Mon, 29 Jul 2024 17:14:11 -0300
Message-ID: <172228405110.1863.7409031889530703019@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0343.namprd03.prod.outlook.com
 (2603:10b6:303:dc::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB5015:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ceaae13-5f9a-44a8-d14d-08dcb00b0644
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NGR3elUzUFJ6NkRnbGZoVWUrUW0vYjJCUFhEbDh5NktDTHd1TnAvLytsWTN1?=
 =?utf-8?B?KzBHMElwc3cyNE41QW9UKzRyT2hSRkViR0JucVhFNG9ObmozdGUrYjM0YXpR?=
 =?utf-8?B?clpxSXNEci9JZ3JGZWhTL2F0ekNRQ2x2UVc4SkRtdjhFQTNWOTRHblBEcVRM?=
 =?utf-8?B?UkoxM1Vsd1p4SFlQSGR0QkNZbUxUMUtwMEJmeTJCMEVhQ2tHaUF5bWgvNnQ1?=
 =?utf-8?B?SzRZOUZvYkkyYTdTMHl3V0ZwMlhCNUUrUHdKb1I1K2NIblQxUDRaa01nSndC?=
 =?utf-8?B?S201Z1RGaWE2YUdIbWIzWmxXd1g4Ym4vaHJ4YVN4clZJbHFSZmNMS3p6YUtr?=
 =?utf-8?B?YnBjamZpOUtXRTJRcjFGdzJ6WXJsZWx1NEVtUnh6ZGhiSU9HNTNNSSt6cGJw?=
 =?utf-8?B?R3B5U3J5K0Nya3FnM2U2NzJ1SXVXSVBOV0FjSUlWQmZ5TDYrQ1N2Nk9WR0dx?=
 =?utf-8?B?Q0J2NUppcUdHQ1VpZnlCSHMveEFmN1c0azM3RWNnYm5aSUVkWGhCRFAxUEt1?=
 =?utf-8?B?UWF0aTBCN1ByVVdjQ1MvVkFtUVBWQjB6NzJCazlaQnFVMTRJWEtIMjNOV3JE?=
 =?utf-8?B?NXV6RzA4ZU9sR2pQTUpXOVkxTDZ2YXBqTzBLWkpkVDdyVE0ybmhxRzlDOVkw?=
 =?utf-8?B?S05VcWJkSk53T3QvMUJBMDkyeGZCdDYrd1JTZGhCaEQzS0R6Z2RXOGNWUXJq?=
 =?utf-8?B?a0p4emJEUHFHN2lzenhlM1hVNUNqd3NwM3ZJdWlNQWI3Umd1d3J3WUI2ZGF0?=
 =?utf-8?B?YmdVbW0rWkVPdWRqUzhvU2MwL2ZIbnpraStjWFBWZktEZC93b2s2UUc0UTk0?=
 =?utf-8?B?QUlUelZ0bzdOYkF6NUtPUUlRWUxjcm5ROEhkUXJ2YkRkRERwM3kyanRLcTR0?=
 =?utf-8?B?ZXBoUzZpYzBjZjVibFRQelZFRXA5SmFacUIwNCtrRnRybzYzZTA2bEhRNFBE?=
 =?utf-8?B?SkRzajhxMHVMN0txZ3pweHFXZG1CUU9oVXRIa1lsYlMxRFB6V0J4c3lOZ1E4?=
 =?utf-8?B?STJ4ZlpCbGh1M2VualMwVDFFL3UxazFUYmw3Qm1ncWJWRGhPWTFCL1k4VlRK?=
 =?utf-8?B?Y3JMNmF2K0NkcFB1R0hsc0N5SmNjSnQwUG4yUkdYR2FEaThjSUZPaUExbFZG?=
 =?utf-8?B?M2ZIdS9zd3IvV1ljZ2E3UUNCNUVERWROS3RJRVpFMU0xdUZxZFRZbW1JUjND?=
 =?utf-8?B?ZHYvUzNmRHVpWTNENW0zbE5nTlg3VlcxODlHdWlhWDV1bGRCVExCOHFSK290?=
 =?utf-8?B?UFVrYitrcUo2OVlzU3Y4cCtBQ3NrT2duUk4vVDVEdGphdmpEbUhrM0dMSVZY?=
 =?utf-8?B?RCtzR3lZRWlHL3FkU2ZEaWhwTjN0OC9jc21zTmhrY0hvdUsvTktFbWZqYmVI?=
 =?utf-8?B?blZHREFiemw4WVRWY0RuVDl0d1RsSitZU3ZHQ1J6U3F6QXdNZVB6dU1xVnlz?=
 =?utf-8?B?Q0grbk5pbTZTcWk0cU9KaHV0SXhiYys3YkJKOHRaN0RvcXFVcDVZK0k3Rm93?=
 =?utf-8?B?Q2EwQnloNElZeDc4VEFNOVdBbEQrUDgvYnBQa1V4OWxhMWpoZkJUU0V5KzFT?=
 =?utf-8?B?Q3BKTGpaZ3Q0OUtWL3pUdzUwMWtpQTF6bFJKK2ZSaHJPdG5sYnBmTFMyaFhR?=
 =?utf-8?B?d3d4M1pOMHhDUHNKRzBibUdZK0tZRW15Vi9ObFZaMmZ2dVVlbkpkTXJOclp4?=
 =?utf-8?B?VGprajZFT2lIazhzMFlJcS9kS1NJbHpHWjgwNHk2b21sUGVZa2E4RTBuY1Y4?=
 =?utf-8?B?QUxYTGVJZDNObmRaL2Y3UlZjbDFTOGpCdDE2SmR6aUtGTEswUzJTUzFsTEFY?=
 =?utf-8?B?UUNENElBdkZqbjRtS1g3Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ME4vRmdVNWlGZ0hscVZ6R1pTeVB1c0cxZjgxRWV1WlhkQzd6THJVQUtTd2Vj?=
 =?utf-8?B?R3ZrK0NuRHdiTytqUHFJbENNcnNFamtReGsyNFRWNWZKMWlWb0QvOUJJS2h0?=
 =?utf-8?B?SktOSWRUSG12eHMwNU5wc3hrVzYyMmRqdWhjajhQZmtMdzkrQzJla2Joa2Ew?=
 =?utf-8?B?aXBiWHNyU2dINGJtYitZMXJReW5NV1BENnI5NHlhMlZobEdkKy9LL044L3dI?=
 =?utf-8?B?QmpxTE1JK0V0ZUdJZHFudVpnOG9udmVOVUVQSzFrQ3VaOExPS0VacytLR2NN?=
 =?utf-8?B?dEVCUkVlR3V3SEdCUzdVVXovQUt0d2FyejNlVWpPTnhjdUIra2pqNmNtYnNh?=
 =?utf-8?B?QkFKTk5XR2ZTVDRUaXhpQzd1dzBYM1dSM3VWa1pWdG5ZQjZYNnVONWZKUFVI?=
 =?utf-8?B?b21BUERmK3J2bjlBNGYzWHVEaGY1REJ4NFBhV1VhU25LbHpiTVlqZzgrQnp6?=
 =?utf-8?B?elliQll6bitoNXRtVTgxb0tWRHl0YzBSWmxxVjhNOUxWa3hXbi9jZXlVdGY4?=
 =?utf-8?B?bmg0WitUSVNleGFWTlhFRlc5clRsM1QzcVZFWmNqL3dnOENjZ3JBZ2VUNmxa?=
 =?utf-8?B?TDYxVlJTZzh2cW04anlaYUxWeFJuMlliaHFXYXVCSGMwbCtWWGZGcWlrT1NR?=
 =?utf-8?B?OVlXK2REMk1leDJXSEdvK1NHc2p3aSt5ajV5WlNTdnh2dGtMM3NvazZUSFVp?=
 =?utf-8?B?S1dpc2laSkdyNDdLSlRsVXdmTWlVYWdpYWprUlNSSEpYVkVweTZ1aExDQjNz?=
 =?utf-8?B?MlAyWDRNcmxmV0hrOG1jWmZNU1d5T3JZd2ZaZVQzMlpMdi9haTFHa1BmSGdP?=
 =?utf-8?B?QXBRei9XdTBXRVM2MEV2cGh0amgxZVZuWXhzWjNvOUJONTdGdFRNTHliKzJU?=
 =?utf-8?B?UHZ5VjRZZ1QyVmQyRzRUbE1LUk9KbVRVa1Y1N2ptdlJQSFBOc1MwNmpmU2Z2?=
 =?utf-8?B?MEJtM1VZOXltRWhSL3l4Sm9YeE1qQW01T3NzSnMxVXo5cm9RL003OWhjME9n?=
 =?utf-8?B?UW90anM1T0tHalpIaStza0p4cnUxL2YvWjVZNitLQ2VweTMyS1RyY1YwNGd3?=
 =?utf-8?B?azJOU3ZYRVYvelljRWdNcWYrVjVYYzFFREhOck1DTklwWjljSy90YkpPRUhW?=
 =?utf-8?B?eWswSVhoNjhNdUo0QngxWFZZMEszOVdXTVplYWxHbWpnbkpYY0VOcFZPYXlG?=
 =?utf-8?B?Z2hxaDQ3NkxrZzBucVNMZUZNSEtYY3lZeHlSaVlGQzlXTGpVWldEUkg3YWdK?=
 =?utf-8?B?RUZwZGxsaW9oVWF0YWpwb3JRdUhFRVNKSWcwOFZPMW5ESlNmc3QwMHRKWnFH?=
 =?utf-8?B?aUVKNEp1dnhnTjFIcU5BNXpkZVhqcjhoVnFyTHZUaTRLKzNDM3RvejZlUFBZ?=
 =?utf-8?B?THVNUUlsbDh1OG51WXBBWEJqMXZWR0R3WmpyclMwTFBuTzNuckpBam5vREx6?=
 =?utf-8?B?TDE4bUMxMW1UbXNqVUVoSzY1RmhheDNWRnA0bzQxMHFjV3JIUDlYb3A0bzlG?=
 =?utf-8?B?RFhnMkxnQ3c0eEFnQlBubFVmQTNPbEFzVHU1VHdOd0lqVlNBQmhuSXZ0bXRx?=
 =?utf-8?B?R3ZTb1k3UHpwMzBnaGg1WlZkZVg2b2FFbUpHV1ZXd3VxMXFmM2VXQitHYUdE?=
 =?utf-8?B?ampLaVBPRDZFZllrNXZHRFlaSWFOelZOV3hVVFgyb3Y5V0t4VGIwNGJ6ZjY2?=
 =?utf-8?B?UEU1dGQwY1JIaXZvMnJSakxhQnVzTnh1Wlh6WjN6MVJOV1NXOVZVelBBczly?=
 =?utf-8?B?TGtCTW1ZTkFYOFZST1pkTEVvZEZzLy9mbGFEQmFNVGlRT0VQV2ZmbXBEL1Rh?=
 =?utf-8?B?QmZxQit6bFhkS3BacmRuVFdUdDhhTmhvbE8wSy94RzZlZlQ4VE5keHNjVFZh?=
 =?utf-8?B?WVNOeVVLOHNzakZJK0MveDJnT3J6NGZ3bmU0dmlsMWlEbUliZisrMGpWaUt4?=
 =?utf-8?B?NUdzVTdRbkNJTDhOSE1NVmVHV3FrUnpUN2NwU3BVYlpLSCtveEZqclFoNC91?=
 =?utf-8?B?Uk5JeWVsYUgyVUI2WWlJdUluUktxT2RQMkMyWCtpVkxnN2ExRzcxdnJYNG5n?=
 =?utf-8?B?SnV0R3MySks3dFdiSlpPa2JidTRjZ1FsVjZUaTByNElQR2d5Zm4wejkxcTNu?=
 =?utf-8?B?cCtNbU5OOHFwM1RmT3ZEQ1NlaG5yOHhDS1c5bUJXMjVlVnh5VWl3UlA4ZCti?=
 =?utf-8?B?TXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ceaae13-5f9a-44a8-d14d-08dcb00b0644
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 20:14:17.7515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nvwjvplq8qdfWglTPXgwTELxoiw3rRsJ7rAASiKFH8gbBBfxtunauIcfmCvJPLqLlTje3PgwMqk8H+NeSZx/Uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5015
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

Quoting Dnyaneshwar Bhadane (2024-07-29 17:04:41-03:00)
>NOT TO BE REVIEWED/MERGED
>Hardcode path to DMC firmware for CI purposes only.
>
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i9=
15/display/intel_dmc.c
>index 73977b173898..5ef22a76c11e 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -119,7 +119,7 @@ MODULE_FIRMWARE(XE2LPD_DMC_PATH);
> #define BMG_DMC_PATH                        DMC_PATH(bmg)
> MODULE_FIRMWARE(BMG_DMC_PATH);
>=20
>-#define MTL_DMC_PATH                        DMC_PATH(mtl)
>+#define MTL_DMC_PATH                        DMC_LEGACY_PATH(mtl, 2, 22)

This will not work because the blob is under "intel-ci/".

Better to use the path directly here, i.e.,
"intel-ci/i915/mtl_dmc_ver2_22.bin".

--
Gustavo Sousa

> MODULE_FIRMWARE(MTL_DMC_PATH);
>=20
> #define DG2_DMC_PATH                        DMC_LEGACY_PATH(dg2, 2, 08)
>--=20
>2.34.1
>
