Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DF67E63F6
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 07:36:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C5A10E1B6;
	Thu,  9 Nov 2023 06:36:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5892B10E1B6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 06:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699511801; x=1731047801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8LZ2S+6AlXeAv2aokZuJ5Ygm7zJdiFrnaxmU1lfKiHk=;
 b=nvEw8tWpj049vegmLBor4d9aCSrsCU2wFpZvfoNzGKBrOk3exhy2rqRI
 tXHwx2BELv6EIlYXXRhmONNfJj08hg9DCRrBQ30TUTobGlek8r9v57UMK
 rDs6Iue+ZQNTbZ92WsB40NasVj2snthFlOUWjKqrmxm7Pj+ggQdQQjBcS
 CqVprYknRAtkh+sFB+rKjiRLCjUz2rR7CjmrP92B3lOz6PtoxQj8bo5Hx
 27zOFk9fu1hYbYhqmCVZeyHMNl24ryXsUr+9PZbvQIZR8KXtOwbsKFGOB
 fuju1M5K/pBayME6WIADch8pkqKZTuBkMOttnKPVS0bPltOMzZwUFCgl1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="388783191"
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; d="scan'208";a="388783191"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 22:36:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; d="scan'208";a="11439508"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2023 22:36:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 22:36:40 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 8 Nov 2023 22:36:40 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 8 Nov 2023 22:36:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+3RoMfVRyw/43XyGjMwPhp8fpzr8raMpq+9pbtZigQKinkft60bgLtZ+AUUxnDlHEIxQLbzM7azAVlo332IrvUQlxdDaxM3IbQxj1m6+cb3OYN6Sn+2Fln2bZcQ+gSRckVZAc6URNn2QaX22uTeS9pveQk5yZnLjcYb/dQo6U1oIYZEFMDhry6UTTh/S4eZtY6UUTjvIi4EzCltP8XNGZta97m5NcvzAjQnPW40R+LTAy0UOzLB6VeFL9kwp1qojrF8kguVYDjqxKY1p+zyLgbMlJZx99qAS8BiDkVYz/6iBS08v/jQh5Bju1xKNl7iygRE69EXcmW+uSr6C/z9Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=INXgJrUlaR9ZdoUzhg3IxFws5IhDK6J1VFpxKPE2DTw=;
 b=kn5R/7d4OXNKL15ao7vvK5d68Ofg/JCLS//dY+LJWSV4GpMVvLB0FbqMiIts/eTGFph7PXm+7ciYbmkLHSyhS4CBrFqJoQjx/aV8ORDak2gsRQoRtOCD2WxYWoVPOyVxi7NSZPPzyYyeGds2FGt12gi1PmHgVG2NYmpa1gIyNtZ4kLx1/6NThQya0EEGWRDYnmHOQkyAOYieQVOdPUdrN+DkjRvz7bzia/RnwHmchfv+Jlx7ofrzEgaWX4c4ipEW9wKcQHnshYRWO+htDi7P4XpDQPMFbrs5HSqwrsA0rZLcgCo/6NWoOl6Xw4XY1WTYIhB84AQ2lAYXp17Jqb9JmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BN9PR11MB5516.namprd11.prod.outlook.com (2603:10b6:408:105::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.18; Thu, 9 Nov
 2023 06:36:38 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb%4]) with mapi id 15.20.6954.029; Thu, 9 Nov 2023
 06:36:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Use helpers to get dsc
 min/max input bpc
Thread-Index: AQHaETI/iuVw59uUdEqwxarnghLddrBxi5fw
Date: Thu, 9 Nov 2023 06:36:37 +0000
Message-ID: <SN7PR11MB6750516CC61BEBD462C16FC8E3AFA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
 <20231107041740.3718419-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231107041740.3718419-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BN9PR11MB5516:EE_
x-ms-office365-filtering-correlation-id: 94aa9edd-0518-462c-41ab-08dbe0ee39fa
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y/ZjajiQ/x3zmRu9b8OsdS15pWJugmDQHBUy51iMAJ8MQIlOB7yFVN3iSYZxohPEwgPGSplNmvGI75DKyLnANeo0rawAckzqgPJwIb7xm/JW4s54MY8Xz00otDsHAR5ldOGjmAJ+0ucJTqYJoURhyEklJibhooZjN+pnwzfDysReIKxqYq8iS40YcIy5/FslePo/+CHh++VWtuUwtQec8MJk+y8rlZ2qgvVFnFXALdDAX6fDqJX26tP7nrUibtsWRIFGVj8XOZglSx+cQrQkJcaTOSxhs/p4yTIOEROsYmNp4YImmd9pdOZfCU3UGnRHYx2daXW7u2a1OJIoz0njyFXUbgIEU8+rrMvnz/ptmeqCuGjH4fCKIxJJ1rtM2nWIXrszljdwsntdBbTv/AyncYvPVJwWnjABB5CZF8843PBjKTg5vWIgbHWBomZo2BT5wxKJHpBxwnxMIdPdpt/M0YiwdoFSxQXvMc2566F9vQacMDwAz5vH4GOtgvqqPOGdQJMuchoJYbhWga5gn/XNRSnH3KHTkHb4pI/FeKJtXBkxt5dxmCIV+o3s1XMpbwN/5qfO/CLT834E78OOC5IcpXosoo4rFF+Fpprn2CQnKcmY4saT6JrGQCxVdTd8eNzK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(396003)(39860400002)(366004)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(71200400001)(478600001)(2906002)(107886003)(41300700001)(26005)(38070700009)(38100700002)(86362001)(82960400001)(122000001)(83380400001)(33656002)(9686003)(7696005)(6506007)(53546011)(76116006)(66946007)(66556008)(66476007)(64756008)(66446008)(110136005)(55016003)(316002)(5660300002)(8936002)(8676002)(52536014)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m4PtyIPHmUi2mwIhgjivzqChWT3ReCLUPWtK60rgZ/V+fD+T2c6wnRjdlodm?=
 =?us-ascii?Q?CTX0XueBkzwG2WyfdysDPO96DWfUyeqcLLxzNutCARxZCQ1kiwAoFt96lZse?=
 =?us-ascii?Q?F6Cyh44xABaKpOAaAjud4fIZIIJA2P7euZbzentTiKubfJaR7wSWAeskrOF4?=
 =?us-ascii?Q?2zkberd0VfyMcXLU8fQbtgZeUPlpGp+L0Gk85oFTcf2dlNbqHUmgDbMuf8SZ?=
 =?us-ascii?Q?Ikfgs6zV0MA8pzdUCDfplLCUcNXhQwoiqXzS+XqWQ/W3uj3zYUOMA066Zkak?=
 =?us-ascii?Q?yBwX6TbBHKzA5E+4iabV2nE48lpyDNjqvW2zjeRb90q5kcKsNF6oNi8SgOYm?=
 =?us-ascii?Q?UoFWH1bGJNV2yDEATROyDf1WDg+RJgH2DDbW8592EazATStfzsFsuCUwRA5K?=
 =?us-ascii?Q?QLLTkeVSC2VcC3I7YvZU6wk01ugQdO9zwc8+QwGNv28kGBavSCDLnlV8rqHK?=
 =?us-ascii?Q?pzWGPdp5NpHfR0NfVolGnO/yJSF++pc0snhFpo5Rk1CjIl2NzDsg2GeLDUgs?=
 =?us-ascii?Q?aVlSQKL/iJtZbi2v1bHlsRVX6BZFPW0Xx3P60V+ljqlWKmf9QUUIqrWEtQ3B?=
 =?us-ascii?Q?ioA5L21PZupX+pTULsEoLMh9Qtn3ztBwg52cEzW+CumEa6i1dLOtaDJ6Km5p?=
 =?us-ascii?Q?CCv/vDtcw5C2i45+QGTj2EEd+MNAkoGbhbhCkzSoSH6zJMKBFfdRPG/FB4cb?=
 =?us-ascii?Q?rJK+19u4VeEoRIjmb0NKAxKr9UQOP4fi+oxTaYcR/HgbgprP4lWNWZO/j+6J?=
 =?us-ascii?Q?KH56jhBhHZu1f0tQsU+88xHhmwzTZFe1e1vTjBIS0U2KFEt7UaKhHrx33Au7?=
 =?us-ascii?Q?ifxuz480KR3x13/LWF0cTzcZ4fwC55YHhO968Cp2wDl/PSnmWF5HTWHuyF3O?=
 =?us-ascii?Q?LuQa6GlGBnspqXzH1gP1MwvVtMpk5ap0ZWzVX4wlX/jRJwSm508iHbcLdSek?=
 =?us-ascii?Q?AyY92Y3JXaCSYPE++TVFA3EM8bh9JCcfSEtxEmDlpmf/89SFHeWLkVsqRFDw?=
 =?us-ascii?Q?9JqhvXHtCN7RHBTORsw9WbDLfjC4seF1sHBLUuILM0aGCk9e83VTkc3YjQ2P?=
 =?us-ascii?Q?g3j4Mu1PU8PLG/YgeipDq8Ob/fz77vQm4cZLQVQkGlH05uM4OfhBK/9inpXC?=
 =?us-ascii?Q?fS0NuedjzrN0Os1Cxkvz9KfsBTzTFfmQOf7swn8I+ayLWj1834X3Xrv6GbIx?=
 =?us-ascii?Q?UlB3r3RxJSu5r/O71pETZFIYSbT9kEhpkC9N5bmLqV1ZFQH4iTclkPOzoKPD?=
 =?us-ascii?Q?LQFI8BX9gwz6SOf3j8OkuKR1wXAkWD75Ul7DO+cNY3F3jTs6gDNExR8lyMgw?=
 =?us-ascii?Q?L7y02aTJEKkrb5BwgQqy3cWAOBTa9hr9MBA23PCcSFJbGR24yvMzP4G+9/CM?=
 =?us-ascii?Q?96i9cLcufcsQc4ip/5q2Oov+Y3Ax3iMbTCFeTntzAutRw5SwyRgvSUDGDT2t?=
 =?us-ascii?Q?Dg7Omw6wGu+jg81Yi3+5dpvei0yq4XcBeck98eRi9PTY4xzYJaweXghIDIGJ?=
 =?us-ascii?Q?1HUXiSkuPNffNoWjFI2M9vCDn7qyuam9/UYLJTSHcvDLP40v5FBGoUoKV7wW?=
 =?us-ascii?Q?ckZ+vhlsyMMTs2Iu+tit7dC+sLPNRaT/r3ul3+bn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94aa9edd-0518-462c-41ab-08dbe0ee39fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 06:36:38.2167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MNvz4iuGLZJnkyufg6cq65CBnNhYXXF0yxjjRJUFF5paIXikYa6CXWOt5Biz3GeYIgRHtv/3Ec3NcQLqGUywyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5516
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Use helpers to get dsc
 min/max input bpc
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Tuesday, November 7, 2023 9:48 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Use helpers to get dsc
> min/max input bpc
>=20
> Use helpers for source min/max input bpc with DSC.
>=20

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  2 --
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++++-------
>  3 files changed, 6 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5adab761f2e8..abc718f1a878 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1566,7 +1566,6 @@ intel_dp_compute_link_config_wide(struct intel_dp
> *intel_dp,
>  	return -EINVAL;
>  }
>=20
> -static
>  u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)  {
>  	if (!HAS_DSC(i915))
> @@ -1946,7 +1945,6 @@ static int dsc_compute_compressed_bpp(struct
> intel_dp *intel_dp,
>  					   dsc_max_bpp, dsc_min_bpp,
> pipe_bpp, timeslots);  }
>=20
> -static
>  u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)  {
>  	/* Min DSC Input BPC for ICL+ is 8 */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 484aea215a25..53e88c00900c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -164,5 +164,7 @@ intel_dp_compute_config_link_bpp_limits(struct
> intel_dp *intel_dp,
>  					struct link_config_limits *limits);
>=20
>  void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector
> *connector);
> +u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915);
> +u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915);
>=20
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 7b4628f4f124..d32e5258e1ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -194,18 +194,15 @@ static int
> intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] =3D {};
>  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> -	u8 dsc_max_bpc;
> +	u8 dsc_max_bpc, dsc_min_bpc;
>  	bool need_timeslot_recalc =3D false;
>  	u32 last_compressed_bpp;
>=20
> -	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> -	if (DISPLAY_VER(i915) >=3D 12)
> -		dsc_max_bpc =3D min_t(u8, 12, conn_state-
> >max_requested_bpc);
> -	else
> -		dsc_max_bpc =3D min_t(u8, 10, conn_state-
> >max_requested_bpc);
> +	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(i915);
> +	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(i915);
>=20
>  	max_bpp =3D min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
> -	min_bpp =3D limits->pipe.min_bpp;
> +	min_bpp =3D max_t(u8, dsc_min_bpc * 3, limits->pipe.min_bpp);
>=20
>  	num_bpc =3D drm_dp_dsc_sink_supported_input_bpcs(connector-
> >dp.dsc_dpcd,
>  						       dsc_bpc);
> --
> 2.40.1

