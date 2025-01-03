Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E81A0041A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 07:09:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15FD510E7FA;
	Fri,  3 Jan 2025 06:09:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YFLjxpIr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B99A10E288;
 Fri,  3 Jan 2025 06:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735884547; x=1767420547;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9/Fnx5pZz8zBCAbxL19M1CkcsQOUIx/PgUGBbUL9Tkw=;
 b=YFLjxpIrof36rjM+lZngInYYWzfMnumFdv4aCXMcxk8W0tPY1m+k6Mty
 sZRfU0kaEFPMrnpoemsmM2KBMo5v354sKcelnAX/eI7tjjvLMzgHPHTzf
 JIWTyD7iAJQnZViQ78iT9bT6KvkbBsAgn8FWLA21OJs/6F5BB5922r8w1
 EqzAHoAAJclVouEZhsS+H7ThqAfLxwIjGVxxbev9WXP576Kcejr4E+PTT
 ChjEi2CkTeDai0qf9uDlxh0pnnTHnxGceuM/7/Bs1/ualD0OqgYS+94Zi
 5iFP401f0MgISL19h7IK6onKiTdm90oWhfKBziBh7b+Itxynb0x6iMT5I g==;
X-CSE-ConnectionGUID: 3RwFJorLSdOdqjrfGcTLww==
X-CSE-MsgGUID: tmlbwcJSRS6G0qZeXvUwhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="46804267"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="46804267"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 22:09:07 -0800
X-CSE-ConnectionGUID: 6O2QdgJHScC6omeVIscp/A==
X-CSE-MsgGUID: Yo4VazPgSk2T/MMTsUHc5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="106746078"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jan 2025 22:09:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 2 Jan 2025 22:09:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 2 Jan 2025 22:09:06 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 2 Jan 2025 22:09:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kQb62GFnppwbrgUoMqQcmMf36bXZ/vU76tEWimScG9TZ+JnD/D8H7oxm12GaeCH3716DqZVomj1VqZcVPnVGDhcZ/GnpZkJRP0+t57IuJl854mSolMYhLYmNPC1LYSt21SIJUiCuwBoKEpWe1/Nj5TNkmb6bnWcd45sUrSNABMpHkO6yfJpSrMDGstNjStga3QsIZtEr0rFbRxVfNQTEJppuahQazfYiuwB2YfUfqthOUzCYkT9M9MJTrDjW4DbLk+dUXF9M7fKwRvLQyn7FURAqIWCe3JJEhj0y8ayU3dEPteaZDQVAYpPZgiPtH+8G666HNQtIOEpiSvpP8OZoYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9/Fnx5pZz8zBCAbxL19M1CkcsQOUIx/PgUGBbUL9Tkw=;
 b=JmCjX4DfU39I2rN1zI3HizNW3dB7xhtU0oQCkktAs7zguQ7C/OFB3tGpni52ouZEjwdhCcCw4IaOcu+hR4vkW8qaeZj1Xrsc5JGVuQHKigmTFdqq+9uwTUI2obgoh3tFZ4AtQA6kx61W/mq6Awktk8v6s6e+f++YK4aaMlNCmWiZeRLMq8DBf7qhPLjAI83N7EEu+lorF6XrfRbhTJxQsl5buF/EJ1P4bbCPmq+GbM4KG1MCuk8Jm6BOZantrK5AenJPgMTCx3T9UHPK+a8gK2Kzy7HloOiEcbkekZOwD3vXN0fhoNL0qAefLfnpBgKcyx5Q7VZzT0yFVthA2E6EJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4966.namprd11.prod.outlook.com (2603:10b6:510:42::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.14; Fri, 3 Jan
 2025 06:08:32 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8314.013; Fri, 3 Jan 2025
 06:08:32 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v5] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Topic: [PATCH v5] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Index: AQHbXaBRb6JfVq5/DkWcy/M8GYLdALMEj54Q
Date: Fri, 3 Jan 2025 06:08:32 +0000
Message-ID: <SN7PR11MB675052BEE598A539A37D464DE3152@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250103-hblank-v5-1-269a8748cf5b@intel.com>
In-Reply-To: <20250103-hblank-v5-1-269a8748cf5b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4966:EE_
x-ms-office365-filtering-correlation-id: 6ea6089b-77ba-4281-b7cd-08dd2bbd0d28
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TFRBWHc1YTJmYzVoYUtoLytBcDJIWUJOYlFqU295WndVOE9uYlphVHBZTDhW?=
 =?utf-8?B?NE12QVYxSzZyVnZobkVZTk5vVk0rS1pwTEpqdnVmblJUWmN2Rzkwd0RCLzgx?=
 =?utf-8?B?a1RuYjFuZkJUYm1STytyZ3I0UjlPNGFCQ2pwbUlReTRjemdFOHV5ZkRaTlRz?=
 =?utf-8?B?K0REU2poRnNpV3hIZVJQRmtPdFd6SC8yTi9RZmJGZW1QcHppR3BKQk9hZmFi?=
 =?utf-8?B?c1pkeG8rV3ZNVnNoOE1wZWVLODNLd2diSVFBSnJFdytRQk5PQ3dodnZWbWJq?=
 =?utf-8?B?bm83VVZhSGx4TDAzVmlZejlTWUovZlpSYlBBTTR4NGtXb3pEVzJTd0VJOHZT?=
 =?utf-8?B?cFlOTVJlVmhETkR0Z1YyeTFNNjVxS3dRWGt5bStPRVRhUlcrOElBZk8xdGNC?=
 =?utf-8?B?WXZ5YnlDRm1YN09KME5wZnVBcUE0ZmYyZjlXZjI3eXZzdHB5TDFBNTh4RmFt?=
 =?utf-8?B?cERXR0tBUmswbHducHduN3U2aXNmVDJIbXRQTkhuNThKdHhqRC9TWXdNdzFM?=
 =?utf-8?B?S0c1bk0xb2E4b3NiOEdIMjlxNHg5S3A2bUlSY2ZhOUpmWVpXNkFHendLOFlr?=
 =?utf-8?B?dG8wNjIzQWJOL2RvUWZaK2dTR0ZsUUFTTGJ6OGJMRFJKQTBsdzZKK29SZ2h1?=
 =?utf-8?B?NEwvM0VwY0hsYUY3VHRYWi9kcUJ3TGlsUFc2NzdNV1hpcmhZVThJVlBSSEk1?=
 =?utf-8?B?UTNGQXpBRktza0VkK3JvN3VpNytsWklVZHFUdGlXclNiOFRYd3cya3hyMGZQ?=
 =?utf-8?B?VU0ydjZLdjRUL3h2d3VxL0R5a0cwM0VYb0ZHS29XRnhNdnA2dEFmbDlXU0ZX?=
 =?utf-8?B?MmxyWUVRL2dvTUNQcFRYaUNycUVUY2t4N1hnVTBwMHd1cTZrOG9KNGFiTnAx?=
 =?utf-8?B?QWdKQlZWY05LbXFEZzdKY3g1NVRYcFJWakZ0K1k1N3piVzlJZzF1b3dXb1N0?=
 =?utf-8?B?NXA3bWRqdFFZSmcxTitsWnBtUFUzZlA0MDkrb01nZGpxYkd2VFQwblNhYmZP?=
 =?utf-8?B?VWlNaVppbUZXOExvSm94UHFCcnBlZGhyMDFsc2ZpVjJpOTkrbHo4UlFhSXRY?=
 =?utf-8?B?UmhqaFhERUJjVzJ1T2JZV3FTTEVCeVBReXZxK3kwUlhWclRLcnNlTWtia08z?=
 =?utf-8?B?dmMvM01zdThIbklVdDBMYkdPdUFHTWN4cU0wTCtPMGI4blBPeldJa203UnFn?=
 =?utf-8?B?WTJkSk1qamt5emtuOE5XVC81M29QNHcyN1RjUFJvUEFWTEhqRDl1cmxmd3RV?=
 =?utf-8?B?RGgrYzNhd3ovRFhsZWN5am9FREdmdGMwYW1kdEM4L2pGWEczZzIwN2UrUDdH?=
 =?utf-8?B?M0JNRDlxNUdHRVp1a1lmZ0tWL3htZnRXczFjSTJraDlyWVRybDcvZlZPaWVM?=
 =?utf-8?B?VzZ3SmwzLzE5MFhuT2JWMDl0eEY3MW9NZkhGaWs1RXRGQjJDQzlSRmxEZmh0?=
 =?utf-8?B?T2E2STVlR055MjhlMXhhNlJjaEljUnc3eGtXQzNBSUFJMUUzRnlNbHhMdG5C?=
 =?utf-8?B?a0ZnTXVpSEUxeUVrSXhzeUMyQVpjY041RlNKY1VpVTA3Yy8yQ2tHVXZWU3pI?=
 =?utf-8?B?Vk1ydDVLeEFMOCtZaE9HbXBVL0Q2cG1weGJGbzZyOEVZcmVPMDdhOUZ4TGtq?=
 =?utf-8?B?S2JoUTVBcTI2QWhnc2s2NExtSjlkc2RHRmR3OWMvOENqbklOYnFWeFdwTGVZ?=
 =?utf-8?B?NzBHVER4UkpRM3JpVnpWOWp1Tk5QZTN3elEvT2JyQW52TjVFVy9SdjJQSXlS?=
 =?utf-8?B?ZGtpYk1Za2l4MXU1U0FRWkpYbUJ4UldGVndNVzZiRzAzL01Lb2YrZDBDcUpF?=
 =?utf-8?B?TCtZdXpZWVduS3R5WmtBU0pmOFVYM0Vzd2tHWjBBTXV4cUwxWjEyOSs3dGtt?=
 =?utf-8?B?djlVV29oNldURmFkR1lHTlBMeE1MaUNXbTNMNXdiYkVYRzdCdUNia1l5VFdJ?=
 =?utf-8?Q?U5fi4PAvan3BqpW9yg+S2oumQUZts64D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aEtucHVrMFNOd0x2VUNlTlE4TzRtVFFIaDEvZnFkbE1xeWNPZEtHNlV3YkI2?=
 =?utf-8?B?a1JhMFRUK1VOeUtaVFJZWHduTnNHWTl3Rk1qK1ZnbXZ0UFJZb0FrYnVGa0JS?=
 =?utf-8?B?cjZJMDVIUmI5endrWk44QWY2b05oMXBlL0dEM0ZPZ2lCcUZ5UDRxbFFpSGJO?=
 =?utf-8?B?WnhKam1OUHZiTHI3bm5NZzRCVkR2S056ZTFYTGl6K3J4amc3bWV5aDcvdlFa?=
 =?utf-8?B?cGVKcWRVRDM4TWVoaC9SdkpMRGw0UTR4UVZEZndnRFhIMlJFdGtMMEx1SEhU?=
 =?utf-8?B?aHZrVTZubFZ0N0ZTclNuOUVCOGd1TFhwd0NjWGxoT3dLbXdrQXJKMS9jVkxm?=
 =?utf-8?B?c0FHQk84c25Fbk5WWnpTYU9SM0xpNVF4S0ZZWndYYVFsdGVMblUyOVBHbmoy?=
 =?utf-8?B?YXZyWXRvYUg5MzkxUW5rRDlZTThyWUNNVldnakwxUTZvbGVKMUZFZmxQbFY1?=
 =?utf-8?B?aFV0RzhvVmVocTBscFZhTUJ3U3M5VDhrUytCZGk2N3U1V2xiVXNFK0NPQ0F0?=
 =?utf-8?B?M2htM0d6WG00UDk2Uy9uQ0hGZFVrbVdkMWVHWHd4U3BEQ1Z3ZTVSSU9tTURT?=
 =?utf-8?B?eFFnYjFXWFI0VVVWM0tLeEtDcThENnl4dHI4b2htNms2WmNLYmd2SjhMdlFo?=
 =?utf-8?B?dnlRczZwSmYvVDBtbHRzM2tiNjB6QlhDOXgzSWdGUUF5NGxwV3dPaHF4aXAr?=
 =?utf-8?B?OCtxU0tTMHkwc0F1YlNFSDFYME1JOU15ZDFPd2ZXQms0UEJ5ZDFBRWFwQ3Vw?=
 =?utf-8?B?WTFmZUQ0ano4Uk8xVXJVSUNkcVA2Sm1qTEhHTVVvdFBnUkZwVmw4dXF4Wkgr?=
 =?utf-8?B?Y3ZOOE9CU0d6aC9tZ2k1TFYwNUxSbFRYb2lJUTFlb2t2bXNhYXNBTmxyTStU?=
 =?utf-8?B?WDhmTzVzRGUxQzhobE9pYjdKak5PdmhkYzBUU2o4enlCZTF2eGtPK2VWc0pm?=
 =?utf-8?B?cG52ZXdkZ01weXpqNkdhUENxUTEvelI4ZkxPVjBpV2VOdWxZeURVT1VsWnkw?=
 =?utf-8?B?bUVRZWM5SitoU0NuT0grdkx3ZjQ0NTFLQVFqV2pHVnJtRGxlVFN0Q0ROTkw2?=
 =?utf-8?B?eHZNVklJMXdzblFzWEx6NTZKU3JKdkJOdytBYWR0UmticjM5cHRCcDlyYmFz?=
 =?utf-8?B?YitRdnJOTHpCa0c4Q082cFVkYzFaZHpyOXdJUzhjVUUwZlRBa3NGNmRvZGlS?=
 =?utf-8?B?WWFiamkrSnMyUFVJbTl4WGRCQ2N5VDVKNmNvSVhVeDBNdVlHMVdIeU1CcmFj?=
 =?utf-8?B?ZlU2Z3ZIK3o0amNsVXg5UWNKUEhVVG9YcTBNLytFcEd0cE1pWFFBTnRMcEk3?=
 =?utf-8?B?NXIrbGlVWmNkRmdtY1gwT0oyZXRxaEQ2V29WWWpDc0tSMEppOHBxVlI2Y1Iz?=
 =?utf-8?B?ZG1QK0g3ZS9kY1UzbnpwZVpZeTdJenlpU1FIMVlnbHlsS3JXanFYUGhyK1Za?=
 =?utf-8?B?djZSaDJKb1V6VGFYNUU3Nm43UFJPWW1nZElia0gxTkY2VDNxdlI1RlJLc2dp?=
 =?utf-8?B?eDk2cFF4V2NFUCtRQWJ5cW9YUU1KSjNyK21jNWQ2emtlWjNIa2U0aEtlM0tN?=
 =?utf-8?B?RlVrcE01RGVWMEhpMG0yT3B3VDVGMGNaTTFDSXFpNDVXT0lNQXVSbEh6S3hR?=
 =?utf-8?B?SHpSK3IyYytNWnU4NWhTRXoySWx6N1NhNjZLd1ZYSjV2TnlObVFmSGIyY28x?=
 =?utf-8?B?eUJUd0gyYU1GQUlwaG9NdW9USlc0V213ZkVaNGFpTjFLQWVvRExTMm5yMmEx?=
 =?utf-8?B?WGNyOTR5ZUVkMVc0dmUrUWkrdkdveGpPTjJJVXE3MTkzMlc2UHFQdGdaSndQ?=
 =?utf-8?B?ZkdDTTFGUThzdkxneEVETE1zZjN5OUhRZHV6UXcrZkVDNTZlQ0tFeEc3dU1S?=
 =?utf-8?B?bCtIUmxZK1VvK3VMcHRrZS83a0l2QzA1b0c1eGgyVllZaXNjWWJmZ3FqM3ZY?=
 =?utf-8?B?bnVuQkhXbU50ZDZRMHptSUxrVFFDZVFUQ3JaTnoxOHowcCtVY1ZVZ2x5ZEYw?=
 =?utf-8?B?dURMTGQ5TjJGanZ5VU1QTTJDclN1VExhM0Rqc1VjczAxdFBBcVFydjZoM2tp?=
 =?utf-8?B?dlIzN1RmYWY3RUQwUlNrSTVNakpPWDN4a1E1OHVhZG9WbkljQUpqNHVCajl6?=
 =?utf-8?Q?TtBOCUfz+lPRzs4gkzeORsI6R?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ea6089b-77ba-4281-b7cd-08dd2bbd0d28
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2025 06:08:32.5937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hqqmX0pWT0waNZoSGNm83bLrRT++7mG8NqMgsgdO93OV2o/J9eCJi6LpKXN3hi0thbV0ApRNR2eV7w6ZGKREeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4966
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgQXJ1biBSDQo+
IE11cnRoeQ0KPiBTZW50OiBGcmlkYXksIEphbnVhcnkgMywgMjAyNSAxMDo0MyBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFtQQVRDSCB2NV0gZHJtL2k5MTUvZHA6IEd1YXJhbnRlZSBhIG1pbmltdW0gSEJs
YW5rIHRpbWUNCj4gDQo+IE1hbmRhdGUgYSBtaW5pbXVtIEhibGFuayBzeW1ib2wgY3ljbGUgY291
bnQgYmV0d2VlbiBCUyBhbmQgQkUgaW4gOGIvMTBiDQo+IE1TVCBhbmQgMTI4Yi8xMzJiIG1vZGUu
DQo+IFNwZWM6IERQMi4xYQ0KDQpUaGUgc3BlYyBpcyBtZW50aW9uZWQgdXN1YWxseSByaWdodCBi
ZWZvcmUgdGhlIFNpZ25lZC1vZmYtYnkNClNwZWM6DQpTaWduZWQtb2ZmLWJ5DQoNCj4gDQo+IHYy
OiBBZmZpbmUgY2FsY3VsYXRpb24vdXBkYXRpb24gb2YgbWluIEhCbGFuayB0byBkcF9tc3QgKEph
bmkpDQo+IHYzOiBtb3ZlZCBtaW5faGJsYW5rIGZyb20gc3RydWN0IGludGVsX2RwIHRvIGludGVs
X2NydGNfc3RhdGUgKEphbmkpDQo+IHY0OiB1c2UgbWF4L21pbiBmdW5jdGlvbnMsIGNoYW5nZSBp
bnRlbF94eCAqaW50ZWxfeHggdG8gaW50ZWxfeHggKnh4DQo+ICAgICAoSmFuaSkNCj4gICAgIExp
bWl0IGhibGFuayB0byA1MTEgYW5kIGFjY29tbW9kYXRlIEJTL0JFIGluIGNhbGN1bGF0ZWQgdmFs
dWUNCj4gICAgIChTcmlrYW50aCkNCj4gdjU6IFNvbWUgc3BlbGxpbmcgY29ycmVjdGlvbnMgKFN1
cmFqKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBp
bnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNf
c3RhdGVfZHVtcC5jICAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCB8ICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMgICAgICAgIHwgMzUNCj4gKysrKysrKysrKysrKysrKysrKysrKw0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgICAgICAgfCAg
NCArKysNCj4gIDQgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9kdW1w
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVt
cC5jDQo+IGluZGV4DQo+IDFmYWVmNjBiZTQ3MjhjZDgwYTBhNmIwMTUxNzk3Y2VkYTVjNDQzY2Uu
LjBlN2UwYjc4MDNkOTg2NTE3N2Q2Zg0KPiA2OGU4YWZkZWY5NGE5MWQ5Njk3IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9k
dW1wLmMNCj4gQEAgLTI0OCw2ICsyNDgsNyBAQCB2b2lkIGludGVsX2NydGNfc3RhdGVfZHVtcChj
b25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsDQo+ICAJCQkgICBz
dHJfZW5hYmxlZF9kaXNhYmxlZChwaXBlX2NvbmZpZy0NCj4gPmhhc19zZWxfdXBkYXRlKSwNCj4g
IAkJCSAgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBpcGVfY29uZmlnLQ0KPiA+aGFzX3BhbmVsX3Jl
cGxheSksDQo+ICAJCQkgICBzdHJfZW5hYmxlZF9kaXNhYmxlZChwaXBlX2NvbmZpZy0NCj4gPmVu
YWJsZV9wc3IyX3NlbF9mZXRjaCkpOw0KPiArCQlkcm1fcHJpbnRmKCZwLCAibWluaW11bSBIQmxh
bms6ICVkXG4iLCBwaXBlX2NvbmZpZy0NCj4gPm1pbl9oYmxhbmspOw0KPiAgCX0NCj4gDQo+ICAJ
ZHJtX3ByaW50ZigmcCwgImZyYW1lc3RhcnQgZGVsYXk6ICVkLCBNU0EgdGltaW5nIGRlbGF5OiAl
ZFxuIiwgZGlmZiAtDQo+IC1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IGluZGV4DQo+IGViOWRkMTEyNWE0YTA5NTExOTM2YjgxMjE5ZTdm
MzhmYWUxMDZkZmQuLjdkM2E3NzAwYzQ0ZWYyMDBkODExDQo+IGQ5ZTkwZWE0NjVjMDYxMDQyODdl
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaA0KPiBAQCAtMTA5NSw2ICsxMDk1LDcgQEAgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgew0KPiANCj4gIAlpbnQgbWF4X2xpbmtfYnBwX3gxNjsJLyogaW4gMS8xNiBicHAgdW5p
dHMgKi8NCj4gIAlpbnQgcGlwZV9icHA7CQkvKiBpbiAxIGJwcCB1bml0cyAqLw0KPiArCWludCBt
aW5faGJsYW5rOwkJLyogbWluIEhCbGFuayBmb3IgRFAyLjEgKi8NCg0KSSB0aGluayB0aGlzIGNv
bW1lbnQgc2hvdWxkIHN0YXRlIG1pbiBIQmxhbmsgZm9yIE1TVCBhbmQgbm90IERQMi4xIHNpbmNl
IHdlIHVzZSBpdA0KRm9yIG5vbiB1aGJyIGNhc2VzIHRvbw0KV2l0aCB0aGUgYWJvdmUgZml4ZWQN
ClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0K
PiAgCXN0cnVjdCBpbnRlbF9saW5rX21fbiBkcF9tX247DQo+IA0KPiAgCS8qIG0yX24yIGZvciBl
RFAgZG93bmNsb2NrICovDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYw0KPiBpbmRleA0KPiBmZmZkMTk5OTk5ZTAyZWI2NmVhNDc4ZmY4NzJmNzJiMjc3
YmQzOTcwLi5iZDU2MWMwOGQ5NDVmY2FmYTY1YWY5Mg0KPiA1NGE3MWNkNjZmMTc5MjNkMiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IEBA
IC0yMTEsNiArMjExLDM1IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2RzY19nZXRfc2xpY2Vf
Y291bnQoY29uc3QNCj4gc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjDQo+ICAJCQkJCSAg
ICBudW1fam9pbmVkX3BpcGVzKTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9kcF9t
c3RfY29tcHV0ZV9taW5faGJsYW5rKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0
YXRlLA0KPiArCQkJCQkgICAgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiAr
CQkJCQkgICAgaW50IGJwcF94MTYpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIgPSBjb25uZWN0b3ItPmVuY29kZXI7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRp
c3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0KPiArCWNvbnN0IHN0cnVjdCBkcm1f
ZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0NCj4gKwkJCQkJJmNydGNfc3RhdGUtPmh3LmFk
anVzdGVkX21vZGU7DQo+ICsJaW50IHN5bWJvbF9zaXplID0gaW50ZWxfZHBfaXNfdWhicihjcnRj
X3N0YXRlKSA/IDMyIDogODsNCj4gKwlpbnQgaGJsYW5rOw0KPiArDQo+ICsJaWYgKERJU1BMQVlf
VkVSKGRpc3BsYXkpIDwgMjApDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCS8qIENhbGN1bGF0ZSBt
aW4gSGJsYW5rIExpbmsgTGF5ZXIgU3ltYm9sIEN5Y2xlIENvdW50IGZvciA4Yi8xMGINCj4gTVNU
ICYgMTI4Yi8xMzJiICovDQo+ICsJaGJsYW5rID0gRElWX1JPVU5EX1VQKChESVZfUk9VTkRfVVAo
YWRqdXN0ZWRfbW9kZS0+aHRvdGFsIC0NCj4gK2FkanVzdGVkX21vZGUtPmhkaXNwbGF5LCA0KSAq
IGJwcF94MTYpLCBzeW1ib2xfc2l6ZSk7DQo+ICsNCj4gKwkvKiBiaXQgODowIG1pbmltdW0gaGJs
YW5rIHN5bWJvbCBjeWxjZSBjb3VudCwgaS5lIG1heGltdW0gdmFsdWUNCj4gd291bGQgYmUgNTEx
ICovDQo+ICsJaGJsYW5rID0gbWluKDUxMSwgaGJsYW5rKTsNCj4gKw0KPiArCS8qIFNvZnR3YXJl
IG5lZWRzIHRvIGFkanVzdCB0aGUgQlMvQkUgZnJhbWluZyBjb250cm9sIGZyb20gdGhlDQo+IGNh
bGN1bGF0ZWQgdmFsdWUgKi8NCj4gKwloYmxhbmsgPSBoYmxhbmsgLSAyOw0KPiArDQo+ICsJaWYg
KGludGVsX2RwX2lzX3VoYnIoY3J0Y19zdGF0ZSkpDQo+ICsJCWNydGNfc3RhdGUtPm1pbl9oYmxh
bmsgPSBtYXgoaGJsYW5rLCA1KTsNCj4gKwllbHNlDQo+ICsJCWNydGNfc3RhdGUtPm1pbl9oYmxh
bmsgPSBtYXgoaGJsYW5rLCAzKTsgfQ0KPiArDQo+ICBzdGF0aWMgaW50IG1zdF9zdHJlYW1fZmlu
ZF92Y3BpX3Nsb3RzX2Zvcl9icHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCQkJ
ICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJCQkJCSAgICAg
IGludCBtYXhfYnBwLCBpbnQgbWluX2JwcCwNCj4gQEAgLTI4NCw2ICszMTMsOCBAQCBzdGF0aWMg
aW50IG1zdF9zdHJlYW1fZmluZF92Y3BpX3Nsb3RzX2Zvcl9icHAoc3RydWN0DQo+IGludGVsX2Rw
ICppbnRlbF9kcCwNCj4gIAkJcmVtb3RlX2J3X292ZXJoZWFkID0NCj4gaW50ZWxfZHBfbXN0X2J3
X292ZXJoZWFkKGNydGNfc3RhdGUsIGNvbm5lY3RvciwNCj4gIAkJCQkJCQkgICAgICB0cnVlLA0K
PiBkc2Nfc2xpY2VfY291bnQsIGxpbmtfYnBwX3gxNik7DQo+IA0KPiArCQlpbnRlbF9kcF9tc3Rf
Y29tcHV0ZV9taW5faGJsYW5rKGNydGNfc3RhdGUsIGNvbm5lY3RvciwNCj4gbGlua19icHBfeDE2
KTsNCj4gKw0KPiAgCQlpbnRlbF9kcF9tc3RfY29tcHV0ZV9tX24oY3J0Y19zdGF0ZSwgY29ubmVj
dG9yLA0KPiAgCQkJCQkgbG9jYWxfYndfb3ZlcmhlYWQsDQo+ICAJCQkJCSBsaW5rX2JwcF94MTYs
DQo+IEBAIC0xMjY3LDYgKzEyOTgsMTAgQEAgc3RhdGljIHZvaWQgbXN0X3N0cmVhbV9lbmFibGUo
c3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkgICAgICAgVFJBTlNf
RFAyX1ZGUkVRX1BJWEVMX0NMT0NLKGNydGNfY2xvY2tfaHoNCj4gJiAweGZmZmZmZikpOw0KPiAg
CX0NCj4gDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDIwKQ0KPiArCQlpbnRlbF9k
ZV93cml0ZShkaXNwbGF5LCBEUF9NSU5fSEJMQU5LX0NUTCh0cmFucyksDQo+ICsJCQkgICAgICAg
cGlwZV9jb25maWctPm1pbl9oYmxhbmspOw0KPiArDQo+ICAJZW5hYmxlX2JzX2ppdHRlcl93YXMo
cGlwZV9jb25maWcpOw0KPiANCj4gIAlpbnRlbF9kZGlfZW5hYmxlX3RyYW5zY29kZXJfZnVuYyhl
bmNvZGVyLCBwaXBlX2NvbmZpZyk7IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleA0K
PiA3NjVlNmMwNTI4ZmIwYjVhODk0Mzk1Yjc3YTVlZGJmMGIwYzgwMDA5Li43YmQ3ODM5MzExOTll
MmU1YzdlMQ0KPiA1MzU4YmI0ZDJjOTA0ZjI4MTc2YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oDQo+IEBAIC0zMTk3LDYgKzMxOTcsMTAgQEANCj4gICNkZWZpbmUgX1RSQU5TX0RQMl9W
RlJFUUxPV19ECQkJMHg2MzBhOA0KPiAgI2RlZmluZSBUUkFOU19EUDJfVkZSRVFMT1codHJhbnMp
DQo+IAlfTU1JT19UUkFOUyh0cmFucywgX1RSQU5TX0RQMl9WRlJFUUxPV19BLA0KPiBfVFJBTlNf
RFAyX1ZGUkVRTE9XX0IpDQo+IA0KPiArI2RlZmluZSBfRFBfTUlOX0hCTEFOS19DVExfQQkJCTB4
NjAwYWMNCj4gKyNkZWZpbmUgX0RQX01JTl9IQkxBTktfQ1RMX0IJCQkweDYxMGFjDQo+ICsjZGVm
aW5lIERQX01JTl9IQkxBTktfQ1RMKHRyYW5zKQkJX01NSU9fVFJBTlModHJhbnMsDQo+IF9EUF9N
SU5fSEJMQU5LX0NUTF9BLCBfRFBfTUlOX0hCTEFOS19DVExfQikNCj4gKw0KPiAgLyogU05CIGVE
UCB0cmFpbmluZyBwYXJhbXMgKi8NCj4gIC8qIFNOQiBBLXN0ZXBwaW5nICovDQo+ICAjZGVmaW5l
ICBFRFBfTElOS19UUkFJTl80MDBNVl8wREJfU05CX0EJCSgweDM4IDw8IDIyKQ0KPiANCj4gLS0t
DQo+IGJhc2UtY29tbWl0OiAwNDhkODNlN2Y5ZGFlODFjMDU4ZDMxYzM3MTYzNGMxYzMxN2IzMDEz
DQo+IGNoYW5nZS1pZDogMjAyNTAxMDMtaGJsYW5rLWNkN2U3OGNiZTE3OA0KPiANCj4gQmVzdCBy
ZWdhcmRzLA0KPiAtLQ0KPiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4N
Cg0K
