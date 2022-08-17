Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C1A5966D3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 03:38:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0453010E29B;
	Wed, 17 Aug 2022 01:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B90010E1C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 01:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660700310; x=1692236310;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DYgWPzi6RFLLKjMWN4+RmkiFgVBLPdbfvrYJlzHaxcU=;
 b=OJk4DyzB8coC+7xntse30dLFgpjW2gAMAdSXdgSymEbWPfEDrVwPvh2t
 OeHUCdAjmlF7Toe5ey6cMpExLpNdYSmyRjHZR47Si0VQXigNGWT5I7zBq
 gbyqUOGRtGLw0b/xANJPWrR8o11ObvG8FiSYX5IqSn6njoHsAGsvgxY47
 BglhWaBzbsP+JYhwNWgresJn9FHCLyeavYin6dfc1sFJ/f9zIohj5NX4A
 aZTp+8cemYbQFk5FOtNTFBCRyALpuNTdm6IbYREmMTTDtzEPAPIfYWsSh
 87tDoQS156AqFnpq+Lp4SnNfn3wSaMejpVa4hvfYc1+/nvtHtWEqbCNNJ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="289945398"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="289945398"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 18:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="710366438"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 16 Aug 2022 18:38:19 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 18:38:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 18:38:18 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 18:38:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MpbYcVriCwUyROurpAUEi3FGP3XrCvzN6S6dIvRvDfIQzGrX2EFppl4oDnSaN2QmaZUU4o2Onuiaes7gMeZE4hsgSTPUWfbIsS3UmEozJ9DIxSdROA7/6TbVp89hGZMmkfGGNQyeLgBPMYCOGAOnGPthuuDB0e+0yiF+5DhUwaj6W46XLt4dnMLbE9sctnziw78jf8YyN+ejUkkoHnYqSAxb+pEC0S1J3NQZ7xFYuFMpM65yztJKB/a9Wi8bsTBz0/WptFBtV7xd+4a6zARq2YpO2jcEuK6KjQrEEWZ0FAbTEbkqgVL5HgosKOV+Y7kxM1TKDZHKbNfsYEpjsPszDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZvnADSASylJxwGjdhLzMrmuV0snzHgzMYYkdVN+b0bI=;
 b=I6z/EorXoZONcVYbEDulJUvzj+UU8IYg19ypAcKZIQuzbJx5WY8CPGkdCTkx7t6ZYLLEwPv4WLWS9XueGRAncpIGguj6i2JlTG/UQ+6ZRgizZYDdhnpyyaHD3FvzUE58dn4eFf6UKPsnjGvN6fzOVXO+hkh0lLOnYi11tABY6g/XVXazPQrWrHWpMlUgLRI1BYhmaxPTu8Et94szsI0ykSXOEGVR++hjZeRgRGMJHth7C/5EnLUc3wYDHfZi00Yu1831t8e9wdMAnHOSN3N46/dqUFa1VJ7yAZ8Mw7VRMbUqdd7XDUxhC8/mwWHPvgj1nIxKFMKS1kg7czK5PLv1YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB4938.namprd11.prod.outlook.com (2603:10b6:806:fb::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.17; Wed, 17 Aug
 2022 01:38:16 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 01:38:16 +0000
Date: Tue, 16 Aug 2022 18:38:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817013813.gnh2nnyd7ma2me7g@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <ee8405fc39f5c4c0f439590d98a107adfd1bf6d1.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <ee8405fc39f5c4c0f439590d98a107adfd1bf6d1.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0182.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::7) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07f4471b-1b6f-49e2-9569-08da7ff12839
X-MS-TrafficTypeDiagnostic: SA2PR11MB4938:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yYLYwOK5rBpPF0WzYEf6Oxgu60HAMsms+cws78fKf60loVLAu8kFiIqTRGvOuCKoZG3OAGVsDQgEb4Yr+RGkQrxh3tGZVByObQR6bJeNfQOHJNs/9LiYepO8V4gO4/3N6QO2un9ucpakimgrEDWd79sP5pTQjiiV1MmHN5shiS4KSZB4wZ1ms11NejSbLizEDdklMZ6wEjhB5+i82RBBImzMsY1y0iZCzPXDdjwQH4y46dsUkhs6Xe/RBpYm9sK/DhfiJQWl6FycXpBCdEfP+SVyZp/+qH6xvCikvi7KNyOnzFJs2MSTlQAQKKuA2OQgxaJR/z8pGLCeAEt1sQOcHvZCyUbi1+faB4an2MaonUoz4g98lulRth8r3qytQ9q1bOESA/Qb+vJOzKyFRrGWc8Y62xg582S2bJg/IatzKED+5wvC0GQL+c72ngoBDYlCpzx1e7uvcOTmONldTlcB5PdxkJnpRXrTvRqFxzOwxXni3wqXJINP+/vlLn3OfN0BYy953densSaIzit5JS9i+PsE9lYX352IR9XoOgc7qGMSXzXroHMsMUDfK1FrqhpolgjQnquLIVA8FqQOai8hINcqzorC4t0+92Ma/iaQXlVYiYHorbdS7tLnrB4P3Zs2MJuBbWN7ldhjUm3x9zQgK3E8bdmOFGmp9ED5zrkXm0nN6v4g3IBxc5sVM8+dyMXXReGbO40hLzNTe53WGFAYz3+uziXSYklBJGR/FOjq3Mj8HUn8KQi0SKsmPK37EQK1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(136003)(366004)(396003)(39860400002)(6486002)(6636002)(83380400001)(9686003)(6666004)(316002)(6512007)(36756003)(2906002)(6862004)(86362001)(6506007)(8936002)(5660300002)(38100700002)(66946007)(66556008)(4326008)(66476007)(8676002)(186003)(41300700001)(1076003)(478600001)(26005)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Tm+eL8juSyrAvfbYbzJXrWQh/jcH2pez/F4C18L/cB2sw7J0WzHCgZ2ISHne?=
 =?us-ascii?Q?+attHMcEPVDP2+N8gCXCtsnR7aFknGetBprgLD6I2Q3mrivFwFXViUVzRApH?=
 =?us-ascii?Q?8RJsq7/0FG32zYMbZNOr+C943xJQQE37R4m1VxU3ynTu6Yj6/ZhEDqGSeD12?=
 =?us-ascii?Q?k52RxSEkRY5xBd0Ux208PjEWAIwCN6T90JQz6OyvAqgVaKCR83lWLD4OPZ8z?=
 =?us-ascii?Q?kXfkrTjEYelbzyw5VlBpF9PuaT8StwvxN+vEjMDPAFADJL2vqU20nsm5k3/o?=
 =?us-ascii?Q?sXMKfUL8t76/cDQK5jWudKlX5KJY2nTdkKjT0Kz8rC8LgiRZBPj/UQcUUMGL?=
 =?us-ascii?Q?e9x27uJSuWydh9nEgEv9TmR+Zq/12Hzq8NdzkDEJ51fFasuUlWiwNP7PGrYd?=
 =?us-ascii?Q?5RhTsQjv9radIhrgy7QbyZCMdlXojTg4JwTqFSqaQbE3Jo6yDRTc2kztv3qa?=
 =?us-ascii?Q?M8/LSac7gnh0SWxfckSTmjuiWw+iEHiWn6866Dr+S4NpW4tnygTTgB6u5o9M?=
 =?us-ascii?Q?80rI0fsQPvkKfKztuIod6I2sycKv4dems4nU1KrfBc//8qYzY/SSvUVkgo58?=
 =?us-ascii?Q?2LKpcytTfEeq/NoJNE7lnmNkymo/HY7QU6YCLy+unLui23K1gOygjMicLzmd?=
 =?us-ascii?Q?fa5QgtOrtUGbXDUHyGIYYSwojeIkezB8bp9Y7R8RZovDK8kCz9TUuQVF0AO7?=
 =?us-ascii?Q?LTCSlF3AQbf1vTXwN3mGKP/fhCdJ6fNfLPpTdymJkXf2OH8sc0/9x2igK6V3?=
 =?us-ascii?Q?K0qUoyhzKR46CqMbG1LnD15RxGBn77a3b8/C60zXy3mA5CB/tArM6+PmPFDC?=
 =?us-ascii?Q?d0OpZXD8ZCXSneA7EcIgTYrqUK53cuJyrqjG08yTV8AXaIZwmZIMPcyBosR5?=
 =?us-ascii?Q?0G82R9fpkGyafMPDUFUkJ1mSxyAYZ2GcH/Hy/W3LtOIuQ2+snO8hcQw6M8VV?=
 =?us-ascii?Q?OVjWC4TBN7vdT/K1p+X70YFS+KD/oaqnt5R3AO+FNwYW5udJEEogR3HfZzNg?=
 =?us-ascii?Q?WfYvaGtbEt41Qe+WPq0AEYYZqQ0Y8FOfE5fEZ0PC0SsyTJrjCsFbAvE2EzUb?=
 =?us-ascii?Q?EObEOOsM09uhRP387iMGeRkQKSujryyddyFWEJWTz+2ME0JDYgOhxxvP0bUk?=
 =?us-ascii?Q?2oEjdPH9IHDGWzD/Gakr0Mv2Yx5qrK4SIgOH2YcL9/ckxaoxnuUBzn67Hhju?=
 =?us-ascii?Q?spoD5yNdJrcSttX/3pA95N8M6NAnFoO7xAd4wODyJxwy3057UeKmOvj6CUAr?=
 =?us-ascii?Q?oRTBxql9En3hgVaSspg3pi0CfLwrKBqRgKFYWgYXy10CcqWd4e6aIwzGbcZU?=
 =?us-ascii?Q?nfFE9/2DrwKkgZnfCKaj03tjhOPLefN110GjK2TW8AAj47oIfrN7aBbiewt9?=
 =?us-ascii?Q?WFZfiPsdLG9MkZoLEt2LcKjZJ9n5I1+Xs0guJW8Du9A++r7bCiUgYNatKSe7?=
 =?us-ascii?Q?Ko6dpqkzL4jrIn0YlVxd4bpfkBhMIOt62JikP2SrNkEYwMIOlWDn3e4G6ezq?=
 =?us-ascii?Q?HOg18qd9ypqUdou0vqwiR2B1IOKuE4wxB6knQK5GL4t9Y6zYShTf5lea6QYM?=
 =?us-ascii?Q?NW1VnOBMpH7qS5r3oClN7TAMjEi9Bt/BGAmaoZSCiCRPkZFqSB57+F5LemTP?=
 =?us-ascii?Q?yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07f4471b-1b6f-49e2-9569-08da7ff12839
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 01:38:16.6460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qP+nFm05Mx0aWZrZh5ZylnfjU8T9w/W+mz80xrAKPhrZXubq2CIPb42IxeOP/Eq+Y49W7Du49o4Ea1QSVOkOLpKvYNrc3LUJcFLLOgppINk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4938
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
 display.funcs
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

On Thu, Aug 11, 2022 at 06:07:16PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Rename struct i915_clock_gating_funcs to intel_clock_gating_funcs while
>at it.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> .../gpu/drm/i915/display/intel_display_core.h |  4 ++
> drivers/gpu/drm/i915/i915_drv.h               |  4 --
> drivers/gpu/drm/i915/intel_pm.c               | 58 +++++++++----------
> 3 files changed, 33 insertions(+), 33 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index ff76bd4079e4..98c6ccdc9100 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -10,6 +10,7 @@
>
> struct intel_atomic_state;
> struct intel_cdclk_funcs;
>+struct intel_clock_gating_funcs;
> struct intel_crtc;
> struct intel_crtc_state;
> struct intel_dpll_funcs;
>@@ -44,6 +45,9 @@ struct intel_display {
>
> 		/* irq display functions */
> 		const struct intel_hotplug_funcs *hotplug;
>+
>+		/* pm private clock gating functions */
>+		const struct intel_clock_gating_funcs *clock_gating;

did we get this correct moving clock_gating to display? The question I'd
ask is: if a platform doesn't have display, would it need to do
anything clock-gating related? Looking at the current functions e.g. 
gen9_init_clock_gating setting some chicken bits, I'd say yes.

Another reasoning I'd have is regarding the registers it touches.
And here they are not from display.

So, I don't really understand the reason for moving clock_gating here,
except that there are indeed several functions doing display-related
things. Should we rather split one for i915 and one for i915-display?


Lucas De Marchi
