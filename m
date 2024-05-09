Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D158C1002
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 14:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C030910EA82;
	Thu,  9 May 2024 12:56:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fegNtPeh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622FD10E9A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 12:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715259392; x=1746795392;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KH4vVN9BVe4oWpLVRONvqM3djwAE+HTOjX47oV/nIDc=;
 b=fegNtPehOqandrxfVihFv2gaUd/Ml21jMIqD8eEgGkNgo4VVMJkO/Po6
 VmYF/LuZDJZSh4h/7Pd5JmDpVnVz2qfTCXCMHlCsXEhHr38mmOCYz1+4L
 ZdAgs1isIINF39qf4Q+LMNkI2pK7ip/AGpISkmo+8oONvqNgRGej6KxqS
 a99KUD3CC6bKJbPnMSevXh6pJYkHFgwyYcPpbe97bLIZha9pfvEUr96Nz
 Mt1Fbf2j6r6aa+EiGmDiItioZsjccWRSXxiP6P0PnF+hYRXmUjoLS1MTD
 wH3/qDnqkiP+EVju2E3fIVjGLjz8T+uQucaeXddUtd23aaTTcfEIcW9D3 A==;
X-CSE-ConnectionGUID: hJxbEAe1Tq68/6ltAaf0BQ==
X-CSE-MsgGUID: IP6DQ4mYR0KPajSkbBRSFA==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="14999470"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="14999470"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 05:56:31 -0700
X-CSE-ConnectionGUID: HkZMioVTTaSayyze+JkG/A==
X-CSE-MsgGUID: VmZWvUG5Rq2zgE9A7gjl0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="52436924"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 05:56:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 05:56:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 05:56:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 05:56:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nBvejRRcUq90m5vta+mU+0oDOaddPYKkboViZfYi3ZCOa8pMnohZyczQXDSXpHjRd6x9kxE/XFJGqwwOU/LUTMaTI+HyeastSS8mgqz2OIYE4ICAPbj5DC9BQ0OZBNu0f1MVSsvSQkpNJF8L4To/Hi669LZGBVOWaDQLIEM0raleNZ+U/Ub//EBgGR9+TPXMftS02cKc10w8FvAYN51WKOLryufW8EoP+pB2JuICYVa1RQO5fJd7CAyagH6XWdq5mCrvgF5O9rV8oOfGFfIFD4w8brF4lYKvLTeayBQBvNwt+T082YxSwfGeTRW+PlR6P1+L45gUPHfbTFbi0jBEXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KH4vVN9BVe4oWpLVRONvqM3djwAE+HTOjX47oV/nIDc=;
 b=HVjyJ63sGb/l/y5x7mXfFNeHZOvpiW3hbiti2XDphyX2FDCl5gBQ1R2WDEE67sR2/BrBxKMbVQLhpGMw/a5RGk44cMbFZbMYkvOS+yvfHUX5Q0umZAty5JT7A1DRjbym2WCpTGPQpRln/K2pPgpz9iEoLdoIHDAhjdttKTg6SMLxpxdpsYK3MBygWuBgEPuZg8m9r9Qtafb5Mi8qh7iTnSf/f/RXyM6WGI67Pw8r2H/JTqgQFX4HD1GzWLq1Voy9zgwPjMVFZxJ/6OEWFoljPUncn+PO975ikDM0IKMA0Z9g2m4FxfkS8bP0QhOw/QoJeH4T9ml9iyr1BOUZ095Pnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Thu, 9 May
 2024 12:56:28 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.7544.047; Thu, 9 May 2024
 12:56:28 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v9 01/12] drm/i915/psr: Rename has_psr2 as has_sel_update
Thread-Topic: [PATCH v9 01/12] drm/i915/psr: Rename has_psr2 as has_sel_update
Thread-Index: AQHanSP3ppD3zhfft0eKR+Mg9VBVqrGO5iJQ
Date: Thu, 9 May 2024 12:56:28 +0000
Message-ID: <PH7PR11MB59812B0F7F0405D0BF1925FEF9E62@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
 <20240503063413.1008135-2-jouni.hogander@intel.com>
In-Reply-To: <20240503063413.1008135-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB4861:EE_
x-ms-office365-filtering-correlation-id: 5b9eb1f7-85c2-43b5-7a11-08dc70277114
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?dVNMM2dOV0dmRFc5YldCdTlVOHp2SkFvMzNpSWxIK3pydkNaOE16MmVUeEdw?=
 =?utf-8?B?eU9TMTFFR3Y3RW4yOE51Q1c0ZDBxY1FaSmxaeFphUzNtcUdsU2tJVDFCRnB4?=
 =?utf-8?B?WEg2NTZ5QloxK0NLN0tRdG1NZXFlVVcwd1JBZHFPRzJ5L1VHTnhmMjNwSXdp?=
 =?utf-8?B?NXNVYzNqM0VkVVNSTUxTWTQ2WVNrUlBJckdHRzZCd0w5amx5T21ZZUVBaTY3?=
 =?utf-8?B?WkdwS21YMGNZQ0hiajhjenVQN2crbUxSZWsyTUlTc1hYdXlacUVrZndRNnJS?=
 =?utf-8?B?QWs5MFMwSzNqaXV0ZG1BZVA5VS9RMDNuOHRiMVV2Tytma0dja3VTMGM5RDlD?=
 =?utf-8?B?K2xOcjNXaUVkb0VZeis2eWkvUWtsUktDKzE3UTRhaVFoUFRvdEpiU2tGQzVu?=
 =?utf-8?B?Y3BGMGpNKzJRaU9CVURHbGtTYVQvZGRwNm80WHZ2d2ZmN3pIQTFFSjYvNmtI?=
 =?utf-8?B?Mzk1M1NWREVSZzM3eXJmQy9McEIyS3d2RURPaXVLaE9lY0FrUW83OHhNdTRa?=
 =?utf-8?B?UTg3SXhXYjlEZUs0K0ZjTXJGZGVjYzNNbllrQ2FxK0Rwcy9zeUZFT2E1N0ZY?=
 =?utf-8?B?VFNvQzVDSTROLzdkMDNCSVpEQ1dRVWhxdG15V2hEQ2wrUHpBQ0EyMGpUUWNP?=
 =?utf-8?B?blRzTlRGeTNZazYzR2xUMTlDdWNCWHNGQXFOUS9McTlGMkNBejJLbzRZZ3BB?=
 =?utf-8?B?T2o2ZEFkRDF4eDBBeDNUbFd6UHN1SVR0MlhvRm11YU1adit2UFM3WUVQMWUy?=
 =?utf-8?B?THBuaGVxcVBiSy9BalVELzR1QzFNNW0rMk4vK2d4NmY4amtIWWhMNlk3VTNq?=
 =?utf-8?B?UGIzb3NYVGI5bldXNmRyeTVkQm5EMGJab1ZSMzM2eWluQ3ZQQUl5eUJ1clJZ?=
 =?utf-8?B?VHk2bWk0dnJDZVZQT0g1VTExZjJEZjRjOVdzeFc3T2VpYy9FQjNKWjZGQ2pa?=
 =?utf-8?B?Q0xJd0Z3aUk0ZGRiVkhkeWIyU1Rka2hSdm5DQnYxUmFUQVRwQkVybW9aUC9a?=
 =?utf-8?B?RUtiMlkxTEFjRDNoeHo4MjF1WHh4M25vYU1hcFE1RXdQNkVwcW9DK0V2WE5k?=
 =?utf-8?B?N1UxTm81UWlGajNjOGFxcVcvYWRzZElYSG1DSVRub3h1SFpkNGttcnBEdUZF?=
 =?utf-8?B?VXFHKzdDQmtVSkptU3MwZ0Q0ZHYvT2F0bVI1aTdMWVRQbWlZNU5YNXRTZ3l1?=
 =?utf-8?B?cGFxZ2hBdERGc3d2S2RrRTZ5cmFiSWoxeThKYW9ZcU16QllNOFVPNSt4RU1z?=
 =?utf-8?B?MFRabFJOd1hhMHRWb3JpNHk0RnVBU3pIQVRoa1VXYWxJV2hNMjh3b3FiWGFM?=
 =?utf-8?B?bU8zWUNFR2hsU0EzbDllbkJFeVg2QXk2UHRjV1NGSVVhaEcxcGNjL2hsQ01C?=
 =?utf-8?B?SmJpa1RuL1BZMFZPaUZPekhqS1lHQ1pwb3d4SVpqUGp5eFBBTWhUY01QM0VQ?=
 =?utf-8?B?WEtDb3Vya2hDbHdvRmt4QUVRRm05Z293QUdHbE0vZjc0ZExsZnFNY1pVajh6?=
 =?utf-8?B?RUhsZ1J0WEs3dEZra2Y2bEp2ZExGNEozb1Izd2wyRlAvZG9HR2lGSlMyVXpa?=
 =?utf-8?B?NFh3NEtEK09ZUFJ6V3QxalZKQlVoZEhEeVZxUktPZlBJVCtMT2FHcnVqcmly?=
 =?utf-8?B?VnZtbm5DQUZTUjdLdE51ZEdrQ0ZuWFBtY2hmelg3SUEvdlY2MjM1YmhiQXFh?=
 =?utf-8?B?RlU0M1I1ZUo4VlkxYVcwajVuQmY4MlBMZXBRS3JEaHpwYnFJQWJ4cEVNTTQy?=
 =?utf-8?B?MFQ3MjZLRDgvVGFVTWd2V0o0WFgwdHJzV1ZyQnphNnF3WnpvMTZSOUdrbGVt?=
 =?utf-8?B?KzVrRE1jV1k0WmlkdmFwdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MTRaNnpHQ1VNb09POTNTTjBwRW9ITGFsaUlGQkk4T3hndGllWnlENWpQcVMr?=
 =?utf-8?B?YmRaUGxWSDN0S1R0dWx3NzZxV2VEZXBzZytVai93bFBhbzhXMjBuTGpLeWpo?=
 =?utf-8?B?YmFhWFdUUWtLRkMwSjRkSDZoZ3FLTVlOcVVSdlpLNXFCM2RCSW9UNG4vaE9a?=
 =?utf-8?B?SWFoN2REVUxnbnpqSGRRbEdPY2FtbFNxRFhRYWR5d1M2RVhvU0NJVXRxQ0pj?=
 =?utf-8?B?V2lkVzJldUw0d3ZETWsvbURDWjltREJ2K2RzNnYwNGh1d2RmcUQ0cDlnMVQv?=
 =?utf-8?B?TFg2LzliMUxON1RpN1BaRWJIM2J0N3ljZzFWV0piek5PNlBsa2dvL1VkYWlR?=
 =?utf-8?B?YmVvbzBXUU41YkUyR012dmhSeks1Um5aTjQ3NkV2OTVQMDYwaUhCVE5UTGQz?=
 =?utf-8?B?ZGlYYmgwdUU2dGh0S0pPSnBPd0N6cVhJb3NvMlFMOERTTkZwMy9QRU0zZG1N?=
 =?utf-8?B?a3NjR0w3Rld1dGpBRXVlOXNNVkw2ZTBwQU8zSHlRUlJhelEzNEoyYlNPNFh5?=
 =?utf-8?B?VXI4eXRtYi9icy96d3R2VnU2eUw1L1VaSURNVzEwOUNNQ0tjaW1HbVNZRTYr?=
 =?utf-8?B?NGlDR2hpcXRVRHNxWWc1NGR5ZHN2REtSS1JyMEFnUjc2bENZSUg2UmNlYTJo?=
 =?utf-8?B?M2hoTWVlSkFSNC9HZ3g1dEpHcFp3VERUS21NbGZaYmdQRTBKUnhUU2wrMkU0?=
 =?utf-8?B?RnJxcENXek5KSG5IMFRzc01kaXZualFHTFl6Qjd5MVFLa0U3TlltSVluaUh4?=
 =?utf-8?B?VkEycksya3NSVDhKeTIzbjNtWlUyWTJ3bm1IaHppWUtaYjZYRlBYTEtWQXF3?=
 =?utf-8?B?QkgxcVR3L01sZUx2S3ZVN1Bad1lrZ2E1b0hLYlJ0YkZoUlFmb08vTFJVbktW?=
 =?utf-8?B?czJoTFlybkMyK25Jb3hCMldEcC9ZaTEzRFNqYWxuczhPM0tCeHpybmpXT3JR?=
 =?utf-8?B?VkJreWtDcE1xN2w4YjdWMGpsbnNPZlR6R3pVbW5pMnNxSHFvc2UzdXpLTDgr?=
 =?utf-8?B?dTZmTEk3cmorOHpFaFdkYkJsU0xPZitudGhuQ0VjM1FsS1JTa0dYV3d6cUNK?=
 =?utf-8?B?c0NlUnB0T1d2RmN6Q2d4OHVSeEMvRSt1djhYdzljRmNPOTZWcmtMRytuTFZM?=
 =?utf-8?B?U1JDVVNDZENTb1gyRUx4ajNzKzU5bzF4U3J6MEFoZjN5ZHFibFVEdlRLcHlN?=
 =?utf-8?B?OXltVnRwYnRwKzNvbkxtOXJnc2poYjRGNFpsejdNRnBaQmJXVHh1ejB5bzFC?=
 =?utf-8?B?THZkb0JQQ3ZBYzY2TzN4MnFaNDJqK2FtaEx3QThBYkpmRHlxNlE1c09mbFQ4?=
 =?utf-8?B?enhQY0ZYOG04UWtGVy9USzNnMmpmSnAxRTh0enZTb2JENDJqU09rZGRscTdZ?=
 =?utf-8?B?TVEzYmVheU9TVzAzMFlqY2RMWWhXMm01TE91OURsSm5LUWlOekp4UHFyZFl3?=
 =?utf-8?B?YU9reWNuUXhITWphZ0VzVTFNK2pVQTVmOVUrVkl5Y0VqYmZnQStXcXo1UTBP?=
 =?utf-8?B?ZE44aE5vYXJrZ2lRRjlIZjhqSUNtY3FBeEV5Q3hRQ2pUYzZJTmlNS1FSK3U1?=
 =?utf-8?B?QWZhRjd2QnNsbUozcXMyUVNWaDFWUmU3MGppY052dmlpMjZuZlZXaUhCZU8x?=
 =?utf-8?B?amN2ZVFOWVF2WXEveHdLcEprTVQ1QTBoenRzQ3ZlOE1qbDlRZmtvbjZRZFN2?=
 =?utf-8?B?OEFKcmYyN0xHSytUcGlydzlzTldIQWJBNFJIUmlWbFRZZ2wrc0p1WEYzY0oz?=
 =?utf-8?B?ZzFpOGF5V1c2K2NCTUNJNm43QWdPVmw5R0VKbE5kZUhwbnl5NERPWXRqK3c5?=
 =?utf-8?B?OHRFNDY5TW9TR0V6QzhJWk9GaHRPOFllWnoxUHZ5NkNFbVlVMEkvc0syRDRK?=
 =?utf-8?B?YWYzeFVqMjBIQ3VnaU9xd1hiRmpMeG15akVNdVBsdFdzRUl2SWJjd0NoajVx?=
 =?utf-8?B?YTRGd3UxdElKQVVxMU81SS9HT1NraHAxWnNLSVB2K3I4T1Y2R2p0MVlNNUxp?=
 =?utf-8?B?SGQvVEpRM28zdEphM1dVZHZ4S3h5M0RQVlVONXJaSzVQYzcyU2czVkl5QzRp?=
 =?utf-8?B?S1ZOL1ovUXlkWnlXYnl4dWdtbFVrMm5ZWC95OGNzL1pEeFNhcjdpTHdxZG52?=
 =?utf-8?Q?Rv+74obBt4Rbn+fz5FZ+gWK2E?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b9eb1f7-85c2-43b5-7a11-08dc70277114
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 12:56:28.2599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CzzdJXltFNBjlOorzQHAqBD3FGNI3I2z49H0y51v8tXgr1yJEyIMzuUne7dqQIw1LV9tayjHAC4MuYC0IIeeIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMsIDIwMjQg
MTI6MDQgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0K
PiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjkgMDEvMTJd
IGRybS9pOTE1L3BzcjogUmVuYW1lIGhhc19wc3IyIGFzDQo+IGhhc19zZWxfdXBkYXRlDQo+IA0K
PiBXZSBhcmUgZ29pbmcgdG8gcmV1c2UgaGFzX3BzcjIgZm9yIHBhbmVsX3JlcGxheSBhcyB3ZWxs
LiBSZW5hbWUgaXQgYXMNCj4gaGFzX3NlbF91cGRhdGUgdG8gYXZvaWQgY29uZnVzaW9uLg0KPiAN
Cj4gdjM6IGRvIG5vdCBhZGQgaGFzX3BzciBjaGVjayBpbnRvIHBzcjIgY2FzZSBpbiBpbnRlbF9k
cF9jb21wdXRlX3ZzY19zZHANCj4gdjI6IFJlYmFzZQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdl
ZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jIHwg
IDQgKystLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
ICAgICAgICB8ICAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaCAgIHwgIDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyAgICAgICAgICAgICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYyAgICAgICAgICAgICB8ICAyICstDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgICAgICAgIHwgMTAgKysrKystLS0tLQ0K
PiAgNiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNf
c3RhdGVfZHVtcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRj
X3N0YXRlX2R1bXAuYw0KPiBpbmRleCBjY2FhNGNiMjgwOWIuLjFkYTRjMTIyYzUyZSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjX3N0YXRlX2R1
bXAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3Rh
dGVfZHVtcC5jDQo+IEBAIC0yNTEsOSArMjUxLDkgQEAgdm9pZCBpbnRlbF9jcnRjX3N0YXRlX2R1
bXAoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLA0KPiAgCQlk
cm1fcHJpbnRmKCZwLCAic2RwIHNwbGl0OiAlc1xuIiwNCj4gIAkJCSAgIHN0cl9lbmFibGVkX2Rp
c2FibGVkKHBpcGVfY29uZmlnLQ0KPiA+c2RwX3NwbGl0X2VuYWJsZSkpOw0KPiANCj4gLQkJZHJt
X3ByaW50ZigmcCwgInBzcjogJXMsIHBzcjI6ICVzLCBwYW5lbCByZXBsYXk6ICVzLCBzZWxlY3Rp
dmUNCj4gZmV0Y2g6ICVzXG4iLA0KPiArCQlkcm1fcHJpbnRmKCZwLCAicHNyOiAlcywgc2VsZWN0
aXZlIHVwZGF0ZTogJXMsIHBhbmVsIHJlcGxheToNCj4gJXMsDQo+ICtzZWxlY3RpdmUgZmV0Y2g6
ICVzXG4iLA0KPiAgCQkJICAgc3RyX2VuYWJsZWRfZGlzYWJsZWQocGlwZV9jb25maWctPmhhc19w
c3IpLA0KPiAtCQkJICAgc3RyX2VuYWJsZWRfZGlzYWJsZWQocGlwZV9jb25maWctPmhhc19wc3Iy
KSwNCj4gKwkJCSAgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVfY29uZmlnLQ0KPiA+aGFzX3Nl
bF91cGRhdGUpLA0KPiAgCQkJICAgc3RyX2VuYWJsZWRfZGlzYWJsZWQocGlwZV9jb25maWctDQo+
ID5oYXNfcGFuZWxfcmVwbGF5KSwNCj4gIAkJCSAgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVf
Y29uZmlnLQ0KPiA+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoKSk7DQo+ICAJfQ0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAyNzMzMjNm
MzBhZTIuLjBhZTE4YjA3YWM4NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTUzMjAsNyArNTMyMCw3IEBAIGludGVsX3BpcGVf
Y29uZmlnX2NvbXBhcmUoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRf
Y29uZmlnLA0KPiAgCSAqLw0KPiAgCWlmIChjdXJyZW50X2NvbmZpZy0+aGFzX3BhbmVsX3JlcGxh
eSB8fCBwaXBlX2NvbmZpZy0NCj4gPmhhc19wYW5lbF9yZXBsYXkpIHsNCj4gIAkJUElQRV9DT05G
X0NIRUNLX0JPT0woaGFzX3Bzcik7DQo+IC0JCVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19wc3Iy
KTsNCj4gKwkJUElQRV9DT05GX0NIRUNLX0JPT0woaGFzX3NlbF91cGRhdGUpOw0KPiAgCQlQSVBF
X0NPTkZfQ0hFQ0tfQk9PTChlbmFibGVfcHNyMl9zZWxfZmV0Y2gpOw0KPiAgCQlQSVBFX0NPTkZf
Q0hFQ0tfQk9PTChlbmFibGVfcHNyMl9zdV9yZWdpb25fZXQpOw0KPiAgCQlQSVBFX0NPTkZfQ0hF
Q0tfQk9PTChoYXNfcGFuZWxfcmVwbGF5KTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggNjJmN2EzMGMzN2Rj
Li42NzQ3YzEwZGEyOTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xMTg5LDcgKzExODksNyBAQCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7DQo+IA0KPiAgCS8qIFBTUiBpcyBzdXBwb3J0ZWQgYnV0IG1p
Z2h0IG5vdCBiZSBlbmFibGVkIGR1ZSB0aGUgbGFjayBvZiBlbmFibGVkDQo+IHBsYW5lcyAqLw0K
PiAgCWJvb2wgaGFzX3BzcjsNCj4gLQlib29sIGhhc19wc3IyOw0KPiArCWJvb2wgaGFzX3NlbF91
cGRhdGU7DQo+ICAJYm9vbCBlbmFibGVfcHNyMl9zZWxfZmV0Y2g7DQo+ICAJYm9vbCBlbmFibGVf
cHNyMl9zdV9yZWdpb25fZXQ7DQo+ICAJYm9vbCByZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmU7
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggZTA1
ZTI1Y2Q0YTk0Li4wNzU1YmRmYzhkM2QgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gQEAgLTI2NjAsNyArMjY2MCw3IEBAIHN0YXRpYyB2b2lkIGludGVs
X2RwX2NvbXB1dGVfdnNjX3NkcChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCWlm
IChpbnRlbF9kcF9uZWVkc192c2Nfc2RwKGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpKSB7DQo+ICAJ
CWludGVsX2RwX2NvbXB1dGVfdnNjX2NvbG9yaW1ldHJ5KGNydGNfc3RhdGUsIGNvbm5fc3RhdGUs
DQo+ICAJCQkJCQkgdnNjKTsNCj4gLQl9IGVsc2UgaWYgKGNydGNfc3RhdGUtPmhhc19wc3IyKSB7
DQo+ICsJfSBlbHNlIGlmIChjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkgew0KPiAgCQkvKg0K
PiAgCQkgKiBbUFNSMiB3aXRob3V0IGNvbG9yaW1ldHJ5XQ0KPiAgCQkgKiBQcmVwYXJlIFZTQyBI
ZWFkZXIgZm9yIFNVIGFzIHBlciBlRFAgMS40IHNwZWMsIFRhYmxlIDYtMTENCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IDE1MWRjZDBjNDViNi4u
OTg0ZjEzZDhjMGM4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMNCj4gQEAgLTEyNTEsNyArMTI1MSw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZmJjX2NoZWNr
X3BsYW5lKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCSAqIFJlY29t
bWVuZGF0aW9uIGlzIHRvIGtlZXAgdGhpcyBjb21iaW5hdGlvbiBkaXNhYmxlZA0KPiAgCSAqIEJz
cGVjOiA1MDQyMiBIU0Q6IDE0MDEwMjYwMDAyDQo+ICAJICovDQo+IC0JaWYgKElTX0RJU1BMQVlf
VkVSKGk5MTUsIDEyLCAxNCkgJiYgY3J0Y19zdGF0ZS0+aGFzX3BzcjIpIHsNCj4gKwlpZiAoSVNf
RElTUExBWV9WRVIoaTkxNSwgMTIsIDE0KSAmJiBjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkg
ew0KPiAgCQlwbGFuZV9zdGF0ZS0+bm9fZmJjX3JlYXNvbiA9ICJQU1IyIGVuYWJsZWQiOw0KPiAg
CQlyZXR1cm4gMDsNCj4gIAl9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCBmNWIzMzMzNWE5YWUuLmEyZjdkOTk4ZDM0MiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC02NTEsNyArNjUxLDcg
QEAgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVs
X2RwKTsNCj4gIAl1OCBkcGNkX3ZhbCA9IERQX1BTUl9FTkFCTEU7DQo+IA0KPiAtCWlmIChjcnRj
X3N0YXRlLT5oYXNfcHNyMikgew0KPiArCWlmIChjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkg
ew0KPiAgCQkvKiBFbmFibGUgQUxQTSBhdCBzaW5rIGZvciBwc3IyICovDQo+ICAJCWlmICghY3J0
Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSkgew0KPiAgCQkJZHJtX2RwX2RwY2Rfd3JpdGViKCZp
bnRlbF9kcC0+YXV4LA0KPiBAQCAtMTYzOSw3ICsxNjM5LDcgQEAgdm9pZCBpbnRlbF9wc3JfY29t
cHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAlpZiAoIWNydGNf
c3RhdGUtPmhhc19wc3IpDQo+ICAJCXJldHVybjsNCj4gDQo+IC0JY3J0Y19zdGF0ZS0+aGFzX3Bz
cjIgPSBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ICsJ
Y3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgPSBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChpbnRl
bF9kcCwNCj4gK2NydGNfc3RhdGUpOw0KPiAgfQ0KPiANCj4gIHZvaWQgaW50ZWxfcHNyX2dldF9j
b25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIEBAIC0xNjcyLDcNCj4gKzE2NzIs
NyBAQCB2b2lkIGludGVsX3Bzcl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLA0KPiAgCQlwaXBlX2NvbmZpZy0+aGFzX3BzciA9IHRydWU7DQo+ICAJfQ0KPiANCj4gLQlw
aXBlX2NvbmZpZy0+aGFzX3BzcjIgPSBpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZDsNCj4gKwlw
aXBlX2NvbmZpZy0+aGFzX3NlbF91cGRhdGUgPSBpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZDsN
Cj4gIAlwaXBlX2NvbmZpZy0+aW5mb2ZyYW1lcy5lbmFibGUgfD0NCj4gaW50ZWxfaGRtaV9pbmZv
ZnJhbWVfZW5hYmxlKERQX1NEUF9WU0MpOw0KPiANCj4gIAlpZiAoIWludGVsX2RwLT5wc3IucHNy
Ml9lbmFibGVkKQ0KPiBAQCAtMTk2MCw3ICsxOTYwLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNy
X2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gDQo+ICAJZHJt
X1dBUk5fT04oJmRldl9wcml2LT5kcm0sIGludGVsX2RwLT5wc3IuZW5hYmxlZCk7DQo+IA0KPiAt
CWludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkID0gY3J0Y19zdGF0ZS0+aGFzX3BzcjI7DQo+ICsJ
aW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQgPSBjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZTsN
Cj4gIAlpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkID0gY3J0Y19zdGF0ZS0+aGFz
X3BhbmVsX3JlcGxheTsNCj4gIAlpbnRlbF9kcC0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9
IDA7DQo+ICAJaW50ZWxfZHAtPnBzci5waXBlID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51
YXBpLmNydGMpLT5waXBlOw0KPiBAQCAtMjY4OCw3ICsyNjg4LDcgQEAgdm9pZCBpbnRlbF9wc3Jf
cHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
IAkJbmVlZHNfdG9fZGlzYWJsZSB8PQ0KPiBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2Ny
dGNfc3RhdGUpOw0KPiAgCQluZWVkc190b19kaXNhYmxlIHw9ICFuZXdfY3J0Y19zdGF0ZS0+aGFz
X3BzcjsNCj4gIAkJbmVlZHNfdG9fZGlzYWJsZSB8PSAhbmV3X2NydGNfc3RhdGUtPmFjdGl2ZV9w
bGFuZXM7DQo+IC0JCW5lZWRzX3RvX2Rpc2FibGUgfD0gbmV3X2NydGNfc3RhdGUtPmhhc19wc3Iy
ICE9IHBzci0NCj4gPnBzcjJfZW5hYmxlZDsNCj4gKwkJbmVlZHNfdG9fZGlzYWJsZSB8PSBuZXdf
Y3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgIT0NCj4gK3Bzci0+cHNyMl9lbmFibGVkOw0KPiAg
CQluZWVkc190b19kaXNhYmxlIHw9IERJU1BMQVlfVkVSKGk5MTUpIDwgMTEgJiYNCj4gIAkJCW5l
d19jcnRjX3N0YXRlLT53bV9sZXZlbF9kaXNhYmxlZDsNCj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
