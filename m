Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 811BFCBF867
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FE3F10E4ED;
	Mon, 15 Dec 2025 19:24:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NLJdn7tG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F64710E4CB;
 Mon, 15 Dec 2025 19:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826653; x=1797362653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=mS6LE9LxTHtVBf32qAOc/NTLDQ03n1NNUzNxeyyFKbY=;
 b=NLJdn7tGNIEGqVoP9rF0wpfJ4LEF6WystGaHLcVCus/Di56pVVmLSsgp
 L5kvi+UZZWPMy2OMDcbM5RuSK+DXBietHfaWLuDvtQ1TpGzP7t8nVYX3g
 DC522MXvvqkKJ+5GMC83oC8DvR62JLtCcbJJ3y1FGjJxpw7GQoaVazgoz
 ILB9Ap0WOYgLRyyGjn2R+xlrRMgchdCUtOvv55Js0TwHMJnMrZvhAW1y5
 Au7NytFSa3nWM0iPSKMWxCxluKjvakCqexENC8q9kCMIMgcQzPVPjNZuH
 84kT2SpysX0GxXd/2um/6kLzdu1JnVkR+2JzamlYpoqmJlLd6PW8LJtpR Q==;
X-CSE-ConnectionGUID: V2b0s5yaSQCGsd489xOgpw==
X-CSE-MsgGUID: xzKRwmUbSr2CXqOtmJE+sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71370866"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="71370866"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:13 -0800
X-CSE-ConnectionGUID: ufWf0mjxRtWKqxv8tiKwDg==
X-CSE-MsgGUID: 7Et9cd8ZQn6N8ycpf6MbUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="228459842"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:13 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:12 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:12 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V1oxk/c2MFmSimg8gGsvqOBfaB2UbkKjTJNxXHmtm3eWkxyeD7+rit8toZ+qaGDJDLg79ImZfCG+rRv4sFuZdaYNH3j212vL3WSMSd1FqInua2KrbJq2umYvpuLHO07S1xNpKpBjZBvsrUDaMILScieXbeIjlRfWtOa4Ep7dvwQKGDjKGStGZqD9mnknZ7BMxFvjNU23AQPZ3a2ijwI2/xJLSZxXR5T3c82e25JcbD04o1FwyGAOFZzIauNTnPX6SxNzOoqQPqfC4tsfuj6Xmj5Hr+iZBZsxA47jaq3DShjVBzVXZ9kWt9X4igtPWYamNyk+GpkM7GgmiicYi/Pm+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GOrNwdcSYq24xljzjYj9XMmoHEVuQ2dcX1l6squMJTM=;
 b=v9+pG5g8WVXpY0BxhL41NJZ9hLy/c6WcuKRpyU45m8hBfqA4SC8oOgWrqs4kPjbpF4ZRLKesavosheZmWejPPnr9O4OEFwGRFgwrRwFZvgc57Jup+hqT3StpqvYSkePmME0VmYN9GlCjHdoDTfwcI3cb0QojADH5hRrNEjj4/F71Bx5YIkPnbu3eB3XT/jW6RfiPA582XsdX+TS/okMn3ympXyltA+B5/Bm9UkMaJGuiQEop9cyfT9CqfHDyLrCC9yKSJw+6jb+C/J+mJeefzsYr7qLu4eS5XEx6DMDEJ0A+uwP1E7n+L9h8u/kOc1qkJzEadwAahxX05Z8ZCU4iQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 04/16] drm/i915/dp: Return a fixed point BPP value from
 intel_dp_output_bpp()
Date: Mon, 15 Dec 2025 21:23:44 +0200
Message-ID: <20251215192357.172201-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251215192357.172201-1-imre.deak@intel.com>
References: <20251215192357.172201-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5128:EE_
X-MS-Office365-Filtering-Correlation-Id: 531a5218-9daf-4758-4159-08de3c0f84fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?iqgdtL8Ln0nyv94yq6+Yimc2kKWMpZdyv87bPUhWPG3BvRcnmSbKaP9S37Tv?=
 =?us-ascii?Q?/UPd2LA3TQbtRjEWQ21CGSlg303KCB1Nz/HUvPNhbh82Nfu+4POSU855VYMR?=
 =?us-ascii?Q?l81SEIj5vNIsjCTZeAeuaUQs5IAp7dXKh7epa6fmv9wT0rOprf5/8TEU6w0O?=
 =?us-ascii?Q?9aTNowiPyqDK/GhvhC74YmiOY5ZljLAvdixVQzht+rbv8mSHWUXA8r58cCRG?=
 =?us-ascii?Q?bTGj2V4suqSekWYalitIXFWNrho/gd2ZiJvxMjU/zx0gv0jms2Lb0BV/7RNr?=
 =?us-ascii?Q?ngtsw1XDMdqJxdcIwcv9GtmIAob2+pUcoTc9kYAyR1T5lAiFp+gHjHUVT79I?=
 =?us-ascii?Q?YVpNoLAPvEL6KVW67pCl6vu84X0li32TA9W1o7J59Fs0b/jY/dKUUuerqD8Z?=
 =?us-ascii?Q?JdJJlZU6sogACND/dx5Jl+MtrGg8c014KcoNbHFaIBilLpBXuSouWmzmbIFG?=
 =?us-ascii?Q?5sP1VMZ6cIFYMOPP7mHvEfx44i+HsZFrxWK1dwE0ffV6p1FBQ4/apUY82f8z?=
 =?us-ascii?Q?R4FnHu7GZe6UIMQQYgt3czCFI95ehPdQLJyOGJzT2XnW4cMq0QgacBZERrfV?=
 =?us-ascii?Q?24x/UlMAP+BFNtzxoZjQMfGGTohtmL2wDFCtN+GopEoEHRM/nF8sBK0f72UK?=
 =?us-ascii?Q?Ozleb1LTPfwPgqhTAISY1dfyMt8sdtMoWYY3UZzWVivXfuTGr9opP6ojiCtJ?=
 =?us-ascii?Q?W093yG/oGL3Nw8m7/c2OLU01RZjhJV+zJH3MXptlA4iofmo+c1r0ll9ogECz?=
 =?us-ascii?Q?IlZwRS/6T6gOlxKbfcxze1Sn1h3JCOVhzSr32wbXRsYNKn1qKNbAyz/amPPi?=
 =?us-ascii?Q?0jSAjlF5c9q+1ABAJeacb3QIB0uGYVyZ0P5R0q5hj7PRTP2GABENuthIJKmo?=
 =?us-ascii?Q?eDzD3OBFo2U2BWn1eUA01dXeL+PIGSJ+GCbg/HZVenRtGmRGgw36mFCCYM/3?=
 =?us-ascii?Q?5wiBaI1j+bHT+vDjH6VOkZbnnF3s2N6rZZWPavw+XqMH65U5IHRY0zQV1gBb?=
 =?us-ascii?Q?7CfSMFh8pQpNXzqHUDHZol/q8jDw51Z9jhzlhMYLa3qH5pbciNNrTDPL77lH?=
 =?us-ascii?Q?ZLWWg8r9EVaPku4CVrQgY7sC+PyXuepWB+/zgaqYE0iwGYzL5F9/vDaTdPR/?=
 =?us-ascii?Q?SOowevKLgc+mLLUsOGLlEakVeCdht8MtUpAfs8EUl7iAaXx1Y7WXiVWcXLZM?=
 =?us-ascii?Q?tnKPEkR8SaIvZLYkXwl1GPE9NH+kiH9ZVi2tVILaHbPXN7dLdQv+bIWCs5s/?=
 =?us-ascii?Q?g4AbupQ14Fj2HWxajB2R1OtjYMRfHBCRsy3wiweo0+tnK1kp1P/PvZ9cMhwI?=
 =?us-ascii?Q?XktiZp4IRrGnP9WhAl70E6gTxsuLxXZpdyohAKBfJGWte6J4H5tVXPe7HyAA?=
 =?us-ascii?Q?nOU76fgViB+wnV7+ftEHSzX4Wi6mryorVvUXCWMMOuoazlLVo9c7v61Sb9F2?=
 =?us-ascii?Q?ndVR3uJKu3Zcy3C2RSSuJbUr/4IBznsR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rDQ/v98g4yaXMe/FYs5TMEM5f27lUsW/ThMmRDpcXhiN92vE/t+PLu/7dg3s?=
 =?us-ascii?Q?oco9+8ed+ykfftGe7ncGIy7VK2CWepFzZ82F14ndG77aJp4F1fic2Z140s+B?=
 =?us-ascii?Q?+FYpvvZiNBHhtYe17z9N+rKDV6fX/wl7pa6TCar6sojzFiA/zQ2/kUVqGi8B?=
 =?us-ascii?Q?GXigEb4QKqZ46dV1uNZZuBTXqY0CTWIEL1j1ryVs6AwfUBZ4xeXK6iPpTPlZ?=
 =?us-ascii?Q?NRaYpoQp8dX+tiVagNAgdsZTiUtGiXFmtNuB1oEbP21rO+uQ9h6nIcg5TAvE?=
 =?us-ascii?Q?QrSHgoCUF+CzwOooBU9WG5nfZc4pMiNFrXJI3ooQScI/H/2DongdEHERCyhN?=
 =?us-ascii?Q?3mRsb/f9ypH0dfrGsih0lvzspnr3XCHASzqcmyfopxgf48rcdu/qDjohZAzH?=
 =?us-ascii?Q?T9KUOKMQdQv/PTdycDKu+AUc5kaRan6oQEv7gc/IoNPcK5/bPkd/LgiI7yRm?=
 =?us-ascii?Q?FafCAYwUeqApCNzLAK9eZfq1imHNyqvdnoaTt4wpTWZ5OuSiXadoqtiaO5LI?=
 =?us-ascii?Q?6jlgDfqZtBhA/T2g83yzL6M90FCbtgc9ScJWuoRoayNCahytDcs19VyJGMwZ?=
 =?us-ascii?Q?/5cZD/CEPLutVwp7jl1yiTa0bbfvilpHEUX2RNnekOFIhkswmjpHhau1K94r?=
 =?us-ascii?Q?I78Up7KpksELi5aUvn6dcU+58vlGfgteErehKu3feVMzlAXg1bFpaC5N/3tc?=
 =?us-ascii?Q?mcKUOBq6FHD5s0KkvbXgzO6XSltm5637OxEso0c8aTBjiqwLSyQburhi3lS1?=
 =?us-ascii?Q?D5MvqK/Wq1tL3mez/tPivuzm/JkQ5Qqg+ifGwph5qTR7UUWGQLLmis3lxvWC?=
 =?us-ascii?Q?C+25K132HFjNRh0SZZGUz+YZ8k+kUqXZmaFveWmHnHyi/tznya+XNCc5QrYY?=
 =?us-ascii?Q?6Nww817kNYODFtz+oLkbcvR1aQyC733VKQhAwwXYJMJ+Rsjo2aX0jGIwvVqd?=
 =?us-ascii?Q?SbCrahzhWHaQnDTM0YFsQRWu7c8Y6hxvDaFu2h0eHS//zEqsE71JwkfStBVh?=
 =?us-ascii?Q?MLUYa0deIcB3G3I0H0vj4N+vqKH/yShOk9w5/2v899qsYmUYHIHl6CkOxeJh?=
 =?us-ascii?Q?BW0WEzGOtrbblzVMt40VRzwUxnVtUt0FOvSvUqM6iorkum+kmpaa1ImOcobX?=
 =?us-ascii?Q?uGIaXF1mt+b6rl8xezp/ON2w9X440JyrUv4IYIGwFn6L1Y80TNmUAjAdyk5t?=
 =?us-ascii?Q?T3jqX9dMw7ES247biur1pysndVcV6/oNsMkVtPICuI/t4T8oox/BkEfW89J6?=
 =?us-ascii?Q?lADRrmRmX6FPGE3E4yAAqOfQCZ8NqoCAoSWUuLwCoZRu446rm4GoJaCRApEy?=
 =?us-ascii?Q?4aAROmZt0Nm7JjP211KFAdp4SbE3VNDEzft2sOC1FlhgZEAzI4tRsjDzR5i8?=
 =?us-ascii?Q?qhE4S/Vw1r2U54w08QfXroC4MIFEqlKqz0Q1UgWp1U8BwSOl4QT6KUWxfL4Y?=
 =?us-ascii?Q?lPvLsS+3f2UB3xsoCToa5vSgv10+zEuOSCrBUrj4s3J/rn+zfHTKia9Qt/AX?=
 =?us-ascii?Q?vJR3OU0PNohCMIZLa/N9vCB/lkhWfq95ZaO2qQiHZPaTLdYzOqNLD0pa8jXR?=
 =?us-ascii?Q?YZEV40HH+SEN9vxUzX2bX5ZRhCRouq1h7iqoWTwy+7XuhdafBrCwwy2COxoS?=
 =?us-ascii?Q?yB4FHIY7qESG+eYvSrNj6JasIDUxeIuoajri+NLp6/T6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 531a5218-9daf-4758-4159-08de3c0f84fb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:08.7723 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IRNkWpX+h8TFGQxsYJIozuK5Q2JSmDWJ128XpLeIk7ssaA9M/jG1zl//Lt93Chm9Md44onDUq9lGjNa00AMqmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5128
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

Convert intel_dp_output_bpp() and intel_dp_mode_min_output_bpp() to
return an x16 fixed point bpp value, as this value will be always the
link BPP (either compressed or uncompressed) tracked in the same x16
fixed point format.

While at it rename
intel_dp_output_bpp() to intel_dp_output_format_link_bpp_x16() and
intel_dp_mode_min_output_bpp() to intel_dp_mode_min_link_bpp_x16() to
better reflect that these functions return an x16 link BPP value
specific to a particular output format or mode.

Also rename intel_dp_output_bpp()'s bpp parameter to pipe_bpp, to
clarify which kind of (pipe vs. link) BPP the parameter is.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 41 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +-
 3 files changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 892b0f8b5b39e..3254cec24c053 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1234,7 +1234,7 @@ int intel_dp_min_bpp(enum intel_output_format output_format)
 		return 8 * 3;
 }
 
-int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
+int intel_dp_output_format_link_bpp_x16(enum intel_output_format output_format, int pipe_bpp)
 {
 	/*
 	 * bpp value was assumed to RGB format. And YCbCr 4:2:0 output
@@ -1242,9 +1242,9 @@ int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
 	 * of bytes of RGB pixel.
 	 */
 	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
-		bpp /= 2;
+		pipe_bpp /= 2;
 
-	return bpp;
+	return fxp_q4_from_int(pipe_bpp);
 }
 
 static enum intel_output_format
@@ -1260,8 +1260,8 @@ intel_dp_sink_format(struct intel_connector *connector,
 }
 
 static int
-intel_dp_mode_min_output_bpp(struct intel_connector *connector,
-			     const struct drm_display_mode *mode)
+intel_dp_mode_min_link_bpp_x16(struct intel_connector *connector,
+			       const struct drm_display_mode *mode)
 {
 	enum intel_output_format output_format, sink_format;
 
@@ -1269,7 +1269,8 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 
 	output_format = intel_dp_output_format(connector, sink_format);
 
-	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
+	return intel_dp_output_format_link_bpp_x16(output_format,
+						   intel_dp_min_bpp(output_format));
 }
 
 static bool intel_dp_hdisplay_bad(struct intel_display *display,
@@ -1341,11 +1342,11 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
+		int link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode);
 		int target_bw;
 		int max_frl_bw;
-		int bpp = intel_dp_mode_min_output_bpp(connector, mode);
 
-		target_bw = bpp * target_clock;
+		target_bw = fxp_q4_to_int_roundup(link_bpp_x16) * target_clock;
 
 		max_frl_bw = intel_dp->dfp.pcon_max_frl_bw;
 
@@ -1460,6 +1461,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	enum drm_mode_status status;
 	bool dsc = false;
 	int num_joined_pipes;
+	int link_bpp_x16;
 
 	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
@@ -1502,8 +1504,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	max_rate = intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_lanes);
 
-	mode_rate = intel_dp_link_required(target_clock,
-					   intel_dp_mode_min_output_bpp(connector, mode));
+	link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode);
+	mode_rate = intel_dp_link_required(target_clock, fxp_q4_to_int_roundup(link_bpp_x16));
 
 	if (intel_dp_has_dsc(connector)) {
 		int pipe_bpp;
@@ -1815,9 +1817,10 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	for (bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
 	     bpp >= fxp_q4_to_int(limits->link.min_bpp_x16);
 	     bpp -= 2 * 3) {
-		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
+		int link_bpp_x16 =
+			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
 
-		mode_rate = intel_dp_link_required(clock, link_bpp);
+		mode_rate = intel_dp_link_required(clock, fxp_q4_to_int_roundup(link_bpp_x16));
 
 		for (i = 0; i < intel_dp->num_common_rates; i++) {
 			link_rate = intel_dp_common_rate(intel_dp, i);
@@ -2201,10 +2204,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	int output_bpp;
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
 	int dsc_joiner_max_bpp;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
+	int link_bpp_x16;
 	int bpp_x16;
 	int ret;
 
@@ -2216,8 +2219,8 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
-	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
-	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
+	link_bpp_x16 = intel_dp_output_format_link_bpp_x16(pipe_config->output_format, pipe_bpp);
+	max_bpp_x16 = min(max_bpp_x16, link_bpp_x16 - bpp_step_x16);
 
 	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
 	min_bpp_x16 = round_up(limits->link.min_bpp_x16, bpp_step_x16);
@@ -3267,8 +3270,8 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 	if (crtc_state->dsc.compression_enable)
 		link_bpp_x16 = crtc_state->dsc.compressed_bpp_x16;
 	else
-		link_bpp_x16 = fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
-								   crtc_state->pipe_bpp));
+		link_bpp_x16 = intel_dp_output_format_link_bpp_x16(crtc_state->output_format,
+								   crtc_state->pipe_bpp);
 
 	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
 	hactive_sym_cycles = drm_dp_link_symbol_cycles(max_lane_count,
@@ -3378,8 +3381,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (pipe_config->dsc.compression_enable)
 		link_bpp_x16 = pipe_config->dsc.compressed_bpp_x16;
 	else
-		link_bpp_x16 = fxp_q4_from_int(intel_dp_output_bpp(pipe_config->output_format,
-								   pipe_config->pipe_bpp));
+		link_bpp_x16 = intel_dp_output_format_link_bpp_x16(pipe_config->output_format,
+								   pipe_config->pipe_bpp);
 
 	if (intel_dp->mso_link_count) {
 		int n = intel_dp->mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 200a8b267f647..97e361458f760 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -193,7 +193,8 @@ void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 
 void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp);
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
-int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
+int intel_dp_output_format_link_bpp_x16(enum intel_output_format output_format,
+					int pipe_bpp);
 
 bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 				    struct drm_connector_state *conn_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4c0b943fe86f1..1a4784f0cd6bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -344,8 +344,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 		}
 
 		link_bpp_x16 = dsc ? bpp_x16 :
-			fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
-							    fxp_q4_to_int(bpp_x16)));
+			intel_dp_output_format_link_bpp_x16(crtc_state->output_format,
+							    fxp_q4_to_int(bpp_x16));
 
 		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
 							     false, dsc_slice_count, link_bpp_x16);
-- 
2.49.1

