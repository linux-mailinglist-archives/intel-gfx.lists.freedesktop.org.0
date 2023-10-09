Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A540F7BD738
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 11:36:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B2310E24F;
	Mon,  9 Oct 2023 09:36:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC5FD10E24F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 09:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696844195; x=1728380195;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CuFXZlXaphzjPk2+7AgQFnVTT101kgie8JEa9THVsNo=;
 b=AnEW8jrLEnmJ7/VM6AR47A3Y0EowVg8qNijTwkbOdODTiv75id8U0smI
 QxZApNnrC4pzyVpmxZLuWlQ5TBbZnLGenOaKj7B1ciRnxX5Pgm3I9q0hw
 IaUTjVetK7dRSMxX1if6V5jhDUc0GBUp9/ns/fcM0PHqyfq1hZQfvFrGM
 DumapZwsCSDOJB5yRBIGrvb0Q9lQz/AMKVvdAuOgrjAUOnbcGWMatjdna
 WLft83cf1Xqnr7Qe6Vhw4508urQ3EhQCxjZ4oz1oaJMprj7akCnnYposJ
 K8LiiBhRf1s9ceyQinSS8hoQZG6Os41rLyX/ZlOPnOvIt/YgiCv56x8HJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="369168992"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="369168992"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 02:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="782427131"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="782427131"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 02:36:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 02:36:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 02:36:18 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 02:36:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fLkd1uHU9akmfysBuIpYNGbfSSxHIcwREvzmmLoGwDxrYIu+OweifHCaB+34s/5ap6JAL7Bc+3/q4htKE3Do9ehezfrYpoCtc+7u4r7hU+xPkCoGUQsSwK/g7yZS2+5mcNzfwuV95j+of0C8oVrYXgFlrOcYx2i3VDjWoPFSfNP26UvQ+ogkQMmJOOqffKqYNyy4VEPnHXwlQ+NHmfOdYv68MyjLuFo0l4JM7/zYkGYq4k8UEfEAlPcKV60om9btGagyxDDOCuSlaexgLjPblzLo/jUuJpVH10e5ZDCtb2PCs/WBVDcoi+iqQMyb3UnHqTI75kXIA/XI9Inyd35J4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CamiOZ1PZVBUBo/l/vgXvZ47+rFywymkqwdYpl1nl6w=;
 b=UBdDO67nx961NyI3EpPlMrXBdD2l2UxWK0GTn+gqt12CbNUEid181DpeU44e24+IFAfgVa4zUFctXK9nrG4k0AbyBPVjPAyXd1buFTEibHb4a7QyeaOO4XpTCtNmT0JOFaiZdK2aiTOwvJ/CWtLv9mhRDR+QTiuD15dZkp5mG6+HuSPyTTWHQ324aGk0QiuJZZ1WujpogPpfD4IU95m+7pYIlGib+F8IggSvbuSdYi8P0J+rM0B9dfxFWYt/cv5B1FIUZGmSjwD3k9GP8I9ntla8Rb/V6J8+yLupz/BHsvg4X6JRm8khJWnhQ5dpsgzTrVYUr03RIrA9127qO7Oq6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB7784.namprd11.prod.outlook.com (2603:10b6:8:e1::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.38; Mon, 9 Oct 2023 09:36:15 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6838.040; Mon, 9 Oct 2023
 09:36:15 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Add wrapper for getting display step
Thread-Index: AQHZ9cbHXN5JTSiF9EuiU9ipwK+dbrBBPCXg
Date: Mon, 9 Oct 2023 09:36:15 +0000
Message-ID: <DM4PR11MB6360AF9ED4E278CE7FA68C21F4CEA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230927133505.1086855-1-animesh.manna@intel.com>
 <20231003065211.1052385-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20231003065211.1052385-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB7784:EE_
x-ms-office365-filtering-correlation-id: af3d448a-6b0f-4025-7f85-08dbc8ab2ed1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M1gAl3iD70Lk5GoYts7Flni7dY33yJKjwGymNx5DtHgXHVoCSrwgAhFulwDfeBN2rqX/+akNxsG2HipZBFaRhAHWKIFB/H/mwv93RUVXPfCGGeDLxYJJLDkZWn4Lq7poT8qQsxuizkuDFj1zWNlKoRpX94PbDkCHDWiV/1Hzx+mZfxB85vrE8v8WlCs812508rSA7Pu1LjuvAuHk/Qf8B3GixHbdg94awgJpWRQ5X/FYzbQYHmQ/BEtA0hKe6CN2dkmKEIZq4PIBVXdyGw4+NVVy9s2grf5A1OxadLFolCJdgZDf2Kx3H2lKCghKe7GkZMdoH5Wx7Nuy7UYtNtaNohuWJ7zYcXyhjSkDoU0VAscJ5kVc2qXlMIbvEnC5j3H8+hytUihOrvgdx+G5RnqO9zk5dMDc0viFCn2tHPOwb2TUodkLVIL5UIYWAxPUtNr4BQCTx/t7xhVSXDdxGM6m3O2Sr9MsykH2Y3RufRVj7zaeHKZFb3sFBJtym6tow7CIJQk2IQ1jIVtmI1E14UM/GKC+PZmxgIvBojbaUQnIU8wATrU3rES094+iNh5dr/LUPxID6HhLixmL/j2NtKB+V8QE1cw/3UdTzjErUb2alOVUuzUY8k5lc4dRvNMns6Ym
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(396003)(346002)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(55016003)(83380400001)(107886003)(26005)(66476007)(66556008)(66946007)(76116006)(110136005)(66446008)(316002)(64756008)(8936002)(8676002)(4326008)(5660300002)(52536014)(41300700001)(7696005)(6506007)(53546011)(71200400001)(9686003)(2906002)(478600001)(33656002)(38070700005)(38100700002)(82960400001)(122000001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WZZpkuHsxIKnaxkGJaFBaQCIK45ypFzcaolhAGmZ15mB+vt7C9HQgLz3TR4A?=
 =?us-ascii?Q?b9tG88V9k8HB64UkKuYr++SujyAKTVsjIgG0YiS4D8E6t8XLeNFQcyRz+4RM?=
 =?us-ascii?Q?5wXCT1Qkmlr1ynYR505/owxYluuTvbol6JiWkCbbgcqPuwvyHGjdlHuxaUMT?=
 =?us-ascii?Q?pU5OcnNuwpBU8ti2jRndYCcO9eCEaqXtxbRFbarfWPkbOvlFoObsIZojT0xT?=
 =?us-ascii?Q?5uKphFQG0CloZmSVdY2bHCUk3rhg3V8LTzgcdzpOS8kwoAEE1BYr1DhAgdCF?=
 =?us-ascii?Q?cZG14kFYS+6uuP3IoWEdDxiFfvc07bWbBQSV+XdajE5XVxpGSu0cXUt1mu2a?=
 =?us-ascii?Q?gzpjKfGCRS59j8sGuOK4dm964B0RE1WTQsm/1bf9YSEGRaqRvmhH8BU/hxIP?=
 =?us-ascii?Q?H1cf3WjsCjueKFWooSWay5WeHGLJsvbJGNuz8RZXMdO15R8mX8JVGpgVORwc?=
 =?us-ascii?Q?eue6/heRr+woSwn5vE5UEwUpPQhMv1x+IXHm6d603ZmPCN04j6/yRpmNDAx0?=
 =?us-ascii?Q?Kf20UabU58Ex9X+SXU+cc1ZMTGekL09qZ60d+ua7DyiJaWJYl1E5mmgdGDXu?=
 =?us-ascii?Q?6F15PNLAAXNnF4/73zyJUfuDeR+ZPv7c8c8kL41TY5l08ptu2aOsBRqf9zjN?=
 =?us-ascii?Q?j6OF+EQh/hsQkWGUxCcDywndTs/FQ6dg1+6Zv897Be+BrLAi9PnM397wZMAR?=
 =?us-ascii?Q?dPknhPb4Mql7ycEl7sW9eeqiv02ZqeaVRPnNsQGNNVbj8xLemqgmx/hj8WYh?=
 =?us-ascii?Q?NH9bYKcGIdOnJilJw+gR1yRnNuvKMC9AKWMl7OprAkma5XKFHNbKQnfnX9/M?=
 =?us-ascii?Q?R005Whh/vC5B4ayA5+g6IOnlFXbLWJWfMy7EZSN82nDvIwYLZxKJSnC68ooy?=
 =?us-ascii?Q?XLWkVVV5r5hyEZALKCu6mVmpj4wYYt/mFklZ5J3nJfRkBkeEtB3tjDZ4Rihi?=
 =?us-ascii?Q?SuhelzrW6OZIHofVK7nbCsa24+TjsQ4jQqBEyx+ENBzsniiR62ExfWOb8BU7?=
 =?us-ascii?Q?yvbhj6lq3DD3MGpzYuyHVYXn9kku6gTBCCbOnNQSenirw2kPoXGP7CBr0Frg?=
 =?us-ascii?Q?CZL5BJn+MSrrBmurxA9a1BvSxLbbC/mrfgElh/+aOJENw5/+f1idsEQbvoOY?=
 =?us-ascii?Q?TriYWwRAsZ8iphthLy1h5F9ewRTHjngITxmcMx5lKA8KHYRykQfVwom5WCxM?=
 =?us-ascii?Q?uHbSnluaNvD4rsd9Kl/Tby0G+S3mA6hOcBY5Hx31fF5zWggj7U/L++kY2/MH?=
 =?us-ascii?Q?669UGU1FaPurL3wM1C1eWHWHzLNi9T+aFNCYaP7PA++X37p/t6HfMwmIIU5D?=
 =?us-ascii?Q?O2xE3WQVrV53g+jswNRnqAa2GPEt3HNnl712n7c6c1eXcuY/GP5q0BbTVza2?=
 =?us-ascii?Q?2AJmZYkaXGRRrRl/3/niPaLUEsj37M/8euzWsp59YS1iea/VAGdGUnFAxCqh?=
 =?us-ascii?Q?rjYMsGhPCCPlUYfciELL69yvllGzBzZlG/KC0vSJFZe6HXGbvMr7I08jRwiX?=
 =?us-ascii?Q?lNYvwYRhFFHQNQLuhU8Q6MSisNs5eS0nDKh0jnbHH/5q/vtOzRM+hKBa+9KM?=
 =?us-ascii?Q?8CHET2Z/95noYLtxb35VJdTZk4/BAC3rknqZ5Vwv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af3d448a-6b0f-4025-7f85-08dbc8ab2ed1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2023 09:36:15.3093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fX9xIqHpZ1p7LJi+fJYUefgoPON0u4EK6Yqytny1LfEHzNNhGAJuRs0kIv1bF1/WoSU6u+pL1zCp+7PGk6GyZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7784
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add wrapper for getting display
 step
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Tuesday, October 3, 2023 12:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH] drm/i915: Add wrapper for getting display step
>=20
> Add a wrapper around intel_step_name that takes in driver data as an argu=
ment.
> This wrapper will help maintain compatibility with the proposed xe driver=
.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
>  drivers/gpu/drm/i915/intel_step.c        | 5 +++++
>  drivers/gpu/drm/i915/intel_step.h        | 1 +
>  3 files changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 1623c0c5e8a1..63e080e07023 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -309,7 +309,7 @@ static const struct stepping_info *
> intel_get_stepping_info(struct drm_i915_private *i915,
>  			struct stepping_info *si)
>  {
> -	const char *step_name =3D intel_step_name(RUNTIME_INFO(i915)-
> >step.display_step);
> +	const char *step_name =3D intel_display_step_name(i915);
>=20
>  	si->stepping =3D step_name[0];
>  	si->substepping =3D step_name[1];
> diff --git a/drivers/gpu/drm/i915/intel_step.c
> b/drivers/gpu/drm/i915/intel_step.c
> index ee4e5a2c0220..b4162f1be765 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -353,3 +353,8 @@ const char *intel_step_name(enum intel_step step)
>  		return "**";
>  	}
>  }
> +
> +const char *intel_display_step_name(struct drm_i915_private *i915) {
> +	return intel_step_name(RUNTIME_INFO(i915)->step.display_step);
> +}
> diff --git a/drivers/gpu/drm/i915/intel_step.h
> b/drivers/gpu/drm/i915/intel_step.h
> index 96dfca4cba73..b6f43b624774 100644
> --- a/drivers/gpu/drm/i915/intel_step.h
> +++ b/drivers/gpu/drm/i915/intel_step.h
> @@ -78,5 +78,6 @@ enum intel_step {
>=20
>  void intel_step_init(struct drm_i915_private *i915);  const char
> *intel_step_name(enum intel_step step);
> +const char *intel_display_step_name(struct drm_i915_private *i915);
>=20
>  #endif /* __INTEL_STEP_H__ */
> --
> 2.25.1

