Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3386E7351
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 08:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D21C10E14E;
	Wed, 19 Apr 2023 06:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D2A10E099;
 Wed, 19 Apr 2023 06:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681885825; x=1713421825;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eoMzqmq6FBZMiD8qm7Du/RikswPNV7vKEdsomG8FGko=;
 b=O4149mKLw6L4szB+AgX5w0vg8xhBPvyujAeDIbgSD1nXVi33GP6cNjOn
 wC3fIOvDUrRMiuINzOu9BFHZgCNYPTtlQ3GAOLKX/fS4Boz2lOxXooS/w
 Wozlh9ptlEIk1mmM7Yj/Ay20BXT0CQkgHRyROuC9JEuEo+YP4mHBoFz22
 LQkSFcGTEBWtOwvcRhRKBwzvgA1/UiwyADMIXHLCHZwfuAfPCm3OePdvu
 c64XtIz72oNNwtzBrj9OZ5e3tnVoIqdwxLvzQqL2BmGxFyZTDi2yn6GCj
 /TLg8W0hJuSdpvXDpBd50bkEPZLkMtjgMG1zNubwRFx2zxOTYP/DunBAH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="342851501"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="342851501"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 23:30:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="668816356"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="668816356"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 18 Apr 2023 23:30:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 23:30:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 23:30:23 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 23:30:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e3ZqgJlbe5g+VShNa5Eg6yCnvPqdOD1lA2KvF/zfOwJgyNgA57Y4bcW78jG8WzD1INHmk3BfvQf0TZvGBw8DVk5Max86sBrlsuIrX+I5YTfYXrrX01eNL6ED0lZWC2Sk74iynv+8M8XHHPaVsY1XsUUX1AgEFGgEKKbaA8IcElqiIygrv82p7Sn50bw1Q4/FbcKO1ybzMIc7ookjJenwBbcD1GBNaokwfqr77hD5yj4Mh7ls6yRmr7iLDXyYRicC5eZm+pYJ2NcKeW/8NCW4jQj9CTPpO+bxQ3vMVQP8B8BdlsteBsGB4tA+KkodRE4cNLpMxHnqSfhNiz8A+57kBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q51jJxfsFXJV7ujQ5weBWtYNdOxEBSbVpV6o8lftVqk=;
 b=m/Vyz+mAkBoDxlSUP1nab6Re4orfXdMy2OrW4F7dm2bp5jmlzCaDNBRI6GDfEIdI0KYyy/PZ83i2ZowDyY3uZSkgZhbGk4GlzfXlrs0Kwls2exvSlrqONUDd0+lJ1n+d8zr7cdm1u8opuI/jE+jO116NvM6SD2eSRMMzR7XEW0lvmxdci6QlA3VN5+5N9aG00SgoNKBKOTMREDpCBWgui6DsWBxENkbW7LPO979VwilocxhoPLM3wbzBYB4NuwmjqcM6opm44I2kJJUexm6GgVAQ2tm4U+Q3zd/SlA6KwvGqtcVZ5TL8SFtYVTvfGm23dYNoMftpewM4lvT5G/bCOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ2PR11MB8300.namprd11.prod.outlook.com (2603:10b6:a03:548::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 06:30:21 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4%3]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 06:30:21 +0000
Date: Tue, 18 Apr 2023 23:30:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <uiz4v7ipqtw3mtgvccmi6vgiqojptaahydvh66aaqwq2tvy7sn@ne5s2vatg2zp>
References: <20230418164337.50303-1-jose.souza@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230418164337.50303-1-jose.souza@intel.com>
X-ClientProxiedBy: BYAPR21CA0023.namprd21.prod.outlook.com
 (2603:10b6:a03:114::33) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ2PR11MB8300:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ac06f7a-472a-4eb7-d94d-08db409f8ca0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gaV81rIyyoZaTQEBMgqJE0hOddwQw55U63ITHJcCF9YeZLv6LmLvWRBzSF/wUnX+DZQSg8pWNLEw9eHygkJSaTpR1EqV4yf0o0quLCdwoBqm7cwqXirRkN2642v7IGA0lOjinyFDPQPWyi6IIyLr1QKNwjkMGtuicAl0xvr4EnnrBlZP2yVpscTtTMiM/5iYhAXhK2Hrt4lUwtYW+Np2dVYes3DHsrgad0Pi1FqM0HMzZXFFqNCxGjL2eSMN6PuWes1NgR7vPCbcqBgoM/l2N560HxFsuX14bT9qCWzhrpZYs4dYLrtqO8EtV9iwabykO/HEBFJppdRy3PXWqhuW097C2NZgkCrUT5fiQFFTeUFNg7zHO68dYSIZjXaBZiKzLBYOPTSSS6KcYL5UWeb3i9gxHYKYlwSFSWEvljNxeHcKqSr9+oZ1hphFv8Rw8VKA9uuh7JUK7lTambcLKquV3Jjn2xkpbcZL6NPJMHL2Jk0HFJxBDFJ9paLBHuL8ZUPYj+dLzS1pcc4ToPe9YWHIBgtemR81Wf5GiaZ0pEJVMz3MnThHjGk/dZKpJOdg8nq5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(39860400002)(396003)(136003)(346002)(366004)(451199021)(66476007)(478600001)(6666004)(38100700002)(8936002)(6862004)(8676002)(316002)(82960400001)(41300700001)(6636002)(4326008)(66946007)(66556008)(54906003)(186003)(2906002)(6512007)(26005)(83380400001)(9686003)(6506007)(86362001)(33716001)(5660300002)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x+EhmykJiT/v70QlyL9esgcHVA+NDUoiy0JVvDFvCjA19xyMun5ZpBYDQI2z?=
 =?us-ascii?Q?FIFm19BkcEGwJf+Uast/neCmZ+CGxXY7EAz0ADkiesjOhTbHlv6NJM2DZIwR?=
 =?us-ascii?Q?uxfXkrIqvCwkpIWOIJhL2fbAPjX33qQQSSlKvL3VhuTA+3aS1VHk5CkXBPap?=
 =?us-ascii?Q?GczkZpORdB6bQevrUXgndH73ImXRTp15wc37wX67QGhgSwZI8owpof+Urz76?=
 =?us-ascii?Q?5yt5E78tpo20ZvE7LKbGra69aU85CGu7l8JqgdK9k51MxS0RAuOdXJK1+J6b?=
 =?us-ascii?Q?AXN7jQ7Ou8wKKfRyx4hKFsXHz/U8Z0J6WJXuR0gUWNCaJVx4v/tjHU/wCCvJ?=
 =?us-ascii?Q?jXMjN2ljqtgjBiN/nUvL+kv8L6ZuZj3M0Arf6bCtthljN6AShkgWry6wEd2e?=
 =?us-ascii?Q?nyKf3ULeMeqWtNK5yo9qBnaC/5khu7T5jil3xu19DjrLQdo5397Fgw+1sCzV?=
 =?us-ascii?Q?UhQv52lUvGkD72+eFBUOJkwOQa1N6xQPJdL8kHZGk6ct76DndNGBeSfU8j1t?=
 =?us-ascii?Q?7nLTCDtIuM8w/uGAAe3mWTMv0j3eZV4GwS88j2TOi5l0HalcihL5QachpU3+?=
 =?us-ascii?Q?F7UhV2odCSsRE6wuDvfAdu4a/RjxcXps3hMwfSNxsu0R7cz/XlICsKyauXat?=
 =?us-ascii?Q?I9ua/HZnFnPUekL5LsfL+FTCxSi36GI1fFZM7tZK9IOK99Uo1GsEGAnqPLuB?=
 =?us-ascii?Q?qcINQUIzKuYrFk+XS5S1Ym9+z04Tfd/5Z7Y4o4UoL5Y+IR1aP+xeHZU10uu2?=
 =?us-ascii?Q?i/xCtReMQhQGzqnmqWR57/837LHPF5wHVbsZ3MQ0w/YJDRhNYUEwbiRV53PT?=
 =?us-ascii?Q?+XjnvU+fdd9u/pkKS/1FIzPihXUYF0fzvzetPQqDADF9JMZA/ueejBsbguu6?=
 =?us-ascii?Q?Kb5Op8JITfOH56nplemC0gw5Klci/NHoPvW13Dqykcm6BMiN38yhN845O9MO?=
 =?us-ascii?Q?83ufH5NxL1Pczlu2cFIhXKFYgB0KV3rwzgRw+Bi+V+l3Uh87k8yWbDccjciv?=
 =?us-ascii?Q?fc3t3OfaYqIWAAlTVe4H+pLfflZalRkpaJ6U+4NKxcuAkfxuw5Rdw+25s9se?=
 =?us-ascii?Q?nPEAxVmTY54jd4h9BOez7dKGPIXkm68eQzmDisGUn2s+/QYqJif9KWCT2dxR?=
 =?us-ascii?Q?RHJ47jzsHX57jNx6dS/eQT/vqTeZIVE7JPC+vOPdWBKRIQIW/8RuaeNUD2Tu?=
 =?us-ascii?Q?fgYaffe0i9WClWhxTKr3gjOQR5Uk0SJxc1oOD+/vttmEkgPmmrpe1mIqEYF8?=
 =?us-ascii?Q?s7HkQxOIkq8HHu1rt4yOJUPdUHMQYvjUY0xqyvlQT2UQhgrwtlDTuLqQ8qTH?=
 =?us-ascii?Q?hfI5AoeSGXXsQ+HDNPtW7gollzxw+6e/RfxZaH9DS4qKQsBHzWUrhWhBhDXQ?=
 =?us-ascii?Q?GClgFLq1nvUAJus+1/MfI4hn6vUi3YBYcsYtorLnMUAqUqcHtaBHTTLC2rv1?=
 =?us-ascii?Q?vqeec94i69xZPGdRODyIqCf7/SLOYhqJ0PW1HqBkB0hbxcf37nR0YZE2yJYO?=
 =?us-ascii?Q?uWKnIp34E5Qk85t+zpiLkS9CT1TLHLtVFghboEflLMH1ceCKZvxY0JkM49o/?=
 =?us-ascii?Q?6SwwwHoUy7AlkRL6yzkSyyp8t41w9n4vuJZwdNhP+WvYhSlW+2ZPv3atcdnm?=
 =?us-ascii?Q?xQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ac06f7a-472a-4eb7-d94d-08db409f8ca0
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 06:30:20.8876 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bG/gPFoX07FzqE4g1XHgeclqZ39D6Ggi1OXslAINvRoIXiVV79/gz6/XVFdTXyuAgsnggquZXrZIo8BiA1yYYcZ7I8jIDfXMQt4PIBr36ZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8300
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: Initialize dkl_phy
 spin lock from display code path
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
 intel-xe@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 18, 2023 at 09:43:37AM -0700, Jose Souza wrote:
>Start to move the initialization of display locks from
>i915_driver_early_probe(), this way it is also executed when running
>Xe kmd.
>
>This will fix a warning in Xe kmd:
>
>[  201.894839] xe 0000:00:02.0: [drm] [ENCODER:235:DDI A/PHY A] failed to retrieve link info, disabling eDP
>[  202.136336] xe 0000:00:02.0: [drm] *ERROR* Failed to write source OUI
>[  202.175346] INFO: trying to register non-static key.
>[  202.175347] irq event stamp: 754060
>[  202.175359] hardirqs last  enabled at (754059): [<ffffffff8122cf79>] tick_nohz_idle_enter+0x59/0x80
>[  202.180294] The code is fine but needs lockdep annotation, or maybe
>[  202.183774] hardirqs last disabled at (754060): [<ffffffff811a5539>] do_idle+0x99/0x230
>[  202.192734] you didn't initialize this object before use?
>[  202.198951] softirqs last  enabled at (753948): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
>[  202.206882] turning off the locking correctness validator.
>[  202.212236] softirqs last disabled at (753943): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
>[  202.220592] CPU: 2 PID: 1415 Comm: modprobe Tainted: G        W          6.3.0-rc4+zeh-xe+ #909
>[  202.243002] Hardware name: Intel Corporation Raptor Lake Client Platform/RaptorLake-P LP5 RVP, BIOS RPLPFWI1.R00.3361.A14.2211151548 11/15/2022
>[  202.255737] Call Trace:
>[  202.258179]  <TASK>
>[  202.260275]  dump_stack_lvl+0x58/0xc0
>[  202.263922]  register_lock_class+0x756/0x7d0
>[  202.268165]  ? find_held_lock+0x2b/0x80
>[  202.271975]  __lock_acquire+0x72/0x28b0
>[  202.275786]  ? debug_object_free+0xb4/0x160
>[  202.279946]  lock_acquire+0xd1/0x2d0
>[  202.283503]  ? intel_dkl_phy_read+0x18/0x60 [xe]
>[  202.288181]  _raw_spin_lock+0x2a/0x40
>[  202.291825]  ? intel_dkl_phy_read+0x18/0x60 [xe]
>[  202.296475]  intel_dkl_phy_read+0x18/0x60 [xe]
>[  202.300949]  icl_aux_power_well_enable+0x2bd/0x400 [xe]
>[  202.306202]  ? intel_display_power_grab_async_put_ref+0x75/0x120 [xe]
>[  202.312649]  intel_power_well_enable+0x1c/0x70 [xe]
>[  202.317543]  __intel_display_power_get_domain.part.0+0x4d/0x70 [xe]
>[  202.323812]  intel_display_power_get+0x43/0x70 [xe]
>[  202.328708]  intel_tc_port_init+0x199/0x2a0 [xe]
>[  202.333363]  intel_ddi_init+0x6ad/0xb00 [xe]
>[  202.337678]  intel_modeset_init_nogem+0x536/0x6d0 [xe]
>[  202.342838]  xe_display_init_noaccel+0x19/0x40 [xe]
>[  202.347743]  xe_device_probe+0x1f5/0x2a0 [xe]
>[  202.352127]  xe_pci_probe+0x28c/0x480 [xe]
>[  202.356260]  pci_device_probe+0x9d/0x150
>[  202.360164]  really_probe+0x19a/0x400
>[  202.363809]  ? __pfx___driver_attach+0x10/0x10
>[  202.368226]  __driver_probe_device+0x73/0x170
>[  202.372558]  driver_probe_device+0x1a/0x90
>[  202.376632]  __driver_attach+0xcd/0x1c0
>[  202.380442]  bus_for_each_dev+0x72/0xc0
>[  202.384253]  bus_add_driver+0x110/0x210
>[  202.388063]  driver_register+0x50/0x100
>[  202.391873]  ? __pfx_init_module+0x10/0x10 [xe]
>[  202.396431]  do_one_initcall+0x55/0x260
>[  202.400245]  ? rcu_is_watching+0xd/0x40
>[  202.404058]  ? kmalloc_trace+0xa0/0xb0
>[  202.407786]  do_init_module+0x45/0x1e0
>[  202.411512]  __do_sys_finit_module+0xac/0x120
>[  202.415838]  do_syscall_64+0x37/0x90
>[  202.419397]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
>[  202.424409] RIP: 0033:0x7fd11291ea3d
>[  202.427967] Code: 5b 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c3 a3 0f 00 f7 d8 64 89 01 48
>[  202.446530] RSP: 002b:00007ffffde11368 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
>[  202.454031] RAX: ffffffffffffffda RBX: 00005616a617f210 RCX: 00007fd11291ea3d
>[  202.461106] RDX: 0000000000000000 RSI: 00005616a617fe60 RDI: 000000000000000e
>[  202.468182] RBP: 0000000000040000 R08: 0000000000000000 R09: 0000000000000002
>[  202.475250] R10: 000000000000000e R11: 0000000000000246 R12: 00005616a617fe60
>[  202.482319] R13: 00005616a617f340 R14: 0000000000000000 R15: 00005616a6180650
>[  202.489396]  </TASK>
>
>v2:
>- added intel_display_locks_init()
>
>v3:
>- rebased
>
>v4:
>- drop intel_display_locks_init()

why?

Lucas De Marchi
