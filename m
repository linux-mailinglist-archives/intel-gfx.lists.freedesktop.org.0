Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A6374E643
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 07:15:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97CE10E2F9;
	Tue, 11 Jul 2023 05:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5B0D10E2F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 05:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689052519; x=1720588519;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JYuDRr0ARoWI6pPfoZfw4fbEYnqV2GpipuZqcf/CXsg=;
 b=nrf5RiSYs5nLNf6Eqw58Zh6bAqcn8wMUhic9Wmdy2obxjSSlMjeCo02i
 h+bVwL/jf9h75kJR4Qcco4oVQQc/x4SysZDfTRqksitXAt+8FV9eD2mtZ
 /uS1kEMgwYLINjtoJI6ti3qs7o2z1lcwYapGkTlpveamVKDT3RpZ5aBHW
 /UZMzfNWvc4HBDr1UNOHwUiUfkft2Tburbdxn5XD3DkdPevmSZMW9+oLi
 TRY0BEsDms69sTqNid1iz6eWxIONBpZMX4VCOK2V2Gb4g07bLaEfvGezt
 AavuRnM24I5+YjZIUQfaK1PxclyMreYwGktaDFcyIFq5gGVOObvBuUxRr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="367105024"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="367105024"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 22:15:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="671237426"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="671237426"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 10 Jul 2023 22:15:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 22:15:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 22:15:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 22:15:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 22:15:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZJ9nRBPHO7GZ+a+lzXUgWiaYFgXNpJFhMwnW0jOyWyifMN1ZVAL9kMEanqEbMtgNjBPKSCw3rJ1L5yxK0+EM9TdVagZibMX4YE6LOmIEFyG0yl1JRfAFF8pXyndNHvqz/YW/FgH+4d2v9iSs3Ou9r3QjhcUsxATc5113s5bBxlHk42Mwg7V871HjuTkta53Uhql7XMJ0zWFG5GGJm6fE2hy23UZkapnO22VR8gK/9jkWVluoDiDiqLOsOUZB1mQkQYUmpgWCvgeCLdQaZ8WAJT4vT03FrQ8DWlqUQhqWVIPDn9hwn68OlJg3cEvwvh4WgI6oXiVlcAmuQ0tjUsPR/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZuqIsDBPgu3vOtOP+EcsCO/Ou3mN3diecAXoM9zQrLg=;
 b=O53tlom4vVUjX+I5oDY1o6T89nMhSW5ddsv3nOX/OZVIeDeF5q9cJ7WJZ7lW62ZVGgx0eOpy/bbVQgfO1BVuzecNsr2F+AjYgypIXvqoQkf/ypYxBP1Mw0SrCKWtk8PyaX4mOm0BGuQjrDXqXGgT8nBewACHj+KS8QpCNw33fOCJpuvqfdOmHoXmpvCH0M6IMlvxclpANDQW+Hw2RSliqYbi4NSTSyHIczAHVyazKE50Wbvdz5kag0hF5xkzVY/jRJOELS1LaCkcc0EF9aoT/Dq01GWrjmlAItBRRvGC+YU1BUkdxQTXX/C36IZ7iVViiGMckF41kNTad3U+akwBhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB5579.namprd11.prod.outlook.com (2603:10b6:510:e6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Tue, 11 Jul
 2023 05:15:16 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6544.024; Tue, 11 Jul 2023
 05:15:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/5] drm/i915/display: Compare the readout
 dsc pps params
Thread-Index: AQHZsxbcRCferozW0UeHbRAq/PiCoK+y2W6AgAEtIsA=
Date: Tue, 11 Jul 2023 05:15:15 +0000
Message-ID: <SN7PR11MB675051DBC96585A57E27130FE331A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
 <20230710100911.2736389-6-suraj.kandpal@intel.com> <87ttuchvay.fsf@intel.com>
In-Reply-To: <87ttuchvay.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB5579:EE_
x-ms-office365-filtering-correlation-id: 90bd529e-5527-4f34-a270-08db81cdcfd9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UCVLlyC8jOIs6ebHL68ovariPP0XQMn8N23eZyDl/nyQ7gsYEkWqkQnGYSM0nDnreIZ1xP3rD4sGCbs6FTUNCI2nfdzvN/GjOdx1PIr7LOyEHHqZegr1LCjoJDCv6FCdTvJl3HGmzCiVW2u/fC1kdTO1x1fKlmUk6Ro57s3u4vBssDu/YvaNABa+17KS3PiEIw3HEuoAbHelTJnOIaqOy2bnRkFL0AnTpm9p21beQqMhw7NMv0OfYxbuDDUwB3Mlr9fNs4YqaHw01NKKWzw75Vdhr/9bhCPw9YgZcvINlgdgrqYg18QNkkRnwbzj0mNJJTGRpHvnGJjq9KdZOd8MH0ytE0mt9+k/pxQi2XhGL4umHtceKJnIAthspUQvuSpTkZxKoIwg9vgq/55fmP7suvq53Xvx54zwnZu1RUgu1z8kE8HS8cVyw8d5+LyT+3UcH+dQRSwRb/BzOdGGsbIb9VW0D3zOLTDq1XvXL5OkgeXPlz6j4+SUk7YPONBvYaoBdPo8nsPgVlt6KVruqQMkr+pGXvsfU35J8nBaxumO3N+5XSqa+zQ7+Fj/MN1C/8qc8mdTTf197B719HKoV9GdjMsrXvXHPzWxvdIRrPsJUng=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(136003)(39860400002)(376002)(451199021)(7696005)(66946007)(76116006)(64756008)(66446008)(66476007)(66556008)(478600001)(71200400001)(122000001)(55016003)(82960400001)(26005)(6506007)(9686003)(38100700002)(110136005)(41300700001)(38070700005)(316002)(8936002)(8676002)(86362001)(52536014)(5660300002)(186003)(33656002)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KOtfw7lbH6zD2dcUrcxg7V3H6atP8DZwfiFxjmc0abQ2JJ5CYnQLPfm5+wFz?=
 =?us-ascii?Q?e9k/MTZYH4VrDneg6Hx8/Nr7Zod1CWYxSjJZ3V/U11HtuxpvjBtNlfAet7Tr?=
 =?us-ascii?Q?G5zNDchk3nBQq6m5w6+KRLhyEL0pR4L6cMqlGPzZk+hqD5mDLH1uj81id8gj?=
 =?us-ascii?Q?55fJ8AEOleguaD8jTG2pgg7D/UiQTr5VUAciTvy+3PVmcnz+LOJbFFHV02hj?=
 =?us-ascii?Q?GvOzIDwC5zuFuEMBmmT3WVxw+3upeVJRXnG5T3b3saPq8LT5dNZxsOoVdMaw?=
 =?us-ascii?Q?FviHXGq7oMA2JtdvXxmI5MZuRm+5fQnFYGIhjAaHpA3GolArcyezlJh6B1Z9?=
 =?us-ascii?Q?PCHOf5mljHTqBQTfNzrBP0q45IIlKPe78AWLnjp8zbLmexHDG6H5hkJcfYKT?=
 =?us-ascii?Q?I7Ac2H/ty6H19NyTUAc32iDwWC+0914b+1JF3twOAO6cDeA4Z4mC7DLtrdqp?=
 =?us-ascii?Q?0Ff0isfM2jtfdxQHjD986hGFcdrkR8oMjTUbIZUw4MCcSmF934dIlUSzyEGN?=
 =?us-ascii?Q?R0M8TobcZkgPXvdr+8CKBIy2soQb/KPAujTkDSOsnDtaLldEOk7tgF74jDyW?=
 =?us-ascii?Q?3fhXoBTVa6/+cmyenxCuT7cLoC79am8CeYQeuH7zXNrQvG2BUlzyLF7C/Fwc?=
 =?us-ascii?Q?w/I8mospK5hlqYbigue1llI/4FW4xbakzYyTxqq8aqu4SbAkb4QHiBH/26hq?=
 =?us-ascii?Q?eA+DPL/wnz/+IsvnpG7tsAaPYGe/C2I6Rl3ORAWK0UOl1rXSyn+DMLts3OgF?=
 =?us-ascii?Q?Hze3vxrxOFD0+u9yapimtL6dcBeg3JygBSYs7bHNorYByFaXdf5JJgjb45Lj?=
 =?us-ascii?Q?nC0NKeSZhg+Mk0gplaBAojagpx2ElM2CanqWrpTdpOPujyqn3mowlj1M/2n9?=
 =?us-ascii?Q?zH1SYG0sZAKAPQ+rpkCKEWxXB1S7kkHrwFQPXHylb4KUcF8OL1dzABUtsaJa?=
 =?us-ascii?Q?CczTh/vjX+hEjLTDPGQbaQQr2QkHPU4mb40LjzLfWwvhM3d40w5RSbcAyrvS?=
 =?us-ascii?Q?8RzO78Qoh+SGHgM9V5Qv41f/mGGRBfcQ5kmeqEckAgX0tyk4186QbJ8vcTt3?=
 =?us-ascii?Q?6IRI0rC4zhdtCJNCQqlyafdrowLwXq9f2xJHQes8otllxOR83E38M7Q0a8en?=
 =?us-ascii?Q?K02T3EjPgbXc9DyM6Z6qWTjvPumOOLfWcdVRFJ97NXAATH8rNmONU1Jlpgs0?=
 =?us-ascii?Q?krnVcUW9Z+Ty6u8TtHwHu6fwZRMv9Cgn4smvoCNdponRNFFBwz68GTTY72Nc?=
 =?us-ascii?Q?6zYmotzUQcU+AwhZKoyKqgdTQnsLC9nLR2jDcxzbfduHg2sHpM2BwWXdccYL?=
 =?us-ascii?Q?jTQrxksAcscCa8X4YLx4M2Tzl5hCEid/+rYRsFbE8ZEBq7d/frwv4tgn1XR4?=
 =?us-ascii?Q?QnXD62Db/k5sMJQl6kwVq3Z6d5KkomtXNPfsxTTgy3U9SA13M/+3qa4AbJ91?=
 =?us-ascii?Q?W84koKzEsuhQ2Zq+cm9XQ2FYQ0IgBrp6wmKgr5wp32xxgHgyCRH3bF2yejfk?=
 =?us-ascii?Q?jEPnX7j4R4Hjexm1YQwdTDnqYtK+dQfdiZeG8xJ1eDzTjFSFAJWfsw+ycK4v?=
 =?us-ascii?Q?FnCJWs2watk9sqPb/uBKnA2/DAFd19lbldYM/aY5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90bd529e-5527-4f34-a270-08db81cdcfd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2023 05:15:15.8291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LXlpkRhmKvSE3eSvNKjtF4OImgTOSo/pog5YFXNn1wlOuRdqrXhq6Ix1rtAha5LYWhF3crNy03D7gxwcH7qp4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5579
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/display: Compare the readout
 dsc pps params
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

> On Mon, 10 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > With the dsc config being readout and filled in crtc_state add macros
> > and use them to compare current and previous PPS param in DSC.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 55
> > ++++++++++++++++++++
> >  1 file changed, 55 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index eed01957bdb9..5c1596d7cd92 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5007,6 +5007,8 @@ intel_pipe_config_compare(const struct
> > intel_crtc_state *current_config,  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(current_config-
> >uapi.crtc->dev);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> > +	const struct drm_dsc_config *dsc_current_config =3D &current_config-
> >dsc.config;
> > +	const struct drm_dsc_config *dsc_pipe_config =3D
> > +&pipe_config->dsc.config;
> >  	bool ret =3D true;
> >  	bool fixup_inherited =3D fastset &&
> >  		current_config->inherited && !pipe_config->inherited; @@ -
> 5202,6
> > +5204,26 @@ intel_pipe_config_compare(const struct intel_crtc_state
> > *current_config,  #define PIPE_CONF_QUIRK(quirk) \
> >  	((current_config->quirks | pipe_config->quirks) & (quirk))
> >
> > +#define PIPE_DSC_CONF_CHECK_I(name) do { \
> > +	if (dsc_current_config->name !=3D dsc_pipe_config->name) { \
> > +		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> > +				     "(expected %i, found %i)", \
> > +				     dsc_current_config->name, \
> > +				     dsc_pipe_config->name); \
> > +		ret =3D false; \
> > +	} \
> > +} while (0)
> > +
> > +#define PIPE_DSC_CONF_CHECK_BOOL(name) do { \
> > +	if (dsc_current_config->name !=3D dsc_pipe_config->name) { \
> > +		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
> > +				     "(expected %s, found %s)", \
> > +				     str_yes_no(dsc_current_config->name), \
> > +				     str_yes_no(dsc_pipe_config->name)); \
> > +		ret =3D false; \
> > +	} \
> > +} while (0)
> > +
> >  	PIPE_CONF_CHECK_I(hw.enable);
> >  	PIPE_CONF_CHECK_I(hw.active);
> >
> > @@ -5378,6 +5400,39 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  	PIPE_CONF_CHECK_I(master_transcoder);
> >  	PIPE_CONF_CHECK_X(bigjoiner_pipes);
> >
> > +	PIPE_DSC_CONF_CHECK_BOOL(block_pred_enable);
>=20
> You should be able to pass the dsc substruct as name, no need to define
> dupe macros for DSC. See e.g. PIPE_CONF_CHECK_I(hw.enable); above in
> the patch context above.
>=20
Hi=20
=20
Thanks for the review will get this fixed in the next revision.

> > +	PIPE_DSC_CONF_CHECK_BOOL(convert_rgb);
> > +	PIPE_DSC_CONF_CHECK_BOOL(simple_422);
> > +	PIPE_DSC_CONF_CHECK_BOOL(native_422);
> > +	PIPE_DSC_CONF_CHECK_BOOL(native_420);
> > +	PIPE_DSC_CONF_CHECK_BOOL(vbr_enable);
> > +	PIPE_DSC_CONF_CHECK_I(line_buf_depth);
> > +	PIPE_DSC_CONF_CHECK_I(bits_per_component);
> > +	PIPE_DSC_CONF_CHECK_I(pic_width);
> > +	PIPE_DSC_CONF_CHECK_I(pic_height);
> > +	PIPE_DSC_CONF_CHECK_I(slice_width);
> > +	PIPE_DSC_CONF_CHECK_I(slice_height);
> > +	PIPE_DSC_CONF_CHECK_I(initial_dec_delay);
> > +	PIPE_DSC_CONF_CHECK_I(initial_xmit_delay);
> > +	PIPE_DSC_CONF_CHECK_I(scale_decrement_interval);
> > +	PIPE_DSC_CONF_CHECK_I(scale_increment_interval);
> > +	PIPE_DSC_CONF_CHECK_I(initial_scale_value);
> > +	PIPE_DSC_CONF_CHECK_I(first_line_bpg_offset);
> > +	PIPE_DSC_CONF_CHECK_I(flatness_min_qp);
> > +	PIPE_DSC_CONF_CHECK_I(flatness_max_qp);
> > +	PIPE_DSC_CONF_CHECK_I(slice_bpg_offset);
> > +	PIPE_DSC_CONF_CHECK_I(nfl_bpg_offset);
> > +	PIPE_DSC_CONF_CHECK_I(initial_offset);
> > +	PIPE_DSC_CONF_CHECK_I(final_offset);
> > +	PIPE_DSC_CONF_CHECK_I(rc_model_size);
> > +	PIPE_DSC_CONF_CHECK_I(rc_quant_incr_limit0);
> > +	PIPE_DSC_CONF_CHECK_I(rc_quant_incr_limit1);
> > +	PIPE_DSC_CONF_CHECK_I(slice_chunk_size);
> > +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > +		PIPE_DSC_CONF_CHECK_I(second_line_bpg_offset);
> > +		PIPE_DSC_CONF_CHECK_I(nsl_bpg_offset);
> > +	}
>=20
> I'd prefer it if we didn't have version checks here. Just check the value=
s
> anyway, it should be zeros in both hw and sw states for display < 14, and=
 if it's
> not, the state checker caught a bug.
>=20

Oh got it will remove the version check from here.

Regards,
Suraj Kandpal
>=20
> > +
> >  	PIPE_CONF_CHECK_I(dsc.compression_enable);
> >  	PIPE_CONF_CHECK_I(dsc.dsc_split);
> >  	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
