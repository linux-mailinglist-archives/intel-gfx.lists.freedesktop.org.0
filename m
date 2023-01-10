Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CB5663688
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 02:08:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99E3310E044;
	Tue, 10 Jan 2023 01:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7D310E044
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 01:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673312917; x=1704848917;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WaomiFDF1Ie4A+c+PCqJ9Wz2B2Ix9arUIvS39YKcsb8=;
 b=VOo+M3zGMSmyFl5NykBywk8Jk/vTpOdZpcxyOh5lzuipvlYDoq3khPyI
 kVangKxiQWpCzjEtKuBfgNKoJ8eW73/A6HJQcF1ZTZElK97kdX1WKzods
 y9xTG1p0PN++12DoY+CAC4ZMRbhZ++4WUDLzSWZEJmyWskEIwSXFNI1Zc
 G35zoKtcpI+/9TL/dckbGc83TUSnruKRbR0h9HAEgxn2ITgHvEXrrA3rs
 Gaa4x5PL5OGV23fidE3s1GWrdXODypgeyBGFy/cGaLO5zqasHxTn2u3oy
 5jNuVPcuQhxfrtAcxjzhGXbNM38MHWG2TyXOy6ZxwbK5ZhGoNjgY8x3QJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="302724973"
X-IronPort-AV: E=Sophos;i="5.96,313,1665471600"; d="scan'208";a="302724973"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 17:08:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="656860299"
X-IronPort-AV: E=Sophos;i="5.96,313,1665471600"; d="scan'208";a="656860299"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 09 Jan 2023 17:08:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 9 Jan 2023 17:08:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 9 Jan 2023 17:08:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 9 Jan 2023 17:08:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGP3VL68gdkQlSMsgaLaVJtIR3QJgBV+tgv6H71FR7LVSp9ZKRjkLdFnQD08f66AQIlhqn8Ud1LzOtvsnyMpRUndS6Mr9Qw3geJatwEjBvlEAPzhBIXZA+esiOpU+rYVeigaUuZirErkPrR3rp3Pxvfv/B/jYMu9GXju+qS5RB7blSWFwPEcn/+SMOAED20KM2wTB67736dMp2KGdywXsoy2Usi+c0truvhHQTkYzDjunkvqSv9GT/1Sg7hIV215RR4VolJZ3cMDnac++PBiQF9SU8qZRl+VP7HILs+Wlyg9cqtG+26HgNjygTcALlziVODJ3ymV7AIbaifl7OODEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5XPIBnFEHauVU3sRggtEoS2hTjuw1R2S5qCw/1wczM=;
 b=NgmLnwRNvZrjaJ5QLHgytwUvveiGfrF8tbOOlzNj+Ri322u8W61ay2MxBDhRsY2c+Cwpae++PatXA4+pIojPJcqBhf3RXFi3ipWmfgXfnEf0PyXItwJs6ZeCx7hsC/H+3VKH4jmtfhvdRw5+ssO9lvCJwocmdkHHKEzNp5S1AmJn0IvVJJhsXbvdQ9nuMdh9u5hmTHMtSvxtOpnBDoqt1Lbz+5go6pW8xH2eaNdA1JzMFiWQB7xl/4MRh+JahUNTV5Ya6tPrgxslCTazmL5/8Y/gEV9wNTt7WBi0mTi0dxrmz7ITNhbWMusHvvcZEztldaXNs9AHM/wrLC3qGQ1ong==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB5342.namprd11.prod.outlook.com (2603:10b6:5:391::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Tue, 10 Jan 2023 01:08:33 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.5986.018; Tue, 10 Jan 2023
 01:08:32 +0000
Date: Mon, 9 Jan 2023 17:08:28 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Message-ID: <Y7y6jDk3RUiW2Ayf@mdroper-desk1.amr.corp.intel.com>
References: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
 <20230107053643.1984045-3-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230107053643.1984045-3-chaitanya.kumar.borah@intel.com>
X-ClientProxiedBy: SJ0PR05CA0169.namprd05.prod.outlook.com
 (2603:10b6:a03:339::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB5342:EE_
X-MS-Office365-Filtering-Correlation-Id: 4658c12d-5705-4aeb-976b-08daf2a730f0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V7FUaFpHO3zP6J6c+yZf44mDtFXk1RLXHLV6G3WFy7XnkmyiBk/k73gPLm2E6X7yGEIzEnI0fXNF+qKZlv0rg251ziCJBjx0bScZHwJ8+e0O2cpFNKl66TOvJkKeuaw78p71CnO+Sy/3LqnI9tpuKF1mCYTC9PfJCmym+KI2AKJeLnVBzYwxOclY8TUgO7MMM9LPmgyNmWMQfpP3nThDXTeWRuwjFpAZZHEevIiayF9IGYQ/tYI7/CP2Rro1CawfYffUVPO1IizVyNL7tc6lVz6A8oydxtq3EP/3bzuxU/vk2uah99wVMBwOOJ+p5z7PdKKGFuVfpAv41kLHz1BtSZ5dK6NS0AYPDt2UN1xe8vH+ZybO7h0WKLaQFw1vFc92Ji9PTMNwtuTg16/HvfHa8dThYTH8i6FQ5YOUFXmg1Cu7WE+PeZ2oerDjelqifjfRAWW7rsTAPzpeHIrpq1IJtHdlx+Mb0CJrph8OP5p87jw7EU0oDIGtPLfc4hvDgH5U7BOlgnDBPStuawZu8NRrU9MDQ5JNQz21KmWli2Be50+R3U4ohBy+XveCecaujzdeBoMFNrPEln+p9a2jKEF16Wn3doJU8rFkB8+8CFlutmdQrBqWkMNJ+gfVcCkB/aQ8abvnG4XDHEGABjNXnMENRQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(346002)(136003)(366004)(451199015)(2906002)(66476007)(66556008)(5660300002)(66946007)(6666004)(6862004)(26005)(6636002)(186003)(8936002)(6506007)(6512007)(478600001)(82960400001)(38100700002)(8676002)(41300700001)(6486002)(86362001)(4326008)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EHiDxoyOS2QJElReQM/CYwpgzAl1A0RnRVREfZuFcn5r6m13jL2zp339sc3J?=
 =?us-ascii?Q?NJkKRc7cDTt3jSVeGyM82vqVQfYOtXEbPk6VTk4Ocfh7DoRsUAHxGwK3RZV5?=
 =?us-ascii?Q?iPx7OnqC+jUZOCM4ocGZfdqozFIWEqevgrc/FXf9+6NgL1+7EMM5+abKJwry?=
 =?us-ascii?Q?AfjEK/A4t63T72X6CL8OdAWb5I6Jpg+DzQiGFDtcPsDWCEGgued4DeLZt1fX?=
 =?us-ascii?Q?FxF0Er7qSzU7HB0INiyKOAP4hgIUzuldqexFI9/K+eTagmK5X2sygUPxq0Xw?=
 =?us-ascii?Q?WyLmgWES87YGX3gQCtEQbaoKtemJ+WgSQKOo9t6Ks3kCfDsGwZSAfd06vCtE?=
 =?us-ascii?Q?yQdINqrlfero7gi/sVu8YDcEavGPqXRCj43JGQL68uEiwYN0vijgTfMBWQIg?=
 =?us-ascii?Q?ac+0V9Pg8CQXnpwUTllltgKQOV9ZrrhET0WXlaGCt7FJOGSGBf/Pqw3c/ajH?=
 =?us-ascii?Q?rUNEdSElDA9nICV9EuzCfLJCQhscqxHzQsQkexPK9EGaq3WuUXaf6q0QnxA3?=
 =?us-ascii?Q?Qircnz72wccWrgg9XqgfRxyc2Wn5OrnqHn+nQuMyboaRscY1rr3N0veyCEbJ?=
 =?us-ascii?Q?Tjrfar2frWg5x430Yo7RMsO8pveKeQhd80U+EZMpPhStkYT2A8xGk2HYMogg?=
 =?us-ascii?Q?ULhxACzCh75zYGNzLnFjNPTlU3KsIRl5+Hi10kTag7YrR+eRBfpHz2Hclwbz?=
 =?us-ascii?Q?pQXq8f+8rLH0pCGFlj9ntBAq8uQ2nkrNsIzcBaOj2OkiBEq8DPWA2hMBCli8?=
 =?us-ascii?Q?KuE/PDLHdovXYVXAs53IvnkFay1cOoJ8EMtY2nlEJOQmgxadiVF3LRtMPUiJ?=
 =?us-ascii?Q?WetIMUaeGEYg3fhdTaCMQU6bi6rMbfOCKCCdQyfu3jnvzBy8uQv6gTQOb4z3?=
 =?us-ascii?Q?usQf2xJfRIt8mkFkFYGHgRVaADaOIewCkreme8MKv7WNVIfsEtROihz6smJd?=
 =?us-ascii?Q?wKJMiP6Fv+wFmtcZ7AKG4VPw4JOGoPf4cVSBejPjpymMTwZ2ZD8zCnCD9VIu?=
 =?us-ascii?Q?BljZeZo56Dg1CidbIuyVihvZR9S5hGgDk9o5il+TZ3ttw0jMyltbl7M7hFqF?=
 =?us-ascii?Q?EGdcwA3UdDDiJYAeaupw0qut4stcyCWLPMKHfMxf2GbV8Rmohj9HRBd0iuoN?=
 =?us-ascii?Q?GZdmY817TaQpCl59rrJWxajH8AdRawFY+VJVbcYRsx4MX54EAG/D1L/TpPRA?=
 =?us-ascii?Q?LG1HPr6UvfeoeJYqcgY4vyIWYH4h2zW9JD7+SNETzbh65NfKZxy2Ai2W+5BI?=
 =?us-ascii?Q?m2kL+W9aH5InEuf2ZhWYiKNyWwHA1saKpLIzhieBh/2F23aGfyW1AKAkBH++?=
 =?us-ascii?Q?xe6cMS1I8jF67eblKGxt3b5lLdpBIe8CJzKFVLDjVOwxvRnxmyBzObmw02KC?=
 =?us-ascii?Q?GDINHGVN64FaZxMTpn23NbB+elOrA8/QjdGel3hOgacYvI8xeEh6SG/r7F0F?=
 =?us-ascii?Q?Kh+FKkY2DoQNIE00s4QyeLsZl9TLbDzQBWGanXkZS0ac+Mw0m0LtKYT0/6o4?=
 =?us-ascii?Q?cFQS0dAUGXAar2WPw7UuaRtWne03E5Yw43TXDFtd9jCarXUE6puMB3XlkR3c?=
 =?us-ascii?Q?NMPTGfZ07KpExJ39XsLKEaL7RAu5oh+4pb+pNZC9NV6xZybeX8/dpbm3D77P?=
 =?us-ascii?Q?HA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4658c12d-5705-4aeb-976b-08daf2a730f0
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 01:08:32.2454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pYlYvchjJFTApWxy6vLhmJOie65R43OTIdbZJiClrKEclPQl6zlYPwi1EjqT05H9xzWA9YSDSdzAyYOkSm0dlPRV3P5LhETSZnw+3yKhSrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5342
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/display: Add 480 MHz CDCLK steps
 for RPL-U
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
Cc: ville.syrjala@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jan 07, 2023 at 11:06:43AM +0530, Chaitanya Kumar Borah wrote:
> A new step of 480MHz has been added on SKUs that have a RPL-U
> device id to support 120Hz displays more efficiently. Use a
> new quirk to identify the machine for which this change needs
> to be applied.
> 
> BSpec: 55409
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0c107a38f9d0..a437ac446871 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1329,6 +1329,27 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> +	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> +	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },

Are we missing an entry for 307.2 MHz here?

> +	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> +	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> +	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> +
> +	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> +	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },

And 312 MHz here?

> +	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> +	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> +	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },

Typo in refclk here?  Actually, it looks like we may have the same typo
in the ADL-P table as well.


> +
> +	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> +	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },

And missing 307.2 MHz again?


Matt

> +	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> +	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> +	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> +	{}
> +};
> +
>  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
>  	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
>  	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> @@ -3353,6 +3374,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  		/* Wa_22011320316:adl-p[a0] */
>  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
> +		else if (IS_ADLP_RPLU(dev_priv))
> +			dev_priv->display.cdclk.table = rplu_cdclk_table;
>  		else
>  			dev_priv->display.cdclk.table = adlp_cdclk_table;
>  	} else if (IS_ROCKETLAKE(dev_priv)) {
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
