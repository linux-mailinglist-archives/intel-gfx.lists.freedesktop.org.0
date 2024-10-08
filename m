Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A34ED9951E7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:37:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85DA910E567;
	Tue,  8 Oct 2024 14:37:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOVxD+zq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B284810E567;
 Tue,  8 Oct 2024 14:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728398227; x=1759934227;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nv+Tr1lj3/591UzpZdGgiOScF8fgRnFhrrplMNQSOk0=;
 b=QOVxD+zqxEYaUml/mAAjZi/g+4S6KPQp/bHllh6FdBcG2Ry9PfjVO3Yo
 r7iumuE74VQj8rN0XsxIH6IoitcA8jFpALosG0qPyXgjt94X/E9QOEO5r
 YfVHbD/AsLKKp+vyiK2kHaqmxK2STZ6r1G1EZsXYhcdo0wQNJV0tlf6QC
 te33v/dLctgLo2X47Z5o5ExRnX8RDF/UqPB9UlWR2G7wjtmwVO0HrTxRm
 cBjFuU578s1w0uqd7qrKwS3KUttAjF4wF0nE974fQ4WTCcBpJ1T0H0cza
 CnYRHpuSUMF50wOvx4EYcYHa7n+b+MUlErCwcGDdbFGt9Eu5ydh6Sk9v9 A==;
X-CSE-ConnectionGUID: 8QWNVNtDQJmPUV3uy5J6IA==
X-CSE-MsgGUID: p4fXVdmbTs6JPxT+DDifOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="38167217"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="38167217"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:37:07 -0700
X-CSE-ConnectionGUID: MPGYW4gWQJWq9UBYKPG0EA==
X-CSE-MsgGUID: 9NNkcNiQTJqiYinjQX0zQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="106693361"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:37:07 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:37:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:37:06 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:37:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JnaR+BkprtiThJEt81zWUBKtoJAf22PPM0BESrkd+n3yQDW4sE8DP4fTF2eJeytarYRSVloy/x6Fx6ZitoQejK43bxh3KdtFqgTaiOulMpBp8BiNDtLpTMHb5onpBZuQrt6q2bMZgp/gm3nx4eznTHryZSJf+xYZ6vrYZsfglcFFp1qzNPTujRbS6+NHHEyuxu2XSDQW8R7p49kQOWLARxox4FzcsT9w5AQd/7VpplAZ9SjGQDHi6SbJdg/BImCgzKdzHRfFG9JimQJ2zsqv7SQe3whRzdxE9p2Cx37F3ho0PXvQ79hi/hf9Q+zbcsWSanDWdCAXo1CVEirJ1N1tLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zugyQv/pvwCQNOp0EOyVbG+cj2VpsFkshy6vuPlm55E=;
 b=DRJRFKFm1DXCuFvfqE2iisuJskJymZ+mgrVFTKLCHal1P+zJb9VphPBxRKfGtbVUncK8iOwMjJYUPHuQyDMJmDCeL/kYci4PIbka0nG3CdnVLXVEyWKPu0VyugcFJHtBwooGwyUqourlxy4DOc9sYjG+rQqb/Pg6Mphfb45unufj9fFgOhEmfa40CHvKTzSFe60pycqBZcPn3bjMd868nue9cPhctOwkq0DngtPrtq9FPQDIzV+WRRwgp/mcfXL2lC3kQGTNs4BDwTpdCN1odO2TwOpaQJ/apjx+GjBM+7U7nX5g1jrTeRbD+6EjtCySicmpDMcoeQtvNHXon6vISQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA1PR11MB7088.namprd11.prod.outlook.com (2603:10b6:806:2b7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Tue, 8 Oct
 2024 14:37:02 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:37:02 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 27/31] drm/xe/display: Notify opregion upon runtime
 suspend/resume non-d3cold
Thread-Topic: [PATCH 27/31] drm/xe/display: Notify opregion upon runtime
 suspend/resume non-d3cold
Thread-Index: AQHbDsKXjMJsSGTEUUm9enDNK1wdP7J9AUFg
Date: Tue, 8 Oct 2024 14:37:02 +0000
Message-ID: <CH0PR11MB544464E61C59074246DC869BE57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-28-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-28-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA1PR11MB7088:EE_
x-ms-office365-filtering-correlation-id: a3fd6a3b-0357-45ec-821d-08dce7a6aca8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?/qtgNTElt2mH9uqiQDtPsHABvoz0neQ4qccG/8vHSupWy5hvrvm0S3REW3FY?=
 =?us-ascii?Q?wfhhsQrIaA6HnFs7pNiJlxFgbPOap4FlJ4DH+/hm7/PnkiB6fFwXJPOQBgb6?=
 =?us-ascii?Q?IanjkJ09KE2RS0Axac0qFogJ204plScrLM8oE1FNzs2jPtZBAMMiK0NgmRdr?=
 =?us-ascii?Q?iU1UZ54BmzK7eLwwRbUYlhrS+MvC4aG4AxBXET9yCr9DoJtOf9aeBFj9iflb?=
 =?us-ascii?Q?i7bKMx9zLX/5b8B1WqUtt+JV+dEihXUS11gKM1jCy5lQ+qkLJJOsHvLKlN6h?=
 =?us-ascii?Q?gLSsad4MDquTQ6BaLUAjLc8leQ/3aNWlOMYNj1Vvmkkw7yuKlZySSCJEpYVl?=
 =?us-ascii?Q?qOkjhrLqQm0FHK+592ShTII/HF8jGAUUBccqhhEkZyhmvnxtTLbaMmSIqWD/?=
 =?us-ascii?Q?/+mKXJydkqHdwkdH71C/GoDmJngexNndfBPjg/xPtDMq6RBhJqaNY/AoQsCX?=
 =?us-ascii?Q?8C48gAdeYFtuCSMnpvwCa7UgFkp1iJ9K+KRrcHHs/Xy2+qOpAAFgGVt2o82S?=
 =?us-ascii?Q?Rsb+LPFZaUbbxkBs4Dhl51UUzN9t1iB5KFTIR32pgZBj7JYD8Ry+G0EyLGRf?=
 =?us-ascii?Q?ynZJzxAlmWbDNBI3RZEPnFKIHDU2Xr1TGDs+vP3eihhXr13U0kxPOvz5f1y7?=
 =?us-ascii?Q?pqeiECtTxyPa5JWABdh8cPHv78COiMPdLW6YKwupeVgkqJ0H3t6/RBrThm2y?=
 =?us-ascii?Q?DA1s0X9PiYl2pWQpv9gk01EVJQeuqHCbbLFTn7Qxa5xJcrJczMhmPNBFQ8zu?=
 =?us-ascii?Q?6wBnTOph85zQNydCnQOCrpP6jn2V5hMH0mD8bEDru2/WsQH+Y0TpECyIu/Ud?=
 =?us-ascii?Q?B4k/eFVF104n5O1QOFmgToxzDi8IQA3+rKq5wm5atNMsepbuiG364lM0c28L?=
 =?us-ascii?Q?dk2DM8qBw8ppyMgDgcf2KBlMWjYLyZEOJlhmMfWoMRxs/5iV7nHQKaxB8wF8?=
 =?us-ascii?Q?sq4FJBATxnLs81XrdPXFuTLFnyUWsA93wLYceCLQPtsVsbLczX9WMU2acuhH?=
 =?us-ascii?Q?EGzfJvFlVUF0VZD8jauC5iM40sw0aZgNB75d0ji0voHqK7ZGkVSGppdx7g5W?=
 =?us-ascii?Q?/tvQAkHkXx4wbXdah1sO9uWJUvl4fEp8tKc8bCjRncTBHnOmSJKn4RTINphJ?=
 =?us-ascii?Q?pPtuY5uuBQR/nilisHOxJ7lMobbaSRovJT2dqjgnc8nCzFNqm+1pTuwkkp2z?=
 =?us-ascii?Q?P+MiEUaVCJmr7PdqW5XH8C0yeWLk2FJjpcS2W6K7WNV4T6QROxC4z5nqYIqC?=
 =?us-ascii?Q?VPK+YCISu2WzVoLhqnxyJ9g0lt0Ms+7Q00eCB1EXYIS4OIg+R5Vah9jn2T2g?=
 =?us-ascii?Q?tV5B0zmB89DvjggAqwZ935wMbkWqIOFe93NV4t/2XLt38A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fcOe+MZxxTeBpV06/pulAnUY7biF/jkq7fH/Ca0RCoPX9VBJTWpktnHF01V4?=
 =?us-ascii?Q?vJT3xWphoqEe1YryBlZR6F0LucDBnMOordnjNkHLB81h1egkuhgGojqYxS3j?=
 =?us-ascii?Q?Q+Urd5xSHbf7DRK4rqqfec5EEwnCac4Y1F6qSNdpn//pHSiXaKfcXpdnM5wD?=
 =?us-ascii?Q?4hTHIK/MsNBKN6D561PO7apjyLi0E5VJTCySX+ZH+EsWygr5NwbAqPfpWArK?=
 =?us-ascii?Q?tubVBl8YwvKie1S/5mdQCga6g7dqQEAPE9Cq6QxPQHAJDV6gjPCCS053GkdN?=
 =?us-ascii?Q?cCisO2u7hwYdyCUPtWg8RWWM3PfJG/7FsBFxOcUVNKg61qEDnlRcH3D+FpvI?=
 =?us-ascii?Q?JHq2xjrSbAQBKFENn/3bd5Iy29MVQlO5GX+1U11/LC6aBlb9+vDOD1e9NCf4?=
 =?us-ascii?Q?RI+m3o7KIIeaPTKov09/CwJ/nnYsidSJDY9yGm+6SJ4ASsD/niucSU4tg88w?=
 =?us-ascii?Q?WeJsi2CA45FRY2xwHLYl20RleNGHPDsbSQ4voYV8kJsAcu0ORerOQ6zQcDG3?=
 =?us-ascii?Q?caj/q+VLfGaZXWi9mkmM+8hPvF+8e5ev5zkalQUiaAxMj3BMFvnfMRw9SMjR?=
 =?us-ascii?Q?01iJQz8ACLlXDoTGOxtqQWG9kR6aFKZf7HBXDLlCht2AW6rdTfH5Od9hNsGd?=
 =?us-ascii?Q?xXPLxTfE7LEH8aDmau2wIWIVYeQ0La/cqf/LWrDkETs5v6xtdw7mUTqt6iQi?=
 =?us-ascii?Q?V6t8gR7munIv0Uj6Mu+m2rEbRR+dIyJfj3to+bp21fg78M5IQlDj7z9ta+zg?=
 =?us-ascii?Q?ua7WIrVQhPYy7Xr7OgKqgEJvjf4SBNhtP/JR5XWCRlCddYOWL2XqBr/hUm7r?=
 =?us-ascii?Q?o6sylCqrr2een8C6cjEOaJ9ai2m3hZjwZyIeJcVYGvMVFDgTAiimpsoP5mP8?=
 =?us-ascii?Q?5ghA5jYJDNWKcWHvpWJhCVImSGpGTYMZ5c6vz9Cvj+oMTAxTqw9vFsfIOQAL?=
 =?us-ascii?Q?+RVVROd8zHUP2pVyJefGtc7BfqtsKhR2b0dzvkuj+qDeR1depESpUFNfep4w?=
 =?us-ascii?Q?L95N64vs5iiWRyTunEpkFqRw2CwhmAP6NshETY3ZL/R7QQn5xYAaI3Meowyt?=
 =?us-ascii?Q?9UvbN9aiTNFVewzVcxN6JDhmm4N/d+4JJaspv5km5q5e+kdKTtKZ7G+8SS8b?=
 =?us-ascii?Q?7opUV/1b8bs66UbrVl2icm/3gOs8v+npnYWHrNzIpq5h6KSUYgycCBnyCaUb?=
 =?us-ascii?Q?8Uy2EgAwvlhMx0rF+PaNrTEbhMyI5iUUYphbIVvvjfSPNanUeBeVVDOU+zjp?=
 =?us-ascii?Q?DIt19jLY2Yij3cuMbl0iwGhec8ypMq9VFPCK/yngo6QW+I3eNPQ+nvRJYnzt?=
 =?us-ascii?Q?p2bdG6nmIJ1acwVzYsV1HicqkuG34gXI13mwiwo/oQLuQayKBkLfEPaptHhJ?=
 =?us-ascii?Q?RoI2mZjZTBwZltMmuB+IBpeoRx856m8sR/5z6n0GCQ8G3UNxLen/767+zOYq?=
 =?us-ascii?Q?3mM6ntJeyAl5ZXtHRo+w1TJjQ56kSYaDil9DeFzpmK3wOTFGHzd2lYVJM3jw?=
 =?us-ascii?Q?fazVum/z0vTwGyupHlDsUpfd3DCwCyvSBnJ7fQlUVoM1SuXI9CwV8kfb5Q5i?=
 =?us-ascii?Q?Tf9Bat5xABuyYrw/q+UgaxVa0KRzsokg76ISd92zfpBBvgk28Z9UHkDDruuz?=
 =?us-ascii?Q?cQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3fd6a3b-0357-45ec-821d-08dce7a6aca8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:37:02.6838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1fZb0sVQt5M1Civ2lue3ZWBLYlLIYtcimeP9Y4xQzF44jGC85dvpr0gW/KRy95R/LqdTDrK1MCHnn/p6qQ94xy0yxYSGOMpQdJK+vy4qfqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7088
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 27/31] drm/xe/display: Notify opregion upon runtime suspend=
/resume non-d3cold
>=20
> Opregion needs to be notified about the power transition even when
> not going to d3cold. This aligns with i915 sequence.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 44cace0237dd..780c8d7f392d 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -447,6 +447,8 @@ void xe_display_pm_runtime_suspend_late(struct xe_dev=
ice *xe)
> =20
>  	if (xe->d3cold.allowed)
>  		intel_display_power_suspend_late(xe, false);
> +	else
> +		intel_opregion_notify_adapter(&xe->display, PCI_D1);
> =20
>  	intel_hpd_poll_enable(xe);
>  }
> @@ -458,6 +460,8 @@ void xe_display_pm_runtime_resume_early(struct xe_dev=
ice *xe)
> =20
>  	if (xe->d3cold.allowed)
>  		intel_display_power_resume_early(xe);
> +	else
> +		intel_opregion_notify_adapter(&xe->display, PCI_D0);
>  }
> =20
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
> --=20
> 2.46.0
>=20
>=20
