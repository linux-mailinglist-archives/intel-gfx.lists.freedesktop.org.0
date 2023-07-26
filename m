Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A662B762BAB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 08:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B23A10E418;
	Wed, 26 Jul 2023 06:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D53010E418
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 06:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690353650; x=1721889650;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6PG/dPXGjmAhY2JeostmIt4mK4i9tBu46B1itd1PJEE=;
 b=mx/pj9P+TBic/0iilT7wU2HCZlhw/ywGd+wU7fbybzivJevIDgp74dwa
 AE0mv1oyDQeI3XpdlThmrnrCLn9DL3cnuLqZMSbhDdvDWuYLLLNhEl7Aa
 V1dBAXOxcUXPOvNM7ozXlAyU1gWsNz2aCkJGk6BVjYHj08mxrGpCsCd5m
 l7s/2pJqLIyvUFs7/9d0ggHeSEuTuvdcix3GlK5doEDs9ybgh9R9sSXKz
 cc3+8JostEecHzlgzyX+kZkuT51EpHc3QE44KtO0KcfLaRuGMgE7E9GhQ
 Q5gb8gxW4xITJHKPL4IjFXOCR4UCe40cNKTK1OWa28pKd0ZCvgmFuKMAS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="398861340"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="398861340"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 23:40:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="729716405"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="729716405"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jul 2023 23:40:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 23:40:27 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 23:40:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 23:40:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 23:40:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z7B2a5+siOO7UHELAhU2wQNkiT7n6iFM7oPxVCagZ0DAehI/Lal3Vb0KPxyTmbNe20aKM7gfZtXs8OHf4i8v5MjQ0sS9oByzSMHYKjcT6u+R1yIEdltgtfolU0FSTypr5v9BsF4SOJsUrtob6m2byfIw2x990wwh+tD+mQFzQjy7XCuSjgDvLBG2MrPwKChKiL2MIcsu0fkAsnNwZ/VaWEejwyBvcY8fmfiHTIygYCyVgEwl9SEcskbyVW3Xp1+9pjBwHK34RajeR1s4P+G1iSzVAsqwbAx97+4oVXUXKT6qh9mKEdcr9Jrw6p1GrWt7jSGcQ+L4j1xFPpyDbPENQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=72DbLQ9ZINfeQVGJ9bTXcqOB740nxe8fhXDO7E7srNA=;
 b=SgMKTXt0/F8NpFHUF8uLQ9FRk2GY4QKfP/Gu7VHHXNoUcXq/KiXhRWOQH9DjfcHPmiiN1g5TrnlpLHGI80CsM4q604GX3088ba6VvGcBcK0/t7m3bVtLB6QzyvO65ds3iCUbh+wMaZoZ1tv1F6fn8w08OEILkiUfinH7lqO1dqclxjJSlu8BmiCdOn4/cMFCC7zCTu7Y8kpBnaYItpZly40LQilNh5Q9taRwiUOAPizwpw1an6Hl5JLtvSpRIh/COsIgiWPjqw7ZR5/lhfc/3/FPljlAIa9+ckOlyWJdh626uA5hn038VMI0mA1ZBjW0dnh1wzqB3KkGJgAiP1EjBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB2574.namprd11.prod.outlook.com (2603:10b6:805:59::14)
 by SA2PR11MB4793.namprd11.prod.outlook.com (2603:10b6:806:fa::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Wed, 26 Jul
 2023 06:40:25 +0000
Received: from SN6PR11MB2574.namprd11.prod.outlook.com
 ([fe80::1eb5:786d:f6a8:4d9c]) by SN6PR11MB2574.namprd11.prod.outlook.com
 ([fe80::1eb5:786d:f6a8:4d9c%4]) with mapi id 15.20.6609.032; Wed, 26 Jul 2023
 06:40:24 +0000
From: "Yang, Fei" <fei.yang@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH dii-client 1/2] drm/i915: Make i915_coherent_map_type
 GT-centric
Thread-Index: AQHZvxJWeV4bNjiiXEyYdrOwTzNjLK/Llrkg
Date: Wed, 26 Jul 2023 06:40:24 +0000
Message-ID: <SN6PR11MB2574CF4996487E06AA984C809A00A@SN6PR11MB2574.namprd11.prod.outlook.com>
References: <20230725160145.1486613-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230725160145.1486613-1-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB2574:EE_|SA2PR11MB4793:EE_
x-ms-office365-filtering-correlation-id: b1a1746e-79cc-428f-6c72-08db8da330cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HELWx4lt1Amfl9u86nszlPb7SmFdDq0rzdfiiy6BlhiJS/RE78Xf+Hyjg5Mm4OLf1S2bt8A/yIolnJJsX8AqeFLy4SDJc6eyRlmdQXgkSeP+o8Mh/1PTvJWH0NwRPSesuKJhZL4jDoSTshD2EB+fVS7KPz5G+P0CbnkWM3r2tbq/AK5n5t1GFvs6YOVsmWBg3kfr2uVild9EXpgunyZFKhzN8ee4C1O4FFT5sayeerKy3jHbxdhE/N/EwBBRkCz7WUEnXqOGefmdxmvutEcMNcC9/8NdvGVOIAWhAACEO9HZE6rttKwEZ57vFUXx90NeHeMMQlQ3J4gyzsv7MUdOdTOUMUJdhjStwAx8frOFJwCJs++k5/790nC3QTLZcQGYJBgbH9E8Z1PeYxNXSi47N5cyTDfwGIUqGWpH54vKjMN5TOti2Jd9jyf6F1cLwCz5NXDI0mynrDFeht/Koju/In3mw5dVtVrPp5piPryEHe3Yc95oNmSPo8oEBsfP6t9c6mGWzohH12h2QPQLvvRd3KGSYP1W7Lboy0Ed7OnqsXrVLmIAii+bI6rKvb5i+yDcpRIOIB552UQIZ/o4o7iZYpUTzE4Y4bpzck2PuN+P8RE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2574.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199021)(41300700001)(316002)(8936002)(38070700005)(8676002)(52536014)(30864003)(2906002)(33656002)(86362001)(55016003)(5660300002)(26005)(6506007)(9686003)(478600001)(7696005)(82960400001)(71200400001)(83380400001)(186003)(76116006)(122000001)(38100700002)(66946007)(54906003)(4326008)(110136005)(66476007)(66446008)(64756008)(66556008)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9AqvQnv03a8q3boYJjtGSSfdYDcdMncTjExQae8J9FReZGXm0RJZECpeqioi?=
 =?us-ascii?Q?QeH/z2rqTb0ddDqb00EsJm8rlgkhSUpQ4mF3OBiKxtdNzGgQBR9yTPhaEpTC?=
 =?us-ascii?Q?MypRico5ajey5phy7nUMWlaeg8DF/aK/vXqYQ7nDeslyeTm8RVCXv2IHdOIz?=
 =?us-ascii?Q?h0uvO/PWwgBAfowrsJq1/3jpO+Lb+oomuZHDpb8EFTM6cC2MTxlhCG5ZX/tn?=
 =?us-ascii?Q?TL15YSJT45ghqEIv+aIUS5qHAQItTMpmsTJbbdtuK7cdjgJuFg9dQ6ZeDcs6?=
 =?us-ascii?Q?Eqg7t8zHWWHZVtMSXPD3oiolAKid+jibMWCFOfJ5jiAgETa7fLOcuRPiS5Sz?=
 =?us-ascii?Q?oNew5bfXMHBzfX8miqSC085SfZsBffhxBK1XxEcC+uWd0hvmAXIlAseT8aqD?=
 =?us-ascii?Q?k5tc9EZ0UB3VGfBW7AcjUmS+O1ZCFFjhfEaK59UVSzxOqaZkmxehH36bnPb5?=
 =?us-ascii?Q?V9Dd8lYPxP3zlgqboElK1UCp7vrqQhknmu47J9Sovz86o6RSzemhgsHl3Xem?=
 =?us-ascii?Q?v9RWz/+395EAKgwQudclpG6cSMzzUEV+7nGRBOMAaArp7J1snkSBHUz4gWyP?=
 =?us-ascii?Q?pWtDQAMCsl6u+Kq626pChbH9XZYfYbabNSTVErKJVCtjfCgUQwpOHpQ/WnG3?=
 =?us-ascii?Q?/it5JajftrV5q96rG9dp+/IRKrXT51ZCTCJ21081YHQzRbN4mIrcVfLYLqhg?=
 =?us-ascii?Q?lzAKmzlmrJLzUJvB9NUSPRq+3V0i3rs6YMV1DjtshXg/4ddpvTMF7OWXVinG?=
 =?us-ascii?Q?/IGzbmvTdHJ7CuB06WvnEWSOe45VkE1YSfi/LYOTbjINaHeMbYRbIld1Cx12?=
 =?us-ascii?Q?oruuxWtRLgnHCEB0cNsNwsmfx5k+BCpNzpUG/05I4/YPE0RPK7ncWjV/eJuE?=
 =?us-ascii?Q?sKpoF1Wp4C0OWOHNof1IWpmPRa3SMNx26Ex6w/G0gGF6SBiUVC+xMbIXs2ja?=
 =?us-ascii?Q?mAeLCxDa4UqeRY76ONbOF9rZyriozCo3s+JwdVR0oGm5cykqL8rav6BiIfT8?=
 =?us-ascii?Q?wpjSzt8KFDoomXEgBjAIobzE5lazyf1XDSE9/VR07zWwfmYdsSSriPN6xxtN?=
 =?us-ascii?Q?rbJzVMcoy8/10a2HigWdPeg2E3SM+5/Kh+Wnsyf49JHXj0z/z6y/CQMHSQYq?=
 =?us-ascii?Q?uMZpeQiS9Ovhzn/ZYq+sjvFJOil6Nt8617wnu/5GRL2jAiGuYMx0C6H3qOdy?=
 =?us-ascii?Q?TKiYuLjs8eiGdDGDCY0c2ZwUK8VKx6PxTCEOvT61kq1dIPQKQloMdKGVhjfG?=
 =?us-ascii?Q?KgKXPammKfxyspy6vGzeVD6VkKHEp+oTu3rLZYRtrQYSX7gDRXU/euOS7Izr?=
 =?us-ascii?Q?3mQ3hzU4akodpmRlrmGhHDi7h77iSfEzt6XkUKPif6J2+4rZ/mOiymx7SF91?=
 =?us-ascii?Q?YDsSLCwQQlMJP6Razxkwj2qR6jb1XUBqX0hxqzBN3Z3h7MtQ6GNYBdsqPTdg?=
 =?us-ascii?Q?Dm8h2Zx3c+xEbYKz5c9XRdM7Y9a6PbyLUV38GaD0vbDK6q4UsFQyXbch6BkD?=
 =?us-ascii?Q?32K6vAUMV6o88/2BuV9UIwBdZ83WZT5ChScIVdyH8HxyHuhZELXN9xnN4h03?=
 =?us-ascii?Q?aDSsZPDJxFNM3Bikyvo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2574.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1a1746e-79cc-428f-6c72-08db8da330cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2023 06:40:24.0397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BTLzJxjl8ZrKvPeBZTNZrY5IwuoxNL07ch3K5osZdlGqe5vmEcX50brl4+cvC6zw2WEzlDu+us6f2+eB+wDwiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4793
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 1/2] drm/i915: Make
 i915_coherent_map_type GT-centric
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Refactor i915_coherent_map_type to be GT-centric rather than
> device-centric.  Each GT may require different coherency handling
> due to hardware workarounds.
>
> Since the function now takes a GT instead of the i915, the function
> is renamed and moved to the gt folder.

Remove dii-client in the title. Also need to fix the check-patch warnings.
Otherwise the patch looks good to me.

assume you address the above issues,
Acked-by: Fei Yang <fei.yang@intel.com>

> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c   |  3 ++-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h      |  4 ----
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c       | 15 ---------------
>  .../drm/i915/gem/selftests/i915_gem_migrate.c   | 12 ++++++------
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c       |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c              | 17 ++++++++++++++++-
>  drivers/gpu/drm/i915/gt/intel_gt.h              |  3 +++
>  drivers/gpu/drm/i915/gt/intel_gtt.c             |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_lrc.c             |  2 +-
>  drivers/gpu/drm/i915/gt/intel_ring.c            |  3 ++-
>  drivers/gpu/drm/i915/gt/selftest_context.c      |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c    |  4 ++--
>  drivers/gpu/drm/i915/gt/selftest_lrc.c          |  2 +-
>  drivers/gpu/drm/i915/gt/shmem_utils.c           |  7 ++++---
>  drivers/gpu/drm/i915/gt/shmem_utils.h           |  4 +++-
>  drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c       |  3 +--
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c          |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c       |  3 +--
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c        |  3 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c      |  2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c        |  3 ++-
>  drivers/gpu/drm/i915/selftests/igt_spinner.c    |  2 +-
>  22 files changed, 53 insertions(+), 49 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/=
drm/i915/display/intel_hdcp_gsc.c
> index ad0405375881..d753db3eef15 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -6,6 +6,7 @@
>  #include <drm/i915_hdcp_interface.h>
>
>  #include "gem/i915_gem_region.h"
> +#include "gt/intel_gt.h"
>  #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
>  #include "i915_drv.h"
>  #include "i915_utils.h"
> @@ -632,7 +633,7 @@ static int intel_hdcp_gsc_initialize_message(struct d=
rm_i915_private *i915,
>               return PTR_ERR(obj);
>       }
>
> -     cmd_in =3D i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_=
type(i915, obj, true));
> +     cmd_in =3D i915_gem_object_pin_map_unlocked(obj,
> +intel_gt_coherent_map_type(gt, obj, true));
>       if (IS_ERR(cmd_in)) {
>               drm_err(&i915->drm, "Failed to map gsc message page!\n");
>               err =3D PTR_ERR(cmd_in);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm=
/i915/gem/i915_gem_object.h
> index 884a17275b3a..0c695b4c129f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -716,10 +716,6 @@ void *__must_check i915_gem_object_pin_map(struct dr=
m_i915_gem_object *obj,
>  void *__must_check i915_gem_object_pin_map_unlocked(struct drm_i915_gem_=
object *obj,
>                                                   enum i915_map_type type=
);
>
> -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> -                                       struct drm_i915_gem_object *obj,
> -                                       bool always_coherent);
> -
>  void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>                                unsigned long offset,
>                                unsigned long size);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/=
i915/gem/i915_gem_pages.c
> index 89fc8ea6bcfc..6d262d269c71 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -465,21 +465,6 @@ void *i915_gem_object_pin_map_unlocked(struct drm_i9=
15_gem_object *obj,
>       return ret;
>  }
>
> -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> -                                       struct drm_i915_gem_object *obj,
> -                                       bool always_coherent)
> -{
> -     /*
> -      * Wa_22016122933: always return I915_MAP_WC for MTL
> -      */
> -     if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
> -             return I915_MAP_WC;
> -     if (HAS_LLC(i915) || always_coherent)
> -             return I915_MAP_WB;
> -     else
> -             return I915_MAP_WC;
> -}
> -
>  void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>                                unsigned long offset,
>                                unsigned long size)
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/driv=
ers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> index a93a90b15907..d8f4a10d71de 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> @@ -13,12 +13,12 @@
>  #include "selftests/igt_spinner.h"
>
>  static int igt_fill_check_buffer(struct drm_i915_gem_object *obj,
> +                              struct intel_gt *gt,
>                                bool fill)
>  {
> -     struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>       unsigned int i, count =3D obj->base.size / sizeof(u32);
>       enum i915_map_type map_type =3D
> -             i915_coherent_map_type(i915, obj, false);
> +             intel_gt_coherent_map_type(gt, obj, false);
>       u32 *cur;
>       int err =3D 0;
>
> @@ -66,7 +66,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum=
 intel_region_id src,
>               if (err)
>                       continue;
>
> -             err =3D igt_fill_check_buffer(obj, true);
> +             err =3D igt_fill_check_buffer(obj, gt, true);
>               if (err)
>                       continue;
>
> @@ -86,7 +86,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum=
 intel_region_id src,
>               if (err)
>                       continue;
>
> -             err =3D igt_fill_check_buffer(obj, false);
> +             err =3D igt_fill_check_buffer(obj, gt, false);
>       }
>       i915_gem_object_put(obj);
>
> @@ -233,7 +233,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *=
gt,
>                       continue;
>
>               if (!vma) {
> -                     err =3D igt_fill_check_buffer(obj, true);
> +                     err =3D igt_fill_check_buffer(obj, gt, true);
>                       if (err)
>                               continue;
>               }
> @@ -276,7 +276,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *=
gt,
>               if (err)
>                       goto out_unlock;
>       } else {
> -             err =3D igt_fill_check_buffer(obj, false);
> +             err =3D igt_fill_check_buffer(obj, gt, false);
>       }
>
>  out_unlock:
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/=
i915/gt/intel_engine_pm.c
> index 21af0ec52223..b538b5c04948 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -39,7 +39,7 @@ static void dbg_poison_ce(struct intel_context *ce)
>
>       if (ce->state) {
>               struct drm_i915_gem_object *obj =3D ce->state->obj;
> -             int type =3D i915_coherent_map_type(ce->engine->i915, obj, =
true);
> +             int type =3D intel_gt_coherent_map_type(ce->engine->gt, obj=
, true);
>               void *map;
>
>               if (!i915_gem_object_trylock(obj, NULL)) diff --git a/drive=
rs/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 9f64d61dd5fc..6faf1dae965f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -591,7 +591,7 @@ static int __engines_record_defaults(struct intel_gt =
*gt)
>                       continue;
>
>               /* Keep a copy of the state's backing pages; free the obj *=
/
> -             state =3D shmem_create_from_object(rq->context->state->obj)=
;
> +             state =3D shmem_create_from_object(rq->context->state->obj,=
 gt);
>               if (IS_ERR(state)) {
>                       err =3D PTR_ERR(state);
>                       goto out;
> @@ -1134,6 +1134,21 @@ void intel_gt_invalidate_tlb(struct intel_gt *gt, =
u32 seqno)
>       }
>  }
>
> +enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
> +                                           struct drm_i915_gem_object *o=
bj,
> +                                           bool always_coherent)
> +{
> +     /*
> +      * Wa_22016122933: always return I915_MAP_WC for MTL
> +      */
> +     if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
> +             return I915_MAP_WC;
> +     if (HAS_LLC(gt->i915) || always_coherent)
> +             return I915_MAP_WB;
> +     else
> +             return I915_MAP_WC;
> +}
> +
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>  #include "selftest_tlb.c"
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt=
/intel_gt.h
> index d2f4fbde5f9f..adb442aaa522 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -119,4 +119,7 @@ static inline u32 intel_gt_next_invalidate_tlb_full(c=
onst struct intel_gt *gt)
>
>  void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno);
>
> +enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
> +                                           struct drm_i915_gem_object *o=
bj,
> +                                           bool always_coherent);
>  #endif /* __INTEL_GT_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/g=
t/intel_gtt.c
> index 731d9f2bbc56..13944a14ea2d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -89,7 +89,7 @@ int map_pt_dma(struct i915_address_space *vm, struct dr=
m_i915_gem_object *obj)
>       enum i915_map_type type;
>       void *vaddr;
>
> -     type =3D i915_coherent_map_type(vm->i915, obj, true);
> +     type =3D intel_gt_coherent_map_type(vm->gt, obj, true);
>       vaddr =3D i915_gem_object_pin_map_unlocked(obj, type);
>       if (IS_ERR(vaddr))
>               return PTR_ERR(vaddr);
> @@ -103,7 +103,7 @@ int map_pt_dma_locked(struct i915_address_space *vm, =
struct drm_i915_gem_object
>       enum i915_map_type type;
>       void *vaddr;
>
> -     type =3D i915_coherent_map_type(vm->i915, obj, true);
> +     type =3D intel_gt_coherent_map_type(vm->gt, obj, true);
>       vaddr =3D i915_gem_object_pin_map(obj, type);
>       if (IS_ERR(vaddr))
>               return PTR_ERR(vaddr);
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/g=
t/intel_lrc.c
> index 1b710102390b..e5a83d4932c8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1191,7 +1191,7 @@ lrc_pre_pin(struct intel_context *ce,
>       GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
>
>       *vaddr =3D i915_gem_object_pin_map(ce->state->obj,
> -                                      i915_coherent_map_type(ce->engine-=
>i915,
> +                                      intel_gt_coherent_map_type(ce->eng=
ine->gt,
>                                                               ce->state->=
obj,
>                                                               false) |
>                                        I915_MAP_OVERRIDE);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/=
gt/intel_ring.c
> index fb99143be98e..59da4b7bd262 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring.c
> @@ -13,6 +13,7 @@
>  #include "intel_engine_regs.h"
>  #include "intel_gpu_commands.h"
>  #include "intel_ring.h"
> +#include "intel_gt.h"
>  #include "intel_timeline.h"
>
>  unsigned int intel_ring_update_space(struct intel_ring *ring)
> @@ -56,7 +57,7 @@ int intel_ring_pin(struct intel_ring *ring, struct i915=
_gem_ww_ctx *ww)
>       if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915)) =
{
>               addr =3D (void __force *)i915_vma_pin_iomap(vma);
>       } else {
> -             int type =3D i915_coherent_map_type(vma->vm->i915, vma->obj=
, false);
> +             int type =3D intel_gt_coherent_map_type(vma->vm->gt, vma->o=
bj, false);
>
>               addr =3D i915_gem_object_pin_map(vma->obj, type);
>       }
> diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm=
/i915/gt/selftest_context.c
> index 76fbae358072..afce036bcaa8 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_context.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_context.c
> @@ -88,7 +88,7 @@ static int __live_context_size(struct intel_engine_cs *=
engine)
>               goto err;
>
>       vaddr =3D i915_gem_object_pin_map_unlocked(ce->state->obj,
> -                                              i915_coherent_map_type(eng=
ine->i915,
> +                                              intel_gt_coherent_map_type=
(engine->gt,
>                                                                       ce-=
>state->obj, false));
>       if (IS_ERR(vaddr)) {
>               err =3D PTR_ERR(vaddr);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/d=
rm/i915/gt/selftest_hangcheck.c
> index 8b0d84f2aad2..0dd4d00ee894 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -73,7 +73,7 @@ static int hang_init(struct hang *h, struct intel_gt *g=
t)
>       h->seqno =3D memset(vaddr, 0xff, PAGE_SIZE);
>
>       vaddr =3D i915_gem_object_pin_map_unlocked(h->obj,
> -                                              i915_coherent_map_type(gt-=
>i915, h->obj, false));
> +                                              intel_gt_coherent_map_type=
(gt, h->obj, false));
>       if (IS_ERR(vaddr)) {
>               err =3D PTR_ERR(vaddr);
>               goto err_unpin_hws;
> @@ -119,7 +119,7 @@ hang_create_request(struct hang *h, struct intel_engi=
ne_cs *engine)
>               return ERR_CAST(obj);
>       }
>
> -     vaddr =3D i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_t=
ype(gt->i915, obj, false));
> +     vaddr =3D i915_gem_object_pin_map_unlocked(obj,
> +intel_gt_coherent_map_type(gt, obj, false));
>       if (IS_ERR(vaddr)) {
>               i915_gem_object_put(obj);
>               i915_vm_put(vm);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i91=
5/gt/selftest_lrc.c
> index a78a3d2c2e16..bc883de02295 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1292,7 +1292,7 @@ static int compare_isolation(struct intel_engine_cs=
 *engine,
>       }
>
>       lrc =3D i915_gem_object_pin_map_unlocked(ce->state->obj,
> -                                            i915_coherent_map_type(engin=
e->i915,
> +                                            intel_gt_coherent_map_type(e=
ngine->gt,
>                                                                     ce->s=
tate->obj,
>                                                                     false=
));
>       if (IS_ERR(lrc)) {
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915=
/gt/shmem_utils.c
> index 449c9ed44382..ffd48839a825 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -11,6 +11,7 @@
>  #include "i915_drv.h"
>  #include "gem/i915_gem_object.h"
>  #include "gem/i915_gem_lmem.h"
> +#include "gt/intel_gt.h"
>  #include "shmem_utils.h"
>
>  struct file *shmem_create_from_data(const char *name, void *data, size_t=
 len)
> @@ -31,9 +32,9 @@ struct file *shmem_create_from_data(const char *name, v=
oid *data, size_t len)
>       return file;
>  }
>
> -struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
> +struct file *shmem_create_from_object(struct drm_i915_gem_object *obj,
> +                                   struct intel_gt *gt)
>  {
> -     struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>       enum i915_map_type map_type;
>       struct file *file;
>       void *ptr;
> @@ -44,7 +45,7 @@ struct file *shmem_create_from_object(struct drm_i915_g=
em_object *obj)
>               return file;
>       }
>
> -     map_type =3D i915_coherent_map_type(i915, obj, true);
> +     map_type =3D intel_gt_coherent_map_type(gt, obj, true);
>       ptr =3D i915_gem_object_pin_map_unlocked(obj, map_type);
>       if (IS_ERR(ptr))
>               return ERR_CAST(ptr);
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.h b/drivers/gpu/drm/i915=
/gt/shmem_utils.h
> index b2b04d88c6e5..743a56307216 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.h
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.h
> @@ -11,9 +11,11 @@
>  struct iosys_map;
>  struct drm_i915_gem_object;
>  struct file;
> +struct intel_gt;
>
>  struct file *shmem_create_from_data(const char *name, void *data, size_t=
 len);
> -struct file *shmem_create_from_object(struct drm_i915_gem_object *obj);
> +struct file *shmem_create_from_object(struct drm_i915_gem_object *obj,
> +                                   struct intel_gt *gt);
>
>  void *shmem_pin_map(struct file *file);
>  void shmem_unpin_map(struct file *file, void *ptr);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/=
i915/gt/uc/intel_gsc_fw.c
> index ab1a456f833d..6efb86c93bfc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> @@ -268,7 +268,6 @@ static int gsc_fw_load(struct intel_gsc_uc *gsc)
>  static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)  {
>       struct intel_gt *gt =3D gsc_uc_to_gt(gsc);
> -     struct drm_i915_private *i915 =3D gt->i915;
>       void *src;
>
>       if (!gsc->local)
> @@ -278,7 +277,7 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *g=
sc)
>               return -ENOSPC;
>
>       src =3D i915_gem_object_pin_map_unlocked(gsc->fw.obj,
> -                                            i915_coherent_map_type(i915,=
 gsc->fw.obj, true));
> +                                            intel_gt_coherent_map_type(g=
t, gsc->fw.obj, true));
>       if (IS_ERR(src))
>               return PTR_ERR(src);
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i91=
5/gt/uc/intel_guc.c
> index 2eb891b270ae..c0fa9d232205 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -792,7 +792,7 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *=
guc, u32 size,
>               return PTR_ERR(vma);
>
>       vaddr =3D i915_gem_object_pin_map_unlocked(vma->obj,
> -                                              i915_coherent_map_type(guc=
_to_gt(guc)->i915,
> +                                              intel_gt_coherent_map_type=
(guc_to_gt(guc),
>                                                                       vma=
->obj, true));
>       if (IS_ERR(vaddr)) {
>               i915_vma_unpin_and_release(&vma, 0);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/=
i915/gt/uc/intel_huc_fw.c
> index 48f506a26e6d..b648238cc675 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> @@ -27,7 +27,6 @@ struct mtl_huc_auth_msg_out {  int intel_huc_fw_auth_vi=
a_gsccs(struct intel_huc *huc)  {
>       struct intel_gt *gt =3D huc_to_gt(huc);
> -     struct drm_i915_private *i915 =3D gt->i915;
>       struct drm_i915_gem_object *obj;
>       struct mtl_huc_auth_msg_in *msg_in;
>       struct mtl_huc_auth_msg_out *msg_out;
> @@ -43,7 +42,7 @@ int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
>       pkt_offset =3D i915_ggtt_offset(huc->heci_pkt);
>
>       pkt_vaddr =3D i915_gem_object_pin_map_unlocked(obj,
> -                                                  i915_coherent_map_type=
(i915, obj, true));
> +                                                  intel_gt_coherent_map_=
type(gt, obj, true));
>       if (IS_ERR(pkt_vaddr))
>               return PTR_ERR(pkt_vaddr);
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i=
915/gt/uc/intel_uc_fw.c
> index 7aadad5639c3..fc0d05d2df59 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -11,6 +11,7 @@
>  #include <drm/drm_print.h>
>
>  #include "gem/i915_gem_lmem.h"
> +#include "gt/intel_gt.h"
>  #include "gt/intel_gt_print.h"
>  #include "intel_gsc_binary_headers.h"
>  #include "intel_gsc_fw.h"
> @@ -1213,7 +1214,7 @@ static int uc_fw_rsa_data_create(struct intel_uc_fw=
 *uc_fw)
>               return PTR_ERR(vma);
>
>       vaddr =3D i915_gem_object_pin_map_unlocked(vma->obj,
> -                                              i915_coherent_map_type(gt-=
>i915, vma->obj, true));
> +                                              intel_gt_coherent_map_type=
(gt, vma->obj, true));
>       if (IS_ERR(vaddr)) {
>               i915_vma_unpin_and_release(&vma, 0);
>               err =3D PTR_ERR(vaddr);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm=
/i915/pxp/intel_pxp_gsccs.c
> index c7df47364013..c27fc5870608 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
> @@ -336,7 +336,7 @@ gsccs_create_buffer(struct intel_gt *gt,
>       }
>
>       /* return a virtual pointer */
> -     *map =3D i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_ty=
pe(i915, obj, true));
> +     *map =3D i915_gem_object_pin_map_unlocked(obj,
> +intel_gt_coherent_map_type(gt, obj, true));
>       if (IS_ERR(*map)) {
>               drm_err(&i915->drm, "Failed to map gsccs backend %s.\n", bu=
fname);
>               err =3D PTR_ERR(*map);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i=
915/pxp/intel_pxp_tee.c
> index 1ce07d7e8769..8e0b5d48ddf6 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -11,6 +11,7 @@
>  #include "gem/i915_gem_lmem.h"
>
>  #include "i915_drv.h"
> +#include "gt/intel_gt.h"
>
>  #include "intel_pxp.h"
>  #include "intel_pxp_cmd_interface_42.h"
> @@ -245,7 +246,7 @@ static int alloc_streaming_command(struct intel_pxp *=
pxp)
>       }
>
>       /* map the lmem into the virtual memory pointer */
> -     cmd =3D i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_typ=
e(i915, obj, true));
> +     cmd =3D i915_gem_object_pin_map_unlocked(obj,
> +intel_gt_coherent_map_type(pxp->ctrl_gt, obj, true));
>       if (IS_ERR(cmd)) {
>               drm_err(&i915->drm, "Failed to map gsc message page!\n");
>               err =3D PTR_ERR(cmd);
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/d=
rm/i915/selftests/igt_spinner.c
> index 3c5e0952f1b8..0f064930ef11 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -97,7 +97,7 @@ int igt_spinner_pin(struct igt_spinner *spin,
>       if (!spin->batch) {
>               unsigned int mode;
>
> -             mode =3D i915_coherent_map_type(spin->gt->i915, spin->obj, =
false);
> +             mode =3D intel_gt_coherent_map_type(spin->gt, spin->obj, fa=
lse);
>               vaddr =3D igt_spinner_pin_obj(ce, ww, spin->obj, mode, &spi=
n->batch_vma);
>               if (IS_ERR(vaddr))
>                       return PTR_ERR(vaddr);
> --
> 2.25.1
>
