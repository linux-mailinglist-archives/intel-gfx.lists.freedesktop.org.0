Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D2B8D18F2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 12:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596DC10E883;
	Tue, 28 May 2024 10:53:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QNPqsJaF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F324610F169
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 10:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716893596; x=1748429596;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Cxlp1MSqy/oQFsxvnebCnvHgpzUAnMrzUQjSyA+hoHw=;
 b=QNPqsJaFqngeyC3vMVBnJOE8Nhzq23QgWbpqchKJddfZPlhJySsVaiTU
 /emYHfqNT1GljlMR87JykvbkCFlBMmExOFTg/z+KzXeFH2hL8J5QELjJD
 cUCo+clIRAOj8LeMAVXBduHu64AnL7W5EVt/rK6IJwt1b33YR49HBfTfp
 WvalWZsLR89553a3YUkM+QXZj/vhSIVmWUSD3taAkLSZJV1PEjfhIVAX4
 IEomtC02JkhVEwJwfN3CWmy5Qi4OLO2fYQho9qgtHCITmoKdWBF+qDJUM
 K885WZWJX4h+YxqobHAQlBRVhwGA96eDKE9Wr0jcMtiGiKlQ5ERkxVbIF g==;
X-CSE-ConnectionGUID: i4+gpAAxSYOJDVLLb4hw2A==
X-CSE-MsgGUID: Lm22rtMbRi27lovaqIRPvw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35744419"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35744419"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 03:53:16 -0700
X-CSE-ConnectionGUID: b1fUnumNS9OJqNy7D6fGaQ==
X-CSE-MsgGUID: 8OW3ig53RuO8mf/aD7fTmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39850414"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 03:53:15 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 03:53:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 03:53:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 03:53:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I8bn20A5b8XP6bZSqoD8pTz0GbZAfOETxOSWzh6Mewx3w1FJbC/oGjjCUi86SM9V9IyVN/BEEWkQCHW1QkZIz1kFmRDIjLExSUJd4mZsKNMyj+iY1MBDa0uC2DR4BttCt8pE6XsiDMbt/6I9h6rQv5erPSftPKO6M1yxSE3/w2kSQbks+7WKCDfX6KOITunYmYtcB0bujoWFRObXVeYREXQL4OoH+xhZzD6QrsAYiqm9b47QJRuJ1huD+9CrRdb+CQexYfCRy6SUP5G8hWH4W88yqVlAAXs+mfKHUsG8sBD6A6FlMWNVhWcxDB3CfT43jAvTvEOFbcS//cgx4Vu2JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xo/9IbQaxiQx1KZd2FaOVA5GPdbpgwLFScugsuuEEzo=;
 b=liIwav3XqF2Pj2CnGbQx/6dRO5aavLbe6QcNS0UO/etqv2Ujcr/sbG+Ti1LcSD3h9HNFNpUlt09VPvNZQ8hgJ4+Jgz2BBs0G8qw+2Sgxc6Sby5RVhCj3T1HJuZDzLN02IAne+8F3nRjAirbQMZZgnp9AX9wAul/Al+Zt93UBkWFMDpnJJW2r8ZpRI8OmZJ9phJkptFIcvSb5eJea2EvpvytKER+QZ4VEB87bS/PzmY+/A97Owr1Z3TaAVrDpaMYYZFiThoVrQtSN14IRZnmYRUiG72VtlUvp04H8kHx6l8EpaUQ+4773b/F/BUKBq+cKHUlrpSerWYYV5qE2xfa0lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by IA0PR11MB7955.namprd11.prod.outlook.com (2603:10b6:208:3dd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Tue, 28 May
 2024 10:53:12 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%5]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 10:53:12 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v1 1/1] drm/i915/display: WA for Re-initialize
 dispcnlunitt1 xosc clock
Thread-Topic: [PATCH v1 1/1] drm/i915/display: WA for Re-initialize
 dispcnlunitt1 xosc clock
Thread-Index: AQHasNhyZRnWEh4YV0Kz1X9OmedZhbGsdOHA
Date: Tue, 28 May 2024 10:53:12 +0000
Message-ID: <IA1PR11MB64677AC74B42B3DD06FA84A1E3F12@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240528081821.2809508-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240528081821.2809508-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240528081821.2809508-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|IA0PR11MB7955:EE_
x-ms-office365-filtering-correlation-id: 003b05b2-1f4c-48b0-162d-08dc7f045e77
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?JNzQqA7IwtI0CpIKMpk0sNT30zBCJQ2St+uReK+J1cIyPfKo3LOS0EBcnflB?=
 =?us-ascii?Q?a385tcjUGRIXS9QOsKJNBtWsfanX7mxYnMii8w6SyXxKCKZhPHxZmCQuWnXC?=
 =?us-ascii?Q?EtGZ6FdUBGKs4lcIYifwdocGDb+elcddYanG7rucJDUAdTk/wiPu5H6CGbED?=
 =?us-ascii?Q?xMVU7KuJUIlBTC6y686fr+sReCy0PaSb18G3Mlj3WL1c0qoYldDZPW58/C+o?=
 =?us-ascii?Q?KNURIREw+g+iRrkzdcsrybz9D+HK+grhOcE2QKmvAQDNdKmHEbzLmZ3gNxop?=
 =?us-ascii?Q?OeMcAeucdQhYUFJIl/8OYXYo/WtGY+QstJn9A/ZEFHLt9PY9DqHe6QO+FNcv?=
 =?us-ascii?Q?qG5XLdNNnHxM7dR2A2jBSHk6HM5vRNxcz44QhRGdUcxbmlcjCtsbBtJkRIGB?=
 =?us-ascii?Q?Eq5QHiO79/Ou9mkhhzlUrIvtbu54mWUp614AHkrEqjICKNkQC0CaX2Q5Gi7J?=
 =?us-ascii?Q?HsTAYuFN0RcU5EaFDlqp1ezj6Zz8F/rjTxEUNCuuJeQSkCRWAaHUXSmgx07M?=
 =?us-ascii?Q?CCxjcyEYMBqZxNzQBLFlAcp1hmWw3UvFDovmrkJy5hptvKIgz3+LvgpyIoVs?=
 =?us-ascii?Q?NuEGoySKk7gRdQ6ar3k+8+RaYnqEHqiQuI8etBAIhp65VMMF0RxJ8D5pNcrH?=
 =?us-ascii?Q?xZE5k3IfYqg/fBkhR02geqK0b5Wfq7WbzyDIO4g44zZiMySWFSxFmxEmd9VY?=
 =?us-ascii?Q?/nvbcCDZRvCdUC9E+YwsUv+SZrDtvy4oHDbxxmmyCdjkRw9HyhZTqE6LDYAD?=
 =?us-ascii?Q?DEu/YyNcXeF2uWetf9FAtJUvV7Qw9+U9+9OPnJF61xou2Sezp0slcsV6MIOv?=
 =?us-ascii?Q?+GthSmTQBchZgkAhR3UZUK1lHSZOQKVDOap0EHonYFyDRbObnaQsnjl9sE8Q?=
 =?us-ascii?Q?YdIwrDtSObHXx/EtAlCA1t/5JIqfQdrSc1uLcflO9HG1YUsnwVl5ua+Uu1Ax?=
 =?us-ascii?Q?ErPuxoxjD0rHZbVHKLyR2/7X7yvyyf0v3vBuIp3jri0PAFfYz14Jl1xM/3DY?=
 =?us-ascii?Q?sVslTr+wQCvQyVGarhD3fmMfHCRyQWalFaUrgMXiYhe1UvwM1KWq7D0x2hJE?=
 =?us-ascii?Q?fCvIq8fUn31A1Mc3fMhvb5/AL8j2S/MrQJJmjBjonwCjy5cNcEqa0kxcijSb?=
 =?us-ascii?Q?lNGuwAfE2YhWTcVDzg431xNv3R01TKm/rSfGBLkQVOWtmLllttJlKX975dMW?=
 =?us-ascii?Q?JVdgMMzzOOqRmdcIqkDYH0r+WFIDzWcafaQ/dnMiIk712JZTjPVdu5torCpI?=
 =?us-ascii?Q?2h9lHQ3pJ/C//Z2HeudcezuH7rR5xK04vMC34eFhSdzEKdV6vkm/vdh6zyjW?=
 =?us-ascii?Q?u8Yxekom9fGKI5WXYMwJTsfwABgwgIcQNkoGkwTGlIl4eA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1f8WU13j5S/kX2ceq+sCCwT1AKkFoEcKienI3dgXDY3PEuRGHF4AiEmKc226?=
 =?us-ascii?Q?/Mz7C7VxKHOQmeTXjz09qjtAy5Vo1BRUkPODJWjvB5NLmgErI9HBMpR89T+C?=
 =?us-ascii?Q?2q3ypGX2+r3EGPpJgUWqXqS2tzsOGbux167g88/NTGMFbqqN7tl9IRMcRNPk?=
 =?us-ascii?Q?T5JnV/Y9m9jlUFMDk+pztnJt+S2j7seQFC4cfshxgzOEgXh7vc/YOt+xcdBV?=
 =?us-ascii?Q?UE6WMEsE5ACNKbjcETweulBl0KrD5v0RhGlJZgsqHWoPvnwyAWFMhgZ+ciuK?=
 =?us-ascii?Q?QXirdvPA65woJij+V7atyNbF+a0zC1V9YDipMP/C0CNwt72NNuFGoDKAZcNd?=
 =?us-ascii?Q?jewxgI8r71nUgJnG6KhPv5OGht4ZFsP5dDYdmKikhtswgCtp1dX+0Q7g7C13?=
 =?us-ascii?Q?4WSIpjwjUZh0YnfF5cb9H6zaZZwTYRsvq2TQgHoWh6crr606fhQOsoJ0Hjbz?=
 =?us-ascii?Q?eja/l9Q+s5bOF2nXbK/HMZyvsdMVC5K4kBL9O7ysapLT3tjVbWbbeWLNXlkx?=
 =?us-ascii?Q?KXeVdJGZgvNDAuBFmt6nQRhxE1nAVKB955ZEAZkdAJZUGAtKmLm3bxjyYvz+?=
 =?us-ascii?Q?k8VDk7oBRKcCDadve7YOuPfz6iCNKSiMnUfowJYCdYoQPs9hyswPAVXLObMM?=
 =?us-ascii?Q?xus4+6ayPFJxAjsoRJXRO1/GLYORZHl36jhxSTZRJ7rjGGgR7lmWgufo5Mrj?=
 =?us-ascii?Q?xCiOmARpuMCkry4ljU7d0p95UbZUyW47BJu/WXeK8frWbKzPZJyTQtd+Gc9v?=
 =?us-ascii?Q?VPSuFN+LU2tQrE0uBUNuQZsFZSyKtMI4qFX9rnEfb6ltEXNTlMJesXSfDIvP?=
 =?us-ascii?Q?MNS+bkYVU/GdZwegu/2ZuUjqhxKSw5j3ibiZ7eJS1+MB12TaIhyoxoUIbpcA?=
 =?us-ascii?Q?Bj7hi+vU2wDC0GXf+AkOBtGO0PyXEjFADSEnCxozWUO+Je6IBNq7/kyAWlOZ?=
 =?us-ascii?Q?bj9X6QYSAcJ6tNaebj/Yudq8OB77Sc6eiKd6w8gas7PLZeW4W1NOF1LmOl9B?=
 =?us-ascii?Q?vsY26oHPhPeCFz7nCczcDJXueTfTXHAWersUPi1enQWEu0sJOecdLc4Ykrf3?=
 =?us-ascii?Q?pH9d54Ov+DJBlm8vpIdhzXQOsGRdc3r1AyZoXMIxNwrRK+7WHS01Qr/SzMBt?=
 =?us-ascii?Q?14mwsYOgn3JOR3yJHwvag1T0vEr9Dvni1kR0eSbZTaFFvIS6UFj5/uZqAoa4?=
 =?us-ascii?Q?XYaVwU2p7FoAbwPF/1pOeCEjcbz/4RcktcyhwacCH4jKi3DM4XGXDeZf9X4b?=
 =?us-ascii?Q?kW7sdFtX1cXVlqqLR3w9agblNqYr6VC3qy50zwo3YQkXPUmwSKjy4V+HKDWN?=
 =?us-ascii?Q?PajaLGt3Sbd0L7rnlp6kYGZHWoo5gF21td4aH76l3YgY2CzyXNXEOj041ef+?=
 =?us-ascii?Q?2RBnEhMdFZgQA3YyB7gcMwlXwCVgy49sD5F1plRSe2slfHzWhbl6VKZHJzJT?=
 =?us-ascii?Q?lIIcndn1Q/ZgRP+E/pLYzI8Fwsh/sR21aDjSZUH2JoFHKV61DyIvBaMsC4RU?=
 =?us-ascii?Q?7QGURCU5Zvvg/XlGVmDIm64LFkC5xb2O+pUjvBH8OlGj4gfuw9SBSJFQwB/5?=
 =?us-ascii?Q?F3KQ74rERLVO74dKZKpliH5Qf2Esh1lTZLg4Ui8Q?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 003b05b2-1f4c-48b0-162d-08dc7f045e77
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 10:53:12.0636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AhTpmvWwRmaziI+8dPzi3v1hSL/GZWI6DyPtzVWYRm5eHNIAWEUaGwnz8Aq36rz3tdUHxMmyw5kVSB3bsJvRMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7955
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Tuesday, May 28, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH v1 1/1] drm/i915/display: WA for Re-initialize dispcnluni=
tt1 xosc
> clock
>=20
> The dispcnlunit1_cp_xosc_clk should be de-asserted in display off and onl=
y
> asserted in display on. But during observation it found clk remains activ=
e in display
> OFF. As workaround, Display driver shall execute set-reset sequence at th=
e end of
> the Initialize Sequence.
>=20
> Wa_15013987218
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index a860d88a65da..af2960c7e5b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1704,6 +1704,14 @@ static void icl_display_core_init(struct
> drm_i915_private *dev_priv,
>  	/* Wa_14011503030:xelpd */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 13)
>  		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK,
> ~0);
> +
> +	/* Wa_14020225554 */
Hi,

Here also you mention this number Wa_15013987218.

Thanks,=20
Nemesa
> +	if (DISPLAY_VER(dev_priv) =3D=3D 20) {
> +		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			       PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
> +	}
>  }
>=20
>  static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
> --
> 2.25.1

