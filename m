Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93761A05DD6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37AE510E8A6;
	Wed,  8 Jan 2025 14:01:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XxzFqamR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3352710E8A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 14:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736344871; x=1767880871;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Rs+RhUQn/nnQF7/ZD01pGg1q6DkFdmxcpkx21HVUy2A=;
 b=XxzFqamRyNnWdLsep4WTlb+/n7PDeBuDHrl9nI1XxqeUNUNoaEBA3U5x
 cOt+mXF/Hdz8Li1NH7yX61wR8LA/1zSHnUOSrqivDSimdtzevP9G2j8Cc
 wZqsXYmDkGOkp2NwbFlpz4LqklXuvFvA3aWtiGZEyg0MEEIqLBUXkjk1I
 8SFVsJRKe/QzZ4iI6w35sIHbFUeO2cEnnIV7uJwXZ43zAH/cfqv2rC42p
 zDyGSisnsIUVLwuJmrw0r/qqg2qP+jStbK6cweFgIki8LRh13OOOv1EbP
 nMUeWAcZzkTkelDkVD6vOtPpnrbDBfipqvSJr5cfk9DdrhYLQw+Too5Wn A==;
X-CSE-ConnectionGUID: tLEGQbH8SnKK0MatX2jDEQ==
X-CSE-MsgGUID: 87Vlmx25Q2Csdy3jbMgtrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40249320"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="40249320"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:01:10 -0800
X-CSE-ConnectionGUID: EmF8c6IQQHWJTi5UrqoTkQ==
X-CSE-MsgGUID: PhETQ0mkQhOpCw0owJ7LNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107721614"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 06:01:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 06:01:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 06:01:05 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 06:01:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lEYI40d4/V35Q4InltJskRIZbSSL8uvvWkSubG5srdkkARS0Cp0he+tn4BwFZPDrXmBRqAEEwLNrkRUMNoL4Pv2Mxb609oW55YnbdeCbPXB2T+KkutGYzEVHkemA4iFqXX74sxd8hetwP8LGlMrfGAJ3YJzq8sn6mrH2uzG/ljSU3JnSMRkZaYlhlG0D+s1qOzDaCy83ls6wFU5amhm07EQORq8UL5BquRNoOyH9LIB6zBrsv9FEQuImyDg0GP+g4PPHflPX6M7PbWSBJaCBGVPyiZHfjcqa3F2gOL3FcLewg3AFq7POllExub9LlKqpuJyG94njJ5cxwRQK6sxMPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rb7xiJkjoQSDcLQGyAwaNhSAurHMwOr/s4r5+YpJeNw=;
 b=nYshV7Jo8grREHMncEQgjVTZKld9ByktPXadp6FX5PzCikB9ob9Utr9Yr7A+UxyvYuo8lKnWpzLuSvZQyp4Pk7XGwCsi3EH0lx86PclQHsijbBII03A40kx+NjvbQ354gcUYGEl/2yd1u33erqPXoO9nZLvj2vLXYu7jX4bAjDpqdrYiRv9tkGMpu6DrNiyCQtVTgRvCZpGZI9+7NLhKRrNl5dUwJdX6UqX47IJXnhMHTyjS/cXb5lgcvODWMHTHHBj/u2w7UWKw+9GWXM3oPrLYbF8hDtjttYhzqBUXnVEE5VLWscT1REqN47p4JOkNrDSuofx80pB/LZtFA+bVDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by MN6PR11MB8171.namprd11.prod.outlook.com (2603:10b6:208:471::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Wed, 8 Jan
 2025 14:01:02 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 14:01:02 +0000
Date: Wed, 8 Jan 2025 09:00:59 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <apoorva.singh@intel.com>, Andi Shyti <andi.shyti@kernel.org>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/gt: Prevent uninitialized pointer reads
Message-ID: <Z36FG040IDskc3_1@intel.com>
References: <20241227112920.1547592-1-apoorva.singh@intel.com>
 <44nimknwum42txkpwoj6yavnfby2faz2nyapbr4k2i2up6y2jv@l76t4rtzknog>
 <65l3gngdry65oy2itvpvydorrmy54efoc3uxbhgvejcwapxz4g@ltqxje6r2snc>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <65l3gngdry65oy2itvpvydorrmy54efoc3uxbhgvejcwapxz4g@ltqxje6r2snc>
X-ClientProxiedBy: MW4PR04CA0057.namprd04.prod.outlook.com
 (2603:10b6:303:6a::32) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|MN6PR11MB8171:EE_
X-MS-Office365-Filtering-Correlation-Id: c385a9f6-968b-4cba-ad19-08dd2fece303
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OzTVJSsHujvOibKTP9hYWBqBKA1rlWPqMcTLgEki2W6UG4oe5L0u7ggQeQDG?=
 =?us-ascii?Q?1TOtdG6AY3oEYpEs3g5tvc4T5ruzO2wxBs+qn3s5RMTEIa9wOObW9sL/PU0f?=
 =?us-ascii?Q?gu2JT80jyvfv4z+LlWcRk19nmRa2DuBcX3o0VZrLo3NOlo50YKD19mSYfcgW?=
 =?us-ascii?Q?GW9zu9yf8+ROuDHycikq75AB30DV0yIXjXD1SPjTb6pNDt/C8m8wiMfYw9hr?=
 =?us-ascii?Q?guPEl6lk6l07mEH0NBOHj4l2Izzc3Ahy/iQrRsyWF26uROTMRZ0wdHPpOlp3?=
 =?us-ascii?Q?JdYA4NfDLQmWyKocEJz0/2qjoE06kmt6ShdyEk9C4C0ADqNzehg46cMOz281?=
 =?us-ascii?Q?qjR5F6ZZZIdncHfu+MAzpF75085u9nSuUxLF1Ugl70Ip+Aa8gZgDhBPkK+KE?=
 =?us-ascii?Q?Oov7NrT/9tS0Kk/Gx3tX2IqtfPpjIqhMlSEB8sYMjHgKx9qJEenXZvQkxtbE?=
 =?us-ascii?Q?61JAgYNy/gPIwsWw9G7KGsfnNTxUA5wSzc8OaSSDSo1BTY6CXSqFOUhnHGSK?=
 =?us-ascii?Q?J5tDqUHXzK39DPCVYJ5CslabsqmIY2ry3znqL3cshvEq2FMjJNSHnEnlQ6dw?=
 =?us-ascii?Q?Ep+/saH6oOvaehR+RXLfbf8xW7nemEYhyUsbkQrN10k8cgw6vaSnhR5TwnF8?=
 =?us-ascii?Q?EYq5Ywv0btKU8itP6p/ozO6UY+0OVAwc6+HhhH2/7f56xP6arX926tCvVHj7?=
 =?us-ascii?Q?5+jjo0/6xJ3u/OQoqWAgCzvmS45QN2lRzmrZP89F1TuMBlJ/1cYVCK4+I07P?=
 =?us-ascii?Q?NNugBt4E4ixI5mLjr9uC18ca6f3GjrDlDeBWpz9tZcaTzo6UlLjB7sudJPPN?=
 =?us-ascii?Q?EYZk22yuFaOaQJVR01/R0Ec3gH8t4YItSOeDsgr/A/Sp/ST1A/hmuHssFz3i?=
 =?us-ascii?Q?au9PKGp1r8CXPgDUcCQ/S7XG0kIxLeX/6lgRiVRycSsFfLB+p3etPkhb56up?=
 =?us-ascii?Q?/nbGbBqABY5gqV467r9tZj68UhqFKAa9mW89SlcD+9CGmydtoaeWp4AuiM00?=
 =?us-ascii?Q?iyeWkobzps1YNYs/+J+KGjkJWmNmBJ+DSzFHlNC8JVyVMeyD7MncGtNdVn7q?=
 =?us-ascii?Q?cKKUeMtuPAO7D3rZyTf1F7Ipy5UBF6VnnZ7u3WDgrWW7p4u4XhZCg85ke3zD?=
 =?us-ascii?Q?UjdERLNDu0zLqjWYPBTv89GVJQFKSeMCsgJDD/3Iavv+zc7H8LE/l6fwUf3M?=
 =?us-ascii?Q?Gltxvz1TO87sFyfGv/P1X+cJKzGBJAn2t/j1HeMoONe5V341Vc9Kfw7IcyhE?=
 =?us-ascii?Q?v5lTyH4n8R2jN2JI89yxJfCnspgcdeEKPHnR6NQ8dwxu9k0p68CtDL0WC3KY?=
 =?us-ascii?Q?TLEzWsWxKeH4qQSMi4oppzuuL037xCYTGAHR+H8Ttct2NKVcybz1SK9quqzX?=
 =?us-ascii?Q?En6P9/7al46GsUXwQYB/Vyj2j1kk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zpAaQ+ASdMC21kZsK3p9RnPab7fC37V21JY86TKzQQzrrX8MKJNt9DjEzEoO?=
 =?us-ascii?Q?2qZhxKqiwcTs8UsUGFseDj7uI/SJwgLaNkv56Z0nM9s6KBhHMy/+amPGQtmC?=
 =?us-ascii?Q?ezMixzI4p8M0tTFG5LU8SlZ6sIInoUo2i/4UlSvzU3l5OBx3a6jVEbjshn1O?=
 =?us-ascii?Q?vdCvsQZ2y9iFWOXPSm6qFwg6JxJesH4h4upiSQxWYCIB0FCGdNYzdYpKhrFY?=
 =?us-ascii?Q?/ZZWsIKKuECxOfissJsbNgZi7LX3SXCK9j7OzCJoEAuadzW9+p7KxsuKAbpz?=
 =?us-ascii?Q?MTaicvVsmhhhS5KtCRjFv20vcIy8KA/ZydrGhSH3ZCSV17KN3kmKihDUq5D/?=
 =?us-ascii?Q?XYpUbJ5CTO9BzPJvO0WF5n4Jn6milrhO+qcbKsLOCspDMYrEaxR8dZwyUDJI?=
 =?us-ascii?Q?sDycLDENlwLHwIx08y6viKS2IXX+Sd6DIzwa0KpWlMpG8Kh0jK6Yxa/MHqck?=
 =?us-ascii?Q?p5MDsM8UTRqSm67HyHGxra+JrEP1XR/DTgm42G4h9gsWywkfM6Q5MnwILMqv?=
 =?us-ascii?Q?3y4nRkPbkrrVje63O/rTp3Y4a13SBtHYkgNAWVyk7pQk77+I+bZDGCGcETdS?=
 =?us-ascii?Q?V1uGyLvhRy0ehyZSzMgWYMpMJ3BPueVx4u+zy4s23/pC+2vfWWpjEn7JLQAK?=
 =?us-ascii?Q?0tI78ethnQN58qbj3c1qGrOqKL4lk03b8GY28P/NY0Z1ynT4w4VXGI+hRpX6?=
 =?us-ascii?Q?3EclmAcBDPLzZmp60UNlLAEAQHZsY7ZbLPikYkeh1YyDfZTUcSWvlrBlcwKV?=
 =?us-ascii?Q?5xgk5MNwcZxEzo6ACfexVknCllOBHEa1hcMma6mEqE1VRvAubMjYDq5gl4oA?=
 =?us-ascii?Q?QQMjSXTEdn182/G48au97hTD16tBHTFRwnMuk4EE1aX/FDnVyIBgz/Xd6XoV?=
 =?us-ascii?Q?rcJ0bZmeBHd//FoCBgLvhliDuv5xLRMmN+22T4jWhyRhb0r92L1TZnEcEI3O?=
 =?us-ascii?Q?h3xXS1BQ8uwIvLFluA4M5Tf0Q6bgwOuVsHuwKcyomuw7ELUXfrx5d0Ud+9KU?=
 =?us-ascii?Q?dEYA7bue2YeVubxv2Mh/1UOQv8lsJYMhm9SW/39l7M+vC7gvCuS1D6AzGnON?=
 =?us-ascii?Q?F9/Fveng14xjBaGoXjkIAui35KF322yJtg6GiClqf1G8/igaEv991M0CiEnk?=
 =?us-ascii?Q?Mkz+9Q/my+8r4bG+QA8lV0QdJZwthelZP+IOkFJdlANAXv3gWnd5dOLkgPQk?=
 =?us-ascii?Q?Nbgb8XJdSdTDmuVXy5RF8Oqkj+vFa6DpZ4arLoz2M48/oSgTSysqvNk2jfuI?=
 =?us-ascii?Q?sKWOdgtBeXSh26YGjFz1ce/ntIHmf4lPLnyLWi5xkw072HKJp8GTdfzR26lc?=
 =?us-ascii?Q?d51fziKGlvN1hwRTjtYg56GwSwU3DDPfG0pwNRJlyXZVvCMMJD30oEz4lruy?=
 =?us-ascii?Q?66sx4ui1OstXts2Iq4Pol0Yc/F4gxS/gWcq5P17uyR26vo5m5+gxYbIBKhZE?=
 =?us-ascii?Q?l1YJ+vFO0vWINzKmxj5LdPU1FHi+Tyj1BkulQ3qOS1qDZhVWCoVqbfN1j86b?=
 =?us-ascii?Q?iVk/rLb/F52/OT+L3Qayaac9HOJlL6MrDhGCsQS9swsVzmotcx8uL0xC4Jle?=
 =?us-ascii?Q?f/kjSGJV3TI1PDcxLEvdp9xOiiCxhvbaQWDH+S8t3Wbtqh+vQSKUu/TnFqBK?=
 =?us-ascii?Q?eQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c385a9f6-968b-4cba-ad19-08dd2fece303
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 14:01:02.5991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NxzFJzmJ0rI7U8b/xcdaYuRcfk6r3XeH7bPAykFtLc7TtgqLb0yZfV3fyyySZ0IA25iEjaEjlCPhrvDnRgeaQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8171
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

On Mon, Dec 30, 2024 at 02:24:45PM +0000, Krzysztof Karas wrote:
> Hi Apoorva and Andi,
> 
> > > Initialize rq to NULL to prevent uninitialized pointer reads.
> > 
> > where is it happening?
> > 
> > Andi
> 
> There are two instances that I see:
> 1) err = fn(..., &rq); <- this probably will set the rq (at least
> looking at the functions that are used to set "fn", when calling
> "clear()"), but from the clear()'s execution perspective there are
> no guarantees that this value will be initialized.
> 
> 2) If an "err" is set and detected before "rq" is initialized, then
> there is a path that the execution might take that leads to reading
> uninitialized "rq":
> if all calls to i915_gem_object_pin_map() would result in -ENXIO,
> then the loop would exit with a "continue" and err = -ENXIO. This then
> triggers "if (err)" after the loop and takes the second "if", which
> starts by checking the value of "rq", which at this point would still
> be uninitialized.
> 
> I think this initialization removes these corner cases, so it is worth
> introducing.

To be really honest, I'm not entirely convinced of the corner cases,
but just because this function is huge and this pointer is used in
the very end, far from any of the path setting it, I believe it is
already a good reason for introducing this protection.

Also, the function can change in the future and this could be
forgotten.

So, I just pushed the patch to drm-intel-gt-next.

Thanks for the patch and review,
Rodrigo.

> 
> Krzysztof
> 
