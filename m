Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZmDiNqeYS2rpWAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:59:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3227102D1
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:59:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UWQU1RO4;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB9310E0A9;
	Mon,  6 Jul 2026 11:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5071D10E0A9;
 Mon,  6 Jul 2026 11:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783339173; x=1814875173;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d4xseP1NqUnESzjIJw1CKEzqZY+0uLGFa+9rwGRoI2E=;
 b=UWQU1RO4e2jyH9uqmnMKdWNn6WYFiu5Yw51brHnAv4DoiTmagMwUpWci
 pq59G/UCDeP03NmjAhml2QZ/AO/BKZ4AqNmZxUERLXTejqgSVQDhDQJfQ
 /C/4SmDHSCzJ8/RYrf/fAG3N9vuLLf9cao6NsJZmDGZ9M0TCSFitJSkBv
 FFD/YYZDvBjWv/H08Ds6fQWnelmrt7qKEz/SI1ugae2FcJm1vb/6V68SF
 elu7gy5/opQcgzdOJaH1dIZh6S1MXOelyq/CeQ2GJC+8MIgbBPlDOI5d+
 vXpRwJSjZ4LsXInQ0CMS6XxrDUX1YYErA0Eai+yiO5eVel+4ClxCZMn0l g==;
X-CSE-ConnectionGUID: aeyAgBk9SwepTl+yTfhnYg==
X-CSE-MsgGUID: S50jb2fOSDeV8h0SBIJX7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="84062645"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="84062645"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 04:59:32 -0700
X-CSE-ConnectionGUID: uqAVttQCR0KdDtHMKTG2IQ==
X-CSE-MsgGUID: ssLwdR1fTiSxAXpTQcJi5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="257567893"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 04:59:32 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 04:59:31 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 04:59:31 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.53)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 04:59:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ODni8i47SpATuRoXyket0R5JffNRXiDbiMIud29kl/sz4nlqqIrWf3OPyKAP+2sLdZ8bedRSBhLdOJDncDw/9Mz1bP1vRPoBRMkPXfVAB9oSb8nl/kvum6vHKj65EIuMzOV+Qb6XxANifTiZfl8kd3C83GEnqqt2tSc+KlgYw8Fw1D8lxhUI+zARjm+VKiijSlbrdDGWf8rIKqq9XjqXW2deFsgy4dm8xOet4mQfrhdtsYUOT3MPnaVKhc5AW6ws7AB28f9RuS93nXWOlVMl5jAP3lWdkZj1Sa7QSe3KGalAiJIOpA1QcPvXpVihJhttktqyUazN9V7K+7AuU3Jb1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kf/4Sah9HGmiQ68dDD8Kdbz3QjcbcTJ1YcF5nPl3aLs=;
 b=lGX3gkawO3COgDHuRF0JDPgCyqOK1W7WHgMYCz2Gf9g2SsByDpueTD9TVLcbaBOrjzPVOBtZFI0cfMqfsuHyldyHYIsxa5KBTUk+5gG+d2CxmM+y8zB8UAmxjF3cxwJLhp0AO0OeEaAom32dSSgm+Np7gAlJfimfwnxtTRvDwTfIUGo++zygp3RwSSRLGZxloh8GBjSL2C/5hIHi3uRE1+dDDIGq9cgjG22ukf7hnUQUbYt8Y2KV5c62Q99/oNaPqzqn1EZjzanH+oEz55V6/VIKiPLOVGqbR8HcbviHdHRPk1qnqNW2/Sv2Npy+HjH3W/BvysBce31StfheG99O0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by IA1PR11MB6370.namprd11.prod.outlook.com (2603:10b6:208:3ae::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 11:59:25 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 11:59:24 +0000
Message-ID: <eaec82d5-7f46-44b5-98ae-14048c6ab33c@intel.com>
Date: Mon, 6 Jul 2026 17:29:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/11] drm/i915/vrr: compute CMRR fractional timings
 generically
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ankit.k.nautiyal@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260616144233.832276-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0159.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::9) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|IA1PR11MB6370:EE_
X-MS-Office365-Filtering-Correlation-Id: 32fb1852-919f-49bc-3aaf-08dedb5605fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|376014|1800799024|4143699003|11063799006|56012099006|3023799007|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 9rk6v6/q1NLTCC7w+XoS+uqrUJCyCviseCj60HujJZnqSeHfHN9W9rFlH+5eY3g0bYzJxx2rSIJnT3JPWYLhV2EyGgNUc6g43raU36dnYEiUZT1+B6aeWXt4TCcNWVw9QRFDPngAVRLMVTNyzLqSNsLCX4EqXSQmikrKd+152A4X5xlZinyyYSQkN7Q9uvXwI61IC8NrN26xbuvt2Q5WMBGZG3D58bTKzQorbp2vcK6gGatKaaCI0cdgb/qnyndKg0FnEeYJEPHklJFikay/6gEjM4QaCNAv06KS0IWmxMaFYkybNxnfrbHiHacnLjT3DuVFFoDszyWqhUIYnFElr3S4R2gxmjXe/1VlGaR1iJDKAe4MZElE4ZfPFYTygI1fTziCGu9510T6JNcGBnzJRTQSE4qNQOGTPVrMA8DXyTM1zwBJHwu/pMjFYwSB3Pbx5EucZIHwALACf7jYVG1qgAtqCl/X2aZM8eZRX3eZFa2Gmxx/0YALEfOwMepX74TFjDvitagFFA+CXsr1KSPWZBZrKkQXWm+TNgadzGzYh1juGaHIFJwd2RWAYvwZHbDlYh00+Oif/6MnBqJtrHCa7tQz3bNO3iFZ9TR/YMsc+C2FtRSP9o2OS9qZeepKJgvCVm/s36hgPW0NLCWXJrEXYACLyXwY/tyIdWaaPqNgQZA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(4143699003)(11063799006)(56012099006)(3023799007)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rmh0Tldtd25JM2tXcENYRGdKKzhQR1d6QWhuMjhKSmlhejk1TlBIMTNyem1h?=
 =?utf-8?B?eFFuSHFvQ1RWNk1MZHhGcmVZUlVSQ29CSGVGS0lSdlF5QmxPLzJkSDJYcGVV?=
 =?utf-8?B?Y24ySU1WQ1RYaGlRcGlyNW9JbkhId05Fa1N3ckVhaXhzTFhHOVJ2ekc5RW5H?=
 =?utf-8?B?a2RzNGpORDY5RTl2MDlrRHJDWGgzUDgwRFgwQm5jN0JZT2xTNU5KVG9pQW1B?=
 =?utf-8?B?YjBDSDluRzAwRnRNWmcrcVVtQTQyRTE0THRxYXdlN0hJNDJoQnB4VUd5K2F0?=
 =?utf-8?B?Z28rZzZBQWEvZ1o4TnE0b0ZwRm1oRVNvMmVuc0Vtd0c2Z3hhcEIybXJYbGVP?=
 =?utf-8?B?VWFrOEsvYjdSSC9FNGpmRVZqWmpqM0FNVW9mOFlUSEEyL0ZkdDJ2bGFrNXJT?=
 =?utf-8?B?SmtvTEhEV0dRQlNTMlJHb0cyNmFOM1pjVzRPa1VhRGt0Uy90bXJ1UFJvNzIw?=
 =?utf-8?B?Z2JNTUpSVklOdFVBOWEzYktLRko4QXpKK21nZjcwOC81NWJrOE5pR1VVb0dv?=
 =?utf-8?B?cmF2VWRlekFGNEJJdExyZ0ZRMmEzRVRDczhsb2ZqdS8rRmhsWmcxby9LMUtx?=
 =?utf-8?B?L1Z0R0RRbm9HbkNaMmdkajdnZzlUNkxuNFhTYWZOYS95b2k0dHBLeW8yV2tS?=
 =?utf-8?B?aUF3ZDdOdzJTZ2k0R0I0ektVYkxlOCthSUxQNHJISGRUeEFwRmRBNXJkWkcy?=
 =?utf-8?B?UU4zRnRaMDAzeVl2MDVSVzkwZStWRTlOUkk4TnZNbjRaVFFjOG91Y2Q3eDJU?=
 =?utf-8?B?N3ZVUGNQR1JrNnIwTUZLSllMckxNNGFqZHE1M2tLaFhjUFcvMC9TekVOemZp?=
 =?utf-8?B?bjFSV1B0R1pMZHpXSjRvUERscEVSTWZIazNKaWRIa2svYkQxNHRwR0VkN1ZO?=
 =?utf-8?B?ZDYvQ0xuSUQwOXZPNGl3Y0wrQkZ2N2V1c0tlWmtuTGplTUJLOXJMcVFNZkMx?=
 =?utf-8?B?Z2syT1AwSHpDSlc4MW5aNWxZSHQzV2tmeDhZWjY0UXJMamhhTGNFbHYzcG9V?=
 =?utf-8?B?QXdaeHM0dFV0QVdvQi9tY1lTalFad3FCT2hPckZBV05yWi8zVG1HTjBCOGEv?=
 =?utf-8?B?REtIU2VzWk9RKzJvYlRFYytjSzdSQXlPOTBGWGdRWHp3RTVDdk03UStVejI0?=
 =?utf-8?B?Si9ZeCtkdmhDbVBMRmVwWWVBaUlSNzZ6OWFST3BKb1lPcFhmeXlNaDNoSklj?=
 =?utf-8?B?a0ZtdlUwL1Y2U0FlZUl1NEFkMEZ0bUFqRDg5VTA0NWdnT3NNREdOczhzY0g5?=
 =?utf-8?B?RnhHbkdWY1R6bUVvM2ZOd2ZtdWxhaXlvdFBiVi94SWN3ZjhVNlo5NlUzYy80?=
 =?utf-8?B?MEFTYlh6Mkp0M0tIWjNuZFh5OTFVOTRCa1ptT20zek8wbnhGbC9RTGduZjh4?=
 =?utf-8?B?Vit1Vm5ORGJQSUpRWFI2Tkg2d2FoRFB5UWo3MThkaURpSjNzRWkrQk83UTBP?=
 =?utf-8?B?UEkxOHdyc1pCNUVwbVF3LzQ1Kys1V1R4T1hKMmlBZ05GYUx6YXExbFAyUUI2?=
 =?utf-8?B?SkV4MjM2b25Kc3dSQmN5dVlES3dPSitKbTh1UVRNVzdqK3F4bjhLMEZONldG?=
 =?utf-8?B?cVZjWkhyNUNxbmg5ZE04eDFsY2ZQS2F5KzJhSW5GZU1ub3ZMdHdtN2Z0N3JR?=
 =?utf-8?B?cFZtbVh2K3d1VkVFOHpFaFhSS2VINFdxaFREWUlwUGp0WkNVRHJIWUE3bFBN?=
 =?utf-8?B?Qzd1THNYVmVsblg3ZjFnYjZtMHpwQ2Q5eFFuUTJ5eU9UUVg1K3I0NjVGamxn?=
 =?utf-8?B?ZGRpblNSNmJ0Z3lYR0ZNM0xYOVVCTFNiY0tjZ1JVbUh6U3FTT1Y5YXRrSUZZ?=
 =?utf-8?B?L1VpTUFieUtOWTFNZ3NFM3U4M2Y3bHNlenp3Z3U5NE1NOXNzbnpaREY2bmtX?=
 =?utf-8?B?VFFnaFIwM3cxdDJ0REpYM2JvWDhuRDlMR1NjcndDU1liZ0o4dUdhSlllL1g4?=
 =?utf-8?B?N2pCWkRZV1BVUE9pN3Q3QmpPUWpuYy9OUHgwZWUxNGZIcmVQbThjeE9yVk9K?=
 =?utf-8?B?eG9CV01neW5XdmJoNHU0V2tSK2hxZmphWDcwanVrZDU3WHZqem9SQXh5RVA4?=
 =?utf-8?B?ckVhS0F4RjFybVRhSTNNcEJweU5yQTYrU2tKL2g2cVhEeWFQMUZhd3VHbDcv?=
 =?utf-8?B?dUJHV2J6Ymo0ZXVqQ0drakxubW9Qc05OY1NKRW9zWHVHY3hyTnBSOUwzQjFP?=
 =?utf-8?B?MWc3MHY0QkVWY2dqVk1ZNkhlWU5MZEFTSjh3V3FxVWNoMFBCekZkeG8xSmRs?=
 =?utf-8?B?MjJ6RE5jSGc1YldZcW5EU0tVS21qSG90ZTMrWVBETUpkZFRES2dOVlJWdEwv?=
 =?utf-8?B?MUFIeCsxL0JyMGt6RVh4TTF2YlVKd0ZMZHZHcGFRdVhScVJxNGdhS0xQRjlV?=
 =?utf-8?Q?o4sQh0qcE+pf7YQQ=3D?=
X-Exchange-RoutingPolicyChecked: MMwSElNE11Z5qsnPwXNCf8OKHGAQ+qAvlSgIl0eeRIRq8rHFSwHGcQfnBkbShCPOlPwgwI86WzHWkuMcbK3iV4f1fNwYYdQEBaFTWjmgKrylZPpdTLB05h+qjGdGXsL73oWeLCkCpEgsgugIGnw6mtUX8IHP7TuvpaHDqg/8bljP6oLdYfJoP0u6HS7ZG/r52ERwi6vmkW/H0pC44bbw2aYNCU3G1T5WNQTumlf7BU9OREajGIYcf+t1xncGQEJuzLrJxlY7MTqVwidDtU7Jk062KiX+1Z3ryNkzijwILSIkY8UG/ozQJ37rDCP/UXgR6sSTY0KRqCzqlC+mK60awQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 32fb1852-919f-49bc-3aaf-08dedb5605fe
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 11:59:24.8802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: llwwtqDrx7UKNs7KYvohODm1hmHYO1KM7zgLElXM0CCfuQDUCspgy4spofqDnpEmtMVMpbaYjSGkHEmUfpebc6aYBI6gkqVx5WEu9MLtR84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6370
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C3227102D1



On 6/16/2026 8:12 PM, Mitul Golani wrote:
> Replace the disabled,

I guess it is still disabled at this point, so the commit message is a 
bit misleading.

eDP-only,

Should be a separate patch.

fractional-CMRR code
> with a generic, transcoder-agnostic computation driven by an
> explicit per-CRTC target. Compute CMRR_M and CMRR_N timings
> based on video mode reqirement

typo

  if CMRR is required to be enabled.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |   2 +
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 121 +++++++++---------
>   2 files changed, 63 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 897a1ffd7b79..39e11362630c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1548,6 +1548,8 @@ struct intel_crtc {
>   	struct {
>   		u32 numerator;
>   		u32 denominator;
> +		/* Derived during atomic check: 1000/1001 video timing required */
> +		bool video_mode;

I am not sure why this is needed at all, since you can just use the 
numerator and denominator to derive if it is a video mode within 
compute_config.

>   	} cmrr;
>   
>   	int scanline_offset;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 41118883b845..e36c0cab096a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -26,9 +26,6 @@
>   #include "skl_prefill.h"
>   #include "skl_watermark.h"
>   
> -#define FIXED_POINT_PRECISION		100
> -#define CMRR_PRECISION_TOLERANCE	10
> -
>   /*
>    * Tunable parameters for DC Balance correction.
>    * These are captured based on experimentations.
> @@ -186,69 +183,69 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>   	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
>   }
>   
> -static bool
> -is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
> +static void
> +intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> -	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -
> -	/* Avoid CMRR for now till we have VRR with fixed timings working */
> -	if (!HAS_CMRR(display) || true)
> -		return false;
> -
> -	actual_refresh_k =
> -		drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
> -	pixel_clock_per_line =
> -		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
> -	calculated_refresh_k =
> -		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
> -
> -	if ((actual_refresh_k - calculated_refresh_k) < CMRR_PRECISION_TOLERANCE)
> -		return false;
> -
> -	return true;
> -}
> -
> -static unsigned int
> -cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
> -{
> -	int multiplier_m = 1, multiplier_n = 1, vtotal, desired_refresh_rate;
>   	u64 adjusted_pixel_rate;
> -	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	int requested_refresh_rate, current_refresh_rate;
> +	int multiplier_m = 1, multiplier_n = 1;
>   
> -	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> +	if (!HAS_CMRR(display))
> +		return;
>   
> -	if (video_mode_required) {
> -		multiplier_m = 1001;
> -		multiplier_n = 1000;
> -	}
> +	/* No CMRR ratio configured through debugfs */
> +	if (!crtc->cmrr.numerator)
> +		return;
>   
> -	crtc_state->cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
> -					      multiplier_n);
> -	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_n),
> -				  crtc_state->cmrr.cmrr_n);
> -	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_m);
> -	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> +	/*
> +	 * The numerator encodes the requested refresh rate in kHz, so the

Not accurate, because numerator/divider together provides the refresh 
rate. If anything the numerator is in mHz as commented in patch 1.

> +	 * requested refresh rate in Hz is numerator / 1000. It must match the
> +	 * refresh rate of the current mode.
> +	 */
> +	requested_refresh_rate = crtc->cmrr.numerator / 1000;

Integer division loses precision. It can be used in the comparison below 
but incorrect to use it in actual M and N value calculations done later.

> +	current_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> +
> +	if (requested_refresh_rate != current_refresh_rate) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] CMRR requested refresh rate %d Hz does not match current mode refresh rate %d Hz\n",
> +				crtc->base.base.id, crtc->base.name,
> +				requested_refresh_rate, current_refresh_rate);
> +		return;
> +	}
>   
> -	return vtotal;
> -}
> +	/*
> +	 * A 1:1 ratio (denominator == 1000) means no video timing is required
> +	 * Any other ratio (e.g. 1000/1001) requires the video timing.
> +	 */
> +	crtc->cmrr.video_mode = crtc->cmrr.denominator != 1000;
> +	if (crtc->cmrr.video_mode) {
> +		multiplier_m = 1000;
> +		multiplier_n = 1001;
> +	}

more intuitive to use names like rr_multiplier, rr_divider. Also the 
names are reversed now.

>   
> -static
> -void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
> -{
>   	/*
> -	 * TODO: Compute precise target refresh rate to determine
> -	 * if video_mode_required should be true. Currently set to
> -	 * false due to uncertainty about the precise target
> -	 * refresh Rate.
> +	 * Let pixel_clock_hz = adjusted_mode->crtc_clock * 1000.
> +	 *
> +	 * cmrr_n = requested_refresh_rate x htotal x multiplier_m
> +	 * cmrr_m = (pixel_clock_hz x scale_m) % cmrr_n
> +	 *
> +	 * where multiplier_m/multiplier_n = 1000/1001 when the
> +	 * video timing is required, else 1/1. The integer vtotal
> +	 * term is tracked in SW (it is the programmed mode vtotal)
> +	 * while the fractional part represented by cmrr_m/cmrr_n
> +	 * is tracked in HW.
>   	 */
> -	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
> -	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>   
> -	crtc_state->cmrr.enable = true;
> -	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;

where do we set this flag now?

> +	crtc_state->cmrr.cmrr_n =
> +		mul_u32_u32(requested_refresh_rate * adjusted_mode->crtc_htotal,
> +			    multiplier_m);
> +	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock, 1000) * multiplier_n;

Please align the calculation as per BSpec-68925, calculate the cmrr 
votal here and retain the cmrr_get_vtotal semantics.

> +	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> +
> +	return;
>   }
>   
>   static
> @@ -424,8 +421,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	struct intel_connector *connector =
>   		to_intel_connector(conn_state->connector);
> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -	bool is_edp = intel_dp_is_edp(intel_dp);
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>   	int vmin, vmax;
>   
> @@ -459,13 +454,19 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   		vmax = vmin;
>   	}
>   
> -	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax) {
>   		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
> -	else if (is_cmrr_frac_required(crtc_state) && is_edp)
> -		intel_vrr_compute_cmrr_timings(crtc_state);
> -	else
> +	} else {
>   		intel_vrr_compute_fixed_rr_timings(crtc_state);
>   
> +		/*
> +		 * CMRR is a fixed average Vtotal mode and is only computed on
> +		 * the fixed refresh rate path. It is generic across transcoders
> +		 * and gated on platform support and a valid debugfs ratio.
> +		 */
> +		intel_vrr_cmrr_compute_config(crtc_state);
> +	}
> +
>   	if (HAS_AS_SDP(display)) {
>   		crtc_state->vrr.vsync_start =
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -

