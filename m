Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D12E7738B7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 09:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE03E10E3AA;
	Tue,  8 Aug 2023 07:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475B110E3AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 07:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691480916; x=1723016916;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ANU4xOfgB1VAAaiY2Rvegsc/dpwzokcNbzDjD1149lg=;
 b=JXkR7thiUXKrlxTnRZGG8Gn7aBKB1N2FraVoPSnk1euurfYJJ8zQowxX
 xEEofaxIFU/zpTVuojxYtsh8uYMGsW1f5bW//e+v25uXYJ6bZuk0OGqK9
 s38HW58W2SQuiG8CdetAcZPV1Hxx8wFGQEx4DZs4K67GvKQGyZ7McRFNS
 u6HY1et+S5DlOq+8u/PvwoWP6oZ+iV0De+WfsDmP+SQkssKiwDHyomDYJ
 qiL0rNPcQZ9vDna2QosNWiBvPRArgH8R7Vzp4d0JnKZEQxSGHRNR46rr1
 Ih7h9/FJt4VSi4WXod1gCl6YGmx/SHqG2K0j0J9EXYbUDpomH7magTdCT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="437078385"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="437078385"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 00:48:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="796622977"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="796622977"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 08 Aug 2023 00:48:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 00:48:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 00:48:35 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 00:48:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GdVKgPfKMAlXi/6Kfgye4nwHsuTY/urdNY9MOrV/J0p5ht8UrrvUohgAGNP+FrWQUzAV7nwdmC64y1v+4lbAQsvtIYQzk4OxVZDKyrYwiriHg0ODftF+muWDJzPb7UxzIqKx2pbv98F/4nmuEjCRQ3ZOTKNTe3FlzSKzCW32smqKeOYJAftZY6EbHh+l9R+FaoVWxfM6Us/ZOtjZo6vNVo2+5r5e9XlyC0ru9jEsnVBy+HAXFDNZPJzWh0CaX4f24/T2uZLie5JoKXAsF6gTxXeglFSnUKF6jyJr/7VQTKq8dGIEjDge8ClF4cDQrEIRjRubjNTYMx2JanvsCu/qhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kf1c28FrU58nzcoEgmAxr/BlCergc85VTCMJhwBCFCk=;
 b=lT+wK2l5qNrBsde5TW+XIYBGfiXodIzHMqZ/1Tjce3tePae8Ysnv+7apdiy9fvG1uNT2Bfu02aCvMOndf3Dtxo3RNTazzIi8vPgCtNXyPCdrlt1r7M+38lYt9Omcanr3ii02WHarz7ob1I5K3SRwRQeiCzSVRs0E7ay1y3uc3UCQPOzJdiDq0cqpWtX4+aqlukFKHYC5aUjfactygnOY/tzf0euj+dZWV9oTdq4lkS7Iqqzj+Xzsajpjrypf3m6syOkkum5gP8iVACWmexF55qVajnos0WJhxE3a5xePmZnThYedNLOqmxt8eEg87SQAFbj5zUp9eU9zCOO952t+iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB7504.namprd11.prod.outlook.com (2603:10b6:a03:4c5::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Tue, 8 Aug
 2023 07:48:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 07:48:32 +0000
Message-ID: <878b5d37-8337-1a1d-eb1d-8b5b6b718ae3@intel.com>
Date: Tue, 8 Aug 2023 13:18:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230803130337.3784597-1-suraj.kandpal@intel.com>
 <20230803130337.3784597-5-suraj.kandpal@intel.com>
 <302c7bf8-13bb-5721-7c8e-5910f8d28fbe@intel.com>
 <SN7PR11MB67506E29C696875F75261B49E30CA@SN7PR11MB6750.namprd11.prod.outlook.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB67506E29C696875F75261B49E30CA@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0161.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB7504:EE_
X-MS-Office365-Filtering-Correlation-Id: ae3bd0ff-97c5-4074-47dd-08db97e3dcd1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gkwm8xhHESEwqluTPm3SdvNeKmRGuAWU6pmC6MdGg6DFDUJD3rng9c5hTRxYLTZkRr4bBCtN8ax38AXlXpOMNceG1A/iehmmkccxqyyJQ54tJqPJTQpnfBMD/UUpNG0ewP/AGup6dsGJmrBAaJ2EPnfk4NOvLVJXAiu6aNoiQHPV94NFjiN+26uXDMdW2bImdce/lZsAS8BO5BGn5/fGTu3FiOF1MSHvVc09dJ0SoeUW2k217MOYJYVgr58w2opE0m2MzbF4vSmnDR+l3zFA9zRHbsqsiYnAeCN2yH9g8PkvdhPkDB0ISyfVOTYuD7Eej+P7SbEb+ixQr6n7vP20BJgaPE9rzH9di+JnXLYaJSTgfINAnsAwDBkbjfp3w4Tw3mT3tv+ka7tYq8Vc306ojmBFHOfFKzLlu/L8xss8OeFIIsgDf7qjgcXTqOQYJo43SLYXdhj7ZE+fFk5buBwA382v4J+6ayGWbvknARMneD9tOllI+JJiThTOIOfnAyoi6hDm0LGmC23dyIhy2hdF34ANkONYz28mS3KWylJQj1ERWDUq3Hsbwa0bi0hxkGaj+P1NgLMxysSljuBwszH+ZYAvoVdnU+pVKrcPxX8yMybvuqv0+eAhLiOM8NhibIRPNW5Q84Fc8rTh8ZzO7TMQTSdNP0TSPbAZkBnsBXbgcGy0aPVW92qFRwzbWEl889HETPW7R8YHMptExYqXhSuoEQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(39860400002)(376002)(136003)(1800799003)(90011799007)(186006)(90021799007)(451199021)(83380400001)(31686004)(2616005)(110136005)(2906002)(316002)(30864003)(5660300002)(8936002)(8676002)(66946007)(66556008)(66476007)(38100700002)(86362001)(6512007)(31696002)(478600001)(6486002)(82960400001)(6666004)(41300700001)(6506007)(36756003)(26005)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3JFNW5Ha3ptdUg4RFBTa1NnVDc0ZEZMK2pVKzV0Q3MyZ0xWam1QMnVJZ3Rh?=
 =?utf-8?B?eVZlbGpTb2ZpRUF2N1VSZFhWaVdWcTZibVUrbFJCMm5mMHNHNFRtOFExZ21w?=
 =?utf-8?B?UTZWTkhOK1BmbXlmcmFmVUE0eUI3bTFBRG1jekhzOFVVU2FNM2RRRURCNmpi?=
 =?utf-8?B?WWw5Rk85WnRYc1F2V0FRblByYXpjMEUxQjBYYVBKOUJjSUc3ZnJZOTBsQmpT?=
 =?utf-8?B?aUNMTG51MEtwazA1RnJwYTB6aFFxaUhhY290bWJnSjVuV0puQldtYzVnN3dH?=
 =?utf-8?B?QUw5MkVyNVl6RVR3MTdvN1NoWFR3azY3eFZJdk9VQzUzdE5hU1F3YVNYbFE3?=
 =?utf-8?B?NUdnZ0I2NmlxclpUbDdPV3gyRFRNa2ZLVnp2SnFvcjFxN2F3WDNIbWk2L1B0?=
 =?utf-8?B?Si9oNkNMVmhvdGtiOUhmNkhDc1JlNWQ5RGVjSGF6ejBOMzhUV05oc3o3c0dF?=
 =?utf-8?B?eFVXbE4xNldvTm9MZHBLRTVGYytab1hmSm5hc1RsTUg5MXVLZmwvS08vRzky?=
 =?utf-8?B?S1NpdDZyS0grdDNhWjJ0SHVDNU5xb1liQzBhVWRSSWg1UExqYmNZbllzaDFw?=
 =?utf-8?B?UVFsb3JqN1BxZmZzUWlGVGV6V1VnanRRT1Z1d0lGQkNQWWt5MnVLNSswZTBt?=
 =?utf-8?B?eWJaTDhwZ09UbXVuSWRuM0FXUXhFdkRGZiszSW82bzIrSDFDVzJCNFNtNHRG?=
 =?utf-8?B?M3NjK2FwMDRQVmp4R0E0VnMvZ1NFR3lNaDNlb0R5R1p5K0V0bEZCaE9ZQ3Zs?=
 =?utf-8?B?enY4MTFmZnltcG9CclYrcXJmWkU3cU1icGJVZUUwZm16RlJQbi9mUXFHNlBw?=
 =?utf-8?B?NkN4NFpEM28zNDk3aHJaRElVYk5vMk5rbXBKdkVremVHS3pJZmhQM0pJU1RS?=
 =?utf-8?B?K29oVUhHZDZhS24vQ1dhZUN4dGpzS0VYcTNwMi9sTVJWMFVwNmRjNitaSUl0?=
 =?utf-8?B?VUl1ZXVZb2hTSVpWbVRmdWsvRXduTFBIbnZpR1Brb2JSeWwwMytyVkJockNa?=
 =?utf-8?B?WnA0QWJ4d2pPYlRjSHlGV2gxNEh1c0lQV1dxMm5MOGF1MWRGNWZmNzRscjkw?=
 =?utf-8?B?a29sV0xlU0lSOUxQNnhRN3pZY0U5czhwMTdjeE9rbXNqQ1ZSa3Q4M2pVZFBM?=
 =?utf-8?B?ZkNTZkwxQjNqUGYwYVFta1FmQUk5cFdDT2QrcHUyVzZtYkFzRUJ5VWtobjI3?=
 =?utf-8?B?RU5rc3oraEdycXEzZlVDK2lyT0RrNnNsNnIyc0NTeXYwZ1JQeCt3TEVMQ3pJ?=
 =?utf-8?B?NGRYYnNFZTRPLzNHamNzMGc1bjkrVEp0UEQrUlpkaU01bk84TEtBZHZrdUdK?=
 =?utf-8?B?MWVMTVJDY0tLVkdvcFNONmEzZncyUE94V1BySFFPK3o1M1JLRUpPWTU3NGdn?=
 =?utf-8?B?NFlVZ24yTnducVNRaHZzNjZ1bHNNQzN0N3dNMEcwMjdHMmQ2YlFWNXZ2Z3ps?=
 =?utf-8?B?d2p1dXo5QU5oQ2VrdENBSnVuNWo0UmN5cDFxei91NzU2UllPVW42Um9LcmlK?=
 =?utf-8?B?WUp1cnFYQVBYZkpxeFNDdlpOVThTVjBJZkJxQkY3MU1ScjBOMGpOdEQyTUMr?=
 =?utf-8?B?ZmhPYWhQNnpyQW5zdnJqajlONElnWDhXWmZMSFVteHFuL2lGNDJYb3VKT3pC?=
 =?utf-8?B?ZXR2c0ZmK1NOL1c3SHZkQzgyem8xZzRNRWcvOUZ2U1R2Y05tWnNVM3F0MXN3?=
 =?utf-8?B?RHl0V25qTGxtMXozZGFlYzFKN09qNmFjWmt4VFVsVzFDZVlvcE02cTZqOU5P?=
 =?utf-8?B?YUJVT3NvOWVjS2huNVl2eTA3eVRLNTFQa1RXYmdLVWIxNTRyTXgwZ0FTVUUv?=
 =?utf-8?B?N2xZT3VBMHBrelRFcmJHRWxRcy9RdjhiUzRvR01kMnVNdkQ0dUNOMkZORWIw?=
 =?utf-8?B?NUFSK28zRlhFakdZUmtuN1MwekJ3TU9Sd0RNWlRxU0Y2enNSTVJ5THZ6dTlF?=
 =?utf-8?B?WnBhVFhsMHFHTGtUN3h6bXZ2U3RBdFh6ZlFmNkdLT2piaHhhZjNTT1JwRS9t?=
 =?utf-8?B?eGk3c29VMXN2Y216cnNIR1JHeWRnZEFQQXZmeE1jNnptbngrVUZ6d0ZOMFZB?=
 =?utf-8?B?MWRuRktRREJCbElOc0F0NHUrL1o2WTEwRWVIVXhjRmh4bUh5dUV5bWF2VFda?=
 =?utf-8?B?UHYveUhGZ1ZEZUFtUVV2RE1nNzc5QlBuTlIzY1RYMlQwU2dZTnNDVUF6cFZh?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae3bd0ff-97c5-4074-47dd-08db97e3dcd1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 07:48:32.4946 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MgKBcCaV4MtpljIAI18znwbhG31BKC4Af4mmumx3+rMoVfPwM7cIV5p6+PEMs5/bXzS5vIiE86YRbavGn3J3uosleVVxDekQlw+uKoc76HU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7504
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 4/8] drm/i915/vdsc: Add function to read
 any PPS register
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


On 8/7/2023 7:33 PM, Kandpal, Suraj wrote:
>>
>> On 8/3/2023 6:33 PM, Suraj Kandpal wrote:
>>> Add function to read any PPS register based on the intel_dsc_pps enum
>>> provided. Add a function which will call the new pps read function and
>>> place it in crtc state. Only PPS0 and
>>> PPS1 are readout the rest of the registers will be read in upcoming
>>> patches.
>>>
>>> --v2
>>> -Changes in read function as PPS enum is removed -Initialize pps_val
>>> as 0 in pps_read func itself [Jani] -Create a function that gets the
>>> required register and call that in the common read function [Jani]
>>> -Move the drm_WARN_ON one abstraction layer above [Jani]
>>>
>>> --v3
>>> -Send both reg values regardless of dsc engine no [Jani] -Don't use
>>> num_vdsc_instances stick to dsc_split field [Ankit]
>>>
>>> --v4
>>> -Manipulate the reg values instead of creating MACRO to change name of
>>> pps [Ankit]
>>>
>>> --v5
>>> -Read dsc reg values using array rather than individual variables
>>> [Ankit] -Loop the verification of all dsc engine reads to future proof
>>> it [Ankit] -Keep the fix me comment in this patch and remove it in
>>> later one where we add other readouts [Ankit] -Add switch statement
>>> that fills in the required registers based on no of vdsc engines per
>>> pipe.
>>>
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_vdsc.c     | 128 +++++++++++++-----
>>>    .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
>>>    2 files changed, 104 insertions(+), 36 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> index cd7b7b00be44..f283580c2860 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> @@ -365,6 +365,29 @@ int intel_dsc_get_num_vdsc_instances(const
>> struct intel_crtc_state *crtc_state)
>>>    	return num_vdsc_instances;
>>>    }
>>>
>>> +static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int
>> pps,
>>> +				  i915_reg_t *dsc_reg)
>>> +{
>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +	enum pipe pipe = crtc->pipe;
>>> +	bool pipe_dsc;
>>> +	int no_vdsc_ins_per_pipe =
>>> +intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
>> lets pass dsc_reg count explicitly along with the address of the dsc_reg.
>>
>> Though we are setting the count as per vdsc instances per pipe, but here
>> what we are concerned with filling the dsc_regs
>>
>> and for that semantics, passing dsc_reg count makes more sense to me.
>>
>>> +
>>> +	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
>>> +
>>> +	switch (no_vdsc_ins_per_pipe) {
>>> +	case 2:
>>> +		dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS_REG(pipe, pps) :
>> DSCC_PPS_REG(pps);
>>> +		fallthrough;
>>> +	case 1:
>>> +		dsc_reg[0] = pipe_dsc ? ICL_DSC0_PPS_REG(pipe, pps) :
>> DSCA_PPS_REG(pps);
>>> +		break;
>>> +	default:
>>> +		MISSING_CASE(no_vdsc_ins_per_pipe);
>>> +	}
>>> +}
>>> +
>>>    static void intel_dsc_pps_configure(const struct intel_crtc_state
>> *crtc_state)
>>>    {
>>>    	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> @@ -994,17 +1017,81 @@ void intel_dsc_disable(const struct
>> intel_crtc_state *old_crtc_state)
>>>    	}
>>>    }
>>>
>>> +static int intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
>>> +				  int pps, u32 *pps_val)
>>> +{
>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>> +	const int no_vdsc_instances_per_pipe =
>> intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
>>> +	i915_reg_t *dsc_reg;
>>> +	u32 *pps_temp;
>>> +	int i;
>>> +
>>> +	dsc_reg = kcalloc(no_vdsc_instances_per_pipe, sizeof(dsc_reg),
>> GFP_KERNEL);
>>> +	if (!dsc_reg)
>>> +		return -ENOMEM;
>>> +
>>> +	pps_temp = kcalloc(no_vdsc_instances_per_pipe, sizeof(pps_temp),
>> GFP_KERNEL);
>>> +	if (!pps_temp) {
>>> +		kfree(dsc_reg);
>>> +		return -ENOMEM;
>>> +	}
>>> +
>>> +	*pps_val = 0;
>>> +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg);
>>> +	*pps_val = intel_de_read(i915, dsc_reg[0]);
>>> +	if (no_vdsc_instances_per_pipe > 1) {
>>> +		for (i = 0; i < no_vdsc_instances_per_pipe - 1; i++) {
>>> +			pps_temp[i] = intel_de_read(i915, dsc_reg[i]);
>>> +			pps_temp[i + 1] = intel_de_read(i915, dsc_reg[i + 1]);
>>> +			if (pps_temp[i] != pps_temp[i + 1])
>>> +				return 1;
>> This will miss to free dsc_reg, pps_temp.
>>
> True will fix that
>
>>> +		}
>>> +	}
>>> +
>>> +	kfree(dsc_reg);
>>> +	kfree(pps_temp);
>>> +	return 0;
>>> +}
>>> +
>>> +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state
>> *crtc_state,
>>> +					      int pps, u32 *pps_val)
>>> +{
>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>> +	int ret;
>>> +
>>> +	ret = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
>>> +	drm_WARN_ON(&i915->drm, ret);
>>> +}
>>> +
>>> +static void intel_dsc_get_pps_config(struct intel_crtc_state
>>> +*crtc_state) {
>>> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>>> +	u32 pps_temp1, pps_temp2;
>>> +
>>> +	/* FIXME: add more state readout as needed */
>>> +
>>> +	/* Readout PPS_0 and PPS_1 registers */
>>> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
>>> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
>> I think lets pass the num of vdsc instances per pipe from here and propagate
>> to intel_dsc_read_pps_reg.
> Wouldn’t it make more sense to have num of vdsc instances in intel_dsc_read_pps_reg
> and then propagate it to intel_dsc_get_pps_reg  this would increase the argument of only
> intel_dsc_get_pps_reg as opposed to giving an extra argument to intel_dsc_get_pps_reg,
> intel_dsc_read_pps_reg and intel_dsc_read_and_verify_pps_reg.
> Also above you said " Though we are setting the count as per vdsc instances per pipe, but here
> what we are concerned with filling the dsc_regs and for that semantics, passing dsc_reg count
> makes more sense to me."
> And since the dsc registers are getting created inside intel_dsc_reg_read it make more sense to propagate
> Num of vdsc instances from there

Hmm, alright, it does get used intel_dsc_reg_read, we already have 
crtc_state there, so lets compute it there.

Regards,

Ankit

> Regards,
> Suraj Kandpal
>
>> Similar thing to be done in write case in next patch, where dsc_configure_pps
>> computes vdsc instances per pipe and it propagates to
>> intel_dsc_write_pps_reg.
>>
>> Both of which then create a dsc_reg array and call intel_dsc_get_pps_reg.
>>
>>
>> Regards,
>>
>> Ankit
>>
>>> +
>>> +	vdsc_cfg->bits_per_pixel = pps_temp2;
>>> +
>>> +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
>>> +		vdsc_cfg->bits_per_pixel >>= 1;
>>> +
>>> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4; }
>>> +
>>>    void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>>>    {
>>>    	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>    	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>>>    	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> -	enum pipe pipe = crtc->pipe;
>>>    	enum intel_display_power_domain power_domain;
>>>    	intel_wakeref_t wakeref;
>>> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
>>> -	int no_vdsc_instances_per_pipe;
>>> +	u32 dss_ctl1, dss_ctl2;
>>>
>>>    	if (!intel_dsc_source_support(crtc_state))
>>>    		return;
>>> @@ -1025,38 +1112,7 @@ void intel_dsc_get_config(struct intel_crtc_state
>> *crtc_state)
>>>    	crtc_state->dsc.dsc_split = (dss_ctl2 &
>> RIGHT_BRANCH_VDSC_ENABLE) &&
>>>    		(dss_ctl1 & JOINER_ENABLE);
>>>
>>> -	/* FIXME: add more state readout as needed */
>>> -
>>> -	no_vdsc_instances_per_pipe =
>> intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
>>> -
>>> -	/* PPS0 & PPS1 */
>>> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>>> -		pps1 = intel_de_read(dev_priv,
>> DSCA_PICTURE_PARAMETER_SET_1);
>>> -		if (no_vdsc_instances_per_pipe > 1) {
>>> -			pps_temp1 = intel_de_read(dev_priv,
>> DSCC_PICTURE_PARAMETER_SET_1);
>>> -			drm_WARN_ON(&dev_priv->drm, pps1 !=
>> pps_temp1);
>>> -		}
>>> -	} else {
>>> -		pps0 = intel_de_read(dev_priv,
>>> -
>> ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
>>> -		pps1 = intel_de_read(dev_priv,
>>> -
>> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
>>> -		if (no_vdsc_instances_per_pipe > 1) {
>>> -			pps_temp0 = intel_de_read(dev_priv,
>>> -
>> ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
>>> -			pps_temp1 = intel_de_read(dev_priv,
>>> -
>> ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
>>> -			drm_WARN_ON(&dev_priv->drm, pps0 !=
>> pps_temp0);
>>> -			drm_WARN_ON(&dev_priv->drm, pps1 !=
>> pps_temp1);
>>> -		}
>>> -	}
>>> -
>>> -	vdsc_cfg->bits_per_pixel = pps1;
>>> -
>>> -	if (pps0 & DSC_NATIVE_420_ENABLE)
>>> -		vdsc_cfg->bits_per_pixel >>= 1;
>>> -
>>> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
>>> +	intel_dsc_get_pps_config(crtc_state);
>>>    out:
>>>    	intel_display_power_put(dev_priv, power_domain, wakeref);
>>>    }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>>> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>>> index 785ede31116e..862dc708c5fc 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>>> @@ -78,6 +78,10 @@
>>>    /* Icelake Display Stream Compression Registers */
>>>    #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
>>>    #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
>>> +#define DSCA_PPS_0				0x6B200
>>> +#define DSCC_PPS_0				0x6BA00
>>> +#define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0
>> + (pps) * 4)
>>> +#define DSCC_PPS_REG(pps)			_MMIO(DSCC_PPS_0
>> + (pps) * 4)
>>>    #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>>>    #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>>>    #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
>>> @@ -88,6 +92,14 @@
>>>    #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)
>> 	_MMIO_PIPE((pipe) - PIPE_B, \
>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
>>> +#define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) -
>> PIPE_B, \
>>> +
>> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
>>> +
>> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
>>> +#define ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) -
>> PIPE_B, \
>>> +
>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>>> +
>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
>>> +#define  ICL_DSC0_PPS_REG(pipe, pps)
>> 	_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
>>> +#define  ICL_DSC1_PPS_REG(pipe, pps)
>> 	_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>>>    #define  DSC_NATIVE_422_ENABLE		BIT(23)
>>>    #define  DSC_NATIVE_420_ENABLE		BIT(22)
>>>    #define  DSC_ALT_ICH_SEL		(1 << 20)
