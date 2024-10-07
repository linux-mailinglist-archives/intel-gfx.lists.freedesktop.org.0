Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D3F993794
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045B110E418;
	Mon,  7 Oct 2024 19:46:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QjdkNFe6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA4210E417;
 Mon,  7 Oct 2024 19:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728330395; x=1759866395;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ngTTwCGL3TjmUqT7SaV6Wre8g483SclMuMG3ZyIbr5A=;
 b=QjdkNFe6UcXqi+svfJH0o0if1+ZIymLbslMWTDdXc9ajnvlhvtNsRNdX
 7MDob9WosAdOSyeZDFdH64JZb0vXPugub9bQ/FyyYcPBZaUHiH14D8fNh
 tCaWhQm+qF1U7paNRokJiLMKMsD+ru/JRXLbsvP6vU1DiN6LtJp2x/DKc
 DBBeFyGXSZBK26YuXwpELjGqFB3r611MIiOHpM60Nm/GH3eXheZbPDsB7
 B6AUx7Ptw8OKNJUUJNlEjN2LSxkBLp8hZTFG6arlsK1AkZ6zSYFZKfgTl
 Zge0d6tZjdM4PEXAShGiq0a65wN4hM0+H1Ee+Y8jERyN2RTmLCM81NWlL Q==;
X-CSE-ConnectionGUID: SJNCwnEGT7e61XwpTKUuMA==
X-CSE-MsgGUID: fguv3/QNQ9+hZt9KORZUew==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="31386119"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="31386119"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:46:34 -0700
X-CSE-ConnectionGUID: BPubwm2NSNqLOi5ZVIF6gg==
X-CSE-MsgGUID: B4DfY0KOT/WY6Ymw3liIGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80376869"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:46:34 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:46:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:46:33 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:46:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FB7fvRVq979V3zwN62JEI9ajToTEI1wvc4aH10Oix9JMWZcWeAtlB7pRtfFfUOEt3UxxYb/hEtR54Otwv1akF831vT2D4XTWLDK5TXKlXmEpKMBccL76Mq0rNBxwWbFP4jnNZ3U/E9ZBwvrJaFqu7lOKa7QhVFCAp8PmKUzCEvx4xbX2GvOar/wXHmDCIYxDXeqkzOgzxdYfhzUdngafVRzDtbQeICmr5wBgqeuPJc78I8GnhfjcWsy5Z+IHqfqsaes3FLeoiKbvXdBkfbC2OIGJX9eZ/Gf95gSs7SdGBer95SByreq3DnhLfF8jB49MYidccLmnHy6sb4i+brwGeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o3F+GQf70ZmGZ9vWr3iCq8QsZ2H93PyRxdOBEAkQ+Oo=;
 b=oSUpeIhbbVpDB3jbxPrKSamdtihsYPGBcjWg/3MUNy1nSD13fK24+iv6cxi6f2akqNPX1h9EWIrK1VAhsv64CRzf4OQUaLFrLFV8RsQ3G8ASbJAWSy3bgDA+PF9Gfh/7OsHmsY0rr3T/fj7FhIr2U4C3rN+dmLZHbnkazFW1zhHZMqWyT0L2mHxyyYOxiAP8wZcsjzClkycIUQM3tNgK9FFeRUvsI8si2SBiWPthTCuer/fzXcZfa6T9Z7zPWD1VST3tmZPc3+iPMtEz3Q+8BjKzxz3qelbn1Jq3mY9gKQBodBU2xo5IZUOSJNi+AkEu0lgrMsNH4ZfHYyTSdawN3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by SA3PR11MB7464.namprd11.prod.outlook.com (2603:10b6:806:31b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 19:46:28 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:46:28 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 07/31] drm/{i915, xe}/display: Move DP MST calls to
 display_driver
Thread-Topic: [PATCH 07/31] drm/{i915, xe}/display: Move DP MST calls to
 display_driver
Thread-Index: AQHbDsJm4RrZPWxU6kuud4xvX3XemLJ7xTNw
Date: Mon, 7 Oct 2024 19:46:28 +0000
Message-ID: <BL1PR11MB5445C804118A773E4833EFC2E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-8-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-8-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|SA3PR11MB7464:EE_
x-ms-office365-filtering-correlation-id: 8ffc673c-fcf0-4abd-3dfe-08dce708bc48
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?129iqT9QZBSHDzZjY3FoXu0/YvSqJ2XquxyxtZipqZ56ht5y+4xsoDwRhAZq?=
 =?us-ascii?Q?uR63VsnHUFBiZ64Qab9tlLmYxdE8p4PUqExeiWSuuGy1vdQhsp789jaxxnzk?=
 =?us-ascii?Q?B26Tfbd9VdbXpaHBCob3FaIMcg3wdwFGejD8h99EbiV74sxk+IPujTa10NEj?=
 =?us-ascii?Q?FZnBEaszZRFmyBbppzhs6i2rzdHZSDyzTrO+yyf6y36mGEZ6t7k2EdlzeqO+?=
 =?us-ascii?Q?XZ/ZtdOstOHg6e8uV15UrnEbdeh7CkoGPlkOTqGGwKkxpAbVLIjtEPSC0l3/?=
 =?us-ascii?Q?6tzAfP5eScaB2v6uF33DF6rdDgwi1I3TLB8fsHcZJDSeOqbvd1m5t7NziURe?=
 =?us-ascii?Q?hUH35NadXg1JfuIKepngkQhaTFzE/hhSy+6h3QAtmkp6EYR3he18HCe7+KHS?=
 =?us-ascii?Q?EpuIqgnKKWNnVpt0ZQdm+XbqD7xiiWLH76XmTTfeF7zXHDQ90uBuUtNpRIIM?=
 =?us-ascii?Q?ou+3ZXnquyvNa0DCGGBE37eriIkvK/TpObwEGmCeNH0beCAAM2R1JQbV/NhH?=
 =?us-ascii?Q?EMi4OHsrRs338ZdhiEGv/ICtBQqOa3MGiLjiMXpAvE0s4hQHEySvrw9T7GEh?=
 =?us-ascii?Q?e58/MD0lsfTzEff59Exa0OU9E6sFcFGbBggK79GGOscskPzf2rMZQi8dLLH+?=
 =?us-ascii?Q?9jmymL0OvNRJJW40SFjWX5VaiW49bCNqTHU4XuVOrncrJU59j1Z8KSxhx941?=
 =?us-ascii?Q?RC0vdJWNYwPvSN1oZSzOS/VKsDYdUBRVkO+UoG+HdIy9o7/QE9VjqDIVRb6A?=
 =?us-ascii?Q?t/W1CjbSmKbXdIv+EC9DmfJmJmBIgvfqe+RDbu+aZZ4/kzWpml7TGGShLeag?=
 =?us-ascii?Q?/8oCaAAnNDTJNzsZX0KEP0W2QnQa++msDjCFqDNCM4eih8YA0NeBq+7Yau+W?=
 =?us-ascii?Q?fa3YLCkgykQGaP7mL2qZTCbR4ZeBooJ82tfEw/kuWEK3GgOMOIME7uD2cAoU?=
 =?us-ascii?Q?fDOXIRPScFCUJcWwXIAVougL8sPGixwFgPtqYmQ5qXT44ShCZF0kY11bum2i?=
 =?us-ascii?Q?hQKZc6kDk7Py7RTZJy552V9aYH3jT5bZhIiI94HOY2Q93bAxvdXx6YI8WMfA?=
 =?us-ascii?Q?8UNiqn5iCpyb+vNNZacchLRLU4z2eStIlyrc1MTAthPi5HrOVWl9Cp6MsCbS?=
 =?us-ascii?Q?n36HMHNNLGWQI3ZSDoMkS2A/HUpeQePrXzSTwKOIgrhHMem3VnYW3ttDbNSA?=
 =?us-ascii?Q?z6OR+jufPa47SXrycAWUQB4wzBSuW1eYlmorNlh1UdSZQ21jIbcc8Ppd4uZ2?=
 =?us-ascii?Q?WA87Veu2/oHT+3jENefbQIISrwpmN2MUFxqPMy5yPGTT2NjpRIcS9kBodlP4?=
 =?us-ascii?Q?ZSdgrKgFIdW7B5XNMypqV2QgummV+/R1YuPvsre7dLD+CQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E8tT4JWZmVoq+LjsFqiThwFne2I6EtBCHxVz6V76TToy7AO7ht6l4ccg8gE7?=
 =?us-ascii?Q?oHfLAbShNxPc1O/4nmO7s8FqOhhLzTO143MhZKWUMUKTYQpUPtjE8Qyptd9/?=
 =?us-ascii?Q?sNQPUgI6azQGbnWSkqYhJGfbsLiB4IWIVReHYacv/t1KOtX+mKoAgkvOpMp5?=
 =?us-ascii?Q?Cpja3DeSxOWmlrKoNWeGXW12dkVS2zmj08EjFyjyXo6+n7UfJ62JI6bAlBfH?=
 =?us-ascii?Q?v8btGy/u2QVgusj39SD4TbrPVWDuWqZO6kwjUZQtIJe7dmKpDq8hAcWq6cjq?=
 =?us-ascii?Q?RM5sfA1ZjBvVg4PPevo8dwch1rfi56PMeJ75ChmGPkfPKRJXUlyxvFpSRcZm?=
 =?us-ascii?Q?a+qDv0w9uylbg6OqNQozzbCBQThH4Rmz+EIqWTQE3C43mwfjQ9T6Y2tisf17?=
 =?us-ascii?Q?lwEgRUeL75yGYlqcxesxsRsucjeIjyTwMMjlfUYu8bDO6ucxGjZwSFUtncia?=
 =?us-ascii?Q?VkRZ/KyZozqoOaG7VyI4lewqiVeMFxqkR0HpI2W0lAwd0SKBf4HQ4TJEQtZF?=
 =?us-ascii?Q?J4s+OY0GARPrC/ZHtylyupFQUcWLV/LI/EG6jLORX2Nqm717YHbKZAiBsa3n?=
 =?us-ascii?Q?Lsb88//JXpc4YPIowEF2FWkCCYQu0uIvHRSK53Le+kKd0m/reD5JWNkrSGXO?=
 =?us-ascii?Q?b1SPcKBKjM0Pi3r1LU9TXT0tTSRMvQ+AeayKHPklEsmXgTJQEytceG7IEkTh?=
 =?us-ascii?Q?vEf6SlHwT6NXwIlSTBRw+lIbI3c684Cjklv1EjPPTdgj5hW1QprTJztkN3fE?=
 =?us-ascii?Q?eZ6puWIbKwRZNkgTXuNF8qsGZ0y+ZQcPQCfbqXPMz/zYyIR+OCStPXmXxr6q?=
 =?us-ascii?Q?+7V+d3ffEWbfimxqLU5JVxEepUq3eFQDdjhTL0srNxhUEXKf3o4qU8tceGLN?=
 =?us-ascii?Q?UpwY4Z6ie1QBygViSsPAvjUQrANQm1anpXRL93BIOs+r6cmftJFWyuNsbMzV?=
 =?us-ascii?Q?E9HWyPkAsDz3cpSvmMFr2vrpEO5jZONQjXiHWIEAkJiKLv4+zjDLNXADycBd?=
 =?us-ascii?Q?rsGcHIL8Qx59VLLqbDUTSyOIeR2x1/kG6meHKPMosJUHcVoBUpgF8JfQ52yt?=
 =?us-ascii?Q?12R/v557WdWI8IewW9LAQDpcmJJqS9cxAGjYRes8nX0DVgLkDiZ3eNkD/cRk?=
 =?us-ascii?Q?AIvi7vhWQ9MCKJrHnvRv1J1X1tXWweEwotfjsETHbmwyK8GoJ+JozsFxjiDU?=
 =?us-ascii?Q?s9hzCrIZUFId8Qg5AXO3LSoDbiW3g+a+1Z0iRlPCa24NwFu/PJNrczuzKf2g?=
 =?us-ascii?Q?R1WbZ7BNc90+pays27YiOO/p4l1IGcexn/9WFzen7xcHHxJ5c/vNZ5xdjJMB?=
 =?us-ascii?Q?0MW2E5oRkmtfyZrGBMkw/0Sww6lbZPTVxJV4zSWuSu7ex8LPHTigWcgHtRZ5?=
 =?us-ascii?Q?Jtbf+sWwzrMu8ztu94bMppHqMecYuRrUn186D+1dEyNEHYK7HxJYqqSxA20U?=
 =?us-ascii?Q?npZpfzc9O9dcUUBIcjbhOJYmKAfxuAlTOG6ZtEanq1ReWgMj5nL14h6pyt16?=
 =?us-ascii?Q?Za+smuyxLbkBXCXXOye3LLYpwgdPgQb0mJB8jsEm1NqBTVEQyVgF00p3rQfc?=
 =?us-ascii?Q?XAXxFQUzPsfdzImqx9xBa5KPMdCokxyN+G+cekBfbH4twsDnFzUr6aJKPD31?=
 =?us-ascii?Q?zA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ffc673c-fcf0-4abd-3dfe-08dce708bc48
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 19:46:28.4146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W3idUeycWbAhU9tqqc4P+MlacqWCbpZV33y6BQ3nX8iiCSvqErT1yrI3zwoWROs3MMyrnBZZAgIkPvOSUEnd4FJG99xUnrvoDLQl8T43HIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7464
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
Sent: Tuesday, September 24, 2024 1:35 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 07/31] drm/{i915, xe}/display: Move DP MST calls to display=
_driver
>=20
> Move dp_mst suspend/resume functions from the drivers towards
> intel_display_driver to continue with the unification.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

There's probably an argument to be made that this should be two patches,
one for each platform, but I think it's fine.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_driver.c                  | 4 ----
>  drivers/gpu/drm/xe/display/xe_display.c             | 7 -------
>  3 files changed, 6 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index e40b1105168e..51fc1c148283 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -676,6 +676,9 @@ int intel_display_driver_suspend(struct drm_i915_priv=
ate *i915)
>  			ret);
>  	else
>  		i915->display.restore.modeset_state =3D state;
> +
> +	intel_dp_mst_suspend(i915);
> +
>  	return ret;
>  }
> =20
> @@ -729,6 +732,9 @@ void intel_display_driver_resume(struct drm_i915_priv=
ate *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
> =20
> +	/* MST sideband requires HPD interrupts enabled */
> +	intel_dp_mst_resume(i915);
> +
>  	i915->display.restore.modeset_state =3D NULL;
>  	if (state)
>  		state->acquire_ctx =3D &ctx;
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 38c845ad86e5..d166a8164b42 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1013,8 +1013,6 @@ static int i915_drm_suspend(struct drm_device *dev)
> =20
>  	intel_display_driver_suspend(dev_priv);
> =20
> -	intel_dp_mst_suspend(dev_priv);
> -
>  	intel_irq_suspend(dev_priv);
>  	intel_hpd_cancel_work(dev_priv);
> =20
> @@ -1182,8 +1180,6 @@ static int i915_drm_resume(struct drm_device *dev)
> =20
>  	intel_hpd_init(dev_priv);
> =20
> -	/* MST sideband requires HPD interrupts enabled */
> -	intel_dp_mst_resume(dev_priv);
>  	intel_display_driver_resume(dev_priv);
> =20
>  	if (HAS_DISPLAY(dev_priv)) {
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index b5a2a09e7a71..bc5c00437ab3 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -332,9 +332,6 @@ static void __xe_display_pm_suspend(struct xe_device =
*xe, bool runtime)
> =20
>  	xe_display_flush_cleanup_work(xe);
> =20
> -	if (!runtime)
> -		intel_dp_mst_suspend(xe);
> -
>  	intel_hpd_cancel_work(xe);
> =20
>  	if (!runtime && has_display(xe)) {
> @@ -426,10 +423,6 @@ static void __xe_display_pm_resume(struct xe_device =
*xe, bool runtime)
>  	if (!runtime && has_display(xe))
>  		intel_display_driver_resume_access(xe);
> =20
> -	/* MST sideband requires HPD interrupts enabled */
> -	if (!runtime)
> -		intel_dp_mst_resume(xe);
> -
>  	if (!runtime && has_display(xe)) {
>  		intel_display_driver_resume(xe);
>  		drm_kms_helper_poll_enable(&xe->drm);
> --=20
> 2.46.0
>=20
>=20
