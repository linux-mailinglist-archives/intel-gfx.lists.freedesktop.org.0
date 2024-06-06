Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5528FF1BC
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:10:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0230D10E9EE;
	Thu,  6 Jun 2024 16:10:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nuk/uXJl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E98110E9EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690243; x=1749226243;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=k6m3pU/ivRPcwLMUsyMAx0HnhQKcrjLwjP5e8j4wa7s=;
 b=Nuk/uXJlihBL2RZMNtq4sf89vITJ0cwN3qTurvI4B1hR9a9thJd1dxmh
 YcMVlr7dsR24vL4wCwp3Et9G3IJCjcYMPNUTk775aJr/ZZI6JEYiGdTIY
 dCW5cvz1V0bIhfhOemmYWcAdc3WvstHYe8kyFMyAGGHqAvtW6Ea1nMA0l
 PF4ODPwBolibTmzkFWhQ409t0UZWfgCEJ6sYXTXIVSdkRyjVjctzXYLNz
 Cwi4sFC5jNnFY92WPhVRrXWd2yjiyCznnJK3A9/CQjWg4Npg7Jdg0IAU1
 p6PvirWAOIwu7n0f50h+niTvO5jhYZyTNHdmSDzstEZqCDKwa8PvTbxB9 Q==;
X-CSE-ConnectionGUID: 2Mu5WZbMQK67WBBdMP9bLA==
X-CSE-MsgGUID: jSCWK8UETiyz/v4nTcQBtw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14525105"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14525105"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:10:43 -0700
X-CSE-ConnectionGUID: vCfol4o6QQe9PcoMgtf1oA==
X-CSE-MsgGUID: MKGtukZ9SSKHUDbgu90ppA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38695744"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:10:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:10:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FcsJ1MIeA0u771yNd1WvsSZz68qQ5IGkSHhZ/wmIQDEwS38cMJSAeoGL0FdMzz2va82PbHnYav40vecMbC7zqq8ifQYClwCC5Hx8doRFm82SWA6ZLUsC/3MBt6VKEd7+oDrK2THT89z5IciaYTEEnN4Ks+NNxHv8MwRICmuWEge//5FieR70wLm75mDt6LJP1fnQcCWeOdEJWK+Jna+IcwnpuAjKh0+IGYbr2lP8Q5IApCc1SWGYMwA1gptdftktMY78C07h1UcQqdAiOGegJPaYocMiVGShJDjwi5SjhjPLfD/8hCdQRWK0h6FMoLfIAG/1u3DY8gVjlG3QE4pHwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2F9GSUD7YTMjYDUokyXcCWewhKO7noyFBbf2lbYDE0=;
 b=jrid+uszQRqWOWgSrvdoOPHUnzKFZrZzDZCSvEQXDQ2ZVFKit/5fOvX49czM7tabPNo5p68sy5Msqe/48TdNf+vO4etrYldfvvsLe3DFcX7URZNkN7rWLgeCCrzcB5YZnwLgtr+LTTmXCKu3Z46ZBN3cW+wbDpAzPHUWwdasqIqSeJ1iIfxRsTKG56qY+Hr0Od9LQHa/WHdD8rpyPRsS7ZB/ofDCon2/ZvMtPy1+AUr83k3t8ebyfG4vNWC2gZmOWZYOwMusJNi5Il+mw6Iz5ocT+qtbWgozE33ONfFRQdV6mayOc+SdnYqetRj/DD+n/6F6YRqJlbzNft+jNj9jqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:6c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 16:10:39 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:10:39 +0000
Date: Thu, 6 Jun 2024 12:10:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 47/65] drm/i915: pass dev_priv explicitly to _DSPBTILEOFF
Message-ID: <ZmHffDFJE_i9hMyp@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <66ab5fd62709b4ebfcdfbe45381818e477bd7551.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <66ab5fd62709b4ebfcdfbe45381818e477bd7551.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0013.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::26) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CO1PR11MB5172:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d1d02eb-ea9e-4a02-e156-08dc86433491
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ejZvjCc+WIs/e1oqn9lYO78W18wPxQZ72Pa4iYi0LKNS4fk1I/LiUbPBllsq?=
 =?us-ascii?Q?QibRtJcv6XHSE6kaaT0dzAl35EpD2PvW/Dz9S6vDWgyY2KK6DyxCu0oMJg4E?=
 =?us-ascii?Q?rR96xUbRaWHe9fcoyIKv/VeCOlBhfFOXQV9z52BNMZn1m80TAG0hXDKK1I5r?=
 =?us-ascii?Q?SJ9GtLr+yTGk8874PgsbaTrhANEQQB1EA5c6k2DzWpM8zumwSShKvxcwJJfH?=
 =?us-ascii?Q?YOyaL1raNc/wUYYIP2DmD7IbzpG+TOJNcK587wqE2+OpVWkaSloVfXf9iV9d?=
 =?us-ascii?Q?2BP1WpsYAkZBkXzgLs3KRQy0xJDqaezTZYhzgvYXrdOuFnRltQboItVtgU1X?=
 =?us-ascii?Q?Hke/VUx0LM197gsarQmA+T6dL4shW7XxIjziMk3aGlt+MhK2OFn9FIcnmQhz?=
 =?us-ascii?Q?g4cy0jHZYWmXBaI5dsRSAsUz90KF65kZCRcI4zCvJy7dhMpyZGxRX/s2Jl5/?=
 =?us-ascii?Q?O3itbGBWKVV+SX3w/uo8IylWb0xml/JLL51BYiXfzzhwAdikAGdjAtUU+0YK?=
 =?us-ascii?Q?eRkmnv1j+A84YThGTbcQMuhw5Cp/dFjuZ1M1CRao4g/Cds7YwZ+vDJdP/YUx?=
 =?us-ascii?Q?HNV5MFDYNkwLC+KVm0jaSpIRmpYb0KU3A6/zq2YpSMU5zPAwhLSy18HFTtzH?=
 =?us-ascii?Q?skIdTr1yVLbWKKVfcij4mcalHZInQ8nhn2DqKvvKRBCUMu3lwQUvo089jSRG?=
 =?us-ascii?Q?Ck69uULSczv5jf0XZP6ndLoO5xLSo3K6CIaPdjJwA51MzbDytt1f+twJ98Q4?=
 =?us-ascii?Q?gKm15Jn58AER7UpgJa+pKQT111y+i2i2ITdAaqTExfZbUM2gjMfLX8dBs3Fs?=
 =?us-ascii?Q?btGkfuq2bhalouNRuoLU5kGGJNjV8xAsUYL8D5PvezoI+ffi5H5J7ejE8hyO?=
 =?us-ascii?Q?7Hk/4/E7z35omVr1J6zdd9kNz+gHn93Q25tfQNcJvmVoEyeLognIvIqFhm5t?=
 =?us-ascii?Q?I3NSPhSilAM67GjplmsLPyrxsS213mE6L0+icswE5kqPYvxJbgdsC/dizDCE?=
 =?us-ascii?Q?F+O38+tIBGq58G+47wOcVi8Ly1CUrMwJdDnwvJuIRBTdDOL+FEaO4SBKv1ek?=
 =?us-ascii?Q?mVlHkWY78hR2gy/jKivFAPVfAT4F+gZRqhMOmHsZzzQdafqLIpXQCyQFNi5b?=
 =?us-ascii?Q?n4GmpUJRutuWMvbpbxMQVYZTAqhohZfTCyo3MmBNojR3yHVXe0Vnz+Ug/Ym+?=
 =?us-ascii?Q?XAlugmAVUfJUgBKfyeyl5SaQ1MjisqnOlxf6GCMAIw6hCjy/NqeJgNg++G/h?=
 =?us-ascii?Q?TgOKZ0JtM7VgngSUC9shSeeLjFiyUzkkEuEkzx1rKvJRxtksXiPkPmAUq9+2?=
 =?us-ascii?Q?OpXCxzhvSbK05XxmAYh+bnbx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XlZAR0PMWbWeC2dBKJD26nVArBv2DjnB8apUZi9+TFfnCXU2rdlIo4a8FgUv?=
 =?us-ascii?Q?OBB/HsXKzTcCizrUlO9dSPbZ6VBiMqv6VmEsp1j/kn00q3cUAHgKQEhGgI6a?=
 =?us-ascii?Q?Yy7NhJy8odEPrT4qQBvWPN+7wg7R1ZV8Kjfxek/P0zawvZnKjyqLKO9UQsI6?=
 =?us-ascii?Q?8Si7oFhNxOGKbPFSbL/QggfF3CJR0oEBxcUXjHY+MGwPiaQu3v+4EudrdDX6?=
 =?us-ascii?Q?Hp2IgOalcIbDNG5bGeBTilIovmwJchDP0bB8ZyEbehntGwISLqq6HQnwasT9?=
 =?us-ascii?Q?qgWKXxHE45RuqnDvNRJ8aWGR1wu0ihbzMRPpbD88CzztEdHN7lqi1ze5vMOb?=
 =?us-ascii?Q?HDxW9nPJIHwk6YWcXw6436QLTsLAW+q3jQPRYxbIFrqcYNLi77r91GZzqieA?=
 =?us-ascii?Q?gNCykjRtp7u50lcI69tODlllvsLjSRDE2FZe02y7niuZhHBwy2XFsuWntjW8?=
 =?us-ascii?Q?EWs3bhtmQmEHr0GB6EZuEY16pEhf5roEPTlhhEEI+cFLe5ChpsNu6IsO40+J?=
 =?us-ascii?Q?H1NRWbNfb4DaDDbxBYOTWT3+HWT9xAIMrdnmJwgfzOg8Qi7kNfwokZIjuslw?=
 =?us-ascii?Q?XHc/QlQihHJj/qj4844Kf03TqYD2rrS8eW5uREZc94tT81c22ebr5O2Qz1qW?=
 =?us-ascii?Q?+swqdTemugAynhkidZsRgyk00vlfxX2U62dv4rkYzaLf1MF7gX1iqkBdpQmg?=
 =?us-ascii?Q?wGzojHyoMzONM97cacneAakWxbhIegIHOxDVjk+zOs5HOceFQSn/Thy+jfxD?=
 =?us-ascii?Q?4hXZfkLZgDoLradG9jHtkwFr/56Cj5caYpRK8ZXpJ3jDtieHCGeD+Og4faA7?=
 =?us-ascii?Q?9buQkxdg75g4i+SXkFOMpONG2zlpKTccQyY971wH0wm0VvwE0aXSdK/kXuPq?=
 =?us-ascii?Q?+Ft0Rm7xX8A3W0DdaKtVTp7+lTNAOHo9l2qjn8oSOdBrUHm9I1IdaBbnex0G?=
 =?us-ascii?Q?b69bjbcVrkvfMBHSwBr6OdO5j6euSoD5e9tds1Os9Gra1VthvsEJL54vFjDJ?=
 =?us-ascii?Q?8dU93uRfCPf+Zsu24Jq0ePzGmeUgtn5g/LmGgmwMrCqBVOogKDql8l9yHWm9?=
 =?us-ascii?Q?YqFswaNO4DeGDW9ccwK06oOda6YET0aDyG25h0chrUzcI5zxDe51SwW9FKHj?=
 =?us-ascii?Q?pRqd/SH5NToPhiihyAy3RzUiGb/V2noxwWgiXFDNNZq8UEZFAazhrFyVmJPc?=
 =?us-ascii?Q?ydoOCYNhnlRc+96DJthHWa2ZJ0QlhThG4F/4BFX66mXXoW4rGYo4ocok7LQc?=
 =?us-ascii?Q?aUeSF/shOwFwOgmIBlNHRUapPq2z5HtZ1ySTpsCWd6enJlShkPHg/F2yb9UA?=
 =?us-ascii?Q?pJS3o3LoEuglp4bhlDd21JWvUFTOmv4L5Xy6xZgUsyzojLUQNF+W+BINN92C?=
 =?us-ascii?Q?SzdStTRsM75FSh0RmCtQ/dFePmK4baj20+RzZ4JFBbCBKHBz+0H02WSe64bB?=
 =?us-ascii?Q?fZ+Vnr/ZjdnhCHp3d+EkUR2yp3UJuGIzTCj3x7qi64q/I1Wz7drtfAzGxfR4?=
 =?us-ascii?Q?flwsyVhlT2lLFZwF0JJM1IiOePGhEk4tE8lTiVBoLMRR08vcgh3+htilK2Qy?=
 =?us-ascii?Q?+YchSB17U6/chaRINUz1sX5S9o7rbFdz02vNQzVD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d1d02eb-ea9e-4a02-e156-08dc86433491
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:10:39.5480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1xgdVDdvdS1iMj6p6sX4IT3s2AczUEc4XvbjfHzTxTMS+/qBjDHw9ZP93GdcO/SQqa11VoQYnN9DtCc8bbgMHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
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

On Tue, Jun 04, 2024 at 06:26:05PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _DSPBTILEOFF register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 9bb840895baa..7c4251f62411 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2314,7 +2314,7 @@
>  #define _DSPBPOS(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
>  #define _DSPBSIZE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
>  #define _DSPBSURF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
> -#define _DSPBTILEOFF		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
> +#define _DSPBTILEOFF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)

ditto

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  #define _DSPBOFFSET		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
>  #define _DSPBSURFLIVE		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)
>  
> -- 
> 2.39.2
> 
