Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B20279A7CE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 14:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA1910E2E1;
	Mon, 11 Sep 2023 12:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D12C10E2D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 12:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694433815; x=1725969815;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AinzyXymiq59uIpSbEX2EiJK0qWhUP8/Gn5n8m7RJ0M=;
 b=ImVl+JO88oyVdQuBFYM5HXrfmJUGnqzx38IoV5UUDuWW7Ds+l/zBtBn7
 AXcrwlR6Wl4zPokHa37uJlDlS1Ebeh89UaODzOR/Bfu0GcEDk2f1TYwvw
 bIVTgWHYf+4eJ3cg4hzJtxXz9TjCxwIvn7XwDDOioc8jyM1ie7TiVU1v9
 BeU/9bN7upHmpjehcISNpNntJdc21fo5JsjdmoQ0xptjYd64fSwG1i8Y7
 QqNxwbUm6iXOMUXscCGrFdGtZ5XBdW+IsDRwz2RdP9bfWezCMav5TeiAC
 sRF/Ac+CiuZAHs+3AgVn9bRjJ9y8tRQcQgJ7DkSo8E/OC8miLkqTsloyG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="444478912"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="444478912"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 05:03:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="813342803"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="813342803"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 05:03:34 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 05:03:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 05:03:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 05:03:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GT5sCCX8SwINbLMcJYIXyNE53p5KAX+aDAWD9reEUihf+/VnSOYQILfXMOGOpxa1JOT7irv099brFVmNSRxKa3MnGjhUANDKdFddu9ipAdPPhGxgS0Sp2pFcU04JmOLMMyu4f+I72HRE9gtT1ANU0aoQANAqBNJTp/95u9aOEy7NgAeF4NFqqeBgXywDOeyqyaiPwZZ/pfebB0gqlrirvHYaAOKJcOTxIJAPKfvwW31HmMBwNbp3djTyBdTsXdkC/WTkfTi19RkRwQXfgV5/sx3pYz0MAtaKmItJ3QC0H1ZACi4X9vfzfGiff93LboXmuWZfifnZ25lR4uyzKQs05w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DheI/lXQXiVaiD5bF2Bhm1Uaidqjue9MK1DzAmdxUF0=;
 b=OgP6y1l2NA5Gkn+thLTXNA7cDno2uOUCpxVbdXJT3DmKp3Zdc46FKA9fhP7em4FWFM9T2NLwRl5b6mpjGebqK90On+0gMwrFU3hf9Jkw+vpcJpwDz+BvFer1tv8rlTL/4KZuK0LiMWynS9PYhkEbiNazO10YJvkyYwIsRbL2+KveqQDjHL3NWdn7r8+IXraojlvwovn4cTgFYXjXwpWv0fQJFmrxH0C/uKSlUyXHCXjhlK4yHW85lBSsWYtb7H3smS4BUm+wmlokMni/Id3QuSEOTdGGxDv4kP7KEqru1/+MKFSX7O5UODfjqptFpYFIf3928Shfvq8L9ZPsFVPcAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DM4PR11MB7351.namprd11.prod.outlook.com (2603:10b6:8:104::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Mon, 11 Sep
 2023 12:03:31 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%7]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 12:03:31 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/8] drm/i915/display: Store compressed bpp
 in U6.4 format
Thread-Index: AQHZ5G515spuovyGH0uBSMgsS0NOMbAVf6AAgAAGjUA=
Date: Mon, 11 Sep 2023 12:03:31 +0000
Message-ID: <IA1PR11MB6348AB7F10677BAA3DAAADE4B2F2A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-3-mitulkumar.ajitkumar.golani@intel.com>
 <877coxeyb5.fsf@intel.com>
In-Reply-To: <877coxeyb5.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DM4PR11MB7351:EE_
x-ms-office365-filtering-correlation-id: 446d6e02-ccd1-49a4-53ab-08dbb2bf1ddf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t/IwFB6AzTMBCZ9btz+klYbmPcumTHqixeb9P02V/2JxfhipIYxmqaFqKDu3JFu5x10yuAJt5G26b3I/xzIX1GD1MvByZxuxoPR8bcfuC8Y5niTRak3Z5O3jwb+kKc5tiiosfy3hukJ8ZJVKn6fYxzN/PVdrUtL+Hqz0zO/HzYsvu1B2bm11f1YGHYXHljqPZJCe+3hdU4pQKPbSX8Cr3UPtzrmKuMLyj/8Ws7UcWVr1QS4AwOR+MJ6PxQd45d6FnNIl8diz8M/RnvFJiNYijslUs46yUagIn9xeARPOtvNL48SaWDrokWAXjxtQaRjCpUwlGJDnEnnRDNn9I1npnEXSKozVSNbHR88yJF14dMuymEStkiDvRBkp2nGgfJWoSuVI4fvvZxHu9h6odYqRVqnc1BwNBqJgjfVfYqH509w1LefPopKXtD2E+IM4jGam8aEegS5iVBfPJBHz3QSUY9ZbCv7lxZF9MURiBBH6EkpMn+7xEWZchKlqCD/LLE0u19j7NJ+xcNYYjbeWN0Nc9iJkFSNC4fDsLlugMkhEDl++pZl/n4KHzszUEnXeJ0jjHJbgmCP8jphyLgOijVh44l5BmKqnJiYhmXX3R7DTddDZoXjJLwvaa1KSt+t4YtYu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(136003)(396003)(186009)(451199024)(1800799009)(38100700002)(33656002)(66899024)(55016003)(8676002)(41300700001)(7696005)(5660300002)(52536014)(53546011)(8936002)(86362001)(71200400001)(26005)(9686003)(6506007)(30864003)(83380400001)(66476007)(38070700005)(122000001)(55236004)(2906002)(110136005)(64756008)(478600001)(66446008)(76116006)(66946007)(316002)(82960400001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IuLBp9CWHxu5MGCSpqjua4UEy4bbOzDAadcYiEkD8fT3eDMi0gMc48adohiv?=
 =?us-ascii?Q?hJMeYFCGvU2WE0qF/STmxoadvGaADkwcAH91jfPEmaL197m6nou+MIpsuGnm?=
 =?us-ascii?Q?XJcbCuQvrXKy8VaL6yb2O1KHBCiw+oBhdIzBCVn3JDmh/Z0UdJ7YwFl+b3fB?=
 =?us-ascii?Q?9l/UAku1RpBRLSs+l0SXKQYk1XruR8KF168qvuRjdnmVYhvtyKtvrr9V2sqF?=
 =?us-ascii?Q?0p/1WHPptiCBT7EqETgYUy9T8FVnJhedn116d7era10Yp8rGK9WF7nBuhLvS?=
 =?us-ascii?Q?52BdlDPE1KWaSVsx2Bi0/Um4WB4JthIzg/HcfAjiZP2ciwt6y4ZwbRZmu4X7?=
 =?us-ascii?Q?oPDk0wcBecC1YAlRHFCtHRq4HMeIGWezODpU3SDj5Z98PZOzVtVb+DZ1TEZZ?=
 =?us-ascii?Q?skmtimeLUW946b8Q1vbg5mKFEOw8rLWo/DGZUuX1lEcHZmOMCFceF9kb7iRI?=
 =?us-ascii?Q?ey5U3XNek8oFMeUkXn3ylJbkfKu6yRwfgq/d3uGuJqeBpXo9I77y9T9T/LkC?=
 =?us-ascii?Q?oOGPU6HSaAOXR0Osc24nlEkqLMT5P0JD67SEZJ4qQesQMoACyRadCZO+dNrw?=
 =?us-ascii?Q?86WiAGErcLUgkLem8hhrRXpHRUiDjEw+FH2qDlMEuFFkJyQvKkl18YEC59ss?=
 =?us-ascii?Q?60i4uCZlGgF31XPdoiTAhmG4wRslmxGxv685/F8OS+dZ3ymDvuj3BIaK+Cx1?=
 =?us-ascii?Q?AbuK24F7b10Rpf0PmtkvFF66Kxp2Mz/koAXMC0aqhddPUUOruOBXh8VGggSL?=
 =?us-ascii?Q?egjGi2neZ4tmfVYEE0vCQCgGQX7UfYtL/2k+rxIBqI/CIPWe9oJLLWcF6N3Y?=
 =?us-ascii?Q?N1IpTs2hxnA3kAtTvemfwBneQD1d7XHcnc7LCJ0iGiqLpvf7dQl6DrfeMmGF?=
 =?us-ascii?Q?w2R08pEUc+H/pbJuYU3IAaJpszBH+AHy7EuXZsvdK9rH65yWCcZryRZR7jx6?=
 =?us-ascii?Q?dpJ4Lh5KYrp9qlYNbFUxKDjZkWAcVJmx0UW/Dtturj3EBTBWUjTZggp3UQVk?=
 =?us-ascii?Q?cye0rK3wIQbw8b5r4lQM8cTrHTOePxW0oG4EVk+UNVByKuBelQQ9P2v6+Qs0?=
 =?us-ascii?Q?y6HDBHJuE8bG+OJhSGLMEid3aBhg1NzZ6F3I1Kwq+yJehmjYAcFP0DLsre3B?=
 =?us-ascii?Q?4dsz+bsOa0rTs5qA2yyOygwqJUD/0gtB3M0IAxdmZTkClWz6XQOzT4QrEVEX?=
 =?us-ascii?Q?bgUMm/1UlsT55WXeqW7Si/kK/yuh0BTUWpfHwjR4WNUoHvTx5V7WIGYtUxGL?=
 =?us-ascii?Q?GowImd3gV/vKwID5esUXolhFYwrFL80Gh1NU37F3I6kEg8qwhDhJphBBVyez?=
 =?us-ascii?Q?Kuqvp3hfzEqjOEokv/Xm6jFMTfNSu191W/3CeQKxhxN8IjnmRB5jX1zTHYkm?=
 =?us-ascii?Q?UR/nxp25o32PUwhx0UnI4wzlbBgXH/PE3wjtzvA2UygdSAcyOQiHu89j1NCP?=
 =?us-ascii?Q?hQqca7nXfGH8BKD8npq//K7AA2PCqNQgLt2ds+wJgQTLioRPBDoXTVxSdNZY?=
 =?us-ascii?Q?mHmD6JPuvQRrbp+NAffZ6+wTlNXoBStVw1H5FlMyAUlSGdHsANhzDktYLKKa?=
 =?us-ascii?Q?tLZ5TvfbJ3E+rgk6hrHHXgpxZY6Mm8zfyekSrB7yBmDlBsIzT0n2JcBb9iJO?=
 =?us-ascii?Q?d84glceWV4BKjlCR4E2t0IU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 446d6e02-ccd1-49a4-53ab-08dbb2bf1ddf
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 12:03:31.2607 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2AYb+VBba67OquPR6csMONF76McPIexcdcXTWHQEjJBajp02WAeTbpY1Hs5rmSSrlaQLDBgLYX96O7TC3crJdWki0XjTb/fRz8c9w9Yt3QdaGPlSnMJu3wxXJEZO+FL6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7351
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


> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 11 September 2023 17:07
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/display: Store compressed b=
pp
> in U6.4 format
>=20
> On Mon, 11 Sep 2023, Mitul Golani
> <mitulkumar.ajitkumar.golani@intel.com> wrote:
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
> >  		bpp =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> >pixel_format);
> >
> > @@ -860,7 +860,7 @@ gen11_dsi_set_transcoder_timings(struct
> intel_encoder *encoder,
> >  	 * compressed and non-compressed bpp.
> >  	 */
> >  	if (crtc_state->dsc.compression_enable) {
> > -		mul =3D crtc_state->dsc.compressed_bpp;
> > +		mul =3D to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
> >  		div =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> >pixel_format);
> >  	}
> >
> > @@ -884,7 +884,7 @@ gen11_dsi_set_transcoder_timings(struct
> intel_encoder *encoder,
> >  		int bpp, line_time_us, byte_clk_period_ns;
> >
> >  		if (crtc_state->dsc.compression_enable)
> > -			bpp =3D crtc_state->dsc.compressed_bpp;
> > +			bpp =3D to_bpp_int(crtc_state-
> >dsc.compressed_bpp_x16);
> >  		else
> >  			bpp =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> >pixel_format);
> >
> > @@ -1451,8 +1451,8 @@ static void gen11_dsi_get_timings(struct
> intel_encoder *encoder,
> >  	struct drm_display_mode *adjusted_mode =3D
> >  					&pipe_config->hw.adjusted_mode;
> >
> > -	if (pipe_config->dsc.compressed_bpp) {
> > -		int div =3D pipe_config->dsc.compressed_bpp;
> > +	if (pipe_config->dsc.compressed_bpp_x16) {
> > +		int div =3D to_bpp_int(pipe_config->dsc.compressed_bpp_x16);
> >  		int mul =3D mipi_dsi_pixel_format_to_bpp(intel_dsi-
> >pixel_format);
> >
> >  		adjusted_mode->crtc_htotal =3D
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 19605264a35c..aa93ccd6c2aa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -528,7 +528,7 @@ static unsigned int calc_hblank_early_prog(struct
> intel_encoder *encoder,
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
> >max_bpp));
> > +	crtc_state->dsc.compressed_bpp_x16 =3D to_bpp_x16(min(crtc_state-
> >pipe_bpp,
> > +
> VBT_DSC_MAX_BPP(dsc->max_bpp)));
> >
> >  	/*
> >  	 * FIXME: This is ugly, and slice count should take DSC engine diff
> > --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index ad5251ba6fe1..06a1e99a2762 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2567,7 +2567,7 @@ static int intel_vdsc_min_cdclk(const struct
> intel_crtc_state *crtc_state)
> >  		 * =3D> CDCLK >=3D compressed_bpp * Pixel clock  / 2 * Bigjoiner
> Interface bits
> >  		 */
> >  		int bigjoiner_interface_bits =3D DISPLAY_VER(i915) > 13 ? 36 :
> 24;
> > -		int min_cdclk_bj =3D (crtc_state->dsc.compressed_bpp *
> pixel_clock) /
> > +		int min_cdclk_bj =3D (to_bpp_int(crtc_state-
> >dsc.compressed_bpp_x16)
> > +* pixel_clock) /
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
> part) */
> > +		u16 compressed_bpp_x16;
> >  		u8 slice_count;
> >  		struct drm_dsc_config config;
> >  	} dsc;
> > @@ -2108,4 +2109,19 @@ to_intel_frontbuffer(struct drm_framebuffer
> *fb)
> >  	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;  }
> >
> > +static inline int to_bpp_int(int bpp_x16) {
> > +	return bpp_x16 >> 4;
> > +}
> > +
> > +static inline int to_bpp_frac_dec(int bpp_x16) {
> > +	return (bpp_x16 & 0xf) * 625;
> > +}
> > +
> > +static inline int to_bpp_x16(int bpp) {
> > +	return bpp << 4;
> > +}
> > +
>=20
> This file is not the place for random helpers.
>=20
> It could even be a separate file for 6.4 fixed point.
>=20
> At some point we might want to move this to drm core even, and perhaps it

Hi Jani,

Do you have any naming suggestions for the new file and the helpers that wi=
ll
defined in it.

Regards,
Mitul

> could even be a struct so there are no misuses, but gotta start somewhere=
.
>=20
> (There's an include/drm/drm_fixed.h for 20.12, for instance.)
>=20
>=20
> BR,
> Jani.
>=20
>=20
>=20
> >  #endif /*  __INTEL_DISPLAY_TYPES_H__ */ diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2206b45bc78c..9b88ac3a73c7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1863,7 +1863,7 @@ icl_dsc_compute_link_config(struct intel_dp
> *intel_dp,
> >  					      valid_dsc_bpp[i],
> >  					      timeslots);
> >  		if (ret =3D=3D 0) {
> > -			pipe_config->dsc.compressed_bpp =3D
> valid_dsc_bpp[i];
> > +			pipe_config->dsc.compressed_bpp_x16 =3D
> > +to_bpp_x16(valid_dsc_bpp[i]);
> >  			return 0;
> >  		}
> >  	}
> > @@ -1901,7 +1901,7 @@ xelpd_dsc_compute_link_config(struct intel_dp
> *intel_dp,
> >  					      compressed_bpp,
> >  					      timeslots);
> >  		if (ret =3D=3D 0) {
> > -			pipe_config->dsc.compressed_bpp =3D
> compressed_bpp;
> > +			pipe_config->dsc.compressed_bpp_x16 =3D
> to_bpp_x16(compressed_bpp);
> >  			return 0;
> >  		}
> >  	}
> > @@ -2085,7 +2085,7 @@ static int
> intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
> >  	/* Compressed BPP should be less than the Input DSC bpp */
> >  	dsc_max_bpp =3D min(dsc_max_bpp, pipe_bpp - 1);
> >
> > -	pipe_config->dsc.compressed_bpp =3D max(dsc_min_bpp,
> dsc_max_bpp);
> > +	pipe_config->dsc.compressed_bpp_x16 =3D
> to_bpp_x16(max(dsc_min_bpp,
> > +dsc_max_bpp));
> >
> >  	pipe_config->pipe_bpp =3D pipe_bpp;
> >
> > @@ -2172,17 +2172,19 @@ int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
> >  	if (ret < 0) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Cannot compute valid DSC parameters for Input
> Bpp =3D %d "
> > -			    "Compressed BPP =3D %d\n",
> > +			    "Compressed BPP =3D %d.%d\n",
> >  			    pipe_config->pipe_bpp,
> > -			    pipe_config->dsc.compressed_bpp);
> > +			    to_bpp_int(pipe_config-
> >dsc.compressed_bpp_x16),
> > +			    to_bpp_frac_dec(pipe_config-
> >dsc.compressed_bpp_x16));
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
> Compressed bpp %d\n",
> > +			    "DP lane count %d clock %d Input bpp %d
> Compressed bpp
> > +%d.%d\n",
> >  			    pipe_config->lane_count, pipe_config->port_clock,
> >  			    pipe_config->pipe_bpp,
> > -			    pipe_config->dsc.compressed_bpp);
> > +			    to_bpp_int(pipe_config-
> >dsc.compressed_bpp_x16),
> > +			    to_bpp_frac_dec(pipe_config-
> >dsc.compressed_bpp_x16));
> >
> >  		drm_dbg_kms(&i915->drm,
> >  			    "DP link rate required %i available %i\n",
> >  			    intel_dp_link_required(adjusted_mode-
> >crtc_clock,
> > -						   pipe_config-
> >dsc.compressed_bpp),
> > +						   to_bpp_int(pipe_config-
> >dsc.compressed_bpp_x16)),
> >  			    intel_dp_max_data_rate(pipe_config->port_clock,
> >  						   pipe_config->lane_count));
> >  	} else {
> > @@ -2702,7 +2705,7 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  		intel_dp_limited_color_range(pipe_config, conn_state);
> >
> >  	if (pipe_config->dsc.compression_enable)
> > -		link_bpp =3D pipe_config->dsc.compressed_bpp;
> > +		link_bpp =3D pipe_config->dsc.compressed_bpp_x16;
> >  	else
> >  		link_bpp =3D intel_dp_output_bpp(pipe_config-
> >output_format,
> >  					       pipe_config->pipe_bpp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 2d1c42a5e684..68a81f10e772 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -140,7 +140,7 @@ static int
> intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> >  		if (!dsc)
> >  			crtc_state->pipe_bpp =3D bpp;
> >  		else
> > -			crtc_state->dsc.compressed_bpp =3D bpp;
> > +			crtc_state->dsc.compressed_bpp_x16 =3D
> to_bpp_x16(bpp);
> >  		drm_dbg_kms(&i915->drm, "Got %d slots for pipe bpp %d
> dsc %d\n", slots, bpp, dsc);
> >  	}
> >
> > @@ -238,13 +238,13 @@ static int
> intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> >  	if (slots < 0)
> >  		return slots;
> >
> > -	last_compressed_bpp =3D crtc_state->dsc.compressed_bpp;
> > +	last_compressed_bpp =3D
> > +to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
> >
> > -	crtc_state->dsc.compressed_bpp =3D
> intel_dp_dsc_nearest_valid_bpp(i915,
> > -
> 	last_compressed_bpp,
> > -
> 	crtc_state->pipe_bpp);
> > +	crtc_state->dsc.compressed_bpp_x16 =3D
> > +
> 	to_bpp_x16(intel_dp_dsc_nearest_valid_bpp(i915,
> last_compressed_bpp,
> > +
> crtc_state->pipe_bpp));
> >
> > -	if (crtc_state->dsc.compressed_bpp !=3D last_compressed_bpp)
> > +	if (crtc_state->dsc.compressed_bpp_x16 !=3D
> > +to_bpp_x16(last_compressed_bpp))
> >  		need_timeslot_recalc =3D true;
> >
> >  	/*
> > @@ -253,14 +253,14 @@ static int
> intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> >  	 */
> >  	if (need_timeslot_recalc) {
> >  		slots =3D intel_dp_mst_find_vcpi_slots_for_bpp(encoder,
> crtc_state,
> > -							     crtc_state-
> >dsc.compressed_bpp,
> > -							     crtc_state-
> >dsc.compressed_bpp,
> > +
> to_bpp_int(crtc_state->dsc.compressed_bpp_x16),
> > +
> to_bpp_int(crtc_state->dsc.compressed_bpp_x16),
> >  							     limits, conn_state,
> 2 * 3, true);
> >  		if (slots < 0)
> >  			return slots;
> >  	}
> >
> > -	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
> > +
> > +intel_link_compute_m_n(to_bpp_int(crtc_state-
> >dsc.compressed_bpp_x16)
> > +,
> >  			       crtc_state->lane_count,
> >  			       adjusted_mode->crtc_clock,
> >  			       crtc_state->port_clock,
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index b24601d0b2c5..bfc41972a0bb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -248,7 +248,7 @@ int intel_dsc_compute_params(struct
> intel_crtc_state *pipe_config)
> >  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	struct drm_dsc_config *vdsc_cfg =3D &pipe_config->dsc.config;
> > -	u16 compressed_bpp =3D pipe_config->dsc.compressed_bpp;
> > +	u16 compressed_bpp =3D
> > +to_bpp_int(pipe_config->dsc.compressed_bpp_x16);
> >  	int err;
> >  	int ret;
> >
> > @@ -878,7 +878,7 @@ static void intel_dsc_get_pps_config(struct
> intel_crtc_state *crtc_state)
> >  	if (vdsc_cfg->native_420)
> >  		vdsc_cfg->bits_per_pixel >>=3D 1;
> >
> > -	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> > +	crtc_state->dsc.compressed_bpp_x16 =3D vdsc_cfg->bits_per_pixel;
> >
> >  	/* PPS_2 */
> >  	intel_dsc_read_and_verify_pps_reg(crtc_state, 2, &pps_temp);
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
