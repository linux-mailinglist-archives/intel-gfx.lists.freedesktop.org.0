Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4647EC3EA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:41:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71FEB10E046;
	Wed, 15 Nov 2023 13:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A32F510E046
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700055672; x=1731591672;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WkOCyjTnb+qwoGjK+DQqDbQu2mkpYu7nSMCGk2xPJTs=;
 b=ZWWX4F4luQ8B4XolkwxuKvDoxi9GpUkRZzqXG7cTcQRO0S+WpLn+eKM2
 pIKVxe19njTlTpAuvLrmpPhDiLlPw8SbAb4sFVkJqRjJ0SKIJtHm5qCJT
 ktTcXC4GsskWTUIxqyVUZBbeCzhN+hinI5hxbtxHsvB+sxiIq4gjq+Wk8
 WF0lCqnKfE4voWnn8KItJPZC3JeATrkczlqRZJZJ8opCLgpf6/DTaVXbz
 i1G2MVD+jjnZxj3U1QT6OPFKizTuosAEX2kdUafZNWcAxKrr0HZ6NlWai
 BHPS0no12RLhGiy82bDK6nF7jxThTobf811gwb+iTW9DpOs4LMGdHnGBW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="421974340"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="421974340"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:41:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="1096448019"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="1096448019"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 05:41:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:41:11 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:41:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 05:41:10 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 05:41:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fnlORzPaPvS3mrr7c1sfS6E1D6tpg6VJsZq8gxZcqoId6J0i7W76bsfXFhvQlpgmoSTYCIDrOlCT1Er4lKhVz0gKcAaLJ34R6s+OM9AkbAdX/5Ch/JnhC7sXYbjVKNLm2jyavtIinUjDUKa3skyPCPqPMziWvkNc4tLpENw4fA/oxYlkAEGawbMY2Nf0R26DDzlsXrB3vn+1j8gyUtzx4thpuQ1HlBR9dz0J0O75fvJrRfLx58wKlMI8gWNUZkBw2UN25iixB/2kY7Hlbxp5+GBMn8Yh+kJELesLwOKJRtEuvKdWidLSvO+eBKSP2qBZVaW+ym+ozZEYfS0J3RwqdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+YDRFYqW6z07snvB2XF0ajUDs/UpwSCjpA67C7tMmPI=;
 b=m6MyNlzJhTh1DVz7ZfUZEgsto4ytPBgF2c2kBP9FUjqxRO+Cjf/NRju+Z6Tlr890rwQFTnYl/rbaVtw1+IVnNeCaaYGdShnhki6iYhd7JJACEeYyHvBGM++yJA4Ai3MJlu0EgPMyaP4H+GhUZk6k2T+tGGDPACPtQuDFsEBDPb2cWxrFo4a7alLYiI1STMmtXwOMsvoeY9Q+C5slYQG0NfolqZ/4ZW84hRpG/8jv39nn1K0A7FBUGQu68e6wK0a+MZgdL6O6dcvFU/ortfxy7ZkWbdMJkU9sHV2xw9418DqOyGbveICOwXoKvHRqER/bNlYeWONng82kkaq+csYQMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 CY8PR11MB7193.namprd11.prod.outlook.com (2603:10b6:930:91::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6977.35; Wed, 15 Nov 2023 13:41:08 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 13:41:08 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Fix PBN / MTP_TU size
 calculation for UHBR rates
Thread-Index: AQHaFm2eDWrnXlRDm0OWI4HfweH7jLB7ZScAgAAAf+A=
Date: Wed, 15 Nov 2023 13:41:08 +0000
Message-ID: <DS0PR11MB8740BC7EB6F27C3B12E6910ABAB1A@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
 <20231113201110.510724-3-imre.deak@intel.com>
 <ZVTJ0L37KLZLIWfu@ideak-desk.fi.intel.com>
In-Reply-To: <ZVTJ0L37KLZLIWfu@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|CY8PR11MB7193:EE_
x-ms-office365-filtering-correlation-id: 6c84e89d-28ad-4330-1f1f-08dbe5e08600
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZLcLJ9elG7Cd98CIySPh2GtUk6oVopmYv7mZxogL5lUmMN41I/cDZjCtW3NpkTuc9hGZ7vHj63Jh7AihIg8RoLEtOFwGwHeywjwhoEKRdMuw9rhHOduX+BsMQcsO9Od/2ZN+Z0ef/qykmuiWU84Pe0Ua9VyplI+k7K7F1BWu6qif4gNfsbnN/TXcMCPiWX9aJIMuEK8fdcGJblZHpFjC7SlulLK9XxbRvkVoP7U8rlxvrYYHR9ukPg/e4nBbV8VNA0dWkddhNbxcElv3J8yJVHgF1KqsHPrAxmNxDdgixBaKwsmkgRB/1lVIkC8maYq4SmCXLJUWhv7gKc8d934Q15cMjRgGdbmM/radQxjj3bQPSukbQ4pBWPdfrewzu/yJboa5nTvknoX3jY02qKExRXZvRv+EeOZ4akun2hOvG2MSKxGasZxqr3rGci/J5FP1DW+Esc6jej6OpduJMCVw66MaXybupek618nHrsqFDyB3u1/Wba6fGkhW7X3kv0e7aX+/Z2YKqr/EwJ0Kbn6rC3nNs67szAkm+hjva1ft1gNe50TPzs3fW8I50NAE32M7QDphZr6q6aDObNx5pWj6BwUk1yaeCbLMcxQ9+F+Z3lwYwHf+a0f3GnGCvuB8QJ2S
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(366004)(136003)(376002)(39860400002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(5660300002)(26005)(53546011)(55236004)(9686003)(55016003)(76116006)(38100700002)(7696005)(6506007)(2906002)(86362001)(33656002)(71200400001)(110136005)(82960400001)(66556008)(66946007)(66476007)(316002)(66446008)(64756008)(8676002)(478600001)(83380400001)(52536014)(8936002)(122000001)(41300700001)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NrfQ2/KUri6KAHIuNyYDAq6wGjnfK7lLhHKKGin7SqFEny0iTPCIFVKuKr01?=
 =?us-ascii?Q?lKWoKvoexiitdKT2uZUAoG1qdKBM1HNrf70VnsZENSUX3cRRZSJOWpUXnX2z?=
 =?us-ascii?Q?IpC6IMyzfDfT9XqYKUDhfZ+10rc04MZDr00wW796owiq4iFxiCgdC3JMIF/L?=
 =?us-ascii?Q?zd6wV0WX9sn+ATApDXpJJuGfWp78Nvmz71S1jUmAdu59q+0Ob3sew6ybmZoi?=
 =?us-ascii?Q?z0eCp8LFb8R6tDTgsDkosHzMzFPFcT7+8eaetIK3Eucm4r0fKcIRjntLbpEj?=
 =?us-ascii?Q?kgDu3VgkMLKTEk/fNcFxZBcJPadAyYK8YMYfU6cjCVJk1BlbtmkiHuiXL6ny?=
 =?us-ascii?Q?znPTwdFGRFvrMfBROwmqMjw+0U6VTd9Ex6qNsHu5Cvkqez+K/Wi5hf3jaMqt?=
 =?us-ascii?Q?BLAYz7iq/dZG2uDl0rXk7fXyNXgfEG35BxG2NnGHySd4rknPqQ1kzOIePDhf?=
 =?us-ascii?Q?JvboOdU98A6aZMMh7xX9JuRrEo0qs/33ybJbjQRKXOXYOBcjzSMkRWkGz/Ly?=
 =?us-ascii?Q?4cKtMBb+R3DpyFScQVc5uzCJKZZxrAun8i3Y77ilNnzPSdH+7/ZikSTmqPVO?=
 =?us-ascii?Q?L3qxXsArDBKF5o94hyj0CgRTzKCKaR9SHwDsFm+Hy+LNVOazc+DB5xvy5Uzn?=
 =?us-ascii?Q?VD6u4DkNiMiksg+vvleUlKPn3ubV4N6xFAuRuI4oamViXQEQPPCC3mBmNdYi?=
 =?us-ascii?Q?ZgiBp06RF/j/hGFZOYwe3TUUldlKhubu9nM05UiO018RKKA8cqEw+4BxKEqT?=
 =?us-ascii?Q?2ymXA7yDl5cxS7Pik6vTTKdqXc2CrHwtqKr5f/bPVpO9nhdYam3CHPf/8H5M?=
 =?us-ascii?Q?alc+HIwnOXs6ftLjCms6W298v6HnLvMLNQJsv+TTupDRww5kyeinVMoqlwCO?=
 =?us-ascii?Q?fC/aNV4yOeaZdKAh6z5+QMdDe5jhigl8XKmFqTnReYRjml2tCB2kqxcK+/Ne?=
 =?us-ascii?Q?A7rzb98dZYE7gvvH0NK6GWkUKmw2BvL79MRvZOTjqTPrig8b22UZKqdxOXQM?=
 =?us-ascii?Q?bkUeW+jfxryjULgI/t2QItDy4MUXX9YLQ7kldj2tRWDIpMuBxorIWHbLogTU?=
 =?us-ascii?Q?L469VWC04pNdMVhWbBGLWZnrXER74ds/T91qWv7Yw1AKTJjG+qowvuerbx6f?=
 =?us-ascii?Q?oxIFY0J//htqGpLhov1MN4xBY2gDEqurUq2xWqmjuNeaIou7QkrM7/d4rS92?=
 =?us-ascii?Q?SO3Qrge/CFOK3sYK2MiJQDN3nZJEc+k1xwAxB7Py1o1u48JbjNBCrjgrCxjr?=
 =?us-ascii?Q?7mOplyuHvMSMOE7jSbAPWDdmlNKn+OTfjCvEuKvGbjVkItGR78muSVb3TcWj?=
 =?us-ascii?Q?OLJXxzVC/l/CC4YW7AzG5gX5rkbhqdbpfSWvIDc9HmehDRtQYWO3TZW1l19K?=
 =?us-ascii?Q?lh1I1AK6Ku4rHGEMrFXYm8+Hd6OvEYt4PFWYkHl+fMdbYZ/LyYqQlV4PtijO?=
 =?us-ascii?Q?ExHAjRwduvaJ+hO6hGwI49LAb1SgLtbcsoQleOGKXPNChkjhFoywCx24WfIB?=
 =?us-ascii?Q?LKHBxO/KUeO2KnBpVasmL0cp64SCREBEFd4D+WAABJu0dqpefpUfUPauyj/d?=
 =?us-ascii?Q?SJ2wYZgT/qzJKa2CFFJKUfy1FrX1dduppPJ70Bn4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c84e89d-28ad-4330-1f1f-08dbe5e08600
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 13:41:08.6247 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oR2JfCTIZpxrDSTu24m/UC+4Xlh77w/pgH4S1dc4mTd65RoBmdzc1gl2tKavssQW/ZWgnv5gasl1CaWUI4m0lQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7193
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Wednesday, November 15, 2023 7:08 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Fix PBN / MTP_TU si=
ze
> calculation for UHBR rates
>=20
> On Mon, Nov 13, 2023 at 10:11:09PM +0200, Imre Deak wrote:
> > Atm the allocated MST PBN value is calculated from the TU size (number
> > of allocated MTP slots) as
> >
> >   PBN =3D TU * pbn_div
> >
> > pbn_div being the link BW for each MTP slot. For DP 1.4 link rates
> > this worked, as pbn_div there is guraranteed to be an integer number,
> > however on UHBR this isn't the case. To get a PBN, TU pair where TU is
> > a properly rounded-up value covering all the BW corresponding to PBN,
> > calculate first PBN and from PBN the TU value.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index b943dbf394a22..a32ab0b4fc9d7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -170,6 +170,7 @@ static int
> > intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> >
> >  	for (bpp =3D max_bpp; bpp >=3D min_bpp; bpp -=3D step) {
> >  		struct intel_link_m_n remote_m_n;
> > +		int alloc_tu;
> >  		int link_bpp;
> >
> >  		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp); @@ -
> 200,9 +201,14
> > @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder
> *encoder,
> >  		 * crtc_state->dp_m_n.tu), provided that the driver doesn't
> >  		 * enable SSC on the corresponding link.
> >  		 */
> > +		crtc_state->pbn =3D
> DIV_ROUND_UP_ULL(mul_u32_u32(mst_state->pbn_div * 64,
> > +
> remote_m_n.data_m),
> > +						   remote_m_n.data_n);
>=20
> I realized this may allocate fewer PBNs than required, since the actual p=
bn_div
> value is not an integer. Also PBN can be calculated in a more direct way =
from
> the effective pixel data rate, so I'd like to do that instead.
>=20
> I'll send a new version with the above changes.
>=20
Also spec says about a constant value of 64 for TU size.

Thanks and Regards,
Arun R Murthy
-------------------
> > +
> > +		alloc_tu =3D DIV_ROUND_UP_ULL(crtc_state->pbn, mst_state-
> >pbn_div);
>=20
>=20
> > +		drm_WARN_ON(&i915->drm, alloc_tu < remote_m_n.tu);
> >  		drm_WARN_ON(&i915->drm, remote_m_n.tu < crtc_state-
> >dp_m_n.tu);
> > -		crtc_state->dp_m_n.tu =3D remote_m_n.tu;
> > -		crtc_state->pbn =3D remote_m_n.tu * mst_state->pbn_div;
> > +		crtc_state->dp_m_n.tu =3D alloc_tu;
> >
> >  		slots =3D drm_dp_atomic_find_time_slots(state, &intel_dp-
> >mst_mgr,
> >  						      connector->port,
> > --
> > 2.39.2
> >
