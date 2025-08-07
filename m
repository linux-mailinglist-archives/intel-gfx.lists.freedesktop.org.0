Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B73F5B1D326
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 09:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A567E10E7EF;
	Thu,  7 Aug 2025 07:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HzRMUOEw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E009E10E0C8;
 Thu,  7 Aug 2025 07:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754551108; x=1786087108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gzEoSx0VWoJKiSHwLsNGQqH69hvtuDw6vh1d9/lZxFQ=;
 b=HzRMUOEwx9uUuLcWl0AFtgFVz39N/bCTlt1WNVZMr2xNM/8O9TX1S0nR
 sM2MogMB3T7hvNilGfQbDNRi4LPZKf2g1qqAsMvhUapB2BoeSlheBxfaR
 E0Sld9g/oRj9zJMLeiLeI+03ksVaYH4AJtdqU/I2IsFiYCmHyBJoSNBOt
 spyxP5L3a6VDx4MWU67mumQa6erSA2a4NVXVs3asGeIoc9vRcLNIZllJa
 ixG/sxw6FvAXAzfe78k6ZZgXRWUoRglPrYOMYduVFAeU8sp5s/diSSWOk
 I1dFrYujv8iZQb2a6KFZ5GjSQanY649/VOp/oeFWQFcaZ3CUouKAYrRBr Q==;
X-CSE-ConnectionGUID: afZyrYrAQMiEcWBfy60utw==
X-CSE-MsgGUID: tIiBza0cT6ecO6ZLapTTjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68253751"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="68253751"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 00:18:23 -0700
X-CSE-ConnectionGUID: gYqhAMISTaSv/NKiYqCUiA==
X-CSE-MsgGUID: cLS4eJyCTZ6LESBix/a63Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="202160443"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 00:18:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 00:18:22 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 00:18:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 00:18:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EsyXufziG+zEIoYUAgUkpFUmHmJ/0HNDI8Sx1hfacpGla7tnGUj/MiM4AboXzbBUSUunxdxMJP08H1We/kLgd8i5ubBI81XbFycA/nRFppN0w6l0XQwBblM8L7oVAPQ26/utE5TUCmcSbmGCbLrqeNu8u3AJsHydTJeoqEjxiBWlbm98S4TQSgWwzl5hEIfAlQmoCRxPskLNN506aOs5f/rnqF/KblBnnou3DNkTODxyxdpyqZOkv6Qbkep1m1FePiJ9waMVMx5IL4pXnY2lDVRLP3KEmrPsN8UKpdWU80lY+jGArymkwKEK78RZz1KTXruNvoNY6YM7tmf5ELvHRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gzEoSx0VWoJKiSHwLsNGQqH69hvtuDw6vh1d9/lZxFQ=;
 b=GWd16Cc8LZLeXRQsy9R+Yd9NV48trVbRjyLHSMwKnIdxKdMD77ECWNfL3BSd11wg6MerPIicVOYvDdWO97locRNmOyNiGlr1ThUG19T0N2OO2OYbig6Ilc7Y22O6BfdXGWcnFOsCXo1zqkMWwWI0m/MD+4A4tHgplE/P6D8GtRt/mYAWuQ/fLY/BBkOwA/Q0//zMjLtFN2cpOZBhEyQrbj+Pz8rIfPGSL/0xpzZ+DFzpSleUEaq8sF26RoJbO+Ul8XX8KuO8ezJQrPXsrWXHfxoVd/3UFX5uDaBluDqRvqkbUauGoqk7/hB+YE67VALOnUUFh8DOS17TNzU+p2M1pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ5PPF66B2E927F.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::830) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Thu, 7 Aug
 2025 07:18:20 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.9009.016; Thu, 7 Aug 2025
 07:18:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "janna.martl109@gmail.com" <janna.martl109@gmail.com>
Subject: RE: [PATCH] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Thread-Topic: [PATCH] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Thread-Index: AQHcAq2qKfum7TIz2UGOMLqsBUzZ07RWpJCggAANrwCAAB8lMA==
Date: Thu, 7 Aug 2025 07:18:19 +0000
Message-ID: <DM3PPF208195D8D2F7ADC627162674568A2E32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250801062905.564453-1-jouni.hogander@intel.com>
 <DM3PPF208195D8D507DE9636CA0CD3C0C21E32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <30aab2c888ef916658385c571e730316eb9c44c3.camel@intel.com>
In-Reply-To: <30aab2c888ef916658385c571e730316eb9c44c3.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ5PPF66B2E927F:EE_
x-ms-office365-filtering-correlation-id: e18b4740-fdfb-4939-93b8-08ddd5829647
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?THZtNytSQXdtb2JRM0R4R2ZUSlhKNDFmUkhSY01ST0MwTHJwYldQbVZtbWdN?=
 =?utf-8?B?azU5d2ZVdFRUdHU3aXk3QTZmK2htWTBiNUxVVWRSL0t4bkJaeUtpK3drWU5C?=
 =?utf-8?B?QUZaQlBFTUJyYjJGMGtvSXQwWXNsTUxnbkpMMmRsb2VrRjh0YktCSk9IOWxv?=
 =?utf-8?B?cG9oMndHRmZwZHUrNVdiSUo4Q05LNEZHOFdsMHhYd0htd0NMRW95SzJva1Vv?=
 =?utf-8?B?Qm5CT3RLdDAvcW5YcVV6UVN6ZmFVcFpieFY2cEhFekkrc1dIRXNVVDI4NVRr?=
 =?utf-8?B?T3UzREpMUHNEbmx1TlBMeFNqY0VndTZDalhzWDB6ejRqQkdJTU9sUmlUZjJi?=
 =?utf-8?B?NGErQ1dvTmhKZjIvcGIrWlduaWRJbjl0LzBxbUFPb240OGpEQU1xS1NwNFph?=
 =?utf-8?B?WDJtdmg1d1NuYWF2MzNLM1hiTG80LzB0U2pHdUw2c3FFeGZicUhKOXRwYUt4?=
 =?utf-8?B?NUxhc2RrYXZMNVJRRDRIenIwZHM5eFdHUUxLVHZpcEpmNTVmTVpYOGg0VnRr?=
 =?utf-8?B?NVJyd2RRd05ZWjZZT3hkSTFNS0FtWWJ0VUtZanhYWlphYmZUMkxPK3BzSzJS?=
 =?utf-8?B?Vmwxa3BTYkp6NWNwcXRnMmN1QXNuMi9zSGNWY0xQVXFXRUZrS1BzekNkeERW?=
 =?utf-8?B?UUJ6L2FEYUNFWTJMQ1JMN2lTdHpiM3FPRlkxOEd4QVZvRkc0QURodms4dzE0?=
 =?utf-8?B?NlgrWmRob0VJdDZKR0J6ZFQvcW1lT1ZSekVOV0Y1TmcrWWd1UW9MZURtMjVP?=
 =?utf-8?B?TUZrcG1wWUxKWThrNVJaRHQwZ0VMamF6V2ljYmNoK1NseEU5d0pUTzFYcjVr?=
 =?utf-8?B?c0hWenRUVGx1TVJaT0sva0tUZi9XZStRVzFCa1hvQTFhbFVrbUprYVFxWmtW?=
 =?utf-8?B?NFkxdTJrUlJLYjBMZmQ5bU5oVk8yRnRRemNXTGUrdlNCLzZnOS9yOG9oZzRa?=
 =?utf-8?B?MkNodndsb2JxL0RJb0daWTArcGJKemlyR25QR0ZiOHhUR1JTeWF0MGs3TGNi?=
 =?utf-8?B?eTdXLzZtdy90L2U2bTBrQlNCYWo5cC9vRWp2NzJ0UHhFQXh0WklpWWZvaGxy?=
 =?utf-8?B?dXNVTDVLM29OZEVtOVBER2hPeWt4TW1yblZYWUZjT1pzNVIwWUc5MG9MbEw3?=
 =?utf-8?B?RkhSSy83K3VBNmhwU0ppUWw0dDVhdnBzTXowR2N3WkQvMlE2T2g5dG5JOVBv?=
 =?utf-8?B?MDhBbFdrNXl2cHZIY09YRjFVd2JUSzZyeVI5WU9EbUh3ZDRPUTg0WGFFZjlt?=
 =?utf-8?B?a05CY2ZQMDVyT1BuM1R0Y3JxbFQzZmN0YTdVaVdqTFZxSzFEcTdpQnhUai9Y?=
 =?utf-8?B?L1RlbEVwb1RZTW9Hb2RJZHpEYitkaW9IMTN5eEZXSTRkUU5mMStIdXl5aTA2?=
 =?utf-8?B?UHVUcUVmNVY2WUJHNFBpZm9qZm96UjkxYlh5Z3ArdUQyRDJtWkJlL3ZhQk05?=
 =?utf-8?B?T2xyVFJoNlgzWTVIN0VTUHBhQm5EVzRyS2dmWUl1YjRkY0JJbXEzbmYrUDVH?=
 =?utf-8?B?Y0MrMVI3eSthWFYrMkM5M1lNT29xNFRZbklkRkVhU2I1cEFYdWViVS9PeE4z?=
 =?utf-8?B?WmdzS0JLa2Z0a2VLVDdiKy8rK2N4Mi9MRjZOYlhHYjVrbHVHSUwyZXRqTU9o?=
 =?utf-8?B?cWd3d3RudktiM0hXTk5xT0lzSXBhRG0wd2RZaU1iSjQ1ejRxUkRkV1dnU0pO?=
 =?utf-8?B?cFg0cWZZS0ZEOHdQdlg4WlVzV05wS0dsTHZpSnRyOE9xaXhVOU9BcnhGL3Fm?=
 =?utf-8?B?SUdPazB2YjdTMElETjE0RTVMTkhvWm1kNzFFeGhoQzhZV1ZsMkthVEtCZ1ds?=
 =?utf-8?B?RzlCMFlsZ00xTmdycndmdlBRRU5tQ0p0UTlyang3OTdBWUczcVBjRUU4MVkr?=
 =?utf-8?B?SDJUYWE5Ylp5N2NTekdCUVkrR3JmTXVJNEhTUkhtU2FXRm1KVU5SSkU1OW9U?=
 =?utf-8?Q?rN9AzSecedA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VDRNcThXQVNGeTkza2JIWVc2RGdlcFJFQU93V1RXR3pNdDgzTXJVMWRtS1NL?=
 =?utf-8?B?V1B4MmxNR3JEd2tMQjFwREFTcG9vbGlSTUhsam8vTkhCa3dDcWxtbDhUZ0lr?=
 =?utf-8?B?cTlJbDEydHFHMWphOE9iN3lmdU5vQmkzcmhVM0o0Z2J0YkgwaVpWeEl1N0ll?=
 =?utf-8?B?WlJRVC9FVXRQNHFXSEtCUGRENEtiTlYyenJ6YTRTT0lSYzM1YStBUzYwQmg2?=
 =?utf-8?B?MFJrVEUwU0E3Y1ZoMkVRNkpHWGRnbDgyTjZ1M1lIR2s0aG52MFJIVm1oczBy?=
 =?utf-8?B?aE1xTWZqZVhlbTZvVUNMMjJNQjJSR3RKVTJ6RFpxNXREYmdPc0t3VmNNV3ZL?=
 =?utf-8?B?a2d2UVo0bUcrYW0yNTBpZndhL0Q3U0t3V2xNQlFmVVNmd2FONlFVZGtDR1Iw?=
 =?utf-8?B?TXVwcGNaL0tHYjJRdS9wS1dDWDhoOHJTYnJqZmZ1WHFsMTc1R0RuSTBLU3V3?=
 =?utf-8?B?clJNdVpHS2w1QzJMZWdnenJSc0ZWR2R1UUZ0LytmWkVnajFaVngwbjFzTEFS?=
 =?utf-8?B?MmEwL3pWUjJURDBrSlF4TkpIUFVtdjlWZjlxQ0x2ZzhpZERocmtmU3pLb1gw?=
 =?utf-8?B?V25BREwyTDZPTkVLaDFmTEtiOWRjdmNrRUdXUmpzVXQ5ZG5rU2NVQzk3Z2Q1?=
 =?utf-8?B?ZFBPMU1LWkxTRkw1bDNuVDQwd2VqMzRHazJYV1lzaXlraUowSmsyWEVUQ05w?=
 =?utf-8?B?b3pqUkhoRXVaY3A3TXpVUXhKamJTZThya1RaRjVyOHNlN2c2V3grMFRtc21W?=
 =?utf-8?B?VEd3WXEwa1FFTzNyRUVNNzByWWRpTWJiRkpyTkJsMFk2bFExaExyRFp5R2Rh?=
 =?utf-8?B?aWh5TG1YUCtRQlV5TGhWL2R5M0RqQUFuTE9oNWRHRGgydnlLYnBBTC8vdDJq?=
 =?utf-8?B?cVE1Y3lrWWRxNmhMNzlQWW1BV0pnSUFVNklBamhjelNEbVlEcExYc1Fxclg5?=
 =?utf-8?B?RzhiT0pRbHFEcCs1cXBHVzVZNWViZnR1MUZVR1hOSDRFTFlQcXV1cVBhSnJx?=
 =?utf-8?B?Zkkvc2k1elJRWStnSk5pZkJ6YmFzWmlrdXo0VHl3MVFERDBycjJGRlRlUFJX?=
 =?utf-8?B?RVJjMEpqY1FwUFh4VExaVTJFQ0ZTWm0za1JkaEFvWnZsYm9tVkdBRzhXOEpI?=
 =?utf-8?B?OGlldWFBUFZHV0RRQmprWVVmTE5wdGFvaEdEajkyeGg5TTBlT2gvdzlCL1dx?=
 =?utf-8?B?T2k3NDIzeHk4RWJEY2t2T0w1SkFKalFKNC9SdlArdUR2SVFYeitCS283STlR?=
 =?utf-8?B?aTFRLzZmaVBvNjd6dmNOT1FpYmkvaTR4cTB1V0tkTnI2TFFmalJVdDNGb1Ur?=
 =?utf-8?B?cDUwaElTNGkzL250cE5oZXZ4cWVmSU5reHJuM2EzSmk3M3lXTlB1Slc4MnJz?=
 =?utf-8?B?SFJNbUJFWGgvRlo3alVKZVRhaDdmamlaUkl2aGd4UUtVWjBESnlRc1hnakgr?=
 =?utf-8?B?Q0RLZGhKcU1rWVhiZ21iZXpNaTBvSzZqU2I4Q0tlQkNPZ28zT0RKYVJTQU40?=
 =?utf-8?B?TkFvVVFLeVJ2UlJjYkpsNk12ZDdGSi9nR0Y4YTJ6cnYrTWpBWFA0bkZnYnBi?=
 =?utf-8?B?c2k5WVFNdzlUK2JUQmU0R1NDR0YyQ3QwZ3NLaUpyU0ZhcWV5cEkvalIvOVFl?=
 =?utf-8?B?Z0dwN1VBaTYvZmxZdTg5ZkxoaU5uOEFhTDRVUlkyazBOajUzc1gvak5ETERa?=
 =?utf-8?B?WEZ3NDJuSlRyanJrWTZlNXlzcnMwVHFkNjBLajBsOGdodGU3RlVBMWxXRHFw?=
 =?utf-8?B?Q3RRWWk2MEY4bnpXbi9lYldiSzVGdm1vS3UxN3ZpVzAyN1VPZk50eHVFQVZB?=
 =?utf-8?B?cThUci94R0dmVGFxeDAvcEliM1FkNVoxdDF2bFhFNjhJc21hUFc2cnFsa2lN?=
 =?utf-8?B?M2QzRkVjQnhQQy9aSmVlS0c4ZytxYm55aVJYcXlWdFZNcTdQdUpCK0Zqd2Zz?=
 =?utf-8?B?NTNybEhoakRlb1lsUmNyQjZZOVRxVmw1ZHBERmIydEJGTE9maEZHZTZ5dW1z?=
 =?utf-8?B?NXRwNUtyV0dBZHEzUlJ0LzRSV24rUUxmOEVQWWJqZUpqRUhiT1kwQ3hsb3Z2?=
 =?utf-8?B?RGJ2dSthcy92cDJTOGxsSUdGWVkwUXY4NXJHbXV5TTFId1lxOFdmbTFHa3RS?=
 =?utf-8?Q?/owJNxbG9M+eO0hK/nT3QWa4I?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e18b4740-fdfb-4939-93b8-08ddd5829647
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 07:18:19.9566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AY3T9JgDHXputybRvtE8YI2h5+skvZ1/cp8u7PgLlosvEPvzNlGZ63ipEnYUFlTjQzrTlM0EssuhetZaRLG4wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF66B2E927F
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgNywg
MjAyNSAxMDo1NiBBTQ0KPiBUbzogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPjsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBqYW5uYS5tYXJ0bDEwOUBnbWFpbC5jb20NCj4gU3ViamVj
dDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBEbyBub3QgdHJpZ2dlciBGcmFtZSBDaGFuZ2Ug
ZXZlbnRzIGZyb20NCj4gZnJvbnRidWZmZXIgZmx1c2gNCj4gDQo+IE9uIFRodSwgMjAyNS0wOC0w
NyBhdCAwNDozOCArMDAwMCwgS2FuZHBhbCwgU3VyYWogd3JvdGU6DQo+ID4gPiBTdWJqZWN0OiBb
UEFUQ0hdIGRybS9pOTE1L3BzcjogRG8gbm90IHRyaWdnZXIgRnJhbWUgQ2hhbmdlIGV2ZW50cw0K
PiA+ID4gZnJvbSBmcm9udGJ1ZmZlciBmbHVzaA0KPiA+ID4NCj4gPiA+IFdlIHdhbnQgdG8gZ2V0
IHJpZCBvZiB0cmlnZ2VyaW5nICJGcmFtZSBDaGFuZ2UiIGV2ZW50cyBmcm9tDQo+ID4gPiBmcm9u
dGJ1ZmZlciBmbHVzaCBjYWxscy4gV2UgYXJlIGFib3V0IHRvIG1vdmUgdXNpbmcgVFJBTlNfUFVT
SA0KPiA+ID4gcmVnaXN0ZXIgZm9yIHRoaXMgb24gTHVuYXJMYWtlIGFuZCBvbndhcmRzLiBUb3Vj
aGluZyBUUkFOU19QVVNIDQo+ID4gPiByZWdpc3RlciBmcm9tIGZyb25idWZmZXIgZmx1c2ggd291
bGQgYmUgcHJvYmxlbWF0aWMgYXMgaXQncyB3cml0dGVuDQo+ID4gPiBieSBEU0IgYXMgd2VsbC4N
Cj4gPiA+DQo+ID4gPiBGaXggdGhpcyBieSB1c2luZyBpbnRlbF9wc3JfZXhpdCB3aGVuIGZsdXNo
IG9yIGludmFsaWRhdGUgaXMgZG9uZSBvbg0KPiA+ID4gTHVuYXJMYWtlIGFuZCBvbndhcmRzLiBU
aGlzIGlzIG5vdCBwb3NzaWJsZSBvbiBBbGRlckxha2UgYW5kDQo+ID4gPiBNZXRlb3JMYWtlIGR1
ZSB0byBIVyBidWcgaW4gUFNSMiBkaXNhYmxlLg0KPiA+ID4NCj4gPiA+IFRoaXMgcGF0Y2ggaXMg
YWxzbyBmaXhpbmcgcHJvYmxlbXMgd2l0aCBjdXJzb3IgcGxhbmUgd2hlcmUgY3Vyc29yIGlzDQo+
ID4gPiBkaXNhcHBlYXJpbmcgb3IgZHVwbGljYXRlIGN1cnNvciBpcyBzZWVuIG9uIHRoZSBzY3Jl
ZW4uDQo+ID4gPg0KPiA+DQo+ID4gQW55IEJzcGVjIGxpbmsgdGhhdCBkb2N1bWVudHMgdGhpcyB0
cmllZCB0byBsb29rIHRocm91Z2ggdGhlIHBhdGNoDQo+ID4gc2VyaWVzIHRoaXMgd2FzIHBsdWNr
ZWQgb2YgZnJvbQ0KPiA+IERpZG7igJl0IGZpbmQgYW55IHRoZXJlIGVpdGhlci4NCj4gDQo+IEkg
Y2FuIGFkZCBmb2xsb3dpbmc6DQo+IA0KPiBCc3BlYzogNjg5MjcsIDY4OTM0LCA2NjYyNA0KPiAN
Cj4gQlIsDQo+IA0KPiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4NCj4gPiBSZWdhcmRzLA0KPiA+
IFN1cmFqIEthbmRwYWwNCj4gPg0KPiA+ID4gdjI6IENvbW1pdCBtZXNzYWdlIHVwZGF0ZWQNCg0K
TEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNv
bT4NCg0KPiA+ID4NCj4gPiA+IFJlcG9ydGVkLWJ5OiBKYW5uYSBNYXJ0bCA8amFubmEubWFydGwx
MDlAZ21haWwuY29tPg0KPiA+ID4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL3hlL2tlcm5lbC8tL2lzc3Vlcy81NTIyDQo+ID4gPiBGaXhlczogNDExYWQ2Mzg3N2Ji
ICgiZHJtL2k5MTUvcHNyOiBVc2UgU0ZGX0NUTCBvbiBpbnZhbGlkYXRlL2ZsdXNoDQo+ID4gPiBm
b3INCj4gPiA+IEx1bmFyTGFrZSBvbndhcmRzIikNCj4gPiA+IFRlc3RlZC1ieTogSmFubmEgTWFy
dGwgPGphbm5hLm1hcnRsMTA5QGdtYWlsLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxNCArKysrKysrKyst
LS0tLQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiA+IGluZGV4IDZiZDM0NTRiYjAwZS4uNDI3OWMyOGFlMjdjIDEwMDY0NA0K
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4g
QEAgLTMyNTQsNyArMzI1NCw5IEBAIHN0YXRpYyB2b2lkDQo+ID4gPiBpbnRlbF9wc3JfY29uZmln
dXJlX2Z1bGxfZnJhbWVfdXBkYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gPg0K
PiA+ID4gwqBzdGF0aWMgdm9pZCBfcHNyX2ludmFsaWRhdGVfaGFuZGxlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApwqAgew0KPiA+ID4gLQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRj
aF9lbmFibGVkKSB7DQo+ID4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4g
PiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+ID4gKw0KPiA+ID4gKwlpZiAoRElT
UExBWV9WRVIoZGlzcGxheSkgPCAyMCAmJiBpbnRlbF9kcC0NCj4gPiA+ID4gcHNyLnBzcjJfc2Vs
X2ZldGNoX2VuYWJsZWQpDQo+ID4gPiArew0KPiA+ID4gwqAJCWlmICghaW50ZWxfZHAtPnBzci5w
c3IyX3NlbF9mZXRjaF9jZmZfZW5hYmxlZCkgew0KPiA+ID4gwqAJCQlpbnRlbF9kcC0+cHNyLnBz
cjJfc2VsX2ZldGNoX2NmZl9lbmFibGVkID0NCj4gPiA+IHRydWU7DQo+ID4gPiDCoAkJCWludGVs
X3Bzcl9jb25maWd1cmVfZnVsbF9mcmFtZV91cGRhdGUoaW50ZQ0KPiA+ID4gbF9kcCk7DQo+ID4g
PiBAQCAtMzM0MCw3ICszMzQyLDcgQEAgc3RhdGljIHZvaWQgX3Bzcl9mbHVzaF9oYW5kbGUoc3Ry
dWN0IGludGVsX2RwDQo+ID4gPiAqaW50ZWxfZHApwqAgew0KPiA+ID4gwqAJc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+
ID4gPg0KPiA+ID4gLQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKSB7
DQo+ID4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwICYmIGludGVsX2RwLQ0KPiA+
ID4gPiBwc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCkNCj4gPiA+ICt7DQo+ID4gPiDCoAkJaWYg
KGludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQpIHsNCj4gPiA+IMKgCQkJ
LyogY2FuIHdlIHR1cm4gQ0ZGIG9mZj8gKi8NCj4gPiA+IMKgCQkJaWYgKGludGVsX2RwLT5wc3Iu
YnVzeV9mcm9udGJ1ZmZlcl9iaXRzID09DQo+ID4gPiAwKSBAQCAtDQo+ID4gPiAzMzU3LDExICsz
MzU5LDEzIEBAIHN0YXRpYyB2b2lkIF9wc3JfZmx1c2hfaGFuZGxlKHN0cnVjdCBpbnRlbF9kcA0K
PiA+ID4gKmludGVsX2RwKQ0KPiA+ID4gwqAJCSAqIGV4aXN0aW5nIFNVIGNvbmZpZ3VyYXRpb24N
Cj4gPiA+IMKgCQkgKi8NCj4gPiA+IMKgCQlpbnRlbF9wc3JfY29uZmlndXJlX2Z1bGxfZnJhbWVf
dXBkYXRlKGludGVsX2RwKTsNCj4gPiA+IC0JfQ0KPiA+ID4NCj4gPiA+IC0JaW50ZWxfcHNyX2Zv
cmNlX3VwZGF0ZShpbnRlbF9kcCk7DQo+ID4gPiArCQlpbnRlbF9wc3JfZm9yY2VfdXBkYXRlKGlu
dGVsX2RwKTsNCj4gPiA+ICsJfSBlbHNlIHsNCj4gPiA+ICsJCWludGVsX3Bzcl9leGl0KGludGVs
X2RwKTsNCj4gPiA+ICsJfQ0KPiA+ID4NCj4gPiA+IC0JaWYgKCFpbnRlbF9kcC0+cHNyLnBzcjJf
c2VsX2ZldGNoX2VuYWJsZWQgJiYgIWludGVsX2RwLQ0KPiA+ID4gPnBzci5hY3RpdmUgJiYNCj4g
PiA+ICsJaWYgKCghaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkIHx8DQo+ID4g
PiBESVNQTEFZX1ZFUihkaXNwbGF5KSA+PQ0KPiA+ID4gKzIwKSAmJg0KPiA+ID4gwqAJwqDCoMKg
ICFpbnRlbF9kcC0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cykNCj4gPiA+IMKgCQlxdWV1ZV93
b3JrKGRpc3BsYXktPndxLnVub3JkZXJlZCwgJmludGVsX2RwLQ0KPiA+ID4gPnBzci53b3JrKTvC
oCB9DQo+ID4gPiAtLQ0KPiA+ID4gMi40My4wDQo+ID4NCg0K
