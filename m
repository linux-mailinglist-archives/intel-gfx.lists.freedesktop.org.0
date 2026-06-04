Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pO0uGXiRIWo6JAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:53:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE31641191
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:53:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="fX7jb8z/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8516112837;
	Thu,  4 Jun 2026 14:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A77112837;
 Thu,  4 Jun 2026 14:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780584821; x=1812120821;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=TuVuosMCRDDazxGYdQgcEoqvotbb66AzZucQ9Kp5TNM=;
 b=fX7jb8z/udQRYGDdzdYtZn+cw3NP/KjEmAC2sp64i678OeIdcCglG2US
 DO4TGqDuKtkd2xkyLzZKQZLhm8J/p7LBmYCRnOhwmHEJcVe8ezCMHCAuS
 KGkDwE0ErZhlc12Ybg0oZ040DlZmZc3GS4TXPjK9Ijme4tj7rBBsBoCcP
 chRA9TARvtX5+PuifTc8AWBD3Pd+W4iSQCu6PR0H++Nqj3Ioes9+GhOVv
 MjHi7BElS0M9qA2Yi6EmZzmhTxfS7bQvwM5uSwhB6IukqmFMb3tyGDQRF
 0KFo/E+8SoTcE7hw221sYaynakq7LXLIrgvY65i8bi81W8SfEP4D6SBcq Q==;
X-CSE-ConnectionGUID: vQphiSGXTn6eA17yogeBpg==
X-CSE-MsgGUID: r9HtS4JDQjyV19heam3oHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="104074461"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="104074461"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:53:40 -0700
X-CSE-ConnectionGUID: Is81wiQuTpmfkGasnZ2aIQ==
X-CSE-MsgGUID: kd8ve1ETSvGBQReXyQKYIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="249660593"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:53:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:53:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 07:53:39 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:53:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PSeik0JlRrjvAaJk22w57JwqYSxcebpz4kOhHqowmLTk9rfs9/H9lo14ohxH0JR9jTbFs40qszEjDZuHboIa1q1mswIZItsG0iQj1IHAI1XpTVtQ/eSNu3qXIUevpO/Tx7P1ZCRWMRCDLSV8fpJ2E1/KjYLcstu5ZdvnDS7RicDtmCw34jyFN0/X1sYY6dMnYfTi4mpbMtBoygyp8C3TpDafh6AmN5udaeDoYziVdKGrE+M1M/dQCraTZ5aDbzqfDbf24YeOJ+iQpdYry6ooPUEJY3LzuFoLLDemx8BJgzTSxd6wUhJCdNMPMDBj5vHhrXiuv3TGLz8S+DYKfp/56w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TuVuosMCRDDazxGYdQgcEoqvotbb66AzZucQ9Kp5TNM=;
 b=fY9TOxZyHDkok85yWanIosob9XhH68VeXRAxhBgtiQbpZGfQefht7kW70ZaLEUVn2FHJMnQWrpWzmgX8MDc2obj1VkxGoIPvyKFf0vrhxj6+OBud+qkkCmMsq1bKuY1L58I3HwTNezhGwL3mKwYggpcwpkrowi4RDu9FfTFv6K+TtHQc8XUsf1XBBOXkPUNrHhTiOBXrKz4Hpi4n9KxIZ7OREByIHRM05LUYkSfkon8IUAECaY+EL+FUpcWVY4hjH11wBRGEFc/Gu7lpHEtxS/lbACnEPAVDV++3oPVV/Nsrzt+DlD4TOvR09A1tiG4cm7otsGa6jTtwPf0Nry65NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SJ5PPF56FDAD370.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::82a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 14:53:31 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 14:53:30 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 06/11] drm/i915/bw: Move num_{qgv, psf}_points out from
 the plane group
Thread-Topic: [PATCH 06/11] drm/i915/bw: Move num_{qgv, psf}_points out from
 the plane group
Thread-Index: AQHc7o8CiBSq2fabJUOddcSTx71GULYuhrGA
Date: Thu, 4 Jun 2026 14:53:30 +0000
Message-ID: <55237bdf9dd00a0b0ec1d4327a4f8b925712177b.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SJ5PPF56FDAD370:EE_
x-ms-office365-filtering-correlation-id: bb6ced59-60d4-49a7-e1b3-08dec2490b29
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|22082099003|18002099003|56012099006|11063799006|4143699003|38070700021;
x-microsoft-antispam-message-info: kr9lX7Mxh2KZijhwouPnr2NlOsZM7+YDXG/BW3OB03l+0yjk0bGnExim9DRltomFsUyDu8Lan7jRWavC1P+ZtX+HFCdUIsMqyICsjubvUipG9oyuHBv6iRTHaNcf0Ao2KfnLCXjJycmDfHe7npeft9YlCwB78uCu/O7DshfPLpDgMS7sK6hmaCqQRI3ejYzJA273cCni/S74Jnaybb9v5oXkMorpgsB2clOnyp2OVBafm+wxwrEWcnhPskHDZzocBAkdIifQyMZJx9mXc8ghZCL3fxVoSp2cr3Y1HCM3mR6qmOOQsW1E+6VcYoE6B9jd9Sajo6Mc+8yLeA0riy7OW6p/zaXalVr/ZiCzJ4PHS21XLY4dHGZxMCrHYOMIx+6uBnGd55pfuWacIx+EVy+tL2BS3A9sqgCVm+YnBBR46ZqpbfDr86Jrcyal+KeXMWBtzxBFUc77aLIwTb8DRre1yfE9k7dxevyfigqGGe+/UvKjf0NA4gqqcxwNKiAaQVr4ZilZGWz8JvaTf26DN0gEAicDILUiCUD/iCIqHpmaISFaAET4YF76LB4UMnJrJi+b0zoOOfxhYvdNLi0+l4C3jNgADlKqfc9h1iUxHoa9ZHvqFT48UMEIrLR0L+G/6gXKUgDaU1nvLk+mP8h14DVpxbYV/aArzGptaoYSvMKeUaNsFoKbCp7371XhElwvb9lZ0951k8VWPa0USlJT/1jHoGJUOIEYwpSR3BnJbZR+95bUwwTgvtzsDTYzRuT0D9Ju
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(22082099003)(18002099003)(56012099006)(11063799006)(4143699003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0UxMTlRbi9JN3MxTFhDY0k3YjhPSEVjWnRxd3J2Ym1LZzRSMW40OEdUeDZj?=
 =?utf-8?B?dUh4YWpnUXdURWIwTGdsSTJSY29yQUxnMzlxZVYwaXdkZnR0UDlqZjRHRDRE?=
 =?utf-8?B?T3RzeE5KOWdZWlNaUXBHdzV5cUhCaSt1L3RhbThCMTJCa0kyNCsxVmVkNnBv?=
 =?utf-8?B?SCtQSFR6YXYrUEM4OWxxb3NSelpLODRaNGZSVGcxMEt1Zjc0QmdNbkNUbjds?=
 =?utf-8?B?TzNjVGVFUS9zTlA1azNBZ3ZLTEYzZW1ZQ3lWQWkvSkFMWmttbElYWFcrMGRY?=
 =?utf-8?B?c093bHEyRS91Zmp1eFVCd0d4TFFFNDhuaEtSdGI0YVdvamdXdjR5NlhXZFRy?=
 =?utf-8?B?N0lBWWE1ZXJPdmxueCszUTJ6L0FvMEg1emhiN0Y4SVNYNVdqb3czckI3Q0NB?=
 =?utf-8?B?QnUrRlB6S0EvbXZCbE43WThvaUhHeTRyRGFaQ3VYMjdEdjc0RGRLeEU5RnNJ?=
 =?utf-8?B?elJUanluUjJQTUlHSUZyL0xrOVhPQy9Cd20veTV5NmdpWWlqb0lHUldGaWN2?=
 =?utf-8?B?b2ROYzN0cXc2cGZkYjVBcHdobU9rVUphblhaVlc4cG9Ld2hCVm9GYWtRNHVK?=
 =?utf-8?B?bFp1bXFINnRlTmlyTVI3L1E0RS9Cb3BWVVlXYk1Kb2RpR3Q0ZHVvQytsVzV1?=
 =?utf-8?B?OXpONHRjeHlvVXRvSUhWTE1zU1B5NjRQeEwxZGU5TnUwTWYxQStCeGJ4S3Jm?=
 =?utf-8?B?UmFMVVliQUZ2TkszRkhRVHFzUFVxWHU1azYxYjE1Yk5KbkZUMFZTZVg3NExx?=
 =?utf-8?B?VTMwcE5ka1hSai9Pb09taTZnc04rTGV4Tm83ZFI2d2tJWmhzMzRWQlREb1Zi?=
 =?utf-8?B?cUxMTUlMWG1OZmRoVXhGeThVdnY3ZVhTR0ZVd2xqS1UwcnBBRUpsZ2lBUGVW?=
 =?utf-8?B?Q0tQaGJXMEd2QmwwL0JKcHIzZWpQSGdIRDJzeU9lbXptcXh5NXRlNzZRTlE2?=
 =?utf-8?B?c3dPNWcvMm1ubFd0ckFmRjRPa21lU2s2bkFMTms5SjJkbVhzUlNvYUp1QTEv?=
 =?utf-8?B?dElUb1MrOHhrMDRzMjVBZE9NVVZYL296RTQzRFRuU2IraHZWMEk2ZzFHYWVn?=
 =?utf-8?B?OElXbm5Vd1FZMmc3S3VDU05TY3VOQWlOYm41UUN0RWpUVHg5NHg1U3JzU1VJ?=
 =?utf-8?B?dU5ZbzlBMzFmbFlzcDJrQXZob1d5dzBBZEtMWnlkRjJsd1NMZEt5V2pJWmUy?=
 =?utf-8?B?ZVZkMlBsK1FRN09kV2g0aFh0UUthdjNpSjBPd3RMQUJEQjFaaEh1Nm9CUG41?=
 =?utf-8?B?SmlNSW1aM05hc0haRThpcE9kbUR3U1k3cmJSYnY2c25wYWNJejNBcndnMndY?=
 =?utf-8?B?eTlnOTdoREZDais2bFZKSjZQRXRDZW43TTMrMnZZTm5HcERqWXRVSGc1a2FD?=
 =?utf-8?B?NXZhS3ROd01WM1hncFladXdLY084SHBIRG9RNm1lbDc0OWRtdmt6emNjWllB?=
 =?utf-8?B?SElzMTF5NjVyOXI4ZlVtL2xrQWpIV095NnF6Z1RXMkh0NkNwOEd6Q2svZmcw?=
 =?utf-8?B?V2Q0SStiVkdvRHV3NldCOGkxbjlCd3V1NlM5WCtMYkFtWmY3aVhJN2Q5cXB3?=
 =?utf-8?B?RUgwZXlTMjcvazdmYUJVTzZiSUs3SkhoQWhQbjl3LzN6ZmN5TDdOL3phUElt?=
 =?utf-8?B?RUIweTkzUTBKZXBDcXdrWUlkKzVmRXkyRG1TRVI0ZjkwMUJWNlJkKzIvYTM3?=
 =?utf-8?B?Wnk5QXIxNmJTQllJUjU2Y1lGK25MNmRsSWEvdVhXdnBUczllMGFYNFM4Z014?=
 =?utf-8?B?OFk5akdzQUVRZEU3WmZPclRiOU5ZVDRPSjhBZ0YzaXBqTzhybkI5amlPL1ZC?=
 =?utf-8?B?bDFrN2tzZHJ4OTl2TVhiTEJicDdoM1VGcVpmZzU3VURjcHpGUGl4NXlXeGpi?=
 =?utf-8?B?WGdoekZaTnRVWElITCt5N2ZzVnVaR1IvZXowb3o1WlJhQTM1Uk9FZGtEWG43?=
 =?utf-8?B?L0ZTOXVRcFNwK2xsOGtUTDhXK2lUMlZGKyt1TE9Nd3Q2ZWVMV2JYdS9Wb2tO?=
 =?utf-8?B?N3JId1VBS2N5L25RRDJOcXAydFdqSjdIZGlqR3lCYThOTVdFYjFqZU9IRmd5?=
 =?utf-8?B?L1N2YmZwV0lZZTdVVUVRVHFpVkZzMm9jWElzVGJKTVdKNzZGelZJWlhaQkhp?=
 =?utf-8?B?S21tQlByc3MvVWNENmZNK05pdnJWcXg3MCtvUEFhR2l2YkR5c2ZoQnVQZkFK?=
 =?utf-8?B?RnZ6ZEdxMzkvaXgyUFhMTGxrZCtoWkJYTDVWUnNxODlqa1VncTR0VWRZU2tr?=
 =?utf-8?B?dWxBS2R3eDhwRTVnZEUyMnBGNkVjZ3lYd21LWDdiQTA4T1RLZVpNdC96RWJl?=
 =?utf-8?B?ZkY1TkptNEpoamNuYWdCWGFWRjZIMm41dlNVejFZdGtVRXg2Y3NCV1pnVXp1?=
 =?utf-8?Q?V4V74q/BBa0ikGmSy4XucOhqbrMDEEVm6pY4MBxFlmUwL?=
x-ms-exchange-antispam-messagedata-1: E44RfTuAz3zPquRy8ycGxd6ETm3yZZFL828=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E728752EA922724AA478E68576B5936A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: j/o0hfxX5LNKoi/Hl2n6fnYO4i7JIacf45mSZfp6jqE/7rMMf+N2I/5K4Xdcj0fyGB1gSno7afxXqlgjc7C7Oru5pmpCz5cpT+LFnQ9E8XkplBHKNbZcfcRDLgeCD4QW65YNL/Q0G3tAO6quCuDiWKYvnHE3Os43jBni8sphGbzw9RJBVgIS3/xSgl+yVguRWmDNkaw2HSbIfUQc7b6kEGnow6jI+eks+RaIT6/UwmnWstEAs9htjUVGrJecBMKolZjiYClP4tIzBOygMbPWWGRujzdd99SnYCUTKqZSrirYimrlWjpZbLQwvOz2Eh1IwHnQ19TaMkVqjGz9/PgeMg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb6ced59-60d4-49a7-e1b3-08dec2490b29
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 14:53:30.8123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gJpu1Va4WOJRSmKpPLRd1xy5KLflIm/kjma/yS/qtEOcOuXjVHezI4TgCPW0uihaECoBv5lgF2dBbT7qBKSfPbbp+94j7YgUWR9BjUnU/U0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF56FDAD370
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCE31641191

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2Ugb25seSBoYXZlIGEgc2luZ2xlIG51bV97cWd2LHBzZn1fcG9pbnRzIHZhbHVlLCB0
aGVyZSBpcyBubw0KPiBuZWVkIHRvIHJlcGxpY2F0ZSBpdCBpbiBlYWNoIHBsYW5lIGdyb3VwLg0K
PiANCj4gQW5kIGRyb3AgdGhlIHNvbWV3aGF0IG1pc3BsYWNlZCBjb21tZW50cyBhYm91dCBwY29k
ZSBiZWhhdmlvdXINCj4gZnJvbSB7aWNsLHRnbH1fbWF4X2J3X2luZGV4KCkgd2hpbGUgYXQgaXQu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2J3LmPCoMKgwqDCoMKgwqAgfCA1MiArKysrKysrKy0tLS0tLS0tLQ0KPiAtLQ0KPiDCoC4u
Li9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaCB8wqAgNCArLQ0KPiDC
oDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pDQo+IA0K
DQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBp
bnRlbC5jb20+DQo=
