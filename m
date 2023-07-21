Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AF975D063
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 19:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9EEF10E6E0;
	Fri, 21 Jul 2023 17:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DEA10E6E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689959513; x=1721495513;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RU1USZhzD7+TYh9iLB/BhE0hjWBZBZqTL9s5OuNpXqE=;
 b=kQAFC0GAZxuvoJgNymfHkYBtLRzPFb2uAlJufAwFWfQqVHRBmUmV8rNO
 Gf6Uu77ol1Qa5NgeJTjln6PHlT8tfx3JY0DgvL8PzR6EwLcNrwd2C/w3K
 L2I18upsC1ofvbfiN6IW82WYc8vxJdXwaGQeDbqPyMnwTVzdtrazmmApy
 pgar8ul3EqhFw5fuC+ribP4XNFQG8q8cR7btvAqvqpih/ltPtqJuwZrZ3
 hL4WXU5n9P+JsC6vQE9Ejl892YVfD5XDrNzlNAI2jPrgSqcnJTebPCs/G
 CECliprZ6k9we4SPibet6B7SR061WR93JksUj2wtG2ZYH+bmB8DhJxOtU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="351955434"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="351955434"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 10:11:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="1055622554"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="1055622554"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 21 Jul 2023 10:11:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 10:11:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 10:11:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 10:11:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mtkD4DTHnEhLsXvaR/kS6qNxYUyESizfDn8sA+CA37hD0eBRHdaDEAqLhT5oztywvp923Tg59s16DelsJuBjK/syxMeuXFGZVszR51P5DmSeR8LLMPHB+HZkZP+oWFi7kTikuLbfuK+dGgY0Yut97Tpody/N2SSzNVw4lFfOT7vqVhhjMVY5W7xnBKda30sd+rlzah1xkCiDaHDBxUwiM2xlmmgNjnNunA+KYV4CLt0zgDemjSIWGp1s38Ful/OomA303qFWSMZy1npVaBcISmwX/Xza/6Hf3JDNVQW9NhLmmkcLaYYwL1yhXEBodGRq6aGZPjVq1lAjWi5JQTaTqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QubkoQLQhcQsc9YHRXhHZ6qY2sijlkAdhRf3EsTC2As=;
 b=bR+Kl4EekOZGoORUDafCzun+svWppWbgIo2upHEIKEC0vP6tY3zUbla+1OfmAXUkeLmgScpJAwr7+A4MdpNZ77rCsEauezO0GBBZGOdMgU2mofzLlhnFwH4ZaGkWjIpzkjhKhXen7pbjT7DNeuJXEYjUDxFGdv0Cc8UjYWAE1ZLWjleWkSFZVDdXoH+9KZqMx/pcdMnycHkkicKQosnE2W5utFeaipL9IR8lE6LYQMRNim/XUkstgQpFJXnDT5vb/Kureuf3RJmLomntbzJqUrbjBgE+XvagAsAALRbDM+S7oWLBX0VH5agpe1e/JUkmowZoS/K0UfxtScw/LJPhoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2567.namprd11.prod.outlook.com (2603:10b6:a02:c5::32)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28; Fri, 21 Jul
 2023 17:11:14 +0000
Received: from BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::ca92:81a9:39f7:933b]) by BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::ca92:81a9:39f7:933b%4]) with mapi id 15.20.6609.026; Fri, 21 Jul 2023
 17:11:14 +0000
From: "Yang, Fei" <fei.yang@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH dii-client 2/2] drm/i915/gt: Apply workaround 22016122933
 correctly
Thread-Index: AQHZu92CCxNlXwWzzE6yjLblCJzUd6/EdJTg
Date: Fri, 21 Jul 2023 17:11:14 +0000
Message-ID: <BYAPR11MB256700B23F8447E32897F0D79A3FA@BYAPR11MB2567.namprd11.prod.outlook.com>
References: <20230721140559.830660-1-jonathan.cavitt@intel.com>
 <20230721140559.830660-2-jonathan.cavitt@intel.com>
In-Reply-To: <20230721140559.830660-2-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2567:EE_|CH3PR11MB7842:EE_
x-ms-office365-filtering-correlation-id: 03916fa6-6049-41ae-a424-08db8a0d7d3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ohvguaAOooGhgQggCi+h2krsI69c1icC4Rkq2m3Q55wDklBDDl1vg/9RO7FDY8/BcHDFn3gJ5TfqqclxHgxJfWJXqfhry2kxTOhUlgegT/FIjHy/UDLAmti5LMyozSLbD+SueV0TV8bcFmxtAYqwVZoq5J6AiE6bxWnPIktYgO+mJTFU4j+ka6jXdcLx1B8PHBM6ArVxsQ3uJprltYPr1EBYa2V6r7GpotKa7kdqeyjWg3oTa9/ozd1t62UPHIl7PICUHrIq+OY94vkpNcgkfqio7ReQzFbBb2ORiBMUPH5YIxKjjoBGp81ufqe7VCxN/K6XKTG3gYJSqsocUeijyvIfV6jFfDLIoF6SPBDG8APS59l3HvrgIsgZIGDKdkAf0pjOVWC9HGSl7OMPc6GB084vbM4qQ7QY4wZZthi90d3d8O08Nes6OLn3HqUnbJM1fFaOb9G65rY8LDspeoeGSL5Q1KG13GUxTWW020VpclKROG7dLZg/pXsdG8nbZCUionJtVAJSKhmvDA4XGL4lFDS7MngdNSSFVEi2RTnjSNZB1yQbVJ9eSLEad+YikCjzW3p/4x2vURjrWthMPNg1vTkw1s2mS9PSr202cNc7jaOOwQ0OXGSD7RfpqhQw3iDb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2567.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199021)(76116006)(122000001)(52536014)(2906002)(33656002)(8936002)(8676002)(5660300002)(71200400001)(478600001)(82960400001)(66946007)(4326008)(64756008)(66556008)(66476007)(66446008)(7696005)(186003)(83380400001)(9686003)(38070700005)(41300700001)(54906003)(316002)(110136005)(55016003)(26005)(6506007)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8LxA66EqVSlR6/95OE8fG6l+yXtyQOfOegVBFB+2I4eAGvPBaW+pFBRu+Hv6?=
 =?us-ascii?Q?pRQDOdnzG5wF2iAat0/Z6mndO+xRzUsEqFscrJ3AwCBwSDqZiXNcIcCyFb5l?=
 =?us-ascii?Q?rpmgsRR0z7UV9FyTBESkdsuFO+vz6QqNvBUkhDiG56iGZOeWoci3FyFS2sxD?=
 =?us-ascii?Q?Ebx84EXoMGKjt85AjAMYaq/+tdjIekjipvt+isZN4ASKGH76dZbehRrwxRC7?=
 =?us-ascii?Q?UNybbzO80cEMZNPtmAwF3nXEiBxFoA3SQUCxeS74IuUfB1JojavoUbkAGkFg?=
 =?us-ascii?Q?HG9eGDW35dQr8bJnkwekN1DNfRzx3mY9ry8AvywVj21o3BxL6t2L52qSN+rU?=
 =?us-ascii?Q?19wnUGIamx0XBYtStdIshRhx0fcMhV3uOgRZ+rU6qpmazkFSLWg4UT0Y5/yL?=
 =?us-ascii?Q?MdZcUcfqdyFzTgThOox8PpvhwTNdkal8BE1GVkOgKZHk+4zzNFvfMgMByyQ5?=
 =?us-ascii?Q?JoDg5VaXdHWer9X4dXnBcr6sEKiRXhONjQ2htVWO9S1gyEEv7RqRQt0cfUP2?=
 =?us-ascii?Q?fu9evWIc1OO2haaGMty4jmGY7iSATPznUVkHg0tpKRw7+JcfM/Gr5onlMAJO?=
 =?us-ascii?Q?WbtCSrlm0nrGcN+JBjYL250GU0TUFtH6f7ZUA6g+x+k1bidhVPpAYyzzdNcj?=
 =?us-ascii?Q?fTTFHRAuIRNCmcBDxL1Vls56Pnyq82OSlOBiuHgGLqBbOm7K8WXfqUgFocRy?=
 =?us-ascii?Q?JJHLgOh6s9xc/E0ArNJvHh751Ld0H91Bfy1eU9j424nKkHb14YCTBIaUbQgh?=
 =?us-ascii?Q?cjPoxepZRpoYvWrB4bhfBZklBFzWXAlkVdzDxQPIZFxtCmybuKoACuOiFXqa?=
 =?us-ascii?Q?bAOYEcmRomxrbXMhXABYhU6gdT+hNpwbas0IDvQqrHdLaMoDhZ1Ns0vP0oEk?=
 =?us-ascii?Q?xkEZ1NYa08IoBodIpgAxmAwhiTbVb3ZN4IBwt/R0FvLdS+YkMHYaa/eIuns0?=
 =?us-ascii?Q?cnND6OMbGlAnCreii2AC5kFhx/KwipvO6vROiu7ROS0DBkGkKFfxFlePdrDD?=
 =?us-ascii?Q?8nnDSxF7mcEdPLHzZl0FIj8IV6gNNT+EyL4xS+oT/sx791dj3HAT7geqkAwh?=
 =?us-ascii?Q?5u7zA9uN47832BNUKlkrg8iqOyPdQ9HWYwdt/juDGqU4sUp8DwN/oUzD+Xp9?=
 =?us-ascii?Q?DkkQ4XFDHXv8WLNIKOhxB/Vgubb/4MkahvLFSDYAqJ06VuJvVB7r13z3Pb7x?=
 =?us-ascii?Q?8ER9IJJRpOcDLbpXudyqG1HQDDrdj5ygZoVs3V+jChD4HOjYcN41ssvlcZTP?=
 =?us-ascii?Q?vJNbtOLngSsBxmBAUiKIzANYRMCZZHHNL/djiRYZPRG1FP2IrWaPK+oxMWH/?=
 =?us-ascii?Q?UuiVL5cNLPTX+hgHMYs0cSlWkeC6S4uqGjPcI1BoQUR4W8AJXJxBR3yKKoPD?=
 =?us-ascii?Q?Xn5bZowsyXWT74kmoPH4jrxTsewFstztxeCkLOS//3OEnnotHrcB6WIMYhwU?=
 =?us-ascii?Q?VPywOHjr51EDgbONW3L0t/W69+G7FQ44SoZ/3W+kXSAQe/hEJUUcCy8to3Rk?=
 =?us-ascii?Q?uTDqxuZeE5unKFMJsNH+m86eSHfuYCk3qA/fjc3nyBNmJwyGYKuRF4DjJHgp?=
 =?us-ascii?Q?ksP6Xh99uR6gLRoQYm4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2567.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03916fa6-6049-41ae-a424-08db8a0d7d3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 17:11:14.3438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d7DsJgnzW1c8kInjUsm3TOPDGl3/VP9X9nnOJB1UJLkkQ2NgHeDwr+qAJlMSB1ZqtcZ6e1AldrMGtm+LC+cjjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 2/2] drm/i915/gt: Apply
 workaround 22016122933 correctly
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

> WA_22016122933 was recently applied to all MeteorLake engines,
> which is simultaneously too broad (should only apply to Media
> engines) and too specific (should apply to all platforms that
> use the same media engine as MeteorLake).  Correct this in
> cases where coherency settings are modified.
>
> There were also two additional places where the workaround was
> applied unconditionally. The change was confirmed as necessary
> for all platforms, so the workaround label was removed.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Fei Yang <fei.yang@intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c | 5 +++--
>  drivers/gpu/drm/i915/gt/intel_gt.h        | 6 ++++++
>  drivers/gpu/drm/i915/gt/intel_lrc.c       | 7 ++++---
>  drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 4 ----
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c    | 7 ++++---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 4 ----
>  6 files changed, 17 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/=
i915/gem/i915_gem_pages.c
> index 44d93ead96ff..4acdd008d1d3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -470,9 +470,10 @@ enum i915_map_type i915_coherent_map_type(struct int=
el_gt *gt,
>                                         bool always_coherent)
>  {
>       /*
> -      * Wa_22016122933: always return I915_MAP_WC for MTL
> +      * Wa_22016122933: always return I915_MAP_WC for Media
> +      * version 13.0 when the object is on the Media GT
>        */
> -     if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
> +     if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(g=
t))
>               return I915_MAP_WC;
>       if (HAS_LLC(gt->i915) || always_coherent)
>               return I915_MAP_WB;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt=
/intel_gt.h
> index d2f4fbde5f9f..4eb41a3b6e8b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -6,6 +6,7 @@
>  #ifndef __INTEL_GT__
>  #define __INTEL_GT__
>
> +#include "i915_drv.h"
>  #include "intel_engine_types.h"
>  #include "intel_gt_types.h"
>  #include "intel_reset.h"
> @@ -24,6 +25,11 @@ static inline bool gt_is_root(struct intel_gt *gt)
>       return !gt->info.id;
>  }
>
> +static inline bool intel_gt_needs_wa_22016122933(struct intel_gt *gt) {
> +     return MEDIA_VER_FULL(gt->i915) =3D=3D IP_VER(13, 0) && gt->type =
=3D=3D
> +GT_MEDIA; }
> +
>  static inline struct intel_gt *uc_to_gt(struct intel_uc *uc)  {
>       return container_of(uc, struct intel_gt, uc);
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/g=
t/intel_lrc.c
> index c45e6d8cbaac..668ed3fc7076 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1095,10 +1095,11 @@ __lrc_alloc_state(struct intel_context *ce, struc=
t intel_engine_cs *engine)
>       if (IS_ERR(obj)) {
>               obj =3D i915_gem_object_create_shmem(engine->i915, context_=
size);
>               /*
> -              * Wa_22016122933: For MTL the shared memory needs to be ma=
pped
> -              * as WC on CPU side and UC (PAT index 2) on GPU side
> +              * Wa_22016122933: For Media version 13.0, all Media GT sha=
red
> +              * memory needs to be mapped as WC on CPU side and UC (PAT
> +              * index 2) on GPU side.
>                */
> -             if (IS_METEORLAKE(engine->i915))
> +             if (intel_gt_needs_wa_22016122933(engine->gt))
>                       i915_gem_object_set_cache_coherency(obj, I915_CACHE=
_NONE);
>       }
>       if (IS_ERR(obj))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/=
i915/gt/uc/intel_gsc_fw.c
> index fb4933543f31..1093b47d3e06 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> @@ -284,10 +284,6 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *=
gsc)
>       memcpy_toio(gsc->local_vaddr, src, gsc->fw.size);
>       memset_io(gsc->local_vaddr + gsc->fw.size, 0, gsc->local->size - gs=
c->fw.size);
>
> -     /*
> -      * Wa_22016122933: Making sure the data in dst is
> -      * visible to GSC right away
> -      */
>       intel_guc_write_barrier(&gt->uc.guc);
>
>       i915_gem_object_unpin_map(gsc->fw.obj);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i91=
5/gt/uc/intel_guc.c
> index effb37727093..0000846f6029 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -745,10 +745,11 @@ struct i915_vma *intel_guc_allocate_vma(struct inte=
l_guc *guc, u32 size)
>               return ERR_CAST(obj);
>
>       /*
> -      * Wa_22016122933: For MTL the shared memory needs to be mapped
> -      * as WC on CPU side and UC (PAT index 2) on GPU side
> +      * Wa_22016122933: For Media version 13.0, all Media GT shared
> +      * memory needs to be mapped as WC on CPU side and UC (PAT
> +      * index 2) on GPU side.
>        */
> -     if (IS_METEORLAKE(gt->i915))
> +     if (intel_gt_needs_wa_22016122933(gt))
>               i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>
>       vma =3D i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/=
i915/gt/uc/intel_guc_ct.c
> index f28a3a83742d..97eadd08181d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -960,10 +960,6 @@ static int ct_read(struct intel_guc_ct *ct, struct c=
t_incoming_msg **msg)
>       /* now update descriptor */
>       WRITE_ONCE(desc->head, head);
>
> -     /*
> -      * Wa_22016122933: Making sure the head update is
> -      * visible to GuC right away
> -      */
>       intel_guc_write_barrier(ct_to_guc(ct));
>
>       return available - len;
> --
> 2.25.1
>
