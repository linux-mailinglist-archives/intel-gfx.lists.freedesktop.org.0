Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9B896D948
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 14:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A08DF10E895;
	Thu,  5 Sep 2024 12:50:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GxVBbCLR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF1B410E895
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 12:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725540630; x=1757076630;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=11WVs+VCM69vXuxpj01Gs7O1DOT2SitIol6kHjzCD+M=;
 b=GxVBbCLReKn3X92p4TWQvsvIBLAdaptO+1izhkojGR9jR0UIa7nxxKdP
 35TRwnD2gVJpA+AF4Fw62OgX2/+eI91Rf4IAII3FvY+3E7XroYlcgSe7Z
 lH+GULoOGnFkl1etCyg+x+q2lo0vvF2LbWw9xmq43ZyCFJef0XMG82coJ
 AFbr+0UPwnMExgHYHaMCZQLlQUBrtK2i3vSiP/PkENGP+lO0ZHoe1Lf+s
 /fnPM7jGFEzDt2ZnYT2Jt0ricReHMhCAzCGgMaA/5zmZMdgJ5nlk1eiNd
 6TAiH8VL7nNRAhIumdp3wv19hTJCKNUEciPUJt1BEZZ33iGOwR+Z5YNzH g==;
X-CSE-ConnectionGUID: Ny2sgkb4Rj++YGz+blGK2Q==
X-CSE-MsgGUID: PYBMogDMThSLiSavFEouCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="28043681"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="28043681"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 05:50:30 -0700
X-CSE-ConnectionGUID: FZw5TGgDTZeeyFqCNYGRdw==
X-CSE-MsgGUID: COJwU1b4STO68jAgxwGk8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="70412873"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 05:50:29 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 05:50:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 05:50:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 05:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dFy1ORDTfB5O2Qbyx8EKO4JkhFrPDqlbdtgeHGWy8oZxKaEFBeY1Ine59XCFucO756XtYjfasencNAT585hfgwqnc+GniakPBEmDtN+dG2Ws19qIH/EKV6MJS3jsCsSnTFYgL8ypZfmrnlrz8cxK27oKVTB4I+89lRtoq/VREPlSHGWLBeHkxJmuD6RmhTAjUW+O+2gqfhiRSZAGI1bLgXLiDmf38AqH5C/Fy+0WWcjdg8jX9R6iSGXdV+IqAGnU0r1E7H9R3JOxL+12a79ozMqj8SAPh/+19oweJ0JHqXxvBXvWYhhVzMUnKZeAXR+n/KfvgOs7plM70oof2l9iGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aZclI2YEkqup+PaVNweB6H/lIDXwQ3yKgbhoWOjU5M0=;
 b=tKVHEPgz0ZYJl1/47dskgy9JOuOslyU4tuz/3gAeyuIDgdbe1hHoJHYN95Cf6ir0nNrUoP4oQz3eW+aYkIPiYN/LUtBjSS6qb+YYpufdcLLm/YAFQ5c/PqmlUQyTeBPdp2GYU/dQQFMn/xDnd8LHGXE0RFzbOc3kjzEUIVj8gKmjmODgaANi4/pF/qMOgJbPPM6JyTmcnXMJIxc8aDQQos4plq8YTirze3EUOjI3T4kMASmEv2nq/MeXruB75fvsrvhCeRaTPoi4kM3PSuQyNRHsGeWO3oBpFs9/HX9N5C3s9yjIjXdb1cc+KkfHyfXse8D4efjj0CAutJfp6pOINg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by PH0PR11MB7544.namprd11.prod.outlook.com (2603:10b6:510:28d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Thu, 5 Sep
 2024 12:50:22 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 12:50:22 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/bios: fix printk format width
Thread-Topic: [PATCH] drm/i915/bios: fix printk format width
Thread-Index: AQHa/4ZapWcrE5os0U2EU9FWr8SuNLJJJNwg
Date: Thu, 5 Sep 2024 12:50:22 +0000
Message-ID: <SJ0PR11MB6789D9701C99A53699E65D438D9D2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240905112519.4186408-1-jani.nikula@intel.com>
In-Reply-To: <20240905112519.4186408-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|PH0PR11MB7544:EE_
x-ms-office365-filtering-correlation-id: 4f22507f-eb56-492f-7761-08dccda94e4d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?8dfuKuiZCqwRHVjvvQus55LQHMfecW60NHY5274VBDhFYd0MDaNt15LIu4A2?=
 =?us-ascii?Q?54Q763+G/B4QC0UjgCNsNQXSXAsZ9c+IwfRQ+qb8RpsubY3e+6a8XC14BXpB?=
 =?us-ascii?Q?bSBF8iNM4XuAWMYIiyn/lkL2aLjCNeN/ycgURqX55PI2gZ7aHvixw85jBUpk?=
 =?us-ascii?Q?knZL+CBcnnrh4G7zJ24Lyp2RiTwEixGa9Gwi5zE2pGI+K++2oWP24Tf+a1YA?=
 =?us-ascii?Q?yUsTZJHMmytSG/KyBnvfP6h92Ivsy/VPYqc9VyIZy5rkf70DBhLxyJgZ4a18?=
 =?us-ascii?Q?/TB4CO3v6iWx66gryePXF7qkLsaAwRUO29XgY3iUfLnTKFawG088yBfRdg23?=
 =?us-ascii?Q?wTRUsb1100WbCF+45WoFJfhyrQqnmhbKiC4Ur+0aTgfUju3O2P2c4hGM0BPM?=
 =?us-ascii?Q?mPms9FjLqZDeQpiNqko4yn1FfAN6RZz3mx81tUDJfgFvhcGi5HtYQcs7cxkf?=
 =?us-ascii?Q?tkTG78KkjBn6eCwXtcHQUXwnhHh9VfY0qsZXm211agYX5igTEBCiqN08P2km?=
 =?us-ascii?Q?xf5/YUm7JLde7lKZjBrf5cyBLHl/6WUopo/RsD0JAzPJV0GvETDp5R72SIRo?=
 =?us-ascii?Q?mZBCK4w3AXqs9v0EU6RDF2qV752ICeRvJ0l4K18eTDCJP5bc+CbL93wA7gGI?=
 =?us-ascii?Q?PiJBkV8zmefHjklSmmNGhiFeGmP6+Yi0tu0GVY9atuK0lhGjWyImOUfO/Ei4?=
 =?us-ascii?Q?bWUUyHVoDiliwzdlchQhURqIET44iSQ3aGoDRex0BGwITUmmJJP3kSba08RP?=
 =?us-ascii?Q?F/4v1bSSuQ90UqOw5RrkjuMgenkF8I0cj8iHhx2fIK1+GzCvJ9yKeQ2jSukF?=
 =?us-ascii?Q?8p76wPn5QNpIEtaMMqNTFE6SknTTLLYI2JOoYhThiqoHLMC3jK7Uy89wXs5B?=
 =?us-ascii?Q?tOZaJElOHkfGfsoaJkg9M00wxspYQkA2KYzCGhTZ4iHDsr+gjxnXSLrU7+Yw?=
 =?us-ascii?Q?aVPK/BdiYtFXUB3nCJdaX64z2Y07o+DOqislFdtfSMafQiaWxAajCfyDt+yI?=
 =?us-ascii?Q?9fLpCz3LPWzihN8kOc1ScTJks3gGYul1cuKCK347JJI7C+2bGblMMVu3xrlh?=
 =?us-ascii?Q?NCFIUajS3xdaLCB+zspPhwUIyLKaLyHxDP4JIeQuquSfUcCDyUn9B/fUrlND?=
 =?us-ascii?Q?7RKRRbayEebv30eJJ1m+642H+MZZGGU87EfM842yjSYfRcfzXZzKKD/a9iaj?=
 =?us-ascii?Q?7fV/AsA+t0JSk59GN/qOCyxSxbzKrJf+elQgMemvjPc34daHkWlIIPDfkubY?=
 =?us-ascii?Q?V0htzh+YpEmgOOr/snfegTTfWQ4HIg79gyYgR3j+GVopqp3y95Mu7ZL0Yepj?=
 =?us-ascii?Q?ZriL0Oi7uUekAXDKSpCktEFtwaBwft/BZvKg7LfrKXJbU4H8cGaBbhhL/mGb?=
 =?us-ascii?Q?k7PUdYoZBgufQXhlOgg1YL2mED79CZ38mgG43+l1+BkbucdvwA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NbGeKlnk2MnPB1UsmJW6kiLWbJM8/sIDsJ3M2tMhW9cD7yuLc3C0W3nDbhbF?=
 =?us-ascii?Q?zuaxV5mo2mOkr7nu3prmpty4zsQyvJFpM/ihq8SMbPYXN0It1wi8/7RHD18o?=
 =?us-ascii?Q?2on6f6icc0KC3LmCqrNDZe5Otaqa43l73MY3a00wz3bWeWTRK/rwQYqZBgk0?=
 =?us-ascii?Q?jY8irOwTRwKMQdMRWydF8W+ka6l7ak8Sjvv02jQhb7LTQ5EKkC1ogFYaaXYa?=
 =?us-ascii?Q?tJo03SZjrydBI7Q/Ye2Z4HEelpDtLdZGzoEK55VuogRWorsLRx31coQEK8hV?=
 =?us-ascii?Q?R+M2RQ4AA6yuE1K/UFqp1E02okWxihd9nporQDBfwS/vH/No4+lI/VT6enqN?=
 =?us-ascii?Q?w8DduPgJcH/Jz4F6vaZ9Pp6AdpxRrMgyP3dygTOeTWw81paWKU3NEvXj509w?=
 =?us-ascii?Q?CtTz0zTQm4p++Ce1TMRwt7Ci3h2B9vocapFRmBuIJtz9vq4NNejqUTv3olSO?=
 =?us-ascii?Q?jVvzs/FePDVYmcHUgqMwnjxEhjmOZadA1EXRNlKsBdbCqc+dRsRSj5cVHKCk?=
 =?us-ascii?Q?FsYksfx9/KrAUK81F4gMaOvof6BW0E51bMz1KLO1565+nljnc+09OjcxxhGT?=
 =?us-ascii?Q?kY7tbrPvvlsszw3/DVFffe1oKsq3ykEqlT1uleqbM5yy53z276xN8MUDMtzX?=
 =?us-ascii?Q?LD7vmKVu5cknoGord7TQQHwU8+eUb+qqialNMJzeJPUssKLC/J2E10rTVg0w?=
 =?us-ascii?Q?GtNfsT2Pq+i20HGfz7lHT9D26nBCDEuMVDMseQhfTqnxfvy0gIPKxt7rVEwQ?=
 =?us-ascii?Q?YxJCsGSJUcuRqeEuf5Y4NZH11rqKY3RVN065TmXY5OqjHc2scw3897L0XMdR?=
 =?us-ascii?Q?5BB4c/eWzF1ZxfSWSA7t7OMBIHpBKXhv/o/CK3dVqZ62zDMGeOtvedief4EW?=
 =?us-ascii?Q?8vDdz/ZKfbFK6hA0vc5nZR+tEJ3Os1BG5QRMcJCN/rnXZT7sAMK/C9N4RcSx?=
 =?us-ascii?Q?qqaqKQq6hjeN5V+LDdQuJ5SlCdl0m3hG1wreglLBSCmdOYlFaBDXguZnvZHN?=
 =?us-ascii?Q?N5nCRymjzhdIAhZgbLH6oIOj3axUUoyGt3oNg53MsXyMM/SFgDy8PYwc/Nc1?=
 =?us-ascii?Q?iu526suxX6LTobZJ2Co+Pa8UBaLDEj+d/qXJGF8EUJI53dM7v1SGA2RtGMXd?=
 =?us-ascii?Q?vmMpropvQs95XcwU8o+i6igxFG2NUIhFjVJU1IDhT5BeAUnKLnuszyW+q2QB?=
 =?us-ascii?Q?8L7oZdQvotLaam9uaOEtH0kFUY9rFj7H/otU2RH51ghVcROwaVbcQAt4yFiK?=
 =?us-ascii?Q?DNXBiGy6CY0aRdalP/2zk4nJHL9ABt3GO9ILDQ3h4ejVnKp4LuccwBV7Udf8?=
 =?us-ascii?Q?l08FnILTCt1rYI1asI2TE88rjgrzxmAS9A2p0q52OertuzU7EQ7vLgI1NJn5?=
 =?us-ascii?Q?BdPkKvGFYVpfsme/sFlbopBKT1a6hMCXpz7pxaidA1gdWPF4r1nN/j3ei/hC?=
 =?us-ascii?Q?dAlZIT7MzVustsUwbIFLlpFVj9vGxzm9SgZV6sutgY4lxCuvt6TCsnksak2J?=
 =?us-ascii?Q?Ky/O+QZPealJGSd8uuX/KrFNr4nu67M3RjCvTCHjZt3aY5Vh98Yc0ekdHZgD?=
 =?us-ascii?Q?QnLuYrp3NJG5uUwOs+kwPtlGj4oXNcfZWcMYVAcruz/R2NlkQNDzOAQpiy9X?=
 =?us-ascii?Q?IQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f22507f-eb56-492f-7761-08dccda94e4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2024 12:50:22.6524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: suBvOA79cI2RNAeMjYMKi4D+hloLeGFdU8oHgUwSsYdFggdbRWWxKvIVO4PMJr42trJ3B70WdyT/Ve6R6X4qRoCWcQwdL95HeddiMw2/1tk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7544
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, September 5, 2024 4:55 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; stable@vger.kernel.org
> Subject: [PATCH] drm/i915/bios: fix printk format width
>=20
> s/0x04%x/0x%04x/ to use 0 prefixed width 4 instead of printing 04 verbati=
m.
>=20
> Fixes: 51f5748179d4 ("drm/i915/bios: create fake child devices on missing
> VBT")
> Cc: <stable@vger.kernel.org> # v5.13+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

LGTM.
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Thanks.
>  drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> b/drivers/gpu/drm/i915/display/intel_bios.c
> index cd32c9cd38a9..daa4b9535123 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2949,7 +2949,7 @@ init_vbt_missing_defaults(struct intel_display
> *display)
>  		list_add_tail(&devdata->node, &display-
> >vbt.display_devices);
>=20
>  		drm_dbg_kms(display->drm,
> -			    "Generating default VBT child device with type
> 0x04%x on port %c\n",
> +			    "Generating default VBT child device with type
> 0x%04x on port
> +%c\n",
>  			    child->device_type, port_name(port));
>  	}
>=20
> --
> 2.39.2

