Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A789B3B26
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 21:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B3610E56E;
	Mon, 28 Oct 2024 20:12:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgB4R1Nb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8366310E56E
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 20:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730146322; x=1761682322;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TONtdroHyANSC9VWU+vc/LFUQ2xAcEk5g/Rn/7jrCoU=;
 b=mgB4R1NbAbi3k+3jRu8TMw68tAWedBKWy3p5EOjZC5Ux1+Ca9hNsZr16
 ZFJd5D/Uh4Q40CZPc7Ebci/W2aDZuNvxSOuzZrMjB7xD7Jn5cbNjU5+RN
 JpY1L5JsmUfkiVuliVGsGXL2NqOxUWwv13MYNXypRv2R8UWu+Q03bvq9a
 eUP6PzcgiKdgaqDBq7A0WCWDkLMefIkdBvAOkN+BNhARsg+OyXxWizsPU
 hPigVojJh/7fSF4mKoBBI9+cBV0TUZY0zbX6jlhNIJ0Ka5qIXrxenaAi3
 wldZaCThsORyOIQ2XR/JZ6Jtw6r2Flzo2FazuXG0zqcxL4Xb1JCaLiDqX g==;
X-CSE-ConnectionGUID: Aolr/wHCSg+FzaKQYk3Jiw==
X-CSE-MsgGUID: 5GdqjDbcTo2tAIry/uOJQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33681713"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33681713"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:12:01 -0700
X-CSE-ConnectionGUID: S/nGfEtfQ56AhbDCMc0mDg==
X-CSE-MsgGUID: E/jLUE3kTuekkThU9RcGuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="85674931"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 13:12:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 13:12:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 13:12:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 13:11:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dGkPEjpPD53gTWUIOvVulb3Krpiszw66fSUB/qSIOQpiusWvVt3BD25habqu0gUMiUgE7KzVppWapzD7BejPguZaszJQqxcExwR00MJERJfzo3eIN5Q2da9f1Y1cF0vUmT8pU70uaCfA6h6JiWYc4mlSR7V3HFqvefWyw/Xcz+9M62D6DGeaItE1qQ4r+dZOXrrCVXIpL3PBFd21DuVT+aR3sX0TRXjjTC0N3sLsRwblInazwlcBHdfg8q997cHo1pmN0RmCy0APOrQKek4N8/gERGPZbWmH+ETtDGsi6Pp4bNkCJpXGqiZQhs5lx4kDz7GHNnIzCiVYlUgVUSwByw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b/jCzbpK0X7BeCAPu1JZtT6JThEAkvEMzsbL97nqrMY=;
 b=WNGqeXl7jY7MzdUY8aaQw0y4faGz/kStQlsDvT21eFiK9x67b1ChiEtOtTVXWq8N/YBxY5Cdc0dXwR36z1EKMcdSAPgwYjUHIv2X1QRWHnR6PNrkTIQ8hI8zGYlM5vAjvztVrNIsashQi4FKxTNzKeDAWCc8YoSMCKIM9B3RE5+ByzAq3WJP76N5TQLkoo9DHitkdTrwCuL3H5Qgk8EWCZhzyL5KL1FaA+2rZiciRPD76BbYhL9unhZcPi2t1R+FHBQ9ktCmYjkk8Nfui9b//N/G/aJuSisElbcAPw0LtDfEGZygyru+l0U08uP2vuc1/m8uErvBNrn0aqrYlSKJsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7483.namprd11.prod.outlook.com (2603:10b6:8:147::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Mon, 28 Oct
 2024 20:11:50 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 20:11:50 +0000
Date: Mon, 28 Oct 2024 13:11:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915: Use string enable/disable choice helpers
Message-ID: <20241028201146.GU4891@mdroper-desk1.amr.corp.intel.com>
References: <20241023054655.4017489-1-sai.teja.pottumuttu@intel.com>
 <172967996585.1323365.10541856547502994907@2413ebb6fbb6>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <172967996585.1323365.10541856547502994907@2413ebb6fbb6>
X-ClientProxiedBy: SJ0PR05CA0190.namprd05.prod.outlook.com
 (2603:10b6:a03:330::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7483:EE_
X-MS-Office365-Filtering-Correlation-Id: e7d50650-30aa-44b9-11a5-08dcf78cc1b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8QtBwtYzrSUAGkc3APaTXbrIknxePeJVqCLpAwrV+Gm0TgUwwbVURvOK+/4b?=
 =?us-ascii?Q?o4EzhzGfAMW9MEPGlNDIXKqAaV6EZeCbFq5UlKiSrh77YXu6DSzWfQG28Q6w?=
 =?us-ascii?Q?a7ARS5Z1rnfgZwVQINbeKIr5xf+wFDzpf0AgtMM23Z4EmBV6EsCJvc/FxzDI?=
 =?us-ascii?Q?LJr9nlt4r6cGoqyDHg09X9oVxesX1jehYMaFzI0+WszP5X7m8QO+JN0VsiIU?=
 =?us-ascii?Q?D80hNj671OrTZ8EVqTCzbT1CXEJPlvANrvgsOfaFFbLxNxOHDJ8M80jd8QEs?=
 =?us-ascii?Q?1ewlEI0u7auglV6PZX8ftJ+CeA7sYQi4wZn6fCMdlPoAhsUPyb14d/GCqjj6?=
 =?us-ascii?Q?c7sR4eMWUj906a+qPL0JGUVFdgX3mB99kBfad/283x3UeQBGYp9vuA8/299N?=
 =?us-ascii?Q?ntN0JGie8RfnTREYE1xZZpz8LFavAIeCq1f+qorCz/FOE9WwlsIPAhQYD2+2?=
 =?us-ascii?Q?r6Mm/Y/VjkA0PP3BZcSUoUBppRnLBckqF2X+5hmJceeU4/jY+tFlk2DHBPse?=
 =?us-ascii?Q?AfyNJVP3TX/1fY7llCal7udMSHsI25vaUjJI/s0/JU4F+YlOeXH0y9ZN1yea?=
 =?us-ascii?Q?SwZ/UBgOXXbbKuvtq55UDNYbdGEcwPfmOeJkqv246cWld8L9T9XiAGKaZpr7?=
 =?us-ascii?Q?rQ1uVgTYmeVWa1GyBfI9Bv4I9hWD4ii3O7J8GdfAZIaRWuNa1APs0kKdMoR8?=
 =?us-ascii?Q?ZCWv7TIab5W/PC+pauFHBnN3e4n5YZC/OkUULehw9UbI7a/pNulHveEE4mJf?=
 =?us-ascii?Q?qpLth7EgyGWQtu2J14kwAOJXJ/QIqm3V7jNC14d8QZ9g+BHg9cFsxWLwx9/O?=
 =?us-ascii?Q?W/ky5QcrzHo1wt4FN4CxUbYC7GN7niyUgmHcEaedan8otPCe7y7YxnEBwyet?=
 =?us-ascii?Q?06qiEjXa82z35EgWcWWfAHcAw4ZB4qTqsgC9tpws0hLhnsm6FZ7JZEbCGXmT?=
 =?us-ascii?Q?9nJGGzhLxDZanYE+yAUZ8QDfUwlhh73vijDz/WX5UtQxW65WjyU/Pmq6yAyy?=
 =?us-ascii?Q?U63PnhI4H09gWvMWM6w0AF3XwLbW63c4PYu0jM7aNgnm3jtHaCnIvu006Y+D?=
 =?us-ascii?Q?/Y3L50e2wdt8Dlk5vSpuSqzuoDiUJ5QjHSz5Aoqvdmi/dmgiYnP5jE7KffQi?=
 =?us-ascii?Q?6o9ia1ea1iekyj7IuyjveSNA+dCU9LzAZEYZucawPXhfQR5cXc14DQe3j9ST?=
 =?us-ascii?Q?Icv5vpG8cYpX9zqDnfS11befNRP9VaJgZL9LFGSIuhgnRYtq2lsJKS6kWmiY?=
 =?us-ascii?Q?BWYkvxWYOormC8AXPyNpuyRIUIw8altzKJ5jr3NFrA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XdauId5FZbM5vt1MKuXqXvhqXRILBW5hHbvT0VT+3NGoEs3vv7DCm3wmaQuk?=
 =?us-ascii?Q?r2BMMJW/yB/Lp2iGsJjpJxGmBG/uY5vIQiCtr3mTFQgYeZ9N32QjrYc15L0j?=
 =?us-ascii?Q?aVmZK9k+H2qXJFQm8NUhOkR03dAqvTAsjfsqHBqXeu9uMV+ZG1WVK6tz6pcO?=
 =?us-ascii?Q?ZWLpK9/B9vueIzdNlBikPetlEO6tvMi7MSV+g2y4H7RnRZ8X/9mf5456S8id?=
 =?us-ascii?Q?g/xFy+SpCYs42xnQBh0iAGc33J0Wl81CHkzFwWWTRkJXWRKFlIxa8zOsQIfi?=
 =?us-ascii?Q?ybKGXXO4A1N+aIn2uQmUM13suMbOdTSZ3nXBktRRexDiEy47UexiiP9eXyFT?=
 =?us-ascii?Q?y1CMP3WK8kK1xfALaAJoj4whBGuM35TeOrp71GtTzTr9oC/dbSYEdvFKU3Bc?=
 =?us-ascii?Q?donM6MtnZ2sZeOLEPemH50p6hGJTWhmlcjfT8aFVB0WOIlWQ/qiTxEu2KfNb?=
 =?us-ascii?Q?9QhtGKWAkshcecJVMARAQi7EIlPBCxI5ssIJUeLb/Df20U661QPXacW2O5Bj?=
 =?us-ascii?Q?M9n0YYav/lY/8TxkbAWNRTJhJvp859vc02rKZqirviI59lyIInMx8KDyuTIB?=
 =?us-ascii?Q?Bdma/PnkeyXCK2nXKjPQUqRirpz9T9DDgxgP6RllntU1JXNay5AVyuKtb84Y?=
 =?us-ascii?Q?KjDjq9GsTp9ytLdBUu0DaW7HcJhNeWEGDD7ePaxC1VpqMF4cZE3lFZ/oe7Kz?=
 =?us-ascii?Q?jdrruByQONlGENLeDHlQss/pJ2yeTsT2MCPN9juD2QIbfOGaYS1BqZ+l89Rf?=
 =?us-ascii?Q?SXxrfw/cYZHg2cqCLcsWDU1qL2n92C51vCzLW/i0a8UYqpeMzbSTJRNMVux4?=
 =?us-ascii?Q?fNF7bbA28BC/YpVMTF3dPb95UPGJjA23IZX0TtJYwZ/dWV1aC/QJzWRC9Z5t?=
 =?us-ascii?Q?FsUtu3c/1cgvYe3UqDeSuMgjSxSjMg19nMExNkDSlv43GIuigexkz9HkDBXv?=
 =?us-ascii?Q?lZPJFYRpjTw/Xds2JGCXsw2xktTUT0x5yYjiS//ptZlWIl05V6e/G4FK4EZb?=
 =?us-ascii?Q?pDL2f57xwO4/M4Rt3EEZX2XrxEx94/KHXe7f/mobcCdKU2jeoP3+XDtXSbFy?=
 =?us-ascii?Q?ZkVrJPAbcbWMvyLADNAQN47Ff0d17it21TcGuvwcJu7STTNroBen055i/6aR?=
 =?us-ascii?Q?vITWAzftj2dpxCVcymkYCX37jOAVngk62fhgpofVgEfR8JB/oFr0+bDvbudi?=
 =?us-ascii?Q?XxCj4Nwbx1/Z8IhY/XVfuyMK9SES7ykdrrSPT2K2uoP8st0FuvVP396+9FvH?=
 =?us-ascii?Q?l6S6xzI3ZrrU3O5vwGnY3qn+DxZhewAZs5VwNtfywQSr4TJivVdZgkLBM+kD?=
 =?us-ascii?Q?4ve9xhZATNAExs8ckSsrbDz4ffVYXBpwUscfPeZQ0+0/WJd5s7Pleum5KYVd?=
 =?us-ascii?Q?PPO0cOMsqp0nCamip/ORcHy9844p1M3OxSVL/v46K4K3wy/GVw6Bzpghzs9h?=
 =?us-ascii?Q?m+6ICTZiQ05QB5sTuZ3aa7CYPnEeDeLo5hgEp/GauJLLC1Vlyu7NEpS6kpWt?=
 =?us-ascii?Q?3msDmnV9mt3CisCBHz/9NvbaVD73qDk72amFXjIwWeWzVcD9BjYHYlpAaiyX?=
 =?us-ascii?Q?lZc2wFxT0pLVGN8C349xmQ7EUZG250h8A0i4itUR2g+vJOrWjYVg1U9ruy2T?=
 =?us-ascii?Q?qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7d50650-30aa-44b9-11a5-08dcf78cc1b2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 20:11:50.1176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4PpjFIqwz5q+dr/9S6q6+4RLehtuEAZ/QvC412p4s91ySeoArjJC5PpnDHBfKxlnOVWM+v8LKkd8QM0zBGDk/Mlsotbxi6xiTDRAu3dxCOY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7483
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

On Wed, Oct 23, 2024 at 10:39:25AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Use string enable/disable choice helpers
> URL   : https://patchwork.freedesktop.org/series/140356/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15581_full -> Patchwork_140356v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**

None of the failures here are related to this patch.

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   Serious unknown changes coming with Patchwork_140356v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_140356v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 8)
> ------------------------------
> 
>   Additional (1): shard-tglu-1 
>   Missing    (2): pig-kbl-iris shard-glk-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_140356v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_whisper@basic-contexts-priority-all:
>     - shard-dg1:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg1-16/igt@gem_exec_whisper@basic-contexts-priority-all.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-13/igt@gem_exec_whisper@basic-contexts-priority-all.html
> 
>   * igt@kms_color@ctm-0-50@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][3] +3 other tests incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-19/igt@kms_color@ctm-0-50@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_color@ctm-0-50@pipe-c-edp-1:
>     - shard-mtlp:         [PASS][4] -> [FAIL][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-mtlp-3/igt@kms_color@ctm-0-50@pipe-c-edp-1.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-2/igt@kms_color@ctm-0-50@pipe-c-edp-1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3:
>     - shard-dg1:          NOTRUN -> [FAIL][6] +1 other test fail
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-12/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_15581_full and Patchwork_140356v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_flip_tiling:
>     - Statuses :
>     - Exec time: [None] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_140356v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-snb:          [PASS][7] -> [ABORT][8] ([i915#11703])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-snb4/igt@core_hotunplug@unbind-rebind.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-snb6/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@debugfs_test@basic-hwmon:
>     - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#9318])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle-all:
>     - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8414])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-17/igt@drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@gem_busy@close-race:
>     - shard-tglu-1:       NOTRUN -> [FAIL][11] ([i915#12297])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@gem_busy@close-race.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#3555] / [i915#9323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][13] -> [INCOMPLETE][14] ([i915#7297])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-rkl:          [PASS][15] -> [FAIL][16] ([i915#12031])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglu-1:       NOTRUN -> [SKIP][17] ([i915#280])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg2:          [PASS][18] -> [FAIL][19] ([i915#5784])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-4/igt@gem_eio@kms.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-4/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@nop:
>     - shard-mtlp:         [PASS][20] -> [DMESG-WARN][21] ([i915#12412])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-mtlp-8/igt@gem_exec_balancer@nop.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-5/igt@gem_exec_balancer@nop.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-tglu-1:       NOTRUN -> [FAIL][22] ([i915#2842]) +1 other test fail
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#3539] / [i915#4852])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-17/igt@gem_exec_flush@basic-wb-rw-default.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3281])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-11/igt@gem_exec_reloc@basic-wc-cpu.html
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#3281])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@gem_exec_reloc@basic-wc-cpu.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][26] -> [INCOMPLETE][27] ([i915#11441]) +1 other test incomplete
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-glk:          NOTRUN -> [SKIP][28] ([i915#4613])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk9/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][29] ([i915#4613]) +2 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_mmap@bad-offset:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4083])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@gem_mmap@bad-offset.html
> 
>   * igt@gem_mmap_gtt@medium-copy-xy:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4077])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-11/igt@gem_mmap_gtt@medium-copy-xy.html
>     - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#4077]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@gem_mmap_gtt@medium-copy-xy.html
> 
>   * igt@gem_mmap_gtt@zero-extend:
>     - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#4077])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-16/igt@gem_mmap_gtt@zero-extend.html
> 
>   * igt@gem_mmap_wc@read-write:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4083])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-4/igt@gem_mmap_wc@read-write.html
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#4083])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-15/igt@gem_mmap_wc@read-write.html
> 
>   * igt@gem_partial_pwrite_pread@write-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#3282])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-14/igt@gem_partial_pwrite_pread@write-snoop.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#4270])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-14/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4270])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-tglu-1:       NOTRUN -> [SKIP][39] ([i915#4270]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#8428])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-3/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-tglu-1:       NOTRUN -> [SKIP][41] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [PASS][42] -> [ABORT][43] ([i915#9820])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-rkl:          [PASS][44] -> [ABORT][45] ([i915#9820])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu-1:       NOTRUN -> [ABORT][46] ([i915#9820])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][47] ([i915#8399]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>     - shard-dg1:          [PASS][48] -> [FAIL][49] ([i915#3591]) +2 other tests fail
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu-1:       NOTRUN -> [SKIP][50] ([i915#6245])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@i915_query@hwconfig_table.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#8709]) +3 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#8709]) +7 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-16/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][53] ([i915#5286]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#5286])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] +4 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4538])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-14/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-snb:          NOTRUN -> [SKIP][57] +19 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-snb7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#6095]) +103 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#6095]) +34 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][60] +36 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk9/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#6095]) +75 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#10307] / [i915#10434] / [i915#6095])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs:
>     - shard-dg2:          [PASS][63] -> [SKIP][64] ([i915#9197]) +6 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-d-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#10307] / [i915#6095]) +116 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-d-dp-3.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#6095]) +9 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][67] ([i915#12313])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm:
>     - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#7828])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-tglu-1:       NOTRUN -> [SKIP][69] ([i915#7828]) +3 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][70] ([i915#7173])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#6944] / [i915#9424])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][72] ([i915#3116] / [i915#3299])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-256x85:
>     - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#8814])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][75] ([i915#3555]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][76] +4 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>     - shard-glk:          [PASS][77] -> [INCOMPLETE][78] ([i915#2295])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          ([PASS][79], [PASS][80]) -> [FAIL][81] ([i915#2346])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-snb:          [PASS][82] -> [FAIL][83] ([i915#2346])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>     - shard-mtlp:         [PASS][84] -> [FAIL][85] ([i915#2346])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-mtlp-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#9723])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#8588])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#3804])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][89] ([i915#3840] / [i915#9053])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#1839])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-2/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#658])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#3637]) +2 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#5354]) +2 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
>     - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#3637])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#9934])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-17/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][96] ([i915#2122]) +1 other test fail
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@blocking-wf_vblank@b-hdmi-a2:
>     - shard-rkl:          [PASS][97] -> [FAIL][98] ([i915#12457])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-1/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank:
>     - shard-rkl:          [PASS][99] -> [FAIL][100] ([i915#2122])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:
>     - shard-rkl:          [PASS][101] -> [FAIL][102] ([i915#11961])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1:
>     - shard-mtlp:         [PASS][103] -> [INCOMPLETE][104] ([i915#6113])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-mtlp-7/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-6/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
>     - shard-snb:          [PASS][105] -> [INCOMPLETE][106] ([i915#4839]) +1 other test incomplete
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-snb5/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race:
>     - shard-dg2:          [PASS][107] -> [SKIP][108] ([i915#5354]) +2 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_flip@modeset-vs-vblank-race.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_flip@modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate:
>     - shard-dg1:          [PASS][109] -> [FAIL][110] ([i915#2122])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg1-17/igt@kms_flip@plain-flip-fb-recreate.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-12/igt@kms_flip@plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [FAIL][111] ([i915#2122])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-6/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [FAIL][112] ([i915#11989])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-6/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-tglu:         [PASS][113] -> [FAIL][114] ([i915#2122]) +1 other test fail
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-tglu-3/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-8/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible:
>     - shard-dg2:          [PASS][115] -> [FAIL][116] ([i915#2122])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-8/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-10/igt@kms_flip@wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@c-dp3:
>     - shard-dg2:          NOTRUN -> [FAIL][117] ([i915#2122]) +2 other tests fail
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-10/igt@kms_flip@wf_vblank-ts-check-interruptible@c-dp3.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#2587] / [i915#2672]) +1 other test skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#2672]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#2672] / [i915#3555]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][121] +7 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#8708])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#1825]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][124] +36 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#3458])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#3458])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#8708])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [PASS][128] -> [SKIP][129] ([i915#3555] / [i915#8228]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#3555] / [i915#8228]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_invalid_mode@zero-vdisplay:
>     - shard-dg2:          [PASS][131] -> [SKIP][132] ([i915#3555])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_invalid_mode@zero-vdisplay.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_invalid_mode@zero-vdisplay.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#10656])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#12339])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-4/igt@kms_joiner@basic-ultra-joiner.html
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#12339])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-15/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#1839])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          [PASS][137] -> [FAIL][138] ([i915#8292])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][139] ([i915#8292])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][140] ([i915#8292])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#12247]) +13 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
>     - shard-dg2:          [PASS][142] -> [SKIP][143] ([i915#12247] / [i915#8152] / [i915#9423])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a:
>     - shard-dg2:          [PASS][144] -> [SKIP][145] ([i915#12247]) +2 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d:
>     - shard-dg2:          [PASS][146] -> [SKIP][147] ([i915#12247] / [i915#8152])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#12247] / [i915#3555])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [PASS][149] -> [FAIL][150] ([i915#9295])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#9685])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [PASS][152] -> [SKIP][153] ([i915#9519])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#11520])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-11/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
>     - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#12316]) +1 other test skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][156] ([i915#11520])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk7/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:
>     - shard-snb:          NOTRUN -> [SKIP][157] ([i915#11520])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-snb7/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf.html
>     - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#11520])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-14/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#11520]) +3 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr@fbc-psr-no-drrs:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#9688]) +5 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-3/igt@kms_psr@fbc-psr-no-drrs.html
> 
>   * igt@kms_psr@fbc-psr2-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#1072] / [i915#9732]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-11/igt@kms_psr@fbc-psr2-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#9732]) +9 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-mtlp:         [PASS][163] -> [FAIL][164] ([i915#10393]) +1 other test fail
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-mtlp-7/igt@kms_vrr@negative-basic.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-2/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#2437])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][166] ([i915#2437])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk9/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@stress-open-close@0-rcs0:
>     - shard-glk:          ([PASS][167], [PASS][168]) -> [ABORT][169] ([i915#8190] / [i915#9853]) +1 other test abort
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk4/igt@perf@stress-open-close@0-rcs0.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk7/igt@perf@stress-open-close@0-rcs0.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk2/igt@perf@stress-open-close@0-rcs0.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][170] -> [FAIL][171] ([i915#4349]) +4 other tests fail
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [ABORT][172] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][173]
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-tglu-10/igt@gem_eio@hibernate.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-2/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          ([PASS][174], [FAIL][175]) ([i915#2842]) -> [PASS][176] +1 other test pass
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][177] ([i915#2842]) -> [PASS][178] +4 other tests pass
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-snb:          [INCOMPLETE][179] -> [PASS][180]
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-snb1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-snb7/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][181] ([i915#11808]) -> [PASS][182] +1 other test pass
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          [FAIL][183] ([i915#5956]) -> [PASS][184] +1 other test pass
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-7/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2:          [SKIP][185] ([i915#3555]) -> [PASS][186] +3 other tests pass
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-8/igt@kms_color@deep-color.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-10/igt@kms_color@deep-color.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-dg2:          [SKIP][187] ([i915#1849]) -> [PASS][188]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-dg1:          [DMESG-WARN][189] ([i915#4423]) -> [PASS][190] +3 other tests pass
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg1-14/igt@kms_flip@flip-vs-suspend.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-19/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race:
>     - shard-glk:          ([FAIL][191], [PASS][192]) ([i915#12431]) -> [PASS][193]
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk8/igt@kms_flip@modeset-vs-vblank-race.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk1/igt@kms_flip@modeset-vs-vblank-race.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk4/igt@kms_flip@modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1:
>     - shard-glk:          ([PASS][194], [FAIL][195]) ([i915#12403]) -> [PASS][196] +2 other tests pass
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk1/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk8/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk4/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate:
>     - shard-glk:          [FAIL][197] ([i915#2122]) -> [PASS][198] +1 other test pass
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk2/igt@kms_flip@plain-flip-fb-recreate.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk7/igt@kms_flip@plain-flip-fb-recreate.html
>     - shard-dg2:          [FAIL][199] ([i915#2122]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-11/igt@kms_flip@plain-flip-fb-recreate.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-8/igt@kms_flip@plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-mtlp:         [FAIL][201] ([i915#2122]) -> [PASS][202] +3 other tests pass
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
>     - shard-snb:          [FAIL][203] ([i915#2122]) -> [PASS][204] +9 other tests pass
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:
>     - shard-tglu:         [FAIL][205] ([i915#2122]) -> [PASS][206] +4 other tests pass
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-mtlp:         [FAIL][207] ([i915#11989] / [i915#2122]) -> [PASS][208]
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
>     - shard-dg2:          [SKIP][209] ([i915#5354]) -> [PASS][210] +9 other tests pass
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          [SKIP][211] ([i915#3555] / [i915#8228]) -> [PASS][212]
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-8/igt@kms_hdr@bpc-switch.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-10/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg2:          [SKIP][213] ([i915#12388]) -> [PASS][214]
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-8/igt@kms_joiner@basic-force-big-joiner.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_plane@pixel-format-source-clamping:
>     - shard-dg2:          [SKIP][215] ([i915#8825]) -> [PASS][216]
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_plane@pixel-format-source-clamping.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max:
>     - shard-dg2:          [SKIP][217] ([i915#7294]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_plane_alpha_blend@constant-alpha-max.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
>     - shard-dg2:          [SKIP][219] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][220]
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:
>     - shard-dg2:          [SKIP][221] ([i915#12247] / [i915#8152]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
>     - shard-dg2:          [SKIP][223] ([i915#8152] / [i915#9423]) -> [PASS][224]
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c:
>     - shard-dg2:          [SKIP][225] ([i915#12247]) -> [PASS][226] +5 other tests pass
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d:
>     - shard-dg2:          [SKIP][227] ([i915#8152]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][229] ([i915#4281]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-4/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][231] ([i915#9519]) -> [PASS][232] +5 other tests pass
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          [SKIP][233] ([i915#9519]) -> [PASS][234] +1 other test pass
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_setmode@basic:
>     - shard-tglu:         [FAIL][235] ([i915#5465]) -> [PASS][236] +2 other tests pass
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-tglu-6/igt@kms_setmode@basic.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-tglu-7/igt@kms_setmode@basic.html
> 
>   * igt@kms_universal_plane@universal-plane-pageflip-windowed:
>     - shard-dg2:          [SKIP][237] ([i915#9197]) -> [PASS][238] +26 other tests pass
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_universal_plane@universal-plane-pageflip-windowed.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_universal_plane@universal-plane-pageflip-windowed.html
> 
>   * igt@perf@blocking:
>     - shard-dg2:          [FAIL][239] ([i915#10538]) -> [PASS][240] +1 other test pass
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-7/igt@perf@blocking.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-1/igt@perf@blocking.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace:
>     - shard-rkl:          [FAIL][241] ([i915#12467] / [i915#2842]) -> [FAIL][242] ([i915#2842])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-7/igt@gem_exec_fair@basic-pace.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-1/igt@gem_exec_fair@basic-pace.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [FAIL][243] ([i915#2876]) -> [FAIL][244] ([i915#2842])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@i915_selftest@mock:
>     - shard-glk:          ([DMESG-WARN][245], [DMESG-WARN][246]) ([i915#9311]) -> [DMESG-WARN][247] ([i915#1982] / [i915#9311])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk1/igt@i915_selftest@mock.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-glk6/igt@i915_selftest@mock.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-glk3/igt@i915_selftest@mock.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>     - shard-dg2:          [SKIP][248] ([i915#9197]) -> [SKIP][249] +1 other test skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
>     - shard-dg2:          [SKIP][250] ([i915#4538] / [i915#5190]) -> [SKIP][251] ([i915#5190] / [i915#9197]) +1 other test skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-dg2:          [SKIP][252] ([i915#5190] / [i915#9197]) -> [SKIP][253] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          [SKIP][254] ([i915#5190] / [i915#9197]) -> [SKIP][255] ([i915#5190])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-dg2:          [SKIP][256] ([i915#9197]) -> [SKIP][257] ([i915#12313]) +1 other test skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
>     - shard-dg2:          [SKIP][258] ([i915#9197]) -> [SKIP][259] ([i915#10307] / [i915#6095]) +3 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs:
>     - shard-dg2:          [SKIP][260] ([i915#10307] / [i915#6095]) -> [SKIP][261] ([i915#9197])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-ccs:
>     - shard-dg1:          [SKIP][262] ([i915#6095]) -> [SKIP][263] ([i915#4423] / [i915#6095]) +1 other test skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg1-18/igt@kms_ccs@crc-primary-basic-y-tiled-ccs.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg1-14/igt@kms_ccs@crc-primary-basic-y-tiled-ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-dg2:          [SKIP][264] ([i915#11616] / [i915#7213]) -> [SKIP][265] ([i915#9197])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_cdclk@mode-transition-all-outputs.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [SKIP][266] ([i915#7118] / [i915#9424]) -> [TIMEOUT][267] ([i915#7173])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [SKIP][268] ([i915#7118]) -> [SKIP][269] ([i915#9197])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_content_protection@srm.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-dg2:          [SKIP][270] ([i915#9197]) -> [SKIP][271] ([i915#11453] / [i915#3359])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-dg2:          [SKIP][272] ([i915#9197]) -> [SKIP][273] ([i915#5354]) +1 other test skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg2:          [SKIP][274] ([i915#4103] / [i915#4213]) -> [SKIP][275] ([i915#9197])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          [SKIP][276] ([i915#9197]) -> [SKIP][277] ([i915#4103] / [i915#4213])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2:          [SKIP][278] ([i915#9197]) -> [SKIP][279] ([i915#8812])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-dg2:          [SKIP][280] ([i915#3555]) -> [SKIP][281] ([i915#2672] / [i915#3555]) +1 other test skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2:          [SKIP][282] ([i915#5354]) -> [SKIP][283] ([i915#8708]) +5 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
>     - shard-dg2:          [SKIP][284] ([i915#5354]) -> [SKIP][285] ([i915#3458]) +4 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-dg2:          [SKIP][286] ([i915#10433] / [i915#3458]) -> [SKIP][287] ([i915#3458])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          [SKIP][288] ([i915#8708]) -> [SKIP][289] ([i915#5354]) +1 other test skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-dg2:          [SKIP][290] ([i915#9197]) -> [SKIP][291] ([i915#3555] / [i915#8228])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_hdr@invalid-hdr.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][292] ([i915#4070] / [i915#4816]) -> [SKIP][293] ([i915#4816])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          [SKIP][294] ([i915#9197]) -> [SKIP][295] ([i915#6301])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_panel_fitting@legacy.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
>     - shard-dg2:          [SKIP][296] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][297] ([i915#12247] / [i915#9423])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:
>     - shard-dg2:          [SKIP][298] ([i915#12247] / [i915#8152]) -> [SKIP][299] ([i915#12247])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [FAIL][300] ([i915#9295]) -> [SKIP][301] ([i915#3361])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-6/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][302] ([i915#3828]) -> [SKIP][303] ([i915#9340])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2:          [SKIP][304] ([i915#11131] / [i915#4235]) -> [SKIP][305] ([i915#9197])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          [SKIP][306] ([i915#9197]) -> [SKIP][307] ([i915#3555] / [i915#9906])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@kms_vrr@negative-basic.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-3/igt@kms_vrr@negative-basic.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][308] ([i915#9100]) -> [FAIL][309] ([i915#7484]) +1 other test fail
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15581/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
>   [i915#11703]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11703
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#11961]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12403
>   [i915#12412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12412
>   [i915#12431]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12431
>   [i915#12457]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12457
>   [i915#12467]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12467
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8190
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9853]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9853
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15581 -> Patchwork_140356v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15581: 8a7ac0227c7c3fe2fcb01a933df5b9c49c7f2832 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8082: c8379ec8b26f3c21bae5473706b23da78bd26ffa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_140356v1: 8a7ac0227c7c3fe2fcb01a933df5b9c49c7f2832 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140356v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
