Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 520F78B9B24
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 14:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E198610F4AF;
	Thu,  2 May 2024 12:55:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WEp9YEaR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A4810F49D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 12:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714654545; x=1746190545;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vQTjwszsExC5kXd4jcdq/UHA6oPEAjGLD43dNtNVJts=;
 b=WEp9YEaRoRKoe1qixtbPhcX5HS1OdMC0ucvwZmZel55sY5JR6gWJsUCb
 xewJsJIIJl99ByfXeJDuh+qvXoLRN5Dbyq2oJw73e/qgy4ZKUjYsPO8mx
 ZeF9LDQ6uxAescb9M/QwMIO7dZGzUllLFcFWu/hahoOZk1HWf95AL21Hq
 Xh9JuwPn3JkBYQB0W0qe6/+Dfxr8tVz+4LWrbwgBGoaR3YOJgMnVf8Hem
 13zhz0JEh19fUgcFKArKsVf3lBMPgWvaZQ1vucGmXyztJK++dFp5sgBnq
 IKQgA03W4EwSrq7jkMH6EoJ4OVmRq75nYISjQwYZyeMXP5xQCCEPwwgm9 A==;
X-CSE-ConnectionGUID: 6tAndolySOO2DaxfreWXYA==
X-CSE-MsgGUID: 0kEJumoTSZmMmzOrE719hA==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="27901609"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27901609"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 05:55:45 -0700
X-CSE-ConnectionGUID: AcJL6RigQfqw1i0pGV0jSA==
X-CSE-MsgGUID: a4SMvcZOQt+Tn4pN1sYBvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27506401"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 May 2024 05:55:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 05:55:44 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 05:55:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 2 May 2024 05:55:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 2 May 2024 05:55:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZmcxWssot23vP/ZAEJJWlLdtH0XQUsTqEuMrz2VQUo+KnIkiRkebOZS8aaFkypyl/di+YT+92kUq3FAeU5O5qSOoY6s85JBHu2gzsjpmxM7hxkYTBYgjHS9U1WWokIAQBFxTbXexSzAzch5Oa48A8W6VSb7PFddtqU8GWy9vorQOotFoSISTE6+vTmFUDgUsM7wSdoFX/fh0yUB5GONm35BMDG9h/FZgDAentFEv56Ojcel/mjQeTThxED7pZxWP5HjkFttiD1/dqNbtj0ec5RRUxibZ+L+E34Xu3iSmEGUie+gc8w36lxOlrguT1yelkyt8KSfLPeMSBSX7wYhj2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OuQ1QDWq4CNMpzdb9qVLsjAjr8ogQ3tNQho+XhNTcaM=;
 b=I+TvODkWLGPukUZfdyfABRNBgG7tBws4JTAPKe8G/unpAh8PE4q7tBP5JBvS9k+ydeEq9h0qk66oJT5tJ/h7lOT+A0kx42RsPZCB1X1z0pbSjfv9a1YAd1lEaHUTi6pyP5raoP0JF2ueqkGuj4PoFcHXbl9fghBQEP8fzsY6vYnz0Jw+ocg0blOzKJdRTKpgE0Va+DVtVCjqLnW/fdYGUk06d+guJmVhZ2FAVf8uSLIb5J5aoz/84LRQaEknBZ2DGYW0DLZAGFTVOKO2LBL9IWOnmjRm8y2ikLRemAR6GzGXBDbWzH5HjWX48FV5zmS1v5qWDQRs9THkJsbjDZ2RBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Thu, 2 May
 2024 12:55:41 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Thu, 2 May 2024
 12:55:41 +0000
Date: Thu, 2 May 2024 08:55:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH v2] drm/i915: pass dev_priv explicitly to PSR2_SU_STATUS
Message-ID: <ZjONSUqKcuFmERKM@intel.com>
References: <dac8c4ab8b34220cdfc9d5f6109299a040ea1b40.1714471597.git.jani.nikula@intel.com>
 <20240502103925.1829104-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240502103925.1829104-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0073.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB8287:EE_
X-MS-Office365-Filtering-Correlation-Id: 18b48e3c-e3c4-4425-fc02-08dc6aa72c18
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GBBnEXlsRnUr4SqCbRMhbAuhtZxxk0Vw1p24w1k+duC1LalvLvfLjsM5vRZ+?=
 =?us-ascii?Q?fyZUfgB6Iqx6K0kv4XXKjtOkWbRbKmBVuFpnvVNEygyG2IJkr7OWld+Ku8KB?=
 =?us-ascii?Q?hYLmY8wvafDOPZiDFKQKzzDNUczZgS3T2iEv08ibQACOVyUi+kX5GE2rGlW8?=
 =?us-ascii?Q?zE+ifF9O5633lddQSxiid0arqF0wJthPOCv0FzV2rUKVaXoUlEKXUXWMZm0b?=
 =?us-ascii?Q?wsCXRYk2aUDzhszttkGUkvFno5HV/JjfYlIoIpYPhZ+HWTKaGXvUcp7W+i/8?=
 =?us-ascii?Q?XrZr9fdx4+DYJWd+NYxMCrUxIpgFugrr3hUN4fwlDbQRqPExeXm/OetY5XvM?=
 =?us-ascii?Q?pbaRSqukXZQS7RhL10tpiZdPma56MTdGkVIbA+jV9T4z+80pcLEqKWnbVGZd?=
 =?us-ascii?Q?mlWKPuz8Rmicl25mscwfThpt5cj2e+R5t6lPy2YUiyX8iJaFVY7GHRhkgSN5?=
 =?us-ascii?Q?Sc38TtvBgscKz0sXlXjREZApxhyB0hQ3WoHIgSn9WBDUyY6dAdts6qd8fIt8?=
 =?us-ascii?Q?USAoZNTTZ41yT36JfsasD9H1Y1BdI3M05xaK40PB04VhsUvIXxFCz83xHarI?=
 =?us-ascii?Q?Dox5Qn/rdHOVXGaDE+LIJofVcFh2AhVUxHxtr3O/R/kf3SBOIyzbPDcP/pVe?=
 =?us-ascii?Q?qt5+eGM1++oews0Dh3WULFG7R8+03DPmqn7TlwJDZGVuHmjj4pmrAqzH62ge?=
 =?us-ascii?Q?go7rUtPt8ffw481hcedQVXWo1HDPDhaor27ZOWxNWe5g2fKE6JHO1aByCZzk?=
 =?us-ascii?Q?wrmaq2K+T0CwgosgprixRkt6Kxsq1t8lD36/dQ8V+IPlGgkuZY5DrwKkgbnD?=
 =?us-ascii?Q?XwBL6tx5bfwkHhtAFr3dcILhUlR547l5DUdyXNxb96T/0F2JJ7pagSau7p9r?=
 =?us-ascii?Q?8mWvmcyGOQXQsXun320lQUqz9/mBybjEprkTKFknzmSMSsvN6XQ6E5HuGYlu?=
 =?us-ascii?Q?IsIsPJBmLg0N+duL7tgEfBuPlGjQfUFPbcZZjnH+ZwD70QtLBhKKYYysCjKS?=
 =?us-ascii?Q?bswtYVowByreNawCdXDrE/mZCu4W7OdQrsaLuPtSBXt+rEabOqgy37Rt1NPX?=
 =?us-ascii?Q?7v/Y0gvle/C9ErsbOM152P/vqmpWCIOlR4CLNMRPvJOeWjimwgOclfuitIGv?=
 =?us-ascii?Q?bp7W+rnvnrOdCmHo3UU7kYAGx0Cw7BPvsADN9bQZNDQHMv1hCmRcX8M8HR71?=
 =?us-ascii?Q?0QNdhNx/mpOzaPJeBjjcmGOqw2a7xL15u+0S8EzNEg0pOez26bVA+IczOnar?=
 =?us-ascii?Q?hhtEN0NW3kS7RPblhgO/rjAE71LTYw8U+DN712ojIA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+xM2fBLUqOdUOisqbyniQmNTCyi0Exoqz/eckA23mW99+Qn6Kij8KMURIuFr?=
 =?us-ascii?Q?2NjB46gJmRr3LDk9TKzFcW1gFnAJvBMdVnOlive/lU3mivWvzZ5cCs6hY2cO?=
 =?us-ascii?Q?JD1b2C+slcVNqJfVH/n3fAYbgqTXl3SJMPSfpMU+kXc8RcWKjJr8zuFTBaQv?=
 =?us-ascii?Q?Oh5hAC/ZkjcVjPBWgXHkGG63LA7uEDC+yCv43fJT/KDfF4hcNerNBxHMK0Ui?=
 =?us-ascii?Q?raZo7+ap2VWehy90K21aiyW8vuwAm6bGvyoWlQo4oSVGgGqLFJG8Ip5zVFHY?=
 =?us-ascii?Q?t286lr29QB05Fz8w7jbp/7KJnyVeSlRKUY9iOd5ckJdNMHehon3cHXQLMxJT?=
 =?us-ascii?Q?vIEJlpI4KKUySZ3zP0WyZOmAugm1lppWxAy6IXD0/c7zGWvTxN2gni0/trQ8?=
 =?us-ascii?Q?odvav8QT7BC/JHWGz1CvI/3/EqQlg6+keIKDzIiFDrrTwC4UVXJby79Ql62n?=
 =?us-ascii?Q?yIB1c6CtNRmTvxHaW702RKrwTv5I36E7xQ68xOssUQgNNDxKCpwjKUGhA6r5?=
 =?us-ascii?Q?LlGlpdOqf25JefbRXZBNA5q/Bne6Hy0ioQhBJfc3p/j9evWpm94mTZPSoEu5?=
 =?us-ascii?Q?PqCfOn/XbzNroscKlRTZwtfSGk+aOLUuVQ4pLSvtkS2nrH44f8KmRVEHdWIy?=
 =?us-ascii?Q?dZEiWAivGIVPmjIZmwhDj6whUXAwroc9PHGLNf1p/pCb8f2urI0hF1uGFD3i?=
 =?us-ascii?Q?Skbwkrpvv9E3RhULKiW4dcI3+butuFDZTdmoSY4VBKttvhLebf1n+ZBHY69z?=
 =?us-ascii?Q?5iwh3Hm86RVjlzPrlhdf8TTorMolsBxKavbeOEDaskg5tp074kLSSYPgNlZV?=
 =?us-ascii?Q?nRQm7pa+FnIQVoEq55nQUWC55+HCHDfeycFaDsJ887w9t1n5m6hj0mnMNkYd?=
 =?us-ascii?Q?ngfis7hqPvlXvdW3dNeSFqgiVumzjQOANfsWELAy9ukQUykBvz7iByz6iPPj?=
 =?us-ascii?Q?i40vlF+BRo5bhKzhtLBIEIR5CtXqe2x21SDa4UI340bNGceGorcVUv9gh97h?=
 =?us-ascii?Q?hz1GlBrCa2hoUK2w2m8q2wt70JA1bj/RnDWj56U+cEcUKret9ZI3+KCBMzH4?=
 =?us-ascii?Q?TSOfPprERlCYHEDcFyjPRHh7VhUoPLP/cB3Z57DiPZ+QIav2q4SvGOgkSdt6?=
 =?us-ascii?Q?GuZ+9wzaiXOGiKUB3NE4ZDv/SJjpKxQeVj9oTtgJzSFij1wYu78pBX26YQCS?=
 =?us-ascii?Q?sNXmXHWkLWhIYHPHW2vnIjVWgbjfElXepAt4Z7GISFnTcsIoSE9AN3XhJVKb?=
 =?us-ascii?Q?k/6jwvskRyw1jB7FnofUnTLO6fiOVn+TZhS+ZjTf3ZY2XLTxYaWVXhcJVl4w?=
 =?us-ascii?Q?+5T3fwJQN2oQwrBbQ164dOWBP+luLh/DeZ7Lcg62OeJHgdFJ60nEE7Bzf12W?=
 =?us-ascii?Q?VVOdCOYXYuluQPNUFh7zZUEiR8gmyzTemrAT3dKo7Ifpdg6pZYpxWCEOWFtl?=
 =?us-ascii?Q?baIKQlqdkRfF34td2lWqrjeOX3mzOgsLRR/2yCQrUg2gX8YJwVzpX28UEcap?=
 =?us-ascii?Q?Y7Kae3IQ0+m1mi6JzSwaIQ1C4RV6wSBLTE1graS21zpaQqBBlbr3hM6DEVxA?=
 =?us-ascii?Q?kgV9XgsAbQfipvhGLmftRTKQWsk3Jqc6BZD8exab?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18b48e3c-e3c4-4425-fc02-08dc6aa72c18
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2024 12:55:41.3974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vGSNVKQyF0e2ZDVEzCNzHBECGrefvTzY3G4TK2nrnGwm3OXFWdv2trYKnp9H9/cTfS4HoZHapiZvcgFzDuBGpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8287
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

On Thu, May 02, 2024 at 01:39:25PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PSR2_SU_STATUS register macro.
> 
> v2: Expand from _PSR2_SU_STATUS to PSR2_SU_STATUS (Rodrigo)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 3 ++-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++--
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 36c08cd3a624..0412a2e1d638 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -3569,7 +3569,8 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
>  		 * frame boundary between register reads
>  		 */
>  		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
> -			val = intel_de_read(dev_priv, PSR2_SU_STATUS(cpu_transcoder, frame));
> +			val = intel_de_read(dev_priv,
> +					    PSR2_SU_STATUS(dev_priv, cpu_transcoder, frame));
>  			su_frames_val[frame / 3] = val;
>  		}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index e6c62512512f..5504593aa9d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -221,8 +221,8 @@
>  
>  #define _PSR2_SU_STATUS_A		0x60914
>  #define _PSR2_SU_STATUS_EDP		0x6f914
> -#define _PSR2_SU_STATUS(tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
> -#define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(tran, (frame) / 3))
> +#define _PSR2_SU_STATUS(dev_priv, tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
> +#define PSR2_SU_STATUS(dev_priv, tran, frame)	(_PSR2_SU_STATUS(dev_priv, tran, (frame) / 3))
>  #define PSR2_SU_STATUS_SHIFT(frame)	(((frame) % 3) * 10)
>  #define PSR2_SU_STATUS_MASK(frame)	(0x3ff << PSR2_SU_STATUS_SHIFT(frame))
>  #define PSR2_SU_STATUS_FRAMES		8
> -- 
> 2.39.2
> 
