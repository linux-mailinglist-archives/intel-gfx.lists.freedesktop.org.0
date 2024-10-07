Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2CE9936C2
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 20:52:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA4710E40C;
	Mon,  7 Oct 2024 18:52:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CgUTjwUy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE79810E40A;
 Mon,  7 Oct 2024 18:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728327151; x=1759863151;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Kw+p+6hL+kQxw2XpX2b5d/A8kKflispmdXHIyCJVHzc=;
 b=CgUTjwUy/tBZS5UDvCv/kRg3iMpEIJaZEwt6JwPvf5i8DQ3UMtOmqXyz
 n7giceQb0BnHjernCc2aCrzK2Pn590MGGk2AnZUwvUk8ybCqS704htKGb
 lcVXmKZdp3H9QEazghJxMM21vT8NePR7aLQosakhznZ89BlXCcSdrbwsR
 lVLvohSssqMG6pP6odFVYabuzfK2QKMnMuwS4fNNYMkm2BNO/Pc3puueC
 s9ytIjJr7l/XJFwILfTDvCSSUn0aMLo9QPTQrXpbJhZKX752Z7NZ7jmtq
 v/60pptaa0fTsoS1iChcvS9GwINerAhXF2D5DiX2Yt6Kny/7mtR5YjOxi g==;
X-CSE-ConnectionGUID: xW/6/rQxS0SfDI4fQxaTxg==
X-CSE-MsgGUID: Xf4eegQmRS+uIi5oepih4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27617097"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27617097"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 11:52:31 -0700
X-CSE-ConnectionGUID: KpL15sdgR+aTzpiA/pzEGA==
X-CSE-MsgGUID: 2KiDDBooThuGGRufN2F/pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80395650"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 11:52:31 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 11:52:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 11:52:30 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 11:52:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 11:52:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 11:52:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vNrNsV6N8ftIwqxqQ6ydhJUm5VIrocDi10dHVNRWagxq/A4EO5j7NkugfSJUu1+9LZVQoLr3OfsGFxDMP5xyAZ0UgWxQn27N4PwkY+aldpwAfqr8EYJ1P0TDLbHo+66HMcg48SqaJkN7rj3TKF6H7dnpOgtjBWl8E3A/v6SBn//nCyZ/06pBr9/5kq0sX6bhyRRQ9urrQhfhMHYccJ2brt8PIgs6HCQf+sWug1D+2QGLfsqKc6HNKHHtdFe2tDnYgU3BJEt7ob/8xEp5enHuX/OW/kuGXRsqXqhjbxYsbLZHKVqutsL1o0k7GDJhWzQgi7LIT0xz4vJzxbIbkCjEaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LO3Twv4ozvsZpRAEdHHHhL/7ATqhxHRgE+8kD4TirnI=;
 b=OXZiUR0Qv3xQZteu+4Nhw3mI2NGJczPD3mX3JUSs4fNwnhsRpPAuPzaStbLuOYVarKYMIYCx3topMYTvYvi8wuY6u7epP3GDf+Tf4OeJvAxO3gaJ+Gd/AxZidzKrxwKNTWXoZ3CfvqghQh88ULOCbsMlNs2HbTe7WerM4G1iUAf+Fi+6HN+owTOJeWpxac7AsJj6+ZuBYVEa+zHhWF4X0IimBvBbq4PPeL9/iRFmIxuJO3gNEwoDgunaVVNXAy/3RCj1Bnc7uHdIKjMRsUgKtdqBfoyew2aiGAvKtso3BFpNjIbJHSdfR0HNvaD8oblCVAnUZmvhjObetEXoJgr7UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN2PR11MB4582.namprd11.prod.outlook.com (2603:10b6:208:265::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Mon, 7 Oct
 2024 18:52:26 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 18:52:26 +0000
Date: Mon, 7 Oct 2024 14:52:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during
 non-d3cold RPM resume
Message-ID: <ZwQt5t9iR9mYLsWR@intel.com>
References: <20241007140531.1044630-1-imre.deak@intel.com>
 <20241007140531.1044630-2-imre.deak@intel.com>
 <BL1PR11MB5445566CC674BD448027A065E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
 <ZwQsnaXxhGOPLO9T@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZwQsnaXxhGOPLO9T@ideak-desk.fi.intel.com>
X-ClientProxiedBy: MW4PR04CA0370.namprd04.prod.outlook.com
 (2603:10b6:303:81::15) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN2PR11MB4582:EE_
X-MS-Office365-Filtering-Correlation-Id: 078199c3-58b7-4ad4-62b2-08dce7012fb2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xAjshzwH8S/uZ6mX+Iu5Ia4qXKdmwptAdlJHSIDNkNR4A7TTuvJY7EDGsXzH?=
 =?us-ascii?Q?H3j3ZXeCrwfzXhs+g8a0sL1z8hKdxetCO3hHB2iO7o+e+be23+5hbFu2v6dv?=
 =?us-ascii?Q?BFip3b77b/6/IbJ742u5yClHzqBIvOX3S/Ytg9Fi+thUPtyK++ckEkWnRsL2?=
 =?us-ascii?Q?rveuz+05lVwrhKI9VMhUUxhpxlqmd5DbZjY4Ud1cTShzELyTG47j1VineX08?=
 =?us-ascii?Q?KVFRwb1jaEqpWRHiWPN6w8LqPY138ZHB4MmoFAAhzj50k9yW+yXXlQg73qw5?=
 =?us-ascii?Q?N8Gak4D70ujVbd24VX9T8fHZ8L8CUaBku75Q+s1/uxXLlVz8w7uw3xvCQZbp?=
 =?us-ascii?Q?9Yf9M5yCcIcv43pxacI+g/bDIYHoAeOHaOE++m04+RBeXiBJIOlZQKo86L5V?=
 =?us-ascii?Q?lg5EZ1TtUzYDgjVU4s7A1q8BSwmUIiH8/zg+NCuQvaxPbWafDRlcpEUkM3J9?=
 =?us-ascii?Q?iq57Ce4Wu5h7aab60KsjmP3/vodZAfGzRUrFtXuqwu50BLkipf4r9I1Zu6Hl?=
 =?us-ascii?Q?gLVJs4bDrGmFt64IwZO0EUrEgZ2Qq9nj7C+qk8tZv+FBckG1z9gJD0Pmqq9a?=
 =?us-ascii?Q?K/hJNve94KYTrSzKtCVXJML51DXNgWf460Pdd9RW2CCcYzu5RujEJw6ITJBO?=
 =?us-ascii?Q?tNdNF832dJgugQWgLIoXi9uKcpk0hke0U6bOUuuVzHsHlNwfbYMKEZ6X3mPO?=
 =?us-ascii?Q?OWeVmfliq1yx+zLzL5vgfaoD4D4QA3CZmeh6uJgfN5cSQ95vRci2Ctkp9J4V?=
 =?us-ascii?Q?WNPUFifycfrnTdE4VDF377VTCbUWBT6Qw5D+OVRrUR5FilvjtfBd8xnzaPBj?=
 =?us-ascii?Q?bHaB5Phztio6Rh0U1FzqIEn/n8O43tm3LcLuHRZswNkIcuELwjd3elPuCZLs?=
 =?us-ascii?Q?CbX9rj/8LWZ84aQAK+66cC+9EQHKkSvONgOIIA6Dp672vpv7M0z0xXwjPo8A?=
 =?us-ascii?Q?k4rJpHbuqaRh4tDjRp3cuv5oWlSypSRZ3Q5wBMHxB/QR/yf4jbiMFhTiL+Bb?=
 =?us-ascii?Q?mOkWjgOvDKenRG3BraLb786mrmMUNo/+f5spZiaEX4orDQsCjqP2yK4k8n4F?=
 =?us-ascii?Q?aFjK1BRcBRLBWNnrAIGs6B78dKhZLzUAgQcPUSC74ybAwAXTenC01V3pnxjh?=
 =?us-ascii?Q?hzaZAfHoQa02L7Smls3cKo8mYkCKW5WqOcEi23gLGokjjvO+EvxJoAmCPXj4?=
 =?us-ascii?Q?XEoDurbESr5u55DUykn/97p4fRW+0kGmy4ozDbVlV5AUJVlsJV2rZoKH+IxV?=
 =?us-ascii?Q?nbXTGCsDlD32E7ivWUCsNtiFyXsjKFWUJlfPkRVTe7vmVbIy0v33faGkeyE+?=
 =?us-ascii?Q?gmM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ro5JHC1LHm9WOEdaUZ+8DKxZ6R0atXyznLGAGWDleXEJiKwdahXdvmP0FBaJ?=
 =?us-ascii?Q?u2do1aFkh8ZpahKZo782sb5QAe+GrCnvpnUz75qHG5v9q5hk6cG5r/cQwN6y?=
 =?us-ascii?Q?eQlfzLI8VQEnZJSnNXE/byk3QrBjcKvBh9ZLOtWLTeWDjxU0MkErEQ3Rdok5?=
 =?us-ascii?Q?i1pciALMKKOBLPVcU60NQ1NYGHzYj1iXDjuR7YLQEP94wVHX84i6c/Mpt8xJ?=
 =?us-ascii?Q?2Jz0+LwyCLr4MjRdJwAq4GfCp27+KQlwlpFxewKTWjXwVyPFjiyt82Lk5fcU?=
 =?us-ascii?Q?8NOjFp16C5hADnWtelSIk06K42XNH2MECKhZiB2jXk45yaOKznCemFElq8QK?=
 =?us-ascii?Q?nkvTG1lsfrwr91wp7tbf2lrVn8ZcxvtHOUnFvlARUQrRvK5oXvi3VHt38ymW?=
 =?us-ascii?Q?StXmHN++9ygnnocmszOj86XnXLP6EZch3Kad1ew2oD7msZGOJgnNDSwOCSGY?=
 =?us-ascii?Q?CJCuwyPsasqASjudaX81PVEP8bTSmobBFIMitJJSqKI3hQw4OStGInfiepi/?=
 =?us-ascii?Q?K1WXG4dIspcCJh1CffC1ethPzjI0yiYquLLpyY5V/kv0VUjeyTLHoEBGKhgK?=
 =?us-ascii?Q?H46Fyn3lmUOVEAvEmL2ycY25la6FVA0K4yGhoBeZTj4oYZppncYLtobrljEa?=
 =?us-ascii?Q?a04FJOWvTT7md4z7q87u6HMRIBhvZoud4zENk9amAsNypz6ZT9n4E7dPRaXy?=
 =?us-ascii?Q?NZgeZgioLr+4dHtfpPhVKJlcCFH2o37/zxovo/J42ochHI+DUwFDMBwmfrZ7?=
 =?us-ascii?Q?eexzWKQI1gC8L2af2mAi6lZHkJ+wYylPI9n6BgqnKqc6xq/M3qKB76Rsf9bV?=
 =?us-ascii?Q?S8sBl/wLnb3g+3VPbOnNo40+uLi5dpImDyou2vXjEZFss3hmqBat4b8JcFB8?=
 =?us-ascii?Q?LZrdQchC82cjD9N1QdeF9nClzGrks95Q2gycnjNikkRVsm7vQrsspc/S/sRe?=
 =?us-ascii?Q?DMSoXYnVeH7DM8wd2+/DogWzIWomn2gZbdt0yRG7KImJD4Eft9EiZ56xXFLi?=
 =?us-ascii?Q?P1BB4Ytvgt5gUzXz1n3VGxquiLg+FeHHhD4McHC6/O/FW+b+Zwjxrdd6pEva?=
 =?us-ascii?Q?YZ+iWkAglG+nTNJVdJepqg/7524oQs84ro91UBBijqUbbWao28Sh7j05ZqK3?=
 =?us-ascii?Q?GP3lmxM8QCEiC2sm/hxhWkkjXSFCnlJB5i1bijwYMjLJC8cz9ha9uGH/catr?=
 =?us-ascii?Q?mfT7C4Rhfa7SsfhfVmJB3IfxbH4Yhlvtld9S+zzyoFgIm2hFHtXg/GI7waGB?=
 =?us-ascii?Q?fgns0zjMh5f8EGKxMq0mnVV62cE4mF6tP7e09VlF9WgurgA7k/gvpJOm8J55?=
 =?us-ascii?Q?UrTT4dYQwTdO3rCyKseN+DPR7HWaTdvJ1qaBcPaRcGmGry//eZzWy++QbT+F?=
 =?us-ascii?Q?1gHHg6BIUn6kYCCSohrux5GLE0BezJsCOPV4KQAQnRfkDuJFuXFySU4Zrb5J?=
 =?us-ascii?Q?8FLRMEt7Tll5a43yq9CRQ/LVXDuo2nScPmyiF3E1FD9JLFWYtNT6ir5JLGXb?=
 =?us-ascii?Q?Y0im3iRstjwZK37O6H34bBS3Qo8j3/cOTh49TOC4NjxFExE+T6sbrFME+P9p?=
 =?us-ascii?Q?N8QD2ZREhacvf+DU8deNDwjT34QrrrtlkH3Y0yhH/mR9jHPKpH5tFrlpr9/G?=
 =?us-ascii?Q?Dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 078199c3-58b7-4ad4-62b2-08dce7012fb2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 18:52:26.3292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: us+lcTUhVK+icLJD8OE3xWD+NJbAA9sSVhaHRurxMhbKjPE5Py8+GgruVtj8QFwGt2qg2hKev5dyAP6uDct9eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4582
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

On Mon, Oct 07, 2024 at 09:46:53PM +0300, Imre Deak wrote:
> On Mon, Oct 07, 2024 at 09:29:46PM +0300, Cavitt, Jonathan wrote:
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Imre Deak
> > Sent: Monday, October 7, 2024 7:06 AM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Subject: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during non-d3cold RPM resume
> > >
> > > Atm the display HPD interrupts that got disabled during runtime
> > > suspend, are re-enabled only if d3cold is enabled. Fix things by
> > > also re-enabling the interrupts if d3cold is disabled.
> > >
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > 
> > Is there a reason this ended up as a separate patch?
> 
> On the principle of doing one thing in one patch: the first is
> refactoring, this one is a fix.

We do need this, but we need a lot more.

Please help on the review of the consolidation and the true split:
https://lore.kernel.org/intel-xe/20240924204222.246862-1-rodrigo.vivi@intel.com/T/#m482df5716f81e6f6a3b5f459f57f193a4292ab52

> 
> > Not blocking, just curious.
> > Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > -Jonathan Cavitt
> > 
> > > ---
> > >  drivers/gpu/drm/xe/display/xe_display.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > > index cb2449b7921ac..695c27ac6b0f8 100644
> > > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > > @@ -486,6 +486,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
> > >               return;
> > >       }
> > >
> > > +     intel_hpd_init(xe);
> > >       intel_hpd_poll_disable(xe);
> > >  }
> > >
> > > --
> > > 2.44.2
> > >
> > >
