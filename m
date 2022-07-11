Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3BC570512
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 16:07:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1C18EA29;
	Mon, 11 Jul 2022 14:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B3398EA28
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 14:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657548422; x=1689084422;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Zzt93ISoIEDllqgZGN9YYsIfIaGHNJ1DrQGcPzQdFcw=;
 b=ZY0MIsR0MjfcqCvH9lwAHcVD1agott/txWwAGQdUSLjJZOdqtykURjk8
 eAYcB6Xx17ivFFqT1Ha8m1bH16j78fblmuaq8h/9oejptt3IZTdJSZis/
 nxssA1ohPZLENj4wK12KbjpZ8T9mjMErhFPYOkqagaUDX42mTjRe7AOaK
 awJSQLazjL9RgjzheN6i1lfgULP3cYvzNZzxAQbj1L937pTv/+NJXQ2Iq
 4bKRARScwINTBgdXBRDaLfPWO0YX1NqX85JM6Ujz6Lb2fL2h68HBTNx/l
 0+yDlVUVdzZl7gRU+3EijdPsW8o8C1NOvB+GKdCgXtu7eNy4TGpVlXZ8c g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="267708618"
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="267708618"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 07:06:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="737102183"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2022 07:06:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 07:06:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 07:06:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 07:06:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cbUvOKeSFZ1XEBhgdq82rWZeyyq1RBpkRZZvF8FlsFddUWNSP+9Wr28xKDUUgfg5GGQYsdNsAhh+5lM8cAe41J/lpaCBE2NZtsyBnUXNhZLXqDxVMMdfQE/OFzDIZ7wA/3lISv3N0cdN/IAQJDY3Wyj9px7omjDdfyhaHUswX/yKwgb707X/y5817ucj5/WOEN1/1+NB0P5P40s+Z+jq68xPzUivwot5BQT3kZ5v8WHL15+9e5qJ84vCCMk1DWt6wYV29Iauqr75eAW7/L6KWI0pqZcflYUuaI6f9ij9thrsNim71H+vNxz8UmDgDfJJq4Z1OiJTk7vRogcKff0hQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sOfUTBTCKKmxE0f7/wAaPJfwuR9p33b9ILXoxsff4TY=;
 b=cVolPY/BDVZuSSB3vOMS9qsdjfnxuE7TLDZnmSBvFOWJG6I14kmr+dokMnb7hcRBnIZlw1BWGPjR6fwJu0nnE79G/4yZLX/kogOkZJdMvwuJ8u584uEDFR95XJVWOB5fZL9YSsYLDdQo6qJI9XKONXeGHOn8Xge6KAYUlCpg1V2YHmovCdWPfAilQZ8QhS43B9nizuTXkcK7YVduGh/DVkUpsDuAGx1IDNRUHT0VXm6axHzEYhQk7wkUrYqNbiQXvH7XrVgZWSi5kVVRiN0+Yq2sXOhyoFyVzcQEy+NXzXGz1rav+myPhPPESbCpeUgyxr4bHtzsZONbqZybMad1pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN6PR11MB1857.namprd11.prod.outlook.com (2603:10b6:404:103::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Mon, 11 Jul
 2022 14:06:43 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.025; Mon, 11 Jul 2022
 14:06:43 +0000
Date: Mon, 11 Jul 2022 10:06:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YswubgtXmR8BL/Mi@intel.com>
References: <cover.1657522157.git.mchehab@kernel.org>
 <165752775394.5765.13401758688586115512@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <165752775394.5765.13401758688586115512@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0229.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 607ebc9f-31fa-4905-75c0-08da634694cf
X-MS-TrafficTypeDiagnostic: BN6PR11MB1857:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H4w1im3p7xmebZwtOCTRU6oUz5ITSFURjVfKDQkugAMoYcMhILEloBTSAktDrIp8Fi4Wo7rIODcBn1nqbbIgiVefwkjj2MZn+uDi6WZr4ILTOXAxLQvt/ew0paqBuBa+0V00N7/p93++WLY+ArE+i/6V7jEov+cZAN/khswVBFr8MWnYSIjqYRfoNQio2DpO2aJnOhgfhi5P8Ru+NaCRI7M+K04J3H9qzDUlptxvxFWCvQnPxCNlkl1kC1QiwbpNvCaE8kCTz5PVfjXiSxW1PBAXVGvQMbjIjKLU16aiFn2QB5ST3PLI2+eISUEZfErySFrV2cz6l7t/zRiJLb5trG0K8/uCyJcK3pDSZL+VBA1YfU1Vkc5JLKOyosiPeAHk4v3nljVJQCyKGFIAb8w8Vu9m1np36IzpDIOJM3Lio6APQYfpayFrXxhGOsfEW8B5hTd1RUbRh2exmd+hrYoxzktyOeqzFqKfxEoVE3c7NtzF5TktZmhcwlhK4EVsLGBBtPD9nslimHWsOO8+IUzqQ9xknzw/ES/4PumHf+B7sY2Rf/coU7EgUKNOs5cnYOGcypc45CpcGDe7WbtSC2zb4aIyT4SvgZogw1mbJBXCEgddkjJan5vXomwoRP+gd6PFa2gRTFKLIRrSru8LcoGU0iJIbgW3SXiNpDUivh6ARohsjIALoJvk3EhTR46AhxLyKveIAG2VSMbnKV1PKavn1ZfNjEl98ii1sWb1RbaNf//ZqapF1L/aqZ7p/Dpt7nu1AS8/TBdYnNhNKmq+59jKrV807Bk89I4SxKuZBsdbuzcpEjEakzHjkbx6giiidSa3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(376002)(39860400002)(366004)(396003)(6512007)(2906002)(41300700001)(6666004)(86362001)(36756003)(966005)(316002)(6916009)(478600001)(6506007)(26005)(82960400001)(6486002)(2616005)(38100700002)(8936002)(66556008)(5660300002)(4326008)(30864003)(66476007)(66946007)(44832011)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9B7zUz12g4Y7bs4ldrAvINn280xgx27ICETtbhf//r+MgZCEwuJnQUgNThYc?=
 =?us-ascii?Q?lpAzLOo5HKR//uEBK1XSgTdJDk8FEQvuBrPhPqSNrJw/TYj5P1SuMCxO+HxA?=
 =?us-ascii?Q?fdWAlY8iycwnHEUSYUTcPqQ4/UylNoPaNLSI/fi/VeCELfXvCiIi7eMahfPS?=
 =?us-ascii?Q?d2qQztyOt3V54qJwz6Jra9sxvogR2rX7OCMMInIiWXA8b7KSTbBKbMg6yCkC?=
 =?us-ascii?Q?I39U4XPDtHXYAxfYs73gnwdHQZQGorcsE8dpSsFRoBthPt9WMzTWYH4HrbQL?=
 =?us-ascii?Q?cFXioQrBegtoCAPZRqZldthdx7b3QV0KO/a5hNfFkNdDVaJgMH6G3NRYe2XH?=
 =?us-ascii?Q?vSeYCRN4pCZE250E2bh6AfF6o7ItSab7A9ZvEwVxjqeX+0wULMngUrSjQQtF?=
 =?us-ascii?Q?J1lMtTikPFPfzGqT972fVCqZjo0qXfUuA1zz8Ys56W/1nGPEu835UHwJmF35?=
 =?us-ascii?Q?VkXw9sIPt0eyEsVHMUfgJsyE7/RsTMelWBdavy1UKWFjci54WJ/v9EEl6481?=
 =?us-ascii?Q?MKSAvm5mMV54/B+nhvW3buThOXWpGVnF9RfxU9B9oZ6MOvfsG6ryFddJwBoq?=
 =?us-ascii?Q?gjm59EkMkWZpkBdAhzX/7LZf9SF70FWcBJ3eZkUFCaYGmtYMuZNcv4HxMLU7?=
 =?us-ascii?Q?VZzp4d4IofnE3ULonqxXNvfMcqAOv0EbgiJre+n5MSztH5b+ZO6kHneAtSaJ?=
 =?us-ascii?Q?k1B4CZbot+LxGi8uN0aj7CpPo3n8sV67XsoYm6n+itthbUMSL8hVfYlg3PKj?=
 =?us-ascii?Q?SuSj69G+3z6D7Kr5mPd+4V35/nFVCjVdC0IG2Q4+dcotDDv1Z2RZev+bOKD3?=
 =?us-ascii?Q?gcxCLNZdwJH2l9MRDET7lM2atwRNTLvp/4wZJbgzyPgtTzfbjma8+/HnjnxU?=
 =?us-ascii?Q?Ey/3AAxf9+Gq8h8CYEJEhCw/X2R7fTfMw420cAVhDtoUeiL+IFa4Bt9FVK0G?=
 =?us-ascii?Q?iPQGkxIwJkJWfMGga4YODtzVzb6bBsufm8RYYbSgC9RA1tJcupsDiNPDP6br?=
 =?us-ascii?Q?wNFXQefA+TfzTmm3ni7Pq2xlmTCuG4FWCztOAurASXvIEkan7NnnolrgOBoX?=
 =?us-ascii?Q?LVJL8nBddbH26FIOe+bCUIvoyIUe8ygbXXGsWS3bbmTYUr2az5nrHKCEN9po?=
 =?us-ascii?Q?95+RYlJWhxEwHkxbXUdAO9AFqA4R3lSMiwwmgHnwHxWui//eSeulzufdBwWM?=
 =?us-ascii?Q?RjLDQXalHM38lPotmyEOlbA6R+wbjUX5WndZkRgrLaqddtHV6d/D5c7qkf32?=
 =?us-ascii?Q?3J6haPBPRPuNwiGVFSOcLlJuC8Exf1nVgOT0lh7S8D1vx2Q5/Ra43SjpNteJ?=
 =?us-ascii?Q?4ee9cFhRbl/Za1ghNgDHJkYJbFNKsTBo+bl7QvR8Ev5yMEgKF+rXrrkGt0s9?=
 =?us-ascii?Q?VJ06KEPd/l/p96J/v40Y/7iCDJYV66kfVJ4COXNH8XD+Vkcj30jVu7KzP6fJ?=
 =?us-ascii?Q?oJwOdmyTGHHZ9j5EInhf/WlMYvT8PSFFal2t0SoDFeRSU5/7KD5AOGlahOeM?=
 =?us-ascii?Q?cNo9TvNU+k+/VHSp3S9uSrhicnIKO3uzpe0Od5q/FJLlG8Nrri/9ow80Eega?=
 =?us-ascii?Q?2VInnDxEuqoDuztcNrrh4Yxz3gFJ090+jwFyLTkb5M1E8eW6M7pZO4y5i3Uf?=
 =?us-ascii?Q?xQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 607ebc9f-31fa-4905-75c0-08da634694cf
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 14:06:43.1829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KVurHxrG/fJ7lrCtAXEw0tfPxhKfCM8vFZnjk1ZSpiQdAP+529KN2L5c9TUdrKQzJW9eHuGvMzGJXDK59bunKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1857
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_TLB_invalidate_issues_with_Broadwell_=28rev5=29?=
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 11, 2022 at 08:22:33AM -0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  Fix TLB invalidate issues with Broadwell (rev5)
>    URL:     [1]https://patchwork.freedesktop.org/series/105167/
>    State:   failure
>    Details:
>    [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/index.ht
>    ml
> 
>           CI Bug Log - changes from CI_DRM_11862 -> Patchwork_105167v5
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_105167v5 absolutely need
>    to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_105167v5, please notify your bug team to allow
>    them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
>    External URL:
>    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/index.html
> 
> Participating hosts (45 -> 42)
> 
>    Additional (2): bat-rpls-1 bat-dg1-5
>    Missing (5): fi-cml-u2 fi-hsw-4200u fi-icl-u2 fi-ctg-p8600 bat-jsl-3
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_105167v5:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@i915_selftest@live@gem:
>           + fi-elk-e7500: [3]PASS -> [4]DMESG-FAIL

I also believe this is a false positive...
triggered a retest...

hoping to get this series merged today...

> 
>     Suppressed
> 
>    The following results come from untrusted machines, tests, or statuses.
>    They do not affect the overall result.
>      * igt@i915_selftest@live@guc:
>           + {bat-rpls-1}: NOTRUN -> [5]DMESG-WARN
> 
> Known issues
> 
>    Here are the changes found in Patchwork_105167v5 that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@fbdev@nullptr:
>           + bat-dg1-5: NOTRUN -> [6]SKIP ([7]i915#2582) +4 similar issues
>      * igt@gem_mmap@basic:
>           + bat-dg1-5: NOTRUN -> [8]SKIP ([9]i915#4083)
>      * igt@gem_tiled_blits@basic:
>           + bat-dg1-5: NOTRUN -> [10]SKIP ([11]i915#4077) +2 similar
>             issues
>      * igt@gem_tiled_pread_basic:
>           + bat-dg1-5: NOTRUN -> [12]SKIP ([13]i915#4079) +1 similar issue
>      * igt@i915_pm_backlight@basic-brightness:
>           + bat-dg1-5: NOTRUN -> [14]SKIP ([15]i915#1155)
>      * igt@i915_suspend@basic-s2idle-without-i915:
>           + bat-dg1-5: NOTRUN -> [16]INCOMPLETE ([17]i915#6011)
>      * igt@kms_addfb_basic@basic-x-tiled-legacy:
>           + bat-dg1-5: NOTRUN -> [18]SKIP ([19]i915#4212) +7 similar
>             issues
>      * igt@kms_addfb_basic@basic-y-tiled-legacy:
>           + bat-dg1-5: NOTRUN -> [20]SKIP ([21]i915#4215)
>      * igt@kms_busy@basic:
>           + bat-dg1-5: NOTRUN -> [22]SKIP ([23]i915#1845 / [24]i915#4303)
>      * igt@kms_chamelium@common-hpd-after-suspend:
>           + fi-snb-2600: NOTRUN -> [25]SKIP ([26]fdo#109271 /
>             [27]fdo#111827)
>           + fi-rkl-11600: NOTRUN -> [28]SKIP ([29]fdo#111827)
>      * igt@kms_chamelium@dp-crc-fast:
>           + bat-dg1-5: NOTRUN -> [30]SKIP ([31]fdo#111827) +7 similar
>             issues
>      * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
>           + bat-adlp-4: [32]PASS -> [33]DMESG-WARN ([34]i915#3576) +1
>             similar issue
>      * igt@kms_force_connector_basic@force-load-detect:
>           + bat-dg1-5: NOTRUN -> [35]SKIP ([36]fdo#109285)
>      * igt@kms_pipe_crc_basic@nonblocking-crc:
>           + bat-dg1-5: NOTRUN -> [37]SKIP ([38]i915#4078) +13 similar
>             issues
>      * igt@kms_psr@primary_page_flip:
>           + bat-dg1-5: NOTRUN -> [39]SKIP ([40]i915#1072 / [41]i915#4078)
>             +3 similar issues
>      * igt@kms_setmode@basic-clone-single-crtc:
>           + bat-dg1-5: NOTRUN -> [42]SKIP ([43]i915#3555)
>      * igt@prime_vgem@basic-fence-flip:
>           + bat-dg1-5: NOTRUN -> [44]SKIP ([45]i915#1845 / [46]i915#3708)
>      * igt@prime_vgem@basic-fence-read:
>           + bat-dg1-5: NOTRUN -> [47]SKIP ([48]i915#3708) +2 similar
>             issues
>      * igt@prime_vgem@basic-gtt:
>           + bat-dg1-5: NOTRUN -> [49]SKIP ([50]i915#3708 / [51]i915#4077)
>             +1 similar issue
>      * igt@prime_vgem@basic-userptr:
>           + bat-dg1-5: NOTRUN -> [52]SKIP ([53]i915#3708 / [54]i915#4873)
>      * igt@runner@aborted:
>           + fi-elk-e7500: NOTRUN -> [55]FAIL ([56]fdo#109271 /
>             [57]i915#4312)
>           + bat-dg1-5: NOTRUN -> [58]FAIL ([59]i915#4312 / [60]i915#5257)
> 
>     Possible fixes
> 
>      * igt@i915_selftest@live@hangcheck:
>           + fi-snb-2600: [61]INCOMPLETE ([62]i915#3921) -> [63]PASS
>           + bat-dg1-6: [64]DMESG-FAIL ([65]i915#4494 / [66]i915#4957) ->
>             [67]PASS
>      * igt@i915_suspend@basic-s3-without-i915:
>           + fi-rkl-11600: [68]INCOMPLETE ([69]i915#5982) -> [70]PASS
>      * igt@vgem_basic@setversion:
>           + fi-kbl-soraka: [71]INCOMPLETE -> [72]PASS
> 
>    {name}: This element is suppressed. This means it is ignored when
>    computing
>    the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Build changes
> 
>      * Linux: CI_DRM_11862 -> Patchwork_105167v5
> 
>    CI-20190529: 20190529
>    CI_DRM_11862: ffee806d103b9604db7eb9cd689c098aca1ffa96 @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_6563: 7d43b49bf10788d4870668f93a800888fc8ab339 @
>    https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>    Patchwork_105167v5: ffee806d103b9604db7eb9cd689c098aca1ffa96 @
>    git://anongit.freedesktop.org/gfx-ci/linux
> 
>   Linux commits
> 
>    d83b60fff94b drm/i915/gt: Serialize TLB invalidates with GT resets
>    0d56aa1c1499 drm/i915/gt: Serialize GRDOM access between multiple
>    engine resets
> 
> References
> 
>    1. https://patchwork.freedesktop.org/series/105167/
>    2. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/index.html
>    3. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/fi-elk-e7500/igt@i915_selftest@live@gem.html
>    4. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/fi-elk-e7500/igt@i915_selftest@live@gem.html
>    5. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-rpls-1/igt@i915_selftest@live@guc.html
>    6. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@fbdev@nullptr.html
>    7. https://gitlab.freedesktop.org/drm/intel/issues/2582
>    8. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@gem_mmap@basic.html
>    9. https://gitlab.freedesktop.org/drm/intel/issues/4083
>   10. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@gem_tiled_blits@basic.html
>   11. https://gitlab.freedesktop.org/drm/intel/issues/4077
>   12. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@gem_tiled_pread_basic.html
>   13. https://gitlab.freedesktop.org/drm/intel/issues/4079
>   14. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html
>   15. https://gitlab.freedesktop.org/drm/intel/issues/1155
>   16. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@i915_suspend@basic-s2idle-without-i915.html
>   17. https://gitlab.freedesktop.org/drm/intel/issues/6011
>   18. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html
>   19. https://gitlab.freedesktop.org/drm/intel/issues/4212
>   20. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>   21. https://gitlab.freedesktop.org/drm/intel/issues/4215
>   22. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@kms_busy@basic.html
>   23. https://gitlab.freedesktop.org/drm/intel/issues/1845
>   24. https://gitlab.freedesktop.org/drm/intel/issues/4303
>   25. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html
>   26. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   27. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   28. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html
>   29. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   30. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html
>   31. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   32. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
>   33. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
>   34. https://gitlab.freedesktop.org/drm/intel/issues/3576
>   35. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html
>   36. https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   37. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@kms_pipe_crc_basic@nonblocking-crc.html
>   38. https://gitlab.freedesktop.org/drm/intel/issues/4078
>   39. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@kms_psr@primary_page_flip.html
>   40. https://gitlab.freedesktop.org/drm/intel/issues/1072
>   41. https://gitlab.freedesktop.org/drm/intel/issues/4078
>   42. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html
>   43. https://gitlab.freedesktop.org/drm/intel/issues/3555
>   44. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@prime_vgem@basic-fence-flip.html
>   45. https://gitlab.freedesktop.org/drm/intel/issues/1845
>   46. https://gitlab.freedesktop.org/drm/intel/issues/3708
>   47. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@prime_vgem@basic-fence-read.html
>   48. https://gitlab.freedesktop.org/drm/intel/issues/3708
>   49. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@prime_vgem@basic-gtt.html
>   50. https://gitlab.freedesktop.org/drm/intel/issues/3708
>   51. https://gitlab.freedesktop.org/drm/intel/issues/4077
>   52. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@prime_vgem@basic-userptr.html
>   53. https://gitlab.freedesktop.org/drm/intel/issues/3708
>   54. https://gitlab.freedesktop.org/drm/intel/issues/4873
>   55. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/fi-elk-e7500/igt@runner@aborted.html
>   56. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   57. https://gitlab.freedesktop.org/drm/intel/issues/4312
>   58. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-5/igt@runner@aborted.html
>   59. https://gitlab.freedesktop.org/drm/intel/issues/4312
>   60. https://gitlab.freedesktop.org/drm/intel/issues/5257
>   61. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
>   62. https://gitlab.freedesktop.org/drm/intel/issues/3921
>   63. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
>   64. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
>   65. https://gitlab.freedesktop.org/drm/intel/issues/4494
>   66. https://gitlab.freedesktop.org/drm/intel/issues/4957
>   67. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
>   68. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
>   69. https://gitlab.freedesktop.org/drm/intel/issues/5982
>   70. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
>   71. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11862/fi-kbl-soraka/igt@vgem_basic@setversion.html
>   72. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/fi-kbl-soraka/igt@vgem_basic@setversion.html
