Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3AE59B839
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 06:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B2198A33;
	Mon, 22 Aug 2022 04:10:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6821E98A08
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 04:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661141415; x=1692677415;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xrxSGLXUOM5VECsLeTtVrMCno6P76pYfueaxIlxS7r4=;
 b=JFhcOhnJ1NIaFiEaP5wgU9oad2G/6DPe+d/877ietXtCjzu0c3wqpZg/
 mttZ7R37e+Qw/2x2iPhX/QTx90LVqk0rOcFBxMTTa6nQaqxdi8fOLJa9Z
 dvn3q8QW8M0znkfsZuLynlqMs77Lp4hNqHsFT5P5VGMFY9ur+LMzXucIF
 KnN3o/vmigeMatDrP+ILM7ytWnFqgQv6u7v+LGBhotowazXP71+UcCC0o
 0t+PHptFf+HU39Fmx/fG936a/Zhrt7v+Sfr5rN68hSAJAOwaPo1FU0/k5
 4SZRQNlPPGwEo09B452VT8C9CijcKDNdGSvr2k4my1m1NM1pqTK+DAPep g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="290871448"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="290871448"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2022 21:10:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="585349460"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 21 Aug 2022 21:10:14 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 21 Aug 2022 21:10:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 21 Aug 2022 21:10:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 21 Aug 2022 21:10:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0vMpS+9pPCya8hEpiXAd4Wybtjcp3brEgZ8ETCRDaTI3sppyjoM+Cbete2df6L5+guIzAG13eUE3/EhQ40Lwns9igWgBTxy6u6t1eGEXh8JZBcLCBnKgZl5B0Ep4hJI7Lf93zanOkdC0Yu9dL6/d2+n42V5SBGO3qk/Lva83wRKmIlGlh2h30tt8qjsFEixkwWL24trNqFRZ723s4KTLBy/UBVPGqKcBC5gCfLYId8TpGqS5SEsiAwp9HLofueAHdJXejuGYHhCvzZeECvBEvzfEMgFfN+usvkA8/ZTQc0Kbe6I61yMxla+xo2X2ekveWWTsA3D6LFDWTL2+Nj6+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5eT8n/CFouhPQD7gDwf86qerRPrgBgIYd0C6PUmUT0E=;
 b=mGT5HizqhEZ7EYSnYQqqzvSBTsL2FTAgZSrkaLbWd+9msfxSPXK+rLmUMTMYxDpxPl7K5zyjqD2GtbgWzUKg5/EF9FWpL/owtbW8I/Nozuh3u8+0YEmoyS8x+B6XwCikUY9/oBxzFvfu6oUT4NjBWhkU4k1nXDDLcqUU0Md3/sFOlexxFfaX1whriBcDiLrjUBdlT0jdOgHXK6KiYOT1atbN2RsxM60VC7C/SKXykZy58saggt9etWH9xZbFjTcTJW1hGOwo7mfCQw9fQ0k252Wd+vg5Kogq3+WRT9/sbe3uAaEaYgPW4n+DPJfQK9mSb6wh8UOF9P9ZasNw2jws8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH7PR11MB7027.namprd11.prod.outlook.com (2603:10b6:510:20a::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5546.21; Mon, 22 Aug 2022 04:10:11 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1%5]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 04:10:11 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 18/39] drm/i915: move overlay to
 display.overlay
Thread-Index: AQHYrZWE2Leme0Mx+0iAjgAiLfGg6q26XTnA
Date: Mon, 22 Aug 2022 04:10:11 +0000
Message-ID: <DM6PR11MB317747DBFEB3C2E9B525A2D5BA719@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <016bcb32b5c6348ee1c4b5d2bed48214ded8f227.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <016bcb32b5c6348ee1c4b5d2bed48214ded8f227.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fa7091b-c1bc-462f-a964-08da83f43503
x-ms-traffictypediagnostic: PH7PR11MB7027:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e5RRuTp289pnZ+ahp1Z7TedncvxEeguAg5YbpRzyLtto1iDKIItbz+p45S782wPhRqB+Tt9jDXwLdg1ZqaOA2ISe98QlO2Jd6LNsHcj0DAz7bkumyjfTqSjC9nqxOgnyWf1aCk6c41MGwjqXWzlXKGInfDgBlMZgx7Y/DouySkUwU1XiyfXJq5CiiMFLFsA7mKROebOQOEwcwcpWBQNO3mUTtAWl5jquco5bYLMywq/4P5T/CLi/njrRvkTzNzxoh8kO/g2L8C/Oja3BcR9Uc5yBIdjZMNC7htpru2BX6ZZhIF83QYUCaCBT+iecsmbTQ0MIYZ68UujU8WnxB+xigkatquYiRZhwuDC+Jn8ncNHeTBapaOdzMfqtos7rdxxjhZkQM+lEzb6M5XnZ9Us7/8i2R9c+vtkYbF9Je4NairN5AaTyfIXSCgQ0SsOeuwjDFvrtvjsSPVNlMwKOrFLFRfUg7HIwMXNw4F7UioEm1iHftH2sDgNux4eFRnXepw+NW4H1uMJu2BE6qEtveHxt0717H3/9z0xyBkQZD3RquHWWWRpg8ongTnrFiwUPMX9J49gzHYxZJWckJcvKc+uakryO7c5srPZwzhymZgQanHnEEexnWcTUhEgd2NOFgav/47YPeJMvgzJKz4jvH8P9Bty+rjj2O/NJ4SlhQkuhMsul5BHH2/hI9eP706fr4WQfsryGepv0PSYvA/eB93YogKePJYT3TcVodpeneGzDkHpEe9/45yRmOqovL1XgGCltT9mqLMZaY1Zb7BEtjv6C7xXZhnEbMYvJIeJr4N2cXyc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(396003)(136003)(366004)(376002)(66946007)(478600001)(66476007)(316002)(4326008)(66556008)(76116006)(110136005)(66446008)(64756008)(8676002)(71200400001)(5660300002)(107886003)(54906003)(53546011)(26005)(55236004)(2906002)(6506007)(7696005)(9686003)(41300700001)(186003)(83380400001)(55016003)(33656002)(38070700005)(82960400001)(86362001)(52536014)(8936002)(38100700002)(122000001)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kDPkPOfXoSyzpDxrL7GPjkYepfAay6Uxep3JN7G1aThfO1dMKKnW9AwV8kqf?=
 =?us-ascii?Q?bAfJkX0PycFs01Tp5oztOSivIpmyUjEW41exuhRXoDfhTg7/lwu6NwbvS3+u?=
 =?us-ascii?Q?T8E9BEE0T0eDbQRqFeVXRF18i9yiF38K+u040swKw18Ijh4rUfA9DloZvgRs?=
 =?us-ascii?Q?ShZ1J7LS31FruhrJje0212Sj92svBxP/Mopkkmg1JZgsD1zA4nK1ZQ8TrHnu?=
 =?us-ascii?Q?m3bfaPxyqLm1vnn6CYgfpr2bfbkDyUNLS7T/+rUkOKDySpICI4lYEZLRfqK6?=
 =?us-ascii?Q?ROqhVbYlIGoAzw7UXy91XDs8bKFaypTiZ2Gwk/odtPiwMArg7wp18qzP5ODu?=
 =?us-ascii?Q?Pn3fD5qlw3ShEGeqeKBh5FDbNBsDbUX2YvmSDTTLiCcp2DEI5AzgtyZn1a8W?=
 =?us-ascii?Q?ELNdEWw6qwArN7ohni/PIUu9sPjGtR/1ZqaWToUtdGpdhUw5kEXuPALzCLG1?=
 =?us-ascii?Q?MGUFy0QzPUZN3inn0BVvYEi+J5KVC0nZNkkGbppvWHLqe6Ns7XQN/KSZ7vO4?=
 =?us-ascii?Q?awfOlk4sgY9KcY7fD56nzfc3vztojrOrNtfuAOyvMJhZ0JXNlE2/CNAQdi4M?=
 =?us-ascii?Q?0dYwAzPzEsTWYemXddLvXls2/ozXMQ3Sl81h4ApfUFYDlOjfvvK8oGCFtmZ+?=
 =?us-ascii?Q?sxRjqD749OrJLtzFHl+E1Ziu3fEHaaftlf9SYMgXgI/Ct153N0Uaia9Xx+wP?=
 =?us-ascii?Q?zjS4UDM4LXW7UvPXpDK9yjAF8LoG+e1dfsePodIdu1r0i3EBEXxlYYLhx62a?=
 =?us-ascii?Q?dGl35RlTDWr4xrtuHVZu6g6LK6tzhjEAyPKd90YxB0/yTs/NrtfdZF5/0W80?=
 =?us-ascii?Q?1Wzwmhb7oi+ra5jMD2rXKBaM6UDSFJR1ab6lIG0rmB6VWsBf4LbBX4oGquGJ?=
 =?us-ascii?Q?0OQEkpdWEFnt51wJ/CJwkJigZtDtLfDUnrtK8zyL2VTwAtaVwCoBWlXF8Hs5?=
 =?us-ascii?Q?nBTlwzAgod/Q6Xe8V1lXgH/OHQbME40bOqMfnW+WFLFSCTpRIr1/lTU8V4/k?=
 =?us-ascii?Q?b7hEqvrGOqkb3Cs1hkRirCnYm4AONuygtVAT2LIu10+7S3Sqn8u3blJO8jm2?=
 =?us-ascii?Q?fwVtk4uNpqGM36sRHC9MMZBd8UA/NsWqPDEYIftfwsJ3E3iFVQQNVsb/m4Wz?=
 =?us-ascii?Q?ZYBJDF2EYTkOIx4vJyzplrhOeEHrbhchWJDL1DglaS13VzpIuhpiasiZvWpO?=
 =?us-ascii?Q?428mEdydmzJa0gPqxOBJLZ83YOze2Y+SW4uolF6+eY6aWjWieVuOaAva/RhH?=
 =?us-ascii?Q?EGRe/IE7C0T3o4Ph1GsIu1R7exLodX6MLTX7BOnJ+RjgaaqqZjWoSvS8d4Wr?=
 =?us-ascii?Q?tc2X1URj1FBkK2pT4lpGfztTpZkycwiGTdW7EKJ4R/gDEsABqVEm8o5wBsnE?=
 =?us-ascii?Q?8NGNQnIp4tyIkFS0oKNmZBxewqsFjQQL/pJDXpQ+I7K+WFl+IOytUMttL5VS?=
 =?us-ascii?Q?xY2JNAI1EZID2lUvkW8VAzVdp49Gt3ar6caswcKQn451fSL3Ecjc0eDb4ZZt?=
 =?us-ascii?Q?FDYNPwBQc7Is7FBrdDq+cmzQkSRjPweuvvPI8sdmDGi+tCl/Tm6qczDLKFGy?=
 =?us-ascii?Q?aOcKsPLeL+cAfWRwu9e68rr6RTIpmGu6AYPZ6QVr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa7091b-c1bc-462f-a964-08da83f43503
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 04:10:11.0881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rYseQYca2Q4nJcjYpFu3Pnovn4VMQmEN4TUPIJDZQQPTZvf7Phau06Ayc9sShs8WJ/7rlP7eJz5M5LnWRfgQQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7027
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 18/39] drm/i915: move overlay to
 display.overlay
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 18/39] drm/i915: move overlay to display.over=
lay
>=20
> Move display related members under drm_i915_private display sub-struct.
Please update the patch description!
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
Upon adding the above said updates
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>  drivers/gpu/drm/i915/display/intel_display_core.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_overlay.c      | 12 ++++++------
>  drivers/gpu/drm/i915/i915_drv.h                   |  4 ----
>  drivers/gpu/drm/i915/i915_getparam.c              |  2 +-
>  4 files changed, 9 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index cf31ad0c9593..a5cd3a3d440e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -33,6 +33,7 @@ struct intel_fbdev;
>  struct intel_fdi_funcs;
>  struct intel_hotplug_funcs;
>  struct intel_initial_plane_config;
> +struct intel_overlay;
>=20
>  struct intel_display_funcs {
>  	/* Returns the active state of the crtc, and if the crtc is active, @@ =
-
> 253,6 +254,7 @@ struct intel_display {
>  	struct intel_dmc dmc;
>  	struct intel_dpll dpll;
>  	struct intel_hotplug hotplug;
> +	struct intel_overlay *overlay;
>  	struct intel_wm wm;
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c
> b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 79ed8bd04a07..6f26f7f91925 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -487,7 +487,7 @@ static int intel_overlay_release_old_vid(struct
> intel_overlay *overlay)
>=20
>  void intel_overlay_reset(struct drm_i915_private *dev_priv)  {
> -	struct intel_overlay *overlay =3D dev_priv->overlay;
> +	struct intel_overlay *overlay =3D dev_priv->display.overlay;
>=20
>  	if (!overlay)
>  		return;
> @@ -1113,7 +1113,7 @@ int intel_overlay_put_image_ioctl(struct
> drm_device *dev, void *data,
>  	struct drm_i915_gem_object *new_bo;
>  	int ret;
>=20
> -	overlay =3D dev_priv->overlay;
> +	overlay =3D dev_priv->display.overlay;
>  	if (!overlay) {
>  		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
>  		return -ENODEV;
> @@ -1273,7 +1273,7 @@ int intel_overlay_attrs_ioctl(struct drm_device
> *dev, void *data,
>  	struct intel_overlay *overlay;
>  	int ret;
>=20
> -	overlay =3D dev_priv->overlay;
> +	overlay =3D dev_priv->display.overlay;
>  	if (!overlay) {
>  		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
>  		return -ENODEV;
> @@ -1416,7 +1416,7 @@ void intel_overlay_setup(struct drm_i915_private
> *dev_priv)
>  	update_polyphase_filter(overlay->regs);
>  	update_reg_attrs(overlay, overlay->regs);
>=20
> -	dev_priv->overlay =3D overlay;
> +	dev_priv->display.overlay =3D overlay;
>  	drm_info(&dev_priv->drm, "Initialized overlay support.\n");
>  	return;
>=20
> @@ -1428,7 +1428,7 @@ void intel_overlay_cleanup(struct
> drm_i915_private *dev_priv)  {
>  	struct intel_overlay *overlay;
>=20
> -	overlay =3D fetch_and_zero(&dev_priv->overlay);
> +	overlay =3D fetch_and_zero(&dev_priv->display.overlay);
>  	if (!overlay)
>  		return;
>=20
> @@ -1457,7 +1457,7 @@ struct intel_overlay_error_state {  struct
> intel_overlay_error_state *  intel_overlay_capture_error_state(struct
> drm_i915_private *dev_priv)  {
> -	struct intel_overlay *overlay =3D dev_priv->overlay;
> +	struct intel_overlay *overlay =3D dev_priv->display.overlay;
>  	struct intel_overlay_error_state *error;
>=20
>  	if (!overlay || !overlay->active)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index ef67a5322c2d..3637ee4ca088
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -82,7 +82,6 @@ struct intel_connector;  struct intel_dp;  struct
> intel_encoder;  struct intel_limit; -struct intel_overlay;  struct
> intel_overlay_error_state;  struct vlv_s0ix_state;
>=20
> @@ -342,9 +341,6 @@ struct drm_i915_private {
>=20
>  	bool preserve_bios_swizzle;
>=20
> -	/* overlay */
> -	struct intel_overlay *overlay;
> -
>  	/* backlight registers and fields in struct intel_panel */
>  	struct mutex backlight_lock;
>=20
> diff --git a/drivers/gpu/drm/i915/i915_getparam.c
> b/drivers/gpu/drm/i915/i915_getparam.c
> index 6fd15b39570c..342c8ca6414e 100644
> --- a/drivers/gpu/drm/i915/i915_getparam.c
> +++ b/drivers/gpu/drm/i915/i915_getparam.c
> @@ -36,7 +36,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void
> *data,
>  		value =3D to_gt(i915)->ggtt->num_fences;
>  		break;
>  	case I915_PARAM_HAS_OVERLAY:
> -		value =3D !!i915->overlay;
> +		value =3D !!i915->display.overlay;
>  		break;
>  	case I915_PARAM_HAS_BSD:
>  		value =3D !!intel_engine_lookup_user(i915,
> --
> 2.34.1

