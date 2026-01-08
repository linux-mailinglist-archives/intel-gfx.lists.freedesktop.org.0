Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D494BD00F15
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 04:54:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E9EB10E2EB;
	Thu,  8 Jan 2026 03:54:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cpxiUkmT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB9D10E1AC;
 Thu,  8 Jan 2026 03:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767844443; x=1799380443;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PO4P8nQziaJDTB3C1wxunD9bVSauDfMc4kmGyoNqVGk=;
 b=cpxiUkmTWwkG5Gv6nwd5khSRZ+DRGV31s/cUQoj/gYNxSO4ct/zjVXA+
 +erON/X5PCkYq6qjIOL4c2cGLxr6Sxs/rJ23vszFXvVooG2tiUmc4oqiF
 eKZxxGzpbNfxNY828vhoVYm/uAX7WaCkeEmI1pG88Pc5FTETF9pRwmuFe
 4xa9C0rdgqudUHUlS6QaOCCtjv59+OlNdJ/efUvqZ5TAhsmQqPTxc2qZj
 P2L9YYPB1BFnW7b9sORklJAH+kXgjTUu/Exgs1O9CDHFreXYcEWPSrk9o
 dC/n0jjwHyuJ0aWvlC+v92ExmcQAJ2sPXKKrJ4ufhZQGIsTlJeB9eZcjO w==;
X-CSE-ConnectionGUID: vYow6TZWT7e/AhXx0Hxhdw==
X-CSE-MsgGUID: xxiBP7pJRVCSdqiuqWttFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="69293992"
X-IronPort-AV: E=Sophos;i="6.21,209,1763452800"; d="scan'208";a="69293992"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 19:54:03 -0800
X-CSE-ConnectionGUID: xR+Ex0M/TkKKvDCrCHX6SA==
X-CSE-MsgGUID: M2nREc07RfyccM7lnWVPkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,209,1763452800"; d="scan'208";a="226542849"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 19:54:03 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 19:54:02 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 7 Jan 2026 19:54:02 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.25) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 19:54:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aiX0Ok4+BvNcATKKB0IViKpRN2u3dOrZXbv7r1uxITmKHUxb/iEejIu2qIEG+5xQJSJT1MbYQF6ICo0BelXfl01g4wLkPyTFIoN97YFUtas6DzVLcAN5NOwzIfk9Mx/xvv+sC1x93qPqVeTjna1rZl/KBmeTadwyY/3RQOh7lehSrBhhgdu2lyzvhzDRI/h9XxKDz/Ipwj8JJXRbxN3oX/dfPw9k4yjrIojId8ztF5VkLLZoAbyeGBOquG/CLERTyMQx72Jw9Z7nSiDHCFKr5oWmnO5f72lrgQOa/ptyzMkncnJS1uXlkDmkqZyLeCli3jMtYUlcYC1XtzugoVgueQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ukXU7Y1G06LZANBYEhzI/WXWt/7KeYB98vkHco38n2M=;
 b=w2eeHcFhnF6I/LY5rRQhNWH/T+EH5Ap8S4AnBPNL+MeLs26Ahik+h8LaV+S7opEiEGG5kUzbgAj8olNeEKSXi+Ntm8oDyLuLUAJnnebyO8igcGlr4tALAID1BGsG57+KPPXU/rFTW56WrCgUvvIuXudr5AHm8NbF9YEeS7q5vvXdswn0t0BJrYg8lLCjbm9DafkcpGUUWqVTlNI7NHV8q24z3G23zkyzP5bWaShOPZRX6Ig/UhoTJKBsjYPLkDb/KF8MT5bpp8oWDyUD/iCPDH9HlHkdhzlhfM0W3GK39KjN8rzVhD4KwA/DDVmoP58KYOaPXQdFUOAbc6WxWSWrdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS7PR11MB6222.namprd11.prod.outlook.com
 (2603:10b6:8:99::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 03:53:54 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 03:53:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 08/15] drm/i915/display: Add helper function for fuzzy
 clock check
Thread-Topic: [PATCH v2 08/15] drm/i915/display: Add helper function for fuzzy
 clock check
Thread-Index: AQHcb2nvLkxPvjxCY0mvPDQf0EbuyLVHxWRA
Date: Thu, 8 Jan 2026 03:53:54 +0000
Message-ID: <DM3PPF208195D8DE6C38E02FC91FB1A3C2FE385A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-9-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-9-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS7PR11MB6222:EE_
x-ms-office365-filtering-correlation-id: 9840e18a-ad60-49c7-42ec-08de4e698af3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?SVdEPxK+CHdRg+6hse/gdLGKsGrRfW5ZyXeWjDEuQ6DuwvGrE8C5Mz8KIxLs?=
 =?us-ascii?Q?Sz2hTMuCR827SR/WhDC5QMzv+Vmi9RMwxxUH/MwlDSFNQtJGeuSProEqEmaW?=
 =?us-ascii?Q?/EfGHdGje0Ak9uI8+mtPjnSaJkH4wqEA1WaMY/0H2BD/ZqUoRE5EtJRyTCpa?=
 =?us-ascii?Q?CFjrIgOide3ICpY1nwuJCyQS0mB6ncuHBN+o4ksa9ZT5wuhkwRTDFpM7smpj?=
 =?us-ascii?Q?T3LSb9U4puyWF5VoTnTQ7Pg5lAmKJkLBtOhA5EMVfQmNX6eSizfAJ8CeSlAf?=
 =?us-ascii?Q?g7/0sqCu1ThPdepn1PEvcfv3ZBbtfIQRZ4sKBd6tlWpp52u6q4umTArq41mq?=
 =?us-ascii?Q?dCR9TlP7JTbr9gmoX1RCzHmMWcKG0WV8z0PQSyp1FLXYgEYpJkdDURr7E8f5?=
 =?us-ascii?Q?UU0/SkOQtIB90xoGPihWB23cpmmVsphhiZUM95Z2tx0+kpVEUaPL150veNTy?=
 =?us-ascii?Q?x8WkmuTpnOUJQT1LSuY98LII1xPzaYj+u0YaUUihL31bVCLXmuyV42v3f0e1?=
 =?us-ascii?Q?ra7yZQlfUUg9dmTuM4+p3yJYOzBEtp1ZJdCRED0UI2bh9tfFVkx1AkN6w6IX?=
 =?us-ascii?Q?lto/7e5/ESRAF5guytKMXECIaC2D+seEnWaH4QvqGvWAR1O9QLcfADftKNYi?=
 =?us-ascii?Q?EBqRZ/MeYoQiQPXoiquCEPMJAJq2jL5QdNQsNgWTJ8Ljcraq+jC122qRzcpZ?=
 =?us-ascii?Q?NKAYBF6jK5bxKVPjFihOxhgb0ybOYh6UlJZcWS+CUx1Fk46r5pZKrRODBOEm?=
 =?us-ascii?Q?+3XDM8TlZfOtrZWCuhwcKDdjVo1SZqdlMpA8s6GnRiTZhy6sO50FA8x13h61?=
 =?us-ascii?Q?TBgts2CQSVYDbmkdYJoF0AbToTdu4kmBkr+lBzPUWHb19rd8IgblfC75Ydar?=
 =?us-ascii?Q?A4Av07IM1WX312Pf/SDYR9CW/JVtz7jqss8fKW08w71g+WUaj2WeCj9Qp/ZJ?=
 =?us-ascii?Q?u8SfLUYcxi3N9qikjx7wicX4A2LUmfX+sznw43hn8lq8SzoUTLtl5qHQqM1h?=
 =?us-ascii?Q?ouiMgJ3DD//admi4D9glGfoFRNpEqSeiB/K4PmNdMDboXBv9JNwdyie707rM?=
 =?us-ascii?Q?ztGa9gjHc2ZzO61oCkxDwYuTVsYo0hLAV7pqoTuXLuDbEQZUZfLsinXuxLXy?=
 =?us-ascii?Q?vNB0LtC41OHreqaAfATsPryetgbNlGPHmqn31/WE8mG7Ikt5F+vyzMzwJGER?=
 =?us-ascii?Q?62mhpgnn9IBlm9cyzmMwF8pPMuDrZwU4bYmAMvob3bb9weHApmhpODgRBm1X?=
 =?us-ascii?Q?/Esz9YNm1h9jdXMNPSMayMNq6+4y6g4sddzIvuFhrlGE/5wceRqH1srgJqTI?=
 =?us-ascii?Q?RSXPJFukUscL+Z/raQZ/jIc5KzGIchOWSY9w5Gr4K8ZHMVnrpKlBv3lBu5Pt?=
 =?us-ascii?Q?WDORMVgRw34JBnYJKnGmTbKfcBBcGqL3yQtI1WQPq5VVOuO9nqsT5e2Op1zk?=
 =?us-ascii?Q?5Nv+rR/XowE60qMqxRuHjxk/ug0yQ6lda19Ecxg4i2iD8qqo24AhGYSBBszD?=
 =?us-ascii?Q?2Ak9MFpmzO7AeHYQ0/IhWaXZg+9B1YcUYv8p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RP9YXYJo7MdZDt1D/pdNvcVMcMTBSxonWXozpS5jhVy2Rjxl/K8UOpObuUID?=
 =?us-ascii?Q?Takdv5LbZtPorfj8EgzI/56W33uwGkibDsO7e0onjdZFBrfgHfdHSOhKjpSY?=
 =?us-ascii?Q?uFW1EqgXZD5qda74c1q3TLIVFJJ9pZWeffbdrJv/M6pggHP9jT0f0z0D/mJ5?=
 =?us-ascii?Q?dSZDlae2zN1INe4ZxW3mO2uwF1qJeG69jUOpgNh/MpCz6qKVOCVZOTTV4RQs?=
 =?us-ascii?Q?deJFekyk29QHKwnxTnq67w18osDpMxN2tZ+69Ldz1PhxXaLSKCB1p+mPo20d?=
 =?us-ascii?Q?tee5zjskzfJbT0O/xs3dXEyAzOPghWZg+3CnQaaqjCaXlyI9mwDvQgQ8ZIQ6?=
 =?us-ascii?Q?FQznLQ5GXB3rTyJpmJglG22/rp2prPCHrwfQs3Z6yq4RUHMCMebzWwU+w1E4?=
 =?us-ascii?Q?ts/Gd16MNvmgdhq+Lzba7IIxpXc+dJ6na2TP1tpHq/IQWOuv9bJYr0ujE9Vo?=
 =?us-ascii?Q?eAYRWmExMYclzDeNli0Gv6EU2eJarbhYjRvGT7IdFZH8EnXHCBVYvFFgG4tJ?=
 =?us-ascii?Q?MxApNjQ6eqEna1qYHkXJEuW+wV4PupDnP9DYVu9JOnx5BCeoEOl2rg0IwlQa?=
 =?us-ascii?Q?35dW8mp7XvWmFzKB2IZbLHyC8uiDsQJTYEUvW0eR1GdQ10eF5Zj3PC/NvJPQ?=
 =?us-ascii?Q?Aeb0hpU9l15sLwcpud711cEQAyaRwMR7x8Bf19I+Gonmy8pQDjmv0mMMuKe/?=
 =?us-ascii?Q?LcN7JO2/t3Uq76EpomyfgAyZ9it1Y8EKyhk7CwX+Harqo0lS5guF1Z43rTiW?=
 =?us-ascii?Q?tL54VxmN0sk3PWN44yDBVf5C38zVVBzY2FR47RdE0J7ZZ6GHRiKzAvIW0GZ5?=
 =?us-ascii?Q?uJxTUJWUJ/aRHV/WjRlb4mFZCTqSxjoHP338d6Y9w5MNZ0nXKcBjQMk7ERZQ?=
 =?us-ascii?Q?tz7whMdFYHSe1qIJSFFU6CtSVMD/XmLLbwgEgu89gdye9G1+HEELZZKEE6FY?=
 =?us-ascii?Q?lXVUMXn0HGoZ8dezl+EluXpsJyBue/w+44wsxVZXM6oXARlHd3VsA17990Cc?=
 =?us-ascii?Q?0UpqglXAW91I8SI5+mSOkOmkKDfb9Mi0fndB1w5OkvDoBu5vtNybMPUZaT9D?=
 =?us-ascii?Q?QUBkhjg1d3d2EwVrxyxoz7rH8D9HVsgY3B5pteD9cG668pPry69vn6P+7Yop?=
 =?us-ascii?Q?Tp20nURGxhqO8/MbthScl1YDdp0q+/G1phU0/VpEdiYwVTlur5w4o1p8mCBe?=
 =?us-ascii?Q?Rk7tpw1GRFih7ve38QcInw227WQMJzGcQ868E0NqL8Yz1WdJPgpOh7kBpb/M?=
 =?us-ascii?Q?JAkR+0BVoy+9zuG5WyVO+nXsvDvPQ5kyFSsNGNmEeQXevivlzP53NHmowi2T?=
 =?us-ascii?Q?9DN/Z4shBtC9cEl6g/6OoD5BaZwk3rfXnfg6mIUVVKgeZS4exq0Pc+OLAskd?=
 =?us-ascii?Q?0atLxTvFUpZvWRGE6E/X0X8Ew71+LKLLv7ZkfGUxOinMeQVJCqkKllHKYEiA?=
 =?us-ascii?Q?ML8DtI87NvZUbADSJXbtEZ9chw+UHr7/7JO5104YafjS5eDSxtkuvm1Yh4Dn?=
 =?us-ascii?Q?Nc+YmsLH8/10mCmfT7ZOOdk/HVh9xZ/kjHhuGF12dU9Tmfcl6VLdZ5/Rlenc?=
 =?us-ascii?Q?YthqWYi54DlEelspAnLn93GQLmy34V/uQUvI1X6o8TDrwxB86zUMpjeH8ee3?=
 =?us-ascii?Q?VUwxXeW1EDoTuRk1FzZv9E8dWTbzmq4iHxCy0mCH/CjvQlZuwXwmqTbYICTG?=
 =?us-ascii?Q?w6I0EIyt+zU88gLvfp+VPQ9lSwN1CdmSo5HfibyAibEVMHchC65BZnPohXOl?=
 =?us-ascii?Q?msXQ1WdWUw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9840e18a-ad60-49c7-42ec-08de4e698af3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 03:53:54.2817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v4N6deaADOpYfZr5mM3oXPYX10raGfUX4Zhh5HAnHCAQitkrBIrJaphT+SFFIS5BxvFOmT+eGym+x8LREzF5/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6222
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

> Subject: [PATCH v2 08/15] drm/i915/display: Add helper function for fuzzy=
 clock
> check
>=20
> The hard coded clock rate stored in the PLL state will be removed by a fo=
llow-
> up change. Prepare for that here to calculate instead the clock from the =
PLL

Maybe fix the sentence up here a bit

> divider values in the PLL state. Since this calculated clock can have a +=
-1 kHz
> difference wrt. the request clock, use a fuzzy check when looking up the
> corresponding table entry.
>=20
> v2:
> - Use the stricter +-1 kHz allowed difference.
> - Derive the clock from PLL dividers in intel_cx0pll_enable().
> - Move corresponding fuzzy check for LT PHY PLLs to this patch.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 26 +++++++++++++++++---
> drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
> drivers/gpu/drm/i915/display/intel_lt_phy.c  |  6 ++++-
>  3 files changed, 28 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index ab402bd8a125..4d006c14c049 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2211,6 +2211,11 @@ static int intel_c20pll_calc_port_clock(const stru=
ct
> intel_c20pll_state *pll_sta
>  	return vco << tx_rate_mult >> tx_clk_div >> tx_rate;  }
>=20
> +bool intel_cx0pll_clock_matches(int clock1, int clock2) {
> +	return abs(clock1 - clock2) <=3D 1;
> +}
> +
>  /*
>   * TODO: Convert the following to align with intel_c20pll_find_table() a=
nd
>   * intel_c20pll_calc_state_from_table().
> @@ -2224,7 +2229,10 @@ static int intel_c10pll_calc_state_from_table(stru=
ct
> intel_encoder *encoder,
>  	int i;
>=20
>  	for (i =3D 0; tables[i].name; i++) {
> -		if (port_clock =3D=3D tables[i].clock_rate) {
> +		int clock =3D intel_c10pll_calc_port_clock(tables[i].c10);
> +
> +		drm_WARN_ON(display->drm,
> !intel_cx0pll_clock_matches(clock, tables[i].clock_rate));
> +		if (intel_cx0pll_clock_matches(port_clock, clock)) {
>  			pll_state->c10 =3D *tables[i].c10;
>  			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
>  			intel_c10pll_update_pll(encoder, pll_state); @@ -
> 2710,6 +2718,7 @@ static const struct intel_cx0pll_params *
> intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	const struct intel_cx0pll_params *tables;
>  	int i;
>=20
> @@ -2717,9 +2726,13 @@ intel_c20_pll_find_table(const struct
> intel_crtc_state *crtc_state,
>  	if (!tables)
>  		return NULL;
>=20
> -	for (i =3D 0; tables[i].name; i++)
> -		if (crtc_state->port_clock =3D=3D tables[i].clock_rate)
> +	for (i =3D 0; tables[i].name; i++) {
> +		int clock =3D intel_c20pll_calc_port_clock(tables[i].c20);
> +
> +		drm_WARN_ON(display->drm,
> !intel_cx0pll_clock_matches(clock, tables[i].clock_rate));
> +		if (intel_cx0pll_clock_matches(crtc_state->port_clock, clock))
>  			return &tables[i];
> +	}
>=20
>  	return NULL;
>  }
> @@ -3252,7 +3265,6 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
> static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  				const struct intel_cx0pll_state *pll_state)  {
> -	int port_clock =3D pll_state->use_c10 ? pll_state->c10.clock : pll_stat=
e-
> >c20.clock;
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder); @@ -
> 3260,6 +3272,12 @@ static void intel_cx0pll_enable(struct intel_encoder
> *encoder,
>  	u8 maxpclk_lane =3D lane_reversal ? INTEL_CX0_LANE1 :
>  					  INTEL_CX0_LANE0;
>  	struct ref_tracker *wakeref =3D
> intel_cx0_phy_transaction_begin(encoder);
> +	int port_clock;
> +
> +	if (pll_state->use_c10)
> +		port_clock =3D intel_c10pll_calc_port_clock(&pll_state->c10);
> +	else
> +		port_clock =3D intel_c20pll_calc_port_clock(&pll_state->c20);
>=20
>  	/*
>  	 * Lane reversal is never used in DP-alt mode, in that case the diff --=
git
> a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 9f10113e2d18..3d9c580eb562 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -43,6 +43,7 @@ void intel_mtl_tbt_pll_enable_clock(struct intel_encode=
r
> *encoder,
>  				    int port_clock);
>  void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder);
>=20
> +bool intel_cx0pll_clock_matches(int clock1, int clock2);
>  int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
>  			    struct intel_encoder *encoder,
>  			    struct intel_dpll_hw_state *hw_state); diff --git
> a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 64e223f35fdf..e33f6f48a6ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1792,6 +1792,7 @@ int
>  intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>  			    struct intel_encoder *encoder)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	const struct intel_lt_phy_pll_params *tables;
>  	int i;
>=20
> @@ -1800,7 +1801,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_stat=
e
> *crtc_state,
>  		return -EINVAL;
>=20
>  	for (i =3D 0; tables[i].name; i++) {
> -		if (crtc_state->port_clock =3D=3D tables[i].clock_rate) {
> +		int clock =3D intel_lt_phy_calc_port_clock(display, tables[i].state);
> +
> +		drm_WARN_ON(display->drm,
> !intel_cx0pll_clock_matches(clock, tables[i].clock_rate));
> +		if (intel_cx0pll_clock_matches(crtc_state->port_clock, clock)) {

Having cx0pll_clock_matches get called in lt phy seems a bit weird
Was thinking if this function belong in Intel_dpll.c intel_dpll_clock_match=
es() sounds
Better and generalized

Regards,
Suraj Kandpal

>  			crtc_state->dpll_hw_state.ltpll =3D *tables[i].state;
>  			if (intel_crtc_has_dp_encoder(crtc_state)) {
>  				if (intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_EDP))
> --
> 2.34.1

