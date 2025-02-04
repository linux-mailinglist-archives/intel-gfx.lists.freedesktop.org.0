Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D081FA27EEF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 23:55:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A7A210E701;
	Tue,  4 Feb 2025 22:55:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JUnJWCSG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E7A10E700;
 Tue,  4 Feb 2025 22:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738709734; x=1770245734;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CUFHKGkntO2z8aM1EH3Xx7+6tJpsC1Ut6AYtgS/pxz8=;
 b=JUnJWCSGWIBok0JERm7p34VeWzCkLoXACrA2DmVnVDfqVASSyLzsR3LP
 CqrGkWBA2RCpN/9SS6Ej7iXt/JqKZtou1EkmVdQ/VipWsc2xWwYsLs2zK
 0iCmnKN6XQRyJKmRkRL6M3oB8PAOJv0+OrWiRGV+ypZkNnYAAlFUl1W6m
 lmiBPMFoPp2AAKAixSzLu70C6IE4YMqSga+J0IiJaJgHZwCGv/xuoWa98
 t4MujxlD2va+tzQ+ArmIYQsVW0zKs5KD9sNLffa6aLKDxUivVpGI1HKVP
 B9DvofzaC9EJ9nHTvly3e/qUG6SSWbww12YGXIowwSMiCaQnAaWGyec/d w==;
X-CSE-ConnectionGUID: 9CTmsEXVSeGGDdUKctKrgw==
X-CSE-MsgGUID: L1ttvhwUSQupvwEe/q084w==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49877323"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="49877323"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 14:55:33 -0800
X-CSE-ConnectionGUID: kCtFD0aVT9Oph4EcHVlwnw==
X-CSE-MsgGUID: Rk7DYgrfQ52ydTrxXcDJhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111601384"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 14:55:33 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 14:55:32 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 14:55:32 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 14:55:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d7VNddpasXWSX88VzfUqig6x3MfWWRRetI+ziy/TqIFleqdaynEFT/OAidUj1xKOfWY2Y2u/dYYFmQRvaYPt/SQi/lzPoid7sVIZ4p/Y9ZvzF60uUoT5p2mlO5wI8zHC5GzmfPNEqD3fiSwlTsvvKC3St+l2nmwYbYcUCbcGfh/dBNZMzdWFftChBFi5uQCBoXrqW6bQIJWQ8Q8HiR3etlVBiKeKi9bifccRtdSySCuSCiAFwfQn0Nq+LSwXkOG5C0CCaUB3+kAR8m6SSFSx1p1nmgLT3cEwNEbk9SxVBZNCQS9cqRwf7h5UCJ5sROqm5kTse+Ek7frqbw7bo2QDZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6C11ZpWcNn1Axbbip1OS58IJI2YHgQ1f+WiO1MqgrHA=;
 b=qY8nwNiYScifBPgkBwSqIzXhmNGjYbaJkFRg/iIurDbHxkSef9wjFKVpzScoDdiXfuwij8jFl2AspCsSy6/6Re3oAcEQ8SU6L7ijWFK9HxiZVcnHoYyyxUFKPJeHhj9tRhhYZyKnCveUM92I/00uq2n4P2RIcfxcCw11eaogYPBmPTPZ9J4Fck2PnTakmFXVGdYx6ibbYwqD2OecVqrFXAoe1sh5KOW0fEYPPlPEMQ7w5CJfSn/5xwyrZF1xrXYX4/pXEUPVhJVsHmS4WZaygpA/EfsCei7tFDPkS/2gBtZG1YZCmxdPRVE2clcj6knbpcvO53QrNXQVHT+tO9R9dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Tue, 4 Feb
 2025 22:55:30 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 22:55:30 +0000
Date: Tue, 4 Feb 2025 17:55:27 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/6] drm/i915/lspcon: add intel_lspcon_active() and
 use it
Message-ID: <Z6Ka3xwPyuqButMW@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
 <3eabe0cb07a84c63119ea893e149de410b4356b0.1738677489.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3eabe0cb07a84c63119ea893e149de410b4356b0.1738677489.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0190.namprd04.prod.outlook.com
 (2603:10b6:303:86::15) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|PH0PR11MB4870:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ee68a11-9d8c-46e5-e041-08dd456f05e8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?O7kHTz/Nr3rNa16x1IUnmDSYrsfb5HSTEux8elS0vRXnu0WhD2b742GRVWNK?=
 =?us-ascii?Q?/q7zlCxSJDrmv8PiA2V8kvrfMUkT9ye4lIi6dw25adXlY31zqyCzkXOBct7H?=
 =?us-ascii?Q?jJkJivT3faHWZvwFgwBTxdzGb51AI7Kmmevr32gasf4R/c1jT0iDNjrrGYyG?=
 =?us-ascii?Q?tQrBrXPVynhW40up2zR+mCDY6WdlgZx3RS0UtJh+52ST0LM7PU7p2F+KcJr8?=
 =?us-ascii?Q?3LTTnq9v9dcIXBLvrTfYhzHEc6DbBv8tSFvEh+W25EhS32qi7LqGzDJujZbA?=
 =?us-ascii?Q?Te2yvjrTxk/kqF1OpO1wDAtUzCWB6a6Fwz/hx4I9Awh9f4WO93vRcNtbewgh?=
 =?us-ascii?Q?zt9GG29CyZ3M4tLm1jFCfiL0Qq0wXi3Pza3yRg9ti5Jjxo9Z7V/ZpOjUn0td?=
 =?us-ascii?Q?ibX2GIEa8FJSL8ElBbi5fvwhOoOGRgYgz7lqQa/CIcfcv2MWw/HgIl0/LZBG?=
 =?us-ascii?Q?Jv+KGejQqNQU38EolC+hftYVUyotAGz63AWRk+qYU76weyF/EM/xWrhjWqYV?=
 =?us-ascii?Q?gjWQZevE/7Dafwv5TbiGcvavaoMej+SZlCnmZ40YLBZUa/ZKmvypl1e/0l3v?=
 =?us-ascii?Q?g8heVooKH2JrxXSkfez/Wtt0NTjlNHdtgWM7phBpGNrVMa5N3DAnK3TX4wsj?=
 =?us-ascii?Q?apNGsGBDwKlrV8Sp7IfGKfZ7XeXIm01/65mlYT76xs1aFqDVvYQnP0SccSgG?=
 =?us-ascii?Q?rriaokm6Bod8iyg4xMkvvOlk29FbL2QxAVPlaLxLbNmlm2UGyNjiWR0FvlbY?=
 =?us-ascii?Q?qRquR/28xYyQkXMJ3BFK9MWhlgCipg59b7htUwaacZFfp4E5d+Dag5jx31lV?=
 =?us-ascii?Q?ppSI442qpkLhbGU0Fo/fc93NreFXWPM1Aq0ow/g8WZ+iAqm6h4iBhF9aZR8E?=
 =?us-ascii?Q?lp5aRspl3Flr067MngJP72NkFw59W86g8aPdmjB0eDRVjEhsDiWkD3Tj1Zjr?=
 =?us-ascii?Q?o15nX2dE9eBLH5fI/gg0N+JCjB6BzVHKLqMiRTuQiDosW4VHYwjHSguBefVP?=
 =?us-ascii?Q?lrefoi0lLIZ05V9F3xsYCS2Z3kjQ4pmwOBiS56DQqMBqqdPc5mL7lVp/LqrI?=
 =?us-ascii?Q?QMGNxLBeuF9OLyBL7OWliQ4AZe5olKvOQ+IexiU4aLnloB6IP4WB4mN6tvDt?=
 =?us-ascii?Q?hS8hDSlJ48LVJ382hgjjZKIZpPPObExnpr6bpDoW81BSCOu4REL9avo63rQm?=
 =?us-ascii?Q?wS6Djz+CoWvhpwvPsZ8na4Eshd6syUqB3NwWUfZ1pQDfRhm3DXkbJmKj9ypB?=
 =?us-ascii?Q?U3pwRObcjTZFKwA2RTgOw5jb83RO/6BwlwQYsAVhY4WAZD1Umib5KP2aJHQs?=
 =?us-ascii?Q?NvSbIvxgOBRtqnKXJQcu6dIhgcwZRSinQrDD81F3OJYPDT4M4Ug2Lkc3AnTM?=
 =?us-ascii?Q?ODevWX1+Fqvi7vVl/3gdnvLlIlbK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DoCJbIYCyMazEJ7Uvyf1XTe2DhYv+THbb0hr2NwJfosycsd1uxIU7rUd0LeN?=
 =?us-ascii?Q?Zyiv+ewzqHB8w3IR3DfiAzGGHJIUJiXnl1mWLPTOz3s8Z/7yKWSTRwtePkOj?=
 =?us-ascii?Q?BpKIMCt8kCd+Rm7tYhFfXu2ZTkx7XTv0wLvNMsLBZO1NI0damT0P9H3cNAK2?=
 =?us-ascii?Q?wrzS0Wl3Np/bCOCpr0JatS8aLyCxIiSYLXAzXmGubevjz/Xi1I5cn3BczPmm?=
 =?us-ascii?Q?6FWlnIbJQ2dNFSqlHYeBWA9hWZs/mqYxst66tqp1c2qmWUtkx3LJyzrXalqA?=
 =?us-ascii?Q?wY3wzR+9VkuHGaTnWuCvVql8Xqy/L452FTRpi/3vqvQMLpAevBCODdIvId4a?=
 =?us-ascii?Q?Sjk+WoqM9vF52feIA1xB4/ipSjssMRxAgBzsUs/vxAZnnsDF6KnspaMc3DrQ?=
 =?us-ascii?Q?EDVRW5w/GGA1mzdb7Ly4COdlHXoAtook92OzSf9ykJLitqYhvL9DXZ7iVVmx?=
 =?us-ascii?Q?znz0Y06Y5I2IrCY8YTNOP++FkQAE9C6YGA3jV1r7qyQp+dzS0k6ej3tsl02m?=
 =?us-ascii?Q?U+CBY29ZaCKcSNEJZgasAN3S+U20X8mBbijhBzM57fzaeUvqSNYIqfgKWHKg?=
 =?us-ascii?Q?iIdBm/OisEyKO9fX/0W/PkwEdEZ2o7cUCaqDIefpk0tzjzQNZc3x6FAnoIu4?=
 =?us-ascii?Q?m11ZZm4nSvXcvkmfR2Yo2x7EM6YxxjLJZ0e0dMgAxZd4t2Pj3BtyYaH7Co28?=
 =?us-ascii?Q?3ROlkiMOUOwOqukup6RFtlA23b/NsvhgcZMVQEnP0ToPdC/u8Gk85b3ymDpU?=
 =?us-ascii?Q?CYNoNFHCIpsLAXdDnGCXmMDo9bHkcvxVt6Z0/tIBAw3/g9Qwa7o2h2M6ZLN8?=
 =?us-ascii?Q?Xt6auKaO+ylI9FcpCeUXQpLgGkJ1z/9Ken3VKNeU9vFPHhG/yXzJaGA2u3Tg?=
 =?us-ascii?Q?ZRYg9ZE0KwAk7cEpl+/0k/xv15GhUzGhNbfyEwEJi+qzmqYk8ZWZ452v8jk2?=
 =?us-ascii?Q?my45hqU3liwiFuQ2kBmjQSRFd02Gbm3NK6GBp/+mW7IRcg0QUZhypcDzrcOM?=
 =?us-ascii?Q?I9zVvCCPyMZ/LEzHYxFLT+UqXYGNIcsTqFlhmoUv2kX+RRqIGiY0t6NFm5YO?=
 =?us-ascii?Q?FkCqdn616wgs3woluoqZGZfaeK7LTbCu/JqErQQRZZN/OJe2jHk/AFPSaDw/?=
 =?us-ascii?Q?g+eRi33gJJ+Ul79sxKJouXouTP8Jytyvc/HmatGIq7tdiLrOcAw8uLaohsYG?=
 =?us-ascii?Q?FV4bGyX6wJsSa0IfHXCJsxJ/mIUOav40gay6y/UKAQDaas4wQqdV/BqacyfL?=
 =?us-ascii?Q?rh7v5y+1t5icc4gp8sQC1JYxqgKJkmMcF1RNuEs7xXU/IQBOFi2aBvCAPLX/?=
 =?us-ascii?Q?/DI4scUol492I+ZpFeSG9RFMhXndX6FfVpOcq6jh0QZ4xHQG9d/6o8hTFsSm?=
 =?us-ascii?Q?MhjKST4Vt89JT+ioUebRVkAngZbKRWb0JDl4JQ8K/utYA5aKK0lqHahr9kR6?=
 =?us-ascii?Q?VRw5MiajH4e8hNfSWU4U3lOWAZI1UZW2Ul6mw9TktF/KY6Z9gSIO8AVAL7Wr?=
 =?us-ascii?Q?bkHJTQ8Gdb17EfL9gJ2KXcbSu4aKNSLGsx+2LQDd7vlj6gYCqxRObeLH+fiF?=
 =?us-ascii?Q?Wop+qddodpVeqh0q4wk38zoG02Zh/+IUF0bvlOk/OygbDoykzbZlVEP7Gf/6?=
 =?us-ascii?Q?EQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ee68a11-9d8c-46e5-e041-08dd456f05e8
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 22:55:30.1622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LCadbPfzJ8oX9QM+xltOE1he6amMsyeSv8n+OvjHG+/PO/9rFiZln1oi95xRyTV72Edbql2om+VLfkmfbk20Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
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

On Tue, Feb 04, 2025 at 03:58:39PM +0200, Jani Nikula wrote:
> Hide the direct lspcon->active use behind intel_lspcon_active().
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 6 +++---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 7 ++++---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.h | 1 +
>  4 files changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index efc412165a3c..c59b7fec20f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3029,7 +3029,7 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
>  
>  		/* FIXME precompute everything properly */
>  		/* FIXME how do we turn infoframes off again? */
> -		if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
> +		if (intel_lspcon_active(dig_port) && intel_dp_has_hdmi_sink(&dig_port->dp))
>  			dig_port->set_infoframes(encoder,
>  						 crtc_state->has_infoframe,
>  						 crtc_state, conn_state);
> @@ -3385,7 +3385,7 @@ static void intel_ddi_enable_dp(struct intel_atomic_state *state,
>  	drm_connector_update_privacy_screen(conn_state);
>  	intel_edp_backlight_on(crtc_state, conn_state);
>  
> -	if (!dig_port->lspcon.active || intel_dp_has_hdmi_sink(&dig_port->dp))
> +	if (!intel_lspcon_active(dig_port) || intel_dp_has_hdmi_sink(&dig_port->dp))
>  		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
>  
>  	trans_port_sync_stop_link_train(state, encoder, crtc_state);
> @@ -4086,7 +4086,7 @@ static void intel_ddi_read_func_ctl_dp_sst(struct intel_encoder *encoder,
>  			intel_de_read(display,
>  				      dp_tp_ctl_reg(encoder, crtc_state)) & DP_TP_CTL_FEC_ENABLE;
>  
> -	if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
> +	if (intel_lspcon_active(dig_port) && intel_dp_has_hdmi_sink(&dig_port->dp))
>  		crtc_state->infoframes.enable |=
>  			intel_lspcon_infoframes_enabled(encoder, crtc_state);
>  	else
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index cc6aba353c11..ef182ef574f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3500,9 +3500,10 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>  
>  		ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
>  	} else {
> +		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
>  
> -		lspcon_resume(dp_to_dig_port(intel_dp));
> +		lspcon_resume(dig_port);
>  
>  		/* Write the source OUI as early as possible */
>  		intel_dp_init_source_oui(intel_dp);
> @@ -3518,7 +3519,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>  			msleep(1);
>  		}
>  
> -		if (ret == 1 && lspcon->active)
> +		if (ret == 1 && intel_lspcon_active(dig_port))
>  			lspcon_wait_pcon_mode(lspcon);
>  	}
>  
> @@ -5569,7 +5570,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>  						  intel_dp->downstream_ports);
>  	/* on-board LSPCON always assumed to support 4:4:4->4:2:0 conversion */
>  	intel_dp->dfp.ycbcr_444_to_420 =
> -		dp_to_dig_port(intel_dp)->lspcon.active ||
> +		intel_lspcon_active(dp_to_dig_port(intel_dp)) ||
>  		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
>  							intel_dp->downstream_ports);
>  	intel_dp->dfp.rgb_to_ycbcr =
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 0c8bf477c2fb..e54aad8a5f7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -689,6 +689,13 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>  	return true;
>  }
>  
> +bool intel_lspcon_active(struct intel_digital_port *dig_port)
> +{
> +	struct intel_lspcon *lspcon = &dig_port->lspcon;
> +
> +	return lspcon->active;
> +}
> +
>  u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *pipe_config)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
> index 47f9ae77b328..4c8ba3ddbac4 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -16,6 +16,7 @@ struct intel_encoder;
>  struct intel_lspcon;
>  
>  bool lspcon_init(struct intel_digital_port *dig_port);
> +bool intel_lspcon_active(struct intel_digital_port *dig_port);
>  void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
>  void lspcon_resume(struct intel_digital_port *dig_port);
>  void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
> -- 
> 2.39.5
> 
