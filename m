Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB489AFD807
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 22:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F6510E14D;
	Tue,  8 Jul 2025 20:15:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CHGtecTn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F0C910E14D
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jul 2025 20:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752005718; x=1783541718;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J8wFLjUGjBTqb05Tgt73ucCcRvgr94HibOqdwOV+tMU=;
 b=CHGtecTn8l39PPVvGNrQdKmWYbn4syQTymEqBou0z3+GrdZBI7EsanLv
 SCmhmNxZdj3V2qWa67GgCRRbbY+WnUpFSncmieORtKeUctPbzdnqAI9bg
 cjDYkmbogX+uJyMXzUXXFloNhdxk4/AtbmJmlkl+Tr6OFhrAXAtjizjGX
 eX1Po5/GZZvzPmVl+2MP4Ec4g0o4uYbaqOkvp50+DHTfGJmqAqSlh7sU5
 get28zNhcfTGvA3TiLlRyFtCa5S8jwA3tlTtkMxO5MAE4AUx8Qu2KKw/J
 R3MJyVkrtm7vZLJURpC8Wl2kbXbh96vMkHOPeSDwnEp4i3VLf1MIk1oXR g==;
X-CSE-ConnectionGUID: +UKuLx5LRAuojB+m8XMAWg==
X-CSE-MsgGUID: BHRJkC0ZQgWB36I8zgyqMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54187027"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="54187027"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 13:15:18 -0700
X-CSE-ConnectionGUID: ZZUn6vhIRRuIS7flxgUzSg==
X-CSE-MsgGUID: UfkzQl64TrGaR3dUG/Mmyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="156165229"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 13:15:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 13:15:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 13:15:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.74)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 13:15:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V9y6hacYr9OB4h2QyyFqUh9n+UpCCCkhFd6akd7+A+7Ka2FHzBZVg6MFtEqwg5lbVltzueQySswQYPBs1JTAefBtSTeTpnf1poEQcHbd2aP9j9aMQc5doHDIy2LPZHzWEkHR7hn2ik52ExH2lb4zQ5f4t/PAmbwfr4DeqNFKWLWO0UiZpJWp1omWJMxcGXTkech+2pLtfByRdfIER6cS0iNw3gDWLyIXokFKMNbrJCD40nlP/tmwDoxb6bCQY6L0ga6Nxh1es/DcoNPZCuXJClTOM2svStiWEOMtfUYGeDe3wOr92aq2ngJtBoBcK+M8jyJXIoQF7Mevdh0U4CJEJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mIXc9MyHN4Q7GSdsXusy0PgBeErxeA4fOQWzKmK4dak=;
 b=hLa+XGjskOe3QcGeMLttNoycKvXpscDanZyxf2PSS6JUdktATMm7R6NaKLkfdf1BUlfXMwbrAWhQWFO8Nl6xC4fu0M0Q5xeVescGOPfpTtoitHbls2WG8jKnj2vcsvJTFUo06Q7jbNMaHnyFBIukE2j1HQBwFjXTHgn1oKk8B2ZiqB56SgLHcCcamX8hkgqN1AfBrIoYlQp9OZMqfTb9/fGu2NMCqCpkPoAw3T4FNwesuBQsy2eWJfMgruh2micfo+I8Pz4bebKY8n/W0RuFeopE3+6l6eyasw8M6raBrqBZVxpBVMsdOO/5VVgOzUmsXj3cQlXw/wo8f+D49OHsAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MW4PR11MB6763.namprd11.prod.outlook.com (2603:10b6:303:20b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Tue, 8 Jul
 2025 20:15:15 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8901.024; Tue, 8 Jul 2025
 20:15:15 +0000
Date: Tue, 8 Jul 2025 16:15:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: i915 splat: RPM raw-wakeref not held, fwtable_read32
Message-ID: <aG18UCFD2-bZZFLV@intel.com>
References: <aG0tWkfmxWtxl_xc@zx2c4.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aG0tWkfmxWtxl_xc@zx2c4.com>
X-ClientProxiedBy: BYAPR03CA0020.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::33) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MW4PR11MB6763:EE_
X-MS-Office365-Filtering-Correlation-Id: cf9cd1b0-f443-4d75-fbf1-08ddbe5c269d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4e6FyHC50wX/jgXyTsRGoPaWg/vslgg6qOcRswIUBxKIHS9pold0HDHB2OlQ?=
 =?us-ascii?Q?kz4ddvXyotpklLrUfGFtLR1RYMsiEirxqjR2tNCN2WFM26D+p7LLiWXskwqi?=
 =?us-ascii?Q?3rnM7aBC2aqE6o227T3l62nk3Y/jcLQEf5N5PR0wUgUr4UqTmlNYoBGqtoEf?=
 =?us-ascii?Q?hxHjaD+757s1VH/fGM01i/mJrmNMhI7eoy77OrydPNKqcUGDBJTgMJKjEPor?=
 =?us-ascii?Q?YmWgIslbv8URA9YvZqXq1QUmSD2EqbbRZoYo9PJEw6jakTjmNJmFiewsfp8o?=
 =?us-ascii?Q?CmtAGuomROQ7DNG/j1P6IokZqiByVFJUea3qYixlyGaGyvysZGqnPHV9LBmy?=
 =?us-ascii?Q?nRgLYVYLqQadHqb4AxWC7I6EYDeYLJmgbLU1i2Orox2UmTHEqpLnbaKd5+2V?=
 =?us-ascii?Q?3iz/2RbKMCsPgLXQjx7tAmzus9CDR7SWoM1d71WSYr0bQG0VqO2AIzRfQouj?=
 =?us-ascii?Q?AwHPRLeIPp6oLLZmL5eMq8f+dWdDa8dzmTykS973gMAOBfbYNDkeRN/NZT7L?=
 =?us-ascii?Q?GncfjlRGsVVGH49hOPw2wR2sqQ7CddnZN1Rl8GUUNjQ9IuC+K9e3j4jUPxZR?=
 =?us-ascii?Q?fseH5zocsISX2gzJIPJLIKO8xnGIxj5UYhUJQ5/s/UKD57ecQRdsJIBfm21+?=
 =?us-ascii?Q?+nQr+zFRrnKEwL+rjpV1f0/IwUOScRGoUFh891NW7FLwunEg3uw/m0q36+e8?=
 =?us-ascii?Q?EcKt2/EQxCa2Q6WBMEDbJkWLZfiBUszKzInDFUg9efpJ6ve4j9+5xYyVdZ4Z?=
 =?us-ascii?Q?JbSX9ljpX8Q8GKlJoouYrseEK9StItLomjJMsc/dZNl/XpytiUTSGz2iF2TW?=
 =?us-ascii?Q?NLITT6Xin9i8iIx0/wcl1hE6GLTnl7Egw8/tnLtmOZryUQtWgXTDn0lE2yyE?=
 =?us-ascii?Q?2aCz5+prqbVrnq76H5DG+wOJ2kgJoCQUj5xMKdVlg/gfKRAfggTvfQru2AjL?=
 =?us-ascii?Q?+8WsB6SncMeHjQ1pVjfPAJs3e/1sLdPoI0BjAFBAGZ3DVcnWVGvTY4A5C5OG?=
 =?us-ascii?Q?ggTMZH9p4vdjXYdlDCa9kCMQnCcp8hlX4T6OPhZ2eFj9Zr1kxbfn5bQPMjox?=
 =?us-ascii?Q?51OKNDVAFyM0F5Vd2DYBh8sT+DoPrCluhsgDbh0UBvZLOmlmuFT30RX6oezc?=
 =?us-ascii?Q?fEez8UJX8qOvRbU+6vGgGvLWFrKk/9vXSVdaEkriPxU8z0BGGD8Mej1238kI?=
 =?us-ascii?Q?tk6fU0zycdUR/oIMW3WWGNb06+OuMbVVDC+wdXaL3y6UYe4X922Y1F2S75bs?=
 =?us-ascii?Q?oLvXK6c4oE/aTP/iDP0t7NVEUDmKdi7NHbeteA/uTJPcyV8YF7Ckz+y+UW4f?=
 =?us-ascii?Q?mTqOrAPz3seU7GBGfd6ZZHAx9wI7vfpNfoQrGSas+G+aXeEWXt9/hS9AGFht?=
 =?us-ascii?Q?BkTG6jc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n78+shy63iuTzi9Zkv4UchNl3YVUkvG2dt6ZoCWg8mHGxfxNWHX8eqLdV4ax?=
 =?us-ascii?Q?Zc09/4S1aIY0c1/wTKVlQM9pGAwQ4ycfOIGhpr+I1VfrRJ/rgVr9g5ToPoyA?=
 =?us-ascii?Q?sOlSG6lMFAHDsHyvWWOdAy7fB9T9CsmmJxsH6U9XjIcSwcPsuIZZbhbvXao+?=
 =?us-ascii?Q?zL8uncLScOtWFCHnMckkS+ogfYtcTig+Oat70Lt4crNv4Un93M80exorw31j?=
 =?us-ascii?Q?aWQR9sfPpEQ9Iqu/O+KJZWRul5ngkLaGtNBGcc1MEL4DshXrDeotnmk9y8Nt?=
 =?us-ascii?Q?WNhBWUFXkIlTdjx+a0jMGiqijZxCeqdJWHaykjVaRYXzymiUJjj/yiNmcKqI?=
 =?us-ascii?Q?0Rt8/O5VSxCcCUV12uzbfuuT3SP4KzcTWiTlncFRKBILLZlBPan2xEIVuer6?=
 =?us-ascii?Q?dr1Mf3SptgXL7X5iRBDFD8seNQ3aJhQ+10dRdaWggUIjQnHu0edCvALgUl/6?=
 =?us-ascii?Q?YJzTx3XwouuPo0M8aj3uMC9gWriCnOvR3kR80nGwECHtN7ObdE9FqtlacpQp?=
 =?us-ascii?Q?q6RWDqOEAcFE4WP0XmpN/Jrt98zVGay9ImfnrtZf1olgHyzzBQLt00BiiBRm?=
 =?us-ascii?Q?gv2zdtleObZ3z4l7JK+fcd1dEUO6qi2+RXtXiqnsQESs0Af4NY4OisDCp2RH?=
 =?us-ascii?Q?jVNeGe78E/kHQPytOpI09JSnJrj+TumhsX5kPU/K5O2KjoyEpaRdC/psLvfy?=
 =?us-ascii?Q?l3VgeL30qO3omZA7YmxozizPadrK7BCcjUVe9YgGeTa3nSR9mKjLoMei1vBd?=
 =?us-ascii?Q?3Kt120Oti/PxrHbVsiQpzkziOF+c4zMJ1mLjcXsEFW7xMKFY7yZBev04c2qt?=
 =?us-ascii?Q?HJfOsRrWSDMacbHDipbaArTuF3NjbWz31UktpjLRGle1Ip8ggxSqYQ9BlGom?=
 =?us-ascii?Q?hVdPV4YXCJiXP/IZEeRXkUgzxgwCYFQQnFQ0o0/Z2zoPfHTXgWMNQw18TSbF?=
 =?us-ascii?Q?BmdpGyYJAYkSw9tGzkKiDj+IKy+u60JGdvuDzOkdZuBawKuFKjKOrL2Gtcw3?=
 =?us-ascii?Q?8QI/nP3nFlkB24Xo6ktHNnCm04Rfbo2dyqqA+iqtzGOJ26V5ZVJIzvRiDdI9?=
 =?us-ascii?Q?C9Uf5y7ccznADdlo6Hnq4LwBidqmu4BppYzM73kDhUd+W1vaenL6bHvu4h6l?=
 =?us-ascii?Q?QA9WbAmw/U6UmIUXHnB9m3vgS0Bn6kp0C7TIcZm9gRxWBwA9Zz0Ddrc8uLqE?=
 =?us-ascii?Q?R32nyywse73dNBmfkY+WreRBvzk9bZ2CV6Z8OYGFC7BWTcg+Ar6x4TaAJ1t3?=
 =?us-ascii?Q?wkKRrM2jo7lIlhpp/7+nSegvyiP5vFcjDBLjKYMi/FH9XK69IT5YSyjgkWP+?=
 =?us-ascii?Q?EvLbOa67x3KhG0NWzJOlpfPd5nALHw3gmohcNbz7EYFWP3WdpUnKJWf4nWAo?=
 =?us-ascii?Q?w4hWwVsPmqFpeex03x25pzD6D4NUpcHard2BLZouBy3U8iGI78ccHZzIKzbY?=
 =?us-ascii?Q?ACk0mUTv8dSYNmTtbby1g58z0Fw5aCOFE3kfo3OyKUdeHTKAfrHUD123s7NF?=
 =?us-ascii?Q?erLYDrm3BvbQbzRhKZPWFsIKsbhFmVzekaiWpXh6X2iAJtibWQaSKfU4RxrR?=
 =?us-ascii?Q?9P3PDukCVdaI105W3cwCj/zM2H1cB+0nIyVNy6NUqtXKP0F0uJBQZLx5E5g/?=
 =?us-ascii?Q?1Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf9cd1b0-f443-4d75-fbf1-08ddbe5c269d
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2025 20:15:15.3301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AqkbASN7TtqcjYX3FeVKRO4IT6b6vN/ZUrEhbot1Ig3K9v1GC9Ll/KRdgADni4yUdp70CzFgSCwnc9l63wF0JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6763
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

On Tue, Jul 08, 2025 at 04:38:18PM +0200, Jason A. Donenfeld wrote:
> Hi,
> 
> I'm seeing this splat on 6.16-rc5. i7-11850H.

Hi Jason,

Could you please file a bug in our gitlab/issues so we can properly
address and track that?

https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

Thanks in advance,
Rodrigo.

> 
> Thanks,
> Jason
> 
> [41251.218499] ------------[ cut here ]------------
> [41251.218502] RPM raw-wakeref not held
> [41251.218528] WARNING: CPU: 6 PID: 3718 at drivers/gpu/drm/i915/intel_runtime_pm.h:116 fwtable_read32+0x1c2/0x290 [i915]
> [41251.218620] CPU: 6 UID: 1000 PID: 3718 Comm: chrome Tainted: G S   U              6.16.0-rc5+ #448 PREEMPT
> [41251.218623] Tainted: [S]=CPU_OUT_OF_SPEC, [U]=USER
> [41251.218623] Hardware name: LENOVO 20Y5CTO1WW/20Y5CTO1WW, BIOS N40ET39W (1.21 ) 12/01/2022
> [41251.218624] RIP: 0010:fwtable_read32+0x1c2/0x290 [i915]
> [41251.218651] Code: 4c 89 ff e8 40 d0 ff ff eb 92 80 3d 43 0b 20 00 00 0f 85 87 fe ff ff 48 c7 c7 0f 3c b9 a0 c6 05 2f 0b 20 00 01 e8 be 17 aa e0 <0f> 0b e9 6d fe ff ff 80 3d 1b 0b 20 00 00 0f 85 69 fe ff ff 48 c7
> [41251.218652] RSP: 0000:ffff88815facfe30 EFLAGS: 00010086
> [41251.218653] RAX: 0000000000000018 RBX: 0000000000000000 RCX: 0000000000000027
> [41251.218654] RDX: ffff88901f597848 RSI: 0000000000000001 RDI: ffff88901f597840
> [41251.218654] RBP: 00000000000444f8 R08: 00000000ffffdfff R09: 0000000000000000
> [41251.218655] R10: 0000000000000003 R11: 0000000000000433 R12: 0000000000000000
> [41251.218655] R13: 00000000000000c6 R14: 0000000000000001 R15: ffff8881059fdbe8
> [41251.218656] FS:  00007f74dac2dec0(0000) GS:ffff88909cafa000(0000) knlGS:0000000000000000
> [41251.218657] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [41251.218657] CR2: 00007f74d9a4a52c CR3: 0000000116b45002 CR4: 0000000000772ef0
> [41251.218658] PKRU: 55555554
> [41251.218658] Call Trace:
> [41251.218660]  <TASK>
> [41251.218661]  gen11_gu_misc_irq_ack+0x3a/0x90 [i915]
> [41251.218709]  gen11_irq_handler+0x6d/0xc0 [i915]
> [41251.218733]  __handle_irq_event_percpu+0x3b/0x190
> [41251.218737]  handle_irq_event+0x2f/0x80
> [41251.218739]  handle_edge_irq+0x7d/0x1a0
> [41251.218740]  __common_interrupt+0x34/0x90
> [41251.218743]  common_interrupt+0x3e/0xa0
> [41251.218746]  asm_common_interrupt+0x22/0x40
> [41251.218747] RIP: 0033:0x564713a396c9
> [41251.218748] Code: 89 ed b8 01 00 00 00 66 2e 0f 1f 84 00 00 00 00 00 4c 89 ce 48 c1 ee 2a 49 c1 e9 30 c4 e2 c9 f7 f3 4a 09 74 cc 30 4c 8b 4d 00 <4d> 85 c9 0f 84 d8 00 00 00 4d 89 ef 4d 21 c7 49 89 d4 4c 89 c6 49
> [41251.218749] RSP: 002b:00007fffdf8442b0 EFLAGS: 00000206
> [41251.218750] RAX: 0000000000000004 RBX: 0000000000000001 RCX: 0000275c0b948000
> [41251.218750] RDX: 0000275c00000000 RSI: 0000000000001000 RDI: 0000000000000000
> [41251.218751] RBP: 0000275c0b94a600 R08: fffffffc00000000 R09: 80a6940b00000000
> [41251.218751] R10: 0000000800000000 R11: ffffffffffffffff R12: 0000275c0b94a600
> [41251.218752] R13: 0000275c0b94a600 R14: 0000275800000000 R15: 000000000b94a600
> [41251.218753]  </TASK>
> [41251.218753] ---[ end trace 0000000000000000 ]---
> [41251.218754] ------------[ cut here ]------------
> [41251.218754] RPM wakelock ref not held during HW access
> [41251.218760] WARNING: CPU: 6 PID: 3718 at drivers/gpu/drm/i915/intel_runtime_pm.h:124 fwtable_read32+0x1e9/0x290 [i915]
> [41251.218820] CPU: 6 UID: 1000 PID: 3718 Comm: chrome Tainted: G S   U  W           6.16.0-rc5+ #448 PREEMPT
> [41251.218822] Tainted: [S]=CPU_OUT_OF_SPEC, [U]=USER, [W]=WARN
> [41251.218822] Hardware name: LENOVO 20Y5CTO1WW/20Y5CTO1WW, BIOS N40ET39W (1.21 ) 12/01/2022
> [41251.218823] RIP: 0010:fwtable_read32+0x1e9/0x290 [i915]
> [41251.218847] Code: 17 aa e0 0f 0b e9 6d fe ff ff 80 3d 1b 0b 20 00 00 0f 85 69 fe ff ff 48 c7 c7 28 b4 b4 a0 c6 05 07 0b 20 00 01 e8 97 17 aa e0 <0f> 0b e9 4f fe ff ff 49 8b bf 58 01 00 00 48 85 ff 0f 84 63 fe ff
> [41251.218848] RSP: 0000:ffff88815facfe30 EFLAGS: 00010086
> [41251.218848] RAX: 000000000000002a RBX: 0000000000000000 RCX: 0000000000000027
> [41251.218849] RDX: ffff88901f597848 RSI: 0000000000000001 RDI: ffff88901f597840
> [41251.218849] RBP: 00000000000444f8 R08: 00000000ffffdfff R09: 0000000000000000
> [41251.218850] R10: 0000000000000003 R11: 000000000000045c R12: 0000000000000000
> [41251.218850] R13: 00000000000000c6 R14: 0000000000000001 R15: ffff8881059fdbe8
> [41251.218851] FS:  00007f74dac2dec0(0000) GS:ffff88909cafa000(0000) knlGS:0000000000000000
> [41251.218852] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [41251.218852] CR2: 00007f74d9a4a52c CR3: 0000000116b45002 CR4: 0000000000772ef0
> [41251.218853] PKRU: 55555554
> [41251.218853] Call Trace:
> [41251.218853]  <TASK>
> [41251.218854]  gen11_gu_misc_irq_ack+0x3a/0x90 [i915]
> [41251.218896]  gen11_irq_handler+0x6d/0xc0 [i915]
> [41251.218919]  __handle_irq_event_percpu+0x3b/0x190
> [41251.218920]  handle_irq_event+0x2f/0x80
> [41251.218921]  handle_edge_irq+0x7d/0x1a0
> [41251.218923]  __common_interrupt+0x34/0x90
> [41251.218924]  common_interrupt+0x3e/0xa0
> [41251.218926]  asm_common_interrupt+0x22/0x40
> [41251.218926] RIP: 0033:0x564713a396c9
> [41251.218927] Code: 89 ed b8 01 00 00 00 66 2e 0f 1f 84 00 00 00 00 00 4c 89 ce 48 c1 ee 2a 49 c1 e9 30 c4 e2 c9 f7 f3 4a 09 74 cc 30 4c 8b 4d 00 <4d> 85 c9 0f 84 d8 00 00 00 4d 89 ef 4d 21 c7 49 89 d4 4c 89 c6 49
> [41251.218927] RSP: 002b:00007fffdf8442b0 EFLAGS: 00000206
> [41251.218928] RAX: 0000000000000004 RBX: 0000000000000001 RCX: 0000275c0b948000
> [41251.218928] RDX: 0000275c00000000 RSI: 0000000000001000 RDI: 0000000000000000
> [41251.218929] RBP: 0000275c0b94a600 R08: fffffffc00000000 R09: 80a6940b00000000
> [41251.218929] R10: 0000000800000000 R11: ffffffffffffffff R12: 0000275c0b94a600
> [41251.218930] R13: 0000275c0b94a600 R14: 0000275800000000 R15: 000000000b94a600
> [41251.218931]  </TASK>
> [41251.218931] ---[ end trace 0000000000000000 ]---
> [41680.714071] i915 0000:00:02.0: Using 39-bit DMA addresses
