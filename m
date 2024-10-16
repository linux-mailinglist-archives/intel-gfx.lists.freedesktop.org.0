Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B09F19A0E2B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 17:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54BF310E738;
	Wed, 16 Oct 2024 15:28:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BEIkYuYt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6387510E738;
 Wed, 16 Oct 2024 15:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729092483; x=1760628483;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=149IWmsic6AYTstVqyj7qSBHo6qIKGCQFFPY3L6waVM=;
 b=BEIkYuYtjr/ofhrhmkXLkyC5zuWy/MxHl+g5ppQDt3pbaN+m2Enlsqa8
 foJlFlOt3UsmiW/lqPtpbm1zPO4i04Cp5mPruNjchsdeZs/cdzl3GQmGX
 n9wi18rzx+TmNi06lEwoSYoLqKa9sf+bCNeEcZraCRqm8zwlraUqrk79F
 xKFnPZVsjWeXhR8clTTBpm1tyqjSaMitp2GJXVX2ffbyEqFhGE1oxjBiZ
 KC46na10PM6bLiQ5OZrtx+yvlVLuJSuD2d1tR5MWoUuesmElMfWkiYfJZ
 tZi/Ymlqr3fOIhhbj2pAGd72RYfsiqlB3W1rBTzGIOXLF13bTv+Djg+3H A==;
X-CSE-ConnectionGUID: EwtmBNWmQlW4OfHw2OFvZw==
X-CSE-MsgGUID: sB86kTClSr25A+F1Gbzv0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28433816"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28433816"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 08:28:03 -0700
X-CSE-ConnectionGUID: TPFqd6pdRT2xkRXVGGg9ew==
X-CSE-MsgGUID: GIzM2CgxRImsj6apSscfbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78705732"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 08:28:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 08:28:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 08:28:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 08:28:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S9LBRNGnwO4UcmZWjpdrm15Y7WENWY84ZNGDAAQ1QichxxzR5RzqQMNXAYr+l/zag93s0rxqgvm5hKynk0HS5Z2q7E87jAtCLRKgLZ8qTj/s7WSDeP9SrIZLlNX23pPXybuzRbFGqcRY0AskPutf7DD+93ETbaVwC7xNpKFxvu+pRflALTfy/+UEJzHp7VSGLgKSWkCGkKdX6jSI0EE2XCvcDhSyRd4ty6r2ewcHChqV0hDeEO4gUF8bFpazl6H9ZoIYAeg8WgFBI+bQHG3WiOMIQLiEXHJj/jzzkk/qNB89WaW8qkcsHb8rXaiLqh9ycsiPEYHCou3PpjjpR3ycMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5fWpz61jDKqhjzPSNY/ruI909Ko92P8vIgup84TU+o=;
 b=ojqMaqrjVubmamMOp82fx9463e1YOUujNbBi26ZcUVT2IHLqZ6AM+8jm58PeoTsxJxPYBd8rJ5wmo7UIxkBgE5hfLbGzoXwdPDymgqbVnPHzwjXidBDtv1mIEhepEnSR2DlqcnCTAYCDs1bCcYp0Ngj0ogtH0g9FdX8lfEOOrHF+/OygM3D9LqBVyp65yUkF9wE7S0GA5EXU7Coud8k3/lnKk7/vKDyCxVJFQZHEOuPuy9lFxqHFTH/ZWraVMl7kdry4zMACZaOxgJPMUJk5iDNNdj2RyEQEj3cyEno+lORR4KldPplwjMlrCZsu56mnmTP3v/QCHFejdgslJvgRow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Wed, 16 Oct
 2024 15:28:00 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.016; Wed, 16 Oct 2024
 15:28:00 +0000
Date: Wed, 16 Oct 2024 08:27:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Suraj Kandpal" <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 3/7] drm/i915/xe3lpd: Include hblank restriction for
 xe3lpd
Message-ID: <20241016152757.GY4891@mdroper-desk1.amr.corp.intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
 <20241015231124.23982-4-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241015231124.23982-4-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0086.namprd03.prod.outlook.com
 (2603:10b6:a03:331::31) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB8280:EE_
X-MS-Office365-Filtering-Correlation-Id: 14d72f67-22ca-4d53-ee2e-08dcedf71e28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?j16WYlEpO2KulUaiQGJTKL+ZiOhEsXH148mm75MjgSG017cOjni3rcVmXq9l?=
 =?us-ascii?Q?PrncP1PgbI+7bpNbrV571ZE+11H/RS6N4tOcV/d0aMC6OJSAj6JJOw385NUv?=
 =?us-ascii?Q?vGN8b6B3GhrENr+RUA5YHqXNJoEae7Uk4LkeTbF1EIPcgMpIJpNB7wVpKNFf?=
 =?us-ascii?Q?ZZ/+UU8QEmGZ2j9z3bMm90K6Hju7He7yptxS/u7LMLiYDMOwrhWXL0NAlFj4?=
 =?us-ascii?Q?WWcGszdf9MD9Ctki8PkwcTzGsP8tw4u4dw/9YXul0nRHwb39LGBAFqWKtd86?=
 =?us-ascii?Q?F9vl8T/oHcrlAW6GCf01717BiVl6gc2xW+umXkn1U3Uxpcb/x2LyzHdjz85c?=
 =?us-ascii?Q?qde2JVhTVSk1Li4eP3hu975Na3miSNSOygm2jcksih608pbbk+fl2H3Zy0QT?=
 =?us-ascii?Q?MYqdRJyQ3gBETAc8ziGSbCFxzaRZFtAcS6aHFiRsSAflVdwyUVruFn4CbSsL?=
 =?us-ascii?Q?oHpfMYXdsXHtQQeGBN28h3LLn/XPCGIED7d2rMyYYyX5cyOssdFowT8bsOkH?=
 =?us-ascii?Q?PmaShvEgPNHGWW4Lf9uhyD4zQDDNnAO+PLRZdwve5g9SeYDXGZrcO9WYAJ3i?=
 =?us-ascii?Q?UA2qBBkqgke3/yOKHT/bkQA7eTLqXdcQk+x3MZh5OWhfe5vbTiNcLyP3qIv5?=
 =?us-ascii?Q?TwNrYoWAh3Etofm2lTbGE8dgkyfZRGbYw8UWI4MnSTtdmdv18/YcvLNp5cQ5?=
 =?us-ascii?Q?eNGYQBJPbm/ZGauVCWTcd4BQk2JcI+qXcihxAMm9h4QTdkB7OYOy+Ter7PsV?=
 =?us-ascii?Q?8TCdCWVkzg5qLgKysYqnMqMu2o48EdAINX5l8pdH0h0tDSITqp3MpApP+jrg?=
 =?us-ascii?Q?Q+qBL2a8MVdIdUjT36o34yp9yAm6KMpOTrnL7NbxzFDH0lzAMbMue6ZfnA9s?=
 =?us-ascii?Q?dfk49o2871MvMG1Yho5xecra8TRPyiegoA6mLFnv74hdXD2S057IvOqVdPAv?=
 =?us-ascii?Q?uR8Qctq4JvB3PdQjUwxQJUlgg79M/1QIu50ybqhVJmYXu4t3fqhpnKfSZm8X?=
 =?us-ascii?Q?j4YNND1j8o+mtQRcpcCPGDHG15MJAKCLS0UPIkiu1EbYZVT+pRN6kywYhGOY?=
 =?us-ascii?Q?fCG6dRCfDT+nj2PS8mM9w+Buwvx+LSM0jKh7K/f7UNRRNSs3h+oXm4z9pWgr?=
 =?us-ascii?Q?c/x0oD23TbX/L9Q7+AdTiiaJDSii+01hHtXS71mExjLHZucT478E8+w+dEWI?=
 =?us-ascii?Q?JrTxZqVBXcDatWIPAhXgYgxqYxDF1pzSOg7FTbbHpVW/7pK+DMgArMHvmHDN?=
 =?us-ascii?Q?jzCrj+tF36w9VJGGqsHJNfRW6qYsygpvnTlfsjhb3Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MNHutf24JIcru62u4rSVHnQ75OvBZi9+t11RtWlEiF7RtrxL3QeMEicTwUg2?=
 =?us-ascii?Q?i23lv+LQ+f+iT6mB75N+Nzp9uSMg3AaDA2MTEWbYqs77IRpVXlxBlbmsXIJ0?=
 =?us-ascii?Q?ct4TeRgZl03JESJjgPda7WoskN68HapFLRJpJymVxfRYLOUj+G88dk0l5DgV?=
 =?us-ascii?Q?8r5pwh5cZ9yflF+y0ouBmnWq06jwGqtiL/vrsfqOG+uMeo02NMULtASEA9sW?=
 =?us-ascii?Q?vZ5dzRjqrTYt3Af2aYd9qaCdCSpFZE8Ahcj5xByv7pQNC2/rHtkujGVu+Slk?=
 =?us-ascii?Q?pQSHvFtyjJIAUGw/WaZHvIrz1RC9Z5bxCWX0YYqcO8DUo7CxulPcEREIR7h9?=
 =?us-ascii?Q?2P143hSU4cRT73xUGwQKa4iV0VWCf48Of0XJdqSUWtvAPbL4LSyadr8C4B16?=
 =?us-ascii?Q?1OKGtBfyNU+3ySNPxf3I5tRqw83nx27GK9VYIySEkq/ukGHYlwno64U5lI6n?=
 =?us-ascii?Q?g/Ejc89W8u7ak9sT1zKdFA/qZzdTFeJnxaC6zzP0mG2jsVMRbb2I+/u3c1f8?=
 =?us-ascii?Q?5Nu0A2rmUMpD+iuCndcioXNOLVrhkjmRrYQJqzkHpFtrLTjSWo7vi5PY1Tpo?=
 =?us-ascii?Q?Hc39l9IdUx2h7/fbKVVpVFVO3gaCO0lEDb1qngeLmFRtz3i2jZs/mQqMkpwq?=
 =?us-ascii?Q?gY7W02gGdS8IYU3g2gAa36DrbB+FRF++mCPgXV8soqvhJ4084GRmNG+/aAXU?=
 =?us-ascii?Q?hAtV6vJkOgNPGAissVteBLMhPJti2jwql3ksTgaxw627jERU/+5aeF3rKNqj?=
 =?us-ascii?Q?92TKfLA1DLqaz1FJh/PxfZanTQhL0tAQng/6Z06n5EFHNJyWQYLSnE+B9OYk?=
 =?us-ascii?Q?VsUPXmSlbChr547sPzKvlryAj4ijOoFhqtMM3Ob2fYzgWv2gN4cyRtoW+Yl5?=
 =?us-ascii?Q?tu1QihFb25YJRHWmnsxcxG6kEHc08HDqDFU4KaOzQyClPY6P/SGOAgpMIEQM?=
 =?us-ascii?Q?bDAwHGiivsyZ1YtQ5NTVKl2HauX0xx7vs2qcpL0STxF6bK1I0JmCIi3Fh3Yg?=
 =?us-ascii?Q?AOJiGDVesEPRtH6ZtKQDTuAWOtZSKMIj3I/JxJyX0A2WW50LPr6NL6mX3d29?=
 =?us-ascii?Q?l9SEi0PCYFbnhrPX8Jz4GO31sNqBoYsO7ROzv4gRHZSDRDM4C/huGCekE3s+?=
 =?us-ascii?Q?WYIVCf5AoUUCBjgrth6OkZS9eOM7WQkIze4VaxW1x8uSL7KCugI45+v+Hwju?=
 =?us-ascii?Q?GXGUeb2qrqL0f+NT10HjJd4aO7qidEIM7cLaWnTVgsW8SPlnBKmIs/1NcFpm?=
 =?us-ascii?Q?CWahUg8MT763KrxT+YsiXQRbNcDwsOcqM12BklqNUppxEh3Q6MLgXsVF4J9b?=
 =?us-ascii?Q?78YQ/md89gCUExqXN3H8uNdV45jpqV4NYPN3SRlGyUGL+ppFeD2YvSo+IK3C?=
 =?us-ascii?Q?qK1RRNiq1RTb1ccEJbZ1Q3FCFJBheKF0TQyqaXznJRAl9UbzUPFENn6gDrwG?=
 =?us-ascii?Q?N7eUhMnMQQZY0cjGVA0Qd4M8SfdT5fX9R31hpnC1bqQEqhphVAChonuMt3az?=
 =?us-ascii?Q?k1gz+SF0aYY+G5TLB3TFp9gwC+JDcSA9nxcyGOJlkdhRWq9DlSS0u2ak8NaI?=
 =?us-ascii?Q?5nddoNyraF0+hfYI1bHJ7czIHDJ4LXb041Ua2v7/MFINpQGJpunrjCjY16Jk?=
 =?us-ascii?Q?cg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14d72f67-22ca-4d53-ee2e-08dcedf71e28
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 15:27:59.9769 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LDwT8dFbJYw1PeXMK8Rc57MTyXVyrkaMjFikF1Q9PxjljMZxDkI3TgmcF4+dGHKXpyuCuVIwnxIE0H8JBeCSa4BKD3uMZWjJr0rXrh3LvwA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8280
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

On Tue, Oct 15, 2024 at 04:11:20PM -0700, Matt Atwood wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> hblank restriction now includes all of xe3.
> 
> v2: add additional definition instead of function, commit message typo
> fix and update.
> v3: restore lost conditional from v2.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++++
>  drivers/gpu/drm/i915/i915_reg.h           | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..a99b41f258e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -51,6 +51,10 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  			intel_de_rmw(display,
>  				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
>  				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +		else if (DISPLAY_VER(display) >=30)

We might want to take this opportunity to update the if/else ladder with
standard "newest platform first" rather than continuing to stack these
things in the wrong order.  Also, you're missing a space after the
comparison here.

But more fundamentally I still think there needs to be more
justification in the commit message for this.  Right now we're editing a
function that's labelled "/* WA: 16022217614 */" which implies we
shouldn't be doing real work here on platforms that the workaround
doesn't apply to (as is the case for Xe3).  So we probably need to move
that comment down to the specific conditions for the older platforms
that are impacted (and maybe re-write it in standard Wa_16022217614
notation to make it more greppable), and also add a bspec reference to
the commit message that reviewers can check to confirm that we really
should be disabling rekeying on platforms not impacted by the
workaround.

> +			intel_de_rmw(display,
> +				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> +				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d30459f8d1cb..fc30e0056b07 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3833,6 +3833,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
>  #define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
> +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)

This line isn't sorted properly.


Matt

>  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
