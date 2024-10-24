Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1689AF04B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 20:58:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7714010E046;
	Thu, 24 Oct 2024 18:58:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Df9AzHv6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 930AF10E046
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 18:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729796300; x=1761332300;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FdvnahQiKfmoZdCct/+RfEQ3bgoIYEcwE2LBzsor5E4=;
 b=Df9AzHv66cjq12wE1CxGAQVyuNl0v2r/+jHOsg4I1Vb95AQje6TsJ1Cb
 RfLXpTwt0M4fkVBPzXh70hPfY9I8STrJROSFI9xLYALXy3dYkZc/wilpK
 TP8HbOIlW1yfSHXs/B/5n9QATrYcKaZ+Qs7vKZ/Crs242vroufJwEHTOY
 zslYFKx7mzAzKQr43a7BYRIjQzZ2lNQJQSIwJgIPn3pKIFJj01zX4CH4f
 VsJjiBE/U4oNO9wwkXHMzaVmB4C8KCoK8t6C1v6VmMPsWy34IGJ/AxdXd
 Wlu6GIAw1G4/7AXETu7KqFaGb74kNy6LOIXRFzZSqoOYd6bF84oWA1ur4 g==;
X-CSE-ConnectionGUID: MNPZIyhrSbGLU+ieEkqPew==
X-CSE-MsgGUID: iB7x54KAQNuSfOYR5CM6+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40066650"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="40066650"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 11:58:20 -0700
X-CSE-ConnectionGUID: 79Zg+R63Tia/IUro0/RanQ==
X-CSE-MsgGUID: 7Ux0GHb+SXy4UI9yej1hoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="111533651"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 11:58:20 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 11:58:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 11:58:19 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 11:58:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LwYYm1OOAhht5oBwCf64izwulVlFUXPSp4Ha4qDolpk0ACZbY1CyXbMgp4ZfBa3mSdP9k6Dz3ZFE2aNBGr0jLjnLinUkSXECkdhn53zlnPSlkB/doHga/0Bw7fmS9vZqqFJzTtFMeT9A6SiIaqrd3k/ZvQ8h6Luetq5GfPwiyrHCSZV/OGdKmdgOCXOMuv12sK+qDQlDguY9BQ1TkmLD1JHFdoX4ihqonU2zROXb6MHxlFV2pSj3a0Wq/OjGpYV0n+ZWAEICM1+pwi9SBJvRxp4D7QgC6jxO+xYuWRqilW4P8MXfUAR5Frhru1kOyagXJvoVMStGZUIq9fthZx3Jhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8z8qiRjWKe7iYWlaw1zrQHGjLpq1AmgfbrJAbvk876g=;
 b=ZDE8N1mT76Rfj8sj621bQmCeoNTf9SaXRKE9hOMYJeoWCbLPt8JsFbfeJ9QMXv2rs2bYxFjvXRQ9Fx/fUFhaqi8CvMvs6rKJ6Frm84aQKONUONlHyHKnTvD+oK0ykaUXGDlADC5/pAe41UKlnf38UVF0DMnnAL7M8p93fZwCJ6Ro27YOYN7fX/mEi+x8cny3iiueYRAZ/m9j5H2QvT0RmykAxVkj7nJjNfrBCnSi7S1m8HcL2soPvCgsVPgd/csGqHbEDCjsPXRGmzP9fOqGU1tpyvCyjDQT20BrX1tIQnLu3D+fTMGgYKejbAr0yqhYVLJeikRq6VS6BUxtena/+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB8134.namprd11.prod.outlook.com (2603:10b6:8:15a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.19; Thu, 24 Oct
 2024 18:58:17 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 18:58:16 +0000
Date: Thu, 24 Oct 2024 11:58:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@intel.com>,
 <chris.p.wilson@intel.com>, <nirmoy.das@intel.com>
Subject: Re: [PATCH v2] drm/i915/gt: Use ENGINE_TRACE for tracing.
Message-ID: <20241024185813.GK5725@mdroper-desk1.amr.corp.intel.com>
References: <20241024103917.3231206-1-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241024103917.3231206-1-nitin.r.gote@intel.com>
X-ClientProxiedBy: BYAPR03CA0003.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::16) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB8134:EE_
X-MS-Office365-Filtering-Correlation-Id: ce9e8de1-cca8-4ed9-c422-08dcf45dd1af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KuRpZt3wARmAH4XQi7Nhfd0oFhKe5ai5SMdMGkB1zDqsEpa5NS7TxVBACg4z?=
 =?us-ascii?Q?eFmP1V1NyuBguoyINkXY0vRcF4CpDkwSyfvplCRiL6Q7dvUHm9SuaquoATTK?=
 =?us-ascii?Q?NvXQeRKjschE+EcQHr34bsegEO3fFGkESTAEauYsxnsbn/KHgFf490oYdbia?=
 =?us-ascii?Q?DbDghJ6n0kQv7bS6LaUMsTAjRlTSoKh/U7nG/h9NVQ3ecLPv+sZpPkEqlC4d?=
 =?us-ascii?Q?V4jUgpLVpxMSKstpKQVrncYPneRPeg+pnN0zb/GMv7sOtvh86XsxOorIKDr6?=
 =?us-ascii?Q?KP3gHLDyCqOsCTQ/zY6IY0zgOJYw32X5aZVCpMySIteEKYfF2UAHHO5RZ7dt?=
 =?us-ascii?Q?eqMFZscn8Uiq1S2EC4k0G4ZW7+b1sl/P6bQAYDbYmsBnK1gpNNIPtOi25bng?=
 =?us-ascii?Q?mb0KGhk6HCoQEtpib4dv9x5vFlHK6Szph5zTUtxOK2Fi6ZeR1UESNqwsIt/J?=
 =?us-ascii?Q?6D2IC2MwaOy7bbQR89q7+2vupKYKEWI8zincT9WDft41Rk63bEIG701PN5U1?=
 =?us-ascii?Q?lIDb4a/9sQvx5nQ0Lfusji8SSQYxSuaUKVWFITfEijzbSPYu38rX/d7pP+RS?=
 =?us-ascii?Q?ix0jUOrPz8YHJhbIfaqqtZ1UFtkRoJA+YXFQL1xVbHVIed0CaRCEI8+7m1Vw?=
 =?us-ascii?Q?xZ1FzncICnoXxOGZqOE2RLknyVfwCIFrBCxTaoyxInQV6JjzEyBxeL0LLDpG?=
 =?us-ascii?Q?V1GLdEE1mhhCg4A67/PhziB0vvMb8ShCnp1TXijx2JEi6XLrzCzSNhBJtIaF?=
 =?us-ascii?Q?VLdz6uVv67DrO/8tzb+A+GIWrGtgWvUDFRoytgC1gVMTPuCI+YZOpv8OamLK?=
 =?us-ascii?Q?vNR5mJW40HXI05JSGL2QwXGypKjQ8Bx0JKsNBrutx94tSRKTGD2d604Id1Um?=
 =?us-ascii?Q?mO/P05dyagJZSdE7W/ZLrEtSosNkTs3e1oDO/GBtcRMOeBDPPp3lqtEW2XYe?=
 =?us-ascii?Q?zwOYiP+w50TBbL866zff2SuPgmZp57SyiJiDS1IBI7LGpTZduJkeYwI3Mkk3?=
 =?us-ascii?Q?WBN1inj4EQgtXm96N31X4X9g+cQerMuKzCearRL0oY3sTmnZML6w45U18v5M?=
 =?us-ascii?Q?/ckiXXBObrE67oSeJuieg+mUKOpvoN7Rt9c5s2GQQ/lfvVy/1c5wzTTRlYJj?=
 =?us-ascii?Q?0iCIq2Qf87e1/un3YLm9XLUtLq5UboAROlj62OXLSXzwuwhsVxErRWVDvgDk?=
 =?us-ascii?Q?yu42SA7W6TxRsf6PpRqzJYnchR5Zlto/mjw0a4gA35mwxoqsndej0nfsCl/z?=
 =?us-ascii?Q?bmqApEOyxjSJSdjgx2mTRdtp9eAmVjHwCjtMToK/ofOrcw8bwBCHWoYNu54s?=
 =?us-ascii?Q?DBkFBZFPlw8daRp8nlhRMXsv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VXp0P3envc25JPo28MM9hmVCgGr8I2/ep0umWad/UL2n2gKTrQwvCezG54+J?=
 =?us-ascii?Q?FZfEvxWVOf8ku0/gZdJxRVk3MN+P99KFRDN725n/jHDZH/Az9/4gHTQ0tC18?=
 =?us-ascii?Q?sLAWTBbxukFVVsv+V3F75F/qQK3TUE/9HT9IMwEvC41PO6bV4/36MIgOJ5Jx?=
 =?us-ascii?Q?PoRHXRmJGi+Nj2LAV+1NEkfAHXdyRhx4/IYQoSK3CFiNj2cs5Rdy84X3uT69?=
 =?us-ascii?Q?xDdX+6gSZQaEzBBwbihZrrqfMfnm4duX5gxHqjrnzmcqmb4A0+MkUG+aTOWp?=
 =?us-ascii?Q?ee490QWFOS3WTkozXWRBdL/0nxsKAQNAJWrivij5vPU8OWE8XwL8dl9Noox4?=
 =?us-ascii?Q?V0StzB4V+KPEvUPvH4WaG9oRMlSdoZYZKPpTnaGGtmKR0jyEDRCcExz1FMWu?=
 =?us-ascii?Q?lOt0BYckNMD95ko+6d2+vMRRODt04BljzxhaY679iAYUez4mXejGaeNQT1Pn?=
 =?us-ascii?Q?DJB0C3wJ5q4oqWDXZ+jSB/RcGXbIdtawA0q1/V5KSxoY8ns/DQP0IXxkUAkL?=
 =?us-ascii?Q?osgZHZV4nbyj4AaBpZ8RsuOUOKft/xgDQeCGblbdoL6NllpFpzOntGj/4AFx?=
 =?us-ascii?Q?8QnAAEQn/BGJUk8jvIEmh2S++vL58nZH3LvBQJZsCwcmUl0XwcH8QO0GmGCf?=
 =?us-ascii?Q?5F7naK9ab2nCHyXLTHvNUuR2OjTSnfNwka06fC21+hPLxKTxP/gcQJu4TJca?=
 =?us-ascii?Q?1pn7KAtQ7lfMhFvZUI5hcXUsQsJl/+7c3eybp7wMRXO47ggAW/JqKFG6vscp?=
 =?us-ascii?Q?MHLJIoxYYRpi/lT4A6qCmGRSV9NbyfPjUKRiFCTOAALRtokUCmAxU26hYOOZ?=
 =?us-ascii?Q?jWlcb/5yjewAutD03tOjs7zsmapp90CpaY4xa+BPoyoWOKZEISnqwNVEj4QW?=
 =?us-ascii?Q?qOSZKJ2azBRAmJPNk8+E2hTCHE2vYd4FwMDDet5je901AyZ5blT3QVrTU5/v?=
 =?us-ascii?Q?KBejgz+dsg9aeHaTLFr8VeO6kHWPuRn8QFp/DtM659lslsNcX2BWhVJ5yrIH?=
 =?us-ascii?Q?QWCKqpYdCXp3YV98P82xjn8uNYVBNJcETwoT3DRkO7Y1HsQ+r6lPNRoFYsxs?=
 =?us-ascii?Q?jlXz5Vk+XJ7RCttGYcUC8XHyJJzLaSEAt8i/glmTb+G1ARCkre82BHjEndNW?=
 =?us-ascii?Q?xuKrSRDoe+Ns4BqxYBbJ/WgqlYkp6A/Xa9ybxyiGbkseUfW7fC+AiXBWg4lO?=
 =?us-ascii?Q?R7M94KnC70CI+RhP5PumiOphZxqu2K9DTyOmw5j06KiIUlyp0SRrcImupdPb?=
 =?us-ascii?Q?aTpa6fhUbzr5gRO2bhiEf6VDPItS95k8/DWNQEYXJ/n2KaZXberR07yYydy0?=
 =?us-ascii?Q?QLIrDaU2lohuZx4kON59HliTnS5XSekx24UNYV431vM81I/EnjqnH6pzgsCM?=
 =?us-ascii?Q?U9lTgPSMDnx+U2WQTL/3z4LPYR6xObGvXOMhMhU8kgoWXtiZGu/9rFvEFNAl?=
 =?us-ascii?Q?6SzmtTVye5PAPp0uN+1GkLm83YM4xjzPgIBeplMesj5Bis+I6JyZZvsPd9Jt?=
 =?us-ascii?Q?6xMlKA4Jrwj69e2djPV9INlTtEFZsLIZnRQnS1bw6N1vdpWd6AwmNNFVaAER?=
 =?us-ascii?Q?WCSyG+7q/u9n7ECONmiVAZW1XI0RqNEuWh1dtAArSHv+eXRZxYV8+QPXWdHe?=
 =?us-ascii?Q?Jw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce9e8de1-cca8-4ed9-c422-08dcf45dd1af
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 18:58:16.9162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eO3Ht/dp4+sWUosM3g903F0xH2s9nZexv9lvd68jqt+yGIGMiSkLqTUf4VJLd9M4KssUVypdn/Px6Yy7Ir6wSqNjYGc/5pexelYVT5Pmt44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8134
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

On Thu, Oct 24, 2024 at 04:09:17PM +0530, Nitin Gote wrote:
> There is ENGINE_TRACE() macro which introduce engine name
> with GEM tracing in i915. So, it will be good to use ENGINE_TRACE()
> over drm_err() drm_device based logging for engine debug log.

Doesn't this just eliminate the logging completely if the driver is
built without CONFIG_DRM_I915_TRACE_GEM?  That means that most users
will probably get no dmesg output at all on failure now, which could
make it harder for us to understand and debug user-reported bugs.

Of course intel_ring_submission.c only gets used for the old
pre-execlist platforms (HSW and older) so maybe there are few enough of
those in active usage that we don't really get too many new bug reports
anyway?


Matt

> 
> v2: Bit more specific in commit description (Andi)
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  .../gpu/drm/i915/gt/intel_ring_submission.c   | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 32f3b52a183a..74d6a2b703ac 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -282,16 +282,16 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  	return 0;
>  
>  err:
> -	drm_err(&engine->i915->drm,
> -		"%s initialization failed; "
> -		"ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
> -		engine->name,
> -		ENGINE_READ(engine, RING_CTL),
> -		ENGINE_READ(engine, RING_CTL) & RING_VALID,
> -		ENGINE_READ(engine, RING_HEAD), ring->head,
> -		ENGINE_READ(engine, RING_TAIL), ring->tail,
> -		ENGINE_READ(engine, RING_START),
> -		i915_ggtt_offset(ring->vma));
> +	ENGINE_TRACE(engine,
> +		     "initialization failed; "
> +		     "ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
> +		     ENGINE_READ(engine, RING_CTL),
> +		     ENGINE_READ(engine, RING_CTL) & RING_VALID,
> +		     ENGINE_READ(engine, RING_HEAD), ring->head,
> +		     ENGINE_READ(engine, RING_TAIL), ring->tail,
> +		     ENGINE_READ(engine, RING_START),
> +		     i915_ggtt_offset(ring->vma));
> +	GEM_TRACE_DUMP();
>  	return -EIO;
>  }
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
