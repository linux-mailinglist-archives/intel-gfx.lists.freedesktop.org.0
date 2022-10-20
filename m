Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2C76063A6
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 16:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F9910E1DD;
	Thu, 20 Oct 2022 14:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3E5810E1DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 14:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666277891; x=1697813891;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JdgzBGPSvZlfy+7BUKd7c/KYXwAE7dGmbB7redDj7Vk=;
 b=JPkUJ6zOE5+HCliW7RLYOX19GSPRgYMvKJjGQZhsYQcCmRrxLKNMKfCj
 oXi4V8H6/uUZLMKa8hMwjYHwO4LbFxfxK8gf9dtsaM1rWi6uVVWraZTpS
 sZOzmD4v25byFbyMKMvjIqyHAdPVqhYGlT5JVX10m/d9dNGn0baAJkUTX
 j+RbMhRbb/lb7N6IHRaNMKxKTfmSbUSovOYXU806LZaKtVL+TMlWperwM
 gTqnE4atz756qXILiKf0nrPJzG6AYOgIfovoz8GJ8meyBTu73PY6+D/a7
 pXE+xaTGL4QHnh1+68GfwY/rYgAx6pB7S81p/Q1IlHln7Lcji1CDxzcpD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="287130533"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="287130533"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 07:49:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="693025238"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="693025238"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 20 Oct 2022 07:49:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 07:49:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 07:49:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 07:49:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 07:49:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AlxUrTDbm4uxATpzgH7dRaN8aU5cwlRZ3BD3iBMsejdipwKpOng57jpiwH+untXPcfDdYWoQmhmgsWFjQ0DhG8Lfj2dqMbuHdb9IhQx29GvsSej3V+IDdYqJTIiEFYC/rH1GSZnO1jd16qUYUmSB2wqx093K8jtxj8zCLktBhgP3Y/RRdkI6GcD9bpvYY2UiBJJIxzjAwlv0y8bMz072bsr0mCR5Q/0rSJu2bQjlpKkjI0sNqz4bUoTHc0nA8MO5RNBw3pBOCzgOtqjXjCG4NwLDLvvobUEMCYy510Gj6TUPvtY8e7vOHQe7xRejXZFFHDnkxGPJpZS+pxP8RPnJiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UfppIuNOiAAPF5PaqxgvAi614Ok4v4gknJLfMzevqjY=;
 b=HsIODxJ4sR/EyQp/GdImRBruYpbe0pk5PajPP/MnluehViedIXpHVnASh0/1td9SlTTc0qGh1xMi4fHVgHqELlgA03bqOhCcP58S+eQ2HRqbnZw0XgCZ7F/Mc1rdyuG5wGV+9yNwSPXBXSVdHAnxHnBFJd4Fe772CH701xU7dJQifewpK4zK016O6JgBuv6xAijm+JF6NfLDHopjEN6ZrFvwBlDHcLYXecze7AjYo+diUh1Pts3oPRL+txdwVePC1WBRV66TnSvZ+IppI62g3SiIqpnp2BnPT8U5uO6ZdP6Rmw+DBwBLfcX0sdY4oOtLOo6LdOdw9xt44zJ8I/Xkeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN6PR11MB1619.namprd11.prod.outlook.com (2603:10b6:405:10::20)
 by SN7PR11MB7538.namprd11.prod.outlook.com (2603:10b6:806:32b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Thu, 20 Oct
 2022 14:49:53 +0000
Received: from BN6PR11MB1619.namprd11.prod.outlook.com
 ([fe80::c07f:1362:ad37:8fc4]) by BN6PR11MB1619.namprd11.prod.outlook.com
 ([fe80::c07f:1362:ad37:8fc4%6]) with mapi id 15.20.5723.035; Thu, 20 Oct 2022
 14:49:52 +0000
Date: Thu, 20 Oct 2022 07:49:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1FgDJjbdm8Dpnp7@mdroper-desk1.amr.corp.intel.com>
References: <20221019222437.3035182-1-matthew.d.roper@intel.com>
 <166622298570.29707.10814153073305903642@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166622298570.29707.10814153073305903642@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0080.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::25) To BN6PR11MB1619.namprd11.prod.outlook.com
 (2603:10b6:405:10::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN6PR11MB1619:EE_|SN7PR11MB7538:EE_
X-MS-Office365-Filtering-Correlation-Id: f320c09c-4bc6-45a5-b40f-08dab2aa5802
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8q0fPlhE3rH9dsCZDt1RkYIdcDDZy/3akMjSLl51nKzZg8v4zCBcUGrI4ycmxHn57xa7ypy7PCxquAxqqniyCgi0tvFndPSR2/cTajlhu2hD1mFGS0O6PtBZYhrtJTBxD4c+9bSuVX3iPmC2PIy4S/sCq90PoM+YUrwrT5mMaa+9MpBo+lkSqCNQcRcIh7gWgbjoUKx09zqd7MVw5pxHcvZpT+g6DNxqi2AdGzbN2u7e3B5X4w9lwgYszVImWTuBEAVEzr0jNcsXLjLALp/ev8IMqs8cEMBcfGc1yDQQDCx5VXdYW6ShTZGjV4SLwPBvZlq8nM/SzYFtBr0pInKhF1QnTxPWjByPRDxgVKHrucma58aaJa2xBn6uo3ZGk8H4qHz4oJakhfBA3zasJ11C/wlU2HHhsUjW16suilohYr/cPjHmqHHIR/dSpeYfuXRRGpn1tDhI0EJpeix6feLuAeRqqgKVda/rPka3Yt2oH2Rww0MtuveiCMAqatVJ5kzACmlLvs3cDh66svFI3qMoFgUIVwkoc6SMxl9orBOLi9qKXs5JE12iswDk1/6a6pq3FHlpa6kFn5CUstokmB2//4MccDnSnEg+pTsvNh7ts/SgV3wvc2k7H02ogPppsHS7k2QeTbc3EYD1pWsMuSwg7Sa6lzWDuDKFBoTGgDl1z5ruj2ZC5xfykQjABuQ7VNj71Qy69Ya2HCDBUSY24m8mPSrhcvbDMUoGbC4GPJNlI3AuB42+WsMUfFFHfiKlZ3DrcJGqqskh9VSFhlwRY4b5bQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1619.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199015)(6512007)(86362001)(38100700002)(6666004)(107886003)(26005)(82960400001)(41300700001)(6916009)(5660300002)(316002)(966005)(6506007)(6486002)(4326008)(8936002)(66946007)(478600001)(30864003)(83380400001)(66476007)(66556008)(2906002)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xie5KVoNmfFJGRnUf8eyfW4R/tOL401zSKuFYazAAE4HynXHDAXI6KTfnfab?=
 =?us-ascii?Q?bWg6nYFmzAUW6sBIECdLvJu6965/8z9m2DrEW2DQFNtVoJ2RFTTZn/EengYZ?=
 =?us-ascii?Q?t2Hz+8iA2BgKpcCS5k6mEXRFP4tB6Wv/soSUTJhLirEz69rYNIcLl0/xYC+c?=
 =?us-ascii?Q?N9v8Tcw41lmNCJX8WFzdCCkbkwC0muR37kICiDaz99MVIt7+7QlT/WCHt5qY?=
 =?us-ascii?Q?rGWITPxtHYY/cT3L8dzeENufbjTgglQokO8S8BQFTSpLBzbEmI25PxcT2Fn0?=
 =?us-ascii?Q?Fct9XOlq/a2VLNDPOKcLtmaWwmucnPganoAo1EPr08ZkYvm7ZnCAWl5ALUK3?=
 =?us-ascii?Q?IuXfuPSLrOGg0d2Sh1iTTvwcCDcCEv9Me0duJrFm90dZ8l3lYFi49PeaLj62?=
 =?us-ascii?Q?zK5J0ulREoUEBbUPFfiG3LtQlcag5/SQ/kc0E1DtWR9wIJCFwa0X/KQe8GQL?=
 =?us-ascii?Q?wYQnQXC+cfvBl9N9gH6Y/9H9KwYHWCnFzhYxUWbybioe1s7eNDvijuwgb1pE?=
 =?us-ascii?Q?9/k4HUtsz8CBnm44sI2HRjCdCNgoe3U/SzriI2cimMN9wSgIWQ4ZkbwGPxAU?=
 =?us-ascii?Q?rWYpzKYaaIYd/XjxyAIhV4arK05Qz1O5BKr+eFNGpvfPWqPTrnTc16bamZ/e?=
 =?us-ascii?Q?exdCF07bF2E0ldFNJN57PcVUd3ZmvZP7oCxjdIi0DLYasGlKn5LnTCtrVK1E?=
 =?us-ascii?Q?jDtUZrZ8gxBW3xLpS65Gx+TVSFex1NqNIqSch5TrYbr5UpC616HpzvzaCD8c?=
 =?us-ascii?Q?rkhIVrLUkgiOQ4fiHzGqCAK/51eTOJe7EIlNRxbTIgYaL+oCS2GSqJxAZS+u?=
 =?us-ascii?Q?31naijXzudsyBg89wzV1XP+pfhRezjTLb1VypwNdPGc5WqhefSHpXejPTEW4?=
 =?us-ascii?Q?PbRtGRhSKyRBQmTRj4BoJUCILTf2khb9uUd3uQ++NyiDT1jG7ncjtV9euuXP?=
 =?us-ascii?Q?kU6p2t/CXhctjogXv+uOpaxEG0/2Qgy2imHPOMto9LNgZmD6JFYOVnFABLjt?=
 =?us-ascii?Q?LRMivubejOz/vVeQE5Ns2M/CJqM9RyKwTGC3taTHGDQtMtaKfZRKVEaN3aU0?=
 =?us-ascii?Q?j7rWtK3XUjMD85nrJNQXzPC2akKyMYaKNx5DqTpsmjZiXK/vMqJH3Rw/kA7r?=
 =?us-ascii?Q?+Nq8S7uCio8zn/qsdAAceE1eqPGOjoEjUrvkSjTMrm9nTQW7mjHbidRzYx+L?=
 =?us-ascii?Q?9uwSWW1eLmRcUdLwBEbOT1rdJGOVoHHJPnCI4YnSkiQs9vf9SAxZfMBQARNI?=
 =?us-ascii?Q?+AUiMK8ZEHViXJjwQsd8AKMeWkjeGXBerjsOOVNay7odlMiYAUlZrXtzC7IE?=
 =?us-ascii?Q?Nt9mSRsnkWuPtPFKWGTbyVixI8wpCyHU3aLfLW9YwmjqLfRwLWo732y1hvZ2?=
 =?us-ascii?Q?x9YuEA8ZQlCT30NhvaDBrziWhvX9LfFL+5gylEaYyt5hXE4pmAVoAwkjR3zl?=
 =?us-ascii?Q?xaqFwS6WV86IakrrqQ+GHXfa0E/DRlUHd8qIHTFW2jczHE0QGaa+JLsFMIIL?=
 =?us-ascii?Q?4lNSxBgGioBIfmQQv+cN5hSdXhxf4Zl96h3bcGcloyR79jH2AGSL3jjE15rC?=
 =?us-ascii?Q?jc85AWYR7yn9XS4SywyhqVUpf9L8eMniQNkEYrkSBuSKw0u2qfFed3eDFSIv?=
 =?us-ascii?Q?9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f320c09c-4bc6-45a5-b40f-08dab2aa5802
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1619.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 14:49:52.0384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ug/HAyOQ6WncHdqr6xB+oERPwCgChnK8kuw035z8kzGW0Ip+F0Zx2iwUJhAMrYoSnCxFouYIw2EJ76UVR7XanQIso8JG/yFZyt3axA/ABmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7538
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/xelpg=3A_Fix_write_to_MTL=5FMCR=5FSELECTOR?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 19, 2022 at 11:43:05PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/xelpg: Fix write to MTL_MCR_SELECTOR
> URL   : https://patchwork.freedesktop.org/series/109912/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12261 -> Patchwork_109912v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_109912v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_109912v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/index.html
> 
> Participating hosts (42 -> 41)
> ------------------------------
> 
>   Additional (1): fi-rkl-11600 
>   Missing    (2): fi-kbl-soraka fi-cml-u2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_109912v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - bat-adlp-4:         [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html

WARNING: possible circular locking dependency detected

Seems to be the same deadlock reported in
https://gitlab.freedesktop.org/drm/intel/-/issues/7077 just on a
different subtest.

> 
>   * igt@i915_selftest@live@gem_contexts:
>     - fi-kbl-7567u:       [PASS][3] -> [DMESG-FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html

https://gitlab.freedesktop.org/drm/intel/-/issues/7270

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_selftest@live@migrate:
>     - {bat-adlp-6}:       [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/bat-adlp-6/igt@i915_selftest@live@migrate.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/bat-adlp-6/igt@i915_selftest@live@migrate.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_109912v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][7] ([i915#2190])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][8] ([i915#4613]) +3 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_tiled_pread_basic:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][9] ([i915#3282])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_pm_backlight@basic-brightness:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][10] ([i915#3012])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-bdw-5557u:       [PASS][11] -> [DMESG-FAIL][12] ([i915#5334])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][13] ([i915#5982])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-ivb-3770:        NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html
>     - fi-bdw-5557u:       NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@hdmi-edid-read:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][16] ([fdo#111827]) +7 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][17] ([i915#4103])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][18] ([fdo#109285] / [i915#4098])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][19] ([i915#1072]) +3 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][20] ([i915#3555] / [i915#4098])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-read:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][21] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][22] ([fdo#109295] / [i915#3301] / [i915#3708])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-rkl-11600/igt@prime_vgem@basic-userptr.html
> 
>   * igt@runner@aborted:
>     - bat-adlp-4:         NOTRUN -> [FAIL][23] ([i915#4312])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/bat-adlp-4/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - {bat-dg2-8}:        [FAIL][24] ([i915#7029]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_linear_blits@basic:
>     - fi-pnv-d510:        [SKIP][26] ([fdo#109271]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/fi-pnv-d510/igt@gem_linear_blits@basic.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-pnv-d510/igt@gem_linear_blits@basic.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - {bat-rpls-2}:       [DMESG-WARN][28] ([i915#5537]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - fi-skl-guc:         [DMESG-FAIL][30] ([i915#7270]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
>     - {bat-jsl-1}:        [DMESG-FAIL][32] ([i915#7270]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/bat-jsl-1/igt@i915_selftest@live@gem_contexts.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/bat-jsl-1/igt@i915_selftest@live@gem_contexts.html
>     - {fi-jsl-1}:         [DMESG-FAIL][34] ([i915#7270]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/fi-jsl-1/igt@i915_selftest@live@gem_contexts.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-jsl-1/igt@i915_selftest@live@gem_contexts.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - {bat-jsl-1}:        [DMESG-FAIL][36] -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-ivb-3770:        [INCOMPLETE][38] ([i915#3303] / [i915#7122]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - fi-bdw-5557u:       [INCOMPLETE][40] ([i915#146] / [i915#6712]) -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
>   [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#6712]: https://gitlab.freedesktop.org/drm/intel/issues/6712
>   [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
>   [i915#7122]: https://gitlab.freedesktop.org/drm/intel/issues/7122
>   [i915#7270]: https://gitlab.freedesktop.org/drm/intel/issues/7270
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12261 -> Patchwork_109912v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12261: 41447224fdfbfbfd1e9ffa5fabc9d277f9c02f8a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7019: fdbafce2b74e84739bb1d81223ae6f01fb442980 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_109912v1: 41447224fdfbfbfd1e9ffa5fabc9d277f9c02f8a @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 48b2a60b18d8 drm/i915/xelpg: Fix write to MTL_MCR_SELECTOR
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
