Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6462769A44
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:02:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F7510E2B0;
	Mon, 31 Jul 2023 15:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A581110E2AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690815741; x=1722351741;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hVXRA3U3lyR0pXKtaFt+LKSsvKFp3PdJ0Q6O6rUYxLY=;
 b=k6now5GP1BEPncqjYJOQS8H5fqqhYg4v8aU+9xiCf2XTT+g4HEMMTRaU
 svAFzN6PJi7EoGqd2p646gWAw4BN6kIrCQW4PVGSRhx28IeFnl2sX96Tr
 1a+LRpFZJ2IeTlGjVtoc3HC8bfXIgc2KI7Y8kw8BFhaKw6CyPlj02k7wv
 sAeoIPYI4xEoVpA7n1uOASjD4xCrY0Rm1VV+Hl8u1oHpvq19Pv9w3dvs1
 HfUQ3W9rbEjKiiNCDQ7GG07ACivVl8j6Bk1VFC5EP3wkNX7bp67YGBxgx
 iwbbreuJEVtBW+tkOpm9Q9TzpwNeI35hqaNGEpnFTpzA9klD1p0Xt50bG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="372665407"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="372665407"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:02:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="705442163"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="705442163"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 31 Jul 2023 08:02:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:02:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:02:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:02:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e76qN+ygvuZRhBNJgx7D7WSFEDe5NrSkWz7P2jNx95IvfWca2miuxjGsSREr5FuFGWyD9f7lOFy3ouWNo56lz2zNIahXbOD1o4sWd15Ug3EiwDD7/Sd7qLgRMpGXKL+5RN7NnsJuriMSTJ0ZnJMS5zisoIWjz8hoEh5vP8AYhtYnKWX8UULb2ypyU3JvT9JNphecMbJ2MEoEJKV0Ny2KqzRzQ7s4I74yV5N9p/mUREPP5fy02GLnXIN9FZlXMTIGmCrBiBZKkwBnd7uUkDbgba8mZOCuHPX8HwOSPxxK+fS2OLmSknHdBSmDwoy2EMXgK8gjs7r2fJWCE8zfsUQulA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=By3hXjIITrlkqG3z9ou9e3GLtbvo1xdQBhfqicaVjSI=;
 b=SxZ+/nRo/FtcSMuDs+AdqM4f33TkvRumoOwDrAPy8QP9IOVbzJeh7bGJ0U0D1jYEUuAM0QUTgseJnQKcyT11O3UwEGWpkiR9OQg9A2A/fTCUrqWuHhdnw/k3p+63THxWs2uPa70vCJPmM1ejjZvUB5YlOJSo165jWDhWBpJjJVFE6Lsv9w3Xb/8A02ztLGhHo+gUL/PYhVlCmKgjKxjuBuUgzgkHmAn7LjLzxDspxzMF/jA4tEEJ+x39EPwC6SV2t0/Mn1JracUwKJfy5ZtzI3Kb1b4rmR54CyCNehQWcTqlapAZPDfjbBZH5wNrRRJ9gQ8/unT0pM0Yq2mfA2Y09w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by IA1PR11MB7917.namprd11.prod.outlook.com (2603:10b6:208:3fe::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 15:02:17 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:02:17 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v1 01/14] drm/i915/hsw: s/HSW/HASWELL for
 platform/subplatform defines
Thread-Index: AQHZv/zSinC0DT+s10SiA+E0CQYr6K/T/+Bg
Date: Mon, 31 Jul 2023 15:02:17 +0000
Message-ID: <SJ2PR11MB7715F229E58A9D7FDCFE4662F805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
 <20230726200657.2773903-2-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726200657.2773903-2-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|IA1PR11MB7917:EE_
x-ms-office365-filtering-correlation-id: ae8ecc85-41a0-4db7-0c51-08db91d721b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ntRaAwcBpKSBamFagJWG8pRZrufW23hviXW38QPUzSJmtOOjJgk14zpr1GYvJ/MpP/MnXv2EtOJ+4/ACVL9KTlg4BAJLF9/7PzSdkHW+8nbrf0m/RSUieD7anVrnLIzDJBwfAFOtVUy4ixH6Y5LsNEcnHohWDMBCXwjKgXvsTOoHxIZn9UTqTtj4ztPcpJuR9ibejtN1LY+mCVtdn1dIEmgEvlGtQH0kljy4KXIUjb/E2Kvr2dvgltsI1iic8eFSr6iniAA16vv+x82XnI71yiVNWB8gSQR+XQMw8hdX/ohQP2W0OjjMcukzX0QcUI1UyIgN7i8O42WxjIlUPe2hJnwtOhv20T950sIV6KMppKBfq0j3sKchRmHgVRG4STqWEzigDFxXYsd8ibQpNOnomPzBTSfmOciNP2gOlWyfNdvlpuwBZS411IpezTVfsijMDni9Fey0mnM8f9H2LtwUgti3rOpckDucGk4Uggaa/vfLJS/5kJGiS6pBQk+PXKjMblxJvNH3vgMHEBKCV/Ng4pEgpH41ilfYdEBOI9emsUfvHNT8sUEoLhWbXwCcb78BOOw7h3p12XrDoUZwL/54DAtyw91tBf3yp+VkegqUBXVdGWA7KC9Tm/FI8LR/vs7t
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(346002)(39860400002)(136003)(451199021)(38100700002)(82960400001)(122000001)(55016003)(86362001)(38070700005)(33656002)(9686003)(71200400001)(478600001)(7696005)(186003)(53546011)(26005)(8936002)(6506007)(8676002)(52536014)(5660300002)(66556008)(76116006)(66946007)(66476007)(54906003)(110136005)(64756008)(2906002)(66446008)(4326008)(30864003)(41300700001)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vb1BD+luzWfFpu8gmbA/UsJmVg5SlQSrpjKBvAVV1F+F/OdvG3x16ElnxRwT?=
 =?us-ascii?Q?F+nZmaUwB+gzHSoDKyQsD8XGuAOYMaWDCatokTltths79/tmjBCpZCDLSqhq?=
 =?us-ascii?Q?/rUHYBc3uVJPqZO8Y06fv8L3aEZRYAy9D9HB87FEQEF4xN+vDPnQuZYrSpGn?=
 =?us-ascii?Q?WumIHYz/rxu2r3FNlo7L6c5fQQpTLJX6lfHYzGVUmjh9rig5khdjbd9p+f3Y?=
 =?us-ascii?Q?GcqF9lTPtziqwRJCZH6jma3evlQjiVHuq93+nY1JB1rHOjSgvhcet0iqd9dl?=
 =?us-ascii?Q?Se2eBgTYl/gpalJPZcd1NaJX5xTHjBSd4VqkXsrchI5K7izo1x/Bk/CasyXo?=
 =?us-ascii?Q?guyp9+IM1rxXRyjFhZs28fzDyc6JQ8Aj0KM/nRDBxyWevwgVAPPQqMk2rRxG?=
 =?us-ascii?Q?plxQFeoc+0SgxghR8gRQxz7TqFmqQqNKjoK6VbZedKZnqYmwFmS2lzaXQw/8?=
 =?us-ascii?Q?hBH+49JQZGXe7Htnf2G8iBYTW8uTbE91uX3W0GBRGbOkEzjvJF1JdRINasc5?=
 =?us-ascii?Q?FqOuh07JrmzC2GQZwibjw16TxCkdWxBsiefGVRWX0uhwoFrCd6YbtooBkCIZ?=
 =?us-ascii?Q?0jSGswGaMUmuyf4aeoegLQovOUdvCz/Rrzu+tcF+HST/sXma+ThJjDx7Lhkk?=
 =?us-ascii?Q?bati5335IYAtUzCFwOhMppPPAjKgyIFBF6fZSjM9v+3rK8bQp6fGXhbLuRF0?=
 =?us-ascii?Q?yFJJV+z3bPTLO0Q/cR8+8+rTB5NNxpQfKXc4E6K/RUiPhyF1qaiLwbPmXLMd?=
 =?us-ascii?Q?pWQHhYySi2zXaf5P6pOjrsdpRU7EQcUauuy6jifYWumtkUPiCZQrEQrHUSmQ?=
 =?us-ascii?Q?KF5AICrHRd8vSRo06SjmBsnZA4fYX+oe7Q0te1z0OSZwZSJaqHt/vVBlIDaL?=
 =?us-ascii?Q?0XhNALAvS6z+DbzSEpS1IPCoZVTZj0GD0qwMVjtTorMvR/gA8WcPhcjiDB3R?=
 =?us-ascii?Q?Ets8iqE9Oi2GRJKqT21Wr4QM9y0zY65adR402mziQwwdZzSIPX/SEEs4/SIv?=
 =?us-ascii?Q?GB5bShsuJUZ/voTF1KQ8gnx5NHt9nnLVLB9D/8iKm581Of4DMs4E81VJ3HWD?=
 =?us-ascii?Q?RBH0+uCSVnT+i38jOpCuTejiZjBG+qtpAVEQqO52m0GQ0b6gFi9BBpLD6OCu?=
 =?us-ascii?Q?V824bUYcNDG3ESo8RK2HmEyEWrvCi19t6f4NQroZSXGE8/cX+qmKiC0sfMlN?=
 =?us-ascii?Q?6nYbB8jFv+vM8zmKHS39xez15UOGpHy/p9p4q1FiOBhnIyOZZ6zXkLngZYsi?=
 =?us-ascii?Q?5o4F/o7/esKw8F0sDHhSK8ii2c/e3za7ebhIg14Mp1thasVmm4JO4+xN8SUy?=
 =?us-ascii?Q?AL0aORpm38Ot/thh9B8HqHGHueXPoJ6jOHjk51mNL898gR70OU1Cz2gpZ5L2?=
 =?us-ascii?Q?A9xf7nhyEY+bOsRBSA+pF37Ycg3fVlL3fHYXspzjPbwddSndhlXVZS6naHlO?=
 =?us-ascii?Q?Oe43LVS0H3zibxmYJ88GPGCKvTCPiMKRFrdJ/SkzNW8/WNrs+l59hvm6pfM7?=
 =?us-ascii?Q?wmzYXu+a8pw3fweJGWawYC1v8iZ0jc13LcWvbVHmZ5mqZKydwBPNSAYSDGVy?=
 =?us-ascii?Q?mzO0dGHNmLHAQyJobZQ1dGFsjL96C2BxBpjv5INf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae8ecc85-41a0-4db7-0c51-08db91d721b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:02:17.1863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G2ZLHwbrAeZ06n/ycNZ0Qvk/hOkTKhRLG9jsQnAiPlN74I3JYNBwud5PMev1KyH1kvbdJi1dUxzSg7yOABh72S91qZya2NKw6UT2R1PWBS8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7917
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 01/14] drm/i915/hsw: s/HSW/HASWELL for
 platform/subplatform defines
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, July 26, 2023 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH v1 01/14] drm/i915/hsw: s/HSW/HASWELL for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace HSW with HASWELL.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c          |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_device.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c             |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_pch_refclk.c     |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c                  |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c                  |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h                     | 12 ++++++------
>  drivers/gpu/drm/i915/soc/intel_pch.c                | 10 +++++-----
>  10 files changed, 19 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index dcc1f6941b60..f18e1f8ef22e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -470,7 +470,7 @@ static void hsw_get_cdclk(struct drm_i915_private
> *dev_priv,
>  		cdclk_config->cdclk =3D 450000;
>  	else if (freq =3D=3D LCPLL_CLK_FREQ_450)
>  		cdclk_config->cdclk =3D 450000;
> -	else if (IS_HSW_ULT(dev_priv))
> +	else if (IS_HASWELL_ULT(dev_priv))
>  		cdclk_config->cdclk =3D 337500;
>  	else
>  		cdclk_config->cdclk =3D 540000;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 43cba98f7753..6352c530bd7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7377,7 +7377,7 @@ static bool intel_ddi_crt_present(struct
> drm_i915_private *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >=3D 9)
>  		return false;
>=20
> -	if (IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
> +	if (IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
>  		return false;
>=20
>  	if (HAS_PCH_LPT_H(dev_priv) &&
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 3324bd453ca7..215e682bd8b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -54,7 +54,7 @@ struct drm_printer;
>  #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)-
> >has_gmch)
>  #define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >=3D 13 &&
> !IS_DGFX(i915))
>  #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
> -#define HAS_IPS(i915)			(IS_HSW_ULT(i915) ||
> IS_BROADWELL(i915))
> +#define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) ||
> IS_BROADWELL(i915))
>  #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
>  #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) ||
> DISPLAY_VER(i915) >=3D 14)
>  #define HAS_MSO(i915)			(DISPLAY_VER(i915) >=3D 12)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 03675620e3ea..f5407569300a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -510,7 +510,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {
>  		source_rates =3D skl_rates;
>  		size =3D ARRAY_SIZE(skl_rates);
> -	} else if ((IS_HASWELL(dev_priv) && !IS_HSW_ULX(dev_priv)) ||
> +	} else if ((IS_HASWELL(dev_priv) && !IS_HASWELL_ULX(dev_priv)) ||
>  		   IS_BROADWELL(dev_priv)) {
>  		source_rates =3D hsw_rates;
>  		size =3D ARRAY_SIZE(hsw_rates);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 6b2d8a1e2aa9..66afdb91fcdf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -927,7 +927,7 @@ static int hsw_ddi_wrpll_get_freq(struct
> drm_i915_private *dev_priv,
>  	switch (wrpll & WRPLL_REF_MASK) {
>  	case WRPLL_REF_SPECIAL_HSW:
>  		/* Muxed-SSC for BDW, non-SSC for non-ULT HSW. */
> -		if (IS_HASWELL(dev_priv) && !IS_HSW_ULT(dev_priv)) {
> +		if (IS_HASWELL(dev_priv) && !IS_HASWELL_ULT(dev_priv)) {
>  			refclk =3D dev_priv->display.dpll.ref_clks.nssc;
>  			break;
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> index f4c09cc37a5e..9583e86b602a 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -423,7 +423,7 @@ static bool wrpll_uses_pch_ssc(struct drm_i915_privat=
e
> *dev_priv,
>  	if ((ctl & WRPLL_REF_MASK) =3D=3D WRPLL_REF_PCH_SSC)
>  		return true;
>=20
> -	if ((IS_BROADWELL(dev_priv) || IS_HSW_ULT(dev_priv)) &&
> +	if ((IS_BROADWELL(dev_priv) || IS_HASWELL_ULT(dev_priv)) &&
>  	    (ctl & WRPLL_REF_MASK) =3D=3D WRPLL_REF_MUXED_SSC_BDW &&
>  	    (fuse_strap & HSW_CPU_SSC_ENABLE) =3D=3D 0)
>  		return true;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 02886c1eb0f1..9b736c118178 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -179,7 +179,7 @@ int intel_gt_init_hw(struct intel_gt *gt)
>  	if (IS_HASWELL(i915))
>  		intel_uncore_write(uncore,
>  				   HSW_MI_PREDICATE_RESULT_2,
> -				   IS_HSW_GT3(i915) ?
> +				   IS_HASWELL_GT3(i915) ?
>  				   LOWER_SLICE_ENABLED :
> LOWER_SLICE_DISABLED);
>=20
>  	/* Apply the GT workarounds... */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> index 294b022de22b..b870c0df081a 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -175,7 +175,7 @@ static void intel_detect_preproduction_hw(struct
> drm_i915_private *dev_priv)  {
>  	bool pre =3D false;
>=20
> -	pre |=3D IS_HSW_EARLY_SDV(dev_priv);
> +	pre |=3D IS_HASWELL_EARLY_SDV(dev_priv);
>  	pre |=3D IS_SKYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x6;
>  	pre |=3D IS_BROXTON(dev_priv) && INTEL_REVID(dev_priv) < 0xA;
>  	pre |=3D IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1; diff --
> git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h i=
ndex
> 682ef2b5c7d5..1003154ec71e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -592,7 +592,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPL)  #define IS_ADLP_RPLU(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPLU) -#define IS_HSW_EARLY_SDV(i915)
> (IS_HASWELL(i915) && \
> +#define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
>  				    (INTEL_DEVID(i915) & 0xFF00) =3D=3D 0x0C00)
> #define IS_BDW_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_BROADWELL,
> INTEL_SUBPLATFORM_ULT) @@ -600,14 +600,14 @@ IS_SUBPLATFORM(const
> struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_BROADWELL,
> INTEL_SUBPLATFORM_ULX)
>  #define IS_BDW_GT3(i915)	(IS_BROADWELL(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
> -#define IS_HSW_ULT(i915) \
> +#define IS_HASWELL_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
> -#define IS_HSW_GT3(i915)	(IS_HASWELL(i915) && \
> +#define IS_HASWELL_GT3(i915)	(IS_HASWELL(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
> -#define IS_HSW_GT1(i915)	(IS_HASWELL(i915) && \
> +#define IS_HASWELL_GT1(i915)	(IS_HASWELL(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 1)
>  /* ULX machines are also considered ULT. */ -#define IS_HSW_ULX(i915) \
> +#define IS_HASWELL_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
> #define IS_SKL_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
> @@ -861,7 +861,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>=20
>  /* DPF =3D=3D dynamic parity feature */
>  #define HAS_L3_DPF(i915) (INTEL_INFO(i915)->has_l3_dpf) -#define
> NUM_L3_SLICES(i915) (IS_HSW_GT3(i915) ? \
> +#define NUM_L3_SLICES(i915) (IS_HASWELL_GT3(i915) ? \
>  				 2 : HAS_L3_DPF(i915))
>=20
>  /* Only valid when HAS_DISPLAY() is true */ diff --git
> a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_p=
ch.c
> index ba9843cb1b13..bf829f85be7e 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -32,21 +32,21 @@ intel_pch_type(const struct drm_i915_private
> *dev_priv, unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL(dev_priv) &&
> !IS_BROADWELL(dev_priv));
>  		drm_WARN_ON(&dev_priv->drm,
> -			    IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
> +			    IS_HASWELL_ULT(dev_priv) ||
> IS_BDW_ULT(dev_priv));
>  		return PCH_LPT;
>  	case INTEL_PCH_LPT_LP_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint LP PCH\n");
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL(dev_priv) &&
> !IS_BROADWELL(dev_priv));
>  		drm_WARN_ON(&dev_priv->drm,
> -			    !IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
> +			    !IS_HASWELL_ULT(dev_priv) &&
> !IS_BDW_ULT(dev_priv));
>  		return PCH_LPT;
>  	case INTEL_PCH_WPT_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint PCH\n");
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL(dev_priv) &&
> !IS_BROADWELL(dev_priv));
>  		drm_WARN_ON(&dev_priv->drm,
> -			    IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
> +			    IS_HASWELL_ULT(dev_priv) ||
> IS_BDW_ULT(dev_priv));
>  		/* WPT is LPT compatible */
>  		return PCH_LPT;
>  	case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
> @@ -54,7 +54,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv,
> unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL(dev_priv) &&
> !IS_BROADWELL(dev_priv));
>  		drm_WARN_ON(&dev_priv->drm,
> -			    !IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
> +			    !IS_HASWELL_ULT(dev_priv) &&
> !IS_BDW_ULT(dev_priv));
>  		/* WPT is LPT compatible */
>  		return PCH_LPT;
>  	case INTEL_PCH_SPT_DEVICE_ID_TYPE:
> @@ -186,7 +186,7 @@ intel_virt_detect_pch(const struct drm_i915_private
> *dev_priv,
>  		id =3D INTEL_PCH_CNP_DEVICE_ID_TYPE;
>  	else if (IS_KABYLAKE(dev_priv) || IS_SKYLAKE(dev_priv))
>  		id =3D INTEL_PCH_SPT_DEVICE_ID_TYPE;
> -	else if (IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
> +	else if (IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
>  		id =3D INTEL_PCH_LPT_LP_DEVICE_ID_TYPE;
>  	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
>  		id =3D INTEL_PCH_LPT_DEVICE_ID_TYPE;
> --
> 2.34.1

