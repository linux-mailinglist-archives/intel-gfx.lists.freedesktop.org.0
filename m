Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2492D868BA4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 10:06:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA23910EE4E;
	Tue, 27 Feb 2024 09:06:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DrdKfzZ1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D0010EE4E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 09:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709024801; x=1740560801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zV7rndsl0aLOwhzIz2BzRDLUMsZcWPDa3bQH9T7btJ8=;
 b=DrdKfzZ1aD5weTM54yKJ9fJ3Q/FDa6qkBt81r6sIurld5wA6RDb+i5TB
 MshrKQbUVpmEMoQ4Cjg0EcqN1gXgwrEPhKPwzjgjGt0bcQb6ZSGas2Id3
 wh02AqSridud38hpcXcgA34S8NA7kKPu3i3C05DfWUqqqoOlEOc2r8oW/
 vg/0zAZFCLVbVU88NjrBuwkU6Kx+GXwT0zhhQOW4UPPI2Y+IWJobUXK7A
 pFDwlbYApf8BtTaGHrZf3/NCAzeo78c/Lu/FWrWERXpb5rWBUHXnRZ11l
 IGllM2RYg5GAq0+XvdTjeT5OM6IH8ZZ6CxbRIDPa8T6GUXLvI3/6enX9H Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="25818588"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="25818588"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 01:06:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="7386873"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 01:06:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 01:06:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 01:06:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 01:06:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UZ2TTWtKAsQ/y89TUweiBl5jVdMb8YtI5l3Bjv236kmndfc/RykUd8KhkP4RASoSuLONXjf+FFnTJu9mqCu8wzZ2nKfGRaWlkXFrEKclUZDnTy3ly1o2OpFWLhsnJfScnl5hgcRGDPjU48pAKefjmVqMpTm/cuu0JgyAkhQmYAqLro5OHgNDUHDxAlmc7qL1wNsE34MTTg33CRmPfv15Xs6Sn5LxO/9RGHhKcsC0LbK93VqOnEDqXJnnSNhwZxWhxwTiIWwgPizI7tGLRI5xgQOJ6+0ZGGzum0/SvS0AIAKu6OEGdSaXX6LZeshOI1kfl3DUG7bujq6/gRCNV08Ivw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L++D2TTPznbuiX+riFPT/u8Gtnk8rl2eULTBhTfG4QI=;
 b=BakiOZQEGa/lOHM//lR800FGsJW6dTabegZRvhvTXSZI7hBlsSjQekLXbL59pNDyv9ygb8YzhbIVJ09Bw2D2+Me5q+wZ9SfSepZoksISqgcBKP1A1itd3au/G56gtwoN3FSobUyBTBGLUA4N92g2USwhC3k4W0rjydz2bWi2bu8QFReOBYsh9EPG9FCr4CwPOuWQM9/RYWIp1iH+SQG4VkhEd+eu40uQQNw2l7Al1Fa7qzCwbXbDCvoWkmZN8ixXjeYz8gI8XIO1k/Ca2vtmkWEtofBlprZ6d8wKirFDVSLQVS+oijql2nseXvxNVvH5BtQZ1x0DXzmhiMrF9b+3aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DS0PR11MB6469.namprd11.prod.outlook.com (2603:10b6:8:c3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.19; Tue, 27 Feb
 2024 09:06:16 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833%4]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 09:06:16 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
Thread-Topic: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
Thread-Index: AQHaZPsMkY6C5PjSmEynxD5FK6AnqrEdEbkAgADcP4CAAAA4IA==
Date: Tue, 27 Feb 2024 09:06:16 +0000
Message-ID: <PH7PR11MB8252B76C0200A73FF029C76289592@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-4-stanislav.lisovskiy@intel.com>
 <87o7c3knj9.fsf@intel.com> <Zd2lm8uC1WsjEpcO@intel.com>
In-Reply-To: <Zd2lm8uC1WsjEpcO@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|DS0PR11MB6469:EE_
x-ms-office365-filtering-correlation-id: f6ca6f85-8554-4c35-c240-08dc37735a9b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DhYKXYWrBFc6C4/+6pt/YhUWWav4UkaIEJTGmAq0zZz840AdmBwX4+LKXYYyaq5sq1//kzUvJA70WVWFCdc6e7XtsqPHXoFYEnDI6QHJsY5d2kA7AX/34YXjiaJTY5Mh/+zoFseOtaXLQUvczuCpzuUcXjdobAnVwrWGj4Mb1Nm2ozGSagW52A3t8sjLwtWGijIcdsj+ODApcNj0neDZr489he1W12asZmBs4DDrwD6HniIEYESm4hlAlzw+d0FtdaipZG28o/qtC/PFlc8474EhjKz0wroZvTWZ/g2ObeQzkwRcjb4XE7Kb8nfx9RoCBQ5zeecrX9fziZf4kZ2MQFK0NE9RipUnJ0MiR8ej/Sf9M1sM8LKQvCNs7pnvGicAcEda/OcLMPStRaxxG+1wO5O5rrcz6vuncqR/m9WdUEJ5F5q6dKjcMgVSwEKd3xILmGz1mQpr+XbaYplXHAJvwQ47rw2i8vyUo1DMYS+zdJSNBTy7y55wP1mtvlIwyJcI96b4X+1j6rv+/YuWPo+AY1ghpNiamn2TNvZAeV98M+FDCYe/rih9GsA3dW5bc6Kd18rdipqwTo+8WUMDh3NVMCRqRaaernfeo6I6pL7uv0mlzv8nU86+ecgmpTE8uBRIz5odGDCEFun/GkGtWZ1DmF32LFIVQv9fVQOIzTCZpIh/JoFP5LoYXzAe4Z+zCwhCZCt2gyMHlKNW0HptFaUtuXjPdq2/OD0dWlTCDa6e3Os=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e0vcm5VtGmVWt/AT0nJa4h4+xiWBz2FGfrQRW3GBKp6CWT2bmfvFki/SuPWE?=
 =?us-ascii?Q?xSAhq/KKOSO/jSxPirnaXPB/KXsf51Wsj767EGmkrBsZrlzNQ+ua2INaqBfa?=
 =?us-ascii?Q?J9gxkFIguHnTHiZm2yqJDU6dswRuaGiZQ8LOIoIB5guBIqmZmF9HlvHQB0aF?=
 =?us-ascii?Q?Aytff3ZR4ZXEsJQAr+dEiU8ULsR9i7z8wH72/hgrgmQtxwm0b3k3wNlH+xVb?=
 =?us-ascii?Q?pgGIrc5XQUTwCpDHwO9caL+pPutLKDP82FxEgUIpTAiBm/AOa5J/vC5xIwEk?=
 =?us-ascii?Q?4EMEGWtpp9Z4RspqGJ3R7KcySiIaM0UkD1+a6trnhVE7ERXPruHMCrL3xsOa?=
 =?us-ascii?Q?kw6ViknPxORCuXNJUA5rJh2nkV49r+ToA8Nm0NelJXcaK3JakHjF9TBzJ6HH?=
 =?us-ascii?Q?obF/8ax6avNhcUf0kV7+1BeuBgcS+zFQSGHFoKI8r8M9SFAC6yVttZkCvEQI?=
 =?us-ascii?Q?Eu/CN3mKT+q2IaW29ETct1e1Yiw9Iy2HGJLkD/aG6HXNzg6YkRgZzXQhGD9Q?=
 =?us-ascii?Q?Ldm+3pVTWE74r2ks1n8aduSoD9HHooN/mbzZoa0OUjAHRCZQB6aVLupWG/x3?=
 =?us-ascii?Q?9pc6SfaKrBI+pyITgw9mEtJhI9dXmF2hMG3Fdp/hbOlTGCjVu+pAp4FemRiB?=
 =?us-ascii?Q?7XrT77LL1/QuR1mHkMFiOJJRvwh0yU/IoBe8Phxwitm8q/L3vnhWuBpBjtUP?=
 =?us-ascii?Q?M3tEogknDHnMOi4GsybfAbvlio5pmekJ57GOvQoMRIa0ErcNOAWTEA1EYsnu?=
 =?us-ascii?Q?mYLApY3lgkXN4LCNNVFxpzzXUkbSlmjK7ShTQ1doCDaenyVPrm0CLV41k14h?=
 =?us-ascii?Q?b4cwknC5G8Ukqg4Y/65GPw4ptJ2xDgLye5ZCuvx0dnEdVnZP2ZGck90sL9UF?=
 =?us-ascii?Q?G6YRwYsoKqXKGojcYGAy493wbpf6g7R6hfzOyq3L6D1KFKjwdHLKQKLdedtI?=
 =?us-ascii?Q?UO1hIn7aHofHtVzw78sYWlQ+9lg0qtNWFG4XuSQFP8FwF5ag2bBYct9V2I9F?=
 =?us-ascii?Q?6FulZia/TSrrcXtxXZElYdBD3jRGJflaXSowFYSe/edHHXErIL2p1qf8DYWt?=
 =?us-ascii?Q?Ge/sb28ioDtlMyrdM7jpNxZVD2cyUdH36X7uG30dbAzrQI4jaUDa3RIqhVuW?=
 =?us-ascii?Q?BivbdKf0arxzMY6RZkzHUNFTiYxoYYpYMFukMmkn6i5/gHFmtQ0ckF/HFfun?=
 =?us-ascii?Q?2Ta9Xe4ENEPF1+HQAGKhbEYVywYxgK3sN340XfO7CPvnvfSqbbYo/bTWn0rE?=
 =?us-ascii?Q?0OQvhKmJVp+UrQnauNrBXscK6mPwxatEz9naqd4Svpnq5VWu1rvhazFHQOQ0?=
 =?us-ascii?Q?8+MgaRZ0aJIact40HX3HFu5jWj/uN1XVShlK9A6No45v7FWvrZCjrgsQK8i9?=
 =?us-ascii?Q?ZJzvwYMAUCeO2bO/Eh25EYaWB9VOiMjc9HPQ0hX3m224BLxxRH4aBZXxnO6J?=
 =?us-ascii?Q?83GyvhrZ4onPo1V4pETvsZ1qzyShJDPEMUItfonkS4B+njd/RKA38KDCH2O8?=
 =?us-ascii?Q?1MmMX8yqdekFYxsXDRzdpKuVQH+rBE52s/ReTpPCeRIgDkPfZWjWkgX/Z5vS?=
 =?us-ascii?Q?nzJVp68txklbalTV8HS8kGX12V7YFLFayhJdepQs?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6ca6f85-8554-4c35-c240-08dc37735a9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 09:06:16.0141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jc06p78rlaAQoB8gzoFV3bm0Xg8d1EJutBRuY22EZR3n/jqh6+hGWnrkcB5IDv0kNmkS8lRaA8wW1MQxkHx8gyuiOoJyWMaLloo1Gm3b0Js=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6469
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
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Tuesday, February 27, 2024 2:34 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Saarinen, Jani <jani.saarinen@intel.=
com>;
> ville.syrjala@linux.intel.com; Srinivas, Vidya <vidya.srinivas@intel.com>
> Subject: Re: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
>=20
> On Mon, Feb 26, 2024 at 09:56:10PM +0200, Jani Nikula wrote:
> > On Wed, 21 Feb 2024, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com=
>
> wrote:
> > > Patch calculates bigjoiner pipes in mst compute.
> > > Patch also passes bigjoiner bool to validate plane max size.
> >
> > Please use the imperative mood in commit messages, e.g. "calculate"
> > intead of "calculates".
> >
> > Please do not refer to "patch". We know it's a patch, until it isn't,
> > and then it's a commit.
> >
> > Please explain *why* the changes are being done, not just *what* is
> > being done.
> >
> > In the subject, what is "bigjoiner case for DP2.0"? DP 2.0 is a spec
> > version, and as such irrelevant for the changes being done.
> >
> > > Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> >
> > ?
>=20
> Hi Jani, I just added that patch from Vidya to my series, to be honest, d=
idn't
> have time at all to look much into it.
> Looks like its me who is going to fix that.

Hello Stan
My sincere apologies. I dint want to disturb your series, so I did not fix =
it.
Please let me know if I should fix it. Sorry again.
Thank you Jani for the comments.

Regards
Vidya
>=20
> >
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19
> > > ++++++++++++-------
> > >  1 file changed, 12 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index 5307ddd4edcf5..fd27d9976c050 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -523,6 +523,7 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
> > >  				       struct drm_connector_state *conn_state)
> {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> > >  	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
> > >  	struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
> > >  	const struct intel_connector *connector =3D @@ -540,6 +541,10 @@
> > > static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> > >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> > >  		return -EINVAL;
> > >
> > > +	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
> > > +				    adjusted_mode->crtc_clock))
> > > +		pipe_config->bigjoiner_pipes =3D GENMASK(crtc->pipe + 1,
> > > +crtc->pipe);
> > > +
> > >  	pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > >  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > >  	pipe_config->has_pch_encoder =3D false; @@ -1318,12 +1323,6 @@
> > > intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> > >  	 *   corresponding link capabilities of the sink) in case the
> > >  	 *   stream is uncompressed for it by the last branch device.
> > >  	 */
> > > -	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > > -	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port-
> >full_pbn) {
> > > -		*status =3D MODE_CLOCK_HIGH;
> > > -		return 0;
> > > -	}
> > > -
> > >  	if (mode->clock < 10000) {
> > >  		*status =3D MODE_CLOCK_LOW;
> > >  		return 0;
> > > @@ -1343,6 +1342,12 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
> > >  		return 0;
> > >  	}
> > >
> > > +	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > > +	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port-
> >full_pbn) {
> > > +		*status =3D MODE_CLOCK_HIGH;
> > > +		return 0;
> > > +	}
> > > +
> > >  	if (DISPLAY_VER(dev_priv) >=3D 10 &&
> > >  	    drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
> > >  		/*
> > > @@ -1385,7 +1390,7 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
> > >  		return 0;
> > >  	}
> > >
> > > -	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode, false);
> > > +	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode,
> > > +bigjoiner);
> > >  	return 0;
> > >  }
> >
> > --
> > Jani Nikula, Intel
