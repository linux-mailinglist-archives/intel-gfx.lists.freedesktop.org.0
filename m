Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CA89BE41D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 11:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4C310E405;
	Wed,  6 Nov 2024 10:19:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IpI7LDKl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0CEC10E00B;
 Wed,  6 Nov 2024 10:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730888395; x=1762424395;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=g6bTsHlCm8XNuuxF8JOtKdtETFBya5RGLRzRF/fwxzY=;
 b=IpI7LDKldd2v2dtBGu5e/Qoc7IHUlMqu3R5O9dIejGYD6Nen893T/Hz8
 /YNt0wDFXZ0J28/doR35QB/lorU+GNPF6ni7M9vcGh3Hig5iRUl/Zyk30
 dJ5OJFj4tBjNm5RpVOjLQIqOiFoFPOzOwFlMUer6jWwDj1CswWYAf59uD
 OvFsO5no//u0ve0f/dZH6Id9737l40KMBPJdYOpcRw6IbEPiqP1dlf5Ot
 60YkinSsmKaC7Q3OW05/WMu+b5exYWeObE2I4RnHRltg1LQDyiwWvFxnY
 L4UKN/ZM53+BtcGoYWtQAorQ7Xc0cFZPB2Q4u6F2Hr5yHcmoJeAYH6PdV g==;
X-CSE-ConnectionGUID: rzWwsq5oTTqv/PeysxYKZg==
X-CSE-MsgGUID: PnxDcFjmTi+zlE9i/l5mIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="18298167"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="18298167"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 02:19:55 -0800
X-CSE-ConnectionGUID: bT8Y0EgfT0mwJCeJVkOXUw==
X-CSE-MsgGUID: WwOk0E8bRyW2xQoKTm2KGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="89281312"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 02:19:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 02:19:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 02:19:49 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 02:19:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yv0KxkQQxLLhKWRTq8YmkJ8ikAv/5giEUIirPLQg/wLdStoP0m4uWDAEf1ncLZyLWtryIzyQw8PDj8kjAeJSXKRZj/v+tkNlMtFnCiogcyb9/HjkRWElixuWAE3lj9sdD1blnWOhiT7h3SZw+3tarIWVpa8UT4EKblniGyjAlsfT5rbup0gQZ5FzpnlT/MLK3LRvTdyhvQGMUrg29Nlc1/vr0z/PPZr7UXLCqHcZJpDYfisf1uB4vT35P6EZnsZd3eia5M2+L4RWQNT/EXu9HYri3Qj7mbn5FGxajM4UUh3NQ3lsfJshItEiQ1BWPp7adqJrTK2UdBwUTOOMNThPWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g6bTsHlCm8XNuuxF8JOtKdtETFBya5RGLRzRF/fwxzY=;
 b=DGVGEmxiEH9TpIV2zt9MZY9+9/0xTdpBf9T9/8Jk0UlAohNwRhlaoJks5WKJx4IEEvmrqPlYXFtLd6T2vucMkXFgPK1DnIowVNwHNPTNgJ3bsOTp7zpMm8aA77sLSYI4qS66Q09rVLERNnEN7v6r7hHUEgjpkxQ7x/P4xKiqATpMhkI8PnG5FreLKbiyfPV5W8+Y89xDCnxBY/aLV735UvRnvHeaBtZaHBxDP9ZkajGv300VTYe24erophjDL383yTYCCXOgDO/37M9KPb7Dm/0o5Nz9iuCuqbawYCGGv0R5OPhS+3Awd/oIe55u38kZJp8KUZOea9n1I4IPTRYocQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW5PR11MB5788.namprd11.prod.outlook.com (2603:10b6:303:198::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 6 Nov
 2024 10:19:45 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 10:19:44 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 05/15] drm/i915/display: convert HAS_DP20() to struct
 intel_display
Thread-Topic: [PATCH 05/15] drm/i915/display: convert HAS_DP20() to struct
 intel_display
Thread-Index: AQHbLt3TKb9o/a+Uh0KbXw0v5sanA7KqDQ+A
Date: Wed, 6 Nov 2024 10:19:44 +0000
Message-ID: <1f41ef75067d9fbedf52d813cd0f19ec00bd87e1.camel@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <b133e7ed50ae860e81916fd7a44947397e1df641.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <b133e7ed50ae860e81916fd7a44947397e1df641.1730740629.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW5PR11MB5788:EE_
x-ms-office365-filtering-correlation-id: 26696192-9804-4553-d14e-08dcfe4c88f8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UGtLeGZQZ3F4eGlrZVIrUStQNTM2bUNISmFBZnpOS3FjZDNVZFkya2VNeEV2?=
 =?utf-8?B?VW94aGlGVllISUlISG03YnhPQ2NHUm5ZU21ySWQ2cUlrQmxsS0NXN2JhYmtO?=
 =?utf-8?B?R1JmZE9JeEw3d2tIVjBSTVExa0F4L2hISE9vZ2hLNnBqcXR5QldoTXJhYTBQ?=
 =?utf-8?B?Q2hXR29jN2JjY0tka1VFcDh0cFFScE1ncnNPTkJOczVNeDYyV0Y2TkV1YXNn?=
 =?utf-8?B?SWJmUklna2E2Zzc3RWs5TWRXNUV5TWRqaEF1MGdudUFDanFVVkVSekYzWitr?=
 =?utf-8?B?bUNxMTlJb1FUelhBQ0pLQTFicWVwYTlJTVZkeVJ2VEZxdHFZOGFiRUdHcDZo?=
 =?utf-8?B?ZEhYWGo3RjlGRE9QTUxnRjJ2aytYbFlCTURJaWJjdDY4WGNSSWpHRXNRcmFq?=
 =?utf-8?B?RWJVZnB4aUdVdzIrUzBpaVppZTZKY3FpenhIemxvcWdZOC9vSlQvaG9QLzI3?=
 =?utf-8?B?NTR3c1A0NkkrcEpwaVIzcDVWQlRFMEJ2OTdxYmhjUHFNdEcwTHNJYmZna1Ji?=
 =?utf-8?B?YUlqRHdzd1VIVmQyTHRSckdsWlcyTkM2QlhJS2RyNno3dm15TEpHZjEvL2JP?=
 =?utf-8?B?NWplTFdqZVl4eWNENkNzdVhxQlZhV2Q1YW1ISHhKOVhqekJkbXh2VEZPelBR?=
 =?utf-8?B?ZG1tSnhUOFdEcXcwRzd2UmorZENTZVdia3hDcEN6U2ZFNEJZcCtnZlVIVGVy?=
 =?utf-8?B?ZU5UK0ZKbEhMaEhOcjE1emVqQm1OV3lKTjI4WjArOGRGZU93elN0VFVxM0F1?=
 =?utf-8?B?b3FXTDVtYnoyQW1jR0xYTGFIVyt2dTZHRnBOek9hcGkrdkJLZ3NsdnhRMFFB?=
 =?utf-8?B?QlFvNDRPQ2VhOUpiZG4yQ0syZmxJRkd3cXlSU0VyRGlHWXc1aWMzaG5xQTV2?=
 =?utf-8?B?YmtJTDQ4OTlYeVNvUTRxMGMvclcxTlk4MEdxRlh4cnp1TlZUZ2FFUDYwRFVI?=
 =?utf-8?B?bXliaWNVMnBNS2JMVUxQdHY4SnM1dXl2WDczeWp5S3FWcmMvY29hZG9xaTJG?=
 =?utf-8?B?WTh1SG5wbFk4TUdnVDRacUFZTTBTcHJBcThkNHZUc0dHak51eDFMczE0c05T?=
 =?utf-8?B?UUFLdWRoZVF0UWU0SkNlaEhSR29BVVhjNjZmbFhYYURwR1oxT04vRVZNU2Jx?=
 =?utf-8?B?SXRBMXdiRk9RRkQ0K2pSOEpzVnZmbnVzTnV2eDRnb09HRzRiTUk4U3JYTEp2?=
 =?utf-8?B?TnRNdlJJM0JWR2owcXhWK1NqdWxkRzFiU0tZT0pRL2FXdkQ1VVZRbGdsUHVo?=
 =?utf-8?B?Vm56WGJ1cEhiUXIrN2c4NVFIeldQU3JVQ0V4SHFvbFh0SExjRkJnelZDVjlF?=
 =?utf-8?B?VEFsV0I5Q2IrRWxINjM3N1FhdzNIUUJaSVluWnFFVExadFlhL1pVTzhPdVY3?=
 =?utf-8?B?VmgwMGtpc3lZSXAzMWlHYkFqZWhoUlVNN1ZweW1hUC95a0VCcTlJbHI0Q3Jm?=
 =?utf-8?B?RHpTTzZhZ0xNU3hlSGZKS0UreHVBY0xHbkNvKy84VU9sT1QxVWFPSVJ4ZlhN?=
 =?utf-8?B?Mm5xQkZqR1ZZdC9BQVkwbmhZNGk5anB3SFVMVFlwWGgwWnY5WHJsVmZRY3Nn?=
 =?utf-8?B?SWUvNGVCZkkzWVhTQ3piR1k3QWU4NTlFNDdWMEZWMVg0Z0tBeWI2UStlSFoz?=
 =?utf-8?B?U2ZIOWhsUHgrZnVVUko2dGs2dVRIcmczbE1KWDlsVW1odXRKQ0IrQThrK1lo?=
 =?utf-8?B?QVlaNEg4UVZpSlYzaHhBNWdXRDV3K3ZhZy9LYUp1SEZhMS9uY3pvL1RVQ0ZF?=
 =?utf-8?B?TDVCRnhMbk9ZaUx3MTZYVUZuWTdGQm1sL3lsNkYvcEg4S2dXTUVLd2UzcXU1?=
 =?utf-8?Q?Cz73iryEMXEfONoxzn6Usrp2q81YcLLAyzxoE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azBwUDdiWTVYS3JlVFlyS3BDQjVBWXorSlZpeE9IRXNxNDJob1FRN1BIUEFk?=
 =?utf-8?B?Z2hmQlR6anhRcDJBL3NDamdoRHhuM1pZQjFCK29lZzNYUlNyL1c2V0sybjhD?=
 =?utf-8?B?Sld3cVlRNkZud3RDbkY1bTYrYzFNOW1peE1VdW9GMXpONFRqTWVvUVhVL0JU?=
 =?utf-8?B?MlVFamlKSlFPdjVhWGgrekRsWjRWUnExODlaNHEvV29xN0RlWkNxTzA3bndW?=
 =?utf-8?B?OE83K0xWVythcVJQM2N0SlF0aVZ6S2s4ZElBYlM4Si9UZjVjc2Npa2JIRjUy?=
 =?utf-8?B?SStHdXo1YzRwRVB5ZUFxclNyTWMyKy9iRkVkS1J6TUt4OGJlaHFZQU5FRmVx?=
 =?utf-8?B?WkJPWjFPaG5kL3RFR2FyVU5iL1M3UzU0MWZPTnRPdmpKTkNrekFFV0xrZXMv?=
 =?utf-8?B?MmtiK2xjUVViTitkRS9vVTNzc3BtQndVOUwvK3dicHErc3VnRGc1WlF0YTkv?=
 =?utf-8?B?WG11VlFrL2dLUGh1VjlnTkcvNFYzM3ROVk9vOFp1TUJvamxRalVLaGVrU3lh?=
 =?utf-8?B?ZEdORTNZK3Z1MzNzTXltK21HajhJY25ZTWNYNmM0TXo0QnVYdGRZbDJzNlli?=
 =?utf-8?B?SlhnSFQxV1gyemxxNHN5QitCQXpYMGdieUdSYzZWTUJJdHNpV2RNdjhDVkxB?=
 =?utf-8?B?NE4yWWozTmcyaXdxRURSSHBlSm5aMFlRRXJRMXl0YlE0cE9aMXp1U3lKK3Rx?=
 =?utf-8?B?RTByY08wa0pnTVJFM3BGVjdxbko5VmkwZDRUbFVaQzJwWFhjWEZYYWdrYjlo?=
 =?utf-8?B?RmdSVzBvSmQ4bTgxTTVzQm9tM2JDNTZZZ0hzQXFTWXdDVEZDa0cybzFKNU05?=
 =?utf-8?B?c3RjY0lEYTRHdjNIU3I1emNKNEMwTlppeDcyNmZLaHhuWGxIeDFUd2x1Mm13?=
 =?utf-8?B?RFUxSWVFMjUvbGRxdjFOQmJacVFIazltT2JGbHA4TklpL1MvOG1hWTI5MFFk?=
 =?utf-8?B?UWFicFJYcnM1Z1RDZVdLUWFaL1pGc3MwUlVrUnZrN3Rhc1I0NWkxa0RCcXZR?=
 =?utf-8?B?cUFKOVhJcGZ6T0thWnhVN1pNVHMrSjNQQkZBR1dMQUU1YUU0a2FId2Z6Z1oy?=
 =?utf-8?B?MTlseXhuSE1UUE1sM0JGRUJOaEhHOFJBdVZqajAxbnk5a1FoOGxCVU9kRkNM?=
 =?utf-8?B?MkxLK3h5ckRMNzY3RFVxVENIeCtSQjFPaU41OEREU2d4QVRGMVJqbzBlZG1z?=
 =?utf-8?B?cHJxSUdoUlJYOVlZamJNRE9oM3RCbXQwUjFSdGpuY0h0UC80a3FHck1kZ2xB?=
 =?utf-8?B?UTYydHhpVWh3MlBvOUZHWG01S1ZIakZCUktOTk9CUlVQeEx1eHdpYzVYeVlR?=
 =?utf-8?B?YTh0MUNwWHIxbjYrcmNvT0srSmtRdGovS0ttYk5oTEp6MVNJY1NtVy9OTE4w?=
 =?utf-8?B?aEk5QUZHaXgvdlFEd0ZNSU9pWU1WblVZditEVTJTcmZrTkRaM0hrNHpxUFF6?=
 =?utf-8?B?bFMzWnRVWDNqckxoOUMvUlNQeXBIa3FvR0srdEY4U09rU1RibFN6cDFKT0p3?=
 =?utf-8?B?RTFDZGZoeCtnelk1cTFaYXY2ekxoKzhhdDViUktUSzFhdm10Q2dJcVppMk9T?=
 =?utf-8?B?WTNkRnovczdROGVFOEVSYlFEOVJmZ0FvL3dYcTJxMmZLcGtaYjVPaDFZbkM4?=
 =?utf-8?B?UGdQelVlQ1ZmUkMyNW1LZWZPNTd6VHcrOGRNVFNtS0Y0Vy9YWWJ2RnNtTnhl?=
 =?utf-8?B?c0w1YVhGU3hIeFJOL1RXeEN2ZDhEc3lZa2ptdjVUaXlVOHAvOWEzL2Z5dmJ6?=
 =?utf-8?B?TXRDM1hKUnE0RlZ3bkczTVZhSzJXQ1NHMXZFMFJJeVZ4TE9oV0tEZ3pZcStx?=
 =?utf-8?B?bEdTWnZqcFh3L3FqNmd5TDMxYWc3M01HbmdFR1cxbTI4YWVjR3NtdXBFK3Jz?=
 =?utf-8?B?NnBlUkFJTE5kTnZObElxaEgzNyswV2Y1eldwTzBvYVU5am5BdXc4c1h3VHBH?=
 =?utf-8?B?bHlQS0lFZ0lCVDBlUjZOSk9lQ1JLVUdNcVFuam9EdjU1NUgwZDRBekNYcVJz?=
 =?utf-8?B?UEVRMDZxdStPSUgzSVlDN1hzWGJBYVgrY2NHU2loR0poUUhOVGxSTzBFeEFt?=
 =?utf-8?B?UjgzLy8ydStndldFTDVxYXY0M3h6bDBJUnBmZkVJOXhsUUt4SUk0b2dBdXNI?=
 =?utf-8?B?bmlxL2pYa1NhdHY3dEZuTHRZL1VqUUJqbFVZY0NXcklsOGxDR1hTNGVpWGhr?=
 =?utf-8?Q?L/VFZSUpInYeaZWlX1i7EQs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8FC4CCC142BE5B4899EFB91411A5F5D2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26696192-9804-4553-d14e-08dcfe4c88f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 10:19:44.8513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fmsK4NwhUPniGxt2Gi4JzNqA2OgEkf12xCJkckeUUpjQg+0ri+r653lFbeRBq3PevgchnAbuaprA4HgM4RS9O8ni3nvKIFqrYEEpTYcryLo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5788
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

T24gTW9uLCAyMDI0LTExLTA0IGF0IDE5OjE5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBD
b252ZXJ0IEhBU19EUDIwKCkgdG8gc3RydWN0IGludGVsX2Rpc3BsYXkuIERvIG1pbmltYWwgZHJp
dmUtYnkKPiBjb252ZXJzaW9ucyB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxheSBpbiB0aGUgY2FsbGVy
cyB3aGlsZSBhdCBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hdWRpby5jwqDCoMKgIHzCoCA3ICsrKy0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jwqDCoMKgwqDCoCB8IDI2ICsrKysrKysrKystLS0tLS0tLS0KPiDCoC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmjCoMKgIHzCoCAyICstCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8wqAg
OCArKystLS0KPiDCoDQgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRp
b25zKC0pCgpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+Cgo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F1ZGlvLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXVkaW8uYwo+IGluZGV4IDMyYWE5ZWMxYTIwNC4uNGNjNzBkYThmNDY3IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYwo+IEBAIC02ODEsMTIgKzY4
MSwxMSBAQCBzdGF0aWMgdm9pZCBpYnhfYXVkaW9fY29kZWNfZW5hYmxlKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAo+IMKgCj4gwqB2b2lkIGludGVsX2F1ZGlvX3NkcF9zcGxpdF91cGRh
dGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gwqB7Cj4gLcKg
wqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNf
c3RhdGUtPnVhcGkuY3J0Yyk7Cj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiArwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7
Cj4gwqDCoMKgwqDCoMKgwqDCoGVudW0gdHJhbnNjb2RlciB0cmFucyA9IGNydGNfc3RhdGUtPmNw
dV90cmFuc2NvZGVyOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgaWYgKEhBU19EUDIwKGk5MTUpKQo+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoaTkxNSwgQVVEX0RQ
XzJET1QwX0NUUkwodHJhbnMpLCBBVURfRU5BQkxFX1NEUF9TUExJVCwKPiArwqDCoMKgwqDCoMKg
wqBpZiAoSEFTX0RQMjAoZGlzcGxheSkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGludGVsX2RlX3JtdyhkaXNwbGF5LCBBVURfRFBfMkRPVDBfQ1RSTCh0cmFucyksIEFVRF9FTkFC
TEVfU0RQX1NQTElULAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtPnNkcF9zcGxpdF9lbmFibGUgPyBBVURfRU5BQkxF
X1NEUF9TUExJVCA6IDApOwo+IMKgfQo+IMKgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCj4gaW5kZXggNDliNWNjMDFjZTQwLi40NmI3YjkwZDNkOTggMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBAQCAtNzAwLDggKzcwMCw4
IEBAIGludCBpbnRlbF9kZGlfdG9nZ2xlX2hkY3BfYml0cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
aW50ZWxfZW5jb2RlciwKPiDCoAo+IMKgYm9vbCBpbnRlbF9kZGlfY29ubmVjdG9yX2dldF9od19z
dGF0ZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IpCj4gwqB7Cj4gLcKg
wqDCoMKgwqDCoMKgc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGludGVsX2Nvbm5lY3Rvci0+YmFz
ZS5kZXY7Cj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShkZXYpOwo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9jb25uZWN0b3IpOwo+ICvCoMKgwqDCoMKg
wqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGlzcGxheS0+
ZHJtKTsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSBp
bnRlbF9hdHRhY2hlZF9lbmNvZGVyKGludGVsX2Nvbm5lY3Rvcik7Cj4gwqDCoMKgwqDCoMKgwqDC
oGludCB0eXBlID0gaW50ZWxfY29ubmVjdG9yLT5iYXNlLmNvbm5lY3Rvcl90eXBlOwo+IMKgwqDC
oMKgwqDCoMKgwqBlbnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7Cj4gQEAgLTc0Nyw3ICs3
NDcsNyBAQCBib29sIGludGVsX2RkaV9jb25uZWN0b3JfZ2V0X2h3X3N0YXRlKHN0cnVjdCBpbnRl
bF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3RvcikKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGJyZWFrOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgVFJBTlNfRERJX01PREVf
U0VMRUNUX0ZESV9PUl8xMjhCMTMyQjoKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aWYgKEhBU19EUDIwKGRldl9wcml2KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aWYgKEhBU19EUDIwKGRpc3BsYXkpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoC8qIDEyOGIvMTMyYiAqLwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IGZhbHNlOwo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZWxzZQo+IEBAIC03NjksOCArNzY5LDggQEAgYm9vbCBpbnRlbF9kZGlf
Y29ubmVjdG9yX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25u
ZWN0b3IpCj4gwqBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZ2V0X2VuY29kZXJfcGlwZXMoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1OCAqcGlw
ZV9tYXNrLCBib29sICppc19kcF9tc3QpCj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGRy
bV9kZXZpY2UgKmRldiA9IGVuY29kZXItPmJhc2UuZGV2Owo+IC3CoMKgwqDCoMKgwqDCoHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiArwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoZW5j
b2Rlcik7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShkaXNwbGF5LT5kcm0pOwo+IMKgwqDCoMKgwqDCoMKgwqBlbnVtIHBvcnQgcG9y
dCA9IGVuY29kZXItPnBvcnQ7Cj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3dha2VyZWZfdCB3YWtl
cmVmOwo+IMKgwqDCoMKgwqDCoMKgwqBlbnVtIHBpcGUgcDsKPiBAQCAtODQwLDcgKzg0MCw3IEBA
IHN0YXRpYyB2b2lkIGludGVsX2RkaV9nZXRfZW5jb2Rlcl9waXBlcyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBjb250aW51ZTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aWYgKCh0bXAgJiBUUkFOU19ERElfTU9ERV9TRUxFQ1RfTUFTSykgPT0gVFJBTlNfRERJX01PREVf
U0VMRUNUX0RQX01TVCB8fAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
KEhBU19EUDIwKGRldl9wcml2KSAmJgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKEhBU19EUDIwKGRpc3BsYXkpICYmCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAodG1wICYgVFJBTlNfRERJX01PREVfU0VMRUNUX01BU0spID09IFRSQU5T
X0RESV9NT0RFX1NFTEVDVF9GRElfT1JfMTI4QjEzMkIpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1zdF9waXBlX21hc2sgfD0gQklUKHApOwo+IMKg
Cj4gQEAgLTI2NTMsNiArMjY1Myw3IEBAIHN0YXRpYyB2b2lkIHRnbF9kZGlfcHJlX2VuYWJsZV9k
cChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQo+IMKgewo+ICvCoMKgwqDCoMKgwqDC
oHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVy
KTsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19p
bnRlbF9kcChlbmNvZGVyKTsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4gwqDCoMKgwqDCoMKg
wqDCoHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0
KGVuY29kZXIpOwo+IEBAIC0yNzIxLDcgKzI3MjIsNyBAQCBzdGF0aWMgdm9pZCB0Z2xfZGRpX3By
ZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gwqDCoMKgwqDC
oMKgwqDCoCAqLwo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZGlfZW5hYmxlX3RyYW5zY29kZXJf
Y2xvY2soZW5jb2RlciwgY3J0Y19zdGF0ZSk7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpZiAoSEFT
X0RQMjAoZGV2X3ByaXYpKQo+ICvCoMKgwqDCoMKgwqDCoGlmIChIQVNfRFAyMChkaXNwbGF5KSkK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RkaV9jb25maWdfdHJhbnNj
b2Rlcl9kcDIoZW5jb2RlciwgY3J0Y19zdGF0ZSk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgLyoK
PiBAQCAtMjg2Miw5ICsyODYzLDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3ByZV9lbmFibGVf
ZHAoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNv
bnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQo+IMKgewo+IC3CoMKg
wqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5j
b2Rlci0+YmFzZS5kZXYpOwo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDC
oGlmIChIQVNfRFAyMChkZXZfcHJpdikpCj4gK8KgwqDCoMKgwqDCoMKgaWYgKEhBU19EUDIwKGRp
c3BsYXkpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHBfMTI4YjEz
MmJfc2RwX2NyYzE2KGVuY190b19pbnRlbF9kcChlbmNvZGVyKSwKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlKTsKPiDCoAo+IEBAIC0yODcyLDkgKzI4NzMsOSBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9y
ZXBsYXkpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9wc3JfZW5hYmxl
X3NpbmsoZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpLCBjcnRjX3N0YXRlKTsKPiDCoAo+IC3CoMKg
wqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTQpCj4gK8KgwqDCoMKgwqDC
oMKgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgbXRsX2RkaV9wcmVfZW5hYmxlX2RwKHN0YXRlLCBlbmNvZGVyLCBjcnRjX3N0
YXRlLCBjb25uX3N0YXRlKTsKPiAtwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPj0gMTIpCj4gK8KgwqDCoMKgwqDCoMKgZWxzZSBpZiAoRElTUExBWV9WRVIoZGlz
cGxheSkgPj0gMTIpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0Z2xfZGRpX3By
ZV9lbmFibGVfZHAoc3RhdGUsIGVuY29kZXIsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOwo+IMKg
wqDCoMKgwqDCoMKgwqBlbHNlCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBoc3df
ZGRpX3ByZV9lbmFibGVfZHAoc3RhdGUsIGVuY29kZXIsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUp
Owo+IEBAIC0zODcxLDYgKzM4NzIsNyBAQCBzdGF0aWMgdm9pZCBiZHdfZ2V0X3RyYW5zX3BvcnRf
c3luY19jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUKPiAqY3J0Y19zdGF0ZSkKPiDCoHN0
YXRpYyB2b2lkIGludGVsX2RkaV9yZWFkX2Z1bmNfY3RsKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29u
ZmlnKQo+IMKgewo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4g
wqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0Yyhw
aXBlX2NvbmZpZy0+dWFwaS5jcnRjKTsKPiDCoMKgwqDCoMKgwqDCoMKgZW51bSB0cmFuc2NvZGVy
IGNwdV90cmFuc2NvZGVyID0gcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyOwo+IEBAIC0zOTYw
LDcgKzM5NjIsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcmVhZF9mdW5jX2N0bChzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfaGRtaV9pbmZvZnJhbWVzX2Vu
YWJsZWQoZW5jb2RlciwgcGlwZV9jb25maWcpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgYnJlYWs7Cj4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgVFJBTlNfRERJX01PREVfU0VMRUNU
X0ZESV9PUl8xMjhCMTMyQjoKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFI
QVNfRFAyMChkZXZfcHJpdikpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYg
KCFIQVNfRFAyMChkaXNwbGF5KSkgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoC8qIEZESSAqLwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHBpcGVfY29uZmlnLT5vdXRwdXRfdHlwZXMgfD0gQklUKElOVEVM
X09VVFBVVF9BTkFMT0cpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHBpcGVfY29uZmlnLT5lbmhhbmNlZF9mcmFtaW5nID0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiBpbmRl
eCBlMTE5OTNhNmYwNDIuLmM4NjFhNjE4MzliOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiBAQCAtMTUxLDcgKzE1
MSw3IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5X3BsYXRmb3JtcyB7Cj4gwqAjZGVmaW5lIEhBU19E
TUMoaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9SVU5U
SU1FX0lORk8oaTkxNSktPmhhc19kbWMpCj4gwqAjZGVmaW5lIEhBU19ET1VCTEVfQlVGRkVSRURf
TV9OKF9fZGlzcGxheSnCoMKgwqDCoMKgKERJU1BMQVlfVkVSKF9fZGlzcGxheSkgPj0gOSB8fCAo
X19kaXNwbGF5KS0KPiA+cGxhdGZvcm0uYnJvYWR3ZWxsKQo+IMKgI2RlZmluZSBIQVNfRFBfTVNU
KGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfSU5GTyhpOTE1KS0+
aGFzX2RwX21zdCkKPiAtI2RlZmluZSBIQVNfRFAyMChpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAoSVNfREcyKGk5MTUpIHx8IERJU1BMQVlfVkVSKGk5MTUpID49IDE0KQo+
ICsjZGVmaW5lIEhBU19EUDIwKF9fZGlzcGxheSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoKF9f
ZGlzcGxheSktPnBsYXRmb3JtLmRnMiB8fCBESVNQTEFZX1ZFUihfX2Rpc3BsYXkpID49Cj4gMTQp
Cj4gwqAjZGVmaW5lIEhBU19EUFQoaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTMpCj4gwqAjZGVmaW5lIEhBU19EU0IoaTkxNSnC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9JTkZPKGk5MTUpLT5o
YXNfZHNiKQo+IMKgI2RlZmluZSBIQVNfRFNDKF9faTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9SVU5USU1FX0lORk8oX19pOTE1KS0+
aGFzX2RzYykKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRl
eCBhNzg0YzBiODE1NTYuLjc0YzJlMzYzNWQ5ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYwo+IEBAIC0zMzM1LDExICszMzM1LDEwIEBAIHZvaWQgaW50ZWxf
cHNyX2ZsdXNoKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LAo+IMKgdm9pZCBpbnRlbF9w
c3JfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+IMKgewo+IMKgwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxf
ZHApOwo+IC3CoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoZGlzcGxheS0+ZHJtKTsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yID0gaW50ZWxfZHAtPmF0dGFjaGVkX2Nvbm5lY3RvcjsKPiDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBkcF90b19k
aWdfcG9ydChpbnRlbF9kcCk7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpZiAoIShIQVNfUFNSKGRp
c3BsYXkpIHx8IEhBU19EUDIwKGRldl9wcml2KSkpCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCEoSEFT
X1BTUihkaXNwbGF5KSB8fCBIQVNfRFAyMChkaXNwbGF5KSkpCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgLyoKPiBAQCAtMzM1
Nyw3ICszMzU2LDcgQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+IMKgwqDCoMKg
wqDCoMKgwqB9Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpZiAoKEhBU19EUDIwKGRldl9wcml2KSAm
JiAhaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkgfHwKPiArwqDCoMKgwqDCoMKgwqBpZiAoKEhB
U19EUDIwKGRpc3BsYXkpICYmICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB8fAo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMjApCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLnNvdXJjZV9wYW5lbF9yZXBsYXlf
c3VwcG9ydCA9IHRydWU7Cj4gwqAKPiBAQCAtMzk3NCw3ICszOTczLDYgQEAgREVGSU5FX1NIT1df
QVRUUklCVVRFKGk5MTVfcHNyX3N0YXR1cyk7Cj4gwqB2b2lkIGludGVsX3Bzcl9jb25uZWN0b3Jf
ZGVidWdmc19hZGQoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+IMKgewo+IMKg
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rp
c3BsYXkoY29ubmVjdG9yKTsKPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNlLmRldik7Cj4gwqDCoMKgwqDCoMKgwqDC
oHN0cnVjdCBkZW50cnkgKnJvb3QgPSBjb25uZWN0b3ItPmJhc2UuZGVidWdmc19lbnRyeTsKPiDC
oAo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoY29ubmVjdG9yLT5iYXNlLmNvbm5lY3Rvcl90eXBlICE9
IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFAgJiYKPiBAQCAtMzk4NCw3ICszOTgyLDcgQEAgdm9pZCBp
bnRlbF9wc3JfY29ubmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNv
bm5lY3RvcikKPiDCoMKgwqDCoMKgwqDCoMKgZGVidWdmc19jcmVhdGVfZmlsZSgiaTkxNV9wc3Jf
c2lua19zdGF0dXMiLCAwNDQ0LCByb290LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25uZWN0b3IsICZpOTE1X3Bzcl9zaW5rX3N0YXR1
c19mb3BzKTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGlmIChIQVNfUFNSKGRpc3BsYXkpIHx8IEhB
U19EUDIwKGk5MTUpKQo+ICvCoMKgwqDCoMKgwqDCoGlmIChIQVNfUFNSKGRpc3BsYXkpIHx8IEhB
U19EUDIwKGRpc3BsYXkpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGVidWdm
c19jcmVhdGVfZmlsZSgiaTkxNV9wc3Jfc3RhdHVzIiwgMDQ0NCwgcm9vdCwKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvbm5lY3RvciwgJmk5MTVfcHNyX3N0YXR1c19mb3BzKTsKPiDCoH0KCg==
