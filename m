Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56821B1D7DB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 14:29:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F08010E34C;
	Thu,  7 Aug 2025 12:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lkPurfLj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDBB810E34C;
 Thu,  7 Aug 2025 12:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754569744; x=1786105744;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MqSSlNPhqPKtDtDp4iU/aYeIKpykGXMgt407DFH7wvc=;
 b=lkPurfLjguaCfKEo4Z4svTXXR7hrKQpIR69iXA16BhU8VyntPLy2hikj
 hUFedszNaNws52yQ6id5eI+ZYKmkbSLzDzJ0HH/sJBGCAGf22rUNoaVMk
 oEmP7Z3yvBetBiKMaMv4KYa6e+dXNsnLMnoI2Ah81mbN9HxjyGgaC0sgr
 NKwCDGDp1SKtJ9BOP1/1f06iVI0+eDs5rAqz0GRW2+Mkv2NHG1qD4GfO8
 Y9CiJqzTYLmEQooNqXcCL5WwXXqoicLAL/eZ8y0/a8FtzEeUIu/Hr6FWy
 e7t3jLdcr/MGHbOK3asXkenY3ySPNNRL+bAfNXsTehfOg4T83Qb8G1mG5 A==;
X-CSE-ConnectionGUID: u7tGa1VuSBeooAaf/qd6gA==
X-CSE-MsgGUID: LVi2LpLSRiOvi99p1E780Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60534639"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="60534639"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:29:04 -0700
X-CSE-ConnectionGUID: Q5paKMICSmSFRpyF3Ml3KA==
X-CSE-MsgGUID: hQcTPERRQUWumj3+7NdCdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164285870"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:29:04 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:29:03 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 05:29:03 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.62)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:29:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fgn2Jcc2kjMl4AMNi4eMusx5kYARJUDUd+0+gzOBzi0arWAv2cJyw1WSTarYyWWdGPVxcPEUw4kNT19ei/fZS63QicDgUiHvZCvQ+n/4NLkvB6wyedpEQM7WZBD11rBUIki29Oh7/o+FyPt+eJAAI0Y9HsBBTUu/nPjDdlQZZ5WRxKpRnXEXkqMklmby3BmsGQX/hYXxQuQaZYCfyGcFv1y5L4Pt8y0WDAJ6w7JZMFfMz3OPSbAee/98PVD7Mr2mhL7HFXNsWC2TAdPGFXcNQOLtz99QYx5t0XDAC4wlVWkuRwCPd1FWiHPiiY5EFQkr1pOhz62SDdbi3JUedWJFDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MqSSlNPhqPKtDtDp4iU/aYeIKpykGXMgt407DFH7wvc=;
 b=XQcQNgpRTR9jlych9EoGquBx8kgV+GmUrzl1NAz1DQzGNhzjTasmPp4vcDIImvbmxv74ooOG9/iVIfQLjo5mRRRBZseBWiZyc1UKbkR78VwBvgzUw5EnnIA4zXntkL0xAtBBRz6hXiYB3AQH90tRx0Dp6sky4gLWNhyFmDAX6U5m6UHHqVg1obhelAKp37a23hvv4oJN/3piSglK8pV6ZaoZ9YzyvAJ0Z0U/rBd6JenfjRUFnijsdvDLhCsECjiSJy95IKrvR+Da17BM6TScPHP2KPDAyse8GNWDc6B7KL1rZM15fRxUKVNwU1Hmd8dOA3FINrtYWG/muTF0liLNiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DM6PR11MB4659.namprd11.prod.outlook.com
 (2603:10b6:5:2a5::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.18; Thu, 7 Aug
 2025 12:29:01 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 12:29:00 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Lin, Charlton"
 <charlton.lin@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>
Subject: RE: [PATCH 05/19] drm/i915/icl+/tc: Convert AUX powered WARN to a
 debug message
Thread-Topic: [PATCH 05/19] drm/i915/icl+/tc: Convert AUX powered WARN to a
 debug message
Thread-Index: AQHcBdvVCoaP7WQ+zUqAlYhDY7ACQrRXIdhQ
Date: Thu, 7 Aug 2025 12:29:00 +0000
Message-ID: <DS4PPF69154114F0F53DDEDBC948CC907A3EF2CA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-6-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DM6PR11MB4659:EE_
x-ms-office365-filtering-correlation-id: 1fa51e6d-c323-4279-c176-08ddd5adfd12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?QnYvQmRBT3U5bmFDNlh4OCtjTDhHdmRnWno3NkRMNWlYWDdSY0J1WEdBZWtv?=
 =?utf-8?B?MkNWN0ZFOUxCcHBNQU9IZEJoQnpjWlZ2aDJFZHg0WjFIdDFDdE1HTkJtaXps?=
 =?utf-8?B?dHU1UVFOODBjbjVIaExoWU5nQzVpdnNIbmVhT1FsTTdMUHVNZmJkd2lSaFNi?=
 =?utf-8?B?eUpUamM4TXVLVHNwYVduMFZtV2hPZE1CNHl3cG5rRUk3bEZGTkdFZVkxV0NW?=
 =?utf-8?B?WHlwRlcxeDJqeFcyZWpXbW96b1B1VHVtL1dkNkpMcUVqb0FYaGxyT3pGOEU4?=
 =?utf-8?B?YWpZWmRUa3ZjUThnNHl6Q2k2RkNlWDFPdVhmWTNQYm9lSWRqdkYwbnJUaFBC?=
 =?utf-8?B?bC9PZ0J0ckVZQWQwSHlWZHdpMHhvc2o1QXdTTXEvV2dLaVJ3NkJaclh5SUda?=
 =?utf-8?B?RGRpVFF5WmZwM2I1bHpmUjNmTlVEWDFkdU9XYmgyblIxOHVBbXZsdGNPbEZu?=
 =?utf-8?B?ZHlyVXRUZTVpS0Izc3hjOUxSRDUyay9mQktvT3ppQWpqQmt2WlpDK294WTdu?=
 =?utf-8?B?aDUwQ3ozSHIramJHczVZZ0c3NHFENUdYNnFtUUJFUGFiNmVRbzdRdzR6bzBv?=
 =?utf-8?B?aE5YQ3RsUHNUaEJBY1dTOXNrMEZVQ3UxcGZTeCtHbE9HNjFVdkxaUFZ3Qk0r?=
 =?utf-8?B?L0grYm01YkdIQWVrVDdadVpEKzVLcllITjZ0WFRaNnlocTBXcEgySTA3V0Vm?=
 =?utf-8?B?TUh5U0l4QVpWaVh5U0lNYjB6bndsWVpKamx2RUF2d0RpOG1iMWFLbWVRcGx4?=
 =?utf-8?B?aFhocTdRbzkyaWxUS1h4V051K21jSzhra0t1Z3NBRzQya20rZit3R3FJSVZD?=
 =?utf-8?B?UzJReFR6MGRNcXVBQklBRDN4TUsrNXRvRXFnNlNBNkdWSHJkVzhVZVN3anZu?=
 =?utf-8?B?TGhrSFVPSm1BYU1KNU1BaXhpellLYmdKaWFxeEpnSjZkYlcySU1yYjhtQ3lz?=
 =?utf-8?B?OGVrNWQyKzAraE1BSHM4QkQzNjgzQVpWeThLNCtUNnM0eWw3TmRINFZBc0wx?=
 =?utf-8?B?ZVNjRHpDZWk0WENacDFqa3gxUDIvOHFnUElqOGJ0aWR2Mm11YzliR3VKMG0z?=
 =?utf-8?B?Y2VlcnBzZjgrNXdrK1l4R3M1ZDhkTUs2eHJqNDN3NEZsU0JvK0ZGQkVncUhG?=
 =?utf-8?B?Z0hwTWZjdmF6K1VPSnBVSS95YlBMam1VUHI3dDBwZ3M3dDZqRmRqeEU4c20y?=
 =?utf-8?B?WkdBMk5CWHV0R1NDdWpQRWFGbDhxcHVIZ3pPaTFCdU1KOHM3emw0dGtwbDFZ?=
 =?utf-8?B?NEdkUDBHUXBMa0RrQUZGQUl5R3dQMEh0djdkZ3I0V3k1OGlOc2lidUlVaW1Z?=
 =?utf-8?B?VU9DYmJ2V3NPSmQ0VlMvVHNvMENHYkhWMkZtbmRuQStyeDR5TXY3bTg1a0tt?=
 =?utf-8?B?dys4UzZVS3pOblRFeStqa056M0lUdW1pTHRDOEdPSmZDbitYV0kzRWZkUkE1?=
 =?utf-8?B?OGhVWDJ1RlBpa29YMWJkaEJ2d2diRXNrNk5ROHZza1pyS21wTjlKNEUrRk5z?=
 =?utf-8?B?Q1pRK1Uwb3hTaTRYcTRHUjNpZVNMcUV4UlAvQWlGeFB2US92cndsejJJazBo?=
 =?utf-8?B?QllTb2dLcFQvY3FuN1pUOXJXby9UdktuYTZ6NW1tU3dLK2RBMGZQb3hLSWE5?=
 =?utf-8?B?Q1JyNE1KemVUV0hLR0NMWG5mRnRPKzZPQmFQN0lNN3laNTZMeE5lYWxTenFJ?=
 =?utf-8?B?Z0E2WWlickJzOWNUQkFudG5MejI1RTNTeHc5eCtjTWRGcDM2cTc1UnJKMUFV?=
 =?utf-8?B?dTVVeEFHOXJuRk11Z2UrNjJpVFNqRjB6M0w3elliSHZ4SFFJRVNrUG1YRnMx?=
 =?utf-8?B?MWphRUdLUEJqOWRaUmtXaFd2RUtGL293N255WDZKbmwyYkl1TTltR1ErVlFL?=
 =?utf-8?B?RXdDOWc5OFhJSyt3TGpOQ0pRWXFOVCsyVDVKZTA4dWxZZG1SZmxvUnhwZGwr?=
 =?utf-8?B?dVpHQnBGTW9yL3dWa20xaGQ2ZHV6VkF3WnNrYzd3eHplak8ra0VpMVBiMTc4?=
 =?utf-8?B?bFFGd2YveTl3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bStTa2NtNHlvVjVORXJabTRFS2FHTXhpdGZ6Z20wRW91UUNZcmo0UDNNc0NR?=
 =?utf-8?B?alIxQzE0QmZyUTNGc2E2WG9tYnEvclBueWl3OHkxSEtNZWZRZXJwMkE5bkJx?=
 =?utf-8?B?Tzc4QkpsKzg3bDljN0x3UjJ4ZmFKbytmMldiMVJQMWVpQmZ0Rlc4WE9VTG54?=
 =?utf-8?B?Y0M2VkhLRjF2dmVXVy95R3VaMFowQjFpVkp0bXBnTTN1WTRBcEVQcllNN0tO?=
 =?utf-8?B?TnM5QnVmOWJIVElkZmNVd0YyN2JackpscklvKzkvNVZ4aUZiTDFlaVhHeWxO?=
 =?utf-8?B?ZzJ0cW9RK3o0WUl0T09iR0dDTU0ra0xxOW5iQ2xUUVdBeE45d09RaVlHRTZR?=
 =?utf-8?B?MnMrWHJUZDBoTHFJSGR4d3hnc0txUm5MNkhIcElubzY3MzdaZzNGLzAxaXU3?=
 =?utf-8?B?SWxsRFY0RklrMk4wYnpFYkRkVThScllsa2hFVmNNYnZTcXdwbHNDOHY3U2lD?=
 =?utf-8?B?RlhyWFJ0ZXVhZWhmU3U1akNPNCtPRDJSeFF4M0ZMdkpnMGhIR0RPNThmcGNq?=
 =?utf-8?B?SHBTYXZRMlpsNzFyR3pFbWhkMWxTZ0FKbEU0ZFZGZXlFL1A2TTQ1RC9rWVpC?=
 =?utf-8?B?QVkyNTRNMzUvQ3VvWVpYWGRaY1FxcnY3Z1FDeVZ4KzdWTG5mSHU0T1pieHdk?=
 =?utf-8?B?bTllK3dVRXE4UTlvTGFrUTdBbmsvSE9kbUd2T2Zqa0g0VFpNTGhmWStMN0FO?=
 =?utf-8?B?b1M4YkdxU0pIQUFwcDJHT3EvVlQxV1UrdDFnb0JKZVZ4aFFqZkpEdk9vUEhC?=
 =?utf-8?B?eDFIaTFScFNjbTZsMllFV0g4UkRvbGx2QUZqNlVtT203Qll2ZEVaRVlVK01M?=
 =?utf-8?B?MTdEWFJ3VXBkMmdKRFp0Mldqc2VScENNZUVkeUNKcFVhT1V6UWpoVncxUDBs?=
 =?utf-8?B?K3VESy9rVUhwYmRnWVlsZGdyUUplM1FyOFg0YjBlODhlaTJGR1hLU3JScHZ1?=
 =?utf-8?B?clJ4dHJsNkswVE1LTVgyMXpSYkZqemZicXVaSkZjc1c4ZW9KaUwxaFJUZ1hO?=
 =?utf-8?B?VFI2MndVaUZVQWJ0MU42WWxlVWoxL3ZVSE0vREMrOXlodWZVTms0RUJiamFY?=
 =?utf-8?B?elhDaW9YWjd2cjl6ajVGSVBhdnNxdGkzakszdlo2RWhkL3pta0xwOEFnMU0w?=
 =?utf-8?B?UHlqeElBUVRaSTNlT1UzQmVBdVgvYzI0SE1OWTcyTGthdUNqMkZWc29aVzkx?=
 =?utf-8?B?Zk1nT1J0WlFVclZ5M3Y5c1ROSHhTczB2VzJHTnpsNTI0dEhJd2ZKZm02R3Bm?=
 =?utf-8?B?Ri9aU0QrazZwaWlZYmJMYTlOMVpXTzBMcmZPLzdDSmZXbWNrUm5hN2dmeTNY?=
 =?utf-8?B?YkFMZk44R3lhWmVYTHJGUHpTTCs0N25uLzdxMzlNUVBqd2tJamlIWjZYZlE0?=
 =?utf-8?B?VkhXVWhBL0hxTEtyNnNIUHlRYVpxeTJBSXlQSnFmWTNnZ3c1MVpxcWpWcURB?=
 =?utf-8?B?bno0c2lEWlRkQmZ2T2taUGFKZlhzb2JHT3MwaWFIUk5XcEwvcWI0VGYrdGNR?=
 =?utf-8?B?czlycS93NnMvekdaVzMyZ1Z4TWxvWG9NR2VucmUxK1NlU0hrVGRCdUUyYmR0?=
 =?utf-8?B?SFRWQWV6WTFHU2U3NEF5VDBNbjhPVmlsL091eTI5SVQvOWg2ZFlyR2l0bzFB?=
 =?utf-8?B?Y1hOcytFZ21HMWxkYXg1YXJveTZpeEJ0ODJVVFJHVnFYd3Z4bzNFcHAyTWU3?=
 =?utf-8?B?Q1VBMVdXcXAzbVNrM0I1N0MzTEFkRmg0UTlMenFmV0k3eGxlWGpVK1RTVnZJ?=
 =?utf-8?B?VnJ6bHdsNHJyVU9HV25SbzQyT1gwUEg0U3ovQUFCVC9xcE12bW5RbHBJZDNF?=
 =?utf-8?B?NnpzT0Rabzhjeng0SklvdEJWSTk3QmpkdWVSeUZLOGtCQ1hYS2l0aUM1Sm9r?=
 =?utf-8?B?cDNqYlBrTjJqbDVjMVJlSmZZQmpUczFmYTIzalFsZ3JFUTFzaWVwTlh5clNz?=
 =?utf-8?B?Q1JKdHpZS0RPN1pqSm1JSEUyRnJ3bjVkeVVqaTdGTkljOHRabXovWWNweExU?=
 =?utf-8?B?RjQ0ZHBoSU9HSmppM1ZEVnRvTHY0alpsa20vOGplUEVsZ1dPSXBjaHZ0YUZV?=
 =?utf-8?B?VlpwVFhOdHN2ZCtzUXlxb2tpa3NSd0taUW02QXZqVzRVKy9FTFVjQXhxZTg2?=
 =?utf-8?Q?VvR7mufZdgEiSpsL7btdnecoP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fa51e6d-c323-4279-c176-08ddd5adfd12
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 12:29:00.7923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hA8MPaBq9Dau1r7c8Ilplr15pvChikR30oONPH+N32ThtBfWuVZy0vGxzbNYd9rmeMK5LMpiDAGBQdKotKjl4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4659
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCA1IEF1Z3VzdCAyMDI1IDEwLjM3DQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc7IExpbiwgQ2hhcmx0b24gPGNoYXJsdG9uLmxpbkBpbnRl
bC5jb20+OyBBbG1haGFsbGF3eSwgS2hhbGVkIDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBbUEFUQ0ggMDUvMTldIGRybS9pOTE1L2ljbCsvdGM6IENvbnZlcnQgQVVY
IHBvd2VyZWQgV0FSTiB0byBhIGRlYnVnIG1lc3NhZ2UNCj4gDQo+IFRoZSBCSU9TIGNhbiBsZWF2
ZSB0aGUgQVVYIHBvd2VyIHdlbGwgZW5hYmxlZCBvbiBhbiBvdXRwdXQsIGV2ZW4gaWYgdGhpcyBp
c24ndCByZXF1aXJlZCAob24gcGxhdGZvcm1zIHdoZXJlIHRoZSBBVVggcG93ZXIgaXMNCj4gb25s
eSBuZWVkZWQgZm9yIGFuIEFVWCBhY2Nlc3MpLiBUaGlzIHdhcyBvYnNlcnZlZCBhdCBsZWFzdCBv
biBQVEwuIFRvIGF2b2lkIHRoZSBXQVJOIHdoaWNoIHdvdWxkIGJlIHRyaWdnZXJlZCBieSB0aGlz
IGR1cmluZyB0aGUNCj4gSFcgcmVhZG91dCwgY29udmVydCB0aGUgV0FSTiB0byBhIGRlYnVnIG1l
c3NhZ2UuDQo+IA0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHY2LjgrDQo+IFJlcG9y
dGVkLWJ5OiBDaGFybHRvbiBMaW4gPGNoYXJsdG9uLmxpbkBpbnRlbC5jb20+DQo+IFRlc3RlZC1i
eTogS2hhbGVkIEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPg0KDQpS
ZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgNiArKystLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IDE0MDQyYTY0Mzc1ZTEuLmRl
YzU0Y2IwYzhjNjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Rj
LmMNCj4gQEAgLTE0OTQsMTEgKzE0OTQsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfdGNfcG9ydF9y
ZXNldF9tb2RlKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YywNCj4gIAlpbnRlbF9kaXNwbGF5X3Bv
d2VyX2ZsdXNoX3dvcmsoZGlzcGxheSk7DQo+ICAJaWYgKCFpbnRlbF90Y19jb2xkX3JlcXVpcmVz
X2F1eF9wdyhkaWdfcG9ydCkpIHsNCj4gIAkJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFp
biBhdXhfZG9tYWluOw0KPiAtCQlib29sIGF1eF9wb3dlcmVkOw0KPiANCj4gIAkJYXV4X2RvbWFp
biA9IGludGVsX2F1eF9wb3dlcl9kb21haW4oZGlnX3BvcnQpOw0KPiAtCQlhdXhfcG93ZXJlZCA9
IGludGVsX2Rpc3BsYXlfcG93ZXJfaXNfZW5hYmxlZChkaXNwbGF5LCBhdXhfZG9tYWluKTsNCj4g
LQkJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBhdXhfcG93ZXJlZCk7DQo+ICsJCWlmIChpbnRl
bF9kaXNwbGF5X3Bvd2VyX2lzX2VuYWJsZWQoZGlzcGxheSwgYXV4X2RvbWFpbikpDQo+ICsJCQlk
cm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJQb3J0ICVzOiBBVVggdW5leHBlY3RlZGx5IHBvd2Vy
ZWRcbiIsDQo+ICsJCQkJICAgIHRjLT5wb3J0X25hbWUpOw0KPiAgCX0NCj4gDQo+ICAJdGNfcGh5
X2Rpc2Nvbm5lY3QodGMpOw0KPiAtLQ0KPiAyLjQ5LjENCg0K
