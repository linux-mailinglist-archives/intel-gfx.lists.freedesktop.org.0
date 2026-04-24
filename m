Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zbDJFxxW62n2LQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 13:38:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8CE45DD82
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 13:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D6C10F509;
	Fri, 24 Apr 2026 11:38:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KJCfYeJP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F315F10E3CA;
 Fri, 24 Apr 2026 11:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777030680; x=1808566680;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SeynWYHKvUP0+HD7XuqSvDiJ9gXLOePoNoEvdP5jSSE=;
 b=KJCfYeJPesp2cPpf/sXirOwqaW0+YeinQDy17+4xCSX8Er3TuN1d1KBS
 SegX9XAS0rqcNqdzuVO5TU4gBVjx8ymy45G36vJKWSJPnHTUL5Ac8hofw
 RK+e8/fTKXbYLiFgqWhhuNtQMaRggGAtuOhZuPqudN6VXi87b0d3xZjit
 iSX4ec8M1idVIFmz8TBM875q58aXddE740d8HD65p7CItkElhzZ0mTum8
 SAPv+aReK9129f5f1cDC/yjEAirXt5MLJr0ltLrMTiN/zbQy4FfCy3D6n
 91wt7NavKMjh2bD1Gnhv+E364LcI4ag1UqVRqOz2JHOH0wk4wJZMh7YWz w==;
X-CSE-ConnectionGUID: sdKBw1nETU+Cv+ahbeKIaQ==
X-CSE-MsgGUID: xL4NE04ZR3qI0Otq148gMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77919309"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="77919309"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 04:37:59 -0700
X-CSE-ConnectionGUID: BQOX0sjmT2+dPojoJbJ0BQ==
X-CSE-MsgGUID: XimOi04/RY+Dsp6r/ziccw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228366951"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 04:37:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 04:37:57 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 04:37:57 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 04:37:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HPB10T45Ha4FUE35rhDqzjiUowreCGFjZqOPfmPMbfxGft7E9p6KKKHjSL1+og3/3jZzT2NtTm4RajA18VuWVFpo3df2AeXH/OzPQInlODR3w8UlvtFtUpgbqcjLeWfhi+MB/HmzmQZ3b5CoQuIJ7vLywn1zihUr85siFESQp4nfAdAJbOdRFyXc45rkfsN3fLG48Bj0V/WwnySzJSypAQi4cvtwJkRXxdBlHfkXWrTRwLS7Gi5c6XIS3VqEuiGCwuaYi0bALvy1XsSsqoSNAMKGEF9gUnDvcIw4gVEITa0USn3iZ2X4JZ/J3WN2kb3j8+gT0gNPA+Zq3NDggy/PhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5e3aXuDPiaiTEvlztPXldvDXOMvPVF2daH+JyvgFG18=;
 b=lbF8xCPO4UBzu2mUVo0jTE2C0lCr/0vnbIQFRW3t/k6vPohTDE+tz1U2FAJ9+TK2Ra1o2Ko93MBuofGNdVdTxjXdtZfQ3x1mBWy0bvACDxAv6X6yBQKH6CKxcqCNSyxqg3pyOb7i7MXJsP0UQUiDd76U1g2qs67+84Ud0bTRSj4TfzQJKJ+VRVIzwlm2BTMyo9DgMgsFKozvUigYWPtjwVOTv4X6lJsZZoQ9kQ3IbxHH8kP+jw4ddK+GeCW2k/8+xe1hGNpqdedndYtoh0/buRetTFH89MpakrrCG9rc1n3znH+Z0ycaFdnszQ2I5Iipu/nUwOgl8WcIlb/5z9OyNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5290.namprd11.prod.outlook.com (2603:10b6:408:137::5)
 by DM4PR11MB8158.namprd11.prod.outlook.com (2603:10b6:8:18b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Fri, 24 Apr
 2026 11:37:53 +0000
Received: from BN9PR11MB5290.namprd11.prod.outlook.com
 ([fe80::e3c3:1a6a:aeec:f3ed]) by BN9PR11MB5290.namprd11.prod.outlook.com
 ([fe80::e3c3:1a6a:aeec:f3ed%6]) with mapi id 15.20.9846.021; Fri, 24 Apr 2026
 11:37:53 +0000
From: "Kumar, Naveen1" <naveen1.kumar@intel.com>
To: =?iso-8859-1?Q?Michel_D=E4nzer?= <michel.daenzer@mailbox.org>, "Murthy,
 Arun R" <arun.r.murthy@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 "xaver.hugl@kde.org" <xaver.hugl@kde.org>, "harry.wentland@amd.com"
 <harry.wentland@amd.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "louis.chauvet@bootlin.com" <louis.chauvet@bootlin.com>, "Yella, Ramya
 Krishna" <ramya.krishna.yella@intel.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH v11 0/7] User readable error codes on atomic_ioctl failure
Thread-Topic: [PATCH v11 0/7] User readable error codes on atomic_ioctl failure
Thread-Index: AQHcwO2d20A/eYq2a0e6os8r0aiGTbXnu1OQgAGbm4CABNiEcA==
Date: Fri, 24 Apr 2026 11:37:52 +0000
Message-ID: <BN9PR11MB52901206A25AC016817AF1F7A72B2@BN9PR11MB5290.namprd11.prod.outlook.com>
References: <20260331-atomic-v11-0-6a1df7ec5af8@intel.com>
 <BN9PR11MB529039EC705FBA4E5E65C64FA72F2@BN9PR11MB5290.namprd11.prod.outlook.com>
 <6f5f44d3-2490-4d19-b6aa-31056410c22a@mailbox.org>
In-Reply-To: <6f5f44d3-2490-4d19-b6aa-31056410c22a@mailbox.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5290:EE_|DM4PR11MB8158:EE_
x-ms-office365-filtering-correlation-id: 4170efaa-2599-4964-b6fa-08dea1f5ebe8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|7416014|376014|921020|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: Vb17JKpdl0pGl9naS0JmV+549hMvzVTclWt7f2q66vZe2pqgtX/sE7zXFwjwu39d7xay0rJ/fj2IyfZAWWPUiUxmfiti9Ft+oWadv/evn9GqufhkSStvvJB0t58nWwKsbHKhhS27e4hGoe8AolN5KNOX2Ct9iXfpdPB1iUfM7j14C7/qAZqXoOFFvqfenBltwRi2Dvc/8E+HtM4f5TVKOVphvUG7LwzkRFWoEmvXkXYOBkhA4X2AvU4FkBnuilSj8nOR4ZR4HX8+T4YA+/xdsVb5MOv0tbubstqWOSR55zB2V/VP8tVQtPxIUbM7vq1L1Z/l0JTFT0s3CaJpYUdaRyPZc2EaCoFKZ0VMP17KWNXDvATJEqK66POg/MBuFcmtzMPjAg3lbFy1UJBYhL0HkwUWKeqBLpdhZZbMfATRGg/JIwasy6hZ2JvggCWjGEXdq/d2o+eVzS755lFNqahQRuWhxt2qiFZO7ANJTOL+fle2mVkdRVGA1IziORW2TczvLT4eqKsnghf6vY5lt0/T6+soGBe9tVnSyqJ/Cc5imCx53rRKZ2QaTMObq0ylwcCF18hfFTemB0VjDLEPa8FSbEUWGW3RuahMMFwPk96lNoOMZzr4GFwIi3XZb63nRoimTKyzR9OV1zU78schdYQrWUS06RoF0zvrBxfVbhUkn3oYbPE39wmTM0Mgem0AmNMKganMso9A7FXpaypjYll00cD+UY28yVsHB5IijMieOSMIblZtUTULufq5M13YILDm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5290.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(7416014)(376014)(921020)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?iFBNHNhBHbO4W2v3saLjI8fak2d14R/kv0ROxw/FYMdP0CIzf7LjpYya9q?=
 =?iso-8859-1?Q?AJUdcfvBqjhA0tlweg7wS8xha3/BTWITnOD3D2/OpBKx8gggBQVfqoCQGk?=
 =?iso-8859-1?Q?p/zqzSGoBmlQ0NP/FnjNIFeOAh9xZfRg4NOZpZjs5yzKblg2mbo/ZN739g?=
 =?iso-8859-1?Q?HjG/S0CrhifKMjmGI5hBJ67MlAQ1UbL+kjsiEYccYiyBWBU5MhsksR6U0j?=
 =?iso-8859-1?Q?VLdoo5CdL7lzP7s7ffr8Z0rKuniLJRwE5Q8IxAp8aQO5YOFZx7x5V0By+s?=
 =?iso-8859-1?Q?4ELtFw7bZu5G2qnFMVSg4MapUC29VwUbZ0peKW8RTBnxS/UqmGRein8D3z?=
 =?iso-8859-1?Q?djiCiXyrJTKaNXd3FtF6DbRP88+K+Qi+WJfu88NqMLunvcVCixG6fmxQxz?=
 =?iso-8859-1?Q?KFdNi8uO3LxhC0Thr2FU+VhWvXPWQZ2Evh93ki1YntkUvcptQOx556YsLG?=
 =?iso-8859-1?Q?WDStnGw0A96Eyu+J4NGaKdq3CKxrchZnrAYaIiXdIFS/N97SftjPwNpJJ0?=
 =?iso-8859-1?Q?pyR1OA2e2/RU5TvtxbRNY8CTBLFexpyCQwN4cbwOJgFnY6tUpKX4+nKP4C?=
 =?iso-8859-1?Q?BFxP/EoRJkM/4mAuWXEsfNuLTc18KcrFIcLW2d6ArPnD51D/U3P6Ryhiq7?=
 =?iso-8859-1?Q?qLt+e9n3Z93mVMKXo3byFm8XNxcmyYFH/NBWvsIVdu7bkDJoQteLdeqgy5?=
 =?iso-8859-1?Q?Q81VSfvKAxt2p9azFvoGyT7bsEwHnQAIIl5Y8wkgoKgiFIhDn7W3ipj/g4?=
 =?iso-8859-1?Q?7nJkxvyeLDWCWrjmkUq8b4iBtaeGMGECw6LWmphguu71y1X99eo0exmxPP?=
 =?iso-8859-1?Q?NN2zfIelu+0R1awuozVqgIC9yA7w8tzBQaxalB8ePk5RdM+VHBuJYqGrzu?=
 =?iso-8859-1?Q?7JQIm7Kv7As9H5Ug3hoewwTeskj4QGEKbtUtdYXL8BN+ygUVOf3Biq3hK2?=
 =?iso-8859-1?Q?b6XnTd+QMQCj4eXGfVwSSofG3/EeeUSsMiYIq3J7HEFB+0EPkR/0/1ksxh?=
 =?iso-8859-1?Q?QePf0k22jzWoPUGwMNPcm1DV27eYQMVb1hHpmxc0aXQnNG2vzMOptnmMBu?=
 =?iso-8859-1?Q?5uopLegaloh4+qCweEWkM8y3e7u6i6DddhGjKkvvQ2UG6SEanTCwfPIsa7?=
 =?iso-8859-1?Q?kY72TxTA1CNSxfd8LLhOw431Xg8kkJlGeYZRtTh/D1ZK5ho8wAWZ7/nnbm?=
 =?iso-8859-1?Q?13BoR/+4YsNfMoyV4r84ZIu9waYGtovCWVxQLA6JV10JzPMDR60rEC/QEz?=
 =?iso-8859-1?Q?06lbCsy56WPBhN9OzCUqHtcdEQd6GqGLLk7SF/O/tAeIFVt7wyucylaWLZ?=
 =?iso-8859-1?Q?3h9R9xiP7UTbPOLZgMc68e2h+Yiiegtv7rOOxEFCVvAUtAjLaq7UQ/Psze?=
 =?iso-8859-1?Q?QeQskaPSnCiM+Wygf3QGdD38jBlSJcybXjaPWvlz/s2jVyk9a8hAAhnK/P?=
 =?iso-8859-1?Q?O53u5KaVwbaDZSjAzCiI+1l3rEBFqXb3cKv1WgAEEw3HvSvbryuNb9TxNn?=
 =?iso-8859-1?Q?syd/ICP4SbDp6YAKmF9EheeTyZUocTr8JEgd4jSaRoB6mBp+e8YAyUGOaG?=
 =?iso-8859-1?Q?n4y1K5q/r+q/BIBifov/nZTLnxIobIlZkVnnzQfN/LwRH4/dODiJnFYehM?=
 =?iso-8859-1?Q?AY8q/v0suUma/OKb5CIY68/3ypr6oAn0alJMFVhC7gWHVitcnBNskGKC3x?=
 =?iso-8859-1?Q?zFyy7hwQsifAehrVx7gAnbZ1YvMJ5zq1i7cM9HL2TOFKe9G+o3dxSrdM3j?=
 =?iso-8859-1?Q?TWrTV2MXk9l4+WIRcKaxjk/FijgZq0aLVmPwdyR8Yw5wYRCkT37brla+CO?=
 =?iso-8859-1?Q?eRAvIiPuEb/GQlYKucnC79u0o0tOuVXx57wL+SsR7QVEAKK+JBJSTAcA50?=
 =?iso-8859-1?Q?Iv?=
x-ms-exchange-antispam-messagedata-1: U2I/RKhEA/owTQ==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: etMZNBodQpiuHQG/N/7BkvhO/Vbja0W3RNgopgCrGGr4NfPRac/a4Pq8q0kPqeYSK8UOwDnv9P0bwS++TVE9OPZwXilSjHKvBEN+hAtXVPqTg6OFJRGtaN1GShQtJlUUIKLeH5DDCAYB+kQmY1li1GQ+Qha7uArAvIumTAYKnAmN8eKcGszPbApDEUZwoUkeufZey+bBXRJsqHwpc6b1Xea9J160i1psoobbM800t/7PTQc20yoqKBTdgh2vhlkQxXtng8Oau9WSMXJQU3Dt0+VBDT2uYg0xJ5duxPwMB5AiGPF8uAc68TyzCevBxZHOD9zZmdQ7LMMz5dZ513VN6g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5290.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4170efaa-2599-4964-b6fa-08dea1f5ebe8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2026 11:37:52.9943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ww2dWXMeAlstm3WJ9MHuPJXLmp+PPMva2yXj068MZX5z7mAMGWaEBIWzMSxUJRP3cctlB18t0NxJaGM9XCdVTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8158
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
X-Rspamd-Queue-Id: DD8CE45DD82
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_TO(0.00)[mailbox.org,intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ursulin.net,kde.org,amd.com,bootlin.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[naveen1.kumar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

Hi Michel,

>-----Original Message-----
>From: Michel D=E4nzer <michel.daenzer@mailbox.org>
>Sent: Tuesday, April 21, 2026 2:24 PM
>To: Kumar, Naveen1 <naveen1.kumar@intel.com>; Murthy, Arun R
><arun.r.murthy@intel.com>; Maarten Lankhorst
><maarten.lankhorst@linux.intel.com>; Maxime Ripard <mripard@kernel.org>;
>Thomas Zimmermann <tzimmermann@suse.de>; David Airlie
><airlied@gmail.com>; Simona Vetter <simona@ffwll.ch>; Jani Nikula
><jani.nikula@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Joo=
nas
>Lahtinen <joonas.lahtinen@linux.intel.com>; Tvrtko Ursulin
><tursulin@ursulin.net>; xaver.hugl@kde.org; harry.wentland@amd.com;
>Shankar, Uma <uma.shankar@intel.com>; louis.chauvet@bootlin.com; Yella,
>Ramya Krishna <ramya.krishna.yella@intel.com>
>Cc: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; inte=
l-
>xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.com>
>Subject: Re: [PATCH v11 0/7] User readable error codes on atomic_ioctl fai=
lure
>
>On 4/20/26 10:32, Kumar, Naveen1 wrote:
>> HI Arun,
>>
>> We verified atomic commit failure detection via capability flag, error
>code/string retrieval, and fallback path execution in Mutter via MR
>https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/5022.
>
>I don't see any fallback handling in the mutter MR -
>process_atomic_commit_error has only TODO comments for all failure codes.
>
>As such, in the current state I wouldn't consider it satisfying the user-s=
pace
>implementation requirements for new UAPI.
>
>
>--
>Earthling Michel D=E4nzer       \        GNOME / Xwayland / Mesa developer
>https://redhat.com             \               Libre software enthusiast

Thanks for the review.

The current Mutter MR is intentionally scoped to enumerating the kernel-sup=
ported error codes and establishing the basic framework to collect early UA=
PI design feedback. The TODOs in process_atomic_commit_error() are placehol=
ders; per-failure fallback handling is follow-on work, pending design sign-=
off.

For validation, we injected error scenarios in Mutter and confirmed the err=
or enum and string are correctly retrieved from the kernel.

We agree the UAPI is not ready to merge without concrete fallback handling.=
 We can go either way:
- Land the framework now and follow up with per-failure fallback patches, o=
r
- Add at least one representative fallback case in Mutter MR to demonstrate=
 the full flow first.

Let us know your preference and we will proceed accordingly.

Thanks,
Naveen Kumar
