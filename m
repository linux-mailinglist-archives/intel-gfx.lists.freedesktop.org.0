Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5BC78D0B5
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 01:44:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E186910E4A2;
	Tue, 29 Aug 2023 23:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B9DD10E4A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 23:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693352667; x=1724888667;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=0rgq+Ph0s9mGArj9yk5sYRVHOW6NSv2GNQfDkLlKXuM=;
 b=jYNwoL1k9PdUKYhJaVLDOTWmJA75+G91GzmCNko5A9AmE5CsU5mvWwVv
 rnIhEClwEZlDyiTUnSBeoBlDahwGxUafoBU6KvVLbfY4KoRuj9eKlCxwy
 804Zoj2P4phzah5VIKcm43TYO4sxu6qnbdcfiCigCX1rADtBOLHjDCg0v
 yzKUT1qJ4dyzDdGTTTWJL28i1IJh16RqalILIt+/3FWpjTZRBsEhCQqLC
 /DR/0TSMA81F99MAeH7O2kRtZ+eH97HvsAmpcyntq3JKQio716dfGoTYN
 cMlQoW2TGUOVX1LEtpr6UzqyivbnUJodF+4SiBbJWnh5hlC8Vv60YcUWX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="360504229"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="360504229"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 16:44:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="912570849"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="912570849"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 29 Aug 2023 16:44:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 16:44:26 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 16:44:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 16:44:25 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 16:44:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BGCvpO3kGJTzfKGJq/GDHR2PQw/TpOfR/Dh5H2rjP2CHXXrt2cmH0HLj1jBvwfVfWrPvv4Spg5SkNcnTTdXV9COQo17eyI7uuPIK9Aj9K2BA6ZXLADXndZIF0cV9ugZ/uxQYWbPJIjETwdQKQ/Gjyhpk/ia8w7hqJQn9eQ3CACUr3cecx8xeerDDfX4MSt8VisVoGhVCk/FNOeTYzV8qRhxZcrTwJG6ZacfuZ0Q/hrSyAH17jLvdzKOXA7HY7jF33GiPU0Lnr8ZLr8dpJkTj9UZ8nw+J3JazczvPOWeQserhAE8p495gu3QcLxS05vza5l2mRHep6zDq4NNLF/aOVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s1DvmKHpSMJHOat0ZexlWSjAtD+b3t9l7cXt8H+SieA=;
 b=Jd2GYYDfWjqD+2+HpnNABB3NSsjdSLrNA/THyftohaEUyEsBZtFRGJC6487cHCN0GWjatLS5tWoUpnpLURJOuHnEahv/IaXxcGLQUvSMDTKhRVTSJ/Sr8Jj54T6YwOi1+qRls0LXcfN/cdNvAsCWMj0DzhrQVvKF2pppqCLkZOT9BRkUg4AaUbp1rwyL42+lfxy7PDOJZFevZEIqrtCprnF+0bVYuLAtZI9S6RsoswzR8j9Ky+39ipDwVjnM9YCG8JO+KEjFJeWlhLVtT7QJvzgxO/j5lz3cuixPJUdvDgoQZzokZeBP21XLWlwjArAnbIab3RqOLssiiKSCwQk7iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ1PR11MB6108.namprd11.prod.outlook.com (2603:10b6:a03:489::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Tue, 29 Aug
 2023 23:44:21 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.034; Tue, 29 Aug 2023
 23:44:21 +0000
Date: Tue, 29 Aug 2023 16:44:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <20230829234417.GO1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230829094435.2100669-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230829094435.2100669-1-jouni.hogander@intel.com>
X-ClientProxiedBy: BYAPR08CA0072.namprd08.prod.outlook.com
 (2603:10b6:a03:117::49) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ1PR11MB6108:EE_
X-MS-Office365-Filtering-Correlation-Id: 07d575a8-6426-4b28-ed16-08dba8e9ddf2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dn06p1gJRzRhAScWz13aYa4ydPmLEroZgmmFFo7Cq8yUBNiaxPiLK/s5ZrxC9b4FaPX9TeTaZkegsoxCXo6lmspCDixp3VIcK6mj4ssSWapVRXXfjfMPZqsPUW3B3ktcUBifpl05pq7hEwfq5yJud7yW8cBPsssXHT8RCDH5YA6N6Dq+KqmxLFoKWRQg0vylrFbm75ILvV9kOxN2yJnFk2XTWl5RgsVNd+Mmmovz71rmMHWmxGCR9C9czrU4722jTnF8DhxYGHoOor3cFdlSbjAFzZp9s1FlSgaeE13GrfQ2mJPr6f1Lhr0bDRMWqiDwvI7L5O04fc/ESQPaEsK005GHo/+HK2N0FZVTHbAbfWY9B7wlXZIZILiM8Kl0tl5PKXEbm/j5fQf0Bkbbysfa3lUST83N486XdFRJSLmo1kXB/AYKpaF3bLf4BE87aADyxitQrgjOq619CY4irclvvQ7F/EUxLQquUrQvU0HIMNkYG+ttMJoIrl+2KgqFio/KIpqbgMX+XdFVlb+qCCIsM/eY6WYIknuK4wCD9rW7Lwe6H5TWwt/cDgWtslaF4fjg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(136003)(346002)(366004)(1800799009)(451199024)(186009)(5660300002)(6636002)(316002)(41300700001)(38100700002)(66556008)(66476007)(66946007)(83380400001)(6512007)(82960400001)(478600001)(2906002)(8676002)(4326008)(8936002)(6862004)(86362001)(6666004)(66574015)(6506007)(6486002)(26005)(1076003)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qNxqtAYmMga1Td3CEeqC9+gNweG8oBHwYlj1Bimi1TImCFS2JnUrIT1rVL?=
 =?iso-8859-1?Q?hU+pQlS7Mn6lr6td/S0PlvtAfdb5oruXfvM/RI7jxA3J2gXqtS7koGmnN+?=
 =?iso-8859-1?Q?qSBiDCCVITTC9ChpIpg+O8BnDU/5Dr7IP4cJNHNSyeqZQIdx0nIpkEnd4t?=
 =?iso-8859-1?Q?h2qnGek7upsjNXUK/zxaH9vFCdkJhPwaoJonYPcMKZuPoHd1yZ8jvXzKKG?=
 =?iso-8859-1?Q?VYjwDRH1F1JjzqWLvNq6D/5BPOLkG7BgurTTaK96V4n1Z+rErluf5zqLwC?=
 =?iso-8859-1?Q?L/iyiv3sBWy/6nOG9qHCoc0HP24KHoFwJjuBPtoImE0vu6JNCLSz2lxx+a?=
 =?iso-8859-1?Q?C8xnb/T3VMonKBJSCetJnk0vl28x9gipMFh0SPGAiRFwLsXfr5lQRsNJ8z?=
 =?iso-8859-1?Q?fUAAWBBQDL7DebjejBIGOYN+rOcMtu7n6LxmQc2jgM1ox4V+MCY6RfbWWQ?=
 =?iso-8859-1?Q?yq94aN8KBxSBDuFxXRkByT5uNQw7/vvLEESH/6/aTIM/ti8XmxACWPh4h1?=
 =?iso-8859-1?Q?9TAxDQzqDi/quCik5s4H0OD0p/RFIQVyIhojjADh9xPWTZ8jWBtRjlGO4z?=
 =?iso-8859-1?Q?Z945FXWvdacwNsQL77BzOX7rA3yCgCJMFUz2SIZTQjq+2zVTxy/qdYjvAu?=
 =?iso-8859-1?Q?NavXRn9vp03Sg+LTFMIs46LTzso8jZjoy9os+Aiv+M7ZRycPJyHv4ftLTh?=
 =?iso-8859-1?Q?ge3WcQ5mF4ikUog5rxFN+3Z4kFU8uJpNss9BE4ZR+jrszEheZknaxrM84B?=
 =?iso-8859-1?Q?Qju65btJiHo7w9YkhF3bz59fNcfCZQMsIvLCV6Ue01uqtTwi2Lrpg6tHIa?=
 =?iso-8859-1?Q?FYDHmICKCswiB115EWwqGDQY6iTNUmuedivlbjK992KfSberHGxP09m50f?=
 =?iso-8859-1?Q?Jf9GFWfz9BBqkH5J7oURDDJE+utUPEcwDuZfMwpzsfry/tHc+2LHC2OfZM?=
 =?iso-8859-1?Q?J4E0/+0WqJgux4abv53Zno5IqPb4q1bJNt41fOq0h/3sTQBxd7QzdXoBSV?=
 =?iso-8859-1?Q?VEjm2acvEDMeu2YEPxy/hI2NRLup3zHPICKxy0ilU2kbDs7d/HAzbvgOgG?=
 =?iso-8859-1?Q?VHpt4TzPhE4Nubpqq34570Lafs0RAMYGi1xBs3E971DDJ9Kqpp3HTt7xEk?=
 =?iso-8859-1?Q?q1nAYc5mAEZSvoMMrLlwNn1LXnikoQ/COPojqFQGawbV4sufTAY7jdLw2r?=
 =?iso-8859-1?Q?2RHF2t/1CRoiEA64mYIFblSLjzdSoOMTHflKirgyHT82RVj9wFQBlhA4fe?=
 =?iso-8859-1?Q?D0BuWHJYIoTPn3TEAxVxnrfcrnqAN8K2xwvGXcujplUPujU/xjTA1RO4fZ?=
 =?iso-8859-1?Q?ecHaA6ODg9QQe6OTRdZqkop/54RkBPZ8mPDsouzziVg3qmDcqTCfnEH4OB?=
 =?iso-8859-1?Q?QI5yCMhpGYB8FWw3+0CpwavjIVjVmZWVz29mzz2672zlG3yLNF25of//qp?=
 =?iso-8859-1?Q?3CZIxjwwMVXaNNw5cYf6UV0TSLxD8aTVRc5xD6HPZzMjsbjnv41/D+3D7K?=
 =?iso-8859-1?Q?WRzVNkVXLijFbMmYZLqkYrsMAVwWZuHhlvwc+l34VMeNTEcMMXu2NJpdcU?=
 =?iso-8859-1?Q?BgzEwFZpkxUpiq5IJleW1lvBOrFllGVo0hnhagZBSz5hcP2Rg8fvC7hTMh?=
 =?iso-8859-1?Q?qpT18EGOsQI6hNl32E625QYu7ZrWsjEG5BJnkA7IpMuf6FSzpqJpbUiQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07d575a8-6426-4b28-ed16-08dba8e9ddf2
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 23:44:21.1717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lGWkmGrqOLeCelQsw7zIqb1Ji49jlzd/BwWVTC/fcjUVzBmNopDyYsZfJzRzmuhiw0tBevPXOCmATRM1UMiqwKNwioWcwABY8gI4RoQr5Hk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6108
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Apply Wa_14015648006 for all
 display 14 steppings
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

On Tue, Aug 29, 2023 at 12:44:35PM +0300, Jouni Högander wrote:
> According to recent Bspec Wa 14015648006 has to be applied for all display
> 14 steppings.
> 
> Bspec: 66624
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

and applied to drm-intel-next.  Thanks for the patch.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 887d0b77ae9a..f03634750669 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1360,8 +1360,7 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
>  	bool set_wa_bit = false;
>  
>  	/* Wa_14015648006 */
> -	if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> -	    IS_DISPLAY_VER(dev_priv, 11, 13))
> +	if (IS_DISPLAY_VER(dev_priv, 11, 14))
>  		set_wa_bit |= crtc_state->wm_level_disabled;
>  
>  	/* Wa_16013835468 */
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
