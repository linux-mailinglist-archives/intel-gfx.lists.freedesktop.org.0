Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EC5688CED
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 03:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1015410E708;
	Fri,  3 Feb 2023 02:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 904E710E708
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 02:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675390251; x=1706926251;
 h=date:from:to:cc:subject:message-id:in-reply-to: mime-version;
 bh=knBuGXmT3bCn/c1E9REtXZxacZM8BrHEPJWydiwWi/Y=;
 b=XsfW02jLx5m+Bp7fcQIysIFnixPtABDs6xAc+d7jr3ukp7eKK8JPyHTw
 3aoN/6FQ97APnjmrn60VXBD0NhNMRa7/zIJ+/BqvoSncv8eTgPJ13Rq7t
 lCaaJeJV/i4TZq5aVvUrzw8ZL63+MoQYUOlb1/GyDtGdcxfZ+5yW7qu3w
 oQ2fKIFjGljR93CrCP8ZpB2X4APu30x/HHssiRPPux5sCvsBJrEaxHzi+
 mQSToND0J/TMolJgvrwFE715+fVPL9O5yjFOGCs8TC6vHMXgg5o0hIKGZ
 BjTrD8df7/h1GnGl1EwrfLKuxvZFbqCe2veyA5e01tXo7NsxTczZqap0F g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="328651866"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; 
 d="xz'341?yaml'341?scan'341,208,341";a="328651866"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 18:10:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="734153114"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; 
 d="xz'341?yaml'341?scan'341,208,341";a="734153114"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 02 Feb 2023 18:10:49 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 18:10:48 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 18:10:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 18:10:48 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 18:10:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5jgi2sOv69qB6Ln1dkB9Af9AR0c6GS97kdTL8xLCD+i3Wbf7CGaAh4kfzPoO9ta/56i3yt6cpeiIhfGq1rBrofoAw5y/GYs+TX1kPky0qfv1Mpm3Du9la9zncuUxQdr6yN5OMh07u8SzD9Tnfhs1ansSNo54RqAeswfcfE9lfLQUHY3yvbKPvxeLN06iHlEaXFFIw+0Sp1PMYxpCWljUB1h8N9OBAMyjiEqfpyF7Obp18Nq32Gkzu+sCvwYByqy7rPF4dJoOrvH6CTv1dQjlHz2g858vg2hWnjQv0o4EKrJFc6LZMaacYSMIZVIIbBnjBCItgIvMgwIXaDV1KScng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i5l4FpOvnlJ2t2PxhafRy8gDSLzMJJNAaR/o9ANmvsA=;
 b=g2LFYlpa/pbvyby0+AxZzVHbstKPsT852LjMfOFUKqpg7LGT8+f2bP4jpH5phEzvzClRWH/qTXjXqvGnBWDeIeSacGJ4kzY3RSd1fn3H3MljFwJSGimXk7A6Id1G26BP4wA1ZwrwfBySbNpJDyNu49LXdo6Fqlv+ob9J92h/5vc34kUvSiuQATfb8zYVitmJQfI7XMWyfT6Ez1aQiutoRNdknXcZQc8MfmAqAVMBM3gSOPaxqun5zM8Ur0BNCIZ5vTwWXi64DGMY6N792BabiOo02o3cBlIDmQClwRJDpw0YX6yX65OgtWaVxAvl7m7DhHgIZ+IJ8hG2gHiWi8TrSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6392.namprd11.prod.outlook.com (2603:10b6:930:37::15)
 by DM4PR11MB6191.namprd11.prod.outlook.com (2603:10b6:8:ac::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Fri, 3 Feb
 2023 02:10:38 +0000
Received: from CY5PR11MB6392.namprd11.prod.outlook.com
 ([fe80::30e3:a7ab:35ba:93bb]) by CY5PR11MB6392.namprd11.prod.outlook.com
 ([fe80::30e3:a7ab:35ba:93bb%7]) with mapi id 15.20.6064.028; Fri, 3 Feb 2023
 02:10:38 +0000
Date: Fri, 3 Feb 2023 10:08:02 +0800
From: kernel test robot <yujie.liu@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <202302030918.58d54238-yujie.liu@intel.com>
Content-Type: multipart/mixed; boundary="unaw5JzaqjSEzDuB"
Content-Disposition: inline
In-Reply-To: <20230124091046.2500682-1-jouni.hogander@intel.com>
X-ClientProxiedBy: SG2PR06CA0195.apcprd06.prod.outlook.com (2603:1096:4:1::27)
 To CY5PR11MB6392.namprd11.prod.outlook.com
 (2603:10b6:930:37::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6392:EE_|DM4PR11MB6191:EE_
X-MS-Office365-Filtering-Correlation-Id: e9d09b1b-f657-403c-779a-08db058bd712
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KgBzk8kpLtBsY1Hr2K1FZRoYPaL8BZD5GWKaVjlSNZCB5lvjEuYuRmIbMu8cjAphTMlQNfwXelDPA0JM+clOhOePfVLWoZ5kSy18HyUNdWgBdt2uln0g/vav7CWKJxjcfxKN0fkKYC2uEEgm0XZNQD/nxrW2blDxrGxBIgCK1I+ZHCco7/5ZYTKsngu0sse0ExI1vJVKBzfWtz2WJta4HuGVbTj+Tn0OdDoqXVwfdK7AwpcQKYwzo+syFdtRUWBE9/7IrhIRd+rOTWS1cC068K4Af9WLp4rjikLZhzepDgvlaC1BG1LhMSer8hYM1a8IdVPgECDbbU1AomytX9ChJASR4yFBFPxLMubJDzRhHYof8U7XNdWka436fWu9D2rvpZ2qCIBRG1jef7++9Vh2fUZmmTw9rIbSc9/2otDeUlytAM8jg8Fp8wNwtw2s5Bc7NtNiOvEa3FLOlCQS6sKgU47qQ4hLlt4aqzv582GUUr3MdrgLwna3haf4mekyYi+dsb8Bb3SzCM/3bXBrwbFZMPcm7tQ7A1kMrtcXJXYvPAG27Vn6+cFCvrzT3YEM1gTVvJRzUg2wToNYsQM28u8z70HQwPArOsbcLcSysWMbO6z9JnoViDPqwJnt1euVYvDDmffvGYBRiRD4WYRQWBaCkCxzYtBRnpB1QGIfCt4LFGj2RENooDj9esBMSc6pbx4yLLhSgZX/z0rpKg+vk3veJ1BU3T0abawZsGoGhcfYUjMil8WALXEIGeN6Xs8Z/u8S3ijjUiS445A0wciPCav9/g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6392.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(396003)(366004)(376002)(39860400002)(451199018)(38100700002)(36756003)(86362001)(6666004)(8676002)(66946007)(66476007)(6486002)(66556008)(54906003)(37006003)(8936002)(6636002)(4326008)(316002)(6862004)(235185007)(41300700001)(5660300002)(478600001)(30864003)(2906002)(82960400001)(1076003)(6506007)(6512007)(44144004)(26005)(21490400003)(966005)(66574015)(83380400001)(2616005)(186003)(2700100001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D7lguoBGY3XGQykAgTcPQP6f5AooVWU427m7/20TnX3ocYNyW/7d+YnP50I1?=
 =?us-ascii?Q?7OgNtdhXm94M95LfaNBcC4QjGI4V06+9GlVSulW7STEffrCyHlYu9IOLMao2?=
 =?us-ascii?Q?xWwzDufV1vKUSryedUTdvKhg1aacZY0TbzyFcHYDAm64tHqAVfU7GTlwIISi?=
 =?us-ascii?Q?gCfwof9Q59lRnGTNwhLs5HfSV4pFCt2q9tSzXSa0Of3t0enKk5lOtBjhmyuj?=
 =?us-ascii?Q?ab6qN/vme7ZemDf45VkHR5BkYZsVuthsxBe/xqnw/sgqUWbLGdNJaUEYYUsg?=
 =?us-ascii?Q?mMrdWxPprtba6QlkJMsVt1Ub0IEAdWbuEoiuTUcas7loP0EqLgxghhzEt7fa?=
 =?us-ascii?Q?2ckqLdTMnZZPQ4Q5llnlG598LOQkRUBbUbSW7ldBXo36ZpmcL0U4+T32p6pf?=
 =?us-ascii?Q?oZIgFf02birqnb1KFC3U0dpd1m8xakWOhpInjpRlvoUczxUKnbpZ3oB95OS0?=
 =?us-ascii?Q?vPS6iVyY/8tuSGLkxTiuHES7P36nR+KVZBQxyQ+G4tesPaIMQnNtDv54RVHN?=
 =?us-ascii?Q?eWKidWERv4Ip3bmA+WZWUSsYpPVtT6kPfhPg+zc2Org9VLrphKniwAMw4+UN?=
 =?us-ascii?Q?oWU40GNDAsYQ4s3MaRWBeYhRb7HXiCFE8kLi3MZFvBu5PTi29h+eirVmQKUP?=
 =?us-ascii?Q?iblo772XFyGNwHKwe+DiK4RzhVy12dASRKipgWXTqRSBn9ltrGfqxLGNbXwj?=
 =?us-ascii?Q?7pZOpHA+9RfxZAtnZD1AAN36nudeSDF2OWJehTcUd0FtPvQQcjfbUbPrjJBQ?=
 =?us-ascii?Q?6z1GjyprbAICFgHk5YLXdbw3Xak26dI0chq92IG8OvW/BadWeZktVnJ7yHFf?=
 =?us-ascii?Q?6YP2JarS8YiSt7r9PfaWEFdYG5aLxNla602EPuO8RA+TUAk7ifaOeOTTuFaC?=
 =?us-ascii?Q?Ojfm3HtCIA2PmbiMz5RRk/CpxrBNUoq7biWGMGeMEwa7qEtp3BIo0sg0AbPE?=
 =?us-ascii?Q?SHpAHIg+Oc3OKYGlTdToh7osFvWFIQ5TWiFzb4BYuiAH82xxQEb7NSrkdXKt?=
 =?us-ascii?Q?sJMuzoRv8RhqO6n4puwysCUYalXml0dOzDofyrP+m9KS0S1y11USZqVFxf1h?=
 =?us-ascii?Q?KiOHvUUIRhW87toE87EenVJ48z9LJV4RIp3eWXPum4m2TvKMbMT4Z+p6cri1?=
 =?us-ascii?Q?pbTvqfBYJQ20lQXKFTdy4+DEDt0KIPU2Qw0sCpAnVjmAGIodmfZvJht4giON?=
 =?us-ascii?Q?YCBXgZeYsHDXcn1bPDTbls5XxSa4XNzzAJRel1ZQMUgbH47KyxdyTTO6zTrD?=
 =?us-ascii?Q?qaOzpm+luTCY5iGiBNfYGUDD5D+xX2mK7jCFtmXRiJPlKW6F721bR6PIp6gV?=
 =?us-ascii?Q?kwBbYw/FelyPupF+MmM1aCKzUzZcbXqnAQhDv6ZBwNAu/dqSOZBUhoM167jG?=
 =?us-ascii?Q?qBZ9c5VjlIU2T8BTbSAR3OFjoGUQE98JdOvOklty+c97/+doikrprfVe7S10?=
 =?us-ascii?Q?xNKs4lfmcrcEwrJIY0oWkiR844oODsgsGQoOQvUAQZdPWqpTta4aYlYTXOG1?=
 =?us-ascii?Q?4mG6xBtJEc0eR+LfaEQj48ZOOL14LSdV/120XXez+NaSF3QaExwNkRsucO0h?=
 =?us-ascii?Q?HPJ1bTlNZ6xkArGG9hzaTPhq1U2C2rScn/t2BmvJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9d09b1b-f657-403c-779a-08db058bd712
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6392.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 02:10:37.9815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xkVFYmlfsi+8eCwj0yHzcBoA7hXu0bwcSSvrmW2G11eYpDI4NdAYEdVYr0Bp9WXwM8Q0W1cEQkialFAwnFRdxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6191
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement wrappers for
 callbacks used by fbcon
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, oe-lkp@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--unaw5JzaqjSEzDuB
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Greeting,

FYI, we noticed BUG:sleeping_function_called_from_invalid_context_at_kernel/locking/mutex.c due to commit (built with gcc-11):

commit: 60177838fe0528a3be445b18883191256c548e6b ("[Intel-gfx] [PATCH] drm/i915/fbdev: Implement wrappers for callbacks used by fbcon")
url: https://github.com/intel-lab-lkp/linux/commits/Jouni-H-gander/drm-i915-fbdev-Implement-wrappers-for-callbacks-used-by-fbcon/20230124-171233
base: git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link: https://lore.kernel.org/all/20230124091046.2500682-1-jouni.hogander@intel.com/
patch subject: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement wrappers for callbacks used by fbcon

in testcase: igt
version: igt-x86_64-a978df79-1_20230128
with following parameters:

	group: group-20

on test machine: 20 threads 1 sockets (Commet Lake) with 16G memory

caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):


user  :notice: [   52.579833] i915_vma_resource    126    126    384   42    4 : tunables    0    0    0 : slabdata      3      3      0
user  :notice: [   52.602229] i915_vma             126    126    768   42    8 : tunables    0    0    0 : slabdata      3      3      0
kern  :info  : [   52.615934] fbcon: i915drmfb (fb0) is primary device
kern  :info  : [   52.616084] Console: switching to colour frame buffer device 240x67
user  :notice: [   52.617420] i915_priolist        128    128     64   64    1 : tunables    0    0    0 : slabdata      2      2      0
kern  :info  : [   52.617825] i915 0000:00:02.0: [drm] Reducing the compressed framebuffer size. This may lead to less power savings than a non-reduced-size. Try to increase stolen memory size if available in BIOS.
user  :notice: [   52.618848] i915_dependency        0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
kern  :info  : [   52.624256] i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device
kern  :err   : [   52.644689] BUG: sleeping function called from invalid context at kernel/locking/mutex.c:1099
kern  :err   : [   52.644691] in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 423, name: sed
kern  :err   : [   52.644693] preempt_count: 2, expected: 0
kern  :warn  : [   52.644694] CPU: 12 PID: 423 Comm: sed Not tainted 6.2.0-rc5-00875-g60177838fe05 #9
kern  :warn  : [   52.644697] Hardware name: Intel Corporation CometLake Client Platform/CometLake S UDIMM (ERB/CRB), BIOS CMLSFWR1.R00.2212.D00.2104290922 04/29/2021
kern  :warn  : [   52.644698] Call Trace:
kern  :warn  : [   52.644699]  <TASK>
kern :warn : [   52.644700] dump_stack_lvl (kbuild/src/x86_64-3/lib/dump_stack.c:107 (discriminator 1)) 
kern :warn : [   52.644704] __might_resched.cold (kbuild/src/x86_64-3/kernel/sched/core.c:10037) 
kern :warn : [   52.644707] ? kasan_set_track (kbuild/src/x86_64-3/mm/kasan/common.c:52) 
kern :warn : [   52.644710] ww_mutex_lock (kbuild/src/x86_64-3/kernel/locking/mutex.c:1099) 
kern :warn : [   52.644713] ? __ww_mutex_lock_slowpath (kbuild/src/x86_64-3/kernel/locking/mutex.c:1098) 
kern :warn : [   52.644715] ? fill_ptr_key (kbuild/src/x86_64-3/lib/vsprintf.c:2504) 
kern :warn : [   52.644717] ? vfs_write (kbuild/src/x86_64-3/include/linux/fs.h:2189 kbuild/src/x86_64-3/fs/read_write.c:491 kbuild/src/x86_64-3/fs/read_write.c:584) 
kern :warn : [   52.644719] i915_gem_object_flush_if_display (kbuild/src/x86_64-3/drivers/gpu/drm/i915/gem/i915_gem_object.h:176 kbuild/src/x86_64-3/drivers/gpu/drm/i915/gem/i915_gem_object.h:187 kbuild/src/x86_64-3/drivers/gpu/drm/i915/gem/i915_gem_domain.c:106) i915
kern :warn : [   52.644805] intel_user_framebuffer_dirty (kbuild/src/x86_64-3/drivers/gpu/drm/i915/display/intel_display_types.h:2062 (discriminator 1) kbuild/src/x86_64-3/drivers/gpu/drm/i915/display/intel_fb.c:1865 (discriminator 1)) i915
kern :warn : [   52.644890] soft_cursor (kbuild/src/x86_64-3/drivers/video/fbdev/core/softcursor.c:75) 
kern :warn : [   52.644893] ? desc_read_finalized_seq (kbuild/src/x86_64-3/kernel/printk/printk_ringbuffer.c:1770) 
kern :warn : [   52.644897] bit_cursor (kbuild/src/x86_64-3/drivers/video/fbdev/core/bitblit.c:377) 
kern :warn : [   52.644899] ? skb_csum_hwoffload_help (kbuild/src/x86_64-3/net/core/dev.c:3329) 
kern :warn : [   52.644902] ? bit_putcs (kbuild/src/x86_64-3/drivers/video/fbdev/core/bitblit.c:238) 
kern :warn : [   52.644903] ? copy_data (kbuild/src/x86_64-3/kernel/printk/printk_ringbuffer.c:1798) 
kern :warn : [   52.644905] ? __kasan_kmalloc (kbuild/src/x86_64-3/mm/kasan/common.c:381) 
kern :warn : [   52.644907] ? get_color (kbuild/src/x86_64-3/drivers/video/fbdev/core/fbcon.c:287) 
kern :warn : [   52.644909] ? bit_putcs (kbuild/src/x86_64-3/drivers/video/fbdev/core/bitblit.c:238) 
kern :warn : [   52.644911] ? fbcon_cursor (kbuild/src/x86_64-3/drivers/video/fbdev/core/fbcon.c:1325) 
kern :warn : [   52.644913] hide_cursor (kbuild/src/x86_64-3/drivers/tty/vt/vt.c:893 kbuild/src/x86_64-3/drivers/tty/vt/vt.c:908) 
kern :warn : [   52.644915] vt_console_print (kbuild/src/x86_64-3/drivers/tty/vt/vt.c:3108) 
kern :warn : [   52.644917] ? find_first_fitting_seq (kbuild/src/x86_64-3/kernel/printk/printk.c:1415) 
kern :warn : [   52.644919] ? _raw_read_unlock_irqrestore (kbuild/src/x86_64-3/kernel/locking/spinlock.c:161) 
kern :warn : [   52.644922] ? lf (kbuild/src/x86_64-3/drivers/tty/vt/vt.c:3079) 
kern :warn : [   52.644924] ? _raw_spin_lock (kbuild/src/x86_64-3/arch/x86/include/asm/atomic.h:202 kbuild/src/x86_64-3/include/linux/atomic/atomic-instrumented.h:543 kbuild/src/x86_64-3/include/asm-generic/qspinlock.h:111 kbuild/src/x86_64-3/include/linux/spinlock.h:186 kbuild/src/x86_64-3/include/linux/spinlock_api_smp.h:134 kbuild/src/x86_64-3/kernel/locking/spinlock.c:154) 
kern :warn : [   52.644926] ? _raw_write_lock_irq (kbuild/src/x86_64-3/kernel/locking/spinlock.c:153) 
kern :warn : [   52.644928] ? prb_final_commit (kbuild/src/x86_64-3/kernel/printk/printk_ringbuffer.c:1939) 
kern :warn : [   52.644931] console_emit_next_record+0x2b5/0x6c0 
kern :warn : [   52.644933] ? devkmsg_read (kbuild/src/x86_64-3/kernel/printk/printk.c:2769) 
kern :warn : [   52.644936] ? printk_sprint (kbuild/src/x86_64-3/kernel/printk/printk.c:2208) 
kern :warn : [   52.644937] ? __kasan_kmalloc (kbuild/src/x86_64-3/mm/kasan/common.c:381) 
kern :warn : [   52.644939] ? devkmsg_write (kbuild/src/x86_64-3/include/linux/slab.h:584 kbuild/src/x86_64-3/kernel/printk/printk.c:762) 
kern :warn : [   52.644941] console_flush_all (kbuild/src/x86_64-3/kernel/printk/printk.c:2889) 
kern :warn : [   52.644943] console_unlock (kbuild/src/x86_64-3/kernel/printk/printk.c:2967) 
kern :warn : [   52.644945] ? console_flush_all (kbuild/src/x86_64-3/kernel/printk/printk.c:2939) 
kern :warn : [   52.644947] vprintk_emit (kbuild/src/x86_64-3/arch/x86/include/asm/preempt.h:85 kbuild/src/x86_64-3/kernel/printk/printk.c:2360) 
kern :warn : [   52.644950] devkmsg_emit+0xab/0xdc 
kern :warn : [   52.644952] ? suspend_console.cold (kbuild/src/x86_64-3/kernel/printk/printk.c:727) 
kern :warn : [   52.644954] ? check_heap_object (kbuild/src/x86_64-3/arch/x86/include/asm/bitops.h:207 kbuild/src/x86_64-3/arch/x86/include/asm/bitops.h:239 kbuild/src/x86_64-3/include/asm-generic/bitops/instrumented-non-atomic.h:142 kbuild/src/x86_64-3/include/linux/page-flags.h:485 kbuild/src/x86_64-3/mm/usercopy.c:194) 
kern :warn : [   52.644957] ? kasan_set_track (kbuild/src/x86_64-3/mm/kasan/common.c:52) 
kern :warn : [   52.644958] devkmsg_write.cold (kbuild/src/x86_64-3/kernel/printk/printk.c:797) 
kern :warn : [   52.644961] ? vprintk_default (kbuild/src/x86_64-3/kernel/printk/printk.c:740) 
kern :warn : [   52.644963] vfs_write (kbuild/src/x86_64-3/include/linux/fs.h:2189 kbuild/src/x86_64-3/fs/read_write.c:491 kbuild/src/x86_64-3/fs/read_write.c:584) 
kern :warn : [   52.644964] ? kernel_write (kbuild/src/x86_64-3/fs/read_write.c:565) 
kern :warn : [   52.644966] ? rcu_report_qs_rdp (kbuild/src/x86_64-3/kernel/rcu/tree.c:2050) 
kern :warn : [   52.644968] ? __fget_light (kbuild/src/x86_64-3/include/linux/atomic/atomic-arch-fallback.h:227 kbuild/src/x86_64-3/include/linux/atomic/atomic-instrumented.h:35 kbuild/src/x86_64-3/fs/file.c:1015) 
kern :warn : [   52.644971] ksys_write (kbuild/src/x86_64-3/fs/read_write.c:637) 
kern :warn : [   52.644972] ? __ia32_sys_read (kbuild/src/x86_64-3/fs/read_write.c:627) 
kern :warn : [   52.644974] do_syscall_64 (kbuild/src/x86_64-3/arch/x86/entry/common.c:50 kbuild/src/x86_64-3/arch/x86/entry/common.c:80) 
kern :warn : [   52.644976] entry_SYSCALL_64_after_hwframe (kbuild/src/x86_64-3/arch/x86/entry/entry_64.S:120) 
kern  :warn  : [   52.644978] RIP: 0033:0x7fe4a9bd5833
kern :warn : [ 52.644981] Code: 8b 15 61 26 0e 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 64 8b 04 25 18 00 00 00 85 c0 75 14 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 55 c3 0f 1f 40 00 48 83 ec 28 48 89 54 24 18
All code
========
   0:	8b 15 61 26 0e 00    	mov    0xe2661(%rip),%edx        # 0xe2667
   6:	f7 d8                	neg    %eax
   8:	64 89 02             	mov    %eax,%fs:(%rdx)
   b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  12:	eb b7                	jmp    0xffffffffffffffcb
  14:	0f 1f 00             	nopl   (%rax)
  17:	64 8b 04 25 18 00 00 	mov    %fs:0x18,%eax
  1e:	00 
  1f:	85 c0                	test   %eax,%eax
  21:	75 14                	jne    0x37
  23:	b8 01 00 00 00       	mov    $0x1,%eax
  28:	0f 05                	syscall 
  2a:*	48 3d 00 f0 ff ff    	cmp    $0xfffffffffffff000,%rax		<-- trapping instruction
  30:	77 55                	ja     0x87
  32:	c3                   	retq   
  33:	0f 1f 40 00          	nopl   0x0(%rax)
  37:	48 83 ec 28          	sub    $0x28,%rsp
  3b:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)

Code starting with the faulting instruction
===========================================
   0:	48 3d 00 f0 ff ff    	cmp    $0xfffffffffffff000,%rax
   6:	77 55                	ja     0x5d
   8:	c3                   	retq   
   9:	0f 1f 40 00          	nopl   0x0(%rax)
   d:	48 83 ec 28          	sub    $0x28,%rsp
  11:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
kern  :warn  : [   52.644982] RSP: 002b:00007ffca32f1068 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
kern  :warn  : [   52.644985] RAX: ffffffffffffffda RBX: 0000000000000001 RCX: 00007fe4a9bd5833
kern  :warn  : [   52.644986] RDX: 0000000000000001 RSI: 000056242854c448 RDI: 0000000000000001
kern  :warn  : [   52.644987] RBP: 000056242854c448 R08: 00005624301bc090 R09: 0000000000000000
kern  :warn  : [   52.644988] R10: 000000000000006a R11: 0000000000000246 R12: 0000000000000001
kern  :warn  : [   52.644989] R13: 00007fe4a9cb96a0 R14: 0000000000000001 R15: 00007fe4a9cb4880
kern  :warn  : [   52.644991]  </TASK>


If you fix the issue, kindly add following tag
| Reported-by: kernel test robot <yujie.liu@intel.com>
| Link: https://lore.kernel.org/oe-lkp/202302030918.58d54238-yujie.liu@intel.com


To reproduce:

        git clone https://github.com/intel/lkp-tests.git
        cd lkp-tests
        sudo bin/lkp install job.yaml           # job file is attached in this email
        bin/lkp split-job --compatible job.yaml # generate the yaml file for lkp run
        sudo bin/lkp run generated-yaml-file

        # if come across any failure that blocks the test,
        # please remove ~/.lkp and /lkp dir to run from a clean state.


-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

--unaw5JzaqjSEzDuB
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment;
	filename="config-6.2.0-rc5-00875-g60177838fe05"

#
# Automatically generated file; DO NOT EDIT.
# Linux/x86_64 6.2.0-rc5 Kernel Configuration
#
CONFIG_CC_VERSION_TEXT="gcc-11 (Debian 11.3.0-8) 11.3.0"
CONFIG_CC_IS_GCC=y
CONFIG_GCC_VERSION=110300
CONFIG_CLANG_VERSION=0
CONFIG_AS_IS_GNU=y
CONFIG_AS_VERSION=23990
CONFIG_LD_IS_BFD=y
CONFIG_LD_VERSION=23990
CONFIG_LLD_VERSION=0
CONFIG_CC_CAN_LINK=y
CONFIG_CC_CAN_LINK_STATIC=y
CONFIG_CC_HAS_ASM_GOTO_OUTPUT=y
CONFIG_CC_HAS_ASM_GOTO_TIED_OUTPUT=y
CONFIG_CC_HAS_ASM_INLINE=y
CONFIG_CC_HAS_NO_PROFILE_FN_ATTR=y
CONFIG_PAHOLE_VERSION=123
CONFIG_CONSTRUCTORS=y
CONFIG_IRQ_WORK=y
CONFIG_BUILDTIME_TABLE_SORT=y
CONFIG_THREAD_INFO_IN_TASK=y

#
# General setup
#
CONFIG_INIT_ENV_ARG_LIMIT=32
# CONFIG_COMPILE_TEST is not set
# CONFIG_WERROR is not set
CONFIG_LOCALVERSION=""
CONFIG_LOCALVERSION_AUTO=y
CONFIG_BUILD_SALT=""
CONFIG_HAVE_KERNEL_GZIP=y
CONFIG_HAVE_KERNEL_BZIP2=y
CONFIG_HAVE_KERNEL_LZMA=y
CONFIG_HAVE_KERNEL_XZ=y
CONFIG_HAVE_KERNEL_LZO=y
CONFIG_HAVE_KERNEL_LZ4=y
CONFIG_HAVE_KERNEL_ZSTD=y
CONFIG_KERNEL_GZIP=y
# CONFIG_KERNEL_BZIP2 is not set
# CONFIG_KERNEL_LZMA is not set
# CONFIG_KERNEL_XZ is not set
# CONFIG_KERNEL_LZO is not set
# CONFIG_KERNEL_LZ4 is not set
# CONFIG_KERNEL_ZSTD is not set
CONFIG_DEFAULT_INIT=""
CONFIG_DEFAULT_HOSTNAME="(none)"
CONFIG_SYSVIPC=y
CONFIG_SYSVIPC_SYSCTL=y
CONFIG_SYSVIPC_COMPAT=y
CONFIG_POSIX_MQUEUE=y
CONFIG_POSIX_MQUEUE_SYSCTL=y
CONFIG_WATCH_QUEUE=y
CONFIG_CROSS_MEMORY_ATTACH=y
# CONFIG_USELIB is not set
CONFIG_AUDIT=y
CONFIG_HAVE_ARCH_AUDITSYSCALL=y
CONFIG_AUDITSYSCALL=y

#
# IRQ subsystem
#
CONFIG_GENERIC_IRQ_PROBE=y
CONFIG_GENERIC_IRQ_SHOW=y
CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
CONFIG_GENERIC_PENDING_IRQ=y
CONFIG_GENERIC_IRQ_MIGRATION=y
CONFIG_GENERIC_IRQ_INJECTION=y
CONFIG_HARDIRQS_SW_RESEND=y
CONFIG_IRQ_DOMAIN=y
CONFIG_IRQ_DOMAIN_HIERARCHY=y
CONFIG_GENERIC_MSI_IRQ=y
CONFIG_IRQ_MSI_IOMMU=y
CONFIG_GENERIC_IRQ_MATRIX_ALLOCATOR=y
CONFIG_GENERIC_IRQ_RESERVATION_MODE=y
CONFIG_IRQ_FORCED_THREADING=y
CONFIG_SPARSE_IRQ=y
# CONFIG_GENERIC_IRQ_DEBUGFS is not set
# end of IRQ subsystem

CONFIG_CLOCKSOURCE_WATCHDOG=y
CONFIG_ARCH_CLOCKSOURCE_INIT=y
CONFIG_CLOCKSOURCE_VALIDATE_LAST_CYCLE=y
CONFIG_GENERIC_TIME_VSYSCALL=y
CONFIG_GENERIC_CLOCKEVENTS=y
CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
CONFIG_GENERIC_CLOCKEVENTS_MIN_ADJUST=y
CONFIG_GENERIC_CMOS_UPDATE=y
CONFIG_HAVE_POSIX_CPU_TIMERS_TASK_WORK=y
CONFIG_POSIX_CPU_TIMERS_TASK_WORK=y
CONFIG_CONTEXT_TRACKING=y
CONFIG_CONTEXT_TRACKING_IDLE=y

#
# Timers subsystem
#
CONFIG_TICK_ONESHOT=y
CONFIG_NO_HZ_COMMON=y
# CONFIG_HZ_PERIODIC is not set
# CONFIG_NO_HZ_IDLE is not set
CONFIG_NO_HZ_FULL=y
CONFIG_CONTEXT_TRACKING_USER=y
# CONFIG_CONTEXT_TRACKING_USER_FORCE is not set
CONFIG_NO_HZ=y
CONFIG_HIGH_RES_TIMERS=y
CONFIG_CLOCKSOURCE_WATCHDOG_MAX_SKEW_US=100
# end of Timers subsystem

CONFIG_BPF=y
CONFIG_HAVE_EBPF_JIT=y
CONFIG_ARCH_WANT_DEFAULT_BPF_JIT=y

#
# BPF subsystem
#
CONFIG_BPF_SYSCALL=y
CONFIG_BPF_JIT=y
CONFIG_BPF_JIT_ALWAYS_ON=y
CONFIG_BPF_JIT_DEFAULT_ON=y
CONFIG_BPF_UNPRIV_DEFAULT_OFF=y
# CONFIG_BPF_PRELOAD is not set
# CONFIG_BPF_LSM is not set
# end of BPF subsystem

CONFIG_PREEMPT_VOLUNTARY_BUILD=y
# CONFIG_PREEMPT_NONE is not set
CONFIG_PREEMPT_VOLUNTARY=y
# CONFIG_PREEMPT is not set
CONFIG_PREEMPT_COUNT=y
# CONFIG_PREEMPT_DYNAMIC is not set
# CONFIG_SCHED_CORE is not set

#
# CPU/Task time and stats accounting
#
CONFIG_VIRT_CPU_ACCOUNTING=y
CONFIG_VIRT_CPU_ACCOUNTING_GEN=y
CONFIG_IRQ_TIME_ACCOUNTING=y
CONFIG_HAVE_SCHED_AVG_IRQ=y
CONFIG_BSD_PROCESS_ACCT=y
CONFIG_BSD_PROCESS_ACCT_V3=y
CONFIG_TASKSTATS=y
CONFIG_TASK_DELAY_ACCT=y
CONFIG_TASK_XACCT=y
CONFIG_TASK_IO_ACCOUNTING=y
# CONFIG_PSI is not set
# end of CPU/Task time and stats accounting

CONFIG_CPU_ISOLATION=y

#
# RCU Subsystem
#
CONFIG_TREE_RCU=y
CONFIG_RCU_EXPERT=y
CONFIG_SRCU=y
CONFIG_TREE_SRCU=y
CONFIG_TASKS_RCU_GENERIC=y
CONFIG_FORCE_TASKS_RCU=y
CONFIG_TASKS_RCU=y
# CONFIG_FORCE_TASKS_RUDE_RCU is not set
CONFIG_TASKS_RUDE_RCU=y
CONFIG_FORCE_TASKS_TRACE_RCU=y
CONFIG_TASKS_TRACE_RCU=y
CONFIG_RCU_STALL_COMMON=y
CONFIG_RCU_NEED_SEGCBLIST=y
CONFIG_RCU_FANOUT=64
CONFIG_RCU_FANOUT_LEAF=16
CONFIG_RCU_NOCB_CPU=y
# CONFIG_RCU_NOCB_CPU_DEFAULT_ALL is not set
# CONFIG_TASKS_TRACE_RCU_READ_MB is not set
# CONFIG_RCU_LAZY is not set
# end of RCU Subsystem

CONFIG_IKCONFIG=y
CONFIG_IKCONFIG_PROC=y
# CONFIG_IKHEADERS is not set
CONFIG_LOG_BUF_SHIFT=20
CONFIG_LOG_CPU_MAX_BUF_SHIFT=12
CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=13
# CONFIG_PRINTK_INDEX is not set
CONFIG_HAVE_UNSTABLE_SCHED_CLOCK=y

#
# Scheduler features
#
# CONFIG_UCLAMP_TASK is not set
# end of Scheduler features

CONFIG_ARCH_SUPPORTS_NUMA_BALANCING=y
CONFIG_ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH=y
CONFIG_CC_HAS_INT128=y
CONFIG_CC_IMPLICIT_FALLTHROUGH="-Wimplicit-fallthrough=5"
CONFIG_GCC11_NO_ARRAY_BOUNDS=y
CONFIG_GCC12_NO_ARRAY_BOUNDS=y
CONFIG_CC_NO_ARRAY_BOUNDS=y
CONFIG_ARCH_SUPPORTS_INT128=y
CONFIG_NUMA_BALANCING=y
CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=y
CONFIG_CGROUPS=y
CONFIG_PAGE_COUNTER=y
# CONFIG_CGROUP_FAVOR_DYNMODS is not set
CONFIG_MEMCG=y
CONFIG_MEMCG_KMEM=y
CONFIG_BLK_CGROUP=y
CONFIG_CGROUP_WRITEBACK=y
CONFIG_CGROUP_SCHED=y
CONFIG_FAIR_GROUP_SCHED=y
CONFIG_CFS_BANDWIDTH=y
CONFIG_RT_GROUP_SCHED=y
CONFIG_CGROUP_PIDS=y
CONFIG_CGROUP_RDMA=y
CONFIG_CGROUP_FREEZER=y
CONFIG_CGROUP_HUGETLB=y
CONFIG_CPUSETS=y
CONFIG_PROC_PID_CPUSET=y
CONFIG_CGROUP_DEVICE=y
CONFIG_CGROUP_CPUACCT=y
CONFIG_CGROUP_PERF=y
# CONFIG_CGROUP_BPF is not set
# CONFIG_CGROUP_MISC is not set
# CONFIG_CGROUP_DEBUG is not set
CONFIG_SOCK_CGROUP_DATA=y
CONFIG_NAMESPACES=y
CONFIG_UTS_NS=y
CONFIG_TIME_NS=y
CONFIG_IPC_NS=y
CONFIG_USER_NS=y
CONFIG_PID_NS=y
CONFIG_NET_NS=y
CONFIG_CHECKPOINT_RESTORE=y
CONFIG_SCHED_AUTOGROUP=y
# CONFIG_SYSFS_DEPRECATED is not set
CONFIG_RELAY=y
CONFIG_BLK_DEV_INITRD=y
CONFIG_INITRAMFS_SOURCE=""
CONFIG_RD_GZIP=y
CONFIG_RD_BZIP2=y
CONFIG_RD_LZMA=y
CONFIG_RD_XZ=y
CONFIG_RD_LZO=y
CONFIG_RD_LZ4=y
CONFIG_RD_ZSTD=y
# CONFIG_BOOT_CONFIG is not set
CONFIG_INITRAMFS_PRESERVE_MTIME=y
CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
CONFIG_LD_ORPHAN_WARN=y
CONFIG_LD_ORPHAN_WARN_LEVEL="warn"
CONFIG_SYSCTL=y
CONFIG_HAVE_UID16=y
CONFIG_SYSCTL_EXCEPTION_TRACE=y
CONFIG_HAVE_PCSPKR_PLATFORM=y
CONFIG_EXPERT=y
CONFIG_UID16=y
CONFIG_MULTIUSER=y
CONFIG_SGETMASK_SYSCALL=y
CONFIG_SYSFS_SYSCALL=y
CONFIG_FHANDLE=y
CONFIG_POSIX_TIMERS=y
CONFIG_PRINTK=y
CONFIG_BUG=y
CONFIG_ELF_CORE=y
CONFIG_PCSPKR_PLATFORM=y
CONFIG_BASE_FULL=y
CONFIG_FUTEX=y
CONFIG_FUTEX_PI=y
CONFIG_EPOLL=y
CONFIG_SIGNALFD=y
CONFIG_TIMERFD=y
CONFIG_EVENTFD=y
CONFIG_SHMEM=y
CONFIG_AIO=y
CONFIG_IO_URING=y
CONFIG_ADVISE_SYSCALLS=y
CONFIG_MEMBARRIER=y
CONFIG_KALLSYMS=y
# CONFIG_KALLSYMS_SELFTEST is not set
CONFIG_KALLSYMS_ALL=y
CONFIG_KALLSYMS_ABSOLUTE_PERCPU=y
CONFIG_KALLSYMS_BASE_RELATIVE=y
CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=y
CONFIG_KCMP=y
CONFIG_RSEQ=y
# CONFIG_DEBUG_RSEQ is not set
# CONFIG_EMBEDDED is not set
CONFIG_HAVE_PERF_EVENTS=y
CONFIG_GUEST_PERF_EVENTS=y
# CONFIG_PC104 is not set

#
# Kernel Performance Events And Counters
#
CONFIG_PERF_EVENTS=y
# CONFIG_DEBUG_PERF_USE_VMALLOC is not set
# end of Kernel Performance Events And Counters

CONFIG_SYSTEM_DATA_VERIFICATION=y
CONFIG_PROFILING=y
CONFIG_TRACEPOINTS=y
# end of General setup

CONFIG_64BIT=y
CONFIG_X86_64=y
CONFIG_X86=y
CONFIG_INSTRUCTION_DECODER=y
CONFIG_OUTPUT_FORMAT="elf64-x86-64"
CONFIG_LOCKDEP_SUPPORT=y
CONFIG_STACKTRACE_SUPPORT=y
CONFIG_MMU=y
CONFIG_ARCH_MMAP_RND_BITS_MIN=28
CONFIG_ARCH_MMAP_RND_BITS_MAX=32
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=8
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=16
CONFIG_GENERIC_ISA_DMA=y
CONFIG_GENERIC_CSUM=y
CONFIG_GENERIC_BUG=y
CONFIG_GENERIC_BUG_RELATIVE_POINTERS=y
CONFIG_ARCH_MAY_HAVE_PC_FDC=y
CONFIG_GENERIC_CALIBRATE_DELAY=y
CONFIG_ARCH_HAS_CPU_RELAX=y
CONFIG_ARCH_HIBERNATION_POSSIBLE=y
CONFIG_ARCH_SUSPEND_POSSIBLE=y
CONFIG_AUDIT_ARCH=y
CONFIG_KASAN_SHADOW_OFFSET=0xdffffc0000000000
CONFIG_HAVE_INTEL_TXT=y
CONFIG_X86_64_SMP=y
CONFIG_ARCH_SUPPORTS_UPROBES=y
CONFIG_FIX_EARLYCON_MEM=y
CONFIG_DYNAMIC_PHYSICAL_MASK=y
CONFIG_PGTABLE_LEVELS=5
CONFIG_CC_HAS_SANE_STACKPROTECTOR=y

#
# Processor type and features
#
CONFIG_SMP=y
CONFIG_X86_FEATURE_NAMES=y
CONFIG_X86_X2APIC=y
CONFIG_X86_MPPARSE=y
# CONFIG_GOLDFISH is not set
# CONFIG_X86_CPU_RESCTRL is not set
CONFIG_X86_EXTENDED_PLATFORM=y
# CONFIG_X86_NUMACHIP is not set
# CONFIG_X86_VSMP is not set
CONFIG_X86_UV=y
# CONFIG_X86_GOLDFISH is not set
# CONFIG_X86_INTEL_MID is not set
CONFIG_X86_INTEL_LPSS=y
# CONFIG_X86_AMD_PLATFORM_DEVICE is not set
CONFIG_IOSF_MBI=y
# CONFIG_IOSF_MBI_DEBUG is not set
CONFIG_X86_SUPPORTS_MEMORY_FAILURE=y
# CONFIG_SCHED_OMIT_FRAME_POINTER is not set
CONFIG_HYPERVISOR_GUEST=y
CONFIG_PARAVIRT=y
# CONFIG_PARAVIRT_DEBUG is not set
CONFIG_PARAVIRT_SPINLOCKS=y
CONFIG_X86_HV_CALLBACK_VECTOR=y
# CONFIG_XEN is not set
CONFIG_KVM_GUEST=y
CONFIG_ARCH_CPUIDLE_HALTPOLL=y
# CONFIG_PVH is not set
CONFIG_PARAVIRT_TIME_ACCOUNTING=y
CONFIG_PARAVIRT_CLOCK=y
# CONFIG_JAILHOUSE_GUEST is not set
# CONFIG_ACRN_GUEST is not set
CONFIG_INTEL_TDX_GUEST=y
# CONFIG_MK8 is not set
# CONFIG_MPSC is not set
# CONFIG_MCORE2 is not set
# CONFIG_MATOM is not set
CONFIG_GENERIC_CPU=y
CONFIG_X86_INTERNODE_CACHE_SHIFT=6
CONFIG_X86_L1_CACHE_SHIFT=6
CONFIG_X86_TSC=y
CONFIG_X86_CMPXCHG64=y
CONFIG_X86_CMOV=y
CONFIG_X86_MINIMUM_CPU_FAMILY=64
CONFIG_X86_DEBUGCTLMSR=y
CONFIG_IA32_FEAT_CTL=y
CONFIG_X86_VMX_FEATURE_NAMES=y
CONFIG_PROCESSOR_SELECT=y
CONFIG_CPU_SUP_INTEL=y
# CONFIG_CPU_SUP_AMD is not set
# CONFIG_CPU_SUP_HYGON is not set
# CONFIG_CPU_SUP_CENTAUR is not set
# CONFIG_CPU_SUP_ZHAOXIN is not set
CONFIG_HPET_TIMER=y
CONFIG_HPET_EMULATE_RTC=y
CONFIG_DMI=y
CONFIG_BOOT_VESA_SUPPORT=y
CONFIG_MAXSMP=y
CONFIG_NR_CPUS_RANGE_BEGIN=8192
CONFIG_NR_CPUS_RANGE_END=8192
CONFIG_NR_CPUS_DEFAULT=8192
CONFIG_NR_CPUS=8192
CONFIG_SCHED_CLUSTER=y
CONFIG_SCHED_SMT=y
CONFIG_SCHED_MC=y
CONFIG_SCHED_MC_PRIO=y
CONFIG_X86_LOCAL_APIC=y
CONFIG_X86_IO_APIC=y
CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS=y
CONFIG_X86_MCE=y
CONFIG_X86_MCELOG_LEGACY=y
CONFIG_X86_MCE_INTEL=y
CONFIG_X86_MCE_THRESHOLD=y
CONFIG_X86_MCE_INJECT=m

#
# Performance monitoring
#
CONFIG_PERF_EVENTS_INTEL_UNCORE=m
CONFIG_PERF_EVENTS_INTEL_RAPL=m
CONFIG_PERF_EVENTS_INTEL_CSTATE=m
# end of Performance monitoring

CONFIG_X86_16BIT=y
CONFIG_X86_ESPFIX64=y
CONFIG_X86_VSYSCALL_EMULATION=y
CONFIG_X86_IOPL_IOPERM=y
CONFIG_MICROCODE=y
CONFIG_MICROCODE_INTEL=y
CONFIG_MICROCODE_LATE_LOADING=y
CONFIG_X86_MSR=m
CONFIG_X86_CPUID=y
CONFIG_X86_5LEVEL=y
CONFIG_X86_DIRECT_GBPAGES=y
# CONFIG_X86_CPA_STATISTICS is not set
CONFIG_X86_MEM_ENCRYPT=y
CONFIG_NUMA=y
# CONFIG_AMD_NUMA is not set
CONFIG_X86_64_ACPI_NUMA=y
CONFIG_NUMA_EMU=y
CONFIG_NODES_SHIFT=10
CONFIG_ARCH_SPARSEMEM_ENABLE=y
CONFIG_ARCH_SPARSEMEM_DEFAULT=y
# CONFIG_ARCH_MEMORY_PROBE is not set
CONFIG_ARCH_PROC_KCORE_TEXT=y
CONFIG_ILLEGAL_POINTER_VALUE=0xdead000000000000
CONFIG_X86_PMEM_LEGACY_DEVICE=y
CONFIG_X86_PMEM_LEGACY=m
CONFIG_X86_CHECK_BIOS_CORRUPTION=y
# CONFIG_X86_BOOTPARAM_MEMORY_CORRUPTION_CHECK is not set
CONFIG_MTRR=y
CONFIG_MTRR_SANITIZER=y
CONFIG_MTRR_SANITIZER_ENABLE_DEFAULT=1
CONFIG_MTRR_SANITIZER_SPARE_REG_NR_DEFAULT=1
CONFIG_X86_PAT=y
CONFIG_ARCH_USES_PG_UNCACHED=y
CONFIG_X86_UMIP=y
CONFIG_CC_HAS_IBT=y
CONFIG_X86_KERNEL_IBT=y
CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS=y
# CONFIG_X86_INTEL_TSX_MODE_OFF is not set
# CONFIG_X86_INTEL_TSX_MODE_ON is not set
CONFIG_X86_INTEL_TSX_MODE_AUTO=y
# CONFIG_X86_SGX is not set
CONFIG_EFI=y
CONFIG_EFI_STUB=y
CONFIG_EFI_HANDOVER_PROTOCOL=y
CONFIG_EFI_MIXED=y
# CONFIG_EFI_FAKE_MEMMAP is not set
CONFIG_EFI_RUNTIME_MAP=y
# CONFIG_HZ_100 is not set
# CONFIG_HZ_250 is not set
# CONFIG_HZ_300 is not set
CONFIG_HZ_1000=y
CONFIG_HZ=1000
CONFIG_SCHED_HRTICK=y
CONFIG_KEXEC=y
CONFIG_KEXEC_FILE=y
CONFIG_ARCH_HAS_KEXEC_PURGATORY=y
# CONFIG_KEXEC_SIG is not set
CONFIG_CRASH_DUMP=y
CONFIG_KEXEC_JUMP=y
CONFIG_PHYSICAL_START=0x1000000
CONFIG_RELOCATABLE=y
# CONFIG_RANDOMIZE_BASE is not set
CONFIG_PHYSICAL_ALIGN=0x200000
CONFIG_DYNAMIC_MEMORY_LAYOUT=y
CONFIG_HOTPLUG_CPU=y
CONFIG_BOOTPARAM_HOTPLUG_CPU0=y
# CONFIG_DEBUG_HOTPLUG_CPU0 is not set
# CONFIG_COMPAT_VDSO is not set
CONFIG_LEGACY_VSYSCALL_XONLY=y
# CONFIG_LEGACY_VSYSCALL_NONE is not set
# CONFIG_CMDLINE_BOOL is not set
CONFIG_MODIFY_LDT_SYSCALL=y
# CONFIG_STRICT_SIGALTSTACK_SIZE is not set
CONFIG_HAVE_LIVEPATCH=y
CONFIG_LIVEPATCH=y
# end of Processor type and features

CONFIG_CC_HAS_SLS=y
CONFIG_CC_HAS_RETURN_THUNK=y
CONFIG_CC_HAS_ENTRY_PADDING=y
CONFIG_FUNCTION_PADDING_CFI=11
CONFIG_FUNCTION_PADDING_BYTES=16
CONFIG_SPECULATION_MITIGATIONS=y
CONFIG_PAGE_TABLE_ISOLATION=y
# CONFIG_RETPOLINE is not set
CONFIG_CPU_IBRS_ENTRY=y
# CONFIG_SLS is not set
CONFIG_ARCH_HAS_ADD_PAGES=y
CONFIG_ARCH_MHP_MEMMAP_ON_MEMORY_ENABLE=y

#
# Power management and ACPI options
#
CONFIG_ARCH_HIBERNATION_HEADER=y
CONFIG_SUSPEND=y
CONFIG_SUSPEND_FREEZER=y
# CONFIG_SUSPEND_SKIP_SYNC is not set
CONFIG_HIBERNATE_CALLBACKS=y
CONFIG_HIBERNATION=y
CONFIG_HIBERNATION_SNAPSHOT_DEV=y
CONFIG_PM_STD_PARTITION=""
CONFIG_PM_SLEEP=y
CONFIG_PM_SLEEP_SMP=y
# CONFIG_PM_AUTOSLEEP is not set
# CONFIG_PM_USERSPACE_AUTOSLEEP is not set
# CONFIG_PM_WAKELOCKS is not set
CONFIG_PM=y
CONFIG_PM_DEBUG=y
# CONFIG_PM_ADVANCED_DEBUG is not set
# CONFIG_PM_TEST_SUSPEND is not set
CONFIG_PM_SLEEP_DEBUG=y
# CONFIG_DPM_WATCHDOG is not set
# CONFIG_PM_TRACE_RTC is not set
CONFIG_PM_CLK=y
# CONFIG_WQ_POWER_EFFICIENT_DEFAULT is not set
# CONFIG_ENERGY_MODEL is not set
CONFIG_ARCH_SUPPORTS_ACPI=y
CONFIG_ACPI=y
CONFIG_ACPI_LEGACY_TABLES_LOOKUP=y
CONFIG_ARCH_MIGHT_HAVE_ACPI_PDC=y
CONFIG_ACPI_SYSTEM_POWER_STATES_SUPPORT=y
# CONFIG_ACPI_DEBUGGER is not set
CONFIG_ACPI_SPCR_TABLE=y
# CONFIG_ACPI_FPDT is not set
CONFIG_ACPI_LPIT=y
CONFIG_ACPI_SLEEP=y
CONFIG_ACPI_REV_OVERRIDE_POSSIBLE=y
CONFIG_ACPI_EC_DEBUGFS=m
CONFIG_ACPI_AC=y
CONFIG_ACPI_BATTERY=y
CONFIG_ACPI_BUTTON=y
CONFIG_ACPI_VIDEO=m
CONFIG_ACPI_FAN=y
CONFIG_ACPI_TAD=m
CONFIG_ACPI_DOCK=y
CONFIG_ACPI_CPU_FREQ_PSS=y
CONFIG_ACPI_PROCESSOR_CSTATE=y
CONFIG_ACPI_PROCESSOR_IDLE=y
CONFIG_ACPI_CPPC_LIB=y
CONFIG_ACPI_PROCESSOR=y
CONFIG_ACPI_IPMI=m
CONFIG_ACPI_HOTPLUG_CPU=y
CONFIG_ACPI_PROCESSOR_AGGREGATOR=m
CONFIG_ACPI_THERMAL=y
CONFIG_ACPI_PLATFORM_PROFILE=m
CONFIG_ARCH_HAS_ACPI_TABLE_UPGRADE=y
CONFIG_ACPI_TABLE_UPGRADE=y
# CONFIG_ACPI_DEBUG is not set
CONFIG_ACPI_PCI_SLOT=y
CONFIG_ACPI_CONTAINER=y
CONFIG_ACPI_HOTPLUG_MEMORY=y
CONFIG_ACPI_HOTPLUG_IOAPIC=y
CONFIG_ACPI_SBS=m
CONFIG_ACPI_HED=y
# CONFIG_ACPI_CUSTOM_METHOD is not set
CONFIG_ACPI_BGRT=y
# CONFIG_ACPI_REDUCED_HARDWARE_ONLY is not set
CONFIG_ACPI_NFIT=m
# CONFIG_NFIT_SECURITY_DEBUG is not set
CONFIG_ACPI_NUMA=y
# CONFIG_ACPI_HMAT is not set
CONFIG_HAVE_ACPI_APEI=y
CONFIG_HAVE_ACPI_APEI_NMI=y
CONFIG_ACPI_APEI=y
CONFIG_ACPI_APEI_GHES=y
CONFIG_ACPI_APEI_PCIEAER=y
CONFIG_ACPI_APEI_MEMORY_FAILURE=y
CONFIG_ACPI_APEI_EINJ=m
# CONFIG_ACPI_APEI_ERST_DEBUG is not set
# CONFIG_ACPI_DPTF is not set
CONFIG_ACPI_WATCHDOG=y
CONFIG_ACPI_EXTLOG=m
CONFIG_ACPI_ADXL=y
# CONFIG_ACPI_CONFIGFS is not set
# CONFIG_ACPI_PFRUT is not set
CONFIG_ACPI_PCC=y
# CONFIG_ACPI_FFH is not set
CONFIG_PMIC_OPREGION=y
CONFIG_ACPI_PRMT=y
CONFIG_X86_PM_TIMER=y

#
# CPU Frequency scaling
#
CONFIG_CPU_FREQ=y
CONFIG_CPU_FREQ_GOV_ATTR_SET=y
CONFIG_CPU_FREQ_GOV_COMMON=y
CONFIG_CPU_FREQ_STAT=y
CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE=y
# CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE is not set
# CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL is not set
CONFIG_CPU_FREQ_GOV_PERFORMANCE=y
CONFIG_CPU_FREQ_GOV_POWERSAVE=y
CONFIG_CPU_FREQ_GOV_USERSPACE=y
CONFIG_CPU_FREQ_GOV_ONDEMAND=y
CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y

#
# CPU frequency scaling drivers
#
CONFIG_X86_INTEL_PSTATE=y
# CONFIG_X86_PCC_CPUFREQ is not set
# CONFIG_X86_AMD_PSTATE is not set
# CONFIG_X86_AMD_PSTATE_UT is not set
CONFIG_X86_ACPI_CPUFREQ=m
# CONFIG_X86_POWERNOW_K8 is not set
# CONFIG_X86_SPEEDSTEP_CENTRINO is not set
CONFIG_X86_P4_CLOCKMOD=m

#
# shared options
#
CONFIG_X86_SPEEDSTEP_LIB=m
# end of CPU Frequency scaling

#
# CPU Idle
#
CONFIG_CPU_IDLE=y
# CONFIG_CPU_IDLE_GOV_LADDER is not set
CONFIG_CPU_IDLE_GOV_MENU=y
# CONFIG_CPU_IDLE_GOV_TEO is not set
# CONFIG_CPU_IDLE_GOV_HALTPOLL is not set
CONFIG_HALTPOLL_CPUIDLE=y
# end of CPU Idle

CONFIG_INTEL_IDLE=y
# end of Power management and ACPI options

#
# Bus options (PCI etc.)
#
CONFIG_PCI_DIRECT=y
CONFIG_PCI_MMCONFIG=y
CONFIG_MMCONF_FAM10H=y
# CONFIG_PCI_CNB20LE_QUIRK is not set
# CONFIG_ISA_BUS is not set
CONFIG_ISA_DMA_API=y
# end of Bus options (PCI etc.)

#
# Binary Emulations
#
CONFIG_IA32_EMULATION=y
# CONFIG_X86_X32_ABI is not set
CONFIG_COMPAT_32=y
CONFIG_COMPAT=y
CONFIG_COMPAT_FOR_U64_ALIGNMENT=y
# end of Binary Emulations

CONFIG_HAVE_KVM=y
CONFIG_HAVE_KVM_PFNCACHE=y
CONFIG_HAVE_KVM_IRQCHIP=y
CONFIG_HAVE_KVM_IRQFD=y
CONFIG_HAVE_KVM_IRQ_ROUTING=y
CONFIG_HAVE_KVM_DIRTY_RING=y
CONFIG_HAVE_KVM_DIRTY_RING_TSO=y
CONFIG_HAVE_KVM_DIRTY_RING_ACQ_REL=y
CONFIG_HAVE_KVM_EVENTFD=y
CONFIG_KVM_MMIO=y
CONFIG_KVM_ASYNC_PF=y
CONFIG_HAVE_KVM_MSI=y
CONFIG_HAVE_KVM_CPU_RELAX_INTERCEPT=y
CONFIG_KVM_VFIO=y
CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT=y
CONFIG_KVM_COMPAT=y
CONFIG_HAVE_KVM_IRQ_BYPASS=y
CONFIG_HAVE_KVM_NO_POLL=y
CONFIG_KVM_XFER_TO_GUEST_WORK=y
CONFIG_HAVE_KVM_PM_NOTIFIER=y
CONFIG_VIRTUALIZATION=y
CONFIG_KVM=m
# CONFIG_KVM_WERROR is not set
CONFIG_KVM_INTEL=m
# CONFIG_KVM_AMD is not set
CONFIG_KVM_SMM=y
# CONFIG_KVM_XEN is not set
CONFIG_AS_AVX512=y
CONFIG_AS_SHA1_NI=y
CONFIG_AS_SHA256_NI=y
CONFIG_AS_TPAUSE=y

#
# General architecture-dependent options
#
CONFIG_CRASH_CORE=y
CONFIG_KEXEC_CORE=y
CONFIG_HAVE_IMA_KEXEC=y
CONFIG_HOTPLUG_SMT=y
CONFIG_GENERIC_ENTRY=y
CONFIG_KPROBES=y
CONFIG_JUMP_LABEL=y
# CONFIG_STATIC_KEYS_SELFTEST is not set
# CONFIG_STATIC_CALL_SELFTEST is not set
CONFIG_OPTPROBES=y
CONFIG_KPROBES_ON_FTRACE=y
CONFIG_UPROBES=y
CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
CONFIG_ARCH_USE_BUILTIN_BSWAP=y
CONFIG_KRETPROBES=y
CONFIG_KRETPROBE_ON_RETHOOK=y
CONFIG_USER_RETURN_NOTIFIER=y
CONFIG_HAVE_IOREMAP_PROT=y
CONFIG_HAVE_KPROBES=y
CONFIG_HAVE_KRETPROBES=y
CONFIG_HAVE_OPTPROBES=y
CONFIG_HAVE_KPROBES_ON_FTRACE=y
CONFIG_ARCH_CORRECT_STACKTRACE_ON_KRETPROBE=y
CONFIG_HAVE_FUNCTION_ERROR_INJECTION=y
CONFIG_HAVE_NMI=y
CONFIG_TRACE_IRQFLAGS_SUPPORT=y
CONFIG_TRACE_IRQFLAGS_NMI_SUPPORT=y
CONFIG_HAVE_ARCH_TRACEHOOK=y
CONFIG_HAVE_DMA_CONTIGUOUS=y
CONFIG_GENERIC_SMP_IDLE_THREAD=y
CONFIG_ARCH_HAS_FORTIFY_SOURCE=y
CONFIG_ARCH_HAS_SET_MEMORY=y
CONFIG_ARCH_HAS_SET_DIRECT_MAP=y
CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST=y
CONFIG_ARCH_WANTS_DYNAMIC_TASK_STRUCT=y
CONFIG_ARCH_WANTS_NO_INSTR=y
CONFIG_HAVE_ASM_MODVERSIONS=y
CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
CONFIG_HAVE_RSEQ=y
CONFIG_HAVE_RUST=y
CONFIG_HAVE_FUNCTION_ARG_ACCESS_API=y
CONFIG_HAVE_HW_BREAKPOINT=y
CONFIG_HAVE_MIXED_BREAKPOINTS_REGS=y
CONFIG_HAVE_USER_RETURN_NOTIFIER=y
CONFIG_HAVE_PERF_EVENTS_NMI=y
CONFIG_HAVE_HARDLOCKUP_DETECTOR_PERF=y
CONFIG_HAVE_PERF_REGS=y
CONFIG_HAVE_PERF_USER_STACK_DUMP=y
CONFIG_HAVE_ARCH_JUMP_LABEL=y
CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE=y
CONFIG_MMU_GATHER_TABLE_FREE=y
CONFIG_MMU_GATHER_RCU_TABLE_FREE=y
CONFIG_MMU_GATHER_MERGE_VMAS=y
CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG=y
CONFIG_ARCH_HAS_NMI_SAFE_THIS_CPU_OPS=y
CONFIG_HAVE_ALIGNED_STRUCT_PAGE=y
CONFIG_HAVE_CMPXCHG_LOCAL=y
CONFIG_HAVE_CMPXCHG_DOUBLE=y
CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=y
CONFIG_ARCH_WANT_OLD_COMPAT_IPC=y
CONFIG_HAVE_ARCH_SECCOMP=y
CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
CONFIG_SECCOMP=y
CONFIG_SECCOMP_FILTER=y
# CONFIG_SECCOMP_CACHE_DEBUG is not set
CONFIG_HAVE_ARCH_STACKLEAK=y
CONFIG_HAVE_STACKPROTECTOR=y
CONFIG_STACKPROTECTOR=y
CONFIG_STACKPROTECTOR_STRONG=y
CONFIG_ARCH_SUPPORTS_LTO_CLANG=y
CONFIG_ARCH_SUPPORTS_LTO_CLANG_THIN=y
CONFIG_LTO_NONE=y
CONFIG_ARCH_SUPPORTS_CFI_CLANG=y
CONFIG_HAVE_ARCH_WITHIN_STACK_FRAMES=y
CONFIG_HAVE_CONTEXT_TRACKING_USER=y
CONFIG_HAVE_CONTEXT_TRACKING_USER_OFFSTACK=y
CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
CONFIG_HAVE_MOVE_PUD=y
CONFIG_HAVE_MOVE_PMD=y
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=y
CONFIG_HAVE_ARCH_HUGE_VMAP=y
CONFIG_HAVE_ARCH_HUGE_VMALLOC=y
CONFIG_ARCH_WANT_HUGE_PMD_SHARE=y
CONFIG_HAVE_ARCH_SOFT_DIRTY=y
CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
CONFIG_MODULES_USE_ELF_RELA=y
CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=y
CONFIG_HAVE_SOFTIRQ_ON_OWN_STACK=y
CONFIG_SOFTIRQ_ON_OWN_STACK=y
CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
CONFIG_HAVE_ARCH_MMAP_RND_BITS=y
CONFIG_HAVE_EXIT_THREAD=y
CONFIG_ARCH_MMAP_RND_BITS=28
CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
CONFIG_ARCH_MMAP_RND_COMPAT_BITS=8
CONFIG_HAVE_ARCH_COMPAT_MMAP_BASES=y
CONFIG_PAGE_SIZE_LESS_THAN_64KB=y
CONFIG_PAGE_SIZE_LESS_THAN_256KB=y
CONFIG_HAVE_OBJTOOL=y
CONFIG_HAVE_JUMP_LABEL_HACK=y
CONFIG_HAVE_NOINSTR_HACK=y
CONFIG_HAVE_NOINSTR_VALIDATION=y
CONFIG_HAVE_UACCESS_VALIDATION=y
CONFIG_HAVE_STACK_VALIDATION=y
CONFIG_HAVE_RELIABLE_STACKTRACE=y
CONFIG_OLD_SIGSUSPEND3=y
CONFIG_COMPAT_OLD_SIGACTION=y
CONFIG_COMPAT_32BIT_TIME=y
CONFIG_HAVE_ARCH_VMAP_STACK=y
CONFIG_VMAP_STACK=y
CONFIG_HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET=y
CONFIG_RANDOMIZE_KSTACK_OFFSET=y
# CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT is not set
CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
CONFIG_STRICT_KERNEL_RWX=y
CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
CONFIG_STRICT_MODULE_RWX=y
CONFIG_HAVE_ARCH_PREL32_RELOCATIONS=y
CONFIG_ARCH_USE_MEMREMAP_PROT=y
# CONFIG_LOCK_EVENT_COUNTS is not set
CONFIG_ARCH_HAS_MEM_ENCRYPT=y
CONFIG_ARCH_HAS_CC_PLATFORM=y
CONFIG_HAVE_STATIC_CALL=y
CONFIG_HAVE_STATIC_CALL_INLINE=y
CONFIG_HAVE_PREEMPT_DYNAMIC=y
CONFIG_HAVE_PREEMPT_DYNAMIC_CALL=y
CONFIG_ARCH_WANT_LD_ORPHAN_WARN=y
CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC=y
CONFIG_ARCH_SUPPORTS_PAGE_TABLE_CHECK=y
CONFIG_ARCH_HAS_ELFCORE_COMPAT=y
CONFIG_ARCH_HAS_PARANOID_L1D_FLUSH=y
CONFIG_DYNAMIC_SIGFRAME=y
CONFIG_ARCH_HAS_NONLEAF_PMD_YOUNG=y

#
# GCOV-based kernel profiling
#
# CONFIG_GCOV_KERNEL is not set
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
# end of GCOV-based kernel profiling

CONFIG_HAVE_GCC_PLUGINS=y
CONFIG_GCC_PLUGINS=y
# CONFIG_GCC_PLUGIN_LATENT_ENTROPY is not set
CONFIG_FUNCTION_ALIGNMENT_4B=y
CONFIG_FUNCTION_ALIGNMENT_16B=y
CONFIG_FUNCTION_ALIGNMENT=16
# end of General architecture-dependent options

CONFIG_RT_MUTEXES=y
CONFIG_BASE_SMALL=0
CONFIG_MODULE_SIG_FORMAT=y
CONFIG_MODULES=y
CONFIG_MODULE_FORCE_LOAD=y
CONFIG_MODULE_UNLOAD=y
# CONFIG_MODULE_FORCE_UNLOAD is not set
# CONFIG_MODULE_UNLOAD_TAINT_TRACKING is not set
# CONFIG_MODVERSIONS is not set
# CONFIG_MODULE_SRCVERSION_ALL is not set
CONFIG_MODULE_SIG=y
# CONFIG_MODULE_SIG_FORCE is not set
CONFIG_MODULE_SIG_ALL=y
# CONFIG_MODULE_SIG_SHA1 is not set
# CONFIG_MODULE_SIG_SHA224 is not set
CONFIG_MODULE_SIG_SHA256=y
# CONFIG_MODULE_SIG_SHA384 is not set
# CONFIG_MODULE_SIG_SHA512 is not set
CONFIG_MODULE_SIG_HASH="sha256"
CONFIG_MODULE_COMPRESS_NONE=y
# CONFIG_MODULE_COMPRESS_GZIP is not set
# CONFIG_MODULE_COMPRESS_XZ is not set
# CONFIG_MODULE_COMPRESS_ZSTD is not set
# CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is not set
CONFIG_MODPROBE_PATH="/sbin/modprobe"
# CONFIG_TRIM_UNUSED_KSYMS is not set
CONFIG_MODULES_TREE_LOOKUP=y
CONFIG_BLOCK=y
CONFIG_BLOCK_LEGACY_AUTOLOAD=y
CONFIG_BLK_CGROUP_RWSTAT=y
CONFIG_BLK_DEV_BSG_COMMON=y
CONFIG_BLK_ICQ=y
CONFIG_BLK_DEV_BSGLIB=y
CONFIG_BLK_DEV_INTEGRITY=y
CONFIG_BLK_DEV_INTEGRITY_T10=m
CONFIG_BLK_DEV_ZONED=y
CONFIG_BLK_DEV_THROTTLING=y
# CONFIG_BLK_DEV_THROTTLING_LOW is not set
CONFIG_BLK_WBT=y
CONFIG_BLK_WBT_MQ=y
# CONFIG_BLK_CGROUP_IOLATENCY is not set
# CONFIG_BLK_CGROUP_IOCOST is not set
# CONFIG_BLK_CGROUP_IOPRIO is not set
CONFIG_BLK_DEBUG_FS=y
CONFIG_BLK_DEBUG_FS_ZONED=y
# CONFIG_BLK_SED_OPAL is not set
# CONFIG_BLK_INLINE_ENCRYPTION is not set

#
# Partition Types
#
# CONFIG_PARTITION_ADVANCED is not set
CONFIG_MSDOS_PARTITION=y
CONFIG_EFI_PARTITION=y
# end of Partition Types

CONFIG_BLOCK_COMPAT=y
CONFIG_BLK_MQ_PCI=y
CONFIG_BLK_MQ_VIRTIO=y
CONFIG_BLK_MQ_RDMA=y
CONFIG_BLK_PM=y
CONFIG_BLOCK_HOLDER_DEPRECATED=y
CONFIG_BLK_MQ_STACKING=y

#
# IO Schedulers
#
CONFIG_MQ_IOSCHED_DEADLINE=y
CONFIG_MQ_IOSCHED_KYBER=y
CONFIG_IOSCHED_BFQ=y
CONFIG_BFQ_GROUP_IOSCHED=y
# CONFIG_BFQ_CGROUP_DEBUG is not set
# end of IO Schedulers

CONFIG_PREEMPT_NOTIFIERS=y
CONFIG_PADATA=y
CONFIG_ASN1=y
CONFIG_INLINE_SPIN_UNLOCK_IRQ=y
CONFIG_INLINE_READ_UNLOCK=y
CONFIG_INLINE_READ_UNLOCK_IRQ=y
CONFIG_INLINE_WRITE_UNLOCK=y
CONFIG_INLINE_WRITE_UNLOCK_IRQ=y
CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
CONFIG_MUTEX_SPIN_ON_OWNER=y
CONFIG_RWSEM_SPIN_ON_OWNER=y
CONFIG_LOCK_SPIN_ON_OWNER=y
CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
CONFIG_QUEUED_SPINLOCKS=y
CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
CONFIG_QUEUED_RWLOCKS=y
CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE=y
CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE=y
CONFIG_ARCH_HAS_SYSCALL_WRAPPER=y
CONFIG_FREEZER=y

#
# Executable file formats
#
CONFIG_BINFMT_ELF=y
CONFIG_COMPAT_BINFMT_ELF=y
CONFIG_ELFCORE=y
CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y
CONFIG_BINFMT_SCRIPT=y
CONFIG_BINFMT_MISC=m
CONFIG_COREDUMP=y
# end of Executable file formats

#
# Memory Management options
#
CONFIG_ZPOOL=y
CONFIG_SWAP=y
CONFIG_ZSWAP=y
# CONFIG_ZSWAP_DEFAULT_ON is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_DEFLATE is not set
CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZO=y
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_842 is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4 is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4HC is not set
# CONFIG_ZSWAP_COMPRESSOR_DEFAULT_ZSTD is not set
CONFIG_ZSWAP_COMPRESSOR_DEFAULT="lzo"
CONFIG_ZSWAP_ZPOOL_DEFAULT_ZBUD=y
# CONFIG_ZSWAP_ZPOOL_DEFAULT_Z3FOLD is not set
# CONFIG_ZSWAP_ZPOOL_DEFAULT_ZSMALLOC is not set
CONFIG_ZSWAP_ZPOOL_DEFAULT="zbud"
CONFIG_ZBUD=y
# CONFIG_Z3FOLD is not set
CONFIG_ZSMALLOC=y
CONFIG_ZSMALLOC_STAT=y

#
# SLAB allocator options
#
# CONFIG_SLAB is not set
CONFIG_SLUB=y
# CONFIG_SLOB_DEPRECATED is not set
# CONFIG_SLUB_TINY is not set
CONFIG_SLAB_MERGE_DEFAULT=y
CONFIG_SLAB_FREELIST_RANDOM=y
# CONFIG_SLAB_FREELIST_HARDENED is not set
# CONFIG_SLUB_STATS is not set
CONFIG_SLUB_CPU_PARTIAL=y
# end of SLAB allocator options

CONFIG_SHUFFLE_PAGE_ALLOCATOR=y
# CONFIG_COMPAT_BRK is not set
CONFIG_SPARSEMEM=y
CONFIG_SPARSEMEM_EXTREME=y
CONFIG_SPARSEMEM_VMEMMAP_ENABLE=y
CONFIG_SPARSEMEM_VMEMMAP=y
CONFIG_HAVE_FAST_GUP=y
CONFIG_NUMA_KEEP_MEMINFO=y
CONFIG_MEMORY_ISOLATION=y
CONFIG_EXCLUSIVE_SYSTEM_RAM=y
CONFIG_HAVE_BOOTMEM_INFO_NODE=y
CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG=y
CONFIG_ARCH_ENABLE_MEMORY_HOTREMOVE=y
CONFIG_MEMORY_HOTPLUG=y
# CONFIG_MEMORY_HOTPLUG_DEFAULT_ONLINE is not set
CONFIG_MEMORY_HOTREMOVE=y
CONFIG_MHP_MEMMAP_ON_MEMORY=y
CONFIG_SPLIT_PTLOCK_CPUS=4
CONFIG_ARCH_ENABLE_SPLIT_PMD_PTLOCK=y
CONFIG_MEMORY_BALLOON=y
CONFIG_BALLOON_COMPACTION=y
CONFIG_COMPACTION=y
CONFIG_COMPACT_UNEVICTABLE_DEFAULT=1
CONFIG_PAGE_REPORTING=y
CONFIG_MIGRATION=y
CONFIG_DEVICE_MIGRATION=y
CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION=y
CONFIG_ARCH_ENABLE_THP_MIGRATION=y
CONFIG_CONTIG_ALLOC=y
CONFIG_PHYS_ADDR_T_64BIT=y
CONFIG_MMU_NOTIFIER=y
CONFIG_KSM=y
CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
CONFIG_ARCH_SUPPORTS_MEMORY_FAILURE=y
CONFIG_MEMORY_FAILURE=y
CONFIG_HWPOISON_INJECT=m
CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
CONFIG_ARCH_WANTS_THP_SWAP=y
CONFIG_TRANSPARENT_HUGEPAGE=y
CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS=y
# CONFIG_TRANSPARENT_HUGEPAGE_MADVISE is not set
CONFIG_THP_SWAP=y
# CONFIG_READ_ONLY_THP_FOR_FS is not set
CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK=y
CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK=y
CONFIG_USE_PERCPU_NUMA_NODE_ID=y
CONFIG_HAVE_SETUP_PER_CPU_AREA=y
CONFIG_FRONTSWAP=y
CONFIG_CMA=y
# CONFIG_CMA_DEBUG is not set
# CONFIG_CMA_DEBUGFS is not set
# CONFIG_CMA_SYSFS is not set
CONFIG_CMA_AREAS=19
# CONFIG_MEM_SOFT_DIRTY is not set
CONFIG_GENERIC_EARLY_IOREMAP=y
CONFIG_DEFERRED_STRUCT_PAGE_INIT=y
CONFIG_PAGE_IDLE_FLAG=y
CONFIG_IDLE_PAGE_TRACKING=y
CONFIG_ARCH_HAS_CACHE_LINE_SIZE=y
CONFIG_ARCH_HAS_CURRENT_STACK_POINTER=y
CONFIG_ARCH_HAS_PTE_DEVMAP=y
CONFIG_ARCH_HAS_ZONE_DMA_SET=y
CONFIG_ZONE_DMA=y
CONFIG_ZONE_DMA32=y
CONFIG_ZONE_DEVICE=y
CONFIG_HMM_MIRROR=y
CONFIG_GET_FREE_REGION=y
CONFIG_DEVICE_PRIVATE=y
CONFIG_VMAP_PFN=y
CONFIG_ARCH_USES_HIGH_VMA_FLAGS=y
CONFIG_ARCH_HAS_PKEYS=y
CONFIG_VM_EVENT_COUNTERS=y
# CONFIG_PERCPU_STATS is not set
# CONFIG_GUP_TEST is not set
CONFIG_ARCH_HAS_PTE_SPECIAL=y
CONFIG_SECRETMEM=y
# CONFIG_ANON_VMA_NAME is not set
# CONFIG_USERFAULTFD is not set
# CONFIG_LRU_GEN is not set

#
# Data Access Monitoring
#
# CONFIG_DAMON is not set
# end of Data Access Monitoring
# end of Memory Management options

CONFIG_NET=y
CONFIG_COMPAT_NETLINK_MESSAGES=y
CONFIG_NET_INGRESS=y
CONFIG_NET_EGRESS=y
CONFIG_SKB_EXTENSIONS=y

#
# Networking options
#
CONFIG_PACKET=y
CONFIG_PACKET_DIAG=m
CONFIG_UNIX=y
CONFIG_UNIX_SCM=y
CONFIG_AF_UNIX_OOB=y
CONFIG_UNIX_DIAG=m
CONFIG_TLS=m
CONFIG_TLS_DEVICE=y
# CONFIG_TLS_TOE is not set
CONFIG_XFRM=y
CONFIG_XFRM_OFFLOAD=y
CONFIG_XFRM_ALGO=y
CONFIG_XFRM_USER=y
# CONFIG_XFRM_USER_COMPAT is not set
# CONFIG_XFRM_INTERFACE is not set
CONFIG_XFRM_SUB_POLICY=y
CONFIG_XFRM_MIGRATE=y
CONFIG_XFRM_STATISTICS=y
CONFIG_XFRM_AH=m
CONFIG_XFRM_ESP=m
CONFIG_XFRM_IPCOMP=m
CONFIG_NET_KEY=m
CONFIG_NET_KEY_MIGRATE=y
# CONFIG_SMC is not set
CONFIG_XDP_SOCKETS=y
# CONFIG_XDP_SOCKETS_DIAG is not set
CONFIG_INET=y
CONFIG_IP_MULTICAST=y
CONFIG_IP_ADVANCED_ROUTER=y
CONFIG_IP_FIB_TRIE_STATS=y
CONFIG_IP_MULTIPLE_TABLES=y
CONFIG_IP_ROUTE_MULTIPATH=y
CONFIG_IP_ROUTE_VERBOSE=y
CONFIG_IP_ROUTE_CLASSID=y
CONFIG_IP_PNP=y
CONFIG_IP_PNP_DHCP=y
# CONFIG_IP_PNP_BOOTP is not set
# CONFIG_IP_PNP_RARP is not set
CONFIG_NET_IPIP=m
CONFIG_NET_IPGRE_DEMUX=m
CONFIG_NET_IP_TUNNEL=m
CONFIG_NET_IPGRE=m
CONFIG_NET_IPGRE_BROADCAST=y
CONFIG_IP_MROUTE_COMMON=y
CONFIG_IP_MROUTE=y
CONFIG_IP_MROUTE_MULTIPLE_TABLES=y
CONFIG_IP_PIMSM_V1=y
CONFIG_IP_PIMSM_V2=y
CONFIG_SYN_COOKIES=y
CONFIG_NET_IPVTI=m
CONFIG_NET_UDP_TUNNEL=m
# CONFIG_NET_FOU is not set
# CONFIG_NET_FOU_IP_TUNNELS is not set
CONFIG_INET_AH=m
CONFIG_INET_ESP=m
CONFIG_INET_ESP_OFFLOAD=m
# CONFIG_INET_ESPINTCP is not set
CONFIG_INET_IPCOMP=m
CONFIG_INET_TABLE_PERTURB_ORDER=16
CONFIG_INET_XFRM_TUNNEL=m
CONFIG_INET_TUNNEL=m
CONFIG_INET_DIAG=m
CONFIG_INET_TCP_DIAG=m
CONFIG_INET_UDP_DIAG=m
CONFIG_INET_RAW_DIAG=m
# CONFIG_INET_DIAG_DESTROY is not set
CONFIG_TCP_CONG_ADVANCED=y
CONFIG_TCP_CONG_BIC=m
CONFIG_TCP_CONG_CUBIC=y
CONFIG_TCP_CONG_WESTWOOD=m
CONFIG_TCP_CONG_HTCP=m
CONFIG_TCP_CONG_HSTCP=m
CONFIG_TCP_CONG_HYBLA=m
CONFIG_TCP_CONG_VEGAS=m
CONFIG_TCP_CONG_NV=m
CONFIG_TCP_CONG_SCALABLE=m
CONFIG_TCP_CONG_LP=m
CONFIG_TCP_CONG_VENO=m
CONFIG_TCP_CONG_YEAH=m
CONFIG_TCP_CONG_ILLINOIS=m
CONFIG_TCP_CONG_DCTCP=m
# CONFIG_TCP_CONG_CDG is not set
CONFIG_TCP_CONG_BBR=m
CONFIG_DEFAULT_CUBIC=y
# CONFIG_DEFAULT_RENO is not set
CONFIG_DEFAULT_TCP_CONG="cubic"
CONFIG_TCP_MD5SIG=y
CONFIG_IPV6=y
CONFIG_IPV6_ROUTER_PREF=y
CONFIG_IPV6_ROUTE_INFO=y
CONFIG_IPV6_OPTIMISTIC_DAD=y
CONFIG_INET6_AH=m
CONFIG_INET6_ESP=m
CONFIG_INET6_ESP_OFFLOAD=m
# CONFIG_INET6_ESPINTCP is not set
CONFIG_INET6_IPCOMP=m
CONFIG_IPV6_MIP6=m
# CONFIG_IPV6_ILA is not set
CONFIG_INET6_XFRM_TUNNEL=m
CONFIG_INET6_TUNNEL=m
CONFIG_IPV6_VTI=m
CONFIG_IPV6_SIT=m
CONFIG_IPV6_SIT_6RD=y
CONFIG_IPV6_NDISC_NODETYPE=y
CONFIG_IPV6_TUNNEL=m
CONFIG_IPV6_GRE=m
CONFIG_IPV6_MULTIPLE_TABLES=y
# CONFIG_IPV6_SUBTREES is not set
CONFIG_IPV6_MROUTE=y
CONFIG_IPV6_MROUTE_MULTIPLE_TABLES=y
CONFIG_IPV6_PIMSM_V2=y
# CONFIG_IPV6_SEG6_LWTUNNEL is not set
# CONFIG_IPV6_SEG6_HMAC is not set
# CONFIG_IPV6_RPL_LWTUNNEL is not set
# CONFIG_IPV6_IOAM6_LWTUNNEL is not set
CONFIG_NETLABEL=y
# CONFIG_MPTCP is not set
CONFIG_NETWORK_SECMARK=y
CONFIG_NET_PTP_CLASSIFY=y
CONFIG_NETWORK_PHY_TIMESTAMPING=y
CONFIG_NETFILTER=y
CONFIG_NETFILTER_ADVANCED=y
CONFIG_BRIDGE_NETFILTER=m

#
# Core Netfilter Configuration
#
CONFIG_NETFILTER_INGRESS=y
CONFIG_NETFILTER_EGRESS=y
CONFIG_NETFILTER_SKIP_EGRESS=y
CONFIG_NETFILTER_NETLINK=m
CONFIG_NETFILTER_FAMILY_BRIDGE=y
CONFIG_NETFILTER_FAMILY_ARP=y
# CONFIG_NETFILTER_NETLINK_HOOK is not set
# CONFIG_NETFILTER_NETLINK_ACCT is not set
CONFIG_NETFILTER_NETLINK_QUEUE=m
CONFIG_NETFILTER_NETLINK_LOG=m
CONFIG_NETFILTER_NETLINK_OSF=m
CONFIG_NF_CONNTRACK=m
CONFIG_NF_LOG_SYSLOG=m
CONFIG_NETFILTER_CONNCOUNT=m
CONFIG_NF_CONNTRACK_MARK=y
CONFIG_NF_CONNTRACK_SECMARK=y
CONFIG_NF_CONNTRACK_ZONES=y
CONFIG_NF_CONNTRACK_PROCFS=y
CONFIG_NF_CONNTRACK_EVENTS=y
CONFIG_NF_CONNTRACK_TIMEOUT=y
CONFIG_NF_CONNTRACK_TIMESTAMP=y
CONFIG_NF_CONNTRACK_LABELS=y
CONFIG_NF_CT_PROTO_DCCP=y
CONFIG_NF_CT_PROTO_GRE=y
CONFIG_NF_CT_PROTO_SCTP=y
CONFIG_NF_CT_PROTO_UDPLITE=y
CONFIG_NF_CONNTRACK_AMANDA=m
CONFIG_NF_CONNTRACK_FTP=m
CONFIG_NF_CONNTRACK_H323=m
CONFIG_NF_CONNTRACK_IRC=m
CONFIG_NF_CONNTRACK_BROADCAST=m
CONFIG_NF_CONNTRACK_NETBIOS_NS=m
CONFIG_NF_CONNTRACK_SNMP=m
CONFIG_NF_CONNTRACK_PPTP=m
CONFIG_NF_CONNTRACK_SANE=m
CONFIG_NF_CONNTRACK_SIP=m
CONFIG_NF_CONNTRACK_TFTP=m
CONFIG_NF_CT_NETLINK=m
CONFIG_NF_CT_NETLINK_TIMEOUT=m
CONFIG_NF_CT_NETLINK_HELPER=m
CONFIG_NETFILTER_NETLINK_GLUE_CT=y
CONFIG_NF_NAT=m
CONFIG_NF_NAT_AMANDA=m
CONFIG_NF_NAT_FTP=m
CONFIG_NF_NAT_IRC=m
CONFIG_NF_NAT_SIP=m
CONFIG_NF_NAT_TFTP=m
CONFIG_NF_NAT_REDIRECT=y
CONFIG_NF_NAT_MASQUERADE=y
CONFIG_NF_NAT_OVS=y
CONFIG_NETFILTER_SYNPROXY=m
CONFIG_NF_TABLES=m
CONFIG_NF_TABLES_INET=y
CONFIG_NF_TABLES_NETDEV=y
CONFIG_NFT_NUMGEN=m
CONFIG_NFT_CT=m
CONFIG_NFT_CONNLIMIT=m
CONFIG_NFT_LOG=m
CONFIG_NFT_LIMIT=m
CONFIG_NFT_MASQ=m
CONFIG_NFT_REDIR=m
CONFIG_NFT_NAT=m
# CONFIG_NFT_TUNNEL is not set
CONFIG_NFT_QUEUE=m
CONFIG_NFT_QUOTA=m
CONFIG_NFT_REJECT=m
CONFIG_NFT_REJECT_INET=m
CONFIG_NFT_COMPAT=m
CONFIG_NFT_HASH=m
CONFIG_NFT_FIB=m
CONFIG_NFT_FIB_INET=m
# CONFIG_NFT_XFRM is not set
CONFIG_NFT_SOCKET=m
# CONFIG_NFT_OSF is not set
# CONFIG_NFT_TPROXY is not set
# CONFIG_NFT_SYNPROXY is not set
CONFIG_NF_DUP_NETDEV=m
CONFIG_NFT_DUP_NETDEV=m
CONFIG_NFT_FWD_NETDEV=m
CONFIG_NFT_FIB_NETDEV=m
# CONFIG_NFT_REJECT_NETDEV is not set
# CONFIG_NF_FLOW_TABLE is not set
CONFIG_NETFILTER_XTABLES=y
CONFIG_NETFILTER_XTABLES_COMPAT=y

#
# Xtables combined modules
#
CONFIG_NETFILTER_XT_MARK=m
CONFIG_NETFILTER_XT_CONNMARK=m
CONFIG_NETFILTER_XT_SET=m

#
# Xtables targets
#
CONFIG_NETFILTER_XT_TARGET_AUDIT=m
CONFIG_NETFILTER_XT_TARGET_CHECKSUM=m
CONFIG_NETFILTER_XT_TARGET_CLASSIFY=m
CONFIG_NETFILTER_XT_TARGET_CONNMARK=m
CONFIG_NETFILTER_XT_TARGET_CONNSECMARK=m
CONFIG_NETFILTER_XT_TARGET_CT=m
CONFIG_NETFILTER_XT_TARGET_DSCP=m
CONFIG_NETFILTER_XT_TARGET_HL=m
CONFIG_NETFILTER_XT_TARGET_HMARK=m
CONFIG_NETFILTER_XT_TARGET_IDLETIMER=m
# CONFIG_NETFILTER_XT_TARGET_LED is not set
CONFIG_NETFILTER_XT_TARGET_LOG=m
CONFIG_NETFILTER_XT_TARGET_MARK=m
CONFIG_NETFILTER_XT_NAT=m
CONFIG_NETFILTER_XT_TARGET_NETMAP=m
CONFIG_NETFILTER_XT_TARGET_NFLOG=m
CONFIG_NETFILTER_XT_TARGET_NFQUEUE=m
CONFIG_NETFILTER_XT_TARGET_NOTRACK=m
CONFIG_NETFILTER_XT_TARGET_RATEEST=m
CONFIG_NETFILTER_XT_TARGET_REDIRECT=m
CONFIG_NETFILTER_XT_TARGET_MASQUERADE=m
CONFIG_NETFILTER_XT_TARGET_TEE=m
CONFIG_NETFILTER_XT_TARGET_TPROXY=m
CONFIG_NETFILTER_XT_TARGET_TRACE=m
CONFIG_NETFILTER_XT_TARGET_SECMARK=m
CONFIG_NETFILTER_XT_TARGET_TCPMSS=m
CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP=m

#
# Xtables matches
#
CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=m
CONFIG_NETFILTER_XT_MATCH_BPF=m
CONFIG_NETFILTER_XT_MATCH_CGROUP=m
CONFIG_NETFILTER_XT_MATCH_CLUSTER=m
CONFIG_NETFILTER_XT_MATCH_COMMENT=m
CONFIG_NETFILTER_XT_MATCH_CONNBYTES=m
CONFIG_NETFILTER_XT_MATCH_CONNLABEL=m
CONFIG_NETFILTER_XT_MATCH_CONNLIMIT=m
CONFIG_NETFILTER_XT_MATCH_CONNMARK=m
CONFIG_NETFILTER_XT_MATCH_CONNTRACK=m
CONFIG_NETFILTER_XT_MATCH_CPU=m
CONFIG_NETFILTER_XT_MATCH_DCCP=m
CONFIG_NETFILTER_XT_MATCH_DEVGROUP=m
CONFIG_NETFILTER_XT_MATCH_DSCP=m
CONFIG_NETFILTER_XT_MATCH_ECN=m
CONFIG_NETFILTER_XT_MATCH_ESP=m
CONFIG_NETFILTER_XT_MATCH_HASHLIMIT=m
CONFIG_NETFILTER_XT_MATCH_HELPER=m
CONFIG_NETFILTER_XT_MATCH_HL=m
# CONFIG_NETFILTER_XT_MATCH_IPCOMP is not set
CONFIG_NETFILTER_XT_MATCH_IPRANGE=m
CONFIG_NETFILTER_XT_MATCH_IPVS=m
# CONFIG_NETFILTER_XT_MATCH_L2TP is not set
CONFIG_NETFILTER_XT_MATCH_LENGTH=m
CONFIG_NETFILTER_XT_MATCH_LIMIT=m
CONFIG_NETFILTER_XT_MATCH_MAC=m
CONFIG_NETFILTER_XT_MATCH_MARK=m
CONFIG_NETFILTER_XT_MATCH_MULTIPORT=m
# CONFIG_NETFILTER_XT_MATCH_NFACCT is not set
CONFIG_NETFILTER_XT_MATCH_OSF=m
CONFIG_NETFILTER_XT_MATCH_OWNER=m
CONFIG_NETFILTER_XT_MATCH_POLICY=m
CONFIG_NETFILTER_XT_MATCH_PHYSDEV=m
CONFIG_NETFILTER_XT_MATCH_PKTTYPE=m
CONFIG_NETFILTER_XT_MATCH_QUOTA=m
CONFIG_NETFILTER_XT_MATCH_RATEEST=m
CONFIG_NETFILTER_XT_MATCH_REALM=m
CONFIG_NETFILTER_XT_MATCH_RECENT=m
CONFIG_NETFILTER_XT_MATCH_SCTP=m
CONFIG_NETFILTER_XT_MATCH_SOCKET=m
CONFIG_NETFILTER_XT_MATCH_STATE=m
CONFIG_NETFILTER_XT_MATCH_STATISTIC=m
CONFIG_NETFILTER_XT_MATCH_STRING=m
CONFIG_NETFILTER_XT_MATCH_TCPMSS=m
# CONFIG_NETFILTER_XT_MATCH_TIME is not set
# CONFIG_NETFILTER_XT_MATCH_U32 is not set
# end of Core Netfilter Configuration

CONFIG_IP_SET=m
CONFIG_IP_SET_MAX=256
CONFIG_IP_SET_BITMAP_IP=m
CONFIG_IP_SET_BITMAP_IPMAC=m
CONFIG_IP_SET_BITMAP_PORT=m
CONFIG_IP_SET_HASH_IP=m
CONFIG_IP_SET_HASH_IPMARK=m
CONFIG_IP_SET_HASH_IPPORT=m
CONFIG_IP_SET_HASH_IPPORTIP=m
CONFIG_IP_SET_HASH_IPPORTNET=m
CONFIG_IP_SET_HASH_IPMAC=m
CONFIG_IP_SET_HASH_MAC=m
CONFIG_IP_SET_HASH_NETPORTNET=m
CONFIG_IP_SET_HASH_NET=m
CONFIG_IP_SET_HASH_NETNET=m
CONFIG_IP_SET_HASH_NETPORT=m
CONFIG_IP_SET_HASH_NETIFACE=m
CONFIG_IP_SET_LIST_SET=m
CONFIG_IP_VS=m
CONFIG_IP_VS_IPV6=y
# CONFIG_IP_VS_DEBUG is not set
CONFIG_IP_VS_TAB_BITS=12

#
# IPVS transport protocol load balancing support
#
CONFIG_IP_VS_PROTO_TCP=y
CONFIG_IP_VS_PROTO_UDP=y
CONFIG_IP_VS_PROTO_AH_ESP=y
CONFIG_IP_VS_PROTO_ESP=y
CONFIG_IP_VS_PROTO_AH=y
CONFIG_IP_VS_PROTO_SCTP=y

#
# IPVS scheduler
#
CONFIG_IP_VS_RR=m
CONFIG_IP_VS_WRR=m
CONFIG_IP_VS_LC=m
CONFIG_IP_VS_WLC=m
CONFIG_IP_VS_FO=m
CONFIG_IP_VS_OVF=m
CONFIG_IP_VS_LBLC=m
CONFIG_IP_VS_LBLCR=m
CONFIG_IP_VS_DH=m
CONFIG_IP_VS_SH=m
# CONFIG_IP_VS_MH is not set
CONFIG_IP_VS_SED=m
CONFIG_IP_VS_NQ=m
# CONFIG_IP_VS_TWOS is not set

#
# IPVS SH scheduler
#
CONFIG_IP_VS_SH_TAB_BITS=8

#
# IPVS MH scheduler
#
CONFIG_IP_VS_MH_TAB_INDEX=12

#
# IPVS application helper
#
CONFIG_IP_VS_FTP=m
CONFIG_IP_VS_NFCT=y
CONFIG_IP_VS_PE_SIP=m

#
# IP: Netfilter Configuration
#
CONFIG_NF_DEFRAG_IPV4=m
CONFIG_NF_SOCKET_IPV4=m
CONFIG_NF_TPROXY_IPV4=m
CONFIG_NF_TABLES_IPV4=y
CONFIG_NFT_REJECT_IPV4=m
CONFIG_NFT_DUP_IPV4=m
CONFIG_NFT_FIB_IPV4=m
CONFIG_NF_TABLES_ARP=y
CONFIG_NF_DUP_IPV4=m
CONFIG_NF_LOG_ARP=m
CONFIG_NF_LOG_IPV4=m
CONFIG_NF_REJECT_IPV4=m
CONFIG_NF_NAT_SNMP_BASIC=m
CONFIG_NF_NAT_PPTP=m
CONFIG_NF_NAT_H323=m
CONFIG_IP_NF_IPTABLES=m
CONFIG_IP_NF_MATCH_AH=m
CONFIG_IP_NF_MATCH_ECN=m
CONFIG_IP_NF_MATCH_RPFILTER=m
CONFIG_IP_NF_MATCH_TTL=m
CONFIG_IP_NF_FILTER=m
CONFIG_IP_NF_TARGET_REJECT=m
CONFIG_IP_NF_TARGET_SYNPROXY=m
CONFIG_IP_NF_NAT=m
CONFIG_IP_NF_TARGET_MASQUERADE=m
CONFIG_IP_NF_TARGET_NETMAP=m
CONFIG_IP_NF_TARGET_REDIRECT=m
CONFIG_IP_NF_MANGLE=m
# CONFIG_IP_NF_TARGET_CLUSTERIP is not set
CONFIG_IP_NF_TARGET_ECN=m
CONFIG_IP_NF_TARGET_TTL=m
CONFIG_IP_NF_RAW=m
CONFIG_IP_NF_SECURITY=m
CONFIG_IP_NF_ARPTABLES=m
CONFIG_IP_NF_ARPFILTER=m
CONFIG_IP_NF_ARP_MANGLE=m
# end of IP: Netfilter Configuration

#
# IPv6: Netfilter Configuration
#
CONFIG_NF_SOCKET_IPV6=m
CONFIG_NF_TPROXY_IPV6=m
CONFIG_NF_TABLES_IPV6=y
CONFIG_NFT_REJECT_IPV6=m
CONFIG_NFT_DUP_IPV6=m
CONFIG_NFT_FIB_IPV6=m
CONFIG_NF_DUP_IPV6=m
CONFIG_NF_REJECT_IPV6=m
CONFIG_NF_LOG_IPV6=m
CONFIG_IP6_NF_IPTABLES=m
CONFIG_IP6_NF_MATCH_AH=m
CONFIG_IP6_NF_MATCH_EUI64=m
CONFIG_IP6_NF_MATCH_FRAG=m
CONFIG_IP6_NF_MATCH_OPTS=m
CONFIG_IP6_NF_MATCH_HL=m
CONFIG_IP6_NF_MATCH_IPV6HEADER=m
CONFIG_IP6_NF_MATCH_MH=m
CONFIG_IP6_NF_MATCH_RPFILTER=m
CONFIG_IP6_NF_MATCH_RT=m
# CONFIG_IP6_NF_MATCH_SRH is not set
# CONFIG_IP6_NF_TARGET_HL is not set
CONFIG_IP6_NF_FILTER=m
CONFIG_IP6_NF_TARGET_REJECT=m
CONFIG_IP6_NF_TARGET_SYNPROXY=m
CONFIG_IP6_NF_MANGLE=m
CONFIG_IP6_NF_RAW=m
CONFIG_IP6_NF_SECURITY=m
CONFIG_IP6_NF_NAT=m
CONFIG_IP6_NF_TARGET_MASQUERADE=m
CONFIG_IP6_NF_TARGET_NPT=m
# end of IPv6: Netfilter Configuration

CONFIG_NF_DEFRAG_IPV6=m
CONFIG_NF_TABLES_BRIDGE=m
# CONFIG_NFT_BRIDGE_META is not set
CONFIG_NFT_BRIDGE_REJECT=m
# CONFIG_NF_CONNTRACK_BRIDGE is not set
CONFIG_BRIDGE_NF_EBTABLES=m
CONFIG_BRIDGE_EBT_BROUTE=m
CONFIG_BRIDGE_EBT_T_FILTER=m
CONFIG_BRIDGE_EBT_T_NAT=m
CONFIG_BRIDGE_EBT_802_3=m
CONFIG_BRIDGE_EBT_AMONG=m
CONFIG_BRIDGE_EBT_ARP=m
CONFIG_BRIDGE_EBT_IP=m
CONFIG_BRIDGE_EBT_IP6=m
CONFIG_BRIDGE_EBT_LIMIT=m
CONFIG_BRIDGE_EBT_MARK=m
CONFIG_BRIDGE_EBT_PKTTYPE=m
CONFIG_BRIDGE_EBT_STP=m
CONFIG_BRIDGE_EBT_VLAN=m
CONFIG_BRIDGE_EBT_ARPREPLY=m
CONFIG_BRIDGE_EBT_DNAT=m
CONFIG_BRIDGE_EBT_MARK_T=m
CONFIG_BRIDGE_EBT_REDIRECT=m
CONFIG_BRIDGE_EBT_SNAT=m
CONFIG_BRIDGE_EBT_LOG=m
CONFIG_BRIDGE_EBT_NFLOG=m
# CONFIG_BPFILTER is not set
# CONFIG_IP_DCCP is not set
CONFIG_IP_SCTP=m
# CONFIG_SCTP_DBG_OBJCNT is not set
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_MD5 is not set
CONFIG_SCTP_DEFAULT_COOKIE_HMAC_SHA1=y
# CONFIG_SCTP_DEFAULT_COOKIE_HMAC_NONE is not set
CONFIG_SCTP_COOKIE_HMAC_MD5=y
CONFIG_SCTP_COOKIE_HMAC_SHA1=y
CONFIG_INET_SCTP_DIAG=m
# CONFIG_RDS is not set
CONFIG_TIPC=m
# CONFIG_TIPC_MEDIA_IB is not set
CONFIG_TIPC_MEDIA_UDP=y
CONFIG_TIPC_CRYPTO=y
CONFIG_TIPC_DIAG=m
CONFIG_ATM=m
CONFIG_ATM_CLIP=m
# CONFIG_ATM_CLIP_NO_ICMP is not set
CONFIG_ATM_LANE=m
# CONFIG_ATM_MPOA is not set
CONFIG_ATM_BR2684=m
# CONFIG_ATM_BR2684_IPFILTER is not set
CONFIG_L2TP=m
CONFIG_L2TP_DEBUGFS=m
CONFIG_L2TP_V3=y
CONFIG_L2TP_IP=m
CONFIG_L2TP_ETH=m
CONFIG_STP=m
CONFIG_GARP=m
CONFIG_MRP=m
CONFIG_BRIDGE=m
CONFIG_BRIDGE_IGMP_SNOOPING=y
CONFIG_BRIDGE_VLAN_FILTERING=y
# CONFIG_BRIDGE_MRP is not set
# CONFIG_BRIDGE_CFM is not set
# CONFIG_NET_DSA is not set
CONFIG_VLAN_8021Q=m
CONFIG_VLAN_8021Q_GVRP=y
CONFIG_VLAN_8021Q_MVRP=y
CONFIG_LLC=m
# CONFIG_LLC2 is not set
# CONFIG_ATALK is not set
# CONFIG_X25 is not set
# CONFIG_LAPB is not set
# CONFIG_PHONET is not set
CONFIG_6LOWPAN=m
# CONFIG_6LOWPAN_DEBUGFS is not set
# CONFIG_6LOWPAN_NHC is not set
# CONFIG_IEEE802154 is not set
CONFIG_NET_SCHED=y

#
# Queueing/Scheduling
#
CONFIG_NET_SCH_CBQ=m
CONFIG_NET_SCH_HTB=m
CONFIG_NET_SCH_HFSC=m
CONFIG_NET_SCH_ATM=m
CONFIG_NET_SCH_PRIO=m
CONFIG_NET_SCH_MULTIQ=m
CONFIG_NET_SCH_RED=m
CONFIG_NET_SCH_SFB=m
CONFIG_NET_SCH_SFQ=m
CONFIG_NET_SCH_TEQL=m
CONFIG_NET_SCH_TBF=m
# CONFIG_NET_SCH_CBS is not set
# CONFIG_NET_SCH_ETF is not set
# CONFIG_NET_SCH_TAPRIO is not set
CONFIG_NET_SCH_GRED=m
CONFIG_NET_SCH_DSMARK=m
CONFIG_NET_SCH_NETEM=m
CONFIG_NET_SCH_DRR=m
CONFIG_NET_SCH_MQPRIO=m
# CONFIG_NET_SCH_SKBPRIO is not set
CONFIG_NET_SCH_CHOKE=m
CONFIG_NET_SCH_QFQ=m
CONFIG_NET_SCH_CODEL=m
CONFIG_NET_SCH_FQ_CODEL=y
# CONFIG_NET_SCH_CAKE is not set
CONFIG_NET_SCH_FQ=m
CONFIG_NET_SCH_HHF=m
CONFIG_NET_SCH_PIE=m
# CONFIG_NET_SCH_FQ_PIE is not set
CONFIG_NET_SCH_INGRESS=m
CONFIG_NET_SCH_PLUG=m
# CONFIG_NET_SCH_ETS is not set
CONFIG_NET_SCH_DEFAULT=y
# CONFIG_DEFAULT_FQ is not set
# CONFIG_DEFAULT_CODEL is not set
CONFIG_DEFAULT_FQ_CODEL=y
# CONFIG_DEFAULT_SFQ is not set
# CONFIG_DEFAULT_PFIFO_FAST is not set
CONFIG_DEFAULT_NET_SCH="fq_codel"

#
# Classification
#
CONFIG_NET_CLS=y
CONFIG_NET_CLS_BASIC=m
CONFIG_NET_CLS_TCINDEX=m
CONFIG_NET_CLS_ROUTE4=m
CONFIG_NET_CLS_FW=m
CONFIG_NET_CLS_U32=m
CONFIG_CLS_U32_PERF=y
CONFIG_CLS_U32_MARK=y
CONFIG_NET_CLS_RSVP=m
CONFIG_NET_CLS_RSVP6=m
CONFIG_NET_CLS_FLOW=m
CONFIG_NET_CLS_CGROUP=y
CONFIG_NET_CLS_BPF=m
CONFIG_NET_CLS_FLOWER=m
CONFIG_NET_CLS_MATCHALL=m
CONFIG_NET_EMATCH=y
CONFIG_NET_EMATCH_STACK=32
CONFIG_NET_EMATCH_CMP=m
CONFIG_NET_EMATCH_NBYTE=m
CONFIG_NET_EMATCH_U32=m
CONFIG_NET_EMATCH_META=m
CONFIG_NET_EMATCH_TEXT=m
# CONFIG_NET_EMATCH_CANID is not set
CONFIG_NET_EMATCH_IPSET=m
# CONFIG_NET_EMATCH_IPT is not set
CONFIG_NET_CLS_ACT=y
CONFIG_NET_ACT_POLICE=m
CONFIG_NET_ACT_GACT=m
CONFIG_GACT_PROB=y
CONFIG_NET_ACT_MIRRED=m
CONFIG_NET_ACT_SAMPLE=m
# CONFIG_NET_ACT_IPT is not set
CONFIG_NET_ACT_NAT=m
CONFIG_NET_ACT_PEDIT=m
CONFIG_NET_ACT_SIMP=m
CONFIG_NET_ACT_SKBEDIT=m
CONFIG_NET_ACT_CSUM=m
# CONFIG_NET_ACT_MPLS is not set
CONFIG_NET_ACT_VLAN=m
CONFIG_NET_ACT_BPF=m
# CONFIG_NET_ACT_CONNMARK is not set
# CONFIG_NET_ACT_CTINFO is not set
CONFIG_NET_ACT_SKBMOD=m
# CONFIG_NET_ACT_IFE is not set
CONFIG_NET_ACT_TUNNEL_KEY=m
# CONFIG_NET_ACT_GATE is not set
# CONFIG_NET_TC_SKB_EXT is not set
CONFIG_NET_SCH_FIFO=y
CONFIG_DCB=y
CONFIG_DNS_RESOLVER=m
# CONFIG_BATMAN_ADV is not set
CONFIG_OPENVSWITCH=m
CONFIG_OPENVSWITCH_GRE=m
CONFIG_VSOCKETS=m
CONFIG_VSOCKETS_DIAG=m
CONFIG_VSOCKETS_LOOPBACK=m
CONFIG_VMWARE_VMCI_VSOCKETS=m
CONFIG_VIRTIO_VSOCKETS=m
CONFIG_VIRTIO_VSOCKETS_COMMON=m
CONFIG_NETLINK_DIAG=m
CONFIG_MPLS=y
CONFIG_NET_MPLS_GSO=y
CONFIG_MPLS_ROUTING=m
CONFIG_MPLS_IPTUNNEL=m
CONFIG_NET_NSH=y
# CONFIG_HSR is not set
CONFIG_NET_SWITCHDEV=y
CONFIG_NET_L3_MASTER_DEV=y
# CONFIG_QRTR is not set
# CONFIG_NET_NCSI is not set
CONFIG_PCPU_DEV_REFCNT=y
CONFIG_RPS=y
CONFIG_RFS_ACCEL=y
CONFIG_SOCK_RX_QUEUE_MAPPING=y
CONFIG_XPS=y
CONFIG_CGROUP_NET_PRIO=y
CONFIG_CGROUP_NET_CLASSID=y
CONFIG_NET_RX_BUSY_POLL=y
CONFIG_BQL=y
CONFIG_NET_FLOW_LIMIT=y

#
# Network testing
#
CONFIG_NET_PKTGEN=m
CONFIG_NET_DROP_MONITOR=y
# end of Network testing
# end of Networking options

# CONFIG_HAMRADIO is not set
CONFIG_CAN=m
CONFIG_CAN_RAW=m
CONFIG_CAN_BCM=m
CONFIG_CAN_GW=m
# CONFIG_CAN_J1939 is not set
# CONFIG_CAN_ISOTP is not set
# CONFIG_BT is not set
# CONFIG_AF_RXRPC is not set
# CONFIG_AF_KCM is not set
CONFIG_STREAM_PARSER=y
# CONFIG_MCTP is not set
CONFIG_FIB_RULES=y
CONFIG_WIRELESS=y
CONFIG_WEXT_CORE=y
CONFIG_WEXT_PROC=y
CONFIG_CFG80211=m
# CONFIG_NL80211_TESTMODE is not set
# CONFIG_CFG80211_DEVELOPER_WARNINGS is not set
# CONFIG_CFG80211_CERTIFICATION_ONUS is not set
CONFIG_CFG80211_REQUIRE_SIGNED_REGDB=y
CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS=y
CONFIG_CFG80211_DEFAULT_PS=y
# CONFIG_CFG80211_DEBUGFS is not set
CONFIG_CFG80211_CRDA_SUPPORT=y
CONFIG_CFG80211_WEXT=y
CONFIG_MAC80211=m
CONFIG_MAC80211_HAS_RC=y
CONFIG_MAC80211_RC_MINSTREL=y
CONFIG_MAC80211_RC_DEFAULT_MINSTREL=y
CONFIG_MAC80211_RC_DEFAULT="minstrel_ht"
CONFIG_MAC80211_MESH=y
CONFIG_MAC80211_LEDS=y
CONFIG_MAC80211_DEBUGFS=y
# CONFIG_MAC80211_MESSAGE_TRACING is not set
# CONFIG_MAC80211_DEBUG_MENU is not set
CONFIG_MAC80211_STA_HASH_MAX_SIZE=0
CONFIG_RFKILL=m
CONFIG_RFKILL_LEDS=y
CONFIG_RFKILL_INPUT=y
# CONFIG_RFKILL_GPIO is not set
CONFIG_NET_9P=y
CONFIG_NET_9P_FD=y
CONFIG_NET_9P_VIRTIO=y
# CONFIG_NET_9P_RDMA is not set
# CONFIG_NET_9P_DEBUG is not set
# CONFIG_CAIF is not set
CONFIG_CEPH_LIB=m
# CONFIG_CEPH_LIB_PRETTYDEBUG is not set
CONFIG_CEPH_LIB_USE_DNS_RESOLVER=y
# CONFIG_NFC is not set
CONFIG_PSAMPLE=m
# CONFIG_NET_IFE is not set
CONFIG_LWTUNNEL=y
CONFIG_LWTUNNEL_BPF=y
CONFIG_DST_CACHE=y
CONFIG_GRO_CELLS=y
CONFIG_SOCK_VALIDATE_XMIT=y
CONFIG_NET_SELFTESTS=y
CONFIG_NET_SOCK_MSG=y
CONFIG_PAGE_POOL=y
# CONFIG_PAGE_POOL_STATS is not set
CONFIG_FAILOVER=m
CONFIG_ETHTOOL_NETLINK=y

#
# Device Drivers
#
CONFIG_HAVE_EISA=y
# CONFIG_EISA is not set
CONFIG_HAVE_PCI=y
CONFIG_PCI=y
CONFIG_PCI_DOMAINS=y
CONFIG_PCIEPORTBUS=y
CONFIG_HOTPLUG_PCI_PCIE=y
CONFIG_PCIEAER=y
CONFIG_PCIEAER_INJECT=m
CONFIG_PCIE_ECRC=y
CONFIG_PCIEASPM=y
CONFIG_PCIEASPM_DEFAULT=y
# CONFIG_PCIEASPM_POWERSAVE is not set
# CONFIG_PCIEASPM_POWER_SUPERSAVE is not set
# CONFIG_PCIEASPM_PERFORMANCE is not set
CONFIG_PCIE_PME=y
CONFIG_PCIE_DPC=y
# CONFIG_PCIE_PTM is not set
# CONFIG_PCIE_EDR is not set
CONFIG_PCI_MSI=y
CONFIG_PCI_QUIRKS=y
# CONFIG_PCI_DEBUG is not set
# CONFIG_PCI_REALLOC_ENABLE_AUTO is not set
CONFIG_PCI_STUB=y
CONFIG_PCI_PF_STUB=m
CONFIG_PCI_ATS=y
CONFIG_PCI_LOCKLESS_CONFIG=y
CONFIG_PCI_IOV=y
CONFIG_PCI_PRI=y
CONFIG_PCI_PASID=y
# CONFIG_PCI_P2PDMA is not set
CONFIG_PCI_LABEL=y
# CONFIG_PCIE_BUS_TUNE_OFF is not set
CONFIG_PCIE_BUS_DEFAULT=y
# CONFIG_PCIE_BUS_SAFE is not set
# CONFIG_PCIE_BUS_PERFORMANCE is not set
# CONFIG_PCIE_BUS_PEER2PEER is not set
CONFIG_VGA_ARB=y
CONFIG_VGA_ARB_MAX_GPUS=64
CONFIG_HOTPLUG_PCI=y
CONFIG_HOTPLUG_PCI_ACPI=y
CONFIG_HOTPLUG_PCI_ACPI_IBM=m
# CONFIG_HOTPLUG_PCI_CPCI is not set
CONFIG_HOTPLUG_PCI_SHPC=y

#
# PCI controller drivers
#
CONFIG_VMD=y

#
# DesignWare PCI Core Support
#
# CONFIG_PCIE_DW_PLAT_HOST is not set
# CONFIG_PCI_MESON is not set
# end of DesignWare PCI Core Support

#
# Mobiveil PCIe Core Support
#
# end of Mobiveil PCIe Core Support

#
# Cadence PCIe controllers support
#
# end of Cadence PCIe controllers support
# end of PCI controller drivers

#
# PCI Endpoint
#
# CONFIG_PCI_ENDPOINT is not set
# end of PCI Endpoint

#
# PCI switch controller drivers
#
# CONFIG_PCI_SW_SWITCHTEC is not set
# end of PCI switch controller drivers

# CONFIG_CXL_BUS is not set
# CONFIG_PCCARD is not set
# CONFIG_RAPIDIO is not set

#
# Generic Driver Options
#
CONFIG_AUXILIARY_BUS=y
# CONFIG_UEVENT_HELPER is not set
CONFIG_DEVTMPFS=y
CONFIG_DEVTMPFS_MOUNT=y
# CONFIG_DEVTMPFS_SAFE is not set
CONFIG_STANDALONE=y
CONFIG_PREVENT_FIRMWARE_BUILD=y

#
# Firmware loader
#
CONFIG_FW_LOADER=y
CONFIG_FW_LOADER_PAGED_BUF=y
CONFIG_FW_LOADER_SYSFS=y
CONFIG_EXTRA_FIRMWARE=""
CONFIG_FW_LOADER_USER_HELPER=y
# CONFIG_FW_LOADER_USER_HELPER_FALLBACK is not set
# CONFIG_FW_LOADER_COMPRESS is not set
CONFIG_FW_CACHE=y
# CONFIG_FW_UPLOAD is not set
# end of Firmware loader

CONFIG_ALLOW_DEV_COREDUMP=y
# CONFIG_DEBUG_DRIVER is not set
# CONFIG_DEBUG_DEVRES is not set
# CONFIG_DEBUG_TEST_DRIVER_REMOVE is not set
# CONFIG_TEST_ASYNC_DRIVER_PROBE is not set
CONFIG_GENERIC_CPU_AUTOPROBE=y
CONFIG_GENERIC_CPU_VULNERABILITIES=y
CONFIG_REGMAP=y
CONFIG_REGMAP_I2C=m
CONFIG_REGMAP_SPI=m
CONFIG_DMA_SHARED_BUFFER=y
# CONFIG_DMA_FENCE_TRACE is not set
# end of Generic Driver Options

#
# Bus devices
#
# CONFIG_MHI_BUS is not set
# CONFIG_MHI_BUS_EP is not set
# end of Bus devices

CONFIG_CONNECTOR=y
CONFIG_PROC_EVENTS=y

#
# Firmware Drivers
#

#
# ARM System Control and Management Interface Protocol
#
# end of ARM System Control and Management Interface Protocol

CONFIG_EDD=m
# CONFIG_EDD_OFF is not set
CONFIG_FIRMWARE_MEMMAP=y
CONFIG_DMIID=y
CONFIG_DMI_SYSFS=y
CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK=y
# CONFIG_ISCSI_IBFT is not set
CONFIG_FW_CFG_SYSFS=y
# CONFIG_FW_CFG_SYSFS_CMDLINE is not set
CONFIG_SYSFB=y
# CONFIG_SYSFB_SIMPLEFB is not set
# CONFIG_GOOGLE_FIRMWARE is not set

#
# EFI (Extensible Firmware Interface) Support
#
CONFIG_EFI_ESRT=y
CONFIG_EFI_VARS_PSTORE=y
CONFIG_EFI_VARS_PSTORE_DEFAULT_DISABLE=y
CONFIG_EFI_DXE_MEM_ATTRIBUTES=y
CONFIG_EFI_RUNTIME_WRAPPERS=y
# CONFIG_EFI_BOOTLOADER_CONTROL is not set
# CONFIG_EFI_CAPSULE_LOADER is not set
# CONFIG_EFI_TEST is not set
# CONFIG_APPLE_PROPERTIES is not set
# CONFIG_RESET_ATTACK_MITIGATION is not set
# CONFIG_EFI_RCI2_TABLE is not set
# CONFIG_EFI_DISABLE_PCI_DMA is not set
CONFIG_EFI_EARLYCON=y
CONFIG_EFI_CUSTOM_SSDT_OVERLAYS=y
# CONFIG_EFI_DISABLE_RUNTIME is not set
# CONFIG_EFI_COCO_SECRET is not set
# end of EFI (Extensible Firmware Interface) Support

CONFIG_UEFI_CPER=y
CONFIG_UEFI_CPER_X86=y

#
# Tegra firmware driver
#
# end of Tegra firmware driver
# end of Firmware Drivers

# CONFIG_GNSS is not set
# CONFIG_MTD is not set
# CONFIG_OF is not set
CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
CONFIG_PARPORT=m
CONFIG_PARPORT_PC=m
CONFIG_PARPORT_SERIAL=m
# CONFIG_PARPORT_PC_FIFO is not set
# CONFIG_PARPORT_PC_SUPERIO is not set
# CONFIG_PARPORT_AX88796 is not set
CONFIG_PARPORT_1284=y
CONFIG_PNP=y
# CONFIG_PNP_DEBUG_MESSAGES is not set

#
# Protocols
#
CONFIG_PNPACPI=y
CONFIG_BLK_DEV=y
CONFIG_BLK_DEV_NULL_BLK=m
CONFIG_BLK_DEV_NULL_BLK_FAULT_INJECTION=y
# CONFIG_BLK_DEV_FD is not set
CONFIG_CDROM=m
# CONFIG_PARIDE is not set
# CONFIG_BLK_DEV_PCIESSD_MTIP32XX is not set
CONFIG_ZRAM=m
CONFIG_ZRAM_DEF_COMP_LZORLE=y
# CONFIG_ZRAM_DEF_COMP_LZO is not set
CONFIG_ZRAM_DEF_COMP="lzo-rle"
CONFIG_ZRAM_WRITEBACK=y
# CONFIG_ZRAM_MEMORY_TRACKING is not set
# CONFIG_ZRAM_MULTI_COMP is not set
CONFIG_BLK_DEV_LOOP=m
CONFIG_BLK_DEV_LOOP_MIN_COUNT=0
# CONFIG_BLK_DEV_DRBD is not set
CONFIG_BLK_DEV_NBD=m
CONFIG_BLK_DEV_RAM=m
CONFIG_BLK_DEV_RAM_COUNT=16
CONFIG_BLK_DEV_RAM_SIZE=16384
CONFIG_CDROM_PKTCDVD=m
CONFIG_CDROM_PKTCDVD_BUFFERS=8
# CONFIG_CDROM_PKTCDVD_WCACHE is not set
# CONFIG_ATA_OVER_ETH is not set
CONFIG_VIRTIO_BLK=m
CONFIG_BLK_DEV_RBD=m
# CONFIG_BLK_DEV_UBLK is not set

#
# NVME Support
#
CONFIG_NVME_CORE=m
CONFIG_BLK_DEV_NVME=m
CONFIG_NVME_MULTIPATH=y
# CONFIG_NVME_VERBOSE_ERRORS is not set
# CONFIG_NVME_HWMON is not set
CONFIG_NVME_FABRICS=m
# CONFIG_NVME_RDMA is not set
# CONFIG_NVME_FC is not set
# CONFIG_NVME_TCP is not set
# CONFIG_NVME_AUTH is not set
CONFIG_NVME_TARGET=m
# CONFIG_NVME_TARGET_PASSTHRU is not set
CONFIG_NVME_TARGET_LOOP=m
# CONFIG_NVME_TARGET_RDMA is not set
CONFIG_NVME_TARGET_FC=m
# CONFIG_NVME_TARGET_TCP is not set
# CONFIG_NVME_TARGET_AUTH is not set
# end of NVME Support

#
# Misc devices
#
CONFIG_SENSORS_LIS3LV02D=m
# CONFIG_AD525X_DPOT is not set
# CONFIG_DUMMY_IRQ is not set
# CONFIG_IBM_ASM is not set
# CONFIG_PHANTOM is not set
CONFIG_TIFM_CORE=m
CONFIG_TIFM_7XX1=m
# CONFIG_ICS932S401 is not set
CONFIG_ENCLOSURE_SERVICES=m
CONFIG_SGI_XP=m
CONFIG_HP_ILO=m
CONFIG_SGI_GRU=m
# CONFIG_SGI_GRU_DEBUG is not set
CONFIG_APDS9802ALS=m
CONFIG_ISL29003=m
CONFIG_ISL29020=m
CONFIG_SENSORS_TSL2550=m
CONFIG_SENSORS_BH1770=m
CONFIG_SENSORS_APDS990X=m
# CONFIG_HMC6352 is not set
# CONFIG_DS1682 is not set
CONFIG_VMWARE_BALLOON=m
# CONFIG_LATTICE_ECP3_CONFIG is not set
# CONFIG_SRAM is not set
# CONFIG_DW_XDATA_PCIE is not set
# CONFIG_PCI_ENDPOINT_TEST is not set
# CONFIG_XILINX_SDFEC is not set
CONFIG_MISC_RTSX=m
# CONFIG_C2PORT is not set

#
# EEPROM support
#
# CONFIG_EEPROM_AT24 is not set
# CONFIG_EEPROM_AT25 is not set
CONFIG_EEPROM_LEGACY=m
CONFIG_EEPROM_MAX6875=m
CONFIG_EEPROM_93CX6=m
# CONFIG_EEPROM_93XX46 is not set
# CONFIG_EEPROM_IDT_89HPESX is not set
# CONFIG_EEPROM_EE1004 is not set
# end of EEPROM support

CONFIG_CB710_CORE=m
# CONFIG_CB710_DEBUG is not set
CONFIG_CB710_DEBUG_ASSUMPTIONS=y

#
# Texas Instruments shared transport line discipline
#
# CONFIG_TI_ST is not set
# end of Texas Instruments shared transport line discipline

CONFIG_SENSORS_LIS3_I2C=m
CONFIG_ALTERA_STAPL=m
CONFIG_INTEL_MEI=m
CONFIG_INTEL_MEI_ME=m
# CONFIG_INTEL_MEI_TXE is not set
# CONFIG_INTEL_MEI_GSC is not set
# CONFIG_INTEL_MEI_HDCP is not set
# CONFIG_INTEL_MEI_PXP is not set
CONFIG_VMWARE_VMCI=m
# CONFIG_GENWQE is not set
# CONFIG_ECHO is not set
# CONFIG_BCM_VK is not set
# CONFIG_MISC_ALCOR_PCI is not set
CONFIG_MISC_RTSX_PCI=m
# CONFIG_MISC_RTSX_USB is not set
# CONFIG_HABANA_AI is not set
# CONFIG_UACCE is not set
CONFIG_PVPANIC=y
# CONFIG_PVPANIC_MMIO is not set
# CONFIG_PVPANIC_PCI is not set
# CONFIG_GP_PCI1XXXX is not set
# end of Misc devices

#
# SCSI device support
#
CONFIG_SCSI_MOD=y
CONFIG_RAID_ATTRS=m
CONFIG_SCSI_COMMON=y
CONFIG_SCSI=y
CONFIG_SCSI_DMA=y
CONFIG_SCSI_NETLINK=y
CONFIG_SCSI_PROC_FS=y

#
# SCSI support type (disk, tape, CD-ROM)
#
CONFIG_BLK_DEV_SD=m
CONFIG_CHR_DEV_ST=m
CONFIG_BLK_DEV_SR=m
CONFIG_CHR_DEV_SG=m
CONFIG_BLK_DEV_BSG=y
CONFIG_CHR_DEV_SCH=m
CONFIG_SCSI_ENCLOSURE=m
CONFIG_SCSI_CONSTANTS=y
CONFIG_SCSI_LOGGING=y
CONFIG_SCSI_SCAN_ASYNC=y

#
# SCSI Transports
#
CONFIG_SCSI_SPI_ATTRS=m
CONFIG_SCSI_FC_ATTRS=m
CONFIG_SCSI_ISCSI_ATTRS=m
CONFIG_SCSI_SAS_ATTRS=m
CONFIG_SCSI_SAS_LIBSAS=m
CONFIG_SCSI_SAS_ATA=y
CONFIG_SCSI_SAS_HOST_SMP=y
CONFIG_SCSI_SRP_ATTRS=m
# end of SCSI Transports

CONFIG_SCSI_LOWLEVEL=y
# CONFIG_ISCSI_TCP is not set
# CONFIG_ISCSI_BOOT_SYSFS is not set
# CONFIG_SCSI_CXGB3_ISCSI is not set
# CONFIG_SCSI_CXGB4_ISCSI is not set
# CONFIG_SCSI_BNX2_ISCSI is not set
# CONFIG_BE2ISCSI is not set
# CONFIG_BLK_DEV_3W_XXXX_RAID is not set
# CONFIG_SCSI_HPSA is not set
# CONFIG_SCSI_3W_9XXX is not set
# CONFIG_SCSI_3W_SAS is not set
# CONFIG_SCSI_ACARD is not set
# CONFIG_SCSI_AACRAID is not set
# CONFIG_SCSI_AIC7XXX is not set
# CONFIG_SCSI_AIC79XX is not set
# CONFIG_SCSI_AIC94XX is not set
# CONFIG_SCSI_MVSAS is not set
# CONFIG_SCSI_MVUMI is not set
# CONFIG_SCSI_ADVANSYS is not set
# CONFIG_SCSI_ARCMSR is not set
# CONFIG_SCSI_ESAS2R is not set
# CONFIG_MEGARAID_NEWGEN is not set
# CONFIG_MEGARAID_LEGACY is not set
# CONFIG_MEGARAID_SAS is not set
CONFIG_SCSI_MPT3SAS=m
CONFIG_SCSI_MPT2SAS_MAX_SGE=128
CONFIG_SCSI_MPT3SAS_MAX_SGE=128
# CONFIG_SCSI_MPT2SAS is not set
# CONFIG_SCSI_MPI3MR is not set
# CONFIG_SCSI_SMARTPQI is not set
# CONFIG_SCSI_HPTIOP is not set
# CONFIG_SCSI_BUSLOGIC is not set
# CONFIG_SCSI_MYRB is not set
# CONFIG_SCSI_MYRS is not set
# CONFIG_VMWARE_PVSCSI is not set
# CONFIG_LIBFC is not set
# CONFIG_SCSI_SNIC is not set
# CONFIG_SCSI_DMX3191D is not set
# CONFIG_SCSI_FDOMAIN_PCI is not set
CONFIG_SCSI_ISCI=m
# CONFIG_SCSI_IPS is not set
# CONFIG_SCSI_INITIO is not set
# CONFIG_SCSI_INIA100 is not set
# CONFIG_SCSI_PPA is not set
# CONFIG_SCSI_IMM is not set
# CONFIG_SCSI_STEX is not set
# CONFIG_SCSI_SYM53C8XX_2 is not set
# CONFIG_SCSI_IPR is not set
# CONFIG_SCSI_QLOGIC_1280 is not set
# CONFIG_SCSI_QLA_FC is not set
# CONFIG_SCSI_QLA_ISCSI is not set
# CONFIG_SCSI_LPFC is not set
# CONFIG_SCSI_EFCT is not set
# CONFIG_SCSI_DC395x is not set
# CONFIG_SCSI_AM53C974 is not set
# CONFIG_SCSI_WD719X is not set
CONFIG_SCSI_DEBUG=m
# CONFIG_SCSI_PMCRAID is not set
# CONFIG_SCSI_PM8001 is not set
# CONFIG_SCSI_BFA_FC is not set
# CONFIG_SCSI_VIRTIO is not set
# CONFIG_SCSI_CHELSIO_FCOE is not set
CONFIG_SCSI_DH=y
CONFIG_SCSI_DH_RDAC=y
CONFIG_SCSI_DH_HP_SW=y
CONFIG_SCSI_DH_EMC=y
CONFIG_SCSI_DH_ALUA=y
# end of SCSI device support

CONFIG_ATA=m
CONFIG_SATA_HOST=y
CONFIG_PATA_TIMINGS=y
CONFIG_ATA_VERBOSE_ERROR=y
CONFIG_ATA_FORCE=y
CONFIG_ATA_ACPI=y
# CONFIG_SATA_ZPODD is not set
CONFIG_SATA_PMP=y

#
# Controllers with non-SFF native interface
#
CONFIG_SATA_AHCI=m
CONFIG_SATA_MOBILE_LPM_POLICY=0
CONFIG_SATA_AHCI_PLATFORM=m
# CONFIG_AHCI_DWC is not set
# CONFIG_SATA_INIC162X is not set
# CONFIG_SATA_ACARD_AHCI is not set
# CONFIG_SATA_SIL24 is not set
CONFIG_ATA_SFF=y

#
# SFF controllers with custom DMA interface
#
# CONFIG_PDC_ADMA is not set
# CONFIG_SATA_QSTOR is not set
# CONFIG_SATA_SX4 is not set
CONFIG_ATA_BMDMA=y

#
# SATA SFF controllers with BMDMA
#
CONFIG_ATA_PIIX=m
# CONFIG_SATA_DWC is not set
# CONFIG_SATA_MV is not set
# CONFIG_SATA_NV is not set
# CONFIG_SATA_PROMISE is not set
# CONFIG_SATA_SIL is not set
# CONFIG_SATA_SIS is not set
# CONFIG_SATA_SVW is not set
# CONFIG_SATA_ULI is not set
# CONFIG_SATA_VIA is not set
# CONFIG_SATA_VITESSE is not set

#
# PATA SFF controllers with BMDMA
#
# CONFIG_PATA_ALI is not set
# CONFIG_PATA_AMD is not set
# CONFIG_PATA_ARTOP is not set
# CONFIG_PATA_ATIIXP is not set
# CONFIG_PATA_ATP867X is not set
# CONFIG_PATA_CMD64X is not set
# CONFIG_PATA_CYPRESS is not set
# CONFIG_PATA_EFAR is not set
# CONFIG_PATA_HPT366 is not set
# CONFIG_PATA_HPT37X is not set
# CONFIG_PATA_HPT3X2N is not set
# CONFIG_PATA_HPT3X3 is not set
# CONFIG_PATA_IT8213 is not set
# CONFIG_PATA_IT821X is not set
# CONFIG_PATA_JMICRON is not set
# CONFIG_PATA_MARVELL is not set
# CONFIG_PATA_NETCELL is not set
# CONFIG_PATA_NINJA32 is not set
# CONFIG_PATA_NS87415 is not set
# CONFIG_PATA_OLDPIIX is not set
# CONFIG_PATA_OPTIDMA is not set
# CONFIG_PATA_PDC2027X is not set
# CONFIG_PATA_PDC_OLD is not set
# CONFIG_PATA_RADISYS is not set
# CONFIG_PATA_RDC is not set
# CONFIG_PATA_SCH is not set
# CONFIG_PATA_SERVERWORKS is not set
# CONFIG_PATA_SIL680 is not set
# CONFIG_PATA_SIS is not set
# CONFIG_PATA_TOSHIBA is not set
# CONFIG_PATA_TRIFLEX is not set
# CONFIG_PATA_VIA is not set
# CONFIG_PATA_WINBOND is not set

#
# PIO-only SFF controllers
#
# CONFIG_PATA_CMD640_PCI is not set
# CONFIG_PATA_MPIIX is not set
# CONFIG_PATA_NS87410 is not set
# CONFIG_PATA_OPTI is not set
# CONFIG_PATA_RZ1000 is not set

#
# Generic fallback / legacy drivers
#
# CONFIG_PATA_ACPI is not set
CONFIG_ATA_GENERIC=m
# CONFIG_PATA_LEGACY is not set
CONFIG_MD=y
CONFIG_BLK_DEV_MD=y
CONFIG_MD_AUTODETECT=y
CONFIG_MD_LINEAR=m
CONFIG_MD_RAID0=m
CONFIG_MD_RAID1=m
CONFIG_MD_RAID10=m
CONFIG_MD_RAID456=m
CONFIG_MD_MULTIPATH=m
CONFIG_MD_FAULTY=m
CONFIG_MD_CLUSTER=m
# CONFIG_BCACHE is not set
CONFIG_BLK_DEV_DM_BUILTIN=y
CONFIG_BLK_DEV_DM=m
CONFIG_DM_DEBUG=y
CONFIG_DM_BUFIO=m
# CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING is not set
CONFIG_DM_BIO_PRISON=m
CONFIG_DM_PERSISTENT_DATA=m
# CONFIG_DM_UNSTRIPED is not set
CONFIG_DM_CRYPT=m
CONFIG_DM_SNAPSHOT=m
CONFIG_DM_THIN_PROVISIONING=m
CONFIG_DM_CACHE=m
CONFIG_DM_CACHE_SMQ=m
CONFIG_DM_WRITECACHE=m
# CONFIG_DM_EBS is not set
CONFIG_DM_ERA=m
# CONFIG_DM_CLONE is not set
CONFIG_DM_MIRROR=m
CONFIG_DM_LOG_USERSPACE=m
CONFIG_DM_RAID=m
CONFIG_DM_ZERO=m
CONFIG_DM_MULTIPATH=m
CONFIG_DM_MULTIPATH_QL=m
CONFIG_DM_MULTIPATH_ST=m
# CONFIG_DM_MULTIPATH_HST is not set
# CONFIG_DM_MULTIPATH_IOA is not set
CONFIG_DM_DELAY=m
# CONFIG_DM_DUST is not set
CONFIG_DM_UEVENT=y
CONFIG_DM_FLAKEY=m
CONFIG_DM_VERITY=m
# CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG is not set
# CONFIG_DM_VERITY_FEC is not set
CONFIG_DM_SWITCH=m
CONFIG_DM_LOG_WRITES=m
CONFIG_DM_INTEGRITY=m
# CONFIG_DM_ZONED is not set
CONFIG_DM_AUDIT=y
CONFIG_TARGET_CORE=m
CONFIG_TCM_IBLOCK=m
CONFIG_TCM_FILEIO=m
CONFIG_TCM_PSCSI=m
CONFIG_TCM_USER2=m
CONFIG_LOOPBACK_TARGET=m
CONFIG_ISCSI_TARGET=m
# CONFIG_SBP_TARGET is not set
# CONFIG_FUSION is not set

#
# IEEE 1394 (FireWire) support
#
CONFIG_FIREWIRE=m
CONFIG_FIREWIRE_OHCI=m
CONFIG_FIREWIRE_SBP2=m
CONFIG_FIREWIRE_NET=m
# CONFIG_FIREWIRE_NOSY is not set
# end of IEEE 1394 (FireWire) support

CONFIG_MACINTOSH_DRIVERS=y
CONFIG_MAC_EMUMOUSEBTN=y
CONFIG_NETDEVICES=y
CONFIG_MII=y
CONFIG_NET_CORE=y
# CONFIG_BONDING is not set
CONFIG_DUMMY=m
# CONFIG_WIREGUARD is not set
# CONFIG_EQUALIZER is not set
# CONFIG_NET_FC is not set
# CONFIG_IFB is not set
# CONFIG_NET_TEAM is not set
# CONFIG_MACVLAN is not set
# CONFIG_IPVLAN is not set
# CONFIG_VXLAN is not set
# CONFIG_GENEVE is not set
# CONFIG_BAREUDP is not set
# CONFIG_GTP is not set
# CONFIG_AMT is not set
CONFIG_MACSEC=m
CONFIG_NETCONSOLE=m
CONFIG_NETCONSOLE_DYNAMIC=y
CONFIG_NETPOLL=y
CONFIG_NET_POLL_CONTROLLER=y
CONFIG_TUN=m
# CONFIG_TUN_VNET_CROSS_LE is not set
CONFIG_VETH=m
CONFIG_VIRTIO_NET=m
# CONFIG_NLMON is not set
# CONFIG_NET_VRF is not set
# CONFIG_VSOCKMON is not set
# CONFIG_ARCNET is not set
CONFIG_ATM_DRIVERS=y
# CONFIG_ATM_DUMMY is not set
# CONFIG_ATM_TCP is not set
# CONFIG_ATM_LANAI is not set
# CONFIG_ATM_ENI is not set
# CONFIG_ATM_NICSTAR is not set
# CONFIG_ATM_IDT77252 is not set
# CONFIG_ATM_IA is not set
# CONFIG_ATM_FORE200E is not set
# CONFIG_ATM_HE is not set
# CONFIG_ATM_SOLOS is not set
CONFIG_ETHERNET=y
CONFIG_MDIO=y
# CONFIG_NET_VENDOR_3COM is not set
CONFIG_NET_VENDOR_ADAPTEC=y
# CONFIG_ADAPTEC_STARFIRE is not set
CONFIG_NET_VENDOR_AGERE=y
# CONFIG_ET131X is not set
CONFIG_NET_VENDOR_ALACRITECH=y
# CONFIG_SLICOSS is not set
CONFIG_NET_VENDOR_ALTEON=y
# CONFIG_ACENIC is not set
# CONFIG_ALTERA_TSE is not set
CONFIG_NET_VENDOR_AMAZON=y
# CONFIG_ENA_ETHERNET is not set
# CONFIG_NET_VENDOR_AMD is not set
CONFIG_NET_VENDOR_AQUANTIA=y
# CONFIG_AQTION is not set
CONFIG_NET_VENDOR_ARC=y
CONFIG_NET_VENDOR_ASIX=y
# CONFIG_SPI_AX88796C is not set
CONFIG_NET_VENDOR_ATHEROS=y
# CONFIG_ATL2 is not set
# CONFIG_ATL1 is not set
# CONFIG_ATL1E is not set
# CONFIG_ATL1C is not set
# CONFIG_ALX is not set
# CONFIG_CX_ECAT is not set
CONFIG_NET_VENDOR_BROADCOM=y
# CONFIG_B44 is not set
# CONFIG_BCMGENET is not set
# CONFIG_BNX2 is not set
# CONFIG_CNIC is not set
# CONFIG_TIGON3 is not set
# CONFIG_BNX2X is not set
# CONFIG_SYSTEMPORT is not set
# CONFIG_BNXT is not set
CONFIG_NET_VENDOR_CADENCE=y
# CONFIG_MACB is not set
CONFIG_NET_VENDOR_CAVIUM=y
# CONFIG_THUNDER_NIC_PF is not set
# CONFIG_THUNDER_NIC_VF is not set
# CONFIG_THUNDER_NIC_BGX is not set
# CONFIG_THUNDER_NIC_RGX is not set
CONFIG_CAVIUM_PTP=y
# CONFIG_LIQUIDIO is not set
# CONFIG_LIQUIDIO_VF is not set
CONFIG_NET_VENDOR_CHELSIO=y
# CONFIG_CHELSIO_T1 is not set
# CONFIG_CHELSIO_T3 is not set
# CONFIG_CHELSIO_T4 is not set
# CONFIG_CHELSIO_T4VF is not set
CONFIG_NET_VENDOR_CISCO=y
# CONFIG_ENIC is not set
CONFIG_NET_VENDOR_CORTINA=y
CONFIG_NET_VENDOR_DAVICOM=y
# CONFIG_DM9051 is not set
# CONFIG_DNET is not set
CONFIG_NET_VENDOR_DEC=y
# CONFIG_NET_TULIP is not set
CONFIG_NET_VENDOR_DLINK=y
# CONFIG_DL2K is not set
# CONFIG_SUNDANCE is not set
CONFIG_NET_VENDOR_EMULEX=y
# CONFIG_BE2NET is not set
CONFIG_NET_VENDOR_ENGLEDER=y
# CONFIG_TSNEP is not set
CONFIG_NET_VENDOR_EZCHIP=y
CONFIG_NET_VENDOR_FUNGIBLE=y
# CONFIG_FUN_ETH is not set
CONFIG_NET_VENDOR_GOOGLE=y
# CONFIG_GVE is not set
CONFIG_NET_VENDOR_HUAWEI=y
# CONFIG_HINIC is not set
CONFIG_NET_VENDOR_I825XX=y
CONFIG_NET_VENDOR_INTEL=y
# CONFIG_E100 is not set
CONFIG_E1000=y
CONFIG_E1000E=y
CONFIG_E1000E_HWTS=y
CONFIG_IGB=y
CONFIG_IGB_HWMON=y
# CONFIG_IGBVF is not set
# CONFIG_IXGB is not set
CONFIG_IXGBE=y
CONFIG_IXGBE_HWMON=y
# CONFIG_IXGBE_DCB is not set
# CONFIG_IXGBE_IPSEC is not set
# CONFIG_IXGBEVF is not set
CONFIG_I40E=y
# CONFIG_I40E_DCB is not set
# CONFIG_I40EVF is not set
# CONFIG_ICE is not set
# CONFIG_FM10K is not set
CONFIG_IGC=y
CONFIG_NET_VENDOR_WANGXUN=y
# CONFIG_NGBE is not set
# CONFIG_TXGBE is not set
# CONFIG_JME is not set
CONFIG_NET_VENDOR_ADI=y
# CONFIG_ADIN1110 is not set
CONFIG_NET_VENDOR_LITEX=y
CONFIG_NET_VENDOR_MARVELL=y
# CONFIG_MVMDIO is not set
# CONFIG_SKGE is not set
# CONFIG_SKY2 is not set
# CONFIG_OCTEON_EP is not set
# CONFIG_PRESTERA is not set
CONFIG_NET_VENDOR_MELLANOX=y
# CONFIG_MLX4_EN is not set
# CONFIG_MLX5_CORE is not set
# CONFIG_MLXSW_CORE is not set
# CONFIG_MLXFW is not set
CONFIG_NET_VENDOR_MICREL=y
# CONFIG_KS8842 is not set
# CONFIG_KS8851 is not set
# CONFIG_KS8851_MLL is not set
# CONFIG_KSZ884X_PCI is not set
CONFIG_NET_VENDOR_MICROCHIP=y
# CONFIG_ENC28J60 is not set
# CONFIG_ENCX24J600 is not set
# CONFIG_LAN743X is not set
# CONFIG_VCAP is not set
CONFIG_NET_VENDOR_MICROSEMI=y
CONFIG_NET_VENDOR_MICROSOFT=y
CONFIG_NET_VENDOR_MYRI=y
# CONFIG_MYRI10GE is not set
CONFIG_NET_VENDOR_NI=y
# CONFIG_NI_XGE_MANAGEMENT_ENET is not set
CONFIG_NET_VENDOR_NATSEMI=y
# CONFIG_NATSEMI is not set
# CONFIG_NS83820 is not set
CONFIG_NET_VENDOR_NETERION=y
# CONFIG_S2IO is not set
CONFIG_NET_VENDOR_NETRONOME=y
# CONFIG_NFP is not set
CONFIG_NET_VENDOR_8390=y
# CONFIG_NE2K_PCI is not set
CONFIG_NET_VENDOR_NVIDIA=y
# CONFIG_FORCEDETH is not set
CONFIG_NET_VENDOR_OKI=y
# CONFIG_ETHOC is not set
CONFIG_NET_VENDOR_PACKET_ENGINES=y
# CONFIG_HAMACHI is not set
# CONFIG_YELLOWFIN is not set
CONFIG_NET_VENDOR_PENSANDO=y
# CONFIG_IONIC is not set
CONFIG_NET_VENDOR_QLOGIC=y
# CONFIG_QLA3XXX is not set
# CONFIG_QLCNIC is not set
# CONFIG_NETXEN_NIC is not set
# CONFIG_QED is not set
CONFIG_NET_VENDOR_BROCADE=y
# CONFIG_BNA is not set
CONFIG_NET_VENDOR_QUALCOMM=y
# CONFIG_QCOM_EMAC is not set
# CONFIG_RMNET is not set
CONFIG_NET_VENDOR_RDC=y
# CONFIG_R6040 is not set
CONFIG_NET_VENDOR_REALTEK=y
# CONFIG_ATP is not set
# CONFIG_8139CP is not set
# CONFIG_8139TOO is not set
CONFIG_R8169=y
CONFIG_NET_VENDOR_RENESAS=y
CONFIG_NET_VENDOR_ROCKER=y
# CONFIG_ROCKER is not set
CONFIG_NET_VENDOR_SAMSUNG=y
# CONFIG_SXGBE_ETH is not set
CONFIG_NET_VENDOR_SEEQ=y
CONFIG_NET_VENDOR_SILAN=y
# CONFIG_SC92031 is not set
CONFIG_NET_VENDOR_SIS=y
# CONFIG_SIS900 is not set
# CONFIG_SIS190 is not set
CONFIG_NET_VENDOR_SOLARFLARE=y
# CONFIG_SFC is not set
# CONFIG_SFC_FALCON is not set
# CONFIG_SFC_SIENA is not set
CONFIG_NET_VENDOR_SMSC=y
# CONFIG_EPIC100 is not set
# CONFIG_SMSC911X is not set
# CONFIG_SMSC9420 is not set
CONFIG_NET_VENDOR_SOCIONEXT=y
CONFIG_NET_VENDOR_STMICRO=y
# CONFIG_STMMAC_ETH is not set
CONFIG_NET_VENDOR_SUN=y
# CONFIG_HAPPYMEAL is not set
# CONFIG_SUNGEM is not set
# CONFIG_CASSINI is not set
# CONFIG_NIU is not set
CONFIG_NET_VENDOR_SYNOPSYS=y
# CONFIG_DWC_XLGMAC is not set
CONFIG_NET_VENDOR_TEHUTI=y
# CONFIG_TEHUTI is not set
CONFIG_NET_VENDOR_TI=y
# CONFIG_TI_CPSW_PHY_SEL is not set
# CONFIG_TLAN is not set
CONFIG_NET_VENDOR_VERTEXCOM=y
# CONFIG_MSE102X is not set
CONFIG_NET_VENDOR_VIA=y
# CONFIG_VIA_RHINE is not set
# CONFIG_VIA_VELOCITY is not set
CONFIG_NET_VENDOR_WIZNET=y
# CONFIG_WIZNET_W5100 is not set
# CONFIG_WIZNET_W5300 is not set
CONFIG_NET_VENDOR_XILINX=y
# CONFIG_XILINX_EMACLITE is not set
# CONFIG_XILINX_AXI_EMAC is not set
# CONFIG_XILINX_LL_TEMAC is not set
# CONFIG_FDDI is not set
# CONFIG_HIPPI is not set
# CONFIG_NET_SB1000 is not set
CONFIG_PHYLINK=y
CONFIG_PHYLIB=y
CONFIG_SWPHY=y
# CONFIG_LED_TRIGGER_PHY is not set
CONFIG_FIXED_PHY=y
# CONFIG_SFP is not set

#
# MII PHY device drivers
#
# CONFIG_AMD_PHY is not set
# CONFIG_ADIN_PHY is not set
# CONFIG_ADIN1100_PHY is not set
# CONFIG_AQUANTIA_PHY is not set
CONFIG_AX88796B_PHY=y
# CONFIG_BROADCOM_PHY is not set
# CONFIG_BCM54140_PHY is not set
# CONFIG_BCM7XXX_PHY is not set
# CONFIG_BCM84881_PHY is not set
# CONFIG_BCM87XX_PHY is not set
# CONFIG_CICADA_PHY is not set
# CONFIG_CORTINA_PHY is not set
# CONFIG_DAVICOM_PHY is not set
# CONFIG_ICPLUS_PHY is not set
# CONFIG_LXT_PHY is not set
# CONFIG_INTEL_XWAY_PHY is not set
# CONFIG_LSI_ET1011C_PHY is not set
# CONFIG_MARVELL_PHY is not set
# CONFIG_MARVELL_10G_PHY is not set
# CONFIG_MARVELL_88X2222_PHY is not set
# CONFIG_MAXLINEAR_GPHY is not set
# CONFIG_MEDIATEK_GE_PHY is not set
# CONFIG_MICREL_PHY is not set
# CONFIG_MICROCHIP_PHY is not set
# CONFIG_MICROCHIP_T1_PHY is not set
# CONFIG_MICROSEMI_PHY is not set
# CONFIG_MOTORCOMM_PHY is not set
# CONFIG_NATIONAL_PHY is not set
# CONFIG_NXP_C45_TJA11XX_PHY is not set
# CONFIG_NXP_TJA11XX_PHY is not set
# CONFIG_QSEMI_PHY is not set
CONFIG_REALTEK_PHY=y
# CONFIG_RENESAS_PHY is not set
# CONFIG_ROCKCHIP_PHY is not set
# CONFIG_SMSC_PHY is not set
# CONFIG_STE10XP is not set
# CONFIG_TERANETICS_PHY is not set
# CONFIG_DP83822_PHY is not set
# CONFIG_DP83TC811_PHY is not set
# CONFIG_DP83848_PHY is not set
# CONFIG_DP83867_PHY is not set
# CONFIG_DP83869_PHY is not set
# CONFIG_DP83TD510_PHY is not set
# CONFIG_VITESSE_PHY is not set
# CONFIG_XILINX_GMII2RGMII is not set
# CONFIG_MICREL_KS8995MA is not set
# CONFIG_PSE_CONTROLLER is not set
CONFIG_CAN_DEV=m
CONFIG_CAN_VCAN=m
# CONFIG_CAN_VXCAN is not set
CONFIG_CAN_NETLINK=y
CONFIG_CAN_CALC_BITTIMING=y
# CONFIG_CAN_CAN327 is not set
# CONFIG_CAN_KVASER_PCIEFD is not set
CONFIG_CAN_SLCAN=m
CONFIG_CAN_C_CAN=m
CONFIG_CAN_C_CAN_PLATFORM=m
CONFIG_CAN_C_CAN_PCI=m
CONFIG_CAN_CC770=m
# CONFIG_CAN_CC770_ISA is not set
CONFIG_CAN_CC770_PLATFORM=m
# CONFIG_CAN_CTUCANFD_PCI is not set
# CONFIG_CAN_IFI_CANFD is not set
# CONFIG_CAN_M_CAN is not set
# CONFIG_CAN_PEAK_PCIEFD is not set
CONFIG_CAN_SJA1000=m
CONFIG_CAN_EMS_PCI=m
# CONFIG_CAN_F81601 is not set
CONFIG_CAN_KVASER_PCI=m
CONFIG_CAN_PEAK_PCI=m
CONFIG_CAN_PEAK_PCIEC=y
CONFIG_CAN_PLX_PCI=m
# CONFIG_CAN_SJA1000_ISA is not set
# CONFIG_CAN_SJA1000_PLATFORM is not set
CONFIG_CAN_SOFTING=m

#
# CAN SPI interfaces
#
# CONFIG_CAN_HI311X is not set
# CONFIG_CAN_MCP251X is not set
# CONFIG_CAN_MCP251XFD is not set
# end of CAN SPI interfaces

#
# CAN USB interfaces
#
# CONFIG_CAN_8DEV_USB is not set
# CONFIG_CAN_EMS_USB is not set
# CONFIG_CAN_ESD_USB is not set
# CONFIG_CAN_ETAS_ES58X is not set
# CONFIG_CAN_GS_USB is not set
# CONFIG_CAN_KVASER_USB is not set
# CONFIG_CAN_MCBA_USB is not set
# CONFIG_CAN_PEAK_USB is not set
# CONFIG_CAN_UCAN is not set
# end of CAN USB interfaces

# CONFIG_CAN_DEBUG_DEVICES is not set
CONFIG_MDIO_DEVICE=y
CONFIG_MDIO_BUS=y
CONFIG_FWNODE_MDIO=y
CONFIG_ACPI_MDIO=y
CONFIG_MDIO_DEVRES=y
# CONFIG_MDIO_BITBANG is not set
# CONFIG_MDIO_BCM_UNIMAC is not set
# CONFIG_MDIO_MVUSB is not set
# CONFIG_MDIO_THUNDER is not set

#
# MDIO Multiplexers
#

#
# PCS device drivers
#
# end of PCS device drivers

# CONFIG_PLIP is not set
# CONFIG_PPP is not set
# CONFIG_SLIP is not set
CONFIG_USB_NET_DRIVERS=y
# CONFIG_USB_CATC is not set
# CONFIG_USB_KAWETH is not set
# CONFIG_USB_PEGASUS is not set
# CONFIG_USB_RTL8150 is not set
CONFIG_USB_RTL8152=y
# CONFIG_USB_LAN78XX is not set
CONFIG_USB_USBNET=y
CONFIG_USB_NET_AX8817X=y
CONFIG_USB_NET_AX88179_178A=y
# CONFIG_USB_NET_CDCETHER is not set
# CONFIG_USB_NET_CDC_EEM is not set
# CONFIG_USB_NET_CDC_NCM is not set
# CONFIG_USB_NET_HUAWEI_CDC_NCM is not set
# CONFIG_USB_NET_CDC_MBIM is not set
# CONFIG_USB_NET_DM9601 is not set
# CONFIG_USB_NET_SR9700 is not set
# CONFIG_USB_NET_SR9800 is not set
# CONFIG_USB_NET_SMSC75XX is not set
# CONFIG_USB_NET_SMSC95XX is not set
# CONFIG_USB_NET_GL620A is not set
# CONFIG_USB_NET_NET1080 is not set
# CONFIG_USB_NET_PLUSB is not set
# CONFIG_USB_NET_MCS7830 is not set
# CONFIG_USB_NET_RNDIS_HOST is not set
# CONFIG_USB_NET_CDC_SUBSET is not set
# CONFIG_USB_NET_ZAURUS is not set
# CONFIG_USB_NET_CX82310_ETH is not set
# CONFIG_USB_NET_KALMIA is not set
# CONFIG_USB_NET_QMI_WWAN is not set
# CONFIG_USB_HSO is not set
# CONFIG_USB_NET_INT51X1 is not set
# CONFIG_USB_IPHETH is not set
# CONFIG_USB_SIERRA_NET is not set
# CONFIG_USB_NET_CH9200 is not set
# CONFIG_USB_NET_AQC111 is not set
CONFIG_WLAN=y
CONFIG_WLAN_VENDOR_ADMTEK=y
# CONFIG_ADM8211 is not set
CONFIG_WLAN_VENDOR_ATH=y
# CONFIG_ATH_DEBUG is not set
# CONFIG_ATH5K is not set
# CONFIG_ATH5K_PCI is not set
# CONFIG_ATH9K is not set
# CONFIG_ATH9K_HTC is not set
# CONFIG_CARL9170 is not set
# CONFIG_ATH6KL is not set
# CONFIG_AR5523 is not set
# CONFIG_WIL6210 is not set
# CONFIG_ATH10K is not set
# CONFIG_WCN36XX is not set
# CONFIG_ATH11K is not set
CONFIG_WLAN_VENDOR_ATMEL=y
# CONFIG_ATMEL is not set
# CONFIG_AT76C50X_USB is not set
CONFIG_WLAN_VENDOR_BROADCOM=y
# CONFIG_B43 is not set
# CONFIG_B43LEGACY is not set
# CONFIG_BRCMSMAC is not set
# CONFIG_BRCMFMAC is not set
CONFIG_WLAN_VENDOR_CISCO=y
# CONFIG_AIRO is not set
CONFIG_WLAN_VENDOR_INTEL=y
# CONFIG_IPW2100 is not set
# CONFIG_IPW2200 is not set
# CONFIG_IWL4965 is not set
# CONFIG_IWL3945 is not set
# CONFIG_IWLWIFI is not set
CONFIG_WLAN_VENDOR_INTERSIL=y
# CONFIG_HOSTAP is not set
# CONFIG_HERMES is not set
# CONFIG_P54_COMMON is not set
CONFIG_WLAN_VENDOR_MARVELL=y
# CONFIG_LIBERTAS is not set
# CONFIG_LIBERTAS_THINFIRM is not set
# CONFIG_MWIFIEX is not set
# CONFIG_MWL8K is not set
# CONFIG_WLAN_VENDOR_MEDIATEK is not set
CONFIG_WLAN_VENDOR_MICROCHIP=y
# CONFIG_WILC1000_SDIO is not set
# CONFIG_WILC1000_SPI is not set
CONFIG_WLAN_VENDOR_PURELIFI=y
# CONFIG_PLFXLC is not set
CONFIG_WLAN_VENDOR_RALINK=y
# CONFIG_RT2X00 is not set
CONFIG_WLAN_VENDOR_REALTEK=y
# CONFIG_RTL8180 is not set
# CONFIG_RTL8187 is not set
CONFIG_RTL_CARDS=m
# CONFIG_RTL8192CE is not set
# CONFIG_RTL8192SE is not set
# CONFIG_RTL8192DE is not set
# CONFIG_RTL8723AE is not set
# CONFIG_RTL8723BE is not set
# CONFIG_RTL8188EE is not set
# CONFIG_RTL8192EE is not set
# CONFIG_RTL8821AE is not set
# CONFIG_RTL8192CU is not set
# CONFIG_RTL8XXXU is not set
# CONFIG_RTW88 is not set
# CONFIG_RTW89 is not set
CONFIG_WLAN_VENDOR_RSI=y
# CONFIG_RSI_91X is not set
CONFIG_WLAN_VENDOR_SILABS=y
# CONFIG_WFX is not set
CONFIG_WLAN_VENDOR_ST=y
# CONFIG_CW1200 is not set
CONFIG_WLAN_VENDOR_TI=y
# CONFIG_WL1251 is not set
# CONFIG_WL12XX is not set
# CONFIG_WL18XX is not set
# CONFIG_WLCORE is not set
CONFIG_WLAN_VENDOR_ZYDAS=y
# CONFIG_USB_ZD1201 is not set
# CONFIG_ZD1211RW is not set
CONFIG_WLAN_VENDOR_QUANTENNA=y
# CONFIG_QTNFMAC_PCIE is not set
CONFIG_MAC80211_HWSIM=m
# CONFIG_USB_NET_RNDIS_WLAN is not set
# CONFIG_VIRT_WIFI is not set
# CONFIG_WAN is not set

#
# Wireless WAN
#
# CONFIG_WWAN is not set
# end of Wireless WAN

# CONFIG_VMXNET3 is not set
# CONFIG_FUJITSU_ES is not set
# CONFIG_NETDEVSIM is not set
CONFIG_NET_FAILOVER=m
# CONFIG_ISDN is not set

#
# Input device support
#
CONFIG_INPUT=y
CONFIG_INPUT_LEDS=y
CONFIG_INPUT_FF_MEMLESS=m
CONFIG_INPUT_SPARSEKMAP=m
# CONFIG_INPUT_MATRIXKMAP is not set
CONFIG_INPUT_VIVALDIFMAP=y

#
# Userland interfaces
#
CONFIG_INPUT_MOUSEDEV=y
# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768
CONFIG_INPUT_JOYDEV=m
CONFIG_INPUT_EVDEV=y
# CONFIG_INPUT_EVBUG is not set

#
# Input Device Drivers
#
CONFIG_INPUT_KEYBOARD=y
# CONFIG_KEYBOARD_ADP5588 is not set
# CONFIG_KEYBOARD_ADP5589 is not set
# CONFIG_KEYBOARD_APPLESPI is not set
CONFIG_KEYBOARD_ATKBD=y
# CONFIG_KEYBOARD_QT1050 is not set
# CONFIG_KEYBOARD_QT1070 is not set
# CONFIG_KEYBOARD_QT2160 is not set
# CONFIG_KEYBOARD_DLINK_DIR685 is not set
# CONFIG_KEYBOARD_LKKBD is not set
# CONFIG_KEYBOARD_GPIO is not set
# CONFIG_KEYBOARD_GPIO_POLLED is not set
# CONFIG_KEYBOARD_TCA6416 is not set
# CONFIG_KEYBOARD_TCA8418 is not set
# CONFIG_KEYBOARD_MATRIX is not set
# CONFIG_KEYBOARD_LM8323 is not set
# CONFIG_KEYBOARD_LM8333 is not set
# CONFIG_KEYBOARD_MAX7359 is not set
# CONFIG_KEYBOARD_MCS is not set
# CONFIG_KEYBOARD_MPR121 is not set
# CONFIG_KEYBOARD_NEWTON is not set
# CONFIG_KEYBOARD_OPENCORES is not set
# CONFIG_KEYBOARD_SAMSUNG is not set
# CONFIG_KEYBOARD_STOWAWAY is not set
# CONFIG_KEYBOARD_SUNKBD is not set
# CONFIG_KEYBOARD_TM2_TOUCHKEY is not set
# CONFIG_KEYBOARD_XTKBD is not set
# CONFIG_KEYBOARD_CYPRESS_SF is not set
CONFIG_INPUT_MOUSE=y
CONFIG_MOUSE_PS2=y
CONFIG_MOUSE_PS2_ALPS=y
CONFIG_MOUSE_PS2_BYD=y
CONFIG_MOUSE_PS2_LOGIPS2PP=y
CONFIG_MOUSE_PS2_SYNAPTICS=y
CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS=y
CONFIG_MOUSE_PS2_CYPRESS=y
CONFIG_MOUSE_PS2_LIFEBOOK=y
CONFIG_MOUSE_PS2_TRACKPOINT=y
CONFIG_MOUSE_PS2_ELANTECH=y
CONFIG_MOUSE_PS2_ELANTECH_SMBUS=y
CONFIG_MOUSE_PS2_SENTELIC=y
# CONFIG_MOUSE_PS2_TOUCHKIT is not set
CONFIG_MOUSE_PS2_FOCALTECH=y
CONFIG_MOUSE_PS2_VMMOUSE=y
CONFIG_MOUSE_PS2_SMBUS=y
CONFIG_MOUSE_SERIAL=m
# CONFIG_MOUSE_APPLETOUCH is not set
# CONFIG_MOUSE_BCM5974 is not set
CONFIG_MOUSE_CYAPA=m
CONFIG_MOUSE_ELAN_I2C=m
CONFIG_MOUSE_ELAN_I2C_I2C=y
CONFIG_MOUSE_ELAN_I2C_SMBUS=y
CONFIG_MOUSE_VSXXXAA=m
# CONFIG_MOUSE_GPIO is not set
CONFIG_MOUSE_SYNAPTICS_I2C=m
# CONFIG_MOUSE_SYNAPTICS_USB is not set
# CONFIG_INPUT_JOYSTICK is not set
# CONFIG_INPUT_TABLET is not set
# CONFIG_INPUT_TOUCHSCREEN is not set
CONFIG_INPUT_MISC=y
# CONFIG_INPUT_AD714X is not set
# CONFIG_INPUT_BMA150 is not set
# CONFIG_INPUT_E3X0_BUTTON is not set
# CONFIG_INPUT_PCSPKR is not set
# CONFIG_INPUT_MMA8450 is not set
# CONFIG_INPUT_APANEL is not set
# CONFIG_INPUT_GPIO_BEEPER is not set
# CONFIG_INPUT_GPIO_DECODER is not set
# CONFIG_INPUT_GPIO_VIBRA is not set
# CONFIG_INPUT_ATLAS_BTNS is not set
# CONFIG_INPUT_ATI_REMOTE2 is not set
# CONFIG_INPUT_KEYSPAN_REMOTE is not set
# CONFIG_INPUT_KXTJ9 is not set
# CONFIG_INPUT_POWERMATE is not set
# CONFIG_INPUT_YEALINK is not set
# CONFIG_INPUT_CM109 is not set
CONFIG_INPUT_UINPUT=y
# CONFIG_INPUT_PCF8574 is not set
# CONFIG_INPUT_PWM_BEEPER is not set
# CONFIG_INPUT_PWM_VIBRA is not set
# CONFIG_INPUT_GPIO_ROTARY_ENCODER is not set
# CONFIG_INPUT_DA7280_HAPTICS is not set
# CONFIG_INPUT_ADXL34X is not set
# CONFIG_INPUT_IMS_PCU is not set
# CONFIG_INPUT_IQS269A is not set
# CONFIG_INPUT_IQS626A is not set
# CONFIG_INPUT_IQS7222 is not set
# CONFIG_INPUT_CMA3000 is not set
# CONFIG_INPUT_IDEAPAD_SLIDEBAR is not set
# CONFIG_INPUT_DRV260X_HAPTICS is not set
# CONFIG_INPUT_DRV2665_HAPTICS is not set
# CONFIG_INPUT_DRV2667_HAPTICS is not set
CONFIG_RMI4_CORE=m
CONFIG_RMI4_I2C=m
CONFIG_RMI4_SPI=m
CONFIG_RMI4_SMB=m
CONFIG_RMI4_F03=y
CONFIG_RMI4_F03_SERIO=m
CONFIG_RMI4_2D_SENSOR=y
CONFIG_RMI4_F11=y
CONFIG_RMI4_F12=y
CONFIG_RMI4_F30=y
CONFIG_RMI4_F34=y
# CONFIG_RMI4_F3A is not set
CONFIG_RMI4_F55=y

#
# Hardware I/O ports
#
CONFIG_SERIO=y
CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
CONFIG_SERIO_I8042=y
CONFIG_SERIO_SERPORT=y
# CONFIG_SERIO_CT82C710 is not set
# CONFIG_SERIO_PARKBD is not set
# CONFIG_SERIO_PCIPS2 is not set
CONFIG_SERIO_LIBPS2=y
CONFIG_SERIO_RAW=m
CONFIG_SERIO_ALTERA_PS2=m
# CONFIG_SERIO_PS2MULT is not set
CONFIG_SERIO_ARC_PS2=m
# CONFIG_SERIO_GPIO_PS2 is not set
# CONFIG_USERIO is not set
# CONFIG_GAMEPORT is not set
# end of Hardware I/O ports
# end of Input device support

#
# Character devices
#
CONFIG_TTY=y
CONFIG_VT=y
CONFIG_CONSOLE_TRANSLATIONS=y
CONFIG_VT_CONSOLE=y
CONFIG_VT_CONSOLE_SLEEP=y
CONFIG_HW_CONSOLE=y
CONFIG_VT_HW_CONSOLE_BINDING=y
CONFIG_UNIX98_PTYS=y
# CONFIG_LEGACY_PTYS is not set
CONFIG_LEGACY_TIOCSTI=y
CONFIG_LDISC_AUTOLOAD=y

#
# Serial drivers
#
CONFIG_SERIAL_EARLYCON=y
CONFIG_SERIAL_8250=y
# CONFIG_SERIAL_8250_DEPRECATED_OPTIONS is not set
CONFIG_SERIAL_8250_PNP=y
# CONFIG_SERIAL_8250_16550A_VARIANTS is not set
# CONFIG_SERIAL_8250_FINTEK is not set
CONFIG_SERIAL_8250_CONSOLE=y
CONFIG_SERIAL_8250_DMA=y
CONFIG_SERIAL_8250_PCI=y
CONFIG_SERIAL_8250_EXAR=y
CONFIG_SERIAL_8250_NR_UARTS=64
CONFIG_SERIAL_8250_RUNTIME_UARTS=4
CONFIG_SERIAL_8250_EXTENDED=y
CONFIG_SERIAL_8250_MANY_PORTS=y
CONFIG_SERIAL_8250_SHARE_IRQ=y
# CONFIG_SERIAL_8250_DETECT_IRQ is not set
CONFIG_SERIAL_8250_RSA=y
CONFIG_SERIAL_8250_DWLIB=y
CONFIG_SERIAL_8250_DW=y
# CONFIG_SERIAL_8250_RT288X is not set
CONFIG_SERIAL_8250_LPSS=y
CONFIG_SERIAL_8250_MID=y
CONFIG_SERIAL_8250_PERICOM=y

#
# Non-8250 serial port support
#
# CONFIG_SERIAL_MAX3100 is not set
# CONFIG_SERIAL_MAX310X is not set
# CONFIG_SERIAL_UARTLITE is not set
CONFIG_SERIAL_CORE=y
CONFIG_SERIAL_CORE_CONSOLE=y
CONFIG_SERIAL_JSM=m
# CONFIG_SERIAL_LANTIQ is not set
# CONFIG_SERIAL_SCCNXP is not set
# CONFIG_SERIAL_SC16IS7XX is not set
# CONFIG_SERIAL_ALTERA_JTAGUART is not set
# CONFIG_SERIAL_ALTERA_UART is not set
CONFIG_SERIAL_ARC=m
CONFIG_SERIAL_ARC_NR_PORTS=1
# CONFIG_SERIAL_RP2 is not set
# CONFIG_SERIAL_FSL_LPUART is not set
# CONFIG_SERIAL_FSL_LINFLEXUART is not set
# CONFIG_SERIAL_SPRD is not set
# end of Serial drivers

CONFIG_SERIAL_MCTRL_GPIO=y
CONFIG_SERIAL_NONSTANDARD=y
# CONFIG_MOXA_INTELLIO is not set
# CONFIG_MOXA_SMARTIO is not set
CONFIG_SYNCLINK_GT=m
CONFIG_N_HDLC=m
CONFIG_N_GSM=m
CONFIG_NOZOMI=m
# CONFIG_NULL_TTY is not set
CONFIG_HVC_DRIVER=y
# CONFIG_SERIAL_DEV_BUS is not set
# CONFIG_TTY_PRINTK is not set
CONFIG_PRINTER=m
# CONFIG_LP_CONSOLE is not set
CONFIG_PPDEV=m
CONFIG_VIRTIO_CONSOLE=m
CONFIG_IPMI_HANDLER=m
CONFIG_IPMI_DMI_DECODE=y
CONFIG_IPMI_PLAT_DATA=y
CONFIG_IPMI_PANIC_EVENT=y
CONFIG_IPMI_PANIC_STRING=y
CONFIG_IPMI_DEVICE_INTERFACE=m
CONFIG_IPMI_SI=m
CONFIG_IPMI_SSIF=m
CONFIG_IPMI_WATCHDOG=m
CONFIG_IPMI_POWEROFF=m
CONFIG_HW_RANDOM=y
CONFIG_HW_RANDOM_TIMERIOMEM=m
CONFIG_HW_RANDOM_INTEL=m
# CONFIG_HW_RANDOM_AMD is not set
# CONFIG_HW_RANDOM_BA431 is not set
CONFIG_HW_RANDOM_VIA=m
CONFIG_HW_RANDOM_VIRTIO=y
# CONFIG_HW_RANDOM_XIPHERA is not set
# CONFIG_APPLICOM is not set
# CONFIG_MWAVE is not set
CONFIG_DEVMEM=y
CONFIG_NVRAM=y
CONFIG_DEVPORT=y
CONFIG_HPET=y
CONFIG_HPET_MMAP=y
# CONFIG_HPET_MMAP_DEFAULT is not set
CONFIG_HANGCHECK_TIMER=m
CONFIG_UV_MMTIMER=m
CONFIG_TCG_TPM=y
CONFIG_HW_RANDOM_TPM=y
CONFIG_TCG_TIS_CORE=y
CONFIG_TCG_TIS=y
# CONFIG_TCG_TIS_SPI is not set
# CONFIG_TCG_TIS_I2C is not set
# CONFIG_TCG_TIS_I2C_CR50 is not set
CONFIG_TCG_TIS_I2C_ATMEL=m
CONFIG_TCG_TIS_I2C_INFINEON=m
CONFIG_TCG_TIS_I2C_NUVOTON=m
CONFIG_TCG_NSC=m
CONFIG_TCG_ATMEL=m
CONFIG_TCG_INFINEON=m
CONFIG_TCG_CRB=y
# CONFIG_TCG_VTPM_PROXY is not set
CONFIG_TCG_TIS_ST33ZP24=m
CONFIG_TCG_TIS_ST33ZP24_I2C=m
# CONFIG_TCG_TIS_ST33ZP24_SPI is not set
CONFIG_TELCLOCK=m
# CONFIG_XILLYBUS is not set
# CONFIG_XILLYUSB is not set
# end of Character devices

#
# I2C support
#
CONFIG_I2C=y
CONFIG_ACPI_I2C_OPREGION=y
CONFIG_I2C_BOARDINFO=y
CONFIG_I2C_COMPAT=y
CONFIG_I2C_CHARDEV=m
CONFIG_I2C_MUX=m

#
# Multiplexer I2C Chip support
#
# CONFIG_I2C_MUX_GPIO is not set
# CONFIG_I2C_MUX_LTC4306 is not set
# CONFIG_I2C_MUX_PCA9541 is not set
# CONFIG_I2C_MUX_PCA954x is not set
# CONFIG_I2C_MUX_REG is not set
CONFIG_I2C_MUX_MLXCPLD=m
# end of Multiplexer I2C Chip support

CONFIG_I2C_HELPER_AUTO=y
CONFIG_I2C_SMBUS=m
CONFIG_I2C_ALGOBIT=y
CONFIG_I2C_ALGOPCA=m

#
# I2C Hardware Bus support
#

#
# PC SMBus host controller drivers
#
# CONFIG_I2C_ALI1535 is not set
# CONFIG_I2C_ALI1563 is not set
# CONFIG_I2C_ALI15X3 is not set
# CONFIG_I2C_AMD756 is not set
# CONFIG_I2C_AMD8111 is not set
# CONFIG_I2C_AMD_MP2 is not set
CONFIG_I2C_I801=m
CONFIG_I2C_ISCH=m
CONFIG_I2C_ISMT=m
CONFIG_I2C_PIIX4=m
CONFIG_I2C_NFORCE2=m
CONFIG_I2C_NFORCE2_S4985=m
# CONFIG_I2C_NVIDIA_GPU is not set
# CONFIG_I2C_SIS5595 is not set
# CONFIG_I2C_SIS630 is not set
CONFIG_I2C_SIS96X=m
CONFIG_I2C_VIA=m
CONFIG_I2C_VIAPRO=m

#
# ACPI drivers
#
CONFIG_I2C_SCMI=m

#
# I2C system bus drivers (mostly embedded / system-on-chip)
#
# CONFIG_I2C_CBUS_GPIO is not set
CONFIG_I2C_DESIGNWARE_CORE=m
# CONFIG_I2C_DESIGNWARE_SLAVE is not set
CONFIG_I2C_DESIGNWARE_PLATFORM=m
# CONFIG_I2C_DESIGNWARE_AMDPSP is not set
CONFIG_I2C_DESIGNWARE_BAYTRAIL=y
# CONFIG_I2C_DESIGNWARE_PCI is not set
# CONFIG_I2C_EMEV2 is not set
# CONFIG_I2C_GPIO is not set
# CONFIG_I2C_OCORES is not set
CONFIG_I2C_PCA_PLATFORM=m
CONFIG_I2C_SIMTEC=m
# CONFIG_I2C_XILINX is not set

#
# External I2C/SMBus adapter drivers
#
# CONFIG_I2C_DIOLAN_U2C is not set
# CONFIG_I2C_CP2615 is not set
CONFIG_I2C_PARPORT=m
# CONFIG_I2C_PCI1XXXX is not set
# CONFIG_I2C_ROBOTFUZZ_OSIF is not set
# CONFIG_I2C_TAOS_EVM is not set
# CONFIG_I2C_TINY_USB is not set

#
# Other I2C/SMBus bus drivers
#
CONFIG_I2C_MLXCPLD=m
# CONFIG_I2C_VIRTIO is not set
# end of I2C Hardware Bus support

CONFIG_I2C_STUB=m
# CONFIG_I2C_SLAVE is not set
# CONFIG_I2C_DEBUG_CORE is not set
# CONFIG_I2C_DEBUG_ALGO is not set
# CONFIG_I2C_DEBUG_BUS is not set
# end of I2C support

# CONFIG_I3C is not set
CONFIG_SPI=y
# CONFIG_SPI_DEBUG is not set
CONFIG_SPI_MASTER=y
# CONFIG_SPI_MEM is not set

#
# SPI Master Controller Drivers
#
# CONFIG_SPI_ALTERA is not set
# CONFIG_SPI_AXI_SPI_ENGINE is not set
# CONFIG_SPI_BITBANG is not set
# CONFIG_SPI_BUTTERFLY is not set
# CONFIG_SPI_CADENCE is not set
# CONFIG_SPI_DESIGNWARE is not set
# CONFIG_SPI_NXP_FLEXSPI is not set
# CONFIG_SPI_GPIO is not set
# CONFIG_SPI_LM70_LLP is not set
# CONFIG_SPI_MICROCHIP_CORE is not set
# CONFIG_SPI_MICROCHIP_CORE_QSPI is not set
# CONFIG_SPI_LANTIQ_SSC is not set
# CONFIG_SPI_OC_TINY is not set
# CONFIG_SPI_PCI1XXXX is not set
# CONFIG_SPI_PXA2XX is not set
# CONFIG_SPI_ROCKCHIP is not set
# CONFIG_SPI_SC18IS602 is not set
# CONFIG_SPI_SIFIVE is not set
# CONFIG_SPI_MXIC is not set
# CONFIG_SPI_XCOMM is not set
# CONFIG_SPI_XILINX is not set
# CONFIG_SPI_ZYNQMP_GQSPI is not set
# CONFIG_SPI_AMD is not set

#
# SPI Multiplexer support
#
# CONFIG_SPI_MUX is not set

#
# SPI Protocol Masters
#
# CONFIG_SPI_SPIDEV is not set
# CONFIG_SPI_LOOPBACK_TEST is not set
# CONFIG_SPI_TLE62X0 is not set
# CONFIG_SPI_SLAVE is not set
CONFIG_SPI_DYNAMIC=y
# CONFIG_SPMI is not set
# CONFIG_HSI is not set
CONFIG_PPS=y
# CONFIG_PPS_DEBUG is not set

#
# PPS clients support
#
# CONFIG_PPS_CLIENT_KTIMER is not set
CONFIG_PPS_CLIENT_LDISC=m
CONFIG_PPS_CLIENT_PARPORT=m
CONFIG_PPS_CLIENT_GPIO=m

#
# PPS generators support
#

#
# PTP clock support
#
CONFIG_PTP_1588_CLOCK=y
CONFIG_PTP_1588_CLOCK_OPTIONAL=y
# CONFIG_DP83640_PHY is not set
# CONFIG_PTP_1588_CLOCK_INES is not set
CONFIG_PTP_1588_CLOCK_KVM=m
# CONFIG_PTP_1588_CLOCK_IDT82P33 is not set
# CONFIG_PTP_1588_CLOCK_IDTCM is not set
# CONFIG_PTP_1588_CLOCK_VMW is not set
# end of PTP clock support

CONFIG_PINCTRL=y
# CONFIG_DEBUG_PINCTRL is not set
# CONFIG_PINCTRL_AMD is not set
# CONFIG_PINCTRL_CY8C95X0 is not set
# CONFIG_PINCTRL_MCP23S08 is not set
# CONFIG_PINCTRL_SX150X is not set

#
# Intel pinctrl drivers
#
# CONFIG_PINCTRL_BAYTRAIL is not set
# CONFIG_PINCTRL_CHERRYVIEW is not set
# CONFIG_PINCTRL_LYNXPOINT is not set
# CONFIG_PINCTRL_ALDERLAKE is not set
# CONFIG_PINCTRL_BROXTON is not set
# CONFIG_PINCTRL_CANNONLAKE is not set
# CONFIG_PINCTRL_CEDARFORK is not set
# CONFIG_PINCTRL_DENVERTON is not set
# CONFIG_PINCTRL_ELKHARTLAKE is not set
# CONFIG_PINCTRL_EMMITSBURG is not set
# CONFIG_PINCTRL_GEMINILAKE is not set
# CONFIG_PINCTRL_ICELAKE is not set
# CONFIG_PINCTRL_JASPERLAKE is not set
# CONFIG_PINCTRL_LAKEFIELD is not set
# CONFIG_PINCTRL_LEWISBURG is not set
# CONFIG_PINCTRL_METEORLAKE is not set
# CONFIG_PINCTRL_SUNRISEPOINT is not set
# CONFIG_PINCTRL_TIGERLAKE is not set
# end of Intel pinctrl drivers

#
# Renesas pinctrl drivers
#
# end of Renesas pinctrl drivers

CONFIG_GPIOLIB=y
CONFIG_GPIOLIB_FASTPATH_LIMIT=512
CONFIG_GPIO_ACPI=y
# CONFIG_DEBUG_GPIO is not set
CONFIG_GPIO_SYSFS=y
CONFIG_GPIO_CDEV=y
CONFIG_GPIO_CDEV_V1=y

#
# Memory mapped GPIO drivers
#
# CONFIG_GPIO_AMDPT is not set
# CONFIG_GPIO_DWAPB is not set
# CONFIG_GPIO_EXAR is not set
# CONFIG_GPIO_GENERIC_PLATFORM is not set
CONFIG_GPIO_ICH=m
# CONFIG_GPIO_MB86S7X is not set
# CONFIG_GPIO_VX855 is not set
# CONFIG_GPIO_AMD_FCH is not set
# end of Memory mapped GPIO drivers

#
# Port-mapped I/O GPIO drivers
#
# CONFIG_GPIO_F7188X is not set
# CONFIG_GPIO_IT87 is not set
# CONFIG_GPIO_SCH is not set
# CONFIG_GPIO_SCH311X is not set
# CONFIG_GPIO_WINBOND is not set
# CONFIG_GPIO_WS16C48 is not set
# end of Port-mapped I/O GPIO drivers

#
# I2C GPIO expanders
#
# CONFIG_GPIO_MAX7300 is not set
# CONFIG_GPIO_MAX732X is not set
# CONFIG_GPIO_PCA953X is not set
# CONFIG_GPIO_PCA9570 is not set
# CONFIG_GPIO_PCF857X is not set
# CONFIG_GPIO_TPIC2810 is not set
# end of I2C GPIO expanders

#
# MFD GPIO expanders
#
# end of MFD GPIO expanders

#
# PCI GPIO expanders
#
# CONFIG_GPIO_AMD8111 is not set
# CONFIG_GPIO_BT8XX is not set
# CONFIG_GPIO_ML_IOH is not set
# CONFIG_GPIO_PCI_IDIO_16 is not set
# CONFIG_GPIO_PCIE_IDIO_24 is not set
# CONFIG_GPIO_RDC321X is not set
# end of PCI GPIO expanders

#
# SPI GPIO expanders
#
# CONFIG_GPIO_MAX3191X is not set
# CONFIG_GPIO_MAX7301 is not set
# CONFIG_GPIO_MC33880 is not set
# CONFIG_GPIO_PISOSR is not set
# CONFIG_GPIO_XRA1403 is not set
# end of SPI GPIO expanders

#
# USB GPIO expanders
#
# end of USB GPIO expanders

#
# Virtual GPIO drivers
#
# CONFIG_GPIO_AGGREGATOR is not set
# CONFIG_GPIO_LATCH is not set
# CONFIG_GPIO_MOCKUP is not set
# CONFIG_GPIO_VIRTIO is not set
# CONFIG_GPIO_SIM is not set
# end of Virtual GPIO drivers

# CONFIG_W1 is not set
CONFIG_POWER_RESET=y
# CONFIG_POWER_RESET_RESTART is not set
CONFIG_POWER_SUPPLY=y
# CONFIG_POWER_SUPPLY_DEBUG is not set
CONFIG_POWER_SUPPLY_HWMON=y
# CONFIG_PDA_POWER is not set
# CONFIG_IP5XXX_POWER is not set
# CONFIG_TEST_POWER is not set
# CONFIG_CHARGER_ADP5061 is not set
# CONFIG_BATTERY_CW2015 is not set
# CONFIG_BATTERY_DS2780 is not set
# CONFIG_BATTERY_DS2781 is not set
# CONFIG_BATTERY_DS2782 is not set
# CONFIG_BATTERY_SAMSUNG_SDI is not set
# CONFIG_BATTERY_SBS is not set
# CONFIG_CHARGER_SBS is not set
# CONFIG_MANAGER_SBS is not set
# CONFIG_BATTERY_BQ27XXX is not set
# CONFIG_BATTERY_MAX17040 is not set
# CONFIG_BATTERY_MAX17042 is not set
# CONFIG_CHARGER_MAX8903 is not set
# CONFIG_CHARGER_LP8727 is not set
# CONFIG_CHARGER_GPIO is not set
# CONFIG_CHARGER_LT3651 is not set
# CONFIG_CHARGER_LTC4162L is not set
# CONFIG_CHARGER_MAX77976 is not set
# CONFIG_CHARGER_BQ2415X is not set
# CONFIG_CHARGER_BQ24257 is not set
# CONFIG_CHARGER_BQ24735 is not set
# CONFIG_CHARGER_BQ2515X is not set
# CONFIG_CHARGER_BQ25890 is not set
# CONFIG_CHARGER_BQ25980 is not set
# CONFIG_CHARGER_BQ256XX is not set
# CONFIG_BATTERY_GAUGE_LTC2941 is not set
# CONFIG_BATTERY_GOLDFISH is not set
# CONFIG_BATTERY_RT5033 is not set
# CONFIG_CHARGER_RT9455 is not set
# CONFIG_CHARGER_BD99954 is not set
# CONFIG_BATTERY_UG3105 is not set
CONFIG_HWMON=y
CONFIG_HWMON_VID=m
# CONFIG_HWMON_DEBUG_CHIP is not set

#
# Native drivers
#
CONFIG_SENSORS_ABITUGURU=m
CONFIG_SENSORS_ABITUGURU3=m
# CONFIG_SENSORS_AD7314 is not set
CONFIG_SENSORS_AD7414=m
CONFIG_SENSORS_AD7418=m
CONFIG_SENSORS_ADM1025=m
CONFIG_SENSORS_ADM1026=m
CONFIG_SENSORS_ADM1029=m
CONFIG_SENSORS_ADM1031=m
# CONFIG_SENSORS_ADM1177 is not set
CONFIG_SENSORS_ADM9240=m
CONFIG_SENSORS_ADT7X10=m
# CONFIG_SENSORS_ADT7310 is not set
CONFIG_SENSORS_ADT7410=m
CONFIG_SENSORS_ADT7411=m
CONFIG_SENSORS_ADT7462=m
CONFIG_SENSORS_ADT7470=m
CONFIG_SENSORS_ADT7475=m
# CONFIG_SENSORS_AHT10 is not set
# CONFIG_SENSORS_AQUACOMPUTER_D5NEXT is not set
# CONFIG_SENSORS_AS370 is not set
CONFIG_SENSORS_ASC7621=m
# CONFIG_SENSORS_AXI_FAN_CONTROL is not set
CONFIG_SENSORS_K8TEMP=m
CONFIG_SENSORS_APPLESMC=m
CONFIG_SENSORS_ASB100=m
CONFIG_SENSORS_ATXP1=m
# CONFIG_SENSORS_CORSAIR_CPRO is not set
# CONFIG_SENSORS_CORSAIR_PSU is not set
# CONFIG_SENSORS_DRIVETEMP is not set
CONFIG_SENSORS_DS620=m
CONFIG_SENSORS_DS1621=m
# CONFIG_SENSORS_DELL_SMM is not set
CONFIG_SENSORS_I5K_AMB=m
CONFIG_SENSORS_F71805F=m
CONFIG_SENSORS_F71882FG=m
CONFIG_SENSORS_F75375S=m
CONFIG_SENSORS_FSCHMD=m
# CONFIG_SENSORS_FTSTEUTATES is not set
CONFIG_SENSORS_GL518SM=m
CONFIG_SENSORS_GL520SM=m
CONFIG_SENSORS_G760A=m
# CONFIG_SENSORS_G762 is not set
# CONFIG_SENSORS_HIH6130 is not set
CONFIG_SENSORS_IBMAEM=m
CONFIG_SENSORS_IBMPEX=m
CONFIG_SENSORS_I5500=m
CONFIG_SENSORS_CORETEMP=m
CONFIG_SENSORS_IT87=m
CONFIG_SENSORS_JC42=m
# CONFIG_SENSORS_POWR1220 is not set
CONFIG_SENSORS_LINEAGE=m
# CONFIG_SENSORS_LTC2945 is not set
# CONFIG_SENSORS_LTC2947_I2C is not set
# CONFIG_SENSORS_LTC2947_SPI is not set
# CONFIG_SENSORS_LTC2990 is not set
# CONFIG_SENSORS_LTC2992 is not set
CONFIG_SENSORS_LTC4151=m
CONFIG_SENSORS_LTC4215=m
# CONFIG_SENSORS_LTC4222 is not set
CONFIG_SENSORS_LTC4245=m
# CONFIG_SENSORS_LTC4260 is not set
CONFIG_SENSORS_LTC4261=m
# CONFIG_SENSORS_MAX1111 is not set
# CONFIG_SENSORS_MAX127 is not set
CONFIG_SENSORS_MAX16065=m
CONFIG_SENSORS_MAX1619=m
CONFIG_SENSORS_MAX1668=m
CONFIG_SENSORS_MAX197=m
# CONFIG_SENSORS_MAX31722 is not set
# CONFIG_SENSORS_MAX31730 is not set
# CONFIG_SENSORS_MAX31760 is not set
# CONFIG_SENSORS_MAX6620 is not set
# CONFIG_SENSORS_MAX6621 is not set
CONFIG_SENSORS_MAX6639=m
CONFIG_SENSORS_MAX6650=m
CONFIG_SENSORS_MAX6697=m
# CONFIG_SENSORS_MAX31790 is not set
CONFIG_SENSORS_MCP3021=m
# CONFIG_SENSORS_MLXREG_FAN is not set
# CONFIG_SENSORS_TC654 is not set
# CONFIG_SENSORS_TPS23861 is not set
# CONFIG_SENSORS_MR75203 is not set
# CONFIG_SENSORS_ADCXX is not set
CONFIG_SENSORS_LM63=m
# CONFIG_SENSORS_LM70 is not set
CONFIG_SENSORS_LM73=m
CONFIG_SENSORS_LM75=m
CONFIG_SENSORS_LM77=m
CONFIG_SENSORS_LM78=m
CONFIG_SENSORS_LM80=m
CONFIG_SENSORS_LM83=m
CONFIG_SENSORS_LM85=m
CONFIG_SENSORS_LM87=m
CONFIG_SENSORS_LM90=m
CONFIG_SENSORS_LM92=m
CONFIG_SENSORS_LM93=m
CONFIG_SENSORS_LM95234=m
CONFIG_SENSORS_LM95241=m
CONFIG_SENSORS_LM95245=m
CONFIG_SENSORS_PC87360=m
CONFIG_SENSORS_PC87427=m
# CONFIG_SENSORS_NCT6683 is not set
CONFIG_SENSORS_NCT6775_CORE=m
CONFIG_SENSORS_NCT6775=m
# CONFIG_SENSORS_NCT6775_I2C is not set
# CONFIG_SENSORS_NCT7802 is not set
# CONFIG_SENSORS_NCT7904 is not set
# CONFIG_SENSORS_NPCM7XX is not set
# CONFIG_SENSORS_NZXT_KRAKEN2 is not set
# CONFIG_SENSORS_NZXT_SMART2 is not set
# CONFIG_SENSORS_OCC_P8_I2C is not set
# CONFIG_SENSORS_OXP is not set
CONFIG_SENSORS_PCF8591=m
CONFIG_PMBUS=m
CONFIG_SENSORS_PMBUS=m
# CONFIG_SENSORS_ADM1266 is not set
CONFIG_SENSORS_ADM1275=m
# CONFIG_SENSORS_BEL_PFE is not set
# CONFIG_SENSORS_BPA_RS600 is not set
# CONFIG_SENSORS_DELTA_AHE50DC_FAN is not set
# CONFIG_SENSORS_FSP_3Y is not set
# CONFIG_SENSORS_IBM_CFFPS is not set
# CONFIG_SENSORS_DPS920AB is not set
# CONFIG_SENSORS_INSPUR_IPSPS is not set
# CONFIG_SENSORS_IR35221 is not set
# CONFIG_SENSORS_IR36021 is not set
# CONFIG_SENSORS_IR38064 is not set
# CONFIG_SENSORS_IRPS5401 is not set
# CONFIG_SENSORS_ISL68137 is not set
CONFIG_SENSORS_LM25066=m
# CONFIG_SENSORS_LT7182S is not set
CONFIG_SENSORS_LTC2978=m
# CONFIG_SENSORS_LTC3815 is not set
# CONFIG_SENSORS_MAX15301 is not set
CONFIG_SENSORS_MAX16064=m
# CONFIG_SENSORS_MAX16601 is not set
# CONFIG_SENSORS_MAX20730 is not set
# CONFIG_SENSORS_MAX20751 is not set
# CONFIG_SENSORS_MAX31785 is not set
CONFIG_SENSORS_MAX34440=m
CONFIG_SENSORS_MAX8688=m
# CONFIG_SENSORS_MP2888 is not set
# CONFIG_SENSORS_MP2975 is not set
# CONFIG_SENSORS_MP5023 is not set
# CONFIG_SENSORS_PIM4328 is not set
# CONFIG_SENSORS_PLI1209BC is not set
# CONFIG_SENSORS_PM6764TR is not set
# CONFIG_SENSORS_PXE1610 is not set
# CONFIG_SENSORS_Q54SJ108A2 is not set
# CONFIG_SENSORS_STPDDC60 is not set
# CONFIG_SENSORS_TPS40422 is not set
# CONFIG_SENSORS_TPS53679 is not set
# CONFIG_SENSORS_TPS546D24 is not set
CONFIG_SENSORS_UCD9000=m
CONFIG_SENSORS_UCD9200=m
# CONFIG_SENSORS_XDPE152 is not set
# CONFIG_SENSORS_XDPE122 is not set
CONFIG_SENSORS_ZL6100=m
# CONFIG_SENSORS_SBTSI is not set
# CONFIG_SENSORS_SBRMI is not set
CONFIG_SENSORS_SHT15=m
CONFIG_SENSORS_SHT21=m
# CONFIG_SENSORS_SHT3x is not set
# CONFIG_SENSORS_SHT4x is not set
# CONFIG_SENSORS_SHTC1 is not set
CONFIG_SENSORS_SIS5595=m
CONFIG_SENSORS_DME1737=m
CONFIG_SENSORS_EMC1403=m
# CONFIG_SENSORS_EMC2103 is not set
# CONFIG_SENSORS_EMC2305 is not set
CONFIG_SENSORS_EMC6W201=m
CONFIG_SENSORS_SMSC47M1=m
CONFIG_SENSORS_SMSC47M192=m
CONFIG_SENSORS_SMSC47B397=m
CONFIG_SENSORS_SCH56XX_COMMON=m
CONFIG_SENSORS_SCH5627=m
CONFIG_SENSORS_SCH5636=m
# CONFIG_SENSORS_STTS751 is not set
# CONFIG_SENSORS_SMM665 is not set
# CONFIG_SENSORS_ADC128D818 is not set
CONFIG_SENSORS_ADS7828=m
# CONFIG_SENSORS_ADS7871 is not set
CONFIG_SENSORS_AMC6821=m
CONFIG_SENSORS_INA209=m
CONFIG_SENSORS_INA2XX=m
# CONFIG_SENSORS_INA238 is not set
# CONFIG_SENSORS_INA3221 is not set
# CONFIG_SENSORS_TC74 is not set
CONFIG_SENSORS_THMC50=m
CONFIG_SENSORS_TMP102=m
# CONFIG_SENSORS_TMP103 is not set
# CONFIG_SENSORS_TMP108 is not set
CONFIG_SENSORS_TMP401=m
CONFIG_SENSORS_TMP421=m
# CONFIG_SENSORS_TMP464 is not set
# CONFIG_SENSORS_TMP513 is not set
CONFIG_SENSORS_VIA_CPUTEMP=m
CONFIG_SENSORS_VIA686A=m
CONFIG_SENSORS_VT1211=m
CONFIG_SENSORS_VT8231=m
# CONFIG_SENSORS_W83773G is not set
CONFIG_SENSORS_W83781D=m
CONFIG_SENSORS_W83791D=m
CONFIG_SENSORS_W83792D=m
CONFIG_SENSORS_W83793=m
CONFIG_SENSORS_W83795=m
# CONFIG_SENSORS_W83795_FANCTRL is not set
CONFIG_SENSORS_W83L785TS=m
CONFIG_SENSORS_W83L786NG=m
CONFIG_SENSORS_W83627HF=m
CONFIG_SENSORS_W83627EHF=m
# CONFIG_SENSORS_XGENE is not set

#
# ACPI drivers
#
CONFIG_SENSORS_ACPI_POWER=m
CONFIG_SENSORS_ATK0110=m
# CONFIG_SENSORS_ASUS_WMI is not set
# CONFIG_SENSORS_ASUS_EC is not set
CONFIG_THERMAL=y
# CONFIG_THERMAL_NETLINK is not set
# CONFIG_THERMAL_STATISTICS is not set
CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS=0
CONFIG_THERMAL_HWMON=y
CONFIG_THERMAL_WRITABLE_TRIPS=y
CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE=y
# CONFIG_THERMAL_DEFAULT_GOV_FAIR_SHARE is not set
# CONFIG_THERMAL_DEFAULT_GOV_USER_SPACE is not set
CONFIG_THERMAL_GOV_FAIR_SHARE=y
CONFIG_THERMAL_GOV_STEP_WISE=y
CONFIG_THERMAL_GOV_BANG_BANG=y
CONFIG_THERMAL_GOV_USER_SPACE=y
# CONFIG_THERMAL_EMULATION is not set

#
# Intel thermal drivers
#
CONFIG_INTEL_POWERCLAMP=m
CONFIG_X86_THERMAL_VECTOR=y
CONFIG_X86_PKG_TEMP_THERMAL=m
# CONFIG_INTEL_SOC_DTS_THERMAL is not set

#
# ACPI INT340X thermal drivers
#
# CONFIG_INT340X_THERMAL is not set
# end of ACPI INT340X thermal drivers

CONFIG_INTEL_PCH_THERMAL=m
# CONFIG_INTEL_TCC_COOLING is not set
# CONFIG_INTEL_MENLOW is not set
# CONFIG_INTEL_HFI_THERMAL is not set
# end of Intel thermal drivers

CONFIG_WATCHDOG=y
CONFIG_WATCHDOG_CORE=y
# CONFIG_WATCHDOG_NOWAYOUT is not set
CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED=y
CONFIG_WATCHDOG_OPEN_TIMEOUT=0
CONFIG_WATCHDOG_SYSFS=y
# CONFIG_WATCHDOG_HRTIMER_PRETIMEOUT is not set

#
# Watchdog Pretimeout Governors
#
# CONFIG_WATCHDOG_PRETIMEOUT_GOV is not set

#
# Watchdog Device Drivers
#
CONFIG_SOFT_WATCHDOG=m
CONFIG_WDAT_WDT=m
# CONFIG_XILINX_WATCHDOG is not set
# CONFIG_ZIIRAVE_WATCHDOG is not set
# CONFIG_MLX_WDT is not set
# CONFIG_CADENCE_WATCHDOG is not set
# CONFIG_DW_WATCHDOG is not set
# CONFIG_MAX63XX_WATCHDOG is not set
# CONFIG_ACQUIRE_WDT is not set
# CONFIG_ADVANTECH_WDT is not set
# CONFIG_ADVANTECH_EC_WDT is not set
CONFIG_ALIM1535_WDT=m
CONFIG_ALIM7101_WDT=m
# CONFIG_EBC_C384_WDT is not set
# CONFIG_EXAR_WDT is not set
CONFIG_F71808E_WDT=m
# CONFIG_SP5100_TCO is not set
CONFIG_SBC_FITPC2_WATCHDOG=m
# CONFIG_EUROTECH_WDT is not set
CONFIG_IB700_WDT=m
CONFIG_IBMASR=m
# CONFIG_WAFER_WDT is not set
CONFIG_I6300ESB_WDT=y
CONFIG_IE6XX_WDT=m
CONFIG_ITCO_WDT=y
CONFIG_ITCO_VENDOR_SUPPORT=y
CONFIG_IT8712F_WDT=m
CONFIG_IT87_WDT=m
CONFIG_HP_WATCHDOG=m
CONFIG_HPWDT_NMI_DECODING=y
# CONFIG_SC1200_WDT is not set
# CONFIG_PC87413_WDT is not set
CONFIG_NV_TCO=m
# CONFIG_60XX_WDT is not set
# CONFIG_CPU5_WDT is not set
CONFIG_SMSC_SCH311X_WDT=m
# CONFIG_SMSC37B787_WDT is not set
# CONFIG_TQMX86_WDT is not set
CONFIG_VIA_WDT=m
CONFIG_W83627HF_WDT=m
CONFIG_W83877F_WDT=m
CONFIG_W83977F_WDT=m
CONFIG_MACHZ_WDT=m
# CONFIG_SBC_EPX_C3_WATCHDOG is not set
CONFIG_INTEL_MEI_WDT=m
# CONFIG_NI903X_WDT is not set
# CONFIG_NIC7018_WDT is not set
# CONFIG_MEN_A21_WDT is not set

#
# PCI-based Watchdog Cards
#
CONFIG_PCIPCWATCHDOG=m
CONFIG_WDTPCI=m

#
# USB-based Watchdog Cards
#
# CONFIG_USBPCWATCHDOG is not set
CONFIG_SSB_POSSIBLE=y
# CONFIG_SSB is not set
CONFIG_BCMA_POSSIBLE=y
CONFIG_BCMA=m
CONFIG_BCMA_HOST_PCI_POSSIBLE=y
CONFIG_BCMA_HOST_PCI=y
# CONFIG_BCMA_HOST_SOC is not set
CONFIG_BCMA_DRIVER_PCI=y
CONFIG_BCMA_DRIVER_GMAC_CMN=y
CONFIG_BCMA_DRIVER_GPIO=y
# CONFIG_BCMA_DEBUG is not set

#
# Multifunction device drivers
#
CONFIG_MFD_CORE=y
# CONFIG_MFD_AS3711 is not set
# CONFIG_MFD_SMPRO is not set
# CONFIG_PMIC_ADP5520 is not set
# CONFIG_MFD_AAT2870_CORE is not set
# CONFIG_MFD_BCM590XX is not set
# CONFIG_MFD_BD9571MWV is not set
# CONFIG_MFD_AXP20X_I2C is not set
# CONFIG_MFD_MADERA is not set
# CONFIG_PMIC_DA903X is not set
# CONFIG_MFD_DA9052_SPI is not set
# CONFIG_MFD_DA9052_I2C is not set
# CONFIG_MFD_DA9055 is not set
# CONFIG_MFD_DA9062 is not set
# CONFIG_MFD_DA9063 is not set
# CONFIG_MFD_DA9150 is not set
# CONFIG_MFD_DLN2 is not set
# CONFIG_MFD_MC13XXX_SPI is not set
# CONFIG_MFD_MC13XXX_I2C is not set
# CONFIG_MFD_MP2629 is not set
# CONFIG_HTC_PASIC3 is not set
# CONFIG_MFD_INTEL_QUARK_I2C_GPIO is not set
CONFIG_LPC_ICH=m
CONFIG_LPC_SCH=m
CONFIG_MFD_INTEL_LPSS=y
CONFIG_MFD_INTEL_LPSS_ACPI=y
CONFIG_MFD_INTEL_LPSS_PCI=y
# CONFIG_MFD_INTEL_PMC_BXT is not set
# CONFIG_MFD_IQS62X is not set
# CONFIG_MFD_JANZ_CMODIO is not set
# CONFIG_MFD_KEMPLD is not set
# CONFIG_MFD_88PM800 is not set
# CONFIG_MFD_88PM805 is not set
# CONFIG_MFD_88PM860X is not set
# CONFIG_MFD_MAX14577 is not set
# CONFIG_MFD_MAX77693 is not set
# CONFIG_MFD_MAX77843 is not set
# CONFIG_MFD_MAX8907 is not set
# CONFIG_MFD_MAX8925 is not set
# CONFIG_MFD_MAX8997 is not set
# CONFIG_MFD_MAX8998 is not set
# CONFIG_MFD_MT6360 is not set
# CONFIG_MFD_MT6370 is not set
# CONFIG_MFD_MT6397 is not set
# CONFIG_MFD_MENF21BMC is not set
# CONFIG_MFD_OCELOT is not set
# CONFIG_EZX_PCAP is not set
# CONFIG_MFD_VIPERBOARD is not set
# CONFIG_MFD_RETU is not set
# CONFIG_MFD_PCF50633 is not set
# CONFIG_MFD_SY7636A is not set
# CONFIG_MFD_RDC321X is not set
# CONFIG_MFD_RT4831 is not set
# CONFIG_MFD_RT5033 is not set
# CONFIG_MFD_RT5120 is not set
# CONFIG_MFD_RC5T583 is not set
# CONFIG_MFD_SI476X_CORE is not set
CONFIG_MFD_SM501=m
CONFIG_MFD_SM501_GPIO=y
# CONFIG_MFD_SKY81452 is not set
# CONFIG_MFD_SYSCON is not set
# CONFIG_MFD_TI_AM335X_TSCADC is not set
# CONFIG_MFD_LP3943 is not set
# CONFIG_MFD_LP8788 is not set
# CONFIG_MFD_TI_LMU is not set
# CONFIG_MFD_PALMAS is not set
# CONFIG_TPS6105X is not set
# CONFIG_TPS65010 is not set
# CONFIG_TPS6507X is not set
# CONFIG_MFD_TPS65086 is not set
# CONFIG_MFD_TPS65090 is not set
# CONFIG_MFD_TI_LP873X is not set
# CONFIG_MFD_TPS6586X is not set
# CONFIG_MFD_TPS65910 is not set
# CONFIG_MFD_TPS65912_I2C is not set
# CONFIG_MFD_TPS65912_SPI is not set
# CONFIG_TWL4030_CORE is not set
# CONFIG_TWL6040_CORE is not set
# CONFIG_MFD_WL1273_CORE is not set
# CONFIG_MFD_LM3533 is not set
# CONFIG_MFD_TQMX86 is not set
CONFIG_MFD_VX855=m
# CONFIG_MFD_ARIZONA_I2C is not set
# CONFIG_MFD_ARIZONA_SPI is not set
# CONFIG_MFD_WM8400 is not set
# CONFIG_MFD_WM831X_I2C is not set
# CONFIG_MFD_WM831X_SPI is not set
# CONFIG_MFD_WM8350_I2C is not set
# CONFIG_MFD_WM8994 is not set
# CONFIG_MFD_ATC260X_I2C is not set
# CONFIG_MFD_INTEL_M10_BMC is not set
# end of Multifunction device drivers

# CONFIG_REGULATOR is not set
CONFIG_RC_CORE=m
CONFIG_LIRC=y
CONFIG_RC_MAP=m
CONFIG_RC_DECODERS=y
CONFIG_IR_IMON_DECODER=m
CONFIG_IR_JVC_DECODER=m
CONFIG_IR_MCE_KBD_DECODER=m
CONFIG_IR_NEC_DECODER=m
CONFIG_IR_RC5_DECODER=m
CONFIG_IR_RC6_DECODER=m
# CONFIG_IR_RCMM_DECODER is not set
CONFIG_IR_SANYO_DECODER=m
# CONFIG_IR_SHARP_DECODER is not set
CONFIG_IR_SONY_DECODER=m
# CONFIG_IR_XMP_DECODER is not set
CONFIG_RC_DEVICES=y
CONFIG_IR_ENE=m
CONFIG_IR_FINTEK=m
# CONFIG_IR_IGORPLUGUSB is not set
# CONFIG_IR_IGUANA is not set
# CONFIG_IR_IMON is not set
# CONFIG_IR_IMON_RAW is not set
CONFIG_IR_ITE_CIR=m
# CONFIG_IR_MCEUSB is not set
CONFIG_IR_NUVOTON=m
# CONFIG_IR_REDRAT3 is not set
CONFIG_IR_SERIAL=m
CONFIG_IR_SERIAL_TRANSMITTER=y
# CONFIG_IR_STREAMZAP is not set
# CONFIG_IR_TOY is not set
# CONFIG_IR_TTUSBIR is not set
CONFIG_IR_WINBOND_CIR=m
# CONFIG_RC_ATI_REMOTE is not set
# CONFIG_RC_LOOPBACK is not set
# CONFIG_RC_XBOX_DVD is not set

#
# CEC support
#
# CONFIG_MEDIA_CEC_SUPPORT is not set
# end of CEC support

CONFIG_MEDIA_SUPPORT=m
CONFIG_MEDIA_SUPPORT_FILTER=y
CONFIG_MEDIA_SUBDRV_AUTOSELECT=y

#
# Media device types
#
# CONFIG_MEDIA_CAMERA_SUPPORT is not set
# CONFIG_MEDIA_ANALOG_TV_SUPPORT is not set
# CONFIG_MEDIA_DIGITAL_TV_SUPPORT is not set
# CONFIG_MEDIA_RADIO_SUPPORT is not set
# CONFIG_MEDIA_SDR_SUPPORT is not set
# CONFIG_MEDIA_PLATFORM_SUPPORT is not set
# CONFIG_MEDIA_TEST_SUPPORT is not set
# end of Media device types

#
# Media drivers
#

#
# Drivers filtered as selected at 'Filter media drivers'
#

#
# Media drivers
#
# CONFIG_MEDIA_USB_SUPPORT is not set
# CONFIG_MEDIA_PCI_SUPPORT is not set
# end of Media drivers

#
# Media ancillary drivers
#
# end of Media ancillary drivers

#
# Graphics support
#
CONFIG_APERTURE_HELPERS=y
CONFIG_VIDEO_NOMODESET=y
# CONFIG_AGP is not set
CONFIG_INTEL_GTT=m
CONFIG_VGA_SWITCHEROO=y
CONFIG_DRM=m
CONFIG_DRM_MIPI_DSI=y
CONFIG_DRM_KMS_HELPER=m
# CONFIG_DRM_DEBUG_DP_MST_TOPOLOGY_REFS is not set
# CONFIG_DRM_DEBUG_MODESET_LOCK is not set
CONFIG_DRM_FBDEV_EMULATION=y
CONFIG_DRM_FBDEV_OVERALLOC=100
# CONFIG_DRM_FBDEV_LEAK_PHYS_SMEM is not set
CONFIG_DRM_LOAD_EDID_FIRMWARE=y
CONFIG_DRM_DISPLAY_HELPER=m
CONFIG_DRM_DISPLAY_DP_HELPER=y
CONFIG_DRM_DISPLAY_HDCP_HELPER=y
CONFIG_DRM_DISPLAY_HDMI_HELPER=y
CONFIG_DRM_DP_AUX_CHARDEV=y
# CONFIG_DRM_DP_CEC is not set
CONFIG_DRM_TTM=m
CONFIG_DRM_BUDDY=m
CONFIG_DRM_VRAM_HELPER=m
CONFIG_DRM_TTM_HELPER=m
CONFIG_DRM_GEM_SHMEM_HELPER=m

#
# I2C encoder or helper chips
#
CONFIG_DRM_I2C_CH7006=m
CONFIG_DRM_I2C_SIL164=m
# CONFIG_DRM_I2C_NXP_TDA998X is not set
# CONFIG_DRM_I2C_NXP_TDA9950 is not set
# end of I2C encoder or helper chips

#
# ARM devices
#
# end of ARM devices

# CONFIG_DRM_RADEON is not set
# CONFIG_DRM_AMDGPU is not set
# CONFIG_DRM_NOUVEAU is not set
CONFIG_DRM_I915=m
CONFIG_DRM_I915_FORCE_PROBE=""
CONFIG_DRM_I915_CAPTURE_ERROR=y
CONFIG_DRM_I915_COMPRESS_ERROR=y
CONFIG_DRM_I915_USERPTR=y
# CONFIG_DRM_I915_GVT_KVMGT is not set

#
# drm/i915 Debugging
#
# CONFIG_DRM_I915_WERROR is not set
# CONFIG_DRM_I915_DEBUG is not set
# CONFIG_DRM_I915_DEBUG_MMIO is not set
# CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS is not set
# CONFIG_DRM_I915_SW_FENCE_CHECK_DAG is not set
# CONFIG_DRM_I915_DEBUG_GUC is not set
# CONFIG_DRM_I915_SELFTEST is not set
# CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS is not set
# CONFIG_DRM_I915_DEBUG_VBLANK_EVADE is not set
# CONFIG_DRM_I915_DEBUG_RUNTIME_PM is not set
# end of drm/i915 Debugging

#
# drm/i915 Profile Guided Optimisation
#
CONFIG_DRM_I915_REQUEST_TIMEOUT=20000
CONFIG_DRM_I915_FENCE_TIMEOUT=10000
CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND=250
CONFIG_DRM_I915_HEARTBEAT_INTERVAL=2500
CONFIG_DRM_I915_PREEMPT_TIMEOUT=640
CONFIG_DRM_I915_PREEMPT_TIMEOUT_COMPUTE=7500
CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT=8000
CONFIG_DRM_I915_STOP_TIMEOUT=100
CONFIG_DRM_I915_TIMESLICE_DURATION=1
# end of drm/i915 Profile Guided Optimisation

# CONFIG_DRM_VGEM is not set
# CONFIG_DRM_VKMS is not set
# CONFIG_DRM_VMWGFX is not set
CONFIG_DRM_GMA500=m
# CONFIG_DRM_UDL is not set
CONFIG_DRM_AST=m
# CONFIG_DRM_MGAG200 is not set
CONFIG_DRM_QXL=m
CONFIG_DRM_VIRTIO_GPU=m
CONFIG_DRM_PANEL=y

#
# Display Panels
#
# CONFIG_DRM_PANEL_AUO_A030JTN01 is not set
# CONFIG_DRM_PANEL_ORISETECH_OTA5601A is not set
# CONFIG_DRM_PANEL_RASPBERRYPI_TOUCHSCREEN is not set
# CONFIG_DRM_PANEL_WIDECHIPS_WS2401 is not set
# end of Display Panels

CONFIG_DRM_BRIDGE=y
CONFIG_DRM_PANEL_BRIDGE=y

#
# Display Interface Bridges
#
# CONFIG_DRM_ANALOGIX_ANX78XX is not set
# end of Display Interface Bridges

# CONFIG_DRM_ETNAVIV is not set
CONFIG_DRM_BOCHS=m
CONFIG_DRM_CIRRUS_QEMU=m
# CONFIG_DRM_GM12U320 is not set
# CONFIG_DRM_PANEL_MIPI_DBI is not set
# CONFIG_DRM_SIMPLEDRM is not set
# CONFIG_TINYDRM_HX8357D is not set
# CONFIG_TINYDRM_ILI9163 is not set
# CONFIG_TINYDRM_ILI9225 is not set
# CONFIG_TINYDRM_ILI9341 is not set
# CONFIG_TINYDRM_ILI9486 is not set
# CONFIG_TINYDRM_MI0283QT is not set
# CONFIG_TINYDRM_REPAPER is not set
# CONFIG_TINYDRM_ST7586 is not set
# CONFIG_TINYDRM_ST7735R is not set
# CONFIG_DRM_VBOXVIDEO is not set
# CONFIG_DRM_GUD is not set
# CONFIG_DRM_SSD130X is not set
# CONFIG_DRM_LEGACY is not set
CONFIG_DRM_PANEL_ORIENTATION_QUIRKS=y
CONFIG_DRM_PRIVACY_SCREEN=y

#
# Frame buffer Devices
#
CONFIG_FB_CMDLINE=y
CONFIG_FB_NOTIFY=y
CONFIG_FB=y
# CONFIG_FIRMWARE_EDID is not set
CONFIG_FB_CFB_FILLRECT=y
CONFIG_FB_CFB_COPYAREA=y
CONFIG_FB_CFB_IMAGEBLIT=y
CONFIG_FB_SYS_FILLRECT=m
CONFIG_FB_SYS_COPYAREA=m
CONFIG_FB_SYS_IMAGEBLIT=m
# CONFIG_FB_FOREIGN_ENDIAN is not set
CONFIG_FB_SYS_FOPS=m
CONFIG_FB_DEFERRED_IO=y
# CONFIG_FB_MODE_HELPERS is not set
CONFIG_FB_TILEBLITTING=y

#
# Frame buffer hardware drivers
#
# CONFIG_FB_CIRRUS is not set
# CONFIG_FB_PM2 is not set
# CONFIG_FB_CYBER2000 is not set
# CONFIG_FB_ARC is not set
# CONFIG_FB_ASILIANT is not set
# CONFIG_FB_IMSTT is not set
# CONFIG_FB_VGA16 is not set
# CONFIG_FB_UVESA is not set
CONFIG_FB_VESA=y
CONFIG_FB_EFI=y
# CONFIG_FB_N411 is not set
# CONFIG_FB_HGA is not set
# CONFIG_FB_OPENCORES is not set
# CONFIG_FB_S1D13XXX is not set
# CONFIG_FB_NVIDIA is not set
# CONFIG_FB_RIVA is not set
# CONFIG_FB_I740 is not set
# CONFIG_FB_LE80578 is not set
# CONFIG_FB_MATROX is not set
# CONFIG_FB_RADEON is not set
# CONFIG_FB_ATY128 is not set
# CONFIG_FB_ATY is not set
# CONFIG_FB_S3 is not set
# CONFIG_FB_SAVAGE is not set
# CONFIG_FB_SIS is not set
# CONFIG_FB_VIA is not set
# CONFIG_FB_NEOMAGIC is not set
# CONFIG_FB_KYRO is not set
# CONFIG_FB_3DFX is not set
# CONFIG_FB_VOODOO1 is not set
# CONFIG_FB_VT8623 is not set
# CONFIG_FB_TRIDENT is not set
# CONFIG_FB_ARK is not set
# CONFIG_FB_PM3 is not set
# CONFIG_FB_CARMINE is not set
# CONFIG_FB_SM501 is not set
# CONFIG_FB_SMSCUFX is not set
# CONFIG_FB_UDL is not set
# CONFIG_FB_IBM_GXT4500 is not set
# CONFIG_FB_VIRTUAL is not set
# CONFIG_FB_METRONOME is not set
# CONFIG_FB_MB862XX is not set
# CONFIG_FB_SIMPLE is not set
# CONFIG_FB_SSD1307 is not set
# CONFIG_FB_SM712 is not set
# end of Frame buffer Devices

#
# Backlight & LCD device support
#
CONFIG_LCD_CLASS_DEVICE=m
# CONFIG_LCD_L4F00242T03 is not set
# CONFIG_LCD_LMS283GF05 is not set
# CONFIG_LCD_LTV350QV is not set
# CONFIG_LCD_ILI922X is not set
# CONFIG_LCD_ILI9320 is not set
# CONFIG_LCD_TDO24M is not set
# CONFIG_LCD_VGG2432A4 is not set
CONFIG_LCD_PLATFORM=m
# CONFIG_LCD_AMS369FG06 is not set
# CONFIG_LCD_LMS501KF03 is not set
# CONFIG_LCD_HX8357 is not set
# CONFIG_LCD_OTM3225A is not set
CONFIG_BACKLIGHT_CLASS_DEVICE=y
# CONFIG_BACKLIGHT_KTD253 is not set
# CONFIG_BACKLIGHT_PWM is not set
CONFIG_BACKLIGHT_APPLE=m
# CONFIG_BACKLIGHT_QCOM_WLED is not set
# CONFIG_BACKLIGHT_SAHARA is not set
# CONFIG_BACKLIGHT_ADP8860 is not set
# CONFIG_BACKLIGHT_ADP8870 is not set
# CONFIG_BACKLIGHT_LM3630A is not set
# CONFIG_BACKLIGHT_LM3639 is not set
CONFIG_BACKLIGHT_LP855X=m
# CONFIG_BACKLIGHT_GPIO is not set
# CONFIG_BACKLIGHT_LV5207LP is not set
# CONFIG_BACKLIGHT_BD6107 is not set
# CONFIG_BACKLIGHT_ARCXCNN is not set
# end of Backlight & LCD device support

CONFIG_HDMI=y

#
# Console display driver support
#
CONFIG_VGA_CONSOLE=y
CONFIG_DUMMY_CONSOLE=y
CONFIG_DUMMY_CONSOLE_COLUMNS=80
CONFIG_DUMMY_CONSOLE_ROWS=25
CONFIG_FRAMEBUFFER_CONSOLE=y
# CONFIG_FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION is not set
CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=y
CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=y
# CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER is not set
# end of Console display driver support

CONFIG_LOGO=y
# CONFIG_LOGO_LINUX_MONO is not set
# CONFIG_LOGO_LINUX_VGA16 is not set
CONFIG_LOGO_LINUX_CLUT224=y
# end of Graphics support

# CONFIG_DRM_ACCEL is not set
# CONFIG_SOUND is not set

#
# HID support
#
CONFIG_HID=y
CONFIG_HID_BATTERY_STRENGTH=y
CONFIG_HIDRAW=y
CONFIG_UHID=m
CONFIG_HID_GENERIC=y

#
# Special HID drivers
#
CONFIG_HID_A4TECH=m
# CONFIG_HID_ACCUTOUCH is not set
CONFIG_HID_ACRUX=m
# CONFIG_HID_ACRUX_FF is not set
CONFIG_HID_APPLE=m
# CONFIG_HID_APPLEIR is not set
CONFIG_HID_ASUS=m
CONFIG_HID_AUREAL=m
CONFIG_HID_BELKIN=m
# CONFIG_HID_BETOP_FF is not set
# CONFIG_HID_BIGBEN_FF is not set
CONFIG_HID_CHERRY=m
# CONFIG_HID_CHICONY is not set
# CONFIG_HID_CORSAIR is not set
# CONFIG_HID_COUGAR is not set
# CONFIG_HID_MACALLY is not set
CONFIG_HID_CMEDIA=m
# CONFIG_HID_CP2112 is not set
# CONFIG_HID_CREATIVE_SB0540 is not set
CONFIG_HID_CYPRESS=m
CONFIG_HID_DRAGONRISE=m
# CONFIG_DRAGONRISE_FF is not set
# CONFIG_HID_EMS_FF is not set
# CONFIG_HID_ELAN is not set
CONFIG_HID_ELECOM=m
# CONFIG_HID_ELO is not set
CONFIG_HID_EZKEY=m
# CONFIG_HID_FT260 is not set
CONFIG_HID_GEMBIRD=m
CONFIG_HID_GFRM=m
# CONFIG_HID_GLORIOUS is not set
# CONFIG_HID_HOLTEK is not set
# CONFIG_HID_VIVALDI is not set
# CONFIG_HID_GT683R is not set
CONFIG_HID_KEYTOUCH=m
CONFIG_HID_KYE=m
# CONFIG_HID_UCLOGIC is not set
CONFIG_HID_WALTOP=m
# CONFIG_HID_VIEWSONIC is not set
# CONFIG_HID_VRC2 is not set
# CONFIG_HID_XIAOMI is not set
CONFIG_HID_GYRATION=m
CONFIG_HID_ICADE=m
CONFIG_HID_ITE=m
CONFIG_HID_JABRA=m
CONFIG_HID_TWINHAN=m
CONFIG_HID_KENSINGTON=m
CONFIG_HID_LCPOWER=m
CONFIG_HID_LED=m
CONFIG_HID_LENOVO=m
# CONFIG_HID_LETSKETCH is not set
CONFIG_HID_LOGITECH=m
CONFIG_HID_LOGITECH_DJ=m
CONFIG_HID_LOGITECH_HIDPP=m
# CONFIG_LOGITECH_FF is not set
# CONFIG_LOGIRUMBLEPAD2_FF is not set
# CONFIG_LOGIG940_FF is not set
# CONFIG_LOGIWHEELS_FF is not set
CONFIG_HID_MAGICMOUSE=y
# CONFIG_HID_MALTRON is not set
# CONFIG_HID_MAYFLASH is not set
# CONFIG_HID_MEGAWORLD_FF is not set
# CONFIG_HID_REDRAGON is not set
CONFIG_HID_MICROSOFT=m
CONFIG_HID_MONTEREY=m
CONFIG_HID_MULTITOUCH=m
# CONFIG_HID_NINTENDO is not set
CONFIG_HID_NTI=m
# CONFIG_HID_NTRIG is not set
CONFIG_HID_ORTEK=m
CONFIG_HID_PANTHERLORD=m
# CONFIG_PANTHERLORD_FF is not set
# CONFIG_HID_PENMOUNT is not set
CONFIG_HID_PETALYNX=m
CONFIG_HID_PICOLCD=m
CONFIG_HID_PICOLCD_FB=y
CONFIG_HID_PICOLCD_BACKLIGHT=y
CONFIG_HID_PICOLCD_LCD=y
CONFIG_HID_PICOLCD_LEDS=y
CONFIG_HID_PICOLCD_CIR=y
CONFIG_HID_PLANTRONICS=m
# CONFIG_HID_PXRC is not set
# CONFIG_HID_RAZER is not set
CONFIG_HID_PRIMAX=m
# CONFIG_HID_RETRODE is not set
# CONFIG_HID_ROCCAT is not set
CONFIG_HID_SAITEK=m
CONFIG_HID_SAMSUNG=m
# CONFIG_HID_SEMITEK is not set
# CONFIG_HID_SIGMAMICRO is not set
# CONFIG_HID_SONY is not set
CONFIG_HID_SPEEDLINK=m
# CONFIG_HID_STEAM is not set
CONFIG_HID_STEELSERIES=m
CONFIG_HID_SUNPLUS=m
CONFIG_HID_RMI=m
CONFIG_HID_GREENASIA=m
# CONFIG_GREENASIA_FF is not set
CONFIG_HID_SMARTJOYPLUS=m
# CONFIG_SMARTJOYPLUS_FF is not set
CONFIG_HID_TIVO=m
CONFIG_HID_TOPSEED=m
# CONFIG_HID_TOPRE is not set
CONFIG_HID_THINGM=m
CONFIG_HID_THRUSTMASTER=m
# CONFIG_THRUSTMASTER_FF is not set
# CONFIG_HID_UDRAW_PS3 is not set
# CONFIG_HID_U2FZERO is not set
# CONFIG_HID_WACOM is not set
CONFIG_HID_WIIMOTE=m
CONFIG_HID_XINMO=m
CONFIG_HID_ZEROPLUS=m
# CONFIG_ZEROPLUS_FF is not set
CONFIG_HID_ZYDACRON=m
CONFIG_HID_SENSOR_HUB=y
CONFIG_HID_SENSOR_CUSTOM_SENSOR=m
CONFIG_HID_ALPS=m
# CONFIG_HID_MCP2221 is not set
# end of Special HID drivers

#
# USB HID support
#
CONFIG_USB_HID=y
# CONFIG_HID_PID is not set
# CONFIG_USB_HIDDEV is not set
# end of USB HID support

#
# I2C HID support
#
# CONFIG_I2C_HID_ACPI is not set
# end of I2C HID support

#
# Intel ISH HID support
#
CONFIG_INTEL_ISH_HID=m
# CONFIG_INTEL_ISH_FIRMWARE_DOWNLOADER is not set
# end of Intel ISH HID support

#
# AMD SFH HID Support
#
# CONFIG_AMD_SFH_HID is not set
# end of AMD SFH HID Support
# end of HID support

CONFIG_USB_OHCI_LITTLE_ENDIAN=y
CONFIG_USB_SUPPORT=y
CONFIG_USB_COMMON=y
# CONFIG_USB_LED_TRIG is not set
# CONFIG_USB_ULPI_BUS is not set
# CONFIG_USB_CONN_GPIO is not set
CONFIG_USB_ARCH_HAS_HCD=y
CONFIG_USB=y
CONFIG_USB_PCI=y
CONFIG_USB_ANNOUNCE_NEW_DEVICES=y

#
# Miscellaneous USB options
#
CONFIG_USB_DEFAULT_PERSIST=y
# CONFIG_USB_FEW_INIT_RETRIES is not set
# CONFIG_USB_DYNAMIC_MINORS is not set
# CONFIG_USB_OTG is not set
# CONFIG_USB_OTG_PRODUCTLIST is not set
# CONFIG_USB_OTG_DISABLE_EXTERNAL_HUB is not set
CONFIG_USB_LEDS_TRIGGER_USBPORT=y
CONFIG_USB_AUTOSUSPEND_DELAY=2
CONFIG_USB_MON=y

#
# USB Host Controller Drivers
#
# CONFIG_USB_C67X00_HCD is not set
CONFIG_USB_XHCI_HCD=y
# CONFIG_USB_XHCI_DBGCAP is not set
CONFIG_USB_XHCI_PCI=y
# CONFIG_USB_XHCI_PCI_RENESAS is not set
# CONFIG_USB_XHCI_PLATFORM is not set
CONFIG_USB_EHCI_HCD=y
CONFIG_USB_EHCI_ROOT_HUB_TT=y
CONFIG_USB_EHCI_TT_NEWSCHED=y
CONFIG_USB_EHCI_PCI=y
# CONFIG_USB_EHCI_FSL is not set
# CONFIG_USB_EHCI_HCD_PLATFORM is not set
# CONFIG_USB_OXU210HP_HCD is not set
# CONFIG_USB_ISP116X_HCD is not set
# CONFIG_USB_MAX3421_HCD is not set
CONFIG_USB_OHCI_HCD=y
CONFIG_USB_OHCI_HCD_PCI=y
# CONFIG_USB_OHCI_HCD_PLATFORM is not set
CONFIG_USB_UHCI_HCD=y
# CONFIG_USB_SL811_HCD is not set
# CONFIG_USB_R8A66597_HCD is not set
# CONFIG_USB_HCD_BCMA is not set
# CONFIG_USB_HCD_TEST_MODE is not set

#
# USB Device Class drivers
#
# CONFIG_USB_ACM is not set
# CONFIG_USB_PRINTER is not set
# CONFIG_USB_WDM is not set
# CONFIG_USB_TMC is not set

#
# NOTE: USB_STORAGE depends on SCSI but BLK_DEV_SD may
#

#
# also be needed; see USB_STORAGE Help for more info
#
CONFIG_USB_STORAGE=m
# CONFIG_USB_STORAGE_DEBUG is not set
# CONFIG_USB_STORAGE_REALTEK is not set
# CONFIG_USB_STORAGE_DATAFAB is not set
# CONFIG_USB_STORAGE_FREECOM is not set
# CONFIG_USB_STORAGE_ISD200 is not set
# CONFIG_USB_STORAGE_USBAT is not set
# CONFIG_USB_STORAGE_SDDR09 is not set
# CONFIG_USB_STORAGE_SDDR55 is not set
# CONFIG_USB_STORAGE_JUMPSHOT is not set
# CONFIG_USB_STORAGE_ALAUDA is not set
# CONFIG_USB_STORAGE_ONETOUCH is not set
# CONFIG_USB_STORAGE_KARMA is not set
# CONFIG_USB_STORAGE_CYPRESS_ATACB is not set
# CONFIG_USB_STORAGE_ENE_UB6250 is not set
# CONFIG_USB_UAS is not set

#
# USB Imaging devices
#
# CONFIG_USB_MDC800 is not set
# CONFIG_USB_MICROTEK is not set
# CONFIG_USBIP_CORE is not set

#
# USB dual-mode controller drivers
#
# CONFIG_USB_CDNS_SUPPORT is not set
# CONFIG_USB_MUSB_HDRC is not set
# CONFIG_USB_DWC3 is not set
# CONFIG_USB_DWC2 is not set
# CONFIG_USB_CHIPIDEA is not set
# CONFIG_USB_ISP1760 is not set

#
# USB port drivers
#
# CONFIG_USB_USS720 is not set
CONFIG_USB_SERIAL=m
CONFIG_USB_SERIAL_GENERIC=y
# CONFIG_USB_SERIAL_SIMPLE is not set
# CONFIG_USB_SERIAL_AIRCABLE is not set
# CONFIG_USB_SERIAL_ARK3116 is not set
# CONFIG_USB_SERIAL_BELKIN is not set
# CONFIG_USB_SERIAL_CH341 is not set
# CONFIG_USB_SERIAL_WHITEHEAT is not set
# CONFIG_USB_SERIAL_DIGI_ACCELEPORT is not set
# CONFIG_USB_SERIAL_CP210X is not set
# CONFIG_USB_SERIAL_CYPRESS_M8 is not set
# CONFIG_USB_SERIAL_EMPEG is not set
# CONFIG_USB_SERIAL_FTDI_SIO is not set
# CONFIG_USB_SERIAL_VISOR is not set
# CONFIG_USB_SERIAL_IPAQ is not set
# CONFIG_USB_SERIAL_IR is not set
# CONFIG_USB_SERIAL_EDGEPORT is not set
# CONFIG_USB_SERIAL_EDGEPORT_TI is not set
# CONFIG_USB_SERIAL_F81232 is not set
# CONFIG_USB_SERIAL_F8153X is not set
# CONFIG_USB_SERIAL_GARMIN is not set
# CONFIG_USB_SERIAL_IPW is not set
# CONFIG_USB_SERIAL_IUU is not set
# CONFIG_USB_SERIAL_KEYSPAN_PDA is not set
# CONFIG_USB_SERIAL_KEYSPAN is not set
# CONFIG_USB_SERIAL_KLSI is not set
# CONFIG_USB_SERIAL_KOBIL_SCT is not set
# CONFIG_USB_SERIAL_MCT_U232 is not set
# CONFIG_USB_SERIAL_METRO is not set
# CONFIG_USB_SERIAL_MOS7720 is not set
# CONFIG_USB_SERIAL_MOS7840 is not set
# CONFIG_USB_SERIAL_MXUPORT is not set
# CONFIG_USB_SERIAL_NAVMAN is not set
# CONFIG_USB_SERIAL_PL2303 is not set
# CONFIG_USB_SERIAL_OTI6858 is not set
# CONFIG_USB_SERIAL_QCAUX is not set
# CONFIG_USB_SERIAL_QUALCOMM is not set
# CONFIG_USB_SERIAL_SPCP8X5 is not set
# CONFIG_USB_SERIAL_SAFE is not set
# CONFIG_USB_SERIAL_SIERRAWIRELESS is not set
# CONFIG_USB_SERIAL_SYMBOL is not set
# CONFIG_USB_SERIAL_TI is not set
# CONFIG_USB_SERIAL_CYBERJACK is not set
# CONFIG_USB_SERIAL_OPTION is not set
# CONFIG_USB_SERIAL_OMNINET is not set
# CONFIG_USB_SERIAL_OPTICON is not set
# CONFIG_USB_SERIAL_XSENS_MT is not set
# CONFIG_USB_SERIAL_WISHBONE is not set
# CONFIG_USB_SERIAL_SSU100 is not set
# CONFIG_USB_SERIAL_QT2 is not set
# CONFIG_USB_SERIAL_UPD78F0730 is not set
# CONFIG_USB_SERIAL_XR is not set
CONFIG_USB_SERIAL_DEBUG=m

#
# USB Miscellaneous drivers
#
# CONFIG_USB_EMI62 is not set
# CONFIG_USB_EMI26 is not set
# CONFIG_USB_ADUTUX is not set
# CONFIG_USB_SEVSEG is not set
# CONFIG_USB_LEGOTOWER is not set
# CONFIG_USB_LCD is not set
# CONFIG_USB_CYPRESS_CY7C63 is not set
# CONFIG_USB_CYTHERM is not set
# CONFIG_USB_IDMOUSE is not set
# CONFIG_USB_FTDI_ELAN is not set
# CONFIG_USB_APPLEDISPLAY is not set
# CONFIG_APPLE_MFI_FASTCHARGE is not set
# CONFIG_USB_SISUSBVGA is not set
# CONFIG_USB_LD is not set
# CONFIG_USB_TRANCEVIBRATOR is not set
# CONFIG_USB_IOWARRIOR is not set
# CONFIG_USB_TEST is not set
# CONFIG_USB_EHSET_TEST_FIXTURE is not set
# CONFIG_USB_ISIGHTFW is not set
# CONFIG_USB_YUREX is not set
# CONFIG_USB_EZUSB_FX2 is not set
# CONFIG_USB_HUB_USB251XB is not set
# CONFIG_USB_HSIC_USB3503 is not set
# CONFIG_USB_HSIC_USB4604 is not set
# CONFIG_USB_LINK_LAYER_TEST is not set
# CONFIG_USB_CHAOSKEY is not set
# CONFIG_USB_ATM is not set

#
# USB Physical Layer drivers
#
# CONFIG_NOP_USB_XCEIV is not set
# CONFIG_USB_GPIO_VBUS is not set
# CONFIG_USB_ISP1301 is not set
# end of USB Physical Layer drivers

# CONFIG_USB_GADGET is not set
CONFIG_TYPEC=y
# CONFIG_TYPEC_TCPM is not set
CONFIG_TYPEC_UCSI=y
# CONFIG_UCSI_CCG is not set
CONFIG_UCSI_ACPI=y
# CONFIG_UCSI_STM32G0 is not set
# CONFIG_TYPEC_TPS6598X is not set
# CONFIG_TYPEC_RT1719 is not set
# CONFIG_TYPEC_STUSB160X is not set
# CONFIG_TYPEC_WUSB3801 is not set

#
# USB Type-C Multiplexer/DeMultiplexer Switch support
#
# CONFIG_TYPEC_MUX_FSA4480 is not set
# CONFIG_TYPEC_MUX_PI3USB30532 is not set
# end of USB Type-C Multiplexer/DeMultiplexer Switch support

#
# USB Type-C Alternate Mode drivers
#
# CONFIG_TYPEC_DP_ALTMODE is not set
# end of USB Type-C Alternate Mode drivers

# CONFIG_USB_ROLE_SWITCH is not set
CONFIG_MMC=m
CONFIG_MMC_BLOCK=m
CONFIG_MMC_BLOCK_MINORS=8
CONFIG_SDIO_UART=m
# CONFIG_MMC_TEST is not set

#
# MMC/SD/SDIO Host Controller Drivers
#
# CONFIG_MMC_DEBUG is not set
CONFIG_MMC_SDHCI=m
CONFIG_MMC_SDHCI_IO_ACCESSORS=y
CONFIG_MMC_SDHCI_PCI=m
CONFIG_MMC_RICOH_MMC=y
CONFIG_MMC_SDHCI_ACPI=m
CONFIG_MMC_SDHCI_PLTFM=m
# CONFIG_MMC_SDHCI_F_SDH30 is not set
# CONFIG_MMC_WBSD is not set
# CONFIG_MMC_TIFM_SD is not set
# CONFIG_MMC_SPI is not set
# CONFIG_MMC_CB710 is not set
# CONFIG_MMC_VIA_SDMMC is not set
# CONFIG_MMC_VUB300 is not set
# CONFIG_MMC_USHC is not set
# CONFIG_MMC_USDHI6ROL0 is not set
# CONFIG_MMC_REALTEK_PCI is not set
CONFIG_MMC_CQHCI=m
# CONFIG_MMC_HSQ is not set
# CONFIG_MMC_TOSHIBA_PCI is not set
# CONFIG_MMC_MTK is not set
# CONFIG_MMC_SDHCI_XENON is not set
# CONFIG_SCSI_UFSHCD is not set
# CONFIG_MEMSTICK is not set
CONFIG_NEW_LEDS=y
CONFIG_LEDS_CLASS=y
# CONFIG_LEDS_CLASS_FLASH is not set
# CONFIG_LEDS_CLASS_MULTICOLOR is not set
# CONFIG_LEDS_BRIGHTNESS_HW_CHANGED is not set

#
# LED drivers
#
# CONFIG_LEDS_APU is not set
CONFIG_LEDS_LM3530=m
# CONFIG_LEDS_LM3532 is not set
# CONFIG_LEDS_LM3642 is not set
# CONFIG_LEDS_PCA9532 is not set
# CONFIG_LEDS_GPIO is not set
CONFIG_LEDS_LP3944=m
# CONFIG_LEDS_LP3952 is not set
# CONFIG_LEDS_LP50XX is not set
# CONFIG_LEDS_PCA955X is not set
# CONFIG_LEDS_PCA963X is not set
# CONFIG_LEDS_DAC124S085 is not set
# CONFIG_LEDS_PWM is not set
# CONFIG_LEDS_BD2802 is not set
CONFIG_LEDS_INTEL_SS4200=m
CONFIG_LEDS_LT3593=m
# CONFIG_LEDS_TCA6507 is not set
# CONFIG_LEDS_TLC591XX is not set
# CONFIG_LEDS_LM355x is not set
# CONFIG_LEDS_IS31FL319X is not set

#
# LED driver for blink(1) USB RGB LED is under Special HID drivers (HID_THINGM)
#
CONFIG_LEDS_BLINKM=m
CONFIG_LEDS_MLXCPLD=m
# CONFIG_LEDS_MLXREG is not set
# CONFIG_LEDS_USER is not set
# CONFIG_LEDS_NIC78BX is not set
# CONFIG_LEDS_TI_LMU_COMMON is not set

#
# Flash and Torch LED drivers
#

#
# RGB LED drivers
#

#
# LED Triggers
#
CONFIG_LEDS_TRIGGERS=y
CONFIG_LEDS_TRIGGER_TIMER=m
CONFIG_LEDS_TRIGGER_ONESHOT=m
# CONFIG_LEDS_TRIGGER_DISK is not set
CONFIG_LEDS_TRIGGER_HEARTBEAT=m
CONFIG_LEDS_TRIGGER_BACKLIGHT=m
# CONFIG_LEDS_TRIGGER_CPU is not set
# CONFIG_LEDS_TRIGGER_ACTIVITY is not set
CONFIG_LEDS_TRIGGER_GPIO=m
CONFIG_LEDS_TRIGGER_DEFAULT_ON=m

#
# iptables trigger is under Netfilter config (LED target)
#
CONFIG_LEDS_TRIGGER_TRANSIENT=m
CONFIG_LEDS_TRIGGER_CAMERA=m
# CONFIG_LEDS_TRIGGER_PANIC is not set
# CONFIG_LEDS_TRIGGER_NETDEV is not set
# CONFIG_LEDS_TRIGGER_PATTERN is not set
CONFIG_LEDS_TRIGGER_AUDIO=m
# CONFIG_LEDS_TRIGGER_TTY is not set

#
# Simple LED drivers
#
# CONFIG_ACCESSIBILITY is not set
CONFIG_INFINIBAND=m
CONFIG_INFINIBAND_USER_MAD=m
CONFIG_INFINIBAND_USER_ACCESS=m
CONFIG_INFINIBAND_USER_MEM=y
CONFIG_INFINIBAND_ON_DEMAND_PAGING=y
CONFIG_INFINIBAND_ADDR_TRANS=y
CONFIG_INFINIBAND_ADDR_TRANS_CONFIGFS=y
CONFIG_INFINIBAND_VIRT_DMA=y
# CONFIG_INFINIBAND_EFA is not set
# CONFIG_INFINIBAND_ERDMA is not set
# CONFIG_MLX4_INFINIBAND is not set
# CONFIG_INFINIBAND_MTHCA is not set
# CONFIG_INFINIBAND_OCRDMA is not set
# CONFIG_INFINIBAND_USNIC is not set
# CONFIG_INFINIBAND_RDMAVT is not set
CONFIG_RDMA_RXE=m
CONFIG_RDMA_SIW=m
CONFIG_INFINIBAND_IPOIB=m
# CONFIG_INFINIBAND_IPOIB_CM is not set
CONFIG_INFINIBAND_IPOIB_DEBUG=y
# CONFIG_INFINIBAND_IPOIB_DEBUG_DATA is not set
CONFIG_INFINIBAND_SRP=m
CONFIG_INFINIBAND_SRPT=m
# CONFIG_INFINIBAND_ISER is not set
# CONFIG_INFINIBAND_ISERT is not set
# CONFIG_INFINIBAND_RTRS_CLIENT is not set
# CONFIG_INFINIBAND_RTRS_SERVER is not set
# CONFIG_INFINIBAND_OPA_VNIC is not set
CONFIG_EDAC_ATOMIC_SCRUB=y
CONFIG_EDAC_SUPPORT=y
CONFIG_EDAC=y
CONFIG_EDAC_LEGACY_SYSFS=y
# CONFIG_EDAC_DEBUG is not set
CONFIG_EDAC_GHES=y
CONFIG_EDAC_E752X=m
CONFIG_EDAC_I82975X=m
CONFIG_EDAC_I3000=m
CONFIG_EDAC_I3200=m
CONFIG_EDAC_IE31200=m
CONFIG_EDAC_X38=m
CONFIG_EDAC_I5400=m
CONFIG_EDAC_I7CORE=m
CONFIG_EDAC_I5100=m
CONFIG_EDAC_I7300=m
CONFIG_EDAC_SBRIDGE=m
CONFIG_EDAC_SKX=m
# CONFIG_EDAC_I10NM is not set
CONFIG_EDAC_PND2=m
# CONFIG_EDAC_IGEN6 is not set
CONFIG_RTC_LIB=y
CONFIG_RTC_MC146818_LIB=y
CONFIG_RTC_CLASS=y
CONFIG_RTC_HCTOSYS=y
CONFIG_RTC_HCTOSYS_DEVICE="rtc0"
# CONFIG_RTC_SYSTOHC is not set
# CONFIG_RTC_DEBUG is not set
CONFIG_RTC_NVMEM=y

#
# RTC interfaces
#
CONFIG_RTC_INTF_SYSFS=y
CONFIG_RTC_INTF_PROC=y
CONFIG_RTC_INTF_DEV=y
# CONFIG_RTC_INTF_DEV_UIE_EMUL is not set
# CONFIG_RTC_DRV_TEST is not set

#
# I2C RTC drivers
#
# CONFIG_RTC_DRV_ABB5ZES3 is not set
# CONFIG_RTC_DRV_ABEOZ9 is not set
# CONFIG_RTC_DRV_ABX80X is not set
CONFIG_RTC_DRV_DS1307=m
# CONFIG_RTC_DRV_DS1307_CENTURY is not set
CONFIG_RTC_DRV_DS1374=m
# CONFIG_RTC_DRV_DS1374_WDT is not set
CONFIG_RTC_DRV_DS1672=m
CONFIG_RTC_DRV_MAX6900=m
CONFIG_RTC_DRV_RS5C372=m
CONFIG_RTC_DRV_ISL1208=m
CONFIG_RTC_DRV_ISL12022=m
CONFIG_RTC_DRV_X1205=m
CONFIG_RTC_DRV_PCF8523=m
# CONFIG_RTC_DRV_PCF85063 is not set
# CONFIG_RTC_DRV_PCF85363 is not set
CONFIG_RTC_DRV_PCF8563=m
CONFIG_RTC_DRV_PCF8583=m
CONFIG_RTC_DRV_M41T80=m
CONFIG_RTC_DRV_M41T80_WDT=y
CONFIG_RTC_DRV_BQ32K=m
# CONFIG_RTC_DRV_S35390A is not set
CONFIG_RTC_DRV_FM3130=m
# CONFIG_RTC_DRV_RX8010 is not set
CONFIG_RTC_DRV_RX8581=m
CONFIG_RTC_DRV_RX8025=m
CONFIG_RTC_DRV_EM3027=m
# CONFIG_RTC_DRV_RV3028 is not set
# CONFIG_RTC_DRV_RV3032 is not set
# CONFIG_RTC_DRV_RV8803 is not set
# CONFIG_RTC_DRV_SD3078 is not set

#
# SPI RTC drivers
#
# CONFIG_RTC_DRV_M41T93 is not set
# CONFIG_RTC_DRV_M41T94 is not set
# CONFIG_RTC_DRV_DS1302 is not set
# CONFIG_RTC_DRV_DS1305 is not set
# CONFIG_RTC_DRV_DS1343 is not set
# CONFIG_RTC_DRV_DS1347 is not set
# CONFIG_RTC_DRV_DS1390 is not set
# CONFIG_RTC_DRV_MAX6916 is not set
# CONFIG_RTC_DRV_R9701 is not set
CONFIG_RTC_DRV_RX4581=m
# CONFIG_RTC_DRV_RS5C348 is not set
# CONFIG_RTC_DRV_MAX6902 is not set
# CONFIG_RTC_DRV_PCF2123 is not set
# CONFIG_RTC_DRV_MCP795 is not set
CONFIG_RTC_I2C_AND_SPI=y

#
# SPI and I2C RTC drivers
#
CONFIG_RTC_DRV_DS3232=m
CONFIG_RTC_DRV_DS3232_HWMON=y
# CONFIG_RTC_DRV_PCF2127 is not set
CONFIG_RTC_DRV_RV3029C2=m
# CONFIG_RTC_DRV_RV3029_HWMON is not set
# CONFIG_RTC_DRV_RX6110 is not set

#
# Platform RTC drivers
#
CONFIG_RTC_DRV_CMOS=y
CONFIG_RTC_DRV_DS1286=m
CONFIG_RTC_DRV_DS1511=m
CONFIG_RTC_DRV_DS1553=m
# CONFIG_RTC_DRV_DS1685_FAMILY is not set
CONFIG_RTC_DRV_DS1742=m
CONFIG_RTC_DRV_DS2404=m
CONFIG_RTC_DRV_STK17TA8=m
# CONFIG_RTC_DRV_M48T86 is not set
CONFIG_RTC_DRV_M48T35=m
CONFIG_RTC_DRV_M48T59=m
CONFIG_RTC_DRV_MSM6242=m
CONFIG_RTC_DRV_BQ4802=m
CONFIG_RTC_DRV_RP5C01=m
CONFIG_RTC_DRV_V3020=m

#
# on-CPU RTC drivers
#
# CONFIG_RTC_DRV_FTRTC010 is not set

#
# HID Sensor RTC drivers
#
# CONFIG_RTC_DRV_GOLDFISH is not set
CONFIG_DMADEVICES=y
# CONFIG_DMADEVICES_DEBUG is not set

#
# DMA Devices
#
CONFIG_DMA_ENGINE=y
CONFIG_DMA_VIRTUAL_CHANNELS=y
CONFIG_DMA_ACPI=y
# CONFIG_ALTERA_MSGDMA is not set
CONFIG_INTEL_IDMA64=m
CONFIG_INTEL_IDXD_BUS=m
CONFIG_INTEL_IDXD=m
# CONFIG_INTEL_IDXD_COMPAT is not set
# CONFIG_INTEL_IDXD_SVM is not set
# CONFIG_INTEL_IDXD_PERFMON is not set
CONFIG_INTEL_IOATDMA=m
# CONFIG_PLX_DMA is not set
# CONFIG_AMD_PTDMA is not set
# CONFIG_QCOM_HIDMA_MGMT is not set
# CONFIG_QCOM_HIDMA is not set
CONFIG_DW_DMAC_CORE=y
CONFIG_DW_DMAC=m
CONFIG_DW_DMAC_PCI=y
# CONFIG_DW_EDMA is not set
# CONFIG_DW_EDMA_PCIE is not set
CONFIG_HSU_DMA=y
# CONFIG_SF_PDMA is not set
# CONFIG_INTEL_LDMA is not set

#
# DMA Clients
#
CONFIG_ASYNC_TX_DMA=y
CONFIG_DMATEST=m
CONFIG_DMA_ENGINE_RAID=y

#
# DMABUF options
#
CONFIG_SYNC_FILE=y
# CONFIG_SW_SYNC is not set
# CONFIG_UDMABUF is not set
# CONFIG_DMABUF_MOVE_NOTIFY is not set
# CONFIG_DMABUF_DEBUG is not set
# CONFIG_DMABUF_SELFTESTS is not set
# CONFIG_DMABUF_HEAPS is not set
# CONFIG_DMABUF_SYSFS_STATS is not set
# end of DMABUF options

CONFIG_DCA=m
# CONFIG_AUXDISPLAY is not set
# CONFIG_PANEL is not set
CONFIG_UIO=m
CONFIG_UIO_CIF=m
CONFIG_UIO_PDRV_GENIRQ=m
# CONFIG_UIO_DMEM_GENIRQ is not set
CONFIG_UIO_AEC=m
CONFIG_UIO_SERCOS3=m
CONFIG_UIO_PCI_GENERIC=m
# CONFIG_UIO_NETX is not set
# CONFIG_UIO_PRUSS is not set
# CONFIG_UIO_MF624 is not set
CONFIG_VFIO=m
CONFIG_VFIO_CONTAINER=y
CONFIG_VFIO_IOMMU_TYPE1=m
CONFIG_VFIO_NOIOMMU=y
CONFIG_VFIO_VIRQFD=y
CONFIG_VFIO_PCI_CORE=m
CONFIG_VFIO_PCI_MMAP=y
CONFIG_VFIO_PCI_INTX=y
CONFIG_VFIO_PCI=m
# CONFIG_VFIO_PCI_VGA is not set
# CONFIG_VFIO_PCI_IGD is not set
CONFIG_VFIO_MDEV=m
CONFIG_IRQ_BYPASS_MANAGER=m
# CONFIG_VIRT_DRIVERS is not set
CONFIG_VIRTIO_ANCHOR=y
CONFIG_VIRTIO=y
CONFIG_VIRTIO_PCI_LIB=y
CONFIG_VIRTIO_PCI_LIB_LEGACY=y
CONFIG_VIRTIO_MENU=y
CONFIG_VIRTIO_PCI=y
CONFIG_VIRTIO_PCI_LEGACY=y
# CONFIG_VIRTIO_PMEM is not set
CONFIG_VIRTIO_BALLOON=m
# CONFIG_VIRTIO_MEM is not set
CONFIG_VIRTIO_INPUT=m
# CONFIG_VIRTIO_MMIO is not set
CONFIG_VIRTIO_DMA_SHARED_BUFFER=m
# CONFIG_VDPA is not set
CONFIG_VHOST_IOTLB=m
CONFIG_VHOST=m
CONFIG_VHOST_MENU=y
CONFIG_VHOST_NET=m
# CONFIG_VHOST_SCSI is not set
CONFIG_VHOST_VSOCK=m
# CONFIG_VHOST_CROSS_ENDIAN_LEGACY is not set

#
# Microsoft Hyper-V guest support
#
# CONFIG_HYPERV is not set
# end of Microsoft Hyper-V guest support

# CONFIG_GREYBUS is not set
# CONFIG_COMEDI is not set
# CONFIG_STAGING is not set
# CONFIG_CHROME_PLATFORMS is not set
CONFIG_MELLANOX_PLATFORM=y
CONFIG_MLXREG_HOTPLUG=m
# CONFIG_MLXREG_IO is not set
# CONFIG_MLXREG_LC is not set
# CONFIG_NVSW_SN2201 is not set
CONFIG_SURFACE_PLATFORMS=y
# CONFIG_SURFACE3_WMI is not set
# CONFIG_SURFACE_3_POWER_OPREGION is not set
# CONFIG_SURFACE_GPE is not set
# CONFIG_SURFACE_HOTPLUG is not set
# CONFIG_SURFACE_PRO3_BUTTON is not set
CONFIG_X86_PLATFORM_DEVICES=y
CONFIG_ACPI_WMI=m
CONFIG_WMI_BMOF=m
# CONFIG_HUAWEI_WMI is not set
# CONFIG_UV_SYSFS is not set
CONFIG_MXM_WMI=m
# CONFIG_PEAQ_WMI is not set
# CONFIG_NVIDIA_WMI_EC_BACKLIGHT is not set
# CONFIG_XIAOMI_WMI is not set
# CONFIG_GIGABYTE_WMI is not set
# CONFIG_YOGABOOK_WMI is not set
CONFIG_ACERHDF=m
# CONFIG_ACER_WIRELESS is not set
CONFIG_ACER_WMI=m
# CONFIG_AMD_PMF is not set
# CONFIG_AMD_PMC is not set
# CONFIG_ADV_SWBUTTON is not set
CONFIG_APPLE_GMUX=m
CONFIG_ASUS_LAPTOP=m
# CONFIG_ASUS_WIRELESS is not set
CONFIG_ASUS_WMI=m
CONFIG_ASUS_NB_WMI=m
# CONFIG_ASUS_TF103C_DOCK is not set
# CONFIG_MERAKI_MX100 is not set
CONFIG_EEEPC_LAPTOP=m
CONFIG_EEEPC_WMI=m
# CONFIG_X86_PLATFORM_DRIVERS_DELL is not set
CONFIG_AMILO_RFKILL=m
CONFIG_FUJITSU_LAPTOP=m
CONFIG_FUJITSU_TABLET=m
# CONFIG_GPD_POCKET_FAN is not set
# CONFIG_X86_PLATFORM_DRIVERS_HP is not set
# CONFIG_WIRELESS_HOTKEY is not set
# CONFIG_IBM_RTL is not set
CONFIG_IDEAPAD_LAPTOP=m
CONFIG_SENSORS_HDAPS=m
CONFIG_THINKPAD_ACPI=m
# CONFIG_THINKPAD_ACPI_DEBUGFACILITIES is not set
# CONFIG_THINKPAD_ACPI_DEBUG is not set
# CONFIG_THINKPAD_ACPI_UNSAFE_LEDS is not set
CONFIG_THINKPAD_ACPI_VIDEO=y
CONFIG_THINKPAD_ACPI_HOTKEY_POLL=y
# CONFIG_THINKPAD_LMI is not set
# CONFIG_INTEL_ATOMISP2_PM is not set
# CONFIG_INTEL_IFS is not set
# CONFIG_INTEL_SAR_INT1092 is not set
CONFIG_INTEL_PMC_CORE=m

#
# Intel Speed Select Technology interface support
#
# CONFIG_INTEL_SPEED_SELECT_INTERFACE is not set
# end of Intel Speed Select Technology interface support

CONFIG_INTEL_WMI=y
# CONFIG_INTEL_WMI_SBL_FW_UPDATE is not set
CONFIG_INTEL_WMI_THUNDERBOLT=m

#
# Intel Uncore Frequency Control
#
# CONFIG_INTEL_UNCORE_FREQ_CONTROL is not set
# end of Intel Uncore Frequency Control

CONFIG_INTEL_HID_EVENT=m
CONFIG_INTEL_VBTN=m
# CONFIG_INTEL_INT0002_VGPIO is not set
CONFIG_INTEL_OAKTRAIL=m
# CONFIG_INTEL_ISHTP_ECLITE is not set
# CONFIG_INTEL_PUNIT_IPC is not set
CONFIG_INTEL_RST=m
# CONFIG_INTEL_SMARTCONNECT is not set
CONFIG_INTEL_TURBO_MAX_3=y
# CONFIG_INTEL_VSEC is not set
CONFIG_MSI_LAPTOP=m
CONFIG_MSI_WMI=m
# CONFIG_PCENGINES_APU2 is not set
# CONFIG_BARCO_P50_GPIO is not set
CONFIG_SAMSUNG_LAPTOP=m
CONFIG_SAMSUNG_Q10=m
CONFIG_TOSHIBA_BT_RFKILL=m
# CONFIG_TOSHIBA_HAPS is not set
# CONFIG_TOSHIBA_WMI is not set
CONFIG_ACPI_CMPC=m
CONFIG_COMPAL_LAPTOP=m
# CONFIG_LG_LAPTOP is not set
CONFIG_PANASONIC_LAPTOP=m
CONFIG_SONY_LAPTOP=m
CONFIG_SONYPI_COMPAT=y
# CONFIG_SYSTEM76_ACPI is not set
CONFIG_TOPSTAR_LAPTOP=m
# CONFIG_SERIAL_MULTI_INSTANTIATE is not set
CONFIG_MLX_PLATFORM=m
CONFIG_INTEL_IPS=m
# CONFIG_INTEL_SCU_PCI is not set
# CONFIG_INTEL_SCU_PLATFORM is not set
# CONFIG_SIEMENS_SIMATIC_IPC is not set
# CONFIG_WINMATE_FM07_KEYS is not set
CONFIG_P2SB=y
CONFIG_HAVE_CLK=y
CONFIG_HAVE_CLK_PREPARE=y
CONFIG_COMMON_CLK=y
# CONFIG_LMK04832 is not set
# CONFIG_COMMON_CLK_MAX9485 is not set
# CONFIG_COMMON_CLK_SI5341 is not set
# CONFIG_COMMON_CLK_SI5351 is not set
# CONFIG_COMMON_CLK_SI544 is not set
# CONFIG_COMMON_CLK_CDCE706 is not set
# CONFIG_COMMON_CLK_CS2000_CP is not set
# CONFIG_COMMON_CLK_PWM is not set
# CONFIG_XILINX_VCU is not set
CONFIG_HWSPINLOCK=y

#
# Clock Source drivers
#
CONFIG_CLKEVT_I8253=y
CONFIG_I8253_LOCK=y
CONFIG_CLKBLD_I8253=y
# end of Clock Source drivers

CONFIG_MAILBOX=y
CONFIG_PCC=y
# CONFIG_ALTERA_MBOX is not set
CONFIG_IOMMU_IOVA=y
CONFIG_IOASID=y
CONFIG_IOMMU_API=y
CONFIG_IOMMU_SUPPORT=y

#
# Generic IOMMU Pagetable Support
#
# end of Generic IOMMU Pagetable Support

# CONFIG_IOMMU_DEBUGFS is not set
# CONFIG_IOMMU_DEFAULT_DMA_STRICT is not set
CONFIG_IOMMU_DEFAULT_DMA_LAZY=y
# CONFIG_IOMMU_DEFAULT_PASSTHROUGH is not set
CONFIG_IOMMU_DMA=y
CONFIG_IOMMU_SVA=y
# CONFIG_AMD_IOMMU is not set
CONFIG_DMAR_TABLE=y
CONFIG_INTEL_IOMMU=y
CONFIG_INTEL_IOMMU_SVM=y
# CONFIG_INTEL_IOMMU_DEFAULT_ON is not set
CONFIG_INTEL_IOMMU_FLOPPY_WA=y
CONFIG_INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON=y
# CONFIG_IOMMUFD is not set
CONFIG_IRQ_REMAP=y
# CONFIG_VIRTIO_IOMMU is not set

#
# Remoteproc drivers
#
# CONFIG_REMOTEPROC is not set
# end of Remoteproc drivers

#
# Rpmsg drivers
#
# CONFIG_RPMSG_QCOM_GLINK_RPM is not set
# CONFIG_RPMSG_VIRTIO is not set
# end of Rpmsg drivers

# CONFIG_SOUNDWIRE is not set

#
# SOC (System On Chip) specific Drivers
#

#
# Amlogic SoC drivers
#
# end of Amlogic SoC drivers

#
# Broadcom SoC drivers
#
# end of Broadcom SoC drivers

#
# NXP/Freescale QorIQ SoC drivers
#
# end of NXP/Freescale QorIQ SoC drivers

#
# fujitsu SoC drivers
#
# end of fujitsu SoC drivers

#
# i.MX SoC drivers
#
# end of i.MX SoC drivers

#
# Enable LiteX SoC Builder specific drivers
#
# end of Enable LiteX SoC Builder specific drivers

#
# Qualcomm SoC drivers
#
# end of Qualcomm SoC drivers

# CONFIG_SOC_TI is not set

#
# Xilinx SoC drivers
#
# end of Xilinx SoC drivers
# end of SOC (System On Chip) specific Drivers

# CONFIG_PM_DEVFREQ is not set
# CONFIG_EXTCON is not set
# CONFIG_MEMORY is not set
# CONFIG_IIO is not set
CONFIG_NTB=m
# CONFIG_NTB_MSI is not set
# CONFIG_NTB_AMD is not set
# CONFIG_NTB_IDT is not set
# CONFIG_NTB_INTEL is not set
# CONFIG_NTB_EPF is not set
# CONFIG_NTB_SWITCHTEC is not set
# CONFIG_NTB_PINGPONG is not set
# CONFIG_NTB_TOOL is not set
# CONFIG_NTB_PERF is not set
# CONFIG_NTB_TRANSPORT is not set
CONFIG_PWM=y
CONFIG_PWM_SYSFS=y
# CONFIG_PWM_DEBUG is not set
# CONFIG_PWM_CLK is not set
# CONFIG_PWM_DWC is not set
CONFIG_PWM_LPSS=m
CONFIG_PWM_LPSS_PCI=m
CONFIG_PWM_LPSS_PLATFORM=m
# CONFIG_PWM_PCA9685 is not set

#
# IRQ chip support
#
# end of IRQ chip support

# CONFIG_IPACK_BUS is not set
# CONFIG_RESET_CONTROLLER is not set

#
# PHY Subsystem
#
# CONFIG_GENERIC_PHY is not set
# CONFIG_USB_LGM_PHY is not set
# CONFIG_PHY_CAN_TRANSCEIVER is not set

#
# PHY drivers for Broadcom platforms
#
# CONFIG_BCM_KONA_USB2_PHY is not set
# end of PHY drivers for Broadcom platforms

# CONFIG_PHY_PXA_28NM_HSIC is not set
# CONFIG_PHY_PXA_28NM_USB2 is not set
# CONFIG_PHY_INTEL_LGM_EMMC is not set
# end of PHY Subsystem

CONFIG_POWERCAP=y
CONFIG_INTEL_RAPL_CORE=m
CONFIG_INTEL_RAPL=m
# CONFIG_IDLE_INJECT is not set
# CONFIG_MCB is not set

#
# Performance monitor support
#
# end of Performance monitor support

CONFIG_RAS=y
# CONFIG_RAS_CEC is not set
# CONFIG_USB4 is not set

#
# Android
#
# CONFIG_ANDROID_BINDER_IPC is not set
# end of Android

CONFIG_LIBNVDIMM=m
CONFIG_BLK_DEV_PMEM=m
CONFIG_ND_CLAIM=y
CONFIG_ND_BTT=m
CONFIG_BTT=y
CONFIG_ND_PFN=m
CONFIG_NVDIMM_PFN=y
CONFIG_NVDIMM_DAX=y
CONFIG_NVDIMM_KEYS=y
# CONFIG_NVDIMM_SECURITY_TEST is not set
CONFIG_DAX=y
CONFIG_DEV_DAX=m
CONFIG_DEV_DAX_PMEM=m
CONFIG_DEV_DAX_KMEM=m
CONFIG_NVMEM=y
CONFIG_NVMEM_SYSFS=y
# CONFIG_NVMEM_RMEM is not set

#
# HW tracing support
#
CONFIG_STM=m
# CONFIG_STM_PROTO_BASIC is not set
# CONFIG_STM_PROTO_SYS_T is not set
CONFIG_STM_DUMMY=m
CONFIG_STM_SOURCE_CONSOLE=m
CONFIG_STM_SOURCE_HEARTBEAT=m
CONFIG_STM_SOURCE_FTRACE=m
CONFIG_INTEL_TH=m
CONFIG_INTEL_TH_PCI=m
CONFIG_INTEL_TH_ACPI=m
CONFIG_INTEL_TH_GTH=m
CONFIG_INTEL_TH_STH=m
CONFIG_INTEL_TH_MSU=m
CONFIG_INTEL_TH_PTI=m
# CONFIG_INTEL_TH_DEBUG is not set
# end of HW tracing support

# CONFIG_FPGA is not set
# CONFIG_SIOX is not set
# CONFIG_SLIMBUS is not set
# CONFIG_INTERCONNECT is not set
# CONFIG_COUNTER is not set
# CONFIG_MOST is not set
# CONFIG_PECI is not set
# CONFIG_HTE is not set
# end of Device Drivers

#
# File systems
#
CONFIG_DCACHE_WORD_ACCESS=y
# CONFIG_VALIDATE_FS_PARSER is not set
CONFIG_FS_IOMAP=y
CONFIG_EXT2_FS=m
CONFIG_EXT2_FS_XATTR=y
CONFIG_EXT2_FS_POSIX_ACL=y
CONFIG_EXT2_FS_SECURITY=y
# CONFIG_EXT3_FS is not set
CONFIG_EXT4_FS=y
CONFIG_EXT4_FS_POSIX_ACL=y
CONFIG_EXT4_FS_SECURITY=y
# CONFIG_EXT4_DEBUG is not set
CONFIG_JBD2=y
# CONFIG_JBD2_DEBUG is not set
CONFIG_FS_MBCACHE=y
# CONFIG_REISERFS_FS is not set
# CONFIG_JFS_FS is not set
CONFIG_XFS_FS=m
CONFIG_XFS_SUPPORT_V4=y
CONFIG_XFS_QUOTA=y
CONFIG_XFS_POSIX_ACL=y
CONFIG_XFS_RT=y
CONFIG_XFS_ONLINE_SCRUB=y
CONFIG_XFS_ONLINE_REPAIR=y
CONFIG_XFS_DEBUG=y
CONFIG_XFS_ASSERT_FATAL=y
CONFIG_GFS2_FS=m
CONFIG_GFS2_FS_LOCKING_DLM=y
CONFIG_OCFS2_FS=m
CONFIG_OCFS2_FS_O2CB=m
CONFIG_OCFS2_FS_USERSPACE_CLUSTER=m
CONFIG_OCFS2_FS_STATS=y
CONFIG_OCFS2_DEBUG_MASKLOG=y
# CONFIG_OCFS2_DEBUG_FS is not set
CONFIG_BTRFS_FS=m
CONFIG_BTRFS_FS_POSIX_ACL=y
# CONFIG_BTRFS_FS_CHECK_INTEGRITY is not set
# CONFIG_BTRFS_FS_RUN_SANITY_TESTS is not set
# CONFIG_BTRFS_DEBUG is not set
# CONFIG_BTRFS_ASSERT is not set
# CONFIG_BTRFS_FS_REF_VERIFY is not set
# CONFIG_NILFS2_FS is not set
CONFIG_F2FS_FS=m
CONFIG_F2FS_STAT_FS=y
CONFIG_F2FS_FS_XATTR=y
CONFIG_F2FS_FS_POSIX_ACL=y
CONFIG_F2FS_FS_SECURITY=y
# CONFIG_F2FS_CHECK_FS is not set
# CONFIG_F2FS_FAULT_INJECTION is not set
# CONFIG_F2FS_FS_COMPRESSION is not set
CONFIG_F2FS_IOSTAT=y
# CONFIG_F2FS_UNFAIR_RWSEM is not set
# CONFIG_ZONEFS_FS is not set
CONFIG_FS_DAX=y
CONFIG_FS_DAX_PMD=y
CONFIG_FS_POSIX_ACL=y
CONFIG_EXPORTFS=y
CONFIG_EXPORTFS_BLOCK_OPS=y
CONFIG_FILE_LOCKING=y
CONFIG_FS_ENCRYPTION=y
CONFIG_FS_ENCRYPTION_ALGS=y
# CONFIG_FS_VERITY is not set
CONFIG_FSNOTIFY=y
CONFIG_DNOTIFY=y
CONFIG_INOTIFY_USER=y
CONFIG_FANOTIFY=y
CONFIG_FANOTIFY_ACCESS_PERMISSIONS=y
CONFIG_QUOTA=y
CONFIG_QUOTA_NETLINK_INTERFACE=y
CONFIG_PRINT_QUOTA_WARNING=y
# CONFIG_QUOTA_DEBUG is not set
CONFIG_QUOTA_TREE=y
# CONFIG_QFMT_V1 is not set
CONFIG_QFMT_V2=y
CONFIG_QUOTACTL=y
CONFIG_AUTOFS4_FS=y
CONFIG_AUTOFS_FS=y
CONFIG_FUSE_FS=m
CONFIG_CUSE=m
# CONFIG_VIRTIO_FS is not set
CONFIG_OVERLAY_FS=m
# CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
# CONFIG_OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW is not set
# CONFIG_OVERLAY_FS_INDEX is not set
# CONFIG_OVERLAY_FS_XINO_AUTO is not set
# CONFIG_OVERLAY_FS_METACOPY is not set

#
# Caches
#
CONFIG_NETFS_SUPPORT=y
CONFIG_NETFS_STATS=y
CONFIG_FSCACHE=m
CONFIG_FSCACHE_STATS=y
# CONFIG_FSCACHE_DEBUG is not set
CONFIG_CACHEFILES=m
# CONFIG_CACHEFILES_DEBUG is not set
# CONFIG_CACHEFILES_ERROR_INJECTION is not set
# CONFIG_CACHEFILES_ONDEMAND is not set
# end of Caches

#
# CD-ROM/DVD Filesystems
#
CONFIG_ISO9660_FS=m
CONFIG_JOLIET=y
CONFIG_ZISOFS=y
CONFIG_UDF_FS=m
# end of CD-ROM/DVD Filesystems

#
# DOS/FAT/EXFAT/NT Filesystems
#
CONFIG_FAT_FS=m
CONFIG_MSDOS_FS=m
CONFIG_VFAT_FS=m
CONFIG_FAT_DEFAULT_CODEPAGE=437
CONFIG_FAT_DEFAULT_IOCHARSET="ascii"
# CONFIG_FAT_DEFAULT_UTF8 is not set
# CONFIG_EXFAT_FS is not set
# CONFIG_NTFS_FS is not set
# CONFIG_NTFS3_FS is not set
# end of DOS/FAT/EXFAT/NT Filesystems

#
# Pseudo filesystems
#
CONFIG_PROC_FS=y
CONFIG_PROC_KCORE=y
CONFIG_PROC_VMCORE=y
CONFIG_PROC_VMCORE_DEVICE_DUMP=y
CONFIG_PROC_SYSCTL=y
CONFIG_PROC_PAGE_MONITOR=y
CONFIG_PROC_CHILDREN=y
CONFIG_PROC_PID_ARCH_STATUS=y
CONFIG_KERNFS=y
CONFIG_SYSFS=y
CONFIG_TMPFS=y
CONFIG_TMPFS_POSIX_ACL=y
CONFIG_TMPFS_XATTR=y
# CONFIG_TMPFS_INODE64 is not set
CONFIG_HUGETLBFS=y
CONFIG_HUGETLB_PAGE=y
CONFIG_ARCH_WANT_HUGETLB_PAGE_OPTIMIZE_VMEMMAP=y
CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP=y
# CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP_DEFAULT_ON is not set
CONFIG_MEMFD_CREATE=y
CONFIG_ARCH_HAS_GIGANTIC_PAGE=y
CONFIG_CONFIGFS_FS=y
CONFIG_EFIVAR_FS=y
# end of Pseudo filesystems

CONFIG_MISC_FILESYSTEMS=y
# CONFIG_ORANGEFS_FS is not set
# CONFIG_ADFS_FS is not set
# CONFIG_AFFS_FS is not set
# CONFIG_ECRYPT_FS is not set
# CONFIG_HFS_FS is not set
# CONFIG_HFSPLUS_FS is not set
# CONFIG_BEFS_FS is not set
# CONFIG_BFS_FS is not set
# CONFIG_EFS_FS is not set
CONFIG_CRAMFS=m
CONFIG_CRAMFS_BLOCKDEV=y
CONFIG_SQUASHFS=m
# CONFIG_SQUASHFS_FILE_CACHE is not set
CONFIG_SQUASHFS_FILE_DIRECT=y
CONFIG_SQUASHFS_DECOMP_SINGLE=y
# CONFIG_SQUASHFS_CHOICE_DECOMP_BY_MOUNT is not set
CONFIG_SQUASHFS_COMPILE_DECOMP_SINGLE=y
# CONFIG_SQUASHFS_COMPILE_DECOMP_MULTI is not set
# CONFIG_SQUASHFS_COMPILE_DECOMP_MULTI_PERCPU is not set
CONFIG_SQUASHFS_XATTR=y
CONFIG_SQUASHFS_ZLIB=y
# CONFIG_SQUASHFS_LZ4 is not set
CONFIG_SQUASHFS_LZO=y
CONFIG_SQUASHFS_XZ=y
# CONFIG_SQUASHFS_ZSTD is not set
# CONFIG_SQUASHFS_4K_DEVBLK_SIZE is not set
# CONFIG_SQUASHFS_EMBEDDED is not set
CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3
# CONFIG_VXFS_FS is not set
CONFIG_MINIX_FS=m
# CONFIG_OMFS_FS is not set
# CONFIG_HPFS_FS is not set
# CONFIG_QNX4FS_FS is not set
# CONFIG_QNX6FS_FS is not set
# CONFIG_ROMFS_FS is not set
CONFIG_PSTORE=y
CONFIG_PSTORE_DEFAULT_KMSG_BYTES=10240
CONFIG_PSTORE_DEFLATE_COMPRESS=y
# CONFIG_PSTORE_LZO_COMPRESS is not set
# CONFIG_PSTORE_LZ4_COMPRESS is not set
# CONFIG_PSTORE_LZ4HC_COMPRESS is not set
# CONFIG_PSTORE_842_COMPRESS is not set
# CONFIG_PSTORE_ZSTD_COMPRESS is not set
CONFIG_PSTORE_COMPRESS=y
CONFIG_PSTORE_DEFLATE_COMPRESS_DEFAULT=y
CONFIG_PSTORE_COMPRESS_DEFAULT="deflate"
# CONFIG_PSTORE_CONSOLE is not set
# CONFIG_PSTORE_PMSG is not set
# CONFIG_PSTORE_FTRACE is not set
CONFIG_PSTORE_RAM=m
# CONFIG_PSTORE_BLK is not set
# CONFIG_SYSV_FS is not set
# CONFIG_UFS_FS is not set
# CONFIG_EROFS_FS is not set
CONFIG_NETWORK_FILESYSTEMS=y
CONFIG_NFS_FS=y
# CONFIG_NFS_V2 is not set
CONFIG_NFS_V3=y
CONFIG_NFS_V3_ACL=y
CONFIG_NFS_V4=m
# CONFIG_NFS_SWAP is not set
CONFIG_NFS_V4_1=y
CONFIG_NFS_V4_2=y
CONFIG_PNFS_FILE_LAYOUT=m
CONFIG_PNFS_BLOCK=m
CONFIG_PNFS_FLEXFILE_LAYOUT=m
CONFIG_NFS_V4_1_IMPLEMENTATION_ID_DOMAIN="kernel.org"
# CONFIG_NFS_V4_1_MIGRATION is not set
CONFIG_NFS_V4_SECURITY_LABEL=y
CONFIG_ROOT_NFS=y
# CONFIG_NFS_USE_LEGACY_DNS is not set
CONFIG_NFS_USE_KERNEL_DNS=y
CONFIG_NFS_DEBUG=y
CONFIG_NFS_DISABLE_UDP_SUPPORT=y
CONFIG_NFS_V4_2_READ_PLUS=y
CONFIG_NFSD=m
# CONFIG_NFSD_V2 is not set
CONFIG_NFSD_V3_ACL=y
CONFIG_NFSD_V4=y
CONFIG_NFSD_PNFS=y
# CONFIG_NFSD_BLOCKLAYOUT is not set
CONFIG_NFSD_SCSILAYOUT=y
# CONFIG_NFSD_FLEXFILELAYOUT is not set
# CONFIG_NFSD_V4_2_INTER_SSC is not set
CONFIG_NFSD_V4_SECURITY_LABEL=y
CONFIG_GRACE_PERIOD=y
CONFIG_LOCKD=y
CONFIG_LOCKD_V4=y
CONFIG_NFS_ACL_SUPPORT=y
CONFIG_NFS_COMMON=y
CONFIG_NFS_V4_2_SSC_HELPER=y
CONFIG_SUNRPC=y
CONFIG_SUNRPC_GSS=m
CONFIG_SUNRPC_BACKCHANNEL=y
CONFIG_RPCSEC_GSS_KRB5=m
# CONFIG_SUNRPC_DISABLE_INSECURE_ENCTYPES is not set
CONFIG_SUNRPC_DEBUG=y
CONFIG_SUNRPC_XPRT_RDMA=m
CONFIG_CEPH_FS=m
# CONFIG_CEPH_FSCACHE is not set
CONFIG_CEPH_FS_POSIX_ACL=y
# CONFIG_CEPH_FS_SECURITY_LABEL is not set
CONFIG_CIFS=m
CONFIG_CIFS_STATS2=y
CONFIG_CIFS_ALLOW_INSECURE_LEGACY=y
CONFIG_CIFS_UPCALL=y
CONFIG_CIFS_XATTR=y
CONFIG_CIFS_POSIX=y
CONFIG_CIFS_DEBUG=y
# CONFIG_CIFS_DEBUG2 is not set
# CONFIG_CIFS_DEBUG_DUMP_KEYS is not set
CONFIG_CIFS_DFS_UPCALL=y
# CONFIG_CIFS_SWN_UPCALL is not set
# CONFIG_CIFS_SMB_DIRECT is not set
# CONFIG_CIFS_FSCACHE is not set
# CONFIG_SMB_SERVER is not set
CONFIG_SMBFS_COMMON=m
# CONFIG_CODA_FS is not set
# CONFIG_AFS_FS is not set
CONFIG_9P_FS=y
CONFIG_9P_FS_POSIX_ACL=y
# CONFIG_9P_FS_SECURITY is not set
CONFIG_NLS=y
CONFIG_NLS_DEFAULT="utf8"
CONFIG_NLS_CODEPAGE_437=y
CONFIG_NLS_CODEPAGE_737=m
CONFIG_NLS_CODEPAGE_775=m
CONFIG_NLS_CODEPAGE_850=m
CONFIG_NLS_CODEPAGE_852=m
CONFIG_NLS_CODEPAGE_855=m
CONFIG_NLS_CODEPAGE_857=m
CONFIG_NLS_CODEPAGE_860=m
CONFIG_NLS_CODEPAGE_861=m
CONFIG_NLS_CODEPAGE_862=m
CONFIG_NLS_CODEPAGE_863=m
CONFIG_NLS_CODEPAGE_864=m
CONFIG_NLS_CODEPAGE_865=m
CONFIG_NLS_CODEPAGE_866=m
CONFIG_NLS_CODEPAGE_869=m
CONFIG_NLS_CODEPAGE_936=m
CONFIG_NLS_CODEPAGE_950=m
CONFIG_NLS_CODEPAGE_932=m
CONFIG_NLS_CODEPAGE_949=m
CONFIG_NLS_CODEPAGE_874=m
CONFIG_NLS_ISO8859_8=m
CONFIG_NLS_CODEPAGE_1250=m
CONFIG_NLS_CODEPAGE_1251=m
CONFIG_NLS_ASCII=y
CONFIG_NLS_ISO8859_1=m
CONFIG_NLS_ISO8859_2=m
CONFIG_NLS_ISO8859_3=m
CONFIG_NLS_ISO8859_4=m
CONFIG_NLS_ISO8859_5=m
CONFIG_NLS_ISO8859_6=m
CONFIG_NLS_ISO8859_7=m
CONFIG_NLS_ISO8859_9=m
CONFIG_NLS_ISO8859_13=m
CONFIG_NLS_ISO8859_14=m
CONFIG_NLS_ISO8859_15=m
CONFIG_NLS_KOI8_R=m
CONFIG_NLS_KOI8_U=m
CONFIG_NLS_MAC_ROMAN=m
CONFIG_NLS_MAC_CELTIC=m
CONFIG_NLS_MAC_CENTEURO=m
CONFIG_NLS_MAC_CROATIAN=m
CONFIG_NLS_MAC_CYRILLIC=m
CONFIG_NLS_MAC_GAELIC=m
CONFIG_NLS_MAC_GREEK=m
CONFIG_NLS_MAC_ICELAND=m
CONFIG_NLS_MAC_INUIT=m
CONFIG_NLS_MAC_ROMANIAN=m
CONFIG_NLS_MAC_TURKISH=m
CONFIG_NLS_UTF8=m
CONFIG_DLM=m
# CONFIG_DLM_DEPRECATED_API is not set
CONFIG_DLM_DEBUG=y
# CONFIG_UNICODE is not set
CONFIG_IO_WQ=y
# end of File systems

#
# Security options
#
CONFIG_KEYS=y
# CONFIG_KEYS_REQUEST_CACHE is not set
CONFIG_PERSISTENT_KEYRINGS=y
CONFIG_TRUSTED_KEYS=y
CONFIG_TRUSTED_KEYS_TPM=y
CONFIG_ENCRYPTED_KEYS=y
# CONFIG_USER_DECRYPTED_DATA is not set
# CONFIG_KEY_DH_OPERATIONS is not set
# CONFIG_KEY_NOTIFICATIONS is not set
# CONFIG_SECURITY_DMESG_RESTRICT is not set
CONFIG_SECURITY=y
CONFIG_SECURITYFS=y
CONFIG_SECURITY_NETWORK=y
# CONFIG_SECURITY_INFINIBAND is not set
CONFIG_SECURITY_NETWORK_XFRM=y
# CONFIG_SECURITY_PATH is not set
CONFIG_INTEL_TXT=y
CONFIG_HAVE_HARDENED_USERCOPY_ALLOCATOR=y
CONFIG_HARDENED_USERCOPY=y
CONFIG_FORTIFY_SOURCE=y
# CONFIG_STATIC_USERMODEHELPER is not set
# CONFIG_SECURITY_SELINUX is not set
# CONFIG_SECURITY_SMACK is not set
# CONFIG_SECURITY_TOMOYO is not set
# CONFIG_SECURITY_APPARMOR is not set
# CONFIG_SECURITY_LOADPIN is not set
CONFIG_SECURITY_YAMA=y
# CONFIG_SECURITY_SAFESETID is not set
# CONFIG_SECURITY_LOCKDOWN_LSM is not set
# CONFIG_SECURITY_LANDLOCK is not set
CONFIG_INTEGRITY=y
CONFIG_INTEGRITY_SIGNATURE=y
CONFIG_INTEGRITY_ASYMMETRIC_KEYS=y
CONFIG_INTEGRITY_TRUSTED_KEYRING=y
# CONFIG_INTEGRITY_PLATFORM_KEYRING is not set
CONFIG_INTEGRITY_AUDIT=y
CONFIG_IMA=y
# CONFIG_IMA_KEXEC is not set
CONFIG_IMA_MEASURE_PCR_IDX=10
CONFIG_IMA_NG_TEMPLATE=y
# CONFIG_IMA_SIG_TEMPLATE is not set
CONFIG_IMA_DEFAULT_TEMPLATE="ima-ng"
CONFIG_IMA_DEFAULT_HASH_SHA1=y
# CONFIG_IMA_DEFAULT_HASH_SHA256 is not set
# CONFIG_IMA_DEFAULT_HASH_SHA512 is not set
CONFIG_IMA_DEFAULT_HASH="sha1"
CONFIG_IMA_WRITE_POLICY=y
# CONFIG_IMA_READ_POLICY is not set
CONFIG_IMA_APPRAISE=y
# CONFIG_IMA_ARCH_POLICY is not set
# CONFIG_IMA_APPRAISE_BUILD_POLICY is not set
CONFIG_IMA_APPRAISE_BOOTPARAM=y
# CONFIG_IMA_APPRAISE_MODSIG is not set
CONFIG_IMA_TRUSTED_KEYRING=y
# CONFIG_IMA_BLACKLIST_KEYRING is not set
# CONFIG_IMA_LOAD_X509 is not set
CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=y
CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=y
# CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT is not set
# CONFIG_IMA_DISABLE_HTABLE is not set
# CONFIG_EVM is not set
CONFIG_DEFAULT_SECURITY_DAC=y
CONFIG_LSM="landlock,lockdown,yama,loadpin,safesetid,integrity,bpf"

#
# Kernel hardening options
#

#
# Memory initialization
#
CONFIG_INIT_STACK_NONE=y
# CONFIG_GCC_PLUGIN_STRUCTLEAK_USER is not set
# CONFIG_GCC_PLUGIN_STACKLEAK is not set
# CONFIG_INIT_ON_ALLOC_DEFAULT_ON is not set
# CONFIG_INIT_ON_FREE_DEFAULT_ON is not set
CONFIG_CC_HAS_ZERO_CALL_USED_REGS=y
# CONFIG_ZERO_CALL_USED_REGS is not set
# end of Memory initialization

CONFIG_RANDSTRUCT_NONE=y
# CONFIG_RANDSTRUCT_FULL is not set
# CONFIG_RANDSTRUCT_PERFORMANCE is not set
# end of Kernel hardening options
# end of Security options

CONFIG_XOR_BLOCKS=m
CONFIG_ASYNC_CORE=m
CONFIG_ASYNC_MEMCPY=m
CONFIG_ASYNC_XOR=m
CONFIG_ASYNC_PQ=m
CONFIG_ASYNC_RAID6_RECOV=m
CONFIG_CRYPTO=y

#
# Crypto core or helper
#
CONFIG_CRYPTO_ALGAPI=y
CONFIG_CRYPTO_ALGAPI2=y
CONFIG_CRYPTO_AEAD=y
CONFIG_CRYPTO_AEAD2=y
CONFIG_CRYPTO_SKCIPHER=y
CONFIG_CRYPTO_SKCIPHER2=y
CONFIG_CRYPTO_HASH=y
CONFIG_CRYPTO_HASH2=y
CONFIG_CRYPTO_RNG=y
CONFIG_CRYPTO_RNG2=y
CONFIG_CRYPTO_RNG_DEFAULT=y
CONFIG_CRYPTO_AKCIPHER2=y
CONFIG_CRYPTO_AKCIPHER=y
CONFIG_CRYPTO_KPP2=y
CONFIG_CRYPTO_KPP=m
CONFIG_CRYPTO_ACOMP2=y
CONFIG_CRYPTO_MANAGER=y
CONFIG_CRYPTO_MANAGER2=y
CONFIG_CRYPTO_USER=m
CONFIG_CRYPTO_MANAGER_DISABLE_TESTS=y
CONFIG_CRYPTO_NULL=y
CONFIG_CRYPTO_NULL2=y
CONFIG_CRYPTO_PCRYPT=m
CONFIG_CRYPTO_CRYPTD=y
CONFIG_CRYPTO_AUTHENC=m
# CONFIG_CRYPTO_TEST is not set
CONFIG_CRYPTO_SIMD=y
# end of Crypto core or helper

#
# Public-key cryptography
#
CONFIG_CRYPTO_RSA=y
CONFIG_CRYPTO_DH=m
# CONFIG_CRYPTO_DH_RFC7919_GROUPS is not set
CONFIG_CRYPTO_ECC=m
CONFIG_CRYPTO_ECDH=m
# CONFIG_CRYPTO_ECDSA is not set
# CONFIG_CRYPTO_ECRDSA is not set
# CONFIG_CRYPTO_SM2 is not set
# CONFIG_CRYPTO_CURVE25519 is not set
# end of Public-key cryptography

#
# Block ciphers
#
CONFIG_CRYPTO_AES=y
# CONFIG_CRYPTO_AES_TI is not set
CONFIG_CRYPTO_ANUBIS=m
# CONFIG_CRYPTO_ARIA is not set
CONFIG_CRYPTO_BLOWFISH=m
CONFIG_CRYPTO_BLOWFISH_COMMON=m
CONFIG_CRYPTO_CAMELLIA=m
CONFIG_CRYPTO_CAST_COMMON=m
CONFIG_CRYPTO_CAST5=m
CONFIG_CRYPTO_CAST6=m
CONFIG_CRYPTO_DES=m
CONFIG_CRYPTO_FCRYPT=m
CONFIG_CRYPTO_KHAZAD=m
CONFIG_CRYPTO_SEED=m
CONFIG_CRYPTO_SERPENT=m
# CONFIG_CRYPTO_SM4_GENERIC is not set
CONFIG_CRYPTO_TEA=m
CONFIG_CRYPTO_TWOFISH=m
CONFIG_CRYPTO_TWOFISH_COMMON=m
# end of Block ciphers

#
# Length-preserving ciphers and modes
#
# CONFIG_CRYPTO_ADIANTUM is not set
CONFIG_CRYPTO_ARC4=m
CONFIG_CRYPTO_CHACHA20=m
CONFIG_CRYPTO_CBC=y
CONFIG_CRYPTO_CFB=y
CONFIG_CRYPTO_CTR=y
CONFIG_CRYPTO_CTS=m
CONFIG_CRYPTO_ECB=y
# CONFIG_CRYPTO_HCTR2 is not set
# CONFIG_CRYPTO_KEYWRAP is not set
CONFIG_CRYPTO_LRW=m
# CONFIG_CRYPTO_OFB is not set
CONFIG_CRYPTO_PCBC=m
CONFIG_CRYPTO_XTS=m
# end of Length-preserving ciphers and modes

#
# AEAD (authenticated encryption with associated data) ciphers
#
# CONFIG_CRYPTO_AEGIS128 is not set
# CONFIG_CRYPTO_CHACHA20POLY1305 is not set
CONFIG_CRYPTO_CCM=m
CONFIG_CRYPTO_GCM=y
CONFIG_CRYPTO_SEQIV=y
CONFIG_CRYPTO_ECHAINIV=m
CONFIG_CRYPTO_ESSIV=m
# end of AEAD (authenticated encryption with associated data) ciphers

#
# Hashes, digests, and MACs
#
CONFIG_CRYPTO_BLAKE2B=m
CONFIG_CRYPTO_CMAC=m
CONFIG_CRYPTO_GHASH=y
CONFIG_CRYPTO_HMAC=y
CONFIG_CRYPTO_MD4=m
CONFIG_CRYPTO_MD5=y
CONFIG_CRYPTO_MICHAEL_MIC=m
# CONFIG_CRYPTO_POLY1305 is not set
CONFIG_CRYPTO_RMD160=m
CONFIG_CRYPTO_SHA1=y
CONFIG_CRYPTO_SHA256=y
CONFIG_CRYPTO_SHA512=y
CONFIG_CRYPTO_SHA3=m
CONFIG_CRYPTO_SM3=m
CONFIG_CRYPTO_SM3_GENERIC=m
# CONFIG_CRYPTO_STREEBOG is not set
CONFIG_CRYPTO_VMAC=m
CONFIG_CRYPTO_WP512=m
CONFIG_CRYPTO_XCBC=m
CONFIG_CRYPTO_XXHASH=m
# end of Hashes, digests, and MACs

#
# CRCs (cyclic redundancy checks)
#
CONFIG_CRYPTO_CRC32C=y
CONFIG_CRYPTO_CRC32=m
CONFIG_CRYPTO_CRCT10DIF=y
CONFIG_CRYPTO_CRC64_ROCKSOFT=m
# end of CRCs (cyclic redundancy checks)

#
# Compression
#
CONFIG_CRYPTO_DEFLATE=y
CONFIG_CRYPTO_LZO=y
# CONFIG_CRYPTO_842 is not set
# CONFIG_CRYPTO_LZ4 is not set
# CONFIG_CRYPTO_LZ4HC is not set
# CONFIG_CRYPTO_ZSTD is not set
# end of Compression

#
# Random number generation
#
CONFIG_CRYPTO_ANSI_CPRNG=m
CONFIG_CRYPTO_DRBG_MENU=y
CONFIG_CRYPTO_DRBG_HMAC=y
CONFIG_CRYPTO_DRBG_HASH=y
CONFIG_CRYPTO_DRBG_CTR=y
CONFIG_CRYPTO_DRBG=y
CONFIG_CRYPTO_JITTERENTROPY=y
# end of Random number generation

#
# Userspace interface
#
CONFIG_CRYPTO_USER_API=y
CONFIG_CRYPTO_USER_API_HASH=y
CONFIG_CRYPTO_USER_API_SKCIPHER=y
CONFIG_CRYPTO_USER_API_RNG=y
# CONFIG_CRYPTO_USER_API_RNG_CAVP is not set
CONFIG_CRYPTO_USER_API_AEAD=y
CONFIG_CRYPTO_USER_API_ENABLE_OBSOLETE=y
# CONFIG_CRYPTO_STATS is not set
# end of Userspace interface

CONFIG_CRYPTO_HASH_INFO=y

#
# Accelerated Cryptographic Algorithms for CPU (x86)
#
# CONFIG_CRYPTO_CURVE25519_X86 is not set
CONFIG_CRYPTO_AES_NI_INTEL=y
CONFIG_CRYPTO_BLOWFISH_X86_64=m
CONFIG_CRYPTO_CAMELLIA_X86_64=m
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64=m
CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64=m
CONFIG_CRYPTO_CAST5_AVX_X86_64=m
CONFIG_CRYPTO_CAST6_AVX_X86_64=m
# CONFIG_CRYPTO_DES3_EDE_X86_64 is not set
CONFIG_CRYPTO_SERPENT_SSE2_X86_64=m
CONFIG_CRYPTO_SERPENT_AVX_X86_64=m
CONFIG_CRYPTO_SERPENT_AVX2_X86_64=m
# CONFIG_CRYPTO_SM4_AESNI_AVX_X86_64 is not set
# CONFIG_CRYPTO_SM4_AESNI_AVX2_X86_64 is not set
CONFIG_CRYPTO_TWOFISH_X86_64=m
CONFIG_CRYPTO_TWOFISH_X86_64_3WAY=m
CONFIG_CRYPTO_TWOFISH_AVX_X86_64=m
# CONFIG_CRYPTO_ARIA_AESNI_AVX_X86_64 is not set
CONFIG_CRYPTO_CHACHA20_X86_64=m
# CONFIG_CRYPTO_AEGIS128_AESNI_SSE2 is not set
# CONFIG_CRYPTO_NHPOLY1305_SSE2 is not set
# CONFIG_CRYPTO_NHPOLY1305_AVX2 is not set
# CONFIG_CRYPTO_BLAKE2S_X86 is not set
# CONFIG_CRYPTO_POLYVAL_CLMUL_NI is not set
# CONFIG_CRYPTO_POLY1305_X86_64 is not set
CONFIG_CRYPTO_SHA1_SSSE3=y
CONFIG_CRYPTO_SHA256_SSSE3=y
CONFIG_CRYPTO_SHA512_SSSE3=m
# CONFIG_CRYPTO_SM3_AVX_X86_64 is not set
CONFIG_CRYPTO_GHASH_CLMUL_NI_INTEL=m
CONFIG_CRYPTO_CRC32C_INTEL=m
CONFIG_CRYPTO_CRC32_PCLMUL=m
CONFIG_CRYPTO_CRCT10DIF_PCLMUL=m
# end of Accelerated Cryptographic Algorithms for CPU (x86)

CONFIG_CRYPTO_HW=y
CONFIG_CRYPTO_DEV_PADLOCK=m
CONFIG_CRYPTO_DEV_PADLOCK_AES=m
CONFIG_CRYPTO_DEV_PADLOCK_SHA=m
# CONFIG_CRYPTO_DEV_ATMEL_ECC is not set
# CONFIG_CRYPTO_DEV_ATMEL_SHA204A is not set
CONFIG_CRYPTO_DEV_CCP=y
CONFIG_CRYPTO_DEV_QAT=m
CONFIG_CRYPTO_DEV_QAT_DH895xCC=m
CONFIG_CRYPTO_DEV_QAT_C3XXX=m
CONFIG_CRYPTO_DEV_QAT_C62X=m
# CONFIG_CRYPTO_DEV_QAT_4XXX is not set
CONFIG_CRYPTO_DEV_QAT_DH895xCCVF=m
CONFIG_CRYPTO_DEV_QAT_C3XXXVF=m
CONFIG_CRYPTO_DEV_QAT_C62XVF=m
CONFIG_CRYPTO_DEV_NITROX=m
CONFIG_CRYPTO_DEV_NITROX_CNN55XX=m
# CONFIG_CRYPTO_DEV_VIRTIO is not set
# CONFIG_CRYPTO_DEV_SAFEXCEL is not set
# CONFIG_CRYPTO_DEV_AMLOGIC_GXL is not set
CONFIG_ASYMMETRIC_KEY_TYPE=y
CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=y
CONFIG_X509_CERTIFICATE_PARSER=y
# CONFIG_PKCS8_PRIVATE_KEY_PARSER is not set
CONFIG_PKCS7_MESSAGE_PARSER=y
# CONFIG_PKCS7_TEST_KEY is not set
CONFIG_SIGNED_PE_FILE_VERIFICATION=y
# CONFIG_FIPS_SIGNATURE_SELFTEST is not set

#
# Certificates for signature checking
#
CONFIG_MODULE_SIG_KEY="certs/signing_key.pem"
CONFIG_MODULE_SIG_KEY_TYPE_RSA=y
# CONFIG_MODULE_SIG_KEY_TYPE_ECDSA is not set
CONFIG_SYSTEM_TRUSTED_KEYRING=y
CONFIG_SYSTEM_TRUSTED_KEYS=""
# CONFIG_SYSTEM_EXTRA_CERTIFICATE is not set
# CONFIG_SECONDARY_TRUSTED_KEYRING is not set
CONFIG_SYSTEM_BLACKLIST_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
# CONFIG_SYSTEM_REVOCATION_LIST is not set
# CONFIG_SYSTEM_BLACKLIST_AUTH_UPDATE is not set
# end of Certificates for signature checking

CONFIG_BINARY_PRINTF=y

#
# Library routines
#
CONFIG_RAID6_PQ=m
CONFIG_RAID6_PQ_BENCHMARK=y
# CONFIG_PACKING is not set
CONFIG_BITREVERSE=y
CONFIG_GENERIC_STRNCPY_FROM_USER=y
CONFIG_GENERIC_STRNLEN_USER=y
CONFIG_GENERIC_NET_UTILS=y
CONFIG_CORDIC=m
# CONFIG_PRIME_NUMBERS is not set
CONFIG_RATIONAL=y
CONFIG_GENERIC_PCI_IOMAP=y
CONFIG_GENERIC_IOMAP=y
CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
CONFIG_ARCH_HAS_FAST_MULTIPLIER=y
CONFIG_ARCH_USE_SYM_ANNOTATIONS=y

#
# Crypto library routines
#
CONFIG_CRYPTO_LIB_UTILS=y
CONFIG_CRYPTO_LIB_AES=y
CONFIG_CRYPTO_LIB_ARC4=m
CONFIG_CRYPTO_LIB_GF128MUL=y
CONFIG_CRYPTO_LIB_BLAKE2S_GENERIC=y
CONFIG_CRYPTO_ARCH_HAVE_LIB_CHACHA=m
CONFIG_CRYPTO_LIB_CHACHA_GENERIC=m
# CONFIG_CRYPTO_LIB_CHACHA is not set
# CONFIG_CRYPTO_LIB_CURVE25519 is not set
CONFIG_CRYPTO_LIB_DES=m
CONFIG_CRYPTO_LIB_POLY1305_RSIZE=11
# CONFIG_CRYPTO_LIB_POLY1305 is not set
# CONFIG_CRYPTO_LIB_CHACHA20POLY1305 is not set
CONFIG_CRYPTO_LIB_SHA1=y
CONFIG_CRYPTO_LIB_SHA256=y
# end of Crypto library routines

CONFIG_CRC_CCITT=y
CONFIG_CRC16=y
CONFIG_CRC_T10DIF=y
CONFIG_CRC64_ROCKSOFT=m
CONFIG_CRC_ITU_T=m
CONFIG_CRC32=y
# CONFIG_CRC32_SELFTEST is not set
CONFIG_CRC32_SLICEBY8=y
# CONFIG_CRC32_SLICEBY4 is not set
# CONFIG_CRC32_SARWATE is not set
# CONFIG_CRC32_BIT is not set
CONFIG_CRC64=m
# CONFIG_CRC4 is not set
CONFIG_CRC7=m
CONFIG_LIBCRC32C=m
CONFIG_CRC8=m
CONFIG_XXHASH=y
# CONFIG_RANDOM32_SELFTEST is not set
CONFIG_ZLIB_INFLATE=y
CONFIG_ZLIB_DEFLATE=y
CONFIG_LZO_COMPRESS=y
CONFIG_LZO_DECOMPRESS=y
CONFIG_LZ4_DECOMPRESS=y
CONFIG_ZSTD_COMMON=y
CONFIG_ZSTD_COMPRESS=m
CONFIG_ZSTD_DECOMPRESS=y
CONFIG_XZ_DEC=y
CONFIG_XZ_DEC_X86=y
CONFIG_XZ_DEC_POWERPC=y
CONFIG_XZ_DEC_IA64=y
CONFIG_XZ_DEC_ARM=y
CONFIG_XZ_DEC_ARMTHUMB=y
CONFIG_XZ_DEC_SPARC=y
# CONFIG_XZ_DEC_MICROLZMA is not set
CONFIG_XZ_DEC_BCJ=y
# CONFIG_XZ_DEC_TEST is not set
CONFIG_DECOMPRESS_GZIP=y
CONFIG_DECOMPRESS_BZIP2=y
CONFIG_DECOMPRESS_LZMA=y
CONFIG_DECOMPRESS_XZ=y
CONFIG_DECOMPRESS_LZO=y
CONFIG_DECOMPRESS_LZ4=y
CONFIG_DECOMPRESS_ZSTD=y
CONFIG_GENERIC_ALLOCATOR=y
CONFIG_REED_SOLOMON=m
CONFIG_REED_SOLOMON_ENC8=y
CONFIG_REED_SOLOMON_DEC8=y
CONFIG_TEXTSEARCH=y
CONFIG_TEXTSEARCH_KMP=m
CONFIG_TEXTSEARCH_BM=m
CONFIG_TEXTSEARCH_FSM=m
CONFIG_INTERVAL_TREE=y
CONFIG_XARRAY_MULTI=y
CONFIG_ASSOCIATIVE_ARRAY=y
CONFIG_HAS_IOMEM=y
CONFIG_HAS_IOPORT_MAP=y
CONFIG_HAS_DMA=y
CONFIG_DMA_OPS=y
CONFIG_NEED_SG_DMA_LENGTH=y
CONFIG_NEED_DMA_MAP_STATE=y
CONFIG_ARCH_DMA_ADDR_T_64BIT=y
CONFIG_ARCH_HAS_FORCE_DMA_UNENCRYPTED=y
CONFIG_SWIOTLB=y
CONFIG_DMA_CMA=y
# CONFIG_DMA_PERNUMA_CMA is not set

#
# Default contiguous memory area size:
#
CONFIG_CMA_SIZE_MBYTES=200
CONFIG_CMA_SIZE_SEL_MBYTES=y
# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
# CONFIG_CMA_SIZE_SEL_MIN is not set
# CONFIG_CMA_SIZE_SEL_MAX is not set
CONFIG_CMA_ALIGNMENT=8
# CONFIG_DMA_API_DEBUG is not set
# CONFIG_DMA_MAP_BENCHMARK is not set
CONFIG_SGL_ALLOC=y
CONFIG_CHECK_SIGNATURE=y
CONFIG_CPUMASK_OFFSTACK=y
# CONFIG_FORCE_NR_CPUS is not set
CONFIG_CPU_RMAP=y
CONFIG_DQL=y
CONFIG_GLOB=y
# CONFIG_GLOB_SELFTEST is not set
CONFIG_NLATTR=y
CONFIG_CLZ_TAB=y
CONFIG_IRQ_POLL=y
CONFIG_MPILIB=y
CONFIG_SIGNATURE=y
CONFIG_DIMLIB=y
CONFIG_OID_REGISTRY=y
CONFIG_UCS2_STRING=y
CONFIG_HAVE_GENERIC_VDSO=y
CONFIG_GENERIC_GETTIMEOFDAY=y
CONFIG_GENERIC_VDSO_TIME_NS=y
CONFIG_FONT_SUPPORT=y
# CONFIG_FONTS is not set
CONFIG_FONT_8x8=y
CONFIG_FONT_8x16=y
CONFIG_SG_POOL=y
CONFIG_ARCH_HAS_PMEM_API=y
CONFIG_MEMREGION=y
CONFIG_ARCH_HAS_CPU_CACHE_INVALIDATE_MEMREGION=y
CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE=y
CONFIG_ARCH_HAS_COPY_MC=y
CONFIG_ARCH_STACKWALK=y
CONFIG_STACKDEPOT=y
CONFIG_STACKDEPOT_ALWAYS_INIT=y
CONFIG_SBITMAP=y
# end of Library routines

CONFIG_ASN1_ENCODER=y

#
# Kernel hacking
#

#
# printk and dmesg options
#
CONFIG_PRINTK_TIME=y
CONFIG_PRINTK_CALLER=y
# CONFIG_STACKTRACE_BUILD_ID is not set
CONFIG_CONSOLE_LOGLEVEL_DEFAULT=7
CONFIG_CONSOLE_LOGLEVEL_QUIET=4
CONFIG_MESSAGE_LOGLEVEL_DEFAULT=4
CONFIG_BOOT_PRINTK_DELAY=y
CONFIG_DYNAMIC_DEBUG=y
CONFIG_DYNAMIC_DEBUG_CORE=y
CONFIG_SYMBOLIC_ERRNAME=y
CONFIG_DEBUG_BUGVERBOSE=y
# end of printk and dmesg options

CONFIG_DEBUG_KERNEL=y
CONFIG_DEBUG_MISC=y

#
# Compile-time checks and compiler options
#
CONFIG_DEBUG_INFO=y
CONFIG_AS_HAS_NON_CONST_LEB128=y
# CONFIG_DEBUG_INFO_NONE is not set
# CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT is not set
CONFIG_DEBUG_INFO_DWARF4=y
# CONFIG_DEBUG_INFO_DWARF5 is not set
CONFIG_DEBUG_INFO_REDUCED=y
CONFIG_DEBUG_INFO_COMPRESSED_NONE=y
# CONFIG_DEBUG_INFO_COMPRESSED_ZLIB is not set
# CONFIG_DEBUG_INFO_SPLIT is not set
CONFIG_PAHOLE_HAS_SPLIT_BTF=y
# CONFIG_GDB_SCRIPTS is not set
CONFIG_FRAME_WARN=8192
CONFIG_STRIP_ASM_SYMS=y
# CONFIG_READABLE_ASM is not set
# CONFIG_HEADERS_INSTALL is not set
CONFIG_DEBUG_SECTION_MISMATCH=y
CONFIG_SECTION_MISMATCH_WARN_ONLY=y
# CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_64B is not set
CONFIG_OBJTOOL=y
# CONFIG_VMLINUX_MAP is not set
# CONFIG_DEBUG_FORCE_WEAK_PER_CPU is not set
# end of Compile-time checks and compiler options

#
# Generic Kernel Debugging Instruments
#
CONFIG_MAGIC_SYSRQ=y
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x1
CONFIG_MAGIC_SYSRQ_SERIAL=y
CONFIG_MAGIC_SYSRQ_SERIAL_SEQUENCE=""
CONFIG_DEBUG_FS=y
CONFIG_DEBUG_FS_ALLOW_ALL=y
# CONFIG_DEBUG_FS_DISALLOW_MOUNT is not set
# CONFIG_DEBUG_FS_ALLOW_NONE is not set
CONFIG_HAVE_ARCH_KGDB=y
# CONFIG_KGDB is not set
CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
CONFIG_UBSAN=y
# CONFIG_UBSAN_TRAP is not set
CONFIG_CC_HAS_UBSAN_BOUNDS=y
CONFIG_UBSAN_BOUNDS=y
CONFIG_UBSAN_ONLY_BOUNDS=y
CONFIG_UBSAN_SHIFT=y
# CONFIG_UBSAN_DIV_ZERO is not set
# CONFIG_UBSAN_BOOL is not set
# CONFIG_UBSAN_ENUM is not set
# CONFIG_UBSAN_ALIGNMENT is not set
CONFIG_UBSAN_SANITIZE_ALL=y
# CONFIG_TEST_UBSAN is not set
CONFIG_HAVE_ARCH_KCSAN=y
CONFIG_HAVE_KCSAN_COMPILER=y
# end of Generic Kernel Debugging Instruments

#
# Networking Debugging
#
# CONFIG_NET_DEV_REFCNT_TRACKER is not set
# CONFIG_NET_NS_REFCNT_TRACKER is not set
# CONFIG_DEBUG_NET is not set
# end of Networking Debugging

#
# Memory Debugging
#
CONFIG_PAGE_EXTENSION=y
# CONFIG_DEBUG_PAGEALLOC is not set
CONFIG_SLUB_DEBUG=y
# CONFIG_SLUB_DEBUG_ON is not set
CONFIG_PAGE_OWNER=y
# CONFIG_PAGE_TABLE_CHECK is not set
# CONFIG_PAGE_POISONING is not set
# CONFIG_DEBUG_PAGE_REF is not set
# CONFIG_DEBUG_RODATA_TEST is not set
CONFIG_ARCH_HAS_DEBUG_WX=y
# CONFIG_DEBUG_WX is not set
CONFIG_GENERIC_PTDUMP=y
# CONFIG_PTDUMP_DEBUGFS is not set
# CONFIG_DEBUG_OBJECTS is not set
# CONFIG_SHRINKER_DEBUG is not set
CONFIG_HAVE_DEBUG_KMEMLEAK=y
# CONFIG_DEBUG_KMEMLEAK is not set
# CONFIG_DEBUG_STACK_USAGE is not set
# CONFIG_SCHED_STACK_END_CHECK is not set
CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE=y
# CONFIG_DEBUG_VM is not set
# CONFIG_DEBUG_VM_PGTABLE is not set
CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
# CONFIG_DEBUG_VIRTUAL is not set
CONFIG_DEBUG_MEMORY_INIT=y
# CONFIG_DEBUG_PER_CPU_MAPS is not set
CONFIG_HAVE_ARCH_KASAN=y
CONFIG_HAVE_ARCH_KASAN_VMALLOC=y
CONFIG_CC_HAS_KASAN_GENERIC=y
CONFIG_CC_HAS_WORKING_NOSANITIZE_ADDRESS=y
CONFIG_KASAN=y
CONFIG_KASAN_GENERIC=y
# CONFIG_KASAN_OUTLINE is not set
CONFIG_KASAN_INLINE=y
CONFIG_KASAN_STACK=y
CONFIG_KASAN_VMALLOC=y
# CONFIG_KASAN_MODULE_TEST is not set
CONFIG_HAVE_ARCH_KFENCE=y
# CONFIG_KFENCE is not set
CONFIG_HAVE_ARCH_KMSAN=y
# end of Memory Debugging

CONFIG_DEBUG_SHIRQ=y

#
# Debug Oops, Lockups and Hangs
#
CONFIG_PANIC_ON_OOPS=y
CONFIG_PANIC_ON_OOPS_VALUE=1
CONFIG_PANIC_TIMEOUT=0
CONFIG_LOCKUP_DETECTOR=y
CONFIG_SOFTLOCKUP_DETECTOR=y
# CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC is not set
CONFIG_HARDLOCKUP_DETECTOR_PERF=y
CONFIG_HARDLOCKUP_CHECK_TIMESTAMP=y
CONFIG_HARDLOCKUP_DETECTOR=y
CONFIG_BOOTPARAM_HARDLOCKUP_PANIC=y
CONFIG_DETECT_HUNG_TASK=y
CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=480
# CONFIG_BOOTPARAM_HUNG_TASK_PANIC is not set
CONFIG_WQ_WATCHDOG=y
# CONFIG_TEST_LOCKUP is not set
# end of Debug Oops, Lockups and Hangs

#
# Scheduler Debugging
#
CONFIG_SCHED_DEBUG=y
CONFIG_SCHED_INFO=y
CONFIG_SCHEDSTATS=y
# end of Scheduler Debugging

# CONFIG_DEBUG_TIMEKEEPING is not set

#
# Lock Debugging (spinlocks, mutexes, etc...)
#
CONFIG_LOCK_DEBUGGING_SUPPORT=y
# CONFIG_PROVE_LOCKING is not set
# CONFIG_LOCK_STAT is not set
# CONFIG_DEBUG_RT_MUTEXES is not set
# CONFIG_DEBUG_SPINLOCK is not set
# CONFIG_DEBUG_MUTEXES is not set
# CONFIG_DEBUG_WW_MUTEX_SLOWPATH is not set
# CONFIG_DEBUG_RWSEMS is not set
# CONFIG_DEBUG_LOCK_ALLOC is not set
CONFIG_DEBUG_ATOMIC_SLEEP=y
# CONFIG_DEBUG_LOCKING_API_SELFTESTS is not set
# CONFIG_LOCK_TORTURE_TEST is not set
# CONFIG_WW_MUTEX_SELFTEST is not set
# CONFIG_SCF_TORTURE_TEST is not set
# CONFIG_CSD_LOCK_WAIT_DEBUG is not set
# end of Lock Debugging (spinlocks, mutexes, etc...)

# CONFIG_DEBUG_IRQFLAGS is not set
CONFIG_STACKTRACE=y
# CONFIG_WARN_ALL_UNSEEDED_RANDOM is not set
# CONFIG_DEBUG_KOBJECT is not set

#
# Debug kernel data structures
#
CONFIG_DEBUG_LIST=y
# CONFIG_DEBUG_PLIST is not set
# CONFIG_DEBUG_SG is not set
# CONFIG_DEBUG_NOTIFIERS is not set
CONFIG_BUG_ON_DATA_CORRUPTION=y
# CONFIG_DEBUG_MAPLE_TREE is not set
# end of Debug kernel data structures

# CONFIG_DEBUG_CREDENTIALS is not set

#
# RCU Debugging
#
CONFIG_TORTURE_TEST=m
# CONFIG_RCU_SCALE_TEST is not set
# CONFIG_RCU_TORTURE_TEST is not set
CONFIG_RCU_REF_SCALE_TEST=m
CONFIG_RCU_CPU_STALL_TIMEOUT=60
CONFIG_RCU_EXP_CPU_STALL_TIMEOUT=0
# CONFIG_RCU_TRACE is not set
# CONFIG_RCU_EQS_DEBUG is not set
# end of RCU Debugging

# CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
# CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
CONFIG_LATENCYTOP=y
# CONFIG_DEBUG_CGROUP_REF is not set
CONFIG_USER_STACKTRACE_SUPPORT=y
CONFIG_NOP_TRACER=y
CONFIG_HAVE_RETHOOK=y
CONFIG_RETHOOK=y
CONFIG_HAVE_FUNCTION_TRACER=y
CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
CONFIG_HAVE_DYNAMIC_FTRACE=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_ARGS=y
CONFIG_HAVE_DYNAMIC_FTRACE_NO_PATCHABLE=y
CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
CONFIG_HAVE_FENTRY=y
CONFIG_HAVE_OBJTOOL_MCOUNT=y
CONFIG_HAVE_OBJTOOL_NOP_MCOUNT=y
CONFIG_HAVE_C_RECORDMCOUNT=y
CONFIG_HAVE_BUILDTIME_MCOUNT_SORT=y
CONFIG_BUILDTIME_MCOUNT_SORT=y
CONFIG_TRACER_MAX_TRACE=y
CONFIG_TRACE_CLOCK=y
CONFIG_RING_BUFFER=y
CONFIG_EVENT_TRACING=y
CONFIG_CONTEXT_SWITCH_TRACER=y
CONFIG_TRACING=y
CONFIG_GLOBAL_TRACE_BUF_SIZE=1441792
CONFIG_GENERIC_TRACER=y
CONFIG_TRACING_SUPPORT=y
CONFIG_FTRACE=y
# CONFIG_BOOTTIME_TRACING is not set
CONFIG_FUNCTION_TRACER=y
CONFIG_FUNCTION_GRAPH_TRACER=y
CONFIG_DYNAMIC_FTRACE=y
CONFIG_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=y
CONFIG_DYNAMIC_FTRACE_WITH_ARGS=y
# CONFIG_FPROBE is not set
CONFIG_FUNCTION_PROFILER=y
CONFIG_STACK_TRACER=y
# CONFIG_IRQSOFF_TRACER is not set
CONFIG_SCHED_TRACER=y
CONFIG_HWLAT_TRACER=y
# CONFIG_OSNOISE_TRACER is not set
# CONFIG_TIMERLAT_TRACER is not set
# CONFIG_MMIOTRACE is not set
CONFIG_FTRACE_SYSCALLS=y
CONFIG_TRACER_SNAPSHOT=y
# CONFIG_TRACER_SNAPSHOT_PER_CPU_SWAP is not set
CONFIG_BRANCH_PROFILE_NONE=y
# CONFIG_PROFILE_ANNOTATED_BRANCHES is not set
# CONFIG_BLK_DEV_IO_TRACE is not set
CONFIG_KPROBE_EVENTS=y
# CONFIG_KPROBE_EVENTS_ON_NOTRACE is not set
CONFIG_UPROBE_EVENTS=y
CONFIG_BPF_EVENTS=y
CONFIG_DYNAMIC_EVENTS=y
CONFIG_PROBE_EVENTS=y
CONFIG_BPF_KPROBE_OVERRIDE=y
CONFIG_FTRACE_MCOUNT_RECORD=y
CONFIG_FTRACE_MCOUNT_USE_CC=y
CONFIG_TRACING_MAP=y
CONFIG_SYNTH_EVENTS=y
CONFIG_HIST_TRIGGERS=y
# CONFIG_TRACE_EVENT_INJECT is not set
# CONFIG_TRACEPOINT_BENCHMARK is not set
CONFIG_RING_BUFFER_BENCHMARK=m
# CONFIG_TRACE_EVAL_MAP_FILE is not set
# CONFIG_FTRACE_RECORD_RECURSION is not set
# CONFIG_FTRACE_STARTUP_TEST is not set
# CONFIG_FTRACE_SORT_STARTUP_TEST is not set
# CONFIG_RING_BUFFER_STARTUP_TEST is not set
# CONFIG_RING_BUFFER_VALIDATE_TIME_DELTAS is not set
# CONFIG_PREEMPTIRQ_DELAY_TEST is not set
# CONFIG_SYNTH_EVENT_GEN_TEST is not set
# CONFIG_KPROBE_EVENT_GEN_TEST is not set
# CONFIG_HIST_TRIGGERS_DEBUG is not set
# CONFIG_RV is not set
CONFIG_PROVIDE_OHCI1394_DMA_INIT=y
# CONFIG_SAMPLES is not set
CONFIG_HAVE_SAMPLE_FTRACE_DIRECT=y
CONFIG_HAVE_SAMPLE_FTRACE_DIRECT_MULTI=y
CONFIG_ARCH_HAS_DEVMEM_IS_ALLOWED=y
CONFIG_STRICT_DEVMEM=y
# CONFIG_IO_STRICT_DEVMEM is not set

#
# x86 Debugging
#
CONFIG_EARLY_PRINTK_USB=y
CONFIG_X86_VERBOSE_BOOTUP=y
CONFIG_EARLY_PRINTK=y
CONFIG_EARLY_PRINTK_DBGP=y
CONFIG_EARLY_PRINTK_USB_XDBC=y
# CONFIG_EFI_PGT_DUMP is not set
# CONFIG_DEBUG_TLBFLUSH is not set
CONFIG_HAVE_MMIOTRACE_SUPPORT=y
# CONFIG_X86_DECODER_SELFTEST is not set
CONFIG_IO_DELAY_0X80=y
# CONFIG_IO_DELAY_0XED is not set
# CONFIG_IO_DELAY_UDELAY is not set
# CONFIG_IO_DELAY_NONE is not set
CONFIG_DEBUG_BOOT_PARAMS=y
# CONFIG_CPA_DEBUG is not set
# CONFIG_DEBUG_ENTRY is not set
# CONFIG_DEBUG_NMI_SELFTEST is not set
# CONFIG_X86_DEBUG_FPU is not set
# CONFIG_PUNIT_ATOM_DEBUG is not set
CONFIG_UNWINDER_ORC=y
# CONFIG_UNWINDER_FRAME_POINTER is not set
# end of x86 Debugging

#
# Kernel Testing and Coverage
#
# CONFIG_KUNIT is not set
# CONFIG_NOTIFIER_ERROR_INJECTION is not set
CONFIG_FUNCTION_ERROR_INJECTION=y
CONFIG_FAULT_INJECTION=y
# CONFIG_FAILSLAB is not set
# CONFIG_FAIL_PAGE_ALLOC is not set
# CONFIG_FAULT_INJECTION_USERCOPY is not set
CONFIG_FAIL_MAKE_REQUEST=y
# CONFIG_FAIL_IO_TIMEOUT is not set
# CONFIG_FAIL_FUTEX is not set
CONFIG_FAULT_INJECTION_DEBUG_FS=y
# CONFIG_FAIL_FUNCTION is not set
# CONFIG_FAIL_MMC_REQUEST is not set
# CONFIG_FAIL_SUNRPC is not set
# CONFIG_FAULT_INJECTION_STACKTRACE_FILTER is not set
CONFIG_ARCH_HAS_KCOV=y
CONFIG_CC_HAS_SANCOV_TRACE_PC=y
# CONFIG_KCOV is not set
CONFIG_RUNTIME_TESTING_MENU=y
# CONFIG_LKDTM is not set
# CONFIG_TEST_MIN_HEAP is not set
# CONFIG_TEST_DIV64 is not set
# CONFIG_BACKTRACE_SELF_TEST is not set
# CONFIG_TEST_REF_TRACKER is not set
# CONFIG_RBTREE_TEST is not set
# CONFIG_REED_SOLOMON_TEST is not set
# CONFIG_INTERVAL_TREE_TEST is not set
# CONFIG_PERCPU_TEST is not set
# CONFIG_ATOMIC64_SELFTEST is not set
# CONFIG_ASYNC_RAID6_TEST is not set
# CONFIG_TEST_HEXDUMP is not set
# CONFIG_STRING_SELFTEST is not set
# CONFIG_TEST_STRING_HELPERS is not set
# CONFIG_TEST_KSTRTOX is not set
# CONFIG_TEST_PRINTF is not set
# CONFIG_TEST_SCANF is not set
# CONFIG_TEST_BITMAP is not set
# CONFIG_TEST_UUID is not set
# CONFIG_TEST_XARRAY is not set
# CONFIG_TEST_MAPLE_TREE is not set
# CONFIG_TEST_RHASHTABLE is not set
# CONFIG_TEST_IDA is not set
# CONFIG_TEST_LKM is not set
# CONFIG_TEST_BITOPS is not set
# CONFIG_TEST_VMALLOC is not set
# CONFIG_TEST_USER_COPY is not set
CONFIG_TEST_BPF=m
# CONFIG_TEST_BLACKHOLE_DEV is not set
# CONFIG_FIND_BIT_BENCHMARK is not set
# CONFIG_TEST_FIRMWARE is not set
# CONFIG_TEST_SYSCTL is not set
# CONFIG_TEST_UDELAY is not set
# CONFIG_TEST_STATIC_KEYS is not set
# CONFIG_TEST_DYNAMIC_DEBUG is not set
# CONFIG_TEST_KMOD is not set
# CONFIG_TEST_MEMCAT_P is not set
# CONFIG_TEST_LIVEPATCH is not set
# CONFIG_TEST_MEMINIT is not set
# CONFIG_TEST_HMM is not set
# CONFIG_TEST_FREE_PAGES is not set
# CONFIG_TEST_FPU is not set
# CONFIG_TEST_CLOCKSOURCE_WATCHDOG is not set
CONFIG_ARCH_USE_MEMTEST=y
# CONFIG_MEMTEST is not set
# end of Kernel Testing and Coverage

#
# Rust hacking
#
# end of Rust hacking
# end of Kernel hacking

--unaw5JzaqjSEzDuB
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment; filename="job-script"

#!/bin/sh

export_top_env()
{
	export suite='igt'
	export testcase='igt'
	export category='functional'
	export job_origin='igt-part3.yaml'
	export queue_cmdline_keys='branch
commit
kbuild_queue_analysis'
	export queue='vip'
	export testbox='lkp-cml-d02'
	export tbox_group='lkp-cml-d02'
	export submit_id='63db73ce1906c55727a9d744'
	export job_file='/lkp/jobs/scheduled/lkp-cml-d02/igt-group-20-debian-11.1-x86_64-20220510.cgz-60177838fe0528a3be445b18883191256c548e6b-20230202-22311-1ia7qm6-2.yaml'
	export id='5a39ccaa7ae0ea1f0e7d67e1541d3d1c671ba391'
	export queuer_version='/zday/lkp'
	export model='Commet Lake'
	export nr_node=1
	export nr_cpu=20
	export memory='16G'
	export ssd_partitions='/dev/disk/by-id/ata-INTEL_SSDSC2BA800G4_BTHV61840945800OGN-part4'
	export rootfs_partition='/dev/disk/by-id/ata-INTEL_SSDSC2BA800G4_BTHV61840945800OGN-part3'
	export kernel_cmdline_hw='acpi_rsdp=0x9b0fe014'
	export commit='60177838fe0528a3be445b18883191256c548e6b'
	export netconsole_port=6683
	export ucode='0xc2'
	export need_kconfig_hw='{"PTP_1588_CLOCK"=>"y"}
{"IGB"=>"y"}
{"E1000E"=>"y"}
SATA_AHCI
DRM_I915
{"IGC"=>"y"}'
	export bisect_dmesg=true
	export kconfig='x86_64-rhel-8.3-func'
	export enqueue_time='2023-02-02 16:26:54 +0800'
	export _id='63db73ce1906c55727a9d744'
	export _rt='/result/igt/group-20/lkp-cml-d02/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b'
	export user='lkp'
	export compiler='gcc-11'
	export LKP_SERVER='internal-lkp-server'
	export head_commit='7fc8d5653ce2dbba2fab051e3d98b08e72b61b14'
	export base_commit='6d796c50f84ca79f1722bb131799e5a5710c4700'
	export branch='linux-review/Jouni-H-gander/drm-i915-fbdev-Implement-wrappers-for-callbacks-used-by-fbcon/20230124-171233'
	export rootfs='debian-11.1-x86_64-20220510.cgz'
	export result_root='/result/igt/group-20/lkp-cml-d02/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b/2'
	export scheduler_version='/lkp/lkp/.src-20230201-195102'
	export arch='x86_64'
	export max_uptime=1200
	export initrd='/osimage/debian/debian-11.1-x86_64-20220510.cgz'
	export bootloader_append='root=/dev/ram0
RESULT_ROOT=/result/igt/group-20/lkp-cml-d02/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b/2
BOOT_IMAGE=/pkg/linux/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b/vmlinuz-6.2.0-rc5-00875-g60177838fe05
branch=linux-review/Jouni-H-gander/drm-i915-fbdev-Implement-wrappers-for-callbacks-used-by-fbcon/20230124-171233
job=/lkp/jobs/scheduled/lkp-cml-d02/igt-group-20-debian-11.1-x86_64-20220510.cgz-60177838fe0528a3be445b18883191256c548e6b-20230202-22311-1ia7qm6-2.yaml
user=lkp
ARCH=x86_64
kconfig=x86_64-rhel-8.3-func
commit=60177838fe0528a3be445b18883191256c548e6b
initcall_debug
nmi_watchdog=0
acpi_rsdp=0x9b0fe014
max_uptime=1200
LKP_SERVER=internal-lkp-server
nokaslr
selinux=0
debug
apic=debug
sysrq_always_enabled
rcupdate.rcu_cpu_stall_timeout=100
net.ifnames=0
printk.devkmsg=on
panic=-1
softlockup_panic=1
nmi_watchdog=panic
oops=panic
load_ramdisk=2
prompt_ramdisk=0
drbd.minor_count=8
systemd.log_level=err
ignore_loglevel
console=tty0
earlyprintk=ttyS0,115200
console=ttyS0,115200
vga=normal
rw'
	export modules_initrd='/pkg/linux/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b/modules.cgz'
	export bm_initrd='/osimage/deps/debian-11.1-x86_64-20220510.cgz/run-ipconfig_20220515.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/lkp_20220513.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/rsync-rootfs_20220515.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/igt_20230128.cgz,/osimage/pkg/debian-11.1-x86_64-20220510.cgz/igt-x86_64-a978df79-1_20230128.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/hw_20220526.cgz'
	export ucode_initrd='/osimage/ucode/intel-ucode-20220804.cgz'
	export lkp_initrd='/osimage/user/lkp/lkp-x86_64.cgz'
	export site='lkp-wsx01'
	export LKP_CGI_PORT=80
	export LKP_CIFS_PORT=139
	export last_kernel='6.2.0-rc6'
	export repeat_to=6
	export schedule_notify_address=
	export stop_repeat_if_found='dmesg.BUG:sleeping_function_called_from_invalid_context_at_kernel/locking/mutex.c'
	export kbuild_queue_analysis=1
	export kernel='/pkg/linux/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b/vmlinuz-6.2.0-rc5-00875-g60177838fe05'
	export dequeue_time='2023-02-02 16:43:00 +0800'
	export job_initrd='/lkp/jobs/scheduled/lkp-cml-d02/igt-group-20-debian-11.1-x86_64-20220510.cgz-60177838fe0528a3be445b18883191256c548e6b-20230202-22311-1ia7qm6-2.cgz'

	[ -n "$LKP_SRC" ] ||
	export LKP_SRC=/lkp/${user:-lkp}/src
}

run_job()
{
	echo $$ > $TMP/run-job.pid

	. $LKP_SRC/lib/http.sh
	. $LKP_SRC/lib/job.sh
	. $LKP_SRC/lib/env.sh

	export_top_env

	run_monitor $LKP_SRC/monitors/wrapper kmsg
	run_monitor $LKP_SRC/monitors/wrapper heartbeat
	run_monitor $LKP_SRC/monitors/wrapper meminfo
	run_monitor $LKP_SRC/monitors/wrapper oom-killer
	run_monitor $LKP_SRC/monitors/plain/watchdog

	run_test group='group-20' $LKP_SRC/tests/wrapper igt
}

extract_stats()
{
	export stats_part_begin=
	export stats_part_end=

	env group='group-20' $LKP_SRC/stats/wrapper igt
	$LKP_SRC/stats/wrapper kmsg
	$LKP_SRC/stats/wrapper meminfo

	$LKP_SRC/stats/wrapper time igt.time
	$LKP_SRC/stats/wrapper dmesg
	$LKP_SRC/stats/wrapper kmsg
	$LKP_SRC/stats/wrapper last_state
	$LKP_SRC/stats/wrapper stderr
	$LKP_SRC/stats/wrapper time
}

"$@"

--unaw5JzaqjSEzDuB
Content-Type: application/x-xz
Content-Disposition: attachment; filename="kmsg.xz"
Content-Transfer-Encoding: base64

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
u9MD34cfeOynELHEZ/sCAAAAAARZWg==

--unaw5JzaqjSEzDuB
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment; filename="igt"

2023-02-02 08:44:10 build/tests/gem_ctx_param --run-subtest basic
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: basic
Subtest basic: SUCCESS (0.000s)
2023-02-02 08:44:10 build/tests/gem_ctx_param --run-subtest basic-default
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: basic-default
Subtest basic-default: SUCCESS (0.000s)
2023-02-02 08:44:10 build/tests/gem_ctx_param --run-subtest get-priority-new-ctx
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: get-priority-new-ctx
Subtest get-priority-new-ctx: SUCCESS (0.000s)
2023-02-02 08:44:10 build/tests/gem_ctx_param --run-subtest invalid-ctx-get
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-ctx-get
Subtest invalid-ctx-get: SUCCESS (0.000s)
2023-02-02 08:44:10 build/tests/gem_ctx_param --run-subtest invalid-ctx-set
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-ctx-set
Subtest invalid-ctx-set: SUCCESS (0.000s)
2023-02-02 08:44:10 build/tests/gem_ctx_param --run-subtest invalid-get-engines
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-get-engines
Subtest invalid-get-engines: SUCCESS (0.000s)
2023-02-02 08:44:10 build/tests/gem_ctx_param --run-subtest invalid-get-no-zeromap
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-get-no-zeromap
Subtest invalid-get-no-zeromap: SUCCESS (0.000s)
2023-02-02 08:44:10 build/tests/gem_ctx_param --run-subtest invalid-get-ringsize
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-get-ringsize
Subtest invalid-get-ringsize: SUCCESS (0.000s)
2023-02-02 08:44:11 build/tests/gem_ctx_param --run-subtest invalid-param-get
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-param-get
Subtest invalid-param-get: SUCCESS (0.000s)
2023-02-02 08:44:11 build/tests/gem_ctx_param --run-subtest invalid-param-set
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-param-set
Subtest invalid-param-set: SUCCESS (0.000s)
2023-02-02 08:44:11 build/tests/gem_ctx_param --run-subtest invalid-set-no-zeromap
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-set-no-zeromap
Subtest invalid-set-no-zeromap: SUCCESS (0.000s)
2023-02-02 08:44:11 build/tests/gem_ctx_param --run-subtest invalid-set-ringsize
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-set-ringsize
Subtest invalid-set-ringsize: SUCCESS (0.000s)
2023-02-02 08:44:11 build/tests/gem_ctx_param --run-subtest invalid-size-get
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-size-get
Subtest invalid-size-get: SUCCESS (0.000s)
2023-02-02 08:44:11 build/tests/gem_ctx_param --run-subtest invalid-size-set
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-size-set
Subtest invalid-size-set: SUCCESS (0.000s)
2023-02-02 08:44:11 build/tests/gem_ctx_param --run-subtest non-root-set
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: non-root-set
Subtest non-root-set: SUCCESS (0.004s)
2023-02-02 08:44:11 build/tests/gem_ctx_param --run-subtest root-set
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: root-set
Subtest root-set: SUCCESS (0.000s)
2023-02-02 08:44:11 build/tests/gem_ctx_param --run-subtest set-priority-invalid-size
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: set-priority-invalid-size
Subtest set-priority-invalid-size: SUCCESS (0.000s)
2023-02-02 08:44:11 build/tests/gem_ctx_param --run-subtest set-priority-not-supported
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: set-priority-not-supported
Test requirement not met in function __igt_unique____real_main298, file ../tests/i915/gem_ctx_param.c:399:
Test requirement: !gem_scheduler_has_ctx_priority(fd)
Subtest set-priority-not-supported: SKIP (0.000s)
2023-02-02 08:44:12 build/tests/gem_ctx_param --run-subtest set-priority-range
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: set-priority-range
Subtest set-priority-range: SUCCESS (0.008s)
2023-02-02 08:44:12 build/tests/gem_ctx_param --run-subtest vm
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: vm
Subtest vm: SUCCESS (0.008s)
2023-02-02 08:44:12 build/tests/gem_render_linear_blits --run-subtest aperture-shrink
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: aperture-shrink
(gem_render_linear_blits:1262) igt_os-WARNING: Insufficient free memory; /proc/meminfo:
MemTotal:       14119104 kB
MemFree:        11686504 kB
MemAvailable:   11566396 kB
Buffers:               0 kB
Cached:          1463364 kB
SwapCached:            0 kB
Active:              296 kB
Inactive:         202484 kB
Active(anon):        280 kB
Inactive(anon):   202244 kB
Active(file):         16 kB
Inactive(file):      240 kB
Unevictable:     1461804 kB
Mlocked:               0 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Zswap:                 0 kB
Zswapped:              0 kB
Dirty:                 0 kB
Writeback:             0 kB
AnonPages:        201332 kB
Mapped:            28716 kB
Shmem:              1428 kB
KReclaimable:      80904 kB
Slab:             579336 kB
SReclaimable:      80904 kB
SUnreclaim:       498432 kB
KernelStack:       10464 kB
PageTables:         2196 kB
SecPageTables:         0 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7059552 kB
Committed_AS:     293940 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       46852 kB
VmallocChunk:          0 kB
Percpu:             7360 kB
HardwareCorrupted:     0 kB
AnonHugePages:     18432 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
FileHugePages:         0 kB
FilePmdMapped:         0 kB
CmaTotal:         204800 kB
CmaFree:          204260 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      818228 kB
DirectMap2M:     5351424 kB
DirectMap1G:    11534336 kBInsufficient free memory; /proc/slabinfo:
slabinfo - version: 2.1
# name            <active_objs> <num_objs> <objsize> <objperslab> <pagesperslab> : tunables <limit> <batchcount> <sharedfactor> : slabdata <active_slabs> <num_slabs> <sharedavail>
btrfs_prelim_ref       0      0    120   34    1 : tunables    0    0    0 : slabdata      0      0      0
btrfs_delayed_extent_op      0      0     48   85    1 : tunables    0    0    0 : slabdata      0      0      0
btrfs_delayed_data_ref      0      0    176   46    2 : tunables    0    0    0 : slabdata      0      0      0
btrfs_delayed_tree_ref      0      0    168   24    1 : tunables    0    0    0 : slabdata      0      0      0
btrfs_delayed_ref_head      0      0    208   39    2 : tunables    0    0    0 : slabdata      0      0      0
btrfs_inode_defrag      0      0     88   46    1 : tunables    0    0    0 : slabdata      0      0      0
btrfs_delayed_node      0      0    384   42    4 : tunables    0    0    0 : slabdata      0      0      0
btrfs_ordered_extent      0      0    504   32    4 : tunables    0    0    0 : slabdata      0      0      0
btrfs_extent_map      39     39    208   39    2 : tunables    0    0    0 : slabdata      1      1      0
bio-344              108    108    448   36    4 : tunables    0    0    0 : slabdata      3      3      0
btrfs_extent_buffer     50     50    320   25    2 : tunables    0    0    0 : slabdata      2      2      0
btrfs_extent_state    117    117    104   39    1 : tunables    0    0    0 : slabdata      3      3      0
btrfs_free_space_bitmap      0      0   8192    4    8 : tunables    0    0    0 : slabdata      0      0      0
btrfs_free_space       0      0    168   24    1 : tunables    0    0    0 : slabdata      0      0      0
btrfs_path           230    230    176   46    2 : tunables    0    0    0 : slabdata      5      5      0
btrfs_trans_handle    240    240    168   24    1 : tunables    0    0    0 : slabdata     10     10      0
bio-216               25     25    320   25    2 : tunables    0    0    0 : slabdata      1      1      0
btrfs_inode           75     75   1272   25    8 : tunables    0    0    0 : slabdata      3      3      0
bio-120               42     42    192   42    2 : tunables    0    0    0 : slabdata      1      1      0
sd_ext_cdb             0      0     48   85    1 : tunables    0    0    0 : slabdata      0      0      0
i915_vma_resource    126    126    384   42    4 : tunables    0    0    0 : slabdata      3      3      0
i915_vma             126    126    768   42    8 : tunables    0    0    0 : slabdata      3      3      0
i915_priolist        128    128     64   64    1 : tunables    0    0    0 : slabdata      2      2      0
i915_dependency        0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
execute_cb             0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
i915_request          78     78    832   39    8 : tunables    0    0    0 : slabdata      2      2      0
drm_i915_gem_object    575    575   1280   25    8 : tunables    0    0    0 : slabdata     23     23      0
i915_lut_handle       85     85     48   85    1 : tunables    0    0    0 : slabdata      1      1      0
intel_context        540    540    896   36    8 : tunables    0    0    0 : slabdata     15     15      0
active_node           64     64    128   32    1 : tunables    0    0    0 : slabdata      2      2      0
kvm_async_pf           0      0    200   40    2 : tunables    0    0    0 : slabdata      0      0      0
kvm_vcpu               0      0   9472    3    8 : tunables    0    0    0 : slabdata      0      0      0
kvm_mmu_page_header      0      0    248   33    2 : tunables    0    0    0 : slabdata      0      0      0
pte_list_desc          0      0    192   42    2 : tunables    0    0    0 : slabdata      0      0      0
x86_emulator           0      0   2784   11    8 : tunables    0    0    0 : slabdata      0      0      0
drm_buddy_block        0      0    104   39    1 : tunables    0    0    0 : slabdata      0      0      0
scsi_sense_cache     224    224    128   32    1 : tunables    0    0    0 : slabdata      7      7      0
fuse_request           0      0    208   39    2 : tunables    0    0    0 : slabdata      0      0      0
fuse_inode             0      0    960   34    8 : tunables    0    0    0 : slabdata      0      0      0
fscrypt_info           0      0    192   42    2 : tunables    0    0    0 : slabdata      0      0      0
zswap_entry            0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
p9_req_t               0      0    216   37    2 : tunables    0    0    0 : slabdata      0      0      0
ip6-frags              0      0    248   33    2 : tunables    0    0    0 : slabdata      0      0      0
fib6_nodes            64     64    128   32    1 : tunables    0    0    0 : slabdata      2      2      0
ip6_dst_cache        125    125    320   25    2 : tunables    0    0    0 : slabdata      5      5      0
ip6_mrt_cache          0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
PINGv6                 0      0   1344   24    8 : tunables    0    0    0 : slabdata      0      0      0
RAWv6                 48     48   1344   24    8 : tunables    0    0    0 : slabdata      2      2      0
UDPLITEv6              0      0   1472   22    8 : tunables    0    0    0 : slabdata      0      0      0
UDPv6                 66     66   1472   22    8 : tunables    0    0    0 : slabdata      3      3      0
tw_sock_TCPv6          0      0    328   24    2 : tunables    0    0    0 : slabdata      0      0      0
request_sock_TCPv6      0      0    368   44    4 : tunables    0    0    0 : slabdata      0      0      0
TCPv6                 26     26   2496   13    8 : tunables    0    0    0 : slabdata      2      2      0
uhci_urb_priv          0      0     88   46    1 : tunables    0    0    0 : slabdata      0      0      0
io_kiocb               0      0    320   25    2 : tunables    0    0    0 : slabdata      0      0      0
bfq_io_cq              0      0    296   27    2 : tunables    0    0    0 : slabdata      0      0      0
bfq_queue              0      0    696   47    8 : tunables    0    0    0 : slabdata      0      0      0
mqueue_inode_cache     30     30   1088   30    8 : tunables    0    0    0 : slabdata      1      1      0
v9fs_inode_cache       0      0    840   39    8 : tunables    0    0    0 : slabdata      0      0      0
nfs_direct_cache       0      0    288   28    2 : tunables    0    0    0 : slabdata      0      0      0
nfs_commit_data       39     39    832   39    8 : tunables    0    0    0 : slabdata      1      1      0
nfs_write_data        32     32   1024   32    8 : tunables    0    0    0 : slabdata      1      1      0
nfs_read_data          0      0   1024   32    8 : tunables    0    0    0 : slabdata      0      0      0
nfs_inode_cache        0      0   1184   27    8 : tunables    0    0    0 : slabdata      0      0      0
nfs_page               0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
jbd2_transaction_s      0      0    320   25    2 : tunables    0    0    0 : slabdata      0      0      0
jbd2_inode             0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
jbd2_journal_handle      0      0     88   46    1 : tunables    0    0    0 : slabdata      0      0      0
jbd2_journal_head      0      0    176   46    2 : tunables    0    0    0 : slabdata      0      0      0
jbd2_revoke_table_s      0      0     32  128    1 : tunables    0    0    0 : slabdata      0      0      0
jbd2_revoke_record_s      0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_fc_dentry_update      0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_inode_cache       0      0   1304   25    8 : tunables    0    0    0 : slabdata      0      0      0
ext4_free_data         0      0     88   46    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_allocation_context      0      0    200   40    2 : tunables    0    0    0 : slabdata      0      0      0
ext4_prealloc_space      0      0    168   24    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_system_zone       0      0     56   73    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_io_end_vec        0      0     48   85    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_io_end            0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
bio_post_read_ctx    128    128     64   64    1 : tunables    0    0    0 : slabdata      2      2      0
pending_reservation      0      0     48   85    1 : tunables    0    0    0 : slabdata      0      0      0
extent_status          0      0     56   73    1 : tunables    0    0    0 : slabdata      0      0      0
mbcache                0      0     88   46    1 : tunables    0    0    0 : slabdata      0      0      0
kioctx                 0      0    704   46    8 : tunables    0    0    0 : slabdata      0      0      0
aio_kiocb              0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
fanotify_perm_event      0      0    104   39    1 : tunables    0    0    0 : slabdata      0      0      0
fanotify_path_event      0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
fanotify_fid_event      0      0    104   39    1 : tunables    0    0    0 : slabdata      0      0      0
fsnotify_mark          0      0    104   39    1 : tunables    0    0    0 : slabdata      0      0      0
dnotify_mark           0      0    112   36    1 : tunables    0    0    0 : slabdata      0      0      0
dnotify_struct         0      0     48   85    1 : tunables    0    0    0 : slabdata      0      0      0
dio                    0      0    768   42    8 : tunables    0    0    0 : slabdata      0      0      0
fasync_cache           0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
audit_tree_mark        0      0    112   36    1 : tunables    0    0    0 : slabdata      0      0      0
pid_namespace          0      0    200   40    2 : tunables    0    0    0 : slabdata      0      0      0
posix_timers_cache      0      0    320   25    2 : tunables    0    0    0 : slabdata      0      0      0
rpc_inode_cache       39     39    832   39    8 : tunables    0    0    0 : slabdata      1      1      0
rpc_buffers           15     15   2176   15    8 : tunables    0    0    0 : slabdata      1      1      0
rpc_tasks             25     25    320   25    2 : tunables    0    0    0 : slabdata      1      1      0
UNIX-STREAM          572    572   1216   26    8 : tunables    0    0    0 : slabdata     22     22      0
UNIX                 338    338   1216   26    8 : tunables    0    0    0 : slabdata     13     13      0
ip4-frags              0      0    264   31    2 : tunables    0    0    0 : slabdata      0      0      0
ip_mrt_cache           0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
UDP-Lite               0      0   1280   25    8 : tunables    0    0    0 : slabdata      0      0      0
tcp_bind2_bucket      64     64    128   32    1 : tunables    0    0    0 : slabdata      2      2      0
tcp_bind_bucket       64     64    128   32    1 : tunables    0    0    0 : slabdata      2      2      0
inet_peer_cache        0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
xfrm_dst_cache         0      0    384   42    4 : tunables    0    0    0 : slabdata      0      0      0
xfrm_state             0      0    896   36    8 : tunables    0    0    0 : slabdata      0      0      0
ip_fib_trie          192    192     64   64    1 : tunables    0    0    0 : slabdata      3      3      0
ip_fib_alias         138    138     88   46    1 : tunables    0    0    0 : slabdata      3      3      0
ip_dst_cache         192    192    256   32    2 : tunables    0    0    0 : slabdata      6      6      0
PING                   0      0   1152   28    8 : tunables    0    0    0 : slabdata      0      0      0
RAW                   56     56   1152   28    8 : tunables    0    0    0 : slabdata      2      2      0
UDP                  225    225   1280   25    8 : tunables    0    0    0 : slabdata      9      9      0
tw_sock_TCP           24     24    328   24    2 : tunables    0    0    0 : slabdata      1      1      0
request_sock_TCP       0      0    368   44    4 : tunables    0    0    0 : slabdata      0      0      0
TCP                   39     39   2368   13    8 : tunables    0    0    0 : slabdata      3      3      0
hugetlbfs_inode_cache     84     84    776   42    8 : tunables    0    0    0 : slabdata      2      2      0
dquot                  0      0    320   25    2 : tunables    0    0    0 : slabdata      0      0      0
bio-248               75     75    320   25    2 : tunables    0    0    0 : slabdata      3      3      0
ep_head             2432   2432     32  128    1 : tunables    0    0    0 : slabdata     19     19      0
eventpoll_pwq        840    840     96   42    1 : tunables    0    0    0 : slabdata     20     20      0
eventpoll_epi        840    840    192   42    2 : tunables    0    0    0 : slabdata     20     20      0
inotify_inode_mark    396    396    112   36    1 : tunables    0    0    0 : slabdata     11     11      0
dax_cache             36     36    896   36    8 : tunables    0    0    0 : slabdata      1      1      0
sgpool-128             7      7   4352    7    8 : tunables    0    0    0 : slabdata      1      1      0
sgpool-64             30     30   2176   15    8 : tunables    0    0    0 : slabdata      2      2      0
sgpool-32             56     56   1152   28    8 : tunables    0    0    0 : slabdata      2      2      0
sgpool-16            100    100    640   25    4 : tunables    0    0    0 : slabdata      4      4      0
sgpool-8             175    175    320   25    2 : tunables    0    0    0 : slabdata      7      7      0
request_queue         32     32   1000   32    8 : tunables    0    0    0 : slabdata      1      1      0
blkdev_ioc            34     34    120   34    1 : tunables    0    0    0 : slabdata      1      1      0
bio-184              288    288    256   32    2 : tunables    0    0    0 : slabdata      9      9      0
biovec-max            77     77   4352    7    8 : tunables    0    0    0 : slabdata     11     11      0
biovec-128             0      0   2176   15    8 : tunables    0    0    0 : slabdata      0      0      0
biovec-64            168    168   1152   28    8 : tunables    0    0    0 : slabdata      6      6      0
biovec-16            150    150    320   25    2 : tunables    0    0    0 : slabdata      6      6      0
bio_integrity_payload     32     32    256   32    2 : tunables    0    0    0 : slabdata      1      1      0
khugepaged_mm_slot    552    552    176   46    2 : tunables    0    0    0 : slabdata     12     12      0
ksm_mm_slot            0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
ksm_stable_node        0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
ksm_rmap_item          0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
user_namespace         0      0    752   43    8 : tunables    0    0    0 : slabdata      0      0      0
uid_cache            128    128    256   32    2 : tunables    0    0    0 : slabdata      4      4      0
iommu_iova             0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
dmaengine-unmap-256     14     14   2240   14    8 : tunables    0    0    0 : slabdata      1      1      0
dmaengine-unmap-128     26     26   1216   26    8 : tunables    0    0    0 : slabdata      1      1      0
dmaengine-unmap-16     32     32    256   32    2 : tunables    0    0    0 : slabdata      1      1      0
dmaengine-unmap-2     64     64     64   64    1 : tunables    0    0    0 : slabdata      1      1      0
audit_buffer         102    102     40  102    1 : tunables    0    0    0 : slabdata      1      1      0
sock_inode_cache     864    864    896   36    8 : tunables    0    0    0 : slabdata     24     24      0
skbuff_ext_cache       0      0    192   42    2 : tunables    0    0    0 : slabdata      0      0      0
skbuff_fclone_cache     25     25    640   25    4 : tunables    0    0    0 : slabdata      1      1      0
skbuff_head_cache   2341   2450    320   25    2 : tunables    0    0    0 : slabdata     98     98      0
configfs_dir_cache     34     34    120   34    1 : tunables    0    0    0 : slabdata      1      1      0
file_lock_cache      464    464    280   29    2 : tunables    0    0    0 : slabdata     16     16      0
file_lock_ctx        368    368     88   46    1 : tunables    0    0    0 : slabdata      8      8      0
fsnotify_mark_connector    935    935     48   85    1 : tunables    0    0    0 : slabdata     11     11      0
buffer_head           72     72    168   24    1 : tunables    0    0    0 : slabdata      3      3      0
x86_lbr                0      0    928   35    8 : tunables    0    0    0 : slabdata      0      0      0
task_delay_info        0      0    192   42    2 : tunables    0    0    0 : slabdata      0      0      0
taskstats            102    102    480   34    4 : tunables    0    0    0 : slabdata      3      3      0
proc_dir_entry      1120   1120    256   32    2 : tunables    0    0    0 : slabdata     35     35      0
pde_opener          1460   1460     56   73    1 : tunables    0    0    0 : slabdata     20     20      0
proc_inode_cache    1521   1521    824   39    8 : tunables    0    0    0 : slabdata     39     39      0
seq_file            3521   3696    184   44    2 : tunables    0    0    0 : slabdata     84     84      0
sigqueue            1044   1044    112   36    1 : tunables    0    0    0 : slabdata     29     29      0
bdev_cache            54     54   1728   18    8 : tunables    0    0    0 : slabdata      3      3      0
shmem_inode_cache   1512   1512    888   36    8 : tunables    0    0    0 : slabdata     42     42      0
kernfs_iattrs_cache    324    324    112   36    1 : tunables    0    0    0 : slabdata      9      9      0
kernfs_node_cache  41760  42504    192   42    2 : tunables    0    0    0 : slabdata   1012   1012      0
mnt_cache            714    714    384   42    4 : tunables    0    0    0 : slabdata     17     17      0
filp               38732  39325    320   25    2 : tunables    0    0    0 : slabdata   1573   1573      0
inode_cache        57319  57577    752   43    8 : tunables    0    0    0 : slabdata   1339   1339      0
dentry             92247  92640    256   32    2 : tunables    0    0    0 : slabdata   2895   2895      0
names_cache        39481  39585   4352    7    8 : tunables    0    0    0 : slabdata   5655   5655      0
net_namespace          7      7   4544    7    8 : tunables    0    0    0 : slabdata      1      1      0
iint_cache             0      0    176   46    2 : tunables    0    0    0 : slabdata      0      0      0
key_jar              300    300    320   25    2 : tunables    0    0    0 : slabdata     12     12      0
uts_namespace         66     66    496   33    4 : tunables    0    0    0 : slabdata      2      2      0
nsproxy              156    156    104   39    1 : tunables    0    0    0 : slabdata      4      4      0
vm_area_struct     53033  54054    208   39    2 : tunables    0    0    0 : slabdata   1386   1386      0
fs_cache            1088   1088    128   32    1 : tunables    0    0    0 : slabdata     34     34      0
files_cache         1287   1287    832   39    8 : tunables    0    0    0 : slabdata     33     33      0
signal_cache        1220   1250   1280   25    8 : tunables    0    0    0 : slabdata     50     50      0
sighand_cache        602    602   2240   14    8 : tunables    0    0    0 : slabdata     43     43      0
task_struct          893    900  10624    3    8 : tunables    0    0    0 : slabdata    300    300      0
cred_jar            3011   3456    256   32    2 : tunables    0    0    0 : slabdata    108    108      0
anon_vma_chain     27677  28014     96   42    1 : tunables    0    0    0 : slabdata    667    667      0
anon_vma            3060   3060    136   30    1 : tunables    0    0    0 : slabdata    102    102      0
pid                 1554   1554    192   42    2 : tunables    0    0    0 : slabdata     37     37      0
Acpi-Operand       17349  31707    104   39    1 : tunables    0    0    0 : slabdata    813    813      0
Acpi-ParseExt       2232   2412    112   36    1 : tunables    0    0    0 : slabdata     67     67      0
Acpi-Parse          3404   3404     88   46    1 : tunables    0    0    0 : slabdata     74     74      0
Acpi-State          2952   2952    112   36    1 : tunables    0    0    0 : slabdata     82     82      0
Acpi-Namespace      8511   8512     64   64    1 : tunables    0    0    0 : slabdata    133    133      0
shared_policy_node      0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
numa_policy           24     24    336   24    2 : tunables    0    0    0 : slabdata      1      1      0
perf_event            23     23   1368   23    8 : tunables    0    0    0 : slabdata      1      1      0
trace_event_file    2176   2176    120   34    1 : tunables    0    0    0 : slabdata     64     64      0
ftrace_event_field   5568   5568     64   64    1 : tunables    0    0    0 : slabdata     87     87      0
pool_workqueue       448    448    512   32    4 : tunables    0    0    0 : slabdata     14     14      0
maple_node        372649 374560    512   32    4 : tunables    0    0    0 : slabdata  11705  11705      0
radix_tree_node    17134  17250    704   46    8 : tunables    0    0    0 : slabdata    375    375      0
task_group           468    468    832   39    8 : tunables    0    0    0 : slabdata     12     12      0
mm_struct           1296   1296   1344   24    8 : tunables    0    0    0 : slabdata     54     54      0
vmap_area           3037   3150     96   42    1 : tunables    0    0    0 : slabdata     75     75      0
kmalloc-cg-8k          4      4  16384    2    8 : tunables    0    0    0 : slabdata      2      2      0
kmalloc-cg-4k        512    512   8192    4    8 : tunables    0    0    0 : slabdata    128    128      0
kmalloc-cg-2k        361    376   4096    8    8 : tunables    0    0    0 : slabdata     47     47      0
kmalloc-cg-1k        657    688   2048   16    8 : tunables    0    0    0 : slabdata     43     43      0
kmalloc-cg-512      1126   1280   1024   32    8 : tunables    0    0    0 : slabdata     40     40      0
kmalloc-cg-256       224    224    512   32    4 : tunables    0    0    0 : slabdata      7      7      0
kmalloc-cg-192       960    960    256   32    2 : tunables    0    0    0 : slabdata     30     30      0
kmalloc-cg-128       384    384    256   32    2 : tunables    0    0    0 : slabdata     12     12      0
kmalloc-cg-96        384    384    128   32    1 : tunables    0    0    0 : slabdata     12     12      0
kmalloc-cg-64        544    544    128   32    1 : tunables    0    0    0 : slabdata     17     17      0
kmalloc-cg-32       1792   1792     64   64    1 : tunables    0    0    0 : slabdata     28     28      0
kmalloc-cg-16       1408   1408     32  128    1 : tunables    0    0    0 : slabdata     11     11      0
kmalloc-cg-8        1326   1326     40  102    1 : tunables    0    0    0 : slabdata     13     13      0
dma-kmalloc-8k         0      0  16384    2    8 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-4k         0      0   8192    4    8 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-2k         0      0   4096    8    8 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-1k         0      0   2048   16    8 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-512        0      0   1024   32    8 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-256        0      0    512   32    4 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-192        0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-128        0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-96         0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-64         0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-32         0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-16         0      0     32  128    1 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-8          0      0     40  102    1 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-8k         0      0  16384    2    8 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-4k         0      0   8192    4    8 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-2k         0      0   4096    8    8 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-1k         0      0   2048   16    8 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-512        0      0   1024   32    8 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-256        0      0    512   32    4 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-192       32     32    256   32    2 : tunables    0    0    0 : slabdata      1      1      0
kmalloc-rcl-128       32     32    256   32    2 : tunables    0    0    0 : slabdata      1      1      0
kmalloc-rcl-96       640    640    128   32    1 : tunables    0    0    0 : slabdata     20     20      0
kmalloc-rcl-64      2544   2784    128   32    1 : tunables    0    0    0 : slabdata     87     87      0
kmalloc-rcl-32         0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-16         0      0     32  128    1 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-8          0      0     40  102    1 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-8k           146    146  16384    2    8 : tunables    0    0    0 : slabdata     73     73      0
kmalloc-4k           751    880   8192    4    8 : tunables    0    0    0 : slabdata    220    220      0
kmalloc-2k          1506   2288   4096    8    8 : tunables    0    0    0 : slabdata    286    286      0
kmalloc-1k          2230   3200   2048   16    8 : tunables    0    0    0 : slabdata    200    200      0
kmalloc-512         6158   8256   1024   32    8 : tunables    0    0    0 : slabdata    258    258      0
kmalloc-256         7726   8512    512   32    4 : tunables    0    0    0 : slabdata    266    266      0
kmalloc-192         3043   4512    256   32    2 : tunables    0    0    0 : slabdata    141    141      0
kmalloc-128         2404   2560    256   32    2 : tunables    0    0    0 : slabdata     80     80      0
kmalloc-96          4617   7840    128   32    1 : tunables    0    0    0 : slabdata    245    245      0
kmalloc-64         10622  12128    128   32    1 : tunables    0    0    0 : slabdata    379    379      0
kmalloc-32          9473  14400     64   64    1 : tunables    0    0    0 : slabdata    225    225      0
kmalloc-16         11451  14592     32  128    1 : tunables    0    0    0 : slabdata    114    114      0
kmalloc-8           9903  22746     40  102    1 : tunables    0    0    0 : slabdata    223    223      0
kmem_cache_node      640    640    128   32    1 : tunables    0    0    0 : slabdata     20     20      0
kmem_cache           575    575    320   25    2 : tunables    0    0    0 : slabdata     23     23      0Test requirement not met in function igt_require_memory, file ../lib/igt_os.c:409:
Test requirement: sufficient_memory
Estimated that we need 402653184 objects and 405798912 MiB for the test, but only have 12724 MiB available (RAM) and a maximum of 9223372036854775807 objects
Subtest aperture-shrink: SKIP (0.160s)
gem_render_linear_blits: ../lib/igt_core.c:2291: igt_exit: Assertion `waitpid(-1, &tmp, WNOHANG) == -1 && errno == ECHILD' failed.
Received signal SIGABRT.
Stack trace: 
 #0 [igt_nsec_elapsed+0x3b5]
 #1 [killpg+0x40]
 #2 [gsignal+0x141]
 #3 [abort+0x123]
 #4 [<unknown>+0x123]
 #5 [__assert_fail+0x42]
 #6 [igt_exit+0x156]
 #7 [main+0x2c]
 #8 [__libc_start_main+0xea]
 #9 [_start+0x2a]
Aborted
2023-02-02 08:44:12 build/tests/gem_render_linear_blits --run-subtest aperture-thrash
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: aperture-thrash
(gem_render_linear_blits:1285) igt_os-WARNING: Insufficient free memory; /proc/meminfo:
MemTotal:       14119104 kB
MemFree:        11686780 kB
MemAvailable:   11566628 kB
Buffers:               0 kB
Cached:          1463484 kB
SwapCached:            0 kB
Active:              344 kB
Inactive:         202612 kB
Active(anon):        344 kB
Inactive(anon):   202356 kB
Active(file):          0 kB
Inactive(file):      256 kB
Unevictable:     1461804 kB
Mlocked:               0 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Zswap:                 0 kB
Zswapped:              0 kB
Dirty:                 0 kB
Writeback:             0 kB
AnonPages:        201328 kB
Mapped:            28848 kB
Shmem:              1548 kB
KReclaimable:      80816 kB
Slab:             576868 kB
SReclaimable:      80816 kB
SUnreclaim:       496052 kB
KernelStack:       10420 kB
PageTables:         1924 kB
SecPageTables:         0 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7059552 kB
Committed_AS:     290668 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       46884 kB
VmallocChunk:          0 kB
Percpu:             7360 kB
HardwareCorrupted:     0 kB
AnonHugePages:     18432 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
FileHugePages:         0 kB
FilePmdMapped:         0 kB
CmaTotal:         204800 kB
CmaFree:          204260 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      818228 kB
DirectMap2M:     5351424 kB
DirectMap1G:    11534336 kBInsufficient free memory; /proc/slabinfo:
slabinfo - version: 2.1
# name            <active_objs> <num_objs> <objsize> <objperslab> <pagesperslab> : tunables <limit> <batchcount> <sharedfactor> : slabdata <active_slabs> <num_slabs> <sharedavail>
btrfs_prelim_ref       0      0    120   34    1 : tunables    0    0    0 : slabdata      0      0      0
btrfs_delayed_extent_op      0      0     48   85    1 : tunables    0    0    0 : slabdata      0      0      0
btrfs_delayed_data_ref      0      0    176   46    2 : tunables    0    0    0 : slabdata      0      0      0
btrfs_delayed_tree_ref      0      0    168   24    1 : tunables    0    0    0 : slabdata      0      0      0
btrfs_delayed_ref_head      0      0    208   39    2 : tunables    0    0    0 : slabdata      0      0      0
btrfs_inode_defrag      0      0     88   46    1 : tunables    0    0    0 : slabdata      0      0      0
btrfs_delayed_node      0      0    384   42    4 : tunables    0    0    0 : slabdata      0      0      0
btrfs_ordered_extent      0      0    504   32    4 : tunables    0    0    0 : slabdata      0      0      0
btrfs_extent_map      39     39    208   39    2 : tunables    0    0    0 : slabdata      1      1      0
bio-344              108    108    448   36    4 : tunables    0    0    0 : slabdata      3      3      0
btrfs_extent_buffer     50     50    320   25    2 : tunables    0    0    0 : slabdata      2      2      0
btrfs_extent_state    117    117    104   39    1 : tunables    0    0    0 : slabdata      3      3      0
btrfs_free_space_bitmap      0      0   8192    4    8 : tunables    0    0    0 : slabdata      0      0      0
btrfs_free_space       0      0    168   24    1 : tunables    0    0    0 : slabdata      0      0      0
btrfs_path           230    230    176   46    2 : tunables    0    0    0 : slabdata      5      5      0
btrfs_trans_handle    264    264    168   24    1 : tunables    0    0    0 : slabdata     11     11      0
bio-216               25     25    320   25    2 : tunables    0    0    0 : slabdata      1      1      0
btrfs_inode           75     75   1272   25    8 : tunables    0    0    0 : slabdata      3      3      0
bio-120               42     42    192   42    2 : tunables    0    0    0 : slabdata      1      1      0
sd_ext_cdb             0      0     48   85    1 : tunables    0    0    0 : slabdata      0      0      0
i915_vma_resource    126    126    384   42    4 : tunables    0    0    0 : slabdata      3      3      0
i915_vma             126    126    768   42    8 : tunables    0    0    0 : slabdata      3      3      0
i915_priolist        128    128     64   64    1 : tunables    0    0    0 : slabdata      2      2      0
i915_dependency        0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
execute_cb             0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
i915_request          78     78    832   39    8 : tunables    0    0    0 : slabdata      2      2      0
drm_i915_gem_object    575    575   1280   25    8 : tunables    0    0    0 : slabdata     23     23      0
i915_lut_handle       85     85     48   85    1 : tunables    0    0    0 : slabdata      1      1      0
intel_context        576    576    896   36    8 : tunables    0    0    0 : slabdata     16     16      0
active_node           64     64    128   32    1 : tunables    0    0    0 : slabdata      2      2      0
kvm_async_pf           0      0    200   40    2 : tunables    0    0    0 : slabdata      0      0      0
kvm_vcpu               0      0   9472    3    8 : tunables    0    0    0 : slabdata      0      0      0
kvm_mmu_page_header      0      0    248   33    2 : tunables    0    0    0 : slabdata      0      0      0
pte_list_desc          0      0    192   42    2 : tunables    0    0    0 : slabdata      0      0      0
x86_emulator           0      0   2784   11    8 : tunables    0    0    0 : slabdata      0      0      0
drm_buddy_block        0      0    104   39    1 : tunables    0    0    0 : slabdata      0      0      0
scsi_sense_cache     224    224    128   32    1 : tunables    0    0    0 : slabdata      7      7      0
fuse_request           0      0    208   39    2 : tunables    0    0    0 : slabdata      0      0      0
fuse_inode             0      0    960   34    8 : tunables    0    0    0 : slabdata      0      0      0
fscrypt_info           0      0    192   42    2 : tunables    0    0    0 : slabdata      0      0      0
zswap_entry            0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
p9_req_t               0      0    216   37    2 : tunables    0    0    0 : slabdata      0      0      0
ip6-frags              0      0    248   33    2 : tunables    0    0    0 : slabdata      0      0      0
fib6_nodes            64     64    128   32    1 : tunables    0    0    0 : slabdata      2      2      0
ip6_dst_cache        125    125    320   25    2 : tunables    0    0    0 : slabdata      5      5      0
ip6_mrt_cache          0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
PINGv6                 0      0   1344   24    8 : tunables    0    0    0 : slabdata      0      0      0
RAWv6                 48     48   1344   24    8 : tunables    0    0    0 : slabdata      2      2      0
UDPLITEv6              0      0   1472   22    8 : tunables    0    0    0 : slabdata      0      0      0
UDPv6                 66     66   1472   22    8 : tunables    0    0    0 : slabdata      3      3      0
tw_sock_TCPv6          0      0    328   24    2 : tunables    0    0    0 : slabdata      0      0      0
request_sock_TCPv6      0      0    368   44    4 : tunables    0    0    0 : slabdata      0      0      0
TCPv6                 26     26   2496   13    8 : tunables    0    0    0 : slabdata      2      2      0
uhci_urb_priv          0      0     88   46    1 : tunables    0    0    0 : slabdata      0      0      0
io_kiocb               0      0    320   25    2 : tunables    0    0    0 : slabdata      0      0      0
bfq_io_cq              0      0    296   27    2 : tunables    0    0    0 : slabdata      0      0      0
bfq_queue              0      0    696   47    8 : tunables    0    0    0 : slabdata      0      0      0
mqueue_inode_cache     30     30   1088   30    8 : tunables    0    0    0 : slabdata      1      1      0
v9fs_inode_cache       0      0    840   39    8 : tunables    0    0    0 : slabdata      0      0      0
nfs_direct_cache       0      0    288   28    2 : tunables    0    0    0 : slabdata      0      0      0
nfs_commit_data       39     39    832   39    8 : tunables    0    0    0 : slabdata      1      1      0
nfs_write_data        32     32   1024   32    8 : tunables    0    0    0 : slabdata      1      1      0
nfs_read_data          0      0   1024   32    8 : tunables    0    0    0 : slabdata      0      0      0
nfs_inode_cache        0      0   1184   27    8 : tunables    0    0    0 : slabdata      0      0      0
nfs_page               0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
jbd2_transaction_s      0      0    320   25    2 : tunables    0    0    0 : slabdata      0      0      0
jbd2_inode             0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
jbd2_journal_handle      0      0     88   46    1 : tunables    0    0    0 : slabdata      0      0      0
jbd2_journal_head      0      0    176   46    2 : tunables    0    0    0 : slabdata      0      0      0
jbd2_revoke_table_s      0      0     32  128    1 : tunables    0    0    0 : slabdata      0      0      0
jbd2_revoke_record_s      0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_fc_dentry_update      0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_inode_cache       0      0   1304   25    8 : tunables    0    0    0 : slabdata      0      0      0
ext4_free_data         0      0     88   46    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_allocation_context      0      0    200   40    2 : tunables    0    0    0 : slabdata      0      0      0
ext4_prealloc_space      0      0    168   24    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_system_zone       0      0     56   73    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_io_end_vec        0      0     48   85    1 : tunables    0    0    0 : slabdata      0      0      0
ext4_io_end            0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
bio_post_read_ctx    128    128     64   64    1 : tunables    0    0    0 : slabdata      2      2      0
pending_reservation      0      0     48   85    1 : tunables    0    0    0 : slabdata      0      0      0
extent_status          0      0     56   73    1 : tunables    0    0    0 : slabdata      0      0      0
mbcache                0      0     88   46    1 : tunables    0    0    0 : slabdata      0      0      0
kioctx                 0      0    704   46    8 : tunables    0    0    0 : slabdata      0      0      0
aio_kiocb              0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
fanotify_perm_event      0      0    104   39    1 : tunables    0    0    0 : slabdata      0      0      0
fanotify_path_event      0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
fanotify_fid_event      0      0    104   39    1 : tunables    0    0    0 : slabdata      0      0      0
fsnotify_mark          0      0    104   39    1 : tunables    0    0    0 : slabdata      0      0      0
dnotify_mark           0      0    112   36    1 : tunables    0    0    0 : slabdata      0      0      0
dnotify_struct         0      0     48   85    1 : tunables    0    0    0 : slabdata      0      0      0
dio                    0      0    768   42    8 : tunables    0    0    0 : slabdata      0      0      0
fasync_cache           0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
audit_tree_mark        0      0    112   36    1 : tunables    0    0    0 : slabdata      0      0      0
pid_namespace          0      0    200   40    2 : tunables    0    0    0 : slabdata      0      0      0
posix_timers_cache      0      0    320   25    2 : tunables    0    0    0 : slabdata      0      0      0
rpc_inode_cache       39     39    832   39    8 : tunables    0    0    0 : slabdata      1      1      0
rpc_buffers           15     15   2176   15    8 : tunables    0    0    0 : slabdata      1      1      0
rpc_tasks             25     25    320   25    2 : tunables    0    0    0 : slabdata      1      1      0
UNIX-STREAM          572    572   1216   26    8 : tunables    0    0    0 : slabdata     22     22      0
UNIX                 338    338   1216   26    8 : tunables    0    0    0 : slabdata     13     13      0
ip4-frags              0      0    264   31    2 : tunables    0    0    0 : slabdata      0      0      0
ip_mrt_cache           0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
UDP-Lite               0      0   1280   25    8 : tunables    0    0    0 : slabdata      0      0      0
tcp_bind2_bucket      64     64    128   32    1 : tunables    0    0    0 : slabdata      2      2      0
tcp_bind_bucket       64     64    128   32    1 : tunables    0    0    0 : slabdata      2      2      0
inet_peer_cache        0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
xfrm_dst_cache         0      0    384   42    4 : tunables    0    0    0 : slabdata      0      0      0
xfrm_state             0      0    896   36    8 : tunables    0    0    0 : slabdata      0      0      0
ip_fib_trie          192    192     64   64    1 : tunables    0    0    0 : slabdata      3      3      0
ip_fib_alias         138    138     88   46    1 : tunables    0    0    0 : slabdata      3      3      0
ip_dst_cache         192    192    256   32    2 : tunables    0    0    0 : slabdata      6      6      0
PING                   0      0   1152   28    8 : tunables    0    0    0 : slabdata      0      0      0
RAW                   56     56   1152   28    8 : tunables    0    0    0 : slabdata      2      2      0
UDP                  225    225   1280   25    8 : tunables    0    0    0 : slabdata      9      9      0
tw_sock_TCP           24     24    328   24    2 : tunables    0    0    0 : slabdata      1      1      0
request_sock_TCP       0      0    368   44    4 : tunables    0    0    0 : slabdata      0      0      0
TCP                   39     39   2368   13    8 : tunables    0    0    0 : slabdata      3      3      0
hugetlbfs_inode_cache     84     84    776   42    8 : tunables    0    0    0 : slabdata      2      2      0
dquot                  0      0    320   25    2 : tunables    0    0    0 : slabdata      0      0      0
bio-248               75     75    320   25    2 : tunables    0    0    0 : slabdata      3      3      0
ep_head             2432   2432     32  128    1 : tunables    0    0    0 : slabdata     19     19      0
eventpoll_pwq        840    840     96   42    1 : tunables    0    0    0 : slabdata     20     20      0
eventpoll_epi        840    840    192   42    2 : tunables    0    0    0 : slabdata     20     20      0
inotify_inode_mark    396    396    112   36    1 : tunables    0    0    0 : slabdata     11     11      0
dax_cache             36     36    896   36    8 : tunables    0    0    0 : slabdata      1      1      0
sgpool-128             7      7   4352    7    8 : tunables    0    0    0 : slabdata      1      1      0
sgpool-64             30     30   2176   15    8 : tunables    0    0    0 : slabdata      2      2      0
sgpool-32             56     56   1152   28    8 : tunables    0    0    0 : slabdata      2      2      0
sgpool-16            100    100    640   25    4 : tunables    0    0    0 : slabdata      4      4      0
sgpool-8             175    175    320   25    2 : tunables    0    0    0 : slabdata      7      7      0
request_queue         32     32   1000   32    8 : tunables    0    0    0 : slabdata      1      1      0
blkdev_ioc            34     34    120   34    1 : tunables    0    0    0 : slabdata      1      1      0
bio-184              288    288    256   32    2 : tunables    0    0    0 : slabdata      9      9      0
biovec-max            77     77   4352    7    8 : tunables    0    0    0 : slabdata     11     11      0
biovec-128             0      0   2176   15    8 : tunables    0    0    0 : slabdata      0      0      0
biovec-64            168    168   1152   28    8 : tunables    0    0    0 : slabdata      6      6      0
biovec-16            150    150    320   25    2 : tunables    0    0    0 : slabdata      6      6      0
bio_integrity_payload     32     32    256   32    2 : tunables    0    0    0 : slabdata      1      1      0
khugepaged_mm_slot    552    552    176   46    2 : tunables    0    0    0 : slabdata     12     12      0
ksm_mm_slot            0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
ksm_stable_node        0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
ksm_rmap_item          0      0     96   42    1 : tunables    0    0    0 : slabdata      0      0      0
user_namespace         0      0    752   43    8 : tunables    0    0    0 : slabdata      0      0      0
uid_cache            128    128    256   32    2 : tunables    0    0    0 : slabdata      4      4      0
iommu_iova             0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
dmaengine-unmap-256     14     14   2240   14    8 : tunables    0    0    0 : slabdata      1      1      0
dmaengine-unmap-128     26     26   1216   26    8 : tunables    0    0    0 : slabdata      1      1      0
dmaengine-unmap-16     32     32    256   32    2 : tunables    0    0    0 : slabdata      1      1      0
dmaengine-unmap-2     64     64     64   64    1 : tunables    0    0    0 : slabdata      1      1      0
audit_buffer         102    102     40  102    1 : tunables    0    0    0 : slabdata      1      1      0
sock_inode_cache     864    864    896   36    8 : tunables    0    0    0 : slabdata     24     24      0
skbuff_ext_cache       0      0    192   42    2 : tunables    0    0    0 : slabdata      0      0      0
skbuff_fclone_cache     25     25    640   25    4 : tunables    0    0    0 : slabdata      1      1      0
skbuff_head_cache   2450   2450    320   25    2 : tunables    0    0    0 : slabdata     98     98      0
configfs_dir_cache     34     34    120   34    1 : tunables    0    0    0 : slabdata      1      1      0
file_lock_cache      464    464    280   29    2 : tunables    0    0    0 : slabdata     16     16      0
file_lock_ctx        368    368     88   46    1 : tunables    0    0    0 : slabdata      8      8      0
fsnotify_mark_connector    935    935     48   85    1 : tunables    0    0    0 : slabdata     11     11      0
buffer_head           72     72    168   24    1 : tunables    0    0    0 : slabdata      3      3      0
x86_lbr                0      0    928   35    8 : tunables    0    0    0 : slabdata      0      0      0
task_delay_info        0      0    192   42    2 : tunables    0    0    0 : slabdata      0      0      0
taskstats            102    102    480   34    4 : tunables    0    0    0 : slabdata      3      3      0
proc_dir_entry      1120   1120    256   32    2 : tunables    0    0    0 : slabdata     35     35      0
pde_opener          1460   1460     56   73    1 : tunables    0    0    0 : slabdata     20     20      0
proc_inode_cache    1521   1521    824   39    8 : tunables    0    0    0 : slabdata     39     39      0
seq_file            3521   3696    184   44    2 : tunables    0    0    0 : slabdata     84     84      0
sigqueue            1044   1044    112   36    1 : tunables    0    0    0 : slabdata     29     29      0
bdev_cache            54     54   1728   18    8 : tunables    0    0    0 : slabdata      3      3      0
shmem_inode_cache   1512   1512    888   36    8 : tunables    0    0    0 : slabdata     42     42      0
kernfs_iattrs_cache    324    324    112   36    1 : tunables    0    0    0 : slabdata      9      9      0
kernfs_node_cache  41760  42504    192   42    2 : tunables    0    0    0 : slabdata   1012   1012      0
mnt_cache            714    714    384   42    4 : tunables    0    0    0 : slabdata     17     17      0
filp               38752  38825    320   25    2 : tunables    0    0    0 : slabdata   1553   1553      0
inode_cache        57398  57577    752   43    8 : tunables    0    0    0 : slabdata   1339   1339      0
dentry             92139  92224    256   32    2 : tunables    0    0    0 : slabdata   2882   2882      0
names_cache        39489  39529   4352    7    8 : tunables    0    0    0 : slabdata   5647   5647      0
net_namespace          7      7   4544    7    8 : tunables    0    0    0 : slabdata      1      1      0
iint_cache             0      0    176   46    2 : tunables    0    0    0 : slabdata      0      0      0
key_jar              300    300    320   25    2 : tunables    0    0    0 : slabdata     12     12      0
uts_namespace         66     66    496   33    4 : tunables    0    0    0 : slabdata      2      2      0
nsproxy              156    156    104   39    1 : tunables    0    0    0 : slabdata      4      4      0
vm_area_struct     53000  53820    208   39    2 : tunables    0    0    0 : slabdata   1380   1380      0
fs_cache            1088   1088    128   32    1 : tunables    0    0    0 : slabdata     34     34      0
files_cache         1287   1287    832   39    8 : tunables    0    0    0 : slabdata     33     33      0
signal_cache        1216   1250   1280   25    8 : tunables    0    0    0 : slabdata     50     50      0
sighand_cache        602    602   2240   14    8 : tunables    0    0    0 : slabdata     43     43      0
task_struct          871    885  10624    3    8 : tunables    0    0    0 : slabdata    295    295      0
cred_jar            3053   3456    256   32    2 : tunables    0    0    0 : slabdata    108    108      0
anon_vma_chain     27690  27972     96   42    1 : tunables    0    0    0 : slabdata    666    666      0
anon_vma            3060   3060    136   30    1 : tunables    0    0    0 : slabdata    102    102      0
pid                 1554   1554    192   42    2 : tunables    0    0    0 : slabdata     37     37      0
Acpi-Operand       17349  31707    104   39    1 : tunables    0    0    0 : slabdata    813    813      0
Acpi-ParseExt       2232   2412    112   36    1 : tunables    0    0    0 : slabdata     67     67      0
Acpi-Parse          3404   3404     88   46    1 : tunables    0    0    0 : slabdata     74     74      0
Acpi-State          2952   2952    112   36    1 : tunables    0    0    0 : slabdata     82     82      0
Acpi-Namespace      8511   8512     64   64    1 : tunables    0    0    0 : slabdata    133    133      0
shared_policy_node      0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
numa_policy           24     24    336   24    2 : tunables    0    0    0 : slabdata      1      1      0
perf_event            23     23   1368   23    8 : tunables    0    0    0 : slabdata      1      1      0
trace_event_file    2176   2176    120   34    1 : tunables    0    0    0 : slabdata     64     64      0
ftrace_event_field   5568   5568     64   64    1 : tunables    0    0    0 : slabdata     87     87      0
pool_workqueue       448    448    512   32    4 : tunables    0    0    0 : slabdata     14     14      0
maple_node        371467 372320    512   32    4 : tunables    0    0    0 : slabdata  11635  11635      0
radix_tree_node    17134  17250    704   46    8 : tunables    0    0    0 : slabdata    375    375      0
task_group           468    468    832   39    8 : tunables    0    0    0 : slabdata     12     12      0
mm_struct           1296   1296   1344   24    8 : tunables    0    0    0 : slabdata     54     54      0
vmap_area           3037   3150     96   42    1 : tunables    0    0    0 : slabdata     75     75      0
kmalloc-cg-8k          4      4  16384    2    8 : tunables    0    0    0 : slabdata      2      2      0
kmalloc-cg-4k        536    536   8192    4    8 : tunables    0    0    0 : slabdata    134    134      0
kmalloc-cg-2k        376    376   4096    8    8 : tunables    0    0    0 : slabdata     47     47      0
kmalloc-cg-1k        688    688   2048   16    8 : tunables    0    0    0 : slabdata     43     43      0
kmalloc-cg-512      1126   1280   1024   32    8 : tunables    0    0    0 : slabdata     40     40      0
kmalloc-cg-256       224    224    512   32    4 : tunables    0    0    0 : slabdata      7      7      0
kmalloc-cg-192       960    960    256   32    2 : tunables    0    0    0 : slabdata     30     30      0
kmalloc-cg-128       384    384    256   32    2 : tunables    0    0    0 : slabdata     12     12      0
kmalloc-cg-96        416    416    128   32    1 : tunables    0    0    0 : slabdata     13     13      0
kmalloc-cg-64        544    544    128   32    1 : tunables    0    0    0 : slabdata     17     17      0
kmalloc-cg-32       1856   1856     64   64    1 : tunables    0    0    0 : slabdata     29     29      0
kmalloc-cg-16       1408   1408     32  128    1 : tunables    0    0    0 : slabdata     11     11      0
kmalloc-cg-8        1326   1326     40  102    1 : tunables    0    0    0 : slabdata     13     13      0
dma-kmalloc-8k         0      0  16384    2    8 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-4k         0      0   8192    4    8 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-2k         0      0   4096    8    8 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-1k         0      0   2048   16    8 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-512        0      0   1024   32    8 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-256        0      0    512   32    4 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-192        0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-128        0      0    256   32    2 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-96         0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-64         0      0    128   32    1 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-32         0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-16         0      0     32  128    1 : tunables    0    0    0 : slabdata      0      0      0
dma-kmalloc-8          0      0     40  102    1 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-8k         0      0  16384    2    8 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-4k         0      0   8192    4    8 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-2k         0      0   4096    8    8 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-1k         0      0   2048   16    8 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-512        0      0   1024   32    8 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-256        0      0    512   32    4 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-192       32     32    256   32    2 : tunables    0    0    0 : slabdata      1      1      0
kmalloc-rcl-128       32     32    256   32    2 : tunables    0    0    0 : slabdata      1      1      0
kmalloc-rcl-96       640    640    128   32    1 : tunables    0    0    0 : slabdata     20     20      0
kmalloc-rcl-64      2640   2784    128   32    1 : tunables    0    0    0 : slabdata     87     87      0
kmalloc-rcl-32         0      0     64   64    1 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-16         0      0     32  128    1 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-rcl-8          0      0     40  102    1 : tunables    0    0    0 : slabdata      0      0      0
kmalloc-8k           146    146  16384    2    8 : tunables    0    0    0 : slabdata     73     73      0
kmalloc-4k           754    872   8192    4    8 : tunables    0    0    0 : slabdata    218    218      0
kmalloc-2k          1506   2288   4096    8    8 : tunables    0    0    0 : slabdata    286    286      0
kmalloc-1k          2228   3200   2048   16    8 : tunables    0    0    0 : slabdata    200    200      0
kmalloc-512         6128   8256   1024   32    8 : tunables    0    0    0 : slabdata    258    258      0
kmalloc-256         7708   8512    512   32    4 : tunables    0    0    0 : slabdata    266    266      0
kmalloc-192         3043   4512    256   32    2 : tunables    0    0    0 : slabdata    141    141      0
kmalloc-128         2404   2560    256   32    2 : tunables    0    0    0 : slabdata     80     80      0
kmalloc-96          4766   7840    128   32    1 : tunables    0    0    0 : slabdata    245    245      0
kmalloc-64         10746  12128    128   32    1 : tunables    0    0    0 : slabdata    379    379      0
kmalloc-32          9454  14400     64   64    1 : tunables    0    0    0 : slabdata    225    225      0
kmalloc-16         11451  14592     32  128    1 : tunables    0    0    0 : slabdata    114    114      0
kmalloc-8          10195  22746     40  102    1 : tunables    0    0    0 : slabdata    223    223      0
kmem_cache_node      640    640    128   32    1 : tunables    0    0    0 : slabdata     20     20      0
kmem_cache           575    575    320   25    2 : tunables    0    0    0 : slabdata     23     23      0Test requirement not met in function igt_require_memory, file ../lib/igt_os.c:409:
Test requirement: sufficient_memory
Estimated that we need 402653184 objects and 405798912 MiB for the test, but only have 12724 MiB available (RAM) and a maximum of 9223372036854775807 objects
Subtest aperture-thrash: SKIP (0.089s)
2023-02-02 08:44:13 build/tests/gem_render_linear_blits --run-subtest basic
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: basic
Verifying initialisation - 2 buffers of 1048576 bytes
Cyclic blits, forward...
Cyclic blits, backward...
Random blits...
Subtest basic: SUCCESS (0.012s)
2023-02-02 08:44:13 build/tests/gem_render_linear_blits --run-subtest swap-thrash
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: swap-thrash
Test requirement not met in function __igt_unique____real_main165, file ../tests/i915/gem_render_linear_blits.c:197:
Test requirement: swap_mb > 0
Subtest swap-thrash: SKIP (0.000s)
2023-02-02 08:44:13 build/tests/kms_hdmi_inject --run-subtest inject-4k
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: inject-4k
    3840x2160 30 3840 4016 4104 4400 2160 2168 2178 2250 0x5 0x40 297000
Subtest inject-4k: SUCCESS (0.135s)
2023-02-02 08:44:14 build/tests/kms_hdmi_inject --run-subtest inject-audio
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: inject-audio
Test requirement not met in function hdmi_inject_audio, file ../tests/kms_hdmi_inject.c:146:
Test requirement: eld_is_supported()
Last errno: 2, No such file or directory
Subtest inject-audio: SKIP (0.000s)
2023-02-02 08:44:14 build/tests/kms_plane_scaling --run-subtest 2x-scaler-multi-pipe
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: 2x-scaler-multi-pipe
Test requirement not met in function find_connected_pipe, file ../tests/kms_plane_scaling.c:573:
Test requirement: found
No valid outputs found
Subtest 2x-scaler-multi-pipe: SKIP (0.000s)
2023-02-02 08:44:14 build/tests/kms_plane_scaling --run-subtest invalid-num-scalers
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid-num-scalers
No dynamic tests executed.
Subtest invalid-num-scalers: SKIP (0.000s)
2023-02-02 08:44:14 build/tests/kms_plane_scaling --run-subtest plane-downscale-with-modifiers-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-downscale-with-modifiers-factor-0-25
No dynamic tests executed.
Subtest plane-downscale-with-modifiers-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:15 build/tests/kms_plane_scaling --run-subtest plane-downscale-with-modifiers-factor-0-5
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-downscale-with-modifiers-factor-0-5
No dynamic tests executed.
Subtest plane-downscale-with-modifiers-factor-0-5: SKIP (0.000s)
2023-02-02 08:44:15 build/tests/kms_plane_scaling --run-subtest plane-downscale-with-modifiers-factor-0-75
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-downscale-with-modifiers-factor-0-75
No dynamic tests executed.
Subtest plane-downscale-with-modifiers-factor-0-75: SKIP (0.000s)
2023-02-02 08:44:15 build/tests/kms_plane_scaling --run-subtest plane-downscale-with-pixel-format-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-downscale-with-pixel-format-factor-0-25
No dynamic tests executed.
Subtest plane-downscale-with-pixel-format-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:16 build/tests/kms_plane_scaling --run-subtest plane-downscale-with-pixel-format-factor-0-5
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-downscale-with-pixel-format-factor-0-5
No dynamic tests executed.
Subtest plane-downscale-with-pixel-format-factor-0-5: SKIP (0.000s)
2023-02-02 08:44:16 build/tests/kms_plane_scaling --run-subtest plane-downscale-with-pixel-format-factor-0-75
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-downscale-with-pixel-format-factor-0-75
No dynamic tests executed.
Subtest plane-downscale-with-pixel-format-factor-0-75: SKIP (0.000s)
2023-02-02 08:44:16 build/tests/kms_plane_scaling --run-subtest plane-downscale-with-rotation-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-downscale-with-rotation-factor-0-25
No dynamic tests executed.
Subtest plane-downscale-with-rotation-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:17 build/tests/kms_plane_scaling --run-subtest plane-downscale-with-rotation-factor-0-5
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-downscale-with-rotation-factor-0-5
No dynamic tests executed.
Subtest plane-downscale-with-rotation-factor-0-5: SKIP (0.000s)
2023-02-02 08:44:17 build/tests/kms_plane_scaling --run-subtest plane-downscale-with-rotation-factor-0-75
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-downscale-with-rotation-factor-0-75
No dynamic tests executed.
Subtest plane-downscale-with-rotation-factor-0-75: SKIP (0.000s)
2023-02-02 08:44:17 build/tests/kms_plane_scaling --run-subtest plane-scaler-with-clipping-clamping-modifiers
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-scaler-with-clipping-clamping-modifiers
No dynamic tests executed.
Subtest plane-scaler-with-clipping-clamping-modifiers: SKIP (0.000s)
2023-02-02 08:44:17 build/tests/kms_plane_scaling --run-subtest plane-scaler-with-clipping-clamping-pixel-formats
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-scaler-with-clipping-clamping-pixel-formats
No dynamic tests executed.
Subtest plane-scaler-with-clipping-clamping-pixel-formats: SKIP (0.000s)
2023-02-02 08:44:18 build/tests/kms_plane_scaling --run-subtest plane-scaler-with-clipping-clamping-rotation
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-scaler-with-clipping-clamping-rotation
No dynamic tests executed.
Subtest plane-scaler-with-clipping-clamping-rotation: SKIP (0.000s)
2023-02-02 08:44:18 build/tests/kms_plane_scaling --run-subtest plane-scaler-with-modifiers-unity-scaling
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-scaler-with-modifiers-unity-scaling
No dynamic tests executed.
Subtest plane-scaler-with-modifiers-unity-scaling: SKIP (0.000s)
2023-02-02 08:44:18 build/tests/kms_plane_scaling --run-subtest plane-scaler-with-pixel-format-unity-scaling
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-scaler-with-pixel-format-unity-scaling
No dynamic tests executed.
Subtest plane-scaler-with-pixel-format-unity-scaling: SKIP (0.000s)
2023-02-02 08:44:19 build/tests/kms_plane_scaling --run-subtest plane-scaler-with-rotation-unity-scaling
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-scaler-with-rotation-unity-scaling
No dynamic tests executed.
Subtest plane-scaler-with-rotation-unity-scaling: SKIP (0.000s)
2023-02-02 08:44:19 build/tests/kms_plane_scaling --run-subtest plane-upscale-with-modifiers-20x20
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-upscale-with-modifiers-20x20
No dynamic tests executed.
Subtest plane-upscale-with-modifiers-20x20: SKIP (0.000s)
2023-02-02 08:44:19 build/tests/kms_plane_scaling --run-subtest plane-upscale-with-modifiers-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-upscale-with-modifiers-factor-0-25
No dynamic tests executed.
Subtest plane-upscale-with-modifiers-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:20 build/tests/kms_plane_scaling --run-subtest plane-upscale-with-pixel-format-20x20
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-upscale-with-pixel-format-20x20
No dynamic tests executed.
Subtest plane-upscale-with-pixel-format-20x20: SKIP (0.000s)
2023-02-02 08:44:20 build/tests/kms_plane_scaling --run-subtest plane-upscale-with-pixel-format-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-upscale-with-pixel-format-factor-0-25
No dynamic tests executed.
Subtest plane-upscale-with-pixel-format-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:20 build/tests/kms_plane_scaling --run-subtest plane-upscale-with-rotation-20x20
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-upscale-with-rotation-20x20
No dynamic tests executed.
Subtest plane-upscale-with-rotation-20x20: SKIP (0.000s)
2023-02-02 08:44:21 build/tests/kms_plane_scaling --run-subtest plane-upscale-with-rotation-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: plane-upscale-with-rotation-factor-0-25
No dynamic tests executed.
Subtest plane-upscale-with-rotation-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:21 build/tests/kms_plane_scaling --run-subtest planes-downscale-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-downscale-factor-0-25
No dynamic tests executed.
Subtest planes-downscale-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:21 build/tests/kms_plane_scaling --run-subtest planes-downscale-factor-0-5
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-downscale-factor-0-5
No dynamic tests executed.
Subtest planes-downscale-factor-0-5: SKIP (0.000s)
2023-02-02 08:44:21 build/tests/kms_plane_scaling --run-subtest planes-downscale-factor-0-75
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-downscale-factor-0-75
No dynamic tests executed.
Subtest planes-downscale-factor-0-75: SKIP (0.000s)
2023-02-02 08:44:22 build/tests/kms_plane_scaling --run-subtest planes-scaler-unity-scaling
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-scaler-unity-scaling
No dynamic tests executed.
Subtest planes-scaler-unity-scaling: SKIP (0.000s)
2023-02-02 08:44:22 build/tests/kms_plane_scaling --run-subtest planes-unity-scaling-downscale-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-unity-scaling-downscale-factor-0-25
No dynamic tests executed.
Subtest planes-unity-scaling-downscale-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:22 build/tests/kms_plane_scaling --run-subtest planes-unity-scaling-downscale-factor-0-5
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-unity-scaling-downscale-factor-0-5
No dynamic tests executed.
Subtest planes-unity-scaling-downscale-factor-0-5: SKIP (0.000s)
2023-02-02 08:44:23 build/tests/kms_plane_scaling --run-subtest planes-unity-scaling-downscale-factor-0-75
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-unity-scaling-downscale-factor-0-75
No dynamic tests executed.
Subtest planes-unity-scaling-downscale-factor-0-75: SKIP (0.000s)
2023-02-02 08:44:23 build/tests/kms_plane_scaling --run-subtest planes-upscale-20x20
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-upscale-20x20
No dynamic tests executed.
Subtest planes-upscale-20x20: SKIP (0.000s)
2023-02-02 08:44:23 build/tests/kms_plane_scaling --run-subtest planes-upscale-20x20-downscale-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-upscale-20x20-downscale-factor-0-25
No dynamic tests executed.
Subtest planes-upscale-20x20-downscale-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:24 build/tests/kms_plane_scaling --run-subtest planes-upscale-20x20-downscale-factor-0-5
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-upscale-20x20-downscale-factor-0-5
No dynamic tests executed.
Subtest planes-upscale-20x20-downscale-factor-0-5: SKIP (0.000s)
2023-02-02 08:44:24 build/tests/kms_plane_scaling --run-subtest planes-upscale-20x20-downscale-factor-0-75
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-upscale-20x20-downscale-factor-0-75
No dynamic tests executed.
Subtest planes-upscale-20x20-downscale-factor-0-75: SKIP (0.000s)
2023-02-02 08:44:24 build/tests/kms_plane_scaling --run-subtest planes-upscale-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-upscale-factor-0-25
No dynamic tests executed.
Subtest planes-upscale-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:25 build/tests/kms_plane_scaling --run-subtest planes-upscale-factor-0-25-downscale-factor-0-25
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-upscale-factor-0-25-downscale-factor-0-25
No dynamic tests executed.
Subtest planes-upscale-factor-0-25-downscale-factor-0-25: SKIP (0.000s)
2023-02-02 08:44:25 build/tests/kms_plane_scaling --run-subtest planes-upscale-factor-0-25-downscale-factor-0-5
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-upscale-factor-0-25-downscale-factor-0-5
No dynamic tests executed.
Subtest planes-upscale-factor-0-25-downscale-factor-0-5: SKIP (0.000s)
2023-02-02 08:44:25 build/tests/kms_plane_scaling --run-subtest planes-upscale-factor-0-25-downscale-factor-0-75
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: planes-upscale-factor-0-25-downscale-factor-0-75
No dynamic tests executed.
Subtest planes-upscale-factor-0-25-downscale-factor-0-75: SKIP (0.000s)
LKP SKIP igt@panfrost_gem_new@gem-new-0
LKP SKIP igt@panfrost_gem_new@gem-new-4096
LKP SKIP igt@panfrost_gem_new@gem-new-zeroed
2023-02-02 08:44:26 build/tests/prime_nv_api --run-subtest i915_nv_double_export
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest i915_nv_double_export: SKIP (0.000s)
2023-02-02 08:44:26 build/tests/prime_nv_api --run-subtest i915_nv_double_import
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest i915_nv_double_import: SKIP (0.000s)
2023-02-02 08:44:26 build/tests/prime_nv_api --run-subtest i915_nv_import_twice
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest i915_nv_import_twice: SKIP (0.000s)
2023-02-02 08:44:27 build/tests/prime_nv_api --run-subtest i915_nv_import_twice_check_flink_name
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest i915_nv_import_twice_check_flink_name: SKIP (0.000s)
2023-02-02 08:44:27 build/tests/prime_nv_api --run-subtest i915_nv_import_vs_close
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest i915_nv_import_vs_close: SKIP (0.000s)
2023-02-02 08:44:27 build/tests/prime_nv_api --run-subtest i915_nv_reimport_twice_check_flink_name
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest i915_nv_reimport_twice_check_flink_name: SKIP (0.000s)
2023-02-02 08:44:27 build/tests/prime_nv_api --run-subtest i915_self_import
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest i915_self_import: SKIP (0.000s)
2023-02-02 08:44:28 build/tests/prime_nv_api --run-subtest i915_self_import_to_different_fd
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest i915_self_import_to_different_fd: SKIP (0.000s)
2023-02-02 08:44:28 build/tests/prime_nv_api --run-subtest nv_i915_import_twice_check_flink_name
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest nv_i915_import_twice_check_flink_name: SKIP (0.000s)
2023-02-02 08:44:28 build/tests/prime_nv_api --run-subtest nv_i915_reimport_twice_check_flink_name
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest nv_i915_reimport_twice_check_flink_name: SKIP (0.000s)
2023-02-02 08:44:28 build/tests/prime_nv_api --run-subtest nv_self_import
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest nv_self_import: SKIP (0.000s)
2023-02-02 08:44:29 build/tests/prime_nv_api --run-subtest nv_self_import_to_different_fd
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Test requirement not met in function __igt_unique____real_main328, file ../tests/prime_nv_api.c:333:
Test requirement: nouveau_fd != -1
Last errno: 2, No such file or directory
Subtest nv_self_import_to_different_fd: SKIP (0.000s)
2023-02-02 08:44:29 build/tests/sysfs_preempt_timeout --run-subtest idempotent
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: idempotent
Starting dynamic subtest: vecs0
Dynamic subtest vecs0: SUCCESS (0.000s)
Starting dynamic subtest: vcs0
Dynamic subtest vcs0: SUCCESS (0.000s)
Starting dynamic subtest: bcs0
Dynamic subtest bcs0: SUCCESS (0.000s)
Starting dynamic subtest: rcs0
Dynamic subtest rcs0: SUCCESS (0.000s)
Subtest idempotent: SUCCESS (0.037s)
2023-02-02 08:44:29 build/tests/sysfs_preempt_timeout --run-subtest invalid
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: invalid
Starting dynamic subtest: vecs0
Dynamic subtest vecs0: SUCCESS (0.000s)
Starting dynamic subtest: vcs0
Dynamic subtest vcs0: SUCCESS (0.000s)
Starting dynamic subtest: bcs0
Dynamic subtest bcs0: SUCCESS (0.000s)
Starting dynamic subtest: rcs0
Dynamic subtest rcs0: SUCCESS (0.000s)
Subtest invalid: SUCCESS (0.043s)
LKP SKIP igt@sysfs_preempt_timeout@off
2023-02-02 08:44:30 build/tests/sysfs_preempt_timeout --run-subtest timeout
IGT-Version: 1.27.1-ga978df79 (x86_64) (Linux: 6.2.0-rc5-00875-g60177838fe05 x86_64)
Starting subtest: timeout
Starting dynamic subtest: vecs0
Minimum timeout measured as 17.097ms; setting error threshold to 50ms
preempt_timeout_ms:1, elapsed=11.521ms
preempt_timeout_ms:50, elapsed=69.871ms
preempt_timeout_ms:100, elapsed=111.774ms
preempt_timeout_ms:500, elapsed=518.372ms
Dynamic subtest vecs0: SUCCESS (1.320s)
Starting dynamic subtest: vcs0
Minimum timeout measured as 12.022ms; setting error threshold to 50ms
preempt_timeout_ms:1, elapsed=10.302ms
preempt_timeout_ms:50, elapsed=60.972ms
preempt_timeout_ms:100, elapsed=113.681ms
preempt_timeout_ms:500, elapsed=517.716ms
Dynamic subtest vcs0: SUCCESS (1.328s)
Starting dynamic subtest: bcs0
Minimum timeout measured as 16.467ms; setting error threshold to 50ms
preempt_timeout_ms:1, elapsed=11.678ms
preempt_timeout_ms:50, elapsed=60.128ms
preempt_timeout_ms:100, elapsed=109.552ms
preempt_timeout_ms:500, elapsed=509.490ms
Dynamic subtest bcs0: SUCCESS (1.303s)
Starting dynamic subtest: rcs0
Minimum timeout measured as 8.833ms; setting error threshold to 50ms
preempt_timeout_ms:1, elapsed=10.499ms
preempt_timeout_ms:50, elapsed=58.591ms
preempt_timeout_ms:100, elapsed=111.376ms
preempt_timeout_ms:500, elapsed=513.648ms
Dynamic subtest rcs0: SUCCESS (0.951s)
Subtest timeout: SUCCESS (4.940s)

--unaw5JzaqjSEzDuB
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment; filename="job.yaml"

---

#! jobs/igt-part3.yaml
suite: igt
testcase: igt
category: functional
igt:
  group: group-20
job_origin: igt-part3.yaml

#! queue options
queue_cmdline_keys:
- branch
- commit
queue: bisect
testbox: lkp-cml-d02
tbox_group: lkp-cml-d02
submit_id: 63dadbb3d9aa807ec2d43b13
job_file: "/lkp/jobs/scheduled/lkp-cml-d02/igt-group-20-debian-11.1-x86_64-20220510.cgz-60177838fe0528a3be445b18883191256c548e6b-20230202-32450-2fugvn-0.yaml"
id: 8cb6d233c5639fb9a3cd2113623be9ce5c945c1d
queuer_version: "/zday/lkp"

#! hosts/lkp-cml-d02
model: Commet Lake
nr_node: 1
nr_cpu: 20
memory: 16G
ssd_partitions: "/dev/disk/by-id/ata-INTEL_SSDSC2BA800G4_BTHV61840945800OGN-part4"
rootfs_partition: "/dev/disk/by-id/ata-INTEL_SSDSC2BA800G4_BTHV61840945800OGN-part3"
kernel_cmdline_hw: acpi_rsdp=0x9b0fe014

#! include/category/functional
kmsg:
heartbeat:
meminfo:

#! include/queue/cyclic
commit: 60177838fe0528a3be445b18883191256c548e6b

#! include/testbox/lkp-cml-d02
netconsole_port: 6683
ucode: '0xc2'
need_kconfig_hw:
- PTP_1588_CLOCK: y
- IGB: y
- E1000E: y
- SATA_AHCI
- DRM_I915
- IGC: y
bisect_dmesg: true
kconfig: x86_64-rhel-8.3-func
enqueue_time: 2023-02-02 05:37:55.797768178 +08:00
_id: 63dadbb3d9aa807ec2d43b13
_rt: "/result/igt/group-20/lkp-cml-d02/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b"

#! schedule options
user: lkp
compiler: gcc-11
LKP_SERVER: internal-lkp-server
head_commit: 7fc8d5653ce2dbba2fab051e3d98b08e72b61b14
base_commit: 6d796c50f84ca79f1722bb131799e5a5710c4700
branch: linux-devel/devel-hourly-20230131-101010
rootfs: debian-11.1-x86_64-20220510.cgz
result_root: "/result/igt/group-20/lkp-cml-d02/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b/0"
scheduler_version: "/lkp/lkp/src"
arch: x86_64
max_uptime: 1200
initrd: "/osimage/debian/debian-11.1-x86_64-20220510.cgz"
bootloader_append:
- root=/dev/ram0
- RESULT_ROOT=/result/igt/group-20/lkp-cml-d02/debian-11.1-x86_64-20220510.cgz/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b/0
- BOOT_IMAGE=/pkg/linux/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b/vmlinuz-6.2.0-rc5-00875-g60177838fe05
- branch=linux-devel/devel-hourly-20230131-101010
- job=/lkp/jobs/scheduled/lkp-cml-d02/igt-group-20-debian-11.1-x86_64-20220510.cgz-60177838fe0528a3be445b18883191256c548e6b-20230202-32450-2fugvn-0.yaml
- user=lkp
- ARCH=x86_64
- kconfig=x86_64-rhel-8.3-func
- commit=60177838fe0528a3be445b18883191256c548e6b
- initcall_debug
- nmi_watchdog=0
- acpi_rsdp=0x9b0fe014
- max_uptime=1200
- LKP_SERVER=internal-lkp-server
- nokaslr
- selinux=0
- debug
- apic=debug
- sysrq_always_enabled
- rcupdate.rcu_cpu_stall_timeout=100
- net.ifnames=0
- printk.devkmsg=on
- panic=-1
- softlockup_panic=1
- nmi_watchdog=panic
- oops=panic
- load_ramdisk=2
- prompt_ramdisk=0
- drbd.minor_count=8
- systemd.log_level=err
- ignore_loglevel
- console=tty0
- earlyprintk=ttyS0,115200
- console=ttyS0,115200
- vga=normal
- rw

#! runtime status
modules_initrd: "/pkg/linux/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b/modules.cgz"
bm_initrd: "/osimage/deps/debian-11.1-x86_64-20220510.cgz/lkp_20220513.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/run-ipconfig_20220515.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/rsync-rootfs_20220515.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/igt_20230128.cgz,/osimage/pkg/debian-11.1-x86_64-20220510.cgz/igt-x86_64-a978df79-1_20230128.cgz,/osimage/deps/debian-11.1-x86_64-20220510.cgz/hw_20220526.cgz"
ucode_initrd: "/osimage/ucode/intel-ucode-20220804.cgz"
lkp_initrd: "/osimage/user/lkp/lkp-x86_64.cgz"
site: lkp-wsx01

#! /db/releases/20230131215915/lkp-src/include/site/lkp-wsx01
LKP_CGI_PORT: 80
LKP_CIFS_PORT: 139
oom-killer:
watchdog:
last_kernel: 6.2.0-rc5-00123-gdb7c4673bbd3
schedule_notify_address:

#! user overrides
kernel: "/pkg/linux/x86_64-rhel-8.3-func/gcc-11/60177838fe0528a3be445b18883191256c548e6b/vmlinuz-6.2.0-rc5-00875-g60177838fe05"
dequeue_time: 2023-02-02 08:47:43.736919254 +08:00

#! /db/releases/20230201221745/lkp-src/include/site/lkp-wsx01
job_state: finished
loadavg: 2.34 0.73 0.26 1/287 2716
start_time: '1675298958'
end_time: '1675298982'
version: "/lkp/lkp/.src-20230201-195142:7898b9e6c:52879761c"

--unaw5JzaqjSEzDuB
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: attachment; filename="reproduce"

 "build/tests/gem_ctx_param" "--run-subtest" "basic"
 "build/tests/gem_ctx_param" "--run-subtest" "basic-default"
 "build/tests/gem_ctx_param" "--run-subtest" "get-priority-new-ctx"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-ctx-get"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-ctx-set"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-get-engines"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-get-no-zeromap"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-get-ringsize"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-param-get"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-param-set"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-set-no-zeromap"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-set-ringsize"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-size-get"
 "build/tests/gem_ctx_param" "--run-subtest" "invalid-size-set"
 "build/tests/gem_ctx_param" "--run-subtest" "non-root-set"
 "build/tests/gem_ctx_param" "--run-subtest" "root-set"
 "build/tests/gem_ctx_param" "--run-subtest" "set-priority-invalid-size"
 "build/tests/gem_ctx_param" "--run-subtest" "set-priority-not-supported"
 "build/tests/gem_ctx_param" "--run-subtest" "set-priority-range"
 "build/tests/gem_ctx_param" "--run-subtest" "vm"
 "build/tests/gem_render_linear_blits" "--run-subtest" "aperture-shrink"
 "build/tests/gem_render_linear_blits" "--run-subtest" "aperture-thrash"
 "build/tests/gem_render_linear_blits" "--run-subtest" "basic"
 "build/tests/gem_render_linear_blits" "--run-subtest" "swap-thrash"
 "build/tests/kms_hdmi_inject" "--run-subtest" "inject-4k"
 "build/tests/kms_hdmi_inject" "--run-subtest" "inject-audio"
 "build/tests/kms_plane_scaling" "--run-subtest" "2x-scaler-multi-pipe"
 "build/tests/kms_plane_scaling" "--run-subtest" "invalid-num-scalers"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-downscale-with-modifiers-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-downscale-with-modifiers-factor-0-5"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-downscale-with-modifiers-factor-0-75"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-downscale-with-pixel-format-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-downscale-with-pixel-format-factor-0-5"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-downscale-with-pixel-format-factor-0-75"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-downscale-with-rotation-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-downscale-with-rotation-factor-0-5"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-downscale-with-rotation-factor-0-75"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-scaler-with-clipping-clamping-modifiers"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-scaler-with-clipping-clamping-pixel-formats"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-scaler-with-clipping-clamping-rotation"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-scaler-with-modifiers-unity-scaling"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-scaler-with-pixel-format-unity-scaling"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-scaler-with-rotation-unity-scaling"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-upscale-with-modifiers-20x20"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-upscale-with-modifiers-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-upscale-with-pixel-format-20x20"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-upscale-with-pixel-format-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-upscale-with-rotation-20x20"
 "build/tests/kms_plane_scaling" "--run-subtest" "plane-upscale-with-rotation-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-downscale-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-downscale-factor-0-5"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-downscale-factor-0-75"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-scaler-unity-scaling"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-unity-scaling-downscale-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-unity-scaling-downscale-factor-0-5"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-unity-scaling-downscale-factor-0-75"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-upscale-20x20"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-upscale-20x20-downscale-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-upscale-20x20-downscale-factor-0-5"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-upscale-20x20-downscale-factor-0-75"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-upscale-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-upscale-factor-0-25-downscale-factor-0-25"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-upscale-factor-0-25-downscale-factor-0-5"
 "build/tests/kms_plane_scaling" "--run-subtest" "planes-upscale-factor-0-25-downscale-factor-0-75"
 "build/tests/prime_nv_api" "--run-subtest" "i915_nv_double_export"
 "build/tests/prime_nv_api" "--run-subtest" "i915_nv_double_import"
 "build/tests/prime_nv_api" "--run-subtest" "i915_nv_import_twice"
 "build/tests/prime_nv_api" "--run-subtest" "i915_nv_import_twice_check_flink_name"
 "build/tests/prime_nv_api" "--run-subtest" "i915_nv_import_vs_close"
 "build/tests/prime_nv_api" "--run-subtest" "i915_nv_reimport_twice_check_flink_name"
 "build/tests/prime_nv_api" "--run-subtest" "i915_self_import"
 "build/tests/prime_nv_api" "--run-subtest" "i915_self_import_to_different_fd"
 "build/tests/prime_nv_api" "--run-subtest" "nv_i915_import_twice_check_flink_name"
 "build/tests/prime_nv_api" "--run-subtest" "nv_i915_reimport_twice_check_flink_name"
 "build/tests/prime_nv_api" "--run-subtest" "nv_self_import"
 "build/tests/prime_nv_api" "--run-subtest" "nv_self_import_to_different_fd"
 "build/tests/sysfs_preempt_timeout" "--run-subtest" "idempotent"
 "build/tests/sysfs_preempt_timeout" "--run-subtest" "invalid"
 "build/tests/sysfs_preempt_timeout" "--run-subtest" "timeout"

--unaw5JzaqjSEzDuB--
