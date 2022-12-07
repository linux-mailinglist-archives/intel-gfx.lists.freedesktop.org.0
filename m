Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 224E9645E37
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 16:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9E510E10F;
	Wed,  7 Dec 2022 15:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1BB510E10F
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 15:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670428721; x=1701964721;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=syYPn6whz/9VqkUwtgRX4mGi+llXXtCf7XyDJzibggA=;
 b=h5KlFiOyDRpgoke86CH/6Z4ZXYxbSkOyqWdSInOjXlDeeOUrMhyJM03s
 r3pNh4R2ilTYGKcPaqexHhZ3gIrLd+JVz/3xfz8UX5kRug5yhFev4S4K4
 M7Rb5qMQoMjOnB0K2HHQtJHk88sx7j5a8/UqiVZoxwLJ4CSee9m8ZUcqF
 3KlxjPn+IN+ChRDk6CIMBCVHEkX/L5oThp0trUmGEuGXWmO9xsPQOsKff
 A9C8xwWyPui88riQAntixE8TEnuBpLTB6IOI7z+Xt9jGIfrIhCoxy6Bub
 vkjiy6kesQYfmFdASMjqosN0hmPaym7n21kTSHOVpHTx8nqq12NYDDj/g A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="300343651"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="300343651"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 07:58:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="771147362"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="771147362"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 07 Dec 2022 07:58:33 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 07:58:33 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 07:58:32 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 07:58:32 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 07:58:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CChMkNe43cquvqrFYa/5ENvgYybk3mMcmrfqjckF6p1mYz86SPv9EZZGr350ys/ne5gQxABHq/Fd44FYHA8tZtn/gGDlY8QLlZNHJywVV6d+4/AhnxfXDjCLH0xKKJh/pXk3orApMnL6zK6E6xab39EVJWgaF6Z73oo+R9GomQe6H8MSygQJlaxp9lQGKjY8HtxK3Fg8bRj5BsnWJQBKAjAI4PKTQCn9O+ne+4FQjJ8NZEb2OVxzFia1rsmKHifL1pB0LPw7/Gr5SDw7KxPUR4yaHQl+Rm+i/KPwcRYKFxvvOUtnEIVro4gCEPn0u+k9w3w+Y3GcTKZsMobhsVrPTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KktwWZCzOAOrqfro86iKSOBPRFOR+t1MN9zwISuo/ZE=;
 b=GRgDOGxvWIW0CZbXzK2jGhj7KkusTh64IEnjXJlzFrqr1elVoN6Pv2FnN45K/sD7jB67jqwLsl4kxkPFBQUEycdnSGLHjzILjdVOVgjUibmOMFzhmhvZvQMKoUvmC+SpqqWgpX1x3S5sBK7TFeQkMvS5+0pUsoU6cxsCv5g3xkCIEpp+4nMbwtmRuYgvkBjZ20BCpTdOTTmU/yJcH6FhpJr8XMqhRXyYFHK0yoUiwMzsxrHt7JUpFrl/mTy/XsNjpCXlzoxdVwkV7k09VHXsSNCAaYP1NCJ6SBSBHlgPSSMMQ91n0WZfFFIEf2ZcttTcjKsQfHVPYOWfo4wtebVHnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5459.namprd11.prod.outlook.com (2603:10b6:610:d2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 15:58:30 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 15:58:30 +0000
Date: Wed, 7 Dec 2022 10:58:26 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <Y5C4Ioe+DJ10f6ft@intel.com>
References: <20221130022928.196982-1-rodrigo.vivi@intel.com>
 <1813a272-a6e1-9b96-1d47-92302860f5b7@linux.intel.com>
 <a52e97690775c651b08b0095319bcc244e939fc3.camel@intel.com>
 <4232b29f81ac80e41da78d79cbfc03d2790ae8d3.camel@crapouillou.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4232b29f81ac80e41da78d79cbfc03d2790ae8d3.camel@crapouillou.net>
X-ClientProxiedBy: BYAPR06CA0067.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::44) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB5459:EE_
X-MS-Office365-Filtering-Correlation-Id: 1536496a-0427-4ce8-a323-08dad86be26b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G/6Zjb6Gob2iYHXMEjgzdhRyRxch+p6bC9i+kSZBqD4RZr695NEfjnW7BCy1MOqoDiu4xHsvTuMOEK72Si6PIck+m2ou9nZ0U0/g3bbr1igLbH1rKubQpr88O1nCGwVGluQNcj23na83UPU9vzLGw8uZ5BgHn4ma4DdyU1DTIybCSh51HLSQ/BPV8mbfAzVTqLsL1Vdcw/G0zEOaaO0JmJZE9etCUOGpS8nAWGgriskFpKxXHHN0V/05mTqCbO8sXlwa7me1XkLqwUw8v5lRs1o/2uwWYAcAhl5PrxaaAtwhXG7uO4ZvoVDXK7zYqlYoR/oc3SA1AC8C6tt5s0piskrRWsmVlCn0ONNB2enNqpwL8AFpa3MRC9J1xwcSxVveqnphHusdyNfWiqRpgn5E31CiVfy3ht0lxKzO92nikaXK2pXZt1IDLepj/ny17jNZ8N1jHBA77Xv+vBCvMSrXOWa8Syh2Gn7lWXOdJe/1ZoJVMYTzulQ0l90DIRm3F34vATTqKBTX+aCV2OwdBBZ2I7vo4AvC744dR0oH1WblNhPQm7CQD8ptMq1xDT37BEY5f+jfVls4Pzqhe6akTDjvKqbExDUgtFEu4eh8ot9U3dAQtA+nkeznBSKQkc7dGvGZeBXLQEgbnWoAeYmagAsxNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(396003)(39860400002)(136003)(451199015)(36756003)(82960400001)(8936002)(86362001)(44832011)(41300700001)(4326008)(4001150100001)(66574015)(5660300002)(2906002)(83380400001)(66476007)(54906003)(966005)(6486002)(316002)(8676002)(66946007)(2616005)(6916009)(66556008)(38100700002)(186003)(478600001)(6666004)(6512007)(26005)(53546011)(6506007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?nHCIKoaTMXLhpxIw/Nm7E2v/4u5Wh5qNe7JsPB83BFC/Ppp30kh2FShPI/?=
 =?iso-8859-1?Q?jobQ+nxTzzvPtSpyWVg4uK4TqsoWwPo6UgNWguuKMYFYovw4faYRFj8RZR?=
 =?iso-8859-1?Q?SvSe0m4JymNIVYAOJia1btOhnpcC52nJpK/eG6N5ZY5mFS18Ir7bjILk+/?=
 =?iso-8859-1?Q?+mm57AhSFFzt0a95Er7GdxcJmkifOvdHIxCbKTppdy+jz9IJ8jwWm1V1nJ?=
 =?iso-8859-1?Q?VIq+jyZJD1RTlQv1HjVjUeLrvPkTT928KTqn4TT1p2DDP18f4Tz/73Mz1u?=
 =?iso-8859-1?Q?n7TD1GKGLO8W4ZAAg+WJniHz+a7vqBCuT89b7Fur+kafQiZAvZZrtwQns6?=
 =?iso-8859-1?Q?trZT8ctpXMPUBa0HkTmDtyR/qTxfYwDXEVDy+B4kcrF+4ULLSK8ckm+Qyp?=
 =?iso-8859-1?Q?44ZQjwQsfe2m2/kfKAe+IxyvAwk6rXkWXmimeYdptsI6GXrZ+F8ti4ry0W?=
 =?iso-8859-1?Q?bde7ciGpviKUjxvTDNU/nOkW6Q1xNqHe7199MLFUpHitzuaTHX0BbNIkbx?=
 =?iso-8859-1?Q?ZlkifUyIXwTcHJ+PFWQichgMHULyA3HXcaYjY2QXVHrARpjJqHWOJkOX5X?=
 =?iso-8859-1?Q?F0TB5x9QkEkv+hbeGpzFfogNFuecK3tLtLZ0bTA4NJC336+mUoPD1gCHZ9?=
 =?iso-8859-1?Q?7EVSFGbk5Uyptp18dzFtdD5NGRZ8nDINUufNgU8zRVUyatwvyoKyr8O80o?=
 =?iso-8859-1?Q?71quBNOyIYx+XYuFKOTqkRGjH/YTTaC4j6ykTS8s0KaAgKep48P5oXPgcY?=
 =?iso-8859-1?Q?xFMQnwZDoZNSLdHs9r1XOGGWsYj2PegqyMNTzxrUHzD/CP0CRqVnM7HRk8?=
 =?iso-8859-1?Q?W777G7I/eGeTu8plJ5qJBJS+s9jZzrWJsaZjYkEzWIiuUiySfE5a01oC8k?=
 =?iso-8859-1?Q?TLP33DFMdKH/3seN6NXeINxTYpyu58CphibwP0RLBk5cDtTroTDgEIJI3q?=
 =?iso-8859-1?Q?bxA3VnahPBds36CZhZI3itf2uIuxRKiKiipratBbzWXa5qZTeZXlEOMk3j?=
 =?iso-8859-1?Q?kp3OCWaxcYFsuF4pXCeQXcdBLFu83aGo9jcRU0rtOWzIhJO/BJvCmjFvD+?=
 =?iso-8859-1?Q?oQCobkVwELtn8fHJaJUp3yz3PJFNIPfvVi0sj5clII3BAdRVef0VW+dch7?=
 =?iso-8859-1?Q?cXHjEHZXyE6GkG0vsemtfflELrASrZTxEE5ewG+V/R2tl65OwIuahNnEYq?=
 =?iso-8859-1?Q?yas32rQEClEWoirtELu/0uK4xM23C8cbbGv7zJXx5WurGbsTT8kA1FgKLe?=
 =?iso-8859-1?Q?/lUIHUtrQ+9L0fcIVZB7fjEd5EU6BVQhf2PrCjuldCNCnXGPvHmxbxwKD1?=
 =?iso-8859-1?Q?6izct4T8Sij86H5nvPvwjuafeJEaDGdBp0S2jS5mrWVlQ5rhtCaSLceauW?=
 =?iso-8859-1?Q?S2Zg0AR2Hftugb9L/pgi1+G5WwKgq4skgPW+pW1hBCLHX8pN8HYjcs/CJb?=
 =?iso-8859-1?Q?XrSvJHubzLqtkMno/dDm+nwSf/RI+TbQhb049JKPQVVPXEnlwICFS1RjqP?=
 =?iso-8859-1?Q?dQw4Jtc22ohv1ETPIoTJ4aMYMW1vYXRe31n+4m5cUacAWZV0bElsR9FDRg?=
 =?iso-8859-1?Q?38gpyxf3xMBV15yzUVo/XocXrLW9BHM32/jUcI9vloIUtFl1hEPCf4nN4A?=
 =?iso-8859-1?Q?7rclhKTNNZ8HnYBINZc13ZzAp2iLGlFfCgmmnIZTkRFmcgVm2FEtza9Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1536496a-0427-4ce8-a323-08dad86be26b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 15:58:30.3007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /v0BTNxg3/NprpPPairpQ/wp4TIN5h0FnIcVK9LiP+bacNVO217tiwdOctq+9AkHs6eiouWxmGYfdNu8z25vbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5459
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove CONFIG_PM dependency from
 RC6.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 07, 2022 at 02:35:37PM +0000, Paul Cercueil wrote:
> Hi Rodrigo,
> 
> Le mercredi 30 novembre 2022 à 13:37 +0000, Vivi, Rodrigo a écrit :
> > On Wed, 2022-11-30 at 11:47 +0000, Tvrtko Ursulin wrote:
> > > 
> > > On 30/11/2022 02:29, Rodrigo Vivi wrote:
> > > > RC6 is a sleep state that doesn't depend on the cpu sleep,
> > > > or any of the APM or ACPI or anything related to the
> > > > CONFIG_PM.
> > > > 
> > > > A long time ago we have removed the module parameter
> > > > that allows the RC6 disablement. We want that feature enabled
> > > > everywhere. However, for some reason this CONFIG_PM was long
> > > > forgotten behind.
> > > > 
> > > > If we end up needing knobs to disable RC6 we should create
> > > > individual ones, rather than relying on this master one.
> > > 
> > > Digging in history shows 5ab3633d6907 ("drm/i915: make rc6 in sysfs
> > > functions conditional") and then it appears the issue could still
> > > be 
> > > present, since we still use power_group_name which is NULL when
> > > !CONFIG_PM.
> > 
> > oh, indeed!
> > So, we should probably go with Paul's proposal:
> > https://lists.freedesktop.org/archives/intel-gfx/2022-November/311569.html
> 
> Could you ack it then? Or is there something to change?

I had just added my rv-b to your patch there.
Also, feel free to use my acked-by to merge through drm-misc or any other
branch. We will catch this up later to our drm-intel branches with some backmerge.

Thanks for the clean up.

> 
> Cheers,
> -Paul
> 
> > > 
> > > $ ls -l /sys/class/drm/card0/power/
> > > total 0
> > > -rw-r--r-- 1 root root 4096 Nov 30 11:45 async
> > > -rw-r--r-- 1 root root 4096 Nov 30 11:45 autosuspend_delay_ms
> > > -rw-r--r-- 1 root root 4096 Nov 30 11:45 control
> > > -r--r--r-- 1 root root 4096 Nov 30 11:45 rc6_enable
> > > -r--r--r-- 1 root root 4096 Nov 30 11:45 rc6_residency_ms
> > > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_active_kids
> > > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_active_time
> > > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_enabled
> > > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_status
> > > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_suspended_time
> > > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_usage
> > > 
> > > Other than rc6 entries I guess come from somewhere else but I
> > > haven't
> > > looked from where exactly.
> > 
> > 
> > Ouch! Everything else here comes from the pci's pm_runtime.
> > Probably our bad decision was to add rc6 to it.
> > But we do need to stick to that.
> > 
> > 
> > > 
> > > Regards,
> > > 
> > > Tvrtko
> > > 
> > > > Cc: Paul Cercueil <paul@crapouillou.net>
> > > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > ---
> > > >   drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 6 ------
> > > >   1 file changed, 6 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > > > b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > > > index cf71305ad586..77327ede18ad 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > > > @@ -164,7 +164,6 @@ sysfs_gt_attribute_r_func(struct kobject
> > > > *kobj,
> > > > struct attribute *attr,
> > > >                                                                 
> > > > NULL);                 \
> > > >         INTEL_GT_ATTR_RO(_name)
> > > >   
> > > > -#ifdef CONFIG_PM
> > > >   static u32 get_residency(struct intel_gt *gt, enum
> > > > intel_rc6_res_type id)
> > > >   {
> > > >         intel_wakeref_t wakeref;
> > > > @@ -329,11 +328,6 @@ static void intel_sysfs_rc6_init(struct
> > > > intel_gt *gt, struct kobject *kobj)
> > > >                                  gt->info.id, ERR_PTR(ret));
> > > >         }
> > > >   }
> > > > -#else
> > > > -static void intel_sysfs_rc6_init(struct intel_gt *gt, struct
> > > > kobject *kobj)
> > > > -{
> > > > -}
> > > > -#endif /* CONFIG_PM */
> > > >   
> > > >   static u32 __act_freq_mhz_show(struct intel_gt *gt)
> > > >   {
> > 
> > 
> 
