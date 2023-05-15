Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C59D0704118
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 00:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEC110E0B1;
	Mon, 15 May 2023 22:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A35E810E083
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 22:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684190856; x=1715726856;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=myHv2d/YbI8QHSbYuK8JxgVPI4NnqiG9gX3sFqqIcKM=;
 b=LyJIUv/IalT9HiT11IogvN9bJcWkR4qL7vrr+NLoCNEwC9pIi0vFJq9r
 PACXt9BKp7VOLKMUWu4yrvFWK1yHEEDTRhIiaZaDHZz8O+XJaYaBK/fP2
 pISAcYq8qvdfQr9IV33ThCCX8L5ysV1IcIhe3mwC6zWZrqKJVTpg8FHR8
 5YTkepM6jC0VxLG7y/vQerStudg657hAA6JxI5o2gSu/Sn/nwIC2Olumo
 WpHMoWNv5gbDW75R5q5CsBPgIjLfAuZMkC503mDUWP1UO1uBThRLyDKZ2
 CTjizyDx/1crKtTAJRPywU0+Mxl4EbPEMudkjz1YHyNZL4M7VVp06HvPJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="437667971"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="437667971"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 15:47:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="731781336"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="731781336"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 15 May 2023 15:47:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 15:47:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 15:47:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 15:47:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EuT0LFPWz7TkV/M9kMv4dd3l3LIg26pmy5M76R1pH2iNBJ/KkW0QQ831DnG7bzAVp1w4vn0DnanMQrC/J2NtR+p16rozfl6sa7z46/BIk13eHR8uKotMeboVmeK/CNldvxV2kJKEdnkje4b9kqI19sKReVj8cK2N88+aGgSC80gHiAyaCU9aV4EmYE0D37KMftIHXdkC4iJvhjKHmLP5sHC4rQEaL3pKtMv7RxUyaCqGXg2+qZ/FF9fDwEYERC9jGAfRtmNADTDMeb0rrpuzl+uh7NrcPZd6WevGaviwXNlUJg27JpKwMccZQXeuJNb1P2caclUBlXeC4D3en+icow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wrq9+uTrt+o0IhoOLGe3Ofhk74vrG6lDWwfVX4b75hM=;
 b=dE13SGqnto84nW/GYU+02zVw8cIASlvA+9a8E6MpTOPJwMilLNZ3X7lwk19jqydefS+5ujgkc1pnb+ZyEcu4svMrSxzgtn7ubCSXs/isckv3ob5chuVFpqAMnM4n48KjBv2FTQ2SRK8ZInGws6LE+tjnxVnUUZzwgsSvazusMVJBy7I3d328shSvlPei2bTeD+r6Xwz+MPgZSORIAATGYYeRdupbAeSd95T/lJVIrG1TJKFkFyvnPJ2iE27ZPtesDLnQt54kEs6GQLma14Q9ec993JiWQ3/rzdo75SXnZ353reBeZkVVwFszojuS+wBuX9oOQ4EIWLxhl5zu5sBLiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH3PR11MB8343.namprd11.prod.outlook.com (2603:10b6:610:180::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 22:47:33 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%6]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 22:47:33 +0000
Date: Mon, 15 May 2023 15:47:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20230515224730.GM10045@mdroper-desk1.amr.corp.intel.com>
References: <20230515222423.224407-1-radhakrishna.sripada@intel.com>
 <20230515222423.224407-2-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230515222423.224407-2-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::43) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH3PR11MB8343:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a84cea9-832c-4e03-ac7c-08db55965ebc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /64fpzUhCV0sxbqWgSPe94Q+KN95aMried30wK3cmAtcDz+s+SxDG6Z+/YJ6NuW0xPgu9wgpM+/TOUsslP7zHu7xaPKU3y0RxB+Xs2C7chNpVZ9yvd+6r0xmTB8j56PUodktenEzhAYCFQIu5oiL16uSBPzlh4cACxnsEbaGPJiu6pFxp8iab/8rz0PXh1Qe4maZcvAfPBEdRUHJyXSQjYt/Z7KBnP2jjlKtgJrKTi0pqt7DfK6xH161BpeXMTtfMSuSloz5O+w46AorfTORwawH/oAB5vflqTFnKUVnZ5QD1ip6XsbKKsGMef6S9ysEOTSgkZBUuAx7EEPuYeRBl88hR0wSBfFRXM24ou6lxsOkd1MEtoveoi52BxB/E5kuBCJJs9JY40QXIN3zb5nuG9yrenSAluMCd5vM9phoTqEz4DklOT05+3wmU92ZJV6YMhKl+rzFhi07wLtYknYEYTY0y0gHvPlIgEN5EhbKPjy4K6hr2P5WTtU/Y2o0V8RgmbgfQLoUCRPwI5HiwZx8SMeZ7fz486VA5QrXrJId3ZxoGodAHpo1MFbKjfaQEqW2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199021)(83380400001)(6636002)(4326008)(41300700001)(316002)(2906002)(82960400001)(38100700002)(6506007)(6486002)(478600001)(107886003)(66946007)(66476007)(66556008)(6862004)(86362001)(5660300002)(6512007)(8936002)(26005)(33656002)(8676002)(1076003)(54906003)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W6OdoCydwGdnG0Hh8jcb+VW1LCoQRSUz6ptDMyNNUilZ8IW2SOYi2M6DL5Gy?=
 =?us-ascii?Q?UJ2WnQPAarQ8ed5s33U7SrBfo+DsTZP3EQfldt6RcyR+QvSaYJawg3z2nZmK?=
 =?us-ascii?Q?PdTVdUNwGTcuyXqCdngaAFS0nTV/MhnSPIvT6fs2k5ygA714t0tBQn2T2hBO?=
 =?us-ascii?Q?WKI6Ui2EbtLl/9LPYFRoqV1A4dGQ83Q3IMijAZQjGd0g2yGiJYmDOMNufKvy?=
 =?us-ascii?Q?tavdwQ6ulFTVCPpAV4AObrQ9wy6ltZgwg6xRKw7JkR5YSmi0mf+7vkZazqjg?=
 =?us-ascii?Q?P5EMTNoUyKk4FYqhVaXLvN5SIi4QyTfgB+nA99R/OrhjqCB038Y2JAjZG4Au?=
 =?us-ascii?Q?+oZKH6WbLsJ8pF4gknczqjPqzdDbtpnR+5T2gbxk1h3AsA/TiOjXlTiLMmjx?=
 =?us-ascii?Q?uXekcC192pr+FvHg8jkuHUOFr/LwP0IkGCWpO86iMpcET70xe625uYQ7wPjW?=
 =?us-ascii?Q?iAfu4FWJQ0ijE/vUPnVkDs7bKc1ebtjGV315KuUaPdfsoCjtttwjCkNHX/63?=
 =?us-ascii?Q?SZKUxyJNxjlC1UpPFiDT65Cu7uRVlyTVfedv1W+nK0XTOcZ+UWzcCVJbzWPl?=
 =?us-ascii?Q?JiPAjImClDvvVGmbON2Lpos7ri3WLlSkXNMBLGBo3pDvf+LYX6eMdzuDBScP?=
 =?us-ascii?Q?5FUY8ck7zuXn7WuhxyO59C7SD4VDQBK97m8ZqQKrKKMTeeMLbuxosQox+Jsw?=
 =?us-ascii?Q?cebRrHdEH6aEvQjuKTDFVACmY+k4wkJM7x3MyzhQ5hK4uj04pComod0ZvRm7?=
 =?us-ascii?Q?Od+bfbOlIeiVIZAxrY65EljFQlCLaoKUos28Y2GmHYbe+65gdK3VBSGfTKp2?=
 =?us-ascii?Q?YiSgxtsAEqpzGv3dfDDsIW8l3eKs1wnmshI+L589CWVRwcIvtP621gxEhlvt?=
 =?us-ascii?Q?TyRkEhezY6cxRVFHLnHxbcJs15EzXTldACtuufjoGRDgo7LS5dJPjr3cUXJQ?=
 =?us-ascii?Q?YlYOch/9M4OwPBzxAPH2hugGGnRYE1VavwOqmUpE0Jiy48gISnDef4aP1y0R?=
 =?us-ascii?Q?qaUrspWXq7m2R7a0S73ebskC6KUutB8ITwqZRJA8ITpthMuE6qHM7HJb0VSe?=
 =?us-ascii?Q?9jdVDN/wfHwqHbvp9+bzsjPia0uysGVuStnn07Ec+i1WR7pVwiujqj5/sYqF?=
 =?us-ascii?Q?RbPXLU095ei+2C8Icv5R6X/7kcdGRQSImqolHFA8rwgZal7PO0NmZMepPwM5?=
 =?us-ascii?Q?e1Mhok22LgOHsruebQPnruEz9tqusgEcjQpQU8Hp54gfpT2iajaPvtPiTIRL?=
 =?us-ascii?Q?Ooc+Q3Xg1Yq6CGIYsnT9j6qv4edhxBSmxs72m8ZtWqib1u8d+7lCCJPSpxb7?=
 =?us-ascii?Q?h2kKPpplqRUU31d+pmR1jTV6Kae+4q+wVAoSEuP0ASQMZbA4nK0+M5cyMZrb?=
 =?us-ascii?Q?5Qlw1J8V6uf7C4bJkHASemjUYRJmW9gwXkUP0n13lqhhUqMjgO6MqbDC9X9h?=
 =?us-ascii?Q?fsuSHpC1XJvySrQsTzeZLxHEoSGMG/htuBE99wh7PnFRXqT+9gT8T7S2+DMX?=
 =?us-ascii?Q?gGdYywOqiewumER/OMnBhJ0UzRJsBnDYWY/fZ5UngHwgOWDkYrPwP+j8NtSZ?=
 =?us-ascii?Q?PpIQXQHr9/C0oN2nHFgkSLf5XeShdfdKQEfKCGAbqgscf2hafVyRpH72az9W?=
 =?us-ascii?Q?Ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a84cea9-832c-4e03-ac7c-08db55965ebc
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 22:47:32.8693 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DasUj3ypC1GC4FcElO8KwocUOFMFD1exQznWb20Mbug3+SD0MhAb1XndGDCFhhtWPD2lQoUeforv6tKoumEgKaHb1U6yWaeBqffKS/6p17g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8343
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/mtl: Extend Wa_16014892111
 to MTL A-step
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

On Mon, May 15, 2023 at 03:24:23PM -0700, Radhakrishna Sripada wrote:
> The dg2 workaround which requires the register for
> DRAW_WATERMARK to be saved/restored during context reset/switch
> is required on MTL-A step as well.

Maybe it would be more clear if this was written as

        Like DG2, MTL a-step hardware is subject to Wa_16014892111 which
        requires that the any changes made to the DRAW_WATERMARK
        register be done via an INDIRECT_CTX batch buffer rather than
        through a regular context workaround.

        The bspec gives the same non-default recommended tuning value
        for DRAW_WATERMARK as DG2, so we can re-use the the INDIRECT_CTX
        code to apply that tuning setting on A-step hardware.

        Application of the tuning setting on B-step and later does not
        need INDIRECT_CTX handling and is already done in
        mtl_ctx_workarounds_init() as usual.

> 
> v2: Limit the WA for A-step
> v3: Update the commit message.
> 
> Bspec: 68331
> Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 81a96c52a92b..9c1007c44298 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1370,7 +1370,9 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>  					      cs, GEN12_GFX_CCS_AUX_NV);
>  
>  	/* Wa_16014892111 */
> -	if (IS_DG2(ce->engine->i915))
> +	if (IS_DG2(ce->engine->i915) ||
> +	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0))

As with the previous patch, it would be best to put the newest platform
first in the 'if' statement.  Aside from that (and the commit message
clarification above),

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

>  		cs = dg2_emit_draw_watermark_setting(cs);
>  
>  	return cs;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
