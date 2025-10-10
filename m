Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4335BBCD1E9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 15:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C784010EC03;
	Fri, 10 Oct 2025 13:19:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OlfDT8e0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9628710E295
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 13:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760102373; x=1791638373;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nMoaq1FK14dxoBi5+5ZXTvWo6QHdH7ZXinwSrt33W9M=;
 b=OlfDT8e0SH0umxFsI2fsgl48MEiNQWi377IOlPD8GqD8kUd7c61tzq3z
 gXZCp6g99txo+ktok+frMk9rmeitYnmKqiQeUPQP2kKOOc4MtGy8sPuUx
 fxsE5TIcn0zmEpAIkFNebViM3NfiEzrmzVr8sNTvzdN1YmK3IwIBq8+gh
 ynJbSLGCqQ4FHOLnPW2etkS59ftTSdtE2QMhdJ/sJWcIK0oaT4zeTj6p/
 bpOM0tv3XOR8dgILeHutWyhs9RYWvyvqVx2pifPoBCgcFbnE5jzUDgNiu
 ShtbjW4mynxHCWeP6lsqha8evSTKF8mcsTcdl3YP4NmLLB/vmtyUQ4B5G Q==;
X-CSE-ConnectionGUID: SVByq+pNQJKH9MW7VJJsgw==
X-CSE-MsgGUID: qaRjqJcdQSq9GvgCvLV61Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="66176529"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="66176529"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:19:32 -0700
X-CSE-ConnectionGUID: AFyf69neS5+YsNn84rnJ9A==
X-CSE-MsgGUID: Y7JhKbieQZSqGa2QcOYjzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="180227658"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:19:32 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 06:19:31 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 06:19:31 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.5) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 06:19:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jj+htKxlLV2j3RHwIRnQ2zawKoBseDnGd3dzGT5YQ4sE7dfzJSUFXydQvQztdnTQZJkxz83GKWlR7d0CkY75/jD/LwwAN9xxFHja8BnGTrkMfZpgIebpUeQoNww8UHpNyXgz4KCyimPsMDhfKmTO6FwHz2SWMtHyoSlVR0ucU4nKwrIsigV687mnVFTWC50btv/2JS2m6Hmngr46jkM8vfmeaVHl8Kh5CRft4t7PigbrNSOqgp/C9U+BY7QPqzreoH5XpEsw8XPwslBfYV3tIsp4pdbnwlsqWKMKOmFgjnb9nwd1hUwki5ZhFuJIE6myowD4mqX5Vtj30B0viMwiPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KMeX9vtJv1WsBHq9Y8V9xGoCvT0MQjiVxbGHJBRxiVE=;
 b=k0z/82bSvWB3L7O4kt/BfZy4vIRg7eRH9WTHnOJ1yqAYZcX21BlwrI4DofE3wSWeCziWhzVOV8pC/AcOxK1E85FzqdE5PWJd7yrsqT4mOZqDiFEnGf8kaRO6jAmu03BITA3bf2utnRQBzXA401HEsYr7C6IvlxWsRaExKxoQn64USef/8peDnAj8muA41QA290RJdeuxu6fYP+p0wH+yyhZ2xSarsMtuCy0HksuP5ZCZbIKfNn+CJX40HfqMR46UadJfHuMgrRVDl06CndCVL8O+RK0rNKL1R4Pht7GbQI32xfkDAU8JVkyb1iw4rhX9Nw5+C5/lQoLHml95jXMDzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MN2PR11MB4678.namprd11.prod.outlook.com (2603:10b6:208:264::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Fri, 10 Oct
 2025 13:19:29 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9203.009; Fri, 10 Oct 2025
 13:19:28 +0000
Date: Fri, 10 Oct 2025 09:19:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <matthew.d.roper@intel.com>,
 <andi.shyti@kernel.org>
Subject: Re: [PATCH v3] drm/i915:move and rename reg_in_range_table
Message-ID: <aOkH3NsPp8B0dTUl@intel.com>
References: <20251009215210.41000-1-matthew.s.atwood@intel.com>
 <e3b2b78e9acc4012b6755b3e1991c64f6fe1ed13@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e3b2b78e9acc4012b6755b3e1991c64f6fe1ed13@intel.com>
X-ClientProxiedBy: SJ0PR03CA0110.namprd03.prod.outlook.com
 (2603:10b6:a03:333::25) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MN2PR11MB4678:EE_
X-MS-Office365-Filtering-Correlation-Id: fd491127-42cf-46cb-6d51-08de07ffa442
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rP9cPSjN1crOdh3B/74XNYU6QpOGq4fEz+/3tvyboXnUPU+5wuieH1cd5nyF?=
 =?us-ascii?Q?etrlYpfLhcprajULFyIbcYvXCllls1dsl69GdertdK9nu83Ay6XNUtaNh2Om?=
 =?us-ascii?Q?k5Y55FF26VN+QqP7LAUm/f6RXupq2XH9cXNy6vgbh+nqfK8+7HdAT9bczceq?=
 =?us-ascii?Q?Ms8CGeJKPLZ4W3K7ZSrLNuZinNZr3cOwa+bRVyB2bkTBSZGJMn454o5FGdg2?=
 =?us-ascii?Q?Y2IbmCFyhwnYovisjnse9UkpjQRC8GGiLlOJVdxElGMqvNkOCIN4gZv15VN5?=
 =?us-ascii?Q?mEQQ8wKgogwEz6rRZdT+3S+/bTpNbEXMvULJTXe6UTqcG0/Akzpsu+iYd5/j?=
 =?us-ascii?Q?ogBJCYalOXZbqOGQIjeOUNjZaCIm3eIggs/ZkX7zKIW38qlw40mXIjxXmtGc?=
 =?us-ascii?Q?GEyicylMUnp7MXqB/WFcKa3q7tz9R20x3LZO9ZUgdKjZPfPG/4Raf0yejoth?=
 =?us-ascii?Q?S9fzgMOWg9iCrrYfDNA+pnl+J2Y62yFcQUQtb+Dlb5pDKps8uAyX4zQCW0qC?=
 =?us-ascii?Q?KTbLYNCYbsf7QAauwMFWVv8KvnLD/Aj329kNv91yA51jbSSZKiDZ9q0HGnaq?=
 =?us-ascii?Q?9cMgReHiOdCTZjVdPqjz8jqE0ghabcKiMVVgvzwkWRAXDsKlJBD/x6z5hh1M?=
 =?us-ascii?Q?FQXKMgS48xtqCKWJyk3VvWNNwKVchQZw9U6KGASTdbYpzGhdgZOB82sdGRoy?=
 =?us-ascii?Q?oKz1Zq+YeMbEwyV0jJw3zIaeDnyyuDR+E7POyaoFJQDoNCglUd0OZCWz5FxA?=
 =?us-ascii?Q?tqDiXDGkY9L6dWuyXhd1U/+mB07EytobAkZIIX1Pxd+eKZSILYPmnMaEBfmr?=
 =?us-ascii?Q?Cx5TFUY+f3ZIxDbXJcklaq7gStGfg1s+kol8JHhLP1vwwAZoIt4tpkv3zQYT?=
 =?us-ascii?Q?MdC3nT59fcvaTQeC8tBInBf9gZ6wVljmnKSfhQYtn7jzLgWv2GJbFzY9EO4D?=
 =?us-ascii?Q?NPqThejfUlxWmPy59WH49gyMAQsFVqarAJqkCWl7H1MSUszqmGbyyYIiJSN+?=
 =?us-ascii?Q?2U8nf2jnPlky5o98vingGXCcqHrJ0Cp/cYdQKKBBJK+FV8HyGtqotn1/Blr0?=
 =?us-ascii?Q?/626OBu+7z5I0bw/BGy/1Ju+Eynb8epHUS5PA1OCaFzYdArgGREyFANQZjdt?=
 =?us-ascii?Q?Xwv+qfGt5qeIkjsDB4boNuo6A0pXpMsjihLx15N5jD5yMyZfBS8rSqER1EGI?=
 =?us-ascii?Q?CuIhsjYdRM3QrUBItA1qi98kL5YX9JI+jXhYJRqvFTOiCAaCblVB2GXWgD/F?=
 =?us-ascii?Q?e07UNZfqKeV8P0b83ufLxvh0rqe/aEEEHSDSKmNIXpIyPiRt1MnbGZwHYkDg?=
 =?us-ascii?Q?Fb6IxXkztwKHyd/0DcXwonJkww9RdvMcgO+wvqYnbgJwM1kBBqe1nYFlaMdh?=
 =?us-ascii?Q?+DhyoClvXE8VSs/HT2Xu7CRvdWeAOpcimIR7BwSc8G9NPo2lJF7/Uid7QeHQ?=
 =?us-ascii?Q?ZAD2iDc5BpvHTdCApIjnY0lIHVRDJS/9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?20QLrfkipeyZye5MQaKVYgnqZZOLS5x5jmm2Ius8T0FlLOdbDkTYDerT8nAc?=
 =?us-ascii?Q?G4zczFx6x9YT5ytYhbZ/Vfe9L5NYisCksgsH64MtTEK4hCy+Z9P8FQoVI1N4?=
 =?us-ascii?Q?prQ8QLiMzb2Olp0RT150FM2ruFjInpp9xni51UjEFfPj2ivxIGTTBq4lfIT6?=
 =?us-ascii?Q?xL4UsXmQrnuoJzASICD/MaJM5zRdLoTvIc7+XZpUMdsHBdZJJa7SYiJDsTiD?=
 =?us-ascii?Q?YRjB6OvbkDXW3atv6u6EeDHzt4VK2/DNbyVRGqghFltC02d2txhgY3lWUYTH?=
 =?us-ascii?Q?lQXZ+++tzzli/QJLvr8WybYPoCrHA1lVs4d1vRKj/Kzhr/YumU/WcHy3owVT?=
 =?us-ascii?Q?OlR2CU2x2d9mSOEIWz2z2Kvz1QZauy9oIRkreXoKRsmNbJaV58X/E1Z/rSFt?=
 =?us-ascii?Q?1Fb1jsCtQw5P5b7DM2P/9TmLAgP4LttKgW52wYkQfU/Jr7n0apPdLyqXrK+c?=
 =?us-ascii?Q?8GEsjQcAeSITMP+bi71QcqKJnMG3u77+zvBzGoxg292GOVj00jwbsYxVr+R6?=
 =?us-ascii?Q?I+YaUtdJRrvFd5FpzP9dw51o3ao7dnj8bBwuoq/8KExp+0eqZC2pu8q4R19T?=
 =?us-ascii?Q?mB+2hA7UEw3nDebws87FsM7JXJ0t+PXiT685lSQTPaxOIujzpcOJB8iG7DFx?=
 =?us-ascii?Q?9tPxxGjQmbjyzwipDX7MOe5PC/JBIm3GSc9+DsEjXzX+PwE7pMSMIa8lwy49?=
 =?us-ascii?Q?9T60Rv5219QsVl9qifU2PAsuhpPQEf9I0z1KF1AWlGFmYb7Y415sDdyPC2Q6?=
 =?us-ascii?Q?cjaw1sM3Uq+GogPZrjk/gKpWcVyh08ye3cePxpAi/IIwUxHbHusWRUrDi9op?=
 =?us-ascii?Q?7G4Z6CEWYonJnWQPkb1XvUt0WV1NlDGBEpUJpNmqRpGrBai9LvLMG2uba1zw?=
 =?us-ascii?Q?SVUJ7AD0MreHom+IsT2fvvYgv8+ubf6Vp3ERBTlEwAi1b+t+kCIjGUDD/OBx?=
 =?us-ascii?Q?YIM1pL1V4SOVj8HuIQqRvBU90dyCg5Ob9pxDfCj04ZBWzf8oUL5fCHGSh4Fn?=
 =?us-ascii?Q?HidSw0NwxQmrZ9DhKUMqApkdqCbSPv4XXGOoAVM9CfOgV7Ls6ym8bttOxbpH?=
 =?us-ascii?Q?xnkn2AKycRtCvB8vGS6xivfZ4ttQTiPad56qioUiRApmdPjJXcvgNA5WvW57?=
 =?us-ascii?Q?+4yUjlez9NRqtDsoJMPje8meCC2MONAnOYfrOmd8l7+xlQ8ig+HsbrUF09pQ?=
 =?us-ascii?Q?sRHUUdJQ0U7dtLHZLrNwycEVJXHFq0FAcg/TwDPj7A4DU/djrWOYmXPc1o6L?=
 =?us-ascii?Q?zgsIXQ6V2L9qZVRfAQOcgh2FODg0pZh3Ah0R6UKyc7lnBg6vJn5jMtHVMf+L?=
 =?us-ascii?Q?a/KEA+llZTMYvvW/QmzORgvpDsw65dCR5OY0H1hylgYERAsBDpr2aPHIvvuG?=
 =?us-ascii?Q?HB1qDl4zAjtSQiVF+P45AWROqoEaDKjZgjXzLuh6rQl8vcfSCGKYkcEX3Sq/?=
 =?us-ascii?Q?UZVX8FjX/CPgTih/KqF/RKh10yY3EAir2q9LzJwkvWxNSBwY+Wzi3ynjd2Ua?=
 =?us-ascii?Q?fd9ll50Yjeg/Sr5Zc/nFI6XPwuM4ZyQfpI6oZNuVsyXtdGQNKmfcxUyJjXRI?=
 =?us-ascii?Q?cLWEB/v7egKLKdiQaNM0d+D0f9eydZ4EjsCAMHLSJu4jfgfqIUn3TVwUkHDG?=
 =?us-ascii?Q?EA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd491127-42cf-46cb-6d51-08de07ffa442
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2025 13:19:28.8938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: np0GTWwYkOJrx0RdY6VcFu8FAz2D5gWqUeHjnFPoCLDoJNkTLyGFPDEfXUs7UamhM3GurIOj/I23XcPKjHDrPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4678
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

On Fri, Oct 10, 2025 at 12:55:02PM +0300, Jani Nikula wrote:
> On Thu, 09 Oct 2025, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > reg_in_range_table is a useful function that is used in multiple places,
> > and will be needed for WA_BB implementation later.
> >
> > Let's move this function and i915_range struct to its own file, as we are
> > trying to move away from i915_utils files.
> >
> > v2: move functions to their own file
> > v3: use correct naming convention
> 
> Okay, Message from the Department of Bikeshedding and Nitpicking.
> 
> There's really nothing mmio specific about the functionality being
> abstracted. You have a range represented by two u32's in a struct, and a
> function to check if another u32 is within that range.
> 
> The struct could just as well remain i915_range, the files could be
> i915_range.[ch], and the function could be, say,
> i915_range_table_contains(). IMO "mmio" makes it unnecessarily specific.

hmm, I'm really sorry about that... That is my bad. I'm so bad with naming.

I suggested mmio in the name because i915_range is way to generic.
The other extreme side.

Perhaps i915_addr_range ?

But I would be okay if the consensus is simply i915_range.

> 
> > +bool i915_mmio_range_table_contains(u32 addr, const struct i915_mmio_range *table)
> 
> Usually, the "context" parameter goes first. I get that this wasn't the
> case before, but I'd use the opportunity to swap these around.

I just had the same feeling while reading this patch again.
Specially because it phrases like table contain ... table first contain last...

Sorry for not noticing it before as well.

But I was on the fence on this one because it was already like that addr,range
and the other range infra that we consider also uses the style addr,range.

> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
