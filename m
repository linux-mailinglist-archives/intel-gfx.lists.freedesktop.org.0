Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF79787564
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 18:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A1B10E025;
	Thu, 24 Aug 2023 16:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5761B10E025
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 16:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692894658; x=1724430658;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VQVK7ca+pBL+5w2lj5XEBFMTjOygKsyglCPXz2NO6Y4=;
 b=P/x0eZLZWDuZYqW1Df8PjaLJ2d6uL1cAS7w/IV/WdukCMS1Mac33d7eg
 BfjMaHC9lUhQR/z84qmi/PHjSMhZ2q1KAKwU3KpByMcpLWGTv3g78wdJ1
 c7fiNMXgE2SOr4ej8XHS7pVre9QTd2deMV+3z+9EB4Nl45ps8LLXVgkYO
 PAIYRoVv9bSrza4CTKJU29bgQiNXM/S33aCsAEeJPCSAihL6hnLFvdPRN
 dc0xsPiIUUmI6Uaof1rRvGvvf45nfGhT1PT+HFHaRjFPsUaZekwXNhVUn
 OytTFfCNmtNjR2Z0GwyBw/coJL+X2wLcFjkomwl/DZbl7SFGRzcYYQFem A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="460850488"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="460850488"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 09:20:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="772148937"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="772148937"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 24 Aug 2023 09:20:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:20:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 09:20:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 09:20:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JfiVOJHzGHDKs3bsG+zTPIFz18BMROljkTC5bAGoQp3vxjR7bq/rw75Fxci2Ij70+uEMZvF4fmZJGWTErUzA7HTEtat65t6UeM7EAR8S5Y1ZFxPm8G1AOuTfTealdyiqc5Cj0vr4mGvi7rzMx8nWbbcuZxfunvDe9jQz5Tbzk26ctcJN4BOr2U05FTL3E9UKQsG4skk/Wnib4jSWOMOfs6FUVnGpEEHgBb4gKxtDskz8/rmOfEGIbNO2rCTicXK9LpS7S9Kb/ngiJQMrQZ4aTVO6l2LvHQSzRPvGWo541ehy+6YO4TwToAHv76XPc1Mu6/vMAaeCgSvXpXclD+iY1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e7U53vv+GHNYcDFi+pErBh67mb34gtaoP5cPwYzKQ28=;
 b=PBV1VYDrAu4Xo684HK8syzbhTzdqaNSgvsKpSyYHke42/4D/+JtyBhBkRzOCBpKEJ6EPrEQXXaFTcKjt8O7Xz7VHryELPqM8rS+grcqeyvuRRNRuap75xl5Vp3bH4NLkIS9AZeZWP9kP68AJyq4CNbt8Vgr04IvWeCqykitFPki0zabAzSn95rNWpZBZH46eOl+dO6VqxM2j/Tu0V18b2Lp60JskY9fnxtaG1zVCUBNW3z8A4YAimizH6yU6MRnDafWSaMpEL6/YALU3m6L/4A1gh19UZizeGYpA0nKEXXB1iYjRDDv5cqlCbcIoIvy2SMqwClUl2WhKAVa78zLMRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 16:20:39 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 16:20:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/9] drm/i915/display: Consider fractional
 vdsc bpp while computing m_n values
Thread-Index: AQHZ1PIp8dArFtneGUS/K28fyffZPa/5I3PQ
Date: Thu, 24 Aug 2023 16:20:39 +0000
Message-ID: <SN7PR11MB6750EE27BC51FC02D49B8878E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
 <20230822121033.597447-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230822121033.597447-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM8PR11MB5621:EE_
x-ms-office365-filtering-correlation-id: a66b3557-a638-421e-2676-08dba4be0e84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 78qNmZi+cQDhIIlw1k0fmZUwFxNfc8PW13YB44MqwsBw7go1uKNfxWoUqjK2bT22pcw0wkK3Ju7vn4KnwGsxayqpltpmUQFYxTI9stI7arzUhBqyUCmSOsBCRWvulXihrFB3HY4UA2BoDjz8/a5KL4k5Ad7RPIg1rP+CJXyymWqo+P0m5kQQRw4b8DWzhiHmUDq6u+ArlU4T4RM9f3UBOdXIWTUGP+70V3+cudJNnBYYmOYvUuHnlqg9uz0OhuixiOgwEpKP/kWISyASpqpwZvSU1NNJxX5v6If8aQ42SJWJ1L1p2KWq0wbx+RQvMIw8Cq2yflkDeFry0kD25P57a4rXnM52uGCz7J5zedCuEeLbsSwCUwAPGI/ry0J39xZ7cCA2O6hETbOJ/en3hK1fLg3SPMbWBBSDTq0MvykNU0FiQS1sIHnkMPeHpWSokKRftM9IWRbNyidw5t09cJ3bzPKnHsLFREBHSwTCEaXq6PxUxyZImtLkTpD/qu4RFDv7clKTVZ2GbCYqW4RM8XgdLUrl4koFyzSFjcn7VyB5JxHhkbIjLX9zkS7AF5xijLDI9P7HgsAAC7jQuOXRSlERMLc4AYad86NuQJ5TGYyb4gA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(396003)(376002)(136003)(186009)(1800799009)(451199024)(66946007)(26005)(83380400001)(9686003)(107886003)(41300700001)(66556008)(66446008)(66476007)(2906002)(316002)(76116006)(52536014)(5660300002)(8936002)(4326008)(110136005)(8676002)(478600001)(6506007)(71200400001)(7696005)(55016003)(64756008)(82960400001)(33656002)(86362001)(122000001)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GbrqA7Ybnlp2v7H9ct6VL3kpqdFVR/N+APtwd1tlqUp52/qMGCz5xuA5b7JL?=
 =?us-ascii?Q?2fdj49zLWSrnfcy669LgYAkY18Z5SB21dfFhlANfBvynlEWyyi/iFQtGf8bc?=
 =?us-ascii?Q?oUOaQJB/s3pv4pJUaD4WCnK/vAkaRZ1bupKngiLnHbx45cPgqIZzM/sDX21M?=
 =?us-ascii?Q?nBlYvPpDEVk5UrpmIAlLsWtGSKZ0B2+2M+WORQ1/QhFfeU0pSkEO+O6Hzhu4?=
 =?us-ascii?Q?D/vwZ/qw4BiGm0rDY2CwA1jDCGTSXKURwZ28Bd6vxVRsvGWjZy5m6YO0dSB4?=
 =?us-ascii?Q?WuzUXKKxYXBW6VPSa6J32KZfJvZ6CK36XhnCnAlQxG6yaVxVafaVJK+pHHAf?=
 =?us-ascii?Q?XBJKQRY9HdxG6LILUngjZ4uNs9jfhUb0h1RYKAUwAr3/qxwXI4VvomhyQbJL?=
 =?us-ascii?Q?s6zprClbb9VeyjVYSVUnRa062DAvGdkMy8TQsAdL8isJvZkjUcn17iUkUSap?=
 =?us-ascii?Q?SAVNs4f2PQVG7o/rF+fPbjHx6x5908MTz7E0LpyQhFSpo45DdAe1LJJ0+QDG?=
 =?us-ascii?Q?C2AaWaS4GsLPEyXsbcDtZ4RtuxckPrr8DvE3rLSH8i/y7jmI4TL6tplNvv6f?=
 =?us-ascii?Q?J3ctufxLYRm9N5FBgjh1ql5guSl82EmQWkVQTJz5ZL+dlW2BHBaFvIq97VxD?=
 =?us-ascii?Q?FRoEsqUfy2pCEzrhRwyIiwPHJYZ5wSZ5fKtZ75JMbLzGiL3Ytkd2Sb3YdJl1?=
 =?us-ascii?Q?ZKuc/HNCYaNNUT1Zo8w4vaDQ3zTkwizBtHZSHf1R50R+lxA2U58+VwUb/Hem?=
 =?us-ascii?Q?uGbNN29E1tC5UtlbZMso/gkZAxuGvp44jV81zYRA4Dj/PyRwOqf3urkeFEt0?=
 =?us-ascii?Q?pMeCC08gWgtZd4sgO6UMvREuhf1VfBoKSuSx94QAzvZvkdhLvfwP90JWy1a4?=
 =?us-ascii?Q?fJuCtZwRA5F67lJewNmTmNSGwO0QQmPVGi/y3WYZVAyMV6e9QDQl4OdDEGMo?=
 =?us-ascii?Q?JZ+Cd+FgogSeerxJmkHx9U0LyGfSeG5qgEByLEBI28Cc1ymPpkzbEexasEeM?=
 =?us-ascii?Q?L3aDsYfBCEP8G8FYWfqscbJYPBw7kxfEz4evl/XykezRKkNp8g83L6Q2WjuD?=
 =?us-ascii?Q?DodX91Jw6e7yt520aKtr30KDh/5bp77y9At4jn5CP2b6YVQxLfXjVmmMGt8X?=
 =?us-ascii?Q?0b/29vBwrDBmy3NTVgfzXHrDytik1ylclta0WwUxALcf4AR/qv2mzVSe5pN7?=
 =?us-ascii?Q?2wWo2o+f81EELIR/W3nLrRC2mUPLM34Xq/GN6Yx35+VgfcsSKmkUggVaSm42?=
 =?us-ascii?Q?5rGFIasHx95/Y8G6C/ZEFU7dAYaMpUY72xW1TbyqUgpduGbOR9FVUXQsDPt8?=
 =?us-ascii?Q?EIg+WyrFfSp+yA08U0xsYQemnyDIalu2EXJCa5EqHpx+R3isGnbSl02ybzXy?=
 =?us-ascii?Q?Q+INa/jJVC2DxpZ1sbQkUFt/RaG2NXarZKxrowD2wbrYDp8hlqptVVXZhEx9?=
 =?us-ascii?Q?WooMhz3xm1LTz3ycwPZbcYjIFNh6916a4oVp2CdsQ2mxJeEQIpNY6vTs+QLc?=
 =?us-ascii?Q?aKuWfBjMQeSWdR1QTFT3ZiCVOBLq9H3bL1rap2GMS4lNETqWMLxZtvnPSgvG?=
 =?us-ascii?Q?7bTqmVV48dCKpg9ApP5SpfenujRDuz7TRLkb/VXf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a66b3557-a638-421e-2676-08dba4be0e84
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 16:20:39.7068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pWUGowwFaYZY6PqOtAHB5dtWr1E7fC/B6pu+AgJWx5uhDeb27HC03xhRUYHTy1hNkux7jDIOeuY+upOFOK35Hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5621
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/display: Consider fractional
 vdsc bpp while computing m_n values
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
Cc: "manasi.d.navare@intel.com" <manasi.d.navare@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Subject: [Intel-gfx] [PATCH 3/9] drm/i915/display: Consider fractional vd=
sc
> bpp while computing m_n values
>=20
> MTL+ supports fractional compressed bits_per_pixel, with precision of
> 1/16. This compressed bpp is stored in U6.4 format.
> Accommodate this precision while computing m_n values.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
> drivers/gpu/drm/i915/display/intel_display.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 7 ++++---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 6 ++++--
>  drivers/gpu/drm/i915/display/intel_fdi.c     | 2 +-
>  5 files changed, 15 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 8c81206ce90d..9af36e600c87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2380,10 +2380,14 @@ void
>  intel_link_compute_m_n(u16 bits_per_pixel, int nlanes,
>  		       int pixel_clock, int link_clock,
>  		       struct intel_link_m_n *m_n,
> -		       bool fec_enable)
> +		       bool fec_enable,
> +		       bool is_dsc_fractional_bpp)
>  {
>  	u32 data_clock =3D bits_per_pixel * pixel_clock;
>=20
> +	if (is_dsc_fractional_bpp)
> +		data_clock =3D DIV_ROUND_UP(bits_per_pixel * pixel_clock,
> 16);
> +

Is there any mention of this in bspec or dsc spec if so can you add that in=
 commit message.

>  	if (fec_enable)
>  		data_clock =3D intel_dp_mode_to_fec_clock(data_clock);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 49ac8473b988..a4c4ca3cad65 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -398,7 +398,7 @@ u8 intel_calc_active_pipes(struct intel_atomic_state
> *state,  void intel_link_compute_m_n(u16 bpp, int nlanes,
>  			    int pixel_clock, int link_clock,
>  			    struct intel_link_m_n *m_n,
> -			    bool fec_enable);
> +			    bool fec_enable, bool is_dsc_fractional_bpp);
>  u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>  			      u32 pixel_format, u64 modifier);  enum
> drm_mode_status diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 32d0bee11f53..436889c601b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2557,7 +2557,7 @@ intel_dp_drrs_compute_config(struct
> intel_connector *connector,
>=20
>  	intel_link_compute_m_n(link_bpp, pipe_config->lane_count,
> pixel_clock,
>  			       pipe_config->port_clock, &pipe_config-
> >dp_m2_n2,
> -			       pipe_config->fec_enable);
> +			       pipe_config->fec_enable, false);
>=20
>  	/* FIXME: abstract this better */
>  	if (pipe_config->splitter.enable)
> @@ -2703,7 +2703,7 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
>  		intel_dp_limited_color_range(pipe_config, conn_state);
>=20
>  	if (pipe_config->dsc.compression_enable)
> -		link_bpp =3D dsc_integral_compressed_bpp(pipe_config-
> >dsc.compressed_bpp);
> +		link_bpp =3D pipe_config->dsc.compressed_bpp;

In the second patch you added this but you end up deleting it here
which I believe is a mistake

Regards,
Suraj Kandpal

>  	else
>  		link_bpp =3D intel_dp_output_bpp(pipe_config-
> >output_format,
>  					       pipe_config->pipe_bpp);
> @@ -2735,7 +2735,8 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
>  			       adjusted_mode->crtc_clock,
>  			       pipe_config->port_clock,
>  			       &pipe_config->dp_m_n,
> -			       pipe_config->fec_enable);
> +			       pipe_config->fec_enable,
> +			       pipe_config->dsc.compression_enable);
>=20
>  	/* FIXME: abstract this better */
>  	if (pipe_config->splitter.enable)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 3eb085fbc7c8..e224eebe7c17 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -171,7 +171,8 @@ static int intel_dp_mst_compute_link_config(struct
> intel_encoder *encoder,
>  			       adjusted_mode->crtc_clock,
>  			       crtc_state->port_clock,
>  			       &crtc_state->dp_m_n,
> -			       crtc_state->fec_enable);
> +			       crtc_state->fec_enable,
> +			       false);
>  	crtc_state->dp_m_n.tu =3D slots;
>=20
>  	return 0;
> @@ -265,7 +266,8 @@ static int
> intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  			       adjusted_mode->crtc_clock,
>  			       crtc_state->port_clock,
>  			       &crtc_state->dp_m_n,
> -			       crtc_state->fec_enable);
> +			       crtc_state->fec_enable,
> +			       crtc_state->dsc.compression_enable);
>  	crtc_state->dp_m_n.tu =3D slots;
>=20
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c
> b/drivers/gpu/drm/i915/display/intel_fdi.c
> index e12b46a84fa1..15fddabf7c2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -259,7 +259,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
>  	pipe_config->fdi_lanes =3D lane;
>=20
>  	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
> -			       link_bw, &pipe_config->fdi_m_n, false);
> +			       link_bw, &pipe_config->fdi_m_n, false, false);
>=20
>  	ret =3D ilk_check_fdi_lanes(dev, crtc->pipe, pipe_config);
>  	if (ret =3D=3D -EDEADLK)
> --
> 2.40.1

