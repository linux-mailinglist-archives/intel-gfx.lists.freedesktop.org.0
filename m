Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB1E9F1039
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 16:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3048010F04A;
	Fri, 13 Dec 2024 15:05:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGj+Yyc8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 573CA10F04A;
 Fri, 13 Dec 2024 15:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734102327; x=1765638327;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b+PZQCV/CtUON6C0vrxb8VKvI2rPJb206rdhXIrSJ0c=;
 b=hGj+Yyc8mncoBo2QtifrLKmxquA4nIfVdIrl/6OOk1L2LMh+x4pZuNH1
 qLFMb5FUwhtdF44k4geaOIi7Cln4/5r5oIC7wIvSD8iiGquEvw/MgqO1j
 N4l0GRsJtrJvON3H36POs0PmOozmYAEWPdiGmmGuKjGY8rB34VWyHv9EW
 OSgigp1hGvSANY5bdkihOtHG2Pq8wl5PDsO5H6+5hPwXUWCO4kwnoxwO0
 U/XHZ6ljvbcqPvA/McvDhX6GSzGC7yfboD84KHM7TKsiztfH4iIX8iU8r
 J+061opoe88Ks+KHIwU3CL064yifjiaKf6qq6xy89dhFhKlzWvuo6II70 Q==;
X-CSE-ConnectionGUID: 5+YZL1RWRY+EDiyhlqSg4w==
X-CSE-MsgGUID: rPXoUDM/TNqr6ydc3EBcUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="33855975"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="33855975"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 07:05:26 -0800
X-CSE-ConnectionGUID: MofoeO2CQD6Jz9oiY4n5ig==
X-CSE-MsgGUID: uK26ttjLRUWu4ZwaGSLL6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96414651"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2024 07:05:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 13 Dec 2024 07:05:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 13 Dec 2024 07:05:25 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 13 Dec 2024 07:05:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MuThRv9EB3p0vi+z47yw8F9qs4lfB5DpWHQEClzGmjUOWthaJWvF09UmkNqKPY5+cE9mjS7uUReAOjIVlksezAl9D1bqz5f+E9ZSZZ8wRRzq8Pw2nmluL7PdQ9x3yQKVh5wi8xRILQTU1TNIMoYzWmL2mwsxem+mzUlCdLe1uFHpkixZIuWa6LZxQYd8w/+M0rxxupxiQKv5FwnwAjz+GAk91Ty4vX78E1dl75jPnXCkrLbWTJGrQA7olJg+CVZpgD3K1AGjg7prFY9J80zp6oOi17pr8Kyxex3h1v6yhIsK/SMSaehRRC9LPRT9uaFotg8cZWXGPKri5hB1do19Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2U9fO99uoYkXWfvlhZ/McFDo0eGhLZUf2D0fajLK5yo=;
 b=lmm1+xpxcnPLO57qlcgc37oCECQ3jqMVmVtMJFJqG84BkH8BR3DK2ZzUeCivOqUg/vA4/Ls/QM6nQLTp7/rpmooh2e/ISPWb5G1Ydsg4UAHlmrCPcd+U1YfwGNRhWqke0nNIZF57vYbaeb4CtbcOqN7MM/juV1PlN8rwUroUw0QSTg5pMZbZhwZYO9/eV/9pq4h5RryX+PmWuDFqCeWqs0QxdxxE4suEbE8r0AVh0BkkC4/Wrm7sPe0bBfrRzR3/5HAji4mmD9V6+iLduwlaBId/592UpmTetK+9PsDzrYd9IF3Rt/NRUcweGsf/owm8ZSRK3wC1OQWd+jIJKRWYtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB7489.namprd11.prod.outlook.com (2603:10b6:806:342::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.14; Fri, 13 Dec
 2024 15:05:23 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8251.008; Fri, 13 Dec 2024
 15:05:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Sergey Senozhatsky <senozhatsky@chromium.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 1/6] drm/i915/ddi: change
 intel_ddi_init_{dp,hdmi}_connector() return type
Thread-Topic: [PATCH v3 1/6] drm/i915/ddi: change
 intel_ddi_init_{dp,hdmi}_connector() return type
Thread-Index: AQHbTWmUbVwThjI8fUSm+NQr/+Y2M7LkRMrw
Date: Fri, 13 Dec 2024 15:05:23 +0000
Message-ID: <SN7PR11MB6750DC00BB9AF4CD5A66EA6BE3382@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1734099220.git.jani.nikula@intel.com>
 <ddd89d5e49a0cd40c18f12567da7fb9605999fcd.1734099220.git.jani.nikula@intel.com>
In-Reply-To: <ddd89d5e49a0cd40c18f12567da7fb9605999fcd.1734099220.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB7489:EE_
x-ms-office365-filtering-correlation-id: 416e16ff-cde6-4089-2051-08dd1b8791bb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?XIvCLVVFh1nAr/BtgLCe11lVYTOiQzvMGx/7/n7LWJjBXalaz0e9//P+hiUN?=
 =?us-ascii?Q?BO/nqjmc9rvk2jJB0CjVtUv9/lpJVUetIsZDIyNBC8NnxsLEv4CQVuhRJ0Km?=
 =?us-ascii?Q?0cHS9cU56AbDN7ZxphpQ96ArwkP5cJd8YqS3MrMOPuHW/PvegWOcNZVTMyzq?=
 =?us-ascii?Q?Cd5Q6LRdvhh2KosyVn+QuvzMVNSYHrzJzFrDHXoeJ44WCefWJB2ci2uIZGtU?=
 =?us-ascii?Q?OSFVlZx5neoZaFQUD1zjA4UF1K++xTALWC7LlvEGM/61r8h0cBPBfjjN+sqw?=
 =?us-ascii?Q?mc5qFtQ0ByBzZ+wamMnIMFmRMFP//PQ2UkKonJdGUel+BZTf0XfIF+ZGHq6G?=
 =?us-ascii?Q?lH79GbqXocSTyVwNH2hHGL2VDSxXx+ZOBc9344Qg/3pd3yTKAtmE+ETAeaoK?=
 =?us-ascii?Q?TEcA6bm70imd+rlF0y1ND3cI0XtgAs6stt5+O3qm8hf2stlUv2TbXKIIxA+I?=
 =?us-ascii?Q?CIT/iIJ6KnPjBUj67+vufCa4OBQItO1FkXS2mkTOOrZ7/GMWslJWSVIIlYyF?=
 =?us-ascii?Q?aL8ddhS70wsb3jU71yWt4c2sq0xKwZjP1rF6WMuqunXeDJJVrRlc9nrCBFjc?=
 =?us-ascii?Q?40fT5qxBisIk3tjZV+K087eedsI1QRukCoKbf+NMuPXgzKsaZXKORwUn23dy?=
 =?us-ascii?Q?hNdN8v0l5tGZUua4mCauWsPaiAdt8DGKUXmAanfBHmzK6hVeAJl0qWeAF1mf?=
 =?us-ascii?Q?FWYtsjtLtKUd7ROUMsKmkhn5pGVTKggOi/RXjOdAO7vbWJMorvjwoAzXBNGN?=
 =?us-ascii?Q?5JY6U+lGpFsEahgrjin+3R4dkzM6ao70HW+dJEMY7Mc10T5iyGfArW16aqj7?=
 =?us-ascii?Q?FJ+y1gamJnkUGA9rr2IsHgNyvIb2dFgLEkAJQLqUFZyTiVie9RjUF4kv+zVt?=
 =?us-ascii?Q?Lf/6xBN6EKkltaFYhpjGplVj5JVDDvjRfktnx1HsZE0z6/ELYBgck0U3S5WU?=
 =?us-ascii?Q?Ouepk9c/XPmaL1xUWAiKrFMDWzsHV2uyrlwdyqKgSPKuRQjcTedFa/rt1Jan?=
 =?us-ascii?Q?Nqd9O5OYL1RP5XJNuchhzhwAgaamSNHDhisiU+CiRJ46ijAwIcyv1a3nRpau?=
 =?us-ascii?Q?rVVBBUSNheVgq/t2AbyxDDh6tEla/RcnF4Ha8trnUADpJQ3pm2GohnNuFnyZ?=
 =?us-ascii?Q?iv6yiop6Io3u0y1ki9WZrTxTIZFFBP6xjQUVYWyfrnh7ZZ9rpQjsJ7eZu3y7?=
 =?us-ascii?Q?svgIRgKKgbATXnPkz4dAm+azaWcyXic5r793jOKpIGnO15viNYABByoeF4j9?=
 =?us-ascii?Q?cWpxym6jRDre0bCgatbHKRYDbD3u1VZ6gxg60uI1eqogZ78wCSV5CdSVliHP?=
 =?us-ascii?Q?JjYJDUvqVlrw3KWv4cwLR8y03NbH+vNBcN4tRNKNB3ND5ByPlkRysRJHiEIa?=
 =?us-ascii?Q?qzHUaWd/NeQ2JaHZVkQflANv1mAkVputrP7Axv2ZOV0kfcePPg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3RhlFAyeKHbTXZ8W1eStnEC+rlID/mtGj4vnTg2kblB8qGUWX8l16upOmTUv?=
 =?us-ascii?Q?KIg/8zOenDzcwSV+qxy+NQzOR0uFQH21yu42sv4RrzS2pgp3Pm+OlLGCG8eZ?=
 =?us-ascii?Q?7B/vLP58ahvZnNBnPU9hYlJRTvGxqsxaPFSJ88+abJrnE+A+9VB6DOQV0ENZ?=
 =?us-ascii?Q?/fbdlEJw8he6Tv4ndL2rjaI98EjpiBM4GadrPdX7RVTZNcgT/rAsxzsoX5A2?=
 =?us-ascii?Q?ODcdcSpew7rYRk33kp4owVx1Lrli971DK/RuefROojKRoI+qcTNxYe/TGoKh?=
 =?us-ascii?Q?UidAWsxZClriTXX1M/L5sKGVGzmZG0x4MgCead6F1VWapwTZMAoZfxlbZmMm?=
 =?us-ascii?Q?TIE1/BtaSB051tEZK9cDMMKfZlPBwV+MRxuEJ86X+trZGgTi/bJ9hg9ioPJR?=
 =?us-ascii?Q?IIjGrbeNOIYObKH5dAqr6g8173IJeb/tMJ6tEKOa8ht8mtqczcyevfO/c/j8?=
 =?us-ascii?Q?dAS2ijEGJb8kpGmCJaSCJp+BUUCdj2DPiYNH0gWI6K2c2Tw2K72K9S2iYCA6?=
 =?us-ascii?Q?iHA5jdBVJUQP7aq058IKN8HjTRDC1+lvWZ7GsI2RoiOHG0zGckhSQG2o6eO0?=
 =?us-ascii?Q?qd5cBfKIMDOZFBdZscnghBWu9pEZLPs8TlJeztjMqMp3w4UeDtLrY/RcrzMd?=
 =?us-ascii?Q?r4cfU8A+OHfYT2WBvY2oGINVdT4ndpU5MjF6bxdBNi5Vu+UFLmWoacgJrhpA?=
 =?us-ascii?Q?ecNDvjHoeO1I5KC/tClUNZdjXJxo3KrHo69ebvCODgr6DUbk5xFF1F42mhLE?=
 =?us-ascii?Q?qnIzlH9Wa3v9Jb4x85GuJUcby6bM5VVBp3jU+ZnX2+KBkCtGLPjOZY9R+PZi?=
 =?us-ascii?Q?qi7MW/HPosSr349RlERuk6zt7zrki8J9tFAw45LRYtFz/uIniwP0xaeVCnaV?=
 =?us-ascii?Q?1UJYPcoFTidx58pLytfmG4RQCceRxF2KzIHuz7pGFR0LveMUilct7nqIyMvG?=
 =?us-ascii?Q?TZRWmfV3YIwLNj25ZczfbFrJu0RXPPnDeTdSgTBCBiuNumbiKP8bVpG+KC3/?=
 =?us-ascii?Q?x4t57zmA9ZxuG/DaiUiFBXLARMYx0IzzwC1IbNoV20/BwakT4oH9frnx69et?=
 =?us-ascii?Q?EKf3GRztVkxDdC4uZ6ZyNHWxhyBVUpMfaUzkPcQon0NOGeEPOF7QSSPctAcZ?=
 =?us-ascii?Q?1R7j37dSoj+YQJmPC174JW6yLE2tngk8oQFbUqUIilPeWwiI/6WjxB/H7jRw?=
 =?us-ascii?Q?/+TPsLqYfsqeQ6DyV5EMM3IZc25Aiemf7qM4m3E6v7It50vFVZo2bGlYlqdZ?=
 =?us-ascii?Q?6HUZa4udi1BSr7iYiVK+jwMl5Mz/h8HEssSar97nJP6GSidztt6ssrpxRqnQ?=
 =?us-ascii?Q?B1tgRYVF5/BRVGHHAUZy3NX+s4Zn182DRsOMTAb9pCdvYPBYqrPnGmizkSmG?=
 =?us-ascii?Q?UlqN8hVHGH7nx93bD4Nv7ZXrO00jddVt7Bm+vkmScvMf1UTAipHmNP7E2IAl?=
 =?us-ascii?Q?2OJIXo3zoN2quQD7/kZ7JcNI80+yyR4oJLHhWgG/34ybvES72eh8Jc9LvXU6?=
 =?us-ascii?Q?01lYNcrIO2ZXITSYH/lUNfzx70yTdbwsrPom3kwrwLTJwWLXNtprhwrUwmDH?=
 =?us-ascii?Q?J/JRlRdH22y/tRa3YM0DoWo6f6dvbqlMyvz5XV9w?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 416e16ff-cde6-4089-2051-08dd1b8791bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2024 15:05:23.5795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X3uHGedaecLy3Aa+KToRrheZMeuW5Lv7lVYVj214ISNGviUhE+eMhGvPN3BAjzhhk0i7oVNg6Fhc+JtESQdZpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7489
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, December 13, 2024 7:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Sergey Senozhatsky
> <senozhatsky@chromium.org>; Ville Syrjala <ville.syrjala@linux.intel.com>=
;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH v3 1/6] drm/i915/ddi: change
> intel_ddi_init_{dp,hdmi}_connector() return type
>=20
> The caller doesn't actually need the returned struct intel_connector; it'=
s
> stored in the ->attached_connector of intel_dp ad intel_hdmi. Switch to

Typo : *and
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> returning an int with 0 for success and negative errors codes to be able =
to
> indicate success even when we don't have a connector.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4f9c50996446..21277cf8afef 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4542,8 +4542,7 @@ static const struct drm_encoder_funcs
> intel_ddi_funcs =3D {
>  	.late_register =3D intel_ddi_encoder_late_register,  };
>=20
> -static struct intel_connector *
> -intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
> +static int intel_ddi_init_dp_connector(struct intel_digital_port
> +*dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	struct intel_connector *connector;
> @@ -4551,7 +4550,7 @@ intel_ddi_init_dp_connector(struct
> intel_digital_port *dig_port)
>=20
>  	connector =3D intel_connector_alloc();
>  	if (!connector)
> -		return NULL;
> +		return -ENOMEM;
>=20
>  	dig_port->dp.output_reg =3D DDI_BUF_CTL(port);
>  	if (DISPLAY_VER(i915) >=3D 14)
> @@ -4566,7 +4565,7 @@ intel_ddi_init_dp_connector(struct
> intel_digital_port *dig_port)
>=20
>  	if (!intel_dp_init_connector(dig_port, connector)) {
>  		kfree(connector);
> -		return NULL;
> +		return -EINVAL;
>  	}
>=20
>  	if (dig_port->base.type =3D=3D INTEL_OUTPUT_EDP) { @@ -4582,7
> +4581,7 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_por=
t)
>  		}
>  	}
>=20
> -	return connector;
> +	return 0;
>  }
>=20
>  static int intel_hdmi_reset_link(struct intel_encoder *encoder, @@ -4748=
,20
> +4747,19 @@ static bool bdw_digital_port_connected(struct intel_encoder
> *encoder)
>  	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;  }
>=20
> -static struct intel_connector *
> -intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
> +static int intel_ddi_init_hdmi_connector(struct intel_digital_port
> +*dig_port)
>  {
>  	struct intel_connector *connector;
>  	enum port port =3D dig_port->base.port;
>=20
>  	connector =3D intel_connector_alloc();
>  	if (!connector)
> -		return NULL;
> +		return -ENOMEM;
>=20
>  	dig_port->hdmi.hdmi_reg =3D DDI_BUF_CTL(port);
>  	intel_hdmi_init_connector(dig_port, connector);
>=20
> -	return connector;
> +	return 0;
>  }
>=20
>  static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dig_por=
t) @@
> -5306,7 +5304,7 @@ void intel_ddi_init(struct intel_display *display,
>  	intel_infoframe_init(dig_port);
>=20
>  	if (init_dp) {
> -		if (!intel_ddi_init_dp_connector(dig_port))
> +		if (intel_ddi_init_dp_connector(dig_port))
>  			goto err;
>=20
>  		dig_port->hpd_pulse =3D intel_dp_hpd_pulse; @@ -5320,7
> +5318,7 @@ void intel_ddi_init(struct intel_display *display,
>  	 * but leave it just in case we have some really bad VBTs...
>  	 */
>  	if (encoder->type !=3D INTEL_OUTPUT_EDP && init_hdmi) {
> -		if (!intel_ddi_init_hdmi_connector(dig_port))
> +		if (intel_ddi_init_hdmi_connector(dig_port))
>  			goto err;
>  	}
>=20
> --
> 2.39.5

