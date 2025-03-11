Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8B2A5D0E4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 21:44:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C0AA10E681;
	Tue, 11 Mar 2025 20:44:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e+5DWKIx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1048310E5ED;
 Tue, 11 Mar 2025 20:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741725853; x=1773261853;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9JJz6hmpMldkW9r7YFOit2v5Hboi9Od3wLC3P87YkIY=;
 b=e+5DWKIxz2TQQNVkCYC5kwzWCkURftgDNyQHl90HLG3YfAvNtS1RWiTc
 TCvUgdHIHbl+ScJUmmyGGpxdhRDXAj9LKYEV89OiJ7PL/r4WAUTWBg67C
 mThX9FD5zXLNuS3PWr8WKtWKekYBlJcXS3nqKwMdlhrmpZbHa487rdtp4
 5heW5W2Wk78tFAYftbgs4jyuU0Jhr9v9/MiwlY11j0KEVVqniedSKH9HV
 AxijCVw+BDmV47EeqTiKgR/WNxYH2COsLEM8TmifB+mxT39GOcYAepQC1
 yGZX58yqm83CEdMqHDTxd7OZLR6HizI2tZwRjV9eBcxo412ysDoGHv6/v A==;
X-CSE-ConnectionGUID: hPQikYa/Q4iv8p6WZP7hGQ==
X-CSE-MsgGUID: Ak6bc5AHThGvOz0T3rCjxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="46696777"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="46696777"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 13:44:13 -0700
X-CSE-ConnectionGUID: pIIQEio9RSehXE7PzhgLnQ==
X-CSE-MsgGUID: 89OIq0yNSny0ix6jPSZB3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120388196"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 13:44:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 13:44:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 13:44:11 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 13:44:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ehgqg+yQ9ENoRfU5OSn9TVPzqyKW9Lb2AwStePdfImV4qWueCqvUIY2r7+ZzYlAjL9356/2GZone0hvN3gtEbx1ubdZDlwguqAFY9EMkiZ3l0aAUp2uys3Bet9ljSvWCt6Mo3LMSLyKnKdfQv1gFMzKi63klPovwslwR0WW/hEib+v88EvR2kfLEC7dOQxBqHmos/Dk3CBL72IPaOkDqq0I2wQLPVN6hz0TzwBFkVhLMiKBEE9ve/vBkSxnxP1ov55kBAoeeBM1aXfnSYgfqgjuIEZqnftGAOArk2+KGw9XESN98dSB0EZWUAnXcFcTu3hrUo6G6VJoSiDsGWsJntw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6IdaZfdvwaQ5M5eQO1bG40KQ92HjuGJiWsGxhisp510=;
 b=s5yuIql/88FYhVkSGztRxKlFsAaXdH398++W42ngf8JiV1oN9NjD7Sp5WOH3gSXcUcgBPOzR+86mi/13jttAH+v2ZGDwa4QY/FHrRC90q1vtO1ypFbmuWxLA9tSELvqckUGEz00c8adSFpIh11/p1vuTyvSfHc2oM7Ot2D+jFsv/N41QL9ubjlNTo2Q4mamdWaixPoKCBAbzNS0a2p7KAMY4Ztkag3pRq+djywMpuXOk8YepOQwCjv+6ZRjk11ITYu5mA/YPcpsJB5/SjvZxAQs2wk1ZsG7tj5tUAXAzCpqGDatTzzjczu70dEj6kRp9MAVI+OlvdFLQhLDRhNTzPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA2PR11MB4970.namprd11.prod.outlook.com (2603:10b6:806:11f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 20:43:54 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 20:43:53 +0000
Date: Tue, 11 Mar 2025 16:43:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 4/6] drm/i915/display: convert to display runtime PM
 interfaces
Message-ID: <Z9CghEcsFEmCPipt@intel.com>
References: <cover.1741694400.git.jani.nikula@intel.com>
 <9888586a1e2b479ddef6519818bdb170f7b037d2.1741694400.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9888586a1e2b479ddef6519818bdb170f7b037d2.1741694400.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0328.namprd04.prod.outlook.com
 (2603:10b6:303:82::33) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SA2PR11MB4970:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c1612d7-8ad7-437b-9e9b-08dd60dd6fbc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1P1ZJxGqm1LSA/ncH6jF+mFg0AF4LPOZxcBUmKthaclz6aFJnGsEf0htaIl+?=
 =?us-ascii?Q?gqFYoU2nnegKbcys19wuzVJcMOoeLAWH6xL4km3SznYya9zIubski4BHviYA?=
 =?us-ascii?Q?7y7DA66qjTx5H3YfCXW/O2cCH96hMv02HU1M/vbuKCBZ336UsUYoAeo5kBR1?=
 =?us-ascii?Q?72KDU05E2APcxEtdwUnooXBdTtSCP+cnoq/j0w3uVh4QUtGuBE2jpBo9Fyg1?=
 =?us-ascii?Q?jf8D0N4t8sSlHs2DJ3tp8UCdHeyfZvQpPk9gKcFXmqUVAoKeasyoc1J1Dg/e?=
 =?us-ascii?Q?fh/RHCN//cN4tvbpKMnVMPqCfLO9DNEbR72eLvrQuehAOejKbVeAd9D6eP1L?=
 =?us-ascii?Q?syjuGvWxDZr+4wrDkMcNf0S+uLQOOPontpB3DyoWr0Gw/x9Tf8Clfuj0tz80?=
 =?us-ascii?Q?WJ56toU+FottBw2U4HD81GyCVOWk9kq0CGx1XXsL7JVYSRKyC01N3OyNEped?=
 =?us-ascii?Q?uXVFWfjTVz5B9uy13JVSwGs9NtVFWuyrJgwYLhqIHShq1xPhWKn89N09Vvpu?=
 =?us-ascii?Q?wARivbI1MZMX0DlXQcQPXdt+1xZ1wL4wxXbDaaYuM8dgKgKepv0Kq8f/PGny?=
 =?us-ascii?Q?l908j536WNABxr9fPMZD7cCOSXZswafBwYYt1P9R9GO1UBL/zrE8scRmIml2?=
 =?us-ascii?Q?XspZzt2pxWprzB1CMAw2lKvVDk8HKysSRC7zASBVwRPcaS2zo+vkTL0pNZl1?=
 =?us-ascii?Q?272yWBD3q+sqy7nkIc2IRqfHZokX6lMyw5bH9VLn40wBTWDoY2JpG6LpPPrH?=
 =?us-ascii?Q?unUPGMQC9mXSIXjcJZa8fHRKxP3dHmtjnH+RsA1BHcKNxhSPSo53FscSlFSV?=
 =?us-ascii?Q?wHQs91ISkuoxbQGVUJbWXFu1KGC8TYa5nxz93eM0psaa4ks4F1Lc2qWZEBSH?=
 =?us-ascii?Q?MxxgmLd7DtcAxCdv3+wptqnzqHwAiTfOdD7GRd0YJmW3WQuQJM2jjJBPgNVB?=
 =?us-ascii?Q?pi1o3CPnS6dWiGTV/aa9uYWOTcPR8VS+y4LWY1NDQjo2RHfdNQ503cJaHPHw?=
 =?us-ascii?Q?4s94vhUWpgmJ4Jey2avPMECJdiZ62f5BR93MrK7jTYtasHwVASQn7TpoNTpE?=
 =?us-ascii?Q?sLpTQPEKjFvDjPvYswalUoCMOrTUn79rFtM/g+6ngHUHiftexdw8N7iC9aD+?=
 =?us-ascii?Q?Hesrekfx6Nkwhef80b6xi2mEG9ionHeKmMY/INSNH7pQhQ2bclSkBki7mnPY?=
 =?us-ascii?Q?Vg3ssOg4QZPaveAt0XouZE68ZA/lvxRXOpw9EyXKH0nlUIQNodvCi/2Eg9by?=
 =?us-ascii?Q?2N3isIsSi4cZmeUX+1nYx0oqbpinbenT1hHSEkcDgTpgqm+jMFEL0MNUqRcR?=
 =?us-ascii?Q?tw9GdDWWRsrJd2oOnRi8IfNy0OQEIbTV0Hh9ZoUiYgoXYYSEJQCj2hExyobd?=
 =?us-ascii?Q?IBWm3xHEx5ZVa7Z9kyoYThDZz9IP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PGfTMwL3LS1HptMiayG5okRDKfTEdUS31WLZB1HOeUBtr7YR/ZVB1vRzp3RX?=
 =?us-ascii?Q?A3eXONW0eQV/a/LyJpZBIrZpMEAu2dT1sq3wuPYTBi2G/xUUizjWZjVX5ZRN?=
 =?us-ascii?Q?DwQseiIwJCz0/s5hTfBBYpo+ivUHG0yENE9z1J0/LqHDhENuvGTVbtR0Z3nV?=
 =?us-ascii?Q?sVhsI8XGC+JrcK549EKR/czoUvjZIUT91BRwEKPtP7hAI3/c3LCJrudwvDKF?=
 =?us-ascii?Q?0Q3IaQBGIVK7mAXQy2gr10Npsp6ZxF1CFaYn+rk4Hc7Nj40lzkP9sF5RSAkv?=
 =?us-ascii?Q?10tpdobeHEKPxPVmvIxqgWz0uhoHmnMZnDwAC/FPvNRRH2VOIhxiskDQ3XA/?=
 =?us-ascii?Q?GV7QLjG12IsXXTZO9Hq00wtH25LdgLNQteagDdVFgsgrCYiG04TS2THGFnae?=
 =?us-ascii?Q?vi+cfLIB+BoYTANr7y7lGcZyO1O+4I+JyYIniFwnXlh3LUkLIoK+tjkaVpGL?=
 =?us-ascii?Q?rhXMSTr3gY84FsUavayrDOxEgQ8nhYOLkGbGPKA2BA6DaURbgvF1F8Nqqkmn?=
 =?us-ascii?Q?yv9vG7IBJbr7IsGSTg2QtiVlAEr4EU67ZKhL0BxSqsZu6bb2SFO/OV58kCqa?=
 =?us-ascii?Q?yg189cRSOVcG99AtnSaqfzzMOlUv/t9irGvT6s1yJgVPOcrHEeG7DEKB/Zgz?=
 =?us-ascii?Q?DdWt/8Ywtz6iw62Z8LYq0CYY1/AYkMRaw6AyOsoUzSocAYpiWzLeeaQkuK+d?=
 =?us-ascii?Q?TcDxG1B1cSW9SevaK+bCTxi6sp8iSbk8oDW26SdEjsbGFfX1g6v4u9Av5i0B?=
 =?us-ascii?Q?ZOIxQierpcZXwslBoPZrqlxi97IQyTVHzJJJ6W51h3pAvodEL9QRnOiZ75wH?=
 =?us-ascii?Q?4PUgxgA+UM4+mh2WH4eZHkk0VnEJ7GqnAIuCS5iRCHaH38Mqrj8hKo6f5leQ?=
 =?us-ascii?Q?W/C5+b3I6jdijSzYW8KO+YNRUzmTPI0QKQ2PUfTyJrVyAQrp3Fw7CNp771lk?=
 =?us-ascii?Q?0vxa8aUzns2x0ssnCdnToxM1WqveB2/AIEsNZgAv1y1ge5o/YDfNYyz41L4S?=
 =?us-ascii?Q?HezfITlxwTsvkZmGtKaF/n/l0xZ4u8CjWpdQlmJB/oUhTVDFoncOYRolIVUN?=
 =?us-ascii?Q?y/RmqO2gWxXniIkLdWGDRUL8OCfRKYGPCdV9omg6Qez9bzFDMFTlaE0Mwz3D?=
 =?us-ascii?Q?ZFPPb9hhC0YHqF+aHKnMaFKqStRJj9lsp365JSuEq4B4256Kj1pbxPAgQhJT?=
 =?us-ascii?Q?0RSo9wzX7WZBliZjYq9Vja5EH2PPjjwin1qkizKFZHNM8r4EaPX14f+LSsXt?=
 =?us-ascii?Q?UU7pC2BYEm8J1PWctRCC+jNe+TRpzjTI22mBfSfFfMAZL/h//1gdi+SJVU/K?=
 =?us-ascii?Q?LQkO8ZbaaNrqeRwVEFpIQKFEuW56kuhVjzNPUq6F933vdjjYMI42Zs5Oin2l?=
 =?us-ascii?Q?tEFT3cx66iPCVHXBl1pWzD7eYoG+SGFdiK47f/1VdQpBe9EFbQMn83hEvy1s?=
 =?us-ascii?Q?2Yb5JmUrdoCXZTwOrT1rvayr35WZ7Vw1H+6tYsye3Wt50A9SP5j6kxy8N7aq?=
 =?us-ascii?Q?IFqtf42hr0jMMP26AW/dNisJyDnvR/M1d/LdGTgzgSfPImjTNi3SRCXdHbw4?=
 =?us-ascii?Q?Qbsf+bUx2bTKaim1paZOCJ5rHjWZstzba4k3iq8mUmsby7AMhKPM+KMAh5ec?=
 =?us-ascii?Q?/A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c1612d7-8ad7-437b-9e9b-08dd60dd6fbc
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 20:43:53.7506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4a0q5J07vPvUpEOCA86UXJXR4He4nefEU0D9UKLf5qUp2QYlFHLiRZOSI9kzo8k6FJTpgDaVuXx0R6GbKJNx/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4970
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

On Tue, Mar 11, 2025 at 02:05:38PM +0200, Jani Nikula wrote:
> Convert i915 runtime PM interfaces to display runtime PM interfaces all
> over the place in display code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c          |  8 ++++----
>  .../drm/i915/display/intel_display_debugfs.c    | 17 +++++++----------
>  .../gpu/drm/i915/display/intel_display_irq.c    |  5 +++--
>  drivers/gpu/drm/i915/display/intel_dmc.c        |  9 +++++----
>  drivers/gpu/drm/i915/display/intel_dp.c         |  5 ++---
>  drivers/gpu/drm/i915/display/intel_dpt.c        |  7 ++++---
>  drivers/gpu/drm/i915/display/intel_dsb.c        | 17 +++++++++--------
>  drivers/gpu/drm/i915/display/intel_fb_pin.c     |  7 ++++---
>  drivers/gpu/drm/i915/display/intel_fbc.c        |  8 ++++----
>  drivers/gpu/drm/i915/display/intel_fbdev.c      | 11 +++++++----
>  drivers/gpu/drm/i915/display/intel_hotplug.c    |  8 +++++---
>  drivers/gpu/drm/i915/display/intel_psr.c        | 17 ++++++-----------
>  12 files changed, 60 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
> index 674a0e5f0858..4307e2ed03d9 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -10,6 +10,7 @@
>  #include "i915_reg.h"
>  #include "intel_color_regs.h"
>  #include "intel_de.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_pcode.h"
>  
> @@ -344,10 +345,9 @@ static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
>  {
>  	struct intel_crtc *crtc = m->private;
>  	struct intel_display *display = to_intel_display(crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  
> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> +	wakeref = intel_display_rpm_get(display);
>  
>  	seq_printf(m, "Enabled by kernel parameter: %s\n",
>  		   str_yes_no(display->params.enable_ips));
> @@ -361,7 +361,7 @@ static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
>  			seq_puts(m, "Currently: disabled\n");
>  	}
>  
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index fdedf65bee53..c4b3716f9506 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -24,6 +24,7 @@
>  #include "intel_display_debugfs_params.h"
>  #include "intel_display_power.h"
>  #include "intel_display_power_well.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
> @@ -580,13 +581,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  static int i915_display_info(struct seq_file *m, void *unused)
>  {
>  	struct intel_display *display = node_to_intel_display(m->private);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_crtc *crtc;
>  	struct drm_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  
> -	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	wakeref = intel_display_rpm_get(display);
>  
>  	drm_modeset_lock_all(display->drm);
>  
> @@ -605,7 +605,7 @@ static int i915_display_info(struct seq_file *m, void *unused)
>  
>  	drm_modeset_unlock_all(display->drm);
>  
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  
>  	return 0;
>  }
> @@ -690,14 +690,11 @@ static bool
>  intel_lpsp_power_well_enabled(struct intel_display *display,
>  			      enum i915_power_well_id power_well_id)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -	intel_wakeref_t wakeref;
>  	bool is_enabled;
>  
> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> -	is_enabled = intel_display_power_well_is_enabled(display,
> -							 power_well_id);
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	with_intel_display_rpm(display)
> +		is_enabled = intel_display_power_well_is_enabled(display,
> +								 power_well_id);
>  

looking this here... I really dislike the 'with_' macro...
I really prefer the explicit get and put, even with the ref_tracker
declaration.

But well, not a blocker:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	return is_enabled;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index aa23bb817805..246981a7340e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -14,6 +14,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc_wl.h"
> @@ -1545,7 +1546,7 @@ void gen11_display_irq_handler(struct drm_i915_private *i915)
>  	struct intel_display *display = &i915->display;
>  	u32 disp_ctl;
>  
> -	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> +	intel_display_rpm_assert_block(display);
>  	/*
>  	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
>  	 * for the display related bits.
> @@ -1556,7 +1557,7 @@ void gen11_display_irq_handler(struct drm_i915_private *i915)
>  	gen8_de_irq_handler(i915, disp_ctl);
>  	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
>  
> -	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> +	intel_display_rpm_assert_unblock(display);
>  }
>  
>  static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index fa6944e55d95..eb6b47ba0870 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -28,6 +28,7 @@
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
> +#include "intel_display_rpm.h"
>  #include "intel_dmc.h"
>  #include "intel_dmc_regs.h"
>  #include "intel_step.h"
> @@ -595,7 +596,7 @@ void intel_dmc_load_program(struct intel_display *display)
>  
>  	disable_all_event_handlers(display);
>  
> -	assert_rpm_wakelock_held(&i915->runtime_pm);
> +	assert_display_rpm_held(display);
>  
>  	preempt_disable();
>  
> @@ -1237,13 +1238,13 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  	struct intel_display *display = m->private;
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_dmc *dmc = display_to_dmc(display);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
>  
>  	if (!HAS_DMC(display))
>  		return -ENODEV;
>  
> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> +	wakeref = intel_display_rpm_get(display);
>  
>  	seq_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));
>  	seq_printf(m, "fw loaded: %s\n",
> @@ -1299,7 +1300,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  		   intel_de_read(display, DMC_SSP_BASE));
>  	seq_printf(m, "htp: 0x%08x\n", intel_de_read(display, DMC_HTP_SKL));
>  
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a236b5fc7a3d..0d5f31d552cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -62,6 +62,7 @@
>  #include "intel_ddi.h"
>  #include "intel_de.h"
>  #include "intel_display_driver.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> @@ -87,7 +88,6 @@
>  #include "intel_pfit.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
> -#include "intel_runtime_pm.h"
>  #include "intel_quirks.h"
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
> @@ -6144,13 +6144,12 @@ enum irqreturn
>  intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
>  {
>  	struct intel_display *display = to_intel_display(dig_port);
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
>  
>  	if (dig_port->base.type == INTEL_OUTPUT_EDP &&
>  	    (long_hpd ||
> -	     intel_runtime_pm_suspended(&i915->runtime_pm) ||
> +	     intel_display_rpm_suspended(display) ||
>  	     !intel_pps_have_panel_power_or_vdd(intel_dp))) {
>  		/*
>  		 * vdd off can generate a long/short pulse on eDP which
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index 0d8ebe38226e..43bd97e4f589 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -9,6 +9,7 @@
>  #include "gt/gen8_ppgtt.h"
>  
>  #include "i915_drv.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
> @@ -127,7 +128,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
>  	struct drm_i915_private *i915 = vm->i915;
>  	struct intel_display *display = &i915->display;
>  	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	struct i915_vma *vma;
>  	void __iomem *iomem;
>  	struct i915_gem_ww_ctx ww;
> @@ -137,7 +138,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
>  	if (i915_gem_object_is_stolen(dpt->obj))
>  		pin_flags |= PIN_MAPPABLE;
>  
> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> +	wakeref = intel_display_rpm_get(display);
>  	atomic_inc(&display->restore.pending_fb_pin);
>  
>  	for_i915_gem_ww(&ww, err, true) {
> @@ -169,7 +170,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
>  	dpt->obj->mm.dirty = true;
>  
>  	atomic_dec(&display->restore.pending_fb_pin);
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  
>  	return err ? ERR_PTR(err) : vma;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 9fc4003d1579..0ddcdedf5453 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -11,6 +11,7 @@
>  #include "i915_reg.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dsb.h"
>  #include "intel_dsb_buffer.h"
> @@ -795,22 +796,22 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
>  				    enum intel_dsb_id dsb_id,
>  				    unsigned int max_cmds)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
> -	intel_wakeref_t wakeref;
> +	struct intel_display *display = to_intel_display(state);
> +	struct ref_tracker *wakeref;
>  	struct intel_dsb *dsb;
>  	unsigned int size;
>  
> -	if (!HAS_DSB(i915))
> +	if (!HAS_DSB(display))
>  		return NULL;
>  
> -	if (!i915->display.params.enable_dsb)
> +	if (!display->params.enable_dsb)
>  		return NULL;
>  
>  	dsb = kzalloc(sizeof(*dsb), GFP_KERNEL);
>  	if (!dsb)
>  		goto out;
>  
> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> +	wakeref = intel_display_rpm_get(display);
>  
>  	/* ~1 qword per instruction, full cachelines */
>  	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
> @@ -818,7 +819,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
>  	if (!intel_dsb_buffer_create(crtc, &dsb->dsb_buf, size))
>  		goto out_put_rpm;
>  
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  
>  	dsb->id = dsb_id;
>  	dsb->crtc = crtc;
> @@ -831,10 +832,10 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
>  	return dsb;
>  
>  out_put_rpm:
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  	kfree(dsb);
>  out:
> -	drm_info_once(&i915->drm,
> +	drm_info_once(display->drm,
>  		      "[CRTC:%d:%s] DSB %d queue setup failed, will fallback to MMIO for display HW programming\n",
>  		      crtc->base.base.id, crtc->base.name, dsb_id);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 30ac9b089ad6..c648ab8a93d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -12,6 +12,7 @@
>  
>  #include "i915_drv.h"
>  #include "intel_atomic_plane.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
> @@ -117,7 +118,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct drm_gem_object *_obj = intel_fb_bo(fb);
>  	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	struct i915_gem_ww_ctx ww;
>  	struct i915_vma *vma;
>  	unsigned int pinctl;
> @@ -136,7 +137,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  	 * intel_runtime_pm_put(), so it is correct to wrap only the
>  	 * pin/unpin/fence and not more.
>  	 */
> -	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	wakeref = intel_display_rpm_get(display);
>  
>  	atomic_inc(&display->restore.pending_fb_pin);
>  
> @@ -215,7 +216,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  		vma = ERR_PTR(ret);
>  
>  	atomic_dec(&display->restore.pending_fb_pin);
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  	return vma;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index b6978135e8ad..4f9b4fc526ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -55,6 +55,7 @@
>  #include "intel_cdclk.h"
>  #include "intel_de.h"
>  #include "intel_display_device.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
>  #include "intel_display_wa.h"
> @@ -2120,13 +2121,12 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
>  {
>  	struct intel_fbc *fbc = m->private;
>  	struct intel_display *display = fbc->display;
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_plane *plane;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  
>  	drm_modeset_lock_all(display->drm);
>  
> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> +	wakeref = intel_display_rpm_get(display);
>  	mutex_lock(&fbc->lock);
>  
>  	if (fbc->active) {
> @@ -2151,7 +2151,7 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
>  	}
>  
>  	mutex_unlock(&fbc->lock);
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  
>  	drm_modeset_unlock_all(display->drm);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index adc19d5607de..369f46286e95 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -50,6 +50,7 @@
>  #include "i915_drv.h"
>  #include "i915_vma.h"
>  #include "intel_bo.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
>  #include "intel_fb_pin.h"
> @@ -213,7 +214,8 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
>  	struct intel_framebuffer *fb = ifbdev->fb;
>  	struct drm_device *dev = helper->dev;
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> -	intel_wakeref_t wakeref;
> +	struct intel_display *display = to_intel_display(dev);
> +	struct ref_tracker *wakeref;
>  	struct fb_info *info;
>  	struct i915_vma *vma;
>  	unsigned long flags = 0;
> @@ -247,7 +249,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
>  		sizes->fb_height = fb->base.height;
>  	}
>  
> -	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	wakeref = intel_display_rpm_get(display);
>  
>  	/* Pin the GGTT vma for our access via info->screen_base.
>  	 * This also validates that any existing fb inherited from the
> @@ -299,14 +301,15 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
>  	ifbdev->vma = vma;
>  	ifbdev->vma_flags = flags;
>  
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  
>  	return 0;
>  
>  out_unpin:
>  	intel_fb_unpin_vma(vma, flags);
>  out_unlock:
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
> +
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 00d7b1ccf190..081c19601d36 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -30,6 +30,7 @@
>  #include "i915_irq.h"
>  #include "intel_connector.h"
>  #include "intel_display_power.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
> @@ -267,12 +268,13 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
>  	struct drm_i915_private *dev_priv =
>  		container_of(work, typeof(*dev_priv),
>  			     display.hotplug.reenable_work.work);
> +	struct intel_display *display = &dev_priv->display;
>  	struct drm_connector_list_iter conn_iter;
>  	struct intel_connector *connector;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	enum hpd_pin pin;
>  
> -	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	wakeref = intel_display_rpm_get(display);
>  
>  	spin_lock_irq(&dev_priv->irq_lock);
>  
> @@ -300,7 +302,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
>  
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  }
>  
>  static enum intel_hotplug_state
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4e938bad808c..50a22cd8d84a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -36,6 +36,7 @@
>  #include "intel_ddi.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> @@ -3728,10 +3729,9 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
>  static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
>  	struct intel_psr *psr = &intel_dp->psr;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool enabled;
>  	u32 val, psr2_ctl;
>  
> @@ -3740,7 +3740,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
>  	if (!(psr->sink_support || psr->sink_panel_replay_support))
>  		return 0;
>  
> -	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	wakeref = intel_display_rpm_get(display);
>  	mutex_lock(&psr->lock);
>  
>  	intel_psr_print_mode(intel_dp, m);
> @@ -3822,7 +3822,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
>  
>  unlock:
>  	mutex_unlock(&psr->lock);
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  
>  	return 0;
>  }
> @@ -3853,9 +3853,7 @@ static int
>  i915_edp_psr_debug_set(void *data, u64 val)
>  {
>  	struct intel_display *display = data;
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_encoder *encoder;
> -	intel_wakeref_t wakeref;
>  	int ret = -ENODEV;
>  
>  	if (!HAS_PSR(display))
> @@ -3866,12 +3864,9 @@ i915_edp_psr_debug_set(void *data, u64 val)
>  
>  		drm_dbg_kms(display->drm, "Setting PSR debug to %llx\n", val);
>  
> -		wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> -
>  		// TODO: split to each transcoder's PSR debug state
> -		ret = intel_psr_debug_set(intel_dp, val);
> -
> -		intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +		with_intel_display_rpm(display)
> +			ret = intel_psr_debug_set(intel_dp, val);
>  	}
>  
>  	return ret;
> -- 
> 2.39.5
> 
