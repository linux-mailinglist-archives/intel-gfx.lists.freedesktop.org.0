Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 391A6B0A0A3
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 12:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB91010E94A;
	Fri, 18 Jul 2025 10:28:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y/RgNz1m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78BF610E94A
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 10:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752834498; x=1784370498;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Lb94XLKb5ju3lqJFD1VQlRTg0Y5JCGQlAB2w23XKdzo=;
 b=Y/RgNz1mwGDrMSWODLEcZ2YRUom7xbANa6iI6mD71O3GZnGzu+kgNPhq
 JUb+FrTZPgnNH4JDFouaIHcRj5B8QT8vcGyV6i3mvCSu1nT2w7hMd6ZsK
 LisNic+/dfNZ9OTQRkE4LcvB54+9ezWW6+Tcy6OAk5z5dgjEfkx1oOSbM
 SdWFvfhWxh4HT5O2k817xiaSxCD/IBpFMGz17+T4HFsNNZmTEz7OfcCSJ
 TKqq6rV7dCu3Vo6OSbhrQMz8PVcT6R1XMU6GuZunvz4wW2A+9rI8faJg8
 +6SSPkwzDjYJMyOfe5eIwa6/m0jltQLIyME+MukTYv1yQdZwFSMXbomUw Q==;
X-CSE-ConnectionGUID: 4opSGiV+SMSp969vO24W1A==
X-CSE-MsgGUID: Bn1kJy9GS3260PyC/4SCmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="66191965"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="66191965"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:28:18 -0700
X-CSE-ConnectionGUID: 1NkSnVLPTJS/64idi4lcQw==
X-CSE-MsgGUID: 4pTPm3e5S1ma0T6EpQsiWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="195155469"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:28:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:28:16 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 03:28:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.88)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:28:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BijRO8vqUZLU0aHd1jpQ8ipwmH+MPyWzoMD67sTJbYip0rTXt+UzEhOnro3qYUFhscjRmy62Zkr/Zj7mC0HNfOYFnEmgtM0c+RbeOfxn8IvKgntSjJPY81Seif33pqdJ0Gm4iAGqtN/i0fU1Q0Bn7d/SpBAfdxcQCg7zU5OXA9bjEvwVMuRDvn61DYoYhVeh4sBRWa1DZqRVgT7APj+rxdbGsdJBhG9q3ES2llzSE1BRGgfsx4fcW8RpKgAsuWBXbmyS/ZiJ116SjI0sEDJl+ShgHFf1P6Fi4uFM+/TvmBpE1JvG0oKNTTW7MezL3D0TLBxUf0IcFWYLkIhO7XBRjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oZ7Uq1IBGU4QMPBwlLyefwcl5VADqNJBoZE/nUE6R1M=;
 b=PkqD61V68ohx+3Bq68HvD0H0iHRYgTeXzfFumZZkgA/+UuTbKRpvOTdPQNeiVKlREeiL/ytvtcs2lLKS09cjknw7z3Czj+/sxarZSN21/Y8J9xaac6qscxypURs4cYcGYM+RVYq/dphX2Ss4PTdNbQO7sYcT2e3Zr7yBVULFRSGnOU6GOlMmO2VLYYqhnaqHrr+WYzrJA2blXxtwFdnKI1x+bRcukDVysVPpxyxWRDRDEKfbSRcqDaDaEn3AXyTktsSG+a91BHs5XLerBglVx2+ZnIaFXTSOrtsYiuXp6W7ongmXPzap2BmhUypNBeopXtC0tVVv+MzZn/uSF//KQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB7538.namprd11.prod.outlook.com (2603:10b6:806:32b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 10:28:09 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Fri, 18 Jul 2025
 10:28:09 +0000
Date: Fri, 18 Jul 2025 10:28:04 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v3 1/4] drm/i915: Add braces around the else block in
 clflush_write32()
Message-ID: <20250718102752.684975-2-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: VI1P194CA0043.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::32) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB7538:EE_
X-MS-Office365-Filtering-Correlation-Id: 28ec33c0-ae32-420c-2306-08ddc5e5caa8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUJ4Y05WYURCb0pXTk9TaDlzb29IcGJvTVBVWVRpaDNTOU43Vm01aGpoWHAz?=
 =?utf-8?B?aWdpcU1DSk8zam95RDZLTndMRHR2ZTRxaUFRRkRsUm9OODRrVmNpMWZMSW1h?=
 =?utf-8?B?bHFGQVhmVTFEUzgvaVNVWVdHV3ByVzZPWXd5RitVa1NZN3JjUm9GVklnclF5?=
 =?utf-8?B?UEtGb01wU1MvUUlQT1N1NW1sbDZONUE1aWVrMXgwSjF5VHVzQzh0QmUrdzJk?=
 =?utf-8?B?UkQ0YktJY1pmVkJLbVBlTlo4Wm1zNDZJVXN6NGt0eVIrcElsT2g4MWV2dVNl?=
 =?utf-8?B?ZTZkeWgxZzhTdGFGQXd2V1A2M3RPRmtJN2VnSlIrcXFsUXRiQW14dEg0WXh1?=
 =?utf-8?B?Z0hSSmhjRzVjbkVhVGxUU3lTb0ZZaEtqSDA5dWVpUi8yWldieUp3L1RPT0hS?=
 =?utf-8?B?anNuMmFoM3JWcDl2QzN5K1REYVozQWdMWEZqSUJTS0d3bGFacnhqZUpTaVBz?=
 =?utf-8?B?dmcvS3lnWmlDTEpoMGdrdDhWRC94ZlZKTnpmTVgzMVdoZktVRzZ0QXJjVUdk?=
 =?utf-8?B?QmJZRkdLTDE0QmtGbmdUS05JajJTOFFwblhnRThLN3grR2l5L1pSVnh5dmhI?=
 =?utf-8?B?VkJodkhzM0ExRWwzSmNHUFJ1cVVJNkV2M2I0N0tkWEhza2tPYVN5SUZDbVV4?=
 =?utf-8?B?ZGUxbEx5UVJLcmtuVTlxZWRMSWxjWHJIVHRiVFk0a2Nzc0hzOElieXYvUG5Y?=
 =?utf-8?B?Z1MxdkN1Sk9jRlgyVVVaRjloUnZYYm0vb1EyYWVmRmRLNDZ3QVVvSkFodzNa?=
 =?utf-8?B?QkltK0dERFJ4NnFENDJHam1vNDE5dGU1dDZIYmhTWGh1MUJkRGdYQ2g4L2ZV?=
 =?utf-8?B?TUpibzB5NSsxaVlSZmRGRTZ3ZFM4UWNETTdLbVJSMndnb2NyeGtveTVWWU9i?=
 =?utf-8?B?UmpDeEtxRFZuc2UyL2NPMkwwRlRXcmZYdVY1bDRid0VwRk1SK0srb1ZPa2lR?=
 =?utf-8?B?am9mZUpBMTMvMkxnbDNBTWtjeXJoaGxXUk5lTDVtL0E2WXVMZDI4R3dnUVdT?=
 =?utf-8?B?YTZZSUdIMDdPQzlrdGZIdDJuSnhldnVIWnpNcm1TUXpYaGJuNU52OTJ6bWJJ?=
 =?utf-8?B?Zm5GMVB2U0Q3cWdpaldlNldBLzgwK1RQR3pZYklxUlVjV3dyKzQyTFUxOFJo?=
 =?utf-8?B?T0gxYzBXU09DR0NzTTRSaUtHc3YwczdNYWZaMkdtVWdKcmE3MlptajRsUGRV?=
 =?utf-8?B?WnBUWVh6V3dNeTN3YUU1dytDc1RDaGJpL0hpQm4xd0FETzVpR0RzVWIxcVM2?=
 =?utf-8?B?bmxiSHVvWEc0ZXg5d1hpK1hMSVBiSUtTNWZHbFlLVCs4U0trTVk2bVZPM0hV?=
 =?utf-8?B?T3QzUnJTRkxoQVlvT1JpN2NSbDU5MTlyQjR1MkhFWjdtRzVCb2R3ZXFwZU1H?=
 =?utf-8?B?dTBEZlNIbXZFMGhwaC9FMXdsQ2xjVFFqZzBWK1NVT2h1WG9USmFjRHJWLy9j?=
 =?utf-8?B?TFgxRTQ5dzdodXdrbFB0K1hSa1ZweHdKZUcvZGpISC9oNzI0ZGR6UWNQQUds?=
 =?utf-8?B?MU84TDFnZTU5cUhneklhWjdIbFB5QmZqNW80ZHg0RjZvVVVBT3VCTHJEMUQw?=
 =?utf-8?B?cGZBWWxUd2lTN29udUxmSGgrbm9DbXM4djNHT0tZZUo4eU5MU2RXY3M0Y01U?=
 =?utf-8?B?ejhKQVNFNjhTN2V1Uk0yRm1Wc0ExL3M5RFJ3YVNlTkdsR09nQ2ZQalJXY2M2?=
 =?utf-8?B?anNFb0QwR25JMkNlNXEvOCtWQWtvK0dEeWl0K2NmZmlKaDNnNUNMbVh4MkFv?=
 =?utf-8?B?bFRncXdKdnQ0T1h6UFFNclZ3SzFsYW5mQlFiTDNjbEtSSmRrNldUZUVvR1hB?=
 =?utf-8?B?TU1kYm40ZUlaQTFVZVZOaEMxazlWc0dFYjVSa0JyWFpwZEt2OHB0eHZybU0r?=
 =?utf-8?B?VXVHODJJaVZzMkdrV3orVnpCbzlqODloSHdtTyszK01TVmxvdjE5Mm5zK3dL?=
 =?utf-8?Q?aRJgkfcWy4o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXptTG45SXVOLzBobVpiaDE5RmtvWXBCeVJ2cWpWWGY4WHhDYnE5Zjg2UTVS?=
 =?utf-8?B?WW0wU0RKNkJVR3pEVHZYNVpFQ3ZwbEMyQWxqdU85OWppMUdRYUFEQ3h6Qktm?=
 =?utf-8?B?eEt3QlA3enBvWWYxcnRoY1NGcTRpSkdNZVB5STlwS0pIK2dBZ2d5ZDVBUTJP?=
 =?utf-8?B?OEp5OUl2bTUyc2krT0ROUnFnYlE3OHM2VGs3VTNJam9FOXh1UUdoSW5mM2hT?=
 =?utf-8?B?bURsVXhva3BKOEtuK1llRGVpZmxDNWFZcjlzQnJpVEdBWm1naDQxd0kxbXZT?=
 =?utf-8?B?d3Q1cVJrQmp3ZWlncUFxNkg0QkZNWUJ6d3dIaFY5dHhLdFhpMGxpUTRyUXYv?=
 =?utf-8?B?ODB4aEpoS2dvU0dxSW5nRGhCbFZmbklQbmhXWjRtcFVNaFJKTnNaRE5rb2Qv?=
 =?utf-8?B?UWpHdStXMGs4K0RaaC9xWngydHBmZ094bHJjeklURVpISGJ5SUsybGx4Q3R6?=
 =?utf-8?B?L1NhL25RVnVnZDZyOHBJOCtHQWRabTVDSkVLakR0L1NlQ1dBTWlvTVEzS09a?=
 =?utf-8?B?Yk9ZSkUyYm1MeDRaMjJmOHZaZk96aE1UZURmaHlYMkJFTDV4WWVrRWNWWjlR?=
 =?utf-8?B?REJOa3lOdnkvcENmVHVEN0E0MncxWm9VS0VZaVZLTDNQRjRqbXJZWndYWkp2?=
 =?utf-8?B?TTQ4enhVVmZ4VXVuMGNEM0xJaUpiK2FlNE4wc0I0ZExyMDYxQXUxWVNLOHZU?=
 =?utf-8?B?eE9iOVEyb2ZuYzMwQzJSUzRBMlhqUzVnZFM2NWEwazY4Zlh2UmZGZXdWMU5j?=
 =?utf-8?B?MWR3Y2hnUGNWVTQ3aTFkdjI5UWVVOUhvaytRNk00SkNFcUZPS1J1Mk9XcnRF?=
 =?utf-8?B?N3NRMytzZVNrdVNHNzFOcWpWY2FGQ2FQOEs4dHN6bUsxczhxMjBXRjcvY0F5?=
 =?utf-8?B?bjdNd3ZTT1NYcXJWend2TUJkRkVFNzNJWVJ0U0p1dGpQTHV3RW1ReWh2R1ZO?=
 =?utf-8?B?SEZvTnA2Z1ZnaUxzR0xZMEM2VHBDVEZ1WDh1RW5YOTAwUzY5ZjI1SnN0cEY3?=
 =?utf-8?B?cTNOVkFOcTB3aEI1KzZGdC96aWE5RUZMaEoyVVB3S204Z0JWWGh5QUh4d1Fy?=
 =?utf-8?B?ZVJBWXZDbVNIV2ZvREl4MVZ1Y29GY1VVSFRMYXpJTUV0d1pQNVdCQ0RndlJp?=
 =?utf-8?B?Wml5U2tYUS9WVGVrS2I2NG85cGJkTzNreFVOR1gzY1BmS3N1cWxWUmo0eEV2?=
 =?utf-8?B?RkJyNVREY0dJL3hJUEwzWS9GeFlNYWM3b1EvS2pIRnpTRVgxemhBS3NPR1Yv?=
 =?utf-8?B?YURLbXI0dFVWdUZZOUh1YTV6NnRNR1BQU0hVbTU0QXA1SnhMTi9MT3pNY1hV?=
 =?utf-8?B?YlhBbUllNnQrYTNxUEFuNFNOU3FWdjF1MWFkMk4xb0pBMlVQcytsdmQ3b3Rm?=
 =?utf-8?B?aUVrZDhYVTRyaVZReE5RS2VjLzIvdHNTK1lDVEdSZC81bTV2TGJRTVkyWmkr?=
 =?utf-8?B?YUROMzJCb0MyekxydUFJekdCeE5EdjBRd0JZQXRtaWJnd0lUY2RLQUlOMjZt?=
 =?utf-8?B?RHlKTzNFTGZwbFYyOXJqK25NakVsanU3a1FXYXpmT0IwOHdWbktnMDJuNFhL?=
 =?utf-8?B?VGJOZ3JLbERRN1lZMXB0bSs3Wk1ITkZMMGYvdEdwRTJEV3lQdHRHanQvUnRL?=
 =?utf-8?B?VytOclBJZjhsSnVZci82MGJhS21NN0dLWGozenhvU1d2a1dPVWNmYTJlVk9L?=
 =?utf-8?B?aS9zWkNXYXF5MXVqZTE0bzdkVEFnMmJDcVZCblVWRjZWdXlUakJiMk5NSW5D?=
 =?utf-8?B?N1F0akY4T1E2Tjl1NGZZZVBZNEFKK2pnRDhFYlVVQVlkZ0x0SzNFSkp2a3BB?=
 =?utf-8?B?M1pyVjJuUHhaY21ycHk1ODRrUkZSdy9MbkxnME4rYmFBZ3A1RzZEZS93MWh1?=
 =?utf-8?B?VlFYM2M2S3lyZ3JVM2E1cmpJd0pkTC9idmxuVlhualFaMWlnNFU2VUlnQlhD?=
 =?utf-8?B?RFNXM2poZCtOdEpRQUsxZWRwUVhKUGdwc2hxVzhZZ25nLzhKZCtOa2RpK2c1?=
 =?utf-8?B?U3JHSVVtSlV0UW1BcURaeGJKRkVlZVFFUUtpbDFVWHowOHBpbjRFTFEyL0Iy?=
 =?utf-8?B?dWpXYlNmZy9kWGdXVjlRbWRQVHJSMytrVThaNVROUWx3RzYrVnBtbC9XS012?=
 =?utf-8?B?ckVsM0VVamNrRVFMTm0wb0c3V3JvekVKb05aWEpldkZxYldXREpxYUIzOWlr?=
 =?utf-8?Q?4ZM5IgjR+KvaCfBcEkPsR+w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28ec33c0-ae32-420c-2306-08ddc5e5caa8
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 10:28:09.5490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CvePfFwbpxgQp/ibUVNvXwUHMJNmcm7cAinQWKnGPm7iEh5Aafkg5FavPby7eU01HqoVdWa6ZmnCvFVZcw3wWdQ4qnKD6VA1Rr3FYUdOQjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7538
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

According to the kernel coding style, if only one branch of a
conditional statement is a single statement, braces should
still be used in both branches.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
v2 -> v3:
	- Nothing has changed
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ca7e9216934a..0801d4a140e3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1382,8 +1382,9 @@ static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
 		 */
 		if (flushes & CLFLUSH_AFTER)
 			drm_clflush_virt_range(addr, sizeof(*addr));
-	} else
+	} else {
 		*addr = value;
+	}
 }
 
 static u64
-- 
2.34.1

