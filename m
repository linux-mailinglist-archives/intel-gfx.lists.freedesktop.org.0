Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FEDA95FDB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 09:49:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76A610E188;
	Tue, 22 Apr 2025 07:49:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Luzd4aIX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 010BA10E188;
 Tue, 22 Apr 2025 07:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745308154; x=1776844154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9zNI092alFp1pAKQwdiryLwbAiFsKdAESCBTppCsWG4=;
 b=Luzd4aIXsDD251JQ9Ax6hF/4AQyYqDhX5oP+PKaPlufIWA97yXVdy0F4
 Irtz7tHP4FzDTZpn/x2FMh+jXhwpcsIYhYP2Os7+neysRvZUf3ZjryzpN
 EdeCl1Fh2xZr6WFisjcTQtvR5ceH09G1C25eWPXNqvcnAA2l9ILPDX00o
 hMBXnIvAWDBB56gckpia9b69BMf/nxUnaefzGXQgF34Sla0FhAJ/qnS8H
 zxoqV7F6BfdqdBvNeTxtO8k/V66ZYwRi1J9X3RsEbSH81CqrQzFsfPYmf
 DBJUGFC9/wdJYeGsWFvofVyWG4zYw8J52rwCdHClGvRv1H7WR8MrqHBxZ A==;
X-CSE-ConnectionGUID: JSv6wgJ1Tg6A62P8/XW3XQ==
X-CSE-MsgGUID: 5gmK9nWlQPWHITgCZs4SLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="50655213"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="50655213"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 00:49:14 -0700
X-CSE-ConnectionGUID: KhG6fUIrTRiu/v7jJyLXBA==
X-CSE-MsgGUID: 9AGSKCoOQo6OLpc+OBSeNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="132478865"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 00:49:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 00:49:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 00:49:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 00:49:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OlWwbMbD9ivCPHRUQZjRtFIMG8YgekRSNvIvrEJHWmkJETPdoBbOQbrEfN8EkXITKRVE+FcRpKlJjMWtlCSc98g8rChAETBr/fG8fxheTmf/jUBqJFZr+FNYJmnndVuYBbyBd8qZ38o2+3o1Wm4fjtp6Ftd3gbozZyWu4HxezToSVJMKcd2hBfEqCjjIODbkRlz1TaY6I8X5m3VsmwNWvlfmDHlfMBC0mjYN5IYvvVnIEuHCERaRvRINxSgwixTmn/O7lze1R27spBU21A8sAUpSwhdBXXPU3I+9WIbw0J5EvUf7LWcyMp4krIz5XnAiBSosyrgZKfGAXHCs+D8nBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9zNI092alFp1pAKQwdiryLwbAiFsKdAESCBTppCsWG4=;
 b=xP6X6EAHc7Tj7Ks8vycKFP2cfSx1tJWR0vzG60n9bME0UiZ48skrgTFP8SqNzlWuQ3iAzF921WpvYMdYcHvv/aok2zJ+y3EXqRmXHqOzoiU+H7E2cnqak6chlZhKrxOIftjQh631xvGObF6a8cq3vpo2zXof66QT9xo8aLd+wzJB2tQeRhJ1Xwa6yI8sTAKk17gSRUt5L7PJh6Tgkx43t2i7Fgj2mBO9fZQC7uLzgkc3ZGzv4C/nerM9CB189uQcFbvpYvQjx7sfnu0s8bcg4G8codHtX6UmE2EA2uLVFCQIRJlb+ioiATB90rembu1JEYUJghl2bYKOCrs7BnZhFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Tue, 22 Apr
 2025 07:49:08 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 07:49:07 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 02/13] drm/i915/psr: Store enabled non-psr pipes into
 intel_crtc_state
Thread-Topic: [PATCH v3 02/13] drm/i915/psr: Store enabled non-psr pipes into
 intel_crtc_state
Thread-Index: AQHbrSTHuze83pCCdkmAPGV94bEEPbOvW57g
Date: Tue, 22 Apr 2025 07:49:07 +0000
Message-ID: <MW4PR11MB705477FC22095B5732D69FEBEFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
 <20250414100508.1208774-3-jouni.hogander@intel.com>
In-Reply-To: <20250414100508.1208774-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ0PR11MB5024:EE_
x-ms-office365-filtering-correlation-id: d1005f72-72d9-410a-dfeb-08dd8172295a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?c2locVlacU5JMUkxWWlVeDdMeUJ4QmxOMys0dzJKOHJSUkk4MFFjK3dIMndC?=
 =?utf-8?B?aVNWQ0JzSzB0SCtXQWJQMDhCelRXbkt3Tkt1bjZZbENFNnZxSXd3S0lSN0VV?=
 =?utf-8?B?ZS9qQXUvQUhhQ2oweVhaVVp0emRwMEQxZ05wWjhxaG9qWWlWTkhsem5ZRHRw?=
 =?utf-8?B?RzVUVFJLMnJ3Sjl2QVUvRDRaaXhtSWVZZ3lzMVdkbHpYOTRXc0czTy92STht?=
 =?utf-8?B?YkdRV3dhNlp2TG1KV1pFcmxCK29Fb2QyckZOVCs1WkFBdmdudUhvSnVIdUVr?=
 =?utf-8?B?YXpFSmp4aFJKYXp6UEg2QXJVb1BWTkRLeVM3UU5qWFBKbGVXWTU0V09zMWEz?=
 =?utf-8?B?YVJEKzdTNFU2aHFKQktmVEhWY2ZMYlAveEN1YTNCYWwzZm5ScklwNFdONFFO?=
 =?utf-8?B?ajdzZzBSRGQxVkdUQWFlNEVwVkRrVmg4K25Ya2Rzc1FOWTZxeXhDRFAxekNF?=
 =?utf-8?B?clIwdEdSN3lEQ0xObzZUc3l0R3dxMmQxeHhCWkNFOHlYZnZ5ZEM2QWl3Y3Rj?=
 =?utf-8?B?RFQzRDZEYjF6am5tR0JYSSt0Y2UyanZvclBnSXl4SEZuTVVETlNEbzB5Zmxh?=
 =?utf-8?B?dEtKRTJucjhyTE1TMldYQVRmOWd4ODNTZENoK3BHUnQ3a3FhMk1wZEZudTZs?=
 =?utf-8?B?TjZEdjRrdytxVEZjcUZtOC8vQkhTWnE2M01mYkVBU0VTRzU4RXdsSmE5MWVX?=
 =?utf-8?B?L1Z5aUltSGFaRnY4NDRKbG9tNGttdXc1YzFqUUoxWitDOFdYME9tcG4rbk8y?=
 =?utf-8?B?VVRYKzZzZUVIQUxnYnN2UmE5M052Q3RCdERWZ2RGaXNid2l0am1oM0doT1JN?=
 =?utf-8?B?ZVlGcDhONFlHMzRzWXdKSDBQdWhPWTl5Y0FSWmsxbVlVQndvZXUxMm5tTDR0?=
 =?utf-8?B?eDFXb3hFZXNEY0pMWHZMRkYzRmhQSjBEQmFEbmt5VzVkWkFocUxvM3ZMR0NB?=
 =?utf-8?B?NFU1ZTFqMm9ISzlDUW1xemhUNWFHVWlURzcwZ3d6b1h0eHhFVU5JcTVDSTFh?=
 =?utf-8?B?VW1CT29Kb1owTmsyZjdxV2VnbHRjUTlyS2tiTi9iODJMN2NKcWkvajRYSzFS?=
 =?utf-8?B?SnY0eE1oVE5ha3YrUUo2RlRkV2ZLR251dy9tcW1QeUxsemlYdXlNM2E3enJR?=
 =?utf-8?B?WjQ1M21OTlFvcEIxbnFndTFZNzB1TXRmVHpGN2JZMDkxbHVReFpweVdVK0Rm?=
 =?utf-8?B?RjdhdFpNZTFFMkNVeEkyVEUweEc3akgrQWdWR2VuZHZlUDRsVWdlMXpqaElt?=
 =?utf-8?B?TFN3bXV5d3hielF4R1FQZExkMFkrRjN1aGE5OWZDQnc2eWx0NGZhRTduWThW?=
 =?utf-8?B?L0Irc1ZiSGtNZ1FyS3BqRUVFYWVYOVlLZGhDNTFyeWhHbHBVK3ZBdE92bklj?=
 =?utf-8?B?QzMvYVZjOTBEMTgvUW1NNUdMMjFmb2ZKWkpvbFpsN0ZVYVdEZ1dZQkpzSFFT?=
 =?utf-8?B?bExVWFZwUzVJTS9aQW42WEVWZk1zbEg0MldJT3RZWHdjamw3SzdXbTR6SEhw?=
 =?utf-8?B?eXVGSFY3eGU1VEYxd3FlOXBrc0wzQytzWWdGRkVRVHJ0bngxaWJXVGluMEdJ?=
 =?utf-8?B?WnI0SWcxR1pOQlN4TzhRS21ZdnVJNHpQQjJjYlFDV1BNV1VUb1Y0NWxZTU1m?=
 =?utf-8?B?M2ZKdi93ajZnU3RVYVh3ZVFIbkM4UExkQ0V1ZEZKNFlIeThQdDcwRW93V003?=
 =?utf-8?B?RlV2RldSRUNackFqYUFnT0JCYTY4TlpTOWdEdlB1YUZnYWwrcDdvejROMFBS?=
 =?utf-8?B?TVRUVWF0TmVyYmgwRFBmSXlZcE1wT0JReHlpZHV4dU96NHlwTWlZc24yUnR1?=
 =?utf-8?B?ZW16bExWWHkwR3I5ZXZtcmZ0c3VYZjFRNmoyV1FzNWJ6ZDBPNDg4Mktmd1cz?=
 =?utf-8?B?UlozNHllL1RKN0tvalcrQzlqcCt4eFk5STByelRkaDRpemFudVNPUkRxdjg3?=
 =?utf-8?B?bjBhRktlUHZzTTRTOGRiOHhHZ2hFNzZXTXRZVkdXdUpjVXZVNk5uZG8vbHA5?=
 =?utf-8?B?ZTg1ZTdaRUFRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXNJdHRvYUtDVmxWSzdnNkl5dXh6dlNQZVVmcXdKcFFGQUdYaXFvWE5rdFRQ?=
 =?utf-8?B?TTRlQkhkWDhSZnlJWXJlWFdCU2t6d2FMVkRBL0RoYjBMVXo0OGNrb1p3WkVB?=
 =?utf-8?B?T3Q5b3dZMzhPY0RpY2ZtSWlXb3A2ZUdpd3g4MEhWM2s5NjNES0YvUzZITDQv?=
 =?utf-8?B?VlJtUTBoRTdjRDFULzRMMFFlTGVuM0k1d3VONkQzbm10UU1OUS9ZdGFKT0ty?=
 =?utf-8?B?NEE5cE1wS05wUVdPMGZFME9aQjJoWWVSLzlOWHZZY2dYQzVyZndNUzA0UjA1?=
 =?utf-8?B?VHBNNG9aOWRyZ25FMzNOeU5Xc1BLOE1LalEwdWVPejN2U2p1VG51VmszRXRS?=
 =?utf-8?B?ekcrMW1vc250aCt4Tll1Y0ZDMUFCU0dYaHBoUGJpckxWSmMwVW9JdVo5MHdi?=
 =?utf-8?B?bUk4RU4zdVh6UlVzTC8zTzBrSkltSWx4UnNOM0tHTTN0dTBQUlZkOWNnbVFj?=
 =?utf-8?B?SWxoQnpZaURWWTdzeVYzZlFIKyt1WWt3VWhybGhmeWNRclNZZnRoS3hzaXY4?=
 =?utf-8?B?VGtUTFN3SFU2Qjd2enN5aFIxWmZFZlNrN1I1Q1BSWWxrTUlaWUFSMGRudUhU?=
 =?utf-8?B?V1hrSkJ2TjJaOERER1NwUDBuK0pzU05XK1ZnT2pvU0M2Y1I0b1QvRTdSa0Jo?=
 =?utf-8?B?U0NrclMrMER3NU5rMERJcG1ycDhYdjVuYU9MSGpBNXdlNTFsZkRKMXduZ1VK?=
 =?utf-8?B?S1hDeHNoeVdkSEhHQ0JjQjBWV0VmUHl1ZUhVUGl5dGg0UHc1MGc3RkMrUkdv?=
 =?utf-8?B?K1VFZmZpK0Q1dGpId1FzdWVYc2VaVmZxTHJTRm12TmlXaGtoRytKa1QzdjNm?=
 =?utf-8?B?T1c2RnF1VU5nRndLSHJFZDhUbFRRSkdGejdlMVNaNS9lbEliMTZkeGRZb20y?=
 =?utf-8?B?a2pXN0U2cVA2VkJwSW5KV3luZWFVTlJJbkNRV2xYcSs4UVVQWWl4SW1QVjBB?=
 =?utf-8?B?UmowWUZXMVNJUUtPeVhxS09DOTBxSFJYOWtHY1ZyOFNoN2RYeTNMUWRQaHJi?=
 =?utf-8?B?UDBCWThhdHlxeDl3MCtiYzNyZjlGRmFPOEdwYUlWNGEzYmxCMnE4aFlybS9s?=
 =?utf-8?B?bUhQcTZsTXBwSUk0RU5hNzJZNFBmSktGS3ZqaE44SXVSVWxtT2pTV1ZrRWps?=
 =?utf-8?B?T3Z5Y2R5WDB1ZkN0OWlBRExVRFhpdDBvYm9TM09Cci9ia0hZbGl1emFrY3R1?=
 =?utf-8?B?VWRYYW5ZWCtsOUpUMkFEVDNVRlU2emtITi9ZWFQyK0N1NWN6cFdFUVJSYmtx?=
 =?utf-8?B?KzdTYk14T3RsMDgzbnFieFF1THBqNUJjekpRNWErM1o1b0NYNk1ybU4zcWtS?=
 =?utf-8?B?VjgrRDRqOTl0VkhiQkMvcERUa1pKakl1ZFI2ZjFpVjJQSVkyN1E1TzdXWEtn?=
 =?utf-8?B?a1RGUzJ6cm02VHlXRXdtdFQwWjB4dXhrbUZYdmhhYVJKM29tTnA0QWNTNnky?=
 =?utf-8?B?dXNrQXlhN1Z6NU9pUUUvWTdWdUU0SEtlc1hrVFpGMXFlMnNFVnMwWUFWSnlI?=
 =?utf-8?B?WFlRSmN0Um93T3hyK1NjbldmN2dYamRKbTI2VnBaOHMvWlJSMUFqQTVmZ3N0?=
 =?utf-8?B?V1J2NGlWbkNKUDBIaHh2Z2tpQTdFSjU3NlFVYWtWeU8vZGswZlV5S0lNSEla?=
 =?utf-8?B?NzU4S0xRaVZvdytXUWMvdnJ3bHdqeDJnQ2tXR3lEdlM5WG9yTEJWY29iL0Vj?=
 =?utf-8?B?VGh3MllldDMrMkZrQUs1WDhrNktTRGFGV3B5WFY3Z2lnekdIVUVPendiSTZj?=
 =?utf-8?B?c1pYdlFWcVVMQkl5c2NyZ3RhQy9XUVBJc3VoNHlydFlKcjVZSkhWSTdJNXk5?=
 =?utf-8?B?VHlaN3FaQ0oxUGZ0SlFHM254TFZRajVjb3NzNXJQOUtxYWNRWkxic0RyS1Fl?=
 =?utf-8?B?SHRDN3lOUGsrYy9zWDBOTWNjaXNOMys5ZEJab3dueThFcjJOTGN6NThFMXFE?=
 =?utf-8?B?ZisyWmVpUFVhNVpmU0s4MnBZV1ZXVG1DTTd2SGE3eTVoZkpaNFIxRDg2TDJ4?=
 =?utf-8?B?S3N3bkVvSVFzTThtN1VibUNuY294Rm9qVHFOdDFZSGR6eVVqdUxqclo5Qyt5?=
 =?utf-8?B?KzFZWDZ6R2dTelUrbjBzRTBQcVhjNkdUMmxCdWVpczhnNTAxMHZWV2tmdkt5?=
 =?utf-8?Q?VKyNU90Jj1I9AQcThFaLDeuzG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1005f72-72d9-410a-dfeb-08dd8172295a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 07:49:07.6427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kZ7AP1xXMLvAqUe6SeUMNl1H/TiJhxi7dmHedrt8RpDicHybM5qODWY6LiwEPUCln8vNhzkUBAIGBgBaiM5RXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0KPiBIw7Zn
YW5kZXINCj4gU2VudDogTW9uZGF5LCAxNCBBcHJpbCAyMDI1IDEzLjA1DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjMgMDIvMTNdIGRybS9pOTE1L3BzcjogU3RvcmUgZW5hYmxlZCBub24tcHNy
IHBpcGVzIGludG8NCj4gaW50ZWxfY3J0Y19zdGF0ZQ0KPiANCj4gVG8gaW1wbGVtZW50IHdvcmth
cm91bmQgZm9yIHVuZGVycnVuIG9uIGlkbGUgUFNSIEhXIGlzc3VlIChXYV8xNjAyNTU5NjY0NykN
Cj4gd2UgbmVlZCB0byBrbm93IGVuYWJsZWQuIEZpZ3VyZSBvdXQgd2hpY2ggbm9uLVBTUiBwaXBl
cyB3ZSB3aWxsIGhhdmUgYWN0aXZlDQo+IGFuZCBzdG9yZSBpdCBpbnRvIGludGVsX2NydGNfc3Rh
dGUtPmFjdGl2ZV9ub25fcHNyX3BpcGVzLiBUaGlzIGlzIGN1cnJlbnRseQ0KPiBhc3N1bWluZyBv
bmx5IG9uZSBlRFAgb24gYSB0aW1lLiBJLmUuIHBvc3NpYmxlIHNlY29uZGFyeSBlRFAgd2l0aCBQ
U1IgY2FwYWJsZQ0KPiBwYW5lbCBpcyBub3QgY29uc2lkZXJlZC4NCj4gDQo+IEJzcGVjOiA3NDE1
MQ0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+IC0tLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oICAgIHwgIDMgKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jICAgICAgfCAyMyArKysrKysrKysrKysrKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDI2
IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IDk0NDY4YTlkMmUwZC4uMGUyOTQ1
YWE2MDU3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTExNCw2ICsxMTE0LDcgQEAgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgew0KPiAgCWJvb2wgd21fbGV2ZWxfZGlzYWJsZWQ7DQo+ICAJdTMyIGRjM2Nv
X2V4aXRsaW5lOw0KPiAgCXUxNiBzdV95X2dyYW51bGFyaXR5Ow0KPiArCXU4IGFjdGl2ZV9ub25f
cHNyX3BpcGVzOw0KPiANCj4gIAkvKg0KPiAgCSAqIEZyZXF1ZW5jeSB0aGUgZHBsbCBmb3IgdGhl
IHBvcnQgc2hvdWxkIHJ1biBhdC4gRGlmZmVycyBmcm9tIHRoZSBAQCAtDQo+IDE2NTAsNiArMTY1
MSw4IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiAgCXU4IGVudHJ5X3NldHVwX2ZyYW1lczsNCj4g
DQo+ICAJYm9vbCBsaW5rX29rOw0KPiArDQo+ICsJdTggYWN0aXZlX25vbl9wc3JfcGlwZXM7DQo+
ICB9Ow0KPiANCj4gIHN0cnVjdCBpbnRlbF9kcCB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBlZWY0OGMwMTQxMTIuLjIwZDUzMjkyYzNiMyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0x
NjQ5LDYgKzE2NDksOSBAQCB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50
ZWxfZHANCj4gKmludGVsX2RwLCAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9kaXNw
bGF5X21vZGUgKmFkanVzdGVkX21vZGUgPSAmY3J0Y19zdGF0ZS0NCj4gPmh3LmFkanVzdGVkX21v
ZGU7DQo+ICsJc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPSB0b19pbnRlbF9hdG9t
aWNfc3RhdGUoY3J0Y19zdGF0ZS0NCj4gPnVhcGkuc3RhdGUpOw0KPiArCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjOw0KPiArCXU4IGFjdGl2ZV9waXBlcyA9IDA7DQo+IA0KPiAgCWlmICghcHNyX2ds
b2JhbF9lbmFibGVkKGludGVsX2RwKSkgew0KPiAgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0s
ICJQU1IgZGlzYWJsZWQgYnkgZmxhZ1xuIik7IEBAIC0NCj4gMTcwMiw2ICsxNzA1LDI0IEBAIHZv
aWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
ICAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gIAkJCSAgICAiUFNSIGRpc2FibGVkIHRv
IHdvcmthcm91bmQgUFNSIEZTTSBoYW5nIGlzc3VlXG4iKTsNCj4gIAl9DQo+ICsNCj4gKwkvKiBS
ZXN0IGlzIGZvciBXYV8xNjAyNTU5NjY0NyAqLw0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5
KSAhPSAyMCAmJg0KPiArCSAgICAhSVNfRElTUExBWV9WRVJ4MTAwX1NURVAoZGlzcGxheSwgMzAw
MCwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCS8qIE5vdCBuZWVk
ZWQgYnkgUGFuZWwgUmVwbGF5ICAqLw0KPiArCWlmIChjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVw
bGF5KQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwkvKiBXZSBpZ25vcmUgcG9zc2libGUgc2Vjb25k
YXJ5IFBTUi9QYW5lbCBSZXBsYXkgY2FwYWJsZSBlRFAgKi8NCj4gKwlmb3JfZWFjaF9pbnRlbF9j
cnRjKGRpc3BsYXktPmRybSwgY3J0YykNCj4gKwkJYWN0aXZlX3BpcGVzIHw9IGNydGMtPmFjdGl2
ZSA/IEJJVChjcnRjLT5waXBlKSA6IDA7DQo+ICsNCj4gKwlhY3RpdmVfcGlwZXMgPSBpbnRlbF9j
YWxjX2FjdGl2ZV9waXBlcyhzdGF0ZSwgYWN0aXZlX3BpcGVzKTsNCj4gKw0KPiArCWNydGNfc3Rh
dGUtPmFjdGl2ZV9ub25fcHNyX3BpcGVzID0gYWN0aXZlX3BpcGVzICYNCj4gKwkJfkJJVCh0b19p
bnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0YyktPnBpcGUpOw0KPiAgfQ0KPiANCj4gIHZv
aWQgaW50ZWxfcHNyX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIEBA
IC0xOTg1LDYgKzIwMDYsNw0KPiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tl
ZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCWludGVsX2RwLT5wc3IucHNyMl9zZWxf
ZmV0Y2hfY2ZmX2VuYWJsZWQgPSBmYWxzZTsNCj4gIAlpbnRlbF9kcC0+cHNyLnJlcV9wc3IyX3Nk
cF9wcmlvcl9zY2FubGluZSA9DQo+ICAJCWNydGNfc3RhdGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9z
Y2FubGluZTsNCj4gKwlpbnRlbF9kcC0+cHNyLmFjdGl2ZV9ub25fcHNyX3BpcGVzID0gY3J0Y19z
dGF0ZS0+YWN0aXZlX25vbl9wc3JfcGlwZXM7DQo+IA0KPiAgCWlmICghcHNyX2ludGVycnVwdF9l
cnJvcl9jaGVjayhpbnRlbF9kcCkpDQo+ICAJCXJldHVybjsNCj4gQEAgLTIxNTksNiArMjE4MSw3
IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHAN
Cj4gKmludGVsX2RwKQ0KPiAgCWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCA9
IGZhbHNlOw0KPiAgCWludGVsX2RwLT5wc3Iuc3VfcmVnaW9uX2V0X2VuYWJsZWQgPSBmYWxzZTsN
Cj4gIAlpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2NmZl9lbmFibGVkID0gZmFsc2U7DQo+
ICsJaW50ZWxfZHAtPnBzci5hY3RpdmVfbm9uX3Bzcl9waXBlcyA9IDA7DQo+ICB9DQo+IA0KPiAg
LyoqDQo+IC0tDQo+IDIuNDMuMA0KDQo=
