Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BED6E7403
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 09:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F6A10E53A;
	Wed, 19 Apr 2023 07:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C44E110E049;
 Wed, 19 Apr 2023 07:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681889381; x=1713425381;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=m+nFAw3SidJTXnYieY7UXmDMVDClMNojFRT40L8q81E=;
 b=PdOVJmMPOiPsV1WBNO50Jn+W4h/qXg2+t88/UBonB+Y/PjPwnmtXCrOM
 yWSblcGp8MKyS/CSVBUAazwCNO735arlKJ4GvRGrFrKFqq4aQsC/Mbdxl
 dfSmxSDIvrxRLwrHNn+HBctBMt4fmFgJW9pNm/wSzsBLEHCWpSauXbb6/
 BcDYnfTMU2p2ncst4bFQAl/gd1JQX6IrIpX8GICnK9o7kWzyBEbZWJmBa
 TmnVTVxmLT2ilIh1Sy5Zw6WnB7ahOS9wV0uytIY0kziNSXAouiFUvCqik
 wxmVGY7lRT+LXQk4sSC3rimYr0CdsRLbVWM5tDrujf4Ng5RrswXNwMw+1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="408285571"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="408285571"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 00:29:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="641657158"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="641657158"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 19 Apr 2023 00:29:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 00:29:40 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 00:29:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 00:29:39 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 00:29:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UBg4ltPRdp3it2VhljoRC7he+8PnZbLK30gPiKUy894+BUcZOr9860IbMg73Inpn3GDTTYP4rzfPz1gTDEgSvD9R8yTlpdEM5f84OTQ09IAB8w3c46SsoQHfRfg0rXiursoTBb8VYLk8ItiOOv/p75/XBuWYPgddEjgrY348KVnC6+nEi2pchcxDIHWQE0gmX5PjXGml5eugJDn+UvXSUeS8tPbUrtcOGb3n2Lz7HNTj9T+XpoBRVOr5L1ChO2jLvRPt3/4ytzySZYCz9AP9WDRD0GiSQv/t8VULuG8npKEr69zNmAIxLGmuZyspmLDozZ0JLRlUZXAlJS8EecNkwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MsDMuqrU0mDHs+NpO/ofe0KpHvFG/VzkMwL/8RaIj6Q=;
 b=etGpcxey9BBna05ERjL75ly2vVvRskWBUjiHnHfU753b3S+9S8q2OGshQzOxfkCswEs02AQj0jKYH4e97HzE4zA7/i/t01i2bOTfMKKF46kjlGyuZEWSEfUwM2BlR5YSk2Tg2lqgbXgmBdeeDTBdsCpxuuxgmBYBmipjYgLNHEOmBpqlrtpO/0tDGv1iG+GL7YhD/xroUMvOTIj/Rd6LvYHUdKhHQgZWGfcRCXnIjO15GVZ+FJxuO8gAonG+llTAzxznzl+akVgsZ4YjKAw2i0TpBo8ViJvQkjvJ63XMkXmEAcRNeJaSLLFAfjGaG0PlI1Y/NqYL/aO/bfFmlsDMmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB6809.namprd11.prod.outlook.com (2603:10b6:303:1e9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Wed, 19 Apr
 2023 07:29:37 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4%3]) with mapi id 15.20.6319.022; Wed, 19 Apr 2023
 07:29:37 +0000
Date: Wed, 19 Apr 2023 00:29:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <iyxrhj6q37af2fhgk6bnj756rhofpek3n77ynmwkpd4d5eckdg@cp5jmu37fsn3>
References: <20230418164337.50303-1-jose.souza@intel.com>
 <uiz4v7ipqtw3mtgvccmi6vgiqojptaahydvh66aaqwq2tvy7sn@ne5s2vatg2zp>
 <tfvlalzyff5hv5wxid4q5garmiburkapqo6xv3zdrdxicwt2un@64brrcp2ckgb>
 <878reo1gvt.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <878reo1gvt.fsf@intel.com>
X-ClientProxiedBy: SJ0PR03CA0164.namprd03.prod.outlook.com
 (2603:10b6:a03:338::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB6809:EE_
X-MS-Office365-Filtering-Correlation-Id: d2de2e59-86c8-4fc5-5a21-08db40a7d463
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hdQSRwIQm6Gw7Lm0aVdSPK0fOr7ZgF73rMapsqdzd0QYEJ2my9LzlTr/bSqeIT1T384D4QHxDFtC3t+N/Ku07YmdUFLyGEzOO+HUsQWUIqJ5ZeAUkT+HiTxk+u/jm1WOFFHmvzk6cdeQrEBYeFgMvx0Dpqa0TDLTUoCWOkfsr8R3QngeACkJ47R/iumr2KLigsx1J5/eLJxQTcH7ofRx5BrzmGsu3ZX3k+6GDsTgMl0rbdr8X6b9Qir6KQkidNIOcEz9+vZCXd7XnA/nDKw7KTq1DCCMilo0VYcTkdDBrcimZ2H4BinWNTQ8ZAsIvppvRyD9w30ekwDptOtby6QjhAe0v9dX3gIpHndSUM5B6UsfW/yinm7YTUT7FThM3UJp9id6mnvkBWvSy6fItcK40N9O23cY7FvpIuAiHUmEp3jEsb5TOGpc4sh2M0KwrFX7g7y0YlBXG1mvxC676mo2T92hnHf9oTmP/froKj/PybfsQoPQwsCvViF/JjZEUqJ27vCzvgpObxcpBG6pNBHnA8VpbqAaOT9qs7GVSgNuyrzwOckRHnfYvfXMRYyc3pRS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(346002)(366004)(396003)(136003)(39860400002)(451199021)(6486002)(33716001)(6666004)(54906003)(6636002)(478600001)(107886003)(26005)(186003)(9686003)(6512007)(6506007)(5660300002)(2906002)(6862004)(8676002)(450100002)(66946007)(66556008)(66476007)(41300700001)(8936002)(4326008)(316002)(86362001)(83380400001)(82960400001)(38100700002)(66899021);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vhA0WDYAnXOdCWZhjntFas8a6g87q0R5VXxQ6aRYFf7G6kdlVAdpUOh9tdnt?=
 =?us-ascii?Q?wp/Bdi9gXGWV8g3BjlAriGVFTRp6sCPlCKU1k8l+CJp1maLeP8HM/1d85pd8?=
 =?us-ascii?Q?SJiRJU8QYpZoEr3FmZtflbE7XvGYxNVWRTaw/Q0232bEJ65uDFaqOCoGHDAV?=
 =?us-ascii?Q?j5xrWlDDRb72raZrsxrlG2tGFJ069GglB9XWx+ZVGuGgJPaAe+WzMj4ZENKe?=
 =?us-ascii?Q?87u7bDnmnH3gmuIU0IHyJursQXXicq4yYPCBDSjHKqIPw1CMRhLqJ1pw/lY8?=
 =?us-ascii?Q?uFEAF4aj2RrpvjN92S9Pzz/DenhTXwPj62EFs7jWS6bTUQAcR6dok6SwxzOd?=
 =?us-ascii?Q?49KXuDOulelSl9ArORKJjbjIgbhzcqiDZHyrXhyIPUvwKQxX6mHuL5+bYSxo?=
 =?us-ascii?Q?vbvGkfMRXOHj6MymgNw+KxB6AtuOuLyEf/nryK8aLLeYDaY+b1jKO/vHGSH9?=
 =?us-ascii?Q?NYQfg1B/Uq3hIwdRm1MHJakVSAGnp7/ml2XIE3DTruj5XRTX38to85FsaXxQ?=
 =?us-ascii?Q?OBUHF6mfG0hwwXE+z/y4BreZEUauB4THqqlA+78TK/9D+/d4KFKShnOVHZM6?=
 =?us-ascii?Q?6QShfHtqnVicl2SCWAT9vOIU+b+YTwY8jI0vrNXI+gYSyFGAJTqWc39BRy2z?=
 =?us-ascii?Q?m7UtzASkv63weoWd241j/teFEHvw/0B3EWf90Q5f/Ca/8NA2t2oTxtH+NMk4?=
 =?us-ascii?Q?fy3kcpJ6R85IDsxcSq6z3xTnKp+odAbpV76p06H9FVClxDxAlENGEhwKDIt8?=
 =?us-ascii?Q?dZM1WLo4xVSIIm/WFTHY5sM52Zc9qoa9Ew9f/Y9LfhwD5hKiMoJrGnx8GbUw?=
 =?us-ascii?Q?+i9lL3ww1SBTZdiLJ/G9qAp+TkhZFA5uG5YuNGDDG2Jx/HC5fZ6L/guPIN9g?=
 =?us-ascii?Q?eN/yyIfXbOTZVQjtOdqU1tBaIoVLMevX5f+FXXTcoppNr9G856596cMay9pL?=
 =?us-ascii?Q?GW+bXQKKELeu4L8wXWOjQW7lEdH9JIf2dkoNNbSLu1snLDz3LtW09+UB6aXG?=
 =?us-ascii?Q?oGcikmISiOWYby2NX6Yv8HxDMjGQN10oDygB1JOffBUDUlg2RwSRAkPSln4X?=
 =?us-ascii?Q?pm6bYbvpK0G9gk6t5Ka2w8Lz9P7oaMG0BSLAJxPkUaWoefmyZBIDack6igXn?=
 =?us-ascii?Q?pkzibLrozmDZuezng4dS3FrVXzusKhteGrgvWYwZ4QRSXGqv4FpyYSFnFlUf?=
 =?us-ascii?Q?yW3efVibB9J2LKIrkImVMBNhwldS16nigcBZlVB7+behJt16ugQa2OMCeSC0?=
 =?us-ascii?Q?ts9yYKX7Jz04iLgqGTW4zkDZ2HGG10UkyuN4oQ/CJVqr+6LdV2JxMI6YwroI?=
 =?us-ascii?Q?A/X/11i7oWbZ3gChwZB5XL6W51nI5jt/lxVQ8mnyHR2Sz7lKF7wb9dfBn5Pd?=
 =?us-ascii?Q?/wy/s3R93bx/Z4zWPq6kKI95eX1Im5y+2IsODHJ57AHzfCCeO6RzG9qsCh8I?=
 =?us-ascii?Q?ZjMm0z+kjdlfKe5IEKdNiTYEQh437dmLq1cDZufzZtUMVPBJShvyO23iEtb/?=
 =?us-ascii?Q?IbQfDGUro+Bva7VUMPvThZiNhQmqBwpQf1Ou/A1/7/cahuavY8wonl32micB?=
 =?us-ascii?Q?kW3vs5gjRO5q9XM38Yu5XnbpmRfDDLSVixpHVNnXkadTcdfN8wY7RoFSErmM?=
 =?us-ascii?Q?9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2de2e59-86c8-4fc5-5a21-08db40a7d463
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 07:29:37.2210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FfbWzsvkAAwU3NORvNf7M5yhHW9r8kbpb9dCehWcfWqyOR6OWkRqAXx3PXCWQOnsVxf3cQtCoY5TNu8qGrM22mXjerYdIPOb0G+jXJbEZwA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6809
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 19, 2023 at 10:16:22AM +0300, Jani Nikula wrote:
>On Tue, 18 Apr 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Tue, Apr 18, 2023 at 11:30:18PM -0700, Lucas De Marchi wrote:
>>>On Tue, Apr 18, 2023 at 09:43:37AM -0700, Jose Souza wrote:
>>>>Start to move the initialization of display locks from
>>>>i915_driver_early_probe(), this way it is also executed when running
>>>>Xe kmd.
>>>>
>>>>This will fix a warning in Xe kmd:
>>>>
>>>>[  201.894839] xe 0000:00:02.0: [drm] [ENCODER:235:DDI A/PHY A] failed to retrieve link info, disabling eDP
>>>>[  202.136336] xe 0000:00:02.0: [drm] *ERROR* Failed to write source OUI
>>>>[  202.175346] INFO: trying to register non-static key.
>>>>[  202.175347] irq event stamp: 754060
>>>>[  202.175359] hardirqs last  enabled at (754059): [<ffffffff8122cf79>] tick_nohz_idle_enter+0x59/0x80
>>>>[  202.180294] The code is fine but needs lockdep annotation, or maybe
>>>>[  202.183774] hardirqs last disabled at (754060): [<ffffffff811a5539>] do_idle+0x99/0x230
>>>>[  202.192734] you didn't initialize this object before use?
>>>>[  202.198951] softirqs last  enabled at (753948): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
>>>>[  202.206882] turning off the locking correctness validator.
>>>>[  202.212236] softirqs last disabled at (753943): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
>>>>[  202.220592] CPU: 2 PID: 1415 Comm: modprobe Tainted: G        W          6.3.0-rc4+zeh-xe+ #909
>>>>[  202.243002] Hardware name: Intel Corporation Raptor Lake Client Platform/RaptorLake-P LP5 RVP, BIOS RPLPFWI1.R00.3361.A14.2211151548 11/15/2022
>>>>[  202.255737] Call Trace:
>>>>[  202.258179]  <TASK>
>>>>[  202.260275]  dump_stack_lvl+0x58/0xc0
>>>>[  202.263922]  register_lock_class+0x756/0x7d0
>>>>[  202.268165]  ? find_held_lock+0x2b/0x80
>>>>[  202.271975]  __lock_acquire+0x72/0x28b0
>>>>[  202.275786]  ? debug_object_free+0xb4/0x160
>>>>[  202.279946]  lock_acquire+0xd1/0x2d0
>>>>[  202.283503]  ? intel_dkl_phy_read+0x18/0x60 [xe]
>>>>[  202.288181]  _raw_spin_lock+0x2a/0x40
>>>>[  202.291825]  ? intel_dkl_phy_read+0x18/0x60 [xe]
>>>>[  202.296475]  intel_dkl_phy_read+0x18/0x60 [xe]
>>>>[  202.300949]  icl_aux_power_well_enable+0x2bd/0x400 [xe]
>>>>[  202.306202]  ? intel_display_power_grab_async_put_ref+0x75/0x120 [xe]
>>>>[  202.312649]  intel_power_well_enable+0x1c/0x70 [xe]
>>>>[  202.317543]  __intel_display_power_get_domain.part.0+0x4d/0x70 [xe]
>>>>[  202.323812]  intel_display_power_get+0x43/0x70 [xe]
>>>>[  202.328708]  intel_tc_port_init+0x199/0x2a0 [xe]
>>>>[  202.333363]  intel_ddi_init+0x6ad/0xb00 [xe]
>>>>[  202.337678]  intel_modeset_init_nogem+0x536/0x6d0 [xe]
>>>>[  202.342838]  xe_display_init_noaccel+0x19/0x40 [xe]
>>>>[  202.347743]  xe_device_probe+0x1f5/0x2a0 [xe]
>>>>[  202.352127]  xe_pci_probe+0x28c/0x480 [xe]
>>>>[  202.356260]  pci_device_probe+0x9d/0x150
>>>>[  202.360164]  really_probe+0x19a/0x400
>>>>[  202.363809]  ? __pfx___driver_attach+0x10/0x10
>>>>[  202.368226]  __driver_probe_device+0x73/0x170
>>>>[  202.372558]  driver_probe_device+0x1a/0x90
>>>>[  202.376632]  __driver_attach+0xcd/0x1c0
>>>>[  202.380442]  bus_for_each_dev+0x72/0xc0
>>>>[  202.384253]  bus_add_driver+0x110/0x210
>>>>[  202.388063]  driver_register+0x50/0x100
>>>>[  202.391873]  ? __pfx_init_module+0x10/0x10 [xe]
>>>>[  202.396431]  do_one_initcall+0x55/0x260
>>>>[  202.400245]  ? rcu_is_watching+0xd/0x40
>>>>[  202.404058]  ? kmalloc_trace+0xa0/0xb0
>>>>[  202.407786]  do_init_module+0x45/0x1e0
>>>>[  202.411512]  __do_sys_finit_module+0xac/0x120
>>>>[  202.415838]  do_syscall_64+0x37/0x90
>>>>[  202.419397]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
>>>>[  202.424409] RIP: 0033:0x7fd11291ea3d
>>>>[  202.427967] Code: 5b 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c3 a3 0f 00 f7 d8 64 89 01 48
>>>>[  202.446530] RSP: 002b:00007ffffde11368 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
>>>>[  202.454031] RAX: ffffffffffffffda RBX: 00005616a617f210 RCX: 00007fd11291ea3d
>>>>[  202.461106] RDX: 0000000000000000 RSI: 00005616a617fe60 RDI: 000000000000000e
>>>>[  202.468182] RBP: 0000000000040000 R08: 0000000000000000 R09: 0000000000000002
>>>>[  202.475250] R10: 000000000000000e R11: 0000000000000246 R12: 00005616a617fe60
>>>>[  202.482319] R13: 00005616a617f340 R14: 0000000000000000 R15: 00005616a6180650
>>>>[  202.489396]  </TASK>
>>>>
>>>>v2:
>>>>- added intel_display_locks_init()
>>>>
>>>>v3:
>>>>- rebased
>>>>
>>>>v4:
>>>>- drop intel_display_locks_init()
>>>
>>>why?
>>
>> ah... ok, now we have intel_display_driver_early_probe(). I thought you
>> were dropping the call from i915_driver.c
>>
>> Remaining question for display: do we want to spread the lock
>> initialization to each compilation unit?  Or should we just keep a
>>
>> 	static locks_init() { <all the locks here> }
>>
>> the lock init seems a very cheap init that maybe doesn't deserve to be
>> spread. Then this patch could just move all the mutexes initialization
>> that were left behind.
>
>I still think if only one file uses something, then that file should
>include the init for it too, and nobody else should touch it. Including
>locks. Ideally, they would be stowed away in allocated opaque structs
>that can't even be accessed (or initialized) by anyone else.

so... this version of the patch?  We will need to spread the mutexes
around then.

Lucas De Marchi

>
>BR,
>Jani.
>
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
