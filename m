Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB1573562D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 13:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 551F710E0F6;
	Mon, 19 Jun 2023 11:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4C3F10E1F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 11:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687175463; x=1718711463;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vNO/RlyHsvttt74tj+PJ/YtbamfjOkPGGIiJ7xE/IL4=;
 b=aaeG1X75P/0IHp90wwDd/dqf8so+yXH46CsOJZBG035L5Er+RGyCEaQa
 0/9sbrVwMCSYuU03xTfrXTPOUwdKhlmShMfmSF2lnM/lgEuHvCCiM7USN
 GjY3uj1IxJJ8oNOm4DYsjyQhAmxOYB8T+d0QK+l8iSP7iX1wWq5g+EQ9C
 54upLQ6RFaTG4ownBzvKUxnVcG7jldFA0SMxAm8l43mrteGvgz3NhzH7s
 CN//w2Po84xjbatCaGwFX4+JDbkJ4R8LOPcoKdKxwfEGyjgjsj20D2P9O
 z2UaK3yEpF/Dc61Fn1H+15Ai5j99OezTBYaUNlpGXbghUFp+p9KzhikHW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="363035739"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="363035739"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 04:51:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="783678415"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="783678415"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jun 2023 04:51:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 04:50:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 04:50:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 04:50:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oJS6qzInzwm4khFYazKnryO8J6WPjQVdkq1pn2shgeEqa+xzIxA0ZmIWvCiiT+LaIOsBV+eQ8IFO+Lm7aa+s4MJ6WpfnOs1XXl+Cu4JGBNyID+1hIkxw3P0T/2F4c9yG53ik3xFmlUbgsfb/0gF0Ltk2p+O2qK53OQs17b0N67NDPOgjbUo16SFEuDRBPRLS9VGqxf93fmk8czsetJR++irnRPYFNk9CKZVdihLvSJDhGp/XhYhgZxNyyHcRFGWU3N81cbcgFGWJJIiPLPET2Ocrm52mfLCm2Lu+Hu2NCorLKs6Q4A9n206w/Wb/SKjg0/3yxU7nVYaXjvn133lMQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QNEvcLoNZO/2VDh84G51h9MiPOMrGSA6GtQC9yvRl44=;
 b=ZAZaqAIrqYBrvqKvhsC/YgrcKHdML+DmfJiorNUVl7PGkEjYabuKx6WdM9iKg0u8PlTc3drXyOUsNlCJpSr7/yx1xQHF7CsGtzgGsf8NijM6H4A05wsGmvPchm1dfh+SPHBj6IznSJyn06Lih8ML0yBHZpu4JNSSkMusMcH94XmoKNWQkwaSXPPpwiHcLqH/lS0fxCuHVvUjFX/ESv/ffd+j+p6qDYDQuqfng3RxuaXFeO+fOgu3GNDWAb+HtM9Dt2xG41lq9koo6iUYbyNOqmI3YpvG+olBQepqNwtltjxEGuY8QXkiMBJtxY5UALhJmCJ8dlPYRyEpA+qW4XV/gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Mon, 19 Jun
 2023 11:50:56 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::5671:364e:5c39:3284]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::5671:364e:5c39:3284%4]) with mapi id 15.20.6500.031; Mon, 19 Jun 2023
 11:50:55 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adlp+: Allow DC states along with
 PW2 only for PWB functionality
Thread-Index: AQHZmJyUWgzpMXtqYkGOzljWe/fGqa+SFuIw
Date: Mon, 19 Jun 2023 11:50:55 +0000
Message-ID: <DM4PR11MB636081A4732D597243F7D34BF45FA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606172822.1891897-1-imre.deak@intel.com>
In-Reply-To: <20230606172822.1891897-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB7425:EE_
x-ms-office365-filtering-correlation-id: df644f6d-bfe8-49e0-718c-08db70bb70ae
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2Cqk8QW49+5W3nvpq9DEjsHUryfom4MG+VdG77kOBvpJ1BdU8PdX1y58w7/VOuM3IeBYJ4RB/XfCBP5fYbJOjrZwNtTjGiPydHOMjqdZOy3c9w18Ja/nAdKm78w2oOuTb05qHdHBQcneM+/c6lecWbUoOz+9HP1hWefHHqnBiXJ6oiaHSb1cveYRyejNVFFUBseOk11syuDMtjaqBDERAF9h/qqGCWy02FiLIccKBt6LPdPu3SKBfk2sx3I3AjeczCbY91Zyria/XKYEtf8Yp/jdauqPconaB5TEcupIn7Xg72eG50LcYEvn6gG3CnajG0xnrphBqcNa3Sz/pCtd2tP+6hfV0NCIuQ8333+b3U/g661b3fEAXY5akgr241hg1OxLQwO8nIPHogHlMQv6s5yyIQQi3Er0riKmV0dp1O3k5RZeFG/CinveQNOkVql64aQlSTpBxHA17oKPuvHGRapPfUfTZ5Yqjjy9TYt0dD8jwL1s3o4p++I76gwnhWAhRYL81yN74vjGWFEeMuRoTwlQq4GAtWKb828mksDsuWC5ueJIcrFS8Pj1eDtqVXZIzNDNcUXOcq9CoR6Vk9+Y8rm6eJWVKCZwe1CR4XUvJ8iNsdGQQ92AIdSXHNoHhMcI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199021)(38070700005)(33656002)(86362001)(66476007)(66446008)(66556008)(110136005)(478600001)(76116006)(64756008)(71200400001)(316002)(66946007)(41300700001)(52536014)(55016003)(5660300002)(82960400001)(2906002)(8676002)(8936002)(122000001)(7696005)(9686003)(53546011)(83380400001)(26005)(6506007)(186003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?d/fDl8aqXUO8A6mA4h8w3hujAiXRalGE0lIorcTp1R/M/lbl5haOzjwXRj7V?=
 =?us-ascii?Q?aTL6xZesUw1yc2NPAG0PsqceI4u7/X16l5gErDEFxPyFddkrFfdkaKJoZ49K?=
 =?us-ascii?Q?JnQhicWkC4aCJdpqCQvSkWEdJwJP7FK758Quc3axme53v5BaeVkIj3OV5Hf+?=
 =?us-ascii?Q?90bHqGmXIhwYNFUi+1o7gI3+yOt+J/o4iuM7NFW1huuejb3Nm8lcxR258WIe?=
 =?us-ascii?Q?4pOdKsUkWT0S8HKic6GvrxkyKbYdiUTjUeI4D4OfsII/G3FI/QNTwB6d96N9?=
 =?us-ascii?Q?pZX4ubilhEZMFcFcvqoyHWsXmQnijKKUAJMhdeDIlbXTJ1og95P+mcX5ZwdR?=
 =?us-ascii?Q?uhgvFg+TKjn3Dy2GqsVLNRA8GNh3lSXjOpJfrgA/aoAkFB8Z3sUs1jwN+n/i?=
 =?us-ascii?Q?+RvT9295MnM+f5o1s2VFKVo+HzuVz0d/mYVV73xUB5IxxcIrshM7gAE6mQsC?=
 =?us-ascii?Q?M2RoalzstNHjwhNXf6Vl8UuJxDKmDoEsQcnKULZb2qa6ykQUdE+lU2XY2qNE?=
 =?us-ascii?Q?T+dsZckPk1yCx99Jpu6+/OK4odtoPqJfdxQGoJE9cJ3dD/d6Yw7EFYepVOTj?=
 =?us-ascii?Q?O38KDH8BhrjbybOcSmxXPGrkQZDZfFSxRyoBNI4P7IU3dHvCBNdE3PnGf0bd?=
 =?us-ascii?Q?o+KGsX80hl/To6PNBnFDbttk+q2GLc/veCO2Hh4S4O+6b3ZIXy6zJPNpvA1A?=
 =?us-ascii?Q?gydkMiH+MWcf9RJFEOHwACIO1Xr9SmB5gjO9VzZljbeBge3SsNu9rDaP8r7W?=
 =?us-ascii?Q?ZlQHJKAMMKLDmmvqkmjx1yl0CGxpNEkxjrjp84H6j18qnGlVDdy0gLvKVZvO?=
 =?us-ascii?Q?LU43XUWB6vg1ssv3RPd8i7WuNhWU7DdsXty4WKPRySrWhW1oeTjoozmd1UlV?=
 =?us-ascii?Q?nCSk7FQoPjFcSufDeEIR9mbOCGbp0TohkB2wqPjhLGcdkYvYwlkcGXmU2302?=
 =?us-ascii?Q?GoB4xRAEcY1VJCactWg6f+Iy7y1EaGNdZjaXR/2dGHiHCqsuULGjhrXAXgNO?=
 =?us-ascii?Q?y++xA9T8PqkCtSmecmN4UibnYLFCZEToNVmTEu5veqBKR+0PhL6jB7yCGJIN?=
 =?us-ascii?Q?kH5m3jYJp3EPQZTU8vJ/QvK21GbFaO6hNT8vjqFS3hFXByZ40i7ZLoQjkY7F?=
 =?us-ascii?Q?EaDmictHvq/eut66CB+iXAmVu29271/KvrLAqcZN4BDYvztm5tE613o1/JpR?=
 =?us-ascii?Q?i/YAO+LL0P9GtqiI5CPGFWkW3hgqvEUS9FcrZYjZ8MuwOHfEYIW0xXPJ2cZ7?=
 =?us-ascii?Q?Vawd2cabS1HYWWoiqp+mmvQsjM/Q6d4Hr6kNTh0CN70saaMIyOdZgbjNuUh1?=
 =?us-ascii?Q?Ls7pYhcfmYuoJnkPAG2M7lJ2fKTPSLqxi4X2MStOfaB/WgLSEo8WFUw8MMp8?=
 =?us-ascii?Q?hz/Js0Dg/HjkCVWsLJ2MIJA12RqhuHziG39L+u3kzoS4D/ULuJ43k5ylVXUE?=
 =?us-ascii?Q?4V3PlCzbIR3LRsU0Pzi1LHCy28gnTdEC0INpNCUUdfdorLGc/FA/rJbPP/13?=
 =?us-ascii?Q?IekuG13phLWljRhGDKiF54/hUdPnZ8+LpO3L+nHh6VIF+FVMN5F+v9Va25z6?=
 =?us-ascii?Q?X/yfwzE31mGvh6VIz8g6wb46HaYteZG6HnesdMYq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df644f6d-bfe8-49e0-718c-08db70bb70ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 11:50:55.4257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EX2pogUaJ4ZGfVgwOxd11RvgbINw4TNSsJAiIhtv5l6JI6DAKTtX4mr4ivrQqOIS1n5H//rDcO+EbdXTn2Ob+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7425
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp+: Allow DC states along with
 PW2 only for PWB functionality
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re Deak
> Sent: Tuesday, June 6, 2023 10:58 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/adlp+: Allow DC states along with P=
W2 only
> for PWB functionality
>=20
> A recent bspec update added a restriction on when DC states can be enable=
d:
>=20
> [Before enabling DC states:]
>=20
> """
> PG2 can be kept enabled only because PGB requires PG2.
> Do not use PG2 functions, such as type-C DDIs.
>=20
> DMC will dynamically control PG1, PGA, PG2, PGB.
> """
>=20
> Accordingly prevent DC states if PW2 (aka PG2) is enabled for any other
> functionality.
>=20
> Bpsec: 49193

Change looks good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_power_map.c   | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 1118ee9d224ca..5ad04cd42c158 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1252,10 +1252,18 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
>  	POWER_DOMAIN_INIT);
>=20
>  #define XELPD_DC_OFF_PORT_POWER_DOMAINS \
> +	POWER_DOMAIN_PORT_DDI_LANES_C, \
> +	POWER_DOMAIN_PORT_DDI_LANES_D, \
> +	POWER_DOMAIN_PORT_DDI_LANES_E, \
>  	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
>  	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
>  	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
>  	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
> +	POWER_DOMAIN_VGA, \
> +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> +	POWER_DOMAIN_AUX_IO_C, \
> +	POWER_DOMAIN_AUX_IO_D, \
> +	POWER_DOMAIN_AUX_IO_E, \
>  	POWER_DOMAIN_AUX_C, \
>  	POWER_DOMAIN_AUX_D, \
>  	POWER_DOMAIN_AUX_E, \
> @@ -1272,14 +1280,6 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
>  	XELPD_PW_B_POWER_DOMAINS, \
>  	XELPD_PW_C_POWER_DOMAINS, \
>  	XELPD_PW_D_POWER_DOMAINS, \
> -	POWER_DOMAIN_PORT_DDI_LANES_C, \
> -	POWER_DOMAIN_PORT_DDI_LANES_D, \
> -	POWER_DOMAIN_PORT_DDI_LANES_E, \
> -	POWER_DOMAIN_VGA, \
> -	POWER_DOMAIN_AUDIO_PLAYBACK, \
> -	POWER_DOMAIN_AUX_IO_C, \
> -	POWER_DOMAIN_AUX_IO_D, \
> -	POWER_DOMAIN_AUX_IO_E, \
>  	XELPD_DC_OFF_PORT_POWER_DOMAINS
>=20
>  I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
> --
> 2.37.2

