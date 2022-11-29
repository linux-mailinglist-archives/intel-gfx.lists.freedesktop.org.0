Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE9E63CA7B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 22:28:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4952810E3E5;
	Tue, 29 Nov 2022 21:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C4F410E3E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 21:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669757298; x=1701293298;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Qy0rx6/IX+0NlHS5kHihSdiDJX2FiaK97XKntDttm24=;
 b=Grqc4lJXVkAnVEvvpIVkw0SHm0Df3h6o9gM1rjHJLvsYswgI224zx1aH
 TXYJiIbnykciMiAF2JisZKc6kj9IzLwZTgPCMyAM/4jeqp2PCkIvtryOd
 rI4igLumCGPHHQhqqhrMfJlwwOV7kS5uSkcxB5JZox2+Sz+rsrT81QVaK
 pcUtmFT0wMaocVGf9LS2LCiAluaI5rKdvqWXna2dwnP7ywWpSb3QZ+gAu
 IkBWtpDJI+0lM0wSKUpaF8HMCnd+JZFdio21futTKEI5nJoniIC95+olq
 CBGNhLW2LsBdnSkgCyOobQRuBdnK9dgnDA8sNXN4hU19hIGdrg5DqLUWw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="315263972"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="315263972"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 13:28:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="707390459"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="707390459"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 29 Nov 2022 13:28:18 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 13:28:18 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 13:28:17 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 13:28:17 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 13:28:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FpH6q6u8U/VggkmFtAs3JmG646WEC+gujlljrrWbv/t7B8swK/PNVdKYWiw/T0xfLz5BwRfhkzQPzLqTxCt8wQX6mmcBUUQ00dl7ruupsD2xKgHjSAeo+pFS3H1B4P+AxvkKafQGYsOoRUf79oL5ypOqcsRO2vElG0/nymROJ8MD5Tua+a/QjcMC9hin9tXc+7PkULA5rhhKnB125/Gcms2JR9LYK3FGIRhOT1HsQSUUBpgKSg3k+jJxg4QS/HaSub3dD/F0GntkN49dD7moEg9m0m6TFs9GKQuRZ5d+pDUVtyJ6BGQpHWqZwY5HAZ/DkLjX9TzfThQQ7s4ATyyfUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VQj7eA35FWyV1SpWVVm80N9LkyYofSveVlKr+nTC7Hg=;
 b=CbtgoqDUBMxAYOkqxYbjdaGSM1HlNlPN31UmQkezl1qz47zD/GXmPgrpz4syo7y1PrlkFXWDvMrqSgLZyikwm6lclfllG+tmtYLznHqR6RfJlVzo6vuDzykues5j5+SLwIK1E25uAIiAWqjifIQ9WZ4JwNQy6gf1rlkK4P47fdkMXdxn2GhPRv1NHRJzQD3wOE5MmM6bnCa8SeSyEC31/oOV6r2KztiGdeQIHRbR2unBW9+DSQPHFZHL9dHnf5755VdnawlfkraoamXYCgvVHSdKPWhRugYl5iMfde3biXy/xt5dvIzJQUZ7M+vsQRdljOmvsqHTs9+DGEOLgxYvHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by LV2PR11MB5973.namprd11.prod.outlook.com (2603:10b6:408:14e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 21:28:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 21:28:15 +0000
Date: Tue, 29 Nov 2022 16:28:10 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <Y4Z5ajHrt3hllvUZ@intel.com>
References: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
 <20221129003152.3652072-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221129003152.3652072-2-alan.previn.teres.alexis@intel.com>
X-ClientProxiedBy: BYAPR01CA0061.prod.exchangelabs.com (2603:10b6:a03:94::38)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|LV2PR11MB5973:EE_
X-MS-Office365-Filtering-Correlation-Id: a1f3c96b-6f25-4a73-db74-08dad2509f97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3NjpiqOb4DKSz64mkKsHPm/vK2R9WLQowclU+igDw/BhdwxSeRjpH0wBi+RIzYSQUHo30mF8vixCjxUOe1CgP6BjecOMfCAXlT84wtYSsMQKjLTDq0BYj6VQhAkD6Bi+e3uDeJXgb6qgKZDVdeu1a0QUucCoFT/bjnWTC49XQqnuZNa5gf5mZ5pc6f2/JmMz2HSWVlMaHQU8VSrH/oug6lQvH4uGTzKxy06ev/rtUXFU6ZIavfDBUO0eUqonjU2O8cEyXoO9JnqPiZDdMBU0+EyUsm0yFPwl8feJE1MZL6H0pqnLurkv0yoy7GmsBl4PT5oKlJF1bKf01B6JBajfYw3pSWWEd8FPipzul5oyEqTjQ0+LmGUBy1TQg8Aew87U+PsGK8fCfaFecnxjpFIv0BG2xpTAqbU1lGe2VQeupGvLRiQuCVf8b9Rn3HcoSlmoKJ+N6BQRFYLOMXHl/TkY7/D1dpBMuJjjwtDgQB3tg0NcKDu6s37c90z/y0JLCrZsUlKQ4bSJUM1a0l7Dvw+3R8c2UxQ9pGlJ/nfujZbFvq8yi0v55N6WxjZ/+7LwUOpo46yd6nOVA24MBrsOLbsToxkpOcKYuK/JHFM2MmsW2gh/s/ot7uSd8CFHSJ3Qzjfi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(346002)(39860400002)(376002)(136003)(451199015)(6636002)(37006003)(4326008)(8676002)(6862004)(8936002)(5660300002)(66476007)(66556008)(36756003)(316002)(41300700001)(66946007)(86362001)(83380400001)(82960400001)(26005)(478600001)(6666004)(6486002)(2616005)(6512007)(186003)(6506007)(38100700002)(2906002)(30864003)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IF2Y9XlzTheqnmIWgsEujD2DS8Pntw817sZX/GfB8n4GqIE2nWDOWvzN6OVo?=
 =?us-ascii?Q?9sEJMXp1pDTQZnw33mNVO/EXnGWImv78HQTx29vVlj6tl0BNnAJfy+sKxafu?=
 =?us-ascii?Q?GMdeq2zzk0eqQMKjaxr6jTgfebWYCaRixLyuSjhEK2MqBNkgo5TKh1xq4um7?=
 =?us-ascii?Q?EG4OC+Amqo03NaUrFqS/0ImFfwMZMtXfLPMFIZKOUEJKivL9FzL5WXNoNHy3?=
 =?us-ascii?Q?x7mP0cdtsx+IOxFGuQ34XIk2UlYB0wPLvKg89Yj4wad+zSh/BifDbfJOyY5Z?=
 =?us-ascii?Q?dG5wlFBlyBCOV0jh4B3y7KiQlcWXadRWyXJdQ8Wkqnr7uj5bvIlbaE9ouFzw?=
 =?us-ascii?Q?l+AKbal8aV5eH9KYp2kMTyhEW6siBfRnBmFnlYQu+iwhH20Yi2wdh7n/8ejF?=
 =?us-ascii?Q?vg+rJ8V7jqt/ethCmFLSZELeR5+nQgz4kjKf4DiG/FxxB89N2VDZkTNh9I7D?=
 =?us-ascii?Q?GrcyN2/kVUQ7UJJZ3J1jZSwSjnu1aQWfv0YNwD6+5XacJYLn/m8JDAwko4kC?=
 =?us-ascii?Q?DaVmR24TyN83BNm768PiF13GBX3uV0UOjz7gvN585eH06QSAq6LaAbJRfbyj?=
 =?us-ascii?Q?5i5uA6r+C4xnEWdvDwGm5dsV95LC38kKruOh243MXbsmDzTMMD0M0+xriK3t?=
 =?us-ascii?Q?1MH1rD5yKehs/oPoC4Q8EGKz7uly1+fYV5XabPqwwaNQZa5Zmgy9UwzJ3112?=
 =?us-ascii?Q?k24PsICvDU+Q/ZLGcmxpVFpxCHP72HF9eIPxEjw2ZzZ0n0nAiVxNeynOTjqR?=
 =?us-ascii?Q?I9qhA13P414wzgLTlg/ToU4Wk34Ocfrmpi5eaA83gfvPNUy152Z4CQ5I08J+?=
 =?us-ascii?Q?5M44Xp0/y2Oely+Lngrudi0Mp0PrOQBdLT5D1kwE7tehKPrimXOibEKefBr8?=
 =?us-ascii?Q?jJOnkJNLL3D3J64B6R+ivPZn6F653oS10B8ky0AIuZrkrF8K/HvAS3LvA24/?=
 =?us-ascii?Q?wk/c+t3FnAD4ecXP+vqXaI27nwcqJ41xJdMtUbH5/lfFanO6pfwgyFLOSfMd?=
 =?us-ascii?Q?CWPKnoFPZSuoq8hQPENQcFfbN7IiDeH1cSuEPDvjHtSzmPU4ULDCIo+0f9Gs?=
 =?us-ascii?Q?PayW093Vk1ftN/JIV5eaiLEUQbzHGvcwtp1HzKy9SOBalTy65QBTTEx4EbBg?=
 =?us-ascii?Q?DrWVXzY6eEUKTao2U1Ta6yaw/fO6sTgYEpHpkPp8hHAxYrIaJV5NoiywQ7Lv?=
 =?us-ascii?Q?eDZNAJXxk1W/qH/qAN6LpmHPSCUi0+KsAZyAp5w4bjMfRU5PxybRyovW7lf9?=
 =?us-ascii?Q?eIdn2lrnMZFHNLLDYU7EtF/H6NVvPLgwQ/LjYf1Foh3aE6zb9TZK2JPx8nfx?=
 =?us-ascii?Q?S81YRMWV1YA7IdbkrKSLQCJb6BNfMc8Jdhno2LxTP6qm+7uGhX6lYqvytnuK?=
 =?us-ascii?Q?Ifc+2GdsLgVGIhcQ9NVL49WlpHfz/0mGL+eDiNYbc+po7X8zYgoj895THzhU?=
 =?us-ascii?Q?ANk0iR1g1Su8FomyvT3dxQ6GxB/1er5dE5m2Z4U2OGKOteZpTd1KP+127UrS?=
 =?us-ascii?Q?tPdV0mBnCpYINr1Oia/qnO6gQWlMaQW7KMMk5GNsJFZ4Vxaif92z2q02hXFm?=
 =?us-ascii?Q?VAL3EgCkUG9yMPNUm8nSQxFHpP3CwAmqyS9mh2Jp?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1f3c96b-6f25-4a73-db74-08dad2509f97
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 21:28:15.0122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V4p++nehblgAimTbwWNah0jQ0rOXwdHarENEO1cwMYew+9Z1FPhPtSDSpn07ooULUvkFprouwcxXxtbhXB6E0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5973
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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

On Mon, Nov 28, 2022 at 04:31:52PM -0800, Alan Previn wrote:
> Starting with MTL, there will be two GT-tiles, a render and media
> tile. PXP as a service for supporting workloads with protected
> contexts and protected buffers can be subscribed by process
> workloads on any tile. However, depending on the platform,
> only one of the tiles is used for control events pertaining to PXP
> operation (such as creating the arbitration session and session
> tear-down). In the case of MTL, this is the media-tile.

Imho this patch shows that having the pxp under i915 instead of gt
is the right way to go.

but I have a few comments and doubts below...

> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  .../drm/i915/display/skl_universal_plane.c    |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 +-
>  drivers/gpu/drm/i915/gem/i915_gem_create.c    |  2 +-
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c            |  5 --
>  drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  1 -
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  8 ---
>  drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 -
>  drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c            | 20 ++++++
>  drivers/gpu/drm/i915/i915_drv.h               |  3 +
>  drivers/gpu/drm/i915/pxp/intel_pxp.c          | 72 ++++++++++++++-----
>  drivers/gpu/drm/i915/pxp/intel_pxp.h          |  6 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      |  8 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  | 41 +++++++----
>  drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h  |  4 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      | 10 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  4 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      |  8 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h    | 11 +++
>  21 files changed, 150 insertions(+), 70 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 76490cc59d8f..4b79c2d2d617 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1848,7 +1848,7 @@ static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
>  {
>  	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>  
> -	return intel_pxp_key_check(&to_gt(i915)->pxp, obj, false) == 0;
> +	return intel_pxp_key_check(i915->pxp, obj, false) == 0;
>  }
>  
>  static bool pxp_is_borked(struct drm_i915_gem_object *obj)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 7f2831efc798..46e71f62fcec 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -257,7 +257,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
>  
>  	if (!protected) {
>  		pc->uses_protected_content = false;
> -	} else if (!intel_pxp_is_enabled(&to_gt(i915)->pxp)) {
> +	} else if (!intel_pxp_is_enabled(i915->pxp)) {
>  		ret = -ENODEV;
>  	} else if ((pc->user_flags & BIT(UCONTEXT_RECOVERABLE)) ||
>  		   !(pc->user_flags & BIT(UCONTEXT_BANNABLE))) {
> @@ -271,8 +271,8 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
>  		 */
>  		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  
> -		if (!intel_pxp_is_active(&to_gt(i915)->pxp))
> -			ret = intel_pxp_start(&to_gt(i915)->pxp);
> +		if (!intel_pxp_is_active(i915->pxp))
> +			ret = intel_pxp_start(i915->pxp);
>  	}
>  
>  	return ret;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 33673fe7ee0a..005a7f842784 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -384,7 +384,7 @@ static int ext_set_protected(struct i915_user_extension __user *base, void *data
>  	if (ext.flags)
>  		return -EINVAL;
>  
> -	if (!intel_pxp_is_enabled(&to_gt(ext_data->i915)->pxp))
> +	if (!intel_pxp_is_enabled(ext_data->i915->pxp))
>  		return -ENODEV;
>  
>  	ext_data->flags |= I915_BO_PROTECTED;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 29e9e8d5b6fe..ed74d173a092 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -869,7 +869,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>  		 */
>  		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
>  		    i915_gem_object_is_protected(obj)) {
> -			err = intel_pxp_key_check(&vm->gt->pxp, obj, true);
> +			err = intel_pxp_key_check(vm->gt->i915->pxp, obj, true);
>  			if (err) {
>  				i915_gem_object_put(obj);
>  				return ERR_PTR(err);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 7ef0edb2e37c..1fd6b34ecda3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -8,7 +8,6 @@
>  
>  #include "gem/i915_gem_internal.h"
>  #include "gem/i915_gem_lmem.h"
> -#include "pxp/intel_pxp.h"
>  
>  #include "i915_drv.h"
>  #include "i915_perf_oa_regs.h"
> @@ -753,8 +752,6 @@ int intel_gt_init(struct intel_gt *gt)
>  
>  	intel_migrate_init(&gt->migrate, gt);
>  
> -	intel_pxp_init(&gt->pxp);
> -
>  	goto out_fw;
>  err_gt:
>  	__intel_gt_disable(gt);
> @@ -794,8 +791,6 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>  	intel_rps_driver_unregister(&gt->rps);
>  	intel_gsc_fini(&gt->gsc);
>  
> -	intel_pxp_fini(&gt->pxp);
> -
>  	/*
>  	 * Upon unregistering the device to prevent any new users, cancel
>  	 * all in-flight requests so that we can quickly unbind the active
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> index dd53641f3637..7876f4c3d0f1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> @@ -99,7 +99,6 @@ void intel_gt_debugfs_register(struct intel_gt *gt)
>  	intel_sseu_debugfs_register(gt, root);
>  
>  	intel_uc_debugfs_register(&gt->uc, root);
> -	intel_pxp_debugfs_register(&gt->pxp, root);
>  }
>  
>  void intel_gt_debugfs_register_files(struct dentry *root,
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index 6f6b9e04d916..8fac2660e16b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -76,7 +76,7 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
>  		return gen11_rps_irq_handler(&media_gt->rps, iir);
>  
>  	if (instance == OTHER_KCR_INSTANCE)
> -		return intel_pxp_irq_handler(&gt->pxp, iir);
> +		return intel_pxp_irq_handler(gt->i915->pxp, iir);
>  
>  	if (instance == OTHER_GSC_INSTANCE)
>  		return intel_gsc_irq_handler(gt, iir);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index 16db85fab0b1..c065950d0bad 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -304,8 +304,6 @@ int intel_gt_resume(struct intel_gt *gt)
>  
>  	intel_uc_resume(&gt->uc);
>  
> -	intel_pxp_resume(&gt->pxp);
> -
>  	user_forcewake(gt, false);
>  
>  out_fw:
> @@ -339,8 +337,6 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
>  {
>  	user_forcewake(gt, true);
>  	wait_for_suspend(gt);
> -
> -	intel_pxp_suspend_prepare(&gt->pxp);
>  }
>  
>  static suspend_state_t pm_suspend_target(void)
> @@ -365,7 +361,6 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>  	GEM_BUG_ON(gt->awake);
>  
>  	intel_uc_suspend(&gt->uc);
> -	intel_pxp_suspend(&gt->pxp);
>  
>  	/*
>  	 * On disabling the device, we want to turn off HW access to memory
> @@ -393,7 +388,6 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>  
>  void intel_gt_runtime_suspend(struct intel_gt *gt)
>  {
> -	intel_pxp_runtime_suspend(&gt->pxp);
>  	intel_uc_runtime_suspend(&gt->uc);
>  
>  	GT_TRACE(gt, "\n");
> @@ -411,8 +405,6 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
>  	if (ret)
>  		return ret;
>  
> -	intel_pxp_runtime_resume(&gt->pxp);
> -
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index c1d9cd255e06..07ebeffbc8bd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -30,7 +30,6 @@
>  #include "intel_rps_types.h"
>  #include "intel_migrate_types.h"
>  #include "intel_wakeref.h"
> -#include "pxp/intel_pxp_types.h"
>  #include "intel_wopcm.h"
>  
>  struct drm_i915_private;
> @@ -267,8 +266,6 @@ struct intel_gt {
>  		u8 wb_index; /* Only used on HAS_L3_CCS_READ() platforms */
>  	} mocs;
>  
> -	struct intel_pxp pxp;
> -
>  	/* gt/gtN sysfs */
>  	struct kobject sysfs_gt;
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> index 4f246416db17..534b0aa43316 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> @@ -32,7 +32,7 @@ int intel_huc_fw_load_and_auth_via_gsc(struct intel_huc *huc)
>  
>  	GEM_WARN_ON(intel_uc_fw_is_loaded(&huc->fw));
>  
> -	ret = intel_pxp_huc_load_and_auth(&huc_to_gt(huc)->pxp);
> +	ret = intel_pxp_huc_load_and_auth(huc_to_gt(huc)->i915->pxp);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 69103ae37779..3be3c53437e9 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -73,6 +73,8 @@
>  #include "gt/intel_gt_pm.h"
>  #include "gt/intel_rc6.h"
>  
> +#include "pxp/intel_pxp.h"
> +#include "pxp/intel_pxp_debugfs.h"
>  #include "pxp/intel_pxp_pm.h"
>  
>  #include "i915_file_private.h"
> @@ -763,6 +765,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_gt_driver_register(gt);
>  
> +	intel_pxp_debugfs_register(dev_priv->pxp);
> +
>  	i915_hwmon_register(dev_priv);
>  
>  	intel_display_driver_register(dev_priv);
> @@ -794,6 +798,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>  
>  	intel_display_driver_unregister(dev_priv);
>  
> +	intel_pxp_fini(&dev_priv->pxp);
> +
>  	for_each_gt(gt, dev_priv, i)
>  		intel_gt_driver_unregister(gt);
>  
> @@ -937,6 +943,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	if (ret)
>  		goto out_cleanup_modeset2;
>  
> +	intel_pxp_init(&i915->pxp);
> +
>  	ret = intel_modeset_init(i915);
>  	if (ret)
>  		goto out_cleanup_gem;
> @@ -996,6 +1004,8 @@ void i915_driver_remove(struct drm_i915_private *i915)
>  	/* Flush any external code that still may be under the RCU lock */
>  	synchronize_rcu();
>  
> +	intel_pxp_fini(&i915->pxp);
> +
>  	i915_gem_suspend(i915);
>  
>  	intel_gvt_driver_remove(i915);
> @@ -1172,6 +1182,8 @@ static int i915_drm_prepare(struct drm_device *dev)
>  {
>  	struct drm_i915_private *i915 = to_i915(dev);
>  
> +	intel_pxp_suspend_prepare(i915->pxp);
> +
>  	/*
>  	 * NB intel_display_suspend() may issue new requests after we've
>  	 * ostensibly marked the GPU as ready-to-sleep here. We need to
> @@ -1252,6 +1264,8 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  
>  	disable_rpm_wakeref_asserts(rpm);
>  
> +	intel_pxp_suspend(dev_priv->pxp);
> +
>  	i915_gem_suspend_late(dev_priv);
>  
>  	for_each_gt(gt, dev_priv, i)
> @@ -1358,6 +1372,8 @@ static int i915_drm_resume(struct drm_device *dev)
>  
>  	i915_gem_resume(dev_priv);
>  
> +	intel_pxp_resume(dev_priv->pxp);
> +
>  	intel_modeset_init_hw(dev_priv);
>  	intel_init_clock_gating(dev_priv);
>  	intel_hpd_init(dev_priv);
> @@ -1641,6 +1657,8 @@ static int intel_runtime_suspend(struct device *kdev)
>  	 */
>  	i915_gem_runtime_suspend(dev_priv);
>  
> +	intel_pxp_runtime_suspend(dev_priv->pxp);
> +
>  	for_each_gt(gt, dev_priv, i)
>  		intel_gt_runtime_suspend(gt);
>  
> @@ -1745,6 +1763,8 @@ static int intel_runtime_resume(struct device *kdev)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_gt_runtime_resume(gt);
>  
> +	intel_pxp_runtime_resume(dev_priv->pxp);
> +
>  	/*
>  	 * On VLV/CHV display interrupts are part of the display
>  	 * power well, so hpd is reinitialized from there. For
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a380db36d52c..679fa8a424d5 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -72,6 +72,7 @@ struct intel_encoder;
>  struct intel_limit;
>  struct intel_overlay_error_state;
>  struct vlv_s0ix_state;
> +struct intel_pxp;
>  
>  #define I915_GEM_GPU_DOMAINS \
>  	(I915_GEM_DOMAIN_RENDER | \
> @@ -364,6 +365,8 @@ struct drm_i915_private {
>  		struct file *mmap_singleton;
>  	} gem;
>  
> +	struct intel_pxp *pxp;
> +
>  	u8 pch_ssc_use;
>  
>  	/* For i915gm/i945gm vblank irq workaround */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 5efe61f67546..fbef1f3be591 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -3,13 +3,19 @@
>   * Copyright(c) 2020 Intel Corporation.
>   */
>  #include <linux/workqueue.h>
> +
> +#include "gem/i915_gem_context.h"
> +
> +#include "gt/intel_context.h"
> +#include "gt/intel_gt.h"
> +
> +#include "i915_drv.h"
> +
>  #include "intel_pxp.h"
>  #include "intel_pxp_irq.h"
>  #include "intel_pxp_session.h"
>  #include "intel_pxp_tee.h"
> -#include "gem/i915_gem_context.h"
> -#include "gt/intel_context.h"
> -#include "i915_drv.h"
> +#include "intel_pxp_types.h"
>  
>  /**
>   * DOC: PXP
> @@ -39,9 +45,9 @@
>   * performed via the mei_pxp component module.
>   */
>  
> -struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
> +struct intel_gt *pxp_to_gt(struct intel_pxp *pxp)
>  {
> -	return container_of(pxp, struct intel_gt, pxp);
> +	return pxp->ctrl_gt;
>  }
>  
>  bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
> @@ -138,31 +144,63 @@ static void pxp_init_full(struct intel_pxp *pxp)
>  	destroy_vcs_context(pxp);
>  }
>  
> -void intel_pxp_init(struct intel_pxp *pxp)
> +static struct intel_gt *pxp_get_kcr_owner_gt(struct drm_i915_private *i915)

pxp_get_ctrl_gt or pxp_get_serving_gt sounds better in my opinion...
what's "owner"?

>  {
> -	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_gt *gt = NULL;
> +	int i = 0;
> +
> +	for_each_gt(gt, i915, i) {
> +		/* There can be only one GT that supports PXP */
> +		if (HAS_ENGINE(gt, GSC0))
> +			return gt;
> +	}
>  
>  	/* we rely on the mei PXP module */
> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
> -		return;
> +	if (IS_ENABLED(CONFIG_INTEL_MEI_PXP))
> +		return &i915->gt0;
> +
> +	return NULL;
> +}
> +
> +int intel_pxp_init(struct intel_pxp **pxp_store_ptr)

Please let's avoid the ** here and everywhere.

> +{
> +	struct intel_pxp *newpxp;
> +
> +	newpxp = kzalloc(sizeof(*newpxp), GFP_KERNEL);
> +	if (!newpxp)
> +		return -ENOMEM;
> +
> +	*pxp_store_ptr = newpxp;
> +
> +	newpxp->i915 = container_of(pxp_store_ptr, struct drm_i915_private, pxp);
> +	newpxp->ctrl_gt = pxp_get_kcr_owner_gt(newpxp->i915);
> +
> +	if (!newpxp->ctrl_gt)
> +		return -ENODEV;
>  
>  	/*
>  	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
>  	 * the full PXP session/object management and just init the tee channel.
>  	 */
> -	if (HAS_PXP(gt->i915))
> -		pxp_init_full(pxp);
> -	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
> -		intel_pxp_tee_component_init(pxp);
> +	if (HAS_PXP(newpxp->i915))
> +		pxp_init_full(newpxp);
> +	else if (intel_huc_is_loaded_by_gsc(&newpxp->ctrl_gt->uc.huc) &&
> +		 intel_uc_uses_huc(&newpxp->ctrl_gt->uc))
> +		intel_pxp_tee_component_init(newpxp);
> +
> +	return 0;
>  }
>  
> -void intel_pxp_fini(struct intel_pxp *pxp)
> +void intel_pxp_fini(struct intel_pxp **pxp)
>  {
> -	pxp->arb_is_valid = false;
> +	(*pxp)->arb_is_valid = false;
>  
> -	intel_pxp_tee_component_fini(pxp);
> +	intel_pxp_tee_component_fini(*pxp);
>  
> -	destroy_vcs_context(pxp);
> +	destroy_vcs_context(*pxp);
> +
> +	kfree(*pxp);
> +	pxp = NULL;
>  }
>  
>  void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 2da309088c6d..424e52bbd4f9 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -12,12 +12,12 @@
>  struct intel_pxp;
>  struct drm_i915_gem_object;
>  
> -struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
> +struct intel_gt *pxp_to_gt(struct intel_pxp *pxp);
>  bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
>  bool intel_pxp_is_active(const struct intel_pxp *pxp);
>  
> -void intel_pxp_init(struct intel_pxp *pxp);
> -void intel_pxp_fini(struct intel_pxp *pxp);
> +int intel_pxp_init(struct intel_pxp **pxp);
> +void intel_pxp_fini(struct intel_pxp **pxp);
>  
>  void intel_pxp_init_hw(struct intel_pxp *pxp);
>  void intel_pxp_fini_hw(struct intel_pxp *pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> index f41e45763d0d..0eee51c4a772 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> @@ -3,9 +3,6 @@
>   * Copyright(c) 2020, Intel Corporation. All rights reserved.
>   */
>  
> -#include "intel_pxp.h"
> -#include "intel_pxp_cmd.h"
> -#include "intel_pxp_session.h"
>  #include "gt/intel_context.h"
>  #include "gt/intel_engine_pm.h"
>  #include "gt/intel_gpu_commands.h"
> @@ -13,6 +10,11 @@
>  
>  #include "i915_trace.h"
>  
> +#include "intel_pxp.h"
> +#include "intel_pxp_cmd.h"
> +#include "intel_pxp_session.h"
> +#include "intel_pxp_types.h"
> +
>  /* stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
>  #define MFX_WAIT_PXP (MFX_WAIT | \
>  		      MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index 4359e8be4101..652c00aefe3f 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -9,10 +9,13 @@
>  #include <drm/drm_print.h>
>  
>  #include "gt/intel_gt_debugfs.h"
> +
>  #include "i915_drv.h"
> +
>  #include "intel_pxp.h"
>  #include "intel_pxp_debugfs.h"
>  #include "intel_pxp_irq.h"
> +#include "intel_pxp_types.h"
>  
>  static int pxp_info_show(struct seq_file *m, void *data)
>  {
> @@ -30,7 +33,19 @@ static int pxp_info_show(struct seq_file *m, void *data)
>  
>  	return 0;
>  }
> -DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(pxp_info);
> +
> +static int pxp_info_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, pxp_info_show, inode->i_private);
> +}
> +
> +static const struct file_operations pxp_info_fops = {
> +	.owner = THIS_MODULE,
> +	.open = pxp_info_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +};
>  
>  static int pxp_terminate_get(void *data, u64 *val)
>  {
> @@ -59,23 +74,23 @@ static int pxp_terminate_set(void *data, u64 val)
>  }
>  
>  DEFINE_SIMPLE_ATTRIBUTE(pxp_terminate_fops, pxp_terminate_get, pxp_terminate_set, "%llx\n");
> -void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
> +
> +void intel_pxp_debugfs_register(struct intel_pxp *pxp)
>  {
> -	static const struct intel_gt_debugfs_file files[] = {
> -		{ "info", &pxp_info_fops, NULL },
> -		{ "terminate_state", &pxp_terminate_fops, NULL },
> -	};
> -	struct dentry *root;
> +	struct drm_minor *minor = pxp->i915->drm.primary;
> +	struct dentry *pxproot;
>  
> -	if (!gt_root)
> +	if (!HAS_PXP(pxp->i915))
>  		return;
>  
> -	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
> +	pxproot = debugfs_create_dir("pxp", minor->debugfs_root);
> +	if (IS_ERR(pxproot))
>  		return;
>  
> -	root = debugfs_create_dir("pxp", gt_root);
> -	if (IS_ERR(root))
> -		return;
> +	debugfs_create_file("info", 0444, pxproot,
> +			    pxp, &pxp_info_fops);
> +
> +	debugfs_create_file("terminate_state", 0644, pxproot,
> +			    pxp, &pxp_terminate_fops);
>  
> -	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), pxp);
>  }
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h
> index 7e0c3d2f5d7e..299382b59e66 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h
> @@ -10,10 +10,10 @@ struct intel_pxp;
>  struct dentry;
>  
>  #ifdef CONFIG_DRM_I915_PXP
> -void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *root);
> +void intel_pxp_debugfs_register(struct intel_pxp *pxp);
>  #else
>  static inline void
> -intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *root)
> +intel_pxp_debugfs_register(struct intel_pxp *pxp)
>  {
>  }
>  #endif
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> index c28be430718a..fd30befbf784 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> @@ -3,14 +3,18 @@
>   * Copyright(c) 2020 Intel Corporation.
>   */
>  #include <linux/workqueue.h>
> -#include "intel_pxp.h"
> -#include "intel_pxp_irq.h"
> -#include "intel_pxp_session.h"
> +
>  #include "gt/intel_gt_irq.h"
>  #include "gt/intel_gt_regs.h"
>  #include "gt/intel_gt_types.h"
> +
>  #include "i915_irq.h"
>  #include "i915_reg.h"
> +
> +#include "intel_pxp.h"
> +#include "intel_pxp_irq.h"
> +#include "intel_pxp_session.h"
> +#include "intel_pxp_types.h"
>  #include "intel_runtime_pm.h"
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> index 6a7d4e2ee138..37371f44a550 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> @@ -3,11 +3,13 @@
>   * Copyright(c) 2020 Intel Corporation.
>   */
>  
> +#include "i915_drv.h"
> +
>  #include "intel_pxp.h"
>  #include "intel_pxp_irq.h"
>  #include "intel_pxp_pm.h"
>  #include "intel_pxp_session.h"
> -#include "i915_drv.h"
> +#include "intel_pxp_types.h"
>  
>  void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
>  {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index b0c9170b1395..16782d119bfd 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -11,17 +11,19 @@
>  #include "gem/i915_gem_lmem.h"
>  
>  #include "i915_drv.h"
> +
>  #include "intel_pxp.h"
> -#include "intel_pxp_session.h"
> -#include "intel_pxp_tee.h"
>  #include "intel_pxp_cmd_interface_42.h"
>  #include "intel_pxp_huc.h"
> +#include "intel_pxp_session.h"
> +#include "intel_pxp_tee.h"
> +#include "intel_pxp_types.h"
>  
>  static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
>  {
>  	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
>  
> -	return &to_gt(i915)->pxp;
> +	return i915->pxp;
>  }
>  
>  static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> index f74b1e11a505..d550cdba3399 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -12,12 +12,23 @@
>  #include <linux/workqueue.h>
>  
>  struct intel_context;
> +struct intel_gt;
>  struct i915_pxp_component;
> +struct drm_i915_private;
>  
>  /**
>   * struct intel_pxp - pxp state
>   */
>  struct intel_pxp {
> +	/** @i915: back poiner to i915*/
> +	struct drm_i915_private *i915;

do you really need this pointer back here?
or using a container_of should be enough?

> +
> +	/**
> +	 * @ctrl_gt: poiner to the tile that owns the controls for PXP subsystem assets that
> +	 * the VDBOX, the KCR engine (and GSC CS depending on the platform)
> +	 */
> +	struct intel_gt *ctrl_gt;
> +
>  	/**
>  	 * @pxp_component: i915_pxp_component struct of the bound mei_pxp
>  	 * module. Only set and cleared inside component bind/unbind functions,
> -- 
> 2.34.1
> 
