Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ufEXNuMHVmoOyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:56:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2031075320C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:56:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Grm5l6Fx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBF310E04F;
	Tue, 14 Jul 2026 09:56:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51DFD10E04F;
 Tue, 14 Jul 2026 09:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784023009; x=1815559009;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MF6xn2x+ggTaJCsPsXfSv1LnftGxpX+cHCJ7QFS87Us=;
 b=Grm5l6FxIHnwZHKmv0pE+uy7S4M1qXi0f4tS+Rs/KeuFrtSwM3rrhh4k
 N3y2QX+LMK2Tsi5N1ALcemALyHCiTwCucMPjL/yV+KhU7nlg3Nq1almIa
 WbRtxTfYTD4qITf0QRzc00wt2oM3Va2FoQzobnEMMC+45cDejM/Gy5Fwj
 eSApTifC3DHIHyMKdZFXVca9QTslcQg44VMy1sKHwnQDW1PUnmTlNDHS/
 e4YN7IgdtM9qHWGvegbwTydicn75xNHtmogxlYAdqLZQCpNaHG/6xrHzW
 F3WcmCYDTH64iNoXoP/LQQzy5+6UAr32BewDzbny9ZkRbPyRpGhd25PhR w==;
X-CSE-ConnectionGUID: XrTqtg3tRVuR9Thb+PHIXw==
X-CSE-MsgGUID: yCsWT3FnRYC6epLigjO0xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="88319444"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88319444"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:56:48 -0700
X-CSE-ConnectionGUID: /CStf4DWSwWHSqheg95BDQ==
X-CSE-MsgGUID: 71T7nd6YQpS9L3ZEZWr2WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="279082068"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:56:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:56:47 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 02:56:47 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.44) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:56:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n0W3+7wCZjqLq3ZyIw6U7yAXEBnjWz8yzx/vHMBVZEV1HuzCHJr+Dwv82Yk0JTQ7cPiUEg8KboENUusAQOxf7ueXAOxOFKF27gtNibJL7NP0N9BaijDxJuBV3KjLdrUEd7nqGrzi0MHCmZroDFz9o/K4wjX9vqANUP2Kxp0knkKbMenbPBor1tpdkMU3P1Q5WQknNhO1y5rBV6Jd112Nvh8kWnISMlPLYaBsazCmSgGE/ZTjnvG4JUizGCbGGW/IU9pTfnt5edSqGYWhaKrybLCpKvPVfUKWsXBfnEBZkMTl5hiv0bQbYkzZyzy+68n9bAqDrKEM94DXIkWzN+G/cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k5JQrAmX5ajQAKb4bgKKac0XxmjOYvbWewDevUbGPVU=;
 b=TB7Rxs0fNrALkBSaamJgY6BQH4HZZlX/WFr5EoIZes0CEvS9KXu4jd2YEbISfvoWVKvHLr4uyF3tU1Gkt8pLNJaHF4+wVZm2Ud0NYgWA8X/KPg277IA/Hf7oJ5Ij5w/LT6SKc/kVkCxa0BUxcKUfhIcgQoqOq4waxzacVc5/E8yx6aLmHzG0ayeN1VgyN4l8ZIDDTP/Bp2xFlAVKqNQfMR2j8WvFihGwkV0QRPvVxALZ8rUiaWasu2XvUQylhO93WMMAgt1TJ7KUVJ65tJ2Es0KjGwWAPsTq7VynPkmCPIdwfp5af3VBMGvEDJHASnzW6xJ6msZvsoXHDMmcbg7tYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by MW5PR11MB5882.namprd11.prod.outlook.com
 (2603:10b6:303:19e::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.20; Tue, 14 Jul
 2026 09:56:44 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 09:56:44 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 1/7] drm/i915/wm: clear the plane ddb_y entries on
 plane disable
Thread-Topic: [PATCH v3 1/7] drm/i915/wm: clear the plane ddb_y entries on
 plane disable
Thread-Index: AQHc/QfItgagUgaexk2V0VLfw3XMVrZs88Pw
Date: Tue, 14 Jul 2026 09:56:44 +0000
Message-ID: <DS4PPFE901A304FCDF47341071E2B19C06AE3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-2-vinod.govindapillai@intel.com>
In-Reply-To: <20260615203355.218578-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|MW5PR11MB5882:EE_
x-ms-office365-filtering-correlation-id: 473208ba-a9de-43bb-a797-08dee18e3618
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|4143699003|56012099006|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: LZBustfKNyPMdDIsu25oF4cYZ1foEt1kUfMHXoUuC/tue4Iv97rFViZML/RmHJaOrOPSWE/uR7SdHk4rdA7lvbI2ZSvk2Z1WIIVoWHoxIi5Um8Tyc1mnEcWoTxK6Z0KPoG1SzOYCS0LS0kiJi9dtWwQCOZF+ZLwtT0M0DEQtFvSVJ0Eo8oyNI6hVCOs5BJW5lhpjdGDIhVcKtH+0CeT1IqmqK4VbaUgiY+ebZNQB4RlIVfikXdsbgpa5zI1+2wg9GzpjonlMyIiJny9gucemIVWIJDo8znSHrnfVL8kKIUDlZJumISv8cPREDLYoqesnvK4dmHBgI9ReTD5eMmktlrbYmFneWVlJ/SrBcgLwhLpZQvOEcEMdKXMkGXaRZIXAHWO2obpikqI005+oM5AxFehD6drdDIAV0WuqlguBlTOXg4l7FJAACneDpiJixNj42/kW9U8SIxeG+qCiNzqotc++ejQ6O+LcwhW6yj74LiscPQ0uShQllIeYccHaJ+XXxmGikeHs8NRoI8AN9lnkNcEfTsVUaLJbCg/72rZTXrpVg1pa2qs5guanCOJCFGO76ANpW5lxW3xUY+xYy0JhKCsk12wegRjxIrpsuN9jSsPaYfTV+PfrM9ySHn2ipR4JmSQ9A60QgS9jHWt3mb8eIAjy9oXwjBU5uUx558/W7hXdidEoMw4szwSKzoOPkAo7PaqYdfOEsiZjiQJ4OI19WX+OIZMhhaoFoYSwOFoAbUA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(4143699003)(56012099006)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LyCfOBji0ylVO2Zhfjh+Nboi/aeJocDx5GtsclO4zp8bz3zSWPwomab7kTMQ?=
 =?us-ascii?Q?ePt90SJ5Apoiq47pWePxuvqmbCS9FLNhQjBlKu9BvlMtVyN/AVqaprficyBo?=
 =?us-ascii?Q?cnyf0gU7TVYUMbU4WFs5n9z1IxSg/ANAxLXeMsknSufjocALJ6ogqxyy/Qgl?=
 =?us-ascii?Q?yOmDfZPLfnS/IA6FQNbpCW2mV9V05AXX1KOl2pCsDU4f8bUNJcprmdQW7zTs?=
 =?us-ascii?Q?UvH9Vq/IFVmzbY7WzySaQoS9uuUXehe22085heI9ozJt+0xxNa1KjWsvNYGz?=
 =?us-ascii?Q?lBLAJnU+gEEBcC1TIOMLk4FUsj3kyQTlenbIxtEC/VYcac4bUJfRRutx5bcg?=
 =?us-ascii?Q?j7FrQOO0W860BWTYEDuyzizwwbusnXKt5squf9LMalvG5x2G30Q+ZFg6ee7x?=
 =?us-ascii?Q?qL4Xfx9IuDKam2ubevN1JxpktLiRBaY+f9u6z941X+lfeXzMlLn6pY71q7wB?=
 =?us-ascii?Q?msteIS8bpQ+Zzf2+XFd/zQBmyTg2Wzj+6FYk1mJVpTGVYG6komBNFA+ejShh?=
 =?us-ascii?Q?4+WlXzl3JM5CzaOKIxH8O/6SzWIWM5xQ8wZmA4Ejc0JKMmKgM4aaKztBGHJU?=
 =?us-ascii?Q?SxyD6DYAnhvZX6gsyj9oHK65b68P7H45fDEkqdnPEWf1HiVP9tBmLnaKoNmo?=
 =?us-ascii?Q?u5Ps1rlXjpmfRU6evf1LuEuFHaViAv8ZRZjsuNEcxAR7yOWdY7yQcxHWEpA1?=
 =?us-ascii?Q?H3ydc50oghHwuJanFHoSCBFs5RjUM66lHhykMJmCfIoLmuvwLmXRt483YtqY?=
 =?us-ascii?Q?ukOPiJmBE7v5E7uUszJE0tI2nKlQsd6so7lIypGgeWJcZf+3OOGnS4qK4MIk?=
 =?us-ascii?Q?3Wc+I1bFoE+oKwJDspub1zEiOOuhKile+Bv2ySSQi5ZfvsqcZCQFc8na2tNb?=
 =?us-ascii?Q?zIVJAb1HgFcuOjynyM+96p2SKb6lUr1HCHHn+++rwAve1BB9+zMkZLbxqCH9?=
 =?us-ascii?Q?a3x2xLvpV8AEomnA3swcZEKQjffm+F6LHkFbLglWUI4kHoiPyCEMgZzEHmZo?=
 =?us-ascii?Q?NbydzmXoernEmC+bzhzC3KaJa9MuFckyqcCEb6DjDt5oJuQpiCqsJ7skVUBG?=
 =?us-ascii?Q?wW4dK7bYBMleLguk51VljnX29m/Q/i8bwU5BmhRUBN0Kr3i+7+QrZZXJd1V2?=
 =?us-ascii?Q?xdhL3z2peCs2m6tO2YxfUTpDsu8lk9SERLbLxoHkQDiCWHxGXO+nAbE9OOWG?=
 =?us-ascii?Q?U3AWXTVfKJghPnpZjqC6jGWkNdeBnQPYQpNe3cGaiSerFpodgEO383J5uUL8?=
 =?us-ascii?Q?Nu2oOUaIJ7DM3p6JzGGggya6TFkTiDQw0SO0l21QXHq8Emt4m/dCWhhSeiZG?=
 =?us-ascii?Q?OFlsLC3u2u5F+nwMNjVu+/VR5u7g2ViD7taBmnHPibC38KaOLNawBDQB7de0?=
 =?us-ascii?Q?YkiTSkB8734syAyO9ITJRb4EfDTMcCdy85W/zuCqQMVnF7v7/rRReqIvz9hm?=
 =?us-ascii?Q?RriKE0PHukDBmKfHh51VrshhDDEziyh1YsNQH8lQudCf/WeIVSKrh4/Prfae?=
 =?us-ascii?Q?6PtSW0g/OSxzpifiQus5nyPbAR9BoePf3u5ad/CcNfCzuZF3v7vMz7c/QQgk?=
 =?us-ascii?Q?yZwPsNZKLuluaquKHwS1DLxnWZ8XkVO0MGUJ9aFBya9TsDjZjMDJUyskf7ix?=
 =?us-ascii?Q?/d3w0RXNGDUSoWGlDV+wuOY+c1vRmZ/8H6c29ZEY02f2ZcJ3fMhzJQobhm2m?=
 =?us-ascii?Q?mCINboAsl7d+F6UQYaeONxHP3RPXELD+hrcLT/A479jkqu4ZXd/Eqi22o7QI?=
 =?us-ascii?Q?BVaEtfSggw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: oZYl657V0Ljv062/vBr2I3UVLwj/MFjsgZf8C7IgHQEqFrqy6Tr93KIT8Nm6JLE2nFnHacWeljC3awv95dhudtGbSb6lOl8+6srhpXkqCpKOyAb0+ULfxT51yqqL1LFEVfJjJfKmou2gidhWRrniwUEbt8eeeZ8R9bN6Buj0z6fGds6kO0hH8DUIYuik38pPbL9vcZ+pP9TO/2N/zqtxcgF/iMRJyraIPO6od23WMNUhH2ZDyaJr38m2QWP2Hjxh9AVFysPKrpTzGYVZ5OZxhs6kAWhnSHZyChpVSpnx5dULHow8Z5ZTKDITxY1MOx9YaTEHsNf0ptCEsTxXlL9vSw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 473208ba-a9de-43bb-a797-08dee18e3618
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2026 09:56:44.2364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DLy8jciBx98VAv0qR3Bl3qJD5XHSCSYW8hTmJQrdU/7oajygaFMLyQkbIKg6TLMUOchRGfxEKb1SHGpZuZTSFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2031075320C

> Subject: [PATCH v3 1/7] drm/i915/wm: clear the plane ddb_y entries on pla=
ne
> disable
>=20
> The UV/Y plane DDB entriess are never cleared on
> sk_wm_plane_disable_noatomic() and can leave stale DDB state for NV12
> planes on pre-Gen11 devices

I think you can also mention that instead of cleaning ddb_y the code ended =
up clearing ddb[]
Twice.

>=20
> Fixes: d34b59d5ba41 ("drm/i915: Add skl_wm_plane_disable_noatomic()")
> Assisted-by: Copilot:claude-sonnet-4.6
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 5a3677ea25b0..a4ce21d4c024 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3856,7 +3856,7 @@ void skl_wm_plane_disable_noatomic(struct
> intel_crtc *crtc,
>  		return;
>=20
>  	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[plane->id], 0, 0);
> -	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[plane->id], 0, 0);
> +	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb_y[plane->id], 0, 0);
>=20
>  	crtc_state->wm.skl.plane_min_ddb[plane->id] =3D 0;
>  	crtc_state->wm.skl.plane_interim_ddb[plane->id] =3D 0;
> --
> 2.43.0

