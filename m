Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE0056BBAA
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:29:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B820010E3C6;
	Fri,  8 Jul 2022 14:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8744910E28C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 14:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657290594; x=1688826594;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rO71jM2IqOmARVrJRbTO33x0kjGNFxJaY6LkWKolfvY=;
 b=muPtvZuqOWhZRA4iJ4EXJx5yzQNFRz5fdU+1a0BcuJ4WYIrBL70nYc3N
 qB3gorqSIlz0Ge09ZD+OpvPqreUhFMMTZV0/mZ/Zwof7pC8XOqj1nCx4Y
 i5Gmz2sUXJ+IM7rOJPMsBNj8qnfCvRym86d92+5EimlY9DJ3u56V2BUyj
 UigCGF5kBy9aARKoxfp5JcM/zBWMsZmZjbV6cBxV4Sd4HTFfqDRikJgdo
 JvyRYLihBJ9PAadg1jvvTFkYZKpqP5fSWjyau8oLCuSsAiLnoEfZSCpVs
 V1dJ/oOsDWCPxOOPOTGralMoaCPJjQG3ciXKuJppSXPSH5mBNECyyNrCf A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="267322915"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="267322915"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:29:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="651584150"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2022 07:29:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 07:29:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Jul 2022 07:29:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Jul 2022 07:29:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CF1iexHPdfVetbYFdxbSUiJFaUKqTcLpNuo+VK1/GDqy7J0uHxGJ6LWov/HrGUu2iP6cJTDxGLZ1+xpzjfpbvRv71wfPBE3zsuwaGL1kFSUBTDzziM1eKumLxfODfgcO8Z7bfzPoqAVQQDJDAauTyB8pMt8f+FqAJSnC69ivXPCLf4rnGSwmNlRFmPpuyHd6l2tIObxmWwalkUaVlvnwiX1fYc7uKc3ZCPC6Rb9WbAczS3AcCLRILTJBCE+XQHbvTTERWrIZnsNqPvf9Hh2Pjn/bLfFLnB/2jXyfc2L1ZVlmICBPW8ONj7hlOgNpxt54jDcM5javGacbYxcO6GOPWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c//7X6x86+OZeuYsOQyRf3OlySlQp35tIj5bZYntPVQ=;
 b=Twi5If9f/RXUCFEjK+5vLvqkYPQI8atLJt8DtPY5M+zxBfsrbLBNULwKK7TQWB3woGSC8i9aBIIxzw43gS2ECTsIeftTK3BgH2FVFrWpCsdClxZtZZXzQZCpwOH7RIiChJoD8INuy23UGuZ2qEWQUQF4jhusKN8Fh0fbDhjKuyWuANv127UQG4KTRNFFUY/rUK9DPQGxKl6r1tJgG3jP4zyXy9iIE8g+GH9zFunKRXrVzDmlvvj1sNU5xCr9/pyF2AZ1OjhHxJyfaVC1bvGnuGpROzHma9lMm9ZnQKLrPywaBo0zZWuo4xBEg6wPaWJfdWA09xkMJWn2Bvit3vrinw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5532.namprd11.prod.outlook.com (2603:10b6:408:105::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Fri, 8 Jul
 2022 14:29:49 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.020; Fri, 8 Jul 2022
 14:29:49 +0000
Date: Fri, 8 Jul 2022 10:29:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Ysg/Vm0fFP7FRTGO@intel.com>
References: <cover.1656921701.git.mchehab@kernel.org>
 <165720527748.2212.6401442843277981281@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <165720527748.2212.6401442843277981281@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0218.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::13) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce5f6363-28a8-4305-b12d-08da60ee4e9b
X-MS-TrafficTypeDiagnostic: BN9PR11MB5532:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Twi2w7KhOZbA6FbpJwArO5Qum7UwVMtFpbIxJ26ZHQNmmvfQhtCoqVvhJOGqSJS/GsBGnRLG6adDEZnJL6Ym9lGzncVUbL97HUscziy5YWpUqI1yJ4OZbSbftu5xtEGsvK220OhNp9aSqi2RaOkuiFEen1SX2gMCh3PljO3yNLJRrFkPa6D/bQXnb7P5gffs2AXuqXQuLRW4JE1q7ZKIkW3WxhFG1oPkFSoKtARRDgyp6ef+Gv97ux+hi8reotEaEqCj0qKExhw1Z8418uZFHPE40GgAu5NxOOU+Bbs7Rq6202FN87boA59DtkTxOMGFS9pguPzZLZ+cP6bo2Iabl+fUGKHnZi7+ttmmc4ZqLNfN2EcnM9AZz3ZneFN1LMvLNMwlGeKAtRBIVop7nns1quwK/p04gQ8vnYSc8AlvaXc+v2dJCJ/YAlDobirQ5GcS38DO7VAk/b7L+cx2vvNdkGzaD+5DFWzT4wsllm8oZ6MtVgF2PqDWC3QPWx1QtPm3mG3Dpz3eo+C6pBxApeMwBJ6KZmoQX7fsmZORPbUobsmfkr/1QjCP05qjWSXn8ylWEK9SuDqUIjHINEa6b5wrGpaA1tGG10EUlix3jIGiX/6iOtJ/phoDEP1/Ic1S3BPf6jGYSNRZm9kleXNChid1N+X6thKhJuY2aVBV9CCkYffWhcmEjKgiZ4ksvQYtdwT5c5MU8t8fMAhjNdRfi4yWBw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(136003)(39860400002)(376002)(346002)(86362001)(6506007)(38100700002)(41300700001)(6666004)(82960400001)(2906002)(4326008)(44832011)(2616005)(186003)(83380400001)(26005)(66476007)(66556008)(66946007)(478600001)(316002)(4744005)(6512007)(966005)(36756003)(8936002)(6486002)(5660300002)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GBSUoS0C5QXvdkjcULLqOb8M3mUtk4kDfAFxo0Kv7D991hHZniW0BsSr05vN?=
 =?us-ascii?Q?M4F1vuoO9UpjuME9PnKkOBGOS6o2q+l+IvjDTYvsflM+grr7/k//YNj7S3+S?=
 =?us-ascii?Q?d4DHne+2vOLc7dzjtlw3S7flvOT/1OrxsW5f1NXUyfNHvIku0zPWqcVs/Yta?=
 =?us-ascii?Q?IuDpl+pRS0765w5NyEooc62ifFxBX5oN+GAW6AY292bV8/LxAkFG3BgqtHI2?=
 =?us-ascii?Q?AGSHFQcHloKuShxSl3E0poA627m6kmz5+VNNZyW/4k281gyJNjNZKEFARTT6?=
 =?us-ascii?Q?YN0yYev+9P4XYnvaSXBhtC2IKjZ6/d7Dr9yRV0/vTAFnw4fuKiw0DNoUl1dh?=
 =?us-ascii?Q?XRUnJZzbyyrOOMi8xWxNpzfsrQBq8fsrGWtefHu95YhnKKJod8SghmKfAbDH?=
 =?us-ascii?Q?gAyKFhk3h/pKAE1cTgEgdFkHa9kXEOm3/DwNLvO3xMgijPRD7So29T7XPQV9?=
 =?us-ascii?Q?lsuVjOxWb0pKQzf8H+Ctqo4A8sfqHUlVYGG3nUbNsvZ5KPQKcGEu3/ZS4Xbf?=
 =?us-ascii?Q?E2YC7NvKuCpy9mS+sY0h+jEWEx0FsJ6LS0E9YkUBQe0h6jpLKD8mvtn1R4OU?=
 =?us-ascii?Q?/1FTMmXCZaUnTNdZRtyKXwAV2Qlw+6pFaXyymqbiTuZ4yHh36UEgMadtQ2ep?=
 =?us-ascii?Q?8PeWDMeZERWw8P9tAd6v3i4lQvptAJMSh6WW5z1lDnIwD3pDA1ctlWGopNr1?=
 =?us-ascii?Q?oezbL5s0ZjkLnlPFTPHdfRdEhXNEwWppvyil5e2lJ9tJRSRPhOujgd7VDnOy?=
 =?us-ascii?Q?aMRkaFwQytPATiRXhKPawxXIdTE2J60ZSYQot1VVkPv7JXbiM8Dq/JQUqwBy?=
 =?us-ascii?Q?yihz32LMDkSGlNn+8PJLLOtfvMVC7anDhdbq9p8hb2eTFQTqACj+d9I1YBlE?=
 =?us-ascii?Q?QDjthZz7HeVNEYZ4U17I8JEYbXzQ1hH+bNF7i3oVZPZg/sjx5NB0MBiluuh8?=
 =?us-ascii?Q?gKjk36Rr5cI+ylsWShUlxy5oaAbc4wgnu1AZBpRQQhNipmEjAcetqwMGICaQ?=
 =?us-ascii?Q?GJwNER8noh0EkFGraVsMJ58kSO+7xGxOZK22XEMTxGjlZOzrAUGXadvFqzvv?=
 =?us-ascii?Q?Q89dAr1kMxAbLOoxuGHt3ffUzNnuM7L4KRtdjCQxHJteQ49gKDel1/E2KGYr?=
 =?us-ascii?Q?V1WjyPc+VVEz2MYolSkq3PDtk1Uc7z13MRYWq2KV3y+oVhU53mdgD4l5E9BT?=
 =?us-ascii?Q?K23PZJ5+fKEh9fmdc6ElpQ4sGpHWhbKpVGbvb+jVW2drZsJ+SqzwrTkhltoU?=
 =?us-ascii?Q?RGp3Fbi8gbLUD2oddO0iSXcxg7aQ1bL/WHFpaChR2tG45m38SO6EJ5JKwgBD?=
 =?us-ascii?Q?j+wN+5FOHyJPlrK62Q+49CrpzXYs780qbMe8wAakBhnBEHSCvY9a+ti1Zs0l?=
 =?us-ascii?Q?6ShrbU5/VbihNbRrm8mzWia9wG9Al5N0zOzcrwOzHNxv1SzfcHfUTE4ZDcal?=
 =?us-ascii?Q?qLmbvX30cAGqBcjgvUXqhohp/aVmEXxQ3SQg3mUaJdqH9PjZJMLt/d6rc87C?=
 =?us-ascii?Q?9PF4M9kmfLI+Vu1vi+f+4tfX3fe8JcmyaLkVBW7vfq0GXy42vo0Xs+up6led?=
 =?us-ascii?Q?RFPeFAsQmnEDtjOPh+ndhiF5MevAA9rAw0FrR+S9wANKM+oHlYCnqp2yrOmp?=
 =?us-ascii?Q?xA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5f6363-28a8-4305-b12d-08da60ee4e9b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 14:29:49.4294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HhdztNlzNPqG4Q16KRMaICKsgECigQUK/D8RyBrfMC7AXXVTb8eipd1PPWCmg/1dq2ddkZ2lpY+01C64/mlW0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5532
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Fix_TLB_invalidate_issues_with_Broadwell_=28rev4=29?=
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

On Thu, Jul 07, 2022 at 02:47:57PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Fix TLB invalidate issues with Broadwell (rev4)
> URL   : https://patchwork.freedesktop.org/series/105167/
> State : warning
> 
> == Summary ==
> 
> Error: dim sparse failed
> Sparse version: v0.6.2
> Fast mode used, each commit won't be checked separately.
> -
> +drivers/gpu/drm/i915/gt/intel_reset.c:1410:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block

I believe this is a false positive, but worth double checking...

> 
> 
