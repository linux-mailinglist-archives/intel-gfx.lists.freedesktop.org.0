Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C771AFBA74
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 20:15:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0436F10E2AC;
	Mon,  7 Jul 2025 18:15:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SdqhxcfS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C089D10E2AC
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jul 2025 18:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751912115; x=1783448115;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lTkesbPWjQt5u5Bas51YF8GsxfPNfWJZ1V3rOv3tHJE=;
 b=SdqhxcfScIXZkOuOy4IIWpc3BohUkfsXmJD6DcSA4F0ifLGpjFA4L3Hn
 vcAQVufQiHu2M9DPQfxSl2DscgFSFThf3N9HlhVhlLw9DYd4bJPW/yIoo
 YDBaDCwadwk7cRFUXReCvltzCOZxwiWO1fQzIgbe4dkHnXfLnx0e3juqZ
 +PU7hblnSO1aK2of9ru5UP+APiruUHr6m/12gODu9XttcjyNne7HLtg/R
 +mai6QKTtgMfuv15re6qYy/L5HzqTYK8muRaW5h63KYTlcvoE226RU5ml
 uemAZLqO+gmoAdmaOrlqSQi45o6iETnZRHjgMPLP9akAyHm9Ro/OEV0mE w==;
X-CSE-ConnectionGUID: vmjtVDVYTFG/NH4E8iX89Q==
X-CSE-MsgGUID: ENYLlJkXSqOd12cOgxyt0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="57942086"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="57942086"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 11:15:15 -0700
X-CSE-ConnectionGUID: 6LFuTY+ASi2xMZodN1sCow==
X-CSE-MsgGUID: BeIYFyTURm6L9YlSK6u0sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="154680060"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 11:15:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 11:15:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 11:15:13 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.82)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 11:15:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xPSqdHdrETQM/CTrQLMxt4+PsT99Qj9pSfNtYXHwTsngbTUzkqQigzjR7yGyQHj767H6yAu5/fw+LrDw0FeH08wmHaqXV1i1rzfx+oCcuB3YvhYv4BTWgnmELgtuC3MfP9hXf+WQS10VBJ+A1aMGN2muQmHLzgMDQU9p/RHVGMmh9VUjZMFDCV+GWu3bOaQIPA1ywTgOFhIPARpbD6jPHQarfjF7QluuYeMhr0XttiprQjE4O06MMzsG++KNcpH3kXXhdLMO0l39ZQS0+rofvy+enK48mZB4pVouEy2L9xyqp6ZQ8UUeZ4myxgotvPGSDTGcVpWa2w5hGB2jAdtf8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aY/e/A+BWNFF0ZLO69eSmFpVXj4I3oKnZSMI57prBIE=;
 b=gXJgIZ5nzTV+odH4/HHF99wG7cRi8kpi9GRLooChCPxF6LyDqv5y2RbQDe/mz70vJAfb4as/cdvtG8GaTi4wk2xApTZ1yir+r84yv7+l35qlmWWXt182hoSzEe3EgP6QiODzWzYKf8cmmYjSG7n/XVIUHYxu7CQkCDzwfe1SMU6IBTeDM0FaZfhALfA9cwFcCHIbUHAujNZBD9lsYB8vPqFaMKev7c4Uc3/Z4cISAcZFmx5YcAbDkkp9bxLNswTPOsBbuLSeoH4wOumhkOl9Q09YVU25Uzc8W53HfU8aEQ8X/LsL5JywAerILQUDMJGiwUXWz/yXotVMbLoRbUATYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by IA0PR11MB7742.namprd11.prod.outlook.com (2603:10b6:208:403::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Mon, 7 Jul
 2025 18:14:37 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%5]) with mapi id 15.20.8901.018; Mon, 7 Jul 2025
 18:14:37 +0000
Date: Mon, 7 Jul 2025 11:16:21 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jeevaka.badrappan@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Fix dma_fence_wait_timeout() return
 value handling
Message-ID: <aGwO9RJ+o8lUmmqY@lstrano-desk.jf.intel.com>
References: <20250707054551.1940759-1-aakash.deep.sarkar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250707054551.1940759-1-aakash.deep.sarkar@intel.com>
X-ClientProxiedBy: MW3PR06CA0010.namprd06.prod.outlook.com
 (2603:10b6:303:2a::15) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|IA0PR11MB7742:EE_
X-MS-Office365-Filtering-Correlation-Id: b9bf2507-cd60-459a-dcae-08ddbd82225d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?C7zcW4/kqsH2o3UcMXB9lV2Km1jS+e9V+FbSMozWHFEwlm95TqB3D2hifj4d?=
 =?us-ascii?Q?+1gU3RLL44XNwvnTkMuAmj++S8yu3zyO2ZM9pvV5w+Tefw6XFgSNcqazVEQu?=
 =?us-ascii?Q?sgSl5tY5UQPtYKnj3IRLLNLrL1hhqc7nrilDUQhZRdgqWKsn5CmxbIUwrZbw?=
 =?us-ascii?Q?w36EAAZTLJZOxr+rkHqB1tnfmg+wnDfPcd7ovaCnYxc0rlpGApts8JW8hZmr?=
 =?us-ascii?Q?n9ZWsKiJwf9nIRPT0xaz13ThT4Y45M2giHZAwRyQ36B9glgZiTeY8jHRcme7?=
 =?us-ascii?Q?+gj5TNGegtymH2Z9weupGcqM3R5JNrUel/sDWg8H/QQKReqTOheBI6j2kIea?=
 =?us-ascii?Q?Pc1oh5vZpaXGBkejiHrPbAaOlDMi3ol+nUAX5Ac2kb56cJV56/ZVr2CgDY/O?=
 =?us-ascii?Q?60w/6Ud4YLW05VeVXhUA3HFYRKq4bcsU5cDzklrrpYOka37ePkNuqfPcfePL?=
 =?us-ascii?Q?1v4SxiLAjOt6BoCC5lWPpTaT+fJYqRyYkJMMSfL0LXOyKUhCIItJt/W9+bCg?=
 =?us-ascii?Q?Jq6CheiV0gZfvHCIKUOjXRcJpVkGw5zCOLdWxLww6i2b5EuDdEh+/JIyMfaA?=
 =?us-ascii?Q?SYODMXq/JFsahhYE7m5HGZte4TRNCLqbxzQiaVOgSsASqhZ+Gv92I7oEEb7+?=
 =?us-ascii?Q?mbllu/lcE2zjzck7krNuT4g3k3DRu4OIvpnVZU3kypZ65e3Be3TuITCY9RRJ?=
 =?us-ascii?Q?zlElNI0/Knydq1RuNSednPTU9JVzHEukHeAJTCnPZswG/lAVcoirxNU8474g?=
 =?us-ascii?Q?riDRYizfRbkTTQH8RnPfR0Q79MlrTOoiZl2OvmlWl53Vx2siOQHv8vDDtsKe?=
 =?us-ascii?Q?NjamQpnzvnSHcoKvAjmCpGH6xV9KCUkkWY1ljbxhVAnosa34aidXTqPm1QcY?=
 =?us-ascii?Q?Z0HeMj64tz64Q52hYaTd/YvHDXvKp6FwLhAQNcRRFw6kLwRbvCXVst/UMKxR?=
 =?us-ascii?Q?IYZZ5nEwkhzr5oY6dyDJX60AggIEQV9MtQMg0/qdxydsZAiqJD+7w7/O5Ypm?=
 =?us-ascii?Q?43TRe8KaaBDgisJLYBn7rjd3x8fRlJPQxUuc2Qo/CgvIsLEzoIetaX8eWVGo?=
 =?us-ascii?Q?UQBTJzuuHxbqiw9dzTYo7ZQuduQH9vaTb6CDl08qM27pF7FC+4LeSfrlGrp3?=
 =?us-ascii?Q?zVMF2DVed8ielA9uqfHhqTrxQnv/qBgYlaq6Kup5m7PrTzve3FFVwUnZIqMO?=
 =?us-ascii?Q?3ITXc8tCf9IgX6AVKewotEkbfMYXCMK5qKSvQ5pCDLOENLAcKeEIjW98G/M0?=
 =?us-ascii?Q?k/E0D+qG3rtcJqXqCFkYvsNEwf7+6/m8dShHs4a5MQwupu0lV4F6PmYE80oB?=
 =?us-ascii?Q?xVJvEQsFnJjtwN9sfPowROe2X1rYdd+OYb+kQhyTVY8C7RKmvH5FvFXzM6BJ?=
 =?us-ascii?Q?xKBoa9WHh2ntXWtMbom5ll76JUu/f2VEDyItxCJZKEPzp+rPKnhi6G3/n3dD?=
 =?us-ascii?Q?T6mDDajblRU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?E0KeWfzK9j0h2+hDTn5+brsrA1X3xvdhB5t/OqIkVFbIvt5tP81FE9PbXy5e?=
 =?us-ascii?Q?Aq71+hiNu8hrULRq6b8TTgFAwQQd2Tf1Rgix17BFP9y0lN6mo01pD+qrhYug?=
 =?us-ascii?Q?lloEc5EFwcm3ijDIu2FOWH8O4wEj2p3w0Qi4ypw+LzOrfa0xSf1QyTp7cPeL?=
 =?us-ascii?Q?774aMVuckiSqEPrLrqXFQceqqaOkbDLW7LiOwLA1ZxuGyD+qRPhZcmxMYYu/?=
 =?us-ascii?Q?RP6CQ8wsv74gTfIN4kH32wEbTIa1wj+7PPN/dmQSL8TwyPHmgW3YWyCDaw9e?=
 =?us-ascii?Q?tzzMHNsHIcLBHrhiOeV5z5/jTgrJKaVSYwaKjLxNlPFViSn9khC/GoPiFcie?=
 =?us-ascii?Q?CZ+L5UFXnEipd3vHl0KCFIVSDpTPbBb1G53HQlhZ0r/sfY1KlfXnfTlof8p1?=
 =?us-ascii?Q?PXbegnEvuRtP7B6W7FFIKGstNefjypi5EOEz+uIhU0yw8JVjyR6GBc3fBJFD?=
 =?us-ascii?Q?5jEchrzFGb3Sg+VF6ms/Ilx3a+S+70c4LgJDj1jB/HseSHFm3EjLpadpm2Hm?=
 =?us-ascii?Q?OK35JaUKoQauZ3WBSwIKaqhdLmxqhj80X5cbcqv+n7eRLooj42BX4gUTzmSH?=
 =?us-ascii?Q?ZjJuHGGNE8pNvdEDxgZSMc9ThUq2gt5erWe4RaEEZT4f/FUtiKtQ8QTsyCu2?=
 =?us-ascii?Q?XE20cqKuirlSzJfUGWKssgJNE7wN7W5BYvwaJryJT+0/UKQfMTNAZRE9n6Bx?=
 =?us-ascii?Q?GWs+X6IR71PDhd+a4hvdabCBJ4n5GTGk68dyF3c+pe0FMy5qkuX1cn/pvlK5?=
 =?us-ascii?Q?F7C0kP5xTcZxh8ccdVsXTDi+H76Vq3PReKs5dQTTrdX5gFmGe5QXDLZFD/3J?=
 =?us-ascii?Q?Cf4FCNTFZRvcOuOhnKg5QRosy/Sp2yQv7rYnOXNNcY51SlWEf5lbmnXdjYGZ?=
 =?us-ascii?Q?yDJFYGehOA2bZbyr/Gija7hH+vyJXdTDtRO8cuO2hmU9WbdbNqsJD3fMEtvE?=
 =?us-ascii?Q?x914L+WnpxbNtui2Zna8zKsso+plC98QTqOLw5YMHbtRxjrb8PnqPI93wJuD?=
 =?us-ascii?Q?lbICnXyUDRv+gU58uCNrbR9yyx3Mwq73ri9PILngjvNxmNEpuQ7FJaTSNBNO?=
 =?us-ascii?Q?8NSgzifCOntvX0FKiM9OYF8uPFA6/9NARP2w1BqJxNLAbMko3OIkmw3SctvJ?=
 =?us-ascii?Q?rYun0oGqSik9hZWmdez7uw9TB6q0pEEFXRaT7SF+djINOo+cF53LiUxuegto?=
 =?us-ascii?Q?ttMeX614W++T0n5aWyimhGm0EiaZrZtilNgnCCIwgx9x8TJdBih+n8EO3k29?=
 =?us-ascii?Q?b/y30gdoZ3TQSzOfiehakhaTvhrs/VCYU547+/yNsunl/1CppMRS8R63Zmhb?=
 =?us-ascii?Q?6HkFn1xVgtOiWlXJ+xy5Ya8ynhBoObia6N/Cq1mohkcMy2s5DRClgb7Vfwk3?=
 =?us-ascii?Q?wbHTTozbHd8Ta71+45QzH/XNq8X2yg/DCkQlncXd7tQY9rPnin0yMVHumsh1?=
 =?us-ascii?Q?JXBvEz7N7Kd2oHHfA32wHSNBxccoAqAWYFWa2iPgpOKTJuYkn86ly5xJxQKU?=
 =?us-ascii?Q?BIIIfeqlw5cmMsJmVSwroDEsmxhk9Q6dtGCvH1q324hb7Zk/eC70EZ+vUavE?=
 =?us-ascii?Q?3zpwaI8Euyzr177aGNgHYkNlGnFdDzxObC/xNPfiad6+WIPrSEsXt7cf/d6G?=
 =?us-ascii?Q?1g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9bf2507-cd60-459a-dcae-08ddbd82225d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 18:14:37.7566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zIQRym5YvnXKpBO+S9xmr/zLtKQa4U4VfiB7DYJsoFbzYGiL8Xd7S6iiIJ/PhlEQUoUljVOR0nxgp5kWvhEeGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7742
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

On Mon, Jul 07, 2025 at 05:45:51AM +0000, Aakash Deep Sarkar wrote:
> dma_fence_wait_timeout returns a long type but the driver is
> only using the lower 32 bits of the retval and discarding the
> upper 32 bits.
> 
> This is particularly problematic if there are already signalled
> or stub fences on some of the hw planes. In this case the
> dma_fence_wait_timeout function will immediately return with
> timeout value MAX_SCHEDULE_TIMEOUT (0x7fffffffffffffff) since
> the fence is already signalled. If the driver only uses the lower
> 32 bits of this return value then it'll interpret it as an error
> code (0xFFFFFFFF or (-1)) and skip the wait on the remaining fences.
> 
> This issue was first observed in the xe driver with the Android
> compositor where the GPU composited layer was not properly waited
> on when there were stub fences in other overlay planes resulting in
> visual artifacts.
> 
> Signed-off-by: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 456fc4b04cda..7035c1fc9033 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7092,7 +7092,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
>  	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
>  	struct drm_plane *plane;
>  	struct drm_plane_state *new_plane_state;
> -	int ret, i;
> +	long ret;
> +	int i;
>  
>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
>  		if (new_plane_state->fence) {
> -- 
> 2.49.0
> 
