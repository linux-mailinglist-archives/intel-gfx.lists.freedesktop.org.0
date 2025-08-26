Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7412B369CD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 16:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C18510E679;
	Tue, 26 Aug 2025 14:30:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aFWYK7Aw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FAA510E676;
 Tue, 26 Aug 2025 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756218655; x=1787754655;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5dmqJa0Z3qw0hcLNHqk/i9j8MENzDiEj6Ip2EqCTuig=;
 b=aFWYK7AwcYMqWjUUwfN3Y82XjkFa2ExXhIsenjOM2HJA8qzmN103AgEB
 udsg6sa5q8fLHaP42v8gpDBm0dq6tzkOwcvIRk0gRZmFZ5k3QSnXhCVkw
 AG8w3jymAKf1gG2lh+bSY/hp+VV+qaOszKO9VTcAI+wb4PN+VRLjbel2J
 CiAWC4D6WoUeyaWciViFllaetrT6Hrp6/UWsziQj3fvvp42molqZG6NeL
 IzlDpU66UYGD7cYeCEAq6LPrZuaj2d6SRUWrL/x197nvMWU26uKh/yQ+G
 0zbyx7dX4HfLiWb+tNaVG3bhG6nSYLRl5UkeWa/NOS0BjpjjggVMuaIPa w==;
X-CSE-ConnectionGUID: HX5CpCT8R6CfogUArPtPfQ==
X-CSE-MsgGUID: dwUSRtGQTi+WPUjQPDyZOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58519888"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58519888"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 07:30:54 -0700
X-CSE-ConnectionGUID: vE/AaGI7RaaFQc9lNfZ5aw==
X-CSE-MsgGUID: W+x3MJGWTbGSeQyEPKYmNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200482574"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 07:30:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 07:30:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 07:30:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.81)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 07:30:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KrrHCWLQ9G+Pqw9tgwlY7d9YgweZ+pyPsK5PrfP5xs+2AJLEQ0jV6vF8vGN7OUFtOFLknr32U61H1/5wAdrjbKIjT525JYejsfkBf5N86h9jZUqXqvRG/jWU/XYcGYQb14byvbSzysw9ubTD/SlqLqHMONUqtUyOgt7URW/zDGPUdkbgSsqP++nxWnFBCkKisahZpT4+3LgkXgAr3vFExziv0iAm4J6tQJCwcUYKuZjLZxhTmrB68jSmkoHcvr5QFDWjvuEX9Ym+MzVzQ1aWR2jgKPFZbC+A7AgsiTrrz0qk5I8cq1ikD+rSVfiocF5ltXTdAUjgtHU7E7+AeLqOEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5dmqJa0Z3qw0hcLNHqk/i9j8MENzDiEj6Ip2EqCTuig=;
 b=ompcQiPVpTFzyTUPxCgE1kLI4FI2T/hblSO0hB5pvxi4PEtc7NMCf9m7OZBCkgCGRK9UCvwpxHYGoZLLdhNRYMpJ/3m84+fnFtUvoBfAhN0TktE+82SHSFagRhABGGG+CUOlWn2QxtLzh10xOBJcyRnAXtOnyEeaOfqtjkpgL2T9rX9mGgAkLkFo5PMdE/5rxlEB2w5KHW9YzTVOPpahMYoXRolCU1xjcpj8QG33VHLlrlaIhVvpUoAKE5P7ECrf4fGpx2bsAkTxu602URtbJq3oG/y6c2D4TzC4pLxAAAYXXeT1vnIhm7h/kOIVyFZ3gwwjZKnIaGrLOEPzoIA5Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM3PPF1A07FAA60.namprd11.prod.outlook.com (2603:10b6:f:fc00::f0d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.17; Tue, 26 Aug
 2025 14:30:50 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9073.010; Tue, 26 Aug 2025
 14:30:50 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/4] drm/i915/psr: Add poll for checking PSR is idle
 before starting update
Thread-Topic: [PATCH v2 4/4] drm/i915/psr: Add poll for checking PSR is idle
 before starting update
Thread-Index: AQHcBpIjUfAx69EBy0aAK8tv75NnE7R0/uEAgAAgAgA=
Date: Tue, 26 Aug 2025 14:30:50 +0000
Message-ID: <808fef64029b77661d2e084c1ff7e29fc0706cb6.camel@intel.com>
References: <20250806052213.1800559-1-jouni.hogander@intel.com>
 <20250806052213.1800559-5-jouni.hogander@intel.com>
 <aK2qPstrBZZCtmfa@intel.com>
In-Reply-To: <aK2qPstrBZZCtmfa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM3PPF1A07FAA60:EE_
x-ms-office365-filtering-correlation-id: 763a093d-8d41-442f-d937-08dde4ad27bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?a1o1S0sxYzQxVE40TTFSVUJtN0MzdHY4TjBYeFRUUG9yeTZDbUZ4dm9icVhZ?=
 =?utf-8?B?QnB4RmxTd1dXZ3JDK040UlI3QlhIMGJMSEMvZmxLRS9pZkRnMTd2QTk5ZFJB?=
 =?utf-8?B?cW1DK0ZzRFdIN1RUc3lielZLQ3Vvc2dUSEF0b3AyWnJFTHNFVnNublRSQ2lL?=
 =?utf-8?B?SW9qS0JzM21DZUxjeDhOMnlsdFdmL0hXdjNQb0R3ZmI4YzlxbGwvNS9EdWd2?=
 =?utf-8?B?clVxTGdxbC9leE9TeVhFbnhsUHp0bWI3NWZmS2hscEl3KzJmb2paK2VKc3RC?=
 =?utf-8?B?aGdtM1RnMDBaanJxUFdpOWlJS1Y5b3J2Vm5HQXdxODU5ejBkaVYxVjVVTldC?=
 =?utf-8?B?WVppWUZ1eHlsMkJkenZsU3lGck9xWGJDSXVIYm1nb1pYWHQ5cFFFdzVGTlZt?=
 =?utf-8?B?Y05sWnFsR3A1djJTZFYxTWRlNGxZZVM4VXMxQjJjRzRLbC8xR05uVzRXQVZS?=
 =?utf-8?B?M2hmKzdWNzFzYTM1V2lrTFd6Nit6SWhnVzVoMDNScG9HUkxwZlJIeXZpNUxD?=
 =?utf-8?B?U3pic3hHYUNaMzR0cndiY0FKQ1RnODhVbE5aV2VZRHZXdEFGWUJsOGwzbExp?=
 =?utf-8?B?d09rK1dBcU5EZU9mUkpYTVJ6enIxK3JGZUtKTTU4MjRyQ3BQMEllV2dOYmdt?=
 =?utf-8?B?QXVSeEs0cWZaSERGS1d5N2VnRkNlRUNGTzZPWDhpSWZqSjk5SkZlUG10NFIr?=
 =?utf-8?B?N0RuMkFqK29tWmJDbUFzZU9pMlZxaWV6REx4Z3dLTktzemRjZkZ0aHB6Rkxs?=
 =?utf-8?B?SmZwS3UwTi9Hd24vU0tUZjhUb2lRS0hscEhxRmp6dkx0bFU2aGxzNjRiRGlK?=
 =?utf-8?B?dEx5cU94Vm1KMzBld1IxNHh4djhBcDZiZmZnT1pQNHZDMmxxZkRsK1FsM1Vv?=
 =?utf-8?B?WTEycXIwZHl5eXkzVTVodTEwSU1HeXZPMnhTeEtvTmVmM2IvUGlVbzNSRGJ2?=
 =?utf-8?B?V2ljTHlOKy8yS1R3Y245WEN5OEwxMG51QSsxdmsrcDRkdFN0andseTVDWkY5?=
 =?utf-8?B?YkM5L20wL0c0OURrWmRJZjAvUkZTZVh2aGNDRHFSa1krQzh2N0VSbWtiR1FM?=
 =?utf-8?B?VjJDaEhOK2Q2elZ5ZVZKTDFmVkVnVVQ4Y001RllJcEk5NUlXNnZleDE0Tm1h?=
 =?utf-8?B?MUd1TDJsbS9EU3VUNjBFcytESzlRNXp4alBBNU1yd2toajFsUUF0QmdQdXJH?=
 =?utf-8?B?RlRxcCtRelhUQnl2S0dCbXdGeGlSTzRCUUtkMVp4TjNIMm9Uc2dibExBVWww?=
 =?utf-8?B?R054Y0x5TVlTS2w4NUhvT05jaE1kOWdqQUZCLzV1dndudkJjRUJTd3J0QmQ5?=
 =?utf-8?B?WUJZSS95Y1RuK3FqL0xqNENiWkpUckRzTDY5RDVJSjVEOXV2a09FZXpBWkd3?=
 =?utf-8?B?anZ3UzF3UDBKVnJ2SHBYZklWSDE5RWVrMm5ocUZYc0NSQXBjcm5vM3h4V1F1?=
 =?utf-8?B?ZU9WbDEyVDFvWTJxazFjNTFWUGJ6WUpiRE9DbnhKSjRkTlM1N213cU5hMjVQ?=
 =?utf-8?B?MW03R1ZyZ2dYa0Uwa0t4RHN6dHNsZ3ExZWxuRkRVY0VDbUgyTGwrY1IxY2hk?=
 =?utf-8?B?RUc0OEQzR216NUJHVGlwakZUbUFxNm12OUZnTnZEZ2ZvUTV3UEtYT1I3RjNx?=
 =?utf-8?B?RXRoaE9CZWpzSjlNV3J2T2JISVREVTJMT01qR2hLUFdraGFaOFg1RmhkNVQx?=
 =?utf-8?B?d0wwTVpVSGpTM0Q0Uk1rNWV1dTJjMmFKSlNKWUs3TzBOa1k2MmxoQTEwK3Bq?=
 =?utf-8?B?VEdkbEkwQkJPVGh3bVNqdUpndW1DamtXMXVVVThvam12Qm1rYWRjNmt4QUE5?=
 =?utf-8?B?amNZQythcVROZjhSdG1xNk42bHQvWWxnZXRPZXdLRWFYb0o2aTcyQ3p1cklj?=
 =?utf-8?B?eFlONEQ1eWtieGhhcEphc1JlZ2VTTVhIZU1RTHNRdzlNdEYwU0JaYzhXR2ps?=
 =?utf-8?B?aDlyR3Rib2F0NXJYTWM4R1h5YUoraW1td0kxM3BTc3UyK0hqdzVUWlhDRTlu?=
 =?utf-8?B?bTltcTVLQVNBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZHpYbjZlSndnMUJNemtjSGxYMi9JeEJvem1JZWlpd1VWSVVvWU51UVhsSkRG?=
 =?utf-8?B?UlBNS0VNTE9LSER4L2VUdXF4R0R3Y3RuZG15MTlYbEk5V0JQOVRuZ1Z3K1g0?=
 =?utf-8?B?SnlsL3lnSEVFb3N6S29qMjVxMVRlcU5QNlFwR2ZCQmlIQjJuYjRFNmp0cHFh?=
 =?utf-8?B?MHFpNHpSV0xQUmNaZUd5c3lMdE9KY3NXOEg0dWZLU2hZVmRLRXZRZUVTcmky?=
 =?utf-8?B?bnJRMjAzWWF0NmZVcWRTMFQ2NS8xRTdUZ1ZjLytIMFNGcWZFaURYME5HdlRL?=
 =?utf-8?B?M3lIMDQra0Q5ZEJ6OUtyRGxsRkJYeW5HY2tnYkJkUWw4SkJHeVdqY0hRK09r?=
 =?utf-8?B?Y0p2akVLb2hKZjNRMitmd3R0Z2Z4ekVIS2tUSkdZT1BnVk5CS0l6OE9mRUND?=
 =?utf-8?B?YjFWYkE0OGYvdmZzYnEwRmRFMmNIV1RpVHZabFhCbTF5TUpQaTBhb1AzY3BO?=
 =?utf-8?B?TFQwejUrcFY5bUZ3ZUw3SndPUURMYkV0eXJFWXVPaTJ4U0pZSFVIbXJjUEZh?=
 =?utf-8?B?UXRLUHkwL2FaNFIrODkyeGFTVm9PeUxoanF3L0pxK1RaQkQreG9lU2kyWUVy?=
 =?utf-8?B?NUN2c0hhNUo0WXZpUVNnZExXb0I3V3l2Q2lZK2lHd2Y0V2JlUzQ5T3ovaXNQ?=
 =?utf-8?B?VmM3anJvZy94bmszL2ZQRlRoZGd4OFBhY1RuNDAyVDNKdkpXY2RvZjVJdzNl?=
 =?utf-8?B?RDlGdDcrb2IrSXNPRjMwLzJNbGlueW1pcFY1bkxveGdTY3JiZ3Z3RXBVeXlC?=
 =?utf-8?B?a1ZCWmtyeEpndjdGVUdlczdONzc3S3YyY1g0b3VId0xPWHRKcUxyanpaNjVn?=
 =?utf-8?B?UWpMVnE2dlNVL1FpaGdoOUt1WWpJZmFzK2tKY3ArZnBXYVVNZlBDRUx0bytz?=
 =?utf-8?B?SWliSWs1YnpTK0E1clNFcFJacmx5RzVrVnNIZnV6UWxWVnIxSUNTMDRXRGQx?=
 =?utf-8?B?TGZXK1I0bDlTejJXTTVKZGdVSDNvUVlteGlkZTBLbFNCYzU4NHowdkZtQll0?=
 =?utf-8?B?THhDQkZ1WUJXREdyaXFLU2ZpMU1DOEFZeWN3OWx6WDVCQjFSWHQ1cXErbmg5?=
 =?utf-8?B?TVdaQ2wzbWl5Q0ZoVW9vWTBraERnbzdUcGgybk5vS3JtZndQbGdhRlJiUWxI?=
 =?utf-8?B?YmVycURLVm1CeWhobFdzV3loWDVnc0duNGpuK0Rpek9SS1c1Y0FpSTNrZzdo?=
 =?utf-8?B?ZkQxVWt4UWlkMmRXeUFIbm5LUHVHaTZ6ZnVzaWFIY1RoYUIrMWxleG11U3ZF?=
 =?utf-8?B?cjRVQ0loYVVSbE8vQ2dHME1qdlpNWDJ5aEc2WG5BNU9VSnc4WUV1TEJrZm5Y?=
 =?utf-8?B?eGtBZ0lqUGRqQjVrWjZuTkRFYm9rUDlIYlB0ckgwYTREODBIWWhkeUFicHp3?=
 =?utf-8?B?alNDZGVXUXhLcmxLbDl6MUtxOVdXTmJ5ZnRZM3V3OGUxOW01MTBjRGJtV1ZY?=
 =?utf-8?B?V2Z0Z0RScWpTLytNWHJxOStpZDJTZm1NeWJ0THdpSjQreW1uaVJibVJ2cCsz?=
 =?utf-8?B?SE54ejVGOW4xazlHZXJuTFNNc3lmaVhLMklDajdVcHg1bnBiNzJ4VUd6dDdC?=
 =?utf-8?B?d2QyRUNpNy9ZTlZLY1lHSGdBWjBnM1E1YnVFbGNUcmhoODlpK25zRUwyZC9B?=
 =?utf-8?B?N0pnOU0vWTVZcUdvRmVIVEVXRnQvN3lKaDJqQURpR1hmdUp3NHJOQ1Avdmti?=
 =?utf-8?B?YmpoYWs0UmNlcG9hN3NHcGVhbFVPQ05tYmtlSWhHUTVXVVJLSGFEdkF6YU5r?=
 =?utf-8?B?MlpldmNEV1ZCNnZ5ZzlheDZRakRFb2hoT1Q1RUNpcmR4TXBnUzRpWXZCaGpX?=
 =?utf-8?B?T25WV09ETFRuZUg2ZnFmRFgvWFovYlB4UGo4VGVoYlJlQm9RUTJVSDMwRk8r?=
 =?utf-8?B?RURhb3NnRW16aUthcDFvcVdqOWg3Z29QdWJGaEZqM1pSYThxN3BWZi9kY3JD?=
 =?utf-8?B?ZmpsU2RPZGJOd09sN3hhTCszN1NOeUpRRVJ2cEhyNGRMTG0xU2Y2VzRzTFI3?=
 =?utf-8?B?d1M3OG8wamVJcU01N0Y1TiszcXNlTzdQbFBvYWZldW9mZUlKZDBUZ1JVU3c1?=
 =?utf-8?B?TzdMckNXMjhRTm5uaVg3cGQ4cExWZUQwSWNuMUlEZXM1cWxWNkNQOUdHY080?=
 =?utf-8?B?VFhESHZYaXR6OFkySkhjOE1mRDl5WS9pQnE4anRuNWZLRDkvTFJGbnozdis3?=
 =?utf-8?B?Nm84cUJJVGdhYVlrR1ZxRnp5ejJWQ0tBVmdXY2pEU2diaVljZHFrVXcyNTlt?=
 =?utf-8?B?bFdvT1VlaGR4a1l1RXFZUXU5UTNBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4A094D4A7511E04899BA0DFD454E5E49@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 763a093d-8d41-442f-d937-08dde4ad27bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2025 14:30:50.3007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2wUFUPe7AxvS909Ko0Gtqklj94lZIFnqQeZLD5i7AMVNOWkPou44x4hnEuKzsZJXZSblRGDgxjtSLvWJhTsFkoauATCO6JHt865X2tMEf18=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF1A07FAA60
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

T24gVHVlLCAyMDI1LTA4LTI2IGF0IDE1OjM2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgQXVnIDA2LCAyMDI1IGF0IDA4OjIyOjEzQU0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBXZSBhcmUgY3VycmVudGx5IG9ic2VydmluZyBjcmMgZmFpbHVyZXMg
YWZ0ZXIgd2Ugc3RhcnRlZCB1c2luZyBkc2INCj4gPiBmb3IgUFNSDQo+ID4gdXBkYXRlcyBhcyB3
ZWxsLiBUaGlzIHNlZW1zIHRvIGhhcHBlbiBiZWNhdXNlIFBTUiBIVyBpcyBzdGlsbA0KPiA+IHNl
bmRpbmcNCj4gPiBjb3VwbGUgb2YgdXBkYXRlcyB1c2luZyBvbGQgZnJhbWVidWZmZXJzIG9uIHdh
a2UtdXAuDQo+ID4gDQo+ID4gRml4IHRoaXMgYnkgYWRkaW5nIHBvbGwgZW5zdXJpbmcgUFNSIGlz
IGlkbGUgYmVmb3JlIHN0YXJ0aW5nDQo+ID4gdXBkYXRlLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0K
PiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyICsr
DQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4
IGMxYTNhOTVjNjVmMC4uNDExYzc0YzczZWFlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAtNzI3MSw2ICs3MjcxLDgg
QEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2RzYl9maW5pc2goc3RydWN0DQo+ID4gaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoAkJaW50ZWxfcHNyX3RyaWdnZXJfZnJhbWVfY2hh
bmdlX2V2ZW50KG5ld19jcnRjX3N0YXQNCj4gPiBlLT5kc2JfY29tbWl0LA0KPiA+IMKgCQkJCQkJ
wqDCoMKgwqAgc3RhdGUsIGNydGMpOw0KPiA+IMKgDQo+ID4gKwkJaW50ZWxfcHNyX3dhaXRfZm9y
X2lkbGVfZHNiKG5ld19jcnRjX3N0YXRlKTsNCj4gPiArDQo+ID4gwqAJCWlmIChuZXdfY3J0Y19z
dGF0ZS0+dXNlX2RzYikNCj4gPiDCoAkJCWludGVsX2RzYl92YmxhbmtfZXZhZGUoc3RhdGUsDQo+
ID4gbmV3X2NydGNfc3RhdGUtPmRzYl9jb21taXQpOw0KPiANCj4gSG93IGNvbWUgdGhlICdldmFk
ZSBzY2FubGluZSAwICsgbm9ybWFsIGV2YXNpb24nIGluDQo+IGludGVsX2RzYl92YmxhbmtfZXZh
ZGUoKQ0KPiBpcyBub3QgZW5vdWdoIGhlcmU/DQoNCnRoZSBwcm9ibGVtIGRvZXNuJ3QgaGFwcGVu
IHdoZW4gUFNSIGlzIGluIFNSRF9FTlQvREVFUF9TTEVFUCBhcw0KY29tbWl0dGluZyBuZXcgY2hh
bmdlcyBpcyBzdGFydGVkLiBJdCBzZWVtcyB0byBoYXBwZW4gd2hlbiBQU1INCnRyYW5zaXRpb25p
bmcgaW50byBTUkRfRU5UL0RFRVBfU0xFRVAgaXMgb25nb2luZyB3aGVuIG5ldyBjaGFuZ2VzIGFy
ZQ0KYmVpbmcgY29tbWl0dGVkLiBJbiB0aGlzIGNhc2UgZXZhc2lvbiBwYXNzZXMgYW5kIFBTUiBp
cyBjb250aW51aW5nDQp0cmFuc2l0aW9uaW5nIGludG8gU1JEX0VOVC9ERUVQX1NMRUVQLiBUaGVu
IHdha2UtdXAgc3RhcnRzIGltbWVkaWF0ZWx5DQpkdWUgdG8gcGVuZGluZyAiRnJhbWUgQ2hhbmdl
IiBldmVudCBhbmQgaW4gdGhpcyBjYXNlIEhXIGlzIHNlbmRpbmcgYQ0KZnJhbWUgdXNpbmcgb2xk
IHBsYW5lIGNvbmZpZ3VyYXRpb24uDQoNCkJzcGVjIGlzIHNheWluZyB0aGlzIHRyYW5zaXRpb24g
dG8gU1JEX0VOVC9ERUVQX1NMRUVQIGNhbid0IGJlDQppbnRlcnJ1cHRlZC4NCg0KQlIsDQoNCkpv
dW5pIEjDtmdhbmRlcg0KPiANCg0K
