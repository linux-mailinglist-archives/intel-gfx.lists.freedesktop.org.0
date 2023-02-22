Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF09869FBD5
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 20:16:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A99BC10E1E5;
	Wed, 22 Feb 2023 19:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D0110E1E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 19:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677093395; x=1708629395;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JCIzsZ4FHuNNIAnfu8vULmtQxy0fceVzAQLDtXVGjlY=;
 b=amvpl6HmceGdDKQN625fmu4JC1FK8BbfFUvgNMx71Jn7Am//OrjxbqHg
 Xy3m+nPepVFZ0X+2/JjXYrtijU3X59zvvgprwgYrn2HIcmCbvcRE0ku10
 9TVSCXQIh2D9N/pLfKZsuAHPA17eD3mawJrJbbNvWhy4gJKrbi6Cwy6kC
 vtnuIoQLprjAo8YbjcOaIycmH4WwxpRMgMI/1jeKHxCnO1FmwPWL3/KaX
 DLw66LxHVxpsUPh0+uL8rHpts+Vuh8x8T49mwlokP+ki25CczHmtdwhk8
 lSst3YXfvztbj0AwH9Y+Wjp6AQCKxMgkiz28IPuIB0CdBBGST3SmogFly w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="331689444"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="331689444"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 11:16:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="704570400"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="704570400"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 22 Feb 2023 11:16:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 11:16:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 11:16:33 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 11:16:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ilPVH5podtd8icZXAb4QPhIljvkQxoZxne+ojzdOUPNRNyvbV5Rpjp15+4DqUN36NViuqdICylcIvALlg5xLhbkNVfhUMksZtfb7K70nr5OVrUPNFf1sGRcNVtuSNSt8z2urn/C6UooI5+AassAZuL66E9u6x1D7/wfad1Wle0Y1TqGJTKXAqVaQByGw8BjLl+AIM3cCYT7a0z/qGtG+w7eIhAKaHWuD+k6nL7zA2y3+2/EqpjuVrZ8YSoTqSqSFo88tlZXKISFwYiyATAKq5T7NL7+zub4KvLYfh1x95l7XDZhIIZtyV3Vf50y2dNA2xNkI/q3/dQgwq41hjMNlQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MZJdFKyvzkFP2Zjwrwc/Wqq2+/1MbLMGY7H0u5hFGF0=;
 b=Eft+ooFjpHQZvwhAlvHt/rxnJuamcLE8FN/pOED6yQC6r7cL83UbMhzUY+0SVrCLTeNpnECuR07/9T65u0o9emQNiLWOFDZWCBeT19DUz72nRaGW/BEz8GgbruUSrVL7fwVn9cThlFWT4SsMVZkLiCOHY+ld64uAmSPehzVwHsjz8M3nkmbmXAeo1P/iTObL/95xElYW0a/eBPhC5tFea62wyu7O7oJpEJAujwP2/aDEUFweHQzLipQ0HeTzKMG4aClnOob+aGNgS3QTNhwEK2Gu4bogScLoufCQyEuaMGWas8LLCPpyR8yIOq9EVnTW4a0mOcHuDVyxsAmwUkX7uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7923.namprd11.prod.outlook.com (2603:10b6:930:7e::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.19; Wed, 22 Feb 2023 19:16:26 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6111.021; Wed, 22 Feb 2023
 19:16:26 +0000
Date: Wed, 22 Feb 2023 11:16:23 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y/ZqB2nYN8rwsGLl@mdroper-desk1.amr.corp.intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
 <20230222073507.788705-7-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230222073507.788705-7-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BY3PR05CA0044.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::19) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7923:EE_
X-MS-Office365-Filtering-Correlation-Id: 64f9f245-50b3-4ae3-2feb-08db15094af1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nmnOroqnVce6r5dgofnbaap08xnM4K0dfNEOwNqfTRQy+VvJTxl23G0FZo4UTYeCqBvz2PijAtIMU6WkEaN+Zo6Rxu7uqFGsm3maEM+aFDeeHcwRcoL+xlobahDgLvsHFyWX6Fo1bFPPSRQMlKaQzZw4O7DxygOWsS4p836XxKkcKOksfhwITKNQKrPGWWGlAFo5J8VMKndGwEgxVyjoXhU6ynHdLVHuYgm/dfh4ehzPCSCunhs7hxfyR8jZK8mfo2T+Oo12S4eDtHQzfCQ8yQb8L6hvx94pzb+qxA9tqD+ps95E78z0umyGusFXAWQnC5VrliUNQaJWY7EK/RT2ocfmE5ehCWWtL0i7s6OojeXzhkzPKi0QKWLYifb1V0lxnrZu/xs0bGHaZVjfEUmS9Xv8Jo06Xc00kdUU9Rn4Dn45DsbROLbSMlGPGpku/uu0qAKe5EfeSuRL/YpBAmiv+fNAtfZx2TQ+6BWkxxbmrTeSfaWNhYTCyaeBnL5qoLt3uCl2KcKOPeXWcD2de186v/YzRuA65siL0wRCozDAbU8zLm+KczYCLpOdlS0L1R7QELc8Z8Mf1T6vGmXLCs6AMGR6D77Eai9VBJ1qyDqdUNhgs1EEgV+ALZattftmu2GilXeK3ngEP6oLev19zzz73g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(39860400002)(346002)(136003)(366004)(451199018)(2906002)(186003)(38100700002)(82960400001)(86362001)(6486002)(6512007)(26005)(478600001)(6506007)(4326008)(8936002)(66556008)(6666004)(66476007)(6636002)(83380400001)(41300700001)(8676002)(6862004)(5660300002)(316002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kKLWQVCLI0Xan1QjpusueE4+4YiuKNFeFKPY+Fzcu+3PVS2yEhBazd/R4+F4?=
 =?us-ascii?Q?VhY9Fuh/JrkU/Jtxv6X937CD26YW3U+L6Ppbsj8p9N2pUdx4Qqb1yuPukJkd?=
 =?us-ascii?Q?aaqDdfgjRp1e14fAEkj2SzldexdgZQ0QS7fIb0aQ3ZGpSak1N0hNDIsgiuBI?=
 =?us-ascii?Q?B1Js4snRlHm8VIkv2MvCv/iwEaYHjrpFoxPwBTxXhOx4Yb2RbHdQIq2tK1d9?=
 =?us-ascii?Q?dShWa72hYUoellwDZoF6F9Cq9CUysEQ38nSeP0ItLM0iByu7dhFILQnu/P0F?=
 =?us-ascii?Q?sN6ubfDp0InCpNrcqbCLuBeC9efMzgXDyBAjFV//U/gg8nINiT+FttbquatG?=
 =?us-ascii?Q?7Ah6fDAUY7jJ50BUaCOLRWGQPHG3S0aSlIQQzAbovBwj3cMt8hIVXS5KfJsY?=
 =?us-ascii?Q?RlL4aLTXPniXywT4slp43xlOguUU0KqlyWTXgWodS9TPQ4S3IFNwL9qnxe6+?=
 =?us-ascii?Q?xqxJ1FP9ibtMURVWOHqCZthA0HCJS9Cgs8H4VbSa12+NIZwurvpPwxN72yE1?=
 =?us-ascii?Q?dtmrdvfDoPO/uvf1QUjR2tz92B+7Haga94PXFJbZ+Mzj/pRq0FIu9y7b6J7r?=
 =?us-ascii?Q?E8DIvrejnnQqup8YKydCnad3uf0c/W0+sJIfZgRP1aMNSY9gVtGXZcUm0M+3?=
 =?us-ascii?Q?0YZPBB9Ri+OItaVoX+fjta9iP6k1LtTIL/kQoFChplB7sgX5byAmiB8HxN6N?=
 =?us-ascii?Q?fKNdu6RUNJG218Thxbzf2T4NF7vtxvuSHjDSeEy6P2dZe79sjDUc9rOj8g29?=
 =?us-ascii?Q?rbtksl057NG346MuhS0TlRyJMt1/9N+gM3lRMvC8j++NPPNpcvcoHvYIOPZC?=
 =?us-ascii?Q?4NLj9N5JY53zl/Jos3AnXHoevV+Kvkp9xAkneko+D80uhbiJokSH6nHeGTWu?=
 =?us-ascii?Q?3MA87U4h7/de0YgxHvqKbxsTxSInCjL3XeMkk14zuKpZqAN8BUt/0WCICgcp?=
 =?us-ascii?Q?ajEbu0LEShXi00FNV6CWTPLsP+STGhp5hr7Ml8Lp5X+/M0UERJA5N3rfIaa+?=
 =?us-ascii?Q?hjmAifVWCSM16PwtxgTgCk89r6CU4eUe93sm2g46x5f61egMHMQOZAyGyA2m?=
 =?us-ascii?Q?/c8QFZYNybg4KAU6o1f+nrYF8U3KTXTpyIghQKppzkODd7XkjhMxlyFOoLlk?=
 =?us-ascii?Q?totDM84w64VbGbe5fgB/3hwYKgWNzig9WV7WIEL24JvSVVPwhJg1lt0MF3CD?=
 =?us-ascii?Q?MnjNPW3vpg0GqX1mOZJHUwvzsmRpJhTKM27pjFdacn9Z60zXOoBS3bfgsup9?=
 =?us-ascii?Q?dPfNvka2W+cbv5qtZxPOv92DqrNrkXQQd/IiEtDYCi/RIkWrFmjkVUdA6zGF?=
 =?us-ascii?Q?ZRrgPPwtMvig8Hf0fHKH4JceClgbWWbFHY712knUvxw/GCHMBUERP4ulnC73?=
 =?us-ascii?Q?fPDq99hJsXArIAury2liHXQQIgbZtDgcPTcje+0jA3kxMV11C9DC8Dkk158L?=
 =?us-ascii?Q?QfIYjK1X9/KlzaKG0Hhaa63d8kOwPYditRvdADX3KHRWWeN0rLPG+g3R0RLI?=
 =?us-ascii?Q?Pav4SZOenrGTUv9a+FsgYbvyAdbjBfH26DgOa2MFKiZxbUmKcLhxQIIbLiJ3?=
 =?us-ascii?Q?uim4zQwNR2LE9Z6aIzsynTptPRC3S7Q9Lg2AkfNw1H7MhO3rQHFLYh5sxXqj?=
 =?us-ascii?Q?Qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64f9f245-50b3-4ae3-2feb-08db15094af1
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 19:16:26.1766 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ITCGaqNSlegR6gFqZZKjfbP94NAAo4tIpwq7trOAFz7K40kbASHHuK+nFT0h6AokM9a/bYI+wfO8nqIe/tMniazd2Dl4RLdfkBaQn53NM6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7923
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 6/9] drm/i915/mtl: Drop FLAT CCS check
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 21, 2023 at 11:35:04PM -0800, Radhakrishna Sripada wrote:
> From: Pallavi Mishra <pallavi.mishra@intel.com>
> 
> Remove FLAT CCS check from XY_FAST_COLOR_BLT usage, thus
> enabling MTL to use it.

The title "Drop FLAT CCS check" seems incomplete; it makes it sound like
we're dropping the checks everywhere any treating MTL as a FlatCCS
platform (which would be incorrect) when in reality we're just switching
one specific operation to a version check instead of feature check
because it was never really tied to FlatCCS in the first place.  It
might be good to elaborate on the reasoning in the commit message too.


Matt

> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_migrate.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index 3f638f198796..e0998879a0e1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -920,7 +920,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
>  
>  	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
>  
> -	if (HAS_FLAT_CCS(i915) && ver >= 12)
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>  		ring_sz = XY_FAST_COLOR_BLT_DW;
>  	else if (ver >= 8)
>  		ring_sz = 8;
> @@ -931,7 +931,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>  
> -	if (HAS_FLAT_CCS(i915) && ver >= 12) {
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>  		*cs++ = XY_FAST_COLOR_BLT_CMD | XY_FAST_COLOR_BLT_DEPTH_32 |
>  			(XY_FAST_COLOR_BLT_DW - 2);
>  		*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) |
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
