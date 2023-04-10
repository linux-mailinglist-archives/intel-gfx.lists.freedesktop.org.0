Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0161A6DC88E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 17:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E78A10E0A8;
	Mon, 10 Apr 2023 15:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC7510E3BB;
 Mon, 10 Apr 2023 15:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681140840; x=1712676840;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=gtbZ/aUx19m0nWqBfpud/IU80Cko3Uc0NfBDPM9He3g=;
 b=YRuyLH5RILgNY1f/pC7/mA8knu3ZSm9ezumcJEdaz9Cw2XaApqwR2F9z
 S9zjTjQ5LHfGAgQK68Kjzdt/Y19wl3ptV82AR3duD/4FCY0V/zXkeMDk1
 cHoxpxJx74BBMePu9l0FOL2DRnHTCmS//iSdPPTzOyfe3uGodaGULDpb3
 h3aZJdXY3CLHQ9wk3cvY+AaFFvtzFsKOudILNvbzsm4hiShPgcVBSyPUV
 NDHkk9mNZRjif+tGT3YGta9izKAYpkqQXGbss52+JVf1m3/P//F3Gb2Xm
 wPtvdrSHssFkDs+Gv+XGKbSiQNsWnwfS0uzq7jk2is1Qcmgr0yQp9c3f6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="343386387"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="343386387"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 08:34:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="690805500"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="690805500"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 10 Apr 2023 08:34:00 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 08:34:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 08:34:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 08:33:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GKcAwYqzaTyfcOzjRIqzXRqqzf+CCDR1vrRKR7BWmtS6pa9tyISG6w0GmmyrmuGmWEw09YqbkktaI36alQB+FgPOGEt6hRSSif9RDznbeQqEfObvZOd/XIbau7G93HqL8XnNQ7edQqGeSHlvHRa8U3/xeSNhkmJAJsU3W/thS0IB1y7JfQ4yiKKkj9b37sA9GYUCf2F7jiC8IchTK5SDLyNg9A2RdzUbHyW4EILKcgRsOJ6Em/fRXxsAzyee+heYG9Wb/PpzJm1avfGkiJ5c/8y0YkxsJnzRX1+ww3ejulMJWUyGlQFThjLI5wp8nD+diWyuqWKaE7S6efzCOeqh1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ubSZ3dIsBFQoZkEv3FHTyBj3uKUztmvYC5qt7/b1WNA=;
 b=jl6+DDzQ70y754XPPgmuihgF1yg3RGUw7d4gVlzTBkznpd1xK8QhlNXrL+9gnSvIwHdxsCSFxYHN5A48K17nghcnMMCDm8NzXbFTkgy3zSyNtK4R26puqlGt2ix+peeXxeUOPYbpxUdpZ6YvDUfx2cEru7tcPnscT26atNukbpbYvm5A9+jyz2//74Xv/s3/41ByWEUwYZ2kKsWU7ZcJ1irtXBP4/S+erq/8IdV/FvQzzYtQkVwlJWIN/S12aCPQHGx2Shq3CXLRc/YuUWfNItNyBh8lEVC3MO2c/5jkvo1baibpXb1qyC/nhpJ6pAfUJNqGDaZ1xBdeHXNYGzAqhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO6PR11MB5569.namprd11.prod.outlook.com (2603:10b6:303:139::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Mon, 10 Apr
 2023 15:33:58 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6277.036; Mon, 10 Apr 2023
 15:33:58 +0000
Date: Mon, 10 Apr 2023 11:33:54 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <ZDQsYi1aR2QZjEw5@intel.com>
References: <20230406143133.29474-1-jose.souza@intel.com>
 <20230406143133.29474-2-jose.souza@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230406143133.29474-2-jose.souza@intel.com>
X-ClientProxiedBy: SJ0PR03CA0122.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::7) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO6PR11MB5569:EE_
X-MS-Office365-Filtering-Correlation-Id: a4d53eda-54ae-4aa8-c3f5-08db39d9002d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cQsSMQEO0vrvbNg5QwQe70/tsGDFJ1gwQFgWOsPHIofOVluUFB/ENgnp5gVJh9UFMWNcprXDHi0cWigpoA4HLu33+9htI0UqT6+DALdi5Ip7gFXTtifiW89xjHUMLV371KDdP2NQH5s+rxzFNlLcWDw5AFkfEtc5LevKA4BNjh+viA/6sDUrMYjM4ViRfq4towPMOElVFI0s/rFABbLc93NnRv0DLjHh19OlJQLOmJ8bTENWJwdYnJtQhcah6009CCMquyS7Ek24uDnPzu+VuHxxv0RPnUAy8isES8m0LYL2lrMzc+DdAl10+XHMoMckdfiOCKFrg5DPIJzEJvJv4rzC8fkefuDTaxyMgDp8VIjfKwmoqhBawJizElvE89gQmhMYG6cQgpr9ycEHhLYvT5+HFpn1r5TJZQ6wc8AKR12k+iq+VeCtDFf9KhqGFBejG28iOsiDYyTK70Ozx2cLYpAFsK8A+sgfxW4BzojksmGXmsOEXtvTTmfAfml65ItW/IrbMrcek9ngVcvW8jlTmpvv+1oBWAMCqsTuZ8JzYwV8P/h7D/bt13XDii8nNsAb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(396003)(346002)(366004)(39860400002)(451199021)(478600001)(316002)(6636002)(37006003)(6512007)(6506007)(26005)(44832011)(186003)(6666004)(6486002)(450100002)(2906002)(5660300002)(4326008)(66946007)(41300700001)(8936002)(8676002)(6862004)(66476007)(66556008)(38100700002)(82960400001)(86362001)(36756003)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?o2j4F7MdJR/3DjZd6VQvNHi6KilEEDrRYNwS9TIGALIhXf6+pRGwh1tp0g?=
 =?iso-8859-1?Q?Bxc/a3finSlPBD3Oc9Y5iKwnzD0I+sacRWlETpcIJPvfcHLNR195taKJ67?=
 =?iso-8859-1?Q?kwbR+n5ICai1aZIHss7+LqNtr/6tHYy7WnslkaaB437CV6iSAcrqwAufCx?=
 =?iso-8859-1?Q?BkDq98bMKQfWPWUlH+aj07J3Pwh298NwN8ihhf8EU6rL32eT1YL6Rv72JP?=
 =?iso-8859-1?Q?adEDm+hkWVeD/LO3LhQVfbyNA5BnKMkcty7zvvcVGjkSJMRt28qiqGl9JO?=
 =?iso-8859-1?Q?dkm7reNrv0o8rloTDwBMXRlMCdQ9qAMji5diYRKMapfO1jlJaWmybvQ6T8?=
 =?iso-8859-1?Q?/jVueFLva6WWsH9f/ZWyESP3HCFMM+/NkjSdmzY4CwJ4pmzKQsFdu6X/p1?=
 =?iso-8859-1?Q?kJJ8Is8SL3X5pZHDacsNI48tt+9CknTjztTizwYIiXyfryrGkMPeUNKM2v?=
 =?iso-8859-1?Q?TUdyKq/JIgwhPZgB8sCWy+38N4FT59YisUbc6HWIFUi0pjlxyv9ujSgQgh?=
 =?iso-8859-1?Q?msKfsFcyUZXZMfBA+JMoWWH3wbPQlUR394hiwCHH2xW0clVYTt+ge1vvvY?=
 =?iso-8859-1?Q?+5Vd/1tDUyN/kAs2V5yKKY1suUe1rOW00P9MR8R43GmdnxQ7HYtQoQqRBl?=
 =?iso-8859-1?Q?NhVDj+vV/EXyT+PaEtY9aqXzmgJeZ0+IZRykv1D81W6OhyUxGDJVT85qfI?=
 =?iso-8859-1?Q?75cwJ3XdiRF1GtJhx+ZswdRAC0/VdrZvcBtFu1wr0FF1qfx0YncuVsWqQx?=
 =?iso-8859-1?Q?aAZEiYs+MdY7lSBP038gCN5bv6NAWDLXOsLn5Zkdos2plUisurHmQ6ELae?=
 =?iso-8859-1?Q?dhoEOArc0arDTpuddwnfSZfPoH8EbwEuMyDvD2/iOiUIVxNT6i4MqB82tr?=
 =?iso-8859-1?Q?WidTKsKoyjhBJ+FNk02zcU1tEikeOkLN4lr9/pAE96qvUBXRRbCknB5DOh?=
 =?iso-8859-1?Q?xNJFuEFNmT017kt7fgv4W/zfW+4sUWhUOed47mRWGjxRjE4u0icD5ihwwS?=
 =?iso-8859-1?Q?l8NxeRV+UbCGU/YWE8ybpfLoordSZAu1C7tPP7sw4lFtmvxKNqo887MiMb?=
 =?iso-8859-1?Q?vLBveHP2/lUYqRyx9tnmxU8am0G53inqQ7NeP8rGi6lpKt04ijdbqXs2C5?=
 =?iso-8859-1?Q?ViUw6qb2IGJYknxDIzM2J+GDq+TcQb2Drn87UsHkS208XSMVEOzKOMBUYc?=
 =?iso-8859-1?Q?3d8BUL4aE4G06qPTOhIzOjJIrDYWE7QKfe2FGltvbwOLv5+fG6QekW3gMj?=
 =?iso-8859-1?Q?Fzpd7WB6hEmv74+k0PCw1BK6SI6dp37Jj0Lxn0+RkAfI0IpplRSVP7lZ8O?=
 =?iso-8859-1?Q?/AmgsEWPxIOxRxYHg90keWjiOZk+zYOvwDs9deH7E8xDQWYedT0hiBGX98?=
 =?iso-8859-1?Q?PbxsEmXTBLIelERyq20WRozDkQTRyZxngx3DVzrZ8LSnfxoaQq2eEKe5tB?=
 =?iso-8859-1?Q?EFFGTEVdcY0y/6V4cgxGlcIGBvGTU9llmovBquPjfm6T3fjTceGoI2sC9l?=
 =?iso-8859-1?Q?wS0LQXT+yOCCTHb+1PTD8Y/4Qx2rMF/W89eX4JdhgZgu+gXmrG5OuigTtE?=
 =?iso-8859-1?Q?A1Kk6AJj0GPQ9m4IJzJrm/lYU4RyZIGIhf/OBx8HLg0R5jHP+Dg0u0P2er?=
 =?iso-8859-1?Q?/DhStWQlxi53dGbCD1WjUEYiWTID5hz97V?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4d53eda-54ae-4aa8-c3f5-08db39d9002d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2023 15:33:57.9865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eNrkZ0MQNz77wMQRevOPsS0Yabp5x5AaLccGrQsJpuaKcURfnzPsXPTNLw/4/nhmZk6eN4nZHyPkyaOGD1XU4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5569
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 rebased 2/6] drm/i915: Initialize dkl_phy
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 06, 2023 at 07:31:29AM -0700, José Roberto de Souza wrote:
> Start to move the initialization of some lock from
> i915_driver_early_probe().
> This will also fix a warning in Xe kmd:
> 
> [  201.894839] xe 0000:00:02.0: [drm] [ENCODER:235:DDI A/PHY A] failed to retrieve link info, disabling eDP
> [  202.136336] xe 0000:00:02.0: [drm] *ERROR* Failed to write source OUI
> [  202.175346] INFO: trying to register non-static key.
> [  202.175347] irq event stamp: 754060
> [  202.175359] hardirqs last  enabled at (754059): [<ffffffff8122cf79>] tick_nohz_idle_enter+0x59/0x80
> [  202.180294] The code is fine but needs lockdep annotation, or maybe
> [  202.183774] hardirqs last disabled at (754060): [<ffffffff811a5539>] do_idle+0x99/0x230
> [  202.192734] you didn't initialize this object before use?
> [  202.198951] softirqs last  enabled at (753948): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
> [  202.206882] turning off the locking correctness validator.
> [  202.212236] softirqs last disabled at (753943): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
> [  202.220592] CPU: 2 PID: 1415 Comm: modprobe Tainted: G        W          6.3.0-rc4+zeh-xe+ #909
> [  202.243002] Hardware name: Intel Corporation Raptor Lake Client Platform/RaptorLake-P LP5 RVP, BIOS RPLPFWI1.R00.3361.A14.2211151548 11/15/2022
> [  202.255737] Call Trace:
> [  202.258179]  <TASK>
> [  202.260275]  dump_stack_lvl+0x58/0xc0
> [  202.263922]  register_lock_class+0x756/0x7d0
> [  202.268165]  ? find_held_lock+0x2b/0x80
> [  202.271975]  __lock_acquire+0x72/0x28b0
> [  202.275786]  ? debug_object_free+0xb4/0x160
> [  202.279946]  lock_acquire+0xd1/0x2d0
> [  202.283503]  ? intel_dkl_phy_read+0x18/0x60 [xe]
> [  202.288181]  _raw_spin_lock+0x2a/0x40
> [  202.291825]  ? intel_dkl_phy_read+0x18/0x60 [xe]
> [  202.296475]  intel_dkl_phy_read+0x18/0x60 [xe]
> [  202.300949]  icl_aux_power_well_enable+0x2bd/0x400 [xe]
> [  202.306202]  ? intel_display_power_grab_async_put_ref+0x75/0x120 [xe]
> [  202.312649]  intel_power_well_enable+0x1c/0x70 [xe]
> [  202.317543]  __intel_display_power_get_domain.part.0+0x4d/0x70 [xe]
> [  202.323812]  intel_display_power_get+0x43/0x70 [xe]
> [  202.328708]  intel_tc_port_init+0x199/0x2a0 [xe]
> [  202.333363]  intel_ddi_init+0x6ad/0xb00 [xe]
> [  202.337678]  intel_modeset_init_nogem+0x536/0x6d0 [xe]
> [  202.342838]  xe_display_init_noaccel+0x19/0x40 [xe]
> [  202.347743]  xe_device_probe+0x1f5/0x2a0 [xe]
> [  202.352127]  xe_pci_probe+0x28c/0x480 [xe]
> [  202.356260]  pci_device_probe+0x9d/0x150
> [  202.360164]  really_probe+0x19a/0x400
> [  202.363809]  ? __pfx___driver_attach+0x10/0x10
> [  202.368226]  __driver_probe_device+0x73/0x170
> [  202.372558]  driver_probe_device+0x1a/0x90
> [  202.376632]  __driver_attach+0xcd/0x1c0
> [  202.380442]  bus_for_each_dev+0x72/0xc0
> [  202.384253]  bus_add_driver+0x110/0x210
> [  202.388063]  driver_register+0x50/0x100
> [  202.391873]  ? __pfx_init_module+0x10/0x10 [xe]
> [  202.396431]  do_one_initcall+0x55/0x260
> [  202.400245]  ? rcu_is_watching+0xd/0x40
> [  202.404058]  ? kmalloc_trace+0xa0/0xb0
> [  202.407786]  do_init_module+0x45/0x1e0
> [  202.411512]  __do_sys_finit_module+0xac/0x120
> [  202.415838]  do_syscall_64+0x37/0x90
> [  202.419397]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> [  202.424409] RIP: 0033:0x7fd11291ea3d
> [  202.427967] Code: 5b 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c3 a3 0f 00 f7 d8 64 89 01 48
> [  202.446530] RSP: 002b:00007ffffde11368 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
> [  202.454031] RAX: ffffffffffffffda RBX: 00005616a617f210 RCX: 00007fd11291ea3d
> [  202.461106] RDX: 0000000000000000 RSI: 00005616a617fe60 RDI: 000000000000000e
> [  202.468182] RBP: 0000000000040000 R08: 0000000000000000 R09: 0000000000000002
> [  202.475250] R10: 000000000000000e R11: 0000000000000246 R12: 00005616a617fe60
> [  202.482319] R13: 00005616a617f340 R14: 0000000000000000 R15: 00005616a6180650
> [  202.489396]  </TASK>
> 
> Cc: intel-gfx@lists.freedesktop.org
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_dkl_phy.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_dkl_phy.h | 2 ++
>  drivers/gpu/drm/i915/i915_driver.c           | 1 -
>  4 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2d59330ff5abd..92e1b535b2798 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -85,6 +85,7 @@
>  #include "intel_display_debugfs.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
> +#include "intel_dkl_phy.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> @@ -7890,6 +7891,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)

I'm afraid this is too late. Since dkl phy read can happen on some get hw state
which can occur in wm and power_domain code...

>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> +	intel_dkl_phy_init(dev_priv);
> +
>  	if (IS_DG2(dev_priv)) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> index 57cc3edba0163..5bce7b5b27bc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> @@ -104,3 +104,9 @@ intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_r
>  
>  	spin_unlock(&i915->display.dkl.phy_lock);
>  }
> +
> +void
> +intel_dkl_phy_init(struct drm_i915_private *i915)
> +{
> +	spin_lock_init(&i915->display.dkl.phy_lock);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.h b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
> index 570ee36f9386f..615429b6392c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
> @@ -20,5 +20,7 @@ void
>  intel_dkl_phy_rmw(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 clear, u32 set);
>  void
>  intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg);
> +void
> +intel_dkl_phy_init(struct drm_i915_private *i915);
>  
>  #endif /* __INTEL_DKL_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index ea2cc56d18a6e..617b3d0da267d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -223,7 +223,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	mutex_init(&dev_priv->display.wm.wm_mutex);
>  	mutex_init(&dev_priv->display.pps.mutex);
>  	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> -	spin_lock_init(&dev_priv->display.dkl.phy_lock);
>  
>  	i915_memcpy_init_early(dev_priv);
>  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> -- 
> 2.40.0
> 
