Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D577040FF
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 00:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB38710E00F;
	Mon, 15 May 2023 22:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED6E10E00F
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 22:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684190030; x=1715726030;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pWa7b2UQP+tSQu2ICmTKLlykPHNXv0ckZ7CS/caSjic=;
 b=e/AQbeE64n1le330USXwAj8RNR7IlV55aZJTwASDWN0Hhtsy6hFDzyty
 k3aYeizW1O/Av4Q0N+1E6+v8+8f9u/tG9iSk+PB6jx9kKPrgU4VLWcVJV
 Ui/hDNCXoNxEOPZrm8Em9/ynDywE8rA9CnjfbBBAPMsNjsWMxbJQwsViM
 4+6rjQClapfikbfSpE2QPn7ngU89capAWbTt5NLZ3NwWPTk4fqJMMCakL
 FPonQvuMBbS14PfGTwVV0CZ86Rx8J/m3NiTK/p960KFEnfoySyxgFDjBZ
 z3JWfIW8DwpaYNgBUQyPsLTxj4uESVPtcJHIz1Q/NXaGKFQga6M4fODEA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="350163242"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="350163242"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 15:33:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="704149166"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="704149166"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 15 May 2023 15:33:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 15:33:49 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 15:33:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 15:33:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 15:33:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z0dLSYracEy6SUm7/GeFGoLTMhe+uCfCXWktZV+fUOVC7s8H8CWU7snu9Pni9BVD1aEx8LdOi7M7Lqt6yaCnRT+cYTp1b7CC1OdgjIBhiod2VUkYZsB6Ptpj+AxHFfYfNyPgcNNOcgtk2vn98eSyTB9+/zgF/VOopqCTk28Tn0SdTtFnFxw+g7i7Bwm/dWMnV/QG/J6GZvaQN/xnCSt+TFKyxwtVpfbG7/dEE6/U8FnDOuQAgB6sALNmFP4mOoidV8OStnGQ4zSc+a5zmgZiGGsBYS5RFy0BDgrLouzlzHFzNFeH18xOFqqptIesKqEc33iKSUrOlvn9K+nplW42sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fLHavoCoXvc1t7mnThgFWD1CLUFyxduUDSToOyC/CZM=;
 b=julU8fcnCPtMyevSLTcK+hBBWcUWuXFkDkT3MZ4Bsx/cpE7mz2ZPsCO2sQ69kcUkfQc3C88jk9ttKU9tJLccNcrkrsIQkzmOrZxckww1R4F+IzJfcAsz9Zd6N3KIB5Uq2dElhHL7soc6u/sU4h672xq1ge0GvORGGil6VsOh4++QbGYPYrMXj3Mp6hayCNlTFPbGnY1JKJ6fXiEo4M0u8XzcyuqA8KfxLbQt1NfqRNdYkiA8W1hjK0TaniMwvBrolCzpfJObpa1hQVvte240GtIG5RHdVB7IXFD0BUnUDxGzTAUhw3FYW5lXy1Zl4rQ4TMoVimtq43lFAGXN3Boz/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ1PR11MB6299.namprd11.prod.outlook.com (2603:10b6:a03:456::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 22:33:47 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%6]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 22:33:46 +0000
Date: Mon, 15 May 2023 15:33:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20230515223343.GL10045@mdroper-desk1.amr.corp.intel.com>
References: <20230515222423.224407-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230515222423.224407-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR05CA0084.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::25) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ1PR11MB6299:EE_
X-MS-Office365-Filtering-Correlation-Id: 215902a2-6f6d-4947-2de3-08db55947211
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CiSHuDthQQxVM9a3FFKFN4vjQZx8LfYG7pXPXbEaV8wyWSRALKxgOxJSXfi+h9cOhyBACyZdUJ04Y7p9atePAQBdaJwhPqkMYum7dUa43D4bkGEBZNp5SVEUMIzUfjkXmSCsUa55kpOp5XkR9ylUXQAfwtEZhT3SZYpwkmGBPiuDS5YqaV3qn/XsgRuun2nOXiHjPISn0cXgDOkyb9ir5GslF44tPziBNg4Ob9O6tv2wxpnLasQ5u0DjGd1l8zPDnoAOaq9QYAyYfhkyeGNK9BN9dcgtGx9lnhJNifLLFYeOnRxQcvQvyWk1WvnU3PyBiSgAfIk381Os+DsSXmpxj1SpB/tGnIcEZd1XSQXQSKvazrHNdnMthWkTku97MNnWjazjrvrDDccnzR1UdmOytBjetKJ7UnhqlclNoxkMNIq7lAzDdc9p4fRf9nePu3aQDeSXBdz++uBH6/tIa5hccfpjlULHKIKsOk8FXn//ZhagXIoSvj13BIP08SbWb8yaI7xvz8Gahyk62svWaDGbeiRKicB7sLI8CNhbckypSodajD+/VyboXEBKrqYdUAXe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(366004)(396003)(39860400002)(451199021)(478600001)(1076003)(186003)(107886003)(6512007)(26005)(6506007)(86362001)(6666004)(4326008)(6636002)(82960400001)(83380400001)(6486002)(54906003)(66476007)(66556008)(66946007)(41300700001)(5660300002)(316002)(8676002)(8936002)(6862004)(38100700002)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PlUxAZ3V58SioK8EfBZmFLck/vFDjukfdRbjn13TMoR9tMWS1wv5MeQcK5Gp?=
 =?us-ascii?Q?beDfshWr6cQRp0BkMjWEBHafpn5/7+1IYFSVy3WoBJLbJboXGvBgovXTxPkW?=
 =?us-ascii?Q?C0LuQj55y3AsXI72VIXLsTCvIteH/ZAhqAfjReYcxZ9iWYK61P8Bj9u1oqJr?=
 =?us-ascii?Q?ExraoPOUu/yve0Wo7WmtOApY+tpJy7IW4XJdkxRepz0xbKk9Y0CJ37f2F3Sa?=
 =?us-ascii?Q?+yWPq7aqv1hms03Vz+Z7aKL7dwYcx9SIwAzJc4FdpTPJRJfTx8BAReZx118e?=
 =?us-ascii?Q?rxoQr6nkKigzf2gg8XGbglbtxwakufzoMCNhdMzh7Arh9CFHLNvHYF/aO7bA?=
 =?us-ascii?Q?d96IW6+IpBBaf4l8IqU8FgydYvS7YOHaVoKmQG7FszEFa16OGq2mTKGyf6Ja?=
 =?us-ascii?Q?jrD5017gKgYP0/SOc5X/jA1ob0AmtK0zs9p6V6fmIN2MwEBVWGOJe+i2poiD?=
 =?us-ascii?Q?m18P0nyRr+d6nZXofEk+GtvXoo6SVMwk6/zyShnZqBoTa14XT35DKQt+B6SE?=
 =?us-ascii?Q?9jRutU7FPy/W2J1Y270KZWfDYr5d8le4S0VyvooIWF4peZ6Hd6M3Oqql+fAS?=
 =?us-ascii?Q?5a1M3WesEoaj60XpUhv3epdR+O9h48Oi1oK8bVyY7Mii9VFTLrlVbI08iUK/?=
 =?us-ascii?Q?l7cTLE5UsS31rjr0LPhUg/M8AIhz0edtAUC14VAnfmVvKD/tWshFFCwDweh1?=
 =?us-ascii?Q?WUrk1EZ/J1yIH0m8LF9dAWE8UIGE4eDx4LvF///7h7UxAKqNvPK6j9h9KB/w?=
 =?us-ascii?Q?Iia9+gpxEmzZkMY6tl5k/bmNZIO3nbZZkDhAvv5t9H2DG+Of5+DKhgmx5CEB?=
 =?us-ascii?Q?/rNwJoNjgmUVnEtdn+4wT8bYIF3OFXaE2Knl4sXpOhNxizfMZ8fqkEm67MLX?=
 =?us-ascii?Q?UkcAA2UOhzo2guvHTXL9K2dHDaZOiSnjxg/4VDQhoxDmEJ3m/6ytPh82ELa6?=
 =?us-ascii?Q?8e3q8lLUfYqL3rCBI0oTlwhS9FC06KnoUCzNTVAbV73PONISQNTtE3SdY/8z?=
 =?us-ascii?Q?IbL9xWSzJC3pQ37wpxRi67TO8V5Oye7kcEGU/mYOtr7kcJJwgggYqPezh6o8?=
 =?us-ascii?Q?xKArUaStvHE/bR0KqM6v+6VSiZiL+/59dVIOoIbHwGNOIBVtnfk+JMGDp69W?=
 =?us-ascii?Q?HvZoeUMFj5+S2HR2eGiTcDT9FqYrroRzwtcdEBnnMnHZcMN3lnSH0j7xMCRS?=
 =?us-ascii?Q?M/p4Rcrohs7puyhrBaZv1u+iIAWUoR/aBPt6DNeBG1hFilNWE31I9VvH6224?=
 =?us-ascii?Q?V8XLk71lguvaoDF0wCKPxNdjhBW+bstWb75O42NJaaRhnEzRJisyIDFZZgYy?=
 =?us-ascii?Q?zo7Ma9N4K9H6QgrWF2qss7qY0CnnQ+5lf9PSun3LNxO7dW7hHQhPebx2oZzc?=
 =?us-ascii?Q?xjS6kGtL2D1BlE5nMABYGmQx5bjsmUGEMQdhU1/neyIDP+Qdn4N3x6Suwi20?=
 =?us-ascii?Q?zt9PmLdPjmpcIMnq2CC85J4oTpeNJJMUMB+mbB3d98lYVf8lb4STvB3Z64rS?=
 =?us-ascii?Q?H2y8q+Gz6vMXCrLM0Q6yKFvUfbz4v8q7A77449x5LRWC8KuGYA3onOUUgH0y?=
 =?us-ascii?Q?20IBUlmg7R9B9oITgLylaEQkQ7sqb8Z+1m1kmAP4GkAPs3B5tOTJvbYa7HD3?=
 =?us-ascii?Q?AA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 215902a2-6f6d-4947-2de3-08db55947211
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 22:33:46.5283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 24TYIxOlAn/jON/Ak+W+i132YGN0hHHjdCb/z/IAA6+FFF/lPmbFguXb5DF4JWujL3+z2O3sia7w39thwgGexUPGhtO78OsWRnOZCIbFe/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/mtl: Add MTL performance
 tuning changes
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

On Mon, May 15, 2023 at 03:24:22PM -0700, Radhakrishna Sripada wrote:
> MTL reuses the tuning parameters for DG2. Extend the dg2
> performance tuning parameters to MTL.
> 
> v2: Add DRAW_WATERMARK tuning parameter.
> v3: Limit DRAW_WATERMARK tuning to non A0 step.
> 
> Bspec: 68331
> Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 786349e95487..2172f8d85421 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -817,6 +817,12 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  {
>  	struct drm_i915_private *i915 = engine->i915;
>  
> +	dg2_ctx_gt_tuning_init(engine, wal);
> +
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> +		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
> +
>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>  	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>  		/* Wa_14014947963 */
> @@ -1754,7 +1760,7 @@ static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
>  		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCACHEEN);
>  	}
>  
> -	if (IS_DG2(gt->i915)) {
> +	if (IS_DG2(gt->i915) || IS_METEORLAKE(gt->i915)) {

Nitpick:  The general convention is to have newer platforms first inside
'if' conditions.  Aside from that (both here and on the one below),

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
>  		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
>  	}
> @@ -2944,7 +2950,7 @@ static void
>  add_render_compute_tuning_settings(struct drm_i915_private *i915,
>  				   struct i915_wa_list *wal)
>  {
> -	if (IS_DG2(i915))
> +	if (IS_DG2(i915) || IS_METEORLAKE(i915))
>  		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
>  
>  	/*
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
