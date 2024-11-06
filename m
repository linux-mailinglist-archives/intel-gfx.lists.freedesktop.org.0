Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EEF9BF43D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47EA810E2FA;
	Wed,  6 Nov 2024 17:24:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nkcdx4u8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD20D10E2F9;
 Wed,  6 Nov 2024 17:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730913865; x=1762449865;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=prQNwOaXtrXObk89xZXDhjt1/Bb6lKjidyHlqZTsP+E=;
 b=Nkcdx4u8DOAYGh/hZCGQHcz8f8Ekme3h5SQ1iljZLODe2rR2YIWNmLAa
 8afcUqeSwliVd0272zFjj06/QAqpMC6Me8VvkhHFS+TtE/l77+uapaATy
 RwR6fk1Su6AWsvuCMb2nGvg0BOCVplAF6Pw0bRgpqZghC3SvLpA323m6y
 9Irz2285skuclDns385Sb9HpmopXOvTxedjVAuAdZ258zd+CAB9ZU123p
 r1GhPNw+Y+HVlPk6O8xbWjL4jWWawwdueWZaL7Ba65ut+OdzNTxlHifhR
 mdX9OL9wXJezegQTslwpy3prVTjJkUeqUDWv5dl5tUEkR/9Ew2MEFD4De Q==;
X-CSE-ConnectionGUID: RNdbC9J0SzKRnNHUQ00d5w==
X-CSE-MsgGUID: tiNxLM2FTYOYZrnKedXyZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30828963"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30828963"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 09:24:25 -0800
X-CSE-ConnectionGUID: V39lUMpoQICyrz2hxEvLuQ==
X-CSE-MsgGUID: GPyxJ3XISJC6vznYuWxM4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89245455"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 09:24:25 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 09:24:25 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 09:24:25 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 09:24:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i1cuoJdfsZ3wJ+ujmAjS1/6C/knTkTcVNkP43xrjVqeM/0hCq8QDqchDCUKSfve7Gau9FxpJLITMFPCYa4An5FwlmomvjmGGBVEsppplE6cOmutuqweefCy3sisSPtdsEDR+XHde1ui2co/vajmUSU39oSdr2PBGN+aIyeRir9ZXO5Sx1AMMkIACZD3c5SvlQE5G75ZKbaECAJ5mCFsKI8ITx8CfzGVbWxd/GCD0BLFy5Ku3Txe9wBkOiGi4x02hMtuR5kC73QZuQ8sQww+QkYoreDHBngcOUalJ5AXnUndXJkxgjuBQrYL22I116S9cvhlUzf2ox9SRoHG2Nw+seA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2cZOP+ja6wMWUrPWY37EEn8Ydu8Sx1MDleo4RFLvnmo=;
 b=ExJJlEXmI+MPPc+vk5KbzGuBw06CfrAKvgZ1seND30RMp8j7Qtxy8aIjn2otR5J5OtIbEjDKLIW+SECDDFxNXDNZreZk47ICgx0t/cgLjdFBvHB74FiMqB/PbrEEwoHBRHcgdE0N+89yJjMKgOi+Q5d1/zSqc2/2Ybij9hwnxClBxpHPH8+thtz2nrUciSh9nTGZzsNFIFNvtrsK6kF3kQmrGO4An2PaOamA0JkYXlfBp9NN/d/XBPe/nh5Sboo367le4T+swRv5VvtMOsWDi3FtG2FpV/CJE/pRnusHqhnlpHC32eTVIDIRxs7lR19Zp7iofndc1sapy+s8Dhf3ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA3PR11MB8076.namprd11.prod.outlook.com (2603:10b6:806:2f0::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Wed, 6 Nov
 2024 17:24:19 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%7]) with mapi id 15.20.8137.019; Wed, 6 Nov 2024
 17:24:19 +0000
Date: Wed, 6 Nov 2024 09:24:16 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Clint Taylor" <clinton.a.taylor@intel.com>, Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/dp: demote source OUI read/write failure
 logging to debug
Message-ID: <20241106172416.GP4891@mdroper-desk1.amr.corp.intel.com>
References: <20241106162325.4065078-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241106162325.4065078-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR04CA0002.namprd04.prod.outlook.com
 (2603:10b6:a03:217::7) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA3PR11MB8076:EE_
X-MS-Office365-Filtering-Correlation-Id: 8736ece9-fca2-40f8-35ca-08dcfe87d8f5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?S7aebD9dZdXnPKK14J4kK+51jg3RTUMfRuLXYjDlwg/J3Pv48el++9KyXIxJ?=
 =?us-ascii?Q?Aj3rPAiqAdbgDkawm+3NXcB3sy2SV2IbRsXP7P22D0K35ifbrswyGjthco3V?=
 =?us-ascii?Q?ovw7xZQ2nHMO3Hd6sBfYTE3+mMZ+VV9qFhoeqTmtMVizZN+ZXGHK7Mv7mxik?=
 =?us-ascii?Q?aU+PehHRHI8mOS1OFlV9grrPOaPYyA9jNjiz2PVjLw3/VYQ224r1HA3FTq27?=
 =?us-ascii?Q?s7i+hFIudujwpA7GBmCFwx/4cazgJ9278W+FosgUnPXudhrFG+V4a5o1CtHu?=
 =?us-ascii?Q?3TMf6RySNb9qEyJfSZprYQ2jAwlKldqCT85utslfE+dUkFqEIkcKvl+zg3Dz?=
 =?us-ascii?Q?S2amdZ54hKA+MTnbNg7aU2edc+Dwe8KL3x6rE3MC/seW8dkO66bfDrTnGktv?=
 =?us-ascii?Q?3XP/Hiw8egD4sadmdvEYFULXMQ6pJQDAW8a/ZL6TuXWa2ecqOaGGyD61GCI8?=
 =?us-ascii?Q?7A0vI7+Lf6zJrDl8EOnjjO98/I/3/rjVhLcnG0huS+z23kspiwhqe5y6EWaT?=
 =?us-ascii?Q?XHit5c+BwFG55mFGgQYGZZ8U1hHL92HxwPuMklP0T6MakHqaFxanDZODOR+l?=
 =?us-ascii?Q?7HHeJdQQmqbkKjmEtWaZxXT/RYAF21jGUogkDvSF6N4FJtoNcieHT3Slq8vr?=
 =?us-ascii?Q?4DW6ynFI12S54kmTe/7S2iObsEFGxYHZzmDb02LlThN+eZEXrx3oHvd1hXPp?=
 =?us-ascii?Q?pETIVNvy0IHzP1cVatm0CuAOKwwTWHQgz9yuHnOTJ9+Z/eNCaO6sDtcN1GlM?=
 =?us-ascii?Q?02RayBjrKLhOPzfuHQ6vEnb7J3e99PftUPYeSZZYbpdSWdHcfoB49ga0miYb?=
 =?us-ascii?Q?pdhBewfIKW2VifivFDA/IOEiUod5eRDS0pWhuV97lc7hXkewro1dIqedxEpA?=
 =?us-ascii?Q?uoo3u6u/wQFIZUBxCF0kirqcF/zd9BL1vmUvfY6y/25f/JAqeV7dWzIIRucq?=
 =?us-ascii?Q?Dzi7vSvO2/VHJqE17URo6M26BqAsuwiUHinhQaRCjdWgnEI4WxX71MASoMDr?=
 =?us-ascii?Q?rrv1sMuTDYI+wsBgJJlvThxJUk5I9DAaLQoeYDYxlSIKqhge/JBy+pVCZifb?=
 =?us-ascii?Q?QB3VYO3UvUNxooRxBvpQlNSfwjfo2/+D9GMXmcNlL/SLElhCSH4GcRwGjzNk?=
 =?us-ascii?Q?iRQPyv0zzMyL6fdOY/kXwAmebdtkaHD0YCTeHXJuH7hcoV8JWeJKUnKgamHC?=
 =?us-ascii?Q?B7d/Cuuy2yJkj9lnr1/XGD+WqLkEIHIKQi6Vfy78x2F9N0TuPqSAFPmLb+pj?=
 =?us-ascii?Q?z+gFaDWOh3E2+kVhTs+S?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?so9i/+3s+WYMUx+3wCKbTtPvXfLKkjgGR/YTgQVpqjuww8fzeRyRnQygZTrg?=
 =?us-ascii?Q?VZdCMNP2YdBBPu31FWe4OmHSzfPC4xD392uOwfXqyb71tT9QkAzDHtbdRszW?=
 =?us-ascii?Q?iQtavt1kISx4LjXsISRCMshrn7c74IKxqjQgSdsT9a7eD0oDbhxrIC9WEsL5?=
 =?us-ascii?Q?OSAl+Q4dPdvAXiCgNlxthumPluDqob2cXt/KxCI36klKoSIiG5/zL2Rqt0Mv?=
 =?us-ascii?Q?0ZjicYHuPy7//MyaNO1XoLTa2MMEQ4sdWk2VaCjpTSoYEEj7nXDtdgza17eD?=
 =?us-ascii?Q?pNQ0MaxaO/YvPpIcy6Ct3QQug7rifdcrrCLihq7lbywaYPiGkKcQVsvO9ybc?=
 =?us-ascii?Q?GPwiuWj8Ff82yfZFbikQtFa2ra4d8evASt/jD8s+DFI7/tO53UXzgjj6Vvx1?=
 =?us-ascii?Q?Pblv5SFaw3TtqxzVrD1Z/RKMWH1FOQIpa6yo2nYDPuJ0jmaARo8VucmdjFl5?=
 =?us-ascii?Q?WQt9zbwIK/h9kIS4t6fuFOeD7dZ9mJqAkQcrPQbFbCAIshF4HAO78rYDjnzI?=
 =?us-ascii?Q?S54DFm1K699lI2G22n40gFNnpZOfOV7K9FKmXWO1ve0R28H/4Ixux3MjwWeH?=
 =?us-ascii?Q?ZNmFKuC9sY4fKnFlMtjKM80XXO7Btg4dtdjuwqqI5JvphNHkbLLiDhntZkHx?=
 =?us-ascii?Q?dnvAX/uOi0Jio3yLFvgAw0EuwQFB+hw0Y1FgRtE3EUotGlRLxNUK91MhN50x?=
 =?us-ascii?Q?AsavdOfzIe9R50UduUBqS+aL0EfjmQrrom414uyJtt1BeAbZ5V3Lz1fXaGBl?=
 =?us-ascii?Q?dp5nkZ2cO95+MgcLsF2phCy1pSJ95WUuHCelhSuoLIWiEYv75jh6nTtwSaT6?=
 =?us-ascii?Q?4wAJiBlSz6Hl/Ps4hSbZSstliYRTRISWrwOpmHn8dwjgJquWCIQakGF/iLPs?=
 =?us-ascii?Q?vsN0lMG1KgKkxdQbmvmUKRJrr9Ewak126oAbAbANLZEQLfGgbSGxqPNSIwOU?=
 =?us-ascii?Q?hyIGp7bW4uDK4Aym3J5cLHKC2I5Y63EDj9TQKa6SYht9rpr1Ljr56RKDKMzl?=
 =?us-ascii?Q?o5EKFUNP+x0RTn0zthn+j/lBLhp/Cx4ioOb9OHfG2RPbVYkXYXZo13igTg6g?=
 =?us-ascii?Q?TG6J/uU83eSYaj+0NMXFrs7f33hOrvShHSVEyFLshFJDiTHUSZwm8rQJGQY6?=
 =?us-ascii?Q?KNIQVCMxJ10/+g7mdAcIyNSACxVWoFHn8mh4A9Gmn0r6ZYwsGkSctJ3+DlMp?=
 =?us-ascii?Q?flD7356Y42hkwUPCf8kmJYSC8cCS/BaHBxSy/qRu20+IqqVwk9Lc/b+8A+Pb?=
 =?us-ascii?Q?CnC1snkY3WaVOUUiflU05gkzOoE5yJuSpgLWkr7UcHKDJOdnennrQI6c+hbt?=
 =?us-ascii?Q?HOjF/lkwScZIfjvytU0BqLMz/FDLp6U1vZFFF5i9k3IAU3JogboPYtxlcSWz?=
 =?us-ascii?Q?m2j/SqMxe98EMFMV5X6wkUITKpQvKXhGRHZNFC2gWyS6rHb+DWNsv7r6ZYF1?=
 =?us-ascii?Q?o7SG4Kjx/X6fP3pMN+1P2ew93+gBY1heg8vBWE9Bw0CvS+eL6s4h2tgvu3Q1?=
 =?us-ascii?Q?U0xfsJSAypzzEmCmrN8QW6ttS+Qbb8tFpTE6TAnzFTBa9ew3sD8jDGuTAvn9?=
 =?us-ascii?Q?0xWlYNaItEvCrqICkGstslzm2eWXum3wMHPRP9PwVF036fKsg8dvQujHDqhc?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8736ece9-fca2-40f8-35ca-08dcfe87d8f5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 17:24:19.5088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g3rL+sUkMBh5i7ErTmcEmOXDB4XRPjTXhHvhZRHlaE1a8/6Y5ZID+VF270HHK7zhP3xm5LzEZY6xh19fIcpUOSAYEahYlUqCC+fq5l8l+6k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8076
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

On Wed, Nov 06, 2024 at 06:23:25PM +0200, Jani Nikula wrote:
> Commit 1f12d63a14d7 ("drm/i915/dp: Write the source OUI for non-eDP
> sinks as well") started writing source OUI for non-eDP sinks as well,
> increasing the possibilities of hitting read/write failures either due
> to the sink behaviour or hotplug or whatever.
> 
> Even before that, commit 3fb0501f0c07 ("drm/i915/display/dp: Reduce log
> level for SOURCE OUI write failures") already reduced write failures to
> info level when source OUI was just for eDP.
> 
> Further reduce the log level to just debug. Switch to struct intel_dp
> while at it.

Did you mean intel_display here rather than intel_dp?

Aside from that,

   Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> 
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/3372
> Cc: Clint Taylor <clinton.a.taylor@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5b918363df16..95c71e425fbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3432,7 +3432,7 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
>  static void
>  intel_dp_init_source_oui(struct intel_dp *intel_dp)
>  {
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	u8 oui[] = { 0x00, 0xaa, 0x01 };
>  	u8 buf[3] = {};
>  
> @@ -3446,7 +3446,7 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
>  	 * already set to what we want, so as to avoid clearing any state by accident
>  	 */
>  	if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
> -		drm_err(&i915->drm, "Failed to read source OUI\n");
> +		drm_dbg_kms(display->drm, "Failed to read source OUI\n");
>  
>  	if (memcmp(oui, buf, sizeof(oui)) == 0) {
>  		/* Assume the OUI was written now. */
> @@ -3455,7 +3455,7 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
>  	}
>  
>  	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0) {
> -		drm_info(&i915->drm, "Failed to write source OUI\n");
> +		drm_dbg_kms(display->drm, "Failed to write source OUI\n");
>  		WRITE_ONCE(intel_dp->oui_valid, false);
>  	}
>  
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
