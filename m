Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 111E5C77301
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 04:50:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58F0D10E7E4;
	Fri, 21 Nov 2025 03:50:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OkgMI5t8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79FC910E0C7;
 Fri, 21 Nov 2025 03:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763697050; x=1795233050;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+7N6Etux1LsxnhiGF3V9uU47RqN8+03q0Edva61ALlY=;
 b=OkgMI5t8cUvjGvsmSvKVum138X0lDAexcUbFt4uwkOnWSbKfffZ70IFz
 bth389IU7h/MRDu57wnOLkzUu2a5McIcpJb9dOZCsqWZkUuMDfFOI2EQW
 jJ6RZd7jV0V/dOuEcOc8XFqXSTq8DS1HFQKXK4FT2twYIMQegdz8IMESN
 KHWmiPQ6wS8Esd/dJA/snb+do4hAVE2bE5J2jX2naTy9nj4XVXEWz0DAj
 LN68AjQhtmU49h7gZAt4BjjvxVWKfUg63Yu5rw+/GzB74pl3KrN0yWgHy
 apQJFPtIGP5BmntzDuTYKLxaUPd0RWzHKpS6PRf2fNc2nzpbO554HFU4+ Q==;
X-CSE-ConnectionGUID: 80114i1tQpmqs99lVA5vqQ==
X-CSE-MsgGUID: Y+mmhQDLQm+zHO26lDO25Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="53356852"
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="53356852"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 19:50:50 -0800
X-CSE-ConnectionGUID: Qxyt3AOPRQWvGYznRD65qQ==
X-CSE-MsgGUID: I7hFEXtDQleVCdKPXOAMXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="190787817"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 19:50:50 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 19:50:49 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 19:50:49 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.20) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 19:50:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iddTJMXJ+IWtshsOaNt+ZE0WbseMEmoR+4C5o5d0nQ0KifFoO1zgYk3fIKXH8BhglK4XTBiFs91CiY/x0/cXNVJvFgJ47HIAkvj15jPmye5V4NsrDU/kkx54CUt5uF9rpmrx6YoRBIYsi7K4zcBQQvsPRure51N+asgcINILfj11faVWfatGwvoB90X9DTiJg6fu3Rx90SmzTV+G7JkmQ19EsD9aBslA6EthJFwRvUcH5u6QxBjfj/XM6wozdwLI+5lPMWBRhXQY3HyNxNZfUvBrZVvW23HPcW4B1RPMgWISpzWlwYY2EG/0iDnlefWUmQtm3BxzPXA8SFkD2xPJjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jiVULbD+j9fRmcLV7ZzvKCl6we/QhQPXKFnBrhSVzpo=;
 b=R5oF2XOGB5uaCt9PZBeM+TgXhuctkAID5w3gbSP4GWHXQ4iIW10SxfBd3fjueg//YHcaCSIN7xnu/I0uRVoXMt8sZSIHkrS9ykN+rLtbaGH9+lBf1nbwWO4umbEeBXOKlNfiCXM1ODE6RV/0QeyPMtA+Asny/LTtShW135jmWXQHux2oK14UXMQs/MSWZkpiy2U0bkK7PVj9kHSXg/n6XIdc06JYi7+M2H/QrJLJEWj6vVRL5D25XJVeYlCfMHh/TrhorHBcUK8mNMd1jRuyD06XkeZdeCQOF7DitAuQJboorEtSMVW8qobNye+bBfI4vySIq8DD9Kq6aSa7svQyEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH0PR11MB7521.namprd11.prod.outlook.com
 (2603:10b6:510:283::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 03:50:46 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 03:50:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 4/5] drm/i915/cx0: Read out power-down state of both TXs
 in PHY lane 0
Thread-Topic: [PATCH 4/5] drm/i915/cx0: Read out power-down state of both TXs
 in PHY lane 0
Thread-Index: AQHcWkKJp1+nXPy8l0amTwZDVIVNAbT8f17A
Date: Fri, 21 Nov 2025 03:50:46 +0000
Message-ID: <DM3PPF208195D8DDE60F2C4304CF76F8F17E3D5A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <20251120172358.1282765-4-imre.deak@intel.com>
In-Reply-To: <20251120172358.1282765-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH0PR11MB7521:EE_
x-ms-office365-filtering-correlation-id: 6a30d711-c568-43ad-330c-08de28b1272c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?IQNV+i5YtRxsNW1odkSXUXqw0OXivalhAap9Tn/lwrv3hVqYHE4cuEZCuCL3?=
 =?us-ascii?Q?75Cnr7T0UKNvCWZtXTF36EaE0t5ahEEDaZYg3ybz4SzXhqzlLFl/yzLxhInW?=
 =?us-ascii?Q?OwtAmZg95+tLs87vmm4TLiL/95DvekrEANVj+GR0QqaAyzfuetoSYQWbg9T1?=
 =?us-ascii?Q?D23HjOgeMZNGqJvnowwB2u/8PRw3ZKGYq/Torzh3zxz02QPFQbAsZjlqBKcr?=
 =?us-ascii?Q?bBULBrigUwtnwF65lX3JiGd2oVnaXE3VX42sbGRly4sraACj+hqWwtneLbMU?=
 =?us-ascii?Q?qzNRnnH1f64K6+KE2hjdIrG91+jtKFgvzVZrJ8L7NTpzP8IL/+5Dr8X/Ck/E?=
 =?us-ascii?Q?vclargnBIHVlHirfskMvMcq4KijFJXVzp93OFQRTx6xkCHlq4eegNFeRaqHT?=
 =?us-ascii?Q?1SpL2luT53hw835jQF/c9+3/vW2w2WccyCTjCyYEZ0EIkjhTEbjS0c6S6pmf?=
 =?us-ascii?Q?ELvEGTL7MPVeVeeuZ0iuDMWGU8QJtbmS9k4pFT/SO8k/iKzpOQVv2OvrlTwT?=
 =?us-ascii?Q?BD7FUUO+z7//xjPyqxT3NTATLdypc2Pz83cpvImUpJ/3cqvSl7aSjgdC5vkx?=
 =?us-ascii?Q?ZmnI93ZuVXSyI3Zf66wPIpJ/saBKUlVEFwad9cpzO52SmRTfWIauAvPofUw+?=
 =?us-ascii?Q?qLkq25hpUw41RzU1qS81G4vGtQr1pfeYHwkS5pNTg5fGeOiDdnqheYBmcIHJ?=
 =?us-ascii?Q?Ua21lFkcXmpbLcW/tJTZnUbnmxu21JnUWRH+o83eZx2qbEnae1Z/r/IQ02V+?=
 =?us-ascii?Q?o8QSBQ3dCzIXMDfWkkYtPkoLgSmmNOgX17C+fC2Dfz3lWT4cGtZJRi8fK4mV?=
 =?us-ascii?Q?x7bFZQlxSvXvS4XTsHoxXJ0yUS7xN3K+ruq+hveyQP92t0vTAM4jELk5sso6?=
 =?us-ascii?Q?Wn6GyoLbK38cjHBvNmOrSYWHilB61E9fHtInH0posVmmUlHnbjRIll6izzxX?=
 =?us-ascii?Q?3zZ3IVQ53XEsje+1u9OHGm4OGfZfs92DXmaSwA0nz2MBu8gVrZtXTn/8rIjr?=
 =?us-ascii?Q?Xaf4zpJ2GbOGn3vBhIJoRUHN/kZ0ndvXu0TVgzKoSPXfHxCNXYveT5Lf0iz2?=
 =?us-ascii?Q?pOmiMmwDmBAvW9HyY0p7aENz4CtqZmzDmONQGF/ZonyX4QxDHptTu/X5zYVz?=
 =?us-ascii?Q?KbgNxX2qDNSY/6BSM/WOXS086VsPw7MJcMFajZQSBdhePLfLGSfClH/LCVoc?=
 =?us-ascii?Q?ZUJGF08WzEouVTwFbuprDi7FDcDWvWBTZWDUJOYEoHOumM1UKZ2u5uE39Cxj?=
 =?us-ascii?Q?rNv6IjbhHbQ2gF2/V/MeaajWZVY36wlLfHamEJmikEaCsfszlHJ+mMghmDYi?=
 =?us-ascii?Q?D9e3Acy4jjoZiGTvmaf/698UhjY84HJ7fjGRwp+fPMEAO4xdDynjTYpoff2b?=
 =?us-ascii?Q?S5NX44jBn+pFmjIKP00d5sD9PYDd6U0nAXPtE2skgPWExQyYNFr03QTK5cj1?=
 =?us-ascii?Q?Dy3m6RTX8LM8qBv1hbfGC7HW+KRncMS9/WRYFXAH0fzN5MbAupummuE6iboa?=
 =?us-ascii?Q?SkOe0PfSbTyx6vYm24F6D4O3+6+dMARrjZB+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2aUKRr0TjTIFRak1OWUw9UNsLLA8YN7IL1iPI9g21izAF063JsZbTHiCcZUP?=
 =?us-ascii?Q?anviK3EPtF8EP+fV0ldwKxweN4RmYVl33y5iALiwE3eH5L1ZANGmgSuAPBAK?=
 =?us-ascii?Q?4M4XMePL6EN2JmO3Yuik4ywNYveobpqVQHzv71H7oRauh+YrjeornEi7ADL8?=
 =?us-ascii?Q?KaP0ZeTQuYFJhsgZQ4d8/MmNING/el1ohNP+8qNccrlRk3QmrAvqioXZj0Fx?=
 =?us-ascii?Q?wZ84CHuh8G2o+OhETG3tJTIgXlvL3VCzA91nJzVp61etHqRK+UD5IZZcCgjs?=
 =?us-ascii?Q?HdFyOStkRmQvAthY0GQgYyROo35GpO+80jATAHObRR/ra7FivZgGXFdQla/e?=
 =?us-ascii?Q?ayXr5lHkZoBM+suQdH4qyIdy/mtPWhwc79iZxPEaOL1oxXdRNv498eEK3daA?=
 =?us-ascii?Q?elQIvJ6hSr6FRuXeg23eEwk4CTmcNUU/1IoH2sl/BCYbkY+dm/kcmXLTuiuP?=
 =?us-ascii?Q?kPARMM9N/Ks664sSTQiC8oT6lLR31fBkdszFjuvi4wQ579zsKb8spm1sClkt?=
 =?us-ascii?Q?oRP1rLDx4QCiZxoAHyMHRIBwZmEcZBiATwtVQDuRkiFVzS1Wdqah6I0wX/ED?=
 =?us-ascii?Q?3XUtz63DVvLNzBRhC8cFWxLJtgQK1yUqMKQxBUBWWQ8cAsLubXDpZe1QqV5h?=
 =?us-ascii?Q?1tI3eBviNyJB07ppKTWQRv8dM21YqPhGfJXF+E7koQioMxZPAScr1AjUOdAa?=
 =?us-ascii?Q?VJOgFZiYDIKQBgdmyrLp09wADFDE6frqrZhCezK6SKkXpSdkuZ+rr+RSZW/h?=
 =?us-ascii?Q?ddxNA+yLg0UkGlxM6q61iOWNiq3zIl0oW2Wdc1x99oNdNB2KNCvjPAqRuvmp?=
 =?us-ascii?Q?x4PfV8UQgEUjRrii4eGv1f8Wxd3+JC1WGxxnPATPzrzcA+XMvqUvzcI4b4ik?=
 =?us-ascii?Q?CZTwN9w474AKGS6cVJTeB3bDc9MjHE1lfy3a22U9okJYJMLvDuw19RrabtGB?=
 =?us-ascii?Q?IfVBlHnE/jTnu/gv8qvMgu8o7w7/93Tag/dLtBDRSSOatbEVnnUx+VYI7JKZ?=
 =?us-ascii?Q?foirKfm9G5OZOW9db2OkIYgi+l/IOWauBpM2ROdKNnE8qAHnQrDJBgM4URI9?=
 =?us-ascii?Q?9arU9i3UBRDKKp9IelFlNA2whgFn8uS/+i9gCH3n9nCLIMnpSjsleqicUohl?=
 =?us-ascii?Q?H5RKl651lkImi8i4dlaA2BuImU77F9gc60H42rEHoYNTC31Q9DMbESTsJxNw?=
 =?us-ascii?Q?Z0/5aiZU5gurr0cJGhHTsUoISJRGOWN6wA0vuwWilbDxhC3ap6ixWQRYUm4Y?=
 =?us-ascii?Q?9e6L6KXog+t/++WBzvN/cOgc3cFntFXISA/5XYi2SmPoE8DRg3SeyToBL+Qd?=
 =?us-ascii?Q?HJEazPlriUihdL283rnNWNb71jKRAaiIi0kBiGzb+1TTfZgvdkAUF8lRdV4S?=
 =?us-ascii?Q?CIQsohP/MlXyAZUoW/Rd3cvchea4/5xDQTNWKDjGfA5anmJ//ZBuTHq1WVLL?=
 =?us-ascii?Q?A04ZZp0pQZUU9VsOGpW+9RO7jfIxUKremXHfjQ8Q+4PqkKwcIiKB3g5R6+x5?=
 =?us-ascii?Q?jny3cNUHQz7hG1WF3OQMVSzAnHEe0HClTD6N9ShFRicmhM9KpI1VZmZdCrQY?=
 =?us-ascii?Q?ckVoUh2QLLQIMq+bCLiEsdjbLae6taahswoHLuLx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a30d711-c568-43ad-330c-08de28b1272c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 03:50:46.4560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m7iLLn/m4c7qyJcdZhjZL5aFVNUuDHvx4uUiwYdkV2+pfsS48tn72Sw35JcInm9k3bk5rwZv/7jHyRTXldyofg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7521
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

> Subject: [PATCH 4/5] drm/i915/cx0: Read out power-down state of both TXs =
in
> PHY lane 0
>=20
> If the number of used lanes is 1 or 2 then the power-down state of both T=
X
> lanes in PHY lane 0 should be read out. If 1 lane is used only 1 TX lane =
will be
> checked, make sure both TXs are checked in this case.
>=20
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Fixes: 230d4c748113 ("drm/i915/cx0: Track the Cx0 PHY enabled lane count =
in
> the PLL state")
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 96ab7f3b5539c..0d524735dcf95 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2209,7 +2209,7 @@ static int readout_enabled_lane_count(struct
> intel_encoder *encoder)
>  	 */
>  	max_tx_lane_count =3D DDI_PORT_WIDTH_GET(intel_de_read(display,
> DDI_BUF_CTL(encoder->port)));
>  	if (!drm_WARN_ON(display->drm, max_tx_lane_count =3D=3D 0))
> -		max_tx_lane_count =3D
> roundup_pow_of_two(max_tx_lane_count);
> +		max_tx_lane_count =3D round_up(max_tx_lane_count, 2);
>=20
>  	for (tx_lane =3D 0; tx_lane < max_tx_lane_count; tx_lane++) {
>  		u8 phy_lane_mask =3D tx_lane < 2 ? INTEL_CX0_LANE0 :
> INTEL_CX0_LANE1;
> --
> 2.49.1

