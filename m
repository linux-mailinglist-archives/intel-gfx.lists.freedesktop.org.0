Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 833E18B5B27
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D336D10FEE5;
	Mon, 29 Apr 2024 14:24:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HEhq2g2f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C823910E301
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714400643; x=1745936643;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0eby5OiPKFeD8+wkcdJS8W0LlkKgfkmnObysXb2PPgM=;
 b=HEhq2g2fVHtT3YfgPaSit4WBx20epD47shFTrlixRxsxcTF+Z0KGn7yc
 H8girFsOnX4Jm2V4LpVFJ1a/EUTglQvIqADLovmQlzIvnW6cJpXZlPRl+
 K9qBxxlzQv48OkrNOQutKXZy05tHr7VtYdC+fC5Sr8nuhYKk14ApwaXd1
 1C3klwj4eDDj+gYOGcN2SQ/rM+jmn4EyRGPA9vJ2hVn97rdMXrkQhS9Vn
 /eTmCodUmyOKAG0DGRG+35kzZokbr+xathQr4cAe6A3guALqzSmE0F6bE
 xs9472RPTBtYvvFPqE2NZ9WEsTZSlrDk/LBTyWOhlBT6NjQhMyD5ownqU A==;
X-CSE-ConnectionGUID: 1JnSFcrVQo+wo96eascHWg==
X-CSE-MsgGUID: p8OJMcutQc6BLlsznDNxrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="9921492"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; 
   d="scan'208";a="9921492"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:24:03 -0700
X-CSE-ConnectionGUID: WipluzgoSO6dB5s8dqIBag==
X-CSE-MsgGUID: dl3Uix9hSFifpmzeZsZLeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="63607220"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 07:24:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:24:03 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:24:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 07:24:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 07:24:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WB0ZhSclPohZ4LK8gFZYZJbNQfhA8FpAbmfd1IiID/N0RpaYQbY21JyHr0MkvBOdjb6TJNYCa53Msawm/pw7sroJkspBBLNCPrsmKeudafP1+W9wGpDsz2pj2YFNVfNskYleYCZ8DO3gWirAlv1ao2k06T8lEO6jyihDIAb5bHWSHMsLfvGU9S5mPIg4ZB9l3SG+uZoZtk2MS3+iDPc6Q9Cgslo6n5ApIXdt8OGOFdgtpy8Q0rDmfqLnW4s+8zOZp5/6CkkAG1XVkGWOhClxmAJexE1rgGnhgCxEsiVXJxCgTVDX7GgNmtcGclUCHZoGRWSUFkDbtJtTxy/5hBIsTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1yEzbMJklNRUhaUS3j/fs50YVwmbhZQkrfRdOyZe7s8=;
 b=ejoF+z8xnpEBifrzyEA/EvRs+CIYFFqdTezVxVX2y6ey4MYfTwI9tyZt06fCNaSrwwVG5FPyCtH2qGQWTayLe7lyuIgCwMbejXLm57NR5i8IgZCgggSqHpwPXyDfhUL8MrH1sqTxsLvv+P/VrFWT4S7mVvUp9KfCN/RlegUNaCCsacW0Dkse+KlagvovW1YvnRTo9KY/3O7equq6bENkqff+uW6tVyQ6s2xTMkaufeueXhrZwoIT3QbXdsqMOJtMrn14U3KIJ/XUkrxeAEggl8P8Amef3qfi728NsDybJM8CnU2/Pc7p6O7+S0+MMmU+bsCoVQVP9xJCaagkHfoIeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7407.namprd11.prod.outlook.com (2603:10b6:8:135::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Mon, 29 Apr
 2024 14:24:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 14:24:00 +0000
Date: Mon, 29 Apr 2024 10:23:57 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C01_C00
Message-ID: <Zi-tfcZ0-wxKbvEu@intel.com>
References: <cover.1714399071.git.jani.nikula@intel.com>
 <85b3db6e666a7a629b10b482b7e7043d52d30511.1714399071.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <85b3db6e666a7a629b10b482b7e7043d52d30511.1714399071.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0038.namprd07.prod.outlook.com
 (2603:10b6:a03:60::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7407:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a75e704-3b6c-434e-6d9c-08dc6858038c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ij1/ErOec9E1zFCRfF58wib7987I2iv5+mZGEmjETEiBkhpURBt1OCDS60Bh?=
 =?us-ascii?Q?vQ0Fi2N4T23S3YsZu6V4q7jeNN4AP0p60gJKJhaGqrrPpJ3RmGNBm3zLfSsb?=
 =?us-ascii?Q?huG7YuQF9prkrI7yUHYexrIzySMB0GhtcztRiGtOVT4zaD0O28lc5xp5XCTR?=
 =?us-ascii?Q?PjyZ55Y4MeeAE5U4EVJZWawiNPPwitwe0r1gbbXY85/u2iAex54EVfZXD3LL?=
 =?us-ascii?Q?cD/hSSnfqZAoBTWU4dz4I5yQqwyjksyNEvsFJmAPU8USiEnNqK3hH8sTt4ca?=
 =?us-ascii?Q?rpfEx0UzSamyO0t4ybBHYh8Nei8hUvcWD2EnYfxnizlWxNgnIvGLANBSQhvC?=
 =?us-ascii?Q?2muIXJa6ebjQvmJpgGKlFg03/CI1trI2+pJ045ZH9aTo64H+CcanqYm1hVY8?=
 =?us-ascii?Q?o+fnICIWOAvpw98xsRa9r468Plu9qTGZVkVNahLop+MuRIgQ/RO+3XCjkt9h?=
 =?us-ascii?Q?6fKQK6VZYsE/qOz+n7VMFAmuqCV6zgK3bNfEdkNTXKi6pL9aZA52CdgpnuDc?=
 =?us-ascii?Q?pu+z/yba72RylPi5IFUCapNOj/L50y2NTvLM+6WkjJoEbWc5ymjqdW/M+lCD?=
 =?us-ascii?Q?9e6T3Nlq55Nu64wRSsQMvCFIOiDObmu0RzEcntSWObQzyxJWav6sjqCq2G6+?=
 =?us-ascii?Q?gyMhVUr5ETBrPGSx7HCBNo/yeu/J+9a21pYjCo0LlZ02T6piMeyT287HK3Nr?=
 =?us-ascii?Q?9f3+pr1dN/AV57iCfn+1CzLkIumQyb23xqDWSYucfBXqIUM77pEI5itYKRGc?=
 =?us-ascii?Q?mrMfjXdJhdTkYp8nhW17tQNqHwaVaYudg/rZKvgK9JZXOY8di7PeajZK7ft8?=
 =?us-ascii?Q?tJJhSBDH51xmWVdbD+uT2ckNY6OJ7gLjmhCniMKo83U3Tt8mMiOWG2yNvFCw?=
 =?us-ascii?Q?wttPjo4buYUwS7WTPzaqVnr/680+8HH5enOqrYk3ioI7ORwjBLiyiwLflI2o?=
 =?us-ascii?Q?FIlvskwuTveSvypprYZ86AI6YefEp5RVrkcYW7AUxgqnL/n+oQwykn4UluZ7?=
 =?us-ascii?Q?lro2V38uoBiBS/5cEDqqOcLgzHFCyF2LUAD8Ckb7uL5+V06fXVdtoNKGIfHo?=
 =?us-ascii?Q?0Gw0nEe8nNhHbShI4Uq85p0GNvlg1pwudZJIWQMDRN/UHunYTBDgBtqQNxWI?=
 =?us-ascii?Q?lSqEejoaLZ1w9Dbmwr1r3f/GGepWaIYwVJYXZRFGXEtvEKbiLVGQngd2Se9l?=
 =?us-ascii?Q?l6Y9LpS5wdpaiHZNR3OH5cNt2OqFENpWg2NUlMARqgNLREOBFJ1oNMnplbKA?=
 =?us-ascii?Q?EUnvEiaAQw+ZWZIdlDuw01h+pKEauzrN25B8YgVBZw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5dJPIiOcxFe4zrgw5fMq0qaeAM9BFvj6TIsfET1Y618yH7F71OxllzehwpYe?=
 =?us-ascii?Q?wrX6D1h8nuk2lIAJIxpsZAmg5m3toKo5xWjXqWMWO7oMF7SR1EemdUqiNl9Q?=
 =?us-ascii?Q?e94WWsbypdecHtPDiweDJNaPNEP9k38JNtvbiFWZnGR5cFHiYS2i1l+jUjgZ?=
 =?us-ascii?Q?kf3+oMCOQufkYpi6R6DzCyvQyGyynQd5nRNLce3z16pA44+NvMnnEfVa2Re/?=
 =?us-ascii?Q?8751a4O4pt85vaFATDnqemArEGlY2lnLYG7hTuN5fobU+9BVtZAVc3mQmPcb?=
 =?us-ascii?Q?LKKFyvGL8W2n2b/HrBuNCk3b2FXO/AzJxlCS1Z/GxAHkw+yy7+iVPa2v8iZq?=
 =?us-ascii?Q?2ifeDuOtpnZZsB1rKAsObdxRIxo/rk8hmrAvlo72vjlP2TfRm/R7Odgr/aFL?=
 =?us-ascii?Q?/b3momqcGA0osFPaxcvhqBEeRTiBZB3dqJM0VBTrfxtIaQKMjNm9k4xcvGag?=
 =?us-ascii?Q?hyYatGKHdJ+heiGzhgJRF00y57CyUbuqaHJE67rHynptg0IoL+bjIeqqvvuW?=
 =?us-ascii?Q?GdhGE3K3bHxcASmHRIkGVDKKd6+cKEwX31IQDOpT6WhxA2GEZOylrvT4Kmlk?=
 =?us-ascii?Q?O7lhK88qUqQ6XyaV/VSATxXJbA94WWyKUcVFmoVnonDpAz2wx/AQN5GqOH23?=
 =?us-ascii?Q?zTsiYw6THrkTDhVZh5dx9NdEhVWdgKICx4ZQ81FqveRh/9rKM5AUJ2UEIMky?=
 =?us-ascii?Q?qSBTzLwl90cjqyH+MtxgMZnbzZqBw1rfZjlGXiNY3B5dFmlLioTzwKs+4Z8Z?=
 =?us-ascii?Q?BQop04mMdkNW9d/XwBMxPepiidkNBm2Jn59AQFvsqyd6GQg9WFX88rYdqWol?=
 =?us-ascii?Q?fYVAIHIL0yxtqSuzFsss8rilyLOAWATae9E6R4q+Zy5T129V2/SFMJurvzbB?=
 =?us-ascii?Q?OIp09E9KUHjJa4qzaD1GSywPeMvO5SHiZoPoHcTjPNfNFICGfe8kHrt9rNzM?=
 =?us-ascii?Q?lFNdtiQQWF5JAG4P6qYPJfyRTZd4waJ7dQQp1Ru1DNyLuk5xQpB03PIzdWS3?=
 =?us-ascii?Q?SgWK9XEeOjX+m2eiUCW8PQL25IioF4i/6QXenO43ylVwsLeXCsGLQdfp6/Y8?=
 =?us-ascii?Q?pkcV8bbuYjuQ2X6/SdaSu11bHiOSV9M3t441mUi+RRSMCo7Mp9k2O0/70KCd?=
 =?us-ascii?Q?jJCWvA3zjU6vLW9BtwHTwVx0j2txTDxdVlJ3yzxcqd74CJhu/MpEsbtfz+qu?=
 =?us-ascii?Q?jt63XudeIamZbhv4GsnCn2xfxBqdqsRSMlUElLcAo0VFsQKdGWqJyjMsq7Og?=
 =?us-ascii?Q?3s9sLbd87wvBWpsmZppEVPSnCDQxk01EJQ+LSaW9Jh24uRzj8oi15TMINgVb?=
 =?us-ascii?Q?7K+KC+K1KkuQfVVHR5B06RI6Jk/n19nPn4dlp5SYJssIBuwEvTThvxJzsAFE?=
 =?us-ascii?Q?ADVkaraOAkRqPZ+VlZvNgwJPEmJVEgO0upe89c+fSRPbCT6vIdxGTXPOMTat?=
 =?us-ascii?Q?fYJ6+UEOTm1pIvGKCGPbsAUTqmPnMqyaRtiaMmzDKYuAscAo/wWbucEuPoVH?=
 =?us-ascii?Q?LAVgEHf3ll6BmzizhGo9QzUXTlQQyUwb4fuMeCQURBL0Fa55QoHTSut0894e?=
 =?us-ascii?Q?XfA8CrZIVKXiadyhf6T5nsAYmQOitS6itaGQWzZ/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a75e704-3b6c-434e-6d9c-08dc6858038c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 14:24:00.7694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o+uYZIN/YMTyq+ZtIoRYI73v6APHZfNVgeEUrFs/KEu7oWJLGXVopMpPNHwBkV+ebCTlUU8DXrI7EsmEjS+mpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7407
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

On Mon, Apr 29, 2024 at 05:02:16PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_WGC_C01_C00 register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index edb805fc9c97..cdcf8e796335 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -616,7 +616,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  
> -	intel_de_write_fw(dev_priv, PIPE_WGC_C01_C00(pipe),
> +	intel_de_write_fw(dev_priv, PIPE_WGC_C01_C00(dev_priv, pipe),
>  			  csc->coeff[1] << 16 | csc->coeff[0]);
>  	intel_de_write_fw(dev_priv, PIPE_WGC_C02(pipe),
>  			  csc->coeff[2]);
> @@ -639,7 +639,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
>  	enum pipe pipe = crtc->pipe;
>  	u32 tmp;
>  
> -	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C01_C00(pipe));
> +	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C01_C00(dev_priv, pipe));
>  	csc->coeff[0] = tmp & 0xffff;
>  	csc->coeff[1] = tmp >> 16;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
> index 250ceffbd481..57438989f469 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
> @@ -256,7 +256,7 @@
>  #define _PIPE_A_WGC_C21_C20	0x600C0 /* s2.10 */
>  #define _PIPE_A_WGC_C22		0x600C4 /* s2.10 */
>  
> -#define PIPE_WGC_C01_C00(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
> +#define PIPE_WGC_C01_C00(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
>  #define PIPE_WGC_C02(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
>  #define PIPE_WGC_C11_C10(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
>  #define PIPE_WGC_C12(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
> -- 
> 2.39.2
> 
