Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 989536DDE7C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 16:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D961B10E576;
	Tue, 11 Apr 2023 14:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE8E10E576;
 Tue, 11 Apr 2023 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681224653; x=1712760653;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=F0DLP0Keqx8TwKBsSyLl16TsF0o2Q0ZEIlr9dWhponc=;
 b=fFFaOZV6lfM7BjzXsla+5i2RKnoxcVdaEWJzKdrwoQBRjY4lYxPMpqYW
 7Vrfd8SPGKJin/Zwf1iCFz9IHwLRpd2Idn8+4ZS5mDd3MCAd+tRB8n1LO
 eN3fRj48IdpVew2UiH1Buf0MqgTYHAUlFoVQ+WdbqE3IxDEQ2LIUd2htY
 QkCOoqGPIbjFbGF/44Z5aRgiRV74QguePDWYhb5dO4kf6REfbC0wIMXNA
 m1wXbdCSRRQC7BOZLpPTj0HThtEn3SJsuZQSxyPN3rJf1vJwTFjZ5zZrv
 5paSqIDZI69iCqoP+cfvrPWlNnjUDToS/U6wBRUYYfZ9B3jj79gn6q/Yj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="345423619"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="345423619"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 07:48:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="757874024"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="757874024"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 11 Apr 2023 07:48:37 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 11 Apr 2023 07:48:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 11 Apr 2023 07:48:37 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 11 Apr 2023 07:48:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PlngZVUSLaJeqnYb41s6rp+Cx6IUrVqeZ1oiWgEHm1AawndH9tK3L3Jx8Q1ztz9kSSKtzzLgxUJof6qY24u/6YGSEruiMk8Imdm0JIJruYxs48ezqsFcetS6hmL6tbsh7BpqPatz3zNj5Fpo3zTqLOVL1FNtK9ON7889jx20LweCvG5Y8gkczeTyDuovGIbgkH/FKaaDEjiuzznf9n/P9OjYnRQdbsY5jeidhW/XX4BxoXMovHXK5IPQIDQ5cHd0/CxtZ+s4D5w7Xiq+WSc7TKHAooU7eFaH9rbd8Qaxtg/Rq/lyl7/tUP2jTWisx0c0k0xfYGkjBOEjxHW4PGiVKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QMbfS0OZ3cGD7lzKh79nQM+Qds4Bytu6V4sS2cbShOg=;
 b=cmrd667GbhBurglMsLqyoYushK+VJusTRgRPqnGcwR9jL884v/qFsOlA4CulbVzvDm0t0ksbU4lwCF1gFFoODw2KbCVOPUK4HThHEGUe1w9OgzhORSdpwiPEKk0Ri0rU+XuzZaiR505kJHKycJHuGF1ckLSKNwCFrvs9PdbbX5/hPr/CRk1+ezQ+zzTwwMCckcr/tgyePJAqVPQDmfRk1rxU9w65GWIQibbRj+/P8st/S2hC9+3NpqlDUR4z4DAdVm4j+eUHwNtO2bHPTHBrEcvwI68aUtrW+/lb/ZEOQz3Im6ZOHCJ9m6IgP8iu9J9sMHFbmMJ3dxk9w0Ew5yqJnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM8PR11MB5656.namprd11.prod.outlook.com (2603:10b6:8:38::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6277.38; Tue, 11 Apr 2023 14:48:34 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6277.036; Tue, 11 Apr 2023
 14:48:31 +0000
Date: Tue, 11 Apr 2023 10:48:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>, "Jani
 Nikula" <jani.nikula@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@intel.com>
Message-ID: <ZDVzOvldd6lsMm56@intel.com>
References: <20230410181438.147117-1-jose.souza@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230410181438.147117-1-jose.souza@intel.com>
X-ClientProxiedBy: SJ0PR03CA0142.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM8PR11MB5656:EE_
X-MS-Office365-Filtering-Correlation-Id: c0774e36-9ba9-44b9-a712-08db3a9bd156
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rpRdErlf//gQHI01mTj4m0MDIxBUGXI77kk+H9hlIFNHE+w02SjNHfV58gEGygKuvzZ9JIigVraznDI+HqCj5IiOXLsJA/rCycFvOEZdrNS8JzgWqO8oUH4QilofFTJGD72/dwYHh4hcEWvqTAFfBnlG/cTLTqiYHYwbx5WovcvBRAmh490+gXGk9RzV+MDRszvofZsQVuCbvOWsGrv/O/rdmGC3C5EymqkSjdk1R7EBYaha5znpAmS9T/YBpsN1uROWRtkI13jPICoGUJzMrWWIfHzZZ74+eab34g4449T6T0/YvqNGkcC2bugbJS7hcX8uDIpTvU8CwuNOXaTEz+6VMuDcSp9v1nmXlSj+kP0JlG7a7ZkbwJe/I54zHHzrExHsWyWcDrjnbWC5FmWB0A2D0susWWf09TkvGGmG9NoHdtfWZIeMGvnyFL2Su7zd4BmuAT6y9LZ5yXAKBlUD2DbxUocI6edcyqbf+FcuV0JsLQG7BnIP9XGWtdRK5CPDfjuQPWN365XXV8KkuI0im/+Bx5Dq7ZCd/fIrfJla24Z8SZTG7TAIQKWUN9ypTPAj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199021)(478600001)(66574015)(82960400001)(36756003)(83380400001)(38100700002)(86362001)(2616005)(6666004)(450100002)(44832011)(2906002)(6486002)(6636002)(110136005)(316002)(6506007)(186003)(6512007)(26005)(5660300002)(41300700001)(8936002)(66476007)(8676002)(66556008)(66946007)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?OgYGC5A3W2Qk+RvpyxMMF+Tn9v2vkuOVw1glGgEm8T6A9YUOnliwENGcMD?=
 =?iso-8859-1?Q?WKeSEXypBxOdJd/zMLCOmzxm3ZXuCeNB4iHFaQbFQM+htSx3WTJviPXTiE?=
 =?iso-8859-1?Q?eJ6Zt4FgJZ+9pelnNZrbm7Zoxye/LiV0ZjPSZM0mYaUHOe20TA2Kte8klm?=
 =?iso-8859-1?Q?7Y+bIDf8MK4jAKS+dPIy8Gx4Y/QC3oD4f4kMp9qLaNM+5M5kbS/50CMeVf?=
 =?iso-8859-1?Q?YT6o8wbr3G6q2/69LYpHNtcs1gVDJz11kK5Q2j0pgcag/vYqhDM+zixitb?=
 =?iso-8859-1?Q?gVfg36mhzijc+yvNtilFotWoRtnZIjjQ/L/m3A+chhv3reECYQgIF9Wq9T?=
 =?iso-8859-1?Q?1Lfa55CbNsqE4E32MnkFadm3BA+Kpq04ZuAteVyuacmm35RCcqxmt0izhJ?=
 =?iso-8859-1?Q?mOmdebqto1kaLvEW9+Vk9Xdl+Ngz5gjNfGiR3aN8/Ctps/RPwXL7oGjTt9?=
 =?iso-8859-1?Q?5Ns/XjBPA2cUSJtYyn36cUO69CvFEZaD6mFbqqZB5EKgbiDmxibsUSPM/T?=
 =?iso-8859-1?Q?6s5SDlvfA2TNpRq3/K/c1/6l6lXfEeOzkFykk7DwL1S788EPHzAz7F46a9?=
 =?iso-8859-1?Q?WcD01PA+/rFbftbfdf0ezxtFObtA20laZmEnbDFudsYyU78F1jPv95vwHD?=
 =?iso-8859-1?Q?VeR3VT+IT2uyL/Vv+A+Ief3kPcyywjcV9/GefsmqcUsTIleDiNW5+5LxmG?=
 =?iso-8859-1?Q?tkchh/WoJ7rStmYqt+K3VJrJ8afi+6cy0fMKcd/hioDRDvBMAVVXWY6eQX?=
 =?iso-8859-1?Q?or/Osx7ol17y9xGJeLiBbmvSdRc6nNwmhJDdHqvuVIsqwQ0o0c0wAD9KzY?=
 =?iso-8859-1?Q?Va0TW0JxBNNDf/Y3/aPeqIhYgQFMXOLBN3Vg0DrTVjVu5RZdBn10u2eLMB?=
 =?iso-8859-1?Q?w4gLLJnyt/1fG2pwuZYP/fjf3npxslAYXuSIvdu8a2dKeBZ1v8SI2gxk2p?=
 =?iso-8859-1?Q?WdotsySWC5gkUyjsgOaF1z3qwAVW0LaO4yLTZtSAh1VmIgWxk0Z7awDDkv?=
 =?iso-8859-1?Q?nu08IBZN1pDZp0/rj1v4jo/DWCyMKWoWhpi3OMcWBZRCBDGrvKmGlsqN9E?=
 =?iso-8859-1?Q?1wsA9qw1oKaRr5ahKO+C/0I+gRmrPGDaQQzf8CZHpFNxB1pBg11e/BFy7P?=
 =?iso-8859-1?Q?3DuS2j55cZZHAX1xgKSCkWrp1d9KuSlp4Sk3I8DAc6h9iLjuRvj+Wakf0t?=
 =?iso-8859-1?Q?FVdiMc1Vh7qBVuB2jygaFCKrx0VoEs1Fys37g6fm7v64IHdDO/6mZinFcW?=
 =?iso-8859-1?Q?YeMdic5urhDEEuE47U5O1ZF7L02IgPR7Ie33qez9AJKFs3rMqxGNBPD1oZ?=
 =?iso-8859-1?Q?Vhm8XSVy/eeNFahY3DWiMZSfbFyUfZr0alE6RdIvsUSoV/bH5LhFrRmjGZ?=
 =?iso-8859-1?Q?CQKs1jd7ScS2lWDcDGrQLuA0SutAS4in0YCeTxiq7TQEm4V0QmSePOa5Oj?=
 =?iso-8859-1?Q?VddSK4+jKGM6TJtCHxCoYtl60bRxeHIReMCuLIV1hP0ttW4ztAhE9aruyj?=
 =?iso-8859-1?Q?cQ0j5fvpF7cHhPAWzVM6FuTWzww3FXxhrTWIU2CyaL2qokWU6tjpFAClrU?=
 =?iso-8859-1?Q?4OVD9kFVKcTPNQ+g9vGnfSZ7mQlFalaBkvKzoEhvvBqTehzDL+GN6o8KjL?=
 =?iso-8859-1?Q?EEzc1421V1DA+ML+cvtcVV0b1c8xcvfynLpNr/pCdyWKwU1VMO/slrJA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0774e36-9ba9-44b9-a712-08db3a9bd156
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 14:48:31.3361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5OYw+lTRa9FUfB8fr01v83bdOG+tYuT/EsBT9VC0GHbuw3XCfdv3LzGGwqGREk8GszjPq9ZN9URrg4XCZjoVpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5656
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 1/2] drm/i915: Initialize dkl_phy
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

On Mon, Apr 10, 2023 at 11:14:37AM -0700, José Roberto de Souza wrote:
> Start to move the initialization of some lock from
> i915_driver_early_probe().
> No dkl function is called prior to intel_setup_outputs(), so this is
> a good place to initialize it.
> 
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
> Cc: intel-xe@lists.freedesktop.org
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

folks, any thoughts on this being initialized on intel_setup_outputs
rather than earlier during early probe?

It looks safe for now based on Jose's analyses and tests and we
can always move that earlier if needed...

So, I'm adding my rv-b here already, but will give a time to get
a second thought on this before we merge:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_dkl_phy.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_dkl_phy.h | 2 ++
>  drivers/gpu/drm/i915/i915_driver.c           | 1 -
>  4 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 010ee793e1ffd..d384b9bbc28b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -73,6 +73,7 @@
>  #include "intel_display_debugfs.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
> +#include "intel_dkl_phy.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> @@ -7729,6 +7730,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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
> index 93fdc40d724fa..cc31ad1bfa93a 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -222,7 +222,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
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
