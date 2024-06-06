Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BEE8FF21E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7911710EA0A;
	Thu,  6 Jun 2024 16:17:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uo1S1zM6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C33AB10EA0A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690664; x=1749226664;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yEbyUcbn5LrDD+cIIEx+T6QI1S2j2ivZrELFHVZG/Hc=;
 b=Uo1S1zM6hfaCxtAecDvObrzZuMoVuqz9Ctlw9OKxCL13ad+tArhv+lX2
 nCd8Dp6+bGT0R/ELEr6PyQUUYSmWAGnXMcnB/0zL0NK2YHuauV0FKbaL7
 iapLOzeCeWIl71s8OXc6+79dxd0WLixe4d+UpnFrdBpUCxO/SvWs76KMm
 1Ab0qPhSw7ZLfQiZCHp/O7Q4WGwk/jrbN7kksBBmGMyNzDwbistzvMLGE
 FDQLTva0jVrU+a/Pa9sY5UPIF5KbxYT70YGaXa+ubATsEY7fNKRa5UrQb
 siHoUKPKSRuNs7GsS5NcGsm+XjtgUGgHzN7G4IVCI64HjZgLUJ7Z4wuh7 g==;
X-CSE-ConnectionGUID: uxc638xaTPSSBrodV0JDyw==
X-CSE-MsgGUID: Emsd2Kz6QKGr7EHCHSDnUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14508664"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14508664"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:17:43 -0700
X-CSE-ConnectionGUID: wxxaEIv4SCuDP4XYZL6Ulw==
X-CSE-MsgGUID: GNaskgejSNelDkEXB0+AAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42961328"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:17:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:17:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:17:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:17:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f5cqwlJfJwLut89skXuKR8aaT7K0kE1jGL0MlufyoXOFYu3h6pc0hwvZXYNPbOLxOCpS4FR9RNkvuv8ejHLHYjToakJ5YmtZCdGDQc1NDFeF+5FXvCmcrn4bPAKmT56mG/J7xLiVKKRSdMCZ6JcLkXXolDxfLDaWUoxMy1A1BoKEGSZDundlkn+2SML24pEF7KgZ62SiSUTZf7g5AnFXZ/vVuuRbbUOxxqunXIEEVWRe62dpjr3K3hBmrl4o/bAvNMuP2jt69ac4WK2lkQsN+sKvbI5bLS19hfwU3QDE4feTi7ertCk/CngEvBRKZ4+3MgMFfSPNVpjHkEUTxOCaew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q+hP9qIgMlJHU3yXG2dtueSJM8F7A3r4tr0fTepxzaM=;
 b=azHLF6wqS+lbaoxqZK1vehyxMAZyoKUh0siHiBQ45MmT6k22f2iaxtyuAgRetdRa2aypeN7SJawe7365gcbGyv8HaqV7s1g/+rven0BzAWf7myuCY8QNqPllAEBBPyEusN2+xYqhfPB4J2ujRB/ybPpxgk+ndfQ4VpP91dply2Qy265ccwONJWvPfmB3MRBD+g27d6oDoT8FVIYfN7Zf2Nzu7QYuHCRE6Yaib9Hrg7hXoKLcGVReR+9YHoBKQDCy6IyvohXd+Dfuon0/JvctS24AtgtbBZqgH7NSFDzVrmlSLh6yPgys2TsR9TpIFL5VO0T2ssDUAah+IzIdYaMkKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7500.namprd11.prod.outlook.com (2603:10b6:510:275::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Thu, 6 Jun
 2024 16:17:39 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:17:39 +0000
Date: Thu, 6 Jun 2024 12:17:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 58/65] drm/i915: pass dev_priv explicitly to
 HSW_STEREO_3D_CTL
Message-ID: <ZmHhISYJxTlDQiAV@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <76f980f5ed3638746c6b58dec7d0bd8c43a37987.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <76f980f5ed3638746c6b58dec7d0bd8c43a37987.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR16CA0013.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::26) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7500:EE_
X-MS-Office365-Filtering-Correlation-Id: e1005e5a-00be-48dc-f47f-08dc86442f70
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hP6xpj7+enkQhJsnAamOCwrC/F1yPGE5jG7vQv+xUtxTg65veAF2tb84R1e/?=
 =?us-ascii?Q?YzaIceZUcuyMsrk2tpW+CThChIgrDtoLQz+c7CdVd8Ck/b0/RdqRmTHA2kA7?=
 =?us-ascii?Q?UWU9W6Xuil3uaNy6unuOHcDdef3ADM/MTmZ+ECgyisd2yYNoFVlIPeEPNl6R?=
 =?us-ascii?Q?qbOGGokbGkjSlOhfo+48fnm2V3NO9RA07rvKcm/djWSmBJg0ZA1pPbu4prEX?=
 =?us-ascii?Q?ikYUae4ifFU30N55BPAboRCzM/iB9kAQXFIoNMABIJd2ItLC3v41ysrTop90?=
 =?us-ascii?Q?aoTdKJbYzJMO36Mkefr1RMpYb3Br8YQ4NKBdpmtxq+Z8w7DP3KV/51rZgBbg?=
 =?us-ascii?Q?GiCprnDbzkLGHDjBUVJWi1oVEaNw8XVP4mwAKH3dSwEyZ29plftOSlio2FWj?=
 =?us-ascii?Q?gOmFn2sEtOOe3fbHWq2Xw2D44RXXHXlLxFNwBiiMlW41XnRbr18ZIZf49wHY?=
 =?us-ascii?Q?nPdAvgqtfR7+0LwZ1BTBjLUbCH9x2s/fDX1q5QxodJrzFFhB0+lm/FCPPhZS?=
 =?us-ascii?Q?OOgR7kCNtYXN+WD7J0hmZuTvgrYfXvB/aitLzs5Fw+oFTNy8I/9kHvuTpKAI?=
 =?us-ascii?Q?iYYJshYBfGnx26eukGBd2dSOJ10qDq5i3+vN9Fdk1Jpz6tk5QrNeaOT3jGmU?=
 =?us-ascii?Q?IsAPxYgt+15kRhYwQInr3EQwwMIiiGSgaFGu/KhpeT7ihs885eVTuM0o7iCw?=
 =?us-ascii?Q?f5tBFOx9HA33eMZfvaKKfevuVZnNcZvYQbjprNRBH/90ESgYOGsrsdVhkTKY?=
 =?us-ascii?Q?hcE15e+NJEHIO8Z4slpitgPvjrNSbN7xswiIV21Z21y7RlgzhkZpNGsvOxds?=
 =?us-ascii?Q?RlcNJOoLumtYz9WQPUVHMa9kfoCV88LnIrKZ6pQ0XaelIhSKmAN4G/e3LIrm?=
 =?us-ascii?Q?Iyp8pXmObPyTkEJT/U3lST2KVAy+IXwHg7b5iEhNG6LpFDavCZ0ffnFYHZCh?=
 =?us-ascii?Q?YnHWlz+RMRMMOecE+BWFZ8KUGlZwBV0a5m9iNHKG3oZLJNdLpIoQaJpFApmL?=
 =?us-ascii?Q?x+8fmxmoAUKulzzSN5ptBHkYxOrwYheaKIrWP5lj6ovCOEdtzycamlgmcCem?=
 =?us-ascii?Q?Z/RLkl/ts8qpYYTFWxIyTHetIJK2cknFR8rY7jVADJVM7HMH5yRzDRMN4ADy?=
 =?us-ascii?Q?8ejXd6ZEeANUZVLFi+YyTOq17d747K7j0MtW0aRGt5J+/hUVqVgHmvBDrJLi?=
 =?us-ascii?Q?1d57uWeEdOVoFsZfR6eLY0whEg/wf+5EZlIVK3e/1GjzMCScJS7mveriv04Y?=
 =?us-ascii?Q?tmJ7YFF0lawHym9eXiO1cfLre3Z8R89G86x1A+23a28f3tUCQNeuJSqwdL1G?=
 =?us-ascii?Q?rPUmtdsXj7B3zMNMIi4/yWc5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VsITE3fton7n4EalXZjFDWzH/oYIkeGsjbyBZFfJ/0xpgcNxj8zzc4IZusdg?=
 =?us-ascii?Q?/r9HSxtjxteAUEkLKw0FKEqdu8/IUlp4s5cliTqQ7KjgvhSAHCaS2DIAvngx?=
 =?us-ascii?Q?zno8zaltXl1XAX3T3IJ+OpuwrA3S5CnCAatCs/w2H3QwuHPD7QdDW+4RCwbK?=
 =?us-ascii?Q?5NvlziymnCx8//Wd9u6RZfVt53Pdf93udWo3Tq90vvYATAvFno6IuNn5lYgS?=
 =?us-ascii?Q?hxXmr8zHnrxBJ0VnSdyoh8BQXtBzeWHtpHxIyLPiwQ2hLYdX0DSGTsXuLmLM?=
 =?us-ascii?Q?s/9Np/W1+q5J6P6j2jX4/dzi8liZu0SbjiD89U1VsKYmap9aumMEquRa+ga5?=
 =?us-ascii?Q?SSUk4ByfwIdK2invj+/dinjJX2sTI0osO36NQQCwMkgMz0oBzLfxGw5cqnbs?=
 =?us-ascii?Q?Fwvnehur5yUpzKS+U7G4E/9yQ+nFkjdLUb3ioECqJ8fslXcV4moYyyt/AlvM?=
 =?us-ascii?Q?gyt48O8phFkDOL8rd1TquJ0lduslxudVkAPlNZ7mfFCBZ+bx3KW7lJcNSXU1?=
 =?us-ascii?Q?oJ7j956DdTRHgM3U3ia7JI/uDO1P0zlnICECCPz4GLrlT6SLciNAbRuu+qtt?=
 =?us-ascii?Q?QBdZFeGYqLlj3oj9BpLFTrH0MAxkZdYUtMAUlpDPou+niakgkZ3eLjkto6IS?=
 =?us-ascii?Q?DlnedBa2/mHd3PNGQce1LI4IpD4vAmAlZJSa3J9mXR0oI7DIjaWxP1o4fb0w?=
 =?us-ascii?Q?wOTK5vorbyum+noAqgXflcmjLbeHSLG8e9zQsORt/HQekWb21IXgcpsy25S2?=
 =?us-ascii?Q?TfPinF9Bz9kdtELsObBw29+XNEPjbFtQh26//LYi7P8RvNBWb9F0UZFtItR+?=
 =?us-ascii?Q?jC8vjjUwpneOovSFLTj809aySa3fcqPr+kvKa54eFHXOHwNBQmjgScF6+dm4?=
 =?us-ascii?Q?CH7PXxY2dnySS8Rxtzkuwgd+1soJBpS47y6ThWFLgI5nUWDnHYDg27IDPvw9?=
 =?us-ascii?Q?qtOptZ4OjDN0RG4Y2mOgqyO+4N8i+qBnzjUs2DUW0CrTVmqaoTZEUA0l8BKp?=
 =?us-ascii?Q?7en3HHJHPmIV9nkJoemVZ1ZfGDEhDGZNXg/sssKScriJf9a1aphhWZslnHaO?=
 =?us-ascii?Q?fNdsjCCAsMcLHD0mULSamTW3mVbLZDK3xM7bfMPhC/iiGk8sAynB37JG93QK?=
 =?us-ascii?Q?HWXfyW5ws394MqHFNuIU4sfsMDBXueX8NE6qd9DMzQpR2Zu3EXPuUkzAKki0?=
 =?us-ascii?Q?+xdIm59Cc81wxt4iSGqM+GKg27Nu6xLcnrBCMPH+ftBGG9NhDu5arWlq7lA7?=
 =?us-ascii?Q?gSFXd+P41Oa9F+JJUoyxuTyMKmBYKFjBnxypf/Tgv1sWvMrVzK3DsT/djyXN?=
 =?us-ascii?Q?84gszb4l0htbGFDAACR5AoXlMkdcXZIr4d4JF+drWrkO8aQKTzxmBEvtNkSq?=
 =?us-ascii?Q?PtFdB1IgxxnpSZ03c9+pXs+XQz0QQJn28/7LMCPDfOqZRN0c+ZDBLMnWyhJ7?=
 =?us-ascii?Q?3wy5lRr8AKXY83KJ0J+JhApJFD1jxJxnfLDKtH1Y6lLEj3B89jUHSxz//TIZ?=
 =?us-ascii?Q?sCdRoZ/WDg8ajOAryHB2RoJJ9AgZLjqw52SEx1pL8N0/OdaourAztNMyYyDS?=
 =?us-ascii?Q?7pz9rMUOxylJq6gX3RQ0KchxPD+Wo2sGXNWINhdB?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1005e5a-00be-48dc-f47f-08dc86442f70
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:17:39.3220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N5HlcsQagtb7iuyIIbiF2iNxd4BvDZoDZIDqYwgVQRsdARin3WeDZBGXnTFYalWDf885OMVOtOdoBkAZ0fY5sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7500
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

On Tue, Jun 04, 2024 at 06:26:16PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the HSW_STEREO_3D_CTL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 70e549b38984..c8488877dd68 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3493,7 +3493,7 @@
>  #define   S3D_ENABLE			(1 << 31)
>  #define _HSW_STEREO_3D_CTL_B		0x71020
>  
> -#define HSW_STEREO_3D_CTL(trans)	_MMIO_PIPE2(dev_priv, trans, _HSW_STEREO_3D_CTL_A)
> +#define HSW_STEREO_3D_CTL(dev_priv, trans)	_MMIO_PIPE2(dev_priv, trans, _HSW_STEREO_3D_CTL_A)

oh! this I'm pretty sure it is really old and will never get used.

Let's remove?! :$

but up to you:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  
>  #define _PCH_TRANS_HTOTAL_B          0xe1000
>  #define _PCH_TRANS_HBLANK_B          0xe1004
> -- 
> 2.39.2
> 
