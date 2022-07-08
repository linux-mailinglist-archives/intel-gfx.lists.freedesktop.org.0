Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BB456BBE2
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D8710E2C4;
	Fri,  8 Jul 2022 14:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3B810E1AC
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 14:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657291232; x=1688827232;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bkOk5vKgs4z6VTKKx2N9THjDJUGirxKlIHgMclPz6es=;
 b=C3sN+s/poL7ibX2cYhs/6lD9yi3pgp6EXDaQQD0b4BVjenEMl1ASii8H
 sS5j89yQnq+8qy472aThL7QMaI6sqTPkZmBr1ks5Hlzy4V2O32C5YWpFY
 oxcjHUUZV1UEvo6LCtDtIms2A0sA1FZpR2bhf+Hw8hApo+/Js94kmmXHw
 kEpbGUn8YEsZ16p4Pnx3b8e2UaYB23pQ5MQEZ/txXu5qCSbOm4aAdPiwe
 YjLMdAHw1L0DRThQZAVm3kegBFVXaYxqw+1ghOYXQk/NFV0tfXngAKeZo
 K7lRYKOWRauTBZnaf++7U/CIAn7Apq3UMBZ01oO/A88HCmpK/2POYeBua g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="264706786"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="264706786"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:40:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="840323320"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jul 2022 07:40:31 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 07:40:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Jul 2022 07:40:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Jul 2022 07:40:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GhFdJ6ZxQTiNcaOG1TfD7PM0jk9bp1wOzfMHU5dsSDONL77CeQuiD4pTjIovcgPqwrabJqOfue24vCCBw7kPFXdH6shH7Tngd3DC2e3rn3zLjE701sgtZkOrUOmsO8sGCSduCUNwE51SSRyjnRJfv9f7lt56up8MQRbbxUYz+YRQaFjauCzje4jCcF5re6j532zwyl5lqvEowAHgJTfeIzcm9nq3i01N57Tz8rsxluQyI45QI+Nt20PgoH5xgD8LmZkjgQO7b/7N3MJ2UK/SMDnRBiY58AZDtw7A5evNoMeCE1tQ+XngAmThKl12GqiRg2xMIPep/Pe5+JxBJeNILw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ymOUf049Y8+dZASg/wCiQ/ogNCCt+zFpDL8S9L0FvF8=;
 b=hznn6KSQxR1dpxsYGqTJEkAu+rHYcNW+yux7IbPIPo0VnCAvhNUDl8ajkpDY3SSrbLaL/VLSsOFUfviQUlDUvlop0gW8I0KcoEi0NjkYk9EztNemIOtUp7Xek6+WdGdy3PukIeSqW9QzWwRZCMfvZA4+UmhXlwsxvYtVWRWzXuYKJkEszYKOJ6fA2tRvB/4wj6cR+rgriFdhUMtjwAbrfydsyNqiwlQKRwhY3V+LAVjO/VwmebUQsD1Cy7Z9eqFaIsuLBLcoIzRsxg/D0sLYwR11kEDRga9/V8/PJ4Q5326zENqRFYO6bSQC/fuG2kMabW6ilH3WLiNmkesJZlK5tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM6PR11MB3372.namprd11.prod.outlook.com (2603:10b6:5:8::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.18; Fri, 8 Jul 2022 14:40:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.020; Fri, 8 Jul 2022
 14:40:28 +0000
Date: Fri, 8 Jul 2022 10:40:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <YshB2NJK2QF8WQkg@intel.com>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
 <d7b953c7a4ba747c8196a164e2f8c5aef468d048.1657289332.git.karolina.drobnik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d7b953c7a4ba747c8196a164e2f8c5aef468d048.1657289332.git.karolina.drobnik@intel.com>
X-ClientProxiedBy: SJ0PR05CA0047.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: abbf057b-8841-4a33-adaa-08da60efcd2e
X-MS-TrafficTypeDiagnostic: DM6PR11MB3372:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +SJL89Za05+axEBDqX2aahEPkSoJVD0Bkr49kzQ9gdXz3FBavM5P/VvrxM8cXZPJerRerJTImk5XrwVQVTiWsMc9mcKLuEFnPlLEfXpuUDNGK8L329N6k/LEVBwv4AXrdaPe15hi9+ssMmc0OM4ecBvn58mS+E749BfzD/Y3WREVD693I2geHjRwBwd9dfmxA26zDhOXAvI9yPnHiRA0s2fswyIryYh9lJn97wqXMlaX0EE6QDuqntWtd8jfMDrkrZWAoXXy4VMxGiBpX14AN9ydTqmASB4b3KYahiNJby55cdJKCK4iuATViK16snLYuLiFhhmb2cQMit7AF3WRLHlFOWZa13QS/QgiRxLkAh/+E9f6ptpExDsvRM7YFxnTiSLkHxsapvaTc+Wh0/yp3EbY5XGdcSQD5wfYeZTpD6n14Uy7/kxMxIQKxWw+ffKgrw1VqjZ9Svn8bOY3d5y3byIwMqx9AiQVyVJYkT6rJHSEpw61/8G7v4posf/vOsT6hPBKoTTPn9WHtqcT2v4VX2MCE9UN3IULZwiUu9Da/1xVMXwfqU5mCG0Q7ES/Q3zb++XnPrsA6/Z7uSQuDIvcd+vfAzv5tW2+qsrNp4D+YxZt+mXizAEtjigZYtP9CLpPJTorj7AI3lSNpYQ/vzo3C6XD5WwinxGcKaPrzWtsr5BSIVtPOCDb5qm6OjzcNwMQvMolhC2E/sq15y/IU2lAXxYL7+WMzlUy+Mzyjw418BM5gVz1lpATyTw1f1UMbXPd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(376002)(136003)(396003)(366004)(37006003)(6486002)(316002)(26005)(41300700001)(186003)(6636002)(66946007)(82960400001)(6512007)(2616005)(36756003)(86362001)(44832011)(8676002)(2906002)(83380400001)(6506007)(478600001)(4326008)(66476007)(66556008)(6862004)(38100700002)(6666004)(5660300002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/MpZq9mubhpqShyQeopE0UX/HQAbwHG+/PYPgXhr1fZcbgG+2W8Cnef3fz1R?=
 =?us-ascii?Q?GoDVzSOEnT5NSguyqYxMq6jUaBwpOiTcksvcjzlpQc7HPg35awIVJi1tqKMG?=
 =?us-ascii?Q?iYWQOPGrbTR2+STonSM6c7xyWoYa1Y5zdr0UgAdqPNtNbuMatk+C74jVquh/?=
 =?us-ascii?Q?cNXK6t+RwZVMIEKwbtVwgsOpZ0omMCFdQsL97bMLj8qPdtCBng16WVtn/3gE?=
 =?us-ascii?Q?UjqRUAp2j39dNxwygDtEc4bh2C/Ch94Mm8V4CZIfSsBmKnIUbXUez4gU7Y1u?=
 =?us-ascii?Q?eh7x7E6yivjpGLhkZ/QjELylnbGGy4HIRQ81YSfcOeVJHvBAbZIozGXiNxyx?=
 =?us-ascii?Q?VnWegjvU03cjDf2/WsVCw9FztxsRpu3nemBfO4Sj9+UPq+PQX0yd6WaYxu/H?=
 =?us-ascii?Q?AByzhugDp/lVsxOKzYw2fvQ+MZ+uYT6xckd/bQsNYveMdCON638jdBVjzvUC?=
 =?us-ascii?Q?QF7ovbhR2hEn7/5Z9tm8zeSfn7YVbJLsiPPEFnXmZysNFqYe6LyzcHKeSIbH?=
 =?us-ascii?Q?k9zZlTl5aC8MKbYgI61cg48SUZf0GcGLOHPrRzOZWoFS3tsSKs9BzjDTrMMc?=
 =?us-ascii?Q?3q2HGatWH6G2Yrw6dFIGc+gkqsoAZa58f4WdQRAAKch42LGzNQwLpaD/mvwa?=
 =?us-ascii?Q?cjWYObLP8YAhzO2s7kPXRbK6ITa8hR9RTGiLeHtfzqp9GlCSRjqIPJwiCxqS?=
 =?us-ascii?Q?uu0pn+4XWvEPW2QQDDMQsxvF38riHqiJknxtCBmXjMmNkQuLsZ3hTdNqoIn4?=
 =?us-ascii?Q?VkD83R05KA7FRDuJ6KShSzgp189VSep3VDa3wssp7zT+Dwr9gZ+a/GkMOHbP?=
 =?us-ascii?Q?mBcLYEHIbmh/9AVLnXgk//Drbhs7mFJTBsa6qP63hLooqLigRDaMJzhZ2pi6?=
 =?us-ascii?Q?FVotzIaYt+CSOzZ/14qtzt71KRPDMa7y9mZW0IOgcqqSLxjMwBM5H5aEwMKi?=
 =?us-ascii?Q?8Ougse2bz7E6Ogdl4i/rvMB9I4CaLmpGJwsw9yqXNs5ARSu4aVBlycEUb484?=
 =?us-ascii?Q?wGcmaWvyVUkCsIAepuia1M4/14/uAr7CGkOy5wRVmuX3H7bsiHGZt5LM2EHl?=
 =?us-ascii?Q?EMBST1L2Zi1ZoCJIDSwg8NUt8aZVbF2PQNywxNTBVRH3VedD0PqKbknHjOUY?=
 =?us-ascii?Q?JtvjCCW4XXG/GSMFItr5E0i1CJeDAIEI1/W5OgCwMULE+axDqTbHUzoRn6bE?=
 =?us-ascii?Q?85CKbtl+31JTQEDe/hFQOj2K17uk6ZGI5pFP+pNJSHYN3MjnY3mwQWnUyfmT?=
 =?us-ascii?Q?IPezFmwg8pRM8loL8nnlh7LprWcux2zH/OJbzy2wnqHZE2u00r9xY6d5q2XJ?=
 =?us-ascii?Q?bZc2D62l0hD9QbdiKC1AaM8ojEDTa6mZ5C7cL3JAVNq2Z3lxd1tWWb87VEKc?=
 =?us-ascii?Q?YaUpSvSz3OQIIJVaf9xy8egl6M4zIt4k0uvTlCqrdNIHge8riYS/kx9NDNFt?=
 =?us-ascii?Q?kIx3Blbk5M/R9mWCaW4DnomYhkUr11wGY5k57eNLkq65hT+9vhRc+lvyu0E0?=
 =?us-ascii?Q?D5uPGoESaSWk6iAn1BZV15/BLSIbhrxIVdwAhx7k4djczdQrgT5KgubcZi+Q?=
 =?us-ascii?Q?2yqR5izVr02mWuK73l6WWzvZTepyNx9bmGBweLPXPzFt+5NhiB7EV9QTvnns?=
 =?us-ascii?Q?Dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: abbf057b-8841-4a33-adaa-08da60efcd2e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 14:40:28.7353 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K8Kz+okKu5qDX1K3m6iiqFV81k6UkcKjCgvxTus4MhhynmZWEfnk0Crbn6PuP96Zs+1MLR1MsBPqEc7i5x9f/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3372
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/gt: Only kick the signal
 worker if there's been an update
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 08, 2022 at 04:20:13PM +0200, Karolina Drobnik wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> One impact of commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove
> dma_resv workaround") is that it stores many, many more fences. Whereas
> adding an exclusive fence used to remove the shared fence list, that
> list is now preserved and the write fences included into the list. Not
> just a single write fence, but now a write/read fence per context. That
> causes us to have to track more fences than before (albeit half of those
> are redundant), and we trigger more interrupts for multi-engine
> workloads.
> 
> As part of reducing the impact from handling more signaling, we observe
> we only need to kick the signal worker after adding a fence iff we have

s/iff/if

> good cause to believe that there is work to be done in processing the
> fence i.e. we either need to enable the interrupt or the request is
> already complete but we don't know if we saw the interrupt and so need
> to check signaling.
> 
> References: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 9dc9dccf7b09..ecc990ec1b95 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -399,7 +399,8 @@ static void insert_breadcrumb(struct i915_request *rq)
>  	 * the request as it may have completed and raised the interrupt as
>  	 * we were attaching it into the lists.
>  	 */
> -	irq_work_queue(&b->irq_work);
> +	if (!b->irq_armed || __i915_request_is_complete(rq))

would we need the READ_ONCE(irq_armed) ?
would we need to use the irq_lock?

> +		irq_work_queue(&b->irq_work);
>  }
>  
>  bool i915_request_enable_breadcrumb(struct i915_request *rq)
> -- 
> 2.25.1
> 
