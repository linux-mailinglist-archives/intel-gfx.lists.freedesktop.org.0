Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E409C382D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 07:06:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD9E10E421;
	Mon, 11 Nov 2024 06:06:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bOYsg2cT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59D6D10E41F;
 Mon, 11 Nov 2024 06:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731305196; x=1762841196;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nKMMKMEjjafS1PR72qiFef0IdVhxJYQdnZNJB1e/psI=;
 b=bOYsg2cTirp7Lbqkf1CcY6yZMVn5eToOqug08U3SirD3jTFxbK3lIKfC
 AzrjlB8fu9ekbSC104ew0kHRlkTecSQ0KJQm4FsjGZ2OTT5D78DkMnzYQ
 mb+p6CCZMA5bUsZcB8ykFLZjx8Vs5as4hHKW1nkPy6b4VAlK8eqbfoBND
 zIP5QPft/j4s41IYzNTtTmKuSzRfgok+Zfug6OD3MtyzbEDbLDNzOa08m
 I1rMYBxOUexOzTDGYIJZHsizWWN457FGQxRsHptJv4248GWX7HiH6og5W
 wwauJ1SrUVKkrI4tPv4nyDcPD+QMfCJpCjcVkvP+O3LG1oldWRkHJQ7Od w==;
X-CSE-ConnectionGUID: KMXviDRNROOSrQ3RC3jyWw==
X-CSE-MsgGUID: 7ZQJ1OkJSBCAqKolDj+jBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48550623"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48550623"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2024 22:06:35 -0800
X-CSE-ConnectionGUID: Qf7M43e+TpyGDejUaZE2tQ==
X-CSE-MsgGUID: 322A/NphSkq9UYyiyiLdZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="110026341"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Nov 2024 22:06:30 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 10 Nov 2024 22:06:29 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 10 Nov 2024 22:06:29 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 10 Nov 2024 22:06:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d73AWyBmDS3LD2Fv5c/UtD1LdqriD4VAQCuhcpl83Zf3fp6N+3L20S5NQIsP5Lzo2v2G3Fgt1hbem3hkdlu9nnPXX5v/kYKQUkeCm5MoLmdheqU52hly2ccoRXyv98609tRisSJsL7eNQRzfBLVmGmZVor0SxN6yLKDO8rmI8ZLg3BF84QeqK/VieUlhyduV5+2bQZYwwan8VblfNBfcbD//yD/A9IddYL57yCkmcXufkikTSn9MPuR5erxvOeZUPBgjfOw0ZUu0FeWwNpIo9mo6vFls4mZfl93AwYGU3FSWBOCj8KW/9GObPwPn+yrpAcwcPocycnaIwJxylAa0gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zWZm5ihaQm+tunm33N8oBI4IvoduPL/nc2JLILx8kwo=;
 b=zIoNg0yHwcrP1yUO7u46bMeACxQIkJyfLHJ7zbR0rjdIlEsEcQogk7Q9SkbSgsnhOs8fKpWjNzINyAG62dVWi2TP35ANRpK+WHtRrRd+5Jcj7OPuKHLGiy3Un71A+4qu6XX2hd6OeaUcQgz4RO73ZG98JKJLy7oOlWkiQKNgL4M+g/sVdlOlTMJytzxKNPEtArxu+m1Aha4X9PoqJZSPBBVAy7GfAYljsP4HDQ5WeKzhXWA/WIP05ICdr/I79FszOQI+hpXEYDItgCKHtmLs05x0oi9szAC4cf90lDZ3IeZ/eBQ1OPoJqTKgij6IMjrZaC0bw0wdBQgfeM9itCNYbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by PH8PR11MB8260.namprd11.prod.outlook.com (2603:10b6:510:1c3::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Mon, 11 Nov
 2024 06:06:25 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%4]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 06:06:25 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Limit max compressed bpp to 18 when forcing
 DSC
Thread-Topic: [PATCH] drm/i915/dp: Limit max compressed bpp to 18 when forcing
 DSC
Thread-Index: AQHbKqcoE2zq90wRw06l73M60JS3GbKxqlTA
Date: Mon, 11 Nov 2024 06:06:24 +0000
Message-ID: <CH0PR11MB5508D080D703DEA319B4455CC2582@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20241030084100.1361689-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241030084100.1361689-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|PH8PR11MB8260:EE_
x-ms-office365-filtering-correlation-id: c8b10dd5-fde1-4edc-6b22-08dd0216f939
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?0ChLu9J6dFZls9mI7xM68tN8FLsrRO2c4YP06lHP54mNRm1R0854LThTvb9l?=
 =?us-ascii?Q?B3xGNkS7EME5LyxFa+Yk4vGjX61AkC/wWQ62ITtXBdcvQZnVP8cEbtrG9zQI?=
 =?us-ascii?Q?KDhCqRF8GPuTH/zDsTaxeml+o5jUyMbi9tYW63v4vNgP4t9kqaPcXekdOqY3?=
 =?us-ascii?Q?KTcIvbEInSVtYHiITXxoPBBeBdDzMio3K5gLcnQgdlvETd8EVcrydmblxwMc?=
 =?us-ascii?Q?mO6llo6B+3VgzVykotbydb3WcU+z582p8WWkUYMSbdCE1FF3ldQs7RD7E7fj?=
 =?us-ascii?Q?GBC5AHmmkx3qaEJGr4A9AtK7dPDfxAeabB3SZYQd2tAbeD3yDVuKBR4XG4NQ?=
 =?us-ascii?Q?FXhFyCjGU/ckfbtY4BfQ4R3cuewPWl8DUt3+U2JXROyFOHNQyjt1gMCY+A5d?=
 =?us-ascii?Q?CwobsVcntI6GFbw/TQpfFZygvN6R1ZSR/aLB4hjFjSWdZrpsDYhFMbqOo7FA?=
 =?us-ascii?Q?rGI2kEJpln4KuRCyX9dAWMbC4CI1MSiNPVtrP8F2a8mQLUBBCYsDt4E6mS0U?=
 =?us-ascii?Q?q+x0e4T4lSxRXlgxWVle1jro/82z//GWY5MIHtjCR4y/W5p8ACt/r2rRXFNt?=
 =?us-ascii?Q?eIIkvDeg7cQH+V0/Tt5+lviECi4xAUNm3V8w/sBSmzd3VZzcmTRXKB21PCmk?=
 =?us-ascii?Q?t4m++08VCHb0/Ef+d3If27KnPiK7BTp6Aihhjxox7i9jLUdHWrfNyjmqUEpI?=
 =?us-ascii?Q?P2qiGOgtFxfSBRKANV4Orzg32ZgZ/s38c3743fpr+ok9yk+6usmPDK0I6dFG?=
 =?us-ascii?Q?8E9jv+ydD9jmgKBqO0AkI90AqXlfxG8hR/eeLhONxW7DGzuIby1KFKQd8jmn?=
 =?us-ascii?Q?esH6Rd81JtMCRJvLu19M48LciE1Z+zr8zq5jrufjt/BJLlRUg1jXzPmMqOYk?=
 =?us-ascii?Q?RuReL0d8T5CLK0N6gdhszi1OZ9Da2oQjW1UrXn3eQlaMGdTmRm4jf5IUIMNm?=
 =?us-ascii?Q?zY8ndXgmZuC+SeYKldo7jIJfbjbo0LPqFCWwySYgB7FG7JtjxkkAbQztx+0p?=
 =?us-ascii?Q?wZgvjYlrxg/F8L7YmgVhAHP9jDsixF47j5MJoWuSY31Piw6hnvf2m+iUfwSr?=
 =?us-ascii?Q?HUOlp8PNOf3nlbS/x0J/jmmyfifBiA8h9I6UB0F1Lw6Zd/QeCRBhATERf38u?=
 =?us-ascii?Q?/WO1QUelZshhuPSp2I2XYI7ebi96UazAjz/RHBwt4DAx56OGgQo4u9Wd8Vgs?=
 =?us-ascii?Q?nQI0dfejh3g77jsBJ3tz6il6WyZg+8d6CaBWlx4fcJeBgj5RBGaaf957Lrgb?=
 =?us-ascii?Q?EIuO4A3DBT2th7WszY7/oT1R3cQaeTMI/WvSwYCyyn/dVcHvXoSgAnEX2voZ?=
 =?us-ascii?Q?QiAWSn266C9/RABW0JT0P8IB0ef6ATjqL8OyoQ4ihEObbxUJ3nWDpytUtEzG?=
 =?us-ascii?Q?3MXwoQQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8F4rXWt8w9wQ47ph0ynDduljGP6Yead5Fsq9OOzPRpX+6jtv93eJKSBKasUT?=
 =?us-ascii?Q?odWeaapmM8PWBSr/fDnmV/eowZ19+x8jFTJgkBpcb1MgffwiJXyAgRtx6Rgz?=
 =?us-ascii?Q?pyFQ+9zSFqNvke0Jp5xmjlu65e9BcKznyBBvWaAmdzDIMoZzgzieUHFHrhNr?=
 =?us-ascii?Q?+w1eXh/oTG2EO+uCwFqUWarBA1efi3PwrwRva7cYa6Kkqk1vnaCouYUK2ekp?=
 =?us-ascii?Q?t7FeG1FWSVlxsaLLnecySY/gJCqw0ge8aB8v5nWBQ/tVgjz4wsLMZtooDJfB?=
 =?us-ascii?Q?IoREn6UhgiL6OrhE/KEPgPgvw8PWK4NL/WhyyGpmOZuAZgZ8HiSGOa/2zPKq?=
 =?us-ascii?Q?RkzOT1EFxQzJZw+ucU9EuovaXyfgLPe7INfdVWS+vWclPOYlvEs3aGG2aoxq?=
 =?us-ascii?Q?EP8iJcTMylZkrF4bIPutCHcZheHkjNuSjfI2gl6vATNJrLdkjl8wbkZXTbIt?=
 =?us-ascii?Q?VG5YFqwOM9TBEjoH7/17jtBujuqbsc2KsFYjgFXYVjE3jgfXZKaRCH9XXHu+?=
 =?us-ascii?Q?Qo0vQH/XiV0XTZqkHMGB9QJ90SD7nuCZ2raFZ9yV1MR7+u8zQwSNtVTrEd/j?=
 =?us-ascii?Q?pUrUYLEewWqfwiV+QVhk3lRQrGw2fxsKgAqouLITJCvcRBxjoCL0SixELgXR?=
 =?us-ascii?Q?vwKXE3KdAhIT9hqkKJEVkYzQya4ZAhl8rql9CISqsHpXsM97UyTELODKzexT?=
 =?us-ascii?Q?Nfj9TN7YGJuYEQ+Ra7lhm9FmgAN0i1Eo16prsMdg55Z2nNu919F2AqnJ4qPf?=
 =?us-ascii?Q?188L4mSOhqpbQb0sMOh5+T8dsUnJ/nzcCIW+HoCFt9U9CbyZZa0wOTAewjoh?=
 =?us-ascii?Q?V+2ndN83ehDbwt+/QCvSLgzeArfek+QfAmgrvqfxvl886D1i8qw2dczZoGHD?=
 =?us-ascii?Q?eTMO5w10r1+SkGn+szBtDqdV+zMbyH5GFSQoRjrMowd38gNFHKYBrxgztyuU?=
 =?us-ascii?Q?B/7O4GmT6biIlxso5gY6KB+/9HHODU0tw9GCqn6Rbrx49tYhZIvEL42Rrc20?=
 =?us-ascii?Q?MF0jWTjWWMfSzamgRVszy13I19cDbSa13oumNmVB1W7/jl5kSKQFXjbvQyus?=
 =?us-ascii?Q?hB7oeMokWL6+sbup/fgzvuKbjiURXvNpAQBXDSXcuPrd7tgiVuV3G6czTJYk?=
 =?us-ascii?Q?zwzF57da2KDZyFm+SDURQo9BBkKyi3hUcR/cq0sakYxjSKGEUH4Qxo/ov9db?=
 =?us-ascii?Q?nj3Ktt1qurZ7u3NDJmVfgL6Mtxo5uboLRdO/coqDFlDTzOAAdvfqp6zyoqnQ?=
 =?us-ascii?Q?W531vGZwnVoOWN2TVo0lxtRwqb6JjGDyKK5srmhMwmoF8J90rbEZrHPgmZeE?=
 =?us-ascii?Q?zJUgLwYZ1EcSc72HbffBd60VgTskmKvtctPrZ5Qipp+VrgR6567mAlxXA2jg?=
 =?us-ascii?Q?LYWI4nBrWwwl/dUrqxStFDS5YDj/Gmsaj/44TkQZgvx9DovIoNmWWvgrGyli?=
 =?us-ascii?Q?SVC4+fL2Pul+CqJVAgLuNHnpIaXIG64sF0ZeVcl7DT1lwIsh4hVL3KSI3Bee?=
 =?us-ascii?Q?a5T3Mwl64/zSnXuL4j86cL4zDibs7nPqYFF4OGBk6+P2MR3aD3iAz9vhoFhp?=
 =?us-ascii?Q?cNChPefccJSuQXYXx9HIomqiO8eOAG6MW84vaTzSwy9l9jYcrDuixZwD+q6F?=
 =?us-ascii?Q?HA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8b10dd5-fde1-4edc-6b22-08dd0216f939
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 06:06:25.0113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rew6TMMEdVvftfJwg2wLQGmTW89JOfJtcnm7xFTp+Mr0q15bI07CexFqTvRfzRzpXXaEkIr9RlUhQ+ZVMmGIbhsc/EHD4wrpTK0ivCEEDrjsQsoQcPmJzGrGTvs3kwJH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8260
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

Looks good to me.

> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Anki=
t
> Nautiyal
> Sent: Wednesday, October 30, 2024 2:11 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Subject: [PATCH] drm/i915/dp: Limit max compressed bpp to 18 when
> forcing DSC
>=20
> While forcing DSC when it is not actually required, the max compressed bp=
p
> from the source gets picked for compression for some pipe bpps.
> Apparently, when DSC is not required, forcing DSC to the maximum
> compressed bpp seems to cause underruns.
>=20
> To avoid this, limit the max compressed bpp to 18 while forcing DSC. This
> value works across platforms with different pipe bpps and prevents
> underruns.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 28fa5e2d0c33..0ce29cefaa13 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2021,6 +2021,15 @@ static int dsc_src_max_compressed_bpp(struct
> intel_dp *intel_dp)  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>=20
> +	/*
> +	 * Forcing DSC and using the platform's max compressed bpp is seen
> to cause
> +	 * underruns. Since DSC isn't needed in these cases, limit the
> +	 * max compressed bpp to 18, which is a safe value across platforms
> with different
> +	 * pipe bpps.
> +	 */
> +	if (intel_dp->force_dsc_en)
> +		return 18;
> +
>  	/*
>  	 * Max Compressed bpp for Gen 13+ is 27bpp.
>  	 * For earlier platform is 23bpp. (Bspec:49259).
> --
> 2.45.2

