Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8339A7321F6
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 23:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1FE10E556;
	Thu, 15 Jun 2023 21:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 312DF10E556
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 21:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686866121; x=1718402121;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7T8Fi7LtyIIMpibjFIkPhzbcdQJBWKoquLgpc2naupE=;
 b=E7E2FUexeMUGuQUvRy9Jkfm8a4egUmN7UqFP1WTQZbdpTYTq2rs448i+
 qx5MyesqMeLqfQWUGLHsguAlbCnfNfzdwVPrafpoq8PYzNTDnb2NcRd04
 pe6VCTgwMGg+/Rb1th3ndKq5WATV12J6u22dHzHlYmiYizorJwEAvbYAf
 0owos5eYGvncLGCP3i/TI4wgdOdqdEZUMRofTwKFK4Exk8UxWWx0cxOfo
 rwQNPvE/TOGmsqpJs5aprbQ693OEwr6fNVMG0D16UGhojsPyjOsW4iJKB
 jrUd/VwbALhddv5fvGVQ2xmQS7VaiYOFeG6FgejdCLaYySXdxDJHWAvEq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="343789867"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="343789867"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 14:55:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="715766540"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="715766540"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 15 Jun 2023 14:55:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:55:18 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:55:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 14:55:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 14:55:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EK3L0o2O5kaCMD8uZ/SGGBHY06YRr0U3yhhs+m42oep74qoUFnvM60S5BswSz5wGjFc6htUlZJEkvlRGT6BLN4I9KNvQb396GKBH4IUqANmvFGU9wX3Y84ll3a/ZRQVfhVM2sobBhcx4CkCjNjUSXcWhnqY4pbPmsenInyI++FrPFEOzsVrp4wR8Vii2HHGK+PlfkNagRzOjDhkGizzlHd7o3euqdlKH9gg8XuPFLckAV5OjddIVxNKYDmPK4BqUoskM2BNVlcFIUaYu5e5yIpnB8HtbY2cuhJSxa51kUEJgysRZdVGUAfxvAwbgS2Ix8+CKocQ0hXE9flc6i/njUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5zZ74RhnyUrrLHbiL+w5CbinmWg+QKz4Jt1trrJNFd4=;
 b=MmRVQ3iZYPatPmoOPEezBh8seZN+fvSgrXZA5KD98KGm5LLDH0LMhRg0vRiRhDoQLBRbrYa/wm5U2ULMUCZ3QpU3gZzfZLtwyWvRvmj2mRYUaKlSUowMzPJ92giWE/CS4BHO2/fttPQ+UqX2lAzilrWRPOFZQOMJuGmleB5VrJMksx/Sr0/XfcoidAgyBj7U7jMfLcwozLtbUKi7QpdzXf8hXpNHtBEd8C55N8DstivKHbCbegiJdcCK4Y6hGL1x98EqFwTDX5drZk9gf1TPOwFrVkHPfiwz0qOFFPmDrDSSEPcaI77yj7+J37KVDqSzPlxpimhrsXaKwTIqhusu3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by PH7PR11MB7642.namprd11.prod.outlook.com (2603:10b6:510:27d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.28; Thu, 15 Jun
 2023 21:55:16 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%5]) with mapi id 15.20.6455.039; Thu, 15 Jun 2023
 21:55:16 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 00/11] Replace acronym with full platform name in defines.
Thread-Index: AQHZn0ZVBCqlMLBUKkiDXjJpqfzRTa+MaJkQ
Date: Thu, 15 Jun 2023 21:55:16 +0000
Message-ID: <SJ2PR11MB77156AEF4B5CACBEC64D7D3BF85BA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|PH7PR11MB7642:EE_
x-ms-office365-filtering-correlation-id: 08f98f81-5385-4af5-7d02-08db6deb3433
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6uYwkKcgOaL9Iv0cXtMwcPpqoUq96OjFTRTi++Ar1N9Huwa7Nhx+mQvjdfMbRLoa3XoEPFZ7BRq/h/t+wZbYzWz50LlrA9x6AkW60ivTv/o7R8sUPe8X6Z0QfdIHEHSxGZYQIekAbQ8T/iCWz5h/K5cfOOzpmwKDKyXnZ+ap8LKBdsIwmXszJz3lKIOEXuD17HCxrryYIvdbJ6b6EoQ4rvMK1L4xW5W563C+bXDw5FrxlZhSnuzW/P4A7lU5qgvran/vZSVEWY7Q7sOAB4O17ilXEbNfBdJZ5cp0Z7XrOph3fskyBT1WP3USRivxL7YUw3Ik9PIOGkNObfhJ2Qj+7JR+QC97kh7hhZpIedLE0UBLue4rIo65Mx0KUk4eT1Okmkbu+Ri4aeBJmoike2cX/veszJCmU42kYz8dzC/OMRgQuttv+JEPNY4wSIf1dFtPsjMs7O97UwQCOivyFRFV0eeV2pX7XrO5P8h4MKzJsn0IV29HKaAMTGCakse5eOXMNPo08XU7dXVVTT9ylN7Ykl3fKsCO4Vqb646npqn56MhJ3U6CzAnZvlO1A9uSlHdPzuczn3eYkz9buF/AZcT3GFMQvsEMZ/gmpQ/0wisF0LQkkYL/Sv3HHvYE63iJ7AWo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199021)(66446008)(83380400001)(55016003)(66946007)(4326008)(316002)(66476007)(66556008)(64756008)(38100700002)(33656002)(82960400001)(38070700005)(41300700001)(71200400001)(7696005)(9686003)(26005)(53546011)(107886003)(6506007)(122000001)(76116006)(8676002)(110136005)(86362001)(8936002)(478600001)(5660300002)(52536014)(2906002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uO2HIXWU8h2lyKFQJf+RX+mB0l/BGu18lgsmoDV+GRhwvwgV6poZZYwkR1jg?=
 =?us-ascii?Q?I8DK0g3cs5dPgUxwLQ25tPdt+gRbQ1Yt/GpZXRD8ikMagiBw4TcF9Zfz51cx?=
 =?us-ascii?Q?AUP2JlxCdTw6rqeZJZi5yQENSIBlB53zWLQwz2//98iIqMDfl3tKrNuB2Jqo?=
 =?us-ascii?Q?FaLHvO5gounckaEw64p4uD1UoqtwpB3uqSkdu5O8+Re+CCfP2JOjpUunRTK5?=
 =?us-ascii?Q?VESSYeKQ16VfL22S1T0iBoJlJ/6adcizQ2tUAhoLInZP7+XMvD6jxWh48WMo?=
 =?us-ascii?Q?Hc10I49+BEKa2RfbMOQ5fv2yNG2l1e5jLGjeGqQkYoUebbABf3MET+XdzyRo?=
 =?us-ascii?Q?GOQTGhfvGB/cWjJRCZVsvgJyroFYQU3unnj+swCfKuMon4gmy0HlUovaEcvQ?=
 =?us-ascii?Q?ReFVGi37VnjnIh7Adk8aEDiG4wfk8CWTyHp+8Gig+QQ+EVG+o5E8bT3Z1ZBD?=
 =?us-ascii?Q?4Zr6NqBG+CQZw+gsdjVN0GPsZEZyAwM4z3DgSIi4MIyK2L1qCfuh7HDvNwqU?=
 =?us-ascii?Q?ByEU1MIymGvlOn43nHvRLVNQds9G0REdi3DX5TjA33Y7DRjkbSTku7rMYZy5?=
 =?us-ascii?Q?S72XJC5GsLw9WmMD+V+O5ulNPqF8DTOYJCOE8YgigQrelwoMWH7mnx801JGo?=
 =?us-ascii?Q?N7q3uoKtVqYFEGb/FhhYXruBf7nR0R2af5Vc68y4Y55IyTLBoP06fHbGuXhq?=
 =?us-ascii?Q?1Wy6RUIIss9JqZx6/g+owYfg7p0v6x19TYAgfScKQ1CmrYQizx1S1gdf/MPh?=
 =?us-ascii?Q?7Gqv8vuQ+q7bQD+k3qddUHbkrgD7y2PGbDN0IbQ1tzQER6YtPxhYJPQOzggN?=
 =?us-ascii?Q?+DwWzvYEEA+cCIZThpyB9jLLeOOTZMUNYrKbhUd5jNWj9/DHJTwwR+505boT?=
 =?us-ascii?Q?lr60WNw/V+yEyC7Dx3sDW9qS9AI/KCNZ9wc9utcM0fBgjVmuzDhIzgk3AW5a?=
 =?us-ascii?Q?UR6yNr7NhkMIMJdQOp43QphoMH0V7/Xg95wZIGH6cxrGyDuPbFHTd31SrS9f?=
 =?us-ascii?Q?meFWksrHWLs7pFiNfNGv7iVOrfmLdfHpmxnEnFLRR+Z5GBH3c9mTscaXfARd?=
 =?us-ascii?Q?sCFLL2ompE7fMiyxkVIXr3D0j++cerF4hlKRYwDlqpoFh7mcktTEY3y1Zb2U?=
 =?us-ascii?Q?MBx5NO/qUUoXy5glkTfcbr5pVbjGJWnVzbk+199pfB9YQB04F26uT29uag5j?=
 =?us-ascii?Q?FK264Bn/4unU6IvnLfoh+AfAfZieXTlHAWK/L/0Ez6x96lIwIlYkLG8fFapW?=
 =?us-ascii?Q?9FvGFYkUPGwzb/ivPCbG/CHh5MHHAznXVDsd2RWH+ezQoMYaamwrsi/+Me5z?=
 =?us-ascii?Q?pYP49g6giaZP3A5BEIOPUCjRYB4VX6tjBse5NJRRzQjmamGAvJuaVmQ8+NtJ?=
 =?us-ascii?Q?znhU15fvqhYMO3zRXzyCwjpqVArEHZgUPbc9WMxjxGCKr3YfgqnnHlWSdEd9?=
 =?us-ascii?Q?TGFPkTv6kZcQIjyTTntCXZabAGEZory9WXUmWhtpghRzhCWnUEd/IF3M0fPk?=
 =?us-ascii?Q?HJIOMhlQaUMgvprOZ7MFct+mc05vtK8E5LJxYJM0vScrdzqvzf1H8J5E9RMA?=
 =?us-ascii?Q?YMqUE0e/D6BsppPBmeWX+nFHi8udAUGEpGYtZHi1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08f98f81-5385-4af5-7d02-08db6deb3433
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 21:55:16.3195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KiWA1y2lVGeI+Mr+VKPdnCHe6bcRtYwAI8GFMu71+Io/OtI824RlVZEXSTqQLvI0YaXfP3Wi0D31QvU5c8Q+GBhKm3iaWKMH/jjir7PUENw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7642
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/11] Replace acronym with full platform
 name in defines.
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
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, June 14, 2023 10:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Atwood, Matthew S <matthew.s.atwood@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH 00/11] Replace acronym with full platform name in defines=
.
>=20
> Replace all occurences of ADL with ALDERLAKE, TGL with TIGERLAKE, MTL wit=
h
> METEORLAKE, RKL with ROCKETLAKE, JSL with JASPERLAKE, KBL with KABYLAKE
> and SKL with SKYLAKE in platform and subplatform defines. This way there =
is a
> consistent pattern to how platforms are referred. While the change is min=
or and
> could be combined to have lesser patches, splitting to per subpaltform fo=
r easier
> cherrypicks, if needed.

Thanks for taking this forward. I have reviewed the patches with the only f=
eedback being use of lower case in the subject prefix. But the series also =
needs platform reordering. It should start from oldest to newest platform. =
SO
Patch 1:SKL
Patch 2:KBL
Patch 3:RKL
And so on. Order being:
SLK->KBL->RKL->JSL->TGL->ADLPS and its various flavours->ADLS->MTL

Anusha=20
>=20
> Anusha Srivatsa (5):
>   drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
>   drm/i915/rplp: s/ADLP/ALDERLAKE_P for RPLP defines
>   drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
>   drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and subplatform defines
>   drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU defines
>=20
> Dnyaneshwar Bhadane (6):
>   drm/i915/TGL: s/TGL/TIGERLAKE for platform/subplatform defines
>   drm/i915/MTL: s/MTL/METEORLAKE for platform/subplatform defines
>   drm/i915/TGL: s/RKL/ROCKETLAKE for platform/subplatform defines
>   drm/i915/JSL: s/JSL/JASPERLAKE for platform/subplatform defines
>   drm/i915/KBL: s/KBL/KABYLAKE for platform/subplatform defines
>   drm/i915/SKL: s/SKL/SKYLAKE for platform/subplatform defines
>=20
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  8 +--
>  .../gpu/drm/i915/display/intel_combo_phy.c    |  6 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +-
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 10 +--
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
>  .../drm/i915/display/intel_display_device.c   |  2 +-
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 20 +++---
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++---
>  .../drm/i915/display/skl_universal_plane.c    | 10 +--
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 10 +--
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>  .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
>  drivers/gpu/drm/i915/gt/intel_sseu.c          |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 54 ++++++++--------
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   |  2 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 64 +++++++++----------
>  drivers/gpu/drm/i915/i915_perf.c              |  4 +-
>  drivers/gpu/drm/i915/intel_clock_gating.c     |  4 +-
>  drivers/gpu/drm/i915/intel_step.c             | 10 +--
>  drivers/gpu/drm/i915/soc/intel_pch.c          |  6 +-
>  34 files changed, 143 insertions(+), 143 deletions(-)
>=20
> --
> 2.34.1

