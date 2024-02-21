Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BBC85CECC
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 04:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4EF610E3C2;
	Wed, 21 Feb 2024 03:33:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TNnykzL6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CDDF10E3C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 03:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708486423; x=1740022423;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=tsA3PHwFXe/qwsa2u0ZYg2dQ3JIZXxLd6GPH7XKVkF4=;
 b=TNnykzL63SQFpO79NqP0IRajE8Fni69Mez+h3z0KKtRFk5HLdwU0m39g
 slAqseJl8A28G/hacqeKGJOW/IJChmRQg2+jJJ0x9U2tgGQsah+0w+xBm
 AxpFGR/aDrNnZAxOY1I/GgYK2TRilPjqUCvojr425Gc7TsEBJV2M6ZMlm
 8Q9qn9N1WsuXa+Nx2nQZX/b44VOXE7ums9NiciNjabbljGCy66QhLepla
 Kk0lsdJlsJxWGck3j3t6SmqczdpE6cqGCStJt5qH96xsytHQgcw/gBjhv
 7oysXphBKbbdMcfFgPuQ96LJ4wNp+b6OMEy6+9lomE2J7ttNW32tzNexq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="20061456"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="20061456"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 19:33:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="913213700"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="913213700"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2024 19:33:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 20 Feb 2024 19:33:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 20 Feb 2024 19:33:42 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 20 Feb 2024 19:33:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gurzp4bUdUgaxYLYwZDwzHJ3LnSbBpy3fWnRkQHRx640LNEr9cJr/O1srSJbpMLW32o2gUiKGbcm4lE1kkngBKB1xyCePSQ2pgFzZ7KH+V7qS5Pu+5DXcTmCt+4V86JF35hxe8pCSmh8RHSi22+zKt3hpmdTXO155GM9y9E8DEhYQRS2gltNr0N+Rinripm7vLymAfrDs7Lb+E0pR4qyjjZqnQRY/QchWWpq3YjRuvwMFiMhYHW7ygtTmWLhtgWYuMnNB5VBMXh022L9blvmKEVZEiDUXD7RU6oL2crP0EQCB9hI6231q4sIrCqTOawvbhPhyrcSbNC+JX9wszZ5vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y8+5FntcJr2zhGhdGAsL5ojqj46S+WnYAGca2+RKf2o=;
 b=RvoKes9tDv6WoLI5jZJW8Qs8UPDZCu40wiiSxqhi4wAlRL6Ud0oJh2iS1beUaWNjWHrxAzvuZ/Y76Gyqw2sOmyhWuksIKHi8XD4m/6ztLoH35bBurNpJ72l5A0g7aSfDHmjcKS/310NHbTiuSCn73lkwaSFcXc3vIuTK0Lqcq8JqQOzaCQow8aXZp/qen4DVjscOd4JSkUQi0iev9p80xeM5ShDnRUxxzyWZAp0tgruwo3Z5hQ2JPnzX+RBTA3xXLW/1EAGkpGBfx+692TFqqV3CAu3V7D197FPHQyvussabfPwmEN+90VA38PDvAqLS6bfCDTMkE627flYRsoNFwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MW5PR11MB5932.namprd11.prod.outlook.com (2603:10b6:303:1a2::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.17; Wed, 21 Feb
 2024 03:33:34 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::7b7c:b25e:c600:a7]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::7b7c:b25e:c600:a7%3]) with mapi id 15.20.7316.018; Wed, 21 Feb 2024
 03:33:34 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Lee, Shawn
 C" <shawn.c.lee@intel.com>, "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 "navaremanasi@chromium.org" <navaremanasi@chromium.org>
Subject: Re: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
Thread-Topic: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
Thread-Index: AQHaZEmGJ0d5GTjwJkqohOvB+l9NybEUJOqA
Date: Wed, 21 Feb 2024 03:33:34 +0000
Message-ID: <0476ae7956bd6850be41d2fca76df9294f9f32d3.camel@intel.com>
References: <20240220220918.8310-1-stanislav.lisovskiy@intel.com>
 <20240220220918.8310-4-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240220220918.8310-4-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|MW5PR11MB5932:EE_
x-ms-office365-filtering-correlation-id: c5832f4a-b925-43e9-70c5-08dc328de203
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9rOKCjUSp2LvMTZOfD852GKG3XaBaKvt9rOz7KY7UG7kUXAotUo3FIekuBH95P/qWQrTp52ou7dxM9Gb1OghEAqpUz8ujPRVqieYQVlm6GrrjmFCahFTpMZ9dABPIpK4gRJ8uABmhthHku0oNNgJid/tRxs30PqB64cwlAivZMj1KNvAIVF/mYYQ1dYGUIvePKuULieSnq9xGT90TGeBOBHwmFzuflEEh1BHkvS8YKnCVLk4K36+mtE6U6+1rtUAbp4QKIMfX5O4E+QTxfwtyc3zdQBG95h2hEy5YyZYOU+nnuTbWGzhyreK3Q7dqgS5Zdp8CGbJuL7RU1s2csTFvFSEFyKMN9xKyNN+DAJzaOJ5COrOYbQSaB93d8oKZqy6ZYQSrGeIuoQ/9BzIo1UPTX5THOdfnWhxvxfh8GpTUvhYFgJ5MilKDGAtegJSHrVRqPyn5yZsRA33xnSVdSehiZWls0JWEGGnbOhFQvwhfUorNUwW1KNRQ460OcyNhKbSnCT+lBsPtmyKaW0HRFJq2HmjXET2tYUQuk59Qd1ANi3RZJuDI4WDGi21IF1zXr1VNE0n9I0JwgeagrGaau3pEh4qd4tqxHrrOpZHY2t2Q0Lc+ejNR0Lx2dH3l1kzJ7PJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-15?Q?WxGSvHjAzFWDXyngEbLHl+/+CX7kgS1bNInyydepXDA6rYByiL4tVZkIB?=
 =?iso-8859-15?Q?nohetErovAC/HnT/y/XNt9pUmBNNznWLWyUxjeGE8AXoGfTNOZx/wtloO?=
 =?iso-8859-15?Q?hHb38p1fnHsu9SRvd7sc60yKrY3j+VpW1XojfyvcfvTp5xMkcjBXV242Q?=
 =?iso-8859-15?Q?WTQnmTTy9PZOpqX0ZCS9UyP02DAcsSSJvY7ReZcxLC+GWCbHOqurI+PmQ?=
 =?iso-8859-15?Q?rhnRU2ruynzXDUrTO+ZdDf7YaH3QAdO73m28Gwf4OeRh37zkZMe2wXZx8?=
 =?iso-8859-15?Q?EnuRArs1U9H1XJw1tyB2F1M9B/zdNz3W45nO9Ga8uPV/kc8tVY52p4om0?=
 =?iso-8859-15?Q?lqLoo0ZrM9savnlHl+9k7htma8CkdmXc5R318kQ7XyrsJhfoVeHWGhHmY?=
 =?iso-8859-15?Q?vE3V6351ag1rAxUB282gwzBo6AZhRoLU0/xVm0Fz0YckmtiBX7kfratbl?=
 =?iso-8859-15?Q?myZ5dfUwlI061m2lTlUpVrhK8Si58pX+mYMM9U0kuTviYmd80rZPqMA7p?=
 =?iso-8859-15?Q?i7j38zeqQJh6hMsFcxdhCp8vf78nGz2c9RJ94EB3Q9/Wc2wdtpG3hPn/A?=
 =?iso-8859-15?Q?FRLQ9+MlVGxWQKby2Y+Q7bQzWYQ+36xEN9z2O8NjtYNccETV+RydrA23E?=
 =?iso-8859-15?Q?JnRSH6ft9aBdps2kGv2SFtWaNcqxI/T0wC8t0G99ajgMGyjxlyOR10w1s?=
 =?iso-8859-15?Q?4It3U77UCn38NsB/ptxQoQdn2Mp3oG/l4q3hPOBghAxrp1pO102Uz6dLi?=
 =?iso-8859-15?Q?hho7jG3mUr3LLWCPB/gZ5+CBYdOO7pwfu6Ijzedv8pHGajcogYvRjmFFX?=
 =?iso-8859-15?Q?qeUZEsYbwh9gmjrJ79C5qcNtJaGoW/b5x8pNcRTLpqNMTZG9SDR396R5R?=
 =?iso-8859-15?Q?+XocphV9X2XRap3VoQIUyg9CMfPZmX5HFBQIF8tLFs/BKcutmz4hnKkEJ?=
 =?iso-8859-15?Q?civTQhLzlZ6Q1xjMFVvLF1v/hdGOPpC5wkBjIjBfB7UVpDJ8t0pNcbSzy?=
 =?iso-8859-15?Q?AarJgzR+fyQi97AD5pfENjbVoD723ZriXY3o1ae8tqf5GlaqxeE0UuhJs?=
 =?iso-8859-15?Q?7cdYXjoCdr/WkXrZOxUfCRk8rFZdeZvkqmGaTyKJWzeYKOVOcteZeoN+2?=
 =?iso-8859-15?Q?9j4KcRz7FSKQusp6rfcqdR4S1zpcRdDSZOzHsD+ScI7w1kK+XJZx0ZUyw?=
 =?iso-8859-15?Q?XbsoImvWcgPlrUx9RRuqxZoJsxWUikChM4zD5YE/N3Cn63eybfcfDzcuP?=
 =?iso-8859-15?Q?sDXkREoxz5ExhUKfvt+DgS552DPVqCGzJw9xPca3NkLxJh1ut3cfTCV97?=
 =?iso-8859-15?Q?pQEo5cUbr9GgEofj5APYKyLhIqTh/QOKXv3pYujoXl2JrqaZ8A406bqEO?=
 =?iso-8859-15?Q?HCD1HVbBM9VXgwl6CShuOFF3j8QSqjLkhiMkwAZZ0/T86RS56OHi5IIc+?=
 =?iso-8859-15?Q?l//+CL1kSoM1tA5291aJqt0yel5eNLuVz1eAYGmTBR3wp4RxYWeUYPult?=
 =?iso-8859-15?Q?lVriWypgT4uO0cAsOsYwpmGrwTSCSIvWEpadKHjgc+0Jy/a/EiRdR1h+5?=
 =?iso-8859-15?Q?EEwoYj/VZbR8jXCf9BsXHjE0cqqH9TBTxg0sUNuS4CbRqFe7It2U8Atd7?=
 =?iso-8859-15?Q?ODSTvhJ7jxLGEW5Wvprp0vkTZTQcqxX6Lj/cwAAzlNJdGTF+FfkUXFXR5?=
 =?iso-8859-15?Q?3kob/zvJwEwOzufFZLqMdm25tetuODXmoid61ZWnogPqSiCqcF1wmzh3c?=
 =?iso-8859-15?Q?GTejQVAfzTyQfiU0CIVIECGxUD9xYtuoD89edV8er/urjyAIdv23rs=3D?=
Content-Type: text/plain; charset="iso-8859-15"
Content-ID: <D4E82E07579E654C8574A190870B275A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5832f4a-b925-43e9-70c5-08dc328de203
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2024 03:33:34.2942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 42a6CI/WBXLvq1TYSLAyBz+PzwyjpnSeDkCDolg/3uB4vUmWqhR+fk5eAikfJ7bzSa7BYyvh40QeMpTtaWIJavVlAaGhZA+i5CRpSAmXE2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5932
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

Thank You for the patch.

Do you think we need to revert:

9c058492b16f ("drm/i915/mst: Reject modes that require the bigjoiner")


On Wed, 2024-02-21 at 00:09 +0200, Stanislav Lisovskiy wrote:
> Patch calculates bigjoiner pipes in mst compute.
> Patch also passes bigjoiner bool to validate plane
> max size.
>=20
> Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 5307ddd4edcf5..fd27d9976c050 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -523,6 +523,7 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
>  				       struct drm_connector_state
> *conn_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config-
> >uapi.crtc);
>  	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
>  	struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
>  	const struct intel_connector *connector =3D
> @@ -540,6 +541,10 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
> =20
> +	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode-
> >crtc_hdisplay,
> +				    adjusted_mode->crtc_clock))
> +		pipe_config->bigjoiner_pipes =3D GENMASK(crtc->pipe + 1,
> crtc->pipe);
> +
>  	pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder =3D false;
> @@ -1318,12 +1323,6 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
>  	 *   corresponding link capabilities of the sink) in case the
>  	 *   stream is uncompressed for it by the last branch device.
>  	 */
> -	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> -	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port-
> >full_pbn) {
> -		*status =3D MODE_CLOCK_HIGH;
> -		return 0;
> -	}
> -
>  	if (mode->clock < 10000) {
>  		*status =3D MODE_CLOCK_LOW;
>  		return 0;
> @@ -1343,6 +1342,12 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
>  		return 0;
>  	}
> =20
> +	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> +	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port-
> >full_pbn) {
> +		*status =3D MODE_CLOCK_HIGH;
> +		return 0;
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >=3D 10 &&
>  	    drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
>  		/*
> @@ -1385,7 +1390,7 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
>  		return 0;
>  	}
> =20
> -	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode,
> false);
> +	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode,
> bigjoiner);
>  	return 0;
>  }
> =20
