Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IQ7MEH3C2o3SgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:38:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF5C5777A7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:38:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20F1A10EA52;
	Tue, 19 May 2026 05:38:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wxfp0X3j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C02D010EA52;
 Tue, 19 May 2026 05:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779169086; x=1810705086;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B1kUU4ywoRV11asnfpyu2yZHX826dabYF00vIgXKGn8=;
 b=Wxfp0X3jRPYWfcxQ55PlMFc2DDRSECtbCWyY3EqcZJbClh7H3eZl+EtO
 Hz5QZAgx/0/FHheih471xX6S8ylZ23Ak9oplRwKxeK5ZuGTTmFIzvmx3B
 mhI7D6P3EZ1PMkDJRzWXrEy5jUJG0Gck8UFTMhjM8aqxnjU8ZSNO5Y2D2
 F+Pw6uWXQCc7aANimSbEWY3CA+tGJHZouQKa1arQFJgTxqRzIS+2NC2bI
 hJF+IAoPDHSQUwwzYbkGY/6TDKvXeWMrsBKXABZlSZWDofeHecmN5UqIA
 wDTJ7bfbobyePsRlYg6GNRbCoXHJjUgm2Cb9UZHlOx1sV2p61rwDnnji0 Q==;
X-CSE-ConnectionGUID: zpPl2ouIRwGRJoxkRO+pbw==
X-CSE-MsgGUID: hjAl81OSQU6IKVHvVZ/USQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="91500349"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="91500349"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:38:05 -0700
X-CSE-ConnectionGUID: OdRMIclxRAqwZk8CPxXNTA==
X-CSE-MsgGUID: sarNKTdKQRC+8ItKixykfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="237036802"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:38:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:38:04 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 22:38:04 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:38:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AaFznGRdwTlPOnCwDEXmpwDdmbFXBkBK4Edj68TvATfplq3zUFi6pybfnx1aTegQBoNT6E13/vf4OqRPTCsqPAmVlijEvf7/YKJnIdkpL767ps+1h4U3lcMPhfBw0s6jBU64w7fxXUq4jf3I8S7/20ys/uUVBuDESZXix5Z447IldLoJEvXmmv6V/GFoRC39S/aKeDeCDhNc/tIQqpkY5IQrdjioxsKOqZGrnKoU4JrMh7M8xJEoMjdIyHQhRXm1wTl0fXwJOAzcPBcQYJKHyrXLTPOe7ZWafxVrEIymfD2OpifIQE4KqtI8qjGHx9cnVKt87Zzv/Bf9gD0CIcGxmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B1kUU4ywoRV11asnfpyu2yZHX826dabYF00vIgXKGn8=;
 b=Kw2UaWWa6XdWTjfY0t/9flOt417YYc7OYEIEGZqg54+Xz+w6r7aXsD40AvfWfgfnihZmc5ugxWsGGhH4mppkJf6b7ixM8SvdCCm0zOrrd4o2jXxH7ZPGE78XT1zJTQn2FyXM2948VBgVZXIkY3MxQZJXd8y9HbOq0itjbhK77tXGDITiTk69lMcvpNjKPz27MTnFMJiLTlDvJixF40EjzUv9RgXJ6uAFmVvEBtB1c/ZecsQ/HEKSgHRMo/14K0btBXF0m9VERE9j//p7RrNQ3nR+G11mSlBRdBY6H+LaOe6yTHJvolj7/uGiBToNDGNpZQysT4S7OUSsIshpdrug8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB6552.namprd11.prod.outlook.com
 (2603:10b6:8:8f::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 05:37:56 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 05:37:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v3 11/31] drm/i915/bios: remove VS/PE-O warning
Thread-Topic: [PATCH v3 11/31] drm/i915/bios: remove VS/PE-O warning
Thread-Index: AQHc3cFVr8TMSj1uU0mK9E89RrYW77YU5ybQ
Date: Tue, 19 May 2026 05:37:55 +0000
Message-ID: <DM3PPF208195D8D838AE6580F63C71F616BE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-12-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-12-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB6552:EE_
x-ms-office365-filtering-correlation-id: 1acb5225-7d08-4578-0da9-08deb568c762
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003|38070700021|3023799003|4143699003|11063799003;
x-microsoft-antispam-message-info: an5bLmwkbH9dUN/eYBeSWtR6Bwg1c72GdVi27UljoOefW8KiDLWdpouqdq26NGlN5RfQyGbUay9+4ZNZ3kwQ9LrOZmDM+/cEXna9AWdnVHU/F+gAzqmSz6ug91y7wYUPSm1Cz543k/OyPWFzR7tYmypi+mBYKFGz3HaUAVfSdXofZlVvhs3w8iNF7L1Vy/tL2L2zNjgg2h6coIxOSLoooQML2jwNMd6kFHxGu2/Mft8s3cFgT/1lXnSX2QYkLuE8DoykxfCtCtf2kim4cIG11PcmMv/n7cs1qwFa4/Z4gtCPE8wb4HaYulYsMGAK+B0NrwW3Lw9VSXwsXHKYelCtPviISujCKFpsSD53sdCB1BPITxHZ7bBvUgj20ZZvHVkiuNdHiKte5xXEqfYXPYeZ2kKxnn1F5r+tzsBh/BqS7vgz4xndP0FBg13LNmA8fMSZoudM4UleWnXXvu+Bz7H3DevkGfKcxqZQ0KA4WTjGz5des1wb6I6gOJnMrxxy2ba0iKIZ9TQEqaZwrzwMVFtM5X51LJlfEZ2Hdgql23F63TcQgGxkSa61v9aVXHjwBoII7RfRHzqLIZv4s5hNkhJ9QFBN8GfcQi3FohIOugUVH5bypfrNPFG3LD9o8UrKRqpsI8GrxUC3HJ+cwqtFIdoR5h66nslYhb5wR4hVb4rVv5fBNjEYY4BSyFAQZUpDhvsFWkhPoFP2uUbLlGWqb7+2i+kpfN0Pfoontx1uOpsydYQfi7pQl/lQahO7W9O0qLpN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003)(38070700021)(3023799003)(4143699003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VnFqakUzMG5WcWtSQjkwVGxrNm1zVGRyeTJSZjNtTGRYU0MxT3ljV2xUMTJJ?=
 =?utf-8?B?cGZTOURHSytpbWtIWnJyWnBMOExwQUs4cEpVd1hzQ3BmL2Riaks0WnJnQ3Zi?=
 =?utf-8?B?Mm5ydXdBcFdGd3dCY1Bla25hcjlrdDVnZ1JCK3VMSFNRWml1ZVpNQmx2blY2?=
 =?utf-8?B?L09IVHZzZ0JVUklFblo2VTFWWHI2UXR1ZERIZXY1Mm5ydnUvcTM1dG54cXV3?=
 =?utf-8?B?Mm1HZDNWbHA2ZDRyUExrdCs1VnQ5bzFYTUpGZUpBcHZCY2pZYlNwTkdPVkVT?=
 =?utf-8?B?eHQvZGtvTEVnSnJWZkV5QXJzV2ZxSjB1M0NZcEduUGNPOTlwOXhLcjFneDJu?=
 =?utf-8?B?QktrMGFZMEZYQzVLQm1ub3pWWU1xd3dHRXlOcExxQWpydXZ3T2lRT0tYY0NT?=
 =?utf-8?B?UnlUaU5YWFZmbVoxMnpESGRmTHk2UHNyZWZDczU4Rk1sQURGQWVLcE40dkVu?=
 =?utf-8?B?SzAyYzdwWk80Mjl5WWFOTmpaWE1GeVY1bnFiRWJjZ0RBTTdrbVRQeWZJSVNt?=
 =?utf-8?B?a1pqbDZVdGd0cmtkWjJJWWNnN3k4dzBGcURBaVBGdjc3T2krWEhsY2RCNWdL?=
 =?utf-8?B?NFdzU1ZpMEdVMCszNWY0NWQ1ZGVSTVgxMmNRa01hS3h5Q0tJV2xzT0phNDlT?=
 =?utf-8?B?MDNuK0Q2cUxVYmxVRWRwbXNtTmFCdHB1MTVUcUpQWWZ3cXNOVGtCd1hRZ0hj?=
 =?utf-8?B?QkQycWJEME92U0JWV2E1eStvZUJ5Tk9kVUZZbnh4RDJTNmw0TXRSK2NOUFMw?=
 =?utf-8?B?ZWFlV0prdnkrak93MlJPYUl5TXE1OCs2ZGxTeEw0TVhGMEkzQUYvUzZvR3F5?=
 =?utf-8?B?VnQwU2V3UDlBK3FwQ3g4SGRsUHlVLy8vOGhCSkVLYTVMcm4zN2hRa2lkMTFp?=
 =?utf-8?B?NEtRaElMTGxOblZ1SFpGN0ZzT0E4bXBOTTN6VDF6a29hclpyc3NISEtUNHBZ?=
 =?utf-8?B?UE5IWm1Ea2VRZXdUbkxqQUJ5Si9xRzBERWpsNE56SWNRR2h5clhtSHM0ZlJq?=
 =?utf-8?B?SjRXa2p5OVI5d1FzTGZSZWVtWkxOTUxtZ09RNEZrOGtSVlN2SjZOMHlHdGEr?=
 =?utf-8?B?aVdrc1FlR0dHSnBCNWNENTRMVnF0M2ZsV2s2cDJGVi9rbGRGOWZZMzlJM2dL?=
 =?utf-8?B?RUZ2QW5lcm5jMk1nb1FkZkg2bkg3UUFEVklTTlBoNVF0cXVra2RTY09RS3VN?=
 =?utf-8?B?TDkvNStHVWxxN1VaN1hvR1lpK3VXVVlXYnRLeVdGSnhqTTM0ZlA4ekVCUWRN?=
 =?utf-8?B?U21ERGQrNXJiOHJVeEs0SDhadjBmdjVKM0NFOTdzcHY1b1ZDaGh2WWg4Wkdl?=
 =?utf-8?B?MVYyMHNuZ215NDZWTTBWcU8zZ0E4RzIzRE1NR0EvelRHVVBzejRCdHl4ZFRM?=
 =?utf-8?B?d21FYUhCNkZOZTIydkVlbnA3T2l1bTFVaTg2bzJXckl4djBpdGRKQ3EwY3la?=
 =?utf-8?B?bkpZS3BicTBPQlNtRHVLMzVMVTJaM0x3SGNDMVZFWFdTR3RlSHNrQW9UWDUy?=
 =?utf-8?B?aVR6S1M3Vkx1aFQ1MVRVS0dXa0VGdUF6VnhyMmtwaDFTdTFvMnBrMG1EWEYw?=
 =?utf-8?B?K0FwRkR4ZGQxbmt5SXRBcVRYc1ZLdWJTL2hqSS96UmFVZG0yWUY4SmViTTVQ?=
 =?utf-8?B?SkVKM0hUMXJIcUZ3RnU3WnBKUllXZjNsc0xQRnVORmd6N1lvZXJsTTNvZkNq?=
 =?utf-8?B?dXJqREkvRU1QeFFPMVV5d042T29FVzFIQ0l3NFliSGwrYlA2QjdCTThqMTho?=
 =?utf-8?B?UnZMSDJqenQwKy9YRmt1ZTVEcWdZR1d6VW15c25uSVlYdHEySG5SZ2h6TXov?=
 =?utf-8?B?THd0WVFkVTNBR1BXaGFzUzRrUENwbG5Cd3NPSmZQZ2ltaStzaFRKYmF4MFB5?=
 =?utf-8?B?U2RoMVYyRm0wWEpEamRZUnFqSUVsVkIvcDFHOU9ta0J6V1VRT3Q3eCtROHFD?=
 =?utf-8?B?YVZIR09WZTBZMTNyOUF3SkpUTnRuQnpHcWpHQmNaQ3dBN1d3NXR6TjljVkdF?=
 =?utf-8?B?bnJqZ01rQlBnSmxZTGdDNU1PNVVGZVVFQkNndnEyQkJ6L01ONUF0b1l3dDBC?=
 =?utf-8?B?Z1NuM0V0OVpxcFVOM1B0SHZwbUtwblZPeEJoQndzSVQxS1U2dUtUWDhtMFR0?=
 =?utf-8?B?SzNZRk1peEtyWU1uclhlbUVyczl3Q0NUa25SME5qTjdWeXhGRFBrZkl1bmVH?=
 =?utf-8?B?Wi94Sy9CWFlzYThVMHpDZG1PS21TVWFtbjVYelIybFhSRkxUWXczK2kxVFJ5?=
 =?utf-8?B?TGxNOWxSdjBpVURVcERVeUliSFZQRTZmZi9ydWpocTNhU3U3LzJFS0ZzejZa?=
 =?utf-8?B?Q0RCbkxCZDgrbWF0WXV5QXJicGtScjg2UkEvTG1GWHFoZUFWM2tZUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gF7sUetIDRDqJuXmViTVr1DJ7Zb0ZIC/hg2WfAREzlNgJhjJ5Pw+A2ngEFxrLQSMWZb0r3qDyM6vcBoW2I7mrRdOgsmkdBfoJ48GNuoNhxFC/7BbKOHp4PVyO4Z8bCOAFLBC2hhEt6xJQTnsAM37coRaBR2aCX7kL477ovRyrNwTeoI+euUH0kUGNOyZF2B+pyI+gSvW0FY1QEot+Z9I1p9VjrW+nvpdr6izKyya3Zrdc1p4b0B0Goi6PHgZVBOjaIQV8Wu4y/qxxLqRNuoEWKN58QapxH/1Exx9bAAKpyl15k7iE7vHGbQGekeM8N44DGKZenXpzd56VTM470JetQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1acb5225-7d08-4578-0da9-08deb568c762
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 05:37:55.9187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cCODvLA4Dpr76PUKrUQGfYpnsYMTqHnU9MpgqdCrVicvY3Kn7VnD1EHlA6I9X+MeFabtIqJCZuFNhVupRqCQ0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6552
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CEF5C5777A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMTEvMzFdIGRybS9pOTE1L2Jpb3M6IHJlbW92ZSBWUy9QRS1P
IHdhcm5pbmcNCj4gDQo+IFRoZXJlIGlzIG5vdCBtdWNoIHVzZSBvZiB3YXJuaW5nIHdoZW4gcG9y
dCBhc2tzIHRvIG92ZXJyaWRlIGRlZmF1bHQgVlMvUEUNCj4gc2luY2UgaXQgaXMgYWxyZWFkeSBs
b2dnZWQuIFJlbW92ZSBkcm1fV0FSTigpIGFuZCBjaGlsZF9kZXZpY2UgZnJvbQ0KPiBwcmludF9k
ZGlfcG9ydCgpIHNpbmNlIGRybV9XQVJOKCkgd2FzIHRoZSBvbmx5IHVzZXIgb2YgaXQuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5ncnplbGFrQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8
IDkgLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4IDVmZjdm
MjUyNzBjZjYuLjFiODEzYTNkZmYyNDUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jDQo+IEBAIC0yNzY0LDcgKzI3NjQsNiBAQCBzdGF0aWMgYm9vbCBp
c19wb3J0X3ZhbGlkKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LCBlbnVtIHBvcnQg
cG9ydCkgIHN0YXRpYyB2b2lkIHByaW50X2RkaV9wb3J0KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9i
aW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSA9IGRldmRhdGEtPmRpc3BsYXk7DQo+IC0JY29uc3Qgc3RydWN0IGNoaWxkX2Rldmlj
ZV9jb25maWcgKmNoaWxkID0gJmRldmRhdGEtPmNoaWxkOw0KPiAgCWJvb2wgaXNfZHZpLCBpc19o
ZG1pLCBpc19kcCwgaXNfZWRwLCBpc19kc2ksIGlzX2NydCwgc3VwcG9ydHNfdHlwZWNfdXNiLA0K
PiBzdXBwb3J0c190YnQ7DQo+ICAJaW50IGRwX2Jvb3N0X2xldmVsLCBkcF9tYXhfbGlua19yYXRl
LCBoZG1pX2Jvb3N0X2xldmVsLA0KPiBoZG1pX2xldmVsX3NoaWZ0LCBtYXhfdG1kc19jbG9jazsN
Cj4gIAllbnVtIHBvcnQgcG9ydDsNCj4gQEAgLTI4MzcsMTQgKzI4MzYsNiBAQCBzdGF0aWMgdm9p
ZCBwcmludF9kZGlfcG9ydChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEg
KmRldmRhdGEpDQo+ICAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gIAkJCSAgICAiUG9y
dCAlYyBWQlQgRFAgbWF4IGxpbmsgcmF0ZTogJWRcbiIsDQo+ICAJCQkgICAgcG9ydF9uYW1lKHBv
cnQpLCBkcF9tYXhfbGlua19yYXRlKTsNCj4gLQ0KPiAtCS8qDQo+IC0JICogRklYTUUgbmVlZCB0
byBpbXBsZW1lbnQgc3VwcG9ydCBmb3IgVkJUDQo+IC0JICogdnN3aW5nL3ByZWVtcGggdGFibGVz
IHNob3VsZCB0aGlzIGV2ZXIgdHJpZ2dlci4NCj4gLQkgKi8NCj4gLQlkcm1fV0FSTihkaXNwbGF5
LT5kcm0sIGNoaWxkLT51c2VfdmJ0X3Zzd2luZywNCj4gLQkJICJQb3J0ICVjIGFza3MgdG8gdXNl
IFZCVCB2c3dpbmcvcHJlZW1waCB0YWJsZXNcbiIsDQo+IC0JCSBwb3J0X25hbWUocG9ydCkpOw0K
DQpJIHRoaW5rIHRoaXMgbmVlZHMgdG8gYmUgb25lIG9mIHRoZSBsYXN0IHBhdGNoZXMgb2YgdGhp
cyBzZXJpZXMgb25jZSBldmVyeXRoaW5nIGlzIGltcGxlbWVudGVkDQoNClJlZ2FyZHMsDQpTdXJh
aiBLYW5kcGFsDQoNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9ydChzdHJ1
Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpDQo+IC0tDQo+IDIuNDUuMg0KDQo=
