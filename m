Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA171C93222
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 21:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DAB10E91A;
	Fri, 28 Nov 2025 20:49:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gtpTH733";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EA2610E84B;
 Fri, 28 Nov 2025 20:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764362963; x=1795898963;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=L5PdKHZvU/uxf/7J7E1mPwBKKcxv4IHyHFsngWmZSO4=;
 b=gtpTH733fMz9jpQAi0rgwhDDwjTTDXG7+6QXVlWTf6XDuu4fgNaJInoC
 U6bZ9y460RcXNi15tMRlf5yXwZvuTWY+KLku8mJrZ0ohoPS6Htxa2xKzg
 1jYROiASoYk0Vkl/jI6ZdFPVnzmolqZmAen0G8o1P7QGSRgWArBMr4Tv3
 B366hQupvAjTO+JA/SpYl0+T4M8LVzpJqPPXF9UyNNJZUaGcXDUD8ul0K
 d2okV/UOZw4EA/OsMKM/+EDeL1MNi/Km7JWdHvJIckLVljcIFTO74IYme
 7nemdO+XM8iW2e5hKstqDBLZHSncJ7LlUMyFqsJOjuYoJddpeidDyaG85 w==;
X-CSE-ConnectionGUID: zY9egAJ0TDaLylLm/M/zrg==
X-CSE-MsgGUID: xxggQMvKQuySACZzezuXQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11627"; a="66342506"
X-IronPort-AV: E=Sophos;i="6.20,234,1758610800"; d="scan'208";a="66342506"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 12:49:22 -0800
X-CSE-ConnectionGUID: enIvn7ZMTtS6L6W2dfcsIA==
X-CSE-MsgGUID: vamr6JgZTYmcI2QBmzAzzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,234,1758610800"; d="scan'208";a="197865403"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 12:49:22 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 12:49:22 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 12:49:22 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.42) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 12:49:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tm0geyDfL4Wjo4sB2sgOq5JVMRo1feiG6dKikDdZ0LfNUS9dzQme5GJWXKkkVPhlEBMFaScjMAzGe9MkXSlzY900YDNDPNxavwb0mBrT0yLZDjo5ZQDlC9q7u+m9GYpM2h86JENi3KgD7W0z0CrJ71pdb+7sa9DzsDuXc67MYMY7d5uPbUJ/fViB5HQ3iU1M/KXat3a/u/vidvIsbjHfgc8R3e4iWmQQVVhcfB7pvO/EynXyY4RyG3IA7trocktxiSKP1NoYktjzw6AQbfHc0MLbCpJVPnLND4xqTVKWuTai+EAbwhOaBfBmfbmIVlZx5sKgUVCtdsX1bMVHzCOvyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LTrFKcUpr5XRlzZ2TnICXFGjvNXqeajmF4hcCmpzW0k=;
 b=mJRyIR+EEulhRuHdXsvJEUdkfEda4YSrvz7cIOvxKkr83H4GNE3MmFT4THWQ729XUkVO3H7KFhqeJ18KbHRxGZnk/cJCNbYVzBErIudA0RasTcM4YIKGft1Pl21eTHztQTxOK/G1dvkhyB2KW/Upu8+LV5lWS8IwEOVUEra0sSNmEEwPSqJ2ZN6gPK/a6wu4O7Z5WcApRz7c76WHCAsjjtu9R/G6h4h7YPUxQ6vaUi/2aBvpp0D1O9jspMLnoi/2tFSy+o86gUKoXxM8jcf7Xwroa8GGYDo1+bNnricenD560LL1v2AFGCKeQ6PPg77qnPR+oSlAygsHAHRfiL0kSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB6068.namprd11.prod.outlook.com (2603:10b6:8:64::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.13; Fri, 28 Nov 2025 20:49:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 20:49:20 +0000
Date: Fri, 28 Nov 2025 22:49:01 +0200
From: Imre Deak <imre.deak@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ure_fo?=
 =?utf-8?Q?r?= drm/i915/dp: Clean up link BW/DSC slice config computation
Message-ID: <aSoKvdpPDKRR4WXy@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <176435570813.39153.17337290511972126000@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176435570813.39153.17337290511972126000@a3b018990fe9>
X-ClientProxiedBy: LO4P123CA0470.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a8::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB6068:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d60fbe7-9dfa-44bd-63a4-08de2ebf9a82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qswtd5sB9hicHquIUu2qUXgL+HBBgRUOzwiYp3VZRQOlXa7JN48kMxrYEcj9?=
 =?us-ascii?Q?HYYH6eWo82toYQgil3KnwpFGsg5r/E3DToCn7tBQjN5aZxEgMw+10IwFmn+E?=
 =?us-ascii?Q?72lZCyrnmG6C5YMNvMSRRF0QHX3Tc/yPeAwpbuZ6/P260MWn+x+/6++De+jT?=
 =?us-ascii?Q?eInJQykVXr5PDUXhTyvE6fxLseHoAqbgSagOsHyhkrobLn5q9OLnzVNQc5kC?=
 =?us-ascii?Q?jxJLln9VYk9yxKd9gu/HAhSUrWdMjF5UNcbavoi3eO4KrdwZDkAe4fF2TKUU?=
 =?us-ascii?Q?wLJVtdsgC2PRlEdSLjV3UmGpvSO/WgMX/PFvTTolwSMualOtVGuw8TTj9WCX?=
 =?us-ascii?Q?0odu9wQlvGw4N1c1H0eWSIL5S+TOUCbqF8z838IPpPanxBcm7e4wAJHoI9L9?=
 =?us-ascii?Q?4sVJA0ewd1Yg2sa/kbNw61fP+uIu2PUDA/vEfPqxHwdo9jUpIuljFH06/ES1?=
 =?us-ascii?Q?AzDaE/UMYyfMBpBNN2/NJYUS4DhCZyS1DD6TgZVtj9ZbQvEyZzgOQYoG1fV+?=
 =?us-ascii?Q?GrFQFLsTn8iz3w3bfqtJdp7NBcYzhERam3boU5G7badxbP85mc0JLC4xhh83?=
 =?us-ascii?Q?rewCFMGjqlPtl8WDPyNamJzchpKQAmR/LV8FcgqTkRVXQb+y3mUuePz0LQ1N?=
 =?us-ascii?Q?MIam6SNSKtpfPqUp+epr21lqADfsnEzEfo4Mv0umqGmU6uHRXiw4u33DEMsI?=
 =?us-ascii?Q?TqmdqKYbLvMI95h1F/Cece8v6ooXketUbEQQaswMg1w+RZ7YdPCwwqciIV7x?=
 =?us-ascii?Q?m/NsZXeXVFtoEYo/tvP4vOZzUl45CqNMC0fpSFgwafgSQjNGd7L36KcQqeGM?=
 =?us-ascii?Q?Ejo8XkBbWTfAX20HXlDQGn7UICkmGenRbGouzCMCYITU+7EP+R6QgRTul2kO?=
 =?us-ascii?Q?XosPdjXuKLztYbk8k52iQvFS6Ej4ykJrvyXw521uG2761pwIs7xh3r5PHLWq?=
 =?us-ascii?Q?G0dzfjAwMe1ODmHUltLbfPDzBIHsykIOhK6UQZaC3qri3DnAC5V4bcHUZL+G?=
 =?us-ascii?Q?DtOAwGP5oiVBPcGCkLTp+4PGlCwgKMMRxAYHN87Ns+dIaQkEFwgznAY7rYoZ?=
 =?us-ascii?Q?63pRzestcXnTEwVWuPXYosqpTigIN1xq9N5w0GWKjxIBRK2BJz9FMHa6Pab7?=
 =?us-ascii?Q?+zFwEeo0vpYQkEvF4PuMlgYn5SATp2LeoYUFgn9lBMZE6dPBh3c7wkymXzdL?=
 =?us-ascii?Q?n4WDFlOjrXXfWqM6shu7DRIiP42IxiQ5l1YgNFghIBhCq4y9dTWwsycWZ2E5?=
 =?us-ascii?Q?K1oAAjY4jMe8ntGGnpv5ueRbR/TIsigNTaq6AqRChBe9QKTV/QGbFKubZIXj?=
 =?us-ascii?Q?DCoMQlVWhiUJ/J+frJjEmzeS2kyCxxVfSHNmSfPxx5/sXzMAoYbl1NrXanLY?=
 =?us-ascii?Q?4UBRDAB5tM0amyk0Sic6NF3iv6BOezPMYwmFgWPgYeTp8aOrXQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K4MOyz5qbTZsmbEUpA80yLOiUjLkNC4vuj1HMzULqrJpdAuZ0fHZENXqP24b?=
 =?us-ascii?Q?De6GbKJSOPADGIo46gHuMC8BGZS8BW8UFf2FSEYOa2EgIIoFaPzL6RQ5F6/y?=
 =?us-ascii?Q?3p6LtHwu+MCW7EM0x+dMCthV2sTTDZ+8rIWz7IBA/0LvthWmq//IxV7UTNtn?=
 =?us-ascii?Q?I5S6W6PyM+DkTiEBTFBNeSMooBhDXjJVIUeABmpnYVoeX++LtJkBEcXDondH?=
 =?us-ascii?Q?m07HzfStiD441xIa5zq5rSErS8MjQV3rgM0PvUAq7ifoUdIJOkMMp4D0R5KZ?=
 =?us-ascii?Q?R7dc+35884puFgQ5f8Pvw5kaFDgmA5iWZq0KtwxR6u4pFHeIiLG8RN7UHfRn?=
 =?us-ascii?Q?YEx3fTusTwTT2hWFwdO02vCg9DedPVm80vVDrdwE00/AKGZWmxLyGU20lGsG?=
 =?us-ascii?Q?f1gcYtY/SnZU9EX+LzEZSmHiDt7ffvZC82uVaYCHkcEb2992XGtX2csi7ykG?=
 =?us-ascii?Q?m1235V24dsVbW+Miv0KR/n5CLENxQeRmYDw5TWbjHcwi9+x1azH+r4XrYimC?=
 =?us-ascii?Q?gqRnc9RlV0CkeZ01zOD3IS43TYQREl+1G6DqXmosI98GEP5zNxK/TWHuv9by?=
 =?us-ascii?Q?fQeAYUrJ1FNXqZv0L7J8I5QQ8U1f5YUgkSZrqnvp7TnMGP9GvCYYrl+JtAcG?=
 =?us-ascii?Q?jIW8fd69AhbUB3qNQXUdQg4rAJSOQntECvlX+AFewTQPGJCX8ruHsvZKK52M?=
 =?us-ascii?Q?Tcxs7b1FDmWjzySZhqHDJ463L/UxBC2fjhW3Otw5zd79/hkG06U2+20yO7J0?=
 =?us-ascii?Q?kd/+pu/EbxDHq3SzN1KFLYoTd8P6xFqcnsDXZ+hEfiSFOj4ETnx6Ufbe7hoJ?=
 =?us-ascii?Q?G1e6evTwiqkyekfsJMdV+nQexGEPI3zWpCvGYDtGRkcUUteepuK31nBAu/za?=
 =?us-ascii?Q?JYkPsRX9Mu8UIHMh4eZerBw8rQT7p6XK6FNgYl8KNxNi2h6qokYoyqxpZZ3q?=
 =?us-ascii?Q?wywZbBflRVrHKMy+Jc7gx9ks1z2v/UA8iIGs+xR52ns0JwLdwJp5vynjiiuc?=
 =?us-ascii?Q?uEdE0+YkLLlUVCzMwyOpjBPMGOmPv2r8tbSR51dWAyF0n3JyZx5hJd3/CHP1?=
 =?us-ascii?Q?WihCH66+Pq0KOOUjMD8ExZDFj90LxTa2X0e5P54etSobKR4H34gEoYQStTv3?=
 =?us-ascii?Q?GH/z8RdPSfv4nv3pGPm5VjbWY4sDQerODB6tmKDUBL2Y63uWI1YgT1fLjxvZ?=
 =?us-ascii?Q?b4qJ1N8gYIwssfk86KZrX6rkPXBwotMh+9dpbYh1/j14dXULbhH1dIeoXmga?=
 =?us-ascii?Q?gXiwQGeRsmwJJGqOC6/YSXLSzLUpAMP489NfGxltxi1wYaM/abdqHXq4eJ7c?=
 =?us-ascii?Q?wZuld3ETLUJ1Ath3upg0FxIQWVj3/FeaFl1qDYDw0FnJpTeG5Rie8L5GCSdG?=
 =?us-ascii?Q?eBr8jfR6/SQHNeVGgf4Q4D9Q/k6/2jcS8aV/xupQyaphrioffxyvpQB5ISI5?=
 =?us-ascii?Q?5OutUtDD/kJGjZ3B1lNDyPLYNX//qUpgb3F1D6VWJLPKQy6y2JGyTcWT5/09?=
 =?us-ascii?Q?fndgsvK7MONRvCotxZt0W1DlXr3CzAz8J4PjWdRgxASmQ5Oz9mHqM28jQS69?=
 =?us-ascii?Q?AdBYXUHWLvxVTw1G+NaErqEkBVZ2K09RJlihQ6NhU7VjyLf7TCSoHdapEI1/?=
 =?us-ascii?Q?5x7iiRV2n+cB5um2hIK60xVHhn2Tv9bqIPb1Rtmyddl4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d60fbe7-9dfa-44bd-63a4-08de2ebf9a82
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 20:49:20.1365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dZvd8oN5QFbnSM6l+SocdJ4reD6y/4RWogMCxUUJyebEVwtWzRHALqiJM4WY3C2fujABqFRFrPxwH5j2fRydtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6068
X-OriginatorOrg: intel.com
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi CI team,

the failures are unrelated, see the details below, could you please
forward the patchset to full testing?

On Fri, Nov 28, 2025 at 06:48:28PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Clean up link BW/DSC slice config computation
> URL   : https://patchwork.freedesktop.org/series/158180/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17607 -> Patchwork_158180v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_158180v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_158180v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158180v1/index.html
> 
> Participating hosts (45 -> 44)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_158180v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@dmabuf:
>     - bat-arlh-3:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17607/bat-arlh-3/igt@i915_selftest@live@dmabuf.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158180v1/bat-arlh-3/igt@i915_selftest@live@dmabuf.html

There is an HDMI and eDP output getting enabled on this system.

The HDMI output is not affected by the DP/DSC changes in the patchset.

The eDP output is affected by the changes, however all the modes/timings
getting enabled on the system in the Patchwork test runs match exactly
the modes/timings in the base CI_DRM_17607 test runs, so the changes in
the patchset - which could have an effect only on the modes/timings -
didn't result in functional changes.

There is no DP DSC modes getting enabled on the system.

Based on the above the failure is unrelated to the changes in the
patchset.

The issue is a system hang during a GPU live test.

The same kind of hang during the same test and on the same kind of ARLH
system happened before at least in:
https://intel-gfx-ci.01.org/tree/drm-tip/IGT_8645/bat-arlh-2/igt@i915_selftest@live.html

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_158180v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17607/bat-mtlp-8/igt@i915_selftest@live.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158180v1/bat-mtlp-8/igt@i915_selftest@live.html
>     - bat-jsl-1:          [PASS][5] -> [DMESG-FAIL][6] ([i915#13774]) +1 other test dmesg-fail
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17607/bat-jsl-1/igt@i915_selftest@live.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158180v1/bat-jsl-1/igt@i915_selftest@live.html
>     - bat-arlh-3:         [PASS][7] -> [INCOMPLETE][8] ([i915#14818] / [i915#14837])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17607/bat-arlh-3/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158180v1/bat-arlh-3/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-9:          [PASS][9] -> [DMESG-FAIL][10] ([i915#12061]) +1 other test dmesg-fail
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17607/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158180v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>     - bat-mtlp-9:         [PASS][11] -> [DMESG-FAIL][12] ([i915#12061]) +1 other test dmesg-fail
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17607/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158180v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-14:         [DMESG-FAIL][13] ([i915#12061]) -> [PASS][14] +1 other test pass
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17607/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158180v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#13774]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774
>   [i915#14818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14818
>   [i915#14837]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17607 -> Patchwork_158180v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17607: 7fe1b006b65af67bc0ef5df53aedcd265be7fb19 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8645: 8645
>   Patchwork_158180v1: 7fe1b006b65af67bc0ef5df53aedcd265be7fb19 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158180v1/index.html
