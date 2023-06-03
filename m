Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC49A720C8E
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jun 2023 02:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AAB410E10D;
	Sat,  3 Jun 2023 00:13:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FA1E10E10D
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Jun 2023 00:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685751236; x=1717287236;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3yY6AcyVzrEilaADjkgiCftPZ8cqgoO3V6D/kzQho+Y=;
 b=R2uewxYhlTCygnGRECf94gUnI95Og7ODj2CWwP4RnekczSyWTPLXLdFd
 1hc2UV8Fdk70JNbde109ax35N+ZKO5K0ccQ1T9tHYTpm/ajJyQD1laPZW
 x546iPzCGgkStF1F9iSFQMZxy3oIG9HzQDeEjaEngSkcZP/YhWW6KHDwz
 Bg+U8k/g3jtGbarbk6KZ3ffQKicimHThFpUCZbI73/iNfA43Ok14+oVtP
 g5kzzXY5pUvRhMDo4wAnolgt9pkJjomoy+h1jnVvtX0P5PR+GztbECbWY
 2NyQzN96ZIRu0gkd4YzuZfyK6eFoKM/OTM07b7JmLEUkNtMkbJOPwZWYO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="335623237"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="335623237"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 17:13:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="711145572"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="711145572"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 02 Jun 2023 17:13:55 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 17:13:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 17:13:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 17:13:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 17:13:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oTg3YU/OxdtqaaNK6lBRTWnEeeuNgnyyQ2ACNg3ZsRKMp9cG6uymRd1wiuF8akLVI5iJ3tFNt6rZ/yeGqULPjVoqaPKp3RKv9BS/c00xapachxogEeONbeXJB/I6sQC4BvY3WMQjs/wTckDC3EUkKRVcvjl3VcmDZhD5A3Ojia3FQIX2mYF3R/jdYQHh5KboO7QAgV7JN3IqSZFXGOsZH5gynFfvrBMrrZW8e2uBLMZqjBGOrDBINK1WVprZpoMSlgzwZKs7XZxBuVGHgmI/HKOLp7daX5HRpQo9NoDraPQNBP/JGT1NgJ/jB66X/+hRm0uF6WEKp+Hei4TsjtCahA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9ZMShhpLkA3XHD9Vom6XkmIpLVPWizVrkdo6ju2qnA=;
 b=fLMLNLrJ0nv9e04TYhlV8Eawf5JOT45oCDNgUuoM8SSp89PTrEY2b34NzxrZ2AistimUWcKVRiuaSkEaSpQOasI+V06TYhgmMvbj6jhMDcAE2N1gTa4azbJ+CJtIhGX7MWWA3lGDglejcCvPA6lY+EEHEyDNwFAQeWIdUDRlMK2bXG5Lse3pti5Wz2Xi3fJQebfVyKq5CHxxY3Vh29Jk8wrdWCzIGZ8JPSAvRbLRJzNlWAhX82PwLGQ3+h9da/7M/LAmYWz0Pw0JzhBjk1lYsyyfZubLuwxo1JCGNf4/OPofzgD7bouGaGcJCxqRIpSSlnHeQFZy08IqHS7sdnrpWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB7908.namprd11.prod.outlook.com (2603:10b6:8:ea::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.27; Sat, 3 Jun 2023 00:13:52 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%3]) with mapi id 15.20.6455.027; Sat, 3 Jun 2023
 00:13:52 +0000
Date: Fri, 2 Jun 2023 17:13:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20230603001348.GS6953@mdroper-desk1.amr.corp.intel.com>
References: <20230602231754.1596433-1-matthew.s.atwood@intel.com>
 <20230602231754.1596433-2-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230602231754.1596433-2-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BYAPR04CA0007.namprd04.prod.outlook.com
 (2603:10b6:a03:40::20) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB7908:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b18ec18-e7fa-4947-a129-08db63c768fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ooxP/2K/7z4FIbnetQSyQ0+RKDr3C2lLLdd7ZgEeIzrL0huAdZw840yDZCDmnIcyaJGCBkJ2tKjgtK1HRhABx1MCjiC80E5Dz9wU+s5sgIMhO8yderYetQSTQPJzLZXDP8fzKHPW2Dk14T5wjwCrUXUi2SaYw31HucYSQ6HSqoY0jOI9XoswanCpE5Fhm407DocY8/PgEANmODHerikJfTRzIkmsF9IBsOoV4hWjwK5j88ACoBpQOTpJ5VHmkyWdsl32lEw/Pc+l28KBBg7lTqDsO8hrJXFEWtQZXQmZW9sz5srCtU2iWM+EeG8mLvlbHTbTznjRhvQJDNuwMxNGS3jH0VrghArVX6mW5JsukEbuPbw0dN3MdydjDw2zlJNO7injONgEgzGugBO6HPCybjV7c2Sbm/J0+K7RZdQCTD1tVwIg43s3m9RwFV+xQ9tIlw+8NipW8aDdVnhQmCg3yheHJcRMzksXtMGOgTXqO/HXNAQ1e9/FBJF5i2cVQqjSBv9rnQCsV1pYMugnk9gkEViAlwcVpIgRdQdmsrvrkHlvigFnNf2fTfRDSOBpFcEX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(39860400002)(396003)(366004)(376002)(451199021)(86362001)(33656002)(38100700002)(82960400001)(478600001)(6486002)(6666004)(2906002)(8936002)(8676002)(6862004)(6636002)(4326008)(5660300002)(66556008)(66946007)(66476007)(316002)(41300700001)(186003)(83380400001)(6512007)(1076003)(6506007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BREXGovYaokEp/5JfDEbEsstzCp5Bs8eEaBcZG9ytVaPVMCk0hy3KPPmXaHJ?=
 =?us-ascii?Q?ypB3TvqO+4KYLcCQ5zLRq+4SUG5URLrC7I24XMCcdpx3oiOfjLNQWU0OQchA?=
 =?us-ascii?Q?r2z8rbR+lWF4W/xSXMx8vJhWOLjZqrmHptvarNBGJtC7BLP3klh0ClOkP7e6?=
 =?us-ascii?Q?uq7jZUFwO2n02qHbwRs9tzIX076bICLZgH3laiT7q3KI6Gu8vTmpBrnp5x2M?=
 =?us-ascii?Q?PI9rMO5or8Ir3ZIXMjbu09EjOFrCyUl0hjtxq7ufd+XEPqB4ym7OZi2lpFGv?=
 =?us-ascii?Q?642hFPqzd2UHK5w5jpDwh2N1d671rYvX+KiLtc1h4ukUEGWt45o/T6R6Mx/y?=
 =?us-ascii?Q?bdn0LzX5vtuJQod5r6TynluQFTgd+GqL64mJtJtoY3xhjAMimTiU5EBNFcbT?=
 =?us-ascii?Q?WRXkThivWgKstOenCddWl1UOFDq5Xu93s8sllYhy9XGzMDjjyYSquJKMZGRp?=
 =?us-ascii?Q?seIgugoAbd26gxIxbQoy00OOcGXWByyzP/VlebKYCFfjFpDxuP6UgaqqcBSQ?=
 =?us-ascii?Q?+yOs21NZeb3UwhRRoYVyGEdN1XeGUrQFsIl8fq2EZFZS/HxpOgKobLtZx9Zr?=
 =?us-ascii?Q?obR/Sk3PhSMlhOlCDX/ta20oSjPvbxqvZWN0p6j2PlOmv37tO+ZywZecrGgk?=
 =?us-ascii?Q?vYQ3o0P8797tb5GCY5K9UaaZXHvBYLigDRkgS6VbFbByKH/2P9X3rs1jcgqx?=
 =?us-ascii?Q?owhm7AEWQZeJ0Clxd13JHsvygKK0VkmziVrVJHhTHtw2mAfvEC74d+Jo2rHM?=
 =?us-ascii?Q?BBu2Um43Mu3BrNfXg3tRJ9QpTmVhPQjOOx6xxD9Him3RclFeesbgYVMOl0sH?=
 =?us-ascii?Q?QuMXU8RU9WEP5i0tMBKJATs44Ewcj3P/fcPFV2txFl6W9l8IlPy+oUc7yEy+?=
 =?us-ascii?Q?6613MISYkN1CLTUP5ZW/UWuD02x1cL8cHdHvqqgiZZr3dq/eqVjmPooBRsNU?=
 =?us-ascii?Q?ln5aedK4y77u/Suu3z18VSpig54e9vNGVF/wcJbQ4FUGwqNt3s1r3tM8xCDU?=
 =?us-ascii?Q?Io5s+8ol6ZOp3WWucfdz8nDCy7mb2YML/99M6kCsjVI8A7AyxUsbw0cN+Pe8?=
 =?us-ascii?Q?EQiN+cNsvodmq+u1QMt7NI1RE6jouiRKzd+b5O/qa1hvhopEUWtBt51kAn23?=
 =?us-ascii?Q?P0KJNatj4YDwPkO7ZFTcBsM857MHy8p9Paa/0O3pSjix1GSd9RNuJeAIsLej?=
 =?us-ascii?Q?wTmXJ32qLBZlKmKs5E961/2+jRAhsOr3lQ+9QOsseUc8MyI5WEKsMIEKn/QG?=
 =?us-ascii?Q?9UuUt6eMnpbiXZEMqL19U0wEQqcuD1PNxSib/UT+67Uv0rXSq7A3bOAd7+n+?=
 =?us-ascii?Q?kO4VZf6ezwaIE+ySyLRIt8J6MBpt6QAVfug4j4DrVbttCGndIul2v6rwuJ+o?=
 =?us-ascii?Q?oXrZUdUbD5lhhUZ8F/Ss8BobnYpqRyNQoFzDOWQO+BscNBVBQLYl1JOLiu4x?=
 =?us-ascii?Q?VNl5/TDzB1SNd7EThIkH9ui8ncf1oxgVQKmr991kRM4lXh5mVnxJyVrNZ5tI?=
 =?us-ascii?Q?iTlNgVDozF4A924847O1TsmISyxgimSCJCD8Et11Mgv0Pg4/0mJX12A8KUGs?=
 =?us-ascii?Q?DiwQvZTim2UYV20tnWfyFxGbW8Iitb7kT1jpMHvalqAqSeqmM3nE80zjn2Sz?=
 =?us-ascii?Q?pQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b18ec18-e7fa-4947-a129-08db63c768fe
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2023 00:13:51.7201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b8IrsHBYj8mY0OHKjTtfjlENoDmT2sGaUtB/raq1DtpEDaCG1M3XTMwiN6A106q+0lcZfQ9x8TohgbnNc0lYUD5Mcf5tYMm2/8CptVjodz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7908
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Reduce I915_MAX_GT to 2
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
Cc: intel-gfx@lists.freedesktop.org, ashutosh.dixit@linux.intel.com,
 andy.shyti@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 02, 2023 at 04:17:53PM -0700, Matt Atwood wrote:
> According to Ashutosh there is no current or planned product in i915 for
> I915_MAX_GT to be 4 anymore.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ashutosh Dixit <ashutosh.dixit@linux.intel.com>
> Cc: Andi Shyti <andy.shyti@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

MTL is the only platform where we've enabled multiple GTs at the moment
(one primary, one media).  Although multi-tile platforms could
potentially have more, we haven't enabled multi-tile on i915 for xehpsdv
and pvc, and will probably refocus that work on the Xe driver now.  So
reducing to 2 sounds fine.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index f1205ed3ba71..c3923f52ca56 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -314,7 +314,7 @@ struct drm_i915_private {
>  	/*
>  	 * i915->gt[0] == &i915->gt0
>  	 */
> -#define I915_MAX_GT 4
> +#define I915_MAX_GT 2
>  	struct intel_gt *gt[I915_MAX_GT];
>  
>  	struct kobject *sysfs_gt;
> -- 
> 2.40.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
