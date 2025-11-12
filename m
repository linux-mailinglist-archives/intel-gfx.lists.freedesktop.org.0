Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73320C508ED
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 05:47:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F43710E68E;
	Wed, 12 Nov 2025 04:47:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iFmnnMXZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17CAD10E689;
 Wed, 12 Nov 2025 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762922853; x=1794458853;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LPVZA9Kb/BlCECPY4Vk/Rk0Ps2Ot5QxblhMtp7uPKpY=;
 b=iFmnnMXZ/CbWejRaVAsWBsY/PD+uvzd/Zsm7Gh3BY4qgmbHH+6R45wFb
 tb0u7JUZtpy4FoqIKysGAG0KFbz8y4FwjM6TtXCgQ/nbz3hOSXaxrokdy
 QkAKTHRznbPgoltTn+kwJ40SwNRjmbnda/xL9LdeN7qWa38EZqcTTMdGe
 jws3WdH9M582B8rpkg+Qg77H7N1Jr9WJpQQSKLUTLS9Es3doUpBWTMXm3
 pjFoDYHTKuOdA+wpe7HIzkQRUWXSJn76RK4JfW9jT3s20AaADkZsFqIVz
 1jUjoBefSxHSqglV96SP/dmZVcCdIpE7pxZAjcG0Epw8y+Q4jFyRjV2fR Q==;
X-CSE-ConnectionGUID: YmJcVWZZTVu2uG57HUh7jg==
X-CSE-MsgGUID: F+MmdeNMSd++oIUYOs/EJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="76328399"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="76328399"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:47:32 -0800
X-CSE-ConnectionGUID: kz4YpdJMQKyb/Y0tbfOPaw==
X-CSE-MsgGUID: y7Ptr+vgQyu8ocgSZoOiOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="193504921"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:47:33 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:47:32 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 20:47:32 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:47:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zf2z3WvOnSbRhLl0dyGA0Bm80iqmBFp6BSEdcWd7UEko0qCQJ1Nsp7H402mEaX1xiqENZCbi+UQXBB+Brp8JLn6XDeMFr9kiNB8R57RrXSopRqbfSbaDH4ib4Ii+2WAixhGaGsAsw26TnuxGj7O9Iy9EmEbDWfdV5aZ1Mlg6wGIn5KWYzPt5ZJOCVYjvQ4UoUWhc7YIa4OkJbMtJrI9MnAtORQAp5v07ksNzD3kWtQAoHdGLlbz46SDVlIRObOhHQtM70IbluKwTssXda5jnZQB3SYxbEAaGWHnwnFqG+u9eeG3k/hVLFHH95fP2lwmLYvGbLVCKsoh9wlq7GAsU2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5spZjXDzKaz4M/nuvnIDWTfi6vFOSWuXEvHQsyUvNCQ=;
 b=pqLMVmGZmEr8CFxl/XkuR0aUi/dXcAEPArrJDj2BcWCTXPmYUWgI4T9PYT9AMBLTJD6lF6W1CW7FzT3a4oGu4kzjkTTSgTXzGNISgezJXGAwRqU52r6BU9y+st3E+ltrAj7cpcd8vPkwb7dtm76ETFJ3IGkp9X3nlwm8bCKVkAcSINisCCIk4wi0cYEJ7L+YXwZxk1Ud/4l8bpWJ0ARZA281/NLyrdSoy+v9/gHUsNP9t8mO2VPJGbAMln0D+C++3VEdN8dkBj78M+jemNdQnedUfZ+S5Fg6w3QqNEtD3QCnihkkaJpU4JoKYU/LjQGqd7ICzSo9gNTaw5Y2sRA03g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB5086.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 04:47:27 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 04:47:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [CI 19/32] drm/i915/display: MTL+ .get_dplls
Thread-Topic: [CI 19/32] drm/i915/display: MTL+ .get_dplls
Thread-Index: AQHcSlUhVe63xos+nkCKxmSKKrzF67TuidnA
Date: Wed, 12 Nov 2025 04:47:26 +0000
Message-ID: <DM3PPF208195D8D30B10BC86ED24264DD23E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-20-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-20-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB5086:EE_
x-ms-office365-filtering-correlation-id: d190d951-6f48-45e9-2fb6-08de21a6944c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?hoWMShe7q+d0LlVp126hFDmgNP+1grLDb0zjDLE9JRB1tjyN0gZSRZW84IiA?=
 =?us-ascii?Q?sSVKq84sS+hyvxxQ5lV6WJHMZdcLB1xI2xJwkscGyIPgZje2OH3JMPjzdG68?=
 =?us-ascii?Q?UeTwcGsaaQYsI01WcS3sgJTsnR/78leI9bC4U2nG2h2+xW1c/O9xc24vuy9q?=
 =?us-ascii?Q?cY/AngdiUM+PguzTEpddHyurvmfp+DPtHnHqb8337uYEbBs4cJm+a+UE3eNy?=
 =?us-ascii?Q?4wbHN9X6djiiZF2NZwR94sZW/Czvq1sUCSe5wUcNwKqXffKoQvpuYcYts97L?=
 =?us-ascii?Q?8XQkjhiLkcl2sjbEwA7eE4soLrwFk0zk9EWpfxpIhc7hLCrkm3ircievVkXO?=
 =?us-ascii?Q?RJ+KaZtUWo/4s35y4nr9U/p/YVSA6Ztjzy+6UbzfL1gdZ3P8hgL0e4EYejxD?=
 =?us-ascii?Q?Kizo9xZA4CeBr6Lgqo8IyFZaP4zX7OhiuDfn4PM/OiA6f5yk1xW31jIU7yKR?=
 =?us-ascii?Q?48B/fL0b9o+KoJPOoah1UXqCH/lhf9S4BOCz6TcrKARqLLQvzS5uxY6/p4VE?=
 =?us-ascii?Q?4k8/hIqvXMIDuvpMwodUL8ehL45M9+dHDcsCDmvFttDowKlm1lLCombAXswa?=
 =?us-ascii?Q?y+HImDFxRYjd+ej7rY8PSE9RZIz5zeNCDaeKlOXhlerYmJyKx+p5mO12i+Ai?=
 =?us-ascii?Q?X4U+nVJkZvjGDQ2++ZSvYXlxz+6VXqw8axXudr1Ekfh/J4DNB3MjI10JCd2M?=
 =?us-ascii?Q?SV+DdE4ML8YvgL37WQEoClzv37ZhuyLkOFHmZ0AK1B52T8IDle+AfKFPDIlE?=
 =?us-ascii?Q?1+Cs3tt87v4+o2PBXw9fjxhKQkG5kOdL2X1Ms1c4qOS8FXHza+ahvYw4aGXn?=
 =?us-ascii?Q?lWG1J19c4pwiVRaX2s3nIvIjZOOHSfmigs3x8eTaVqXGNOo75KJ51dGxtdZX?=
 =?us-ascii?Q?BqOE4Jhuu+RDS+cbs+3iPxm9fEvg5KSxUw6/UbytLMHrgPaaVimzDbEQIVuO?=
 =?us-ascii?Q?nBsK6R/IfZV05H98Ag9QdihL3n0jGUtTV/n7HaIJFDFqcIMU2qP2hH2QRx+V?=
 =?us-ascii?Q?Uhryjp/5jqFMNXdaoSJlOJOLgr0AiDiUpqmf89nYabN4o9wcG1JwNWHse7UM?=
 =?us-ascii?Q?7VTjxJEY4aTQpO5+B1sSX7IOiR/UFbhlV5xjmJX80S/a3mfMdY9Guu7C2JsQ?=
 =?us-ascii?Q?oBKCNlrI7ZyMqYQyQm//QAQ4unVzleQyeA5rsQvXVz+fw+q3buTnLhGRsUAe?=
 =?us-ascii?Q?yfJEK9w+nucXoHXbMswJUd8LL7igQo0lk16pge5c0hAj5b0u4xmK2xpdnlPE?=
 =?us-ascii?Q?FxOr7Xrk4D4qjaGRsicEuIeaOVLZ4/D/wJS3K6ziZ9jJ8crogWkqnz+Xi+lX?=
 =?us-ascii?Q?dFiezbUUKXZVbvhPSVS1kC/P4MxfBA/3GRnW8jJiTrSM3wC6zwzg4ZnnnOtS?=
 =?us-ascii?Q?IEUwHm6ZONUcV3+J+tY+FaYIeah15cLFvJ331wWuOZLuhJkzZ7XA4pBgfGdA?=
 =?us-ascii?Q?ZSo7nRRsV0/uKxebe/qnYmGIU7QNkeXgGFlMVW2NOkqLZiiPFk6iB/wdjc6a?=
 =?us-ascii?Q?FJcbXD2AIqCwKG/lYPjiu+nrJQOU64DVqqTO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/Uow14Xuo8iHt3nKo3SqCiyXC0VMd9AZAK5XeBCWLbZLu/Iz47vJngo/VkwL?=
 =?us-ascii?Q?CHqQ8FOQDxjb1vdH7d9P8TRlhBE/7R4ZYktQV80ZXcgEwt71j1x1nxbRgnLa?=
 =?us-ascii?Q?F4ph9gNJEsDFo+4rUZUhCF2d4GDpitx7t3L37IQLo1OH+Osrn6KfZpvrWRVa?=
 =?us-ascii?Q?t5MbQ/xMk8fbTYzA/5tHaq8QkAVYCOnA4sHofEoLd5ZWMopzTUsNYoAU47Rh?=
 =?us-ascii?Q?GVDADRiw4mz/9rWJNBH5sjCH5Je/kvb/hga1P1/BkzAO0EGLJfTxXripP9ht?=
 =?us-ascii?Q?vaV8rSQI0D00tFiDNUTMXU3peB8xCTbGZwk/BrRZrnIu0ALnJRV/RTdYXQMR?=
 =?us-ascii?Q?8g41ubcjLC/myWs1vPuPiPMFlKoVcczoQ9L28qykRuP7xdgeiFwGF5+aFy1d?=
 =?us-ascii?Q?jGbpMP8MjYdk/oViULnVHVtluXMJ/cU3TmS/H3FxFSOB0YquyT2OnLv7s8Sf?=
 =?us-ascii?Q?D3L9JoiLBRybRVOIVxvhAA8rQGbxvr48Lu+89S3j2/wSNreoxeU4651Laqwi?=
 =?us-ascii?Q?UPSSVghDd2VXieMfNr4wQdWXc4ZEzDMe3jalxYYWXRSxMx2RaGQIlolEf9Bs?=
 =?us-ascii?Q?qFvGOiubpRR93w7ArFsN72fY5myxokM4j8SH+v7s3QhcOOJW9FPatxqGmdqS?=
 =?us-ascii?Q?x25YNWmE3FdEynuhUTLh0Ex/adG5HaVleqANGEaTTBZi5lgNUZP9lcL8tTZa?=
 =?us-ascii?Q?cXT/pZM8pk/F4ZIzkIWJ45CB1rOjwyxMfWAnRjaYmFTjhvtGQ4JF++igmZ6o?=
 =?us-ascii?Q?vAtC8Nsmr3ZoPt9aL+UQ+mCK3Fbd2c5XBGedx2F0as2D1KO9odbWOm0Y9C8g?=
 =?us-ascii?Q?ZHHebhDLJgiMJoiDdawoUsjS5/l33H+ieu5t85+Kn2C1beciXMxwO2DG1IPH?=
 =?us-ascii?Q?3o3KYcmedgbZKNcOkUgkzx8dm0WJz7s2+zb8t2Pyl1Xsd9WfnyaPEbArFeC0?=
 =?us-ascii?Q?oSnvPzSNCy1OyZN01vXtOJTAxBWws62XNITg8xtSwlh7pgl5RHixgsP8UMMo?=
 =?us-ascii?Q?uvpVJEmp25iyHJJMRzOdiblmvTKdAvIeUFNupX+OXxitUwJ0awuv6ssKB1UC?=
 =?us-ascii?Q?TlaoZ2Ve7Ny+KlE2237DzIGKZGsDaC7e1XB3LEvFk9QbZ56kDAvVjJMYrAK4?=
 =?us-ascii?Q?MvIKr2eozWNi/CHUHMZNyqI+KHZmFcHCnXNJKUVgHwm0iT8uSLhJxLWci1rb?=
 =?us-ascii?Q?CsYaqSFcFi1XYEqeTBeY8I/aOkaWOftbrwf5In0B+vG3ko3Xdg96MmsFMqpv?=
 =?us-ascii?Q?hcD6WargaP87u0UGz+c1x5ycD4trxYdOsYU4wx8X01gm+jTuvYQ5Epcllsc6?=
 =?us-ascii?Q?eVk68zQkb7/3bUIZNurInuM2uvPML1t5SNmylM8rgJHUU8xJ7kLDVFil9t09?=
 =?us-ascii?Q?fMOaLN0JpAvoQtC4vE9vH+wdziKk/josRRbkt9sJtWnPzc+eQEISiIITKOCn?=
 =?us-ascii?Q?EBTWIf8GlY9gv97Pw34XGSkwn1nQdB6ejQkAczb/7Utz+TwIyQjfOmfi+IrA?=
 =?us-ascii?Q?eYWy4KZNbEC9LQgb8u7vVu/RS1jtWZfB884bdl1BiXpbR08IsighIpvk/ITF?=
 =?us-ascii?Q?OcUDibSceD8YV0AWU7woBptTqTp8Yf9yobag6/uz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d190d951-6f48-45e9-2fb6-08de21a6944c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 04:47:26.9462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lNsVJG7YztMFbD8HJlxc/5TXMSIQGbkuHp7f7YulwMmrac1uJWzMsGGnzYC4hGqvFWEtHgQDAMWx6XGFt9xvaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5086
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Mika
> Kahola
> Sent: Friday, October 31, 2025 4:06 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kahola, Mika <mika.kahola@intel.com>; Deak, Imre <imre.deak@intel.com=
>
> Subject: [CI 19/32] drm/i915/display: MTL+ .get_dplls
>=20
> Add .get_dplls function pointer for MTL+ platforms to support dpll framew=
ork.
> Reusing the ICL function pointer.
>=20
> v2: Getting configuration either for a C10 or on the PTL port B
>     eDP on TypeC PHY case for a C20 PHY PLL. Hence refer to this
>     case as "non_tc_phy" instead of "c10phy".
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 56 +++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
>  2 files changed, 57 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index b6a5a519e936..c6af2816594d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -203,6 +203,22 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum
> tc_port tc_port)
>  	return tc_port - TC_PORT_1 + DPLL_ID_ICL_MGPLL1;  }
>=20
> +enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display,
> +enum port port) {
> +	if (port >=3D PORT_TC1)
> +		return icl_tc_port_to_pll_id(intel_port_to_tc(display, port));
> +
> +	switch (port) {
> +	case PORT_A:
> +		return DPLL_ID_ICL_DPLL0;
> +	case PORT_B:
> +		return DPLL_ID_ICL_DPLL1;
> +	default:
> +		MISSING_CASE(port);
> +		return DPLL_ID_ICL_DPLL0;
> +	}
> +}
> +
>  static i915_reg_t
>  intel_combo_pll_enable_reg(struct intel_display *display,
>  			   struct intel_dpll *pll)
> @@ -3491,6 +3507,35 @@ static int icl_get_tc_phy_dplls(struct
> intel_atomic_state *state,
>  	return ret;
>  }
>=20
> +/*
> + * Get the PLL for either a port using a C10 PHY PLL, or in the
> + * PTL port B eDP on TypeC PHY case, the PLL for a port using

*eDP over TypeC

> + * a C20 PHY PLL.
> + */
> +static int mtl_get_non_tc_phy_dpll(struct intel_atomic_state *state,
> +				      struct intel_crtc *crtc,
> +				      struct intel_encoder *encoder) {
> +	struct intel_display *display =3D to_intel_display(crtc);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll =3D
> +		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +
> +	port_dpll->pll =3D intel_find_dpll(state, crtc,
> +					 &port_dpll->hw_state,
> +					 BIT(mtl_port_to_pll_id(display,
> encoder->port)));

I would rather have this as a separate variable than inline like this.

Regards,
Suraj Kandpal

> +	if (!port_dpll->pll)
> +		return -EINVAL;
> +
> +	intel_reference_dpll(state, crtc,
> +			     port_dpll->pll, &port_dpll->hw_state);
> +
> +	icl_update_active_dpll(state, crtc, encoder);
> +
> +	return 0;
> +}
> +
>  static int icl_compute_dplls(struct intel_atomic_state *state,
>  			     struct intel_crtc *crtc,
>  			     struct intel_encoder *encoder)
> @@ -4388,10 +4433,21 @@ static int mtl_compute_dplls(struct
> intel_atomic_state *state,
>  		return mtl_compute_non_tc_phy_dpll(state, crtc, encoder);  }
>=20
> +static int mtl_get_dplls(struct intel_atomic_state *state,
> +			 struct intel_crtc *crtc,
> +			 struct intel_encoder *encoder)
> +{
> +	if (intel_encoder_is_tc(encoder))
> +		return icl_get_tc_phy_dplls(state, crtc, encoder);
> +	else
> +		return mtl_get_non_tc_phy_dpll(state, crtc, encoder); }
> +
>  __maybe_unused
>  static const struct intel_dpll_mgr mtl_pll_mgr =3D {
>  	.dpll_info =3D mtl_plls,
>  	.compute_dplls =3D mtl_compute_dplls,
> +	.get_dplls =3D mtl_get_dplls,
>  };
>=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 839b1a98534f..fbb6a45d565c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -439,6 +439,7 @@ bool intel_dpll_compare_hw_state(struct intel_display
> *display,
>  				 const struct intel_dpll_hw_state *a,
>  				 const struct intel_dpll_hw_state *b);  enum
> intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
> +enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display,
> +enum port port);
>  bool intel_dpll_is_combophy(enum intel_dpll_id id);
>=20
>  void intel_dpll_state_verify(struct intel_atomic_state *state,
> --
> 2.34.1

