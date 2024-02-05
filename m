Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9EB849D2D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 15:37:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 271D210F9F9;
	Mon,  5 Feb 2024 14:37:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVgRubiH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0906810F9F4;
 Mon,  5 Feb 2024 14:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707143852; x=1738679852;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eDHyYOfB9FpcNms2Aq2XW1VqraSE30juz4xcOfguxQo=;
 b=HVgRubiHdbN7l/t+pMABouTgNoSxSmmYvHfd94D7eySsPTKsMp+zsMnH
 ikm1mn0TVBsusXBn92EC16PgU55m6LeDjZ1eklJ2AuZ/Z5Dviuc4G1LJ/
 cVZkqgLibIENGqmcE7x6cxP+xPiarYBckednJhGR3daSCoZjriE2u74jF
 XXCnX5xv6B1UkKtLUWm4eb9OMZlvcG4jOKEEELGTFQlCYBsk4oQz31HV5
 1EpYvQJbBDqEm2w/2xHV6iFkBBzI5p5oSuIN/YbaKCWgW66nj9/ynxhL5
 bFzoTls9YBffC8hVR6jCgWXrpa35uZDL89OTVUYltrHgPNZMgY9qTqs9n g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="11886779"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="11886779"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 06:37:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="933168826"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="933168826"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2024 06:37:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 06:37:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 5 Feb 2024 06:37:29 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 5 Feb 2024 06:37:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJ0uW0VyDlhpP/QsSbteeMi8FcxJn+Wxb7FGxTXsmjACtLl4U0v+ejmyfWsnQCfotyY4rlndRTMRZce2+QseRskeDMRqX8RdFBbO6WjpydvMLj/5mZu3gzXqGuhxKeigCgkWLMMiJZxO6/tKHyQcqVWinPfTX6sAAoeyuAsY3PqvWjR9Ocsn8WqAUYMuFsO5SQ3rcREYjwN0rvaOqcybjcfd39ev0xeSbMrwDQxkEroVeg3OLomyJXdOzJl+bXK8X8HSNHRBDY9XA1f24YcCIpPPU0TUXzS0k7+OO1OoE5oCG6Ajbm1nzFfbeVNZrAL+DLZhoDVtX8v379bd2EbWzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vp1V/RRk5D0kZoyWQ6LG6KT+L+X51YAat+bs4Agmu2k=;
 b=jSlgesSTVBty2EkKdGD9/E68pIyvwE3+FmYpmzB7PwNQ/42L4UssDGSg94AMDJ++XmLRD/pzhzbJxrmbSVM/SS6sVkMXBjUevYrq7HUkhLSzGJoLS9Kl6SsvXb2FUZkvicmwDbOO15Vy3JofERFWFDh65ywhiDDwb14/3GSibu9/SiKwappd9N7g2AfWame2GRGxZeMiOFaGtkXw61VwX6PmD1hMMF0I62mergK5R801CWxWlYkIknjo2tVLZNp8eqq6+cJbbzQPcTGyTU7wwgNClx8R/tI2APZCg4i0Fp/BzBS0BTAMu/Ej1QsLawwd5ZHJknBgziRUxKo4AyiopA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 CH3PR11MB7896.namprd11.prod.outlook.com (2603:10b6:610:131::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.36; Mon, 5 Feb 2024 14:37:27 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::dde0:287b:4d5f:32b5]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::dde0:287b:4d5f:32b5%4]) with mapi id 15.20.7249.035; Mon, 5 Feb 2024
 14:37:27 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hellstrom, Thomas" <thomas.hellstrom@intel.com>, Oded Gabbay
 <ogabbay@kernel.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, Paz Zcharya <pazz@chromium.org>
Subject: RE: Re: [PATCH v4 00/16] drm/i915: (stolen) memory region related
 fixes
Thread-Topic: Re: [PATCH v4 00/16] drm/i915: (stolen) memory region related
 fixes
Thread-Index: AQHaVilQyQMoEXodOU260kIrmbL2I7D7o22AgAAsGYCAAAW2cA==
Date: Mon, 5 Feb 2024 14:37:27 +0000
Message-ID: <DM8PR11MB5655EB93636ED09B7D28B118E0472@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
 <87cytbdttm.fsf@intel.com>
 <w2l7xe3sik5wjtjs6i3iwsvqmy36bambkigralbjhn3x6lornu@mglr2dfaw6ed>
In-Reply-To: <w2l7xe3sik5wjtjs6i3iwsvqmy36bambkigralbjhn3x6lornu@mglr2dfaw6ed>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|CH3PR11MB7896:EE_
x-ms-office365-filtering-correlation-id: 946ef140-2396-4fa6-584b-08dc2657f9f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3AHX1wB4KFCFOBzweAz02Gb+JbPkrUg83gDMRgtEBkzyZCpWj5lK6tX5D743BgRnXrXHJwbxQ5EE5IcCPrKW0LkalCaOfdWl0KXLPHZJfGoV2KIaNzIzinL8bvoPWm0Guom5gRA5nwY0w/yL/sYaBLtA4K7SgeuLniSZb0pftAH22wvLPSX8P75o43mzvP8lacfgtVj8L0TVBDl40TQNSH/W4M5vQudiHUZ0VVahB9TkHpNkPxyWF8cPrHxxKDu8e1bkcejLyPSdu5VpLrI0d8oZPzkml42j03ergLVdIyDSz1VUrK5Jb46YeQ8TD/9t6YlutociOv6XH39P4jE/FxYZ/aMGuOvpGbLxFwNQ7dip3gDrf5jLmwfvTDZb/vUnA/iQqQgKWwVPe/fFPBk+Js9XiGkrPWg9+GnhT70HdUDiD9Tldo0iNCLTgVL3l4taGrwek1poNt5ipUQLRi4BWG8CDRUdYzSM5LSvSEiqyfh9yxisnljo9X4QlX+ZXA75ugFDuu2yUIPOQLKMxBtCJJs5NcoIwdIVj6HkjphkKLQIbixyJq6kJ+KHR2fqLGWJHQRkCKAdO2UR8YRp9jNllJj0Pv1vu5hQ5RXhH/g6fV0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(376002)(366004)(136003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(41300700001)(38070700009)(110136005)(54906003)(66556008)(64756008)(66446008)(66476007)(66946007)(76116006)(316002)(2906002)(5660300002)(52536014)(8676002)(8936002)(4326008)(83380400001)(82960400001)(38100700002)(122000001)(55016003)(71200400001)(33656002)(6506007)(7696005)(9686003)(53546011)(478600001)(966005)(26005)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+08ouLIs4mv3VxdmPHG3UU/1yIcg2LARfF9GdhqEZCpcSygJKvkCqPsz36Aq?=
 =?us-ascii?Q?R5vOcxWOyFwbGp3x58ulkBxy32UaLmY4EvlBybrdl+qhVx/5ZZ5hiOj6QfYA?=
 =?us-ascii?Q?pHJgUy+08rwGHYjvyWHoOHtEj50aGcRBvZth2stvtICoo0ps11mnfl7JN/0Y?=
 =?us-ascii?Q?EaV9WARBYJ9+GgrXUsJIIgJAbKc8L3iqPmXvUdbW1Su/w8ZPMRJCNpfxqRRo?=
 =?us-ascii?Q?/jhNJK7FmDbYY43GcDm2h2tIXcm/uHwcv5kNe8NLrzfruHzsJbbo/oR8svb+?=
 =?us-ascii?Q?H0IlNuHqTII4YcU4Lf/UlirNHUQrBnvk56qzR26PRTdW+UJJzWf+3aVMGbj4?=
 =?us-ascii?Q?aVdb0TNOJPf43c8BhzO0ythywpgQJORf+iztsxpIcoOfgGgEdh8m4O6wIH5z?=
 =?us-ascii?Q?eTGWyvJgk7CT0bupAw9tmQBG7/KJF8NoLDSJjrqfWSWcC9c6I3wcpGPhVz2/?=
 =?us-ascii?Q?fyna68YWG1AlvH2veF4I59qRFIr+sWWUOmMl7Jx6pr++osqAvo/hUZno1MZC?=
 =?us-ascii?Q?HigUy3J+u3Iv83Y8HFW8raVdoI9wG+Ngq6p7+QhGTdlvR/EXxr0FWdzz4mYy?=
 =?us-ascii?Q?g4I4vIy2FbuyGSLQ4h5P7+cpkwiRfTgolqgLQv5Onh/K+F2ASXrm46fhOcZe?=
 =?us-ascii?Q?JNo11gJb/JAnrChDVsTdC/YiTaVvXGs01VfmouoKbssOtwW4GXzgfE9NK9L6?=
 =?us-ascii?Q?ALFYUHbLZoMSVsWpCnkvY+WzJw3J65RFToV+Zfg9B5t/kLORUrXdFcw9bIG5?=
 =?us-ascii?Q?fBHNr3uen+2O/f7ch4NqHZc3KFuaKtex+Dh+N3qqb0r8XP85PzC3KIZh3+Wj?=
 =?us-ascii?Q?hWlqaZZq2hJoUJHr9akR5VFpdkYe1Z8t2YxWlCzSZT8d8Gf+p4ZLFidlv0a9?=
 =?us-ascii?Q?QfgiJLSq+J1AAJEx7GBFmw97snaSdqRAKKG83ct/Gph7274yEaxoNx4WqjCt?=
 =?us-ascii?Q?A8xtvfEvYbqR3LKtvkXA/nEPE96R4LfJZQrQbAeG1Xzh1FddNCKzfmQAt24y?=
 =?us-ascii?Q?BjWTtzVzwAEP0iOquk9keRZXp2Orx3FaCHGQq2v/aEZ50YG4MpF9W73RiMN5?=
 =?us-ascii?Q?yO5XxcXzjiMiIvCZfJd71+WeOaWeWmZtJAl/57JXfxgfuMDP2KAkDZ6OTvin?=
 =?us-ascii?Q?NDF1bAxBwVSZ0TJfJwCIrRD2zJCQbRNDiAuETTnEEFCMrG0nJGTOmaLFWwkU?=
 =?us-ascii?Q?bxKSsH4PSSsayMjkGp5NgUed38/rugGrZWwkPPLKf28jNc4gS6xMHAPyoxEm?=
 =?us-ascii?Q?732XmpoODmZF2162dIdACa4AVAEhxY51IUlVBxgTIghDZDXmrW/3HQXIRtax?=
 =?us-ascii?Q?6CRLpo6QvpcJ+gnU49u2E4AWLOzfDCWmtUr5G9+YmuWJNlX5FVDSQR+Mn91o?=
 =?us-ascii?Q?moCWH252YHZPbk+rWD+v4lcxJxShrNDdOI6bmzIYAu1m9wBP3kEEEjYuTiTV?=
 =?us-ascii?Q?IwNVDDIQfhlq7/1SRN7qOvRXPxJY6r/I38BQemVDAPnykLm7RnBRJvL/H5sS?=
 =?us-ascii?Q?kC3HSc0k5mEoiBVRmcxBlFieOVHPqBJ5mM4MoEpqvecUZwlm8JmxfeZY7WHi?=
 =?us-ascii?Q?X47LlJKNop774o1Fj/ogS6G3XkBoruL/0nwLc1Sp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 946ef140-2396-4fa6-584b-08dc2657f9f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 14:37:27.7173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E6HjWujcsxHzoYX7pkGFrjwRYYcuhXKhDqV6pyewZ5tvLAY+IB9uGC5dOUNGTbkmCIpfzRWrn3WTU6mxNmbpSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7896
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

Hi,=20
> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Luca=
s De
> Marchi
> Sent: Monday, February 5, 2024 4:17 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>; intel-gfx@lists.freede=
sktop.org;
> Hellstrom, Thomas <thomas.hellstrom@intel.com>; Oded Gabbay
> <ogabbay@kernel.org>; intel-xe@lists.freedesktop.org; Paz Zcharya
> <pazz@chromium.org>
> Subject: Re: Re: [PATCH v4 00/16] drm/i915: (stolen) memory region relate=
d fixes
>=20
> On Mon, Feb 05, 2024 at 01:38:45PM +0200, Jani Nikula wrote:
> >On Sat, 03 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote=
:
> >>   drm/i915: Simplify intel_initial_plane_config() calling convention
> >>   drm/i915: Tweak BIOS fb reuse check
> >>   drm/i915: Try to relocate the BIOS fb to the start of ggtt
> >
> >>  drivers/gpu/drm/xe/display/xe_plane_initial.c |  67 +++--
> >
> >Lucas, Thomas, Oded -
> >
> >These three touch xe/display. Ack for merging via drm-intel-next?
>=20
> as long as it passed CI,
>=20
> Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
Seems so from https://patchwork.freedesktop.org/series/129498/=20
>=20
> Lucas De Marchi
>=20
> >
> >BR,
> >Jani.
> >
> >
> >--
> >Jani Nikula, Intel
