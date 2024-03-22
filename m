Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4F8887441
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 21:51:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578B5112769;
	Fri, 22 Mar 2024 20:51:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DFTy82xr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C9C810ED4A;
 Fri, 22 Mar 2024 20:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711140707; x=1742676707;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Gj3/SzuMpmRtwSGUyWHLn73RJpi0Fl1O+eyuVKI1C1A=;
 b=DFTy82xrwqTDvZJ7WEL6ccERWcNXRjKVKOnxPV/Qg053lphk3N6IkN4j
 RTGtWmA3VfVj+cIR+wLOONIoCekuHo27Oy7EOEW7jHVJ0ebYoVzdGYMua
 +bqkpidps4RQ8RtKToWmvdNcmrPnF0aGUNpwe4qpuUE614N6YC6bC7xq/
 8Sh+gJ3Dqckkfq6QBUYreOKQpsXpCbCljVJtSQKsmqhaZWq//380Mf2VM
 t6JcCE7jDMEAUFvIBg6SVlkNoBM8np+XIKQhUltERnJS0VHnofquGktQg
 apfToaOX2c/fAqec+pbU8El3VoEgfaYl+OHiUFSt7bCoF1WOmCCiw6jDy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11021"; a="31645443"
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; d="scan'208";a="31645443"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 13:51:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; d="scan'208";a="15009198"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Mar 2024 13:51:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Mar 2024 13:51:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 22 Mar 2024 13:51:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 22 Mar 2024 13:51:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GUtwQ9ZkU19tt5Jyt/gWnU0RkGHQ8TLOWJ9Xumj4ObaZVnn4pXVrydd0LbC23qMRQAxSfy3l/YDquRXZDK1E1bRqTNUyH9C5TQYAg4lU18x9oK/ARQGA/n+NGqMs9knYFGxecLkapKwIFWo7H3xIFlNFckWFR9k5Gf5VpbxRwZGyQnTEwS1ePZjMw0l8yUNzXPjthIDaOjQ5OMc135Ilxz79wGcbXFu7afqgkWppJzJ4M1w3afFzodoBwC6zB9DEdzbqEO/LYn8HfRP7W5LjZVC7mswVbHuJgg58/bEMX8E+66zdZe+zVhgkQIwohoUhxB3lJ0iMWAPEd+Xs+KVm4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RN9tqgd3qKgJ0wX0kp4yi/Sy5TyUjrl4cBf2emtHmlo=;
 b=QPUiHOhJe7u63yoZ2RSLfrqbCRqRUZAWewSbXTpIMaQtL0Z1xzFXrTEi0Qmty75I9SyGfwAxasZ1my/aSPkYPGl61wEL+iGWkO/eO2XsbCeBoURuS8sZx5ixdDSxH+1GSMF0GHL1B/GLEWQTUzrAkXBkYyYPLUv70UMeFo1TOCXrH9xNMlWrh5a7r70lryw8Pm2/1xGDikLSMH5UIc3wJezmLxE2WL8fFfx4yf/Cq9xqmZBCDgbeMiLmF7/uwdkK2kTg5u1cbPKgR3T7WmB98Y5P/6c3NXHm/JucN75IiqLJNG8EjouccnUgNaukiMXGB6V0/p4+B12cVG80bV1+lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB6065.namprd11.prod.outlook.com (2603:10b6:8:60::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Fri, 22 Mar
 2024 20:51:44 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.023; Fri, 22 Mar 2024
 20:51:44 +0000
Date: Fri, 22 Mar 2024 15:51:41 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe/display: check for error on drmm_mutex_init
Message-ID: <kj5mnzcy46ozymt5y2sboyf63tfdbplyzkmis4vp2safy34kwx@4547rych4q5w>
References: <20240321060124.4074773-1-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240321060124.4074773-1-arun.r.murthy@intel.com>
X-ClientProxiedBy: SJ0PR13CA0044.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB6065:EE_
X-MS-Office365-Filtering-Correlation-Id: d0ad51df-e83a-4100-d3da-08dc4ab1e222
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d0znE3I/z73IhDeMVIE7XlsioiXZBkqTAO8nB9TM8ncrkBsN//a6YZBV/wJ1OYtE51UCHyTdama+z1BjJCPAh8MnpShT4a4LTHqiutY0fmAEHGjJIoH/AsZ3zf/msevE+7fqEthw+A/xzsD29qKA4AUYxI/3EcotCvPcLxi57KAqLtPQG8chaNN5gVqq5tAKPngj3KYlfQ9o1pU/ed/voqyMfiW6/37MqnnNYLNKXNSYXNIOIuFjmBKKEqwZ5YS1lEht3H/G7Hb50v83GG/0Djb4yuTgn3yCdlZRsEbMXZOGQd4hx3qpKbXuaEixPbrJd4euh+OPESn6hgibG2uIhBkBFGYCRYU2kVRvvg0mJkNETThWBfjiY/8m5MsbVxLbeh9hykKgelgcDNtCav1wKMu25MvQAiZNHIUXD119XSnaocIH6eppaEuxCP0eeQpF/zHWyGQwPQMGdLzrU1STd2+BjTsIc3gyqolBORHdhOsvHgPFkPzUoW1ayZetna6a5g8p9OThWJIUthCq3nnkyTjsvggxpDu8+yhSK0BR+teRRCyv8c9YiViou6tyso8dp7792bSiZMdGFxCq1URLcPyE4VhWCilhgTwBtdjAIIjwK8KgzbSJMPVTho+Beh4uQbcP5RXNkn/BWAu6mfcMtKnN38uoIMi3Xjr2MSz13oQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5YdicL7gJiVhAwn4crylj8TDahYRwW4Wx4IeOJdO02U95zIoxHOhHEq8lhlu?=
 =?us-ascii?Q?oZilz6VgGKEC2APwhPABb1vBjclpnCVq3QfIlAWYqh95CHBjuPpnEZblSBSx?=
 =?us-ascii?Q?Az1eQ4qNFKzK32d7E56m1ThOXC1EWQWaozZUyJlf6J2a2dtndAAnx6+jK93I?=
 =?us-ascii?Q?6c+PBDNOtSbWEDAElTJlK+9R25Sc7lLuMjykYybq2BhaagTOeIRD6WmKrUts?=
 =?us-ascii?Q?huTEz6dGr2xRKiZrDe6dPDHf/iAEC7y4s1Ar+JeILeS6hWPEM2u36E4+cmVR?=
 =?us-ascii?Q?FsUX55aBjQTqDKYlytNoV8a4wBuaooESzxv/LM4XrBmmdj0OFSsmL6H2gKAO?=
 =?us-ascii?Q?Ua8Li1Vabvf3fx07Wldk2q9/AqH0+QUhGJ/8CiMGdy/aKvY63Zwy8/fNCaAL?=
 =?us-ascii?Q?RjAZqbHytXugC5eizoS5SSOoxry/e8G+oOEIxAa67ZAm3HoHbGAHT/J8fdYo?=
 =?us-ascii?Q?ctZi/0xu7hSPNrHSY3YKT9usjfVw6ooqz9j+oil/Br5To27D6XCZ30A/Jlv9?=
 =?us-ascii?Q?6ayMFxs4g+wCKFKUTW7k2FSLxvVRY4xdiQLk/1cN+6RjzB9KXcvgqD6DiXIe?=
 =?us-ascii?Q?2kg2d8lU42J90vLLnXHzMrG/NE0R2KsKYzPx75LpUlGgQuNB9UWDLyYy48aA?=
 =?us-ascii?Q?52+fULgrfh3FuoNW4U9ixInlfaYQL9S4Ok5UPDUwaqf/n0pxdyUJAyDqjElp?=
 =?us-ascii?Q?j+RBTvq+8fG/CrAZebz8olpr0ZJfIJbWRDZK9CisrHD/wyX7gAdEGJDuncwk?=
 =?us-ascii?Q?7Qr0kRrIuWz+6Od0Qn0rSi7MPvHK7jrJvRpqgcKG16ri4k4NNUqXbWgAmIrA?=
 =?us-ascii?Q?C+AGC/p4zVWbn8zaRm7jzU4OZKT4RFefyeH987d39wMiX6KW+MgEk8blPq3P?=
 =?us-ascii?Q?tRZSRQKyUbOj2Zml1GADXDd5vRXMwWDx1TOTkrRcTQKmud9hOSzfLPpXWdwj?=
 =?us-ascii?Q?woAUsf/jYMmkX4AwaXxA64+6/1GqugufWy/rNrW4ATREa50EbyGxfAqtHI0a?=
 =?us-ascii?Q?GeVOo/grohxSDzWQ93uOBIsB/w3i8FJ3AQ8oHsDk6jgFj4N2hG+KZEjF71HK?=
 =?us-ascii?Q?Jllya/fiO3oFttkySdaNe1mrFR0/jwjMwPrR8PG+WRSAMfICnt2rFqjv9BhJ?=
 =?us-ascii?Q?l9uMlFmt61rRtmu/Zlr51l9zsjVh6AvFTLWvdrl7AULmUrrlrYT741x2/rsf?=
 =?us-ascii?Q?ISBgVfuAjYtHDiSh9WGkisENBiYyRQlkRAMvAFzvf+EQ9OZLndekwt+thJFs?=
 =?us-ascii?Q?BS3N5A1lIjVkG8CurDhty13O0WXSmB3Aopl8qGaMhuNs/MhSJzbTd2aWAvhV?=
 =?us-ascii?Q?Zcj0qYwIPP0PNgb67MwcX+9x2UmvOBo02vaiSrNn7G0Kg76Ofl2GWgpuDPZS?=
 =?us-ascii?Q?IGma7HGf1TemYc2wSnXXK+6+8gcNV6Flo64MkTY+iYMO7B0ay1F2+GWF/xWg?=
 =?us-ascii?Q?s+zmPB5q83QXwowcM0w97HppMrxz7Q6oXeJ1CSqlvJiq1hgXSAr5Ru6gNgaD?=
 =?us-ascii?Q?cJplNtSRN+kNpmN/+04Bk045IL0P3lyflevyo08tsswE//diHn7/70gVgcH3?=
 =?us-ascii?Q?pUiBuoQMidZWRuSo8THJLRTIIXuf7elEoznuyyHzOsesktoDl+Qb5k1cEhgC?=
 =?us-ascii?Q?kQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0ad51df-e83a-4100-d3da-08dc4ab1e222
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2024 20:51:44.4971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PCPXQKYbtwq6+2aHXED2lKvFkVcjxodEQcno1dfVFQ7+nYNvNxp3vPlURwM08YKW1vN9ha+S3JOmJXmoBmDfsMfN8Lh0NhWOudmj0fk/1g4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6065
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

On Thu, Mar 21, 2024 at 11:31:24AM +0530, Arun R Murthy wrote:
>Check return value for drmm_mutex_init as it can fail and return on
>failure.
>
>Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>---
> drivers/gpu/drm/xe/display/xe_display.c | 14 ++++++++------
> 1 file changed, 8 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>index e4db069f0db3..ac2e58d1fa82 100644
>--- a/drivers/gpu/drm/xe/display/xe_display.c
>+++ b/drivers/gpu/drm/xe/display/xe_display.c
>@@ -107,12 +107,14 @@ int xe_display_create(struct xe_device *xe)
>
> 	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
>
>-	drmm_mutex_init(&xe->drm, &xe->sb_lock);
>-	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
>-	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
>-	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
>-	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
>-	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
>+	if ((drmm_mutex_init(&xe->drm, &xe->sb_lock)) ||

     	   ^^

you only need 2 parenthesis if you were going to record the return.

Lucas De Marchi
