Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFC6786739
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 07:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 186C310E485;
	Thu, 24 Aug 2023 05:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6857E10E103;
 Thu, 24 Aug 2023 05:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692856027; x=1724392027;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O7e7dXbuochBL/sJ+HmNITN3Fn2E/55qJc5CS7jjXEc=;
 b=ku2U7tQUXiZnS+9V1TSXivCO1AE8lP+ahSXlC6eJiyyVDFzUJMhq9lZ2
 uquuNaqvEyh63r06nfWzIltoGvNxNUMyLCATZlzPpjRHgn169gqKrr/5f
 pJ9fFDHT0lxcKGGdDgsgTzGbsIRNf0kjAOhMyktzD8njI6WErP+SDOVjP
 aob4Nw+Dl5/+zKCzmvws/V/K2FuTQBZCAVagCTY4jCof8qD9kdzmDCMwd
 42OMWZd8UKQeUCPYOyKz7jqe4RIXVmYSeJ6KBlpgTqsKl9Jeg8FAj1/8P
 P3iYYnr0A4WLWHFepghvAuWWmbm3eVM/lE7qrkkEwaigKgZJ4P8+Z1pEe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438282467"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438282467"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 22:47:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="806964746"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="806964746"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2023 22:47:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 22:47:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 22:47:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 22:47:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 22:47:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GziQ4WUlwSUhKSHQVapOOHPbwURkFLtjOxled5lSGBbrDunpmOkoYKrYRDlBt+RxYUkCRPhfYe85bMTFCtbYgYK9I0CqJwHuwwsHhSqOlmpY0hqNE8ODgWeyupk2vU4TpzP6U8GeGmMTELaI1TueYVcD5PxH//T8luYTqGFqoLUknd8IK1/JfzGmSpAIsLAmdbXUpK9yPm5GkuI6q2XA/QncSopRdxvTSHvUUlHDpSVRzclQnZP8mVinNGQvWRp5sMaEbqIS1FpHv2qElrVPrtXTNOpPCyRskwzM7j5q6feH/LNcLzXasZEq7Nh1xMmx3kbbqdd5u63pFXiYY+FDZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F9kPM/hm1dX18ztF3dObisSU+L3MJX+ilTwMv0G40qA=;
 b=ZHeQ0ekNMevkzXudwaIbT7IB68AwwnV07l98XG5yWYgnwifz9OgvoqF35lih+Xmaol2o2tC3QAq3V3/0HVpa/K+ge4cYnhs7cPZhCZVUF9sUe9COQQONFj+vtwnLkNhofaAgmU5zlMjx16RWqEQHELwi2EkRXKH8gK+75ui6EAc1VUSYsy6oY0ydOq5WpkjcDsvJlkUsnqpYqXXzu74I63SX2h/e8KiXiixeq6y4LKosSTvPjJPoAM2CjdsNZOhtwaa5yNujjUvJ7WSlFcFNqNhofGQVaoRm42CV4LpfV7aU/6KqsnChrvqQg9yCX/eYAruaZTnc1use8OJ1bFYazA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BL1PR11MB5287.namprd11.prod.outlook.com (2603:10b6:208:31b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 05:47:02 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.020; Thu, 24 Aug 2023
 05:47:02 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/42] drm/i915/tc: remove "fia" from
 intel_tc_port_fia_max_lane_count()
Thread-Index: AQHZ1eTK9+JC74vtyUWEA+yPQpPRO6/47kHg
Date: Thu, 24 Aug 2023 05:47:02 +0000
Message-ID: <SN7PR11MB6750F7365C05136DB4FBB519E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-11-lucas.demarchi@intel.com>
In-Reply-To: <20230823170740.1180212-11-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BL1PR11MB5287:EE_
x-ms-office365-filtering-correlation-id: cbd5d6a2-9e7c-4ef3-aa14-08dba4658a52
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kFzH7cfKYnKJaA7TEFEGZ0/Uxbh5YSF3t1jqhoaxFgCDEozsk5+xQZoe/bCQayKEK7gZqboJ1gpw8ILZx/wIECkRcPdPSxmzYT2zaG20rwwqAFWjVS9/epk2nyMjSIL35W7rjzhydq7zDn0TRtHnVytcGlfuBl325mbOfTnTKmO7NwmRUgEHveHU3m2xtwDDvzXq8RRoGrNLofkBDTBn3vT9x7aPyoLcY7iU1eJ4DSc/j219sCa29K8VfJqODM5eL6MA/e33Pz7uGb6n1Te9k/UWWyZy/RFhHZnzr2z9fAPw/5+8PM6TgHJGNl0NTScy5ybkLHwfriAxJc0wJTzLFzemdv+/GFD03AkVIB09L1+c22Iqh6rQ7JYliSUY08cPUqr/EdaWKItQ6caplfcdE4hETe0FrfCcVNcySWLoVaYd1NaUPtD10895wq4OJKwWcmuS12Ku5Mpskh3gC0ANO4vgOjHG0LahmF1aqNpVA1j4s9rI4H8grPLl6wrt2IvsKYcbAQraoDfJlHbhzw7xrUUvATpVU50bwW2k3rxKOTS4cfmTYue+6wBNyj3KrPtcQSGg5QXW5+Dllp0Kp+YnYHyzMQ73fcqvBSgSI1ZIq6U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(39860400002)(396003)(376002)(451199024)(186009)(1800799009)(54906003)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(316002)(82960400001)(122000001)(478600001)(110136005)(55016003)(26005)(38070700005)(38100700002)(71200400001)(41300700001)(86362001)(7696005)(6506007)(2906002)(9686003)(966005)(450100002)(4326008)(8676002)(8936002)(52536014)(107886003)(5660300002)(83380400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KK1sRNCuh0+f77jVSvNFbW8OFLzHYKmqH1N824IMeS042R7GpCqT/vC3fYVy?=
 =?us-ascii?Q?B9rD+xPBxZLHF8sF9dPldN6btiw+ag65ENSdDUsYtPPyCldHFlc5tNbUoUVT?=
 =?us-ascii?Q?23rn81ZYdcqnlDKtxRKCqRdGPmsXW7POixcL61EPUX9HfjHE0Xg1Di5qI5hz?=
 =?us-ascii?Q?aqjm2dxJlyNDK6Cpcl6bi+NtHkZ84D47JzRMXfhHyYjtTJAcJI6m62+xJGWU?=
 =?us-ascii?Q?ZiU7+8P4tLiagtzwGLx5KaUhrnRCrk/5BmaZd8XyxmxTP8BtdMYHNNCI+xhu?=
 =?us-ascii?Q?0rwYrRXMn2wnMqVg2rL0ACwyvQPZK0aigdiUODMXPh0e1sai55poYvgCGsPP?=
 =?us-ascii?Q?4f+MoavXKjwmlC84i4YP95bNpUFDVAeptO7q74fzsl5/0nfIt2tl2cwlS/gv?=
 =?us-ascii?Q?9zpLDsQ7gHK0ShDglU/69uZ9m/JtnKQkTuDjYjpQx9DYJLujpHwN2tCTjNSx?=
 =?us-ascii?Q?H2XQlBUQlTgI9HJLATnmGfkym5lF0LTA3yDp77nJW3WwAHhA44YTCGbqchtP?=
 =?us-ascii?Q?mATgIT6f9iHpMtZYoKtLpqfJa/fvjmKKnPN2h0jaOaYaWikRRo0F/OnNBnS5?=
 =?us-ascii?Q?guxodSVybRcffUnBywqDyWOzMKqOWj6x5cWrsVTmKRCbZH88PPaUjFH8m687?=
 =?us-ascii?Q?jQOMQ+heDnGEZ13QtpNhplNYxcDiADfrj4phHfIapM7cIuOCfMqtBEsbEf6l?=
 =?us-ascii?Q?nJ9V8txmie2qo00g1MNGbAIMSVZw0TmnjgDx/VuMtrVMTpUNKdz1Sl//vih7?=
 =?us-ascii?Q?qnxyT/44K3FG2AifRc1KninuqM0Q2+ICrvvcCHcAUUetGgl4Za6EfXiM5bBK?=
 =?us-ascii?Q?1JYGMnhPFV+YRcbv06xLoRxOmmD0NyTlXMGleftX9uaFqXKxGw+qV1RE3wa0?=
 =?us-ascii?Q?n/1UF6FCscMMT/FXVonxpXzo3TB7pk4j6LiNUz8TiNliLJt4qMxcB+VDMjAy?=
 =?us-ascii?Q?rILGX33m1jDbPKQhRlxjwSS3xS3TSl7xhmhYaOdDay745T1i7o7blfYq41bw?=
 =?us-ascii?Q?W2WlkI9bUjdXCzaR3H/JBQmmK37ZXHk6lDBYOOQm5N8XguPVcKxhhb2mHmh4?=
 =?us-ascii?Q?E61Av006TQkpbHXKbg3NHz/NtL3cKKPrJxe5E4DF1SvDs9XGIzsZf2LTej0+?=
 =?us-ascii?Q?Jrdal+NReO0xaex3fXWisCXk/UFOLaS7f0FAEuukQBbvPw9+BU0HhIGu/bGQ?=
 =?us-ascii?Q?jG684Vjr/oVcOVR3hViOqXJ7Of6zOZBvZu1G1y3FSyQ8NTw1TD6WtR04c/5q?=
 =?us-ascii?Q?mS4/gCut2N/fKkFu93cyZXBPsBeToUhcvNyhemsCma1u+gnU1LA1VzV+7rnx?=
 =?us-ascii?Q?Fuhc69b/o6Afe85BDV2wrEF3kdGLyEBm3fITpzgQyX6UywB23AO1uNsDppAT?=
 =?us-ascii?Q?WDg83ihhUfU1IVtPYddF68NH1+LKtmlc+HyNp72P6vq732e8uLQK9m4+8T5e?=
 =?us-ascii?Q?JWmEkxFmtBpuapet01o++UHnPbfzZ4gslcIdYk2fwNNOpphx+HBoDOlQvi4p?=
 =?us-ascii?Q?eqmBgljOVndBujlpN89CLorSnAmjqkhQH98tlIzixEmcuybq6z2AukM4p+UG?=
 =?us-ascii?Q?FLDUnzP4FrRr8yCWiSoTo+6B7C4WjCCooC1Y6GGj?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbd5d6a2-9e7c-4ef3-aa14-08dba4658a52
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 05:47:02.2276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2mNYyIOL4PpHJKVdOdcxF6QMr2BO+KN/P7cfAbfX5cU6OVKc3AOmBZsEMxGz3iAnBPUCKVyFn24SHql+OrklcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5287
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/42] drm/i915/tc: remove "fia" from
 intel_tc_port_fia_max_lane_count()
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
Cc: "Coelho, Luciano" <luciano.coelho@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Luca Coelho <luciano.coelho@intel.com>
>=20
> It is irrelevant for the caller that the max lane count is being derived =
from a FIA
> register, so having "fia" in the function name is irrelevant.  Rename the
> function accordingly.
>=20
LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Link: https://lore.kernel.org/r/20230721111121.369227-5-
> luciano.coelho@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_tc.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_tc.h      | 2 +-
>  4 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 26e256165b80..a5918bf30c31 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -58,7 +58,7 @@ static u8 intel_cx0_get_owned_lane_mask(struct
> drm_i915_private *i915,
>  	 * In DP-alt with pin assignment D, only PHY lane 0 is owned
>  	 * by display and lane 1 is owned by USB.
>  	 */
> -	return intel_tc_port_fia_max_lane_count(dig_port) > 2
> +	return intel_tc_port_max_lane_count(dig_port) > 2
>  		? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9f40da20e88d..84584864511b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -306,13 +306,13 @@ static int
> intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	int source_max =3D intel_dp_max_source_lane_count(dig_port);
>  	int sink_max =3D intel_dp->max_sink_lane_count;
> -	int fia_max =3D intel_tc_port_fia_max_lane_count(dig_port);
> +	int port_max =3D intel_tc_port_max_lane_count(dig_port);
>  	int lttpr_max =3D drm_dp_lttpr_max_lane_count(intel_dp-
> >lttpr_common_caps);
>=20
>  	if (lttpr_max)
>  		sink_max =3D min(sink_max, lttpr_max);
>=20
> -	return min3(source_max, sink_max, fia_max);
> +	return min3(source_max, sink_max, port_max);
>  }
>=20
>  int intel_dp_max_lane_count(struct intel_dp *intel_dp) diff --git
> a/drivers/gpu/drm/i915/display/intel_tc.c
> b/drivers/gpu/drm/i915/display/intel_tc.c
> index 43b8eeba26f8..3c94bbcb5497 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -337,7 +337,7 @@ static int intel_tc_port_get_max_lane_count(struct
> intel_digital_port *dig_port)
>  	}
>  }
>=20
> -int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port=
)
> +int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	struct intel_tc_port *tc =3D to_tc_port(dig_port); @@ -589,7 +589,7
> @@ static bool tc_phy_verify_legacy_or_dp_alt_mode(struct intel_tc_port
> *tc,
>  	struct intel_digital_port *dig_port =3D tc->dig_port;
>  	int max_lanes;
>=20
> -	max_lanes =3D intel_tc_port_fia_max_lane_count(dig_port);
> +	max_lanes =3D intel_tc_port_max_lane_count(dig_port);
>  	if (tc->mode =3D=3D TC_PORT_LEGACY) {
>  		drm_WARN_ON(&i915->drm, max_lanes !=3D 4);
>  		return true;
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h
> b/drivers/gpu/drm/i915/display/intel_tc.h
> index ffc0e2a74e43..80a61e52850e 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -20,7 +20,7 @@ bool intel_tc_port_connected(struct intel_encoder
> *encoder);  bool intel_tc_port_connected_locked(struct intel_encoder
> *encoder);
>=20
>  u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port
> *dig_port); -int intel_tc_port_fia_max_lane_count(struct intel_digital_po=
rt
> *dig_port);
> +int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port);
>  void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_por=
t,
>  				      int required_lanes);
>=20
> --
> 2.40.1

