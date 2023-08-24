Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 543CD786737
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 07:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB7510E103;
	Thu, 24 Aug 2023 05:43:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5A7E10E103;
 Thu, 24 Aug 2023 05:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692855799; x=1724391799;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CyOSFrCDvN9SQF2i6DwHWIR6cTxzKbghErWGx/+BwaA=;
 b=SwwhH6GoYcs6TCohyOkhzzft9ju45Sj+IrtVM6gllxD7qjUwt13sjTMf
 Syxogs3peWInCVMgxiAHJBqyLRHzTmB4Qp//okD3FdEektXB7/lnBkQMt
 pOZzWfmkzR3uAuXYyHOMPBTzgRNdHvgpyq3Ti/I5+3Jt9i2b+gAOFqSU9
 arueuHHO4wXHXpDVSAZ9LtJRmthUhbh+PX6Wh21BM2gHFyXHQHFjjU56z
 uChFtcW7wDoocU6HuY41pb+ggdqP54QWi8N1zwtDOUAfMR52b3mVoKGKQ
 JcNkDkJ1iIVE/tl8Jmnr8UNnpSqbXtM4acoCGSRFLfOTdxuKMTYgouN0Q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438281680"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438281680"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 22:43:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730458381"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730458381"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 23 Aug 2023 22:43:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 22:43:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 22:43:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 22:43:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 22:43:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GGx9g37pORKhGcaoBd1reRPwyqabVQ3pJzmA3lytx4+llI9PtVGpDKaUj3J5QZfX5+C8aGIUUcCjFGcSEIf94+q4YGk4OY7AJIKKLHQ60j+zw/woelDup9/z6yUVcofUEZEG16weGlqNBDkfMrbm473g+ap/NiC+sc4lYYueupldJbvZ1n6BoLPZj49JOyhYwCbcLaMx6htxXvyzP4R/vxyJgNfTdOLlPl+AFD5oMcOOWeeG8va4EraRKeb3TFjYig72/2x0P1RYSiWjFDYOkbQ9c3PhxsoB4d2d8LmI8A9gdptbuUiov5ca9zylGxt7GAZk7Jb4q8xoFKQkrdYCyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jMuP49+DkPWE0KxajgBlnhdjzdjhCfVRFqZzKZqrtjI=;
 b=GK7TmS9MhYF/u/wRxhWRsRWZ3kES4TjTjU+0x/RGnd4qhtKcoIxp3PCh3mEBmCdzwvW+bwz4BmFSRO7dkxqzpr/77aKBQqW2GqhcXv2U5oCUXENKIivDiZaA1eQ0m1dPeebEyyFF9qKdMXSAD2WvbRnAk8/R/TiFIxYPnAckXIDx1lpyahDT6MOVqsI96VJPBDp+biT5JGATdfmH99HV67WY5HvAlE7Odniztq+L+xXd7HHYX8ne/wgrkU9vEUhufWRF7iE1UYY13sNtmjbHcqKrbhueuukiqVt2z2ul4rxLbdS64BwveYkqEOPTqewCPjxM59QrQ5ONeMygjYNscQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 05:43:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.020; Thu, 24 Aug 2023
 05:43:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/42] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
Thread-Index: AQHZ1eS8E4j6O5q98kO4JFEg9UR6YK/47spA
Date: Thu, 24 Aug 2023 05:43:15 +0000
Message-ID: <SN7PR11MB6750DB914E983DFCB1449811E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-10-lucas.demarchi@intel.com>
In-Reply-To: <20230823170740.1180212-10-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BN9PR11MB5276:EE_
x-ms-office365-filtering-correlation-id: 65e21c78-71ee-49b4-df8c-08dba4650308
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VvS4iQKcbjb475+wsaQ6z78GeEPy51x01pDoAZO+AVzMP8gbfirzGYDxXNc58nEC1YOvlQpJ6AKVcAVIg4XRDh0srSshvoXi1iV2bijB/cNQmA4Ys5kODakWDBWzbUFJ7i8XaNa+nY9S764gIowwltYl59XO2L20zLzD4dfEgrbN2/BS6yBHBTWZ4gw9rX4DH8LHm3WIgkNj1Qo27rowuhn/iczYeIPIZu4LYerpn7PwpfXTnZfzfW27Ugb6Yl5CX1WJFPILJH+TCooOBzWLyB2BD7wp3SrYch5D/2kIZocWAjuni7TdI7yjGlvgbqTvWSj0FKdfWNeDNzQ8Gbb15cbmGQLBCCvc5zw/B1rMePJkJ8cbm4OGFuPtUShU9Mfn9JTYrQNhVs69L5SnNxS3Bl2gAuRzSjUxFg+pvgTH3S1dMIp2vbZXErvT9f9pTx4VCMtj3Xz5rilO2J61ZwKyOEgGZ/RB1U+C+Oc5NWrLTntiXH71zHw2zh3AGMes3j+T2wzsB7flZWh5n9ZcDvsrk8i5ZuC86KGqmR1KEKA5QG0AuOt2+QPTD+NI+h0LN1Yc8ra5FqlCiRrmA3eGmopDWO0BbQS55WJApRLq4ntfu3M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(366004)(136003)(346002)(186009)(1800799009)(451199024)(52536014)(5660300002)(107886003)(450100002)(4326008)(8676002)(8936002)(83380400001)(33656002)(55016003)(26005)(71200400001)(38070700005)(38100700002)(82960400001)(122000001)(66946007)(76116006)(66556008)(66476007)(64756008)(66446008)(316002)(110136005)(478600001)(966005)(41300700001)(53546011)(9686003)(6506007)(2906002)(7696005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aJ4aCBE0NkI2dYyc5KLl89OaPgeImBlQ4Ryu+1RXYAYzkr/Yusae2XIHBhDn?=
 =?us-ascii?Q?qVoX9UjM/W1D+NW5CKDNDl9kTffr+KCk9H+hRQOCieLTdNdI5/Lcv1rvIqkg?=
 =?us-ascii?Q?5N36eU9EjtvVZqa0cCX9nBwExW3GnwgBg8QPAwp89qrkevL4yieGMmqU+J17?=
 =?us-ascii?Q?W2/3Yv048VrBTnFObi9AomztSLevc6YDkNm1X9goTyIucwW39n5hXHX56rmh?=
 =?us-ascii?Q?Fje5U+HGlpOmgf4KdTNjG0OZiTm62S2XoBa3TJmXTncHHmKRkSmAu1CkBaWO?=
 =?us-ascii?Q?tmSoFh2ENmy0YOELuEVS+suwDbqaZ9DgemExhDhIhlF+lE5Ridt/nWEmEhZK?=
 =?us-ascii?Q?gLTYPr3MZmO4uTjxuZ1RdrknEWTIt1zvPBW38eEWY6LtlGuqAWlguBc5gLTY?=
 =?us-ascii?Q?rOzFJI2lDgig3Zj8U5xqLK/UpDvzuNk6lmtuyy0U/rS7zJZH3vsnMAgxb3MR?=
 =?us-ascii?Q?FGW95yWFovjwxJkRaZ6BYGnfJYi45V58FBjvgy4Pv7tsHyf5dvsWqt9RZDWa?=
 =?us-ascii?Q?PEVSwXvunpmmxho+bmCQqpJHXB5q5MWj9QGvSnlDQ8PmV8t/dJlBXS0ffO5P?=
 =?us-ascii?Q?EnQL/qSrRgv7lBngu/lz5+hGca0vEDkrS754ep6+aimx7cRaWWLFZ1lJAWXN?=
 =?us-ascii?Q?wLFP0I0HRQ8AKmKkQMS8bzRrs+truwU4exDYRPls/+a1Fwv3hv3zAc1ElXj5?=
 =?us-ascii?Q?dbFQnDnpbTptgx9MgxRPi51QzR8DsKGvlBzW6lui/7DbZhoIiv7Uh8/7KT+F?=
 =?us-ascii?Q?an/EqWDHr4JJ4XtClhqCuPx+TtzB+BBAhtjzuSSVgYVKT8Md9W6i0Yk4Rn6w?=
 =?us-ascii?Q?QcK4NvY5r9rPh/7WAMOxC5tIeBmpDuWuKKLaRymoqHLZ1HColxJaf3oFn55f?=
 =?us-ascii?Q?JYqPlqlNaP6jXyRnlUWmXNMqCsiDjbgJasL9lgWf8qtGhhCK2hgahVraVbYF?=
 =?us-ascii?Q?E7xThPvnxCN9YLaCcVsq5fLJeAfaLs8MEdwR3KKk08SQUklufed6ix2S4wWk?=
 =?us-ascii?Q?7fz11w+zoJTpdQXSJi+J3BFR0Nq5cN8Z2eaqpnGPQ+nwIpao7bROR26JLZ6B?=
 =?us-ascii?Q?jG5AisneNLYgMYz/2bhGxu900bZLDqxXD/OF8TWHKP2qmt24sk21UKYBldCB?=
 =?us-ascii?Q?tydH4wgDU7dyyVM6Luhn4PmxZ7G0IfkNXX+B0sdr/j/gUbCy1UiTGrSIS/ra?=
 =?us-ascii?Q?H3AjtP3WY41x3OqvJwQV5bm6l99wRpTusIXeugoucwWwsYYKDLAMWZ62kZPR?=
 =?us-ascii?Q?YvbRL/DGq1Ffb5469ED7tAoKKploabK5BqHL6kTsGwwYxZUDDrCZrfzBkElV?=
 =?us-ascii?Q?whjBS13GDozLlvJm6Mh0Wurd/Y0/a6y47r7YMNDFiShrWXX5oa+oJdDRTACE?=
 =?us-ascii?Q?iTZh9nzmflqnzFzqto42cfi3UhmSg5RuD2hDMq1KqGUamWwmaMQZ+EOV0eJ6?=
 =?us-ascii?Q?FcGTuuloYz2EGXVkFP0fYZurCagkI8x6QUzkG43gvNdlELqm0o/Sj9CtAPPn?=
 =?us-ascii?Q?794GR8GJXBitQ0dlw0yeBRJvJfgM5h6rX8soQI60SuSmoRfrHZquYXRwOHz7?=
 =?us-ascii?Q?bKXw9SIaoK2yo5nsUN2R1+6dpvbHr2ZMEiiG5jAh?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65e21c78-71ee-49b4-df8c-08dba4650308
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 05:43:15.2284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O14ltJFcGJbuaES8RJxVfA6RHK8qoQe2eSFUUxb9wy+1YnNwm5F2/PIiEktw1hzVR5QF1Uzn1TIEF9miv1PBtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5276
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/42] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
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
Cc: "Coelho, Luciano" <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lu=
cas
> De Marchi
> Sent: Wednesday, August 23, 2023 10:37 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Coelho, Luciano <luciano.coelho@intel.com>
> Subject: [Intel-gfx] [PATCH 09/42] drm/i915/tc: move legacy code out of t=
he
> main _max_lane_count() func
>=20
> From: Luca Coelho <luciano.coelho@intel.com>
>=20
> This makes the code a bit more symmetric and readable, especially when we
> start adding more display version-specific alternatives.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> Link: https://lore.kernel.org/r/20230721111121.369227-4-
> luciano.coelho@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 32 +++++++++++++++----------
>  1 file changed, 19 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> b/drivers/gpu/drm/i915/display/intel_tc.c
> index de848b329f4b..43b8eeba26f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -311,23 +311,12 @@ static int mtl_tc_port_get_max_lane_count(struct
> intel_digital_port *dig_port)
>  	}
>  }
>=20
> -int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port=
)
> +static int intel_tc_port_get_max_lane_count(struct intel_digital_port
> +*dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> -	struct intel_tc_port *tc =3D to_tc_port(dig_port);
> -	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
>  	intel_wakeref_t wakeref;
> -	u32 lane_mask;
> -
> -	if (!intel_phy_is_tc(i915, phy) || tc->mode !=3D TC_PORT_DP_ALT)
> -		return 4;
> +	u32 lane_mask =3D 0;
>=20
> -	assert_tc_cold_blocked(tc);
> -
> -	if (DISPLAY_VER(i915) >=3D 14)
> -		return mtl_tc_port_get_max_lane_count(dig_port);
> -
> -	lane_mask =3D 0;
>  	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE,
> wakeref)
>  		lane_mask =3D intel_tc_port_get_lane_mask(dig_port);
>=20
> @@ -348,6 +337,23 @@ int intel_tc_port_fia_max_lane_count(struct
> intel_digital_port *dig_port)
>  	}
>  }

Rather than having two functions:
mtl_tc_port_get_max_lane_count()
& intel_tc_port_get_max_lane_count() that both call:
with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
                lane_mask =3D intel_tc_port_get_lane_mask(dig_port);
to get the lane mask the us directly pass the lane_mask to the above two fu=
nctions
and make the call for getting the lane_mask common i.e lets call it in=20
intel_tc_port_fia_max_lane_count().

Regards,
Suraj Kandpal
>=20
> +int intel_tc_port_fia_max_lane_count(struct intel_digital_port
> +*dig_port) {
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	struct intel_tc_port *tc =3D to_tc_port(dig_port);
> +	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> +
> +	if (!intel_phy_is_tc(i915, phy) || tc->mode !=3D TC_PORT_DP_ALT)
> +		return 4;
> +
> +	assert_tc_cold_blocked(tc);
> +
> +	if (DISPLAY_VER(i915) >=3D 14)
> +		return mtl_tc_port_get_max_lane_count(dig_port);
> +
> +	return intel_tc_port_get_max_lane_count(dig_port);
> +}
> +
>  void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_por=
t,
>  				      int required_lanes)
>  {
> --
> 2.40.1

