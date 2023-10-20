Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C117D182B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 23:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B17D10E5F0;
	Fri, 20 Oct 2023 21:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E9E10E5F0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 21:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697837553; x=1729373553;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nUjS9pvbpc9SatpSLkvnBUGL6WEi7S/u1Npgda7ryBs=;
 b=HU8ruWoK+m3TRuIqOM57+OvmSu2uBrTVt+IdZsJ6cK6jwyNia6DrjgsK
 /YP49UIXVcDh9mTXCEB0aWVlgYwMXwW3R26O/N8C6Qq0SjTLd1GIAByNa
 e0a83QeY/YUVkgCMgdECqcHUXYRP5E3nDwGbVjj/A9i7IhCzXBzOtjkMj
 P/Nx+OX1mJ+1CuHJGGRbYd60hGzbiDFt86/XBJ7xhjPaDkEUupH9hgqFq
 628ZS8y7IwxM5rZWDHJuiV7qYsvXz8ixG5epoym0Zg/GlSfHPlYX7iI/J
 VXcLqdj8ix61nCVE9Nf0hkKMEcfq3bjOGlO+Az1KSy+xnaaGd7BBHwoGj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="376953236"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="376953236"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 14:32:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="848217217"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="848217217"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 14:32:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 14:32:32 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 14:32:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 14:32:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 14:32:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QLzO8voSpO8+pH0ybYI2wFErUgZ6gUIMPBF0Aimq24Hun4olDg/TfosjBefQRsPPjGs/y+E9LghZm5auzqRt1AS7/DINqf+36Rrn/NL6r9ujaPhCOshMgQcdHRkX1gDh6F1FTeP3JfMTaxz8uG7g7/+qDJwIfvL5tp1pWoTwWXDipY0N4NajZCg3YdYj9+aSeTnL3YEdaW8WOiEcsthPhsrPTxcKjRyj09Kf0VslBurPwaJLuu8BVXWyUfaa6qpNEePQpRwGcJblkzOWmFyYBeQ88LexcE2QbevXzrqRpSoLXtDc6HrLy+qIw6vp6dvBD/Wf+JMqYv8nHqs61Jguyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+V1Zsbrbddiq9fEH9vMSCPqt17z1DLibj99PXm86Ric=;
 b=I09x4TVK84QDgpiI1N0ftREPUR1B/NL2cKO53mJEnoFBke1QU3mR/BiQfqrshfKDG3depDanniTNl4/TNjnF6SBhFiLhQVn8y48P4R5DzU1cVYLPsPzLQOjd43ypP6iFbwjGoWDeTawBdg+FPHfjR1jYSbrlkb8y4jCqbOm8xTdnZbA/yobLy9Yco53589qhjrYcZ1fhtGlAgK+Z/kZ7k1MG3VIT6T7D5h1YpWWzmd4EKfZmb1vnhhDDUoD6wQf5FVu9YxCF9iC7eHv2t6rDAzBeULV54V9vBT5X9GSYnX3CJ2ShuDPoNKn86fa4FOmqmTrmGSpp7ts6aZ6Xd9OO/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH7PR11MB8011.namprd11.prod.outlook.com (2603:10b6:510:24a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Fri, 20 Oct
 2023 21:32:05 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::b250:5960:7172:34c9]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::b250:5960:7172:34c9%3]) with mapi id 15.20.6907.022; Fri, 20 Oct 2023
 21:32:05 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/mcr: Hold GT forcewake during steering
 operations
Thread-Index: AQHaAq4a/HoXwtuTLU+xRj0R2bcMW7BTM+xA
Date: Fri, 20 Oct 2023 21:32:05 +0000
Message-ID: <DM4PR11MB59712B37171A3626F85186CB87DBA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231019163913.2097183-2-matthew.d.roper@intel.com>
 <20231019170241.2102037-2-matthew.d.roper@intel.com>
In-Reply-To: <20231019170241.2102037-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|PH7PR11MB8011:EE_
x-ms-office365-filtering-correlation-id: 1d1ccad3-5f74-4af7-f787-08dbd1b401b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gArEBHbKY8XQsFpvdBuUKgfuaBoOCgtZ+8cPRUsTsSJl1BOGLuKpNjbYjGzWtczdXt+q86ZANicY5DxfTN+mkEKeMKLNtImzsTn80RYZWbokEpQGRvbB+NaLDDHgKrF6FG1Muro7O+6LPMTjovr970VY7uCCNEitgxsG0e2J08XbtrmhOd/hSjgkyXfSrv2SptNBCC7no4B0cT5Ha7HGn8sOaZB7ba1unBq+MsgjOfiB+SPxkvMlen21Nu41G1wLAlXu2n+5aRiub1E2m+PvvEoTkMznvdGXkGBstCNBh8+UNitg6i5F7poBIQqVzoRsCSnorFatO3L9SuCNvyeHlKA1fzy1FQIAZo+VGzqRLgONYlln5ejaJr4Oebs9bTbbTbhDGa1FnQGR3XDL9KFM/ZIoz/dCyV+9s4IjLJja4C6D9eFOoEbnj5QxJ1S6Sf6ZO6P9fPvHtQUcex8LNWoblbO+ouFiQh21n8ptLJ8AdKi+82Cz84AnrODTdEctsBzWT/YsnPXGZqUpOn/KgyL+YOu0Jphe5GuVo/bmW3RDK9yFGzPoKSGA38ETXJS1aGvI/H9WgSucZKqrmjWFrBK4uXMoW/ISdQUFNuOKFZRSbSROHvdGviUljwfQZez3Jyry
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(346002)(376002)(396003)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(38070700009)(55016003)(4326008)(38100700002)(8676002)(478600001)(110136005)(316002)(76116006)(71200400001)(7696005)(66446008)(64756008)(66946007)(5660300002)(6506007)(66556008)(41300700001)(66476007)(8936002)(9686003)(2906002)(86362001)(53546011)(83380400001)(26005)(107886003)(122000001)(82960400001)(52536014)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MTY5nwlCEx9Lr2JYR1NPaoA+iFQxJoZl5u3Lk6heOctiSO+EKpau6XeS8zqT?=
 =?us-ascii?Q?+pQEb11w1bZBvq2k5ELlpeyMRetrqyXnfH20Wpmn4ZNQc4T9/GDioBvbu84P?=
 =?us-ascii?Q?652dwF7STL3NgF7K0WtSEGJ8dF/uXvpRm5Dfjlb7U8ealIrCUzJgx5bWnnmx?=
 =?us-ascii?Q?N2dqKplEKi20eu0SJbKhHetVa8Li0nliZCTviCcGiBpqRsbRCXrmc8R9pZmw?=
 =?us-ascii?Q?77SVg36ZVSnhYJhRNxndbLtgWrKbWQWbm9C2DPDHy7tvVLF99J4x++uu9MIm?=
 =?us-ascii?Q?dzzIJSTyzAJl215T8tITv7rc8wqjb/kjo8OEuFK/r0MJMz0mVZ5WTGcCpYLo?=
 =?us-ascii?Q?/v8XryAlI16VrDi718lEC9MUJDp+Z4QOKF2Q3J+rvvr/WDaNTRPESLSyUzN/?=
 =?us-ascii?Q?b03ujrbAW3HDQBU+9DbNw73tIpdPd3CnscjpqniOsP1ZMnIM9APNgLUuzlHx?=
 =?us-ascii?Q?hzwFEZzI80Jz/2QevvwftlBGTfLRhUukZpYaUVbt5tlR45d72DvBebo5BFIO?=
 =?us-ascii?Q?9uvo4Yp4DxG0taqpf1/I3PrckosvgTbbMlbIbZcgwVYuC98u1pVJwkbFyWjq?=
 =?us-ascii?Q?SiMgR/iD54OHF4iOUJXaEjG4GshD8a8Wv8JyNtcS2BhzgoEHdj93fPukdTy+?=
 =?us-ascii?Q?B+Gg3cejSB/EknOT4FfYGQ1CuFlEh9Z6yroE/0ndnjLF2JDysc9m+4JTFlgQ?=
 =?us-ascii?Q?Qpz1bILSyu4gu2Oa01pg6MkFH69zsffEtX32gcXxTf7Mxji558yaJn/COn5G?=
 =?us-ascii?Q?1AtRbclGrfux5zpSAoGPvpPG41KOkcgTT9T2W6UyREfoV2U1XS7bFqDsTIcl?=
 =?us-ascii?Q?UMZmF5gTZUCAVYhoMDwmqfUo6u7HN+NedwCarSrVSrrN/O08ReI73Kw2iPoq?=
 =?us-ascii?Q?JM5BUt56vlNH0y1RdzALwK7RgY8JCgAldkeAbHackpQjMhE1rZUjXDMl/uzI?=
 =?us-ascii?Q?ilQXeTqW8AcMd+H2UA8QHFKk9HectOQ8aMeZVyCTXaFwzBl6/ombqbFMcGi+?=
 =?us-ascii?Q?87VrTktgMbF6VMBBQy9cH9wM7+3k7HdpvVrSl9kKEhQ4ici8pI1oPTEFbqvg?=
 =?us-ascii?Q?noS4t/j2X6X0IizwcPXbgV2EpAolCL2TooOL6i3tnWCIKH/2CNZLRi6gdhhQ?=
 =?us-ascii?Q?DTSvQdXDu35b0BBEcyMO6FcZGA1pWgzj1wWQLp9nMWlkuIVbTDrS/WdcskNp?=
 =?us-ascii?Q?GDDjWSniUJRxkTItpdDIcdmMNb8X3qThrq2+78ZTzPqlznqpCH7uwhnrTWe2?=
 =?us-ascii?Q?scJHgIw3KzgVi6XNEynMCo2A3IOdiIxUjfEN1iLr8axSXVoCzMvo7B+RblLD?=
 =?us-ascii?Q?RpAIb0KUkL1Gxx4EzrkGtzJl6hMlgjhMjE0/CRJhHSSy+XGdGFIhx6pde2/N?=
 =?us-ascii?Q?eNCqwem+PlXMtyOglP+AIl0pAaNFdjkJ8sEHa5GuH3xAbJfk2u43ZQQdb2Zb?=
 =?us-ascii?Q?63eiitiOEsWeO+AV+qax7Zjmvv2bMoUd4vVShfdO78ElUquWehYcDKUV22qB?=
 =?us-ascii?Q?wI0TJjfVS8agA2O9K/4bLMfRYeyn5GSyL3ze/NB3r41y5xy0Aood6s8MPdWD?=
 =?us-ascii?Q?cpel0slZ81pH7p1YljrCFWSOuJBPjM7B4W53Jth5eRhMg7DgX/OaLA5ZprtW?=
 =?us-ascii?Q?HQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d1ccad3-5f74-4af7-f787-08dbd1b401b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 21:32:05.5173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y7SipOsYxJcMJZCLbmuA4qbBPuyzLSOv6siV3zIrQCKgf8ifM0YP+moROnJmRaJUk2rTjFb96aUtUHBZTUw46QNBzYy4AvSjggdR+o1WFUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8011
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mcr: Hold GT forcewake during
 steering operations
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
Cc: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, October 19, 2023 10:33 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Sripada, Radhakrishna
> <radhakrishna.sripada@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel=
.com>
> Subject: [PATCH v2] drm/i915/mcr: Hold GT forcewake during steering opera=
tions
>=20
> The steering control and semaphore registers are inside an "always on"
> power domain with respect to RC6.  However there are some issues if
> higher-level platform sleep states are entering/exiting at the same time
> these registers are accessed.  Grabbing GT forcewake and holding it over
> the entire lock/steer/unlock cycle ensures that those sleep states have
> been fully exited before we access these registers.
>=20
> This is expected to become a formally documented/numbered workaround
> soon.
>=20
> Note that this patch alone isn't expected to have an immediately
> noticeable impact on MCR (mis)behavior; an upcoming pcode firmware
> update will also be necessary to provide the other half of this
> workaround.
>=20
> v2:
>  - Move the forcewake inside the Xe_LPG-specific IP version check.  This
>    should only be necessary on platforms that have a steering semaphore.
>=20
LGTM,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>


> Fixes: 4186e2185b4f ("drm/i915/gt: Add dedicated MCR lock")
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 24 ++++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index 326c2ed1d99b..34913912d8ae 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -376,9 +376,26 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned=
 long
> *flags)
>  	 * driver threads, but also with hardware/firmware agents.  A dedicated
>  	 * locking register is used.
>  	 */
> -	if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70))
> +	if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70)) {
> +		/*
> +		 * The steering control and semaphore registers are inside an
> +		 * "always on" power domain with respect to RC6.  However
> there
> +		 * are some issues if higher-level platform sleep states are
> +		 * entering/exiting at the same time these registers are
> +		 * accessed.  Grabbing GT forcewake and holding it over the
> +		 * entire lock/steer/unlock cycle ensures that those sleep
> +		 * states have been fully exited before we access these
> +		 * registers.  This wakeref will be released in the unlock
> +		 * routine.
> +		 *
> +		 * This is expected to become a formally documented/numbered
> +		 * workaround soon.
> +		 */
> +		intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_GT);
> +
>  		err =3D wait_for(intel_uncore_read_fw(gt->uncore,
>  						    MTL_STEER_SEMAPHORE)
> =3D=3D 0x1, 100);
> +	}
>=20
>  	/*
>  	 * Even on platforms with a hardware lock, we'll continue to grab
> @@ -415,8 +432,11 @@ void intel_gt_mcr_unlock(struct intel_gt *gt, unsign=
ed
> long flags)
>  {
>  	spin_unlock_irqrestore(&gt->mcr_lock, flags);
>=20
> -	if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70))
> +	if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70)) {
>  		intel_uncore_write_fw(gt->uncore, MTL_STEER_SEMAPHORE,
> 0x1);
> +
> +		intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_GT);
> +	}
>  }
>=20
>  /**
> --
> 2.41.0

