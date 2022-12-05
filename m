Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F78642F88
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 18:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D7B10E112;
	Mon,  5 Dec 2022 17:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F9BA10E106;
 Mon,  5 Dec 2022 17:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670263153; x=1701799153;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kZBi1NQux3hS/GpuuTqanfW38l7dZbSwm/5zQ9fQXhI=;
 b=C843mOpiwj28IhCBCwabKQMac8f3XuI5STxxAIu774FX4Sdbyj9My/+C
 4E1vMIRIe58VdMeqzAPHZS2NkAct6JGpGguEPp97+bfMOlDs1PGYwEdyQ
 G+2Bx5OxC/rQRubNYPsRAOi/+LdmN/FD5fwGnMHrWslbC0/zqY4+bE5gZ
 Z+BBcalrdnZUWbXF5BKngpjT1M+bDlcd2FENDSaZV5i/J5vwRywp61dyq
 eN5PwLqvYaDAsSCXA8kUoJx78xFUSkLTJ0EMn6Jbk7OUdAouQC/V91B87
 nbhEoMh2M+wStNBzMEw3p98ErbhdygoybpcxfFWKBiocw/Q5RiyW4lHYY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="402693244"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="402693244"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 09:59:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="623592832"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="623592832"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 05 Dec 2022 09:59:11 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 09:59:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 09:59:10 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 09:59:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 09:59:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A2/JQWweoH1V+FKUyiQXRVsCtosWyv+RJkTZC6iyDZd7p42KhjSQ741YdDSVXNM32/gdRNNA5zKOjbZRN1WZKHU0tYJgBrEkqsPmXJPIbkRYBCqvTBILIcic2+l9T9FfuDzzCI6AQ7XjfHjap/nnJhYsoHaYoIPz4MUJw0cEoXARyg/5yKkMEwfftCSkSmg5t/CDfPYOAA2tWx1sjIhoVG7lYEy+NuV3OA8BYiKWE8xGKD+IgOK2j0JVCosV+JqoUOnBVMXFpJZHbcD3tYGe8Ngql0A0GrS2oioyb3IYmjKE/fMNrf/Gwq1ERIagWrB82bMcvbqBrGjP8erQiZ/UUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XWFXwrr7b3RhKCcqEBFIvyghQ2wAJ4oVonv4uNY01K0=;
 b=huT+QtTY3/tVLf/bRkOqleys+QYm1qP3v5A11hf0K2TFp+jHY/iov3+xRh0nn7ZvBzzQmSviFKa7sFgpuZrpGN3FF+mPCE6RmVi0kbvLrRuAYIxho0JGZY2Cw7o36RgcOPU8HtPINQQM0JHKZiREUk9LsMF/tco7wp3OnhQ+7v0WRsEEiwp8mia4pUrP+umzZ3waZJSErIC6jEpb+hHKUSHf1NpsWy1RBYk04znmugNH+ee1Osu3LUwQDNwwXUn5nly39tuQ4eiZsgWcYjq+ZzrWVsRsZpV50nsN6qkZhyXvduCoM8Z1dAZf6jEtRiYblqjJ4TbO/nUJ5V8ncKinPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB7345.namprd11.prod.outlook.com (2603:10b6:610:14a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Mon, 5 Dec
 2022 17:59:08 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5880.013; Mon, 5 Dec 2022
 17:59:08 +0000
Date: Mon, 5 Dec 2022 12:59:04 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Felix Miata <mrmazda@earthlink.net>, <mesa-dev@lists.freedesktop.org>
Message-ID: <Y44xaLP+PhYx7lLm@intel.com>
References: <f5909f6f-4b2f-72d6-08e2-a0e454a1cd1a@earthlink.net>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f5909f6f-4b2f-72d6-08e2-a0e454a1cd1a@earthlink.net>
X-ClientProxiedBy: BYAPR02CA0022.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB7345:EE_
X-MS-Office365-Filtering-Correlation-Id: ddabf040-5689-4458-107c-08dad6ea6817
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OcEOeR9duiqS/3CitZ9dM06XhPP4hJVKpnm4pEVT6yx5SDSabrR/dP7Z/O7x8fkLSFTpAnQp4CnCmf7qIrHWAhZy3+bOr25GoR8fjGPecnpdqeIg58Dxrz5RO86usUwIWlNHY5N6fuQ+ehetDiYImwgMbEWeYpvu0iSnuG/NfJYJh7GwPBzv+sGPpG4ybuBtzPzd9QYzDr4398sk7lrgiQgdJfb/l9keJcmTbOTQb7KLxeyDiM4EiM9/wO/n4iyFCoy4djwdOwsMpUQK7nHSgMkXHCYTH9Vf/3Hls2yZM+qNl/FW3C0+Q+tgcYoy+gR7xfa9v/1Xw65x7WHJzq5pTfY1uypBEJqJ71d8YfRSxaEtjejRUDzQY5Q1GnhXCzeAdQZfNrllty5K2ynROPVyTTV4eXdD85tKkEcL23GoiakRSSPjse8mn8ZiApcKAIsxgK3KhKZci+0ZByvYkfGiy0ADDd6ssCPJ8j2WjDQZMArRxYYmyzXCmHcado6nfhhaE+7t+o2eh9mkO6ei0xJO0WeEoENgC/slUKSpfTlAGJlKCKq4bPcajXqNOE0NyZ/D3cNNZQ7/1PxQ4nENL1FJRivDDMzVT54GLY89VCTyLEPBika+nK77hsmh/Dv3tKMisNf+R4KAB8Tpd7Ucx6tJD69aJyPJteZsf6p1ROMTwUajEyILCHB69++bLL4II5tl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(396003)(366004)(39860400002)(346002)(451199015)(6666004)(6506007)(26005)(186003)(2616005)(83380400001)(38100700002)(6486002)(82960400001)(66556008)(86362001)(8676002)(4326008)(66476007)(41300700001)(8936002)(316002)(478600001)(5660300002)(66946007)(44832011)(6512007)(36756003)(2906002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+NyHA4V04HEGAJldWrzXxmB0iToMFMNrGA/N8Bd3YhrauhnojhQEoZXti07k?=
 =?us-ascii?Q?NNL07Q7aXBALEHMfT7+hQyczHp8VEveK71s5XX2V1iaF+DvxbRqFNJHbt/uh?=
 =?us-ascii?Q?dYCbKSqM+ysNCDhlqtU/FwpIDuTJZM1jWvxvBG0mzy1JRx6hsTMGW2TlUVN3?=
 =?us-ascii?Q?IaHbRFV10I3zOnik/arSX3ExYGFqXY3Sr6DMKLsvut12f6XJ0D2W2QRwcvAh?=
 =?us-ascii?Q?WgE/ICGNy5fpjQit5QrU3JKv3X8YkraAxREniAYisssOdH2vu0NRJ2Ek74FI?=
 =?us-ascii?Q?bIT3cPEN4M18/0GVyRwm9OcafrTZ8FAGJ1CWULL385xsM6aI+9RCiepYWPxY?=
 =?us-ascii?Q?y2NuxFQhXCVjnNFS5VzDFQF/ccXckmGXTcjHHGaVgpkA+lC9htTIRrLM7pac?=
 =?us-ascii?Q?RwV1aWctqnofEsoulnD8H8tpevDcewbt4/35lizgRaXzJIKSvEzJ8R/dbxmz?=
 =?us-ascii?Q?vDTs3bOprGu75aYRvSOznaQHRlEUuQ9gRC1acPbsDHn7kE209nZVroURo554?=
 =?us-ascii?Q?E7zlHzRoLFwkofLck0RZTv2x+bQFMqW4BdKyO47HG3z4gxT/NlTeTZTeoJQc?=
 =?us-ascii?Q?WPTw6QWrlMVly/ZWZhcgfptFui8g+IeIfRfI+NDrzUROCSuF5GWTvw7li733?=
 =?us-ascii?Q?NTfBkLBN/cqTu+AF4Q83kBgBLyiKGYZiI0u4bY3g/EgUUWN17b2LmbhPmGtx?=
 =?us-ascii?Q?RU2kfLC05fjAelPU+8SMtUrgmNpbbQfyb95cPb+Fm9GCLRdLxHOJW1iCguTd?=
 =?us-ascii?Q?FC9eUQEbBWw4oMWqtN02lIalGQgSPhDMUq1UG+JjBEhMkiIuJ/YUvxdXg559?=
 =?us-ascii?Q?Nnfe4E9tqETtx+qQNTaDt9gKef8P56bNdyDEnsoYNis553x71apWf6jucGUp?=
 =?us-ascii?Q?K7PPLciSdTa7VIsWR7ltH5avDtUszam5oBs4emzTH/MJZ/UrAOQa4yCltEor?=
 =?us-ascii?Q?vj95aERkLIGp6gPSr/sSEzk9654UNZc3RZHmrse4PBjXOW8XkZp3isN3+17v?=
 =?us-ascii?Q?CBSalPkpJZ8uLQyuTsKlePQtaRUhh1lyKoChjAK/PSfyPDUZXEfQX/dR5Z94?=
 =?us-ascii?Q?c9NF5VH6aJtuCNEyW1CjtgRhHGO8U9PruK3bHG/K0ophc+nJNEkgJWNwixmX?=
 =?us-ascii?Q?j/EhMVDQXTlZtCQEMqORHwilO0cc5bbajD3zD1UR/J3ppweSqAd1tda1e08y?=
 =?us-ascii?Q?dWC2ufbhpqCXnvEpw+dMFrG4pox/2qOAj4xLdsbG/oYDcvctB+mW28HMdJsr?=
 =?us-ascii?Q?hamF5r7b/OsPP5RS+0GJJzCwttMPBywdYReyvVlgozEzm+ydxoqJIOqV2H5+?=
 =?us-ascii?Q?DZ6XX1o6H8kMybfUHamDISloSJjHw9EWY0VA0cY7Cx5b8DFY7j/grMDO9aFs?=
 =?us-ascii?Q?X58p0Il9Fx6b9lMIfJAf5324e4xFCldl1ztjgIc9MkisHbeg7RiLj9ybvR3M?=
 =?us-ascii?Q?h5Wzto6FEXzhW5I6KGkOVI5XyHW9xbwZNchAN2wZeXyexTztTx/nQIeadTeg?=
 =?us-ascii?Q?nPG8rMQOmbx7eePu27FNECg3rJCe3BzOBO1Nas4b6sRS8t1PhXRgxUh9WSei?=
 =?us-ascii?Q?yz06knsCAiGQsHX2fkuT0e4IEtJ407tyDtiNDQHA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ddabf040-5689-4458-107c-08dad6ea6817
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 17:59:08.7441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jgum9wrJhp113gKYduvctS0EMutRHRyfvy4APwTeC90IY4PbS3BbwGaXn39NLDT5w1Gh9nQJm25P6oOT7HyovA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7345
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] No Mesa DRI Intel 945G in Debian Bookworm since
 Feb. 2022 package change
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

Cc: mesa-dev ml

On Sat, Dec 03, 2022 at 03:00:44AM -0500, Felix Miata wrote:
> From libgl1-mesa-dri:amd64 changelog:
> mesa (22.0.0~rc2-1) experimental; urgency=medium
> 
>   * New upstream release candidate.
>   * path_max.diff: Refreshed.
>   * rules: Drop classic drivers (r100, r200, nouveau_vieux, i915, i965).
> 
>  -- Timo Aaltonen <t jaalton a t debian o org>  Thu, 17 Feb 2022 22:04:03 +0200
> 
> # xdriinfo
> libGL error: MESA-LOADER: failed to open i915: /usr/lib/dri/i915_dri.so: cannot open shared object file: No such file or directory (search paths /usr/lib/x86_64-linux-gnu/dri:\$${ORIGIN}/dri:/usr/lib/dri, suffix _dri)
> libGL error: failed to load driver: i915
> Screen 0: swrast
> 
> # pinxi -GSaz --vs --zl --hostname
> pinxi 3.3.23-05 (2022-11-07)
> System:
>   Host: gx62b Kernel: 5.19.0-2-amd64 arch: x86_64 bits: 64 compiler: gcc
>     v: 11.3.0 parameters: root=LABEL=<filter> ipv6.disable=1 net.ifnames=0
>     biosdevname=0 plymouth.enable=0 noresume mitigations=auto consoleblank=0
>   Desktop: Trinity v: R14.0.13 tk: Qt v: 3.5.0 info: kicker wm: Twin v: 3.0
>     vt: 7 dm: 1: TDM 2: XDM Distro: Debian GNU/Linux bookworm/sid
> Graphics:
>   Device-1: Intel 82945G/GZ Integrated Graphics vendor: Dell driver: i915
>     v: kernel arch: Gen-3.5 process: Intel 90nm built: 2005-06 ports:
>     active: DVI-D-1,VGA-1 empty: none bus-ID: 00:02.0 chip-ID: 8086:2772
>     class-ID: 0300
>   Display: x11 server: X.Org v: 1.21.1.4 driver: X: loaded: modesetting
>     dri: swrast gpu: i915 display-ID: :0 screens: 1
>   Screen-1: 0 s-res: 3600x1200 s-dpi: 120 s-size: 762x254mm (30.00x10.00")
>     s-diag: 803mm (31.62")
>   Monitor-1: DVI-D-1 pos: primary,left model: NEC EA243WM serial: <filter>
>     built: 2011 res: 1920x1200 hz: 60 dpi: 94 gamma: 1.2
>     size: 519x324mm (20.43x12.76") diag: 612mm (24.1") ratio: 16:10 modes:
>     max: 1920x1200 min: 640x480
>   Monitor-2: VGA-1 pos: right model: Dell P2213 serial: <filter> built: 2012
>     res: 1680x1050 hz: 60 dpi: 90 gamma: 1.2 size: 473x296mm (18.62x11.65")
>     diag: 558mm (22") ratio: 16:10 modes: max: 1680x1050 min: 720x400
>   API: OpenGL v: 4.5 Mesa 22.2.4 renderer: llvmpipe (LLVM 15.0.5 128 bits)
>     direct render: Yes
> 
> In Bullseye:
> ...
>   API: OpenGL v: 1.4 Mesa 20.3.5 renderer: Mesa DRI Intel 945G
>     direct render: Yes
> # xdriinfo
> Screen 0: i915
> 
> What are Bookworm users supposed to do to make Mesa DRI work correctly
> now that i915_dri.so is missing? Did it get moved to some other .deb
> I can't ID? I don't think Crocus is supposed to work on Gen3. At least,
> export MESA_LOADER_DRIVER_OVERRIDE=crocus in /etc/X11/Xsession.d/10-crocus.sh
> doesn't help.
> 
> In openSUSE Tumbleweed in 22.2.4 i915 is still included in its Mesa-dri
> package, and Mesa DRI Intel 945G is working as expected.
> -- 
> Evolution as taught in public schools is, like religion,
> 	based on faith, not based on science.
> 
>  Team OS/2 ** Reg. Linux User #211409 ** a11y rocks!
> 
> Felix Miata
