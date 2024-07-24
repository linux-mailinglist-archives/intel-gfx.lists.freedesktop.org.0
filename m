Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB2193AC0F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 06:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F70610E069;
	Wed, 24 Jul 2024 04:55:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YBqNQGNW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77E1E10E069
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 04:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721796911; x=1753332911;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WmuRZJQsf9YPVBhnz9O/9M12r4fJdnpweBGv3HmwbHc=;
 b=YBqNQGNWnuF4z4p4iXBJzw8SeeoZCdhiNE+ddkkI4Gb9C9RhQlz99hQ9
 Zyrw9+2oA1l/mpEoRgHUepgmxD0ZKiAhu8d27bI2Q4x4Wmos0CAvEN3AD
 i7YSK2R+3pADRpx1dPdsiDAIPbP2hj6xneKfarcLxxWFXDXBIXC6RoiBu
 B0YMDyeOsdVXnKCNGGNfb/p1HoQ5dkfO9jK8Yz0ejJpAgmYq11kTkxbw0
 3nlx9tGe1zUVivoBooek/9D3dn2x5UkE63r4CMJuFglPIdT6hcS6phviA
 3JmCvbRsYNdlUQxkTrVI+nNq7Am5M5m/Wtbi81/+mt1H6afxUDj4P995R Q==;
X-CSE-ConnectionGUID: wRG/NzOWQdqu1jogn+PQ1g==
X-CSE-MsgGUID: zq8MCq5vQNOESKvF2azkGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="30041346"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="30041346"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 21:55:11 -0700
X-CSE-ConnectionGUID: n82bVy39T5yopPVcU1KjTg==
X-CSE-MsgGUID: 7n7LB/LIQtaX29ZK8y2HZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="52485059"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 21:55:11 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 21:55:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 21:55:10 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 21:55:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Og/8DTfwq73jHW8QEc61uT8zDmKZVi7xlODcPERIQ2Vzp9gkLIJTxARPHsbTVy3S6Hh34Nm6DzuCG4JpO9LYxtUAJ2pyPxsKbcVr3t0JBxsW/mlfSYLeS9P/b4oDHPVpOPcR+8y0A4M/k2Dfz8QaxaVwjiEdQLAwLbC6k6O6IBgsIubESOp2SYtD5+cQBCYgkgtf0thfq0vMzQz/JviEH73j+SNMyh7QS5mFmwWD5D3CdnuP1NUlyCkv9qPzsbBhD+kzGqOc7rsMj9V0++gmp+hmeYFYUoqPl7EwVuH9rM89xsCxgkAByCyPfXOSzsNXb80kR3kedSj5k1eMnS8vSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WoIZdloCPGzD8gMWz4fiSkNY7QlQCD7n7zC9w4nyy4o=;
 b=YDkXKC4S1v8M2pWBb5lKG1kcyKBqg2iTsx+pyRqwe+lVt7XUG1J9iIxAwaTN6OhGYmT1rV5Cv35GhODePDi9FKqSRgtXzdASVNW1qdzH9HpMO6NJ/euUQXvTB2yftzt/4ox5BNpgRAVa2vd/PnZGulrwssS7Stp+whP9pmcpDbtQNEZTWE6oay3o2r/NIF/Exm6NV6F/oPOv4pRIln1RXhcl1hCsjVqX4e6W1xHHdglT+bRHqgPDopMuPLFpkYqgf2cgMlL3ut3qnSRUfnyrVANtTE93md3PBKVlt1f4SegMqq3fm2oL4chlqxfiVDtjNvv/FFxjFh90b18dIukWwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA0PR11MB7306.namprd11.prod.outlook.com (2603:10b6:208:438::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Wed, 24 Jul
 2024 04:55:03 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7762.027; Wed, 24 Jul 2024
 04:55:03 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the
 link parameters
Thread-Topic: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the
 link parameters
Thread-Index: AQHa3Ff9p9duFzcjrESdNYIUSVL0LrIFUCBQ
Date: Wed, 24 Jul 2024 04:55:03 +0000
Message-ID: <IA0PR11MB730707E45A582AEB695B479ABAAA2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-8-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-8-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA0PR11MB7306:EE_
x-ms-office365-filtering-correlation-id: abaa693a-9fce-4dfa-b8ff-08dcab9cc786
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?YudNILtYzX6V6U9YHRhk0MqqUmHRJTYNFRFQPU0tJUrcgXKXt1nmGry0UJpG?=
 =?us-ascii?Q?ouHXqvg8h4oSPm0uUfwLRU2Iz8dcY/qPu6cEJzTkTWsEMrSZM34m3ZoNdhHL?=
 =?us-ascii?Q?/kI0VfCJGe6n6TaEDhaQZs3Et4eIrxL6yPD0J/l48FbNe16HCglPdTVXV/Sb?=
 =?us-ascii?Q?j1Oq3L4DbEYwqhjsNZYFJ4LhotI69ALO4VJcTctxecbqfYpCfozs6hwZlO+i?=
 =?us-ascii?Q?pAuarzy8OUuW08A+06k/CYeaaZc4GIC3fTH4Om1ny9ngm6bOMfh8wbMMZhcC?=
 =?us-ascii?Q?hGZFLI49d4jvFUcN9yOxaP7iN19CwU9zvD8QCi1sGyoAipjCt/fSRAvzBg4+?=
 =?us-ascii?Q?lxHMY2pn7EG2FK3Ywcny3QL1bPxSJTYlGlELoksfLR+rXBiVWjdRmB8h+4EN?=
 =?us-ascii?Q?8LwguRjXtZQeB9voWHLdSoVvrFGM8EACPTMbOF68kWB8aBNW3q1yqFVANVnr?=
 =?us-ascii?Q?gwkXdslg+jElXivhNmB/bcPWKliEFC8N2Msj2pR3FhXfmDsWtYSAxzXDHyGB?=
 =?us-ascii?Q?Xu8zHHgmvdg6QRyIePL4YpjrqbI4ooB7zl7Lfp5u376qp/afDb6E2tlEJtQY?=
 =?us-ascii?Q?T/9fzzUSh+AjcocKSGlVl7+folITC5UVGJdsB/8o0PHyH20Dkaxqek7jdbB7?=
 =?us-ascii?Q?RJqq7n053AV9ox3YkxoHgWR+htZjNn3C2mnlcBDsRpp5ZNrXFSUamtxlnW6N?=
 =?us-ascii?Q?GkePwQsT+uAKNA3fuAN/rH1suQ2KBLAJUH1q3+AzP77oB8EKXHBrPg/omkoi?=
 =?us-ascii?Q?R2H5UYMXScWkKCKKzl7veeTfCLZOidEvWlN0RxTK6QN0iwkg0tQKDReVt17o?=
 =?us-ascii?Q?V8Icf3gxMg3+j3mc0glFLSx/vXkmgVRkqkCdp055Edmo6ceQeRDbLy2we7BX?=
 =?us-ascii?Q?gfvPO45EKNT8HeAPwAmfID8DepNLHBq61RCp4q1edoNMNdVmFjS01id/wT30?=
 =?us-ascii?Q?nS1rbE4FJT3ArzZfTvKPgu3Xj+TIFOk7GUtBgRpsg5+dB7RXQ5PmJ70YOGG1?=
 =?us-ascii?Q?XT1UxSj4VYOZh27EHhyjNLRSSHWNoMSfu/4Y3LSufGfaqC8tN1wgE7UNh4oR?=
 =?us-ascii?Q?C2RPIt/UKIU7QWWFUBvUCDerK57gBh9VxeBZpjHgu7bkje9iOdYLbOF7jgXa?=
 =?us-ascii?Q?XxuhHJMRDsk/DHdJRsH7YHj2vfo/EofJXkDh2B0q2tFFE2LmrOpJi2yDIjSb?=
 =?us-ascii?Q?EviBHmIcCOC404XLsoiEBjB5btrGY3FwaGwVII9vLgP3+Sz69MEL3uTMTRne?=
 =?us-ascii?Q?cUU8GTvrTUYzeEp5ZYr2MmTmH8On3e4cbX+sNMnDTNndonXcRWqBk75wsDz5?=
 =?us-ascii?Q?tTdduUITu2/C1ctgxpMjA6d49NxvNhqsc19Gp1cLyqGMl4gDxatmxRAh+c3D?=
 =?us-ascii?Q?D4aGbXhcmhbr4Rxm7TYB9Tq+3bfHDCiIX/ki1vShqaWSH22wFA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gqH2o5519+WBW7EXnCnQAAD4m+gqg9vTKCwj2ub1+XDG1MuwpVoDTdBUfmUK?=
 =?us-ascii?Q?o44iIwk4VHB6VjB6BmK3lxhVzJNEqNql3HJVOCI/+LPDttEuadZuHXBES67W?=
 =?us-ascii?Q?GVSM9bTTV73fBsMIjZvqz6xy/wWbhzNwkFtJkvlOUjCEvg75waRcrH4s7BXB?=
 =?us-ascii?Q?b1S79JcOIBFBgb5M44Zm12CgMyy6eCG7o3G+8Wxyj/NQsQLB5WxgwDlwEOlG?=
 =?us-ascii?Q?PR3zRHiddmfSwahDtQ/brmRFbhuh6zYYW4scSXoXu7yb8LtP37CyrRUpGziH?=
 =?us-ascii?Q?ygPA/QgG+1Z2waFyJYYFCurOYwEtgRo7CKEx1cTNC8+bv6rhZrs3F1Ncjsqm?=
 =?us-ascii?Q?1EnCdvemQy+Wlslna9J3Ag1So+6vTL5gJAC6+O7fdK6qHJ9Dc3lGVGaXSq1A?=
 =?us-ascii?Q?i0Ba9QjtLpaTOoG+juq+68jjYOFmlf8WArYsW4LJZCVEfwu23ywRu1bLHr/l?=
 =?us-ascii?Q?mKaoI1IsU1OBojxCKfHh5rxK58aW7hQ3DQpK5fTurgc5q6ifL8WhSGO0HPmO?=
 =?us-ascii?Q?4fQdLwxY6ddNrlXtAwnHVIWRFyESG2QYYxO0nJE5L17N4BvYFdI1jrHsdelU?=
 =?us-ascii?Q?51318AFwmkeqRljEszNepgjtBN1iNVDzeKMoctmk9DfoQiF0OyGhU8KZyaCq?=
 =?us-ascii?Q?M7wFcfJIjgGwaooglhftYoUz7WkdN0E+vAkfVqkuhwZ291voNTGASuom9URj?=
 =?us-ascii?Q?oQM3NsxRtvqdCI70poN+DHAYMSICs+EnKp7sJ2pkX9Bi7CDyK1N5QozdhRyd?=
 =?us-ascii?Q?2cJmjuZfa2tAFALg7YHJGV4G8o+1sgGRES3eilrVJUCm2evhLvtXB/1BKl+/?=
 =?us-ascii?Q?UcfOd4k/V1diPW2WHJ0gqzvbt4lhEmEF1sz5pWnAEHntBeMU93H+ZDIgo0Jh?=
 =?us-ascii?Q?J3wWBBWXENrLvC7Or8CETlTJ0H4bPu522MMwIcyBwQ0SbfOd55e42FOX/X0a?=
 =?us-ascii?Q?o8EsOcrx2M5h6ret/PYtYUzv0GgXxeXzUkSr4GZwOI6SIzjsElwjpGd283l0?=
 =?us-ascii?Q?rIF1wysUiYrztjq2ezVim3KCsA82qSftbgJc4KUd7WpTgjDszPmbZL29Jv0x?=
 =?us-ascii?Q?6lgAr0/6Xy+dTIe33G4JOtfbnJPdCKW+5nGwHjrVWUnhT+NzG79Hc5N3ru6s?=
 =?us-ascii?Q?5NHCkeHVAj3mlmnIqj4J4F5XCsRU9gPqpZf7r+8vEjXvX7TinwigU2Du4DBX?=
 =?us-ascii?Q?efZHhLYY6X5wogRSfvoMcJXuB+PNWKSYZRdeBdwZAapY8iPug74oB/vaY470?=
 =?us-ascii?Q?xYeaKEzvsl7meCxOUKpcqNHV/ol//F5Gz8aWOVf5c9ZCCFs+d7tsP4mVQVVY?=
 =?us-ascii?Q?De3biPFVfbHPXg4bkumMznHgD0fAm10czcipptQjnliIAUC61Xk9XRNVZnZK?=
 =?us-ascii?Q?jfOOTfsYR5WwiamHjhfTK1S9B7hUUj4YbGEA2MQaoryvEYjHGuu1376hVj86?=
 =?us-ascii?Q?XZlvfOHyGb1bdpCNMyUp1soxOYMsG9eEwSQePu0JOyz3CdifLSxD/VPyiDlG?=
 =?us-ascii?Q?JvXmoMXFPYY/t+MSqsbebcNDD0olVMvYRtYi2Kvfx9XvZ8bKcNbJ7rjtO1JY?=
 =?us-ascii?Q?n88kQYOm/Aw6vKo/YKmMwwBq7McYQ2FXrcuyqVau?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abaa693a-9fce-4dfa-b8ff-08dcab9cc786
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 04:55:03.0158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g+mgTSkXZqSwe5wj89bbFuDlifTQVKNelbzrDzTOQCNc54vUuYAr6x9IeVCQwuDmBFn9AZPStadUnEGbI2LnpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7306
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Monday, July 22, 2024 10:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the=
 link
> parameters
>=20
> A follow-up patch will add an alternative way to reduce the link paramete=
rs in
> BW order on MST links, prepare for that here.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 39 +++++++++++++++----
>  1 file changed, 31 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 58dea87a9fa28..57536ae200b77 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1193,6 +1193,36 @@ static int reduce_lane_count(struct intel_dp
> *intel_dp, int current_lane_count)
>  	return current_lane_count >> 1;
>  }
>=20
> +static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel=
_dp,
> +						  const struct intel_crtc_state
> *crtc_state,
> +						  int *new_link_rate, int
> *new_lane_count) {
> +	int link_rate;
> +	int lane_count;
> +
> +	lane_count =3D crtc_state->lane_count;
> +	link_rate =3D reduce_link_rate(intel_dp, crtc_state->port_clock);
> +	if (link_rate < 0) {
> +		lane_count =3D reduce_lane_count(intel_dp, crtc_state-
> >lane_count);
> +		link_rate =3D intel_dp_max_common_rate(intel_dp);
> +	}
> +
On link training failure reducing link rate or lane count is not linear. So=
metime we fall from uhbr to hbr and then again with uhbr with lane reductio=
n. So would it be better to have a table/list for the fallback link rate/la=
ne count.

Thanks and Regards,
Arun R Murthy
--------------------
> +	if (lane_count < 0)
> +		return false;
> +
> +	*new_link_rate =3D link_rate;
> +	*new_lane_count =3D lane_count;
> +
> +	return true;
> +}
> +
> +static bool reduce_link_params(struct intel_dp *intel_dp, const struct
> intel_crtc_state *crtc_state,
> +			       int *new_link_rate, int *new_lane_count) {
> +	return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
> +						     new_link_rate,
> new_lane_count); }
> +
>  static int intel_dp_get_link_train_fallback_values(struct intel_dp *inte=
l_dp,
>  						   const struct intel_crtc_state
> *crtc_state)  { @@ -1206,14 +1236,7 @@ static int
> intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  		return 0;
>  	}
>=20
> -	new_lane_count =3D crtc_state->lane_count;
> -	new_link_rate =3D reduce_link_rate(intel_dp, crtc_state->port_clock);
> -	if (new_link_rate < 0) {
> -		new_lane_count =3D reduce_lane_count(intel_dp, crtc_state-
> >lane_count);
> -		new_link_rate =3D intel_dp_max_common_rate(intel_dp);
> -	}
> -
> -	if (new_lane_count < 0)
> +	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate,
> +&new_lane_count))
>  		return -1;
>=20
>  	if (intel_dp_is_edp(intel_dp) &&
> --
> 2.44.2

