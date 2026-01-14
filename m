Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6D5D1FA17
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 16:10:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A091510E1B7;
	Wed, 14 Jan 2026 15:10:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TVokOfUb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 168E710E1B7;
 Wed, 14 Jan 2026 15:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768403413; x=1799939413;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QhLCKsJLzpoTfWxlrdPCPdg2ut6hsOp+xG9AeyUV3io=;
 b=TVokOfUb7HqJAOhsiNwALr6FDEont2l10Df6RCsRZ5MYw8rIczNvPzip
 2qynqhpkX9XAg8devGIzE1ndTImpD2e29SPOCsRoYRhSA3y0VX/fiLvrR
 fuQBA+F6XQfw1UbXE7z4Sh5TCrzkRLfAlYBCIgjaT0sz9JCNqANbfU0R3
 RXhzkGkMEncTU/BRPu0rIPaudWu/1mYMSL2JPcgN3iVngIm77M8HyoDAz
 v2vKyA/oCDbvIkxxJExDiEM9rujnzbI/HzXboi4zBHvXTjCgHrLNrllSC
 afMpmNtbjWSG0TFriQCaB2rHhFvhWOvJAN5wdIbBwBGfepR34IxkJk3/P A==;
X-CSE-ConnectionGUID: QCBnWDk6QvqY3EmCJoPijQ==
X-CSE-MsgGUID: 725njVEZSFO1nuEOj0+TdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="95179070"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="95179070"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 07:10:13 -0800
X-CSE-ConnectionGUID: VH5009eYRYCbtT3jjEyIJA==
X-CSE-MsgGUID: CJJay6UoSBGc0qzR4J6yyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="235422857"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 07:10:13 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 07:10:11 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 07:10:11 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.62) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 07:10:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Se2nKpZNT0w0KbbCS9bHXlfWhQC8+f6AIV9vDy02JQJgIWwosfLdA19eWe4GFVjc9NQRdutGAL/ScIAgAplm5DGHQzmjm9FHENdi6GxTc38zjIrfbkz/WBKu9DCSrTKXtGKfOnShZXNVDSsIIpOhGf1O+DPDwF69dFZxYzVNGyzmqMK9GzMBwyRZvwomzsf/EH53cDU9Fll0LoGSoY6L9I9uHYhKf5gUJVsign/X1vdkBcFP0qDYDRR7mkkIb9WKw4BRLLQ2LoFsWqAa3PQTIkUbBneasuPN4GM3qkW3/kWRPP8aU+0LD1eOOv+sNWhYG735KTm+Mhj7gqWUfb0x+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=afXEtwGb7hDkvTAkBEmVYN3h/xvTqJf5xIWUVZw9B7g=;
 b=lYW0OuCWLYEFjbgjvKeRElvfQLUNKg1sgmDJ4iIOJ9COqytF/0mOJMUtxmlUbdKnEjO1fMdO3WUlYIX0BVrcK0ZUkKZv8BHrj/RiVvdwt+g93vXQ1cAsf8v+vqBPQ/zWDvsXuL3giavfMCpj63Teh1NS2HWizRBBpqF46jFnkHDF8uEwTtMztJNLpPRjGR2L+anwnaybh1bN4PKHgekp7fPZP0ttpuUAelVywWaV2QTey4fh18NdKEqmrfy8IazdfNOtTpVNNj6GpITdd4/MYQ+jpmgwG0ssi6E0MQonVR/GSgpK+hwIdgwvd63JRmQ7/rPTjYCahiyFpZBwWZxRPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ2PR11MB8470.namprd11.prod.outlook.com (2603:10b6:a03:56f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.6; Wed, 14 Jan
 2026 15:10:10 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9499.005; Wed, 14 Jan 2026
 15:10:10 +0000
Date: Wed, 14 Jan 2026 10:10:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH v2 0/3] Fix Cx0 Suspend Resume issue
Message-ID: <aWexzTR221l0F-we@intel.com>
References: <20260114034259.466605-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260114034259.466605-1-suraj.kandpal@intel.com>
X-ClientProxiedBy: SJ0P220CA0018.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::28) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ2PR11MB8470:EE_
X-MS-Office365-Filtering-Correlation-Id: e7367b4d-bb82-42eb-48fd-08de537f028c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tehLr8jq6IKc/+5qlMHuwUKm74cAg6ulwNg6c4IS/So1lWv9zd80kLE/S+SS?=
 =?us-ascii?Q?AAI2alvxzYfPINL6m6WyKBDW5iYj6ciEQExp4p78Ey/wRr/TwC37aAZfEkNL?=
 =?us-ascii?Q?/bIpDRkeZ5ewlt4VFUxLttjUtMIxZ2VfVq4ovAw+1umPaM2J4VdtgMQo++1P?=
 =?us-ascii?Q?Bw0xBP6Zs1O6K0/J3FdHp2/K2oEp4/57UUgGaxW5QXDPsX5BH1Z9YSyH7j44?=
 =?us-ascii?Q?EAU/RdlNCLt6mTq2JBfEhKui+wuHBK/DKeE/Il1LiyRL/eJgYqVfeXw4yO+H?=
 =?us-ascii?Q?4LS5Ee4f91aam3C6t1o/ZKXgWzuzVqsKeUmBYBtLfUKTKzD/3w2frAy9uzPc?=
 =?us-ascii?Q?Jsrme9PTGNBoUJbmlWZ4tKgjYOkn4/5Xk8lUh9z53G+l0GDeiOzrhM4bWpyW?=
 =?us-ascii?Q?qJbquhSaa4RFKI0RRk2OKrcjaaNk4/3s/EO9PsyPRFBVwpsqDgQUGiLfJS48?=
 =?us-ascii?Q?q9cLNtpT760OFIjsHo/b37BnhZxez8CxbxzLh8O3jmNxxBMF/jAuPZ1GM2eF?=
 =?us-ascii?Q?L1lEJiWuzWzX3bBuWd0sh+/imDsQwF+4j7oxovJboAQI78h3SCfQTSPkRNNy?=
 =?us-ascii?Q?A24tURKskGVRsu/zioUd9nduplDic1kkFc/fBirMx9Cnf3O/GZ8RHyOcjim6?=
 =?us-ascii?Q?nLzQR2L3R4uno+QC8t2/CNko9diHwVOdYs+1/Wxkulwof2mhJstX/flnx1xU?=
 =?us-ascii?Q?S8ODTPW7VW14xwJ0A8aWWbG6dZTUZsqzf3zWxcazoNKV3rStniYNVKGyKfsV?=
 =?us-ascii?Q?nS5vL9oCbJrBZ8XjTd7ZQuF88IJCtKgR386LSTwPqvL7B8lFzeubAUVbUbWo?=
 =?us-ascii?Q?5n7pF2y7Rf2zX81dq37Lv1PDigOftPI1vh4+l77dF9e2UP5FDPqCfHp1++AJ?=
 =?us-ascii?Q?4SvRMILZCSMZq2eqqYC91Mg0Xy7fF3BOHF796Fj2HKTp3tCooDRva8IULml1?=
 =?us-ascii?Q?3TdBSjB325fshUkgMtrIQUMZQNGjU7eUDfTYFjxgwMVkHShQYfYLCyu/T5j0?=
 =?us-ascii?Q?kAf8EYsci8VSBFzfflZBiE0ci16dFB/H6X4MJKQAiFu84fwfpRlGbFNf1/EB?=
 =?us-ascii?Q?wmHqnvFEwGfZFJWF4W4kN7JyUHQgCyMjLkvxieCcrjuMm/FQj9V4Kz/nIqE4?=
 =?us-ascii?Q?Tpk7tYL3xxv8uraEVsZr8gJDh/ponpcdni+APbOMLlEUDzswVsCd2FPl5dhz?=
 =?us-ascii?Q?i6EGhJDYuigD2RuhlDcGa/8JQyHVk+j6xGSaiRdvNtrSBwajJMR5hNztjXx7?=
 =?us-ascii?Q?SQWaN/FMKtTa9hyexPdFVJ73qZBw5QQAgAru6Xm6alUQtdEs4ky5osHZkQkW?=
 =?us-ascii?Q?OIkotBBIzdjfBtNNQdfAhqRSslMjNq4d9mIMuR+GHQbV04UKWfeeFF5IHwNq?=
 =?us-ascii?Q?OAguBzbFXS+rlnhD+11TuqoS/X9pWJuJyWCys/ouRLSDqWHnIiYz8d2BIubq?=
 =?us-ascii?Q?nk8nZJeF/ZSS6m3BnyB6CXVVz+W0exw0m+QYdL4oHwrY6qwu3NwLqO6xEpcU?=
 =?us-ascii?Q?zWa9s11gO2fou2ZFtzS5tTqao3/iIkgjNtdg0CFkPw3HU1fcz6s45an6SCEM?=
 =?us-ascii?Q?CrL0IW8ydl5QXWEvYdg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rjuid/2odOPn9gl78IGY44kvKr7YUw3f4VopIpCLw/8zrdtFzfl5yMozP58E?=
 =?us-ascii?Q?I4WQsQ8cE4DcJDgtdo2iI0qdQC+nwM9oA+IgDXkxe/bHEiK39A6yIXJ/a6u9?=
 =?us-ascii?Q?d6+uqdBB9ZS2oKSKqemeqbN43Sm2YWdwtKDGN119T/fDPe7ap1O3juSXmile?=
 =?us-ascii?Q?mZe3/BScNXTQ41EZvdtPY7qZwadwXdghQaxxEQPecgbbTTH6RaRw4xslPIoU?=
 =?us-ascii?Q?rOI1D2ho0TRdm5UfNORmxuDPHPATPRQDQS0Xorsxg0Y9X/W+zSbr3eXf9oAK?=
 =?us-ascii?Q?wL3js85lH+6uu6Q5phmypt5btoIoNMFP8UaKpQmttjsTTriVyRs1hdFBjegg?=
 =?us-ascii?Q?XpkLz2UYflfVWBJnX2yoxctQHsX3QMOz4IMGnwG6wz3DAN306t2PNqz6TrA+?=
 =?us-ascii?Q?Bji9khgeH5k+tJihNZ6W+UlzLyEOh/fRSoFSTe40Vh5vVCcFKdyJBis/4/Jw?=
 =?us-ascii?Q?VrtK9obfs4VJeWcg4VjuCMkRekoznLbda72qbMVsjNI7dnH9XkKJpCy3OaOp?=
 =?us-ascii?Q?XBGJ9sIB7YpsGOr4cYGVYL14tSTBQXroP9pOR18rVAp50O0xhP2Mj9VdHmg+?=
 =?us-ascii?Q?jHVa/UAGfWWv/b0hqRivIdZFGLjjhu2VsiMmRzSYdX0Js+ITqZQ6NCpEYwlh?=
 =?us-ascii?Q?Y3efdW80t5OLocSVI5Bf4yGu2boKorXvnPdbCuevI4QNSVfM8XZTJCdqheZh?=
 =?us-ascii?Q?rgkXmIITNYocBOcWKFiL6yPtmwmBwOgbMD97FAi+8Ofns+nqlnBKqSCqJBRz?=
 =?us-ascii?Q?iCxOKAMc6eFx5NubQ2mHDOrvMpG6X2/e/emR8GpOg2QGxZcQVQ/EBtrz5dfv?=
 =?us-ascii?Q?U1UQXRS4AtzPRtrs+eVOid12Z31qj8ZT8vhy5VfSeY5fX9lMaoYsFDxbdSnp?=
 =?us-ascii?Q?gpMCpWZALPqQKyk9SmEfXVx82EabqcG0qu/xyw1HlbTs2oGCOmFuSN1MQS2j?=
 =?us-ascii?Q?5mtF/aYBn3j2js8r/pC30XE8Pw7vvlKG5kGRYVhKncVWTcZ9qd/qz0+RQaii?=
 =?us-ascii?Q?Bjv4Mq0ndRtOrrXNgslfZBZhBadG+KlQj9Ga1WxdFwaHIOY1vt/wiBn00diP?=
 =?us-ascii?Q?xAAQ59t00P3DI2jaiNw/FbY/AWDDE8KUAd9cMePsZ6HLhzYHBj38oPVdFwG/?=
 =?us-ascii?Q?yRmoDyrMIhaXjhbJ1qd90vqVn+ClNay0R4G4DTrCw3aqCDjVCzaKG4bJIWms?=
 =?us-ascii?Q?qcLQbgYYankN/Tj4VX0SnyibRc2NrE4zAig9oMgF2jAS+tR0qxtHIqGad6vJ?=
 =?us-ascii?Q?htyw+WuVx2LSIGrlxlqa20AdqFs4HoDWEY/PSCBY1TC+qMeeoZSts8/MsR9J?=
 =?us-ascii?Q?so1YL9xnghusH/8CYyNcX7+pYzqzI3l0JK5t2Q5hkwUc4VoRHQkZcbMpI3lC?=
 =?us-ascii?Q?LccDMWICdYKw7kGRIg8DPraQxCsH1wf2VlM/mvs1LVQpvSmTWUxeDIOjZ8Kc?=
 =?us-ascii?Q?VsUEUDNhLwe7bd7GLd+72nmHxwRWuWodezIdZB5yvArNjwrM9ibsYPDfKdnm?=
 =?us-ascii?Q?acyuqG9N4+Akm0sVihy5rlq3TdoiiP3F9qq++5kS2NSSUTVidT25/8rPQAks?=
 =?us-ascii?Q?92WMt0hqyIJNhBQglBPyrTtd8auuQasGAEzw3Ll3XbJZp7U0uC+SPDJ70j+Z?=
 =?us-ascii?Q?9jk9BO3LwCa33VRBzRkMoezRUSY4cr6ubobvq+FRwIm9mvD+UlcZLKfIASDg?=
 =?us-ascii?Q?k/4RD7SUJjVsyjJiRyWhCr3FUXx6zGFgBANxqB0ip4Ic7mQD1Q4kCt7+XYAw?=
 =?us-ascii?Q?gCqWGUPFcg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7367b4d-bb82-42eb-48fd-08de537f028c
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 15:10:10.4226 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AmAAo+V+t9sksQV1IcOdVm70hoj+LZ9Um25LvPW/qciT4xg94EfAIKfwCzhctyukIO4u4Hxnu6ZUsz7qKa9DVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8470
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

On Wed, Jan 14, 2026 at 09:12:56AM +0530, Suraj Kandpal wrote:
> CX0 PHY currently has two issues which cause a hang when we try
> to suspend resume machine with a delay of 15mins and 1+ hour.
> This happens due to two reasons:
> 1) We do not follow the Enablement sequence where we need to
> enable our clock after PPS Enablement cycle
> 2) We do not make sure response ready and error bit are cleared
> in P2M_MSGBUS_STATUS before writing the transaction pending bit.
> This series aims to solve this.

Is there any Fixes: tag that we should add to any of the commits
in this series?

Also, next time, consider a fix as the first patch for easy backport
and the refactor on top.

Thanks,
Rodrigo.

> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> Mika Kahola (1):
>   drm/i915/cx0: Split PLL enabling/disabling in two parts
> 
> Suraj Kandpal (2):
>   drm/i915/cx0: Clear response ready & error bit
>   drm/i915/cx0: Rename intel_clear_response_ready flag
> 
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 134 +++++++++++-------
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   4 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   7 +-
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   |   2 +-
>  4 files changed, 92 insertions(+), 55 deletions(-)
> 
> -- 
> 2.34.1
> 
