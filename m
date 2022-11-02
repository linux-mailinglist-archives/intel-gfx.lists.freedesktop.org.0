Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DD0616C91
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 19:37:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4526910E559;
	Wed,  2 Nov 2022 18:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9942110E55D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 18:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667414264; x=1698950264;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b1zVyW+XNnpX/ErOe7MmucV94RNS7BMZh0U775sLieA=;
 b=UOiuUPxj7C2lsDW+ImMlEQVtLdSB6flo5QqKzQk97v8wPyAYut3/ZfgB
 yj9Q4bfnOWWLV23ILd6BLsc0HZd8clWL5eUzgR8ROSuRkjGa+d2PO93m4
 e+7q/9bfWTS/4bjRf2g6iXcNbvx6SHng+9zAZhNefFrNZErwrhIvNv0it
 igmbMbos8sieSE2llpCDk/8XVW+o86NOm8G3+wLTt9sC26aJseTM95xyK
 zHmN/aVEt4N75NT2VBTM55As7HKNK+jvWUQZ0gyyGo62aTvVN2YpwAaTx
 ULfZ8Lo/2a/Y7hRTahv0dcmmfEbEkExhwGl0qHPR5JQwihqAVw87I4rwg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="296942085"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="296942085"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 11:37:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="697923141"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="697923141"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 02 Nov 2022 11:37:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 11:37:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 11:37:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 11:37:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VdvpgErL+m9CbSSsErRVBWdqgXc01MlxOklA7GMDUzYAIQCkIzYeuclYt9ziyP01Hks7o9zOEGRIb69bYuFiawmEQ/tTHUtj2Jk2TuQLZZxu66MdddCDEHxETgxr3KQag6xyf1Z7yB/7HfYF60iYdSHcu52TiX/AHzoY+e2gRpiTooIM1FOsPtreeHXtconRAWW5Z2BI1aDKwGrvBn3DmMS51A/wOsC1Zg0wN9Xi4APXgxtZuE86QHs7kEtu/QUFviJi6EOco4XGa99N8MKgrPRxEvyyVCjsTWuFTdRQTvhkUyu2Bqc9VVzk0iuVKw7khVSebniPzZdldpREwsGeZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TEX1o9XtEcRYx4vRHjumWjxawFQ3l4afPAYnf5DM2Vk=;
 b=TQZm63nuw+ikvettQbVxlBLk6+6K8xtM1b9PPPJOSaV/IQyFEJ0emPYBAJ5fX/TjTlxja7FtOBlagS+AdKuTRw1gypr2Tkq6AvNx8aqMiMzlMKaXRifF9DyQDPsyqhevSzlwU3gsFup3zP7Xu/SXA/stA5731cvkUA3rWsdtmRWGJIgvhMbu/CZiFsrbOqIp1IAwvytkXfgxNsHkX+8oRxQ8AhrIQwUtH/DdwOoQfFx+yRq/jKalZmIGXEk9CPDairr6DIpxMztww98H9IQUNmNYPlUHYIxn/ejPjuRDWKu+0Q6mueZQ06fOwzckLArPkMDH1XJuib9qeQSyB8AzSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by PH7PR11MB6699.namprd11.prod.outlook.com (2603:10b6:510:1ad::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Wed, 2 Nov
 2022 18:37:37 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::fe45:dd69:a763:6bec]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::fe45:dd69:a763:6bec%6]) with mapi id 15.20.5791.022; Wed, 2 Nov 2022
 18:37:37 +0000
Message-ID: <e4c34072-b9a5-35ad-0f15-642e0c604a69@intel.com>
Date: Wed, 2 Nov 2022 19:37:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@linux.intel.com>
References: <20220923073515.23093-1-nirmoy.das@intel.com>
 <Y1LKLECGcZ38aF4O@intel.com>
 <e3930f78-5062-0e7c-9858-d54e7b661e25@linux.intel.com>
 <Y2KvBTY2ueEWpFAj@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <Y2KvBTY2ueEWpFAj@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS9PR06CA0604.eurprd06.prod.outlook.com
 (2603:10a6:20b:46e::6) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|PH7PR11MB6699:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ba16622-0b45-4b3d-956c-08dabd015066
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t1UbdSYMKJZMKhp/yaUFQK/G5/enCqz9S5m27HMH7i/GOLh/JbhJYKZRxiuaUHkoW/ZeKUbIynCGwpFdLAuh7Q0kSol/926ta83NzZeHTuD/1nF0LmdSmVIaZTadLWcA1bTQnmUE1kgtoGtLJ5oLU24BV3JvruxufEsUDiV4oQ+rNQGanyEoYPeLZCw0420DcrGHKqCVozCWai3VeaPPi7WN8VStRZDaip1CGRBWtapHETTq4+0Kt5HOyvFGtj7MqRYgC8rwSAPfIqqXxxlIQMV8U5OD2A9ulPsy2DRySz3eEx+G8DgAmAIfA4vrs2DFMN1Xjk+kz/0vjKYtValHfAAUtmp2u7/Cnt8YiBo1oGGwHcMn7QtFBhekmdLDRK1DAn3hgvD+T2XUTqOr3BINlyMBhDm9lcFeuADiva4Vami/xEsOqm2vMCbGdnWlAj8M9vq5I28qcUxNyqLrjl5TkE8vNpdU7RNLT+rNle8eci3qDdrWsXQNOLJiaOnRnFXGOKWeOSOvqWDxg+rZ0NSgoNDJ/6ALJ04Cfj3hq09qtAzHUuFeq2FjjC0lDEcRmsjgZnIs1ryShNOksj+gf0xVghKhzjP+WNi5mOcX9843Irsl3puMFJIiO5sKTtaGYB/GR9RA8NAILDDL35MrNP+nT5nT2cFrCBNTk45I7yhXwpLGy546LJlzIJH3brGD4L4CmKnnpxLa4pnhoOTPqOpxBdoNiW94Tml29QxEcNi0C/B4YVoHCjtF49bdqpTlFgFGI+e9EAhItvPmav3xdo4s7knKxCm9pxpHGfO5BBwIh+nKZq0YTv9tnGdywRhopFvzEkzCzbXxtJSytP6dHb2RbItI3eCGi9eeuuovGRtJhRg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(396003)(376002)(136003)(451199015)(2906002)(36756003)(66946007)(66574015)(66476007)(66556008)(8676002)(110136005)(966005)(6486002)(4326008)(83380400001)(8936002)(41300700001)(478600001)(316002)(5660300002)(6512007)(53546011)(26005)(186003)(86362001)(31686004)(2616005)(82960400001)(38100700002)(6666004)(31696002)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0pWMk1xRDdSaTdCQWVWYWxEb2J5VnV6L2U0TFVrcVhmekFqeGd0Uks5S0E0?=
 =?utf-8?B?ZGxBZVdGdVRGS2x1cG96QkZ0ZnoxSTFBbTV2MGNxZmFoUXNuRS9MUm9FUmJM?=
 =?utf-8?B?RlZzSDdRNloyaEo0K3ZtV0thN1JzMUI2QWprQzl3YjI3OEZic3o2cU4rbExR?=
 =?utf-8?B?anRrbm5JOU9OWDZUeUl6YitLckx6TUdhUU9LQ2p2eExPdUtBQ3JTMUN4b2pv?=
 =?utf-8?B?c2xvMGVybFB0SDQ1Ym9FNGRzRkdWWG5vYVp0d0ZWQ1dyNmROOEMzMUlXeTBx?=
 =?utf-8?B?cnNsUUpNMXdhalBWUTBlZ213aGgyYTB0UExDWm5EYnZKNnVMSWEvenZManBj?=
 =?utf-8?B?c25mYVFoY2Faa0hjV1JVcWkwa0Mwb3Z5U1YydXRUblh3WWsyY09YV0taaHBP?=
 =?utf-8?B?eHVmb05tS1dFVTJRMmNTaTVkNjZwU3l0S09XRHJKRzRMNExxTHJ3eUVtZkRa?=
 =?utf-8?B?Y1JwemN5bVBvS0VaQ2FmbE1kN1ZaVm9nVFp0eTZOaUNWWExlRGZhN0NtNjNL?=
 =?utf-8?B?THh1T2VlU1NseVM4Vkp1bkxxTnhIUWNhZUtYei9oTGJWR1Y0OTJneXZ1QWFJ?=
 =?utf-8?B?N3hsRmVDcGZkM2dVemZkNTlIdVBlTWphUCs3WlEvbXlwYjRLSGhpb1RZZWN6?=
 =?utf-8?B?S01jUTY1eUNLQWtQeERKbW15d3BFSzRRZHhyWm1tOWJ5R1dML1FIT3F2UXh5?=
 =?utf-8?B?ZE13ckcwOUNPYU8zSXRzbDhaUlZwK0g1cTRQdy80M0N5OUNTV3U5RXRIKy9M?=
 =?utf-8?B?dktzTEVRVC93WTcxczBjUEJMWUJ0dUxtMmdteFFLYXF6MThtK2JlYjdtNWM2?=
 =?utf-8?B?ZlJjRUJPZmxFalh6amRsNzI3c1puUHZwb3NsYmdTQy9WdkhvSmowazFsYlYw?=
 =?utf-8?B?SHVFZFd4V0hHOVhhdC9BeWtWbnFYWXlla1A3eXZzckwyZVVhazJlQ2VqU29D?=
 =?utf-8?B?ZG9OdTRWclkvSWo2ODIrOExsR01ncXlhd1ZvOEk2QVYwbFUwNXFrWmtycTVQ?=
 =?utf-8?B?MXZFKzRVelFFd1JLZkNacnlkUjhMLzIxU2JocllTaWkxcWtNallVNVAvbG5h?=
 =?utf-8?B?Tkp6WUhHaE9EdUNhVG1CRUFFdHcxMjNPZmxRZU9TbXlqNlJaNlVYMEdMcDNJ?=
 =?utf-8?B?cDVRb3pLcGRRN3F5MS94aElGRitYTUY3aVZUZUQyYWVXcUpBL0R0b3Qwd3Fr?=
 =?utf-8?B?RXozS3lmVk5vdUF3aHNsWnNjME11dmQ3WWJLQnBpWHRIQWxGejhtVit5YXlu?=
 =?utf-8?B?ZzBHZTZGUWNzM1VOM2plU1lkNExSb0pUU055eXpKZm55MU43Z3BYeTJQZzJL?=
 =?utf-8?B?dmFGVmJmQmZMTG9aZi9YR0k0RFJTY3ErMUVCMlBrWVRHbVFkMU02NTZiRGts?=
 =?utf-8?B?dU04OWlPRUpCU0hMOWxWUUM5NS9RS09xVDRjTFBxWStRdW5aVHdYVFdNTGFN?=
 =?utf-8?B?L1BXT1NqaGE2OTZhcFRUU0xGMTFhdUMrQkJVT052T1VxVkVxdERBZXNwUVpH?=
 =?utf-8?B?YjROTFZlK3psUUV6dmZsc2xmc3BaSGhvRE5uNlMzSU0rWjIwbjZRQVJUQnBN?=
 =?utf-8?B?R2wvTWsxNTBabGdWeVBxbXM4UDlSdFEybzlQVHVhdmNyS3Nub3c1Ry83am5Y?=
 =?utf-8?B?ejRnaTh1V3Jhb2VQOHErVUs4eTVCdE5TK0hXYmpuZWVMTTEveUt5Tkw0WHF3?=
 =?utf-8?B?a1pnVWVlSklLN245K0p4d3JsREZ0QzZVdUJBRE1QdmpiRStJcmhiTzhPZW5P?=
 =?utf-8?B?S1BXUW5EL1JPMTdoMzNWL256b0wyUXlGSjFHcThGdFlDZklRTE1MODJSVG9q?=
 =?utf-8?B?bWhHTGhUTlhlNDFpdkJXaUhNNzR3R085d3o4VEV2UTc2UEZXZUFkU296ajd1?=
 =?utf-8?B?QVlsNmhFK0dsK0FBN24wK1g1NnFMcHBFSHFQeGF5UzJiTFFubkpOYXltTUZl?=
 =?utf-8?B?YUpmV0l3QVlYNDBEZUtReU5hMTlKUkI1dFZ4OVVnTlZkamsvdzVtRS9wc0ZB?=
 =?utf-8?B?b01GQk9xbkZ4cS9zZTBsZXFZWGNvaXE3bWVpUWN4QllDNjNmY1E4KzZKaG1o?=
 =?utf-8?B?SUQxd3RweTFhcGdQTnozMjlITU5WRHhTMHlMWW14Q3QxUjNpSFJvWEI0SVhw?=
 =?utf-8?Q?bA0WReqMlHwecwHYUx/6FWo0C?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ba16622-0b45-4b3d-956c-08dabd015066
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 18:37:36.9894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ksU3CtkhXw22QgX1Atpc+UMAuvu7wDc7v8iNutVZoMPRAowCGdxe+oQuXWfVVqTbL3iESJ18IytAjnjgOGcAsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

On 11/2/2022 6:55 PM, Ville Syrjälä wrote:
> On Mon, Oct 24, 2022 at 10:08:29AM +0200, Das, Nirmoy wrote:
>> On 10/21/2022 6:34 PM, Ville Syrjälä wrote:
>>> On Fri, Sep 23, 2022 at 09:35:14AM +0200, Nirmoy Das wrote:
>>>> i915_gem_drain_freed_objects() might not be enough to
>>>> free all the objects and RCU delayed work might get
>>>> scheduled after the i915 device struct gets freed.
>>>>
>>>> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
>>> shard-snb is stil hitting the mm.shrink_count WARNn reliably,
>>> and things go downhill after that.
>>
>> Looks better now again. Going to look into that.
> Looks to be still hitting it occasionally in module reload tests:
> https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7033/shard-snb5/igt@i915_module_load@reload.html
> https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7035/shard-snb7/igt@perf_pmu@module-unload.html


There are no snb in RIl so I ran this test on tgl-u for 6+ hours without 
any reproduction. Not sure why snb is so special here.

May be we need your previous patch as well ? I will be on vacation from 
next week so unfortunately I won't be able work on it for few  weeks.


Regards,

Nirmoy

>
>>
>> Thanks,
>>
>> Nirmoy
>>
>>>> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
>>>> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/i915_gem.c | 2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
>>>> index 88df9a35e0fe..7541028caebd 100644
>>>> --- a/drivers/gpu/drm/i915/i915_gem.c
>>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>>>> @@ -1278,7 +1278,7 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
>>>>    
>>>>    void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>>>>    {
>>>> -	i915_gem_drain_freed_objects(dev_priv);
>>>> +	i915_gem_drain_workqueue(dev_priv);
>>>>    	GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>>>>    	GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>>>>    	drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
>>>> -- 
>>>> 2.37.3
