Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645B9644FD0
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 00:49:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1D9F10E038;
	Tue,  6 Dec 2022 23:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5207910E038
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 23:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670370559; x=1701906559;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LVBGvEq9dIBf8thdjp4zOClNKDVTJplP+xKfuxfUhj8=;
 b=ifEk0NYfruTyoH6ubx9V7wOdCxxyAnyjFOo9E05XZTIL/DOF+dJc1QF6
 zaFKogavQGD/NXGJ8WMydfiFAR/sL01B3xN2FHnifg2R16hMR9whw3MyY
 l060Qj8vbCgji/2l9t0FVgBbgK2iPQf1LVWTTRrqZ5slRFI3mtzZm+uxs
 ojFmPSizXwSkPdbVt/V0UhHed/FUoNwf2bKK5xhQUHASZ8yR6OkywNvJT
 zr3DUvDbc5RkGj+85hiUYIjeIDINZAM1TdCDaYE16zgQoBOcahmXX+hiW
 R8Z6JYWtzRfwZnlihTSP59vJE8uNjJODgYZQ2v0gcqtKrBKEi1r7s//Hx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="314401949"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="314401949"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 15:49:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="678930711"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="678930711"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 06 Dec 2022 15:49:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 15:49:17 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 15:49:17 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 15:49:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nQHa/6ltIXXF6n/A9Eie1GurevbLBt0GZo7U9cVp8A1KU/ee5IGLoUKACBqGczVlAxS/yHaCd7B/3+yK6PwEJQqy/1GOW2Npjll/GAhDxd44F+XDQX6fp3eh81J581VPF/gftA+h91U0/Tiyu8N6iDOp2AAJ0iwM6at1Tk/PXepzwILCri/JaQCDVCcM4wJdO3RWeoSberWAYziB99xL2YixmihB9/VY5OJo65RXoLU823gNtOKQH68mHFzc4D98YUfFfom/znuEUAQuDPDh2vKJAqLQ2DEG4o8Ds7vvfod9aZG2iWCCAyvl0c4QHQ95y60DQ/Ef/M8/IEm+DZUK2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WHNv7Rl2ZGIUgckKMf2eJDt6+xmSTRtZKupbVyMW+gc=;
 b=Ru3z9C4Disbxr5u6N3WydoJFRwzjY8GYgmW5Vvw8LMa10jVWiKLif1z+prEzDpx2qBDCBrqI9B+XiXOWcJPBcU40xjWlXMMr3POGt9+1CgpvZpZOunVX8xpN+D2xd1OAb9Fqrph2ZlUfx81rxoCDj8Kx2CCDOvo+Pt5C8pXy9S4tT+xyemEas/LXG5LTqgUyexyFFBA5JW6q+uddIIUCizPKLXH7QEi1gOD9DSo0z7IbaDsa0N7iwXlsoO/VdluM0rFTPnZp5luJnRFENjFcGbkPH6ojuv8BCuDqytmYwaLdoPRkjEDVyyW5SrzkaYpPijXPOZUK9o1b1qMC8wgc3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH7PR11MB6452.namprd11.prod.outlook.com (2603:10b6:510:1f3::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 23:49:14 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 23:49:14 +0000
Date: Tue, 6 Dec 2022 15:49:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Message-ID: <Y4/U+F4pu5L9L3bP@mdroper-desk1.amr.corp.intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <f8cfaaab25f700b1826eedeba55d68334396e92a.1670311877.git.aravind.iddamsetty@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f8cfaaab25f700b1826eedeba55d68334396e92a.1670311877.git.aravind.iddamsetty@intel.com>
X-ClientProxiedBy: BY5PR17CA0008.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::21) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH7PR11MB6452:EE_
X-MS-Office365-Filtering-Correlation-Id: 894dd319-b80d-4b7a-e6d4-08dad7e47b34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fq3SZ67SSM/wuTAGX4WeVNWQO0PJjaXzDY4FVcXJ7ED5R+lceXD5oZrig7rYbedtXUBhMEbwMuZTxstLFZdHqIcWg5xD8txPNeRq97JZmoBjFzHs//XefBrgu2XP9QzKnTNr7REwRyjKkQNqtCbiPpfDHlXUrvA02466+24c1DmnM9rZL5kEFmhTN+JYR6pKTcI7ygA4Yo65JcspwPtrq+0U/bHTuqbtkxu0rI8idfXC+prz1bW3peBxYANJkywUfxP+pnIeQofU3C6BnVJjU/ZY8vEAx9sKWhtrxEVtPJWSuMa03jpG0XXLFuXQmwSkZMoVuJL9fOH/BqgNo5ejREGfdDkTh48k1qU7Httm/pEP5qHdIl9wxa64KqubLUltfi3qI/tU3MpeefUn4QB5L0GUeugI8/brlVDzho0fT28D/0fW00tRNB11li4GyaWj36kJCoLktyVaM1k2cq4DrSfE+mSXiVYPQtchMCDn9pmV/vUepdFC/eqXczfWY5beXJQyFmIu64Sm6qtdQXILwhLEthokaFQCmrurKzYuRq/6rl9gyh9Sb8G1euA1mBZHzA1mPrvVGDEI4tMxKyPP1flzKV69/wJlZNrRI1t9+qBWL5OTNro0Ce+eDimFC7XZELN8bLIFtF6MwMpVsHIf9w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(346002)(136003)(376002)(451199015)(186003)(6506007)(26005)(54906003)(6636002)(6512007)(66476007)(316002)(478600001)(6486002)(8676002)(66946007)(66556008)(4326008)(83380400001)(41300700001)(6862004)(8936002)(5660300002)(2906002)(38100700002)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7c6QqeSAj9fddm8unz2ZQWLZWRGuosO1p5k3isr2YRLkqYuaywS3zPwJh5Ht?=
 =?us-ascii?Q?zGXoTLzTbqLssox67miF2vzkNLmuSygz0x0+/eC7mPlj5SRu3koTk1onZw13?=
 =?us-ascii?Q?DtxDY+GZvM+22seAWdDsDHpgL5IrRh6P7nylL7ist7sikAuo0ZhPYRWRlhWY?=
 =?us-ascii?Q?lIEw8YqnPlKmmMzO96ntyKzZvzgKT9IH27UF2lTJwGW5T/Jm8hu1ofaiPpfX?=
 =?us-ascii?Q?Fl/ZkNFJGWOxkZuizQSEbXjdJ5kVMieHNAXSvIUC7DGNAPyqS5AiFX8Syywp?=
 =?us-ascii?Q?y4ykAyE1je6/Y/PXGtulMJx3UYBhvTKlmHOiwVv8ForQ5f0TqWufgFxBLtLy?=
 =?us-ascii?Q?EEtX0Sr4/XwjMCd2tA9fguC56BQ0XWCd9phSXWQU+lsai1iswbggQ1/3ySED?=
 =?us-ascii?Q?4z2jEZ0hfrWteyfdqxZrhBD5/FjUl8uOVUK8AuG4QDoBqUMYwVkF7V750SuH?=
 =?us-ascii?Q?yr+wwxOpkzb4GSrLFyIeqiEyHuQi/a8bGB8I+UDgkp1u6MPnS4dLgFRYX3Mz?=
 =?us-ascii?Q?NX0ghw2G2J3pLQtdELtMeCxiDybBgvsKQvPAixc8lqaKmGQGXR+xFtqmmyxO?=
 =?us-ascii?Q?oJs4Wxu+gnBIgVlSCxTXwu9xfgVkT/xeGV5hzufcpqgGDPpB2ixSbOKlZH06?=
 =?us-ascii?Q?DUIauoktl9QcuPqfKpZHmQklqT17WViyy6lnKXxuht36t/6DxbxmE12mN+Kg?=
 =?us-ascii?Q?0AcTWHMUULPsBN+83kA8yN5WHrUC01fUAIyaw5DS2BJcSsJ9MXrPXM9TgEOK?=
 =?us-ascii?Q?5pbyBIKSZ2zcRjPdUb7CZ1bFpRVku6L141HQ55GC4RnfX7FBTCEOhZnD+LWF?=
 =?us-ascii?Q?0nv2/jxqyACRKw3Efanw/NHXUYWfdbagfAswdDPeodVaUP8DKsVXPtDZtWWJ?=
 =?us-ascii?Q?LKzzKBzA15izPCIN8R+n0qvLHANw84s2P9UzzQPGHvuwH+SEtWzidVP8RAoR?=
 =?us-ascii?Q?dCDk3Ehr6mF60cwf/3mDqb503t+PyEMHfsEzrxooHLMvJkLPD+vj151nfnTH?=
 =?us-ascii?Q?TyXH4aie/kRu6gG9Ub9uR7rjqD0rvYS4uIcNZJjdfvJ37rqoby2Lo+aHaX4E?=
 =?us-ascii?Q?iim+trAOM2VYvUeySPRdypN/bi3dU+J6o7FCX2h/9TyiJS0ItFbmZjpX9oJV?=
 =?us-ascii?Q?fu7R2pIIFVY07r2Xs0264S4SnvMgEJ5TV7dKhG18USxS7vKL/kzaip0iqJ/k?=
 =?us-ascii?Q?1bsjMJXeM4UnOGTneVQjC0uBOaC0KUCjgW1UmRSv+gxN2n1mic+jJj9Bk0D/?=
 =?us-ascii?Q?wBOvAp3eqmqvU0TzUCokTRuR0pvilED6nEtN592R21dhzEKR5OrV/n3MCkbm?=
 =?us-ascii?Q?yNyjTPk380hFQvziXGHb9Jef3bNNjTfSEe3JGLb8ZkzNDQXLuO7StPWF0frN?=
 =?us-ascii?Q?OMhO1Z9PMQAXSzfWxLkC08RBoLkFqcxBML6pRUuv071/n8CM4DYZfLjY/MJN?=
 =?us-ascii?Q?5oRS7yE+2aWW4P+zH4ZUlgl9hHyj6ItXhk7Qma8/w7dYac8X+DzFAK9EOGPO?=
 =?us-ascii?Q?YaBbzTYsk9Y9m0WwnwwH4gk40GAqgnpr4rzQBHxb0QJadphehHu+6DD4FzcT?=
 =?us-ascii?Q?JtA2WJA5ERDZ41L7NA9336mAKPSRdU3UDZOmRJRsRbSHRopaYbaCpVAYd9BT?=
 =?us-ascii?Q?CQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 894dd319-b80d-4b7a-e6d4-08dad7e47b34
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 23:49:14.8269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k7vDd0dTYtMXV9QnM2UJ9vEFL8pHZvPU6zS4pNQGkgJ+ZJcd+Hu9JeGi1nwAfnx9khGjBP/WFQwlDDWA+cnQt766TK/UkP51Y8wIXTrDo80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl/UAPI: Disable
 GET/SET_CACHING IOCTL for MTL+
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 06, 2022 at 01:57:39PM +0530, Aravind Iddamsetty wrote:
> From: Pallavi Mishra <pallavi.mishra@intel.com>
> 
> It's a noop on all new platforms starting from MTL.

To me, saying "it's a noop" implies that the ioctl will succeed and
silently do nothing, which isn't the case in this patch.  We're
explicitly rejecting attempts by userspace to use these ioctls.

> Refer: (e7737b67ab46) drm/i915/uapi: reject caching ioctls for discrete

While killing set_caching/get_caching is the way we want to go, I think
we need a lot more explanation of how cache behavior in general is
supposed to work now.  I believe the plan is that userspace will supply
the specific PAT index that corresponds to the behavior they want via a
vm_bind extension?  I'm not familiar with the details of how that will
work...does that mean that the caching behavior will also be tied to the
specific mapping of an object in the GTT rather than being tied to the
object itself?  I.e., you can map the same object twice with two
different caching behaviors?

Is there a uapi RFC document available yet that describes the high-level
view of how all this stuff fits together now?  If so, a reference to
that would be good to include.


Matt

> 
> v2:
> 1. block get caching ioctl
> 2. return ENODEV similar to DGFX
> 3. update the doc in i915_drm.h
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> 
> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c | 4 ++--
>  include/uapi/drm/i915_drm.h                | 3 +++
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> index d44a152ce680..cf817ee0aa01 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -291,7 +291,7 @@ int i915_gem_get_caching_ioctl(struct drm_device *dev, void *data,
>  	struct drm_i915_gem_object *obj;
>  	int err = 0;
>  
> -	if (IS_DGFX(to_i915(dev)))
> +	if (IS_DGFX(to_i915(dev)) || GRAPHICS_VER_FULL(to_i915(dev)) >= IP_VER(12, 70))
>  		return -ENODEV;
>  
>  	rcu_read_lock();
> @@ -329,7 +329,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
>  	enum i915_cache_level level;
>  	int ret = 0;
>  
> -	if (IS_DGFX(i915))
> +	if (IS_DGFX(i915) || GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>  		return -ENODEV;
>  
>  	switch (args->caching) {
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 8df261c5ab9b..3467fd879427 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1626,6 +1626,9 @@ struct drm_i915_gem_busy {
>   *     - Everything else is always allocated and mapped as write-back, with the
>   *       guarantee that everything is also coherent with the GPU.
>   *
> + * Starting from MTL even on integrated platforms set/get caching is no longer
> + * supported and object will be mapped as write-combined only.
> + *
>   * Note that this is likely to change in the future again, where we might need
>   * more flexibility on future devices, so making this all explicit as part of a
>   * new &drm_i915_gem_create_ext extension is probable.
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
