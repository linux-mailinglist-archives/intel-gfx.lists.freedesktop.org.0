Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A9AB3F718
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 09:54:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB9E510E3BC;
	Tue,  2 Sep 2025 07:54:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DLSht1JZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED2F10E1A1;
 Tue,  2 Sep 2025 07:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756799649; x=1788335649;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1RF5ed90rK0Nn2Hsk1g1vBafgc9txFna3gWISIXQbqA=;
 b=DLSht1JZ7dj05/3oHy49t7ydH3qiH4WQdexs1UkbEVYTXZjNatiuVf2m
 /9ouc19XUYz+cU1JG0FRSMd2QIi0UrNtl5tWCTiKvYT6mikR61SV5Z1a/
 KTOnZVA6j/afG9jKk8FKgudQH8ADuJkncy9NjvjERUn1ozzJDa/NiJMdI
 9T8aGP7GdPD6g1f8qq60y1jz92sFag3+j45jedH3usjmpfRVocek+BhtY
 6Pi014bNgREWNg8GqR/olQ/5aRen/hFQpxcivAb1RFSNscOtJTC23Dw2r
 qOt+aWSEcbKHqZti1Fu48U0UwrQDlgi0rQVFNeBIgWH9+An7Q4/seSYax A==;
X-CSE-ConnectionGUID: hCcPMirQT1SeHZKd8vYBHA==
X-CSE-MsgGUID: d0DwCGGZTHqOFKb80e/rWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="81642819"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="81642819"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 00:54:05 -0700
X-CSE-ConnectionGUID: qbpPDiRCQtqYfOe0uBWfxw==
X-CSE-MsgGUID: 3P7a3+H4TOiYvfJwQfcWTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176527073"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 00:54:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 00:54:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 00:54:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.83)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 00:54:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DbzJCB8ihPxv9Qp95yEI1CcrUrH/ihDEbHl8FmJPzx1djG8xcykETdmnQGozg1vX/Iij0VdpboWyjhhI0VJMcy3BM4gh92npsm+DK6JchJK9KzIHuaT5xx5s/bOqcUpG/+Qj/TSJhuJ+FQScBjlTc1xh40SsDUkUMh9ILkCpOQR0EgsoUudUOWDZOSEust5TpCDPkESYa4tXJipH5Trftues/qC2u9jHxpXp26pEWlsod8FZLSyiQOnD1CuWpF+dAowrsZPdohVT7tkE8Qe7NrvmB6t/4r6OndD2ZaEGGuI6fSi39DPCfmweLwU32HO/g9xhUFwaVtDSjIvHwltsFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u/QxTtvGDxz4ESWlgsdfRZM3N0u7mKQfxLU4L+ACPJI=;
 b=iDSNJ/sJlrGft3UKP2GCFEziuBgtje3qI3K2aj1q6VudSatvPS2A9V8WXf3zf6J/BA2km+J3+kTIxvs5h7U9vHkFFzc7qPeX3CdYV4m7BMhwDLJmf5XTO8QRd4vg8W6w9/RQiujAKS3xklYbhnTRGABuZ95Oz+J2DvudW6m4YXRcMTQshxY36AvKu2pJhNPC98k0msgEqKoxdyQpquzgfm6JbKbBN0ZrDdIvHgDpQNcIayRDowOq/b5/A9mBsbjfugaWjx/QyQ5tOwOHTyzkyYhiQHQ0Ah8muf40aL04Pebphl4D30QsrleN84S3fmXXuicuCPGyGszH/flDGbTzRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PPFD2F4A0090.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f50) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.22; Tue, 2 Sep
 2025 07:54:00 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%6]) with mapi id 15.20.9052.017; Tue, 2 Sep 2025
 07:54:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH] drm/i915/display: Fix possible overflow on tc power
 domain selection
Thread-Topic: [PATCH] drm/i915/display: Fix possible overflow on tc power
 domain selection
Thread-Index: AQHcGM6ZdvjrrAffu0qiTE9lPvJepbR/i3Dw
Date: Tue, 2 Sep 2025 07:53:59 +0000
Message-ID: <DM3PPF208195D8DFBD7C3EABA9B738D1E29E306A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250829101226.4085757-1-mika.kahola@intel.com>
In-Reply-To: <20250829101226.4085757-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PPFD2F4A0090:EE_
x-ms-office365-filtering-correlation-id: e217193b-8a30-4c76-1d91-08dde9f5e082
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?9v8LJz8iNMEvaClDTRC4gNcusZoIGOennZx8960/6/X5YRv20iuRD+sHoStS?=
 =?us-ascii?Q?aFlJisek0xUR8BxiD12hZmATDhn66qtkIYckxAExacZRC40s5Fokt1EWaDHL?=
 =?us-ascii?Q?X9SJzxR6rzfhR9uZNw3PcfuZeAcS5t/yexTvvGet+rJ4mtiJNT+H2RvXt0fd?=
 =?us-ascii?Q?KY9JuPXBNHFsGxgyW1jok13UtPII8OnNDo8MtUzvSBD9ueb1PAIFfmupvlAC?=
 =?us-ascii?Q?X0aaV+A+/nFIEs8YtpSNJZL3nCcNP+Np985D9vTFbYXGKTYNNA8wlG9zsV9T?=
 =?us-ascii?Q?pAFkGxywTgZTQ7QBde5mz5shu89X+cMelwiUme5RvPjxco+NSvNqoHTj2EzT?=
 =?us-ascii?Q?Z2y4VwU/GCV4V5l9Qw0GDnzf9OklLNSnlGgN61k4ZSaOfvnSDwA3lavxUh+e?=
 =?us-ascii?Q?6BlX3SjTL5ZrOOXxL9TryZ9gHdhEGMspDomulz8sRTNUDmeN/AdGgQHFxdiz?=
 =?us-ascii?Q?5znW5vW5cKWDIZO5s4l+41APZfETzDprJudDj21fbpMH3GraAU8sDR2Byoky?=
 =?us-ascii?Q?mLgSo7EB2y19xpUUXAC372R4RZyqVz2zF6ZnupKv1yx6mw5qYwJAgtYygReW?=
 =?us-ascii?Q?niwkyFlPJsKZyrhVJfdvQMMqmHgL5IwD0RBZZXDNBuTvNKQl+3xG1dooL9T2?=
 =?us-ascii?Q?1B2WPc/TMhEiHUnERDWw30u0ML7DbnsIgyYplDjO1yGa0xgacsQqT/6ib2IH?=
 =?us-ascii?Q?K5Uck/WzBf+QdODgV+Mas7qv+c7+21Pm38fvy9EH+v+m4PzF75GedM6TTmBK?=
 =?us-ascii?Q?cqwRdJ1MzJUOhE7Kc7shKWvDOhjkXtk0muRm9KA+IqEiX3ViKh8L/pmobMJv?=
 =?us-ascii?Q?a5ZoYbT28pQY8lBmUoanSLN8j5GtF+44KLbacdFgcMDC4GSozGvI8YCfsSmG?=
 =?us-ascii?Q?XC90T9hsCS+UYG50hBOhfjCt/ZZ/B4b+bMCxDK+YjkTGIjGpmIfPVsBU1eo/?=
 =?us-ascii?Q?sHeu7j70ghvwK3VTRQ2RVUjwg4QKSwFM8pheUj/9V/KPzmyPTcn5kluzNjV0?=
 =?us-ascii?Q?PnPDrfZtZyjv+3+abGCJ9qd6+v0KR7LosPCSbM2bYEvidOGzi9BWCTU50dk0?=
 =?us-ascii?Q?nRxtAugoMiqy5Bu483UdOGMnPtgFmHtLbOw/0XPvaU1jhFVU37xyys+nCp8Y?=
 =?us-ascii?Q?0JKQNeh0wY8MOox5mZX3cpQm8QLvSO+A4H3bQgYtGctey/jK9NRrFePqptMI?=
 =?us-ascii?Q?Lh36KcBkIoObhvPdQcdANiz9sFAFHQcgQOoUE0hjrt3gYrG1l4/KWHmYSqbJ?=
 =?us-ascii?Q?cXz1Kp4YXJQB4vD0nH9n5Y8WBW5MwcgqO77K4jqmW7c+Swg1/ap3S8iP9BEN?=
 =?us-ascii?Q?NiyGetXkD8vxYRgGG3NRqDwqESzFoJ0QPCoAgz81yjJzdVMXc1MIfym0X4o/?=
 =?us-ascii?Q?F999OXi78OuAeBJZMuEWdeI0CGAbe8+OkOmdU1ZpcBGEGMxWUqIqPMfM8wEg?=
 =?us-ascii?Q?0NPOp97BBXnOTuETcJ0tR0BCOQzPW/FuDKZBAyUJrPg0I0jSjxHbfOFqOwzN?=
 =?us-ascii?Q?QSSBCmI4JjdZajI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vwOW4G8iIZAzH0//EJ9T0yC3vQTRWdZxLw+YUiyGRG6OKwp6nUmQqy4Or1iT?=
 =?us-ascii?Q?r9FpgcGafMAsOGPNCvUXfdueNnLmbn1/z4xNW5PPT3zzynuLeNhISypT1OqC?=
 =?us-ascii?Q?8R6vfVSoz4+KySpO8BxjZ0OQapQjRGcgEBUEp7uTUA35cXNfNH3PjLciLXy0?=
 =?us-ascii?Q?f1Hz90kAnspUM+6RtpiLHvrG7B4Mc1IPpslRKVL91ntQRoaeaf8+raJKgMQ4?=
 =?us-ascii?Q?508qGDBDqPmkVjGXn2k+Bkgo6U4aGVFEyvUX+YOA6ewxrPUNS6o8bqbgNNUp?=
 =?us-ascii?Q?a5BzlMV5djQXCBVwaZY825CGJlt/sbPS4GQdosQwX+O+l/ObMjuZZ4JoGcD/?=
 =?us-ascii?Q?jB4ahLwFdbFvwKtN6hWjSvzCA7L/R9EzSlsm9GFleCssKxKChQEIbch0o4u4?=
 =?us-ascii?Q?/dO+IZI5/9dw7aPciKUqUk2rEdqZmcvf22wPy3ZJ7VgMjNK17WFglZwjQCEK?=
 =?us-ascii?Q?rE4WqFzQYmrqJA3JnGVw6JEcMS6WNIPOaYwXFq988JPyZqMkwbZNE9dSAUqA?=
 =?us-ascii?Q?1NWJD/HiK7uYvXeTpbZ9wsHxWYqHP3STHjEu8omlUSxik+LLLQDwZG3CT6Pz?=
 =?us-ascii?Q?aNzlbo/ITDvR/yABIUnxg3xEwpx3jOIdL+oj6LjxZfkkkipvYuVQiVKbt6hc?=
 =?us-ascii?Q?wLavkZVe8EI5gxWkKdt8Qq64DcHiTWOghcrhL7Hx5byh+Hix9UyJkLVpJoc1?=
 =?us-ascii?Q?27jQs3/7MVC/ykWE+9w8+dU1d1de/Nt8gHxVMwTMrTWT6yMmh8mnqVnuLSrX?=
 =?us-ascii?Q?3rchIOwvo2ErnWu028JlqlYOdaN6LziiP1gHtzM5tRmnA2yXgEDQRRntamKe?=
 =?us-ascii?Q?3sfwDCwPz6qqVHM9li4hEygRwGaw7ZjZW96ul+grOMbOc1QCchaELTImTOrN?=
 =?us-ascii?Q?dEuV6l5Ib0mzUnBLQW/aBNVzLxBfNaKiMj9u1vzmcf8Zv492NZhXWcw7cgjp?=
 =?us-ascii?Q?CwAT7coJr8F2d58ov57Z7AK90+KauRv3kx3qJ5CSun2Z3IMMrg+StthbmoGY?=
 =?us-ascii?Q?NlGdtAF8VbFWgPc48acK0XXvRE5/NAcW0xELZoybWRDma+arXXXlAp0S/7gA?=
 =?us-ascii?Q?ZLV3tBHlGG3nxFGzuWUDDreyUbSET9b+DJwqyoYoN332g9iNrh5x7dCMEHlF?=
 =?us-ascii?Q?1AJMzBXet4h/S5K2uQu5tfZjGyJYI4zROeNpInXxoX1nytHgGHmGuKKp0/zi?=
 =?us-ascii?Q?pSGKYXpaizb1qbIFdz1bp87lWq14rr268+px/1+1g7y7A/QPx8z7M58WOoL7?=
 =?us-ascii?Q?bP6zHGFMr7oNQkjsoN8foV1n5xpdS7OuXD203tTTHa22oi2mBhegVIpdNl04?=
 =?us-ascii?Q?MRunJuts8OzlefylQi7HbnM4LehdPzwuXhab9QwHPUs+X7hJGs3rxQlgdeit?=
 =?us-ascii?Q?aea0thT9pAWySG6tI58t3A7FwEoORAXcUQA6o0eHAtFRqGVikI1jCbyP3Tmw?=
 =?us-ascii?Q?u3VQ1YLQPOzEywPTOvnnxozmcIojLS9QssgInW1w54qApNSs5F6VaOKJe8S7?=
 =?us-ascii?Q?f7U0dImhPJNqWadBxaT/53iO6pzZBCYOYUWZfScOo+wxpoCLqYqiCUFMHydY?=
 =?us-ascii?Q?bkPHC8GsK1KCQx80lYwod7B4NG57knshCUGUBX88?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e217193b-8a30-4c76-1d91-08dde9f5e082
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 07:53:59.8819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0lOhhid69ghccf/gGEfFAbM+s9R5Ns7ze5gH5C9o6FE3NJ+bYyWxrLkvxZ4WCN+aUH6nevzq1MJ45h2a4UozeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFD2F4A0090
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

> Subject: [PATCH] drm/i915/display: Fix possible overflow on tc power doma=
in
> selection

Maybe drm/i915/tc since it's isolated to tc file

>=20
> There is a possibility that intel_encoder_to_tc() functions returns negat=
ive i.e.

Typo should be just *function

Other wise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> TC_PORT_NONE (-1) value which may cause
> tc_port_power_domain() function to overflow. To fix this, let's add addit=
ional
> check that returns invalid power domain i.e. POWER_DOMAIN_INVALID in case
> tc port equals TC_PORT_NONE.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> b/drivers/gpu/drm/i915/display/intel_tc.c
> index 583fed5a386d..23745fc99d35 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -249,6 +249,9 @@ tc_port_power_domain(struct intel_tc_port *tc)  {
>  	enum tc_port tc_port =3D intel_encoder_to_tc(&tc->dig_port->base);
>=20
> +	if (tc_port =3D=3D TC_PORT_NONE)
> +		return POWER_DOMAIN_INVALID;
> +
>  	return POWER_DOMAIN_PORT_DDI_LANES_TC1 + tc_port -
> TC_PORT_1;  }
>=20
> --
> 2.34.1

