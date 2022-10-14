Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 955B05FEC9F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 12:39:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497FC10E72C;
	Fri, 14 Oct 2022 10:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03F2710E4A3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 10:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665743950; x=1697279950;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HvrGilHgxkEJgqdoqyudetjr4spzG4vGkqKtN+wxi7U=;
 b=mGHQu+LaH9DQf/gWENuIGSjr+MRLwKqCDdLT4sU4NbGGAgmc2xbzNwJr
 bBuQnqIaJnyOYIc7h4y/MautfygliMGb8hv+XRcaxwZjVJJ5ix+uGbsSQ
 S0hSJcAdtJC6Su8meKQlu657gBYaLoORkJKx1lg6BnEHzbFx+Y+quOvNu
 kYiGNAi1ObW+IBnjE02D2CnS3d89DJPTtdmKvIOuTZKrItMYQ3C6r8z3Z
 G/+XaxfjJ9tYpLHz5IE9EhAsSJ8XOy+Hj6EdxSY9ghPP0+aPbOMesWzq+
 cAOb0Q9BKObdQ9KVoolGJLzRK9uNQsXbgLKlWxLb8NCMRRZUhnktFMxb6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="391652336"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="391652336"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 03:39:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="578591259"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="578591259"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 14 Oct 2022 03:39:01 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 03:39:01 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 03:39:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 03:39:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 03:39:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VWVfFnXyFwkNeLaILm3qCK/4uu6nCrmJGwNbX59n1VXvhMjgxRmiN71+myPugLwU74M8IBedAnhCUaAO5m3l2XYkELlo3/pmnIwmvM0xXTjRbwAESJccpODf1RPVjoY3C6le9zhu1QndnLkKERB2dea3pqIeFmcXawyzZPiKTml4GflJLYuEz7QtVH9dHyh4OAHQU1dyqTSuEcy01gDOcuhX/rVi504ro3LZmDPic86jMFCUrcQpKk5dTp1vEGciskkkzW1zXtQXFTo2D5NiUkc/hnm73oq4G0e4zFdm6BpRTqT+d51DAbU4HiwuozKU2/onCYeiryna8cni6CQXtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OifTXeBKIxp9Lud4vHGv3+EoaOncDz9IZ/Ig5peLhoQ=;
 b=kOcLls3nEfnrn58Ft+oa2Fot7WnDr2720RhG+AJX/nqiaI51zF9VXgx7V/bQ6dgNoP/pHlCh59yguIZgXcGgOYjd4bwYtNkXuUMuUWzA0gdz0vISFmFGmBOtu9OoffQc4cLbcn6K9KoCTslb+N06jqDy8Cqno8fOuaUJpJ3qHWQOm0TcCJPRP/OE3zraOnw7eocB613KowPhvYp5nA1LQofHFQ2R6XSz92pw55gaV1azS06lqL120Xwk1OS7KhX1RlZXQipPp8kNS8gO2AoD6ddqLxUQ7JrjNZ02cE8i9oprHNB6XiiK/+McLSW6YXywTPcmJ2SrWV/cGogXaY6TAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by BN9PR11MB5497.namprd11.prod.outlook.com (2603:10b6:408:102::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Fri, 14 Oct
 2022 10:38:53 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::2bec:f4e1:7a63:7a6f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::2bec:f4e1:7a63:7a6f%2]) with mapi id 15.20.5723.026; Fri, 14 Oct 2022
 10:38:53 +0000
Message-ID: <a7019d6d-c0b5-aa4e-c821-0d68d7894b4d@intel.com>
Date: Fri, 14 Oct 2022 12:38:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
 <43b8728b-4f05-3f32-d794-7b94ba65480c@intel.com>
 <fd2b6520-fc22-638f-4e40-415eba3091fc@intel.com>
 <30962664-a23f-f07c-1ffc-c9ff0bc9b0b6@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <30962664-a23f-f07c-1ffc-c9ff0bc9b0b6@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P265CA0006.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ad::20) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|BN9PR11MB5497:EE_
X-MS-Office365-Filtering-Correlation-Id: a4f8481b-7597-415e-4160-08daadd049e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VhnQJMsLH7Z6W8no3vE9OlyAUHWSdPVJIiE45b0N9BmizTnVhcD/QyekgB2c70GgJ+ZtePq0vTaRpwlK1+QmQrHas6ZewD+VqSLrt/KI8Wq14p6cOyQsDEzdTG8JZnGM3Z3FbL3oWL/gy4YkWVfqpOpCgKvQc0/dLLpdkNN16hwZcr5kT84qaFUQJBcRezR+ZZ4nHjgs4DLYPVNPE+Gj2HVH4f4jQRcANisAB5S4JraoWo/c5/tffEm8ZZeZvt2mqKPNcgDn5lPv9nDew7VGm/mf3apqmnE+LwSrRs3BAx+5Xsab/OHLbLoZ/jFuKhtFI8uJ6IHN8R0nf1+BDZVgDuFmGfZfFM6yJX+lUkAD9KPFlFU9aTUyMiAnVt+QDBzeHIikL94v5rQS+qLGpiM2gFYXvdmHu3ITQ5xKZp5uWlIO/J+euTyk28xKC0BBKcm5DqMo1d+Jv8mCyVVnfOWau3nKPSu30tRLpA6okDOlrak8h1u1Whj/6DHIcfNLZ1bKXBmNSc4Ocubp/7sEMmX0FQEY+LBJqqqdwvIvPSKVZRhTVFO3onzjtnIxCRpaAdtCoAQdKfzwi4Rl3opl6O/MxtUJ28wYi3s3loSCaB0ssiU9R6yUSWwlVhzU3iYn3bJxS7i4J7GehCZLTRCQ+9pym60+1jPnpXmlRToQZSUTBZpW8i2I9DAs810w8iDiBh2Q6lnizpu9oME5rckfTmMYRuR+Mx9T2Uj11Cic+b+gynSgcua/pZXGdUhcTB+ToBmO9Ht7OcMqTKWTdfde4rWejMcLqlcEwFHEnwH/74yoJZc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(346002)(376002)(136003)(451199015)(26005)(6512007)(41300700001)(53546011)(8936002)(36756003)(5660300002)(6506007)(6666004)(4326008)(8676002)(66556008)(66946007)(66476007)(38100700002)(31696002)(86362001)(186003)(2906002)(2616005)(83380400001)(82960400001)(478600001)(6486002)(31686004)(316002)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1VKOWRJNVI0SUN2SDRpZ3JGVGtEdnZmbGNienFkU2p1ZXZ3ZmxCeC9CeWpy?=
 =?utf-8?B?ODZyWENtcEVtVDhyejFKdzliaVFhOWpaQSttM3c5THVpdXBNWWw2LzlmQ1BU?=
 =?utf-8?B?NGVNQTNJME5meGNIMzhvaHB1U3ZCUm5WeW5qdFowREVpK1N0bDh4dkJhNGpF?=
 =?utf-8?B?SldmQzF5NmJId3grVXpiYlVrWXZxdTdwdVA3WFhuODBOZXd4T3VESmxQSy9N?=
 =?utf-8?B?MDhtRmJaUHNLeDlqVHlUTHRUbFVtZkJjQ3pialdzNUFnLzhmTXpCdTc0Ty9J?=
 =?utf-8?B?ZVI4U25STlZlT2JNQmZnb2owa0pZNGkwUjdzZm11K0JncHY0SjhHMFlxR0JC?=
 =?utf-8?B?a2JLRmhOSjJsUlM5MzFRdTBxNGpSQmZ2dUpWdk8rYjRURDhNOVBMUWNFcE41?=
 =?utf-8?B?QlNKRTRjNVJyRnZreFFDdnlwUk9mY0oxREV2SlNGbGZqUmxZUnRvY3lGWXBG?=
 =?utf-8?B?RzU1T3d2MThvanVENWdWZEZFK2hHMHpXbEhWQkFmcG1TcENJQXkvK0xaN2RI?=
 =?utf-8?B?NnRlWFZvU1JjQkxQMEc3MWYzZENzeUg2a2RoV29pNWhLWVpISVVFL3BRcWpp?=
 =?utf-8?B?SzRBK3BmQUR5N29YVlFZUWx0cDFHY0hPMkRENlNuanhkUHhlY1RHV28xeFRj?=
 =?utf-8?B?cHlhWm1lVEN3RGlNWVF4UmtwZHp1Lzd0OWJaSm1IM0x6RFFkTHE3VWZ0UURs?=
 =?utf-8?B?WVFFZjJtelRMTXhPL2FNNVhJSHJlVTkrNmN2SkhRMzhXd3d4NzV2T1FackF1?=
 =?utf-8?B?d0J4WFlkZURoOGJKTmdBQWdzWkU3ZjFQb1NPcXNjQTMwVEpnQzBlTXh5M2Rm?=
 =?utf-8?B?azNhZWpVQ0NMTUhVYUpxenkwRllid3JKVGRtWGdCNFYrM01uc3MwQ0hSRExQ?=
 =?utf-8?B?bVB6UEp1TmhwODY5d2I5Njd0dWtxZUdsTFhSNWFxLzRKZ3ArWTNjZTBjYzU2?=
 =?utf-8?B?aDU4Ylk4Y3ZnS1VWTG1TNjVMdGhhb3dSS2RXaW9Zd3U3eGZyZWQvQitKVFFI?=
 =?utf-8?B?V3NlZWQzVGpMRW5MWGRPT1c0cm1nMHpPRjBoQjIwaDFIVjZ0T05wSHgyQWEz?=
 =?utf-8?B?SGpKNDNGTExWWVg3eUVWMjB6dzZaVE96cy9aNHdSOEwzYzdMOGY0ZFJVc3JG?=
 =?utf-8?B?elRpaWpSOUc1enVucU5hdjJvRXVwL1B5REsxdmJxTVBVZEw5VGtocnZiTDkx?=
 =?utf-8?B?bmd5WmFHaVpIYzJWV3Q2bzJSSnIzNzF4N2llT0t0T2RHc2FpSmZZMUpaSk5O?=
 =?utf-8?B?N3RnOFh0VEFUbEJjOG5Nd09VRkpmQkd1cExHN0pDKzg2T2p3WHpBcDUvQWhM?=
 =?utf-8?B?bWIvOWtPeTFGaXhnWHVXQ2R2OS9zYlFaVlV3ZGlwS0RtOUt6OHRyUWpkRXcz?=
 =?utf-8?B?amEzTXAzbzIxZFZhUEczS0ZnTVQva3Zaek1BRllYYURhdkhMSitQRXhqYm5q?=
 =?utf-8?B?alJwbHVwV1BpQU9GdWN4ZzZqbDBxa2dSNHF2UHlnb1RqaC8rbndiODUvaEhm?=
 =?utf-8?B?OGVucEE5bG9qQWxyQ0UwZEVkUnNUbmZIOHJ5azUzTzF2YU1zS1R6eWVqRWsv?=
 =?utf-8?B?Z2Jvc28xb01rUEdtR0VHeVNyVWFJc3gzTjlScEtJQ1U3WE5IWSt4L3NSZVNU?=
 =?utf-8?B?TWtLZ0d2bmtNVnB5MXk0R0tNQmc5R2Rjc3FleXVRcTVrRWVHaUJ5eHArRzFO?=
 =?utf-8?B?ZWxrK3YwT2hqYnUrRWNpSmtRMlZZK1FySnFVUWtvUzNMZmN1MXE2Mys4RjBL?=
 =?utf-8?B?ZTFmeExVL0h1L2NuTWFoMDlnNW1GRXNHVVl1UjNMNUE4UVZpUUF4ZFVRMFg1?=
 =?utf-8?B?RHduZzBrdVgrRDNxaVYwRlZOWmF5a1R0K0JVTGVnZm1waFU2YlAyelNDZFpV?=
 =?utf-8?B?TUpINEpMMlN4dW9wVStuVCsvTFZBUGVDSURkU01nd3pIQ05GVU1JOG5BMnV1?=
 =?utf-8?B?cU0xMjlXS2xBa0JRV3Y3akpzdHBKbmRWVWlMTEhSVTI4dHdodUN4cDRQaFor?=
 =?utf-8?B?cVJYUzZCWTN3Nk0ya1NPY3J4a0pLeERLRC9BU1NIaWt6UU9vbDlYc2wxVVVR?=
 =?utf-8?B?eWRtT2V1UnBib21CZ2k5UmFOSVJQM3NmblBHWDd1S2NpVUhXajNQcnBSRmF2?=
 =?utf-8?Q?+EEpyotUSSzVShNt5qMJ6owMx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4f8481b-7597-415e-4160-08daadd049e6
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2022 10:38:53.3163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cDWX+m2x8W4NFFlc1oBZgedN75FL8P3aHKCQiYl3kpgd6/ZVDlwpx5wnpdTSyL7GmCfyq+WXJMLyfhcD/7aciQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5497
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: Fix access_memory null
 pointer exception
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
Cc: andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On 10/14/2022 12:13 PM, Matthew Auld wrote:
> On 14/10/2022 10:27, Das, Nirmoy wrote:
>> Hi Matt
>>
>> On 10/14/2022 10:39 AM, Matthew Auld wrote:
>>> On 13/10/2022 18:56, Jonathan Cavitt wrote:
>>>> i915_ttm_to_gem can return a NULL pointer, which is
>>>> dereferenced in i915_ttm_access_memory without first
>>>> checking if it is NULL.  Inspecting
>>>> i915_ttm_io_mem_reserve, it appears the correct
>>>> behavior in this case is to return -EINVAL.
>>>
>>> The GEM object has already been dereferenced before this point, if 
>>> you look at the caller (vm_access_ttm). The NULL obj thing is to 
>>> identify "ttm ghost objects", and I don't think a normal userpace 
>>> object can suddenly become one (access_memory comes from ptrace). 
>>> AFAIK ghost objects are just for temporarily hanging on to some 
>>> memory/state, while the dma-resv is busy. In the places where ttm is 
>>> the one giving us the object, then it might be possible to see these 
>>> types of objects, since ttm could in theory pass one in (like during 
>>> eviction).
>>
>>
>> Yes, we should not hit this.  Thanks for the nice "ttm ghost objects" 
>> reminder :)
>>
>>
>> I think we can still have this check to avoid code analysis tool 
>> warnings, what do you think ?
>
> IMHO I think it just makes it harder to understand the code, since 
> conceptually it should be impossible, given how "ghost objects" 
> actually work. Adding such a check gives the impression that it is 
> somehow now possible to be given one here (like with eviction etc). 
> AFAIK just letting it crash is fine, instead of littering the code 
> with NULL checks for stuff that is never meant to be NULL and would be 
> a driver bug. Also there are a bunch of other places not checking that 
> i915_ttm_to_gem() returns NULL, so why just here?

This is tricky because some place we might receive NULL and some other 
places we might not(from i915_ttm_to_gem). I also don't like the idea of 
sprinkling NULL check everywhere.

I think the issue is i915_ttm_to_gem  returns NULL for non-i915 BO. We 
should move "if (bo->destroy != i915_ttm_bo_destroy)" check to the 
respective function where we

expect ghost object. That should make the static code analyzer happy and 
also makes it very clear which function expect ghost objects.


> Did the code analysis tool find something? Also why doesn't it 
> complain about vm_access_ttm(), which is the one actually calling 
> access_memory() and is itself also doing i915_ttm_to_gem() and also 
> not checking for NULL?


Yes, I think the patch idea came from our static code analyzer warning 
but I can't seem to open the URL. I am also not sure why it doesn't 
complain for other cases.


Thanks,

Nirmoy

>
>>
>>
>> Thanks,
>>
>> Nirmoy
>>
>>>
>>>>
>>>> Fixes: 26b15eb0 ("drm/i915/ttm: implement access_memory")
>>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>> Suggested-by: John C Harrison <John.C.Harrison@intel.com>
>>>> CC: Matthew Auld <matthew.auld@intel.com>
>>>> CC: Andrzej Hajda <andrzej.hajda@intel.com>
>>>> CC: Nirmoy Das <nirmoy.das@intel.com>
>>>> CC: Andi Shyti <andi.shyti@linux.intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 +++++++--
>>>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c 
>>>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>> index d63f30efd631..b569624f2ed9 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>> @@ -704,11 +704,16 @@ static int i915_ttm_access_memory(struct 
>>>> ttm_buffer_object *bo,
>>>>                     int len, int write)
>>>>   {
>>>>       struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
>>>> -    resource_size_t iomap = obj->mm.region->iomap.base -
>>>> -        obj->mm.region->region.start;
>>>> +    resource_size_t iomap;
>>>>       unsigned long page = offset >> PAGE_SHIFT;
>>>>       unsigned long bytes_left = len;
>>>>   +    if (!obj)
>>>> +        return -EINVAL;
>>>> +
>>>> +    iomap = obj->mm.region->iomap.base -
>>>> +        obj->mm.region->region.start;
>>>> +
>>>>       /*
>>>>        * TODO: For now just let it fail if the resource is 
>>>> non-mappable,
>>>>        * otherwise we need to perform the memcpy from the gpu here, 
>>>> without
