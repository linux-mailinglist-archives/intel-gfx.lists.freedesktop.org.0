Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0F7CB14EF
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 23:39:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68CC110E4E1;
	Tue,  9 Dec 2025 22:39:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a/kB64rw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF8510E4E1;
 Tue,  9 Dec 2025 22:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765319956; x=1796855956;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OCmk/gLHnF/RDlGmoKhUwG3Lm0O4nw2Zuzt4KU4USQQ=;
 b=a/kB64rwClQuUQghRrqV7obk2SvkGwQvv6NTEn1B7veotrCSBDS5sN0r
 Mck0Nad7AdSuis4ezLaUtpjoYNq95Y5eECf4rqHET6O75FFT1iimxNU7O
 eLZQGITmjcUHn/5l5oW6275JhsVcXvEZYsyn75GwU6f+TnGZhntWHuZSp
 PhKbOcCcCifs2Pdo8m71cOJXSItA5rISRHvJ1ufYBFJIdCsvl485sNTrP
 e3dLE4pn/8qrGYIUPlVziZiXHIdwiKuKnZkXnaT0k0I4/Ab5nFgJ35SZ7
 tVZybDwtHH5Y2/cL6oatdicxPhYXrm0A/3A1bFfqPrxPLI6AbYd7gd/59 Q==;
X-CSE-ConnectionGUID: y3CDxg1BTQyf9SIp08zurw==
X-CSE-MsgGUID: NR/8jgDhRgyNHMRmx653qQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="77904157"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="77904157"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 14:39:16 -0800
X-CSE-ConnectionGUID: 3H9PpvVZTkOfcKJSRD44Qw==
X-CSE-MsgGUID: CILVdqDFRLSIMxrFswCnZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="197123533"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 14:39:16 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 14:39:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 14:39:15 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 14:39:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PnTXFZuzJykVFYT4qvMuuJ4KDxn8NQf2i+hxdkalTwyqlekljTKOpZTwhvvyuBqljLlNXIHJS8QNYpDo3Hq+vFjIsXK1kovJtq2nLwIsP4t5ZXl6Xk7KkfE8j57qP6kU5bFkOXKOZFamkzRllxKz+XFalqNHnilVtGbkmIHuQlu7+L0aYQbyNIGkCUroLa4y/gvgwZdVZm0jBmshZd4ZWZqi0ZnRG+CwcCg4Xx/3MGCVuBXTyPGMQb+dHBsDY2MWqk7AWcX8mXalTSbr6xb0uX6vVDheapZ4nFlB75pHgiVdOrD2YH5XGU3nHA8viMpdklUzu28DvrkA8jU5o3MMkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HwgDJk63EfcRGtZ4++unNVggNgim7+kXbI2x588RcPA=;
 b=k+bhzI08zoaRDHmsb14dNXF4L23HAv6pbn2dclaIAqhuwT4aIoWRU7k3xYeNZuQ+OqecPrM+7r+kZKHLQpc1/8BdSdxxovKpX68OEwjtNMcqGeC6lD0TaOSRotbql04aWMPTJj8ozWn5x0ygEYtHCA4VCt4hPWzExzgc20155lS8Q3WD5+PZzuSk1mx68xg/E0S7RaTiNhkrPcIpD2Q0vIViKjfyx49PoCgeigz33SsKMHjp2CvsK4RNYniX9vN/yxQoPkL07x4L0sZNVKh0VbQR7h/RiXZmqVvNlB6IkBBjQMnC6GcWuXhJdY/eytC5CRa3gxllJLiKosAud+XJVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 by IA1PR11MB8152.namprd11.prod.outlook.com (2603:10b6:208:446::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Tue, 9 Dec
 2025 22:39:12 +0000
Received: from BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5]) by BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5%5]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 22:39:12 +0000
Date: Tue, 9 Dec 2025 14:39:09 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH 1/2] drm/xe: Use generic_handle_irq_safe inside heci gsc
 irq handler
Message-ID: <aTilDSn2e7BlAgfr@lstrano-desk.jf.intel.com>
References: <20251209151319.494640-3-dev@lankhorst.se>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251209151319.494640-3-dev@lankhorst.se>
X-ClientProxiedBy: BYAPR01CA0065.prod.exchangelabs.com (2603:10b6:a03:94::42)
 To BL3PR11MB6508.namprd11.prod.outlook.com
 (2603:10b6:208:38f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6508:EE_|IA1PR11MB8152:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a21b54e-b648-4392-db94-08de3773c653
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?L275DvVfCNm5LClpBYROoOPkzz9D9QPnqhvIikB88ye9lhMlPukW2LAYp038?=
 =?us-ascii?Q?kCG+mqpnqYfD2TQiETrero+iJVUdkrZFCSbPHPrtg9Kr2bQvM7lQ6WkO6xeX?=
 =?us-ascii?Q?nHgS1B0qKHq8cLKzt/A6nzzVqewan4GdqHZZbgpvekGGv0dFkVS3HsIxsWgV?=
 =?us-ascii?Q?z/Kb7ZUqxEElQaRpzJzG7sqsM0LmwD/Nhpv8LBIImPZJGRLX/Pt2j4HeMK2F?=
 =?us-ascii?Q?xDe2IfkRD9EqPYin3ZsmD1r4BVmCjFzj7LGlt8dPrzYvfS/ySNYJeL8ni/pt?=
 =?us-ascii?Q?3VRDnwbRRuz5HTQ3/af9m+UvYrAW9gaIlmNYZGyyaABikQP+vtCHC6m48ZLO?=
 =?us-ascii?Q?FrdNbVq3fhD34hFb7rBxYzvGKkA5rCqVD/sp2knjYFoawEui+BNsXCy6B7fM?=
 =?us-ascii?Q?dLcAEkuEnt76GPZHTCKv9juMvE7kcpOXLg4jwAREdIh3u2J9XoeYBfaeHHhm?=
 =?us-ascii?Q?poicbRv5eaohcH7nbkTlNmHI5iNrwdjoBO0uMNwq5Y5Skpv59gdCSF47vYbM?=
 =?us-ascii?Q?MNLypFFqUkBUPka6Ny0eCsf6Ml5KK4Ig0oaUOiOSA1YKRHcoul/bhmEqfTnI?=
 =?us-ascii?Q?0TcDLkBcvd55MZ5IE0wCQ0PlA0ctAamS1uoevtZeK0ntkz471WrgCmeaXG4a?=
 =?us-ascii?Q?WMdlahZYiUVnEG45nLsvLZm71F5hsrklpzrAPcuFV0gCdvFADJDv4tchUtW3?=
 =?us-ascii?Q?Bo/h+wo1xUpKrp1yxgbNGIMBa5sI5AI9cqPSRwKjnzKlYwFze//fq8AsAfVh?=
 =?us-ascii?Q?reSJRGWX2wo9nJ5AwZjl7ep3Jn28EnBfRlWKLenqZpGriogN/uiZXfNb1HdM?=
 =?us-ascii?Q?g3prP+nos81ouPW2psOf4tXNyTImaqtX0nW8d65UUkQVcVYkpwdUpNJIiSSd?=
 =?us-ascii?Q?d9S0vqYIER2orPXn8tHFpEPD5dBGkq5+oD+y0Yy2JczdRUAjYJ2nUPVmKIeE?=
 =?us-ascii?Q?VxkMOXD7GEKcLw5T1wZOKk1FrdpCiDyhFgluDm9BdahGw2Yg7Ws1MH5urEZl?=
 =?us-ascii?Q?TDEh1Fa/OBPpx08MI4rXySGccPO0uHRejuqLgvgWa6tqv1iIj4pNnY+dIb4y?=
 =?us-ascii?Q?jNNF874DftWcNj4gbKpr0PWK5dS6iYSeAj1Fuwkq3lX2HMcYkXhHuUYtbn6X?=
 =?us-ascii?Q?04tQwGRDAiVpLoE9LfVfmqes8W0vkFXzuqMi6wp43GNjpOpDGLzNgtg7sQWJ?=
 =?us-ascii?Q?8BpV9P+d9jhVH99crXd8JjJb6crMYg8hTCBoSaL8XVQ8ncChT5RF335FapPc?=
 =?us-ascii?Q?3J4pIgXgGpAndoj7WKWboDasazxJUsaMGpEJCatmGi5XIDdhJiabc/qghuY4?=
 =?us-ascii?Q?Ej/pheT/JIkcLLuQvlxmUKDjDQZfQJ9Ue5N21Z1uSfuuglGo1AKbPTLsHGOH?=
 =?us-ascii?Q?MSPw7JGwgaS6oTzt4EHbuEkLfB9OIPpz4jVrm61cxUA0hHHp6WWnDIJveMD6?=
 =?us-ascii?Q?uZPX1l/ZNNc5kYMh9MBHeaE7gdH4fH+B?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KF8U4xiHTaZHlSmqzP2A7o0VUEVqE8YoqIQMed38RewtfRPN5IQchHEhtEfm?=
 =?us-ascii?Q?UfF1ijP1l6U1UnG6ohZONdNyw7dQE55T7dI7mu0PcMYGXqq3vVN0/cIrM0YW?=
 =?us-ascii?Q?0g5LULGYckwpgVf5lk367cLFJsMRHoq++tGcfsy7BOGJ9s5VXt4zYYRHNluA?=
 =?us-ascii?Q?tdZqDQC6+bMO1vu5nVymCcxfXxuHJcibIJiYZDS8vLeKdAh5TWAEzlWiA4w7?=
 =?us-ascii?Q?3eNNWAq0xsxEAjmn9M/6ZlwD1SCPE+SzQOtm3PoGEcDobLOKVyQkSg0o6e3h?=
 =?us-ascii?Q?xDiPMyfvGcEKIQ9E1A/lOAihkWJ0M24RRtZizT4Sayf/NQmO94TpSTL7Sptd?=
 =?us-ascii?Q?EEdNYfeLHDlrbQBEvhK24H0UbiAyMf1nP4kZsdmMdPZ8eHeXFETV88MbvDI5?=
 =?us-ascii?Q?77hbvIFD2obIYkL+y8y6dvIC1is2YnR2+Q9XSKmIfewWxpWYdq3LruQ5pgjv?=
 =?us-ascii?Q?+uA6DKeQjnIk45yiAS0tefGL+EVMI4XH89B6ps2mFFsPK+C/L2zM2/0lyWOK?=
 =?us-ascii?Q?OL1CoS4hel4aB0Vhn3GU6pc55X6sBx95QkvJt/5nkQdudCi+SG/M4Ink0/Wr?=
 =?us-ascii?Q?lruvM9SMqvNj2kniICn+FV9CklSKKgZSv2VRBYG8bBeepk1WvmZYyTp9Vp29?=
 =?us-ascii?Q?yVurGJT17LP2+nabdbmmMaQD9xr53lW644zb3aycvaVtsvZwEj5jKmGfPBAx?=
 =?us-ascii?Q?fVU5Mf0BluWU/l2Q5WhY75tL/bg+zTZiQ7CK5W5IeCIzEqNU+SjAZnK+90wp?=
 =?us-ascii?Q?/0CRK1gKWAya16pxe0bc6LV52u/msgGLKJazprJn6kVpSqfNJZ6LKW2sBdQF?=
 =?us-ascii?Q?EepYDYmQfroK724s9UHHcxMCTRWAVgZk7PEZKMBL/XZ8nRSgFdCv9511ylbd?=
 =?us-ascii?Q?qfldrbFLZdLCjs3GmeyQrNnHsMO4GDL6gT1pTEicT54AvDuQDa4U+8hudc6T?=
 =?us-ascii?Q?AyDjVzxnlYuXL67MN3/nlxxk/QQ8orrXnR8SoZj5QmNOp7dlu7CgEWcJXF5B?=
 =?us-ascii?Q?pXyZMUB1y297UTyLqIPHTAHZJw5mqNfVYXEhoriDlaBat72Hi6hRV06c6AtX?=
 =?us-ascii?Q?UTRg5i6LfSp8lkks8S/Zh2t5jIU5TrrkOYxTKr/9Zlx1vwKGAwVfkcsNDxAE?=
 =?us-ascii?Q?dWaOj/PIF1QRoC4hR+kTRWasBDnMDoJKNnOVMbQIKKnp1d+NscxDdHqGp784?=
 =?us-ascii?Q?BzLilLDrgVJ3w+bKPZMU/IB/Fxd+kF92ct0PN81lPc/nfLXDNcFDthsHZOIq?=
 =?us-ascii?Q?W5SqnjHiuMOVssxO39sTAfPSn1BrMiMgGwJsHxXWFTtSvzRvcU/FYgL0RyHo?=
 =?us-ascii?Q?dhj3C2tIDN8ZilJIaafIWm4xXvoeZaq2w86b7hLAaiyyL8b2uCc2YAm/gNaO?=
 =?us-ascii?Q?/j2C5K17n3sUXMmF9Gz/jncSFKetxb3+mwxKBawPKCoEzFHpULIuM6nF/nac?=
 =?us-ascii?Q?5DpSRf6mr3KLLCbB3aNsLSrp16e2am9UJQSRRqPztc6TgrX0WsFMNAddC/8r?=
 =?us-ascii?Q?D+SMvCuInEOVRLYEorIjICtitc9E8sGY26Umrm0GMceCgkhh21tWOIMABM8Q?=
 =?us-ascii?Q?ShlhnMRBA8X4szl7CQeJuDkMUjctb7xD2TDV1B7N3VKKV+bRT7m9MTVmhvqp?=
 =?us-ascii?Q?fQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a21b54e-b648-4392-db94-08de3773c653
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 22:39:12.5588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cxCvxxb58uS7KjwGBm0BazfiP3Fec9EfFZAMj97D5WVBOlPJ896xbnet41vGe4JuVe8Up3HLuTzGQNA9O0bYZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8152
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

On Tue, Dec 09, 2025 at 04:13:20PM +0100, Maarten Lankhorst wrote:
> This makes the irq handler safe on PREEMPT-RT too.
> This is similar to the i915 commit 8cadce97bf26 ("drm/i915/gsc: mei
> interrupt top half should be in irq disabled context").
> 
> Fixes: 87a4c85d3a3e ("drm/xe/gsc: add gsc device support")
> Cc: <stable@vger.kernel.org> # v6.8+
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_heci_gsc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_heci_gsc.c b/drivers/gpu/drm/xe/xe_heci_gsc.c
> index 2b3d49dd394c0..495cdd4f948d5 100644
> --- a/drivers/gpu/drm/xe/xe_heci_gsc.c
> +++ b/drivers/gpu/drm/xe/xe_heci_gsc.c
> @@ -223,7 +223,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
>  	if (xe->heci_gsc.irq < 0)
>  		return;
>  
> -	ret = generic_handle_irq(xe->heci_gsc.irq);
> +	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
>  		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
>  }
> @@ -243,7 +243,7 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
>  	if (xe->heci_gsc.irq < 0)
>  		return;
>  
> -	ret = generic_handle_irq(xe->heci_gsc.irq);
> +	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
>  		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
>  }
> -- 
> 2.51.0
> 
