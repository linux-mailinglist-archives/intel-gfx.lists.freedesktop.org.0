Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F7E77DCD4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 10:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F11210E30C;
	Wed, 16 Aug 2023 08:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E3C310E30C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 08:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692176095; x=1723712095;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ty200jmiozYPlN+VPxu/VJKA2uqWRP+mYpBRquiWw4Q=;
 b=lMTbdIgb2bFV3mH98Hi1g2qFJ+TNjFdDi4vaNMG4retNC219ucNQOlIh
 ZlGO+3sxO+VACw93w1oNlSQBYQ2IHsm7ImLD7PeRhSCmn53jGcfMjgT50
 f5xLGUvgmpxEQ3xqvs3jf+zC+TfNr8M0PkEhqJMy9hXt7OGlkjXdP4PcK
 AjiGPO3HpkeMd3e5ReBGnM2zaZikX3hL+37/PXLqsvBHhjcxH6w/vwgDr
 HELPnsqQwaS3LokQy8O2CXc9lO0I4U0IIzEGoq+xlueaonUb+/7XDULLp
 WBPByeEgJgG3rg+HZGW7gw2pk/rLx+cOPpXj9hbnRZdPAsf75K76WdSZo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="376209039"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="376209039"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 01:54:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="907942823"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="907942823"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 16 Aug 2023 01:54:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 01:54:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 01:54:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 01:54:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 01:54:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VYtgp3GKJuerUDpMGDmwiMQ0pRacEWvt9MztmhJkUr+li/RimR1dHSlpr9Us/mu2gT3C4AVyM1OiVfX2MVwjvvJ9rsRpbWhxCq8NSieOBPXA7MZ7Hs8OBcO5aBllyru57p4RYt7FvOZj+IW1gu+yznIT/qEPf5t46DR3jTaFFQ/QEwZN80cLyJC/z6if0VgjoXhS9+ANj5GWGXAtcj07+kaeUR0q9MfPO66dWi6xxK/0ab1Pq2yZSp1pDZeMn/F079FbEXjSechgIwAANM66kg5LqnTxaTmx845LRlwIqYrs/vm2WKheVrQctgDblYde4K9l+w652vhzYb+FkB/mnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hu9uw4u0+8mGFpPOu46FRVlmEBZ/zkwOffLIRpef1P4=;
 b=TmQYIViZcXSOtiKAZ1dS2EHYZ8ox3iwDb3mZbygyPMx7lM03hkXthMFzDoj1QwMGwT0c8/pY1L+Y4tHWYbDSJipCofkhNMa/dhs+gE78bneofZe/fslVqHo3SX+wXkAXeViGqPtTgeXThi5lXq/HyRO/AwFYjp341HYHZL7ZGEGV7Tj3H9mEyOzboqXcPuLcQAwZQAXOJZohmwGVixpMKZ3GOg7MG+eRQy1Wff8Ikh7kXysocVycVSvU8sy5qWAP9j5KAPEvx2l08OQ8qY5ggTQYDDn/AXqRSdPgSh5h0JDKb85/gdLr/NBBE/zNMKiR1bV+wlLjg9Z4eK89PA1geA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BL1PR11MB5527.namprd11.prod.outlook.com (2603:10b6:208:317::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 08:54:32 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Wed, 16 Aug 2023
 08:54:32 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
Thread-Index: AQHZu8Qri1RTNphTMkaHwnMUz2bkNa/sxIxQ
Date: Wed, 16 Aug 2023 08:54:32 +0000
Message-ID: <SN7PR11MB67506A441EBC25AC9A772180E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-4-luciano.coelho@intel.com>
In-Reply-To: <20230721111121.369227-4-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BL1PR11MB5527:EE_
x-ms-office365-filtering-correlation-id: 5472d371-a341-45a0-8194-08db9e3668b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8xBWkDZ2FcQjcrMgtmrLdsZuSQibD6tcvIXin0wwcuQUEAKBfJSrMsI+xzzBu5ihzwWQsHcmt2TGq3Swhzahwkz6EG1kAm+ygMgufC5J/lwhJhlVsaObl6BzPQJYhQ9sgto8YXr6LxqFRwRGygb1urbyHFyFdMWgdr6dPKW3yGxb0yiAYe9n898xTSp0k7pJdqoREnz4iNW0BKaHBvXgT+bdr9wZjpFEbUh7zTbCjt3IUFUgj9hVfIWDCLN0tdUCsDlaB60h1KzMjrzz1JR3rt1FPhSuS5kCgovjvL041PVz0v48EfGULbl5oVrw/5TqugQUHExTlSFJseNOwO7zfpJsNlnI3mykZncyIKUSQcH9DW3GovqJooIB0s0i0H4K2fwjU76ihnJ5fGoSB9a3b0k+x62MAJzsI8Ue4vd/YSy/ftedBgohjZNjLaR4zJMOJTnIHirEHwcw7u6cr4f2jLgk+HNBHDuPaO+kpH0YAyjw0qVtXTUa9i/AyYMQTLk2rQJ4Zuh+ZcV7XMXzxgTOCbKqFehtKK6QhxuTIDFF15u+O2akqbNB9VFlka1xinRZqrOsyw1XTEm9U8BQj9ql3lOxeCnD370WIo1ofqIv/wu2k8JoIE8S9+7Khyylir4V
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(136003)(376002)(39860400002)(1800799009)(451199024)(186009)(2906002)(83380400001)(86362001)(478600001)(7696005)(6506007)(71200400001)(33656002)(9686003)(55016003)(5660300002)(52536014)(41300700001)(122000001)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(110136005)(76116006)(8676002)(8936002)(82960400001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DIaacWiBe7MEI5CihlyBFS9WsAQP7D+uCdsLUtWo7hN02Z1+aam3IXXdTtDq?=
 =?us-ascii?Q?8RyyvV3ilGEonS70n9qyfo+BNoJ1nOxr8f7TPE4GxQbx9utraX1JoQJt4JhF?=
 =?us-ascii?Q?aGSuMl+WovSUQsBmu+ZbY0QD5iAh3pKr3KS/MojxqNuKltgnhmOSa4VW5N9e?=
 =?us-ascii?Q?oGx4eyosFJHXJKyGSJnFwGcqu8XLLdvrTw3tHNECAWYrd9SwrD7fEmoNVQQF?=
 =?us-ascii?Q?ITHXyXEGFXiLFfMluyoenGSm1G0u1XIeAzgMtrbRzi3Uog8/AIqClX3haiAN?=
 =?us-ascii?Q?5D2oG//C2GB+JocxXpMQWE/Y6i4pJBdJhxaj9x+z2p/fiVahwoHQTk+Y3Vpl?=
 =?us-ascii?Q?QwlfmYzgr4kf3Htuz2D4oHhU4d2s518e4A2jV8VXjZOD7XVsAMO98uGw62pH?=
 =?us-ascii?Q?NEmHCEZC1+Hkn/JKiVKyIR2KVbZvZgF/NeE7ECLk09PMk6tpreeSm3eJ4dOO?=
 =?us-ascii?Q?eC0kYYjfcSaWne4BLDv1JbwsWkIPIA4NZPimECPXcXg+X8/i7Y0ppUshVZcC?=
 =?us-ascii?Q?8kUkpiRstgEJO6aLirTyqYodv2Ym7gnf8ld9pfXXVbWZxFQ5EGKjeI9jPACA?=
 =?us-ascii?Q?QIp5j6ikWqNRqPXzKqgJrdHDQssm5nz6Hnk+vPBwKwzgCFZuU6ZK6a9Dp3fD?=
 =?us-ascii?Q?jlBpvlo0SciiMPVQuEEcQxoGJ0QS8d/2T8mNHqlvq4Xs7M44Fmx05xzvBagu?=
 =?us-ascii?Q?yWJ+qt4VPYG8GO3lllAfxq9PMQoOA7A4CrWlo3GpxmnBSbb+Q/7aJ6lgTg9j?=
 =?us-ascii?Q?76QitDmbGuW/b9cF9GyMc5aTdv+QpxcCu5UMibmG+0Lq/AwmjzJh631Pp2rx?=
 =?us-ascii?Q?tMwA2itTj+/FEf8FI9iV+H+aFxs9adsXQjE+5UYk8ZCB4XkxXjp2LUTdjDcu?=
 =?us-ascii?Q?uP9V2XyxsEYemHqhTCbkwSsyOzACid4yq+s923IsRdhtJgBoNM2TPnAfqIOv?=
 =?us-ascii?Q?sHQUF0MXxJO8bc8rzVbAOqP9sXIsN2eEQSohu8YMeSAyWJCj4lGXz2Se1i5b?=
 =?us-ascii?Q?PWvl39flVQQ3o1V5ma+KrJIPE6WmCLcwupFwzzIY6gqV4adSzBpWxbpHh1vt?=
 =?us-ascii?Q?GDGvsaBPHdw4Kx4injJOI/9F8Nbnk9Lfk2yKjBxzRcVjhekd89k9NuA5pHGr?=
 =?us-ascii?Q?wbmPz5R846f4R8+6rtssdlldJ3OUMd2MFdTCdKV2gmzL1bGJjgbnkZD26b4q?=
 =?us-ascii?Q?bgH22BvqbUXFKIsjqf09HcZu4fM1xHJRE0qBn/+gzrwlbO+8sTS8I5ku+tht?=
 =?us-ascii?Q?TyBR1AZcN/9onAl09LJ8fJkefo0Iai03L4zQXp3PG9SpkMVvjSRIpZp54jGI?=
 =?us-ascii?Q?fJNwInhMNcLt9tsYsIXjWDpjnlSJRVAmeDgz1Mi9Ju4+M0UftLrZCrMowz/y?=
 =?us-ascii?Q?4B4+7jLoPKp0f8FTXrJjkYLtxLY05xjonuQ88IanWBGyTR9eDyYLjZwv7NpI?=
 =?us-ascii?Q?u0gQjh+WElzwsFRdzAxg2n+Ep77r5Jw/OjUAgt9+7krGabqCg+WmOqf2SvH5?=
 =?us-ascii?Q?NyI7y2k8cKoSEbb3vSbnSaKaVQtniU5TKG0vwd5VGTtUvkYuJjZIeLKpz4c0?=
 =?us-ascii?Q?aje55rnqkfChXFshsfU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5472d371-a341-45a0-8194-08db9e3668b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 08:54:32.4702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /zKkRzvI6RLbn1FS78gcYITjbLI6/+A9RuFzRHbi4RqqO0IUNkcRiG98CAJMrgcsQMbgeo5wN3TKB2XuKewOFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5527
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> This makes the code a bit more symmetric and readable, especially when we
> start adding more display version-specific alternatives.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
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

Looking at this I think we have more scope of optimization here I think we =
can go about it in the following way

intel_tc_port_fia_max_lane_count
already calls=20
with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
                lane_mask =3D intel_tc_port_get_lane_mask(dig_port);

which we also duplicate in  mtl_tc_port_get_pin_assignment_mask
(now mtl_tc_port_get_max_lane_count) and the only difference between them
Is the switch case what if we have a function or repurpose=20
mtl_tc_port_get_max_lane_count to only have the switch case block with=20
assignment varied by display version and call it after intel_tc_port_get_la=
ne_mask

maybe also move the legacy switch case in its own function?

Regards,
Suraj Kandpal

> +
>  void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_por=
t,
>  				      int required_lanes)
>  {
> --
> 2.39.2

