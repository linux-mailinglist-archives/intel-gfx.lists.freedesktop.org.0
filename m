Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A1595975A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 11:45:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C3710E5BD;
	Wed, 21 Aug 2024 09:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CiO0eIss";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D16210E5BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 09:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724233534; x=1755769534;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ws97UFXlae6a05qryJU/l8UUojGNAEx1kXcoGDk+KoY=;
 b=CiO0eIssEyp9qN7ZccMZrWvxQ/ajMlJbgphFmN/Y2fr75GJAfmcMt9pu
 sMjLytQzdtJy/GsFq+kKjQClA4/yELBqcT7ouB6PGzXxk+mqrkLDyaGgB
 NJzri39MXeB2Cg5/DBPkhcY2IfvS8fwXIc9q7WpDvo8kAE5v7tihbka8u
 WiiZF7KJOA7iVXVUtXuicd0mF8AtrCsEDjZFZ7XoucWOXH2jn0nAy0AjU
 xKphv7jH6vQgeLBdjxNuorr7qKQdX7HYAu84ElOi1E+sgKzcz9wQnx3rP
 AHu+kjN9y3ISi0khTs+BsOMZmitJledGh8zI4gzKxaT82dqW6NZXRBlep A==;
X-CSE-ConnectionGUID: XQH37oNMSJyh7AC+YlE7UQ==
X-CSE-MsgGUID: 2/dGqTn2Q7it4kBxHEXBVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="47975604"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="47975604"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 02:45:34 -0700
X-CSE-ConnectionGUID: SX/aa0jHR6mvOkEJEmMSFw==
X-CSE-MsgGUID: SmhoNhrtRZOlwnZ/De6//g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="91782498"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 02:45:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 02:45:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 02:45:33 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 02:45:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iUpznrWdIsPrJGOLuhcEJvD4OpuJ6t/Pf2QjAsjvmpbBQKoyUr50zwINNLoooyrKn0DEy39qxOEfOZ7Q9SFeLZXsHiO9J6L6cFLDRAx0MOqaprtRMX23pm/jfuuS5dO4p1o53K5RrBBa8BRV8TRDTCth4ihdWoiL/v/yvbl1QhZgmZj8GDEG/mXp8Yo/W4/hzRAag/Sl2+rgEV2XPqDRkuD3fOdYN81xxyxmfqt+IBnHhLaXHlDh/UlQjVc6OWz1LzeABu2V4XedGigPdaWqcIM+GG5aJ7yYx3A0SQGbDrAioP6YF7qI4zUZ/fG6VbA9m2apZJGro49CvGwRgK82mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xMgPipIm17l4IijgxSkoneT2KAqmqXOWKxnlyZU0Tks=;
 b=LmKZDHKQQrXunKT1zepWj6S4tdnC8EYhTZCBcT1ykiMOFua64N7iW7ju+nBSMYl8fu9H3hcMUN2ceFlsXnyX5OcNuK0dUE0djZ/0CjW0ZVz6Q+T3vq+8J2rzXPNXcMMJpshM8GTF3PV08Xmf2k4njRZw9+UhqSQlebUMgK9mProWIpJFhKw+Trhj07KMVyWuepfWrOZamysmY1mN3JXbqiThlYnUd2AzUf5/kzHgA1BljlPrVrQHVRLHQs/0LSug+yf7YRJT4A8CXyo9DuaKr5W/FuwtDe+mqw0wNjcAsyE6GMTcQOAXA9X/Or4bwLTCfPOwoNMOfHN5QHYBO2M3Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by DM4PR11MB8129.namprd11.prod.outlook.com (2603:10b6:8:183::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.20; Wed, 21 Aug
 2024 09:45:31 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7875.016; Wed, 21 Aug 2024
 09:45:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>
Subject: RE: [v2] drm/i915/bios: Update new entries in VBT BDB block
 definitions
Thread-Topic: [v2] drm/i915/bios: Update new entries in VBT BDB block
 definitions
Thread-Index: AQHa7l1x2G37MBePY0WB7N0sdsEog7IxgDIQ
Date: Wed, 21 Aug 2024 09:45:31 +0000
Message-ID: <MW4PR11MB67610E429D3A192F92883DFFE38E2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240814152153.321537-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20240814152153.321537-1-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|DM4PR11MB8129:EE_
x-ms-office365-filtering-correlation-id: 60d6c053-7e35-4f88-1420-08dcc1c5ff2f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?VW6UaPbiNoB/+vG0DoYiQXrVhmMjqsPQgp0lAtEHPvLIrvoKcSwTpjBGwfXj?=
 =?us-ascii?Q?7/+21C4WljRx8MIHk3USY56Ze3HDvqjCY8a3QCBYnaXVYqne5B7et1L6c67T?=
 =?us-ascii?Q?TZc/oefCmQypJiqPUNyhcDxv272etH8+vGCbv1vhWmqfBA8JOgqArrUHRvKW?=
 =?us-ascii?Q?9es3fdMuwEAYCr2wh9K7fKTm88GaWf8zceJasAyGwO9RCfAWLp066WiY5f3Z?=
 =?us-ascii?Q?Zjk1ASjcu8niQ60G79CaGD/+2baQF2Qyp3XNLiJj9KX3ZUq/W0n41bP4aTw1?=
 =?us-ascii?Q?7KH996SRg9B7c2gUPVoCgYtKuXqjetbZ72w/U4Em7Vm5vtvPwkzzWBZzVBiX?=
 =?us-ascii?Q?BrjcVl7ss6DlCEsdkgofe58lk3aiRDu5OMrJtE22IoTW4PMrp/W4T+0l1kZI?=
 =?us-ascii?Q?ryJTxKHF/DeC1RNVjjL7gijmYK4sUZsiTNxBVgLy5KR1btB/IBkXrmgWNVfH?=
 =?us-ascii?Q?AiTkn+qLTfnMTpb+tvpil1CZgqOVQbC+wY14GAnE27H16XstFEdxg39lZAgn?=
 =?us-ascii?Q?FHq5mEpt88K/xki/8gjOAzPiMyMi5OeMhLTDA9iB9hEq01/SJNyCTPdb2eYN?=
 =?us-ascii?Q?FDD0lfvAQORgX/ZYWpoHlj3Yapj12ydaxtk2L4AuMavbaMhCxNkDSFi/KoHy?=
 =?us-ascii?Q?lrzVk0hm9kzUykB9MY7nyKIzgmo8YTlUD0yGCxDS2YLhzD6nu3+W1ASQhCVY?=
 =?us-ascii?Q?lvjWFBSJfL5hnCFlHooMzFVsxmFs3oczikGNzp8OQ78QzpQ/+gN2Y+uAq1eE?=
 =?us-ascii?Q?2b9VylZBuhScHrGi/P7WDyNxovPWi2+mLhQkXj0muAdAMEwJ1K+ETQTMKp5K?=
 =?us-ascii?Q?R2gaE3fcnfvUAXMQ+kR9dWkoVliFd5xf94aWD3od2Kk8ieoFFxqwhku6j5nl?=
 =?us-ascii?Q?9raH5mRhANj8orv/2Lo27A/PfJeRsgxPwYPo3xmxgZIVuaoZiG+Wpse7p7HM?=
 =?us-ascii?Q?vCupx+/se6uhk/5wwydf+LQJJDFnJfNMKI8d2UqA7cRrpiW7pTeo+iB0u9ux?=
 =?us-ascii?Q?X3eRvtd1o/2SBxoLsTkSZYbbdSqel6Fil3Msku9R6yvdSB+uEjtxVBAwwNJq?=
 =?us-ascii?Q?lDz5Ym7VXfLMyte7oG3lLwRkHZX9B0dUae1R7tNNArYACBGIVEfLM/BHfdw4?=
 =?us-ascii?Q?OkhlHaSrJoq7yhOdj+zQUO3ZdHjvq/aQ6QWo2pPy8w41wnSQwY0c9gw+mU2n?=
 =?us-ascii?Q?yPBh9bK/VIyyRywlTUqnGrW/rsFIR/W3rrkOD1FxLhBnX7ZPV1AURDgJuBWC?=
 =?us-ascii?Q?ggLf/OFEFrEhuP45w8B/bCHlJRf0aZJhUH41tTylPtNi22+1DeGf5tCB8CpB?=
 =?us-ascii?Q?J30/HdERSaCK1MG8cHUfUmPe++mrX28z48B3igMftVX+cbqWrdT4MOHSO+ZS?=
 =?us-ascii?Q?/AhAhd4YUdE7TA5vArP7POMskTIk6uEtGta85OvUCMFGlfNKiA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5E7w9QIXztPb4axPen8aiskOcwoRxlS9k7uc/d+4BVOxeJoinUjTLiNGhSUb?=
 =?us-ascii?Q?8k/7e06dqlLvV51uDvfdXLSij6OtiXg5Eii6MUn8reo5sfADYMyL+60FqgfI?=
 =?us-ascii?Q?vU3c9k3lppmxBbooYTBq7+druU3EGF0s8ow6qqp0CU10RJ2eTFbSKkPSxo49?=
 =?us-ascii?Q?Fapkoc8P8fQN8qKIFxm/PRLNaeRa4iE0DE8AmQGfZVSMgXp3DeM4WqUP2Hip?=
 =?us-ascii?Q?6hK8zbevNNgKsmf8+C84GEtIKQ2mvKLEaBsNUxsmhVaI37uuQ3vqTVVEU5Ag?=
 =?us-ascii?Q?gN9JJ04pTbdDovttWFo1Mt87tCqFV9sCrz7LPLbAf1DJ2kJnjOWcDT76SQBU?=
 =?us-ascii?Q?J7od+j6J7AcPBdZAyzx3mAJsW7VrRtkkIQlAL/IknXVOW83drW2k/B9I36J7?=
 =?us-ascii?Q?QmHLGU7ioZM9HvESbRxBzrJ7V21qMxFFj1OTmm1TeFzvEJ7cBVMh9Ep3fQ2I?=
 =?us-ascii?Q?AWjLDASn0wXEcf4pdGIc2H4QLxpB/hdtmVQ+jUjsk2F0kkIGosweR9ldxcPc?=
 =?us-ascii?Q?7gbZYjtHBBpLgLS0kMTf/yyy7XAo2pVk48JDhYyIgx+l4Wed6Ot/eYAm6sR9?=
 =?us-ascii?Q?h8F6cmbSnsTcRJ1duzTzBnkYEYPd5wmnmt0a0JQxqWBE0AfGEDUIUsdz6t6y?=
 =?us-ascii?Q?1RaAUbcoGVQeE3IfNY8shTRPL3zmGPySiULy4PQKQGRCsgfmGbBq6RLD8als?=
 =?us-ascii?Q?TAsQlBoUGyPD85djp2RfSBCAhiZMx8+MZGUVIeCBs3Qbu+GRLBjDhrTI1sKn?=
 =?us-ascii?Q?pFIp5ZInyDbiVhUVwkIlifWQr9unHgUXhdx0pHrI8RoKuoNMWTOR99OjHmJc?=
 =?us-ascii?Q?3zqVATqD5F9s8dALLDg+Qx2RWek9+rEZsg2thZkd7EWvm+DVeVbCC+SADkcH?=
 =?us-ascii?Q?qDMD1n8kas1MR4r/UsBTfJCcwEgesBYX/P1rvfO871oDTr2ZtKWs/ufV1Lk+?=
 =?us-ascii?Q?lZ7as2o+e/78MeQuogT7/PO0c94XpHiOiJO54GsJdSsOw5/dr4JP6p7Ykdmf?=
 =?us-ascii?Q?bSd9cUwJtwcmN4Xq8xnxtAZ7izf6F7rwHFnkWavnY9iWbis4LqYTFPM2oq9H?=
 =?us-ascii?Q?BRItoCLa1e0gNiibTsCaQjIpgx8GAxcziD0iEw/kf7jmYQhIvsnEJcqFqaNE?=
 =?us-ascii?Q?hZvqOsuunPgkDeTNQOxH50VwOLe74TCwiJsE82fbVeEZQ8rvInEgc+gycraX?=
 =?us-ascii?Q?vCh14ZrBd/lWHGJvtUDqW0nbNXS5WP5RW/yDZP/QMiHbL25kesrKQhtu8bsg?=
 =?us-ascii?Q?++e4ptu4NwzBVduIbmRa9rnhg5ffmnwxpkl6ZTArJEDtY+Xq68z6SdYcPl8Q?=
 =?us-ascii?Q?7hSM4Tox2y3uwCpZ17eMP5laR5/FLkZUxhtwTLO5rdD0p2jMnd11D2k8sKVK?=
 =?us-ascii?Q?nFZVp/KkpgNgZwv8N56UBxDuFZZPOu9YtbMQkkH/aN5eoAl5yWStODB0HBpP?=
 =?us-ascii?Q?eUu3kxa8nrmx1fnhhAl5BZCwjzSy+tW08UiS+XohMR1lncBIVlAYdwpU2kC2?=
 =?us-ascii?Q?ukxVGMqu6PtJ7rk2lmAD3lOVsYRlyhouysErVhn0b6TBGJa2b+PuoSaSOB9p?=
 =?us-ascii?Q?WwfjDth+c5sls/SKAfI3yJ1HOVVVwrAcLfK+hBdP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60d6c053-7e35-4f88-1420-08dcc1c5ff2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2024 09:45:31.3563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E6mOetrqoDnlg9oHKFWX9FOLVxqOUzmt20Vtnwu6QT5ZWjCmruA/GIRQLnXWjKEUkf5vNVKoAV0PCmXXVfK+sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8129
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


> Subject: [v2] drm/i915/bios: Update new entries in VBT BDB block definiti=
ons
>=20
> New entries updated in BDB definition from VBT v257 to v260.
>=20
> Extend fields in backlight power controller VBT block 43 for VBT v257.
> Add t6 delay support fields in edp panel power block 27 for VBT v260.
> Update supported VBT version range for obsolete fields.
>=20
> v2:
> - Update the commit message with description(Jani)
> - Rename variable names align to spec names(Jani)
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 37 ++++++++++++++++---
>  1 file changed, 31 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index e613288937e4..454a309d766e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -1080,6 +1080,8 @@ struct bdb_edp {
>  	u16 edp_fast_link_training_rate[16];			/* 224+ */
>  	u16 edp_max_port_link_rate[16];				/*
> 244+ */
>  	u16 edp_dsc_disable;					/* 251+ */
> +	u16 t6_delay;						/* 260+ */

Should be t6_delay_support

> +	u16 t6_link_idle_time[16];				/* 260+ */

Should be link_idle_time

>  }=20

__packed;
>=20
>  /*
> @@ -1321,7 +1323,7 @@ struct als_data_entry {  } __packed;
>=20
>  struct aggressiveness_profile_entry {
> -	u8 dpst_aggressiveness : 4;
> +	u8 dpst_aggressiveness : 4;		/* (228/252)-256 */
>  	u8 lace_aggressiveness : 4;
>  } __packed;
>=20
> @@ -1330,12 +1332,27 @@ struct aggressiveness_profile2_entry {
>  	u8 elp_aggressiveness : 4;
>  } __packed;
>=20
> +struct aggressiveness_profile3_entry {
> +	u8 apd_aggressiveness:4;
> +	u8 pixoptix_aggressiveness:4;
> +} __packed;
> +
> +struct aggressiveness_profile4_entry {
> +	u8 xpst_aggressiveness:4;
> +	u8 tcon_aggressiveness:4;
> +} __packed;
> +
> +struct panel_identification {
> +	u8 panel_technology:4;
> +	u8 reserved:4;
> +} __packed;
> +
>  struct bdb_lfp_power {
>  	struct lfp_power_features features;				/*
> ???-227 */
>  	struct als_data_entry als[5];
>  	u8 lace_aggressiveness_profile:3;				/*
> 210-227 */
>  	u8 reserved1:5;
> -	u16 dpst;							/*
> 228+ */
> +	u16 dpst;							/*
> 228-256 */
>  	u16 psr;							/*
> 228+ */
>  	u16 drrs;							/*
> 228+ */
>  	u16 lace_support;						/*
> 228+ */
> @@ -1343,12 +1360,20 @@ struct bdb_lfp_power {
>  	u16 dmrrs;							/*
> 228+ */
>  	u16 adb;							/*
> 228+ */
>  	u16 lace_enabled_status;					/*
> 228+ */
> -	struct aggressiveness_profile_entry aggressiveness[16];		/*
> 228+ */
> +	struct aggressiveness_profile_entry aggressiveness[16];
>  	u16 hobl;							/*
> 232+ */
>  	u16 vrr_feature_enabled;					/*
> 233+ */
> -	u16 elp;							/*
> 247+ */
> -	u16 opst;							/*
> 247+ */
> -	struct aggressiveness_profile2_entry aggressiveness2[16];	/*
> 247+ */
> +	u16 elp;							/*
> 247-256 */
> +	u16 opst;							/*
> 247-256 */
> +	struct aggressiveness_profile2_entry aggressiveness2[16];	/*
> 247-256 */
> +	u16 apd;							/*
> 253-256 */
> +	u16 pixoptix;							/*
> 253-256 */
> +	struct aggressiveness_profile3_entry aggressiveness3[16];	/*
> 253-256 */
> +	struct panel_identification panel_identification[16];		/*
> 257+ */
> +	u16 xpst_support;						/*
> 257+ */
> +	u16 tcon_based_backlight_optimization;				/*
> 257+ */
> +	struct aggressiveness_profile4_entry aggressiveness4[16];	/*
> 257+ */
> +	u16 tcon_xpst_coexistence;					/*

Should be tcon_backlight_xpst_coexistence
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> 257+ */
>  } __packed;
>=20
>  /*
> --
> 2.34.1

