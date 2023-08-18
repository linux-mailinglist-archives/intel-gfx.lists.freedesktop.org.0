Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F36B4780746
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 10:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86EF410E48E;
	Fri, 18 Aug 2023 08:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2066610E48E
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 08:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692347868; x=1723883868;
 h=date:from:to:cc:subject:message-id:in-reply-to: mime-version;
 bh=yA59sgZ3HUKCkyrBkfJYc3kappBu3wH0O9cy9sUcpho=;
 b=nQ+76bfogJF5gOrXvfTeiU4G4zujRUmMyH/4AzwMGfNuJnmblm6Lhr02
 LTIYAD9LUiE75lrHiiJP5yZEGT7ePNSXbE+F1pZ1WASyV9id8F8Dlx4+U
 rCSC9hR0TbQUyPeNc2T+hJ5FXIo9SHK2BoKwtqhQHWk3tMvLgifSraTJE
 AOA2hbCvxBFqLqFGFN45LuEfZ3G4S0AlQVjwYDPeG2DZOwvNtwFWZfxEf
 p2cD5mwoClqbuQGmq7tfqO7ubrlwsp4vEUMHxY0OKEJrK7M52bcQetoEp
 lzAdYVprHiTaUKb4AwzJOwVidmZBVUCT1srQ6KR1+Cu6gkDgFJB105wtX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="376809276"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="376809276"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 01:37:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="728526306"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="728526306"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 18 Aug 2023 01:37:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 01:37:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 01:37:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 01:37:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 01:37:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HLo7whCWhbHOwbOvzay13TE4vNwVhNCJIauUmnTON5es7Df08ttyF2IuKYRMSd6eyG4j/j5TbxNNnepiLMBsYqUqD4UBSEO9y2Dg0PE+s7FM0oeGe18q5KDAAiBR0tGGLIVr3HYGwNP3//luRCPg08LsY2X0uAElzsdnpQBeI24oTAyOSVk9E8bn/1lZnnomb71YEG7n9xWSA1ziu2MLFAHi6Po7q2ii3mOtrvUQ8QsJ/9tuHjfnldqeYVJ/RtaByjb/IQVs7evhsRsC6DP4AMRU2VnXKMC3KTXWBzTHLRZPL0s3yvYc0G7J6O6hO+hohdIi5sIud0pwZSD6/AD+4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sxUdj99tolTissXMDj9OOY6cKt9HKYuKeAFvat+qkeE=;
 b=LJ1Pj1oN13fWFzEq67lgai4dO1aE3TgLC9aHpag9Z7ws8DqbPWTEioTJjJmQX80ZfuISOUCJmpyCErnZAIu9yMhPGfdY9M8oM4d4Ab8VieJ/Ano0WuUPbhuFEhNShWB9MLcZO/BFZf/BCro6YJqM6UnVUjtfaBEkhCH1X/lRw1oXpbDcumO8iwuwd+bL9MlMzh1HJuduuhxSKSZvAQVjdTc2Spo4ALYl/0UQgrYQvij0qzrj6bvN4gjhVdFRQZ2FqNRFExJd8UR5RH0O178nhMphXAiCTP8aF2zQ+oIqwO64fS53X5wLSwTi3svQUS4eILsL8DK+3mnFmJl2FpFkAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6779.namprd11.prod.outlook.com (2603:10b6:510:1ca::17)
 by IA1PR11MB6099.namprd11.prod.outlook.com (2603:10b6:208:3d5::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Fri, 18 Aug
 2023 08:37:42 +0000
Received: from PH8PR11MB6779.namprd11.prod.outlook.com
 ([fe80::73c6:1231:e700:924]) by PH8PR11MB6779.namprd11.prod.outlook.com
 ([fe80::73c6:1231:e700:924%4]) with mapi id 15.20.6699.020; Fri, 18 Aug 2023
 08:37:42 +0000
Date: Fri, 18 Aug 2023 16:37:32 +0800
From: kernel test robot <oliver.sang@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
Message-ID: <202308181627.2fec1157-oliver.sang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230814065006.47160-2-dev@lankhorst.se>
X-ClientProxiedBy: KL1PR0401CA0006.apcprd04.prod.outlook.com
 (2603:1096:820:f::11) To PH8PR11MB6779.namprd11.prod.outlook.com
 (2603:10b6:510:1ca::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6779:EE_|IA1PR11MB6099:EE_
X-MS-Office365-Filtering-Correlation-Id: 34d38d03-00f7-4b94-9b32-08db9fc6636d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9s6Tn1zhxUHQ3qGx8Dow/tzGbKhnN5tW40zJ0y79WaP0uHVbTM5TsOj00HWjmYCD1BtiLfmP+nZ7aQjEMBz4vMzKbeJ11Zugngcd5I+2iGlhGxbgitGImEgnQkxd5Ax9uNJ5Kh98+aw+yvo0Tt4nCpSUTgR9BvkqDkGAVl3FxRVXNsLdmZ6XPHWrEJwHXsNxTg8Vq5XEiQbUhtn8NcWPDwhvjhUwoAAkiJsaMm7djiLv89bwfvUuov797hhnCVCVP84iP6LPWvQy1QBt7WnKQ2sNGXBjMCdtYLNIKeG1LLK3S9xgA1LQJyyXgT/YQvstOyZp8VJ8aa2qY+WdSgwmrXx5QbOr/IO0i85Aq6CJkZMlkZkPgwgb3kRZo9D3CqrHNetS+sWGP8hAGnF2GPENrmgaxCfYKAGwQ3Sw5qq6aDWXcp+B8ZBkHptO4vxtV/rKXvWki6123hRhjF92G4JcuVvr4KjMJvVVHb7yuYRySpp/ZDevAUQt5OHEUnIRraUZ327HGLWOKF2MbLFGLOOywJJhWGnF2oVos7bLygG6jw4i8AmUmxZYJhz8uu1ljEwjz0ffJZw4iFKoYwldBGIlKw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6779.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(451199024)(1800799009)(186009)(86362001)(36756003)(82960400001)(38100700002)(107886003)(966005)(2616005)(5660300002)(66556008)(478600001)(6506007)(66946007)(66476007)(6666004)(6486002)(316002)(6916009)(26005)(1076003)(6512007)(4326008)(8676002)(8936002)(41300700001)(15650500001)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W/ZwPrpPfOyjyBmeb/RBKH/3D8omrrvRmsDkJsivZeBt8akFe2jG70KGmwHD?=
 =?us-ascii?Q?9q9dh/tHGtRziap5+Rnz8FyQQnT49Gjdd+YjPok9btwxZkXBdl6ofnz8kDZS?=
 =?us-ascii?Q?GAQPCjTfOiBSrKjg+xcMKj9gCq42SiSN3Am9kmL85aeXt8+qi97ItrGifHxV?=
 =?us-ascii?Q?r9MLX2eNPAkhNvtadlYyeMkZXZ26AiQ3zc1FFkh3FOYIzPIbfJlQxBIz8vCZ?=
 =?us-ascii?Q?RkQVezSvDDJBhiC+gquen7u/V5MclXeorHX35dbZ09QWI37UBQL3X5IBDaUl?=
 =?us-ascii?Q?gp7DCXxPTVisKUENdqWUghjla7aThjPtIBUgus6AB6POE5+b9wKpSSRFTvzl?=
 =?us-ascii?Q?7uLscvtOxRIeEHHcd+QJzpRYpc+MZ7jG5hXjDYUGZ+yvx/okn+C3pdPfZzO4?=
 =?us-ascii?Q?bDiAmd49D4x/bOipgTvMYE26Wj3QAlFjyGaXTaD7iqNlePr4Ag6wcbotrSf9?=
 =?us-ascii?Q?7sE4pZnUTM4132p3dZPyuKrB+fRotP2iJXtjlSivJZSnzISbJYtOXT3LicUx?=
 =?us-ascii?Q?PKOhuiyPIHLRgObThp87CXRYqBpdK/VTNnHXJKn5DH6j+UUYLN1v+e1q315O?=
 =?us-ascii?Q?wt4gqU+HhOjOrCaDWRJx3qvGLivNLYv3DsLM7hNw98mA5cx5hfuBwcgGg1Bt?=
 =?us-ascii?Q?pylkjbeDSY4d4BaT/XoWSMnso15yyzR7wr0cwwJB3iTxt9mfTNTP1LK/XAUZ?=
 =?us-ascii?Q?SX21UJS6EE7xVvwJFggIqmk6aJGuJ4ugs8YxMP5zTdU/I/HwkoiKbCUsBldc?=
 =?us-ascii?Q?NQJowMcrWrrJXhDLAsk3GFC7c0GGWeFcS5wLbPrDaN5L++eZT+jKUanBsDxG?=
 =?us-ascii?Q?iLbW/Uq6W5lU6ggDGQggttCuf8ovrC4NZTL3qK5dbTXuwiiExSkwc8oy4lfR?=
 =?us-ascii?Q?GISPDUbqm/Ase7kThq6Ke7Vuxad+QycJ7qXT3JxFUKn5oElcUy+N1aT1WyTq?=
 =?us-ascii?Q?d/oxcv6/1YbR4AGmvYh0JbF87wif4OaDfvbsn6Q9V7VsYFvUlxwsk/pZiMQZ?=
 =?us-ascii?Q?paIUk4tap77GCdDkz0y6FKHpiM8QVgA18VjzUlHEzs9408UYiBMikNp5x/5X?=
 =?us-ascii?Q?7OmNnz6XiN4bgn5gUdVQ4i3HyxgBHkFbH+p6o3T/FQ35pfS9UJjkNP1xJ9pc?=
 =?us-ascii?Q?a6xhvBQ4CJkPxPjZSNhxSAUn63bmxsscpTUsjpLqIEQ6+PFRTH8I8wMn+QHl?=
 =?us-ascii?Q?QhyklUCYlKfqBZRSplCsSH6vipIe0ClqXy6a2YRUPV7rSWN4EMbStcpSnFFz?=
 =?us-ascii?Q?MJ3LP6SqueKDk116AKBC0qFWHC8Dq85uCXgqvmbKqKq+I2CnDnRuACCFSDyj?=
 =?us-ascii?Q?Eu8M4W8jiLPq4sQc96iTGt1j4e3VCe6otVsT3y1FcCyqqvnfrbjsW9bjywNZ?=
 =?us-ascii?Q?SMxI9xKJ0wfzkkuTMmwofOPk+bOH4rw3iSb2MxjTD1CC/bngCDXdHmcCCvK2?=
 =?us-ascii?Q?hi32bbp5PevvW9TQobSzPpG5kN6OODqEPBaStvBn27qQ0kZZQbXJnECRtU3J?=
 =?us-ascii?Q?9j5wnjDb4Ew48YRi8eYVwdZXqOGHRqspTbdn8aFrI2r5z7D6TGGsy86KZcVv?=
 =?us-ascii?Q?x8hsyHpqtlQLJzQnkDJKVW+ZQPlCA2dD1nPqWIv0W7ytWC6rZIN/TxV+BEnc?=
 =?us-ascii?Q?0g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34d38d03-00f7-4b94-9b32-08db9fc6636d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6779.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2023 08:37:42.5652 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6g9ART9jzo0Xd25Ji5jP6eie7Saqf97ydav/DkxFGoBKsmd2KJUSP09qOuGGVGuwoajQOxC3W+h8efenZjG2Mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6099
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Handle legacy cursor update
 as normal update
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
Cc: oe-lkp@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 oliver.sang@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Hello,

kernel test robot noticed "BUG:KASAN:slab-use-after-free_in_intel_wait_for_vblank_workers" on:

commit: cfd54d37e5cd9511b5a4a98bba6d4b2f596149cf ("[Intel-gfx] [PATCH 2/2] drm/i915: Handle legacy cursor update as normal update")
url: https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-i915-Handle-legacy-cursor-update-as-normal-update/20230814-145051
base: git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link: https://lore.kernel.org/all/20230814065006.47160-2-dev@lankhorst.se/
patch subject: [Intel-gfx] [PATCH 2/2] drm/i915: Handle legacy cursor update as normal update

in testcase: igt
version: igt-x86_64-0f075441-1_20230520
with following parameters:

	group: group-23



compiler: gcc-12
test machine: 20 threads 1 sockets (Commet Lake) with 16G memory

(please refer to attached dmesg/kmsg for entire log/backtrace)



If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <oliver.sang@intel.com>
| Closes: https://lore.kernel.org/oe-lkp/202308181627.2fec1157-oliver.sang@intel.com


kern :err : [  162.196982] BUG: KASAN: slab-use-after-free in intel_wait_for_vblank_workers (drivers/gpu/drm/i915/display/intel_crtc.c:395 drivers/gpu/drm/i915/display/intel_crtc.c:447) i915
kern  :err   : [  162.206530] Read of size 1 at addr ffff88811d8dc150 by task kworker/0:0H/8

kern  :err   : [  162.216391] CPU: 0 PID: 8 Comm: kworker/0:0H Not tainted 6.5.0-rc6-00947-gcfd54d37e5cd #1
kern  :err   : [  162.225319] Workqueue: events_highpri intel_atomic_cleanup_work [i915]
kern  :err   : [  162.232683] Call Trace:
kern  :err   : [  162.235861]  <TASK>
kern :err : [  162.238688] dump_stack_lvl (lib/dump_stack.c:107 (discriminator 1)) 
kern :err : [  162.243085] print_address_description+0x2c/0x3a0 
kern :err : [  162.249618] ? intel_wait_for_vblank_workers (drivers/gpu/drm/i915/display/intel_crtc.c:395 drivers/gpu/drm/i915/display/intel_crtc.c:447) i915
kern :err : [  162.256370] print_report (mm/kasan/report.c:476) 
kern :err : [  162.260681] ? kasan_addr_to_slab (mm/kasan/common.c:35) 
kern :err : [  162.265515] ? intel_wait_for_vblank_workers (drivers/gpu/drm/i915/display/intel_crtc.c:395 drivers/gpu/drm/i915/display/intel_crtc.c:447) i915
kern :err : [  162.272267] kasan_report (mm/kasan/report.c:590) 
kern :err : [  162.276584] ? intel_wait_for_vblank_workers (drivers/gpu/drm/i915/display/intel_crtc.c:395 drivers/gpu/drm/i915/display/intel_crtc.c:447) i915
kern :err : [  162.283336] intel_wait_for_vblank_workers (drivers/gpu/drm/i915/display/intel_crtc.c:395 drivers/gpu/drm/i915/display/intel_crtc.c:447) i915
kern :err : [  162.289911] intel_atomic_cleanup_work (drivers/gpu/drm/i915/display/intel_display.c:6901) i915
kern :err : [  162.296191] ? drm_dev_put (drivers/gpu/drm/drm_drv.c:827) drm
kern :err : [  162.301672] process_one_work (kernel/workqueue.c:2605) 
kern :err : [  162.306507] worker_thread (include/linux/list.h:292 kernel/workqueue.c:2752) 
kern :err : [  162.311080] ? rescuer_thread (kernel/workqueue.c:2694) 
kern :err : [  162.315828] kthread (kernel/kthread.c:389) 
kern :err : [  162.319791] ? kthread_complete_and_exit (kernel/kthread.c:342) 
kern :err : [  162.325323] ret_from_fork (arch/x86/kernel/process.c:151) 
kern :err : [  162.329630] ? kthread_complete_and_exit (kernel/kthread.c:342) 
kern :err : [  162.335181] ret_from_fork_asm (arch/x86/entry/entry_64.S:312) 
kern  :err   : [  162.339840]  </TASK>

kern  :err   : [  162.344980] Allocated by task 4201:
kern :warn : [  162.349214] kasan_save_stack (mm/kasan/common.c:46) 
kern :warn : [  162.353787] kasan_set_track (mm/kasan/common.c:52) 
kern :warn : [  162.358270] __kasan_kmalloc (mm/kasan/common.c:374 mm/kasan/common.c:383) 
kern :warn : [  162.362757] __kmalloc_node_track_caller (include/linux/kasan.h:196 mm/slab_common.c:985 mm/slab_common.c:1005) 
kern :warn : [  162.368283] kmemdup (mm/util.c:131) 
kern :warn : [  162.372075] intel_crtc_duplicate_state (include/linux/fortify-string.h:765 drivers/gpu/drm/i915/display/intel_atomic.c:242) i915
kern :warn : [  162.378364] drm_atomic_get_crtc_state (drivers/gpu/drm/drm_atomic.c:363) drm
kern :warn : [  162.384453] drm_atomic_get_plane_state (drivers/gpu/drm/drm_atomic.c:567) drm
kern :warn : [  162.390622] drm_atomic_helper_update_plane (drivers/gpu/drm/drm_atomic_helper.c:3127) drm_kms_helper
kern :warn : [  162.397997] drm_mode_cursor_universal (drivers/gpu/drm/drm_plane.c:1086) drm
kern :warn : [  162.404086] drm_mode_cursor_common (drivers/gpu/drm/drm_plane.c:1172) drm
kern :warn : [  162.409973] drm_mode_cursor_ioctl (drivers/gpu/drm/drm_plane.c:1188) drm
kern :warn : [  162.415628] drm_ioctl_kernel (drivers/gpu/drm/drm_ioctl.c:795) drm
kern :warn : [  162.420933] drm_ioctl (drivers/gpu/drm/drm_ioctl.c:893) drm
kern :warn : [  162.425627] __x64_sys_ioctl (fs/ioctl.c:52 fs/ioctl.c:870 fs/ioctl.c:856 fs/ioctl.c:856) 
kern :warn : [  162.430284] do_syscall_64 (arch/x86/entry/common.c:50 arch/x86/entry/common.c:80) 
kern :warn : [  162.434590] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:120) 

kern  :err   : [  162.442600] Freed by task 266:
kern :warn : [  162.446384] kasan_save_stack (mm/kasan/common.c:46) 
kern :warn : [  162.450957] kasan_set_track (mm/kasan/common.c:52) 
kern :warn : [  162.455435] kasan_save_free_info (mm/kasan/generic.c:524) 
kern :warn : [  162.460355] __kasan_slab_free (mm/kasan/common.c:238 mm/kasan/common.c:200 mm/kasan/common.c:244) 
kern :warn : [  162.465185] __kmem_cache_free (mm/slub.c:1818 mm/slub.c:3801 mm/slub.c:3814) 
kern :warn : [  162.470016] drm_atomic_state_default_clear (drivers/gpu/drm/drm_atomic.c:228) drm
kern :warn : [  162.476541] intel_atomic_state_clear (drivers/gpu/drm/i915/display/intel_atomic.c:343) i915
kern :warn : [  162.482512] __drm_atomic_state_free (drivers/gpu/drm/drm_atomic.c:313) drm
kern :warn : [  162.488342] intel_atomic_helper_free_state (drivers/gpu/drm/i915/display/intel_display.c:6850) i915
kern :warn : [  162.494833] process_one_work (kernel/workqueue.c:2605) 
kern :warn : [  162.499668] worker_thread (include/linux/list.h:292 kernel/workqueue.c:2752) 
kern :warn : [  162.504244] kthread (kernel/kthread.c:389) 
kern :warn : [  162.508205] ret_from_fork (arch/x86/kernel/process.c:151) 
kern :warn : [  162.512521] ret_from_fork_asm (arch/x86/entry/entry_64.S:312) 

kern  :err   : [  162.519398] The buggy address belongs to the object at ffff88811d8dc000
which belongs to the cache kmalloc-8k of size 8192
kern  :err   : [  162.533366] The buggy address is located 336 bytes inside of
freed 8192-byte region [ffff88811d8dc000, ffff88811d8de000)

kern  :err   : [  162.549380] The buggy address belongs to the physical page:
kern  :warn  : [  162.555691] page:00000000f71065d9 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x11d8d8
kern  :warn  : [  162.565835] head:00000000f71065d9 order:3 entire_mapcount:0 nr_pages_mapped:0 pincount:0
kern  :warn  : [  162.574675] flags: 0x17ffffc0010200(slab|head|node=0|zone=2|lastcpupid=0x1fffff)
kern  :warn  : [  162.582819] page_type: 0xffffffff()
kern  :warn  : [  162.587049] raw: 0017ffffc0010200 ffff88810c843180 dead000000000122 0000000000000000
kern  :warn  : [  162.595537] raw: 0000000000000000 0000000080020002 00000001ffffffff 0000000000000000
kern  :warn  : [  162.604024] page dumped because: kasan: bad access detected

kern  :err   : [  162.612551] Memory state around the buggy address:
kern  :err   : [  162.618082]  ffff88811d8dc000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
kern  :err   : [  162.626051]  ffff88811d8dc080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
kern  :err   : [  162.634018] >ffff88811d8dc100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
kern  :err   : [  162.641981]                                                  ^
kern  :err   : [  162.648551]  ffff88811d8dc180: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
kern  :err   : [  162.656516]  ffff88811d8dc200: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
kern  :err   : [  162.664482] ==================================================================
kern  :warn  : [  162.672474] Disabling lock debugging due to kernel taint
user  :info  : [  183.845750] [IGT] kms_cursor_legacy: starting dynamic subtest pipe-B
user  :notice: [  183.847199] Total updates 140241 (median of 20 processes is 6978.00)

user  :notice: [  183.862752] Dynamic subtest pipe-A: SUCCESS (21.683s)

user  :notice: [  183.871250] Starting dynamic subtest: pipe-B

user  :info  : [  205.481554] [IGT] kms_cursor_legacy: starting dynamic subtest pipe-C
user  :notice: [  205.483064] Total updates 146561 (median of 20 processes is 7323.50)

user  :notice: [  205.498578] Dynamic subtest pipe-B: SUCCESS (21.629s)

user  :notice: [  205.507030] Starting dynamic subtest: pipe-C

user  :info  : [  227.139947] [IGT] kms_cursor_legacy: starting dynamic subtest all-pipes


The kernel config and materials to reproduce are available at:
https://download.01.org/0day-ci/archive/20230818/202308181627.2fec1157-oliver.sang@intel.com



-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

