Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9C195F749
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 19:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF6C410E260;
	Mon, 26 Aug 2024 17:00:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OHiHduhr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C124F10E132
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2024 17:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724691648; x=1756227648;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MQOR7jil5gcVsWIZSC79RyM88rIR4hb/Ue7QSRQXpxk=;
 b=OHiHduhrHln+FbmW4j3j85cE6z8ZMroe2bz8YiyJwY19SoZbo8pDln1M
 9KtAPs5pqLGGCoY07oYzst4G4Pn8buDY3wWcnvsWRBK12qwMLAJGdqkwR
 p1bgoXJzkAmqAAV8IhcqCiOgJqB1tNQ55wxkw6f1vZJNh2GDUwFx8lr/U
 ICU+M79vy3KWkkXMqGgc8tSW6IPzOjQ4L0ogrl/3jzkU74oCB/5hmkAl+
 xaoyjOnC3dAfntJ3vC5HcG6QubCFnUPCTzKxQ7UL9PcWv4Kkmrztr1LRT
 PRoml4lN7Z3y5ImR7aE7fgopPD0v54mQXZdBawQhjlNVKR5ctBq1OAaLT Q==;
X-CSE-ConnectionGUID: +0/bkBGTQUac9uGz/XG5RA==
X-CSE-MsgGUID: 2AVmTU8GTa2m0IV4/nf1PA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="26026248"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="26026248"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 10:00:48 -0700
X-CSE-ConnectionGUID: XN73/mZZQl+9TrrnI48jbQ==
X-CSE-MsgGUID: oN35RwoqR+mEnyZTWyRx0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="85774819"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 10:00:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 10:00:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 10:00:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 10:00:43 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 10:00:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pXg82vmIEXYbNMqtSAswF2TYcbC8lAIeC4Yi/72nc6ZebNUy6QZp9CAW0PwKc+u9ngF8pZDaYIwC9cNoWNs0kOX9NJgPvdigeU5b+nvqGQKuBoHcxd4Vr0kzC6L9MRnXvtl49GxBBI+VMgKl6hKO50oQndxfhbIAhbK0BPEWGQUhPHDE2yo2NkrIYACb/bybCMd3cvmXYW3f3eLFTAkFtbiReh/UbDy6eWCQDlLRdlPMKA05iSUgY2Mk7YoL8YCzikL5pBDzDkEFtHXD0sbNk2UqwNgXPl6gHKs1D/eClro50wSGWkRnknFa+nCOhltJwL+IYW1tjgtjhAUNwiUfcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wPCU4Fsfpd2ppAQj9EQJJpBkxPIP1AmpqTcAi6koTcM=;
 b=SngfGd8NXlLVWmBJSZj6Hzo38imcX6JFIIxZqP0OWWy4UxRcOuN64Vxyt/6fvzZ0/uHbuMvMSqdyfQpWAA7k9MFcYDJE7AzrGCd0J6kKy+9A+ZP9d5sfLAJhBJoiVGtfn3lEcJxw/rve2Hhg7kFeVZMOTZaukDRqYZiu0CLrFw8ixj+pWr/Tf23nYGcV7VAU3sux9E5wpjFNUiIoWQK1MqbOA8gtCBBvoPb5o1Dzfpz5ou/LkasaH5zmHZYkSpiazEJgwnxW66AHxWyOpNDYRCAuW19cNO9AbjtpFy/IrOlNzxFd//FYsu0cx7OURxuItZ7Yzg5hMQw1Kl3GMHXosQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA2PR11MB4924.namprd11.prod.outlook.com (2603:10b6:806:113::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.18; Mon, 26 Aug
 2024 17:00:10 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7897.021; Mon, 26 Aug 2024
 17:00:10 +0000
Date: Mon, 26 Aug 2024 10:00:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915/display: correct dual pps handling for MTL_PCH+
Message-ID: <20240826170007.GB5091@mdroper-desk1.amr.corp.intel.com>
References: <20240801111141.574854-1-dnyaneshwar.bhadane@intel.com>
 <172258287417.502429.17165387604242704891@2413ebb6fbb6>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <172258287417.502429.17165387604242704891@2413ebb6fbb6>
X-ClientProxiedBy: SJ0PR05CA0003.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::8) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA2PR11MB4924:EE_
X-MS-Office365-Filtering-Correlation-Id: d41e0946-15b0-4bc2-492a-08dcc5f08b45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oCLNN04xhvk7zC3zQwZvhGC/gGghVAX9Ka5WD0k5WzMj8R9MO4Xif5fiMAkI?=
 =?us-ascii?Q?R9rEAvTVWnTXninKHrIIqomfPj0enxVMI+od2bJGqJma9IUvLkv/P6sbfPO1?=
 =?us-ascii?Q?5qIO8do10p94wsPlIOL7gW4FqInL6Ip0Vi6nqYyMODc1Dv3NyOxIWlXKUpzM?=
 =?us-ascii?Q?G+GKDzX2d9pZgWOp1DZYp7lhKWgMzvV+nRFTB+ktuO+9Q4xkVmligBF5E6Kk?=
 =?us-ascii?Q?KFvGFD6B61o1LDpB6AJNba/ggCJXu1NOasM/6D0Eh34KEv1u7O9pDlUow6ZW?=
 =?us-ascii?Q?d8ND3tq7cQSwhIRXlXRokrVVWugrRXN1Ra+ZkWEI9jCFxcu+AWXxGPUaceOR?=
 =?us-ascii?Q?QF6fETEkCbxk8Ae/JgltCMjN0zmgIXFO0vSEonMhoAVq4lKzdR99c3YSH/fg?=
 =?us-ascii?Q?MelMLrUJ1X8IjMRzYY0/cbrSRqh6o1bkoaTQzOtMGxvWVcWFis34YeJv+582?=
 =?us-ascii?Q?Q3I7na7zhM10FMvDvgqFqjPD+7AGNvIOgSEABmTKqEfucryzz/flp//ORGjh?=
 =?us-ascii?Q?+IQLrr5Qko5+QzXqR2Uc/D485OfwVgN5IygG6E5UASclbTpMeR36irRRwz6K?=
 =?us-ascii?Q?keCL1P7K8Of/qUErzdcT2lWhK8iuwW9hsBSKPWdNEAeQfJsSxSmfbWtDpU28?=
 =?us-ascii?Q?xs/my5pQhLt3RxUZN3ZpFixEDp3NaYlVGl/SehSFHMLe1EfacBG5yjh5sf2w?=
 =?us-ascii?Q?W4kjX34lI8pXmZR2p82d9K/NH3e0Ew7p9Gc/vp/z/25dNjI+uWQCLPncvMQf?=
 =?us-ascii?Q?j+a2orDlA6X0Y2ej9B+OqLx3HT6HxrAiLLZcrVg854JZKOTHuhvENzmrg5RC?=
 =?us-ascii?Q?/g/3xaOX0j5HTbTpOK4JSXsUtJiDR7k0VjDq+d/REfbT9anHji/JjzHI9PKc?=
 =?us-ascii?Q?0B0K3/kXl06lH/LGdjrgRMf60pJUhqjuF0rx96zJEFGuNBCN050niNNGytqv?=
 =?us-ascii?Q?XfMUN/DpOgcYHuy00byhZit9qwDccvatLGttdRBkacL5Y883BNYD1GSbJWr4?=
 =?us-ascii?Q?Wgp7eFwOHw25o6j73fqBd+kFopzJaVGn+ceRK6wPRBADpjyog8OgCeFkFmal?=
 =?us-ascii?Q?R727jU4ZX/xkl24BILL0E5QEbeDY7L0ZYUIai5pMkPk11JtfXHXkTKv06LPT?=
 =?us-ascii?Q?NGq6uKgbRWcDUDTZ8gczgSge2/21nxFLPOw4E4IXwM0u+eIwwng8HMiW/sVo?=
 =?us-ascii?Q?+ym8cdfnUM2ngvpZQdOE+P5BhkkagszQQIOFzfbgQLv5ZlvoUevXVoglgd0c?=
 =?us-ascii?Q?9b9XzVdWNXZK2JIJedrzzniBOn8VR4YbtrWygYszwGUYcIHb46BSLv5xkpyF?=
 =?us-ascii?Q?nrE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fSLc+8Fk8UQs7P3tt2PNDFS9PG5Tr9CH5Qd3daugcLxE85Y4x0S9y+quC6JK?=
 =?us-ascii?Q?9ecqP+x0w6WbA65161GF6eBRx1xUkV6RPG1MvpsSSmyh95kkQi9FV9ActBe7?=
 =?us-ascii?Q?sm9+QddoqIxPBvf1nhAkaTJdRQh+3vjihoqfcvHKkzm1Op3utmQsjyc76RoG?=
 =?us-ascii?Q?RB1MdU+SKLoJBjapHE7YfM1j3HkxDEUtrzf9xlbcZS3qb7i424/GlV1arZ5b?=
 =?us-ascii?Q?9gnb8vkU7Y8PCS5mMMA3Q40Nle0FnhuF3OWG0SWrruWElR5HZkJB1o/2FbSH?=
 =?us-ascii?Q?8jL9L+MuCSc+tFj/aVX8C+DX2w5tHSznFvV8RQaDjcoxWYiZvZZoNP8dy6wO?=
 =?us-ascii?Q?QYgt0NFVBghoCXAfqw2XjwqA+/pGrdClo5wk76w+klYjBlAMMd/gCITiPfOg?=
 =?us-ascii?Q?TyIVYKRxEAoQn2Wc0St8crpzJuUHMDsETgfUgmaDhxHUd9YlYyGINQypd/Jc?=
 =?us-ascii?Q?3Fd+XbHx559RUfGCIWA0lnI8Oc/ZIQg11qUykZZbUiDxrPHtKvFccofTlfa8?=
 =?us-ascii?Q?qR3IkM5q3zKLgbSGh8t5bWdVVD80N12oRZo3bQR4yfYN+glkAmGZRgalAALa?=
 =?us-ascii?Q?XFRvLWIhvh+E/qr6dw8yW9v7mJKqW6R6ap5s2m+sxzmhXe0vEt5MJxiRgwfU?=
 =?us-ascii?Q?v5JW5NraKxNkGiQKQ+E+yhNByUk4ozhI0V+tsQ6H9LJWY1uJE8XfOfPheIXk?=
 =?us-ascii?Q?piK7deprDyG+EdoRseg4Wi3I2uJi8n5J7E+n8DfLIbzeeJtG2kWudPS2LwjT?=
 =?us-ascii?Q?EJ9FsN203BtHhKX79YBa1nCogRDC8/OJX+wdwAiWkyI21f9cXimf77PSEUEw?=
 =?us-ascii?Q?ciZvO0w4WybX8eiXx9WOhiJ6uwTJsdnRxL1M25hASER/3nfUIIwwu9Jesjo+?=
 =?us-ascii?Q?WjwCrGwd4gyxFn5RDJovNYjvK5LLCGIIHiSgjjzVJOA53+BB8aZXoSFm+yQO?=
 =?us-ascii?Q?os65cmSSCZd2WvIolk/44ckZfvAFiNH6UOQ5WWysdS3onFGXvg6le3N/1Z7M?=
 =?us-ascii?Q?Vt14qmyPUUmgzvKCVjiJKyQu8+ekPqWGnR4VEMi5/v/osWgAEZ6agut+TVXh?=
 =?us-ascii?Q?rDtl5InZy6JP3k8T8BuuBSXM5UWcp8GD6fFheqARQFzTb8eOwM4GB+jWBZ6F?=
 =?us-ascii?Q?D0k72Dg+1fJh2unbyp1SvldJF0BKleF/bnsJNmBHaCPk8rBqMwEa2UKWtV6e?=
 =?us-ascii?Q?PimuTGCj3PK89Wr5PBM0Rpw4lthtNi7An+9fLglRzv/Kuli96B4f+fPPwBNk?=
 =?us-ascii?Q?IR2FZp90MAtK+M8B67u+GKfb6j814DfOedCevIDXnlQaC6661B9y2iJjuTqZ?=
 =?us-ascii?Q?QyTrMWwn8+oaFynWaXyqHZ3KglG25edGKNpzuGoQBsc7xP/NzF+5AbXEAPkX?=
 =?us-ascii?Q?JFgvkgKKHaVJ1XT5KzW6z8Em7+fJ0Zim614m6QvjUpjxZyeYm0z92GOnmxqT?=
 =?us-ascii?Q?PxEgeP/6BOf0vPbZUMgD5SW4uhERrZIATVM4eRSzlmQZPxXdf5i7FfYgtKXH?=
 =?us-ascii?Q?EQzGvOYkI8jaixXgltdQWiKrEut0ElRHi/w23WOSsnrZHK0XwMn5MilO/cDB?=
 =?us-ascii?Q?2SnTwIVdlUS7NVxEbFZBqBzI5DprQg+Fox9IS0SguDVbNcCzddL4aJusZy0f?=
 =?us-ascii?Q?7A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d41e0946-15b0-4bc2-492a-08dcc5f08b45
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2024 17:00:10.1264 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i9OGueoHO6tTsyI/3/h91Q7EmAfimZRJUX+HSOoEdPKeC1MkncDRzp6FnoEcnYw/6QWXZAOYE8qRUsj1hCAd9WHwCa9JWaqTL8ac7QDL0d8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4924
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

On Fri, Aug 02, 2024 at 07:14:34AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: correct dual pps handling for MTL_PCH+
> URL   : https://patchwork.freedesktop.org/series/136796/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15168_full -> Patchwork_136796v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_136796v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_136796v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-glk-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_136796v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf@psr2-pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [ABORT][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf@psr2-pipe-b-edp-1.html

Neither of these display failures is related to the extra whitelist
entry added here.

It looks like [v2] dropped the bspec reference in the commit message;
even if the KMD isn't the one doing the programming, that page is still
the justification for us whitelisting this register, so I re-added that
and pushed to drm-intel-gt-next.  Thanks for the patch.


Matt


> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_136796v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#6230])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@api_intel_bb@crc32.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          NOTRUN -> [ABORT][5] ([i915#11814] / [i915#11815])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][6] ([i915#7742]) +1 other test fail
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@drm_fdinfo@isolation@vcs1:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8414]) +14 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@drm_fdinfo@isolation@vcs1.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [PASS][8] -> [FAIL][9] ([i915#7742])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle-all:
>     - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8414])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#7697])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@gem_close_race@multigpu-basic-process.html
>     - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#7697])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#8562])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#8555])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#280]) +1 other test skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-rkl:          NOTRUN -> [ABORT][16] ([i915#7975] / [i915#8213])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#4036])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#4525])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-none-rrul:
>     - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#3539] / [i915#4852]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_exec_fair@basic-none-rrul.html
> 
>   * igt@gem_exec_fair@basic-none-share:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#3539] / [i915#4852]) +5 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@gem_exec_fair@basic-none-share.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][21] ([i915#2842]) +1 other test fail
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [PASS][22] -> [FAIL][23] ([i915#2842])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3539]) +1 other test skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@gem_exec_fair@basic-sync.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4812]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_reloc@basic-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#3281]) +2 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@gem_exec_reloc@basic-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#3281]) +10 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#3281]) +11 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-6/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu-active:
>     - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#3281]) +2 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_exec_reloc@basic-write-cpu-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4537] / [i915#4812]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#7276])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4860]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#4860])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][34] ([i915#10378])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#4613]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4613])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#8289])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#4083])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_mmap@basic.html
> 
>   * igt@gem_mmap_gtt@big-bo-tiledx:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4077]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_mmap_gtt@big-bo-tiledx.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4077]) +14 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>     - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4077])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4083]) +3 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gem_mmap_wc@write-cpu-read-wc.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#3282]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3282]) +7 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#3282]) +3 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#4270]) +1 other test skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4270])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4270]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_readwrite@new-obj:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#3282])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@gem_readwrite@new-obj.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#8428])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#8411]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#4079])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#4079]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3297])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#3297] / [i915#4880])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#3297])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#3297])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#2527])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#2856])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#2527]) +5 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#2856]) +4 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [PASS][63] -> [ABORT][64] ([i915#9820])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#6621])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#7984])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@i915_power@sanity.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#5723])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][68] ([i915#9311])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#7707]) +1 other test skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4212]) +2 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#8709]) +7 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#8709]) +11 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#1769] / [i915#3555])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#1769] / [i915#3555])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][75] ([i915#5956])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#5286]) +6 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#5286])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3638])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#3638])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#4538])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4538] / [i915#5190]) +11 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][82] +3 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_joiner@invalid-modeset-force-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#10656]) +2 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_big_joiner@invalid-modeset-force-joiner.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#10307] / [i915#10434] / [i915#6095]) +7 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-10/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#6095]) +3 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#6095]) +75 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#10307] / [i915#6095]) +223 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#6095]) +71 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4087]) +3 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-d-dp-4.html
> 
>   * igt@kms_chamelium_audio@dp-audio-edid:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#7828]) +3 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_chamelium_audio@dp-audio-edid.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][91] +18 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#7828]) +8 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-single:
>     - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#7828])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_chamelium_frames@hdmi-crc-single.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#7828]) +9 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#7116] / [i915#9424])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#9424])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-3/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#9424]) +1 other test skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#6944] / [i915#9424])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_content_protection@uevent.html
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#7118] / [i915#9424]) +1 other test skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_content_protection@uevent.html
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#7118] / [i915#9424]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#3555] / [i915#8814])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#11453])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#11453])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3555]) +7 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#11453])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#3555]) +5 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#4103]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#9809])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4103] / [i915#4213])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#9723])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#1257])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#8812])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#3840])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#3555] / [i915#3840])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-formats.html
>     - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#3555] / [i915#3840])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#3555] / [i915#3840])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#3955])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#1839])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#9337])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#9934]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][121] +31 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#2672]) +4 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
>     - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#2587] / [i915#2672]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#2672])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#2672] / [i915#3555])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#1825]) +2 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][127] +14 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#1825]) +39 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#5354]) +30 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3023]) +30 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#5439])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#9766])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#8708]) +6 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3458]) +14 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#8708]) +1 other test skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#8708]) +19 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#3458]) +4 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3555] / [i915#8228])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_hdr@bpc-switch-dpms.html
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#3555] / [i915#8228])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3555] / [i915#8228]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#6301])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#8821])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#5354] / [i915#9423])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#9423]) +31 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#9423]) +9 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#9423]) +7 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-18/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#9728]) +1 other test skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#5235]) +1 other test skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#5235]) +2 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#9728]) +8 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-16/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#5354])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#5354])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [PASS][153] -> [FAIL][154] ([i915#9295])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-tglu-3/igt@kms_pm_dc@dc6-dpms.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][155] -> [SKIP][156] ([i915#4281])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#9340])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#8430])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][159] -> [SKIP][160] ([i915#9519]) +3 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#9519])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#9519])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#6524] / [i915#6805])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#11520]) +5 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#11520]) +4 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#11520]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#9683])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#9683])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#1072] / [i915#9732]) +18 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr2-basic@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#9688])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_psr@fbc-psr2-basic@edp-1.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#1072] / [i915#9732]) +22 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#1072] / [i915#9732]) +6 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_psr@psr2-suspend.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#11131])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#4235])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#5289])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#5289]) +1 other test skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#11131] / [i915#5190])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-rkl:          [PASS][178] -> [FAIL][179] ([i915#9196])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#9906]) +1 other test skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-15/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#9906])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#2437])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#2437] / [i915#9412]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#2437])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#7387])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@perf@global-sseu-config.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#8850])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-5/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#8516])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#3708] / [i915#4077]) +1 other test skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#3291] / [i915#3708])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-6/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#3708])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-6/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#3708])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#9917])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][193] ([i915#9781])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#4818])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-8/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_lmem_swapping@basic@lmem0:
>     - shard-dg2:          [FAIL][195] ([i915#10378]) -> [PASS][196]
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-2/igt@gem_lmem_swapping@basic@lmem0.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [INCOMPLETE][197] ([i915#4817]) -> [PASS][198]
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][199] ([i915#11808] / [i915#5956]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
> 
>   * igt@kms_cursor_legacy@single-bo@pipe-a:
>     - shard-rkl:          [DMESG-WARN][201] ([i915#10166]) -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-rkl-1/igt@kms_cursor_legacy@single-bo@pipe-a.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-1/igt@kms_cursor_legacy@single-bo@pipe-a.html
> 
>   * igt@kms_cursor_legacy@torture-bo@pipe-a:
>     - shard-tglu:         [DMESG-WARN][203] ([i915#10166]) -> [PASS][204]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-tglu-5/igt@kms_cursor_legacy@torture-bo@pipe-a.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-tglu-5/igt@kms_cursor_legacy@torture-bo@pipe-a.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
>     - shard-dg2:          [FAIL][205] ([i915#6880]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][207] ([i915#9519]) -> [PASS][208] +2 other tests pass
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-10/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [SKIP][209] ([i915#9519]) -> [PASS][210] +2 other tests pass
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
>     - shard-tglu:         [FAIL][211] ([i915#9196]) -> [PASS][212]
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [FAIL][213] ([i915#2876]) -> [FAIL][214] ([i915#2842])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-tglu-3/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][215] ([i915#9433]) -> [SKIP][216] ([i915#9424])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg1-13/igt@kms_content_protection@mei-interface.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg1-18/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-dg2:          [SKIP][217] ([i915#11453]) -> [SKIP][218] ([i915#11453] / [i915#3359])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2:          [SKIP][219] ([i915#11453] / [i915#3359]) -> [SKIP][220] ([i915#11453])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         [ABORT][221] -> [SKIP][222] ([i915#8810])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          [SKIP][223] ([i915#10433] / [i915#3458]) -> [SKIP][224] ([i915#3458]) +2 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][225] ([i915#4070] / [i915#4816]) -> [SKIP][226] ([i915#4816])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [SKIP][227] ([i915#3361]) -> [FAIL][228] ([i915#9295])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_psr@psr2-cursor-plane-move:
>     - shard-dg2:          [SKIP][229] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][230] ([i915#1072] / [i915#9732]) +11 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-11/igt@kms_psr@psr2-cursor-plane-move.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-2/igt@kms_psr@psr2-cursor-plane-move.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][231] ([i915#1072] / [i915#9732]) -> [SKIP][232] ([i915#1072] / [i915#9673] / [i915#9732]) +11 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-8/igt@kms_psr@psr2-primary-mmap-gtt.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-11/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          [SKIP][233] ([i915#11131]) -> [SKIP][234] ([i915#11131] / [i915#4235])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15168/shard-dg2-10/igt@kms_rotation_crc@sprite-rotation-90.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   
>   [i915#10166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#11814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11814
>   [i915#11815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11815
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9728]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15168 -> Patchwork_136796v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15168: e6b1e3660d0168d9860e7cef487aba2bc21611bd @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7950: 7950
>   Patchwork_136796v1: e6b1e3660d0168d9860e7cef487aba2bc21611bd @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136796v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
