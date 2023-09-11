Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E82579A6A1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:17:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A298610E1A0;
	Mon, 11 Sep 2023 09:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3EF010E1A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 09:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694423850; x=1725959850;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kW4cgDK0WjFZFUQQtAimvncWeN8ES/rBl7u+05vLNUk=;
 b=kbTB1bWiLq/ncudLa49BDDzjncZXOd9S171Yt8ClmHrp+1CX1PUhLPO2
 A2IFmreK+M29f7QAzrzZiNIoAEwLDmZLiggCPGrt+YTbGbdhvTlFqOVrY
 aB1Z5fWlVLt7e1Pq01mLYFuGne5jzEqkpa9fBSi9N7ryFFNzaU+4tr79n
 QlbY21yVuRfCRhnflGshJmBI+m33Po0Vw0JqngLkMP1dow37ReegzY54P
 g0RjDbOi3afmy7nv2L/ZqRGI6UcnkD9frJbCxHMskk18xrhoqQ7zSYDZb
 2VZyMqRMKWckLjlYiVZ/2z0GiVKXeAvI979uagAIFmFTDR3e4LAHL2AAc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="358339723"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="358339723"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:17:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="808772376"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="808772376"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 02:17:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:17:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:17:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 02:17:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 02:17:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fglTGfz/ERL3k5ssH6LQbnrpcv9v1KJr3VJnOFEA8YsOcqXrw5xopiVbW84bQQGK7Dga8yplLBlsIMK8VDuV8laALq87uqnd2YwpFRtJoqEmGWpMrzGJTU++3eC0Jx34zuztFY77I3OEQsia6pWmENjAzBg1Ow7e28GrFvQDlBaOw2rjaA+xL/JLBV7xbOAQSjOyaz3D97AY+/EVQhB+VW1daYxVQKTltoFPS9K4kEpIJE9cZFwNEDuv6+q1U4YaqPYyctQz9qYUgV5Gm0P72X/tQzExSsnztEgJnAc3RBnJVvFucl9ic0PbWlyddxMhl9S5eDUx055C2jLLFUS4Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4rkkKEY5jiRbv+pRgMCA07laMu4GZbTalbWQsecI0gk=;
 b=f5aGX1uuTZKzAvqV2CEDhn5GiY41Qf/ybPL85DqxLxenPg7AIwiq7CTYg4WTbeBCVA0N7GlnS0uRb8MfuqN0cmlXvAto7aCIJD/pTbhJCBFwnri0RpS37GKG5GUnhrJBkznfuguRX7w/kjDcbxMx9XlgpQB8Qnlc0JdkijXo3nkeIuz2ccO9EJ6vpgwSQHgjIRAelPEfmeYV+lLJ0p2PkpnUuz7TiinGK374/KtX2Uk71MXMcAkGMn5wYLHRlN59kqrVw5BzrQkO3hkbhY8BiKtdj8Ct4FflIcb+7gReSsxCuKu5MBuj3g3tAA8VtvYDQMmlzNE6gyw8i/YojgInlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM6PR11MB4659.namprd11.prod.outlook.com (2603:10b6:5:2a5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Mon, 11 Sep
 2023 09:17:24 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Mon, 11 Sep 2023
 09:17:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/8] drm/i915/display: Store compressed bpp in U6.4 format
Thread-Index: AQHZ5G51lJptsI5ZnEWtbIBMJ2ErS7AVUfhQgAAGmAA=
Date: Mon, 11 Sep 2023 09:17:23 +0000
Message-ID: <SN7PR11MB67506411532EF0079015B1D2E3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-3-mitulkumar.ajitkumar.golani@intel.com>
 <SN7PR11MB67505DD1563CACEA47B05F53E3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67505DD1563CACEA47B05F53E3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM6PR11MB4659:EE_
x-ms-office365-filtering-correlation-id: 1ae0a4be-1537-4447-a000-08dbb2a7e893
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pf40erDUMsU60PBOHEFvbzLMp7+5UUwTTRqfZCwYwjHq5YdjTGssp5ViLdSpCRrXFNdL36Ct8Ap3yQZcCG94hPEfacSMsdZ7p3TIpQZkHalSEtP1BeBWtkO9QP5qkn2pVB5l88TdnnYiWqhUo2+4+FYY5EvWiCyhaP2w1qs3ETLcwW7NRi6Tz6B6VZQQQQGjOI6CM/Uq/bD0PCXn28tPedg1fLkvDlqsYF/ca0HHx1idb3SgLx24dZ1DkW+Ewpww/OEj6X14F2nPkyx1nKLFopWUAzCk+TcJxgTfbZHh+zcBmrBbgpnEwAWHfOpEZNuOa/qqsGo3QQbRJOOuIBdKA/n3gutAY5ZbUAtfn876Z5xzHFVjzLVWvY4iMSyzzUcmKn8an54pPCVeTaVkkTWUwfDs/uHU0gTCSFQlFwcmKWWm0LZmEk/6JKCJ0l4dOFQOwVO0u8okiNK+++1SYiZxnIaGkUp10LbI1mmv1R0a0IAcIHSyCDKRZzE3wuXe7xuxfuu1xmvOjTdhAtYbr6l4oLqKzyF9OqUeHai9dDE7NLsXbsuVsQyfUfMypiCd25/TNFN1haEN1tYzNvkDS0JCv5Czyt7jtyE5frSGkPhYztI8JLWUws5WiRFOXxDu4zwS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(136003)(366004)(346002)(1800799009)(186009)(451199024)(110136005)(7696005)(6506007)(71200400001)(9686003)(478600001)(83380400001)(107886003)(26005)(30864003)(2940100002)(54906003)(64756008)(66446008)(66476007)(66556008)(66946007)(4326008)(76116006)(316002)(2906002)(52536014)(41300700001)(5660300002)(8676002)(8936002)(33656002)(82960400001)(86362001)(55016003)(38070700005)(38100700002)(122000001)(66899024);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6CLZYQNjN7RNstzOuNhkfg3p5rztDDYUTdcIaHANIt1UKY8XIQUsa2+mB2P9?=
 =?us-ascii?Q?SvQHFsCPrI+sXXx64zTW/hLSClXKfrDc9gUIV/n5bgFK2kPHdNI9iOBQigg4?=
 =?us-ascii?Q?DT8ga1JGzFnpyStPSpgfTsPlFp7QwUMQmmG+SNUjQUnmhFDagPDQKzk0LzXs?=
 =?us-ascii?Q?BKGXoQl9gNdtnFZtzSkaq76ZhDONjfhQFQGA7s+tD3F4TfiEjitrw75VWv93?=
 =?us-ascii?Q?yiIz279Fb+GF6muzxD1JLizc5XZ3VllNh/zJutXdjTpvcHYLImTLAORprFzz?=
 =?us-ascii?Q?NQYReAP1rnqvXmKPr2tBuwOfLJliAvpDtOx44z5/7iaZTRmUisCCJKwoHiJH?=
 =?us-ascii?Q?f8IfaO9XTxPg9QWoix22VwqyVJ9NGJGxrDZKiPhgiFloccZTuAbzA2aFCrdb?=
 =?us-ascii?Q?G8iObmnbkOjPpxYqRy0DQsSL+f5IzKUl2eJRlGgEaBumyW+Qh61cweTx3KPV?=
 =?us-ascii?Q?c2B0fvAn4doMpz9pBIIRgzgIuHf29J0+zPcQ0Xtcja5IT+94M+J4uycXoe5a?=
 =?us-ascii?Q?WnR9XSD+EEsATiVo2AzRpITBtkhwciuH5VzoHhzfVm4xhi2EllQygHG9QE46?=
 =?us-ascii?Q?MN4fj5xY8848ZCBu+p5s4nua26tad55kKnfIJiOQYBP/qd3qkY8Kyh0+XFg0?=
 =?us-ascii?Q?cpOAw3YfmHQ+Srk0zm8X/5dlv+cVGI7yuaR/d6oXJe4JKt4qhDcgFq6CbIgh?=
 =?us-ascii?Q?NrRVFRchuUVcFk003/7ULa/s7f5rEnocFPiWG+5cr329Sk6JE1Oxfzg9g/WI?=
 =?us-ascii?Q?JOctXy9g8Y/QOKUFWhYbbSKsnVR1EUiJ0onJARwsPic2VSW6WcDAaE6R1BXI?=
 =?us-ascii?Q?fayTGAUVAzZn2Z1Qn/C4G6G3Z6eoUEnTFlD6Jj8nsrjhbAu4E//OaGDBmzmN?=
 =?us-ascii?Q?GiVJ8aQ53K7z3VYzJk+2NPyPwsCW8oBiGYI8e+zQ1sqFvA9eFcsIIbeYzN5/?=
 =?us-ascii?Q?GMYxjmApTkDXyZy5miaCsGCMGrF85p4vUQY1XIqJPFBIUQnnlPx/mfaCGR0A?=
 =?us-ascii?Q?nEtnvXzKgc0yuIKG2+knhQAxj9g1jLAcpPYEu0h3HBJEEN8/u2Zp2KCtWA5G?=
 =?us-ascii?Q?toCpuJxS530I131u4eAZB2cVuYO8M5FUXA3lUEbSaxa0Ia4m7TXcl3UiCVJ6?=
 =?us-ascii?Q?fQq6j5yd2jrZymfm/ZVxA+JYfBImTzZX/sAhx0exn30ffMKYtM9Q83EMQAdp?=
 =?us-ascii?Q?6o64smjPyZM/FHW4M6Hktjoyq5taXIZQ4NtBxlKQkRejN0a+9BXq5gE9RTBL?=
 =?us-ascii?Q?9g615XhcEUjMMDd4ieXiL09h2Z7bYkcLXU2dSexB5j0EV9LZIrqBapqAhVv4?=
 =?us-ascii?Q?AdwoQQCREBXRRp49smxh983kgo8aNiEvsGwiOqsB57M1Eb0SFTs107xIySJw?=
 =?us-ascii?Q?+S0DDatSDB7vKbub5YTdRmdLWlstQaUAPW9cWvLPpkQlUqkL/Z2jQAJAEIlz?=
 =?us-ascii?Q?YXNarXXpg2b7IjOom0CQI/Z8pWyr9s+b/+cAN1T7WycbaZmmv7e6EzDzrUgQ?=
 =?us-ascii?Q?CBEqJCLMrh/PcYEapq5dwQKun8lhTo96oNcAry8svVcJgh8h0kN9K/bs+lBP?=
 =?us-ascii?Q?QFULxkHmqtbd5PEqrB0OXUCMW7u21EEtb2ukYWB8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ae0a4be-1537-4447-a000-08dbb2a7e893
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 09:17:23.4223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O7Oc7iZJyAAa/keuQiYIRQDCu+bZfDHy4Ws7cbrZWkGeC9NFWBWyaQ8GrCy6Edu8pSlciFqU7midrkK7Wg98gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4659
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/display: Store compressed bpp
 in U6.4 format
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

> Subject: RE: [PATCH 2/8] drm/i915/display: Store compressed bpp in U6.4
> format
>=20
> > Subject: [PATCH 2/8] drm/i915/display: Store compressed bpp in U6.4
> > format
> >
> > From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >
> > DSC parameter bits_per_pixel is stored in U6.4 format.
> > The 4 bits represent the fractional part of the bpp.
> > Currently we use compressed_bpp member of dsc structure to store only
> > the integral part of the bits_per_pixel.
> > To store the full bits_per_pixel along with the fractional part,
> > compressed_bpp is changed to store bpp in U6.4 formats. Intergral part
> > is retrieved by simply right shifting the member compressed_bpp by 4.
> >
> > v2:
> > -Use to_bpp_int, to_bpp_frac_dec, to_bpp_x16 helpers while dealing
> > with compressed bpp. (Suraj) -Fix comment styling. (Suraj)
> >
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c        | 10 ++++----
> >  drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_bios.c     |  4 +--
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
> >  .../drm/i915/display/intel_display_types.h    | 18 ++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 25 +++++++++++--------
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 18 ++++++-------
> >  drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +--
> >  9 files changed, 52 insertions(+), 33 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index ad6488e9c2b2..df98f35bbcda 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -330,7 +330,7 @@ static int afe_clk(struct intel_encoder *encoder,
> >  	int bpp;
> >
> >  	if (crtc_state->dsc.compression_enable)
> > -		bpp =3D crtc_state->dsc.compressed_bpp;
> > +		bpp =3D to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
> >  	else
> >  		bpp =3D mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
> >
> > @@ -860,7 +860,7 @@ gen11_dsi_set_transcoder_timings(struct
> > intel_encoder *encoder,
> >  	 * compressed and non-compressed bpp.
> >  	 */
> >  	if (crtc_state->dsc.compression_enable) {
> > -		mul =3D crtc_state->dsc.compressed_bpp;
> > +		mul =3D to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
> >  		div =3D mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
> >  	}
> >
> > @@ -884,7 +884,7 @@ gen11_dsi_set_transcoder_timings(struct
> > intel_encoder *encoder,
> >  		int bpp, line_time_us, byte_clk_period_ns;
> >
> >  		if (crtc_state->dsc.compression_enable)
> > -			bpp =3D crtc_state->dsc.compressed_bpp;
> > +			bpp =3D to_bpp_int(crtc_state-
> > >dsc.compressed_bpp_x16);
> >  		else
> >  			bpp =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> > >pixel_format);
> >
> > @@ -1451,8 +1451,8 @@ static void gen11_dsi_get_timings(struct
> > intel_encoder *encoder,
> >  	struct drm_display_mode *adjusted_mode =3D
> >  					&pipe_config->hw.adjusted_mode;
> >
> > -	if (pipe_config->dsc.compressed_bpp) {
> > -		int div =3D pipe_config->dsc.compressed_bpp;
> > +	if (pipe_config->dsc.compressed_bpp_x16) {
> > +		int div =3D to_bpp_int(pipe_config->dsc.compressed_bpp_x16);
> >  		int mul =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> > >pixel_format);
> >
> >  		adjusted_mode->crtc_htotal =3D
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 19605264a35c..aa93ccd6c2aa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -528,7 +528,7 @@ static unsigned int calc_hblank_early_prog(struct
> > intel_encoder *encoder,
> >  	h_active =3D crtc_state->hw.adjusted_mode.crtc_hdisplay;
> >  	h_total =3D crtc_state->hw.adjusted_mode.crtc_htotal;
> >  	pixel_clk =3D crtc_state->hw.adjusted_mode.crtc_clock;
> > -	vdsc_bpp =3D crtc_state->dsc.compressed_bpp;
> > +	vdsc_bpp =3D to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
> >  	cdclk =3D i915->display.cdclk.hw.cdclk;
> >  	/* fec=3D 0.972261, using rounding multiplier of 1000000 */
> >  	fec_coeff =3D 972261;
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 858c959f7bab..7b6d299fbcf2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -3384,8 +3384,8 @@ static void fill_dsc(struct intel_crtc_state
> > *crtc_state,
> >
> >  	crtc_state->pipe_bpp =3D bpc * 3;
> >
> > -	crtc_state->dsc.compressed_bpp =3D min(crtc_state->pipe_bpp,
> > -					     VBT_DSC_MAX_BPP(dsc-
> > >max_bpp));
> > +	crtc_state->dsc.compressed_bpp_x16 =3D to_bpp_x16(min(crtc_state-
> > >pipe_bpp,
> > +
> > VBT_DSC_MAX_BPP(dsc->max_bpp)));
> >
> >  	/*
> >  	 * FIXME: This is ugly, and slice count should take DSC engine diff
> > --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index ad5251ba6fe1..06a1e99a2762 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2567,7 +2567,7 @@ static int intel_vdsc_min_cdclk(const struct
> > intel_crtc_state *crtc_state)
> >  		 * =3D> CDCLK >=3D compressed_bpp * Pixel clock  / 2 * Bigjoiner
> > Interface bits
> >  		 */
> >  		int bigjoiner_interface_bits =3D DISPLAY_VER(i915) > 13 ? 36 : 24;
> > -		int min_cdclk_bj =3D (crtc_state->dsc.compressed_bpp *
> > pixel_clock) /
> > +		int min_cdclk_bj =3D (to_bpp_int(crtc_state-
> > >dsc.compressed_bpp_x16) *
> > +pixel_clock) /
> >  				   (2 * bigjoiner_interface_bits);
> >
> >  		min_cdclk =3D max(min_cdclk, min_cdclk_bj); diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 83e1bc858b9f..afcbdd4f105a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5365,7 +5365,7 @@ intel_pipe_config_compare(const struct
> > intel_crtc_state *current_config,
> >
> >  	PIPE_CONF_CHECK_I(dsc.compression_enable);
> >  	PIPE_CONF_CHECK_I(dsc.dsc_split);
> > -	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
> > +	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
> >
> >  	PIPE_CONF_CHECK_BOOL(splitter.enable);
> >  	PIPE_CONF_CHECK_I(splitter.link_count);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index c21064794f32..9eb7b8912076 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1353,7 +1353,8 @@ struct intel_crtc_state {
> >  	struct {
> >  		bool compression_enable;
> >  		bool dsc_split;
> > -		u16 compressed_bpp;
> > +		/* Compressed Bpp in U6.4 format (first 4 bits for fractional
> > part) */
> > +		u16 compressed_bpp_x16;
> >  		u8 slice_count;
> >  		struct drm_dsc_config config;
> >  	} dsc;
> > @@ -2108,4 +2109,19 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
> >  	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;  }
> >
> > +static inline int to_bpp_int(int bpp_x16) {
> > +	return bpp_x16 >> 4;
> > +}
> > +
> > +static inline int to_bpp_frac_dec(int bpp_x16) {
> > +	return (bpp_x16 & 0xf) * 625;
> > +}
>=20
> Let's add a comment on top on why we apply the mask and where the value
> 625 comes from Something like:
> "Since compressed bpp is now  fractional such that last 4 bits represent
> fractional bits we get the fractional part by multiplying by 10000 then d=
ividing it
> by 16 as we initially left shift compressed bpp by 4, to get 4 bits for t=
he
> fractional part"
>=20
> Otherwise,
> LGTM.
>=20
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com
>=20
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > +
> > +static inline int to_bpp_x16(int bpp) {
> > +	return bpp << 4;
> > +}
> > +
> >  #endif /*  __INTEL_DISPLAY_TYPES_H__ */ diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2206b45bc78c..9b88ac3a73c7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1863,7 +1863,7 @@ icl_dsc_compute_link_config(struct intel_dp
> > *intel_dp,
> >  					      valid_dsc_bpp[i],
> >  					      timeslots);
> >  		if (ret =3D=3D 0) {
> > -			pipe_config->dsc.compressed_bpp =3D valid_dsc_bpp[i];
> > +			pipe_config->dsc.compressed_bpp_x16 =3D
> > to_bpp_x16(valid_dsc_bpp[i]);
> >  			return 0;
> >  		}
> >  	}
> > @@ -1901,7 +1901,7 @@ xelpd_dsc_compute_link_config(struct intel_dp
> > *intel_dp,
> >  					      compressed_bpp,
> >  					      timeslots);
> >  		if (ret =3D=3D 0) {
> > -			pipe_config->dsc.compressed_bpp =3D
> > compressed_bpp;
> > +			pipe_config->dsc.compressed_bpp_x16 =3D
> > to_bpp_x16(compressed_bpp);
> >  			return 0;
> >  		}
> >  	}
> > @@ -2085,7 +2085,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct
> > intel_dp *intel_dp,
> >  	/* Compressed BPP should be less than the Input DSC bpp */
> >  	dsc_max_bpp =3D min(dsc_max_bpp, pipe_bpp - 1);
> >
> > -	pipe_config->dsc.compressed_bpp =3D max(dsc_min_bpp,
> > dsc_max_bpp);
> > +	pipe_config->dsc.compressed_bpp_x16 =3D
> > to_bpp_x16(max(dsc_min_bpp,
> > +dsc_max_bpp));
> >
> >  	pipe_config->pipe_bpp =3D pipe_bpp;
> >
> > @@ -2172,17 +2172,19 @@ int intel_dp_dsc_compute_config(struct
> > intel_dp *intel_dp,
> >  	if (ret < 0) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Cannot compute valid DSC parameters for Input
> Bpp =3D %d "
> > -			    "Compressed BPP =3D %d\n",
> > +			    "Compressed BPP =3D %d.%d\n",
> >  			    pipe_config->pipe_bpp,
> > -			    pipe_config->dsc.compressed_bpp);
> > +			    to_bpp_int(pipe_config->dsc.compressed_bpp_x16),
> > +			    to_bpp_frac_dec(pipe_config-
> > >dsc.compressed_bpp_x16));
> >  		return ret;
> >  	}
> >
> >  	pipe_config->dsc.compression_enable =3D true;
> >  	drm_dbg_kms(&dev_priv->drm, "DP DSC computed with Input Bpp =3D
> %d "
> > -		    "Compressed Bpp =3D %d Slice Count =3D %d\n",
> > +		    "Compressed Bpp =3D %d.%d Slice Count =3D %d\n",
> >  		    pipe_config->pipe_bpp,
> > -		    pipe_config->dsc.compressed_bpp,
> > +		    to_bpp_int(pipe_config->dsc.compressed_bpp_x16),
> > +		    to_bpp_frac_dec(pipe_config->dsc.compressed_bpp_x16),
> >  		    pipe_config->dsc.slice_count);
> >
> >  	return 0;
> > @@ -2261,15 +2263,16 @@ intel_dp_compute_link_config(struct
> > intel_encoder *encoder,
> >
> >  	if (pipe_config->dsc.compression_enable) {
> >  		drm_dbg_kms(&i915->drm,
> > -			    "DP lane count %d clock %d Input bpp %d
> > Compressed bpp %d\n",
> > +			    "DP lane count %d clock %d Input bpp %d
> > Compressed bpp %d.%d\n",
> >  			    pipe_config->lane_count, pipe_config->port_clock,
> >  			    pipe_config->pipe_bpp,
> > -			    pipe_config->dsc.compressed_bpp);
> > +			    to_bpp_int(pipe_config->dsc.compressed_bpp_x16),
> > +			    to_bpp_frac_dec(pipe_config-
> > >dsc.compressed_bpp_x16));
> >
> >  		drm_dbg_kms(&i915->drm,
> >  			    "DP link rate required %i available %i\n",
> >  			    intel_dp_link_required(adjusted_mode->crtc_clock,
> > -						   pipe_config-
> > >dsc.compressed_bpp),
> > +						   to_bpp_int(pipe_config-
> > >dsc.compressed_bpp_x16)),
> >  			    intel_dp_max_data_rate(pipe_config->port_clock,
> >  						   pipe_config->lane_count));
> >  	} else {
> > @@ -2702,7 +2705,7 @@ intel_dp_compute_config(struct intel_encoder
> > *encoder,
> >  		intel_dp_limited_color_range(pipe_config, conn_state);
> >
> >  	if (pipe_config->dsc.compression_enable)
> > -		link_bpp =3D pipe_config->dsc.compressed_bpp;
> > +		link_bpp =3D pipe_config->dsc.compressed_bpp_x16;
> >  	else
> >  		link_bpp =3D intel_dp_output_bpp(pipe_config->output_format,
> >  					       pipe_config->pipe_bpp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 2d1c42a5e684..68a81f10e772 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -140,7 +140,7 @@ static int
> > intel_dp_mst_find_vcpi_slots_for_bpp(struct
> > intel_encoder *encoder,
> >  		if (!dsc)
> >  			crtc_state->pipe_bpp =3D bpp;
> >  		else
> > -			crtc_state->dsc.compressed_bpp =3D bpp;
> > +			crtc_state->dsc.compressed_bpp_x16 =3D
> > to_bpp_x16(bpp);
> >  		drm_dbg_kms(&i915->drm, "Got %d slots for pipe bpp %d dsc
> %d\n",
> > slots, bpp, dsc);
> >  	}
> >
> > @@ -238,13 +238,13 @@ static int
> > intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> >  	if (slots < 0)
> >  		return slots;
> >
> > -	last_compressed_bpp =3D crtc_state->dsc.compressed_bpp;
> > +	last_compressed_bpp =3D to_bpp_int(crtc_state-
> > >dsc.compressed_bpp_x16);
> >
> > -	crtc_state->dsc.compressed_bpp =3D
> > intel_dp_dsc_nearest_valid_bpp(i915,
> > -
> > 	last_compressed_bpp,
> > -
> > 	crtc_state->pipe_bpp);
> > +	crtc_state->dsc.compressed_bpp_x16 =3D
> > +
> > 	to_bpp_x16(intel_dp_dsc_nearest_valid_bpp(i915,
> > last_compressed_bpp,
> > +
> > crtc_state->pipe_bpp));
> >
> > -	if (crtc_state->dsc.compressed_bpp !=3D last_compressed_bpp)
> > +	if (crtc_state->dsc.compressed_bpp_x16 !=3D
> > +to_bpp_x16(last_compressed_bpp))
> >  		need_timeslot_recalc =3D true;
> >
> >  	/*
> > @@ -253,14 +253,14 @@ static int
> > intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> >  	 */
> >  	if (need_timeslot_recalc) {
> >  		slots =3D intel_dp_mst_find_vcpi_slots_for_bpp(encoder,
> > crtc_state,
> > -							     crtc_state-
> > >dsc.compressed_bpp,
> > -							     crtc_state-
> > >dsc.compressed_bpp,
> > +
> > to_bpp_int(crtc_state->dsc.compressed_bpp_x16),
> > +
> > to_bpp_int(crtc_state->dsc.compressed_bpp_x16),
> >  							     limits, conn_state,
> > 2 * 3, true);
> >  		if (slots < 0)
> >  			return slots;
> >  	}
> >
> > -	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
> > +	intel_link_compute_m_n(to_bpp_int(crtc_state-
> > >dsc.compressed_bpp_x16),
> >  			       crtc_state->lane_count,
> >  			       adjusted_mode->crtc_clock,
> >  			       crtc_state->port_clock,
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index b24601d0b2c5..bfc41972a0bb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -248,7 +248,7 @@ int intel_dsc_compute_params(struct
> > intel_crtc_state
> > *pipe_config)
> >  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	struct drm_dsc_config *vdsc_cfg =3D &pipe_config->dsc.config;
> > -	u16 compressed_bpp =3D pipe_config->dsc.compressed_bpp;
> > +	u16 compressed_bpp =3D to_bpp_int(pipe_config-
> > >dsc.compressed_bpp_x16);
> >  	int err;
> >  	int ret;
> >
> > @@ -878,7 +878,7 @@ static void intel_dsc_get_pps_config(struct
> > intel_crtc_state *crtc_state)
> >  	if (vdsc_cfg->native_420)
> >  		vdsc_cfg->bits_per_pixel >>=3D 1;
> >
> > -	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> > +	crtc_state->dsc.compressed_bpp_x16 =3D vdsc_cfg->bits_per_pixel;
> >
> >  	/* PPS_2 */
> >  	intel_dsc_read_and_verify_pps_reg(crtc_state, 2, &pps_temp);
> > --
> > 2.25.1

