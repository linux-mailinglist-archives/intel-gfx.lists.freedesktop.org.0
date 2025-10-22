Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD147BFBCA9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 14:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC4110E766;
	Wed, 22 Oct 2025 12:12:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZwRddzCK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E528110E008;
 Wed, 22 Oct 2025 12:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761135132; x=1792671132;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7gtv5ZHsaR+WzWO9yLWcAmg6M6U5Gb46s5Wz4vmWWXk=;
 b=ZwRddzCKW+nFvKB1I/P4thV1jygYp580LZSOr+ksuGx/pXXg8uOs126p
 WBSBELldxFtWzId7/9Zq9kRANjRpacZbiWAbTl7hxaag9401dxIOkuxsx
 WiDSEEKAragQ3MsTarbIdMQGVEy/XTQw1jkI4HYeXe6sMRS/sJQt6gLyC
 NoY8iLIIEzHNEyzFxXGDetE8Egf+ROKIg3XyWo7kjjs3Fq8NK8DbhRk0Q
 bNvexbJQpZOTTGZ6RQB++GI3JTBdBWPYqnDu+0mAOdiHp21xJpb5UPOI5
 7PfhE5lzizIjzVqU20pmRBstTwe5d+lvZZVeHbIC67NYiRONbR6SOA7DU Q==;
X-CSE-ConnectionGUID: vvYNx9lxS+mpf3pRI85toQ==
X-CSE-MsgGUID: dqIH/MkXS7SFGXwkSnMWKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80717448"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="80717448"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:12:11 -0700
X-CSE-ConnectionGUID: ZclICfaYQ3mXJbmvv+4XRg==
X-CSE-MsgGUID: ZfY9+I3rSti8MNHmOULPAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183069538"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:12:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 05:12:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 05:12:11 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 05:12:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YxiiX4Pb8EfD4BW7S8f3WIRybsLusm01rdEmXW24hX/92bjBR83t4QN5/HKPfSL77jvyzyKm0NUFCzGq1Id2uF43E2XPeY4uknU93rbxI50b5vRA62GA2hC6YYW2vm6WpGKbkJLCrvg3yaFgvAVlWd4TGN5JPe88cZYSZM68pKBW1BW1iE6Agk0UGAklX+e+lqvIufTbvtG65M4vIFH7kZFJ+7FHkzHP1v3joSsVL+AcLZSdVDgxGxiYrRlHJVDXtdxLG3Mi+lKA2aVInWQZ1dAmw/0KK5+F55lBA85DsO6IwhfhcDQJNYInkXsE8VM0pjfcqtEW6WldoDv2fz5vCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V60I1y3wzb+3TWevBUUiaYl1eYHDQsl/tedtoPiiJZU=;
 b=Zb42ry0TW4dSTzG3Q9NRURJOT8otLLRBHp26S1iCAwOzZ82ChA4GoCKIMSgyEYS0gdahMD9xhKxZuP+fykTKNWSBRhEhnzWEGF41BvgLtZcKmsijdzdROkecjfz4Q3AYR7xFTlJcnnAG7xYDNjODfXvIhPNpRsH87se1r+QJinBL+CJ/CDGMcWX4J/hdsOF/gZOo5P89NGWKK27G9GZJtoB5vYrDvnTz2SCMCTsEQ/NhdA5kkr/g/XrPT2KaNp+w9RkETjD3tKjInrhMj+FZERTB3QJTCxbgcc6dUVN951xnS71xGshe16QvlThzphsRFSMqcXxYIkxtHe9wte/ssw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN6PR11MB8172.namprd11.prod.outlook.com (2603:10b6:208:478::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 12:12:08 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 12:12:08 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2ada943edd5477b674419fb4fe8b2fe5d15ec32a@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-4-10eae6d655b8@intel.com>
 <176113305088.3231.10655916383519142084@intel.com>
 <2ada943edd5477b674419fb4fe8b2fe5d15ec32a@intel.com>
Subject: Re: [PATCH v2 04/32] drm/i915/dram: Add field ecc_impacting_de_bw
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 22 Oct 2025 09:12:03 -0300
Message-ID: <176113512332.3231.16928159040106432622@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0046.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN6PR11MB8172:EE_
X-MS-Office365-Filtering-Correlation-Id: af95db73-c647-46c2-4ef3-08de116438c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmNmemJnWDZMR2RRRW16S05pTzg4WWRzM2tDbGhCN3pLN25KYzY5Y0dtRnA0?=
 =?utf-8?B?ajN4NG5abWdHdGVxY3JUKzgwRUkvQ3dMZ3F2YmZwc3ZvSDFmdUxJYWhpbmZ4?=
 =?utf-8?B?TzlBSTE1SUJ5VDRjejA1OTZ6bFBLVHpmWXhadDVycjZxampNUVd5WHFhckR5?=
 =?utf-8?B?dVU2QVgybjRTM1R6TjBkSlVMUUtiMDF0TzVsVkpuYTdoT1RsOUhCckRSZXpP?=
 =?utf-8?B?MjVjdlZPUHpjRjJqSkpDcXlBV2tEOGN1M3g3WENFZEpFVWQ2VDQvV1Y0L0Fi?=
 =?utf-8?B?aVN5UTRRWkErUUFlWWFDZnNNNnNwVUk2ZHFpUnJqWXBvT2I2SkVUT3Fyd1Jt?=
 =?utf-8?B?MUJRazRTS3ZPRVpPbTNsUDJQeHM1a3NlQnB2NExSZ0hRclVvd3BRN2tKSWRT?=
 =?utf-8?B?UWd5K1FIZnR0M1d4UThacXUwT1BNREkxaXAzeTNZb1U4ZFVwQmN1TnVzRENu?=
 =?utf-8?B?VUhUVXZBTEpFRzUxZGJndVoxSlNQSU9PTVhWWG1EM1Q3b0NITnl3MjllS2oy?=
 =?utf-8?B?a2Nzb1JDMU9SSU43aS9Dc2xoVFNNdlFEM3dQVWRYY1pLVmdmUHNiTFVncFhV?=
 =?utf-8?B?UGw2RWFKZTNmQm4xMkhaOE92Tks5bVBiQ3hWeklHdmFQQzV0OUp4ZUF5aVky?=
 =?utf-8?B?M3lBMHdYa1BYejlueDk4bVVJek5DaUxWNUJFK0xOK05VWk9DSkNFMEpHQm9x?=
 =?utf-8?B?dmFaZ1VCNjUrOEt0ZnFFKzYzdTF0bXNlaU42OTR1UzVZKzdTTHJjSlJ0YTlS?=
 =?utf-8?B?b3Rpd0ZHL2diNW52czN0eUpRL3VvRjhjd0oweWhybDhXc0F6Y0lwUEtQNWhq?=
 =?utf-8?B?eVZidk9lOVkxbWE4WU5jb3luR05Zd1o1d0JZZWNRYjZyNDlYR3R1b1J0bzZB?=
 =?utf-8?B?SWcvUXBQZmR4U3JuY1QrdTQzZDB2RGt5UmFSUk1qVEVoKyt4QzVyV1Q2Q1Ra?=
 =?utf-8?B?cjJ2RjA4b1YwWkp0QnZrR3F4NkhpSXNXQ2wrUEtMUVNWUlBzUVFtRGZGZEdt?=
 =?utf-8?B?Vk8xTG9KdmNVM0F1RnhvbzB4SEpRODdWKy9LZ3Q1VzYvRUZ6STgrLzJWWVp1?=
 =?utf-8?B?MVc3WXN1bGxaOXR4aTNnNjcwTFJzYUZXN1hYWkRuK2VBaGY1WEI1WHB6Q0Nv?=
 =?utf-8?B?QmJmS2pkbU43bEZDbUdLdlNDaGNNOE5yeDlWWElTeHJFT3F2UXJvOEhoVW9Q?=
 =?utf-8?B?NmZLNGdRWlFVbEp4MWZkMzh5ODBVYkwyNWVtS241b2ZiSFlnV3F5eFFQUlAr?=
 =?utf-8?B?bi9HWEhFSzgrYkVSN28zNURnblJ5MjRYbmU0am1nbkJYUkQvNjRXaUxDM1VG?=
 =?utf-8?B?RlZZWCsydk95dGZOOHJieTBicXZrMzU4dis1SmJnRzhNTDRXelhRN1E3M1Nx?=
 =?utf-8?B?Y2ErZGlLQU9sQlEwNFpHNUNQUjdHWklyM290UTdqWlhTNWJqQ05wcG1HcUZJ?=
 =?utf-8?B?TndHMlVtaUszWlNaZ0EvQWJ0NGp6dGF3NUFsSkZPUzY4V3doc0pqRXJyeUdV?=
 =?utf-8?B?Uy9RUWx6RjY5bUJZU1hJYzRXanl0b0FhZGkxMXY5SzMzZXNKR2xNYjViVVpX?=
 =?utf-8?B?N2o0K1ZOc3htSUg1T3dtdHZrMVJvREl1NE1sK3Zma3FEUE1xMHpKZkJRbWJD?=
 =?utf-8?B?RXRQWkdjb1ZlNUZmTFlPU0ZtUnhjSFY3L2lMWlVaZEYzL3RnNjFtemhINHBa?=
 =?utf-8?B?MjdIT1BqSzdDdDlsWjgyYW5WeFFzZDFsQmIvdjJkdXBzNS9YSkpzWGxYcUZC?=
 =?utf-8?B?dkxkakFIOFlsNjFTbDhZWk5WQVJVcElIZlh6czlWRzh2RDJVYmZsS21jMnpa?=
 =?utf-8?B?VUh4clIvSllsZXBTT1cyQVB1bzZJQmJ0M0pTcTdZWXBpbHBONjlGVVFpZ3lU?=
 =?utf-8?B?aWtibzRZSGk0dmx4dHMwMTRWWGhrZU1weTlOVnRrcVpWWjJGY1hGOS93T2o5?=
 =?utf-8?Q?8cv5qnLFTcu5r9v3miw5tKALjzSkfj7E?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmczRkI5OEc3MmlNTlpsYy9SZWlOdUVtM1VUbEo1SktlODlJQmhjYXExTXdP?=
 =?utf-8?B?bVVrTVFxU214MTM2NGtuMDYrNmd1eDhVc3NyaGMyUXBIT3hlNWp6Rk1ybnpo?=
 =?utf-8?B?ckVSYXZGYkY2TGtpVmlmc2U5UFBLNFNhaWNrUzhsV2RCdktqZ3E3SXRLZ0tM?=
 =?utf-8?B?Q2NucmtuSlU5eThOQkV6NHJSSmE5eE9vVnlRVXVpK3pzTER4Vm5HSGJyaG5U?=
 =?utf-8?B?b0wwdFhFbVJWVWNnN1JJdDh6dHJNbXVmMkR5THZOU1dOaGhXd0pMMG5ZdGgy?=
 =?utf-8?B?cW9rc3NtTHZLUVp3WnVKdVQ1NHhhNDVuU1QwQXV5VEtLUlZQUWxGVHl5Tmxq?=
 =?utf-8?B?YUFnWnVQQjY1T0F4QnJGRE53b1Y1Wm5OSmI1QkJnMzJQNmVSMSsrVS9XQzE3?=
 =?utf-8?B?bW5UcjJtY0R4U25JWEQzUjRTVWY2UHE3S1NBNXBVbUFBYnludHl4ajltVnRX?=
 =?utf-8?B?VXNaNjU0T0FVTWwrZENYL0hPNlhBQWxJcmkrd0ptMEEwY2t3VFovZTZnZHQ4?=
 =?utf-8?B?V1BBQXFTQ0ExV0VKR1liOXN0TjRZMTRxTGpjSVg3ZHRObmgzWGl6dGh3UWFN?=
 =?utf-8?B?NEpCVUNFWlVGY3JxZkxQaHpYYXFyWWQ1VWJyaFZvTko5c01vajZZRzJOd3gr?=
 =?utf-8?B?bVhPa2FOUUhkTXFWQWVMeHRDUEVWQzZCYUJjazdVVTZYbW1ha1lVcWw5cTBt?=
 =?utf-8?B?L0d1K2xML2xzYklhb0FTLzhSdTIvMWhKaU81Ymc1Rnk4bURGN1I5TEFNYUV2?=
 =?utf-8?B?LzFiWHVrY1ZadGFwSXFGUVF2NWpTZ082aFRnbTh2Q2t3T25LZ1pENlh3SEhs?=
 =?utf-8?B?Tkt6cndFUkVNbEFRTmtZSWMxa1FsZEd2L1NGTXhpVkU5QzQ4aXhESnBXWXk3?=
 =?utf-8?B?RDlNaVkrbGlENHZseTcvRkh3S1lwaEhQSnBMdlRiQlNnUlZVa09od3gzRmI2?=
 =?utf-8?B?TlZUTEhiOTFzWktCMWR3OVdmTzdRUTJlN0UxcnBFdHZvcDQyY1dkRGtUNTV2?=
 =?utf-8?B?eDNMR2dwN3A4dDBsNkxIV20wc0s0ajg3QzJtUEZPNmFsbUtKUmR3NWttUU9p?=
 =?utf-8?B?NWJXNTJtL2UrN1ZwUlJxQXlsUDRFSzU2akFiZzRXdEFxNCticVlMVEZqQ2lH?=
 =?utf-8?B?d0F5aytwNHgzN1JWSHZKWGZTQ05ERlQxTkRGS1I1TWNaRmo4ejA5UGt6SlY4?=
 =?utf-8?B?UnJNVUs0T2ZqcEtya3BUdVJJb3Q0a0ExbEIyTFg1aHYyV1hsVXA3VlIwMWk0?=
 =?utf-8?B?dk96NVRLSEtZTHU0a1VRN0F6ZmRzRzN1TXhxVG9VODBEeXhhcHhaVnNNUWNO?=
 =?utf-8?B?UnIwVUFMejZNM3lBQk9QYzQyRE0vSFJoRDFiRnVXTVlTTjNDYTA3eU80VC8w?=
 =?utf-8?B?cWovVTJGV003RXMrUEs3YmUzVllpdnJ1TDZKTk04YWZKZHJuMGxOQWhYbnE0?=
 =?utf-8?B?WTJsa3hIUkhrdDZqMm5iSUVkdmZPWHFnZ2JqYUV0dXhTb1pCMGx0dnhaYStz?=
 =?utf-8?B?d3JUMFhiREc3K3Z4QUlqSjJuRi9uaTRyaEJIT2l0c0dTVFlWNEVzTzNhL284?=
 =?utf-8?B?MEEwT3Zvd09TblRoOUlQZU9Kak9nV0xTT1JtZ0l6eC9vTXIwbnI1Y21GSkxG?=
 =?utf-8?B?UnJpRVFLUTdmc05TTXVYWDVkK0dEWlhmdHpHK1lzYW5IVlBOQkY3M3dXRHpJ?=
 =?utf-8?B?YmhobmQ2UTJvK3lSWERTWDJLQ3lHMWJYa2ErcjNTMkxQVWt4dmZSaVVBcWxs?=
 =?utf-8?B?UGo0RGdBVmVEU0VhYUY5Wkt6UE5QZDFkL1huQkxEVEpOOHhpbVZzaG03WTkx?=
 =?utf-8?B?UnVOa0JGeVlmMzdpM2l4YnJMczF5TXpjWnZremE4bkt4Z2s5MS9wbzIwaG50?=
 =?utf-8?B?V0pkOWFXMkF4MG5GTnhpT3JTUG5sRVZtQVJLaWdtZGkvbkJPWjBhR2sxRzBU?=
 =?utf-8?B?Kyt0MGxod2E1RnNORStKQS9aM2NTZDVBVGtUTkFFeWdpaWxocWd4R0EycXk0?=
 =?utf-8?B?empwUzhMc2RvdC9TTXB3TW9wUmF5U2ZMdGIvUEsvNk9RZzZYU3dVUzRZY09v?=
 =?utf-8?B?aE00ckJ4Y3laVGdBSHJTVHVYc3ZaL1hkYlRNcCtBRWJnMlZMb09tZ2tOSkVH?=
 =?utf-8?B?Rnh5T0FTa0RiZG9VMUVDeGhiTGFFRUtwYWJGUTN4eXVVK0VJVmtrNmthbnFF?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af95db73-c647-46c2-4ef3-08de116438c3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 12:12:08.1511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8V6JXGuLX+wV0Lvi1VVu0e554yNbUKlkm7slnpWd2ssV72hx88Gcdsq4HrmU2QB9ArJAzwO9ybwb5sDav3hw5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8172
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

Quoting Jani Nikula (2025-10-22 08:53:34-03:00)
>On Wed, 22 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Gustavo Sousa (2025-10-21 21:28:29-03:00)
>>>Starting with Xe3p_LPD, we now have a new field in MEM_SS_INFO_GLOBAL
>>>that indicates whether the memory has enabled ECC that limits display
>>>bandwidth.  Add the field ecc_impacting_de_bw to struct dram_info to
>>>contain that information and set it appropriately when probing for
>>>memory info.
>>>
>>>Currently there are no instructions in Bspec on how to handle that case,
>>>so let's throw a warning if we ever find such a scenario.
>>>
>>>v2:
>>>  - s/ecc_impacting_de/ecc_impacting_de_bw/ to be more specific. (Matt
>>>    Atwood)
>>>  - Add warning if ecc_impacting_de_bw is true, since we currently do
>>>    not have instructions on how to handle it. (Matt Roper)
>>>
>>>Bspec: 69131
>>>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>>>Cc: Matt Roper <matthew.d.roper@intel.com>
>>>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>---
>>> drivers/gpu/drm/i915/display/intel_bw.c | 8 ++++++++
>>> drivers/gpu/drm/i915/i915_reg.h         | 1 +
>>> drivers/gpu/drm/i915/soc/intel_dram.c   | 4 ++++
>>> drivers/gpu/drm/i915/soc/intel_dram.h   | 1 +
>>> 4 files changed, 14 insertions(+)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>>>index fc173b2a1ad9..57d65e6e5429 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>>>@@ -802,6 +802,14 @@ void intel_bw_init_hw(struct intel_display *display=
)
>>>         if (!HAS_DISPLAY(display))
>>>                 return;
>>>=20
>>>+        /*
>>>+         * Starting with Xe3p_LPD, the hardware tells us whether memory=
 has ECC
>>>+         * enabled that would impact display bandwidth.  However, so fa=
r there
>>>+         * are no instructions in Bspec on how to handle that case.  Le=
t's
>>>+         * complain if we ever find such a scenario.
>>>+         */
>>>+        drm_WARN_ON_ONCE(display->drm, dram_info->ecc_impacting_de_bw);
>>
>> Oops.  Just realized that DG2 does not have dram_info.  Thanks, CI!
>>
>> I'll fix this on the next version, probably with:
>>
>>     drm_WARN_ON_ONCE(display->drm, dram_info &&
>>     dram_info->ecc_impacting_de_bw);
>
>The comment I added above intel_dram_info():
>
>/*
> * Returns NULL for platforms that don't have dram info. Avoid overzealous=
 NULL
> * checks, and prefer not dereferencing on platforms that shouldn't look a=
t dram
> * info, to catch accidental and incorrect dram info checks.
> */
>
>You caught the whole thing on CI *because* there was no NULL check. With
>the NULL check, you'll ignore missing dram info on future platforms that
>should have it.

Okay.  I see your point.  So, perhaps I should keep the
drm_WARN_ON_ONCE() inside the display version >=3D 35 case?

--
Gustavo Sousa

>
>
>BR,
>Jani.
>
>
>
>
>>
>> --
>> Gustavo Sousa
>>
>>>+
>>>         if (DISPLAY_VERx100(display) >=3D 3002) {
>>>                 tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_inf=
o);
>>>         } else if (DISPLAY_VER(display) >=3D 30) {
>>>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>>>index 354ef75ef6a5..5bf3b4ab2baa 100644
>>>--- a/drivers/gpu/drm/i915/i915_reg.h
>>>+++ b/drivers/gpu/drm/i915/i915_reg.h
>>>@@ -1233,6 +1233,7 @@
>>> #define   OROM_OFFSET_MASK                        REG_GENMASK(20, 16)
>>>=20
>>> #define MTL_MEM_SS_INFO_GLOBAL                        _MMIO(0x45700)
>>>+#define   XE3P_ECC_IMPACTING_DE                        REG_BIT(12)
>>> #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK        REG_GENMASK(11, 8)
>>> #define   MTL_N_OF_POPULATED_CH_MASK                REG_GENMASK(7, 4)
>>> #define   MTL_DDR_TYPE_MASK                        REG_GENMASK(3, 0)
>>>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i91=
5/soc/intel_dram.c
>>>index 8841cfe1cac8..73e8ad1a28e0 100644
>>>--- a/drivers/gpu/drm/i915/soc/intel_dram.c
>>>+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>>>@@ -685,6 +685,7 @@ static int gen12_get_dram_info(struct drm_i915_priva=
te *i915, struct dram_info *
>>>=20
>>> static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct d=
ram_info *dram_info)
>>> {
>>>+        struct intel_display *display =3D i915->display;
>>>         u32 val =3D intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GL=
OBAL);
>>>=20
>>>         switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
>>>@@ -723,6 +724,9 @@ static int xelpdp_get_dram_info(struct drm_i915_priv=
ate *i915, struct dram_info
>>>         dram_info->num_qgv_points =3D REG_FIELD_GET(MTL_N_OF_ENABLED_QG=
V_POINTS_MASK, val);
>>>         /* PSF GV points not supported in D14+ */
>>>=20
>>>+        if (DISPLAY_VER(display) >=3D 35)
>>>+                dram_info->ecc_impacting_de_bw =3D REG_FIELD_GET(XE3P_E=
CC_IMPACTING_DE, val);
>>>+
>>>         return 0;
>>> }
>>>=20
>>>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i91=
5/soc/intel_dram.h
>>>index 03a973f1c941..8475ee379daa 100644
>>>--- a/drivers/gpu/drm/i915/soc/intel_dram.h
>>>+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
>>>@@ -30,6 +30,7 @@ struct dram_info {
>>>         u8 num_channels;
>>>         u8 num_qgv_points;
>>>         u8 num_psf_gv_points;
>>>+        bool ecc_impacting_de_bw; /* Only valid from Xe3p_LPD onward. *=
/
>>>         bool symmetric_memory;
>>>         bool has_16gb_dimms;
>>> };
>>>
>>>--=20
>>>2.51.0
>>>
>
>--=20
>Jani Nikula, Intel
