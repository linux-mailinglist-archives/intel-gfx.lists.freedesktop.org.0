Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7241879792D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 19:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A7410E813;
	Thu,  7 Sep 2023 17:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF92B10E824;
 Thu,  7 Sep 2023 17:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694106290; x=1725642290;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=s4KtQQkM/U8dcm/WPADA59DfDKnDdPUWMFScshrfVfo=;
 b=gHi9TWJemB4edh0TnZpbYDDQ+v39bEEZPlR3TeZoveKHkARqoJOf1IcZ
 CTqJmydWOjS+70FZsE2FHQsWv4DJHd34KoiX+6CMzeDXAX2e5in1lvTgP
 NHE5v6Voe4vMpG5UaGsbDrBj5TJf3grVQdgRw/fkrblrJXHod34YYfUzj
 Hj/bdJjqOrATjmzVL/zenS5tfdxxBiTZN/zAUNu+hZ9qcP6RM+heTPkhA
 s0nhvPu5F1WdzUeUC422UcVQigBVG76f4vmjCkh2Sx3Q9CZGbc6PTC3Rh
 opSg3hlt8WlWlG6z5ZzutrS1V7xrHmb7nv+2XbZLqZqAb01iTZvDQCbUd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="377327304"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="377327304"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 10:04:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812232227"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="812232227"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 10:04:49 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 10:04:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 10:04:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 10:04:47 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 10:04:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V29RAGGrErdn9PnFXy+DUaoO3S+xJk+ihfOssWLTMmQyDw6zeaMfFcmX51LGiqJnEA0D9sz2vnPW9vG6plIMlxKvokJlrLlxenmFp+tRpT6cMREVCQB0rT2C9YC/R3UdLEsvJ3HbU1AvRZUbQAdJ1UN2fPMuXnwJNRLq0RvngRR9Ft4cnbjgZSeuC5FMAhCsoocpVvJsuGoCBg4demsvgtExap0pX7Z0lPtKN/vTZsLMlw/Ux0vtqSqOcixgWMyhrX30niJ09GCd++7i0Dfjff43KLgVrk0Djwbw1faygiYPWflGP82TY2zAOzQKhf/Voxe6Za9bfNC42hsHSa5raA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=obCySuYRrG2KsREWEaqbfmiFq7usqgwsrCHWJHGhWpg=;
 b=NojA6JzIUlsvioD5H00G2F6ATtU5Fg8jZytR78BMGkhbk1rm5asOfNejYuhiv2TMZPB8M0CLMyS1stgr2gHi/+kkD0eHytpg+tJdiYO5RewNNKmRKJrIkxGe6YDsk+HLAZtuZ3ulq/qazIeCS9jXSMHUX7x7sttxgZk0yLXMTataHbI1tczMK00KITUeps1Nwudb+HwsaTbqj9slnwRtD3tpIoujAANNwRybszQUq2P37nr4I6JrB9S0o4PT/IPhbcJg5x5J8cKae/vqo109RElpyv0y0RvmYQIVFhlVKsl4teaOZoxNsThMZpktwk3FTxBQMMSfhJXz6sHU+qwyfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB7154.namprd11.prod.outlook.com (2603:10b6:a03:48d::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.34; Thu, 7 Sep 2023 17:04:46 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 17:04:45 +0000
Date: Thu, 7 Sep 2023 10:04:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230907170442.GK2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-6-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-6-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR05CA0021.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB7154:EE_
X-MS-Office365-Filtering-Correlation-Id: 428c9e7b-aa84-47c6-e2eb-08dbafc48962
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Myl2wqhL5U/du4UmmldfbEc6w3et04XulnKKHIO52m2aKpkglH97JKGJJEkNaIyKEEkjd52adEiNNWvuIdtOfKiMh4a4dPuXscA4nKgRqyBCHAoznCASHLRv9zA+uFermrwHvvXbfeo8KjmefYcXGU9FUO6cgRNkjlYQfQn57MIaK2RbGmoZe/QcdQJuaZnmNosEE9o+xvlizYqEjTb2WG4SS0OlLoEOzi5vEfprQh+wzzUS7FJO0gcCIysXzRjO6pCwyW5OmZzWe2zgHxaqxz9dIJ+x29BTeI688Aicy8fB87P8awDzXmDIGGIGF5uIT+ToCV0xG5BUzhstCt99pKaP/SA6UFs3+/Mw3SrGnOPlNzSMBpyNmJ3Dd1Pj+T5AJQZeZUnoajhQszUcF7aLMIWJKqj111SNDy5r1yQCgEoeDQCZEqoqpGfpUS2dOUpDy5ZN8nBqAJB97XnjOtJVmNxa7sX1jpEJ3lPhacBxPjslx1yXi0u7wj+uEtjnvU12KOkTkv6DktpDsXD2tDZNCalatP7ho+AY9azIzXCLdeNG7bylN2mQo5dsJc9A9MKe/ZA+1MXJvgLZ1blXkgv6QXHduJHElvdmWsR9HK4ijK5RnWmubNbPpZ8EU9URRI8a
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(39860400002)(366004)(396003)(186009)(1800799009)(451199024)(86362001)(478600001)(33656002)(66476007)(66946007)(316002)(6636002)(2906002)(66556008)(41300700001)(5660300002)(6862004)(8676002)(8936002)(4326008)(6486002)(6506007)(450100002)(6512007)(83380400001)(26005)(1076003)(82960400001)(6666004)(38100700002)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LCbYiSlFdcENwnHbGuk8to2B+49E/8PjbUtGHQssDASpkC8TWA3CN6vwUOyD?=
 =?us-ascii?Q?eQlCM0G8BCusvz0mf8yAUPx6xXocMCVL6JGf/ExjU06M0s1NCPwXeLyNDl9o?=
 =?us-ascii?Q?77noSKSwzCIq4uRP9x4a8U04PzCLmnok7Bm4nyTnHJbR6KTT6QZ6+fLPH1rS?=
 =?us-ascii?Q?s+XQvK2sKfWo10zCTBcH7BtaSiQzVn9rgoOdfCugl8cEZrrv/GL/C/UWejqJ?=
 =?us-ascii?Q?Z3y1+UnZ/NBc3yepjGmSnDTZal+XZqQAiqFzctIBHEjw3KrtjtLQYd0v4zJj?=
 =?us-ascii?Q?r87//wODOB+LE2GYuAH8vFoGKTnVTYlHHm+lCl+Zlk1lLfBQ44d0aLFKKv1P?=
 =?us-ascii?Q?tzPz2VnBJXS785Js02Fr798DiV3kOs9ejtTcNjOx3F8RTRHg57ifXz54Cfaw?=
 =?us-ascii?Q?KqlShWHe0aSKaLxO44wQPQGgyMGxCsSzQad71MpFU4HaWH8gyhJ5uAEdww7y?=
 =?us-ascii?Q?+wYulx2ESvZl+I+dg64xSYrCY8IsPe3gl4oKqoJRrDRq7nIJLp5brgs1mhqu?=
 =?us-ascii?Q?LWZ2fhaAps7mhjRwhlUe4kiRXlXnMsD5DW37x3AqdzRW6Tzp/wWLPxlw0MXM?=
 =?us-ascii?Q?sNYwY+JNzfjGApaFBlhOzSWzaZTx3/Uzb6GpHaZd89H65rZU+GMbIOYxtVbE?=
 =?us-ascii?Q?WKiN9qNIZEFH67cExAbXbL+hOt0dfUD/7GGki7y8LA/G/B3ElSdsoqDXm/pD?=
 =?us-ascii?Q?IY2AVQX5EAwImHp61e8n5dOSWHtvN69TeIteSJYAKkd6kmwc2Mc4tZFZOjZt?=
 =?us-ascii?Q?MUlFvoes6laCoSYYHdFIQBpjG+2DydkxKYPXCHrHhML38Cdnt+PZlUavG6G/?=
 =?us-ascii?Q?ZHJDqTaXr7cGxXeB9iFCcUBs/pRs3yp/hLcWcqrYeu0BaD6rCub5poielPv/?=
 =?us-ascii?Q?Hqv6OZpQ/5ZOkbJ0igBAN332d7tDonXTPI33htINPno2+P7tJxFwVB3DDPM+?=
 =?us-ascii?Q?opnU/Z0dxaPyD8v2+0MH8vDprfeiaGgAEjNI6oiOp6BLNdaUIYTV7JVhLZXR?=
 =?us-ascii?Q?sTQ5LBsMlHNtF0NzL+72VVbpZkmG/bq7wwCTNfGq7BxCj5HXvMm1fo08vntB?=
 =?us-ascii?Q?Df8Vi3ZJGQyp5k+GboJ3UjDjKlBc9xxs/ky1tWyWiG1tJ9Hissg1u6Ae8hhj?=
 =?us-ascii?Q?yOEI1yQA4Fb1ZAddxC1fNVh5OWghQrfboptkOwUf0IuWeRiAT42Cq+tkMc3h?=
 =?us-ascii?Q?4oZPFeS41ztlGRD3zOe8eeevSM2z9XdU4y3wmGONHSCthuHkdcBnefOuz12H?=
 =?us-ascii?Q?mkl4KdrklFmfxTJ3Lz3A/QMIiVxTdzSbI3/m7UwQb3xcqFdXbfVKCGgv6ojU?=
 =?us-ascii?Q?DDC9ewHnjYrpDrdRKvKtqN7StguEH2UHCYgp5WsuM83h0MQkIyjJK+q0a0lC?=
 =?us-ascii?Q?CaXP+4vRwcALGfbX+qPKkbnwdcVmgalweDJZyw4kCtJXVLQwW0vNuGSvUfTc?=
 =?us-ascii?Q?ZE2EQTzAjSCdfpqIJCcKIDMUAys3eP4WhVWxC2rW1xAgRUl7GW7MbGzm8Pxf?=
 =?us-ascii?Q?pOvYYN+dhz7kmOWMJmzvcTOBATKCax30Ac99pu8FIuAChQjZkuAGZODLzkZm?=
 =?us-ascii?Q?TmTBUnsu7OLeUvGjS1NPkmgWphEetYfGxSRhebxoGKLS0CyvYFosTD957exC?=
 =?us-ascii?Q?bw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 428c9e7b-aa84-47c6-e2eb-08dbafc48962
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 17:04:45.8552 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vcrLLfvvMyMT0SXKhPqqWqhrre7FCeJ+1ehGQX53/+XlM80sdJAHvRhtlXaBJRzLPhancNoV8L6XJGDmyg3GEv6bCxJ/6jvydcbA56O2ZOo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7154
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 05/27] drm/i915/xe2lpd: Add fake PCH
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 08:37:35AM -0700, Lucas De Marchi wrote:
> From: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Xe2_LPD has sourth display on the same SOC. As such, define a new fake

s/sourth/south/

You might also want to drop the word "same" from the description here
since NDE and SDE are technically on different dies in this case (NDE is
on the compute die, whereas SDE is on the SoC die).  To be 100% accurate
we'd want to identify SDE behavior via the PICA's GMD_ID (since PICA
also lives on the SoC die for this platform).  But since we've just been
able to get by so far with just matching PICA behavior on the display
version rather than on its own version, we can just use display version
for this as well, at least for now.  We may need to revisit this all
down the road once we have platforms with more possible combinations of
these components.  Of course we really need to rework the SDE handling
in general (and break its assumption that SDE behavior is tied to PCH on
modern platforms), but that's work for a future patch series.

I was originally wondering if we could just reuse PCH_MTP here, but it
looks like there's one place where we setup HPD interrupts that needs
different handling.  So this should be good enough for now, and we can
revisit the whole SDE design separately down the road.

With the minor commit message fix above,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> PCH entry for it.
> 
> v2: Match on display IP version rather than on platform (Matt Roper)
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

> ---
>  drivers/gpu/drm/i915/soc/intel_pch.c | 5 ++++-
>  drivers/gpu/drm/i915/soc/intel_pch.h | 2 ++
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
> index dfffdfa50b97..240beafb38ed 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -222,7 +222,10 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>  	 * South display engine on the same PCI device: just assign the fake
>  	 * PCH.
>  	 */
> -	if (IS_DG2(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >= 20) {
> +		dev_priv->pch_type = PCH_LNL;
> +		return;
> +	} else if (IS_DG2(dev_priv)) {
>  		dev_priv->pch_type = PCH_DG2;
>  		return;
>  	} else if (IS_DG1(dev_priv)) {
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
> index 32aff5a70d04..1b03ea60a7a8 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
> @@ -30,6 +30,7 @@ enum intel_pch {
>  	/* Fake PCHs, functionality handled on the same PCI dev */
>  	PCH_DG1 = 1024,
>  	PCH_DG2,
> +	PCH_LNL,
>  };
>  
>  #define INTEL_PCH_DEVICE_ID_MASK		0xff80
> @@ -66,6 +67,7 @@ enum intel_pch {
>  
>  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
> +#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
>  #define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
>  #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
>  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
