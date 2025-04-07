Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0726EA7D4E7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 09:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86EB810E16E;
	Mon,  7 Apr 2025 07:05:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DD+e3Epp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E20F410E16E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Apr 2025 07:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744009510; x=1775545510;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=LW9OPMhQXHCPHVFdHTtKSJa+/voI3lV9qOw8yIxWMJ8=;
 b=DD+e3EppVof2+hNB+L2rQKVGHQ5TolM72HbhPYgf7vnFbd/ezxSCKH7+
 VF0XIdVhdFxxpPK814KEq6f1bHEPe1KihiL+0ZdtYOUM/ZxHDBfQbMkOW
 SZUHNws6mdUwMHkR5YlPie0065s8ad3JUtGPM19Cc0eVhP1xZBHnG2c18
 7QvCpVXb0+e90VEmhAg2acBiTQ/DjQ8FAIFzHAR4I61Nbr5vMCuzFPRKN
 cm1eMZAmCbH8DGFbhb8dy5k+1nVQ0sgMbVfigMtwhKhJh9by2R/1cLjaF
 uCnG/Oirx7GmhQVouTbcCBd8o9wnwSPK9EDXSKhG3BSTCRN6eud3u72KD w==;
X-CSE-ConnectionGUID: WS2BZT8AT4mzmpO2ikAGfQ==
X-CSE-MsgGUID: PmMwiXtkTaCdFw8QXE99dA==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="62922822"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="62922822"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 00:04:52 -0700
X-CSE-ConnectionGUID: Ubj4mQlOTlK3GBbl8YXCkg==
X-CSE-MsgGUID: 2kOrrcJ7TVCodpPNqaJC6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127713927"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 00:04:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 7 Apr 2025 00:04:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 00:04:51 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 00:04:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H7Zu+tJGVEohXk4ktAj/KaP+bmx2HuhSm8lJi4iHdIEShUr8TEIvAE5Kzd3eluWZX+5RVxFB79CnElBsSrzBTIdCjvOATXNtDWAoOgKDCovUmQRTAifC6dPSsLCwNK2Ae8NGIMgOg3GpdztzgFNmy96FTUP4uPG7ZgRC1s4BcK1FOBdRK5bCd2K5Rk6hhMVg5HnBOGK49lcvWjrMtVR1F3o2GRfZFbR4bnz4rhGM3y6UzoiCmYOriEPa0cSl6TaCZ3Tc9Be3h2TaGssa8CaijpPcZm4rlYutPft7A5U4yOsA4u9OrekwT2CmvQst2dw2TMdOZRT65DerAXldEL3qoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0h8H/uwxm6ppB/qMqtJqbxcuaT7UO2P4p8Bxm2nxBXY=;
 b=ocyIbsTHeKNiEXwGKwgsW3sytobvfpe361aiBwsyZSKDRoGhBJE0ixoZ/XHawh4hMUFt9w3Ez2ubtyhJjmV1sO4IZ5OpqttuICUFXGeyN4HXwbawrNvLjJPluCSrw4wS8hvfaP2lDCrS4D+bwh0vtfQUdeHxKIUq5ZGuKzmLQ8YRTRKDwFylEuiFnXF/sVzNs15NurS4L2GkzqpuTv2Mel0b9gKy0qxbFr4uITuaBldUnHE1g6MBaL649iJGWcSj89JQhlX6GY5URjxLcukGWrsnqxucqmBLUXNQZKR+A4AZPeLXgnlEO/8DTp6no4e+Cga+XvDGQcGLo7oqSkZhRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by BL1PR11MB5287.namprd11.prod.outlook.com (2603:10b6:208:31b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.32; Mon, 7 Apr
 2025 07:04:30 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%6]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 07:04:30 +0000
Date: Mon, 7 Apr 2025 10:04:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Jani Nikula <jani.nikula@intel.com>,
 Charlton Lin <charlton.lin@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/dp: Enable SST LT fallback between UHBR
 and non-UHBR link rates
Message-ID: <Z_N5AAOf9uVeXPUV@ideak-desk.fi.intel.com>
References: <20250405003434.641638-1-khaled.almahallawy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250405003434.641638-1-khaled.almahallawy@intel.com>
X-ClientProxiedBy: DUZPR01CA0248.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::21) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|BL1PR11MB5287:EE_
X-MS-Office365-Filtering-Correlation-Id: 92c9aa3e-0349-41ff-f5ab-08dd75a27187
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0aW840Gtg9/SYoWV6zSLxtXAuNhUyH0VbBnBWy5mYVaGKcHT3l8zVSB9/2RD?=
 =?us-ascii?Q?3n5qR053K+h7i6Wtq49c8t6v5a5gSW3W5K3dXzK7kccKXbmHTAS0tPJD+htu?=
 =?us-ascii?Q?FDpqdpucq0LfEwRn08EJy7NJ2yVoZywQGqE0Dk1HdPf8S3xyBb2gj1DlnfBG?=
 =?us-ascii?Q?B5NjJAQPpEmrvRm2SfWZGohpyg4UmL6NhGqCa9VB5ZXXOmHZRImQ+aLKWkk6?=
 =?us-ascii?Q?KWHL5fI4ge2jPxe7ieR39a9KO/cUUdZjOTjVUxUa3EK6hM9nQUVAyD3XGCY3?=
 =?us-ascii?Q?WgFMCDefo3qdkWJ6K8ivkgRA8tgdssnBLkkMHpO4L7EGTBSuhmlie5Y0YSP9?=
 =?us-ascii?Q?MbepQPZVVxR1i0wpvMffKCWymfkU2QoUGnJj64huTEr7X6nHh5dk2mLcLlf1?=
 =?us-ascii?Q?iXV0WQdGWFFHxVwhmQbt33RaKJTiUbhNrRlXYxVy0iR9c4BA8Hcfm2I6CTKN?=
 =?us-ascii?Q?532pVUwXNyR6axl88WgxYHakGsxcrFRWFcYUka/dcVZH+0QKYonEM/jxQQrK?=
 =?us-ascii?Q?N3bqw26AomYMxQuU/dgDfnoqS+R/rOr4mssKXrdr8HIubZGYKnrTKEPmTW2T?=
 =?us-ascii?Q?4cz13twH5lohBxqQGa6oAeIZjCakljm4q9wYniiZtK76Ii27A2AOZyZkwayd?=
 =?us-ascii?Q?Fjs35p95yrslzxfkOPUoDVVVeYKSwsTRtj+kIOjg8/j4PLoWHj6ZZXcs4/VC?=
 =?us-ascii?Q?FvDOnqJ+55ymH2wmZs1CC0gJTOPe6BcE4itA85WhunGbdnMR3y56zwfsfw+K?=
 =?us-ascii?Q?1s2I7NbGTpmp2N5vSdHL8qoOTGukca/niHH8ZXda2kqTDjP3/XPqzitUpjVa?=
 =?us-ascii?Q?vdGxU5nVTIw1Nzz7e70pjf8JyevYtk8CidZmXuTdtRVWkCW5ruKP4ZDBmJj1?=
 =?us-ascii?Q?V6jQz+KZae+/VaoKkTKPuHgVSbnePBwVuOLfSDuaiZHq42Aan7EgqrmjhVp4?=
 =?us-ascii?Q?rm7azSCX2urgHzqNPj2CXUPdVs/XIc1CxF8JWG5QYagGFHmMAtBeA41If2r4?=
 =?us-ascii?Q?Jnf+4DEtte7Ij2iO2S4WH8VWC3SVCwBJxH9cMUE2NDNnmqqY4n+kQ4kGzN0E?=
 =?us-ascii?Q?oG0JLWiE8BLZ1J022ZJLeES/wFVtcGShaBK0L0APluQAe+4bAbXvwEZkEf+z?=
 =?us-ascii?Q?22XhPv0dDq70FHOL+PQg+ycrHwEbOCrZdXVlPfHfwN3vZpZVAF96Izud4G77?=
 =?us-ascii?Q?sJmkTLA16AAKsHbFfZttUJlPD+oFJ55Uf5cN7RCCDc9hj5i8QuHQUdDJAEIb?=
 =?us-ascii?Q?Qe9NQTAei4rkhYA9fZ0w8+v6JSX7m0oGSDwUJY/Cy7n/Pg0O9y2aogJ25u78?=
 =?us-ascii?Q?VWSnd/2/zMJ59P4J31j3NCKSCnUPYZj00Z0hY9eXCdBohIz+yoAL+ZyyGJca?=
 =?us-ascii?Q?gR+LdzTzLlJsDQVCVYKlpNLCeRZe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3c9KMJtw8bWKRz6jXwO/TmretjQ/KSv4w/WQV0Sxjnax73ANOxHGGBnCKhBI?=
 =?us-ascii?Q?ZnOvjpzi5CJYHlwFbEV5tXhEkeV0Kv9G8dtcgEOshI3X3UZGWjMfa84ACXgS?=
 =?us-ascii?Q?6v92fGm6kZvurNhmqeRgNS56y0J4xAKlULn/jvhud7gcDmFFR0stKeEe9rIw?=
 =?us-ascii?Q?XvlwcZindha0RLEc9r7JsY75901OQd1bppFMTGNltM/3r76kf6BOBHliBycF?=
 =?us-ascii?Q?US2ORrDzCp/K5kj88Wm9ydY4P2Y37syAupeosrIycdOAjNUZ1svvYRBgBnFC?=
 =?us-ascii?Q?4+HNwwsWO4zS56Kl0rzSp7KX7sr6N4daqLiwvnMbCAaE0caRhsn38eDjJl77?=
 =?us-ascii?Q?MC0fFR6A5SZjxbZmnopM+IsONR8dyDqmv91jIgGbxCAU1IdE3ic7edJ+Pt+h?=
 =?us-ascii?Q?EWXYrc/roT+XvuEH/w3tt71uCEgZDGBYrr0q2018GsZXCqUaHusZAYJHmW2E?=
 =?us-ascii?Q?+sFen75wl3fhN7ugFqeg6+e+5dQ0UHusJ9/O/OUkmHL9Vhs/dlj2GXk+63UB?=
 =?us-ascii?Q?86HFH2bbzPm6fwtymCriL5CIsRvvhV3M7qI6h+oKXhHHOt4QJAv4KY3+qtbs?=
 =?us-ascii?Q?T3c6sOGaXYPlZBZbOoXdwD9lLuEEG27Te7Qrg/zUmkG9NmGfuhvHnbwE9FmA?=
 =?us-ascii?Q?S9KLmWvUyTJJ5wYVTcfSelaJgMUxX7s4XLGg5q5VPt1R537ZKg+llTL9yoVO?=
 =?us-ascii?Q?bGKpj/nEyi/Iw7irCQukTLegnFsZovZ0YAWykihdfppwMCbHqxreaClDMiZj?=
 =?us-ascii?Q?6OhFYQ75FE8GuihOef/1bbo3D6ZfQjhxByGKE720YASjFQoBVMzBc+fVqvj2?=
 =?us-ascii?Q?acxApWb6RJeDATtlnVlKxUG4YUw+0BZx8szeoEn8DoC1DYAd7MYwN0ScU8Zn?=
 =?us-ascii?Q?MecBGyPQASQMroeoNdF77U31h/b1TvODcltOs1AMOe6HOlr7FoYZgIL2PbDU?=
 =?us-ascii?Q?q1BzdeBpYnM4Zoqh4F6ocKTQEvGUpfgswaJskewcNgdv3ICX93OPRCtDAnbK?=
 =?us-ascii?Q?aCKjVR9VDStpDeUK4qk16Ag6fV2LHUAtwh3dowrSMScXQIdr4he30Hj2J/U8?=
 =?us-ascii?Q?ZrYKnY7kDWyCH4G9q7AIw3ey21Lqbz8Zvv6D9TK/66nISI5YIUJyj5WKQRBt?=
 =?us-ascii?Q?z+iSfDu8BE93LPl6IP51PIY5+7K8LN7FpOg511Du3scyf5EmCpSDzS9LzDbj?=
 =?us-ascii?Q?1/50HdH1OX8IjgcMdfmuq776bFTtBTd2BaTqCnM8/f/xCLTtQVxYnG0xms+1?=
 =?us-ascii?Q?/kqmVEcsizbhQnB0jpHeIoGxb2Pye3FL2xQQ+wfi5OCGQyu6M7Lw1z4S+Lh/?=
 =?us-ascii?Q?hOXG1dNn++JacjBjSPk5VpMhQYaiYzCdIfLBMbm5q5zIPAp9xAijj3r+Npmg?=
 =?us-ascii?Q?eb7R+l9HU19SgPhI1Qx0hhKMquHSd+q3S61yEKZodyXUnNnx0L8BPeFB0cAm?=
 =?us-ascii?Q?lQScmnVccXvAmCtFWJW2oCn5JbqriR4DZXISIQiJHVK8jKAPq+Ru1/ZmtyD3?=
 =?us-ascii?Q?6WVahvOVQpg5zcNk5jx1aibi6ArIz11Fw5bLuFM7dpG3Rl45XCoAI3CqmFnP?=
 =?us-ascii?Q?vnVwcku+rxQAv4/fEanRkeL5dtwBqGDnqT5xl3hq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92c9aa3e-0349-41ff-f5ab-08dd75a27187
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2025 07:04:30.7917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SOQAlke4c+5R3AD3T2+w3ZxZkP9Lq2TPBeCTBs+WwLva3SzRmV3eDnCGwFkBgt/MFD4Jw3KVYsl+uKqDh6kv1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5287
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

On Fri, Apr 04, 2025 at 05:34:33PM -0700, Khaled Almahallawy wrote:
> With all the pieces for UHBR SST LT implemented, we can now enable LT
> fallback switching between SST UHBR and non-UHBR link rates.
> 
> [...]
>
> @@ -1303,7 +1233,7 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  		return 0;
>  	}
>  
> -	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate, &new_lane_count))
> +	if (!reduce_link_params_in_bw_order(intel_dp, crtc_state, &new_link_rate, &new_lane_count))

On SST - during state computation - a minimum link configuration
required for the mode was selected to beging with. Simply reducing that
link config further in BW order as for MST (which selected the maximum
link config to begin with) doesn't work.

>  		return -1;
>  
>  	if (intel_dp_is_edp(intel_dp) &&
> -- 
> 2.43.0
> 
