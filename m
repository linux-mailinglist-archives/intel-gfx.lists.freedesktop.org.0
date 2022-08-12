Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 149E2590B69
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 07:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CDBCA5856;
	Fri, 12 Aug 2022 05:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B82B1120E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 05:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660280531; x=1691816531;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zSRlC/YQso57WXQh0gYH0Y0lG/fZGfvs8P9sg0yNiX0=;
 b=GHnPMM9ukFwU6WNcf29nAIUJXCfLGG/guChrthrLjF2XuZLviTcpBU4D
 DNejkGoc4ZgS4Kx5Q/Tdhexf/RHin7japXdVgU7rjcyA5Ao4333Dc2I0y
 1juYwiNqIW7VEDso3l+b0X7Yv64G+KkcbBaVrySQGSaq90oG+l76hF7iM
 QKjFwKhRJ4I8BVgBoKHGzLNGqg+KeLIhmIVrcWU9npMF4QNt+QauX6nqL
 p4UOj4WGYAb92wXMnbCDdj6MxUXwzwbX7yEkcUZiTnke2ekauwkyvofUO
 fC8V1McyqWqsE3gM4BMaf3wA1834UEZNvKpSZgK+67rcTEr/TP0Ljen3j A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292316712"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="292316712"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 22:02:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="581955360"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 11 Aug 2022 22:02:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 22:02:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 22:02:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 22:02:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=grEvz9wGogUpQb4JqSeIqa42c0tRkBRJE9BxX+Iu+HolgfMD+cHYNxaen4/doO+ArMAMxMMYVfzYLDIq+5uAL3NT1wdGwhPtYpKcVx9FpBGjCcEUw2WBvmfO3Ku6KryVchnnpDWqntbY89B7OKCVievI6YuFzdQGY8+8vw0jZurJWMAfPX1IY/xk5mE1sqyqc70AsibP64WDFpyZHAqJKKtvf/8uq/lao4WegcX11zOQ2CagEDRA6QS35vwMHRWqLRF/0NyjEFGLPoNjaxs2FPQYG62SuQkPS2SP5OVQ2D/Ky4ZnzWmc6Ql9EVkEM3UikfjvgRq9Ydjcgvm6BiI4IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jdX1irflQQnVju7XKvHecDb1QgsJIdbf8mEOgbvvIdw=;
 b=dALHYpzEpN/GhpOJ8aNqcbIkw9mk0GyinZ4h80jMtvJ694aNKNmX83YFN8GC8yL889FEr7LoRowZLVhtLpnqcDQlErG60EndmdMaIvqEp3JDtwi6Ts8VsVFcfgUp7nDcFyBO55sqPQ/kxwZ8M+3gBvzykMYoZSomQGrCA4itiELNf5GxjUmBD02Dnqvz8b+UKyD2tb+95SGJS29EcdHZBv5M6gOmxd4gg6daQZV8pEig8Z22yHbPDNprR0+Uzdx/n7adVIXe4ZcuirrRAWXdhvWKYQhLBAXpFGe/0ZNzBMn8i/s6Rb/eIKQEWdDbyq1LCDVvX6iDZnuCagq+FC3KOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BYAPR11MB3255.namprd11.prod.outlook.com (2603:10b6:a03:1d::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.19; Fri, 12 Aug 2022 05:02:04 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 05:02:04 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
 display.audio and display.funcs
Thread-Index: AQHYrZVuNq/VAOfpUEWgx10VSAO8b62qtWYA
Date: Fri, 12 Aug 2022 05:02:03 +0000
Message-ID: <DM6PR11MB3177A0CB978DD0EA0717418BBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <d7de23e80cb3a3fb488b76a092ad5f6d94d97416.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <d7de23e80cb3a3fb488b76a092ad5f6d94d97416.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcff15ea-20c4-4f45-ff48-08da7c1fcc50
x-ms-traffictypediagnostic: BYAPR11MB3255:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KRVM2Xe4ZxrDVi6LYFVJTZvQccLV59vUqSZd+UNQxP5ANp49vdOPQkjEhMEqqCQOTRZtwzRO4o4yhy9FFi2wv05gsmwKH4YHypzwLnHfJCCMGW2w3Ji+z1WOjfsF3rlIAEcY1Z8AZ/MD3RtZ4o4bJxZfkWdGdNoqfelncofaeYiXS5afiGrs9GIMjBdqOJOqROOpCiABhGs8uHjLk9ipl5eu2nPGEgP9cGeVo1jnKPEJj29wDSgwEkFWgbJ/isVNCjN6aPpcCGfdrrMF+PPKst6Ht7fDpUCMYTA4JSjbaMHv5kkKaKPXWvwEhLqQ8Z6GrrkpGK6ANPfqDrhz54kV2rGmujqODbikw5WqV5HVJOlvFPG13uhLUoMh23Vgb86sAcTNUHr/JJQVT9h778Xc5unuDICeGVneoGnsLLVYS3OhntkjuwmBKvovcBPnpE4YXMawFfD76AlZ/9VJbXcGYwayuBcr9uTi6a9gvlDQYb7SZ4YuFrJvNm+MtSGvNuAWnL3PpFB3oL1Pbeygm01l5X49nL6FsUlvUHM/4o+Qz8Wa6E63Y/65rSchPfv99wP6Bn+u1bMbf2TCfD9KXoBs/edhPWoIQXGrFrc2aS/3wXeUgAV2GVQ8JVDBpfLdjnSz95zJYB69/c7BwqxGekE0CiegX2xKA/yyKgqKg47fAugueIeOUxZMxYBO1iatLualvFQmLdq5NX8oP/U1Wa5irtrZJ1131oOCEq4lJ3xwKns1YDuaXrgsHCD0H0v5PIszkbPsbcIj0po+5nPWQQLtPSxRfvAxqWt7FcAAIIubqKVbi/U9YFXKXbFUn+5fYAhR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(396003)(376002)(346002)(83380400001)(55016003)(33656002)(55236004)(66946007)(6506007)(8676002)(53546011)(66556008)(2906002)(38070700005)(82960400001)(8936002)(4326008)(316002)(7696005)(66476007)(54906003)(64756008)(52536014)(122000001)(30864003)(26005)(66446008)(76116006)(110136005)(478600001)(5660300002)(41300700001)(71200400001)(9686003)(38100700002)(107886003)(186003)(86362001)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6yCxLSBAgg0pGvy20H8bzQhiw/rEpyhw6DSTf70Mp1xknZfynf/vSEXLuss5?=
 =?us-ascii?Q?AvCbeL+VnZohHwAcwGN9owR/pK/tNFG1+uFqQDP5BL2tmLvtuTQIdpPuu2C2?=
 =?us-ascii?Q?huXX2zBdcJz/FERXczm8ztppplte6GkIHoAyEBHaS6QN+tSps000Q21YSn7w?=
 =?us-ascii?Q?frDwWKvrJr6+UAS39S0dlaKSqPniDN/pv8QdIegaWoZQwev6CKJuWjFSDIrt?=
 =?us-ascii?Q?DoVuLhC+Mhv/OcKHmAAat/IxMtyysHb0nC+hz5sG5xNBfnop9znlbvIv5kS1?=
 =?us-ascii?Q?rZ0l76K0fnOL1LMt+GdnqAZUk3pW2Rkccoo66Zb78Q/A9F7FgcqICSgexB4c?=
 =?us-ascii?Q?bVeShfnuEMFc41tv/Skc1UwLYyEMUjMq/Ysofe4ZS59eYO/WXo9lxXkMlWmf?=
 =?us-ascii?Q?QCJlmqYoILa8YUx0h6S56BuORjIper8SfNISf7ibnh0kcBTTAWJR3W4yuX8Y?=
 =?us-ascii?Q?bgViu4FVq6iPGnCUxmOHdpQemHjeKxbCNx6JRAqpEgkPx16sfbqAwwrijfgC?=
 =?us-ascii?Q?0B1KKyOKs/m8BNmvnBURVFpoyQPn58v2FlX/U94nfB3xZIJnzZIFacDe1+Nh?=
 =?us-ascii?Q?bxWVhPog/hrRpI1vH+lksrN3bsYiBg4BxvQHRw9UP0vzAs8WadidVymYGV2N?=
 =?us-ascii?Q?c/tocOucChqUknKcN0PyNO69EUMiPCcQIM6OpEmtQGO+ichBAo3e3r65luZI?=
 =?us-ascii?Q?/Fy/aJ9QKVguGBQdkQrIw2vELv3OIUlwx6xKUKvGljtZGy6DpMxTL9kJ4p3A?=
 =?us-ascii?Q?bYMPrEkz0iBvdDdcXTdrvfGC6MdgibrubCdcODEItjk/kKtxMxIXOpY/qnOF?=
 =?us-ascii?Q?j4mMAcl77k3smQtDdHBg6qN7ppT6mdtFuCSPCVUn28QYgYgSckGdpQObjmy4?=
 =?us-ascii?Q?elHERbdPSa9da1dpTMaGt/lWKjwzB4ZfPrE93qNzM1MCzKOfTjpptyLtMr79?=
 =?us-ascii?Q?AABQ9dKcvJY7XhFVQEQcfKYJpVZJFULZsxRJuJzmE9EmW+4a3QYWkBaVauVe?=
 =?us-ascii?Q?ayjGYsDeqMjNPO3fdlhlEs0qlWphLyCnLj+wej2tyE7xe5qBrCX24zebvgvd?=
 =?us-ascii?Q?t3dFwG9u8+XnPitu/rVq5Ft3pF+gtNx+a2IMToguHr4JNtm1RyYpW1jKj0sC?=
 =?us-ascii?Q?4buj/GuqzqJ68O8dg2QoR+EmhfqeDQ1KSnUemdE8xNzsrNdvRM/jTCkIsXFd?=
 =?us-ascii?Q?d2ccxe1eGKxgC2g0jEVtZe+KLBce6EAInfJYB8wP8BY4seRXOmWdJkKsPu9u?=
 =?us-ascii?Q?pnNAVzD+p6XshM5I3nPHP4LuD5Lqe7+3UU58R4DR7bN4xucSq9W8RtH+aEsM?=
 =?us-ascii?Q?2PbUY7z5sLaJ2mRZwqFobYHFfLS3laCTqOfeGxuHkbO1oYNepX3uLcYhXJQQ?=
 =?us-ascii?Q?CxVbGkr+o+g+HTYHRGKnkV9x9osUG4qxkJpoZD3CtJXpnXGcC7vuTuxXMwd3?=
 =?us-ascii?Q?t18i5GI8xO0w6mnq5plqJ7i6a6cPvUDhn7/+DCxJL6hkXEDWo2OOuPKWiL0Q?=
 =?us-ascii?Q?BG7KLVm5d8rQMM68VXbK38hq7b4p6X0KWhdP5Xrwi7Yvw2wqfLvzNnWybCnR?=
 =?us-ascii?Q?ZFw9W4nTmLMVW1tiYWRSPoOpOsGc33xSLun4gMKx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcff15ea-20c4-4f45-ff48-08da7c1fcc50
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 05:02:03.9412 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2CoS9vEB8osY9z+a/tei2OVa4wUUroRPVFqSHqcjTYQs8/jEowgAoemNiL7O1gA3f8AMsaC3Mecz4j1d2IbVrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3255
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
 display.audio and display.funcs
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
> display.audio and display.funcs
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> Split audio funcs to display.funcs to follow the same pattern as all the =
other
> display functions.
>=20
Audio is a feature as such so wouldn't intel_audio struct stand parallel to=
 intel_display?

Thanks and Regards,
Arun R Murthy
--------------------

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 96 +++++++++----------
>  .../gpu/drm/i915/display/intel_display_core.h | 26 +++++
>  .../gpu/drm/i915/display/intel_lpe_audio.c    | 42 ++++----
>  drivers/gpu/drm/i915/i915_driver.c            |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 26 -----
>  5 files changed, 96 insertions(+), 96 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 6c9ee905f132..a74fc79b7910 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -393,7 +393,7 @@ hsw_dp_audio_config_update(struct intel_encoder
> *encoder,
>  			   const struct intel_crtc_state *crtc_state)  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp =3D dev_priv-
> >audio.component;
> +	struct i915_audio_component *acomp =3D
> +dev_priv->display.audio.component;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	enum port port =3D encoder->port;
>  	const struct dp_aud_n_m *nm;
> @@ -441,7 +441,7 @@ hsw_hdmi_audio_config_update(struct
> intel_encoder *encoder,
>  			     const struct intel_crtc_state *crtc_state)  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp =3D dev_priv-
> >audio.component;
> +	struct i915_audio_component *acomp =3D
> +dev_priv->display.audio.component;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	enum port port =3D encoder->port;
>  	int n, rate;
> @@ -496,7 +496,7 @@ static void hsw_audio_codec_disable(struct
> intel_encoder *encoder,
>  	enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
>  	u32 tmp;
>=20
> -	mutex_lock(&dev_priv->audio.mutex);
> +	mutex_lock(&dev_priv->display.audio.mutex);
>=20
>  	/* Disable timestamps */
>  	tmp =3D intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
> @@ -514,7 +514,7 @@ static void hsw_audio_codec_disable(struct
> intel_encoder *encoder,
>  	tmp &=3D ~AUDIO_OUTPUT_ENABLE(cpu_transcoder);
>  	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
>=20
> -	mutex_unlock(&dev_priv->audio.mutex);
> +	mutex_unlock(&dev_priv->display.audio.mutex);
>  }
>=20
>  static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder=
,
> @@ -639,7 +639,7 @@ static void hsw_audio_codec_enable(struct
> intel_encoder *encoder,
>  	u32 tmp;
>  	int len, i;
>=20
> -	mutex_lock(&dev_priv->audio.mutex);
> +	mutex_lock(&dev_priv->display.audio.mutex);
>=20
>  	/* Enable Audio WA for 4k DSC usecases */
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP)) @@ -677,7
> +677,7 @@ static void hsw_audio_codec_enable(struct intel_encoder
> *encoder,
>  	/* Enable timestamps */
>  	hsw_audio_config_update(encoder, crtc_state);
>=20
> -	mutex_unlock(&dev_priv->audio.mutex);
> +	mutex_unlock(&dev_priv->display.audio.mutex);
>  }
>=20
>  static void ilk_audio_codec_disable(struct intel_encoder *encoder, @@ -
> 814,7 +814,7 @@ void intel_audio_codec_enable(struct intel_encoder
> *encoder,
>  			      const struct drm_connector_state *conn_state)  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp =3D dev_priv-
> >audio.component;
> +	struct i915_audio_component *acomp =3D
> +dev_priv->display.audio.component;
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	const struct drm_display_mode *adjusted_mode =3D @@ -838,17
> +838,17 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>=20
>  	connector->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode)
> / 2;
>=20
> -	if (dev_priv->audio.funcs)
> -		dev_priv->audio.funcs->audio_codec_enable(encoder,
> -							  crtc_state,
> -							  conn_state);
> +	if (dev_priv->display.funcs.audio)
> +		dev_priv->display.funcs.audio-
> >audio_codec_enable(encoder,
> +								  crtc_state,
> +								  conn_state);
>=20
> -	mutex_lock(&dev_priv->audio.mutex);
> +	mutex_lock(&dev_priv->display.audio.mutex);
>  	encoder->audio_connector =3D connector;
>=20
>  	/* referred in audio callbacks */
> -	dev_priv->audio.encoder_map[pipe] =3D encoder;
> -	mutex_unlock(&dev_priv->audio.mutex);
> +	dev_priv->display.audio.encoder_map[pipe] =3D encoder;
> +	mutex_unlock(&dev_priv->display.audio.mutex);
>=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) { @@ -878,7 +878,7 @@
> void intel_audio_codec_disable(struct intel_encoder *encoder,
>  			       const struct drm_connector_state
> *old_conn_state)  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp =3D dev_priv-
> >audio.component;
> +	struct i915_audio_component *acomp =3D
> +dev_priv->display.audio.component;
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_connector *connector =3D old_conn_state->connector;
>  	enum port port =3D encoder->port;
> @@ -891,15 +891,15 @@ void intel_audio_codec_disable(struct
> intel_encoder *encoder,
>  		    connector->base.id, connector->name,
>  		    encoder->base.base.id, encoder->base.name,
> pipe_name(pipe));
>=20
> -	if (dev_priv->audio.funcs)
> -		dev_priv->audio.funcs->audio_codec_disable(encoder,
> -							   old_crtc_state,
> -							   old_conn_state);
> +	if (dev_priv->display.funcs.audio)
> +		dev_priv->display.funcs.audio-
> >audio_codec_disable(encoder,
> +
> old_crtc_state,
> +
> old_conn_state);
>=20
> -	mutex_lock(&dev_priv->audio.mutex);
> +	mutex_lock(&dev_priv->display.audio.mutex);
>  	encoder->audio_connector =3D NULL;
> -	dev_priv->audio.encoder_map[pipe] =3D NULL;
> -	mutex_unlock(&dev_priv->audio.mutex);
> +	dev_priv->display.audio.encoder_map[pipe] =3D NULL;
> +	mutex_unlock(&dev_priv->display.audio.mutex);
>=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) { @@ -935,13 +935,13
> @@ static const struct intel_audio_funcs hsw_audio_funcs =3D {  void
> intel_audio_hooks_init(struct drm_i915_private *dev_priv)  {
>  	if (IS_G4X(dev_priv)) {
> -		dev_priv->audio.funcs =3D &g4x_audio_funcs;
> +		dev_priv->display.funcs.audio =3D &g4x_audio_funcs;
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		dev_priv->audio.funcs =3D &ilk_audio_funcs;
> +		dev_priv->display.funcs.audio =3D &ilk_audio_funcs;
>  	} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >=3D 8) {
> -		dev_priv->audio.funcs =3D &hsw_audio_funcs;
> +		dev_priv->display.funcs.audio =3D &hsw_audio_funcs;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		dev_priv->audio.funcs =3D &ilk_audio_funcs;
> +		dev_priv->display.funcs.audio =3D &ilk_audio_funcs;
>  	}
>  }
>=20
> @@ -1046,13 +1046,13 @@ static unsigned long
> i915_audio_component_get_power(struct device *kdev)
>=20
>  	ret =3D intel_display_power_get(dev_priv,
> POWER_DOMAIN_AUDIO_PLAYBACK);
>=20
> -	if (dev_priv->audio.power_refcount++ =3D=3D 0) {
> +	if (dev_priv->display.audio.power_refcount++ =3D=3D 0) {
>  		if (DISPLAY_VER(dev_priv) >=3D 9) {
>  			intel_de_write(dev_priv, AUD_FREQ_CNTRL,
> -				       dev_priv->audio.freq_cntrl);
> +				       dev_priv->display.audio.freq_cntrl);
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "restored AUD_FREQ_CNTRL to 0x%x\n",
> -				    dev_priv->audio.freq_cntrl);
> +				    dev_priv->display.audio.freq_cntrl);
>  		}
>=20
>  		/* Force CDCLK to 2*BCLK as long as we need audio powered.
> */ @@ -1073,7 +1073,7 @@ static void
> i915_audio_component_put_power(struct device *kdev,
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
>=20
>  	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered.
> */
> -	if (--dev_priv->audio.power_refcount =3D=3D 0)
> +	if (--dev_priv->display.audio.power_refcount =3D=3D 0)
>  		if (IS_GEMINILAKE(dev_priv))
>  			glk_force_audio_cdclk(dev_priv, false);
>=20
> @@ -1140,10 +1140,10 @@ static struct intel_encoder
> *get_saved_enc(struct drm_i915_private *dev_priv,
>  	/* MST */
>  	if (pipe >=3D 0) {
>  		if (drm_WARN_ON(&dev_priv->drm,
> -				pipe >=3D ARRAY_SIZE(dev_priv-
> >audio.encoder_map)))
> +				pipe >=3D ARRAY_SIZE(dev_priv-
> >display.audio.encoder_map)))
>  			return NULL;
>=20
> -		encoder =3D dev_priv->audio.encoder_map[pipe];
> +		encoder =3D dev_priv->display.audio.encoder_map[pipe];
>  		/*
>  		 * when bootup, audio driver may not know it is
>  		 * MST or not. So it will poll all the port & pipe @@ -1159,7
> +1159,7 @@ static struct intel_encoder *get_saved_enc(struct
> drm_i915_private *dev_priv,
>  		return NULL;
>=20
>  	for_each_pipe(dev_priv, pipe) {
> -		encoder =3D dev_priv->audio.encoder_map[pipe];
> +		encoder =3D dev_priv->display.audio.encoder_map[pipe];
>  		if (encoder =3D=3D NULL)
>  			continue;
>=20
> @@ -1177,7 +1177,7 @@ static int
> i915_audio_component_sync_audio_rate(struct device *kdev, int port,
>  						int pipe, int rate)
>  {
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> -	struct i915_audio_component *acomp =3D dev_priv-
> >audio.component;
> +	struct i915_audio_component *acomp =3D
> +dev_priv->display.audio.component;
>  	struct intel_encoder *encoder;
>  	struct intel_crtc *crtc;
>  	unsigned long cookie;
> @@ -1187,7 +1187,7 @@ static int
> i915_audio_component_sync_audio_rate(struct device *kdev, int port,
>  		return 0;
>=20
>  	cookie =3D i915_audio_component_get_power(kdev);
> -	mutex_lock(&dev_priv->audio.mutex);
> +	mutex_lock(&dev_priv->display.audio.mutex);
>=20
>  	/* 1. get the pipe */
>  	encoder =3D get_saved_enc(dev_priv, port, pipe); @@ -1206,7 +1206,7
> @@ static int i915_audio_component_sync_audio_rate(struct device *kdev,
> int port,
>  	hsw_audio_config_update(encoder, crtc->config);
>=20
>   unlock:
> -	mutex_unlock(&dev_priv->audio.mutex);
> +	mutex_unlock(&dev_priv->display.audio.mutex);
>  	i915_audio_component_put_power(kdev, cookie);
>  	return err;
>  }
> @@ -1220,13 +1220,13 @@ static int i915_audio_component_get_eld(struct
> device *kdev, int port,
>  	const u8 *eld;
>  	int ret =3D -EINVAL;
>=20
> -	mutex_lock(&dev_priv->audio.mutex);
> +	mutex_lock(&dev_priv->display.audio.mutex);
>=20
>  	intel_encoder =3D get_saved_enc(dev_priv, port, pipe);
>  	if (!intel_encoder) {
>  		drm_dbg_kms(&dev_priv->drm, "Not valid for port %c\n",
>  			    port_name(port));
> -		mutex_unlock(&dev_priv->audio.mutex);
> +		mutex_unlock(&dev_priv->display.audio.mutex);
>  		return ret;
>  	}
>=20
> @@ -1238,7 +1238,7 @@ static int i915_audio_component_get_eld(struct
> device *kdev, int port,
>  		memcpy(buf, eld, min(max_bytes, ret));
>  	}
>=20
> -	mutex_unlock(&dev_priv->audio.mutex);
> +	mutex_unlock(&dev_priv->display.audio.mutex);
>  	return ret;
>  }
>=20
> @@ -1273,7 +1273,7 @@ static int i915_audio_component_bind(struct
> device *i915_kdev,
>  	BUILD_BUG_ON(MAX_PORTS !=3D I915_MAX_PORTS);
>  	for (i =3D 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
>  		acomp->aud_sample_rate[i] =3D 0;
> -	dev_priv->audio.component =3D acomp;
> +	dev_priv->display.audio.component =3D acomp;
>  	drm_modeset_unlock_all(&dev_priv->drm);
>=20
>  	return 0;
> @@ -1288,14 +1288,14 @@ static void
> i915_audio_component_unbind(struct device *i915_kdev,
>  	drm_modeset_lock_all(&dev_priv->drm);
>  	acomp->base.ops =3D NULL;
>  	acomp->base.dev =3D NULL;
> -	dev_priv->audio.component =3D NULL;
> +	dev_priv->display.audio.component =3D NULL;
>  	drm_modeset_unlock_all(&dev_priv->drm);
>=20
>  	device_link_remove(hda_kdev, i915_kdev);
>=20
> -	if (dev_priv->audio.power_refcount)
> +	if (dev_priv->display.audio.power_refcount)
>  		drm_err(&dev_priv->drm, "audio power refcount %d after
> unbind\n",
> -			dev_priv->audio.power_refcount);
> +			dev_priv->display.audio.power_refcount);
>  }
>=20
>  static const struct component_ops i915_audio_component_bind_ops =3D {
> @@ -1359,13 +1359,13 @@ static void i915_audio_component_init(struct
> drm_i915_private *dev_priv)
>  		drm_dbg_kms(&dev_priv->drm, "use AUD_FREQ_CNTRL of
> 0x%x (init value 0x%x)\n",
>  			    aud_freq, aud_freq_init);
>=20
> -		dev_priv->audio.freq_cntrl =3D aud_freq;
> +		dev_priv->display.audio.freq_cntrl =3D aud_freq;
>  	}
>=20
>  	/* init with current cdclk */
>  	intel_audio_cdclk_change_post(dev_priv);
>=20
> -	dev_priv->audio.component_registered =3D true;
> +	dev_priv->display.audio.component_registered =3D true;
>  }
>=20
>  /**
> @@ -1377,11 +1377,11 @@ static void i915_audio_component_init(struct
> drm_i915_private *dev_priv)
>   */
>  static void i915_audio_component_cleanup(struct drm_i915_private
> *dev_priv)  {
> -	if (!dev_priv->audio.component_registered)
> +	if (!dev_priv->display.audio.component_registered)
>  		return;
>=20
>  	component_del(dev_priv->drm.dev,
> &i915_audio_component_bind_ops);
> -	dev_priv->audio.component_registered =3D false;
> +	dev_priv->display.audio.component_registered =3D false;
>  }
>=20
>  /**
> @@ -1403,7 +1403,7 @@ void intel_audio_init(struct drm_i915_private
> *dev_priv)
>   */
>  void intel_audio_deinit(struct drm_i915_private *dev_priv)  {
> -	if ((dev_priv)->audio.lpe.platdev !=3D NULL)
> +	if (dev_priv->display.audio.lpe.platdev !=3D NULL)
>  		intel_lpe_audio_teardown(dev_priv);
>  	else
>  		i915_audio_component_cleanup(dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index ca22706e11e6..748d2a84e20e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -10,11 +10,14 @@
>  #include <linux/types.h>
>  #include <linux/wait.h>
>=20
> +#include "intel_display.h"
>  #include "intel_dmc.h"
>  #include "intel_gmbus.h"
>=20
>  struct drm_i915_private;
> +struct i915_audio_component;
>  struct intel_atomic_state;
> +struct intel_audio_funcs;
>  struct intel_cdclk_funcs;
>  struct intel_clock_gating_funcs;
>  struct intel_color_funcs;
> @@ -56,6 +59,25 @@ struct intel_wm_funcs {
>  	int (*compute_global_watermarks)(struct intel_atomic_state *state);
> };
>=20
> +struct intel_audio {
> +	/* hda/i915 audio component */
> +	struct i915_audio_component *component;
> +	bool component_registered;
> +	/* mutex for audio/video sync */
> +	struct mutex mutex;
> +	int power_refcount;
> +	u32 freq_cntrl;
> +
> +	/* Used to save the pipe-to-encoder mapping for audio */
> +	struct intel_encoder *encoder_map[I915_MAX_PIPES];
> +
> +	/* necessary resource sharing with HDMI LPE audio driver. */
> +	struct {
> +		struct platform_device *platdev;
> +		int irq;
> +	} lpe;
> +};
> +
>  struct intel_display {
>  	/* Display functions */
>  	struct {
> @@ -82,6 +104,9 @@ struct intel_display {
>=20
>  		/* Display internal color functions */
>  		const struct intel_color_funcs *color;
> +
> +		/* Display internal audio functions */
> +		const struct intel_audio_funcs *audio;
>  	} funcs;
>=20
>  	/* Grouping using anonymous structs. Keep sorted. */ @@ -111,6
> +136,7 @@ struct intel_display {
>  	} pps;
>=20
>  	/* Grouping using named structs. Keep sorted. */
> +	struct intel_audio audio;
>  	struct intel_dmc dmc;
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 1e18696aaecf..dca6003ccac8 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -75,7 +75,7 @@
>  #include "intel_lpe_audio.h"
>  #include "intel_pci_config.h"
>=20
> -#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->audio.lpe.platdev !=3D NULL=
)
> +#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->display.audio.lpe.platdev
> +!=3D NULL)
>=20
>  static struct platform_device *
>  lpe_audio_platdev_create(struct drm_i915_private *dev_priv) @@ -97,7
> +97,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
>  		return ERR_PTR(-ENOMEM);
>  	}
>=20
> -	rsc[0].start    =3D rsc[0].end =3D dev_priv->audio.lpe.irq;
> +	rsc[0].start    =3D rsc[0].end =3D dev_priv->display.audio.lpe.irq;
>  	rsc[0].flags    =3D IORESOURCE_IRQ;
>  	rsc[0].name     =3D "hdmi-lpe-audio-irq";
>=20
> @@ -149,7 +149,7 @@ static void lpe_audio_platdev_destroy(struct
> drm_i915_private *dev_priv)
>  	 * than us fiddle with its internals.
>  	 */
>=20
> -	platform_device_unregister(dev_priv->audio.lpe.platdev);
> +	platform_device_unregister(dev_priv->display.audio.lpe.platdev);
>  }
>=20
>  static void lpe_audio_irq_unmask(struct irq_data *d) @@ -168,7 +168,7
> @@ static struct irq_chip lpe_audio_irqchip =3D {
>=20
>  static int lpe_audio_irq_init(struct drm_i915_private *dev_priv)  {
> -	int irq =3D dev_priv->audio.lpe.irq;
> +	int irq =3D dev_priv->display.audio.lpe.irq;
>=20
>  	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
>  	irq_set_chip_and_handler_name(irq,
> @@ -205,15 +205,15 @@ static int lpe_audio_setup(struct drm_i915_private
> *dev_priv)  {
>  	int ret;
>=20
> -	dev_priv->audio.lpe.irq =3D irq_alloc_desc(0);
> -	if (dev_priv->audio.lpe.irq < 0) {
> +	dev_priv->display.audio.lpe.irq =3D irq_alloc_desc(0);
> +	if (dev_priv->display.audio.lpe.irq < 0) {
>  		drm_err(&dev_priv->drm, "Failed to allocate IRQ desc:
> %d\n",
> -			dev_priv->audio.lpe.irq);
> -		ret =3D dev_priv->audio.lpe.irq;
> +			dev_priv->display.audio.lpe.irq);
> +		ret =3D dev_priv->display.audio.lpe.irq;
>  		goto err;
>  	}
>=20
> -	drm_dbg(&dev_priv->drm, "irq =3D %d\n", dev_priv->audio.lpe.irq);
> +	drm_dbg(&dev_priv->drm, "irq =3D %d\n",
> +dev_priv->display.audio.lpe.irq);
>=20
>  	ret =3D lpe_audio_irq_init(dev_priv);
>=20
> @@ -224,10 +224,10 @@ static int lpe_audio_setup(struct drm_i915_private
> *dev_priv)
>  		goto err_free_irq;
>  	}
>=20
> -	dev_priv->audio.lpe.platdev =3D lpe_audio_platdev_create(dev_priv);
> +	dev_priv->display.audio.lpe.platdev =3D
> +lpe_audio_platdev_create(dev_priv);
>=20
> -	if (IS_ERR(dev_priv->audio.lpe.platdev)) {
> -		ret =3D PTR_ERR(dev_priv->audio.lpe.platdev);
> +	if (IS_ERR(dev_priv->display.audio.lpe.platdev)) {
> +		ret =3D PTR_ERR(dev_priv->display.audio.lpe.platdev);
>  		drm_err(&dev_priv->drm,
>  			"Failed to create lpe audio platform device: %d\n",
>  			ret);
> @@ -242,10 +242,10 @@ static int lpe_audio_setup(struct drm_i915_private
> *dev_priv)
>=20
>  	return 0;
>  err_free_irq:
> -	irq_free_desc(dev_priv->audio.lpe.irq);
> +	irq_free_desc(dev_priv->display.audio.lpe.irq);
>  err:
> -	dev_priv->audio.lpe.irq =3D -1;
> -	dev_priv->audio.lpe.platdev =3D NULL;
> +	dev_priv->display.audio.lpe.irq =3D -1;
> +	dev_priv->display.audio.lpe.platdev =3D NULL;
>  	return ret;
>  }
>=20
> @@ -263,7 +263,7 @@ void intel_lpe_audio_irq_handler(struct
> drm_i915_private *dev_priv)
>  	if (!HAS_LPE_AUDIO(dev_priv))
>  		return;
>=20
> -	ret =3D generic_handle_irq(dev_priv->audio.lpe.irq);
> +	ret =3D generic_handle_irq(dev_priv->display.audio.lpe.irq);
>  	if (ret)
>  		drm_err_ratelimited(&dev_priv->drm,
>  				    "error handling LPE audio irq: %d\n", ret);
> @@ -304,10 +304,10 @@ void intel_lpe_audio_teardown(struct
> drm_i915_private *dev_priv)
>=20
>  	lpe_audio_platdev_destroy(dev_priv);
>=20
> -	irq_free_desc(dev_priv->audio.lpe.irq);
> +	irq_free_desc(dev_priv->display.audio.lpe.irq);
>=20
> -	dev_priv->audio.lpe.irq =3D -1;
> -	dev_priv->audio.lpe.platdev =3D NULL;
> +	dev_priv->display.audio.lpe.irq =3D -1;
> +	dev_priv->display.audio.lpe.platdev =3D NULL;
>  }
>=20
>  /**
> @@ -334,7 +334,7 @@ void intel_lpe_audio_notify(struct drm_i915_private
> *dev_priv,
>  	if (!HAS_LPE_AUDIO(dev_priv))
>  		return;
>=20
> -	pdata =3D dev_get_platdata(&dev_priv->audio.lpe.platdev->dev);
> +	pdata =3D dev_get_platdata(&dev_priv->display.audio.lpe.platdev-
> >dev);
>  	ppdata =3D &pdata->port[port - PORT_B];
>=20
>  	spin_lock_irqsave(&pdata->lpe_audio_slock, irqflags); @@ -362,7
> +362,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
>  	}
>=20
>  	if (pdata->notify_audio_lpe)
> -		pdata->notify_audio_lpe(dev_priv->audio.lpe.platdev, port -
> PORT_B);
> +		pdata->notify_audio_lpe(dev_priv-
> >display.audio.lpe.platdev, port -
> +PORT_B);
>=20
>  	spin_unlock_irqrestore(&pdata->lpe_audio_slock, irqflags);  } diff --
> git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> index 694384e54fd7..0d3993e51138 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -335,7 +335,7 @@ static int i915_driver_early_probe(struct
> drm_i915_private *dev_priv)
>  	mutex_init(&dev_priv->sb_lock);
>  	cpu_latency_qos_add_request(&dev_priv->sb_qos,
> PM_QOS_DEFAULT_VALUE);
>=20
> -	mutex_init(&dev_priv->audio.mutex);
> +	mutex_init(&dev_priv->display.audio.mutex);
>  	mutex_init(&dev_priv->wm.wm_mutex);
>  	mutex_init(&dev_priv->display.pps.mutex);
>  	mutex_init(&dev_priv->hdcp_comp_mutex);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index d1b51e2460e0..ebd96555ada0
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -78,7 +78,6 @@
>  struct dpll;
>  struct drm_i915_gem_object;
>  struct drm_i915_private;
> -struct intel_audio_funcs;
>  struct intel_cdclk_config;
>  struct intel_cdclk_state;
>  struct intel_cdclk_vals;
> @@ -306,29 +305,6 @@ struct i915_selftest_stash {
>  	struct ida mock_region_instances;
>  };
>=20
> -/* intel_audio.c private */
> -struct intel_audio_private {
> -	/* Display internal audio functions */
> -	const struct intel_audio_funcs *funcs;
> -
> -	/* hda/i915 audio component */
> -	struct i915_audio_component *component;
> -	bool component_registered;
> -	/* mutex for audio/video sync */
> -	struct mutex mutex;
> -	int power_refcount;
> -	u32 freq_cntrl;
> -
> -	/* Used to save the pipe-to-encoder mapping for audio */
> -	struct intel_encoder *encoder_map[I915_MAX_PIPES];
> -
> -	/* necessary resource sharing with HDMI LPE audio driver. */
> -	struct {
> -		struct platform_device *platdev;
> -		int irq;
> -	} lpe;
> -};
> -
>  struct drm_i915_private {
>  	struct drm_device drm;
>=20
> @@ -671,8 +647,6 @@ struct drm_i915_private {
>=20
>  	bool ipc_enabled;
>=20
> -	struct intel_audio_private audio;
> -
>  	struct i915_pmu pmu;
>=20
>  	struct i915_drm_clients clients;
> --
> 2.34.1

