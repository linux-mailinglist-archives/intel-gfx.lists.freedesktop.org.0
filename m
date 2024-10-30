Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 914779B6158
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:22:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF65210E030;
	Wed, 30 Oct 2024 11:22:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XBbqHf93";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF5A10E030
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730287345; x=1761823345;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dq5gXekfcClBwj0Qd1MqMMedio3iWSj6SfQTGl3cVwc=;
 b=XBbqHf934AHbFStFwpEEwjulwjdqyRpwLd9G9TL//6gcalyUXedGGRnH
 +8hIEfFWeTEuZDT42/PjDMlATgC30u7jjz+amSJQ57ZyNT/VE22Qr6flt
 jdYIHXucjntydS+gnnrucR6HLsVAMMThQI1fuXZO8u/3ONkLZFzxGRdbr
 a+1RGgK4aQtXoKCSwTty+NyowXCfI358+j+GGNu511qUXoBD9dYDH2CPt
 hh/aS2+LOeOy4ptAjh1CkxrIsvG/OiEwPsXTb1zQtbHq6m1Q7kpRMVF8m
 BtYCIiG9tiiKYbCKhGSoiTkh4ctiZAj+vEuw9pqDKsJP67nunFskmNG+p g==;
X-CSE-ConnectionGUID: exZnWs7TQI+Nax3i04OZLg==
X-CSE-MsgGUID: gzDrK2wWTlCNGJBMAIjTXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29825031"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29825031"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:22:25 -0700
X-CSE-ConnectionGUID: qOn5S6R6Rt6NvsQSRdYERw==
X-CSE-MsgGUID: TnalOVohQXapehOaSDCV+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="105600674"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2024 04:22:24 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 30 Oct 2024 04:22:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 30 Oct 2024 04:22:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 30 Oct 2024 04:22:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mNpFkO74H6TCbKlAvQl13I+od1yyQWGoO6ZV44MSaQ3/gQCA678vAX/8kpNM2/Ma6Ax9PgRgPxf/XMEzOkgOZ6kU6Og+85og6zcGaDJ6YkV7ZX4t9KLTA+b6VmQYxVf4PzYgnxtzgNSxTk2HDvNy3LfE94TDNEaae31ZQYY6EtLzW5FoRM+cErjFZ1sE9i8TgkSB3tJPJ7BqY9FycSZw6cOPtYYapjvcugsI4iljGFVIJ/tyzwp602/WtS1jJSb/w/fFE00YUNpss3GlsKqfSbOOmORHEaVM+7tBm+ZDQ70KLqlwJf7XV6NT2ySGE0qB0dTzCj3ro1rtnNNmTYs5tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dq5gXekfcClBwj0Qd1MqMMedio3iWSj6SfQTGl3cVwc=;
 b=S6fuXMgTlAiO+BRcU9AVezWyhnMc0YDAkWmujemFwUECdsfJf1Bn/7ZuxZi557WeAhhoSEfPULtva58JaXgwk7z1ZNMfYumq8J/r196aWSDR5hpBpJ866Ydg0bcp4kjvMj1dRVpV0asd26nmj7SCSfePs9h7J940DYi16Skq1rlm52NzpnQEQZPU5MVEpFkbSut3lK6/+/qVwIJyruTltlC4q4vlEAy6PGazYbnD+z5lnuAxxDDpoXa8WRverkWDAyt77ihFntpdtUPO5N1QUvEGwZVCSlf6aHnZzXZ4BxM7QJeTl3b5luY1JyVatCCZlR+/FFAfa3l4hXxgAiWaOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Wed, 30 Oct
 2024 11:22:20 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 11:22:20 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Jadav, Raag" <raag.jadav@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH v3] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Topic: [PATCH v3] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Index: AQHbKgwtW6wMhESk7kaNZu8jEmXHgbKdzS6AgAAneYCAATLMcA==
Date: Wed, 30 Oct 2024 11:22:20 +0000
Message-ID: <MW4PR11MB7054BD69AC2BB7C5D59D2565EF542@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241029140037.164687-1-mika.kahola@intel.com>
 <87bjz3nf8m.fsf@intel.com> <ZyEVNW_OG0g8c0X-@black.fi.intel.com>
In-Reply-To: <ZyEVNW_OG0g8c0X-@black.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB7408:EE_
x-ms-office365-filtering-correlation-id: 51595d06-1940-4a8b-632b-08dcf8d51e7b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VGRrRFBNelBHRUF5NHl2SmxHb1pvYlZ2Q0x1dldLYTBWTmxuL1F2aU1HSTZD?=
 =?utf-8?B?YUxwajY5UVczTjQvQ0gwREpHUE1IMGI5cFpzaU41S1VwUnBXYjNMSmg1YUFD?=
 =?utf-8?B?U2tDTUZwcDkzZG9UTkl2aW5JN0s0YzZ0WFhtdGY3d1FUalZWWFpVZjNQNHp6?=
 =?utf-8?B?b2lsRndiemFHYmpBRmRLU0J6NnlWR1A2SlQ1bE5NYmFianAyaXRSZTRndGRS?=
 =?utf-8?B?U1JaemdYR3k0TU5QNjJTK0I5T1F4Q3NnU3lHVlNoNktQVm50OWVvSWw1aXJP?=
 =?utf-8?B?TTZtZ08zTFpyWWoxM2puaVdEZE1weDYzSUh6VnFRalJhNHZKakgwUGVQNi9J?=
 =?utf-8?B?ci9pSWpIblBaUGUyZ2U5cjZWZ2tSRWY1a2lXOGxzaW9lMWFDRTRYZVR6dWV5?=
 =?utf-8?B?MmZJOHBJL2JkeVk5cUw3d205OXVGZW8rNmZXWVo4eHdNdDhsMG15ZHczdVNN?=
 =?utf-8?B?WWlzYklxU2JmdFZ5TVlYeDZZK01sYzFYaTVkd2ZTVlUxWDc2TVFZNEVmNGps?=
 =?utf-8?B?VFhyeXZWdzNjVmU0aUJyalhwUFBQMDZXUzBLTmV6YlUwK21va2pDelpiTFkv?=
 =?utf-8?B?dXJQVjFQTU5FL01MMzhwSXFWWlR0ejZFaHVoQmRFT2ZLTlE2WW9wd0xmRFh4?=
 =?utf-8?B?azErK0lTclRDSmR5TTdQczIyMzFVOVhyZmRSeVRndmMwN25TT3VkYUVxT3Zo?=
 =?utf-8?B?cWpnMVE2eUlLUXgyS3lMcFJ0OFRPSGl3cy9LS3BUYmJGS3dEcE1Kd0pVbmV4?=
 =?utf-8?B?UWE1elRxQkZobWZEdlh0RWNlSWZxUy8weW1VbytYMEhnc1BzLzVkc0NOWjB0?=
 =?utf-8?B?d3N1cWhYS0JldDVteElrdWZoaDM0OHVrWURaOWY4cS9qTVNoenptbXFyUmRU?=
 =?utf-8?B?WldPcXFXaUNnWmptUmZ2L0NkREZBR3FJSEFFcEJZWWJzMVIzZEtzWnh5U2hF?=
 =?utf-8?B?cElxSDlZT08wRnZzZGI1TEZhbGZrZmVSUHFZUjl6YTRZVjAwdU91U2RJdjY2?=
 =?utf-8?B?T2dMTGtzUDhZR29QeTBCMExrQ3A0VklrSEl1SVFPV3FOdllDN3VYNGNuQ3Zz?=
 =?utf-8?B?ODA5Z1Z4d05KVWJVWk9tU3pKYTZNZkxteEVlSU9ubFdoaHo2VENRbWZ1MzhP?=
 =?utf-8?B?RnFlRzQyditjQmF0d3JTL3JYNEd3M1NuTEh1NTl5d01TcVlJalRqMzBBWC9U?=
 =?utf-8?B?ODVRSDV3MHkzd25vWmtDSE1LbnNQcUtuQkZQVTVEWUIxZGdnRTUzR2N1bjRp?=
 =?utf-8?B?SjV1MjR5elZFVVVCRWhwdHRhelFybFhxZVR3eXFZb0dhbjQwRHV6SjBQbFF4?=
 =?utf-8?B?WW9SeGN2c09VcTVUdzNEWXJ3cTRpMVVhdVFBeFJVS09EOFZkc01rdXgrb2Jk?=
 =?utf-8?B?MVlSLzYwYWkxQms0dmk1NysvRFQ0OFBhSDdaQ3dOVFhxZi9CWG9oREZ5bitR?=
 =?utf-8?B?Q0F0RnlCOXpQM0d6c1RoR1RNSlgwWTJZOXVXdXRrdEUwVVlxWk5xUXRyUFVM?=
 =?utf-8?B?c2JDUFEzM1kyTkN5ZFF6bXdpekhoZDFQK1ViYmdDcVNIZFdmRXZSTVhKMUN0?=
 =?utf-8?B?N25QUjBxYjFCS2kxMGgyU1d4SHFkREdHWmZrdjdIdFlpcGxnWUZobjJHR3V0?=
 =?utf-8?B?dU1BRlovanFldXllQTRUVjI4SDFuY2ZYa3ZwaGw5M1MzSXNYM2lsNDRONEhY?=
 =?utf-8?B?UDJnbE8xY00rNVpLYWo3SHlIR052WDJINU1pZUVSNTZBNTF6K3orQm5TaldY?=
 =?utf-8?B?RTdsZ1NhbzVzR0xoRXl3RkVVZms4dVRVWUozaFBrK0VlNENoQ3AycVA3MitX?=
 =?utf-8?Q?mE/4jfw5OuVhU/LHCr8E09tyoQqGZaaRIfM6A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVk3TWlCb0l4VUJ6eHRhWWFiSHB2TjVnYUg3ZUFmMFNLVmZMZXlTM1Y1VVFp?=
 =?utf-8?B?RTNKUHN6WXE3VmswcjI2eW81RStqVXRreFBtK2s4UUM0V2MzejFpMU1QK0Ns?=
 =?utf-8?B?UzFNejlkcG8yOVpJOU9GQTNUdU1IeFUwQmF1OXBhUXlMQ1YvMzBNekNHcHV1?=
 =?utf-8?B?aVIveVNPaU5xTEZBamdMVjhHaUIzUHlDWVFOM3VMWTU1eTd4bkh1c24xZ2JO?=
 =?utf-8?B?Q25JMGt2bkt0QmFqR0txODl2OG5pc2pxeDdpQkdkM1ZybHZscmw5YXZhNVg0?=
 =?utf-8?B?M1R2M3BBdEp6bzFYQkRzYnIyejUzSUpDeVZrTkNkTERQWkFIYlpMdXRyTGJw?=
 =?utf-8?B?RnlSTmpEL2lhS2RKaEFOeG5UMEZ0eTlEYm9TYjV4QjJVaWpOalByc29IUVc4?=
 =?utf-8?B?UzY0dVIwM202YXMyZFJXVlBaUTlkcjZpYmtWZWxDR3lHclNWMGpyOTBTdWJN?=
 =?utf-8?B?a2RheFJncFByWGJ4NGtLa0FxYkUvVGR2TndNc1FrQWw5U0drbTkrNHVpSTQ0?=
 =?utf-8?B?RFB5MnpZWGp3WHBTK1FzRGcrMllubDlhWHhYMXE3MFJHcmc2d0o5RTQwemhC?=
 =?utf-8?B?bk1YMXNENk5PbXk0aFZJZjBJaThwVUE5NmJFb0tVeWRybWpRN2phS2pwYm9n?=
 =?utf-8?B?ZzNqMW1HUFVuODVBUDdhSklsdU5RMnBHUm9HQ2F4TkFmNFZoOHVHam01RWtr?=
 =?utf-8?B?Um13eHVJeFBSK3J1MzR2V1NLYnVucm1EYXNGOVIxRkF4N0dBdWE3Uy9aZjlv?=
 =?utf-8?B?UzlyaWNWOTdvNUIrSlhHMTBiOEpsNytJTzNFMUF2NWp6eXQ4ZW91VHBLOTFU?=
 =?utf-8?B?SVc2RXBVVVFUdmkxeEhKcjk4MU9hYmErK3NkcTNEVG5EN21xM1EzZHVSV1Jm?=
 =?utf-8?B?Q0dZR1V6b0w0Qm9BYWtQVFp3ZFFIN1hzLyt3S0lNYzZIU3pQVU1tRkNFb0Er?=
 =?utf-8?B?YmhoVGJ2cUdyUGJmNk1uUVJtM3FHcTM1MVBLZlNHR3BUSStDU01hOHJUOW5R?=
 =?utf-8?B?cjgwenRMdFBLdi9SdnU1N2xvQkNoMStocHVuQmkrWVQ5Um0zY082cUVGRTBr?=
 =?utf-8?B?Y2p6empxZnpDNjU2Z0oxa1NUaTBwdm5rYUdobEdPMm1RUEs0OCt5SjB6dWZz?=
 =?utf-8?B?WUVlQitkZFdLSWpJSlZRODZsYU0vc1RaSFRmclFPS0VhK1g3MlFCWTFMZVNF?=
 =?utf-8?B?Y251MWcrUXJVYm1RSWVxNzVFeHNpK0pOdjhYei9aUU5wR2RtS1p1WEp6WDFD?=
 =?utf-8?B?SzlVZFdSQkcxNEp1OG5LYkpzcytzR0wxNEUyN1A1cUpRQkpGME5RNWY1ZWl4?=
 =?utf-8?B?TzlLaFo2dmpKVURnSDFVS1RHa0Y0bTNrM1pPenc5YlZLa1k3a0hHTC9vcmwr?=
 =?utf-8?B?S0JwZ2NGZGpTeXFHalovTGFydWJBSjZpcDRRdWFWaFFuU2N3NnJMTVFBVHhF?=
 =?utf-8?B?czBhMDVlby82TmNUMklyWXYrMldaQng5SDdsdUthd1JpeUdmWEpOMUhUMExL?=
 =?utf-8?B?QWQrYnhZWVJSR28zeXB3cDFld3VQTnAxT1pUNG1oNGtaMWFLcHltQWhCdTg4?=
 =?utf-8?B?S2h2L1RCY01zbTlxYVRVL3JZU1QraUNuTlUzL29CbTJ4N29iMWo3RnkrcFI4?=
 =?utf-8?B?U0VBNDNteHR1TmROZ2g4aGdnZnJWMjkwQ2tDLytSR3hhV2ZSY2VWc1dWcVlU?=
 =?utf-8?B?SDdlQTJRaHFlbnNRUDVGWW45V1ZNM043NHVxaXRUUUd4TjNPdHAvdFpUYVFZ?=
 =?utf-8?B?QXJ2aXRwcUhEQkRjbG5DWjAxd2R5U1F4RzMwZmFvdmU0cXhIS1hIdjk0SmZq?=
 =?utf-8?B?VlpzNldCRGo5bG0wdmlQUm12bjBzSmt4bS9zbFlma053dzUzaDF0YlBySmsx?=
 =?utf-8?B?WWhNVW1TdjZrS3lDMmw3Y0VGVXE5SkQwK2p4V1c5ZEJGVnZBcFpoaW82K29G?=
 =?utf-8?B?RnAyVForMTJyOWJjM1VqdWFwcHFpRTNuaEtoQU9YL3h0YXFNWVhrOUZvNGxz?=
 =?utf-8?B?MVhyc1lzMERpdnVoWm5oLys1b0YyRFZzUy9DMXZWQXJMM3VtbFdpbll4SS9I?=
 =?utf-8?B?bkFVMDdRalhJdGFiOXVNVVA0ZzVLZUxOa1J1M2w4RmxGbEkwWGRJUUFwdDRw?=
 =?utf-8?Q?/LVIminVgUKpxyxZHRMZnX+Fd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51595d06-1940-4a8b-632b-08dcf8d51e7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2024 11:22:20.2743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yM5sqsDgFWY3c5ZLh6f9w7xSwbv+FY3HySGlmek9IT2kul8+5UcMwf0f2E6uiNuIP1JeiQuJ3uGESbcVjA0CiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7408
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYWRhdiwgUmFhZyA8cmFhZy5q
YWRhdkBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIDI5IE9jdG9iZXIgMjAyNCAxOS4wMw0K
PiBUbzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEth
aG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZzsNCj4gU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW1BBVENIIHYzXSBkcm0vaTkxNS94ZTNscGQ6IFBvd2VyIHJlcXVlc3Qg
YXNzZXJ0aW5nL2RlYXNzZXJ0aW5nDQo+IA0KPiBPbiBUdWUsIE9jdCAyOSwgMjAyNCBhdCAwNDo0
MToyOVBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4gPiBPbiBUdWUsIDI5IE9jdCAyMDI0
LCBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPiB3cm90ZToNCj4gDQo+IC4uLg0K
PiANCj4gPiA+ICtzdGF0aWMgdm9pZCB3YV8xNDAyMDkwODU5MChzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSwNCj4gPiA+ICsJCQkgICBib29sIGVuYWJsZSkNCj4gPiA+ICt7DQo+ID4gPiAr
CWJvb2wgZXJyb3IgPSBmYWxzZTsNCj4gPiA+ICsNCj4gPiA+ICsJLyogY2hlY2sgaWYgbWFpbGJv
eCBpcyBydW5uaW5nIGJ1c3kgKi8NCj4gPiA+ICsJaWYgKGludGVsX2RlX3dhaXRfZm9yX2NsZWFy
KGRpc3BsYXksIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRCwNCj4gPiA+ICsJCQkJICAgIFRDU1Nf
RElTUF9NQUlMQk9YX0lOX0NNRF9SVU5fQlVTWSwNCj4gMTApKSB7DQo+ID4gPiArCQlkcm1fZGJn
X2ttcyhkaXNwbGF5LT5kcm0sDQo+ID4gPiArCQkJICAgICJUaW1lb3V0IHdhaXRpbmcgZm9yIFRD
U1MgbWFpbGJveCBydW4vYnVzeSBiaXQgdG8NCj4gY2xlYXJcbiIpOw0KPiA+DQo+ID4gSnVzdCBk
byBkcm1fV0FSTigpIHdpdGggdGhlIG1lc3NhZ2UgaGVyZS4NCj4gDQo+IFJhdGhlciwNCj4gDQo+
IAlyZXQgPSBpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcigpOw0KPiAJaWYgKGRybV9XQVJOKGRybSwg
cmV0LCAuLi4pKQ0KPiAJCXJldHVybjsNCj4gDQo+IENsZWFuZXI/DQoNCk1heWJlIHdlIGNvdWxk
IGRyb3AgdGhlIGRybV9XQVJOX09OKCkgY29tcGxldGVseT8gVGhpcyBpcyBzb21ldGhpbmcgdGhh
dCB3ZSBhcmUgbm90IHJlYWxseSB1c2luZyBlbHNld2hlcmUgaW4gdGhlIGRyaXZlci4gU2ltcGx5
IGRybV9kYmdfa21zKCkgb24gdGltZW91dHMgaGFzIHNvIGZhciBiZWVuIGVub3VnaC4gV2hhdCBk
byB5b3UgdGhpbms/DQoNCj4gDQo+IFJhYWcNCg==
