Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B7397C1D1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 00:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B987010E23D;
	Wed, 18 Sep 2024 22:13:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h8Cmm8Oh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497C710E23D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 22:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726697629; x=1758233629;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=goPefE8gGumW31q/97EYzfdqsgkT3sGMcB7Oi2q6jT0=;
 b=h8Cmm8Oh+3JpYkQ3/pUekO5EjVT8rmfTK5O0ZKeXMX2aprf9tMDMEq0T
 0NwaLaFdY11frexc5qzMUJGG9WR0wK07FDO0uAK0E0BaJn+ALaHHyad6/
 7Hyz8Y2IeXx9/M+spn6wx3412FI+Mx+wJKIeHBNc1HEBWde2FVGR3wtVM
 02uvdwnEz5n+mgxegIMtnrBFeRBdxn4S6eNu2fRphPDeXR9aULVjb4uC8
 zPdMtvl9UYFkwu8IpDt4YZj3Ei9963QDrCUA0u6EWw0kFTt7i5D9iJ4oG
 2NmMneUZrnGWXH44Dir1dtOMT4sVId10fcjvHIP5jzRZFUBHg4M7UpYfn g==;
X-CSE-ConnectionGUID: w8tAqFw9S4+bCq1XSJ8E6Q==
X-CSE-MsgGUID: UIRt7JpnRBSA0KN7M/j9UQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36766793"
X-IronPort-AV: E=Sophos;i="6.10,240,1719903600"; d="scan'208";a="36766793"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 15:13:49 -0700
X-CSE-ConnectionGUID: QPMRzIYOTa2hxCnZxfByFQ==
X-CSE-MsgGUID: t8ZwlMwwT5WqyADKrSCODg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,240,1719903600"; d="scan'208";a="69842315"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 15:13:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 15:13:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 15:13:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 15:13:47 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 15:13:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UfKl8fE81wv/3ehi9dOPhYJXweqqoWlaJVN7WX2VpdxvvONMQkupsRRH6mWfSkqdL2IWGLtjrNiHuQkwmDY+oyumO/Z3sx8BS9Wlpv+TcB+H8oAeiCm1C74iJsTf4Yk+l0D7BAocDz5j8j044xeK0GpGQ83GmPgXxhOc8SZ4QfZ8X+niH6AxPLznn8JhkwZ6lE7b69jka0o98/BVdP//dNJGi7bQRoM7cHXlz2rqOMLs2kSyKK0Mv4ePHRSBdZQxe35rjKGYp2S2yC2qaALx4UxA2UzwrQo7t2VAwE4i8Udj+JiglMKCWbHBkDt8WYH8NkqkhYI9BwoZyisvsqfPbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+cs9IWSiPO5+kGPxeiL+vYzbnPirzXykLmFvI77P5ww=;
 b=Kyf6A15yuEeoxVP1q8H4Lp9K/SfYfxDOeMTp2tQhyJ/c7xDOZGKdPxrzBgYUZtBUwlc4wdEDP5R/suaDIYAcHeXMzdPruxdzxibIEBodd6tlNY+/GAreZSZfh6fagz8jyzUhp8x++oiQItIfC2qxeQUaQ7A5pO2/prfWUUtj3GSsoiiA7gobIw/7BfVmW03O9rAFuQ9Af1psIh4mTdFbKtR+EITVJyJL4ozr9xz7szEA1J3LuU6Cq72N0bfZuAlQ213U2kNOKO70vyflNfxu14h9hpk9buJ/yE+eOxBAc2qxppEDBE7RGFjwvTQo1iOkX9nnnTIUENdg8WKmcBDF6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by PH8PR11MB6609.namprd11.prod.outlook.com (2603:10b6:510:1cc::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.23; Wed, 18 Sep
 2024 22:13:40 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%5]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 22:13:39 +0000
Date: Wed, 18 Sep 2024 15:13:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915/display: Fix out-of-bounds access in
 pipe-related tracepoints
Message-ID: <20240918221337.GR5091@mdroper-desk1.amr.corp.intel.com>
References: <20240829220106.80449-1-gustavo.sousa@intel.com>
 <20240829220106.80449-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240829220106.80449-2-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0190.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::15) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|PH8PR11MB6609:EE_
X-MS-Office365-Filtering-Correlation-Id: c1cb7e8a-0937-4d0a-984b-08dcd82f2611
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jYqLdAas2/OOWf3/t3mLeZfaslxMH+fjBMX22ReWyF5ItrmexdFAOg1wjOng?=
 =?us-ascii?Q?lKCZ6Ku8WTdIhKTuXLioHed1Zm5jg5UhEoUrfDFBgav2ZSj+PMTTDpWwAJyu?=
 =?us-ascii?Q?HjzSNWwI0kiYhSo1a2y529/LwK3T6uj2VINCHexdCUAn4XjNddIdd9qXAbGU?=
 =?us-ascii?Q?Z4sUlgKkhG0pLge2+g7Ai8YNNK8aJGmRWTWA/FC8Qu3SmgqCPUmbGX9I7kvb?=
 =?us-ascii?Q?gSRkBJYkZp0NjjjDe0eObim2/SSxZ9UJL6EtCt6Q3HYij3/FGqrjbsJo3vaD?=
 =?us-ascii?Q?x9RLXYP0o1RPlB6rVVpqaBvicfk5xH4YPaMQRcUUgQL3DFQEaFEz+IcGsvQc?=
 =?us-ascii?Q?PsrvYclRnX7+geNZtI457CAG4eKWNMg0qRs1Wlg600NkJ6J+urlWgNZlXqEm?=
 =?us-ascii?Q?/4fd2RHz3lvfUHUmzkpK4xZYXZqzf/kzmFQExKIHx5udogC71xAbnMyegwD8?=
 =?us-ascii?Q?DqfzH/Rz+606beSgA8d/2vybjSGNedD0FCx8n09XhxivAOMpwdidBfEsC+3s?=
 =?us-ascii?Q?0cqDm2s9EggKuBAOei8mZB/bAr44olfJom1gut15WJIfoyAPDdy41BTeKn6O?=
 =?us-ascii?Q?Vcp0/G2bVt5RRDH9zS3J/BuedFqly7ziYO5ln6Co3Rkyzn5OKNmYr0J1Ao+8?=
 =?us-ascii?Q?R8WO/uupFx+NYQyUXQWGTe2MjoMIvouVjlUdwP4oiOiJSQTGwA50+GdqPRaI?=
 =?us-ascii?Q?A87rHpRnMxEA5+ffXRgKkQxEQJDkx9QShklEZUxvwyuQk/JTjqRfhJGBnMFe?=
 =?us-ascii?Q?8oQAADce4Frw5+9eS6N3KnCbawSNaR+nDYP3KsBsH3M4N7/uQMedgS2Vu5Ya?=
 =?us-ascii?Q?LenK2mXKnsAh4hgiG2K7D4au76++7PPHiuw6VuCGzaNbrv3LgFRKiG35geVw?=
 =?us-ascii?Q?Gp9qeEtg+qWJkWZLS5yl5BlP2Kx0Nu2xYDWxvvG+aR7UTR+N5INeJB+BRR0C?=
 =?us-ascii?Q?6qjbOhgc+4JxdSTUrmaiMbdgW87OSbCOi+92PzhWl/yumggaNAyk+1x75Bmy?=
 =?us-ascii?Q?vHQw3qRCMdWYFb+CGgML5198xFChShdhZQ5jKNZYrYoIykoAsh0JbpYDeKWV?=
 =?us-ascii?Q?6H33e/j68CWA/CY3ymHxUZ1mApcfo04VdhjTwE8+oGfk/v8q1B7D1UFh6hli?=
 =?us-ascii?Q?pkSUtbixcdB8bxI8DO+FHgz6dR6RmRMdP96r3RhfbvsHF27nbppWngaZzyz+?=
 =?us-ascii?Q?fmgs++0ksmwVPrYOf+i2QIya1fBXRyzfWqY7Bj3eFZv6nrScUwkwuz39iK5q?=
 =?us-ascii?Q?oXEdb5q5Oh8fOEtA3MsL1eexN1I3IvdZQVFKttf6bH4OlkBzygoL3mcz3Yf4?=
 =?us-ascii?Q?IlZGerV9axJuvR654uejNb1QYbgxFgffoPfG5yLifdaWZw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BrtlDaZQJj4GKj8DNiFmiZGWSkrr01xVOEf0rYjsBi6kMyxbus/NexoQ8KwF?=
 =?us-ascii?Q?ED4nbsZb5Uy0vzbYlyKVGgYos/rI4Fx1jA0I2SgYdRXgYG4xhfKbHsmadCwH?=
 =?us-ascii?Q?Z8kjGnBK4yXMoVCQekx1Kc8BbyPEvwcXwoHEDoQw48RMnHRvCaQdFtiTM3gL?=
 =?us-ascii?Q?+BvpmTdK5mGqpJEpAtSZIH5eKUtRI7DO8dbrKCYJmzUEt634bUZ3Sb9WVimX?=
 =?us-ascii?Q?D9X2OKRHfs+MfFOQb3MSAhIxECZjWScw3lAbZVXi1O4ksXHbHtDJeMYrGY/n?=
 =?us-ascii?Q?H4E+DsrLV9mmJZQK0jNHAhgCsnuTJd48ZjcnI7cYrmfCUNHmJo9ArkXiOmp6?=
 =?us-ascii?Q?96TjtPbReD8nCvKSIMU7N4ReVq06FCWZR/NLR7kYX8OjCsaN2Y/DD+hWkOoc?=
 =?us-ascii?Q?lLSRm4yiImVZmwyy72kuVmGTqjkvYx24WFbuPO3y+yDkhwDnYvz1bR1IIasY?=
 =?us-ascii?Q?beIYMscueNZZ65xT7PLpsrigLfWXuoUjiHRtTXEFY/Su5hPawZndksG/UIpT?=
 =?us-ascii?Q?kxdjRhPrarR2Nk0BeTyF3bpuau2cHIGlQoBUjv9xPjKZgb6Is6Frvne3Qz1r?=
 =?us-ascii?Q?hIApoFmYV5Hvibycw7pM81mCr+2K3QKB04t2d8zPG0NCIY+eG2HhNwUrfZnk?=
 =?us-ascii?Q?Bdbc4Dn32BcFGwBBVo/ZY+hxiG8/CdThza/RXbX/2O4TC3dVczp25enOTJMh?=
 =?us-ascii?Q?wl8j7nZn8BTwCU4tqzwhLzkrX4GsHJjp4PV6SAh9GMYKb8NxMz0X7KH3wsZ4?=
 =?us-ascii?Q?GQIeX/O2BzpdAWc3zpZegq8/H9kd92Av7EW5KOdgraUb0eXwd9qyikW7CyGt?=
 =?us-ascii?Q?1ECqU73UaC9bR+z7c+uDsQE/meRZBxuUh0BHcjgmWCvseRqjk3TdHtQYSx6z?=
 =?us-ascii?Q?NQy9TK0V9Meariiv1XRXBYlu0uhA4r1o/KdoTCp7k+UPgveBHwcpqfAu0/mJ?=
 =?us-ascii?Q?K5/jVJFJrysdtrboSr0o2GaF/Z1svezjBpF4pDltiWhp7BX+2C3eFPjz0vpl?=
 =?us-ascii?Q?8rlNys96UwJz7vwgbdaK8CqT7Bjj58cyFwQ/9UmWY70vRaP+ORqIHOvdLnu9?=
 =?us-ascii?Q?4T4KYCxLboJk9t9JaRbZyOZeMcTZqA8ZyU9ZGTrHcKCI9aBWVCu8TsBXa4PA?=
 =?us-ascii?Q?x93pCXlqjVWlEvbqd+83CTPD2Pt1C0MrRHvPRZxmlQQAiuCpVQQMqofB5dLZ?=
 =?us-ascii?Q?3NlRqEt63ar5NdRshpcl7wthExkk0IdNfo8bgVngBWzeiE3qNUGvZZQwZT5N?=
 =?us-ascii?Q?UODqDVeQBWhryrxEqim6CFrhIor4cHLdqOfyOzRTOQCHeXy5B0V2Gtxx1Ss8?=
 =?us-ascii?Q?UB4BsdYoBwyHxLruJnu8nTSZspspfe9tb7q/xwmgeAnsSKWnuqDQooS/CxTE?=
 =?us-ascii?Q?Fc1V/g5f5rOd3P2dbHfS3BpSKIPtfvhN2aKPWsd8saW+ZaL2RYInAdGNCs4a?=
 =?us-ascii?Q?sLm6hjELIECbo8dbDgaiXNwFV7pguvpEZUB2Clo8vyMgXVdeV4EDY9J6vdGl?=
 =?us-ascii?Q?x35D4SsikT/tDVJZQtybiMVaqE89ZV93GetjkiR8IkHSYI558b9O1UzL1UEe?=
 =?us-ascii?Q?aGfN/e84mcqpTGKoFwuXW2m4BMxIoDLhgzpPoRDbmV9t4YEQwGIeZ0sJ8BPU?=
 =?us-ascii?Q?4A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1cb7e8a-0937-4d0a-984b-08dcd82f2611
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 22:13:39.5294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DBRG0e4sEAedc1+clh6xW6czwud4peMZsTdBbCJ0Es+Mh7UextuzWjGynuqSYHvWTCiTxV+pWapYnxBYwEfvnjk9DgpQjewPI5grfhU+Yok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6609
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

On Thu, Aug 29, 2024 at 07:00:44PM -0300, Gustavo Sousa wrote:
> Some display trace events use array members to store frame and scanline
> counts for each pipe. However, those arrays are declared with 3 as the
> hardcoded size, which cause out-of-bounds access when the trace event is
> enabled on a platform that contains pipe D.
> 
> For example, when looking at the last 10 intel_pipe_enable events after
> running IGT's testdisplay, we see the following on a MTL machine that
> has pipe D available:
> 
>     $ trace-cmd report -R -F intel_pipe_enable \
>     > | tail \
>     > | sed 's,\(frame=.*\) \(scanline=.*\),\n\t   \1\n\t\2,'
>          testdisplay-6715  [002] 17591.063491: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[83, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-6715  [003] 17591.264742: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[89, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-6715  [003] 17591.464541: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[8f, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-6715  [001] 17591.695827: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[95, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-6715  [000] 17591.915841: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[9a, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-6715  [000] 17592.127114: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[a0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-6715  [002] 17592.358351: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[a8, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-6715  [002] 17592.580467: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[ae, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-6715  [000] 17592.950946: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[b8, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-6715  [004] 17593.079597: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[bf, 01, 00, 00, 01, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[00, 00, 00, 00, 3a, 04, 00, 00, 00, 00, 00, 00] pipe=1
> 
> Which shows zeros for pipe A's scanline counts. That happens because
> pipe D's frame counts are overwriting them.
> 
> Let's fix that by making the arrays bring able to store info for all
> possible pipes.
> 
> With the fix, we get the following:
> 
>     $ trace-cmd report -R -F intel_pipe_enable \
>     > | tail \
>     > | sed 's,\(frame=.*\) \(scanline=.*\),\n\t   \1\n\t\2,'
>          testdisplay-7040  [003] 18067.489565: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[8c, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[8e, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-7040  [002] 18067.699312: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[92, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[58, 02, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-7040  [002] 18067.908868: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[98, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[58, 02, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-7040  [002] 18068.122802: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[9d, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[58, 02, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-7040  [003] 18068.331019: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[a2, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[e0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-7040  [002] 18068.529067: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[a8, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[e0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-7040  [003] 18068.742033: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[ae, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[e0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-7040  [002] 18068.956229: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[b3, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[1f, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-7040  [002] 18069.295322: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[bb, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[7b, 08, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
>          testdisplay-7040  [010] 18069.423527: intel_pipe_enable:     dev=0000:00:02.0
>                frame=ARRAY[c2, 01, 00, 00, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
>             scanline=ARRAY[d0, 05, 00, 00, 3a, 04, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=1
> 
> Which makes more sense now.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

I guess nobody has really needed to use these tracepoints much for
debugging since TGL added the 4th pipe.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_display_trace.h | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> index c734ef1fba3c..8a3185862089 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -15,6 +15,7 @@
>  
>  #include "i915_drv.h"
>  #include "intel_crtc.h"
> +#include "intel_display_limits.h"
>  #include "intel_display_types.h"
>  #include "intel_vblank.h"
>  
> @@ -27,8 +28,8 @@ TRACE_EVENT(intel_pipe_enable,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __array(u32, frame, 3)
> -			     __array(u32, scanline, 3)
> +			     __array(u32, frame, I915_MAX_PIPES)
> +			     __array(u32, scanline, I915_MAX_PIPES)
>  			     __field(enum pipe, pipe)
>  			     ),
>  	    TP_fast_assign(
> @@ -55,8 +56,8 @@ TRACE_EVENT(intel_pipe_disable,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_kms(crtc))
> -			     __array(u32, frame, 3)
> -			     __array(u32, scanline, 3)
> +			     __array(u32, frame, I915_MAX_PIPES)
> +			     __array(u32, scanline, I915_MAX_PIPES)
>  			     __field(enum pipe, pipe)
>  			     ),
>  
> @@ -184,8 +185,8 @@ TRACE_EVENT(intel_memory_cxsr,
>  
>  	    TP_STRUCT__entry(
>  			     __string(dev, __dev_name_i915(dev_priv))
> -			     __array(u32, frame, 3)
> -			     __array(u32, scanline, 3)
> +			     __array(u32, frame, I915_MAX_PIPES)
> +			     __array(u32, scanline, I915_MAX_PIPES)
>  			     __field(bool, old)
>  			     __field(bool, new)
>  			     ),
> -- 
> 2.46.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
