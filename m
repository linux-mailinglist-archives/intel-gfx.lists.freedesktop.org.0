Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 863B36BCF1D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 13:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED1BE10E154;
	Thu, 16 Mar 2023 12:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D89810E154
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 12:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678968925; x=1710504925;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jlTvMrE0XU4kCqoycCBjAAnfRmex3FVkiq9WKbMr9aE=;
 b=QTLIQVy8/nlctbHB0RjgADuI0sdBFtEj118egq83KYTBrRRP3IcbKH3D
 Pps4VZNHyCWznsWGe7V2DCOmOmufy/bd/1C5+MEXrWYyG4JIJ78oDcAWV
 4R7fR6/tVnStUqDZ7LspPx/BvNqEKChS1MFq9p/W2hOSCsCXamYlqmSBL
 DN9XN7V1tf4h3fbewbahiJcRrxePHXocy8mbUn0n8uJldJKkFSRveRBEn
 2/S9J9dOowGR9wSLh7dhnt6D1KrV1IHVLptkxQDRTH30dn4Xr9SzqaAB/
 FMbBZzJ2dc8ZvyRM6jAnO47LekIJJaQXOrpTcfDsb7CRMes6+46JAbFMC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="337987928"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="337987928"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 05:15:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="925755751"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="925755751"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 16 Mar 2023 05:15:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 05:15:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 05:15:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 05:15:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OgmjQCuS4KEubGw2VOINWPtzeMp7BSkpSCJoNWaH6d45jO+WdLckXRwVA2vEZN3V4vkQiaO9x6AO+vnTH2VFE+Ym0sTOZZp3BygLcWDaOyFlvKT+vd1b319O0xUg+X49dhILKJznmCP5bKnmlwsSSlul0Yq3MYYHSCP0kltysr8zZ5EoWHo0G52444P04FsBUyd60y6k55yS5cOH01Lfkws91kOQsCQcXrDuZvxvzvoR8W3n5esjE0diz3zAbcB3pw1gnib+xHywJ7h29OJfXboz4u0d993Zcj7RGJ2j0xBPEEEEyo5968X8G8H2sUoIjyRKnzN0Q1JwU/Rp0/5ixA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QC84b3R6ZzSvyTnrIh6QHF0TvSp7RzuX83jSJnlcnsU=;
 b=lsd2cz/KjkahxRWGU2gZ+1FG6pCLS3qIDbwcI4xbJRzN+/ioe6ZEvDIXXApO/0Xf6QM5HvtD+hbF56P6fLds+wmwOi83jpuT1NXUUyoa8y5KQcEzNppWdwtAsz7Fw3Tlaspt9uJxN9iL48JmclxIe+b4IV6DnXSShljUgcVidHJWGYYWtBOluztPZPGMG8LHx6/x1zowa3dPlcuB73OFd3AjSrRrMaF3L+sXsO6OS597qRQxohnlwGNO9Geym/JpptX81EVEuB2HHueGiQIATZ/sfxfj+SIfPlQwyDDT8eMAVvYYDoFggm8ENMCZlY+YljgS2AKW+wAaZCL4b4RsOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by SA1PR11MB6847.namprd11.prod.outlook.com (2603:10b6:806:29e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.31; Thu, 16 Mar
 2023 12:15:21 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73%7]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 12:15:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/hdcp: Remove drm_modeset_lock in
 intel_conn_to_vcpi
Thread-Index: AQHZV+CVHhrovmDT102z9qZK1Mhen679LdkAgAAiyvA=
Date: Thu, 16 Mar 2023 12:15:20 +0000
Message-ID: <MWHPR11MB1741A4E04E78BC7804D01D3DE3BC9@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20230316082232.666630-1-suraj.kandpal@intel.com>
 <ZBLp2jMspLQ9i3ef@intel.com>
In-Reply-To: <ZBLp2jMspLQ9i3ef@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|SA1PR11MB6847:EE_
x-ms-office365-filtering-correlation-id: b971f74a-ebff-4002-b009-08db26181cf3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CrRJE7D/QxyYBshYSi0Pjkqx/6eq3H5xoAlSGTU6II3GaexEW4k4o0nyjlDATA2YdoUyt4xCT8N4EB2o+oBFE2z9c+YECILM5n7G3F0in103FhI968AhnRlLGU/7AJJCE9cxB3iZtyA1uZHCY2WUIcplMiMqZJdo0wGMP+onrLZdzvKNYCzRiZJZuuEDDXDnbUHmXXgl9jIPHYzFfJ1ZPxbE2vYIjatQOhE+RpKdU4P8xuNVsozU+3oUafKN7JxcM7oKSdoTuWyNNBaC8cQqR8mljZdiubwy9jelItIOrJN4XqOQpjJ1s5mVaoFZofJE0Zb7xCrHLCh42diCu04TXjEzHucBrIHWErWdcKkkgWxgKEQyFI6Ta5ymRgEyZijBnPYIqQYKtjbLh++tV17y8YgaL1RutGX5zbkqU/t51lT6oiuoDFz4v9SXMB76NxMHnuffeN5NEq1ByqM0j8j0nNGCzTYRK48Jp1nju7uDdH5dfAzw25di32zP1AQ7zKQtXB2thQkm+y6jk563EoF6Vjer18hTJy3dt0DW6XaeY/585+KViiVE9AY48HRE1Vj3/mtKi9B0RcReVNCp98mW0s4EiWCsqr4Uc5VNVmDMadZknJA77YrU08POjsQxlIiCYCWs/ygSk8uY7HQgNdPrYhWB3kYR94mq0gatH6D57d6YUK22GIAHA3ZGgz38relLepdojstzRVNRNm+meYa1Cg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(376002)(346002)(39860400002)(396003)(451199018)(33656002)(52536014)(41300700001)(5660300002)(8936002)(2906002)(38100700002)(86362001)(38070700005)(82960400001)(122000001)(64756008)(71200400001)(8676002)(66946007)(478600001)(66556008)(76116006)(6916009)(66446008)(4326008)(66476007)(55016003)(66574015)(316002)(7696005)(83380400001)(186003)(9686003)(26005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?crpuYTSKAk4M6IdhSBUzWCCQXO1XXVe0RemqQ14XUsq2bVPJJq4pNnw/XG?=
 =?iso-8859-1?Q?rX4xgDaxmnbT0yfvfJao6NxhuI8h74r5VqLWve5m2bApVY0QP32kQ7cmFv?=
 =?iso-8859-1?Q?B8WSW4vtQWLsVWKBCDWdyHOvDF028czKnht+jrfqYtKVhM/FQrbCdfqJ6t?=
 =?iso-8859-1?Q?B8oJqO8yEjkPVqeb6lq85hDTUZPu6v++VDyG5N8Xw4UfY/ta67OlUzKDgL?=
 =?iso-8859-1?Q?/KoC9LBZHbv8Z8MPX17+uT10GcJRsnGNxg3nNyGkKAyb8HLoTwp2oq5/eI?=
 =?iso-8859-1?Q?oIwicwne35BbcbV5K76fngW/FieqZvsKCOidX8yXwMTqJM5KtHJ8YjlDyC?=
 =?iso-8859-1?Q?FKUz0yAXH0j1J5CdlsmA/LwhIj2su5a6fCXf3AjlGj5fIsi7WRUckK2vi+?=
 =?iso-8859-1?Q?GI3hfr4KnUUHbVy3/sm7ObA9POl+JotgCFzKFxx+ZLIJsl91aFC662+uob?=
 =?iso-8859-1?Q?5e6DJbbmxWht53XYSwbDCqF2GBPDhCUGxTEMBniD4kx62UXKcn9Hqvnxxo?=
 =?iso-8859-1?Q?2G3XkFupBGfPodABF1PLGmjmJVr3a1OYJQORfC/Wht7E/kHCvaKpX/RI/a?=
 =?iso-8859-1?Q?Kpe4Q/UsgCeTYJQ4qH5akTe9r0bmehhMQCNMDpR3gqKhYsY0No44fsqSxK?=
 =?iso-8859-1?Q?1x9TnF5sSNuxro5N/SZEiu69jLx8SbxEntwpQSmsKsn/e2e42ZJkKvr60z?=
 =?iso-8859-1?Q?/7R0LUQyp4kk22SVD6WTZdsH51UtsRhrzlap4a/+MAfDsTsLz31psHrci2?=
 =?iso-8859-1?Q?JzXL0o2A/Gd39lNikIS8FQ6ZchBzDdclZhUAQu/PTV/2jrA8JFyOluOpgT?=
 =?iso-8859-1?Q?xxZfdzxB3YWsY619ZHZ7RdipJOsghIu0ajXFNm96rdQ/kWZQ1IG+GGiBBx?=
 =?iso-8859-1?Q?RHxbi+CH9ad+vp5FQ+7bS1FjVM5+cXEfcLNUHqt+iX3HGPaPHsxk9LW9cB?=
 =?iso-8859-1?Q?xJNCVBUGPAx8K+TlXiqLFH0fi/ZqkMFwkk0l2/s4lzNDyPFzM3O0vze9Kh?=
 =?iso-8859-1?Q?tDbIJ8jcw+j0/hur7mNCbHpPHp8JB3Zul1ZdW7xGh98nt7IZbrNdt2v19L?=
 =?iso-8859-1?Q?eVjOhGxCEjpzvoZIP2pHLv71Rm2IxAVQZ28Xl02h5DsxCq/ikG1/fCg+4V?=
 =?iso-8859-1?Q?oU+pWmTLxXj4azXVNSm1hV+TZZVryniNO2PMRVCVle81uc8W0lRbamXgfh?=
 =?iso-8859-1?Q?FJRalInX6XqliKSQgqrogZTp9f4/OMFDYOiONBAKKRb6JVQUiDsVTe1puF?=
 =?iso-8859-1?Q?cQ8leuOaWr70dbn2xCCc6hqxO4zx8es12WL5x6tZ2AiL3XZK5XAWrbmeff?=
 =?iso-8859-1?Q?wCTdpyutrdnOtXd7O4OF8hK6B0NE9EMCh/VXqf1csoZgz16gPVre6Vlp0E?=
 =?iso-8859-1?Q?VjUm7nRdw8LKqShKoxJUDEBntTykiMiAKj+XCNO5aFRk2S9g0Ty+J8pLax?=
 =?iso-8859-1?Q?BXMquOqOXcn44IByxqMdSQLHV3jSlXYQ58zGBR01htcw6iBSomfEMo/bSc?=
 =?iso-8859-1?Q?ejEqN3y6UeXYlhmB01gEqZDIrssxZHOAvQNHu71p5incoCyXvEWvh6lfO/?=
 =?iso-8859-1?Q?RFr9buRUoNLikMn+WVfMGKCFujmvIDxZqNgguzpAVyjpuWJXAcNHLO+pYJ?=
 =?iso-8859-1?Q?AEWzhdD2nj7mjWP2gVuXwrflHL1yvWt2gj?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b971f74a-ebff-4002-b009-08db26181cf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 12:15:20.9703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hOIgbDnr50x7QMeaPpUYVHITa3wT8trvtFu/hRZdBSHuf5+tLy1vexlqCLU+7LcaTn9AgGtjeFWA0tdbrGsRzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6847
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Remove drm_modeset_lock in
 intel_conn_to_vcpi
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

>=20
> On Thu, Mar 16, 2023 at 01:52:32PM +0530, Suraj Kandpal wrote:
> > Remove drm_modeset_lock in intel_conn_to_vcpi as we don't need it
> > anymore since all the required locks are taken in atomic check and
> > prepare phases.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 2984d2810e42..f957b4bd9c26 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -41,7 +41,6 @@ static int intel_conn_to_vcpi(struct intel_connector
> *connector)
> >  		return 0;
> >  	mgr =3D connector->port->mgr;
> >
> > -	drm_modeset_lock(&mgr->base.lock, NULL);
> >  	mst_state =3D to_drm_dp_mst_topology_state(mgr->base.state);
> >  	payload =3D drm_atomic_get_mst_payload_state(mst_state,
> connector->port);
> >  	if (drm_WARN_ON(mgr->dev, !payload)) @@ -53,7 +52,6 @@ static
> int
> > intel_conn_to_vcpi(struct intel_connector *connector)
> >  		goto out;
> >  	}
> >  out:
> > -	drm_modeset_unlock(&mgr->base.lock);
> >  	return vcpi;
> >  }
>=20
> That whole function looks like it something that should be part of the
> drm_dp_mst_helper.c.
>=20
> Also, it's directly accessing mgr->base.state which is just wrong.
>=20
> And it looks like it can get called from outside the normal atomic commit
> flows (like so many other things in the hdcp code, sigh), so what you're =
doing
> here is also wrong in that case.
>=20

Okay but as of now we are seeing a lock error which does not allow us to en=
able
HDCP (VLK-45132) when DPMST is connected so how do I move forward in a way =
that solves the
Issue and we access mgr->base.state in an acceptable manner

Regards,
Suraj Kandpal
> So the whole thing looks just very broken to me. Not to mention the HDCP =
vs.
> MST<->SST switch is also still fundementally broken. I'm really tempted t=
o
> just send a patch to nuke the entire HDCP MST code.
>=20
> --
> Ville Syrj=E4l=E4
> Intel
