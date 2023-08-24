Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E84BA787506
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 18:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A7710E59D;
	Thu, 24 Aug 2023 16:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2582110E592;
 Thu, 24 Aug 2023 16:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692893780; x=1724429780;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kpKhceGrcYL9oDHDDR5kQ+a3YNfdvq74fWxggaroENE=;
 b=lQBzAVtAfqjDREsSN6feuCiaouSBC+UtZrpHyKky4vCjtO17PgzSvZky
 EUYGN6smbGa2dj372vnRxIeyyRtkivSzd/RK9OQmM/MdnRd5sa5hXY7pq
 tYWipmpQMkVPdDsVlS+yyeHxY/I7xP6kMZpgJrgVBkXgl4mCME3Vz1E+v
 0lp+n8qjvuo9DTOyadOOTSZQfo6Kc8AGcVs2rE/OuHxNr6wArCDNAQEkd
 OZMykMdBHG5llCMuSlZdKQwkt8RAAUIzLWn/Jr5qCyHP5LLu5AWvh5kJE
 woORB7yR/JEJ+tL4ZzdUC9KjXNP/qgzG7P0rxBX0k5hMX4GhdA7oMfB7/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364679159"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364679159"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 09:15:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="740258681"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="740258681"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 24 Aug 2023 09:15:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:15:26 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:15:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 09:15:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 09:15:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gH2RLfz8W4EG4pFGp0S/9P6n/83//8+NZdkD4RpM/t7fg5WMTWotQNv0on3CBCGrJARppeaW0HNPq5Zbd8T4d9DaWiVRYvjeh15kj23fBUjb2o3TYSGy4M5P1P6PB/6ono+5T5x3Joj4EuEEmSJLWG4WBBq6uAwE0O0TaY4cbgPbgthv+CKIezfCJ4uUW24zBy9FMGjOfKGTrT23NhoDKbju7XjxQkwWikYkMWGGup4oYkojaQCwzzf1PYlkqb3cj5If4CpfBxH1hJyVUJE1xS0M15B4Eos8He+0I2jDQi+oeil81/bhC/2M1bZYsrBAG/NetFRFHHji7dAlYuGzpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aC0xfo11xZU432TosVovZQePrQ2kOheBwsPztsYZIqQ=;
 b=BKaPYejaV0EMgwLSQ6Q6cWfzhoqK0CozOT+iG0iwzSVaulfb7YmpctrG3IWI0nbOSwoVNWHfdZBoYRtusiDQ/62Cu26UG9OGyONQFUCVcHaL5iTWNeX14s0Yb41CtRgo01tP6NGNlXZXNKJzF7NX/fp+5pi1dRytwZUda+ioekTwfKM5e8KFzM2jRp5UiQcM3exT6l6xG/v/zG/XoIW56mI0uOGtXZ68iyJzfv1eeX7IYrr1KphKZAU6ulHINMEeNferHJ6We3/ttrbMB6bkXllz9vt091y6kWLobrzpxuJWpr8exou1xPzJw9V71YdWc8zoLpr6NfC9ohqha81q+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB6442.namprd11.prod.outlook.com (2603:10b6:208:3a9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 16:15:24 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 16:15:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-xe] [Intel-gfx] [PATCH 09/42] drm/i915/tc: move legacy
 code out of the main _max_lane_count() func
Thread-Index: AQHZ1eS8E4j6O5q98kO4JFEg9UR6YK/47spAgACfHQCAABJTwA==
Date: Thu, 24 Aug 2023 16:15:23 +0000
Message-ID: <SN7PR11MB67507EC4E3E5D3CEB399531DE31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-10-lucas.demarchi@intel.com>
 <SN7PR11MB6750DB914E983DFCB1449811E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
 <uglddndjdywwvqb6suwkeqc64jjkxyp54nj5gsw7hcice36lqy@i33djkz7ivmo>
In-Reply-To: <uglddndjdywwvqb6suwkeqc64jjkxyp54nj5gsw7hcice36lqy@i33djkz7ivmo>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB6442:EE_
x-ms-office365-filtering-correlation-id: 90c9d148-4d3b-447b-44b9-08dba4bd5248
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dWxJdifEKNvSb/roxqsw1TV7fxWGka3Nms8uR4n1/HuVDiOBXD2VnPwZJ9b5gbU79WE4CPy3Uo1znJBPvfqbosjHpEN/oH+CstNq9r880lFNFQlxb9js9s4p9MuQIWT5uZjniHTpn0FZMI8QN2a4d9eI2VD9JCj/5W5Q+omILh0WrZW7sOqb3jRAEpxvozdfeoQVP8nFciMgFbiV0pkyyWwSLSCtJKISrNEesUgg91xmT/ubuFPscQjASNxGEoR2a3U3yw8pU7mN5SYz5s+FZEEylIkqRhoW48YFdCTvZztrDF56xqXWsYevqk4/Eznx4YGtmhm7ry7sQN9IpxuQnHvcMMLFScXjaR4FBJ/SNUa8IT55Az23qek0UxCbsPBWQXTT52KuuUjS8l3Fuwu1atiDoZB0srFNd/1CW7DMqJmdqpRTUHatkEeqCeZfBe0C/HPMjDpITMXLsazF6D6HpaIPHqvFpvJaUmOMTSmOSRDrzpN15jrTqY6OvAaeV5zc1Ng8lcoppGYxvmzMzYuJMzg42XO4KZYv84j188Z4EaPb2hWtg+xYHK+n/apJ2UlJuuP7A1DpkOZ0bao/MvSuoMvVdVvgA5xDOqrg6O2GosZPG4UjXAfzINAY8pdpaT1+DPQDZxmIYEQ86LYQVzKgIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(366004)(39860400002)(136003)(1800799009)(186009)(451199024)(52536014)(8936002)(4326008)(6862004)(8676002)(450100002)(83380400001)(5660300002)(107886003)(26005)(55016003)(33656002)(71200400001)(38070700005)(38100700002)(82960400001)(122000001)(66946007)(76116006)(66556008)(66476007)(64756008)(66446008)(54906003)(6636002)(316002)(478600001)(966005)(41300700001)(9686003)(2906002)(7696005)(86362001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?n8wEvvkpaKklzNQ0c2ihpXIs94xwILLcqCVXvvL69GuT03qOL19/R3AlBrzD?=
 =?us-ascii?Q?FkrrmKn9ETjqxz2xBMrmw423SRs0M1eLFcOptn8FWGBrpQupreccnM+Z5gFp?=
 =?us-ascii?Q?UAyEvudI4m9XQp8PHMEO9ej0/QB2Og7+BJVsqiJL2e/R452GFgDchE+QGuFK?=
 =?us-ascii?Q?2JbRBoLbKS1r/tnsWAFng5iYvf6otU4ymw/oAAo9qz+nvrcGWd3B4xaQjLbi?=
 =?us-ascii?Q?acQuJ5ickTTv/OaplBkbA0ZFHsgy+SuIXf3rtCEMQhveX7uRxbfLnu8qLOWC?=
 =?us-ascii?Q?MHzkKsuE2RJ5DYhF0/m8aSkys1wDkQMNjn5uq9Fh5KjhgufStiQ7mBNOgweC?=
 =?us-ascii?Q?0gwg+LXRkYvaf8VBCORbnr06o+f3MTIOWk/PoWHHiCcKj4A919fnm2Ll7nsz?=
 =?us-ascii?Q?KE+Y5xNAnzQBufwHCQ1wUbHAw1zbHSJQsE4Xx3zUQI9iQyKxNaR5HpsYke7F?=
 =?us-ascii?Q?p0ZRAL9FaL6dYZu+Mtt14MYwRP0R5seQc2RgwBy5iT2XzDF06COnLVDL0eJw?=
 =?us-ascii?Q?6XIQzFY+CmS+A7KUqNBMkdVdYnkt/EVg3q4ABN2aRCSzj0OpZCvk7+8oJfCH?=
 =?us-ascii?Q?fKi9ifG3mNJbbt/SStdEYexw0q5dR3cm+s09tXloOKWNSIwBWmXQ9HEm+uZe?=
 =?us-ascii?Q?CC3fz3WnwgzKb5U3nbFKPuj/oVvWFdJHivPN3h2KNnfubc/67a7p/ZprXzhP?=
 =?us-ascii?Q?PDk+/TvX3OOjmYrWE1viLQtdv4BfyyPoFExd0bzoMAkxYfDLIvf5e5HOTDbK?=
 =?us-ascii?Q?/dw2JxSaUGzo9fxfK4CuNwVrChIBrkDEPgiGWf54NBlEKbetE08NveZoZMG6?=
 =?us-ascii?Q?9i377UON7SkYfSo9nOcB7FckKjV0E42WxsMpUujqJQqYOqc5wlAl5dJ4O/hU?=
 =?us-ascii?Q?JdlWIfV3CZCcSqimWVc/EAUOFXpAvZc/TMYgYssJqQB/phiXaBg/yC8vUvgc?=
 =?us-ascii?Q?i7GgYAvRJP36Mu7bWDvUECz+Q47UCbUVuScNNaZlaw84KbA2c1pPrtV2OilE?=
 =?us-ascii?Q?YMcSIzHgE8yoz63gdU0mEO8iNdsbWCPb1a1Ld9FVQMWMz4SvhL2d8rlVkith?=
 =?us-ascii?Q?vqI3u78uUm/2T+x5diBMIL2m/m4gFJI1c7C7+VLhcLNfVRO7uVop6kR+R6W4?=
 =?us-ascii?Q?LUGppYObb5mrI7fqFQNgxYw4Zx2HA8C0/w2tU49QaMKjovf4Tf0lNF3jr572?=
 =?us-ascii?Q?qO2LXp+gW23LLUz02nWLeMSktMwEB4/Dzo9HEQCVC+OBE3y5M4k4L4VoIQSK?=
 =?us-ascii?Q?+ZTNDQdnaFmwMzYjyzjWSTpZqyFLryLqskWt3z5HCE+YTLjeD5rdqQVsHFpB?=
 =?us-ascii?Q?sSuuQRyPKUQkuyYrw2ahsDJkvnza7WsrLTxqQU27yRXRJ4DLyM6Jkc2kXvtQ?=
 =?us-ascii?Q?xjoRgoEmhYMehFu0E5BGhDIIjdG+J0oN8TBwdXhE1Fr1ZzVZxnjRuUW2/Ygj?=
 =?us-ascii?Q?ycP5hkFM5AvDmDWF+4sQlLlCu0f2/l17rDncV+EPvSGPPg9yp1dZNvSOAgFZ?=
 =?us-ascii?Q?ozrqGtzF9+4RUnx6HATgURwx5+CSAdk3fRPuAJj/ClMx1asD1hPwrYk1dz/O?=
 =?us-ascii?Q?1EQhQwIA75f9af/2qAlxMdfMF29Nr/OY6LAG0LJ2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c9d148-4d3b-447b-44b9-08dba4bd5248
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 16:15:23.9294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kxz6ttxrnz029KKqS/uXPTIWatylas/Vhg6SB7JdD3/gEY3qxFUCBO3XE680BEm39aknuRyMi/6PdFr3hw3ZSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6442
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 09/42] drm/i915/tc: move legacy
 code out of the main _max_lane_count() func
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> >> Subject: [Intel-gfx] [PATCH 09/42] drm/i915/tc: move legacy code out
> >> of the main _max_lane_count() func
> >>
> >> From: Luca Coelho <luciano.coelho@intel.com>
> >>
> >> This makes the code a bit more symmetric and readable, especially
> >> when we start adding more display version-specific alternatives.
> >>
> >> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> >> Link: https://lore.kernel.org/r/20230721111121.369227-4-
> >> luciano.coelho@intel.com
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_tc.c | 32
> >> +++++++++++++++----------
> >>  1 file changed, 19 insertions(+), 13 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> >> b/drivers/gpu/drm/i915/display/intel_tc.c
> >> index de848b329f4b..43b8eeba26f8 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> >> @@ -311,23 +311,12 @@ static int
> >> mtl_tc_port_get_max_lane_count(struct
> >> intel_digital_port *dig_port)
> >>  	}
> >>  }
> >>
> >> -int intel_tc_port_fia_max_lane_count(struct intel_digital_port
> >> *dig_port)
> >> +static int intel_tc_port_get_max_lane_count(struct
> >> +intel_digital_port
> >> +*dig_port)
> >>  {
> >>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> >> -	struct intel_tc_port *tc =3D to_tc_port(dig_port);
> >> -	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> >>  	intel_wakeref_t wakeref;
> >> -	u32 lane_mask;
> >> -
> >> -	if (!intel_phy_is_tc(i915, phy) || tc->mode !=3D TC_PORT_DP_ALT)
> >> -		return 4;
> >> +	u32 lane_mask =3D 0;
> >>
> >> -	assert_tc_cold_blocked(tc);
> >> -
> >> -	if (DISPLAY_VER(i915) >=3D 14)
> >> -		return mtl_tc_port_get_max_lane_count(dig_port);
> >> -
> >> -	lane_mask =3D 0;
> >>  	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE,
> >> wakeref)
> >>  		lane_mask =3D intel_tc_port_get_lane_mask(dig_port);
> >>
> >> @@ -348,6 +337,23 @@ int intel_tc_port_fia_max_lane_count(struct
> >> intel_digital_port *dig_port)
> >>  	}
> >>  }
> >
> >Rather than having two functions:
> >mtl_tc_port_get_max_lane_count()
> >& intel_tc_port_get_max_lane_count() that both call:
> >with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
> >                lane_mask =3D intel_tc_port_get_lane_mask(dig_port);
> >to get the lane mask the us directly pass the lane_mask to the above
> >two functions and make the call for getting the lane_mask common i.e
> >lets call it in intel_tc_port_fia_max_lane_count().
>=20
> Maybe, but I will let this to be decided between you and Luca. Pasting fr=
om
> the cover letter:
>=20
>          3. Patches 7 through 10 can also be ignored: they are not
>             applied yet, but being reviewed in other patch series by its
>             author[2].
>=20
>          [2] https://patchwork.freedesktop.org/series/120980/
>=20
> The only reason I added them here is that since this series will take som=
e time
> to be applied, I figured it would be better not to create unnecessary con=
flicts. I
> expect these patches to merge soon so I will just drop them in the next
> revision of this series.
>=20
> thanks
> Lucas De Marchi
>=20

Ohk got it.

Regards,
Suraj Kandpal
> >
> >Regards,
> >Suraj Kandpal
> >>
> >> +int intel_tc_port_fia_max_lane_count(struct intel_digital_port
> >> +*dig_port) {
> >> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> >> +	struct intel_tc_port *tc =3D to_tc_port(dig_port);
> >> +	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> >> +
> >> +	if (!intel_phy_is_tc(i915, phy) || tc->mode !=3D TC_PORT_DP_ALT)
> >> +		return 4;
> >> +
> >> +	assert_tc_cold_blocked(tc);
> >> +
> >> +	if (DISPLAY_VER(i915) >=3D 14)
> >> +		return mtl_tc_port_get_max_lane_count(dig_port);
> >> +
> >> +	return intel_tc_port_get_max_lane_count(dig_port);
> >> +}
> >> +
> >>  void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_=
port,
> >>  				      int required_lanes)
> >>  {
> >> --
> >> 2.40.1
> >
