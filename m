Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE97A56BBA9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:28:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E660B10E1A8;
	Fri,  8 Jul 2022 14:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA3E10E211
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 14:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657290504; x=1688826504;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Bv6cZblpU/XpuAkjwgFm08rtbWK5Jz6nH/ig8FAd5Tk=;
 b=IbDfIpDIsMza+++eAYbhhQxRWfwYjs74kwDQpyEQgy8X203ZV4WY/D++
 7uDMlBfIS+YUATB/Bcy29bHq1wllIzoWosSDaHgRUYzY5hTJU0GpstVfo
 d8zh1mTvEoxmvyn+EjGr5c1qXt6z70dF6AXj3cKVX9wL7TbsWGd5WseHy
 uIS31o9UF/lVjvHdEfy9uu9ZKDy3N7YW8VbnGW+a17TI2+lpkovDY86Pv
 4ousrgBCsJr0dJgvrDfjVmiObyqXulFw2S+RYU9u+v+oO25DGIShi0hyN
 FRaaKt5aw6vBzYyOMamGQJWqutwJfxr4pR19mTf7lGI8Sp11T3e1MVI8x A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="267322633"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="267322633"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:28:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="696897193"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jul 2022 07:28:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 07:28:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Jul 2022 07:28:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Jul 2022 07:28:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVxKQxTdeWbumx85jdZ6NL0RKLpZ/uO5HTNkwCdvvS5k758TSqpvA+dAurdAWgHABhu18x/IJ5+CS1XibArLjBx17SVRzBQd4ohpcHAllhX0EMys6j4UeQvpukI1PODNQRGrIGY6/YEX2sFAeM5pbHZfx74/GO5tT0YIe9dbTn1YuGkjpS482bivyWvdLC94YQAak8Sz/vPrYbY3IgMI38iO/QuVyCuVs6y43dh9MYm2wnvRee9KedwkcSglKuZAfxHI2FJ/MvcqNBzee9ooVWxIeKHqsSk17pyz8CgAGwHKl0003Nhb07ZNPdT1JEoB6KB+0CYlUXeDt4NZNo3Y6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+fK3irmJjfCJHKdrM2lIZfRIeHoVVANNopr3CS2B3uA=;
 b=icoez7dy99j0EWoQf6zrvjEmRMO4PgOXEaulyixgQdYQo6dtIb2sy7WVanTd26f9qzC2n5VgLwPjn/RaarOZN9O1RArZ9og8U8FRd+nzAO2hYnF1lrxpof48dUvxfDdmfqoI/YMkpETYRRE4QJu3iuJ3I131HugGU8Z07wDxDznAR5f8exmZoGqwC5klpDF7XP+tNKiYBeO6J4+QdigabjIfb/+G9yLwPhg4DC+JFdYQ/IbI/sWrEDbCzRe3zeubbquGvq0l7fzx4hrghiO9LQyEPl+V3Q5UCPJXDK55bqFA/mRAtGiNhCq4wR/y/jNLSbNlvtj8wQ60k/5VO4vU2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BYAPR11MB3623.namprd11.prod.outlook.com (2603:10b6:a03:b5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Fri, 8 Jul
 2022 14:28:03 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.020; Fri, 8 Jul 2022
 14:28:03 +0000
Date: Fri, 8 Jul 2022 10:27:59 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Ysg+76JnFq2Cuexa@intel.com>
References: <cover.1656921701.git.mchehab@kernel.org>
 <165720527461.2211.4969834313851184628@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <165720527461.2211.4969834313851184628@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR08CA0012.namprd08.prod.outlook.com
 (2603:10b6:a03:100::25) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee9f073d-9329-47e0-cfa3-08da60ee10e2
X-MS-TrafficTypeDiagnostic: BYAPR11MB3623:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RHMXW68hwITV6Oa5DFgRAmQA9ZwnsfzaVjqCwcBDtS6GkwfkS1z5lu5A2sOxcoWdmCLttBlnXiN1x0FPxEUB/lGEIF2jvvDUAAcAvGdiqrlenGaqjw2UZ7Ly8ElsDEYh3yXPVyurKLAI1zURFa2iFnIyN7LvZusnkPysqDJIn5BYPIdkzcCvrRmSL+jX9MG5+6ERcygQHFD3aB5J7RQ5EebbMi4DX1bQl+vsSnHVYeb+jx/KIy4fr9Q7edk3YXlwHFvtc0WlXab53hAKpL0K2fhYPP82RxbG2Bu5OboqwpS/Wde7mgL0R1bfw2+DDM3cJbjCGVCv47Us6IVZmhAFuUvj13DYSYoZRjcqSkALDdOc1HUkkOFI+GyuZbdCrzCq28NSxXhhk7S4E3OUBMugVH/qoZVrNns09RkY6hMkgJRoF0jUXajdd2uEE1+o18et4D8jRi+bJ4jr3Ul8Ydr5xQti31mNM//PCZoGQESe0Du+BlqS6Ui0toILuC/4cNVNqyoCP5beV3y3RLBggNbp9EWEwTI2b/iGJz5F+DG2STxZHgE+g9IF0GNGskLNo+cK4Ikko2v0UPkyCdWOgh5vmlW3rcx3ba0nXfbgSjNCggDk/6+FLe8nF1gsbzKWtNd0t8ORTiQl1isw5wANZxf1b2+S1uiCUWbcGfv4OKc1USwWrv8tO3Kz5wwQ/cMoH+goLkCJwmDuTJXMUy9YuUhT0YyuPcV2kVIO0z5m+7XMynNnP+faeN9MZuKQ7vRpuqmv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(396003)(136003)(39860400002)(366004)(6506007)(6666004)(41300700001)(38100700002)(2906002)(6916009)(2616005)(36756003)(316002)(4744005)(66946007)(478600001)(5660300002)(86362001)(66476007)(83380400001)(4326008)(6512007)(966005)(8936002)(26005)(44832011)(66556008)(6486002)(186003)(82960400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?c/ZBKlin2L7ArdO+cPnPL3D86uWizdc0bNxEOrnZgG/fSgba44Mp9l2pMPpF?=
 =?us-ascii?Q?Va5ddXTD8Zb5mGZa4TDlmfbqtzk187x/v55cL0Q86D2qlbdwYLtGp68feyb6?=
 =?us-ascii?Q?62RyVsCGZtzrZPyqW1rrmIcb5YS3Vtt73im6qRkH9bEtIHQZPFyecGEKum/G?=
 =?us-ascii?Q?xHhEnhG9rgJ02joGvcyOlSydHxNuxWUTSXOB051xh1CbKGdTTvSv2mgmMz7O?=
 =?us-ascii?Q?3VI74LEi4xUc73/OLF/XdOZLZFLeTpBPaPUYlSh1ENMM81M79u84dt11OpzX?=
 =?us-ascii?Q?4LXCkfEE8TF+LaVEY8LQT2krPl1w93l9H29fIz0AHxpS09S+TWlnpu6Lo2le?=
 =?us-ascii?Q?UT7yx3UuCCAHZRRoVK1WiO0wzoDM0LTpMYk+8tQptn7PiOkLCITnj316IeaN?=
 =?us-ascii?Q?h9Mp+zJPneI/cEOGhadDI+JoaXdzeudl98Y4BGrz7R+7APdRINcnpho1TqR6?=
 =?us-ascii?Q?pNX6oAbLxQULf/Tp1SOn6KwaBxbBle2wDZPdtPqt0zapWCLFGp4lzLmJxEWG?=
 =?us-ascii?Q?wvEGsavQjlaeVv4V5z0uZDycPmPLZaTrFtVD/jlNfOt0+wOVkluE24whov07?=
 =?us-ascii?Q?LNZwcjpaRNiZaHfgXq0juUzMp/rW2GDuO2onHgYlhAb2/HZTwaxoU9SPSvi+?=
 =?us-ascii?Q?fKDqUY+hh7onEqUpFpuLHvpeGWn0aFrBZxMA4GU3bg/zIQgKkufGxZBmgDZk?=
 =?us-ascii?Q?IE7xhtOPubVoTsZ+EWzj50Vu1Mto2IL16ppnrO0WvzhP8yboetxEpKg4seq8?=
 =?us-ascii?Q?hu1wOJLRNqwloYUqQiU1xbQ9Uo2lIsjlGpA1bUr70j6KHFUJLISu47KhPpV0?=
 =?us-ascii?Q?hZS5FWmxBpWM+gx3hYdyRsvqCdmeDlUuoetqY7x5Od5WEWtmydBu8E5oNR8g?=
 =?us-ascii?Q?bv7c0wz7h1itf0Pj2KBMtbg9DROZjqyjPhxvbT0grRk/KJSZ+IAIUCj2Wc71?=
 =?us-ascii?Q?cnOGOmKZX/FgqTi03ukbHumMrQf0OMq+tX5BxIY602Bg0isGWDKT9oZ2bRNJ?=
 =?us-ascii?Q?ggGbNxz9fW68bg1h6LVydnnVg13RDyt0qixQuJZmm8MuQTc+HuV+ivDSPtsD?=
 =?us-ascii?Q?2VFWerIydTqaqXTaylIfqZtn5IMZ/hbyqZfQbDeS9BQHw3dT2QHfpOWZndv3?=
 =?us-ascii?Q?7mDzk47V3TBC0TU3j99E+YkZU4YY3dXNHBkMDjJUD4Bzo9ofOAD6X+JqBdhe?=
 =?us-ascii?Q?MONv7qgud23C+Aiaqdgo4tgBvvkR7XyuyiTlzUR0XjxyhHcnQMBaNCtpsyr7?=
 =?us-ascii?Q?gSnv/gySVyMVrGLEdRUEwK2Unrf3FaHvQf7/VW2C83frTiCUuA/J4H0jrjGs?=
 =?us-ascii?Q?7ozBtz8cUheEGW8VBwA9cOrec6pDDK/DFrYI/m1srryeOnF29FNS5EweAzTy?=
 =?us-ascii?Q?c78hj6hXkC9vqIi2aK7Dz152YOExCuALKtpQgX/0rYHCPq5EE9uc11g9eRtH?=
 =?us-ascii?Q?iqY8M//SZZJNyqAb5dXUGLt5tuYkzaC98qxcwEIGukZLVW2zQkEUUwjiZ/K6?=
 =?us-ascii?Q?LzrDlKHgJB3f0u0Lfy9oPHcA/hVsvNxXb6CnYPlugrEFUxGEnb3ise1QAMNE?=
 =?us-ascii?Q?sJFunmWwGdle9gHrnKJnJMpHK04aFTuEieqURAxXvO6GAS+bUzou5twGrJpE?=
 =?us-ascii?Q?rQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ee9f073d-9329-47e0-cfa3-08da60ee10e2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 14:28:03.5797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aDsW8qNq1g5v/hQJnljEY9hbZLG/BXkMjKZmdQ1i+eLmThHNBMp13KtIGhq6kc2MiSdIPg2vpw0rt8D12PSVUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_TLB_invalidate_issues_with_Broadwell_=28rev4=29?=
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 07, 2022 at 02:47:54PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Fix TLB invalidate issues with Broadwell (rev4)
> URL   : https://patchwork.freedesktop.org/series/105167/
> State : warning
> 
> == Summary ==
> 
> Error: dim checkpatch failed
> 158bc8b5e012 drm/i915/gt: Serialize GRDOM access between multiple engine resets
> -:109: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Chris Wilson <chris.p.wilson@intel.com>' != 'Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>'
> 
> total: 0 errors, 1 warnings, 0 checks, 77 lines checked
> fa407659e72d drm/i915/gt: Serialize TLB invalidates with GT resets
> -:62: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Chris Wilson <chris.p.wilson@intel.com>'

These need to be fixed.

> 
> total: 1 errors, 0 warnings, 0 checks, 27 lines checked
> 
> 
