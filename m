Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7758C1C3A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:52:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 329F510E38E;
	Fri, 10 May 2024 01:52:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jIu9XKO6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF49210E38E
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 01:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305930; x=1746841930;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hDdSgskHZFkcmp1HH4xXqbSVj6O3qOhtGmnuzhEHVmQ=;
 b=jIu9XKO6COTMa4g5KFekxUoQXXzZtJzGCQ8IeJq5LSAPT9YGSu1qZngO
 fbFNbbCI/pGWAKUIah5JJ9YPmRfq7Fr33ykpXAQUIZrG1srPEXGxL5t1p
 hlu0FD+3c62gXOMKCn9FetA11AE7OIkJDQH6hhpVH7cZnL0Y9VM0Q354P
 VbZ4ChkhwaVfjQ63Q7IdPHr2yAmeDsZ+/lV3M/RRR+4u+SruSk6aTXoOl
 b8eIBDRdHcyAyYmMlavg6ccp6bs3m+5x0feOOXc61QLvR3YFgCHU+U0Y7
 4kWNmomcZ99Q7pxytFzqy0UDD3D6YRdYb55WrluA/TRUhl2u5ORk+uGRT w==;
X-CSE-ConnectionGUID: fT9J37HuTP6K8BWnFnGn8g==
X-CSE-MsgGUID: 9EkLjk70Q0WenfHzK0Pdsw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="28750533"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="28750533"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:52:10 -0700
X-CSE-ConnectionGUID: oZRK5QwvQLma2uU2n/WoTw==
X-CSE-MsgGUID: S0AmYPVhQTiIomAdEBOGNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="29833262"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:52:10 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:52:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:52:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:52:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BMObi/KYeEy2R4ooVtU3qX+KqCAQJ0KAuUohXg8A1s6G3GE841BuJW2BlNQtguvK4IXjQ64A3cZvlkYvhrFTccc/OAMmKi1GJDYJmGFeYQP5q2zJmqCzP4DMZvwut7QkCJCPMV6Ggzg27mX5IwZI9AlF1pqWpWRbWC3MfWGbkiZdFp3p10Vn+JAgEaXD5XGnngpbApWeGa7zd9/BiG1Q/JR9aBQ2l+sssx5dACSq66HTEjq2AI6BW+YBjz2UwX14KUFfeIXz9v8+KYarS7nRb28Tgy02pFLI+w4cnahDC6EPM+9d29fu1DnX4MLjzSIFDM2NL8v8hWvU1vY0qGaDjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VcPN68xvPXSi+aRisJ+yBLoIk718M/ovioyA7H5fYiw=;
 b=giloUXm7iHCi97gxZlX0tCbBc27rNf4Eb4jfG8vuAyxxsmnAZKc7wWtn8wTaXpAiKIDFzGnWoMOM+4EgSO0AGpJoUaE47dsyTkynso/Dmpa+FnFDvuEq+CbOQSaj2AM6BFJokj2wVVzV1otwlbd82+9P44EUzKaRVuchP10+DwVIcTu9fan/YxIGPA7Rf7rMtryGcwqv5FXZ6lPlMhHs7KJd+lzQDEig3DEcczM+lfxDUtzCnJebwyZkVuYz124gcp5Z6LDtrcsvy3tm+dbzpg7if7I8nq+gr/8YBHmbV9boVE2IbgRhBimgBV2K0OASdek8+WA5oOFYMBignV+Zig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:52:06 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:52:06 +0000
Date: Thu, 9 May 2024 21:52:01 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 09/10] drm/i915: pass dev_priv explicitly to TRANS_PUSH
Message-ID: <Zj19wX1cjXz7PAiZ@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
 <5b2a4eea42cf76830a829d8a543d877cad0fc52d.1715183162.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5b2a4eea42cf76830a829d8a543d877cad0fc52d.1715183162.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0281.namprd03.prod.outlook.com
 (2603:10b6:303:b5::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: ef73a491-cd3b-41de-7773-08dc7093cbbf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YKZbcCH4a13gVEKTeTDsbGTa/zZFlxCXpEk6m/veGDBehcw5HFGzedmTj3bi?=
 =?us-ascii?Q?4tDc3e+WWf8jj5AsvGdUkWdFt2+EJp3ZrzsxNqrHBobzDMecPvIS3oq2levC?=
 =?us-ascii?Q?DcdiH8MglLjsVygSKljSxGG6/RneumfkA3xx1P+I2I90Oonpll5PkJOUwQkM?=
 =?us-ascii?Q?5NkZcPE0CkiCDL25ylFM1i5PkZxIaaqwBwuApWVtNGGGIm1LK9EnJ+LDqJVL?=
 =?us-ascii?Q?D60xlyqNT8fto6nMedaNX4xXhhptqN34AgImbWJgivZcpNNL9D7K2dVOPnq2?=
 =?us-ascii?Q?/hZqVxq6R2hJxOOZaUgWohE92H/9tpHsuZ44ryawYXghLWfLQ+tTvhf6eC9v?=
 =?us-ascii?Q?etRjoSWrpVfxIHqX3N5H1WwZnQrudSeuAUOqKbGmfR70ys6Ol6PHO5Neaeuq?=
 =?us-ascii?Q?m2WevQbohZipYr4hDpHdHVejMlIaz4cFb2q/Y+lSIvETsnMlXKee9MzqEdVN?=
 =?us-ascii?Q?wC796doyYNfWuQzXZoK496bpBZQSf/hudw8Q/b+uKtGeKeN3cF3LkYGLomZl?=
 =?us-ascii?Q?BYO+jN1bn1SvFgIDGL7GmZ+OHzUx/u7ozpZT0MfdfepOgkcOhgnuBPSqLONl?=
 =?us-ascii?Q?EtrHOqokCA/16owkTsxGDExr1KdTscuA9DFbwpWswY0VqGalg6yN4Wjfod7D?=
 =?us-ascii?Q?r67ywo3nAlY+vDnY2p8/FFQFPT0fA71LhxYVY1JgkU1/QHq5/Ob9uwJfbOgc?=
 =?us-ascii?Q?rwh0MwYOF/Up7ovwpwB61ZXuLQoflXBS1D/NQWpTvvqAZTdnZF3YWN9lJJ6v?=
 =?us-ascii?Q?tWm9TLfbdbscQN4huBiGM+LVR1Wzpa58BCWYK2VGDIHRwU6Zc0jnm2nJgvNu?=
 =?us-ascii?Q?N0SVUvTjWcLW56Wqdh97RlzJPkkSDQqjz4RP5x8rT/ZxBoTMGBkUItVUbf6K?=
 =?us-ascii?Q?/IqF7fkUCLrCCjq0vhfT6i50Y4goeFuw1pJVUS4V7LI67r/4j9lMMJ0j39N5?=
 =?us-ascii?Q?9MTrwhegx2dA5DTQ4QRZwu3/Y4gc9K7LrYd1Ystpgkc+EfewIO9GNQPF4mKH?=
 =?us-ascii?Q?NgVA0WByvvvJ4byyTvNH9/MRfP2CLXJtXJa/E3Hv/ZYzTJ/BcdBdDjc7L3Ia?=
 =?us-ascii?Q?K7fn93nuWr1sdohy6ITpIXEkOtDSowTR7DXmSztZLZOGqEpuGix82c71btqr?=
 =?us-ascii?Q?NhlFst/i9CxsKVGJfcaSk07yT8gmUQgXuTpubLoexb3GyDcfIqAlNTplgOIq?=
 =?us-ascii?Q?TRiAlDzVyg03zgAjS6/5w5IzNDPTadTfoYigiNuNHeBreC41eNJdOK4J/X2A?=
 =?us-ascii?Q?f5EAJXv5SjkkWYqyfMDvxuHe9s1PQBR0MoViBYRDVQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hA0X8hU0onKThmMbjiDwflmB4KYj3nyo22N3I6TaGFmxEbt3uR4umIsd1bzc?=
 =?us-ascii?Q?hhWOTkc/yu9FW/rSSKtNgvxEW/twvp8Keam49MHpdi7wN08wZJOb7eq2whw3?=
 =?us-ascii?Q?6k1et5qx0YiaNzoRjY1Vfj+7bpuxAtH/pTXXdz77QYiWG5BCLdotyg4FnNo0?=
 =?us-ascii?Q?qgGgpjh8bRHbkuTl5AdyhTJPegRnY6vE0mlaPg+M/RRhYAnn5kAAR7p5tjXC?=
 =?us-ascii?Q?wfxn6xFZHOHsnXgP+4wp5DnYkHMZlcpazeD+ERcUEgin8mmMLzRTWffTM6tO?=
 =?us-ascii?Q?8fHOBvvzGkth0Q3mpFUDrBIyzh3gB2MXxHG8SAvnPlnIZmtN8uEXHiQMpniu?=
 =?us-ascii?Q?eThhUIXkmbUruSJpGRzQCX13ePe1vV1hJh8wcIvh7hWq7blrGNnQ11n4tvUY?=
 =?us-ascii?Q?+SIpIt7cpnmiHc7jZAqbABnm4Prehtf4HhLPZbPEmuT3MtWaOMR+kMa3UAKU?=
 =?us-ascii?Q?FvAtBKdZMZ1mDpAr8HkZDcMTNCxNXHIlgfJ7yBC3Jb3ky2JdVcJZIocBNUy2?=
 =?us-ascii?Q?dTUS8yKuHJoKHar6ng6lymmn3VcNsAf5/dMMB7CtJQLkxJEKv643lU2UrSw7?=
 =?us-ascii?Q?2CGOt4MwYBv4Y4fuACW6XOLqFESxM/hWMzbOodAMIDSHyAxvERWRZ2nAZxmk?=
 =?us-ascii?Q?MFteDThQhj98wabRlAG1GSnJMTK8JIVE3KmxsnzJEmHKHkWLS+GMddnMZp2K?=
 =?us-ascii?Q?28KKf/tC84jPXb9v4XBLTjxgaSwETqMumPJ/QSbgLAhmQwKdwbEZN12TRUPU?=
 =?us-ascii?Q?rTnbyzsXTt7kpAls00jYB9GWD9ZhYXrwJdhKWM6TRgTMaTQkMicP8HUXwiLY?=
 =?us-ascii?Q?UTHdzMcRAnXX5EP8ySQScTdo7XXkQz14H2iE+Edpslvyyh65T9G7cmBqV1YQ?=
 =?us-ascii?Q?ZKgCorWkm1Z924BFSelB7RXZ4YMRk1SroXBZzNOp9yOyzMlF+Un3fAlg3ElU?=
 =?us-ascii?Q?yM+866hPvj55JhgvgOEqVkX2nBi0yfp9dTE/ceJgfIjQyNpgB9DHWmkY3H4p?=
 =?us-ascii?Q?bRI34hVMIU/dUDRbtE35leWRs9pu1oXPaNow4LTJltOkYqMX5GRoi79Mscfc?=
 =?us-ascii?Q?3k6cU/+7r55QZ/iFkEVNAj7i+G7Hf9n+r1niOSa0R7o1fLoBaEZh/DY/QjTM?=
 =?us-ascii?Q?pLY+5Z23bz97A9q1LL9QMJvey6Ct6OrObFg0EcPPprk46S2czpfrBBleNbl3?=
 =?us-ascii?Q?vgFH0ehVHVeUcFCk09oGhQwPmHLfBgNX0PDvYRBHGg1NklNSjsJQSRquFy7x?=
 =?us-ascii?Q?fdmEoFUK6GCYO/6FvenQxjBeujeeuEWS9zIhUGs4z+pzwaR/sWcrHVCwKXK+?=
 =?us-ascii?Q?hSlV4mtuyULudAyULAeSyqVt5P39QC03GD1rztX+b/lpbY3h7UAOZ31XnrGi?=
 =?us-ascii?Q?MQbxCnfLmW310aa9qffI99hSzDxjbzYBQPTvOJ4DIj8m+yu3t/R+vRu3MC1R?=
 =?us-ascii?Q?1sQEQDYnrNfQrkcUXXaLuQ2YPmc5W+iq9io2I4F/YiPHEgVr6fSs2FbLnHqI?=
 =?us-ascii?Q?6Z6PcSIewIrHBIa53FUn20uu75zuf/jorcxv13dqVtzgKu2gGIrDFg+QyIdI?=
 =?us-ascii?Q?3P7BMggbCfduEnMs2JFL4FaT03rag3NdlTXSOnjQay6qd8P9vF4tM0zg3VeL?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef73a491-cd3b-41de-7773-08dc7093cbbf
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:52:06.2474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hjkp5sIvUAfRAo2x7anLPoMb/SmkY+//EuTOX2OEEJXJ2dfoah7tW8w/6Z8XREigo93zGt5Y3FEpJXDyaZAhAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
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

On Wed, May 08, 2024 at 06:47:55PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_PUSH register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index e7709b06b92c..5031b7ac8007 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -237,7 +237,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> -	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
>  		       TRANS_PUSH_EN | TRANS_PUSH_SEND);
>  }
>  
> @@ -250,7 +250,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->vrr.enable)
>  		return false;
>  
> -	return intel_de_read(dev_priv, TRANS_PUSH(cpu_transcoder)) & TRANS_PUSH_SEND;
> +	return intel_de_read(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder)) & TRANS_PUSH_SEND;
>  }
>  
>  void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
> @@ -261,7 +261,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> -	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
> +	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
> +		       TRANS_PUSH_EN);
>  
>  	if (HAS_AS_SDP(dev_priv))
>  		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
> @@ -286,7 +287,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	intel_de_wait_for_clear(dev_priv,
>  				TRANS_VRR_STATUS(dev_priv, cpu_transcoder),
>  				VRR_STATUS_VRR_EN_LIVE, 1000);
> -	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
> +	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder), 0);
>  
>  	if (HAS_AS_SDP(dev_priv))
>  		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder), 0);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 18c8ef911579..9d443365b85a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1317,7 +1317,7 @@
>  #define _TRANS_PUSH_B			0x61A70
>  #define _TRANS_PUSH_C			0x62A70
>  #define _TRANS_PUSH_D			0x63A70
> -#define TRANS_PUSH(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
> +#define TRANS_PUSH(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
>  #define   TRANS_PUSH_EN			REG_BIT(31)
>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>  
> -- 
> 2.39.2
> 
