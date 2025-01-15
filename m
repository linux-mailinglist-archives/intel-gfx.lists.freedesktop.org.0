Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67938A127FE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 16:59:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 049B310E749;
	Wed, 15 Jan 2025 15:59:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EsRhHtQ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CB3510E744;
 Wed, 15 Jan 2025 15:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736956767; x=1768492767;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e6Hm1bv1V8lzfivZVRWNYUr1Gpmc0jrrVNeZrWcXq3g=;
 b=EsRhHtQ5dJCfNMJ675rzJwG9YR2RQ6eD/ddzVP+PAHjzQLhaXUZA/nrS
 dd+yPqd0iDd7HoE0XYsGp3m3it0t5OvqxEQzM8Mww+A7QteuF0P0Yb5nA
 Wf+pIpmEjP52/Lb3tKVTTKNDwZ4MRHjuydA2/UxbbYHYyAUic6AYiOoUX
 fBV870Xd23PoS9t/4f2AKGK0LvNIid0A1I2xM3uFH8Hg1i+i1vDWm8DFB
 JtBER71bvu+t8SInj6iVr6c2eJP5Dm/VsYVwPsAxJkyo159aU8mXyQZJX
 eP1KmW84+d8jaA35O3SDRLWp74dyFB541h7wyi0CGtq6o9Pnv8cH6CaO0 A==;
X-CSE-ConnectionGUID: rF0TH9hoRe2TbVHIjLz5qA==
X-CSE-MsgGUID: gTv15KCvTmKMFzcGpC0rtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="41234489"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="41234489"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 07:59:27 -0800
X-CSE-ConnectionGUID: 3qsESX9tQ0SOn04zd0064A==
X-CSE-MsgGUID: rceWqyRASwGBX0OA3zK/Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="105124929"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 07:59:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 07:59:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 07:59:26 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 07:59:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rtiNqsY7BwWMKZlOHjvSgERcbKME6xEOhUFbyFd2mYir6u0MILxErqRUbDEPBKLzrzHZ0dh3Pvi3PsZe8889c6j01lxXQHD7BYGrbIOtImkewx4t5c1kyyXYQPenwqkk9cF62SWJ4LQTusSXY/xjQYPt++0YqOpb1+190PBZXV90WGt0zxc+mgBg4F3ZZMKCv/a9APD7bNl0WtlIKjcx3tF2rFNCLr4xedccnibn2y2e3mDdyxIt6nDIhBr8DQuSanQjwr1a+etdP6kxs9gMWyur0S46dL+o2xF97kzDd0CnK3AfvQJJttkbsrGvG6Ms6LjWgSTvqYHCZ+3t/+dBmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bBA/P7jSRafYhPmLCv0d+5G5SsP7RheXhvMT3VSzLmo=;
 b=OY2U056UVf0yGHzCpmCeQuzuKUSPPB4kTUuStSGhEh2QSnMkvzhgGRJLuixBP7/HvDobTo4t8Zbiy+64QXs8/lpXo2m5cAfiUIcIoxrvoN81zFO99iNZL1MhbEi1fDZevBxpqqSIV3P/Q7kdEIuLJIrlahqokZ+w2HChDvTsb0ck8NkOWF04Dm20dgAkc1TLG4x26IUsBWjd0aBDLw6EEHjQbEB6MP7Z62R9NTVdJ0PRl5GqskRc664tNiYDKZaAW+1sUBPGnp3dBsMbUAjKeGEJX6RIOESfvALDIaxYErU18UcIiF1oSvtB+S7A4DkdEdfNJ/28wdNQSgcg4kbIuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by IA1PR11MB8248.namprd11.prod.outlook.com (2603:10b6:208:447::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Wed, 15 Jan
 2025 15:59:18 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%3]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 15:59:18 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v5 0/7] Check Scaler and DSC Prefill Latency Against Vblank
Thread-Topic: [PATCH v5 0/7] Check Scaler and DSC Prefill Latency Against
 Vblank
Thread-Index: AQHbZ2EiVzyGCcd9TUCUFF5A6HWJ5rMX/DzA
Date: Wed, 15 Jan 2025 15:59:18 +0000
Message-ID: <IA1PR11MB63483267576A2852798E1078B2192@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|IA1PR11MB8248:EE_
x-ms-office365-filtering-correlation-id: fd9a5d43-22a1-4664-95c2-08dd357d9192
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pId6HUqBfugMHJs775MTCLmJQKbvHHyIlsMkZuXwcQZjihD/+kuMsgWP7RQZ?=
 =?us-ascii?Q?7CNrtmVn7LnliA6SkB04VRD9EGlWlGexmepokwt63ZBKbNx2VCwstlXF0NIK?=
 =?us-ascii?Q?se4EpL4lZy1hoxMq3APjch8DlMpcb0J7YW5CGBclzi59QSh54COv598IdaWr?=
 =?us-ascii?Q?G+1BGh3+UdcT35oBKYXVX/dinjNCD9QevjsJGkEGuimHV4w+d4Sxvu6Zv939?=
 =?us-ascii?Q?MKJxkEe8/ybzfGVhY28vMIJFM9/HSKDEjroTf/NRx9iygYwqSBAW7IgWQlf5?=
 =?us-ascii?Q?RCS762ssDpo+D6Vv9u3EgcWx+RkvH7UQMM4EMPH/rQT7G+NofnWnD+W6yrCT?=
 =?us-ascii?Q?salg2YvL+CHPkYe+23fRuGJ1+UbJ73re6qQXw8pqINSWX8LpZWtdhYUWBA0P?=
 =?us-ascii?Q?XRkEdOqecQv+pJ+iefFIDgcio49VMKiPucKnU7r6hNABAwE35N0hU0ekwGQC?=
 =?us-ascii?Q?/r+ybEPuhEQbE5CEKsY60MM9yr+lsD7kAMwsiinMLMgnmqE5N1ujg25cRe2n?=
 =?us-ascii?Q?7/Rr7LAa6M79efFUIgixIkj4YvUc8pfs9sGMtSkqwszJKTZt0ZfXq4+KXse0?=
 =?us-ascii?Q?EL4e4Jpz5PCz7a6I3vkg6qAPK4eSSXoPKzZeOcSXH8hR5oF9CmR+GLS+L/g+?=
 =?us-ascii?Q?sWE18KsJ3zrLV3pI5X9FGWsKCNSTL1wqQnz1y2bRK3aOpxEQNPvETwdyRJpn?=
 =?us-ascii?Q?OXNqO9QbEOD8ycYKtLhibJ3d08y5NcOBJ8oKh7TA8LfDY2P9aIVHOGP5DBJe?=
 =?us-ascii?Q?4ESkOdcOqewTW53DM4YXw8FsZN8+NXKArlQp5QSYp18jJx4wBk2W0vwxoflr?=
 =?us-ascii?Q?q8mKTTs5rW7Jtfx4A9XTtkkuRFDarx8mlYbEdmQk+MqHN3ycB3kXoSOqmlhJ?=
 =?us-ascii?Q?mwdfhEIQT0B+KdBL0pG1Be2qcEgfKbI6im6GG+7o9PAHocbXggiDduzzq8s7?=
 =?us-ascii?Q?fssHUc54vVE8hiHt7kgYgaA6Weaj2Ig5DzVJuu5iFq7ezCxxYnozSUp4C1h4?=
 =?us-ascii?Q?VIP+2ZAiYIRfiy/sZ1U6gkPxcTLWR4UcxXFWiaOaykZFaLT3L4J06IxD+I2k?=
 =?us-ascii?Q?UlmRUyNZs5ZO/MeBOsBw4OpQHlCga7y9fAQZP+W/fCoajISWRKJf7Qk1KB50?=
 =?us-ascii?Q?fmIAJeasRdoERCibjRE7Df5NCfFupH0BvOf9eYlsMk4pVLTm9l9ed5W9LxdJ?=
 =?us-ascii?Q?NBTU9uENo93XxIymqhwirsk88tr/3T4PWEoytID50VRYLzwEUXnvjrLj4Apf?=
 =?us-ascii?Q?qz6tTnbnqO0cLfSWSelitCcv9n4mL1AOw5c/CuAMxZKhFdVKdepPsbcTW2OW?=
 =?us-ascii?Q?qUAya2Mot0pyZavntjckz4Eq0lkAQ5IiMiQcWaFajHSlkdq11UDuVRx+L05D?=
 =?us-ascii?Q?1XQmjFRYifzRv327NIpn/tQ4rnGB?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2xrdAo3+mZYlLVSsLDQ/vkTaP/rVC+OFgOhLTehALWtFCWPLFtIG/0WXhFng?=
 =?us-ascii?Q?Kyt43/0LGUKV5FasI2S4T9hGrKcIF5h5Me8NM4LANzZXw4Hl9oGkpfnEoiUo?=
 =?us-ascii?Q?xcu3fwreHcnnGQfbNjBa2qoJDZX9ty+v1YMaK0ZujGgpPV6on7cQC0u1RD/d?=
 =?us-ascii?Q?G7Vrdf73vNmnz89eBJc+6QVGS5Iu9j5fP4gzyAsnHS/YkGZqHj+vi5ZfplgZ?=
 =?us-ascii?Q?Yq+9Th3F22BNAmuOBdanihjscD7OWeCfUgthBE5ibPLl909/NNhuIjqysDPk?=
 =?us-ascii?Q?qbgpf4PFooaIo/i9gvQ5+8Qtspg2zInMk3UNmvN3MT7fHV9ZTVaa7NgJAGco?=
 =?us-ascii?Q?5fMll8JbPGz3EJwDQH9+iBC0fDrnm0W460o4ZyA9fOBx3SMQ7G5+LafmNbZS?=
 =?us-ascii?Q?DIJuY5q/nUu3/5OxjdJtSALLRTIWZ+qQuOai5o0szWvIhAYJ1gnKqzjHowwf?=
 =?us-ascii?Q?dlAnraBxPAxRVOhDpDecLWUtvr2q/JmCI6AFOI1gKZqOHJyM5K+J+1JVldp/?=
 =?us-ascii?Q?lJ+Ns/Jx97b5OFcoPdUI3JdS8Q16J8U3EXQ9hEaHWVSELi63fSKzijA25F7V?=
 =?us-ascii?Q?duVXCJ9qw57dXtNtOItzNu65HDavFZ5c8ZmmiiWqb+WN+SZpvCkc3nzqh3w7?=
 =?us-ascii?Q?SaXozS7GUy5Zmqea08+3NRPqWRg88I7OasTaqpkj/mgm7N+MJlFdws47+tq7?=
 =?us-ascii?Q?cYCvEmqPC+GchV+pdNSicKxcZ4FSpXplxnxHsasHaUr6P6c/ELPDZKCy9Bzv?=
 =?us-ascii?Q?tUoClbEl8RJTKVvWVXnAkxWgqTEVH4Hx5tVtuA4Lh8LRXSB5a6iFoFO6ZS3A?=
 =?us-ascii?Q?26QLKotpY5n1HGWbFXaZ91aJtWb7uSczU6tzJRFKubz0eZ2lcMkZAbXE0Phg?=
 =?us-ascii?Q?R42Di+kXlvTaE0tpgK6nibafRgoxiB/5+icp22AEU+da96E5/P/0i+uyzbNZ?=
 =?us-ascii?Q?8wlznool+4vYVrkP5czLrl7MUQ1tNgPYi12x3cHf5Eoo5rwJtr970HLsdvpM?=
 =?us-ascii?Q?aR7o8wx+ge9wsqIwjBp457UT+sET7RcrvbZQLmEb01tbUKBVZyqhtWsyI4zt?=
 =?us-ascii?Q?K5QC7nq+sgxzhOa3oyxuJ/igRtYL+AtHA4Zzrx7IoX0AtyPbJmABfwgTBw8h?=
 =?us-ascii?Q?SSQO4WE1aKJJI+oTu19AkOCD3Bbm+nBfEqD2+3nGPsadyYWulbR3jtuXZauD?=
 =?us-ascii?Q?AKttSD7aljtjxqjUxu+YUJP5jpHklYLQuWpy8MPYgC0glLiJ7SaLuDzeQjGM?=
 =?us-ascii?Q?DaKTGniK+M762BjbkLftOA4LC9NaxycPcjeMyicwbCAP6+nNDwbqmfdEzczM?=
 =?us-ascii?Q?E9PSY/Rp+u+ZhJllH3FFUpuCdAPh6sKzfwYvWXFRSobzh38Pme4/1RfVR7bc?=
 =?us-ascii?Q?WWJhJx1T3To30Dg0Dralo42dH5fAHSbQPYTxGQ3P3VsNkXFjICPPN90QhJhN?=
 =?us-ascii?Q?iBli2FMsykhnGaQsjtvWKyZEBT05K+1nHv3kaZpDuS+w6lYJnTlblDhUn8aV?=
 =?us-ascii?Q?iZG8CMAXsbvFwZnK4aknwjOD/FhtdSf369fxv+BXVwjWAG5bLZOCG3SdQG03?=
 =?us-ascii?Q?ZeEvxk4ysz+edTFR4BsEVCYBBFEeEdGuzI6EoLmtKbT4iOgwLZvS5uWujFjT?=
 =?us-ascii?Q?+lyvIKJAbt6yHOM0YY9+/4w=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd9a5d43-22a1-4664-95c2-08dd357d9192
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 15:59:18.5925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 91+lkBeixWawGKDG9egeVz4Y89+IiJJYVuKx1e+qoxLyPdYhbpOmUVwyybxuuckOgjp/Vql6gK5lUYaIs2cqx2K6Utna2padXVsRxzfmVSmRQbYIA2p3zqKOO2i4fZJO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8248
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

Hi,

In regards to patches sent to over wrong mailing list id which is  " v5-000=
intel-xe@lists.freedesktop.org ". Seems like some prefix got added while se=
nding it to intel-xe mailing list. That's why sent correctly to intel-gfx b=
ut mail delivery failed for intel-xe. I will float the revision again if th=
ere are any pending comments on current patch series, or I will refloat on =
both intel-gfx and intel-xe,  which ever works best.=20

Suggestion will be helpful to correct this.

Regards,
Mitul

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: 15 January 2025 20:47
> To: intel-gfx@lists.freedesktop.org; v5-000intel-xe@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>
> Subject: [PATCH v5 0/7] Check Scaler and DSC Prefill Latency Against Vbla=
nk
>=20
> Compute and check if dsc and scaler prefill latency is sufficient with re=
spect
> to vblank.
>=20
> Previous Revision Reference:
> https://patchwork.freedesktop.org/series/141203/
> https://patchwork.freedesktop.org/series/142745/
>=20
> Mitul Golani (7):
>   drm/i915/scaler: Add and compute scaling factors
>   drm/i915/scaler: Use crtc_state to setup plane or pipe scaler
>   drm/i915/scaler: Refactor max_scale computation
>   drm/i915/scaler: Compute scaling factors for pipe scaler
>   drm/i915/scaler: Limit pipe scaler downscaling factors for YUV420
>   drm/i915/scaler: Check if vblank is sufficient for scaler
>   drm/i915/dsc: Check if vblank is sufficient for dsc prefill
>=20
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/display/skl_scaler.c     | 123 ++++++++++++------
>  drivers/gpu/drm/i915/display/skl_watermark.c  |  84 +++++++++++-
>  3 files changed, 171 insertions(+), 38 deletions(-)
>=20
> --
> 2.48.0

