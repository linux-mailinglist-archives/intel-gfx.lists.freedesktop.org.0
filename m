Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 380BF854F61
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 18:05:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929B510E3FF;
	Wed, 14 Feb 2024 17:05:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ew7UtkSC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0EA210E214;
 Wed, 14 Feb 2024 17:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707930329; x=1739466329;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w5R8X+st2oLHuD/ULR536R66dBxUU0eLzAMfkZaRSXE=;
 b=ew7UtkSC21cMy/6BUucKdBPemHTMFLaCR7kgx7CnHs/VlUt53ZirVuTf
 LoJ676NtuuUDWVokp3s4eMwrhwVlqeolTqfQ027PpQQf9qaR1I2dFH0hu
 gODyv5zz8QgrLdONjmTzo3mJBN9sL6JWdTBo5tXERZg2t8+RmKVeTMDbu
 8SxqEoUGvwAJSGYa3UnjQCJxti0iSXPamLK/p5dDGV8iF5ziP410wVTjt
 HulaXrFkPGpjG0gDmDzqWEyCsGkKaHbZ84GZsPUCDld6QyLvaB/k/BE6P
 fIgPJ1BkI8FPnPbGVK3KJA7GigFVSnZbJSMQi2BtpxObbUdUbRNiN9WPG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2130120"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="2130120"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 09:05:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="3250966"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 09:05:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 09:05:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 09:05:27 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 09:05:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gdqFg9njPzSFoecwVT2dehpAbkZyX2yIFz99AdirCAteULgTu+PDaZJx4Y+hECJPJ5/Hf70vtMSD9jSVnig2pGdzvwnQyuU9tpeFGrolzvm1Ow3ZUbDWdz9ORLwFYAKxbesa7XrBFhWtJXCYX+PvPEkm2Z3e4ETtKXftX1tTv2H7LWP6TYPuF6Qs+I1SFzCiiitUIFRvhdckm+ju0zGCJjnGEeIU3UEjwdzIQu5KSMyzH3EenUq5u6s0kbiNJEM/KSWMMRJciHRtw5IReB50JsjYG9K/yAZpb9zlJRg6rXjlcBhB0baYqiCKs9Rs+q3aI2CB56cdYbIEMcTXA97+8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HCTKL0yHCXm8eK9ceXYw8UWSkh8iFA8Lf8Hslhfe8Ww=;
 b=ers7oNaBIdHMnzNpXsJeDVqeTzs2SJXgdULbBaxq9nL8ns17XNIyMuxWBZSJDLcNiEQB57KdYM+mv3icx6GYT3J0+7YxbVTCakrIBRkhut8Jlo70nAyWHLTItqlLD6sXttxj1/l7us2bqOPsEEMDU/Nt7t5dGgGIaEgFFEoR5IInDsKFU2Lsfd+06YAhj6RiZxDeS1yrJx7QsBZwlw7LnxBU3FEhAbXFP+4j3snHgCa78Y+ElMIjTFW9687pUWzrMsREwpA+eyydF797UmKjTW0Sa7cyPFPo9PoCX5qZ1gLr3c4XP+bUHX1dHuTos/300odUhxDpAKSQfx8+lOUL9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by PH0PR11MB5190.namprd11.prod.outlook.com (2603:10b6:510:3c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Wed, 14 Feb
 2024 17:05:25 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03%7]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 17:05:25 +0000
Message-ID: <6f9cea70-c6cc-47b1-b275-8d6ddff2da7b@intel.com>
Date: Wed, 14 Feb 2024 09:05:22 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/xe/hdcp: Enable HDCP for XE
Content-Language: en-US
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Jani Nikula (jani.nikula@linux.intel.com)" <jani.nikula@linux.intel.com>, 
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
 <20240209101412.1326176-5-suraj.kandpal@intel.com>
 <a08914b5-ffa2-4fbd-821c-5967af24a372@intel.com>
 <MW4PR11MB67619A3E2A212BDAE10581DFE34E2@MW4PR11MB6761.namprd11.prod.outlook.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <MW4PR11MB67619A3E2A212BDAE10581DFE34E2@MW4PR11MB6761.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0P220CA0011.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::31) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|PH0PR11MB5190:EE_
X-MS-Office365-Filtering-Correlation-Id: adba814a-608c-483e-46d5-08dc2d7f22b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GQVTqOViD7Va4dSEaVScZYKizVdoqx2rdp61T6nT/rbZP3QCg3f+oV6IttEUO1fqZKuYKZlEP9N1qw8iYj4NsxiSH7bGJDDWpjF47eAIO4FFqnAxZB2vDDkuXmq1KgYUkILvyb/KOQw7ohzkJDCFw1Xh3CU5Vzva3XWx+2kusfElNVzBEc4vhKL30mYwvf+Zrq/yQz1F4lDiPadVznFtiYCYp1h0xBzWZ88MsPyF8LXGRdJdPlIxP2UIaHvsiCHg1X2/rq8jqeAchL/TevffBoQ6mNSErSYIAAyZc5EkwZTNMz2ajqzWMrVdCc0HShJS/qiIYQkKqWNVblFzrAiT7/ZPH4OXpcqQqMwSziX6PgWMjlvbKiD/osXQrjM4MquvLEXku8iG1wQomaEu22f6H+H3KWgjoKqCw2tYMGaqAW+GqewLe2NBNfRmx/f6OFgdDae0hR6b8XPB/Ad301YA05A7p4nu6ThX/IuC8Rnp9c/yrFb79TkqtBbOwmS4ZPs/CmV2Aa7PbOPNu2Dwu4v1AMNsbS9JvIhLsnm/IklsN9DZH3YorNVFE3h6k+ucUxio
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(366004)(136003)(376002)(39860400002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(8676002)(8936002)(66476007)(30864003)(5660300002)(4326008)(66556008)(66946007)(2906002)(83380400001)(26005)(82960400001)(36756003)(38100700002)(31696002)(86362001)(6506007)(6666004)(316002)(6486002)(54906003)(110136005)(2616005)(41300700001)(53546011)(478600001)(6512007)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1VaT0p2Z09CSTlIODY5K21ibkh1SDR2MU9GVkI1ZURtYzcvenlwVWNpZHNs?=
 =?utf-8?B?NlA2YnNRQi9PZXQrQUpVY1QzZDdKR3dqeEFGL1lDcC9oVG1aMVJhczhqWHhh?=
 =?utf-8?B?c0xSS0FuREg2T0EvS240dzdmdSt4dURKN1VXQlFwbmkzNS9oQkQwNEJSTEJP?=
 =?utf-8?B?MjMxOUtOS05GdjlpOFRnOE9RWDNwcnNKZm1ZQmJOeS9HSVpnYVNzcUFkVXBn?=
 =?utf-8?B?anFqM002Y2xCN0dyM2FVRGtIVHhMTjY5RUFRZ1EzQkVLUVZ5ZUVxU1ZKRXZ4?=
 =?utf-8?B?MmE3b0tYUmNRNkZUeE9xQTV3Y0VOMktHZTErK3VQWEc2dlMzMVR1eUk1a2Jn?=
 =?utf-8?B?RzVXbDg4NWVnVHJWRDRHaEhFOEhBWGx6eDg5UW96Zk9pSm5NVWVHL2Q2SDRX?=
 =?utf-8?B?YVU1S3A0WmtGZWQvT1RyUDlKRFhpdzAzK1FyRnlJaHpKM2s2d0NXcVhFNS84?=
 =?utf-8?B?ZUN0OGU2QmxxQVBnRWFseGhlY1pkSUVxekYyb28yc3ZlOVJ3ME1wR0VFbWRk?=
 =?utf-8?B?aUxia1E2eXlTU0xNZHZHdXAySXFBaE9pR1JyK2FmM2h3alFNbUlTaGQxSFcv?=
 =?utf-8?B?V01VVWFmN0lxNEdoYjhRWmtMR242b2NLdUJyejdEVFNVbThVNjExN1BRdjlE?=
 =?utf-8?B?UTM2WDcwK0JjTktnN01jNWVDMjRTemlCWCsvak9MRTJMS1NBU29oU3JLejJ0?=
 =?utf-8?B?a3pQQzdNU2t6NkYxQSt2ZEZnZ2FXbUIzQ1FpRWFlcFpsalBGRDBFby9LVi9o?=
 =?utf-8?B?Y0VCV2hETzBUWnZaVUkzcEZVcWhweXl6NWtxaWtjOGx4eFVZci9yUnFNZmZw?=
 =?utf-8?B?ZWpGWFZObVloRlBkTndMWUZJV0NhVEZxRlN3VEZsVzhkb3Z3a2hIbGF0eFQr?=
 =?utf-8?B?RlZ4UFdYNCt6dzNaZUI1aGVSYmlvVnNBNy9ucnE3NXYzbktBczVhSC8xYkRv?=
 =?utf-8?B?VFIzTC94RU5zVkVIYW5TNnZDQUM1ellFSGcyU3NvRkdvZFhVakppaks5OFNG?=
 =?utf-8?B?VmMvbVVSZ1p5M3hBKzArVFFySzk5a0ErMk9wU0F4Q1lzYThTMVRjSEU0am44?=
 =?utf-8?B?UlRyVnJYU3dZODYzanFJdnRnMjNoeXdSSWdFcFdVUnA3eXBhaW1yaUhKZTVt?=
 =?utf-8?B?bTA2MGV2cGxlc1BvZjE2U09Ya05EcnMzRXdqc0hsL2d3RjY5WngxQlhnTG9k?=
 =?utf-8?B?emd6ZFc3RHBodGJ6a1ZURGp4Wjl5b3lMbEhFbzYxS0dvL3o5UWxQQzJETUFz?=
 =?utf-8?B?RWFheUxyVURINWVYWE1HOHo2anZIOUJnV3c0R3l6ZVNGUitNbTF4MnVCQU1S?=
 =?utf-8?B?dHNpZ0NnVEUxK2I4cTQ1V0E0NnQ4ZEFySkprdGx0alphelNtOVp0N2NhdnBD?=
 =?utf-8?B?N25xYk5mc2FHSjdTci9uZGpNNkN1QzhaUFBQWnZZMEJnaXpFcjNiSlRHbFps?=
 =?utf-8?B?MW9vaE1pYytQeXFEZzRNN3hMcGdmK3lpczNUK2dDd3BBOXVDTldEd2R1dFo4?=
 =?utf-8?B?T0lTZ1ZZaUZrK1hiSHBqc2VHZkxpR0pvM0pJV1JlRTNkKzZjWjNxQnlDZlZK?=
 =?utf-8?B?M1NDaEhWeERaaGFYUmYwSTQxM1VYWDh0MTc0cG95eDdZRW0zUlovQStVKyti?=
 =?utf-8?B?TlF6b3Fod1IreXFMSjl3MUR1cS9jZlBHRytjZzdNT1dWVUdYT215MXBLdjFx?=
 =?utf-8?B?ZkR4VWk0dkk3SEFnY1RaL0hWS1YrVFJqdENzRTNTY2wzUFh1dllYd3llU3Ar?=
 =?utf-8?B?MUxMQTByd205RXN0YVhLdDZhU3AvUGJReFVWMklHTHB4VHNqOGQ0a2t3bWcx?=
 =?utf-8?B?Z0JCNU9YVzZSWFlWdVIycDFFT0pwQXdiZVpTbDhCeXJJaEs0YUJLbEM1OE1s?=
 =?utf-8?B?NWsxOUdxRkZ6S3ltNG43dGMzdHNvNkFHcWE3NDdPZEkzalYzR0tJMERQOEFs?=
 =?utf-8?B?VURuUkF3UkZtdnBycE01OG9jZGFUOGhBaEQ0UlBvSlNvWFBwcEVpMWxPemsv?=
 =?utf-8?B?cFRYQ3JwM0RyODBXUk5Nb1pTdzNPeFRzYUlwTXVlMU4zWERhSmFpV3gxNHFU?=
 =?utf-8?B?MGNNNmVpNm1ZR2VLVHV6bFFWVVhYcDhibUpIU1MzaS93RkdDK2VWNzJBQjFz?=
 =?utf-8?B?aUtrSk1walkvbWVqZ3dhTU5rQmhNamM4dDEya0tFYlRZTW5WdzdGNm4zbXZJ?=
 =?utf-8?Q?fVgcd6TEJy1NnS32RFpX0uY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adba814a-608c-483e-46d5-08dc2d7f22b9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 17:05:25.1134 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yivZyaUT8HI56dh1QpojZmq0o+YbqeQ8dPwsPxoQSQQAkEJIv2XQ5U0kSZCFVmtla06D88fusA07va5mLG1qvFZtyssUGP+z2Hyd7dlC06k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5190
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



On 2/13/2024 9:33 PM, Kandpal, Suraj wrote:
>>> interaction of HDCP as a client with the GSC CS interface.
>>>
>>> --v2
>>> -add kfree at appropriate place [Daniele] -remove useless define
>>> [Daniele] -move host session logic to xe_gsc_submit.c [Daniele] -call
>>> xe_gsc_check_and_update_pending directly in an if condition [Daniele]
>>> -use xe_device instead of drm_i915_private [Daniele]
>>>
>>> --v3
>>> -use xe prefix for newly exposed function [Daniele] -remove client
>>> specific defines from intel_gsc_mtl_header [Daniele] -add missing
>>> kfree() [Daniele] -have NULL check for hdcp_message in finish function
>>> [Daniele] -dont have too many variable declarations in the same line
>>> [Daniele]
>>>
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>    drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 180
>> ++++++++++++++++++++++-
>>>    drivers/gpu/drm/xe/xe_gsc_submit.c       |  15 ++
>>>    drivers/gpu/drm/xe/xe_gsc_submit.h       |   1 +
>>>    3 files changed, 193 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> index 425db3532ce5..aa8c13916bb6 100644
>>> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> @@ -4,12 +4,27 @@
>>>     */
>>>
>>>    #include <drm/drm_print.h>
>>> +#include <linux/delay.h>
>>>
>>> +#include "abi/gsc_command_header_abi.h"
>>>    #include "intel_hdcp_gsc.h"
>>>    #include "xe_device_types.h"
>>>    #include "xe_gt.h"
>>>    #include "xe_gsc_proxy.h"
>>>    #include "xe_pm.h"
>>> +#include "xe_bo.h"
>>> +#include "xe_map.h"
>>> +#include "xe_gsc_submit.h"
>>> +
>>> +#define HECI_MEADDRESS_HDCP 18
>>> +
>>> +struct intel_hdcp_gsc_message {
>>> +	struct xe_bo *hdcp_bo;
>>> +	u64 hdcp_cmd_in;
>>> +	u64 hdcp_cmd_out;
>>> +};
>>> +
>>> +#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>>>
>>>    bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
>>>    {
>>> @@ -40,19 +55,178 @@ bool intel_hdcp_gsc_check_status(struct xe_device
>> *xe)
>>>    	return ret;
>>>    }
>>>
>>> +/*This function helps allocate memory for the command that we will
>>> +send to gsc cs */ static int intel_hdcp_gsc_initialize_message(struct
>> xe_device *xe,
>>> +					     struct intel_hdcp_gsc_message
>> *hdcp_message) {
>>> +	struct xe_bo *bo = NULL;
>>> +	u64 cmd_in, cmd_out;
>>> +	int ret = 0;
>>> +
>>> +	/* allocate object of two page for HDCP command memory and store
>> it */
>>> +	xe_device_mem_access_get(xe);
>>> +	bo = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL,
>> PAGE_SIZE * 2,
>>> +				  ttm_bo_type_kernel,
>>> +				  XE_BO_CREATE_SYSTEM_BIT |
>>> +				  XE_BO_CREATE_GGTT_BIT);
>>> +
>>> +	if (IS_ERR(bo)) {
>>> +		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming
>> command!\n");
>>> +		ret = PTR_ERR(bo);
>>> +		goto out;
>>> +	}
>>> +
>>> +	cmd_in = xe_bo_ggtt_addr(bo);
>>> +	cmd_out = cmd_in + PAGE_SIZE;
>>> +	xe_map_memset(xe, &bo->vmap, 0, 0, bo->size);
>>> +
>>> +	hdcp_message->hdcp_bo = bo;
>>> +	hdcp_message->hdcp_cmd_in = cmd_in;
>>> +	hdcp_message->hdcp_cmd_out = cmd_out;
>>> +out:
>>> +	xe_device_mem_access_put(xe);
>>> +	return ret;
>>> +}
>>> +
>>> +static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe) {
>>> +	struct intel_hdcp_gsc_message *hdcp_message;
>>> +	int ret;
>>> +
>>> +	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
>>> +
>>> +	if (!hdcp_message)
>>> +		return -ENOMEM;
>>> +
>>> +	/*
>>> +	 * NOTE: No need to lock the comp mutex here as it is already
>>> +	 * going to be taken before this function called
>>> +	 */
>>> +	ret = intel_hdcp_gsc_initialize_message(xe, hdcp_message);
>>> +	xe->display.hdcp.hdcp_message = hdcp_message;
>>> +
>>> +	if (ret) {
>>> +		drm_err(&xe->drm, "Could not initialize hdcp_message\n");
>>> +		kfree(hdcp_message);
>> Here you're leaving xe->display.hdcp.hdcp_message pointing to a memory
>> location that we no longer own. is that safe for the _fini function?
>>
> Would it be better to not have a kfree here if initialization fails it gets taken care of
> In finish function anyways that would be safer I presume.

We normally try to clean up immediately when things go wrong, also 
because if this failure causes the driver load to abort the _fini 
function might not get called (but not sure if this is the case here).
In this case this can be easily fixed by simply changing it to:

ret = intel_hdcp_gsc_initialize_message(xe, hdcp_message);
if (ret) {
	drm_err(&xe->drm, "Could not initialize hdcp_message\n");
	kfree(hdcp_message);
	return ret;
}

xe->display.hdcp.hdcp_message = hdcp_message;
return 0;


Which guarantees that xe->display.hdcp.hdcp_message is only set when the 
allocation exists with minimal changes to the code.

Daniele

>
>> LGTM apart from this (assuming it is going to be squashed with the next
>> patch for merge).
> Yes this will be squashed with the next patch when I send the new revision
>
> Regards,
> Suraj Kandpal
>> Daniele
>>
>>> +	}
>>> +
>>> +	return ret;
>>> +}
>>> +
>>>    int intel_hdcp_gsc_init(struct xe_device *xe)
>>>    {
>>> -	drm_dbg_kms(&xe->drm, "HDCP support not yet implemented\n");
>>> -	return -ENODEV;
>>> +	struct i915_hdcp_arbiter *data;
>>> +	int ret;
>>> +
>>> +	data = kzalloc(sizeof(*data), GFP_KERNEL);
>>> +	if (!data)
>>> +		return -ENOMEM;
>>> +
>>> +	mutex_lock(&xe->display.hdcp.hdcp_mutex);
>>> +	xe->display.hdcp.arbiter = data;
>>> +	xe->display.hdcp.arbiter->hdcp_dev = xe->drm.dev;
>>> +	xe->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
>>> +	ret = intel_hdcp_gsc_hdcp2_init(xe);
>>> +	if (ret)
>>> +		kfree(data);
>>> +
>>> +	mutex_unlock(&xe->display.hdcp.hdcp_mutex);
>>> +
>>> +	return ret;
>>>    }
>>>
>>>    void intel_hdcp_gsc_fini(struct xe_device *xe)
>>>    {
>>> +	struct intel_hdcp_gsc_message *hdcp_message =
>>> +					xe->display.hdcp.hdcp_message;
>>> +
>>> +	if (!hdcp_message)
>>> +		return;
>>> +
>>> +	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
>>> +	kfree(hdcp_message);
>>> +}
>>> +
>>> +static int xe_gsc_send_sync(struct xe_device *xe,
>>> +			    struct intel_hdcp_gsc_message *hdcp_message,
>>> +			    u32 msg_size_in, u32 msg_size_out,
>>> +			    u32 addr_out_off)
>>> +{
>>> +	struct xe_gt *gt = hdcp_message->hdcp_bo->tile->media_gt;
>>> +	struct iosys_map *map = &hdcp_message->hdcp_bo->vmap;
>>> +	struct xe_gsc *gsc = &gt->uc.gsc;
>>> +	int ret;
>>> +
>>> +	ret = xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in,
>> msg_size_in,
>>> +				       hdcp_message->hdcp_cmd_out,
>> msg_size_out);
>>> +	if (ret) {
>>> +		drm_err(&xe->drm, "failed to send gsc HDCP msg (%d)\n",
>> ret);
>>> +		return ret;
>>> +	}
>>> +
>>> +	if (xe_gsc_check_and_update_pending(xe, map, 0, map,
>> addr_out_off))
>>> +		return -EAGAIN;
>>> +
>>> +	ret = xe_gsc_read_out_header(xe, map, addr_out_off,
>>> +				     sizeof(struct hdcp_cmd_header), NULL);
>>> +
>>> +	return ret;
>>>    }
>>>
>>>    ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
>>>    				size_t msg_in_len, u8 *msg_out,
>>>    				size_t msg_out_len)
>>>    {
>>> -	return -ENODEV;
>>> +	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
>>> +	struct intel_hdcp_gsc_message *hdcp_message;
>>> +	u64 host_session_id;
>>> +	u32 msg_size_in, msg_size_out;
>>> +	u32 addr_out_off, addr_in_wr_off = 0;
>>> +	int ret, tries = 0;
>>> +
>>> +	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size) {
>>> +		ret = -ENOSPC;
>>> +		goto out;
>>> +	}
>>> +
>>> +	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
>>> +	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
>>> +	hdcp_message = xe->display.hdcp.hdcp_message;
>>> +	addr_out_off = PAGE_SIZE;
>>> +
>>> +	host_session_id = xe_gsc_create_host_session_id();
>>> +	xe_device_mem_access_get(xe);
>>> +	addr_in_wr_off = xe_gsc_emit_header(xe, &hdcp_message-
>>> hdcp_bo->vmap,
>>> +					    addr_in_wr_off,
>> HECI_MEADDRESS_HDCP,
>>> +					    host_session_id, msg_in_len);
>>> +	xe_map_memcpy_to(xe, &hdcp_message->hdcp_bo->vmap,
>> addr_in_wr_off,
>>> +			 msg_in, msg_in_len);
>>> +	/*
>>> +	 * Keep sending request in case the pending bit is set no need to add
>>> +	 * message handle as we are using same address hence loc. of header
>> is
>>> +	 * same and it will contain the message handle. we will send the
>> message
>>> +	 * 20 times each message 50 ms apart
>>> +	 */
>>> +	do {
>>> +		ret = xe_gsc_send_sync(xe, hdcp_message, msg_size_in,
>> msg_size_out,
>>> +				       addr_out_off);
>>> +
>>> +		/* Only try again if gsc says so */
>>> +		if (ret != -EAGAIN)
>>> +			break;
>>> +
>>> +		msleep(50);
>>> +
>>> +	} while (++tries < 20);
>>> +
>>> +	if (ret)
>>> +		goto out;
>>> +
>>> +	xe_map_memcpy_from(xe, msg_out, &hdcp_message->hdcp_bo-
>>> vmap,
>>> +			   addr_out_off + HDCP_GSC_HEADER_SIZE,
>>> +			   msg_out_len);
>>> +
>>> +out:
>>> +	xe_device_mem_access_put(xe);
>>> +	return ret;
>>>    }
>>> diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.c
>>> b/drivers/gpu/drm/xe/xe_gsc_submit.c
>>> index 348994b271be..9a18f5667db3 100644
>>> --- a/drivers/gpu/drm/xe/xe_gsc_submit.c
>>> +++ b/drivers/gpu/drm/xe/xe_gsc_submit.c
>>> @@ -40,6 +40,21 @@ gsc_to_gt(struct xe_gsc *gsc)
>>>    	return container_of(gsc, struct xe_gt, uc.gsc);
>>>    }
>>>
>>> +/**
>>> + * xe_gsc_get_host_session_id - Creates a random 64 bit host_session
>>> +id with
>>> + * bits 56-63 masked.
>>> + *
>>> + * Returns: random host_session_id which can be used to send messages
>>> +to gsc cs  */
>>> +u64 xe_gsc_create_host_session_id(void)
>>> +{
>>> +	u64 host_session_id;
>>> +
>>> +	get_random_bytes(&host_session_id, sizeof(u64));
>>> +	host_session_id &= ~HOST_SESSION_CLIENT_MASK;
>>> +	return host_session_id;
>>> +}
>>> +
>>>    /**
>>>     * xe_gsc_emit_header - write the MTL GSC header in memory
>>>     * @xe: the Xe device
>>> diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.h
>>> b/drivers/gpu/drm/xe/xe_gsc_submit.h
>>> index 1939855031a6..1416b5745a4c 100644
>>> --- a/drivers/gpu/drm/xe/xe_gsc_submit.h
>>> +++ b/drivers/gpu/drm/xe/xe_gsc_submit.h
>>> @@ -28,4 +28,5 @@ int xe_gsc_read_out_header(struct xe_device *xe,
>>>    int xe_gsc_pkt_submit_kernel(struct xe_gsc *gsc, u64 addr_in, u32 size_in,
>>>    			     u64 addr_out, u32 size_out);
>>>
>>> +u64 xe_gsc_create_host_session_id(void);
>>>    #endif

