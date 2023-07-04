Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0E87474AB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 17:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F3710E1A8;
	Tue,  4 Jul 2023 15:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EA9410E146
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 15:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688482866; x=1720018866;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LPCZQw6tKlAfxGyb3zCmF/yNosmzERveyqTcCFsu4ZM=;
 b=W/Bh0HMcQRymqj2I2oXqLqQaDbHsrwodReTIOT9lJWxR6pLU78jph0lg
 vvffiWpKarceUJGUvhHWBuIoK5rHaxtsGsF01A4jB+7sr/PG2QYzBPt4w
 ih8Y/HDwJPSW2E18toBPIVGw3RZ2U3yTOd8CEQjny2VcaG+6zB+HyR5ck
 +8ssy12pDIybmNU708t5+oH+dvWb6xv6Za86lrqxx9JDq1iPm67felPyM
 /wEHUZC4UWXvmOOUJm6xiDLHm69TN/ere1JQcaJHbcW7KdKWoYxL6PfyP
 +oPOA68flvuxCr3bUl5rY0Ngs87NUVwuyRQq4vaVNjAZNpc6r4k2v1QcU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="429178193"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="429178193"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 08:01:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="748442618"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="748442618"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 04 Jul 2023 08:01:05 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 08:01:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 08:01:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 08:01:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D57+u5syuxDRpzWo7xW9hTLXR3ABVJZcsikIyfJCVmVMWNqgabjIa4M6r6vgC06udXm9HfcBR8j5Wj8pABuJrId0BhmlYpMm+SFul/71eWtwF6MZhyC1FacIPbWF5xDDA+KTmsr2JepMLBXMUGJ8zOPHfD4/FuaMMrfK0vKkWgS9BTILI3aA0yTYks9PFaBWMWwehODJ/IChYzAhugB2FLqsk9hYdZD/PNhESv+kCM9DyHF5O73ICWyZpr+hGiuIBBCKZ5VbwMxV4y2SfBm8h14dswtJaIk7GdqFz7jJ+ynRszmK1VXSrYGCBvuLTaEY84bhcnBMeY/iJ6uqiPzFqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zrB8KphuC7S7mAR24AGyQ+XVrznXE6lVapOvZV98Gyo=;
 b=dzmudUy8rHsoErCMmCigh14oORBuYkDHViKsGc9/QnPPNyntJGsP9GRt/xqrnDA+saE52S9MBbMi+IPDJ+ApM5xwkmMPHlZfAh9Rzmn4ezY55z3o+6wq1ZBKH+OskAT2ZSE82cpUHdaehxzgxSYbT3+P0Uo7z2t3NlLaDSpx49Uf/AhSuwpi/YVoAeTYrfOW+A2PDeZNKW6CsVPT+4drQ0PXXezG5Bhfet/g9o9Ffmnr4cNPz3APRscU2SaakCy0knbRVKch8GZYc9s839Mm0VLGcK7sX/zN0AW5vIjm+SWdy3ud2W727FMpYGsUYplwpvzDVWKfvwfatPFrx3O19g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by CY8PR11MB7779.namprd11.prod.outlook.com (2603:10b6:930:77::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 15:01:02 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::4ddb:c601:faf:fb9f]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::4ddb:c601:faf:fb9f%6]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 15:01:01 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
Thread-Index: AQHZq3SVNrGpD1/5lUaBHYHIJAGm9K+ptrig
Date: Tue, 4 Jul 2023 15:01:01 +0000
Message-ID: <SA1PR11MB699124CCEFAA2F67C424EA27922EA@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230630170140.17319-1-nirmoy.das@intel.com>
In-Reply-To: <20230630170140.17319-1-nirmoy.das@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|CY8PR11MB7779:EE_
x-ms-office365-filtering-correlation-id: 3d0d4ad7-a64b-4aa7-56a5-08db7c9f7b71
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gJe21mr7YCKfQvQB0M9o3jyj5ioR7vF8GosZ8+XN1PQMJluAejTh/kB4Dv3FY4RQBZIHlopt+a3kzYt6BuT7NN4ZZchovUNM0qeTox8cXJPw5dOvwXilCV6InMxYjUi6xMyIyHLS/DtQTC6NvpHZOjhkBnvheMWG6vnvLNAfWFYFr3qyMM0bLE6nxSKiyQYxqC7iTWVRa/r4nIEj+T4+xJPGlNUhq6UHquRzLUvG+9kfxGj2dNrSXhLiDolm/coKc0iT/DMvducQeM0ridSElkPYYPjEw2NsdTc0D8PHLc27o3BNk5Usm3B58nyj8wJvm2Q3kulBaryoUHsxsFCw7iZFXwQfwFkRcOKAiAkHZQappmDex6FeRt5HoGMaBx3n6cNDHUb3wFk5Q3IIb+Z8hXHG+3gDSLxR5nbNln4Oxh8vmYHZhoyOYwlp4m/3E/k8Vizdi9/uBnp765UG39DlGsuwyH8qsEEEtUa9RG4k1ON2X1ct/s3yVyytdUaBTXcM1Fc1Db6Ms6n3xHCZNO3cod/5zs4oambdFfR2wQhNZVUOfs6F23H2RSimzk/BTwXrhjW+RC13CH9kLtIXXPf/kpw0wY/XTMGPbvC1uwYF61rMABRbhdZHXmb27h94uEfY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199021)(66556008)(66946007)(64756008)(4326008)(76116006)(66476007)(66446008)(478600001)(316002)(2906002)(8676002)(33656002)(8936002)(52536014)(5660300002)(41300700001)(54906003)(86362001)(9686003)(55016003)(110136005)(38070700005)(7696005)(38100700002)(53546011)(6506007)(26005)(186003)(82960400001)(71200400001)(122000001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bz9boz1Peqa22oKmkbl565cBZRruW91RIGS8YzhY0/viiXNbd8Lbuv3VRTe4?=
 =?us-ascii?Q?9nh3YexfkwAnax5WGPtymDi26ZzpO9ayXZQRedqZ98CGSdK/UKGwPHGW45q8?=
 =?us-ascii?Q?gQZx/nHU7/Yfq4v2psKZ+m2qWLGo1mSpyd8bsQ1QuVF+F0KcdZgX2NANhguh?=
 =?us-ascii?Q?agVPsc1Umn5X0Q/4x4KsjZhZYIEal06GN9Y5lCm3bJiDHj2fvyyG/BSk8wvz?=
 =?us-ascii?Q?hI0AaB2bZ7llksJqg6+C55T+GUpBvD8bXo+FCBndtWXwG51mXF/Jgz8j1OHg?=
 =?us-ascii?Q?P3j+fl0V7En8VsuaWh+wDzFEvxyz4SHvRtRo6zHAJwWUoNbM0bV/w4z3bMLS?=
 =?us-ascii?Q?a1OnM+qiivG2RplcepYtGiEwVDQlY8Alb0EHg2vT2hUCKsYQAsq8SmqBD2DI?=
 =?us-ascii?Q?BSkV9VJjK8Xscz+bpIF0Vn51E8NyhXNWAaaR9GHNARL/SYJ924F0sk7x/iL+?=
 =?us-ascii?Q?UUjepMJDN+8qiA1JRG22Bc2besNI//+7ZeWsJDRtD0nGdQb6vw594QGa2urE?=
 =?us-ascii?Q?yPgXAZ7tbz6/CokT5Bh22gD0WGcEzRGJPCpSTLlxlaDiCZbHtSRs54iVXa0Z?=
 =?us-ascii?Q?08QlbgV5v/a80Cw2sKbZwoxzLIKjJMqwSlmxFXxaPUglJBmy7d0Q5CvcV+mA?=
 =?us-ascii?Q?Og5apIuNr7AvXsUCRYA9YwB8Sf5y2zxhFcxxNRoM9ueB/E32PypqY2HeIwCa?=
 =?us-ascii?Q?2jlsKGQDNAKBp337uTGw0L1ugv8psjw90x68C1kUFKXGgO7VZyo+xeXYqp0f?=
 =?us-ascii?Q?6Hk0kq8V2fLa9IHIfoBB/AoT0bau5Y0WSmph5Ynzp7uZer/wwcg91CdoaBOv?=
 =?us-ascii?Q?E1rvZ4MhiAzhg0mIbiVZ/ep/OaXArB5hpOzZM154fGyyz2x1hoTMcNFk/Lmn?=
 =?us-ascii?Q?efFHbOrdZEmpP4Aw/DSwBzp+UpleCVadtYG7wNzfOjpcbu6ggUgOXTXSgMUs?=
 =?us-ascii?Q?4nO1peA+nW7d4v5yGZ9gOFa6vTGzcSeCEDzxbHVOf2luJYEez0uZx3WSCKWH?=
 =?us-ascii?Q?Vwagiqr0VrkIFyxSbl31PK8I5U20BIqwbfGy4HZhOIC6dw6kmZ74wF02FCr1?=
 =?us-ascii?Q?f75i2s/LYnD71VM+BX5Xj3I9hoe5h46JVAy3yrovHRRH0ajbYHv5vehZGdf+?=
 =?us-ascii?Q?MzsLcmV+VgBXQvBGxPvZbnrJ1r5DiS3KerihmlWKenOtrP3zIeoAgC0c10Kn?=
 =?us-ascii?Q?Rc/4R8eSEjCzNvwzEFT21qL2J1gDjwrReFXaLn4hAUq5itTeppAk/h6xbuTM?=
 =?us-ascii?Q?fEjnBNpCmV5K+Gfw3h/lPB6h9VqWMKE17QtuxyBnDSPIDqOjGVJoNvTzoz3g?=
 =?us-ascii?Q?ZLZ0RPwVAX7vNPxf5b8LOstE7+onGT9lEb5hnVKMIviQIePI/Jrq0t8bc/ij?=
 =?us-ascii?Q?WJg/W3/0QD8ev578NwKw8AUqKpkGbtsa/OjKq6kHKetvSH4Hp2NjjoUOqU2o?=
 =?us-ascii?Q?qgTMtQnZwEFD/ZAo/DxAbeklsJXOLGEuMPAceWaNCGuWtgw/UWVdC8GBH82K?=
 =?us-ascii?Q?xh3iqFjRI1V3Vr/EekdPU+DBKH2XQPuZkc1tVfSCzvJO6shgw23PywH991CN?=
 =?us-ascii?Q?aGKf0AIKpDQ7BPnTrCk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d0d4ad7-a64b-4aa7-56a5-08db7c9f7b71
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2023 15:01:01.5339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b9ohqTLoEPwWq8nAnN+m704rjjFuby66rsJSDgXnz+RXzsSdDY54wt3VvsKCb47y3TJ7hy/FJrFsA3GiRl1xIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7779
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
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
Cc: "Hajda, Andrzej" <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

The changes in this series make sense to me. I searched my code base, there=
 are a few other places where stolen memory is allocated:

1) intel_dpt_create: I don't know what is dpt. Should we also consider this=
 one? Maybe we never read from cpu?
2) create_ring_vma: I think cpu only write ring buffer but never read it. S=
o should be okay.
3) vlv_rc6_init
4) there are a few places calling i915_gem_object_create_stolen_for_preallo=
cated. I think this is also stolen memory?

For integrated gpu like MTL, do we use stolen memory for ggtt? If yes, does=
 CPU only write ggtt/never read?=20

Thanks,
Oak

> -----Original Message-----
> From: Das, Nirmoy <nirmoy.das@intel.com>
> Sent: June 30, 2023 1:02 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Das, Nirmoy <nirmoy.das@intel.com>; Zeng, Oak <oak.zeng@intel.com>; J=
ani
> Nikula <jani.nikula@linux.intel.com>; Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com>; Andi Shyti <andi.shyti@linux.intel.com=
>;
> Hajda, Andrzej <andrzej.hajda@intel.com>
> Subject: [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
>=20
> Use smem on MTL due to a HW bug in MTL that prevents
> reading from stolen memory using LMEM BAR.
>=20
> Cc: Oak Zeng <oak.zeng@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 33a61046ba58..9f64d61dd5fc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -466,7 +466,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt,=
 unsigned
> int size)
>  	obj =3D i915_gem_object_create_lmem(i915, size,
>  					  I915_BO_ALLOC_VOLATILE |
>  					  I915_BO_ALLOC_GPU_ONLY);
> -	if (IS_ERR(obj))
> +	if (IS_ERR(obj) && !IS_METEORLAKE(i915)) /* Wa_22018444074 */
>  		obj =3D i915_gem_object_create_stolen(i915, size);
>  	if (IS_ERR(obj))
>  		obj =3D i915_gem_object_create_internal(i915, size);
> --
> 2.39.0

