Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF00D7860FD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 21:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5AA710E0F0;
	Wed, 23 Aug 2023 19:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65B6010E0DF;
 Wed, 23 Aug 2023 19:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692820183; x=1724356183;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WpGiIzrGGpos8pvftK+OdTA4NKGYe5oljlv4g7XCR9I=;
 b=F5lelL0emJNkDqZqWlZ7uIPIeqXHQhnA1V1B8+FOE038B2RPDSnDcUtP
 zi5O9b5VtmuN5cK+1dfbcVtCEFUEsDhRaHSIf0JyyU+k/wq+53Q8var2g
 BrNGs7OkE1JNWBNCGKobLIad39aaso8Sufiq5IGaI+wQFjhdmKfobuqfR
 s9bE0iThgJXWZNTqufiKl5HSbx/e+itUJxJcl7YqrEk7nK7vQvDZXf0WG
 +HaKvV0duOuX62wY+wWCGnM5U+dRkrcrbkOG/S9FJ/jSCzy6sjtVOrYwb
 ANcVXVbUGG1PRcHNtHmTC9u/ZpDvajXWKk/6kie7tzTaHhjIk7qHuNwfl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="371672017"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="371672017"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:49:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="1067571048"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="1067571048"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 23 Aug 2023 12:49:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:49:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:49:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 12:49:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 12:49:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZikK7zZ/Oj0o1ODrpev5pASkWUaYNYyaFe6LsDOBeECivoHuQCaWv7dAZZrlQB2TipK8LNbVCduaLZEq0WxF3ALuIFqxjvopU3gjbDGYVKt7jCsYce9nlPPmGI6PKoD7CXm+qH3MhHGIh4OWEf69B6/28rC2/XPKzWePCxlihWBP3Hsv9JRccnd9CPdPRhL3HRWV4MrLGajsLDhdRz/NiK1hl/PQpwUeJfuA4khe+m638ucubWOhZBysKsB18tpHRqLfr+5dp4BkuRQiEoeQgZ4JJkdVO+sA1rcB5MLX9Iu7LivV2sOt+WdIfpsy4uH8l5DMkJsvuhAujqHvYhTLNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XFgX7apdSqs32z20Os4Aen+nphxN2Z01HkIjrHjfzPQ=;
 b=TSowgjezxUdjFbFoIEQRCJJ4ucunRCUaJS/k9UxKE/llE/PfZvbUQK+WQZl4OumSRCnlPC48Ycz/r43bmpnYMLkbOvGUDE8dPJIFtEoxQpmTYdcCGk0cyCrDpadQwRTwf6ju5nG8/AS5nrdylbXS+6nafBTEHbvPAEsI72t7ZR2SyY1ThEXpNjD6ocDX+Got0L99mznGsxohIt1QAsvfGwXuaJT3F+M/FwZVf3biVc9enZMGs7RBYFiHsoK8yoW6GnLDsRez+GtBVfz1gHbBBdQbm1MHk1K6rF8qSLjXCLuxoHgbh/a7axZ9OOxuzZO+HCEXUN6tVBO1UUb8DzLfnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH8PR11MB7070.namprd11.prod.outlook.com (2603:10b6:510:216::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.25; Wed, 23 Aug
 2023 19:49:39 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 19:49:39 +0000
Date: Wed, 23 Aug 2023 12:49:36 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823194936.GE1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-24-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-24-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0119.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH8PR11MB7070:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d329d82-f4a9-416b-ef42-08dba4121660
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dx3mrBdwblTISMQg8QF4lacBms3zjJzGDX4minvhrjOUpkRpW34ev42pDm/UTCpP484FV7qIOIyfSRQQEpr7JqDjdqSFGjLcd1UO8VSYi0S+kMv9b/hsZRaqwagpwThhWSjSMmUaSPCse4pSKZ315l/Q7p5WV7wUAu+ccK4NyuBPjQC+Dmm5ww1bvBd1C4AL/FFv/sq8CED/VWS1fKdypRCpU6VInxi2dRmLEfONkS4g7D8NGZF6PDqRO6E4PygpL8MWG8pnhZf5CIFcOATAohxlCqU0QXJJHEahG8FCnOy6jmBK4uJdptRX7JhSc1kg8zcaRrLSMlfjnI1Ko1+v+j/MK/nr2TlEKh70FX48z5oVmUPRcekanZiOqgqgmn0C6nApvbNm8IFD/1JYg6Lf7kZBRCh2CxOWPuvARpHQHbQnIQf+BonKv+wkBZiEkFMcrejSMlGSOZx7cCfD+tWpoqGbvvuBkLTnsW05tAG0ROdfXMbeLlTHQE9z0jNj4Dd/4FjqNmZy4GrA7gXyO2ZjaqvwiqfCbmbxgaTVgJFZsOCCIdZ/+N8uE/wXX7lYONET
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(136003)(396003)(346002)(1800799009)(186009)(451199024)(6666004)(6486002)(6506007)(1076003)(6512007)(86362001)(66556008)(33656002)(5660300002)(4326008)(4744005)(2906002)(38100700002)(82960400001)(450100002)(6636002)(8676002)(66946007)(8936002)(66476007)(41300700001)(6862004)(316002)(478600001)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H6ug8gDL/MQMGHdfPcWTC6LfjfLxY2F6q2wTwPNHkirzKwyQmfOovKthy+WS?=
 =?us-ascii?Q?ufNeO8KpS9eQbwbSfA/idvDwxukhVDROG4DIp0UU+so3YiTT6u/XoVdnjWn2?=
 =?us-ascii?Q?yPiTO1KLDTEiNZ+SXdYz6Om3sbg4C8SkGqYaF8mDEqTSx+rmQoI98WGn6DQl?=
 =?us-ascii?Q?v76kraB9Gp6JE/kSpDQr3taahg6bm3E4vkEYfw0p5P2FZtIyNpkj66zIYEMl?=
 =?us-ascii?Q?RkPu0aZ3W7kTqyHZ0dONGkoQg7HhzZZc4Cc+4zkxpWMMnECjt0hccKMAfh4c?=
 =?us-ascii?Q?BL6rQebRnJcpq/028LoE1a0+Git/gi0UsW6G05nZFBY4EXjuWriP2I1n6Jlw?=
 =?us-ascii?Q?RsZ+6bO3CXxTZpxDY1aFBM0QsVmMCCUEvic5ZCGYyJrNBO5MZGglmJ4QpyJK?=
 =?us-ascii?Q?CyyNGbES5CvNu8CtsKf6mIfnlnGWW0jzv7rwyh3WdV5KZ87wxWrxfY0hyTMG?=
 =?us-ascii?Q?0Ugjq54po2i9mFql2gsZSrI4LnC0wyTkHZzx2sFWZ3yLWVYy88C4qfrr2mRv?=
 =?us-ascii?Q?fCaiKYGWr5WlCwzQeemWyvqqM2ftmI3aXXVdiNwsQyZpEKf3vDZZlTpHDCeN?=
 =?us-ascii?Q?DSNndHVnus1j3TkPIikt/g5w42gdbQIlXzmFVzdvsINCQhcJ6w5abqT0ZXVx?=
 =?us-ascii?Q?aRIFVoY5x533M1tfseGXBwFHJUMFYgAVtnMoGKP5IoXSW0E3cv/oXZzEM9HM?=
 =?us-ascii?Q?GJHPwTYo85D68olbCIH5ufJcUDnpFCGTRIKbyiSxBQ2CwtmYEO32+DMjO6Yc?=
 =?us-ascii?Q?xq8m+yfDj+wXtUJhd3eZlkvbQ5FdE3t3oT1+hK5gt7kXXmGJ4c1Vxb7e/IPx?=
 =?us-ascii?Q?Fg7GwbpEUwChOII93uVNTuZQTOYUtOSqFwK3e0bwXRayZ0VnbSYAvTbM6BNH?=
 =?us-ascii?Q?XaP8tiOsM185SGN1wQijCjz2NwDWXL/bXFlJzMSEsa/ryiQY/+bz2pOBlpib?=
 =?us-ascii?Q?4Ffd9MlwcQffCE37g6luIzmBJU2iJxpAX7KhYZOvTeCYyuyTmHZWSfilWt2F?=
 =?us-ascii?Q?KjuuU+L1e6xejP+/QSFqveQ12PH0Fzi1mocGqq+Eilt3v/o6EviUPDD6LObO?=
 =?us-ascii?Q?tzQNJaj1k9mt2Iq/6OsiO/oeIx6iwfTtAljQSIQmBbiq2VGW+Sg6sykt0RIz?=
 =?us-ascii?Q?1HTPqxgzMg5f2ACrmGQMgxsjgNM3FfSsnZ7uF7O39r63kykRSJSg6vGSK+Ks?=
 =?us-ascii?Q?yGOmH+Lfbq3j7xlCGdsUonzxxNFu1fkDDGOjVGmCf3ab8t1fqWqerihirOJ1?=
 =?us-ascii?Q?9FrikF59C6kj4LY7z6SJTojO0/BFI59dUYsTDpKSTDu15o9/XGuGlbNoNHxx?=
 =?us-ascii?Q?QDDZ30bliqx/j8/n/KE3EEt6qOSBbMgNAByzRUV454bmYRtgxd1g4fFuleD0?=
 =?us-ascii?Q?ZFL+pC2AcmVI/xXWPybyEtqZA/HZpjAfrIwqP3kRmvdp1YwLYTRqp5B+0BX/?=
 =?us-ascii?Q?0vJq/cHy7hDwlxWiV1ZijpXqYo6cSDI4dIc5KLe0wOgbECxsrgr/0n02xiLo?=
 =?us-ascii?Q?mEOKjO975LTbnJJj9AV+IA+TSwEzHQahkwwLWcwzgPBtHUb9b6FCoPyWBLe+?=
 =?us-ascii?Q?YwaPgGTpB/AlzbRopvk7LoIbPGfgj1eDvMmorqwIBrK2NAcDwFacUXJOkC4c?=
 =?us-ascii?Q?KA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d329d82-f4a9-416b-ef42-08dba4121660
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 19:49:39.5959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /I6DGB3xayLZxRjcGvwFaLSJNxo3h9hO8XGOoXBK3glr2By4UyQkcBiwDCcDV9SD9dK/5gV8Rj9ouGY0jcC6aZqkD9pVMRHrn7WfnnhLp1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7070
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 23/42] drm/i915/xe2lpd: FBC is
 now supported on all pipes
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:21AM -0700, Lucas De Marchi wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> FBC is no longer limited by pipe.

It looks like we lost the part of this patch that adds this to the
xe2_lpd_display device info structure.


Matt

> 
> Bspec: 68881, 68904
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> index 4adb98afe6ff..6720ec8ee8a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -20,6 +20,8 @@ struct intel_plane_state;
>  enum intel_fbc_id {
>  	INTEL_FBC_A,
>  	INTEL_FBC_B,
> +	INTEL_FBC_C,
> +	INTEL_FBC_D,
>  
>  	I915_MAX_FBCS,
>  };
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
