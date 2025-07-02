Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DA3AF582F
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 15:12:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4249210E6FC;
	Wed,  2 Jul 2025 13:12:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gi7BmswQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFF6810E6BF;
 Wed,  2 Jul 2025 13:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751461931; x=1782997931;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=R+hsEiZMMq4iiq7xrt4zdm7wcp4Z9qYxgozXm0dQnJE=;
 b=gi7BmswQxbO3Sxl7zHa2msqToxgW3XzgRQiPThY8QlPI1K/G5I/3g5Rg
 75JA3D65cZKuSuYnUgcQYD0e44rrH0czeZd0YvAxuGAnnEEijQhcYystB
 xKK38K0P0blM4FqSfjxmcu2qN1GKpFgS9tKvkuz89L6jNgFOR4pY9gk3M
 YQe0wsUD7rTyk2ZU/fTxP7ZvxTk+4oeh6X+5rLK4dqq7ZdMi2kobeLFOE
 MajsGea3llL+e4FXQsXwDYtz27aKoTmh4pvQ/OUl2fTCPwKCOGZTSa1Ue
 1Ji2BetSSycIGR34wOnY+Ucyn7QWMaKyGPPognzrW1ghjKYGIMbuM0Woa g==;
X-CSE-ConnectionGUID: tV6TvK0hRoOmY8UODZ4CbQ==
X-CSE-MsgGUID: 3w25/ANlRxqKFpZFm2EenQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="53478751"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="53478751"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 06:12:10 -0700
X-CSE-ConnectionGUID: gZst7OGrS1+/Fhqpe7pklg==
X-CSE-MsgGUID: KOAHe8Q4RtyimKfxEf1w8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="154419899"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 06:12:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 06:12:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 06:12:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.75)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 06:12:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y6/+CszUO34CsreQBHstRQABt/qXe3wH6MSEPwMN7SFAc/SY/hq/gr/mgRqNxU+Mo7Y5TdyLWy/Bixq/WPlf7eR0hA8qPU0ZaoLCMO4+cQH4xgMiSULlGYnBQ4XoyHfRE4mzxWosgx+BEMoSdV7/CEc9LwMq8Uf7k/0XyOJI2J+EKNUWAlCygmtPX6zgjqZVSKAkHAAxVH96sfTfXoXF3euxRu6mggwmHiGSrtDFo/RwdpoAI5USjtTLBXlt7faYtXtwwE2XSaqn2d0JXMJ61uRau7CLAFbJr2uTl2hbdo2eovLjj52Lm4nrp3X/YIr0EJSR6W4JKlZGnjphvZsn9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZlXs1ihEGmJytvY7aA+8DmEFzb45QqcKIdKY7NEyXlc=;
 b=rlW7qL/n8YUgcdiqxZAw7KRYcTjywpb/voV9mKIQJPoxWGHVWLW0m+hqSMP6+zSo5D9V6Uw7kbJ9cKE9GH6Tr3Y2IkbzpYRloWiJFNg/ihCRVBTzup2KKwaDwdYh3aQHSIflV/Owi09p5I4pH3aaqe5u5yaOTRvo/3A3Mckn3h+13yttt7y67ROm/lL0Xia6kc0AZlk9rDJ4nm87Nais4eJHLbBWYV/eE4vn27UwXt8F8lujHYxsjmXc8Qb5or/FD3ke1OO7PmcK3qCLM26p+1nw0eqDvN1c/YFEfvL7herCP1Hlsz+W9psI4Qz024YTCP2GekeBc8G/KZFAA4/OLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7052.namprd11.prod.outlook.com (2603:10b6:510:20f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.17; Wed, 2 Jul
 2025 13:11:53 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Wed, 2 Jul 2025
 13:11:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250702084620.3837426-3-ankit.k.nautiyal@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-3-ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/gmbus: Add Wa_16025573575 for PTL for
 bit-bashing
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>, "Ankit
 Nautiyal" <ankit.k.nautiyal@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 2 Jul 2025 10:11:47 -0300
Message-ID: <175146190758.3748.7583185864302070157@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P222CA0018.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::23) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7052:EE_
X-MS-Office365-Filtering-Correlation-Id: a4179780-276d-4f37-0b29-08ddb96a03ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0dJTG9PVEV3aGFteCtoeUwrNEVldGQxQWUvSHF2YlZNWllTYStES3laejlT?=
 =?utf-8?B?ZlhBYWV1NXpPU1BVWkpRN0cwWkZkWTYyNThoUmppNzNaYytTZENML0VyaHhC?=
 =?utf-8?B?SWRSemtKNzY3L0daYW16MENGc0RDd0h6eVVrTXByS2dmYUFYZnhuR3hRMDA1?=
 =?utf-8?B?dFgzaks5dUpuWjBFbFFKeEJFZFdhcHJZZWlSQUwreUc0MHMzRWJvTWhtQ1gy?=
 =?utf-8?B?OUJmQllCNkVzSEZtV1c4WEM5aUQ5WHh4TDl2bTdMb1R5VmR1aUVsVEV2QzV4?=
 =?utf-8?B?a1AvRUNqTFhmUjF3UTdSTWV0YkRTbDVZU0tqYnJTSW9FUmlGWEdZL0Rzb3ha?=
 =?utf-8?B?TlpPekFkUWlBUEo5d1lLVjZtNEJyaDBtRlZjZ0hYWEN6VXdwbHNreXo5SzNO?=
 =?utf-8?B?WFN4MnhVUmFUeGMyNWhsMGgzaGE1S3VGbXFpN2l1UHlFRGRWNXBvN2gycmkw?=
 =?utf-8?B?NUl2SWpEWVJDYjVkYit6d1hCZkxNVlViVkhSOXJraTRYVkNhMmtpWXIyank3?=
 =?utf-8?B?clprVGlzUklLemhjQmZyU2hQellKNjIrRDUwcEFkT3hpRE9CVkJQTUg1K1d3?=
 =?utf-8?B?enljcjVHSy81U1FtZVF5bzRBTTNBbnhsM2lIOU1XQWRoV2EyVGJ5UVZiU2Zl?=
 =?utf-8?B?aFR6Y21mWHVxV01XdjI5a0ZUTWRGdy81L0JJQ3p5aE9MeVBKQ2hRaktkditu?=
 =?utf-8?B?RVVQVi9jVXdhd0F0Q2ljM2NEamNLL0MvYU82WDJHTHpLY01xMVMxQkNreHc5?=
 =?utf-8?B?R1FJZHpyZ3hkRHg5VFlzU1cyTTV1ZFBlcjFOcWNVYURzNUJpeUF0c0dubDVP?=
 =?utf-8?B?SmlMRitzR1drVnJsbndxbVIrb2NwQjFmb0xxOWlJclc0M3Y4L2k3RDJaU0tB?=
 =?utf-8?B?cFNuaEtTbUJOeERuWmNjaS83S2JnTkpTL2FPVWQ4eVkwOUNHdnlJdHh3Q1Yw?=
 =?utf-8?B?SnAwRE9xTEV5eFJTdXRTNHdFK2pRL1BWRkpjUEJQeFNZajVrRU02QS81dVU5?=
 =?utf-8?B?NUNETzMzNHdxeSs3cS9SYnc0b1loQVQ3eWlnSGxJZnVoemhoNytCY3I0NTll?=
 =?utf-8?B?S3lyWjFFd2JzU0RhVDRlSkVrMTJ5VHR0RngrekR0MTgvZUZ3YTM0VTFVQ2FF?=
 =?utf-8?B?RkIrT1lyV29XVGZUWC9iMUJVTDFuWUtCZmdxSTF5akFXaVloQlNGWHpMVGtW?=
 =?utf-8?B?dzFySHAvYmE4ZlZEdXpIVTdvS1BQbWRiYVFkUUtWUFJSM0g2TUJNenZYUFFR?=
 =?utf-8?B?aEw1L2NjTytDM1ZlWklhbG1ja0R6c0M1dmVrRHdSbWpKTzBodFU2cGQ5Y29q?=
 =?utf-8?B?UGl6VGdPU3gzMDl5d0wrNmR4SmgwYjF5YW9iZnNBeHVCTGtCbFNEU3NBTHB5?=
 =?utf-8?B?eWJieU8xSllwTklwZmlTT3I4YU9rcWgybURuQkpiV3M2dFI3aUZzTEs3K1J4?=
 =?utf-8?B?UnJETnNrMjJSb0xsTVB6VHVXRnczRk1YQkU5dXQ2dlhDeEpOWDFEcGhOeCtW?=
 =?utf-8?B?aUJUZjFDSCtaRWVjb1lTQUFjL3d2dmNhTlBuRUdiY3dIYkkyUTB5ZG4yUGNx?=
 =?utf-8?B?MWlBNjNTQndaSVk5R1R2czBnbDNhWnFXLzZ6VGJqcE1jK3RBYWdYeE9pUEMv?=
 =?utf-8?B?aUJBZ1prdVBzVlhzdDBlVnRpTU5NcHJ0dFRRMTRwRlNjR1ZveENiWHcvZGg4?=
 =?utf-8?B?ck9UWmNaNmZMaVI0Nll3ZkRSNlZoMkJvY0kvUEJXSzBGaVg4cTBYYmdVL3RL?=
 =?utf-8?B?dTlWd2IrbGVaWVpyRElPa2NmUzJ6Y1dyWVQ5c0ZVNmVMNmVDY2kxdUl5MTlt?=
 =?utf-8?B?ODRJeFphM2dwcStJY29uRU4zQWpXN0l1N29SWmROWFZVNzVzSi9FcUNwRlFX?=
 =?utf-8?B?dUpEWHlQd0JPeFgxMHh6REIvRGpzMFd2dVZ3YmZwY1pHVUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkgvbmN5MjZybzFNeGQvU0UvZy92all0d2orTi9tK292U0wxdG9EU0k5R2NH?=
 =?utf-8?B?SnNxVWdnUHA4d0plOHU5Ulc1dXd2VURnNk12KzhSUFg2NnB0RnpBMy9lb0Ix?=
 =?utf-8?B?NGJ0TE1DWXRvb2dQaDlrK3cydzJGOTVKQWNnV0JDWlUyVjErcDA1YUxxUXRR?=
 =?utf-8?B?RWh0QkVtTFhCdUZUZXVjYm5TTHJwZ25jdmczSmNWNnJZZWlpM0VqL2FpYVJq?=
 =?utf-8?B?a0VKajZ6ZlFtUEtHRHpPZkF4djVsek1UcnFtcnN4R3FsTlBEMmwzVWthaWwx?=
 =?utf-8?B?Ui8rUjhvK2JuQThnNVdKVzBrbEE0UWpGc2xZZFpWYnN6Y3krS2N1N1BhWWVH?=
 =?utf-8?B?Tis5VXF2U29kVktEaUtWMFg1VStKdVdrZkREaXJKL0paWUFnNFQyQ3g3bDRQ?=
 =?utf-8?B?MGRDVnhNUnZ2eXMzQ3YyWDZtcTh5MmhnVStBSGVyT1d0YThINW96MGgxeHYx?=
 =?utf-8?B?ZnJiNnIvZ0dlWXJKZWdtTG84M0x2ZzBETndoUEZGdjMrbkEyZ3lwdGw4QUpo?=
 =?utf-8?B?RmRGTVNhZC9xQmd4ZW5sVDR1RFc1d2hXRVZ6YlpaWVZUSlZ4bUdtL21Zd2Z4?=
 =?utf-8?B?Q2hrUkFmMjV0RVJkYTkzemRoOXVNcWR4WDA5TU5lajREQXB3amRBSytUazRu?=
 =?utf-8?B?ZEt0L2Rnc2QzWnEzSmZaMjkyOHZpeFJyK21OdmxicG1Cb3c1ZVBzQnkrWk1z?=
 =?utf-8?B?WDViV3BUcU1WbmNGTDU2Rm1SWERiRzVEdEhjL2lHaWFGaWJaaFArZ09CbXVO?=
 =?utf-8?B?c0J6MXBVSmxQT3RvaVRJOVVBY2phQk5nV0lTVE5kaWhTTGVMQWE2RlZSOUp4?=
 =?utf-8?B?QXczd3orZ0RXWFU3Tzh2TTNad2tJb0tqZDNsSFFwaTZtcGh5bXVqenpqSUxI?=
 =?utf-8?B?L2Jjak5Jd1J1T01wN1Y4MlZJYXpqMnE4RkpnYzRXdVFMcno5TGtRckpqWndV?=
 =?utf-8?B?L1VJZHhnQkVBUFRlNzdENTlVZGNwaUlJNWdsc2lQYWRROUNFZzZRdzB6Vk94?=
 =?utf-8?B?WVJRbzB3L0pyUHhHSmk3bFZYM1hLdGN0dm9zUHAwTWpKTkkzODFQQTJjWGU5?=
 =?utf-8?B?Q29MVDZHS1ZkUDBiZDQwT0dnUWZaZVJPVGNFQzg5aHJ0UXUyWHNTb1kwU2h4?=
 =?utf-8?B?Vy9Pd3kzRGJGL2Z2QnphRW5SNktkdWxHUGM2QXl2SStyN3hQY3pITWhETCsw?=
 =?utf-8?B?aC8vT2ZrTXBhMHlkTkZLaUJQd1FpWU1PV1p6NEdCTllLR2xGODZNVFZxTlVz?=
 =?utf-8?B?SXJmZFpGMWQyUFhvL0d4Vm5xUXltRS96cVkyMnliWGtFc1pjaVE3VWd0OGR1?=
 =?utf-8?B?ZWZ0WlpFR2VyRTl1WlU5L3ZsZ3NnWnBGdEJOV25OSTZkem5UMkUvSFdVcVZm?=
 =?utf-8?B?empIVDFuZkRiWkRvcUJnaGNLTXpQWEI2Y2JvU0pxMHJyVnk3MHVTODhwU3c1?=
 =?utf-8?B?YTdvWnRTbE1NMFRnNExZUmlIOVpNZmF0bE1aWmM0NUo4RnVXOXBaUjF3SFZP?=
 =?utf-8?B?WEVGUzZGeElDNnpvQ0ZUWjJnVjNYZThJZVp3MVIwUE9pUzArTW5VNjJaQTJ6?=
 =?utf-8?B?MWhZZ1BUU1o2cTZvS05GWUpTWEhFbWg4OHpsMDViditmS0ZBRlVLT0Q5STNG?=
 =?utf-8?B?K0diVW02elR6ZmgvQ0tGMDZYRlRKZTVZdUg3Rytrdlg1MWROMlE2WDA0YlBr?=
 =?utf-8?B?RkpubmRhdFE4QTNKUGU2aUJjWm1Nb0pLR01MNFpONWZpcWh2MnI2QWp4Yk5X?=
 =?utf-8?B?bWkyRkh5WXJzYmJqQ0gxK0RPbkluZ2R1cWJPN0d6Zi82bnpBWlU4ZDUxWCtH?=
 =?utf-8?B?RkxUMjhDRTRpT3IxaGRnY3lZQzhUUlMrVGIrK21rQU92TGw4QkkwbGZ6SGRi?=
 =?utf-8?B?TXNZNURESDhiMGw0NmZkWE9zSjlkdDRqYmV1MGl4SFN6M2JwRjJ4aVI4c3RZ?=
 =?utf-8?B?a1QzTXNTUFV1bFIxajlna0FlbS8wcEdYblZLK0NDOEZUVDZjTVdOVS9haUdk?=
 =?utf-8?B?ZGFyaENiL25QUzJLWWpwM2RWZHNHaTg0Q0RIVU9HSjlTU2hZdlE4ZHJUVnZy?=
 =?utf-8?B?NjBZeHRxUTRJT21QZ1ZqcXU0VVNOaVhGMFJXZVlRS0libmE3RXNOWGlYMWZ2?=
 =?utf-8?B?ZjhScDdlN09ibTh4WWlmbm5JZUxlY05XSlVWekpYbkE2K3VVSWJkNiszVWw5?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4179780-276d-4f37-0b29-08ddb96a03ad
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2025 13:11:53.7228 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zQJ4HKl+OihdMw7d+AShY7kUtTSJ3uiScxLwmL5sXyx7clXMZ8M3pgb9lvSi9orriX82Vxw2EO/pu5uCbaoasw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7052
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

Quoting Ankit Nautiyal (2025-07-02 05:46:19-03:00)
>As per Wa_16025573575 for PTL, set the GPIO masks bit before starting
>bit-bashing and maintain value through the bit-bashing sequence.
>After bit-bashing sequence is done, clear the GPIO masks bits.
>
>v2:
>-Use new helper for display workarounds. (Jani)
>-Use a separate if-block for the workaround. (Gustavo)
>
>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>---
> .../gpu/drm/i915/display/intel_display_wa.c   |  7 ++++
> .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
> drivers/gpu/drm/i915/display/intel_gmbus.c    | 34 +++++++++++++++++--
> 3 files changed, 40 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu=
/drm/i915/display/intel_display_wa.c
>index f5e8d58d9a68..12d1df5981f7 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>@@ -42,11 +42,18 @@ void intel_display_wa_apply(struct intel_display *disp=
lay)
>                 gen11_display_wa_apply(display);
> }
>=20
>+static bool intel_display_needs_wa_16025573575(struct intel_display *disp=
lay)
>+{
>+        return DISPLAY_VER(display) =3D=3D 30;

We should also check for 30.02.

>+}
>+
> bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa)
> {
>         switch (wa) {
>         case INTEL_DISPLAY_WA_16023588340:
>                 return intel_display_needs_wa_16023588340(display);
>+        case INTEL_DISPLAY_WA_16025573575:
>+                return intel_display_needs_wa_16025573575(display);

While it makes sense to have function
intel_display_needs_wa_16023588340() (at least for now), I wonder if the
same could be said about intel_display_needs_wa_16025573575()...

Maybe it would be simpler to just inline the conditions with a single
line here instead of adding 5 extra lines to the file.

--
Gustavo Sousa

>         default:
>                 drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
>                 break;
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu=
/drm/i915/display/intel_display_wa.h
>index 146ee70d66f7..d3d241992e55 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>@@ -23,6 +23,7 @@ bool intel_display_needs_wa_16023588340(struct intel_dis=
play *display);
>=20
> enum intel_display_wa {
>         INTEL_DISPLAY_WA_16023588340,
>+        INTEL_DISPLAY_WA_16025573575,
> };
>=20
> bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa);
>diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/=
i915/display/intel_gmbus.c
>index 0d73f32fe7f1..95cab11c9cde 100644
>--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>@@ -39,6 +39,7 @@
> #include "intel_de.h"
> #include "intel_display_regs.h"
> #include "intel_display_types.h"
>+#include "intel_display_wa.h"
> #include "intel_gmbus.h"
> #include "intel_gmbus_regs.h"
>=20
>@@ -241,11 +242,18 @@ static u32 get_reserved(struct intel_gmbus *bus)
> {
>         struct intel_display *display =3D bus->display;
>         u32 reserved =3D 0;
>+        u32 preserve_bits =3D 0;
>=20
>         /* On most chips, these bits must be preserved in software. */
>         if (!display->platform.i830 && !display->platform.i845g)
>-                reserved =3D intel_de_read_notrace(display, bus->gpio_reg=
) &
>-                        (GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DIS=
ABLE);
>+                preserve_bits |=3D GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_=
PULLUP_DISABLE;
>+
>+        /* PTL: Wa_16025573575: the masks bits need to be preserved throu=
gh out */
>+        if (intel_display_wa(display, 16025573575))
>+                preserve_bits |=3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_M=
ASK |
>+                                 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>+
>+        reserved =3D intel_de_read_notrace(display, bus->gpio_reg) & pres=
erve_bits;
>=20
>         return reserved;
> }
>@@ -308,6 +316,22 @@ static void set_data(void *data, int state_high)
>         intel_de_posting_read(display, bus->gpio_reg);
> }
>=20
>+static void
>+ptl_handle_mask_bits(struct intel_gmbus *bus, bool set)
>+{
>+        struct intel_display *display =3D bus->display;
>+        u32 reg_val =3D intel_de_read_notrace(display, bus->gpio_reg);
>+        u32 mask_bits =3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>+                        GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>+        if (set)
>+                reg_val |=3D mask_bits;
>+        else
>+                reg_val &=3D ~mask_bits;
>+
>+        intel_de_write_notrace(display, bus->gpio_reg, reg_val);
>+        intel_de_posting_read(display, bus->gpio_reg);
>+}
>+
> static int
> intel_gpio_pre_xfer(struct i2c_adapter *adapter)
> {
>@@ -319,6 +343,9 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>         if (display->platform.pineview)
>                 pnv_gmbus_clock_gating(display, false);
>=20
>+        if (intel_display_wa(display, 16025573575))
>+                ptl_handle_mask_bits(bus, true);
>+
>         set_data(bus, 1);
>         set_clock(bus, 1);
>         udelay(I2C_RISEFALL_TIME);
>@@ -336,6 +363,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
>=20
>         if (display->platform.pineview)
>                 pnv_gmbus_clock_gating(display, true);
>+
>+        if (intel_display_wa(display, 16025573575))
>+                ptl_handle_mask_bits(bus, false);
> }
>=20
> static void
>--=20
>2.45.2
>
