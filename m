Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGqbCLp/Hmo3kAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 09:01:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C3562946F
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 09:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA2F11387D;
	Tue,  2 Jun 2026 07:01:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XIjJcpum";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D58EE11387A;
 Tue,  2 Jun 2026 07:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780383670; x=1811919670;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5iOJh1DKmCUte5sy1t8kDQstlJ4rwUIoQFHMAEJZxL0=;
 b=XIjJcpumM03yaUzYNZYdDUhZVwbJ7rVRGLxeprm85vi28KqslI3r/dBL
 3HmbVUhY4B5SQIR2wetms+nURAEWc0BBiGUA0RB9DXEaNe2JW/2+VI85l
 Pj+OMz9j3jZE4mmAvsuax9nSchyGtAHAuGZSFenJ7YjdZBpRbEqOg9uuw
 XzIip7gIsC9bobJNqiOTiuIAGF4LHRkPn/ALMeza508gxvJRHfa9J2Pfz
 uJThQ3epLJtgy2C1jEWfvk3UouzOeEZK/uwLidzY7y+5Yjtizdag8RUk8
 KqgYnVTN6eIHMjmYlQ6o5Ikl6MfABTG8Aw7mcUbU2U3gwuAhdCJqEOnUD A==;
X-CSE-ConnectionGUID: 3q+lTO5fSeuXNaaAdNx3vw==
X-CSE-MsgGUID: ZY1Gj3mjSAScx320sf0vPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="68705990"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="68705990"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 00:01:09 -0700
X-CSE-ConnectionGUID: U7/RUsR8TrmwxaKw57QjYQ==
X-CSE-MsgGUID: fh8mP4IdRN2tomW++1zMcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="241322040"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 00:01:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 00:01:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 00:01:08 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 00:01:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FB4Up5Auj0RyqxGz957iIiV95CFbjrJVk+BnZYvWa+g0jP1e27juO2n6EITCq4iVH6CzX0GpfC7XJoLxgLcWLRiLZjJHk57u/ndyEOIUlMkIqbRkYwmwauREqM3fYB66dVZEhFPXdi1pvlJJakJuA1qSSz1x2vwz1XjNJTdEIgRmg6oKMxuI38GfdVURRSGSItsFN17zgvMU5fb5zvxEB1KmUF2Mn4QATBHOSJZcBDsIByOVctjYuIEd6PbgxtT/zhnQLH6dHimJ/P+yZ3Al64jtsE3DoghGyMlWjbVOumqeV9g2lL9hSjGRQSZHopawrIJ37PQe8oPXbXNtsDHmKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5iOJh1DKmCUte5sy1t8kDQstlJ4rwUIoQFHMAEJZxL0=;
 b=hBmk94tR/CdnNIycMCJm8OSBVWq7WG+1Ap/CvTGtrBruXN36Aw+ZVOgz2bZU4QMVqnJv3f3rYXBz9dMRbI0aJyqTtCoTledbMGXfxLujkNJXOZM1VY98IphPLHoeblXoYJ2GrXdYvRGLnx0lTjN7wztccNhUu2I78fguOjpswQMw+BCXxxxRq5+gDGcuCQmkEe7926B6aeZuIobEICdI+IVhD4J5+nynxM1cLn9KoDy6vdS3v7Y6G2bQqyqF7A/3qU3gBM50Lp6khnkuvvoW6XhaN8xlKwvcSqXLDDfBWk3lKgKmNj7/CS1RC/hD/M/f2hoImogdZbDpZtdPqPW8Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 (2603:10b6:518:1::d41) by MN2PR11MB4678.namprd11.prod.outlook.com
 (2603:10b6:208:264::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Tue, 2 Jun 2026
 07:01:04 +0000
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b]) by PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b%5]) with mapi id 15.21.0071.014; Tue, 2 Jun 2026
 07:01:04 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Jani Nikula
 <jani.nikula@linux.intel.com>, Dave Airlie <airlied@gmail.com>, Simona Vetter
 <simona.vetter@ffwll.ch>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, "Brost, Matthew" <matthew.brost@intel.com>,
 =?utf-8?B?VGhvbWFzIEhlbGxzdHLDtm0=?= <thomas.hellstrom@linux.intel.com>, Oded
 Gabbay <ogabbay@kernel.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "dim-tools@lists.freedesktop.org"
 <dim-tools@lists.freedesktop.org>
Subject: RE: [PULL] drm-misc-fixes
Thread-Topic: [PULL] drm-misc-fixes
Thread-Index: AQHc7zjxljjOj2OTwkuwVHbZQXsy3bYp2COAgAAC6ICAAALhgIAAG06AgAAfdNCAAMPAAA==
Date: Tue, 2 Jun 2026 07:01:03 +0000
Message-ID: <PH3PPFAB426323513992CEBF59C0E1E6370E0122@PH3PPFAB4263235.namprd11.prod.outlook.com>
References: <20260529070009.GA313534@linux.fritz.box>
 <ddf0233e50044059c85279f928661563ef6a55bf@intel.com>
 <e1a2cc27fb04a88be23973d3cb7868f3d4471d0d@intel.com>
 <d479f1185cd1ae6eb52a7d44e944408c3447c8e4@intel.com>
 <24042986-6ef1-49a2-a060-aabf6e189473@suse.de>
 <PH3PPFAB4263235C2A68655E6E599F21F20E0152@PH3PPFAB4263235.namprd11.prod.outlook.com>
In-Reply-To: <PH3PPFAB4263235C2A68655E6E599F21F20E0152@PH3PPFAB4263235.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPFAB4263235:EE_|MN2PR11MB4678:EE_
x-ms-office365-filtering-correlation-id: dbf1a758-91c1-4441-1862-08dec074b640
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|6133799003|18002099003|22082099003|56012099006|11063799006|5023799004|4143699003;
x-microsoft-antispam-message-info: 3+1c3koJo5pO0CGbS1zRULW6NNj+O00wHpktwsfEOvR0aXjf9lTelkqD25gclXNwkR/gZara945m8ZJjmOIqdku4Qcg6J4eFzZI3TiKpc3fo5GVzQfNKBo8pTuB1UkqqApmFwO6PJrt33i5C53Wzxgtjt07lj+hnQ+HNy2iDYP02enN2Ib8Y5XFVur0KNV+yRyCddv7mrKECFgsrmU2JEvc7h7r7FJyKrprHpsqIDLkOG7VgRbEo4UnqXVA1srjGV0W3brt8D5VdoO5c8N+AglBW1pcKewkJMfcdCMlC0ky2hnidz/lXlrt+xCsfTbmNF9IorLkL7tn86/AebeyEqPO66kJPe0iGlemScug5/ZY02OEKQ2ZdNBnlocwfLl5+BIqFXdEeXhtV8HO6EyzfAwOVVK84N/t9z0Esa80EhBOoK4Xfd2vJq4dCagw5HbT7R3zSz5L5TwnzP9luBdLfLqkwzB7ayYjJsrqO8BR26P+Gk5QrMztqouKD+MtsQUMu9zQnCae4Jf160vUOi8/O60kKqnUQFEvr8U75HmdXJaQ3xt56oz2JaYIM3mm5k82utcFfnXJNEuQNQNy0m4fmGK9/pwz2It9U3/uTk3trF9MPitJwb0Gx0fCzL/3WZabDAqHMSeOwv1sp5978xBU6n2mhCklg83YVRePRhroepyK7hxgptmLD5aKFYshZoq6E3xWOIaBpqdDvTdJRySK2vg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPFAB4263235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(6133799003)(18002099003)(22082099003)(56012099006)(11063799006)(5023799004)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U1lWajh2SXAvWkxNQnI2SzFER1h1dWtsWkdLQmYwbm9oaEEzS1JEbmZ1alpM?=
 =?utf-8?B?RW9EaldyN253cis4ZlZSTTdIU01aZHE4QWVxOHY4NVRzSGFZU1FBR0FPTjRq?=
 =?utf-8?B?Z0JRdGU3L0kzeWE4bmVZRW5IOFl3MDgyQ2dnUTVEcXBwZUxraFNHa1lCTUsv?=
 =?utf-8?B?TDhrWGExcTFjdTYrV2s4UHlhK1FqWlE2THpRM291Ukp2enRrUWNIOU1mdkMw?=
 =?utf-8?B?TzlJc3pmM3doWkpOUzFhRlZrM3VlR2x0dndVaDU0V1VXaGxxd1hrbWY5VWF6?=
 =?utf-8?B?NzUwWHQ4b3ozbDJmMWZmY0h1MnVmUlVmK2VWclV0SUZTenVhR2Q5cmZaTG1k?=
 =?utf-8?B?QVg1bTBhNkhPNW11aUlCRFpQTUZ4M1plYTZscE4ybzlsTFAzTjIwaWl5OFI3?=
 =?utf-8?B?U0tRVWdwNEJhOVkrNXJ6dFNYMUw5UnQ5Zjc2Qy9MMGV0RWdmdGxROVVPbDJq?=
 =?utf-8?B?TkFIc2EzaEc3dWJnaU55S2NFc3FkenBrS3R0S1ZWUzJldzJGOUIxcGNSbUUz?=
 =?utf-8?B?ZDdsT1dUcEVwVlY4UzdoN214Z2xxTGRLUHljNEdZL29JdFhuSVBYd2R2YUZW?=
 =?utf-8?B?UHk2NTc1bUI4b1RsTFhldG95bjN6eXlEWEp3QmxYMTJiOHZrek1acHE3SUY4?=
 =?utf-8?B?ZEJOMmxRdGlkOXBsenBQa3pJK2dUVXA3VHNSbE82NVM1aTJQdDBsZEdoWm0v?=
 =?utf-8?B?eng3WHg2SThFWCt1OFlwWWhLU1ZqYU5FREUxUnQ4d3FqSzBUdFlyRDBxNDk2?=
 =?utf-8?B?aEdwSHZjdWtqVi9aWVltTXk4aDlJY1RGNWh2ZTBkZE16ejBEM1dlemovMFo3?=
 =?utf-8?B?R3o2WUFsV3Z1Q3g5Mkhvci90bUlTRUFMSXBodkZaSlBpUkNKaGR5MEhUTVha?=
 =?utf-8?B?YmVGSkViWVJmMWN1NnZtZit4Sk1TOGl3QWNMRGRDclJjMHdTaGErQ2UrUkNI?=
 =?utf-8?B?RGw5Tk1EaXp6ZzZURkllNUlhVEEvbC83N1BwdW95MFJTbE4xZmFON2E5Y3Y5?=
 =?utf-8?B?Y1hwVzU0aUhNdDVUY1hOTjFhVnZSOTZmMkU1WEpLWmJEaXN1M0hNak5ucFdl?=
 =?utf-8?B?b0xYemtvaVVwcTZldDBNVUdGcHJUL2xrOXMrVXNRUTNpOE82L3AyOXpRVk1H?=
 =?utf-8?B?dUh5T1dOaEdleGpJcmtzbFZkZTZXU3greHVCaS9CblVoK2xwQVVQam40Z0pM?=
 =?utf-8?B?Tnd3ci8zeXhyUEMzUktXOUM2Vlc4QXJBd2t1S2lrcGNodUpWUW5paWs4ZVdD?=
 =?utf-8?B?bUoyVWR6OWRJYkpxRGljMWdRUUxISVB0SElnTkdHNTEvV0g1UVpHeVRHY3JP?=
 =?utf-8?B?S3k2RXZTcmJPeFYzdTF0NmNaVDEzT2F6YUFMZlFUMzlrZjA3dkpEOGtXZEtY?=
 =?utf-8?B?WE1YMW9NQTFxcFF1bGdlY3paODFVMDBMcUF2WXZEYmcxTVI1dm90TDNWdm9s?=
 =?utf-8?B?OWRldlEwZWJ4aVB1Rms3STF3dCtiOVFvYUJvMFdKTVhyVVBWR0FCUzd0RUpV?=
 =?utf-8?B?TDBuc1I4WHhCN0Eza216dlRFMFowS091U1NVekhxN09QS28zUTNFZk5VZ0pY?=
 =?utf-8?B?cjdVMjAxMlJvV0J1bmhUUzZrbXp6K3AveTVqSjRUOEFLalRYOWtGSDJ0c0Jh?=
 =?utf-8?B?TFEzZlFhc3ZmRUJhcStiNTROSGJhZDRPTjl5YnBlREZTckordEY3SDBQZlJY?=
 =?utf-8?B?RUZvdU5RQUs1bGdkZERmS2xVZHV0aDJNZk9QN2V6R3NheG5PbEYvN2g1cXh3?=
 =?utf-8?B?T3ZCSGhvdVFzYUxEWkFIb3pSdUwxV1RHcFpQUXJiYkFlYXRwMkJWclYrRUxY?=
 =?utf-8?B?SktWRHBFdVd5bW8vMEpUeEJxM3VmcFhSbG85VGRudFRxWTMwRkFjSWZKUmlJ?=
 =?utf-8?B?SWJIQ0VzcHRxbzZncDdjSjE1eFN2VWIvNVhKSG95dm5GSEVCb0RLRFBpWklr?=
 =?utf-8?B?WHdoajd3d0xDcFBhR0tRNlpPRHRLbzRlS01PSGwzOC9BNlZybDRROXRRYjVH?=
 =?utf-8?B?QkNkWmFpTms1cjUrQldkSDZmdms5T2Yvckg0bXRTMXJTN3hTSlh4S1k1eWo3?=
 =?utf-8?B?c3pQTXBpemxEdW1hcmhwZzZiVkxyVHhxTm9qeGkrVzYwWWFrNXdmMnFZR1lL?=
 =?utf-8?B?K1hKM1I4K3lpY1dablh3azV1RjI2SlJPc01UbmVlSUdHSllPSWoyUDNBbGhQ?=
 =?utf-8?B?a3YwVk9nVE1Vc0R3VFRaWlN5RExneG5HNnB2T0NIdkZQSW5LUG5hVVFQbkhi?=
 =?utf-8?B?QlBOWE5xcFAzc3FHQjNBcGphS3Q4YUFaZFVpd0hqd1B0RUNDRFFLSVY1WWIw?=
 =?utf-8?B?Z280dHNuU0xZeDNkeVBQRkFoUUYwTDRZcUc3RFNsODJkMklvNmcxQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gS1ucekKnoyD+5tiGMQCD3L8zjKtHYvuo+1/SHR8hCDjpTwiInAurI512HYr+zlrc3/7bGFGf9AvTWrftIJkAHkNc8oFCrj3r44yTKh/kE9adKaAaZYkscKScLPY5P7qgPoC8NRV612BYI2obriYP68P6W/JgrUImj8qHmEnfWtRiT+nYX3IBohIyRB3KGoSo3JjA7bOMPZSNZnuOOM7AljispCwLZuyyq7OEKRQp/FTwjjxYEgyZ7pb27hI7vcreiLKf9WLBIaYIv4GdhfIhzwep5UWjPFN3EBvhfuH5sZqKdkiSlav+7IfnPHLvrGOVzHDPFPsTetvhgXukhX5fw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPFAB4263235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbf1a758-91c1-4441-1862-08dec074b640
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 07:01:03.9361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 66GlQJscYkWpqac0CmuwYsBUgxhnha972EVhEA6iUGv80DxrBP1UhpDriN721XzMm811aYL0rTMQf9jp0Y9ZSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4678
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[suse.de,linux.intel.com,gmail.com,ffwll.ch];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.saarinen@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 81C3562946F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFNhYXJpbmVuLCBK
YW5pDQo+IFNlbnQ6IE1vbmRheSwgMSBKdW5lIDIwMjYgMjIuMjQNCj4gVG86ICdUaG9tYXMgWmlt
bWVybWFubicgPHR6aW1tZXJtYW5uQHN1c2UuZGU+OyBKYW5pIE5pa3VsYQ0KPiA8amFuaS5uaWt1
bGFAbGludXguaW50ZWwuY29tPjsgRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPjsgU2lt
b25hDQo+IFZldHRlciA8c2ltb25hLnZldHRlckBmZndsbC5jaD4NCj4gQ2M6IEpvb25hcyBMYWh0
aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT47IFR2cnRrbyBVcnN1bGluDQo+
IDx0dXJzdWxpbkB1cnN1bGluLm5ldD47IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBpbnRl
bC5jb20+OyBNYWFydGVuDQo+IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPjsgTWF4aW1lIFJpcGFyZA0KPiA8bXJpcGFyZEBrZXJuZWwub3JnPjsgQnJvc3QsIE1h
dHRoZXcgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPjsgVGhvbWFzDQo+IEhlbGxzdHLDtm0gPHRo
b21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPjsgT2RlZCBHYWJiYXkNCj4gPG9nYWJiYXlA
a2VybmVsLm9yZz47IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLQ0KPiBn
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IGRpbS0NCj4gdG9vbHNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbUFVM
TF0gZHJtLW1pc2MtZml4ZXMNCj4gDQo+IEhpLA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVz
a3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiA+IFRob21hcyBaaW1tZXJtYW5uDQo+ID4gU2VudDog
TW9uZGF5LCAxIEp1bmUgMjAyNiAyMC4yNw0KPiA+IFRvOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAbGludXguaW50ZWwuY29tPjsgRGF2ZSBBaXJsaWUNCj4gPiA8YWlybGllZEBnbWFpbC5jb20+
OyBTaW1vbmEgVmV0dGVyIDxzaW1vbmEudmV0dGVyQGZmd2xsLmNoPg0KPiA+IENjOiBKb29uYXMg
TGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+OyBUdnJ0a28gVXJzdWxp
bg0KPiA+IDx0dXJzdWxpbkB1cnN1bGluLm5ldD47IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2
aUBpbnRlbC5jb20+Ow0KPiA+IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+OyBNYXhpbWUgUmlwYXJkDQo+ID4gPG1yaXBhcmRAa2VybmVsLm9yZz47
IEJyb3N0LCBNYXR0aGV3IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT47DQo+IFRob21hcw0KPiA+
IEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPjsgT2RlZCBHYWJi
YXkNCj4gPiA8b2dhYmJheUBrZXJuZWwub3JnPjsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwtDQo+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBkaW0tDQo+ID4gdG9vbHNAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+ID4gU3ViamVjdDogUmU6IFtQVUxMXSBkcm0tbWlzYy1maXhlcw0KPiA+DQo+ID4gSGkNCj4g
Pg0KPiA+IEFtIDAxLjA2LjI2IHVtIDE3OjQ5IHNjaHJpZWIgSmFuaSBOaWt1bGE6DQo+ID4gPiBP
biBNb24sIDAxIEp1biAyMDI2LCBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwu
Y29tPiB3cm90ZToNCj4gPiA+PiBPbiBNb24sIDAxIEp1biAyMDI2LCBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+Pj4gT24gRnJpLCAyOSBNYXkg
MjAyNiwgVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+ID4gd3JvdGU6
DQo+ID4gPj4+PiBSYWphdCBHdXB0YSAoMSk6DQo+ID4gPj4+PiAgICAgICAgZHJtOiBwcmV2ZW50
IGludGVnZXIgb3ZlcmZsb3dzIGluIGR1bWIgYnVmZmVyIGNyZWF0aW9uDQo+ID4gPj4+PiBoZWxw
ZXJzDQo+ID4gPj4+IExvb2tzIGxpa2UgdGhpcyBjb21taXQgNWFiNjJkZDM2ODdiICgiZHJtOiBw
cmV2ZW50IGludGVnZXINCj4gPiA+Pj4gb3ZlcmZsb3dzIGluIGR1bWIgYnVmZmVyIGNyZWF0aW9u
IGhlbHBlcnMiKSByZWdyZXNzZWQgaW4gb3VyIENJLA0KPiA+ID4+PiBhd2FpdGluZyBjb25maXJt
YXRpb24uDQo+ID4NCj4gPiBUaGF0IENJIHJlcG9ydCBpcyB3aGVyZT8NCj4gDQo+IFNlZSBlZy4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9pbmRleC5odG1sP3Rlc3Rm
aWx0ZXI9a21zX2JpZw0KPiB0aGF0IGlzIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTYzMDgNCj4gDQo+IGFuZA0KPiBzZWNvbmQgb25lOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9pZ3RAdmdlbV9iYXNp
Y0BjcmVhdGUuaHRtbA0KPiB0aGF0IGlzIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTYyOTYNCj4gDQo+IHRoZXJlIGlzIGFsc28gY29tbWVu
dCBmcm9tIENoYWl0YW55YSBub3cgYWxyZWFkeSAiaXNzdWUgaXMgbm90IHNlZW4gYWZ0ZXINCj4g
cmV2ZXJ0aW5nIGFuZCB0ZXN0ICJpZ3RAdmdlbV9iYXNpY0BjcmVhdGUiIGlzIHBhc3NpbmcNCj4g
DQo+IGNvbW1pdCA1YWI2MmRkMzY4N2JjYzJjYzU0MmI5OTM4NWFhYmFjNWM5OTZkYjZmDQo+IEF1
dGhvcjogUmFqYXQgR3VwdGEgPHJhamF0Lmd1cHRhQG9zcy5xdWFsY29tbS5jb20+DQo+IERhdGU6
IFdlZCBNYXkgMjAgMjI6MTE6MjEgMjAyNiAtMDcwMA0KPiANCj4gZHJtOiBwcmV2ZW50IGludGVn
ZXIgb3ZlcmZsb3dzIGluIGR1bWIgYnVmZmVyIGNyZWF0aW9uIGhlbHBlcnMiDQpUaGlzIHByb3Zl
cyByZXZlcnQgaXMgd29ya2luZyAoaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy8xNjc2ODYvI3JldjEpIDogDQpodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNjc2ODZ2MS9pbmRleC5odG1sP3Rlc3RmaWx0ZXI9dmdlbSU3Q2Jp
Z19mYg0KDQo+IA0KPiBCcg0KPiBKYW5pDQo+IA0KPiA+ID4+IFRoZSBJR1QgdGVzdCBrbXNfYmln
X2ZiIHVzZXMgbWF4IHdpZHRoIGFuZCBoZWlnaHQgZnJvbQ0KPiA+ID4+IEdldFJlc291cmNlcywg
YW5kDQo+ID4gPj4gaTkxNSBhbmQgeGUgdXNlIG1heF93aWR0aCAxNjM4NCBhbmQgbWF4X2hlaWdo
dCAxNjM4NCBpbiBtb2RlIGNvbmZpZy4NCj4gPiA+Pg0KPiA+ID4+IFRoZSByZWdyZXNzaW5nIGNv
bW1pdCBhZGRzIHJhbmRvbSBoYXJkIGxpbWl0cyBub3QgYmFzZWQgb24gYW55dGhpbmc6DQo+ID4g
Pj4NCj4gPiA+PiArICAgICAgIC8qIFJlamVjdCB1bnJlYXNvbmFibGUgaW5wdXRzIGVhcmx5LiAg
RHVtYiBidWZmZXJzIGFyZSBmb3Igc29mdHdhcmUNCj4gPiA+PiArICAgICAgICAqIHJlbmRlcmlu
Zzsgbm90aGluZyBsZWdpdGltYXRlIG5lZWRzIG1vcmUgdGhhbiA4MTkyeDgxOTINCj4gPiA+PiAr
IGF0DQo+ID4gMzJicHAuDQo+ID4gPj4gKyAgICAgICAgKiBUaGlzIHByZXZlbnRzIG92ZXJmbG93
cyBpbiBkb3duc3RyZWFtIGFsaWdubWVudCBoZWxwZXJzLg0KPiA+ID4+ICsgICAgICAgICovDQo+
ID4gPj4gKyAgICAgICBpZiAoYXJncy0+d2lkdGggPj0gODE5MiB8fCBhcmdzLT5oZWlnaHQgPj0g
ODE5MiB8fCBhcmdzLT5icHAgPiAzMikNCj4gPiA+PiArICAgICAgICAgICAgICAgcmV0dXJuIC1F
SU5WQUw7DQo+ID4gPj4NCj4gPiA+PiBUaGlzIGlzIG5vdyBpbiB2Ny4xLXJjNi4gUGxlYXNlIHJl
dmVydCBBU0FQLg0KPiA+ID4gQWgsIG1pc3NlZCB0aGlzIGNsdWUgaW4gdGhlIHB1bGwgcmVxdWVz
dDoNCj4gPiA+DQo+ID4gPiBPbiBGcmksIDI5IE1heSAyMDI2LCBUaG9tYXMgWmltbWVybWFubiA8
dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4gPiB3cm90ZToNCj4gPiA+PiBoZXJlIGlzIHRoaXMgd2Vl
aydzIFBSIGZyb20gZHJtLW1pc2MtZml4ZXMuIFRoZXJlJ3Mgb25lDQo+ID4gPj4gY3Jvc3Mtc3Vi
c3lzIGNvbW1pdCB0byB0aGUgZG1hLWJ1ZiBjb2RlLiBDb21taXQgNWFiNjJkZDM2ODdiICgiZHJt
Og0KPiA+ID4+IHByZXZlbnQgaW50ZWdlciBvdmVyZmxvd3MgaW4gZHVtYiBidWZmZXIgY3JlYXRp
b24gaGVscGVycyIpIGhhcyBub3QNCj4gPiA+PiBMaW5rIHRhZyBiZWNhdXNlIGl0IHdlbnQgdGhy
b3VnaCB0aGUgc2VjdXJpdHkgbGlzdC4NCj4gPiA+IFdlIGhhdmUgdGhlIHdob2xlIHJldmlldyBh
bmQgQ0kgcHJvY2Vzc2VzIGluIHBsYWNlIHRvIGNhdGNoIHNpbGx5DQo+ID4gPiBtaXN0YWtlcywg
YW5kIHRoZW4gd2UgcHJvY2VlZCB0byBzaG9vdCBvdXJzZWx2ZXMgaW4gdGhlIGZvb3QgYW5kDQo+
ID4gPiBieXBhc3MgYWxsIG9mIHRoYXQgYmVjYXVzZSAic2VjdXJpdHkiLCBhbmQgZXhwZWRpdGUg
dGhlIHJlZ3Jlc3Npb25zDQo+ID4gPiBldmVyeXdoZXJlLiBJJ2xsIGJldCB0aGlzIHdpbGwgYmUg
aW4gc3RhYmxlIGtlcm5lbHMgaW4gbm8gdGltZSB0b28uDQo+ID4gPiBUaGlzIGlzIHN0dXBpZC4N
Cj4gPg0KPiA+IEluZGVlZC4gQnV0IHRoYXQncyBob3cgdGhpcyBmaXggZ290IGluLg0KPiA+DQo+
ID4gSXQgZml4ZXMgYSBwb3NzaWJsZSBvdmVyZmxvdyBlbHNld2hlcmUgYW5kIHVzaW5nIGR1bWIg
YnVmZmVycyB3aXRoDQo+ID4gaGlnaGVyIHZhbHVlcyB0aGF0IGdpdmVuIGhlcmUgaXMgcXVlc3Rp
b25hYmxlLiBJbnN0ZWFkIG9mIG91dHJpZ2h0DQo+ID4gcmV2ZXJ0aW5nIHRoaXMsIGxldCdzIGZp
cnN0IGxvb2sgd2hhdCBhY3R1YWxseSBicm9rZS4NCj4gPg0KPiA+IEJlc3QgcmVnYXJkcw0KPiA+
IFRob21hcw0KPiA+DQo+ID4gPg0KPiA+ID4gUGxlYXNlIGFsc28gcmVhZCBbMV0gd2l0aCBpdHMg
cmVjZW50IHVwZGF0ZXMuDQo+ID4gPg0KPiA+ID4NCj4gPiA+IEJSLA0KPiA+ID4gSmFuaS4NCj4g
PiA+DQo+ID4gPg0KPiA+ID4gWzFdDQo+ID4gPiBodHRwczovL2RvY3Mua2VybmVsLm9yZy9wcm9j
ZXNzL3NlY3VyaXR5LWJ1Z3MuaHRtbCN3aGF0LXF1YWxpZmllcy1hcw0KPiA+ID4gLWENCj4gPiA+
IC1zZWN1cml0eS1idWcNCj4gPiA+DQo+ID4gPg0KPiA+ID4+DQo+ID4gPj4gQlIsDQo+ID4gPj4g
SmFuaS4NCj4gPiA+Pg0KPiA+ID4+DQo+ID4gPj4+IE5vIG1hdHRlciB3aGF0LCBpdCdzIGltbWVk
aWF0ZWx5IHN1c3BlY3QgYmVjYXVzZSBBRkFJQ1QgaXQgd2FzIG5vdA0KPiA+ID4+PiBwb3N0ZWQg
b24gdGhlIGxpc3RzLCBhbmQgdGhlIGNvbW1pdCBkb2Vzbid0IGhhdmUgYSBMaW5rOiB0cmFpbGVy
DQo+ID4gPj4+IHBvaW50aW5nIGF0IHRoZSBwYXRjaC4NCj4gPiA+Pj4NCj4gPiA+Pj4gVGhpcyBp
cyBub3QgaG93IHdlJ3JlIHN1cHBvc2VkIHRvIHJvbGwuIFdoYXQncyBnb2luZyBvbj8NCj4gPiA+
Pj4NCj4gPiA+Pj4NCj4gPiA+Pj4gQlIsDQo+ID4gPj4+IEphbmkuDQo+ID4NCj4gPiAtLQ0KPiA+
IC0tDQo+ID4gVGhvbWFzIFppbW1lcm1hbm4NCj4gPiBHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVy
DQo+ID4gU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQo+ID4gRnJhbmtlbnN0
ci4gMTQ2LCA5MDQ2MSBOw7xybmJlcmcsIEdlcm1hbnksIHd3dy5zdXNlLmNvbQ0KPiA+IEdGOiBK
b2NoZW4gSmFzZXIsIEFuZHJldyBNY0RvbmFsZCwgV2VybmVyIEtub2JsaWNoLCAoSFJCIDM2ODA5
LCBBRw0KPiA+IE7DvHJuYmVyZykNCj4gPg0KDQo=
