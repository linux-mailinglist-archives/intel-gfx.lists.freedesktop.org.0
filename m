Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 055AD8ADC0F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 04:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712CE112FBA;
	Tue, 23 Apr 2024 02:54:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J5PqDTYE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A346112FBA
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 02:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713840884; x=1745376884;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0/DfZWmDod7QUnRNRcYNgp65LjxmkUHM6tSIRXB7N68=;
 b=J5PqDTYE4bRbe+7y0z9WsDURv9OAn8Ahzwoe+jklN7VCf5o1b0TYjaFD
 VrrVkuU2JCkT2UE0HmSXXSTqvGvBwFqtr/ReNcssKmyceFU864XkrqvfY
 3qjBmRc3C2OwdhCqhU9aoapLNtEqUytmWpuyymSA1hFwWB/EzapkAZtPA
 evyssnKxT4JX3uRkpthhutF3NWRPKKc0ec9Cjp8elPnc2s2JlV89MHkBH
 AyyRbhzaSma+L+GUVviCKD/kr8Pda4wJCdwJVhzZlgXb1hWw2bTRZtqnN
 FCYTZZiOMW6bg37LnygGWILo+I+jYPbaJGPgxGzKBsabRNwK6DuA57f30 w==;
X-CSE-ConnectionGUID: 7kn+Xt1bQFGVrg1ssEMQCQ==
X-CSE-MsgGUID: tqBmzCELS4qN5vdYQEV1xw==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="9578498"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; 
   d="scan'208";a="9578498"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 19:54:39 -0700
X-CSE-ConnectionGUID: GuMjxj8TTv6/U95yvGckzQ==
X-CSE-MsgGUID: nrg1s0h2Tue35Co3Qh5TGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24270315"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 19:54:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 19:54:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 19:54:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 19:54:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DbYHA1ac2/iRIUF42+mufLy1+K4663BT8SnPEBJwbIl+AloaANFg5tgSP3EJFCnNMgs6WEifcg0T/47D0GZaG9FpXpREyhl1H7ZmIZAfexawFnOSOQ/oDTpRxJbdKMmn9vWbcVEeZ6ri0fecjUYpt4MRkdrpVNmfhgjSUJ/WyE8PivhsV/EEqQcgsl9Gy79/in4WECRW4nkvDynlJpYtDjGJQLfh+6pUdFbLe8HrGr59UQ0zZc4CHC2TkD2tyipt9iISnuJwy9pvMiElolUzGAeDNs7no51Xe5XHYi7fkBkEZnaHIoU3tHb40ZU4x9RpuSPAd8esFpVjGcGid/Tg6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sx0b2GE92IKuVS8TlEsNQEZWZkdGJiOpzQTqRyH8ZlM=;
 b=lF8UPDiA9mUt14tju/uh5Gzo+4KcNMtFd936gCUVQKvpAcUtNbvf74PQuxikmIsJSvSIe6PvK3bDxvhXZizQ7wQKWG/R8bSbGU3QQpiuecE0G8v54ecrETSVPv+m0YwCuMQyrEPdGB8UQHfrvuk1nubFrqgOxxdJ2v9Ovr0buDpc51nJs3vGmH92SMhdUyuk2AselLiqP6TVvhNnvWkpwmJ3JUnKlDfgfk5VlBt5b8oY4VfhZWMsMl5/s/nu8OrzxQXZlE8lq54/PkKKWZvz6hp61NJbXygb3NAnIYFijHmJxcr/an8qObgzjEz9N2ZH6rlun+ceB/3mhtcdCrb4uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY5PR11MB6462.namprd11.prod.outlook.com (2603:10b6:930:32::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Tue, 23 Apr
 2024 02:54:35 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7519.020; Tue, 23 Apr 2024
 02:54:31 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, 
 "Kumar, Naveen1" <naveen1.kumar@intel.com>, "sebastian.wick@redhat.com"
 <sebastian.wick@redhat.com>
Subject: RE: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
Thread-Topic: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
Thread-Index: AQHalGYm7Pw69oojf0WxtAG+T5/LOrF1KG+A
Date: Tue, 23 Apr 2024 02:54:31 +0000
Message-ID: <IA0PR11MB7307E137CDCDE6DC39F6B290BA112@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
 <20240422033256.713902-3-suraj.kandpal@intel.com>
In-Reply-To: <20240422033256.713902-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY5PR11MB6462:EE_
x-ms-office365-filtering-correlation-id: 60716b5d-45b0-450d-cd83-08dc6340b306
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?0TzrJZAZ/WtarvJfcmGpdcsQ4P/W9gTuf2dD4XrsYg/cpAJktj2cULfNf62u?=
 =?us-ascii?Q?MJULCkwOWyvK5CheAxeBn0+U8nQoVY31c4SpLDacAM1SQopV/OttRxLnznhM?=
 =?us-ascii?Q?DBj1VlBYprcgVWZeNGs5xzxO7/5uO+5YFOndbOvQykwjK3nE3zimEN7U386v?=
 =?us-ascii?Q?R7CYfWmeCWVNJCYH52/7GfUMnTCUkHX0DadSXoUld+2RxMMigEgDTFV7z0B8?=
 =?us-ascii?Q?t1tBqSRDKV5NVtLc/D1ylSLX/J77laRkUc41LEeTilSI2ZwuubhivIST5PJr?=
 =?us-ascii?Q?I6ctpRXpf8ScujoGh5PFA441OYHpyEpekSaK1SBG5NKzSypMrkbshoW3pFWO?=
 =?us-ascii?Q?OKI2Q6wbKj/PJJSk3xlkSJ8sndMpUST0GEMj7CIZBHG7SdvZUZyVO/R0IZcB?=
 =?us-ascii?Q?LMMb4cYELMotub54ivjQrQvW9R6mMsenXPoGxwStsteSrxvGy5o7xfj6e2I1?=
 =?us-ascii?Q?UnZLiVrz68vFiqTDH8yFmITMVpSawy+FwmUIgAcnv+BrM6WX/jxUVCHSjr0p?=
 =?us-ascii?Q?3A/W72cc+r37eW7gMdfiupxNrGhL4mFGSW0+yLKObTbaFn7BEfLQOM2QILIq?=
 =?us-ascii?Q?eriTPelY8Uo7qf2jlmwHmOqDL3eDHmOUAe3YIRkAUufzXdUweslKrtdJwmcf?=
 =?us-ascii?Q?ZrQF7bLm8mSrxPmRiUSAFnWnKygmu6xMhHYLQwYRF3qxZBucO9wJy6ximsxw?=
 =?us-ascii?Q?DmBj0qBArshy/d6n4PnBb8nckNo87Wi1j5lCGjf3nIyJAp8cK57WUNPDjQx5?=
 =?us-ascii?Q?o+DPH8Zq5aQKP30vZfWDVQeFAKi59k+K2cwGQEDLM+PjwzYBYkvo1NpdSj/y?=
 =?us-ascii?Q?mg/xgc9CC6uQvhjs1I5TpyETWpVijnkblDAaSwOF60vrEYwxfYzNp5aJOBvp?=
 =?us-ascii?Q?59OwOfpYSZG+4dX+OxNZ4SrKXRdR6RUUpL/xnL6Pf+UeKz/Uv/4gt4U9qH4O?=
 =?us-ascii?Q?aZkqcK5vKkiP7KjEwO7j5NLwBcP1oI5yRCdRrLmNgyk1gjxpyoqeNyh6Tqnt?=
 =?us-ascii?Q?pd9cWZoyoXrwHx24mkYN2Azs0MYhIA4Y4ulvn0MyDB27XUcGrRAgn/yu/guF?=
 =?us-ascii?Q?BMDVzqsYV3UMHpRk6sTei6m6TDI4Zl1YS3NRn5PQaIH565UMrM5LEU0FepD7?=
 =?us-ascii?Q?J1XZEelHGwElwxHyCCaOIA2H6+VU/R9l8qHqcvJmBxpXG5hdNVc4gfWL6vny?=
 =?us-ascii?Q?iJZffJftqbPw6KNt12cOs0UR+UYvaZNJx3Tu1L8Rq6VOlqONa8evJOOFWY9w?=
 =?us-ascii?Q?zouNBsUd18gr4EGaOEdr/PGRfGz+ptaHbVfaTy+Id0J6u1mSwPpglpVlVQ7y?=
 =?us-ascii?Q?gZVigTOI1OU+MQw2wkmD+8hb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Bf5iByls16rknXRp9sgzPFmC6fIDk2HjCQgqrJkaKOMK82u5LoBM77LFtw/t?=
 =?us-ascii?Q?LOBA6UOq3oOtJyIYoaKMq5jxOsdsGJkH5Ui6oracaAF/RtHD2ENfWQ3qCLNt?=
 =?us-ascii?Q?OH1fEyleoPDNfCh6BPM4kKljHccQpE/yCQ1tuIy78zb97u9jwHkOiiKR3VVX?=
 =?us-ascii?Q?umWml9spx33c9RaJ/Jyof/9GgLY+AXci+QQFWH0e4UA1mwMDTsvGZZi1vgoD?=
 =?us-ascii?Q?vgSQhZmlghCPuIETdGjlXiXXZwJp+Wn45kw9bJZrkZp7bExNMF2Qcwr5xETp?=
 =?us-ascii?Q?knpW3KyIKQsKjFIu0F0Hyg4b/NpVC65+z1mZFO3tqEbEgr1pxf8gt1+VenKP?=
 =?us-ascii?Q?c4ZqWru6cHsKuSw3vxRDYtyb/dFDrJLCVRqqyrDcRZ04P1JBFMinSFHTCZxK?=
 =?us-ascii?Q?tdplF4f+xYSdIWlmT2BNxprxc8gdvom1FpvPxTu9NnvPlRes4+ewW4646M2c?=
 =?us-ascii?Q?9cC+Vp746YqwxSOL4MmviTr0BqfMzsQiL49vLaVvfjadAnQq4jPwDKjf9pTW?=
 =?us-ascii?Q?Sz9PzfJqVIJ/qC7lDheShy1NZqHcxCzpvNFkS70J363wXjtpYXrsfOxSHmv6?=
 =?us-ascii?Q?iIcEnjDoYt1tJSlLpZlqktC1bHwXoGOWB2AwVMcPZAHPRC73JP1WlHxrS+0/?=
 =?us-ascii?Q?Fg9fHGk+mGKwUpSNRtIVAslziwCeb0m3xT/wGcLiTjWe03lQp+tNa2EUq/5/?=
 =?us-ascii?Q?yWwm+4grx9atNOFbzJBwM3Vywk9Q6LB2Jiz7tz9jx2zFLw2Ap2/tCJVwtzda?=
 =?us-ascii?Q?5JuX0q7JUmgWt5P2TIQIxO+RXb8t+j63eTnXmpEuEar7s99JsUqrv2ReVHtu?=
 =?us-ascii?Q?eV6RbZyPL5RoLYbJzbjMlr5lI5Sel4sY+XU+WzvXnFxPLroAiG7DDhOim3du?=
 =?us-ascii?Q?WFtA6qn3sYOcKBUHFEy0V9W1uqFUV4YXtVUg3TRpUmMoG7xME80XX2ineVSr?=
 =?us-ascii?Q?vKlvIbnzOLwlBCUEv6+/PDPrxSnyjUmnvhDQujoh6j+lxXIhjjUv24PsZ+Fp?=
 =?us-ascii?Q?YxflxtIUmflrZdoxLYjP7DHr8lUxaOT4z5DSAzOF649qXJ2I86oRACTxO6br?=
 =?us-ascii?Q?iJ+10UBQ+Go5C2vkk7xUnXwbScGVnBHjYBzttJxoi4tp4SmxUOpb7Ii/RxTd?=
 =?us-ascii?Q?qlh/sMBkqAJ0giQ4oChj+5QhJ+Q2pcWXUBsHHXEeA7MAtabii5ycQFfayVfl?=
 =?us-ascii?Q?wlbUM2eR5AY4KH7h81qx7RWMogCKtG9WelUEFfOH/1iE8FRwYaPanoKh9Fjj?=
 =?us-ascii?Q?6qQCJQAKI2zIYt1woqS3BMtjng9MghSslZlA+t67eeburMsTdUd+5olKlys8?=
 =?us-ascii?Q?fGLctcl6loC9JeEPFphzvxHXXk64KiaHgmPXtkFUtHI7l118E3ncNcabTKf4?=
 =?us-ascii?Q?OuG2Rwheht/l4rXkQb5urFb4rneWl5Oe5aI4axF1/Gt0s/sCnFeeo3r0+iBb?=
 =?us-ascii?Q?sioxxtebNwvDHXvP6r5Drojb4u6uJWga+VYgK9sZ5xL2zFrDuUTt30WHfP7Y?=
 =?us-ascii?Q?Cs5VbDWbTKhOJ1w7npLvi5oa42L2YZXJCosw/q2jWgdtFiR/orWw60KNS7zi?=
 =?us-ascii?Q?hAYg+rHzmIBY8zOAemhEByIfd4Khi0XLzg2LsWF0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60716b5d-45b0-450d-cd83-08dc6340b306
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 02:54:31.2244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wo74VyTU4ZeUi0ydl7GAKUJ1La4CL0XywTqLZjdgq+a3p/6C0WZ7hrachJ+doZ1hxu91s3auWpWtr1uUCIcrJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6462
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, April 22, 2024 9:03 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
> Kumar, Naveen1 <naveen1.kumar@intel.com>; sebastian.wick@redhat.com;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
>=20
> Add checks to see the HDR capability of TCON panel.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h    |  5 +++++
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10 ++++++++++
>  2 files changed, 15 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 62f7a30c37dc..1cf4caf1a0a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -401,6 +401,11 @@ struct intel_panel {
>  			} vesa;
>  			struct {
>  				bool sdr_uses_aux;
> +				bool supports_2084_decode;
> +				bool supports_2020_gamut;
> +				bool supports_segmented_backlight;
> +				bool supports_sdp_colorimetry;
> +				bool supports_tone_mapping;
>  =09
		} intel;
Even though not part of this patch, but the struct is growing.
Can you change the name of this struct to a meaningful one, maybe tcon_capa=
bility ?

With the above change
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

>  		} edp;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 4f58efdc688a..94edf982eff8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -158,6 +158,16 @@ intel_dp_aux_supports_hdr_backlight(struct
> intel_connector *connector)
>=20
>  	panel->backlight.edp.intel.sdr_uses_aux =3D
>  		tcon_cap[2] & INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
> +	panel->backlight.edp.intel.supports_2084_decode =3D
> +		tcon_cap[1] & INTEL_EDP_HDR_TCON_2084_DECODE_CAP;
> +	panel->backlight.edp.intel.supports_2020_gamut =3D
> +		tcon_cap[1] & INTEL_EDP_HDR_TCON_2020_GAMUT_CAP;
> +	panel->backlight.edp.intel.supports_segmented_backlight =3D
> +		tcon_cap[1] &
> INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_CAP;
> +	panel->backlight.edp.intel.supports_sdp_colorimetry =3D
> +		tcon_cap[1] &
> INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP;
> +	panel->backlight.edp.intel.supports_tone_mapping =3D
> +		tcon_cap[1] & INTEL_EDP_HDR_TCON_TONE_MAPPING_CAP;
>=20
>  	return true;
>  }
> --
> 2.43.2

