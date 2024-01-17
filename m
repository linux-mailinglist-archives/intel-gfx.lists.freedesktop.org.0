Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BA78307B3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 15:14:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC02E10E691;
	Wed, 17 Jan 2024 14:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6249810E691
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 14:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705500824; x=1737036824;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=mvNrrS28soXOYpSLN3eCG4lFG33A1EdWDcYj0G6ewWk=;
 b=EtNwcCYWyeQC55/eKzBDIfmZ9L/2ORh7AKSjHuPnXTQgt5vR39e4L4DP
 NBL8drRJ69qIok09W2kfCtQA/bsrb8GsYRLMgAj0qjzxUAm6Ef7jFe5Y5
 jhbaaPKgYnycr5FBhgT0gpLXV5NEg272wCn8cMfzXedE2JxdKEI+zhFFY
 iGmd1GSZsgCSdHtussNWvdaIUDFTEDLLny6x7oLDjEze0mIrTEVwXuezV
 BntiP1ebe7r9/gDhCffrcuVqw7h/O2sPDe1PLvSgKxc+IF6U57smk2f8t
 bFNNFHNFknD9F7sE4YkRjN+O7tsxAajLyB2dNr3B5uSx0jvrGOQwpnCRj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="431332879"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="431332879"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 06:13:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="854710584"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="854710584"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2024 06:13:41 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 06:13:41 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Jan 2024 06:13:41 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Jan 2024 06:13:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hb99/9NLl3ovVz3SWLkj0Xp1gPmv/GFQielmkTkxPas3tuMTH+l1lFi1cJ3WhGgooYuCq/wQGpj/kSUp9HpGmdUmRMLLKlnRhQq5gx2cjpyQgVdjAj9qWaINtOvdtuWg2NOg/2Kmgd7Qauv173t8g3s/ev9hk6s++zZk9Fy3CBYy3ctlPzZCfo6hKt0zC5ZYlNXr63QwVylvqrugZzcHaaoDG8bkpvUYIPYNRCmCs5bnBrT92E/BKQrRuym7iYCWGoEZWRSMmS4ldr8e9z5tNpa9QhBniWZ4JjNrQnjmMjZnSilSZ959431lnMUpkFerpR82BY4bA1rbW7L81Vg5aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kCCpyrqafytEZzmVsQgZg3R4fgR4JP4mgslc6pSMMUM=;
 b=ZxptL+vEcCJbIV5vmLQ5YkFfmzJBA/ljuaM8MNXVoA7+cEwdrMwx4usOJIZNQErlsPVi0xVvdue9FwwcygiGXyueUhD2CowthepVnsVvvD9iRVTEvJTxWu06ANJ7RUo8s+v32ZrVtaWRcUoSj4rmYkFAQNZU5q6uBjAydA3XYMGOaj9V5j6f+tc82RO+a5qSavZkVayK7MtQ2wK2s/7fbEHKRk0C6qHAwePnJnUgFKj6SFtTXuIEWIYcRbx3VOZeY1khzxbhtoesldgDkxn13nLOOQXi/S/7n7d66Wgyq0++5UHLtroJ0/k+2uzuHdHgq3hcAVRDBv/HaGzLVezz2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5373.namprd11.prod.outlook.com (2603:10b6:5:394::7) by
 IA0PR11MB7863.namprd11.prod.outlook.com (2603:10b6:208:40c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.23; Wed, 17 Jan
 2024 14:13:38 +0000
Received: from DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::f105:47dd:6794:6821]) by DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::f105:47dd:6794:6821%4]) with mapi id 15.20.7202.020; Wed, 17 Jan 2024
 14:13:38 +0000
Date: Wed, 17 Jan 2024 15:13:35 +0100
From: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 05/16] drm/i915: Disable the "binder"
Message-ID: <ux7q2bmbk47rnke6n2qo3dabdx7lxkuwcy5rrauwsyz7v2bthc@p7jgbcz6vs7d>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240116075636.6121-6-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: FR0P281CA0247.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:af::16) To DM4PR11MB5373.namprd11.prod.outlook.com
 (2603:10b6:5:394::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5373:EE_|IA0PR11MB7863:EE_
X-MS-Office365-Filtering-Correlation-Id: 7886ee82-0ae8-4c5e-dc69-08dc17667ff0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OFu9qsbPg5UQsnnlNzRQ1DVRMzW1Rj7HZrDO6Ppmmuh/qNy+k43Do9Ii0wR/amvowSQM03fMy7mILLYKh6igI6bC9M7z07vVME4muKrag4baZvRLBuQMQKxE3rJgR7bxximER61zvB1UkZi8L6qVocpW8V7R7YbIyO6fZjrmnMetB37XzQmxxZ5T6429Uz32ZL2+3X+nogAFnXRuso0/1d+bc5JEcRln8S+A4Gxiu7PpeRJfgibWnB/1Br3QEiv5QjNJaQDC4qFAAuOldczyIXYgrp19jpWGQ3RSJKSA0ijoN1/LJRc4qCCysk4NTOx/Zfgcsqygnq7669EgcBDGboKpEP1FkTU0DTDXbxGd90WbBbBxjEfafeha1iL86ytbCMqVaXoCOfUXHP7EN1keF+OoGGwWc13aGljMbpFOciSpsb9FN4K/pGHkVTI9pGeJhu2OP0ixglMm7nQI1fCaKjHZ7nXC+PzS1m+UDYnIwqTnFJnkifpJCpVyEzJTechZ7pYcHsFUBYcxyJ2eEdMWR849qO1bRI6GXh1eMo/P7HRSqOdWxuMlgdzlNt7b8iob
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5373.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(366004)(39860400002)(396003)(346002)(136003)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(86362001)(9686003)(6512007)(6666004)(2906002)(6506007)(66574015)(83380400001)(26005)(4326008)(8676002)(316002)(6916009)(66476007)(8936002)(66556008)(66946007)(478600001)(5660300002)(6486002)(38100700002)(41300700001)(33716001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTdSQVFzODVVTCtjZGRQSGU3cVNlMTUwNW9uWFFvQXVnY1c5a2VUS1kxdFhC?=
 =?utf-8?B?cnF6WU9HVG84T0poWFd0d2tTSlFjMHZDZXRLaDJWaCtPMDl4M3VRWXNEZ3JZ?=
 =?utf-8?B?dWRVL1RycUNpN0p2ZUxwekFQYlpVRUJibi9JakRMK25vWUpXdDZoblcyVEdl?=
 =?utf-8?B?ekRnOUd0Ty9KdFZrSElTZkJXNzl3WGVkd2J3VDJWV1U3bTJnNk15YjdQeldL?=
 =?utf-8?B?dXdUaEJVSGY1TXoyalJubXo4Z1lKU1BNWDh5a2d2MzlLY0tRZkNxU2JhNFBl?=
 =?utf-8?B?cXlSMkljOFJ6ZTRaWE5YaWd3Rm4xb2U1Wjc1eXBBeEY3VkRDVkxoQWR6WElh?=
 =?utf-8?B?bk4zM1BwUXVuOXVuWVRqMEZwL3ZoVzk4a1FoZVR2YlVHREhVQWc5amVhSTg1?=
 =?utf-8?B?aENzbjVEcWlkdzdLaTdzdDExTVVvcUVPbStyYk0vdFFoR0svZ204Qlhza1Zt?=
 =?utf-8?B?TjFvdjdpRHF6NE9wN1ZXU056YmQzUEVKOTVKamozQ2JhWDhLL0R5WkVnQXJl?=
 =?utf-8?B?cG9XV3lrQWhNRHZrTUNLT1RETnZjUHg2ckxPeTVxQ3ZCRk1DOFYrem1CeWtq?=
 =?utf-8?B?RkxvUDRxNzlTWjJ5TG91ZFg3ZVFGYUpiMUttUG9iUkx4YTlUZXlqNmR6ZzJk?=
 =?utf-8?B?NkltVFJ4RE50OVY1ODU0WE1tRisvS0l1TTJyOGpEWTVzdndUMWRrRnlYNzh4?=
 =?utf-8?B?WDY4QWNsZVJwNFFBQ2ZCaVpEb3hWY2xGSGtpTExiZ2ZSaE9lWWQ2bGNoVm5R?=
 =?utf-8?B?aXZ6VDg3ZGpJSHMwSS9oZzQ5RHVJY2NOTVovU0RVekZra0dDNm02ai9nOFYx?=
 =?utf-8?B?WTlJZEczbGVPRjZGMUwyZkFoQ01SL2hlWGlubCtERjgvMlMrc2RyY2U3UVhM?=
 =?utf-8?B?L09XMWU1MG5QTTEzRzlxMU5hTEhlU3BBaGV5YXJrZjBWUUZQZ2lOdFVHVDRy?=
 =?utf-8?B?VkNpeS8vSDdyQk9BSjN6SUt5NzVlQjNUZUV4cXAzMXh2d3Q3aUFhU0N0V1RF?=
 =?utf-8?B?Ym9GL0xZdGlaVlFiYVhXMmhFZzNtbDBzR0twWVYzVUM4Q2QxNkNkSGM3K3Qr?=
 =?utf-8?B?SnMrUlJyTkE2bDlsY3ZMSTRVY3VPT3lsaTNQTndMUGdRL2lvbUt4b2kwWGlY?=
 =?utf-8?B?Uy9iSW1nVlJtZXBHWkplaFpuVmVCZ2MyTDQwdk5zZ2QzUUdqWUZJWTF0QWE1?=
 =?utf-8?B?dkVUUmJKbDdia2V2eTV3SlN4SDlSQ01PRnVDUGR0Vk5tcTd2YjhtSFNxYzlZ?=
 =?utf-8?B?M0tYMG9HMXpybFJKRVV0WWJCaTdGTzFRRWFWQm0raXFSTndNdXpZTE1TQTdO?=
 =?utf-8?B?WEJBL1RpZ29FYmtOYWRBVUhMMk9lUEZqSWt5WFJWdDhKVXJQQ1pKclQ3WGxJ?=
 =?utf-8?B?bmE2SEh5V2ZZbEFNaVU5bmZFNHg5Ym9LSk9TNkV6QlRyaGtZTUdXc0F5TU0x?=
 =?utf-8?B?MXBLT0RxdEJoOUZMcG5QT29EalNMemtudmVKcVdLQk5vc2dvK2Rad0FtWmQ5?=
 =?utf-8?B?R3VkZnd5L2tOQlVqZXF1M0dLendQdmVrRGpuTXFwRWJDeHV2UG1rSlg0ZnJl?=
 =?utf-8?B?Z0JkMldxQWplNzlCaVFzRGM3b1ZpMk4vK0VLVHpBS0grMCtueE5nZ1dpOWN4?=
 =?utf-8?B?aUVHVHRxSHc4S0YvaEZoMFJSeGxGc0VwUlBNZVBlRzZhUmpGQnRZRHhGb2ZS?=
 =?utf-8?B?ejJxUVV5NkpFeFZlaEZJY2F3L2lDd1hRS1RldWtJbGJvMC90cnM0alEvNkVx?=
 =?utf-8?B?U3hqeDFPY09Sa3BqT2x1OGdzTGhzbGI1N1BUMGkzcXlZTjhVeVpIZGRwd0FO?=
 =?utf-8?B?dlBYQTBLQ0dBR2FBUnpidXZneTY2bUl0OG8rd2syOS90N3RaWEFndTJBL0h6?=
 =?utf-8?B?VGhhV1BvaHJ1VEhDbXZzZWswWlI1YTJERGpEb2FWbWZuZVo1L2l2VTRxVHNh?=
 =?utf-8?B?N3BVMUh4Z1dxUlhUUmMrQ1RML2xEeDFMcnk4UlRDd2Q0MjJxSE91eXlzQ201?=
 =?utf-8?B?OFd3QllqOHpDdUczeWdpSTlLRmFadWxhQXhyYlBBb3Z3WTlNTGFDR2k1N2pV?=
 =?utf-8?B?eHZsSW9hUE92U2JDczI4YVgwZ1RjT2xPRzVBQ2Z3NWkvQ2ZyRi9GYmlVelIy?=
 =?utf-8?B?WmQ5MWY1RTZpTzlGZHAwVFZzTC96eGdDdW8wazIyMHpyYXNqekRZakJjeUgx?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7886ee82-0ae8-4c5e-dc69-08dc17667ff0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5373.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2024 14:13:38.4657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K+i6wpEndPLGBdQQ1JvIl3DjnMT9te3eidUr79fYgEHu393lfe1JcydyaiwmtU2sZ7kcfatuTAUxLSz5z7ahXvdyrxxEqckTj4areOOtwVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7863
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 09:56:25AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
> GTTMMADR) there should be no more risk of system hangs? So the
> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
> necessary, disable it.
> 
> My main worry with the MI_UPDATE_GTT are:
> - only used on this one platform so very limited testing coverage
> - async so more opprtunities to screw things up
> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
>   to finish?
> - requires working command submission, so even getting a working
>   display now depends on a lot more extra components working correctly
> 
> TODO: MI_UPDATE_GTT might be interesting as an optimization
> though, so perhaps someone should look into always using it
> (assuming the GPU is alive and well)?
> 
> v2: Keep using MI_UPDATE_GTT on VM guests
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 86f73fe558ca..e83dabc56a14 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -24,7 +24,8 @@
>  bool i915_ggtt_require_binder(struct drm_i915_private *i915)
>  {
>  	/* Wa_13010847436 & Wa_14019519902 */
> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> +	return i915_run_as_guest() &&
> +		MEDIA_VER_FULL(i915) == IP_VER(13, 0);

Note that i915_run_as_guest() is not the most reliable way to decide
whether to use MI_UPDATE_GTT or straight to GSMBASE, as it requires the
hypervisor to "opt-in" and set the X86_FEATURE_HYPERVISOR.
If it's not set - the driver will go into GSMBASE, which is not mapped
inside the guest.
Does the system firmware advertise whether GSMBASE is "open" or "closed"
to CPU access in any way?

-Michał

>  }
>  
>  static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
> -- 
> 2.41.0
> 
