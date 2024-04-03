Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 575738978DD
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 21:14:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93E8B112E56;
	Wed,  3 Apr 2024 19:14:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PZ86KsSF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B2EB112E56;
 Wed,  3 Apr 2024 19:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712171691; x=1743707691;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dXwe/3xmnawvD79e156I+hmBmLStyEgOQP73W8cZdXI=;
 b=PZ86KsSFTa8yBA1pBFWiXFi/gt8mJUvxCmBJ2U5t3W+hz7IxjNLyt4MT
 7YZo3vP3aOPZavXpV34RyLrliu1DrhonSLGtAn5f2D2wKZGrgjflSp6mE
 kE9w0C+emLvQt3FB6G6ivr/jKPwYh7ZaHOClS/+A/JzzXmxAhfvirBo/U
 Yl2ws/WBhMwBGpWHEz+UmCn0wB2b7UZCKG1j4Z53Ok13opfRycFyFMh1l
 fZZAwoHIjxm08gZ/5g7yUJBlokTM3yTQkk9HoNgZo2ImD0P9lI7W5mFKF
 iY1GuwTuwu80OL3p1LOljI8Og/k59mMtroPcB1f50B5sj3htAMQnzZPG0 g==;
X-CSE-ConnectionGUID: mcLA4krDShaKvEPN0nma6g==
X-CSE-MsgGUID: ydR5HINtSWi9rUE9Aa+i/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="8003617"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="8003617"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 12:14:50 -0700
X-CSE-ConnectionGUID: JyABWRjRQt6pR4Y98VZqFg==
X-CSE-MsgGUID: 3FW35b2cSYiZW34H3/Nnew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18648844"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 12:14:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 12:14:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 12:14:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 12:14:50 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 12:14:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kHPoopwhHHc604RihENv1m08SuKd+tdGnwUUiUGR3L4nWyGz63+hEPIIlTratMD4yt/eYdlpkAhCsG5+gH6hxifjzjJ9NPgdOo/7p4HEP+SQjo3YtOtmIvUTh03o3ITkoWChQ7YOs8cFv/bb078t9AzMpv7rVffToTGMvPBzHca6Cc3K7kvoU/czKBEuj03BVzR6ciaRLX6jOd/g3HUn/VJlzl/T9S9wcBkFfcvP9vgmt78snwRuE6SLFm5o9fWdGBEOVxR+t76AmzlI5q8s5MgwcQT82LYnd6RDAqu1m/743qwaXIpurQrDDPQnUyWpDobkm+Lk8a5TFA4UkzG78w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pGFsb4E7HU2d8lA+SLIBVFifUftJe1gfPUKEBJNyxAg=;
 b=hzdEcm4yPkA7xTeDBMdAdiOlvk9sC6qiX84xQ1bGioQEMwShGc6Rf2X1MuilqJbvMcDgAcjyUj4eOD+RhHtxu/mFOBqxwd4gyW8xgg9pckgVd/9Om4wgOwcLZVbvrVT0XuV8/vr5vCX9edF9gi6annTsum/o87jMGQe4wwGpkec77wtlueHUuIhdt4s6ZLpcsVH1M1qVAtjravqWK8fnEd4AH8BCwd0ZWKJUhNsFnqfLcsNskRJLeZ86arPm3boDyt4onCO7LGUafqDSVNCAESAbbVeuLY3A5x6HJQfggEsxwrsyq1hzrYkELHeyPgNfCMQopRpfLLbYITBA8NqUYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6346.namprd11.prod.outlook.com (2603:10b6:208:38a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 19:14:48 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 19:14:48 +0000
Date: Wed, 3 Apr 2024 12:14:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH v2 07/25] Revert "drm/i915/dgfx: DGFX uses direct VBT pin
 mapping"
Message-ID: <20240403191445.GK6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-8-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-8-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BYAPR08CA0062.namprd08.prod.outlook.com
 (2603:10b6:a03:117::39) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6346:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2pAe5FcRypthaJyC7jRnX48CyFOivxLIap9cvSKLaZK4VoIhk9sgYpIq3K0CbNo5mxf2sluG8raRVp55v9jpg5jZfwMwXlaxWrAfBjhITVM7GLXL2rvw5/vJC5MysPCgWIuyjgxMXfUpqAmZ8Bbr9BNeInWUxSLvDpFNaZ+xkvRyxzh/zEW5BWSAQY267aAoPh06hWuaucE48a83Ob+wN+BRVXmxB3o2ViBbiPFvW3PpMxi53r/a/wMqvl1E6mThFOUuG5mObb1NOwq0M5PvKa/Z/uX2eL4EsDTG3Axz/x7aZY5CQhlcPGIeH7fEVjN+kr4cPhMfxRYbec7doy6BpTPaxXyfBz0KEkEDyXndDVhWXfaU23p7UqKV3Hpk3DWtGMDHJkmOeEbkX9cfyQ/MfFYYWHIQHXyDTp97HFYFjO6R7muh3f0zrK7HAy3GUENHzwtC1VXX8Kkal0gKkg+xL6R3NsrpRyYoQagXtPeLAUVP7B144WyUwmZKCBq8SMrAfjgTY6BtQiI4/xJS8x852DrTzw+ZppMQSa8SaIQhn+gO1aTmzQDOmt8Uei08wKyFHQTApeahnhJhtCyYF3s1Zkni47flBxYl95Y/3AwyQFzJb6knFKTbdbYmCuZeDtW1pDJHblvPPAev8xpLjp2LKgc/34fuXIovIZkZDfpaa5I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0BjI9LMFPxSw1dGcxI8K3gieNFxznSwLrdHcjLnYOxo01t4EnnFnPy/S2Wdm?=
 =?us-ascii?Q?zcoTDKkbkQ/5cWPVkZ2SfAH7OWH0HhvvWLiV0nvqOnWMycdLgloPsnTpL+AW?=
 =?us-ascii?Q?hYkezoBDpjQNwvYEgAJifmP2Nidie7vVRZLE2PRU8VLg/fahzZgRVOkBiSjx?=
 =?us-ascii?Q?4wQawq/I5Nbk7Nr+JombacaaTQn9DET4Pti3STL18idgRNd9EeuYxwokyx79?=
 =?us-ascii?Q?lPNVqUKT4yqnTDLM+93zYKdxPG9wjkFK99wvKFv9i84en0cmrG7x5IEDEm+L?=
 =?us-ascii?Q?qFejCEVzo1afOXgTQBOu1jsGRB3Ebwg5oBD11RiXVh50B1UF/oVaC9jgFktc?=
 =?us-ascii?Q?wqa579K/IErXTCoMWWGtu8lcR6hkPGkkpq6MgiIGMjktOD7TCFFpujnjvvtJ?=
 =?us-ascii?Q?QTnQyVCQyMSRB2FPz8fZthyNczdmoZsufxA9uExbkDBq+B60HJiOeF7rrB91?=
 =?us-ascii?Q?VU89dkjpDAtuIqCMxTgAQFwzPzgPRaElSS/heLkwF+Jlnyxch+KslLDQjyMi?=
 =?us-ascii?Q?ugKdiF7KOgatcwLd4nVlj9gtWA+e8f6KJKyXxkqN8c4P93F6slAMXkx1QBdR?=
 =?us-ascii?Q?B4G+6xSfq0tkbIUVSX5s5FllohZUyq04k/MSWqw/w45FlpNrUe711ApvcONS?=
 =?us-ascii?Q?IetfgyVCANvJ54D0Yp9yxf/jMosTt1fL2Dy/RYTAH+EhaD6/fMhwsdyANnhN?=
 =?us-ascii?Q?xLijM7384Fs2cleI4DFfEhncZLXvNYAR66QV78iYNETDpHpOr7YFZ6OjImx2?=
 =?us-ascii?Q?6vlp8UGSvMNICYSfezw++EgqppSdEXMVlPC+HM+r39pegY8RWjrebdDcRCxY?=
 =?us-ascii?Q?hA3rad5mQR6u24jv4dmxIOwRVjIY3q9D5G3Wf+JBMTgEj4pzcyl+2kbfDHTj?=
 =?us-ascii?Q?sEH3rc8TGBtziCmEMBkIw7mAhnPfFN/ih94K0s8u8MtekH9xEkjdcuWrwYGh?=
 =?us-ascii?Q?4pfhrP9u/5YKOgSlTFs7ATu+P2jjdi5LZemEhMPBAMXKqKcnoIuOjnjiTZiy?=
 =?us-ascii?Q?R/p9WNMW0jweDyhlwVnsiOuFIu78RN2a29woqbB4BikONSX8aVELQsrN+45R?=
 =?us-ascii?Q?gC4/UleZ6+7xqeaJEIk12Q9zdspDSAaeGWPNh1jXWl8SpB50woQEQijjL5rU?=
 =?us-ascii?Q?8fb7CbKsgkRY00mFrKKgIdq8iNMyX6P3vHn6O9vDY3QBuJkd2msNouW1HFsW?=
 =?us-ascii?Q?v3x4Rg7XKxglESA5rRpi/c5EMxIxnNWmzi+MMBfPYAKLIFu/SENnvJ9/tTA/?=
 =?us-ascii?Q?+9Gx+BNB07S55AYHc5F/wTko1LGta1O2TwjlxYF7Qxdr3xzRIVfWUlSZasmP?=
 =?us-ascii?Q?2QhVBn9xFFeT0k1td30MOoOyxebP/AGjX1RzgpNi6KEzHdsHrA44fzx3Ikj7?=
 =?us-ascii?Q?rb2MqdGFZIv1oI6x3KZz9iiK1qAa5n0Lv+45wPA8hmVObY8F8JTGnoGTrLu3?=
 =?us-ascii?Q?Vnd0EQlzSQ2AhawtZ0EOCUsQpWT91bVbX6znHqXXuHYIYtnrB2GZnxRT8QIq?=
 =?us-ascii?Q?lk8gt2hFwo3YS+Ox+hq6AZX5BjHS937uQko3PloPEkYudTJJVL6JU8j/qvBD?=
 =?us-ascii?Q?x7bmjH2DF7RSxMWCvtWAmaAtO+npD8mtsSnYfdcQCjdxf0it0k4jCTGXxWW8?=
 =?us-ascii?Q?gQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3d3ec0b-0512-44df-2877-08dc54125438
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 19:14:48.0249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v7jUC9PoILis1sZ0A6TWgdW/iD5Lpb8qct5hkjd6tSl+3L1ge/GC4RTSgSWMnH/QFG4wMjt8ya/Xq70vGMrYiskpBJfUaNa5i24CG4W2szc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6346
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

On Wed, Apr 03, 2024 at 04:52:35PM +0530, Balasubramani Vivekanandan wrote:
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> This reverts commit 562f33836f519a235e5c5e71bcc723ab1faccd2f.
> For BMG it seems that the VBT to DDI mapping does not follow DG1, and
> DG2, but follows ADLP mapping given in Bspec:20124.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Matches our experimental findings, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

I've pinged the internal ticket to try to get the documentation for this
clarified.

BTW, if you send another version of this series it might make more sense
to re-order this to be after patch #20, since that's where we define
which south display (i.e., "fake pch") is used on BMG.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 2abd2d7ceda2..03fbd6c73f3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2238,15 +2238,14 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>  	const u8 *ddc_pin_map;
>  	int i, n_entries;
>  
> -	if (IS_DGFX(i915))
> -		return vbt_pin;
> -
>  	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
>  		ddc_pin_map = adlp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
>  	} else if (IS_ALDERLAKE_S(i915)) {
>  		ddc_pin_map = adls_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
> +	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
> +		return vbt_pin;
>  	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
>  		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
