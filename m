Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0857D9BF22D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 16:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D969310E72B;
	Wed,  6 Nov 2024 15:50:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VLgBtdEG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DFE810E71C;
 Wed,  6 Nov 2024 15:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730908206; x=1762444206;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cn5J826W7dnjru7qUI5iYXg3a0Ar+9pRPR7mPe/WR7w=;
 b=VLgBtdEG5EF/RER/6XcjBM2+CUDDvWheETGU3C414ZkPZoVYG4uYDf1t
 dGDnFGyzSJ9pCZlnEIziCKKomuVqA/rvbAKtrCFwzd4pdbz4La6FHH/IP
 3pXpW4RFdda2Zd58efT8PTNn6WsBSH8+VMjy/ztZ2ddQAzeaU20G4/D2n
 mvgU0vhgc/EGqYxChePMchW15ePD4b+N3YOSZQdwbl/zorhwYvzDQGcN2
 7pw2sp+VDVKnR+7wun960PU2NuuthAUgb5Edt3nFizCRWG8Uz0kwA1kUp
 3wnuYd5j22drR6LO6M5/bSEg66SdmYCqA6hY8uK14EEvKX+Iv0gJqP3qw Q==;
X-CSE-ConnectionGUID: Gj7sijWmTCKxVhVIFh2ckA==
X-CSE-MsgGUID: HJDIb7OxTSWhFZP5CDZTSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30567638"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30567638"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 07:50:05 -0800
X-CSE-ConnectionGUID: Yo6E1rbVQOaNY0NEY8E0hA==
X-CSE-MsgGUID: mRNZ8CdfSh6s06MnPah3gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89728780"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 07:50:00 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 07:49:59 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 07:49:59 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 07:49:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uy3iOQ4jJgdNEyrc6Pqmz4F/1AzG9v/CCuL0eUyw7X2xV01h9GyhdMgjbRqSYWWHoV/mMQHXNxu5jROkouP4t7KqGziXmSFZ+OKiAFBV2itZJ7I5AMz2pxONYEmSaUoGNhKycLLPbDK8jrkykskZnk1P0bIu8jV52BESGHyLxWoQ6NrxbWnZYrrVHDw6J7eAQvAmuYDuJHwQGOVxpgpIZhirmJw1UOHeSqX4C5OF9uTNY0yfskMBkbg1Gf3XRzlLmoPiGceMAGE+BFZrywa69gRAoiL/PlQVsV4hr3UozrX0IAL+luUjqACTJMHdTLRWEvqunVLFpD/GZhqG8jFWiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cn5J826W7dnjru7qUI5iYXg3a0Ar+9pRPR7mPe/WR7w=;
 b=CV9IzyS3XSpXKXl/eZBDiz0o44jvaWDstd7wquaEia569jPlIaVngVC4rtROptryapQ+4MlCNIQixbrlMjLVEH0sGgwkdyh599KjvVmRblmqhWFKsdxF8LGQcWSCsLvAEMI/JeeRuM9P5l8cbwSlPL/ouH8DNPJEB6JH/lNc0oEgQw7HysHNP1/JVIIq+o2T90liUMP1HpwKQedFpmDAaVnNBN3AfKa0r99+tsV1uZe7JG88PhUomP3D2E6KIK/UEOvX4Ezhornlmfj0zcu6cgPu2353A+4K+dHslIBJEqkOCjNazrfsCt2G4pFfRQQXVfjWW4pOAKdFMH4IC6828Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS0PR11MB6470.namprd11.prod.outlook.com (2603:10b6:8:c2::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8114.30; Wed, 6 Nov 2024 15:49:55 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 15:49:53 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula, 
 Jani" <jani.nikula@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH 3/8] drm/i915/display: update use_minimal_wm0_only to use
 intel_display
Thread-Topic: [PATCH 3/8] drm/i915/display: update use_minimal_wm0_only to use
 intel_display
Thread-Index: AQHbL1KnR/8/21hvGkmRigQg2vKwhrKoZfYAgAHlroCAABy/AA==
Date: Wed, 6 Nov 2024 15:49:53 +0000
Message-ID: <09cb7764c14dde8d1fd0dc5deb98f95dc7fd4b9d.camel@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
 <20241105071600.235338-4-vinod.govindapillai@intel.com>
 <87ses6gi93.fsf@intel.com> <Zyt4A8kfBqwqRRwB@intel.com>
In-Reply-To: <Zyt4A8kfBqwqRRwB@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS0PR11MB6470:EE_
x-ms-office365-filtering-correlation-id: 546d75b2-85b3-47f5-77ea-08dcfe7aa7ef
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SlRlY0VRZXNSd0F4N0RZY2t6ajdpR05xbFV5YjJnWUFYSUYzOGZnZnYxUDhl?=
 =?utf-8?B?TU1kRWdLemRiaU1zT0R4WGtnSUM4QmptMHhVdEtvU1I1WTl1LzNSWi9Zank2?=
 =?utf-8?B?Nk1USHV4RWQ1ZHNXa0lLaFdYMWZLdjJ3T3F3dDJUR2hnZzlvQ2lKUFd5VzdZ?=
 =?utf-8?B?WEZ5aXdZL1VNUXZrVDNZRDI0N2x3S0JJNkxLVHBNNjJLbGo2VkFNc1grcWJL?=
 =?utf-8?B?OU80TmlIWGd2TWxFeVlHL1piV1Qyd3UvUGE4T2ZGWXhMNlBFNFM4c2x4cC9T?=
 =?utf-8?B?aGRQMk1xYmRHa1BxQVdXQWFsbml2MGk1TjdHS1BDQVRIZ3JCSU1RUGFCUkRn?=
 =?utf-8?B?T2xXNmF1UVFLZ0NnbXVhODkrb3dtUGh4TERWTmZxcXdZWnZ6MklyRHkzOFNG?=
 =?utf-8?B?Rk5HWHlDbmNia2ZkYkdtMzMvdU9GTnNSUkE0T3dXZmJmaFRnWHRCeEswT3ll?=
 =?utf-8?B?RXpqZzdnWi9NVTVsYWRVU0JKRnQxQS92emRhRWsxKzRuV3FMcEZ0cjBLUTBC?=
 =?utf-8?B?ai9TZ2VldFUyclZlMEJWZU9pSXdyV0JYK1FrWmZFQXl6YXd5NUtob05VTVBi?=
 =?utf-8?B?NXlodlBoRzU1UmlJYTFQcTllRWg4WFljTVhaRGoxMXhlTlRqejkzYVEyNy9I?=
 =?utf-8?B?TkZPakRyMGI3eEp5Z0wyRU1xOG45SlhGeVY2VklnaXNlM05wZkxZTGNXdXBB?=
 =?utf-8?B?RXY1Uko3cXo1RW9lSWc2SnRjQ2ROYlZIVFVNZnVPeFNwQzNud3dMU0dmWnhM?=
 =?utf-8?B?ZFpXblFzUXBLQ25Oem9OR1VLL0wzcXRnMDNvREJRdkdGdW13djRUK2lzbVdz?=
 =?utf-8?B?cmF3SGlqdFptYVVsbEpabUpBT3NDNVNlU2FhSXp5dHJVVWFOTy91Qjd2OGRS?=
 =?utf-8?B?S01BcTdmV0dWOTQ4TFFVeFgybG8wWGRGbldLWGN4b0RDb00vbXY1dlRPY0kr?=
 =?utf-8?B?N1pCK1dMUDVDaStGbG9EbHZpL1JkS0pxOWdUcUZ1bTdFK2EvN2sxMWl4SWxn?=
 =?utf-8?B?RUo0UVVoZ08zUHVXM0Z3U3N4K1NrejVZNHZBQWdHbDdZZEQvQTZDelhtREM4?=
 =?utf-8?B?c2sxcHhNdFBJY3JWS2xpK1FiRHJEaUlqWlR0c0FTaUVhTkpCK1BwU3E5UHFV?=
 =?utf-8?B?bnZYWTBIZU50WnNjUUdkUHVMYVpwUEhkRkdxeFdtWEFCQk95dk9DVEZKL1pJ?=
 =?utf-8?B?MjVJT3R2QkorYVlGaHVCVnZUTU82VW5LaWRrZGRQR2paSC9mVFJ2L2ZOMzNR?=
 =?utf-8?B?RklFNzNRQXd1TkM4Q1BLMUppVC8rblBXRDFMcGJOcVM0ZFYveUttRE5XSVV4?=
 =?utf-8?B?aHVMWlBaOGJVVGlCWEFUVVpva3o1eU1RRG5oMXg1UXdOeWxrWGl5SXBGUDJQ?=
 =?utf-8?B?NEJ5QVFsYXZ4cmY3WWMwNlJZUGxnRVdzSUVhLzVuN2p5Rno4QVo5QmdraDlL?=
 =?utf-8?B?c2dsVDVuVEFCNGk3MEN4eEtwemU2R0p4V3A0NEtPRFRPV3pPankwT3lYck5S?=
 =?utf-8?B?eWJJUUJWU2F5QS93c0dDbVJtTnhUTUNjY2pjUnl4Ym45RkJkN3Z3ODFzN2Rq?=
 =?utf-8?B?V2hzY3ppcnd3Rk5RY1dsYWJnWHBnN3lNdzJCL2xBWXk1dU1FbFFHWFd6Z3V6?=
 =?utf-8?B?OUdjRGEyL2VnenMxRGRHbWFydFFoMzIrTWlWczZqcG1qNWc2c3o3YW1NNm1r?=
 =?utf-8?B?WThqWmNRQ1dNbndxcVpJR01YU1o3WHl6S2ZHOHBLbFN4c1daK2oybVFVRkZp?=
 =?utf-8?B?cXp1WVgxc2FwVTFCYlJ0Q0k5UWtwc2NuYjRzeFBrNWFGYVJWSGYrQVNOemFG?=
 =?utf-8?B?L3FGNDZnNXBpUlk3YjM5QT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VjZQOU0xYi9GU0owYkxnUFplT28xbk9LdW81KzQ5RXVLbEl2WVJWVW5lZ3VY?=
 =?utf-8?B?aXA3aFFzUWYwcFUzYjFOc3FvL2dlcUx4RkpndTBKOXlqQXYxR1NiTGszc3E2?=
 =?utf-8?B?SjBwZXVhNGYralF5TytaQXhBVUVVNUdvQjA1WXdwZVhMYkdqZzJEdGhPL2k2?=
 =?utf-8?B?dmdaTTFqWFkyMDg1dkE4Y1NFemQ0SUxwRjQ4WmMzNkN0RUgxZUphRXV5TS9o?=
 =?utf-8?B?V3pLVWJnZThQQ0dFa2ptdnZCVDE1K2RvcWl6SW9QdmplK0VydmVScnJLdTdL?=
 =?utf-8?B?bkkrcDIzelcrR2hYMFBySWJsb0ZqSlZRNHZjaVpJVkhuRHFDVFJjejFXcVRS?=
 =?utf-8?B?M05oTXNHNHZCVDVGN2N3UlBaWFFJQ1RTczlmYkhIbHFvek9VRUh5RFhpdFJk?=
 =?utf-8?B?ejg2VDY0NUh4N01FdzNMNk5BS2F5ZmJuRE1zY2JSMW1lazJWeDhidnhHdGly?=
 =?utf-8?B?TDVwbEtMMzl0VTZ5WXFoL3BWcDhCRnNranZGS2I4TjN5djRBZXEwaU5iSUFp?=
 =?utf-8?B?akYrRlBmU3VZYWR1UlNzcjVSWU5WV0dxekFXLy8xL2c2WVorTE1FT2lveVNJ?=
 =?utf-8?B?VlZRNDREWkFucHhpSlo5c2V6bGRUQXJpbzg0dUdGbGxZd1VkVnNqNXNoNHkw?=
 =?utf-8?B?R2NuR2sreXRhVGljK3FVUWpuMy9Xc0VaR00xR2o3bm84blJlQncrQndoT1JN?=
 =?utf-8?B?QmJ3WHFsbFVIUldJN2xjZjZSM2RsRkt1Rm9ycTJDN3BONXN2V0hzQ2RscXhm?=
 =?utf-8?B?UmVyVzU2TTlYQy9oWU9vK29ZYTR6Ri81STNSUnhNamE5cXdtSUhCU0JpZkFO?=
 =?utf-8?B?UzBYM01QSXhyeVV3YkV3RnRCencvck9VT2QrQ3NLRkFucUlLQit1RE54TUJh?=
 =?utf-8?B?ekRPaFRCeFNZdVZRSUZpWjRRUEFwNkdBclJIQjBFdUtvK1V1VEY2TURocHFk?=
 =?utf-8?B?MDYvZngyT2RKNmtKaVZCUHI0SXBuZ0JMc2VkVHNnMEZ0L0Q4Yi9FU2RCbyth?=
 =?utf-8?B?ODZIRWtoM0o0aDZ1bDV1UUR0YllmV1VQODdjSUYvQUdnQzltZkxuS214VDJw?=
 =?utf-8?B?UmlWaGFONjd0Z1VYQ0UvSE80dERLeVFocDRuMEVqZERsREY1aDRCbVVxckp6?=
 =?utf-8?B?cHFUY2I3dVdQOWozOXUrdm5MMVVPRjJwUXhlQ1dMN3pWUnh4eHdKbmxjeHBo?=
 =?utf-8?B?VHBTeC9MczBHbFRVNXE5MGpJMkxoZ09tckFyOXNoaXpHMm5od2JPcjVyOFlv?=
 =?utf-8?B?NEpaTmRGODFsKy85dit0Y2dQVkttekxTZmpVUHY4L3JDKzR6RFJZNk91TmNO?=
 =?utf-8?B?a2IveDArLys1eVRtZWZVQndZNzJxVldaWFBpZksyWkRWdmIvU0t1UnIwVE14?=
 =?utf-8?B?YVRlRjM1cEVmU0M1Tk5PVnQwb3dnampBQnA2T0t0QUU5S3RDOFNuTTRnaFBp?=
 =?utf-8?B?eGcwTFhrK3BOeUpFVVhlWkJNaEtwL0p5emZBZmszTUdxS09udVdmU1c3TVhV?=
 =?utf-8?B?M3lTejgzK0pOdXpxbTZqblhNMldNSFFyL3VPTkZBaktoWEdvYlN0R0tCNjd3?=
 =?utf-8?B?a3pMSDdGYlNNS3FtUXREaXMzcUZKaml6VmFoQkNFdTBuaXpkckFmUVVkZVF3?=
 =?utf-8?B?MklVMWtUWnFNRTV3QklIT09EVjlOa2F3QnRlK3IrVFhEUmlDNU10aHFTeTlF?=
 =?utf-8?B?aDlSMEZ5R09TS1FyWU4wSHVGOHpyV0lCTDkxSXBWbFJoS2Rma01md1RaT0l2?=
 =?utf-8?B?dzg3MFBPc3hrVFVoR0JMZ2dDQTRIcHltWlNaK01UK0k0MnpsVVJ6TUswZDhJ?=
 =?utf-8?B?VkMzZTZQRlQ3QzVlcURBLy9ZRUgvL0JvRkExS1o0TWU2U2NDMmc1S1dwRHov?=
 =?utf-8?B?Y1FtK1ZORW8rdysrZjVWMU92Q0JhNWhnSERaY3Jtc0RpTlhDdHhHMUdYeGRk?=
 =?utf-8?B?TU8rYndrU0ZSS0l0eFdRWFllNTNGd1VLaDdSbjVyejd0N3czUkxRWGFtVm5k?=
 =?utf-8?B?MUY5dUo3b3BUTGNYcEMybnExZU1kNWVEQlJMV05pVVh0dDlORGRlNm02OW1Z?=
 =?utf-8?B?aERMVUxHTmo1U0tSdnM5NFBSTThuWkZCNTdkR3grcTYwSkRrT2EveWc4WFhY?=
 =?utf-8?B?WWxBdzhlaEdzbE1wVEEvNEphSWFQWGVybWovREtCU2RNMFVJczZHRVpHR2xu?=
 =?utf-8?Q?rGro2eehvYmkl3Z95Y6IiuI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <575484FF93E6D448BB9631D00BCFF1BB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 546d75b2-85b3-47f5-77ea-08dcfe7aa7ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 15:49:53.6293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dJA+5ocO+PKFTTIQLaAA37vGJXsu0iLFXKY1hy/310LVdafVTdef8UeW83ERHY8OrhR4S5zZoIF7QNspfJrGt/hLjPuCFNImgyjyxonz9WI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6470
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

T24gV2VkLCAyMDI0LTExLTA2IGF0IDE2OjA2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgTm92IDA1LCAyMDI0IGF0IDExOjA4OjQwQU0gKzAyMDAsIEphbmkgTmlrdWxh
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMDUgTm92IDIwMjQsIFZpbm9kIEdvdmluZGFwaWxsYWkgPHZp
bm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+IEF2b2lkIHVzaW5nIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlIHJlZmVyZW5jZSBhbmQgdXNlIGludGVsX2Rpc3BsYXkNCj4g
PiA+IGluc3RlYWQuIFRoaXMgaXMgaW4gcHJlcGFyYXRpb24gZm9yIHRoZSByZXN0IG9mIHRoZSBw
YXRjaGVzIGluIHRoaXMNCj4gPiA+IHNlcmllcyB3aGVyZSBodyBzdXBwb3J0IGZvciB0aGUgbWlu
aW11bSBhbmQgaW50ZXJpbSBkZGIgYWxsb2NhdGlvbnMNCj4gPiA+IGZvciBhc3luYyBmbGlwIGlz
IGFkZGVkDQo+ID4gDQo+ID4gVGhpcyBpcyB0ZWNobmljYWxseSBjb3JyZWN0LCBidXQgaXQncyBz
ZWxmLWNvbnRhaW5lZCBpbiBhIHNpbmdsZQ0KPiA+IGZ1bmN0aW9uLiBJJ3ZlIHByZWZlcnJlZCB0
d28gYXBwcm9hY2hlcyBvdmVyIHRoaXM6DQo+ID4gDQo+ID4gLSBDb252ZXJ0IGVudGlyZSBmaWxl
cyAoc29tZXRpbWVzIGludGVybmFsbHkgZmlyc3QsIHdpdGggdGhlIGV4dGVybmFsDQo+ID4gwqAg
aW50ZXJmYWNlIGNoYW5nZXMgaW4gYSBzZXBhcmF0ZSBwYXRjaCwgZGVwZW5kaW5nIG9uIGhvdyBi
aWcgdGhlIHBhdGNoDQo+ID4gwqAgYmVjb21lcykuDQo+ID4gDQo+ID4gLSBDb252ZXJ0IHNpbmds
ZSBmdW5jdGlvbnMgd2hpY2ggYXJlIHdpZGVseSB1c2VkIGFuZCBoYXZlIHN0cnVjdA0KPiA+IMKg
IGludGVsX2Rpc3BsYXkgYXMgcGFyYW1ldGVyLCB0byBsaW1pdCB0aGUgc2l6ZSBvZiB0aGUgcGF0
Y2ggKGFzIG9wcG9zZWQNCj4gPiDCoCB0byBkb2luZyB0aGUgY29udmVyc2lvbiBhcyBwYXJ0IG9m
IGFuIGVudGlyZSBmaWxlIGNoYW5nZSkuDQo+ID4gDQo+ID4gSSB0aGluayBWaWxsZSBzYWlkIGhl
J3MgaGFkIGEgZ28gYXQgY29udmVydGluZyBza2xfd2F0ZXJtYXJrLmMuIFZpbGxlLA0KPiA+IGRv
IHlvdSBoYXZlIGEgcGF0Y2ggZm9yIHRoYXQ/DQo+IA0KPiBOb3RoaW5nIHVzYWJsZSBhdG0uIFRo
ZSB1bmNvbnZlcnRlZCBkZXBlbmRlY2llcyBhdCB0aGUgdGltZQ0KPiB3ZXJlIHJhdGhlciBleHRl
bnNpdmUgc28gaXQgYmVjYW1lIGEgYml0IG9mIGEgbWVzcy4gSSBtaWdodA0KPiBoYXZlIGRlY2Vu
dCBjb252ZXJzaW9ucyBmb3Igc29tZSBvZiB0aGUgZGVwZW5kZW5jaWVzIHRob3VnaC4NCj4gSSds
bCBoYXZlIGEgbG9vayBhcm91bmQgYW5kIHBvc3QgdGhlbSBpZiBJIHNlZSBhbnl0aGluZyBzYW5l
Lg0KPiANCkkgaGFkIGRvbmUgZmV3IG1vcmUgb24gdG9wIG9mIG15IHNlcmllcyAtIEphbmkgaGFz
IHRoaXMNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQwODg2LyB3
aGljaCBoYXMgbWFueSBTQUdWIHJlbGF0ZWQgdXBkYXRlcyB3aGljaCB3aWxsIGhlbHANCmNsZWFu
aW5nIHVwIG9mIHNrbF93YXRlcm1hcmtzLmMgYmV0dGVyLiBTbyBJIGNhbiB1cGRhdGUgbXkgY2hh
bmdlcyBvbiB0b3Agb2YgdGhhdCwNCg0KQnV0IFZpbGxlLCBjb3VsZCB5b3UgcGxlYXNlIHJldmll
dyB0aGVzZSBwYXRjaGVzIHdoaWNoIG1haW5seSBoYXMgdGhlIGxvZ2ljIGZvciB0aGlzIG1pbmlt
YWwvaW50ZXJpbQ0KRERCIGNvbmZpZyBmb3IgYXN5bmMgZmxpcC4gaSB3aWxsIHVwZGF0ZSB0aGUg
aW50ZWxfZGlzcGxheSByZWxhdGVkIGNoYW5nZXMgb24gdG9wIG9mIEphbmkncyBzZXJpZXMuDQpo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNjIyOTg3Lz9zZXJpZXM9MTQw
OTI3JnJldj0xDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNjIyOTg4
Lz9zZXJpZXM9MTQwOTI3JnJldj0xDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
cGF0Y2gvNjIyOTkwLz9zZXJpZXM9MTQwOTI3JnJldj0xDQoNCkJSDQpWaW5vZA0K
