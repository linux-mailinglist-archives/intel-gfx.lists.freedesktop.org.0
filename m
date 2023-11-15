Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6DC7EBEF8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 10:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D5B10E507;
	Wed, 15 Nov 2023 09:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ADFA10E507
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 09:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700038879; x=1731574879;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lTBChGhzbn/twk+vIC2XYZcuf7bISU/fzImubyYuB00=;
 b=lwbkgHNzcWwLn0MtiIEYX/dMvg0u2/jvYNseziuHq/EA3fnNBJfBdu/4
 5ZP1gZfIpTJACItsuFFG9IeRJO8mhVYG7lYzfIqP/gWQoK0mbEUhGJacV
 v4nIv0efCGaQNQ7ub4+7ZzSCo+eHCx7NIooNVkmdopcgZ6NcABS+ZK7uq
 /wl/FgAC6BzTYmozQiNSe4lpRJ9fYwIqCE4IyQDu5iIVohQLNyITHZIaV
 W+cLHrtGOrg4cb7bUUPp+E5bQ/deyB3JacbIudaLxPX4cJTWlvLQuCj2r
 XtPy90Gmig4dlkkMOLxszKsF2zgv9ejKiPpS+LPvw8oELRjqfC3NjbHmr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="389693769"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="389693769"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:01:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="882335621"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="882335621"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 01:01:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 01:01:18 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 01:01:18 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 01:01:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g3Mo0J51EmJ98JFWZn2qSdSku59Eze2VKAONnLf/1j5q86+8QEGOaLNwErdJ/OeY97uXJh5enCFdKZpjjEZqNgiPHk0lQo2CZEWchtIu+Bi3UKr6Q0S2yGXjxdbUdn/q7R7MpRHdmz/bTtHPUYdw/PSNKBi7O37cX4CdY5YF+1pPwavMRD9mPlV/v25SSS7JK6exqAsyyT1OGrXHHkGc7xOPkwKy5e5Q1PyCE0FjLSX1rXN736+s08TvzXkPtATW3+vvCl6IAtJ+zX5DI8y3Wmz5cNVs9URPEqlkXhYUuKWBDHGq0tOzrqfncrlmqNBrhuMkO8yZcoEakz6n6nwckw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZD/DdRLvPR4YH7KzyiqOc9UCarydwIqpou6vdIUpNRs=;
 b=RWvv5MfOUykP20tri7CYQ9VxcfhC7kjWdjX3Ve+mU6byGWifAnq2gkr7PkllkOEYSsxF60L5WjGl208wo/33Vcz3UBehMxXbCr8VVt1iHXo8+o+iYAv/6ChHb8lyACILs6+hkjTAN8FfLNTQxGmBP+uoFktObKr8gOMudNlQFNctQhhWQKbzrX/f51naWFWE2Ig8UXqsotE5N9yotl9o9wZ4Hw3E9pX3SWAB1OpSquUjxuy34SUe/IfLJ7hoVEp69OtCOAm2TjusJ8JV3IZxVzBlTcmnFNZ4Joa0erX0PXgL8k0k2glAu3547W3DWz55A4zZt5iP2BWYBgORNMsunQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by MN6PR11MB8169.namprd11.prod.outlook.com (2603:10b6:208:47d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.17; Wed, 15 Nov
 2023 09:01:15 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::6b2b:4602:26d0:dacb]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::6b2b:4602:26d0:dacb%4]) with mapi id 15.20.6977.033; Wed, 15 Nov 2023
 09:01:15 +0000
Message-ID: <ac8e85ff-a154-36aa-e95a-b9b0e4c60049@intel.com>
Date: Wed, 15 Nov 2023 14:31:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
 <20231107041740.3718419-5-ankit.k.nautiyal@intel.com>
 <SN7PR11MB6750D4F10D0098B25ECF223AE3AFA@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB6750D4F10D0098B25ECF223AE3AFA@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0180.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::35) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|MN6PR11MB8169:EE_
X-MS-Office365-Filtering-Correlation-Id: f893f24f-6510-4037-dbe4-08dbe5b96ba5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h6NsE8ltRKBL7tapv5eQbN8TpGrSppYsZgZ0ekd6Q6JXlOSyS6R22mjaQF5HW8c2GXQx0iHDoXmUhtMOi7TnfnQDvdXfX/iwsc5bmU7iO4ZZ2yN+UN+jAwAHuYsYIIpHI14VBpVKvvo9muAHHkVgvO+SsLWaxVlxdfIbpBUlUMjcd+DF07/FiBIuSyluyC1aGraBdOHeqI4izUITvIZ0sH9/PZvRagfI0n8KQ4yhqALwU5Jm8wP+16hie8vyCdj98VXc5Dr+M0wRjKeyc3wVUzIb5TwM5ceJsAXmvm7zqYT7QpCj5ZZU8dMMlLOfElN2UNLmC7nNeY0D3JX0+lLcsaEcLujuNAS3QLWJUQeiIx4J6y7ajRrL8V1DAcMaOwaY7noYwWmV0GND7HwqW1gB4x25ddzXz54zJC9FfZIPLPV9+Uz68u4LW0xiWA1mnC/FCYbkAxsTn32SomHV7Uwz53pidxD2pwq3d4g3Fb3OrIy1xZxW4HLteS++NUbNN+HDCSnm4T1Y1xpf7s2vSbIRNu/X54KKT9s3Hb3iEIZEDZtjT6M+HK8v9jTyLt7EdSShRR/VPTpU6+Ac1QPXjKEaoJCmQ7e/cZMpb4QyFKzPr+35vGsmN9xuf6TApGWCJMwZ9RLMzb/ytOqb1KU9ywr4xw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(346002)(136003)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(31686004)(66556008)(66476007)(66946007)(110136005)(38100700002)(82960400001)(86362001)(36756003)(31696002)(6512007)(83380400001)(26005)(107886003)(6506007)(6666004)(2616005)(53546011)(55236004)(2906002)(478600001)(316002)(6486002)(8676002)(8936002)(5660300002)(4326008)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGUwTkM2K2lub3NFM2x6RDQ3aG5obHNyUCtrNmo2cmpMa2RsMFptaE5vbGdK?=
 =?utf-8?B?TWdMQmFyQ0ZMYXlmVEd1d1lwRlRta2ZBa0wzZE5DdlFDaVdpL3EvSnozSXBp?=
 =?utf-8?B?WEhWT21FTHhUa2t2RGI1aHNuSERLai9kWDFYVHRlYmdJb25YZlU1cjVOSkRH?=
 =?utf-8?B?SkIwSElwZ3VDcGpreWxsbzNyNnRrSHVBbHpMd0NMRC9mbE1SVm1iRHpVT01H?=
 =?utf-8?B?R0RVem8wNzlveTRkRkVxOElnSlN0UVRYdXFpSEpua1g5N3hPbjcvanc4Y1NM?=
 =?utf-8?B?eW14a1BWWTBubzlPYUpNRytUaG1Fdkd4T01oeXJybnZOZHFrRjJBQmo2dEw1?=
 =?utf-8?B?U0lOWWx2bFRKT3REaU82a1RpQ0F3dUwrRkNMOHMzaWN0TUtDbUpLUU8yMXFq?=
 =?utf-8?B?WVpJV2pBclNWVlBSM0tkYnpYQkJSTjhrakNUVmxUSFAwL3RVNTdqQ0pwVXdF?=
 =?utf-8?B?Mm1rcmJKaWNuaXI1bE9ERTNleWdla014U1k2MUwyMnBsQmZqWnNLNUtFbW5N?=
 =?utf-8?B?S2pTbW8yLytuaUdiY2trUnY3Si81aEE0T0dZcDZqeW9lRFdjaFJDV2ZjZFp4?=
 =?utf-8?B?SW5ycHlxRHQzMmNnbzNaVEFRTE9RdHJFZTJSZHd5N3BxSGJzcmUzNTE1L3Bp?=
 =?utf-8?B?SVd0V0t0MW1CbzNwVzdpRG5yemdITVo1RllYR09qMEdsaHM3K0ZLSlZGbWlq?=
 =?utf-8?B?WlVoS3ZLNjBVN3ArdG5qbTA4Z2NiUENVRll4aGdaSXVYYjE0dUxEYnZ4Ymhx?=
 =?utf-8?B?UWdWRVdvanFQcWRvRXFxT3lFaW9nN0hRcWJ5NzcxL3BNck45MkFnZXZ6cUwv?=
 =?utf-8?B?dWNESHZ3VEJpYzdKUGZSdWJWOVZudkxGVUdENWJYR2VGUWRiVFBPSlpuZ1Vt?=
 =?utf-8?B?bFVFSjNlODVoQUNRNzBrUVBQQmdSRlBKLzhxNFc0WmJQVXdsQXhlN1NWVlFC?=
 =?utf-8?B?QzVqemowK3lwd0lhZG81QzFrOFIyQWswVjIwQ3R1eHBvT3V5eUtKcVBHZWVq?=
 =?utf-8?B?OXZrditEd3gwY3RYLzZrNjhIRGp3eGVKbjBtRVYycGh1Zm1uNkp3akhNc21K?=
 =?utf-8?B?TGIxUXJVVGh6NExCQWU3K00wZVgwbGNXTGdrNzg4eXI2VGJ1clNzbXRQUHda?=
 =?utf-8?B?T2pLUnBZWE5zZGJCdi9MYk1RZWV4dEJKM1RPSzRmTUNVbWpoemxwL2c5Vmxx?=
 =?utf-8?B?ajZMdUtZa1VQREZUYkF4Y01SMDhRRDVwYUt6YUNWaHZmbXpxcnVKdVhNc2pY?=
 =?utf-8?B?QTE0QjFJWElEakxWRXhyaWVuZXQ2b2lweGJBY0NIVXQySlRkeFJ1MjA1dDEy?=
 =?utf-8?B?U3FqSG9PNU1PaFNmcGhmSTBUY2RZWUFrdVZTSlBQU0xUQmlJUy9mWmt3RHox?=
 =?utf-8?B?TEl1VzQwcHhkNEdXbHdMTmFpa0RGaTlSSWF1c2UxdXZBNlNWUnRPZUR1UTJu?=
 =?utf-8?B?bW40QVo5dDNhaDNrdjNlMyt4Q1NTMU9oREFGZk96UExlekFWUEFZd2tRd1Qz?=
 =?utf-8?B?a3hJOThaSFhjZ3VibnE2Z3ZmOEMvNmQ3WUlNYUVYTXkwOG9ZNDd6SWJYRzcy?=
 =?utf-8?B?WHlrVXEyc1kxTVFuWGFFLzd0dVRpVmd5THFZcHZheHd0TEVycml0QzU3NDlB?=
 =?utf-8?B?M2laeVVxZ2tETjRlakgxejdhZGp1YWRiWFdyZ3JvVGx6SVVPc1NWTHZQd2kw?=
 =?utf-8?B?OVVwV3NkVmFaQXNvck9TeU5XMnYvMTdpMU5ORE1KcENnUm0rMUpkTXN4YndY?=
 =?utf-8?B?d1daZWgvS2lOSTBNOFZ1VFJ3dDJraTdtTnp2dUgxb3Nuck5rSHlyNFZNMVNn?=
 =?utf-8?B?STkxSEZpZWtDS1NUUlcyWkRPbGFlb2lmd3pyOUlsR3hHOVhtWC9tU1FuVUhF?=
 =?utf-8?B?OXlsZ05CaVB6d0FqM3UzZDBDZkZvRlhIYUdCU2RUcHEyVXBzcjNZVHZLdUp1?=
 =?utf-8?B?QXFQRlZtRHFjWFk1NjdSNmtzczRXZ0pOKzNzVi9VTFU1ZysrcEZ5bFpsUTZo?=
 =?utf-8?B?QThVZ2wwczZuSGxjbUJ0REJxRVl6Ui9SNW1wdldJK29FczYvYk4zQ1pXSCtq?=
 =?utf-8?B?SWV2QWdZblZUV25JWmd3aXRoQm9UVi8vbG5ybVdaejVUd0c3cEJFVU9Jakxi?=
 =?utf-8?B?Y3JiUG5XL3ZHS1B2MHBoV2doNlZQa2d3ZXhYZHpjRVFqRWtLQ1BzY3UxQkFI?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f893f24f-6510-4037-dbe4-08dbe5b96ba5
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2023 09:01:14.4144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x85BdbRAf+lqv3/qghP/NF04d/fhc0tDxmMqPWNI7Cxn1Iq3CBOSwsfOFZJvIBVSU3SBCHt9RCyJgdPTmKNKSWy0lYzt3Vs8WiQjVr5VKZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8169
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Ignore max_requested_bpc
 if its too low for DSC
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/9/2023 12:19 PM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ankit
>> Nautiyal
>> Sent: Tuesday, November 7, 2023 9:48 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Ignore max_requested_bpc if its
>> too low for DSC
>>
>> At the moment, while choosing the input bpc for DSC, we take into account the
>> max_requested_bpc property. This creates a problem, if the
>> max_requested_bpc is lower than the minimum bpc required by source with
>> DSC.
>>
>> So consider max_requested_bpc if its within the limits that we can support with
>> DSC.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++----
>>   1 file changed, 18 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index abc718f1a878..ea4c42a5705e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1578,6 +1578,16 @@ u8 intel_dp_dsc_max_src_input_bpc(struct
>> drm_i915_private *i915)
>>   	return 12;
>>   }
>>
>> +static int
>> +intel_dp_dsc_limit_max_bpc(int max_requested_bpc, int src_dsc_max_bpc,
>> +int src_dsc_min_bpc) {
>> +	/* Consider max_requested_bpc only if src can support it with DSC */
>> +	if (max_requested_bpc >= src_dsc_min_bpc)
>> +		return min(src_dsc_max_bpc, max_requested_bpc);
>> +
>> +	return src_dsc_max_bpc;
>> +}
>> +
>>   int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
>>   				 u8 max_req_bpc)
>>   {
>> @@ -1591,7 +1601,8 @@ int intel_dp_dsc_compute_max_bpp(const struct
>> intel_connector *connector,
>>   	if (!dsc_max_bpc)
>>   		return dsc_max_bpc;
>>
>> -	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
>> +	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc,
>> dsc_max_bpc,
>> +
>> intel_dp_dsc_min_src_input_bpc(i915));
>>
>>   	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector-
>>> dp.dsc_dpcd,
>>   						       dsc_bpc);
>> @@ -1959,8 +1970,11 @@ bool is_dsc_pipe_bpp_sufficient(struct
>> drm_i915_private *i915,  {
>>   	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp,
>> dsc_min_pipe_bpp;
>>
>> -	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915),
>> conn_state->max_requested_bpc);
>>   	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>> +	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
> Seems like this change could have been a part of the previous patch.

Hi Suraj,

Previous patch was only using helpers to get src_min_max dsc bpc for dp 
mst case.

Regards,

Ankit


>
> Regards,
> Suraj Kandpal
>> +
>> +	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(conn_state-
>>> max_requested_bpc,
>> +						 dsc_max_bpc, dsc_min_bpc);
>>
>>   	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>>   	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>> @@ -2020,14 +2034,14 @@ static int intel_dp_dsc_compute_pipe_bpp(struct
>> intel_dp *intel_dp,
>>   		}
>>   	}
>>
>> +	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>>   	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
>>   	if (!dsc_max_bpc)
>>   		return -EINVAL;
>>
>> -	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
>> +	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc,
>> dsc_max_bpc,
>> +dsc_min_bpc);
>>   	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>>
>> -	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>>   	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>>
>>   	/*
>> --
>> 2.40.1
