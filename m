Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKblIwYgBGpyEAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 08:53:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D7652E49E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 08:53:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BFD010ECD8;
	Wed, 13 May 2026 06:53:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VuOeyIuk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4331E10ECC8;
 Wed, 13 May 2026 06:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778655232; x=1810191232;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6sfPIPE/vPtGEjWaMgEM6hIBGGu/Ohn289wQkpRjMsk=;
 b=VuOeyIukB6DzE7UZFXn9GslZGpP/NIj0fdXoGmzk4LyZr2U9dhMX9YwJ
 6Np1qzXUNdLjEq/9/aYZsWfMspvKltD9YyKv8/gwdundclUBu1CaEbSdx
 vXwQr/WnHBVO2piB2+RySZn48964MkcUd9MX+in7oeGdFrdywXTNu6amu
 h+Uve9LbCASHGVC9QQDcxBO/DwOA788uFp20k2NaC/E5P3J9eWCQj6yzU
 0dKMGVX6al/GNCby1V7dMUl9JWsWEPUebV1/gXRVJ9VCFyhVhA5ILtWF9
 Oj2q5ttYU9LpKNTtMFO1ZNjt4oV6jWJzgXCBVKOkPQTJS6mmqGkHwPaDm Q==;
X-CSE-ConnectionGUID: iGDIt1UBT9CL5NJbcen0EQ==
X-CSE-MsgGUID: RK/XvbYpTt6pGUQAtT04gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="105033464"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="105033464"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 23:53:52 -0700
X-CSE-ConnectionGUID: mzosOsapT1e/G7+iElOAEA==
X-CSE-MsgGUID: U2Ih2ODmSwaJ5ybpxMWxTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="242350525"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 23:53:51 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 23:53:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 23:53:51 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 23:53:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ORlh2q9nc+VBOinfvCf3A4WIemGVQX5ZKOGFUGD4qiCTkd44IHjRutH0kalNE/qA1jjtLMLJezxAN9FN2L8v194Tcp8q1uUyVN0xkna3mhHbVBovxd+UUID6vpk1YrdcayXak0TKNQPlOK23a61IEl1TnIKiDKyJtYUfcpVbgCobaDynw4AeBbFUUkrMcuvfxcJIKsr7l1J83L3JhxWN6Gxx4fQUCfnr04pmg+4N7a9HNc+UctJZBzJOHaKpYhC58J0so2mpv5gCTnoJ0z7Dq22Lj/gFpyDwyKS7x1BAoPz+Rdr6Jxg+QZoSsy6ITAqWwZ95aPnuAe7wJVwGLG3gaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6sfPIPE/vPtGEjWaMgEM6hIBGGu/Ohn289wQkpRjMsk=;
 b=XGUch3APZnRkVsvKCFnETkTeiHt9LKdVDoeHgM2cezxLfy9So4XBiEu8JUxxGe7D42Ltm3VDEogiIBpewJXBY5WcFDk9OpjBO/dIY493JGbQcG7oojYDRZBDEqzzV8bC27cFUnqZBwtmPb1Zo0qP8+Yi2ht1tqEhURMJSXpHpBeBYtxVbMiThNey5dlnAs1NV71pg4/NNs2ly+oDW+M020UxJyNUhvFfrqYeZhHmbwpUzFu9CVSV1ewNM0jgVDByw7jNLdcjMRZY2r5hArw1d5v9FUvR+cRADyC2PWzVoq86xAARoNmtOYvF+XbIGFyqA3RlTNeaUCrQp47FVmEYXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF57F27BA08.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::82b) by CO1PR11MB5140.namprd11.prod.outlook.com
 (2603:10b6:303:9e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 13 May
 2026 06:53:48 +0000
Received: from SJ5PPF57F27BA08.namprd11.prod.outlook.com
 ([fe80::282c:f936:28b9:d506]) by SJ5PPF57F27BA08.namprd11.prod.outlook.com
 ([fe80::282c:f936:28b9:d506%6]) with mapi id 15.20.9891.021; Wed, 13 May 2026
 06:53:47 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Aaron Esau <aaron1esau@gmail.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>, "tursulin@ursulin.net"
 <tursulin@ursulin.net>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 1/3] drm/i915/cx0: check PLL ACK bit in
 intel_cx0_pll_is_enabled()
Thread-Topic: [PATCH 1/3] drm/i915/cx0: check PLL ACK bit in
 intel_cx0_pll_is_enabled()
Thread-Index: AQHc39BVPLjSubGTTUObsFGPe2gve7YLiCuA
Date: Wed, 13 May 2026 06:53:47 +0000
Message-ID: <SJ5PPF57F27BA0870B2475230D097682F9BEF062@SJ5PPF57F27BA08.namprd11.prod.outlook.com>
References: <20260509162407.510539-1-aaron1esau@gmail.com>
 <20260509162407.510539-2-aaron1esau@gmail.com>
In-Reply-To: <20260509162407.510539-2-aaron1esau@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF57F27BA08:EE_|CO1PR11MB5140:EE_
x-ms-office365-filtering-correlation-id: 0ae08d69-ce14-428a-d0f6-08deb0bc6208
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003|38070700021|11063799003;
x-microsoft-antispam-message-info: v+idv9bcxxtOcws+GPtFlVuHHCLiweuOpPq1fQfn5qiM0KB/i4aydNqVHpw+az5QYJAkOTRUwWNpjcZUbydp0h8N2FFIsmmyVVvV1BMaI/Wl/8uQfyIJKFe3/ZvaX0bzjMefAtx7UmZYp3dFf93C96HC6+yjoXja4Gq3Vm2GHcaTsCWbR2U1O1jiz2guTgsisXkFD4+1ac+xA28KitNtZCFuhDWZHanWzCt8/VGYZM3OwNOV7FA3mcjDbxdR0vOhD0+4DF+UbJu3qidRgSIt2WtOK7SpVRMNQy/Stuqoehi7YPolJpqeKBFJBM8E5zYW7XqFPD7WTkh+WWvDhOuLlbn5CjoXR0TwcPcyZCV8YNEvDad4FYf0lAP22OSkS7zkUP2O1unGdxRkLVxSMUMtE5MMriv4+fHPmJuvVL+Vl78rYg7zu5ib96CpEUPGH99buMYHaaJGu9alYr1GJAYrUtrrWhwq0uD9aER1hPYdJh4ktfD2WFBlP2L0zsAYjhZPPF5w5ShkKVpVqmC5Cr2TIKtKvLf53WH0M+68gvDxZmQgVm86N6w1tKD1zCOX6T2M5sGPg/ywCjqzdCo5xORS+dPswaPk8wtuQV2u1nnjU/MyTY1rDmqJP8xk1BQv29j13cHi8sRZoEikdzIvfxeotn2L/B/F3OQyuAJjqtWP+xTMZdzqJMi32wUU5xsbvfIbS8PBBA0wVxLRR52n7O9qeFU/b9v0NVpxcT67X4QkWqW3c5PGd2qlDyhuMLpNAONS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF57F27BA08.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003)(38070700021)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZEZpdnF5Q1gzTkZDU3ZaZkl2MjdSRzRBNXQvRWxnSUwvNHU1cFRCRlhMRXlU?=
 =?utf-8?B?MC9wa2VkQ2JzOHR6cGEvR1BTVFJjY1dFTDF3NnhRSUU4OU0yc0U1bmczYlFO?=
 =?utf-8?B?NzBNbFgrTFJkTjd3dEhhMmE3ek5rK29DelZ6ZDd5L29uRUhqOVhpRm1meTZ5?=
 =?utf-8?B?NjAzZzkwTFB4Q0wrOUdUeW5LWkVEUVU2VEdjdHZoV0JPNTZqaXpzUXhVQUUy?=
 =?utf-8?B?ckJLOTVmWVVKajVLSG1CZEQ4dTFoZFZ1alJxK05hVEdsa1FZV01PWWw1aVFl?=
 =?utf-8?B?RHhmNDk4Z2xmbDQzdm9Rb3dDL2hWVE80SVczY0x5dUxzRzNmWWJNeVhUeGlU?=
 =?utf-8?B?L0xsVGQrQjFjaWNZakVBVEliR0s2Q2VCRVg1aHcySGt5UzY3MitFaVlOZmxP?=
 =?utf-8?B?WFN3M0FTNlV3OE1SL0Fha2lKS1ZJVUF3MVkzY1FoZmtSanExUCs1alVTUUxp?=
 =?utf-8?B?MGlzdytya2pnQUlodFFIUVFvaCt1Qi9vOGgwSGNCTGg5TkgvMjJINUpsM2Jj?=
 =?utf-8?B?ZkJwNnJYOGo2aE9Wb1J0S1BHV3VHUGtFQW5XN2pQMHp6TEtTMG9OWWE0akNQ?=
 =?utf-8?B?a0tBaENjU1ZiTEhVODRGSkVZVVRVaE1oSDhQbFJNUDc2b2x5S0ZhcHFZTEpR?=
 =?utf-8?B?Tkd6YzMvZThueGxnWERLTTRpaU96d0VobjNPMVp0c3MxTzVjVVg2MFRmckxR?=
 =?utf-8?B?MXBLd0oxMFZaRDZhdG1iWE9ZSUJ3aHFTYjVTWXBjUW56WTQ5by81NFF0R2JM?=
 =?utf-8?B?Tml2U0dib2poazVsdURCcFpvV29sUnJZdHZPTkltRHpmcHhBT1Uwc0UzV2lr?=
 =?utf-8?B?N0ZWRDNTa2ludkxZUTM5elBxN0ZxTEdBdDl1RWZwTWpkM0IxQ3ljRnl6WlVp?=
 =?utf-8?B?ZWxoelk4VFNJWGpsenZRdDNEenNIVGd0T05zeUh0bC9PRG1oLy82YkRLOHRB?=
 =?utf-8?B?Y2tmSDZNWTJieGx4cmJQK0t6eEd2T2lQRS8xS2FBeVhPcDk5WXVDNndFQVB4?=
 =?utf-8?B?cW5DcmFnclB2VmdIVVdsZjQxYS96cVEvZ3hVRW54eGdLUXUyRWRRYnovYk5x?=
 =?utf-8?B?WGVMRVo2UnY0dXFRd1hYT2dmT2EzcTJibXBwUW9ScTIxRmlFUjNGRE5FMEhB?=
 =?utf-8?B?dCtPOEdyRDZRR1phR0VaVnJmRHRiUm1KN0Jva25RaG45dkxseHlyOGNpSjdZ?=
 =?utf-8?B?VnVXRXBqT3cyZ1d2RXM2Y05QaGVJaGl5OCtPQVZaSlg3Q1RhbFk4NlVscVpV?=
 =?utf-8?B?c3ZsNndVaXdhSlFrTDRaQWtsSDZyMi92c2NkUml5UmdRb2tZcHBqTVZ5elpr?=
 =?utf-8?B?WUdad0M3a2ZXczhnbkZTZHFyMnQzeU9XQnA1TWRMUWhmNEFoTmw1Q21Nandu?=
 =?utf-8?B?Y1psV1F4WTlpYk9Hd01TbWwxWjlKc3FPRlRQZWZjYWlHU1dPK3Z1MGZwMHZN?=
 =?utf-8?B?UVZJZUxtMHI3Yzl1cVlHbS9nRzNTbFdEWmxHcHZIaHMwV2d6ZFVGaGZ2b2xZ?=
 =?utf-8?B?SGkzU3RJbjdERUNTSEk5R20xZGdleDR0WUdPZVBaZmx2NlpYTEVTSWNiSkZW?=
 =?utf-8?B?Z1pkU1RFd2dmOVk4Qm9zVEpJSkVqLy9uODNZcDVySTBGK3U3Z01KcXRleEtV?=
 =?utf-8?B?UnpTRWd1MkZRbFF2NTJaUnFsT2JWUWRxVzFWVlg3ZmJaZTMyYnNpbTBvUVJ4?=
 =?utf-8?B?L2RGWXR5OW9FenpJeEhlZE4zblM4dkhlRHMvSW13WXpLajVBNVpwMnlqVlI5?=
 =?utf-8?B?bUFvVzZHQkZhWXgza20zUnZrbWNabWpqOStCYlM3a3Jtb2l3cmkyZ0RyOTJS?=
 =?utf-8?B?Z3J5bEJRQWpkQXZTRWdEVmVzdnFWMkpuL0xtRDMxd004NXZRMVRYNThGUzJv?=
 =?utf-8?B?d2tPcUc3VkdFRngyNmZPZElwSXJZTVgwM2xUTUFHUnFKaE91TEE1aDUwL3pC?=
 =?utf-8?B?Q2JoWnZmUE5oWDZIcmNyMmFndHJpa0R2QUM3MHlMaGRiQTZJMisyTGo0Rmo1?=
 =?utf-8?B?WmFhcXpuWlNhSnhGbnAwWkpJV24ramNVbE1xSWl6YzVlc0pZdUh0VThFaWV0?=
 =?utf-8?B?ZWtLbU0veWZJN2ZyeXdZQkFwdEFJRWlNdWwzcUxMZm1FbEhvcHlNcXV3WkMy?=
 =?utf-8?B?dmwxRXRhbnE1aDVXK0t6YzZIbDNoWDBOVFBLeVI2dCtDd3hrUG1Mem41ZDZB?=
 =?utf-8?B?d244QjVERlFneUdlUnltaXE5NHhtUlhHVUtmelYvdnMweDdEa2FZdU4zVVdJ?=
 =?utf-8?B?cVlGTW5vbHRsbWs2V3ZBRVhMcGtHRFB4Nm8rRmZJU0Jza1NOVXNXNFZjczVr?=
 =?utf-8?Q?LilHW6STW15Odzausm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HWvgeqhcm67xoo/ITOF0mdP5ao+HRQeS8hVlF6aq8RDJniAQ5Q5W1ZRo6kC0PUXcat/TUmbjNaCE6WoGP+icWaGXyvdz4bQ0f+0KhN4D01uBsNVt2NXvATzMi2ICVZvcqH/KcI/Cjk8qkKJ4ZacaSut8lHm5a3jU7OO6kf6nmGkbGWuBq6OwNSIRyz5vq16Jy+Dtnr0Qm9bGvJSfQwXJ0U7ne8jfOk6W8Of6lklHS4VWacfjaIje6M1fEN1+JNxopEGFzedDO1cOrJCR28EnP97K5MtU/djDlWhH6SVM9QeWRfX1z8vtR9+dntx5hLhtuwbKKjdLhbUERrYv5lFGgw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF57F27BA08.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ae08d69-ce14-428a-d0f6-08deb0bc6208
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 06:53:47.7597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xB3j37j8rQlZZMFK6sPZjDpvWiGC9XwHNiYh5wZUic6WHc38IL8gEx43lJnjh4Pq+cbP23ueh77iXl4fOYz7Bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5140
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
X-Rspamd-Queue-Id: 40D7652E49E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,ursulin.net:email,SJ5PPF57F27BA08.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBYXJvbiBFc2F1IDxhYXJvbjFl
c2F1QGdtYWlsLmNvbT4NCj4gU2VudDogU2F0dXJkYXksIDkgTWF5IDIwMjYgMTkuMjQNCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgamFuaS5uaWt1
bGFAbGludXguaW50ZWwuY29tOyBWaXZpLCBSb2RyaWdvDQo+IDxyb2RyaWdvLnZpdmlAaW50ZWwu
Y29tPjsgam9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbTsgdHVyc3VsaW5AdXJzdWxpbi5u
ZXQ7IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsNCj4gc3RhYmxlQHZnZXIu
a2VybmVsLm9yZzsgQWFyb24gRXNhdSA8YWFyb24xZXNhdUBnbWFpbC5jb20+DQo+IFN1YmplY3Q6
IFtQQVRDSCAxLzNdIGRybS9pOTE1L2N4MDogY2hlY2sgUExMIEFDSyBiaXQgaW4gaW50ZWxfY3gw
X3BsbF9pc19lbmFibGVkKCkNCj4gDQo+IGludGVsX2N4MF9wbGxfaXNfZW5hYmxlZCgpIG9ubHkg
Y2hlY2tzIHRoZSBQQ0xLX1BMTF9SRVFVRVNUIGJpdCBpbiBQT1JUX0NMT0NLX0NUTCwgd2hpY2gg
aXMgc2V0IGJ5IHRoZSBkcml2ZXIgZHVyaW5nIHRoZSBQTEwNCj4gZW5hYmxlIHNlcXVlbmNlLiBJ
dCBkb2VzIG5vdCBjaGVjayB0aGUgUENMS19QTExfQUNLIGJpdCwgd2hpY2ggaXMgdGhlIGhhcmR3
YXJlJ3MgcmVzcG9uc2UgaW5kaWNhdGluZyB0aGUgUExMIGFjdHVhbGx5IGxvY2tlZC4NCj4gDQo+
IFdoZW4gdGhlIENYMCBQSFkgTVNHQlVTIGlzIHVucmVzcG9uc2l2ZSAoZS5nLiBhZnRlciBhIGZh
aWxlZCBzMmlkbGUgcmVzdW1lKSwgdGhlIFBMTCByZWdpc3RlciBwcm9ncmFtbWluZyB2aWEgTVNH
QlVTIHNpbGVudGx5DQo+IGZhaWxzIGFuZCB0aGUgUExMIG5ldmVyIGxvY2tzLCBidXQgaW50ZWxf
Y3gwX3BsbF9pc19lbmFibGVkKCkgcmV0dXJucyB0cnVlIGJlY2F1c2UgdGhlIGRyaXZlci1zZXQg
UkVRVUVTVCBiaXQgaXMgcHJlc2VudC4gVGhpcw0KPiBjYXVzZXMgYWxsIGRvd25zdHJlYW0gc3Rh
dGUgcmVhZG91dCBhbmQgdmVyaWZpY2F0aW9uIHRvIG9wZXJhdGUgb24gYSBQTEwgdGhhdCBpcyBu
b3QgYWN0dWFsbHkgZW5hYmxlZC4NCj4gDQo+IENoZWNrIGJvdGggdGhlIFJFUVVFU1QgYW5kIEFD
SyBiaXRzIHNvIHRoYXQgYSBQTEwgaXMgb25seSByZXBvcnRlZCBhcyBlbmFibGVkIHdoZW4gdGhl
IGhhcmR3YXJlIGhhcyBjb25maXJtZWQgaXQgbG9ja2VkLg0KPiANCj4gRml4ZXM6IGJmODUzMTk5
MDM4MCAoImRybS9pOTE1L2Rpc3BsYXk6IEFsbG93IGRpc3BsYXkgUEhZcyB0byByZXNldCBwb3dl
ciBzdGF0ZSIpDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+IENjOiBNaWthIEthaG9s
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBYXJvbiBFc2F1IDxh
YXJvbjFlc2F1QGdtYWlsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N4MF9waHkuYyB8IDcgKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+IGluZGV4IDcyODgwNjVkMi4uNGNhY2VhODAyIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0K
PiBAQCAtMzU4MSw5ICszNTgxLDEyIEBAIHN0YXRpYyBib29sIGludGVsX2N4MF9wbGxfaXNfZW5h
YmxlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikNCg0KaW50ZWxfY3gwX3BsbF9pc19l
bmFibGVkKCkgZG9lcyBub3QgdGVsbCB1cyB0aGF0IHRoZSBQTEwgaXMgZW5hYmxlZCBpbiBIVywg
b25seSB0aGF0IFNXIGhhcyBzZXQgdGhlIGVuYWJsZS9yZXF1ZXN0IGJpdC4gSSBhZ3JlZSB0aGUg
ZnVuY3Rpb24gbmFtZSBjb3VsZCBiZSBjbGVhcmVyIGFib3V0IHRoYXQgc2luY2UgaXQgcmVhbGx5
IGNoZWNrcyB3aGV0aGVyIFNXIGhhcyBpbml0aWF0ZWQgUExMIGVuYWJsZS4gR2l2ZW4gdGhhdCwg
SSBkb24ndCB0aGluayBpbnRlbF9jeDBwbGxfcmVhZG91dF9od19zdGF0ZSgpIG9yIGludGVsX2N4
MF9wbGxfcG93ZXJfc2F2ZV93YSgpIG5lZWRzIHRvIHdhaXQgZm9yIHRoZSBIVyBhY2sgYmVmb3Jl
IHJlYWRpbmcgc3RhdGUgYmFjay4gRm9yIHRoaXMgcmVhZG91dCBwYXRoLCBjaGVja2luZyB0aGF0
IGVuYWJsZSB3YXMgcmVxdWVzdGVkIHNob3VsZCBiZSBzdWZmaWNpZW50Lg0KDQotTWlrYS0NCg0K
PiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNv
ZGVyKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19k
aWdfcG9ydChlbmNvZGVyKTsNCj4gIAl1OCBsYW5lID0gZGlnX3BvcnQtPmxhbmVfcmV2ZXJzYWwg
PyBJTlRFTF9DWDBfTEFORTEgOiBJTlRFTF9DWDBfTEFORTA7DQo+ICsJdTMyIHZhbDsNCj4gDQo+
IC0JcmV0dXJuIGludGVsX2RlX3JlYWQoZGlzcGxheSwgWEVMUERQX1BPUlRfQ0xPQ0tfQ1RMKGRp
c3BsYXksIGVuY29kZXItPnBvcnQpKSAmDQo+IC0JCQkgICAgIGludGVsX2N4MF9nZXRfcGNsa19w
bGxfcmVxdWVzdChsYW5lKTsNCj4gKwl2YWwgPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIFhFTFBE
UF9QT1JUX0NMT0NLX0NUTChkaXNwbGF5LA0KPiArZW5jb2Rlci0+cG9ydCkpOw0KPiArDQo+ICsJ
cmV0dXJuICh2YWwgJiBpbnRlbF9jeDBfZ2V0X3BjbGtfcGxsX3JlcXVlc3QobGFuZSkpICYmDQo+
ICsJICAgICAgICh2YWwgJiBpbnRlbF9jeDBfZ2V0X3BjbGtfcGxsX2FjayhsYW5lKSk7DQo+ICB9
DQo+IA0KPiAgdm9pZCBpbnRlbF9tdGxfdGJ0X3BsbF9kaXNhYmxlX2Nsb2NrKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyKQ0KPiAtLQ0KPiAyLjU0LjANCg0K
