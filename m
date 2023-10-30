Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 150087DB2D4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 06:29:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5734F10E201;
	Mon, 30 Oct 2023 05:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E829510E201
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 05:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698643791; x=1730179791;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ApbMNQIRHXJA660IvMww2279doSL3JDiw+BKnTY4QzQ=;
 b=NeXys74C8rIDJfLt8078sA+rMUm33j13H7V56dKAmmr8k3xJxl8ga3hj
 lXcIey5lkbdLuMT7JLPQYop84xuFPhqAkwX2aYyn77qcAqhv5zlNhyqNc
 cJzyEPMu+J5tbn1ZdATmu5r8l5W6u5aVNGk9wSdAf4Ix+erCMv+/sbTV7
 wx5yZ8WX+YC8xLAzZ0ZfB6bGMwhZEgz0qroh2FoXQ+cWwrJqxEe9cSjyR
 jqV10vtaOttyqzFfSR3vGYS0PxJ8IaSSBYQPuCDdpOiHpJdrOcwyvYS8e
 js4QegRzQCrWB5sySxrd/p2EpPlOEy4MfuohgPflH6eJyAUiLEDCU21Y7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="367359439"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="367359439"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2023 22:29:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="933675718"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="933675718"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2023 22:29:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 29 Oct 2023 22:29:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 29 Oct 2023 22:29:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 29 Oct 2023 22:29:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 29 Oct 2023 22:29:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WdZliyBs9OvN6hCJQgQqkYyPuGhwNk8qHtfSs/5324bKoHPWHUGVtLQSuP6LtsUM93OeJSpo3UkLRMJTfttjRolRA5hUp6hOnEf8nij5sHoR+XjpPquVqmxkWD6UNvYBBsf65iA2EboeOa886IsnpTZ12Sl81Ud1Xcz+6TWHUAL7KhypBv0is7D6qeCryqMH16PupU9QWRjOJ0jrqzUd1dPZIj57xCB0h1I7zqsdppsGeWhgQ/osirv4HBWrQy0x9C2L9bFauM7jK09R01Lh1mAB/aDZiWexOBJgJP8VpXrk7c51EjTZ5eLOdTFnmE3vqV1QwHD6a4SVB0QG3Mzq5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IOIUD4CWHO+mEEAPrOEsDlemnXhTQNq9hofKptE8d5I=;
 b=KrG7+ci/sL6p71Ez10B8+4m4mKky6q9ixM24g5W472aZI3OHFhUycYcz4tGBxrB/VEYY//7wHBsSEXDcQATOy99EdK0B3fBFVRH0HHWXd+o5FXz8TE/a6SsWFcukbN0o9Iy54qp9LDdGN9tmQBxsvJHqevkqSPToJmdT4oC9p5aG47c7y05225DDuAitQZMW5yIZ1BTv9b4zclfx/CYWKlbJDyzJwQsLO3MGT3B0bNPUxeW8HDtU8R0Hr8QbPn0rOeHDw6aoX+YLQ2bREubm1Qd6SR/5uqRJbMwQN3DgftJ26ufytqCE5XtySPHXuuXSTboyK3xSR/u4Mno7J9+OQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 PH7PR11MB6652.namprd11.prod.outlook.com (2603:10b6:510:1aa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.24; Mon, 30 Oct
 2023 05:29:46 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.6933.026; Mon, 30 Oct 2023
 05:29:46 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 29/29] drm/i915: Query compressed bpp
 properly using correct DPCD and DP Spec info
Thread-Index: AQHaBhbuy04YBjuN70KK8ww2nAtlw7BduOEw
Date: Mon, 30 Oct 2023 05:29:46 +0000
Message-ID: <DS0PR11MB87401CA605E3247F876F2FF5BAA1A@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-30-imre.deak@intel.com>
In-Reply-To: <20231024010925.3949910-30-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|PH7PR11MB6652:EE_
x-ms-office365-filtering-correlation-id: 33b3ac4f-a6a6-40ac-121c-08dbd9093a9c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a13hMLUoEwfWMJWoWk/g4vf2OQWkSC95bu3/Zcwnp4CM5gs4cpEDxcpjT4GEb7ZfJJbVcA6SLhk+onmTqeurcYQGyQ37Pd+xd7+y4QIhwClxjLczieg0liFN3Bpdsv4ighISxIqchT47vZ9J2TDtjQTolMaDW+/UXa0au24/KqC4lludfdukujhiyesdKH0hLbC/GQ1J3n9jQaSMOracbsisOLGlP9nhZEGSToMEiBjcbd67JDYdoRwMLnsxZtukFTXOTtWq1y8a4IpgncwaAuHmbUZIesxCqgRBLLVHhu7C1hsgLypuApO4p0A1BELAVdDCmovxOLXxROJ85suFfw6TUPKfDk48F1CzWIpBbc5O5RnSNApB5pCWaM1EC5Sp3btaL+RK2l6vjspImFTztsVRyxk5dN802072gjwk+vTEJoY34btLBIPoKx5/dXQ2QPhkEmB0F1RBHWHk3LZPQB5eD2f30gMWNAQ8fExI7Hix6SfA3uA80YjGPI2/5svEK2iIcrpEU8S3BloakjfeNSu3VUXQC94hrvR+faSwWmVS17cFhSCfOyGWV5p9GTsagQmm2LznLgXfjX6zT6ewcdWxjQNeVLHM7ne25LN2jrv1hw+oK0ErZxeEFEZJh6xGj2cXa3kC6knpGo2bWqcR7hnTCOY42CizwH758SRccH4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(396003)(39860400002)(366004)(230173577357003)(230922051799003)(230273577357003)(451199024)(1800799009)(64100799003)(186009)(52536014)(55016003)(26005)(55236004)(9686003)(2906002)(38070700009)(82960400001)(33656002)(86362001)(38100700002)(83380400001)(5660300002)(6506007)(71200400001)(478600001)(7696005)(53546011)(8936002)(66476007)(66946007)(122000001)(316002)(66446008)(8676002)(76116006)(41300700001)(64756008)(66556008)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RvEaO8MbNGGQOohmfBAekru3zmsVJmjfYyb8GpIi3SBRQ7FsXVLNYf6BlzmW?=
 =?us-ascii?Q?ZBfS+2IFYEKTlCtbmZmyYGUJVG4fqJgRltGlER+STe2US8nKuEz63YWCxl10?=
 =?us-ascii?Q?IE5kSZxOZe8NGhMPRMkWXdR0HIrTuMBaSDpw/NmjNlST9dwDprz2wmyQzfAb?=
 =?us-ascii?Q?ONIhAVxcJfY1rbQ0WVgM1IXd1bn57G3gIfADZO7SWcPWjzSsEn9w1QmxZkT2?=
 =?us-ascii?Q?d08ypYPETEaOHbT0tcMBKWE3LT1Xzuh8zxm51rdyAQE/PsAx6pTRubpzcej7?=
 =?us-ascii?Q?UiY79NhpOQElzUlWWi9TL6PXUNtnnX8YlG17j6Ax4KxQoH4wy9KEnenaOO9k?=
 =?us-ascii?Q?jP3RlIRTgFoHrGtCHVCclmbJi62D20KoOtVGGgT5898vaOd7LuKowzSfT7vK?=
 =?us-ascii?Q?5eJGc4XTvHxy74x6zmEbp7j7SmnuBj1lWBjOg/kIGT+LEh4OpulAKCnJBbQd?=
 =?us-ascii?Q?vzjv+EvMSqHb7OEeCMc1lcyCJJTABpyYfIa0YKf56rBR1Na/0FUNf3iKa6K1?=
 =?us-ascii?Q?tV3YsPTjGccOtuHLhVaApqYp9ukuBifuWTkwh8NZOKxPijf2WhX1zzy+wxlb?=
 =?us-ascii?Q?Vhc0YmEnOY6poejU6jAf6Oc7z+k7nwkoPGJB5T9+y9NN+MFgcOV1iIii8YW2?=
 =?us-ascii?Q?Erdm55Lm92LZOA/SnrTZHMWnMRZKqmDx9ZZud1gZW6uNwLfkoEUwmnydLVdM?=
 =?us-ascii?Q?ln1kE0dVK/VqA/nI6wAZfbHz0gKAISzJwGHZ/7yn/ewlaWvyfxaNXOtQMXir?=
 =?us-ascii?Q?fcRYQnGRO/Mhkr7mQeQ1m8hWDocGyapW9qQbMSuR6xvvZzy6xK2QzfzA4/YI?=
 =?us-ascii?Q?8HL0PU0N0NtsH/bd4u80zNZSo9ltE9fE9Poisn6lf8gPSLyFelAElA72ZicC?=
 =?us-ascii?Q?WnphMIOcgQdtnsMURTSwoDiIjsLHQDZyQtadBaMwHUxq9IHuF0hCQmHDHlyK?=
 =?us-ascii?Q?t2UDnLvRjr85FcpdpBRnY1uz3M40I5K2nhzD8BaIYGPwtJe0aS2uHXNS+KUV?=
 =?us-ascii?Q?TkUIfxcd2yHt+q8jJ41wyh714uHhe5xz+HP8bmLPayYDNCeQNSeCnRmbIoKW?=
 =?us-ascii?Q?RXm2Jh28c1jE7kALg5x4Z1Bsq0bRQd2lcqK8VGiMw4kk/9D6C1/pJbbqjouh?=
 =?us-ascii?Q?pgRACj3/t91R2StqmP6y2N4cy/k6IicMh7tUW6NHQEKwTgQAClbr+acBfNoQ?=
 =?us-ascii?Q?sEnwmk8QBoxgagXkEqUHwumiF4e/6tp7TgSj6VJB1FIrhq/dGXew57jpxEEk?=
 =?us-ascii?Q?JnjdWglZXz3vE8KaO6bB6dHH1r1U5FAY+SZUap7uHeiCNb5doHW9EivEiBRs?=
 =?us-ascii?Q?hu6P+JimlNddwo/H7rXVi9RleYHt49qgw1vBULvfUK56u9Nt0jo0tyChSb3f?=
 =?us-ascii?Q?WDDbJRp9YnXK+sMyMIZZo2UazipIHXgWCFn3r+jaIBBBoNfHh5WCuaKxvnbN?=
 =?us-ascii?Q?LicIVe8VWbUheq0X2aEajbc/+DzlP8qkIr36U0kjKLZNYGVstddb1J688QDl?=
 =?us-ascii?Q?v+vf8Hw/FvG/Sb8xuK425jWTSC5iFKyVcw3HHwGCWdzuzFbeKmE0l3OQkCQ0?=
 =?us-ascii?Q?iW6q0eniG7LcO5RIPZLW3sAcsvSrVXkepgRg87P/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33b3ac4f-a6a6-40ac-121c-08dbd9093a9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 05:29:46.4151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d9equ/BdvgM/SiNf+AD3gs6ELHS99t0zUU1v51u5IMqdKX2IUgJ+RfGe1uUF81WBudK5K2cpFj7V32wY6as34A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6652
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 29/29] drm/i915: Query compressed bpp
 properly using correct DPCD and DP Spec info
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
re
> Deak
> Sent: Tuesday, October 24, 2023 6:39 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 29/29] drm/i915: Query compressed bpp properl=
y
> using correct DPCD and DP Spec info
>=20
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> Currently we seem to be using wrong DPCD register for reading compressed
> bpps, reading min/max input bpc instead of compressed bpp.
> Fix that, so that we now apply min/max compressed bpp limitations we get
> from DP Spec Table 2-157 DP v2.0 and/or correspondent DPCD register
> DP_DSC_MAX_BITS_PER_PIXEL_LOW/HIGH.
>=20
> This might also allow us to get rid of an ugly compressed bpp recalculati=
on,
> which we had to add to make some MST hubs usable.
>=20
> v2: - Fix operator precedence
> v3: - Added debug info about compressed bpps
> v4: - Don't try to intersect Sink input bpp and compressed bpps.
> v5: - Decrease step while looking for suitable compressed bpp to
>       accommodate.
> v6: - Use helper for getting min and max compressed_bpp (Ankit)
> v7: - Fix checkpatch warning (Ankit)
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

>  drivers/gpu/drm/i915/display/intel_dp.c     | 20 +++++---
>  drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 54 ++++++++++-----------
>  3 files changed, 41 insertions(+), 37 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 969f19484c53c..c926478621753 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1811,7 +1811,7 @@ u16
> intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector
> *connec
>  	return 0;
>  }
>=20
> -static int dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_con=
fig)
> +int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state
> +*pipe_config)
>  {
>  	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
>  	switch (pipe_config->output_format) {
> @@ -1828,9 +1828,9 @@ static int dsc_sink_min_compressed_bpp(struct
> intel_crtc_state *pipe_config)
>  	return 0;
>  }
>=20
> -static int dsc_sink_max_compressed_bpp(const struct intel_connector
> *connector,
> -				       struct intel_crtc_state *pipe_config,
> -				       int bpc)
> +int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector
> *connector,
> +					 struct intel_crtc_state *pipe_config,
> +					 int bpc)
>  {
>  	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
>  						       pipe_config, bpc) >> 4;
> @@ -1944,12 +1944,14 @@ static int dsc_compute_compressed_bpp(struct
> intel_dp *intel_dp,
>  	int dsc_joiner_max_bpp;
>=20
>  	dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> -	dsc_sink_min_bpp =3D dsc_sink_min_compressed_bpp(pipe_config);
> +	dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
>  	dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
>  	dsc_min_bpp =3D max(dsc_min_bpp, to_bpp_int_roundup(limits-
> >link.min_bpp_x16));
>=20
>  	dsc_src_max_bpp =3D dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp =3D dsc_sink_max_compressed_bpp(connector,
> pipe_config, pipe_bpp / 3);
> +	dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> +								pipe_config,
> +								pipe_bpp / 3);
>  	dsc_max_bpp =3D dsc_sink_max_bpp ? min(dsc_sink_max_bpp,
> dsc_src_max_bpp) : dsc_src_max_bpp;
>=20
>  	dsc_joiner_max_bpp =3D get_max_compressed_bpp_with_joiner(i915,
> adjusted_mode->clock, @@ -2104,12 +2106,14 @@ static int
> intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	pipe_config->lane_count =3D limits->max_lane_count;
>=20
>  	dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> -	dsc_sink_min_bpp =3D dsc_sink_min_compressed_bpp(pipe_config);
> +	dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
>  	dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
>  	dsc_min_bpp =3D max(dsc_min_bpp, to_bpp_int_roundup(limits-
> >link.min_bpp_x16));
>=20
>  	dsc_src_max_bpp =3D dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp =3D dsc_sink_max_compressed_bpp(connector,
> pipe_config, pipe_bpp / 3);
> +	dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> +								pipe_config,
> +								pipe_bpp / 3);
>  	dsc_max_bpp =3D dsc_sink_max_bpp ? min(dsc_sink_max_bpp,
> dsc_src_max_bpp) : dsc_src_max_bpp;
>  	dsc_max_bpp =3D min(dsc_max_bpp, to_bpp_int(limits-
> >link.max_bpp_x16));
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 75ffab92bba41..af535b3f03ae9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -126,6 +126,10 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct
> drm_i915_private *i915,
>  					enum intel_output_format
> output_format,
>  					u32 pipe_bpp,
>  					u32 timeslots);
> +int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state
> +*pipe_config); int intel_dp_dsc_sink_max_compressed_bpp(const struct
> intel_connector *connector,
> +					 struct intel_crtc_state *pipe_config,
> +					 int bpc);
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
>  				bool bigjoiner);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index d6c52906ac6c3..457ace825d931 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -157,6 +157,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struc=
t
> intel_encoder *encoder,
>  						      crtc_state->port_clock,
>  						      crtc_state->lane_count);
>=20
> +	drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d max
> bpp %d\n",
> +		    min_bpp, max_bpp);
> +
>  	for (bpp =3D max_bpp; bpp >=3D min_bpp; bpp -=3D step) {
>  		struct intel_link_m_n remote_m_n;
>  		int link_bpp;
> @@ -246,8 +249,7 @@ static int intel_dp_dsc_mst_compute_link_config(struc=
t
> intel_encoder *encoder,
>  	u8 dsc_bpc[3] =3D {};
>  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
>  	u8 dsc_max_bpc;
> -	bool need_timeslot_recalc =3D false;
> -	u32 last_compressed_bpp;
> +	int min_compressed_bpp, max_compressed_bpp;
>=20
>  	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>  	if (DISPLAY_VER(i915) >=3D 12)
> @@ -283,38 +285,32 @@ static int
> intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	if (max_bpp > sink_max_bpp)
>  		max_bpp =3D sink_max_bpp;
>=20
> -	min_bpp =3D max(min_bpp, to_bpp_int_roundup(limits-
> >link.min_bpp_x16));
> -	max_bpp =3D min(max_bpp, to_bpp_int(limits->link.max_bpp_x16));
> +	max_compressed_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> +								  crtc_state,
> +								  max_bpp /
> 3);
> +	max_compressed_bpp =3D min(max_compressed_bpp,
> +				 to_bpp_int(limits->link.max_bpp_x16));
>=20
> -	slots =3D intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> max_bpp,
> -						     min_bpp, limits,
> -						     conn_state, 2 * 3, true);
> +	min_compressed_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
> +	min_compressed_bpp =3D max(min_compressed_bpp,
> +				 to_bpp_int_roundup(limits-
> >link.min_bpp_x16));
> +
> +	drm_dbg_kms(&i915->drm, "DSC Sink supported compressed min bpp
> %d compressed max bpp %d\n",
> +		    min_compressed_bpp, max_compressed_bpp);
> +
> +	/* Align compressed bpps according to our own constraints */
> +	max_compressed_bpp =3D intel_dp_dsc_nearest_valid_bpp(i915,
> max_compressed_bpp,
> +							    crtc_state-
> >pipe_bpp);
> +	min_compressed_bpp =3D intel_dp_dsc_nearest_valid_bpp(i915,
> min_compressed_bpp,
> +							    crtc_state-
> >pipe_bpp);
> +
> +	slots =3D intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> max_compressed_bpp,
> +						     min_compressed_bpp,
> limits,
> +						     conn_state, 1, true);
>=20
>  	if (slots < 0)
>  		return slots;
>=20
> -	last_compressed_bpp =3D crtc_state->dsc.compressed_bpp;
> -
> -	crtc_state->dsc.compressed_bpp =3D
> intel_dp_dsc_nearest_valid_bpp(i915,
> -
> 	last_compressed_bpp,
> -
> 	crtc_state->pipe_bpp);
> -
> -	if (crtc_state->dsc.compressed_bpp !=3D last_compressed_bpp)
> -		need_timeslot_recalc =3D true;
> -
> -	/*
> -	 * Apparently some MST hubs dislike if vcpi slots are not matching
> precisely
> -	 * the actual compressed bpp we use.
> -	 */
> -	if (need_timeslot_recalc) {
> -		slots =3D intel_dp_mst_find_vcpi_slots_for_bpp(encoder,
> crtc_state,
> -							     crtc_state-
> >dsc.compressed_bpp,
> -							     crtc_state-
> >dsc.compressed_bpp,
> -							     limits, conn_state,
> 2 * 3, true);
> -		if (slots < 0)
> -			return slots;
> -	}
> -
>  	return 0;
>  }
>  static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
> --
> 2.39.2

