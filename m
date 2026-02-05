Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHTnC11HhGk/2QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:31:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D814EF705
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:31:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A827710E7E5;
	Thu,  5 Feb 2026 07:31:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eGC2g1gS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA9FE10E7E6;
 Thu,  5 Feb 2026 07:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770276697; x=1801812697;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bt+yTdpgWK/0aobfp6ehCMCc7yINANbpfGyva5z95s8=;
 b=eGC2g1gSUtzP4/NyY+Nde+YbZM1L0333GiMscidivlXtQWl8orHz4Yt6
 1NE8aWuZNKt20hmOArnYeUCF5CZFcNWjtuNVDLJyqkOPZm9/7JfCKrKZF
 AB1S3FJTQq/O/yOm3lsiYPG+UFH6zUcJjZ0gmBeLgx0uO0+tCXZ/nRkPT
 MfcwmzMZy0ucR/uk99rx41rFtWLb1khN20mTEe/22yBida9oJ39UM0HOy
 46mtsu4QcUINvo+QwghUJhAWX/D+eGq4NOAYf3JsNxeLqO13Onnhp69S/
 y07Nud3Idv1CRmIulX5J+VI7AkyZELp2HrhSweUz6PQhts8AfZlSmGO7N g==;
X-CSE-ConnectionGUID: lTi7WjBWTiu0BCljTDjmAQ==
X-CSE-MsgGUID: DccieB+iRyuwYPvy6DAH1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71507706"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71507706"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:31:37 -0800
X-CSE-ConnectionGUID: L6IxMxy+RJ61kA6miCd0KA==
X-CSE-MsgGUID: 5IfioxbXRdWGiydyC9Jlsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="210213428"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:31:37 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:31:36 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 23:31:36 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.3) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:31:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dhoCizJK7w+40k0Duqt0/4zm0c7+poR0tqOttUblkD4SMoXWTUZR4yarstp/+eVdspDU8g5M33Owayt+o/Yk1ZD8sI+iRDXApa426C7OF0Zg2NdrUctP4OBSJgPEevnCiI3EowBXAjYF+OpQLXk8DUI950wZNwfNBhryoje11GYBAjspVWXI3dmPtRKnADxCSKZakUZ0uZGwFQs/Iw6vneG2OU0NapOsVpKxSsQ/BuATmLWhjPb5Aqn1nacCQJDW2UTG1vp8PbrwsR40OsGuZDTbwx59E+2t3+3LrXpSO4rJg4cHTbtpsRR6LcsQH30sNegcZuGEvB7CpclzwanMOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bt+yTdpgWK/0aobfp6ehCMCc7yINANbpfGyva5z95s8=;
 b=ipw28R2wT8Oz9pKLRpItUSf/FjG82TmiiqeIqW5vaS/Sco/u8f6RZQmP/SCZro6v5CkJOZIOt4GgZBwwZO/U8R9adcQKUjyRyiQgGkrgN8d5crCZevzDE8G2qdVBVghRz9FBqj7DHBIpUQgI4/iGDAu3MUxxQuKbcZLIPovhxzifHFhNwLKFgFWNzekEqoEmpbx4ghTMuCp0G2fZDJpy3gd99MJ7Sr/Xv7nrKiBbcyKPwsW1bKZedaBgBmlRX8TWizCvI9BXUy5j7l/Y53W1YBVZDeMQXziXmjspjoF0MOjlwIND1orzeI6EC3YX4rA0Qn6FHQGxe7QYkLqOQt7wAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Thu, 5 Feb
 2026 07:31:34 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 07:31:33 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v3 11/19] drm/i915: Remove i915_reg.h from i9xx_wm.c
Thread-Topic: [v3 11/19] drm/i915: Remove i915_reg.h from i9xx_wm.c
Thread-Index: AQHckWIP+Bvhtldb00CiXfdOcTdtALVw8jkAgALNgNA=
Date: Thu, 5 Feb 2026 07:31:33 +0000
Message-ID: <DM4PR11MB6360B4B7053F5BD1289026BFF499A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-12-uma.shankar@intel.com>
 <fc4500752f2a2571d1a65a9023b67880a956e01d@intel.com>
In-Reply-To: <fc4500752f2a2571d1a65a9023b67880a956e01d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB7965:EE_
x-ms-office365-filtering-correlation-id: f597213c-e145-4dbb-0272-08de648896a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Vm5KMnNseWg3SzIvY0YyQWZscDVHY0dKY0dFTTRHaW9mV1ZvN016QW5KQlpT?=
 =?utf-8?B?TTFoM3hTNFhTMEdwblhHQlR2TDBmcWd4OVdueHl3d093L0tETG9pc252OEgz?=
 =?utf-8?B?YUVtUUMvRkxmTXNjRmJLSTcvKzZoZ3pBc0pET3JVWVRBZVFMODJlZWxaL0dK?=
 =?utf-8?B?RkZOM0dlWEEvUlFhenhmMnZmSDJLdzJ3V05EOUs4WkpaeFVtVzl1V2YyblVW?=
 =?utf-8?B?RitRdkc3R1lFd016aEhMalVFNUVXMVlreDBmRFBIZExGNSt4MGVrSHcxbmk5?=
 =?utf-8?B?S3VWZ1BRSWlYZ0pZRGdaRUFzb2hrZWhLNEVxNXZpTVJzN3FRQjJ0R29KRllG?=
 =?utf-8?B?Q1lnKzJ0bHRHUk1qUitJR28yQ3VvNUlTRHdSTmtHaXk1V3ZkcGJmNUNpWDhV?=
 =?utf-8?B?K1JxdHNuTEVadzJKODlhSnlCOCtxSDRQOU03WGJLbnYvMDN5SmtXZk5NM1Fs?=
 =?utf-8?B?ZmhMTzNjbm54cisrMXJvODBHVEt1cTFLV09VVU4va2JLSkw5akd4SmhYSnpL?=
 =?utf-8?B?UzB1Y0oxYitkNXVhT3I2a2pydEdDSGlUOXJTd0xOYjZJLzRoSGtFWUI5ZjBs?=
 =?utf-8?B?a1YzNzlnVnNrczBvb1k4TE5DYll1bTJKN3RjeFFGSjV2K1MybEVvaEwra0N5?=
 =?utf-8?B?YkFuMnh6QzR0QmpDcVNpY2owQlpwMlRrM0NOWGdMVUd1aWJ1ZERyK29KNXIv?=
 =?utf-8?B?V3hXZTgxYkI3Y0J2OVUwa1ZObjZ5YjJpZWNlemFFbTA5TCtnVVhnQ1NsLzZS?=
 =?utf-8?B?M1htS2h6MU1IOHZnSWdkRk1IRnI3NnlDaWN0M1NmYjVubUdrRFE2N2JvdzFT?=
 =?utf-8?B?dkIrZVUwQXpoY05rU0RGd0dSUGJEWTVuU1dnZ3NuSzdLTndyUUZxcVY3Undw?=
 =?utf-8?B?WnhLVTcxTzB3eFRLYzYrUnBmYmxwenJMRXpseUNVZXFldjRyN3N5UDVjNzMy?=
 =?utf-8?B?cjJHSlNzY3NpaUh6T0QvSTk4bFZQZFZsQ2cxSkRVSmNqVFdOQ1ZaOWxYK3Ix?=
 =?utf-8?B?bnYvakpqY2lTYWhWWEVDR3JaenNHb1dvdDY4RW5qWmZxdzVDYTgwcWhJM1FN?=
 =?utf-8?B?MEJEcTRVSDRObkUwYXNXTWlBdUxGT1F3SGF3a1I2KzR1MjFtUktsYksrdmdz?=
 =?utf-8?B?TW9NSk9la3FjT0xoVDZGUmF6Rjl4d3dRWUNldVBtVlptd1FMZE01d3pUTGtR?=
 =?utf-8?B?dVdkaWJXNDgrb2pZSnBQSHBlNldIZ1VPcmxHTGJLWkJ2YlRNVWh5SURVcGpH?=
 =?utf-8?B?cDA1VU9vbkphM3ljQ2ZxN3Bub3RyVjFDbVpBMGMzbmNwVmtVWnVQVldGVVU3?=
 =?utf-8?B?TjNZNnlmZ2p1eFlpc1pkWk5iTFUvaEFkTWNBZkVLZm56RGZqTFFkVk93YzZv?=
 =?utf-8?B?ZXpmcHlIQUVycGo0WU11YnRaTWZZUzB6czVmZTN2QkUxQXllQlQreUI4RXFG?=
 =?utf-8?B?QlpKWGl4WGJYR0RlaWlrVzNOTktWRENUWHBBeWxROUJmQlNJeWpvSzFuMi9n?=
 =?utf-8?B?Y0xCK2pCVXQ4ZU1WKzgwRWxkNEFieTVxUDN0RUdMZWxZVE5mMnJTY08rYkV0?=
 =?utf-8?B?eGdQNG16TzZZU0orOGdmVGdsQ0Z5TUI4dXR5Mkt1WERwejhzckF4elp5ZUJs?=
 =?utf-8?B?WjltRVlLeUhFQXRWQjRncHpmUEwxbFpXTktvbW9zb3J1RkN6Rjh5RUc2UXps?=
 =?utf-8?B?L2N1eTNrRlZ4NWI3TEpORWZwY0x0L2lKZWxSYkdrLzFvL0lCRnk3YjBjYjN0?=
 =?utf-8?B?NzVsa0oyOUhxeWllUThZcWVBbFFHSXlFdmg3TmIrU1ZYWGdZY1gvYXVyTmla?=
 =?utf-8?B?cmFYMkd2Z29NL0tsTTFLVnhhREMzcllQSGV6cmZwUGIyMDdrckhOSDhGbGJE?=
 =?utf-8?B?S2Jvc1FtMjl0a3lWalZrVGdnYS9SZXpXVEo0U1dGV2tBTTR3S0c4dDVRRlpm?=
 =?utf-8?B?bnJycmVDN0h4MG52ZUpHWnJZQmxZUTd4YWVLdDVucFlBWFFHeEgxV1JJL3Er?=
 =?utf-8?B?K21uZ0pzMVV0ZGxnNnJmeklRczM5c2hlYW91OFFxeTNPaDh0RlpxbUFkbWZU?=
 =?utf-8?B?cGFRNGJrdXloNktjQ2ZuZDhrRHF6MWd2R29SRDV4anIvK2Npc3JzN2ZyNFZo?=
 =?utf-8?B?RGRlMERJdit1Z3U1bEpJU1Y5OVEyZnpUbW5rYlIyUXlrL1l4R09lQ2dveDFm?=
 =?utf-8?Q?y8bafJBKRFuQhgL9PpMrl/A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDFNQldtdXNKNmpONnB3NXFIa1JIOWJRVGowRFRmclhPUWt2cG1MczBLRWtP?=
 =?utf-8?B?RzZDc0M2SkxDL0tsZG9WOEpJY3E2VkxGM2xMUGRuZnE1dTdXVTZLUzhBMVNn?=
 =?utf-8?B?WHdySFpMYkRtVmhFN0N6dWVGaHBmNVEyZlltZ1RPRkMrMVNpQWpIZWs2SWFK?=
 =?utf-8?B?VXZ3c1QwWWVJSGpVTVBlakNBaFU3TjlSR3hTMTIrYXZGT1E3Z2RMd3dPVzdz?=
 =?utf-8?B?eDVrQlJNY3ZreG9RWXNXUENIa3A3TGpBeDRGclRTaVBVc3VBaFVYQmhhUHZQ?=
 =?utf-8?B?dXpzYlFRQ24xMU1NcHl4Q3ErNnZ1bDBqdHVWaE1VTElvalJFMkJMcEZXcnow?=
 =?utf-8?B?d1RzWmFFVTE4WlEwakx5cThtdk96ZGRGaHhNMnhLcklUMEk2WERacTJNZFNt?=
 =?utf-8?B?U2R0OGQwYmxLOHB2dkhKL3BTd1p3VXNwSE92YWIwTlBWVlNEQ0YrYkRHTUl0?=
 =?utf-8?B?WXNLSEQxMFVJRHllSERlYzZSSlNFWFcvOEk1cTQzN1JFdDlQaHVHc0F5b0pI?=
 =?utf-8?B?c3dWbTFibWp1ZlRoaG5lRXV1YUpVRkUzdHVrNmw5M2x2aGFYTzZSM3ZTcTZa?=
 =?utf-8?B?cjRFd0NBV2hJa2huWGJmbXd4ckdubHdYTTZjaW1Eeko4WXpWU0ppZnU2UEV1?=
 =?utf-8?B?a3pEaEIvdVlDYTVMM2JHNlZqME82cktqSFQrd1RiWHdjNFdYSlhIano2YzZ0?=
 =?utf-8?B?VHRUVVg4L3l5L0RNbnAyZ0lGdTRlNlE3UDNMWVhPRFhLNjNFazVoOEx0UlFQ?=
 =?utf-8?B?SmYwMDl0VTlxclh3bDlrSXNHbUxJTXFoR3h2ZDR5WSt3OW1qYzVmanBwTGs5?=
 =?utf-8?B?VWttbEhOeHgyNHFMbms1UVNobXdGM1JETGM1UUs0ZytYbWdNY3dBcXNBSnZq?=
 =?utf-8?B?NThzZTI2N0tqdnlBMlYza0laSnJsL2orUm9Ia2pZRVlBNW80SUY4bzkrSU9I?=
 =?utf-8?B?Wk42eStZdGkwMnZlTHJORHRmNGY4eXFETnYzazF0RmdNY3ZNMWhsdXlTcG1U?=
 =?utf-8?B?eGFjUzlHY3Z2SDlhOHBldWRWekI1eEpBTUZXTkRUYkswd01rZzE2TFlERUt5?=
 =?utf-8?B?ZDdPem9jQkNSMHZkeHpUaWc1d2dVeTl1NHN6eUd5VHdkSEZSS0wrY2FnK3Jp?=
 =?utf-8?B?dVQ4Nm5uTkY2S3VkRHJIV0RHSjlhUVE1VnkxeWJHMHBOVDJycjcxMW8zWGFr?=
 =?utf-8?B?R1dLcEpuVTB6V3dtUGoybEc0Yjk0Y0dOT1Ivd09NeWo4QkdHSmFpd0xYaXhq?=
 =?utf-8?B?RzhoOFVlTlB5TWhJajN4MHhUVWdtMTg5anRFbFNjVWdoNFdZODZKR1BUNmJi?=
 =?utf-8?B?MlpFVGJKUVJ0VFlkYjBvWTJ4Ym55V1lsdlh5cWF6ekQ4Q0M4SkZib1ZOQmdl?=
 =?utf-8?B?NytMTDRJMU1ZSFY1UHpidzZFZmhwUUNNS1pWMnllYVlkcmFXS2lRM3ZpVWhU?=
 =?utf-8?B?VTBqbkZaZjZ0RHB3NG1yZTlpTlVXYTMvWU1Yem9kc2U5TTFiUFV6c0Z3WWJv?=
 =?utf-8?B?QnR1TUtZa042bFpTbDQ0SGhFM0hNdTNBaU4yb2x5dG52TTRwYjRJVCttL2ti?=
 =?utf-8?B?cGJVKzdzNTdXNWxkN3pvenNXcmltKzgzVDByM3dXM1pmREhTMDZNK28vV3g1?=
 =?utf-8?B?aEtnQzgrSUZWcHZoZHZEenBSd0ZlaWFsU0Y3QjB6ZmNxSDcydVVTSUdPaWhL?=
 =?utf-8?B?U0t5UEJXWGZlNllMZm1uOGg4bkNZRmZkbkZQWWVhUit0cWhQaDI1Q09PL3NQ?=
 =?utf-8?B?eklJMjBxTkVqOGxXUWxqYTBHM09KRFREaXpsUjgzL21QeFFxUkl0OWdVNXNq?=
 =?utf-8?B?SVprRlpjZVM2c3FxQ20wem5vSjAxT2pTSmdlWVhyNWw3b1NESzFQZzhVTjFQ?=
 =?utf-8?B?Wk9JNkJjK0J4b1BpdU9CbUFDU3k2eGhObWNwcWFwenE0QzE0bDZHWGViTW1O?=
 =?utf-8?B?dEFSMklOVXFNUzdHRklPSHVuT3V5bEZWdTcrcG5zVFdqeitGZlNtajFzNU84?=
 =?utf-8?B?ZDNHVFJuOVdmUFpZR3VDK3pNc1ZWVjdYZ2QrOG1QTC9taThWS3pranhyd0Ju?=
 =?utf-8?B?V21UTWlydlVOWnBjMUhkTzBCZTQ3SWJzZWgzeGF0OHJsYzN6TnA1dUxqbDIw?=
 =?utf-8?B?QVZ5aTlTejdLaEF0eTZCQUxLY1NvWHpQWXp2dGxuQ1NNOGhKTms2V2FVclhU?=
 =?utf-8?B?emQyeE0zZUk0UG5RQWRteGNVSWt3YkRWeUZCOFRVOU1jTnlFVXNkMHRVYzJu?=
 =?utf-8?B?Z0daeE9GTXpqbGpZeDc5WUtYMHMzSXEvZVU3SG9DS091VFdWQUFMcDUrcTZu?=
 =?utf-8?B?M2g4dThQUnczNFU2blRqeFRVU3RHd3ZKZFBHTGVEODl4Tzc3QzkwUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f597213c-e145-4dbb-0272-08de648896a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 07:31:33.8393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RRTvJpTQbCcb+nf2xDR/jaEbAZm6Gb9lqXIZFDJXdJ9rqdVA6V0/+YwBRdCnMdcUd3Pa7znP4CxMWnBWsR+boQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8D814EF705
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEZlYnJ1YXJ5IDMsIDIwMjYg
NjoxMiBQTQ0KPiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gQ2M6IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOyBTaGFua2FyLCBVbWEg
PHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFt2MyAxMS8xOV0gZHJtL2k5
MTU6IFJlbW92ZSBpOTE1X3JlZy5oIGZyb20gaTl4eF93bS5jDQo+IA0KPiBPbiBGcmksIDMwIEph
biAyMDI2LCBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBN
b3ZlIEZXX0JMQ19TRUxGIHRvIGNvbW1vbiBoZWFkZXIgdG8gbWFrZSBpOXh4X3dtLmMgZnJlZSBm
cm9tDQo+ID4gaTkxNV9yZWcuaCBpbmNsdWRlLiBJbnRyb2R1Y2UgYSBjb21tb24gaW50ZWxfZ21k
X21pc2NfcmVncy5oIHRvIGRlZmluZQ0KPiA+IGNvbW1vbiBtaXNjZWxsYW5lb3VzIHJlZ2lzdGVy
IGRlZmluaXRpb25zIGFjcm9zcyBncmFwaGljcyBhbmQgZGlzcGxheS4NCj4gPg0KPiA+IHYyOiBJ
bnRyb2R1ZSBhIGNvbW1vbiBtaXNjIGhlYWRlciBmb3IgR01EDQo+ID4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uYyAgICAgICAgfCAgMiArLQ0KPiA+
ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmggfCAgOCArKysr
KystDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8
IDIwICstLS0tLS0tLS0tLS0tLS0tLQ0KPiA+ICBpbmNsdWRlL2RybS9pbnRlbC9pbnRlbF9nbWRf
bWlzY19yZWdzLmggICAgICAgfCAyMSArKysrKysrKysrKysrKysrKysrDQo+ID4gIDQgZmlsZXMg
Y2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pICBjcmVhdGUgbW9kZQ0K
PiA+IDEwMDY0NCBpbmNsdWRlL2RybS9pbnRlbC9pbnRlbF9nbWRfbWlzY19yZWdzLmgNCj4gPg0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3dtLmMNCj4gPiBpbmRleCAz
OWRmY2ViNDM4YWUuLjI0Zjg5OGVmYTlkZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaTl4eF93bS5jDQo+ID4gQEAgLTYsOCArNiw4IEBADQo+ID4gICNpbmNsdWRlIDxs
aW51eC9pb3BvbGwuaD4NCj4gPg0KPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0KPiA+
ICsjaW5jbHVkZSA8ZHJtL2ludGVsL2ludGVsX2dtZF9taXNjX3JlZ3MuaD4NCj4gPg0KPiA+IC0j
aW5jbHVkZSAiaTkxNV9yZWcuaCINCj4gPiAgI2luY2x1ZGUgImk5eHhfd20uaCINCj4gPiAgI2lu
Y2x1ZGUgImk5eHhfd21fcmVncy5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfYXRvbWljLmgiDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9yZWdzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9yZWdzLmgNCj4gPiBpbmRleCAwMTY0ZGNiYjcwOWYuLjY4MDAyMGU1OTBjYiAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5o
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Jl
Z3MuaA0KPiA+IEBAIC00LDYgKzQsNyBAQA0KPiA+ICAjaWZuZGVmIF9fSU5URUxfRElTUExBWV9S
RUdTX0hfXw0KPiA+ICAjZGVmaW5lIF9fSU5URUxfRElTUExBWV9SRUdTX0hfXw0KPiA+DQo+ID4g
KyNpbmNsdWRlIDxkcm0vaW50ZWwvaW50ZWxfZ21kX21pc2NfcmVncy5oPg0KPiANCj4gUGxlYXNl
IG9ubHkgaW5jbHVkZSB3aGVyZSBuZWVkZWQuDQoNClN1cmUsIHdpbGwgdXBkYXRlLg0KDQo+ID4g
ICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JlZ19kZWZzLmgiDQo+ID4NCj4gPiAgI2RlZmluZSBH
VV9DTlRMX1BST1RFQ1RFRAkJX01NSU8oMHgxMDEwMEMpDQo+ID4gQEAgLTMxMTksNiArMzEyMCwx
MSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsNCj4gPiAgI2RlZmluZSAgIE1UTF9UUkFTX01BU0sJ
CQlSRUdfR0VOTUFTSygxNiwgOCkNCj4gPiAgI2RlZmluZSAgIE1UTF9UUkRQUkVfTUFTSwkJUkVH
X0dFTk1BU0soNywgMCkNCj4gPg0KPiA+IC0NCj4gPiArI2RlZmluZSBGV19CTEMJCV9NTUlPKDB4
MjBkOCkNCj4gPiArI2RlZmluZSBGV19CTEMyCQlfTU1JTygweDIwZGMpDQo+ID4gKyNkZWZpbmUg
RldfQkxDX1NFTEYJX01NSU8oMHgyMGUwKSAvKiA5MTUrIG9ubHkgKi8NCj4gPiArI2RlZmluZSAg
IEZXX0JMQ19TRUxGX0VOX01BU0sgICAgICBSRUdfQklUKDMxKQ0KPiA+ICsjZGVmaW5lICAgRldf
QkxDX1NFTEZfRklGT19NQVNLICAgIFJFR19CSVQoMTYpIC8qIDk0NSBvbmx5ICovDQo+ID4gKyNk
ZWZpbmUgICBGV19CTENfU0VMRl9FTiAgICAgICAgICAgUkVHX0JJVCgxNSkgLyogOTQ1IG9ubHkg
Ki8NCj4gPg0KPiA+ICAjZW5kaWYgLyogX19JTlRFTF9ESVNQTEFZX1JFR1NfSF9fICovIGRpZmYg
LS1naXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gaW5kZXggNmNiNzJlNmU5MDg2Li5iNGI3NDllNTJi
NWIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBAQCAtMjYsNiArMjYs
NyBAQA0KPiA+ICAjZGVmaW5lIF9JOTE1X1JFR19IXw0KPiA+DQo+ID4gICNpbmNsdWRlIDxkcm0v
aW50ZWwvaW50ZWxfcGNvZGUuaD4NCj4gPiArI2luY2x1ZGUgPGRybS9pbnRlbC9pbnRlbF9nbWRf
bWlzY19yZWdzLmg+DQo+IA0KPiBQbGVhc2Ugb25seSBpbmNsdWRlIHdoZXJlIG5lZWRlZC4NCg0K
V2lsbCBkby4NCg0KPiA+ICAjaW5jbHVkZSAiaTkxNV9yZWdfZGVmcy5oIg0KPiA+ICAjaW5jbHVk
ZSAiZGlzcGxheS9pbnRlbF9kaXNwbGF5X3JlZ19kZWZzLmgiDQo+ID4NCj4gPiBAQCAtMzk0LDI0
ICszOTUsMTAgQEANCj4gPg0KPiA+ICAjZGVmaW5lIEdFTjJfRVJST1JfUkVHUwkJSTkxNV9FUlJP
Ul9SRUdTKEVNUiwgRUlSKQ0KPiA+DQo+ID4gLSNkZWZpbmUgSU5TVFBNCSAgICAgICAgX01NSU8o
MHgyMGMwKQ0KPiA+IC0jZGVmaW5lICAgSU5TVFBNX1NFTEZfRU4gKDEgPDwgMTIpIC8qIDkxNUdN
IG9ubHkgKi8NCj4gPiAtI2RlZmluZSAgIElOU1RQTV9BR1BCVVNZX0lOVF9FTiAoMSA8PCAxMSkg
LyogZ2VuMzogd2hlbiBkaXNhYmxlZCwNCj4gcGVuZGluZyBpbnRlcnJ1cHRzDQo+ID4gLQkJCQkJ
d2lsbCBub3QgYXNzZXJ0IEFHUEJVU1kjIGFuZCB3aWxsIG9ubHkNCj4gPiAtCQkJCQliZSBkZWxp
dmVyZWQgd2hlbiBvdXQgb2YgQzMuICovDQo+ID4gLSNkZWZpbmUgICBJTlNUUE1fRk9SQ0VfT1JE
RVJJTkcJCQkJKDEgPDwgNykgLyoNCj4gR0VONisgKi8NCj4gPiAtI2RlZmluZSAgIElOU1RQTV9U
TEJfSU5WQUxJREFURQkoMSA8PCA5KQ0KPiA+IC0jZGVmaW5lICAgSU5TVFBNX1NZTkNfRkxVU0gJ
KDEgPDwgNSkNCj4gPiAgI2RlZmluZSBNRU1fTU9ERQlfTU1JTygweDIwY2MpDQo+ID4gICNkZWZp
bmUgICBNRU1fRElTUExBWV9CX1RSSUNLTEVfRkVFRF9ESVNBQkxFICgxIDw8IDMpIC8qIDgzMCBv
bmx5ICovDQo+ID4gICNkZWZpbmUgICBNRU1fRElTUExBWV9BX1RSSUNLTEVfRkVFRF9ESVNBQkxF
ICgxIDw8IDIpIC8qIDgzMC84NDUNCj4gb25seSAqLw0KPiA+ICAjZGVmaW5lICAgTUVNX0RJU1BM
QVlfVFJJQ0tMRV9GRUVEX0RJU0FCTEUgKDEgPDwgMikgLyogODV4IG9ubHkgKi8NCj4gPiAtI2Rl
ZmluZSBGV19CTEMJCV9NTUlPKDB4MjBkOCkNCj4gPiAtI2RlZmluZSBGV19CTEMyCQlfTU1JTygw
eDIwZGMpDQo+ID4gLSNkZWZpbmUgRldfQkxDX1NFTEYJX01NSU8oMHgyMGUwKSAvKiA5MTUrIG9u
bHkgKi8NCj4gPiAtI2RlZmluZSAgIEZXX0JMQ19TRUxGX0VOX01BU0sgICAgICBSRUdfQklUKDMx
KQ0KPiA+IC0jZGVmaW5lICAgRldfQkxDX1NFTEZfRklGT19NQVNLICAgIFJFR19CSVQoMTYpIC8q
IDk0NSBvbmx5ICovDQo+ID4gLSNkZWZpbmUgICBGV19CTENfU0VMRl9FTiAgICAgICAgICAgUkVH
X0JJVCgxNSkgLyogOTQ1IG9ubHkgKi8NCj4gPiAgI2RlZmluZSBNTV9CVVJTVF9MRU5HVEggICAg
IDB4MDA3MDAwMDANCj4gPiAgI2RlZmluZSBNTV9GSUZPX1dBVEVSTUFSSyAgIDB4MDAwMUYwMDAN
Cj4gPiAgI2RlZmluZSBMTV9CVVJTVF9MRU5HVEggICAgIDB4MDAwMDA3MDANCj4gPiBAQCAtODM0
LDExICs4MjEsNiBAQA0KPiA+ICAjZGVmaW5lICAgS1ZNX0NPTkZJR19DSEFOR0VfTk9USUZJQ0FU
SU9OX1NFTEVDVA0KPiAJUkVHX0JJVCgxNCkNCj4gPg0KPiA+DQo+ID4gLSNkZWZpbmUgRElTUF9B
UkJfQ1RMCV9NTUlPKDB4NDUwMDApDQo+ID4gLSNkZWZpbmUgICBESVNQX0ZCQ19NRU1PUllfV0FL
RQkJUkVHX0JJVCgzMSkNCj4gPiAtI2RlZmluZSAgIERJU1BfVElMRV9TVVJGQUNFX1NXSVpaTElO
RwlSRUdfQklUKDEzKQ0KPiA+IC0jZGVmaW5lICAgRElTUF9GQkNfV01fRElTCQlSRUdfQklUKDE1
KQ0KPiA+IC0NCj4gPiAgI2RlZmluZSBHRU44X0NISUNLRU5fRENQUl8xCQkJX01NSU8oMHg0NjQz
MCkNCj4gPiAgI2RlZmluZSAgIF9MQVRFTkNZX1JFUE9SVElOR19SRU1PVkVEX1BJUEVfRAlSRUdf
QklUKDMxKQ0KPiA+ICAjZGVmaW5lICAgU0tMX1NFTEVDVF9BTFRFUk5BVEVfRENfRVhJVAkJUkVH
X0JJVCgzMCkNCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaW50ZWwvaW50ZWxfZ21kX21p
c2NfcmVncy5oDQo+ID4gYi9pbmNsdWRlL2RybS9pbnRlbC9pbnRlbF9nbWRfbWlzY19yZWdzLmgN
Cj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMzc3ZjRl
MzgzNjk5DQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2luY2x1ZGUvZHJtL2ludGVsL2lu
dGVsX2dtZF9taXNjX3JlZ3MuaA0KPiA+IEBAIC0wLDAgKzEsMjEgQEANCj4gPiArLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLw0KPiA+ICsvKiBDb3B5cmlnaHQgwqkgMjAyNiBJbnRl
bCBDb3Jwb3JhdGlvbiAqLw0KPiA+ICsNCj4gPiArI2lmbmRlZiBfSU5URUxfR01EX01JU0NfUkVH
X0hfDQo+ID4gKyNkZWZpbmUgX0lOVEVMX0dNRF9NSVNDX1JFR19IXw0KPiANCj4gU2hvdWxkIGJl
IFJFR1NfSCB0byBtYXRjaCB0aGUgZmlsZSBuYW1lLg0KDQpTdXJlLCB3aWxsIGZpeC4NCg0KUmVn
YXJkcywNClVtYSBTaGFua2FyDQoNCj4gPiArDQo+ID4gKyNkZWZpbmUgRElTUF9BUkJfQ1RMCV9N
TUlPKDB4NDUwMDApDQo+ID4gKyNkZWZpbmUgICBESVNQX0ZCQ19NRU1PUllfV0FLRQkJUkVHX0JJ
VCgzMSkNCj4gPiArI2RlZmluZSAgIERJU1BfVElMRV9TVVJGQUNFX1NXSVpaTElORwlSRUdfQklU
KDEzKQ0KPiA+ICsjZGVmaW5lICAgRElTUF9GQkNfV01fRElTCQlSRUdfQklUKDE1KQ0KPiA+ICsN
Cj4gPiArI2RlZmluZSBJTlNUUE0JICAgICAgICBfTU1JTygweDIwYzApDQo+ID4gKyNkZWZpbmUg
ICBJTlNUUE1fU0VMRl9FTiAoMSA8PCAxMikgLyogOTE1R00gb25seSAqLw0KPiA+ICsjZGVmaW5l
ICAgSU5TVFBNX0FHUEJVU1lfSU5UX0VOICgxIDw8IDExKSAvKiBnZW4zOiB3aGVuIGRpc2FibGVk
LA0KPiBwZW5kaW5nIGludGVycnVwdHMNCj4gPiArCQkJCQl3aWxsIG5vdCBhc3NlcnQgQUdQQlVT
WSMgYW5kIHdpbGwgb25seQ0KPiA+ICsJCQkJCWJlIGRlbGl2ZXJlZCB3aGVuIG91dCBvZiBDMy4g
Ki8NCj4gPiArI2RlZmluZSAgIElOU1RQTV9GT1JDRV9PUkRFUklORwkJCQkoMSA8PCA3KSAvKg0K
PiBHRU42KyAqLw0KPiA+ICsjZGVmaW5lICAgSU5TVFBNX1RMQl9JTlZBTElEQVRFCSgxIDw8IDkp
DQo+ID4gKyNkZWZpbmUgICBJTlNUUE1fU1lOQ19GTFVTSAkoMSA8PCA1KQ0KPiA+ICsNCj4gPiAr
I2VuZGlmDQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
