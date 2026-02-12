Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNunIi/9jWm0+AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 17:17:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2988912F442
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 17:17:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 541DA10E76F;
	Thu, 12 Feb 2026 16:17:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZkdi5RP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E8D10E27C;
 Thu, 12 Feb 2026 16:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770913066; x=1802449066;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=GB5hSaHXLbCw9I+4GOXMTs3GHbHIIOLpNmT8YkIicHc=;
 b=jZkdi5RPGfnbPPcgBOuIgLxBn6dkmUvL7Mf6Bzzollf/scRy7B8GZkal
 Q4Ka1QttpBEfy/FNjnobh8124nRya+wVJDO16acDocqVYn40bHys325Lv
 PdSAEZrbP0oo3342yiCQQ0aXD1Zq9IlWontF0CfryFxJqfi7HmZwRkf5D
 gVfbvdtaf46quSBN+FT+X75u2ngxVrh43XhhN3dxfY4VLw/+hcpt2sEef
 XeOkFJ4BaiCNY5ekncMY2gonDYg++P+4egnuimcnIo6Oa6OFkPBH+yYxf
 GinWqROxvz85UYB0C/kx23YWjBOyiT4jQTSlj0kH3TaMGux1s/k+aXuJ7 g==;
X-CSE-ConnectionGUID: 6f6EU7giRUy3IOefrDCYnw==
X-CSE-MsgGUID: /S35yiUcQ2C2Aoe2vsKZkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="89496236"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="89496236"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 08:17:46 -0800
X-CSE-ConnectionGUID: Rq2tBsx6TBe95PU8E5cnGA==
X-CSE-MsgGUID: Cb2aDBD8T9SCZq/FPLpL/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="212745638"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 08:17:45 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 08:17:44 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 12 Feb 2026 08:17:44 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 08:17:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mQQl0A4OY4QsCiWKBRtz0u4NaFtcSsT549JZUHGM1m6lW+PLUq4veTQI3HLrML+VaujdkJGZkwWDrEYoKL5oW4Uvk+2EZx0JpfaU+uwOQwJkRiqOzlkGY5i43oezfW5Yz9EplNHZ2Y2j4E+XhfvKI/It1Vz88Gi0Gr04qKj4dPloleOwdtoIvktm7ZnZ1xVbaqo5ney4ar0Wda8NceMYNWDmiycx7h9fvTKNo/ObPR1sj/mwY0vML5gaSKg87KCtuEbOURbhgs6J1k+KXWK6vqL/trrqtQ/OVfYJqEePs5SWnoraW+PCwAXql0xK+pcATU3MtI/QsI2dhhjO6qKR0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7DQjx/xYece5SyUOeeh7YfXidMMMfENP58NGOpTJuHI=;
 b=Gkoq+6NUzvyXy2SQe1jT2yQ74a6XEbnuQMgX8QXwPOWc5xGNW/gFGVc+QmmC1fgG/+aLGqyMKpySjoa92RPF+6IehXqo3aiM3YHtwbW+LF7Ja4rW7ySKH2POIZYtncISlGUrA3HLyq5COO1hSw04YH8yLZoFZY2H19z/fFKgVn580zGjF5SxK4tIA3BGLQ63zLjyrC7CcY71aVStWgNPlP1pInP8xN0AvGheMd2S8+lwg1czGnqRrDo1/9r9KebJegumTMcoXZOuvQuucr4FjAlTrC7pPIFdyAL2hRkkCbxKLpWtN1vNPCJjZDSssUM4cS6mKj1O2nhSm4lOf5vKDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7764.namprd11.prod.outlook.com (2603:10b6:610:145::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.12; Thu, 12 Feb
 2026 16:17:39 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.008; Thu, 12 Feb 2026
 16:17:39 +0000
Date: Thu, 12 Feb 2026 18:17:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, "Ankit K
 Nautiyal" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_series_starting_with_=5B1=2F2=5D_drm=2Fi915=2Fdisplay?=
 =?utf-8?Q?=3A_Clarif?= =?utf-8?Q?y?= target pipe bpp variable name in
 compute_sink_pipe_bpp()
Message-ID: <aY39HF1nZ8H1SYuN@ideak-desk.lan>
References: <20260211115811.508496-1-imre.deak@intel.com>
 <177085437889.247401.14482774231614824232@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177085437889.247401.14482774231614824232@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00004534.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::35f) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7764:EE_
X-MS-Office365-Filtering-Correlation-Id: 23c042df-76d7-43e9-af5b-08de6a523d7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sHi+LCWTWjAIEHvfPDoF6Fnm12KvR0YQMbJn0yggQPmBn8hAdBACQ9FjL2+L?=
 =?us-ascii?Q?G7YILEu7qUG3cRRQWYWZMc6aEW8+TGFllu84ByenU2pwwcJ9gLE6UYQnyvVC?=
 =?us-ascii?Q?VGSEUPLDZFosO/iGcXu3nWZ95+BO5ruWiRJaZUe3xgxdh6OxPJRp+gQVmYS/?=
 =?us-ascii?Q?KxkG+jbQpyYs10uw3oNQP6xKetp27//lg0oAhheqOLkYT0M6AMUTOEPT3qdL?=
 =?us-ascii?Q?SX+Hdcln4KzeNd+x8U874yr8CGqjeXTiY6QNpAo5hr2/nWHnEBLadKt71IkM?=
 =?us-ascii?Q?aFC9KUzCQ8QsyKjjibF7U4xIaNkbURhS9dJAPtQU0pq6arP8ARgu0SxVF7ih?=
 =?us-ascii?Q?JI8C8RjndslAKp6b+EV/EhHT6z7M2Wr21050T6AZPWLa3ZSrMm50p4wgybUf?=
 =?us-ascii?Q?zx6twnRaMhN4hzNUBWTBwXYyab+iIu4uxcdwIlbPLfNvAaTLOr/iabDEXZTt?=
 =?us-ascii?Q?Ze6W04CT353+vxVa6dL5z+pEffxn4QlNtmykofjxeJOdLFvmgjL/xmXTZuAd?=
 =?us-ascii?Q?/v39cXDemGe5Q5+habjdXrlFt++dI2ZtuqFR3LF5O7ig8pXoDxjdDsZN2NQY?=
 =?us-ascii?Q?Rah56DpEZGQqv+ZKLZpiy60qdxfuUGvzKQNYFKKQQXcdljCvNob7j68otqqf?=
 =?us-ascii?Q?mf3WR+NjsjjMpVf0cqMFCeGJlQ12zeaaXFxYxpJPHTxzZCQkXXTnTGsnbueD?=
 =?us-ascii?Q?gmA3IM8r0GduZlajWPDvBCpMIey/fXORUrUZd7FICmW+zFS+FwMV1OmnqI22?=
 =?us-ascii?Q?iAnZPvUHwYxeXmF/NDEvE9HPD7Smoifc4tbWH2hWt57EnuTDPqgPKyD+C3b2?=
 =?us-ascii?Q?U4P5q8Ovo3xkkv0KNDt6UDHi6VOSXlikn/S0TLuOOy8Taxu3wme2M1xUqMf4?=
 =?us-ascii?Q?CJVK0UsO8kVLTa9IGTQf4ZOl8hw2R8NAsClE9GOIRKOx/MEFhtw1q1+X4f0H?=
 =?us-ascii?Q?bkGBCdQ88lkYY1DRYReX3lUO5IqOm7h4mvwwbQrnGMMdeXeQJemgA17tGYrQ?=
 =?us-ascii?Q?INglLvqw49yLHNYvZklx3QBW8f9+DIBWtZRtgTyfKVG2OibjUIOPyBJ9fn63?=
 =?us-ascii?Q?ECyZA2W2GPjpsZlW/isY5axYMil2bwFQ4fyBNZCi1JuNPIjH995xXVdfnAIL?=
 =?us-ascii?Q?uugXVwR0pMNaasHgTzRTMmVCL3fteSoLZ0rKTPRvvMgkf3DnEzyq1QqCaosU?=
 =?us-ascii?Q?cJN7S3LftSeV4rkezMUw0xbsvNRvLx4XQTOCAIuQGLXFOt47WqlOpDzRNxS9?=
 =?us-ascii?Q?ikluNvk0BUh6A7G9FvT7YZ38Ix8fCsDON2+w1NTwRG4w3I6DTVepsCiFQmGp?=
 =?us-ascii?Q?ZV6QPOUDtiBHLTb0voxvG417zSotc1QFJhi6uyUfOdrrr4hpHgsCd3seWilG?=
 =?us-ascii?Q?ybRN0UbP5ca/pPqe8zwujf0kSv2Eg0xjvriIvMNOwj2kkunCjM+gllozdWi7?=
 =?us-ascii?Q?68uo+k2QxanSSJWcjpKEUBmkO+pRhXskmpQAwYk9zYa5o9UfD92MkKh8mCDQ?=
 =?us-ascii?Q?UyqezPYe5Zyegc0TlibK0ECSShcPcUixOLNH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I/kLtdW5vYwc6Ai06i9s6PGf25LpDd/60RtgdtXv3HEIAKv6SjhKkzLY6k+K?=
 =?us-ascii?Q?aOKNiKwyPhz+7CzOSBj7bXMOK3bmLKQy8gJuoRdht4TuZNSBufPlYbnv8oSC?=
 =?us-ascii?Q?MYZoY8bCK5HtPZxZ0yEYOeI1Gvkc5ARQoKlrvp0PG3Gs7jkRO6qWkQmZwxUH?=
 =?us-ascii?Q?KLJQFMAZpEnGB5AWHC5gWKBHlTqckhARmpgK1KOaLOHGaHcKcBvE2HrD0JIF?=
 =?us-ascii?Q?cCjHe+sm96aQECp3riVymrBCxxxmzkdin8QdbjIWD4cqZbgUoUS20HP/OEfL?=
 =?us-ascii?Q?mrWgxyUfQBtm+RV0NmDM7A6GCrASmdsvs1zkaSJ76JswbIK2OzOlzcJF5Shc?=
 =?us-ascii?Q?rgJ0yYYuI2qLIrbXDxHHNH5A7xJBf5Xm5Nh1+ViQYnJEWB94WO2RqpEJoBNH?=
 =?us-ascii?Q?6BHh1kLzujL1nzejL3VjW/MgcWfgVRd/ha7DeIMyanhfZ1FiaVZyFs/AqWtq?=
 =?us-ascii?Q?fPiUP5efL/+tPlLjnD2QABg37fJYoTIfsX2a0TnSJeFLt3oe9DolAShvPCMQ?=
 =?us-ascii?Q?0NbwZ8nsGWFb6whRUUqWFo6Wdv9cgUU3bB0MARyAsWZf3nRTZ1EP88e4A7Fa?=
 =?us-ascii?Q?o6gDwxhaWwh55pNJ1Ro9Ao8Mu/W00HONXDX0axsOQMepsQ4WjQhAhAOmS92w?=
 =?us-ascii?Q?rRADaEQlAMOBs0fGNgKlVOi7yTgtofx2nNQ/SsN3BcD6K9jxdHEPc338yzjp?=
 =?us-ascii?Q?E1cBUfYospoEyZFfsmoUTf4phGKRepHRFYboI1JIRYyMCujqkshmf7KKHBWN?=
 =?us-ascii?Q?M0vPMH0NyD4gw3PBrcNrzOduZSs1aWMMs46xwlFxLwbhT92kx/QCfNR6qE/0?=
 =?us-ascii?Q?xHO4HqNoULwMcSWN73thoO1PHEHk4c0NZx5owM+TXnzuNCVl29uBVotvVb6v?=
 =?us-ascii?Q?qmBjtxkakfbKXhHCnlM7YngGyYI7v6Z/KwasKDkhKoX8Ncmc5EOK9B50ifjV?=
 =?us-ascii?Q?UbzI34Gg57iggLSjWdH6eGLIT7Se1jDS7ypzL8viHvB66UuMe+NSoaoBdWh8?=
 =?us-ascii?Q?FqEV/SQkzwPl8eu/rgEJ8coA+Fg0T4THjqwa6ZHdl6R3Bjh32zKrWHbP3Z30?=
 =?us-ascii?Q?sfidR9T2oZk/hfws1UJO7xlhQu2k8kfcwJmNoSBjZODkSodgTT2meV4Wz9l7?=
 =?us-ascii?Q?G4Y1zz8ZYJzKeAydh7n2ehL9D8cejyBrR9F296sulnRV+KQmiHHux+59s9t6?=
 =?us-ascii?Q?AqP6HAS+izO2OiB+/9v7vsS6PCLiXk67mgSvyIQc+EZyofCWPcIjguLmOUg5?=
 =?us-ascii?Q?4v55NaJqAIevNEiL+DQ0bJM4I8sUKBaX0Qq+Dk1tNRt0Bprsh8AGKZjM1drI?=
 =?us-ascii?Q?2LsKCAzkcRM4sw5lKW9e4J6ij2tDYrhiXLnDETchJo0z7CAeR5ChX7/BiukZ?=
 =?us-ascii?Q?6+g8cFWQ95qQTpYkJRifG24klTrtiQj52MtHUrtyPRph1LQKsETQDJPNzILJ?=
 =?us-ascii?Q?PpmQ46QULfODf6xcbnxZDicVYnTHbuy/vKjnoRheINP+c2N28Qxzj2wBhUa/?=
 =?us-ascii?Q?TG10q+ThWOwLSaJjpALpISjUo5A0o0hV88VQ2WhvIoYlR2eftCM8MJOLq7Ao?=
 =?us-ascii?Q?8/6Vu+fBSlM7Esdd4HROy/rthhHQ0Cy2aYhQae9tAAQJ4r8sKAXl5ijAOBNt?=
 =?us-ascii?Q?NevtThOKqfiOz3jaRIHSXhigQ/mrLO8jve1euJKtJqtFiYNtZDUcsHN08sUx?=
 =?us-ascii?Q?Az4m8b1i3C/T17gwIcCZ6IwH45zJ2pSE0W4za5ChYiA26fBVypzf4juvWbey?=
 =?us-ascii?Q?gHveFN2qVA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23c042df-76d7-43e9-af5b-08de6a523d7c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 16:17:39.0440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tX1krmZyNfX83Z9AFQMYZ9bASgAwhHCopUzPJ4RgOoV+QQxDZABUDPm8dsiQN++cvJDVXBYKK1neiTFQ1qlOwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7764
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2988912F442
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 11:59:38PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/display: Clarify target pipe bpp variable name in compute_sink_pipe_bpp()
> URL   : https://patchwork.freedesktop.org/series/161497/
> State : failure

Thanks for the reviews, patchset is pushed to drm-intel-next. While
pushing I fixed the commit message typos and clarified the code comment
referring to the baseline maximum BPP in patch 2, based on the review
comments.

The failure is unrelated see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17976_full -> Patchwork_161497v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_161497v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_161497v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_161497v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-dg2:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-5/igt@gem_lmem_swapping@smem-oom.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-4/igt@gem_lmem_swapping@smem-oom.html
>     - shard-dg1:          [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-16/igt@gem_lmem_swapping@smem-oom.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom.html

Neither of the above hosts has a DP output where the changes matter
(except for a trivial change in compute_sink_pipe_bpp() also relevant to
HDMI, but that change is w/o a functional effect).

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_17976_full and Patchwork_161497v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_vblank@wait-busy@pipe-a-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.46] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_161497v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-tglu:         NOTRUN -> [SKIP][5] ([i915#6230])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@api_intel_bb@crc32.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#11078])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_buddy@drm_buddy:
>     - shard-tglu:         NOTRUN -> [SKIP][7] ([i915#15678])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@drm_buddy@drm_buddy.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#3281]) +5 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-tglu:         NOTRUN -> [SKIP][9] ([i915#7697]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#3555] / [i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][12] -> [INCOMPLETE][13] ([i915#13356])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#8562])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#4771])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#4525])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#4525])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][18] ([i915#4525])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu:         [PASS][19] -> [ABORT][20] ([i915#11713])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-tglu-5/igt@gem_exec_big@single.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#6334]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-glk:          NOTRUN -> [SKIP][22] ([i915#4613]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk1/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#4613]) +2 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#4613]) +1 other test skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][25] ([i915#4613])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][26] -> [CRASH][27] ([i915#5493])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html
>     - shard-dg1:          [PASS][28] -> [CRASH][29] ([i915#5493])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_partial_pwrite_pread@write:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#3282])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@gem_partial_pwrite_pread@write.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#3282]) +5 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglu-1:       NOTRUN -> [WARN][32] ([i915#2658])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@gem_pread@exhaustion.html
>     - shard-glk10:        NOTRUN -> [WARN][33] ([i915#2658])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk10/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#8411])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@reads:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4077]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@gem_tiled_partial_pwrite_pread@reads.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3297])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@gem_userptr_blits@readonly-unsync.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#3297])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-rkl:          [PASS][38] -> [INCOMPLETE][39] ([i915#13356])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-5/igt@gem_workarounds@suspend-resume.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-4/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][40] ([i915#13356])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk10/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#2527] / [i915#2856])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#2527]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-tglu-1:       NOTRUN -> [SKIP][43] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-tglu-1:       NOTRUN -> [SKIP][44] ([i915#6412])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-rkl:          NOTRUN -> [ABORT][45] ([i915#15060])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-1/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#6245])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#5723])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-rkl:          [PASS][48] -> [ABORT][49] ([i915#15140])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][50] ([i915#4817]) +2 other tests incomplete
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk1/igt@i915_suspend@forcewake.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#7707])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglu-1:       NOTRUN -> [SKIP][52] ([i915#9531])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg2:          [PASS][53] -> [FAIL][54] ([i915#5956]) +1 other test fail
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][55] ([i915#1769])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][56] -> [FAIL][57] ([i915#15662]) +1 other test fail
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-tglu-9/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#5286]) +4 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#5286]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#5286]) +3 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#3638])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#3828])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-tglu-1:       NOTRUN -> [SKIP][63] +25 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#6095]) +119 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#14544] / [i915#6095]) +16 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#14098] / [i915#6095]) +45 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#10307] / [i915#6095]) +139 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#6095]) +4 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#14098] / [i915#14544] / [i915#6095]) +8 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][70] ([i915#12805])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#6095]) +34 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>     - shard-rkl:          [PASS][72] -> [INCOMPLETE][73] ([i915#15582])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][74] ([i915#15582])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#6095]) +59 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-b-dp-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#6095]) +49 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#6095]) +74 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][79] +299 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3742])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#13783]) +3 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@hdmi-aspect-ratio:
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#11151] / [i915#7828])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@kms_chamelium_frames@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms-hdcp14:
>     - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#6944])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_content_protection@atomic-dpms-hdcp14.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#6944])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#15330])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#6944] / [i915#7118] / [i915#9424])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_content_protection@legacy.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@legacy-hdcp14@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][92] ([i915#7173])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-11/igt@kms_content_protection@legacy-hdcp14@pipe-a-dp-3.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#3555])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85:
>     - shard-rkl:          [PASS][94] -> [FAIL][95] ([i915#13566])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][96] ([i915#13566]) +2 other tests fail
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#13049])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#13049]) +1 other test skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#13049])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#9809])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][101] +11 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#9067])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][103] ([i915#9067])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#4103]) +1 other test skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg2:          [PASS][105] -> [SKIP][106] ([i915#3555])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#3555] / [i915#3804])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#3804])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#13749])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#3555] / [i915#3840])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][111] ([i915#3840] / [i915#9053])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#3469])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#2065] / [i915#4854])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#1839])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#1839]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#9337])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#9934])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#9934]) +3 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-modeset.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#15643]) +3 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#15643]) +3 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#15643]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#8708])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#1825]) +26 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#1825]) +1 other test skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
>     - shard-tglu:         NOTRUN -> [SKIP][127] +39 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][128] ([i915#10056])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk6/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#15102]) +2 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-glk10:        NOTRUN -> [SKIP][130] +202 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:
>     - shard-snb:          NOTRUN -> [SKIP][131] +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#15102] / [i915#3023]) +12 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#5439])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#15102]) +13 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#15102]) +17 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-dg2:          [PASS][136] -> [SKIP][137] ([i915#3555] / [i915#8228])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-11/igt@kms_hdr@bpc-switch-suspend.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3555] / [i915#8228])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          [PASS][139] -> [SKIP][140] ([i915#3555] / [i915#8228])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#3555] / [i915#8228])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#15460])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [PASS][143] -> [SKIP][144] ([i915#15459])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-7/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#15458])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier@pipe-b-plane-5:
>     - shard-tglu-1:       NOTRUN -> [SKIP][146] ([i915#15608]) +20 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#15608] / [i915#15609] / [i915#8825])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping@pipe-b-plane-5:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#15609] / [i915#8825])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#15608] / [i915#8825]) +3 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#15608] / [i915#8825]) +5 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier@pipe-a-plane-3:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#15608]) +13 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier@pipe-a-plane-3.html
> 
>   * igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping@pipe-b-plane-7:
>     - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#15609]) +5 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping@pipe-b-plane-7.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping@pipe-a-plane-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#15609]) +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping@pipe-a-plane-7.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping@pipe-b-plane-5:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#15609]) +2 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping@pipe-b-plane-5.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#13958])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#13958])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#14259])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#14259])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#15329]) +4 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#12343])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#9812])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#3828])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][163] -> [SKIP][164] ([i915#15073])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
>     - shard-dg1:          [PASS][165] -> [SKIP][166] ([i915#15073]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-14/igt@kms_pm_rpm@dpms-lpsp.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-13/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [PASS][167] -> [SKIP][168] ([i915#14544] / [i915#15073])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#15073])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          [PASS][170] -> [SKIP][171] ([i915#15073]) +2 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#6524])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_prime@d3hot.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#6524])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][174] ([i915#11520]) +5 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#11520]) +5 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#11520]) +5 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
>     - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#12316])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#11520]) +4 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:
>     - shard-glk10:        NOTRUN -> [SKIP][179] ([i915#11520]) +4 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk10/igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#9732]) +8 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@pr-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#9732]) +16 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_psr@pr-dpms.html
> 
>   * igt@kms_psr@psr-sprite-plane-move:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-1/igt@kms_psr@psr-sprite-plane-move.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#5289]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#8623])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [ABORT][186] ([i915#15132])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-1/igt@kms_vblank@ts-continuation-suspend@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#3555] / [i915#8808])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-7/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#3555]) +5 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-4/igt@kms_vrr@flip-suspend.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-rkl:          NOTRUN -> [FAIL][189] ([i915#14433])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@perf_pmu@module-unload.html
>     - shard-tglu-1:       NOTRUN -> [FAIL][190] ([i915#14433])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-1/igt@perf_pmu@module-unload.html
>     - shard-glk10:        NOTRUN -> [FAIL][191] ([i915#14433])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk10/igt@perf_pmu@module-unload.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_read@short-buffer-nonblock:
>     - shard-dg1:          [DMESG-WARN][192] ([i915#4423]) -> [PASS][193] +3 other tests pass
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-12/igt@drm_read@short-buffer-nonblock.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-18/igt@drm_read@short-buffer-nonblock.html
> 
>   * igt@gem_exec_big@single:
>     - shard-mtlp:         [DMESG-FAIL][194] ([i915#15478]) -> [PASS][195]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-mtlp-5/igt@gem_exec_big@single.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-6/igt@gem_exec_big@single.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          [DMESG-FAIL][196] ([i915#12061]) -> [PASS][197] +1 other test pass
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-11/igt@i915_selftest@live@workarounds.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-7/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [INCOMPLETE][198] ([i915#4817]) -> [PASS][199]
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@i915_suspend@forcewake.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][200] ([i915#5956]) -> [PASS][201] +1 other test pass
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [FAIL][202] ([i915#5138]) -> [PASS][203]
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          [SKIP][204] ([i915#12655] / [i915#3555]) -> [PASS][205]
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_color@deep-color.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_color@deep-color.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21:
>     - shard-rkl:          [FAIL][206] ([i915#13566]) -> [PASS][207]
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-64x21.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][208] ([i915#13566]) -> [PASS][209] +1 other test pass
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_force_connector_basic@force-edid:
>     - shard-mtlp:         [SKIP][210] ([i915#15672]) -> [PASS][211]
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-mtlp-1/igt@kms_force_connector_basic@force-edid.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-mtlp-4/igt@kms_force_connector_basic@force-edid.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          [SKIP][212] ([i915#3555] / [i915#8228]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_hdr@static-toggle.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [SKIP][214] ([i915#3555] / [i915#8228]) -> [PASS][215] +1 other test pass
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg1:          [SKIP][216] ([i915#15073]) -> [PASS][217] +1 other test pass
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-17/igt@kms_pm_rpm@modeset-lpsp.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][218] ([i915#15073]) -> [PASS][219] +2 other tests pass
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][220] ([i915#15073]) -> [PASS][221] +1 other test pass
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_setmode@basic:
>     - shard-dg2:          [FAIL][222] ([i915#15106]) -> [PASS][223]
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-5/igt@kms_setmode@basic.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-4/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:
>     - shard-rkl:          [INCOMPLETE][224] ([i915#12276]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-1/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-rkl:          [INCOMPLETE][226] ([i915#13520]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-3/igt@perf_pmu@rc6-suspend.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-8/igt@perf_pmu@rc6-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [SKIP][228] ([i915#8411]) -> [SKIP][229] ([i915#14544] / [i915#8411])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-rkl:          [SKIP][230] ([i915#14544] / [i915#8411]) -> [SKIP][231] ([i915#8411])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          [SKIP][232] ([i915#11078]) -> [SKIP][233] ([i915#11078] / [i915#14544])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@device_reset@cold-reset-bound.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@device_reset@cold-reset-bound.html
> 
>   * igt@gem_bad_reloc@negative-reloc:
>     - shard-rkl:          [SKIP][234] ([i915#14544] / [i915#3281]) -> [SKIP][235] ([i915#3281]) +6 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@gem_bad_reloc@negative-reloc.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@gem_bad_reloc@negative-reloc.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          [SKIP][236] ([i915#14544] / [i915#7697]) -> [SKIP][237] ([i915#7697])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@gem_basic@multigpu-create-close.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-1/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][238] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][239] ([i915#3555] / [i915#9323])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          [SKIP][240] ([i915#14544] / [i915#6335]) -> [SKIP][241] ([i915#6335])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          [SKIP][242] ([i915#8562]) -> [SKIP][243] ([i915#14544] / [i915#8562])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@gem_create@create-ext-set-pat.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          [SKIP][244] ([i915#14544] / [i915#4525]) -> [SKIP][245] ([i915#4525])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          [SKIP][246] ([i915#6334]) -> [SKIP][247] ([i915#14544] / [i915#6334]) +1 other test skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@gem_exec_capture@capture-invisible@smem0.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          [SKIP][248] ([i915#6344]) -> [SKIP][249] ([i915#14544] / [i915#6344])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@gem_exec_capture@capture-recoverable.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-rkl:          [SKIP][250] ([i915#3281]) -> [SKIP][251] ([i915#14544] / [i915#3281]) +4 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@gem_exec_reloc@basic-wc.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          [SKIP][252] ([i915#14544] / [i915#4613] / [i915#7582]) -> [SKIP][253] ([i915#4613] / [i915#7582])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          [SKIP][254] ([i915#4613]) -> [SKIP][255] ([i915#14544] / [i915#4613]) +3 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-rkl:          [SKIP][256] ([i915#14544] / [i915#4613]) -> [SKIP][257] ([i915#4613]) +1 other test skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@gem_lmem_swapping@verify-random.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_partial_pwrite_pread@reads-snoop:
>     - shard-rkl:          [SKIP][258] ([i915#14544] / [i915#3282]) -> [SKIP][259] ([i915#3282])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-snoop.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@gem_partial_pwrite_pread@reads-snoop.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-rkl:          [SKIP][260] ([i915#3282]) -> [SKIP][261] ([i915#14544] / [i915#3282]) +2 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@gem_partial_pwrite_pread@write-display.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-rkl:          [SKIP][262] ([i915#14544] / [i915#3297]) -> [SKIP][263] ([i915#3297])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          [SKIP][264] ([i915#14544] / [i915#2527]) -> [SKIP][265] ([i915#2527])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-rkl:          [SKIP][266] ([i915#2527]) -> [SKIP][267] ([i915#14544] / [i915#2527])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@gen9_exec_parse@unaligned-access.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          [SKIP][268] ([i915#14544] / [i915#8399]) -> [SKIP][269] ([i915#8399])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          [SKIP][270] ([i915#14498]) -> [SKIP][271] ([i915#14498] / [i915#14544])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          [SKIP][272] ([i915#4387]) -> [SKIP][273] ([i915#14544] / [i915#4387])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          [SKIP][274] ([i915#14544] / [i915#7984]) -> [SKIP][275] ([i915#7984])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@i915_power@sanity.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@i915_power@sanity.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][276] ([i915#5723]) -> [SKIP][277] ([i915#14544] / [i915#5723])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@i915_query@test-query-geometry-subslices.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          [SKIP][278] ([i915#1769] / [i915#3555]) -> [SKIP][279] ([i915#14544] / [i915#1769] / [i915#3555])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-dg1:          [SKIP][280] ([i915#4423] / [i915#4538] / [i915#5286]) -> [SKIP][281] ([i915#4538] / [i915#5286])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-12/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-18/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>     - shard-rkl:          [SKIP][282] ([i915#14544] / [i915#5286]) -> [SKIP][283] ([i915#5286]) +2 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-rkl:          [SKIP][284] ([i915#5286]) -> [SKIP][285] ([i915#14544] / [i915#5286]) +3 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][286] ([i915#14544] / [i915#3638]) -> [SKIP][287] ([i915#3638]) +3 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          [SKIP][288] ([i915#14544] / [i915#3828]) -> [SKIP][289] ([i915#3828]) +1 other test skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          [SKIP][290] ([i915#3638]) -> [SKIP][291] ([i915#14544] / [i915#3638]) +1 other test skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-rkl:          [SKIP][292] -> [SKIP][293] ([i915#14544]) +15 other tests skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs:
>     - shard-dg1:          [SKIP][294] ([i915#4423] / [i915#6095]) -> [SKIP][295] ([i915#6095]) +2 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-18/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs:
>     - shard-rkl:          [SKIP][296] ([i915#14098] / [i915#6095]) -> [SKIP][297] ([i915#14098] / [i915#14544] / [i915#6095]) +8 other tests skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][298] ([i915#12313]) -> [SKIP][299] ([i915#12313] / [i915#14544])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][300] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][301] ([i915#14098] / [i915#6095]) +14 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][302] ([i915#14544] / [i915#6095]) -> [SKIP][303] ([i915#6095]) +7 other tests skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][304] ([i915#12313] / [i915#14544]) -> [SKIP][305] ([i915#12313]) +1 other test skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-rkl:          [SKIP][306] ([i915#11151] / [i915#7828]) -> [SKIP][307] ([i915#11151] / [i915#14544] / [i915#7828]) +5 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_chamelium_frames@hdmi-crc-fast.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>     - shard-rkl:          [SKIP][308] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][309] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [FAIL][310] ([i915#7173]) -> [SKIP][311] ([i915#6944] / [i915#7118] / [i915#9424])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html
>     - shard-rkl:          [SKIP][312] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][313] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-rkl:          [SKIP][314] ([i915#6944]) -> [SKIP][315] ([i915#14544] / [i915#6944])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@kms_content_protection@atomic-hdcp14.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-hdcp14:
>     - shard-rkl:          [SKIP][316] ([i915#15330]) -> [SKIP][317] ([i915#14544] / [i915#15330])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@legacy-hdcp14:
>     - shard-dg2:          [SKIP][318] ([i915#6944]) -> [FAIL][319] ([i915#7173])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-6/igt@kms_content_protection@legacy-hdcp14.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-11/igt@kms_content_protection@legacy-hdcp14.html
>     - shard-rkl:          [SKIP][320] ([i915#14544] / [i915#6944]) -> [SKIP][321] ([i915#6944]) +1 other test skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_content_protection@legacy-hdcp14.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_content_protection@legacy-hdcp14.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][322] ([i915#6944] / [i915#9424]) -> [SKIP][323] ([i915#9433])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-17/igt@kms_content_protection@mei-interface.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-13/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][324] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][325] ([i915#6944] / [i915#7118] / [i915#7162] / [i915#9424])
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-5/igt@kms_content_protection@type1.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-11/igt@kms_content_protection@type1.html
>     - shard-rkl:          [SKIP][326] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][327] ([i915#6944] / [i915#7118] / [i915#9424]) +1 other test skip
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_content_protection@type1.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-rkl:          [SKIP][328] ([i915#13049] / [i915#14544]) -> [SKIP][329] ([i915#13049]) +1 other test skip
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][330] ([i915#14544] / [i915#3555]) -> [SKIP][331] ([i915#3555]) +2 other tests skip
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          [SKIP][332] ([i915#4103]) -> [SKIP][333] ([i915#14544] / [i915#4103]) +1 other test skip
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][334] ([i915#9723]) -> [SKIP][335] ([i915#14544] / [i915#9723])
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-rkl:          [SKIP][336] ([i915#13748]) -> [SKIP][337] ([i915#13748] / [i915#14544])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_dp_link_training@uhbr-mst.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-rkl:          [SKIP][338] ([i915#13707] / [i915#14544]) -> [SKIP][339] ([i915#13707]) +1 other test skip
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          [SKIP][340] ([i915#14544] / [i915#3840]) -> [SKIP][341] ([i915#3840])
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          [SKIP][342] ([i915#3840]) -> [SKIP][343] ([i915#14544] / [i915#3840])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          [SKIP][344] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][345] ([i915#3555] / [i915#3840])
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-1/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-rkl:          [SKIP][346] ([i915#4854]) -> [SKIP][347] ([i915#14544] / [i915#4854])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@kms_feature_discovery@chamelium.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg1:          [SKIP][348] ([i915#4423] / [i915#9337]) -> [SKIP][349] ([i915#9337])
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-12/igt@kms_feature_discovery@dp-mst.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-18/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          [SKIP][350] ([i915#658]) -> [SKIP][351] ([i915#14544] / [i915#658])
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_feature_discovery@psr1.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-rkl:          [SKIP][352] ([i915#9934]) -> [SKIP][353] ([i915#14544] / [i915#9934]) +6 other tests skip
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_flip@2x-blocking-wf_vblank.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          [SKIP][354] ([i915#14544] / [i915#9934]) -> [SKIP][355] ([i915#9934]) +6 other tests skip
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][356] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][357] ([i915#12745] / [i915#4839] / [i915#6113])
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-rkl:          [SKIP][358] ([i915#15643]) -> [SKIP][359] ([i915#14544] / [i915#15643]) +1 other test skip
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][360] ([i915#14544] / [i915#15643]) -> [SKIP][361] ([i915#15643]) +3 other tests skip
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
>     - shard-dg1:          [SKIP][362] ([i915#4423]) -> [SKIP][363] +2 other tests skip
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][364] ([i915#1825]) -> [SKIP][365] ([i915#14544] / [i915#1825]) +28 other tests skip
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][366] ([i915#14544] / [i915#1825]) -> [SKIP][367] ([i915#1825]) +22 other tests skip
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][368] ([i915#15102]) -> [SKIP][369] ([i915#14544] / [i915#15102]) +2 other tests skip
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][370] ([i915#14544] / [i915#15102]) -> [SKIP][371] ([i915#15102]) +3 other tests skip
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          [SKIP][372] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][373] ([i915#15102] / [i915#3023]) +8 other tests skip
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>     - shard-dg2:          [SKIP][374] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][375] ([i915#15102] / [i915#3458])
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][376] ([i915#4423] / [i915#8708]) -> [SKIP][377] ([i915#8708]) +1 other test skip
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          [SKIP][378] ([i915#15102] / [i915#3023]) -> [SKIP][379] ([i915#14544] / [i915#15102] / [i915#3023]) +15 other tests skip
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-dg2:          [SKIP][380] ([i915#15102] / [i915#3458]) -> [SKIP][381] ([i915#10433] / [i915#15102] / [i915#3458]) +5 other tests skip
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg1:          [SKIP][382] ([i915#15102] / [i915#3458] / [i915#4423]) -> [SKIP][383] ([i915#15102] / [i915#3458]) +1 other test skip
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-rkl:          [SKIP][384] ([i915#14544] / [i915#15458]) -> [SKIP][385] ([i915#15458])
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#15460]) -> [SKIP][387] ([i915#15460])
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-1/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          [SKIP][388] ([i915#15459]) -> [SKIP][389] ([i915#14544] / [i915#15459])
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          [SKIP][390] ([i915#6301]) -> [SKIP][391] ([i915#14544] / [i915#6301])
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_panel_fitting@legacy.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-rkl:          [SKIP][392] ([i915#14544]) -> [SKIP][393] +9 other tests skip
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>     - shard-rkl:          [SKIP][394] ([i915#14712]) -> [SKIP][395] ([i915#14544] / [i915#14712])
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier-source-clamping:
>     - shard-rkl:          [SKIP][396] ([i915#14544] / [i915#15608] / [i915#15609] / [i915#8825]) -> [SKIP][397] ([i915#15608] / [i915#15609] / [i915#8825]) +2 other tests skip
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier-source-clamping.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:
>     - shard-rkl:          [SKIP][398] ([i915#15608] / [i915#15609] / [i915#8825]) -> [SKIP][399] ([i915#14544] / [i915#15608] / [i915#15609] / [i915#8825])
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-a-plane-0:
>     - shard-rkl:          [SKIP][400] ([i915#15608]) -> [SKIP][401] ([i915#14544] / [i915#15608]) +2 other tests skip
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-a-plane-0.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-a-plane-0.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-b-plane-5:
>     - shard-rkl:          [SKIP][402] ([i915#15609] / [i915#8825]) -> [SKIP][403] ([i915#14544] / [i915#15609] / [i915#8825])
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-b-plane-5.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping:
>     - shard-dg1:          [SKIP][404] ([i915#15608] / [i915#15609] / [i915#4423] / [i915#8825]) -> [SKIP][405] ([i915#15608] / [i915#15609] / [i915#8825])
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-12/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-18/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping@pipe-a-plane-0:
>     - shard-dg1:          [SKIP][406] ([i915#15608] / [i915#4423]) -> [SKIP][407] ([i915#15608])
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-dg1-12/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping@pipe-a-plane-0.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-dg1-18/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping@pipe-a-plane-0.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-modifier@pipe-b-plane-5:
>     - shard-rkl:          [SKIP][408] ([i915#15608] / [i915#8825]) -> [SKIP][409] ([i915#14544] / [i915#15608] / [i915#8825]) +3 other tests skip
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-modifier@pipe-b-plane-5.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-modifier@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping@pipe-a-plane-0:
>     - shard-rkl:          [SKIP][410] ([i915#14544] / [i915#15608]) -> [SKIP][411] ([i915#15608]) +2 other tests skip
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping@pipe-a-plane-0.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping@pipe-a-plane-0.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping@pipe-b-plane-5:
>     - shard-rkl:          [SKIP][412] ([i915#14544] / [i915#15609] / [i915#8825]) -> [SKIP][413] ([i915#15609] / [i915#8825]) +2 other tests skip
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping@pipe-b-plane-5.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping@pipe-b-plane-5.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          [SKIP][414] ([i915#3555]) -> [SKIP][415] ([i915#14544] / [i915#3555]) +4 other tests skip
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_plane_lowres@tiling-yf.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-rkl:          [SKIP][416] ([i915#14259]) -> [SKIP][417] ([i915#14259] / [i915#14544])
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@kms_plane_multiple@tiling-4.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][418] ([i915#14544] / [i915#15329]) -> [SKIP][419] ([i915#15329]) +3 other tests skip
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][420] ([i915#15329]) -> [SKIP][421] ([i915#14544] / [i915#15329]) +3 other tests skip
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          [SKIP][422] ([i915#5354]) -> [SKIP][423] ([i915#14544] / [i915#5354]) +1 other test skip
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_pm_backlight@fade-with-dpms.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][424] ([i915#11520] / [i915#14544]) -> [SKIP][425] ([i915#11520]) +4 other tests skip
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][426] ([i915#11520]) -> [SKIP][427] ([i915#11520] / [i915#14544]) +5 other tests skip
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          [SKIP][428] ([i915#14544] / [i915#9683]) -> [SKIP][429] ([i915#9683])
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@pr-primary-mmap-cpu:
>     - shard-rkl:          [SKIP][430] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][431] ([i915#1072] / [i915#9732]) +10 other tests skip
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_psr@pr-primary-mmap-cpu.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_psr@pr-primary-mmap-cpu.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-rkl:          [SKIP][432] ([i915#1072] / [i915#9732]) -> [SKIP][433] ([i915#1072] / [i915#14544] / [i915#9732]) +15 other tests skip
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@kms_psr@psr-cursor-mmap-cpu.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          [SKIP][434] ([i915#14544] / [i915#9685]) -> [SKIP][435] ([i915#9685])
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          [SKIP][436] ([i915#14544] / [i915#5289]) -> [SKIP][437] ([i915#5289])
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          [SKIP][438] ([i915#5289]) -> [SKIP][439] ([i915#14544] / [i915#5289])
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-rkl:          [INCOMPLETE][440] ([i915#12276]) -> [ABORT][441] ([i915#15132])
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_vblank@ts-continuation-suspend.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-1/igt@kms_vblank@ts-continuation-suspend.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-rkl:          [SKIP][442] ([i915#14544] / [i915#15243] / [i915#3555]) -> [SKIP][443] ([i915#15243] / [i915#3555])
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_vrr@flip-basic.html
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-2/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          [SKIP][444] ([i915#11920] / [i915#14544]) -> [SKIP][445] ([i915#11920])
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@kms_vrr@lobf.html
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-5/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          [SKIP][446] ([i915#9906]) -> [SKIP][447] ([i915#14544] / [i915#9906])
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-virtual.html
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][448] ([i915#2433]) -> [SKIP][449] ([i915#14544] / [i915#2433])
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-8/igt@perf@unprivileged-single-ctx-counters.html
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [SKIP][450] ([i915#14544] / [i915#3708]) -> [SKIP][451] ([i915#3708])
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-3/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          [SKIP][452] ([i915#3708]) -> [SKIP][453] ([i915#14544] / [i915#3708])
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@prime_vgem@fence-write-hang.html
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          [SKIP][454] ([i915#9917]) -> [SKIP][455] ([i915#14544] / [i915#9917])
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17976/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-off.html
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   
>   [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15140]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15478]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15478
>   [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
>   [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
>   [i915#15609]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15609
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15662]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15662
>   [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
>   [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17976 -> Patchwork_161497v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17976: 2938ce73d01357a5816ed7dbd041154b58635a37 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8749: 195f101f25a7984686f36f340aa88d44a1716ec6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_161497v1: 2938ce73d01357a5816ed7dbd041154b58635a37 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161497v1/index.html
