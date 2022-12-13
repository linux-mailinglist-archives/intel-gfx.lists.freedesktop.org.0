Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D1464B7E9
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 15:55:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A8410E32D;
	Tue, 13 Dec 2022 14:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CA2810E32C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 14:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670943313; x=1702479313;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qSjBjQerp085jTV1fFe2REaJZA2RmVR+M1uT1wUqOTo=;
 b=c7p8Jx5r0mYvO6WsUol+rw9+h0ai9WYn8R5v4QgYS9ERbMDz4k/lwBu9
 zWHubghUxswqXwvGJhOY8Np/F8Kd/5Spdr5cNU3tVBtHlQVCJOo6mv95k
 0aLSIlP4nQ02FEcTcvNePovygzD9SfURl5j1BySwwbiZ0vByYTE3kKhxV
 c+fVGBbRqBq3MveneeZqN4EmKEBLSpENQVF1/C0CSKLLCtXJ8XOvJAukK
 Fpyx+JZ82huME6hll/663cBX3nV8+iR46ak8eZzzE8sHtH3WPyGtapkBH
 jltDf8w6Q/dt9wTp8R2ctcc4wd1HK/yw62sB7piSwrTJ63/e+zUohvv09 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="298490163"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="298490163"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 06:55:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="772972657"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="772972657"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 13 Dec 2022 06:55:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 06:55:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 06:55:11 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 06:55:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TaC3+UVZ1R1qqGGEPj8o5hS64UfCWet7hIfbW4i0a1BvBsW0cW2j0JhLqnRw1GgYPz+F43SiUaKJsV66S66ip8FH+H7ZYwEnqJ7NkRS/yAhyBNcZ1+8WUArsGODPvrUI4nrXncGr6oqdjtZ4KfMT3Y3kWG3bZmqtfo0oJ0mEc+Fapgs/TS8+kTPEqumbumo9OeKGuhSgf4ASZi8xUjh/9E6ZNhdmqRU7dQtype7BAmiM0qE5ZpILlJD67X/AGBehWHRzFZ/63ss36nS03rjmvVVcV1LNqvvuKpmfThONXa2ynhGCtFO4alhhMMVWWgQZZwMXign/OEmb0dnsH02vwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RTYsl6rD6Vb1ih0wOU0Z7m9JC/+cJHuxV3R7XCVbFn0=;
 b=aSZYxm6Mx29ClIJRFnOaJw26/a7UUImOx9BzWn3eT/8CDSebVQ5Nw0Nwoa7RH5nGWt0fgseKFqsP4rE2CsYMVx4/J8S/s+FH18m+0yMU++FNhCVKFfBAQAnf5HrEQMrjZUEmLMY3ZRfHSsMBbBUOtyPWBiTQaXbT//5Wjb/w17msd7nt6+LpjVe2Ni9/Xi9vQnhTHX0pdZyCbs2hJSVKaw9AIlsykDp9uZ8W6W27Lc6Ca9ZuALbTa5aBmfq6S+3rEUy9N9mpFP/rBMjA+DTblLcfo9MHU2wYR8QjOzAQhPP1WIHM42qKFTTeE4GiJTaIof61IBvBDy6rqWHMMZzyIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by SN7PR11MB6601.namprd11.prod.outlook.com (2603:10b6:806:273::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 14:55:09 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::7826:7a65:d620:89a8]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::7826:7a65:d620:89a8%12]) with mapi id 15.20.5880.019; Tue, 13 Dec
 2022 14:55:09 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Enable VDIP Enable VSC
 whenever GMP DIP enabled
Thread-Index: AQHZDfwdiCImVQNizE2821XTYEWAya5rIZWAgADCXOA=
Date: Tue, 13 Dec 2022 14:55:08 +0000
Message-ID: <MWHPR11MB1935EF8B60A3F6D39B201623B2E39@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20221212073325.2678764-1-mitulkumar.ajitkumar.golani@intel.com>
 <Y5fqVUXmoHqwNk+C@intel.com>
In-Reply-To: <Y5fqVUXmoHqwNk+C@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|SN7PR11MB6601:EE_
x-ms-office365-filtering-correlation-id: 36e938aa-f52e-4986-b12a-08dadd1a0775
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1gvYqwIABYVJX2lU274VAf8ZSj/0rHimJ9WB7udxnfEuRpgFWWRhDVpjrMB602WNUZCmR8GJTyRqs56WTInuxQOflJLUTgTnnc5DatB0MOAc6skYoh8hvKJFaUlVNg2+WQ+1BbG1qmdGMyMpdYzxdsbIg5fav/lR019pg7rFpV7PAUtHCC9AfJpBqTjrxipA/+WfX+oxlT+/4Uphj6du4Pj1JE3C//Izajb0O/Oiq2EzcCD7NriuQKoJRSz+3Pc/+7rTf/m3wtJjfdStjqHnUdg84Jjr0MuTUcRPPvaTzC/V/MbVC2EwfiyEIahiJmRRhxWY/nwotUBDQ/WRrJIZ5LBPYGM5bnIuSnpl0QE4VqUnTjDb0ojhiFk1zZlCEuWHnEVQB/cNBcYA2SOFX9uI9Ju58wRJauqRSxmhsIvT7LhU3i20RSvjjDhFSzaJQhV4uDXQp5XaLIoN7i9qiSC4BySNwqHI6z8K6a4ij2NOg8wVg2iTpoKKChh2BehqfwUF3NqhxIPJK4cdReY5VhzKl4a8UGug5FNGcHwyozQRWfMn2TvXNMz3uNe8JdqqOt5YaSii1WOgxl0EIfdrkjKnoG4xLgV3qBHqEA/KDwtFFNr7F1xD7tMKklzIhkXufZzUC0x8F03zEqg1qsVPPozGCuSgrk4rpfb4aAARL4AGb96qjQ/DEgAYZ4Z2li1+d7e9FY7AzALhK4rHQo+WMacVXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(346002)(39860400002)(136003)(376002)(451199015)(71200400001)(6916009)(316002)(8936002)(38100700002)(478600001)(38070700005)(122000001)(82960400001)(33656002)(186003)(9686003)(53546011)(6506007)(55236004)(26005)(7696005)(55016003)(66476007)(66446008)(64756008)(52536014)(76116006)(66946007)(86362001)(5660300002)(2906002)(66574015)(4326008)(66556008)(8676002)(83380400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?jszGaOLmM8Lh02BH+lsax/0PSfkp9EFxUXnzZGkYe5opLAiWDW1oWNXTeH?=
 =?iso-8859-1?Q?jxaOXppyzyPFaV8iSm9vWHKG4dxh0b03HBCnBrZv/+aP7gmg5TZIOZUWM5?=
 =?iso-8859-1?Q?vXeS368iiCxa9Tf472kbY/uChlAl/sjIgZQIc64fSswTfxpFWq/+0kmE4t?=
 =?iso-8859-1?Q?g3OmxEsSj1zFn71TKIBSwaSj75wandcdGEbq4JFvxGrxgHUk9FtmfGCN18?=
 =?iso-8859-1?Q?p6ir2yxT0PaEZQwqcp23GsjB4hvkQTNDyfn0brf1VkHJGEf2twPbUqcCOX?=
 =?iso-8859-1?Q?lBAsYJEsUZVVQWqv5SHHBLOIY9Gc+4ltp2hvl0M0RafqG5z9z1CAgr5kej?=
 =?iso-8859-1?Q?2U9rcjI1BmO+PS0xdM5O/xmvVZf9PQR0Co0QdME+1ynfUgCjuyUJpkAsRt?=
 =?iso-8859-1?Q?GaHEBAXMz2jcX8eYI13jTCAv49FS43F+xkPtO7IPe1KTRYKoLTB0Pe4lUG?=
 =?iso-8859-1?Q?ccZpYcqU7cGog0Ta3RYsWRnzvgxiAq8QtiiQsuTjL06yUv7GBQ7psbDxbQ?=
 =?iso-8859-1?Q?wpvTSrfRWCdPapdE7vmcjOJc84sOh9wkSbJ3Sy28nBBjVt2NfTo1+YXPhn?=
 =?iso-8859-1?Q?2aYpZ67Vq48vDX6JXhHG6AS3W870qAIHLD54Jrv7MXo9ACCKkdi0YNH1dP?=
 =?iso-8859-1?Q?H70OkJieo1WUNGkhLGAjsodOOAb3Y908vhyJ5tevL9uNaQ11IFMwhZ8Crn?=
 =?iso-8859-1?Q?JtWgCSdagbj6NPtDrmthGGrVsMr0KO1RLSPxzhAQXTaOVuUKd1ci898gCh?=
 =?iso-8859-1?Q?q3AYITrCgLJp498QkzmRwpFHykWpgc20z4l0pDumst/MTqHVSPHQ8JojoI?=
 =?iso-8859-1?Q?PPqwJeEpRT6UnYnEqFQYFoMVlQw9/18eQh9FeRR2YdWksAz2XqaSyo53En?=
 =?iso-8859-1?Q?z7Wzx7GgAvvnI2w2/OwHj0bkVqTMlnjFDt4xoekQavtRHuK1i/QfBfuTlQ?=
 =?iso-8859-1?Q?jc3sxT0QVXvCw1KMJBG/mah6b6upk17zEEyI1QLTuTJj7uT+qYHXIQEzzQ?=
 =?iso-8859-1?Q?kPn4Y2laYyBaHn5HMRKcqoWmPla3KqosFUZunYHfv/fFUOEVRTTeTDIWeD?=
 =?iso-8859-1?Q?dCfs1HYF0D7Q1QRrSLOGaeZz58uB/wribxeTkqvXDRYUdqfTIsXw3hsodE?=
 =?iso-8859-1?Q?vPBlbn5i/9GE2XytKxXKI0QssBuBxBfY/odOpZ6YpdGOzyVDLYYe6eIHd7?=
 =?iso-8859-1?Q?PPUgH4U9gEuw4rSP+k6LytjY/vDptT4qdyEWXIOwX3FtBSEfxnBEiUy8dH?=
 =?iso-8859-1?Q?lgRnLxguroEOEyDf7VD/8bvJaYxU5tB31Ia/+jCX65IOo1JhtokzVJ5jmr?=
 =?iso-8859-1?Q?sGy/e1e31FZE6uy0ehLsZuntTQsmfIZx9IFVXakQBkebXsEmIbgalI2pTc?=
 =?iso-8859-1?Q?Xz0a0c5/QBnovBdjEQPMwvatjLPuRlD0EfnFUPuKex8riaJZ4Pce+cML1w?=
 =?iso-8859-1?Q?Ln++7PgPu2q+mHeBEg1C5NvyOxE+Vv+81eFFqVnPrJAJgves0kk/Nz9PYP?=
 =?iso-8859-1?Q?vOxWqp56MWJ8h2GCKrAcmkUyFDW0PdQGxXxdySMkrNOU/MumSeHeZO4hjm?=
 =?iso-8859-1?Q?CkKGKrFSK+RzxYXHJEtru59RqWoz9I77IzyB5NdIUPcC8BZ9dOaJvdFwTI?=
 =?iso-8859-1?Q?glrLtdTC9wSmMWJC7tlskVGxOCRP3/2CDi4rgNq4lJlQDg1s2cHT/F3GoK?=
 =?iso-8859-1?Q?siZfJxQajB02l6ysXvE=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36e938aa-f52e-4986-b12a-08dadd1a0775
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2022 14:55:09.0232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m3zQN5uFqcnvb2XAV1VZju2O7fAVryg9U2r1QM89v951EpeyjMVs/DXF28FIaRIRqlqI/q05hMm824WRJM7xBWXVJ7LaqNvar6H0a/r59TNb5UnoFMyoQi2MJ9xRqMq2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6601
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable VDIP Enable VSC
 whenever GMP DIP enabled
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 13 December 2022 08:28
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable VDIP Enable VSC
> whenever GMP DIP enabled
>=20
> On Mon, Dec 12, 2022 at 01:03:25PM +0530, Mitul Golani wrote:
> > GMP VDIP gets dropped when enabled without VSC DIP being enabled.
> > Enable VSC DIP whenever GMP DIP is enabled
> >
> > WA:14015402699
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
> >  drivers/gpu/drm/i915/display/intel_lspcon.c | 2 ++
> >  2 files changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 72cf83a27405..6c36ee26d399 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3275,10 +3275,13 @@ void intel_dp_set_infoframes(struct
> > intel_encoder *encoder,  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >  	i915_reg_t reg =3D HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
> > +	u32 val;
> >  	u32 dip_enable =3D VIDEO_DIP_ENABLE_AVI_HSW |
> VIDEO_DIP_ENABLE_GCP_HSW |
> >  			 VIDEO_DIP_ENABLE_VS_HSW |
> VIDEO_DIP_ENABLE_GMP_HSW |
> >  			 VIDEO_DIP_ENABLE_SPD_HSW |
> VIDEO_DIP_ENABLE_DRM_GLK;
> > -	u32 val =3D intel_de_read(dev_priv, reg) & ~dip_enable;
> > +	if (IS_DISPLAY_VER(dev_priv, 13, 14))
> > +		dip_enable |=3D VIDEO_DIP_ENABLE_VSC_HSW;
>=20
> What kind of garbage are we going to be sending to the sink here?
As suggested by the Workaround: 14015405644 GMP VDIP is dropped
when enabled without VSC VDIP.=20

As part of this Workaround implementation, enabled VSC DIP whenever
GMP DIP is enabled.

Regards,
Mitul
> > +	val =3D intel_de_read(dev_priv, reg) & ~dip_enable;
> >
> >  	/* TODO: Add DSC case (DIP_ENABLE_PPS) */
> >  	/* When PSR is enabled, this routine doesn't disable VSC DIP */ diff
> > --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index 9ff1c0b223ad..e7cdc521fbd3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -630,6 +630,8 @@ u32 lspcon_infoframes_enabled(struct
> intel_encoder *encoder,
> >  		tmp =3D intel_de_read(dev_priv,
> >  				    HSW_TVIDEO_DIP_CTL(pipe_config-
> >cpu_transcoder));
> >  		mask =3D VIDEO_DIP_ENABLE_GMP_HSW;
> > +		if (IS_DISPLAY_VER(dev_priv, 13, 14))
> > +			mask |=3D VIDEO_DIP_ENABLE_VSC_HSW;
> >
> >  		if (tmp & mask)
> >  			val |=3D
> > intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
