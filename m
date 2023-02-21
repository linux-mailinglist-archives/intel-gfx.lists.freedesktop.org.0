Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6D969DCA8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 10:15:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C18B10E321;
	Tue, 21 Feb 2023 09:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA68110E321
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 09:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676970922; x=1708506922;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MHprYpVBskc7DS5C/9YQpBaA1B7XlW4JNhVofMio5d0=;
 b=VC0LF8sp/FlQti8CGqvh4u/rweDiWQhMOUFQW1Z8hNrezmJdxifUeI1I
 XMgFhKoOUIlYfSu2OKqaW1eKF/Y+LgcJK5ADe8SsxejY58XWXtFMZmoxa
 0rBtAnQv6OcE8f8fWYu+A+CNl1i8NES0X1Fd22pltNw64g0eFVgThPWZj
 6HvfHkG0Njb/l7z5X25FBxJT7RJyohsOUdzjwIcLINycc/BzQEgIs/Ial
 tIl5/jRdZFS7XGtEZfLYB01iwPHK/8GmWCCrMgoMs7Dm26X33E1FZFIfb
 uV+mJpYPtn2k3KiEIaxNei8JcD0cY5vf0pxFmkogKu64O8J+YVn+lKq37 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="395065579"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="395065579"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 01:15:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="845612658"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="845612658"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2023 01:15:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 01:15:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 21 Feb 2023 01:15:21 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 21 Feb 2023 01:15:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dz323PxmbWYdXwz+YVNOVxEF/hWlHj3v/DZMykBQMVGvXrQ8DffrEppF227iywDMgWTntlTWeifaGlr2ROtH1to26Neijp8fjqJJS8kmmkWgHaxkeuOebq68yTMCfv9h1FGO9qYXImeZjg4wl4JXefEt803NfGUk+eufoPJLxX94FrF2buP5+X2eGfxX6OsHr1LXGO1tIA2wsxTUEk6cCWMPhnx2r7Lhxm2z5LHr5SI40mXOD2fmDttoI0ONHmFSKoswo/xKTeDvmUPWcpbC1hm8LJyiei9CSEE+Ie3euB8QpB2mxIw2kb9Vyz/ChoRIeWhEkdSeaD3u+hkjXMO1Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=opiGRg7TD9b/DfSQz9Ey5yFPvaEqMqy/idClY63U3Ps=;
 b=Outk5m+iRSo7+gzGgQrqZpaDjhh7wB/a2NkBgRqA4Jl3MneXnv5R6BdE+dWUWkvhFyjC3NXUIfrbMU9fcC1FXkotzGJQ0bEF4diQsbnaANYlSISbPIj58+nABt1nxbiAQIjECjCh8k8jXnObbdOi8vIMrm0iUWYBZCLupo7FRR413fHWdOLzJQRnn9gkUAx5JKDHuyOOeOxahFM4KOChVqPhgvj7dszFRz3alfWXoLykBOL0aOITSPJNS2+MVfP28ZEbEhrvYaLPW3JNsCJdOtoNrbG8iADD7LIIs0v+7Yts2pd5euTxaKO8jQiKlnjsBWnOplmBQyIz0SNQ5/6qsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by DS0PR11MB8183.namprd11.prod.outlook.com (2603:10b6:8:161::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.18; Tue, 21 Feb
 2023 09:15:18 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::8fed:e048:66b9:532a]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::8fed:e048:66b9:532a%5]) with mapi id 15.20.6111.021; Tue, 21 Feb 2023
 09:15:18 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v10 5/7] drm/i915: Fill in native_420 field
Thread-Index: AQHZQOw4CUTHBvfY60m7RIO/IbTOQq7YX9YwgAB7rACAAEuQcA==
Date: Tue, 21 Feb 2023 09:15:18 +0000
Message-ID: <CY5PR11MB634498AE84F467845036A961F4A59@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20230207074416.3209722-6-suraj.kandpal@intel.com>
 <20230215031723.3447553-1-suraj.kandpal@intel.com>
 <DM4PR11MB6360FED44981B807442DA8FEF4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
 <MWHPR11MB174178DE6E35F637ABFD55BEE3A59@MWHPR11MB1741.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB174178DE6E35F637ABFD55BEE3A59@MWHPR11MB1741.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|DS0PR11MB8183:EE_
x-ms-office365-filtering-correlation-id: 5fec2607-b5a3-4f9d-d105-08db13ec26da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mqFVXF7o9aOQ5KtlHRdW0++G/y9LGOmL7D0wR5wpLMh7lX71nzEsq9tf9wxaDJNtYdoON9IYTxXeW+Ngwkwo+9Nl8hppcyeFt0Vta0/2uGAigYx1S8jKDy7J/XlzKKIwDks073SVoBXUg3dhPuzVpf15ziMz/5u2MGctIP4tDLZZQNp6+G6or+6cRVVHu871PmPtoXPR8WoXziRLoqHXfiQ6P16UIXBWGvsXPii1qR9c1M8DFJ5pnWcYyp4ThjD3TXAUVxdJMMkh1E9rpVx97JeuJhvuf/+Rb1qulfS0gmL2Q9Jdvy9o5L0re2QIQP1Hsw7uqW/8rjti/FuHhsqJScCPTv+OxBIUK5SNug7K7UWLrbbyIjET0ORoW9wTIQmlZUvTgASJSQ9RAef9HFUAEP204wnJ4uo7RrITx6S79Pu0rCwNpTPDD+F9UCeSr9D9DgG9uGuz7o3SS93wmNOfm5KVDtJIaEs0zN07S8HLbgg+xJ4CLqnhzD5KWs29CD2WpDWUMm9Dn+WiHsnwn6nRw33YRKaW+gA/ZRtyG/4BxfbFuVxMKg3LumfCgzjk30xIqtz7E2nsXXqlt6zKLsLZgaHw0qe0zeuY1K/BdyRwE/Aq29DwI/YuxBj50vpo1sm9MmzHFtUl+HC4VZ9Pbfb+v4+2+kF0wOawDHDbp5zD5i3t+te4k2nIZVDCOlz9eWRv4nlpttOvRWytxdW1KZSy3g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199018)(8936002)(52536014)(5660300002)(41300700001)(9686003)(55016003)(38070700005)(53546011)(2906002)(83380400001)(38100700002)(122000001)(82960400001)(33656002)(71200400001)(86362001)(316002)(110136005)(7696005)(478600001)(8676002)(76116006)(66446008)(66556008)(26005)(66946007)(186003)(66476007)(64756008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SduPTqBOqh+rVd+sbI/j60PKet4xH6I/bsWtpkYZ70oLobO+IJkjWVMyenQg?=
 =?us-ascii?Q?k7dP55RajPJih/PlD/K54Lu+wGhXkv6ES9u/dkDjraeKPedykjsB5PBoM0YU?=
 =?us-ascii?Q?3HN1Wkkrmc+5wt+Ez9YdNZ5VQC1C1HjeQ3Oa5Wzp8y9SRWna/i9PvmEwU9oH?=
 =?us-ascii?Q?r8wUyhbfxD44Z760+bp7mf2aDz98tAZnse5nLBcmMZ4Vhfou5qqrwmmz+xnS?=
 =?us-ascii?Q?5fDV8T7ROHwV3acaXigzUiGYncbc2tmysb65SQvWi5Z2gBJ5AuAn6Fd1W1JT?=
 =?us-ascii?Q?vCnIQt65EAgQGTnV87cSwTl0TgZKIADkJsC1PCqnfjK9jP3n5rnjyNH8Xckf?=
 =?us-ascii?Q?wbuhnHCYiuWRzv6t9oerqjshZxxRZxKyEUJ/3FTy5iHrWzsOu4XTQOmAMchM?=
 =?us-ascii?Q?eoJIF8dE/6g2ADtUclkjFzH5wz2Kr8DitA4WKkhHjrVM7CPlHUhYlC8GQWXe?=
 =?us-ascii?Q?dD8Pw1cbHJFbuggByeL60voZRNyy0PnWY9LlNK80eCdl3e+Uxf7W69AkLx/g?=
 =?us-ascii?Q?uN8tOU5NFRZB2UT710kAK2cvG0a3aqqWesb0Pil/BzYS9zB16pQ3VtHeLrea?=
 =?us-ascii?Q?3/hiQ8WYnO+MGWyXsAVefmt8iWepzdQ8dU3K8rVrW7asHqiiF54lG+KbAcd3?=
 =?us-ascii?Q?yOtlUsGVOugF6Ewxy6mg16zJLE4bbPX97yNSmHe1gkQeTUJWsgbTbNboVgmI?=
 =?us-ascii?Q?Daz7DtTGh9hTwUGFkX52BE6tJtSuqtNLHzgjBL9esWM7lrI2as2fb8nHAfoE?=
 =?us-ascii?Q?PQ8hrXxMneeDEETj8xsoYya3/hpsk7gIdgNL7wdyaHd9V5ej7yT8alymABG/?=
 =?us-ascii?Q?cWVbZIFRnqx2wDTyKlmCkHyjoRx6WE31YKJRMyc+Oaate7TjGwDxDLz9AK/k?=
 =?us-ascii?Q?XEIgVLdtW31XX5qlwDKEGZ63Zoomvwb9Fem/NE9KAQm0dPrdYHrGle9UPCA0?=
 =?us-ascii?Q?qQvVBZ6oRGQBU3ogTcJ4r0UG8oXv4Y4e0Q9njVerZVQsXkijnLCrRNH/ecLb?=
 =?us-ascii?Q?5Z2l7G+Z8lChc6c4IZGxejxsH6tLPOCapexdnyp/8EcyELfkbt46UAzZnNVl?=
 =?us-ascii?Q?Imy9WCFQkwYyUlp8S9GG3eQfUdFLbtqc6vm2N2PadbF3OuA2XxYZ7bzT8ngO?=
 =?us-ascii?Q?EteyjGRTMKMamGU/ej229MsjfR/6ZTIp6ihjjTpJDl+Qnl4UiOHPHlxDVBry?=
 =?us-ascii?Q?/bgmldufpfsPYA4vfxJuNu6QVGhFxAfD5P2gaTDrZ+nKDoQ+pVNTSKG73BP8?=
 =?us-ascii?Q?2liKAV6vz4fqGepK4wEi/iWSptkU6Yk/CG6PDf29BebrglEK7B99YgiU0EGI?=
 =?us-ascii?Q?65x8odEDvsfu9uTnrvF4SA2KokQL6cvGE7LSOH4J38mpF2bP4abvGVHevOxX?=
 =?us-ascii?Q?592xcXA68M8vn/TXXDljN6YgBbnafZ9MlTRlBzg19qq69zbXHbYfy9G5yVea?=
 =?us-ascii?Q?9ypxdOy9OeM5Fv406y8+qms7PbzEPeoBfAxlsh9KVXFk4VtmwTyHLxJqQ0wx?=
 =?us-ascii?Q?ZXCdo0vKNyfzrJvWjk7PozKXHoc89Kf4bH+NEHQInU/BXPT1ymkcDRzNNzmg?=
 =?us-ascii?Q?XccFiPmmBzE8E8C/BrqlroHaw7DHp/6nc1u5YduU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fec2607-b5a3-4f9d-d105-08db13ec26da
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2023 09:15:18.7672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UgilXon8FzoKgoOKxE6ItaiOznUyN06yxG2T2BxK1qLZ/1IRBQWwUcllhAxTr+obwQa5kVH6auXX4ERCaSQzmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8183
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 5/7] drm/i915: Fill in native_420 field
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
> Sent: Tuesday, February 21, 2023 10:11 AM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH v10 5/7] drm/i915: Fill in native_420 fie=
ld
>=20
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Suraj Kandpal
> > > Sent: Wednesday, February 15, 2023 8:47 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH v10 5/7] drm/i915: Fill in native_420
> > > field
> >
> > Append "display"
> >
>=20
> drm/i915/display ?

Yes

> > >
> > > Now that we have laid the groundwork for YUV420 Enablement we fill
> > > up
> > > native_420 field in vdsc_cfg and add appropriate checks wherever
> > required.
> > >
> > > ---v2
> > > -adding native_422 field as 0 [Vandita] -filling in
> > > second_line_bpg_offset, second_line_offset_adj and nsl_bpg_offset in
> > > vds_cfg when native_420 is true
> > >
> > > ---v3
> > > -adding display version check to solve igt issue
> > >
> > > --v7
> > > -remove is_pipe_dsc check as its always true for D14 [Jani]
> > >
> > > --v10
> > > -keep sink capability check [Jani]
> > > -move from !(x =3D=3D y  || w =3D=3D z) to x !=3Dy && w !=3D z [Jani]
> > >
> > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > > index 05e749861658..7065203460d3 100644
> > > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > > @@ -1534,8 +1534,6 @@ static int gen11_dsi_dsc_compute_config(struct
> > > intel_encoder *encoder,
> > >  	if (crtc_state->dsc.slice_count > 1)
> > >  		crtc_state->dsc.dsc_split =3D true;
> > >
> > > -	vdsc_cfg->convert_rgb =3D true;
> > > -
> > >  	/* FIXME: initialize from VBT */
> > >  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST;
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 1a397ab710dd..baa5af7d3bdc 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1466,9 +1466,10 @@ static int intel_dp_dsc_compute_params(struct
> > > intel_encoder *encoder,
> > >  	vdsc_cfg->dsc_version_minor =3D
> > >  		min(intel_dp_source_dsc_version_minor(intel_dp),
> > >  		    intel_dp_sink_dsc_version_minor(intel_dp));
> > > -
> > > -	vdsc_cfg->convert_rgb =3D intel_dp-
> > > >dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
> > > -		DP_DSC_RGB;
> > > +	if (vdsc_cfg->convert_rgb)
> > > +		vdsc_cfg->convert_rgb =3D
> > > +			intel_dp-
> > >dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP -  DP_DSC_SUPPORT] &
> > > +			DP_DSC_RGB;
> > >
> > >  	line_buf_depth =3D drm_dp_dsc_sink_line_buf_depth(intel_dp-
> > >dsc_dpcd);
> > >  	if (!line_buf_depth) {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > index ed16f63d6355..19f9fb53f139 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > @@ -460,14 +460,47 @@ int intel_dsc_compute_params(struct
> > >intel_crtc_state
> > > *pipe_config)
> > >  	vdsc_cfg->pic_width =3D pipe_config- hw.adjusted_mode.crtc_hdisplay=
;
> > >  	vdsc_cfg->slice_width =3D DIV_ROUND_UP(vdsc_cfg->pic_width,
> > >  					     pipe_config->dsc.slice_count);
> > > -
> > > -	/* Gen 11 does not support YCbCr */
> > > +	/*
> > > +	 * According to DSC 1.2 specs if colorspace is YCbCr then
> > > +convert_rgb
> > is 0
> > > +	 * else 1
> > > +	 */
> > > +	vdsc_cfg->convert_rgb =3D pipe_config->output_format !=3D
> > > INTEL_OUTPUT_FORMAT_YCBCR420 &&
> > > +				pipe_config->output_format !=3D
> > > INTEL_OUTPUT_FORMAT_YCBCR444;
> > > +
> > > +	if (pipe_config->output_format =3D=3D
> > INTEL_OUTPUT_FORMAT_YCBCR420)
> > > +		vdsc_cfg->native_420 =3D true;
> > > +	/* We do not support YcBCr422 as of now */
> > > +	vdsc_cfg->native_422 =3D false;
> > > +	/* Gen 11 does not support YCbCr422 */
> >
> > This comment can be merged with the one above.
> >
>=20
> Can I remove "/* Gen 11 does not support YCbCr422 */ "
> And just keep "/* We do not support YcBCr422 as of now */" or Make it som=
ething
> like " Gen 11+ does not support YCbCr422 "

I think "/* We do not support YcBCr422 as of now */" looks better.

> > >  	vdsc_cfg->simple_422 =3D false;
> > >  	/* Gen 11 does not support VBR */
> > >  	vdsc_cfg->vbr_enable =3D false;
> > >
> > >  	/* Gen 11 only supports integral values of bpp */
> > >  	vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;
> >
> > Leave a line gap here
> >
> > > +	/*
> > > +	 * According to DSC 1.2 specs if native_420 is set:
> >
> > It would be good to add the section name as well for ease of reference.
> >
> > > +	 * -We need to double the current bpp.
> > > +	 * -second_line_bpg_offset is 12 in general and equal to
> > > +2*(slice_height-1) if
> > > slice
> > > +	 * height < 8.
> > > +	 * -second_line_offset_adj is 512 as shown by emperical values to
> > > +yeild best
> > > chroma
> > > +	 * preservation in second line.
> > > +	 * -nsl_bpg_offset is calculated as
> > > +second_line_offset/slice_height
> > > +-1 then
> > > rounded
> > > +	 * up to 16 fractional bits, we left shift second line offset by
> > > +11 to preserve
> > > 11
> > > +	 * fractional bits.
> > > +	 */
> > > +	if (vdsc_cfg->native_420) {
> > > +		vdsc_cfg->bits_per_pixel <<=3D 1;
> >
> > Leave a line gap here
> >
> > > +		if (vdsc_cfg->slice_height >=3D 8)
> > > +			vdsc_cfg->second_line_bpg_offset =3D 12;
> > > +		else
> > > +			vdsc_cfg->second_line_bpg_offset =3D
> > > +				2 * (vdsc_cfg->slice_height - 1);
> >
> > Here as well
> >
> > > +		vdsc_cfg->second_line_offset_adj =3D 512;
> > > +		vdsc_cfg->nsl_bpg_offset =3D DIV_ROUND_UP(vdsc_cfg-
> > > >second_line_bpg_offset << 11,
> > > +							vdsc_cfg-
> > >slice_height - 1);
> >
> > The parameters we compute here are being programmed only for gen14. We
> > should limit the computation if they are going to be unused for prior
> > platforms.
>=20
> How about we make native_420 field of vdsc_cfg true only if DISPLAY_VER()=
 >=3D 14
> this should take care of not filling any extra fields or computations

Yeah we can even do that

Regards
Uma Shankar
=20
> Regards,
> Suraj Kandpal
> >
> > > +	}
> > > +
> > >  	vdsc_cfg->bits_per_component =3D pipe_config->pipe_bpp / 3;
> > >
> > >  	for (i =3D 0; i < DSC_NUM_BUF_RANGES - 1; i++) { @@ -594,8 +627,13
> > @@
> > > static void intel_dsc_pps_configure(const struct intel_crtc_state
> > *crtc_state)
> > >  		DSC_VER_MIN_SHIFT |
> > >  		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT |
> > >  		vdsc_cfg->line_buf_depth << DSC_LINE_BUF_DEPTH_SHIFT;
> > > -	if (vdsc_cfg->dsc_version_minor =3D=3D 2)
> > > +	if (vdsc_cfg->dsc_version_minor =3D=3D 2) {
> > >  		pps_val |=3D DSC_ALT_ICH_SEL;
> > > +		if (vdsc_cfg->native_420)
> > > +			pps_val |=3D DSC_NATIVE_420_ENABLE;
> > > +		if (vdsc_cfg->native_422)
> > > +			pps_val |=3D DSC_NATIVE_422_ENABLE;
> > > +	}
> > >  	if (vdsc_cfg->block_pred_enable)
> > >  		pps_val |=3D DSC_BLOCK_PREDICTION;
> > >  	if (vdsc_cfg->convert_rgb)
> > > @@ -906,6 +944,32 @@ static void intel_dsc_pps_configure(const
> > > struct intel_crtc_state *crtc_state)
> > >  				       pps_val);
> > >  	}
> > >
> > > +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > > +		/* Populate PICTURE_PARAMETER_SET_17 registers */
> > > +		pps_val =3D 0;
> > > +		pps_val |=3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> > > >second_line_bpg_offset);
> > > +		drm_dbg_kms(&dev_priv->drm, "PPS17 =3D 0x%08x\n",
> > pps_val);
> > > +		intel_de_write(dev_priv,
> > > +			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
> > > +			       pps_val);
> > > +		if (crtc_state->dsc.dsc_split)
> > > +			intel_de_write(dev_priv,
> > > +
> > > MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
> > > +				       pps_val);
> > > +
> > > +		/* Populate PICTURE_PARAMETER_SET_18 registers */
> > > +		pps_val =3D 0;
> > > +		pps_val |=3D DSC_NSL_BPG_OFFSET(vdsc_cfg-
> > >nsl_bpg_offset) |
> > > +			   DSC_SL_OFFSET_ADJ(vdsc_cfg-
> > >second_line_offset_adj);
> > > +		drm_dbg_kms(&dev_priv->drm, "PPS18 =3D 0x%08x\n",
> > pps_val);
> > > +		intel_de_write(dev_priv,
> > > +			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
> > > +			       pps_val);
> > > +		if (crtc_state->dsc.dsc_split)
> > > +			intel_de_write(dev_priv,
> > > +
> > > MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
> > > +				       pps_val);
> > > +	}
> >
> > Leave a line gap.
> >
> > >  	/* Populate the RC_BUF_THRESH registers */
> > >  	memset(rc_buf_thresh_dword, 0, sizeof(rc_buf_thresh_dword));
> > >  	for (i =3D 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
> > > --
> > > 2.25.1

