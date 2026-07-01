Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UZFqJIG0RGr4zAoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 08:32:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E39266EA3EC
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 08:32:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=StAMpCnw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0BAD10ED9E;
	Wed,  1 Jul 2026 06:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B83C10ED9E;
 Wed,  1 Jul 2026 06:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782887550; x=1814423550;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dr6RZ6rncwuCMmXDLkUeUgXBMdomNEkEm/COTVASdk8=;
 b=StAMpCnw9vL1eBPqQZG5/kxJH1Ael2iBSV1XAvANANqAGXjPKmMZfzs/
 VhhSRu7wDKvT4ZbhJBgdsF5Ruc7cKk7+dz2YkHcbWaB6eGQKTHAG4BeKW
 p8db/nTFA56iTxWZ6JhH0Wmk6zdw8s0pvrnbCvoq95MNh+WKQV1nv4rUL
 zD3Ile8TdTqV4npmzwsZ09kJxda2juhMSKJjjdR3P0qiwIki7Y04SNtdV
 QkFNVDWtOon37iQCaYG7Cvwk9SGTIc6a3sj5yOndEtncDd0kK9de9zZUz
 mS0jSDSBQQ3BpFqppp0CpBszW+fGfJIAxkydL+5ZneKK6ZtNUSzcdSOAz w==;
X-CSE-ConnectionGUID: S+ZLonVXT1S2OMncuhAFEg==
X-CSE-MsgGUID: 1muXdUyiR8qvJMNvqg5YhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83809190"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="83809190"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 23:32:28 -0700
X-CSE-ConnectionGUID: YihiHO61RhataSTTKUFCJA==
X-CSE-MsgGUID: 1AXxl+A7QBWMeBwdID6jaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="248001517"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 23:32:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 23:32:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 30 Jun 2026 23:32:27 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.10) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 23:32:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BRp3AsgPdrtPyVAjLrKFWmEApRO6Nfk9adieiZckk6+DjAlQF7eoLLrSLk9CEbwZZgQHOcMkEjrbFw3dtElo93PkNSFddYqObuU6IeUwuhnFiR3DJ4GvwpWdEU/7srwXZlm4LAccy/zXu+JyP5S0SZlTejLRCFfsRWuyCXd4szi+ZkWM8NSQWSfjMIQ/kbCYHaAkO67dS8Fdc57HhEGVYXq0lbkTjrN1DwSYvTyYZmHQo0NkI06ttZkEI7qX36dTcL4DDxeRvHz6WK1a8FwwnMaU1MSQxHS3CDlMYGR/7msHCvqh7NyjNG8KSYAINN+sea9Su1RUbHsyzR/vo2rXOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XxMbyTbVFKGuXgwT7SDXwoT7OL0+KD32GxGKmuEg4js=;
 b=iRZTKiP024aRrJrcHzowsS8EByXvwSOmxdQUt1WReojccjo9/+QAYz6qJZ1RSuZS49ROjEOWejpB1bYieE96F0nZ7YCgXJG7/gd4vQXnK06+9qNW0PQnQGi40TlYR9hVogbmhj8fErmXinEVpUIkYk5JT+OmkU9N7UdSDh0zBQY5uHFvZpbzywpKBEjpo/7tY6cSyyPB2U8fmxSt0S+616UCHcgu+NEGpaCzq6qW2F4rhpafxdTJt2GnBu53GzeZwPKIOBOnpyW3TGVvkeok9ts9SECR97Ur/EXQBkZEAvGdbDv9acrTR/TfLzcFdge6i9NMu86wBEHBy78JMMGxHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DS4PPF07B018B9F.namprd11.prod.outlook.com (2603:10b6:f:fc02::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 06:32:25 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 06:32:23 +0000
Message-ID: <2bf3f7a5-deff-472d-ac70-801cea21145b@intel.com>
Date: Wed, 1 Jul 2026 12:02:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] drm/i915/display/psr: Block DC3CO entry during active
 frame
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>
References: <20260630085928.1317279-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260630085928.1317279-2-dibin.moolakadan.subrahmanian@intel.com>
 <DS4PPFE901A304F76B8301BE5F920A333D4E3F62@DS4PPFE901A304F.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS4PPFE901A304F76B8301BE5F920A333D4E3F62@DS4PPFE901A304F.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0001.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::14) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DS4PPF07B018B9F:EE_
X-MS-Office365-Filtering-Correlation-Id: 15eb7195-3a04-4aa0-52f9-08ded73a8260
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|11063799006|56012099006|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: lruA9B1p18yDrylGOMAZVy1LbRrwhYRjvUhakvb/Fa48Y3WVG5Ssv4svq84JpNNL83yCHmt9/sSx55kjk1xyNJ7/BOBsUD3CcHPFT2yexKnQ6syOyPn2TSvKapyPdodO86XXmHNzpPKWZxmCISDB+R+f1mwjRpBFZtqzSFk4KxHHLgyAjIuxmIwtwqW1saam+8eR6GYGRhTMBfWTU7IUE7ONNyRvi7SOoDJmVIa5OQ85vigiXBCmWeKa0U9GjG2TGaBc+RjwAdDbAy8h1Qc7Uc0DXzLW7CmqD3DEUY/v2q83dSzYAeBsXyX48rb+6ZAe8oOzGNT2XHrjlxfjtnPxkKOq7U6/7n4Y1yWKWafHy4hKFFDW3A019ULlKasv5mzGMXzv1BRnGf+HJaxGjHyeCcocwlKXRgxKcjF9E4r8F4oLbb69xcxyZHaTHMBBCK+52HAGStZXEVcF/vmr11ACVG0CDJ3/NAOsoIEZ+gmB87vMLQ7aTuS1QV/kgCWti2Qy8Fs8iBuuUHYkLxUb+OuxkV5/p81ktCS+ZeE9AUFDSQCVLZK4/ZkBp5rOCPb42rrqrr6nHuroqBNWRPLGg8VKGG+eStpbaCmHEw8QCLTGe1Amh4QSpr6tYoRVMzY2ea1tBLCmMLrg+Fr6sYYJ4jt44K3YMq50KRSXsFZOr1MtvRg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(11063799006)(56012099006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHJJczd0b08zRmo0bEc0V0hLMkt1UDhreHFpN2JTTXZBT1BhYndGVTNmQi9F?=
 =?utf-8?B?WHpkUDluYW5QSmJMSDVlVGNQLzFYMDQvaUNiSldQTkZ1ZFFaNlRlNVZid1ZM?=
 =?utf-8?B?NGlicm1NblE0MjA5cHdPZm5PWnlLd0VyZUNpMmhRZHFJOEVrRTUvRGErcjVy?=
 =?utf-8?B?NWVTUWNrR2pvbFNKVEZtQjhTRkpuOENYQVNsZEpGWmtwOE5LNGdiZkdBQXRL?=
 =?utf-8?B?YUd5STNJRlN4THBYUGYrWWZWb0NaekVzV0RXN1o0Ni9YSkZQZUJMWkVBUUYr?=
 =?utf-8?B?YTVScWhzLzcrNVFWT0FtSzhmdS8zUVl6UXdoSkVrd0RmWmZ2eDdzWG9adUdT?=
 =?utf-8?B?SjRMODhYcVgxOER4a1NXeFZCUU52QWpSbHpmQloxMmN4K2ZTQjBLU0NZMWto?=
 =?utf-8?B?Ti92R1gvTTc3ais2OU1ZQjV6TU9lcFNiR01kNG11ZHhWK1N0UnY5bG9kOW4z?=
 =?utf-8?B?UW41OGU0QXpRYk5tRVhJamRGMy84cEtHQ1ZnbUs1RmpBNDJwN1V6RzV1OFBI?=
 =?utf-8?B?YmErbU1BekpOS0txUk4rWVVZZW5YelBIYUpHa1FqYkswbEF4VHVZQ3NsSDRD?=
 =?utf-8?B?QktybmNCQm91U1duVW9hVmk2Snl5T3h4RnRUdTlVMHhwaW1odzBHNkxYclNB?=
 =?utf-8?B?dmZXb1hOaTFRZU5pSlNYc0JXclRjZDJOZ3VlbDZyUjhrazJoRjIzTFhNVHo5?=
 =?utf-8?B?L2EzTWw0WVpCRDE1VmJ0TTk3MlBiWVNTN3RtL1JLWDY3MG1GQ0dIYjFjc0dF?=
 =?utf-8?B?UUkzUTNWY0VTMXZkb1VkRGl3aWVueVEwbWg5RC96Vk9oeFdHMHBWM0l4cGlh?=
 =?utf-8?B?UkhId2RHL2orTUtyc3drczNWWkJ2U2syZGFBS3ZhZkYzendzNU5Gb3IvUW9l?=
 =?utf-8?B?T0pYL3FaazJaTFA3ZWgrWjlQcC9BZGtFeEg2NzBsL0d3WktWT2FHUTZWbE54?=
 =?utf-8?B?VFJQQ2E4aWp6MEVjTHRQQzQwV0l3N25iYkIrS2RWdFVxRVRXU0NmcWtMT3Jt?=
 =?utf-8?B?SmJ0dDZCeE16VkpmOGtodkRFbFVlOTI4TEJHOEkwQTN4cm5XNDZkWmRFOE5k?=
 =?utf-8?B?MTlyQ20wOGI1eS9CM2lnam5CYTByQ1hJL1Z1T052ZTJQZlBuZjB2RXFHYWpv?=
 =?utf-8?B?UW5vTGI5cXJOZDhsdHZEczA3ek9heVJzYTlwS0RqR05UR2kyOC9Ja0pJSlNt?=
 =?utf-8?B?ZUVzWUJFa0FIZ21sTDBjbDJqTUJmWkYvbTBIWVBzMDdTeCttK1o1YWdZOWs1?=
 =?utf-8?B?MXN6cWdNRGZQTDZlUzlzeTlxZGJma0xIdy9sUTVadHdiSWFtV2QvYThuUVJG?=
 =?utf-8?B?cS9KNmg4RzZpcStsNUsxRzFmemYyNWdzZllvSkVhNDVCTE1OMSt2UTd2dVZK?=
 =?utf-8?B?dnFDdUlUMzdOUm1wa3hGQ0tYa01pYld2ZlhYclZheHdGRVU3MElxUENtTTFm?=
 =?utf-8?B?Y3pkaFBneEo0eU4wSTlUN3VOUlYxRVBuWHd3NVBIVWIxTUJzREtLMjd1NXk0?=
 =?utf-8?B?R0gwUmR3b0RtUGhURHNtR2wrNDNnRm9JSHdTbEVURzRzVXlrU2hDc0FzUG4w?=
 =?utf-8?B?cm1lS0dWeHVFNVVTQVY3NFdrRnYrNTc0cWZNbUp4R2VDeHVvTWJTM3czQVA1?=
 =?utf-8?B?TjlFVkZTVEJ4SmJaTERWY3lNWW1KbW96NGc2K3RxMytGWS9VY3RSWWl5NEJV?=
 =?utf-8?B?YStBa25wbkhXSlNlUEs1cmR5UkQyUm5QVFRCTi9nZ0ZGbUhNc0RZM1JrU3Bl?=
 =?utf-8?B?NndtdHZGQ3lsaW5Qd0F1eHJ5cGE3UnRQOWxlV2xWa0pka3NHcE1NK0tTWXlF?=
 =?utf-8?B?UGZZMXdnSlpScWRJcUFXVmRDSVNXZ0Mwd3REOVVPMkVHNlhlOGJLY0ljQjVL?=
 =?utf-8?B?QXpDck1LQ3NWaXd1R21sSVNoYXZkaVlZVE4vM0xqUVZIbGFlbWxHYjlzb3FS?=
 =?utf-8?B?ZmpyQ2tUMDdWdWNqTk5UMWp3bitFQzluQVp1R3hnTFJsY2tTUUJTUkFmRUo2?=
 =?utf-8?B?dGJjSnlvWXkyaVNOQ2h4QnRxMHhWc0NRUVZRK2I5TXlLQUR5clR5UmhXV1ZN?=
 =?utf-8?B?WU9mcm81cDNiQk95SjllTjNKRjMyRXhVLytBZmtnRjRCS0c4ODlnWC9iRUtO?=
 =?utf-8?B?bFhCTHNCbGg3U1FNaGZWOG1zbHhLOTRQbUs4dWlndGFSbzVLRk1ZVzFxangv?=
 =?utf-8?B?eDlaOWZvcC9uRStOc01LaGcydjNSNndna0sxL2lKR0I5ZEhUWnkvQ2RHU1RQ?=
 =?utf-8?B?WG5kNElKRVd0cjdJRmZVdW15L21aN09iQnJsMFZRUDBTNTYwZG04allqYk1x?=
 =?utf-8?B?VUVTRGdSL3JHa0ZsbFVZQW1ReUNoL1huZ1lHWjV3VmFWdjBJR3N6WEppQURZ?=
 =?utf-8?Q?f2c1/qVkoxlLjQGtXJ+X+emU/and2ZPL8buds?=
X-Exchange-RoutingPolicyChecked: CaebihkWHpgLOQmWh0gblhuEKVSgG2AiE872m85CoSjsqyA2CM6EcKnxwd45dnpvDNCjejp0dz+CaWrgoZnEawKncCIVx75J/rFBR5/K2Nz9ApLBDwwEZjcDbv2Hvgd26aC8u5kVIOp7Jb0o0AUlWWBzFW6cliCO6p4Z9aRIlWhCeL3h0tby0xtHPErtK/DtTBfDjFR3+0OPulERAGpesNGL8cgeOrjWihU5F+LRbojYui3yNqRQvsTz/B65lAulimNZ4MHzpf94MRISYy3qJSo8iyVSr0QwsG9c1w87TGK9pLsdKl33so/DHgK/cffNbBjvzUeEhBRGSPjccpnqlw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 15eb7195-3a04-4aa0-52f9-08ded73a8260
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 06:32:23.1919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uCmrUr+PMSQ4+myBEL7tc/6hrYfKEvY7B3F/honNMlu0AlgEK0pQYcDaBzpkbfjph6IxEBEgXS4SqsTeumI37MrmDF/GIj5InfVs2cVsI3IreZptNjSU9GxVeELsPwCD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF07B018B9F
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E39266EA3EC

On 7/1/2026 11:15 AM, Kandpal, Suraj wrote:
>> Subject: [PATCH 1/1] drm/i915/display/psr: Block DC3CO entry during active
>> frame
> Only drm/i915/psr should be enough as prefix

Thanks for the review. I'll remove it in the next version.

>> On Xe3P onwards, when PSR2 is enabled on a panel that does not support Early
>> Transport, DC3CO can be entered in the middle of an active frame. This
>> prevents the pipe from completing the frame and leaves it in a bad state that
>> does not recover well, causing visible corruption on screen.
>>
>> Set CHICKEN_DCPR_4 bit 24 in the PSR2 enable path when Early Transport is
>> not in use, to notify DMC to prevent DC3CO entry.
>>
>> BSpec: 71483
> Add 75253 here too

Will add this in the next version.

>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_display_regs.h    |  3 +++
>>   drivers/gpu/drm/i915/display/intel_psr.c         | 16 ++++++++++++++++
>>   2 files changed, 19 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> index 39e50423132f..754bb9b188b6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -1747,6 +1747,9 @@
>>   #define XELPD_CHICKEN_DCPR_3			_MMIO(0x46438)
>>   #define   DMD_RSP_TIMEOUT_DISABLE		REG_BIT(19)
>>
>> +#define XE3LPD_CHICKEN_DCPR_4			_MMIO(0x454a0)
> This should be XE3P_CHICKEN_DCPR_4

Will correct this in the next version.

>
>> +#define   DCPR4_BLOCK_DC3CO_ACTIVE_FRAME	REG_BIT(24)
>> +
>>   #define SKL_DFSM			_MMIO(0x51000)
>>   #define   SKL_DFSM_DISPLAY_PM_DISABLE	(1 << 27)
>>   #define   SKL_DFSM_DISPLAY_HDCP_DISABLE	(1 << 25)
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 911afb9cb24e..ad6ece3ce04d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -2103,6 +2103,18 @@ static void intel_psr_enable_source(struct intel_dp
>> *intel_dp,
>>   		else if (display->platform.alderlake_p)
>>   			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
>>   				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
>> +
>> +		/*
>> +		 * HSD: 14026643300
> This can be WA: <WA no.>
>
>> +		 * On Xe3P+, restrict DC3CO entry during active frame when
>> PSR2 is
>> +		 * enabled without panel Early Transport; required to avoid
>> pipe bad state.
>> +		 * DMC honours CHICKEN_DCPR_4 bit 24 to block DC3CO entry
>> during active frame.
>> +		 */
>> +		if (HAS_DC3CO(display) &&
> We can do away with HAS_DC3CO and just use the intel_display_wa framework
> Check intel_display_wa.c intel_display_wa.h as reference.
>
>
Agreed,will add14026643300 to the intel_display_wa framework and use that here.

>> +		    !intel_dp->psr.panel_replay_enabled &&
>> +		    !intel_dp->psr.su_region_et_enabled)
>> +			intel_de_rmw(display, XE3LPD_CHICKEN_DCPR_4,
>> +				     0, DCPR4_BLOCK_DC3CO_ACTIVE_FRAME);
>>   	}
>>
>>   	/* Wa_16025596647 */
>> @@ -2344,6 +2356,10 @@ static void intel_psr_disable_locked(struct intel_dp
>> *intel_dp)
>>   		else if (display->platform.alderlake_p)
>>   			intel_de_rmw(display, CLKGATE_DIS_MISC,
>>   				     CLKGATE_DIS_MISC_DMASC_GATING_DIS,
>> 0);
>> +
>> +		if (HAS_DC3CO(display))
>> +			intel_de_rmw(display, XE3LPD_CHICKEN_DCPR_4,
>> +				     DCPR4_BLOCK_DC3CO_ACTIVE_FRAME, 0);
> Ditto.
>
> Regards,
> Suraj Kandpal
>
>>   	}
>>
>>   	if (intel_dp_is_edp(intel_dp))
>> --
>> 2.43.0

