Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 992987EDB46
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 06:37:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BAF610E10E;
	Thu, 16 Nov 2023 05:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9286410E056
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 05:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700113068; x=1731649068;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NjDKRYPQW+T0Xhxi8rK5hvYmB/f4Hc3GmUN1OjF03LI=;
 b=TfYVIymhzaUX5GnqaFjxjf8k2A5hE6txtnGdlDxEKym1IhWgY/RR9jSH
 KltVb7IAryvM0Le7xu+VvlwxCfW7U+fZFF7KDzrBLBIvD5oOh6CsBDUBY
 7dGp2jxDkwPnHV+9BwX8FOuZO1jJ9voOAQ364XNED9/GKwcn5CQq7cXid
 qrdSFjWYGgB4TSajlUwU05lDHPSCWz4jYy6saz5VjCslliHUNHV7qG6QB
 Q4Lnxr1VXfyaY8pHBIWXe/vV0ukqkdd6ETKOCjZ8i7/Qzq+Gs/h8OY1xQ
 4oP4zloT9LFx3Az5MAEbyST8PEzyNLnrXlYQbqXfzQFoj44sziGHlCpyD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="9660032"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; 
   d="scan'208";a="9660032"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 21:37:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="1096680303"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="1096680303"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 21:37:46 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 21:37:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 21:37:46 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 21:37:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nn9R4/E79Kw4Gu5QGJ+fHmL0P+Jl1xFGftHcNZBT2egXRTcGN/O1gvY8Wg6mi5adMp0vki1I0rdmCUfL6ByMd8lYbtWb6MsvgaR21oeYketio6Yd+sVsrzA4QNJdVpAtYsr2o/0mjUN6tlDep3OMUDjbTaLtf+E5AG4EhwWHm2Mdtm27llV174gflsijgWvPwAsA9fXGKX6HeIXOi6FE3FGKvyu9rMxdzdT1JBhndGssWvoE1fUk6kxGXMIHb7VexOc11NgiWqzDWHeOFpBaZ8OaOb53AG3yUrh9Kp0+HCFZsUlPS3T3pymRnLWJeMvQEiKIfFac5BVxAMY6KBvKPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uit3NA5sZmCN6iViB/QpbnG5qzDMvvEx2C9Sz83nJCM=;
 b=YsLZvdjTLKTK+TZBiTuq0faN/+weEWom9coA1MzqTxnxJ3FgumEIJLtBXJ5Bp/JqGEF6LBABb2pLoR2ML5RAyVl+wc6MNp9OOZmkyNhuWBl8KxmfUCy74HWN7yu4CYKgneDKiuGN64vQNxCLlDvhqnYa/7MjAWDLWBitvGXLdqoymiBwEBDinrxWsBLaE62hf0FD/3BqnqGZOx221Z9Rv6m4Pl6ADIZDYiMAap+RSwN6ZTtGj3Yz/ZGKAVKRUi/0aEaPLkd/qVpzm9QcMjKgXrag8xribsbxPxYnwoUV5SrWDo3qx8XMFbgnsa9eAUXNcV7XAV7LDl8r2GFye/RZyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 DM3PR11MB8759.namprd11.prod.outlook.com (2603:10b6:8:1ac::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.17; Thu, 16 Nov 2023 05:37:44 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 05:37:43 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Fix PBN / MTP_TU size
 calculation for UHBR rates
Thread-Index: AQHaFm2eDWrnXlRDm0OWI4HfweH7jLB7ZScAgAAAf+CAAAy2AIAA/nkg
Date: Thu, 16 Nov 2023 05:37:43 +0000
Message-ID: <DS0PR11MB8740959AA9F3154473DEA94EBAB0A@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
 <20231113201110.510724-3-imre.deak@intel.com>
 <ZVTJ0L37KLZLIWfu@ideak-desk.fi.intel.com>
 <DS0PR11MB8740BC7EB6F27C3B12E6910ABAB1A@DS0PR11MB8740.namprd11.prod.outlook.com>
 <ZVTU5DJDmqOCreRi@ideak-desk.fi.intel.com>
In-Reply-To: <ZVTU5DJDmqOCreRi@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|DM3PR11MB8759:EE_
x-ms-office365-filtering-correlation-id: ebe2a904-a217-42db-2630-08dbe6662804
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9rbK4dJaPZaG5BGjeUbSr5CLYodztZDymsyfi+1bvfmXDnoRzaElagG5SUx7PjywlisMgOo8xvwrAo0tCWOrJOh7k8570JiTXNenFYyVxSx85K+7QQqnnE11rPoxY8Peu6i3mNXOrLWM42Tx/lYFay//T3YQKBXQ5m7t61Ui8XyM1vfaaP+AOx9gl6XgKxF0gsBvqjn2fHF6XwFFolaQ6NukD+GKDExHSdUM0GXKZEQ7NaPFuo/XhJsTfA+d+v5BMc0aeVaU7xjUHmEYl6F/Nr7E+ZeYOnw9+SAB67z6aV9oMXsji1dCFq04QjCua/8TwBtT0gC9ScJco+1fzEznn8n2NptA3O58DVzZMhVp1aqcZJwyCCB7MGCak35SNmCJmF29kOl1hg8O2uL+XE5Taba59zfAKgQnFkvTIn573TLxToeacTUfq5YonXdv0oy1A53qwfze4cv13ieuK+A7lE16Py+mHsKC60OAwAkbZD4Ju+87wsmasFzEdRpwtf/Vh8Hy81o/AM9cCiemmUsoeBc/wQIQ1Ym/f4nnSNhGjbgp+5U0XuiOnQruMmPN1XBzv0zI4roTP8yZNyafqmnN4vyHLZ7BqSRDtkHsHTjZHehF7cLBuCpZpymrrWutsktv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(346002)(366004)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(4326008)(52536014)(6506007)(7696005)(9686003)(38100700002)(53546011)(38070700009)(26005)(2906002)(55236004)(122000001)(82960400001)(83380400001)(33656002)(86362001)(41300700001)(5660300002)(66556008)(478600001)(64756008)(76116006)(316002)(6636002)(66476007)(55016003)(66446008)(66946007)(8676002)(8936002)(6862004)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aLcmr3qBbEgUlpikCVYzqEfvzsqIQ0t+J9AUEWl0mN7Rhm9KEBzywqftnJbp?=
 =?us-ascii?Q?ONO3KBvk8g0Y4qYnXXQNxyYf/pGJdu46O5STylTx57i3KHncJ/1Bpml9rpDW?=
 =?us-ascii?Q?eAIAfpHZuxtvvyb3dOJP9kGFzWRz43Oof9lkxBn8K7WdqpP/tt5Cb8VDP4x9?=
 =?us-ascii?Q?CXG9KLcozfSXTXandq4lijDWQ+AGJitBTBSu2E/8WvwT9fhGZXfocITtPO1E?=
 =?us-ascii?Q?sehbNo0UeQrN1W/BROoK9eTNQPS25yS5BCB6040pjc1RLy390nuckAb5aEsf?=
 =?us-ascii?Q?SAJP6aG8iF7pBya/vvjQzZZa5SHT4rzuzA3+Xj87RFBT2piBCwY1fmai0Bhg?=
 =?us-ascii?Q?GpjAAWzOEIkzRcqZa3KODBlBbluOneXXS7IalxrFzpHdy2mKw3B7SNq6sx4f?=
 =?us-ascii?Q?LnkVa9tCTzG93FWGJZjE33hgUc+v70CFlKAANL6NpLNyLDQPePjXqeVcEltA?=
 =?us-ascii?Q?3rqkelDdJvDigKVBnnvgwtZO8Rcygqv0bkug+0PX1ChI84Xjxqnr66pBmDHJ?=
 =?us-ascii?Q?hk9BGorWmBWrxHx7sStemCGhM4KIl/O5SdXdW3sSsGNZVE+oqUVVAOr4hJAB?=
 =?us-ascii?Q?evXGYzw6M++cKVhtlB3odZCaei0UdeKuFkDrQyt0lJq1uW+JmJOlM3oRgdLB?=
 =?us-ascii?Q?Vb3T2p+ekcnSohBJ8hR886XGrsFi9v9qvrXhgsKoxSLAmUOa0xZCm/DVZgQ8?=
 =?us-ascii?Q?Z4H+eNFQI1wEdTg91GQvN99JQ6vkAcN95ERF67yYFMiHAh735fcceTgkYJmZ?=
 =?us-ascii?Q?SEWElLsCyAICCIZZJg/2ekdn3xTnkf9mnPxdRjwu0F8iaIYDYdbh3+ge2yx1?=
 =?us-ascii?Q?9B84Ro0EuZ+lGs2f9ilgqghgp9+luYpAXUkH17+mFltEeS50OcEK11OKEgD2?=
 =?us-ascii?Q?V8QZ4kO/Tf8Fu45aIcOq8E7LWsCK3qlwY8v+SODPWM5rNYJZTWO+9CaPgYVX?=
 =?us-ascii?Q?sqMuOVXlARNELM3FkqXstxaGyCG1STs4rhRtvGeFhQtUaMf3DYiV9b5bJCyi?=
 =?us-ascii?Q?DjRNuFxsIvyB6DRfKe9Lf3Dif9RKr0F6As9xMh8MzJCsRh335GOe0IaAz4ji?=
 =?us-ascii?Q?SE5FsB7OfxCd60x2AQcQokJEgiQ4Kq4dP3p1JDA45TkA4QkaQw6TT9Lg+mU8?=
 =?us-ascii?Q?m21ynnvvNAAtcAk6py3VuGi1HREFpo3CV9EzwmUiAV25BSL90V2NC3SWCgmH?=
 =?us-ascii?Q?XOdrON1PxJ19XYTvW92KgoXqKbilCHiFZFqhlUZfHbbTRB7mG1ug8ZbZXQwq?=
 =?us-ascii?Q?6k35uwmOlKrnxV0mfNMFdgGLK3PKhPxWX3BSzrby8qg1coWcw46U8GG+ubJO?=
 =?us-ascii?Q?0f3a7GDklxu9J7Fnp49zmW6rkb325xCir9f3bf9iUwfO5ecVM5yreG7lp+Uf?=
 =?us-ascii?Q?a6eUT5SdkzZ1pkWh8MUdbmY//xdYJ4WRYe3TL4Q3jLwRMQYjFCls1LgKKkh8?=
 =?us-ascii?Q?00MAxstM0+MDO3Wmi3xzAf2wjhtxTWiOH3CieoMdkbkdtWeKJxD0EfywOv+b?=
 =?us-ascii?Q?L/D1dJoHp2U9VAwP51HXK9LFFYPapV62ZfncKyE9MnXLbzC18ztZc+T/pjeP?=
 =?us-ascii?Q?nba8Qy3di3K4zKOASoZeLeljLkXMliwFiqgo291m?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebe2a904-a217-42db-2630-08dbe6662804
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 05:37:43.5259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e4Cax0iszOAKfZif70tOUdQCFgA8WRsPlTAjxGXaKCCnMEELIdxcpzCh8gzvw5F3Yj7oT6URBY5v+nhIb4qC2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8759
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Fix PBN / MTP_TU size
 calculation for UHBR rates
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



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, November 15, 2023 7:56 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Fix PBN / MTP_TU si=
ze
> calculation for UHBR rates
>=20
> On Wed, Nov 15, 2023 at 03:41:08PM +0200, Murthy, Arun R wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Wednesday, November 15, 2023 7:08 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Fix PBN /
> > > MTP_TU size calculation for UHBR rates
> > >
> > > On Mon, Nov 13, 2023 at 10:11:09PM +0200, Imre Deak wrote:
> > > > Atm the allocated MST PBN value is calculated from the TU size
> > > > (number of allocated MTP slots) as
> > > >
> > > >   PBN =3D TU * pbn_div
> > > >
> > > > pbn_div being the link BW for each MTP slot. For DP 1.4 link rates
> > > > this worked, as pbn_div there is guraranteed to be an integer
> > > > number, however on UHBR this isn't the case. To get a PBN, TU pair
> > > > where TU is a properly rounded-up value covering all the BW
> > > > corresponding to PBN, calculate first PBN and from PBN the TU value=
.
> > > >
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++++--
> > > >  1 file changed, 8 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > index b943dbf394a22..a32ab0b4fc9d7 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > @@ -170,6 +170,7 @@ static int
> > > > intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder
> > > > *encoder,
> > > >
> > > >     for (bpp =3D max_bpp; bpp >=3D min_bpp; bpp -=3D step) {
> > > >             struct intel_link_m_n remote_m_n;
> > > > +           int alloc_tu;
> > > >             int link_bpp;
> > > >
> > > >             drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp); @@ -
> > > 200,9 +201,14
> > > > @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct
> > > > intel_encoder
> > > *encoder,
> > > >              * crtc_state->dp_m_n.tu), provided that the driver doe=
sn't
> > > >              * enable SSC on the corresponding link.
> > > >              */
> > > > +           crtc_state->pbn =3D
> > > DIV_ROUND_UP_ULL(mul_u32_u32(mst_state->pbn_div * 64,
> > > > +
> > > remote_m_n.data_m),
> > > > +                                              remote_m_n.data_n);
> > >
> > > I realized this may allocate fewer PBNs than required, since the
> > > actual pbn_div value is not an integer. Also PBN can be calculated
> > > in a more direct way from the effective pixel data rate, so I'd like =
to do that
> instead.
> > >
> > > I'll send a new version with the above changes.
> > >
> > Also spec says about a constant value of 64 for TU size.
>=20
> I suppose you refer to WA 14013163432 (Bspec / 54369), yes we considered
> this with Ville. For that one data M/N needs to be configured for full BW
> utilization, that is M=3DTU-size N=3D64. It's for the case where FEC is e=
nabled and
> applies to ADLP A0-C0 only (need to check other platforms).
> The corresponding issue is supposed to be fixed on ADLP D0 (which require=
s
> enabling some HW workarounds), so not sure if/how we should enable this S=
W
> WA.
>=20
Can we have this as a TODO so that we don't forget!
With the above TODO
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,,
Arun R Murthy
--------------------

> > Thanks and Regards,
> > Arun R Murthy
> > -------------------
> > > > +
> > > > +           alloc_tu =3D DIV_ROUND_UP_ULL(crtc_state->pbn,
> > > > + mst_state-
> > > >pbn_div);
> > >
> > >
> > > > +           drm_WARN_ON(&i915->drm, alloc_tu < remote_m_n.tu);
> > > >             drm_WARN_ON(&i915->drm, remote_m_n.tu < crtc_state-
> > > >dp_m_n.tu);
> > > > -           crtc_state->dp_m_n.tu =3D remote_m_n.tu;
> > > > -           crtc_state->pbn =3D remote_m_n.tu * mst_state->pbn_div;
> > > > +           crtc_state->dp_m_n.tu =3D alloc_tu;
> > > >
> > > >             slots =3D drm_dp_atomic_find_time_slots(state,
> > > >&intel_dp- mst_mgr,
> > > >                                                   connector->port,
> > > > --
> > > > 2.39.2
> > > >
