Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 197649B396D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 19:45:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D05B110E20B;
	Mon, 28 Oct 2024 18:45:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RT6FLQK9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 743B310E20B;
 Mon, 28 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730141154; x=1761677154;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8424Oa2nbyg1N7p+ZSe6Z0EIUS1l5I2f8x0J4CfsUyA=;
 b=RT6FLQK9oqiipd/NBwJkcCdKmlU78Ivmb+Nu7qmp9DjFEebg7PEAxnw7
 M6NfrjHj63JsmaZU+XNIM3ix2grsh0YHQH7uLmgK3/BYxbDDSj/iduFhC
 sz26q/Ct9s7pZg3AMCRBT2WB90e2zN1ztWOOX5vuWFAVHbu3pY0jMkBaX
 EQ4N1zW+mz6HoVQ0VFufMNmkEX//8VsPcTVSs8yRlu1q8pqVTxIld52fV
 q02U45vTRF1MNIqPctRfsTVxwSUOPYPuzZ4WaEhK7KqZi0+42lTGQhXaL
 wXFnzkOFk16jnQIzlSc5Er0kinpTQL15pO4HplQvM4QrRXKUYJ4aYB6Hm A==;
X-CSE-ConnectionGUID: PA/I6CtTRkCY741utA5O8Q==
X-CSE-MsgGUID: 5UQOB6SwRjOiJaKvN6iB6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29939377"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29939377"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 11:45:53 -0700
X-CSE-ConnectionGUID: s3qL2NdRQwOUSKT/i0XEPg==
X-CSE-MsgGUID: rBNwG5WoTmyvowKT9vHW/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="86273011"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 11:45:52 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 11:45:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 11:45:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 11:45:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mRGpN1rQgiKC06arM++s7mIjcEs5muohNuDIOzSLZTm8moZS154DimQXQMZKBERgRUk4BYdqKDlF2T6Ksmb6R24oXlkrf0KRelN/EecT05nN37vUvSKwghxWBpGgqxDUggaKnTpZPKLDFw5Gx+S5qkhM9+Dqdag0yt6n+TZv+OCTTP2MVth8Nc9qW50lJbj8qnMiFu8TmDlUMT9Nhu0gFp/mkWTfW+urL0plgC77EsG//5xbVpRvd8zDeatIDeYMpTA/SBU5X49slJa0lih8Y5xaXGoDRndpsKpIY0Ck75NnanEY5SHxJ+i47YUFieVanwQKPjyh3mcUEekfUpttKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8424Oa2nbyg1N7p+ZSe6Z0EIUS1l5I2f8x0J4CfsUyA=;
 b=bfcbDIuprXsRUoOjjwefmXhPl4ZXrwPq7dWz6L8hDUmpdoSSigHV+WwAVvNLs+IV7XyA9W5fZc4TxWlE2MiDEXKhW/Uqh2a0sgYic53hmFvjnF3NrIjZFiWmNbO9JBuw/Czm7TgDTw+uR0LbD6fmN6ZZXA/Q9lAVOfBZMwM0oek859C5n0c/n7Vhwfskkxf/4V89M8vqrw6YJ65lm/CVkYHvOaLNJ6YPIZEv0Gx4pjLCjGREPSwq9S2zhIRKHN+XpvFoCpY7We0Ee1veIE84Lzlbq3CT0VzE9jS8mUCL2ut3lCSYYvELF6F9j8xJ+xeV3Z76A2cjxp5SthgfR3gl2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 PH0PR11MB7543.namprd11.prod.outlook.com (2603:10b6:510:26c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 18:45:48 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%6]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 18:45:48 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v5 11/11] drm/xe/ptl: Enable PTL display
Thread-Topic: [PATCH v5 11/11] drm/xe/ptl: Enable PTL display
Thread-Index: AQHbJx85RELW19n0F0iHsz6JwlEmvrKchKvA
Date: Mon, 28 Oct 2024 18:45:48 +0000
Message-ID: <DM8PR11MB56552459EE1674B09C1CC8F1E04A2@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
 <20241025204743.211510-12-clinton.a.taylor@intel.com>
In-Reply-To: <20241025204743.211510-12-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|PH0PR11MB7543:EE_
x-ms-office365-filtering-correlation-id: e3eba1f1-b5c1-4ddf-58fe-08dcf780bd1b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bGZQQ3lxdzh4VEJqQVRqTi9GSWxSUDRTcy9SWmI5MDUxTzgrYlJkV0tPTVFW?=
 =?utf-8?B?TlB1ZGhoeGZZaHRXamU0NUFCdlpPNERKZVJwTFVWWEtoR0EwN1NML0NxcDN0?=
 =?utf-8?B?SVhiTENOd3ZITXRWK09IN3htN1k2LzdnRmNpaDZ6RGhBNW1TeVp4ZlYwZW5M?=
 =?utf-8?B?elVCanIxaFNnWWpLUGlkOHBKT3hqdjVlUmduYWhYRTRvOW1DMjBYUzBESHJT?=
 =?utf-8?B?Q1JaU1ZiY0RBbXFMWXI5c3ExbUJBZ0tNOWpYOFZ0NGJQd21BSVg1cTBsdHRO?=
 =?utf-8?B?ZzBKTHVLQlBjdDJrSUVPeDk5SThZaHN3RTI0clhORVFzcngvVUxYREdUSGZq?=
 =?utf-8?B?b0NTT0pTcTM2RStCUnRZaXJEeVZtNExzK2VkMjZiY3RRRzd4NXNaZ1dtMDRX?=
 =?utf-8?B?eXFwTzlhSTFINnFYK1RNdVNpaU5mZ002NUVBYWJSU1IwQTFBcE5uRE16TkQ2?=
 =?utf-8?B?QjVFT041TTAyWXJYOTY0TE4wT0ZLYkxZVDRIMDVrVC9sanZGTHNuZXdNMmlY?=
 =?utf-8?B?dzFFaXh4ZFhubXF6cE9XdUZ5UHIxRWhPVEZSRHcvT0x2ellFNG52R1FpLzEw?=
 =?utf-8?B?dVIrOStDVXFBQjRaOVZMbXQrZDZrZ1AvRi9qTm1kWXRXVWwzTUdPTEszNisw?=
 =?utf-8?B?VUw2bmthRDd3UFFSWi9CYUQ0OFBzUU5aakNvZGJ4OWpMcUtjWWh1bGFwRmxH?=
 =?utf-8?B?Zm5CSExuR0dyOHRMM2FsQXhXd2JFWE1MdUVXNlduVDNKejJ3L1FEMFl5OXJF?=
 =?utf-8?B?Y2FRc1dGZkV3VGxYdGNVSlkxU0NhM214OGN4eXlTWTkwVGFLd0lHM3hkZzUv?=
 =?utf-8?B?ZkRscnhZeWFJWExTYTlUWCt1Wm94V0NUbGw3NzhBZUFKY09DV3ZReHgxcFB4?=
 =?utf-8?B?NzByUVRpMGJjdnZ6NGRZdWhBS2dMSWU4SEFETlB0YnZldjRKV3FGb0VydXhZ?=
 =?utf-8?B?b0VQeTlTQlZURWY5UmNadlhIRDZiMkhTWTBlR3lIaDZScmczcWFQcjZKVk94?=
 =?utf-8?B?QlZCKzhDYzFuY2ZDRFk3OFBNQnV3RXp3b1pkK2ZaK3l4VUxsVUdXaDE2Q0pk?=
 =?utf-8?B?QS96MlRTK0R6YlRxT0l5M1R2dUtjWkYzUWV0TVFnMUQ0OFdLQzR2ZllYRXlp?=
 =?utf-8?B?SkZBclRFSHUyNmd1UlVoYlJWUktBamFvZTlJRlhCVDdQTGNwVHcwR2sxVEFk?=
 =?utf-8?B?dFYwYWdUMmMwRkgyRklTb0s4U3czQ1pCeGFsSFJpc05WQ1kvNGcrNzhQVXlt?=
 =?utf-8?B?OGxHeC8vVnpJVFJadzVOYnA4NmVnSHRhYkEzaVlPOHpxOXU1MFJWVEVnWWlB?=
 =?utf-8?B?U1ZMOHJYVzVId1NUbkdIKzQ0NTBCTlhIc1RXbmZsOEF4ZDFDemdlRDA0R2FV?=
 =?utf-8?B?NE1NdndKSmtrbW9UbHc0Nlo5THE1NHo5OGU0dWwweStBR0lwUDZTWWFQMnA0?=
 =?utf-8?B?YTkxRDJTRzJ1VEVqSWFsbjUyT3I3alJKaC9EQXpwNVlJZ1dOemJlMVN5Z25p?=
 =?utf-8?B?Ky9qcDA5VVFwU1dDcU9ObGc2UGMvdS9GRjNXS2RoWUdxdjAxUVVBOTB1UDFR?=
 =?utf-8?B?ZHFHNTAyb1JseFJxMUxIU2RHUHZIRE5BeGJYYmx2MExLTURGMjJDamZON0VW?=
 =?utf-8?B?S0R5Q0lUQTBycnJCSWcyV2FoUitMRTVJTFZIQmw3d2FKNEZrNnRSdlN2aXBr?=
 =?utf-8?B?R0trOUNjNzV4SFFmSzIzWFA5YUNXblJuZGRmcXY4TkFuS0dZM0ZLam9rZmRO?=
 =?utf-8?B?YTNzd0tDbTZqYVJiMFpjYk5VMkJxajNJeU1aejdjZk5EdnpaU2lVTFN6Q05T?=
 =?utf-8?Q?Zt1qGOOTxmrMQD21o2BUVWIsgL7e7pyYihmh4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjJsWTdPVXhiWnRKMHhxRWxyWHZRWEpoUk9SUWFhNlhxV09jM0t3cGtGclA4?=
 =?utf-8?B?eWJ4cEUvdEpxRFJhc1VzVzhMaVFGQm04MDRDaFUvUmZtbnNFTFlucTRHa0dF?=
 =?utf-8?B?MjRhK0ZvalZDNDVaSGhTTFBGOG9HVHUvYllnU0FNTDBRWmdlVExUVWxPZEdR?=
 =?utf-8?B?L3ZXc2hwcGxEbG56K0JXSm9yUXRRMGpMM28ydTlybjIrbENMNFZMeXFrREdu?=
 =?utf-8?B?aGQ0d2x2djY2N2FMdHdpbEdxNHlBUDR6bUFtODI4Z1RDak9VMDlFNjNQdjBV?=
 =?utf-8?B?RGFIM0hVcjVXemc2VURSakZPTHRFT1cyeVlSOEQzaWpuS2pZeUxUTWFSTmVp?=
 =?utf-8?B?S3JBMEtXejhDUTAxYmFFTW1MZzRRZ2MrU0dqVFdGRGl5OG9uSmI0N3A2OWlp?=
 =?utf-8?B?d3RlZXFXRlY0VVpqMjRTOC9iYUVBQXQ2QXJyOWh2aVJML1NTQmN0UzZoREZ6?=
 =?utf-8?B?RjBibjhWb1Q1ZndXMkN1OWFWRi9xdUpsdE5PVFRUV2VVT2lKZWFmRCswVDJL?=
 =?utf-8?B?QUxyQlAwcEdWMnpPSDBBSW1hUVlzOHZGTmw5OXZKVktFMUdLTzNBYWhUVGxn?=
 =?utf-8?B?dXBlbUl5bEE2UUxwTGxxaWJXOW1KcnRKdXJreW03YmR5TmVmNWpZOVZwSWxp?=
 =?utf-8?B?NnpYNmcwN1V1MDFEb0lMdXNhUjZKQlZLQ0tzNkhoV25NMWlMTmxnNDg5NGxQ?=
 =?utf-8?B?RWw5djRpRVZ3S2I0bjFId1dyS0xRZFhEdC81bERPanhVLzVQOXFGcDRRYWVB?=
 =?utf-8?B?b1B3SFFETWxla2hqVXpEaWVpVkhXZU5jNzZBeGwyS3lEd3lkcTh1ek9pV3Bv?=
 =?utf-8?B?UERqeU5SNkV6dFZJSnRYbkpsRFU2WGc2S1V3SnNXV2RmdCtmTDluMEdzSUxG?=
 =?utf-8?B?dTVnUHNPZ3FZVUFsUWdaNVNiMmVBNSs2am5tcmdjSnVEdW9tVW9taUFZV2R6?=
 =?utf-8?B?VDdGQy9wK2IveHBUU0xuOURFWjA5MmdiallVR0JIYnI0TFhHd0tUeGV6VmtJ?=
 =?utf-8?B?U0NuTU85azB2Umd5QU5XMDFlQk9sT3hReVJUN21XcDVpMUdVSXFyRTN3SnZZ?=
 =?utf-8?B?c0FoNlNjYmd4U3Q4VmlpMWk5d2FRcVBJYzJqa0lVMzNOb2JPT1dXajhMOW1x?=
 =?utf-8?B?RExMeTZzSXFHMUxTbjN2UnBhcENZOVU0b1Z4TnRYM3djejJLQ000c3Y0RlR6?=
 =?utf-8?B?ellMU1FLd2dzbkN4WDQ5RWFYcDVrMitqWlVUcjZqV2NIbzhLSmlldXhFNjNM?=
 =?utf-8?B?YThWY3BNZjFJWmhtWlNxOEVvVUlrL0xGZ2ZRb0ZuaTg0WjQwL3Q4eDR2eDFt?=
 =?utf-8?B?c1VjWkh5WDhqWTZmK0FWK2U1cytqekNSc1huSVlsMU11NzlLQzhudm5ET21N?=
 =?utf-8?B?US83bFd6Ty9RK1ZhRXk0a0trcFg2cmRZOVNUOGM1bHNVd3FJWWJFcHlVRmw4?=
 =?utf-8?B?OE1NbUhDdE9yS2VLbXJYejJEZEVNZUpYQ0dEN2o1ZnM3YmRidUxzNFBKNmJx?=
 =?utf-8?B?RXYybmRLREpjTm1PeDJJREZpaG9KUnNRSnZVWGk2amtCcklWalN4Ylg0dHp1?=
 =?utf-8?B?a2w0K3BDWjdxRDFhQ0kxKzIzVGhrSTBCTFJXTjdtWFpkYlUybytWSGlQWU4z?=
 =?utf-8?B?cGszU2c1VHpLbGJ0TEl5WDFFMDFpQ3hiditPMlF2Q3hnc0thYmZmTXh2eVcw?=
 =?utf-8?B?L1RFZk5UV2lnTFJ0Y2NIeVMydy84RG1PVjBqd042NWg0Y3EvZEN5djVQS293?=
 =?utf-8?B?ayt2bFFOelIrUUxFYmIzckFGOVpDTHN3RHlWQ2VCeTFWRUNzeERYTGVxM2tZ?=
 =?utf-8?B?VHg0OWJFR2xrUXV3dFdBdXVJS3M4T3JwOXVwZ1JKN1p5ZzZxWHpTa1FHQ2pp?=
 =?utf-8?B?dkNRdUl5N1JiN1RqVmVTZWxjTDJPVFVCQ2M3VGlVZTBoeG56WE5WZG11bEha?=
 =?utf-8?B?cFZUTEFXcUgrZlFaZEZ4ZUxhWnIrU3ZGVmpPMUVialc3ZXhJa2tqQUcyd08r?=
 =?utf-8?B?Um1oWjZxZVpEOGNSQlRSRW90VXlYSE5OMytIK3pKeGZEdC9UYW1XWWtyWm5r?=
 =?utf-8?B?NllQM3BGemY2RUk2ZzFaclpMVEQzQ2RxY2NOS2tpNmNPZmdnenhaa3ZVN0dV?=
 =?utf-8?Q?nBOBfxt6TGOG4oPIjmLGWle7B?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3eba1f1-b5c1-4ddf-58fe-08dcf780bd1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 18:45:48.0264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sf4qkY1lyUQiy0YhrAqXd9uR4NhJTUiUSHaDqQT4EqTWXMKYTEqVSHPH7fdCcn4EbhUt7NJcwGWUJ4NHyZvoeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7543
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

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgQ2xp
bnQNCj4gVGF5bG9yDQo+IFNlbnQ6IEZyaWRheSwgMjUgT2N0b2JlciAyMDI0IDIzLjQ4DQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIHY1IDExLzExXSBkcm0veGUvcHRsOiBFbmFibGUg
UFRMIGRpc3BsYXkNCj4gDQo+IEZyb206IEhhcmlkaGFyIEthbHZhbGEgPGhhcmlkaGFyLmthbHZh
bGFAaW50ZWwuY29tPg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSGFyaWRoYXIgS2FsdmFsYSA8aGFy
aWRoYXIua2FsdmFsYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IENsaW50IFRheWxvciA8
Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL3hl
L3hlX3BjaS5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3BjaS5j
IGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3BjaS5jIGluZGV4DQo+IDQwODViYjNiNjU1MC4uNmY3
M2EyNDNjMjRjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfcGNpLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3BjaS5jDQo+IEBAIC0zNTIsNyArMzUyLDcgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCB4ZV9kZXZpY2VfZGVzYyBibWdfZGVzYyA9IHsNCg0KQWNrZWQt
Ynk6IEphbmkgU2FhcmluZW4gPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPg0KVGVzdGVkLWJ5OiBK
YW5pIFNhYXJpbmVuPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPg0KDQo+IA0KPiAgc3RhdGljIGNv
bnN0IHN0cnVjdCB4ZV9kZXZpY2VfZGVzYyBwdGxfZGVzYyA9IHsNCj4gIAlQTEFURk9STShQQU5U
SEVSTEFLRSksDQo+IC0JLmhhc19kaXNwbGF5ID0gZmFsc2UsDQo+ICsJLmhhc19kaXNwbGF5ID0g
dHJ1ZSwNCj4gIAkucmVxdWlyZV9mb3JjZV9wcm9iZSA9IHRydWUsDQo+ICB9Ow0KPiANCj4gLS0N
Cj4gMi4yNS4xDQpCciwNCkphbmkNCg==
