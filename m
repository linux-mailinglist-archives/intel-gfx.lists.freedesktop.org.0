Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE8E9AD354
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 19:52:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91DA110E84C;
	Wed, 23 Oct 2024 17:52:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EdFg5X/+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB6110E380;
 Wed, 23 Oct 2024 17:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729705929; x=1761241929;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tdIasfXDTg28h5lNRYaAMZotDmd/n4tKS1/h8H9Avww=;
 b=EdFg5X/+8WpVTxhyqGvgNo4GRD58VO4vp2emLdERd8mpvZRFsYJdl8Ei
 Y25NH6dfmdXQ27jrMcKJR3WY4cNVS8y/l+W+areNycUscxcS6/tf2v8j/
 whJvCq82Iwi7/LA11NhXu9HBG62PNfyjp+NluwcVpdDJoXB8EL0zzpsoe
 TYUTnPlvTsS2tHTZhAASgY+wSaC+J6fdir4MlXoA/bUO19pyHuIRFO+QZ
 7xx4t1y1XWkG8navg05Pva3X3kAyVbp2GgL3Km7Ppa92TlBDois8O1Q5r
 XXu3BXlfDUeMOMdJoKDqNBPQPOY0GAg5aonD6cSBIO9rgXcU1NQR6e8ws g==;
X-CSE-ConnectionGUID: G9Oep4UzTkqetxZhT+2prg==
X-CSE-MsgGUID: IbzP6THbR6qO0LUjxuANVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="39892348"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="39892348"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 10:52:09 -0700
X-CSE-ConnectionGUID: CChsCC20ShqfBO3IJHHfDw==
X-CSE-MsgGUID: 5MHqWmhBSoSgWfeGWmdKfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80629804"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 10:52:09 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 10:52:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 10:52:08 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 10:52:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W3FFtn2+IJwHRAW8BEXcUaWIsEJre5SMDOylOCKgltprO78gDQcFPAQiXIL9Wadk0lPHQAJw5Ce7RP/fNy+xCLmQbgnBweEHDCZjXiURtOP2pWz58QV+RDcx71ijXIjpu0yCrdbnnZYSil/yBLe+PBXvWc51SD9AxB6/e1Up4UvNgt64flUo5QV/cmOu/SYHEGQElDtzNxduoR9V2NqRq9jOxeNNpC3Ev87Z0uQiFKVAb0Z6RW4ixF3/YSqYKp2DPk8MVIp43nTyWJ8cmZ78yI2da78YFvj5OJxN5lixaDY18xqAhVWf+6Cim9BNnQxJTp/BYKZgBEWWygQj/4prWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IsmhTlQgBDeKf6vYjXJRT1234P8zEmm/73yEHKVjdpQ=;
 b=AV9Fpnmn+9U/ls330wUKWdfLaQFP9MvpTm/qb8njTjefiH6CRkEN3Bj0+IKvj58VSgajh5VaG+MO4P3VDevSqgbBytniQHeBaRJI5Tc1TskgR4Wj+n5Ge6krPVa/BQ8kbMS985Wc68FBleLxHK69oVymrrfowus51qLTChy+6SWJClOkrz7tKBnWoJxDd4DqgyXMi6ORXLZL7bory468EOql8Gmp+jlgRwgPhI56d15g0E43PoP3M3RwjJBTj9qqG7dcRrtbgGwp56d+jRoLqvct9lfCNctiQIObVXhf2ZZc9ekvF1BjGYru8SXRV/QD3Q+dxwII61+/GpVI1QD7Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB7386.namprd11.prod.outlook.com (2603:10b6:208:422::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Wed, 23 Oct
 2024 17:52:05 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 17:52:05 +0000
Date: Wed, 23 Oct 2024 10:52:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Suraj Kandpal" <suraj.kandpal@intel.com>
Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Message-ID: <20241023175201.GO4891@mdroper-desk1.amr.corp.intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
 <20241018200311.67324-4-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241018200311.67324-4-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR05CA0206.namprd05.prod.outlook.com
 (2603:10b6:a03:330::31) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB7386:EE_
X-MS-Office365-Filtering-Correlation-Id: dcf1d823-2221-46b1-daf0-08dcf38b67d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?E48iAR567vZCymP6xAAg7KcadE4FVXV7eIssM4ccHVzzKjQDvV1kI6uEoBEd?=
 =?us-ascii?Q?Gux8rQq3779xMMH8vFxHpMd4MwNQqLOX1SeOCNh28b9LsxaSKmnrEDclj2DI?=
 =?us-ascii?Q?ORnPZX0aJGqGuEjk6OYMDlf2pKLV/mR4D9CO46kt4ruKEg6jvxSUCaK736Sq?=
 =?us-ascii?Q?1Dx1zbU3p53NjXcD3IscTFWvaYtWsa7AsrIqOMpt55H7jxcRXMeslI1WTYnH?=
 =?us-ascii?Q?RKRmA1nLVAiSAz9TikpevpRMWBOdeqlRxBSf2+iEkq9OWTif1ZpE7V3B9YZz?=
 =?us-ascii?Q?djKNyIpjxTaDb/iLk4HXb4nRqmQM/0eRfNVDb1obyDZHqo7leU6yKUoMGOxc?=
 =?us-ascii?Q?znMC9Ox+IFX6yeidp+DfpmrFu/MY9LQmorYi0Ug9NFNmJe9cXAmeB+5u4ufj?=
 =?us-ascii?Q?c7RFGVJqb5KOvSMH4NlHDCx+48CoI3WInCb3KYdhm71bkcC6iuZF3re8OOov?=
 =?us-ascii?Q?Fy9uS6p7mR8Xjpc3nxEknHT+FL2w6pigV7Wf8F+Ruzq+SwQLakjo/JwzY8j1?=
 =?us-ascii?Q?crw2q7R8CpBp8JZE+MnhebWY1Cag+fwQxyOlIl+9beokQR25ZxBGq/NByzB7?=
 =?us-ascii?Q?9jrYDo1pJ9bTN9+E4c7pSImGkUzrg122IlEWWb/ddKdTPbs69XZEycCyHBht?=
 =?us-ascii?Q?qnQJhY0xvFVT/3bNYmJyh4FTgeKXPBJv05F4MOPIeNYTYkuMgmb+dJmGzGR1?=
 =?us-ascii?Q?8r1De8IlXtTkAXsq0/2S0/Lcnyo/tVjUo7ykLYaQGWtVV/dMbu5WyfqsNQ7s?=
 =?us-ascii?Q?jvSAfLZ7XjTtI2bVSJEe09D2J9C745wepoe/+wnj+YwQ/yJmNWhVLOmMF9fB?=
 =?us-ascii?Q?3vnAwDZxQietPvlMFJ9v/HrdtH2z+gI7xldhitPncGKvJ41KuROQ2mhlZzRt?=
 =?us-ascii?Q?r6mMBE20nJEJx5WEVgy2rPYZ8Z6BM4nQ5WCbjAJCZNT7fpwu7867pNZbWUCT?=
 =?us-ascii?Q?nmQk8x2oBSH+075GnLPmssg0EZdncHjFJSzLvMaf2uy7a9Q+MBopZllXQ2NQ?=
 =?us-ascii?Q?ZH0goYeSnQG/Xjq6XmBeSBn8x7b07eNGejOU+vNStxX+4Aiz3y7HvL/eEPHq?=
 =?us-ascii?Q?GI2iKquKW5LLcWYQOpxDRa5OUKErEqZDqHpJjlsdhe4Da/LEQY8SBE8Uk0Xq?=
 =?us-ascii?Q?Z0r9HXb9bOPswHZpb8fYFW7j6khTWRFSDADLl4qa34gubQveAmWp/dXyO/GV?=
 =?us-ascii?Q?gOijrq5sXYSlpQwetJNrI03QrMDzdfmOjplLEuoT2qgqgt3e+RctSHod4Tz4?=
 =?us-ascii?Q?x5nALNngqZvonTEKcNq8fEWgMzoC8hyQ3/eh1SBFhuyNTYbBssEMbjZt5N61?=
 =?us-ascii?Q?gFA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rFKR4Qo1mfUM8ty0MrwzsGd/qGEgBGyc4iWke/eo4uaDjv0CgKI02xepeabF?=
 =?us-ascii?Q?8+MyNGU03jggGCP7+Ak+iGtTC1wBRIDypdphDGwu+CagiqHosRKieDD7xS3Z?=
 =?us-ascii?Q?xwj/Gw+loBuaXS0Pd3rNapQrW3de2fFf4lprsK1jQzTWnAuVhOUu0jNcjvSo?=
 =?us-ascii?Q?ogIAA9tSQknu5DNVytkpb4cdbJqUT31QjR6ywJ1F5wG/jERND2RTSgJ0Cji8?=
 =?us-ascii?Q?ixUYTO9Zo9MlED36+aFfCN9cTUPbE8uGWUy9lUO24oBA38a8oI4kddU9UTxP?=
 =?us-ascii?Q?E0qy9/8JxpB6leNK8pwxqkdwGnZzBSTvWdKi0vmMsMXq3RUIT79EHUivzhKX?=
 =?us-ascii?Q?inIvgPobhLkNzPHT4InUJsRH9B4infTs1G6qgsC7MzsEelLznzUuh4IQjGQK?=
 =?us-ascii?Q?bMJgQuvnFsG09YWyBv21lEJD76LZe88jarR8U0l6HoplC+uwo0vq8h8cXUpS?=
 =?us-ascii?Q?KyqgT92HKxMKzFRZ/X0Qntjv5D7nPKXaCvwNA0uNUu18fLfC2z42LHEWHaJv?=
 =?us-ascii?Q?pXHWMFRtncdOD6bBYltXTbO4ELVLqTtI4xG7yMntc8JE7OnAf8TpmSiD/caw?=
 =?us-ascii?Q?+DCCt93U4BnVY87MQ3zy+9hPOxzrPL53+kruF+/JVgNnrFJCY7BmSUl1maIl?=
 =?us-ascii?Q?dumn8vywMH944vJZkAdXxDhhNdkEVN3UNXd9JlMhenQnuNQ/Yn36FpkRseUw?=
 =?us-ascii?Q?LcoAGOnl5wQHRq2ksgpF+8reEoJH0yF+G8Z4mrQgbE8Hi/b3i57fv5nY6j+R?=
 =?us-ascii?Q?4tZwYtHeQIw3DwY+QF3WR/LQEtf294oBFDRd3rDSwH8dGT+8qBCLeuKIUeRN?=
 =?us-ascii?Q?X/OfIj4ImZIkwZRX546ySt19khiJz/BEqxr1JuxExgTWXUBxhI1Q+WiTWeGW?=
 =?us-ascii?Q?L59gL4MmLhsI1/qZN/C4U3PJ+XGRWSVIWD69kvoZPw2pTR2iN2GY7eH4Dx+A?=
 =?us-ascii?Q?J2N14XccjYuFb19+nyuqrNqpJfH0tC68YLVoSTEmUKwZFlPWwc9iDemrzLZK?=
 =?us-ascii?Q?USM0VDn1Og+fqGZauiScLcYmqjmc+MMSSWcpnXnN764j/BI1Y2v9HhLn2kiE?=
 =?us-ascii?Q?JIiD9xUaM4uGl8rRuRC1tiCIccmKPGxRZ2EngH0h8n4bKOk4/hf7SPWJKTFF?=
 =?us-ascii?Q?5f4KZvEH9Kg2z4Fp4t2mSfYzM79yMwkIHw3YUbn4XhRAn23dSZMpiHYDofMF?=
 =?us-ascii?Q?9iM8yHpzo5sI7h0Cw5ZYXQbCFI/qydMVL5wPs7qkATKbGcL/yQiDL+DdLQd9?=
 =?us-ascii?Q?g7IftYydS6YIJrOcU+At4+Mb+rbqduSpLtFl8WoYEpS/uK1tkyoesDmoLxVl?=
 =?us-ascii?Q?xLTo1eEp4l1hnlzQB6oTSLYWtdfEGoarDGZHt27xfnY2IvgiYUm1kMbTEsIu?=
 =?us-ascii?Q?sv72oC7BxMFUdiE9q03kJYOQxjgcymJ01sUTXwLooGl4AfLk8uJpHO673q5L?=
 =?us-ascii?Q?WbVvnkzC7febOHPGB+m7sUQTCNavId2JdL0JiUdkJm5LVpSS9CB0THNN+vlc?=
 =?us-ascii?Q?jAtwNTPh0vDFc2seIAx1RQYTe3oGyU9F0ZV1KDmmCtXaVv3ayFgnnThnuHDZ?=
 =?us-ascii?Q?XOn7n/v0gTmvoJIofyGFqyCfPIhRkS0kRPS6QIm0HDS2Ad4ZHXebdCT3fVZl?=
 =?us-ascii?Q?KA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcf1d823-2221-46b1-daf0-08dcf38b67d4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 17:52:04.9992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E7O2iCUalyckVhBuk2bhXAwP6h8UXGbikbYz/RRB/uT7W5FMKf5cRDDJqX8sDj6bxs1Qb0RcKAXwSMwGOORXfXEOOHBOZVtaQ1FKXoZjuf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7386
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

On Fri, Oct 18, 2024 at 01:03:07PM -0700, Matt Atwood wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> We need to disable HDCP Line Rekeying for Xe3 when we are using an HDMI
> encoder.

This is still missing the "why" for this change.  Is there a bspec
reference that gives the details?  From the description of the bit
itself, it sounds like the setting here (for both Xe3 and earlier Xe2)
should be based on the HDCP version rather than the platform/stepping.

As mentioned previously, this entire function is labeled as "/* WA:
16022217614 */"  If we're now using this function for something other
than that specific workaround, then we need to fix/move that comment.


Matt

> 
> v2: add additional definition instead of function, commit message typo
> fix and update.
> v3: restore lost conditional from v2.
> v4: subject line and subject message updated, fix the if ladder order,
> fix the bit definition order.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++++---
>  drivers/gpu/drm/i915/i915_reg.h           |  1 +
>  2 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..70dfc9d4d6ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -43,14 +43,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  		return;
>  
>  	if (DISPLAY_VER(display) >= 14) {
> -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> -			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> -				     0, HDCP_LINE_REKEY_DISABLE);
> +		if (DISPLAY_VER(display) >= 30)
> +			intel_de_rmw(display,
> +				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> +				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
>  			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
>  			intel_de_rmw(display,
>  				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
>  				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> +				     0, HDCP_LINE_REKEY_DISABLE);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 89e4381f8baa..8d758947f301 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3817,6 +3817,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_PVSYNC		(1 << 17)
>  #define  TRANS_DDI_PHSYNC		(1 << 16)
>  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
>  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
