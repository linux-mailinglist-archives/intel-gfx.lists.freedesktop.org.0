Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6920486E693
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 18:00:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D365010E648;
	Fri,  1 Mar 2024 17:00:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WqgcecZM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9424010E648
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 17:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709312430; x=1740848430;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=d2N2ZNGd9TL5HUOX3I0E2DqWmTgHidyKrZvtqvKrIT0=;
 b=WqgcecZMOIgCW0R7xbLfkPJuVxz8KKa8psWLUwHhrv1CKVVfl3oFPBMC
 y6CeLOOcoxClAfqQEZskpfhfv3oE1aGiutvBq+2NTIv6tG77rEsBiS++M
 3YGquodLJtAJWyE4gDKO56bR6X35k7w2PqTdV1ZyKFwurnEYW/yd1QPrH
 +0mkmjf6hc92WE3NmouX6NAQV7OvqwceDr/ASdXHNQMlFfJYipLSXKjhY
 zvyBLMX+QI4FHxM9tr2Kyt0bU8nzSpOn8lU89KjJHrW1hkOzHNvj0SP/I
 fRSA6HoSF9JEpFNJso309SKewBsU3figTfWMuNCd7c2D6rACcQjBLc8Qn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3975716"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="3975716"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 09:00:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8477140"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 09:00:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 09:00:29 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 09:00:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 09:00:28 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 09:00:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S2Yw6oYWVdTtCmVC3GJglYzXs9XTDv7JNWQXjeI2qTq3K0tVB6fXBUrWom/HsRyNxa18Nzlfd1v+YVqKzCCVxCY73dhAM2/bDAlxjglsAtNe2myFNRIZIykhdiOoD9oDd5t+tc6FBfYtrAJVkkPtbwzQ2TRf/8rRN7brdc0o/4DYdFVpuD/AQbiD10DVnL24+FoxdbB58iiJ/Q4nOMFMPWCqxG6MFXMDbWVkjZTOeu5rC92FqhCOymu8OfZpXRHSv/G+DwFtUU0fdGLwsm0A9Y7CBM2iqYLStvcQ89jeGKXoxZjChWaeVVUc2RUPILXUVNAyeKNtgWfsWmZX22gHWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rnKr3+l1C8iO8h+JWEa9AOmXIpiIrEYibNSmS1h5bPM=;
 b=NT2eiuaG+SJVdTV4r2jrO08gUN8vPU0NCeTJDhXNTZb3k76I1vgDqZ1oQOUajobgPQc78drWOrqyv/y8VtngJzhQQXAUkTAQcRDUaQVS2O4qRUgPWhN0Xk6oRd496ueyRuVzkFt9Ad8eQWcoTzpeNaqMfN9juuY23vEZmcRe5tFlCYDg4cHO6PCL7SUM/HizdPMltF12gZ54hj13p17ZRlLVNc6dIYty6nuSIt5FUWC2v7pVTbM4XEVRRLoK0cjLxPlW24hvFw9C4K6s2DOa/vHxNcFVdoqtEQEAghG+CowV3xngNi9bmmcfpXX4MAjfxnVuD7PTQQgGrH5SRVLMDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Fri, 1 Mar
 2024 17:00:25 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7362.017; Fri, 1 Mar 2024
 17:00:25 +0000
Date: Fri, 1 Mar 2024 11:00:23 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
CC: <sfr@canb.auug.org.au>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915: fix applying placement flag
Message-ID: <aqloprqp4hrsyqbexpigpxj4d7jupdrws3l6nnfspb333dsunr@fzr7rxdbi6jn>
References: <20240226142759.93130-1-christian.koenig@amd.com>
 <a3a87723-6fff-40c5-aca3-0c6b5a13da82@amd.com>
 <zuimrdjaghf7mqykkkmvw7uejsblvi4ryvtch23miqmdq6plyi@u5dwnsxipydf>
 <c25fc2ec-bb97-4e16-8258-dc1ddb7122b8@amd.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c25fc2ec-bb97-4e16-8258-dc1ddb7122b8@amd.com>
X-ClientProxiedBy: SJ0PR03CA0256.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::21) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB7183:EE_
X-MS-Office365-Filtering-Correlation-Id: 38121688-1741-47fd-11fc-08dc3a111704
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tSRSFnlGecsyZ2uUkKUHjOQvbwWuBsae/+7M7M0VXkpL7J/v6fofg23q2Kg26R6eI2w9eEG7KhM4VS7lP3I/B5llQQFSkweDPF8z7PqJ4/FligYmMcl0izsHuvOO5766rKSSPZlq2+cR29o1ylZ3umKzRK+McprzqKthWgWQEAUYdjCMd/YH3ECbFKzqWANaxAKYEEubsQiIgBWL/+54XtsbOEt2Ehg5+M+8O4r5UWdVa7bJ/PEXaFTSbvWmL8YgjRXic8y6W+j+mpxl3dkTJkiOKivbiZNo1UkK53TDSrE1NQwJtOhBzBZ0kFstefQmqs5dLW933WHIZv9/QXkijOhKjWCBx2WCjAXI3apNglhvjzJUvFhRHTw7v/O2B8KLQI46Sx6jkoUaNCP6944RoI/mtqM553XuB1kF9gWVX/Hot4K6uKtybgx0njlOBO7JnlJu9SGzhdnBl03yHudo0sGYDKZng3jcHDi+zmGpvt9UPx1p7CxC7APXuvuGEcUlWSqJW8EOaujqmjiWmpexlMyklc2NsG6EPROLpKiNTF1hst4TCeSoSZCZHEjjuKDlXxmaz14Rgf67Zdw5rl/878QihTgYF5fTei/p2JRMTTFvpj4dD83VDZWrbKPVSjUBHcw/ggO8IBiwWUDJtq41hQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?2ZMrn/VO9234gi4wtXd/c/zxXoDugkeEEgYSEDuXFZvVKS6u4YPTAiImUj?=
 =?iso-8859-1?Q?fXEJk3oOPJHzEgJTN3d3MTVRnWSRsMPqHrpWOtizKhJrWK+tE4fY8ukdeg?=
 =?iso-8859-1?Q?+wpliZhgHwJzsL1iM6voZESaVZNAZSq77J30XayHi9jwZTqonTAI60n/yG?=
 =?iso-8859-1?Q?VHkfEb9VHo1h9ohvCSbxAWWP1OdzEgU9c/RLsAYRdZ9pTsjDiANrSpxfiM?=
 =?iso-8859-1?Q?wcIfTF8+CTJMpxxKp1UDO6B0ba6FkJEliBcYWjct9chRFVNrGbhcbj9nYA?=
 =?iso-8859-1?Q?d31EQlKEbz3sOSPcQrR19mE3GOgI4VtFcnnsCGhpq7D/GL1VN2EF22Qb0k?=
 =?iso-8859-1?Q?2A7hJbP+a2aJiD1P7jykNpKPH/ArTpZkZVbVlV0EsL7/jW6iLRxwQarBv8?=
 =?iso-8859-1?Q?Y/z+8g7Ar8xnK/les3/9HpNWviuNbWTMO7+exrHBhQ5EFoDADJY/Y7C8bR?=
 =?iso-8859-1?Q?uExyHP155pEPxiv0acQKQEZMR2aZB6w4jQD9XGEYHxO4G3UAJYuATTqLQb?=
 =?iso-8859-1?Q?AtLuZMwIW4vP97ZGJBH/M40ESO+HeBdQvR3vPwxvGTqv5ap0dajoSpkpUX?=
 =?iso-8859-1?Q?db958vg7JvDMkC6Kmqwic39HpDw8Au7kwpxDgOYVqklMY8w1l92VNfeljb?=
 =?iso-8859-1?Q?3MY87Eq4M6WgroJz8mEtFn/3AcRcsqdOH+dDBxdfUvZaJIIWKyEY6Y6ecL?=
 =?iso-8859-1?Q?vCfjpUC5qEq8K5gkwpMFBdpFZZPPvxEtaASEtEbUG6GKf3TPWfdUAl0Vcw?=
 =?iso-8859-1?Q?Pte9sI51NUhrkw57y5z3RGzPMIG80n7sgcj98WgmI0Ry+BvK8WsYmqFOTi?=
 =?iso-8859-1?Q?7sBXmkksADKd/Q0QlP+HFu8rEa1OShPjJv7tYL0K8tJL+qwymcBOCU+Jxj?=
 =?iso-8859-1?Q?0Hn44y4ZLTi2TVNrNauNoQUp/Gqs1mMUyuZWepAsO40JhbwB1e36d2YPeO?=
 =?iso-8859-1?Q?U+tTnYxMJ4qnk04IJ5p+Td5q5S+IjuyXN+Kn8OYXBrbx0/bvAK7g39UCXx?=
 =?iso-8859-1?Q?EtFXsmUugnFWksAbge/oxIEqXJkq9tu5DQF28VSFAkG6+ZjvAhbFBFMekL?=
 =?iso-8859-1?Q?Z632NJcJoA3uxKp6ahxtwTOVZ/0HRFhsYzF64J938kbweBHfNP3v3ZLtoc?=
 =?iso-8859-1?Q?rPxzfCxSi522Y7QzwZAW1eI6J9Y9go7M8Ye//QCQOPn2zi/uT7JENO/XcM?=
 =?iso-8859-1?Q?HDe/x59ZLDic0lJnquSaPtHKPNSbXxrlsk1XEcbIYpaG7VeOA2p85JNggz?=
 =?iso-8859-1?Q?su1Nrg/QagxGW+XVGhpct0pvM9tTqbCHyQteFfroyNCn4Xx8NRzCdF42py?=
 =?iso-8859-1?Q?nfC6LoTs9C9SMR+r8xIBytC4P/cl2vK4lAD/oFo5lklzoUqpYHEq4Q1EOe?=
 =?iso-8859-1?Q?IsxYw5UWS6ji+mjuzERF0Jf54gcDRlT2C3gm/i+8bDiy7eQZDZ6ldZc8kw?=
 =?iso-8859-1?Q?Goa0K0rrmxYMHX6gAylob/4VWfS2oqI5Sgx3w1wXlTl4ka0TsbygbbyN/Z?=
 =?iso-8859-1?Q?TuPrWY2y+22LrEMMGZV5hfP0guTFAJhm2I6McxtDEE3LBPusU4tVWWkBFD?=
 =?iso-8859-1?Q?1pZyKYkz8tE4FIT5pGbwwqQu9mglBDIoEibiB+gvh6UhOWZ5V9YE4xbVnR?=
 =?iso-8859-1?Q?PWvA6EG9rQrqdPrzNkEC3J62XRREmoSd6RS8+7PH2KpkwU2mUQQFLhKQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38121688-1741-47fd-11fc-08dc3a111704
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2024 17:00:25.6886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GrP33MQFtj8AfmIgEHO/M8ORVcdhWz/Sqpdj0AE1m/Xe9Y9Vry3pi8HbwtS2UqMoF0BO/2PVL2EDesNTUoNwlb6MrK/71ueh0h1MbQPUE/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7183
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

On Fri, Mar 01, 2024 at 05:06:16PM +0100, Christian König wrote:
>Am 01.03.24 um 17:04 schrieb Lucas De Marchi:
>>On Thu, Feb 29, 2024 at 02:01:05PM +0100, Christian König wrote:
>>>Gentle ping. Can I get an rb for that?
>>>
>>>Thanks,
>>>Christian.
>>
>>Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Thanks!
>
>>
>>For some reason CI failed, but can't be related with this change.
>>I re-triggered it to see if we can get a green run before merging.
>
>Do you want to pick it into a i915 branch or should I push it to 
>drm-misc-next(-fixes) then?

You can push it through drm-misc since that's where a78a8da51b36 came
from. If we feel like waiting CI to come back, let's wait a few hours.
Such an obvious fix for a build breakage that I'm not opposed to simply
letting it through though.

Lucas De Marchi

>
>Christian.
>
>>
>>thanks
>>Lucas De Marchi
>>
>>>
>>>Am 26.02.24 um 15:27 schrieb Christian König:
>>>>Switching from a separate list to flags introduced a bug here.
>>>>
>>>>We were accidentially ORing the flag before initailizing the placement
>>>>and not after. So this code didn't do nothing except producing a
>>>>warning.
>>>>
>>>>Signed-off-by: Christian König <christian.koenig@amd.com>
>>>>Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
>>>>Fixes: a78a8da51b36 ("drm/ttm: replace busy placement with flags v6")
>>>>---
>>>> drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>>>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c 
>>>>b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>index a6b0aaf30cbe..7264fb08eee8 100644
>>>>--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>@@ -162,10 +162,10 @@ i915_ttm_placement_from_obj(const struct 
>>>>drm_i915_gem_object *obj,
>>>>     unsigned int flags = obj->flags;
>>>>     unsigned int i;
>>>>-    places[0].flags |= TTM_PL_FLAG_DESIRED;
>>>>     i915_ttm_place_from_region(num_allowed ? obj->mm.placements[0] :
>>>>                    obj->mm.region, &places[0], obj->bo_offset,
>>>>                    obj->base.size, flags);
>>>>+    places[0].flags |= TTM_PL_FLAG_DESIRED;
>>>>     /* Cache this on object? */
>>>>     for (i = 0; i < num_allowed; ++i) {
>>>
>
