Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E537829009
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 23:42:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBBE910E53B;
	Tue,  9 Jan 2024 22:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34C810E53B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 22:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704840130; x=1736376130;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6gU788a8G+Rpr46R3eh28Pw9fAUyiwdyBtVZlQxJ1YA=;
 b=Je1imqyNIpo/CphwQR2UgzczNTlTQVN9NeOLtf2wczQt56ORqoGua/we
 B32NHbWqK/feGWOshumDDRWGE/kTroMJ1qSRnXogisMWUQzqhvaX+8lPI
 RLuZYVuzSU7E1lh8pmxK3O9mf/SzCuu4o9XagsrUbytLlC+oxFFiKnh06
 YrUY8O5SviWk/cgM4cm8DZWLObHcUVtID0/K1xA0e2aSRVrSCjwzxOSZl
 BpeFsXqjhdm0ltxEH8t5b8CaXGV2VWdMgwtZimHo7nC4+NcRqUnKSK1am
 Qx9ut/9zG5w322cosp5oZQOQ4KoCVIlmCiORTPwypRsoukvTiXvnIouD7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11829778"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="11829778"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 14:42:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="1028934610"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="1028934610"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2024 14:42:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 14:42:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 14:42:08 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Jan 2024 14:42:08 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Jan 2024 14:42:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dXH2ClwCXvBQImkmVcinMtK4lnip2iBPsOYZaEcZvYBxdoKL7f/ByQC6gSOeOCY6iX25HKNrGJBv1mezO/U8RlXo0ZdQeRxwz0l7LD82eQsQsnDyUwOUpDCzXPyZ7E+60CSJLOHSzmNpe7OFVXLjfiUMXRPolLoSR+rcirINyHMIme/qlRb8CbrcSDUQ/3MBx2U71aP2UWO9vzOrYoH9QqHMaOIE1xutmCOJEYU5RrCtIia4PSomZIamFy1jc6DG0Y7caA//AwpSBbeUqwRJEZrij5vTIaiPLKwjwqzxpaO0Spv7W3ecwniXN6fz+QVcYAwgc3ese11KiXhkyXFxTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K0j12V8NzY/X4YQFJrpeGZjfMk+HFQVp4/mF8ecZAcI=;
 b=gSxysOCta2d5lHi5VdbNj17AT+WBx+0UjPKgSQZCMIspRbB9okoO4tZzgonZf8/a1Yqb1lRhHUwz1a5bfp/ZaIhTYBLOYcD9kDZMQYdSXiQBNJlavbyDINy097KK6iU6o8ns6lRd0cE+stlpIEt2g1FsOs0GiFAxuqyTWSFCZW6aJceJJGMgxXwRtdUtLZIlUdNHZr0CAYxlecd2tEPXekkgIbCCV26f/C+9DXXmBFFQ1sVrvvXo/jfLs7kh1Z7qdAMoM34bo1V0iQ0p+aO9pVWhE36ZbH09/t8syARaiXmQs8L+WYq0jR3aNr0UOenSbUhcMPrBuPrjYq4LptF5Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB5223.namprd11.prod.outlook.com (2603:10b6:208:31a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Tue, 9 Jan
 2024 22:42:06 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7159.020; Tue, 9 Jan 2024
 22:42:06 +0000
Date: Tue, 9 Jan 2024 17:42:03 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_Resolv?= =?utf-8?Q?e?= suspend-resume racing with GuC
 destroy-context-worker (rev13)
Message-ID: <ZZ3Lu05dDTg_kxfk@intel.com>
References: <20231228045558.536585-1-alan.previn.teres.alexis@intel.com>
 <170436584364.20567.12631074825231636622@5338d5abeb45>
 <3e75cd48e9bd1a4d4dff72653d8892f587acdea0.camel@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3e75cd48e9bd1a4d4dff72653d8892f587acdea0.camel@intel.com>
X-ClientProxiedBy: BYAPR08CA0054.namprd08.prod.outlook.com
 (2603:10b6:a03:117::31) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL1PR11MB5223:EE_
X-MS-Office365-Filtering-Correlation-Id: 48edf8f3-f092-4179-611f-08dc116434e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uzKcQFLW3ufxiVGUll68niwy1b8laiC1P2s4rmc+z6ySb5Qgw/U8M/DrjlW2aTvmge5+eAKa3syg4aneKhbtfCZ/pcSZwokDY5Id5gEZGcywX5RQ0+0EUBVaOPifnIf+aWX5zwDmwmdORLiE+yRCKxE2XycdO7azDjt7w1ptO6g9fxH9Hh2SAyofAVELeER2xugLnvd3NRz3MPKgxZ6sx9WvLTRmy/zLjkpXfGU+Zli8ic4WXXvZHmmoRJ3J8cO116tFDQVBhWeWjxemwleBo6qU/eLk/u2uwnp3TZf7zTOlI319Pz1KxvvVVfPgokC2jKHnF5q0UHNKcO5PYgUXZMvcdZkYvZkyU5qoSuXDGsGzBczc69NxCjeEQpD6cna5sznXcMAvZi+BVsxKOZqI4mRio/ZODd8RKFpi3Wtx+9CSYIn/yxWb6ce1kDT4RsGYWFjcOaww9qlLcUXJCMQyooNJX8w3/eEXjvGrHdpTRsZI1vkIZIpmbEhOQsk3gY0iQ3SnRr0H+pgG5eE07ohEXwnJqTdtg8MmmA+TFl4t06o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(366004)(376002)(39860400002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(83380400001)(41300700001)(66946007)(36756003)(86362001)(82960400001)(38100700002)(26005)(2616005)(6512007)(6506007)(6636002)(966005)(6486002)(2906002)(478600001)(66556008)(66476007)(15650500001)(37006003)(316002)(6666004)(44832011)(8936002)(6862004)(4326008)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qm9TREtNTVJEUVkzMGxPTTZkOFVBMExCaTErQm52TUlmU3RKZjAyVEgza1ZB?=
 =?utf-8?B?TUFYWFlKM1JFekd6UEFaTERROXUzcXZ4d25WVUowSFJxV3NlUEpsUXJ4ZHVP?=
 =?utf-8?B?WTBRRkt0aTVna0lyWVdzb3BCRFptdnB6L1l1YU1YUi9OOGlvbDcwMlptUU9n?=
 =?utf-8?B?czRqNU1nZm9xenFQeEdzejQySTJkRUhreWgrZ0dCR3ZJUUdJNzlLc2lMeTJa?=
 =?utf-8?B?WE9ZU2wyVTd3aFVzbmxZcWEweE5GSGNvb1FJcWpxVkd6dGNncS96UUQyNVZR?=
 =?utf-8?B?bnVqRFBDdjJlQTBhWVZzcnB0R2thY3kvUXBBbmhkYVV5eENNaFJHZFFrRmh2?=
 =?utf-8?B?TUJ0dExPK05uTlV1bWtOL3htWjFNcnQvQm5XK2VSdUhZSVZ6Y2lrakFqT25R?=
 =?utf-8?B?dmpNb3l3MGYxdW8wV1BHSFlVcldHcnFNMHVoZEtYUWd4d2ZtZXNFL2hJeXRk?=
 =?utf-8?B?b0VWb0xIZERicjhUOGwyZGJtYjhHazhtNkU5cEJQV3ZNdFFZejFBR2NPbHc2?=
 =?utf-8?B?aFNLaGJ2WExFUEx6eXg2VGRMV2MwUFk4NGl3WE5ObUJFTFpHRXRXdmE5WEM2?=
 =?utf-8?B?Z29TSW44eEdnaE9LeVo4c2tTdXZTSVhPbTd0NGJZWVRSSlEzSmFpR0EzMmY1?=
 =?utf-8?B?akY0eHJ1RUdVR3d3UVZ3bitQMGNXVWNWWEhIck9ERHd3cnRpVktqN1RhYWh5?=
 =?utf-8?B?aFI0QnZieDBaV0RmK3gvTGlOUDNXeGQ0ajdIT3ZQaHg3UXozMmpzRVcwb2Ft?=
 =?utf-8?B?ellBNWQ2c082R3BzWFBmRm5HNW9XQzhIN05KbGtxbUUyNzdJeU9hUnBESzRW?=
 =?utf-8?B?ZG43T2tZV3Y1dXlNbnV3VWI4elZPMmFNaG1hSUM3Qzk5ZkZuUHhNaTY0a0Yv?=
 =?utf-8?B?RHVlYzY3VXBGQzhVVVdkTkRFWlZyRUdGRVhCVzk5SC82STBUMEs5cGVJemNp?=
 =?utf-8?B?YnJqajZ6bUxvZWc4YUM3ZWJzSmF5YUcwYWtNdGx3WDdYOEdocndyMC9yd0xN?=
 =?utf-8?B?dVlOL1VLbVBoOEhBaDlHek1vMzdTR1h3Tnk5eDdwRjZIakFiOXpuQ09HMzdW?=
 =?utf-8?B?QXRxaFhuTlM5QXFqM29qVHEyUFJYMGluQUJJeUc2Y3RqbXVrZGFMUkZ4bnV5?=
 =?utf-8?B?Z2JnNnk3dzV0Mm9CTHBVKy9FQXptbC82S0xTOVVoeEhmSG5LVGJ0aEhxUGRt?=
 =?utf-8?B?RkNHZmdBTFBIVS82ckhwdURXYTlZOHhWaGhTSEViTXV5T0RHc3JQcUFsNURV?=
 =?utf-8?B?K3MyVlVJakdMZ2M5U0ZFeWpCZG5FZVE0ZGdLcEpycHRmNUltejBaT1QrZmVy?=
 =?utf-8?B?OG8rY3gxTTZqRU1zZWhuYm4zQzRRTWk4ZlBjdFdGaEV1MnpueE55NitlRklB?=
 =?utf-8?B?cWV3WGZUMjRoY3ZNdUZNUmhiYnVMNTZDbHk1ZTdWNUtHV0dZaGk1aDV3S29w?=
 =?utf-8?B?ak1MVCszc3U4V3d0bGFFTXF4bWowSHpOQWVlZE5wZmhqc3hRVFB3QkVXSFhy?=
 =?utf-8?B?VFZrVWNKTk1MUWNWcmYyY24ydGoxaFVqYlQ0NzdEZUdSS1lhaDE3VEp1TkxU?=
 =?utf-8?B?cjZZdUNqUnhFSEpidk4wYnBnZUFVTzFFdkl1aU56cDYzVmJ2enlTdnc3eFpn?=
 =?utf-8?B?MHUxRmw3eXVRTmRiRXN2eWpzdHRTWW0wZnI2ZlRWNk8wRVVKZHZZdmI4ZjZt?=
 =?utf-8?B?VTUyeHZHY0ttTm15NGdHZjU5M3FNdXZSSmVPN1g5NTFud3ZSWWV5aEtHMUNu?=
 =?utf-8?B?ditoQVdjNWRVTG1TUzJuWnpkYU9SVytlOGozUTdKdzgvaEZtcVdRQnNwcUZ4?=
 =?utf-8?B?d2FDLzJkeElTaUlXdjJUTzJBOWNoQjhIemM3OVFObURaWDlyM0NkWVJhRTlW?=
 =?utf-8?B?MVNEQjA1b0R2MUxMVE11Ym96aHNHWVdId08wRnZ0NmJCTnNQMTFYS1RPdWNM?=
 =?utf-8?B?QlJMWWJoWGJVeHhTcW4xMTlnVjF0MEZXMXAyZlNocmtCUjAwTktPL2tPR2hv?=
 =?utf-8?B?b3BCR1VkNWNMS1lkQzNwN3RnRks5STJCOE84QzJ3NVhXTnltckljSXo2V3ph?=
 =?utf-8?B?dVV3VGMrMDdRYTdIdDVkNTVRUElaQ2JJM3dSNW9BeitmUGZxTDliYjZwODdE?=
 =?utf-8?B?Vk15NTB6U0t1N3VaN2FiVzVYSWNQWGlGZ3BuVFg4Z3JueXZLQkNLTjQzZHVY?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48edf8f3-f092-4179-611f-08dc116434e4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2024 22:42:06.4556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aF0sogbxTIPrF6M1sh4RPXUvVGKjkeNriLkbT+qeG5tOYgBciDT+Qt1L/1hUCmcUPG3PKojKY3wJBgMgGrawmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5223
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 04, 2024 at 05:39:16PM +0000, Teres Alexis, Alan Previn wrote:
> On Thu, 2024-01-04 at 10:57 +0000, Patchwork wrote:
> > Patch Details
> > Series: Resolve suspend-resume racing with GuC destroy-context-worker (rev13)
> > URL:    https://patchwork.freedesktop.org/series/121916/
> > State:  failure
> > Details:        https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v13/index.html
> > CI Bug Log - changes from CI_DRM_14076_full -> Patchwork_121916v13_full
> > Summary
> > 
> > FAILURE
> alan:snip
> 
> 
> > Here are the unknown changes that may have been introduced in Patchwork_121916v13_full:
> > 
> > IGT changes
> > Possible regressions
> > 
> >   *   igt@gem_eio@wait-wedge-immediate:
> >      *   shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/shard-mtlp-3/igt@gem_eio@wait-wedge-immediate.html> -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v13/shard-mtlp-4/igt@gem_eio@wait-wedge-immediate.html>
> > 
> alan: from the code and dmesg, this is unrelated to guc context destruction flows.
> Its reading an MCR register that times out. Additionally, i believe this error is occuring during post-reset-init flows.
> So its definitely not doing any context destruction at this point (as reset would have happenned sooner).

yeap, it is indeed happening once in a while:
￼
https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7659/shard-mtlp-4/igt@gem_eio@wait-wedge-immediate.html

I was going to merge the series now, but then I noticed that Matt had taken care of that.
Thank you all.

> > Known issues
> > 
> 
