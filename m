Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D14953A7F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 21:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E968E10E4FE;
	Thu, 15 Aug 2024 19:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kS/wAhl0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D83610E4F1;
 Thu, 15 Aug 2024 19:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723748614; x=1755284614;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8HwExTKOP4vPH2h1p22zWOl0aV4QjwUVOBuvC8YYz7M=;
 b=kS/wAhl0CNOUyX3Q+csM+FgIkEieaRRtaJN6vX6NGOL8Wa1UfYUxzBoN
 PlCU6YScf8M7SNoAhjZea+FePhJjcOeNS4MIWfjpHxrt3u7XaZKTZnDjo
 8YKCzoHLwly9go+jbJNs2q4i5EpizCDmaSZ3kC+Q2kBtus1cul/a6etCC
 OYMMkmEatnYvY2+YN8yaBmStdqN+3zD7in3kWrAj4xrQiDgHJo/bvX5hE
 0S7tHmWsb1OWApcD9+k1pRbSTzCL9MiDisVxmNuSa4XqQ0w9oH5XRdoPe
 78MrV6PRwtj72h8t8SHUEKsICd+PDf37sb8lDHaM/wzVOeBUi8E4YMR9a w==;
X-CSE-ConnectionGUID: aattxdoGRIyMndBY9KFq5g==
X-CSE-MsgGUID: Bo84mOj6QtGeyYocaRZCDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="25787166"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="25787166"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 12:03:33 -0700
X-CSE-ConnectionGUID: lX0dAhOfQTWSNBax04RsGw==
X-CSE-MsgGUID: iMNa+ZydSR2mhi0WSgWHww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="64336563"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 12:03:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:03:33 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:03:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 12:03:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 12:03:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xSLXYybNcP3eNZ/pbN7jNh38GoTvnY7CGk42nnPKEb5+bZXFmFTAmi/fQuxlLwG+0DC6dRqbchMFsDho2+WPnB4f/DyU7y7QUV8fiOuxgj/eFltPl5Q5efVmLRlQDuJiZws2zF4OvE9Z+NrUqxp8yPP4KMHGOcH76GkYyw01m1oPtH3PaVGrIwpN7TEJVexbiGbaInDenBPJUMBYlEXspdbh9Srvaryls5sp2ocrNw60ZLKyDI5GgjCcn6oFNul4ctHmf9jrJCc0HdFReGZIxmePjsYcmqS7hooDexS4zFWyLhTMAAtgiZAMWPVHk9BqkVze038rb39nYUkUgdlAoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=58qO25TYYkSedddw25XKDOkCEPTkzPPs91mc8q6BJUQ=;
 b=AWipl4WMD9VeD/gPbntZ04YgDOlfZ7d88Ow4DYi5/OL7NiKhte2BAo9n+tSRkca8HPLPQ2uKdukTm9pFAXd/+Y/VG4w28nLfyzKxKnc/ynwsIFA9xPDdeT8WcG/wzgBuirB9kioBf+kcQIUYw69Ju/bX3EHsNQBOCD3TpQHz2wVsYi7D9lSp9p/83pJLgLOTJ2C+o7q1gVoHnMVTC9+hoakiz+HCwm5nMKSSB9DUhrZaR89gXv288RkkUxK353Q0+1qM/qkRXW9CyK3BvixAB1wKmEAhrX7kli7rJmJ8V8iBbwJQdfCZmz5T4AYBl9u+V7PYplNHPDO0NNAcUpQpQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY5PR11MB6318.namprd11.prod.outlook.com (2603:10b6:930:3e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.32; Thu, 15 Aug
 2024 19:03:28 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7828.023; Thu, 15 Aug 2024
 19:03:28 +0000
Date: Thu, 15 Aug 2024 15:03:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/7] drm/i915/display: support struct intel_atomic_state
 in to_intel_display()
Message-ID: <Zr5Q_jEQbpwUwGSk@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240813164123.2674462-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR04CA0002.namprd04.prod.outlook.com
 (2603:10b6:a03:217::7) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY5PR11MB6318:EE_
X-MS-Office365-Filtering-Correlation-Id: 14f63dd3-3b71-4d02-9a54-08dcbd5cf287
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XzUyr9Oyux8QgQD+qidx5ssNLmBpMDeRdwyoiePiRH6wqgxtWjZjg9XWqy9T?=
 =?us-ascii?Q?eayKQHtN0fVsQSl7g1VtHs4gDz0yr/ALccXAgoC4MHk8wL/xoKwItRcJPAfh?=
 =?us-ascii?Q?XkIFWJT9HNz7UeCx/k/TE/A7C5UzOLRswsM+62SeTs7ae3s6vO6r7jb2W4oh?=
 =?us-ascii?Q?VdwYAHbbr/qUGrjj5HykgHfRoMqyE5KJI2fHaOfeNeWcaIl4ec1ObWZS4VQ5?=
 =?us-ascii?Q?LVLdQj84ahFF06mC8Ea+6ma/uJJHMMneDcQHlxe37e1Hj7v6YOpICM0/eviS?=
 =?us-ascii?Q?BShNcq4LkWr9xZ+24p7+281FfEvyWs9hKdmZXKt8kV7hP+Ysfp2h30UbPz3J?=
 =?us-ascii?Q?iR9gYLpJuEVMmir1tJ3DTpfDGwjLh4gQy2wrmb0V9GzcAZXleAkaG0UjRgTj?=
 =?us-ascii?Q?z2Z9PxizNMm6JfuuXb8UNBeki6mlAa3Jo3jELfvgMMcSZ0FZZcZAtZWv//d4?=
 =?us-ascii?Q?moH4NSOd6uXR2yqoqWYsg/V8svTa7rxdU1N5OoOGy5PVWBBk6M4A9PE1QgA5?=
 =?us-ascii?Q?epTcDGUQecg/43+d0yIQEk33Q3FYu7tNLuPqno/BOw7uNCUiVtif5WUsF66V?=
 =?us-ascii?Q?6Bn4WAjGzoD5MQIUPehOTL68IvOKPiUv3ZR4vv0EIOKqhhPPYRJz1tk4xERF?=
 =?us-ascii?Q?ysrS2RD1JYPm4ozCfGaybQJZ0aoGyZogn40dQ8oLMIfvq64j8RUTqTjIngQr?=
 =?us-ascii?Q?CBot094sz750CJwnOpZpsLqOJ6H6KLRmPnOCfW05jKw6qLXFpB6hMnvyNgX9?=
 =?us-ascii?Q?tF3H71VFawuRPEUqVNU3swWmjbPWW0fUkhvUczMGZ8SJEL/UdN3Ddc/Vhrz1?=
 =?us-ascii?Q?jHqRaT3YB4rJfzUxPHOlE4MkabaYdQROXmCQnfIsAMynqqbzvHshaAX1lnGm?=
 =?us-ascii?Q?PTRIAdsVBqkCX1lAGnzfiUzKztqTDi/ruiMjZEn8XfQyV8Ao2FAvaVziR8qs?=
 =?us-ascii?Q?BzsoOy2CTHjJfg/MhqoABnMSpROqykoduWlHbla3v13cDJ9CO3+NqIkfwhr6?=
 =?us-ascii?Q?7gQs5GzOm0Lg3lofUcw2Xo17qXKR1OGONB/jP+XnuchO1HMk9EzrAsFfq+5Q?=
 =?us-ascii?Q?ZjBWCOKjJN/WreZZmL+vFlamSHYzbyWwql9nZgL3hBQDnhh2vnOJfcZ7ZI0D?=
 =?us-ascii?Q?BBTe3zPTecbXEHnxynR7BYTXcF7cZRM9rHT/rtIeinR5msPWs/wwlZQtpZyT?=
 =?us-ascii?Q?MtdVh40KoNmqj6jr73lUdcFZsuYA0DXCqnMSAttIvn7d1F9YpcfniaydZgje?=
 =?us-ascii?Q?KHRJw8iaKy2I+xAzmJcQd/iNc2q+7jiar9VmtQlQQoi6Dxuzw4QxMjQWNNI5?=
 =?us-ascii?Q?HBmL9u2pGGjLfQPzUnIFShZOUyHYm/MOwXCljI8SMtRzGw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rK9hOLtv+m83X73CwkY8iP8dLSOqlcJyE2J37Wj4lPiG3prIsWDIOq7mJL5O?=
 =?us-ascii?Q?UcxvJDZhy4cgGBuNvvgWr/1YikOCmNWnRf0+HZnAz8j3WZZNhfiokdw0KJea?=
 =?us-ascii?Q?77q/uG2Gum/QisJba+J/Y388RCZr9omJ7VTEuV5fYXnRKzHtsfwruzvyLTwB?=
 =?us-ascii?Q?sXgM77pBxSx/D7pXshrJ51agZ/+Q+3qbyO1bRYQAD/PuyQeIpCvKl3eZfVST?=
 =?us-ascii?Q?qzCMdS/wSGsV6Vr8S3q09Rz89wjWkJke7tFHQ5zn3NXhvUvqlyaRqeDZi3yv?=
 =?us-ascii?Q?igAclVpDYB0FbEfqyLah4mtUkJdnLyvDaHTPrPO6PHKPHF5X8kCWsqlh+Um9?=
 =?us-ascii?Q?IMWzRroCjn/xgKv/PHUd2CzPJl15RPPIJ45GxdLO00f5w9cktlP5Eu8HO0Z8?=
 =?us-ascii?Q?x48w2B+l+lVxRoO7jjtokhzgTPqX5Y27EgTdBSwbDGwG0jkdRXAJS/o/3ZuD?=
 =?us-ascii?Q?2T728kqMDYouy14NB71okdBPaLTV/I/5VoD1vxk0/tmTYxK08/lT7TPIiAL3?=
 =?us-ascii?Q?WYPy+3agmsT6cbV1DIspj0rMGFPqOK2L1SnURTr822ZUoCyhXqaWbqdMkQ8d?=
 =?us-ascii?Q?PzAZQflqT/vdZmTk+VE50BoMXB1rA835mEMVCQCAdLXQR2RE5i2g9ibKKAg5?=
 =?us-ascii?Q?Pjgbm4qXCa+5/TQaSQWIniNznT0VAd+FJue+0S0mZJwKolXT5zDDcEl96MHk?=
 =?us-ascii?Q?lscmGelTn2LFfkDiSXgPwlCTrpwIDIngz4j94onmel7bTpEWWqS+lnOnM8IH?=
 =?us-ascii?Q?7htylTRz+3CfKf3fx+yBPbX8I2zZUcQDK6a03TlQvcyCAcSOBt00YfszSLa7?=
 =?us-ascii?Q?B7jONm8pBlGOdgdbOoE6ETC+LkpDDWadqTSLnu/OmY5JUocXtqcchqbxkDds?=
 =?us-ascii?Q?9rwIy0zbgp3Ode6U5ewDTs0B59xXst01TkYXqJoaTb5ROH3wuLpr8OxsZBa9?=
 =?us-ascii?Q?+C22Tzjq7XxhfyLCkWtyRGVHxmRH59hOrH/eIyr8Q5lQxldj97MBMvO+PZI+?=
 =?us-ascii?Q?SVZvgzYaFyYlb6jIsWBK+82wD4GjuFUUbtZBAh25+3C4sfcucFhibE2VX6Oq?=
 =?us-ascii?Q?GDKvdUDv/OXeChFzOzxiX7pcwqGZmXq1OAsL0MfOu7wumMGQKVYCmuzvyVAm?=
 =?us-ascii?Q?W23Cof6KxL0ejV9zGHkr6PmqI5076iFSHzc6cSYHDFPi9xUvl0wbrHTUk786?=
 =?us-ascii?Q?vkBxLwEFnx0KPbgqNTjDLTiR8ZIB9/TPuVs7DY/Dbnoew2XambwUXdVopxLU?=
 =?us-ascii?Q?s+9QfV50rLn9qTqyICuveXkA8RdjQAPzw968HnbfrOvE1v28XB8DiKBstsMf?=
 =?us-ascii?Q?19SiHkqLSrT04aPeqrCunCtwG9HV/Sz2/6jYy5lWZDpf+5vfjTj8y916XkjJ?=
 =?us-ascii?Q?Vkg+z5bqvah3u2mGejtHVhap+FrhdR+f8y/kXs/wOE/QWt/iiQ3etz0Su4Yz?=
 =?us-ascii?Q?ZmADo9c9hRxeKAceL1YmaHkYJ5+q4sLINFyTQ8vHc4IMibduE5YInASHdQms?=
 =?us-ascii?Q?SIs5ibq9FRwqOFnoJp6fFWEBJGFKtUPRnZyK8lNLgHbbsOjSvfR5xNPl4mRw?=
 =?us-ascii?Q?hXlFAZxYK6zYqu7AlGQ96jR+DfoxuxVmEGApqlm7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14f63dd3-3b71-4d02-9a54-08dcbd5cf287
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 19:03:28.6972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q6pIHDBi2YceQF0rvtVAcFCoiAom1GHkk0T2tOE7b44sIwBj1/1tHcaW7wH4cGkiJ2Bop0jChRqn3IywANRHEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6318
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

On Tue, Aug 13, 2024 at 07:41:17PM +0300, Jani Nikula wrote:
> Add support for converting struct intel_atomic_state pointers to struct
> intel_display pointers.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ea6548ceab2f..bd290536a1b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -2206,6 +2206,8 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
>   */
>  #define __drm_device_to_intel_display(p) \
>  	(&to_i915(p)->display)
> +#define __intel_atomic_state_to_intel_display(p)	\
> +	__drm_device_to_intel_display((p)->base.dev)
>  #define __intel_connector_to_intel_display(p)		\
>  	__drm_device_to_intel_display((p)->base.dev)
>  #define __intel_crtc_to_intel_display(p)		\
> @@ -2229,6 +2231,7 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
>  #define to_intel_display(p)				\
>  	_Generic(*p,					\
>  		 __assoc(drm_device, p),		\
> +		 __assoc(intel_atomic_state, p),	\
>  		 __assoc(intel_connector, p),		\
>  		 __assoc(intel_crtc, p),		\
>  		 __assoc(intel_crtc_state, p),		\
> -- 
> 2.39.2
> 
