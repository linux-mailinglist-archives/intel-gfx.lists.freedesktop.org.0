Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C4DABD018
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 09:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F6A110E3AB;
	Tue, 20 May 2025 07:11:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ew2jdbvq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0665C10E33E;
 Tue, 20 May 2025 07:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747725083; x=1779261083;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sNwpeT7/eANpxI5D/LY/PeGd9KEtaxvxz1TUgfECOXM=;
 b=ew2jdbvqoVv0UXl+DhNyVUmiCPuuKd9Moh+1MRH/1C14BiNrQ9Sqmw0M
 82KGi3P1W0S4Ol5QoEBeMIrQTYQ1SUn/SnSBvFTOgQCB/+OxHw1k0RJDb
 ChUtPnt617YPPgT4Q/kBQq0eFLq52UiWfL6+gMLJh65/8iYfD6dDHeID+
 zwt98yd9IU0mCnw3mrqZ2/Dtx6tTwdK0PyZIyazcpQR5bnCv/oG4DFqek
 AK+MC3LhkVCDO9xsZSz0ECLVLj8EYDTI2CLsDCuHDiU7hn+4Uzea0UwMp
 7aRr+/0xYsjmHrOaRlEAENMjiefu5/G8seTOq18g3uRIaL41DF6BXEFHX w==;
X-CSE-ConnectionGUID: JvXtybT1SZu1MGIv28hzaQ==
X-CSE-MsgGUID: a1zonXoIRQqyoMPNO4ZivA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="37261771"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="37261771"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 00:11:23 -0700
X-CSE-ConnectionGUID: 9OXrBeFbSb+aSLhPtLUa3Q==
X-CSE-MsgGUID: flKpS7EvSMKWFqolYwWVLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="176725620"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 00:11:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 00:11:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 00:11:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 00:11:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KN5mhMxvHp6HBN3Ur5Vn8FkJMeTur5pBZX6ci2k5jcZKcmKUxMd76MxtgRZKlFr6XclEo+MOH5GEXmVS/ye6nAQ3dwmFzwi5Tom3FXRQJNM4RNZG2TpFHeiManXOTiZGdDN2R7iaMB4qCZRqHGPthWWLOQV5INF5bcLUb13pq9V3Hrr99dCLPItxWoAo6r/5D9eex5samuLR/qZf4oJeChkNzb+xae8cbnvJ00aETUM+xcfBJbQxY0HwX2x2sCM/GzUTXVamvaQlnC/pYvyR3g22H/yxIHHbtPAyBSlfRmAZo2JFXTdn5J+080QWDnSbF+4v414irHFK8MhQDu6OYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sNwpeT7/eANpxI5D/LY/PeGd9KEtaxvxz1TUgfECOXM=;
 b=cLSH6Wq8AGGG0TYT7deg+GP4wS3xjH6e2k5W+wyraen2JT7s3mA9wUyYrDKDgPPYq1LppV8rhM9XZREr8Jr3GIbwD3ymlhcD5k2erCbnNWt1AZaL+ya6CqnOmKZrmYWmI0op+paKyVEePDN+DyKO4+IYTI/SRSBvQRSAP/DWhV7ie3Ch5tCn1WrOyxCVfZl8miwxabJgu6mQkf9N7nhBFvl0C9jLWnvBRJKivoeknwhZMSrKyCw70cQ+zKf+XL98INOFlWbbAS/bQ+3zS1+kUZTVaaBcPg0PnTlkSpTgu4uuX9oO6FCbEv6qlJCZM1GsYV5++LFd3LWkFEFr8xWgAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB7782.namprd11.prod.outlook.com (2603:10b6:8:e0::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.30; Tue, 20 May 2025 07:11:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 07:11:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 10/12] drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
Thread-Topic: [PATCH 10/12] drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
Thread-Index: AQHbxlaOJ5pZsGBOt0mjxwRvUvIi+LPbH9uw
Date: Tue, 20 May 2025 07:11:19 +0000
Message-ID: <DM4PR11MB636027F0C0574755A34B39A6F49FA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
 <20250516113408.11689-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20250516113408.11689-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB7782:EE_
x-ms-office365-filtering-correlation-id: e7ad1d08-94a7-461f-8b8a-08dd976d853f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dURUVkw1MEpZSWswdGk3dkxWMkFRbXBBRjlTTFEvczdJamgzcnFJb2tPRmZj?=
 =?utf-8?B?OWkrLzlJMlJ5NmxBRTRKWHdtRXlBSGtrem5PTStIYW1VWnFWSTBDNE5XOEpQ?=
 =?utf-8?B?UFhNaG93bFNvK0VJK0dYWWJ4alNRT3RPdnJVczZxMUprQTZZLzd5NWswRzRV?=
 =?utf-8?B?a1FTcW9ZNHh1cTBIZ3hHbFExNWJpMlZCY1h1WFZGMFRvMnM2K3FDWm5WQjgw?=
 =?utf-8?B?US93bVVwVDB6dVNjd3J1TXBVVjN1aU52aVRMNDlLdm9SWHBtd20wdzhvOTRs?=
 =?utf-8?B?QTZjU1dtSlFKbEN6d2RzVXBpYVV5Rzh6cHc2KzZSWVdsYnRWaGhlL3JMMXZy?=
 =?utf-8?B?K0lDUGlidS9zQXNLai90VnN5ZklaMDBSZnhkeWlpakU1K0k5Y0VuZGpYSkRt?=
 =?utf-8?B?L1VuWGFxYW5tUDI1aHpwbUxlK0VkWnBFZC8xT0sxRm5kR05CYXVMbWdYakpS?=
 =?utf-8?B?UEU0ZGRLY2ViVDNmNHlIbTB3ejg2QkRVQ3lHemxLakJ4NVlKT3pwOGxVOGZw?=
 =?utf-8?B?YzVhZ2trc1dDMklnRXdhZ2k4NjJkelZETDUrSk8rV01VTjhheUYzNjh5NTl6?=
 =?utf-8?B?QUNoVWJNazJmQitSMWJxUThzZkEydGZBREpIRTFueTlPVUVUVFdmYlBVWUhx?=
 =?utf-8?B?Yi9pVW81RmQwMjd5ZERvMzNuMm1pbGsrbUVxalRIZkI3SE5ZMytxbGJyT09P?=
 =?utf-8?B?aGM0QTJyTytyUHJkYWVmK0tTT0RjQmpTUG9BeThONkFrOGUvUWVjRjY1OTV0?=
 =?utf-8?B?Y2RsNm9kZHZUYTB6VWt1VjFpUDBFSWQvYnZQOHZnTnRDbjFZUThVT0tmZ2U0?=
 =?utf-8?B?V3NEZkppZUlqOW1hb2dCenRobTFSUVJxVUdHeTdRalByMWVXYkJJRllSZytw?=
 =?utf-8?B?cWFZc3pPbENHQnNSeGU1L2dVOC9sV1NOcStnaUV0ZzJyVVdhT0NFSzM2bVU0?=
 =?utf-8?B?VVpETCtqNVZLYStLeTc2K1pMYWZvK1FrMzFEVmpXMkZ3R3BHaHIyOE1USW8z?=
 =?utf-8?B?NjZrK01sSnhYQkRtTUJFbEVoQ0tTNTdybnJITFFDd1RVNm4zQTJMZlhXbm01?=
 =?utf-8?B?ZWxBT09hdm1TVFFiQUdvY04vdnJPWE1IM2JOQ3BCajQxOXpiSkVvNWRiVi95?=
 =?utf-8?B?VE9RTnVqQUJWS3NmcFZhRGt5UDRZeWFUSnlSc0UwZHpoZGRGRzVScHkyZDZ2?=
 =?utf-8?B?ZElwRzdWck8zbzl2aXh2RExoZnk1M1JSV2FzK3JOWmxDd2c5TXVwandaQ2Z3?=
 =?utf-8?B?REM0TGJ4RGxVOWFGSG9mOGFWNDRITENVbG9ELzczSmhhbVVoOUNTdExhaVBa?=
 =?utf-8?B?bnhoM0htYm5JSXpXM2VUdk5aTnZESFhpMVVXRWVyK3RYa3QzZ0p3SE5RejNp?=
 =?utf-8?B?eEIxd1YzNkhuS1laWjlReUdhVEFvQngwNG05aVVadHVwWGdLK05ibTl5NEVL?=
 =?utf-8?B?ektuMEtNSlBMaU5wSDk0OWlrQUJWbnlMdEtGUTNpTW5PdFh5cjZaN3R4b2gz?=
 =?utf-8?B?QlBWY3hLa0dhaWdwYzBFRlRwSWF2UjJRYjFUdExQYkdFbjdyeGVRRVpVSUVV?=
 =?utf-8?B?Z3BhcWVJdThVOElrN0ZZOG9zdFplVTF3cTU3amRyUit5VW1Sdzgwb2YyTU42?=
 =?utf-8?B?SE9ONVhSRTl2SWhwMmlpdWtYSVdvNDN6a2wxU3RvaUF3ZWVhbGdNVTdlN0F4?=
 =?utf-8?B?ZG5ZTUtMdG9GWEMrT3lsRTdyd0ZHSlBuWGc4a2FZYXk5L2w5OVZDTDEwWmsr?=
 =?utf-8?B?RzI4YWJTZ1lJcWxLSU9jZXA2Ums0c3M5NzhYcUUvTWY1ditNMGlXblBKMjZK?=
 =?utf-8?B?RjYwbGEyVUJpMkZSSFk4THBnRUx6bVBTNWJFZ0VPTm83RHhoVUFlbHRKZEZ3?=
 =?utf-8?B?Y1VZelMzSyszcHdLTXFqMk92a041WUoySTFubys2WklIbll2Z1p3WW5maTcv?=
 =?utf-8?B?alVvaytVMDg2d3VpMldnMS8wZ1ltejVSM213d3FKM21ZdXhSMkJPa29SNXl3?=
 =?utf-8?B?ajhyYitTQmdBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S1Awa0dZSStiSit5dHhnRVI2WVdTUmN5b0RHYjA4YTlxNnNad1VBMUFldkdF?=
 =?utf-8?B?ZGNab1NZYVNnbEJmUWp4ZHJMSUxVWGdUcDZ0Q2MxNFFOSHZqQ0VPNmpJQlRu?=
 =?utf-8?B?K01DNmRQYjRBbDBRbTJFbGFiSUI4NFZkK3JGL29Hc09OYnphQk40dFhEbkgv?=
 =?utf-8?B?SnFSUlYwMk0vYXFCbWZleXVXb1MzWXFsVWJmZzlmMzd4dDU2SitkNXhxNnVV?=
 =?utf-8?B?TjUrSElDM1dYTEJyQ20rcCtVa201YSs2SHhvK2N3ZWlJUTNZeHRvRVlnL1d0?=
 =?utf-8?B?aXZFVVVMak55K1pwVzZZUTBBby9jL0RQMktqN3RmTVRxTjFoRXZOTnVlYjIv?=
 =?utf-8?B?S2h2emJsMS81VXM2ZG1GU3VQbC8wRmxjQU9YYlJad296R2RyT0JTenN6bW9Z?=
 =?utf-8?B?Mm9uWUhmM2NEQ204cDZMV2o1TGdzcWY0Y2pBRmJ4NGoxRm5yRG4zaTNGY2NO?=
 =?utf-8?B?U2NjbDJVNndZZ0tvMnNiU1E3RmZ0eVhFSWlvRmZUZHA2dG5EZFlMQURBMTBp?=
 =?utf-8?B?cGZHQkVmTkphM1BnSmxIc2ZLR055eC9jQ3JMeVZqcUVXcDV1K3dDU0diMm5y?=
 =?utf-8?B?R05MUGpmOTJjUHNlVlAzMk5yTzVtQmY3RlJhQ05RaVpXZkE2bWFkZk1jZWND?=
 =?utf-8?B?NXh5aWRnRnRZQzJZOTlyTXMrQmpNMzZQS2k0Qm85UnlFMGFUNFlwY2pKV3RI?=
 =?utf-8?B?ZjJXc3dHV3ZXRTNyNWROMDRJbkNFRDJZVzE0c0NFNE5sT2pEZUJxa3hybWpD?=
 =?utf-8?B?TnZMd1VkWVNSdzRpeWc5YU1mODU1YjMzNGNyb010QTM3L2dFWHllcE9xQUMr?=
 =?utf-8?B?R3lTbUQwZTJEa01aZWluUmpoaUN4dW95S2NtYWJYZjh1QWxRc2VGN1VJY0RW?=
 =?utf-8?B?b0ViYmdxVkl3ZXh2d2ZjU3kxOFJJaTdYdjJXRlRBbFd0d0NDSXJJRlVWSWpW?=
 =?utf-8?B?dFUydkZuU3N5byszS2xrcFkvZXB2Qk5ac25tMVRCN2Q2UFRNd3BPZXhjaWI5?=
 =?utf-8?B?dHltQ256OElQOU82VTFmTXZFQWtQdmFwMjlCNk42aG5QWFFMcS9qRVdMTG9s?=
 =?utf-8?B?Z0NvOUlrcGNjWHlOcmVRRk5hTU1HUGZSeHpIaUpJc2c3WDVRR1k4RW5XNEtB?=
 =?utf-8?B?bmdTcXc2UGdaUVJHTzJmelZqNEl1VTVGeER3cDhmcVpWS2NQZVk4WnQxTHNo?=
 =?utf-8?B?ZTVETkNSU25BYnpYeDVjcGdPc0R3RVdtSCtHNjNjc2V3anhiWU9mdU1pcFdK?=
 =?utf-8?B?elVsZUx5S1YwdFk3UnVDTlFsclFZZFdaM1VhV1VJYnlNOFMrb2lITlZwUTNQ?=
 =?utf-8?B?ekttakhyTitLUXlTUVBPdEJsVDhIcjdwUTRSZ2E0QWFRZmw5ZUpveUZ2QmRK?=
 =?utf-8?B?TEhEWVJVNENVcU1Oemw0aGU4TmtYanZpTnZXcUpJSzBZS21ZakEvUFBuTDFR?=
 =?utf-8?B?cFI4VkZpdHprQll0TkpDb3ZBZXpwWThUNkptVWJuZ3A3bFFwdkJGL3F3blRV?=
 =?utf-8?B?Z2h2VGF3V09oeVJRTWFFSTloUEQ3WE9mM09QSlZ5Yk9kMFhLL3gvSWxWQlFl?=
 =?utf-8?B?aFdYeUZZWUh5bWx4ZEc2QkhhQk5UbTF4cmpSemVPN3lNeFFiNFBxYWlYM1BI?=
 =?utf-8?B?dmdyYXZoV08zaEJnUTVzZUdrV3BvQUQyNVFsM0xGTFVRTGlKQ0I1OWg4VzJN?=
 =?utf-8?B?OWRyanlpam1WUGlTakovdmF6dnVkQ3lzbjBwQXdGRnlzSzBvMDhQd0hzODRo?=
 =?utf-8?B?MjY0WS82eENRdmVLQVprU3NORjhaVWdOV3pwQ3VRL1Z3VHVZS2lmZ0VkejFT?=
 =?utf-8?B?cGJwSE9vSjFCTkF5bVkwNHQwMFNnQUpOMVBBVjh3bzg5WnBzb2RUM2k5YjdI?=
 =?utf-8?B?c2dDMGRkRnc1UmdQOFJJZWFPcjZMNEJXQTNXaEROaVBrQ0pJVi85eGZwT2V3?=
 =?utf-8?B?blNBeTdhNUtadkVaTnhnd1h6Ym9zdFdlZitqZmphTUU1bjZhRUthd3p3bTlG?=
 =?utf-8?B?WjdBUUtRSlp1WEdraEZVY3FsQk53WkdmY0doUEZ0MzgxM2V6ZGlCRGhRZ0Mz?=
 =?utf-8?B?RWM2ZCtaeHRvT1JTa0RrcE00WUx3RGdIZUFPYkNmRWlQeThJdU8zTFdkaUhR?=
 =?utf-8?Q?mzX4atQREblIxFIpGa71lrjeK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7ad1d08-94a7-461f-8b8a-08dd976d853f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 07:11:19.9161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DvDOp2VR3e08LO1Iqwto+J4FFHbTRYPUoSmNLa58oy181sYKRDI7GMU8yTRkngjxcgC4ENhIlHuC2Q2zS6TE+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7782
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDE2LCAyMDI1IDU6MDQgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMTAvMTJdIGRybS9pOTE1L2ZsaXBxOiBJbXBs
ZW1lbnQgV2FfMTYwMTg3ODE2NTggZm9yIExOTC1BMA0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFRoZSBub3JtYWwgZmxp
cCBxdWV1ZSBjb21wbGV0aW9uIGludGVycnVwdCBkb2Vzbid0IHdvcmsgb24gTE5MLUEwLCBhbmQg
aW5zdGVhZA0KPiB0aGUgZmlybXdhcmUgaW1wbGVtZW50cyBhIHdvcmthcm91bmQgdmlhIHRoZSBk
ZWxheWVkIHZibGFuayBldmVudCBoYW5kbGVyLg0KPiBJbXBsZW1lbnQgc2FpZCB3b3JrYXJvdW5k
IG9uIHRoZSBkcml2ZXIgc2lkZSBieSBlbmFibGluZyB0aGUgYXBwcm9wcmlhdGUgZXZlbnQNCj4g
YW5kIGhhbmRsaW5nIHRoZSByZXN1bHQgaW50ZXJydXB0IHZlY3RvciB2YWx1ZSBpbiB0aGUgUElQ
RURNQyBpcnEgaGFuZGxlci4NCj4gDQo+IEluY2x1ZGVkIGhlcmUganVzdCBmb3IgcmVmZXJlbmNl
IHNpbmNlIExOTC1BMCBpcyBwcmUtcHJvZHVjdGlvbiBhbmQgd2UgZG9uJ3QNCj4gYWN0dWFsbHkg
Y2FyZSBhYm91dCBpdCBhbnltb3JlLg0KDQpMb29rcyBHb29kIHRvIG1lLCBidXQgbWF5IG5vdCBu
ZWVkIHRvIGJlIG1lcmdlZCB1cHN0cmVhbS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYyAgIHwgMTkgKysrKysrKysrKysrKysrKysrLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5jIHwgMTIgKysrKysrKysr
KysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rt
Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBpbmRl
eCAxMGQxYmU2OGRmNzkuLmNkMDI0MjU0ZGI3YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IEBAIC0xNTE2LDkgKzE1MTYsMjYgQEAgdm9pZCBpbnRl
bF9waXBlZG1jX2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LCBl
bnVtIHBpcGUgcGlwZSkNCj4gIAl9DQo+IA0KPiAgCXRtcCA9IGludGVsX2RlX3JlYWQoZGlzcGxh
eSwgUElQRURNQ19TVEFUVVMocGlwZSkpICYNCj4gUElQRURNQ19JTlRfVkVDVE9SX01BU0s7DQo+
IC0JaWYgKHRtcCkNCj4gKwkvKiBXYV8xNjAxODc4MTY1OCAqLw0KPiArCWlmICh0bXAgPT0gUElQ
RURNQ19JTlRfVkVDVE9SX0ZMSVBRX1BST0dfRE9ORSkgew0KPiArCQlzcGluX2xvY2soJmRpc3Bs
YXktPmRybS0+ZXZlbnRfbG9jayk7DQo+ICsNCj4gKwkJaWYgKGNydGMtPmZsaXBxX2V2ZW50KSB7
DQo+ICsJCQkvKg0KPiArCQkJICogVXBkYXRlIHZibGFuayBjb3VudGVyL3RpbWVzdGFtcCBpbiBj
YXNlIGl0DQo+ICsJCQkgKiBoYXNuJ3QgYmVlbiBkb25lIHlldCBmb3IgdGhpcyBmcmFtZS4NCj4g
KwkJCSAqLw0KPiArCQkJZHJtX2NydGNfYWNjdXJhdGVfdmJsYW5rX2NvdW50KCZjcnRjLT5iYXNl
KTsNCj4gKw0KPiArCQkJZHJtX2NydGNfc2VuZF92YmxhbmtfZXZlbnQoJmNydGMtPmJhc2UsIGNy
dGMtDQo+ID5mbGlwcV9ldmVudCk7DQo+ICsJCQljcnRjLT5mbGlwcV9ldmVudCA9IE5VTEw7DQo+
ICsJCX0NCj4gKw0KPiArCQlzcGluX3VubG9jaygmZGlzcGxheS0+ZHJtLT5ldmVudF9sb2NrKTsN
Cj4gKwl9IGVsc2UgaWYgKHRtcCkgew0KPiAgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIltDUlRD
OiVkOiVzXV0gUElQRURNQyBpbnRlcnJ1cHQNCj4gdmVjdG9yIDB4JXhcbiIsDQo+ICAJCQljcnRj
LT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwgdG1wKTsNCj4gKwl9DQo+ICB9DQo+IA0K
PiAgdm9pZCBpbnRlbF9waXBlZG1jX2VuYWJsZV9ldmVudChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YywgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxp
cHEuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuYw0KPiBp
bmRleCBjNGI0ZWNkNDRlYjIuLmZkZGE4ZDcxYzE4MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuYw0KPiBAQCAtMjE1LDYgKzIxNSwxNCBAQCB2b2lk
IGludGVsX2ZsaXBxX2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0
Y19zdGF0ZSkNCj4gDQo+ICAJaW50ZWxfcGlwZWRtY19lbmFibGVfZXZlbnQoY3J0YywNCj4gUElQ
RURNQ19FVkVOVF9TQ0FOTElORV9JTlJBTkdFX0ZRX1RSSUdHRVIpOw0KPiANCj4gKwkvKg0KPiAr
CSAqIFdhXzE2MDE4NzgxNjU4DQo+ICsJICogUElQRURNQ19GUFFfQ1RMMiBiaXQgMSBpc24ndCB3
b3JraW5nLCBmaXJtd2FyZSBpbXBsZW1lbnRzDQo+ICsJICogYSB3b3JrYXJvdW5kIHZpYSB0aGUg
ZGVsYXllZCB2YmxhbmsgaGFuZGxlci4NCj4gKwkgKi8NCj4gKwlpZiAoZGlzcGxheS0+cGxhdGZv
cm0ubHVuYXJsYWtlICYmIElTX0RJU1BMQVlfU1RFUChkaXNwbGF5LCBTVEVQX0EwLA0KPiBTVEVQ
X0IwKSkNCj4gKwkJaW50ZWxfcGlwZWRtY19lbmFibGVfZXZlbnQoY3J0YywNCj4gUElQRURNQ19F
VkVOVF9ERUxBWUVEX1ZCTEFOSyk7DQo+ICsNCj4gIAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBQ
SVBFRE1DX0ZRX0NUUkwoY3J0Yy0+cGlwZSksDQo+IFBJUEVETUNfRlFfQ1RSTF9FTkFCTEUpOyAg
fQ0KPiANCj4gQEAgLTIyNSw2ICsyMzMsMTAgQEAgdm9pZCBpbnRlbF9mbGlwcV9kaXNhYmxlKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiANCj4gIAlpbnRl
bF9kZV93cml0ZShkaXNwbGF5LCBQSVBFRE1DX0ZRX0NUUkwoY3J0Yy0+cGlwZSksIDApOw0KPiAN
Cj4gKwkvKiBXYV8xNjAxODc4MTY1OCAqLw0KPiArCWlmIChkaXNwbGF5LT5wbGF0Zm9ybS5sdW5h
cmxha2UgJiYgSVNfRElTUExBWV9TVEVQKGRpc3BsYXksIFNURVBfQTAsDQo+IFNURVBfQjApKQ0K
PiArCQlpbnRlbF9waXBlZG1jX2Rpc2FibGVfZXZlbnQoY3J0YywNCj4gUElQRURNQ19FVkVOVF9E
RUxBWUVEX1ZCTEFOSyk7DQo+ICsNCj4gIAlpbnRlbF9waXBlZG1jX2Rpc2FibGVfZXZlbnQoY3J0
YywNCj4gUElQRURNQ19FVkVOVF9TQ0FOTElORV9JTlJBTkdFX0ZRX1RSSUdHRVIpOw0KPiANCj4g
IAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBQSVBFRE1DX1NDQU5MSU5FQ01QTE9XRVIoY3J0Yy0+
cGlwZSksIDApOw0KPiAtLQ0KPiAyLjQ5LjANCg0K
