Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7577E9A4A3B
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 01:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F6F910E9DC;
	Fri, 18 Oct 2024 23:45:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hwaGCIDm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AA4510E24B;
 Fri, 18 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729295153; x=1760831153;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=A6Ns6ZMY+zzvjxL0qhSkDdsvvtIhhiUXd9w/Tmqzd6U=;
 b=hwaGCIDmTFYi8YJNuHu/CyXYHuahMl2OXQzpxIiFA6duiWE7vZUC709a
 zvjmjrv9ckodiTDMa0A+XLvxt36GY1hmU0GiVHqOoly3DMjrSRTC9HumV
 zMvDnXUO9VniEUeYoJYUk0OngQwxbBT5kZQpzuzr5JjwMN7qFdCUOa5AC
 L7EPePg0CRo9137Hadq+QWtE6pqwcoQD5VQ6cg+mNYYyVhzMXdJ+UgyCx
 JJEvXHEfHBjsHPDxlkWFVt4f0xFVjyjVVuR9cFhnlcDOWwIbYUJ6+C85m
 A72tF2lCUEWKM/Ctp7kbdN8azp+oZINPqo6UkfibhRyJ7Y3mb2dbP4YSm Q==;
X-CSE-ConnectionGUID: jZmkgqXYRryOcSPKBA0MrQ==
X-CSE-MsgGUID: 7BooS1zdSZqgVaXlPtL+3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="16459322"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="16459322"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 16:45:52 -0700
X-CSE-ConnectionGUID: qLkRulz5T7SPhtRgdwghTw==
X-CSE-MsgGUID: CG7F7ZagSaqMrWdQCqTsdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="83829318"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 16:45:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 16:45:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 16:45:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 16:45:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a/ixyu28mAJKrYhG1YQjcZK+t0k3MQE60DAvWJYCkNK29ia2sWE0iGrvdKFPg318xkxFgC7BXQEiZYvDY2vWSBFYXztoj4wo0oeMYVbMIZcjWSRzJ+ItgWa7ZEYV0JPWazLE1SWa9qgEIZIAVUZ+xe23z2P4mUvxPolZz/rDa+Y7Y9LiwUJYcmsie4GLTmvnKiO/IaxalMvlYt3tgnwG3OmB3g9wNw1+MuVd78CJbqZpJubJf5HcnfeIbqwCWPfRxyzcPXxYSmqwZkScPcrJymqlifxUDdtkEAUEAc793OpwxC78D3Gk8uThI1FvaRA5/V3tpnz7Tt/s0KW9zjtztg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eSoV1lK+ej2DKMAYrGKolqbj8PnywLkB88QTC6EoLZE=;
 b=UZyS14FsonusGDRPtlcFkjPf3SVaPgGinNeuLeepnw6zHtAbAlSz0c0d4RdwgqAno3APbB2rUq0LgwrLkXGg+Kl3wEgoxNllzDAd2Ny1M3JztaHGeiJrS5032WSUK9nUQao0wKmrgrapVIKnzI4eVx7p1gF9b4O4cbs/SfKG1vC8T/+863EsrU95PgV2cAlZElYoGpmck10kYYRjHrdcKiVFVExXNngwlzOXz0uJHwVDg4Ka5zYhG0ulqJZa4+zyyB0rpZan1ApmzTuoIIHLM2ACLUHNJhN0FP00aBqO59FycTivAwaNzUpKpailtauopVFJBsPt9NGbide3zlJneg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by LV1PR11MB8841.namprd11.prod.outlook.com (2603:10b6:408:2b2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.24; Fri, 18 Oct
 2024 23:45:49 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.024; Fri, 18 Oct 2024
 23:45:49 +0000
Date: Fri, 18 Oct 2024 16:45:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH 02/12] drm/i915/ptl: Define IS_PANTHERLAKE macro
Message-ID: <20241018234546.GG4891@mdroper-desk1.amr.corp.intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-3-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241018204941.73473-3-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BYAPR05CA0092.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::33) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|LV1PR11MB8841:EE_
X-MS-Office365-Filtering-Correlation-Id: ae69084e-3ac9-4b9c-e4fa-08dcefcefe4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?un5HTP651qcFZ340bHixxNDK1MKtkfsXVkZmxzRlwrSNefzrhj12i6uRLqL/?=
 =?us-ascii?Q?ldxsTIlBvUwmxgdaLWPbHZgOjU3p5CJTkXAbuITCssIHLcAnr2sP2B342bSF?=
 =?us-ascii?Q?318DLw3r/naR5hkNSrZDEK5r00NCrF/Tk1GzYgrrmZu0ypC5nbb43S1SV+IM?=
 =?us-ascii?Q?8lhMICXDPrMnl1h3d0AN7Ueuzw7T30Z6TCH675FbetUWzVCB/7gT0mkrS0P1?=
 =?us-ascii?Q?H0RjdIh20CTAIWW5mKzEfXGOVzmTyLCDQI4O39TNpyM3LGLnWCffD79+bk7R?=
 =?us-ascii?Q?fsQ23zjE1xW/QwDw+mpFkbhhST1qRlEs0XyRJ2hFsNamzF+wDSn1ePAYY1Ke?=
 =?us-ascii?Q?dLybSXrsw7nPua8TfE28GrlBVLhZe6sFXJjd6FwIcPFeJ6cheZSFrBlcPv50?=
 =?us-ascii?Q?n7MtAiMghF1avDC5YIDiGutL7OP5d9BWOe0W1mvzhBBIAX80GsVeXo3Rk7fs?=
 =?us-ascii?Q?ov+rIiQskqGPyTcf8ry3UYwg5QuVmx1oNxPFE+vJlh131Gfe2YrcY7818lEl?=
 =?us-ascii?Q?MmZVVMr8Xc91vTSfOpV/vbaF2Sta/nZ8cvzgod3c7x8eSMcjDx7wLWgPYzp8?=
 =?us-ascii?Q?QmLGsiYzp2OxGcTb6dvk4ocGRPw4zKctF3cDN9fYILaYgvdk4bdsibtpSogw?=
 =?us-ascii?Q?dNwmh84jRs8UZzej7kHeaGtMxzQTTewx05oRf3Dau69XnuXgHYxtX/d3GJE9?=
 =?us-ascii?Q?Y4m/io4/fS5R6HyhBEF3EEpI7e+gKMnTkNz0TIOFQ8UMULuUJp7h3Ly8FcGm?=
 =?us-ascii?Q?nTXsF6CQzAcPoF6ar68iacN7vrR49vMqNMwypWM9EbE4XY/FXtV4r9NMVcWQ?=
 =?us-ascii?Q?pxN9oOTwm2X+lpurzDZ3F1CiaV5uaab7WHHL45xjLFhRYWipRRALs6dBMpcJ?=
 =?us-ascii?Q?lS8ezqbXpqMiW+ExJr/SjpTw6hAEVObIGzVDumbVtX+T6InX1aRpvzHFNZlp?=
 =?us-ascii?Q?KI5aV5R5t+6tnA5eNimyUiCtz/eI6G7hmIFRRSBuKZMSo4Xs2usmZ+TsFWRd?=
 =?us-ascii?Q?wvnyeZEkbIdWYTqk+rCHRG9PhUQtrfyv43yYq7PdRvCXMyEqf9Hi+rfFYB9d?=
 =?us-ascii?Q?lxiS/t8C1U2EM4p/8kI3DaSBKf0F0lROGoPrmvN9aLJm/fNzfbWHya1RCrQI?=
 =?us-ascii?Q?QQFKxxK033kPRGEc9NrpOZBf+ROia+0AqNxQibg6doUJxx+qG8hRrIuiwWzx?=
 =?us-ascii?Q?Rd53weGROIFOxnwayol8IdQ3CaSlsXH6XffzhGcU6wv9HNWElewIhClFgajG?=
 =?us-ascii?Q?oX9h6QanQVrKv+7J22lh1lZgeQXzqNQtVHwk8zDcLbsXibEvp8IBuFikBi8j?=
 =?us-ascii?Q?T7wGEB5Lfh5T6DpxzGKkqD/C?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mw/5t4+KWf2o7sNw0JrodjHrOnJ8gN7dgUeq5q+Qex2EKHmc6aD8wfmNl/Co?=
 =?us-ascii?Q?uGL22s211E3UptPWafq8re0pmQb+y8w1uvpu6YuISXF4ZXPxW9EZSFRXQ14B?=
 =?us-ascii?Q?GOctU0QoVzWjKuYUqLaDNEPWkahU4IY48pQDiNWc9bEE6tjK/hrTIHOAjv63?=
 =?us-ascii?Q?uWkXNxK7cD3Lp7xY7ajn7vrYTFSZ5UgeK3woOa1cTsQdHPGrevBUwoJozoJ7?=
 =?us-ascii?Q?xz1qOZLXU9o4726k0tzJ+tvkJi7ES7lkinvrGdU1PW7vYGc/Fccq9fQYYTxq?=
 =?us-ascii?Q?6u4GmRYY720mHJjVu7o7ZQHi2+VNigPMQRAAxnYlTO2wvYolnf0Xz/botKw+?=
 =?us-ascii?Q?ZzImbfxL7ENvBc/5WspWk14hAGWdcZxVWK9N4GtK2J0V8J04mttERCcPGFYC?=
 =?us-ascii?Q?jGaBy3hLbYv44B6Ejd+1SUt2zmQVmVOM97GmnFb3/4+Cm7uHcbbKnTpNup+m?=
 =?us-ascii?Q?WHH6vkbvdofDvJafu/NuSTSBS+42qw/i137s0Q2PwUX5ZdIRlzd8oZnbQOlb?=
 =?us-ascii?Q?gewoDsOFbGLZ8Z6T4r1md6R1mOI5gbb7lc8yl1jQyB8OwqzTSy/RlwHB3iRK?=
 =?us-ascii?Q?UqbXOda/dAVVgcfRyHXbLC0rmv23jOmVcKP/p9BHkmi2UKwDySXezt2PnX23?=
 =?us-ascii?Q?PbpEol95N5oYB04XYKfI4idp0IJ0XJrvGYoz1dPzXM5OH4VOVr5cc7Uxy+qx?=
 =?us-ascii?Q?dd3FiH5nM28T02Mqr7I8iEhHR/X6LSsCjsABCKkemwJziZG81hayqm8P8CDa?=
 =?us-ascii?Q?maC/auj6MYbVLKa1bQYwLUB3aZwoX8MgUsF18Zbl1GJQoACG4nb15rtet8SM?=
 =?us-ascii?Q?r8UDy8wy57VozxN/CFlSyfAVPez3hj2We9GqJtQAJwiKoG5OfFQDxAqbi5CV?=
 =?us-ascii?Q?JdZi9PLCRL67kQoUkm0kg8Q4RffZkyIn+hiJaohQzPkjUNfAdJDcUywQnhtn?=
 =?us-ascii?Q?h97Xdt1HkVhX2wUgOuieTz59QN5WU4Cx90ormDPYbWK2DdWybf7D27JEQRgj?=
 =?us-ascii?Q?eBQsAs3o0mA10dBXNVtGKRvVnA7I+IT8Mtanfa6zwohr46E3+Tztuz3+nTS2?=
 =?us-ascii?Q?VoFCzi7QcbxiEhgGoRP3mj0bDMZLfWH+HrV4DCIYZb160apnbYu+M6H3A7Gn?=
 =?us-ascii?Q?UrUcpokNTdn5DsIsU0rP4Tnc4TCCXwzWhx+L9PwDKgKga1kqXkfJbzaqYn2D?=
 =?us-ascii?Q?iI51qybl27B1ApDWaYT/FA7uni96L7iTSS8ABR4RXAokQFj/LFJRj9rXAi32?=
 =?us-ascii?Q?hzi7PZgWwoHi7KE9JBmaP0+26IUFWkl+MB7PrJ+KiaoKL/wCvdQK+VIWIOPW?=
 =?us-ascii?Q?TiJKpljqKhjzHY7r5IoAoViyU2c0xpP/M1JbhrXam41DVvHQVGqRn3K5bsWB?=
 =?us-ascii?Q?RYc5r1OjcO4J4karb789CzTmK9jM2wJeiNvxAzyuWts0mcWA1LDSfXbyrBCp?=
 =?us-ascii?Q?PWIuiLc2S/T+r33izuEf8oVx0cLBfoRyCbuSz1Ux2USd0S+7dV+4j1TYDPhj?=
 =?us-ascii?Q?vsRBHNUAKk6TE5qElcZMRRzc9+RYEw+rWdVZZsr6fIu9mVny53nWWgLn1CtQ?=
 =?us-ascii?Q?bLDcjEFM1MO2XCtVTuVNrs1IACxMT7e0Ydvg24MKryDiwRqyRV601WVVGTAy?=
 =?us-ascii?Q?CA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae69084e-3ac9-4b9c-e4fa-08dcefcefe4f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 23:45:49.0475 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jjcBJ/X8tbgfUJA9bQwK8dsLAepqZw7K4A5PBwgKArqvV+M+xU8VKrxzJNk5/bv5IsqrTU5kjOVUBEU9/e8WP6oRavN31PYeKJlKgk1N+aY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8841
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

On Fri, Oct 18, 2024 at 01:49:31PM -0700, Matt Atwood wrote:
> From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> 
> Common display code requires IS_PANTHERLAKE macro.
> Define the macro and set 0 as PTL is no longer support for i915.
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Jani is refactoring this platform identification stuff right now so this
patch might wind up getting dropped if his work lands first, but given
the pre-refactor codebase today,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> ---
>  drivers/gpu/drm/i915/i915_drv.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a66e5bb078cf..ca1ab5931e28 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -538,6 +538,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   */
>  #define IS_LUNARLAKE(i915) (0 && i915)
>  #define IS_BATTLEMAGE(i915)  (0 && i915)
> +#define IS_PANTHERLAKE(i915) (0 && i915)
>  
>  #define IS_ARROWLAKE(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL)
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
