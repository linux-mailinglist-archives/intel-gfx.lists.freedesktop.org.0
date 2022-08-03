Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39821589342
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 22:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4969E10EA47;
	Wed,  3 Aug 2022 20:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD99610E840
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 20:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659558686; x=1691094686;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mhQF3UV50A144MDGlRbxXchmu8jM9UfkzjtJglfsb2M=;
 b=lFdggagoxo9qHsE9jOKS/pXOAO7ngEjjqMJ/pg98hSsLgB7+0noUx7iG
 9n6cXSndKA2TiQNEKEcWBEpQeNOxFDVsrtuyOn21lPw4vsk5Tb2f1IODk
 JpPa/Z9BqlxWhni9BdLmCTnxOuxhHdT/JGGkiapMFByZBXAUYWiaT/9WN
 FAPf5W1DaFa28q4EnAQ8YeuqTik6lV3g0Ohae++SXXdlxc6wrqNX1z9Gi
 WIVov58pGXY5e5iPVjzCgxlUwXEFFuRfPjVKSyU7gkXh0ojYpwBbWPuH2
 NUxlfv2Ag25AlHT9BsUc77mDGtmLbYvFHJ1KF8rdfJzyuf7evg9WOzDqO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="269544100"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="269544100"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 13:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="930524070"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 03 Aug 2022 13:31:25 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 13:31:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 13:31:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 13:31:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DdH9fyB2WpnK0G86Y3Ey6WWpWx+t7oZjc7SKdR5kJ1oeEiqknZStjiEMLdAJ1lqDE9WVfmCCT1la3TDBPkkk9Az2Zn3+0Slyag+IZkttejSod4Va6bdg/IF1lQlkyXmFCS7A3Gbn1h4765dJSujT452lkcg2wcS2zCa5bPGKKpN2Q752OGZaelcc8cJUe4vc4vhmfv7seyuordlqsHkhRHGW0RHivCiJw1PGHJLAQK8rnsbIxtpUaqWMzxPolmGolgY0a31C7pMwPSUjToZwSxITKD5vvIdJdbSERTWHcfuGlx4uQgmwvp3tLFP+5ZBBGMG+Ls7mZSCanPVXhCqx4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GKTiA2dAEci3L4wJAKkVr7mjeeVxwJjnHqLHQHqa6zM=;
 b=kyWBL0LdWT8Jrz7wKhXIgnBF5Op6eUpCZXvztRQpv+RXyUfMlJlj9vnT+C+rSfFYP0f5uW8CkPP5HY3JNc6p6VkyvaCKwaEMi7p1PCJ9ybFFlBRrjJF5Ph8QVYThjiK64EzEm0RTRLOp46ui4Wijlr8VkzBUjBLwKHfqg7TFCHSzS1Vc5uNeC/Jg4KT8aowwGn7ENF7Omq/ly+O5bKMSBvh74hkF+0dtpw/CHfbaNwz5I4McI3qyAeBHdkDGRzwEfu1aEfdR/9INM2Di1473DyxDeWXv19uwaqj3/X/VtZKXdTPceUpfTXpHsvzayXw1MNIdLanQ6ocWVVqikZxAKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MWHPR11MB1776.namprd11.prod.outlook.com (2603:10b6:300:110::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.12; Wed, 3 Aug
 2022 20:31:19 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79%6]) with mapi id 15.20.5504.014; Wed, 3 Aug 2022
 20:31:19 +0000
Date: Wed, 3 Aug 2022 16:31:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <tilak.tangudu@intel.com>
Message-ID: <YurbEfhNA53uoNlk@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-2-tilak.tangudu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220721095955.3986943-2-tilak.tangudu@intel.com>
X-ClientProxiedBy: SJ0PR03CA0139.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f9fb4ca-6e2b-4571-88c6-08da758f1f24
X-MS-TrafficTypeDiagnostic: MWHPR11MB1776:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3xlPKm1yyxSJgZnEL0baFyumLOwpPPM6lGEYEjtFite3Danv/9shZuS5XE2MIVAsS0puS5H10jQe5Pqny4wlRx6oE946zX5Rlaf6FFtjkcGwV9nQvAKaIyHsgLeIwLHmFavEciY98kC3714MCnZNgLHjuneQwDxUdSIZ0fpM2PKFzjzlNk/ysjthS4fce2QxgjDvCueqr8fzJaF53hKIn9+8Gl0thjBtSpmBgXnQxbSM87kQF7ifNsRRIBOEXqZhUTIFxUbyYtmsebH67h8FIHZJWeVoROHMdHbkqp/U0UM2Lj9YmKbVf4w2lK43k7cYsqZOTDtGzWwItaQGz2+v7cMMuBJsRf1QrlBvIDaEPo/Nb408HF1uMH1FoYAh16+ooITU9II9bKqImoW4ZJJRkncgrVJANV8ww8WomhXebzaL6nLrkkWuaykvL/75r4Y3IjB87OOwhjeIQFWReQl1O4zEECyHnCyZKWQMbxW58k+tXhdDntdsRBDxRioQvbpL92vnMjciX6BAlE71CYUo/KfXnj03cc/+kt/Dq6b8QZAkfPNfUvXZV9FfwbkzctEh+KER/Q5AP16ACBZ8b4g4Dniavn90DCD/So7ei7is0wRZuLf1udUW1C+bmdZIDwe2LqX6xvPFwNB+3unJaQHpIi4HexMd2X2VyJj+bsAlZIXXQX0FFBUnl1qFsKIPyEcMn4qgl22G/xG9LubU7YA/478viqwgfXgtdwvqgpcweaE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(376002)(136003)(39860400002)(366004)(6512007)(41300700001)(26005)(86362001)(6666004)(6636002)(6506007)(316002)(478600001)(6486002)(37006003)(38100700002)(82960400001)(2616005)(186003)(83380400001)(5660300002)(2906002)(66556008)(36756003)(4326008)(66946007)(44832011)(8676002)(66476007)(34206002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Eptqr58kPCtngAyI7hWS0u1YSzZ8dyoixNxYJKsfzE4KmvUc1uckR4w1psyu?=
 =?us-ascii?Q?cQ3C46x3Vs293hNgnKzXaLsFeTeNK/+6c2Z7hRceukpeOl5Lu7z1FSz7W658?=
 =?us-ascii?Q?eiRK8s5SIQegn9o9ipP3AfxNmzgAqZbM2IJyLIpKVDWX1zHoV8BaXuhDr4dI?=
 =?us-ascii?Q?F9wP5aashglhzI91FtYEuRyxZpDnh/jP4XCVtYOA3ENTaBNgdGGQ8Tr17TC8?=
 =?us-ascii?Q?CRgNL8qCNWf5527ToE3iutOkqkuoQ7ozDIFP9MeikaORQmcgQLU7nwGdaw6c?=
 =?us-ascii?Q?l4+IOE9hd9Wg46C/McSg2IxVyLduC4IoP2YHZiZUEoMf/vRN/m4oW/iHjLo8?=
 =?us-ascii?Q?OOYCLQclXioZSpsR+NwxuCHpSs5HbJa0zVQ3JBt8JVd2f9ZwJsVNgabfVsAp?=
 =?us-ascii?Q?zGSVlU9wdzaZPfuopxq6iTM1AwsBmtRF8RqDSw7D5CYRfhJRBUvPoXXnyS6T?=
 =?us-ascii?Q?m1ErIz32QBzPxeRmtXvwnCjIMiW/VGy0FrrvwLK8eL1Cc7TpoSncCdF7QxZc?=
 =?us-ascii?Q?PDV067me+m45lwhX85ahCv1m+GMFSCJt24tMW/XyJhDsneHbdzBPMNuLARpY?=
 =?us-ascii?Q?MlAawBQEIUMqva0CayxwaW0TC0QZsf8dD+oMd0KfdTbhUhbBV1xAlMtqE01n?=
 =?us-ascii?Q?rxLlU6Ek4ibKVPeXxHzXqoXeretHfF9cRK1oppyq2prhgdmxxFtQa9bHObxI?=
 =?us-ascii?Q?Vugp2hrejDbASCCs4V3EBroewsKnOhYqewMP0npweVLRBtJjzAuUUblOKMXP?=
 =?us-ascii?Q?nhmMajT1v+0KfoxqbGCI82bF1maD6HI94LQhuvUtMt7sPZ7SGn5ydIUNE/NC?=
 =?us-ascii?Q?0HIE3FbEYr0VuebYNG3Eq0xw2vLsni216wzmdukKg4580cVo9SR6yJ83E7ab?=
 =?us-ascii?Q?KAYDZe9ym5/aTMjoe3AVUy1GG+s+9iRZu2yIu8En1fYReCr9Rb9ba+Q9Wbmj?=
 =?us-ascii?Q?oBA/6ozHc7sFHyaCZYvHS8/ZaOIGRSZYtcc+RCDJWq3fAqOZGsNVq2CHseHN?=
 =?us-ascii?Q?yYcBas4dn0eWguz1bPdJBe+AnhRESdMycsYpOcUUxYxz7KasGa9RlpZp+5cO?=
 =?us-ascii?Q?lC0BkYkBQV3iZwtj9D2cuotnHaphSvGyJwTIDEglGMi9d0cF/gxhUyazM9pq?=
 =?us-ascii?Q?xD58B72GNN7/7EgXGax03X817u3AnQqQqxYQVqAWNBLFl3czRMugF3dOXc+t?=
 =?us-ascii?Q?tvabnJppS6qJG/tmv+H8jy+8pPXffaXpTjOXQyQB6Dq5ufdDlMKt0fY9vIE/?=
 =?us-ascii?Q?U2IhhEHUYofpVJxVDqSh/qLJgcC7a5xfbiuvOWprQ3Wy5W9H6IpkMTIMGnJF?=
 =?us-ascii?Q?w2AddFAsw7w2VNyFWpLinDY2J1qY8SCMzeE2Y1bnAcuhKkn09xrUBeQRn/yK?=
 =?us-ascii?Q?6iatlviuR/IvghGmpkQ9FKtk3yif4oJJKuGIif31MIjVhiICsMdgY9olGF/l?=
 =?us-ascii?Q?EPysE/8TeIiimDM0DSK73Dm4PKGY8MYs7VJkyLB+Z68122SLx5Z7yV3AKYhj?=
 =?us-ascii?Q?f9LHQrIUP2ZkV95xAKBGDm/toLOP4gw51grK4I5XuP45hR68XdGFlldn4IJ4?=
 =?us-ascii?Q?wnk2s4aYu+GhNCoO/nALUvdOmF7Nkfm/enlHwIoqOCvBur1urip3KEK2ZBLv?=
 =?us-ascii?Q?RQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f9fb4ca-6e2b-4571-88c6-08da758f1f24
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2022 20:31:19.2587 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mDzwE0LwS90Bi0L4XbOvhG65XN0z3VH1BUQQQdKKnbhHDcciMPbovZw+A+OQ/Wumv23+PwfW7WLrwIYLaI+L1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
 helper
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
Cc: jani.nikula@intel.com, chris.p.wilson@intel.com, saurabhg.gupta@intel.com,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 21, 2022 at 03:29:48PM +0530, tilak.tangudu@intel.com wrote:
> From: Tilak Tangudu <tilak.tangudu@intel.com>
> 
> Added is_intel_rpm_allowed function to query the runtime_pm
> status and disllow during suspending and resuming.

> 
> v2: Return -2 if runtime pm is not allowed in runtime_pm_get
> and skip wakeref release in runtime_pm_put if wakeref value
> is -2. - Jani N

Should we have some defines instead of the -#s?

> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 23 ++++++++++++++++++++++-
>  drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
>  2 files changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 6ed5786bcd29..704beeeb560b 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -113,7 +113,7 @@ static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
>  	unsigned long flags, n;
>  	bool found = false;
>  
> -	if (unlikely(stack == -1))
> +	if (unlikely(stack == -1) || unlikely(stack == -2))
>  		return;
>  
>  	spin_lock_irqsave(&rpm->debug.lock, flags);
> @@ -320,6 +320,21 @@ untrack_all_intel_runtime_pm_wakerefs(struct intel_runtime_pm *rpm)
>  }
>  
>  #endif
> +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm)
> +{
> +	return rpm->kdev->power.runtime_status;
> +}
> +
> +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm)

why not static?

> +{
> +	int rpm_status;
> +
> +	rpm_status = intel_runtime_pm_status(rpm);
> +	if (rpm_status == RPM_RESUMING

I don't have a good feeling about this. If we are resuming we shouldn't
grab extra references... This seems a workaround for the lock mess.

> || rpm_status == RPM_SUSPENDING)

and when we are suspending and we call this function is because we need
to wake up, no?!

> +		return false;
> +	else
> +		return true;
> +}
>  
>  static void
>  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool wakelock)
> @@ -354,6 +369,9 @@ static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
>  						     runtime_pm);
>  	int ret;
>  
> +	if (!is_intel_rpm_allowed(rpm))
> +		return -2;
> +
>  	ret = pm_runtime_get_sync(rpm->kdev);
>  	drm_WARN_ONCE(&i915->drm, ret < 0,
>  		      "pm_runtime_get_sync() failed: %d\n", ret);
> @@ -490,6 +508,9 @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
>  
>  	untrack_intel_runtime_pm_wakeref(rpm, wref);
>  
> +	if (wref == -2)
> +		return;
> +
>  	intel_runtime_pm_release(rpm, wakelock);
>  
>  	pm_runtime_mark_last_busy(kdev);
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index d9160e3ff4af..99418c3a934a 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm);
>  void intel_runtime_pm_enable(struct intel_runtime_pm *rpm);
>  void intel_runtime_pm_disable(struct intel_runtime_pm *rpm);
>  void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm);
> +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);

if really need to export please follow the naming convention.\

>  
>  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
>  intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm);
> -- 
> 2.25.1
> 
