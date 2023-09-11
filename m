Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 521D279A69B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:15:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C491910E07C;
	Mon, 11 Sep 2023 09:15:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 523D810E07C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 09:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694423704; x=1725959704;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1S2byKseFxnYdq2kb+Bggm1+URtlKhVQIA24TwZcSig=;
 b=fjhjeMtGRtg6g2i+qEvxD+UXy9oNtVi9j6rv7zeQMR7ApwGfEIBJlUyc
 F7QvzmElHm9i0Ld224NrI4DmDIgrsu50uR30oW5KOTnJxbchriTQYW+/P
 2LOaFN0MmD/vz9s6a+g0Cu4x1izS++vtiuqvAb1H7qoZbxUYum0yPxXSw
 4hGi2LqGJBCFI5NA58QDuRPytmob3kEeWfZEkFdMIyeYTc9mYKDzjIqU0
 sO/7/TBxoiC37hPjCaJ8lNuAXFRK5B8bs3ngzw45p6M7dJqlyEWwq39Pp
 fN04KKjNjkhcMJGn2n6Wuwkny0tvDsRO0BEpzSWvx+7H1gywM3P7SakE/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="409001793"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="409001793"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:15:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="813295154"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="813295154"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 02:15:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:15:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:15:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 02:15:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 02:15:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B7LlhsxKL5YzOQ7MEur+5X7YLfw/jUemsg7Gj0BjumpkwkgH9kWL6GokDdHAgs1Wz+rR8+UyzxDRZPF2HahLCnR8gdeJFtuy3oa00fwt/Ox4QlQlosr9tOzkM5y55oNhwXwNslL9efzBwuG7dBD3c3/zX0lzW2hYzBjdXmtugWsXy2WKLc8+UjcR1nf8Pk83h5/oYv5wWNxUdyRt4bKR7k2J/ws2LQAyr6rej7PWFPmzQMxgSt7museqQst1tyDXOz5KVgAl1eAA6g5NjNFDyKnAEa7IF/blkjQR0rxdw/3lsWr4zu5X+8ZdS3eYR6A3hwBX5NIk3ZpOpnQBu/3acA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J475EZ2N68r1V/V9McNXjA3pjE1MD0874Bs3o9gqE/E=;
 b=ktko3BiSkLnvrX8UJd4XcPbzdKi3joqecD/LJBgGons3pP6KRJXuz7NVA8EbHYYZUVGSDHp+kHOVrfGVGFd5zUH01+g9melAr8bvZCC/Q/NUl1TlmiYA9Gm6bNhDCFdc9hP2vvK73VpxXXBd63LUEmJz9cJSLzgWPGVoTnVo9wsmrMYgrtZd3XUuH/ejlp8ndG+SiaFlBR1CT5h8sSqrXsPP39TYOjrjndeZ6rKCfS7cTNTtfLf8M+GlYiVhAbKR5/pDFu4hCGvdwcNRbesOSGN6XB4MkKqNQGpXbR4H7o+FmggQIY5F9fbYCywrrFK7KjQ/2bSCAFh6nQLSTT5HTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7644.namprd11.prod.outlook.com (2603:10b6:510:26a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Mon, 11 Sep
 2023 09:15:01 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Mon, 11 Sep 2023
 09:15:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/8] drm/i915/display: Consider fractional vdsc bpp while
 computing m_n values
Thread-Index: AQHZ5G51cYoBhrzvSE6QCdF4/CrsZrAVV9gA
Date: Mon, 11 Sep 2023 09:15:01 +0000
Message-ID: <SN7PR11MB67500B4F3A4CF8BA67ADEE8EE3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-4-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230911050549.763538-4-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7644:EE_
x-ms-office365-filtering-correlation-id: 6ee7eaa5-a72b-46c2-7958-08dbb2a793de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uW24mkKIS2Ps8vRcbTc3gkfLoksD2SFqJ3dGFL1Umrh9frzaGqR3i+Z9lSR2vlEcoqCdEBXdHCznWLHNFl3vMVVJupvPBu8pkmPExR5qBqCc8NSiSUL4wd8rNCcWUbuBs3IpFeD3wtFrmRDOu0VX0DwtJAc3WerfgMXcIgmhlEaddaJaKKnu/E4IBWx+lBWN/Q05D0lAN4eCwe9ZD2MzcmWAY7RoMeazO8y8cHMAVXd5QL3wT2+k4A9lh5pvcwjLx1tgYaB3V2Jd4+6xUI6JJBo4wfpH4BGefQeGCPqWIzdk4DVifi8hEN0jt+IyH/dU75VIkQReEv42fL3Scq2/INfNL+NlOTGGusqu0KMZH3jdJ9R0pME8Q9uKvzzOZvLAlP0U0wEsDOd+v7xR0bPhdUYJbr1VI7FOaYP69AXhau4ntN706BoUy6QZS9iutm+xW5jJZE+MQiEQVSLBVF77pyqlVZ7eP6VZRtIJWkjYgQpUg+bZ3uasfdZzqMMNQ4lArweAf7hE1QMAXvQ95p6J0aQYBKtGi5tJ/FsCpp6jlKmQwtvUheO6U0cUf+6MqwiA/Lk0THVuWUmAL5OhgQrj/+6IYhPdMKP5iRlwzTyYpA4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(136003)(366004)(396003)(1800799009)(186009)(451199024)(2906002)(38100700002)(33656002)(5660300002)(82960400001)(52536014)(86362001)(38070700005)(122000001)(4326008)(8676002)(8936002)(55016003)(64756008)(54906003)(316002)(83380400001)(41300700001)(66446008)(66476007)(66556008)(76116006)(9686003)(66946007)(107886003)(26005)(6506007)(7696005)(110136005)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?k7XjRxdKT0edXEkqyElxZAxpy0Xoh5eLnCvkP5s0dIuc5DoHCD4jPdz327Ce?=
 =?us-ascii?Q?/Nu35AcdwIzksrgZpneQgTwz3zmtcftMDqwU18OBDpOUqO39C+CGAs2xL9GD?=
 =?us-ascii?Q?8Q9S6JE/Vk2UzLp+hjRWE+vFBXUfuftbWhfeAPYGZ8SBQ+P5LlYq/b0MXluA?=
 =?us-ascii?Q?eGs+O2gWfy8Gw6FyM6FPnvu3G6m/Mx7NvEnCnwx/kVMW4gvrtR+HnzivsYiX?=
 =?us-ascii?Q?I7/xqB6CrGUu93Pr9kuYfXo8PELryZSp2Owj+y7KiQEXu03CmB+j8dK+yf8T?=
 =?us-ascii?Q?vE0cG9oyVQUmRsMpWzXVieKQAl9c/0MrsmIrGF+PtYkn2e8ZI/qvKvi+xLFF?=
 =?us-ascii?Q?fSe3najuRpJ0/ESMtfdsvCLbnzjE3Q7SG11+S0EpyYY4tDHDywvBHLDxiudu?=
 =?us-ascii?Q?UyWw7HMrNEVzqptvOCT0Xn99WulmR24AgNltBqmdZEcA+yjt64r4+hsFCS6S?=
 =?us-ascii?Q?lSzh5J038BHrDeiykeL4VGNi7kYXH2wiSn1oA4x66dVusMGU8ABmOhMJrZ0S?=
 =?us-ascii?Q?zuAOKnU0h8zmCgiGdBfnhcfybABwmHQYbqzN8a65ztJ20/Sax2SpC/FqedRs?=
 =?us-ascii?Q?2+/4je9VSKjiLDst1XnRNz4bmSYLEPKKhYroHs0679BZOkAtQgWLPnTsHnhk?=
 =?us-ascii?Q?6LujrqcWmG9DajKWAT/vMutHvJ03Kk1OeInyOzsDukY0rIoUb38h74U/bjmf?=
 =?us-ascii?Q?W9oG52zojHzoQnXWIZePRv24xOZd5oUDrrZUaeufZVsQxlh/LXXOTSeM9P/z?=
 =?us-ascii?Q?KiXwRTAS3ds6KYvDVf7qaQTEgJxsZdGCjeWvVnJvdfW3bxsa0VyLYzmjrwrJ?=
 =?us-ascii?Q?1vg2FAOWcTSPezynlf7Cw/vqaLe+gDamc2x5ZmOu4N5BujiBRhJZwadP/pvJ?=
 =?us-ascii?Q?hfj6k8vXZleolI+NK9F/8pR3PH12jLAFMWfZsHLW+xm/3qFB71aYsy+yUqrm?=
 =?us-ascii?Q?tmDbxUJdak12hBv1rXWqFVSmsP+QxmvNOqnWoC3DUrGijZ3kuePNhZMHAuiS?=
 =?us-ascii?Q?R6rE+VuOXqpI9IN7Vv0T7cEgkEs96yz4qBYCXTqqu0pZ1/IyB1ldNy/jvPNM?=
 =?us-ascii?Q?fv49KuzBWg/HsrSww7M5s0TSkyUsrX9hFczwBEDhuTw62XKrJ1zhJCRSjCtW?=
 =?us-ascii?Q?diFFplS7qZmfHOMaHHNfKsXb7vXNO4tE0z8DjVdBE+tYMaH2Kld3MzZnD7Fi?=
 =?us-ascii?Q?c5a3riJYq/gvp3T4QTU5qrtwsvxftAT/YbAmPw750MvyZ0EjA6f+2A3tV/Vd?=
 =?us-ascii?Q?76qFvHvaxbzaC9JbLdZWlcbutI1gElwQ7DuWFA431zquy9QDhUwT0vGVh3eB?=
 =?us-ascii?Q?gi8zXQ+G8kCH6OWvU+0UzvmtjuTcu7R+h7QuA3UwvqeQUTJGhn6jwAGbQGqL?=
 =?us-ascii?Q?V+DJSdvOeBRZHsrH5ZoOfQCnNum+veFgIEa6Uw4uZ3f2/ocWAynICsXyq5BM?=
 =?us-ascii?Q?R/pdK8jsEo1i3M1cK1KMq2gQUmTYJrayGaia108Hv+RrdSbtfD/RB5FEmCUY?=
 =?us-ascii?Q?5eD7jM0fBG85eFD+qgI/4w7i7cp3lPOZYq7XOjuzeVnT10wLcUHlLj0h+eJV?=
 =?us-ascii?Q?Sb10JemIbKRNQmFcK365g/aq16EF2gRsBJVCicep?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ee7eaa5-a72b-46c2-7958-08dbb2a793de
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 09:15:01.3061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EtO02+XDcp/hu6i0hbeC4/1/B1uBKNUkJetU+chVW0b4Vv4ZPpeRhlN194lBOR1dMACP/RWUgneVJSqge/6ZCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7644
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/display: Consider fractional
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Subject: [PATCH 3/8] drm/i915/display: Consider fractional vdsc bpp while
> computing m_n values
>=20
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>=20
> MTL+ supports fractional compressed bits_per_pixel, with precision of
> 1/16. This compressed bpp is stored in U6.4 format.
> Accommodate this precision while computing m_n values.
>=20


LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
> drivers/gpu/drm/i915/display/intel_display.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 5 +++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 6 ++++--
>  drivers/gpu/drm/i915/display/intel_fdi.c     | 2 +-
>  5 files changed, 14 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index afcbdd4f105a..b37aeac961f4 100644
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
> +		data_clock =3D DIV_ROUND_UP(bits_per_pixel * pixel_clock, 16);
> +
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
> index 9b88ac3a73c7..d13fa2749eaf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2558,7 +2558,7 @@ intel_dp_drrs_compute_config(struct
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
> @@ -2737,7 +2737,8 @@ intel_dp_compute_config(struct intel_encoder
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
> index 68a81f10e772..68630925a0b9 100644
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
> @@ -265,7 +266,8 @@ static int intel_dp_dsc_mst_compute_link_config(struc=
t
> intel_encoder *encoder,
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
> 2.25.1

