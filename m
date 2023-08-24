Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4EE786738
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 07:46:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02DF010E103;
	Thu, 24 Aug 2023 05:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47E0A10E103
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 05:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692855974; x=1724391974;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=a5MMtLZUOD05c+93lyPwAwsnpO9LVVepAqQMGj+yF2A=;
 b=QK6Br/MQQHW2pRCLwpv3a0Vs6MwMS5lPebDimwnhO2DN7ViXIwwqono4
 QBKLKc4Fdw9ZLCHq52UJNRDtOiO6sQmjqYJBSoxk/v+C//wnC29WZivsH
 l0+gRxTI4WPvQ+v4euKY4r2qjFsRdGqABxKXBOKV26eiaQKrIGJN+YyPw
 YFodVUnfnw/mII4yFO7AOdDHyMYwz4HzlQ4KZBOP3Ds9bYfmXm3pe9h1m
 5eZ/kl92ig6p1cIr0W5Yrfwxvv/JODfYVCSfdz+rbpzc3mBhLQ1aMzJP6
 Hu7L9EUJP+BfVEUx8Be2zdUHttJmP+1bYS2oOgybGo127bjpIOyyDvCKj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="405349959"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="405349959"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 22:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802412442"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802412442"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2023 22:46:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 22:46:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 22:46:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 22:46:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 22:46:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dA9AXPpopwTNZ3Vyd1xf6aC8sRfT5Bo4ccnFP5Gx8lKLgUqSwEs2Rm/SSzXbaT/WFtIshN7ssHKENDYxBh7eLuB3+x3oLHtHqWq40qOJsZwttJquKKq5JSgxcMcnSjgf1qrkDI/dE0h/JgYUjG+j6b7m+39t/Vtjm01fA6ltxv2++1vHapkRzSWeOWux1DF6l0pnppb2f+Duh5QNMLsKyzJPl0SV19klffm9rD3zaDwGfEyedb9I7114GUmbDO4tKDU9r/TwSzgwUA48SvdPEGMpb4KvtO+gYnDIW+1ohQTRzQJpE+4gZm9XJ+Tw5Dt/Uy5rsMlYxb8hTMMwTiRolA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ecnwrdRYPYqB1UHbttYbuChfmk7qEhX9r19N1in0IQ=;
 b=mifBhMexDsIBHYIS1/Lee2O7tN3uNCrQedIRaGmfgB0Msr35rSzmSzNK6NJ9ry65jaH6Gwlr3IGwNp4eMXNHuIoRf4v/L+eHwLqwiwZaMlDmW7m4eZq/gRMA3TxG4j+VQs6RzZGz5LoJvKUSPZH5Qa1l4EA+3OBF3PYj6rIpH38ptWFI3akyBDXV+6IvlVI8OOiO4Z6rS6VXyii4C79lxPDKtw9r76Rj/uMkr2pfuODXy79LfCEZf0G1YffVF2B1JIVNkkETyIWjfzjym0DoWBkHZ6xDPyP1MlrCc0gNyoHvIN7RDceSBWIdJVor0gT7oiZ4TgWbovbOH1ywRcCN8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BL1PR11MB5287.namprd11.prod.outlook.com (2603:10b6:208:31b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 05:45:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.020; Thu, 24 Aug 2023
 05:45:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 4/4] drm/i915/tc: remove "fia" from
 intel_tc_port_fia_max_lane_count()
Thread-Index: AQHZu8QrQtt74UOPsESARJ0zMqxYyq/5JLUw
Date: Thu, 24 Aug 2023 05:45:56 +0000
Message-ID: <SN7PR11MB67507D9F3DBE454B31CBB172E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-5-luciano.coelho@intel.com>
In-Reply-To: <20230721111121.369227-5-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BL1PR11MB5287:EE_
x-ms-office365-filtering-correlation-id: d1cb22fc-e008-473b-d847-08dba4656317
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vo+JNmbJYyxp1EuH2xlgEI50dOv5q9cR675jhC+4BMLCZFbuRcyTECugEsel2jAosRe7EkKJK0kaVOoEkO4rqtsLQ991CKt50KK55POQwSpv/Pw2Lth4e+Emjewt9HkBBOXz4QLn1tKjNSY3ENDjozn3WETEvp17d1m02zrUtZMZQybPFT17zw3afIkPrvaq//hX9ahgkqOPqI4YCSpnk+KgbGfRSXWTd7SspCTaYrqcUrcPEgJ3YW7/AWRiZoglSjJJUe8HOHTRRXw9wdnignUt9YQTt33Ing1sabRZR7TKPkBVVnu1tfR84hKKjX48Q2630xWKbr3JowRocgSLslIvWGmeJorIo4Fh+tkrUm/JtwZpWYU8lMW3H9oa5ycCiUy6JkbUWKNvK7pvp2YzAxxeukxv4pa9cHCfvThQiI0usSReMK/8enn0zuad5ixhb2WiNu1LtvOhq30yn3czFDJS1izA8z+6pYV1sho8XCmes/RcVskMPlR6a4qqL6HN1YVcwoAYP+hEBLvBjr4veBbGE6VjjclDQzj5xqr9bZNkHGXM96OaUNiIz35pf5nfQ6EvHbReh/5YBkJw36f/01JKKf4CSh3B03qh2oELWAqlrSTkmmnrWA8WugaKw1VB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(39860400002)(396003)(376002)(451199024)(186009)(1800799009)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(316002)(82960400001)(122000001)(478600001)(110136005)(55016003)(26005)(38070700005)(38100700002)(71200400001)(41300700001)(86362001)(7696005)(6506007)(2906002)(9686003)(8676002)(8936002)(52536014)(5660300002)(83380400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xK8bQ2c6WG6t39Ggzasdwpt15kn0Gltz2X3yQMoLszYHPd3KQ1gjR0J1UXzI?=
 =?us-ascii?Q?wzEod6x60xjtZh5ihJOFlwBIA6FRhAWbDgwYkdIZFWGZuNu3QitcECzOQ7bn?=
 =?us-ascii?Q?1FQOOnmgGctcrxYP/O+YzXTRIR3ujlwxPqGrTQO0nvQw61eCZ72u25TRDWoc?=
 =?us-ascii?Q?MDp6Y3zROElplu1TDovhToud5tG3FBcL5JULeVwxzM2pyyLCWQjvDA1elho3?=
 =?us-ascii?Q?RePY46hpzv9sdxqEsPiq6kvGi51uYNBHCgwPc9w6+gxGrOyD+qLTLXr19LWu?=
 =?us-ascii?Q?fQ33db3I6J67uE/n2lapsVNURqR55btOHFfWzyT56BZLvtluuFVQAz7ywV79?=
 =?us-ascii?Q?XLJzYxc9/rlkeK8mFgXcYXmXnRrUONWVGszhoTHAwxIZ/cVh/8losC/xrPnG?=
 =?us-ascii?Q?0s65IEVkbEUft/xz40xgrVnW7rWr4vM+fPOAq8RdAAp6gpwqGw/bBnZ4udTu?=
 =?us-ascii?Q?USBDajw9peYwAyTMHjt0WfyxUr70R+4sML+hVyrpYWVJ5ZaR4CqlME/ImVVd?=
 =?us-ascii?Q?Gqh2ZxPtSgtEGFfyGJ8SlxBjzi8GHwNHLSuOjwvCEfe02RpDweU6AWAZGepi?=
 =?us-ascii?Q?APF8gUzR91EydL3vOevwtMGBIWCWpH7sateojZQEZZLLwPbDs7ML9sN0T+I4?=
 =?us-ascii?Q?kDXoJgWifAW/kGaT8A9GgnBKI+EwrV6n/CALm9ACWvgHKJlCYZEf3uZxvvtx?=
 =?us-ascii?Q?vzwMAakCoer8hEkEq9N6qvWl6AiuhPmBBBotl4dhDIZwfZfFgT6x7JWzARgD?=
 =?us-ascii?Q?OjaI9KMtF2wH3JJSloLwZsaCbJ9ICfk37k8ySYlufbQTHi+CcxBpRgren5T5?=
 =?us-ascii?Q?hZHoEEidzG+zUqjFND6/RzuITA+1Y0YG+U+O1JPxPmgX58YWouDPl8MJL3fz?=
 =?us-ascii?Q?8OOkgthwu0/4Uku4gdQ40B7Msqua65DpWu9QLgUwZ0myIVA275m2A4KC5Ncg?=
 =?us-ascii?Q?kDGo0vONOomovepZN9EG+ZLnQIwb3nTpq82NpFv+YlY/lV+bF6opVsQpwt5q?=
 =?us-ascii?Q?RKvxHM2PjnIC+YJgv29Hag5JRoc9IIoBfhgstWik4usRUp7ut2gh+zazQ1xY?=
 =?us-ascii?Q?QhIuKzXFpfBz6ZIcg4JiAIp68R7MRqvSddO8z+EcReCUI0JalO7u6XK0pY9T?=
 =?us-ascii?Q?SoA93xYdZLLks39OCRkZguP9inbtw0whWb/YQU2lIQfvfYNPCUelxECsYIaf?=
 =?us-ascii?Q?O8vmhhgAOQ4vuGeR7862xEN/4AObIVE1SKihI6i0nPPhtWchAqz4nxkCbD6A?=
 =?us-ascii?Q?/q9CliOx6ZXlmtKKoFvXx56frapwjqIuNbzkP1r0aeXWbfKBwZ2YsSJ8W8Si?=
 =?us-ascii?Q?x2TuAqmCw+MpV3EpWF9/NkQrzsiee5c0ZhfjKZ7/HiBZj71Yw2aXDSZUXKwX?=
 =?us-ascii?Q?jYaz0+gFz1uUerj0tDZ3Th7DVgH0PULLw13VmLaNtnbFE3jqMWmfr1n5pHTF?=
 =?us-ascii?Q?KZGTKIM4OaMr0AmuQazDcmULAav1x25l7WtQfU0jvQGOIN/UNqUNYK4kTNxm?=
 =?us-ascii?Q?e4e5jRAEWVTIDNIC8Zpbi+PUDnNwsVVh4w8TyUCWVaAMOsmOAyZnDFs/UxR3?=
 =?us-ascii?Q?NyfDCzxusHawI+BZsoYdVLhxoWkEToyStINASieU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1cb22fc-e008-473b-d847-08dba4656317
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 05:45:56.3800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NZpR9F0fiuuHREN1N9yzPFy/mP+00AHhVLVroMFiV3qHMPzr/8PvX9xtcM5q3zgZBrJCVkXBuZH8EW890a3IAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5287
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915/tc: remove "fia" from
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> It is irrelevant for the caller that the max lane count is being derived =
from a FIA
> register, so having "fia" in the function name is irrelevant.  Rename the
> function accordingly.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_tc.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_tc.h      | 2 +-
>  4 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 1b00ef2c6185..6d4f7b20ce85 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2534,7 +2534,7 @@ static void intel_cx0_phy_lane_reset(struct
> drm_i915_private *i915,  {
>  	enum port port =3D encoder->port;
>  	enum phy phy =3D intel_port_to_phy(i915, port);
> -	bool both_lanes =3D
> intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder)) > 2;
> +	bool both_lanes =3D
> +intel_tc_port_max_lane_count(enc_to_dig_port(encoder)) > 2;
>  	u8 lane_mask =3D lane_reversal ? INTEL_CX0_LANE1 :
>  				  INTEL_CX0_LANE0;
>  	u32 lane_pipe_reset =3D both_lanes ?
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 03675620e3ea..b974af839acb 100644
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
> 2.39.2

