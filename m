Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF466B16E8E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 11:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7824810E72E;
	Thu, 31 Jul 2025 09:25:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZRrBoKL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC1B10E72E
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Jul 2025 09:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753953925; x=1785489925;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uVobW3PRHZGj4ob/5WP7Burg4aYG2gdNr+BT+TZh0TE=;
 b=LZRrBoKLO7g6ZMlcghZKqpzWKGW3qC0Qgb7mc8r64uIRJjUCa+yfRBPi
 CXgmXIubhoZXGXGO9aeTgLcZ4mHpsjoSTYBHbOUsPhFualOEe1MVpPqTI
 +EcnocevhlJFrJ3/HetKRLYWKXyuMwLglbstfYPp5G5ygKTh4S4nZyk1N
 6Bu3M63DJbLO1WIJHYS8IH93dBCXkUneDGl41qRLOd/jMWqWH+dTL4bC5
 +OGbQvOQAQJEzltnNbeeO3T5dV+ZUlYUzVwWAsUzmq46gLzsLP/7N119x
 PzJXOoVak5DuHLjfkp0gyYr/dqppCuP1s2B7d8WrqbOsU5AxEeQ84oUxF A==;
X-CSE-ConnectionGUID: 7+qTeCHiTJ6dGZEauGbEDg==
X-CSE-MsgGUID: tAn/ik1iR3aXd8qHujDbpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="55339439"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="55339439"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:25:21 -0700
X-CSE-ConnectionGUID: by7bUUjVQUuRy7zCADvGJg==
X-CSE-MsgGUID: 0i/bVgB8Rp+yST4bnehpzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="200384661"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:25:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 02:25:21 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 02:25:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.76)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 02:25:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=asaBLdms36ycRHHrN3mDj9ro7sTC1/5SyH3v7AXnE6rUsj2ACOeHt/QT5CgQsRgpvQBOiKQr/bHF8Yy8tiRFJs5Q4OMaGO0/fWR/4CtPRYt5K7U//3nC0EQJGYhLBvjvosmO+h3plJRpzYdxwrI4KTIhPwxNI1YDrWelwec0Qb7h2SMxfeL+4QbwtW2Jtkfn0r79hf8CfCLjmnbmnj6neq7NVZhHF9hp8bBvTSOspFMcaCuAQrfEp+SwhtVJEet0x4S9ZLlumI7kaw2CyEjPPJghsHA1wQ6CHxOVOfguSjhKQv5egodOmab+iDxtiryUmzg6tJl79vUvmAXM2WVBOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f9EUvE0aAZKYC9OewJOtelGZ6NMD/dX4XKi9diqRmII=;
 b=pqFqib/Dv02xhQIEJVr9ioxUkQoQLYm6iR/G6AwkIJX0j487FQOlMlr8WCz24vRmYfkqVU93sD61lnQwheYV0tkQdOFpPwxsu9AuYrA9u5F8N8/yhy/rBXESNwagVlwWnEU4sxPdVNC8Xv44BA3siKF3skNj+Gu5Ru2gzmqKV4BefrC645jpBSLVTNf1vzWEysQk34VMwU6JI4/IOew6MSn56GsJTiuf9pnTdalfqp1B4XdIR9OsfFI+CGiL3I+LTV2ym/oyAq0VgGrG/2mE+E8CmUgxKzsKGE8WaVhS+xQeTX5HcIr5HrThONRBY0Tbdr8sDyG8Os4Jlq0+zoAW2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SJ5PPFBD6B1667A.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::84f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.27; Thu, 31 Jul
 2025 09:24:58 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.8989.011; Thu, 31 Jul 2025
 09:24:58 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: WA_14011503117
Thread-Topic: [PATCH] drm/i915/display: WA_14011503117
Thread-Index: AQHcAfi0IskVx/vF3UidVjhINEBJ5LRL9QyAgAAAwzA=
Date: Thu, 31 Jul 2025 09:24:58 +0000
Message-ID: <IA1PR11MB6467032E19C9C147EBBBDF8AE327A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20250731084900.1684276-1-nemesa.garg@intel.com>
 <db4873fb3468cf079ec8fd4fea14a668a1b554ad@intel.com>
In-Reply-To: <db4873fb3468cf079ec8fd4fea14a668a1b554ad@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SJ5PPFBD6B1667A:EE_
x-ms-office365-filtering-correlation-id: 18ab4735-06d2-4047-7773-08ddd0141e74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ftVg2MNTuLK18Gva2D4z9gekfEfLQkW4U9k+FJaVg1XrNQclLsBD3rPWJWDq?=
 =?us-ascii?Q?ub3ehHa8WNNO5R3lK0YM8jDgxaI3fsAkgGQugPqTqWvUTQ9jFaDh/OMsJ3mq?=
 =?us-ascii?Q?a12mRogzpt/86odw7fFfUirN2GEhDQXpQuD6tPor/hNIEWLOPghPPvOI793g?=
 =?us-ascii?Q?m/uzDedoGz0/erxmqXmQMDZjUK3rFEREQg+T1umYVLKNpGmbndHpUTOiQO7u?=
 =?us-ascii?Q?CcpWl8GylS6JIqB5S6ousHCbNJDV5wRqeFf0MwZK+VbMT1bWsiRDqFWS18X+?=
 =?us-ascii?Q?3RM1YXl24z67kCBZ73EFHOXRut+SgTpSSM6jZ2wFQIImtxdKgnj5LS1bOwof?=
 =?us-ascii?Q?iJRe5Ko+o3hQjs1zHCuaT/S+9mx9ssZ3Pr306gXCuraMj3/fNwchoGynnI60?=
 =?us-ascii?Q?e8fqjTL1zK6A6CqkcGmVoXjGx51Dyfxeb41nZgdMd3uFeDlki8wdJPubsbbM?=
 =?us-ascii?Q?f6sjNZCvywWgbFK9omSI2mBym38jykq0NmooPSjqXYd8YDZcP35pRwtn2M2C?=
 =?us-ascii?Q?HtnWLcqfXaJQdw3xpOVBW3omZ+Xe6InzimfG7WOQH1LAOwqsAbKWYDBcFdRo?=
 =?us-ascii?Q?Qd5VTTz1jdSZ9BmD2fOEJ7TP6mHcq0l9ilDzkgtYl1P/ndLg2vDwoHa+5Ja/?=
 =?us-ascii?Q?OlWQ5stoXJ67ktMBuI0qnQAhBQmhzKUv84m9wQ5nl0JhQu4WTKKiU0u0OlMF?=
 =?us-ascii?Q?87znq5XJjWQSYfhv+tfZI0mJsyTpCoU8xM41F2uWcQuyZK0HLSyeJk0qU8RC?=
 =?us-ascii?Q?Rv+pJKkDNmbLMLG5mCF3eAI09sDt03zVNPXoo1Ymxn+k3eWPc4QN/SgW4jgT?=
 =?us-ascii?Q?f72YuumpaqK+pN+lUxh8Gv7hL4aA5TZd7B103hhmr9FgSBvN7jW8HiJpp7hp?=
 =?us-ascii?Q?Qh3IS5eqYYYVNKBEcvMDqzW4riFx6myx+1brdV/LMtBRoPtAzThfOwOVx2om?=
 =?us-ascii?Q?ScjPCDEYrJdYFT+bst6Po39ZwQ8zstFrKNWwUsZoAvGcrpJMreDnutrQIApj?=
 =?us-ascii?Q?mXEDqM4T1fHwinxEomRn3vRel85hWBHTMcSZJ6RBoEocdJ3F4Wgbc8S0OjQZ?=
 =?us-ascii?Q?qXaxRNg7U6suth6hC6HD5Z8W1mLYQZWY66b1IjndgZSvpa8CHVB2duBhb5Ef?=
 =?us-ascii?Q?l14yf8kGo4Qu16UDhpW7LZe3LHZ0VYxwD2w859TQpj7C9MaGPrKpKgSzFbUr?=
 =?us-ascii?Q?sjuCVtI0+QEPUtzJEBAm5LlvEczdfMB6jejy4Q6p2i8YzKQCNc6Ih4p9fBvJ?=
 =?us-ascii?Q?LoPbcgwT7A2diEqpr5YpbCgiFO8dVgYFkn/n5xI8GEpenEs1X/pyexEQvOmx?=
 =?us-ascii?Q?4LnQTTOuFf9fEbodiuFEWDdgtilZ4C/V5Bz7+F6oTEjx1EBmNDNkM85s2+ib?=
 =?us-ascii?Q?sXoiE4nTOIL1WNJ962jdbpw8SWOggZIimFiJt+lpyDZKyUUHGQdM8DkjkLAm?=
 =?us-ascii?Q?6NrInoramiNFIMYcOlXaB3oiPzASOCpE/bT680+lZH6XoJfMZ9DByQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HgzCBr5Klcb7W4Zr5fYnxfaBAfGlMQ7Px3YgDI1LKfnWuEBF8a26h4YvtvO0?=
 =?us-ascii?Q?dkSyaIYDHUqaPBR/P3v+bmjO8mvSWtcRDodo/OayK6Ao3ymzQ8HJTqBez2Sa?=
 =?us-ascii?Q?mvPVUw/KQfhp08lqGBaJgNX9ee9WWX3/nBMo8OPDZekm0vJFaR7bowMfKE5b?=
 =?us-ascii?Q?83GiqfdmwoNjUSp90ckKsFlqVSfeBZdIz54G6D+RoUnspM1tqb7egOI/jZR+?=
 =?us-ascii?Q?JU2lVSK8LqsW0qEZrD0ciGKATCF2EKw45F/JXSUDZGjX9SrI93S21ihV3uaE?=
 =?us-ascii?Q?/kY5BM2MlRuCDhCFC1zGawww7NhZFp1ecYcqtM3vJKt657Lpd0jy0j5maU7r?=
 =?us-ascii?Q?c7gRhD6wLd4VnvoHgYEhCZYiXHpnoa191CzAtiXq6iRCG07SjNUy7b6MeLdo?=
 =?us-ascii?Q?4fGS3SylwSyXwad5JlF/UGfTZ1I4c8lCypcWDAkpdl24GLVBERCMVJOEgI2f?=
 =?us-ascii?Q?oqEbCinJjMR2OrwJohXU5Z8vv2a5IbNST2/++CSsQFnX3a8h4E8BXBPclJlX?=
 =?us-ascii?Q?mvZPwrF1gnBKYS8Iu9n49kKwP6E1QsHnDi7HAezy/MjNgYkra8u29tMMPn3B?=
 =?us-ascii?Q?jqDq63465exHFu/0dy0UKm3KIW1OqgJTUuDH5DoSSEZCfdlAEtiLFfgB8flS?=
 =?us-ascii?Q?5VQ4W6tyglNRmz2nrsxZfazXejCo2bVXg7K1CFk9xRyGh3zR8FL3RIvhAWTZ?=
 =?us-ascii?Q?3PbyPR7chVvtLj+F3AzknJVaRjW8MiHUny7wkf43E/4+6K08hGozccJqnUJi?=
 =?us-ascii?Q?Qwb0w8ZZ452vgv1JJKGmPkLBA1GlsUW5jvvS+wsPATVSZjvw/s25iPMN1VVP?=
 =?us-ascii?Q?k3dowuk/999Ewx5t7TqrfwAsqiXbhYWi+V9B4IVHjZ7zTznOVnH/OCoHI77a?=
 =?us-ascii?Q?Bz8CPDtxXbFeQwGMjouKvmKwlhyMzDva7yOwBLPPeNDAA7LXorl+1qXl6eLs?=
 =?us-ascii?Q?pEZu0mUtW7RbbuuIxtsy1b5QLuvOQcrxZtSHcxdUz9BSQ5ARwI3YG6YQMJY4?=
 =?us-ascii?Q?4sDwH7h24p19SUI0ymahAZTMaA5vHvHUnKnn4NtTezWbrP+I3pkBFewMtkjH?=
 =?us-ascii?Q?ZYKP2kH1Erz43CZBeH9QSIqPvi7p//LriwfbxHgEXJi3tIx3L7ifku2kx47R?=
 =?us-ascii?Q?C8YGEkRbfbErPbf2xm8VeDjkbT7alaK0Te85UJLfhfsJzRDzhzsbXMHITiYK?=
 =?us-ascii?Q?J1vP78TlLFzMBfVcbd+hU72xpCm6q73sJaApd0JQvKRpTnH8g1cemKblZQX8?=
 =?us-ascii?Q?/oBGEH1z0V9w69V/rjWV08cXjGBD2Pf9/5JD74Cvlcp5bkmVePkyiEutXE0t?=
 =?us-ascii?Q?RNpJUK2ezg0LHpwrDpCog5FdSYpJNmE2FJRfjMDQsEvqBHncwrqMP2VNGzhJ?=
 =?us-ascii?Q?8Ud9Bc+8nZHcojdfP3p7aqGAo4qdDJsZM7ydxJaOwyACUq13xy9dEGcL3I6+?=
 =?us-ascii?Q?MdeMEsMJ2MfnoWcRNNstFifrsZy8xWAbyAua2uVxUBUu/2oGcLGsD12bJq2x?=
 =?us-ascii?Q?0KRTUEAAh0Eo7g00bGxsNEqHpSAF/H90elnx5SED6+MFC5A81C/dT/xeadyI?=
 =?us-ascii?Q?hcmfw0vH+S7SkBan7sMmWNL3Zr7Oo8G8k+BHWa79?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18ab4735-06d2-4047-7773-08ddd0141e74
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2025 09:24:58.5087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q5RHvjlaHaEH/1Adrh4+PljFAQszDVOK7eu2r/TMctGX6gA4SwLfCHmiNSxzQtA4qjS13piJ1sugnjnLAS+h3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFBD6B1667A
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, July 31, 2025 2:51 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: Re: [PATCH] drm/i915/display: WA_14011503117
>=20
> On Thu, 31 Jul 2025, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > Before enabling the scaler mask the bit and after enabling the scaler,
> > in the later stage after waiting for a frame unmask the PS_ECC bit and
> > ERR_FATAL_MASK bit.
> > Unmasking of DISPLAY_ERR_FATAL_MASK bit is use for validation purpose.
> > There is no functional imapct.
> >
> > v2: Remove intel_display_need_wa [Jani]
>=20
> Ugh, this is not what I meant.
>=20
> Do use intel_display_wa(display, 14011503117).
>=20
> Do not add static bool intel_display_needs_wa_14011503117() inside
> intel_display_wa.c.
>=20
Got it. Will add this.

> BR,
> Jani.
>=20
>=20
> >     Optimise the ecc_unmask call[Animesh]
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c |  5 ++++
> >  drivers/gpu/drm/i915/display/skl_scaler.c    | 28 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/skl_scaler.h    |  4 +++
> >  3 files changed, 37 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 7035c1fc9033..08cc747638ca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1081,6 +1081,11 @@ static void intel_post_plane_update(struct
> intel_atomic_state *state,
> >  	if (audio_enabling(old_crtc_state, new_crtc_state))
> >  		intel_encoders_audio_enable(state, crtc);
> >
> > +	if (DISPLAY_VER(display) =3D=3D 13) {
> > +		if (old_crtc_state->pch_pfit.enabled !=3D new_crtc_state-
> >pch_pfit.enabled)
> > +			adl_scaler_ecc_unmask(new_crtc_state);
> > +	}
> > +
> >  	intel_alpm_post_plane_update(state, crtc);
> >
> >  	intel_psr_post_plane_update(state, crtc); diff --git
> > a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index 4cc55f4e1f9f..cadfcb549ae8 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -762,6 +762,9 @@ void skl_pfit_enable(const struct intel_crtc_state
> *crtc_state)
> >  			crtc_state->scaler_state.scaler_id < 0))
> >  		return;
> >
> > +	if (DISPLAY_VER(display) =3D=3D 13)
> > +		adl_scaler_ecc_mask(crtc_state);
> > +
> >  	drm_rect_init(&src, 0, 0,
> >  		      drm_rect_width(&crtc_state->pipe_src) << 16,
> >  		      drm_rect_height(&crtc_state->pipe_src) << 16); @@ -
> 938,3
> > +941,28 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_sta=
te)
> >  	else
> >  		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);  }
> > +
> > +void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +
> > +	if (!crtc_state->pch_pfit.enabled)
> > +		return;
> > +
> > +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0); }
> > +
> > +void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	const struct intel_crtc_scaler_state *scaler_state =3D
> > +		&crtc_state->scaler_state;
> > +	int id;
> > +
> > +	if (!scaler_state && scaler_state->scaler_id =3D=3D -1)
> > +		return;
> > +
> > +	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
> > +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0); }
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> > b/drivers/gpu/drm/i915/display/skl_scaler.h
> > index 692716dd7616..79183d9ecc3b 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> > @@ -44,4 +44,8 @@ skl_scaler_mode_valid(struct intel_display *display,
> >  		      enum intel_output_format output_format,
> >  		      int num_joined_pipes);
> >
> > +void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
> > +
> > +void adl_scaler_ecc_unmask(const struct intel_crtc_state
> > +*crtc_state);
> > +
> >  #endif
>=20
> --
> Jani Nikula, Intel
