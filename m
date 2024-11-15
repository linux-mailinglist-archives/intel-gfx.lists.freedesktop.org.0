Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD85C9CF487
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 20:07:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9482810E0AE;
	Fri, 15 Nov 2024 19:06:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jYMC0zrk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C58510E0AE;
 Fri, 15 Nov 2024 19:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731697618; x=1763233618;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PDt5PFurQCP6B0FHXmHB/RpxfMBRSMd5hcTfaZlHp8s=;
 b=jYMC0zrkCzRgZZcUrBoJ3Twj5Op8mJ054vPfdKMDr6MkEH6n1irWkTjF
 +v89LcDCKvx3fqdKm56PMyMz5f9l33K2tmGuqzY+whOgUB9XZtpth2L0z
 Zl+s7JHKZtXiJmO167CsoKMpbC/CGiFJwPYga27rKME78h/ctW5kIAll8
 6MnuAtwFgICV9Zqzm5W8sq4qAO905Bd8sHcbTp+LOMshNO3q52OFz96u9
 ZIwyjf547KRkBOloNb8Fy4AEVdWUf/4EI0pJayLT54jha9oQ9CPHdlAjK
 iDck7XrlM6fsM1cibbtS0iH3VVV7tFJXfIOuR2VBLvzpZTq1TDWE2qXMz w==;
X-CSE-ConnectionGUID: lxjYMvO1RnWAzkmmOIGhUA==
X-CSE-MsgGUID: 3fPBCXlVQWaWA1PRC9vnoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="42797068"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="42797068"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 11:06:58 -0800
X-CSE-ConnectionGUID: mxtykcq+SzWjRpbHI0ksHw==
X-CSE-MsgGUID: hHMdoDIESxqDADFLLaW+4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="88742533"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 11:06:57 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 11:06:57 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 11:06:57 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 11:06:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u5jBU7cw+NgudeDdk+5DEedb3uZgNyHVBptYBwdrepCjFnH5GoaxNt4L86oNO04hKT3VQMZAmv1DkAsYjfqEIFroDEIl2UeoMTjZFBWRdjkCDg/Suld7S8DyFCxkcgqLn2sMCXVgTZvU7hLydiyauJdYnyfhtxzTObZg7Gm2EC6W79RfWxjOINZLVqnKEWsBhdnmCHQFjE7c+mFKSwBhlBFlot/Yv+/UiSYGM2HB+vaJ7xrMt7d8VxwhmICESBI8sOF7+hZIKIq2TqYmtwDIauHcMXJtHXhWxNXKadB/bYKcZAoH1HSiS5UHO1FLHzKrg7GTlpu8FnmVOke05FKckQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=obXQvjpzSyohfk1blrPNi1/hMBhSYckidFKT2vzDS0g=;
 b=RrWLsT7aUwhJ5PHQMBCXlJsU+GiEwk6+FtiseTr03j0aNWkpJEpyUyd5++hRls4WTwKZIp+v3mBXxDILtLbi6fmjNO27RxAOHsaKJ9+aLq2xRo3Fc64hoNkdKB8j84oh5r8PbyUdXvSQhAiP3yR4BNu9f8uRp4Wf+d8AD34ZsWuZw7qyIeRWCkrRCZGYdS/iIFTyacAQeTiyfincIPQ1XBNxJWp/xrQ3pupC5Dtszec7Jx2t3uvLvyPGLZM/oV3lvKKBqQgPxKZ+P7GClOmvFNqY9lt0653RBKtbV4vdf76WmnlsMYcLZphrvl4P9TE4Rmx4L63ChdELb+wo7pdYIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW4PR11MB6570.namprd11.prod.outlook.com (2603:10b6:303:1e3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Fri, 15 Nov
 2024 19:06:54 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Fri, 15 Nov 2024
 19:06:54 +0000
Date: Fri, 15 Nov 2024 14:06:49 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten@lankhorst.se>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Michal Wajdeczko
 <michal.wajdeczko@intel.com>, <intel-xe@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <dev@lankhorst.se>
Subject: Re: [PATCH 6/9] drm/xe/sriov: Move VF bootstrap and query_config to
 vf_guc_init
Message-ID: <ZzebyT2n7Yawvugg@intel.com>
References: <20241107100140.292928-1-maarten.lankhorst@linux.intel.com>
 <20241107100140.292928-6-maarten.lankhorst@linux.intel.com>
 <ZzYguKUVI6DSpNvL@intel.com>
 <4698fb99-209c-4e66-a364-232884bcdf9b@lankhorst.se>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4698fb99-209c-4e66-a364-232884bcdf9b@lankhorst.se>
X-ClientProxiedBy: MW4P223CA0021.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::26) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW4PR11MB6570:EE_
X-MS-Office365-Filtering-Correlation-Id: 2382e9df-8d69-4561-77bb-08dd05a8ab4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6KZCfrooV4RsD5E6Vk2f5el/YgoMUZCRD8ISOT92kOKbyJtRXICyR1SyRG/S?=
 =?us-ascii?Q?4+JLlXGBYbRA9jjnVvZ+Z+eMvmcc5o/u9Mxb5/Xiaqj3+y0gAIA2iWKU55+A?=
 =?us-ascii?Q?1wfv9LuHgJSGaYLFfQcyNYbbGALiQlTrDerq2Zz74R3zZCFLO2F9ywKrNer/?=
 =?us-ascii?Q?VNHveeP3pTDxgJqyOWHGEnVESjOLRzeutLoOMp/iJoRztqP5L+XyMNNqstH5?=
 =?us-ascii?Q?J8A9wK3NkP12TdSvwboSygySILrhRM+rjvxCZuwJginX7xZe0VtedLcGB9o9?=
 =?us-ascii?Q?lj6luDenkrb16z2Ud38n1NPawffhqJpIl1NWOjlfE9N3noqzZZEJDMZtJcmK?=
 =?us-ascii?Q?41Z5G0v8TuIhU/A/z7z0expMGdgwf06pLxTHayj+4zuFMCImzHoP3yo7pyWI?=
 =?us-ascii?Q?0TV5qMrS55WnLe/t0bjgd94UeQkBKjFJ/XOPeJ0OvfL3QfXpz9aD7ksBdUrQ?=
 =?us-ascii?Q?r2YPipVkmewPVifHMBIIg1qVhAC8k1wWJMqH8s0L8Zrb+E8qp+ZlAvSrDQfC?=
 =?us-ascii?Q?Ea0ueBPf8JkElkcaZcgYfUB1dPrU2bUWDZrH5i+0yU1tRIdXoYxWAY3Q/bbb?=
 =?us-ascii?Q?8cXgPPycdUupaYSfmFO56HwpOJcDJBTq96MzaPn1fgtTAfDWmz4/XHISctmA?=
 =?us-ascii?Q?pwI5f43smJWnIX0OfKNU7chkj0mI/wBTTIMdkNl+6bTm82MvoE+NA0zJ11X0?=
 =?us-ascii?Q?NTNMEMGZRGJDf+l+DTKkoe6Qtk9rV+JXtAPZcsmJo1Zz/Rch8vPz4bTP+rkK?=
 =?us-ascii?Q?hHx4TMvLoZUWOd5eTSlQtSNWvcE33uvpDHS7UtwhV6gu45h8I4MiEmwrrpzV?=
 =?us-ascii?Q?QRn9h9/Z1JMXEE5RXLNT2bSfZcpusFXNeioHA8PVV1zydrs0RT2Dsvg8m0m8?=
 =?us-ascii?Q?sd77ZFzIeTRDEnaCf4mBm6UvtQtUq0H6mJMNn77kZj/VAVEysXWv4WtqTlwV?=
 =?us-ascii?Q?62nbNRLWVEccse0VseljDmJ4+Q5/TnYNh3T7xYxRn6h2bJ4sgdixC2kzPPoB?=
 =?us-ascii?Q?7295pEEcZR6ulTtt4ahr5EBkTD5NoPW9rX54aSC30kfrgYCdA1kYmkqHe/dI?=
 =?us-ascii?Q?qbrfOd2uFSj3MTiAqH52T6gON2g4ZbnDr8IrSfBEm0ZJA6aHlmt3gPEMWqVJ?=
 =?us-ascii?Q?2NN9jn6pDorQM9SrKWnrzQBRUjO4fyStXZpTDjoToCUfktsQoJxUfKExp/7v?=
 =?us-ascii?Q?/GLJBKZqQ0Axm9JeTJJLLYgYilkjWU/w7CNvsKQOjbnN9G9m0RXKps3nt/pF?=
 =?us-ascii?Q?5Bqj+d/wRKvEPia4Zs8X?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xParQJPOvPBygqDYikZEAddei1sryYhTePBitgJjE2Dd/c+jy6x2LxfjwYkA?=
 =?us-ascii?Q?En0+F+Rr3H8yU5wvhhs7R/rcaYxQ/65qLtQiWGs/qHE8dqZmWRRk3vzJOOhb?=
 =?us-ascii?Q?kWZ4WaH2z9vtbDbZtGG2SFoUGU1BYaSyDMa85fzjeTmS7YXj1IRt1vpv/ffx?=
 =?us-ascii?Q?ib6Pca7AYa6yi4uN9nOfTcPC9t8azLEMbghIRT3CdxZTL5cpJ9yYpWKBXFlJ?=
 =?us-ascii?Q?gzbvBgaSPaT2PrSEotsnPixT1Asx0lv2eTY/X9axtk1vpPrd41Y+Bc1G6PV8?=
 =?us-ascii?Q?RSWo4ogHDDSlU0G+Redr22RPCJLuNhoy73soZwR8qswbHyWz9Oqro/qnTN5F?=
 =?us-ascii?Q?vcvisROyyJLOY+mUADG69jmMljXI50ODIo2zl7E2SkEfAtV7HwWUC3o/AJhO?=
 =?us-ascii?Q?EOW8T+KbCtLx02Mley8mGPeXuyou5aq2Oh9wE1LQW2F1r/fNz2sqHmGic8Rh?=
 =?us-ascii?Q?q5Ah7fPTmbKUsqEeq0k4DM6q1oaINuyAkmJFOuQRE1mGTQQwN/CwZoz9Rk3r?=
 =?us-ascii?Q?mg+X4q01GMl9zeUbXk9YMg1vkHR0LBiZGfszNjKbWPpF/dWk0JKxA9MCbst5?=
 =?us-ascii?Q?YEXTFCgdI+TWLkr167YyhPoPOiRdGBV6d6y97gibF9kvgR2A1B+S3Cu0ByDC?=
 =?us-ascii?Q?KA5RaBfJVCmObCcykpItH7WWt6Zrq6NKdYkzhXhry76Q5gDaFbow39boPvGv?=
 =?us-ascii?Q?9NY4lommoG+swClh0fgYSbk3cdYv21pdCWAHgTCudYJXBsWS75mB9i+hAazX?=
 =?us-ascii?Q?YLexsZB3bG/AJA37sCPIQso1TGq1AGERGvh+0iMnkRfFq0ZkJ3/jWegF0IKF?=
 =?us-ascii?Q?Z9iksF1lJOdNCuMsQgxNgZEnnjYTG0qYAjyZEUUp33Iq5Vf9k7ghX0KnmaFp?=
 =?us-ascii?Q?IoousfBhzyeRtFoH6ekC4RuMGWTkCABDAD/FKTr/MWo8qk+XsrBf39G6fllS?=
 =?us-ascii?Q?kffQ59wuEKRz6I3aHPCEK3KxQEO0qXyUc2DduBb3mSYDVIqRg5Jt8FFOA8VD?=
 =?us-ascii?Q?51oKYfqvhheQltASBKZ1OcH5HarQerbWYfCnTWIQv4EfILRWqHeRGLhzLxAi?=
 =?us-ascii?Q?Mw4EdTpF/BXZijTN9ynYB4G9vo3CZNIja7IWuPKM/6j7N7iRzAyG048CaX1b?=
 =?us-ascii?Q?m+vfeGPLkko/lWzCNvAlm3+OVzKpxMtqa7xmlYLVJNvuEm2t5Vr4F1koKpjM?=
 =?us-ascii?Q?9yDQS+3ols9eKdLQmK1wszEZRYLA1OP92KV0JWg8DgAJs6IFiM+BacB2HChi?=
 =?us-ascii?Q?Ys03gJsuwu19pGD0X2rOKQYCz0usb4nPmRc+JZ87LKJttGQYlX7PXlUyP1Sn?=
 =?us-ascii?Q?0JCBptP9qsovV/BMXwhnrCZIH2eyffmbgaCx3yJ8gccj/jbxN51uzTnOrVLn?=
 =?us-ascii?Q?EdmIS136uFj+O47jizxnK3a959EcHZgA4S411uH9WrDUdU3+7DZziIE8GdoE?=
 =?us-ascii?Q?kbZBxFac24AXtxM3lQElrdFBDS6S2KPgG+ZMiVKGE/ps2nMTJCSJ1Lfo2xIJ?=
 =?us-ascii?Q?T9oRNTfCT7oqskP/qjODqteYkWa0wR/a49qeCMIL5/J+EecgGnsrpfZX/xUW?=
 =?us-ascii?Q?aJmj29/dujMUt7WwyFZCRrIyil6aMUgHaAbKK9tKUOxqoHO40wGsmKmOFqbS?=
 =?us-ascii?Q?oQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2382e9df-8d69-4561-77bb-08dd05a8ab4b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 19:06:54.6087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dD0WlUtDrqn3kRBdlse3ZUvuzwuazBGHBZT2/K9mH6igBbnUtpHmvK1br8HSpnthDm47X2vQWKmlIBix+xdfKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6570
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

On Fri, Nov 15, 2024 at 03:21:43PM +0100, Maarten Lankhorst wrote:
> Hey,
> 
> Den 2024-11-14 kl. 17:09, skrev Rodrigo Vivi:
> > On Thu, Nov 07, 2024 at 11:01:37AM +0100, Maarten Lankhorst wrote:
> >> We want to split up GUC init to an alloc and noalloc part to keep the
> >> init path the same for VF and !VF as much as possible.
> >>
> >> Everything in vf_guc_init should be done as early as possible, otherwise
> >> VRAM probing becomes impossible.
> >>
> >> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-6-maarten.lankhorst@linux.intel.com
> >> Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
> >> ---
> >>  drivers/gpu/drm/xe/xe_gt_sriov_vf.c |  1 -
> >>  drivers/gpu/drm/xe/xe_guc.c         | 17 +++++++++--------
> >>  2 files changed, 9 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> >> index cca5d57328021..997438047a037 100644
> >> --- a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> >> +++ b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> >> @@ -948,7 +948,6 @@ u32 xe_gt_sriov_vf_read32(struct xe_gt *gt, struct xe_reg reg)
> >>  	struct vf_runtime_reg *rr;
> >>  
> >>  	xe_gt_assert(gt, IS_SRIOV_VF(gt_to_xe(gt)));
> >> -	xe_gt_assert(gt, gt->sriov.vf.pf_version.major);
> >>  	xe_gt_assert(gt, !reg.vf);
> >>  
> >>  	if (reg.addr == GMD_ID.addr) {
> >> diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
> >> index 7224593c9ce9b..5a050a5379911 100644
> >> --- a/drivers/gpu/drm/xe/xe_guc.c
> >> +++ b/drivers/gpu/drm/xe/xe_guc.c
> >> @@ -301,6 +301,7 @@ static int xe_guc_realloc_post_hwconfig(struct xe_guc *guc)
> >>  
> >>  static int vf_guc_init(struct xe_guc *guc)
> >>  {
> >> +	struct xe_gt *gt = guc_to_gt(guc);
> >>  	int err;
> >>  
> >>  	xe_guc_comm_init_early(guc);
> >> @@ -313,6 +314,14 @@ static int vf_guc_init(struct xe_guc *guc)
> >>  	if (err)
> >>  		return err;
> >>  
> >> +	err = xe_gt_sriov_vf_bootstrap(gt);
> >> +	if (err)
> >> +		return err;
> >> +
> >> +	err = xe_gt_sriov_vf_query_config(gt);
> >> +	if (err)
> >> +		return err;
> >> +
> >>  	return 0;
> >>  }
> >>  
> >> @@ -753,14 +762,6 @@ static int vf_guc_min_load_for_hwconfig(struct xe_guc *guc)
> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> >
> > as I believe there was a good reason for these functions to be called this early.
> 
> This is in fact called slightly earlier than before. It's now called in xe_uc_init instead of xe_uc_init_hwconfig. :-)

Oh! Indeed! one step earlier actually... that name min_for_hwconfig got me confused, I'm sorry.

The only difference that I see now is that this functions are not avoided anymore if xe.force_execlist=1...

We should probably add some skips inside the function? I know I know we likely have many other bugs
if using force_execlists, but let's at least try to avoid introducing more cases...

> 
> Cheers,
> 
> ~Maarten
> 
