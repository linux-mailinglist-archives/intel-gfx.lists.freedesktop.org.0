Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C919C43B2
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 18:33:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6B710E4EE;
	Mon, 11 Nov 2024 17:33:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AsR+lUOK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C712B10E4EC;
 Mon, 11 Nov 2024 17:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731346427; x=1762882427;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7MAxLuWL3t6g+d9Ndyla5M3lbFwYb0gNkJggJIDZlUE=;
 b=AsR+lUOK2glohQRRFxoLuwI1ZU52tRLbDEpzbsaAZTf0rLT1fIEZOenC
 xG+9ZFRVhcixfuvCWV1PDZSK8u0dgex2n5TU2yB+jOmDv1VdKTyCWDnhZ
 qjIQb/mU751Oh+dHNof7w4D0Eb6ZYeoE8fwb4YGWW5iHId51S2B60mVKb
 wUTN2nydsoNOIi3YtWr/K3cMc+bDQ8x3eWBEPs7p1PgmuPxk3U73xIVzB
 nVVddbobis9AYBemLpQGVffegCfl7yDfJp8cfBEjLFsTcRcP9gNeih7Ce
 PXhqGGRAxg7FhAgNRyTzWszSITjyimDXfaRQO1rj4Oe3k4ImgbeUVMhRI w==;
X-CSE-ConnectionGUID: 2WHQsPTQQVO79NpAF43nvQ==
X-CSE-MsgGUID: /e9EjkHBR9iZwxnB2+fPMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="30552067"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="30552067"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:33:46 -0800
X-CSE-ConnectionGUID: LkcAHRXdRAGyOP7raUWO6g==
X-CSE-MsgGUID: LK2fDMZTQ7aK5h14GHqU0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86942359"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 09:33:47 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 09:33:46 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 09:33:46 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 09:33:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CH/men4ka+5oxeLMPcrEAECAE2BpYAfbMmEq6jMeDRAZZsWCS5mzIC+oM+bTE3i6zOX5cPHvOPMJj+GDP/0cL6AQYgocTTUSlNQCIj74w/lSSZVkZ+u44qIwoiszupL2WugRdQHPe3RgvFuu65lhVjFJNufGz0pNT3s4pFkJ+DTeq9bzoWqPyIxozLIHG3GQ4qn/B0XLHMsqV7P/lMm3i9RE2QDG+1OvTH3EhN/y3Nv3NJ3X8BATtsxmkhNZBx33nCgSAiclrPTIw33rCPoXGDXqVOE/8XU2hLJZbEkmslU0RjjflPHYobJADDTCpUvbXAwloWMXtEug/pygdMNlJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SQB1i7mGMrBQCc0sgrpR8wXPkp/CIqx2PXaptVhlfzs=;
 b=yeYOzb2J6VnggyiUO9qtcfrw/FThVBqVBz/wdJ2Ljo4isxfGyVkKqRR0Yt0EOLirsMXuQjp8CwQNEp+SrEqFxig6QrKxx8DJiPNhLxHSyNQUOXabWVGXHYh1szxTaBtt70We1I+wiTd0jMuj5kRTRJmutV8Gl2Kmu+J0ldrUBTpmFEgh50EhM0qOOu8UhP9l7L+Hq+4lZhSLzqNYmllCMZPN2ek3K36tkaTuZXZlFn/6E+zwUR122WUGsEP2h/+Fw04Je9V0vyB4RvM2WoUVI6yroo91vXpgYysqg3F/8h1/3uQKrBNsMEXixukhBHz0K3Wjhs4L+xncysSMRPaLtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Mon, 11 Nov
 2024 17:33:43 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 17:33:43 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Golani,
 Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH 03/23] drm/i915/vrr: Introduce new field for VRR mode
Thread-Topic: [PATCH 03/23] drm/i915/vrr: Introduce new field for VRR mode
Thread-Index: AQHbNBmFttwLgagoZ0iUWzt5ICLvabKyVpdQ
Date: Mon, 11 Nov 2024 17:33:43 +0000
Message-ID: <IA1PR11MB64674DAC6C3554DC920F3A2BE3582@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <20241111091221.2992818-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241111091221.2992818-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|MW3PR11MB4556:EE_
x-ms-office365-filtering-correlation-id: 1853b1d0-6164-4326-4853-08dd0276fd43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?yHZARVhWmGppkdqRY30YECZ80rPNd9il4JHim4ENQbALsOwtUry7/Sw2ni8X?=
 =?us-ascii?Q?+aAf2iiE99gtQBPB+ZG47OAmBk8kj1LYhbtRLq6dBg07PJAEh4gQmFGed0rC?=
 =?us-ascii?Q?FDLkpHafju1ffCYOXw0F16Vdv6pBjadRG8xBrOBukT6p4MDUd8cxztBDS9kC?=
 =?us-ascii?Q?T6SnIpHdEqnGv0WMlJ31VZy64RV31x0JFY/zs9NZmF/dvT6DAi/mI37UC1Wq?=
 =?us-ascii?Q?F00pO4+Ag4KlsIj3h8jT6NiSnKxX5AizXLYhpry7hHefuIprs36ZnYW6AxQ8?=
 =?us-ascii?Q?rQPQU7W7oiS89C2rol+ZhgqHTPy4tU87MbCKzgYYt6lajcwHs040AYyVHjVu?=
 =?us-ascii?Q?107PDWj8yg7wtNgbfu3VJcVsxXh64KaLIlq21p3xKFA51aJ0lRf9yclbdZCR?=
 =?us-ascii?Q?v+oUB5W8K7NrQZFLrKd0+u49KRAuXAHUvgb14fXFqX9XqS17475bTLYAZMIu?=
 =?us-ascii?Q?rhbbLwJK1HIBkKktYDuKsVvEos+D4Chjpbagc/3RL0xEt9nb6pZUCx6EYpRG?=
 =?us-ascii?Q?A+rC9SlvIHtKxZxuDH78XdmCAueqLfJlkdbCl+umaZQy/rElnhzjC5T/G4OP?=
 =?us-ascii?Q?3n4rnltGS3e0jA4J6wI40GJtPUZCtgvpU7LA96wej7dNH6m/Q4oshf3NlqTY?=
 =?us-ascii?Q?JJvDMS3todRhvrY88z5OTqoZcjBNmGb5qo4rBLLJ0cA5dIQzEIYfPpLqXVCs?=
 =?us-ascii?Q?wc/FGI7j8Zia1uaz7w7f+rDgVyq7k1juDto/ES1LUmgn00Ym3ennJOixCf0P?=
 =?us-ascii?Q?netRlm8yDqjjh78PttpZslHyMpH3Q9TFG4XxkFQlct7d693xVYWqm8lX2eBH?=
 =?us-ascii?Q?g7U68D+abfwU0woSKY9VX5Uj1LRjaIRzC6PkRqXozXkbm3y7vBSRokphIyfe?=
 =?us-ascii?Q?ap8mhj2gVe/VwoiINda9IS1FHQyvjXWO9/lNdGmdhi0PY4bUpT0knxSVDB5k?=
 =?us-ascii?Q?ePPFNnU7BvkkuOxIA7WrTvcJc5aUvULElBIeIFta5DwVgmSSwVjzWFDPDMgx?=
 =?us-ascii?Q?qhFygE2vvZ1xKLW8k+30mqVKCAg0QP8g7GbJ2LWgUgbw/srI97bJ7fRqq3gk?=
 =?us-ascii?Q?IQWRjtORgtS6zz2MRLhLSW924JqYFuciItJTkYNZdoVTwHJQB+aazpem9rpk?=
 =?us-ascii?Q?DN+CiCEQq/krmX+1Wz14TnRKvM/iqdl7nEGkBhAOXk+dNVKb2Pe0vQA8C0pF?=
 =?us-ascii?Q?eSWeFtytKFEBkDLPrupoYgNwb3f9AnV19g8rWeWnv8rybMHq0nUHOx6Bg10I?=
 =?us-ascii?Q?hSsrUtg69LgN9NnGrdurw9TyA5PPIRwea7CmSUk9FK30t9VoanCottU+98GN?=
 =?us-ascii?Q?IFCqTVIAh97lfbSaFpTyT/xzdOAZFg7OdiGPgBcNa+4qvmcAfwVAvTND2/rd?=
 =?us-ascii?Q?Rt9U99k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Es+zjp5QdVyvYLv9Qwk0BpmX+3Plv91d7M5MHc43bptX2cfrfVoz0Ux9DBJk?=
 =?us-ascii?Q?VtEb63fgWUAzaxs3kIGrH4j/mvJyoY1dz+ENfwYTD2K+QRtHUlr6CERqeWWJ?=
 =?us-ascii?Q?e2DWwGxXqUqnXM0jzJ7UTReGW/94cmkW2oPQP2+9mkmmM5k5hZAGzTZFdWAV?=
 =?us-ascii?Q?uuVowCjcJE9T98lCrzWNTaAnFSYZYsISXWT9N37tjxaqKgqt7sPKjdz3vT8T?=
 =?us-ascii?Q?mzt+QujiY1inJL2H0LSeZrcKr/rGK7MdAPGjVjGHUzYa7UNNAZ5A7vN7l4Bw?=
 =?us-ascii?Q?pLsFzsbnAcER8KFMnqSysz0vc1ES4m4fYzltKzg/npGRq6+6N+73B4SsMH0q?=
 =?us-ascii?Q?bKv0hMVuGKLygtVjhKt3GUo2uGiANaBXeOFxMPHsSOMPKjMG2fZAzQA/MzS3?=
 =?us-ascii?Q?rU3UsyRjLZH4i6xCcdpgaZrRS74gVmduPapP4Y8s9PhOYsB2MGevQrjK1h75?=
 =?us-ascii?Q?XTYYFG/b0pRRVSWRtVXmVybSKQdT196Q2hx6l2fJolHlqz76sjNB2GSPSpif?=
 =?us-ascii?Q?GQcYt3U3uioQIDpYlCSMlbjiaYxSba7OHDgSJ8McpQYyi86OY/0+z7rZfiNv?=
 =?us-ascii?Q?kdbJitSIFlQuveUG/sAvGtpVA8Q4/LvpYldsgluIaP/gnoyzMH4wte/ohM/M?=
 =?us-ascii?Q?J6t8TVlKNmcUEFsfgCtrE6Ga+e8j7Dudj9hKlpoVrWXEOm6HFCX+IU2C4KXL?=
 =?us-ascii?Q?qhw9KVYWD4oOOkrpN1CyhCxBCzfSOfz60SMcgEtLdjqIBYxgMh23RroYxZWF?=
 =?us-ascii?Q?ZWgOLJiBbSp1bs3dB97+EEzVv+ve82A7A+U89P/NIWkC2kK98GHVUWZS8FLf?=
 =?us-ascii?Q?QiJFaRzGCTydFs1lX0oWB8pMgFTYIJqfDQtz/Wby3xz0Zmr/yccUKVGZmFP9?=
 =?us-ascii?Q?KfUD2JTYdvUeXCwiNCYFXd+Q3vFRRNTURlTDXIl+WLA+zDbdoyxDVXlPkrHh?=
 =?us-ascii?Q?AOTgtSTy7pDuz70YMLfQWdELEg7tWyhPlaIaPnnTnsgkVpypVihT+ZWW2eDR?=
 =?us-ascii?Q?v+V3eBLSYI8uDizvjPVVfqFfoAKXjZhKKlLl5VWOarg+ckLow9mQ902F1wee?=
 =?us-ascii?Q?8NbcBFYPJxPQTErqi7x9HMkZyEVR3lJhpe1R2TWA1k6kEZhBOhgovnKPwgl0?=
 =?us-ascii?Q?Vk7ZQMKYGxXBwvvVkGYTOap6lYm66VFrvd0iU7xKbS9QyC99oQxPiDwHiAcb?=
 =?us-ascii?Q?B6BZ+wi/UEtda4YtIVeM8/cfcC6KC02iS0ewxg8/On5z7XANMRQ25n1ICJWL?=
 =?us-ascii?Q?vdceMXmxNu5RKqf//FY63Iqo9zt2W37OZfp5UGFXui7i9RXYPxktsYSQ7yDe?=
 =?us-ascii?Q?hzybPWgeufdq8VNWGASanHY+bxjddbR182lnefrgLVTJcNvE1CnyRUcwUj0l?=
 =?us-ascii?Q?O3I8+g4TEbF0n3Gd5OnvtBkTXzByYvlSteaYzPDPiAMmP1xvS9eMBKYiQqbU?=
 =?us-ascii?Q?NJGKaipX7hkIvmRY1WWxmyH6wR6uCgrL4KG90RgFUonAayh4gbxqrkKRvY/O?=
 =?us-ascii?Q?o2pNdwKgLSv/0qQk+WY+IDR+KM9/CTrOwYaJWb9dGs7KvtFcTxGstfHE4Cu2?=
 =?us-ascii?Q?47YnK3FFx/35LZLIvQSMoMfCesWXoVAKcAdZufb5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1853b1d0-6164-4326-4853-08dd0276fd43
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 17:33:43.4666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jdbpbL8l2ZOnTuMWDyXaljycpDWVFbIgXQvPXaU66Z3oQzZzPY0v5pTjsWguHxaq35hnXI+3XGeR33MGhV8SUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Monday, November 11, 2024 2:42 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com;
> ville.syrjala@linux.intel.com; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH 03/23] drm/i915/vrr: Introduce new field for VRR mode
>=20
> VRR timing generator can be used in multiple modes: dynamic vrr, fixed re=
fresh
> rate and content matched refresh rate (cmrr).
> Currently we support dynamic vrr mode and cmrr mode, so add a new member =
to
> track in which mode the VRR timing generator is used.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index d3a1aa7c919f..a1b67e76d91c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -913,6 +913,12 @@ void intel_io_mmio_fw_write(void *ctx, i915_reg_t re=
g,
> u32 val);
>=20
>  typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
>=20
> +enum intel_vrrtg_mode {
> +	INTEL_VRRTG_MODE_NONE,
> +	INTEL_VRRTG_MODE_VRR,
> +	INTEL_VRRTG_MODE_CMRR,
> +};
> +
Here INTEL_VRRTG_MODE_NONE mode means fixed refresh rate mode ?
And if not should we add this as member for future purpose?

Thanks,
Nemesa
>  struct intel_crtc_state {
>  	/*
>  	 * uapi (drm) state. This is the software state shown to userspace.
> @@ -1286,6 +1292,7 @@ struct intel_crtc_state {
>  		u8 pipeline_full;
>  		u16 flipline, vmin, vmax, guardband;
>  		u32 vsync_end, vsync_start;
> +		enum intel_vrrtg_mode mode;
>  	} vrr;
>=20
>  	/* Content Match Refresh Rate state */
> --
> 2.45.2

