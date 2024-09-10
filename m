Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E27973AF2
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 17:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A147010E84D;
	Tue, 10 Sep 2024 15:05:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KnpVGvIQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6872A10E84B;
 Tue, 10 Sep 2024 15:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725980742; x=1757516742;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4fzVJYbCC3fNO0U57/00niplURJcn5pZkTAd46ZNwPU=;
 b=KnpVGvIQLmE9OzOPcqHBmzWKyEw/3pNUyYlB2wJMIfffn1dJgTLAMjyV
 8fExGZTHlzsJqzvnLAScdIJbRx/1O/HgPMcJBOv271EB/eN94rDtg0QNF
 PlsJTo8eSHNvEyIudari8vKkPuNQYTRTxSNdfSqr/j1BhQ+j7s/l+/6LH
 k4ISGZ2kO0zWKnuopFBSiNM9WCLYl4AkENmaCcrUW9A9pnDc5tz4/vSZy
 F8zdBPmyYfCaugB8MUO1bvVVfpeHXA8wGyliXY6ny71JhdHHhltHmf54X
 05YN2sHXRC9H0HJPAuJvon6gdHSozX2nMkIaYzb9TWp2sxHaOTkBFH+Na w==;
X-CSE-ConnectionGUID: Z0zzyYynQeKLaAPNxd7EcA==
X-CSE-MsgGUID: ewCeBfj9RDazo6l9xS4ZNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24234145"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24234145"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 08:05:34 -0700
X-CSE-ConnectionGUID: iqNQ124ZR0Ca9EQTTytEAQ==
X-CSE-MsgGUID: /uBMVO9oSai5WsdcTh3pXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67015180"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 08:05:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 08:05:28 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 08:05:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 08:05:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 08:04:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OuFClc9vRGZg6OmIIJLZoBIZLvz3/+n0GJ74DNhpC1a21kwDjfV8EeDHp8PHof0W9gQaq6qyC1RC1gwNAGjjyRGgAfWQudih3O8kRzgwuN8xno4TEHkmqdG82plg5uH4JgpM8G5PX1ypd8VEzUfZuQyyVCqWsq8WjLrR8WZgZr+5+xRevt0qjRbNt2mI/pkXJIfpMSlXQh4jC8bWumtRMzeWZUVmT7db0yNNKoKl2BDHAga0KrfJPMlbWOQC+ygQug7jJOHGGdsqVMqgA0u/BFcpGXUUTTPG6eXQjYjTr+50rYTEBNpfgwW+lwznbb9OKMzbKw116tfP0ANXkz0McA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hx+0GlLy5Ng5R2aGfhSCzgXsWq1wlNtSWrem0d0TAnc=;
 b=lpuzyn3j+CSZ7fGqr7+VaQo+rUjMPzdi4S5S0oSrenXPLiDB9bd2q6c0SjgZ3tRDIRCEi66dI0R6E8xJbVdJFZqa1to4mp758PuWSkAUQewpo+aYOreU1ZB0tya7mmLeQviLu/sACkuWGMFpFPmsagXnKwzfS3GlrAOjGGGx0BEa/lWK+InBjUu+/2Y7hpzxAPoyfMv8NoM7NJt3/+ega8XJouw45jlJVc3w8WKA6ZMN/4nwQBsU6rpjjM9Elwn204gTCRM0kIprSlHYKjcfCdU07UOkgbd+N9J/DstiXkcLXGzhQHv6PB8wPGf5A76FNu3//k2jF7olTSCfwi/DSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA1PR11MB7200.namprd11.prod.outlook.com (2603:10b6:208:42f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.25; Tue, 10 Sep
 2024 15:04:08 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 15:04:08 +0000
Date: Tue, 10 Sep 2024 10:04:00 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 0/8] drm/i915 & drm/xe: shared PCI ID macros
Message-ID: <khb6fldp4jzcckjdm6schcr2c3ma4ifty6tun63slaqi6wnsns@psqjsmndmbky>
References: <cover.1725297097.git.jani.nikula@intel.com>
 <bslcjve463mplypyr7logylpnkq3asfbalg2a43h3kl5cckefp@wzjcpnaw26ah>
 <87o755tcp8.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87o755tcp8.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0287.namprd04.prod.outlook.com
 (2603:10b6:303:89::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA1PR11MB7200:EE_
X-MS-Office365-Filtering-Correlation-Id: b9806aa9-f620-465c-ae4b-08dcd1a9d21e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ex8R6N7UHAtRIjLNAaHdX8yjz4lF7gMhRMXHDKJ0y2TiB4GnI+efvIHB7v7R?=
 =?us-ascii?Q?IuTPtRoJtvIanoN984GAhRcEIa9UUWo2JE3HtYKzSBDFajkvoWVxMLEzaxm9?=
 =?us-ascii?Q?nhypyqJ+KMTZN8h6tK5yqTQfBJ5e7ksSkK9iP0Lkpqf6BJDO5tJBneF9wPqq?=
 =?us-ascii?Q?6WLeJwAsIDEzIubBbfGZLA/1dggC0cq+JCKW9V59K9WJJRhWxejjl6PvBLkX?=
 =?us-ascii?Q?zkRd7ErtL0skauV1PjWx5l34V7O6VmjwjrJYC1RdPeBeupLz62ZY7MhG26iQ?=
 =?us-ascii?Q?sfRrwwETjdNi1PjkGQzLiDhDQSs7EEvWcPWJySAjPt0LTiyJXCr6j2Otfqb8?=
 =?us-ascii?Q?2JcLaw37v2rm58MyGzM5V5BjKx8JcCGbulTPXJ85DW5bhITTFFKT7u7pbUXV?=
 =?us-ascii?Q?Ib7I2HJTg/tk0bx6rfGjeQ/VpzGcoqwRmziBVuouUeo614041wcTE/oAdo8Q?=
 =?us-ascii?Q?nsjxntR3BToxlB3IAYXGGxGjt2/nqbUAo8JdlERrsMoQY0BF2131wCUXLaBD?=
 =?us-ascii?Q?JkU1SmImCFFHpKc0HwQnNP25z3Wdv8HTH+QI8a+jy23sIfv1hlTcmZaDGMXO?=
 =?us-ascii?Q?2GgPglgPYmK2Or/6xJsCIfP2DbxYCCm9TgbOTRPRPLptE0OENOVw018z35Ba?=
 =?us-ascii?Q?+0Z9MxrWj28HofNupWcd4z5EPPAnNVbfBl0zoCcLOBAxOqyCHued1ocLNXxx?=
 =?us-ascii?Q?mM8BDYUsBC6VrOdNTJIrE23BybNynhFPuWTCo5kGDEZdH4Kki31QTlszTlNr?=
 =?us-ascii?Q?jmV18UrmsYXkDJiQWZDo+X3qLOsy+ARwZOSZQL2rukRxfpYtlxRIvTl/lbL6?=
 =?us-ascii?Q?rmrexz8MTTLrTR4taLidGTsjRfKtkLoWlt1UBz4N7Gngeswda2EQYLRLvJ2/?=
 =?us-ascii?Q?4OJycQXiiE+BtNkP1XqDCLUikUxanUtyJIiD0sESJhI53UbUY9wXLKS0OiLl?=
 =?us-ascii?Q?X/roC/OkYvza2kLcF00ixhDwbYz1X44Nt5m6+DqnBb/1yy4hj2u2yz25omw2?=
 =?us-ascii?Q?uYrpEDe3vMcQQoUNcI9pfbVpMKuIcGXwk/3wVMuiL//fasZc1IIZRO0t4lWl?=
 =?us-ascii?Q?LPQHTWFPyVryzQTDbJTMpDpJ8NkesYpfIGmIpxAo8WTv8HNpZTJ/UC9lvSPt?=
 =?us-ascii?Q?91Sbqv29CPDx98YfrWzVci6rOjLmN7QPKf4Y/nsykg6mMyHPa7EjOOVytc3I?=
 =?us-ascii?Q?gXc4MEEFY6cNst7tuQZpzav9nKtKuto2+PcuFhPuGnU/H45JHWyb6Oxpsjc8?=
 =?us-ascii?Q?yEC561J2/4SjB6u990vVZORX0qGUAxtFcDx07qe149yxI0DhhJ+NQ4Bztgfn?=
 =?us-ascii?Q?lzLA7Q3K4soNn/Xf0x+n7w6kcgaWeVTvwL0L6RUzYmLVeGuP8qc4CwflTHuH?=
 =?us-ascii?Q?t1cDC0EwoLiyunJqJZAkI9fPJ3vSQBs3u/TVJbTa3tZJ/pWOZw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Lw4pPVV3H4VLvZ8QuxwvipJspDCqRfsPiYhU4SA/JTUnh6+Dh0rErWgAJuef?=
 =?us-ascii?Q?kXl2UcGwgvR6SkIUEFtGvPdI1WY6Dnni2ybaPXj8kIRRvcxdCZkgCdDMAEOq?=
 =?us-ascii?Q?p6JV5A4iiUt6bI9vseQtV998DP3Gvu+5z9BgyLfKx4lLc0r4TzhmsuiBGsSX?=
 =?us-ascii?Q?PE+Wp/tMQWaZ3by/MET5s+TKrrsQmIDf+MtQ4/t4In3OvNuKzLXWeuQJS9CU?=
 =?us-ascii?Q?cTK9DvGzextQBXN9wivn+tiYZrIorhjZRTDz+dGGbSh66VpB2HmIF6lYAn87?=
 =?us-ascii?Q?wNNWFW6hOGQCr+ySQ7tGL5WWgU6Pw5tT7ruuwaDPmMaN/Eg6gCEVLRLEhENM?=
 =?us-ascii?Q?MvVnEHeFEkeY5KBhStKbZH0Eji4BAV/sVjfxW08GinPqQ0hsfrvar/rf1UBt?=
 =?us-ascii?Q?oj1HWLRl5d06m4uhlDf7AXKLfcdAasNIMhKp6zlLsUs2NQwrB9jsN04j0bSQ?=
 =?us-ascii?Q?XQ3xYHryil5SqJ0ccWwD88s98vvkaDNE1qxd0nVkP/plq+MbPV+WK3Xj04Qr?=
 =?us-ascii?Q?MkFzNEG23aL/QFgbcrwGBPhXugLU6cRny6RwSa+GDkpbVmqSVtA6K/tnOmYz?=
 =?us-ascii?Q?ntbdzCPoi1YoMNm9uHu+0YJA9BEYy5FL4L+hSMsaW/jcqUHVOjbKUhNvLLtw?=
 =?us-ascii?Q?KqP9IyPkhKQ3dhWWL7NjPShdlWxNc47EbHzMzJ+qw6T85kRyobGs5mBLBiid?=
 =?us-ascii?Q?ReqCP14IWYRyFYcP4WHz1S+bR5ccykChzwBQYRW77DcNARqvc1HVw1irsOZI?=
 =?us-ascii?Q?Lkw2Wz9QTUkGOXiC6udU/3ZOTLCBn8+2UgQK+ZVxoTOfGpj3nQ3T84bknV+7?=
 =?us-ascii?Q?MPBYE77Fh4m3uU9gPFROaHSZqh6YgGxzgx1RSNfOCQWzH9yii3I8qvUQH0l7?=
 =?us-ascii?Q?iwxtU2bRywRTP9A/ze+9RkO8EgrXoo/geV9GSaaymLQ+a/6Dycb7iTc3Nx4N?=
 =?us-ascii?Q?QFsvJyelrGV/JSafFO3iOweXr9/lQN+QSlHnxlH7H8ziKzielTFHgwFKr3QA?=
 =?us-ascii?Q?euIoEXVfqbgcW4rIKC2nZTvMOS7I/8cIXAl3zKWOul57qBdcdUQZnSfk62Wr?=
 =?us-ascii?Q?77+MFgt9dYfUJLgjBZee+0P2t6RIynr/0CAadUJ3zE4FXcvEJSUe59o9qBpa?=
 =?us-ascii?Q?eJ0KHO84c4IlZwMxFHaGjN36S3Z8u53ILfvzzIHr3JPBYeXxLvAwfQHg3nux?=
 =?us-ascii?Q?onZBb5mUD0rb/lB8h8WiJO7Sj/IfxuQNHhg/+k7vchcNcP3bTl4BX1B50oKy?=
 =?us-ascii?Q?qMvAASlLOwsa1lz0/NXmcrwCuv/sySwL5AU6fYqr6nSZdGUKN+wnHeRyNHD0?=
 =?us-ascii?Q?wSNpnyvcmXkAC4b6i7u7BMAU/ZtDudku6eb9DhFxkldbnw7MJebpRfSf6F+s?=
 =?us-ascii?Q?ZUDsV3HOISycUCw7SeMjxgrVETEBP1YtHOj/W7a7soijxv4HIOtAmE90AGJA?=
 =?us-ascii?Q?5n1s8OmlVGAHTgj+prxPco64k4mc5NKzAn0opC1eUK2x9HeHlAv9qHYrInrm?=
 =?us-ascii?Q?iGVQKTMQ6+wKKQm4b5Iu1T0QHGec8jNVOUTxwG2ikxH30gVKWiw0SWqHUEe2?=
 =?us-ascii?Q?Hk5s7A44KNygqC5jcmUmFZOobE3qqxpTIhMlGMH5u9KnJStjIFoSpyvGqcck?=
 =?us-ascii?Q?bQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9806aa9-f620-465c-ae4b-08dcd1a9d21e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 15:04:08.7849 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tXTH5qRmxh3d8qUMaUCwGNMvztizbJPlSx78Hs6GQDMbW9qTSRdTDSZF5DtPzaAeko9e1RbD3cjFg/849WxISv3qQTfryWblM+IbpUrXDBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7200
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

On Tue, Sep 03, 2024 at 10:32:03AM GMT, Jani Nikula wrote:
>On Mon, 02 Sep 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Mon, Sep 02, 2024 at 08:13:59PM GMT, Jani Nikula wrote:
>>>There's considerable overlap in i915 and xe PCI ID macros, and (as can
>>>be seen in this series) they get updated out of sync. With i915 display
>>>continuing to use PCI IDs for platforms that i915 core does not support,
>>
>> humn.. but display is not using a separate device. It's rather the same
>> that we bind to the xe driver. Why does i915 need to know the PCI ID?
>
>Because display does its own device identification for display, for
>display needs, without depending on either xe or i915 passing along some
>data that has to be managed between all three.

I'd rather have the drivers pass to display what it needs rather than
having logic in 3 places for similar things.

>
>>>but xe does, the duplication will just increase. Just use a single file
>>>for all of them.
>>
>> I'd expect PCI IDs to stop being added in one header and start to be
>> added in another.
>
>Display could include xe_pciids.h too, and start using the XE_*_IDS()
>macros for LNL+, but still the intersection of PCI IDs from both i915
>and xe should match.

I will disagree and commit here, because leaving it in the current state
is even worse.

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>
>BR,
>Jani.
>
>
>-- 
>Jani Nikula, Intel
