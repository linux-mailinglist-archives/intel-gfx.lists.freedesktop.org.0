Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C502EB4A1E7
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 08:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F55710E61E;
	Tue,  9 Sep 2025 06:17:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H4m1kM90";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1855D10E61E
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 06:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757398627; x=1788934627;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iFF27ph8u5Etd8coREM4o+sg1R7cLovXo6wt+bh2D2U=;
 b=H4m1kM908eeYyqBv5SsmzrDZds0Dd7OwX5JaknRTvWHR6sr2RYQED8EJ
 Xxuc0Z2xfZquYcE7tUFIdgFD+WMpfLaRCZ6ii/NFfWFAXbzpc1tRk7i/Y
 67LUVu+OFohXuuy8/p9jaqIQqM8yADmG5yAlyLLJOE3EY/cHugKhdbS78
 xkwwBcBIBlf4I3qm+Aw2T98EMQl0Zp6FDoJy+gJ90NIda6UH8yyaxAHTw
 YIPrMTDC++jDdzV65xsewedzp8UFA/3fI1jiDJMZTcNVfPVYNF4nrBOMV
 NAF4bk/S3ZR89eiTHU8WlzV4MlEn6pXI2QUhE4wUEQpBxK2nIwoLHRyGR Q==;
X-CSE-ConnectionGUID: XWWSelZTRcyBa4w8c5l1gw==
X-CSE-MsgGUID: 2X+0rJOtSGuYSee5Fn6pqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="59818086"
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="59818086"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 23:17:07 -0700
X-CSE-ConnectionGUID: B0nt/ve4Qw+ftYFRBFtWgw==
X-CSE-MsgGUID: Pvc0SHUKTeOjhoAeg0TZJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="172872696"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 23:17:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 23:17:05 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 23:17:05 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.57)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 23:17:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TYoFgKurGS0OpcQPXNQBebUi89WIx323Tnqx+PhWAfFoRA/K9D7T8LYDAOwSJKlfE1659tCMyLaEWXwwm3wOqAauhOJhboc3fRGyUhQN4RFKlQQyeDn4S7qSLF6MSi/6ryEKwKmITilKHTbFNXQ6erJ6iiBslWcbfAqNVsTxaqQ5DMpsrOmaVKFHYW/6mmjjuxitTkcCu9MSS9oLMbb8VcbVkAHv/XYQFb+VA/YNQkAPcp3LHYAmC0E6nU18de29QDf6NCj8uvAjR/V1ha/HFkVpAka92p4oFR8sYUCPToqd0LaGz24q3VbswVqYaI/ssnJINlScliW1LPNZmMYnxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DhQDDlCYwEgottPFOKdu12YJ8dTT0wk0g9pUWZbKyIo=;
 b=jCfU0ZKu2IEd0qRYNF8JwmeMm0bPm+tKDnt2jN+OrHvLaICLi9/ok5AOfGpc6HK7rU7Z2SJVNdh1dfw+8FCwykPCEavfHM5vjVu1Ln20cQr/bQsZj53IKEJSKD+To7fz9QWFrzTLeU7BOXxpK/0j6ZEcYBFuLo5hP36X9LmSt/Skp5Yvv/IhL0pKW7GaJzYb4RwgNsdTC4Gl/40Th8jDmcZQZZcFEypS5te1et9g6fp52QRXxPOsOcLz9kqAUQ/OcI3s2AdGJxTA1tn7tpTjQOzpI0LRb7+FJr3jKmCcRfKr1ZX+g/gkX0ioI0APawZbpv1BM5lzs3MlSegrf+womA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA4PR11MB8916.namprd11.prod.outlook.com (2603:10b6:208:55e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 06:17:02 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 06:16:55 +0000
Date: Tue, 9 Sep 2025 06:16:48 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Chris Wilson
 <chris@chris-wilson.co.uk>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 2/6] drm/i915: Add default case for the switch in
 igt_smoke_tiling()
Message-ID: <4isn6ns72qgxaxbxlukll62bbmgenzrb7keprictjcnqkv4cvv@cyium25otkji>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1756995162.git.krzysztof.karas@intel.com>
 <71110554b2303dc911a411df8a75801c073964a6.1756995162.git.krzysztof.karas@intel.com>
 <aL64GakuuVzJh3is@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <aL64GakuuVzJh3is@ashyti-mobl2.lan>
X-ClientProxiedBy: TL2P290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::18) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA4PR11MB8916:EE_
X-MS-Office365-Filtering-Correlation-Id: 592443d3-c195-47ff-fd04-08ddef6879ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z1czYnNyWDU5YmtMU0g0TEdNU1RNZ1R3VVhrZnAzYlhORTJrUEFGR0pnYjVu?=
 =?utf-8?B?a0kwakFJdHF1L3RNUWsvclo1Sjlxa3lKbmUvUm5TWk5oUTRXUk1pWExneDJI?=
 =?utf-8?B?MHo1VEJwNVdwWWJiM3dPV0QrazFmTG5CbDdHeGJNck53TVYzQVBhZFl6aFp5?=
 =?utf-8?B?VFRESzhabUI5aVk0bnhiN2l1eE9NZkJxaUo5cWg4MEx3RGpremZKZmFoVnhk?=
 =?utf-8?B?NTZuYVpKWisyKzkzanM3SkRiREl3d0hXY3I5YUt3bUZLRDJZVmgwaUdNbkpT?=
 =?utf-8?B?Und6aFRxa3hKRTlHWmdwMHJmbWl5TGVSOXVzZjZ6Z1Z2c05MS0RUYXhmRFBF?=
 =?utf-8?B?dG5vSUo0UGswWWZxWTQ0bS81NVVyTGhRZ3BIaG84R2lDOTU1ZVAySFpvOE1H?=
 =?utf-8?B?MFl2RVZkR2Q4Mk9FMjBic1E5Wm9jT1JmWmlBSDg4djk3NWpwaHlZNEMvbHp0?=
 =?utf-8?B?ajRsNzVZV2Vrb3dNcUxBbGhCTVREMlFTYjQ3dlZIU3dOUVRsblhTcGJnaWMv?=
 =?utf-8?B?L2dOT0tsVFJmOVBSeFp2c1pINDJCeCtZM2RRd29sV1F5STdWUmU2K1RlZVhn?=
 =?utf-8?B?OHpJQXNWeXNGcW9oOUNwcitra1NIdEhOVnVGN3ZxN1ozaHFZaUNnTUNnRHRp?=
 =?utf-8?B?cGVxZVBreUE2emQ2NkV2cnFIRE0zVUszQnhLRmNTQWtFbklTRlptUW52cW5l?=
 =?utf-8?B?L3NjUDNZMW5ONE8wNFZkWk1KejhoZTdQcTVCdGpwSnFzRm1ZMUNnQitoNHIw?=
 =?utf-8?B?V01pdWxud0V1VmFjdGx5aGxkYmZ5ZVBwVStuRzFDUVA3UURnVzhXOEhpYVQr?=
 =?utf-8?B?Mk1lWTY0QjRtVVE0cHdnNTI1Y01wUHhCQk9IVXM4V0p1WjNNSVJRb2tqY0dX?=
 =?utf-8?B?K3poMjN6LzN5L2p3QlB3eDlVN2pqUHBRUUk0ODlSNFJ3M0ZKQlM1a0lkVW9j?=
 =?utf-8?B?Q3hKUXoreHYrVkd0ZGdqWDFDNElrSUh3Y1N4R3JDbzdhcGErcGozZ0JiWDI3?=
 =?utf-8?B?R1kzZG1QNW9GQWRMVzVXUVdJcjZvNUJCZVArUENCMW1Ya3QxQzNVeXJpRndW?=
 =?utf-8?B?T1NpMFRSb2FRYWxaVWE1QkpDcXVRTkRrNHl4ejJPTVZ0UnZ5UEZLUzBwKzV5?=
 =?utf-8?B?bmNzTU9zOU4wOHM0d3djb0piTW1CbVYvSk9paDVGbC8zbVFvaEVmVm5KQVlG?=
 =?utf-8?B?cjlxVWFCRG9TTXRnNmgyTk9YSnk1bzJOalpaaTEzcHVwaVMwNVdBTnNvNjQz?=
 =?utf-8?B?czRYZXpxWHVla0RyOENwRk5CUUxHalJGN1ZZQTRFTDU3dGFtL0FGY1lvT0xT?=
 =?utf-8?B?Zzl6WU1oVkhIMUhGYXFjRDhRMVB2MEJlYXRPZE05YVpxV2FrRGZ1R1FXZTM1?=
 =?utf-8?B?Mi85QXFmc0FiRU9TYS85dkxSc0lPWjQ1M1pRQmtGc3A3SXQ1ZjNIeEV4cHJt?=
 =?utf-8?B?Q2NsUWlXOTBncDdSUjlFN1ZZZjkyYlFublRkUlNVVEgwMWdvUDFxRzhSd1R3?=
 =?utf-8?B?c0drR3B5ZndJMGlFa1pWMjM3KzN5TVlucjdQREIyMnBFclNLSUcza2RWSmE3?=
 =?utf-8?B?TjhkZ3BEMmd6RU10V3Qya1JhZXIvb25lOTBFbnhCUmZVblI1T2grVVZiZWxF?=
 =?utf-8?B?T2VVNTVJTVViN1E3R0Z2cUYrSEJoR0NCK1VLY2JMS25mMXVJeW5oSEg4b1Yw?=
 =?utf-8?B?MnE3N3VCenJPODNTRUxJU0xaZFRFUkc1dzNEQWFBblFHeHRybHIvVmVGanh4?=
 =?utf-8?B?dGNrRUcvNFFsM3IxR29oOGt5Y1RvUXI0UnJTNTNiMjBzOStieHZZRCtSRFZO?=
 =?utf-8?B?WjNJclZrK0owcGFjMVlBdmNZc2IwdVVsODBHaDNnSWMvSkJkTDhpcDFWczRw?=
 =?utf-8?B?QlhqRllkeDVxNllXM2g4eXdROHFzMFI3TXVOOTRBazFVZUZzSUFoZU51bTFj?=
 =?utf-8?Q?JSdjz/n9EVc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WExyc3BQN3ZobnNEdlFNRjdTRmlZTnNCeWVRelNSWk5waTJhK1d5SDVSOW1D?=
 =?utf-8?B?RnFKeEIyNWUvbGlHWklTbnZyeTlPclpySVdRbHkzeXJtMklnTndUNnluQ3cx?=
 =?utf-8?B?Z09TZmpObjVkVFJ4U0w3cm1RM1laSU51Z2RKWUpxQlZEZXJ6RTJWRlVRbHhH?=
 =?utf-8?B?TDVGVU9LRHBIVlpXRzA2LzRQOUdwUVc5V0ZmYVVCY2ZUdXBPVUJxMEw5OTJC?=
 =?utf-8?B?eWlHVFhIM3ArK3BJVlhTMEpQdWRIYzVSZDU3OXJQcDA3ZU50RUgxTW8rcUJu?=
 =?utf-8?B?VmFtTzRCMFNoWjFrWmlXQzd6UG9DYU5lcFVjSVd5WWUxdXIzU0pzVnp2NmxL?=
 =?utf-8?B?Z05DWitxRC95WmdxbDZtOVVjVGQxMGJtOS9wbUp6OWhwMUgwOHNQNnVuQ3c3?=
 =?utf-8?B?c2U3Z05ZWEpqV01ub3FYRnAvK2EzaytNMlNzOTc2cXlzUno1dVRDWXZ3Mi94?=
 =?utf-8?B?SVk3SGdvcmRENkFEV0dyU1IxMnc2S1EyMyt4TGs2YWtMN2wycVRKZlN0T3VU?=
 =?utf-8?B?WURtOWdyallramVSc0puazZ0a3dDMnRaMnFBQWNyWm9yUVdZTWNlOXJpeXNp?=
 =?utf-8?B?enRBWTNyOFk2aTFQNDYyOUR5NDhpd3RsYWFmUmVKT2NsVnlYblBZZzZTbjdj?=
 =?utf-8?B?NzRvMmZtejB4VVpaZE5nTkNucUxjN1ZlUEhuRHpvS1Iwd0hGVHZHNGJjOWRy?=
 =?utf-8?B?OUQ4STZaWnplSHBDanhoeGFFZXEzQVYydDJlaTk1aEhubEcvaHVXMC9KQjdN?=
 =?utf-8?B?djQwVkxLaWJac2ZSUDMzTXRrczE2TWp4STFtRnVvdFJITEpHTWVHZ1VQZm0r?=
 =?utf-8?B?dDBKelZjN0N6elV4ZEhWWkp1YS9POUR1V2RrbnFpN05ybzVlWkFSWVVtL2pi?=
 =?utf-8?B?NWt5Yjd6SjIzejBNZWJxek1LSG40end1RVZRUlp0WExXamVuZXBGYWk5Y0ky?=
 =?utf-8?B?QXYzYnFUMnVreXpLZEF3bXU0Rm82TWFZenUvVnErc2lYd251d3NPaERUMko4?=
 =?utf-8?B?b0FFNy9wTVVvNEZaa21uYTBUeHZ3R0loVGhNUjJiUXl4UkUzSDA4emZHbmYy?=
 =?utf-8?B?eUlKaG5qdHp5M2FhL3lGU3Q1UDhpamlRNXFLUjdnRkMvdEVKMkhvejlRVlJ1?=
 =?utf-8?B?MjIzSWVRSHJmQlZRNlk5ZitnVkVSdlRJbVV3d3NrQUlIY0hzN2lPdVFNSHd1?=
 =?utf-8?B?VVdhZEREYWpNWENDQlpHeDludGdTek9hK3hIR1FSemd1cHlzbHRZc1BLNmNB?=
 =?utf-8?B?S0JNMTY2OGk0M0NjSzNFVnppU2dBQmJXdExnNW81alg1L1JER3pNTFVURUlK?=
 =?utf-8?B?K0ZGL1UxSW1pdjBIenNRZ1ZONU1ZUGVIdnhlT09STEptVUtQMGNCZXFhbVg3?=
 =?utf-8?B?L3djMmw3a0NXT2QzSlIwVW8wMjVMMmdIaU9ySG10bGdMUFEyYlNmVGgzUTZi?=
 =?utf-8?B?TTI4WXh2REpza2JTVXc2dU5WQXRBbUVjeDYrT1NaWWNyS3N2THJNczFTdDJI?=
 =?utf-8?B?ZVBnd2Z0alhROFJQSE1mTnRKMmRVTVMwYkFrYjdxazVnZTJrUTI4OGRIUHpw?=
 =?utf-8?B?OXpZTTRHVlp3MXNUdVBLeGtZaGcyczZISXNIU1ZLbE8vQVZsZFUreElOTUh6?=
 =?utf-8?B?ZXNQR3ZRaFBROS91VlNDSlFOS2ZuQnM0b21WUURtQkZKR3lPNHdlWmNjWmo1?=
 =?utf-8?B?VnRhdlYxRkM5NU5qVmFiQVhEd29ha2dULytKVjcwVlBBb2Y2bnpFMzlZWmw4?=
 =?utf-8?B?WjJVYUNuYVk4dk9tMmhlMFJNUm9lc0M2Um1EUHVmUnhTN3BiWmpJcGpPVUVi?=
 =?utf-8?B?T3JBa1ErWkNHN1pFUmVncVp0R2FydHRVZVNWT3RreUFrQy9EWGRrS3JSMnR3?=
 =?utf-8?B?RW1RV3RaaEwyWnp0ZGxDM0FHZUJHNi9yY0hzNDVVWXY2dlJXbFp0NndQN0J0?=
 =?utf-8?B?amM3eG9RUjBkYkdtL2QvY04zWnBzT3p6MFZuM2kyVVZobDh3YytUNEtpMVEz?=
 =?utf-8?B?aHl4V0F1L2dYNW1ORjJKSXZhVzhPQ3g1TFFDOFBnbTJhalh3eVVzK0ErbEh5?=
 =?utf-8?B?czZJUXlZNWt4TlFBbzhJOGZhUmt4ZmJDQmF3L0wvRERFNHgzODFBUm1iblE5?=
 =?utf-8?B?TXY4UmNidkUvZ0wzWUlZclNlQlh5YkJnRnJHck5JYmZqNGsvb0JNYmt6Mmgy?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 592443d3-c195-47ff-fd04-08ddef6879ab
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 06:16:55.5364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CJ7Sug6RYYNFexxYDgaADv4jZVw8REuIuBzhzltCgaCSW0WqRZdtXibnvrVDX1+sno7qai4URdzy/BXNhYD4ReJ0qsHuDcneFDB7T+CAlUk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8916
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

Hi Andi,

[...]
> > diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> > index 78734c404a6d..6d87356e928b 100644
> > --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> > +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> > @@ -498,13 +498,15 @@ static int igt_smoke_tiling(void *arg)
> >  			tile.stride = 0;
> >  			tile.swizzle = I915_BIT_6_SWIZZLE_NONE;
> >  			break;
> > -
> >  		case I915_TILING_X:
> >  			tile.swizzle = to_gt(i915)->ggtt->bit_6_swizzle_x;
> >  			break;
> >  		case I915_TILING_Y:
> >  			tile.swizzle = to_gt(i915)->ggtt->bit_6_swizzle_y;
> >  			break;
> > +		default:
> > +			err = -EINVAL;
> > +			break;
> 
> You are breaking from the switch/case and ending up where? Should
> this be continue?
> 
> If you really want to make static analysers happy (which we don't
> care much) you could do something like:
> 
> 		case I915_TILING_NONE:
> 		default:
> 
> But the C specification is not obliging anyone to use the default
> case, so that we can happily ignore the static analyser issue if
> there is no need for a default.
Hmm, if we indeed do not care about static analyzers, then I
agree that this is pushing it a bit. I may skip this patch in
the next iteration of this series then.

In any case thanks for review!

-- 
Best Regards,
Krzysztof
