Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1305F9F9359
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 14:35:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C22E10E0A2;
	Fri, 20 Dec 2024 13:35:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GKmovWF7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F57410E0A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 13:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734701723; x=1766237723;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=d7cHzliK4APm03vYSgwg4+0kYyfoCgd2vMJ72XmC10U=;
 b=GKmovWF7BA+aHu1rJBgZ3nscN/Q5DOcvusCQFZ/04X4BuTLEc2epYoBI
 8Ax4/Pwb9xo6e0bECYmsbeyBHZRExEDFUGXctGBfVMF9KNmQpQAWOFCpj
 vlVxp7rCFvNXSvA/hW+p08koHFyQ7/NH7nWmlSGk9Gb46VQAh5o480R5H
 wJvE1j+9575vRIQEcqbUW2+9l4hav8A1NQqhAdUPiW9H5eHPJM4Q3xvHZ
 NM/EkX4yKM/KZg4sGRqObVmN7UGohvHhYJRhbOmcAocgcrWu8Qs7B4LDq
 vqjHAr9mJqGeAd7lZW0dZbmUqD4HSwBG/UsAV4SJK26WcElu9qz7B6+sc Q==;
X-CSE-ConnectionGUID: n2IHNs/gRSOIj96DT1IkZQ==
X-CSE-MsgGUID: 4O+p+OpfQbyUCkh93KmyAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="52654761"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="52654761"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 05:35:23 -0800
X-CSE-ConnectionGUID: YGwnQuCWRVGyZcGWzzn2Xg==
X-CSE-MsgGUID: eSj/XRmQRJ6qh56d/AEadw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98714241"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 05:35:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 05:35:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 05:35:22 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 05:35:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xj0eEb7OrEK/Y5X0TCY+CIiJrzR4I4qr1lPBypXq3AaL1sASwCkZZDMkRga7flAgY4H5oWw97guzQlhx+1o3p1nupGjLVjyEcW7fLbJMjYqCiRW9YgbPtv39zQcUTT/TvIwe5njBsXoj7kg5PBwEkFb+IeAJMppvsp+kcJHVwsEo6pWkHYYRgDdSYi8UZXFmaX7Bn/iYYb5k/BYPcw8v3XZWQgvcwRJSPkPNG5gbIeGAOSsc+W15HuNxIyUnpZxBBwgFZDvbGJCUYtGnFLs1bkyn4pLxCu1Iay+GADLBK6+D2vFe4B+s52wOpYTqwh+Nor3ThpAEf0BXbIxpbubTwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PZ0LHSH6Rw9xahZy6x3cclr+Up9khH+iVj7sbKN9/MQ=;
 b=mCRKsfeoJRVMUEp0SbjiOnV92ddL0FYRpPk+y8gzrT0Ebt251X6eS6ke+RBYxYgHGauuf5iIZXe4xgDu8KjxJmm7juVHJ/BchaF1IWv6hJam3eUcQRaWc6MXenJFCjmD9h0zJriAZIGDDo3EGwS9cIggP9fkNntkfOeTyZ5HJjKHKH+I6iy7sQ7WS78EdJQiWZ0xfV5iLh+I83AoYQYlL1ofJvfjVTViF3JnZR1FvrYaao/xRIjxBCnK67a4fv/T46aAN8A7FVYnwTr3eW0WxQUm6VjMZfEUbS+nNSNdqfrAKuyQ5K1tEYhcxn1VTdSJRqbHuIIjTWMgekAFBnjxpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by PH7PR11MB7124.namprd11.prod.outlook.com (2603:10b6:510:20f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Fri, 20 Dec
 2024 13:34:52 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 13:34:52 +0000
Date: Fri, 20 Dec 2024 08:34:48 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: intel-gfx <intel-gfx@lists.freedesktop.org>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: Re: [PATCH RESEND v2] drm/i915/gt: Log reason for setting TAINT_WARN
 at reset
Message-ID: <Z2VyeKXoimREtTjb@intel.com>
References: <20241220131714.1309483-1-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241220131714.1309483-1-andi.shyti@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0282.namprd04.prod.outlook.com
 (2603:10b6:303:89::17) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|PH7PR11MB7124:EE_
X-MS-Office365-Filtering-Correlation-Id: 4eca038e-1451-4d1a-314b-08dd20fb154d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QnU78N20mr/9GK15oj7uEohZOPM1NuqoNiz7xHkAsGWzVFlRImxGwjl6apV7?=
 =?us-ascii?Q?ogPIMWTRPOjxzBZQKENq6ih7d4M/1K9oqFaJlNMKHg1/EtmHUkWxZxUQMqa/?=
 =?us-ascii?Q?zLS2hOvl+5/s1PtXiHtPacN6ZrAeu+jXzNI4iEuBimS1jinvaFPe2qhru9uy?=
 =?us-ascii?Q?Oy473tC7e8awKkSLXNabKesAJXfkRmbefwdxGm2Bo60oIdJb7/BmjMKS2i89?=
 =?us-ascii?Q?5EU8a/4SASSyb0El+sGTcyYXwNKlK3JUeySwQD6tcq8kfgqJGwx/A0f72UEM?=
 =?us-ascii?Q?W1hkIcflg9DwUAo9Ol0J/68NbRtJXWniuAAYUXL7XksNzHNsspbSf3tHtFt1?=
 =?us-ascii?Q?GjDnAN4URYn3fUdZ/nSX5zYUCz3qdjCax5U6twPu4VuBkxqD3c2Nu6ouKMGw?=
 =?us-ascii?Q?L9gBcxnsBcIMGl5hljVEQGaq3Fye8Xbzqhzig7IiTHU9JbMrSygu6O9PFq/6?=
 =?us-ascii?Q?Z5HkZKY3As/5ZEPI5wxbeovw+r6yNqqdIiTMa1TgsRD3oiO16a6zin6bDVmK?=
 =?us-ascii?Q?ZMKEwaY4Gr/85rsncvKtNp4fqBmWggRA1jk0ztHiOjlT3ACq/C0q4DQFKPzO?=
 =?us-ascii?Q?Frnc08EH2DSeX6VzjOJTDv3AfABChIYjbn9BLlRqUQl0GMba2vWXscr0eYHm?=
 =?us-ascii?Q?KgclTPgoZgcDAELj5O+OwFAbjlyn5EKabRLDU7BzwChMOt4mrJD8ZKJN8PWE?=
 =?us-ascii?Q?GfPmE2+wblPG5fbNn+UiDBb377GficXn6Tnp71kuXbNr83d6szkPZ9qKLVFP?=
 =?us-ascii?Q?WHiVDP+sYwR+zkVGDELziGQls6Ek5jlS3RTE3UmH0pdluYIQnn7VjZzONbQw?=
 =?us-ascii?Q?rX9vo79KEpO5NVMiPfq1SH1C8bNwndfPMIKgUfT/xrZlissnMxTAoQDQyd4K?=
 =?us-ascii?Q?DXe3peYGYyY4N6nlNkq9/r5QeFwHne5Fzgl1DUktSvCyUnBkZ3OCCaHspRVg?=
 =?us-ascii?Q?COb4QT8PwvSABoq5yCyPh6X1k4mjBvrfgwO7rUUVvXKWpQxLvucsIUSNH0d7?=
 =?us-ascii?Q?AR6V/gb3vvCmoWbOSXRkSaFgnr/MUxMzXgCtUMXXs9vaqdejXsCAWbBl7Ulh?=
 =?us-ascii?Q?xb0LI50C+jOiaT2pyIg9+9BYIhm2AXwOO/AAxIdt4YCD/2pevrlGO6NQX981?=
 =?us-ascii?Q?wiu4WHDxsoovyiwO7JeIpCZUIXa5E0nDu7x/5b1+TPT7mqMkjSa4ZnDm3ZQl?=
 =?us-ascii?Q?HXfcDstrjc0bJ5u8BzTb15DryDc72+2iy/N/6FwzUBG1VfOmZH4j6DuzWxhD?=
 =?us-ascii?Q?UdXx05+6IBneARyh3LqiNYe/n2hRHTTC7UtCvUUZCwfRi+vENvbOGfIW5zZP?=
 =?us-ascii?Q?reVcrAhr/SP8dZIwDAzGAuhMEz6168Hqt8/x12CXXCJcsy2dggb00PNeTLU4?=
 =?us-ascii?Q?PsyM+MJGdjf2n/m9qY97Ab5tJtXc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iluUmc2tjZSG5WzdG2nQWnVC9whGyKnoHTfOy6RY4unfyEI9I0QZ0solramk?=
 =?us-ascii?Q?qcscEbFW90mipdy3t76DJwaK5ILNTm341HVwa3UyA0V3ikPB7eOH3fs6xZVQ?=
 =?us-ascii?Q?jq/oxD/J5+IRmM1RvfFgzVK+gbFdgIK1MgBufr5RBekDeW18ztYbBYz0loj9?=
 =?us-ascii?Q?bYoxPAqmitoqjJPKqNZvChGwHwneLxfhSihRRetvn2M8oOH0p2rAw14foRgY?=
 =?us-ascii?Q?gcnIYkRBxgBRjpwAGPmKPaw7MS7UDdWbiASbpxb1xZ5QFBQvn6ML/V7xMLAw?=
 =?us-ascii?Q?Ps1ENjqUY9W3WAtudEDLoaITrD4d05WPqPzSgBzPY46ft8gZ0Eks7b5YXjak?=
 =?us-ascii?Q?GIWFEkAKFa9vKZKChDwk0/oaoTjbxo0o0JkmBX7MFEg4EFs20VE9GaipTejw?=
 =?us-ascii?Q?Y+Ks0QZ7EFS8O++SwTsi9mOkHi5iIwME2x/biotRYI+hLdDAt1JEWn0R1mws?=
 =?us-ascii?Q?cC7czAdAU4gGQDe6GlWcSpt55RHOGVgOEQW1HLxAajBw4SgnxeHEooirt74Q?=
 =?us-ascii?Q?t9jV1leUaxJIcx2lVObqzEIeQkszzfeF68XNzFhD7GPGu5Ci1LJ41goCQZdo?=
 =?us-ascii?Q?c1D/FYplQ+9dkHdOx1SNahTKek4cvA0BLy8y5aozeFW6oQXVUCN8pY7UVg/o?=
 =?us-ascii?Q?73TLb+9MKDgKN2Zh33gcfvlAVEeK0uo+4CY6RFtNDtm4IYEMpxGwuacgJxPv?=
 =?us-ascii?Q?zltmhU6jm96M9SVL3MivdjzAfTnwTje8mIFAITol46ZZzIDQ5ZW7XOAmCJWK?=
 =?us-ascii?Q?yJps/p6FERpFXYuWZObDrlY3GUKHt4RD6j90AY41rTDRuP9k8CKCO+0ZKFk7?=
 =?us-ascii?Q?JHtGsfUVi52YS6baOI7W4W2xO7MFET8uxp0492VhA9WjoifEeBVEaqHJI6lq?=
 =?us-ascii?Q?1QiRYaudEKLW0n8H0yghmF4Ue7HZ1Q5YOLzDsm/GmNLe5lxSizCtmH2ytqNh?=
 =?us-ascii?Q?1hbnHKoNTMXoqOk8Qg6/gFjEaGYEohzCfYPAQpL7gzRQ6NSDEMfA3bHod+Os?=
 =?us-ascii?Q?BeNMWzG44ABSQ9XQRA3Yp7MrHssLrJF3KPV7NVSs2QiWl2JCFjrKX2kskiP9?=
 =?us-ascii?Q?ibdwnXibfB4+YvcIeQO27HLsNHDLQEt/nwPqoRnBwAwfGZw6C8bvMMwGqlvq?=
 =?us-ascii?Q?T9KmbsBkDnU0l//UhF2k1qAcNy2AyVtFt/GKwnAIhKWZ6/2vQ4vzqtkx0062?=
 =?us-ascii?Q?N41tfqCFwj4SSVQbbz7iFiLcTL48dmnyhTfhaD+75nuUJUDd9D3Ld7w6gN37?=
 =?us-ascii?Q?8URqnl/aFP4nG3M/8nvSTuflOaI9jtkt167GG+unRCQJndCr/F88SQqJmKBV?=
 =?us-ascii?Q?dLGq6TD9TJhh7YAK3CE4WAQpZTeAC1Rt8PDIbjqyantm0oV+eUnicuWtjkw0?=
 =?us-ascii?Q?+dtKVs9/cib7KJoRNPrE+LbGj6Xyt5YY9Ht+l4GO1sL+bN0EI0VyVpj8qM0V?=
 =?us-ascii?Q?ki8WYfSVbIL3SwzK1sDgKrtCsxH4aavysYrOJWXzWT4wp2Oud5jH5YtkgoOh?=
 =?us-ascii?Q?F9NBQvCQS5fd5d5oQJFCnqRJN4Mpmem6xiZqNgelsIcjRJSqk8lLDdJQ/N50?=
 =?us-ascii?Q?YnWczOl6PHMg158NgVChD6WPnH2hFZe8DBQHt+RDK+DGuYzY5r6SE/D26LZK?=
 =?us-ascii?Q?Yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4eca038e-1451-4d1a-314b-08dd20fb154d
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 13:34:52.5585 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C+awAYE0uQq0f6o0ILx7Qjok/t7c7fF/YnO2IjZ5tx/rI6hZHNC0DYK5cJgW9ANdBpZ3LZ95e4QHq9240HFIiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7124
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

On Fri, Dec 20, 2024 at 02:17:14PM +0100, Andi Shyti wrote:
> From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> 
> TAINT_WARN is used to notify CI about non-recoverable failures, which
> require device to be restarted. In some cases, there is no sufficient
> information about the reason for the restart. The test runner is just
> killed, and DUT is rebooted, logging only 'probe with driver i915 failed
> with error -4' to dmesg.
> 
> Printing error to dmesg before TAINT_WARN, would explain why the device
> has been restarted, and what caused the malfunction in the first place.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
> Cc: Andi Shyti <andi.shyti@kernel.org>
> 
> Hi,
> 
> this patch for some reason did not reach the mailing list and it
> missed all the CI premerge tests. I am resending it, this time
> with the Changelog and the versioning.


Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> I am leaving it for a few days in order to be reviewed by others,
> as well.
> 
> Andi
> 
> Changelog:
> ==========
> v1 -> v2:
>  - Reword the commit log
> 
>  drivers/gpu/drm/i915/gt/intel_reset.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index c2fe3fc78e76..aae5a081cb53 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1113,6 +1113,7 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
>  		 * Warn CI about the unrecoverable wedged condition.
>  		 * Time for a reboot.
>  		 */
> +		gt_err(gt, "Unrecoverable wedged condition\n");
>  		add_taint_for_CI(gt->i915, TAINT_WARN);
>  		return false;
>  	}
> @@ -1264,8 +1265,10 @@ void intel_gt_reset(struct intel_gt *gt,
>  	}
>  
>  	ret = resume(gt);
> -	if (ret)
> +	if (ret) {
> +		gt_err(gt, "Failed to resume (%d)\n", ret);
>  		goto taint;
> +	}
>  
>  finish:
>  	reset_finish(gt, awake);
> @@ -1608,6 +1611,7 @@ void intel_gt_set_wedged_on_init(struct intel_gt *gt)
>  	set_bit(I915_WEDGED_ON_INIT, &gt->reset.flags);
>  
>  	/* Wedged on init is non-recoverable */
> +	gt_err(gt, "Non-recoverable wedged on init\n");
>  	add_taint_for_CI(gt->i915, TAINT_WARN);
>  }
>  
> -- 
> 2.45.2
> 
