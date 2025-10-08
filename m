Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA513BC443F
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 12:15:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A591110E0E4;
	Wed,  8 Oct 2025 10:15:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WixeArx0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F56710E0E4;
 Wed,  8 Oct 2025 10:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759918499; x=1791454499;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=iqsFope82cF4nSHiTPxQfsLGKEnMAyDwZn7Q0ttg7Lg=;
 b=WixeArx0TOKrd7YAhhu5OHoUoiGRLyVzisQ9raL9l09n9M8j8/36oReq
 RqHgi1lxlrkl6b4YH1tX90QrCApOneOEO6+HOIFP4XcuifgYV7e58QsP0
 oBeekv2Apg69/pucUMAyqe/rNtKLDtJXiV1Qv3f/mH39vqiskc6in3/Mp
 6W+cNdKcPbEmjkJB7NrAw9J1pe/tdLhKRRA3NXxEXS6N+GrDBwXpHHobE
 /8UaSlvFybPja11Eg9RjK6mKlcGwj7CAYHb8QV5I4KI43OvAEre3+Lccj
 3ZNj48NR3M/vxOlukHKg30XZlo164yWiNWClCpkHQgqhndmaZISbaSBNX Q==;
X-CSE-ConnectionGUID: N58HWuk8SRSB5OCsZF7uvw==
X-CSE-MsgGUID: MHZhVjdMQ8qz/7Tng1Ez+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="79543245"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="79543245"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 03:14:59 -0700
X-CSE-ConnectionGUID: phhXdHUwTAaFGzx3iZaKtA==
X-CSE-MsgGUID: zbfGVsPnQ/O2X5Xs3dc9wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="184437469"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 03:14:59 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 03:14:58 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 03:14:58 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.50) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 03:14:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OSwynAg+EO5KgrbgkaRnyL7UAs5ELbfG8So6HwCFx8aNRCCmXM0xY5kBumWUmJWnYzABwZJqYqCE9UYgIsuwS3VLRnM/kl3kEZ2eRNPOvIbyXqAls4clKUNReYN6gzdYayb+94847Lf2WLqDRQGdpIbhjTGexFHiD6DnpQgLDOjZWkw2OS0hGBfdtq0QdjB5Gu9i45e5n+Jf2t+HKdvrsatdFwePWHyeaqMGmPuTNlPvXw/xWiAbq0cq9/GKi5yzLPqFXGn9AAKp7F48hSdzXqzcmCf9jVlnc/jxE1fzbvmPDWZrqe2syFDuhS+y7HalSIrQkw4FXy4VTX16xdzDRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vsoHXsfF2bMQwravrNfcFyA50hOZPCgSS8B8dgsTUCw=;
 b=iCEPPF0tzOIR1RlxlpBvxGXh1VOa0I2nugDeHG+VfLZrtfweRSPcedgoUlMrdFA/N5lGkvqY3f7oS7x+TTZXQTbC71RlIKhs5726m0TwJr7bcwSiNRjdzM2iFAkBRUjiUMqsQuwfx9AaGrtQuu1jyhLhtP93Maoip1Y0UzEOmZegDWAgZgAETogJTcENqOdDvj/8Kul9Lg1zmjbClyzvAEBwMfVQ8yGCGA29DEgMX+9qAq7jt0QiistQiUaGxxZLvnwpDWOO9Hw4zbUimyTwJWyYbP5XjztEbEG/8SfmvSBp6gvPXavlINDikYgz5s9+YCj9rSJFvmCGGzvSWHnsCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4563.namprd11.prod.outlook.com (2603:10b6:5:28e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 10:14:51 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 10:14:51 +0000
Date: Wed, 8 Oct 2025 13:14:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/dp_mst: Verify DSC vs. FEC enabled state on
 the link
Message-ID: <aOY5ggOnmgO3oAC1@ideak-desk>
References: <20251008094108.88242-1-imre.deak@intel.com>
 <20251008094108.88242-2-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251008094108.88242-2-imre.deak@intel.com>
X-ClientProxiedBy: DUZPR01CA0233.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::17) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4563:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c946a78-94c9-4880-b942-08de0653845b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QnpBQ0hzS8JT+ZR6jVFcTCdJVMR4uyGZ8HXx7g6pyMWucRFaw5yre2t8Vkhx?=
 =?us-ascii?Q?CTdKnvmHJQGV0S9kO9O4L+0KX5a7Dv15PpfHtDw2JMsov7obUMgA2e06kZ0Y?=
 =?us-ascii?Q?s5FQIMOcwSs004NqwuI3Ry1CDCCMf7pkcTS0sbZuMljq1w8jyRpLRXRIAAIG?=
 =?us-ascii?Q?Yae55BrAZfd1EInh4fArQeYF5NFq4NiwCCFLb2kHSDsyHxOfrBFS/2dK4RXp?=
 =?us-ascii?Q?NMrxOmB1FrN6o7OBq+Zp37w3Tp/o8fcokV0laPp4eEpL8MNQlLaF/6oOP6tt?=
 =?us-ascii?Q?ZRNFvrb4rrxWZpGA9BIg8jFXKYvZSfBfgTFaUTEpYki3X9Onhx5ZYV78xijq?=
 =?us-ascii?Q?lodYJKyvZsI95PlaFIIYJTXi2Q5fcHcuKntpCGPKIqtudHszwqaifJBt5xcg?=
 =?us-ascii?Q?iH4i6bwpRO2b+zm/vmYGhElP2zBiepvj6s6krllpmkE749XdurExWdeLhMi6?=
 =?us-ascii?Q?BSOijGYlOB2N50QBsrgSe1IISazqIyEQvToOTcrY2PtIKj6nt9K2qgSiJtX7?=
 =?us-ascii?Q?bj9Rx21UgCFMaktNPBbdbZhcRXLrZHfdftyIH4AfPB3/Ub68eD36b86iSPBf?=
 =?us-ascii?Q?LfiGr7WahESQ8A64mzBli3aAaooX0oEwhNqnVYhSPGWcI7ddPRDxXnxZv/yq?=
 =?us-ascii?Q?9TPDo+orn3r8xtmH6bDNJgqzXoNDPNQ6br00ttORFYaZhYxvbs3uyyB/21am?=
 =?us-ascii?Q?x3xpatZCSCLRpDpRq+TIrQIvKIvK2W5KLyDLImqWE2UDEsZoBxBwGIOS1jG7?=
 =?us-ascii?Q?VXFVm9A6PrnPLkGWsM3fBSgU+TpyXTrj4CtwTL74DLY/8WAxz7J6jxMxz1CU?=
 =?us-ascii?Q?wjD6MOGN/hE0Vm8n57oLvztEhEVyprdauCwWPS8a/MwMf6u2euUCcxVWqb2g?=
 =?us-ascii?Q?liZlwsRWVJVto0XzM59IAW2/+FoeCG4X2CQ+eGmKhk/DrngHPojgckh5HT0N?=
 =?us-ascii?Q?zxxabxoOLnlYSNxoi5gy/+h6gNgFkY5GCXX87jbni2Jya/9F8LY7DL2gI/i5?=
 =?us-ascii?Q?C1FUWMY86tFrObm3+3wDmbekbFo75aCMRWomNYt64VF017rLUhoFRE4ewr9r?=
 =?us-ascii?Q?Tbf+1EfF6VqSWZtrrKKo4H7s2xS26OyRIREH2pwaF9Im2UxaaqN9I8gqCuXt?=
 =?us-ascii?Q?2VJ+rUD+xyDHYbysXcUqM5ciONtV6xUU3j2AVaPWZ7k2MHux23DgH0CA5F1Q?=
 =?us-ascii?Q?7Fb/JI/uA2nECwsRit4cDuShGf7tkgtc1IGuAvzOXW8UZm3LkOIilAltxFiu?=
 =?us-ascii?Q?EjytEV/0SgpTvJYEKI9U9nlEAU3bQItkH2WNOlLXEL1JMCu1YHx/VdDJgzSm?=
 =?us-ascii?Q?poIF9fGVbc0ZLlUylRdhITE/4zrNtk2NZQmV1d2pdU3oCcsVwim5iVwtJlBS?=
 =?us-ascii?Q?b0yfCSRoEO3w9fMK/FvPMVnypkSgEK40MrpZGv9KvdEDmROfa5S/umVsCgcj?=
 =?us-ascii?Q?gfUVMShSnVYyLuuZ6NSxbh9B4DRmFKbu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GRP2ZhhXIuJGhbniksmnZ6l5EzGWkW8XGq34Jui0D0A2+f9qKjOc7H+4cOxe?=
 =?us-ascii?Q?AUnTGjfPDtB1GvVbWBv3SP2pxLViR6Ux9wscfT/WkuZyhXdFbSH3kUexW1L4?=
 =?us-ascii?Q?816zNqWXEgmqpHQSbuZEm6FzOD5SEG4/1taFXorDBkma2J38pcpiMVa3IJC9?=
 =?us-ascii?Q?JkPa6t++Wqu2coWKTtv9Rh8aFjXHVyytAj852wAAzXNIQHGXI7JnUr4zEfXx?=
 =?us-ascii?Q?NivnjrJ3y2PgtWdac8wRfe2aixgs0I4MJk7D7ZkfKSlo0X2Ux91VANW8Qp8I?=
 =?us-ascii?Q?1EYbv0iiY8ru3koxSAJpkacT0qOMKAXUeoMbGYZXVq9ZW4k1qtSzRNXGo94i?=
 =?us-ascii?Q?UXGvxce3xlBDCFIPGbePNl3ysGE1//04Tm+5a9Ku8+fMrgyKDHFywMDor5Wg?=
 =?us-ascii?Q?VpFsdEs8+Nw5gJnWQxOeF57pJMWFrSc2688RBtiF67P2cktq8RrGDiIe7mAi?=
 =?us-ascii?Q?WAV6VMIlNuVyrZa3eME/DeAZR7g5PbkenFgD8QVUy7OY5Py2nkKtBgZdo1QU?=
 =?us-ascii?Q?8eyDtD2jvjf1W+Yl9+CxdAvWVtnXiIEjM4o1BBZQ9eoHT0ZeVhAXBuLHmOtN?=
 =?us-ascii?Q?m66sNVCRh8cJ1fm+khzOWvxb1+jXe+jquZBfWAjK3wV6JmJOY3R9h1ruLPB4?=
 =?us-ascii?Q?GEViMKCMf7Y9RFyxuDWWvtjaN57VJpuYqz+VTEtd0Hp90NpgtVNYw4lEkIqh?=
 =?us-ascii?Q?T/xsm9lT38/baWqbbYWHaN76+qEWobH2yO0u13MV5+0So9QOvj1wRE4b7uTt?=
 =?us-ascii?Q?WvOHkPDWQPUTupfgBVfL0QkrXbdbYnvDQe6wageFxGf7FPm+2p07J3sVpZ1V?=
 =?us-ascii?Q?YXGUsX+6jMkpwzge9kuIzzEDEvqlw8854HMYzatUoURQUuUw5afrztkEGjHI?=
 =?us-ascii?Q?JJlJ6j7JvRmtAGdDMENCIxjJMQZezesZV64bTqnC+eySYUYYmR7t6TIswK7+?=
 =?us-ascii?Q?rF0Z316OQOFWH4HWEoXrqIyF/AsdbCplY++RZT2PJplSwHySzavmiFuNropq?=
 =?us-ascii?Q?kk0366oEUrUHFQ8FlKulSmxcZJzkvaDHPhw/8wujFBw4seJnrxvVa8XQLP9A?=
 =?us-ascii?Q?iSFcItxvkxQvOxnpHDR3Ye75T0EBh94Ff1doKGXR8NHk+Gh4ZmVqjUOKJZHJ?=
 =?us-ascii?Q?fqhCV7H0kGjB59MCA77+z7br20/u4Zhi/RewqLrkQ7823l3sFBae15qGr6EB?=
 =?us-ascii?Q?ZHQlyjaeNwqcP+K3pT/93+5fnvx648F4CcAvRJQrAIvs+qbk/4UwbwZl/t+O?=
 =?us-ascii?Q?b2cmDxmuWacuyzN4zI1mo55ePsSHOC36kU/F19usyXWfqgUNvqQaER0B2dA9?=
 =?us-ascii?Q?vYhxaYzgknHr9522Qj9k3LaNT6VfVk4SSFJdKQSmjYD2DkzX37oJbqvVIvVt?=
 =?us-ascii?Q?oYOpW0RNbl00OL/FfIFY5TU5qiV6aSGmeBDBx9ULMLUARVkfirKdzWTppE6g?=
 =?us-ascii?Q?lP/kyCpd9QftLxX1V8fy0EgF816M2lqMSQyZ9m6NRFsOfd6856F/3nBEPqWR?=
 =?us-ascii?Q?/NKJdwuFi3KJgp/T4Cl1mqDVvQi3Z0Lq9O8Zs7z/yYeckhbu8QnBppdti4St?=
 =?us-ascii?Q?aBJFBXr0MI84s2f3isay0RGCRZVI09yl9lWJb3ISeI/tXokb5y8EDg/SemNO?=
 =?us-ascii?Q?263x+a6u7M1/MhGsTJ4tf8dMX/csK/WBSeE7Cy9pyBwJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c946a78-94c9-4880-b942-08de0653845b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 10:14:50.9768 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i5vf8fY9axlrPIrQ+RJtSmAiPSs8apkqWBj1wZCsW71p/DTlQ3kGG5KDCLxpOyBBiUfGqDw9y2gDvBLN2HKplQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4563
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

On Wed, Oct 08, 2025 at 12:41:07PM +0300, Imre Deak wrote:
> On a DP-MST link the driver enables FEC if and only if DSC is enabled on
> any stream on the link. Verify this during atomic commit check,
> while determining if FEC is required for any stream.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++++
>  drivers/gpu/drm/i915/display/intel_vdsc.c   | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vdsc.h   |  1 +
>  3 files changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index f2266b2653046..73064829ab3a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -833,6 +833,10 @@ static int intel_dp_mst_check_fec_change(struct intel_atomic_state *state,
>  
>  		if (crtc_state->fec_enable)
>  			fec_pipe_mask |= BIT(crtc->pipe);
> +
> +		/* The only reason to enable FEC on a DP-MST link is DSC. */
> +		drm_WARN_ON(display->drm,
> +			    intel_dsc_is_enabled_on_link(crtc_state) != crtc_state->fec_enable);
>  	}
>  
>  	if (!fec_pipe_mask || mst_pipe_mask == fec_pipe_mask)
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 8e799e225af17..8bd855c25896f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -35,6 +35,23 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
>  	return true;
>  }
>  
> +bool intel_dsc_is_enabled_on_link(const struct intel_crtc_state *crtc_state)
> +{
> +	if (crtc_state->dsc.compression_enable)
> +		return true;
> +
> +	/*
> +	 * On links other than DP-MST, the only stream is that tracked by
> +	 * crtc_state, so there is no need to check if DSC is enabled on
> +	 * another stream on the same link.
> +	 */
> +	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> +		return false;
> +
> +	/* The only reason to enable FEC on a DP-MST link is DSC. */
> +	return crtc_state->fec_enable;

Realized ony now, that on UHBR crtc_state->fec_enable is not set, even
though it is enabled (since HW enables FEC on UHBR always explicitly),
so that will need another way to determine the DSC enabled state on the
link. I'll follow up with that.

> +}
> +
>  static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>  {
>  	struct intel_display *display = to_intel_display(crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 9e2812f99dd74..c5d7cf9ff6788 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -16,6 +16,7 @@ struct intel_crtc_state;
>  struct intel_encoder;
>  
>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
> +bool intel_dsc_is_enabled_on_link(const struct intel_crtc_state *crtc_state);
>  void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
> -- 
> 2.49.1
> 
