Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0B79EBE98
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 23:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BE2B10EA0A;
	Tue, 10 Dec 2024 22:55:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XTL/z5Ef";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F6510EA0A;
 Tue, 10 Dec 2024 22:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733871345; x=1765407345;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mqMVnzokLuRvHq0FXJpmEgIrEGK2FJm55Vow/JvraXw=;
 b=XTL/z5EfJQSxObKDtbb/GmhUGRezwjKZ4C3D9E5bQVB3+eAmmG1Xg513
 iuKZHVGhvBG48XOlQg1tm0okEizqkJH9icN4HlrKwm4Hkeve9Mq7fV/kN
 8wsu1Vu3iDPoZ7qnuqcFOVkNhW2TZ0aYH+c8gzYF6qolM2dDxe46e0sXA
 PU+qAUrn0V8iG4nPOOFxucPyJoHmIBCpiKUemHDCJIND9Qs0dDh5HpuhN
 tw5KYcjIy3Lk1pAnpu5RWzOCtRV4M+T5uEIZcF+b0qsRHxtTdtZzSueJV
 cjfvtpo8Q3D1A1rcnXWAlr6DyINoU4iryx/C04BAY0xxXTVajAm0BqWJJ w==;
X-CSE-ConnectionGUID: 7yJxzriaSfGcVjkNQmu5Zw==
X-CSE-MsgGUID: Lf3eKJdaQ1ySESH/5JHsKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38019013"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="38019013"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 14:55:44 -0800
X-CSE-ConnectionGUID: NCaNIMitRu6vv04XFsRNIA==
X-CSE-MsgGUID: yWRoIv1VTUK8Vqtz0f1bVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95625823"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2024 14:55:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Dec 2024 14:55:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Dec 2024 14:55:42 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Dec 2024 14:55:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oUbrwOt/sR+Fzz8dj7jeeTmCE+wssan3qGoKF9OCC5tWaL2SO00iu3AXdvJVILnRJHcJublWBIbv6rNx0kczQ9SdFaauzSnaPjVehVzuqH6doeDyum9sIHDYb9r6cTHgQ6FJN19wJjq8llRbH8zz8X03MjgXvOP5nnc172Z+fwT4j2A+0tmFbjxsIM5MXZHLHcOnZtwYYWGLSzxQkCSnT9pXpciXgYu4t5yaGbHCMlINHzkTAcqY87KL9iOWbbhTvrs27qKdYaVSvfqrB79QqN6QZjQDDB3p8XsFlAgerFkmQsGLne4YkWH3r0y8QsvBjdG5XmGEJYPlLaAzOaoP/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sleetKOog6TemNig8lkh5eELTWDWib1yhJawYQvN0oo=;
 b=L80PCqMwosYW3/M4rCZ1DtT/z73omZdhQBYKzStbY1T4hzha45179hUJvlwKqPbOxcHVax0r8XCzWId++TzuNiIIJWabYl6smMCKm4/yUgvXP0wqzvgNAlsVnMl18LRkw4OxSfgb3eyaGh9STcplY1jHA723pQ3zxsqNb6fliAqJq6oavBhOwDROPhiN6Z2kDstai7xXiGtlUGGKh4ekuhbQlU6UUubivccxQFicPKVQJ/NkpTmLQNmwYcPfyYT6XTLmComQooKzFCJAANjJPEfTJBeq7tF7LsLQdJGXTk12oBqZtqxTQwfQz1iXnBubKXDG9W8wi4ebDuVkw92cjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Tue, 10 Dec
 2024 22:55:39 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8207.014; Tue, 10 Dec 2024
 22:55:39 +0000
Date: Tue, 10 Dec 2024 17:55:35 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>, <jani.saarinen@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Subject: Re: [RFT] Revert "lockdep: Enable PROVE_RAW_LOCK_NESTING with
 PROVE_LOCKING."
Message-ID: <Z1jG53Hy0PZKdJG2@intel.com>
References: <20241209135602.2716023-1-luciano.coelho@intel.com>
 <djny2tqz7mck5omsadowtn7flnegizoxgmpymyyfr3gvw4x7vf@67pbgkqftwxf>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <djny2tqz7mck5omsadowtn7flnegizoxgmpymyyfr3gvw4x7vf@67pbgkqftwxf>
X-ClientProxiedBy: MW2PR16CA0016.namprd16.prod.outlook.com (2603:10b6:907::29)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB7420:EE_
X-MS-Office365-Filtering-Correlation-Id: e25a1c2a-abc1-449c-71ba-08dd196dc436
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jnRzUivuCLiIRnvKVL1oFslx0dPK2CAaBeQaJM1HTJObD+KLzqz3KxueFh/P?=
 =?us-ascii?Q?AZ9kntj3JSMzB9mdAfA9YWFdIgsEHnyqEfYlz02Q1wJ81LqKfV8UpJYv4Cbb?=
 =?us-ascii?Q?xF9Deh2L5RSWAkDoXT5kqKhfJj5ftLIOv0OpxiaoHZrnPFJXv2dslw+Q8Ofq?=
 =?us-ascii?Q?KHZfIKQU37fitgNR2OyDx2t87MubR//d/VXt0FSU60lOtj8GNufsNg16wg0g?=
 =?us-ascii?Q?XCjNY1DOEFBOxCjfu86VFVp/hgxUTcdYULElBgMo8FxEiwCoPBbhGxYkEX3D?=
 =?us-ascii?Q?wf0+Ato8/xj9KqfvdWunYPDbzVD2gbGih0psFNXxOvaVTqUNwDzti9LTPffE?=
 =?us-ascii?Q?hQzkTI3thrFrNaL84KfE1RZKNTSK7hnvmoy3jvZ04J0vfWnudlodqmkpEqSC?=
 =?us-ascii?Q?uJh6MGfPBC3WjtswuBNX+DkkDfvdhwOjJ7raJJFNag9QM1fxJ9UIjl+GU9eX?=
 =?us-ascii?Q?k3osXgcDMVpO5/0lRjPRVkKp6g6qQNx2BgkcSOid8w1FfYVcGx7dWpCZVek8?=
 =?us-ascii?Q?xvmCjFb7gZ7xQVSKGS1hj1ylgqix0FQiL0Xw+jPFAyK6LIOHGXTEvyaOhYqq?=
 =?us-ascii?Q?tBlQa+XWgczceXAR9Ce88DuAH37VSkuBualABFClB7/03HR56xpeDdJujkuW?=
 =?us-ascii?Q?AETgNy+To/6uC66ySKYn9YyOsbnAMFc4fkMUFOGldSxXRgr9tRUNJbNGk42G?=
 =?us-ascii?Q?yMWq1j7ZqX1pM443uIs3PV05ffQRogLhUi8uYcaAPW4j8XB9GpOhnk+msl2a?=
 =?us-ascii?Q?Q0iUQxgR/tjByVPUomeg5yJbxrqpdoJP4pSaWcCLBtSd1Sz/pESLwA/28pcD?=
 =?us-ascii?Q?WxyE3V2hE05WcCEh5b5At9SQatWWxOCuYuHqT8iP9cw+Qpxaw9SA++z5BwL9?=
 =?us-ascii?Q?VqNbuo5lT/MGuAbNQz54Fg+hNLF6Sfl2Z8BhsJv8HVSy3NGs2KICe5EhWwRQ?=
 =?us-ascii?Q?CppcyCNRWGtv2kOR3IFHWKvqpO9VmSovTx4hPLePf6qzAS62Kq1guCAvuxKe?=
 =?us-ascii?Q?uHDrlwkoegHKWaCdN5zafQTPgy6mG5L3cKM1SctcA0BOF+NyZPIc9rrSTuE4?=
 =?us-ascii?Q?/4/LeW9MremxeN3aZkFrJY1LYpsizSEbnfHmYnjW/x15KVQU9R09VkBgnktZ?=
 =?us-ascii?Q?/piCCs5+P3GGshYCvClMRbjAxPVUpqlI6CA1T/kRnzYXkb7kP8F1jtJYFx6i?=
 =?us-ascii?Q?0d0gwPdcNZsEpsPLjMaWr8w+OwkQ10uvEpzIM5aLWOHrq/GGn9H5GW4zbzsz?=
 =?us-ascii?Q?9m/1BNqEjQHMU9SNyKlpU65Guc3kbDn2/j1AVEMIWAuVTP3qi1diSQmH9qOa?=
 =?us-ascii?Q?1NranHU9cY86iLQYtzG97F2g0KndAoUuqXO6iPluyNVk4A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hyZEAYrnWvxxDG3jBcUYAkHCToLUNAS6A/iK/rTI1Wb9TT+uzmQXjr3ZtAOB?=
 =?us-ascii?Q?8WZBtjA+cKLJF54+XcbYWUqgnL2ctI0AB05a7GA6oo3sRCSaJyzkQFqm+eI/?=
 =?us-ascii?Q?VF192Cx51j5INsYd5v0Qy/DsBHXI+e3vmqGnrnIMM707W/uli4O7dKG/bmuZ?=
 =?us-ascii?Q?PrhAIMPFYzqUrsxcEPQnQab1Hk75rS3v35cCUr2RP/1Bq+t4Br/2kkJGVLKt?=
 =?us-ascii?Q?Xn8JKXq/xPSpxKIIoUrjLcfwlZe5XnqFJ5VAod7nDnbqyVT57+4bQBX8+JgY?=
 =?us-ascii?Q?hzukzh2CK9El/QQC2UHyHMDRst7AgUJ3CvMaTjfV8JOed88Oj8jhUZb2xqef?=
 =?us-ascii?Q?xxCfj/jlbGN8hHp54wo/w+Wiv59RW3shdO/YxrOMgHZoKJbPXSCO/F5/xMUz?=
 =?us-ascii?Q?WoalyCbE2FPiCXiTBPM70nGp0GLvcZJErG77T8EURllwuxMQsbjvEfla1Ih/?=
 =?us-ascii?Q?oja8D+oUIFcO8kHVUcdSYvg7QsDNBXfhxnTaJ/rxpDgbFF334KNSWKhhVOqN?=
 =?us-ascii?Q?D9rIPjquXlExaFw6SQDIf75OamLF7kW1J26kTwIcssptJ+jpYA9bZa3IBUCQ?=
 =?us-ascii?Q?Mcezg/k0h/iAAhDXCwMefqPxWyCvITp8gZ4tBeaCA2woMe1iCqSebCvXsaDs?=
 =?us-ascii?Q?JbtPJR34FUWPcwnl7R/QPLZhJQR7DqHShE9FSmQag6FJuEzX5waOPu8Y4LlY?=
 =?us-ascii?Q?iy17Wdn3r16EVnbaZ1PAQhxuRKqLAZ03ld1gQ/aNLF9KnlqUBcfS9J11K/2j?=
 =?us-ascii?Q?+AwTgxq+sgu6542jCmZahKXrQ7fCNpzX6JupDLffnuDkFnvHyiisyZ9m62vp?=
 =?us-ascii?Q?SbyZEQPAaEXfLy/Dr9SeR676D+pdpA0nujq/ibQjP3K+aFvfG+pVPtjItny5?=
 =?us-ascii?Q?LHpqbM0WGL0lH6/GiOT4DGRqahbhIyRuAKnRm82DRV2Kd08ttsU3xWHGqACi?=
 =?us-ascii?Q?4Ev+K6bUyUXaemucmquNc8/qV6ernOvYnpqOSFfxYFu7kHpd1NNxUxYTIV+c?=
 =?us-ascii?Q?QR+/EIRMdmaNSXm43j0O5txceuCPb+MGLS6ku5GMIXLMb3qky4oOv0hlzUQd?=
 =?us-ascii?Q?aFmv/0BkE9ywQsVe7HYDtR60tdMj0IV7YujJax2AMJVMJvkZHONkXL1i0H9/?=
 =?us-ascii?Q?ABaDUZv43u7CZQABR9NDp/pZnfPaQ9v2kHq4mmyv21tgfZO5MfXhy5xvdjIo?=
 =?us-ascii?Q?Sf/RmrVdNr0k9MlsDGcvDKVJqiakOp4elOWwA/mtM3pv19ujXsNzVOQuLuUG?=
 =?us-ascii?Q?P6A4XsBO/0X4JIumP4xKbS0/BHRWOBV0ufjvqsamWNmcU/p2KwcotoOC/NoB?=
 =?us-ascii?Q?Oo4sn3kIOdkZLx1cKmMliXvkFUyfL+JVFgEGD4pqrmXbfzpg3keSsB4vQQyU?=
 =?us-ascii?Q?GaPS6Gi3eRFoL3Yzj5upY3IA84R5TEef5C3IuINorsvYmBiYNZR+eih2uK0D?=
 =?us-ascii?Q?ryi6jo6qVxwScXDukhoQrze+wcBY0A2KxGgSdRyfjpJq26oS3XEv3vMGmwlH?=
 =?us-ascii?Q?kWU6U48jUXyh04khW6LosLhwN0D2Q1UqAR6YvhW742LBwnHJzoX/UkLHtJ4+?=
 =?us-ascii?Q?IqHQBBsNd4tcszAN5LqkLjNP20H1WTCH3KK+WQobvl9ucDwZ1UX7bJzlbrgg?=
 =?us-ascii?Q?og=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e25a1c2a-abc1-449c-71ba-08dd196dc436
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2024 22:55:39.4850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4F9oCK1GN4lltk0PWRmFB2RS0V6RLUZLKm5IbVB2rHb8l3A+4GE7ZM+uC2QMlsdHhJYv9ylHsoKWZ2qyB0+fYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7420
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

On Tue, Dec 10, 2024 at 09:00:13AM -0800, Lucas De Marchi wrote:
> On Mon, Dec 09, 2024 at 03:53:51PM +0200, Luca Coelho wrote:
> > This reverts commit 560af5dc839eef08a273908f390cfefefb82aa04.
> > 
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> > 
> > It seems that we have a few issues with this configuration in xe and
> > in i915.  Let's try to revert it to see if the problems we're seeing
> > go away.
> > 
> > Note, these are _real_ issues, but only if CONFIG_RT is enabled, so the actual issues need to be solved properly, but we can revert this change until then, to avoid regressions.
> 
> +Jani Nikula, +Rodrigo
> 
> I'm thinking about landing this in topic/core-for-CI.  It seems we have
> quite a few locks to revisit - we are taking spinlocks while holding
> raw_spinlocks and until now there's no warning about this bug.

could you point to one case? I don't see us using the raw_spinlocks...

> 
> It's a real problem only for PREEMPT_RT since otherwise there's
> no difference between the 2 lock types. However fixing this may involve
> quite a few changes: if we convert the lock to raw we may need to
> cascade the conversions to additional locks.  The ones I identified are:
> pmu->lock, which would also need to have uncore->lock converted, which
> would then probably cascade to quite a few others :-/. I'm not sure
> converting uncore->lock will actually be a good thing.

hmm raw_spinlocks for the lowlevel might not be a bad idea, but perhaps
we need to convert the other way around the upper levels?

> 
> I will keep digging.

Ack on getting this to topic/core-for-CI so we don't block our
CI while we investigate and fix this.

Thanks,
Rodrigo.

> 
> 
> Lucas De Marchi
> 
> 
> > 
> > 
> > lib/Kconfig.debug | 12 ++++++++++--
> > 1 file changed, 10 insertions(+), 2 deletions(-)
> > 
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index f3d723705879..de4ffe09323b 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -1397,14 +1397,22 @@ config PROVE_LOCKING
> > 	 For more details, see Documentation/locking/lockdep-design.rst.
> > 
> > config PROVE_RAW_LOCK_NESTING
> > -	bool
> > +	bool "Enable raw_spinlock - spinlock nesting checks"
> > 	depends on PROVE_LOCKING
> > -	default y
> > +	default n
> > 	help
> > 	 Enable the raw_spinlock vs. spinlock nesting checks which ensure
> > 	 that the lock nesting rules for PREEMPT_RT enabled kernels are
> > 	 not violated.
> > 
> > +	 NOTE: There are known nesting problems. So if you enable this
> > +	 option expect lockdep splats until these problems have been fully
> > +	 addressed which is work in progress. This config switch allows to
> > +	 identify and analyze these problems. It will be removed and the
> > +	 check permanently enabled once the main issues have been fixed.
> > +
> > +	 If unsure, select N.
> > +
> > config LOCK_STAT
> > 	bool "Lock usage statistics"
> > 	depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
> > -- 
> > 2.45.2
> > 
