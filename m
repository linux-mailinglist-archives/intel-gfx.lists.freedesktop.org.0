Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B05514F117B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 10:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA5710EB34;
	Mon,  4 Apr 2022 08:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1522810EB2F
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 08:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649062682; x=1680598682;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3x832ySug2E4xOkoa6brny8BqjKJB+igg1PXs27h9ws=;
 b=l5e1T0pU67tohEZ5Z2pe4IoXNN1RoyR3WdrL78+mJ80CHPPqbiY71h6Z
 8oiM7ZzU8n4TvJQF/4ki3oporlrW7Ae36GcbgpWv3sdw24LgOt0VcRqDq
 2ORsjGk3/CKMBG33hr9R64mIal7CUe2RWkqbdggvvQgB13caR46nXVnSc
 DXXPlCXugn2/5jYZvyg6swrbSTcuetstGBNzQA4xAXf6ID8TVXVQs3iJk
 95hXEmooeN8KF12mFmf+gGPavyuUFkMam1AO7n79A2P67gymXP2TrD/SG
 jAbqQyPyNKAkDHliLQHws26HQbVo5fzQgiXy3m7TwILtgFSAhjGIraqEd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="260458490"
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="260458490"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 01:58:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="504835461"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 04 Apr 2022 01:58:01 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Apr 2022 01:58:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Apr 2022 01:58:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Apr 2022 01:58:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UBYBIWx10PT5jwkLup1lVlgFbD+3qylt29+PkdudkIGtfDwNwB/KqrYprcDCYT5xdQmENaIf+SxZk/pfe0Lmo8OWR2QimAlPdEjBDG9o408izTStsSAp1W+GKPHKFMXdx9r2nbHEUZA9m9GLQAefyC3R8xLMwqgeqWblsoQcGXOV4C8UTgnv6TZkUhpoG90MTCMk1ZgD8vJkyyjzsM6/q02vOnIYM04PjlIUvk383YkBOCjcuB3HJ8JgunXyomXyvKI9iRKqdwCMT5t7Zu6cfUShq076NFkSzs5znR/clOIRbN0naqpcUSlp9OH8T+BdOUq5JLfBfmj71z3xJs/jzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3qHJvhiqma2ioivFqtK4HljpxZU1HNn6C3Y2OikKfGA=;
 b=mBjnM8sLuLJ/4f/4hqe51JbbgoEDfdOzLt8kdLKiM1OrYSqYrB6heuVCebLUpwGIOXtYWETj5c2HxyRLh52MnFgby4PxgeT9MrsNRzs4WB/5yrtpn7ppyyVtyBrTb8IKAg3Wtk6TjrINXTyD+pS+Vy68LVNG+LjNYVgwwppGIcrBNLJWC9WNhg7SSUR5acyFM/96VyIuVg0UxM0aYab6+4LcevpynA/aHEKPvM6aEiYgtZ1XlCyW6cTE61+xHDYrYWrkq2jpYYRNdYm2C7A+6WbNWwLCk26EoYIzJB15sDpq3giEhOFLkkNGmZXVlO2qNcnjdwkYgfTMvJK8ZXg9dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5719.namprd11.prod.outlook.com (2603:10b6:8:10::6) by
 CY4PR1101MB2134.namprd11.prod.outlook.com (2603:10b6:910:19::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Mon, 4 Apr
 2022 08:57:59 +0000
Received: from DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::bcfb:902b:c181:8c72]) by DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::bcfb:902b:c181:8c72%4]) with mapi id 15.20.5123.031; Mon, 4 Apr 2022
 08:57:59 +0000
Message-ID: <b5041da6-9a2b-c687-5dc9-c587eb6230b4@intel.com>
Date: Mon, 4 Apr 2022 14:27:50 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220328075020.708022-1-bhanuprakash.modem@intel.com>
 <20220329060731.785476-1-bhanuprakash.modem@intel.com>
 <877d897z90.fsf@intel.com>
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
Organization: Intel
In-Reply-To: <877d897z90.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN1PR01CA0073.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:1::13) To DM8PR11MB5719.namprd11.prod.outlook.com
 (2603:10b6:8:10::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01b87212-fae7-4113-3532-08da16193790
X-MS-TrafficTypeDiagnostic: CY4PR1101MB2134:EE_
X-Microsoft-Antispam-PRVS: <CY4PR1101MB21349D2C544631495D24AAAC8DE59@CY4PR1101MB2134.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ABmoGDYxe/dJqu6aQwvRPqmuGKrxvYmY2Hr5vOQNSNaDNlbdrMhbmnDbQmlYYknATnltON2NAL/mZ4SVn/IqmrxX1ojgaZHdotinWnSfsWmqDznjQ8nIFcMYeXXAgL3nmoL9BEG0UmDAHvtFVM2ObmnwziA5rowfZ7fJFowWRN7I4489bOFH3DlVloAEE3ZJIRVamD9riMGTaVj5CtQ4V0KbZeDNt9XQAKH7aXv6iflgvjD5Nm6BmTU5Cmx0oDw2QeB0FIU+DGzIwDE/QGhhCuUjSyGaghuQ72dY6s5sG+1Zgm2fO3B8FPzmBp96Wzln18rUXfNV6K0NctpugtzBCtasuY6j0WZdR5Gky8sSTsqK9FEPaq8Hem6dhjxG8CfkYe+RNEZjhz942Ww7FBDYoREJsG+c2AmMI2m6U6C52GWWon0/YsVWde8BbqnaxxRfQenxWRUcF6fS4/EoGZdw+JECZD9Ni70BlpcgupTrHDxk0aICjMuJPpqjxFFE6d2ZCsCNnnOA8WqOCPYJ9hwwgstYX0//9u8/ZIUKC4JK9SdcPBiqtYL8D8PSHazb8irZGGrfFobjxRyhPR8YhASycBQqwaqBJ78yXGvezvCOFbQyYZrE/1p8huSXejYd6b1s+GeOJNbClF0bRUa+XWn09mzqNMZ588ExMGc0S86GqWf6zZ3b5nl2Qf4r2VNTqZok30xsVyqFDF0+oPRB7UMl9LRwKHY0VKO9qLpvuG9G5rE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5719.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(36916002)(316002)(83380400001)(31696002)(6512007)(8936002)(2906002)(966005)(6506007)(66556008)(6486002)(38100700002)(82960400001)(2616005)(31686004)(66476007)(66946007)(26005)(8676002)(508600001)(186003)(66574015)(36756003)(5660300002)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWdJTlp2WmVyN3R0eUNyRW1KR1crcTljTUtrWWovVHJaQUJCQjVTSW5iaGln?=
 =?utf-8?B?Nno5L08vekt3cURXTytvZDl2blJTeFBJc3hYancrazhnZXNUcjl0WVVpUEhv?=
 =?utf-8?B?VjZnUGNXOWs0c2xCSngrK0NwVXV4bTFBQjhiVW9zYnBJOFZQVnd3dldzdkpG?=
 =?utf-8?B?WFJSUlZMYXBJSlEzU2JXSXFwZHA5dXV3czdKR3l4VnhlemZSbUxtZXN0QmR5?=
 =?utf-8?B?aHFXWFBKcmJGRVhwek9EbXdWcUdSQ1ZaOTQ2RkxDTENDOE5taFBrckFvZlkz?=
 =?utf-8?B?QUgyVk1KSmlUZU82bjdIY0RWem1ZRnp1Z09VUDh0eE1qQ3ZmUDdlMFU3Qjhn?=
 =?utf-8?B?UTB0V2hBYlNWYzFXbTBYcHYxOCtqbUhJbXBrRmtITHpJODhrcUloekVpbU1o?=
 =?utf-8?B?enUzM3VNRjdQWVdEZEJ4WFVUNjRucjJENjhFTE5FTkl1NDBBWnlNSnoyRGxN?=
 =?utf-8?B?RE9RWXppYXlYcXd5eVRlbVlVZFNOcWFUeFJ5WXExd0NpUG1IZ25IVFpWMVNo?=
 =?utf-8?B?NTd2Vk16TW5XN203RWNlQzk3bWt6VjN0Y1U0TlFzaFdkZnMxMThpdUZQTzBx?=
 =?utf-8?B?QlVQZ3c5MFQ2Y1ovcXAydWpTRTZRanozVG1lS2RWZDdsWmFJdEkxZzU2dUho?=
 =?utf-8?B?ek9uekliZUMwNmdJQjMybTAxaWEyRDFRZVI1ZFZxVEtEcDhqK1BQVC9SN2NO?=
 =?utf-8?B?cVRGWk9tWS8rK2s4YWM1WUc4aUZzQ2Y4dHFPaHpaOTZWZzBGL1dselMwaWpQ?=
 =?utf-8?B?RGkyaEdWbWdoam1qTnlXOFUxNElEZ0JFQXpRcE02cFhheDZaN2RXQ1A0Z200?=
 =?utf-8?B?U2FNeDdGWlBXNW96eG0xUHR6YTlKaUR6RGQrRGFvazVha0luZ2xwc3hvc2U2?=
 =?utf-8?B?dmtuVlpIODJlWmZ3aTlYL0xzQ0JaTWwwK1laUjFMejZxWTNuR3ZzQndKZFBh?=
 =?utf-8?B?VjZ0Nzh2ZDU2cDIycVhMVjI3bnR5MGM2bnhMc0NUY09WMzU3WFczQ2s5Zkl5?=
 =?utf-8?B?VWVnZUFxUEJtSVBzSDg3V2N0eklhb2lvUzVVUWdFc204bm1QVVIrdmM0eGdm?=
 =?utf-8?B?UitpcFFtbDVkb1ExVWpEamVURURXckJtc1hvdEFWQU8vR2pvUHJ1TFZpZ1FN?=
 =?utf-8?B?Nm9idEpKU2Zsc2FLczBvZVZmaE5kNUlIc1dyeHJONXR2SDcxbkJZOVN2L1VS?=
 =?utf-8?B?NGppeVpXR05nM0VjbmR0KzFLcDZUck5nTlVuckRPQlNUOTdtaWZhem5JSkw4?=
 =?utf-8?B?aFdmU09wWm5GZU5FRVRTNjNja1NZNXo1ejU3K29MMU5VemJIb1VkTy9kTmNn?=
 =?utf-8?B?eUR2dkJTZndRVmQwbzByWDFHM2psUXJsUld3dkF1WGZQeWt2T0VmY3VDQ0ZM?=
 =?utf-8?B?L0t1Vms4WXVYODljZzg4OFFCV2ladVZxZWkvN2FTbE03NVFiekcxRk1YYVlv?=
 =?utf-8?B?YlVmbEk0QTg5bmpRS3YvLzdHSUsyU3Bac3F4RUJuak5jVjhtRGhYZWphK1hm?=
 =?utf-8?B?a1VjTzRjYzZ2OFIveVIvSitNOUp2NWVqc1lhdGhjdURXN3NLN1QyblBLNkZO?=
 =?utf-8?B?V2JXc1AwS0h1RDFMS29lQUl2UWRkNUJtOW8yS3dwUGc5S1dWcFRvTnJSTWRR?=
 =?utf-8?B?WUxvSDRhNnBHejlqa0tRQkwzTnJ1ck5CdjMvUEYvRWtYRWdtRnhVNEdWRlU5?=
 =?utf-8?B?MmJDcUpvSUQ3YlRrWVBPeGdoUlhTSUsrb1RoVjRpbHZYM2NMNXlkSUl6WnEv?=
 =?utf-8?B?Qmo1TFhsdGlSOVlHUUk3dFRvcVIwMnh4NkcrenAvS0ZxaGZENzV6a3VLMnZD?=
 =?utf-8?B?N2hkVzBDVzFLa2lmT0dHOFp5cXhJeUFwMm1qVWZFdjFSdENSVEgrdWtRQ1gv?=
 =?utf-8?B?RnE2ZitOQVlFYTZ4Z2tyYlhabFJSc2tDa0RYb0I1U1psK3pRbkFqV0ZvNmMv?=
 =?utf-8?B?VUdQMElySWFmV1F2ZWp4RWlQVTZkcFNld1dzY1ZjTzVEY1pHSENCeXM0dVd5?=
 =?utf-8?B?RjV6SjBaQ1U0ampBQ01XU3oyTmRwYVZkUVl2MVd3dThhN3R2YkJuMzRseE5V?=
 =?utf-8?B?TTRyRGFVdDMxY0pRdThSYlVtV3c5ajBkN3daZHN6MGk1K2RmY1pENVpqS1lz?=
 =?utf-8?B?UEhwUW1mdFhxSFhhSVczU1M3VEZkaFdZT0lCU2NuN3ZVUVYrTU1ZTUE0b3p4?=
 =?utf-8?B?S3JZS0FhbEVqTzBSeHUreWdxOGtJMXRreGxvWTJoTTBnRCtuNlZ1TngvU1Y1?=
 =?utf-8?B?VEI4T1RmMlFKN3UyTzBlZ0JUUUxmK2E5ZERSZ0Z5L09YYnJuV0hpWmRQcXZo?=
 =?utf-8?B?czBCdHRyNjh2SktTeGYvVTV0YmZVNktMZVNJNzVIK09Fb2Nic0RQRmd5eTJH?=
 =?utf-8?Q?7jy/D0MDl2UNdsiM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01b87212-fae7-4113-3532-08da16193790
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2022 08:57:59.2443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7w53y50Jk7Oa/7fPnmQ1+jBB5XUl//UcXiun9NgD6JdR6moPO+6OqQAvoqne9OsZspOKN2NI6w8L1+/0mEMyyhwHk8UVc3+L2p5WZ9tA3CA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2134
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/debugfs: Add connector
 debugfs for "output_bpc"
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

On Fri-01-04-2022 06:10 pm, Jani Nikula wrote:
> On Tue, 29 Mar 2022, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
>> This new debugfs will expose the connector's max supported bpc
>> and the bpc currently using. It is very useful for verifying
>> whether we enter the correct output color depth from IGT.
>>
>> Example:
>> cat /sys/kernel/debug/dri/0/DP-1/output_bpc
>> Current: 8
>> Maximum: 10
>>
>> V2: Add connector's max bpc to i915_display_info
>>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Cc: Swati Sharma <swati2.sharma@intel.com>
>> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_debugfs.c  | 46 +++++++++++++++++++
>>   1 file changed, 46 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index c1e74a13a0828..694d27f3b109c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -663,6 +663,8 @@ static void intel_connector_info(struct seq_file *m,
>>   	seq_puts(m, "\tHDCP version: ");
>>   	intel_hdcp_info(m, intel_connector);
>>   
>> +	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
>> +
>>   	intel_panel_info(m, intel_connector);
>>   
>>   	seq_printf(m, "\tmodes:\n");
>> @@ -2275,6 +2277,47 @@ static const struct file_operations i915_dsc_bpp_fops = {
>>   	.write = i915_dsc_bpp_write
>>   };
>>   
>> +/*
>> + * Returns the maximum output bpc for the connector.
>> + * Example usage: cat /sys/kernel/debug/dri/0/DP-1/output_bpc
>> + */
>> +static int output_bpc_show(struct seq_file *m, void *data)
>> +{
>> +	struct drm_connector *connector = m->private;
>> +	struct drm_device *dev = connector->dev;
>> +	struct drm_crtc *crtc;
>> +	struct intel_crtc_state *crtc_state;
>> +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
>> +	int res;
>> +
>> +	if (!encoder)
>> +		return -ENODEV;
>> +
>> +	res = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
>> +	if (res)
>> +		return res;
>> +
>> +	crtc = connector->state->crtc;
>> +	if (connector->status != connector_status_connected || !crtc) {
>> +		res = -ENODEV;
>> +		goto unlock;
>> +	}
>> +
>> +	crtc_state = to_intel_crtc_state(crtc->state);
>> +	if (!crtc_state->hw.active)
>> +		goto unlock;
>> +
>> +	seq_printf(m, "Current: %u\n", crtc_state->pipe_bpp / 3);
>> +	seq_printf(m, "Maximum: %u\n", connector->display_info.bpc);
>> +	res = 0;
>> +
>> +unlock:
>> +	drm_modeset_unlock(&dev->mode_config.connection_mutex);
>> +
>> +	return res;
>> +}
>> +DEFINE_SHOW_ATTRIBUTE(output_bpc);
> 
> Looks like an excessive amount of code for a single value.

Yeah, but these values are very helpful in many IGT tests like 
kms_color, kms_hdr, kms_dither, kms_dsc etc..

Otherwise IGT needs to request the kernel to get the EDID, and parse 
that EDID to get the "Maximum" value which is redundant (Kernel is 
already doing the same) and not recommended in IGT.

And there is no way to get the "Current" value except reading it from 
i915_display_info which is again not recommended in IGT (As 
i915_display_info is Intel specific).

This debugfs is already introduced & using by AMD: 
https://patchwork.freedesktop.org/patch/308586

- Bhanu

> 
> BR,
> Jani.
> 
>> +
>>   /**
>>    * intel_connector_debugfs_add - add i915 specific connector debugfs files
>>    * @connector: pointer to a registered drm_connector
>> @@ -2330,6 +2373,9 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
>>   	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB)
>>   		debugfs_create_file("i915_lpsp_capability", 0444, root,
>>   				    connector, &i915_lpsp_capability_fops);
>> +
>> +	debugfs_create_file("output_bpc", 0444, root,
>> +			    connector, &output_bpc_fops);
>>   }
>>   
>>   /**
> 

