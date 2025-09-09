Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D08B4FD6D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 15:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 082B410E742;
	Tue,  9 Sep 2025 13:38:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W6MJln1M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F1210E742
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 13:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757425112; x=1788961112;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Al6mr7xuTIQ4vogygDChuwJheb843LHIU1XHNcjstew=;
 b=W6MJln1MGsCG328B9vbrl1+37JNPijRh+eaE9z/G5deaeAI58UxlsaZ6
 XCd26StzDEBaQAXIugQjufxSkeyDtw6DUDCVlVLcNdIz9h+T/pLi+b73E
 LX5hnuC4zLJSFQfV0qkhszGSE825PPH9KCGmqd2f87KmJAMwWjUPvlwf6
 LoQatbuECU6E5NaxiEAT/NerIlpvSGk7m4DD1xNZ93u3oyloUVlj/2b0k
 pn/PsWAWDHOks7bPxz9PycWF/+wB6R9ZvORB5Ah1Fwv7rtejygQfN8qUy
 BWyAY5cSWNT/Dt5VgEdWSQx4fF+KbqgvJd4CRXDEokNyeiXFflDwZcsaT g==;
X-CSE-ConnectionGUID: rGCf8OE6TWWO+8dcO9vRjQ==
X-CSE-MsgGUID: vzhDIrxnSbSt9OKkVXRJWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="69962411"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="69962411"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:38:32 -0700
X-CSE-ConnectionGUID: esepx8afS1CgHc1KylWvOw==
X-CSE-MsgGUID: 1uu4+KCrRICMeT8PsxxmNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="172256881"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:38:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:38:31 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 06:38:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.71)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:38:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DLMRwSXM61EbbPWMnGP3QSbB7zE8SyOKRrD4S59yuISklRlJ6eMM1v+1EOE9GNrHInxaoQP274dD0V9eExLEndCkoIaUyuMmG8QlmveG4RqWGPDOGTWcHPkZ3JrzIuR1c8vutn0xjOl2iq8k3b4V8dhMLWOJz20fynuEcg9+kjcVZDTaR+VeInHyIi0CsT3oP3rytY6BkAjFEdxVEt74toU497LnPGVQ3wHNa5yPSPlQD4JXeGOpFJ8Bgno28sIMKRIyD1Q4gMmVCil4L6flMsywgJgLFZY5pq+cCyKjPxWAYdyxjLbCDqKK0zyTSyQf+oMD7co7mFGV/tKN0GFNWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4xSWnXZJ0z5aiLi8G5fypbpzkPRbkHU7wuJbyyhIGE0=;
 b=vLf0xI4GEpCbpANPf8WHluxIVgjE5648ON5U+0WnIjSjtDUvapmduxJJNhSeOSPvft/svZZkiA8WD0oxPAzp2+1EvlOIbinpEUBefd+bsrmEdr6hMvLSHyOroq9ws/+VDvEOL3dAnDeiHsIUzUmn3SjDWJS2ApCtwLfLOIBoA14K+P2xXoxi8RAaKFbE1c6skYP08UKyVLDvLUVauFqxwq5droFYmekYtWVKQpngoHci9LZOfNmiMQ7h2HXhdp5uobKMZHCKepMy0fhqDtky8AIu5b/0QSgYAkyAZuBkAbmRCnU3CIBmOZ+LD6KCQvr3tbeBFmUYuyr0xKti9LsSUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CH3PR11MB8519.namprd11.prod.outlook.com (2603:10b6:610:1ba::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 13:38:29 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 13:38:29 +0000
Date: Tue, 9 Sep 2025 09:38:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/5] drm/i915: split out i915_timer_util.[ch]
Message-ID: <aMAt0rWKrBNL4H4X@intel.com>
References: <cover.1757340520.git.jani.nikula@intel.com>
 <863f74f4fa30338dc34151b75c28b6841e50c7ee.1757340520.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <863f74f4fa30338dc34151b75c28b6841e50c7ee.1757340520.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0116.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::31) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CH3PR11MB8519:EE_
X-MS-Office365-Filtering-Correlation-Id: 23ec1f4b-8b62-4640-92de-08ddefa6292f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?5N0r/tvWLiNdnn4RRSBEvHpzcITcqhvASfUC8X5ashaFxEwNiUBE8J8j/t?=
 =?iso-8859-1?Q?SRlD+bQjhsZgFREXujsq9zo0CZu+6/9kYPq9x8VXHyKNqXxodOyR31zrLf?=
 =?iso-8859-1?Q?dhyQmvair8aRxADZfH3NLkZxn6jRygAmE/J7H/RSX8c+CmTGg189cccJCz?=
 =?iso-8859-1?Q?bZzJ5zBzWT9VZniB7SNouEILcInl5GcEO88/Rjq6fnfj+5Mhs9t/LMh57k?=
 =?iso-8859-1?Q?0VetPPNDoyIGTfvW51OT2w1u53E7tGhrn5E6Qkybpr+ho8ikdRaLEVyzEZ?=
 =?iso-8859-1?Q?XOkj0vk4iVgJpmEcagk2bir+fBo7CoLQ3IPMIVpaJM9Cw15eFNOBaddWcG?=
 =?iso-8859-1?Q?LdKd1H7Ov9dpdxtHoM000XpcXtpxRpGcx+0EFMW4MXCkm2ytVFaIoDTTA1?=
 =?iso-8859-1?Q?a3BOHx0KGnyiDm7BCRNPjnBPR6GEGsJ0YSJc5lBYpI+w26Aw8wpFyqDh/Z?=
 =?iso-8859-1?Q?CTaacjc/YAfXhIHl6cscV2aP9x05IW2TkQtzLisc0iiYzwR9qacK2LUK3X?=
 =?iso-8859-1?Q?xwpZBA3iQONnfqoEkZDinmZS6hZ4qvQOYwcV34aB6MBudPdujCwobN5P7Z?=
 =?iso-8859-1?Q?/1W+OuLAJa/eyyLBf1yHDuNEw/FmyPQufZVuG8LBETnAOvLG9SjPQpNslD?=
 =?iso-8859-1?Q?y9MeG4TbLufkZgAjT7ZS6zj2waXlAV00FOX3m+v1lHR5f2di7gAgjELXRM?=
 =?iso-8859-1?Q?6STdUMj1ypY3ydeOoF61AoMfocFIWSRiG+BKPloeblIlvUEhdeYtxOfXSx?=
 =?iso-8859-1?Q?5IAPDTu00guFW/ZJFrejCR55rCzgtdIGbdPS216qa8xr39ZaDnoaJ+4XFO?=
 =?iso-8859-1?Q?i8y11ynMIf0NTWSd1rRE+v1JxGiJPk9SB0KiuhJh0cy1FC4QZ+0e/Jycoy?=
 =?iso-8859-1?Q?6a/9Hqi3wql4/f7Af98OPbRz6SQ1tVN3sb7yxhuvJacQUcW9VSqtLMCQyv?=
 =?iso-8859-1?Q?AOoSYt4+EVbD+Po6ey5z9GMcOrIJ9GwbEeJuSPG1gf4NAYpYtd8J2jsXx1?=
 =?iso-8859-1?Q?E0zvfZzUfLjlUc/rAE6yAOSOb3V9IT2h09I1AVpn/mhogdHSzfdj+tGp+m?=
 =?iso-8859-1?Q?gmKpZCJVnGYaceFF2F89WPLPRTI4nNsgyFFreXLExk99/34N6nj9l+FYap?=
 =?iso-8859-1?Q?KVV4h2KCVwStvYcCnSWrqIZ/1/uLD9Mnznyrdi96TKIR14olYEXgU5EVep?=
 =?iso-8859-1?Q?3sqzKYKWeslUGp2mfdkvYYDHTDs/AC8Pdd88FZ/lfiXpfafK8bqFuRE9Lj?=
 =?iso-8859-1?Q?lTpPON6VqGTw8Bj6YcgBfU9QpogDIX/n1LRo1bln3ZsssPtaLsGXD3jL9u?=
 =?iso-8859-1?Q?0gxrdtFaYj8e1XkVzCXcD5HRYAzpfScxAjVCtRQckE+T+GTRKY7Hfy6qfl?=
 =?iso-8859-1?Q?sNwDatHvoKprPHRi3MAmsthsYfEd9YjqQnSQhPGkHEM6ypB0VAIS6xwUeg?=
 =?iso-8859-1?Q?7SjrGnR6YK3pRUf/RS14qRRlzVG2ezWRyrQLddPHn/B9GEDl9KmTfxItmj?=
 =?iso-8859-1?Q?s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?OwS6Luopjx8/XX5alEGTZ6J5FnGBNFfCKScPU+ou6a9fX2/i6zdFw8k+tZ?=
 =?iso-8859-1?Q?1Q56LFEK086v2/3UrSIkV68XsEyWLhcF62tIQOQ97Pku4G9OnPunGg3qDf?=
 =?iso-8859-1?Q?6mTIC3ZGqEKpKrqvZZGff6Ky2/hQcqCHuQpMNtUl6MshrOOCZwG6eowdtD?=
 =?iso-8859-1?Q?hMQc9nS77P4QT+E9mvbGFw1i7q+ilMCDYClppX8F0qs6UmekCmWzw5LhUX?=
 =?iso-8859-1?Q?JmmpjlAABpuw6RPTtKvyzTKalErTS4Dnqpm7kgQKljwg+LGAAqAkg0JvbM?=
 =?iso-8859-1?Q?WAwPTzJ9tQpokFdAfDju3AoEjhck2Nrg9i6NuifjyJaPgY0VBJegJNzfzj?=
 =?iso-8859-1?Q?1eQ6Qt6w17xSBS+ejBpFNO9QKYB4lVsEy3OCnXcXIPqZU8VP1ZOulZkK0n?=
 =?iso-8859-1?Q?MQOqYeu6d1sCddUTqjjNRE9k5tMJ+rpBld/cX0+IsNTcrqLH0gvIEpO/im?=
 =?iso-8859-1?Q?t8MG10SLtjKD67zHzAFWyXg+fU7J+LGe9yJXMp+eKC9i+EXuMey5z8bFps?=
 =?iso-8859-1?Q?aJGUGgNXNiylIL56V0YmqTnSsFlBI5pOHGqeGicZ6z6a2BWinDiSaSA4F5?=
 =?iso-8859-1?Q?QiRWcWpGnbn4gsu9P4UpSXiTj4GpwN25TRan7qnmLpxZvHrpBF5YtKu3RV?=
 =?iso-8859-1?Q?Yme9mX44dLoAq+rOScuO7/Ec9kMlrwwUJixzDOF418/htXjqTEG5mroMoq?=
 =?iso-8859-1?Q?7J1XnXpK/JhOUpEn41/xIIhG471KXQLKa8GYMV7+gLtOkj2xrW4kv3yHjB?=
 =?iso-8859-1?Q?erzZMk+/ky6ejeSTq1aNIBqTmI+9FQSvIV+yVe9pFiN7GCGo9jIPb3E3UE?=
 =?iso-8859-1?Q?FZVAScC/XVzZPDBT9Pwoetv/EmGAQNIWRBduSaxFE0T/E4r1WtVLC+iKq6?=
 =?iso-8859-1?Q?c4yv1wLqMsBWPV8uOWF971lcphnVge8brrAOvbFsW2oHpOMgZm1ytTwLF2?=
 =?iso-8859-1?Q?GvQgjNT/8F4cJAP5I9DjjQfkc4Ugko56YTxX3Qfr5gNyc4xCSMZrDTE4fd?=
 =?iso-8859-1?Q?cqn3K2i5iZ9hCgVNob0htSC+Mdl5A7zYKwbGeQ++x4NU7nnNKu00TJwmL7?=
 =?iso-8859-1?Q?WV9uB+ANquvlwQv2zHYBMeSPAS3Ocb5VMmmT9Sq8poGyqCvzhpYOPOYeHN?=
 =?iso-8859-1?Q?8iswHmh/idj9fTFivlwhsPk9xiq/2Wz/9WRjShFjloHTVgigRwzf1H8LCa?=
 =?iso-8859-1?Q?SZ8f6BUdvZfZTG7FVQATiVn9AS4mr+3UMZN1ypdxfRywkIARcn8TjchdFx?=
 =?iso-8859-1?Q?2W/8ZjfY/zIk565WBYfZMy/Mgtafiq3+xQdUXu7DMw/P0cPp+xm8TaaMht?=
 =?iso-8859-1?Q?W/C/gp1cV5bCFxPrKRi852rJodKJAf8FgGYYGSTfVyk5OF3LxZ8LFyps/s?=
 =?iso-8859-1?Q?rgI2RVyepQmoMWbDu1SSYJPD6skKVxRbEUtAezjvhCbEcL57wdM08YkCsl?=
 =?iso-8859-1?Q?XF2cMWH59Abt8NKEY/CNVZPytTTUh7dB06PCMiUUBMfzzJF5V1U2sQKgLS?=
 =?iso-8859-1?Q?Bm4A6IkRKurU5FhvXl6n5Ww3q33lXfDN/KQH3cGRjzdYYDvkxpWETD7/Zw?=
 =?iso-8859-1?Q?nhL5Et5WnTTMt+7jOI8j4WczhTcbrB5qZzTV3CKMWD5FylGcMLBtOXWrVO?=
 =?iso-8859-1?Q?9aCm73F/RTLCrriO0i5x/lxS53WFhz+F0FEi2xovC86/4QJ36zI4Vddg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23ec1f4b-8b62-4640-92de-08ddefa6292f
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 13:38:29.3997 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kw+u+yBMjoZmpAHs8Z6Ws1YkRtJ/epHK8QQkG9/9CH0iDotC6JTCozdfR8pKE1OHCNhhxm5yNC3b0kK07LC0RA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8519
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

On Mon, Sep 08, 2025 at 05:11:47PM +0300, Jani Nikula wrote:
> Move timer related utilities from i915_utils.[ch] to separate new files
> i915_timer_util.[ch]. Clean up related includes.
> 
> Note: Arguably none of this should exist in i915 in the first place. At
> least isolate it better.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../drm/i915/gt/intel_execlists_submission.c  |  4 ++-
>  drivers/gpu/drm/i915/gt/sysfs_engines.c       |  1 +
>  drivers/gpu/drm/i915/i915_timer_util.c        | 36 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_timer_util.h        | 23 ++++++++++++
>  drivers/gpu/drm/i915/i915_utils.c             | 30 ----------------
>  drivers/gpu/drm/i915/i915_utils.h             | 14 --------
>  7 files changed, 64 insertions(+), 45 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_timer_util.c
>  create mode 100644 drivers/gpu/drm/i915/i915_timer_util.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index db150a0c33ce..e58c0c158b3a 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -32,6 +32,7 @@ i915-y += \
>  	i915_scatterlist.o \
>  	i915_switcheroo.o \
>  	i915_sysfs.o \
> +	i915_timer_util.o \
>  	i915_utils.o \
>  	intel_clock_gating.o \
>  	intel_cpu_info.o \
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 03baa7fa0a27..52c8fddedfce 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -106,14 +106,16 @@
>   * preemption, but just sampling the new tail pointer).
>   *
>   */
> +
>  #include <linux/interrupt.h>
>  #include <linux/string_helpers.h>
>  
> +#include "gen8_engine_cs.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "i915_timer_util.h"
>  #include "i915_trace.h"
>  #include "i915_vgpu.h"
> -#include "gen8_engine_cs.h"
>  #include "intel_breadcrumbs.h"
>  #include "intel_context.h"
>  #include "intel_engine_heartbeat.h"
> diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> index aab2759067d2..4a81bc396b21 100644
> --- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
> +++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> @@ -7,6 +7,7 @@
>  #include <linux/sysfs.h>
>  
>  #include "i915_drv.h"
> +#include "i915_timer_util.h"
>  #include "intel_engine.h"
>  #include "intel_engine_heartbeat.h"
>  #include "sysfs_engines.h"
> diff --git a/drivers/gpu/drm/i915/i915_timer_util.c b/drivers/gpu/drm/i915/i915_timer_util.c
> new file mode 100644
> index 000000000000..ee4cfd8b3c07
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_timer_util.c
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright © 2025 Intel Corporation */
> +
> +#include <linux/jiffies.h>
> +
> +#include "i915_timer_util.h"
> +
> +void cancel_timer(struct timer_list *t)
> +{
> +	if (!timer_active(t))
> +		return;
> +
> +	timer_delete(t);
> +	WRITE_ONCE(t->expires, 0);
> +}
> +
> +void set_timer_ms(struct timer_list *t, unsigned long timeout)
> +{
> +	if (!timeout) {
> +		cancel_timer(t);
> +		return;
> +	}
> +
> +	timeout = msecs_to_jiffies(timeout);
> +
> +	/*
> +	 * Paranoia to make sure the compiler computes the timeout before
> +	 * loading 'jiffies' as jiffies is volatile and may be updated in
> +	 * the background by a timer tick. All to reduce the complexity
> +	 * of the addition and reduce the risk of losing a jiffy.
> +	 */
> +	barrier();
> +
> +	/* Keep t->expires = 0 reserved to indicate a canceled timer. */
> +	mod_timer(t, jiffies + timeout ?: 1);
> +}
> diff --git a/drivers/gpu/drm/i915/i915_timer_util.h b/drivers/gpu/drm/i915/i915_timer_util.h
> new file mode 100644
> index 000000000000..f35ad730820c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_timer_util.h
> @@ -0,0 +1,23 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2025 Intel Corporation */
> +
> +#ifndef __I915_TIMER_UTIL_H__
> +#define __I915_TIMER_UTIL_H__
> +
> +#include <linux/timer.h>
> +#include <asm/rwonce.h>
> +
> +void cancel_timer(struct timer_list *t);
> +void set_timer_ms(struct timer_list *t, unsigned long timeout);
> +
> +static inline bool timer_active(const struct timer_list *t)
> +{
> +	return READ_ONCE(t->expires);
> +}
> +
> +static inline bool timer_expired(const struct timer_list *t)
> +{
> +	return timer_active(t) && !timer_pending(t);
> +}
> +
> +#endif /* __I915_TIMER_UTIL_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
> index b60c28fbd207..49f7ed413132 100644
> --- a/drivers/gpu/drm/i915/i915_utils.c
> +++ b/drivers/gpu/drm/i915/i915_utils.c
> @@ -47,36 +47,6 @@ bool i915_error_injected(void)
>  
>  #endif
>  
> -void cancel_timer(struct timer_list *t)
> -{
> -	if (!timer_active(t))
> -		return;
> -
> -	timer_delete(t);
> -	WRITE_ONCE(t->expires, 0);
> -}
> -
> -void set_timer_ms(struct timer_list *t, unsigned long timeout)
> -{
> -	if (!timeout) {
> -		cancel_timer(t);
> -		return;
> -	}
> -
> -	timeout = msecs_to_jiffies(timeout);
> -
> -	/*
> -	 * Paranoia to make sure the compiler computes the timeout before
> -	 * loading 'jiffies' as jiffies is volatile and may be updated in
> -	 * the background by a timer tick. All to reduce the complexity
> -	 * of the addition and reduce the risk of losing a jiffy.
> -	 */
> -	barrier();
> -
> -	/* Keep t->expires = 0 reserved to indicate a canceled timer. */
> -	mod_timer(t, jiffies + timeout ?: 1);
> -}
> -
>  bool i915_vtd_active(struct drm_i915_private *i915)
>  {
>  	if (device_iommu_mapped(i915->drm.dev))
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index dff02a944a57..6278a74d08c2 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -38,7 +38,6 @@
>  #endif
>  
>  struct drm_i915_private;
> -struct timer_list;
>  
>  #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
>  			     __stringify(x), (long)(x))
> @@ -270,19 +269,6 @@ static inline void __add_taint_for_CI(unsigned int taint)
>  	add_taint(taint, LOCKDEP_STILL_OK);
>  }
>  
> -void cancel_timer(struct timer_list *t);
> -void set_timer_ms(struct timer_list *t, unsigned long timeout);
> -
> -static inline bool timer_active(const struct timer_list *t)
> -{
> -	return READ_ONCE(t->expires);
> -}
> -
> -static inline bool timer_expired(const struct timer_list *t)
> -{
> -	return timer_active(t) && !timer_pending(t);
> -}
> -
>  static inline bool i915_run_as_guest(void)
>  {
>  #if IS_ENABLED(CONFIG_X86)
> -- 
> 2.47.3
> 
