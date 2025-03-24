Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1B2A6E1FD
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 19:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31D7B10E4AA;
	Mon, 24 Mar 2025 18:01:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HLVj/8Uz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBED610E4A9;
 Mon, 24 Mar 2025 18:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742839313; x=1774375313;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=BHUs3nMMaIJ17hfeIrXpH/9rV4r1UNq92vXw5JnaK3I=;
 b=HLVj/8UzZ38y/Dx4NIvt6YR1ai9BfB6Z6Ni/3yJyGm9IAsaZ/QV/+iK0
 baizJxmm56eR6wuCc6kdM8seCaw9hD6I/hLzGyC65kUeAjRCVoQ7VF0jx
 x9OFxZBKSbhrVgIsEnB2IBFFZjh5QxE5rfLRp3P+z7Mj1ak44GdcSJ4u2
 rOWm6HA3AA+ul1b8Q6UxWpALzyveB5593t5h4TqKG1jJNO57+a5JnS/5U
 1Wy/yDXKHmgm84y752Evqtrp66yt+96J26X0WBQW3BGyYu4Wl8xHLbA2T
 jE+UuAYTuOC7B/goo1NCTCMKFCRSHMePmhyM5lU9ndHP7UvKncRQDGd7j w==;
X-CSE-ConnectionGUID: XwiqmShOQUmrWaITELQFug==
X-CSE-MsgGUID: VnD6ZwdGQHKMxVA5C68qqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43988187"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43988187"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 11:01:52 -0700
X-CSE-ConnectionGUID: xj3OOAnPQSWyJXR37opFjw==
X-CSE-MsgGUID: UlpE23aIShu0WPE/k8xzwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124108575"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 11:01:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Mar 2025 11:01:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 11:01:51 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 11:01:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bj3ICiYe67Dr6UQsEUzPHUdscoxoDAA0ae2hrPQ9fcB6EtDopUi10u4kErGwl97UPwFm3+Ms9t1JJUwliEKtzfYfvEZRd+tXwT5E/EJHgQ78XUawWox6oFF4w44rotF6xxymSS5pij9UPA9VXT17+2rk4qSKKowZ5LFh+2n7Y/qWw0vMawuZjLAdLWAo3jNzG9pTKAgPqqlF6mYPqAbVudXOkg1pZbTt+EIZ5Uh8pB5/vyGegnLpaxBSUDOogWuIDhtjS/8MqBxjJ35RnqmcmWxHZnyfn252MEdMZOSB6HPpGoioKsg8OokaDzLQsZi28zwNQqX747r1CLLks22ekQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/nFKSTk0GTAqwP/2szCKYrmabPdBiYL6eJVPE/RPbMg=;
 b=fvy/RC7qnsizoUPhBdMk3NaQopSIC6CkibDKDbxPkz1HMkAaK423elQwWHn+SXqbBt/w7q/5QSteUZUW0NCQXOImOYSCfL1LR/gTirmzc7pL/ZkF4UXTtYflqRHCnMpxIiWcW5ulSYrhay8guA5o4RLvFKurQKToHQJLWh6lcA1XvtNFW6uzU1p016+FdRpKi88VFhjIfAulEKSyZftW+WOUnV3g2kZjU7hAmLRgmOKpGFYv2aZYh/2lKVpmBZ/oH1GLkbG1o88QcsW4bc/SC08wO8sKTnD6ujGMfhYtpgQW96jM1LmSc7xIs3MreeQdGIEyzknG/0AiDQJgkaoj/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB4782.namprd11.prod.outlook.com (2603:10b6:a03:2df::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 18:01:46 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 18:01:45 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=
 <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 0/2] drm/i915: Fix DP MST DB message timeouts due to PPS
 delays
Date: Mon, 24 Mar 2025 20:01:43 +0200
Message-ID: <20250324180145.142884-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS9PR06CA0225.eurprd06.prod.outlook.com
 (2603:10a6:20b:45e::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB4782:EE_
X-MS-Office365-Filtering-Correlation-Id: a5f53d1a-a5f6-4424-a220-08dd6afdf0d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RFB0L1REaC9RQWhOYkY0WkRDUjA5VTJwOEJ2eEwrK01selRNcmhSZTh1b3Jh?=
 =?utf-8?B?Nng1ODBzZERJcjdKZCt3NUdxT2lKNmh0UVB5eHdVRytVOXhPelE5TlBpeVgr?=
 =?utf-8?B?Ni8zRmV3cmJBa1BZenFwZEVDL2ZIME13bFJ0NElOMFlIdmJpeUtSdnlJQ25v?=
 =?utf-8?B?Y1dZWGlubGVLLzVDMDhQV3hZUFk0Y1pXS0drWm9ENE1CbUR5N3NvaWR5RnQ3?=
 =?utf-8?B?YkROZFRTRysrZjBRTG5DNnBETTE5dWNCbDZkQWxFOXdrcWV6MUpaMXk4K1My?=
 =?utf-8?B?aVpZelFrbTdzVHJRelBUbFpna1RwUmFnYXkxWFVFUENlNkY1WE5Ib3VVWTR5?=
 =?utf-8?B?ei9rZlBpZjZWS2Y3S1VqQmpQNGowaDBaT1Y1VFdMY21jbHJvenY5YkRmU2dY?=
 =?utf-8?B?dGN4MVg1UXUxQnVZbFgxK01xdHBrVSs5VGoyTnJuNEI5eG1FWmV1aDVNNXZV?=
 =?utf-8?B?d0xVbmdnWTJaNDREQjFTREZFV3A0bHJqdm51VkZmVEVNM09kT0M2SkZnM3h5?=
 =?utf-8?B?cFM0YkVqcHZzYmx1bUdyK0tUOWh0VTBUbzRyemtCYWRweTdaZlAvTnZ6anlB?=
 =?utf-8?B?MDNaVW1hQjRHY0pwVXhMYStQVElwd0J4RnJIMm00NHpacitPNE04ZCs2Nk96?=
 =?utf-8?B?SU91NFB5T1k0aUNjRUJENVhDYi81SjhLWDc2OTUxMmt6dHdVaG9RMWtEZGll?=
 =?utf-8?B?M1hwR1NzOVFPeVlFSyt0Nk9TdzRsRFJYNGlwdE5Ea1J2ZFNYWUtnOXNkeExn?=
 =?utf-8?B?R1o2Rjl2WFJOSlNQUVRqQVB2bzJVbkRRN1owN2lwR21FWllFZExrNnA1SzRj?=
 =?utf-8?B?WWFXKy9jWmdUQ01GTms0S0VaZndxRG1zZkFtSGRxdE5DV0JaOXB0Yld5ajJo?=
 =?utf-8?B?S3FXYTNxWktJendsSTYzK0hMMlgwSC9RMzJSYmYyc1l0OUoxQXlIUXJ2QytS?=
 =?utf-8?B?aWZ6OGN5TVFOb1lia0d2ZUVrWTJOTWlPaDVraE11L0lON3k0dVE3M3RyMzh5?=
 =?utf-8?B?TkxaRUpBOFB3a29NSUhkQStrMVB6eXNvMEFUTGI4c0V2bUEzUEpTYnRZMndm?=
 =?utf-8?B?Y2FrVXdRbWN0SkJwaWRNcEMvWUtVV3g3U1UrTGd3S0Q0RUJ2SUkxQ3FNMk53?=
 =?utf-8?B?U0xVZUpYMU4rcjhvQ0t3dk9MWnluQ1h5dmcxa2pnaldUd0hGdVlNMWZ6RGdt?=
 =?utf-8?B?czFMYmM2NERZdVMxNExmQzZ0ak8xQ0dTUDJ5NmFqczVjOE5IZ05OcGt3eFNt?=
 =?utf-8?B?WUV3SUYzTnhKc3BZZFZMM1N0NmRaMFhMbGxaWWM3MUpoSTR6MG5mVVMwS0Fl?=
 =?utf-8?B?VDNvVzNhNnlMTjUvdCsvanZHUTdZV3YzRGZHbDh1UEdTSGZ2anBZQ1pPLytt?=
 =?utf-8?B?VmRlNnY0OURBVTJ3S0pPKzRCbnErN1N3SVgvWjJhWVNHUU9BSWF4U2p3THpu?=
 =?utf-8?B?UmVHVmlsQkhXdGRQK08zalJ4eFlDaTl5d3dsRDRQei96ZndsTzJLUkdSbWVG?=
 =?utf-8?B?SFJ4UUtsdy9FY2dKdGFuRlM1Yk5OakNuT3dtVUo5d3p1dGdHQ3dXSGVMV2dj?=
 =?utf-8?B?SURQNnc3T2xOU2srcS9WSmhVNEFVVUZMV0l1MllON1V3QkgxbUluM1N4WlY4?=
 =?utf-8?B?cG1VZm9HSGhtNkp2VjQ5YTBQTUNBOHNGVXh3NXpIRzhaN3BxZVVyWXk4Tncz?=
 =?utf-8?B?blpBaTRxT0JFanZxSWNabXF3RmwxdFk0cHY4OEFtOUMwbmZ4NFlJellSNHJL?=
 =?utf-8?B?cGhQSWVpWndVdU02T1NkMXAwdWZrSDMzL0w2WTlyb21EcHpKd01PMFBYOU1N?=
 =?utf-8?B?R0hKZ2NXVFdoVGVBbjk2YXJEbWxzeCtld0ZDMEFjeks2czQ4YTlSTmgyUXhp?=
 =?utf-8?B?V3RiRHJta1NtTlErSWxPa0VlcDBzQkxPZCt5MXpNZFFhVTUrWGhvRDYxbWNu?=
 =?utf-8?Q?2oZDVePlPOE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjY4QnA1VlBDelA0NW01SWUxNUEzVTdpdG5DTzNqUDdOQ0U1cEt1bFkrQTBW?=
 =?utf-8?B?Z2JiKzdrZEU5anBML1I4dzdSUG9mQUowbUE5azY1SElXYnk1SjViWUVpRktq?=
 =?utf-8?B?eHNuejA2RVg4cFRvbGVJQ1RldGwxUE5VMlVSaGhhejlteU5SblA2cTU3dWp1?=
 =?utf-8?B?Q2RHVkRPeHNudXdNUUhtTHUwUDNiS0tPRGVYeUo0Slk0OCtaSXp2bVcvMERL?=
 =?utf-8?B?bGN5L1ZqdW4wZFZ3Mm53Wk4vNnRPbXQycmt0aWQrN0hDVlBMeVRYTTRwSVBT?=
 =?utf-8?B?b2lhelNpa2ZQZ3VrL2wrTGpTUXdrdU52L3dUZk1xSFZxQVk5Mk1vd1h6QmRi?=
 =?utf-8?B?TjZhdlhyWCtRWXJ1VHU3eWx2MDZsSWVIcGhTUkNydXFWMFQ5MmZlN2J5VnYx?=
 =?utf-8?B?R21hRFZpM3ViZlpwVzFHU0t3VHFFVk80eXdMOXdZRVNZRzVRd05BUVU3R3hh?=
 =?utf-8?B?bFpmc21SOGNEVXJ4SnAvMGw5Mmpvc3BDWFJGcTk5YXJYdW9iUVc2alVETjd4?=
 =?utf-8?B?dUlBd3ZKSU5UMjNjL1prbVVIaVIzdlhhQmFEU2VTU3FsY3BWTVk1Mndsd0ti?=
 =?utf-8?B?T2FzZjdwd21QK1NvVXBpb3ByRklrT0sxN1BxMjNIWk4xd245cDlwQ0xxaHdo?=
 =?utf-8?B?QVBGbzY1djhaZG9IVkt1dEVtcEJjQ0ZwZWxlRnhTTE9zWXJKam5mSWtFU3c4?=
 =?utf-8?B?bUVNSStoZm9PaG8xQUFleFVQTzdnZFgvNCtXTVBpT28vTFVvK29CcWVqZWt6?=
 =?utf-8?B?RnVGU1BKd3BEVTh4dWdxUjRxb29zejAxaTR1RjQrcktjY2xCLzNLWUpDaGRX?=
 =?utf-8?B?TEFMSU9pTXhpUGx1NnFUQlRYNjlzSGR5OUQrV3Y1bEg1WWRNem9ibi9oRFpF?=
 =?utf-8?B?dUVuSlpxMm9HSVBoZXhpVUkrWXpFakI3emJWaTFLQnpaeDBFTE1wVHptYXVQ?=
 =?utf-8?B?cVYxTjM2OEtReHB3dVA3NmdtaERjY25KbEtVRDFFVFpFeTkwRzlueFRNTVhX?=
 =?utf-8?B?VDkreVhtMDI0Nis0R1VEd003cmt4ekxOUTl1QXMzc3Y1UTU0Y0llYWVEd0xF?=
 =?utf-8?B?VFk2dkUvN2grWkRyMDNOaW1VMTdYek5Vd2VPZFYzakxhcXM3OTkxUGZTUU1Y?=
 =?utf-8?B?cmU2YTFtU1hWTmNwU0s5ckJvT3Jhbk5LcGtOWGtpanJ6MzBtZ0lobWxLTUF2?=
 =?utf-8?B?N3lLSU01L3E5b3phWFJKbmZIZWthc01aNS9Oak9LQWtjUWtiMXUwL1BlbG5a?=
 =?utf-8?B?MC94SExnVTBYQ2pFM3NKOUxnVldkRXZCNk92b1R4aDBNelQzVnl6M2tYTzFZ?=
 =?utf-8?B?M0ExOVZ1VGZIS0dtbHMzMHFQL09MK0pEZGV3RWU1WDhJU1FjTEU3MUpDc1pr?=
 =?utf-8?B?TmlzUExjOGYzeFlMOHJRWnhMelBqVUVXRm54aWJaNDBxYXcxMUFmL1NBUFFt?=
 =?utf-8?B?MXJQS0ljeGk1VGNEOUU0NEc2eU1ZekVHckt1bTdBbm4xQ2lOUVMxMWNlVUdW?=
 =?utf-8?B?KzhhSUdWKzk3UnJLUDlOWTBFR1RpdEtHRmpOeE5MRjNLUUgrNzFxeGtic2cr?=
 =?utf-8?B?bW1DVEk4RzJ6U3JYNGlkV1dQY1dXcjQrVG5ORmlBOGd0UEkwRHBjNzI2aVNH?=
 =?utf-8?B?elY4b1VEYmpSSVhNcTNxODFaYk1CRlRuOGdPczNDRTlSN0k0MnRZSnB4WldZ?=
 =?utf-8?B?Y2wvTjdRNWoraElYa0YrOElxUmtwQmt6MS9hUTVra0hhQWFBTm55b0JRNFhV?=
 =?utf-8?B?c3dqMWRsNC9BY0tvZzVkREZVbHlUUkdZZEtXSDhBS2IyOGJCbFd3MDM0SStR?=
 =?utf-8?B?eWY5eDBBY0M1SWR6M1Q5N29VcXRBbmdjWkRUcjNTYVVZZkM4cWM3OXFWMzgx?=
 =?utf-8?B?T1o2bVg5WGttc0FzaDRobHlYYkkxYnFKVzcwSllxOHg1WTFXTkVJbDdLbUlD?=
 =?utf-8?B?VGd4OElXOFJ1SlNsREVha0IyRWlxUmNZUlJMRmRVMUc4TlBQVWdWMzMxVVll?=
 =?utf-8?B?RDgza0wrNG1wZTYzS3FQTnJPQ1IyQnZ3TnMwTU1KZFdjd0h0VzlXTk1zSFBy?=
 =?utf-8?B?NTBpdzNaa3NDQytxL2JYaUR6eDVwMnk1ZTBKU1laYjVaODg3MVNQU1hyU2dW?=
 =?utf-8?Q?LT1+FHI4hPcE/Gt1ThyM+yA2J?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5f53d1a-a5f6-4424-a220-08dd6afdf0d1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 18:01:45.9163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g3uRW/0zr7hy6pAIG9rzqIwDWpBLYRv45duVusd6PB+w8rNCLMECSEWztquFAVolOLW7Y3O92f1ey+ov04ASlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4782
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v2 of [1], dropping the change to lock PPS and enable VDD from a
separate function, as requested by Jani.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

[1] https://lore.kernel.org/all/20250321145626.94101-1-imre.deak@intel.com

Imre Deak (2):
  drm/i915/pps: Let calling intel_pps_vdd_{on,off}_unlocked() w/o PPS
    lock held
  drm/i915/dp_mst: Fix side-band message timeouts due to long PPS delays

 drivers/gpu/drm/i915/display/intel_dp_aux.c | 21 ++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_pps.c    |  8 ++++----
 2 files changed, 22 insertions(+), 7 deletions(-)

-- 
2.44.2

