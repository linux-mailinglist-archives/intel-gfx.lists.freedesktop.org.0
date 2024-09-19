Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EB997C973
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 14:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A565210E0AA;
	Thu, 19 Sep 2024 12:44:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HwyCxkb1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 846BE10E0AA
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 12:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726749883; x=1758285883;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JPr0Di54zTbbPtlz3DLiq5Ycb05mcusPEkNsFBlU3i0=;
 b=HwyCxkb1R8R/thJY0MW+GV5m1fMM4wGQHGuenuGLc5P/6FZVANtS5XAf
 gGJzMSL5scyfrkUPsNMtqmPUUVf5aXOL3vbTbyl6nOE6KaVFQkH4ZR66k
 m9frCw7Q/3/l51etnioO9WVMyhlSJUkuCekWOD6CjHzCHaIPtd22QqWUC
 9CZkTuvvIrU/XIDpikPo94b8tYvdTkE5ug0Ehdd93BUad9plI0cG12Zg3
 C0YqD9kdSWD+aYNWgzi/fkFjiZ73bfM29pG3TgbyMwxLVGZZmiCvBrOTv
 45BBdlEvExgdFHp/31WmBp+uXzMvEwGICsBkHPUFel71fg7IRVMxHHy8K Q==;
X-CSE-ConnectionGUID: ARTcGkdYRletPv9NnZgyLw==
X-CSE-MsgGUID: //godPE+TJG2W9Ap37yrtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25585726"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="25585726"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:44:43 -0700
X-CSE-ConnectionGUID: ft9ycphjRdaM65mcbLWBiQ==
X-CSE-MsgGUID: 4MZCFJU6QxWyDyz0PBeijw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="74712337"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 05:44:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 05:44:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 05:44:42 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 05:44:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b3lrHeBs57hg7r1fs/YVl5UHhZxBLhs1swFQB82WyCwsmYuShvBEel9SFMKGXy43iT2hs2V19aVNNz6FXnbQObrx7TQpnoieXii1dN8N3TPLtYtILM4gKkzt6Qo8oXy0Sjdhj4AH/qHv2DYr8GQ+amwshbG8CKJqmWKHXayo32Eiv/YNIWaV5V5WExhi8qBQ3zzKGjFM+0u3AtQim8eoyTLHKQEarhQ9VOa6LOOzalqRY9LKS4qALV/93K6Bqj7XEBTojAG2Lu6CP1W43JgyzRJUClVKruP/kbJtvMrWP5if5NeCquVNUI//uaFuYYq4gZs84rzvhTngiVW62VuQMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FAfy8cx/B8xnqLfRGDawoIQcwQ6J/vzr3qpHI0/znXk=;
 b=SQ7KCdvYIYiD99BBIT5cBds9XfB3t6PQb8LyMisoL6xRJG0lnejBGL7vgjDnvHtaHSVPrXlMqr48wwTdwn04Nxrp+ziMFhKDCKxwPN+dCu5SLSBHjOwTL7pVO2jeppfRZhO+XHalo6tNW5DEJ+9KT4HO6utKi9VXE/SV4y1wYZzYbHugG+XkmItG+T3jx6u5eln3wPoYfTjDzBoVOmXDMc9bySG608YJ+wF10VmGchZ/QuKDYrTs0BmFQkJdZTsM9etcw9i9xC/EwsPE9APf9VywxNpACKB8gdB1JHxp+V+JI+NY+T5JjMl6pOgy/fly11sTxKesaKyo/ryT/XDpNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB6913.namprd11.prod.outlook.com (2603:10b6:930:5b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.17; Thu, 19 Sep
 2024 12:44:39 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.016; Thu, 19 Sep 2024
 12:44:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHa/PWpZ+RNVuAGYkG7Qr5vJr+rvbJFu5EAgALmIYCABk00AIAAGzcAgBAW4ACAAAXz4A==
Date: Thu, 19 Sep 2024 12:44:39 +0000
Message-ID: <SN7PR11MB675023AFF073760339E16870E3632@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240909045454.412110-1-suraj.kandpal@intel.com>
 <20240909063218.447934-1-suraj.kandpal@intel.com>
 <DM4PR11MB6360E85B9BAE1924EFC27A9EF4632@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360E85B9BAE1924EFC27A9EF4632@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jouni.hogander@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB6913:EE_
x-ms-office365-filtering-correlation-id: 89d11c84-8d35-448b-8f87-08dcd8a8d374
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?K3x/JcTw/s38Okn0F88OckT3o9ZDCJarFFS7B6MZQgCGydXj1mEIvesDm2HW?=
 =?us-ascii?Q?O05w1PBN0L4mH05Tygvu6C6xzLgm24h/j8AZqcUnv8Ef0/7OoP1K3s4k+Gkx?=
 =?us-ascii?Q?+HdEjac13SjgbxyVBEUH7fUKLWchg6a0icaGhuA3Ls+PtCZoFW09JH3zo7s7?=
 =?us-ascii?Q?LOj1TV4uXENeDlHAulSGk5A061wLpR+CyOHgf1HaBU6+VscdJ73lxZ05D60K?=
 =?us-ascii?Q?QqSEyUgyAe4H5A36AVij90INO5bYuGO6CNhg894UE58CFLJZqVXr2brovZ4A?=
 =?us-ascii?Q?g0Aj3PLbIFRbSO+biSwUM2P2IWybfOBQ4kf5tFc/kS8k9A9TdTIoKFLhLuvH?=
 =?us-ascii?Q?YvNlIUNDkm2QTUyJR8GcssBsvj/PzZngjpx5fWOx5MlyCGCSrjJ2H0TP2iMs?=
 =?us-ascii?Q?8Da9bTcTAIFnoqtKxBrPgZ6y2mubXdydDXmsV3nqJHx/anF97vS80rN5F4Nl?=
 =?us-ascii?Q?A/MEsnT72DrYOArv2qE3CkI8FuMQac7wzogW7cEtdyT1zE6S5t3RJriLoglf?=
 =?us-ascii?Q?nr2vmENpBXApUgV7THLvGWm40MG9aiRTgO1lXYYL30H+MosAfLTPMhSK4auy?=
 =?us-ascii?Q?RafM+9ub0Uk6sWh1aq2R1+bvdEGIKrNzxRXbohhpHvtACb5n4f83GOYsdhBS?=
 =?us-ascii?Q?H4eS5fwzCIscfJngNLbNT4zmhgSjq4JU5UR3MQNde751kP8HxuKezMRzMShb?=
 =?us-ascii?Q?xsUSeke7Zrw6b8knhDIyYjf7tZUVyLfzMq3JknDzUx+BahIvDPHclgx6vbvB?=
 =?us-ascii?Q?ZXXPi6p745bURw7LdaaDomuIOLxlLoaUfPkRniJd0SU2s2G14pk/7a/RBGSt?=
 =?us-ascii?Q?xGxk6Dxhx35N0A/rv5kt9s4lHCWTiuioafeXCgiY9LgsVOKQ6qyZDV06LHde?=
 =?us-ascii?Q?iWfdCYjU9iubufeJX2/5pH5LBKF5IHfU1j2rrCrAN4NKCdtxK8vViST19i0E?=
 =?us-ascii?Q?PsHruVSzc6k6blsQxqZMuA83EELWZUPkA6Dg16OqGreYnw+ZpUYMwHf/jNre?=
 =?us-ascii?Q?gqj5/IK2831kuIl+Ww1u6Hei7UG1WUSXnssxvveRSwdBvq9USgGrypKUNHKs?=
 =?us-ascii?Q?r0Z2bhDsfE8dmT4beR+KFljaI7NrrXJ9Te0nz6H16TCbrEDwsZEhGaonfnag?=
 =?us-ascii?Q?mwgsOzdlhWYOpatBDioxWF3kgdR3AVzFIOKCDpqjSMHFNzGTs78whBPOteXx?=
 =?us-ascii?Q?25HnKoIIhHmzpszEIWkl68QhHQ8UVhbXs0NZFijhB//2VjBU047yBkqkCqzI?=
 =?us-ascii?Q?VbNtg1gOUQur5Kl24wPeaT7pTJKs9I6RF6jCqf+66znsEyPkVRLtm6p0oRDB?=
 =?us-ascii?Q?Ylqr69FBynAkCr5nQmSA7NVNWNXkECOQkvmXbm8aMGnvw3ZWKWZv4Z2/JxE5?=
 =?us-ascii?Q?f2G5p9WqzLEEmbhuJnN5x5vxuPVVnStWqhbh7U8SctH8Mb3Fww=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jgNGk8ty4j4BG+07Dk9j5vEVPEWWzAidxfmfIUW7KuKqJkSmCxnKV0RhHVZ1?=
 =?us-ascii?Q?t9PA6KR6Inm+JjuPk9Gml4935jksBONAlLkCD5ZH4e7E9fXoDwy2YA8Jmp7o?=
 =?us-ascii?Q?6IQd5snMQiPlrCSJk1KwetBbMPRcuFfrexyNTiPeJqAL0+oqxfo05gtYpRTn?=
 =?us-ascii?Q?zFUepRAsp3jeP8hESfE2EH1SoeP+FbIxdCbGvUJfDuh2kn5Wb92BJpaRwNw/?=
 =?us-ascii?Q?wZH+eZB1AdFbggPhSCIvFRGE1ssVPMpVJFKqxWWmi+DvwOfmv3R92Gzcm8C1?=
 =?us-ascii?Q?6K0iHINVModnrzaieRl3PD4f58VsIan+BB2IM87VfKgVpx/zlIvr4k13HVpK?=
 =?us-ascii?Q?4RMpkZBYbU5VoidZfJFGdJNWqjex1RVC0mXIUHpUxyN5DpOTVE/FLbo7FwLb?=
 =?us-ascii?Q?/kF2QGxhJIjle/GsnNwJ9WE6i1zQcsm2WQfwMK4SndRuJ9AjbcHYn9k5P1b3?=
 =?us-ascii?Q?7ulZ3svtyQn7BzgCMWLEXj0Nn2d17S9yw9Xg2rQ0bYgmCPpyFswX1dXq+gjG?=
 =?us-ascii?Q?IWJ14JvYWI9x78d5S3RtwZYu51lTzISbRqTavs8FBJL0SmRNXeVIIHbvD5h6?=
 =?us-ascii?Q?XqLOqlFU0GoRHJiqjE4PwF4JWnYrg6zReRsiypjt3uacjzayyRmVMBBQPxdv?=
 =?us-ascii?Q?M0ULd+xUkE0p6p0cqoTMIv7jNAgSou5rQ1m9E/Q5M80549KZcyFu3UWL62LW?=
 =?us-ascii?Q?axr/5KhswS7pLgu+1yHxc9aHncrlM+Wy1o7aip6aCrGlTa1qYbzjodRMdmPm?=
 =?us-ascii?Q?EpDmNrfTkt+gydWhfIILB9x728Us2Vk27Btpl5RYZl7vD/xu44/OMuYSrtA3?=
 =?us-ascii?Q?nTAjCTKv563UJoLiZr2E9qU9pEz7IzfxPQScED8osLbDx+zMaDYNP17PQQzo?=
 =?us-ascii?Q?2YEAvDFMjOcYst4V+MeKd1Q2aRwX8Md0//79F7lkYqQ92nj8rOP2CgH8ApEB?=
 =?us-ascii?Q?l2ezYs7585fp2wij3ngoqLSRkDaXpdVc+mBnBStNqe2usTwMBJ+jHFlkuxL6?=
 =?us-ascii?Q?rh74bAoyQ7Vuyd/L9u2nAk58xuWmGC/WUALMeu2UHLlHYZp31JUhhzn4cPDm?=
 =?us-ascii?Q?1rAiLDS79Du7JpI5bd1+50bebf0ruwW+/y+gWVsulTOU6aQo7GAhsZGP+dkY?=
 =?us-ascii?Q?leungYnD7Og471D15G3Yfc+JwO5LJshwPJ57F87jE/zJiLTYJZvryAwiaWsF?=
 =?us-ascii?Q?NNhPr3+yWR7VJ7qJC9FOyuITvtr+Tb+wFWWaB+YuB1J8KcMy4FEZjfVD7CzA?=
 =?us-ascii?Q?VpIza0u1ixtfGNCFg8qim13iZ50EQnKbbhVJqMAJe2dgWeaao/qPLCG8dhs+?=
 =?us-ascii?Q?oVboAdhcAvSM1QfH5dDDCIO4LQvOI2vqZuS/0iJxgAhsbD0GIXPqqMnF/0bV?=
 =?us-ascii?Q?l2yuDPHBMQz1KSIXIAocrMRsRuJvLNH/X1lU0DOJ+CVmvvNzkWhfWZFbtHFz?=
 =?us-ascii?Q?/VHapugMkBj+P96FsNuJj44GxQ9A/xShS98IJtLdRdUK+GPelak1Q8svxgp+?=
 =?us-ascii?Q?5n1c7srptLRTB5piy3Ic9X1W8+Gcu18Wt1K6adTi6G3e4aeNv2tqq9Uajm8U?=
 =?us-ascii?Q?2HDfNVW3GF87Qdljo1v3La+KEecsN6dI1w8uqaAl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89d11c84-8d35-448b-8f87-08dcd8a8d374
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2024 12:44:39.3051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JzUicei3RhG+MJ6YOWoXtpOq6B//TO1DjP0lWV/Uiyxcs6yErF3QFq6GSW+3fM45e0z/TJFlnbEiEPfdMLEWAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6913
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
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Thursday, September 19, 2024 5:44 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org; Hogander, Jouni <jouni.hogander@intel.com>
> Cc: Deak, Imre <imre.deak@intel.com>
> Subject: RE: [PATCH] drm/i915/psr: Implment WA to help reach PC10
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Monday, September 9, 2024 12:02 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>; Hogander, Jouni
> > <jouni.hogander@intel.com>; Deak, Imre <imre.deak@intel.com>;
> Kandpal,
> > Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/psr: Implment WA to help reach PC10
>=20
> Not: Typo in implement

Will fix in next revision

>=20
> > To reach PC10 when PKG_C_LATENCY is configure we must do the
> following
> > things
> > 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be
> > entered
> > 2) Allow PSR2 deep sleep when DC5 can be entered
> > 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
> > eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are no=
t
> happening.
> >
> > --v2
> > -Switch condition and do an early return [Jani] -Do some checks in
> > compute_config [Jani] -Do not use register reads as a method of
> > checking states for DPKGC or delayed vblank [Jani] -Use another way to
> > see is vblank interrupts are disabled or not [Jani]
> >
> > --v3
> > -Use has_psr to check if psr can be enabled or not for dc5_entry cond
> > [Uma] - Move the dc5 entry computation to psr_compute_config [Jouni]
> > -No need to change sequence of enabled and activate, so dont make
> > hsw_psr1_activate return anything [Jouni] -Use has_psr to stop psr1
> > activation [Jouni] -Use lineage no. in WA -Add the display ver
> > restrictions for WA
> >
> > --v4
> > -use more appropriate name for check_vblank_limit() [Jouni] -Cover the
> > case for idle frames when dpkgc is not configured [Jouni] -Check psr
> > only for edp [Jouni]
> >
> > --v5
> > -move psr1 handling to plane update [Jouni] -add todo for cases when
> > vblank is enabled when psr enabled [Jouni] -use intel_display instead
> > of drm_i915_private
> >
> > --v6
> > -check target_dc_state [Jouni]
> > -fix condition in pre/post plane update [Jouni]
> >
> > WA: 22019444797
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |   3 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 112 +++++++++++++++++-
> >  2 files changed, 114 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 733de5edcfdb..59c81f0a3abd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1577,6 +1577,9 @@ struct intel_psr {
> >  #define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
> >
> >  	u32 debug;
> > +	bool is_dpkgc_configured;
> > +	bool is_dc5_entry_possible;
> > +	bool is_wa_delayed_vblank_limit;
> >  	bool sink_support;
> >  	bool source_support;
> >  	bool enabled;
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index b30fa067ce6e..e50b476494a0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -26,6 +26,7 @@
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_damage_helper.h>
> >  #include <drm/drm_debugfs.h>
> > +#include <drm/drm_vblank.h>
> >
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> > @@ -874,6 +875,78 @@ static u8 psr_compute_idle_frames(struct
> intel_dp
> > *intel_dp)
> >  	return idle_frames;
> >  }
> >
> > +static bool
> > +intel_psr_check_wa_delayed_vblank(const struct drm_display_mode
> > +*adjusted_mode) {
> > +	return (adjusted_mode->crtc_vblank_start -
> > +adjusted_mode->crtc_vdisplay) >=3D 6; }
> > +
> > +/*
> > + * PKG_C_LATENCY is configured only when DISPLAY_VER >=3D 20 and
> > + * VRR is not enabled
> > + */
> > +static bool intel_psr_is_dpkgc_configured(struct intel_display *displa=
y,
> > +					  struct intel_atomic_state *state) {
> > +	struct intel_crtc *intel_crtc;
> > +	struct intel_crtc_state *crtc_state;
> > +	int i;
> > +
> > +	if (DISPLAY_VER(display) < 20)
> > +		return false;
> > +
> > +	for_each_new_intel_crtc_in_state(state, intel_crtc, crtc_state, i) {
> > +		if (!intel_crtc->active)
> > +			continue;
> > +
> > +		if (crtc_state->vrr.enable)
> > +			return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> > +/*
> > + * DC5 entry is only possible if vblank interrupt is disabled
> > + * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
> > + * enabled encoders.
> > + */
> > +static bool
> > +intel_psr_is_dc5_entry_possible(struct intel_display *display,
> > +				struct intel_atomic_state *state) {
> > +	struct intel_crtc *intel_crtc;
> > +	struct intel_crtc_state *crtc_state;
> > +	int i;
> > +
> > +	if ((display->power.domains.target_dc_state &
> > +	     DC_STATE_EN_UPTO_DC5_DC6_MASK) =3D=3D 0)
> > +		return false;
> > +
> > +	for_each_new_intel_crtc_in_state(state, intel_crtc, crtc_state, i) {
> > +		struct drm_crtc *crtc =3D &intel_crtc->base;
> > +		struct drm_vblank_crtc *vblank;
> > +		struct intel_encoder *encoder;
> > +
> > +		if (!intel_crtc->active)
> > +			continue;
> > +
> > +		vblank =3D drm_crtc_vblank_crtc(crtc);
> > +
> > +		if (vblank->enabled)
> > +			return false;
> > +
> > +		if (crtc_state->has_psr)
> > +			return false;
>=20
> It should be !has_psr
>=20
> > +
> > +		for_each_encoder_on_crtc(display->drm, crtc, encoder)
> > +			if (encoder->type !=3D INTEL_OUTPUT_EDP)
> > +				return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static void hsw_activate_psr1(struct intel_dp *intel_dp)  {
> >  	struct intel_display *display =3D to_intel_display(intel_dp); @@
> > -986,7
> > +1059,15 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
> >  	u32 val =3D EDP_PSR2_ENABLE;
> >  	u32 psr_val =3D 0;
> >
> > -	val |=3D EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> > +	/*
> > +	 * Wa_22019444797
> > +	 * TODO: Disable idle frames when vblank gets enabled while
> > +	 * PSR2 is enabled
> > +	 */
> > +	if (DISPLAY_VER(dev_priv) !=3D 20 ||
> > +	    !intel_dp->psr.is_dpkgc_configured ||
>=20
> Why ! for dpkgc, Here this can be enabled if dpkgc_configured right ?
>=20

So we want idle frames to be written in these scenarios display ver !=3D20 =
if it is equal to 20
Then we write idle frames if dpkgc is not configured and if dpkgc is confir=
gured then we write
Idle frames if dc5 entry is possible=20

> > +	    intel_dp->psr.is_dc5_entry_possible)
> > +		val |=3D
> > EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> >
> >  	if (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))
> >  		val |=3D EDP_SU_TRACK_ENABLE;
> > @@ -2667,10 +2748,20 @@ void intel_psr_pre_plane_update(struct
> > intel_atomic_state *state,
> >  	const struct intel_crtc_state *new_crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	struct intel_encoder *encoder;
> > +	bool dpkgc_configured =3D false, dc5_entry_possible =3D false;
> > +	bool wa_delayed_vblank_limit =3D false;
> >
> >  	if (!HAS_PSR(display))
> >  		return;
> >
> > +	if (DISPLAY_VER(display) =3D=3D 20) {
> > +		dpkgc_configured =3D intel_psr_is_dpkgc_configured(display,
> > state);
> > +		dc5_entry_possible =3D
> > +			intel_psr_is_dc5_entry_possible(display, state);
> > +		wa_delayed_vblank_limit =3D
> > +
> 	intel_psr_check_wa_delayed_vblank(&new_crtc_state-
> > >hw.adjusted_mode);
> > +	}
> > +
> >  	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> >  					     old_crtc_state-
> >uapi.encoder_mask)
> > {
> >  		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder); @@ -
> > 2679,6 +2770,12 @@ void intel_psr_pre_plane_update(struct
> > intel_atomic_state *state,
> >
> >  		mutex_lock(&psr->lock);
> >
> > +		if (DISPLAY_VER(i915) =3D=3D 20) {
> > +			psr->is_dpkgc_configured =3D dpkgc_configured;
> > +			psr->is_dc5_entry_possible =3D dc5_entry_possible;
> > +			psr->is_wa_delayed_vblank_limit =3D
> > wa_delayed_vblank_limit;
>=20
> We can drop the variables and directly assign this to psr->... and use it
> subsequently.

So the reason I had assigned this to variables is I did not want to call th=
e 3 functions
Above inside the for_each_encoder loop since the functions themselves have =
loops inside them
Which would just increase the cost hence the variables.


> Also it would be good to have this done in compute and than just use it
> here.

It was done in compute a few revisions ago @Hogander, Jouni suggested to mo=
ve it to
pre_plane_update.

>=20
> > +		}
> > +
> >  		/*
> >  		 * Reasons to disable:
> >  		 * - PSR disabled in new state
> > @@ -2686,6 +2783,7 @@ void intel_psr_pre_plane_update(struct
> > intel_atomic_state *state,
> >  		 * - Changing between PSR versions
> >  		 * - Region Early Transport changing
> >  		 * - Display WA #1136: skl, bxt
> > +		 * - Display WA_22019444797
> >  		 */
> >  		needs_to_disable |=3D
> > intel_crtc_needs_modeset(new_crtc_state);
> >  		needs_to_disable |=3D !new_crtc_state->has_psr; @@ -2695,6
> > +2793,10 @@ void intel_psr_pre_plane_update(struct intel_atomic_state
> > +*state,
> >  			psr->su_region_et_enabled;
> >  		needs_to_disable |=3D DISPLAY_VER(i915) < 11 &&
> >  			new_crtc_state->wm_level_disabled;
> > +		/* TODO: Disable PSR1 when vblank gets enabled while PSR1
> is
> > enabled */
> > +		needs_to_disable |=3D DISPLAY_VER(display) =3D=3D 20 &&
> > dpkgc_configured &&
> > +			(wa_delayed_vblank_limit || dc5_entry_possible)
> &&
> > +			!new_crtc_state->has_sel_update &&
> > +!new_crtc_state->has_panel_replay;
>=20
> Good to move this to a small helper function which can be extended if
> required as well.
> Also seems used in post_plane as well.

Sure will move it into its own helper function

Regards,
Suraj Kandpal

>=20
> @Hogander, Jouni Can you also ack if this handling for PSR is ok.
>=20
> >  		if (psr->enabled && needs_to_disable)
> >  			intel_psr_disable_locked(intel_dp);
> > @@ -2735,6 +2837,14 @@ void intel_psr_post_plane_update(struct
> > intel_atomic_state *state,
> >  		keep_disabled |=3D DISPLAY_VER(display) < 11 &&
> >  			crtc_state->wm_level_disabled;
> >
> > +		/*
> > +		 * Wa_22019444797
> > +		 * TODO: Disable PSR1 when vblank gets enabled while PSR1
> is
> > enabled
> > +		 */
> > +		keep_disabled |=3D DISPLAY_VER(display) =3D=3D 20 && psr-
> > >is_dpkgc_configured &&
> > +			(psr->is_wa_delayed_vblank_limit || psr-
> > >is_dc5_entry_possible) &&
> > +			!crtc_state->has_sel_update && !crtc_state-
> > >has_panel_replay;
> > +
> >  		if (!psr->enabled && !keep_disabled)
> >  			intel_psr_enable_locked(intel_dp, crtc_state);
> >  		else if (psr->enabled && !crtc_state->wm_level_disabled)
> > --
> > 2.43.2

