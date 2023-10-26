Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C647D824B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40B110E119;
	Thu, 26 Oct 2023 12:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBB2810E119
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 12:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698322281; x=1729858281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+tDgFltpCQRXACPTVT+ccVe5deaL7vpPjxeJwCrl7kU=;
 b=nFRPXmuI+RPGss903bozaonRXUHUeLIPsvgj6SNOZ88lur3ZKIGZIlg6
 TnZS9bPBFh/un7J5qq/BH3eQGHVtXSAzNzlvpEdNVtaC9FqUPZyF7/3AO
 EcFVvRPZerp7Ah6l3WSac2V7jtL48J9svMXJfgDSvUWfalWqyMR0cqm3K
 SqrhfHvoykdz/v25B/6sp1m3zaThjJdlwyN26wp56k3ESpSyGz97eAZui
 Lcz+xMDcBaMwgglrnYNe6ounwrCJxhh28lOS+T6yloN7VGskEMQFuh0gE
 NdWmiV7Ss5xrNuwCWFplrCIS5YOuKl159BvGbPjrQlTaQc1lqil21IkJn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="391394775"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="391394775"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:10:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="759163271"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="759163271"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2023 05:10:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 05:10:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 05:10:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 26 Oct 2023 05:10:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 26 Oct 2023 05:10:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nA6AnEUnshiqOlVwDPasBmL7XxIpHD4UngDVUt5MZQvF/cGHYHzmI9DNfDuxcLEk4F7QvxuHHMfHjaShrgWhPARQbA4xeMCHkxcW05Su652aK+k72EAUDHbRnBO3oCFW/JbTf0ZflJKUxQACN5KvFD6Wf54/SEy+H2iNPXYbrzwa77tiRW6Qtsdn8N9s+DC4CsKGJLieutv9ld+981R2RLMPdpEkvcLE1h6u5A1gGa4TMTgNsOikhpohOUc91lpwmcGwHZYMTcUK5ToVw02y8AbKG3pC/Xr7MpI3R/n4h7BMrsJ1e0QFvxG3kezzrKspRL9I+bbxee6Lj3pVr2iKNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mC0hOXhO8fYsCgXb8DUE7BTqLqs9ZEl2YxhbYa3cKKI=;
 b=dnV8LHTUne/zBOa7FXbqBDGyFQLudxoFavRN0p5vJrk3isEL6S+aMjmcvYDkCCwlr5BZiutxQQL8sMnp/vKCejPYwKqj7Vn6bseB5MAJ37TPnMxoVhbzun0IhxijPed4fLojyY+S4SyuTPXgj+UVxZjtHPed8zaDCqrfJS9CUEAclZIVh3a9OmMV0vdmUJ/uHigomaew2M1hFxP6iADuPPQ6VOmhw06pVROQaOwQrbMy/cKAa2O3ILflbH0AM+2epJbmwb904ZBe15YUOWrvSWi4NhHtP/C6vkWsgsSSZrBPg8Ywvj/TmTJW1lvrpE87tsAr837RhtzAy1sOzBvejg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB5926.namprd11.prod.outlook.com (2603:10b6:510:14d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Thu, 26 Oct
 2023 12:10:50 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb%4]) with mapi id 15.20.6907.032; Thu, 26 Oct 2023
 12:10:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/3] drm/i915/hdcp: Create a blanket hdcp enable function
Thread-Index: AQHaB/BBP1dZP0Eki0WZV44zQe4uW7Bb15eAgAAjGrA=
Date: Thu, 26 Oct 2023 12:10:50 +0000
Message-ID: <SN7PR11MB675024CE498D62058F061033E3DDA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231026093647.987267-1-suraj.kandpal@intel.com>
 <20231026093647.987267-4-suraj.kandpal@intel.com> <875y2t8zua.fsf@intel.com>
In-Reply-To: <875y2t8zua.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB5926:EE_
x-ms-office365-filtering-correlation-id: 7452a3ce-dcfa-4564-c302-08dbd61c9826
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HbyWUi58MNJ/3dSpZoKG/CYyEss2eocU8S225Xe9Lu9Amo2qv2OZMh70CfKa6+3LxJA7tw14g3DmCjhOeG9OnlyL2+v8P6GHwueqUSTF9xOKLGIck0nLDI8IJ6Z38HSeOPApR81wEZO5TjMRbd/0VoAG5ETfIOcKhqs6VsyIFOWQ0TUPMrm63Qb3oG6ylmC0DWXsBjR8v2sJkyUyIjaM5O0sEsxBDBahaXeXevZlNywS8HyC6JHx0Xc1reY6qLDSBg+QRGb6JSNzLNWNhTQTBquDGgN3ExXpctrdjeUPCsEp1uGcr3iLP55cxfiISi2nT0HGIr+8ofHV3OpsqkBP40OpmGh2rSqihhaT08WXC7pMNOLDkXri4y0c8DnzU7Cm3WPQHTb+L7DPn8TWmwjna8XTc2IbmBFZnRKEJXE6WAjnWBa5+AZ6Ew+ySaed5/BKfF5+rjNfmprgSSb9QjzioOJB8mxkkeZeMDDqvGvXXxJsVNnMXALUK2s+n+xfSz4df9LdB8czGR9wAtJNbHihw+DRzU+GBVon1OMkuZMWqe0UnVVKXa4xDjSHuWBgDx5ExstKNCwwQcGfC5jpeTJnCrtFn0qaLRBJfOTuGamSTtc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(136003)(366004)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(38070700009)(76116006)(66946007)(86362001)(66476007)(83380400001)(110136005)(66446008)(5660300002)(966005)(316002)(54906003)(38100700002)(55016003)(52536014)(2906002)(7696005)(41300700001)(8676002)(71200400001)(66556008)(64756008)(26005)(8936002)(9686003)(33656002)(4326008)(6506007)(478600001)(82960400001)(122000001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?k/4Ig4+1eZJFWv7kCdeLFiyJ4+wMj3uoea47TH70MkKC+sjnZMfpku6oagQl?=
 =?us-ascii?Q?J8DgUKJwgDs+E3CUNJYzpkAd8Dr/tot0LSYe9ijuogXwOiSNQBXs9fgA60wD?=
 =?us-ascii?Q?EKfn8QTKrXEBwQpM5zALTlD9w2LhT6nu/8uCiBMHpoYifjTx8Ztz+fm6/A3X?=
 =?us-ascii?Q?AbZLuBdQaiaB4bumLpoEDtrdO8jEXJCJYjFilHS7KnUj6Ff74GDqU0BbDzRm?=
 =?us-ascii?Q?BWXz1jpDrvtdtZsLMSaGpy/Env4e2+fATYp7vUCdA2pPVoy3T0KGQCeQnO3q?=
 =?us-ascii?Q?YDvb9c69Z0KBw9r7j786di9l+OUZIgzO+zJuo7AKlqMvmMonIgbmRtq3HhIc?=
 =?us-ascii?Q?5a7Yw9ivVVJ9lhh8u31yshpxhwUi5a326SfkNmXeLmMiUMZsS9H/IpYWshLK?=
 =?us-ascii?Q?dy6PpjC+j7NcwpOINnDgyD9SkXifMhlx3eWMRskYyFwV+SBwNFIzWWk4AbiC?=
 =?us-ascii?Q?51udLrGoW06EuyL24xmsJJnrZark/uEQxmZ8QXMCwQVkomSRrl3kElRRLdtF?=
 =?us-ascii?Q?gJcDyJeR4z1LwDaNOzQdP4XvyZ2FpEBgsbS1eoan3k6D04u0MsUoXZ+IW1CE?=
 =?us-ascii?Q?otY0ZibCQ/rIqkgAZ4rQG6eGvBv5b6p7PJlhcPDuWNtmVoRZUCOnotE3Oc7S?=
 =?us-ascii?Q?ICTE67AbqcrrTQMi3SJvgkmN61eTpyTmrLih9Syy7wrzpLu2S6QV6N1qf9g9?=
 =?us-ascii?Q?e5ZHpKKVZldqru40fIrkt/L+yZnOJ1p5Lllv0dx7+AjclsxWer/p3QDcOSm8?=
 =?us-ascii?Q?4d0ao/ln3rSvaHD2EagtsQtMLI5irdYiIXndO5ELZi87a8e4m5wb8sCPxnG7?=
 =?us-ascii?Q?Hpk8ql7ZG8tS8iup2EPqPwY0VV8O8+Ps3JQSfOQjuOybvQjxp/5ieWrAHSAe?=
 =?us-ascii?Q?a8XzYYptDnifLq4pLu533xkxYxUEuoacx8QeeU7hGSqAfxZ255GfLoImviEq?=
 =?us-ascii?Q?SgiOT05XRFvA+VzDJIt469NPVQ9UZm9u10yRfIb7WbeO+cD6vGqnmOLw+9wB?=
 =?us-ascii?Q?w9gB84aMIIFvVDNGzzPC5/m3rZz7jQW4cZSvdpxVCY5iHJ2kVKEaXExaMAeQ?=
 =?us-ascii?Q?C7qHICHo2TjOfvboN81YwUZdenJT/ywc7mEKpLWmJZ6FYg//SaIxMJGbMJ13?=
 =?us-ascii?Q?AEs24/5CWjga1wTOcxHB+lAu2UZjWA/YdHaFuvhNpFZJs0/b2fcKT/zOPVeB?=
 =?us-ascii?Q?7ovCzsy4ZV+ZiejMgRUlh7aJy0dQed6drC9xu6LqxZcOSkfN5FNc+lUnVHxl?=
 =?us-ascii?Q?Lt3dmZnC2WxkBAyTPdC4nJ5M7gNyKUQQ8+FJpb7vACX2JZkdZySh7+HcLcEC?=
 =?us-ascii?Q?v56xLd/FuAnCEQNMusjz0snnhVqkcIFQ7BznzsON8oBEfj4y8lhy7DgUMnOo?=
 =?us-ascii?Q?iEoh3vMmzMh489V+q3KveAXXW4JKY6vo0bcTPrHWv9OGtFYRZDWIFRzugBSf?=
 =?us-ascii?Q?TUrofqOytDyeiqqmQ6vgLJgbQKGe0NIzjriMr7fTQU0ENVfLinKSibNLpiGK?=
 =?us-ascii?Q?KD+Q5Rx3Hd0pEu4ULhiyqiq8LFOBa9ePAruLa+j0OUq4enCGQOCroTlcUvGW?=
 =?us-ascii?Q?F51c9Mxe/KPA+JvIahSeQI/ungAvdFy5nQbXA9wi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7452a3ce-dcfa-4564-c302-08dbd61c9826
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2023 12:10:50.3097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2dSNHyYQmU9LmwYWOLaD1skCrSqAK/BjnvQdVeMUGmW2xJo8Qx8CPpgIIbFssHVMqf/pGcvc74p2UC1nV4eRLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5926
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: Create a blanket hdcp
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
> Sent: Thursday, October 26, 2023 3:34 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 2/3] drm/i915/hdcp: Create a blanket hdcp enable func=
tion
>=20
> On Thu, 26 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Let's create a blanket function which just has some conditions which
> > need to be checked before connectors enable hdcp.
> > This cleans up code and avoids code duplication.
>=20
> This series has two 2/3 patches... confused me, probably going to confuse=
 CI
> too...
>=20
Weird will send out a new patch series just in case
Though the patchwork seems to catch it properly
https://patchwork.freedesktop.org/series/125550/

Regards,
Suraj Kandpal
> BR,
> Jani.
>=20
>=20
> >
> > --v3
> > -Keep function name as intel_hdcp_enable() [Jani]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +----
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +----
> >  drivers/gpu/drm/i915/display/intel_hdcp.c   | 21 ++++++++++++++++-----
> >  drivers/gpu/drm/i915/display/intel_hdcp.h   |  8 ++++----
> >  4 files changed, 22 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 9151d5add960..b644cf981846 100644
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
> > +	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> >  }
> >
> >  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 7b4628f4f124..4366da79fe81 100644
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
> > +	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
> >  }
> >
> >  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder
> > *encoder, diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 7c0cfcb48521..44c0a93f3af8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -2324,10 +2324,10 @@ intel_hdcp_set_streams(struct intel_digital_por=
t
> *dig_port,
> >  	return 0;
> >  }
> >
> > -int intel_hdcp_enable(struct intel_atomic_state *state,
> > -		      struct intel_encoder *encoder,
> > -		      const struct intel_crtc_state *pipe_config,
> > -		      const struct drm_connector_state *conn_state)
> > +static int _intel_hdcp_enable(struct intel_atomic_state *state,
> > +			      struct intel_encoder *encoder,
> > +			      const struct intel_crtc_state *pipe_config,
> > +			      const struct drm_connector_state *conn_state)
> >  {
> >  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> >  	struct intel_connector *connector =3D
> > @@ -2404,6 +2404,17 @@ int intel_hdcp_enable(struct intel_atomic_state
> *state,
> >  	return ret;
> >  }
> >
> > +void intel_hdcp_enable(struct intel_atomic_state *state,
> > +		       struct intel_encoder *encoder,
> > +		       const struct intel_crtc_state *crtc_state,
> > +		       const struct drm_connector_state *conn_state) {
> > +	/* Enable hdcp if it's desired */
> > +	if (conn_state->content_protection =3D=3D
> > +	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> > +		_intel_hdcp_enable(state, encoder, crtc_state, conn_state); }
> > +
> >  int intel_hdcp_disable(struct intel_connector *connector)  {
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> > @@ -2491,7 +2502,7 @@ void intel_hdcp_update_pipe(struct
> intel_atomic_state *state,
> >  	}
> >
> >  	if (desired_and_not_enabled || content_protection_type_changed)
> > -		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> > +		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> >  }
> >
> >  void intel_hdcp_component_fini(struct drm_i915_private *i915) diff
> > --git a/drivers/gpu/drm/i915/display/intel_hdcp.h
> > b/drivers/gpu/drm/i915/display/intel_hdcp.h
> > index 5997c52a0958..a9c784fd9ba5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> > @@ -28,10 +28,10 @@ void intel_hdcp_atomic_check(struct drm_connector
> > *connector,  int intel_hdcp_init(struct intel_connector *connector,
> >  		    struct intel_digital_port *dig_port,
> >  		    const struct intel_hdcp_shim *hdcp_shim); -int
> > intel_hdcp_enable(struct intel_atomic_state *state,
> > -		      struct intel_encoder *encoder,
> > -		      const struct intel_crtc_state *pipe_config,
> > -		      const struct drm_connector_state *conn_state);
> > +void intel_hdcp_enable(struct intel_atomic_state *state,
> > +		       struct intel_encoder *encoder,
> > +		       const struct intel_crtc_state *pipe_config,
> > +		       const struct drm_connector_state *conn_state);
> >  int intel_hdcp_disable(struct intel_connector *connector);  void
> > intel_hdcp_update_pipe(struct intel_atomic_state *state,
> >  			    struct intel_encoder *encoder,
>=20
> --
> Jani Nikula, Intel
