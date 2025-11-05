Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6652FC3782E
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 20:38:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC48910E2FF;
	Wed,  5 Nov 2025 19:38:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cvmcc6/6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EF3710E2FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Nov 2025 19:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762371505; x=1793907505;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=v632vhpIRZHVKdxIdMbBKne358YEd8DBxSDVO+uTmzA=;
 b=cvmcc6/6j8c2QHMlJ5r2Gk2nrUBdeHvqvtOt3P+q+YA4aplnlaNFWWbc
 MiQj834NCMmDett2XjTLxclifoKcUrn+Fm898Gd2fGdsuiyKzcINnNpNu
 xO7YE421pAf/itu1oOECTCtxkRwAbmXbHuuVSh3xEcbJXWwgmrOfIPfv4
 +XMExgAtFygOIFcp3r3jjRCEAwB5StGtZrxIy12xjASddG3onFDHnbDD+
 0JFFuQUeNeey6Kja0HwNpmu96dptCDQLJN5c1APvUPNUsMSx1AnBxMcBJ
 KibUo6vpv8/VBe3qmRt8GCHcKrhmqaDIcGQ+5gNkpUDxq0Nkd/6923uzQ w==;
X-CSE-ConnectionGUID: e3BSdq5ZRU+7cigmAu2/eA==
X-CSE-MsgGUID: u3byYVYkQ6OjI7yPUsaHGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75107831"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75107831"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:38:25 -0800
X-CSE-ConnectionGUID: 0r0BX6GtTd6b2fCC67LkTQ==
X-CSE-MsgGUID: ElHRzIaAThWjFQ6gez89GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="211018471"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:38:25 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 11:38:24 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 11:38:24 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.37) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 11:38:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H8SasbIX9nVpivY+Ln8XcNwYlteS4tOr6geJkAtSwF97TZszbV/3j6mUHJc2Is96tNo5af8E+pW3QsmSP080u5ZR7gcecmD8Y+tOhOBIx2dsLRxFw2FZCO0TW5dg8oSHYKQ9z1rrZAvT36FOy2G1JvNh14fe3aEsJCVdazpf65BSAdJspJmwMl1V+tk2WKuFqti39ibLZw+OLgIPIp8y4SFK2K+aMQrpLDNv36FFrgOMuUlKd7JGzmbOYikl8dGdpr8nE0t5kBTAUgo5rlFTn8VL5clq+TjjcIYlfX563k5YuBf/f4w0Z2wIKaAIo4C9khE0JZ0nds6CGHvbENSUGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5I0i9YjUsWTDuZMMYyvIT5NLiT7pDEWHyC1ngwInqQY=;
 b=hvuddFyd2+hqhuKpPPq7weHpOCYnIAxVgcWPYlAQhJLEJpeDpdWeaxXauAezsTB3INpV0t51owfSNDkvJWXBKOEvxIK/blAK/zumYL0LZTKGKrA1TkycHIXNycIhe3g1Y25NLkMpHlreSwVwMEw9S6HouyJxz4cGPlekepe6KyO4+8ewcxPTFMZ2GH+shBvtxlaF0DceJuxIxS69i0HCmO1IiE5GjUga8qwAWDKfnuTj6yVBHXpbxDBxrVQZvQt4lQzxZD4I2cNZIIzx/OOkRmKF0OH4/I4JK9ikuB6MtZonEP/AmBLCDEJhkCYxnYww7AB7JLqqi/zc6k7Zujl01Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA1PR11MB6372.namprd11.prod.outlook.com (2603:10b6:208:3ac::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 19:38:21 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9298.006; Wed, 5 Nov 2025
 19:38:21 +0000
Date: Wed, 5 Nov 2025 14:38:18 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>
CC: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Ashutosh Dixit <ashutosh.dixit@intel.com>, 
 <andi.shyti@kernel.org>
Subject: Re: [PATCH] drm/i915: Fix conversion between clock ticks and
 nanoseconds
Message-ID: <aQunqj1t9tG-pK4t@intel.com>
References: <20251016000350.1152382-2-umesh.nerlige.ramappa@intel.com>
 <bb365451-b451-41ef-82cd-eef8e21ead19@ursulin.net>
 <aQKOvaRYY4TNjn/l@soc-5CG1426VCC.clients.intel.com>
 <e60834fa-2d03-4531-a56e-fa8d1799ed11@ursulin.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e60834fa-2d03-4531-a56e-fa8d1799ed11@ursulin.net>
X-ClientProxiedBy: SJ0PR05CA0018.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::23) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA1PR11MB6372:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b45c89c-8930-4f68-eb62-08de1ca2e0ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?I/RH06TrZk5USsUHmAhkrj7/PT2aVynsVj5CfuQNEbS7vPr0VBZ74YDTRi?=
 =?iso-8859-1?Q?9SsE5sfcXH4neWoZgQYJHVexY3r2vujqT/GzYyTiQ5mj8feGy6WUqF9hLf?=
 =?iso-8859-1?Q?fQ3JKNAzjMioXZM4FlE05J3eCisZtc+6NOmgK+0c4/6S3xUJSsYXSgT4DH?=
 =?iso-8859-1?Q?IHjTtuEuIjypoEf8QA+HO6fNm1lMvGTAaMoPjV/dnGxMBN8dmvVC1p9Bv9?=
 =?iso-8859-1?Q?xZGmP9VKJo5E6RWs0ijZOgb0rHC+JIIaNpYoXwehiiuiqrqBA7iD/UzPpv?=
 =?iso-8859-1?Q?8cXaYCPDGlHUQWkC08uySSDC4Ly7r3mVH2cTbj9BBXqtRWVr64NrciYGuw?=
 =?iso-8859-1?Q?pT6pdRsp8iGSiI2BExRzvE301ui2AlU5AeKauZnJSMurKDiwjIH+wopu8e?=
 =?iso-8859-1?Q?s9RQKgzU8Mg0s1JJeypiN8K9RjhuMHiqjFxZmjoONOOQayFJNdTKrAfWuO?=
 =?iso-8859-1?Q?CvPnaVvJrqDcdMMpec9vUZHHeYghfcckmz6XgUL1K4P6rGAp+SypdCcUNN?=
 =?iso-8859-1?Q?j6b+IXlaQhuXkKrGserZBDHScV3NTit+MvKlRcs65dMkc5GIcwJ2Rm0gYG?=
 =?iso-8859-1?Q?Iai5gHO2Vr9VsibJlC7ZEleyNuM6tZnf46h1joJAXl1TE381Pvv4pPCXW5?=
 =?iso-8859-1?Q?Wpf4WG+lb7kNxMkgFEOMk5Uh5Q1D4waUCMgddzzYmp5HgpQehHBLqMA1fu?=
 =?iso-8859-1?Q?k+0NmH7Hu3QvF1HYb89k22OFid0fwkNI04nZLuzIbu+xB5r9raZ0Yu80Qi?=
 =?iso-8859-1?Q?N3Lp9dOZAZBEfrekiLKMFhtFQchQOdRnCol3btODSU2fOPwdpYwQ1ShJqb?=
 =?iso-8859-1?Q?A4iVGi+VeevI9HCHsoEfT7zvXoi9CbPDLwgKWxDD4bSy54JzHJQ4ONYIQq?=
 =?iso-8859-1?Q?cu8YLZP6t/FAjtYf49u7RxPNuNi90ExgEX2ZFhs2UFS619Fw7rjfLUQE4t?=
 =?iso-8859-1?Q?84QOVmtzRhs9Imv3H4nRRbjlHdztq2oo88JLFjS7kFz9bSwe/irm3sjFkd?=
 =?iso-8859-1?Q?yrRtbkVpS8HuucQBJNlestD54U+wbIShVJ0d09jxMj3NJZpGOS1CUxN4XE?=
 =?iso-8859-1?Q?RLs1yJ9UCleVR8/pUfLHzoEJST9BYCHP3/4wNnF51p/NCGbY6k145/X5oc?=
 =?iso-8859-1?Q?e9mNE/oEtLvyX+AgU0po4wicYDQUnWSHrQ5gKxVI13litSSU9ITitwohy5?=
 =?iso-8859-1?Q?tNZ6ijPqOBWDhwiQg2/FmMFNwLCApQqr3nNuMBXiEDxr2gB64NgM/x/Z8n?=
 =?iso-8859-1?Q?5bXbzms1ixA9ktpq8aHz4iGEZ4BlmyS77K2hnIke8/tEW+qTdK9dkdqqgj?=
 =?iso-8859-1?Q?paciK7QzbabLHljG+DAq4SBs79eAmWz++L1HkcHO1/+DL69F/8fSc/T+Q0?=
 =?iso-8859-1?Q?/0spFKeJWdQSEhaBTGLgRqzfZFL18KpUWr9UlW4gwEVUItcQAYYNGXRN7e?=
 =?iso-8859-1?Q?IZgHzcP3lqsASQ800sEmKyvmsFD7zV3iAMGXGg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?wSXSsRjHJyyrE/6kpnewhnmzAh1JACAFAMvgyF5pGFYxSP2QKbjaASw9jn?=
 =?iso-8859-1?Q?U4HSSiDAIMJZEjKAdjRbGi/SOngAtayZTTEz8/3JJsYgzgFDDPG6vtBGp6?=
 =?iso-8859-1?Q?vSgCqZruDuMkVmNNJgJ/BHQrPVTJV8EfPde2P+BQNV1y/+NWdvr5z0Nl70?=
 =?iso-8859-1?Q?IpCr7xwPVLPhFtZpt6D81s72/YFGAF0A8SpEdmaatNvQ/FtTtr0TdADIwj?=
 =?iso-8859-1?Q?o+oUBBlAXZkEcbAuzeGppNy+vlBfXjG0r1n3tbokUcpSOZFaJvipTpO0Dl?=
 =?iso-8859-1?Q?qVR/ttBRS8agOI3+PcBadkUMFd5oT6sBumuuqEssWHlpOOs44gns9jv6j4?=
 =?iso-8859-1?Q?PUJGwgcGJsk82UA3iagoOsAV8seEcXYiQKToQQZIzHxhppyizGer0t4iui?=
 =?iso-8859-1?Q?vq8I8T0AuWxMXcewPZl6tW0vWmkgCXeyiH6hBv8BPvdTyYnmRwZba0WAOW?=
 =?iso-8859-1?Q?rX2qBGE2luvDpReOqKIEYZfHjcIbsQ8JZi1Kugt/l4Xzb+E8wfOj4/Ddl0?=
 =?iso-8859-1?Q?ZBOH62V7alLCJ3H+27ZZLusPKqD0FZtneaHcXqvdoFCbgau5cYW0Hboa1e?=
 =?iso-8859-1?Q?YF7LiBQ1TFnGxYcB7gVeYTbF1miLvwcL2K8LVBTbJS2nhbhksMnn3qIuV0?=
 =?iso-8859-1?Q?X+n97kciQkvahmMCozqNdoPTE7g5a8gll0L+ICQPI0LeOK7+sBms8UUeXC?=
 =?iso-8859-1?Q?/fTkgVfzLXl3jWENL+pX589sB7k25qtVGYSFBZ9e5yl7ALzBsN9wIZeVcw?=
 =?iso-8859-1?Q?PPMDLsj5iDbqYexRswt+LrPMC56Ev8h2BXP3f6t7ES2FusRdETQoLt6clD?=
 =?iso-8859-1?Q?U3i2fqhRriW5KmbDJZ6zA7WsZsAvkTkDDDlToDr5T9+fWnjBnubNpZ4vUA?=
 =?iso-8859-1?Q?NXn1i9J+do5/TUdfalMC8x5EjYauYwKiwS4K+lNQlh+ise+eCpBf0bNECK?=
 =?iso-8859-1?Q?8xU/VGnGIpEhi7yFYfe4ho4gxUc4IySw8d4Zs8Lt7udFyn0zqyphSlObx4?=
 =?iso-8859-1?Q?b5DbkYMHfMHh6PkRc9krcvxptAbUx0L7Sxa4u4TTOs+/gUhdO8DwOwGRKH?=
 =?iso-8859-1?Q?gqYR5N+FxNwNYYIKME2uInO2DpcjlbU9WvA6gZ0ua1qR6ClaM1OjS9i+II?=
 =?iso-8859-1?Q?eZysa9XGUFZvuBjCmyM81Tnt6VLJkEAFbsZ2krFjwRQec18gDNGIZnIWnL?=
 =?iso-8859-1?Q?KOQETP9+xwWbYHphtQ2CuS6izXHlx3N0F3dzA7rMHYt0wMZOi+3K2EhBEn?=
 =?iso-8859-1?Q?GOGMyvcr9z7K0XsQ0dsDlfB7VwpENEwx0W+poNcmLZnwYpz1xUWE7LMjL/?=
 =?iso-8859-1?Q?7xhL3sz7t3JktUyfcZLIqsrVXgNXJr1TKu0qZo6D/4/8USaKzDw7s1kmbY?=
 =?iso-8859-1?Q?qaLTWDUtZA5GFpClWtH55BlRjckJt8CjkNFyU5ODffHQHm/K7vBOWI7FCp?=
 =?iso-8859-1?Q?siSZ0slzLIf3kFXUWLgFMbGWpM5y2QH5dhzTpGBOuZZEaLmL88KRdW/QDn?=
 =?iso-8859-1?Q?abXHzlyEnoBhs5q/0CiVKOiEWqAZA8Z3K8e9mbOWO0hw1IsuH1Fj4fNUfC?=
 =?iso-8859-1?Q?KavSRI3Ctsx9s34n3vzaXrrghp84FaClw8oWsmtpsD7i+v6o8vSs5QnNeF?=
 =?iso-8859-1?Q?0RpnXbMrPKqHQ/1QhvD0XpjgLeRMzZc/2PMYCrz4eu6GIVTL8S8iD3tg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b45c89c-8930-4f68-eb62-08de1ca2e0ac
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 19:38:21.6566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DDe3hE/VcdTW6Eri/gtfMe5qa/SNE+O7FafjODNiDhc76/FrezVbId0hbsnjmOBY9J7mey2xRUOvexLTv9AgaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6372
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

On Fri, Oct 31, 2025 at 08:40:53AM +0000, Tvrtko Ursulin wrote:
> 
> On 29/10/2025 22:01, Umesh Nerlige Ramappa wrote:
> > On Wed, Oct 29, 2025 at 11:33:20AM +0000, Tvrtko Ursulin wrote:
> > > 
> > > On 16/10/2025 01:03, Umesh Nerlige Ramappa wrote:
> > > > When tick values are large, the multiplication by NSEC_PER_SEC is larger
> > > > than 64 bits and results in bad conversions.
> > > > 
> > > > The issue is seen in PMU busyness counters that look like they have
> > > > wrapped around due to bad conversion. i915 PMU implementation returns
> > > > monotonically increasing counters. If a count is lesser than previous
> > > > one, it will only return the larger value until the smaller value
> > > > catches up. The user will see this as zero delta between two
> > > > measurements even though the engines are busy.
> > > > 
> > > > Fix it by using mul_u64_u32_div()
> > > > 
> > > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14955
> > > > Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > > 
> > > There was no need for Fixes: or cc: stable?
> > 
> > Oh, sorry, I missed that. Should have been both. Is it too late to do
> > that now?
> > 
> > Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from
> > GuC to pmu")
> 
> Possibly not. Lets ask Rodrigo if he could manually cherry pick it for 6.18.

Done, and added the fixes tag while at it.

Thanks for the heads up.

> 
> Regards,
> 
> Tvrtko
> 
> > > > ---
> > > > v2:
> > > > - Fix divide by zero for Gen11 (Andi)
> > > > - Update commit message
> > > > 
> > > > v3:
> > > > - Drop GCD and use mul_u64_u32_div() instead (Ashutosh)
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/
> > > > drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> > > > index 88b147fa5cb1..c90b35881a26 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> > > > @@ -205,7 +205,7 @@ static u64 div_u64_roundup(u64 nom, u32 den)
> > > >  u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
> > > >  {
> > > > -    return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
> > > > +    return mul_u64_u32_div(count, NSEC_PER_SEC, gt->clock_frequency);
> > > >  }
> > > >  u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
> > > > @@ -215,7 +215,7 @@ u64 intel_gt_pm_interval_to_ns(const struct
> > > > intel_gt *gt, u64 count)
> > > >  u64 intel_gt_ns_to_clock_interval(const struct intel_gt *gt, u64 ns)
> > > >  {
> > > > -    return div_u64_roundup(gt->clock_frequency * ns, NSEC_PER_SEC);
> > > > +    return mul_u64_u32_div(ns, gt->clock_frequency, NSEC_PER_SEC);
> > > >  }
> > > >  u64 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u64 ns)
> > > 
> 
