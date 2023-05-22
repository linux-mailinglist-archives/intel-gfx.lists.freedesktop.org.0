Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE79670C2A7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 17:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F98C10E362;
	Mon, 22 May 2023 15:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EFF910E363
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 15:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684770211; x=1716306211;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Oms9amSe6ZbWuznPiEG2ACCilV2dH5R0vE2zyIf4C0k=;
 b=F7mSMHRu6SQ1uiyXwdBu8ublSQC7sRTuWBFIy+8lYeTKiiws5GVwuytD
 Dnm8llpCuSQRbdrlQQrkEImh6UcAy7oaCQA4W+9Y8/vX7U5NZKoMLP29f
 kLsqGmaJ/qbF3Fs7MXFj95IKVNvXmIMEuSdnUQPBRuxHvUDFxgbhTNpFw
 LAWJW2H8lw2AjKvCuleKUP8Z87f7bnzvHICyKvJRWUJZHG60iAW99gbKw
 EbpduutGBmyd206TFQ4sj1m7B7TavqzP61BFh5+8HnKjsbvxPila+mp9P
 9u1I3sjN46i2MbtvDW8yC+r+y2xDOvZNC0i1c+c9KOL3Iyk49HlXun0bf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="416416539"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="416416539"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:43:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="877799948"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="877799948"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2023 08:43:29 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:43:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 08:43:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 08:43:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gksR7G/S8QJMKHeOmHlh6/W6ehIAmrcQRIjpzReSZe7sMA3dven0RrHS2+TBeZLVUm39ooUT17t68CWpPhm1UREnyLnF1M7ii9i6qsL7NAPaVagG5h2YZ5eMsxsLeo/xEDrRMNfu6JUqqqLWOS7ypvkvjMqWiXYeJIAOVkz8SWwYIgeJMmSvLfBYxT6pxhsoHgIp+OHRf4oKo6LfOGOSWiF1fXweP7RPitzW36vq0aNhua0mujEDc58/YvBDVz3c6AzxPoVj1WVhNNP7kV8917vwK37SqKRoa82EaplRMw7A95ndjqwUD26bhkb+gdwAUIXO52MPewN5uVAn0FoeSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aXrTjHp0COJWG7YpElWS7TuAYZC6NqFuZzUvSaZpfDE=;
 b=gcFjzl+n4Q0INQsnHOQUFPcstNYjKDvHQ6lEvhDp+94WQ1JsewI9KyK9dyfAYfHg5kY+m8E8mXwcTQdSfdtQnBBWDPGjWL9B2poqoqZPZVErWq8fiRrhJd66QUcdXlStUR54lh38KqtGbLy7Ze+FbOIn9N/OLfRbKxVGcih9fxXytQZvc4OfagwtgfSv5zyUAxPz/pFtIlCRVi9lS2WFBKj9LpCzi5HGxafJXfjf7I4R59vo4ntbPc69NTdS27kaXa1w3Ar9BcY4RZOBTCw7eEglh/KfmIFLtyRn0v0CaXL2lgsLyUeH4V+lOEsdm14sPRxe0Stpm1NDMwU2z9hFPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH0PR11MB7524.namprd11.prod.outlook.com (2603:10b6:510:281::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 15:43:26 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::ae46:be17:d89d:db39%6]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 15:43:26 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/hdcp: Rename comp_mutex to
 hdcp_mutex
Thread-Index: AQHZiVNTJK9Pf8sucU+bt9L4j1tFsq9mc8Xg
Date: Mon, 22 May 2023 15:43:25 +0000
Message-ID: <SJ1PR11MB6129095D7ED1FA25C61E1ED1B9439@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230518063612.1044370-1-suraj.kandpal@intel.com>
 <20230518063612.1044370-4-suraj.kandpal@intel.com>
In-Reply-To: <20230518063612.1044370-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH0PR11MB7524:EE_
x-ms-office365-filtering-correlation-id: 13289248-c4af-4709-8068-08db5adb480f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z1r/3XP71+J3TLSZ17QUiLks92y9bU9Zwio9RGOeGlgqojJQ8yXXBdfLjYqkAYprFEH6ZfaarSkAhzzksW3xUpJK69fktnQ7zkX3w+liU/eMNNKGbcDuxuGodF0yr5COz7cO67NO3b/+mcCURlAgxmXMZ/Qfv+5/gH/FgaHRR0GM/FD58jLBBka59oHv1XhUiHfaFj0f+P435lKXbCo1WNXZT3SpXSU3aPuBtCcVoLsAkq4smSFTMli7S6oluPWOp5tfQFNdv1DZC7e+6MmtR7YSqi8V81ib0hlcVCDZZTW47JFrdIl4A5YXE5uYGZets9P4YV0UuQZoh4w+pR5pHbmi2VNTVv96+R2SyDb/s5coPp4e7ETfdYYJSQbvTXqOYqZYozFP4LZpFYwfib80ieWDUOxG0jHEfR08qT8GAuttwT+h+a6WZzMod1LeDL2DwlujvoFrh6PT3gwJwykxAoXalyl1Z2Xxq9ocMzPnEki3/7ZNkMkHA5FHfbsm4kVMxraibaIB3q8MJLBtZEPQihKG5Fr0aZ2bBi70S6lrL4EcEEYzJvXSthoxZVjG9QqHZY6Sv3bX6EZaQZM9CBN+vIQDldY/rF2jZpio81sqasOcmVsXCI/jm6LIRUXj7Qa0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(376002)(346002)(136003)(451199021)(122000001)(38100700002)(8936002)(8676002)(38070700005)(5660300002)(82960400001)(52536014)(9686003)(53546011)(55016003)(6506007)(26005)(186003)(2906002)(30864003)(83380400001)(33656002)(107886003)(86362001)(71200400001)(54906003)(110136005)(316002)(66556008)(66476007)(66446008)(64756008)(4326008)(66946007)(76116006)(478600001)(41300700001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aTUSN/4apAxWxTm5AeZ44QC9MZMZfhN0GaSDmEaBQm544y1tICiLszOkelkg?=
 =?us-ascii?Q?4OSozo9iNKVAYT3tKcHb+J87kJuVluYsZdeHHPTXIO3f7bz0JeNGIBu0RZ0N?=
 =?us-ascii?Q?bPw9/BHt5eVySioGRCygJfch+B8KSpiNtOHSPIQzhcyCv8ustOeoKaYsiFB3?=
 =?us-ascii?Q?/iy/H0PErkojf80yeVGskTvn5Qe0Ijk9+tP2a7XIwX5VBD/3l1WRJnEj9dE8?=
 =?us-ascii?Q?t+fYxv1Of/qF5dZ30uRR0xsfRu0E5sGt8GCNaWV9VG0mn7EMVTJ3yTlz5u9S?=
 =?us-ascii?Q?vBdcdmTH/SyjY5oF4mYqGpNj13hCdfG21H/TQQ1Gm+8RzQwRq7CTmUIJ4uWG?=
 =?us-ascii?Q?3pilaL5dWCky7gT+qn1c+BlRl9vpIhsitiryV3YdWNeiiNLN9ZSdY7i24TF1?=
 =?us-ascii?Q?aFB42jhLi89luB86zf44q7+xnW+Mwp4/cpYoEuQ4/6dYQGe6rtaq4hoOfd5i?=
 =?us-ascii?Q?7lYWxtTSp4nSXF27aXCV0YdAK4aw+b10IXxz7yuZUY40N1J4+AWtRD4Ebs7j?=
 =?us-ascii?Q?lHKijjvTKv9HghnHDNCYze6NLiXh7LfWxI3t5yrlEn3A8YKCJJWwWoYRmvEp?=
 =?us-ascii?Q?KwxK02fhStR+qI1zRsqg9cf1lazR7nJr9+YhzvrAEr3XjUDydpytRn0mCUuV?=
 =?us-ascii?Q?yU7aVpWtjXZ4tbT+VSPXnThLrCzd+bpgFei6Ny920UIV3tFJBJLpMBEHL/kV?=
 =?us-ascii?Q?/rjJSwwx1UXmrsSsNjFtm5r9gh51wdGD/57Ds6SUKyEd7/04/vOC1f5eV0iv?=
 =?us-ascii?Q?orqr5Ht6CdA4Hxx2DcIALvx8zbSNPEp1NVnuNLGNRCXGeWMvOQxByFOhsFJv?=
 =?us-ascii?Q?t5ua5dVVmQyl/WzrY87D7ywLuD6UdA7GiAi/FAqobocuqiHHKv64ixDrx7Ct?=
 =?us-ascii?Q?gHdmIvK1vAPnh/ZVCeRaWQgEQMSNNuvXaYAYdGghLHirEXs+TSZPkVD+1cPy?=
 =?us-ascii?Q?Ok6aeTjDUczj6okcl9qdT18D6YpeyZNYAZrzwWr67oCSAQqjaRXx00irwGaj?=
 =?us-ascii?Q?xwH2eWAzr8lAVXZ3Vh+GtHm1/cKDIuttCStX7tIYR+4JFXineRImWMM76zi+?=
 =?us-ascii?Q?QLXYkQ00V/wieRBPoeVd9V6CaG+TSp7KFJgmtNuqX+00aYWJA7dyaiRNMQX7?=
 =?us-ascii?Q?ATJGii6f59Evjcu2xxadQyJu4l1EtKNPvG0/UsDvo/EeT76cgaZkqSeG5YYx?=
 =?us-ascii?Q?1C+bKe8imYNnVfB4LOX9qonlA7uQC6+ec5iozcTdo3NlCcrYmK0gKSZWc12V?=
 =?us-ascii?Q?4gytY6x394IJMs6fPx06e9dc+skrKepSKdcZ1JJeLaYuDRSfZjKWaQZjs+7l?=
 =?us-ascii?Q?i5HRCowrso0hwj0CKukgK9qvwfmUZ23MWSIocVRzdZa6QUnKAnP7q/1ouGJ+?=
 =?us-ascii?Q?X8tt37LguUVob6C/Pm2rb1BmTuLBRxF0S5WvCVR/y2eWc5Dm2iR5smYKu6bA?=
 =?us-ascii?Q?zvwIfQlBAlMpk1Hop1uHB7viRmfEvt1WVgmSN1+aZJGs9L9S0+VqYaO9sDuu?=
 =?us-ascii?Q?JsDjRhkSSXe4M3tFx7fkrQV0JJ1L7ieUO0/Jfq/tBlf9WtZIvyQV9gQk0UOo?=
 =?us-ascii?Q?4nBuWGXaM6v05teFANsvs6H2GNMWM05X9JGp4fuuTwGfrWfoQ+IpEpZPvixa?=
 =?us-ascii?Q?0g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13289248-c4af-4709-8068-08db5adb480f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2023 15:43:25.6144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +yvrqvTgKpFTMjM6bnsp7Zu7GaiT0L/9zLfiQGx3iexaVi94XzLETVXrN1S7RqP9EtRol0N2LtUQCJRENRbiXzg6300BNWjnsstPuDBzziw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7524
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/hdcp: Rename comp_mutex to
 hdcp_mutex
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Winkler,
 Tomas" <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Suraj,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Suraj Kandpal
> Sent: Thursday, May 18, 2023 12:06 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Winkler, Tomas
> <tomas.winkler@intel.com>
> Subject: [Intel-gfx] [PATCH 3/3] drm/i915/hdcp: Rename comp_mutex to
> hdcp_mutex
>=20
> Rename comp_mutex to hdcp_mutex as after MTL we use gsc cs to enable
> hdcp hence this mutex protects not only hdcp component we add to mei.
>=20

Nit: the commit message could be better framed.

Other than that LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 94 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  4 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  2 +-
>  4 files changed, 52 insertions(+), 52 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 57f76321a393..e853ca3b72ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -404,8 +404,8 @@ struct intel_display {
>  		 * this is only populated post Meteorlake
>  		 */
>  		struct intel_hdcp_gsc_message *hdcp_message;
> -		/* Mutex to protect the above hdcp component related
> values. */
> -		struct mutex comp_mutex;
> +		/* Mutex to protect the above hdcp related values. */
> +		struct mutex hdcp_mutex;
>  	} hdcp;
>=20
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 7d43845d5157..3413455df36e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -182,12 +182,12 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>  	}
>=20
>  	/* MEI/GSC interface is solid depending on which is used */
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.arbiter) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return false;
>  	}
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	/* Sink's capability for HDCP2.2 */
>  	hdcp->shim->hdcp_2_2_capable(dig_port, &capable); @@ -1117,11
> +1117,11 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1129,7 +1129,7 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,
>  	if (ret)
>  		drm_dbg_kms(&i915->drm, "Prepare_ake_init failed. %d\n",
>  			    ret);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -1147,11 +1147,11 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1161,7 +1161,7 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&i915->drm, "Verify rx_cert failed. %d\n",
>  			    ret);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -1175,18 +1175,18 @@ static int hdcp2_verify_hprime(struct
> intel_connector *connector,
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->verify_hprime(arbiter->hdcp_dev, data,
> rx_hprime);
>  	if (ret < 0)
>  		drm_dbg_kms(&i915->drm, "Verify hprime failed. %d\n",
> ret);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -1201,11 +1201,11 @@ hdcp2_store_pairing_info(struct
> intel_connector *connector,
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1213,7 +1213,7 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&i915->drm, "Store pairing info failed. %d\n",
>  			    ret);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -1228,11 +1228,11 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1240,7 +1240,7 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&i915->drm, "Prepare lc_init failed. %d\n",
>  			    ret);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -1255,11 +1255,11 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1267,7 +1267,7 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&i915->drm, "Verify L_Prime failed. %d\n",
>  			    ret);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -1281,11 +1281,11 @@ static int hdcp2_prepare_skey(struct
> intel_connector *connector,
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1293,7 +1293,7 @@ static int hdcp2_prepare_skey(struct
> intel_connector *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&i915->drm, "Get session key failed. %d\n",
>  			    ret);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -1310,11 +1310,11 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1325,7 +1325,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,
>  	if (ret < 0)
>  		drm_dbg_kms(&i915->drm,
>  			    "Verify rep topology failed. %d\n", ret);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -1340,18 +1340,18 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->verify_mprime(arbiter->hdcp_dev, data,
> stream_ready);
>  	if (ret < 0)
>  		drm_dbg_kms(&i915->drm, "Verify mprime failed. %d\n",
> ret);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -1364,11 +1364,11 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
> @@ -1376,7 +1376,7 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)
>  	if (ret < 0)
>  		drm_dbg_kms(&i915->drm, "Enable hdcp auth failed. %d\n",
>  			    ret);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -1388,17 +1388,17 @@ static int hdcp2_close_session(struct
> intel_connector *connector)
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	arbiter =3D i915->display.hdcp.arbiter;
>=20
>  	if (!arbiter || !arbiter->ops) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return -EINVAL;
>  	}
>=20
>  	ret =3D arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
>  					     &dig_port->hdcp_port_data);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> @@ -2108,10 +2108,10 @@ static int i915_hdcp_component_bind(struct
> device *i915_kdev,
>  	struct drm_i915_private *i915 =3D kdev_to_i915(i915_kdev);
>=20
>  	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	i915->display.hdcp.arbiter =3D (struct i915_hdcp_arbiter *)data;
>  	i915->display.hdcp.arbiter->hdcp_dev =3D mei_kdev;
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return 0;
>  }
> @@ -2122,9 +2122,9 @@ static void i915_hdcp_component_unbind(struct
> device *i915_kdev,
>  	struct drm_i915_private *i915 =3D kdev_to_i915(i915_kdev);
>=20
>  	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	i915->display.hdcp.arbiter =3D NULL;
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  }
>=20
>  static const struct component_ops i915_hdcp_ops =3D { @@ -2214,11
> +2214,11 @@ void intel_hdcp_component_init(struct drm_i915_private
> *i915)
>  	if (!is_hdcp2_supported(i915))
>  		return;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	drm_WARN_ON(&i915->drm, i915->display.hdcp.comp_added);
>=20
>  	i915->display.hdcp.comp_added =3D true;
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  	if (intel_hdcp_gsc_cs_required(i915))
>  		ret =3D intel_hdcp_gsc_init(i915);
>  	else
> @@ -2228,9 +2228,9 @@ void intel_hdcp_component_init(struct
> drm_i915_private *i915)
>  	if (ret < 0) {
>  		drm_dbg_kms(&i915->drm, "Failed at fw component
> add(%d)\n",
>  			    ret);
> -		mutex_lock(&i915->display.hdcp.comp_mutex);
> +		mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  		i915->display.hdcp.comp_added =3D false;
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return;
>  	}
>  }
> @@ -2500,14 +2500,14 @@ void intel_hdcp_update_pipe(struct
> intel_atomic_state *state,
>=20
>  void intel_hdcp_component_fini(struct drm_i915_private *i915)  {
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	if (!i915->display.hdcp.comp_added) {
> -		mutex_unlock(&i915->display.hdcp.comp_mutex);
> +		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>  		return;
>  	}
>=20
>  	i915->display.hdcp.comp_added =3D false;
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	if (intel_hdcp_gsc_cs_required(i915))
>  		intel_hdcp_gsc_fini(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 62e7bf0e1035..72573ce1d0e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -704,12 +704,12 @@ int intel_hdcp_gsc_init(struct drm_i915_private
> *i915)
>  	if (!data)
>  		return -ENOMEM;
>=20
> -	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>  	i915->display.hdcp.arbiter =3D data;
>  	i915->display.hdcp.arbiter->hdcp_dev =3D i915->drm.dev;
>  	i915->display.hdcp.arbiter->ops =3D &gsc_hdcp_ops;
>  	ret =3D intel_hdcp_gsc_hdcp2_init(i915);
> -	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>=20
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> index 522733a89946..8ba87864bbd2 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -222,7 +222,7 @@ static int i915_driver_early_probe(struct
> drm_i915_private *dev_priv)
>  	mutex_init(&dev_priv->display.audio.mutex);
>  	mutex_init(&dev_priv->display.wm.wm_mutex);
>  	mutex_init(&dev_priv->display.pps.mutex);
> -	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> +	mutex_init(&dev_priv->display.hdcp.hdcp_mutex);
>=20
>  	i915_memcpy_init_early(dev_priv);
>  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> --
> 2.25.1

