Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A59C76017
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 20:09:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9D310E7CB;
	Thu, 20 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H+/plYOC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7ED10E072;
 Thu, 20 Nov 2025 19:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763665791; x=1795201791;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=6swnCBtyeKmArhs3Czvl47eNHcshoPo6SXh/0mXpQZg=;
 b=H+/plYOCyYpLPiTlAJ85WTQ1/RbMXeb1Z+9LvLYxH+zBRDajvdvzsIsE
 U/DVR9AL60cnczVrOiS7956IHlyjtVUzDPjZdavVW0994N53Wg1RuHG2J
 T3eFSwfwsZLyOVgH1VtPQxliI4qmcBPyi2dQj98KjIXQc8EJCC1zFyM7L
 p8mzuEZA43IMUXoDoPxwoifO6B9k0BPYsbnWNi8NuDk785TH9haLRDJDh
 6bz+iXCj8o38wdMEdiTFuG10m5wo2kacMkp9lzhyEihbFHu6v9itMM/El
 jyfb6ZzvV3uk1USf0GR+15dJmcB44HU+F1cWQ0TSmvS1OZDCMS+eFxvit A==;
X-CSE-ConnectionGUID: l5P+A2zqTpqSlRUkF8RojQ==
X-CSE-MsgGUID: 081SyRyPTceyNyJRq3ZUPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="76364294"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="76364294"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 11:09:51 -0800
X-CSE-ConnectionGUID: qy5DBhNfQvy/RgMk/2woew==
X-CSE-MsgGUID: X8Yso6FCQo+YhRy+KTH37Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="222109271"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 11:09:51 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 11:09:50 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 11:09:50 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.37) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 11:09:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uMeOocYwAIThg/KtAGLvd9o/KfSSD9tFQ7ywHGOo1FwH/Exjz3ymCynXHgN5UoQOF+4qyw5y1EEZvUOI84CfmhEfg+MZzZFsadU6QF9tAqib6m9YT7d/hXq7P76HLAnfEeWz2lbgpC2mXjQx8vtN034+nrnsmwfdbrPUoWB+0KzI6YjmBkf65BdErOJpL20D1Z5fR8B7m/satKW212f1qyeZ+CaEBCe6NzXPqj1wms1D6UgCuOQBHgHr3RtUd5GUvtjEzDZMppuz3zalYcaKIb07HsKLEGhjiAh+LBpf335hv4GMMWG2u2Sv0vk4pAG5220UTOpWwPstUzbHnL5WoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5fRkU8w/1jSzedULwKiKcVRY64UXNwuXX2a2eyYgkgY=;
 b=Z1Oi0YxbbxtF1PriN/On6lnWa4U+2rY03VIhCsFF0Q5MkA1PVrpoYrhrbUzynSM4qNy4ybZj8Ua9nn+C3vU/XaBy8+2cjjwYEkaVm+DyyDNh9lycL1NPtzBteSL2Ca+Xm1HAC9/o482zeThTDPnfGDOU3c51HWHMtal9Qqm/9QLuO9HKrJ5IOxzmoTyAaFC0NbrjEgG9q3AKTyHFz5O2IjPXHRSrh82l4HiECNwEK7psbivzrVhxiW+2MDGUSrdBIwngE+FyeCa4dQYF83s2PbCyKz0+G0PUmgca+g8pfw6yziaeFLf6hoLvWGI+SceB+gIvcsyJVzra5Al6z6B90w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB6351.namprd11.prod.outlook.com (2603:10b6:8:cc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Thu, 20 Nov
 2025 19:09:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.011; Thu, 20 Nov 2025
 19:09:47 +0000
Date: Thu, 20 Nov 2025 21:09:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?=
 =?utf-8?Q?ure_for_series_startin?= =?utf-8?Q?g?= with [1/5] drm/i915/cx0:
 Fix port to PLL ID mapping on BMG
Message-ID: <aR9nYv4DNC2F3eyC@ideak-desk>
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <176366380163.15064.11614456921475285054@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176366380163.15064.11614456921475285054@a3b018990fe9>
X-ClientProxiedBy: LO6P123CA0017.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:313::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB6351:EE_
X-MS-Office365-Filtering-Correlation-Id: a431feab-2a47-4adb-ffd8-08de28685eb9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6iejCxWbUUchZP+HVYtcYl1OGNL6NxUUN2SQYso2bLJvToDCAXR5nRgilDoD?=
 =?us-ascii?Q?RRcwKl514lSqwU7w07tCKHIQNZfPai6Csq9IxMg1+Lbw5oVH7+Tp/iBlvV55?=
 =?us-ascii?Q?C+lSe0E5qr2aCXFosW32PB/z8O64liUEyDL/uij7QfX28SxYSLqIpT+zei4Q?=
 =?us-ascii?Q?9ngWa9ljfyx0qwI7cI7BJbxhex8koOtUOeUk//fl5RuinSpoMiGepXTc/eaS?=
 =?us-ascii?Q?TpbVyObv8M9W1mZzNDPoSua6pHDchncCzX4f6pi4KGLoXSNqfCauR9g1aZ8C?=
 =?us-ascii?Q?pfw/R0e7v/DkKkK9Yy29r1eqCSVpA3iRbbBKTdKLT5qOCCHF4yY8oWl94q7F?=
 =?us-ascii?Q?iHWaKpG2eUdJEk1/tcY9I3F12djYDrA4jiH1bkkQNwSg11aWY/zWSTXeQpMp?=
 =?us-ascii?Q?5j/kTq7AQHQSg694u3dyNnC5jToMe0xwq2RcQbF111kXc4UkKFGMUjX2pLII?=
 =?us-ascii?Q?Jr5dQd7P5bdSDMvwvYxZVJJ9hRttW3kceSwp/VVRWuIzCI71ltxrh4PRQlZ6?=
 =?us-ascii?Q?YwNXBKvFVX7V+oyeiXR46za3UMS/Xsy1orKJqF0RoqX9ROpgaKwJwau1umFG?=
 =?us-ascii?Q?Qg0ZWSiDffQBOv5WDjs09NwydCHPeSuG86gVqyprv+nPanVuIv39k3KjpZp+?=
 =?us-ascii?Q?L7HK3u85RQrsKjcKDPr70m2W7NfmDnB+hk02Mfg92yUioyqxXC1L7bK6si8Z?=
 =?us-ascii?Q?A79Xdj7kvtQ2phy8Mz9e4WLKwEpf+KJdQIE/YzHURxnlY3Qr1f+mIR7lJ35f?=
 =?us-ascii?Q?W/sJ6wy9jwdqJmDakIdSGysXlfiESVkarswbduz7BO0fX5/cUN3VsHtpEz0W?=
 =?us-ascii?Q?wBDnIB1PX6AxGSZQf1Hz+FHFbHFlHLrNDLd/Y1hrDskkVoaHlsNtryX63JOn?=
 =?us-ascii?Q?FzJAfJ9pOFWDMlJvIQB7a8hfNTaz6gxUF3fmBJ2VEzwrN1HuYZzHPxCd3r1H?=
 =?us-ascii?Q?2bjZniGOR/wBqY5atpQNme72JfZCCXXf56xN9RAFA7pjxH+VG2I5D8jcW5V2?=
 =?us-ascii?Q?yc5H3WZy4yk1veCLwPAPhyLACFd/vD0ENo0+mU4oUR/xDMHuQoNfwK3Z9K7U?=
 =?us-ascii?Q?Qhrr5Lg/T+PRXQYldH8GZiT+uA72wxXZqUSENGB4JLTzdqcqjV3XMZR34Ej0?=
 =?us-ascii?Q?C3fxCtmZsKuwXFBXzHiUzLcaEMyqqQhwBWcvWhyLUPaOlspi26gJu207uF2r?=
 =?us-ascii?Q?TZ49E9HJfPuWSel1wOsQ/1kSFE9RlB07TDaCjx76bHEwygIeo5sKd731MJ1j?=
 =?us-ascii?Q?D0ByzboMwv7MviSsD+iY9xJZIGS8WooST2en2XHPMLuB11O3SRS1lS49nZDe?=
 =?us-ascii?Q?pB5XaNyOj5ZwO+GTx1HP96wLDcvhBO1uD70H6Jq8E2awFDMn3BuUw8F3Ee+E?=
 =?us-ascii?Q?VvUQ3u2UIgrRiJW9f4tYGCBL4EwKOZpwfOLcl0XVi5QfK0WVoA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lE/XScHOnQ2aBgziQcDzckPQC+40V5+iCCUJRAQN0khzF4Q3P+ea5re4gMzI?=
 =?us-ascii?Q?z7Q+suRohBevbFTwXrRn37445C4RFGO7HsK6hkQE8Pbert1xZFPIumI31zKo?=
 =?us-ascii?Q?PfJNTWf3trR5+El9ye5EeoS9PZzs9OYz4QXX+kEm8yPFOIeks9iElAtATfyx?=
 =?us-ascii?Q?/QX6P+fDYckDZFQ0zgdYN8vnS24XfoEVWatnCuPNCCxXg8V1ekNKSgDa2taV?=
 =?us-ascii?Q?Xs34zURLiSEAlGkvC8q3dbYLNhWH4/UcplJtR/PosyEV5Aafh/6iuqG4TVVU?=
 =?us-ascii?Q?CD2NbqKb8CLBLYATLCVxqtY1Y7FHT1ihkD+dxcySshMXRIzkPPJz1m6SGlRJ?=
 =?us-ascii?Q?k/rjw7+DfyRpBeGRpRjZqYUip5QZOzyihFco885jmL9nuMe2FV6rDU06jXoh?=
 =?us-ascii?Q?rU2dS3y8L1SCkWvRt3Kvqw3sYXXD7HXnth1TsbrRCvtaAJ+54/HNPrdwpZXA?=
 =?us-ascii?Q?+y/XaJ5N7K58OwaiA/FwjnRTH59gVJaKTBniW98+7Lq4oltLZx7Y7QjqzWx1?=
 =?us-ascii?Q?Q3cWRqlA2exBy2WX4h3bS+vlf8KnleAEmwEAlxyVmJrDc5BFQjL1upkxW/2P?=
 =?us-ascii?Q?lqJXlVSO7GvKXuRGyISbg8BfXj14eGCRIb2/qxLKE14xhSKZeMw7usd/YbaO?=
 =?us-ascii?Q?D2V6IBwpoeeoj8lClQTqB3eMynPkEdhoQq4RVPT2IeSRj3jYsj1alfFiDsvB?=
 =?us-ascii?Q?4jQ8ITSEcRtDM4jM4xFrZJyziAJZOXO27nj0jhTL64vsw5xgjjy0i8kvkWkT?=
 =?us-ascii?Q?SXtrdPRrgd/Xx55CrDrtrC+psdIxdx8jauxv755n/6VXZ4B09An5sfzXPOsn?=
 =?us-ascii?Q?s0IKABTgGd0BUT9GTxADjM9z8sLx7KQULzCcR9QpX62t4Z4GOLcQkTbm42Ke?=
 =?us-ascii?Q?WK9oEYsl0nxIffOdxp+9vJh9/rCR5kpaQdT6uImUb8nm9NAhd3zitvyJFhJk?=
 =?us-ascii?Q?rsHXiWoctCMbWnziZOjyQ5YekjMIzVB/6gKQumkC3QnbnSuxKUhYgF1bci0M?=
 =?us-ascii?Q?Fjv0L03mzrJUw1Dl9tqOia7ig4gWxtCe1BGJIh+sroK312XU7R2khykfTjZ0?=
 =?us-ascii?Q?sXUcNrBW0RHu4Km2HFIXdc40fDAAxTQJuIp3dAcgRITsQb8+5r7XznGvTeCJ?=
 =?us-ascii?Q?DQ/xaCU1+o6Sof4pdpJqR666nDuviSJPPLT5E/NT7a3SlBemO8kp4FLPhOyI?=
 =?us-ascii?Q?UWRVmzvVrgihxHkczMAaL2syLNWSru9uiEZYx/Xqnpz7IXV7hJS9GzSTVoYJ?=
 =?us-ascii?Q?/UQdsAEfdXqU+HtLpTNHM0XhaZSO13MvEzTj2IkSoOL9YZkQDvwV6ch5+7oO?=
 =?us-ascii?Q?bLOrq6lh3cHBWCPoMXTmXujd9wuRwkbfmrqCtYBjtfHBFlS2rluJnuKQojvO?=
 =?us-ascii?Q?wQz7MNux++2J/WpGF11y30/SWi/HV6mHTbxemDZApEuwC+jVMHGI/g5N0r5A?=
 =?us-ascii?Q?3+0rnrFXEVrmd3PNhM9kTyj3V30B8fGYvFSkKZB86QtPbNqNXGNRodwOtn+Q?=
 =?us-ascii?Q?48lQ76lL1bPRfYJPQz5WEyTS9PBWT6gUIZRgd0sUCtVFn5rt29fzyhbZ3Rnc?=
 =?us-ascii?Q?iMUOnEKnDvQTrnhiyPvbvL5mJtvx8kJXBdaSR0kFw260rnebpriznqKzCP+0?=
 =?us-ascii?Q?ld44U3eGaYIq+wBKGRbjA8HtQtnX8CWcZfVvoZuPDw8I?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a431feab-2a47-4adb-ffd8-08de28685eb9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 19:09:46.9727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cCeNMWqgatVspn6qdzLvLRlfKtvFR2qAnJLl50MheBR52KO1j2gA4vdfoHtkK5/6EG0biqjaKoaP50W3u6CYNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6351
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

Hi CI team,

the failure is unrelated to the changes, see below, could you forward
the patchset to full CI testing?

On Thu, Nov 20, 2025 at 06:36:41PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/5] drm/i915/cx0: Fix port to PLL ID mapping on BMG
> URL   : https://patchwork.freedesktop.org/series/157863/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17576 -> Patchwork_157863v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_157863v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_157863v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/index.html
> 
> Participating hosts (45 -> 44)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_157863v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@hugepages:
>     - bat-arlh-2:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/bat-arlh-2/igt@i915_selftest@live@hugepages.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/bat-arlh-2/igt@i915_selftest@live@hugepages.html

There is no display connected to this host, so the display-only changes
in the patchset are not related to the failure.

The host gets inaccessible after a GEM selftest and driver unbind:

<6> [408.890512] i915: Performing live selftests with st_random_seed=0x862b9e65 st_timeout=500
<6> [408.890517] i915: Running hugepages
...
<6> [414.499613] device lacks PS64, skipping
<6> [414.499629] i915: Running i915_gem_huge_page_live_selftests/igt_ppgtt_huge_fill
<7> [414.499761] i915 0000:00:02.0: [drm:i915_gem_open [i915]]
<7> [415.001021] igt_ppgtt_huge_fill timed out at size 33722368
...
<7> [415.737356] i915 0000:00:02.0: [drm:i915_gsc_proxy_component_unbind [i915]] GT1: GSC proxy mei component unbound
<3> [415.805214] i915 0000:00:02.0: probe with driver i915 failed with error -25

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_157863v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - bat-rpls-4:         [PASS][3] -> [DMESG-WARN][4] ([i915#13400])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@i915_selftest@live:
>     - bat-dg2-8:          [PASS][5] -> [DMESG-FAIL][6] ([i915#12061]) +1 other test dmesg-fail
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/bat-dg2-8/igt@i915_selftest@live.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/bat-dg2-8/igt@i915_selftest@live.html
>     - bat-arlh-2:         [PASS][7] -> [INCOMPLETE][8] ([i915#14837])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/bat-arlh-2/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/bat-arlh-2/igt@i915_selftest@live.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-tgl-1115g4:      [PASS][9] -> [SKIP][10] ([i915#13030])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [DMESG-FAIL][11] ([i915#12061]) -> [PASS][12] +1 other test pass
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/bat-mtlp-8/igt@i915_selftest@live.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/bat-mtlp-8/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [DMESG-FAIL][13] ([i915#12061]) -> [PASS][14] +1 other test pass
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>     - bat-dg2-9:          [DMESG-FAIL][15] ([i915#12061]) -> [PASS][16] +1 other test pass
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>     - bat-mtlp-9:         [DMESG-FAIL][17] ([i915#12061]) -> [PASS][18] +1 other test pass
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live:
>     - bat-atsm-1:         [DMESG-FAIL][19] ([i915#12061] / [i915#14204]) -> [DMESG-FAIL][20] ([i915#12061] / [i915#13929])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/bat-atsm-1/igt@i915_selftest@live.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/bat-atsm-1/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@mman:
>     - bat-atsm-1:         [DMESG-FAIL][21] ([i915#14204]) -> [DMESG-FAIL][22] ([i915#13929])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/bat-atsm-1/igt@i915_selftest@live@mman.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/bat-atsm-1/igt@i915_selftest@live@mman.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#13030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13030
>   [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
>   [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
>   [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
>   [i915#14837]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17576 -> Patchwork_157863v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17576: 3d718db04a365cc44a3bc81ffa4db7bbd2e645d7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8636: 254cd102396ff95d61f2ebe49fc09128878bf483 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_157863v1: 3d718db04a365cc44a3bc81ffa4db7bbd2e645d7 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/index.html
