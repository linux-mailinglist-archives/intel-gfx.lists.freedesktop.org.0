Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SFmaFyIzRWpI8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D936EF44B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZzF2UUVP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF3610E3C7;
	Wed,  1 Jul 2026 15:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE36610E0FB;
 Wed,  1 Jul 2026 15:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919966; x=1814455966;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=kF+x1vOJfVg/SGbbt09Nq9sx/xpqGlY1QSoF19KZl0U=;
 b=ZzF2UUVPTIPJQAtZVpYwPAhsnmqqk8i/EdzG/+HSylFlxOb8UJRDPyNf
 Y8jGvn2z/cGggoIzRpYpENptBgnSNhNb9oe0oFSPPs5cGRKLh2miOf4JG
 sOO5WYVoqE5m4YKMWtAYT0sCdR9PWR1xD/mf2DH7flspSRp3N0xl5kCn5
 wqNca0oEN4qrei5DwbvB0xxPSdPg4CrNjlJoCmPHkOuZAalh2JKKY/B/q
 u4/K+qP6xzW1Z+X58sCL0OXSkshhU7BpRMYBVZLkCmXKGwhqSXAANAtt8
 rggVU8jHyhmX2XZcxU5z997vrmU8m8zwpNLDdYxorW0i9ydFipECwU06W w==;
X-CSE-ConnectionGUID: h0fkFSIfTy6jbDliWQ1/ZA==
X-CSE-MsgGUID: 68037We7T3mH9cQ7OD85eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310046"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310046"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:46 -0700
X-CSE-ConnectionGUID: fdfk3VvRSl2pr195eBB3tg==
X-CSE-MsgGUID: ehUWn6I8Tveayxokd5fKSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515563"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:45 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:45 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.38) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EOLSrTSntMtwnWgtCI5m3JLqdoskIq8WLgKNMrvPqDedlpx+M9FmMCVRhHlcJrxEMhFIFUPUiOT0tkwk4qo6WEIi3AJ04ZfBir9eEdKfMdi5AfqqZYum++vSqmhRpZgTofYc4TjoV1Z2lsl0Vm9b0mJ/GnwxhTkwLKPF6Hxn8Rig0lw0x88eZ8Kkujsu8Rzkxd3THyn85Z1NlxLJQmXrb5LP/jbY1tRLO4bwNS2XGaYsDN33J/11WnDNBeJ+uHe/0fwBH67Gd2SSxEdUtt0MWQ8gGCUjxl65vve9s4H6jEyndc2ng/O1fiAHjgUBieR8EOQLpKxoECzfgKEs6HP1Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yyNikmjqZ+JHOe46JQwrbogqXguMuGIhTDHf7epYJ7c=;
 b=uwV+dmyBxOBv6tws8AJFFIy66f1pl7vK2bZzpIMkBe0gxFXgxGd8+KO01u9+7RyiTmYABYt0hji1dvigyvR/dX0mA2ETqVieECpgYGXsjiuP+uv9wMCQZQnWeyIkA8GMMtp/GMbihBUto3dnSOmuRToEG1gCFF7OkQmyZu1/lHgaz1eRljntboWiqYbCICccC/I+QcpLmh+ydl4P8DwczxgG8EVMWhFVS8P28lWSFA9hy0Ry4aZ4F14KBk305UDH0JctGeuT3LiRv05+TTHJr5vn5NGKt0ystjI1UgoXnItEUc+9pHfKchNIImTVhXWku+QS8KDTlOY4zujT7IWCjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:36 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:36 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=
 <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 00/34] drm/i915/dp_link: Unify modeset/fallback config
 selection
Date: Wed, 1 Jul 2026 18:31:29 +0300
Message-ID: <20260701153204.4124150-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MW3PR11MB4699:EE_
X-MS-Office365-Filtering-Correlation-Id: bbf21d81-e216-46a1-53c2-08ded785fa60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|11063799006|56012099006|6133799003|18002099003;
X-Microsoft-Antispam-Message-Info: hH9slpeKLycbfRIq7wDX8UYnqU9gsEAlCn3vWb61n9aluhpigsPH3M1YKTACDKHkc8/kj7CE8eK6CD9ifNPrOw3/ruF/kMQLM9qGFv0RWG91GghfsQvLsFPQDU4GknUyafy9fzRqeCgyF2yXeV8KZv8puhALA//v4VXPizVrXwimoZyrTbDDEYVdta7Pu4D7KnO7fBO1Dpza6b0GX7MZULymKrh66srSjtVzcB/BRuCLklUBRTr0fxTtzEDIj4b+6jRtiVqqDuBAtevwN8CLPFoE5EZ7kaSwSefIUtfxqFqcTeQOB8KOOnxdIlAUWVoeE8xa44m6lC1WqCnlRiGuHbssrqOvdruy+vS5GIZR0iOQ3Plpm5zcp0EMbKiPmQR9t6qHwDlNq6h9zPueHDFLO/0PZ6/fQk2D4q0QI4qpLMOFfpQM1WqXgK7w3R9XAqYKgt3+lEgwo4TdAuh9FDKdr2TAZIwweK0bBiUNsbPcE3WjBv4GXosBQTTtG79GcOlAxM00DMX/H6RhGFsR+a5NN3bcCmHNCX8ElmKNwG0Zjx5JkWYzp8A7taOFcvxR0tz85Nh7QthqYDWoH5Tsp/3rf90PLuzIl1F+ERmjJJk6oI2ZioEW9uufYmSLno2K4Xx7BSmb4kWyAdnOCEssGoP0D8YKbI8IDlVKXhHgyi+yQkE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(11063799006)(56012099006)(6133799003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2dsaGsvdnV5S0x6QTAvRlUxVG80VlkzMy9MaEJBNGpnbmkrVzcrRzVwM3NU?=
 =?utf-8?B?end6ZnAwclQ0K0U0YVV2N0Y4OXBFWlpLUU5ac0lRMnlGYis4R0pHRlkyRXdn?=
 =?utf-8?B?OUVtdUY2WDV5WDF1VEQ5Si9NWmlKRlF2aWIxT2k1RU1FcWxpamJBc0h2Nzdu?=
 =?utf-8?B?ZDIrTGhUbkpQRGp3YUdKNFUwZDRqa05tRUFLenBueE5VSmdjd3BWc0drWk00?=
 =?utf-8?B?Lzd4b0FpRit5cVg2TmJsNXc2Qmc1L0w4amQzY1daSnZoUm91VS9tZXhGcXJN?=
 =?utf-8?B?Q1FJclB1S2s4T0QxMHNCMjc3eU8vN3NiNEl4ZG5uM1ErenBXVU1zUHNPQ2Qz?=
 =?utf-8?B?RnlxQzZnTC9OdnlqTE9GM0hOSUVCZGxWU3JjVTVBUWM5Q1dMSldyd21iVFpI?=
 =?utf-8?B?MC9oRXp6b09OOENEbXJCOHludDM0em1nRTk4M1B4TlpoL0xQZ0VmZGkxb1pu?=
 =?utf-8?B?NWV2OWFMWm1xb3VacUpzcTVoR0pDUnQxSjRvakNLUkFiMzQ2UlJ4RUlxRnlj?=
 =?utf-8?B?RFBpZVEyMXoxMXV6ZHZuOHZVNzJJNjZzT0xUaXdUdlUrZEFvZE9IYmF2YWls?=
 =?utf-8?B?L3NaSFI4NlBJUlBWTTRjWUdtSEVzaUVabE5TZi8vZXkvN0JBZmRRZytpQ0di?=
 =?utf-8?B?T3R5LzJSQ3V5RERIclIzZUdJV0xCdTVrcHFKOGhZSUNmajJZL0FndGhnVktD?=
 =?utf-8?B?dC84YmFramNHcDZsWDZBOHM0bW1CVS93RW1ENlhScVZyV1JodnhnaVpFb05S?=
 =?utf-8?B?QVdKZFJhNEQwTjl5aElNQXFKenZ4MkI0bitxTWxRY0NCN01leW1UUUVtOTlV?=
 =?utf-8?B?RkdNNDY4bGcvaFFhTURWb2k2WEh2Vzk4VmtvWkkwYXEvMWVwSXJoME5mb0Iz?=
 =?utf-8?B?SGE3a3YzVkVxVExZOHpEQUhZbFhRN3ZZaUFZbDI2dVIzVDJ4a2lkczd0ejBP?=
 =?utf-8?B?UnY4Nk02MzVkWW1MTWkvVlBFUUpCV0pXYUtHajNqVGhVN3o1OG1GcFZ6LzN5?=
 =?utf-8?B?SWlJaVp6VmZjZHMzem5HUGhJTW1aMkkva1FaNytSajNsOW5uZGJ4bjdiN01n?=
 =?utf-8?B?c0ZEUU52SUs1WjlQUkpBdEtXWEloaVZnQWR3SlQ0SFlvQlJKZDVRQ1M4WkJa?=
 =?utf-8?B?bStBL1NIVVJTREVydURTR3dWdFhPZFdRcDBFL0lONGdXWUlWY0t2NW1NNGJT?=
 =?utf-8?B?cFdESUJuVHNVMTdCV2RHRUUrenBuT1V4R2FvTWNmUm5xL2VXYXhhSHNLTGdr?=
 =?utf-8?B?ZUFpeUkrL09ZUjBGc1pkWVZGNlpSS0dsN3JpdTJxdXZnQUJmd00wb3Bwd3lw?=
 =?utf-8?B?RXgzWHc4cFdTZkpoUG11Qks1Z2lCYlVUWmFCMlZQR3NlOWxIckgyQnA2MDFI?=
 =?utf-8?B?djZycWdRYjYxcVhycDFacURCdkprb3dZV1BNa2VyeWJoTEc4TW5aVzVGajdk?=
 =?utf-8?B?Z3BjSFVMNnBxSjFkMDVOYXRmY2ZhU3BrMGUzZU1kekppa3VFSXc5SGdKVTRl?=
 =?utf-8?B?TlZqVCt6djdveGQ5dFlOQlZOL1hLdVRyRzBZSUFDRHk3UTdKaEErdldxSm5V?=
 =?utf-8?B?VFRzTlBNa3BQM0IwcklGZW5mZXFNRXAxc1p1SzhnNUdST3l1bVZ2Ry9uczZM?=
 =?utf-8?B?azdkOG1JNlYxQkdxcER4ZGROSlhkNFZyQTVZTDhodUhIdC9WVXk0WTYwdmIz?=
 =?utf-8?B?SENaV1lTT3RyN0RTNnRtZHZYZW9IeWs3U3ZjVDBvSDFoOXVhdmpoRjZPRWNI?=
 =?utf-8?B?RzM1bUhBSEFkRzBVNjRLWWFKbzBvbHdoVndodTcxdk92Zm12a3AxRTRDUlZt?=
 =?utf-8?B?cW9VWmg4MmhJV0NMN3U3Ymh4MG16b3ZhbGJyd1MvVjZvQkdOd0trYkQ5eTRq?=
 =?utf-8?B?eGtvb3dvVklHa09saTlWSE9EQVgrUzBvRzJUZWZ4dUpsM0V3M3k0Yk03Smlx?=
 =?utf-8?B?QkVQaDhodlpZN3BxMlZwdXlMaGhCUVRoTTNtTThmSmt5T244NVJSN3V2R1Vy?=
 =?utf-8?B?WXVtcTNHdUVkSStJR1BiUkcyQVBUcXVnTzMrRE9rbnRqVzB1aDRML09mU2VC?=
 =?utf-8?B?dyswTkozUHRhWHVyWlJ0NXlPUzc5SzhUTjEraHM4bmNyUFlhVjRwamV2cm90?=
 =?utf-8?B?YjhXQ1ROMW1CdmlQTVZLNzBDUjdWNWt5ZmJsZDJxOTYxajlpY2hMclJ4R3Jw?=
 =?utf-8?B?V3hDenVha1dVaXNUVGt4a2tuWXVlanMveUxFY3RlRm5lZTV6dW96b21zSlF0?=
 =?utf-8?B?Rm95cXUyb0tLTzJ4N01uaHFSaFBzU0dtM0VUdFA0clpRUDZIcDZtamFMQ1ZJ?=
 =?utf-8?B?SnZEU2E5T1ZVUmhxV2FteXNwOFRZcTR6ck5ZRG13VEx2dVY0d21HQT09?=
X-Exchange-RoutingPolicyChecked: U80J6nHOIJzmFD09vZASWmmDAYeDOxCaDwcb21yEP4fmQBHTMs5rlLK3N/i2yHHNnL71zoQuZUUgNwCWgCaAo1o9gnc+QMzWHoZhoJHEBqjND6/hsrtbssYJp6bgNRuHDMiwE+ARxR3V4ubTxo5Ar64uBOxmtZcsOd3sHCqHCcCT6Jro0GkPYr6stVDhn7P0t67dYRbxurvo3LW85W1Rkr9bTImTOKG6A90aJ+ANh3MdqJGKyEVaeZKvZNU62Lwkf2YMoiKDr/UxDtGhlKKN6dTTYJH9e6r5XQ3PD8Ha2LGfPaDzfwlg11oR8iMz7ZrDmCFSTgiECPSYS8mmEW4cZA==
X-MS-Exchange-CrossTenant-Network-Message-Id: bbf21d81-e216-46a1-53c2-08ded785fa60
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:36.6608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4+YYYZEJ/UnexyfdCDH/qouu4QOO2YgJgfBMaXR27klddI9uPjnGYWPInRv2WfaCxjX7l1sikQYS8vGWzNZOPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D2D936EF44B

This is v2 of the third part of patchset [1], unifying the link
configuration selection logic used during modeset state computation and
link training fallback selection, while also adding the corresponding
KUnit tests. This constitutes patches 58–108 of [1] and, once merged,
completes the original patchset. Due to the simplifications introduced
in this version explained below, several patches from the original
patchset have been dropped.

The patchset is based on the already merged first [2] and second [3]
part of patchset [1].

For the rationale of this patchset, please refer to the parts related to
link configuration selection in the cover letter of [1].

This v2 patchset version has the following changes:
- Track the state of link config iteration in an iteration object.
  (Jani)
- Use an opaque filter object for filtering the iterated configurations
  instead of exposing configuration indices via the API. (Jani)
- Remove all parts of the API accepting or returning a configuration
  index or position. (Jani)
- Use the config iterator for fallback selection. (Jani)
- Remove the change to track link configurations via a virtual indexing
  scheme. (Ville)
- Remove the functionality to merge new link configurations for a
  connected sink changing its capabilities, allowed by patchset [4]
  already merged. (Ville)
- Use the max BW link configuration during mode validation and TBT BW
  computation, instead of using the max link limits for these.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

[1] https://lore.kernel.org/all/20260428125233.1664668-1-imre.deak@intel.com
[2] https://lore.kernel.org/all/20260601093836.3057345-1-imre.deak@intel.com
[3] https://lore.kernel.org/all/20260616200849.3534628-1-imre.deak@intel.com
[4] https://lore.kernel.org/all/20260522160514.2628249-1-imre.deak@intel.com

Imre Deak (34):
  drm/i915/doc: Document DP link capabilities
  drm/i915/dp_link_caps: Factor out helper to get link config by index
  drm/i915/dp_link_caps: Add support for link rate, lane count iteration
    orders
  drm/i915/dp_link_caps: Add link configuration iterator
  drm/i915/dp_link_caps: Add helper to get iteration order for a
    connector
  drm/i915/dp_link_caps: Validate max link limits
  drm/i915/dp_link_caps: Add filter for enabled link configurations
  drm/i915/dp_link_caps: Re-enable link configurations after a link
    reset
  drm/i915/dp_link_caps: Re-enable link configurations after sink caps
    change
  drm/i915/dp_link_caps: Drop noupdate postfix from max link limit set
    helpers
  drm/i915/dp_link_caps: Add debugfs entry showing allowed
    configurations
  drm/i915/dp: Add link configuration filter for modeset computation
  drm/i915/dp_link_caps: Add helper to query max BW link configuration
  drm/i915/dp: Query max BW config via link_caps during mode validation
  drm/i915/dp_tunnel: Query max BW config via link_caps for BW
    computation
  drm/i915/dp_test: Use link caps for compliance link configs
  drm/i915/dp: Iterate configurations via link_caps for SST non-DSC
  drm/i915/dp: Iterate configurations via link_caps for SST DSC
  drm/i915/dp: Use link caps for eDP DSC config selection
  drm/i915/dp_mst: Use link caps for non-DSC config selection
  drm/i915/dp_mst: Use link caps for MST DSC config selection
  drm/i915/dp: Remove min/max link config limits
  drm/i915/dp_link_training: Reset the max link limits in the fallback
    code
  drm/i915/dp_link_training: Use config iterator for fallback
  drm/i915/dp_link_training: Disable failed config during fallback
  drm/i915/kunit: Enable KUnit tests
  drm/i915/kunit: Add DP link test stub
  drm/xe/kunit: Add display test config
  drm/xe/kunit: Build DP link display tests
  drm/i915/kunit: Setup DP link test context
  drm/i915/kunit: Export link training and caps funcs for testing
  drm/i915/kunit: DP link: add baseline fixed table reference test
  drm/i915/kunit: DP link: add update config tests
  drm/i915/kunit: DP link: add fallback tests

 .../intel-display/dp-link-capabilities.rst    |   11 +
 Documentation/gpu/intel-display/index.rst     |    1 +
 drivers/gpu/drm/i915/.kunitconfig             |   12 +
 drivers/gpu/drm/i915/Kconfig.debug            |   12 +
 drivers/gpu/drm/i915/Makefile                 |    2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  291 ++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   11 +-
 .../gpu/drm/i915/display/intel_dp_link_caps.c |  759 ++++++++-
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  172 +-
 .../drm/i915/display/intel_dp_link_training.c |  237 +--
 .../drm/i915/display/intel_dp_link_training.h |   31 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   72 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c  |  107 +-
 drivers/gpu/drm/i915/display/intel_dp_test.h  |    3 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |    8 +-
 drivers/gpu/drm/i915/display/tests/Makefile   |    7 +
 .../i915/display/tests/intel_dp_link_test.c   | 1412 +++++++++++++++++
 drivers/gpu/drm/xe/.gitignore                 |    1 +
 drivers/gpu/drm/xe/.kunitconfig-display       |   11 +
 drivers/gpu/drm/xe/Makefile                   |    3 +
 drivers/gpu/drm/xe/display/tests/Makefile     |   11 +
 21 files changed, 2786 insertions(+), 388 deletions(-)
 create mode 100644 Documentation/gpu/intel-display/dp-link-capabilities.rst
 create mode 100644 drivers/gpu/drm/i915/.kunitconfig
 create mode 100644 drivers/gpu/drm/i915/display/tests/Makefile
 create mode 100644 drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
 create mode 100644 drivers/gpu/drm/xe/.kunitconfig-display
 create mode 100644 drivers/gpu/drm/xe/display/tests/Makefile

-- 
2.49.1

