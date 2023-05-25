Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26649710E4D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 16:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6510A10E16A;
	Thu, 25 May 2023 14:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD1710E16A
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 14:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685024817; x=1716560817;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=d08h12adgVtwGqEhwSBAg/etmq81CDiqjUVCN0Twrmg=;
 b=WuvkBgAOCOfn7NOOR8PUlMnRPpvI0MDQh/YZwG54VfZ4JJPzaZFUW8Ie
 azXo2BrFtOlKV2RPdNYbKbHmJuT9JvB7co+oRYt+1/EPiALeTftX8TVwz
 wMTi8YUYgEEUhXPzDbEGHEAV8YE489Mg4iwa5cP6v1hfJ93ZgPTYQH5o2
 fw4iZhZWxr0BggI6FLQHLQ4EUT22OdPFAYinqHojR+gu8frf1JGEKUp+l
 nL7lJ/++8RuWeOKiycacUtNvIGnKElzWTkYm4L4g2ldnmiR9QkExLAxOc
 jG2FfOxr1Ldx+rYFvsugrJSZrLhx1InqEgmjzLtB/Ysn1Rf4TyOkqqee8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="419631996"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="419631996"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 07:07:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="682343617"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="682343617"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 25 May 2023 07:07:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 25 May 2023 07:07:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 25 May 2023 07:07:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 25 May 2023 07:06:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EiPprlvIe+clvbud+2KWlLU2OPu5KU1JNjbjlnzJIdvE/XbtHuMrJmiWBIPseFl3Lstube7L9EtMR26D4NGblden5uLWMInV0hq+wOprsEY8wINGUJ1GEkBHMhWNKpeba9fUywYBTuVEJZ9ar6sTLUhNB80tfEd8s700QDoZ2EmBX6lb4NvDhNCD7Kfecd8g4ysq6DPmctJaaSiDaD7FZXCcT8HrOmfrcndjjQ2Y301ES32iMnx/Cvjoafkxq07KUUDCZtRLD4sNyGcNpA7albG2QtjJ5tbGuy4pUPHJ5JSbGlRcPTj/KmK5YL2klOwyzY+lTOyrEcogwkxFJ29ELQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hSTPhhgbJoeXpmO7q8+Y8XvGBB9mxhQvRZRTUEyiq+o=;
 b=D1phYibZJqo9MGtT3SqgjplqsWw+/InNol5xMV/ujL3vUnd2pHxUpbC2vIe6EyhiLgugdK2GBAjdRIMkHKWNrrbiW0F42grd7cn/5UMi0Sk0SebIu0/QI89Mxx2PgQcU445L9BV7b0TTYCWya40YKsCJbmKmJDLlArsT6Uv1RLCuSwTiygeoJI+6nlYJZss43gFZaMFBQPBM5q16fYrj+QRKaZ1Hy5etFkLPhnLsiG9pNy+CeaZcsQ9TjLv4r8djb0m7d7nEC4GlzY3I+XSMLajXx/LiGxHxNwrC8HlN76k4sgfAAO0JwSfPrtILiz2XfuNopCcfntHZHUWSfftWZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS7PR11MB6128.namprd11.prod.outlook.com (2603:10b6:8:9c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.15; Thu, 25 May 2023 14:06:51 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%4]) with mapi id 15.20.6433.015; Thu, 25 May 2023
 14:06:51 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230524230342.411273-8-vinod.govindapillai@intel.com>
References: <20230524230342.411273-1-vinod.govindapillai@intel.com>
 <20230524230342.411273-8-vinod.govindapillai@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 25 May 2023 11:06:44 -0300
Message-ID: <168502360445.3319.5262709654872376821@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0388.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::33) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS7PR11MB6128:EE_
X-MS-Office365-Filtering-Correlation-Id: dc687c88-6eaa-4343-fd9c-08db5d294912
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 67SI9AruFx4H1HGI8qLyOvjjb1Yv5SzYvCV+KqxxGFaxHPtkY4AXBag1w0Q8GoJ40JMqvzZyOUx70khtlhIc5zKHQl3Li4EyvEN8X0RGxa1YPIagKAdTh3tLar+MzvCIdKCKUDqx59GgkSoglSo44T4vEkEi6mvetZujkmn0Xtf9L+6NmkEfz4DzaakEwNHR8cg/dn9SwSDR/MlbxLgnRThLlnLj09rgH4BYhw6IVsX2R8ydRsJVhg/s5W13c3qlNc+HYPyNEMU1yqvHsdeAIG3YnuGm+WZy1JGHEk+B9ReDZ4cCQ+0Ydwzp0jQGe4Q9YJekc4Jqlrp3ThoLHR5pp4osib+RXW0y9XqfcFIhfJVwNsIcJWs8x1PslajcNg4L+lSRxapbxxv6WqSq0CXeM+ITPni6slvgidlAr6BSFeGeX/o7/a8ObYwJHQTa8bFNp5UGe7zc9XlcOYQZGUZiO1jwoXmcfdYvfkbHPlHxhMsisjVGtgxxKGFbRRENDBcNDyEVaVcjV16VdCiRwWBbSl6z5R3ZT/SgS7IbCugxjnML6cM81PEt/C/cLh01kdAb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(366004)(396003)(376002)(39860400002)(136003)(451199021)(8676002)(6666004)(478600001)(6486002)(83380400001)(86362001)(38100700002)(82960400001)(107886003)(9686003)(26005)(6506007)(6512007)(186003)(41300700001)(8936002)(316002)(33716001)(5660300002)(44832011)(30864003)(2906002)(66556008)(66946007)(66476007)(4326008)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHIwVmEvUUdSd1Q2V1VyUnRoWk5xNkV1bEpicWM4ck1PelJkazBTYmZ3RXNk?=
 =?utf-8?B?WmlEcDdLc083VzFwNEwyWEp3YjlkZWtpcWhVd3RGYUJjaDV5ZkRBVGNNZjNv?=
 =?utf-8?B?NU5BZDgxb3VrTDJldnhyZ1VJbHRFZDVReHR0NzFGNDJNaDNRbEl4NUNSQyto?=
 =?utf-8?B?Uko1R2hGRWVBcmtzdWRlMFQxZlBjcGJscHRRck5WWXJRdFpFckd4cG1Sa3F6?=
 =?utf-8?B?YmRBZGhFSmhJM0xqdFdBRVV3VDVWK0NLR2l6Yklva1gwOHRBeHBPMExMWFRC?=
 =?utf-8?B?ODYwYWw5Yyt0TjFDMnBCS3pXRnFoUUxHUTB3R1VpdUlPT21tU21VSHFVbGEy?=
 =?utf-8?B?SUVoMzNYQ3ZNd3ZJOUZIUVNHQWZ4R0VmVlBRa0NQQjdhTEhBdUVTRHl2djRV?=
 =?utf-8?B?dk50YkY4T0JuM3JNeTdidmlQVzNzck5kdUVGcUxjSnhSOHVqUXFTamtncUdr?=
 =?utf-8?B?WUNJRlh0U3FNeWYwbGNsQ2Ewa0EvV0dUSVljRzllR0U3eDNsSlBMNzIxQUlB?=
 =?utf-8?B?MkpyWm1iby9wdkRkc0RPYzFmSmVHaDhVSzNOemJibGJqRWRHTGtWbmdqTUxu?=
 =?utf-8?B?UXVxYWdKbGorR3EwZTZPc3BlSTJlVVQ3STRPOFZudktNU1BjVEpNQlR6OWVR?=
 =?utf-8?B?UG1aMllEY3RVRmdwN25EV3k0YzZQekVrbGxXbUhsNFRjSzZ4ZEk4bENnaVVS?=
 =?utf-8?B?aWlkMFZFc1ZwZTBpd2JYek1qRElmajllcFBxcWlwN2ZUQWJzMkhPUWFpMmRK?=
 =?utf-8?B?d3o3M201akNBeUhRNExiWkw3RGhBZFplZ251dUhvSWVVODFKZU9NQVFkbXRX?=
 =?utf-8?B?dWNDTlh5TW1PZkVKK1QwQ3creHQ0QkJBQzdEYnptR0ZYTDJYNWoralUyZzJ0?=
 =?utf-8?B?TEJvTFJyTXpWc1htMmVqK3U0bGdJRCtySEFOUFNHNDN5Q3FWaENVZEpUbVBn?=
 =?utf-8?B?Q1BEREVxNG1DaG5sUlROQjJROHZsY3daYVh5VkdUYjhhNG8xODhIWTR1U3J2?=
 =?utf-8?B?bjFDZmpkbFJOSlBYeVp3MnZZYzVobjNUSEFReVhrMXFxcjh2SDBNOXVCRHRm?=
 =?utf-8?B?M3JnZlBlNDhjME9DS1RFWDR1b1BpbEJEbVpIZzBvRWtraElrQ2RMOGFoTG5U?=
 =?utf-8?B?aEQ5cDhQTFRuN0xFeDFOa1JERVRZWVVOdEgxNTgxRFUwTXd0czFseW9NNXRS?=
 =?utf-8?B?a0R4YjlxRThKWGt3MlhjbW9KNkJobWt1V3ZxYnFTaVh1SEt4MUlOV1FPQUp6?=
 =?utf-8?B?bUdQMGtIOGVzdmZCcTlHNFd3TjB4a2tFUnBMWnUyWC80cFJGWWJvMW1ma1hQ?=
 =?utf-8?B?RXdmK3h0Wmo1QnpQK2xmM0FmL1hwM21tZVltU3NobGhRU0tFNDkzVmxxZU53?=
 =?utf-8?B?Unh6MTJFQkFqSlRITk1qeGJXdnJQSWhOSUtWVElxMWdTZFVKZDRINVlPZnJa?=
 =?utf-8?B?cVluWnVxYkJFRU5jSzVnRzBPN3daTG8wVldkN1BzSU0rSmNkQktVNE9kelFh?=
 =?utf-8?B?WVZMMDBJbFU4Yk1yMngrYWxFTE1nUU1oVWFpdnhjei80dzNnSU9Kcjk5QWFD?=
 =?utf-8?B?ZkRxWm5BUlBMNFdCYldPbXBUMEJGWW5YeWdlT1NXTDQ5bkMyamU4NmxhcHo2?=
 =?utf-8?B?V1RXQ293TUxLbllwbEhhbUhOOGk3U3VvelpPV05kRTNRdTBzN1lDME9Udmpx?=
 =?utf-8?B?UjZNYzFXcWJ5bzVpaW9yZTNNYlFYRUo1VVFLZyt3dXRCd1k0R3F6YU1KS0JX?=
 =?utf-8?B?MVhlRmhhUm91djBzSkYrWmhDeFV6UFFxZ1FMcVVyM2QzM3NCQzhxL1VMNDJI?=
 =?utf-8?B?dmFlcHAyUjFLc2FYZXA3ZWo0c2FWcWlCdW56Ty9pVXZYQnZWZy9NUXYzL2xJ?=
 =?utf-8?B?UW11UWsrZitBK2crT0NPaE5XS3ZLOVZmT1ZWWjRmcFFsVDZYZlVpSkNmQVZo?=
 =?utf-8?B?d2NyTFovMEUyWHd0MVZNaXdDMVJLNFhyS0x4NmFGdmNkVXBDeFdKTFd6aldu?=
 =?utf-8?B?cnRxZ29zN1A5RkNzcGJGTkRVZWtDcUxPT05FSjRBb1ZETVVleTFsNGtSVWJG?=
 =?utf-8?B?UlFXR1ZFNkJocnlNQmN3VHEyNHJEZi90dnJ5Qmp6YTFFS1NQWi83cFVVY3Uv?=
 =?utf-8?B?L1c3NHNIam1UcHdQTGEycXVhaUJScEh4UHBkK1N1UmdHR2I5bHNQbXgweFpY?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc687c88-6eaa-4343-fd9c-08db5d294912
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2023 14:06:51.0727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YQs+zniE5INjQhN+5khrF/SGNzEd7rCzOuBHo22Vxx9I7WykewBt3zLchp5hV/NQ8bxj2AeZR2CZr58cqOowTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6128
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 7/7] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Vinod.

Thanks for the new version. I decided to take one final look at the
overall patch I have found some issues yet. Sorry I didn't catch them
before!

Please, see my comments inline.

Quoting Vinod Govindapillai (2023-05-24 20:03:42-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>MTL introduces a new way to instruct the PUnit with
>power and bandwidth requirements of DE. Add the functionality
>to program the registers and handle waits using interrupts.
>The current wait time for timeouts is programmed for 10 msecs to
>factor in the worst case scenarios. Changes made to use REG_BIT
>for a register that we touched(GEN8_DE_MISC_IER _MMIO).
>
>Wa_14016740474 is added which applies to Xe_LPD+ display
>
>v2: checkpatch warning fixes, simplify program pmdemand part
>
>v3: update to dbufs and pipes values to pmdemand register(stan)
>    Removed the macro usage in update_pmdemand_values()
>
>v4: move the pmdemand_pre_plane_update before cdclk update
>    pmdemand_needs_update included cdclk params comparisons
>    pmdemand_state NULL check (Gustavo)
>    pmdemand.o in sorted order in the makefile (Jani)
>    update pmdemand misc irq handler loop (Gustavo)
>    active phys bitmask and programming correction (Gustavo)
>
>v5: simplify pmdemand_state structure
>    simplify methods to find active phys and max port clock
>    Timeout in case of previou pmdemand task pending (Gustavo)
>
>v6: rebasing
>    updates to max_ddiclk calculations (Gustavo)
>    updates to active_phys count method (Gustavo)
>
>v7: use two separate loop to iterate throug old and new
>    crtc states to calculate the active phys (Gustavo)
>
>Bspec: 66451, 64636, 64602, 64603
>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>---
> drivers/gpu/drm/i915/Makefile                 |   1 +
> drivers/gpu/drm/i915/display/intel_display.c  |  14 +
> .../gpu/drm/i915/display/intel_display_core.h |   9 +
> .../drm/i915/display/intel_display_driver.c   |   7 +
> .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
> .../drm/i915/display/intel_display_power.c    |   8 +
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 560 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
> drivers/gpu/drm/i915/i915_reg.h               |  36 +-
> 9 files changed, 678 insertions(+), 4 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index dd9ca69f4998..358463d02a57 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -273,6 +273,7 @@ i915-y +=3D \
>         display/intel_pch_display.o \
>         display/intel_pch_refclk.o \
>         display/intel_plane_initial.o \
>+        display/intel_pmdemand.o \
>         display/intel_psr.o \
>         display/intel_quirks.o \
>         display/intel_sprite.o \
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 0490c6412ab5..b3bb2c607650 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -99,6 +99,7 @@
> #include "intel_pcode.h"
> #include "intel_pipe_crc.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_psr.h"
> #include "intel_sdvo.h"
>@@ -6343,6 +6344,10 @@ int intel_atomic_check(struct drm_device *dev,
>                         return ret;
>         }
>=20
>+        ret =3D intel_pmdemand_atomic_check(state);
>+        if (ret)
>+                goto fail;
>+
>         ret =3D intel_atomic_check_crtcs(state);
>         if (ret)
>                 goto fail;
>@@ -6988,6 +6993,14 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>         for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>                 crtc->config =3D new_crtc_state;
>=20
>+        /*
>+         * In XE_LPD+ Pmdemand combines many parameters such as voltage i=
ndex,
>+         * plls, cdclk frequency, QGV point selection parameter etc. Volt=
age
>+         * index, cdclk/ddiclk frequencies are supposed to be configured =
before
>+         * the cdclk config is set.
>+         */
>+        intel_pmdemand_pre_plane_update(state);
>+
>         if (state->modeset) {
>                 drm_atomic_helper_update_legacy_modeset_state(dev, &state=
->base);
>=20
>@@ -7107,6 +7120,7 @@ static void intel_atomic_commit_tail(struct intel_at=
omic_state *state)
>                 intel_verify_planes(state);
>=20
>         intel_sagv_post_plane_update(state);
>+        intel_pmdemand_post_plane_update(state);
>=20
>         drm_atomic_helper_commit_hw_done(&state->base);
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/g=
pu/drm/i915/display/intel_display_core.h
>index 9f66d734edf6..ae45b2c42eb1 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -345,6 +345,15 @@ struct intel_display {
>                 struct intel_global_obj obj;
>         } dbuf;
>=20
>+        struct {
>+                wait_queue_head_t waitqueue;
>+
>+                /* mutex to protect pmdemand programming sequence */
>+                struct mutex lock;
>+
>+                struct intel_global_obj obj;
>+        } pmdemand;
>+
>         struct {
>                 /*
>                  * dkl.phy_lock protects against concurrent access of the
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers=
/gpu/drm/i915/display/intel_display_driver.c
>index 60ce10fc7205..dc8de861339d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -47,6 +47,7 @@
> #include "intel_opregion.h"
> #include "intel_overlay.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_quirks.h"
> #include "intel_vga.h"
>@@ -211,6 +212,8 @@ int intel_display_driver_probe_noirq(struct drm_i915_p=
rivate *i915)
>         if (ret < 0)
>                 goto cleanup_vga;
>=20
>+        intel_pmdemand_init_early(i915);
>+
>         intel_power_domains_init_hw(i915, false);
>=20
>         if (!HAS_DISPLAY(i915))
>@@ -240,6 +243,10 @@ int intel_display_driver_probe_noirq(struct drm_i915_=
private *i915)
>         if (ret)
>                 goto cleanup_vga_client_pw_domain_dmc;
>=20
>+        ret =3D intel_pmdemand_init(i915);
>+        if (ret)
>+                goto cleanup_vga_client_pw_domain_dmc;
>+
>         init_llist_head(&i915->display.atomic_helper.free_list);
>         INIT_WORK(&i915->display.atomic_helper.free_work,
>                   intel_atomic_helper_free_state_worker);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 3b2a287d2041..0b3739310f81 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -18,6 +18,7 @@
> #include "intel_fifo_underrun.h"
> #include "intel_gmbus.h"
> #include "intel_hotplug_irq.h"
>+#include "intel_pmdemand.h"
> #include "intel_psr.h"
> #include "intel_psr_regs.h"
>=20
>@@ -827,12 +828,27 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_p=
rivate *dev_priv)
>                 return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
> }
>=20
>+static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
>+{
>+        wake_up_all(&dev_priv->display.pmdemand.waitqueue);
>+}
>+
> static void
> gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
> {
>         bool found =3D false;
>=20
>-        if (iir & GEN8_DE_MISC_GSE) {
>+        if (DISPLAY_VER(dev_priv) >=3D 14) {
>+                if (iir & (XELPDP_PMDEMAND_RSP |
>+                           XELPDP_PMDEMAND_RSPTOUT_ERR)) {
>+                        if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
>+                                drm_dbg(&dev_priv->drm,
>+                                        "Error waiting for Punit PM Deman=
d Response\n");
>+
>+                        intel_pmdemand_irq_handler(dev_priv);
>+                        found =3D true;
>+                }
>+        } else if (iir & GEN8_DE_MISC_GSE) {
>                 intel_opregion_asle_intr(dev_priv);
>                 found =3D true;
>         }
>@@ -1576,7 +1592,10 @@ void gen8_de_irq_postinstall(struct drm_i915_privat=
e *dev_priv)
>         if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>                 de_port_masked |=3D BXT_DE_PORT_GMBUS;
>=20
>-        if (DISPLAY_VER(dev_priv) >=3D 11) {
>+        if (DISPLAY_VER(dev_priv) >=3D 14) {
>+                de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
>+                                  XELPDP_PMDEMAND_RSP;
>+        } else if (DISPLAY_VER(dev_priv) >=3D 11) {
>                 enum port port;
>=20
>                 if (intel_bios_is_dsi_present(dev_priv, &port))
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 6ed2ece89c3f..59de308234a6 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -20,6 +20,7 @@
> #include "intel_mchbar_regs.h"
> #include "intel_pch_refclk.h"
> #include "intel_pcode.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps_regs.h"
> #include "intel_snps_phy.h"
> #include "skl_watermark.h"
>@@ -1085,6 +1086,10 @@ static void gen9_dbuf_enable(struct drm_i915_privat=
e *dev_priv)
>         dev_priv->display.dbuf.enabled_slices =3D
>                 intel_enabled_dbuf_slices_mask(dev_priv);
>=20
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
>+                                            dev_priv->display.dbuf.enable=
d_slices);
>+
>         /*
>          * Just power up at least 1 slice, we will
>          * figure out later which slices we have and what we need.
>@@ -1096,6 +1101,9 @@ static void gen9_dbuf_enable(struct drm_i915_private=
 *dev_priv)
> static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
> {
>         gen9_dbuf_slices_update(dev_priv, 0);
>+
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                intel_program_dbuf_pmdemand(dev_priv, 0);
> }
>=20
> static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>new file mode 100644
>index 000000000000..01ec4e648de9
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -0,0 +1,560 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright =C2=A9 2023 Intel Corporation
>+ */
>+
>+#include <linux/bitops.h>
>+
>+#include "i915_drv.h"
>+#include "i915_reg.h"
>+#include "intel_bw.h"
>+#include "intel_cdclk.h"
>+#include "intel_cx0_phy.h"
>+#include "intel_de.h"
>+#include "intel_display.h"
>+#include "intel_display_trace.h"
>+#include "intel_pmdemand.h"
>+#include "skl_watermark.h"
>+
>+struct pmdemand_params {
>+        u16 qclk_gv_bw;
>+        u8 voltage_index;
>+        u8 qclk_gv_index;
>+        u8 active_pipes;
>+        u8 dbufs;

Hmm... Looks like this is not being used anymore.

>+        /* Total number of non type C active phys from active_phys_mask *=
/
>+        u8 active_phys;
>+        u16 cdclk_freq_mhz;
>+        /* max from ddi_clocks[]*/
>+        u16 ddiclk_max;
>+        u8 scalers;
>+};
>+
>+struct intel_pmdemand_state {
>+        struct intel_global_state base;
>+
>+        /* Maintain a persistent list of port clocks across all crtcs */
>+        int ddi_clocks[I915_MAX_PIPES];
>+
>+        /* Maintain a persistent list of non type C phys mask */
>+        u16 active_phys_mask;
>+
>+        /* Parameters to be configured in the pmdemand registers */
>+        struct pmdemand_params params;
>+};
>+
>+#define to_intel_pmdemand_state(x) container_of((x), \
>+                                                struct intel_pmdemand_sta=
te, \
>+                                                base)
>+static struct intel_global_state *
>+intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>+{
>+        struct intel_pmdemand_state *pmdmnd_state;
>+
>+        pmdmnd_state =3D kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_K=
ERNEL);
>+        if (!pmdmnd_state)
>+                return NULL;
>+
>+        return &pmdmnd_state->base;
>+}
>+
>+static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
>+                                         struct intel_global_state *state=
)
>+{
>+        kfree(state);
>+}
>+
>+static const struct intel_global_state_funcs intel_pmdemand_funcs =3D {
>+        .atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
>+        .atomic_destroy_state =3D intel_pmdemand_destroy_state,
>+};
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_global_obj_state(state,
>+                                                  &i915->display.pmdemand=
.obj);
>+
>+        if (IS_ERR(pmdemand_state))
>+                return ERR_CAST(pmdemand_state);
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_old_global_obj_state(state,
>+                                                      &i915->display.pmde=
mand.obj);
>+
>+        if (!pmdemand_state)
>+                return NULL;
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_new_global_obj_state(state,
>+                                                      &i915->display.pmde=
mand.obj);
>+
>+        if (!pmdemand_state)
>+                return NULL;
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+int intel_pmdemand_init(struct drm_i915_private *i915)
>+{
>+        struct intel_pmdemand_state *pmdemand_state;
>+
>+        pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
>+        if (!pmdemand_state)
>+                return -ENOMEM;
>+
>+        intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj,
>+                                     &pmdemand_state->base,
>+                                     &intel_pmdemand_funcs);
>+
>+        if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>+                /* Wa_14016740474 */
>+                intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEO=
UT_DISABLE);
>+
>+        return 0;
>+}
>+
>+void intel_pmdemand_init_early(struct drm_i915_private *i915)
>+{
>+        mutex_init(&i915->display.pmdemand.lock);
>+        init_waitqueue_head(&i915->display.pmdemand.waitqueue);
>+}
>+
>+static void pmdemand_update_max_ddiclk(struct intel_atomic_state *state,
>+                                       struct intel_pmdemand_state *pmd_s=
tate)
>+{
>+        int max_ddiclk =3D 0;
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state;
>+
>+        for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>+                pmd_state->ddi_clocks[crtc->pipe] =3D new_crtc_state->por=
t_clock;
>+
>+        for (i =3D 0; i < ARRAY_SIZE(pmd_state->ddi_clocks); i++)
>+                max_ddiclk =3D max(pmd_state->ddi_clocks[i], max_ddiclk);
>+
>+        pmd_state->params.ddiclk_max =3D DIV_ROUND_UP(max_ddiclk, 1000);
>+}
>+
>+static struct intel_encoder *
>+pmdemand_get_crtc_old_encoder(const struct intel_atomic_state *state,
>+                              const struct intel_crtc_state *crtc_state)
>+{
>+        const struct drm_connector_state *connector_state;
>+        const struct drm_connector *connector;
>+        struct intel_encoder *encoder =3D NULL;
>+        struct intel_crtc *master_crtc;
>+        int i;
>+
>+        master_crtc =3D intel_master_crtc(crtc_state);
>+
>+        for_each_old_connector_in_state(&state->base, connector, connecto=
r_state, i) {
>+                if (connector_state->crtc !=3D &master_crtc->base)
>+                        continue;
>+
>+                encoder =3D to_intel_encoder(connector_state->best_encode=
r);
>+        }
>+
>+        return encoder;
>+}
>+
>+static void
>+pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,
>+                                   const struct intel_atomic_state *state=
,
>+                                   struct intel_pmdemand_state *pmd_state=
)
>+{
>+        struct intel_crtc *crtc;
>+        struct intel_encoder *encoder;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+        enum phy phy;
>+

Since we are probably doing a re-spin of this patch, maybe it is worth
adding a short comment here explaining why we do the 2 loops? Just to
make sure we don't get future patches trying to simplify this into a
single loop.

>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i) {
>+                if (!intel_crtc_needs_modeset(new_crtc_state))
>+                        continue;
>+
>+                if (!old_crtc_state->hw.active)
>+                        continue;
>+
>+                encoder =3D pmdemand_get_crtc_old_encoder(state, old_crtc=
_state);
>+                if (!encoder)
>+                        continue;
>+
>+                phy =3D intel_port_to_phy(i915, encoder->port);
>+
>+                pmd_state->active_phys_mask &=3D ~BIT(phy);
>+        }
>+
>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i) {
>+                if (!intel_crtc_needs_modeset(new_crtc_state))
>+                        continue;
>+
>+                if (!new_crtc_state->hw.active)
>+                        continue;
>+
>+                encoder =3D intel_get_crtc_new_encoder(state, new_crtc_st=
ate);
>+                if (!encoder)
>+                        continue;
>+
>+                phy =3D intel_port_to_phy(i915, encoder->port);
>+
>+                if (intel_phy_is_tc(i915, phy))
>+                        continue;
>+
>+                pmd_state->active_phys_mask |=3D BIT(phy);
>+        }
>+
>+        pmd_state->params.active_phys =3D hweight16(pmd_state->active_phy=
s_mask);
>+}
>+
>+static bool pmdemand_needs_update(struct intel_atomic_state *state)
>+{
>+        bool states_checked =3D false;
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+
>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i) {
>+                const struct intel_bw_state *new_bw_state, *old_bw_state;
>+                const struct intel_cdclk_state *new_cdclk_state;
>+                const struct intel_cdclk_state *old_cdclk_state;
>+                const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_=
state;
>+
>+                if (old_crtc_state->port_clock !=3D new_crtc_state->port_=
clock)
>+                        return true;
>+
>+                /*
>+                 * For the below settings once through the loop is enough=
.
>+                 * Some pmdemand_atomic_check calls might trigger read lo=
ck not
>+                 * taken assert if these following checks are kept outsid=
e this
>+                 * loop.
>+                 */
>+                if (states_checked)
>+                        continue;
>+
>+                new_bw_state =3D intel_atomic_get_new_bw_state(state);
>+                old_bw_state =3D intel_atomic_get_old_bw_state(state);
>+                if (new_bw_state && new_bw_state->qgv_point_peakbw !=3D
>+                    old_bw_state->qgv_point_peakbw)
>+                        return true;
>+
>+                new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state)=
;
>+                old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state)=
;
>+                if (new_dbuf_state && new_dbuf_state->active_pipes !=3D
>+                    old_dbuf_state->active_pipes)
>+                        return true;
>+
>+                new_cdclk_state =3D intel_atomic_get_new_cdclk_state(stat=
e);
>+                old_cdclk_state =3D intel_atomic_get_old_cdclk_state(stat=
e);
>+                if (new_cdclk_state &&
>+                    (new_cdclk_state->logical.cdclk !=3D
>+                     old_cdclk_state->logical.cdclk ||
>+                     new_cdclk_state->logical.voltage_level !=3D
>+                     old_cdclk_state->logical.voltage_level))
>+                        return true;
>+
>+                states_checked =3D true;
>+        }
>+
>+        return false;

I'm afraid we are missing one thing in this function: we need to know
whether the number of active non-TC PHYs could change and return true if
so, otherwise we could end up skipping a required PM Demand transaction.

I would implement that using the same 2-loop strategy from
pmdemand_update_active_non_tc_phys() but having two bitmasks: one for
PHYs of CTRCs from old state being disabled (first loop) and another for
active CRTCs in the new state (second loop). If those masks match each
other, that means the number of active PHYs will not change, otherwise
there is a possibility that it will change.

Perhaps we should rename and change
pmdemand_update_active_non_tc_phys()'s implementation to fill those two
masks and then we could use them appropriately depending on where that
function is called. For example, if we rename and call it like

  intel_pmdmand_calc_non_tc_phy_masks(i915, state, inactive_phys_mask,
                                      active_phys_mask)
, we would:

  - Here in this function, return true if inactive_mask !=3D active_mask.

  - In intel_pmdemand_atomic_check(), update the mask in the following
    order:

    - new_pmdemand_state->active_phys_mask &=3D ~inactive_phys_mask;
    - new_pmdemand_state->active_phys_mask |=3D active_phys_mask;

>+}
>+
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_bw_state *new_bw_state;
>+        const struct intel_cdclk_state *new_cdclk_state;
>+        const struct intel_dbuf_state *new_dbuf_state;
>+        struct intel_pmdemand_state *new_pmdemand_state;
>+        int ret;
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return 0;
>+
>+        if (!pmdemand_needs_update(state))
>+                return 0;
>+
>+        new_pmdemand_state =3D intel_atomic_get_pmdemand_state(state);
>+        if (IS_ERR(new_pmdemand_state))
>+                return PTR_ERR(new_pmdemand_state);
>+
>+        ret =3D intel_atomic_lock_global_state(&new_pmdemand_state->base)=
;
>+        if (ret)
>+                return ret;
>+
>+        new_bw_state =3D intel_atomic_get_bw_state(state);
>+        if (IS_ERR(new_bw_state))
>+                return PTR_ERR(new_bw_state);
>+
>+        /* firmware will calculate the qclck_gc_index, requirement is set=
 to 0 */
>+        new_pmdemand_state->params.qclk_gv_index =3D 0;
>+        new_pmdemand_state->params.qclk_gv_bw =3D
>+                min_t(u16, new_bw_state->qgv_point_peakbw, 0xffff);
>+
>+        new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
>+        if (IS_ERR(new_dbuf_state))
>+                return PTR_ERR(new_dbuf_state);
>+
>+        new_pmdemand_state->params.active_pipes =3D
>+                min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>+
>+        new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>+        if (IS_ERR(new_cdclk_state))
>+                return PTR_ERR(new_cdclk_state);
>+
>+        new_pmdemand_state->params.voltage_index =3D
>+                new_cdclk_state->logical.voltage_level;
>+        new_pmdemand_state->params.cdclk_freq_mhz =3D
>+                DIV_ROUND_UP(new_cdclk_state->logical.cdclk, 1000);
>+
>+        pmdemand_update_max_ddiclk(state, new_pmdemand_state);
>+
>+        pmdemand_update_active_non_tc_phys(i915, state, new_pmdemand_stat=
e);
>+
>+        /*
>+         * Setting scalers to max as it can not be calculated during flip=
s and
>+         * fastsets without taking global states locks.
>+         */
>+        new_pmdemand_state->params.scalers =3D 7;
>+
>+        ret =3D intel_atomic_serialize_global_state(&new_pmdemand_state->=
base);
>+        if (ret)
>+                return ret;
>+
>+        return 0;
>+}
>+
>+static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private=
 *i915)
>+{
>+        return !(intel_de_wait_for_clear(i915,
>+                                         XELPDP_INITIATE_PMDEMAND_REQUEST=
(1),
>+                                         XELPDP_PMDEMAND_REQ_ENABLE, 10) =
||
>+                 intel_de_wait_for_clear(i915,
>+                                         GEN12_DCPR_STATUS_1,
>+                                         XELPDP_PMDEMAND_INFLIGHT_STATUS,=
 10));
>+}
>+
>+static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
>+{
>+        return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
 &
>+                 XELPDP_PMDEMAND_REQ_ENABLE);
>+}
>+
>+static int intel_pmdemand_wait(struct drm_i915_private *i915)
>+{
>+        DEFINE_WAIT(wait);

Hm... I think this is a leftover of a previous version of this function. We
should remove this line.

>+        int ret;
>+        const unsigned int timeout_ms =3D 10;
>+
>+        ret =3D wait_event_timeout(i915->display.pmdemand.waitqueue,
>+                                 intel_pmdemand_req_complete(i915),
>+                                 msecs_to_jiffies_timeout(timeout_ms));
>+        if (ret =3D=3D 0)
>+                drm_err(&i915->drm,
>+                        "timed out waiting for Punit PM Demand Response\n=
");
>+
>+        return ret;
>+}
>+
>+/* Required to be programmed during Display Init Sequences. */
>+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>+                                 u8 dbuf_slices)
>+{
>+        u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>+
>+        mutex_lock(&i915->display.pmdemand.lock);
>+        if (drm_WARN_ON(&i915->drm,
>+                        !intel_pmdemand_check_prev_transaction(i915)))
>+                goto unlock;
>+
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                     XELPDP_PMDEMAND_DBUFS_MASK, XELPDP_PMDEMAND_DBUFS(db=
ufs));
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                     XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+        intel_pmdemand_wait(i915);
>+
>+unlock:
>+        mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static void update_pmdemand_values(const struct intel_pmdemand_state *new=
,
>+                                   const struct intel_pmdemand_state *old=
,
>+                                   u32 *reg1, u32 *reg2)
>+{
>+        u32 plls, tmp;
>+
>+        /*
>+         * The pmdemand parameter updates happens in two steps. Pre plane=
 and
>+         * post plane updates. During the pre plane, as DE might still be
>+         * handling with some old operations, to avoid unwanted performan=
ce
>+         * issues, program the pmdemand parameters with higher of old and=
 new
>+         * values. And then after once settled, use the new parameter val=
ues
>+         * as part of the post plane update.
>+         */
>+
>+        /* Set 1*/
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_BW_MASK;
>+        tmp =3D old ? max(old->params.qclk_gv_bw, new->params.qclk_gv_bw)=
 :
>+                    new->params.qclk_gv_bw;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
>+        tmp =3D old ? max(old->params.voltage_index, new->params.voltage_=
index) :
>+                    new->params.voltage_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
>+        tmp =3D old ? max(old->params.qclk_gv_index, new->params.qclk_gv_=
index) :
>+                    new->params.qclk_gv_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PIPES_MASK;
>+        tmp =3D old ? max(old->params.active_pipes, new->params.active_pi=
pes) :
>+                    new->params.active_pipes;
>+        *reg1 |=3D XELPDP_PMDEMAND_PIPES(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PHYS_MASK;
>+        plls =3D old ? max(old->params.active_phys, new->params.active_ph=
ys) :
>+                     new->params.active_phys;
>+        plls =3D min_t(u32, plls, 7);
>+        *reg1 |=3D XELPDP_PMDEMAND_PHYS(plls);
>+
>+        /* Set 2*/
>+        *reg2 &=3D ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
>+        tmp =3D old ? max(old->params.cdclk_freq_mhz,
>+                        new->params.cdclk_freq_mhz) :
>+                    new->params.cdclk_freq_mhz;
>+        *reg2 |=3D XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
>+        tmp =3D old ? max(old->params.ddiclk_max, new->params.ddiclk_max)=
 :
>+                    new->params.ddiclk_max;
>+        *reg2 |=3D XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_SCALERS_MASK;
>+        tmp =3D old ? max(old->params.scalers, new->params.scalers) :
>+                    new->params.scalers;
>+        *reg2 |=3D XELPDP_PMDEMAND_SCALERS(tmp);
>+
>+        /*
>+         * Active_PLLs starts with 1 because of CDCLK PLL.
>+         * TODO: Missing to account genlock filter when it gets used.
>+         */
>+        plls =3D min_t(u32, plls + 1, 7);
>+        *reg2 &=3D ~XELPDP_PMDEMAND_PLLS_MASK;
>+        *reg2 |=3D XELPDP_PMDEMAND_PLLS(plls);
>+}
>+
>+static void intel_program_pmdemand(struct drm_i915_private *i915,
>+                                   const struct intel_pmdemand_state *new=
,
>+                                   const struct intel_pmdemand_state *old=
)
>+{
>+        bool changed =3D false;
>+        u32 reg1, mod_reg1;
>+        u32 reg2, mod_reg2;
>+
>+        mutex_lock(&i915->display.pmdemand.lock);
>+        if (drm_WARN_ON(&i915->drm,
>+                        !intel_pmdemand_check_prev_transaction(i915)))
>+                goto unlock;
>+
>+        reg1 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0))=
;
>+        mod_reg1 =3D reg1;
>+
>+        reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>+        mod_reg2 =3D reg2;
>+
>+        update_pmdemand_values(new, old, &mod_reg1, &mod_reg2);
>+
>+        if (reg1 !=3D mod_reg1) {
>+                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                               mod_reg1);
>+                changed =3D true;
>+        }
>+
>+        if (reg2 !=3D mod_reg2) {
>+                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
>+                               mod_reg2);
>+                changed =3D true;
>+        }
>+
>+        /* Initiate pm demand request only if register values are changed=
 */
>+        if (!changed)
>+                goto unlock;
>+
>+        drm_dbg_kms(&i915->drm,
>+                    "initate pmdemand request values: (0x%x 0x%x)\n",
>+                    mod_reg1, mod_reg2);
>+
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                     XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+        intel_pmdemand_wait(i915);
>+
>+unlock:
>+        mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static bool
>+intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,
>+                             const struct intel_pmdemand_state *old)
>+{
>+        return memcmp(&new->params, &old->params, sizeof(new->params)) !=
=3D 0;
>+}
>+
>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_pmdemand_state *new_pmdmnd_state =3D
>+                intel_atomic_get_new_pmdemand_state(state);
>+        const struct intel_pmdemand_state *old_pmdmnd_state =3D
>+                intel_atomic_get_old_pmdemand_state(state);
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_pmdmnd_state ||
>+            !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_st=
ate))
>+                return;
>+
>+        intel_program_pmdemand(i915, new_pmdmnd_state, old_pmdmnd_state);
>+}
>+
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_pmdemand_state *new_pmdmnd_state =3D
>+                intel_atomic_get_new_pmdemand_state(state);
>+        const struct intel_pmdemand_state *old_pmdmnd_state =3D
>+                intel_atomic_get_old_pmdemand_state(state);
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_pmdmnd_state ||
>+            !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_st=
ate))
>+                return;
>+
>+        intel_program_pmdemand(i915, new_pmdmnd_state, NULL);
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>new file mode 100644
>index 000000000000..2883b5d97a44
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -0,0 +1,24 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright =C2=A9 2023 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_PMDEMAND_H__
>+#define __INTEL_PMDEMAND_H__
>+
>+#include <linux/types.h>
>+
>+struct drm_i915_private;
>+struct intel_atomic_state;
>+struct intel_crtc_state;
>+struct intel_plane_state;
>+
>+void intel_pmdemand_init_early(struct drm_i915_private *i915);
>+int intel_pmdemand_init(struct drm_i915_private *i915);
>+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>+                                 u8 dbuf_slices);

Maybe rename this to intel_pmdemand_program_dbuf() to be consistent with
the rest of functions exported here?

Also, since we probably are doing a re-spin of this patch, do you think
we could also take the opportunity to make static functions in
intel_pmdemand.c follow the same naming scheme?

--
Gustavo Sousa

>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
>+
>+#endif /* __INTEL_PMDEMAND_H__ */
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 2a9ab8de8421..91fb12b65c92 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4450,8 +4450,10 @@
> #define GEN8_DE_MISC_IMR _MMIO(0x44464)
> #define GEN8_DE_MISC_IIR _MMIO(0x44468)
> #define GEN8_DE_MISC_IER _MMIO(0x4446c)
>-#define  GEN8_DE_MISC_GSE                (1 << 27)
>-#define  GEN8_DE_EDP_PSR                (1 << 19)
>+#define  XELPDP_PMDEMAND_RSPTOUT_ERR        REG_BIT(27)
>+#define  GEN8_DE_MISC_GSE                REG_BIT(27)
>+#define  GEN8_DE_EDP_PSR                REG_BIT(19)
>+#define  XELPDP_PMDEMAND_RSP                REG_BIT(3)
>=20
> #define GEN8_PCU_ISR _MMIO(0x444e0)
> #define GEN8_PCU_IMR _MMIO(0x444e4)
>@@ -4536,6 +4538,33 @@
> #define  XELPDP_DP_ALT_HPD_LONG_DETECT                REG_BIT(1)
> #define  XELPDP_DP_ALT_HPD_SHORT_DETECT                REG_BIT(0)
>=20
>+#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)                _MMIO(0x45=
230 + 4 * (dword))
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK                REG_GENMASK(31, 1=
6)
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)                        REG_FIELD_P=
REP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK                REG_GENMASK(14=
, 12)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)                REG_FIELD_PREP(X=
ELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK                REG_GENMASK(11=
, 8)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)                REG_FIELD_PREP(X=
ELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_PIPES_MASK                        REG_GENMASK(7,=
 6)
>+#define  XELPDP_PMDEMAND_PIPES(x)                        REG_FIELD_PREP(X=
ELPDP_PMDEMAND_PIPES_MASK, x)
>+#define  XELPDP_PMDEMAND_DBUFS_MASK                        REG_GENMASK(5,=
 4)
>+#define  XELPDP_PMDEMAND_DBUFS(x)                        REG_FIELD_PREP(X=
ELPDP_PMDEMAND_DBUFS_MASK, x)
>+#define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PHYS(x)                        REG_FIELD_PREP(XE=
LPDP_PMDEMAND_PHYS_MASK, x)
>+
>+#define  XELPDP_PMDEMAND_REQ_ENABLE                        REG_BIT(31)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK                REG_GENMASK(30, 2=
0)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)                        REG_FIELD_P=
REP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK                REG_GENMASK(18, =
8)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)                        REG_FIELD_=
PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_SCALERS_MASK                        REG_GENMASK(=
6, 4)
>+#define  XELPDP_PMDEMAND_SCALERS(x)                        REG_FIELD_PREP=
(XELPDP_PMDEMAND_SCALERS_MASK, x)
>+#define  XELPDP_PMDEMAND_PLLS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PLLS(x)                        REG_FIELD_PREP(XE=
LPDP_PMDEMAND_PLLS_MASK, x)
>+
>+#define GEN12_DCPR_STATUS_1                                _MMIO(0x46440)
>+#define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>+
> #define ILK_DISPLAY_CHICKEN2        _MMIO(0x42004)
> /* Required on all Ironlake and Sandybridge according to the B-Spec. */
> #define   ILK_ELPIN_409_SELECT        REG_BIT(25)
>@@ -4695,6 +4724,9 @@
> #define   DCPR_SEND_RESP_IMM                        REG_BIT(25)
> #define   DCPR_CLEAR_MEMSTAT_DIS                REG_BIT(24)
>=20
>+#define XELPD_CHICKEN_DCPR_3                        _MMIO(0x46438)
>+#define   DMD_RSP_TIMEOUT_DISABLE                REG_BIT(19)
>+
> #define SKL_DFSM                        _MMIO(0x51000)
> #define   SKL_DFSM_DISPLAY_PM_DISABLE        (1 << 27)
> #define   SKL_DFSM_DISPLAY_HDCP_DISABLE        (1 << 25)
>--=20
>2.34.1
>
