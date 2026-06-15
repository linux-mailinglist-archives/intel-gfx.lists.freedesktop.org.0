Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3T9gIlVaMGobSAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:02:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88850689A5F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:02:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="FkqEpi5/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0094210E1BA;
	Mon, 15 Jun 2026 20:02:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 034F510E1BA;
 Mon, 15 Jun 2026 20:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781553747; x=1813089747;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9wdUCRxoeGc47/2P2PjVdFqIY6pY79mwlkKJBp/mCtk=;
 b=FkqEpi5/fCzvV3+N9KA20TR4XpYDZV8AVa6/XACm0g+COq3hL83qlYks
 t09J/Z6olEwj/Q/WkCFXbtM5ExQeULRzG4lbfmcGXr8KjQfZVJ/KhfWuh
 CG1iE0QwEhn082dFi059S/aRm7v211hywtAhIxYoFhJ/SVw3rg6IkpgCY
 IUXO3JYmB/KSj8r4qlblrhn0cwoqcI2xRi+ummD+ym9N0K9kYAOxZrqND
 ULh61S7sY2aGL07nfCrNRZ7HER69ZNFm2BK0t/RrQymgH1WzGdpQkPJ5D
 6lk8aXlqNVZBdPVLd/BqcG5QSQMEFNJ7RbROtL3FcVCt//B9BH67vPYqn A==;
X-CSE-ConnectionGUID: es+JIgOrQieuk6SbhAvxSA==
X-CSE-MsgGUID: f1C8G6UfQdKRZsVGBjJIIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82202544"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="82202544"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:02:26 -0700
X-CSE-ConnectionGUID: F9773bYeQzWwYkqJG1nOrg==
X-CSE-MsgGUID: 1eG3LBZJRqCf6bLJkeTasA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="246671271"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:02:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 13:02:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 13:02:02 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.14) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 13:02:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r5BdWexvSMgv66DeVMioOi6bqFfRM19XsdenCHYgFPQXYGNldQF2UNdUF4yjmcA5b23lTvd1jkiUJsyJTHAL70uHwwrVKnday77BTr0YrdyvpF0olRLdh8CtQtaKd5UajVOOFtmJZtEgLC670d2eSF+71DJdP5pOm0dpKZPrCvZbCuYhUWbdwWQHbN/ZFcIl6Q9/r4m6vlOOEDZGrv7kKWIxo0qJ0vMd1TZu8Gz5RdtmzON+87gz+zr42yEVUjcO5OUajlNMFYt5HjbIDENgIiIgNBOHXqjcHcCXvv2qXfBp2eVKSgI4xcn+8YQmw45M9j2RsX7tQqvSLtyavC8Ucg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5j+ZNM3AlWwxYuRyyNVBBKc7VRwBmm+LVFouS1boZj4=;
 b=S84oB30HtGAnQJvONzgm/YOA6IIEilq2rgj2ayU83OQqOL7oWfi06+TCxaTSEd84Gysy6pc8vTKjbpr1aO2nAh+EgmfeP/Ku5H4wQuqeerpQRtXenwnEpVAmoS0pQyGJfJ3LqEW7kBO352/X6AC578OqB9odjHkagiUuP7dclHJC4Ah0ATmlaViChWWZcyWfUcFp0DC/78x0J9/s1IOQu7ukajScYv0ss/Gbiws/56iCkRj2fW1Ho1H8dHDIxnxBbONVgByGodICuHIXKocEGlunnwTJLMv3tQbEgbs0OyGR+V8QjnWYZjjtZYnPVimlDdkDHz4akeFSWuaGYdNiwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by DS4PR11MB9602.namprd11.prod.outlook.com (2603:10b6:8:34a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 20:01:55 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 20:01:55 +0000
Date: Mon, 15 Jun 2026 16:01:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/4] drm/{i915,xe}: add new
 intel_display_driver_runtime_pm_{enable,disable}()
Message-ID: <ajBaL3rPX6SGsyvK@intel.com>
References: <cover.1781527161.git.jani.nikula@intel.com>
 <9a3ab94dda708f809bfbdfbc9034a2d718885f1e.1781527161.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9a3ab94dda708f809bfbdfbc9034a2d718885f1e.1781527161.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0037.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::12) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|DS4PR11MB9602:EE_
X-MS-Office365-Filtering-Correlation-Id: 375ceedf-791c-4cb8-9519-08decb18f2f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|11063799006|56012099006|6133799003|4143699003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: fDPYdFe5wRGHUnOfI1anMV1I9LR33VyxjMfjaKImSFpJ6WRAdQQDReMUVaDuaZCoIOLdDm7V+PbbwLBQZDKQgAuyzR0QGodVsNqPK4HkEUIbfRq8CBOKo/jFvxfYtu9Jgem5jLsw3/FWhuJfWk80YkIoyfdNnD1av1HRkOyzHZxPA3fqxwTcmkXpwca0+txOmpEFLXPu5kKKlGIBdz0KB0nxq35nH+CYW8eKtbD3T6cpvgqzo/iO+2j44zgqD5cJCXX3f0YWD0SRYkcXk2dR+94ozKgOT3kDas/52YbGQgge2VH3LRex5jaTB9ey13XYJU9RvNexXoiTEiZRIf4ayf2lCh2wWepQjxyqfWRE27bOf596QV1RMIto4jWSKNAErCGOlCynopA5KU+/mGcGP3iOe9L9Sprqo7+TJPLBwJB1CCqUN3q+znyYie83nUfdFx11+zTtn02gmi/evS3ChwtSIZdBp4NKDKbOI/g4QcD0USZUfNY22Yp51nOhQGqXFWIG9hoYgZI3CAGGOGYF/7D9NNkMoHigFnWG3prqkRFHHJzK/9ny+elGwM+nxs9EFJVUiP+hrEGzsk1b9ry+0/GLHxJG73PMBbgzsu+mLj4KNZsu8CXOVY672BYGu1QVkUJ8CjcjfcSBREAf3468UgMJl5ePBLxw4A5ztGlR/FvGODKEhS0KiorlQVirta8I
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(11063799006)(56012099006)(6133799003)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pXgUFNEbV29Kcw1culN4UYqtGPH6gXer/25gTown8jln8KG8+0PU/uhqlvQG?=
 =?us-ascii?Q?8SASzauc1eBSROaYIm8qLAjwCbL4y6rX4+TNLDLObpgIRiYJc7i3AEilUteC?=
 =?us-ascii?Q?OIB6m1X+dI6cxDnitSmk365Ps1qAlBkHtUBHc08pPvZunuU1jtqM3fZmBFGv?=
 =?us-ascii?Q?atOEFDwSn8AAxk9D5Vtg/fkAk8aDvkU2Eu3Y9bKnb3jvnXUR4GQXMwsWxeis?=
 =?us-ascii?Q?B9o1j1RSxVKI8ZvJw4Ho1vj6+bY0pyGowO0SzlBY3Rrs4u61hUC+qFmdCHGY?=
 =?us-ascii?Q?kdCZ8oCkLDMBCk9ZhVW6S+DrFXxEWjStZMpgkEJ7J4EG4fYWhrZ0mMjM6uoA?=
 =?us-ascii?Q?3MDU3mTJamqTEtUEDgByvvek2CwlbJQjlJZB1Nh9giE3dzAZEodG61WiRohY?=
 =?us-ascii?Q?1Qq/lVyrUDn/5l9V5PHnAxk0eX6sX9gG2pXYiTK6fFWR797g6IhWWdcqMNNw?=
 =?us-ascii?Q?brBw3ylKjuV9GsUMJcFsZb3SZENAE0932qfXLzGRyiaYgDDr5dge9bHNvjN4?=
 =?us-ascii?Q?nWmOw7ZQNn+c8iy1v/ftTgib1EA0V/XgtwSQbwsEmHtcXU978CJW4AEQ9v4i?=
 =?us-ascii?Q?ajkyKB1bk7pOWnX49Q/0FKH6D+ZYbMmKvI2BYNVFT34tgszYXmRIkgen6cEP?=
 =?us-ascii?Q?gbaLewlmxHRpZoTeqpHnMA0Pg/t9zPxhu/3uVH9QzbJ2l83KWRODGRW8S6pH?=
 =?us-ascii?Q?MrEbmahdorIQwjGH0djYgvVf8LGu1Dz72ap5bPTvm/29KDqqsSBVgYrgHqkq?=
 =?us-ascii?Q?2mJx0zMEfGp9eTiCEhO+WuEmPmEIBC1ERar+N4US8CZHPonCA5JAeR9s0+BV?=
 =?us-ascii?Q?g3lhu2/1hQsw+BaW6xfXWc7RHgwYmAh5+zdTTci/comVnfgS43GpEW0Quuhe?=
 =?us-ascii?Q?iWct3OYCREJbHJM/fxxu8lvSpZ6tEju2IoTGsDZZXc+F5qwdf8vHaRpTBc9s?=
 =?us-ascii?Q?GmUEOqJ/r4e4gZ2MHM22u33WfTtvR0TLKF+/k8hLnZteUXNMYTG9cQfUCYaw?=
 =?us-ascii?Q?nzwb+oJ9EB3+7GSTnoZ2GZZw6QOkb/5QC69XCVbaxS4bfpz13GHSDEn6XicV?=
 =?us-ascii?Q?/dhaJMT1AA8YcBqnZl5r9FlJn9rLYvQjfJgz7YsP7Pf1m06SffonosXNOafy?=
 =?us-ascii?Q?87pF4Wt6bZvMOl/SigZs+eQfBwO89AiZiVu+ZlZQE9bL4kKn2ug0yUxQrEH8?=
 =?us-ascii?Q?Jdq4Oj1uXmyc1hTYgWTNJfpGrEHV4BKw1HEwAhOuKAfN2X7GQkPrglunarhX?=
 =?us-ascii?Q?g4yqzcejKbWl1aG5eAM8xAGWuaR0utEK4uksh02fNQMaPgegApxw8m2OePU+?=
 =?us-ascii?Q?yR3IBgpAcfI9B3FEiwVx6tWO1hi6SN6ydF5s7VDpe39J+XILwoC4cIb+EH4R?=
 =?us-ascii?Q?l8W/fzfV30G3hb8LmF4MZ6bnSro5PZab3nhgI3UfifxqBUQ8/YK7RRA6w3RV?=
 =?us-ascii?Q?rD+6PXdItUKHBzdP5jqgAvLEpTnqeX0O9r4o+FVzBphb0C+2uOSkaBB7MIpZ?=
 =?us-ascii?Q?PT8SI/c8G3RK4DZaJrHiMGnV3mbtZbGoLfI4yLHxdxs9scwUd+0mCdguco7e?=
 =?us-ascii?Q?TQ8QGT+20sFJJ5QwYcNJgpZjr6N1+RMnVyZJJ09rypcKyibsV8EoMliZAHKE?=
 =?us-ascii?Q?ulOomRgQgcwMF0ENHnqhtxbsbwVuKa/zDXwAVQgzXcigzjEWl4/X18iIO2pV?=
 =?us-ascii?Q?wjFv2TXClKt/OxYUa6WmkgP9A29BQA2MZ+5bR1dKUXlLZJu+uhp4YFoUswK3?=
 =?us-ascii?Q?pgWvfVa8bg=3D=3D?=
X-Exchange-RoutingPolicyChecked: DANabqUV3sNs51WRTgxxkmGz5MmhP16KWDmpLo+6DVLGSQK+OlsDsNBbSzfSwpf+xHleIdNT+6sCTT4hS+3s5vNt9J2deDw79VaQDHmhKL5+jkeClOfABjz3yPVZiR66jeMgem/5AlXdFI0sAEO/eCx3HvUdzHQuITqUyrmYlYDkbMAkBzVakwXtRQA4zV26H1YUj3VPg/ghgoBlSaTBJ7c0rnr3e2KMSPZgjJN1c30ibyPcvgX9bZzAXRDDQJGf8hp2YPoVQoigujdRrQLQxA/l3sefpfvatFLk/6Qr732QwrajLQRt21ooF6xxPx/FJYJsO8YGSudrolW1dIYMyg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 375ceedf-791c-4cb8-9519-08decb18f2f4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2026 20:01:55.1418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bIOveacZo/v9qjecNvOPEgYbGVGrRi89JpGTi479LUqb2E32W/w07DturymQuyKu0h064GHN5lCPDwhSqAnwSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR11MB9602
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 88850689A5F

On Mon, Jun 15, 2026 at 03:40:46PM +0300, Jani Nikula wrote:
> Add new high-level functions intel_display_driver_runtime_pm_enable()
> and intel_display_driver_runtime_pm_disable() to abstract the low-level
> functions intel_display_power_enable() and
> intel_display_power_disable(), respectively.
> 
> The asymmetry in the "runtime pm enable/disable" and "pm runtime
> suspend/etc" naming is intentional, with the latter intended to be
> called from the PM hooks.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_display_driver.h |  3 +++
>  drivers/gpu/drm/i915/i915_driver.c                  |  4 ++--
>  drivers/gpu/drm/xe/display/xe_display.c             |  8 ++++----
>  4 files changed, 19 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 67f416070fe0..a11186be9756 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -869,6 +869,16 @@ void intel_display_driver_pm_resume(struct intel_display *display)
>  	intel_display_power_enable(display);
>  }
>  
> +void intel_display_driver_runtime_pm_enable(struct intel_display *display)
> +{
> +	intel_display_power_enable(display);
> +}
> +
> +void intel_display_driver_runtime_pm_disable(struct intel_display *display)
> +{
> +	intel_display_power_disable(display);
> +}
> +
>  void intel_display_driver_pm_runtime_suspend(struct intel_display *display)
>  {
>  	intel_display_power_runtime_suspend(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
> index 1b494337d629..1ae2ad7e95f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -43,6 +43,9 @@ void intel_display_driver_suspend_access(struct intel_display *display);
>  void intel_display_driver_resume_access(struct intel_display *display);
>  bool intel_display_driver_check_access(struct intel_display *display);
>  
> +void intel_display_driver_runtime_pm_enable(struct intel_display *display);
> +void intel_display_driver_runtime_pm_disable(struct intel_display *display);
> +
>  void intel_display_driver_pm_runtime_suspend(struct intel_display *display);
>  void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display);
>  void intel_display_driver_pm_runtime_resume_early(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 01aaa66e7cab..4d01168d37cf 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -659,7 +659,7 @@ static int i915_driver_register(struct drm_i915_private *dev_priv)
>  
>  	intel_display_driver_register(display);
>  
> -	intel_display_power_enable(display);
> +	intel_display_driver_runtime_pm_enable(display);
>  	intel_runtime_pm_enable(&dev_priv->runtime_pm);
>  
>  	if (i915_switcheroo_register(dev_priv))
> @@ -681,7 +681,7 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>  	i915_switcheroo_unregister(dev_priv);
>  
>  	intel_runtime_pm_disable(&dev_priv->runtime_pm);
> -	intel_display_power_disable(display);
> +	intel_display_driver_runtime_pm_disable(display);
>  
>  	intel_display_driver_unregister(display);
>  
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index a5768736dbbc..493e9e09b6c9 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -176,7 +176,7 @@ void xe_display_register(struct xe_device *xe)
>  		return;
>  
>  	intel_display_driver_register(display);
> -	intel_display_power_enable(display);
> +	intel_display_driver_runtime_pm_enable(display);
>  }
>  
>  void xe_display_unregister(struct xe_device *xe)
> @@ -186,7 +186,7 @@ void xe_display_unregister(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_display_power_disable(display);
> +	intel_display_driver_runtime_pm_disable(display);
>  	intel_display_driver_unregister(display);
>  }
>  
> @@ -331,7 +331,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
>  	 * We do a lot of poking in a lot of registers, make sure they work
>  	 * properly.
>  	 */
> -	intel_display_power_disable(display);
> +	intel_display_driver_runtime_pm_disable(display);
>  
>  	intel_display_flush_cleanup_work(display);
>  
> @@ -364,7 +364,7 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
>  
>  	intel_opregion_resume(display);
>  
> -	intel_display_power_enable(display);
> +	intel_display_driver_runtime_pm_enable(display);
>  }
>  
>  void xe_display_pm_runtime_suspend(struct xe_device *xe)
> -- 
> 2.47.3
> 
