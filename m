Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF3AA1889F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 00:58:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFD1610E0A4;
	Tue, 21 Jan 2025 23:58:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gDw2ynWY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C4EA10E0A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 23:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737503894; x=1769039894;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BSj6GZlR6M6kzc56iVUimZI0yMVIbd+UaMwfZ+jHUJw=;
 b=gDw2ynWYETQrvmA9KWrJ8urb1SFOIocXQcM2aOxh29zvf5If1Cmb0UVZ
 OhjVXnVsJArania3gPtD0LZiiwhcUNCnEI3yIu5/xD3sY+L/DV2UGU8aj
 L74wKGVGGB+PAjQqA0wVJUct2SPGsgBFlrm4MF58BP4hpGnhbl+oNym/X
 jfZmkGLrRdXU903oM36Ry4e1La+2YWALs9YHXyTGmOwxjpicEmx6Lr7La
 CynrKyctkjrfi6anR4CdSaa3136EcL9c4Qbj+em4OsmZMiRhSUsRf+LbO
 rWrD+foiYvZogriBiU7pcr+19O15dcE/Iz5KkoZ90LY2jiLVRRu1jjjR8 g==;
X-CSE-ConnectionGUID: Aqa97GFIRZyh8JbKr7UkPw==
X-CSE-MsgGUID: gL6fN9jhTHy/HZHyIxqc4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="48539523"
X-IronPort-AV: E=Sophos;i="6.13,223,1732608000"; d="scan'208";a="48539523"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 15:58:13 -0800
X-CSE-ConnectionGUID: ElLzS85sTL6D5FgeKrSTgQ==
X-CSE-MsgGUID: Br2FFLNVQga74pSM4QU1Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,223,1732608000"; d="scan'208";a="107075909"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 15:58:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 15:58:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 15:58:12 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 15:58:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DMYU1RyTgQUYbSGaGKp7iHHnhTJ84NrT0b2oPWa4cPM4O7HAXS00P4kK0JFIFIkCHkizjwuCI4bIkerMrIXs2WAEGrPBRRS809gnidK4za71NLmBGBGzn1xqTLYx/vlu7eNFo69mEZn7L7FWBkgTZp8jMSEZdXJZo/yhAcXHTbJuhB1+Yrje2g3tez42zHXEJOmj5CKLx+TQsDOtLNeajFpi5kNWXi10PxAm4ttjbyrmQRyqMagzWXNJOeYIIuxiPGkCdF7HhtM3pUdr2A9Ob6vp16VWjV+74sYGjJBV2OOZR99IgFRDbss4kTzA7jyLECJuSI6CNG0dNo0klBl8qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zoxUYhbWNWnbQGEZI6VD633zzFRBKDHU8W7KhaWNgxI=;
 b=jEnNz7xn9NGxRf8j7N/zK9hBuHDX4pf195ITx5diZomHZ95/+bmHKMR7nT1mkbWeTsbNQZPdi6jyiLb/1iuIVjxtpLhdirnFz5f+ClAAdsJBrDfxwSScS+HOiRGhHQZT043vJozNWlruqd3e5Ivz5Yb4lDzb3NTsqUY1/sRY+miOYkzOeCBeXDaeWC41uIDTbRhm1xPA06WkDPBkJmRTeQkVhxcV8FT/DP5SYgd1dIykRUqZI98UpEbVpA6jyWlBr6yugXLlYQKjdm7YQZM1aBMQuE0IhMfgfBHC8Jh8z2TNWOYB1PrC60uszU2Cl1S0vF8PZ+0+GuG0S89n1p8bjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by DS0PR11MB6423.namprd11.prod.outlook.com (2603:10b6:8:c5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 23:58:05 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%3]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 23:58:05 +0000
Date: Tue, 21 Jan 2025 15:58:03 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <John.C.Harrison@intel.com>
Subject: Re: [PATCH] i915/pmu: Fix zero delta busyness issue
Message-ID: <Z5A0i5pnTcyoQSqB@orsosgc001>
References: <20250121222557.721355-1-umesh.nerlige.ramappa@intel.com>
 <Z5ApalwXOr3qOYpr@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <Z5ApalwXOr3qOYpr@intel.com>
X-ClientProxiedBy: MW4PR03CA0274.namprd03.prod.outlook.com
 (2603:10b6:303:b5::9) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|DS0PR11MB6423:EE_
X-MS-Office365-Filtering-Correlation-Id: bda5b4f9-0365-49b8-3333-08dd3a777257
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T3FGdFVhZGVZdDQ0M3c3V1QvNTRMK1c4c0xuT3pyd2F4bkIwaEFZQ1Z3MDJ5?=
 =?utf-8?B?Q2JtUUtSc3UwUTAzRHA0bU0xb0Z2RUdOSkkwZEtMSkQvS3JBdG9tL1RuVG91?=
 =?utf-8?B?VGU2d0lOaEJRWkQ1bm1abkVxRVNBWVhFR0V6bkgza2tjT3M1V0N2NThGWGdN?=
 =?utf-8?B?amdqaXNqTEZBb0pVaUlSMHZUQ2VnaVRpS1I2N0hyaWRKRVYrYTlmUlZoNjAx?=
 =?utf-8?B?NHRiMUptM2owb3NvTDhIZWlyMk1uZ0RacWlWdDJhaHNVS1YwMEdra3prbjZN?=
 =?utf-8?B?Slg4ZkhwaU8rRGN6VlZxaHVjczg2UGJuMXRmUGhYOHVPZzVUaFRZSUVRdVB5?=
 =?utf-8?B?Y0E4Ym9FbFYrZnh2UzZ4QU5KSGU2NWxHZm9tcHdzRnV5Ni9pb2xLVXpNOTBD?=
 =?utf-8?B?ZzF0dmFHelFjYk9vaXdQMlRJYlBLbG4vODlkUFg2OFVLRXpBWWFXNVdwNlIr?=
 =?utf-8?B?MFlDcER6NFdhVFhmVjhHUTBEMTE5cTlLT0wya2xPNjRCeEpaWmlPbjhoNGpB?=
 =?utf-8?B?YjdzSjhPVzlsaVBTdkovd3VJN1llOERqWUt1b1pNYkE3SStJbEpNOUN4VmNT?=
 =?utf-8?B?bHUyZmVoUkFCWTBSUE1Ed0JTNzlFNVJ0ZThYQmx3MzAxVjJkRDdtNUNIY3VB?=
 =?utf-8?B?T3UzdnZJYnIzZjlvSG93Q0l3UjZLMUdmaVkvOU1LbW5iSkM3VWdjN0hHbGc4?=
 =?utf-8?B?V2Q1a25YS21oWWV4bEhRZ1hYMmV4Ym9aTkc0b01kampQcFZFREVORFgxZzBN?=
 =?utf-8?B?SG1xek9WcGhNNGZHRWtHS3VIZHRpUHJlSXZ1ZkNsNG5ZQW8zSUdtRFUvSkF1?=
 =?utf-8?B?elduRjdna014Ly9BZng3amprMTdQTksrYzFoTGpDd21jdHZkSW8xM1crc1hz?=
 =?utf-8?B?bkFCU2M3T05Pckc4SElkb1pKZFFDVVp3czE5alRzaUtiTkVwY2wxNndwQTBW?=
 =?utf-8?B?VGlqSGNHRlE4TldtQ3pGL3pWemN0bUpxcDZNT1Q2WHpKRnNBdzVTTm92MUJF?=
 =?utf-8?B?blU0NWtJcUU4V2JLRmx3cWJ0Vk5mNXVSREc0b2hHdUhNeDR1ZHJ0THZMSktD?=
 =?utf-8?B?UHQ0Q3JmWGZmUDhmd2EzWmRuMmZXRnlERS8rQTdWQjByS1hEUnU4V1RRaVZa?=
 =?utf-8?B?TU0yYlZwWXh0M3p5ZmtIUXVMOERZK0pmWUYrMEtNN1FSdkowdUNsYkhrVXdK?=
 =?utf-8?B?R3BCRmZBUW4zRllWSUR5SFpyOC9Oc0lPQWwvYVdzNVZYUEFkK2JkcVIxemRy?=
 =?utf-8?B?RUkvenQvcnEwOWZKVXVPWC8zdDRmczJucERZRkpKU3F6emtZWW94bmRkQUpG?=
 =?utf-8?B?VFVpbkk1SGx4TlVOMFZRSWkvUTlkTlJ4ZU1rZ1R2azBiaVlNTmhSSEJFWnVt?=
 =?utf-8?B?OXBld3c0S0V6RzRIc1c3MEhrakxOYy9rUDgrSFpZenZpaEZ3S0NPUHR4VWt4?=
 =?utf-8?B?RmhYVEE4RjFlU0NBU1JZQjNkeTl3N0Vwa3NQaW1EYzBndFJoQlZLWWQ5OWtt?=
 =?utf-8?B?Vlo5M0V0a2Zrd2s1WHZld1lhemtuZGlhaytWbVZwRHk3Q0JFMkx4eVJtWWhI?=
 =?utf-8?B?ajVBb1FYelVwKzBjVEpCRUkxM2hFQTRva29wZmw0QVBhUGZRdWlvRGRDUXl2?=
 =?utf-8?B?UDZOUG04R2x1aUEvUCsxRDJaSGRMMVlVWUNDWXhaNlRNazh6ZWNUdjZiaDF2?=
 =?utf-8?B?RUl2SVdhelpXL0kwMGZPdXFoT0tZMUhVenJGd1NFK0lHSEw2c3lOT3BzaTVv?=
 =?utf-8?B?bDdOdythTm5xVXpESjNRdjBib3R1T1BET3NIREpSeGVxTlRQbDNyTXVESXg3?=
 =?utf-8?B?aUNZRHI0RSt0ZytydnhKdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVluTHFZanlML0RyQkRNd3lzVXQ4UGM1RU9GTG1yOGcrai9RL29tbFQwS093?=
 =?utf-8?B?djJtMUltUXFYMk9YMWxTSk94NEJqSFBBN0R5Yms5N0NFUCtpQUs2Q0U0blB5?=
 =?utf-8?B?ZkxpWmZaeWJsNE00OUs4U3o4d01KL1J3UUxpNGtJcHlHQUE5YTd4QlZIeW1Z?=
 =?utf-8?B?eDY4dCsrSm9qamN0QkxVY242ZEIvMDk0ZzRKbUhjSmdxcy9Fdmh2YUY0cC9T?=
 =?utf-8?B?UW42M3NOc3k2WURBYzNRQUEvSGd6U2tqWlBYNzZGZ08ySjEyTDZzM1YrSDZT?=
 =?utf-8?B?UE93Yk1Odjd5b2NIdy93YTh2QStFY1BJbFFnaERQU3M4blIzYVVoRmI4cEJT?=
 =?utf-8?B?NVRnRy8rWXp0NVhpSmF4TVE2RzE4U1U0d2YzVVBvUE44SmlSVytRSXhuMnNH?=
 =?utf-8?B?amFrU0N4M2VGYTU4d2ZaUFZtWHBhbm1wc3RlN3RMVlVjUHpZTkIxdEtvdFpm?=
 =?utf-8?B?bXdnc3FnUExRTDZ2dUx2YlhQQURXTVoyWXZHSWZpc3huUGNhbnlGL1EvNnFE?=
 =?utf-8?B?QmFnTHovd2k3cHIyZU8wSk0xb05OZHVmL1daWnlGdTdGSkh1T1VYeGlITFRQ?=
 =?utf-8?B?MEwxdEVwOFVYR05hZlE5c2p4N0lDOUhtcnlXbE5uMytJcXlVRUxXYk9EQU1L?=
 =?utf-8?B?TVEvNTk3N0NRYmI2dkI2UXZ0Q29heHFYMEw0MFJ4aXBNUW94cys0eVRoRnBv?=
 =?utf-8?B?QmJMOUxVSWtQUkhWei93alZPTDhtK1hCWC9rVk9Ubk94RlJFWHpBZ3B0SVBy?=
 =?utf-8?B?TmdsdERKNUJ4MFN0RmhZMzBNUEN5NWZiRlJ3SnRiVFEydFRNaTJWMlJWYk1w?=
 =?utf-8?B?b1ljTVpkY1lLNWdrK0tWUE9YUFpzcnE5a3kxdERMTGhoOENPbGhwSGxwL2h5?=
 =?utf-8?B?Q1NRb2t4NHJBZWRTUVQreitLamhPQlIwYzFhN0lLRlh2ZDdCRVlheGRBYnI1?=
 =?utf-8?B?VEhNZWdOYjhHK2REcHNpL1E0cHZFeVo3VzA0Y2VZdnc4ZGdRamFUVHJ1dSth?=
 =?utf-8?B?SWJTUk1XTFh2VGRHRnpsd21tNkcxdmFzTmp2U1gwVXJlQ3NoNXdHV0UzRy9I?=
 =?utf-8?B?ZlN2TThJU2JSWnM2NU5KZTBYeCtNanRVNXdGSnk0OTMwTFhpbS9xZzRyN3ZG?=
 =?utf-8?B?Z1pJTi9xOWVjK1k2YWowRnRsMGtUL0hXU1YvSlp0amtwemtlOHd3Ulc1cnVF?=
 =?utf-8?B?TkYweE1DTWRmdmxYakIyOUhDTjliZG1sT3FTaU5FY0tQREtoaDN2Wjc1OUJp?=
 =?utf-8?B?OFhscWdNa2RsWVpFSG9NUHdCY1ZodlNUUDloR1lPc0tmUlVERlpLV0hhSHZL?=
 =?utf-8?B?dzJWY09JbUhDSFJKSXBrNHdzK1RHN3BqMUpoVzBXekxJWklDM1dtM3FqN2RI?=
 =?utf-8?B?SkJIWHJ5OXNua0dkeUluQnVvRHpGTVM0UDR4ZEtzUSs5V2dKd0hocVBuMmVO?=
 =?utf-8?B?LzQxbUZNRlBwYWN0Q3pRazJpMGIvTTFjTzBQRFVGKzA3VnM2UG1TaW1KK3Mw?=
 =?utf-8?B?TTE1cVRLa3p4YTBkRzVQWnNkdHZvOUZ6dXJYZW5EOXJLRlpva0poN3htK0J1?=
 =?utf-8?B?a25admFZcFROTFRjV0xWUVNEbUJHbnZUc2l5ZkRSNHJzemdZY2dKakxuS3d4?=
 =?utf-8?B?YXZ5ZkY0am1HbndpRDd6czJTQnhPR3p3c1dzQWRVTGlZY0wyMjhIWDNVVktv?=
 =?utf-8?B?Y3hqRFdra1BFUnJreEo1ZTk0amtJT2Vsa2JVdTRlVkM2dHAzOVM4Y29uWmRG?=
 =?utf-8?B?bHIzcnN0SDNDTitwd1FoSzBwZEgwQkdoRG54MU9JdHBTME82N0RrWWU4U0xG?=
 =?utf-8?B?VUlqOHEvWS9OcVZ1a0I5bWFVb3lOZWlyR3BQNHgrVkJTRjZSbVBCdVhaeGRI?=
 =?utf-8?B?QXJCcXZQRUhpWjNTYmhSK1NqYnNlWm5sYXBPemg5cEw2b1FJRVVwS05MUG84?=
 =?utf-8?B?U2Z2RkN3dlBwNjdMQnpYU1ZlQ00rTnZ2WEF1elJaUUtXYThHQ0FkeEhoZVhC?=
 =?utf-8?B?TWkwbkE1Q053VDJpY3M0Rm8rY2dtejJTb3k0MGhhZWdoY2Z0YS8xVzIvL3p2?=
 =?utf-8?B?K1QvVVF2dDNxZWc5ekhWTDBMRUtMTHNvYXFkZjM0U0lUbTRjZC83enVwQjVT?=
 =?utf-8?B?ZDhXTmRaOHNHU3hjYWNZU0t0Y0F1ajVuTWMvNTF1ZS9KUEhubFRmSTZSdDR1?=
 =?utf-8?Q?yHkTqIeJrTUTBjT7+R6vaks=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bda5b4f9-0365-49b8-3333-08dd3a777257
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 23:58:05.1851 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cWj2ryAL3mjfOFoPE/lLcix08cF3MthKKBOWCajw7AuHhVNpztGaLfB4TtHrNe7GrESmPLqRMYXedUhCW5bmXepVsi3oCRatX07cEVXNzWc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6423
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

On Tue, Jan 21, 2025 at 06:10:34PM -0500, Rodrigo Vivi wrote:
>On Tue, Jan 21, 2025 at 02:25:57PM -0800, Umesh Nerlige Ramappa wrote:
>
>drm/i915/pmu as tag please...

will do

>
>> When running igt@gem_exec_balancer@individual for multiple iterations,
>> it is seen that the delta busyness returned by PMU is 0. The issue stems
>> from a combination of 2 implementation specific details:
>>
>> 1) gt_park is throttling __update_guc_busyness_stats() so that it does
>> not hog PCI bandwidth for some use cases. (Ref: 59bcdb564b3ba)
>>
>> 2) busyness implementation always returns monotonically increasing
>> counters. (Ref: cf907f6d29421)
>>
>> If an application queried an engine while it was active,
>> engine->stats.guc.running is set to true. Following that, if all PM
>> wakeref's are released, then gt is parked. At this time the throttling
>> of __update_guc_busyness_stats() may result in a missed update to the
>> running state of the engine (due to (1) above). This means subsequent
>> calls to guc_engine_busyness() will think that the engine is still
>> running and they will keep updating the cached counter (stats->total).
>> This results in an inflated cached counter.
>>
>> Later when the application runs a workload and queries for busyness, we
>> return the cached value since it is larger than the actual value (due to
>> (2) above)
>>
>> All subsequent queries will return the same large (inflated) value, so
>> the application sees a delta busyness of zero.
>>
>> In order to fix the issue,
>> - reset the running state of engines in busyness_park outside of the
>>   throttling code.
>> - when busyness is queried and PM wakeref is not active, do not
>>   calculate active engine time since we do not expect engines to be
>>   active without a wakeref.
>>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13366
>> Fixes: cf907f6d2942 ("i915/guc: Ensure busyness counter increases motonically")
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++++++++++-
>>  1 file changed, 17 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 12f1ba7ca9c1..b7a831e1fc85 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1372,7 +1372,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>>  	}
>>
>>  	total = intel_gt_clock_interval_to_ns(gt, stats->total_gt_clks);
>> -	if (stats->running) {
>> +	if (wakeref && stats->running) {
>
>do you really need to check this wakeref if you are now setting running to
>false earlier?

Maybe not. I did try it without this wakeref and that passes too.

>
>And if we do, what about moving this entire block to inside the
>existing if (wakeref) ?!

Yes, looks like I could move it inside the existing wakeref check block, 
but I think I will drop this check since running is being set to false 
in the gt_park code path.

>
>>  		u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
>>
>>  		total += intel_gt_clock_interval_to_ns(gt, clk);
>> @@ -1469,6 +1469,19 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
>>  	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>  }
>>
>> +static void __update_guc_busyness_running_state(struct intel_guc *guc)
>> +{
>> +	struct intel_gt *gt = guc_to_gt(guc);
>> +	struct intel_engine_cs *engine;
>> +	enum intel_engine_id id;
>> +	unsigned long flags;
>> +
>> +	spin_lock_irqsave(&guc->timestamp.lock, flags);
>> +	for_each_engine(engine, gt, id)
>> +		engine->stats.guc.running = false;
>> +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>> +}
>> +
>>  static void __update_guc_busyness_stats(struct intel_guc *guc)
>>  {
>>  	struct intel_gt *gt = guc_to_gt(guc);
>> @@ -1619,6 +1632,9 @@ void intel_guc_busyness_park(struct intel_gt *gt)
>>  	if (!guc_submission_initialized(guc))
>>  		return;
>>
>> +	/* Assume no engines are running and set running state to false */
>> +	__update_guc_busyness_running_state(guc);
>> +
>
>Why not to move the entire __reset_guc_busyness_stats earlier then?

Not sure what you mean by __reset_guc_busyness_stats because that is 
only called when reset is in progress.

Do you mean __update_guc_busyness_stats()?

Only the running state needs to be updated for every gt_park. Updates to 
other stats can be throttled based on the jiffies code in 
intel_guc_busyness_park().

Thanks,
Umesh

>
>>  	/*
>>  	 * There is a race with suspend flow where the worker runs after suspend
>>  	 * and causes an unclaimed register access warning. Cancel the worker
>> --
>> 2.34.1
>>
