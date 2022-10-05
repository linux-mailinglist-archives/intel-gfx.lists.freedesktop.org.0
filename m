Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B42E5F583C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 18:23:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F81010E6DD;
	Wed,  5 Oct 2022 16:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A6A10E6D9
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 16:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664986962; x=1696522962;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0LS/E03PRKij/igPEsON1IJa3O9niuFlh51zSKwVCRE=;
 b=O/Q6EOG8PgPIVj61wfQcYpEU0Ju0vuk2fEkeb5ETwlcUb3J2ad4fm1oQ
 sC/Chj+p5KoqA1e1FZBhlxEPHmSIY9VrqhR437BkYMGGlx0YuhxrwQ94y
 UZUYh0HVG1qnpZT1uX5Yha3QSe3F1pGWLO7YtyYcC7l7xZdcf3scwkNfh
 XV/POSYw70fA1MQ8Uw5pRSBk3Nft80i/kghDOgoFN5oDhYTF2gIJLm2nw
 A/726whT/VlTcR4uPEpYufG7Vpapka+IEWYnd2LJIPbkyDHeuAbITBjYI
 HnKf8n++GL8m2MfRWx2mrgexLUb2L7VpBIBRfgYO6QtyM13Xqvr/QsuS7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="300803042"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="300803042"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 09:22:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="624363520"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="624363520"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 05 Oct 2022 09:22:41 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 09:22:41 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 09:22:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 09:22:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 09:22:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ePkHSeJl3Ml1vDeWariTnDOIVBan5FQpZI+RHxJQZ2iCm2GVu20CF4MZA9RG/ZIlVMnQhkkdACx4wbHpwr3pk6uzPLAFMiuWpfTMqsv7kwfvQUsJLCuS/V77qLL4n8lQ4X44t061Op8W8p9u1v0cH90xKv/ZUpfWedptaqaODdpB/xUGViNxEbbBdiso1FC+yx0cPw8QDWS5FgCAoFWf+DQ5cmkakUzmIqueB1Oo+a0uZ/CafYmfuvfoXsqGiOf/SHsF+nxgV3LAtcaflc7KvRhS2ObjUZ1qmUx83nvDp/0dgiA5ekBVS2ZdrRaCwg/O5WKEmzP1kWaDjgOQoEIBYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IRC391AAcCJ+3RC4adGAzo5vmMx1UbtuSiXpjAo54ks=;
 b=lUanH0h1837G4ZN+jYab9GmiVRAVFMQ+2BeI5eYzx03AN4ZvNaogIMXrMsschGJQxY+YkKn7AIhSDcrAxOo/loQvvUWnzoCuQt8nN4w5WzzDOsNCXvuVWpQvaEjMKgVW+5aChnpurFRhMjYlwV+Jcoz5cd/zQLnzOvBI66GGt1dB92mHWA9x4BHl+wwXniH5bGYP4PvUnzHtgRXg8zNfwn2efAmnj8enQlcUQ0/Y3YasrRE6KKZkPFBiOalFroAC5KQEJGxDKg9oD51/fIrBo5QMm2+HqGWVMT1mWzwt4qwOUdoJIRnVQOkNgMT6zj75B50vBZoAzimhDJB7S+K3/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BN9PR11MB5370.namprd11.prod.outlook.com (2603:10b6:408:11b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Wed, 5 Oct
 2022 16:22:36 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%4]) with mapi id 15.20.5676.031; Wed, 5 Oct 2022
 16:22:36 +0000
Date: Wed, 5 Oct 2022 09:22:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20221005162234.r7qnnio4yutkxqh6@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221005153148.758822-1-matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221005153148.758822-1-matthew.auld@intel.com>
X-ClientProxiedBy: MW4PR03CA0049.namprd03.prod.outlook.com
 (2603:10b6:303:8e::24) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BN9PR11MB5370:EE_
X-MS-Office365-Filtering-Correlation-Id: bbc0622c-ac46-4692-2055-08daa6edd0aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zCF4rWDgg/Khjme0S0o3xnxVqwYHe3q7jksUC42S7elhh55tBMHBVTe8RCEHZkl3y2ZtL9MQk9N+X0EzVXofT6/vqBoMkhtR8qT6LbzFg4+/OxI+qsk+Ttb4FXSXHV0n7qikFvoQ/VXy1D/oLDuEKrKdxitPqftt8afs9NSw7ES/+hIeru1gO3MPVgfuUYN5N434Zswp4/4e17MjnQdR+lg13girA+v/vAmBNvp3mJ7uiwUg4r8WnRl7p8gVQZuVLW+Q+VVsKecmsLUz/XrBdZMr+97/z+C0AGqKUKtf0oIkt00k5Mue9wZY+xUpQrH9WoK6R48kzKgIAJKeI7grJpI4dyR1u47qdNOwpgdAWsEKdGpLptigkm7GjgRC88L6q5EObyVQ1500ic+aWQhsuxlCHvEw6TmT2W6lv33N4yPONimmeFS8zaC7XTTND5xZoaFVWoTd1QZR9e43l9iYvYjEgWSw1T1YxQzTgcav5YZ9oYjQiQi2KzSceH44DJpkhfRUascH7I+kU5/8Ggk5LeJob/TLM1zBgLh5m6UvfX8hP6LOZsJQ1nzceW9A9WbQu5uF2o43iEakuXRAqW9Sm7+fQ+luUw+Dk8u6UJKWE853VTbkSLuk0tOzJaiwjTaboIhKesCVwmnK+QYQpVPVvlqwhNsdgHLTwm6y6TaV1BZApB+hKlIQ7QFAE/iQ7u4yX9JLg0Ez//029Yt+mi0uug==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(376002)(366004)(396003)(451199015)(26005)(8936002)(6862004)(36756003)(41300700001)(107886003)(6506007)(66946007)(66476007)(5660300002)(8676002)(4326008)(9686003)(6512007)(66556008)(316002)(38100700002)(82960400001)(2906002)(86362001)(186003)(1076003)(83380400001)(478600001)(6486002)(54906003)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QjP7ZJ1jV/Sed9+EjzZWBEp+fmteWkViM0mvM7gjdGobpfr9SAFK70KmiS8U?=
 =?us-ascii?Q?Kmu5ud4AywNy1CxPECMCic9gBM3H8zlwbeUaxKiz1z2UbQVsDK5E/zGwIc3y?=
 =?us-ascii?Q?S8RN+1lvzGVGQwLjDSDiKAozFyesePXaLnmXVjkJsv+pdAlXBV+zmujq0izh?=
 =?us-ascii?Q?bWR7pW9gJOlNmUvEjIFFYfjy4wenbtFa0v3U45ojMpmNKWAvhWm+PWORqeKu?=
 =?us-ascii?Q?32GUNBMeETVsMDUYmsSpSV7CeahQddKQNj2jME8n2zmB17PEKr+mSuD6tPPz?=
 =?us-ascii?Q?HEx1qhcr3eYmIYzdLUMT55n5od+VHddgGtLVAb5OvWocT+5pJ173A771wZ2p?=
 =?us-ascii?Q?sHFWi7y6CS/3BM6lQ4j75lf9YZoQjR/o2VJSSkXjCm2aUEC+F6F7YDWvKPpU?=
 =?us-ascii?Q?znOMFMB6UZxTQL1jbLtoJb/JFkeTlcZ+utVaLrzX95vtfit0Np0jphoqDGRo?=
 =?us-ascii?Q?Vk3uPaDigtmamnUcBnPXIsG7fvy4spUrpsWiyIsKoFJhcNKMovcDhoMgFVzZ?=
 =?us-ascii?Q?kBT2JOvvceBZ8DDfxFX5sct6cWjkSliWDQm8AayXT3WfsKWxWe5HXlfvcyzr?=
 =?us-ascii?Q?pE2KhFtKLmPQSyavIrHqiOPnXmtV7uJh/Ol/QPsqGLUFYNbmVJnh0G8n6HI2?=
 =?us-ascii?Q?hcRqquUMvIxIUroZ0WZXRL5I1Du6yXnua/RbAWdjuJiAeZfmHmJsLEmslT/7?=
 =?us-ascii?Q?hf50ZzW9qAObaXJRodTWEIbn2IUcX/WNc1/MdpS8i8QUjh2Ufc5wDV0JRm5U?=
 =?us-ascii?Q?yKSxFBqe2ukvj9RWnuowq+6dlwm17ob18AJNN2To/pMcXi6/E+Ce4jjYWP8A?=
 =?us-ascii?Q?p/F32CQWtvc2MCIgZhcbVksWDc2ConYh4ufIOAWUUEtWRHIryQIELsWbjUum?=
 =?us-ascii?Q?sP+5MB4LN3aIU9lnSwegIwghtIPhN67CloopJGeJQhYnJedPOo58wOf2hefR?=
 =?us-ascii?Q?6SbQM57Mx6Iw/rPFf/3p0UYX/GNkq3aDX65cg/zC6F5/ike0dd04fT23eLpx?=
 =?us-ascii?Q?VrU9imeRXiuzQA3fK1b3Anzz348j4kZ0JVhbY1HuNVC5ogfIFkJx0jXv16Zk?=
 =?us-ascii?Q?2X8xHgN1oyvMxSxEEGljdz1k5kDbddCD0Wxd2zyq3eefBuMFdEs8nF1G5lOv?=
 =?us-ascii?Q?PKK7uulTx7vI8kE9ZwV4DWYNOyf7HIRCUSGMeocytMxJPUGKekb6Q9m0cs5s?=
 =?us-ascii?Q?fSJbRKDJxo4yIhxcf6DAKfxEu+435RMCfy+6DXCh7NA3WX5mfdJbqmZSVKOb?=
 =?us-ascii?Q?hIQr8zEEl9N2rnb9Q32J11TKqge89MnaxYVB+CsN5ihgDiywxdd2yE+r4K7i?=
 =?us-ascii?Q?yk3FXBwfMAqgysEQkhseKmvtU/mxj9qXAxk0zun8Y0S29YXH2ixDDDVw9CzH?=
 =?us-ascii?Q?m5+AO2TjqQEBBx6AdiyL8d25Z98RAhFQVzTbiowOeXxfVhftZslJcYILiaOU?=
 =?us-ascii?Q?Ub3GCcFevU/4JhLb+98XQdPh0cQGuyw3UBY395Qq9oK0LpAzZLfYrHj9Shgv?=
 =?us-ascii?Q?GhBHz7vhtN2Vbh237w4V/lRdswckTaTl/I/3d3hpoTlYI+g3vtZitIWdRJWR?=
 =?us-ascii?Q?+8DKzTCfBtYZVzWdZkI0xUijNDUfj9LKmwq2YtjMhZQ479wOdksOCn57EAij?=
 =?us-ascii?Q?yQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbc0622c-ac46-4692-2055-08daa6edd0aa
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2022 16:22:36.6491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H+9WIy2cIanKDA0A1gA86AtcV/vDmUgrbQ4daf7Oy1RQNYblnuOdaQBFKmilLRn7hNF057koFwqao8ffEm1RXks2p3xdtcdmve63Yya0Q/E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5370
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: add back GEN12_BDSM_MASK
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 05, 2022 at 04:31:47PM +0100, Matthew Auld wrote:
>The mask was added in commit e5f415bfc5c2 ("drm/i915: Add missing mask
>when reading GEN12_DSMBASE"), but then looks to be dropped in some
>unrelated code movement in commit dbb2ffbfd708 ("drm/i915/mtl: enable
>local stolen memory") without explanation. Add it back.
>
>Fixes: dbb2ffbfd708 ("drm/i915/mtl: enable local stolen memory")
>Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>index 910086974454..2c4922961f33 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>@@ -910,7 +910,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
> 		GEM_BUG_ON((dsm_size + SZ_8M) > lmem_size);
> 	} else {
> 		/* Use DSM base address instead for stolen memory */
>-		dsm_base = intel_uncore_read64(uncore, GEN12_DSMBASE);
>+		dsm_base = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
> 		if (WARN_ON(lmem_size < dsm_base))
> 			return ERR_PTR(-ENODEV);
> 		dsm_size = lmem_size - dsm_base;
>-- 
>2.37.3
>
