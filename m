Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B28889317
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 08:20:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E81310E23F;
	Mon, 25 Mar 2024 07:20:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hE+5AMjX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A0E810E23F
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711351234; x=1742887234;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NQfHjX4mm0Dq2rwgEiLC1uwyzI5Issil6HX8Td8o5yE=;
 b=hE+5AMjX5c4/ahR1l+DFr3DfaKnDRGJUx1QuGiyjWulVU2924JQBa0hD
 fgkIPxc9P8FSc49hIYYiZ2gcmkj1u2Wq/OI4baDyyXS4/npQcXB2TQxHi
 /eGMBY6AClRUGPsUz+4O90i84QoDCSSE3NoGqnWHwH4ZaxXS5OYOp342y
 SLw2aXpdoy0c6+yuvFVNFPdwOUZ3ZGMr9ZzGkf81IVL7RTfvy+1Dvmjmh
 lbdhdIQXGGvFY93jgOAgLIRViMj+8dYfOJfC/QQX/ITh0gupKVs6nYqxw
 jMWj2NXE7mSoFeu6Lyg+rLbzJj5JHzo8OvLr9exIAVVJQxpwhVDfMztwe g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="23787791"
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; d="scan'208";a="23787791"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 00:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; d="scan'208";a="15481822"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 00:20:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 00:20:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 00:20:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 00:20:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 00:20:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cRh5/5uL/3LJs4iYa6nSPyTOHMkfDeKIQCYLxF67AMBy5+Oj3Q7ry9xhItuHA+oWVwBfFpOzCpMbH3q/RWhEN/PHKX4sop3D/mL+yW9J3AASBDB4ugV2KPatudSACBuTgixNhX1OKEAbb2hQbK9aj+XHQ3svSaV0d3PlwuhYw2nkcWomsTXfGdJIfmGcQpz6RfFLYisSsTSmKKq7Gd3DD7ASsNuhkZmU9REHoVYCO9RlgID/FrzsKcBxJ02cLrgQ4rHeFFb0gUvHiEaGqTHW3w52hCsw8XcfjFrydljEOidkES8j0yxSRWcigcgthE4z+t5431HE5g4VK8oTHjKleA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1VMSbETCJx3vRTrYveAW/W86/haqDJYkQlQOlaqHQfY=;
 b=iocNon1q5GIOnRvYOsUSf9FkR1YrNjOCWpYkfJIcuI3eNfdFrLql0Uw8fDEe4D7HE0g7pm6Yumz8ieF4KoeTKx8GpX/u/VFdoxawpmVf03VJjWsv0z5IJODiIjH8nGnBJVwz6WcdvBl77ULK+E2dX3VUeDvCkV41tIp2i+K9hAMIv8LOMSTKbuw09ILg8e5eOoTi8iDnmnqX3YH4zJwOMzqkQEa/VGR1tZwxHMXpPnWksBZtZL2wJoMf7XRsIN+CamwEyHE43O1Qcwp58GQAN9UabAbsaKFvrViPqvl8k104MTJmWK08dVbhOVMR2DRtqBBNB9OJ/DBmXMdtt3XKsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by PH0PR11MB5950.namprd11.prod.outlook.com (2603:10b6:510:14f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Mon, 25 Mar
 2024 07:20:28 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833%4]) with mapi id 15.20.7409.028; Mon, 25 Mar 2024
 07:20:28 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 5/6] drm/i915: Handle joined pipes inside hsw_crtc_enable()
Thread-Topic: [PATCH 5/6] drm/i915: Handle joined pipes inside
 hsw_crtc_enable()
Thread-Index: AQHadS07sucKOlRVRkC94E4qFqGN3bFAyGuAgAdWpKA=
Date: Mon, 25 Mar 2024 07:20:28 +0000
Message-ID: <PH7PR11MB8252E7A3BCFF8770AC7EC41C89362@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20240313095949.6898-6-stanislav.lisovskiy@intel.com>
 <20240320151505.28576-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240320151505.28576-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|PH0PR11MB5950:EE_
x-ms-office365-filtering-correlation-id: be84aff8-9b76-4d2a-dca1-08dc4c9c0c7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qdg/MGiTmWokcPGBOqZbIRmLkBAVDXVqLjtxr2kKJeMfWAyL8sX+/YPMg08JSKFQJmFh8jHrZbo1WdVrFsqQKK1aE7BkbH1wAv8jBxBoZCXQaAHQ3aEzXHIH00Y7iAyhqwy4Or9Js+nhkLd5VJkeilXkqV/ZRZZUdU+FP4FlTiBqo9IJ0FWUCJyklg2vSnfk2U3OefOpGN07HkiE/5ccxmsDy3mDtYWMiCetOjxRpK+StIcPXeMtK/RwJ+BigVcKtdTQ/YasfDlcbuX74V/5Xfr8otem8X2VWsgXW+fW4cIO+SWapz7ramHYPwwXic2+AQK2dF+yfCmfg/tgrqVU7M30PavE5+IDUThRIrmVkyiLPFFTeKZUwBHRVsF6dJiVDysoNGNTP+eh5GxpvNQ0Rutu5Gs0dRnMURm5S8YeQigyKzL3OZosxAmpqdcyaYbzzpo0TUKQDT0r5cGfv/yq27N78OHnb7ogPHFTnASd94wS5cZIrt3xMfu7h0IYdVTGxmQ5FhtuSawKLF1NPfSuG1W/oBJBmWIxEtNX8g9Te+o0hf1i3v+8valpiYfL0dpZ4V9jXUxuYFPPRB9Vt4CeAUBQ/TxnCQUM51ctkrC3TMFe1v2cm3Ffx0FrEhbOBvHlJSCS1zt9o5nf70YPHIqy6GK1xHcQ1J/NDf+6S+rbiNgSNykO7P8bWcnowauhGVal9ZNDAZkc/ClhI1XVSb4ceQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BIu29YP+Z/HhOKp7Py9c32zxxqXGbYClMxsl+1KaPG66zGL+F6o60n6sX82y?=
 =?us-ascii?Q?MhtVgjTTEQ9Q6xZ8GPJT30rsM5/xxx4DL+xUkuxL3PFy651vk3/b4OITHky+?=
 =?us-ascii?Q?xPRdpmZ0grjnWMUmO1Mh5Jr1zqeYyrqCp7XLihBbxsxXNFcUmip0BU9RgkoS?=
 =?us-ascii?Q?N2R+fSeu3Yvn3A8KFmUhKbP6fwiyG5lKYg7eQzI5QwRJuE4j572/OjG7lxoq?=
 =?us-ascii?Q?weLwdnnqNF7U4KQLiyJ6Zm4wnkF14nA2FKFSBwNnVcQ6x4swqVUgwoqcPCRI?=
 =?us-ascii?Q?rCWWG3Whl3j2u7rwR9ZGAU8gfdhIJJ0W93Nkefm+8gPmbKvS1vS2jdBz5v4z?=
 =?us-ascii?Q?ETNqW68GjW3qQfb42Sn4MWXoEAEfCCzJ3C7bZ20mL4AWyr8A276Chngef5da?=
 =?us-ascii?Q?uXFcuHl64HrYgQQplTalplNH6ABCWM0v+tx8EQ2uMrfxJovKOBCg6HYBbDiu?=
 =?us-ascii?Q?Zm1sQZZ8LbiZdT73L5X47JHU0W/BFzt5U/s1xB7f6QRXYEErpwb1esbEklhr?=
 =?us-ascii?Q?Skth1s1XVR9fWd4ZVi7XdGZTCUfPbTVXuJsotlmfe3KLjca0Nbhm+JiQ5Af4?=
 =?us-ascii?Q?TqKewtkwM4ERTYzJ4ua78OmrFmAVpl/EpuiHW+AaScuRTp7Wu/1rcsBVJfKS?=
 =?us-ascii?Q?2sl0DBVfrBCXHsERZPjpoWTcOBV/jnxOxOVCA79/E1RjMFoeBYOeqefwNW8q?=
 =?us-ascii?Q?O6SDA+QZ7xB2sn3rW2hwHsed0qpfhAFZ6Ziqhsb5lBHevCexxDWgcv4vIYAJ?=
 =?us-ascii?Q?DoYUhWVeHa+UhBXEH6+we8YQPD1rI/aLwuSMpvTKiSDVRhoGQfJtC7TMCWVD?=
 =?us-ascii?Q?H6FOKyqtqjlj3ZRpzL9w3HPWgThtszJ0+9+GsqJQOTCMc2qplBFL8Nq1TdiP?=
 =?us-ascii?Q?n3czttgmwHbzY0jM5GVjFvjUFXjhB6t/2eLH6OJkoaTXqhIqXn3ace/Jst+G?=
 =?us-ascii?Q?BDsu6O3G18YThwYipWTSzrDz5mgJ5Ql5IqZM7hx9/mQ6RukgHMCDNxdYBFXs?=
 =?us-ascii?Q?RYRkWP01wHuwxGuJgHxYis3Irnc6Sf/2+YbIF2MR/PjAVCPC/Md9M6/+mhR8?=
 =?us-ascii?Q?sis3kVhVBKG5MUPPDrt65b3ooR8a8jRWBczZyhTJuKn1rCzcK0MOhV51eClf?=
 =?us-ascii?Q?f/vdcx0yrWRQvlosNDSXlxdeEynUDcP27C8hkOEPbVxajFYM5PlObbZQXv5F?=
 =?us-ascii?Q?+ou5BKq83vk6PEWIFLEgoRWHsWgwVP1N0RI5umU6KPyq38WNUgQBxkHLsIwy?=
 =?us-ascii?Q?eZhd7I7VXIdW17yb2erMe9dzxPtnmOonkA01RDakPzbfMfUdafw0t06zxPmQ?=
 =?us-ascii?Q?IlfAK7gJEB6tCRox4ypzgQSScdmvbaLNYFhjZHf6KJHI5teTLfCrVwBkMjKT?=
 =?us-ascii?Q?rHpDpMEUzacUHT65Y0104seXat+R5nyMPAz87X8bRtTcOuDVPoXRLiseDZdr?=
 =?us-ascii?Q?cNm+QUI2rNJ1hbxmQJ072r9/Y5xMuOUNSG1U9n2eUm8AawsJ2rUHFP9VxIni?=
 =?us-ascii?Q?VjMZGJARc7knoMl9iUavFSAJTEnxBqWgJ8pw7RSc8mdoHuegIlXKc/thP+LZ?=
 =?us-ascii?Q?aWCVwBFOUDxQNwtksnJmcg8VIwWSr7ZeSZ3zJchCC3+eLn0/WzaajvwceaUs?=
 =?us-ascii?Q?uKApwGtv87CunGk0G+y9F9nNgXSnIv36rkI39CQ8svGm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be84aff8-9b76-4d2a-dca1-08dc4c9c0c7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2024 07:20:28.7894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XarFr234ZOx1mchLHvFjmDMq/GN1bs52wZOEmkRZ/3bhy77VIv0DHKXFrjWcF1nVvXhOIdBAsr0vXGeiHXdkE63T1ToJ720WDI0IEbwvrUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5950
X-OriginatorOrg: intel.com
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

Thank you Stan. Rev 14 works.
Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>

> -----Original Message-----
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Wednesday, March 20, 2024 8:45 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com; Srinivas, Vidya
> <vidya.srinivas@intel.com>
> Subject: [PATCH 5/6] drm/i915: Handle joined pipes inside hsw_crtc_enable=
()
>=20
> Handle only bigjoiner masters in skl_commit_modeset_enables/disables,
> slave crtcs should be handled by master hooks. Same for encoders.
> That way we can also remove a bunch of checks like
> intel_crtc_is_bigjoiner_slave.
>=20
> v2: - Moved skl_pfit_enable, intel_dsc_enable, intel_crtc_vblank_on to
> intel_enable_ddi,
>       so that it is now finally symmetrical with the disable case, becaus=
e
> currently
>       for some weird reason we are calling those from
> skl_commit_modeset_enables, while
>       for the disable case those are called from the ddi disable hooks.
>=20
> v3: - Create intel_ddi_enable_hdmi_or_sst symmetrical to
>       intel_ddi_post_disable_hdmi_or_sst and move it also under non-mst
> check.
>=20
> v4: - Fix intel_enable_ddi sequence
>     - Call intel_crtc_update_active_timings for slave pipes as well
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  45 ++++-
>  drivers/gpu/drm/i915/display/intel_display.c | 179 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_display.h |   7 +
>  3 files changed, 137 insertions(+), 94 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 290ccab7c9ee8..9128b82a49c31 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3366,15 +3366,28 @@ static void intel_enable_ddi_hdmi(struct
> intel_atomic_state *state,
>  	intel_wait_ddi_buf_active(dev_priv, port);  }
>=20
> -static void intel_enable_ddi(struct intel_atomic_state *state,
> -			     struct intel_encoder *encoder,
> -			     const struct intel_crtc_state *crtc_state,
> -			     const struct drm_connector_state *conn_state)
> +static void intel_ddi_enable_hdmi_or_sst(struct intel_atomic_state *stat=
e,
> +					 struct intel_encoder *encoder,
> +					 const struct intel_crtc_state
> *crtc_state,
> +					 const struct drm_connector_state
> *conn_state)
>  {
> -	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	u8 pipe_mask =3D intel_crtc_joined_pipe_mask(crtc_state);
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, crtc,
> pipe_mask) {
> +		const struct intel_crtc_state *new_crtc_state =3D
> +			intel_atomic_get_new_crtc_state(state, crtc);
> +
> +		intel_dsc_enable(new_crtc_state);
> +
> +		if (DISPLAY_VER(i915) >=3D 9)
> +			skl_pfit_enable(new_crtc_state);
> +		else
> +			ilk_pfit_enable(new_crtc_state);
> +	}
>=20
> -	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
> -		intel_ddi_enable_transcoder_func(encoder, crtc_state);
> +	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>=20
>  	/* Enable/Disable DP2.0 SDP split config before transcoder */
>  	intel_audio_sdp_split_update(crtc_state);
> @@ -3383,7 +3396,22 @@ static void intel_enable_ddi(struct
> intel_atomic_state *state,
>=20
>  	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
>=20
> -	intel_crtc_vblank_on(crtc_state);
> +	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, crtc,
> pipe_mask) {
> +		const struct intel_crtc_state *new_crtc_state =3D
> +			intel_atomic_get_new_crtc_state(state, crtc);
> +		intel_crtc_vblank_on(new_crtc_state);
> +	}
> +}
> +
> +static void intel_enable_ddi(struct intel_atomic_state *state,
> +			     struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state,
> +			     const struct drm_connector_state *conn_state) {
> +	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> +
> +	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> +		intel_ddi_enable_hdmi_or_sst(state, encoder, crtc_state,
> conn_state);
>=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		intel_enable_ddi_hdmi(state, encoder, crtc_state,
> conn_state); @@ -3391,7 +3419,6 @@ static void intel_enable_ddi(struct
> intel_atomic_state *state,
>  		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
>=20
>  	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> -
>  }
>=20
>  static void intel_disable_ddi_dp(struct intel_atomic_state *state, diff =
--git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index a1eccefde9f09..af029577e58bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -794,7 +794,7 @@ intel_get_crtc_new_encoder(const struct
> intel_atomic_state *state,
>  	return encoder;
>  }
>=20
> -static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
> +void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev); @@ -
> 1593,24 +1593,6 @@ static void hsw_set_frame_start_delay(const struct
> intel_crtc_state *crtc_state)
>  		     HSW_FRAME_START_DELAY(crtc_state->framestart_delay -
> 1));  }
>=20
> -static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *stat=
e,
> -					 const struct intel_crtc_state
> *crtc_state)
> -{
> -	struct intel_crtc *master_crtc =3D intel_master_crtc(crtc_state);
> -
> -	/*
> -	 * Enable sequence steps 1-7 on bigjoiner master
> -	 */
> -	if (intel_crtc_is_bigjoiner_slave(crtc_state))
> -		intel_encoders_pre_pll_enable(state, master_crtc);
> -
> -	if (crtc_state->shared_dpll)
> -		intel_enable_shared_dpll(crtc_state);
> -
> -	if (intel_crtc_is_bigjoiner_slave(crtc_state))
> -		intel_encoders_pre_enable(state, master_crtc);
> -}
> -
>  static void hsw_configure_cpu_transcoder(const struct intel_crtc_state
> *crtc_state)  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1646,90 +1628,103 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe, hsw_workaround_pipe;
> +	u8 pipe_mask =3D intel_crtc_joined_pipe_mask(new_crtc_state);
> +	struct intel_crtc *pipe_mask_crtc;
>  	enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder;
> -	bool psl_clkgate_wa;
>=20
>  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>  		return;
>=20
> -	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> +	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm,
> pipe_mask_crtc,
> +						 pipe_mask)
> +		intel_dmc_enable_pipe(dev_priv, pipe_mask_crtc->pipe);
>=20
> -	if (!new_crtc_state->bigjoiner_pipes) {
> -		intel_encoders_pre_pll_enable(state, crtc);
> +	intel_encoders_pre_pll_enable(state, crtc);
>=20
> -		if (new_crtc_state->shared_dpll)
> -			intel_enable_shared_dpll(new_crtc_state);
> +	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm,
> pipe_mask_crtc,
> +						 pipe_mask) {
> +		const struct intel_crtc_state *pipe_mask_crtc_state =3D
> +			intel_atomic_get_new_crtc_state(state,
> pipe_mask_crtc);
>=20
> -		intel_encoders_pre_enable(state, crtc);
> -	} else {
> -		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> -	}
> +		if (new_crtc_state->shared_dpll)
> +			intel_enable_shared_dpll(pipe_mask_crtc_state);
>=20
> -	intel_dsc_enable(new_crtc_state);
> +		if (DISPLAY_VER(dev_priv) >=3D 13)
> +
> 	intel_uncompressed_joiner_enable(pipe_mask_crtc_state);
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 13)
> -		intel_uncompressed_joiner_enable(new_crtc_state);
> +		intel_set_pipe_src_size(pipe_mask_crtc_state);
> +		if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
> +			bdw_set_pipe_misc(pipe_mask_crtc_state);
> +	}
>=20
> -	intel_set_pipe_src_size(new_crtc_state);
> -	if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
> -		bdw_set_pipe_misc(new_crtc_state);
> +	intel_encoders_pre_enable(state, crtc);
>=20
> -	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
> -	    !transcoder_is_dsi(cpu_transcoder))
> +	if (!transcoder_is_dsi(cpu_transcoder))
>  		hsw_configure_cpu_transcoder(new_crtc_state);
>=20
> -	crtc->active =3D true;
> -
> -	/* Display WA #1180: WaDisableScalarClockGating: glk */
> -	psl_clkgate_wa =3D DISPLAY_VER(dev_priv) =3D=3D 10 &&
> -		new_crtc_state->pch_pfit.enabled;
> -	if (psl_clkgate_wa)
> -		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> +	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm,
> pipe_mask_crtc,
> +						 pipe_mask) {
> +		const struct intel_crtc_state *pipe_mask_crtc_state =3D
> +			intel_atomic_get_new_crtc_state(state,
> pipe_mask_crtc);
> +		bool psl_clkgate_wa;
> +		enum pipe pipe =3D pipe_mask_crtc->pipe;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 9)
> -		skl_pfit_enable(new_crtc_state);
> -	else
> -		ilk_pfit_enable(new_crtc_state);
> +		pipe_mask_crtc->active =3D true;
>=20
> -	/*
> -	 * On ILK+ LUT must be loaded before the pipe is running but with
> -	 * clocks enabled
> -	 */
> -	intel_color_load_luts(new_crtc_state);
> -	intel_color_commit_noarm(new_crtc_state);
> -	intel_color_commit_arm(new_crtc_state);
> -	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
> -	if (DISPLAY_VER(dev_priv) < 9)
> -		intel_disable_primary_plane(new_crtc_state);
> +		/* Display WA #1180: WaDisableScalarClockGating: glk */
> +		psl_clkgate_wa =3D DISPLAY_VER(dev_priv) =3D=3D 10 &&
> +			pipe_mask_crtc_state->pch_pfit.enabled;
> +		if (psl_clkgate_wa)
> +			glk_pipe_scaler_clock_gating_wa(dev_priv, pipe,
> true);
>=20
> -	hsw_set_linetime_wm(new_crtc_state);
> +		/*
> +		 * On ILK+ LUT must be loaded before the pipe is running but
> with
> +		 * clocks enabled
> +		 */
> +		intel_color_load_luts(pipe_mask_crtc_state);
> +		intel_color_commit_noarm(pipe_mask_crtc_state);
> +		intel_color_commit_arm(pipe_mask_crtc_state);
> +		/* update DSPCNTR to configure gamma/csc for pipe bottom
> color */
> +		if (DISPLAY_VER(dev_priv) < 9)
> +			intel_disable_primary_plane(pipe_mask_crtc_state);
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 11)
> -		icl_set_pipe_chicken(new_crtc_state);
> +		hsw_set_linetime_wm(pipe_mask_crtc_state);
>=20
> -	intel_initial_watermarks(state, crtc);
> +		if (DISPLAY_VER(dev_priv) >=3D 11)
> +			icl_set_pipe_chicken(pipe_mask_crtc_state);
>=20
> -	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> -		intel_crtc_vblank_on(new_crtc_state);
> +		intel_initial_watermarks(state, pipe_mask_crtc);
> +	}
>=20
>  	intel_encoders_enable(state, crtc);
>=20
> -	if (psl_clkgate_wa) {
> -		intel_crtc_wait_for_next_vblank(crtc);
> -		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
> -	}
> +	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm,
> pipe_mask_crtc,
> +						 pipe_mask) {
> +		const struct intel_crtc_state *pipe_mask_crtc_state =3D
> +			intel_atomic_get_new_crtc_state(state,
> pipe_mask_crtc);
> +		bool psl_clkgate_wa;
> +		enum pipe pipe =3D pipe_mask_crtc->pipe,
> hsw_workaround_pipe;
> +
> +		/* Display WA #1180: WaDisableScalarClockGating: glk */
> +		psl_clkgate_wa =3D DISPLAY_VER(dev_priv) =3D=3D 10 &&
> +			pipe_mask_crtc_state->pch_pfit.enabled;
> +
> +		if (psl_clkgate_wa) {
> +			intel_crtc_wait_for_next_vblank(pipe_mask_crtc);
> +			glk_pipe_scaler_clock_gating_wa(dev_priv, pipe,
> false);
> +		}
>=20
> -	/* If we change the relative order between pipe/planes enabling, we
> need
> -	 * to change the workaround. */
> -	hsw_workaround_pipe =3D new_crtc_state->hsw_workaround_pipe;
> -	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe !=3D
> INVALID_PIPE) {
> -		struct intel_crtc *wa_crtc;
> +		/* If we change the relative order between pipe/planes
> enabling, we need
> +		 * to change the workaround. */
> +		hsw_workaround_pipe =3D pipe_mask_crtc_state-
> >hsw_workaround_pipe;
> +		if (IS_HASWELL(dev_priv) && hsw_workaround_pipe !=3D
> INVALID_PIPE) {
> +			struct intel_crtc *wa_crtc;
>=20
> -		wa_crtc =3D intel_crtc_for_pipe(dev_priv,
> hsw_workaround_pipe);
> +			wa_crtc =3D intel_crtc_for_pipe(dev_priv,
> hsw_workaround_pipe);
>=20
> -		intel_crtc_wait_for_next_vblank(wa_crtc);
> -		intel_crtc_wait_for_next_vblank(wa_crtc);
> +			intel_crtc_wait_for_next_vblank(wa_crtc);
> +			intel_crtc_wait_for_next_vblank(wa_crtc);
> +		}
>  	}
>  }
>=20
> @@ -6626,12 +6621,20 @@ static void intel_enable_crtc(struct
> intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	u8 pipe_mask =3D intel_crtc_joined_pipe_mask(new_crtc_state);
> +	struct intel_crtc *pipe_mask_crtc;
>=20
>  	if (!intel_crtc_needs_modeset(new_crtc_state))
>  		return;
>=20
> -	/* VRR will be enable later, if required */
> -	intel_crtc_update_active_timings(new_crtc_state, false);
> +	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm,
> pipe_mask_crtc,
> +						 pipe_mask) {
> +		const struct intel_crtc_state *_new_crtc_state =3D
> +			intel_atomic_get_new_crtc_state(state,
> pipe_mask_crtc);
> +
> +		/* VRR will be enable later, if required */
> +		intel_crtc_update_active_timings(_new_crtc_state, false);
> +	}
>=20
>  	dev_priv->display.funcs.display->crtc_enable(state, crtc);
>=20
> @@ -6711,8 +6714,9 @@ static void intel_update_crtc(struct
> intel_atomic_state *state,
>  	 *
>  	 * FIXME Should be synchronized with the start of vblank somehow...
>  	 */
> -	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> -	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
> +	if ((vrr_enabling(old_crtc_state, new_crtc_state) ||
> +	    new_crtc_state->update_m_n || new_crtc_state->update_lrr) &&
> +	    !new_crtc_state->bigjoiner_pipes)
>  		intel_crtc_update_active_timings(new_crtc_state,
>  						 new_crtc_state->vrr.enable);
>=20
> @@ -6934,11 +6938,13 @@ static void skl_commit_modeset_enables(struct
> intel_atomic_state *state)
>  			continue;
>=20
>  		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
> -		    is_trans_port_sync_master(new_crtc_state) ||
> -		    intel_crtc_is_bigjoiner_master(new_crtc_state))
> +		    is_trans_port_sync_master(new_crtc_state))
>  			continue;
>=20
> -		modeset_pipes &=3D ~BIT(pipe);
> +		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> +			continue;
> +
> +		modeset_pipes &=3D
> ~intel_crtc_joined_pipe_mask(new_crtc_state);
>=20
>  		intel_enable_crtc(state, crtc);
>  	}
> @@ -6953,7 +6959,10 @@ static void skl_commit_modeset_enables(struct
> intel_atomic_state *state)
>  		if ((modeset_pipes & BIT(pipe)) =3D=3D 0)
>  			continue;
>=20
> -		modeset_pipes &=3D ~BIT(pipe);
> +		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> +			continue;
> +
> +		modeset_pipes &=3D
> ~intel_crtc_joined_pipe_mask(new_crtc_state);
>=20
>  		intel_enable_crtc(state, crtc);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 631218c954a47..9ace9b20f3b2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -312,6 +312,12 @@ enum phy_fia {
>  	list_for_each_entry((intel_encoder), &(dev)-
> >mode_config.encoder_list, base.head) \
>  		for_each_if((intel_encoder)->base.crtc =3D=3D (__crtc))
>=20
> +#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc,
> pipe_mask)	\
> +	list_for_each_entry_reverse(intel_crtc,
> 	\
> +				    &(dev)->mode_config.crtc_list,
> 	\
> +				    base.head)
> 	\
> +		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
> +
>  #define for_each_old_intel_plane_in_state(__state, plane, old_plane_stat=
e,
> __i) \
>  	for ((__i) =3D 0; \
>  	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
> @@ -493,6 +499,7 @@ intel_aux_power_domain(struct intel_digital_port
> *dig_port);  void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
>  				  struct intel_crtc_state *crtc_state);  void
> ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
> +void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
>=20
>  int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc);  unsigned int
> intel_plane_fence_y_offset(const struct intel_plane_state *plane_state);
> --
> 2.37.3

