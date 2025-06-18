Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B78ADF97A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 00:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF7E210E936;
	Wed, 18 Jun 2025 22:35:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aZbN1OUG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 985A910E936
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 22:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750286140; x=1781822140;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lRhbaNyRsClBhMIWGuvT/xdSkE8vOuh9CY4W1B8LnqY=;
 b=aZbN1OUGt6NXDWV42QKTXqR2yILpbm6+4bc4GKe19GxirxwcjkoATlol
 8rtkS8NNRgiO9xLJYk6bP//UDL+M5F7ZsPE7UHLMTARH2OlAVCWd82vry
 MomqiN8xxH9VwSBom2gTRoYLklwD9ZSqrOORnpG7a3DCbcHVnXGXexqFO
 kwwAkRZN65rqLUmQ0sf7tBcWOCpo8Xds/iYvzgAIZkjEEFEJqNef/ADkE
 qUP5YSvxrCtKV5PoXorWO3osrhs9TO590S0ggk5Pu79aYOILYEGU/gzz/
 egmao0PcVGrUlEfsB9bdiLTxPZHQ5Gs91F4e3weW0kxCz5D0hZ9BXxJR4 w==;
X-CSE-ConnectionGUID: JBuxSqYyQr6tmmA5WQAN7Q==
X-CSE-MsgGUID: wY65aKxXRZS8EcyVV/wT7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="70097404"
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208";a="70097404"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:35:39 -0700
X-CSE-ConnectionGUID: oFgY325RRrSq6kW14RRVhw==
X-CSE-MsgGUID: zTHMs3OLRRe4ZGbyE6YVAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208";a="149877759"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:35:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 15:35:06 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 15:35:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.83)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 15:35:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=axXgLsERbsg30N8E4yKgUefcoConfQmjLpTmpOg8DFgMflXyG+DXchEdHsEWZ+pTEtAAVoSkylKgt2X9ugrnCSPbQem0QJ3fCmC0K7+s0w3yJetI1DOtNC6Q8w9g2S7wUF6Ns0XV7w5DUugeYcENFaxKCLPLhwpp817Q12HynNQbmP4EbUw89twqTR4O4BCj+Ncpr7GivXY9FKUewjGoyGPHtFdIc0infSAkV7UclUEQwNg4p/ocPYfmAjVZr38sZ6xR9TkuQrxj0YwLcT9asJNU4uZKaCKW074eTLj46p6ia4nUcR+SHDbRNgqbMWAbHrQwquHb3GckcbZn3M88UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=avBb/+93tkG0tJFPVPrdq1JPp+l20ZSMTarvx1GWmG0=;
 b=iYqYKGhVXVhZs/2kBjkBonIvIIeV1WRQYMWiAWxi4qQQa88eEuTXd5FDHfyaupUhNEco8ne8DkESjNLw6RvtYE+xEOURtZ1iiQ5I2OxDmr/qzXk7haoOgwOaywM82KIZmvOTZWM5Q00hKpy1tz/5v1IAuB8WodIpxLtf3a4GIfHfcy3uTCBbPcAWGjM2F/ejQYmk0GW9WOGlkJYu/yqaL0Afqj1+KgUuLNKfumyi16SOEXgkpwO19ENe8BkFWN0DnQLLfLkEbSyt7+z3ZIujlqukzpFDOwqGqsbra2qmwdRy39ET5TQXfWkl+TTopidP6cERQkcCxUN60CIMX30YOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ2PR11MB8401.namprd11.prod.outlook.com (2603:10b6:a03:539::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.21; Wed, 18 Jun
 2025 22:34:59 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8857.016; Wed, 18 Jun 2025
 22:34:59 +0000
Date: Wed, 18 Jun 2025 15:34:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFU?= =?utf-8?Q?=3A?= failure for Add
 WildCat Lake support (rev3)
Message-ID: <20250618223455.GA4755@mdroper-desk1.amr.corp.intel.com>
References: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
 <174981434927.76616.11047065380383736968@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174981434927.76616.11047065380383736968@1538d3639d33>
X-ClientProxiedBy: SJ0PR03CA0260.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::25) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ2PR11MB8401:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ba44d3b-6df0-4e52-2184-08ddaeb85b72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YdwD2nWgjKqiZOASg/lK4lC5cyNDVJrTAekSVu7GQfPxeu34XaI4c19nqRs8?=
 =?us-ascii?Q?MeV7pu4TjNnLUAlqSpEiyi6bLDwThXtpicfwf0e1kAiqvIsSXi4txylo5jr+?=
 =?us-ascii?Q?P2FElUbLLA5sScLDbmdws4p8LxJcDt5RaHrSQuU8ouM/5ELtS293HGOGEgna?=
 =?us-ascii?Q?ZA9JubrvQZ5JPxhiCka17ybdKu2h3wcDeIygbOyi+w6acyal95OceY5ZDy7V?=
 =?us-ascii?Q?ljT08aRk+NUa3mFpu7Zuej72A58RPVJz+yrA99ssNvQR91SM9r/j/PtwuZYq?=
 =?us-ascii?Q?FZq++sHHiRW0c4J2Zt2GYdpMl/323ObHzq96NcWc78nzUU2uoamoUxGWAF/b?=
 =?us-ascii?Q?GPjPQWwB2wGfvu3JvF2VN6cQxBb+OJbwz5vtZQwSDjndHsQ4w75lNaVzb0nD?=
 =?us-ascii?Q?3WXDOpVjieWVUOB7Jw0uZVxRQjbJMsg53B18t2tqrncxsm+CyuW41U7QXnQu?=
 =?us-ascii?Q?TB8R/MD62BN6S6trVa64RqIKhN6R9IiG8kMa1h3VkLuoa9QOVmTnrkNwGibR?=
 =?us-ascii?Q?c61j5a03aS+3vgmCkc4YBy6TIXFsQJppu/55+m3E14W3Cx5Qz998ryTU/VB3?=
 =?us-ascii?Q?3Cdn3EbA+zKUE+IhHV7S+8S18SVw79/8f9fGKzJAQsj2oFWcCgp0h3DA2ykp?=
 =?us-ascii?Q?KtpWuxsAzfyAt4jNo41fKPxVCvDRKlBRPFLQkDBcrmuBENPS7RJl9fFaE2nu?=
 =?us-ascii?Q?Muuw8ccB7pTkcd1aZndKKsaXrSMCxh/ytg9d62hi6C4xuzaZvzkC1M2mu4CM?=
 =?us-ascii?Q?A4OyRKG0F4wIM+tjeO9K1GUNkIaUhKAfJGVttvNPf7ZrSm1agsUKTDWBecI8?=
 =?us-ascii?Q?iKe/NM3zwsmQP+e85RszCfTwz4DIex1UC8iCuGLRYnVWywGBSAZnMLG9Xqo7?=
 =?us-ascii?Q?mGSGiqm3wgrPLPDxSKRaimo6Eoawrnf8AdFJcY/R2w1Df9owDHSqWFR4CDnp?=
 =?us-ascii?Q?6b3pLnNINIMRk/g4M7ASeDCL8u+H3vh9fG4+3Yg8yYaBIsn+UCfqTow9+nQo?=
 =?us-ascii?Q?SfKV67bqgHYReDAejBS+hBYCNWnIf6dLqPSlDJsA/tUbPbM3fqOidqlAEzpd?=
 =?us-ascii?Q?fQPhzeLsZzG0xy2TOGxyKOkWPGPmRGkUAfxokd0Og7tmGl946cRnoNKnXVtt?=
 =?us-ascii?Q?ZJiI9jnlre/bwi6c7paGX68vhCrmeURmU0ytn9KYt1n1JJ2nQU5WcrvYY7J0?=
 =?us-ascii?Q?i3HE1lCnu+sRmPAID7Betzgla5+LSxrk3OqZbOas8o5OTRN3huCTSWAcSAwu?=
 =?us-ascii?Q?e50MQ2mnPtH0uF8ZneTfErNtI1wZIjJsdPXLi8+6JdFxNq3rwc4x2MFP0k90?=
 =?us-ascii?Q?/hb8H899PJrSbeUGnYL4BxPRdhWVW5MuguUjaINgq9CKh+Mw6djGJj4wbpGp?=
 =?us-ascii?Q?rnRwlWA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fuBC6kZzpYB2B6uqZTjXNG8UTi0i3ihEBmjVQtiBkG4VoVg4rSoGbkYbbbA4?=
 =?us-ascii?Q?L/rbxLqftuXUH9zZPZGnsF9LpqJo59CfLZ1pM/VF47xAp8kU1d9ElKVvMdWI?=
 =?us-ascii?Q?HzqiIgxVga3jV648tmTHiP4vmLYtV+E5eHzsbub1uk3JN1CT5FO5NbwA6tdE?=
 =?us-ascii?Q?WSuAciVXqHYZBGSBhOIeDXuHOzEJUSNuYJAtGkd4kttCfKQYhwUfI887Tylx?=
 =?us-ascii?Q?ckKKrrT1SbrFfyqP16ZY+1kAmWt8ktctu6+a+lelFkjQvtmnzCNqnKEJwnvK?=
 =?us-ascii?Q?1PnNiTG0yZ+dzQoGrbwLcIB5xaXrvwaa7BC/CwJs8WfdWTjy3K5PqsTr53eN?=
 =?us-ascii?Q?UQhkqUEt51WDhiRG9G5rgcjNrHls468Ilh6DhcnS4zlbVNVWgzds5vrnYFmX?=
 =?us-ascii?Q?gWljS5JEFa/pZrJ/z8FG1TuVAqp6PhfZzKxQFCJAgMbv2I3o9Y62e7EYm7JG?=
 =?us-ascii?Q?1aRIYGioiboHt92IpXc1WeiAlsb12JK5V7fJgUgxnBTgjLBg36/VOusMPSEj?=
 =?us-ascii?Q?tG8Rh2Rc/HBGD14Tb6pL+r3XWz+XhJl+CfU54GGsBj/bvcrrgts+r9ahw454?=
 =?us-ascii?Q?sNqyIi/R185VOV5OFFKMQ7glAW4DG5UwuxGLKThaYyh3Wmt0tIBWbJUOtS+0?=
 =?us-ascii?Q?VFPj/rNUXXBBtfB2MHcsi9MIJuJTqiQ9MNwizLPPS/GyXEm+L/jxkl3/B6Nl?=
 =?us-ascii?Q?9ZwizRjYR1nDW/HoFJUeHhGrlbFgaTA8nrjbWbpBe6Q2WnACV3b3TQoCNeMm?=
 =?us-ascii?Q?foomeA0U+/zA3K6SVvLxtpll2OECQZPs6z/0BBBfhyunkzkt67bQkyUtGP6u?=
 =?us-ascii?Q?qvuHYINi42OX8e4v0pvbkWMEtSR5VPZz17tysU7kOgPVjAG45xlRrre8UnHT?=
 =?us-ascii?Q?bsWwD6MhOUa/2Iqnzx12xKBO7wrRU1D3wfcWeUdFPtPTQ7Rr2MhwdceDkJqO?=
 =?us-ascii?Q?83ILDarA1/rqLi7T6ST5V5xIZOd8ZeGXUcIDR6qAqJmn6sgdbrKDT2absWdg?=
 =?us-ascii?Q?xMIVTEfuzw3fozBnFTIRVKWPtlBM7j3NZOsJ6YcAf3QTcKmNbalhYzxLP0cv?=
 =?us-ascii?Q?xH0bwaqDFtXKpU33c5HWlKpGL6nNNMo4CEPIPYNHV1XzRLfr/CR1GTdNQfoY?=
 =?us-ascii?Q?qw65OQkPbqbpLiyJYPhnCI8lP3LT4bA5zty6jMH7Q6rTycTO37mzuOSo5vQN?=
 =?us-ascii?Q?80jlX1Sa5JnxaqyKfq5RzmJimpq7TlBVjjYRYksvy176zDV4Y4aoMpvHl0wO?=
 =?us-ascii?Q?pR/Az/3rzAVNFltIu59BJLNA8iV7OMv95PvSupqcgAbTlAgMYYWYJ/6KbxtY?=
 =?us-ascii?Q?9f5A3rQSbsJa+1znMI+O5gCh7CJtckXeBdivVJgg/x2WooszYnk5fPSdh/ch?=
 =?us-ascii?Q?gFZnMo2mmmUk9uuKudRFM+rRsHe3MLS9CGs9nHcuKzCKiKLQ4eq2wfFdjxFJ?=
 =?us-ascii?Q?1NkhQT7m0qQ1nE4WzSVNJXpt00bFqjxbQVpOk7YEnlbUNKao/wRiXv/OAnpF?=
 =?us-ascii?Q?SecvXCgiIWCTh7YpsBt90iUCvSjaKYoKVzRJjUauVjbp1js7h9CZsQsNiLlO?=
 =?us-ascii?Q?FXYJ9mjLP56WhhklnnXOvzQO1+7GdFZOCXy6JvNTf89AdwZb8opgUi3ok7bf?=
 =?us-ascii?Q?4Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ba44d3b-6df0-4e52-2184-08ddaeb85b72
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 22:34:58.9847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2RGBLVuHRcFplG7dhWAa4HBfiu6rNE8pDH3cLU9M/uc1VtgzEw/cKYJcsSKMsufMYCf63dEgY1V7EPgfEEZ7vfpo92ZreYOp1PFeXxxUBmw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8401
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

On Fri, Jun 13, 2025 at 11:32:29AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Add WildCat Lake support (rev3)
> URL   : https://patchwork.freedesktop.org/series/150101/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16700 -> Patchwork_150101v3
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_150101v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_150101v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/index.html
> 
> Participating hosts (43 -> 43)
> ------------------------------
> 
>   Additional (1): bat-jsl-1 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_150101v3:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@prime_self_import@basic-with_one_bo:
>     - bat-jsl-1:          NOTRUN -> [ABORT][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@prime_self_import@basic-with_one_bo.html

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14463


Display patches (#1, 4, 5, 7, and 8) applied to drm-intel-next.  Thanks
for the patches and reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_150101v3 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - bat-jsl-1:          NOTRUN -> [SKIP][2] ([i915#2190])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - bat-jsl-1:          NOTRUN -> [SKIP][3] ([i915#7707]) +1 other test skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-jsl-1:          NOTRUN -> [SKIP][4] ([i915#4103]) +1 other test skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - bat-jsl-1:          NOTRUN -> [SKIP][5] ([i915#3555] / [i915#9886])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-jsl-1:          NOTRUN -> [SKIP][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-jsl-1:          NOTRUN -> [SKIP][7] ([i915#3555])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16700 -> Patchwork_150101v3
> 
>   CI-20190529: 20190529
>   CI_DRM_16700: cce8a9af1c6cf1776511aa69e5f4b5bef7bf5938 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8410: 5826cdbf1cb8f5ec8a42bae33deb6b2b63e59e6e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_150101v3: cce8a9af1c6cf1776511aa69e5f4b5bef7bf5938 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
