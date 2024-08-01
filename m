Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F51944532
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 09:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD27D10E8A3;
	Thu,  1 Aug 2024 07:12:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PT4/4QKp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C1010E8A1
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2024 07:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722496361; x=1754032361;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l0aPiItqdMdVqM8elm4Vnqw88uEMMTwrkYxytBXB07w=;
 b=PT4/4QKpxX/4kg+XiF0aKu7ZfE2XX3Xx0U7G6SdDUPRmZlVvjhkeEmqh
 hkoEYhABJouZiagYWLYn7MRKjNoFf3wj5w5ZKCVb23/TCkpZU1lvU4ZBb
 i8ml5N5z8CVxT2dMIohOrPE7xm4Mllxc8yprHQxbxEjuDIDniehcbc9hK
 Bgaba+hh74nnyWHmmIvirmMmSe0KFXyp1B5+igFznDtxDXdMzAfG1cfNS
 jRJwcn0W5+i+grNVmBOmjyNYHEX5V/N59rwsohyzMPYn4kGjwK2nYLQoN
 qCXKjqu/x+IlDej5h2+qQKavraNwKEkbCoyPIhhxr35F8S7WNu4U8UiQF A==;
X-CSE-ConnectionGUID: jJLbtxKbRJa/a/UE4/3Pkw==
X-CSE-MsgGUID: 0LDV4RdKQSOkrxMi1qPsRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20548681"
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="20548681"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 00:12:40 -0700
X-CSE-ConnectionGUID: RMLnKdXZR/eCfk4B5xCjdQ==
X-CSE-MsgGUID: f9T/H4zYRyya3XvzRu1hgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="54902631"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 00:12:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 00:12:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 00:12:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 00:12:38 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 00:12:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QE7HGJFZ/lu9oWWu1HiLC+lJUqqZxOcGgG+epQQIIPAZotc3pTu0VrGzFYBzDPqc0ltDy0ZR9jwp3wFNIxUu7BQV5F2CptoSboJBbM7iIlKgeB8q6gcfX3eHJiu3H2sEdb9Vu8CJCR9fgyvptiXSbZc1iNQafJ+FLO+Kx7jw402k3TKJ/PxC0y4jbLwouwbDxMDLWEYagzpk22F2AdDz96AxXoCxVUjpjnCaM9tdP/kspNZGc/YkADu/wjcuCuCM5q9NHwwYrnugdwKF5fKvQOgWQW5Uzp2GdFaBro0WAdL8dkmSpUUASWY0OtBeMUVrMvC2J2xcHGrQG+Y3BzLNsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kJYdc/aqbHzUY3K637KnNEv+UTaDTpenpBiYbj9hBts=;
 b=jUTVt9MWcVvoefQE05DV0iRrHeJSxMq5lNiBnHaE3vd4dfmkVeh/NOeX9JrPUL1HYOCjbi8PrqpXoE7z3CT7jNECEiMj0mI4KYatPMsHTnexU/YODq+IV8d+UEtuVRAydWYAWxK1KwjuZgjs9Pbzln3JntYX9ljKegdkp96vfT3n9KhsJzlyLHY1k8QQOzk7/Mh51xUWA9E9iaQUkpyRtI8vUWywsiUqNJzKmvsNxfSaHWtYNqYOdk45RH/dVoHCj0gnrzIq+GG7NM69tY7dDtj7okbdxTTp9XxS+IzDnYd0ZEsQ5ips/nVYpSJeR043PjlkgayaibUg1rob9qftwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by MW3PR11MB4537.namprd11.prod.outlook.com (2603:10b6:303:5d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 07:12:36 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Thu, 1 Aug 2024
 07:12:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 11/12] drm/i915: Add new abstraction layer to handle pipe
 order for different joiners
Thread-Topic: [PATCH 11/12] drm/i915: Add new abstraction layer to handle pipe
 order for different joiners
Thread-Index: AQHa2Or4Pok/wBYE0UWSlm9B+IfgfrISDOzw
Date: Thu, 1 Aug 2024 07:12:34 +0000
Message-ID: <MW4PR11MB6761B36ED136E9FB161B1AFDE3B22@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-12-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-12-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|MW3PR11MB4537:EE_
x-ms-office365-filtering-correlation-id: 36a9ba97-b510-4c20-c98e-08dcb1f9514b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?27oY3JjOyrQ5ZKr94H35PqIjX7i+dwFX2MZClStJ2rOz3Rbe0UBb0+juQAoJ?=
 =?us-ascii?Q?4qmOx450bO1Q/CqWEPPqA1PhObdCE2CZMtao2AE6IXIyQKq9XfCY4cOVhlmA?=
 =?us-ascii?Q?div5EGjWcony+gAmyh4qmKLneKv6nmrR9H3YL+/Mq81WCXLx4/DDzuXj8CZF?=
 =?us-ascii?Q?e9vOmGGy/EYjhipc2m3JdPPOa6gyIyd0yemJhrJ3YX4qTGfvyMWe5fLXCxlp?=
 =?us-ascii?Q?zEbENFmLEH7l+J2kQ/aC8Itct1H9N3adoykV0XYkvyZPIp9V/3G3/Xt1KH5s?=
 =?us-ascii?Q?gHaLTKR8Yb8AIQxHFQcPvUVHReOedMiUYhOON4WXwjzggfBlsen1cxI8sPg7?=
 =?us-ascii?Q?F8cOCxVha7Yf7qrgmkxaj1QD6q2C1vfKS3hm1MpivcP2/Vk0FeTtlJrONfRC?=
 =?us-ascii?Q?RsgRW8k5lVwXmbkvNTjZ1oviJs90ws+QXcg1DeLs+emiHzTlF9ZeK69O/b/2?=
 =?us-ascii?Q?uob/Jw2/kimsKbiAgMtXf2FoWNTLLPSxfEJ8xO+xyhK+OHTt9Wa7gNCSRCDL?=
 =?us-ascii?Q?VNVOCx0wtOegCXYuOUDDVP1wV2rbF0Srtiaomjxs4CM+YswUlyBSISvh2tnX?=
 =?us-ascii?Q?1E35+d8gwE0lZCg6dALlrZV++0SZgGV4O82cxw5DCxfOSIijnVZm3Kc2b0i+?=
 =?us-ascii?Q?UA7ro66DgByXq5BM598bJqCTmOufjukdXM1uD6UpYZvRAHXOg9gR3YFq0qOA?=
 =?us-ascii?Q?Llz+EkMyeDtB18ItgjwfEMUI2hO1tQEbpZqubmPc7okVhnP7cPqU1RZ+BXmS?=
 =?us-ascii?Q?+W+ah4RGeKYbLsPHIOwMWgM3rM0ezC988W579CMCGwbhm+hn3teF90XNiXT1?=
 =?us-ascii?Q?36E2zxTQfUz/jNJJUI4RySpcEse9F1Z1qYAJRlCK8YrHxa6ECTS5hTH3bkzF?=
 =?us-ascii?Q?/Bozf2ayZLF56Do2nPSrMWDA5RrRYOZWHMCcXrcD8bl05y6CgLQ0AkMglGPz?=
 =?us-ascii?Q?4gt5NdmZ4HFDaFJw5fmLoymejkXKq0T3xVZTbDfxBkqcn8wC5heCtPOMOZaC?=
 =?us-ascii?Q?mT8kMlTP5fL/JDTjer6xQbZ5K6xX8ABhSjDABQzitcyLGQjdQPa8nhpr119i?=
 =?us-ascii?Q?voFYXZHIVhoUg0s/p2uiG+bRwQtJJRbzTQItcxvn6vmFbxZHRRTVC2+WqZO+?=
 =?us-ascii?Q?QwHwcTPngFBD7lUDqaajFKgJqqCu2yBDMKQPx95jpeq+cUCd95BZ5mgRZ7Z9?=
 =?us-ascii?Q?GW/FVaV18A+EVI+ZpbZitqwAC878DuOval+CXeEcVNKfeSnLMnXQPgzJ6Gch?=
 =?us-ascii?Q?uw7a52mTocpCuvWpZXu2/ZyTVNtnFhF79Lf8r86IWJTzkmkvWk8zU6B9s/2y?=
 =?us-ascii?Q?FEbw/B5EFxh45S7jHeItbAgAypv4srMiaHBuTxlBGKCG6+lfnVzhM9W5mIKH?=
 =?us-ascii?Q?uLfUK0F4TUg4nj4kVPFpH8W1D2qDbCVUp5jpW/y9nycuOqlbJw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FiHrkp1Qq0kePaSIZ5OowboDAObfa1cjNMs3hgEWhkB561Uuu/euj7Hf1F8c?=
 =?us-ascii?Q?0pSESMTmVZsTTHkgnuaycYoFjse2Wrr1tobpFIBNJZ9NEoPlrFNqWuXalmLV?=
 =?us-ascii?Q?/4DU0PxG/oIiI4sufFwiumpo+DAG765JbsvJ0k9mxv4RFBmXAkK8lqbQe3RT?=
 =?us-ascii?Q?sBt8pkmpGSVAU0jY+wmegjIJ81dKpvLPVIu/VhLB7wQircDjYkHeD+NShk8n?=
 =?us-ascii?Q?/mCwEKQlJaVHr4D/+H6lUy7DSo0vQGtu/4JniTycRLUxDEhOlhIYi/JYuH9D?=
 =?us-ascii?Q?bE2wQRN0PZn3I8ONN7sPICuQNUdRxN+Hkypyvzk82IUcw77pQYovFvg94CSd?=
 =?us-ascii?Q?/iEfUqJjQ5dMLzzqOmKPStG/p68piLHGhw+SxekxV6uubQq62PckTiFc1PVK?=
 =?us-ascii?Q?00uSqojNDla1FgsLDsl6mHpHiIz3Xz0/dHcqBQbVOb1EDwG0cRwsH3p+tcq6?=
 =?us-ascii?Q?hkC0Q+Db5rmY+DO6pDlbm+77USLPMzSg1qXEplfo+a+Gz9LVSrBwR7bMJz+X?=
 =?us-ascii?Q?vlpyAocTKZJJ6X4AXfRA1SkPb8RWJ1+Iv6qYbiJgEKSd4nyqB/3zQOym8EnO?=
 =?us-ascii?Q?02GhZUygiQUvKPlil8CkqrH8zRVozsxtk/uGlpZa8ezRmf9skuHWq6+yuN0g?=
 =?us-ascii?Q?6SLSAjON0R2DimIszHhWCQ9BKFvyVf3hZQvnTcS0JK4uq2dOrOBIi3RT1IxQ?=
 =?us-ascii?Q?6kDwJpBiVkiC+rq11f00EtUGpKeNSjyiPA7+mleJDP+91jPM9ghPZrqBAvln?=
 =?us-ascii?Q?0ivu/mK3hdGIrhcGq5RuDhyStyaNOHhb++A2YjnmDbngCogOTpa8MFRIdljR?=
 =?us-ascii?Q?gIiCI3v7RccZsEwMuPGIqd7OCN0vYvj24aVH4wMXCCOTypWZmzNxYDbPv3UP?=
 =?us-ascii?Q?Yt3oM/4Brz++PCJoP41g9+g0ioOIjeL6fSlm+dqP8eLFCUkPxGWj0YqCE6JP?=
 =?us-ascii?Q?7DeDIwwxDuA1wYCMwuChYlskfm5Lb6aQVElQJBWKFMJs1+oDDtmBvFhyFMKJ?=
 =?us-ascii?Q?y3mbDyi/Y6u8jI2vMmglzLhveUY4c5onb1ukpiW0rqzwDcxu1/v8oNe3oR2T?=
 =?us-ascii?Q?mc1w3ip99OOWKskzYYWgZS/qAQTMEsICTob/JAQmVQTv+bfOOkE/RgqiNo3I?=
 =?us-ascii?Q?amesp9Hit8M9OtPXVOHqeyoEgO4YWsZhu1yRHnjzLSbpZTebjCRg5yV7LVyC?=
 =?us-ascii?Q?AznetWAjZcR3b+m5BNXjnrtUKgWUo5q8LDf2u4KdMGukDx4AKlf23mKEEx3N?=
 =?us-ascii?Q?HLPeCDpvj0L1PG1z1/Y46ctkdxIQCsGSMV1vQHmXdKpji4/qKJEfFdyf1o/K?=
 =?us-ascii?Q?dgPzphhnVQ1ANt2a9ciUu67UrXOTfB2wsIr8tvTqFTDMc/efx1r6MSoar1OC?=
 =?us-ascii?Q?Jczo5rLi13ohRAiwTOECe0d8NBdyTcnecXNx1q0bBF5KOWS3wXcidBamymaM?=
 =?us-ascii?Q?TGz96g0XQEmxU+m2Vx9zLTfOnIdNbvatF63eMiANkr+mj3+1BK+ZIvNVJ0qb?=
 =?us-ascii?Q?12pCHS2Ue5rBJnzPcXdHUux+ymI1Ypz8fQXR+b6jYGLuE2Gkuwc/rYJS9V2x?=
 =?us-ascii?Q?5Oa9ZQuKQk0rfJfFiHYe9LCySswV2ZbOd3z1YnAn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36a9ba97-b510-4c20-c98e-08dcb1f9514b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2024 07:12:34.8565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E5MSLPD4GxnROYqf3HAUepOAZN/Jp8JRJEYCaVZuE0WT+pPY3ftirp2rOr08SCAI4z06ssTu4m6ZFxTRsgzjbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4537
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 11/12] drm/i915: Add new abstraction layer to handle pipe
> order for different joiners
>=20
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> Ultrajoiner case requires special treatment where both reverse and staigh=
t order
> iteration doesn't work(for instance disabling case requires order to be: =
primary
> master, slaves, secondary master).
>=20
> Lets unify our approach by using not only pipe masks for iterating requir=
ed
> pipes based on joiner type used, but also using different "priority" arra=
ys for
> each of those.
>=20
> v2: Fix checkpatch warnings. (Ankit)
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 19 +++--
>  drivers/gpu/drm/i915/display/intel_display.c | 89 ++++++++++++++++----
> drivers/gpu/drm/i915/display/intel_display.h |  7 ++
> drivers/gpu/drm/i915/display/intel_dp_mst.c  | 19 +++--
>  4 files changed, 102 insertions(+), 32 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index a07aca96e551..d54c9e51209e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3116,10 +3116,11 @@ static void
> intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  					       const struct drm_connector_state
> *old_conn_state)  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *pipe_crtc;
> +	struct intel_crtc *pipe_crtc; enum pipe pipe;

Can we have these declarations on different lines

>=20
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(old_crtc_state),
> +
> intel_get_pipe_order_disable(old_crtc_state)) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =3D
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>=20
> @@ -3130,8 +3131,9 @@ static void
> intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>=20
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>=20
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(old_crtc_state),
> +
> intel_get_pipe_order_disable(old_crtc_state)) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =3D
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>=20
> @@ -3383,7 +3385,7 @@ static void intel_enable_ddi(struct intel_atomic_st=
ate
> *state,
>  			     const struct drm_connector_state *conn_state)  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *pipe_crtc;
> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>=20
Ditto
>  	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>=20
> @@ -3394,8 +3396,9 @@ static void intel_enable_ddi(struct intel_atomic_st=
ate
> *state,
>=20
>  	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
>=20
> -	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(crtc_state),
> +
> intel_get_pipe_order_enable(crtc_state)) {
>  		const struct intel_crtc_state *pipe_crtc_state =3D
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index d032fd8011d5..b6896058a594 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1730,6 +1730,56 @@ static void hsw_configure_cpu_transcoder(const
> struct intel_crtc_state *crtc_sta
>  	hsw_set_transconf(crtc_state);
>  }
>=20
> +static
> +bool intel_is_bigjoiner(const struct intel_crtc_state *pipe_config) {
> +	return hweight8(pipe_config->joiner_pipes) =3D=3D 2; }
> +
=20
Use enums here

Regards,
Suraj Kandpal
> +static
> +bool intel_is_ultrajoiner(const struct intel_crtc_state *pipe_config) {
> +	return hweight8(pipe_config->joiner_pipes) =3D=3D 4; }

This function was already introduced back in the 5th patch as usual bool ha=
ve a look

> +
> +const enum pipe *intel_get_pipe_order_enable(const struct
> +intel_crtc_state *crtc_state) {
> +	static const enum pipe
> ultrajoiner_pipe_order_enable[I915_MAX_PIPES] =3D {
> +		PIPE_B, PIPE_D, PIPE_C, PIPE_A
> +	};
> +	static const enum pipe bigjoiner_pipe_order_enable[I915_MAX_PIPES]
> =3D {
> +		PIPE_B, PIPE_A, PIPE_D, PIPE_C
> +	};
> +	static const enum pipe nojoiner_pipe_order_enable[I915_MAX_PIPES] =3D
> {
> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> +	};
> +
> +	if (intel_is_ultrajoiner(crtc_state))
> +		return ultrajoiner_pipe_order_enable;
> +	else if (intel_is_bigjoiner(crtc_state))
> +		return bigjoiner_pipe_order_enable;
> +	return nojoiner_pipe_order_enable;
> +}
> +
> +const enum pipe *intel_get_pipe_order_disable(const struct
> +intel_crtc_state *crtc_state) {
> +	static const enum pipe
> ultrajoiner_pipe_order_disable[I915_MAX_PIPES] =3D {
> +		PIPE_A, PIPE_B, PIPE_D, PIPE_C
> +	};
> +	static const enum pipe bigjoiner_pipe_order_disable[I915_MAX_PIPES]
> =3D {
> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> +	};
> +	static const enum pipe nojoiner_pipe_order_disable[I915_MAX_PIPES]
> =3D {
> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> +	};
> +
> +	if (intel_is_ultrajoiner(crtc_state))
> +		return ultrajoiner_pipe_order_disable;
> +	else if (intel_is_bigjoiner(crtc_state))
> +		return bigjoiner_pipe_order_disable;
> +	return nojoiner_pipe_order_disable;
> +}
> +
>  static void hsw_crtc_enable(struct intel_atomic_state *state,
>  			    struct intel_crtc *crtc)
>  {
> @@ -1737,19 +1787,21 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder;
> -	struct intel_crtc *pipe_crtc;
> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>=20
>  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>  		return;
>=20
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(new_crtc_state))
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(new_crtc_state),
> +
> intel_get_pipe_order_enable(new_crtc_state))
>  		intel_dmc_enable_pipe(dev_priv, pipe_crtc->pipe);
>=20
>  	intel_encoders_pre_pll_enable(state, crtc);
>=20
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(new_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(new_crtc_state),
> +
> intel_get_pipe_order_enable(new_crtc_state)) {
>  		const struct intel_crtc_state *pipe_crtc_state =3D
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>=20
> @@ -1759,8 +1811,9 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te
> *state,
>=20
>  	intel_encoders_pre_enable(state, crtc);
>=20
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(new_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(new_crtc_state),
> +
> intel_get_pipe_order_enable(new_crtc_state)) {
>  		const struct intel_crtc_state *pipe_crtc_state =3D
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>=20
> @@ -1778,8 +1831,9 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te
> *state,
>  	if (!transcoder_is_dsi(cpu_transcoder))
>  		hsw_configure_cpu_transcoder(new_crtc_state);
>=20
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(new_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(new_crtc_state),
> +
> intel_get_pipe_order_enable(new_crtc_state)) {
>  		const struct intel_crtc_state *pipe_crtc_state =3D
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>=20
> @@ -1814,8 +1868,9 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te
> *state,
>=20
>  	intel_encoders_enable(state, crtc);
>=20
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(new_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(new_crtc_state),
> +
> intel_get_pipe_order_enable(new_crtc_state)) {
>  		const struct intel_crtc_state *pipe_crtc_state =3D
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  		enum pipe hsw_workaround_pipe;
> @@ -1900,7 +1955,7 @@ static void hsw_crtc_disable(struct
> intel_atomic_state *state,
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	struct intel_crtc *pipe_crtc;
> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>=20
>  	/*
>  	 * FIXME collapse everything to one hook.
> @@ -1909,8 +1964,9 @@ static void hsw_crtc_disable(struct
> intel_atomic_state *state,
>  	intel_encoders_disable(state, crtc);
>  	intel_encoders_post_disable(state, crtc);
>=20
> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(old_crtc_state),
> +
> intel_get_pipe_order_disable(old_crtc_state)) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =3D
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>=20
> @@ -1919,8 +1975,9 @@ static void hsw_crtc_disable(struct
> intel_atomic_state *state,
>=20
>  	intel_encoders_post_pll_disable(state, crtc);
>=20
> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(old_crtc_state))
> +	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(old_crtc_state),
> +
> intel_get_pipe_order_disable(old_crtc_state))
>  		intel_dmc_disable_pipe(i915, pipe_crtc->pipe);  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 35e68e4cc712..4cfd1da0bbc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -275,6 +275,11 @@ enum phy_fia {
>  			    &(dev)->mode_config.crtc_list,		\
>  			    base.head)
>=20
> +#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p=
,
> __mask, __priolist) \
> +	for_each_pipe(__dev_priv, __p) \
> +		for_each_if((__mask) & BIT(__priolist[__p])) \
> +			for_each_if(intel_crtc =3D intel_crtc_for_pipe(__dev_priv,
> +__priolist[__p]))
> +
>  #define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
>  	list_for_each_entry(intel_crtc,					\
>  			    &(dev)->mode_config.crtc_list,		\
> @@ -432,6 +437,8 @@ bool intel_crtc_is_ultrajoiner(const struct
> intel_crtc_state *crtc_state);  bool intel_crtc_is_ultrajoiner_primary(co=
nst struct
> intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc=
_state);
> struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_stat=
e
> *crtc_state);
> +const enum pipe *intel_get_pipe_order_enable(const struct
> +intel_crtc_state *crtc_state); const enum pipe
> +*intel_get_pipe_order_disable(const struct intel_crtc_state
> +*crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);  b=
ool
> intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			       const struct intel_crtc_state *pipe_config, diff --git
> a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 21b23f8eb5e7..d4fc4439ce2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1007,7 +1007,7 @@ static void intel_mst_post_disable_dp(struct
> intel_atomic_state *state,
>  	struct drm_dp_mst_atomic_payload *new_payload =3D
>  		drm_atomic_get_mst_payload_state(new_mst_state, connector-
> >port);
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct intel_crtc *pipe_crtc;
> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>  	bool last_mst_stream;
>=20
>  	intel_dp->active_mst_links--;
> @@ -1016,8 +1016,9 @@ static void intel_mst_post_disable_dp(struct
> intel_atomic_state *state,
>  		    DISPLAY_VER(dev_priv) >=3D 12 && last_mst_stream &&
>  		    !intel_dp_mst_is_master_trans(old_crtc_state));
>=20
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(old_crtc_state),
> +
> intel_get_pipe_order_disable(old_crtc_state)) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =3D
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>=20
> @@ -1041,8 +1042,9 @@ static void intel_mst_post_disable_dp(struct
> intel_atomic_state *state,
>=20
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>=20
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(old_crtc_state),
> +
> intel_get_pipe_order_disable(old_crtc_state)) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =3D
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>=20
> @@ -1231,7 +1233,7 @@ static void intel_mst_enable_dp(struct
> intel_atomic_state *state,
>  		drm_atomic_get_new_mst_topology_state(&state->base,
> &intel_dp->mst_mgr);
>  	enum transcoder trans =3D pipe_config->cpu_transcoder;
>  	bool first_mst_stream =3D intel_dp->active_mst_links =3D=3D 1;
> -	struct intel_crtc *pipe_crtc;
> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>=20
>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
>=20
> @@ -1275,8 +1277,9 @@ static void intel_mst_enable_dp(struct
> intel_atomic_state *state,
>=20
>  	intel_enable_transcoder(pipe_config);
>=20
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -
> intel_crtc_joined_pipe_mask(pipe_config)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +
> intel_crtc_joined_pipe_mask(pipe_config),
> +
> intel_get_pipe_order_enable(pipe_config)) {
>  		const struct intel_crtc_state *pipe_crtc_state =3D
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>=20
> --
> 2.45.2

