Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC436FFB1C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 22:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7142C10E0E5;
	Thu, 11 May 2023 20:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F22C210E0E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 20:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683836028; x=1715372028;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=V8KHwh+1BAuSQ6TyAzIaa89yqnS6xGmFTCmqsP/+M7c=;
 b=AC264A6LsU3iThN6eBGhncvdGc+D9Y/ag92c5w643uv1lMBnoJasJH2d
 w/amoRWSCRHCKl3gyqSOLQPVeSEKu75fnpQGCjg5UTYUZQV8jUh3bcW+G
 hslyNxwTruXiDKunjTFpruhoV7i+N0sApDaasLWj3Rax5Y9Bb1pwrFRpn
 XMVDaTiwVvRZJZKsQhuoXnypzrL+e/ERF02FXQGX7nVAXy60hJElKgNrw
 zX3VdWmmSUIvtPUgVHn94FoKZypHjXI6uuw/n6ZF8ARji+ti5qjO5KQtj
 ewHaMF/eXUzWHTN3/I2X5g1xWr1+WhUN/yYfJXNzdWpxars5XS7m6kbnt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="348112112"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="348112112"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 13:13:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="1029766217"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="1029766217"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 11 May 2023 13:13:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 13:13:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 13:13:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 11 May 2023 13:13:45 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 11 May 2023 13:13:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CO63o5kPr4/o8UfvW4xvIQqr19/I2kgOAkX7uAmnvVsjzGmnq6zJ/GVNDieTWby7GNXcbJGcZZPbBKaULS1J/A6vnvlJm+t/iPrqDHP2NKsqfTqHBmbIgx+MQwX9Q5bxKGzw0AELcEQioYk/06S15H7cdZ+IclsvSkuFnZ9gC/TV4Kqxy5y77Ww3WxzaBAP9f/gDNqGULQfJWISNfI1ifAy5e3lIJHJLe+8zaOd+VLQK02D0c8dgBHZOwkoTAUuCHHdKUhMjusTuSS31zOi63UjbNUu+84Fi/GPzb8dio6YsTegSSrD5Hb9z20UsNDszVkfpC2QsaNeYE5KPR2ypYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5y3m9NT/4Zrx3p9cOnukHr+8vRUlOguEFFG1kKrVakE=;
 b=lMpaVggvCV/WlctkX6B4Gab+YUEmpp29J28dgs3OxejyG0As+yFlrni5TQpBJpORoEwtQt2Z7wZOe/Rj0LlM8/tBW5L2MLGFjTiLUvhSOOd1Ix52tIdUJVb7663qmP7rErl2JvQLac0xnVgHSRzYmU2cp5iz/j8d6YvaPBs3WnJ2xU9BPf4nhzysz4QCHqzme9P3ZA+gwpSPQaabbosHlom+B/TKGvbpKVAzP3tVsw742QkgkpKyVAcoebz3BnePGf/2RqamG0ncdxw3DJymk1OXcqjRtwCUnwRpkhYTL4UbmNQM887VHrPrknqq4aaJHNLF6eZDbiQuAXqCAhBFhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by SA1PR11MB7112.namprd11.prod.outlook.com (2603:10b6:806:2b7::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.21; Thu, 11 May
 2023 20:13:41 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::e585:1863:208d:7e7b]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::e585:1863:208d:7e7b%4]) with mapi id 15.20.6387.019; Thu, 11 May 2023
 20:13:41 +0000
Date: Thu, 11 May 2023 13:13:34 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <ZF1MbhyoHsXgOcaA@msatwood-mobl>
References: <20230511103714.5194-1-juhapekka.heikkila@gmail.com>
 <20230511103714.5194-2-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230511103714.5194-2-juhapekka.heikkila@gmail.com>
X-ClientProxiedBy: BYAPR04CA0009.namprd04.prod.outlook.com
 (2603:10b6:a03:40::22) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|SA1PR11MB7112:EE_
X-MS-Office365-Filtering-Correlation-Id: 09a81597-cdb6-4da0-2b22-08db525c366e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GzTUSeZG5/xH5pO7fdExhDAxB5jwvGA99Lj/8UJMxWt2VXJm+wkNQZ/DD2++TxfibAoJPxCAKeGsf5BvGNod4WzKr18ooIl5GTRPuzGM6sYMQ48taWwjWWtcOi2aGpE+2GNafm5s1y0WSxHQPQkL2GJhDt985RMzYvo7TvQYO/yMgRg1XMyMxmrrh+/nhA34xKDRfpwA+Lq8eQYAdO0HwmYaRUGx8My48knHRd5qA4WPS5kOdcBv51zS7bmsQXWJrii7PQNOajPoXvG2Zv+dvngTvF0YAkcWEox/NseJ5v+7QLUZnFJgkomhZrQzVNeOvgRLdITxUFr6Kya+l4PJKjXctfv/E22SrOLdyHlgewCKEjVeJz5NKONLxYz1TtqUAKfwpUeyeczFBGWOWIYoGJDJ6D0Mse+/4BvkAF7zEjJQql9vpsAncYk13qN0WP0T/0LRMvlaJnEvrKvGJgGIxAvr45+qEGylTk9TS1dSOw6SUXlJxQ2rYEd1qWb+D0uAJdMe0bVz/2QI7ipaBgSnbjz/dKZS7wQG+angEu6KOb7z5HxxO82QijPOt5aXEORO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(346002)(396003)(136003)(39860400002)(376002)(451199021)(6486002)(6666004)(41300700001)(6506007)(5660300002)(26005)(9686003)(6512007)(86362001)(83380400001)(33716001)(2906002)(82960400001)(38100700002)(186003)(8936002)(66556008)(66946007)(478600001)(4326008)(66476007)(8676002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWVubC9ZNkthVzhwbkkrMFp3TXlGM2dyNnpXbHZFdVQ2ZlBJdSsyVTJ4SEcx?=
 =?utf-8?B?ODBVc0FPa1lKT1B0WjdFNlB1aWpUUXpDNkg5aG5IdHFKVkNVZjVkcnk0aEVJ?=
 =?utf-8?B?QkVYS21KS3dKeUNwKys5MUtWQmM1SGpPeFQ2MzgzbXMvMy9qOW5OWWJ1NkRK?=
 =?utf-8?B?cVdWUGZ3ZTVqVkhGQUdjSHZDSVZ6ekZ3ZFlVVlVQTlRBT2ZsdlZvQmdCVm4x?=
 =?utf-8?B?bXNNRmJGV3BsLzErQ0VEWC93RzVLOGM4dExXN3dHNVprVngwWjNmSlhKSmtp?=
 =?utf-8?B?R09RcEFnQ0Y1TkJ2aDFpM203akh2MnVkd0ZEdVBhbFZKU25sS2VTVEpYTmJW?=
 =?utf-8?B?K3pDc1h0cVNkdHhVMXdaT201RzBXOUZneSs4Smk4VGRZNVhTMUw1MHV6b3ND?=
 =?utf-8?B?YU1OMGpzcjFCbG9XWFVOR2E0Ym1GVlhWWjNwaldLcWZMWTF0bzArQmRwSDJl?=
 =?utf-8?B?Q0c0WlZBTWVGRXpwR3dpTUFLbHl1bmo3OGpkWE9ud1Q1SWMvOUgrRld3NGRF?=
 =?utf-8?B?cEd5NGNVRW44VWRnajdEYVUvbEZRRDMxUU9zWmlCT2J4Y201dkliMFgrZjFq?=
 =?utf-8?B?dVUzbXBxd1pJbFZmL3I5dlN5R3dmUW4xTUxNc2FFYXVHWGZJMWRid25uMkJT?=
 =?utf-8?B?V1p1K1ptQ3NoZGJsYjUyUWJqb0NHdGxhaGtLbFhLYzFlblIwUzRncWsrOUNw?=
 =?utf-8?B?VU5vdDJLU0JCT2tKQ0lxcCsrZWpnbDI4SWpMenUzUXo1Qmh4cjFySldCSG44?=
 =?utf-8?B?alZRb3NGZko2VFhSMnRqV1JvNGpoenI4Y2E1WjJCZlYxU0pQbmZTN2hoNU16?=
 =?utf-8?B?elUvQjBwVUJKa3BuWDlWVkdrdDBkbFFpeHFnNFB6a0lDTmNlR2pLZjhCYzdI?=
 =?utf-8?B?MXlxTFkyNW5wYmRoVk5wbG0rUUJOTFJ0d1N2QXordHgrMFQyMmxXblZsSitZ?=
 =?utf-8?B?ODNkMjlhSUpCM092T2N3MEwzMUZ3aTZVNVExc0J5Q3pDVlRlcytrVnY1eHlt?=
 =?utf-8?B?V1NEcVhRaDJKa0RKcXh6dEtMME5yM2F1bnN4MVcrdzVLWjgxMUYvVEZUM3Vs?=
 =?utf-8?B?WGVLclRKZHVncmZXU3lIQW1oQ2N5NXV6Q0dObnk4WnRtZjkrdkd4TEMvNGM1?=
 =?utf-8?B?bC9nOTNmT0tGaTZ3dGZTU0luanNTTnNZUlQzSlFKUW9vaStXQlpTK2UwOEpM?=
 =?utf-8?B?OUNVMUVPQ0cvQVFIWmwzM0xOV21aWE5ZZjlBS3ViQWp6L0o2OVZKUmkxUmN2?=
 =?utf-8?B?MUhMRGREbFpUMXo5bzJnVWFCU1BqS3hwbllmdmlMcytDdDhzNzFmYXRGUlhw?=
 =?utf-8?B?S0p2RFVsOWp6V0J2Y0ppOWkvM2RBTE5hOVJVUTFPMTBwZEoySSsxc2REbjVB?=
 =?utf-8?B?SVlsdENNWUpRY1Q5ZTdmTUc4N05PMjhpTTVKYkM2U3A5azdZcUUyajYyWEl0?=
 =?utf-8?B?Z2hNRmx0aVgrMm9DaVB0em5VOVk0MnpnOWptbWVLN1hrcUpETnBKblprR01x?=
 =?utf-8?B?NHVUZElnUkJ5cVZBV1VwZ3lHczVJYkF1QU1qR0REUHdnTXRIcXZhVWRCcXNj?=
 =?utf-8?B?KzMrNVA1eTlPa24zV1VSWmlSVGZHc1NJTm1CVEZKYTUyemNGV1BlTFpOZFhQ?=
 =?utf-8?B?N2NHWFFNay9ZbWNYM282Y3FDMlJQbWFhZzdKbElydDVpTnpvT1VTS1FzSSts?=
 =?utf-8?B?WS9qWHVKaVRiblovVUZxTWh6TW0vdDJRdGxtUHp4SVd3K0tnWlRHQ1BpQ05u?=
 =?utf-8?B?U1NLWWE2MXFoemVhRG4wbytNVFFSS3Y4WmlMcHBXQnJ0cVAyT3NVb1JNRFMz?=
 =?utf-8?B?YjZKaklaeUNQZFY3YnBVMlBudTVzUHA5aXdtdlAxNXVDa3E1bE5kalZtSEVU?=
 =?utf-8?B?VGE4OXB0VUpCK3lXT0tBWTcvTVlGeUplMTRQb2FKMFBLcmZMRFEwcHNEaEll?=
 =?utf-8?B?RVNXSno5eVhOeVRuaEdWMGVBMVVZa0xocTF2dm1GVXBoNUR4Vmp0QTJTdklZ?=
 =?utf-8?B?TDV1QmRTbzVhbnovZ3ppdGp2ZjJ3UWFzYXFGYXdveGdTTXJ5MXkyZFg2VERE?=
 =?utf-8?B?ZmZwcWRtS2YrcUIveE82R1FBSWUxQ202NGVHZGFUelI2RngxaWEweDFNWVBI?=
 =?utf-8?B?QlgwS09hKzZQSFBLY2FMNmF4ZndoSDkyNWl3VGFPLzFYNUFzNnhrQWN2QWdY?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a81597-cdb6-4da0-2b22-08db525c366e
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2023 20:13:40.8934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M1p57ax+BgwbG+xEsYY4i/WbXihbLlzMHMRN1nmUSqbjKykVmOBPAZpqs1IwcBqo4DCOINpm3XOJ/fH2fyaulGTHTER5aATXAdhrTM2XnK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7112
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add handling for MTL ccs
 modifiers
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

On Thu, May 11, 2023 at 01:37:14PM +0300, Juha-Pekka Heikkila wrote:
> Add Tile4 ccs modifiers w/ auxbuffer handling
Commit message should include the workarounds implemented
Wa_14017240301. 
> 
Bspec: 49251, 49252, 49253 
with white space revisions, and commit message update:
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c       | 42 ++++++++++++++++++-
>  .../drm/i915/display/skl_universal_plane.c    | 22 +++++++++-
>  2 files changed, 61 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index c004f08fcfe1..f9420a68ed3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -157,6 +157,32 @@ struct intel_modifier_desc {
>  
>  static const struct intel_modifier_desc intel_modifiers[] = {
>  	{
> +		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
> +		.display_ver = { 14, 14 },
> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
> +
> +		.ccs.packed_aux_planes = BIT(1),
> +		.ccs.planar_aux_planes = BIT(2) | BIT(3),
> +
> +		FORMAT_OVERRIDE(gen12_ccs_formats),
> +	}, {
> +		.modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS,
> +		.display_ver = { 14, 14 },
> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
> +
> +		.ccs.packed_aux_planes = BIT(1),
> +
> +		FORMAT_OVERRIDE(gen12_ccs_formats),
> +	}, {
> +		.modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC,
> +		.display_ver = { 14, 14 },
> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC_CC,
> +
> +		.ccs.cc_planes = BIT(2),
> +		.ccs.packed_aux_planes = BIT(1),
> +
> +		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
> +	}, {
>  		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
>  		.display_ver = { 13, 13 },
>  		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
> @@ -370,6 +396,14 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
>  	if (!plane_caps_contain_all(plane_caps, md->plane_caps))
>  		return false;
>  
> +	/*
> +	 * Separate AuxCCS and Flat CCS modifiers to be run only on platforms
> +	 * where supported.
> +	 */
> +	if (intel_fb_is_ccs_modifier(md->modifier) &&
> +	   HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
please align HAS_FLAT_CCS with intel_fb_is_css_modifier 
> +		return false;
> +
>  	return true;
>  }
>  
> @@ -489,7 +523,7 @@ static bool intel_fb_is_gen12_ccs_aux_plane(const struct drm_framebuffer *fb, in
>  {
>  	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
>  
> -	return check_modifier_display_ver_range(md, 12, 13) &&
> +	return check_modifier_display_ver_range(md, 12, 14) &&
>  	       ccs_aux_plane_mask(md, fb->format) & BIT(color_plane);
>  }
>  
> @@ -605,6 +639,9 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
>  			return 128;
>  		fallthrough;
> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
> +	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> @@ -791,6 +828,9 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> +	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
>  		return 16 * 1024;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 8ea0598a5a07..f6f760e59c9e 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -789,6 +789,14 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>  			PLANE_CTL_CLEAR_COLOR_DISABLE;
>  	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
>  		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
> +		return PLANE_CTL_TILED_4 |
> +			PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
> +			PLANE_CTL_CLEAR_COLOR_DISABLE;
> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
> +		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> +	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
> +		return PLANE_CTL_TILED_4 | PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>  		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> @@ -2160,6 +2168,11 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
>  static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>  				 enum pipe pipe, enum plane_id plane_id)
>  {
> +	/* Wa_14017240301 */
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		return false;
> +
>  	/* Wa_22011186057 */
>  	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>  		return false;
> @@ -2441,12 +2454,17 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
>  	case PLANE_CTL_TILED_Y:
>  		plane_config->tiling = I915_TILING_Y;
>  		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> -			if (DISPLAY_VER(dev_priv) >= 12)
> +			if (DISPLAY_VER(dev_priv) >= 14)
> +				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS;
> +			else if (DISPLAY_VER(dev_priv) >= 12)
>  				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS;
>  			else
>  				fb->modifier = I915_FORMAT_MOD_Y_TILED_CCS;
>  		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
> -			fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
> +			if (DISPLAY_VER(dev_priv) >= 14)
> +				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS;
> +			else
> +				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
>  		else
>  			fb->modifier = I915_FORMAT_MOD_Y_TILED;
>  		break;
> -- 
> 2.25.1
> 
