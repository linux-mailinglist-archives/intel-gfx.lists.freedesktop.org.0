Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1706E7369
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 08:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 556A410E0DD;
	Wed, 19 Apr 2023 06:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA1B10E099;
 Wed, 19 Apr 2023 06:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681886510; x=1713422510;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GoCcdO+fmcJunP6k1Two2bBtxDb9FiikX2sQO1RIiGQ=;
 b=bpYjUX247xOxSyPV1KtEAQrheCPjklP9WfIsdmCm+giAyOWFE92xNCr9
 E6GqM6ua6NaqN2JedIIJ8/0m2NTr7/4DvlDSsyq+YADFDQEpnBzCjIJnO
 MRrUt44r8RbXeHB98M45vNIKPqaDYqBk/Ofg3u4Yo6ptjeEUBozKzcYJ2
 iO0U1jr56ozF+ssodR7BE9TBkmOIlBQfI3Elh0wcCwKcqfDDJqm//DISg
 KhxIOUI/w56vf5B3+Sbo4sJ7W5DL2DE0Mc/5LZQoGvqdv9aRv5xDb+PM1
 IKVztsEmM9jMnynXjpaiK3H1cIUNru85Y1P8FcP5NBT7VaYd7kq2cw1/t Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334173870"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="334173870"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 23:41:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="684876610"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="684876610"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 18 Apr 2023 23:41:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 23:41:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 23:41:49 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 23:41:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHOJv+zYkaHeTZ1H89TolwzKmpmsqndL09aeKeI4+Ow+dpcwTY0BMckYSjrs2qd8XnPPSGkL6awSCkYqEFpBhKvbOICC//5h/9wmI2cH+eakf7964VryZmKQRNoQktTx/lAinXQUGFHIseT9QTTQc7knKMFN3SMSDaTATHJsVLBIm6OokAnsYjII2C7eH5N/qxiA2Z7xiQun2h0+bpwGaRi8Ln66Nq5yu9Dgpb7otfKweDWMJm0X0s8ndWfY72XEZ8dZBpm3u8tM/nyjfoLEw/hzacKb1hB5Bz8ALbhrT+1o33dDb4UMeGgjR9F/U8TkU+A8lRzTTa+ygA9Y4PFSfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LAKeXyXXTWnyuCqB9WdeFnnh1dhY5LBvBW2UM2HnDF0=;
 b=Kcurw07XLT9/9EGyUTUi6mZkaNitppeHGl6eogxBDD5o4b1yH2lcgtQVFT8CNBqdRmUmbTdH62jU8ZnJMh3GJsCKAOwJbmIXLqaGiT9RxJ44n43F8ZHT3A0Fl87orHgKnOwg6gLaAO1AuFO2Di24i1RqBy0yvMWDQ4/OrddGibY6Ag8/iarc2ddFERqBVNmBe77+eHMw/WRDrl4HvJ1jHhLd+mtD+OJ14CZn6WdDkvtUlpHd4FZ4QNBGpZ+qNDlZ3kMzbjnLSP4/EdHW0awDLwTPm+iFUYmpNqEUu6WueXVMm9psqdBOS5OmR4H1eH3sBJYkWPISaipavlPg6ORbWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB8374.namprd11.prod.outlook.com (2603:10b6:806:385::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 06:41:47 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4%3]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 06:41:47 +0000
Date: Tue, 18 Apr 2023 23:41:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <tfvlalzyff5hv5wxid4q5garmiburkapqo6xv3zdrdxicwt2un@64brrcp2ckgb>
References: <20230418164337.50303-1-jose.souza@intel.com>
 <uiz4v7ipqtw3mtgvccmi6vgiqojptaahydvh66aaqwq2tvy7sn@ne5s2vatg2zp>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <uiz4v7ipqtw3mtgvccmi6vgiqojptaahydvh66aaqwq2tvy7sn@ne5s2vatg2zp>
X-ClientProxiedBy: SJ0PR03CA0333.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::8) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB8374:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f6c88b9-75d8-4e04-4769-08db40a12577
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AgUtTQMyGomr9oi8oWvHQgbm3TO4LggJZwu9itoqYVRBY6CUotE69okZRVPdEueocK7vHVlJrEm0PketX87RtJeU8GCnnbQzNpqyD47lYnL2NBp8ZhB7iGkDiAMK4XOrwTINSYmybwXvcFz9ikJxhqh32d0Frwz7Sg/IFMrwfzjTt3qDbD5EoJroifSpqk/N7nBRZv2b+Z2JeY4faep+isGQ6BN4FaoW0zYyNVKJSnoXuleTqxuiyY4s5RrfEmpH+I1dUw0QSaRSO+o4IkZ35zfxQov/K6m1+trDZJJvp2jujIoMm4VAm9qVXtyGsJRPfyTM7hpVpr83JcZ2nWCiNftyjwY9OaCVrkpi5rHnPeUAWhjcojmNYxXTjVQxpWncae5EZeTsXtlY3YPPEXLVk3jluxE7AiEdND9YZWtnzyXZUo1neCzPI2IY/0FoXj3OZGBzjsTPlsrjhmz4xbwiybnWQgje45En2MQiIYKhsx0IeMYqQDWMPpqNsHmB+i61PPFBdBlZ4pYaGa6B6dLRVX1Bca9qWsFT5MFPWpBss3XO/+7Rf/NOuj8DZHm+BpQg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(136003)(39860400002)(346002)(376002)(396003)(451199021)(6506007)(6512007)(26005)(9686003)(186003)(41300700001)(316002)(6486002)(478600001)(6666004)(33716001)(54906003)(6636002)(66556008)(66946007)(86362001)(66476007)(4326008)(82960400001)(5660300002)(38100700002)(6862004)(8936002)(8676002)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MZuRKxGwNGohDEQfdvp+uVEmpoUMLezC87DOk6sbB3NezIELFl6zLVJWV+rF?=
 =?us-ascii?Q?BvtmgHudDsAWYNMPZNSzZctFNXt8A7S/b+1tnt8GzxiS+JFykKMEfZLevLIx?=
 =?us-ascii?Q?/5P3XHingVlP81WCOMiNImqTFCBQh/+oVgp4Cc/jJaalMZKQqrZdsaXg74ja?=
 =?us-ascii?Q?e2EiHkOaL8u82mgAIxOrHpTqyIOncKTPIRFg07E4eTUNIEr3oRiP9s04uRTn?=
 =?us-ascii?Q?tTWQLgOvMaFl0sL4DrrBSVLbFuxbo8KHSXptxaRog0WLTB4KoqwVMVTIq8Xo?=
 =?us-ascii?Q?Ve/HpzXLm3uBgokaO0jgwV+d7lwOJiDX1XtszYvwgD6eUDt6yYBcEK//Di9o?=
 =?us-ascii?Q?MeN/nM+nH0i1Jo1weuiwA6bQpBbAit2aQm+BAvcnzf81TadYfYMNu350nPM9?=
 =?us-ascii?Q?6s608IAErKad7fOW4ATzDfgp0sd9WKyKJHFXR574ed+/7z3ZGO/BSq6Gu+hJ?=
 =?us-ascii?Q?FSkT306ygi8BpTi6xOePkJrqG/tGUzped+/cfEMQbeXOoG+NU6hBs3GOUJT1?=
 =?us-ascii?Q?Wmz6LI1nBOIjSc+LddWCE8VoQhb9WiX31r1bnY8GwLl0LcW1Tf/ExijJQgU5?=
 =?us-ascii?Q?ksugsHqt7OrKUcnOv/D0xmwaihBPydl52tqG9xmlJcWNANFWuT2hOVK+coMQ?=
 =?us-ascii?Q?S5Zc9md7ikkjfzzFJq6XYorHTD8etRD0jr1V7Pjo0QM73kg0bDKozpWvxFoM?=
 =?us-ascii?Q?W+DeAqBl3/EwOemErr4stw1Htv6Syzl9TF5OZFbHOJoAcz0wXCsMRpXAyKG1?=
 =?us-ascii?Q?yVu5ZFNTmgHVR0E7T9h1wZUAGWeVVYG01majG4s9rQeEVkfTfa0iN86eWpkv?=
 =?us-ascii?Q?8yYlDA042B2L7sREcScxNcx/xx2gDwSJD2E3gtRrHpdyjDkTs85JWIKyZQoK?=
 =?us-ascii?Q?c063AWFKbuA6IuIAvNidzjcHN7HDjPWXf9vGpLm5F3NOlbxkELhtopAigiTC?=
 =?us-ascii?Q?P1GHpDoksRzv+Q9yazjzNae3cJKNM376Nhgf8cKdxfktFBZs/D/jFZ/7LLpv?=
 =?us-ascii?Q?8Ur1YqNzTLzYvLDY2DnDy6yC4oX6++y9gHZiyyYdv+dTJlT28+cVbs22/cNy?=
 =?us-ascii?Q?4Fvn7akPZ9Ngfsl8m50vSnR0LV7bY2iKjG3RCCOMDYsI0l0iXf8sZ/YjjR0R?=
 =?us-ascii?Q?s3K0ldgRpZxfzqMZMqvAyeCBwB4qqQYxlZJOOvxUKkDo56jAHrONe9JTO+Dd?=
 =?us-ascii?Q?3C+V7D3PQFNRtDb9Z7O7RGFZL0cF+HoatwUMRkGjFke+n4qI/NeGlopCSf6C?=
 =?us-ascii?Q?5Z/p7uTcwrFiCo549Rn9mLfM+JaatQ/6L2CRlI9lGYJECyRHG4oQP822ce00?=
 =?us-ascii?Q?UjZgcyUhEZT3r3HN2lLY9EfjD978EsXTc4Occ8XvFKbOg5jCn5v0Af5l5fL1?=
 =?us-ascii?Q?PThx3+oeUjzqJnhp02M9dJsCHDQrstxg4SZUI51ygULdwiwOdHD/vpxz/gPE?=
 =?us-ascii?Q?ZChB2xwNqfzQQQaAQO4Rqga40KlonZ4vBEoBetHVO4BDShpQaUyyzMlvXose?=
 =?us-ascii?Q?gJ68jLjVjo520y0UNkYJrRhblsOrGWSV7Xefq8D4c9DmmCGoAPjHXQKdjAiM?=
 =?us-ascii?Q?U2A0zKAc7gkRTBxEfZt61syol351pjm5TXW4v2cZlcqkdfj+Bl0QSKJF8joc?=
 =?us-ascii?Q?cA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f6c88b9-75d8-4e04-4769-08db40a12577
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 06:41:46.7485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MlDHmjEI9U/bX7d+uEgrPdZIiw+ikkox1IvlG3t0Nfpf+BLjdLt40Hkb7iJ63CNrdoZ5uqH0E4pZH4TrDtsDs9MYc0MAK+wr5ZQ2W2OpkOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8374
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

On Tue, Apr 18, 2023 at 11:30:18PM -0700, Lucas De Marchi wrote:
>On Tue, Apr 18, 2023 at 09:43:37AM -0700, Jose Souza wrote:
>>Start to move the initialization of display locks from
>>i915_driver_early_probe(), this way it is also executed when running
>>Xe kmd.
>>
>>This will fix a warning in Xe kmd:
>>
>>[  201.894839] xe 0000:00:02.0: [drm] [ENCODER:235:DDI A/PHY A] failed to retrieve link info, disabling eDP
>>[  202.136336] xe 0000:00:02.0: [drm] *ERROR* Failed to write source OUI
>>[  202.175346] INFO: trying to register non-static key.
>>[  202.175347] irq event stamp: 754060
>>[  202.175359] hardirqs last  enabled at (754059): [<ffffffff8122cf79>] tick_nohz_idle_enter+0x59/0x80
>>[  202.180294] The code is fine but needs lockdep annotation, or maybe
>>[  202.183774] hardirqs last disabled at (754060): [<ffffffff811a5539>] do_idle+0x99/0x230
>>[  202.192734] you didn't initialize this object before use?
>>[  202.198951] softirqs last  enabled at (753948): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
>>[  202.206882] turning off the locking correctness validator.
>>[  202.212236] softirqs last disabled at (753943): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
>>[  202.220592] CPU: 2 PID: 1415 Comm: modprobe Tainted: G        W          6.3.0-rc4+zeh-xe+ #909
>>[  202.243002] Hardware name: Intel Corporation Raptor Lake Client Platform/RaptorLake-P LP5 RVP, BIOS RPLPFWI1.R00.3361.A14.2211151548 11/15/2022
>>[  202.255737] Call Trace:
>>[  202.258179]  <TASK>
>>[  202.260275]  dump_stack_lvl+0x58/0xc0
>>[  202.263922]  register_lock_class+0x756/0x7d0
>>[  202.268165]  ? find_held_lock+0x2b/0x80
>>[  202.271975]  __lock_acquire+0x72/0x28b0
>>[  202.275786]  ? debug_object_free+0xb4/0x160
>>[  202.279946]  lock_acquire+0xd1/0x2d0
>>[  202.283503]  ? intel_dkl_phy_read+0x18/0x60 [xe]
>>[  202.288181]  _raw_spin_lock+0x2a/0x40
>>[  202.291825]  ? intel_dkl_phy_read+0x18/0x60 [xe]
>>[  202.296475]  intel_dkl_phy_read+0x18/0x60 [xe]
>>[  202.300949]  icl_aux_power_well_enable+0x2bd/0x400 [xe]
>>[  202.306202]  ? intel_display_power_grab_async_put_ref+0x75/0x120 [xe]
>>[  202.312649]  intel_power_well_enable+0x1c/0x70 [xe]
>>[  202.317543]  __intel_display_power_get_domain.part.0+0x4d/0x70 [xe]
>>[  202.323812]  intel_display_power_get+0x43/0x70 [xe]
>>[  202.328708]  intel_tc_port_init+0x199/0x2a0 [xe]
>>[  202.333363]  intel_ddi_init+0x6ad/0xb00 [xe]
>>[  202.337678]  intel_modeset_init_nogem+0x536/0x6d0 [xe]
>>[  202.342838]  xe_display_init_noaccel+0x19/0x40 [xe]
>>[  202.347743]  xe_device_probe+0x1f5/0x2a0 [xe]
>>[  202.352127]  xe_pci_probe+0x28c/0x480 [xe]
>>[  202.356260]  pci_device_probe+0x9d/0x150
>>[  202.360164]  really_probe+0x19a/0x400
>>[  202.363809]  ? __pfx___driver_attach+0x10/0x10
>>[  202.368226]  __driver_probe_device+0x73/0x170
>>[  202.372558]  driver_probe_device+0x1a/0x90
>>[  202.376632]  __driver_attach+0xcd/0x1c0
>>[  202.380442]  bus_for_each_dev+0x72/0xc0
>>[  202.384253]  bus_add_driver+0x110/0x210
>>[  202.388063]  driver_register+0x50/0x100
>>[  202.391873]  ? __pfx_init_module+0x10/0x10 [xe]
>>[  202.396431]  do_one_initcall+0x55/0x260
>>[  202.400245]  ? rcu_is_watching+0xd/0x40
>>[  202.404058]  ? kmalloc_trace+0xa0/0xb0
>>[  202.407786]  do_init_module+0x45/0x1e0
>>[  202.411512]  __do_sys_finit_module+0xac/0x120
>>[  202.415838]  do_syscall_64+0x37/0x90
>>[  202.419397]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
>>[  202.424409] RIP: 0033:0x7fd11291ea3d
>>[  202.427967] Code: 5b 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c3 a3 0f 00 f7 d8 64 89 01 48
>>[  202.446530] RSP: 002b:00007ffffde11368 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
>>[  202.454031] RAX: ffffffffffffffda RBX: 00005616a617f210 RCX: 00007fd11291ea3d
>>[  202.461106] RDX: 0000000000000000 RSI: 00005616a617fe60 RDI: 000000000000000e
>>[  202.468182] RBP: 0000000000040000 R08: 0000000000000000 R09: 0000000000000002
>>[  202.475250] R10: 000000000000000e R11: 0000000000000246 R12: 00005616a617fe60
>>[  202.482319] R13: 00005616a617f340 R14: 0000000000000000 R15: 00005616a6180650
>>[  202.489396]  </TASK>
>>
>>v2:
>>- added intel_display_locks_init()
>>
>>v3:
>>- rebased
>>
>>v4:
>>- drop intel_display_locks_init()
>
>why?

ah... ok, now we have intel_display_driver_early_probe(). I thought you
were dropping the call from i915_driver.c 

Remaining question for display: do we want to spread the lock
initialization to each compilation unit?  Or should we just keep a

	static locks_init() { <all the locks here> }

the lock init seems a very cheap init that maybe doesn't deserve to be
spread. Then this patch could just move all the mutexes initialization
that were left behind.

>
>Lucas De Marchi
