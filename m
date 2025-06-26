Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5769AEA66F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 21:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B87B10E8EC;
	Thu, 26 Jun 2025 19:28:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="El7MdAq4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C82B10E8EC;
 Thu, 26 Jun 2025 19:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750966130; x=1782502130;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=ur3CuSR63I02aApwNoCfD++ZTXdYktbvHScVNKmrw1c=;
 b=El7MdAq4KFJ3cE4AXBh+iaIlqgwUnPFCUII9o5BuFoY/+3ycbtXVYfi6
 Ll7iBcOB7G/Opy397mo5pEcg14lKfWMXmA4uw7il1XVuB002obb8WPb9h
 mkVjvxGAQxTYxyhT8bxQosVDQUe+dO8H+JXGW81JW2WfkvikeRU+PpHrH
 r3NxDyOGA5GVv8d/L8X3+5b4QpumiIJmhiLQtJVNNhkeXoqMSGVTqs16c
 XXQJoHKKru67G+fZRqimPNz1x13IQnd4Z37ZBJpoX6rHw41IGVKHNqLtn
 sYXmqdEJd4HfLBHkl6uJmkTp+4pWdit66mxso682j7K7+I13G/0uF15fw A==;
X-CSE-ConnectionGUID: it4SSXKWSb+CU/9JIVZluw==
X-CSE-MsgGUID: xtcMxJG1TuiCqHTualEWCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="64711221"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="64711221"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:28:50 -0700
X-CSE-ConnectionGUID: KW4JowgVTuqRkSzo+PEhjQ==
X-CSE-MsgGUID: lF4TQNLMQTGQDUE2E59Naw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="189793611"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:28:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 12:28:49 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 12:28:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 12:28:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B4eRKDNXkMH8iQugjTSNyZ0CM4GOxJvfADibvN3N2fYXjEW7xDJEtdts/XlJQ6/uz1Bmq/oQMHFFjNiTJeYOni8GJds3pGerEw/R5siOhe5K5t+3EKXZQYDKr7pfyJqE9aApuqwYoW9acsr2mTHVpn7zOxoq1BfSdmFFiZtUwyzzKirGLaS6BMlXhRVKqie1CeTYv25JG898O9XEwbsPYKrNjeArYE01tbiJe4qaOpDkJ3eCY6PWOK2VLgUoK4Tt1mCjhISSE5sJaEr1bF0GisFpldXdEO6yQ6khsv7GxCNJ1We5nHyoA9XuStZT7e4WCFM2U0VIshBuDps3mgajEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+H2GzHD1YwlcmVKQ+HdBTuNtgOrDB83QAsYXw/1ikbw=;
 b=U6k7psmH1OY5Ei8Ob4Y4HvulMj5HT/sJiEDSP1eRiLSravTJKjnLEy720t7WOdHw3wHgMqWcNYkr6ZP3IRkvaIgl6d77ybQj06Ma45xmgFtMLZIbxwBYSMt1QShrDLDYAtjNHCIAusSDP4s4V15Q8xqz3dopErt2PsviG8luNam3v+DTL6RznmSAxhR9Ne0wAUomyEYAuf4lGBSB0Pp3afpyv1h8HSoNPeMIiR+lpngCOoX4vgRr8PxtaxbZ+Uj+LBh+S/mahvx39HbhZzAib+V0qMIr7zV0dQrCtEnKKWf14ABDb/amdFZfDKj0ccVKmy3mubCgGgb9NW0M3rf7hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.21; Thu, 26 Jun
 2025 19:28:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 19:28:41 +0000
Date: Thu, 26 Jun 2025 22:28:37 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/power: use intel_de_wait_for_clear() instead
 of wait_for()
Message-ID: <aF2fZZul25AuXO94@ideak-desk>
References: <20250626182918.2185836-1-jani.nikula@intel.com>
 <20250626192632.2330349-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250626192632.2330349-1-jani.nikula@intel.com>
X-ClientProxiedBy: DB3PR06CA0012.eurprd06.prod.outlook.com (2603:10a6:8:1::25)
 To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4835:EE_
X-MS-Office365-Filtering-Correlation-Id: 234a1dbd-bb8e-4706-633e-08ddb4e7a89e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?H8z1pO60XywWlaHWXLdqmVkDmIMKeIXLrvOvIpY3iTXx7sptEW3vSGOhkG5Q?=
 =?us-ascii?Q?1TmS3EkC5X/L15Vq7NuYJE0EfRDDdC3mEQM7rJu+mCbIgiTIN8Faon4fnN32?=
 =?us-ascii?Q?r9a0srhYiuWkjYZvA7vwXP5438hvsTOUtLmNIU/hUqAnvv+9Hgq4NsGRozKw?=
 =?us-ascii?Q?0TKyjq6CAzcgHEhBmnxHK+yE1+mpwVef4AHM14KAdJQQEQNAPL3txapi/p49?=
 =?us-ascii?Q?GWx8t+lkP6BMhH0PHxHQTzSfwIHVMBWTEJArdq4qz2ViGK28IxtXW8NYtR6e?=
 =?us-ascii?Q?gOBba3BXQPD4hv6nGRSSWsvPKPmilCrZ6uglJ7mjpNsfaLRbIkDvbZN3t5KA?=
 =?us-ascii?Q?1DjD1Cb7x4Q/ErscmnVx1ojogB/lx6RcEIHNQ431e2CYOr2chnzxr+VMaRpJ?=
 =?us-ascii?Q?bRNr2zvpW0qAhoLL5HhS0neAskgqdV66M5DPHTF3WrT7UjI246iDlB8mh3y+?=
 =?us-ascii?Q?Qnqv0PNnb0vJRVbJegyB9KFfQk9Yi/NetzSlLgOlUKQiES9gZ8Ak+BEeMO0A?=
 =?us-ascii?Q?nsWGJBIQiu3WeppLl+R+iBy53hn2bjiwf8tJcZrcpft3lPoilmEiFxZ4rx3C?=
 =?us-ascii?Q?zAFU0c9UWMq8nFRCj9vwTexyLqXF8h/TwA4xgxZnNTBu04y01ZLVDfDxGSwg?=
 =?us-ascii?Q?3pmSlp29Qz/T/spoSkUXgOi8EqpMqA/uuBDOiSJd34o3BFDJpxoe8QkeN+VQ?=
 =?us-ascii?Q?ocywFdvbPjm+qmzKlgVSgh2c851jXS3YR+xYtJDlz1HVGsCLPvxuTOQsE7aC?=
 =?us-ascii?Q?QZXa4i9o38YPxL7qerLXCGrXd+G2u3oiq/wUtcUJd1s/ioaUgQ672LLswcQu?=
 =?us-ascii?Q?Q2/GKjkTQYl+96S1lVtTtUlhCME5/5L6a2eZ3IU2UmcSmyK0CLyBfyN3sUGE?=
 =?us-ascii?Q?yHZ+fhPCkxZMa7iWKm+ufWqF3nUzCu8q26vB+xBnSTbE/wgkeShaQedfgLK7?=
 =?us-ascii?Q?ImDCtOg6yqOc+kYzU2zy3514ESIXNwfzumHwJaDZtuaGB6L1mMcvFSSN2XsF?=
 =?us-ascii?Q?fPFFn06Nr6yJbluKRXGvZCLxipuVZyeXuSVpXvWMKo183GQzdMzlBBFqCxW4?=
 =?us-ascii?Q?4y5i+/WuP4P3YTYUEvMiCAqfaFr9gIpNx+qxJFgB4Ql9qf0a1/0QLgWREZKi?=
 =?us-ascii?Q?QXnhTvzQ6T7gVBSSmRtut2neauLdg3n8l630gdzJXOtbB9K+SQIg8C6Z0Suh?=
 =?us-ascii?Q?4vlEy21C5V+1obHFysS34OsHj4ZgM/6HBV3Ox8qoEt3Yi09jzVVtdaHK9rE8?=
 =?us-ascii?Q?05edM5F9nY6DrvxwssCDFQ8CWlt0BEGRFeCqR/BacZcjJZTazCIB5gyxQHxY?=
 =?us-ascii?Q?HuhLgru6WuNGJocCTN1UrckEebE1ofPYo6iXLtK+s9Lqz0NaRv07W5qpjdyY?=
 =?us-ascii?Q?Ks5tnk3m1iLhzUl6kzNOLUOLhGPllfgPySJRQX1gWmBNSdi4Tg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KPJgTkmGAh294wR2zvyTC37nwJ/jgRzl6B9JbkDM1NiK4S1OtN3vtDaJPULR?=
 =?us-ascii?Q?Gl9LCeDCRnbhT4DuiYUEoiTXPbSjArWWcEc6hh4llEvXD31GPJL6nbWRL96h?=
 =?us-ascii?Q?LSrXmW15Bm/LHOuATVicePYlEJiizAXTZa7SUW3xjTFgdK9VIKX5XjFF6B4I?=
 =?us-ascii?Q?OUp/3XwvApLiIaDCikE8v/ARksxJk61vFxm2d6NXKqNhm0PqAuQsy77AUlUp?=
 =?us-ascii?Q?DsuT9ezV8u/wRQJzZb7+PLbFU35K38oExSTO03JfpyUbZAYkwiCHwiz60xJy?=
 =?us-ascii?Q?REC8s04OP3xm8emzpIEPM8AiROBhLFi/uagWteFytwP940Z2NyZQ6rsSTyxT?=
 =?us-ascii?Q?YSs/yEMIp0ik0L7XzYObFh8EuatO9m4Cqz1XerrUJgNjKQIyj0cl+spJFDWq?=
 =?us-ascii?Q?Na82l7QyTU1KDu6VbY2lda18txCc5iO031OkV/wXG6G812OXmW1mosU9yf83?=
 =?us-ascii?Q?tRLYV28WbldDT2TpVURgj2guZYUrMm2xwv7Xjh3+qxfWCifUGeMXp0EtsrOE?=
 =?us-ascii?Q?l4pBYw91fE/6J1fi+1DtQryWTRE8EiRXGtFAXpX/7kaPifTmHGfVfkvASjO7?=
 =?us-ascii?Q?HKed37EqWw7CfLdqAl5nIIDtCMG5WY5jhynuIlVzXt9VYy3vv6CFOszk2+QX?=
 =?us-ascii?Q?Bp6aAGb4bi0dlbK+JSPY81Enmt3QGHJFTZlhQ4R3qD8Av71fSQ9qN2QYhwHX?=
 =?us-ascii?Q?cBNES0XigP3kQIP0lBR0e/DNlaG1WYX7enJbGSFYReLmeyzu6J9HBVj3A11a?=
 =?us-ascii?Q?d0A1KJ9jrTMEg6zzkZqXLit4aiZHr3kKlrDSJs5FyQdwfYWo5FzSheUoAg6d?=
 =?us-ascii?Q?Wr3t/dvx+4fnZAiSblPr9piIsxl/EmyVyn3Ml8yv8TdoXTE1/R0lssEpJlVr?=
 =?us-ascii?Q?kXC+o7zBIrBIkARsj7P6qkHd+g0JxR1Q/elZ2FSsWj06JnZpHneMdZ0ukKGJ?=
 =?us-ascii?Q?dYn+oDbpG96RKyWOkWZEZ2PULMSNUDwAyEGiMNmoZtDHU/SUkF+IsAa7gIfe?=
 =?us-ascii?Q?jdPSXBvoWT7Psy5z3NwLdvI1pUlW1d90G/loAheP+dbVBruXw1igRZrms5oe?=
 =?us-ascii?Q?S10agxTLBHhjlayDI7mLB1/SDcp7tG6qz/V0NQAwxoxf+PDfoyum9nwfD0nj?=
 =?us-ascii?Q?u/4Rs3DP1Q+LJoeexJOf97eJAdHhcaJESXkLIlUoKrHM3Lo+sutxe/Tlz41G?=
 =?us-ascii?Q?fIIdbdFYpCOkE/xAVrOYiBnwdKvHA9HvOHbnl2psOlWCJaqPbei8YnQVdjUR?=
 =?us-ascii?Q?nEFqArTZ/IQk5fsT4ZFfvuE85a+A9qLNepOlTMmz0jKj7UVCxvTu+o/F26Yj?=
 =?us-ascii?Q?Wka67XMX6dhfJHkVfZ+40a+lWvMHW0qEFAMlvAG9muolrO4YU8SBSRgCILDi?=
 =?us-ascii?Q?V1QRBigZm6ogxbiMvUFl0ODMK5iE/79MQgy82UcTU7HQmMK+VhAMdgO66L7s?=
 =?us-ascii?Q?jq2uDpg96AxpZ/ZfatSZaMYJMu6aibIGYrdYTTX3nO1IHMFxKJjkzYlokSQM?=
 =?us-ascii?Q?VTsdV0mjWZY+18kQXifAESWwJJTSdeD37s0WiYznWUW/NAFrXniSyA4bW8uN?=
 =?us-ascii?Q?MJa1ntleT8NUWJPR0C93Atz9CGdlTMc/WrH+uda7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 234a1dbd-bb8e-4706-633e-08ddb4e7a89e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 19:28:41.8576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3i8HX77MgLb2sc+8Oe5ujSF0UPi3koSLwv2ZufTCPPh8XsHSyeHIzwwcFJZqrdUwo4Q9hKFkQRy2K1NwIWSuwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4835
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 26, 2025 at 10:26:32PM +0300, Jani Nikula wrote:
> Prefer the register read specific wait function over i915 wait_for_us().
> 
> The existing condition is quite complicated. Simplify by checking for
> requesters first, and determine timeout based on that. Refresh
> requesters in case of timeouts, should one have popped up during the
> wait. The downside is that this does not cut the wait short if
> requesters show up *during* the wait, but we're talking about 1 ms so
> shouldn't be an issue.
> 
> v2: Refresh requesters only if there were none before (Imre)
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../drm/i915/display/intel_display_power_well.c  | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 4a876fa815bd..48cac225a809 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -320,8 +320,8 @@ static void hsw_wait_for_power_well_disable(struct intel_display *display,
>  {
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> -	bool disabled;
>  	u32 reqs;
> +	int ret;
>  
>  	/*
>  	 * Bspec doesn't require waiting for PWs to get disabled, but still do
> @@ -332,12 +332,18 @@ static void hsw_wait_for_power_well_disable(struct intel_display *display,
>  	 * Skip the wait in case any of the request bits are set and print a
>  	 * diagnostic message.
>  	 */
> -	wait_for((disabled = !(intel_de_read(display, regs->driver) &
> -			       HSW_PWR_WELL_CTL_STATE(pw_idx))) ||
> -		 (reqs = hsw_power_well_requesters(display, regs, pw_idx)), 1);
> -	if (disabled)
> +	reqs = hsw_power_well_requesters(display, regs, pw_idx);
> +
> +	ret = intel_de_wait_for_clear(display, regs->driver,
> +				      HSW_PWR_WELL_CTL_STATE(pw_idx),
> +				      reqs ? 0 : 1);
> +	if (!ret)
>  		return;
>  
> +	/* Refresh requesters in case they popped up during the wait. */
> +	if (!reqs)
> +		reqs = hsw_power_well_requesters(display, regs, pw_idx);
> +
>  	drm_dbg_kms(display->drm,
>  		    "%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\n",
>  		    intel_power_well_name(power_well),
> -- 
> 2.39.5
> 
