Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8951B9A4A4D
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 01:53:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5539C10E9DF;
	Fri, 18 Oct 2024 23:53:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZasYUsPq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8652B10E9DE;
 Fri, 18 Oct 2024 23:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729295629; x=1760831629;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JE8WMvL2ryQ0H9oA8lfs/3fbD/NhGoXK1ANXIy3E+mQ=;
 b=ZasYUsPqz5iEbSwAY+LJI4lejqkxpKvaxatz1pqY9Eh1bUtRW9XbZ/qC
 VDQSZUN9xVVhORMigv7UFAUpVFr71cfAwPJ0JjRNxOVJWGc9kWVkqJgnB
 B6S38YNAaE9/YP1MB1G/k/vLtzjrfWPDSqeeHhTgtO+LtN+zsxKFv6OPs
 oiuE64LWivqYsgg4Ounhnk6Xj9Pj0ujSiJ53v3ei/CmpnMD07whxk/Agi
 uNdAR/omUHaMPgcYVGYNhEzZUPnPwiNq/OKpAyC6kYjX0xl/1D5O92yfR
 jKDIpccLnSvD5TbrGUK4mt6gp6Eh9v4dtGeXzvSO7TeJgqS8gRj5Ma6/7 w==;
X-CSE-ConnectionGUID: +iID6PVrRTKI0iqjGe8Jtg==
X-CSE-MsgGUID: kpYvZWfNSzW87fu4KoA/fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39970327"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39970327"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 16:53:49 -0700
X-CSE-ConnectionGUID: mXRoOFEcRK+HUbSlaPRDMQ==
X-CSE-MsgGUID: 8kYP6ovcT3CQoeOR26rekA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="83830976"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 16:53:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 16:53:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 16:53:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 16:53:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oon7PgGYhY3fgEHBYSxtXYs4AlXzq16BisJg1GeZJQncUY98nC0ng0v6vj7LRwgS2hc+WYhcQvcfpN4one3x08YAGCvc9jr6o+YpR/gmdiyqFfMyZlgQf/VZNgwJMaPQ/54zMYyMY6ZuBx5b6xgMP5uahU6eUqsTuUr3KxXlu1AbLf3s1ytWTqd64TBajnCljo9wK2UPh70+I3MElXCozhHig9PJoPYhvEJW3LxSkRxVMS83RGDM4tf0cg/kpT1YzrsCACy6YJ+DqH8a03wExCNj0AmG0PxkrnxB7lnGwmmNRTSeu32IBMgbRuVR4rJOTU74HGfNmEjXA3sxs9ADkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V7XCRfsxSJh5wncU7nnY7/RUTsRtUnaqsDn5bQP4+eA=;
 b=TRk7t5fqdk5KwB+ZDfdhtqXUbYVYTy/5Wtsu8i3IHJenvdrc3AKTLSJeBG4ky4Nv5mrijXDj7GjBZX9Nq/D9TAA12LxjZua2XW74bMicQwaxEZa5TyI6XjtH3oAEMi8Xvzpg8Pc0Oh7RLXU2KCBmQuvCaxd5UwDqA4obkVz8cLRUwtJF48ZbsMnAaMAIAvE240+xcF4gc5ZB3LmWwUVLaWQfQZqMIIFuhB7Vdnepl7ah+ipXOr/jcnmcpAkvN0PfWr+hVkAivR0mIsyEr8VFGeWfg5e4uG7i9KIRbYGs6gFG5U32kCchIJe3AerC7zxBzsF40SruxnZE3S2dDNAtIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB7328.namprd11.prod.outlook.com (2603:10b6:8:104::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.20; Fri, 18 Oct
 2024 23:53:39 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.024; Fri, 18 Oct 2024
 23:53:39 +0000
Date: Fri, 18 Oct 2024 16:53:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>
Subject: Re: [PATCH 05/12] drm/i915/xe3: Underrun recovery does not exist
 post Xe2
Message-ID: <20241018235335.GI4891@mdroper-desk1.amr.corp.intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-6-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241018204941.73473-6-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BY5PR20CA0005.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::18) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB7328:EE_
X-MS-Office365-Filtering-Correlation-Id: c9297177-fae1-4eab-60b6-08dcefd016a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pse4VdpfCIr/hWpUpI78oRc7Nv0dPMarW/+fUkeXAxLM5+Ln87g61fkf+zLH?=
 =?us-ascii?Q?XnH33KsQAxVIAE6TTJaMJB1g3LjP/Rjc4SdKYfLUtPQKl8TRyXIqvMpnpUdp?=
 =?us-ascii?Q?QNoUm+se7NxgnBcIJ++OXOnp0Wmx3L8AW72G4eC+FF2qNSJYuEIpc4B9QRJV?=
 =?us-ascii?Q?AtcBc6jm33HGCzJfPmFgz7qnGPVxCpJfetPbyOPvpa0/kDk8xfOvVhOdn5mG?=
 =?us-ascii?Q?fRPtDzB2h4aXbR7IDXNwffZKag/shjxp2nsAa1DLsTZ9C+c6SlCC3tBaxN9f?=
 =?us-ascii?Q?M5OKQC/20H02U5M2YrtOavgi6Pa4z52b6+R92B2zQgb5p05qAjrN6Thc6Ak0?=
 =?us-ascii?Q?FvJF8YDYWlQ/v1+GjuGhWKkYULCsVZC2mjud8XAYqNzKhuH9WoF/w48sqqAh?=
 =?us-ascii?Q?Ci7FINcUqbLg3tX9Etbwur0WxmDtDTsBM1AfnFYZalJykP1ZGnjoTKooZixf?=
 =?us-ascii?Q?Nja44GekXrPTfKyZ+Xl3c3NhTdG9kLwFJfa+p7s+uCXduVAsVUUg40F0Ee2L?=
 =?us-ascii?Q?VEisMNpn9ucvLTs/KxNiXjcz4aeb3D84MIpcFvXVHeTMWoSaoxr10tOfy8rf?=
 =?us-ascii?Q?nCnl0ogEBtw/i9n09WMwi4iAauozRt9wV5UFw/BfzTm+lRJcyrt7KsJ7gXz3?=
 =?us-ascii?Q?CLuyrgI8KPo4lB1RB0OHoFMR6WsNBVnHdulEYx14EXJduTe/ioRgRfJS6dMl?=
 =?us-ascii?Q?wKuIeBjIVSESsptyDiCWTXx2N92aIw8QgAy6YgjV+O3GauvJubfcVIQyQDgn?=
 =?us-ascii?Q?A6mTJA/kZmptEMlZRjPvKStOJgZJFjmfI8CR/jUv3vhBj+Qoyh0xICT8w/6j?=
 =?us-ascii?Q?iIQAFu/tr1IdN9lrbzJMPgWjVAfBDuL01Kxw4zFGc+jzA4gs1y4SAA1Tbym3?=
 =?us-ascii?Q?IyAKtxXYXvukuqqIyR7yVZ6d6lUrODZYfMAv3Yqbg9ahCDAz5zQYM9xyaPST?=
 =?us-ascii?Q?tyYBdkxo44ruHLUVy//d/uRtB8uJXamirFMKpCaq74fbgGSOJYtrrG5qc02b?=
 =?us-ascii?Q?UFsfV6deF2BgtBIpEIa/Fh9MY+ey68SqCg16oCvh44uybdKL+/XM9BdEiX55?=
 =?us-ascii?Q?+rrxepWaGp7fNPJTUr9uBVi5MAV6VM2JIDiySXVxaQydboTYGZXsBKbJMyLC?=
 =?us-ascii?Q?2SMGl2WWeG69dU4m1KLw8O/Hk+25qbZHhGVNAw5oi7eapimxqDC7ijgzk0qO?=
 =?us-ascii?Q?qjeCVtin3hkBrzwfvebzalAWlYsTgoGvfZhr0/LUDZDocGGmKbob5ev4dK4J?=
 =?us-ascii?Q?Y81Heo6aJnjD0OShVdM5CTY2bJoY78dj+htUYZ9Jgkbq9A1I+2RnZB+eFm5l?=
 =?us-ascii?Q?XSo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0T4iv3ueXXphdf+PZnO7cp32wHRcF8cNsVIHXZj0CjDgfbIG9q7hjOOQHI9g?=
 =?us-ascii?Q?U8NpVXV7frcL2eYji92/V9aDqEfXZEy+AyvzuP24sGVzciUfu7ugz9N0Jgus?=
 =?us-ascii?Q?AnmLkUZ/AzkhX4UpXksMQTRdvNY4U0k0UxzwIM91h3U2ACRcgdszeK++vZ9+?=
 =?us-ascii?Q?C/ciArTGQiTOGfCBdZK2IofxQw4yrD4GK528RBTrt+5P6MQcHlsZZXqphT/o?=
 =?us-ascii?Q?bpxyaAmpFtNzV7JwENhYWG1LOW5BOzmGwTSd/6HZ6rhkvuigFhSAiEp7ecGD?=
 =?us-ascii?Q?4AO7wOEO1sk0a7gzsg1pRULewA4fxxoHgapCQlHZO4GxvLqKt2l8Ld2ZaE1C?=
 =?us-ascii?Q?WouQb4yGsBH3iIaL3z5jpDDVK0A3U9CSzyyc0tFBb8si7kF1LxIHc/uiMcIE?=
 =?us-ascii?Q?HcbAntYzV48aFLZ8OquViwK5DNty1N0nmdfmjSaJuycXwOOg1eYvlksao0fQ?=
 =?us-ascii?Q?QSPTHM3DPmO6wHdQSnl8rdoj0CwwYCOrVFDXqRlTV8IMLihPVcCQWoJyeDv/?=
 =?us-ascii?Q?96WA8N1AZ9lA+HcOScR2MU5V+oSdlPcyTF5MBW9/2jn96zo6WUpCINBIFUz9?=
 =?us-ascii?Q?ecwb5qc0FZwh5ufEB4CeYGhWk4KSstRqCT1YYXqnU0CYRCd5WOC1+wn6JM+Y?=
 =?us-ascii?Q?/jnskw7slGhYW7RHwpDx34yb9QSgY95qsZefcethD6WLC2fp8MaiQCq0gXVY?=
 =?us-ascii?Q?bc6uZKnm7+yApzA83xPMgWFBEvcZ9CPO4xJPXkgYIUzVWSQCLbFzIxZaZtXl?=
 =?us-ascii?Q?Rrnbs3PK7cp9z6cYzqxqIg4w200P7OVk5lDQJ3N/lMq1rTnA8WSdPt3zZKyp?=
 =?us-ascii?Q?2kORbZUnd0Zf9IOLHWY71Kn7C68xT2NyzP1vu76Fph2FudffnnLAKW1fTUzS?=
 =?us-ascii?Q?ldOQ8c/CEqMrC2v6KBKes21wPGIF51hQuza5YLWnyahRK2RLiRJ0L0FX3KV4?=
 =?us-ascii?Q?RzR1yV8OQc9SXHP7zWRX8puWnmi5NewimrhcHGIsGNK1AEHOBXdjl412qu4l?=
 =?us-ascii?Q?sZ6QHkIhTTZRA0aUQopOBq3VXl3YGRS8LhgXAKf8lJordfYl8Frg/SmEJb4N?=
 =?us-ascii?Q?E+ZkMIc0DOXEvoHPsB/s6yA4CKABZCXMvbpiZ15JwOcsfzOHyTu2dSdZuNpp?=
 =?us-ascii?Q?lSJuKPkaSOEdHulp06AdXMKCzDDHqDZTvYo86hzxk7If8Dbyeu4QLLea5Kx5?=
 =?us-ascii?Q?nXOYAn+hTjGr5WrYmrYuknBo5rU6ysbF6DCMtfkBin3tprXjLT/RW7E2UTMD?=
 =?us-ascii?Q?vQjUt15kh2WP2IIa4tghAOWSIEmbEWl4efackaA2xPCdXIqvHA1VdkE1u04g?=
 =?us-ascii?Q?Ib4HWF+XvdspjAhNuueaXA306bqFfqHBHvfXVKwshdLncTtfFgNAuWjiROme?=
 =?us-ascii?Q?3SU7hVYTum7Nph/Nzg1DpVpYV9MvDS/wZ8RVjv8kLErHykdLPeUgrxHQeWwN?=
 =?us-ascii?Q?VvpYNz+M0dk9sT//ek4Z3UGqBf6i/ji67WVmeIAg2HQk5puV4HvP8e5gVWmA?=
 =?us-ascii?Q?ZAFVPWni4KkkC/xtF27B7lMb6+J/fC+yomPmH56VDW/tEtw29OhwJZd2Shd0?=
 =?us-ascii?Q?loh5Dl4N4JY0jIeq1ns1jgV9db9PPCwW8qOx6LdsXtH36nsAuGChIXEhpy2b?=
 =?us-ascii?Q?uA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9297177-fae1-4eab-60b6-08dcefd016a0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 23:53:39.7898 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8TVCRn8O1bbsOcmjZaugVo87YKxGPxIzYx6Xz0JX0dvMNjSLUz3L/OHa7MNxqCsc+l9tVBU8PbsUmXgp9AHrfJ1A4O5ZYMX1y9oXlSUwdgY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7328
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

On Fri, Oct 18, 2024 at 01:49:34PM -0700, Matt Atwood wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> From platforms xe3 Underrun recovery does not exist
> 
> BSpec: 68849
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 01466611eebe..dad415650b40 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -861,7 +861,7 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
>  	 */
>  	if (IS_DG2(dev_priv))
>  		tmp &= ~UNDERRUN_RECOVERY_ENABLE_DG2;
> -	else if (DISPLAY_VER(dev_priv) >= 13)
> +	else if (IS_DISPLAY_VER(dev_priv, IP_VER(13, 0), IP_VER(20, 0)))

I don't know if we're ready to assume that there won't be any more Xe2
platforms showing up that have their own display ID's in the 20 range.
It might be best to just write this as

        else if (DISPLAY_VER(dev_priv) >= 13 &&
                 DISPLAY_VER(dev_priv) < 30)

so that we won't have to remember to change this is some 21.0 or 20.1 or
whatever shows up.


Matt

>  		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
>  
>  	/* Wa_14010547955:dg2 */
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
