Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CAE79EF58
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 18:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B418510E48E;
	Wed, 13 Sep 2023 16:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E9910E48E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 16:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694623792; x=1726159792;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yIcIltexaL+S7pQBPcPNgIj2P3XKxbjsbjTI5jxIk+w=;
 b=mdya9jxAAAO+X02C8nKhR0niGt/3Pu8lepeRfstQg0w0s+i25zp1njZ8
 Z9wa5PPYra7JIZQ3vPQpM4tWWlfohvTuU5VMbXOfDxWePuD2XKxgtTeVi
 Vy9YQFTeH4/JDLFOpeFqLxI61kWYuXKBPeu+JjgETZLUBp+drWAaYK2gD
 nfAhqBnXArRwkWMbS+gEHjlPPhwYtfgHTh0XJbrP5DaoTiBJtxj3k+NXX
 aB4SZufPkKQ+4XSiUPTnw0Ez7lbKWT5e2dnf1VS6WM+NDPHBauOTWMByS
 aWQ7iXppvZGzCHxjROaVgjmGOIXoul7tJp9e3pLYtfIzWKChIjqaCLe0C g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="378629128"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="378629128"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 09:47:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="887398529"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="887398529"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 09:47:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 09:47:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 09:47:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 09:47:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nny5AdS0CqSWQ9iooJpSbE2WWbJ+BQ0aQSUq7G4X0qJQ/sGQsZoL1ODVjTxP87OL+TpPv0e8ZwI5DeKtdCfMnOfskw5aiDMzd0vkFI3I66JQIR6VYQHOz61mW8gNckaRg+DKqBwsV5JXLTyPKGWegMMhkzsEz79FSCCoyqetIS/3hh9uH52txoF3ORjZEOV5U/XjYZVsmVo1SqnxrUWqBGzsih5HfyzH/Ul1z10Uu7y/yGcB8un38WZGtMeWbmyHl+5G/5+o43jtwZfJbjhCd8KXip/tvBmlmJONoRjNoD+fgPa/o1ENB1xlqnXASM22yLMgREAqlL7Db8YGWq9eZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TtP3aD1hENIV+dJ6WPMUuMVEMbipdbq8hzklcAgm0ww=;
 b=DlxN6BqOtHcVLqyrnHxL/wOml20gCWujo1aiJQCGcybr9YwUOHqJyWNRXkhGACVC/4xlVIWPD/0z8O/xnnl8kM4iyZfQriGl48ZPEac9W0L+Loyxk77qFteVT5A4gUh6fFo8X1E+SZBoQbXec+uEZ8+qcu1e0s1TrTmvV5cnobKCBtjprKWgKfNPnewRVvIu0YrNG94HZjBWI0ppeRel0jvt8gElmLdTLbR28HdUL1XPLlYitOn1XBE88YOpIiG4n2GZYpjgsOuEcd2q6yq+M054kLnz16G1Ec6GT9D5w1V9zb2xGRe6EPvRA1RcjlMCvGbzDiB5sZAFPOPD2khx5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by MW3PR11MB4681.namprd11.prod.outlook.com (2603:10b6:303:57::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.19; Wed, 13 Sep
 2023 16:47:39 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 16:47:39 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/7] drm/i915: Parameterize binder context creation
Thread-Index: AQHZ5kOaEr6G4M0jQ0KjNKDcxSd8FbAY92aQ
Date: Wed, 13 Sep 2023 16:47:39 +0000
Message-ID: <SA1PR11MB6991C1E407B2A0E8BDE9312192F0A@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230913130935.27707-1-nirmoy.das@intel.com>
 <20230913130935.27707-6-nirmoy.das@intel.com>
In-Reply-To: <20230913130935.27707-6-nirmoy.das@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|MW3PR11MB4681:EE_
x-ms-office365-filtering-correlation-id: 14716fe5-7f00-4617-8dfa-08dbb4792478
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AraoTxXi1Hqd4Osm1sjkG/pt+wPteNNCCb/wzX0RqqH38EGXQHXXjGL4F0QZVvu4bWkb6uTA0JF0s0GSFX5KX5eLn5/dyERP4KfxliTiDlq2Hl8ql986oo1nhho2lvkXms3zn/lYCdu0Fm7ePWloLCC9o9oDnvt5NIzOjitnq0cdaY1tT4R09f6VHoqUFVt2El0/RikA6HCfysrezhMwDbO9zIj67b4iKUWB2KJlOH0MVYJhSe6E1tUP1Gt/WAbX2acBC46+U9lrlXiMpExcG2xRb2zZeL1iHFUi5qcccNTaTZcZJeMtXRsKxuD1qlWg6h9+ZzIYb6g+lVqQiho1eJmjZ3ttMBt8Cb0NpdwtP6v0AKXIKsKeHdBNmJyLYEIEwYyCgPOyo/uM3df5doKjg8tri8YZXIX9KGxpailJba3by01bZFTXkHnmPsVghx6G1mj2ZapMDk7XYRyx2n7Z25WNM15qhARBCoBdTL7E5G6WetviXIDkqOCxxNSCp51AKGGe2Pd1gNMqxof/Xu8buAIo0E0o09qaTYHdiGIajrWU1546bCCs5CPYXtkpXAv0pOV2JCSmfcn8rTlRhVG9H292MLbbjr4R+ecPZa0xReI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(136003)(366004)(396003)(1800799009)(186009)(451199024)(71200400001)(53546011)(6506007)(7696005)(9686003)(478600001)(83380400001)(26005)(2906002)(66556008)(64756008)(66476007)(54906003)(66446008)(66946007)(76116006)(110136005)(5660300002)(52536014)(4326008)(316002)(8676002)(8936002)(41300700001)(33656002)(86362001)(82960400001)(38070700005)(122000001)(38100700002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uNozbZ0ndeof/0vdNCJB5nKqS/zQMb65CDgJgTlL5r4omrKXZru1SOEDbCOy?=
 =?us-ascii?Q?1tBKOXVA5vvR2ewQlEN9HKVYkklqqVkEyUQFtyWh5/pGRznLhpfESzljGCE8?=
 =?us-ascii?Q?Vv7oG5uDuU32iHznPIy3wEIxSG0mffKiSaykpN6DybVyGMOnLthtIWwEiEsx?=
 =?us-ascii?Q?k9B+fhr3FRW6AbQ/bMA6tmhHQ3LEdaT159E3j802JbFalACyhAEZHS2ODx2M?=
 =?us-ascii?Q?wuNvCKwJu7gs1/xLf0Olch/rPATbWiP4o+AFm0X/Zjm/laZvCFacWirNjjVI?=
 =?us-ascii?Q?xjvODeinAMpsU5h+nhd+XwV1QQe/cttPZRNFMX0CcMdtENqzvP5j2KHkt5vQ?=
 =?us-ascii?Q?XuMQooNGNbLfJpwJIMwwluRo8kjrX6sWUOvFyGZPk1Enm8MCaN02s7/cyoP4?=
 =?us-ascii?Q?ZsdYY4kCtzATUMMpkBV9335hBcwPmFIfOmTgZVpEyQeZh8MolN8dTSDwuW1L?=
 =?us-ascii?Q?hjIguu9nNB4KukUr/5uL8CLF1dnVTDmyMWYVW6KbanU1togEpvDLN4nN3yOq?=
 =?us-ascii?Q?Vwwutw7gfnQ7QBjsOJjxKYAtl+YV+E8ESukTR3HxJfp7NdEiV/ukIhesNeT8?=
 =?us-ascii?Q?uUU0Gnng9iEKoNil184zPGLXKTx+YK/pvD/lhEjt2l6FRBjQtSxDUvhYLFRE?=
 =?us-ascii?Q?gehhG/5Co7ZxpCTlG5+uHAF993uGz+aK9Q9dLTOtdYHhc8XlFtEdCKUReyg6?=
 =?us-ascii?Q?7ixkqGdBJHKkE/EUt1Ur0PZbGZk9imooP58vkapb8kPdRiVZkdlNAgsE16+H?=
 =?us-ascii?Q?jyRnPfWb8AR6B4aYeC9etHEGBKfkhI40vafdsRJNKlLQMOjzbv+8yjye4PDo?=
 =?us-ascii?Q?O0BV6v9dHXhUGlcq1l6c6X1b5gDQRcGckGbhWB3JEV8oXSWwPNPYLcvikNHd?=
 =?us-ascii?Q?TApevDRv/MblgSLDFoIUDmrg39i5DlZn704aETY3Kr5aKzrJvmNmt1qe+Ngr?=
 =?us-ascii?Q?W8WQHqU7XV6EjQ6RpcYQql3IYdHfnvO2QwSKsVNtW8UwfeOglO/a72QeF85k?=
 =?us-ascii?Q?fTVr8EpXZNNfxFkQtmKmcHWi5gAMEpfwbdCbToe1IkJTFl/WIfOaeGtQmVRx?=
 =?us-ascii?Q?T2AHtc7z2dD8m45ofJnAYLg52px7fUsNQRUjB7V0G9uqUmN8181OSKgqSBKU?=
 =?us-ascii?Q?GBaDc3xMC2FQuE9e15kzKELcYc7Ci3pxLI/T4hT2CXjDBjyHAFOO5WV6oQN4?=
 =?us-ascii?Q?ddjJDwkJ0xg6RSfCeecklkRN1Df/lK/a65+O6FkD6CSvqDtdvlEvOJiGKBYA?=
 =?us-ascii?Q?ajnGDdFMY7vEOmCT+TMANZiBOFJkQEmOLQvCr9Kqfb/ntrccNGeud7X23x85?=
 =?us-ascii?Q?9eSlN2GB3NiGyw0QKicTg7YHq4SiaXjWoW/u68caC4Ip2olKjsaeDlEGwUl7?=
 =?us-ascii?Q?fROpGZxeMINoafeOctRg1aCB5TgApc1ram6dXisRvfmMLaLth/EVKHAaBvL/?=
 =?us-ascii?Q?uTDy6rY2Ifl5x6d3xF7eW/bE8WL5L0dpeueytcalqrkRKkneDxjI9Y5vgCT3?=
 =?us-ascii?Q?g9thnflvhxp2O+6q/QT1rdgjXP742e8q4QLWSJuYOPzVjofFDKwEo86ezxJe?=
 =?us-ascii?Q?j1SxL3nuvp75a/otCt8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14716fe5-7f00-4617-8dfa-08dbb4792478
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 16:47:39.8971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QM+CowJkAsz/zYjR2sZrpWgyW6u+mxFpkzlIH8e+R/tjAbK6xPvIgXyUURZInD4JDTQBzXPt0tbjyIkj/SJQfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4681
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Parameterize binder context
 creation
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Oak Zeng <oak.zeng@intel.com>

Thanks,
Oak

> -----Original Message-----
> From: Das, Nirmoy <nirmoy.das@intel.com>
> Sent: Wednesday, September 13, 2023 9:10 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Zeng, Oak <oak.zeng@intel.com>; chris.p.wilson@linux.intel.com; Piork=
owski,
> Piotr <piotr.piorkowski@intel.com>; Shyti, Andi <andi.shyti@intel.com>; M=
un,
> Gwan-gyeong <gwan-gyeong.mun@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>
> Subject: [PATCH 4/7] drm/i915: Parameterize binder context creation
>=20
> Add i915_ggtt_require_binder() to indicate that i915
> needs to create binder context which will be used
> by subsequent patch to enable i915_address_space vfuncs
> that will use GPU commands to update GGTT.
>=20
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
>  drivers/gpu/drm/i915/gt/intel_gtt.c       | 4 ++++
>  drivers/gpu/drm/i915/gt/intel_gtt.h       | 2 ++
>  3 files changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 52a24f55cb57..12af594e9164 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1478,7 +1478,7 @@ static int engine_init_common(struct intel_engine_c=
s
> *engine)
>  	 * engines as well but BCS should be less busy engine so pick that for
>  	 * GGTT updates.
>  	 */
> -	if (engine->id =3D=3D BCS0) {
> +	if (i915_ggtt_require_binder(engine->i915) && engine->id =3D=3D BCS0) {
>  		bce =3D create_ggtt_bind_context(engine);
>  		if (IS_ERR(bce))
>  			return PTR_ERR(bce);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c
> b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 13944a14ea2d..4c89eb8d9af7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -21,6 +21,10 @@
>  #include "intel_gt_regs.h"
>  #include "intel_gtt.h"
>=20
> +bool i915_ggtt_require_binder(struct drm_i915_private *i915)
> +{
> +	return false;
> +}
>=20
>  static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915=
)
>  {
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h
> b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 41e530d0a4e9..b471edac2699 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -691,4 +691,6 @@ static inline struct sgt_dma {
>  	return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
>  }
>=20
> +bool i915_ggtt_require_binder(struct drm_i915_private *i915);
> +
>  #endif
> --
> 2.41.0

