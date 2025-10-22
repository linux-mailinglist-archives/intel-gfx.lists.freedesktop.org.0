Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E8DBFCC69
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:08:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78E2510E7E1;
	Wed, 22 Oct 2025 15:08:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RxMzsguq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5178D10E7D7;
 Wed, 22 Oct 2025 15:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761145701; x=1792681701;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XKEuuy1ZIhkTNs4r1BNpeRs+16B8y1rDzWaHNWQKju4=;
 b=RxMzsguqEvgxKfdBfAei8cRRTCBEaUmRq03TWsuwY2answcamwjlEUW8
 +zx1n87MPHV28/5BY7y/TaE+dp5wTpFw7u1fRolvEm9vBJ6yIb6y9tqv+
 xCMABkjPWWaK7cIVZorZW5ATtpds0NA8iVD7UHg4mSIQJ3M8BiBsXeaBG
 rPE3yOKAJrRnO7JFqVI/riU7CZi4cA2GYoYxOBEkNY3zO7h7Np08Z+P9R
 8mb17Kouu5OKyND2TKkJ6ZW0WmZhkROSW9NcYuhLUcbcSONNEeuevD4ZZ
 4PTBjr766zMnTQ3S/S5Klu76SuBlAhJ1jTykzJ+mjpDp2Bv9aFHy/Cogf g==;
X-CSE-ConnectionGUID: ntM2JArURBKBIRGHZjydrw==
X-CSE-MsgGUID: ma5qdOdETNCiWmL4yaowWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63444316"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="63444316"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:08:20 -0700
X-CSE-ConnectionGUID: u1BrJcIIQ+uHbwfby3jjpA==
X-CSE-MsgGUID: dIt0SC8SQ1qrvhttAqSZCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183110636"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:08:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 08:08:19 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 08:08:19 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 08:08:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jxY1Pl+YY0s70P4yWIdCNr1RKrv9jXziz5UfSb85rSpBQ6TxkmNAHWq4jVAh6QrvRH1L1Vo0mQ5v8YNtU90rmFnPT8BIdBCCqBqA9xuUthGiXnzt5PAt5Vs6oKE+EMawRyKBPRW5KZkyhc/OjMXN2CtwgzY+D2bKpCLpb4ChmdHRFFyZLQSYOPjbHa2jCZjlC/4JFaFfFit2gK+8jtjOJ3N3wt2wwtTPMHtxqCpZ/oYzXx94mNKmUJuBGoDM4nMYO1Go7aFJ3xDad7qzNkqjLP/lXOi/KQNK2UYgIROnRNLCkSFyP2qMLmQNNVhVHYE0xkPI7Ps/fApUhIdc7ZXgjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lVpofHztrAr3E8pTdneEXLoWx7E8MqR2LzMbPVR1ckY=;
 b=Ovzk/n/UXBw9rb6Np+GAQowlv98UR4TluMpiygtX0fRblpZqtN8bm3ZnTxnwwL1WUJh/Ffb/UnWghFVVyb5lqxnmOH6QNC3MKOGvwHUp5BQ2q/6Es6QOtZCDLdbKKAYMeNoRyGMN7Eajti/9g7PI/AetBY/c4pLHgSWq3lvh5ElOD89bld+GpLBqj1Zp7vgA8QOLUABK/0MU4xy+oPE5VY8eleFD/wlPugTzgcijjtiCbtJO8N1f1faT3ymjEbateA0Uf3jNSHIyTCkZvqOK4Ubx6VnVCOYwYS8/UuWNn8z7+C1OHFGgDMMEZy8yI5bwl0lu1O9bOJh6cNo0TjjWpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by IA1PR11MB6393.namprd11.prod.outlook.com (2603:10b6:208:3ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 15:08:15 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%5]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 15:08:15 +0000
Message-ID: <11d5234c-3a89-4c52-a639-4a9452f47fc1@intel.com>
Date: Wed, 22 Oct 2025 20:38:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 30/32] drm/i915/wm: don't use method1 in Xe3p_LPD
 onwards
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, =?UTF-8?Q?Jouni_H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-30-10eae6d655b8@intel.com>
Content-Language: en-US
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-30-10eae6d655b8@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::9) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|IA1PR11MB6393:EE_
X-MS-Office365-Filtering-Correlation-Id: 11353bd0-f6ba-440e-3ff6-08de117cd315
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjVoQXVjeXYreCtQQVkvSTdIRDhaWXF3MThFV3JvSGhSMkNZcmRjSVpUZDgx?=
 =?utf-8?B?aWkzYlpmVTZDUHZlRWJZSGFNZFpWc1dMdldlbVFVL1R5UmZ6WkNNUkpHWjJu?=
 =?utf-8?B?TWNtRGhoZzFwV1NCd0tOeEkyblV4dHQwN2I2YXRLQW9hNHVueG1PU1dhclZq?=
 =?utf-8?B?RkRaOENUaXRnZzBGWml3alhvV3k3bEZ1L2czSFZRR3orYlhwYzdaZUsySEcw?=
 =?utf-8?B?ZksvTm5zRm9YclR3V2tDcHEyOHV2ck1NLzhXRXc1aTlTakgrKytweDFsZHg0?=
 =?utf-8?B?bktUeFp0WElZU1poU0sxTGJIZW9BOE9mUzR3VEEzY2lFKy9QS2FFMTE3Tm9I?=
 =?utf-8?B?UXRZVE1tQWVqSW9XMmdiRzErdE9rbkhtZWFHTnNEancxZTVhVVB2NVJ0aktP?=
 =?utf-8?B?Yzk5WFQ4WkZYMnowNWVJSjBDckRiR2s3N3NkTXlxTzZPRDJhSGZtK2ZGcFA3?=
 =?utf-8?B?WEVzTDMvcGN1Z2hncGJ0TFdvSFV4LzdIaUlRbXBnS0oxS1FvOG42Z2pIdnI1?=
 =?utf-8?B?dHVCZUxvSmJUNDY1RmZGcnhTb2FhdkREaEYyYUZPVmdXTjFmTXNLdDFJSkNu?=
 =?utf-8?B?MEVseVpvSmtZbjhGZHdJaE9xTk1sQWJ5ek9tc2t6bGl5TmVWOVNxMEJFRDBt?=
 =?utf-8?B?bnB6ZUNjWnExYk9Oc3c4TnIzNkZoclVxV2VXVWtpT3c2T3FYejZOMFdNMzlw?=
 =?utf-8?B?YStsYWdnVTh5UW9VNDFqS3lCNjNKVDRNQVFBeGgzSUplb0NLcWt4dVFsQkJI?=
 =?utf-8?B?b3BWVWlLb2Yvc1VSQkI0NjFxNndoLzJaSXN3bENJVmxsOTZnemcyZDZsSVFG?=
 =?utf-8?B?d0M2cGszKzVSc1B4T0J4K0dqN25uZ3JKc2JjSnR5b2ZOa0FJQk84MkpQMjNw?=
 =?utf-8?B?ZHZQcHROSHg4djVYNDRjaWdITHZ2aUhnRmR4VXlpTm1xMmpFSm1lZzhGb0lj?=
 =?utf-8?B?Vk9BZGZuWldJYVhJQWI0WXk0VExVTjU3Wkc5YWovRDJVc2I3cGk2UnY5dzZV?=
 =?utf-8?B?WURWZUdOWUxXTUNjWjdmMHhnUG9tYkRmdjZ1QXBOeTc0N3FXYnZBTHIrRCsv?=
 =?utf-8?B?aUk0MGVuR2ZPK1I3eGdVTFZMMjFqUHpzNWIrbUp3cVJaWGxMWlZjVEJDL1hm?=
 =?utf-8?B?MjBKekhMZ0ZFWHUzVlo4L1lYRE1pUlBKT0xNamJlTkRxT1ZIMUxuU3pVWnVO?=
 =?utf-8?B?MXBycHF1bnBpdis1WHdNTjE3c3VtbmpLdFdvU0ljRXlNblNzak5YdVNsUTQ3?=
 =?utf-8?B?d2JWNkJmMDRMY0U5eStsTlZqbEd0ZmJBTnVjTlhzTWR6V25NN2pWSTltMnBI?=
 =?utf-8?B?S1JFU09sNHNxL2twUUpIeHdqUWI5SEpSTnRSREoweDd0cGpyS2QyQ1EwSEtk?=
 =?utf-8?B?VDhRN0xzS085dWpLU3Q0R0NtV1hab095TFJ1Y0o4bTVWOEhkTVAveGlPVjBa?=
 =?utf-8?B?eGp0WDc5Y0pOdVUvLzJlMkJMNlNzV0NxcWxXRDZMK2t1eEFqOTlGR1RoVXdh?=
 =?utf-8?B?ak9SbHFHeThpTFpFaUU4OXE2R2x5eGZqQU5qYStRM2pCSVo0c1RudkJMWGlG?=
 =?utf-8?B?UWhNbCtYK0ZGZElIc1h3VUNFQXBFZVBUdmhIV2hrYmR3cG9neDE2eldNYUlH?=
 =?utf-8?B?Y1RuTGFHc0UrK2RzbWpwSUNyQjZYdXFOZHc5SmVWa3NpNEY5TUtyMXR5YXo2?=
 =?utf-8?B?V1lkS2N2SHBDRTJlaUtlc0hVai94SVUyVGlHMUFxT29LZTdmR09FR2hJcERX?=
 =?utf-8?B?WWQwNmdMdW9Jb0VxVHRxd203MGttcXdKTzM0TEZ5VDUwL2YxMVRkLzJFZGV1?=
 =?utf-8?B?dEJ1T1UzY0NqYUpnSEZkVjJNczlzUXRBbnRVb2hPV3ZaZ0UwT2crWlVOdzNJ?=
 =?utf-8?B?bEVhR05Hb2ZMZjZEei9OcnhkTjEyelRuRWEzU0pQQlhaK2FqSlRXaGV6bVd0?=
 =?utf-8?Q?IFtinr/gqvQmYYz1IeTCCnlXC2Zj+Lrv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzU5L2VQZ2ozeUg3N3FEdUtYTUhWODFJVWRHMHFqT0VSbVRKOTQxbW1malU4?=
 =?utf-8?B?WXJ5R1B2TWUwc3R1NFR5L0JTdUZXUXRMUVkyckxRbHZuQk9wWjlBMmdTUjVU?=
 =?utf-8?B?Z1I0SXpKczgveXFiZ1d1RVNIa1dFVHFWdHRjVE9IcDhOTFA3S1R6TkcvcS9t?=
 =?utf-8?B?SW9pRE5uSDFyWTk0M09QTE0yVkhRY3ZHV2xGM0I4UXZlV1g2d2hETnZFd3Av?=
 =?utf-8?B?SmlJam93RW5YYjJTbi9SZzFFODh0ekZIM25abnNMbmx1cFdvVERuWDcvbHFa?=
 =?utf-8?B?RFRWSzI4eGVsVEh1TFkrNWdUNFFOK1NJeVpia3pIZ0lGdGloOGNRM1B6K05Z?=
 =?utf-8?B?anE2KzYwektMbGFnZ216ODBuQ2I1b0ROeC8zV3VDMGU3cUZlakF4c24zOEJY?=
 =?utf-8?B?TkZDQlhCTUVLY0dZQ0NTUHdrclFsOXZLMjRia01ETWdBSDhHMDJTMWx6SWhl?=
 =?utf-8?B?RDR1aGp4cXlTZGlzV1BZbG9uMXFqSGZOYUZCTjRLV2UyaG9zbGUxRzNvU09p?=
 =?utf-8?B?L1g2UWFyck9hOHZpZHdmL2ZKcmFEVUJ6czFmR2dxU3dneUxFVUJIL0pMNW5L?=
 =?utf-8?B?eWVxR0N2QmdVRU9ZMThSZENZWHNpM3ExR3E1bkVIT1NJR0hOS3VDMjJEVHFM?=
 =?utf-8?B?QVdSVjlXVStneGY2eFQxd1NKQjJHZTRSR3hsTTI4MWExTExYWmVEbkVTV05I?=
 =?utf-8?B?TnJqakVJUkgvU1ZYQU81MDRsZG5iY1RCcW5Pdk9sN1p5ZEtmMy9XYjlwcjVl?=
 =?utf-8?B?L0xlQ2FiZzBmaCtTZ2FQMzJxem9qWi9YekYxb1o4Z0d0V2VOTDdIZHpUUVNV?=
 =?utf-8?B?VVdLTW1aakR4b1p1MkdtckFvZWd5NXBmUklQWmtyalpPdmN3ZlpINHUzRmJQ?=
 =?utf-8?B?Z3hzblhvQW9uTjJDOTRqRE13ZUNpRytLcTVpTGVmRUhQT0RsMHdqejRkZWRk?=
 =?utf-8?B?dHlpM25qNmhlRktWd1pXaURvTll4QmxhK3F3UC9IVzVOd0kybGVhbGlDczBY?=
 =?utf-8?B?emtuenRaVnA3NUgzTWRtdVVKMENWQWdkN29rc2VOL0s2OXQ4dlNhV0NFcGdZ?=
 =?utf-8?B?RnNra3ZJRkM1OElUK3JuYXQ5bllHdXpjVGZFMlpwbkZIS0VhcUpwbG5Nelkr?=
 =?utf-8?B?SlczTDBTQkQvS2crSmtwd2U4R1RsdWFMTk9BRm5FNTNGemhCZ2pRUFl5alhw?=
 =?utf-8?B?QU1VRkR5L1dhMFlyLzZ5c3JrL3IyMytENUtvRy9WUGM4U2gzdjZYRitQNDBi?=
 =?utf-8?B?Tk5oT2pzMmgwZ09mWkN6Sjd6L0ovckVGOUxHdGgxdHJhZWxwNm03OHlPcFQy?=
 =?utf-8?B?eUx4WWt4YXV1emVQQ1ROUVJTVEZaSE5IZnFHKzhhMXVLOFVKSXlLTDJ5eFlQ?=
 =?utf-8?B?bzc4Tzl1UzBLVzl6b2JBS0VmM09iNW04Y3hYQTZMdUN2WHVBZTlsZHBSOFIv?=
 =?utf-8?B?WU9pTGFNRVZyUnhBSG9YVVBqVEFkbmNLRmsvUC8wWFJqMWRvVEY4VG8zMGFh?=
 =?utf-8?B?NW10d1NjOXZrNUYyZGV6aXY3Y2hoWWE1OGQxL2IzaEJ1WHBMTkFHeUNwaThn?=
 =?utf-8?B?TGJXS3lHUWx2dzVmM1pPY2lqRlVTSmtKSXlDZUZ5Y29kakg0VFFncERUc1V3?=
 =?utf-8?B?R1hucC9qTnRNckpnVDF5QURnbWdIMmV0Q2V0cU9QVytPYXVkUjY3aUdBVStH?=
 =?utf-8?B?NHczb0tsRFJCVkg4cFlXSEZNcnowNmt4S28ydXZZNTFFUjhqbHdLSVFDNGlF?=
 =?utf-8?B?cmV1aTZ2MGNUOXVyYzB1UEJvRFV1UnZVYW1IV2lTYnhtdkEveE54MkdTeE1J?=
 =?utf-8?B?NlpBTEh2cWlTVTBkYU9QSXpIRjJuUUhJZEgwbXBuaDNHejFDbGxsSDVLU3R4?=
 =?utf-8?B?TkZUNkhVbzN6amI2V0UrZ29ZbUwwem11WnFrK0tjMWlFQi9KaTR6TmxIY1lo?=
 =?utf-8?B?MUs5WWlFQmtadlNTaERGS3JrbThTczlqQWNoYjAxaXFLc0QzL015ZnlxaVRm?=
 =?utf-8?B?U3l5aVZEY01vbElqZit3ZEJIYU81d0Q2RGxXamRqbDhKRXVBU3N5dkYxdUtE?=
 =?utf-8?B?SEhsaEZzZCs3WlNnV2FrSDBXNkc4c0xoTFdOTTRsNHhKNmswM2ZSZEhaZGo0?=
 =?utf-8?B?Z1ROeWREVEVDeEJ5bitKeERJZHEwYnlYV3FnN1JvZThMdHZob2ozMDV4cndL?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11353bd0-f6ba-440e-3ff6-08de117cd315
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 15:08:15.0043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WXNf/qwwlDzOTZZV9zvTsGnF1vLlynu6/xO0XUy+J/V5yGRLGWphL7UohjjfQt+jbo9LlflL/uEBGQTzAQRYgwbr5Y4/PT18P4xQM2bN3jw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6393
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


On 10/22/2025 5:58, Gustavo Sousa wrote:
> From: Luca Coelho <luciano.coelho@intel.com>
>
> Starting from display version 35, we don't need to use method1 to
> calculate the watermark values anymore, so skip it.
>
> Bspec: 68985
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

The change itself looks fine to me, so I'll give the RB. But, I'm still 
unconvinced on the wordings of this commit title and it's message.

Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 5bb6cdc4ad2c..9a063637a9af 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1812,6 +1812,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>   
>   	if (wp->y_tiled) {
>   		selected_result = max_fixed16(method2, wp->y_tile_minimum);
> +	} else if (DISPLAY_VER(display) >= 35) {
> +		selected_result = method2;
>   	} else {
>   		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
>   		     wp->dbuf_block_size < 1) &&
>
