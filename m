Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1568AB14C05
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 12:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0053B10E1E7;
	Tue, 29 Jul 2025 10:16:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ADnas01Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E019810E1E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 10:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753784192; x=1785320192;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=0D+vlgP6G58qX+lxFe8MAbPwghYRoMT5VsFQmWtx9cQ=;
 b=ADnas01Z31EB3/ZI3h7Px1A1D0xMNvs0Da0HEpRprzT+oh4PoDcNlsrK
 JZEwgqnNtxXTFoQt0PPrB69KZuH5XjcXB9Qfl3HY39PTiaSjzwIUHUrvw
 76a1+XZgNumGAZxvYwIrSkuAyljg0LuLlUIyVwFh7yrFs1Wlo2j5X1/q6
 nj4TiF9r0kaHlfJhiDTxbeRrydc1bnuRoeje/MGzPW1AEpw5ZZGbofXtR
 wM5StE1lZzRwU+vmBRLJqs6jxaJ0XDwyZv74KF6nRThX09IIgZldTn249
 IwPR6Lz9nq5uSzYqsuKWLre+2j8bGM4zbTNAxm5lmc+vebbYQJpr+CIOt Q==;
X-CSE-ConnectionGUID: bOE6vZ61SaySbf3NlEifeQ==
X-CSE-MsgGUID: n93+ryodR/GbBzEbka2FiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="67132768"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="67132768"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 03:16:32 -0700
X-CSE-ConnectionGUID: 7FfTRnqeQYGuX2QJAa5ANg==
X-CSE-MsgGUID: woFdWmvNRtaSJHK8D6Pyqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="186316494"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 03:16:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 03:16:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 03:16:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.74) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 03:16:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xAMcerTfdq4MDvMYwX+n+U/iCb2Ug0j0JYVIP/HyguD6zJ1/M9gkq90ckfXF78tmywuuw59W5V6BJPv3Ahac0s7sN8t4QOf8yhqxb66LwPs5wAg4f3AIUjl0rtyOqChYlrCM9YdlEWLV36ced2tbDedKVjSAcBO/VYFj4vqwLPJFlrHhzwn++kGMYdd9/68E8kpThQGum6fs63Tazc9BJuBuf9foCV21QZPKu7COAAYRVXE+Ebt4peiN3ZQPVvHDmOxgEEX00BMJ0ks8VAgogrXu1llBu8Y/kjZ7Oy6/941MkS7XKfe1TMxmY2YyExaWvwf/BsPW5y6LcWFTdwMq+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XLd0yyZ9UxsqUdeJVezu1Ug9yEZw4/NAI2YW5p/q0Ys=;
 b=WKC7mOrlfasQxGpSaxUryDoC6hGmyUKKuXMcs92jErJYxQAn8tfWS41yKaSQ1OBw6t4neqAXT8ZasAzbuktyBJXl9hZv7IIcZ6kncjT3BK6M4LqwvTTtD32jxBE5giY6bTPcoSpTsN6p3vfayzJotRnE1Zq+LKY/O9OZrC6aoi0gio23oEC6myBkLfkX+2zoPfFEfMxnV8hvuhePSRIjGIxR1kWd2FkyReGbPrzZM3V5DmrosruzKHE/L0hm1te/udtolHNu57/ahGJTXVmoTXldbiKLbsiWPUYFM/gVWoD4Cq8hAVF95BWUCSSaubY3kfKVBxW/LFSn1kNRo0qqZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SN7PR11MB6828.namprd11.prod.outlook.com (2603:10b6:806:2a3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 29 Jul
 2025 10:16:13 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8964.025; Tue, 29 Jul 2025
 10:16:13 +0000
Date: Tue, 29 Jul 2025 10:16:04 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: [PATCH 0/2] drm/i915/selftests: Miscellaneous improvements in gem
 mman migration tests
Message-ID: <23cxoob5lmoh7espy2ig364pmp3vkhim42rhdqrlxsn3seq2gc@ngm6zdvbgk6p>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DU2PR04CA0340.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::12) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SN7PR11MB6828:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a2165c1-16d2-4c3e-dbec-08ddce88f227
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dVV3NVp0bkNhQ2dQRmk0WTA4M1VRcGZhT0N3ZGxWQm1yTHFFV2Y0TVh3Y0FP?=
 =?utf-8?B?VGxsbDZMMTRVNUlna2tDUXVqbVM3ZHN3OGFyaDUyZXpNaGpxZGRqQk1VVTl2?=
 =?utf-8?B?ZUl0bjZZRlE3V2p0b2haeFNhR0hTZWwxNkZSQnp6RUxhUkwybCt3Y0owcVBm?=
 =?utf-8?B?T21aMUp2RCttZUZIUmRzbnJLdDk2L3hVdkNYdG5xVndTRmxGSVZmdk5Tam1z?=
 =?utf-8?B?YnVJNWhEdGcvUjBuVndZUEZ2RmVYaWtPYmlyNnVEdEQ4WWtBU2ptTlE5eVhk?=
 =?utf-8?B?OFVUNi9nenBzVC8ycGNPYVZhQ2JYT1dKSHZOZXZ6OThPU0VSd3REa1VvWmQz?=
 =?utf-8?B?NFhSZ0ZIaUVlRDg3UWtvTy9SYUU2TTlJKzFvbTA2NDhaY09FVGlaLy9SSEV6?=
 =?utf-8?B?MnkrNnVNNjVMQU1FQkVuTTRYM3lMRmdSeG9WL3RMN2VkYUt0aHpMQTY5TWR4?=
 =?utf-8?B?VWhWOCsyYTBHU2l4MkNQS3JHS2N3SnZ1ZUJhNDhVZG9aNG9QVnFoeUhkUGIx?=
 =?utf-8?B?OG1FVlZpMW56UVJJZ25aZkVRK1ZCOTRtQzJqUXNSaEVEK1V4c0NLZ0xYSHJj?=
 =?utf-8?B?UTFIaDZsNzgvOVpOL1ZUNHl4dFhpVlVJcnN1YU9DNVVZSkxjUWRSMzA3Smp5?=
 =?utf-8?B?SHZEM1VtSUxkcGgzcS9sSDZWcXNuZ1dQeXJOYVN5Qk1MaEZTT0ZlWndkZXpS?=
 =?utf-8?B?VlQ1N1NlNVFIaVpaUy8vZTZMQTVJVkE1K0JwMzV2TFFTTGJac3l4WXdjMVZ0?=
 =?utf-8?B?cklVckVqUVNlczRFZFo5NkxzSE9sRzFBYkJMSnhFMWFiMWZ4dkowaU4ybTZz?=
 =?utf-8?B?N2tCZWtFOGZtN004YTYyek52WTVmV1lLQXVGVUh1TkEydnJQTlZVZ2dvWjFC?=
 =?utf-8?B?c3ZBRE1LLzNnUWxsbmZtYXVkazJpWTFvVHNOZ096SWdVdGx6Qk1HcUpIanRa?=
 =?utf-8?B?TUlvQ1VFWEU5dG9ISzZZSTNDSFVnbkxxLzArYzBhR1hwcnU4UUxVZ2FmQWow?=
 =?utf-8?B?SGJVRElOeXRsYWZuc21DWjkvZitDcllPN2xRSzFXRGNjcmtHRUFLclNFQXYy?=
 =?utf-8?B?SzB1a1dtdHpROWhjQ1d3ald2Rm5kRENNb0Z0WDBSMjVPTElsVTlxd2Z4VW50?=
 =?utf-8?B?TVE3UEhvejZqWHROTGRsQUxaeTlrTlhvMXhMTWJxdGdET0dxWVB6YzhuelM1?=
 =?utf-8?B?VTQ5Z2dtRHIxenZGeGl0M2JhTlFIK2YrMjExeGhTa2tBd3NmOVRscWRyM1lR?=
 =?utf-8?B?OTNEbWVpTWw5emJrNGFwd3dUNlFuN0pBOVJ1WkZzWlJwVGkyaTdMSjUzYjhD?=
 =?utf-8?B?OGtpV3BhZm1XSDNMV3BiT2RENm14ZlY4MitKcFlXd01SZlZwek93ZHZQamR6?=
 =?utf-8?B?MTdVNEVKRUM2VDM2eVYvemdXSkJQcjFQSTRtR20zNUVWNHJLYklxOFcwMkY3?=
 =?utf-8?B?RDluVzZHMy93NThZVEJMZmZUc1ZHQ3M4WHlLQ1NqZ2drR3kwY0RDUnhQS3ds?=
 =?utf-8?B?WUUybC9iVmhQZ20wZUZKNElVY3ZyQzhzL2pmdGVKUmdNak51QmV5dThqU2RX?=
 =?utf-8?B?NGM4T3YvZFIxVkdONEFyNERxWWtrd3NTWUpTdFJ2dDVzbmFLOUk4U0tKK0Nx?=
 =?utf-8?B?bE82bUkrczBWWW4wS1lDRmw3YVdBQUs3TEQrYVg4N1FHQzA2bjl4UW5NOG0r?=
 =?utf-8?B?K1ZRdFRWVXNJd2pnNXlZS3BacnQrVXhWOWFHQU9LaEZZVlVkdWpwcHBnOW1w?=
 =?utf-8?B?TlIxU1FYME90blJmL2FXWGt4NTZqMUUvVERSbkp1VCtuR0MycUF0YzN2TkJR?=
 =?utf-8?B?NlFCbFU0RG91RUNWbmgwWTFwWjNFUWRycXhwRzJJQ0pjSEVJb2k5RFBrRTY1?=
 =?utf-8?B?OVhVNlVmVVF2TmtXSGlJam5tVXQwcWhXMmpZY044TjRIZWU4cjhkc2plSEwz?=
 =?utf-8?Q?/pLfkZzWBV0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUIreWpaYzd6NFZtZUtVdTRaTlRWTWZYL0RQWUdNRXlIZDNhcGVLbjFJdkZm?=
 =?utf-8?B?MHl3SUUzNUFtb0NFMmJsaXMrVVVOUldTVjV0dEZLdkVyd01aNjVoWUw0QjJo?=
 =?utf-8?B?SDVCMjl4Rit4eFhvd2ViM3hKY3JBYXdOOUxpbDV3b3ltYzl6VnN5MGZwV2I2?=
 =?utf-8?B?RGF0MnhuYURwUXoxQ1prWWczbzlOOVNKbHpZZVJEbWxHdUlHQXVacXJmUzdW?=
 =?utf-8?B?RmxlY3l3eHROOTFWVGNBYmptc2lTOVFUVnJucEtKeGVXVUNyT3UwcTBHemN2?=
 =?utf-8?B?SWNHMUMzRjBvUGtjeEZldUNaN050MnRYWE8xeHBmTG4yVmQxaCs3dXNjZlpP?=
 =?utf-8?B?WGg5WHc4TnpobUZadWRNZGcxWHYyT2k4Y01RZlNodU4zVngxSFI2SnBHOVkw?=
 =?utf-8?B?d1Z2OC94MGZIOEVmdFpLcEV3QmlNTXVWQWV2Q3B4SDNlKzFxLzlicEUxUWQw?=
 =?utf-8?B?Z2xzZGQyQ1pzTUExRDJBU0dKalU0cUdDRTA2cUZmMnRPclZLRXNzMURBYUJO?=
 =?utf-8?B?dVMrcXQ5SkpPaU04ZWZRTmlnN04yZDdrdzlxU3V4MWVXZFpqekJ6Vi9BS0tW?=
 =?utf-8?B?YW90ZkFOd2JnbmQ5UGtOOWlnUk90dFdVZTVzNVIzNVh3SnpLeDk2NERvYndh?=
 =?utf-8?B?OG91S0V1KzlDSnhPd2tLc09LbllhakQySlluVzRiV0haQzlmWUJ0UjBNWWVR?=
 =?utf-8?B?NFVMSnRpUkNEd0Y2MzNYa3pWb2V0RlBtaXViRDVReFpKWmRwcVI2cSs3OVJO?=
 =?utf-8?B?dWhhMmFwRGp1Z2R0S1h4S3RxaEtnRUZ4NzBxZEl5a0RNVFhXUnQrQ2lsQWNh?=
 =?utf-8?B?RStkb0hiNkpIUVhVb1ErVFJyVTJwNGx1WDdoNm1MWVlHTUQvL2pKLzgrUHY1?=
 =?utf-8?B?RmJZU1oyT0dDK244d0Vaa2Q4ajhIa2JqRkxHMnNOSXk4YUJUd2c4VFBiRXhm?=
 =?utf-8?B?K2s3cDI2amM4OEhHd2k3MFRkdzFSNUVxNG5ZcDJGckRjYWdFN2JtZHhlSnJU?=
 =?utf-8?B?VjI1WGlWMEpTdDUyV0w2a3E5MWRiSjZkNE16dWE1L0p6b0tDS0taZ1lpZWZV?=
 =?utf-8?B?Y2tITFZlek8va1NHUDJvcVNOQ3ZpQ3YrMEVqV2pETTh5cU1KQ2tjQVBBcllk?=
 =?utf-8?B?ZzlZczZab2FCZ3lwQUphdEtVOTI0U0o5aW1UeEpUS2s2Si94N0JSYXRUVWRl?=
 =?utf-8?B?S3Rxb1FoUEZQdFhYYTBQZmlxOExDSENHdXV4aGhWdFQvaGVkNWJTa0J5UFFq?=
 =?utf-8?B?UEs0VlVVbG5pbFdVamRoWXNYclJHTnduU29FRS95Uno1dW13a3hzVlJyOTdT?=
 =?utf-8?B?Q1FDRnc5K1JvSHRCRkd6YW5UTU9lUVNrc0d4ZVhEMFI5RzBZZHFmZnpTOEkv?=
 =?utf-8?B?alhYaVdOZTBEK0JYUTNySG5VTDJxRGdpOEtyekg5YWFvVjBOaHh6UStTUHhp?=
 =?utf-8?B?aVptVWtobjcvdEczcjRkVTlOakhqOGpBMHRYYWVBZ0gxRm8zenl1SXVja3dI?=
 =?utf-8?B?K3B6WjQ5cEhJVkJxNXZ1ZnhVS1RQcVpoRmlTNjR4RjY0NFZrMFdnbHFxUmo2?=
 =?utf-8?B?eStYT2ZleThoWmVpWndHM0xOR25TSE9tZlBrT2NpYnRMTGk4UC9ZUG5pcStk?=
 =?utf-8?B?UkVucStWUHdzK0pOUkhTeUZsaGlhV3JTK0pUMm5VVVo3VnlxbWRLZnVLQjFG?=
 =?utf-8?B?RklzMnI3c1BydzZidDdnMFFCcHp1WEgvSVFLdDk4SE5la0FpK3dtWHVVb2VW?=
 =?utf-8?B?RDQzRHl0S24wV25lL3FHTm1sZjMyM25DajJTL3Q5QUQ5cVI5TFB3VC9MT3Ns?=
 =?utf-8?B?TXhieUQyUmk1aVJ3TWx0MHEyc3lqdkRjV3hRdVg0Q0xpdE5pclpFYVcvRlBq?=
 =?utf-8?B?cklWZnJ5SGZ5Rk5Ba0ZRM1E4RUpEVlVhamxUN3JZZ2hyUVgvOERlQ3JwdXJm?=
 =?utf-8?B?STlhb1Z1L0h5T3N3ck4zWUdxbXh4cHd1bXhCeWdIejBxSkdtRS9FOFVRZUV6?=
 =?utf-8?B?STBLUWhja3F1eWxEME1rNTBJWnpVQUdFWmJ6WDhpRmZQMXpoVEVGUnlFQUFx?=
 =?utf-8?B?QTBBMSs0OFR2bG5mZm9CZ3htdDhUNlZzRzMrNkZySlJwY0pOTTRpcGRyMEp5?=
 =?utf-8?B?TUxiQ3Bzcm1XZ1hoV0kreGNMVjFIUW5TdjFhNmxVTWx0MXdaejY2TSsyTDRV?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a2165c1-16d2-4c3e-dbec-08ddce88f227
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 10:16:13.6000 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0wSdbUCy05VevKkcN9eYJbEwkDCOSJvbjoMJASt4y8gx42GDhHkeyxUrPs9G+ig+A8dHwOWsinPC4W7X65JWTiOeJb8JiQ9i4i9F3b/bld8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6828
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

Krzysztof Karas (2):
  drm/i915/selftests: Do not overwrite error code after
    intel_context_migrate_clear() call
  drm/i915/selftests: Do not leak vm_area_struct on early return

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 70 +++++++++----------
 1 file changed, 32 insertions(+), 38 deletions(-)

-- 
2.43.0


-- 
Best Regards,
Krzysztof
