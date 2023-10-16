Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 664367CB21B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 20:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE89110E00D;
	Mon, 16 Oct 2023 18:11:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8753C10E00D
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 18:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697479865; x=1729015865;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Gwo3QRIFu0lyaPPzLxWDkM5qtORMj3/LZZB80jh7FQU=;
 b=SnRGO6qA9/EoWXLG35zt5DEE0WjCR9td5NA1uUfVr0pSJVRcINMLQ9IN
 f3z9wGilvHwXXl3kQ0ASUK0dpEnnxod7J4FyzqbDJJnoSxp78GdLZLGpf
 NR93KHxM83REEM2eqzYZgrGzp+4wmVtKUmyvch/10kIkKrQMIgATs251d
 nHOVosgfyN7JsEvHz26RSVcJCQED40iX/AFQk0vgLRCmNHrxVaArQW75X
 0l0Pgr6eqx6QjMkeDOLWJEiyMdhhl7cE6Gt0uYYyrPBlDlzxf7spNlPuq
 CblZ6xqcAt3aGVasFJ+wyO5Ap2jRH8Ztj0Uxm35PxoDhJmqlWjVENZN2V w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="382821207"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="382821207"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 11:11:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="1087183605"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="1087183605"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 11:11:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 11:11:04 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 11:11:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 11:11:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 11:11:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TAKeXGvXLtjaFNbsyXHlsi0d05UZg6E6EGeKTD6YO5nnjV1/kyUF9NVaIeAZGj1/kVv0DCqYt7pvbrTyIyDScTuYMSeOp40ToQOAetTzbeK194glb6VUlHPsqbUlB/4OcdVQQVSGH1spZ5LU+QsKiHVWGbSDfaPksJRlYse/JUfKVrwC+jvCFQ05LOkERhWxkAsFz6kU3mgLNaxmNZPwzeTpeGuG6GCd6oULc+KX8gtAwY8rrB3VfVRQOxDiJpxEE1NIS7dtvmUHjqdPBfrPszwAYL5RGJNqYaiOYneMffaW5xaia8GaYBbiMUWyJXnIn0ZXFyavt5BkesSK/Dfaew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/cyQhPSc5Q3M8JSXCzzyr6Y7Tt95IoJkPSroAqVWFYs=;
 b=eLWKgcz947c0OcVDqBuOLeXkqO/17iuTdMOGPi/U7Tpa+mq6h+DGO605h4Ymv+x6j6UQul66LMb2m1HIboV1GpIPDrLOKnrtqYUeIgJWSDKrTuYcxThUFVLzZ0Lhdk5N6hbi8eKJUApqYwAWgkz9fYnyTDTOSuBvSxyDDA1rVxpJCv6gm0jz3l/YYSttYv6MW3QbjNg4TQPgoLmuvHqhCrJQMYXhi8y4w5/8eS86e6XLj3Wl0icF2fO271Ayh4TlSOeHYcM/JKYryCPirM4qk+s4PmAzDtX9RmYjdMy+Zg8qIIsWXkR6YSCxQ19F1cyTl6y8TeF5jICkZ5ZAWI7mag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB6423.namprd11.prod.outlook.com (2603:10b6:8:c5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.34; Mon, 16 Oct
 2023 18:11:02 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 18:11:02 +0000
Date: Mon, 16 Oct 2023 14:10:58 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZS18stantS5d8c+7@intel.com>
References: <20231016125544.719963-1-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231016125544.719963-1-mika.kahola@intel.com>
X-ClientProxiedBy: BYAPR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:a03:40::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB6423:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e80effe-a000-4f13-1990-08dbce73415e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RpgHELwEi0G36YfAFuLszP3vpyMkxqHpnVxgEa7TDx8M9mxjCK9eguZ4FBgHkaXkPkWIvfC4hWKfqvIurvuWC2qmhf0Juvv3soEo8J+ymLeOamswmcsPL/rGulQQEG/rlD+1SR6Y6ZoW0oXu5JqbkQKBIkbFnb+i2YwhRvzH1jdY0BasSR9HsONzci0bAO/T96xeOVHoMdFqXr1FZbynEyQV0dwdpzTamFlLk/x1qvkW/JmDt1ZknBqOYfxZ+hn3rBjYxuZCNk9YQYLbK7TBHAVPLpHCkEihbcaAbxRy1Oht+kt6ismJUbKnCJQ0F1qakYLts/3H5b/Jus4dXtiUZ3tS/MGCf5DI1sr4RsL2vGDZPInbED4wkbTK0FnxTPn7jeomLKlyuH3nvX0uoW2Q10tmxjSB3DYGxBzX9wvQcMe7cY27FMd6Q5sQD7WA+9YsVSvkYbezGd1RF4B0g0SwYfPhWcUCPyec4cBVYBzJU17tAlzBK8pakFIpIyMgY5JAaM+ftiXG+xqvov8rS+0ee8j7m+twIEgiuhCKanAhtMl3YIgJnUdhjN43CtZkhcnrct7UMRPXjZ0N5EapdU4kyhEFKqFG4Fd4Sh6LJowjqKA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(346002)(376002)(39860400002)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(478600001)(26005)(2616005)(6506007)(6512007)(6666004)(4326008)(5660300002)(8936002)(8676002)(83380400001)(41300700001)(66556008)(6862004)(66476007)(44832011)(15650500001)(6636002)(316002)(66946007)(37006003)(2906002)(38100700002)(107886003)(6486002)(86362001)(36756003)(82960400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Sp3l5RT8Fq6qliOHDSg3jnHCwPu4xPwL6j1F2fmP6xTy1TxeRad3qW8EGvAF?=
 =?us-ascii?Q?jNNe5gwMtDBKMBcvcpfodXsB5MeNgQcs7yK6nptLiT2dBxdQ2duRtPQIQHDi?=
 =?us-ascii?Q?jbPhOBeObjnKyqKfmKMuw+ItF1pmvi4QdUkvdL5nCsJAZHNxWM6brl/7x4+S?=
 =?us-ascii?Q?2OE7TQHLM8GFX7KLBDJ9Vkz4EEpMyEXSgN7Aub6NDS6LlsSy2PTvyP9tdJqV?=
 =?us-ascii?Q?abQlNZJIujlokezc2TH9mLwhnkvs6oVCeyMNJwf0g5Cdpp6Q00b1PAktPJm1?=
 =?us-ascii?Q?ISR60DQJ3HDrFkk55lYhI8upBTZ7H1kaBSuYSiRDi87tXE8ZL2+fgMdHfzNN?=
 =?us-ascii?Q?HPB0Tcu9MqoMKBKV/n+G0Eh44jcpdn2ySxHENkLX3fIoXgub+c+tSWTHmOUx?=
 =?us-ascii?Q?rcztPnE56D+EubOU0zOXicqZkVgI+hExT6dW+O0id/UAqGvW3D+qh05IulNH?=
 =?us-ascii?Q?hgCWW2zgLwt2Cm9lapjcOumlnzypybMmFCu/vv7uhjgzNVYGSqzhcFqhwClK?=
 =?us-ascii?Q?Px5eQphK/0GrcotFex3/s60haScWDvxg4MLASKcOCld77vThTGasl+ckNa5C?=
 =?us-ascii?Q?4rvXcLiGKtJlbTJ/7pjNPuRxnPA6qnbZlougqfO1hsDl6N2sOjJ6dNsB156+?=
 =?us-ascii?Q?fty/Lt0fuVkEA7tZt2gFrCTEjqEtdEhkM3fwcB7U5GHezu6SFXvlRQivxkcI?=
 =?us-ascii?Q?IGmIy8YDsq5m82LYywZH31uiQNKglkfgPf4oe90GJUcY+QKTOVXd9nLsVKKK?=
 =?us-ascii?Q?gTK1tne578+iGCyui32Ks7en9eoOuIFFqmC4jLu4HMiDIc4/gI6OR/PtxRcf?=
 =?us-ascii?Q?I1UTk3gg1bHlxbWeYHAa5LZvk2dKqlkfO6IuIjaGtB1tHbrLENN3FGgENQbv?=
 =?us-ascii?Q?HlbzbHUftJ81PJkwyyd5F49tEWcNCZXcUl7w7rzSRxND5z1KW9eRuVdao5dP?=
 =?us-ascii?Q?VASDv26fQhZX4V13mrvacdywI5xmcauRHC0+AwmXVJu1vj/Sa8EQx6dBqwdt?=
 =?us-ascii?Q?hG4g5+i3jmUh70xwPoMVdlbJXpulOEEB3R0nmLfIPpIHHe6ROvQuVRAaqR7L?=
 =?us-ascii?Q?OSCbWj6SDeCvXDLA75pktZQT2mEmlr+GkSoCH5tS3vWyCeq2KvU6E+3+D04i?=
 =?us-ascii?Q?guelW/DJm0wsGYe/IR+VOXoT/sIhLEJ/bUKuPiBSV12A0nVcDNeWZCcTx6l9?=
 =?us-ascii?Q?Owk/GFDrO9yq7CrqTQ3sNj0exTYj6YnLJvYjvFDDa5RsVSbGL5g2KtPYDuqI?=
 =?us-ascii?Q?ILg91k5e7Q1hD5LC1CtpmNK6vpX2TWHhUwwf8nHay7qDGQZEkZf14alWend9?=
 =?us-ascii?Q?q1Rxo2P59OWrm1VrKlksP5AkbJmUAtk/T8t0kcPjI/nV8//iXApaEJJ+XcTw?=
 =?us-ascii?Q?4v6ikiJkLsf1GG13oIiwTGiiDaKQyWQnntDFvyCvbbMgzGZC/aPCmSk6YgVb?=
 =?us-ascii?Q?I2BYzrM4K3udII1oQIdhSA2/7/Lwa+qCdtuh93284U+FvHApKTbAFhkk8/Pj?=
 =?us-ascii?Q?a0ZUza+MOLCIqEHs2Wxe6bBk0QPRdVPhRpKE3lAkt85otn7uZrGYdk/oAxIi?=
 =?us-ascii?Q?8y7vpCVhwop1zY+QmQZbSrY9mOe+jvK+0UYg9j36?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e80effe-a000-4f13-1990-08dbce73415e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 18:11:02.3288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IliSb5UWpVUhNPDhdLTDmdQ73r2Se/4myoJH8dv8yQh6njtA0HuK7jF+rEkHjidZz23DcBo0l8Y5llCXsNYIzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6423
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Reset message bus
 after each read/write operation
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 16, 2023 at 03:55:44PM +0300, Mika Kahola wrote:
> Every know and then we receive the following error when running
> for example IGT test kms_flip.
> 
> [drm] *ERROR* PHY G Read 0d80 failed after 3 retries.
> [drm] *ERROR* PHY G Write 0d81 failed after 3 retries.
> 
> Since the error is sporadic in nature, the patch proposes
> to reset the message bus after every successful or unsuccessful
> read or write operation.
> 
> v2: Add FIXME's to indicate the experimental nature of
>     this workaround (Rodrigo)
> v3: Dropping the additional delay as moving reset to *_read_once()
>     and *_write_once() functions seem unnecessary delay
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 6e6a1818071e..9e24f820d4cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -206,6 +206,13 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
>  
>  	intel_clear_response_ready_flag(i915, port, lane);
>  
> +	/*
> +	 * FIXME: Workaround to let HW to settle
> +	 * down and let the message bus to end up
> +	 * in a known state
> +	 */
> +	intel_cx0_bus_reset(i915, port, lane);
> +
>  	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
>  }
>  
> @@ -285,6 +292,13 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
>  
>  	intel_clear_response_ready_flag(i915, port, lane);
>  
> +	/*
> +	 * FIXME: Workaround to let HW to settle
> +	 * down and let the message bus to end up
> +	 * in a known state
> +	 */
> +	intel_cx0_bus_reset(i915, port, lane);
> +
>  	return 0;
>  }
>  
> -- 
> 2.34.1
> 
