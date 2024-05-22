Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5C88CC787
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 21:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C577B10EF15;
	Wed, 22 May 2024 19:57:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bt7TxK+c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 149F910EF15;
 Wed, 22 May 2024 19:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716407868; x=1747943868;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4YHqHye6eogG6/WgKpVVNZyb4kdUM66vJSBIjARg1as=;
 b=bt7TxK+cJVBbh9ttMq2WfPjndA2bkvfJxVYVZ7VK9/+miwOCZ5NvvAxk
 SDVsphCn1I1BWCtsvDaBSg4MZDhu6/iGn0KVTWjASp0aZ0/4D2qoX2qNp
 R9aO9xGYkoMHUIuYH89ycGfNsFiM2iE9iXjEm2FOWyn31dx6Ega1jKwhB
 8uH7oBLXjaznZA9P4fKEcICIS/U3OZaRYxoZDSYV/BFwpIns32JywGTVB
 +0ViYIfe4DeJ1L+TRIlVXDvgF7dR+9i3bzU6kI+juBJpU1GiNj60DvHTP
 zLKKq/kx4d/GjQrZYucz1OCag3q5blViVfNJ16c0XkJd5vjpzJCl1pPlN A==;
X-CSE-ConnectionGUID: 8yQjnyCmSDCoOyMSeJqnNw==
X-CSE-MsgGUID: 8oi2Awq+S+uDfGM7TDgt0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="16529460"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="16529460"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:57:47 -0700
X-CSE-ConnectionGUID: xR6Hn3BbQlql+yFX59edJw==
X-CSE-MsgGUID: cthG6bPDQoG8Mp7e2oYWMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="37786321"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 12:57:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 12:57:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 12:57:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 12:57:46 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 12:57:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PA1T2aRdmoS/3cSoF2j6rAO9yxDUN1iR+l4VJiQGN8v6wasd1oxZ59j7/SuXN2AQEUjMyiNrDuJfVkQep/cJgEBrkeJRM3xHZgyDxuphXp9oA/xZmbm45pl6rdYuIvlH7R5UDJQUxK5Crk8vHWwAT0Rdnw3eXnB8aT850O2ui3S18F2MOJHXvGoQN1e2g9QqfIwBMf6wcUF0gHGgsS85akvl88a1nI8lVfq0fDrSIWuB3f8KnohJjncB21gZpWspvsnmpQFzf7Yf1JcN/3m0ZttQinINM0JAiHlGnFvj0yDbhEsXpXF98hRy1/7duNSMwI0ei3fXJBaXoJRpJ9G5JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dQ/8Hi+VWaGS/EejTlwFRqPcW0IdwsSdU3+aWhss0ro=;
 b=V+iPlA1vOyokZuSMkcPi8MdHj16wA/1pkCq0o64OutG7hGpeWlpMlEXdGkRypFK4PIQ3hnJPCUq4D+SE3510kJO9FR3JU82M5VUmyhxD5kZHsazIjnP8EUw86ijLOCH5FtQMQa62GDTWSPvy5G+E2+Sh66W2BmQosIBz2U2eaoqW+IibobKmt3wD+BpdqaJfhcV+F9k44ODRzzhCbBmhKWaZGSFn2gs+TCIg1a9MpnqdcPnTSnAnDPBsDqZJqX4469kAY/Un7njvy7idnpBg0UVsUFWFucdnl3SuEQoh9szNCEmUSY6E5Gh8IM/JYOoGuBVz4Mnihyy+9a0abV+kTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Wed, 22 May
 2024 19:57:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 19:57:44 +0000
Date: Wed, 22 May 2024 15:57:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 02/10] drm/i915/display: change probe for no display case
Message-ID: <Zk5ONF-268RlkPEn@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <8dfac3532a72ca6494c9955987166d9c6e0919bd.1716399081.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8dfac3532a72ca6494c9955987166d9c6e0919bd.1716399081.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0117.namprd05.prod.outlook.com
 (2603:10b6:a03:334::32) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_
X-MS-Office365-Filtering-Correlation-Id: cdecbd07-6cf8-4010-e109-08dc7a997203
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ve54IyPYoiREopJDMQbakadD8jsGGQDBC2sglRgwtCKRD44FLjIERTvAo8hk?=
 =?us-ascii?Q?oINjBmV9nifGuFcbhXZz45p5GUFbBD4vbJR8Z4xvE7LZGZddbTFU4yyUxAao?=
 =?us-ascii?Q?3isIGdPjZViUQwmHuMpaQHBWqNpWAfS+QxpRaXghWHlhmELeSa33SlATv8jy?=
 =?us-ascii?Q?FOQQqOo2oeVTzmsjz34Hlxmie4ue88DgI+m27Yo8O6P0binizr6Dx0kkiFtS?=
 =?us-ascii?Q?dF32Vw2bxTxh8RbBO8xPn0HxTXWl5rz1rxLpbE1Fdtl3hVXzFnoja0sw7c9j?=
 =?us-ascii?Q?kvR5SNzeQNpm0lAnrQPL732BM9+Gc4YiyDGs88HP15XTIJEItv2m7LSESSU7?=
 =?us-ascii?Q?85P3asD1vSUxeN4mfvJlY30T56y+XYCBH8X82Ye5cILxrw3w4YfoJX24Hn6/?=
 =?us-ascii?Q?Rd15kTwTOS/GjjJYKBQXIiP1q1TcrPmM3bulQ+x3KdfQtP9y9TAdqijnLz5U?=
 =?us-ascii?Q?/Prc0DhVVeL23/LTI8W71ZSasQ3hGUafJzW8ElKnTWTjdDt9gnidSAlleEXW?=
 =?us-ascii?Q?VSNLLDtfGdKSWeyaKRA9JgTN2SQBD1ZUDi3GqRhp6bPTWeXjjwQpTj2GQbgs?=
 =?us-ascii?Q?ZjNjnz0Gtd42csVJMyo2ON7zmu3/S4yHojrMzhVlu/8a2VO5bgT6cKyT4SUL?=
 =?us-ascii?Q?endKownEprPwql2fSsfgOTpxAQZ3G8ZsipJTFKK1HbWrg+KllyL279BPOSMi?=
 =?us-ascii?Q?JZF4fUPb0RjqLOtCGxaNavlUvcK24JgInAeqRgs0/vbJuAamsIh12NlB8Xhk?=
 =?us-ascii?Q?U0M7uKAs0kE+Gr9bQ71e7qHSC4Ngik3hf9mB2IVWRK76YXoGljknMDXDH287?=
 =?us-ascii?Q?GP94QLFPxW6zF29F1/9Kq0KkaegdMh3BoJ3lze4qTvHeA96HjxAUs7in8JG6?=
 =?us-ascii?Q?VaFeH2ExitpQ6l8JougF6vfVe3Ho0AOZrG4LTL/YBmtBRN0OVmUBVSRmB8il?=
 =?us-ascii?Q?FoYAk1Ag9w/NFgmzWivca2WPDZStjQsobnxf24B0VNkNbFUKA/L5WTbyTi3I?=
 =?us-ascii?Q?DxzgjdKmmQIegsNOG3m3ixJN7Dbl1PFE8iXVfrmPxRhFOkYByIPLlfYdpNpn?=
 =?us-ascii?Q?DjGt8Qd8NKsG16tmD9FtzB1yHaYyz/EyXib4rQT5Z1tILNQgQDSbxY7ZqIRY?=
 =?us-ascii?Q?xBAQKGlSOcMhxwtl8IXExI71A9rAIZu8AW2Cc8TuHvdir05kDCLUhlNPo6y4?=
 =?us-ascii?Q?2y8Ap2ViVwHA0fY3nc98Xy1UUDKQ5M7ou558v8wlgZdqgZVwF+o1dr+Gdv02?=
 =?us-ascii?Q?JDFBvLkRcNwkXBeV/HWeOejfJwITWZF3yXlGmZjYrw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?j3kqs7pRItR+04B2uv7z/ecEAbLNKGXOLxPpAiCFyFIzEyhGS/2+iDj+ZsaD?=
 =?us-ascii?Q?nuvCdQt0zndkDCGbnMeNJ/whDzQnewQOnOCEAcvChu1CwSwAjJQYTFItbILi?=
 =?us-ascii?Q?NS4VsxCByTn9OEX77oOEr82b3uZwG5eWFYkbZ7KbJnQQRQJnKB1pKWAzLlvM?=
 =?us-ascii?Q?Dlg+fhsoi36BmZqIo/fKpJ6FQIN7Rgxiol7Y92lcxRB1wMXE/lxpK94hXXdd?=
 =?us-ascii?Q?EEwER+sstQs5ZZGdIrsLUx8X62+uTMBmnmCKZkVqUUZqo6QwFYcQ+tYlGKW6?=
 =?us-ascii?Q?omVTBZOhM84CmCsH8nznym2yC2/aXTjblryPh6nX09V9O9X34ioHCtSHXV8t?=
 =?us-ascii?Q?/V7McQiUkTzLuzfxIUul6J0M7DqygFwWbVRPhB9huhVcNww5EPuo9e4tA2Y7?=
 =?us-ascii?Q?WSpygJtj26BN3MPGifeBYsGTbiPl6qPc7WlWELCYe5FAuI/Lxy0+svIY/qVj?=
 =?us-ascii?Q?qVT8V1Bjhb5uxcLk80aNCKPSUpmqW98WE1P19VrDXcNpIoNxrzaDgnpCvz6e?=
 =?us-ascii?Q?mnbaEjwUAFnKQF30ustI04ICdmMhEJYVYi8B/tTu0JmVuUCaO0sJv69gRtz8?=
 =?us-ascii?Q?5QnnsA5+oFe1Q5WY/HPJ6LOealabS1KSwTihNBIm2X23ncBWl4Kc78xTdmmY?=
 =?us-ascii?Q?bU3S63FSSHIk2tS8XOK9Js2bcaLKAD1gAwwknNt/TMLo88g8KlOwb0A94xkr?=
 =?us-ascii?Q?w1URs9OnAMUWIAzPQEBrgZtJeL/bu7nbFcZ6NDaGCNZqlCZDjRQTp4+ikpwP?=
 =?us-ascii?Q?xso6SeDxhWcbOMkuMs0lFQ1mQvEbpv/Sxy7tycJMsBUkZpmeH9xMnbmxawIK?=
 =?us-ascii?Q?kj/KdRdY6gRsNAdb/+TBcgiEvXCpkapD0Hm44Me/NsTqkcfktWK62jJgBYJO?=
 =?us-ascii?Q?aRtAlqJp/1P3i2K8twk1ySn+r0MwDYQlUTygOkjEIZdbZ+7nxMzkmPFVUzJn?=
 =?us-ascii?Q?QGVYY2IqcpHOji5ASLzMJLB/49Q17T08lUl2pblSptxwp2JL4msGbv1pnJCY?=
 =?us-ascii?Q?IpZk4uHBAfaO0XtCWP3BUEUKl/MkUvqNSBEIXEjPteGHe3/LNfq/M/azNP7t?=
 =?us-ascii?Q?cR6yf9zy4O89Kqa/KyZiWHU+5J8lT34A2mCAk44KBInjmlxjL42kHRRsQt+4?=
 =?us-ascii?Q?Wa/OpbBN8O2KBDYdUgJ0VHZNLokjTxM0SsifB73nxzn+0OFveEDkijQkXaq5?=
 =?us-ascii?Q?pOeSxUo1GyQ5zXyrabxHHxBlSfv0Hwtflhk5Ifpf+EyezN9tvroCvuJvN/X0?=
 =?us-ascii?Q?xAtpo3kEI8AP/YXxWa1RDtjd6XEc5PIc3bspJPjee5GlwW5dULZjQA7q0arq?=
 =?us-ascii?Q?ufoIk4sHqVJpddvTZ9cjFgwPxhv24KAkE4DqbK4314GBDK/gjhVCLRtVE9HI?=
 =?us-ascii?Q?8I/HWN0LMadKSvGgIzs2sB00pVoMBVuZYaN1AP+ww5M8dyGcVR/2g54YquAk?=
 =?us-ascii?Q?kWJTlDYBwE48MZYNtSpuuEnepjNGfov4N6clanTWqj6j3Fnmt468PWJA0uy9?=
 =?us-ascii?Q?w8l1EeHB1kfkFD/c8GZL6m2k2NDLCmrcCponfJjG7B2Pthwugf9hmMh66oyz?=
 =?us-ascii?Q?my36aTbfd8htm/0A/2iA6JMrx6w1mAWOBdXwBdmsmwxKaGPhWvXwvNQy1O68?=
 =?us-ascii?Q?KA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdecbd07-6cf8-4010-e109-08dc7a997203
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 19:57:44.3201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CvrQ6DHUwmvWoB2cLjAHjL0MOmLPy1PYOox4cTgf6h4C3eH8UQQfQHGCH357jIgbc0cBKVmE5+fyXWKLxFzXJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6059
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

On Wed, May 22, 2024 at 08:33:39PM +0300, Jani Nikula wrote:
> Return NULL for errors, and handle the no display case in one
> location. This will make subsequent changes easier.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c    | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 9edadc7270f6..03181bb79d21 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -881,7 +881,7 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
>  	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
>  	if (!addr) {
>  		drm_err(&i915->drm, "Cannot map MMIO BAR to read display GMD_ID\n");
> -		return &no_display;
> +		return NULL;
>  	}
>  
>  	val = ioread32(addr);
> @@ -889,7 +889,7 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
>  
>  	if (val == 0) {
>  		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
> -		return &no_display;
> +		return NULL;
>  	}
>  
>  	*ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
> @@ -903,7 +903,7 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
>  
>  	drm_err(&i915->drm, "Unrecognized display IP version %d.%02d; disabling display.\n",
>  		*ver, *rel);
> -	return &no_display;
> +	return NULL;
>  }
>  
>  static const struct intel_display_device_info *
> @@ -914,7 +914,7 @@ probe_display(struct drm_i915_private *i915)
>  
>  	if (has_no_display(pdev)) {
>  		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
> -		return &no_display;
> +		return NULL;
>  	}
>  
>  	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
> @@ -925,7 +925,7 @@ probe_display(struct drm_i915_private *i915)
>  	drm_dbg(&i915->drm, "No display ID found for device ID %04x; disabling display.\n",
>  		pdev->device);
>  
> -	return &no_display;
> +	return NULL;
>  }
>  
>  void intel_display_device_probe(struct drm_i915_private *i915)
> @@ -943,6 +943,9 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	else
>  		info = probe_display(i915);
>  
> +	if (!info)
> +		goto no_display;
> +
>  	DISPLAY_INFO(i915) = info;
>  
>  	memcpy(DISPLAY_RUNTIME_INFO(i915),
> @@ -954,6 +957,11 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
>  		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
>  	}
> +
> +	return;
> +
> +no_display:
> +	DISPLAY_INFO(i915) = &no_display;

now I understood why you moved it over and I believe display_runtime_info
is really not needed when no_display, so:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  }
>  
>  void intel_display_device_remove(struct drm_i915_private *i915)
> -- 
> 2.39.2
> 
