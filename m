Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB15067A358
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 20:47:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4490010E1C8;
	Tue, 24 Jan 2023 19:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2087210E1C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 19:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674589640; x=1706125640;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9K4CnGpAXD5ZGKOBS2Y5BabjmVpJSOBDhiViplgRFd0=;
 b=BrkDmMcbdiJ4pskWz9fljy0V/dYP8/bgoDL4xdTthft9HAJ35amWnCvB
 Y+JMQvXlTyJglk4HXSftMdxXm76GQpdulAuzDf1y/MrmT5/ZUI/X1SA3Z
 4xgeQ8EhNt9Z32CAGxEal+NujVMdbx9wYgEyHqMQx8ZsQyZ4gY++/XIdG
 6HtGV8x/XRq7gXhlvdQktFyOQ/khOVgq3QObnuyo2kCqH+X16xODGp5Nt
 PIzGA5t13Tn89W/EWXfErRFoY8tR3SjSCGA1aAHbmgS75LczRNaaKR31o
 JEC0rGmlh1JHzjV965wRgR9Vp4Oh26RB2xaAy9U0IW8fZzZ+ahfpnj15W A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="327644229"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="327644229"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 11:47:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="662245017"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="662245017"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 24 Jan 2023 11:47:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 11:47:19 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 11:47:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 11:47:18 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 11:47:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a7JEzEzIIYVm9L5bZiPOAzNIAqmvvyw8ktcIhoBFpGG04Q/ZgGHDgkszsKEAKIRXMg06YOUOnoFHVZXJLg0T034hc3Pc/x3LMgJDAC+MW/FZRrRmsgtnxMXz6793qdOo/PYJSMTNAzo6cQDYDBgzR2g0il1ffpFBL8CklpaSIZrF2MFDHhdd8e9ZgNtWz+7h/dJ8J0dk15R2W4rIY9XmvBYv1G4ltXxUp6uNRtGxBxDHKL7+9P4ewiMn4gRRnqlVpmiao8K+P6mnnmAiXptNS2NWxNd5EsT91eXlScVygCDyszeGIFm9qnkzG/XAgK4RiclkN7O1KkPlZ62ofxHu/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iGy7ts0biT6v+oEH+wLLzGXoZFErH9xmpAxe214q9hg=;
 b=jQeLAMIeWhLicRqYgGIyNH/NqQJLfYThaIOJw405i+fpfZSXEvnSrIfrkmqiYuWOO9GP5nn61oUHCg3pPp78NbXLYU38lY+d0Fj/vyHsVMUjmIk0FVYW+P5ltTqDhl5ZHrxx346OVRPAquFyH0rmKgDV26KkW8Ykqb+o6ieBMyQ/teGuZ0CSDQ0w5Zv0+LcsA5pgQQ5dH8goi8pQpBvw8Zaz9nTQO6hSnqgvu8b/4i6GNndRPuSxfRA/KrmZg495O+vXh9xDpF6WZzzLFUDwk5Wd3C7pUeGf5vA6w/SkKKVMN52MgQ5PA++B/IttjeuluEA+t2kV17ChMidN6WJsUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB6811.namprd11.prod.outlook.com (2603:10b6:303:208::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 19:47:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 19:47:14 +0000
Date: Tue, 24 Jan 2023 14:47:10 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y9A1vjljj+KbSDbD@intel.com>
References: <20230123182021.31239-1-gustavo.sousa@intel.com>
 <167450519942.346.5976271983728317044@emeril.freedesktop.org>
 <20230124163959.2fjczxtyfp36laqg@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230124163959.2fjczxtyfp36laqg@gjsousa-mobl2>
X-ClientProxiedBy: SJ0PR03CA0211.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::6) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB6811:EE_
X-MS-Office365-Filtering-Correlation-Id: e48297d4-fbf0-45b2-e016-08dafe43cab0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bjC8HVEyqr0yYLIoesIbSpCxtVszHe7Y789uP012G+1G0vvhQRobTf/j2lrZiiaOSAokvyi7IsvSAA5qNBfc8zrRqWhl0o+u0JwW9pckuWh34JJS2WkBZQv/HGKbqj0VuHx/RHLr8B8qML2CcwRXmO1Yi4ayp69+ljxg2GmtIUk94aLthMKtuevcncU74XB2VQmnPK9Bg7SW9Ny/tn0/DtCvPVWsfffACWrsVWjrASgIShJ85E9ypjtJwZhbsighF16H97IoWgzzYtKopKtce6reTmBTkix0mO2qgQDHU4l6itcWMXjiAjGyZJv8Btbi3eq5WVWA7bQXI5zt3anJdri/32NEkwLyvJ3NEcg3knbfTWr6fNn+YbDjyUFxvY7Y2Uur/7cecDeYtWb9tz7rOemNInv+QhgwlaMq+Ibnql38uxiFqKp6wNjwwmP4/LWvAzQQAQpMLElZHXWgMPo2QQdi+6ajEfLqS+G5NkNr80tNa4vlRdteXt0CK0zuhSEkmhLl5t95+6QaPakZl539l3GdlVM5yqYAPNRjQx5tZTSBr85UcmyqXtfhaz79RoMHmpsGe8GYvfXlWO8EEaqEoDapVeIKWlamy2zVXzjvmSaxPI7Oaxm90uCYQIta4wb+tA5bYBQjoHQR+4lVmA/fmQMsQxi++gwnO5BtyVPO1z6gWw4IBr7GTWFMas5XWrWkljY1BQgHkmuKb/rOt0T9SqLt2V3IiYbrq3wLBAknbEg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(376002)(39860400002)(396003)(366004)(451199018)(38100700002)(83380400001)(66556008)(2616005)(478600001)(186003)(107886003)(66476007)(66946007)(6486002)(36756003)(6636002)(37006003)(966005)(26005)(86362001)(2906002)(41300700001)(82960400001)(5660300002)(6862004)(6506007)(316002)(6666004)(6512007)(4326008)(44832011)(8936002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UD3YNYxAufTjrBujcz1LBaOZ1K9QUC30/U47b+/4Ail1+GMaO7k33WG4PIou?=
 =?us-ascii?Q?PgmO+ZIsiAsM5XoH2hXBiAwxArsQ3AMQpFUy42ZHzGKA0iQvSm4nULtn2u1c?=
 =?us-ascii?Q?jX7FLOBQJhTSO05WXIo4n8VoXvTJs+fTunOjDmHzfy6SkxLqm8s1H2Xb9RVt?=
 =?us-ascii?Q?CHgbYuoy1KS6rh/MdwoYKE1NYzZQkhO5U/IgLMVV9e3n8DS1QZLY8KJEfwD2?=
 =?us-ascii?Q?tZeaw864gyO9s+ROkN/THpdm5ocfKZgGlzc/iSKRowAqpXsMhZW3nMXCfYFw?=
 =?us-ascii?Q?yVxn6IWnzCM+GudnNLY7J5Rfjw6ADlYGWNIa6Zc+pF23M1FsncEUL0clNCSb?=
 =?us-ascii?Q?efZ1fTwhehhQWnMkHOUFDy9N24ktMbyGa2PjkFmMMcvpzizUQEoPDoC6ulLJ?=
 =?us-ascii?Q?HJrDTEpGsKDjiLgEwgXJXfU9/shQRum3bKSKW1JsdHWAzTRq3cygIG1QyRwG?=
 =?us-ascii?Q?hTzyGrWvhXdFJk7kVQlTnaORt3wJ5dUjOQ33FvtdoOeAzLP2TR0C7R7jWw5Y?=
 =?us-ascii?Q?z5FrmtVZphefi6oNOlYgk+NWrBJOQ2SpuqWovUqIYx60qk7N3cI3w/TF/qd8?=
 =?us-ascii?Q?KDUbGUri9Dh0rxQCNvPLFSZ9AMa8MODMeAuXsgdDBtWdUKIYWCGd8YgdUvp9?=
 =?us-ascii?Q?OJ8g5RzH8Y4x7d3bqxDNQjsqu3Vdb22PwNneOSTb9mPsFyCH0SQ3IWHKkTLX?=
 =?us-ascii?Q?/Wv6+DGpCR/GHZu4iPhxaAO615Y876jllZx5hQYEeQD78kUdRmTp6Jl14xvq?=
 =?us-ascii?Q?58G7skAwnO0Cyg24lkapoNqAazp5SEICOlWnjChwzjLzv6gC4AYKD7oVmSpx?=
 =?us-ascii?Q?aV3TlCZ8ziem2NQYQfpqniMo1cBA4eKB8pEAs2xLOwHj3KXDoJfE5tduNZAa?=
 =?us-ascii?Q?5HLSLLX66O4qjgx4Y3rKNGkxL7BWQIYhgQLyTdAZA+859MSAzsfqU0n1rmyT?=
 =?us-ascii?Q?ldQ/jN/I5gew94XFPJ0LxsJ8PMZnQmnObtFboCGoTX5KNvkkm4kzTAn/VUUq?=
 =?us-ascii?Q?WsgaTH7X+8OCGLub+sxi8mxwhNZvL9eFSTI38uucZbhfVT54QiLVb3PBptOr?=
 =?us-ascii?Q?PRO+Wt8W8TsmvNiBDmx3HnF/UDmsIjBE/YOlMrJQ1umoVJXiojK8WuPzd9kg?=
 =?us-ascii?Q?ez9tML6lYNMaP38YXrWLVbiOoP2EM6outN34BdWcLVpjVVgt2H7/2wm5EcHq?=
 =?us-ascii?Q?ddPZDwhvuIzZGlhiOoom+nurk7lvqBnKLnHcJfaXylXssDbDLP4T65yWO0aU?=
 =?us-ascii?Q?WdTKa7urEiYczhHo857jeWgLDSJF0NItw/rv60xK62AZQKc/HQ7A+GWszv1B?=
 =?us-ascii?Q?uItSTn1dTot0uuTEYMy1VOcHTgqYAo8d2P522Uryg/sGOb5uEvb9Wi6sIjKu?=
 =?us-ascii?Q?Zk78uE7m38psiXvp1KfSZNOSvhqj+XIhyvx4MPGDVYALX3OsDZMKQrqGrBGE?=
 =?us-ascii?Q?nWN1zCeyfDl0i42dovF8Xa5R/qsiWn4LW5c67YNvnniVwuSsBOw8rxvzx64P?=
 =?us-ascii?Q?lwSVI7MTzjHU2rqcCuDDugu3HcXrJQoiWYiYsPSxrDpnxL7oib5Gqnflvbm3?=
 =?us-ascii?Q?thohtZLh4p3KRcJAnJ4jHIfCMti4h+iwysXTxtGfU4GYc8vMO3iAPWr4et2e?=
 =?us-ascii?Q?tA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e48297d4-fbf0-45b2-e016-08dafe43cab0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 19:47:14.6636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VDn9aWpAD19OjDMFr8hLX3JGW3bwFvXUxbFgV1dBOrP0E7TzD950MyoICSbtQPGvGh+rT7OFXYFk2XS34C0Ogg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVXNl?=
 =?utf-8?q?_unversioned_blob_path_for_ADLP_DMC?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 24, 2023 at 01:39:59PM -0300, Gustavo Sousa wrote:
> On Mon, Jan 23, 2023 at 08:19:59PM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Use unversioned blob path for ADLP DMC
> > URL   : https://patchwork.freedesktop.org/series/113238/
> > State : success
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_12624 -> Patchwork_113238v1
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **SUCCESS**
> > 
> >   No regressions found.
> > 
> >   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/index.html
> 
> CI is clean, however, looking at the logs for igt@i915_module_load@load
> on ADLP (e.g. [1]), it looks like the adlp_dmc.bin firmware blob is
> missing, so the tests ended up using ADLP DMC v2.16 instead of v2.18.
> 
> (On the bright side, at least that confirmst that the fallback mechanism
> works :-))

That's nice! This gave me more confidence to push the series! :)

> 
> I thought this PR[2], sent to this list, would make the blobs available
> to CI. Did I do something wrong there?

my understanding is that the CI would pick the PR for run a local test.
But also that was prepared for the PR with kernel changes simultaneously,
not sure right now. Someone on CI would have to check and fix for the new flow.

But anyway that was a temporary get, to the final one. After that gets
integrated to linux-firmware.git someone in CI was doing a manual sync/update
iirc.

> 
> 
> [1]: "Results for igt@i915_module_load@load on bat-adlp-6"
>      (https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/bat-adlp-6/igt@i915_module_load@load.html)
> [2]: "[Intel-gfx] [CI] PR for ADLP DMC 2.18 and MTL DMC 2.11"
>      (https://lists.freedesktop.org/archives/intel-gfx/2023-January/316102.html)
> 
> --
> Gustavo Sousa
> 
> > 
> > Participating hosts (38 -> 38)
> > ------------------------------
> > 
> >   Additional (2): fi-kbl-soraka fi-pnv-d510 
> >   Missing    (2): fi-rkl-11600 fi-snb-2520m 
> > 
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_113238v1 that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_huc_copy@huc-copy:
> >     - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
> > 
> >   * igt@gem_lmem_swapping@basic:
> >     - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html
> > 
> >   * igt@i915_selftest@live@gt_pm:
> >     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][3] ([i915#1886])
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
> > 
> >   * igt@i915_selftest@live@guc_multi_lrc:
> >     - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][4] ([i915#7640])
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html
> > 
> >   * igt@i915_selftest@live@hangcheck:
> >     - fi-rkl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#4983])
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html
> > 
> >   * igt@kms_chamelium_frames@hdmi-crc-fast:
> >     - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271]) +15 similar issues
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html
> > 
> >   * igt@kms_psr@primary_page_flip:
> >     - fi-pnv-d510:        NOTRUN -> [SKIP][8] ([fdo#109271]) +44 similar issues
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@i915_selftest@live@gt_mocs:
> >     - {bat-rpls-1}:       [DMESG-FAIL][9] ([i915#7059]) -> [PASS][10]
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html
> > 
> >   * igt@i915_selftest@live@requests:
> >     - {bat-rpls-2}:       [INCOMPLETE][11] ([i915#6257]) -> [PASS][12]
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-2/igt@i915_selftest@live@requests.html
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/bat-rpls-2/igt@i915_selftest@live@requests.html
> >     - {bat-rpls-1}:       [INCOMPLETE][13] ([i915#4983]) -> [PASS][14]
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-1/igt@i915_selftest@live@requests.html
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/bat-rpls-1/igt@i915_selftest@live@requests.html
> > 
> >   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
> >     - fi-bsw-kefka:       [FAIL][15] ([i915#6298]) -> [PASS][16]
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
> > 
> >   
> >   {name}: This element is suppressed. This means it is ignored when computing
> >           the status of the difference (SUCCESS, WARNING, or FAILURE).
> > 
> >   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
> >   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
> >   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
> >   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
> >   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
> >   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
> >   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
> >   [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
> >   [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
> >   [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
> >   [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
> >   [i915#7640]: https://gitlab.freedesktop.org/drm/intel/issues/7640
> >   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_12624 -> Patchwork_113238v1
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_12624: 18fa3d2237f6df82980349f6bef5281096dfc91d @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_7134: 61b8c0a0c8a9611c47749c0b1a262843892cccd7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> >   Patchwork_113238v1: 18fa3d2237f6df82980349f6bef5281096dfc91d @ git://anongit.freedesktop.org/gfx-ci/linux
> > 
> > 
> > ### Linux commits
> > 
> > 2b1f15adacc1 drm/i915/dmc: Use unversioned path for ADLP
> > e1384510d25a drm/i915/dmc: Prepare to use unversioned paths
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/index.html
