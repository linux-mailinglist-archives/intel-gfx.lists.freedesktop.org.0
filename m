Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DFED2B76B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 05:36:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D46A10E7E9;
	Fri, 16 Jan 2026 04:36:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AhFE0eqr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E384A10E7E9;
 Fri, 16 Jan 2026 04:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768538188; x=1800074188;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lC7HeL4Ur0SK3cvbOOmlHf/QCB9Hrb9sab+/aOisVy0=;
 b=AhFE0eqrKTYnG/gJ1HfjMYve5J6hKkumwgtEmw1k8zvQbZ6MMbrAcYXm
 JNsGTVdz8Op3w6eajSnm2f5j8PL9MhFH39QSd6ljj0dO4XZiuHa+57aF8
 KfSP62EUVGokYR792NPpWKzvl2AexFSMoUQkGP8wI/4D7XDi/Q8psTcYZ
 U3QxRrK6JAtgM90TYi5SdnR2P6OwrC87TBjOztwto15fPOTtuw12TgbyM
 S+wFpgvdeABU+Hm5WGV6sA17cWqltkD6vo8EmycQAOjSMZgkpzEe3vOsn
 HlSds/5lvjHd89wx8uxPZoq/ZGoS4onx8qHxPqDqk5yCXOp1c+nIM+bD5 A==;
X-CSE-ConnectionGUID: 0WZzB/F+TpKlETb/ctmOKA==
X-CSE-MsgGUID: Xxa+6FpjSxSSfY0Qh6qh5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="69908061"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="69908061"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 20:36:28 -0800
X-CSE-ConnectionGUID: OvFDb9zYRVyrQwJlQ6ckHQ==
X-CSE-MsgGUID: kHoR2/pcSLu4bKbD7u7CPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="235834840"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 20:36:29 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 20:36:29 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 20:36:28 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 20:36:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D0iKBnptkmJA/QOgQ45EDt1uDRqJOf4M36AoizENZ8KiXGcw2DwVWgENw2sJ4kiAj5cykLdgT3NrU2Oo8g37Pt9LwuTFxjeqRFZ5hyJ4Rioy0sj5868zVwh+zpRCsyr6ZdM48jOa1SnaZiQRqXaX3K7Xzx+SOMYmICm2U5ndqSltck1942A0Nbo26xAcOAdthCIZjCLvcC7bFEDhn0DvX3kzhhhBuoft30gn82yDfxCzRILLamhR9oO3Ih7sb+wKYQGZFAPSfaNkAkxE4Wu85FfKCouVgb3wZwaKHp22HKPJeRVVtTPrbDZbo65VEhQ+aedVprMhaNMEjRLtiP287Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=koW4eZ+XHJ89Xc7BVCu8ZxlC+uq+Pv5IfRKYvlrwIYc=;
 b=ZNKLr2vv5M/cIhoDe/DHusAnvDibt9N4dAQst3QKetqefOSfvpzYCLK6NcGtz4YDbpeH4b7pCsvHSA7VDYbNkSPX9CdBec3QQ7WKIn9i+BDXLnlK2QpE0ttc3qMXfADA3ce2GNi7G67U+QUkkJdRss7qoG55UetmvaMezX8n+AoZmEKcnTsQQU8ocJq9QIjGtTX5QOzgMlUQsXqEnFEG3sbBU4nfk4w3VzkSrnEelSwc259iExqK+ovgTp3b69+3OWCP8rrb1DjVL7cYekFFxNHAQ9UD8XxIauZR6q1YDkNl0Uezo89lqxOjPzMQ5T4OgkWukWJKwoBHYxnrPaLYyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH7PR11MB7569.namprd11.prod.outlook.com
 (2603:10b6:510:273::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Fri, 16 Jan
 2026 04:36:26 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 04:36:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v3 10/15] drm/i915/cx0: Add a fuzzy check for DP/HDMI
 clock rates during programming
Thread-Topic: [PATCH v3 10/15] drm/i915/cx0: Add a fuzzy check for DP/HDMI
 clock rates during programming
Thread-Index: AQHchfSY0jA3QeJNJECt7OoXmL6s+rVUN0Ng
Date: Fri, 16 Jan 2026 04:36:26 +0000
Message-ID: <DM3PPF208195D8D24DE0C61CB7AF4F27BE3E38DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
 <20260115075101.2214842-11-mika.kahola@intel.com>
In-Reply-To: <20260115075101.2214842-11-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH7PR11MB7569:EE_
x-ms-office365-filtering-correlation-id: 31e22903-0be8-4351-0ef7-08de54b8cf94
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?KLjlV92bnjAwxFFnRzelSIlrtZtASLrNj86DlnAL8aSAd89fpR9615EeBVQk?=
 =?us-ascii?Q?0p4T0p91FZ8TW9wXZTaE7XBmg2fiVtshPf03Y3d7uqT3fIdP1ab9L6QVW4Sl?=
 =?us-ascii?Q?5fyzVPrjc6Wjt0acPLYnoXTlJEc/XvE5EEKf0hxzZojTtSrHXL8pirttIOFn?=
 =?us-ascii?Q?w8y8Nsf8K/h+drGWs1oFQECmBqmKWrTV5eLuh7OvP8xrvjY1JMzSWkbZlyBo?=
 =?us-ascii?Q?XmpVcjtKpjK1Tosu0bBY3JW41jRC+RhgmbGyFtI1tZEGrH3fNEgbXhXqJtDk?=
 =?us-ascii?Q?Z5Xwy/nSRxBInI0p0SKnFDDuo2nytePrIZr37/ketxnCL8Nh2un+F+VgtApI?=
 =?us-ascii?Q?LThNmMv22PQ70XNw9+SGvkRVZFzuRMbMXFMPOo8a1kBG7J817UXbBPpthHhl?=
 =?us-ascii?Q?sC09+OBUxbdYjC07opEh0IpoVUiaY1k3xgqf7JvH1CmOfBnGxvsKUy+YR3VY?=
 =?us-ascii?Q?YgBawrgJ1HZhRgauGRsV5AZLYan0um1jXWQZcn0OJyod0i/tlw7vXkLc13tG?=
 =?us-ascii?Q?kDJSlfEpQ5VOBzfn4/OPqQ5a7im0F2y+WnueWe4Th1yKm0IPASpxBo/DZ5Qw?=
 =?us-ascii?Q?JjoeUyXHzwVvwaxHbkvhPUl3HMby0ioDj4aVNM2+I1MzoMSTQbfzOwDjZQdY?=
 =?us-ascii?Q?Ote7eMHnKH1uPL4CZrYrNvUkCNtqgcbguupctPMxVLxHrqLsoMliCdWemHjp?=
 =?us-ascii?Q?NfpbfNTpBfR3QcndLg03maPHXx9VWyelF6xc7b0UknawdLHDO0Ux57EqW/ii?=
 =?us-ascii?Q?1ysOfReidBUqRNECEGC97TnMNbo7yuZb+L5i+M7o4zPBz6P9p5Swr2FiA386?=
 =?us-ascii?Q?jAntK4DlvEDyOL5E76xOv+9J6TFloVVzUoU5XZlVjfPZ4XEquQEXh3lnexza?=
 =?us-ascii?Q?vVps+8wkoEm7Gtri3h7jQVvL/s/nlDAyJzimhXQeODtpgo2NSR/25NhNdRb7?=
 =?us-ascii?Q?jgqaf6WW7lEgb4Gkt41lcD7PAEPIDhJB+EtMWB3k1b+njOFLx150Ux1aA5rN?=
 =?us-ascii?Q?s+zDeuITffJ3d43PO+2rsCb6RuGEIdEWnC9qMVMQa655tJd3wPX/1XElfA14?=
 =?us-ascii?Q?wYp197eIrc0ZWGBg/9d8IQUC/ovaWHvnnRczPOd94ZvLaVW/bAvWmhKdYNAI?=
 =?us-ascii?Q?//UKgOxX6+E6XRnhGgN91/LjK5EMwh1hJHiS0UL6AOGGaOgUv2eGAt6hWHln?=
 =?us-ascii?Q?Szpb9DrNuiFyqp/CmJiXSZuRzEjZ9pJ+AyELE2VzXnRb9PYXjexVfgcuOVZB?=
 =?us-ascii?Q?GDffCkyIx+2yMgxnkZHUdaw62A7aZgLKNb+jgUCyVD151pK2HCt95cNmA1HM?=
 =?us-ascii?Q?IRx6p3SOL/+PrtFVQFFO5KaHmTU9aDRuVPIInpx6CGHvdcdGN1Zdp/LFtiY3?=
 =?us-ascii?Q?oKG3nkS02bbxgUJhNeT8w+KKIheFyPZsq92DF2cIkBy3X5X9+lf1jt7d9g/z?=
 =?us-ascii?Q?6Xekg35oxOwarvVoS3ERvGi8L+w7Km+41mANHGgWTmCnjIEsxpU55xfsUE7P?=
 =?us-ascii?Q?vl21JkCFYMdfxKpcTJGQ1w5HH5Y4GtLH6PPHXNyVA6EMK6QoKnMKGmypsjQw?=
 =?us-ascii?Q?raCSd+5bPi9FHiYcsbFjKcAlO5BAIJoJwaOFA6TsztZv4yyTznajO6m+bhVd?=
 =?us-ascii?Q?CdOME1Uagz9MaYRbaFG1y1g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5MZ/1vuoKX9/Bi1iPsjhcn0CnmYhowocIjizmxMmyPPaMFrGF3bpmdYWgTuu?=
 =?us-ascii?Q?dYki+GYIgYZQ6D+wpposXbzDkay7hnkLGuhsdBV9B7oIbFnYeKER2opvcCrE?=
 =?us-ascii?Q?FWsgq1kLNhTS/pBe8OdXQSEn+AiiIZH7na+2c5lKrP4Ifj4VgWPjTOCSYl4X?=
 =?us-ascii?Q?gpYhGMSeS4JrW8+7IT9s2uDL70xsXNHUK+HqsqtU3jCj3i4x0W1Bv3zbOImP?=
 =?us-ascii?Q?EX6Q0+i70ZZKlTbpFpIdVQZbacU/BJodjX26xQIMqw3SlBcw7L3dOSdHW2Uv?=
 =?us-ascii?Q?xrud9m4BWUwyY13VrG2otj2170dOjLpptsT4y+VD4GUQiYq1y7/hWyWhJF7W?=
 =?us-ascii?Q?JSxH4eHJfud4BRHoxsQRxqISTBkWllwuHAIHUhLpOUkss3ToKC0XqKjrz7HX?=
 =?us-ascii?Q?fVTUUROqQvfm/YNDQp/mWq36nAOAE9832hVOj1j1L6LiCwx6MN0W4sFGmbSG?=
 =?us-ascii?Q?014s2bPKXBE9TqBvUT9gzJAl/KG1R2MbskXyLmc+IsOyA+zSTwDLMjApvhHW?=
 =?us-ascii?Q?eD8ZahNnL7dXz/qPKeVBxjitdRikH9PkoVJPw8p4sneyVjd80B0QouNluOUl?=
 =?us-ascii?Q?GRCEriZXzyeSaZrE5DxsSdF5BqsUAAyrcyjSQPpIbio8LPntRcs8/F4dMEaN?=
 =?us-ascii?Q?xdLgfo7Hgo+d6gbk/KEA9v6LV+qDl7fw1k9GvzZQu9Bt5D1towyaFsE1FLEi?=
 =?us-ascii?Q?TfNCBLhhb1XC5HExgHokx7JCRVXDVL7icUaudkmlBVRXlfDNIGSVdyNfocmg?=
 =?us-ascii?Q?mSiNyJxt6NjWCZtCrMJ77MZVlpLh0AiZscTMAAC3/SlArpnJ68Mlllt47qwc?=
 =?us-ascii?Q?d+7/wA5rE9rqGdRgfX4blNny6lPpAQfCfqEqogyAkKoBYMVYpRTaKk9DDtBO?=
 =?us-ascii?Q?gvVFK8FI/TXhs0SHT9+IsnBk/hDLPD7wmQ8KgXrPTRWCCemjrzSRa3h0nIaQ?=
 =?us-ascii?Q?po8jBDNYN9A9A3bcWSVjEHx/M6yn7HrLVEknBJfgcGAnZiQ+qQ+Wpam1YYHT?=
 =?us-ascii?Q?jTgbohXC7N8WBiLAnBAHo4+enHsd4TGXJ31X7wmnm/4GBLX2U0JdkfkmDehd?=
 =?us-ascii?Q?mZW8g/WDZCiFobCnkmUnzddr+SG9C0Ug2qF1zzMMBsLovQ8J6sKa3lgDW6OW?=
 =?us-ascii?Q?ZOmpV0fwSXAb32DqYC8BpJGnXw4wwGw3Ovnc28b1ts29x2OguUASRU/ui6XY?=
 =?us-ascii?Q?rJYBmv4tv/3ENEbcW5jQN5iZVx4HI6RE9y58ifM4e3xv3bLgybzEQxFsSyNv?=
 =?us-ascii?Q?3I15mrEQFIGJOkNsgRCxIKMndl0vl22oSkKqtdtmpKVDcPwc1T0neyv429TI?=
 =?us-ascii?Q?9GwhF1DaN2qUUI4MoFvLyLDYkxO56+EZIHOYHmFQukQ09oGg18Aq9ekOCGEx?=
 =?us-ascii?Q?OcmVZlVMLQgxKUYFTtgP27fKnKu3lhT1ybFCyUiDcXiYm9VvXKvOmrHFypxC?=
 =?us-ascii?Q?hXN5f77LF5QRLAJ+C/+f3ucj0R+7r+gOKkndWMNvj29CRMXjXe9iPTRBotmA?=
 =?us-ascii?Q?fXRmo/lXjYSg+WooR9CiceLEgLY7HjR1OezYsV9IJq/CRipLI8TzGyMgwDGG?=
 =?us-ascii?Q?G6g9uc4jnHyp1eBLMhLGTN7dFjze5kk64QG3saL4gKy59wORw60XqwccWG61?=
 =?us-ascii?Q?oddkJfk7uP436wOiKyIgoy4O8pXYbHV/bKD+bWv+5yL8RxG91Wvzm9Ptr1Ws?=
 =?us-ascii?Q?GC5IkL2w8C+ooOzP+YyfuQ3pUJMW5qNz6rZ4fiNbg6mP6A+27kipNapN7jtp?=
 =?us-ascii?Q?0dNr41Lzpg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31e22903-0be8-4351-0ef7-08de54b8cf94
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 04:36:26.6328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BmX/dJWoOlflE/ecSMTLhVEWxYTyqeDoR+1nphimK048kw0lUiXqR8/xZT5gIl74BaQ0ZApIIZxps7nL9Owy+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7569
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

> Subject: [PATCH v3 10/15] drm/i915/cx0: Add a fuzzy check for DP/HDMI
> clock rates during programming
>=20
> Since the clock rate is derived from the PLL divider values it can have a=
 +-1kHz
> difference wrt. the reference rates in the comparison
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c |  8 +++++++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 19 +++++++++----------
>  2 files changed, 16 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index eda0e176b8be..3b56d25c8db8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3012,6 +3012,12 @@ static void intel_c20_pll_program(struct
> intel_display *display,
>  		      MB_WRITE_COMMITTED);
>  }
>=20
> +static bool is_mplla_clock_rate(int clock) {
> +	return intel_dpll_clock_matches(clock, 1000000) ||
> +	       intel_dpll_clock_matches(clock, 2000000); }
> +
>  static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  					 const struct intel_cx0pll_state
> *pll_state,
>  					 int port_clock,
> @@ -3037,7 +3043,7 @@ static void intel_program_port_clock_ctl(struct
> intel_encoder *encoder,
>=20
>  	/* TODO: HDMI FRL */
>  	/* DP2.0 10G and 20G rates enable MPLLA*/
> -	if (port_clock =3D=3D 1000000 || port_clock =3D=3D 2000000)
> +	if (is_mplla_clock_rate(port_clock))
>  		val |=3D pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLA :
> 0;
>  	else
>  		val |=3D pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB :
> 0; diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 055e68810d0d..05e898d10a2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -56,6 +56,7 @@
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
>  #include "intel_dp.h"
> +#include "intel_dpll.h"
>  #include "intel_gmbus.h"
>  #include "intel_hdcp.h"
>  #include "intel_hdcp_regs.h"
> @@ -70,16 +71,14 @@
>=20
>  bool intel_hdmi_is_frl(u32 clock)
>  {
> -	switch (clock) {
> -	case 300000: /* 3 Gbps */
> -	case 600000: /* 6 Gbps */
> -	case 800000: /* 8 Gbps */
> -	case 1000000: /* 10 Gbps */
> -	case 1200000: /* 12 Gbps */
> -		return true;
> -	default:
> -		return false;
> -	}
> +	u32 rates[] =3D { 300000, 600000, 800000, 1000000, 1200000 };
> +	int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(rates); i++)
> +		if (intel_dpll_clock_matches(clock, rates[i]))
> +			return true;
> +
> +	return false;
>  }
>=20
>  static void
> --
> 2.43.0

