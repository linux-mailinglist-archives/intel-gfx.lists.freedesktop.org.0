Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 626AC841E3A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 09:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A09112E5B;
	Tue, 30 Jan 2024 08:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3DEB112E5B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 08:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706604340; x=1738140340;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uIuy3EkfWwTs9G3mjL1/zcyRNqFE7lRv1zF33KKmcqw=;
 b=RVjcJGDfG9VSwXcH1Y9bhC2dNQ0W6t/2a3eXczDP2CxoPq+yxxSIDg/A
 i26nW04k4dk1DUIY9ToWzy7zmei2SuYAalbpb2lxei6GLs8xvuKz/laf0
 zCc6RkL2iv7QXszUtfwWfJfOxaOVodLl/xUpp3YLftbBAbBda74qhq7jW
 ixWPHk48OU3B5y2uotK5VlXSpcnHFWvwxevBK8pMky37m6kt3S09F9pXL
 1NZcfBpZ7lePEbmcK0t5rhIzrXT1PT/zXTBQIjmkUIuvOCtaqlnuFNy3V
 BERdj6//ub1wM4PHYA61QgNbUJ7fm0Yf4gYSbeCP+AVtAk/Ifiy56+eFg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="3047687"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="3047687"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 00:45:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="3600548"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 00:45:39 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 00:45:38 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 00:45:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 00:45:37 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 00:45:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNB9p52/rCtJH+FsUvgNtbkI7qUNVB6l2mssvbfk88x4WuCiGF+E6+yUjZK5iZ3kk+IxiMy9Wzxedl0d+LB6hDf/e+KPOGcIow9YE+JHVEZu6wCKNSMGfoQQyQB0RR6wR9W+2WxGXl1fTMEJ6137b8Cqb6CQnRmftjhGkXCNpnZkkMCg6UQYCeZtDKqcHWkQbej8DsA3IYzlANKLbmrSYe0vX3aYQGrMbiqcO7VFlruSIHQsoSH3pG2jraWIx6aE2IFTf9vFO90cfKpCHtRrw0tR3F27aEH3Jg4A53+kZwhfMy8/H+6+XoTTm/Y/QnLmX9+WAIwlW89He2jxw6BulA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0TghpfAC6KXNtJi0/eNDTmzFOIVn7gbLXGspMtonwa4=;
 b=e7jqkevWR7x5wsCW0RlQxm6z3AeOHZoQ9g60nL2KQLe0/+51LEezWPvM9NyUSTWwbMZalRBGTUfz9W6Z+8JSojfM121Zgc3cPhK3fqkqhVXAzFoVD8I6G3WCvPS+r17En3FjACtpcF1WwBhfg7/7FhjuVv8L68FNdc398/f4ACwl8w2kne09VIM835xxk3FV4kDGo/hhBoJ8PHFextkTrVClxzn73qeQXj0c9gYc4hdoa/0mUolPweFMpLXO6VqnaHia7kfwQJFG/kUZafx08ZLxDGo/yNgbZsVDgbsncFZveU5gXOYHwbeGX3+Gl1iw92bK8aw6gp/r9OglGKNY4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by PH7PR11MB5982.namprd11.prod.outlook.com (2603:10b6:510:1e1::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.35; Tue, 30 Jan
 2024 08:45:35 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::f931:40a2:bc25:d0c8]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::f931:40a2:bc25:d0c8%3]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 08:45:35 +0000
Message-ID: <f317b485-faa1-4efd-8e4a-15440c0dc702@intel.com>
Date: Tue, 30 Jan 2024 14:15:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] drm/i915/hdcp: HDCP Capability for the downstream
 device
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
 <20240112074120.159797-3-suraj.kandpal@intel.com>
 <c1f454e1-b461-45de-a388-3751db5eade1@intel.com>
 <5acddd6d-9e22-4ef4-ab97-9b1b4e642dad@intel.com>
 <SN7PR11MB67503DC146BD5B4A2E2F303CE3782@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB67503DC146BD5B4A2E2F303CE3782@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0022.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::23) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|PH7PR11MB5982:EE_
X-MS-Office365-Filtering-Correlation-Id: f74c5e03-9cf1-42cb-ac7d-08dc216fd31b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rrDHL4r1d2m30rVoKDB21zajua8t6jeNdSK9i323B8rE6SkXKFlF7Ml7/C6D9hGABdwJ4U3pglC9Iu4/H7Pwr6/VqxjUK5oIH69Dcj9Hn/Q5oorEFNxffgX3Jnb1tv8xYpPqIjDFpLGrO5H/cW6Gfjo84KBMlF3qY8KJ1ufFSd1OmlFkrcg8B6IbZ2/uMQw008D8OO1QcenHwFoKitxTHlzwkCLur/ayJnUd1pNpdmKlQbmgj8JFNMr+u7CPYmF6i5V09ndiRZUlw80Sht77puToE7bBN8NROhVSAX+gMgcB4L1RkEJ+5VptS30Y9OCWlZXYr6TsZGLJ378cBkd0Q9xIP9aw3cQ21ozXHEN9CyKXIpNbWrUhVAE8b8V8bvncGBbDRO+2iX0fYme9zHKfFQkuh2VOWpo8Qx3leUznC2j8/IWM7UPyePwfrLYqs+xNrU72dtuHP+237RotJ0QlP6cSN0sX7rWrO/Nf8ypNmvJw5ubWziy5jHpsJuwBCCXkPU6sCF18vJuwRLCkkqsf7QE8oZ3lBG17RS1cUG8ath1HXrh1w4IrxUGYT+fSAsIaChRsW13dw4kWFsvVZiO4iMvpMxWdO9DLkQ2b8/ZF61JdIPG0iT/f/BCeqoG9ZO1qYoGNwQWyZ4NTAWp7IXfIXA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(376002)(366004)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(83380400001)(41300700001)(2616005)(6512007)(26005)(38100700002)(8936002)(5660300002)(8676002)(2906002)(478600001)(6486002)(53546011)(6506007)(6666004)(66476007)(66556008)(66946007)(316002)(110136005)(86362001)(31696002)(82960400001)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUxkQ0tUZGE2dDYzUFhrTDY2M2RSdC93K1Y2czBWbHdxcCtOUkpRdnFWUUpz?=
 =?utf-8?B?cytUMEJjaXAzcGNZSVc3NjV5aWgxZ1YyRTFuTERYaWZTYU5jdEo3VG5sMHIv?=
 =?utf-8?B?amhEaHdqSWlWWEU2eUZMZlc5d2xQa29rRzI5bCt5Wnpsb3NBK2pFeWI1TFZW?=
 =?utf-8?B?M1REM3MwVkpSY3plTGYramsreVI2M2g4Y2hLVmZROVB6VUI5ZUpFYmRZbjJz?=
 =?utf-8?B?cEpWMkVuaUdJSi9PdVNjMkdQTHc5Nk05YWpsNTFHT0Z1MndsRUFMNHpwaG5W?=
 =?utf-8?B?emg0S1F6NWhmZ01iUWRTeUtrNXZPQUlOOEQrM3dEMU9MY200OUJ0bzRWYzI5?=
 =?utf-8?B?YnZESEtCRTI4V05Ea3NQVXRmVW9UMHZNS2tFZUJQckZIQ3dnNzhBV0pkdXAw?=
 =?utf-8?B?V3ZYZFhpdlBSYVh3TFdiY09sREVYbUllTTlFdGRZYkpmSWtHbXNqei9VZlVl?=
 =?utf-8?B?L1dheEJpbGhzc3cxeERJOHlETCt3RDV0M0NsdEJCZG45MTBtSFNGOHFYVjBE?=
 =?utf-8?B?QjRaRGwwcDEzUUZuZGV1MkVtZDFUcTJuSmUxdS9TRWprenFCb0JhazgzVk9s?=
 =?utf-8?B?UkZTT2xDOWNCTlpPTUNlb2h4cy9LTE5pRG9YZnNCaExZa0RYUDJaUVJXK2pm?=
 =?utf-8?B?ckxBcC9WUGdMWXJvVHE2ajdndUlUcElHOWxOaDhsTlNteVlPNDJHcCt0Wldq?=
 =?utf-8?B?VTdjU2JWbXdqSjBsclU5VU11cnBBbHFlQ0xRUXg5Z3Z3S3hKT0N4aHBYR0g0?=
 =?utf-8?B?S2pnREJ2cE5HWmZTVmtGbGRhMnpVV2o2eFJXR0tvTFVhbnVDVmxoeGIyYk9U?=
 =?utf-8?B?TVh1L0J4akNRVlB1VGhzY2lCK0VxZ0lCNU9ack9SRS8yaUFpWTlCZEMybVhV?=
 =?utf-8?B?dWJhQ0oydDFhR2tKaW5DM1RaRXptYzFDTVREM1orc3NyajdCS0pDZVYvakg0?=
 =?utf-8?B?SUJlYUcyekNRYVVPZVYxTlhUSU5yQXJ5VUNkeDNLZ2wxTjVwZllHZ2xnSVV0?=
 =?utf-8?B?M3E5NW53UmJEU3I4T0p4dkVBbDNUY0Q1UUtSYm5JZmN1RTVPK2x1WjFvbXVK?=
 =?utf-8?B?OXUraTBheTJBUjYySXJHTmVqTjNZR2xWZlNqSVpWc0FlbVpiUWoyMmRSOUJh?=
 =?utf-8?B?aGVDb3plcmR3Qkc3VkNZeS96TXQ4QkpZRkhGZ28vVE80UlE0OWd4cHFFMUox?=
 =?utf-8?B?TDg0UlRkeWhLOElrc2IwaHEyVTZRN1BLUWpSRS9YS3RPMTRFQXhHN2I2T1hk?=
 =?utf-8?B?TmNwa2Y0R0I1aW9udHJpUmVxaXZRR1gyR0djc2NJckxTUzNLZGdYMGs3Q21W?=
 =?utf-8?B?MnU0ZGdjM2pWR2Y1MWwrdFppZ0NZbHNneFRxZ0UyM1dQdS94VUFyZzNzRVQ0?=
 =?utf-8?B?Y2xnb3pQZ0dycVgxa2FOM1hydWphNXNWSFVaN1NzdnBSWGoxdjJXbmdsL0hT?=
 =?utf-8?B?V0REL3hMbFpCZUprbFdzME1BODlHKy9RT0QxVWNnSlFBYkVRTllVVHRFU1hi?=
 =?utf-8?B?MjBUU2xEVnZISTBaYnBHc050VzE2RnY5WjZGVFlIRW5KOXRoRXNEVHpEYVl0?=
 =?utf-8?B?RXR1bE02S1hyeDJ5Z3g2c1JLQTFvb0Vrd2ppSVdtOWdFZFMrekx3Q1BUSDZT?=
 =?utf-8?B?M3JNdEo1T3VPVUxwNkt6TGJBTXdiY1pxS1lGbW5SUm5YSytacUxCMVh0cWxx?=
 =?utf-8?B?MkJmM1gxd1JCUUdjeHhWOUE5N0NIQzdJMVMxRW5lNnJjWk5mWEtEZUh4Q0Z1?=
 =?utf-8?B?UzMxY2gvNG1UY1FReklWbFhmVnRyaG4vYjJSbmtpbHF1TW1VRVpiSGtJQVZa?=
 =?utf-8?B?Ry92S3BLWUdQY3hwZldjaWgxaVduaDJNRGx0THFMOWJoTVBqT3BBNWZRZXhz?=
 =?utf-8?B?bVRSMFA3RVhkQUVYQVJXUVExSEVFcVVkbGVuZjhFRXIyL3Q0WlB6dk1ORHBX?=
 =?utf-8?B?SUdyMEUweGp0eWVvcVYxTUxyNHhmekVvR3hvZEFlTURvUlJUOTBWUStQczB5?=
 =?utf-8?B?RVVLWk5pSi8zY2dUUzlZRXhwdmg4Z2NLSUp6SnBRTWFEdzhBc2VDQmhiRE1z?=
 =?utf-8?B?bSt1bkEvN01peWNHemNzYzUva085d0NLYUJobFp1eU1MNmdQUXJIejJCZG94?=
 =?utf-8?B?Z085cC9RRzgweXduVzhJU1gvanBxNnVZamNGTW9ZbDZ4Vk5oOXRTWEt6azFn?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f74c5e03-9cf1-42cb-ac7d-08dc216fd31b
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 08:45:34.9978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vJHIXTuo2md+RdeLPE3HQay1szuFnM4Abt93KOIYjpLuofS2d00ZnsEIu1PhOEKOLE6HF7gIzdg6zszYszbvsnW7yPUN2lKI14V4kvQAmFI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5982
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


On 1/27/2024 12:14 PM, Kandpal, Suraj wrote:
> =
>> On 1/24/2024 6:50 PM, Nautiyal, Ankit K wrote:
>>> On 1/12/2024 1:11 PM, Suraj Kandpal wrote:
>>>> Currently we are only checking capability of remote device and not
>>>> immediate downstream device but during capability check we need are
>>>> concerned with only the HDCP capability of downstream device.
>>>> During i915_display_info reporting we need HDCP Capability for both
>>>> the monitors and downstream branch device if any this patch adds that.
>>>
>>> I agree cases where MST hub/docker and sink are of different
>>> capabilities, this creates a confusion.
>>>
>>> with this change, perhaps kms_content_protection IGT can also be
>>> changed to check for MST hub's capability.
>>>
>>> Only thing is that for hdmi the 'remote_req' doesnt make sense.
>>>
>> Instead of changing the hdcp_2_2_capable can we just have a separate
>> function for intel_dp_remote_hdcp2_capable(), which uses aux =
>> &connector->port->aux.
> Yes I agree about the hdmi has a argument it wont use but I went with the lesser
> Of the two evils . If I went with the approach suggested the problem would be that
> debug fs calls intel_hdcp2_capable which has other checks for mei, gsc and If HW supports
> hdcp2 or not so all this would also have to be put in this function intel_dp_remote_hdcp2_capable()
> which I feel would create much more of a mess
>
> Regards,
> Suraj Kandpal

I see for HDCP1.4 also we need to have a separate functions if we want 
to get correct HDCP capability for remote sinks.

I think lets not change existing hdcp_2_capable function. IMHO it would 
be better to have another shim function for hdcp capabilities of remote 
sink.


Regards,

Ankit

>> The common code for reading HDCP2_2 Rx caps can be pulled out in a
>> separate function, which we can call only in case of MST when we read
>> remote.
>>
>> Also we might need to have similar thing for HDCP1.4.
>>
>>
>> Regards,
>>
>> Ankit
>>
>>
>>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>>> ---
>>>>    .../drm/i915/display/intel_display_debugfs.c  | 19
>>>> +++++++++++++++----
>>>>    .../drm/i915/display/intel_display_types.h    |  2 +-
>>>>    drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  4 ++--
>>>>    drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +++---
>>>>    drivers/gpu/drm/i915/display/intel_hdcp.h     |  2 +-
>>>>    drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
>>>>    6 files changed, 23 insertions(+), 12 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>> index d951edb36687..457f13357fad 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>> @@ -210,7 +210,8 @@ static void intel_panel_info(struct seq_file *m,
>>>>    }
>>>>      static void intel_hdcp_info(struct seq_file *m,
>>>> -                struct intel_connector *intel_connector)
>>>> +                struct intel_connector *intel_connector,
>>>> +                bool remote_req)
>>>>    {
>>>>        bool hdcp_cap, hdcp2_cap;
>>>>    @@ -220,7 +221,7 @@ static void intel_hdcp_info(struct seq_file *m,
>>>>        }
>>>>          hdcp_cap = intel_hdcp_capable(intel_connector);
>>>> -    hdcp2_cap = intel_hdcp2_capable(intel_connector);
>>>> +    hdcp2_cap = intel_hdcp2_capable(intel_connector, remote_req);
>>>>          if (hdcp_cap)
>>>>            seq_puts(m, "HDCP1.4 ");
>>>> @@ -307,7 +308,12 @@ static void intel_connector_info(struct seq_file
>>>> *m,
>>>>        }
>>>>          seq_puts(m, "\tHDCP version: ");
>>>> -    intel_hdcp_info(m, intel_connector);
>>>> +    intel_hdcp_info(m, intel_connector, true);
>>>> +
>>>> +    if (intel_encoder_is_mst(encoder)) {
>>>> +        seq_puts(m, "\tHDCP Branch Device version: ");
>>>> +        intel_hdcp_info(m, intel_connector, false);
>>>> +    }
>>>>          seq_printf(m, "\tmax bpc: %u\n",
>>>> connector->display_info.bpc);
>>>>    @@ -1153,7 +1159,12 @@ static int
>>>> i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
>>>>          seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
>>>>               connector->base.base.id);
>>>> -    intel_hdcp_info(m, connector);
>>>> +    intel_hdcp_info(m, connector, true);
>>>> +
>>>> +    if (intel_encoder_is_mst(connector->encoder)) {
>>>> +        seq_puts(m, "\tHDCP Branch Device version: ");
>>>
>>> Perhaps MST HUB HDCP version?
>>>
>>>
>>>> +        intel_hdcp_info(m, connector, false);
>>>> +    }
>>>>      out:
>>>> drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> index ae2e8cff9d69..aa559598f049 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> @@ -507,7 +507,7 @@ struct intel_hdcp_shim {
>>>>          /* Detects whether sink is HDCP2.2 capable */
>>>>        int (*hdcp_2_2_capable)(struct intel_connector *connector,
>>>> -                bool *capable);
>>>> +                bool *capable, bool remote_req);
>>>>          /* Write HDCP2.2 messages */
>>>>        int (*write_2_2_msg)(struct intel_connector *connector, diff
>>>> --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
>>>> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
>>>> index bec49061b2e1..90b027ba3302 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
>>>> @@ -649,13 +649,13 @@ int intel_dp_hdcp2_check_link(struct
>>>> intel_digital_port *dig_port,
>>>>      static
>>>>    int intel_dp_hdcp2_capable(struct intel_connector *connector,
>>>> -               bool *capable)
>>>> +               bool *capable, bool remote_req)
>>>>    {
>>>>        struct drm_dp_aux *aux;
>>>>        u8 rx_caps[3];
>>>>        int ret;
>>>>    -    aux = intel_dp_hdcp_get_aux(connector, true);
>>>> +    aux = intel_dp_hdcp_get_aux(connector, remote_req);
>>> Inline with the comments on the previous patch, this would also be
>>> required to change.
>>>
>>> Otherwise the patch looks good to me.
>>>
>>>
>>> Regards,
>>>
>>> Ankit
>>>
>>>>          *capable = false;
>>>>        ret = drm_dp_dpcd_read(aux,
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>>>> b/drivers/gpu/drm/i915/display/intel_hdcp.c
>>>> index c3e692e7f790..b88a4713e6a8 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>>>> @@ -161,7 +161,7 @@ bool intel_hdcp_capable(struct intel_connector
>>>> *connector)
>>>>    }
>>>>      /* Is HDCP2.2 capable on Platform and Sink */ -bool
>>>> intel_hdcp2_capable(struct intel_connector *connector)
>>>> +bool intel_hdcp2_capable(struct intel_connector *connector, bool
>>>> remote_req)
>>>>    {
>>>>        struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>>>        struct intel_hdcp *hdcp = &connector->hdcp; @@ -186,7 +186,7 @@
>>>> bool intel_hdcp2_capable(struct intel_connector
>>>> *connector)
>>>>        mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>>>>          /* Sink's capability for HDCP2.2 */
>>>> -    hdcp->shim->hdcp_2_2_capable(connector, &capable);
>>>> +    hdcp->shim->hdcp_2_2_capable(connector, &capable, remote_req);
>>>>          return capable;
>>>>    }
>>>> @@ -2374,7 +2374,7 @@ static int _intel_hdcp_enable(struct
>>>> intel_atomic_state *state,
>>>>         * Considering that HDCP2.2 is more secure than HDCP1.4, If the
>>>> setup
>>>>         * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>>>>         */
>>>> -    if (intel_hdcp2_capable(connector)) {
>>>> +    if (intel_hdcp2_capable(connector, false)) {
>>>>            ret = intel_hdcp_set_streams(dig_port, state);
>>>>            if (!ret) {
>>>>                ret = _intel_hdcp2_enable(connector); diff --git
>>>> a/drivers/gpu/drm/i915/display/intel_hdcp.h
>>>> b/drivers/gpu/drm/i915/display/intel_hdcp.h
>>>> index a9c784fd9ba5..72268e593cec 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
>>>> @@ -39,7 +39,7 @@ void intel_hdcp_update_pipe(struct
>>>> intel_atomic_state *state,
>>>>                    const struct drm_connector_state *conn_state);
>>>>    bool is_hdcp_supported(struct drm_i915_private *i915, enum port
>>>> port);
>>>>    bool intel_hdcp_capable(struct intel_connector *connector); -bool
>>>> intel_hdcp2_capable(struct intel_connector *connector);
>>>> +bool intel_hdcp2_capable(struct intel_connector *connector, bool
>>>> remote_req);
>>>>    void intel_hdcp_component_init(struct drm_i915_private *i915);
>>>>    void intel_hdcp_component_fini(struct drm_i915_private *i915);
>>>>    void intel_hdcp_cleanup(struct intel_connector *connector); diff
>>>> --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> index 7020e5806109..d7feef05bc47 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> @@ -1733,7 +1733,7 @@ int intel_hdmi_hdcp2_check_link(struct
>>>> intel_digital_port *dig_port,
>>>>      static
>>>>    int intel_hdmi_hdcp2_capable(struct intel_connector *connector,
>>>> -                 bool *capable)
>>>> +                 bool *capable, bool remote_req)
>>>
>>>>    {
>>>>        struct intel_digital_port *dig_port =
>>>> intel_attached_dig_port(connector);
>>>>        u8 hdcp2_version;
