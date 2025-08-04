Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D29D4B1A0A8
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 13:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D937410E1B6;
	Mon,  4 Aug 2025 11:44:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LzJXHE/V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A2E410E1B2;
 Mon,  4 Aug 2025 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754307863; x=1785843863;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=GocDK0z9UotmNwhrjY5XSOSCIM5dFHa/xHEP3VLKtq0=;
 b=LzJXHE/VwwfCePcvzG6zDDNWoNVCDnziUXaW3685tf3OeYKWPRBQEk3t
 Bz8riRDM+FdKpQAbWdA+rcSvxtXW0v/VS2PoWNOVE9LTn4ErTg2PuQuNp
 +bImC/yeI8q9RsoFSMF0BXhTl1j0Bq5VFr9vgyCbc3yiYXwStBevf2puZ
 EZOOGGh6/w4rx7oBayiY2Llw5u6emDeTTjJhjkDuwJYsVmuFVYe5opbVN
 enTgM36MMPRQwnPVQISpMHAmCEKpOjIRw8f7ttLm23jfE7QbOewHwR+ev
 MApoepsh7CkDyW2T3f//VYE2qwvLC9DAppNz9T5wn5mHO+0hxwQ1vfhum Q==;
X-CSE-ConnectionGUID: XM3s5J8eR62HgEcnd+KEAQ==
X-CSE-MsgGUID: +aq/Lb1PQ2m2qMfoaXs7+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="56492679"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56492679"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 04:44:22 -0700
X-CSE-ConnectionGUID: HlwUH1mUS/eQqQDH048GUw==
X-CSE-MsgGUID: CrIQON37TBS9ZYpS9Z2tWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="168398533"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 04:44:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 04:44:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 04:44:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 04:44:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nJSVDftv8pzJXOnPE7o7Ggwkju/gb2RO9peJ9oeSGHOcS1tKLu97lfsz5oPOXsK9Y9Vd93XIlry+6lUeGdOXI7ccP5HviLrT6zNRvAVl+zG53pCL8z8jklFYxSLKDAUeFOTbaDVPIP0P+dPer8o1/psAKm7qKH3Z6rXbutZg2fuRq+B9eHAsf4q3w3e1YwJKHGuMZqdyhmF02FRM+YlUlVYA7zWqa+kito+MR7BR8lXHh1hFPMXZ7iuXkuJmFEAUKF3Rt3rYYJyvMipb2gV33kjZ+VYLvldT0PgFZnTcosb2k7kjXoAaX6GcG4Ylr9LxAIGoaLfOFSaBeSuw8p+I5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VDELAjGpH9mDVv2NfVSa1z0jh4PL+vLeVOrJju6VKng=;
 b=Z3XTHYR16sUMnNe6Wnv4Xgkk/6cdSJ6WRg2K2UrSpUfyVIbAec0KgqR63zN7tomgicpOGffAqltXRyp2DMOava0tvqkGw7svK/ZGy32Dtb9wTXlwxbWARseRNweYPDyLRrxjLCZzpCS5kbZuyhRZq/4SvNFUaY2NazaKi+q6fIdl5yC25rDuZ50WacVdqV6MjdMkz05pBwrHj515D7TuvNviYFT5AoH6g0Wo1LW32F8J3c3MYRBEpYW8fqvCifajwr9+sjHoYiLaIT5ulQPPG4BvK712RfG+ExuqWF9megl4fg+KLlLN6IU80mZNxTpUGG8r0WdyUj1A65Yui+MW+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8162.namprd11.prod.outlook.com (2603:10b6:8:166::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Mon, 4 Aug
 2025 11:44:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8989.018; Mon, 4 Aug 2025
 11:44:16 +0000
Date: Mon, 4 Aug 2025 14:44:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= failure for
 drm/xe/display: Block hpd during suspend (rev5)
Message-ID: <aJCdBn8VZ5cuhqsJ@ideak-desk>
References: <20250724083928.2298199-1-dibin.moolakadan.subrahmanian@intel.com>
 <175426418536.208555.10447188129483557144@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175426418536.208555.10447188129483557144@1538d3639d33>
X-ClientProxiedBy: LO4P123CA0553.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:33b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8162:EE_
X-MS-Office365-Filtering-Correlation-Id: ee00acbe-2618-418d-48d3-08ddd34c3d71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tZeBJ0pJs/B29bnPBKrlXt2xqyNch7cAuaRytCG39KxQlhpr7KY7qQnJq+/u?=
 =?us-ascii?Q?gsoT7bMJJlAAvFv/sstLKGpbr5MV8Ezy/eXfZdJ7xgRzfSydtSHXCU8Cnh0p?=
 =?us-ascii?Q?BRjilwI+WdSs1GWWJwkG0OV2eUOTTATq5yntNCSnijUV3jPqYhFTm5gk4s6v?=
 =?us-ascii?Q?pHvX0JOsBTLZxHFAf1FDCTlSb4lHyqU96po3fW56Q3dBWTPWLPSpZsO1MRk0?=
 =?us-ascii?Q?PsGO7T4uZGGh1cS6ZvX6S9ei67ccbg92n4A6lsNxJ2lQ6c9HH8nNk2WbvbcW?=
 =?us-ascii?Q?HopVCfAwidu7A3M87zYFWaLO/fypR3NG/47Nhm1PbNuNTrrFWbM00eYzeKSm?=
 =?us-ascii?Q?feUnB3kUL2agNw7Pue2yXoHv2I9JgBzojszABvFqdm06ScOH4SKcSACXaRnd?=
 =?us-ascii?Q?urlMhm5VkqVejRGf1kiw9npbZf3AVfvBYVmuwGMgGo8+x/GjyPChUNfSbXpt?=
 =?us-ascii?Q?Bil0JWMiumuGOqIMxKlXPJ+Y3joeV53148G9nLHhRiJ2PEXZi9NbpNADbinO?=
 =?us-ascii?Q?h3reOCSAT9PcNnM6/VjMXey0BXwMyMHZJcl1wSiAvTj2DZoNhvTXRKnGvLBY?=
 =?us-ascii?Q?1V3dwJ+aoRDZ64NyODmzV2m1Y7GobkTiWnmZ7D9OmQTYl8qqKH/Rno54zKty?=
 =?us-ascii?Q?fgOS2LGRvh0+6eu0riQQcZRb49kja61N5QpwR7KxLbfZvabXXbRv2EG9K2O3?=
 =?us-ascii?Q?mUp1JviB3jzhDroYxb4SwYB2CyxEJvA2zFNtHqMHWAEAQo5hEyHeHvxwV5Uu?=
 =?us-ascii?Q?znkdQklHJZ5BgpBm+Kp+gqCB5ZWB2IkVE9XLzTVNEdDAus0ImsVMyvvPVdp4?=
 =?us-ascii?Q?Ms3n73HFlRrxV8lUxwy+TKaq0MFBPYxihyYtn9NEied2EDfPBAoiYRJ+nTQ4?=
 =?us-ascii?Q?T7LSH5p3i92DVycNk0TXZoLyJjneVwHKJA81pifRkrlYMKerqdTLqlvDr+5e?=
 =?us-ascii?Q?ToW1gHgL/1dW2cBm1W5ZTFWLk/enslbqu2jCZcwS0V9G6yvLCspwwPpYrgt3?=
 =?us-ascii?Q?4Ls7zBCDk1n7WMe2WI1j88xOWvKHpCxA37a8nYaWf/lQQTX5K8pI4Xpby0vj?=
 =?us-ascii?Q?/7s1lNoekyrlQasXC4tzBe5kywBKG7Gu59yAV7BIesHNFpLzpDHjQaBL3wfX?=
 =?us-ascii?Q?+/YIeKt/xCLHCswfXZX9CzjnBb+o19ifoKq6H63E11+vr/G4d0qMzPwqbzYm?=
 =?us-ascii?Q?J8JQsYljtjjxyDdJ0f47S9XR5Gng5cOxSwQ/BkNkDENaQBpeuer/8YQTJJiG?=
 =?us-ascii?Q?odcJGSGOtkwR8mjn52Qu6kj3scNnGzLdC/xlG16KsisHwCG7ZhrKgh6BDbmP?=
 =?us-ascii?Q?0b6XPhiFYjZhx7eB2Q9qICZKpeOSRwCOoXOnq1rsQ442rNpdgaqOqHQB7zev?=
 =?us-ascii?Q?/fZZyhw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(13003099007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9Dn6iS9N3W79IVs0K2ku+h9FvfyXEAW6drtTLFExJEGQEWfhVC7Jw8iE8TJa?=
 =?us-ascii?Q?CbyDvy/NxuSeAFYCidFBp8xDSAR2Zk+oeohpEOU3nwDrC3NRmuebM2L4hDaL?=
 =?us-ascii?Q?8HFHGWxyAWq/CgYjCdZt2HIcFrJ5i0zI47N0JSi/chLSygctWpp8qIDC1uMY?=
 =?us-ascii?Q?SJLumhF/HKTkoPoZP3FHQeXAF/o1CneYBiELN13kwBzkqeWytyTpCBtO/nSN?=
 =?us-ascii?Q?AALBoQz+VqGAFjZ395tsO6fmZrFS50vblqgsGi1MeowvqCD2cU1Fx0m/mo5i?=
 =?us-ascii?Q?C0BhZLmG/y89BX+GdBod3t8/0Hem3psMwqqpcYt3qIRbIlWOln+lcLsO7qnx?=
 =?us-ascii?Q?WPnBKLFHEk5QX78l+xd+rdG7kKdQNDXsKcI0JX+hNExfXc/Jz37EyRmwBy8I?=
 =?us-ascii?Q?SaLt4fjSbglPA0lrl00cYkQaEI6PhkcOr2DkFCIM0vVmoRGu8VVsJ+vkSmzT?=
 =?us-ascii?Q?ihs82HTknJIDknb210jwcFJ+CiosZoZRE3yN7qoDuAW19Z/FsA4LFCLNijo5?=
 =?us-ascii?Q?Z8eKaxoxsBnUHfQrrPPVaf5j6N34Reu+eABKY6yVdPJ9vjtvWaDVx/Y5Jzlz?=
 =?us-ascii?Q?oGAqTaeXYbQ5ntbwrJETTFmL6suL1wnOLbAY9NoYPZnlwba1Mj301YR91X0Z?=
 =?us-ascii?Q?7lpeA+mNnYMrTRYV/rswnhxac8o+hxWYx0TLbQ3VzzMYAN2agWxdKwsh3MJa?=
 =?us-ascii?Q?PMHuVa3R3IGCfnJZPq+AbYxq7vEMgCRE/ik79Jb8v7ZqHnMFqgAA0vJoqoo9?=
 =?us-ascii?Q?d4aW28emgF94Jb5K6iCdt2O5OezoAQDmSZcqlfV5qOf5aB2wxFMWYcAFRKRM?=
 =?us-ascii?Q?elkiIw00dMX8HBTObaWERjUHtxGNzLJvGpOZyyFHn/paY8+Tq07igM43qtSw?=
 =?us-ascii?Q?9RiZZr/L4HvFrm9bcAvLIN6Epd3iHxledqdN6YyFIdzPDp0YI8KpBEXVHjih?=
 =?us-ascii?Q?Ds7VxMzkTnc9JAZRihaiB23o1P8twxwandRiM/F0yYaijNa1mzsbmLjbfx8P?=
 =?us-ascii?Q?w02+N5k09WNLhWbfFJnd2mS2oDB2VF4kaBCSa1cEfcif/+OYXb5AxWK47+VE?=
 =?us-ascii?Q?wUjuUNtmDwsZGuIx5WFLGOmtmh4Cbldm6MRqZZChJ8DJ4xnFhYEHUZXsJF2f?=
 =?us-ascii?Q?/RBgf9oaPnji7Rc0aDWDdibouBAj1j1viW1rIvzrXRzZ5q0gCdJFm/nNdXwk?=
 =?us-ascii?Q?dtWgLrP/6vpEBHG0MRfwjaNMvW4LJfwIj5d5OQVZk8V/pDcsdtyq67OMudW9?=
 =?us-ascii?Q?HV7HMYLKxMbF9jPHXUD+B+4phP0qufs4/QpzeUa5wFWMBd876p2c7SydDtET?=
 =?us-ascii?Q?r3kI0+r07rODlgfF6CE2YNO9Qa6/HVVUrblx+LSh0Wvo61X3tYOow8ECNVHX?=
 =?us-ascii?Q?eW85U9hewlmHiRXMn+pXIHbWGcvqGkhz5/VVMRwXvvqChB48bGqsxT/5jntE?=
 =?us-ascii?Q?Mksb407X36lcBzil9v6ANxjxYNFcHsiQkvqo2eressqBtYjYfav7EXkZeiAD?=
 =?us-ascii?Q?ZDRUyqF9VI1IOvt122OuaV/xb21NpWoeXk2nRKpM5+MVMKCezNPMjxL6xi9U?=
 =?us-ascii?Q?RQ19WGrJrVfRBithc7+Qbr71iB+422mK4Y7OJOAu++Crgfi5CFf854z/dZzW?=
 =?us-ascii?Q?E1X+v4dYF7cQ4vorhctH1I4qspcvoUtVNxD1X8iv74M+?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ee00acbe-2618-418d-48d3-08ddd34c3d71
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 11:44:16.4826 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dJbT3RCpe6KN9haVcNtVYRZ6MbGqo9dFnVEJlhZ5A/0JnkkArpt4w6nofP6u0f7FIdrP7j7CWjn8xpXAolUg2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8162
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Aug 03, 2025 at 11:36:25PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/xe/display: Block hpd during suspend (rev5)
> URL   : https://patchwork.freedesktop.org/series/151748/
> State : failure

Thanks for the patch, review and acks, patch is pushed to drm-intel-next
with the subject prefix amended to drm/{i915,xe}/display.

The DG2 results here are all passing, so not sure why they were flagged
as failures. In the i915 CI run the change should not have an effect
anyway.

The xe CI test was passing.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16951_full -> Patchwork_151748v5_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_151748v5_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_151748v5_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 12)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_151748v5_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23]) -> ([PASS][24], [SKIP][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [DMESG-WARN][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45]) ([i915#14559])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-10/igt@i915_module_load@load.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-10/igt@i915_module_load@load.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-11/igt@i915_module_load@load.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-11/igt@i915_module_load@load.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-11/igt@i915_module_load@load.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-1/igt@i915_module_load@load.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-1/igt@i915_module_load@load.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-2/igt@i915_module_load@load.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-2/igt@i915_module_load@load.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-3/igt@i915_module_load@load.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-3/igt@i915_module_load@load.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-3/igt@i915_module_load@load.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-4/igt@i915_module_load@load.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-4/igt@i915_module_load@load.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-5/igt@i915_module_load@load.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-5/igt@i915_module_load@load.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-5/igt@i915_module_load@load.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-6/igt@i915_module_load@load.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-6/igt@i915_module_load@load.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-7/igt@i915_module_load@load.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-7/igt@i915_module_load@load.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-8/igt@i915_module_load@load.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-8/igt@i915_module_load@load.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-6/igt@i915_module_load@load.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-3/igt@i915_module_load@load.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-5/igt@i915_module_load@load.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-6/igt@i915_module_load@load.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-3/igt@i915_module_load@load.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@i915_module_load@load.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-8/igt@i915_module_load@load.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@i915_module_load@load.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-1/igt@i915_module_load@load.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-7/igt@i915_module_load@load.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-7/igt@i915_module_load@load.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-4/igt@i915_module_load@load.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-1/igt@i915_module_load@load.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@i915_module_load@load.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-10/igt@i915_module_load@load.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-5/igt@i915_module_load@load.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-7/igt@i915_module_load@load.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@i915_module_load@load.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-8/igt@i915_module_load@load.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-10/igt@i915_module_load@load.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-4/igt@i915_module_load@load.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@i915_module_load@load.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_151748v5_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#8411])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2-9:        NOTRUN -> [SKIP][47] ([i915#11078])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_read@empty-block:
>     - shard-rkl:          [PASS][48] -> [SKIP][49] ([i915#14544]) +63 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@drm_read@empty-block.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@drm_read@empty-block.html
> 
>   * igt@fbdev@nullptr:
>     - shard-rkl:          [PASS][50] -> [SKIP][51] ([i915#14544] / [i915#2582]) +2 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@fbdev@nullptr.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@fbdev@nullptr.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#3555] / [i915#9323])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [PASS][53] -> [INCOMPLETE][54] ([i915#12392] / [i915#13356])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2-9:        NOTRUN -> [SKIP][55] ([i915#7697])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#8562])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][57] ([i915#12353]) +1 other test incomplete
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk11/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#8555]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#280])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2-9:        NOTRUN -> [SKIP][60] ([i915#4771])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu-1:       NOTRUN -> [SKIP][61] ([i915#4525])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#4525])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu:         [PASS][63] -> [ABORT][64] ([i915#11713] / [i915#14756])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-tglu-5/igt@gem_exec_big@single.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-3/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#6334]) +2 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4812])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2-9:        NOTRUN -> [SKIP][67] ([i915#4812])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3539] / [i915#4852]) +1 other test skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][69] ([i915#3539])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#3539] / [i915#4852])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_exec_flush@basic-wb-ro-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#3281]) +7 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#3281]) +9 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4537] / [i915#4812])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_fenced_exec_thrash@too-many-fences:
>     - shard-dg2-9:        NOTRUN -> [SKIP][74] ([i915#4860]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_fenced_exec_thrash@too-many-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][75] ([i915#4613]) +5 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-tglu-1:       NOTRUN -> [SKIP][76] ([i915#4613]) +1 other test skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#4613]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_mmap_gtt@big-copy-odd:
>     - shard-dg2-9:        NOTRUN -> [SKIP][78] ([i915#4077]) +8 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_mmap_gtt@big-copy-odd.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4083]) +4 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_mmap_wc@pf-nonblock:
>     - shard-dg2-9:        NOTRUN -> [SKIP][80] ([i915#4083]) +3 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_mmap_wc@pf-nonblock.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-rkl:          [PASS][81] -> [SKIP][82] ([i915#14544] / [i915#1850])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@gem_mmap_wc@set-cache-level.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3282]) +5 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu:         NOTRUN -> [WARN][84] ([i915#2658])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4270]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][86] ([i915#4270]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-rkl:          [PASS][87] -> [TIMEOUT][88] ([i915#12917] / [i915#12964])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-2.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_readwrite@read-bad-handle:
>     - shard-dg2-9:        NOTRUN -> [SKIP][89] ([i915#3282]) +3 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_readwrite@read-bad-handle.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][90] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#5190] / [i915#8428]) +6 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4079])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-5/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_tiled_blits@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4077]) +9 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@gem_tiled_blits@basic.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#3297])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3297])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2-9:        NOTRUN -> [SKIP][96] ([i915#3282] / [i915#3297])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2-9:        NOTRUN -> [SKIP][97] ([i915#3297] / [i915#4958])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg2-9:        NOTRUN -> [SKIP][98] ([i915#3297])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#2527] / [i915#2856]) +1 other test skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#2527] / [i915#2856]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#2856]) +2 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-dg2-9:        NOTRUN -> [SKIP][102] ([i915#2856]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@i915_drm_fdinfo@all-busy-idle-check-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][103] ([i915#14123]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@i915_drm_fdinfo@all-busy-idle-check-all.html
> 
>   * igt@i915_drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][104] ([i915#14073]) +7 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@i915_drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [PASS][105] -> [INCOMPLETE][106] ([i915#12455] / [i915#13820]) +1 other test incomplete
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-4/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][107] ([i915#12797])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk11/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#11681] / [i915#6621])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2-9:        NOTRUN -> [SKIP][109] ([i915#11681] / [i915#6621])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [PASS][110] -> [INCOMPLETE][111] ([i915#13729] / [i915#13821])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-snb4/igt@i915_pm_rps@reset.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-snb5/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park:
>     - shard-dg2-9:        NOTRUN -> [SKIP][112] ([i915#11681])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@i915_pm_rps@thresholds-idle-park.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          NOTRUN -> [DMESG-FAIL][113] ([i915#12061]) +1 other test dmesg-fail
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][114] ([i915#4817])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][115] ([i915#4817])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk10/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][116] ([i915#4215] / [i915#5190])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4212]) +2 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic:
>     - shard-glk:          NOTRUN -> [FAIL][118] ([i915#10991] / [i915#13335])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][119] ([i915#10991])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [FAIL][120] ([i915#10991] / [i915#12518])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-rkl:          [PASS][121] -> [INCOMPLETE][122] ([i915#12761])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_async_flips@async-flip-suspend-resume.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][123] ([i915#12761])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk8/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][124] ([i915#12761])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#1769] / [i915#3555]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#5286]) +2 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#5286]) +3 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][128] +8 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][129] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4538] / [i915#5190]) +5 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#6095]) +151 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-15/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#10307] / [i915#6095]) +118 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][133] ([i915#12313])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#6095]) +14 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#12313])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#6095]) +37 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#12805])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#12805])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:
>     - shard-dg2:          [PASS][139] -> [ABORT][140] ([i915#8213])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-d-dp-3:
>     - shard-dg2:          NOTRUN -> [ABORT][141] ([i915#8213])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-d-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#12805])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#6095]) +4 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#6095]) +4 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][145] ([i915#6095]) +4 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][146] ([i915#12313])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#12313]) +2 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][148] ([i915#10307] / [i915#6095]) +39 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#14098] / [i915#6095]) +36 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-7/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#13784])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#13781]) +3 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#13783]) +4 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio:
>     - shard-dg2-9:        NOTRUN -> [SKIP][154] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_chamelium_audio@hdmi-audio.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-dg2-9:        NOTRUN -> [SKIP][156] +10 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#12655] / [i915#3555])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_color@deep-color.html
> 
>   * igt@kms_color@gamma:
>     - shard-rkl:          [PASS][160] -> [SKIP][161] ([i915#12655] / [i915#14544]) +2 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_color@gamma.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_color@gamma.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][163] ([i915#7173])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#7118] / [i915#9424])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-dpms@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][165] ([i915#12964]) +15 other tests dmesg-warn
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-7/igt@kms_cursor_crc@cursor-dpms@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#3555]) +4 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#3555]) +2 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#13049])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][169] ([i915#13566]) +1 other test fail
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2-9:        NOTRUN -> [SKIP][170] ([i915#3555]) +1 other test skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2-9:        NOTRUN -> [SKIP][171] ([i915#13049]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][172] ([i915#13566]) +1 other test fail
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#13046] / [i915#5354]) +4 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
>     - shard-rkl:          [PASS][174] -> [SKIP][175] ([i915#11190] / [i915#14544]) +3 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-glk:          [PASS][176] -> [SKIP][177] +10 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-glk6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][178] ([i915#13046] / [i915#5354])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#4103])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#9833])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#3804])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          [PASS][182] -> [SKIP][183] ([i915#3555])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-8/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [PASS][184] -> [SKIP][185] ([i915#1257])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-11/igt@kms_dp_aux_dev.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-7/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#13749])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-5/igt@kms_dp_link_training@non-uhbr-sst.html
>     - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#13749])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#13707])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][189] ([i915#8812])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][190] ([i915#3555] / [i915#3840])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2-9:        NOTRUN -> [SKIP][191] ([i915#3840] / [i915#9688])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg2-9:        NOTRUN -> [SKIP][192] ([i915#3555] / [i915#3840])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][193] ([i915#3469])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#1839])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#658])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][196] ([i915#9934]) +3 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#9934])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2-9:        NOTRUN -> [SKIP][198] ([i915#8381])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#9934]) +4 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_flip@2x-flip-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#3637] / [i915#9934])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-rkl:          [PASS][202] -> [SKIP][203] ([i915#14544] / [i915#3637]) +12 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_flip@flip-vs-suspend.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#2672]) +1 other test skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#2672] / [i915#3555])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#2587] / [i915#2672])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][207] ([i915#2672]) +3 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-rkl:          [PASS][208] -> [SKIP][209] ([i915#14544] / [i915#3555]) +5 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][210] ([i915#2672] / [i915#3555] / [i915#5190]) +2 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#2672] / [i915#3555] / [i915#5190])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#2672])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][213] ([i915#2672] / [i915#3555]) +1 other test skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#2587] / [i915#2672]) +1 other test skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][215] ([i915#2672] / [i915#3555])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [FAIL][216] ([i915#6880])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          [PASS][217] -> [SKIP][218] ([i915#14544] / [i915#1849] / [i915#5354]) +15 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][219] +43 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:
>     - shard-dg2-9:        NOTRUN -> [SKIP][220] ([i915#5354]) +19 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#8708]) +12 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][222] ([i915#3458]) +11 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#5354]) +21 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#9766])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][225] ([i915#8708]) +13 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][226] +32 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#3458]) +8 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#3555] / [i915#8228])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#12713])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          [PASS][230] -> [SKIP][231] ([i915#3555] / [i915#8228]) +1 other test skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-7/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_invalid_mode@bad-hsync-end:
>     - shard-rkl:          [PASS][232] -> [SKIP][233] ([i915#14544] / [i915#3555] / [i915#8826]) +2 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@kms_invalid_mode@bad-hsync-end.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#10656])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#12394])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#12339])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#12388])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#10656])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#1839])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
>     - shard-glk11:        NOTRUN -> [SKIP][240] ([i915#11190])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - shard-glk10:        NOTRUN -> [SKIP][241] ([i915#11190]) +6 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk10/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
> 
>   * igt@kms_plane@planar-pixel-format-settings:
>     - shard-rkl:          [PASS][242] -> [SKIP][243] ([i915#14544] / [i915#9581])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_plane@planar-pixel-format-settings.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_plane@planar-pixel-format-settings.html
> 
>   * igt@kms_plane@plane-position-covered:
>     - shard-rkl:          [PASS][244] -> [SKIP][245] ([i915#14544] / [i915#8825])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_plane@plane-position-covered.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_plane@plane-position-covered.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [FAIL][246] ([i915#10647] / [i915#12169]) +1 other test fail
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb:
>     - shard-glk:          NOTRUN -> [FAIL][247] ([i915#10647] / [i915#12177])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk9/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][248] ([i915#10647]) +5 other tests fail
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk2/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#13958])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-5/igt@kms_plane_multiple@2x-tiling-4.html
>     - shard-tglu:         NOTRUN -> [SKIP][250] ([i915#13958])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][251] ([i915#13958]) +1 other test skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][252] ([i915#12247]) +9 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
>     - shard-rkl:          [PASS][253] -> [SKIP][254] ([i915#14544] / [i915#8152])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
>     - shard-rkl:          [PASS][255] -> [SKIP][256] ([i915#12247] / [i915#14544] / [i915#8152]) +6 other tests skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
>     - shard-rkl:          [PASS][257] -> [SKIP][258] ([i915#14544] / [i915#6953] / [i915#8152])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a:
>     - shard-rkl:          [PASS][259] -> [SKIP][260] ([i915#12247] / [i915#14544]) +4 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
>     - shard-rkl:          [PASS][261] -> [SKIP][262] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#12343])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][264] ([i915#9812])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][265] ([i915#9685])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][266] ([i915#4281])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-glk10:        NOTRUN -> [SKIP][267] +338 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk10/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#8430])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@cursor-dpms:
>     - shard-rkl:          [PASS][269] -> [SKIP][270] ([i915#14544] / [i915#1849])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@kms_pm_rpm@cursor-dpms.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg1:          [PASS][271] -> [DMESG-WARN][272] ([i915#4423])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-12/igt@kms_pm_rpm@i2c.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-15/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2-9:        NOTRUN -> [SKIP][273] ([i915#9519])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][274] -> [SKIP][275] ([i915#9519])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-rkl:          [PASS][276] -> [SKIP][277] ([i915#14544] / [i915#6524])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_prime@basic-crc-vgem.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2-9:        NOTRUN -> [SKIP][278] ([i915#6524] / [i915#6805])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#6524] / [i915#6805]) +1 other test skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_prime@d3hot.html
> 
>   * igt@kms_properties@plane-properties-atomic:
>     - shard-rkl:          [PASS][280] -> [SKIP][281] ([i915#11521] / [i915#14544])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_properties@plane-properties-atomic.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#11520]) +5 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][283] ([i915#11520]) +9 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#11520]) +3 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][285] ([i915#11520]) +3 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][286] ([i915#11520]) +9 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk1/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
>     - shard-dg2-9:        NOTRUN -> [SKIP][287] ([i915#11520]) +5 other tests skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2-9:        NOTRUN -> [SKIP][288] ([i915#9683])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#9683])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglu:         NOTRUN -> [SKIP][290] ([i915#9683])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][291] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_psr@fbc-pr-sprite-blt.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][292] +411 other tests skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk2/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr-cursor-render:
>     - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_psr@psr-cursor-render.html
> 
>   * igt@kms_psr@psr2-cursor-plane-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][294] ([i915#9732]) +7 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@kms_psr@psr2-cursor-plane-onoff.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][295] ([i915#9732]) +10 other tests skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#9685])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
>     - shard-glk11:        NOTRUN -> [SKIP][297] +42 other tests skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk11/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#12755])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#5190]) +1 other test skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>     - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#5289]) +1 other test skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][301] ([i915#12755])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][302] ([i915#3555]) +2 other tests skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][303] -> [FAIL][304] ([i915#9196])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][305] ([i915#12276]) +1 other test incomplete
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk9/igt@kms_vblank@ts-continuation-suspend.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#9906])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_vrr@max-min.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-tglu-1:       NOTRUN -> [SKIP][307] ([i915#2437])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg2-9:        NOTRUN -> [SKIP][308] ([i915#2437] / [i915#9412])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#2437])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][310] ([i915#2434])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-tglu:         NOTRUN -> [FAIL][311] ([i915#14433])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-6/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][312] ([i915#13356])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk10/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][313] ([i915#8516])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@perf_pmu@semaphore-wait:
>     - shard-rkl:          [PASS][314] -> [DMESG-WARN][315] ([i915#12964]) +8 other tests dmesg-warn
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@perf_pmu@semaphore-wait.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@perf_pmu@semaphore-wait.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][316] ([i915#3708] / [i915#4077])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#9917])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-2/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][318] ([i915#9917])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-9/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:
>     - shard-tglu-1:       NOTRUN -> [FAIL][319] ([i915#12910]) +8 other tests fail
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_read@empty-block:
>     - shard-dg1:          [DMESG-WARN][320] ([i915#4423]) -> [PASS][321] +3 other tests pass
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-19/igt@drm_read@empty-block.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-13/igt@drm_read@empty-block.html
> 
>   * igt@gem_ctx_freq@sysfs@gt0:
>     - shard-dg2:          [FAIL][322] ([i915#9561]) -> [PASS][323] +1 other test pass
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg2:          [ABORT][324] ([i915#10030] / [i915#8213]) -> [PASS][325]
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-10/igt@gem_eio@in-flight-suspend.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_schedule@deep@bcs0:
>     - shard-rkl:          [DMESG-WARN][326] ([i915#12964]) -> [PASS][327] +12 other tests pass
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_exec_schedule@deep@bcs0.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@gem_exec_schedule@deep@bcs0.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [TIMEOUT][328] ([i915#5493]) -> [PASS][329] +1 other test pass
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          [TIMEOUT][330] ([i915#12964]) -> [PASS][331]
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-5/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-glk:          [INCOMPLETE][332] ([i915#12797]) -> [PASS][333]
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-glk8/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk9/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
>     - shard-rkl:          [SKIP][334] ([i915#14544]) -> [PASS][335] +39 other tests pass
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
> 
>   * igt@kms_color@ctm-green-to-red:
>     - shard-rkl:          [SKIP][336] ([i915#12655] / [i915#14544]) -> [PASS][337] +1 other test pass
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_color@ctm-green-to-red.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_color@ctm-green-to-red.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-rkl:          [FAIL][338] ([i915#13566]) -> [PASS][339]
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-128x42.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [TIMEOUT][340] ([i915#14033]) -> [PASS][341] +1 other test pass
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-snb2/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-glk:          [SKIP][342] -> [PASS][343] +7 other tests pass
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-glk8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk9/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@bo-too-big:
>     - shard-rkl:          [SKIP][344] ([i915#14544] / [i915#3637]) -> [PASS][345] +3 other tests pass
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_flip@bo-too-big.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_flip@bo-too-big.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-dg2:          [INCOMPLETE][346] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113]) -> [PASS][347]
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-1/igt@kms_flip@flip-vs-suspend.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-5/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-hdmi-a3:
>     - shard-dg2:          [INCOMPLETE][348] ([i915#12314] / [i915#4839] / [i915#6113]) -> [PASS][349]
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-1/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-5/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-rkl:          [SKIP][350] ([i915#14544] / [i915#3555]) -> [PASS][351] +3 other tests pass
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][352] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][353] +8 other tests pass
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_invalid_mode@bad-htotal:
>     - shard-rkl:          [SKIP][354] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][355] +1 other test pass
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_invalid_mode@bad-htotal.html
> 
>   * igt@kms_plane@plane-panning-top-left:
>     - shard-rkl:          [SKIP][356] ([i915#14544] / [i915#8825]) -> [PASS][357]
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_plane@plane-panning-top-left.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max:
>     - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#7294]) -> [PASS][359] +1 other test pass
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-max.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_plane_alpha_blend@constant-alpha-max.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [SKIP][360] ([i915#6953] / [i915#9423]) -> [PASS][361]
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
>     - shard-rkl:          [SKIP][362] ([i915#14544] / [i915#8152]) -> [PASS][363]
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b:
>     - shard-rkl:          [SKIP][364] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][365] +5 other tests pass
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
>     - shard-rkl:          [SKIP][366] ([i915#12247] / [i915#14544]) -> [PASS][367] +4 other tests pass
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20:
>     - shard-rkl:          [SKIP][368] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][369]
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
>     - shard-rkl:          [SKIP][370] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][371] +1 other test pass
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [SKIP][372] ([i915#9519]) -> [PASS][373]
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@fences:
>     - shard-rkl:          [SKIP][374] ([i915#14544] / [i915#1849]) -> [PASS][375]
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_pm_rpm@fences.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_pm_rpm@fences.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][376] ([i915#14544] / [i915#9519]) -> [PASS][377]
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
>     - shard-mtlp:         [FAIL][378] ([i915#9196]) -> [PASS][379]
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [FAIL][380] ([i915#4349]) -> [PASS][381] +4 other tests pass
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          [SKIP][382] ([i915#14544] / [i915#6230]) -> [SKIP][383] ([i915#6230])
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@api_intel_bb@crc32.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@api_intel_bb@crc32.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          [SKIP][384] ([i915#14544] / [i915#7697]) -> [SKIP][385] ([i915#7697])
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_basic@multigpu-create-close.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][386] ([i915#3555] / [i915#9323]) -> [SKIP][387] ([i915#14544] / [i915#3555] / [i915#9323])
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@gem_ccs@block-multicopy-inplace.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          [SKIP][388] ([i915#7697]) -> [SKIP][389] ([i915#14544] / [i915#7697])
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@gem_close_race@multigpu-basic-threads.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          [SKIP][390] ([i915#14544] / [i915#6335]) -> [SKIP][391] ([i915#6335])
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          [SKIP][392] ([i915#8562]) -> [SKIP][393] ([i915#14544] / [i915#8562])
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@gem_create@create-ext-set-pat.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          [SKIP][394] ([i915#14544] / [i915#280]) -> [SKIP][395] ([i915#280])
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_ctx_sseu@engines.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          [SKIP][396] ([i915#280]) -> [SKIP][397] ([i915#14544] / [i915#280])
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          [SKIP][398] ([i915#4525]) -> [SKIP][399] ([i915#14544] / [i915#4525]) +1 other test skip
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@gem_exec_balancer@parallel-balancer.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-rkl:          [SKIP][400] ([i915#14544] / [i915#4525]) -> [SKIP][401] ([i915#4525]) +1 other test skip
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          [SKIP][402] ([i915#6334]) -> [SKIP][403] ([i915#14544] / [i915#6334]) +1 other test skip
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@gem_exec_capture@capture-invisible@smem0.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-rkl:          [SKIP][404] ([i915#14544] / [i915#3281]) -> [SKIP][405] ([i915#3281]) +7 other tests skip
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_exec_reloc@basic-wc.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          [SKIP][406] ([i915#3281]) -> [SKIP][407] ([i915#14544] / [i915#3281]) +9 other tests skip
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@gem_exec_reloc@basic-write-read.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-rkl:          [SKIP][408] ([i915#4613]) -> [SKIP][409] ([i915#14544] / [i915#4613]) +3 other tests skip
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@gem_lmem_swapping@heavy-random.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          [SKIP][410] ([i915#14544] / [i915#4613]) -> [SKIP][411] ([i915#4613]) +2 other tests skip
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          [SKIP][412] ([i915#284]) -> [SKIP][413] ([i915#14544] / [i915#284])
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@gem_media_vme.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_media_vme.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          [SKIP][414] ([i915#14544] / [i915#3282]) -> [SKIP][415] ([i915#3282]) +3 other tests skip
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-rkl:          [TIMEOUT][416] ([i915#12964]) -> [SKIP][417] ([i915#14544] / [i915#4270])
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@gem_pxp@fail-invalid-protected-context.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          [SKIP][418] ([i915#14544] / [i915#8411]) -> [SKIP][419] ([i915#8411]) +3 other tests skip
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-rkl:          [SKIP][420] ([i915#3282]) -> [SKIP][421] ([i915#14544] / [i915#3282]) +7 other tests skip
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@gem_set_tiling_vs_pwrite.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-rkl:          [SKIP][422] ([i915#14544]) -> [SKIP][423] +16 other tests skip
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_softpin@evict-snoop-interruptible.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          [SKIP][424] ([i915#3297]) -> [SKIP][425] ([i915#14544] / [i915#3297]) +1 other test skip
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@gem_userptr_blits@create-destroy-unsync.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          [SKIP][426] ([i915#14544] / [i915#3297]) -> [SKIP][427] ([i915#3297]) +2 other tests skip
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          [SKIP][428] ([i915#14544] / [i915#3281] / [i915#3297]) -> [SKIP][429] ([i915#3281] / [i915#3297])
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gem_userptr_blits@relocations.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-rkl:          [SKIP][430] ([i915#14544] / [i915#2527]) -> [SKIP][431] ([i915#2527]) +1 other test skip
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@gen9_exec_parse@bb-start-far.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          [SKIP][432] ([i915#2527]) -> [SKIP][433] ([i915#14544] / [i915#2527]) +4 other tests skip
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@gen9_exec_parse@secure-batches.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          [SKIP][434] ([i915#8399]) -> [SKIP][435] ([i915#14544] / [i915#8399])
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          [SKIP][436] ([i915#14498] / [i915#14544]) -> [SKIP][437] ([i915#14498])
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][438] ([i915#5723]) -> [SKIP][439] ([i915#14544] / [i915#5723])
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@i915_query@test-query-geometry-subslices.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          [SKIP][440] ([i915#14544] / [i915#7707]) -> [SKIP][441] ([i915#7707])
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          [SKIP][442] ([i915#14544]) -> [SKIP][443] ([i915#1769] / [i915#3555])
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          [SKIP][444] ([i915#1769] / [i915#3555]) -> [SKIP][445] ([i915#14544])
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-rkl:          [SKIP][446] ([i915#14544]) -> [SKIP][447] ([i915#5286]) +5 other tests skip
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          [SKIP][448] ([i915#5286]) -> [SKIP][449] ([i915#14544]) +7 other tests skip
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.html
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-rkl:          [SKIP][450] ([i915#14544]) -> [SKIP][451] ([i915#3638])
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-270.html
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          [SKIP][452] ([i915#3638]) -> [SKIP][453] ([i915#14544]) +3 other tests skip
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-rkl:          [DMESG-WARN][454] ([i915#12964]) -> [SKIP][455] ([i915#14544])
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][456] ([i915#14544]) -> [SKIP][457] ([i915#12313]) +2 other tests skip
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][458] ([i915#12805]) -> [SKIP][459] ([i915#14544])
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
>     - shard-glk:          [INCOMPLETE][460] ([i915#12796]) -> [INCOMPLETE][461] ([i915#12796] / [i915#14694])
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-glk5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-glk1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][462] ([i915#14098] / [i915#6095]) -> [SKIP][463] ([i915#6095]) +2 other tests skip
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][464] ([i915#12313]) -> [SKIP][465] ([i915#14544]) +3 other tests skip
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][466] ([i915#14098] / [i915#6095]) -> [SKIP][467] ([i915#14544]) +14 other tests skip
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][468] ([i915#14544]) -> [SKIP][469] ([i915#14098] / [i915#6095]) +8 other tests skip
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][470] ([i915#6095]) -> [SKIP][471] ([i915#14098] / [i915#6095]) +1 other test skip
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-rkl:          [SKIP][472] ([i915#3742]) -> [SKIP][473] ([i915#14544] / [i915#3742])
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_cdclk@mode-transition-all-outputs.html
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-rkl:          [SKIP][474] ([i915#14544] / [i915#3742]) -> [SKIP][475] ([i915#3742])
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_cdclk@plane-scaling.html
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-rkl:          [SKIP][476] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][477] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-fast.html
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          [SKIP][478] ([i915#11151] / [i915#7828]) -> [SKIP][479] ([i915#11151] / [i915#14544] / [i915#7828]) +10 other tests skip
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          [SKIP][480] ([i915#12655] / [i915#14544] / [i915#3555]) -> [SKIP][481] ([i915#12655] / [i915#3555])
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_color@deep-color.html
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          [SKIP][482] ([i915#14544]) -> [SKIP][483] ([i915#3116])
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0.html
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][484] ([i915#9424]) -> [FAIL][485] ([i915#7173])
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-5/igt@kms_content_protection@lic-type-0.html
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][486] ([i915#9424]) -> [SKIP][487] ([i915#9433])
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-17/igt@kms_content_protection@mei-interface.html
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-13/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          [SKIP][488] ([i915#7118] / [i915#9424]) -> [SKIP][489] ([i915#14544])
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_content_protection@uevent.html
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-rkl:          [SKIP][490] ([i915#13049]) -> [SKIP][491] ([i915#14544])
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-512x512.html
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-rkl:          [SKIP][492] ([i915#14544]) -> [FAIL][493] ([i915#13566])
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_cursor_crc@cursor-random-256x85.html
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_cursor_crc@cursor-random-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-rkl:          [SKIP][494] ([i915#14544]) -> [SKIP][495] ([i915#3555]) +1 other test skip
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x32.html
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          [SKIP][496] ([i915#14544]) -> [SKIP][497] ([i915#13049]) +2 other tests skip
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][498] ([i915#3555]) -> [SKIP][499] ([i915#14544]) +6 other tests skip
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_edge_walk@64x64-left-edge:
>     - shard-rkl:          [SKIP][500] ([i915#14544]) -> [DMESG-WARN][501] ([i915#12964]) +3 other tests dmesg-warn
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_cursor_edge_walk@64x64-left-edge.html
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_cursor_edge_walk@64x64-left-edge.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          [SKIP][502] -> [SKIP][503] ([i915#14544]) +17 other tests skip
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          [SKIP][504] ([i915#9067]) -> [SKIP][505] ([i915#14544])
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [SKIP][506] ([i915#4103]) -> [SKIP][507] ([i915#14544])
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][508] ([i915#9723]) -> [SKIP][509] ([i915#14544])
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          [SKIP][510] ([i915#14544]) -> [SKIP][511] ([i915#3555] / [i915#3804])
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-rkl:          [SKIP][512] ([i915#13749]) -> [SKIP][513] ([i915#14544])
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_dp_link_training@non-uhbr-sst.html
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-rkl:          [SKIP][514] ([i915#13707]) -> [SKIP][515] ([i915#14544])
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          [SKIP][516] ([i915#3840]) -> [SKIP][517] ([i915#14544])
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          [SKIP][518] ([i915#14544]) -> [SKIP][519] ([i915#3555] / [i915#3840]) +1 other test skip
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][520] ([i915#3955]) -> [SKIP][521] ([i915#14544] / [i915#3955])
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_fbcon_fbt@psr.html
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-rkl:          [SKIP][522] ([i915#1839]) -> [SKIP][523] ([i915#14544] / [i915#1839]) +1 other test skip
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_feature_discovery@display-3x.html
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          [SKIP][524] ([i915#14544] / [i915#658]) -> [SKIP][525] ([i915#658])
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_feature_discovery@psr1.html
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-rkl:          [SKIP][526] ([i915#9934]) -> [SKIP][527] ([i915#14544] / [i915#9934]) +9 other tests skip
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-nonexisting-fb-interruptible:
>     - shard-rkl:          [SKIP][528] ([i915#14544] / [i915#9934]) -> [SKIP][529] ([i915#9934]) +1 other test skip
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_flip@2x-nonexisting-fb-interruptible.html
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_flip@2x-nonexisting-fb-interruptible.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible:
>     - shard-rkl:          [SKIP][530] ([i915#14544] / [i915#3637]) -> [DMESG-WARN][531] ([i915#12964]) +1 other test dmesg-warn
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-rkl:          [SKIP][532] ([i915#2672] / [i915#3555]) -> [SKIP][533] ([i915#14544] / [i915#3555]) +2 other tests skip
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          [SKIP][534] ([i915#14544] / [i915#3555]) -> [SKIP][535] ([i915#2672] / [i915#3555]) +1 other test skip
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][536] -> [SKIP][537] ([i915#14544] / [i915#1849] / [i915#5354])
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][538] ([i915#1825]) -> [SKIP][539] ([i915#14544] / [i915#1849] / [i915#5354]) +40 other tests skip
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-dg1:          [SKIP][540] ([i915#4423]) -> [SKIP][541]
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][542] ([i915#4423] / [i915#8708]) -> [SKIP][543] ([i915#8708])
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
>     - shard-dg1:          [SKIP][544] -> [SKIP][545] ([i915#4423])
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          [SKIP][546] ([i915#9766]) -> [SKIP][547] ([i915#14544] / [i915#1849] / [i915#5354])
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2:          [SKIP][548] ([i915#3458]) -> [SKIP][549] ([i915#10433] / [i915#3458]) +2 other tests skip
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][550] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][551] ([i915#3023]) +15 other tests skip
>    [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
>    [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          [SKIP][552] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][553] ([i915#1825]) +25 other tests skip
>    [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
>    [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          [SKIP][554] ([i915#3023]) -> [SKIP][555] ([i915#14544] / [i915#1849] / [i915#5354]) +26 other tests skip
>    [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-mtlp:         [SKIP][556] ([i915#12713]) -> [SKIP][557] ([i915#1187] / [i915#12713])
>    [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-mtlp-5/igt@kms_hdr@brightness-with-hdr.html
>    [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
>     - shard-rkl:          [SKIP][558] ([i915#14544]) -> [SKIP][559] ([i915#12713])
>    [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html
>    [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          [SKIP][560] ([i915#3555] / [i915#8228]) -> [SKIP][561] ([i915#14544]) +1 other test skip
>    [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_hdr@static-toggle.html
>    [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          [SKIP][562] ([i915#12388] / [i915#14544]) -> [SKIP][563] ([i915#12388])
>    [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          [SKIP][564] ([i915#12394]) -> [SKIP][565] ([i915#12394] / [i915#14544]) +1 other test skip
>    [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>    [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-rkl:          [SKIP][566] ([i915#13958]) -> [SKIP][567] ([i915#14544]) +1 other test skip
>    [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-4.html
>    [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-rkl:          [SKIP][568] ([i915#14544]) -> [SKIP][569] ([i915#14259])
>    [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html
>    [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-dg1:          [SKIP][570] ([i915#3555] / [i915#4423]) -> [SKIP][571] ([i915#3555]) +1 other test skip
>    [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>    [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
>     - shard-dg1:          [SKIP][572] ([i915#12247] / [i915#4423]) -> [SKIP][573] ([i915#12247])
>    [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
>    [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][574] ([i915#12247]) -> [SKIP][575] ([i915#12247] / [i915#14544]) +1 other test skip
>    [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
>    [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][576] ([i915#12247]) -> [SKIP][577] ([i915#12247] / [i915#14544] / [i915#8152]) +3 other tests skip
>    [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
>    [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          [SKIP][578] ([i915#5354]) -> [SKIP][579] ([i915#14544] / [i915#5354])
>    [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-2/igt@kms_pm_backlight@bad-brightness.html
>    [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          [SKIP][580] ([i915#12343]) -> [SKIP][581] ([i915#12343] / [i915#14544])
>    [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_pm_backlight@brightness-with-dpms.html
>    [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          [SKIP][582] ([i915#14544] / [i915#3828]) -> [SKIP][583] ([i915#3828])
>    [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
>    [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][584] ([i915#4281]) -> [SKIP][585] ([i915#14544] / [i915#4281])
>    [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html
>    [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          [SKIP][586] ([i915#8430]) -> [SKIP][587] ([i915#14544] / [i915#8430])
>    [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_pm_lpsp@screens-disabled.html
>    [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][588] ([i915#9519]) -> [SKIP][589] ([i915#14544] / [i915#9519]) +1 other test skip
>    [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@pm-caching:
>     - shard-rkl:          [DMESG-WARN][590] ([i915#12964]) -> [SKIP][591] ([i915#12916])
>    [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_pm_rpm@pm-caching.html
>    [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-3/igt@kms_pm_rpm@pm-caching.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-rkl:          [SKIP][592] ([i915#12916]) -> [SKIP][593] ([i915#14544])
>    [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_pm_rpm@pm-tiling.html
>    [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          [SKIP][594] ([i915#6524]) -> [SKIP][595] ([i915#14544] / [i915#6524])
>    [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_prime@d3hot.html
>    [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][596] ([i915#11520] / [i915#14544]) -> [SKIP][597] ([i915#11520]) +5 other tests skip
>    [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
>    [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][598] ([i915#11520]) -> [SKIP][599] ([i915#11520] / [i915#14544]) +9 other tests skip
>    [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
>    [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
>     - shard-dg1:          [SKIP][600] ([i915#11520] / [i915#4423]) -> [SKIP][601] ([i915#11520])
>    [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-14/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html
>    [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-18/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-rkl:          [SKIP][602] ([i915#14544] / [i915#9683]) -> [SKIP][603] ([i915#9683])
>    [602]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html
>    [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          [SKIP][604] ([i915#9683]) -> [SKIP][605] ([i915#14544] / [i915#9683]) +1 other test skip
>    [604]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-8/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr-sprite-plane-move:
>     - shard-rkl:          [SKIP][606] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][607] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html
>    [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_psr@psr-sprite-plane-move.html
>     - shard-dg1:          [SKIP][608] ([i915#1072] / [i915#9732]) -> [SKIP][609] ([i915#1072] / [i915#4423] / [i915#9732])
>    [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-dg1-16/igt@kms_psr@psr-sprite-plane-move.html
>    [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-dg1-17/igt@kms_psr@psr-sprite-plane-move.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          [SKIP][610] ([i915#1072] / [i915#9732]) -> [SKIP][611] ([i915#1072] / [i915#14544] / [i915#9732]) +22 other tests skip
>    [610]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_psr@psr2-sprite-mmap-cpu.html
>    [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          [SKIP][612] ([i915#9685]) -> [SKIP][613] ([i915#14544] / [i915#9685])
>    [612]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][614] ([i915#5289]) -> [SKIP][615] ([i915#14544]) +1 other test skip
>    [614]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>    [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-rkl:          [SKIP][616] ([i915#14544] / [i915#3555]) -> [SKIP][617] ([i915#3555]) +1 other test skip
>    [616]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html
>    [617]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-rkl:          [SKIP][618] ([i915#9906]) -> [SKIP][619] ([i915#14544])
>    [618]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-3/igt@kms_vrr@max-min.html
>    [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          [SKIP][620] ([i915#14544]) -> [SKIP][621] ([i915#9906])
>    [620]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
>    [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-rkl:          [SKIP][622] ([i915#14544] / [i915#2437]) -> [SKIP][623] ([i915#2437])
>    [622]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html
>    [623]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          [SKIP][624] ([i915#2434]) -> [SKIP][625] ([i915#14544] / [i915#2434])
>    [624]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-7/igt@perf@mi-rpc.html
>    [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-6/igt@perf@mi-rpc.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          [SKIP][626] ([i915#14544] / [i915#3708]) -> [SKIP][627] ([i915#3708])
>    [626]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
>    [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-2/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          [SKIP][628] ([i915#14544] / [i915#9917]) -> [SKIP][629] ([i915#9917])
>    [628]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16951/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
>    [629]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
>   [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
>   [i915#12518]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12518
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12797]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13335
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784
>   [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14559]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14559
>   [i915#14694]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#14756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14756
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
>   [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16951 -> Patchwork_151748v5
> 
>   CI-20190529: 20190529
>   CI_DRM_16951: 88abc8239a17ea427f6d6bef8f9807fde5bf7cfb @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8482: 8482
>   Patchwork_151748v5: 88abc8239a17ea427f6d6bef8f9807fde5bf7cfb @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151748v5/index.html
