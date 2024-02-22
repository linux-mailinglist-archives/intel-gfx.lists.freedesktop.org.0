Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 334BA85FBAF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 15:58:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA5B010E97D;
	Thu, 22 Feb 2024 14:27:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZMtwRxJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CCDD10E97D
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 14:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708612027; x=1740148027;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4TvdKh3EQYt6tZzLzgJphPl3PwqT6+xsyBku5U5Sjoo=;
 b=AZMtwRxJ5vZbn+GnHEJFlKSq5QAuaVaAQ+E0CEI8R0LhIjzETKtLvJqE
 tUgslftP7W8wk/fqkRmcy3upZXsOGzwbiQARGySN6cLWaKA5jAENKlpYg
 kWDUK53X2GOo01BN4OYW/Lo6JWDCO0qA908nfxaEwajGthPnXlTiKHZin
 JR2FemP/C1xlnfw6YdMTzdzpYDd1qLKj9zWFFFJANu6K45KpQYhue8rf4
 63ga6uPRemZaHuEm70UWo3SxTb2COb7ZcoiYzA7PSIg0AWwA22cYLjXIz
 a0NKfF07VTdf9LmIPTpTqVxT7ciESyNGe9fXdpBmd8LtuiaE6+VbWp+rT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="20271621"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="20271621"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 06:27:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10196774"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 06:27:05 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 06:27:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 06:27:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 06:27:03 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 06:27:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eLXlAnQ4F4D1Nhfx2+Vhuw9fz1jQqh0INXcwWXC1+qIyD6ZoAhDk33EWHmrYHrF2ozsKdKQ922S0K8LPiOHgnBT0Rzyi5/apM+GwNqlOqphmwaZOMk741Nh+31JSFxfgpczIKd+851hhgNFGc971JZ2uUsym+VgCnLPAHRvgT2dac+2FpLVh7Z4T+paeUBX5LLMtbWyj6GKcWDFDYryLE+pqrjBaK19blY/8YD7YzSjDKh2MEuGf7QcV6mu3XhPvdRkGZotq/hxzN+Sa0j0JE0SWoWtq9GrjpIT8WbxqW2yX8YajibYxOxLBqPZRqGxcPJMm6ibOitI8rJ+29+elAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L/wr9oPzuEweIipOZ3DwVzPISj/S08UhtwcsG9eXKAo=;
 b=MaUL035i+G6G7t6zi+/Y0wCGrEGvcslhyHbE5Osa1EszeeCjSVRdFQjI1SPQRvVw5oHHCGA+wl29+Ha7sEP3wmeGLcru6Xg7iOVefr3yhzJTNOtT8mmLSFvO76mTVHHY5U1h6RG7HCLzA5bdZBJunkouwyfOxAlQ1e8dKzUAacx1wFu1waczRkC/Mu7dzEdUjFbQmxK63XjNfxvaAz7bjKBaNhKjQns+s87mshjGwHDpRZy6XV2hRt7sWzUWblKRNOYfjWBeqwxlnKoaIYYWrzPhvJyrWGrzYj7WIRN5YHt1YHbFAfgvJFgUeIVdP74JKlQu1uN/6DJ479Hih4YLCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 by CY5PR11MB6092.namprd11.prod.outlook.com (2603:10b6:930:2c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.21; Thu, 22 Feb
 2024 14:27:00 +0000
Received: from MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::6c14:55af:8583:6ba7]) by MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::6c14:55af:8583:6ba7%7]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 14:27:00 +0000
Date: Thu, 22 Feb 2024 08:26:57 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <stanislav.lisovskiy@intel.com>,
 <matthew.d.roper@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH v1 5/6] drm/i915/xe2lpd: Load DMC
Message-ID: <gpxlwxuxyabngdwxrfmjr3wmwn55oe2qsq5ocrmrbvb6rbrik6@mbhjaml7dxt3>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
 <20240222125634.275047-6-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240222125634.275047-6-vinod.govindapillai@intel.com>
X-ClientProxiedBy: SJ0PR03CA0197.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::22) To MN0PR11MB6135.namprd11.prod.outlook.com
 (2603:10b6:208:3c9::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6135:EE_|CY5PR11MB6092:EE_
X-MS-Office365-Filtering-Correlation-Id: eb18c265-7091-4873-c927-08dc33b2551c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U41d3SGPe2T2X8bwYSULjMlPx3oncYdZLtvaFtxkXvNwrds8BOOF5SBIq+k82JTGtCr/OJFwxpm0GdPGsNJCf8S0X3jOK/emeo06AX0s1HYvN8gSynqBkffL8PhLQ4WGBFzSB9n6NOWMp6pZt3FrT9XFm3XQ7rtUPQyV/1AiSztZmU/HWDmgZdXPyMOMgpFI+OVe94J0yvtzUhJ/Q3er41Z+ZhpW8QkPFbXWVTeqP79LDutrydRAG+Bn2ql/U27icx9RWrNYuoOSVCVbwh7nPY7KssngUjpdQ6BWQFAIrnzdZ1XqTJ7puh/SqHX3FNgm+PQHJIUMDgpdDGqdEZzOwInk889QlVBfIchpgLUihgGxxjrSPVqqyptilDSk0TA8fkez8j+6vYvAkqLdyp0cbotma4UUdYXOsifAdGfMNA4VEG9ERCVX+RByuvZTOSTNmh4l/fyR0+N3JZ2pdqL04T5Ys77fDQHjP5QByCU5ulTFI2nvNSreU6iphZrW4Flliyh1Ira1NCLDlaJf3TiHmEUnA2FyFMHdga7v/ZXVWY8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6135.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yWdDz6uHPakUoi5Z/nt1DrAuPqfgEa+QeYi37jzsdnFUqTlTW2zQHQMXunxO?=
 =?us-ascii?Q?S0ZynJM104dXzVX/9SXheFbbgtDMAvTKxD7SycJavZvYR9LHqL1jNvp7IAGF?=
 =?us-ascii?Q?Usc5HhYEJJYGVnoHLrHxv6o/z9E8v2C8+JVNtRr8qF5F6MOt+Jfd9CedI1NQ?=
 =?us-ascii?Q?iouXIoWHrCIDn0J46OurZwSdXolJ0GHOZdxGDc2KiTy+GGKFdRkqU6bY9+DN?=
 =?us-ascii?Q?+hYEdAGZRyWuWfWoDPD71PehR34hfrC7BgU3zHr/wZ5Kz7q+kWYBGoI2uhdz?=
 =?us-ascii?Q?AZnhNsFTgp4xOvnesu9jVh316c+0krtZOQJMM666gBIglFtFJAwDty8Z9+fs?=
 =?us-ascii?Q?BE0+e+yr2V1zPgAPG0nUcbA5uuLJYbIY8TW73j0fPiYJpPYjX56yuvt/EEIH?=
 =?us-ascii?Q?l9LhJJfsc5KIzqN7D63vG3qy4WgdDIIVwa50TSC38nTDrCbvM3YIltFZFj9+?=
 =?us-ascii?Q?/5OVjRBRuFgr+Vsnza1A8gPa4zSqT/0Aqmqe+Zm5cNVagHwn46LCu6IJ65Mr?=
 =?us-ascii?Q?QnyFVzI/IxchOCZT4/QFz/9VIaN0369lZ/t8EaQyMRSssbhI+YcdMYQZT4iM?=
 =?us-ascii?Q?LxEslLzemdB1yXxdMB3S5vbrkjqU4FrfrM1a/+0cxCpNfdlASgEHgbRNZGFh?=
 =?us-ascii?Q?R6Lh1s0aGK+toVuWVXhd2xhfXxuI5qBk2lSQChpSgXdT+nVGYEBrQCYxTtY/?=
 =?us-ascii?Q?ffnILafH7hBzTBRTq3Xyfg7Hz0GLvuMhNJciPaX82zIqQOgqXF7egUKWax9K?=
 =?us-ascii?Q?r0Y9d5IjkwFC8Iu3QYcwxJrcWlU5TDGLuxQzH8z3Phkz0+0hcN69WTKsJxYB?=
 =?us-ascii?Q?/GfJ+q5fHJ36h8wU1OBVTtnTiQ2MEMFbHJN64LMSqCBV/+V/tGAK1qoUihGy?=
 =?us-ascii?Q?PPce6Zu/PTdE0BPKMytX6D244U9TjEOnobAH28t0uiu2Wt+sQgD4DbW+MKVy?=
 =?us-ascii?Q?3sck4At8LQUK39a8impbrlWOU6RRV/5kffKlLuSkofEdPo+D0EsmLrIg+bTf?=
 =?us-ascii?Q?aaJ5SFX0oQMbMKTairR8I6Hm79dCoqs8SBUyK09yt+/MyBIQcRgGaBFq/o6F?=
 =?us-ascii?Q?Lh07FqSBOZXciYOTOCg4vZn/pNmom41Fokqg1OjTllVyjCEJcJwu7i8R9o0/?=
 =?us-ascii?Q?FYuutC+zvp86klGY+Iu1mlPaBa3GYfnD88eWK8nECr+PAsqtbeAM0QToWHZ2?=
 =?us-ascii?Q?A+dNojAI+jLTUEF7Ze/uMhwMqlwZUhYd9bo9xO63lRjGOcwoRUO0wLJDHVds?=
 =?us-ascii?Q?eE0d0uyHbiJ3+y+7NO35VT2R05aooEq2CElsuIQDAjVRQ8gQFrmAucT4vHRw?=
 =?us-ascii?Q?A56DMFpgsk6ReYI1845vbsJ9Y4sYneRjJBct6ozCTUTj9J+kBp0N+XW/IlcQ?=
 =?us-ascii?Q?t91KlmWGeWKeDt8RMNwGfjqvfzl1NtfxCflsG060u5qdAZaPKv73ypvXJzRa?=
 =?us-ascii?Q?DSV/21rx2pRKR7Aw+qcBRAMAjl2WGP5zFsx5CMedQDWop15ADjVUPIIKHzqn?=
 =?us-ascii?Q?10gr0ci/SatcDLD+tpB5i3k9RZT+IQ56DRx1CjTSH84v7nN1gKcwwiyCA60h?=
 =?us-ascii?Q?mGHIldSntgbw9MAMWprJFYxEXe62vi5VDEmKZQmx3W8FUjN/unO8fTFUZlUX?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb18c265-7091-4873-c927-08dc33b2551c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6135.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 14:27:00.6668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KDF8NCGaj6Lw0VApkUooDe4Ku5F+8xTGOJ0NTMFyszDMDCnK4UEQ4z69KgiqGhN68U4CIRBi/HdMkacGLMBWtJS6mxDbCSKlQtOVMd4y/bI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6092
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

On Thu, Feb 22, 2024 at 02:56:33PM +0200, Vinod Govindapillai wrote:
>From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>
>Load DMC for XE2LPD. The value 0x8000 is the maximum payload size for
>any xe2lpd dmc firmware.
>
>Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
> 1 file changed, 8 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 835781624482..54c5909de293 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -89,10 +89,14 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
> 	__stringify(major) "_"			\
> 	__stringify(minor) ".bin"
>
>+#define XE2LPD_MAX_FW_SIZE		0x8000
> #define XELPDP_DMC_MAX_FW_SIZE		0x7000
> #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
> #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>
>+#define XE2LPD_DMC_PATH			DMC_PATH(xe2lpd)
>+MODULE_FIRMWARE(XE2LPD_DMC_PATH);

looking at the mailing list I don't see any pull request to either
linux-firmware or drm-firmware with the DMC firmware. So if we had LNL
in CI, it would just fail. We need it at least in drm-firmware to be
able to test. We need it in linux-firmware to be able to merge.

Lucas De Marchi
