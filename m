Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 773DA69AD2F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 14:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6CF510F00E;
	Fri, 17 Feb 2023 13:53:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 359D910F00E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 13:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676642004; x=1708178004;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c8/3hNjAMCy+w2QkSnDM+APUnM1qzH33P+Xaq4O+ViY=;
 b=faWpia7CKeKftIdiqNfGAFVzLSt1K/ZkDBtv7S+VtbdJHpO4ZGnt/j2O
 oY+MEalBo+X1biByUCqHSSQkOP2b/o210o51n2sAA8olmHXphQ8EFRf7z
 rcdy8xWtewCqjp6OXY54OBRBOOWspt/TIqvr9qemjq1vSLRiLvFbMUtJn
 tDsTViArEgaeDu9TLx+9KRFn5iJYx9XlSf2kc+DwdTp62fqMn8cinZrhO
 MXhhKan6SImaMYccrB0jLcJNTcqNwv6OM4t4kI3V/FfXlFROECFD0wEnw
 AROlqrAbooj+8W6vY3ZFQ3g5ou1y7w6Q2nnNPETo74aRYrfu57PO+pks5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="396664572"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="396664572"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 05:53:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="813380466"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="813380466"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 17 Feb 2023 05:53:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 05:53:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 17 Feb 2023 05:53:22 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 17 Feb 2023 05:53:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DuDytPxfOfYs3+qDVf4tVNB/h5IwudIzdeYh1ucVVLzkvWc5lkqWXoSraHm7lVKV10wecDr5Kk/18Sncr1AmSeVTlpdExz2p8NNWKSlOSr2EEXWPzFVqf2mmxAklALKrzFhCLPtTAwWb2KXRtzYVuIE+KM4ZlBIpjYvyWbEKoP10p7udPYw2zLlGPvk3JZq81aJAl7KzMunoJw0b+s/ntNmyuur6fKFNgBvBTwbLilC7WIuGw7azkjR0FFfpJPsarZ+NB2kxQP4uRrddHxSBdXRi9hJ4u7FcqZsbTzY1xboOhFr0fx+t4u2zoUCyQOtECCZdLQuqDO/I9PSUz61rbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aZRQaeW3MLab3J5qp4cS1DRujToS8TFh8uDAGjuqwoQ=;
 b=B8cNvhfFOxL44AeB5a74uLTLRG3Y5hYp6wL6gQm+BJO3RWw8GvziOmjiPnx3JNZrIe3MvMGGCmgPA2olbhMCeWLHapNKcfaGLWPf+S62IWGCeXLiVh++YTCUt20RaUnXSAoGoCBbhV9k8jzvtZa4hZCTQaGrrkel35f+ons76uws/fDFsMCPH5DIN9Gq9jNCFSxbAS5bFV1IbMeEviPM2Xr8hlz/IX3YOIo0Ks6wVF4LCJPOqfz1sVUu0PDFTm1LeJWimUSYJUjIfj4KwVzCPuHP/qL7SQ7DmmQUtQcFZftBimz88LjsRDv2x1cdsfa+4KD/gIqfb68bXiTF0rD5Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN6PR11MB8195.namprd11.prod.outlook.com (2603:10b6:208:47f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.12; Fri, 17 Feb
 2023 13:53:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 13:53:15 +0000
Message-ID: <b820df53-7533-6f91-590c-885d10d3aa8e@intel.com>
Date: Fri, 17 Feb 2023 19:23:03 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
 <20230216231312.32664-3-ville.syrjala@linux.intel.com>
 <02f8d9ad-81bf-b176-4565-015dec53442e@intel.com> <Y+9s8+EuHTk5ZI0e@intel.com>
 <5fc93ec8-a51f-c28b-848d-825bed4d0b94@intel.com> <Y+99Uc6KRznizZjA@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y+99Uc6KRznizZjA@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0168.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN6PR11MB8195:EE_
X-MS-Office365-Filtering-Correlation-Id: e8eefb2b-8c67-4dae-e1bc-08db10ee5104
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nYfXxwYpEWiPXsS6pGc1UNPxtcTCRgdzLxXrizdzDHLVx1UCTTrMMNJ0Gq4LoeFu/PEDAyIhuBB/ieNfCTaryVS+pmn3/tRDJQclR2kjftaTxtHVWMGGX+sDqY0My04yFMyYuyITisouxgf9Emmhp8i35hiGAjvp9/5MXVbphfVNH5bMmPizmSDxIOfxy+rUhLW96/SPFMxFvdK0wermiIrzTW4b4vqWAN+zGcaN4z8VQec3OzI8r0j1DnpedgaGTHdLIEcJyfUjarlu/1+Jttw5VPAXzbuq8fjU8Yq2FQBs+OiMnPLOXgMHe2APQHTsrmC4LiijnECiv8OkHYfSUmR6vih5r903p1akJTgSNaeQeBQdoXXpoYXoZPrNIt7+tcV+ek+NdnTPFJIjlWlSWaUvlHKYy4gA9xkejxHtJTY7X0EQMrvF+OKHSlaMh72WN4oK9ULOt/jbgWKOgP1smWTNjGImPms1KyDtw12mw0DEQhlXrejNccm4R+biV/sd1/HogwsWRNvdGoZzZr94Swet8iQLwXZfrBlQc1tHDKf8cxrOVOQtk1A3Z+GJjuvzVaWMFQu3WWHPI+X8u6ngVe7CkhzAGlf0CQKfWRBx3whzQQeRgcABwmQjKvCcF6EbrNJXrdhvGeqv74B24GGRiPN1ZRO8KkXGWp8nsxn3ILgtwCByg0yg5YY2cV09gM6FqPAQJ5RpcJUKHXgKRjPe7RFuhS6uI8qsHOM4Ts2phRw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(376002)(346002)(39860400002)(366004)(451199018)(5660300002)(6486002)(86362001)(2906002)(31696002)(6512007)(26005)(6666004)(36756003)(55236004)(186003)(478600001)(6506007)(53546011)(2616005)(4326008)(6916009)(8676002)(82960400001)(41300700001)(66476007)(31686004)(83380400001)(66556008)(38100700002)(66946007)(8936002)(316002)(66574015)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ektoL21aQnVhblozQXJWUm1lckI2WXIxMnpoZzNPeFZscXdHTHFUU29SS0xx?=
 =?utf-8?B?a3RPNEljRkpSSFhkUU9WdzI5eEE2clpRY3dCYXEvcndBQWJiaTZRVlpNQU5N?=
 =?utf-8?B?RjdlY0xrRlFQOURIdm5RckQySWI5OVhKNFlxMEQxaStjbi9xclZ5azR6bDhI?=
 =?utf-8?B?VUpnZjFVVjZBbXJSc0pPWmtkV2dGRk1Pbk9TT0d1WlJEcS9DMFc1NnRuNHZp?=
 =?utf-8?B?WktKNy9oYU50eGU2RnZ0bFBlcXBlQ2RBekozbU9UZzU3dVBTWk5YWlIzczdq?=
 =?utf-8?B?aXVTdkhTRUlLLzJzSWNvbElCemlPVUdMVmtDZVRNSWs2TVVMMHlUdFJvUWFY?=
 =?utf-8?B?NFRGa0RnOHpFcTBOTlgzM1JYZC9Eb0ZWOUYwTlNyTHNQRG1rQ09pbzY1TmtK?=
 =?utf-8?B?THVZTlRWOFUySUNhWWlxajdtdnYvU1JLS0tGL1JHYWV6N0lCYzVyeE1ITjBP?=
 =?utf-8?B?NVR4MCtJcU9WeDA3a0lsTnFyeGZENWh2T2wraVpvZFV0L1A0QWJ4UFJGb0Vo?=
 =?utf-8?B?aUhOcHJkSjRmdUI1Um9mUWI5aS9Vc1BoZVRMcEpxeFV1ZjdkMmZmalFrcWdH?=
 =?utf-8?B?dDhaR0h5R1pLYUxHUXMvZG1QM3NtV0VlTG8raTd6NmFOSm1rb0paZ3dOS2hL?=
 =?utf-8?B?NDJWSndMNWhTVGVYK2Y3U2JjTVBNZXh5VFEyekFCaXhuMThwYzhraEpFTG5q?=
 =?utf-8?B?eWpFb2F4WkpiM0YwUHFINVp6WC9LaFBNU01IQlIvZDVYSDBrWCtNTlYxT2Vl?=
 =?utf-8?B?RGxLdzNXRVY5R0dueFY2bzRqK1o3Z3V2TjRSUldWNVByc3ZKM1lUMTZxYm9G?=
 =?utf-8?B?UHVhYlFwdnlNK01yb2xTTlRtUUNSYU1qR3JwRmcrOTNLQzFPOTgvMkNXWEQv?=
 =?utf-8?B?d25RRnBoZy9nczdNWVJrZFlwYlZON2o5YVFsZnc4TnJtcnRPTi94UjJpMnp2?=
 =?utf-8?B?YXF2ODEyZ2xTQ2RKMkhVSHFSdWhLYlBkbWpwUlVURk8yeStkMUsxVVNONGtj?=
 =?utf-8?B?cWV2YnY4WnVUaDFUV2ZFUmxmblpNc2J1anBWcmJCRlNZUHFZNWVlZy9Tdk1W?=
 =?utf-8?B?T0RCeThYNHlhSWFGQjBlaXZiSExMbEJ0SjJRallXWWdlcWdQVDBoWnZsdUhE?=
 =?utf-8?B?MjBWbWlCVlZ1T3BBV1BOT1N2cC80WDFGcmFKUnNoZEJtU256R284VWlWY3gx?=
 =?utf-8?B?cjRPajFJVmNtNzZKUmgyRkhweHZETlYray9tNmtHNUtncnJCclhyNmkrT1do?=
 =?utf-8?B?M0JBL1MyTHFJSHUxTUJNWkJmZVVGV2swdHlXbXF5VnJiQi82NUZvd0FnenFy?=
 =?utf-8?B?RUE4NHg0anE4NzFzeGxycy9Qem51WkEvZTRpMDUxSUpRUWkvbzd0NEZ4L20y?=
 =?utf-8?B?VWwxZ3J6TlJvNlVSc2pndkRUdDB4bXBvWHZDZFFlM2UxQmdxcTYvNTU5UDVO?=
 =?utf-8?B?M3FBdHJpS0ZBcmxzZStoNmV5VmtpeGRJN213MEVUV2lMVWlXWklhN3E2NmdP?=
 =?utf-8?B?T0U1QktrTktUVHlrZmRCdjZ0SXBYazFBVkEvVjdWQ0JUR0lKRnNzaGxMSEp1?=
 =?utf-8?B?ZUt1NDJNdzJnTGpFUVNhM2EwQkpsekM5Z3pzRUZSUXdFeVJNNUNQSkxueDFm?=
 =?utf-8?B?WUNFR3FDOTlwS3RZRlFTbndtN3M5ckNBT2ttRnlqVzI2T21lSFRhZFZBbkZG?=
 =?utf-8?B?NGlMeDd3aG13WGdualNmbCsvUHhrcG1hU3hwOVpCTnNzQlhETGF3eUJnZzFv?=
 =?utf-8?B?dnlZdXJVZWJ3ZnhmRG1DL21PK204dVNwWU1uWHZrZjlKd3ZkUHA5OXNBZHow?=
 =?utf-8?B?bVFjdHh2U3FtU1BsN0g2ZThmWXNzZm4xVTJtV0tIZDU5UHlKWnpKMHRnb0tv?=
 =?utf-8?B?SHZMRVhhOFY1d2lQN2UvUi94SDZVS1U2NnBtdElNV2F6dXd1TXhMcU9mVk8r?=
 =?utf-8?B?QnBLQU9JYkFhbklQVnZVZmtCQ0p3L3lJMFZQSlBqWGFlUGZhL0w5TnJTb1FT?=
 =?utf-8?B?Tmg3ZGRYVklNSlFNNTVlN25rbWRkYlpTWUhxNldPcUN5Q3ViNS9rQ08rT1Mx?=
 =?utf-8?B?UnMvU3BDRjRsamNkeDcybG4vWGxpU1dndy8yWUlMMEtWengzV3JFSC8vRWhh?=
 =?utf-8?B?QmZlYkdOc2FWZXZWUUJpc094MTlZUUhKVTk1TmRwazRRYXF4eGprMldyU3pH?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8eefb2b-8c67-4dae-e1bc-08db10ee5104
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 13:53:15.4341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VzCQQciCtUyM9zr8bvMVB+MTO0QZW1UjAKWKVlyObLuDzXZhgWrN/37Yz0UY4wmqsyYBcZh7kCuLS69SNwd2p1vrYmZ1WAEFZxNOWzP5k74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8195
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Fix platform default aux ch
 for skl
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


On 2/17/2023 6:42 PM, Ville Syrjälä wrote:
> On Fri, Feb 17, 2023 at 06:35:51PM +0530, Nautiyal, Ankit K wrote:
>> On 2/17/2023 5:32 PM, Ville Syrjälä wrote:
>>> On Fri, Feb 17, 2023 at 03:15:59PM +0530, Nautiyal, Ankit K wrote:
>>>> On 2/17/2023 4:43 AM, Ville Syrjala wrote:
>>>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>>>
>>>>> SKL/derivatives have DDI E but no AUX E, so we need to pick
>>>>> another aux ch as the platform default. DDI E is more or less
>>>>> the other half of DDI A, so we pick AUX A.
>>>>>
>>>>> In all other cases we should have a corresponding aux ch for
>>>>> each DDI.
>>>>>
>>>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 ++++++++++++--
>>>>>     1 file changed, 12 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>>>>> index 57eb3ff187fa..96967e21c94c 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>>>>> @@ -739,10 +739,20 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>>>>>     	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
>>>>>     }
>>>>>     
>>>>> +static enum aux_ch default_aux_ch(struct intel_encoder *encoder)
>>>>> +{
>>>>> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>>>> +
>>>>> +	/* SKL has DDI E but no AUX E */
>>>>> +	if (DISPLAY_VER(i915) == 9 && encoder->port == PORT_E)
>>>>> +		return AUX_CH_A;
>>>>> +
>>>> I guess we might need to fix intel_dp_aux_init also. Wont we have
>>>> dig_port->aux_ch and intel_dp->aux_ch pointing to different things?
>>> There is no intel_dp->aux_ch.
>>>
>>>> For example for SKL and DDI E, intel_dp->aux.name will be derived from
>>>> dig_port->aux_ch i.e. AUX_CH_A but intel_dp->aux_ctl/data reg will still
>>>> point to DP_AUX_CH_CTL/DATA_E.
>>>>
>>>> Am I missing something?
>>> Everything is based on dig_port->aux_ch.
>> Yeah my bad. I think I misread and got confused. We indeed are using
>> dig_port->aux_ch, for getting aux_ctl/data reg.
>>
>> I couldnt get the exact bspec mention for SKL not having AUX E, but SKL
>> Display connection Bspec:4217 throws some light, if I am not fully off.
>>
>> Is this applicable to Canonlake too  (Bspec:14004) from Display
>> connection it does seem to have DDI E but no DP_AUX E?
> There is no Cannonlake.

Hmm. I see its only applicable to Gen 9 then.

Patch look good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit

