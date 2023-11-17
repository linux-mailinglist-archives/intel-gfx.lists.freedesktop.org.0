Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6717EEE4F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 10:18:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7059910E2F3;
	Fri, 17 Nov 2023 09:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CADE910E2EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 09:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700212720; x=1731748720;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yI60wI1udYAJEdCjE3Vgzo4N2tWmK51yxx5KM4iLovE=;
 b=HkmAFrcYSWu2ExRt9cTt0zzc0d53tQ1BVQ/em41J3iBHHBFLO1Gv05S6
 4CAe2aR0JAOz5KsdROi6Rn34CVzh50nrT/WfSFUkq23M5tiGybR6cN8J1
 kJyHG1uBWNO9TDClcPGJHpOVtZ00SUxXVm4f4kY8e7kawN3dPZM1aVqi9
 Ug3I0l/sAKXSSNWMhYZiA01PBvpthCxMEBu11TrdzndyzppZIYo3O4bOM
 JriKh0z1blVsgZFD6l9Q7Me0XpTWhvdpnVJDaXeJqzi/DhO8f9pA3Y28P
 WabFWLileM4zKTqzxeAxL/umCU/yi6F07tw7NGU8fm4Jf0mpf2Uki8hj5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="388418498"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="388418498"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 01:18:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="831562587"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="831562587"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 01:18:38 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 01:18:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 01:18:38 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 01:18:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ieiGu0YdC/JGyftdBlOZUoc58e/Va2U93MMgQ2CtoqV5iagYDXvl5qh2rQEAM+RHj8DaFRkxW1ZSoRdI2/0opXbW2X5RmAASdaYtCxplBQep78UI6azBT9alCgeWSXjJcfc9EXgJ/GoP5lo/l6GVgVJUl+ryojYd0Vlw2SD68Jp7rukNG3CpnIm/Fge5JpFCJa5g3vwvprg+8Ni6ZCm2jLmY1VOKDSrYtjudISCez8XDTIlfoAy3/U4JqOnGPqpCMVjn4OPScQ086k3DjVURv7Ykddz3EVz0L/cWTMAX0BmN7n9Jz2QPTU9qLDi1mTVFORWQnPaAvEfqaMYW3ZiWJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c+6Q4VAiYOMmYL4vwAyCDH6Ph1o3mQUueIMhL1Xq9+k=;
 b=EwlIyqMaXtIuqXR0ryHIDNxL0+0CX8Vxcf9Y1mk4zs6mul4zJ2TPflVLiMyUGn6vyngc2HylOEMahx1X5sB77u8MchyMUd+3ROxrD+3BVjmMsjiGMK6SU+opSYu88f45PHiwj92sod/CS831KUA8+8pnDA4ArARaBtCl1YoiBFPIyVUaVRrj3owmhKrQKHQKZDgBI9U6hu83BkdMpRZE+iy9MBazWq/0k9t2VXxDcoHvGpPrP1efsDx7TwlGqnaHUeC2o/zZuCtb12FZRPWEJzAqmO31u9e4cZc1HbbAZrKPC/EdskA7Uii41rKBX0Qn+LcWftmvLWltG0VUWiXqQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 CO1PR11MB4930.namprd11.prod.outlook.com (2603:10b6:303:9b::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.17; Fri, 17 Nov 2023 09:18:34 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.7002.021; Fri, 17 Nov 2023
 09:18:34 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 07/11] drm/i915/dp_mst: Calculate the BW
 overhead in intel_dp_mst_find_vcpi_slots_for_bpp()
Thread-Index: AQHaGI+FeFqmVJKSHUmxG5F7ehXG9rB92aIA
Date: Fri, 17 Nov 2023 09:18:34 +0000
Message-ID: <DS0PR11MB874088BA2DCE7F32C385C18BBAB7A@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
 <20231116131841.1588781-8-imre.deak@intel.com>
In-Reply-To: <20231116131841.1588781-8-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|CO1PR11MB4930:EE_
x-ms-office365-filtering-correlation-id: 3aa2ca0d-8618-47b7-b585-08dbe74e2c96
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PlWzNVqNOl10auBI38vn7IAVrkd6bfe+he2cUPXS4reU8PqnTP/SBVUazRKWg2nm5KnLiCRRgH4SKicCogvohUouKSaXDO05Bv9zRsfCv7yeaLjA1su/9syl+fOQnmER7X2mlDO48Gu6/OQpYEZqeKNYJ06s2N6MMFWhcvnnqkfT8JfEFwVA+neD89IpT2wSOun4zRW68cRLRrg3rf35xJYJ+Y4B4i+YnKrHjHJKdTnv9zIUpxRH+UNplWKu+aPffg7kB5fTzz0x4dq5PGJNmrwWI3dR7+zCaAwm3nc5bpKjCUOYoCXghgfwwOLTeQEr1lNkGf+1bjBocVVCDxtNZvbGzWGU7dNPREeP5ChEwAyKZfGWBFJe02sedYXcNt9HbH5UNN2113Soq08ssDqPu5j5uipIpvrs2+98zBubX6KwW+P0pQqRl9zrC9dav1BENi/u/anP9KjnlKcCTkOO6HvlEFpqou5XLReu/lpU1XBbpSfm40BdcerZsQEKI6L3wau64q3SSVjUu/ODIMiIhM66YfJec1kXirKhh4sm4SECDRJ2fkWXG4JfU5BaB9rD2cE3c+KMj56SIWA1Q0pOkZ9NhL4yTPjGSvtoe61oIk9dvS4rEZm+wqTeouT0b3kS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(366004)(346002)(39860400002)(376002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(53546011)(6506007)(7696005)(52536014)(9686003)(38100700002)(38070700009)(2906002)(26005)(122000001)(83380400001)(33656002)(86362001)(41300700001)(82960400001)(5660300002)(66556008)(478600001)(76116006)(316002)(66476007)(55016003)(66446008)(66946007)(110136005)(64756008)(8676002)(8936002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hYbaTR7rZcKP2k7H1jRuEUHIJgJ8HOjym3bLOKaSOEKU0lH4XC2CFngySGIW?=
 =?us-ascii?Q?SJddvUc2XnJI8dWpfNFFvfgtcc0gYG6hQLCqWmYmmrfmfKOW0zmZFqY7oJ2m?=
 =?us-ascii?Q?jWqKltgtApzXTQrjmUPjhUM/DQpvcUlFo84Gp8ea+bq2gzHkCn00VWOSi0IB?=
 =?us-ascii?Q?dwubEt3L3qCd8us1afq6Xf7xjDIwYAbSuevyb/Uc3UNUYvNSMQYfXkSI9b78?=
 =?us-ascii?Q?cgYjMzOmBizHcxYGW5DOcW7mfXN+gMaXgfY79vGVXVjNizT1fXNyS8hmP/tA?=
 =?us-ascii?Q?MN6d8hB5OkzM1Hqf0d5IR9tZqKl0loldImmuVOBfElXVzrr/PjMDvPHfUHvi?=
 =?us-ascii?Q?VWpVqXcsGVLISrN5wTI+0V5bVs1EwaPFOTCx3orov6QTwObClYItpJW3/MHb?=
 =?us-ascii?Q?Y3DMgFZBQRrAv3OeZ893VooipphJqt90WYiu8WcEMFOBSKtE8W7qJsu8/6+s?=
 =?us-ascii?Q?Bg9Tz9C8/ZJ7vQvVGZtgwm6REm0YL7jqssdDMlppZ4rYmVjbz0FXaEozfIk5?=
 =?us-ascii?Q?7dZmNNWDsSoF7irHJx18h1B+b/bURnCdGV5R48nkN5ULGLYRBuq+b8hAb81v?=
 =?us-ascii?Q?Zm5EEsJfn3WAbfwvLbtwy3j4P07mkEgIGEaMCdFTOWLOSuhRXBke7jzBLpjK?=
 =?us-ascii?Q?y3+4mdnBN97Ux8Qrj8YYrNScuhhb8Iw5RhTLUoH5h32f6BU5U4F8B0DFiWOn?=
 =?us-ascii?Q?QOQYhFKGZ09roAoeG7N/J9m9YX0enxIY2eU8W7cQMZneN1VvGMSt38t5NhNs?=
 =?us-ascii?Q?rxpemngJbK++zL7cGG+eqAe2bIXwdPgXhjj4RUPKk8Ws8NjA1LdZqn+34+2y?=
 =?us-ascii?Q?9HLzu3KstUTDFvgglC8L+dcnBbpUR1pDmetwoJPZA8lnAx6OprWOuZmBXGmB?=
 =?us-ascii?Q?ki0PD9Ou3gemf7/XyjKyFTD+g90PpcMJ0SrzRf43+P3mmS+4EEWYeHNwAol9?=
 =?us-ascii?Q?y0byXILBQHtfDoo1Z8wusKbhWB0n7gDQBCOZHABXePrvdC7EGYxMWrJHBbyK?=
 =?us-ascii?Q?At6J77XRDYXQ0vfqfGo4W4ch5nCIw8RbC9DwJjACtN56v+/cUyFMYTCqCOKR?=
 =?us-ascii?Q?eP7f67qhE9rf/USfkHDG/q4YrXdr35Jgf1xuDikp5X2jW1AnP4K0Ik0T6mA4?=
 =?us-ascii?Q?O4MI7ad11x3bcy1CSgRayMHBJdGZjemzVGVU0u1qNsC7mMkKSgGIL8XnkP0c?=
 =?us-ascii?Q?vcAlmKUimSCmZyiLIcSDB8KgY4d83XiP4QfYnR01ObHRsHYwmDxhS+j7GN53?=
 =?us-ascii?Q?/ytOBfNGjS1Q0QHByfs2JzlqZRvZsNy6pFuC4Fn1BPgVBHHsvGLCJ4sAjiRu?=
 =?us-ascii?Q?SOtzRP/S5+LNEdsTaamptVWhRTEgXn/EAlgjn8DtVB62UKlKfKVOUPLqQkfl?=
 =?us-ascii?Q?Rb3QPitDBY9vpQnfg+lLp3p0p0cMZGx/4tAbcx4BJ2DrraYV2euCJvFK3eTs?=
 =?us-ascii?Q?d6CSbWxiWOVAg2CSXJKWLXD9M0lKTQ9lWonB/l9IO/gZUdFb1akoOkpJznDl?=
 =?us-ascii?Q?XzWiHK3mek5wguLqBXQ8LM3cA5D2mswAl9oO7846mIXkNqqRptqC2DOsS8X5?=
 =?us-ascii?Q?+XzAnKZ/j9Uu3eQdVK4UX4P/BxCEVTTnsgetlzIK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aa2ca0d-8618-47b7-b585-08dbe74e2c96
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2023 09:18:34.4571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F46O+GpYlsSD+IZ3RHQuimrht60ifCLQ1SjSy6gE+9JX82vYgIG8GB4Yni9oogOJ3CPw91eN5DIQFZCF8oPWTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4930
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 07/11] drm/i915/dp_mst: Calculate the BW
 overhead in intel_dp_mst_find_vcpi_slots_for_bpp()
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
> Sent: Thursday, November 16, 2023 6:49 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2 07/11] drm/i915/dp_mst: Calculate the BW
> overhead in intel_dp_mst_find_vcpi_slots_for_bpp()
>=20
> The next patch will calculate the PBN value directly from the pixel data =
rate and
> the BW allocation overhead, not requiring the data, link M/N and TU value=
s for
> this. To prepare for that move the calculation of BW overheads from
> intel_dp_mst_compute_m_n() to intel_dp_mst_find_vcpi_slots_for_bpp().
>=20
> While at it store link_bpp in a .4 fixed point format.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 27 ++++++++++++++-------
>  1 file changed, 18 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e5d6b811c22ef..a5ddd1781969d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -108,15 +108,12 @@ static int intel_dp_mst_bw_overhead(const struct
> intel_crtc_state *crtc_state,
>=20
>  static void intel_dp_mst_compute_m_n(const struct intel_crtc_state
> *crtc_state,
>  				     const struct intel_connector *connector,
> -				     bool ssc, bool dsc,
> +				     int overhead,
>  				     int bpp_x16,
>  				     struct intel_link_m_n *m_n)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> -	int overhead =3D intel_dp_mst_bw_overhead(crtc_state,
> -						connector,
> -						ssc, dsc, bpp_x16);
>=20
>  	intel_link_compute_m_n(bpp_x16, crtc_state->lane_count,
>  			       adjusted_mode->crtc_clock,
> @@ -171,7 +168,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struc=
t
> intel_encoder *encoder,
>=20
>  	for (bpp =3D max_bpp; bpp >=3D min_bpp; bpp -=3D step) {
>  		struct intel_link_m_n remote_m_n;
> -		int link_bpp;
> +		int local_bw_overhead;
> +		int remote_bw_overhead;
> +		int link_bpp_x16;
>=20
>  		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
>=20
> @@ -179,12 +178,22 @@ static int
> intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		if (ret)
>  			continue;
>=20
> -		link_bpp =3D dsc ? bpp :
> -			intel_dp_output_bpp(crtc_state->output_format, bpp);
> +		link_bpp_x16 =3D to_bpp_x16(dsc ? bpp :
> +					  intel_dp_output_bpp(crtc_state-
> >output_format, bpp));
>=20
> -		intel_dp_mst_compute_m_n(crtc_state, connector, false, dsc,
> to_bpp_x16(link_bpp),
> +		local_bw_overhead =3D intel_dp_mst_bw_overhead(crtc_state,
> connector,
> +							     false, dsc,
> link_bpp_x16);
> +		remote_bw_overhead =3D intel_dp_mst_bw_overhead(crtc_state,
> connector,
> +							      true, dsc,
> link_bpp_x16);
> +
> +		intel_dp_mst_compute_m_n(crtc_state, connector,
> +					 local_bw_overhead,
> +					 link_bpp_x16,
>  					 &crtc_state->dp_m_n);
> -		intel_dp_mst_compute_m_n(crtc_state, connector, true, dsc,
> to_bpp_x16(link_bpp),
> +
> +		intel_dp_mst_compute_m_n(crtc_state, connector,
> +					 remote_bw_overhead,
> +					 link_bpp_x16,
>  					 &remote_m_n);
>=20
>  		/*
> --
> 2.39.2

