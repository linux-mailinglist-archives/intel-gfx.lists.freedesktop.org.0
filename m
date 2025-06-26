Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE057AEA61B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 21:08:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2656B10E8F0;
	Thu, 26 Jun 2025 19:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MEnyfQ3P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F75310E8EC;
 Thu, 26 Jun 2025 19:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750964915; x=1782500915;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=qvvfIU3oijONsqRBuU463Tm4SHKtAwiGAWUeDrCGNOk=;
 b=MEnyfQ3P+MklS+o7E7Fu5fhb7kn8JAB7RIzyyr9P4SRs2jeqNGbcYFAA
 jp7YrStvo8Vo/uHawCCwGaPg/Utg3htf4U+6tdBq7JgO4arYnYL5NyJ5R
 MckICJ4xVJb7J3yw8MJ0/vO2axjHD7CSw65wRRxXG1N+UFNYGZ4TE+QeD
 gbyzBCDFfLkNlhbs5TfteQ5pu+gCupLXju+uMZQZZJBaWHYmONJcYesnK
 vf2qRHSzDp2qJ56AQnrDoFd+kLUSIkSGQnTDPoqBLWiVXredx2Ri2YSoW
 tPR7Lc7SGoljXXpQOUVD2lU/s+SIS+1arkVOnaMN2vqLj2HBAQsxyU58K Q==;
X-CSE-ConnectionGUID: JIMlaopqTtiswfn+DRl2Fw==
X-CSE-MsgGUID: xicmFAxnSHyE2OSU4NjDlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="52504293"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="52504293"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:08:35 -0700
X-CSE-ConnectionGUID: g54/XuquSeavvgiTCGXIzw==
X-CSE-MsgGUID: jfE4RMB/QeK+Engrh8A6qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="152356551"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:08:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 12:08:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 12:08:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.81)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 12:08:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HY1R/f918jHSWNvuRjdAM4cz5b3QHaMghPc+Ebb6KI62j2UJ1L4TnIOu6NOQaeWQgeNGvrAOBhzBA265j3NbuO1tjnHy6CRWdhaelWH+M48WW+citl1WUkRlNpzXZmrfJ9CApST1Rugsvupn/dzpOZpKR8Zsq8SAP4muFtg5SvFh9br7YRgWJA1QhPoX9tmgvBJu6S9XWEljtF9acC97ER+dQttrMBxkWGX+/C84ugkrs4piYK+qyvC8+Y83PgyP+aIsFpAXs9DHd52MqZgJpphx9t1xzgv2OqjOUCTvNXBEEtvZN7ikEGy5YWONdjzB3OX+13kYhalRpygnU1aQXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/SSDdjxshNiUjM+kw2VWwrGA0KN8kFMreqiuVOVmxu4=;
 b=bpeTWIA7ONDxXOs2GRHvPmNBY7b2FkKABnkCfLyflsoeb/ulrU6e25RTniSuVVD6UqHwljAgk4XhfOK+OC3W35KR7nJ03W2kiQBb8A88r80tBk4vOzfGYMGEhsNrK3wfQ2ACZvi1h8l7DaZCMIQ5VQJ/SEadLdBfZxog4lj/XuxAtA6O8LpcvaJxDrEAhAHzfiR6lnWHVz/LmpUNCGkRuRlBAOeGLOOQ1ZQ4k/Lxo1vuEVFkiaeZmiEHIzR8G9gAWnjYAjvgM09G1cZvMlJ7vKNRcqZT1c/L2/vVfS4DhZXEmrgSzFYj74b/QCnA5IfTtlf3WPG2/XKNzD19WedLOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4913.namprd11.prod.outlook.com (2603:10b6:303:9f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.16; Thu, 26 Jun
 2025 19:08:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 19:08:03 +0000
Date: Thu, 26 Jun 2025 22:07:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/power: use intel_de_wait_for_clear() instead of
 wait_for()
Message-ID: <aF2ajZVMKiLTkuT9@ideak-desk>
References: <20250626182918.2185836-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250626182918.2185836-1-jani.nikula@intel.com>
X-ClientProxiedBy: DB9PR06CA0017.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4913:EE_
X-MS-Office365-Filtering-Correlation-Id: 96558ad3-9593-468a-bd27-08ddb4e4c69e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gIfpCf3net3K9/Gfrnd6EuIkgsBero8dPZW1HRqd58Kgj/C0vRCvHsiPhJnN?=
 =?us-ascii?Q?dHh2w0IwlmewYataNP6sRPiDZvinycn8tDuYORQSKsoP9xM32yL7Aca5tAtg?=
 =?us-ascii?Q?xYif7u5VFIRzzjZQoM/1qiBqM3lLD0ldsH56tLO9byR9pyj455n+lTuVIGVM?=
 =?us-ascii?Q?USyGPkzMVJOj7beKtXKItM3vmwIluZp0uKvUEqZkiegW0t0duHjP9zRXV9uK?=
 =?us-ascii?Q?GOQzpauaECvp0TenUDeDGyrIGOUXTkwjKKrEKlwpTP7fic9m5DYj3qDpYLxT?=
 =?us-ascii?Q?++6o/sMvAN5UTrWqnnRQYk0sh7ICv3ntW4EVwVJ+TW/QrPOL1QhDCjKz9B2d?=
 =?us-ascii?Q?iZEWJmFWDAAva/aJCPtt5J/ZyR9jhKK5L+K//5ih/lzAw5nDIlDd3Wc9VlXM?=
 =?us-ascii?Q?APPlEC8TRu4JAWX4U05JB0j29RLXcOEuvKp5u18armm+OaH0gvqDSmtLcbnY?=
 =?us-ascii?Q?j3sbZOiwUu1QvFAOO3xA66B/D3XAQiz/cnkBWa0J3WGJa980pRPcy/SCBnRs?=
 =?us-ascii?Q?V3UilPqI5ONMIMx7tpunbCoeAL6Ko2w23lata5lYSvqTS7XPmQ8BU4XBIhmA?=
 =?us-ascii?Q?OdZQm2k1TCricK7SoeEbKJ8SJXmQfRR0EZjtgxUPfUpBh9QnpLMNn1fnPyaX?=
 =?us-ascii?Q?AnZxnPTfP6AMNmchWZriSObydZv36B/nFj/dnhHWC/jsddHnZj7Aga9JCNnC?=
 =?us-ascii?Q?tbDkWOVxzdbvBpajhno9eZxCJEg4JXcBGYlto2lzEnx+ZcFS0dgRG0q0PoBd?=
 =?us-ascii?Q?vEYqSY3TxGYcE3q05sd6GPXv5osuNETmCVsDwxiqnIiBaYPJwxUgT10V3xpa?=
 =?us-ascii?Q?cTPnsZSv5BeJcGqMb/K7CtsaoY6HWlf6zTreR2iP7hBFKxqAORlTv0ZFbiX4?=
 =?us-ascii?Q?rBDPqCLd0UOIyubQzDohYtVJNMT+vFqSeJPmQ/9Gqjbo71PZmgcKv3GwxC8O?=
 =?us-ascii?Q?qyiR+fDDjekKLjF9dMuDBpwP/IvUzQ3Hz8pxTpzOcq917SOmJLu3yBFBohIo?=
 =?us-ascii?Q?2aS+IdJG3Qn6mxFUioe0CnjLWASu87lGntEVDITQTaepm7xkq+n16atfQTJs?=
 =?us-ascii?Q?Mm8SQUGFi8xFHqMtdarSf+VDSWOIHTgQI506/9+JXHNHM5DkabdthTxtY3Hr?=
 =?us-ascii?Q?sxbRv9n1jolop385yA7/GQqnAl5wugbPgi66a52M48nAp+Vwf95HpYs//hnP?=
 =?us-ascii?Q?A8GfNW/nWDOi1vnh6s6cm5nMmX0EP3XvXZf4VhABrnM4PlQlATn1JWzvXU8t?=
 =?us-ascii?Q?OkNQdARGAIC8zYzbbZBIBEj35YK+xNMSIwAuGiqfWBcmgCHe2gQLS7R0hdWx?=
 =?us-ascii?Q?N3Dcni4zw8lSWDQug3ecTHRJ4DIYpYFNaptTrglONCmKb8Ty+mBKrChbQJ8I?=
 =?us-ascii?Q?lMh9Uew9xy9FFoauLRPqbSAdwGu/mJJYcRDXOO/k2EL2ZE7PwQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cNcJbXGCIXy1Tff/z8NEner7unGbtTZSnWBEkbfMY2nCbS3zehciJpS+jE4F?=
 =?us-ascii?Q?J4reVR2KfMvPIoETJfat1maXg2OaII18CWwGNi9B5NUIU49+H5yq9ib7Unwh?=
 =?us-ascii?Q?e4CdERU5/8E0UUGiBgcpsDotx3mOBAhz8qyDAzzdHoqIFHQ1sg14zUqHt2H8?=
 =?us-ascii?Q?w/8pwIcr7ZF+mBpi9QuWNvN8RnD5zgADb0N11h/VHgyw4sjQZPYItcAXAGFd?=
 =?us-ascii?Q?xAsMQI/RI+rTg8TTXUAAexDv+uXFGTBOPqB/d0D6pIlN2yZAF+unpaV88eRP?=
 =?us-ascii?Q?z7SLgvVjwvu5dBitgm2zFG20QCO5+w2Z+yALmU2FJjCwtiKI7UV55gDr06/a?=
 =?us-ascii?Q?tVIYHmBNYXZ5S1QMenBGHYFCuXK7bADDqgk0QpsU9gEKW1jBVfdK1HI5RqJA?=
 =?us-ascii?Q?ou89ksXY42cV5QTn4WKy/jKVgG35OQd3S2dwuYSageRNebj1jMpQHGDJKvaw?=
 =?us-ascii?Q?W06bNKOgoI7I3gg0i5b+bhvJtDHCHRw1G6+tKSFFqKEcr3rLjPFxc4RLmkB5?=
 =?us-ascii?Q?8PgwPuVMxU1MW+vIt/DPQes2hICQyQA5+Eh/y+mcSln4R9bRA1Gwz95Tl9tk?=
 =?us-ascii?Q?6c57s6I6ALvZvYZFW01SjMTrhd75HWs/VzWV1zufQPeUVcBYm1GfJev3Qk50?=
 =?us-ascii?Q?RiD+FR0zP4AVzKh7FB1fnI6U4xjhDDAyhcETRQovQaBA0X3uFxga7C+pq0D7?=
 =?us-ascii?Q?f2quxSN6dsZrW+IyjG+HMgzFhCbVCaxeCi2jKWUNUb9DaAPhm4nOKcMFhneW?=
 =?us-ascii?Q?R6e8uKIrSn+minEgFPJB/JQCD5z0xj0z7EECxA/d4CG/R9p8DJm7MMq9aJJd?=
 =?us-ascii?Q?I5ULgofHTO+1sa2U/AxNWF5Z1YP27ERj1vnm5I5qd1GifzGRm9GJcZCpR1yE?=
 =?us-ascii?Q?YjzrIHBr/yHdkiXIhfNf9vnosJUauXV0agyzYUgRDh1pV/bPclrcimuXZ6kb?=
 =?us-ascii?Q?VhJ6fPSkRbJ9ldSTE0y+hhTx++yQf6Ro48l20wX8u5oyNPteQbXO8S2E2JKi?=
 =?us-ascii?Q?fV9ZCG8ooJGB8SU2mqQaALaj6CcWYfxUJQNi071vXSbm1AyFlGOaGEPg0act?=
 =?us-ascii?Q?NpASZUR9EI6SzTRhnN5q303KjhQKUmB47FwHtCcO/fADSHYUyyiM6cp5zJDL?=
 =?us-ascii?Q?3nHIwWcifi6TNhfFjJCiGHqBNFQtwTTcqk+qksldagEhKQSS7eE6fqS4rfzk?=
 =?us-ascii?Q?s2QK7wcXSpprg5LXMJl2LxNKnhfgZRpjmbIPiMkfD/OB7jn8LySaCyYbVr0w?=
 =?us-ascii?Q?024LLJuU10gB0oWzRMlAEKrCfum2XyDtfmorfyuZAV37Hm3MxttvmYXRPe5Q?=
 =?us-ascii?Q?Z0GMU9bcXgGe4yVmp5Yq9uZZ4OwJvOdfITRJbhlHhb28e66qidgf88x6OW7y?=
 =?us-ascii?Q?C1jAHvRwUxj+csvQDbZAS8D5fZLTfDqsLlwJ9aku9mqD/2jWoaSpn70w+PsF?=
 =?us-ascii?Q?VIAFBsftMb33QvTB73OVFBCLPnkxvyNOZPjA7ewPI8TbvPe1u8RxsB6DRJyd?=
 =?us-ascii?Q?oArTXtUeH4AVv3qSKCpeBYq9+61esYTpVCXoTz79qIc0R9NpOA/qAE+2heuW?=
 =?us-ascii?Q?1F1BbMeg7dmr2LMsXzBjIVGQdJmm6/+LY21PqKcG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96558ad3-9593-468a-bd27-08ddb4e4c69e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 19:08:03.7190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5RjRF7CmywBoOACvQoe0pzOIYL8X9bDn2jhylrZnhJlMdq3cc1yMdVG4RV3IZUBSGoX69+2A5Nayb0Y3rVCkZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4913
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

On Thu, Jun 26, 2025 at 09:29:18PM +0300, Jani Nikula wrote:
> Prefer the register read specific wait function over i915 wait_for_us().
> 
> The existing condition is quite complicated. Simplify by checking for
> requesters first, and determine timeout based on that. Refresh
> requesters in case of timeouts, should one have popped up during the
> wait. The downside is that this does not cut the wait short if
> requesters show up *during* the wait, but we're talking about 1 ms so
> shouldn't be an issue.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_power_well.c   | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 5c9ca8141fcc..9d310a33e701 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -308,8 +308,8 @@ static void hsw_wait_for_power_well_disable(struct intel_display *display,
>  {
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> -	bool disabled;
>  	u32 reqs;
> +	int ret;
>  
>  	/*
>  	 * Bspec doesn't require waiting for PWs to get disabled, but still do
> @@ -320,12 +320,17 @@ static void hsw_wait_for_power_well_disable(struct intel_display *display,
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
> +	reqs = hsw_power_well_requesters(display, regs, pw_idx);

Ok, but I'd only update here reqs if it's 0 to get a better debug info
if the wait was skipped because a requester before the wait, but the
request was removed for some reason before the update here.

> +
>  	drm_dbg_kms(display->drm,
>  		    "%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\n",
>  		    intel_power_well_name(power_well),
> -- 
> 2.39.5
> 
