Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF0D6974A3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 04:02:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47F7F10E0F3;
	Wed, 15 Feb 2023 03:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4214510E0F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 03:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676430172; x=1707966172;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nlvmrs6OGC+BxXE48uUQmWC5XeiSkVUMZdmcRPc05Vg=;
 b=TdIc94oS/zQ/KX7hgig0IHtxVP9QY5+2hQGZZlq0MDEPbOY1YzN3mL3z
 1yIKm4c7pVAjh14HTLIz3PbN+HkJAno60U3D50xx2PQ/OKHq5I+AwHYqE
 CEksdw/q+DTEid0hajxkAxv/MAPL6/lb2qQ7S/7wXZofAoqMgTwhpYzJz
 nJv7bP7StijntMGYN6ZanqORsfTK6foIEKCrDCQ2JupTpUToMNvJ0uj9c
 6bnhP/jF89vwH8413nfgYtZ2rv7vB37MNeMiUpYEW7oi085qPnXErTJbG
 sodiZMG5IFDmOLfLV72q5NiGnkknprW6TM6UlUxY2jY0GHvpT9kLXF0Sg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="333469265"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="333469265"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 19:02:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="758239434"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="758239434"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Feb 2023 19:02:49 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 19:02:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 14 Feb 2023 19:02:48 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 14 Feb 2023 19:02:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tgqhpx0BZAYCIASGsGOGrN8XG6J5cdD0FqCiS5Z0zMFuAOTkcf+Ar5dlW6kVQriuVsVBOPRb6gfpSiB9u4VUn+fv95njrjYBlhrcy7miB6IXgsIrQsNZGGZe/8jWGMFUNB8WRDs3+9kLQ0BpTqxgL7OZ+jzDV4q4g9aLiGc+YDQzMH1a+RDYQV+H1wr1bC6EWpIp1NmxdWVvW5j0rBkMGn96605nhqQjGy0ssETVRubbN6qxQd6NPrGi0wWjoQ0X8qeVvUB1l1hOkOLTGEZ/E8LBfBStVDoTqjhvyERBg3/2yzaDWis46zQZ0O4Jw1uQXbNNPFmABEz9EjRfOg2z0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XUwwVIqWd5Q2T19xC9SOiIiK58JwLuwOu+7R4CHUMtA=;
 b=Oa2H/Rh83vFFq7CM9dft1LpGY9M8zQedwEafDUkPaQNGHQnDB4tFXyGwCcqDeNYjCbFPHiohEzj01WPDe7EQX2U9rXhVbl2116PrzyJd1JARv/Lgf8IjSwA4R1DkF77hxmuScFQR6vUDFL9Sri04TBz90KuImRW/G6ShxUuaxJvMFJomEs91HgCeOxYXdSkxUYgV/uEuYVzOWo9lVpM8OHDtUyy9koqsSx+ulclFi5/XlB/b2tGUMNeJToUYBHSCLAUkE+TnCdpXwLdLjWWWbNWR1PZAPpdiOJ6qVNi5F+NWB6SLO1XE4mc9tLLFKSy9NLBuf9JH24HF7+7YBoC0wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by PH7PR11MB6523.namprd11.prod.outlook.com (2603:10b6:510:211::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Wed, 15 Feb
 2023 03:02:41 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73%7]) with mapi id 15.20.6086.026; Wed, 15 Feb 2023
 03:02:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 5/7] drm/i915: Fill in native_420 field
Thread-Index: AQHZOsgrs3Le9R3iaUqDRtnek0KkDK7OX2EAgAD+KMA=
Date: Wed, 15 Feb 2023 03:02:40 +0000
Message-ID: <MWHPR11MB1741236AFE136EFEC6C2CF34E3A39@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
 <20230207074416.3209722-6-suraj.kandpal@intel.com> <87lel0sbyt.fsf@intel.com>
In-Reply-To: <87lel0sbyt.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|PH7PR11MB6523:EE_
x-ms-office365-filtering-correlation-id: a9a7e0e4-0d94-4751-e672-08db0f0119eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ywu0aqtAd4zzDDTqjUUIditw+YmX1uSBeUK1zOSJKt0WOeCBIijxiI+9fIqfvOg8kY6imzxV4Ocg74I6NIdlIK4ImpcGywIOkemqjP/ob5fIs+1eVyXLaURzfomxkM0DU6l1x99VC/vCpS6N8Z2J5n2hc5l8AvSaoJV23r/ZJJPnJSz7Sbrj9UABcXfKUFECka+CNB2gCvkYA2vnhclfd4BTdTfGoO7d/qw/Xb+6uYzsiM+Xs8DxADMTU8YMtqO4N5tshvZWqZGH1HWRMLd6unwUEkRA3OFX8Bqh4tXGHwoKNPhz7nzXMmJEJFkIYFoBRlMLQfURi9QaYKoSJvk+wIGKl48Hec1Fsj6avV/2zpieOPEu5+ZYhPe3J5e3mb1PvkmiQdB6rGhAWGv7E9wCSMvj3uCAMofTlB3P2wdj4Q+GXNyNZwEqWSTEiPsLjlfPDHwt1Bes3ieiQdj4cYTJ4FgqVJsoesp9BGrmHYB1chFbLsE1a/3T40XglknCXqfwnqZGCeWqbKZi3/jfJGMqGN5D6hJDJO2PNp4X4DNc+XnvacErHt4n5nlLuE/qHxq/BBZY7i59OggbRqBfIh/wWD2NHSUlNETw3RQ8dgT4X61Iojy03Xi7d2+NFotKQCuEVMAp696yh6zvS3F9GYfFjAHpwXLwnMvbnv7hc3CHxhORU+WqMYZph/y4jFtk1xgBHB6V5GlKpfTkDq9upKBdSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(136003)(366004)(346002)(39860400002)(451199018)(2906002)(122000001)(71200400001)(86362001)(82960400001)(38100700002)(33656002)(7696005)(6506007)(26005)(186003)(55016003)(9686003)(38070700005)(316002)(83380400001)(66946007)(76116006)(64756008)(110136005)(8676002)(5660300002)(41300700001)(52536014)(478600001)(66446008)(66476007)(8936002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mUYm4zdehezWmybSyRr5HVRTTnPejyfUvKr/rgX9xGciX2HuhnXrDT0Ci5fX?=
 =?us-ascii?Q?EYBLk5/fOCBM2+TYXWTHhvfVTXUy8Nv5fuUcAWznIcYOix6JaD2Ntp+THeZN?=
 =?us-ascii?Q?5emw+R2/EJ9K9MRhpcM6qUyMv5OhzjPPApmkICp2eAP1jfLZXd/7pYMRMOvU?=
 =?us-ascii?Q?RssGiY/mO0o6Hxljg6Px3HYhjPoxABX3eQAVb6kXiKL6pbvTmhb/3rIrukSl?=
 =?us-ascii?Q?+UKBzmnjQwHRhY0abN79kX8M7oWJzM2ElPUKUVVKuOf/hm5jNNjgcSL8qA83?=
 =?us-ascii?Q?G2KdRsIr2dnPR58Sg2ePdAY+krimWpa1huscgnEV+hSech6bx8RxVSF6g2s+?=
 =?us-ascii?Q?Rcj8trP+NTjQDYldH8VLLkHYVIJVqJidBgRciomS3RWcyiLZkEgKipJ5RHEA?=
 =?us-ascii?Q?fuz5cxO1TXF3njreAmhWmR9fFZQeMJJ+M+LwySYgetbyNyI0Q5oHPy9RvlU/?=
 =?us-ascii?Q?MrVR8/zKhjqiejtc5ZtLQnJ2Bqhpo3iUK7ho8LprZM1TNWenNdI5/wMa7DDu?=
 =?us-ascii?Q?KNOmk+jbSQHzvH+BW/kw83CullGNuhbyzpQfeC9/xr8NrKh77tR8x4HzCBt/?=
 =?us-ascii?Q?EUz963gYcqTlXAi7CRErZSdUlHgGzTk4/P1BtLW1nczq0mBVK1yTQ6eoX1cd?=
 =?us-ascii?Q?3fgwpZC3DpJJ/6vk1f+8A3MMK0yAmHMdkNDJFulQgwlfdMnK+X8bN5QoBSzJ?=
 =?us-ascii?Q?ECljG0Wl8dslVz06fMrUhpeU48dJOniF11UKXZa8ZzXoXdZEOs9e2gLMLVD2?=
 =?us-ascii?Q?d4yJt6wncP+uvq8htxL5RgweUseNFrcQd34aC5sTFj6v7uNAKf1r2KuqHSpP?=
 =?us-ascii?Q?mI0cL1wDuJLacqaxkYBRJdYapFJYMD0ZuoO3uLoymZ6aTUxpZkmDdCTqHgw+?=
 =?us-ascii?Q?yRshz6gZuAivmtMxqEVWqXvt8Chy4ucmW/rdJShhM6+//aeB0ESAAS2O8fdp?=
 =?us-ascii?Q?LPz9VWIegNfmt2FwOhZM5kwZ4gC/qWg0IDA5bwL6JAk8eMIbgR/B+POErnaY?=
 =?us-ascii?Q?aWkEyT1JO2hhRYjpNB73Tiwdy2QYTPtU8yrsTwQ1E9nZp9+nUCjuOOAliVQw?=
 =?us-ascii?Q?WJllcG2S38cXyOY8qdJ+sFMryJs6iuEGbEWrMBOkN1JWB/++GLf1z2nsiPcC?=
 =?us-ascii?Q?IBd9iET9Iz7egTMDryVSA69drM53YKCEUc02NRkifFHz3751VntyJKfPt8qX?=
 =?us-ascii?Q?9kFVOiMczQdc8xtIMY3Meojgj1RrY3S0lxfTsAefhwvL1fnFA7RTHy9737/D?=
 =?us-ascii?Q?MvC2Pv8b3IczjQqgUmwCUQNJ2nnf2lMPYBYb9Y32yRq9W22SbWkVoBGFWKPI?=
 =?us-ascii?Q?Pz0l5BgwdqVRBvk/ZKUDtdZCCN8U6eoPjqaP/m4tGT3b2vcXVUxuoDmtbZNf?=
 =?us-ascii?Q?IW8xFLA38dwi1OGwfDLCfH2vBvyWjCwPJqZDpR94Fm3FGGcCl7NYcDnZF+6M?=
 =?us-ascii?Q?GfSgcpqgch0k7NUxm9K9x9F1Z83QDBXP9T4rmzvfFqVGVAtUSSokY+1E9x9c?=
 =?us-ascii?Q?8RhU8oQ/VQESYUhroSg23d9uaOIMxAMkghJsamHgb3VPVlAO4NbN7AVGvhSd?=
 =?us-ascii?Q?9K6tubgevQQbIcwakExEdG6sbBgwBPcy3nqDv406?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9a7e0e4-0d94-4751-e672-08db0f0119eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2023 03:02:40.7018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l5u7+2tLJeqQ3dYrBu6smUoLGjVuTqzDMqnwl5uB8nssgxAuQMuT6iBubmFYneQHlW4ESyEVLy9HMrh1hNYXAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6523
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 5/7] drm/i915: Fill in native_420 field
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

> On Tue, 07 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Now that we have laid the groundwork for YUV420 Enablement we fill up
> > native_420 field in vdsc_cfg and add appropriate checks wherever
> > required.
> >
> > ---v2
> > -adding native_422 field as 0 [Vandita] -filling in
> > second_line_bpg_offset, second_line_offset_adj and nsl_bpg_offset in
> > vds_cfg when native_420 is true
> >
> > ---v3
> > -adding display version check to solve igt issue
> >
> > --v7
> > -remove is_pipe_dsc check as its always true for D14 [Jani]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c    |  2 -
> >  drivers/gpu/drm/i915/display/intel_dp.c   |  3 -
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 72
> > ++++++++++++++++++++++-
> >  3 files changed, 69 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 003cac918228..f8c999fa3242 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1534,8 +1534,6 @@ static int gen11_dsi_dsc_compute_config(struct
> intel_encoder *encoder,
> >  	if (crtc_state->dsc.slice_count > 1)
> >  		crtc_state->dsc.dsc_split =3D true;
> >
> > -	vdsc_cfg->convert_rgb =3D true;
> > -
> >  	/* FIXME: initialize from VBT */
> >  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 73a7baccd7d0..250d9cdd14b8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1470,9 +1470,6 @@ static int intel_dp_dsc_compute_params(struct
> intel_encoder *encoder,
> >  		min(intel_dp_source_dsc_version_minor(intel_dp),
> >  		    intel_dp_sink_dsc_version_minor(intel_dp));
> >
> > -	vdsc_cfg->convert_rgb =3D intel_dp-
> >dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
> > -		DP_DSC_RGB;
>=20
> Are the sink caps taken into account somewhere else?

Looking at it again I should move it after intel_dsc_compute_params and che=
ck sink capability=20
If convert_rgb is set as true there

>=20
> > -
> >  	line_buf_depth =3D drm_dp_dsc_sink_line_buf_depth(intel_dp-
> >dsc_dpcd);
> >  	if (!line_buf_depth) {
> >  		drm_dbg_kms(&i915->drm,
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index ed16f63d6355..13ad853e24eb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -460,14 +460,47 @@ int intel_dsc_compute_params(struct
> intel_crtc_state *pipe_config)
> >  	vdsc_cfg->pic_width =3D pipe_config-
> >hw.adjusted_mode.crtc_hdisplay;
> >  	vdsc_cfg->slice_width =3D DIV_ROUND_UP(vdsc_cfg->pic_width,
> >  					     pipe_config->dsc.slice_count);
> > -
> > -	/* Gen 11 does not support YCbCr */
> > +	/*
> > +	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb
> is 0
> > +	 * else 1
> > +	 */
> > +	vdsc_cfg->convert_rgb =3D !(pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ||
> > +				  pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR444);
>=20
> Nitpick, IMO "format !=3D x && format !=3D y" reads better than "!(format=
 =3D=3D x ||
> format =3D=3D y)"
>=20

Sure will change this in the next revision

Regards,
Suraj Kandpal
> > +
> > +	if (pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420)
> > +		vdsc_cfg->native_420 =3D true;
> > +	/* We do not support YcBCr422 as of now */
> > +	vdsc_cfg->native_422 =3D false;
> > +	/* Gen 11 does not support YCbCr422 */
> >  	vdsc_cfg->simple_422 =3D false;
> >  	/* Gen 11 does not support VBR */
> >  	vdsc_cfg->vbr_enable =3D false;
> >
> >  	/* Gen 11 only supports integral values of bpp */
> >  	vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;
> > +	/*
> > +	 * According to DSC 1.2 specs if native_420 is set:
> > +	 * -We need to double the current bpp.
> > +	 * -second_line_bpg_offset is 12 in general and equal to
> 2*(slice_height-1) if slice
> > +	 * height < 8.
> > +	 * -second_line_offset_adj is 512 as shown by emperical values to
> yeild best chroma
> > +	 * preservation in second line.
> > +	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -=
1
> then rounded
> > +	 * up to 16 fractional bits, we left shift second line offset by 11 t=
o
> preserve 11
> > +	 * fractional bits.
> > +	 */
> > +	if (vdsc_cfg->native_420) {
> > +		vdsc_cfg->bits_per_pixel <<=3D 1;
> > +		if (vdsc_cfg->slice_height >=3D 8)
> > +			vdsc_cfg->second_line_bpg_offset =3D 12;
> > +		else
> > +			vdsc_cfg->second_line_bpg_offset =3D
> > +				2 * (vdsc_cfg->slice_height - 1);
> > +		vdsc_cfg->second_line_offset_adj =3D 512;
> > +		vdsc_cfg->nsl_bpg_offset =3D DIV_ROUND_UP(vdsc_cfg-
> >second_line_bpg_offset << 11,
> > +							vdsc_cfg-
> >slice_height - 1);
> > +	}
> > +
> >  	vdsc_cfg->bits_per_component =3D pipe_config->pipe_bpp / 3;
> >
> >  	for (i =3D 0; i < DSC_NUM_BUF_RANGES - 1; i++) { @@ -594,8 +627,13
> @@
> > static void intel_dsc_pps_configure(const struct intel_crtc_state
> *crtc_state)
> >  		DSC_VER_MIN_SHIFT |
> >  		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT |
> >  		vdsc_cfg->line_buf_depth << DSC_LINE_BUF_DEPTH_SHIFT;
> > -	if (vdsc_cfg->dsc_version_minor =3D=3D 2)
> > +	if (vdsc_cfg->dsc_version_minor =3D=3D 2) {
> >  		pps_val |=3D DSC_ALT_ICH_SEL;
> > +		if (vdsc_cfg->native_420)
> > +			pps_val |=3D DSC_NATIVE_420_ENABLE;
> > +		if (vdsc_cfg->native_422)
> > +			pps_val |=3D DSC_NATIVE_422_ENABLE;
> > +	}
> >  	if (vdsc_cfg->block_pred_enable)
> >  		pps_val |=3D DSC_BLOCK_PREDICTION;
> >  	if (vdsc_cfg->convert_rgb)
> > @@ -906,6 +944,34 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
> >  				       pps_val);
> >  	}
> >
> > +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > +		/* Populate PICTURE_PARAMETER_SET_17 registers */
> > +		pps_val =3D 0;
> > +		pps_val |=3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset);
> > +		drm_dbg_kms(&dev_priv->drm, "PPS17 =3D 0x%08x\n",
> pps_val);
> > +		intel_de_write(dev_priv,
> > +			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
> > +			       pps_val);
> > +		if (crtc_state->dsc.dsc_split)
> > +			intel_de_write(dev_priv,
> > +
> MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
> > +				       pps_val);
> > +
> > +		/* Populate PICTURE_PARAMETER_SET_18 registers */
> > +		pps_val =3D 0;
> > +		pps_val |=3D DSC_NSL_BPG_OFFSET(vdsc_cfg-
> >nsl_bpg_offset) |
> > +			   DSC_SL_OFFSET_ADJ(vdsc_cfg-
> >second_line_offset_adj);
> > +		drm_dbg_kms(&dev_priv->drm, "PPS18 =3D 0x%08x\n",
> pps_val);
> > +		if (is_pipe_dsc(crtc, cpu_transcoder)) {
>=20
> This is still always true for display ver >=3D 14.
>=20
> > +			intel_de_write(dev_priv,
> > +
> MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
> > +				       pps_val);
> > +			if (crtc_state->dsc.dsc_split)
> > +				intel_de_write(dev_priv,
> > +
> MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
> > +					       pps_val);
> > +		}
> > +	}
> >  	/* Populate the RC_BUF_THRESH registers */
> >  	memset(rc_buf_thresh_dword, 0, sizeof(rc_buf_thresh_dword));
> >  	for (i =3D 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
