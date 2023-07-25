Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2178B762344
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 22:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B9010E3FC;
	Tue, 25 Jul 2023 20:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F37A10E3F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 20:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690316771; x=1721852771;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Z9lPXCwijoSdMKRoaLdwkPGQ5PVaSVMFnW1XIBGObO8=;
 b=hKVO//9oM9DUQk1gBvenv6PzZ8ZkiuZ/DSfEm++cs3UI2HKlMjhbLuCW
 CZAMs6lagsEbJIpRQGBi+phkWPkWIQJETGbDxuttS5ahCsW41XVsUyfE4
 LYjAVzJXbOEMv9GQ8K1GxRnGc0e+ZJMNt3vXaugQlc6f94EIajAf6rLKw
 xy522Q+yPmAHHRMo6CJ5KgI1RdgXLUV5adGjEYwfHOorrQoWe3APqn/bd
 Uly2B0dPa0nNQjZHqnP58MzrtcaW5fDvusGwgfz2dD7koYjt89G4b3Enf
 GTItFz1GYF3KflSLCZfiDS44e/aC1BzZJTWwPbsDrto7ph+YVHDhOyY5W Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="366717107"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="366717107"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 13:26:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="816378399"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="816378399"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jul 2023 13:26:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 13:26:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 13:26:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 13:26:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 13:26:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JQ4N4EuyLL330om6CGLwSOGt2F+oa6CogI8nW7nVlXAOkMe07qLyp8r2wYZ9CbGiL+1wvzyUxwLYVkRehQFC0ICRGlhnApydACUYr/+QBJSptbPAW9P2nQYfdzhkoHZYJKT7vWD9/+6VUWA7RjxTR9F59Q9RW7C7RTT7X87LfVn3Ax4gRsoJm43PGj+9K7iVFQaXITJYuqOuSVd4RfJJiBCKycWj0dp1WNTmlWUs7XRFUAuBytWQCnvm9iuNawgA8px1xTL6V/hX2Fhy7jvDqEzDfHFEQ7zZ4Yt/OeS4S+N14rhyqdaBGjLJMENtqCHXVSHgpBlYNz1IrW542hUFOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tEKF3Qsl3mhWI8bq23nsOdLy/agu/h0j25TbyIs5aeE=;
 b=CiIMUNregQnnqVPmqs8eWgu+vfdE2aXsygBAyKzYUMZi0r5/ZEeEy5L4zgYTza8c3fdlKOoMxgn8cueCZtX2IX/42EGuRaxhAe20+zTT+6W1jjINsWPkfIOwTGT39nmUwo6NYQXfzYGYMo+8aXkXFBCqzlinU/F/7UEEHPnEzliLu7+gTyiqVEGwPgcqR5Ie+GKUWsG28IPWajAm9IVpFTlgE12/SsuMFIgE8mshc7v4VQuIIH8p99pEsv6zNiignRwk9AKL7bulgA9NciUQ6k8KaKblA4EWC5S7n4zr3MYtqsBdQKWKW5i7sAn5/LpNxF5JVVaHYn0kMEFNvreTLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB8298.namprd11.prod.outlook.com (2603:10b6:a03:545::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Tue, 25 Jul
 2023 20:26:07 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::306f:ccd1:2620:a9d7]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::306f:ccd1:2620:a9d7%7]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 20:26:07 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Swap ggtt_vma during legacy
 cursor update
Thread-Index: AQHZqp9z7r6+eHQCn0CVdKPKHtmbg6/LFrpw
Date: Tue, 25 Jul 2023 20:26:07 +0000
Message-ID: <DM4PR11MB6360981E2F5D0B62CE6D1220F403A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230629153525.43222-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20230629153525.43222-1-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB8298:EE_
x-ms-office365-filtering-correlation-id: d46dd8ca-4028-42d1-91d7-08db8d4d6072
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CtMicXeTYex+k8OO8Aa5Bw3BlY8vC43YvfMuawlsdxvq70PxFxLjgqsyLaPudJMwe9cd/rYdMDIN5x3QVqQTD55AajxiY2Ytq464IIaOMcggEeKtSJpkDJSEAnDfReWiU5MGOw2vOpQgK7by/36+xWF9guInyqQnIyvfpEKg/qqk+BbSQbWpMV1YQhwgQiF1sgLHwFIW2/30XCOcNGnENCC5ARN+/owVucJlt/XKohORDk63R9OL1Rh4grwUnbGXpYoCTUFS4dxR9/Is2y+r/PyPh5n83m5s3+2Vz/aKk/1qjv6emn+iC7AmZazRpalXJCQ2zttiRNESRNuthBwixnLQEF6vwblabQyNKcjoKGzll/lLBcQGmIqFwb6xeVj5hsQmoAItwiZDBQh2jtn0Ve/lb1j7MEB5EnE/tISU7ZYMQQ5xqJETnR4GAXgCe4xCPSipw6DnwyBHowXkfdmxVTHda19er9wuRUWBO9SbrG0/FZIfseJsCNiuxAlNaZZ/2Dkr4hP56j7jV2HOerCWNRaIm0rfaTtZYozjkK+J2RSkgmzurffHlAUzes2pNs2ztXmTSM3D0XvVbcFs4FXOxQ1TYNRlF8aDWQcUBJEVM2g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(346002)(39860400002)(376002)(451199021)(2906002)(66946007)(64756008)(76116006)(66556008)(66476007)(66446008)(71200400001)(478600001)(7696005)(966005)(83380400001)(9686003)(110136005)(86362001)(33656002)(186003)(122000001)(82960400001)(26005)(53546011)(38100700002)(38070700005)(6506007)(55016003)(41300700001)(8676002)(8936002)(52536014)(5660300002)(15650500001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tcfpuxY0shzxdMj7EtVFkA7d8mSU9e40DsfyC4BsUdTElXrimzfDiFsbMcWJ?=
 =?us-ascii?Q?HBH+atlTA7USGX/hVsNistgINDjA4OwtA/KnHYX77Jbf8MEwAyYGqbo6dLsF?=
 =?us-ascii?Q?oRZHip1qqm/97BcwOpBheJ9WVBolinCOD9/63/KIhl/b0Tk3jjzU76qe0Eoe?=
 =?us-ascii?Q?6I7srNEhKltu7ZGL7GbYNxw+Hd5evx0BBygZKRO5wfg+JCWEh7t9ahWejcg2?=
 =?us-ascii?Q?BNpoRp50c7CR0Mx5FDavna+lpRTWCTjwF7ID5xKYNavseavxQB8l9bFaLxDM?=
 =?us-ascii?Q?diSrWRv1FhMeVjmcEBWaHzHvFoiVRli0g3NRIuoKypY+UMushFvoQxd4LsZe?=
 =?us-ascii?Q?NYFhJaGG3MVizxnSAuIQoDIP6QXbsVxvnqV2ovD2Psqc+KihXda1hMIrEVp9?=
 =?us-ascii?Q?1yn75Uv+sRL+noJidU9ZsEncuQUVEUqC/zAHxgyM2/IrFbFTkoKICwu7t8iy?=
 =?us-ascii?Q?8DCVr69aaFMvtsX5D7I2QkmW+LuDkUXheaWUOl6E8SafoXleU+BrbakXcC+l?=
 =?us-ascii?Q?ss0V0dFbRY0zD6BPkm/fjuWWzREGyO09HoLO+bSErwlvhYy4Yg/WJ0BOEnHd?=
 =?us-ascii?Q?ZE1VwrnVZvzJX21tE4UpxCayWnUVCNzW9+1E9qMFT+6ihee0MZgcvAHEeMqV?=
 =?us-ascii?Q?h7AkZ9/KQWwJ1nkc+MVoM13/kAKe+bez86CqJWej/9F/ciX0wgtB2L6DbzH/?=
 =?us-ascii?Q?R7DxBrWGGmC/E3SbdfbkKHwFYuI+7xlxdgJwFiE2ZyIkmGU0g0kgD0rKPRrX?=
 =?us-ascii?Q?g1JIylKUzNiCTJqFM54Z4HY1MkpRovnkvbJK/q2IqrOw3yFgLEeeNDImLADX?=
 =?us-ascii?Q?Q1Z+oAhUWgBnHY2pvEQw2XgqE2Oa7AA0nD1HHs4D8M6/x2H98hP2MeLQwWXN?=
 =?us-ascii?Q?zw+06cq1ssZfSw5zxB+X+DLW2SEdI/0Ej5qp3Mm/Sy5UijWoCyO/icbGLPpT?=
 =?us-ascii?Q?7K+W1QPxMxSxXg70HrsXTNJJ3fN/WOgkLW4rfoV7nNtWVBCxPHOTsRGrVX0k?=
 =?us-ascii?Q?ymx5Jg+yl//oqgrZegk44C0TKVhp5osLMnr/1TWklAWBk2uLvUcw/CBBiuKJ?=
 =?us-ascii?Q?Zxvp4mU25WxbaDE/0a2QFQmPYtvFL+15PM5UL668r7Uc2l2a7hDb2WEC7Vn4?=
 =?us-ascii?Q?LaYx/bZ+/5+gjETJ5kcog8GoXUGSjLxfMYz2SRq1DTgt03Enk/UF2vNXkOCf?=
 =?us-ascii?Q?P8MGiEtwjDdsH4SrjyBPGs3n7nMT50JBjHWnnyExhLAYHJY+TYw0GisdgCZ+?=
 =?us-ascii?Q?mfK5BrkDiZz2MplZuXWvB5/RPtP5iW3vF3yUllHAr34LnmNKyY50jXItTMTp?=
 =?us-ascii?Q?dK7qKcLE/S6uGbcwq5pRexvsbyMexkAi9cpeF2df8HBb2BYGcMSPt5vksJVK?=
 =?us-ascii?Q?3OaAQiizNFxbBYI4kwsKtjbeRDcNDSXENK+w9CvoLDx3mesx1faARbNdtyfg?=
 =?us-ascii?Q?qqhQFF4XG1/Ej2Hc4/u1KfKo3AbQjGRQVnhLWY9rpaRZIQitACV0f3gAmdw3?=
 =?us-ascii?Q?5tBVp4VDY2g4g1g846CEqOKCdYiZVnnDiCDuJP1iwrVeScoSnzt0wn/cgREs?=
 =?us-ascii?Q?DOsR6j4mpkEZl6WTROW8xMdFlvWas3SWqvkrlvnS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d46dd8ca-4028-42d1-91d7-08db8d4d6072
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2023 20:26:07.2961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L22gSB21IRFxLsFFyFnXMqMQPWPKzYnKsJ951CQhZL9f/c3p9vC1LIKDTrJHYUV59/DTMtfubB8B0dwuTQUqLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8298
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Swap ggtt_vma during legacy
 cursor update
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
arten
> Lankhorst
> Sent: Thursday, June 29, 2023 9:05 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Swap ggtt_vma during legacy cu=
rsor
> update
>=20
> Xe is lacking the ability to re-use the ggtt_vma when updating cursor.
> Instead of pinning from the new plane_state, move the ggtt_vma from
> old_plane_state to new_plane_state.
>=20
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 4962247911d41..6f34098ea314d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -688,9 +688,8 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>  	if (ret)
>  		goto out_free;
>=20
> -	ret =3D intel_plane_pin_fb(new_plane_state);
> -	if (ret)
> -		goto out_free;
> +	/* magic trick! */
> +	swap(new_plane_state->ggtt_vma, old_plane_state->ggtt_vma);

There are failures in CI due to the change, this causes device busy issue.
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120018v1/shard-dg2-11/ig=
t@kms_async_flips@test-cursor@pipe-b-dp-4.html

Please cross check once.

Regards,
Uma Shankar

>  	intel_frontbuffer_flush(to_intel_frontbuffer(new_plane_state->hw.fb),
>  				ORIGIN_CURSOR_UPDATE);
> --
> 2.39.2

