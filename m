Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7459FAFE1B0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 09:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0427410E043;
	Wed,  9 Jul 2025 07:59:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gBMso3Sx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACDF710E75B;
 Wed,  9 Jul 2025 07:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752047958; x=1783583958;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vN7R5dBxnxzH+DM3Bu4DWvQjveFWUPIFfC8yCJUwfCY=;
 b=gBMso3SxaS1rM8lYCXw8jzggkPJz4lrZa+b1+vBaJCPuvIj9+EyJXjln
 2I0+p/4tO8+7hnvE5OuzNgaMgHs0+FDMVu3mkZ0WP0app0/fywKmI5C9x
 mX6nhE4qjUBdd9DKCKpw2W0u0U8AMnnUbglsWVsUsDaDBMuIi1XKcKqWD
 UQ9IOlLmcSxYPJol8j2bItBWX2IFtl2BQyr9uB2KFSrPyEKZIfeIxQsWg
 2hS+CbporzwonJ+xFoQj/vvcZ2XRHNyRc/b+Z3eIaqsNxI1HzH3sGFBle
 12QsEGZ6oxvcjdiKoV2HSlTplDKvWafWlZ/7BBDUDMjcTMZvPUckxujW7 g==;
X-CSE-ConnectionGUID: 3/1K5GYCR7KcnsGhdiGdUQ==
X-CSE-MsgGUID: IVIy2IqnTHeZysBXtZ/Eqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54229325"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="54229325"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 00:59:13 -0700
X-CSE-ConnectionGUID: TAKUh8jkQaCxXa/vTHEF6w==
X-CSE-MsgGUID: FOY+Ar4QRRCj4SjQ4dC0qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="156190027"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 00:59:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 00:59:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 00:59:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.51)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 00:59:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ht9+iHVPXoMDB/SV5FSy0xmPa5lfet6rCLRU7cP5cAN5Nwderg2tjWo4To6bsiGyFhm1crHqrT6zB0ZehfV/Gpf66fEpu+KyNnEMrSZM0YX7De5WnwGChEIVg0umwsGKPm+hg7aMTCadZda0JXLH3KGXgz5fJUiqezFlGIXVLaINpmv5HgW/8Jab+lO/nbYo1HwIW+wIOd8AJJJOWDIXJqM5nLWHwSGZIZVcWqsr5krn2AL3FxD5ZG4eVfr3OqhbOWxoKyTVdiNkEcBzMdU6TAcNAc5KUXpYCsz7OV4cNMaQOef9m+eTDwIHWVDsF8QAnep3GDZRYDMfBSpdACMd8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vN7R5dBxnxzH+DM3Bu4DWvQjveFWUPIFfC8yCJUwfCY=;
 b=UvzjM66b2O84Qxg3iGVQHYyzKwpH8P+PVHiepkeu6BCO3SOCJpgH7VWnb828WvnAPjU4gdDy2t0Xkg108WUTuiYG4Cxp74i+BqQUhkh+vxaQg1Pko0A1gUtvA+fYxZDInNYf8SMT85fY0qJtD73OniiwtsxDnDdmmPfz+TRQA5VMhw63hqUfd080RzZKO8btbjEN8tnxvktz8T33GRR2mIM1yPxEnuw0x+KznfRf8X+FSJVMPAWCqtOhP1xsc4PC4zoeIxJdFwKVRovOZrOZH4gzkLpOGAlfah1kV+M3PnwmYoZp51PC2qqfZpKCWY+j8UcfP8wJ5b4UdoJB6e9MJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS4PPFD24E991EC.namprd11.prod.outlook.com (2603:10b6:f:fc02::52) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.29; Wed, 9 Jul
 2025 07:59:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8880.021; Wed, 9 Jul 2025
 07:59:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2 is
 disabled
Thread-Topic: [PATCH 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2 is
 disabled
Thread-Index: AQHb7yyaDHbflHFMOE+wDRhHoEWYAbQmwauAgAD1OoCAAPWVAIAAw9+A
Date: Wed, 9 Jul 2025 07:59:10 +0000
Message-ID: <fb90f82eb7f45d93c181c64b308cdd77979667cb.camel@intel.com>
References: <20250707104733.1874797-1-jouni.hogander@intel.com>
 <20250707104733.1874797-3-jouni.hogander@intel.com>
 <aGvhRapKppSGxbCa@intel.com>
 <d97d56076845e8c728f19c1f0db429e97ac26656.camel@intel.com>
 <aG18_m9rQfM2Zbbh@intel.com>
In-Reply-To: <aG18_m9rQfM2Zbbh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS4PPFD24E991EC:EE_
x-ms-office365-filtering-correlation-id: 987e7288-c1b5-45da-d958-08ddbebe7ccf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TzdCYnBOK1hxcTRSOFpvOUJySHFhSHVYbzRqL2JETjJpQitEbk1ZckdjYlFF?=
 =?utf-8?B?ZUxjK3Nud0o3d1FIOTZFcGpGSDJ3TnNsd2M0T2lwZ1FyVFVpZWpyTCtTdkkr?=
 =?utf-8?B?b3ZOelp0OEhPVFRmbkNhbGJQUk4wajNVUUxkTCtydXZGbXNMUjNhR2paVFJZ?=
 =?utf-8?B?cFJMc25qUlhTTC9qOXpIMXlXUGVrZlJGUzVQSmJkckl6RUN6V2hVOGRpdklC?=
 =?utf-8?B?V1J1SzZqVHJvdmN2RENrNDZYZ2Z1VHF0SXQwMUREYUlqT1NCUU5SMUV2ZHIz?=
 =?utf-8?B?MlVxcTZzTzU4cXBxN1NMRzlvTTVTWGtBeWhGQUhWc1A0KzBISk5nQTZSSDBJ?=
 =?utf-8?B?ZXpTeUNDZVNKbGhNbXV3UDI5OGxBQjlqUzBkbG1WOHdNUFhxTTZBUUF0ajhY?=
 =?utf-8?B?Q3V5dnpjNUppUGJ0NCtUNlk3cHJXN3FsbWowNVdlYkVucjV3TjlYaE1uMElv?=
 =?utf-8?B?WHlWeVA2RnMvd3h1cUhqV0YxajFDditVQW1QMEJkNGFlWnIvbG9ibTFmVDJo?=
 =?utf-8?B?MC9KM0l2Nm1NclFNbkpCdTZFVGlNOXpIWXlwVC9PSEVMM1FzdHJDQmt6MzdB?=
 =?utf-8?B?b1h4OXRBZjZoV0hieDUrSEtwVTkvUmE0QWFwTEgzcWRqbk84QnhmMW5QRzhN?=
 =?utf-8?B?aE5aZHYwY25iZ1RhV2kwZW9PTUhQSFJxQW93K2Jxc3Y0SFViSlRiTnBseDhZ?=
 =?utf-8?B?WmNPTWxlUnhqKzBUY0tvOXdwUjU3ZGdQR3FwK3RrbElGa1FRazI3aGtjcWN2?=
 =?utf-8?B?NHJOUGF3VU1wczg4TWg0YStkbWdCdE1nSXBPcURhbmhIYUlkTEhQeEpaRUt3?=
 =?utf-8?B?NGg0bGJpcnc5VGt3cGU5bXZtbEhxQnNGbGtPcVhjMHg0ck5tMDAxcExXREVB?=
 =?utf-8?B?TTF2MlFOeHVGQjBJcDJCNEdwS1ZqRGdpOW4rMzUybFNkSHZaME93b3lXTDJr?=
 =?utf-8?B?YjIwUkhoZkYrVEgxY1RxV2t6RW14ZnpNWnd4UW5NYmdZU0loWnZuTnJhRkd2?=
 =?utf-8?B?aEd5b0xXaEVSdlhBZUJhd0x4ZWI5S0JtQUtzemZtaHg3NkZCZDVlSGFINlVl?=
 =?utf-8?B?emRVRkd0WjZ4VzNTK1RwenYzREdSZG5UbENKaGg3bk9HelFBWW1mbVZuMExM?=
 =?utf-8?B?SURURWxEU0UvYTJuRWdYVTZuejhxNkNMUXhiK2dybWdySlFUa2dyUFozRGRC?=
 =?utf-8?B?dFIwVTNidUI3cE1SSU5XUUdPU2ozKytMZyttbUE1ckFibUJNSjBLcGdNeFFE?=
 =?utf-8?B?WWJFWUFTNURPeXZYVDRoMTB0Nks1SWRHekVhSTVKemdSVDRpanJ2dWhvMWFF?=
 =?utf-8?B?R2c0eG5HQTZRZ294QW5uK0JrYU00NHpQQzRxbWhxRkJscXhEOUl5Q092eGhC?=
 =?utf-8?B?TzhzT2dWOVM5YktCUEpyVTdQcWRsenBzMllSeUo5SjFRMzduNTJpT05IdUVz?=
 =?utf-8?B?czJGU0FjNTBoanFTZFZGOHRlQlVCQXNEVmxOZzlrRHl4K1QxaWg2Y1ptYUNx?=
 =?utf-8?B?OVRSaUVrVVNDdFJmR3JwemRDb29LRmVzT3YxblZhWFhTVGQxSG5OY2h0MkFm?=
 =?utf-8?B?ZG9kUjcvekM4T3BzN3FXdjhtMmVPOTVwU0lvNE5RTFU3WTZ2TmtlYWFCaXdM?=
 =?utf-8?B?M0hnYzE1VHJVaUVWS0w0TEdzb0U4M1MwRVY1Y2d0RHdIQ2ZIN1Ixc2hTRXIv?=
 =?utf-8?B?SE1INVpyeUQ5aHdidmpVbDM4dXp6SVVZaS9NUE53VGtxbmRZWXQ3VzY1bXJu?=
 =?utf-8?B?emIwVitRelNud2NBWFF5LzR6eUJpVXdFZmg4WWNuWUEzUUdleGFmdFV4UVZD?=
 =?utf-8?B?MkROM0tSalU3Sm1QbmpTb3RxbUNyb1ZNR0pXcTdIZ3d2M2JGcFFjVnhuSVNZ?=
 =?utf-8?B?V2ZWTU9IYTBBOE9vdmxZVmRpWWlEWXZRaEZuSEpMUWd3RHFrZTI1RUxjVkNE?=
 =?utf-8?B?VVJQdlJvK29vQUhMSm1UODNXRGhra0tvNzhlR0ZKL3dWRFl2WU51MndnTFFW?=
 =?utf-8?B?MnlnbHllQVpnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjBXeHV1NHFYbGRic1lJZFZDekhBNFo1aWtPV01QTVU2U0NtQmJ4OFNHbmJJ?=
 =?utf-8?B?ZzZ5Tm1oTlZFbVJ6V1pyRWV4Zk5BZTdhRjA2Q1NMRUFrL0N6ZmZsSEordVJ2?=
 =?utf-8?B?Nk1VTjZLUitlVFF4R1Y3VlliUGZiN015LzhaT3NNcnBvMmExanlHTGpNaEZ2?=
 =?utf-8?B?Rkltb2FmQjk2VTF1TVR2eDk0Uy83RCtJWXlCaTFzbnZyNHJreFNKZnUxQk1m?=
 =?utf-8?B?NzM0SDVUOGJGRkdmZS9FUnZZUUdPVlZqTE5GYmlHR2VlL2toNWlNMmdBMWNR?=
 =?utf-8?B?TmdaSGh4RHRuZjM5dFhxRFU2K1gwNEdXa2tKSXNhU0Z2NVZ0YlFtQ21GdWdh?=
 =?utf-8?B?UTRIeE9wOE0yWFkzRWdqYWI3ZE9MSmNoMXJVbjc0V3d6cmtraWdKQXVBeHVM?=
 =?utf-8?B?UFd5YVp1andsTlBOb0JkR25PU1BKS2dJcjN3K1VDSmxnRFpGUzVEMFBFcHdk?=
 =?utf-8?B?SXowL040Rk5rc1ZSZjdQSkhqOVdUVDd0L3B4UFc3NmR4WVFkYnhNWlJjc01n?=
 =?utf-8?B?T0Vva0pPZjBTeTBpQ1h5eGl0YzJDL2NsZXdOb29OTUZRM2luT3RzUk8zSlA2?=
 =?utf-8?B?UitWWUdJUndKc0wrNjVUaUJDbVQrUDg1Umd0cHRzMkczZ0JueUZJVEtHSzVp?=
 =?utf-8?B?SkFOQk80alczWHR3blVyUWQ2aVdQSklHdm1NQlRMVGt5NkRJTVI2WDhtRTRQ?=
 =?utf-8?B?WnZtcVBabjU0RHdDSEgyRTFxZjZ4U0V0aGxnL0x3YllMQjhEUHRsQzl2TWsz?=
 =?utf-8?B?Z2dhRmR3aHlCeC9ac3lJREZtRnVuU0ZUMHFLa21GQ2ZRaCs3bWo4L0xBUUFL?=
 =?utf-8?B?eDhKL2JINnhkVCtzLzdRSkpmZjR4RkIrdUE3S3BDRnM1OUVBNThLQzFQRk5S?=
 =?utf-8?B?YzZHem9jWExLTE8xWS9LOW1MdCtpRHI4L0RQbGRJTkNtWlpJZ2V2Uk9iQmZa?=
 =?utf-8?B?VXJ4QzE5K0ZJM1BuaWNtZzZKZ3N2Nm5mU2t4TjZ4OUNLUkJXZHV6bDF1WER6?=
 =?utf-8?B?a2tSRndRVlBCWUY0ZzBBS0RrYWxvNngvVGQ4RktjTXhySG9zOXV6bi9PTkVC?=
 =?utf-8?B?L1Z3YXNsemNJZ3dqbTIyamZtY0h3YmMza3Mra09lek5xbytJYk1VTkRkUXQy?=
 =?utf-8?B?NlBjbEEvMGZPUFRyYWlTRXRKMEt0NTJrc2dCazhYdGRLb3lCL1lJdDYybGdy?=
 =?utf-8?B?eERqdXdBRmpZRk5yd25PWWc2eU03dVVqM3RRYUFhN3ZlVmFyY21sdWphV2Z4?=
 =?utf-8?B?MERqL2xEaTVwOVlxOTUzbGJCQXlKc3Y0a2x1dG9QYU5kekJwT0lZcEcxT1Fn?=
 =?utf-8?B?TFBtcTVGbXhFYzVITU5zTHFzMmorbllONkZjYVFLYmxiK3V1a1VIRXpLZURN?=
 =?utf-8?B?ZVUveGl2QmdBK0pRc2pGSmdYMCttbmlGby9tR2tCbmdPT3hXS2t1OXR5OWND?=
 =?utf-8?B?enFMdW9CQnNqSFNGbVFkME5yVWhKM0tBWk9EMVpzN0ZDTno1QXNnS2ViaVVO?=
 =?utf-8?B?LzlZN3p3ejVBaFJRSkx6dHRGME1aZ1ZOYnNORWtzdDhSemtheHFLcldIQmN0?=
 =?utf-8?B?a09FMDg4MkhxWkNXUWlvY0l0UTNTU0NEVHpTeHl1RUFqZkVCeTZ5d0J5dEVE?=
 =?utf-8?B?cmkyOUpRZUZSeXpabEx1QXljTFY4Wm5WUVJQVWI1U0pQSG10N0kxTkZPTmhM?=
 =?utf-8?B?OC9EbGpnSWQ4Q1ZTdVFHVTJYa3pDN1p5MkNtbXJycWhMc3Q4RDI5RUFYSzVy?=
 =?utf-8?B?VzhRVmlJbUZ5dVFTcElpNjNqL0NFUTVUOEE3VDVYTElYYWJ1cUVWQ1pUbmc0?=
 =?utf-8?B?ZHI2b05JUE5FZVdsWWpTTEF6WUlIaDd4VnZGSEd4QzljTTN1UmttQkdZL1E3?=
 =?utf-8?B?WEtGc0tEdXVWRlM3L1pOb0RzY3pxSTV6TFV0OUdWTGh0SFJtWlRSNUZ2dVU3?=
 =?utf-8?B?ZnN6OFBDN1dWRHNCa1RJc2NUcVVlalVxVUUvaUZOeWoyTHpEMlNWSHhlM2Vm?=
 =?utf-8?B?MDVHU3VpSGZMZzFXV1Y0RG9Ha0k5cVhzK21ndlhGQWlWa2lvd3NhaTNXMGNF?=
 =?utf-8?B?a0dmSDNpOXBKZ2hxREV3VTZUR0VQSURkbS93a2cwQVVtZEZvOVBxYjRLRWRD?=
 =?utf-8?B?OWZYVmdEakpTZ0l4Q2EzSkJLT2xBMTVLK3hSRkpHVlVhN3ErcDR0T21YZGpK?=
 =?utf-8?B?VkpuWUZDT0cwb3NrS1lHU1ltYU96VHZtVXpuellsNVE2aXV3OUttcWh3YkFl?=
 =?utf-8?B?SXpDU1VLbnpPRURYMG5UTjk4MVNRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E596C01D51005C468D993890D6F17A46@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 987e7288-c1b5-45da-d958-08ddbebe7ccf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2025 07:59:10.3239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Stx7XYjh1o/vec9HY1Q11Rb8EbB3OW8vuN+zj33mi/oQtZv1ntRqpmac7zjZ1RfFQKHkzf+DP4Dn4/ABVoGLvxhazDDJzQHP8jGbYHklVmY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFD24E991EC
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

T24gVHVlLCAyMDI1LTA3LTA4IGF0IDE2OjE4IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFR1ZSwgSnVsIDA4LCAyMDI1IGF0IDA1OjM5OjA4QU0gKzAwMDAsIEhvZ2FuZGVyLCBKb3Vu
aSB3cm90ZToNCj4gPiBPbiBNb24sIDIwMjUtMDctMDcgYXQgMTE6MDEgLTA0MDAsIFJvZHJpZ28g
Vml2aSB3cm90ZToNCj4gPiA+IE9uIE1vbiwgSnVsIDA3LCAyMDI1IGF0IDAxOjQ3OjMzUE0gKzAz
MDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gQ3VycmVudGx5IGRpc2FibGluZyBQ
U1IyIHZpYSBlbmFibGVfcHNyIG1vZHVsZSBwYXJhbWV0ZXIgY2F1c2VzDQo+ID4gPiA+IFBhbmVs
DQo+ID4gPiA+IFJlcGxheSBiZWluZyBkaXNhYmxlZCBhcyB3ZWxsLiBUaGlzIHBhdGNoIGNoYW5n
ZXMgdGhpcyBieSBzdGlsbA0KPiA+ID4gPiBhbGxvd2luZw0KPiA+ID4gPiBQYW5lbCBSZXBsYXkg
ZXZlbiBpZiBQU1IyIGlzIGRpc2FibGVkLg0KPiA+ID4gPiANCj4gPiA+ID4gQWZ0ZXIgdGhpcyBw
YXRjaCBlbmFibGVfcHNyIG1vZHVsZSBwYXJhbWV0ZXIgdmFsdWVzIGFyZToNCj4gPiA+ID4gDQo+
ID4gPiA+IC0xID0gUFNSMSA6IHllcywgUFNSMiA9IHllcywgUGFuZWwgUmVwbGF5IDogeWVzDQo+
ID4gPiA+IMKgMCA9IFBTUjEgOiBubyzCoCBQU1IyID0gbm8swqAgUGFuZWwgUmVwbGF5IDogbm8N
Cj4gPiA+ID4gwqAxID0gUFNSMSA6IHllcywgUFNSMiA9IG5vLMKgIFBhbmVsIFJlcGxheSA6IHll
cw0KPiA+ID4gPiDCoDIgPSBQU1IxIDogeWVzLCBQU1IyID0geWVzLCBQYW5lbCBSZXBsYXkgOiBu
bw0KPiA+ID4gPiANCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoC4uLi9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmPCoMKgIHzCoCAzICstLQ0KPiA+ID4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgIHwgMjAN
Cj4gPiA+ID4gKysrKysrKysrKysrKy0tDQo+ID4gPiA+IC0tLS0NCj4gPiA+ID4gwqAyIGZpbGVz
IGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+
ID4gPiBkaWZmIC0tZ2l0DQo+ID4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gPiA+IGluZGV4IDc1MzE2MjQ3ZWU4YS4u
MWJhMTdlYTQwYmJhIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gPiA+IEBAIC0xMTYs
OCArMTE2LDcgQEANCj4gPiA+ID4gaW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5h
YmxlX2ZiYywNCj4gPiA+ID4gaW50LCAwNDAwLA0KPiA+ID4gPiDCoAkiKGRlZmF1bHQ6IC0xICh1
c2UgcGVyLWNoaXAgZGVmYXVsdCkpIik7DQo+ID4gPiA+IMKgDQo+ID4gPiA+IMKgaW50ZWxfZGlz
cGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX3BzciwgaW50LCAwNDAwLA0KPiA+ID4gPiAt
CSJFbmFibGUgUFNSICINCj4gPiA+ID4gLQkiKDA9ZGlzYWJsZWQsIDE9ZW5hYmxlIHVwIHRvIFBT
UjEsIDI9ZW5hYmxlIHVwIHRvDQo+ID4gPiA+IFBTUjIpICINCj4gPiA+ID4gKwkiRW5hYmxlIFBT
UiAoMD1kaXNhYmxlZCwgMT1kaXNhYmxlIFBTUjIsIDI9ZGlzYWJsZQ0KPiA+ID4gPiBQYW5lbA0K
PiA+ID4gPiBSZXBsYXkpIg0KPiA+ID4gDQo+ID4gPiBXaGF0IGFib3V0IGEgYml0IG1hc2s/DQo+
ID4gPiANCj4gPiA+IFBTUjEgPSBCSVQwDQo+ID4gPiBQU1IyID0gQklUMSAoUFNSMiBpbmZlcnMg
UFNSMSBlbmFibGVkKQ0KPiA+ID4gUEFORUxfUkVQTEFZID0gQklUMiAoYWxzbyBpbmZlcnMgUFNS
MShhbmQgMj8pIGVuYWJsZWQpDQo+ID4gPiANCj4gPiA+IChQZXJhcHMgZXZlbiBiaXQzIGZvciBl
YXJseSB0cmFuc3BvcnQ/KQ0KPiA+ID4gDQo+ID4gPiBUaGlzIGlzIGJhY2t3YXJkcyBjb21wYXRp
YmxlIGJlY2F1c2UNCj4gPiA+IA0KPiA+ID4gMCA9IGRpc2FibGVkLA0KPiA+ID4gMSA9IHVwIHRv
IHBzcjEsDQo+ID4gPiAyID0gdXAgdG8gcHNyMiwgKG5vIHBhbmVsIHJlcGxheSkNCj4gPiA+IDMg
PSB1cCB0byBwc3IyLCAoc2FtZSBhcyAyKQ0KPiA+ID4gNCA9IHBhbmVsIHJlcGxheSBvbg0KPiA+
ID4gNSA9IHNhbWUgYXMgNQ0KPiA+IA0KPiA+IE9yaWdpbmFsIHByb2JsZW0gYmVoaW5kIG15IHBh
dGNoIGlzIGVuYWJsZV9wc3I9MSBoYXZpbmcgaW1wYWN0IG9uDQo+ID4gUGFuZWwNCj4gPiBSZXBs
YXkuIEZpcnN0IEkgdGhvdWdodCBJIEZpeCB0aGlzIGJ5IGp1c3QgaWdub3JpbmcgZW5hYmxlX3Bz
ciBvbg0KPiA+IFBhbmVsDQo+ID4gUmVwbGF5LiBUaGF0IHdvdWxkIG1lYW4gYWRkaW5nIGVuYWJs
ZV9wYW5lbF9yZXBsYXkgcGFyYW1ldGVyIGFzDQo+ID4gd2VsbC4gSQ0KPiA+IGRpZG4ndCB3YW50
IHRvIGRvIHRoYXQuIFdlIGhhdmUgdXNlciB3YW50aW5nIHRvIGhhdmUgUFNSMg0KPiA+IHNwZWNp
ZmljYWxseQ0KPiA+IGRpc2FibGVkIGJ1dCBzdGlsbCB1c2UgUGFuZWwgUmVwbGF5Lg0KPiA+IC0+
DQo+ID4gSSB3YW50ZWQgdG8gaGF2ZSBlbmFibGVfcHNyIGxlZ2FjeSB2YWx1ZXMgd29ya2luZyBh
cyBiZWZvcmUgd2l0aG91dA0KPiA+IGhhdmluZyBpbXBhY3Qgb24gUGFuZWwgUmVwbGF5LiBUbyBo
YXZlIHRoaXMgSSBjaG9vc2UgdGhpcyBtZWFuaW5nDQo+ID4gdG8NCj4gPiB2YWx1ZXMgKGJpdHMp
Og0KPiA+IA0KPiA+IDAgPSBkaXNhYmxlIFBTUi9QYW5lbCBSZXBsYXkgY29tcGxldGVseQ0KPiA+
IDEgKEJJVDApID0gZGlzYWJsZSBQU1IyIChhbGxvdyBQU1IxL1BhbmVsIFJlcGxheSkgKHVwIHRv
IHBzcjEpDQo+ID4gMiAoQklUMSkgPSBkaXNhYmxlIFBhbmVsIFJlcGxheSAoYWxsb3cgUFNSMS9Q
U1IyKSAodXAgdG8gcHNyMiwgKG5vDQo+ID4gcGFuZWwgcmVwbGF5KSkNCj4gPiANCj4gPiBJIGxl
ZnQgRWFybHkgVHJhbnNwb3J0IG91dCBoZXJlIGFzIGRpc2FibGluZyBpdCBtZWFucyBkaXNhYmxp
bmcNCj4gPiBQYW5lbA0KPiA+IFJlcGxheSBhcyB3ZWxsLiBJIGFsc28gZGlkbid0IHdhbnQgdG8g
bWFrZSB0aGlzIHBhcmFtZXRlciB0b28NCj4gPiBleHRlbnNpdmUvY29tcGxleCBhcyB3ZSBoYXZl
IHNlcGFyYXRlIGRlYnVnIGludGVyZmFjZSB0byBiaXNlY3QgUFNSDQo+ID4gZmVhdHVyZXMgKC9z
eXMva2VybmVsL2RlYnVnL2RyaS8qL2k5MTVfZWRwX3Bzcl9kZWJ1ZykuIFVzaW5nIHRoaXMNCj4g
PiBkaXNhYmxlIGJpdCBhcHByb2FjaCBpcyBhbHNvIGVhc3kgdG8gZXh0ZW50IGluIGZ1dHVyZSBh
cyBuZWVkZWQuDQo+ID4gDQo+ID4gWW91ciBpZGVhIGlzIGZvbGxvd2luZyBiZXR0ZXIgbWVhbmlu
ZyBvZiAiZW5hYmxlX3BzciIuDQo+IA0KPiBXZWxsLCBidXQgeW91ciBpZGVhIGNhcHR1cmVzIGJl
dHRlciB0aGUgaXNzdWUgYW5kIHRoZSBiYWNrd2FyZA0KPiBjb21wYXRpYmlsaXR5LiBMZXQncyBn
byB3aXRoIHlvdXIgZGVmaW5pdGlvbiwgYnV0IGVuc3VyZSB0byBkb2N1bWVudA0KPiB0aGUgcGFy
YW1ldGVyIGxpa2UgeW91IGRlc2NyaWJlZCBoZXJlIGFib3ZlPw0KDQpKdXN0IHNlbnQgbmV3IHZl
cnNpb24gb2YgbXkgc2V0LiBQbGVhc2UgY2hlY2suDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXIN
Cg0KPiANCj4gPiANCj4gPiBCUiwNCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gPiANCj4g
PiA+IA0KPiA+ID4gPiDCoAkiRGVmYXVsdDogLTEgKHVzZSBwZXItY2hpcCBkZWZhdWx0KSIpOw0K
PiA+ID4gPiDCoA0KPiA+ID4gPiDCoGludGVsX2Rpc3BsYXlfcGFyYW1fbmFtZWQocHNyX3NhZmVz
dF9wYXJhbXMsIGJvb2wsIDA0MDAsDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBpbmRleCBhMmI1Njg4ZjBjODIuLjMyMTVh
MTFiYWE2NiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gPiA+IEBAIC0yNTQsMTMgKzI1NCwxNSBAQCBzdGF0aWMgYm9vbCBw
c3IyX2dsb2JhbF9lbmFibGVkKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ID4gPiA+IMKgew0KPiA+ID4gPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+
ID4gPiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+ID4gPiDCoA0KPiA+ID4gPiAr
CXJldHVybiBkaXNwbGF5LT5wYXJhbXMuZW5hYmxlX3BzciAhPSAxOw0KPiA+ID4gPiArfQ0KPiA+
ID4gPiArDQo+ID4gPiA+ICtzdGF0aWMgYm9vbCBzZWxfdXBkYXRlX2dsb2JhbF9lbmFibGVkKHN0
cnVjdCBpbnRlbF9kcA0KPiA+ID4gPiAqaW50ZWxfZHApDQo+ID4gPiA+ICt7DQo+ID4gPiA+IMKg
CXN3aXRjaCAoaW50ZWxfZHAtPnBzci5kZWJ1ZyAmDQo+ID4gPiA+IEk5MTVfUFNSX0RFQlVHX01P
REVfTUFTSykgew0KPiA+ID4gPiAtCWNhc2UgSTkxNV9QU1JfREVCVUdfRElTQUJMRToNCj4gPiA+
ID4gwqAJY2FzZSBJOTE1X1BTUl9ERUJVR19GT1JDRV9QU1IxOg0KPiA+ID4gPiDCoAkJcmV0dXJu
IGZhbHNlOw0KPiA+ID4gPiDCoAlkZWZhdWx0Og0KPiA+ID4gPiAtCQlpZiAoZGlzcGxheS0+cGFy
YW1zLmVuYWJsZV9wc3IgPT0gMSkNCj4gPiA+ID4gLQkJCXJldHVybiBmYWxzZTsNCj4gPiA+ID4g
wqAJCXJldHVybiB0cnVlOw0KPiA+ID4gPiDCoAl9DQo+ID4gPiA+IMKgfQ0KPiA+ID4gPiBAQCAt
MjY5LDcgKzI3MSw3IEBAIHN0YXRpYyBib29sDQo+ID4gPiA+IHBhbmVsX3JlcGxheV9nbG9iYWxf
ZW5hYmxlZChzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ID4gPiDCoHsN
Cj4gPiA+ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4gPiB0b19p
bnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiA+ID4gwqANCj4gPiA+ID4gLQlpZiAoKGRpc3Bs
YXktPnBhcmFtcy5lbmFibGVfcHNyICE9IC0xKSB8fA0KPiA+ID4gPiArCWlmIChkaXNwbGF5LT5w
YXJhbXMuZW5hYmxlX3BzciA9PSAyIHx8DQo+ID4gPiA+IMKgCcKgwqDCoCAoaW50ZWxfZHAtPnBz
ci5kZWJ1ZyAmDQo+ID4gPiA+IEk5MTVfUFNSX0RFQlVHX1BBTkVMX1JFUExBWV9ESVNBQkxFKSkN
Cj4gPiA+ID4gwqAJCXJldHVybiBmYWxzZTsNCj4gPiA+ID4gwqAJcmV0dXJuIHRydWU7DQo+ID4g
PiA+IEBAIC0xNDE1LDYgKzE0MTcsMTIgQEAgc3RhdGljIGJvb2wNCj4gPiA+ID4gaW50ZWxfcHNy
Ml9jb25maWdfdmFsaWQoc3RydWN0DQo+ID4gPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+
ID4gwqAJaWYgKCFpbnRlbF9kcC0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0KQ0KPiA+ID4gPiDCoAkJ
cmV0dXJuIGZhbHNlOw0KPiA+ID4gPiDCoA0KPiA+ID4gPiArCWlmICghcHNyMl9nbG9iYWxfZW5h
YmxlZChpbnRlbF9kcCkpIHsNCj4gPiA+ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0K
PiA+ID4gPiArCQkJwqDCoMKgICJQU1IyIGRpc2FibGVkIGJ5IGZsYWdcbiIpOw0KPiA+ID4gPiAr
CQlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+ICsJfQ0KPiA+ID4gPiArDQo+ID4gPiA+IMKgCS8qIEpT
TCBhbmQgRUhMIG9ubHkgc3VwcG9ydHMgZURQIDEuMyAqLw0KPiA+ID4gPiDCoAlpZiAoZGlzcGxh
eS0+cGxhdGZvcm0uamFzcGVybGFrZSB8fCBkaXNwbGF5LQ0KPiA+ID4gPiA+IHBsYXRmb3JtLmVs
a2hhcnRsYWtlKSB7DQo+ID4gPiA+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJQU1Iy
IG5vdCBzdXBwb3J0ZWQNCj4gPiA+ID4gYnkNCj4gPiA+ID4gcGh5XG4iKTsNCj4gPiA+ID4gQEAg
LTE1MTcsNyArMTUyNSw3IEBAIHN0YXRpYyBib29sDQo+ID4gPiA+IGludGVsX3NlbF91cGRhdGVf
Y29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiA+IMKgCQlnb3Rv
IHVuc3VwcG9ydGVkOw0KPiA+ID4gPiDCoAl9DQo+ID4gPiA+IMKgDQo+ID4gPiA+IC0JaWYgKCFw
c3IyX2dsb2JhbF9lbmFibGVkKGludGVsX2RwKSkgew0KPiA+ID4gPiArCWlmICghc2VsX3VwZGF0
ZV9nbG9iYWxfZW5hYmxlZChpbnRlbF9kcCkpIHsNCj4gPiA+ID4gwqAJCWRybV9kYmdfa21zKGRp
c3BsYXktPmRybSwNCj4gPiA+ID4gwqAJCQnCoMKgwqAgIlNlbGVjdGl2ZSB1cGRhdGUgZGlzYWJs
ZWQgYnkNCj4gPiA+ID4gZmxhZ1xuIik7DQo+ID4gPiA+IMKgCQlnb3RvIHVuc3VwcG9ydGVkOw0K
PiA+ID4gPiBAQCAtMTY2NCw3ICsxNjcyLDcgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25m
aWcoc3RydWN0DQo+ID4gPiA+IGludGVsX2RwDQo+ID4gPiA+ICppbnRlbF9kcCwNCj4gPiA+ID4g
wqAJdTggYWN0aXZlX3BpcGVzID0gMDsNCj4gPiA+ID4gwqANCj4gPiA+ID4gwqAJaWYgKCFwc3Jf
Z2xvYmFsX2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+ID4gPiA+IC0JCWRybV9kYmdfa21zKGRpc3Bs
YXktPmRybSwgIlBTUiBkaXNhYmxlZCBieQ0KPiA+ID4gPiBmbGFnXG4iKTsNCj4gPiA+ID4gKwkJ
ZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiUFNSL1BhbmVsIFJlcGxheQ0KPiA+ID4gPiBkaXNh
YmxlZCBieSBmbGFnXG4iKTsNCj4gPiA+ID4gwqAJCXJldHVybjsNCj4gPiA+ID4gwqAJfQ0KPiA+
ID4gPiDCoA0KPiA+ID4gPiAtLSANCj4gPiA+ID4gMi40My4wDQo+ID4gPiA+IA0KPiA+IA0KDQo=
