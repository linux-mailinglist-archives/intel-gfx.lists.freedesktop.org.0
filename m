Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m0B5KU+fImp1bAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 12:05:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D746472AF
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 12:05:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PlqQC4X7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0083011A6D7;
	Fri,  5 Jun 2026 10:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9010311A6D3;
 Fri,  5 Jun 2026 10:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780653900; x=1812189900;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rErdtxDAgkapzgjVywrCJK1g75LdR/+P6Nh0gxqngJY=;
 b=PlqQC4X7G5xLPybTjsJasRN0cIuwnd8RXlyZ5XNLIQ5GMsPGrvuwKEIT
 ojRuGBOXAZ8JQO1Gr6oUWsa2ijjcfqM5z3pMtYHAE9t8ZduGyYtoNyT0w
 XwxZy+u/6Zi51yUttphF//9F9Syrzd9PIEIcePPh06DFI8E72ynlBzZZH
 9skCgCc8LfMHpuWpPhAYzsSfdH18pJ56SDjRbCI2bIZSLK1JatjIZiC8l
 nJ2D0QRtJh1vIW1mSkW/Ot7AVIs6wU+jTyFoizA5EF8q+D2QXOhr4xYuC
 NVKlWCSjxUTUwxt2YFT/kEfKhXKO1vLSXnqFqoDqcj8DpyR0Ll4Ldrsut Q==;
X-CSE-ConnectionGUID: YiiRDN2sQNm+oKAZVEi+ZQ==
X-CSE-MsgGUID: vWde70QkT8WHydZUJJoSgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="98905866"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="98905866"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 03:04:59 -0700
X-CSE-ConnectionGUID: xxKPX6m9Q0aLxbuZym4S9Q==
X-CSE-MsgGUID: FXDGXbYjT+OXKqjb95wq9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="244871183"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 03:04:59 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 03:04:58 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 03:04:58 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.26) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 03:04:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=netm9y7+DlnX1qPe7wUX9p0iCPZ9x8w0CcsFUVC2b2m8gHaqhp3OuOS0/KfbHVf4AdS8QQRl8ruirtn2OPVnLPF8S2a0sAwVc3DGXs4zNXhLIXtoPbVnsX8cg0c9ptPB3cNGrpRNXA8ExNgMWECTogQYMLatoVBTpCg4PZHNzNC4nW/ou7PFEO4EejH1KTgKFQwbWDFBKYIBtpVePnbWbGTvXDSPloo+uQKEUPbqr5AK7/tIeuHR2RiMopfYrDAb3bqn/c9+7TUt0pmq6OLLejjsAVbhemBuI54T8hw2Jsqr47Dglsc7m3lskn+1RRHKzP4xcJeZlnANepr+0E4ZJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rErdtxDAgkapzgjVywrCJK1g75LdR/+P6Nh0gxqngJY=;
 b=D4BIQnVXH7hFBN6IZ7iuQxR2ASRc3uKIIt38499WR+tygkeExu3O13bnInstolEhydZBDjDVdmQNuFkJqbunHyFOEBwBFV8C0Xk5vzDNepaMKiLJtCcnJbmIZj9sb7AQyuLPHeCWKtKz0So0k6srUQebOmTTGbUVwtyFiOjPNW5rUhnRlHlfh/ThBe+rzCuAa3tUss7n2kj7h9GPUTCKVlJrQF5IioxZaAPUayewZDOd5qk7py5mKPFHQsjnEF45tkeC2hhSfMb/8QtNXf/LGH1WuDHWMTZmsLDoAozo7Hjr4KRvH5XSz9eGB3OvjQBOWdHlrvCA9hIKzecMHLgdDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SA2PR11MB5147.namprd11.prod.outlook.com
 (2603:10b6:806:118::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Fri, 5 Jun 2026
 10:04:51 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0092.006; Fri, 5 Jun 2026
 10:04:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, Thorsten Leemhuis
 <regressions@leemhuis.info>, Tvrtko Ursulin <tursulin@igalia.com>, "Dave
 Airlie" <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Linux kernel regressions list <regressions@lists.linux.dev>, ML dri-devel
 <dri-devel@lists.freedesktop.org>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: RE: [PATCH] Revert "drm/i915/backlight: Remove try_vesa_interface"
Thread-Topic: [PATCH] Revert "drm/i915/backlight: Remove try_vesa_interface"
Thread-Index: AQHc5IMJbi0nJK0olkGzgKwli7Gks7YRheKAgB0ExgCAAR2sgIAAMPcAgAACgOA=
Date: Fri, 5 Jun 2026 10:04:50 +0000
Message-ID: <DS4PPFE901A304FD9E40779C9B78A29E661E3112@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260515155340.1000997-1-suraj.kandpal@intel.com>
 <20260517024709.1016121-1-suraj.kandpal@intel.com>
 <53a2a8dd-d1b6-41c5-ade2-7ed870d074ac@leemhuis.info>
 <ffac6caf-0376-4a0c-908e-b89cce48d28f@leemhuis.info>
 <c7764bbd-7990-4d11-832e-ec7283c1a6c1@igalia.com>
In-Reply-To: <c7764bbd-7990-4d11-832e-ec7283c1a6c1@igalia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SA2PR11MB5147:EE_
x-ms-office365-filtering-correlation-id: 0f6b6f7e-987b-4c62-a8a0-08dec2e9e1fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|11063799006|3023799007|4143699003|56012099006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: M/R3wWiQK8nFbMEDt9nnQkW7wuCRJjpd5Kw8wMQJD1SJGjXyTBUhZaukB7JetYIAeW33Hdl4Tb6yhsfJqRiKAyOpbiWmDWyUn6/KhdtJHY/Dnh4sdtmYVAT5IbL464hIufOrbalwquRt+GKtmRJYwXf/87O5+i/Py7phew9K9m5qR6s6XAJFefQ9LhwKEHnPGqiEy/nItKM5YQbnu1vxix4B9/cNc9mO+oRBDXLH76B+llxF9xOf2mcwomlvbaTzbcAEIkvVGa6uTsnLFe+ilUv46V2LJdGQLdlzkQmsu7390xhjMeT4ipnTOWO/nRX/FvlxJ8gsIwHwomkkZLyyVT4DNxhYn6Qejt31RC8mUhkhBYsu+hTlHGbk5HZm3FmdIln/gn2j2KnaFPn3yYFsMRU8jUIDHqEKiWTtIPcwOdLbtJ5vcS+b4EwZImmYUH18i9xfB3GpW6CjXtEv5EigLCJkjQ2U/rhMyAEo+3tCzWipSBQ8PxO7SdIqjsIxcbTfuBd1Qbv/C1bkbKtBzXCAh0HES7FrY4ork0ARSQqRBD6uvE1yUfHJiJL9l3Zks2yY3n2w6TAeQ/R2ztugN0N23lTY5fGZScItKRjn/XXtZxkgG6ySy5r7ANVkc6Gctf4bGpP2/TsunNLCKUnCZmC53n61uJb1/ltaZ12jFbhmQxAKESeR9/kJfBwAv0Y0x5cMmC2rORe240Ov/vXTwBAQ7w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(11063799006)(3023799007)(4143699003)(56012099006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFU2ODZYVHRLSlQ0QjI4bnlGNVFSN015R2wxRmFtdTYyNUJUR0pTMUI5dmt6?=
 =?utf-8?B?OG9kSU5obFpZUm1IYndwM01CRWc1NEdIYzJmSGtCaXhhMmphZC90ZTRyejI3?=
 =?utf-8?B?RXRHR21yVmNtcEVOSVN1SVB3Z1NybmRQVHRoeTBEZGl4L2tsTnl3azU3Yzdu?=
 =?utf-8?B?TFlKWGMxdS9ySU1aOVVpcWQ5d1grK0xmaG5rQXNqYng2MnMrRU41WmRibnB2?=
 =?utf-8?B?aWhVUjYzaTB0ZzZFRk4zVVQzYi9BZWFacHdTc0tYdVZBZCtmbm9ZN1lnVVRl?=
 =?utf-8?B?SWNDQWE5Qzh3TXlXWDJxQlV4NlllK21nbnpCc0I0amc2Z1NzWXRjb3o3S3ow?=
 =?utf-8?B?KzljQzdBeStSQThzQlo2aWdaVmUwdW1OWkxXZHJ0MHlNelNxNnJlMnZOWjFp?=
 =?utf-8?B?Zkh4dG5PVWJjOW8xN2RuSURtSHlMVm4veVJFNUFlVitZME4yU3lDWG93OWp0?=
 =?utf-8?B?N0s2OWtFMWIvVjlJZS8rcTd1SklMNTNJUU51Q24rMStDUHdmTG4wam1Bclh3?=
 =?utf-8?B?Qy80ODE3RG5McWFiaUFoQyszaVRmZTE1OXlvTUZLcHAxb3gzUDloRXFxQXJR?=
 =?utf-8?B?RkMwMXZqZGJCaWw5TEd3dE8xdTdDZ0xLU2VIcm40SUVJbnhNV2dDWnVrbHlr?=
 =?utf-8?B?Wkxnb1VzSVFqcUpucVo2UGx4dmh5SnFjMC9hUWhZVkU3aDZ0QXI4Zlg4b0Fn?=
 =?utf-8?B?cHh2WVBXWjJ0cE03SVk2VnUxbGZML0lMbi8zUW1naFAydW1LK1Q0Z2ZmVVJC?=
 =?utf-8?B?SWJYdlF1V3BUVzdmQzRiMDkzM0FOMXNSUEY5aUZYYWEraU1keGZYQ0F0d0xs?=
 =?utf-8?B?cXlaWkRpL3dwRjNCNk5QY2Nmd2Y2K0lWTDRRczBrdUdZZWNmV3l0WTIzN3Bi?=
 =?utf-8?B?SEdQR1Jqb0JoN3NkSFI1VGtMK2Mwenk4cTUveWJVbHQyT1lXdzVNY0pFVkpx?=
 =?utf-8?B?TUN1ZjJ0RkhMSnl3blRuN21wTFNadmdJV1V1TmRsLy9oNDdKWGNNbGJCNC8y?=
 =?utf-8?B?ZnZoRzNNUkc5VGFjVjU5UjY4Vmtma05EUUhQMVlndXo5aXRmcFRid0dNZVpV?=
 =?utf-8?B?ZlNFV1FWMkd5MU1OM1QxYnVHY29OR0RPNDNXSVJvaVBmS3g3NFlnVmxhMUZl?=
 =?utf-8?B?ek5oS0ZHc1ExYTFrUGxweEtkQndxNjBjOHlsUlRVNHd6RStvMFJiakd4N2ox?=
 =?utf-8?B?TlBmNEpyZWowRnJNRmNzZ0NtZUtrU1F1L3pRNExQZFJmcExNUXhLbkVxUlRN?=
 =?utf-8?B?Z05hMnI4NWh6Z1RRWHdGUCtiUVllRDdQZnUxclc5Ny9uTjQxOTIxTnhiMmZn?=
 =?utf-8?B?d1phWWlUaXN4M2syM0lNalVkaUQwdXVMWGhjTDhhYUNVT3pycXEzOXZJVjA4?=
 =?utf-8?B?SVkzNm5RQy9zNU1pci9sRmgxcjB0LzZqb1NxVjlsSXQwcHVncE1BcEVmaHdX?=
 =?utf-8?B?YzZwamNJWjBkRXNIL1FjMFJYcFVmd1R2QkczUVJLZmNLSURtdEwrSWhuZUdP?=
 =?utf-8?B?Z0hEU3liazA4VURjRENrYXdrVFFGQTlPSzFaN3JPclZIeDU4dmxjb0FZWWpS?=
 =?utf-8?B?SDFhb3dXdmIrbzZqaXl1VnIxdW1xcWpNUTJCU3ZXTkZxeTFaa2UrQWFEUmdH?=
 =?utf-8?B?KzZoalpTVFZtNE5zNE9Ld01MZjJQTzRDdE1OQ1AwT0VWQS9UdlZTbXlDaGY5?=
 =?utf-8?B?RUcwY0c5cWNsU000OGpBcWdEbXlmYkY4NlJZSHZTWERvRUxpNjJHUXM5N2dI?=
 =?utf-8?B?Z3N5K1REVHlzVHdzRll3TUZDV0F1ZFY1czRZQnNSei9wbHNtS3k3bzlsNStI?=
 =?utf-8?B?WFVJa0dDM3JPaXlzdU1MbndibGhpOWR4UG9LMDFRaFNJZkVFNUNKMWJYdE5s?=
 =?utf-8?B?djgyQk5sSFBiN1lvTW1kMFZSQUxhbUpRczBPNk1BTi9lUGVFU1Jla0RweTJX?=
 =?utf-8?B?ZFF0K2pnZmY4WUs4dXp1TW1qaE1Ed0dPWGo2MW5iOTdjcWRQSHBzdjYremky?=
 =?utf-8?B?aDBqOVNEaUlDcFJaZWdjT3dlN0RDVUZkSzBMbDNFT0pvUHhmcTR1UVJoMnQz?=
 =?utf-8?B?MTZ2d3VEelZ4QzBtNnBPSVEyRzdYYVQxMXJ2cEc3SXhuSjRVakJBMGZmTEh5?=
 =?utf-8?B?Uy9EbHZtSHVHOHdHTW5YcFNyak5iaXJxbjF0eGNYQklCTWlVeDJQbk5oWFZJ?=
 =?utf-8?B?aXJnL3pPNWRXZ1l6SGRYSkpHUVBlQmdIK3l2Sm43ZVNuRys1enVWQ1RySnQ3?=
 =?utf-8?B?OG8xNWlTRmdnS3RiTjZxRm03YWYxbmViOUkxQUdYSVdYRWRWRWdyTXNBdlRJ?=
 =?utf-8?B?em9YbS9CLzlZQlVhcmE3Tzg2SWo0QURrR21FTTZuczY5THVHV09iUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PcGA8XSWFeuezKe/c0QDY1/Zw1lB0wIDw1LW9zR4rQJEy4ODL6AdeA351MifJt2dIlw8DBjH6J+JOKzfILiMoDfCcJcKdm2sVIZgvhmJUH3ufWhZVL/eq/OHGMOOtV+ucSccr+c1VnctFXekO6E4d8wn1nQhusBsKTJy4kxJsldK3S4Eu5bC/XVN9zW2BPIqrbA5IEMXWnFtjC5+Kc68BUvfEgwcMQxbBHk21V4WX1OHT7y6ejMAB8AfEzR1jTm3+Okg5YR+NMpZGkB+rjQ7RcySRDwayr5ymo/svHOTRkW1bFkDIHmKokZG5vvL3l8ctT7eQA0YyCNPI2JnI2jkxw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f6b6f7e-987b-4c62-a8a0-08dec2e9e1fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 10:04:50.7410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qlkHMe2kxVKvFmrFbr64wlFuUrNcmaNrc4BXKsjsDSTAg/feMTtWBiFTmdyuN/ExP9EX36IClO1wOAJNA59MtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5147
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[igalia.com,leemhuis.info,gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 12D746472AF

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSnVuZSA1LCAyMDI2
IDM6MjMgUE0NCj4gVG86IFRob3JzdGVuIExlZW1odWlzIDxyZWdyZXNzaW9uc0BsZWVtaHVpcy5p
bmZvPjsgVHZydGtvIFVyc3VsaW4NCj4gPHR1cnN1bGluQGlnYWxpYS5jb20+OyBEYXZlIEFpcmxp
ZSA8YWlybGllZEBnbWFpbC5jb20+OyBTaW1vbmEgVmV0dGVyDQo+IDxzaW1vbmEudmV0dGVyQGZm
d2xsLmNoPjsgS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBDYzog
TmF1dGl5YWwsIEFua2l0IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPjsgTXVydGh5LCBB
cnVuIFINCj4gPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZzsgaW50ZWwtDQo+IHhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgVml2aSwgUm9k
cmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT47IExpbnV4IGtlcm5lbA0KPiByZWdyZXNzaW9u
cyBsaXN0IDxyZWdyZXNzaW9uc0BsaXN0cy5saW51eC5kZXY+OyBNTCBkcmktZGV2ZWwgPGRyaS0N
Cj4gZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPjsgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gUmV2ZXJ0ICJkcm0vaTkx
NS9iYWNrbGlnaHQ6IFJlbW92ZSB0cnlfdmVzYV9pbnRlcmZhY2UiDQo+IA0KPiANCj4gSGkgU3Vy
YWosDQo+IA0KPiBPbiAwNS8wNi8yMDI2IDA3OjU4LCBUaG9yc3RlbiBMZWVtaHVpcyB3cm90ZToN
Cj4gPiBPbiA2LzQvMjYgMTU6NTUsIFRob3JzdGVuIExlZW1odWlzIHdyb3RlOg0KPiA+PiBPbiA1
LzE3LzI2IDA0OjQ3LCBTdXJhaiBLYW5kcGFsIHdyb3RlOg0KPiA+Pj4gVGhpcyByZXZlcnRzIGNv
bW1pdCA0MGQyZjU4MjA5NTFkZWU4MThkMDVjMTQ2NzcyNzcwNDhiZDg1ZjlmLg0KPiA+Pj4NCj4g
Pj4+IFJlbW92aW5nIHRoZSB0cnlfdmVzYV9pbnRlcmZhY2UgZ2F0ZSBjYXVzZWQgYSBiYWNrbGln
aHQgcmVncmVzc2lvbg0KPiA+Pj4gb24gcGFuZWxzIHdob3NlIFZCVCBjb3JyZWN0bHkgcmVwb3J0
cyBJTlRFTF9CQUNLTElHSFRfRElTUExBWV9EREkNCj4gPj4+IGFuZCB3aG9zZSBQV00gcGF0aCBp
cyB0aGUgYWN0dWFsIGJhY2tsaWdodCBjb250cm9sLCBidXQgd2hvc2UgRFBDRA0KPiA+Pj4gb3B0
aW1pc3RpY2FsbHkgYWR2ZXJ0aXNlcyBEUF9FRFBfQkFDS0xJR0hUX0FVWF9FTkFCTEVfQ0FQIC8N
Cj4gX0JSSUdIVE5FU1NfQVVYX1NFVF9DQVAuDQo+ID4+PiBBZnRlciB0aGUgY29tbWl0IHN1Y2gg
cGFuZWxzIHNpbGVudGx5IGJpbmQgdG8gdGhlIFZFU0EgQVVYIGJhY2tsaWdodA0KPiA+Pj4gZnVu
Y3M7IEFVWCB3cml0ZXMgY29tcGxldGUgYnV0IHRoZSBwYW5lbCBpZ25vcmVzIHRoZW0sIGxlYXZp
bmcNCj4gPj4+IGJyaWdodG5lc3Mgc3R1Y2sgKG5vLW9wIGJhY2tsaWdodCkuIE9ic2VydmVkIG9u
IGF0IGxlYXN0IEtCTCBhbmQgVEdMDQo+ID4+PiBlRFAgc2V0dXBzLg0KPiA+Pg0KPiA+PiBMbyEg
V2hhdCdzIHRoZSBzdGF0dXMgb2YgdGhpcyByZWdyZXNzaW9uIGZpeD8gSXQncyBhIC1uZXh0IGZv
ciB0d28NCj4gPj4gd2Vla3Mgbm93IGFzIGYzMGZkZGI0NDAyMzEzICgiUmV2ZXJ0ICJkcm0vaTkx
NS9iYWNrbGlnaHQ6IFJlbW92ZQ0KPiA+PiB0cnlfdmVzYV9pbnRlcmZhY2UiIiksIGJ1dCBmcm9t
IHRoZSBvdXRzaWRlIGFuZCBjaGVja2luZw0KPiA+PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2k5MTUva2VybmVsLy0vY29tbWl0cy9kcm0taW50ZWwtZmkNCj4gPj4geGVzIGl0
IGxvb2tzIGxpa2UgaXQncyBzY2hlZHVsZWQgZm9yIG1lcmdpbmcgaW4gdGhlIG5leHQgY3ljbGUu
DQo+ID4NCj4gPiBSZXNlbmRpbmcgdG8gVHZydGtvLCB3aG8gc2VudCB0aGUgaTkxNSBQUiB5ZXN0
ZXJkYXkgKHdoaWNoIGRpZG4ndA0KPiA+IGNvbnRhaW4gdGhhdCBmaXgpLCBhcyB3ZWxsIGFzIERh
dmUgYW5kIFNpbW9uYS4NCj4gPg0KPiA+IEZXSVcsIGR1ZSB0byB0aGUgbGFjayBvZiByZXNwb25z
ZSB0byB2YXJpb3VzIGlucXVpcmllcyBJJ20gY29uc2lkZXJpbmcNCj4gPiB0byBhc2sgTGludXMg
dG8gZGlyZWN0bHkgcGljayB1cCB0aGUgbWVudGlvbmVkIHJlZ3Jlc3Npb24gZml4IHRvDQo+ID4g
ZW5zdXJlIGl0IG1ha2VzIGl0IGludG8gcmM3Lg0KPiA+DQo+ID4gSW4gY2FzZSBhbnlvbmUgd29u
ZGVyIHdoYXQgcmVncmVzc2lvbiBJJ20gdGFsa2luZyBhYm91dDoNCj4gPg0KPiA+ICogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xNjAxNSAv
DQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQURvOXBIanItDQo+IHpaOUMzJTJC
MDI2eTUlMkJYT0dQU2VSelNKTUNIb2YNCj4gPiAyN1RWUHRBVU5nVGM4QUBtYWlsLmdtYWlsLmNv
bS8NCj4gPiAqIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwv
LS9pc3N1ZXMvMTYwNDMNCj4gPiAqIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aTkxNS9rZXJuZWwvLS93b3JrX2l0ZW1zLzE2MDk3IC8NCj4gPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9sa21sL2QyZGU3OTMzLWU2NTAtNGIxOS04ZDg4LTkwZDY2NjkzZGNmY0BtZXNzDQo+ID4g
YWdlLWlkLmdvb2dsZW1haWwuY29tLw0KPiA+DQo+ID4gQ2lhbywgVGhvcnN0ZW4NCj4gPg0KPiA+
PiBCdXQgSSB0aGluayBpdCBzaG91bGQgYmUgbWVyZ2VkIHRoaXMgY3ljbGUgKGlkZWFsbHkgYmVm
b3JlIC1yYzcsIGFzDQo+ID4+IExpbnVzIHdhbnRzIGFsbCBrbm93biByZWdyZXNzaW9uIGZpeGVk
IGJ5IC1yYzYpLCBhcyBpdCBmaXhlcyBhDQo+ID4+IHJlZ3Jlc3Npb24gdGhhdCBpcyBrbm93biBz
aW5jZSB0aGUgLXJjMSBkYXlzLiBJIGFscmVhZHkgYXNrZWQgZm9yIHRoZQ0KPiA+PiBtYWlubGlu
aW5nIHBsYW5zIGluIGdpdGxhYiB0aWNrZXRzIGFib3V0IGEgd2VlayBhZ28gKGFuZCBzaW5jZSB0
aGVuDQo+ID4+IGFmZmVjdGVkIHVzZXJzIHNwb2tlIHVwLCB0b28pLCBidXQgdGhlcmUgd2FzIG5v
IGNvbmNsdXNpdmUgYW5zd2VyIGZvcg0KPiA+PiB0aGUgcGxhbnMsIHdoaWNoIGlzIHdoeSBJJ20g
dHJ5aW5nIHRoaXMgd2F5IG5vdy4NCj4gDQo+IFdhcyB0aGVyZSBhIHJlYXNvbiB0aGUgcmV2ZXJ0
IHdhcyBub3QgbWFya2VkIHdpdGggYSBGaXhlczogdGFnPyBPciBpbiBvdGhlcg0KPiB3b3Jkcywg
YW55IHBhcnRpY3VsYXIgcmVhc29uIHdoeSBpdCBzaG91bGQgKm5vdCogYmUgcGlja2VkIHVwIGZv
ciBkcm0taW50ZWwtDQo+IGZpeGVzPw0KDQpUaGVyZSB3YXNuJ3QgYW55IHBhcnRpY3VsYXIgcmVh
c29uLg0KVGJoIEkgZGlkbid0IHRoaW5rIHdlIHdvdWxkIHJlcXVpcmUgaXQgc2luY2UgdGhpcyBy
ZXZlcnQgd2FzIGZpeGluZyB0aGUgaXNzdWUgY2F1c2VkIGJ5IHRoZSBwYXRjaCBpbiBxdWVzdGlv
biBiZWluZyByZXZlcnRlZC4NCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiANCj4gUmVn
YXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4gPj4NCj4gPj4gQ2lhbywgVGhvcnN0ZW4NCj4gPj4N
Cj4gPj4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxA
aW50ZWwuY29tPg0KPiA+Pj4gLS0tDQo+ID4+PiAgIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2F1eF9iYWNrbGlnaHQuYyB8IDE5ICsrKysrKysrKysrKy0tLS0tLS0NCj4gPj4+ICAgMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4+Pg0KPiA+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4
X2JhY2tsaWdodC5jDQo+ID4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfYXV4X2JhY2tsaWdodC5jDQo+ID4+PiBpbmRleCBhOGQ1NmViZjA2YTIuLjdhNmMwN2Y2YWFl
YiAxMDA2NDQNCj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfYXV4X2JhY2tsaWdodC5jDQo+ID4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYw0KPiA+Pj4gQEAgLTY5MSwxMCArNjkxLDkgQEAg
aW50IGludGVsX2RwX2F1eF9pbml0X2JhY2tsaWdodF9mdW5jcyhzdHJ1Y3QNCj4gaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IpDQo+ID4+PiAgIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0g
aW50ZWxfYXR0YWNoZWRfZHAoY29ubmVjdG9yKTsNCj4gPj4+ICAgCXN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYgPSBjb25uZWN0b3ItPmJhc2UuZGV2Ow0KPiA+Pj4gICAJc3RydWN0IGludGVsX3BhbmVs
ICpwYW5lbCA9ICZjb25uZWN0b3ItPnBhbmVsOw0KPiA+Pj4gLQlib29sIHRyeV9pbnRlbF9pbnRl
cmZhY2UgPSBmYWxzZTsNCj4gPj4+ICsJYm9vbCB0cnlfaW50ZWxfaW50ZXJmYWNlID0gZmFsc2Us
IHRyeV92ZXNhX2ludGVyZmFjZSA9IGZhbHNlOw0KPiA+Pj4NCj4gPj4+IC0JLyoNCj4gPj4+IC0J
ICogQ2hlY2sgdGhlIFZCVCBhbmQgdXNlcidzIG1vZHVsZSBwYXJhbWV0ZXJzIHRvIGZpZ3VyZSBv
dXQgd2hpY2gNCj4gPj4+ICsJLyogQ2hlY2sgdGhlIFZCVCBhbmQgdXNlcidzIG1vZHVsZSBwYXJh
bWV0ZXJzIHRvIGZpZ3VyZSBvdXQgd2hpY2gNCj4gPj4+ICAgCSAqIGludGVyZmFjZXMgdG8gcHJv
YmUNCj4gPj4+ICAgCSAqLw0KPiA+Pj4gICAJc3dpdGNoIChkaXNwbGF5LT5wYXJhbXMuZW5hYmxl
X2RwY2RfYmFja2xpZ2h0KSB7IEBAIC03MDMsNiArNzAyLDcNCj4gPj4+IEBAIGludCBpbnRlbF9k
cF9hdXhfaW5pdF9iYWNrbGlnaHRfZnVuY3Moc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29u
bmVjdG9yKQ0KPiA+Pj4gICAJY2FzZSBJTlRFTF9EUF9BVVhfQkFDS0xJR0hUX0FVVE86DQo+ID4+
PiAgIAkJc3dpdGNoIChwYW5lbC0+dmJ0LmJhY2tsaWdodC50eXBlKSB7DQo+ID4+PiAgIAkJY2Fz
ZSBJTlRFTF9CQUNLTElHSFRfVkVTQV9FRFBfQVVYX0lOVEVSRkFDRToNCj4gPj4+ICsJCQl0cnlf
dmVzYV9pbnRlcmZhY2UgPSB0cnVlOw0KPiA+Pj4gICAJCQlicmVhazsNCj4gPj4+ICAgCQljYXNl
IElOVEVMX0JBQ0tMSUdIVF9ESVNQTEFZX0RESToNCj4gPj4+ICAgCQkJdHJ5X2ludGVsX2ludGVy
ZmFjZSA9IHRydWU7DQo+ID4+PiBAQCAtNzE1LDEyICs3MTUsMjAgQEAgaW50IGludGVsX2RwX2F1
eF9pbml0X2JhY2tsaWdodF9mdW5jcyhzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpDQo+ID4+PiAgIAkJaWYgKHBhbmVsLT52YnQuYmFja2xpZ2h0LnR5cGUgIT0NCj4gSU5URUxf
QkFDS0xJR0hUX1ZFU0FfRURQX0FVWF9JTlRFUkZBQ0UpDQo+ID4+PiAgIAkJCXRyeV9pbnRlbF9p
bnRlcmZhY2UgPSB0cnVlOw0KPiA+Pj4NCj4gPj4+ICsJCXRyeV92ZXNhX2ludGVyZmFjZSA9IHRy
dWU7DQo+ID4+PiArCQlicmVhazsNCj4gPj4+ICsJY2FzZSBJTlRFTF9EUF9BVVhfQkFDS0xJR0hU
X0ZPUkNFX1ZFU0E6DQo+ID4+PiArCQl0cnlfdmVzYV9pbnRlcmZhY2UgPSB0cnVlOw0KPiA+Pj4g
ICAJCWJyZWFrOw0KPiA+Pj4gICAJY2FzZSBJTlRFTF9EUF9BVVhfQkFDS0xJR0hUX0ZPUkNFX0lO
VEVMOg0KPiA+Pj4gICAJCXRyeV9pbnRlbF9pbnRlcmZhY2UgPSB0cnVlOw0KPiA+Pj4gICAJCWJy
ZWFrOw0KPiA+Pj4gICAJfQ0KPiA+Pj4NCj4gPj4+ICsJLyogRm9yIGVEUCAxLjUgYW5kIGFib3Zl
IHdlIGFyZSBzdXBwb3NlZCB0byB1c2UgVkVTQSBpbnRlcmZhY2UgZm9yDQo+IGJyaWdodG5lc3Mg
Y29udHJvbCAqLw0KPiA+Pj4gKwlpZiAoaW50ZWxfZHAtPmVkcF9kcGNkWzBdID49IERQX0VEUF8x
NSkNCj4gPj4+ICsJCXRyeV92ZXNhX2ludGVyZmFjZSA9IHRydWU7DQo+ID4+PiArDQo+ID4+PiAg
IAkvKg0KPiA+Pj4gICAJICogU2luY2UgSW50ZWwgaGFzIHRoZWlyIG93biBiYWNrbGlnaHQgY29u
dHJvbCBpbnRlcmZhY2UsIHRoZSBtYWpvcml0eSBvZg0KPiBtYWNoaW5lcyBvdXQgdGhlcmUNCj4g
Pj4+ICAgCSAqIHVzaW5nIERQQ0QgYmFja2xpZ2h0IGNvbnRyb2xzIHdpdGggSW50ZWwgR1BVcyB3
aWxsIGJlIHVzaW5nDQo+ID4+PiB0aGlzIGludGVyZmFjZSBhcyBvcHBvc2VkIHRvIEBAIC03MzMs
OSArNzQxLDYgQEAgaW50DQo+IGludGVsX2RwX2F1eF9pbml0X2JhY2tsaWdodF9mdW5jcyhzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ID4+PiAgIAkgKiBwYW5lbCB3aXRoIElu
dGVsJ3MgT1VJIC0gd2hpY2ggaXMgYWxzbyByZXF1aXJlZCBmb3IgdXMgdG8gYmUgYWJsZSB0bw0K
PiBkZXRlY3QgSW50ZWwncw0KPiA+Pj4gICAJICogYmFja2xpZ2h0IGludGVyZmFjZSBhdCBhbGwu
IFRoaXMgbWVhbnMgdGhhdCB0aGUgb25seSBzZW5zaWJsZSB3YXkgZm9yIHVzDQo+IHRvIGRldGVj
dCBib3RoDQo+ID4+PiAgIAkgKiBpbnRlcmZhY2VzIGlzIHRvIHByb2JlIGZvciBJbnRlbCdzIGZp
cnN0LCBhbmQgVkVTQSdzIHNlY29uZC4NCj4gPj4+IC0JICoNCj4gPj4+IC0JICogQWxzbyB0aGVy
ZSBpcyBhIGNoYW5jZSBzb21lIFZCVHMgbWF5IGFkdmVydGlzZSBmYWxzZSBJbnRlbCBiYWNrbGln
aHQNCj4gc3VwcG9ydCBldmVuIGlmIHRoZQ0KPiA+Pj4gLQkgKiBUQ09OIERQQ0Qgc2F5cyBvdGhl
cndpc2UuIFRoaXMgbWVhbnMgd2Uga2VlcCBWRVNBIGludGVyZmFjZSBhcw0KPiBmYWxsYmFjayBp
biB0aGF0IGNhc2UuDQo+ID4+PiAgIAkgKi8NCj4gPj4+ICAgCWlmICh0cnlfaW50ZWxfaW50ZXJm
YWNlICYmIGludGVsX2RwLT5lZHBfZHBjZFswXSA8PSBEUF9FRFBfMTRiICYmDQo+ID4+PiAgIAkg
ICAgaW50ZWxfZHBfYXV4X3N1cHBvcnRzX2hkcl9iYWNrbGlnaHQoY29ubmVjdG9yKSkgeyBAQCAt
NzQ1LDcNCj4gPj4+ICs3NTAsNyBAQCBpbnQgaW50ZWxfZHBfYXV4X2luaXRfYmFja2xpZ2h0X2Z1
bmNzKHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3RvcikNCj4gPj4+ICAgCQlyZXR1
cm4gMDsNCj4gPj4+ICAgCX0NCj4gPj4+DQo+ID4+PiAtCWlmIChpbnRlbF9kcF9hdXhfc3VwcG9y
dHNfdmVzYV9iYWNrbGlnaHQoY29ubmVjdG9yKSkgew0KPiA+Pj4gKwlpZiAodHJ5X3Zlc2FfaW50
ZXJmYWNlICYmDQo+ID4+PiAraW50ZWxfZHBfYXV4X3N1cHBvcnRzX3Zlc2FfYmFja2xpZ2h0KGNv
bm5lY3RvcikpIHsNCj4gPj4+ICAgCQlkcm1fZGJnX2ttcyhkZXYsICJbQ09OTkVDVE9SOiVkOiVz
XSBVc2luZyBWRVNBIGVEUA0KPiBiYWNrbGlnaHQgY29udHJvbHNcbiIsDQo+ID4+PiAgIAkJCSAg
ICBjb25uZWN0b3ItPmJhc2UuYmFzZS5pZCwgY29ubmVjdG9yLT5iYXNlLm5hbWUpOw0KPiA+Pj4g
ICAJCXBhbmVsLT5iYWNrbGlnaHQuZnVuY3MgPSAmaW50ZWxfZHBfdmVzYV9ibF9mdW5jczsNCj4g
Pj4NCj4gPg0KDQo=
