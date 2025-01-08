Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F9AA05E26
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFEF310E8BE;
	Wed,  8 Jan 2025 14:13:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jekds1C6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB7B10E8BD
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 14:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736345623; x=1767881623;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Ao36/+aAM0WuSLH/v7iQ/4i1M1EBTyNAs/OUARwlPyU=;
 b=jekds1C681gJ+1mAieWI0xkA4KyNOLae5cESA9IPAEjT2GNNNzMqH0m+
 YgInD8yq/Lk3VG2pePKbSYglVrwh9EX+kQTsd2PVc7zd3PEYI493eWRNe
 MijeNHSJXhGinuDqbKpNi5shllFkGpTPMj6q8uRPuLGoT3kvzaHWrKQ2U
 Xx2WxlMmBBKzCMbzyyYe92sbXTnvKDJRjjsRqLox6fxGnHe+PMyViQ09Q
 fiwF9UT0rH70uLc3j+Rc/RwxGo5wLaP+N/2aqCi2+zSmZxR052k2VE9Im
 aAg+t26oVvJqgenMu5xCl4F/vAeBT0iP7y/uDx8tjxUpywQXQZ3kcsM6w g==;
X-CSE-ConnectionGUID: xdUXO5rcT4OUVxZbcHQbYw==
X-CSE-MsgGUID: Ba8rZjnuRnq9yAysSDTEww==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54121104"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="54121104"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:13:43 -0800
X-CSE-ConnectionGUID: OQy9vrEkSmm60xIwORplkw==
X-CSE-MsgGUID: VZuf89trQXqP1kC1L+o8bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103331534"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 06:13:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 06:13:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 06:13:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 06:13:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lubm8IoVr6yVccTmqEr6dwO4mg3f1zteeknE1pFMteLBUXE5JXTzUfP8WqNthqQmsUQ6Nis5iZiCWbP8WW62KJL7l9OGaUyQP6JTPGGubLbIcV6qYO7YZaRIaZ4k6KS2aozOE7MnDRZh1upkAdy//pqf7f656S/T+P/aprUDYPh7NuBL3NOkRNVt0TXA4bx0XO/KLOV4BVArLa9V9clgOpIXFBEj2jdBaJGQCJJP6qqzhOAYGZNUvHBTxG0hYq8DMIJlSr5ocn5nmUEDDs1N38sTfVI0DnfmeT1E4oVtTmEWJrMSv98TggRMFSsM5y+ifpALPpMNPu5rp/iRSOCHPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bX1PHjMKYdWFT6eb76a3NtECpFU0e7k8fFT+ek8o5II=;
 b=AjgquBxgFWBQjSjh8Kp0XvRthFOfZ9BsmQswIkwENtyUPvtpmRlIBhP5IdTlAwdKQUlNtKFtE7dfTUn2cjgcr4CG24mbXH6hes+KYYHv5VACmMjs4Fvv5cdE0YYHpqv+881eQjg7LVj64qbIqXz6BDZbqf0b01LnYNEkP1xjXuUUIMYhslTmRXGKncSq4Pjhi+yZCHDNx0y2A0icjvqidtZIERAIFjxaU8f8UydH5yT/ibn7bmuJ0WhZEGY2s6TLvIqZxe8XV7Mo+hd/cBuaGwpDlZZmd+3Nk9xZt63zvDudquP19sR+gJSJBGzP33PTAEJ3Bc4eIEKPBUVDqzUxTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CH3PR11MB8442.namprd11.prod.outlook.com (2603:10b6:610:1ae::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Wed, 8 Jan
 2025 14:13:21 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 14:13:21 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 0/3] Enable GuC SLPC default balancing strategies v2
Date: Wed, 8 Jan 2025 09:13:14 -0500
Message-ID: <20250108141318.63823-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR06CA0029.namprd06.prod.outlook.com
 (2603:10b6:303:2a::34) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CH3PR11MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: ce79f0e4-cf41-4d7c-7479-08dd2fee9b3a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5VB597KcLyX6TxPBnH3fRkVMFZur/mqhY5f6CnJjPyYmoprRrGL+I2BnP3GG?=
 =?us-ascii?Q?ABdOOVewkEf6If8+39qkoHFln0PCSq88P3aI3jelHgz1At4fPwZVT1tLCOGv?=
 =?us-ascii?Q?CQ2xnuefL/N2bVbaueVah+4r22Enp4iP4+WE6/M5hhKsf236n0+J3SsELaZu?=
 =?us-ascii?Q?Fo5mGRvxGAGZC9fRg2b/5F70Yw2I2LbKh/RB0tt3lGJ1O2RgKkdDh8S4Werz?=
 =?us-ascii?Q?075sqKk6u20MTbQP1PXS8kEz7k6U8gKP6MZkkbIGQgrWCzjburngwCJxZwkL?=
 =?us-ascii?Q?BHhKTmaOayrfo4IfxYkEpdejHwvDavJO6lOg2lzMBe+TMUUiYkwPaV/wwaqy?=
 =?us-ascii?Q?aHfDjDCyk2nzSJIe8lp/hnJuM9jOOA2GFDdgbBgZvQ97dBJfiM29SUAfLgOD?=
 =?us-ascii?Q?OMCt8NsWvA08uzExzBSqUIWPIuO0pTDIuZk2gkDNjz67Fw3uSi8HqqmaSGuV?=
 =?us-ascii?Q?PHkHRG4kmvRnOsFnsq+3R4QKtAB9LBkwUPWkXf2PASykc65OxHAvqHck9v3S?=
 =?us-ascii?Q?M4DcqRAdA7R9IYl9A1XzbVHxHVUrjF1uuSLKozBmE6j+PEnO6AQtjKmp7alU?=
 =?us-ascii?Q?2vCIeOLlMe53FDk5E9As82RRA8U/8X+kTd7u+AScdiWuQvjQKzROgp/YiJbb?=
 =?us-ascii?Q?flv4dHceewiVtMP65tzibfuGeRj2rkrkpCn8IcLebOz0rKRS4CxH9SfGjreB?=
 =?us-ascii?Q?PZXlO75+y5hFEDrb0E1bwD2fTCAkNz70JZCZz64NsjV+XxZ6Az4JLevAq1Ku?=
 =?us-ascii?Q?eln/0Za9+AF0VHVl/VN5o0sLVwDZtz01dov5x7NJXy/kn1JkGkl9GHlteJu9?=
 =?us-ascii?Q?IU2y2VEEP2GCNF+mrYfEZQgar/aOcCSI2iltXDux8gZiCHo1oEzBqhYysJT8?=
 =?us-ascii?Q?l+ENN7ZnSMM/D5s8jUV7Hyg9/yZAKn7p/Th5RPIGcumFzM+kf8GPnBSZiPzZ?=
 =?us-ascii?Q?F4AFMoEryPmFrLzFO0wYWhbBxd/14pVYsU7kPoHjzmI9S2HqIuHvfoQYwcV/?=
 =?us-ascii?Q?V8CVXMHejHjZC+iSjYuH7sH7FYdTZR+MGQ5WAqjzGugWwwNjgDsF2hnzuYe3?=
 =?us-ascii?Q?tboL3QcxB5nD4sLcPIz9U2yx8uYvRgRwGAxAr5Fw2eq2GgkSvATzB+eZUx5a?=
 =?us-ascii?Q?2RaLuoJGAfg0B4a1/4rxwqFShQvgImFyCc10qTRlr3SOhkdPBwbL51hHxy2Y?=
 =?us-ascii?Q?b1Ts1WEWwIDkRvyk7sh/8TzdlLHkcEVUvZFYzz+fXGhaXvt1lm2t935LzNaD?=
 =?us-ascii?Q?Ff2oyBlQ+DDTx8u1TQytlmJ3w0S3jUv7xSTFmH0zLJGvbCaoX1IQB9GV8mrD?=
 =?us-ascii?Q?HHkVO/v9nZ8+U2cLDYJOA4c25pIAdpQJEYu+iKaM78Cvjw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5/rwqVqM69ogBh6/p+vH6O7P50nxVMrRb33tgOCw5/RO1TLh7R6X0jP9rGcQ?=
 =?us-ascii?Q?O9HhdQrBRxE5H5iBG34l6fi/Bk25EtvUO0Fb9FcmvmBCY6y21OwPNYFxiXII?=
 =?us-ascii?Q?oncoT86FN9UU1WNNb83NIc4qwhEbMxfV/cr7CDht371zOMcOnfuuc4oJqJYe?=
 =?us-ascii?Q?pwQFNl8Xj4U192wjJcgw+0o8NuGF8OwdRgiccP8H/UJB3t9fYLbVWpeaTigh?=
 =?us-ascii?Q?vZ0HDX+IFLO6hjhgkHJ0QlmRKti5fD3AhEjQR/uTtTDXOByAFAix5TSuXJvr?=
 =?us-ascii?Q?mpPwpeN+bTwMK+uWTmGhlXambaQ4i1/Op79GUitKYiHf8jbxFzw1yZD1R5L/?=
 =?us-ascii?Q?RcvjoQ4JIAoJy8gqH/dQBgdmPgZO1vj6iIj7wNb1EMs4qsnoAn5GRSYw2ubP?=
 =?us-ascii?Q?NiXSOBUD6Mzs4cK09EUGKqUXGldrYqDH9Tito4I8IRSjfc5pBBEWZAf+0mYI?=
 =?us-ascii?Q?SwaIH1NCbLCxC92niALQpZHmxBchFAVX53a5u9KsuXKn5p7luqdn/om50gHj?=
 =?us-ascii?Q?5QCmnm97TDUWJLMJ+k1KWNi1ToAIQ8L1jQeEoW2aj6mJi/JqKaD9eTLIsCUl?=
 =?us-ascii?Q?ax2+AWWhFQ1LPYEhKOdBWv6gkMmqTb8oOBZnzWLiA3AgzCFV9eoyNFA8/zcB?=
 =?us-ascii?Q?E9f3QtBpiltETY1O80CpJ/i9YLHZCMddLIEmFoiDIpPQd1IPgVJySkq3ehXm?=
 =?us-ascii?Q?nYJ9zwhTAmzmr+O3KgisKG+VFGPLWBDXilcBbz/rzwsvCvorSmmkrdGFaHEx?=
 =?us-ascii?Q?JZKY/QS3q70wAUYS8ZdWcaOxlDJ0JP0qyeUcxmY66q5wZ+e25xj4i0UPrt/3?=
 =?us-ascii?Q?qgaZhvWYunLMsfwcwVJPodaHig94nhIagODSJiLQr3x9li/va5nOovNFj9RP?=
 =?us-ascii?Q?vO/XfvEW6Fu38OmGz0fbqH6lyBErhjEwSgDgHt2FWlU9eSGKehFrI662wA6T?=
 =?us-ascii?Q?AgwRPi8kTHFSQAAcKyjHxh1WzO2F7H8Vf2ClW+kJRJysNM8pxMACs2+yn6Ia?=
 =?us-ascii?Q?3bnBXVW3lDe1MHfG0SvaPwiTl0RgWtF0O6lyWToLIkMntctLNQtiMWxs+9Pd?=
 =?us-ascii?Q?uQiyBxneF1PKaZMD58tJ/kB1Yf5h+M5v+rK39DB21k9XDEn4q89xJdbtK1gJ?=
 =?us-ascii?Q?+CA+eG0c8Lg6SR/kMJf0396mR5EqQwe1EqmEyv7AashFBMq8fJNXhEjp6gpm?=
 =?us-ascii?Q?4UGmrUFCn/l+NC6quZMEOfk7RBMeudfO4PRgpCunTnGPqVPouc9aGmKYIRnR?=
 =?us-ascii?Q?sEAVgm6rX4xlIQuzUxiB2vG5A7KCBmkd73PhCs2Ye2ZmoMw548yharcxCaPt?=
 =?us-ascii?Q?7cWSnp8mizE3QTVQbIYyOSmnIw1VO+7ZSxeW9XHeLciFsnweQiRQWIhmb27f?=
 =?us-ascii?Q?sKY7Lzhs3kWLNe58XtTEu6IIvDCCq6uec2ophcgDjU8Iy3seCWy847DmN3+N?=
 =?us-ascii?Q?P5dhX9G8w3M7zTJwhCoqBvuujlYa4jw/+/UxrbLEPG72Ut+mq9B8TM/mp2pd?=
 =?us-ascii?Q?v+LhaGIOURQC62OMznt+O3zwUXkiX9DELzGXm6VyxpIMi5JyZbrDxuvx85kk?=
 =?us-ascii?Q?+zKhxfYw0lDTYogXke4370+o1GJLMET0PLEjaZ5swUK2aYWFjl9byWYaXqxb?=
 =?us-ascii?Q?KA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce79f0e4-cf41-4d7c-7479-08dd2fee9b3a
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 14:13:21.0426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 74n6YvYQlQk3SIoS1lfxKd8Xq+XxhHssN+5BlZg5cUltY3JXfGjymNu/SqybjQ61E3JqNX7MVDkqvjSwEOYs6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8442
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

The goal here is to improve the GPU performance in some cases
where we are TDP limited, with both GPU and CPU with high
utilization and PCODE without power to fulfill both sides.
Of course, only matters for integrated parts with GuC
SLPC enabled: ADL and MTL.

Apparently the ADL on our CI was not happy about that
with the igt_spinners timming out [1]. So, this new attempt
also lift the BAT restriction on the igt_spinner with the
first patch.

Another possibility would be to make this change for MTL
only, but I'm afraid that this is not the ideal, because:
1. ADL users couldn't get the performance benefit of this change
2. This would sound like a hack to bypass CI, where the ADL there
   might have some TDP limitation and MTL there having more power.

[1] - https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142676v2/bat-twl-2/igt@i915_selftest@live@gt_engines.html

Thanks,
Rodrigo.

Rodrigo Vivi (3):
  drm/i915: Increase the timeout of the spinners
  drm/i915/guc/slpc: Enable GuC SLPC default strategies
  drm/i915/guc/slpc: Print more SLPC debug status information

 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c  | 34 ++++++++++----------
 drivers/gpu/drm/i915/selftests/igt_spinner.c |  2 +-
 2 files changed, 18 insertions(+), 18 deletions(-)

-- 
2.47.1

