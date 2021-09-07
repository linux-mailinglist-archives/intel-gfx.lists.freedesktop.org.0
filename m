Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8693A402316
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 07:44:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C965A89C88;
	Tue,  7 Sep 2021 05:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86DB389C88
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 05:43:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="283815948"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="283815948"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 22:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="430793755"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 06 Sep 2021 22:43:55 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 6 Sep 2021 22:43:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 6 Sep 2021 22:43:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 6 Sep 2021 22:43:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 6 Sep 2021 22:43:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J++O/sRkEF88PyQlIekdwem6buaa3MbjMSTVRSmdcZc+juBhWmicqz+Wh3LPKonR+GbFcUeskPzhfCnCj6V+6iKiF95wa2q7Kyv8lNLzRLkUi0REaE8HkwSBjar+W1ZShtTiOEMFgetF0vP97eBujv7CQteYhAfGNTXfVTv4AisUiZo4K/sgHdGztExcKVe9vzUPR66Bg8QyjbEi8kanw9ZDxUdck7KRw1036yvJCZOkRv7Uf6bwzlfQP2qY7K+hlyJkdTW9ErqzLJvvU6pR11HSRvOa+qQi8uB3OWclQvRiXaWx4Fmcwy8ouFHsporzYbXirxx/0ncYzR3scAuBfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=FkFq1625lSazNQ6GWcCk52vRKyetuyu7ytnue4mpoOQ=;
 b=GHFK5omhJWMgn/nzqK82m+aiPP/Nw+shcEH3DRvjD6aQv3RI5Ej06jiw5c8ATsL1yfRi9vLa1IaVfCRagTqSLCDG5HkVR1e4I2fnKC4CkEndsE/T1vCZT2XFyfEc/qihCTj8zS835mSYBTAyNC+HgZE37zDVfHPl7hs4EyCvrcHmbFM6gprhAVYr6r3pp/ArlAiOKB5WOJ0UZyWxccyJ/0SGeEc43Rvdv1oTj1pHJW9EOdUn3qO6cQ1UBnxzJ6dnXd5gpZb/Ck+COjG5Oqk4+7WY4U79w3j96IClrdADVYvXz2mphqnSAjjD11V+5qHX1szVD2HxgyltQR4cofpx1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FkFq1625lSazNQ6GWcCk52vRKyetuyu7ytnue4mpoOQ=;
 b=gq92EE1RBAVFIiYTKo9hc9lNVaIUEv+kj4JD2HHpZaF7r6zmv4kdOOuraS6nOSblPALL+A14lLpKR0lTtkeg06FFwh+Va8h1BC7av6DGREKYFxsm+znCbsjXpcqemPd9dO792vJCX75PwmBVBIRwTsT4lEToDo8p47vZmYrRTJ4=
Received: from CH0PR11MB5755.namprd11.prod.outlook.com (2603:10b6:610:103::23)
 by CH2PR11MB4342.namprd11.prod.outlook.com (2603:10b6:610:3b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.22; Tue, 7 Sep
 2021 05:43:53 +0000
Received: from CH0PR11MB5755.namprd11.prod.outlook.com
 ([fe80::459:2b63:852e:f7c8]) by CH0PR11MB5755.namprd11.prod.outlook.com
 ([fe80::459:2b63:852e:f7c8%8]) with mapi id 15.20.4478.025; Tue, 7 Sep 2021
 05:43:53 +0000
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: Talla Raviteja Goud <ravitejax.gpud.talla@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>, "Meena, Mahesh"
 <mahesh.meena@intel.com>, "Pandey, Hariom" <hariom.pandey@intel.com>
CC: "Talla, RavitejaX Goud" <ravitejax.goud.talla@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_s: Remove require_force_probe
 protection
Thread-Index: AQHXoPAQWY3ebgrmuEOJMUsMhCvHK6uYEzxQ
Date: Tue, 7 Sep 2021 05:43:52 +0000
Message-ID: <CH0PR11MB5755559816096FECA929754FFCD39@CH0PR11MB5755.namprd11.prod.outlook.com>
References: <20210903182034.668467-1-ravitejax.gpud.talla@intel.com>
In-Reply-To: <20210903182034.668467-1-ravitejax.gpud.talla@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: debdd41f-ee76-42e7-5a70-08d971c279c4
x-ms-traffictypediagnostic: CH2PR11MB4342:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR11MB4342AB91B4B6DF3449B5A3DCFCD39@CH2PR11MB4342.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:227;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pf5MRwx5GnLm4MhS55sPsLUiZnUa0CbDYiL0wyfD10/D0BLBlQ1vizVcbxZSzxrPWcGuAGxlYBGn1SYHboV2kSuqRLNCsHLXb9ykk+brvchodsE2YDoCxipPE9k94gC8iTyRK0rCoXghxl3kSbPEVZb73lp5l4y8zjuzGFo7Q1BeIr3LoSwt29rnVSDk3kIAsa+db8ZSml9Fjnp0zgCbK+rr5mwC6M0TLdcKTChaC8+wHzEKqYCepH1pjwUWEzIEKi9LG59glh3BxOHunUB5hn7rO/Lax8+VDuZ6dSiPfsrB/aZP/SUP+m2PzPHldHCj6oeagWZq13ZmvUIse1U+H9n3gxhFpTWHzKniMsfyrHZqmrASreuf+A4Y4g43s426doYgIXJ+D1vSW7Xt1eNclyQDeF3iJn9PaKfCGZTB7b6NORMK/Y8Rlog8N/tml6QLJIKM4HcgYqKohoLNPYYXTXy7F22vY9bYSMcjASNQjXPXZ9DTSCpTyHXSmy8hA6lNVHqNoUQ3JYgfLmbUF1cmk7xDRYHrAuT2TpisF2Uz0KqT4rK3x1p6GgSA3FlP2on57mF3I2Gr2RQj7PZiFtD5pMQIbET6xnrYlVLzYAwxRfgu1tbfaDBvE0HWcGonDu7ZKE2FyF3C0xTypqZbYthA1ijiALI49QZrHQO9oxZYesmrZnwZTOdV+YC/jaCHwDf7Ow0f24wQzSKJVmHkWUolT5I4tTiH9BsVmr/GBLE0c2NW8NtgCyQ8GHswu1ruLEoOoSKVh/wbIoY+s8MzP9+kAHSsWOdirvB8pxI1+Bn+AH0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5755.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(396003)(366004)(376002)(136003)(86362001)(107886003)(2906002)(66476007)(9686003)(52536014)(71200400001)(7696005)(5660300002)(316002)(54906003)(66556008)(64756008)(83380400001)(66946007)(76116006)(8676002)(66446008)(110136005)(122000001)(8936002)(38100700002)(55016002)(478600001)(6506007)(966005)(26005)(4326008)(186003)(53546011)(33656002)(6636002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C8C2D2KvRZ9/fi8sZ8ohs0RbPgH3756y7n7cX3gzVsO9tc17txIV0/ThY/KA?=
 =?us-ascii?Q?YZktyj3uxkADbmSSRY3GDt6xUk7LTPwRJDVn6Pn2izOm6HAOOmAJjd7U2L6j?=
 =?us-ascii?Q?pX0R2EAxoBiigi/NDGe6CQ3nZi0OMn3V3lA3iSivqI2Qkv6ypu5KsoVYuJ4E?=
 =?us-ascii?Q?QWHdu9sNkiQUal5BNNulpS7s9rBbLS/pjhBRFRNorFGobr0wA1SMowaBpbF5?=
 =?us-ascii?Q?+DMhaObV/rspoehtag3gGWHJ3vBOLbxF1IZreQKLWF8XcURlLO1TJiNSMYmR?=
 =?us-ascii?Q?VxWooXNe9RHfqzUHhRYRPFVE/FUl6CMX5g75+ysMlbrqQcNpZyff6uQhCB/W?=
 =?us-ascii?Q?NEC+p9Lil3FwZW+YmSaGnHr6RTfDmgPX2rJ1r0Xuc55Fng44SUwES2hojxUN?=
 =?us-ascii?Q?cvsEx1ppe4HtZ2lZBh/uUlMmxeo7MneIFdHZiny5wwoGfYpfmOkfv38/h7HL?=
 =?us-ascii?Q?7D5gDt2EdkhwkwCcgkSLaYo/k4YeurlftZU/JCCCQlcjSztSr/ruPQR0j6oZ?=
 =?us-ascii?Q?lH/X+w1JN1KhnCwycnRdh4LwqYb6+JKdDPoC9jH4VzFAJpj6phs2g2YlS7IJ?=
 =?us-ascii?Q?drcpRy57GWfFbvBjzFggxNl4+NeEOffhFBiWXVCz+6MbRlVHk9gaB3qWxPId?=
 =?us-ascii?Q?8PVWUggtijJCxE+kmfkw5SFBrzljpT4jQ3bvFwLMqlMwEbMhTvXkqjmsF2Fo?=
 =?us-ascii?Q?DFP1IG/vbIVZ7n7zblQud06+d2UAm9GAw3/W4weO2b1K5Ef3PHNkw6Y8/tHK?=
 =?us-ascii?Q?Tq2vRbx0N8Q7MFiS8pArceWXzmHDPUDt8TmFJvovvbw1M8VJA/1aOe8yEcyJ?=
 =?us-ascii?Q?VXYXBrw8D+jwpRk/o/bANUGrfGYLCJ0ExFjW4R6hD4YYgDNLxSpAwx3J5KKp?=
 =?us-ascii?Q?h3kKt3qnhsCrxldvDRbKDm1n0MRXoJZkoN51HQazfH5OfBmobHlHRKMO08ay?=
 =?us-ascii?Q?j0bBEJ80L5nbr7zXqBjpfrqSgJw3Oc2VUg/cEt6k819lU1L4VC0lCDnfeNQe?=
 =?us-ascii?Q?a/qm19smzcPuWXp9BXx8qfFfG7Cwu9mrI3hU/E2udFgAYn06diiBTZ2LLpck?=
 =?us-ascii?Q?Q9mm2gZ2sTB6ioYve11SmHxjGaA2YsOZHdVWhZ0ezcIAaVbHisqAeOlGBeZy?=
 =?us-ascii?Q?sCDzf2Ut1nxQwUKoCgbDV+cuA9vbdthk0xn60jTAkxsRjJpU1IJHqEQ3mWlS?=
 =?us-ascii?Q?YPE08hxbbxd/DwJpULW4VCTCkhaCkvUQWhi11csCzB2Gw2prGrw0BYHcBMDZ?=
 =?us-ascii?Q?hyu+JF3F+LoDxct1+umqU+J3LFWQDejz4ZhJ4+Tt/+/r6soejmYeLimXEoPA?=
 =?us-ascii?Q?5eZ6niMhiq2tZpGRCF1uA8/v?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5755.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: debdd41f-ee76-42e7-5a70-08d971c279c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2021 05:43:52.8906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JRgnWxz//KfW8a9ubwrrK3fa6QOHDr75UaqaIBv8m9Jc/niMWfs+IP1AuFZnLhorTD6N2Et9FZPhWwY/MBQSOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4342
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_s: Remove require_force_probe
 protection
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ta=
lla
> Raviteja Goud
> Sent: Friday, September 3, 2021 11:51 PM
> To: intel-gfx@lists.freedesktop.org; Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; Meena, Mahesh
> <mahesh.meena@intel.com>; Pandey, Hariom <hariom.pandey@intel.com>
> Cc: Talla, RavitejaX Goud <ravitejax.goud.talla@intel.com>; De Marchi, Lu=
cas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH] drm/i915/adl_s: Remove require_force_probe
> protection
>=20
> From: ravitejax <ravitejax.goud.talla@intel.com>
>=20
> Removing force probe protection from ADLS platform. Did not observe
> warnings, errors, flickering or any visual defects while doing ordinary t=
asks
> like browsing and editing documents in a two monitor setup.
>=20
> For more info drm-tip idle run results :
> https://intel-gfx-ci.01.org/tree/drm-tip/bat-all.html?
>=20
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: ravitejax <ravitejax.goud.talla@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_pci.c
> b/drivers/gpu/drm/i915/i915_pci.c index 03a820955458..d4a6a9dcf182
> 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -912,7 +912,6 @@ static const struct intel_device_info adl_s_info =3D =
{
>  	GEN12_FEATURES,
>  	PLATFORM(INTEL_ALDERLAKE_S),
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> -	.require_force_probe =3D 1,

AFIR, force probe removal was blocked for MOCS update, which is landed on d=
rm-tip.=20
LGTM.=20
Reviewed-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
>  	.display.has_hti =3D 1,
>  	.display.has_psr_hw_tracking =3D 0,
>  	.platform_engine_mask =3D
> --
> 2.30.2

