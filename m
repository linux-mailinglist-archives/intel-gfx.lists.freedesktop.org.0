Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6617D7DC2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 09:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281E710E76E;
	Thu, 26 Oct 2023 07:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 806A110E76E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 07:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698306151; x=1729842151;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QAOqodLpXp/MWMVu04Q9KY3hM/9UaWHFMaU2rbcfY1Q=;
 b=DEAfu2ZJQiYnvgIy/i00XsAYQBD2XvHJEaZ2Q/jkPcGYS75H/MFrPRO0
 QeYI66CO8aJ1IKgSyf2YW7asel/ICupYqfX4RPwrtiwqVWMH/gsX0KYsw
 X1YAtA0FgjPjikTs4A0eOm2HYMtjC2USEiYYYSD0oo+Vm6m+gfF+N31Ma
 5sbxgkD1xF42u+rizr6qxLTIlEl66f75WLbIGxKqeLx3VU56VcjctERxO
 ZwXse7RypiadI6vbc1sNsyH4vcllsFno+44wZ+lD2CFZOZlyuLr5OyXBk
 GoSanzPTqfizzaa1bcLXr/xDIuNyVGebMzqLh4+DffYWrGwtyqYzw0mc2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="273735"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="273735"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 00:41:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="824891192"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="824891192"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2023 00:40:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 00:40:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 26 Oct 2023 00:40:51 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 26 Oct 2023 00:40:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XUxTlu5OfyY8ba8y4tN6MQooUo7vE2sg/sF2G6E4vpsOh8z0QE5G6AtHQwz+KX2uTNqlRQ4wYHJgf0eURwejvkV58KX9FCi2wqKqYNj2cwFnPhaJihqp3foOELQEPqlI+oChz5aglxgJvvTub83ZZExN8SulHYrArDTt3kIODSGM60v4rubvvhUvVT1yHTduWEl/D9nO2EuEjX/nYMGwmrz5/0J8XKiq++jx1LpwlVCjoxfo66ICwuU1cYxifLAQimw0m6t/NdFy2DTXlXJLkmf8Bw3lxmWFy0dhBlKW8sQVnFAmG3NLP5KpuNWfvWJka+Or2CQM/IiS0qyT7KhO4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bgJDxchjwcSzGuVg13/MicvsQW6Hgtsa29cPoRoKX+A=;
 b=W5N0s/SEWkM42b4a79Nbv5c5I/P28kJouKfE0eLsMS2ZwP/aqsoWOPLwoEnxSUhpUqwfcMfGM7aAbLO1K6lqVcwOIS2t1ia3YwmEQsv69FfmnUxs+cOvxVYQel18zpQSIB5q1/JhCI2RDw9LqO2BEz2GeZLAaxisFl3RKeXAd3Xdn/rZPFy2IOb2SOr3wGFAXrSI9htoLUQhskEaPb3eymZ1ecCsUfz1eOsZoaVbXvpUA11hLyRgyRmj+N1CoVdIwcGm26VU6Fh61tSu6hQtu/lo8v/FtLftbrlLbS3hBD0IQB4nj3Soarcyq46Hru1WJkQ8E3iYLymf21wJ25VpGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BY1PR11MB8128.namprd11.prod.outlook.com (2603:10b6:a03:52c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.22; Thu, 26 Oct
 2023 07:40:48 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb%4]) with mapi id 15.20.6907.032; Thu, 26 Oct 2023
 07:40:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/hdcp: Create a blanket hdcp enable function
Thread-Index: AQHaB9yID+CBwRkHgk6hvib30tm//LBbrWCAgAAAybA=
Date: Thu, 26 Oct 2023 07:40:48 +0000
Message-ID: <SN7PR11MB67501A1F59BE149107945E1EE3DDA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231026071540.974755-1-suraj.kandpal@intel.com>
 <20231026071540.974755-2-suraj.kandpal@intel.com> <87bkcl96v0.fsf@intel.com>
In-Reply-To: <87bkcl96v0.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BY1PR11MB8128:EE_
x-ms-office365-filtering-correlation-id: 0180b919-14a7-42f4-8a46-08dbd5f6df0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PssRygISROa3jf7H07F2LJgvK8HL/Uv4cKzM5GonByRGYD2ItUjtYF5HdMkO1kbdiyBx1rmFmDD7olFjQZaQVEBA/qoqzU7HP2foIgiiL1cUsv8P5SenewWPbubN5fGQ9LFCre3MV2JsojhC3qEfP1COqF411pmLKowcQbEVi2iK8iRe36cVdrLSqKo+Qpe235feShuTltI7w8cNZXjJcv0My0ujoX+6AVhvytm9PeMCKvbb3USCCmnHmZiFw4uUQhdgAwuY7CWOxfpUIH+DOnEVHHHQR3VNGQH/orMlmOugH5QBnHFntP9N+VEIVyMD/+Lzj4HSoyeminMClCLYQ3e0CBvrrBSAz3JiFLT9Dk39OJeh/ynMGdgzkP1PGY1PVDB4oJOX+zk0cHrfu1E16uSTlZWmudV1gfxbx28tga/zPfi7g8QNsUUuho8BtKhjBRVTdzy80SlOfsHR2Nv+2Mc8YEb+aYPha7qBa8aAUCghdc0tPtKZX6yBEKITxIjTTZkLRMSkl6l8gJ/PIwNpRJZDFjDulTgFad+y7GsbqD6htXNtZ84LuPKLsw4spim4uuvgiqVA+cB1fj/h9fxkO7uK6t1IxcYprwFaZKoVgdZFnGEVa2KrX/gViKoqmtzf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(396003)(376002)(346002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(55016003)(41300700001)(5660300002)(66446008)(66476007)(66946007)(66556008)(64756008)(54906003)(110136005)(76116006)(316002)(38070700009)(8936002)(4326008)(8676002)(52536014)(33656002)(2906002)(86362001)(83380400001)(38100700002)(26005)(82960400001)(122000001)(478600001)(9686003)(53546011)(6506007)(7696005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uC0Z5Qq0bEefX06xuGVmcbwKzQusbXCL4WwKXwlwjcnlZ3CzDRSylPWVrqQO?=
 =?us-ascii?Q?QdnTERd6w69YyKLWGAg9k/raEb8Jw1woh8bt9qcbLMrw8gNaBMs1KPVZZ1Fc?=
 =?us-ascii?Q?BpSGzxGAVtoT7+24tg91C2zSIgsShjHp3r7WWcafKwp9eIHV3WEmp6QTnNHG?=
 =?us-ascii?Q?zByY5J9M9j7Gy9NYD0cH4TvJi05BuGgyTXUTgEZp1THiVhjrnQcDVtUT+lK6?=
 =?us-ascii?Q?8VACAFwLeHpDIUE+jjx3ECMwDEa8eseQxaLHW86Eo5/yXFuxDpGrXHAF/8SO?=
 =?us-ascii?Q?cBMu6cGv2AvemTFsHnAyxpjMfcEL2APhG/GnmDTBtoGwbjWoRX8ifuArIZcw?=
 =?us-ascii?Q?X8oXHxFn5knsaz7PL3PkQuo8NEorhP0vENTLm2R1B7fGpkffgc5w3wzKuo12?=
 =?us-ascii?Q?1hCk4TGlNdJf8FYJSv1g/rR4t6TNr6qk/W9NP31kk1+OQeS4ONc/N/xHuObD?=
 =?us-ascii?Q?GmScOlBI5U3Z2M0PY+qxobXJhfQRMZa2LgNR8+erzT/SWuY9JU3/yTeP4Zld?=
 =?us-ascii?Q?ruhYjg4jyWjFtZZnbaA7pL0AaFiE4OwBINS1J2rERwAc5w8Z5TKUSp7WTmpl?=
 =?us-ascii?Q?L1oDPLUg4KfhTvJvsZ5yPmQ0hGLZou64gJntPJFEXH5ybH7vBgEwVsmJE36N?=
 =?us-ascii?Q?Qy4aZaKAa0k5l8BfxbX6+325b6mkmml8AoU1XdXZih4SYq4nqoJTdjzeXyKi?=
 =?us-ascii?Q?zrAGE7qiJFBpN2DwHDUCb13lsKhfkYlLI42+7k3EX+Ig7UauDqwIdrt28vgF?=
 =?us-ascii?Q?mdWCAPoX5g0fV/h4apyPWmhuSd2v9feuUKrguKukCL+sVCWeMHbel5LgkmFM?=
 =?us-ascii?Q?CRvlvn67pwWSaR8ikxp3ZpiErHflfyCHE6O1Shn8e5CEtduRTcUTarAhY752?=
 =?us-ascii?Q?LFPOPAExo2R9h6DFOewZQ/D2HiMu8v2sz6ZZzfExMhM/TmelmEzGSFeX6WmQ?=
 =?us-ascii?Q?c8CLDAUqstFBrtYb6H229ycBCeBXIAs4P2J3vwRnrLUmxKBDbWqzPK9jKEmT?=
 =?us-ascii?Q?3dAFAmzJ4w+Dtw0Dwbj8KUf5D4Rb2sk7r8L0P2wRFjpYApzzOck1b3WaC2++?=
 =?us-ascii?Q?nmRJaqtCOYZZ54nfpPOOJ7HZ19xk8txA4GNRi9GOGPqVpCKSyxvwdksnrIj/?=
 =?us-ascii?Q?qkqy2hk1fEMlzoBP8X1DyGO72YshHbsowXoguR6bg47qOm3UK5VrGzM3jOTb?=
 =?us-ascii?Q?Gsi5AFoFv2UFPRAjqV2FYWnycny70O9hLpXjA+UEmIT1YdrLG6iCggcg8BeX?=
 =?us-ascii?Q?NBF8H756wJCGtmGseHHnHaTGyCr7oTP3q3G9YdDHxhjL2ndoKZjBfGncZHJ2?=
 =?us-ascii?Q?7ehBml7/q45zvQYQVX8thv9WL1OTFmY6H3anmYc0ZY7EOkOH4aL8sfFDuJRT?=
 =?us-ascii?Q?0w199jaxe/ZR+7CNGUq9olzxinLd2Sdn2D4WqYbOqlV2DufuFZk43u/aU6JO?=
 =?us-ascii?Q?teCInyXuDf3ZDrb/6eNSHugNyT6UPzoPVf8j35A+9KOSccqqRdv+bDZ7XmvM?=
 =?us-ascii?Q?D/qL1B6AHxnoReIVyzKvEMxDcuS/VIEgpI0sFjXoczGoXMDS6BhimkVQ5bsh?=
 =?us-ascii?Q?xWGgMwr6YXt6TPhRb4gKGm7+SSRJbuLg61SEmUiv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0180b919-14a7-42f4-8a46-08dbd5f6df0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2023 07:40:48.3496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aFQVC5tXuekX7QRNGFZEULFOs6AzN/anoQaimWd98dOdynpJAsM5cbOKCrlnn2yEibsRDx3lyBus/o3T4UnEVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8128
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Create a blanket hdcp
 enable function
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
> Sent: Thursday, October 26, 2023 1:02 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/hdcp: Create a blanket hdcp enable func=
tion
>=20
> On Thu, 26 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Let's create a blanket function which just has some conditions which
> > need to be checked before connectors enable hdcp.
> > This cleans up code and avoids code duplication.
>=20
> Let's call that function intel_hdcp_enable(), and hide all the details in=
side
> intel_hdcp.c. These are the only callers outside of intel_hdcp.c.

Maybe the rename current intel_hdcp_enable() to something else as that also=
 is called in
Intel_hdcp_update_pipe on which I wouldn't want these conditions to be enfo=
rced.
I thought of renaming the current intel_hdcp_enable() to _intel_hdcp_enable=
() but that is already
Being used as a function name to enable hdcp1.4
So any suggestions what I can rename it to?

Regards,
Suraj Kandpal
>=20
> BR,
> Jani.
>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +----
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +----
> >  drivers/gpu/drm/i915/display/intel_hdcp.c   | 11 +++++++++++
> >  drivers/gpu/drm/i915/display/intel_hdcp.h   |  4 ++++
> >  4 files changed, 17 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 9151d5add960..338049b66e9c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3259,10 +3259,7 @@ static void intel_enable_ddi(struct
> intel_atomic_state *state,
> >  	else
> >  		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
> >
> > -	/* Enable hdcp if it's desired */
> > -	if (conn_state->content_protection =3D=3D
> > -	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> > -		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> > +	intel_hdcp_try_enable(state, encoder, crtc_state, conn_state);
> >  }
> >
> >  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 7b4628f4f124..cfcaf54a4a72 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -836,10 +836,7 @@ static void intel_mst_enable_dp(struct
> > intel_atomic_state *state,
> >
> >  	intel_audio_codec_enable(encoder, pipe_config, conn_state);
> >
> > -	/* Enable hdcp if it's desired */
> > -	if (conn_state->content_protection =3D=3D
> > -	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> > -		intel_hdcp_enable(state, encoder, pipe_config, conn_state);
> > +	intel_hdcp_try_enable(state, encoder, pipe_config, conn_state);
> >  }
> >
> >  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder
> > *encoder, diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index c89da3568ebd..9d632a85309d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -2324,6 +2324,17 @@ intel_hdcp_set_streams(struct intel_digital_port
> *dig_port,
> >  	return 0;
> >  }
> >
> > +void intel_hdcp_try_enable(struct intel_atomic_state *state,
> > +			   struct intel_encoder *encoder,
> > +			   const struct intel_crtc_state *crtc_state,
> > +			   const struct drm_connector_state *conn_state) {
> > +	/* Enable hdcp if it's desired */
> > +	if (conn_state->content_protection =3D=3D
> > +	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> > +		intel_hdcp_enable(state, encoder, crtc_state, conn_state); }
> > +
> >  int intel_hdcp_enable(struct intel_atomic_state *state,
> >  		      struct intel_encoder *encoder,
> >  		      const struct intel_crtc_state *pipe_config, diff --git
> > a/drivers/gpu/drm/i915/display/intel_hdcp.h
> > b/drivers/gpu/drm/i915/display/intel_hdcp.h
> > index 5997c52a0958..280eaa4d1010 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> > @@ -44,5 +44,9 @@ void intel_hdcp_component_init(struct
> > drm_i915_private *i915);  void intel_hdcp_component_fini(struct
> > drm_i915_private *i915);  void intel_hdcp_cleanup(struct
> > intel_connector *connector);  void intel_hdcp_handle_cp_irq(struct
> > intel_connector *connector);
> > +void intel_hdcp_try_enable(struct intel_atomic_state *state,
> > +			   struct intel_encoder *encoder,
> > +			   const struct intel_crtc_state *crtc_state,
> > +			   const struct drm_connector_state *conn_state);
> >
> >  #endif /* __INTEL_HDCP_H__ */
>=20
> --
> Jani Nikula, Intel
