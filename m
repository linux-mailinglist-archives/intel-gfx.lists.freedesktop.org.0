Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A83858055EF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 14:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF0A10E525;
	Tue,  5 Dec 2023 13:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8854E10E525
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 13:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701783057; x=1733319057;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+hd6hYQKEXsGeUI2dcFQS6nOGuJUhl6sc4HYXlrYQUQ=;
 b=P2RKfATdC4rIaEeDjVgtn38+IGYSiSAcIl5Bly0bBpGeiDA3Cy482M0L
 8o3Pnxg4UOV+JJaDroCP/XLPn+Jhi4p5EwkXeCuYC02jBOSA3HJC+XM2f
 tZwU/n+Hv9LHY+1p4qKbRCPOvlvdCCN+z+aaS9b3P8lo+mz0icySMzMD6
 P+bYWWWUAfMlu3zvyee7B5mbQgDaJlZ8Wf5fGjqnZtklgAkXkL8/Jtecp
 6T9/nooN0b+wU2vELF+jnby8qK6JC9p+tRYnXQN2p558xHqopZo4sLm5B
 yvYDJS6/0r1ULY4eDaFzb1hRQJ3kjSVH68sWDLy5R8dFHZb8U+OuaUpl8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="392759327"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="392759327"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:30:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="747230562"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="747230562"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2023 05:30:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 05:30:55 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 05:30:55 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Dec 2023 05:30:55 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 5 Dec 2023 05:30:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GU6798SxBegXMQ7uajCes3oaIX2YSvFi3topU5DcXM9AkDtz04ZBaEVCKj6EUHW0ZFVTdTgnvHB5ON7wltejB/AEsy5lhUfZphdV6NOp4u4eY6R9dClGIDCwfVZR4577vI2vVLB4of1DZHVWZhmeVkBnb4WurlH+2g5SJA/IpvT19x321152CiEXG01w0S+plWWc8oXqHOvG0ogoowNqeXZqH9hLvJUQVNuuONy8sG6+L/Hb5MUl6sQJeubAZWq5wGp1ibviyXV1TXACJYuz7Ww7Yq63X1E5oqSJybP0yxt/ucjE94tbqhzhjKv564FzV5N6po9eYvFEnCVx5YLCFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eQYnUKSWFX6qKxOzYEbTYf09RE+JdI05WdYHhlYkrfw=;
 b=D2QoAP8mgBvZDyKoJ6j/zvs0n/XKEy9l4rWfVwxWCgizwE5epoZXLL+EV1B8SMGNqWajOWuzbXLVs5JFr8QKtvriH8kMrfG1veTv0TOl4tcRvo6EL8w6zwiTn+5QKarG/Fzh9MljB9CdKNgdb2++AiyBUfDeAXwj1FCVtiur2/0q0jcl1JgbMvOdpsV5JPXEzpHtTMCv+vvaLwTgv0zVUj+AzTmuAy48Qj2G94ESGZ8k+gW5y18SvlqZHyimahPxK9HQAGlygxJkPVDpanPUYEloODhKvPxsV1H3WKEmyHVr/dOq5k6UbhZEgLiCro2DGeu5h8LrHfjZQRYdMpTUqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB5948.namprd11.prod.outlook.com (2603:10b6:806:23c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.28; Tue, 5 Dec
 2023 13:30:53 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 13:30:53 +0000
Date: Tue, 5 Dec 2023 08:30:50 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZW8mCplE1snfrE4k@intel.com>
References: <20231205121545.2338665-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231205121545.2338665-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0055.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB5948:EE_
X-MS-Office365-Filtering-Correlation-Id: 8483818f-b8dd-4068-3cdf-08dbf5966781
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 86RQwO3Pu9XhqQBr2AhMzKiMQc6oEcdg0KjzgLRSd4PjWGFGFEOczsJhd3pLjulrB5BMN7VHKfxLRGYHXMHYWhqIdDlAMYbPJnhbSK0YbjoZ/Qp2H5saCxHukag4ZyB3HMXp1/ZyH+HbmDy8qmNKqRCGR6UDbkxom2mKkS5XJMrR5X4h2QDMiSVeSx30OQ/uRA3YqVt3g2KtQw8O11rNzSNR6BIiZ47PtXHtF4oNzYO738F82cN+SzHN3iwWQjmpIgTIzULC391BpmuL2hf4qqqt2SJb6yIypBqXjGcMEBdPQLkLsPvm2uXoyzWkc3fpoIwMTiBRZA8YhXud4Tfu88WgPwlgDnYJ8ARx+0e/r9h4BAvomKB1OlDFOtM3bQC/RGKHuWbDmV4md3NHxse4dAo7bkcjaHeQJv3N2E7dvWbSi37W4cMrzbQaxFxTK/fZSqBrAfI9WXRo3urNwbtNP8u+oagmu/bXA3iVe6+zwcUqi3SyY86pJis+0IwL/LXGd/olrTKo9ggzFI0KWIPXMPEm958jBSz8a4/jNaDkkNQJqBU3px7fJIrQxlFhnwSD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(136003)(396003)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(37006003)(66946007)(66556008)(66476007)(8676002)(316002)(4326008)(44832011)(6636002)(6862004)(6486002)(478600001)(36756003)(8936002)(41300700001)(2906002)(86362001)(5660300002)(38100700002)(6506007)(26005)(6512007)(83380400001)(82960400001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tp33fubkNclzUCem6jHcVImvNBsRw52ZGTWeCxJG06yLOpP01ZXKskHF3KME?=
 =?us-ascii?Q?UVVJZcxGcN4VWCjk3kT0jhxBJAE6GR27nT7sbCmIFzaI6peKn3sXFQdwePL0?=
 =?us-ascii?Q?pAhQAjzN5+NoXRQLuGnF8mAtvzVKKgYQ6dY5W94UFgm9xLLd3/zKnaZ5VLZV?=
 =?us-ascii?Q?ywpeCqDTY9/Bj2e1q01nQCD/b2Pl81rBp5fBd2IizVExFxGmywqpo29P+8NZ?=
 =?us-ascii?Q?Q5v3fi6vTxaxI4uwjP/LKjOiEK/y3SPNLcnQFZg4iuq5Nxyc1itEw0cvLlHz?=
 =?us-ascii?Q?a6BcZYstUeHE20OFoKA7Kyhv4srGeSiVFXCaDTi30pqUsPlt+Jomn+mX36U3?=
 =?us-ascii?Q?TNYxVNYotG0m1mCBkGm1rzad3hMxcDwILIjZG+z+FKXH0amd+sYC7ky20Jtg?=
 =?us-ascii?Q?dj4TrIG8uow8MDeeIqIpuk+MDtayakVJ6cLh+wLxbFJJjmhtAAGsP8Ol6K7k?=
 =?us-ascii?Q?cqEYiTjbjNgHiaEQ5DGHWiahGakc+sXyWD1tzCcQWTQi+jqkSvbMYdynO38T?=
 =?us-ascii?Q?tvB1jAqT5wnoMpGfUZrRBqh18nmTvpKjN/HkYUlLrNQY3dvMMpyKwpoFi3Ey?=
 =?us-ascii?Q?0EQQCe+bY/G9t9LTImI0DOYP3g6hUr7WZCudQDWNGnScnCu6AXu8kJRNQ85g?=
 =?us-ascii?Q?wauGP66Ohj64GO2MQ6S0+XkrQq9F7q/9eoErW6W4nsBlEaRLEok71tU8MUeD?=
 =?us-ascii?Q?VrMju3PsIBMWZIeslYY0ywe2oXKTQAH/B7+H/AEII5U9r3/65Nb8QjnP/BBq?=
 =?us-ascii?Q?gB3Z/kWHQ4WK2ToLux6vMnkCqiz6IX0gTsIB5SESFidyihkzxSODtAecmF0N?=
 =?us-ascii?Q?LLQzNA99Jwi3fOBbNu1Szi81HqBZ41runOZeEwHayGFJsbPG0IV7Y3xPsSwu?=
 =?us-ascii?Q?WFiq36rDTM9IDXqrOG4xs9QfzeLQjVgwfCry+6zhQcd2ZyhJd99Y1zPpaL92?=
 =?us-ascii?Q?tBn6rVBrlEcbVC8uUcZXDOobP4UfRjR3/eStrCVOvt4bsn6IyfPmtHKCuJYe?=
 =?us-ascii?Q?Azi3BUsUq+g2+fDDi4LFhDNazq85FvykZxdf/4Ey8FRHr43cg+Kf4XlnYh3J?=
 =?us-ascii?Q?q0Q1C8Jh6Swf9E7uL1UZi2AuEhzdntEz1nR7MQCTj3k8FVrcNVe6mezkjubD?=
 =?us-ascii?Q?MdIwR68LoUWiT+kNquBb+XWIId+EzzjXXfxvtG5294faZBT8OmWg+Wq4KVhv?=
 =?us-ascii?Q?GSBwBoPCdu0d5oOz8RnXLz/uBNCgXi+QJxQs8Xqbu86fLhsOUKUGmbXiVZF0?=
 =?us-ascii?Q?w9ad5BlbVKykpR1Tm5oXuJAlGxPrW7Flr/X1Ju/F8mWGa94dC2CowcpPC+Y6?=
 =?us-ascii?Q?vSWHn+duRHX9cVZUkEkhB/7IHxntes1HOO329bGm6xk2VhaHItBZQKEh3nuO?=
 =?us-ascii?Q?G4qCIgGZjQShFDkoeXXG/fOFlGy2wTwlyDVAjT+dzZBv+95SuVU4Z+a2euZa?=
 =?us-ascii?Q?KR3zqfhIe8Z0r8USe0xTyLN8YDyDXJpzWV/5gumfHDUZ+bvKAI9M7eON7F2y?=
 =?us-ascii?Q?msMgXLoUZyW3yq9Ky6eAveo1XoWw9XBwiA1TdbITDVqSnyW9OnALrTEEbXmm?=
 =?us-ascii?Q?cmHi/FvBp1lTf7U6P93nOJ1Y664RAFuqIK1b86YV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8483818f-b8dd-4068-3cdf-08dbf5966781
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 13:30:53.6240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N+3L8Gn5skro1UQvXH+0ypH3b15+beWo8tyMNWVRQ7BmfANZKttP6ODHkW4uIIcsS6lXA5cS2/hZcQlRREvZZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5948
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rpm: add rpm_to_i915() helper
 around container_of()
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

On Tue, Dec 05, 2023 at 02:15:45PM +0200, Jani Nikula wrote:
> Reduce the duplication.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 24 ++++++++++--------------
>  1 file changed, 10 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 91491111dbd5..860b51b56a92 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -50,6 +50,11 @@
>   * present for a given platform.
>   */
>  
> +static struct drm_i915_private *rpm_to_i915(struct intel_runtime_pm *rpm)
> +{
> +	return container_of(rpm, struct drm_i915_private, runtime_pm);
> +}
> +
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  
>  static void init_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
> @@ -158,9 +163,7 @@ intel_runtime_pm_release(struct intel_runtime_pm *rpm, int wakelock)
>  static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
>  					      bool wakelock)
>  {
> -	struct drm_i915_private *i915 = container_of(rpm,
> -						     struct drm_i915_private,
> -						     runtime_pm);
> +	struct drm_i915_private *i915 = rpm_to_i915(rpm);
>  	int ret;
>  
>  	ret = pm_runtime_get_sync(rpm->kdev);
> @@ -365,9 +368,7 @@ void intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
>   */
>  void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
>  {
> -	struct drm_i915_private *i915 = container_of(rpm,
> -						     struct drm_i915_private,
> -						     runtime_pm);
> +	struct drm_i915_private *i915 = rpm_to_i915(rpm);
>  	struct device *kdev = rpm->kdev;
>  
>  	/*
> @@ -420,9 +421,7 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
>  
>  void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
>  {
> -	struct drm_i915_private *i915 = container_of(rpm,
> -						     struct drm_i915_private,
> -						     runtime_pm);
> +	struct drm_i915_private *i915 = rpm_to_i915(rpm);
>  	struct device *kdev = rpm->kdev;
>  
>  	/* Transfer rpm ownership back to core */
> @@ -437,9 +436,7 @@ void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
>  
>  void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm)
>  {
> -	struct drm_i915_private *i915 = container_of(rpm,
> -						     struct drm_i915_private,
> -						     runtime_pm);
> +	struct drm_i915_private *i915 = rpm_to_i915(rpm);
>  	int count = atomic_read(&rpm->wakeref_count);
>  
>  	intel_wakeref_auto_fini(&rpm->userfault_wakeref);
> @@ -458,8 +455,7 @@ void intel_runtime_pm_driver_last_release(struct intel_runtime_pm *rpm)
>  
>  void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
>  {
> -	struct drm_i915_private *i915 =
> -			container_of(rpm, struct drm_i915_private, runtime_pm);
> +	struct drm_i915_private *i915 = rpm_to_i915(rpm);
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	struct device *kdev = &pdev->dev;
>  
> -- 
> 2.39.2
> 
