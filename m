Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E691564548F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 08:27:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F30A10E071;
	Wed,  7 Dec 2022 07:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0003F10E032
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 07:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670398016; x=1701934016;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f+n6pif2ilDjd/RWG9mGg2YzlpMZVTN5ZMQmspGzGDQ=;
 b=VtdfAHBXapsCLzd2kDHe0LkQe3EEQ7+2xs4Yzn9HxWPcREXugFyk6S/Q
 8Wf4Hj6DKHNIu7YyF7ccXj2jZRZvgd1/VYGLN0LIyyIqy2sS2oUT9fy6K
 Gv0T/DWS3pShQljJSsXWX9QcDibt6WDvu3DC3U9P96FQ9rFkRqFpX0ygS
 eBjirDYCrqYzBBr+SicKvtCIRKB9U9b+RM47JAQFv9+tXaZJIBaw7fKB9
 /NZDQtBjxePg3GKni3QOaiHzrEp2xvYbp8IRHMk6wO4KCSmkEMiA3+wp3
 Kb6xjEpeeC+b5VeDqzIdmAaFVdWO8+lU1offtRHvy/jqfq9HVFb3/gjDY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="343853793"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="343853793"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 23:26:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="709962942"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="709962942"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 06 Dec 2022 23:26:55 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 23:26:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 23:26:54 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 23:26:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cIW1eL8teP18qkNTfd3Q+X38gLsj0wqIUVM+EUG5MH+IJ/dtI0DH+WrzY0gi/+WsFXKK05ckrOvNRfL/H4SkUFKm7kz/s1uepL1uCkecmjdr2rE+qICLj5Km5cy0kcoh+Jdo1BdwH2jh88Dql43PkP1t+E5OSBdyVG7UXUOS86utbsb4/CRShHJ034+99W9t9ggA9t+2B1tmj10jaMM2MCK/9+dY/pgBNwZUXkQebtga8QA5v1eqCi/TZOaPRbanBa1ToAbOBsKoeKKAIi9dW79IeaWWiq329NB1VuAm+xbQBi2W6nDf2m6tLYKVcA/P0JoTshUscQOkgk+RF0SC1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9TtF+gIXcgoDXfTR4zyW8WQg3ZXDiSXWULSYMuEv5uc=;
 b=Yu5UvLQ/ZEWP+u1CRA7juyYo/UCJBFeAORXpyrDEk1c18oAdW98eGKejZWaFaUs2lgE/pMfoDf2fCJojWlyl+3k9F3cOTeKLZZxpaFN8HNzeKJm2uEGWqjwHUzY36+SvkUshNcVjaBX98Xz4vQnzj741CEvN5gp1zs6BXMLQKEfMpEM1LjC3G9FBn+/nheyQ7j/1wy34sKT9ZXbIY1qCZp50qutAAQJRnVrsiQAj+QddZJVAd70b+PmI9GyoLgbPWMP9WGBIyqqMG53rpipDk8Ui6xhllHWpQ4WHwe1xoBAtfDxZYHUoM9VdyvztCOivq7IDAWu87qldZtHjCE67rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by BL1PR11MB6051.namprd11.prod.outlook.com (2603:10b6:208:393::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 07:26:52 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64%9]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 07:26:52 +0000
Message-ID: <60152f3b-93f4-c0fe-d309-04c17ff25c45@intel.com>
Date: Wed, 7 Dec 2022 12:56:44 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <6f0bec943061dfa4604e3c479f44e98169ebd082.1670311877.git.aravind.iddamsetty@intel.com>
 <Y4/SwfKbvCT/ANdp@mdroper-desk1.amr.corp.intel.com>
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
In-Reply-To: <Y4/SwfKbvCT/ANdp@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0219.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::13) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|BL1PR11MB6051:EE_
X-MS-Office365-Filtering-Correlation-Id: 6dcf177f-f304-4dd1-18bb-08dad8246914
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NB9Frp+TIIk4AHoRjIsnWrJK1pc+TgmGKFVx7g5hrWbSVH20OPF2uYzMfL0DOXYHvkWZsCEK598jGgWCkOx6NVoCkG3sCHAdIC7UoBaTd3r2Nja5Atc88PvwujHpY+taPGWrBo4TjcmaD6rbxQZAsldeaQzxJL67mTIQFGej4/NfPjj8OKiBka6dCFaBHHTR9o0gkzsvXgG5S5gbtHGUJxkR3AZBNgxSM827Yv347cRrT8Po85aytQwnmLkmncLwvDwiXNwEHNwekF6/sFQwxcm+mIDjc7xsBQJcXXTY3Rbk4YjdiVwFBAX6fqg0Fqh9QuUO/fSRBnbWHL+qaSnpjbA9HNqhNNcwKZq8r7R88qpRC1HDS4rMBjFylbm65AGWwvcf3zo7zhl33KYe9ZDWrQTGgbMVlJEy0Aeq0pIUckPpjPE4Z7OiA47tBv69ANEQAntyJgUXxGsTNsAy6JZ7nUMddzgt0V5bv5PHHOSpkWy8SH4AkHXBXiMxhpO3KoYSVN91WBqgXCawRVieFDDcFGAV5o4MkPWjDk6givF+0iDxQ5Q+XGeEZlL9F0f9BJrAMux+7s6HILeIxV/c7NOfZbHpYsKGAC7mn8+aJmv3/Ro4ixNyhgHS/m7F1c6Rf+Y5mpIMw7np0Umps9mFKkN09F87SF6ds0AhgX7+yaG9KcboG3CR4+BvROB7pxTsY8/PBLVAcba9hjcrioQE2QTH1oFkWfUIw9EmnZB9SxYrjS0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(396003)(346002)(366004)(451199015)(2906002)(31686004)(478600001)(53546011)(6862004)(36756003)(5660300002)(83380400001)(82960400001)(86362001)(6636002)(37006003)(66946007)(54906003)(316002)(41300700001)(66556008)(4326008)(8676002)(66476007)(31696002)(6666004)(6506007)(107886003)(6486002)(8936002)(6512007)(26005)(2616005)(186003)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVZxSGRXelVuZVNDQmhuQUNrUUxCbE9sYmhxSEVkeTNkQndYUGJpbGZ6TldG?=
 =?utf-8?B?WDdJNHprMEVWWWV4aGlVWUVVRVRCUjJwV0Q5TUJEbXA5OHNxT0Nkb09sSkdE?=
 =?utf-8?B?M0V1OEJ2QWRWclBEY05vWjY5QVRLWnB1VnJHVjIzbHVBd0pZcWJSNUdXeDRv?=
 =?utf-8?B?OFQva1VQY2duclZEcUh4aGxiQU9CYkdJWER5SkIwbzNldXN6RExibEttbnRx?=
 =?utf-8?B?aDRzRnRBakZEdS9DUlBpUXJPbzNDZEZQYzNFUkIwVFY5R2F5UnNDOFNUL2Rp?=
 =?utf-8?B?MytNRGl1d3d1RXR1WlljVWVaWTZseU0vcGtnZUpzeXRCaEFtRXo4ZWFuSW1S?=
 =?utf-8?B?bVVnZ0RyRVowWUhKMTMzbFdURUdmYVVVNzB2UDAzaXBlZjd1aWRwdkJ0V1Vk?=
 =?utf-8?B?NVB6VHhNM3llQnpOVmRVWUF2NVZKd2lOdGlaSDBHaGQ4S3Focm01OWJEbHEv?=
 =?utf-8?B?dkxyUEJmL0VVUi9jOTJ2VW9iaHN2QTU5dG5HSHZtekh3b1NFSGd5YlVMdUNE?=
 =?utf-8?B?Y0ZPSWNwcUlXbnVMK1dpRXZnUzRwWmsreHVwSjNIcENvd1F6eG5PeklKWHFi?=
 =?utf-8?B?akd6MDZhQUxxekJMK1NPRWRJckE1UGtJVXAyQzNKTGlxK0xoQS9WSVFZem93?=
 =?utf-8?B?dWI5ZE1MYXFmbzk2WG0yczY0U0t0NElBaC9yUVo5RThLTEViOUhVbmtOd1pG?=
 =?utf-8?B?SGs0UkpwRytFL213ckRCODFkcm85dVd4c3dRMnNHVkJCcXRVdUFFUFQvTmNE?=
 =?utf-8?B?b2g5bmJnd1dUZDJwbVplUFFaWUxvTi9kcjF6TlRVSDJ6UjI0OGVVVE9NUUhV?=
 =?utf-8?B?aWdaTE03VXpydmt2NDNBSWdxb1JXc2tXUUVXYjVBZC9YUXd1UWkyTklqOXgx?=
 =?utf-8?B?TGxiTXRnR1JOQ2lNbHpQNldnNlRvREx4TUEyV0dWVDVmcysvS1kvODZhb1JZ?=
 =?utf-8?B?bEpyOGdWbHRsdFhjaE9XSDZnVmx5QVhuZkxuMFN0UDZxckpDanFsK1JNaHZq?=
 =?utf-8?B?QzNnWXlTNGVsWVZjcGIzaktFeGoxdVhwby9ZUldVTUlQNGprbmxCK0pndVI3?=
 =?utf-8?B?MGlRVWxvL1F4ZGo2U0g1OHVNY1JycGNDRnl0Q3ErM0hBSy8wQU9oU0pISk1O?=
 =?utf-8?B?bmpwRjJzQTYyS0FibVVrRHhia0lyWFhHZHh3QndWN0RtWHFVbUkyc1IxOGVM?=
 =?utf-8?B?MTRnVHUxZkpwK3R4MHgyUWJPSGk2a1Awc2pqekhZdThhRDZrTVFHZkZMdWw1?=
 =?utf-8?B?SEJsUEMxQ3ZZR2NpY1BjcnlhdFE1RGhRcGZ1VXZiNUN0S1pVTTJjV01Fd0lH?=
 =?utf-8?B?RzdtRDdEZUhZNDdidTlUdjhNbjZBNUdhUlhvaVpmdEQ4Z3o2MkNxSkRibzZ6?=
 =?utf-8?B?N3lpNXBSVVN3Wlg1dVRHL2xWWUU3Y1hrQ3BJOVF3Rm9QTmt6M1V1K0g5WVR3?=
 =?utf-8?B?Mi95Q0dTem02ekU4Ym5qR0xrTzg3L2pKbW15bUkyV1JRc0oySHV4aGprSGFF?=
 =?utf-8?B?OGVGZFpiVTNDVGhaYW93bzI4L2Q2Vyt1ajkwMVZFbUp3SVJmMHZKRCtIMG1n?=
 =?utf-8?B?SEZCdHh0NWRDK0NEWFZGZUR3S2JHR3huYXRxL29SNEFmbUtSVlozWUJhR0Zl?=
 =?utf-8?B?RDRvdUZ0aHBpdTAyMzgrOVhISnp2aGx4OGdDdk5BUmRObUp5eUY4V1E2dXNR?=
 =?utf-8?B?a2pJVlN5L1llYTd0MUhFNzJoejZxM25YeDlJd1NzSURLdnFTc2sxb0MvODVK?=
 =?utf-8?B?TGExdW9sUXF4UGxTUVp5REFtL1d0dksvNjRrZVRreHJrR04zTzJISkpYSXlu?=
 =?utf-8?B?ZERyVDFCMlRKczRZUHFKSzVMMVFMNS9jQXc2WVRvRTRYSVR3bWF6anRyVEQx?=
 =?utf-8?B?VTlYYjVJeDdUTTA1Y0tOK3hsS2I1VG9EUWV5UTNGOUxjNkVsd1lJNHZjdEVr?=
 =?utf-8?B?RUEzZUpvTXBJd0RPT3BzOENtcDJia1VVY3liOVQxbFNhL2lrSXh6RERDVmtF?=
 =?utf-8?B?clNHL3NOMFNBUHI5WUVJRnV1V3dGODRyellmVk9kZmxqNmZGSXd6aDlhc09k?=
 =?utf-8?B?MHVqRVNxMXRZOG5yR29WQmZZK1BSWnpkc0xjSGl0YjFyVGUwcU9MME45dDM0?=
 =?utf-8?B?ODQyRzFMR0VmOFh4ZkNOb3A3bG9ZQk9zUTJQdXZ2SHZ6aUVpNmhINmdwREZR?=
 =?utf-8?Q?pF49r+KG5ONE1nwguUEC19k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dcf177f-f304-4dd1-18bb-08dad8246914
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 07:26:52.2830 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x1BNvhZpK2O4QO4dA/e/runNRTQ2GZy2Vb16z+XpK2uGoPAxZ2oaYvf6Hf/GPMmexK8I+3sKYn9ekjws8fmoAhlzrJjjLk3MknhwyQrhFlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6051
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/mtl: Define new PTE encode for
 MTL
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 07-12-2022 05:09, Matt Roper wrote:
> On Tue, Dec 06, 2022 at 01:07:28PM +0530, Aravind Iddamsetty wrote:
>> Add a separate PTE encode function for MTL. The number of PAT registers
>> have increased to 16 on MTL. All 16 PAT registers are available for
>> PPGTT mapped pages, but only the lower 4 are available for GGTT mapped
>> pages.
>>
>> BSPEC: 63884
> 
> I think you'll also want to include pages like 45015 (ggtt) and its
> various equivalents for ppgtt since that's where the important layout
> information is given.  And likely 63019 as well.
> 
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Co-developed-by: Fei Yang <fei.yang@intel.com>
>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 33 +++++++++++++++++++++++++++-
>>  drivers/gpu/drm/i915/gt/gen8_ppgtt.h |  4 ++++
>>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 32 ++++++++++++++++++++++++++-
>>  drivers/gpu/drm/i915/gt/intel_gtt.h  | 13 +++++++++--
>>  4 files changed, 78 insertions(+), 4 deletions(-)
>>

<snip>
>> +
>> +	switch (level) {
>> +	case I915_CACHE_NONE:
>> +		pte |= GEN12_PPGTT_PTE_PAT1;
>> +		break;
>> +	case I915_CACHE_LLC:
>> +	case I915_CACHE_L3_LLC:
>> +		pte |= GEN12_PPGTT_PTE_PAT0 | GEN12_PPGTT_PTE_PAT1;
>> +		break;
>> +	case I915_CACHE_WT:
>> +		pte |= GEN12_PPGTT_PTE_PAT0;
>> +		break;
>> +	}
> 
> I forget what the plan was...are we going to move away from 'enum
> i915_cache_level' and start working with PAT indices directly soon
> (especially since the set_caching/get_caching ioctls are getting axed
> and vm_bind is supposed to start taking platform-specific indicies
> directly)?  If we're still using cache_level, then it's not clear to me
> how the current platform-agnostic enum values (which talk about L3 and
> LLC) are supposed to encode the L4 behavior we want on MTL.  It seems
> like we'd need to extend the enum to also somehow reflect L4 behavior if
> we were going to keep using it?  But given the continuing expansion of
> caching functionality and complexity, I thought that was one of the
> reasons why we wanted to get away from these platform-agnostic enums;
> the userspace that actually cares about this stuff has the same PAT/MOCS
> tables we do and knows the exact index it wants to use for an object
> mapping, so eliminating the PAT idx -> cache_level -> PAT idx dance
> would cut out a bunch of confusion.

The current plan is not to expose PAT index setting via VM_BIND but go
with the defaults. Hence using the i915_cache_level till we decide on
enabling PAT index setting via VM_BIND.

Also, IIUC the cache level we have in i915 apply to L4 as well (BSPEC 45101)

I915_CACHE_NONE -> UC
I915_CACHE_LLC/I915_CACHE_L3_LLC -> WB
I915_CACHE_WT-> WT

But I do not see a means why which we'll know that L4 cache is present
on the platform to select the appropriate cache level.

> 
> It's also hard to follow these functions right now because it looks like
> you're doing an implicit cache_level -> PAT index conversion, but also
> mapping the PAT index bits into their placement in the PTE as part of
> the same operation.  The behavior might turn out to be correct, but it's
> really hard to follow the process, even with all the bspec docs at hand.
> So if we do keep using cache_level for now, I think it would be better
> to split out a MTL function to translate cache level into PAT index
> (which we can review independently) and then let these pte_encode
> functions handle the next step of figuring out where those index bits
> should land in the PTE.  If the bits are contiguous, you can also just
> define a mask and use REG_FIELD_PREP too.

sure i'll translate cache_level to  PAT index and then program the PTE
using those.

> 
>> +
>> +	return pte;
>> +}
>> +
>>  static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
>>  {
>>  	struct drm_i915_private *i915 = ppgtt->vm.i915;
>> @@ -963,7 +991,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
>>  	 */
>>  	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>  
>> -	ppgtt->vm.pte_encode = gen8_pte_encode;
>> +	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
>> +		ppgtt->vm.pte_encode = mtl_pte_encode;
>> +	else
>> +		ppgtt->vm.pte_encode = gen8_pte_encode;
>>  
>>  	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
>>  	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>> index f541d19264b4..c48f1fc32909 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>> @@ -19,4 +19,8 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>  			 enum i915_cache_level level,
>>  			 u32 flags);
>>  
>> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>> +			enum i915_cache_level level,
>> +			u32 flags);
>> +
>>  #endif
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 82203ad85b0e..3b6f1f6f780a 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -246,6 +246,33 @@ static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>  	}
>>  }
>>  
>> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>> +			enum i915_cache_level level,
>> +			u32 flags)
>> +{
>> +	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT;
>> +
>> +	GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);
>> +
>> +	if (flags & PTE_LM)
>> +		pte |= GEN12_GGTT_PTE_LM;
>> +
>> +	switch (level) {
>> +	case I915_CACHE_NONE:
>> +		pte |= MTL_GGTT_PTE_PAT1;
>> +		break;
>> +	case I915_CACHE_LLC:
>> +	case I915_CACHE_L3_LLC:
>> +		pte |= MTL_GGTT_PTE_PAT0 | MTL_GGTT_PTE_PAT1;
>> +		break;
>> +	case I915_CACHE_WT:
>> +		pte |= MTL_GGTT_PTE_PAT0;
>> +		break;
>> +	}
>> +
>> +	return pte;
>> +}
>> +
>>  u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>  			 enum i915_cache_level level,
>>  			 u32 flags)
>> @@ -993,7 +1020,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>>  	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>>  	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>>  
>> -	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>> +		ggtt->vm.pte_encode = mtl_ggtt_pte_encode;
>> +	else
>> +		ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>>  
>>  	return ggtt_probe_common(ggtt, size);
>>  }
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> index 8a3e0a6793dd..4bb7a4005452 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -88,9 +88,18 @@ typedef u64 gen8_pte_t;
>>  #define BYT_PTE_SNOOPED_BY_CPU_CACHES	REG_BIT(2)
>>  #define BYT_PTE_WRITEABLE		REG_BIT(1)
>>  
>> +#define GEN12_PPGTT_PTE_PAT3    BIT_ULL(62)
>>  #define GEN12_PPGTT_PTE_LM	BIT_ULL(11)
>> -
>> -#define GEN12_GGTT_PTE_LM	BIT_ULL(1)
>> +#define GEN12_PPGTT_PTE_PAT2    BIT_ULL(7)
> 
> This bit is never used anywhere in the patch.
correct the default cache level we have will map uptil PAT index 3 hence
didn't use it and since platform supports it and in future when we have
PAT index setting this will be used.
> 
>> +#define GEN12_PPGTT_PTE_NC      BIT_ULL(5)
> 
> As noted above, 
> 
>> +#define GEN12_PPGTT_PTE_PAT1    BIT_ULL(4)
>> +#define GEN12_PPGTT_PTE_PAT0    BIT_ULL(3)
> 
> It sounds like these bits have been around since gen12; why didn't we
> ever have to program them in the past?  Is there something that causes
> the PAT index to never get used on the pre-MTL platforms?
these are mapped to _PAGE_PWT, _PAGE_PCD and being programmed in
gen8_pte_encode. On the MTL we have new PAT bits in PTE and since the
way these bits are programmed is different redefined for better
understanding.

Thanks.
Aravind.

<snip>
