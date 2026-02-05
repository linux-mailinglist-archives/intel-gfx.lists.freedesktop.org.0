Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLjdC+LNhGk45QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 18:05:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B37AF5A54
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 18:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E521C10E22A;
	Thu,  5 Feb 2026 17:05:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lYqBTunN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1CAD10E22A;
 Thu,  5 Feb 2026 17:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770311133; x=1801847133;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=flKUTXGb3YrOQvPqGDFBp/HQhOqgdnYbWeCNhTvyWkI=;
 b=lYqBTunNnvX3lRAk9KVdT0wMj+6UQM/E2K4Ze3IUg/jKApxY0R/us627
 Pm8yZGDQjZruCGngqC6Sfv2v0N6zdBczdqRJIdiiw9FdHB7M3mBOw5T/g
 bOgP25Hz+FUQUSNqZvz75JFGV3S+pc/oT0LsMrl5za7lWIgMHYPWMAMkc
 YyqYK/jYH66KEynMlWqrM7wcbwaBE+fXIreQ4q0mprDMwZ2VycRY5xHZD
 mxJjdR50ZdNsSRFxMCNxOArKncWfoZKGZCzErqK1RknpzoQpvsrDWeu7X
 WVM2WHEtYpg4Lc5jjdlzVqZlEIT4/qoJN3CLmnY5dtqcgZIjxSIgHRLA2 w==;
X-CSE-ConnectionGUID: VQU9zUnFRp+hInGd+X4Q2A==
X-CSE-MsgGUID: u5vcuIY2TvSlahULhWxnPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="75365496"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="75365496"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 09:05:31 -0800
X-CSE-ConnectionGUID: bXnTRQX0Q2SXrFXbWSsXXg==
X-CSE-MsgGUID: gA5tVDFTQe+Appk2R/WfpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="210552316"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 09:05:30 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 09:05:29 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 09:05:29 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 09:05:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J8J7tuk360L5R+ss/xMo9e8Q8RHWTKULCjphHlKyz5RN5/eDUt75UCASt5d6+iXrX8nNA3DUCrBEsSAkVu/4nlgNBXmaJpPUDePD/hmKoIxtP9aSe8QbueY4EkTdcHSeXPoA2rJwrrMOyiwyauuEZmc7xBe4I88oB4Y2H5khrAfW8gyUj449p5TsR+wtbhngqPfAIiX4ELjIDPRYUuSTlkP55/ZZPTEr/+oW1FKOE/LfBPoeffjg204dKV2CL9dVUns8Kh44q+GWJ7xQ/xFrqOhL6SnjDWn3MmboDUe8SU7uZJUTkBBafby31pIpOSQHgvKnLRLuHNzRuhmdCUvV+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oXbgBIuQpM3yoUAJ6Y9/6+IEl7kJ1c4TAPVgLZ10KQ4=;
 b=PmepzTwMKYQJHJBiOau2N2xeVBD+I/0bJFsYgaS+8oVxfRMUoZsr8/KxZNOq65h+hY3k9/DqoVo7KQyZOoM630jCSpaSK2wNJKZdAamPSsstl8tTR7q6TsqcSbVWR/LNSdqqroqK3x7luS5giMGCRM1W01z31XMfphXYo8ivfcLAgzpj2mId1KLE2dw1nuLCZN/9AvJ9ro2Y6/jtZp/pQ/OHWVaKqE6lHBrXVtoZbYJf59GIemlsq94rlxpMM66EKoaT4558eUenlzTJ79vkdB+LYovnTgK+U00DLh/Ssjz1PiGcnH7+MzX1Qej6TjKYyfooTPuAr7m0HWScveXQEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by PH8PR11MB6683.namprd11.prod.outlook.com
 (2603:10b6:510:1c6::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Thu, 5 Feb
 2026 17:05:27 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::eb8c:fc1e:e3c0:13a2]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::eb8c:fc1e:e3c0:13a2%3]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 17:05:26 +0000
Date: Thu, 5 Feb 2026 09:05:20 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>
Subject: Re: [PATCH 04/16] drm/xe/xe3p_lpg: Add new PAT table
Message-ID: <20260205170520.GA772659@msatwood-mobl>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-4-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-4-653e4ff105dc@intel.com>
X-ClientProxiedBy: PH7P220CA0179.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:33b::27) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|PH8PR11MB6683:EE_
X-MS-Office365-Filtering-Correlation-Id: ed973b45-7466-4de3-8f05-08de64d8c208
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fQov5tj4Wq7CbuA/F3+0DRTPIpRdkjn0glWxdEatg5Tjg+nP5GF0wgN3SwMW?=
 =?us-ascii?Q?PDVWM+jFmvzBBiWGfOMDQtC9e2uHUpqIFqBO2dTAcvg1MUMonSn+96QcxHts?=
 =?us-ascii?Q?fyn5jGnzmlshp03nA8mFteYx3fdGqemfDHIPAUxaxGrYRgtzBJFkcAd2RYru?=
 =?us-ascii?Q?9f3ZWWYAyYVv+gzE0a88D3Z5uMwkR/BN820fepHg/hxvFhb4wvgEfVTLiBks?=
 =?us-ascii?Q?KnsTb2hsRwAR0AXPJeuV0SRBjVj0Uc9I0w0iRw0mCw/6JIXYkaFpLHBRe03s?=
 =?us-ascii?Q?Nae5uNcRXMlHqNhxSKQ0YlOZfhsqPJFD/EhKSTBdabyMDJDcEZMObKeMmeKq?=
 =?us-ascii?Q?qMbTizvWrNqdaiE4AEzXMe5GHZ4NqAVKWW5osgyKYAzmIjVqJ7l5IpIgm87a?=
 =?us-ascii?Q?7omCdNRnVM23FtHNMDL4086EJ1jC3iujsdIVCs9H5j7AOMumRmkknSrGswOL?=
 =?us-ascii?Q?dq1Ty7bxrmL1l1PLuf2CLMQXadzXYYs7QTIieYy4ynLGACTpmZRYxh64UHvv?=
 =?us-ascii?Q?2eTrFMrxLh4/7ChkuUbuNHCSX190PBcsDVFkq+yljivojBPPRBAi4MiHDVKE?=
 =?us-ascii?Q?Pzwy1s6GyqZkgA7gPFt3V4Qq/vZVm1bj6RSKYgqH3bdtiKAZnfT1sLzVu5Qp?=
 =?us-ascii?Q?qfrwmtbFIy/eAnvGZJ29dgbQs9CdSBVSoJHfEfTKX+V07QyRCpDkdy0lmknM?=
 =?us-ascii?Q?1qIAZF0fJPH/4xgs0qekZ3URB0z46c3h8t3r5KN1QXx7DiQPvaQacdm0OHma?=
 =?us-ascii?Q?o2XFQ8lomiBHCpMbFJYVjYGi945713qCXIn4HtK8hZjDE8jeCzVb2ApqMhFQ?=
 =?us-ascii?Q?SyuE5Rl/9z3yyiM3nbrop+7SJ8iZoJ3JZ458D54W6iybseccxjeN0q5mqGFI?=
 =?us-ascii?Q?QGMlS//cvBWsJMFT9TcvjTNM/r5RJAneKoF8u5TlwagCx7z2oRdnIuuapCLH?=
 =?us-ascii?Q?zaKHMqGkjGax9D1mk/+ug/sc1Aak98qsNW6HfZU6YiwAWidhgVnyuV7kQtJe?=
 =?us-ascii?Q?vrCphOUCmNej4Epa0+q45CqoGOjgfgVKLTOW49WGYrUqBr8Sh+pKEBz//9wY?=
 =?us-ascii?Q?sL/MwFaqfx/6fh3BvhNFAPqskktctakQBeNBBBQpRtVKfF94VV9v3r1XTSnx?=
 =?us-ascii?Q?mONL877v0BUpg40Th9GyNV7nAfSqWzF3cXi+aYjj5803DAKMF5Jvdj9YegAs?=
 =?us-ascii?Q?IVxb41nUsYAJc3Wltp6WNsxUiyIhf2kLy2NiOhl+c1mR92CW/QPaoALwKa3R?=
 =?us-ascii?Q?lRPXi+rdR+NNMo7pXwHS7CAEHa5td5K4kJWMKuWlyeOQhxcFU3vca9fIqHH/?=
 =?us-ascii?Q?0kL2zaGDaqZcDNGcGKtULkbVE7djEfrWiTiwIyPhh/BbxxuanBMBRnuLzJxg?=
 =?us-ascii?Q?7m7HzZ30dmyQYoBG0F3yNV3rNGRFylt8LwZdl0TnfG4YE7e7XbfEd0BEfxpR?=
 =?us-ascii?Q?LTBIfi6gPnSp5G9fOIX7MYuZ4neu+/Lblo0eDqfdtR2KoJi0GCzVtoLsStvV?=
 =?us-ascii?Q?HsYY1wj8geyzDGspC6uMH8YYZKgoNLFUeuDUHx7zI16Sbc7SRW+iVQMx9RUv?=
 =?us-ascii?Q?18twVQuNc879H1cGCLE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3fEUIcr0BLsBDf6DTCKDYnecYtDSe0Rnd8vB4yWecsP9YgqQvCi5WybCgZnD?=
 =?us-ascii?Q?65mBO9D/Zog2N8d7HzBzuadQ/iOQmtnu9qdKM/fVCEr16tZ90zTjgZFZGpx4?=
 =?us-ascii?Q?cjJmQVQBQUrQufA9dO+RFqJY9nfAqH6GuN93Y2tnoJvfTOWmLTqs5eJHZb/l?=
 =?us-ascii?Q?5Fjq3vH5h1qWZPtShKBor1SH29EhxxhBLMKC8e2aI6a3cTrT+/QbWx5L5hwV?=
 =?us-ascii?Q?XIfC0Z+JS/4hVXp1BmK8fK4I393LKFrbF+E219MZkBrCf06eZFbWVkCblMZe?=
 =?us-ascii?Q?imUOAw6oiJeOYYUzUpOccCjkwUOotbAzevg+yiYLxDFdkAPfLdl7E+Hom+dH?=
 =?us-ascii?Q?rjXJNEngKy9ulpaFdkXQLK4X1wUseaVwOcAhVe9Dey87qZQPEPsmeNkPBV6D?=
 =?us-ascii?Q?Mrsu5M0sr5Adti6x9TxUTx/7bCCZrrxnzgBgsLvMBVVxvzfU/POHmcD1dNJU?=
 =?us-ascii?Q?yR08Lq2nl8P4L2BIDUXb2VB2LI8I+TEetCnl8JY086p03dsL68wtc2WhjEHP?=
 =?us-ascii?Q?IWQXCIeY6kJ2bEMZ/TAIah0Z91q/pEyjye5ALCydQy2Zk0kq5Kegs68InWel?=
 =?us-ascii?Q?hr6ZwLpZt8MKn5QnYm8hAF6mgAnvjcp0AzCSMOkyi9OZaGAXHgTByVsGCQLT?=
 =?us-ascii?Q?IB8tsq3j95Kd8thnwCK5V/RKukc4iZaHmukmoVt91MLYkije0b83X7q7ZFx5?=
 =?us-ascii?Q?GmhTzkslcfnOakwnwoA5mxu1wkitMxIR6TFKfQklwFAFaoETPC4ujsUitjhg?=
 =?us-ascii?Q?vlkyW1cecud0ndW4fN1+NSBBEWbUkybdEr//cFAB/DuRqO6RTQkWpu8CBn+1?=
 =?us-ascii?Q?OJE97fZwkAU9NlVfi1ss7gar7kAdA9lJQM7Br9PXjXIKgT0nFpDD3wcUcFr3?=
 =?us-ascii?Q?vYTjhNDDBta99Iyz3Ni4q4CesN4t4+6QLZBcTJKR+zcW37usEq3B75fSRDHG?=
 =?us-ascii?Q?T9xHQPhQhwRIKEYnjVsXF6krKx0MH5HyHLPHAUMDeo54BaV2Fff4oHCedjNd?=
 =?us-ascii?Q?71GToeNvHjCeZCGp7FZJEGuBpYwrWj7Zn+8pq6SsqzmP1nqPafIU116b6vGT?=
 =?us-ascii?Q?TDHOv7i5plz5RL0jTWBMdu0Cn8EWbHF2IS7W1svFxE/s/0W76S7NWSfk0JNL?=
 =?us-ascii?Q?Hh4+bCJM2+RzJQUx5iEQNqCmn7Ot7HnvcG+mAOGF0m9ZmQB8/mUOiiJFuMAA?=
 =?us-ascii?Q?G61wuRlGTiUniLR/rUebOkafEa1U1QhHvIH6wtsVwvYTU4FeMBtVug248dMu?=
 =?us-ascii?Q?t6TOhY455Q4QLxy5ZOo0lbnjqzFv2dybSrehwsCy9SzBMslQHqvr4NDr+BCT?=
 =?us-ascii?Q?XwdrAvxXsdCIDDOrjFhxMEa4p9le34X6hfuviQQ8FPAk3jvk5QXrXJQDKglM?=
 =?us-ascii?Q?Sy2oNwwf+KGuKFkaJc0aIotr6JYQmUatqjBgxdT0P9dyPygDxBECByQU1EFg?=
 =?us-ascii?Q?is/3tnYN9PotvJ4iZUVJjhN53mYGtLU9NSci+m9qAk7nXrUHXAlFHYr4gjjZ?=
 =?us-ascii?Q?1UJOx5VKtL6YC1f5pZg4LVYi1967PeA+Xq9SnxAEVyUTXt7nK/Xyyzc1Lj+q?=
 =?us-ascii?Q?cGDd1yUmtG7shoDcsSFv8WZGGt/51Q84EZESvP0hvKNRUzqJoRkoLZY4NA5u?=
 =?us-ascii?Q?UO/zq2AM5kTw5tu5WxnfP946VMIdhx6EMJAMA0v8lE/jKlapUAUqvtK+ttLd?=
 =?us-ascii?Q?Z6wVrIW8eHVVava5o3CY9wDqShuE2xTWwsOPwe31yADUHZjzcpK8kVgnVZXM?=
 =?us-ascii?Q?bu1Yv/hty+1e1qrVBdN4MDFjBPRjcwo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed973b45-7466-4de3-8f05-08de64d8c208
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 17:05:26.7227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pkqhwbV6OGrcn86Xb+Vxw1A4jyE4orbHK8ly97sK9BXnIjvC0RcBvHIARG1y7+wWeV8addMePl9OVOkGarqcEsl6IsJ1MQQax3aPoUJNUPo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6683
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.s.atwood@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3B37AF5A54
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:10PM -0300, Gustavo Sousa wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> PAT programming for Xe3p_LPG is more similar to Xe2 and Xe3 than it is
> to Xe3p_XPC.  Compared to Xe2/Xe3 we have:
> 
> * There's a slight update to the PAT table, where two new indices (18
>   and 19) are added to expose a new "WB - Transient App" L3 caching
>   mode.
> 
> * The PTA_MODE entry must be programmed differently according to the
>   media type, and both differ from Xe2.
> 
> There are no changes to the underlying registers, so the Xe2 ops can be
> re-used for Xe3p.
> 
> Bspec: 71582, 74160
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pat.c | 55 ++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 54 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pat.c b/drivers/gpu/drm/xe/xe_pat.c
> index 5776ea67fe02..3ba89e80be1f 100644
> --- a/drivers/gpu/drm/xe/xe_pat.c
> +++ b/drivers/gpu/drm/xe/xe_pat.c
> @@ -123,7 +123,8 @@ static const struct xe_pat_table_entry xelpg_pat_table[] = {
>   *   - no_promote:  0=promotable, 1=no promote
>   *   - comp_en:     0=disable, 1=enable
>   *   - l3clos:      L3 class of service (0-3)
> - *   - l3_policy:   0=WB, 1=XD ("WB - Transient Display"), 3=UC
> + *   - l3_policy:   0=WB, 1=XD ("WB - Transient Display"),
> + *                  2=XA ("WB - Transient App" for Xe3p), 3=UC
>   *   - l4_policy:   0=WB, 1=WT, 3=UC
>   *   - coh_mode:    0=no snoop, 2=1-way coherent, 3=2-way coherent
>   *
> @@ -252,6 +253,44 @@ static const struct xe_pat_table_entry xe3p_xpc_pat_table[] = {
>  	[31] = XE3P_XPC_PAT( 0, 3, 0, 0, 3 ),
>  };
>  
> +static const struct xe_pat_table_entry xe3p_primary_pat_pta = XE2_PAT(0, 0, 0, 0, 0, 3);
> +static const struct xe_pat_table_entry xe3p_media_pat_pta = XE2_PAT(0, 0, 0, 0, 0, 2);
> +
> +static const struct xe_pat_table_entry xe3p_lpg_pat_table[] = {
> +	[ 0] = XE2_PAT( 0, 0, 0, 0, 3, 0 ),
> +	[ 1] = XE2_PAT( 0, 0, 0, 0, 3, 2 ),
> +	[ 2] = XE2_PAT( 0, 0, 0, 0, 3, 3 ),
> +	[ 3] = XE2_PAT( 0, 0, 0, 3, 3, 0 ),
> +	[ 4] = XE2_PAT( 0, 0, 0, 3, 0, 2 ),
> +	[ 5] = XE2_PAT( 0, 0, 0, 3, 3, 2 ),
> +	[ 6] = XE2_PAT( 1, 0, 0, 1, 3, 0 ),
> +	[ 7] = XE2_PAT( 0, 0, 0, 3, 0, 3 ),
> +	[ 8] = XE2_PAT( 0, 0, 0, 3, 0, 0 ),
> +	[ 9] = XE2_PAT( 0, 1, 0, 0, 3, 0 ),
> +	[10] = XE2_PAT( 0, 1, 0, 3, 0, 0 ),
> +	[11] = XE2_PAT( 1, 1, 0, 1, 3, 0 ),
> +	[12] = XE2_PAT( 0, 1, 0, 3, 3, 0 ),
> +	[13] = XE2_PAT( 0, 0, 0, 0, 0, 0 ),
> +	[14] = XE2_PAT( 0, 1, 0, 0, 0, 0 ),
> +	[15] = XE2_PAT( 1, 1, 0, 1, 1, 0 ),
> +	[16] = XE2_PAT( 0, 1, 0, 0, 3, 2 ),
> +	/* 17 is reserved; leave set to all 0's */
> +	[18] = XE2_PAT( 1, 0, 0, 2, 3, 0 ),
> +	[19] = XE2_PAT( 1, 0, 0, 2, 3, 2 ),
> +	[20] = XE2_PAT( 0, 0, 1, 0, 3, 0 ),
> +	[21] = XE2_PAT( 0, 1, 1, 0, 3, 0 ),
> +	[22] = XE2_PAT( 0, 0, 1, 0, 3, 2 ),
> +	[23] = XE2_PAT( 0, 0, 1, 0, 3, 3 ),
> +	[24] = XE2_PAT( 0, 0, 2, 0, 3, 0 ),
> +	[25] = XE2_PAT( 0, 1, 2, 0, 3, 0 ),
> +	[26] = XE2_PAT( 0, 0, 2, 0, 3, 2 ),
> +	[27] = XE2_PAT( 0, 0, 2, 0, 3, 3 ),
> +	[28] = XE2_PAT( 0, 0, 3, 0, 3, 0 ),
> +	[29] = XE2_PAT( 0, 1, 3, 0, 3, 0 ),
> +	[30] = XE2_PAT( 0, 0, 3, 0, 3, 2 ),
> +	[31] = XE2_PAT( 0, 0, 3, 0, 3, 3 ),
> +};
> +
>  u16 xe_pat_index_get_coh_mode(struct xe_device *xe, u16 pat_index)
>  {
>  	WARN_ON(pat_index >= xe->pat.n_entries);
> @@ -537,6 +576,20 @@ void xe_pat_init_early(struct xe_device *xe)
>  		xe->pat.idx[XE_CACHE_NONE] = 3;
>  		xe->pat.idx[XE_CACHE_WT] = 3;	/* N/A (no display); use UC */
>  		xe->pat.idx[XE_CACHE_WB] = 2;
> +	} else if (GRAPHICS_VER(xe) == 35) {
> +		xe->pat.ops = &xe2_pat_ops;
> +		xe->pat.table = xe3p_lpg_pat_table;
> +		xe->pat.pat_ats = &xe2_pat_ats;
> +		if (!IS_DGFX(xe)) {
> +			xe->pat.pat_primary_pta = &xe3p_primary_pat_pta;
> +			xe->pat.pat_media_pta = &xe3p_media_pat_pta;
> +		}
> +		xe->pat.n_entries = ARRAY_SIZE(xe3p_lpg_pat_table);
> +		xe->pat.idx[XE_CACHE_NONE] = 3;
> +		xe->pat.idx[XE_CACHE_WT] = 15;
> +		xe->pat.idx[XE_CACHE_WB] = 2;
> +		xe->pat.idx[XE_CACHE_NONE_COMPRESSION] = 12;
> +		xe->pat.idx[XE_CACHE_WB_COMPRESSION] = 16;
>  	} else if (GRAPHICS_VER(xe) == 30 || GRAPHICS_VER(xe) == 20) {
>  		xe->pat.ops = &xe2_pat_ops;
>  		if (GRAPHICS_VER(xe) == 30) {
> 
> -- 
> 2.52.0
> 
