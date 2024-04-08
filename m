Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD7A89CD39
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 23:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB6A112983;
	Mon,  8 Apr 2024 21:10:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WEXuhPB7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB97B112980;
 Mon,  8 Apr 2024 21:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712610653; x=1744146653;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Xc9fWbDRJszEGhYkIFBp3CYSb+P1ePN9X3Bsg4Bc0bc=;
 b=WEXuhPB7+iwiwjBBSjuOItqerpb37bcfLlAnN0kDlHJ5n9yAdotSjoV4
 5SPWmA8+uggZJXd6EH+AQZuQcg6udJKcbhGrrfwIT0/Dvdps3BizC8F4M
 lmkgOzk+YqA5xeUqe1Ez++XAxlcevkMRkXSJY84rJ4hwT5T1sMQxRsB2W
 9qRGfFOfCtAh43/+Vr3wKFm+tYRBOA/G0/2jW3T0KtLbaSWPyHIH9JZOm
 pTHCLBHcFn8TwdI/26JgQFpl+Q6UQhTp+FSkbmIMuGNPfNRiVbwr+1brh
 o69lpnDMP+7T/HAE93eFoiNhQh4Tk6iqCNyEf5lcUMLtyYkZo15WT58CG w==;
X-CSE-ConnectionGUID: fERW8cYRT0O/PX0Rn3Hj1w==
X-CSE-MsgGUID: 3Knyux+/S3yNZ99e6mpn5g==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="11746946"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="11746946"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 14:10:52 -0700
X-CSE-ConnectionGUID: lLcv6f2eTNmV0JCEFS5xkg==
X-CSE-MsgGUID: 7ukSAWgpTjKPapqLfDNaOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="19921336"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2024 14:10:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 14:10:51 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 14:10:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Apr 2024 14:10:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Apr 2024 14:10:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JtxiXKutd0IKoDkmd8VIQPRYDIiSKxC2Uy6CXzdcdYtCKI9pQxTki9wW/ras6AEEFPvz1PIxyQX5+XILrDsWniEQwM+KCApyVUOrgo5k1yDUoqDZKNJaAKLRoZzeJu08HxRSfvdiIkiqD/08b8akPqrsBIbX+RPEeNOsFvUGqTUWWfzeXKFpLUcn4T9TBZMeqNaTIYQKQBzizExetlN2gxvOps6UROOsaxx/rR03Sxst8VQRsODoFGLkOTm8S00GJLRhuYcCuASDJBxRF03H+31x9SfnlriL18waKabttV864+gqILw3IR5WthaZrCGBQYdGYtqWdfneVVPqKmx6AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xc9fWbDRJszEGhYkIFBp3CYSb+P1ePN9X3Bsg4Bc0bc=;
 b=gEehIpc0mCBCtMEasVck47H6cBoPCFKNELKOysSsFtTP/UBPVsHyjWGM22XsG/DigCBj/AnpfKR/lJPeCp+we4NeS/xpto4sMEChItn0eVJoWOfMPfnAHFqPfiNsQZV2VMmyTvwWE177N+uxH+YKc+WW/PVKAidx4CvI8eYPmLt9J4r19bu5bA2sxszxNhnPZI6ievSfMKB+cq3GPbeXjDGjzxPqwiuAzoBrYMl8+a0oTRm54gNc+caRKL03tDdaSflIGJ02elTzJxlKY84/TZZMt/bZZQXniy+onK5LCdTT4mtzS4B3nmlqhp1wH3xTMQ18edkBuorSTSbpxb8F+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB6862.namprd11.prod.outlook.com (2603:10b6:303:220::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 8 Apr
 2024 21:10:49 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 21:10:49 +0000
Date: Mon, 8 Apr 2024 16:10:46 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 0/8] drm/i915: drm_i915_private and xe_device cleanups
Message-ID: <umdjxcjjfmxpc52sai7d5ltgntcweilfd7e4n3pkvxvqhq23r4@5oaddgmh64mz>
References: <cover.1712599670.git.jani.nikula@intel.com>
 <877ch7a7qe.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <877ch7a7qe.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0164.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB6862:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0vXI42V46jekxCJCwQ9Iw3o7vPurnwjJ4tk5oPBhT2gixh/WynlZcvBSVgmusXxLbGxdbGTW+TTRrIBiQ29EWDZW5lJ6q2HfFfadsg03ErFuUeJBmR/VOhq5mCiZ/RtkTxV4KtuXmPgD7+XGVO3cgmUMF30k3Ib4n6nCJ2feHNpgcJZ8hRkj7XQVpX6HIJLtgNgiImfO/DHG4/kPn/Haive5Ww6NqOgHJ98olMGVwuAAIPtW89SJlUSYrJ8aoPHnBGR1x9X5NKs2mJtVqeZcjmM5SbQYpB1Vmvv3awsZ6CUzRo/OLnB8eC5alcvMDv3A/Ipeg9XTzNYpwQ5yXBh/+OrWKNq7DRPJZ5n1oIPklFol73Yabe3mQuhv8LJx5/MmT5my7QeajKHhyJ075AT/Sxpf87X6LUBa8VvZG/ptxZjl/QtUA1rR1GVp+JvWQ+40HFpKtHCXS/3q01nAA4SMvBnI+UMFLv6MyLQYFdCuZTxQm5g2vpOm80U2dW54xADUghb2oUaoc51M0mjmnjOK8hFEiatiZ5A3K1XPPD/iouHRYpxGqh6C/ORotXqqa2A1FhDD7P5XjSTgyEkGs9VnuYyqYoBfjBl2xflqu18RsdtoW3lTdhivr93ljI3J35dJDRr1WwW8o15JeVMYZFPG7zfK5tUC+mcRMw5JLsvtDWs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MvefFdvrKEjmUvexemYUM0Dq/WuBemNI8D5Czlq4yqQnkTNil3dqm5jRRImI?=
 =?us-ascii?Q?IrxNcU2fH7Q+vUjOxTkIsQ5x7L0t+LqVDMpjzTSlZ9U8S3icKXa4Zt8lG4f0?=
 =?us-ascii?Q?hHnDAI7V4TO9XIUJH7ytOvGwZCy+lZtUpEHNAgAwf/brUzuUIt6HQ3Au5Nao?=
 =?us-ascii?Q?z67x/rqMlwUFlfGa70bvrDrIMyYt1sx8wHc5YiMwXuHALzoqcw9hJaXJvHp5?=
 =?us-ascii?Q?s1Dp7f87ztQRWIf1ZDzBqQwMX75P98IveyzCQeq5D8/Hrz1WR+i23Vx1u+e6?=
 =?us-ascii?Q?1b7rbeWMATecVWdhGZuMzcos4Bdl4yPNCXVrl9t39Za+6bJV6DJpW9xsoUWj?=
 =?us-ascii?Q?9nAkfRRRebxr0oz9cSA+ZLebJFaM0/eGb63i+yu4I5IDZ6QPvAG2ViiKBh2a?=
 =?us-ascii?Q?siKwSy1OJ+r7nlPAiJWsoPK+ZDTa6CjTbIgAaLcE/N5rUtj552tmsnTtfF5D?=
 =?us-ascii?Q?Mzl8RWM2n++cJIEKOvGPwH65QKOIDPJd7bUocS6Az/AvJn1CR0zlAxVnQxxS?=
 =?us-ascii?Q?V5yaXePjwCmr1qu5I8zrsV7BHl8ZO6/10sDfR0p/LHjPutkRgu3Q5M7o+FvI?=
 =?us-ascii?Q?1YvHC8Qnpv4YyhActrVxChXTf6eUP95SvSWV0iUbR8DR39oD7R/Qp9jxSJr5?=
 =?us-ascii?Q?5PAFeP4EZ/HYkgM+SLTpoqFtvx2vDC52oOwKNNW+jC+a8igrmkRaL+M+rkzH?=
 =?us-ascii?Q?rJg+eJaiuPgDnF3dV7jCey7/8Ia9HRgE+rry3f0rpWRsaQXOlildWWvdGmxX?=
 =?us-ascii?Q?AJpju3Eknt5uwik5ub+xfDXYmFLBDpQ18p66S+N9rRVaNwawE1MpG0o4VHvG?=
 =?us-ascii?Q?tb6xN7BbtoCHrxSpNPS9tOBlAFWq+gTinhXfhVYSS5N5v8A7RqnO+Bfl1nqL?=
 =?us-ascii?Q?+kb8/OZULC0M9244DMWE5QRg5PD+0RFW5B3W+Is6MN57VxvTPggx+ijVXnzd?=
 =?us-ascii?Q?LnuafGcPUx07Bk4VpKS42blY90ARBt+4rPyaLiFyETFwGe4bdGkwuMG+133h?=
 =?us-ascii?Q?ilWZidOQIvmKMgahXHMphxflThMZqBwewacoDL2iNvAt0yHTN/ZlcMJINXTz?=
 =?us-ascii?Q?NCyCWbeYohwCHyFUkW0huddjZx3PGZVAMOzogLeDpP9C7qgY45BfQ+10KdL9?=
 =?us-ascii?Q?9bF9eAWaIUermQ8DT0tAa0wlZp0e3Zlt4zuzzN13xJi5dfQ+ZjRsKl6NiFkv?=
 =?us-ascii?Q?fEy926X6RcCWzJcaNuZ8vPKOi/PCJxh7ef+Jr6i5XNAqNPUt/8qzAYx08O9G?=
 =?us-ascii?Q?jUbchWTdV9NRrZDv/CXXqcWLHGVCXuW1JMBT5BuDV5cQ1CjoT89S4RB3rDCH?=
 =?us-ascii?Q?pjgSDL4WDZ1HrhVD2cCRDz3lxtgoOadx4umvMGZVtliyrxjxWbwH3ZyrxDMQ?=
 =?us-ascii?Q?wXaYGMuYhv5mGf6Jobq3K/iCG8W817ZUh8tFgkFqhH2t4DMf1KtGVohV1/Uk?=
 =?us-ascii?Q?/QNOBiFUjFeBhW6jjFu4tx+jpOAD76dtZxjAMjwT+DNj7aD3OZ8kSYfTPyqm?=
 =?us-ascii?Q?9ERaBIOQl3CihUmBcQ7CPbcJcag8Ts/ZMz79COZi3BV0K0a+AJMb0y4LLulu?=
 =?us-ascii?Q?mKTsjGI0z0ey7uMdCzRFCUFBFxaJ4Xj5aujD/EJmWUWm15myE1n2/KAlEQkP?=
 =?us-ascii?Q?8w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 011b6c06-7e11-4038-82ea-08dc58105d68
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2024 21:10:49.0601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CHUwGjB4KLD6/uyU6gSXHlFTBQ8iudHrkAG5TC+kbNepiFPx2u7L2HzqsMVoUlYJ91GDyuAi26+LxB/7zPn1t5xmB2cKK0SucatccQeEgdo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6862
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 09, 2024 at 12:02:17AM +0300, Jani Nikula wrote:
>On Mon, 08 Apr 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> Continue cleaning up the members from drm_i915_private and xe_device to
>> struct intel_display.
>
>Lucas, there's a bunch of xe changes included here, ack for merging via
>drm-intel-next?


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

I skimmed through the series and left just one comment. It may be very
well because I skimmed through it too fast though. I agree on merging
it through drm-intel-next.

Lucas De Marchi
