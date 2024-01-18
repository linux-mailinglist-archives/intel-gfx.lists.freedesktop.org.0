Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9133B832237
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 00:23:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C4110E1E7;
	Thu, 18 Jan 2024 23:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0483A10E1E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 23:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705620178; x=1737156178;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PFsOXZLlcllzqf5w9cdMcOc56QfrGYY14XIFXS5qfKA=;
 b=DElcr4hewwtuEMCo+RWw4VbAp50wxpKdca4fPKd7SmE7Wq4JN5VwGKWv
 8sqomnLUzNLiCB5tYgH1eDna9TangA5+vxKgT6VsO3nt97THErv6NkjXN
 swbv1IieITJcaypv6P7elRpwIEKVMqPXhyE4ixvCwLfGeaQ48OPDSLpmV
 QMRZofDlSrjBnPqOv0vSy0CpdkMl1cOI5GhIqkvkBSZ7qKAE0jlk1owal
 pXu+HFKXlcJhxpJCTlgz/Pnk1x2x7nCQt3LPslyX4mU/pzlphDKAPSHHb
 5WLQ3ZQX0SdN2tHnLkoBwtgAaP7htAimKeUd6JrcnoaHU9QVNk3eCFFF0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="19193786"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="19193786"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 15:22:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="734398080"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="734398080"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 15:22:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 15:22:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 15:22:56 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 15:22:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZqKLbgn6pC5YIrFml/3Yghwlwf5i4riwU5rzwiGZ7uiIJZeCsvCpOpIUXbOoD+GJhVB0Uf7QeM+uybiP2J5aDHqs95ruhWb1XAsxLjw3OacDoBKoyVB3lcXpB1T9oev5aDL5X0Wks9VX1a2jk2EgaGeyF8/q/gmurxE2NoyWd3tVh5V8nZ46aFwRIaK55SGVWJom1UXf07xfh1aeR5RyYpxHPmX5kCGIOX+x3HzQ6yIhokEKJoo2Jgi0FrbdjM3YNKdtT2E0rLWCUzR/UbHSMGQpg9fo+og7ffzMCI7Uyl29Oryo2EM0Skk+unhY9wyVMiwmp7Gv8WOdHeM9C4HvKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xYl1yhRFynLTZ3gtm+g/kuckgDCI7B6Dc93lhJG/nZk=;
 b=IrAQcKEr3vEOD5Qg4SyqK3HcyF7QyesVjD3qQLJa2XrTnZnlM5/ItWFBNWj5PmT6fvNcdU+BLfMjYPeZNrPJTS1vSJebscQ2fTEBRiw9fhKARkM/AaYnLkt0MtrKGOLiM7N+BxBoYrgHLUUGkRH6C5P2hGFaK2cvSSnxkICLtBf3a933mXAWDJBDn/JNipcD2nvo56iB/e7+0xOsNm8NkZ/6kAQdJOwOXhAx1oxfDxZuXc1vmKI7TEbUoeqOhtX3DGOJb3rU6EJuu29gpQIoLf9EU/PtLsL5Dub10SHdiIZxaXzFvKqe4KDtRSHwQi5vbJIwtDN8Dz7eM0Ii6Cb8mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB6728.namprd11.prod.outlook.com (2603:10b6:806:264::9)
 by MN0PR11MB6229.namprd11.prod.outlook.com (2603:10b6:208:3c6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.26; Thu, 18 Jan
 2024 23:22:53 +0000
Received: from SN7PR11MB6728.namprd11.prod.outlook.com
 ([fe80::a3d4:fe63:413d:4e44]) by SN7PR11MB6728.namprd11.prod.outlook.com
 ([fe80::a3d4:fe63:413d:4e44%7]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 23:22:53 +0000
Date: Thu, 18 Jan 2024 15:22:50 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v1 3/3] drm/i915/xelpg: Extend some workarounds/tuning to
 gfx version 12.74
Message-ID: <ZamyyoqLPEGNTHNw@msatwood-mobl>
References: <20240108122738.14399-1-haridhar.kalvala@intel.com>
 <20240108122738.14399-4-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20240108122738.14399-4-haridhar.kalvala@intel.com>
X-ClientProxiedBy: MW4PR03CA0336.namprd03.prod.outlook.com
 (2603:10b6:303:dc::11) To SN7PR11MB6728.namprd11.prod.outlook.com
 (2603:10b6:806:264::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB6728:EE_|MN0PR11MB6229:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d276bce-dd9b-4832-5d75-08dc187c64fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7rnchuqaTau8Zbaz9HGc1vz7c2IusnMDXitm/1GSM/XpD5lp4knNQYCF6DBWubc2V69FEESQkO7jV0eL9aoZz9AE78SIADgF23DvnXZU5HjC71wl2ahFJjJBx/fzmqes0Ce5tqKf4MeXFfhCQEF01cHbW7TFvsanVN+Le0E1XKCEg76wI6ujD2TDLaUi79s7RQvh6NUR/L4Vjh4HIWxFldAt62vibl2lCCVldd2mUjArAZueQ3I8/yv49xpD1LFSyvL4JIuWK00ToXtaRi2WkYLugwrYOoYZc7m5NIqcZTnE7uo/SNC67OjCC6a5bfTlIEjprnBzkUj14H0WEzehULkJb98hBETThf8UgFoIPmN6F5K4gceDJIHiRFcrwNLaVg2aqLT/0mWl8yJ7tpNdeKEn4Rh+0f8RTbi9W7oRDbvR2PPTKUZQNZm4oI3ANv9m6SvA6H+5DkfjMN5O/im3Ldf2xOkK/5yxosDDGCFoM0lMkmSgbkyGVfvf4l6bvlTa3jbZuQf782W6dzQrRFFWuveacStCwIy/Qh6xXOZz5WTUuYiyJ6E7DwG0F+gyc8iU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6728.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(346002)(136003)(396003)(39860400002)(366004)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(6512007)(9686003)(6506007)(83380400001)(86362001)(82960400001)(38100700002)(4326008)(33716001)(5660300002)(107886003)(66476007)(66556008)(66946007)(8936002)(8676002)(478600001)(41300700001)(6486002)(2906002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUxlNEZqVHpKZ2xRbklTaVNkU0JHb0Z1SUR0Uy9NZG5TNWVpVmFLOGFYVmF0?=
 =?utf-8?B?RjE5cDNDdTJTU2JERHdUd05Gd3FmcTAyei9TNVRTUGwrZEJvMDVoa3l0dUVB?=
 =?utf-8?B?ZXVkd0I4M2RZOXpuVnpCeVlza3RrU3JNZ2pwWlBlT1J6clkxay9nVnlwYnUz?=
 =?utf-8?B?UVk2MC9KV1RtaXpYSFFZS2wxQmVNVmZrWm1INlJFZ1BKZUNESE54cXlhSkZq?=
 =?utf-8?B?MUpaUExtNHZjWUxoYTFYb1pZemN6SDdZL3RMZ056YVEwUVUrQ3hkeDlPMU5h?=
 =?utf-8?B?ZW44OUc5M2M0RXNBM2Z1VnVmbzJjbVZwNjQxZ1l6djRGMFl1N0VtZ3Z6R0FV?=
 =?utf-8?B?aTlmbGl3ek52bmJtUjI4aFJnSW5QcVJZQkR4b1pZaFNEMDA0c3VVWkdGajBC?=
 =?utf-8?B?cUd3LzNCY1NmQko1bVd0RXQzam1IVFhJUFhKb3JQbHplL3hLWVptZG04elVl?=
 =?utf-8?B?VUIvMHMrclZOOEFhb1A0VXRrYThlKzBBaktBcTJjODFFNWMzWUcrSDcrak51?=
 =?utf-8?B?dHBmd1U2TVh4MkhhRThTRXRjd1VZVndOdDBUS3kzRGY3ZW1CN2RDUjBUQ242?=
 =?utf-8?B?blZVangvMWczOHVvclhwQ0xDcGdiTzd3UWlRMDFRNWVWWHdxTVRKbFR2blUz?=
 =?utf-8?B?NE51eEJ2Rk1VOHJSRkc1OGZKdnVxelgwaVVVMW5sVEN1WjRRS3lYZXd0bzdB?=
 =?utf-8?B?QkFhbnMxWCtXeS81b1djY0ZvOWF3YXovQUFTb3JkUVlWbFoxUzlHVzg0UjlW?=
 =?utf-8?B?andJTklRRFJNOFNsZ2J4alJVaWVBK0xLTXVjU0JMcEg5UFhPMlYzNmptdlNV?=
 =?utf-8?B?bXRtdmlzZytqak5JTUFrcDJEbUdJRFc4bVVrY1d3ZXFQV2F0OW9leXFuVWc4?=
 =?utf-8?B?SEM0eXJQa0dLVXJ4UGtkNVpseFJHK0had1pGWDJESWhNSjFBWU9meEpkSDc3?=
 =?utf-8?B?S0I3N3pWYjhLb3NlaHdHNE1GbWErTUV2NkVFS29xS3NGcEZUSzJRMlpVWkQ2?=
 =?utf-8?B?WFk3M3RhVy9EUi9odjFOUVNBSWtvQVRBeG5lVjVpZU11WTFTOFh4UGlGS2dE?=
 =?utf-8?B?Q0dwUFhtRFA1cXhGd1QxY3RlR2c4aGVVb21JUnJzc21NOTQwUFdPMXRsRDVF?=
 =?utf-8?B?NkN1elNiV2J6K3hhd3NVYTlSVTNkblVKTUkvdFdId1hSRUxEZkZmaE1keVVW?=
 =?utf-8?B?aU5GdS9RL1U2U2tPdTVoTE1lZ1JxakVmTVY5WUFqVVlKdGpha3c2TDJkaEpt?=
 =?utf-8?B?Um4zUjBIL1lURmc5MnZQSWZMbUhqSFFSQjhWUWZSWDM4dTBnSE5RQklUQVlB?=
 =?utf-8?B?bGNHZG95c05SSExnc3pLd0VDTC9Jb2VMMzZUSVY1TjRGMjFHK3R0eVcrazdx?=
 =?utf-8?B?aWQ2QU5KN0hDbThWemF2cnRkS3B0QXhwRE1RbHB4MVFXNmUwZjdjU0E4aVNi?=
 =?utf-8?B?bmNlSndyd3BwaXZKUjQ2UDdiMVRBSW5VejJlNkNVSGo2ODRoRys4cExNNHU5?=
 =?utf-8?B?aSt4ZFl6NHpQb2xWR2NveTBvSzNWV2EzVVZ1V0JwamNPSmQ3elRxU3BIaWw5?=
 =?utf-8?B?MVZNUEY3M2RTdUIwWUJJcFdGOGgwd05XQVZ3aFA0Q1MrYWtKUTVZTElkL3U5?=
 =?utf-8?B?ZUlRTkxlSThoWjVKOWc4UFJublRnWTFqd1AvQnhkNEY0VVEyL0xsWGppbDk2?=
 =?utf-8?B?UDZUNTBGQ1VtcVlmOHFtdU92dHF6R2ZEWHhrWnVBQUFpNEVmR0JDaU9OR1pG?=
 =?utf-8?B?eGRxaEFRanByKzNLZ1gyR0pud1JrNVp6UVk5aGJLUSt2UWNDY1FnUWFsajFB?=
 =?utf-8?B?VWFEbTdpM1FsTzFXYm0yTDJWUndZSnJnanNHcm5PN3YwRkdNbVljU3hMbml0?=
 =?utf-8?B?QzQvc2lobjN5MHFXOGFacHZWc3V2bWlVNWJGNG10VXcxL3dUQ0lydS9HRW80?=
 =?utf-8?B?cWhQQnJkSldQZjB2enRJYnR1em16MEhsMXRhUjJMU1pjMXRqdjlNRVU0UDBh?=
 =?utf-8?B?V21XT2EzOVdHOUpEUFR6czVvVHk0RWJVZmFFcU1ldmRTUzBBYVFNcGZOaWk5?=
 =?utf-8?B?b1JxN0dtWnNKRGMxYk83MitMeS9kRFNMNWp6SlJSNnpDOGQ0TE9DVlcxL3Vr?=
 =?utf-8?B?ZHdYVWxtUTQyT2tmR0dsR0RyaDRvTHBiRFlSM0dRK053RFFBMUNFMFFKWWhh?=
 =?utf-8?Q?uCPv3dQZ0og/xTbZc9A/5uY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d276bce-dd9b-4832-5d75-08dc187c64fd
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6728.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2024 23:22:53.0314 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vGjTz4wZkY7HQS2d9kKp2O7EjzRzPv0E1SdzQfIPvIw9Z6riWw9GPO/8CNs9Vg9UOHC0dKsZnWvRtUvq6PbS/X8y6NU+ZPm+f5jlCCfF4Q4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6229
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
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 08, 2024 at 05:57:38PM +0530, Haridhar Kalvala wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> Some of our existing Xe_LPG workarounds and tuning are also applicable
> to the version 12.74 variant.  Extend the condition bounds accordingly.
> Also fix the comment on Wa_14018575942 while we're at it.
> 
> v2: Extend some more workarounds (Harish)
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c    |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 24 +++++++++++++--------
>  drivers/gpu/drm/i915/i915_perf.c            |  2 +-
>  3 files changed, 18 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 86a04afff64b..e1bf13e3d307 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -226,7 +226,7 @@ u32 *gen12_emit_aux_table_inv(struct intel_engine_cs *engine, u32 *cs)
>  static int mtl_dummy_pipe_control(struct i915_request *rq)
>  {
>  	/* Wa_14016712196 */
> -	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 71)) ||
> +	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 74)) ||
>  	    IS_DG2(rq->i915)) {
>  		u32 *cs;
>  
> @@ -822,7 +822,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  		flags |= PIPE_CONTROL_FLUSH_L3;
>  
>  	/* Wa_14016712196 */
> -	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)) || IS_DG2(i915))
>  		/* dummy PIPE_CONTROL + depth flush */
>  		cs = gen12_emit_pipe_control(cs, 0,
>  					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3eacbc50caf8..72dac27d9332 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -789,8 +789,13 @@ static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>  
>  	dg2_ctx_gt_tuning_init(engine, wal);
>  
> -	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
> -	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
> +	/*
> +	 * Due to Wa_16014892111, the DRAW_WATERMARK tuning must be done in
> +	 * gen12_emit_indirect_ctx_rcs() rather than here on some early
> +	 * steppings.
> +	 */
> +	if (!(IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> +	      IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)))
>  		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
>  }
>  
> @@ -908,7 +913,7 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>  	if (engine->class != RENDER_CLASS)
>  		goto done;
>  
> -	if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
> +	if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 74)))
>  		xelpg_ctx_workarounds_init(engine, wal);
>  	else if (IS_PONTEVECCHIO(i915))
>  		; /* noop; none at this time */
> @@ -1643,7 +1648,7 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  static void
>  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> -	/* Wa_14018778641 / Wa_18018781329 */
> +	/* Wa_14018575942 / Wa_18018781329 */
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>  
>  	/* Wa_22016670082 */
> @@ -1710,7 +1715,7 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   */
>  static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> -	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74))) {
>  		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
>  		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
>  	}
> @@ -1743,7 +1748,7 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
>  		return;
>  	}
>  
> -	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
>  		xelpg_gt_workarounds_init(gt, wal);
>  	else if (IS_PONTEVECCHIO(i915))
>  		pvc_gt_workarounds_init(gt, wal);
> @@ -2216,7 +2221,7 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>  
>  	if (engine->gt->type == GT_MEDIA)
>  		; /* none yet */
> -	else if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 71)))
> +	else if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 74)))
>  		xelpg_whitelist_build(engine);
>  	else if (IS_PONTEVECCHIO(i915))
>  		pvc_whitelist_build(engine);
> @@ -2828,7 +2833,7 @@ add_render_compute_tuning_settings(struct intel_gt *gt,
>  {
>  	struct drm_i915_private *i915 = gt->i915;
>  
> -	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)) || IS_DG2(i915))
>  		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
>  
>  	/*
> @@ -2881,7 +2886,8 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  	}
>  
>  	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
> -	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
> +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER) ||
> +	    IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 74), IP_VER(12, 74)))
>  		/* Wa_14017856879 */
>  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
>  
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 7b1c8de2f9cb..6e1b9c53a22a 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -3196,7 +3196,7 @@ u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
>  	struct intel_gt *gt = to_gt(i915);
>  
>  	/* Wa_18013179988 */
> -	if (IS_DG2(i915) || IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
> +	if (IS_DG2(i915) || IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74))) {
>  		intel_wakeref_t wakeref;
>  		u32 reg, shift;
>  
> -- 
> 2.25.1
> 
