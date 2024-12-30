Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 463F69FE59A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 12:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AEA910E021;
	Mon, 30 Dec 2024 11:25:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QwPK9eX4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4EDF10E021;
 Mon, 30 Dec 2024 11:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735557930; x=1767093930;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Mupr3hFhCPZCBH8sOLXTD2w4IWE20khi4mePsrnp2io=;
 b=QwPK9eX4WUu+7x/5rLZJafG9aeoUCWpoJmAohLp3tu3myk3PALhoTaKN
 +BJdggL+bb3K++5rpdysp4Iph4BogPiD1czsjBX9kn3gBuX/jqHvB1SWU
 8dwYBqLcRCeBRrRW0cmK5zsI9YrWrOiwKZF129p7/aLRCBPjnoSiCPtfl
 U4KGZ93pvNzpWRqenqTI5Fa673G8nRTf1Rt4mYRpNit5V1sKY6aQrAxMr
 tHDVP70OneRiYAMpS+QYhFNb7G9VLbB+6ToRQiB64w93DksC4OsQv6vv7
 yfYpu5kinDOmVu9xxcS1fwNFB2FfyV5X1R0W43gSjx+zbH2KAiqs3oWPF g==;
X-CSE-ConnectionGUID: FsTJSzkyShKIbGLGQdLwJg==
X-CSE-MsgGUID: 67v3w6N2SUq0JX5E87lduQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="36005385"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="36005385"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 03:25:30 -0800
X-CSE-ConnectionGUID: N3353BbZRqWPuwysxNVchg==
X-CSE-MsgGUID: twt3PxGQTXKYTGE/lnf0Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105764608"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Dec 2024 03:25:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 30 Dec 2024 03:25:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 30 Dec 2024 03:25:29 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 30 Dec 2024 03:25:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q8ucp257khj7C/HQtQQj316wPAGJsD7/C1wWz7A0gQtLHwtnvmFbujeZRAzTigho7g3jA1GUzdq3hJV28Yqg//6F2WJFeS571AHIT3zgGLwz3Igy260cz1Eiqc9JS01qGbAFnUTo9z/Bkbjt1u1ehfzOiUi3TFYt3MYmuo2wduYuDpxY9kv3VVS/vQScux7CxXyTICxuHY6ZeadTAtOQEiSKauzFEMNZeUdWye2VXoqm5DMTu0rzFyDiS0L4A/Nu5B4sy4TB+DnxMQk7yFR2VGAzNS09ZIAbU9MrihzcDsTUFqt9JmD61XoD2mQQNe84NklC77TACzolLIlUd9miwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aqQTk0HkWv4jxSln03S2tGItJWWPWM1ki5+Safi5IYI=;
 b=xWi/HGelYzWUEQSBrjMjw75uBW5Xy9ENjJK1mcgBDrCVFuCrzwclMrWN+3HU61vUe4KD9Y3TzZF/TqlXl+YRouaFT1P1zoW2pHxN5F614p1akyv3sNwPSTy0wdCnlvtkCN/R3jXph/L0XPcrwRK1UfX2Old9Y5nJAyVowwxECUvFVw7TLL7JrcRuDSBmOptx5yO5EuAZ1ldBhb5By/m7qIptQ5FbW2ZTQXwqpcMkt5uwizVzBuT0lctjGovNWVtrCfsurIAB3J4e5p/YPGqpE5QzaINYDnpXL0Qpp6BIL92kT4me2ATXvTbI1yHRyQgG9M1KSPcbJIIDr/MZ7WK/Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by IA1PR11MB8173.namprd11.prod.outlook.com (2603:10b6:208:44e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.18; Mon, 30 Dec
 2024 11:25:09 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8293.020; Mon, 30 Dec 2024
 11:25:09 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/4] drm/i915/dmc_wl: Use enum values for enable_dmc_wl
Thread-Topic: [PATCH 1/4] drm/i915/dmc_wl: Use enum values for enable_dmc_wl
Thread-Index: AQHbUmOBs4/ytfiMF0SIUlHi+YG7qbL+rzsg
Date: Mon, 30 Dec 2024 11:25:09 +0000
Message-ID: <IA1PR11MB626630BAFD4618D2860BD36CE2092@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241219221429.109668-1-gustavo.sousa@intel.com>
 <20241219221429.109668-2-gustavo.sousa@intel.com>
In-Reply-To: <20241219221429.109668-2-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|IA1PR11MB8173:EE_
x-ms-office365-filtering-correlation-id: 49c6aaa2-39fe-4112-00c6-08dd28c49e45
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?7eqnxno7bmbuBzS7C4Xlnq872JMFWIbgIQq79GpJEw82jn7LvcoPWvdvBs6J?=
 =?us-ascii?Q?m+71w6PIifkDbMa3C8eUAf6y8b47Io9X0IrQCJ7y0GUi9nwd6ybVFYLDC1/a?=
 =?us-ascii?Q?+lgulyAIdW+8+eE6zYkh++EIzNXzNdouRn+LJcFt7TAAMuktsdmoYCVykJyH?=
 =?us-ascii?Q?LTtwQb6M+APVXpLuCUBFsUDKzc5bgykwRulw2u21624xOiU7dWb3+atdXVQX?=
 =?us-ascii?Q?fZNg2caURfYaspQUwIT1c1I31TOTofCTIWDhOJMf7YwzdVLfMziIhmUaPicO?=
 =?us-ascii?Q?Zn33xk7pz3u1bwpHvvzjbgzOV2oI6PYF8c9G9K7OzHGCAtpUJfbOFbWdO3k8?=
 =?us-ascii?Q?aXoZUa3u0r/BZjq8sS+jXbslWeBowKNgKc/OgSIlC2TXAE1s2DQVmlI6j7c2?=
 =?us-ascii?Q?RagoSS/QgPVMewnXriw73h5v7Frd1HgbIPPwVSCxEE0WLZ6Ir5iTV9Lr4E0T?=
 =?us-ascii?Q?QFDH/573Ip6YefOZiWXXuGgO/j7TFC67FHOztHumHklVX4jprdPny1GtYAXe?=
 =?us-ascii?Q?M5pJxwxzhRGRDIhDYn9mzJxg9mNDOmIoxxWLNXLXDLbh9rQHzpzPamw34RVB?=
 =?us-ascii?Q?+/wXAAZPxKZH2Gp0F+YV1AhrCVDsLgZ4CIdSa/MSpEaW8tyQAh5ulf+mer0p?=
 =?us-ascii?Q?o/CXlm2g5wWlU2ion4fT8oMJKQDEOy0gS2M2LEVf+dgBn0RXNsNRD0P8fJ8V?=
 =?us-ascii?Q?btK8lsEZ5yBVfjDtH+ERKWV6UndQMgeYwoV90j8eIkgEuOR21FGZRnOy6xrw?=
 =?us-ascii?Q?m2yUwP4iWN2Kip2CBhXhFU7GafsQ3Cx2hWsF1HBTwybElfcrLEJAxE40RIwZ?=
 =?us-ascii?Q?/+UcUZz1DL/fR3MYqZEHFyhcoVtth3L6yaIUmJUIT2qDeedAA+ePG5IjD+bQ?=
 =?us-ascii?Q?NA+VaO/p6FwnJv18hsZXjyRAg0uDXJviptpc5st9xnmuBbCaOB0UgqHiX08g?=
 =?us-ascii?Q?Hdb/+ymLS/h74CI+H37EJGFDlj9fvr0evdjjT42oa7D8sggi2i/D+nu8ndrd?=
 =?us-ascii?Q?8DHWdaBPXkd1XxYzd0rykMjXPhtzAToL8GjoOjLWgy92rpK1DGZyP8St2vVH?=
 =?us-ascii?Q?mH8gyzO5A9E0Lgrho8DXD07HUkDGUG9ft1RY/PWgoLM4ZXHmFu7R5am3p+2N?=
 =?us-ascii?Q?XWeaoONsWbVQzcj5VP8hBrIdcpDWlU3+NKc0g6w4Y6X3pI/eGmMwK3mNXFwR?=
 =?us-ascii?Q?h5ele7lWSLoOZ2YInSRTKh4Ncxeh2fKIebWtm6eeIlXeA7gPCE51F5AXtFBQ?=
 =?us-ascii?Q?F8K33TALPMuOIggL8IDmA/xARWOJUg8HzHKGSQThGgcHBKjC3Lcy3+TGZ2/2?=
 =?us-ascii?Q?UoZeUh1OZ0FGAtxEg8ogkorZF+dg88m3jQALH7TpEeXEqaUcDZkRN1OJyl7+?=
 =?us-ascii?Q?FXSkB2OJIfLDLDBugfuAz2Rcr2O77QI5had4DwW6I6bcl4PfZK2qn1Qte7jP?=
 =?us-ascii?Q?iyUqt35plmkkmzCzaakPTTHIGd2HIgT3?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wVdlf2NigzcgWwCp+JCIpUz0a0ItH+297Ig3fp6Fhf9nvhJkuxV1BcXJefAQ?=
 =?us-ascii?Q?5U78mwTboxCCL/nRzf0U10CH9XCZvaCkIGKyyNgsHLsIaFNQo7beiqym/siw?=
 =?us-ascii?Q?u43UuvnTkWq1/2M5r/VVobnVv0gDs1tbtazRJjPPR16GFkLIGmgYx9buMGhm?=
 =?us-ascii?Q?iA/zYVK4LEqX5sDpZcCvAI7BVDl78F0YIC/qKM89kq16jDAFukPPqTcnVqPK?=
 =?us-ascii?Q?TaYOmG2mm8XyITGOdjHY5hBUZqEjOUO9ulsXH9+Q+dEtmHVOjEiaQnQxdPfS?=
 =?us-ascii?Q?XuslC8R0rGAVXQGTVnAnJVtJ9UYpeR3cufQ7xPbfMfADA9376/ugprPePbVU?=
 =?us-ascii?Q?X0FbqAPtXmbkutZXDF9J7a/1H14L7dEr4PTVEQyiNRZAqX10pO1lsUfDn08L?=
 =?us-ascii?Q?JeCv3GdSigoHXZCqZWlypR3V/ee8i74DI8xboma1ims2fFfxKNPPMNoD/Us+?=
 =?us-ascii?Q?OYxrqpAXUU5cLBdD2xNHsgYoeu7JV8QhuEA7kSpThTNYtVL1VvHte6Y/MXvp?=
 =?us-ascii?Q?dlBfiI7Ot9USCZCaSJV1In3NolLdoN/Zmd8KI1MgWa8vKg/yDfns5fSEPZYI?=
 =?us-ascii?Q?jAMUCGtbr4RZCE0iuyGBYNVlpgdGKRrRcPo25CNzF57m1ZCuSDAmDp+jy0Mm?=
 =?us-ascii?Q?HMGj35HWd3SiKXDt2BgMzGP7kovOT04Z2lPoBWjR4hrWiUl6a1Kk2vJhmWKV?=
 =?us-ascii?Q?sZaTWMkwxxTcrUd4AjHog1tiYc/lvwM9S7o349aS4bpep9EDiFJNye/l36d+?=
 =?us-ascii?Q?tQUr6wpL9OoopDJedbHFToGJUNVapXFM49pCY8OXFi6Fjz/RQrl8TraZ6eGa?=
 =?us-ascii?Q?6Zn5vSW60UFDOALY0qzM5D8VlkNAW4PXkzlgNOQQv/af6PzpQPTlhIm+dSDS?=
 =?us-ascii?Q?afSJHUfIge9x+qgD92p/WUBOwoNxX1oUaqXoKP/ipwUqwslvYOc1yf909yvd?=
 =?us-ascii?Q?C2puNVC0nKdnPRPEDCsrk9XKUQk1BMxPoAsuILu3vvZEssUpAE6mwIuUB46e?=
 =?us-ascii?Q?NtvUJb79NO7m4pskL3bbQwZHWyjzUgKNNFRtj7Dj/wXnnaVuFKENd3DNoWLz?=
 =?us-ascii?Q?kZUEc3YfVn9Dc6RfZb1OUyNdyI3KhVXbSyhQvExfA73XjzHpGyr0bvJi2QcY?=
 =?us-ascii?Q?/bSAv7FPmHh8sf8po2SDM19gyEDGrGU96eSGHxHHm3Aznpow52t4sNAuRtMM?=
 =?us-ascii?Q?K67I7dhLiilv3gvajkRozNe69U04PdJy2b3eu3UbYPDP7+wymPw68/qcuiTy?=
 =?us-ascii?Q?/FSDvAuWLTIeDFNyomB+p+1TmkTqcffWKuxGLxfE9P1OE+0mhOJxqjGsLyP9?=
 =?us-ascii?Q?xknwkg9LUGJagAeKozsOKbma8UkAALTiLXzJz9HNfjnDur3SzbCyIqkmAffe?=
 =?us-ascii?Q?beeXCiz+JlXYEGniM35tsAUJY95KnKK1fIikSmp+k8x73FfI3LEuAwtfSd29?=
 =?us-ascii?Q?oYYorphwh53bldPfHANuINHcpKtgx8ItTu4PgtqKf20ePydCfXTHnepMQEQG?=
 =?us-ascii?Q?3uw5CYNFWtLwWhIFLR4/TUEIpoCwAolO1WRSTzXuo4vxXh/FuCR9AEV6Tk+m?=
 =?us-ascii?Q?N1t2cT8vnkZaUZaS0zKsXhrF0BubGZ00Pn3Dz5S4Bvht/ku1eOqMDB6bpQy8?=
 =?us-ascii?Q?rw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49c6aaa2-39fe-4112-00c6-08dd28c49e45
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2024 11:25:09.0433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1g4VY9zesKwWKoJJKvwxBz3JgDSffuXIoLUKKooPLTKmUWrg7wqXqaH8sY6wdGm4m8E3GjsksMfXLo/sp3edg462bQVBjL2ksrzh7m2ubrk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8173
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Gust=
avo
> Sousa
> Sent: Friday, December 20, 2024 3:44 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: [PATCH 1/4] drm/i915/dmc_wl: Use enum values for enable_dmc_wl
>=20
> Currently, after sanitization, enable_dmc_wl will behave like a boolean p=
arameter
> (enabled vs disabled). However, in upcoming changes, we will allow more v=
alues
> for debugging purposes. For that, let's make the sanitized value an enume=
ration.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Looks good to me,
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Dnyaneshwar

> ---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 29 ++++++++++++++++-----
>  1 file changed, 23 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 3ac44151aab5..cff841521ca0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -50,6 +50,15 @@
>  #define DMC_WAKELOCK_CTL_TIMEOUT_US 5000  #define
> DMC_WAKELOCK_HOLD_TIME 50
>=20
> +/*
> + * Possible non-negative values for the enable_dmc_wl param.
> + */
> +enum {
> +	ENABLE_DMC_WL_DISABLED,
> +	ENABLE_DMC_WL_ENABLED,
> +	ENABLE_DMC_WL_MAX,
> +};
> +
>  struct intel_dmc_wl_range {
>  	u32 start;
>  	u32 end;
> @@ -270,12 +279,20 @@ static bool __intel_dmc_wl_supported(struct
> intel_display *display)
>=20
>  static void intel_dmc_wl_sanitize_param(struct intel_display *display)  =
{
> -	if (!HAS_DMC_WAKELOCK(display))
> -		display->params.enable_dmc_wl =3D 0;
> -	else if (display->params.enable_dmc_wl >=3D 0)
> -		display->params.enable_dmc_wl =3D !!display-
> >params.enable_dmc_wl;
> -	else
> -		display->params.enable_dmc_wl =3D DISPLAY_VER(display) >=3D 30;
> +	if (!HAS_DMC_WAKELOCK(display)) {
> +		display->params.enable_dmc_wl =3D
> ENABLE_DMC_WL_DISABLED;
> +	} else if (display->params.enable_dmc_wl < 0) {
> +		if (DISPLAY_VER(display) >=3D 30)
> +			display->params.enable_dmc_wl =3D
> ENABLE_DMC_WL_ENABLED;
> +		else
> +			display->params.enable_dmc_wl =3D
> ENABLE_DMC_WL_DISABLED;
> +	} else if (display->params.enable_dmc_wl >=3D ENABLE_DMC_WL_MAX) {
> +		display->params.enable_dmc_wl =3D
> ENABLE_DMC_WL_ENABLED;
> +	}
> +
> +	drm_WARN_ON(display->drm,
> +		    display->params.enable_dmc_wl < 0 ||
> +		    display->params.enable_dmc_wl >=3D
> ENABLE_DMC_WL_MAX);
>=20
>  	drm_dbg_kms(display->drm, "Sanitized enable_dmc_wl value: %d\n",
>  		    display->params.enable_dmc_wl);
> --
> 2.47.1

