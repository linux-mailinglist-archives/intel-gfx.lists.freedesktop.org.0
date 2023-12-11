Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0447880C82A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 12:39:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F3310E0E0;
	Mon, 11 Dec 2023 11:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FAEA10E0E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 11:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702294740; x=1733830740;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vNTZE5KMCgBn9XrVwfxWY3PfIg8ybQdJgbiFZtZ22es=;
 b=Px77irZd0RcqJCtLbkh0AaNd+LARH0NWomzKx3+gMUCl7ogGKSrL8Frc
 pKhi14f7wC1J+iVHYM0iOgaLhoWvMkebdpt55gUM+np/iYneGd0AapLe+
 Zd07tH/QCYanaeCu85YnrZmZklk1oPE6j+Jf7UpJjG/SZVpUDrguEBYIQ
 JmkbqPwGyny3BPsb+G7FIcpmG0ZGrpGrUqLuMIKjifGGRQKN/w4NirDME
 +XvSBxIGu4fJru3dAEK3/wxUnhyW/l9nFUkscRuP6KM2NEawRSL/AN4Jy
 phNf0wDbPAEpRZ1WLpGNn96RTJRMBruimolh0Kccv1LIC4jzW13vdnt2m w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="385046409"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="385046409"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 03:39:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="722757124"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="722757124"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 03:38:59 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 03:38:58 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 03:38:58 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 03:38:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QLfh7SEsZspl0T/UVKpQqWSWepbXv+FtwaRKCN51IOrtdQ//Pxa1HQymSgy3ITUkyaYkM8Swtz5dlZK6VIVa0gOgpzrg7on/Cl/VKWst2iP6F/RGd43wfarzz6GepZ3wqjqFV9rn7EWRzBQOwyDEPfvuMegjGb+G2RizPrK/PHDLepo09qKHPQBe+i952b0BR6JsPhsL/uAaj07IbK68do4EKcOM8pUcz36EBRgpQKj/h3cb96GzMq4UWvq5a7qBsuRj6MyrhZjLqwhZBCR7KMlnFo1tkpV7kfzsPy131cfx98JfQtem+8q+4DIjEA74TJIAz4el8uRp85ORpA2eiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=da2ItYB8NXSDy2c8lDgSNrh08FcQgYNVXBOd1SSPRnA=;
 b=eJdMETFN5v/XN1Clq4q7dfg+mvc8268LvboP2Y2UipFgCcAQY3N1JxzQzNCDr0smhQH3AJFt5qBsUwMEznL7rO7J0esVea5tq6j91YOl/kiKZli8p4ZDDPvtplA6SdVtOcYHgetxyMy4fv5vHtZALvOdwtRLiBBWjkgCslNiwdS+ThA3v+Lho3ALFzirM2vt8FZ/171wT4LNUqI2ARpJ/aqtOXfkZ7Al76IDMMHmRyUAGEW6TCLR2228F5u+tNMhD1CofbghTuiQTEtyY13mNcgAIQ/cm/N0UNtlrrpO2q7ZK/lCLylt9AX0CVRbxEdsEytzOhcq9XTA2unW88OUvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8597.namprd11.prod.outlook.com (2603:10b6:510:304::22)
 by DS7PR11MB6061.namprd11.prod.outlook.com (2603:10b6:8:74::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.32; Mon, 11 Dec 2023 11:38:55 +0000
Received: from PH7PR11MB8597.namprd11.prod.outlook.com
 ([fe80::80ad:e241:4aec:60a9]) by PH7PR11MB8597.namprd11.prod.outlook.com
 ([fe80::80ad:e241:4aec:60a9%7]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 11:38:54 +0000
Message-ID: <0cdbe01d-710e-423c-8fc7-39787cf571e5@intel.com>
Date: Mon, 11 Dec 2023 17:08:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_14019877138
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20231205091105.3604223-1-haridhar.kalvala@intel.com>
 <20231205202426.GK1327160@mdroper-desk1.amr.corp.intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20231205202426.GK1327160@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::23) To PH7PR11MB8597.namprd11.prod.outlook.com
 (2603:10b6:510:304::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8597:EE_|DS7PR11MB6061:EE_
X-MS-Office365-Filtering-Correlation-Id: e7424472-ad81-47c3-a302-08dbfa3dc147
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sv0edgDUkboNTrWFw5/BGMKRMcNKuQ/vO1KA3m6Lr4/bbMMFNNXnOgQnjNqUqjY8eWRp63vHx88MnSOlOFeNjkjTW6XSG138EpI+khT3H2pvedVus2B43Pwx/RM8pQ3ymsrEG8f0i1W89JHkC3mCjR1twC3QMjJLCGFGnVosXCN3Qs6SlE11bb6BUvUPkr7yVicVWUi17SSNdpb+CH4BTI5fE7qOMRhkP/Ge5hwDh78vPT8gl9MkfRTZZUAFI3dq835IsATA5s+H7t8grXZAj1TnG64dL926ZEpL78HFdXkV4IPafE2trLUQUs1W66J+D7mwKV+eqzRUr1hTwuZ5t55bp2PuTe1riRQlYQB/W7KAd0piZFNhaB+FYfNatgAgNBnGiWrUT2YbPoaa3mLd0qJBT1PjQ9oYIbKTLFRFJzjqiJJYqaf4q77wv3K3G3ziKywV1Z5GBsyN7Uf1B6QSoT/NTM4FlorTQV1gPTEzQvjuk2sh8VWhOAcdViWmHI0c7dTMatf/5DxLqR7PSBD8QtSjSadFj8ZmVfqmRoINghY1klqHRYPLLyYi9EZfRzbcqsNB1eY9W3/P0ZjiA11zLliipjENBieohSQxrS+pF9lJ1jfl3bDPhUbwfycTBXZTOHxjPLXCqLKjUJjybXkw6XrTfkkZIubtNWv7s3Ns9rzpYjngkMlV83fGtOba5+8c
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8597.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(376002)(346002)(366004)(230922051799003)(230173577357003)(230273577357003)(451199024)(1800799012)(186009)(64100799003)(26005)(2616005)(6506007)(6512007)(53546011)(6666004)(83380400001)(5660300002)(41300700001)(2906002)(4326008)(478600001)(6486002)(8676002)(8936002)(66946007)(6862004)(316002)(6636002)(66476007)(37006003)(66556008)(82960400001)(86362001)(31696002)(38100700002)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTY1RzJ3ZURjN2FUamxEQ1dYYkdKYi9ncTk5dnVGYWY2UnpEd1ZtWC9GYmZI?=
 =?utf-8?B?WVZMMzcxR0RWb1ZZbmw5MVhESTVvclliOVRKV0VsK3crNFZkdlZvWHRXL09r?=
 =?utf-8?B?TldRK2wvc3lhTm1tTWw4eFRINWRoRWwxY2VDSEdMT1hWbGpoRlVzUFk3Nko5?=
 =?utf-8?B?K2Z0Y05mMmxWd0NQWnhmdkU3dWt6VExIQk13S0hJK0d1ZlRWR3hvM09rQ3k2?=
 =?utf-8?B?dzZ3WTlaV2p3N0VYamc5cTdHcjFUeUR5UXlDeUhmakFJNzF0blR2Kzd1YnNx?=
 =?utf-8?B?aFlNVnpnVG1FWEpzUkV3VFpqN0hta2xsNXB4VXY1UTF5QVkyU3pBNDJlWjhq?=
 =?utf-8?B?cXdzOGdsc3VicTZTOENTbEp0YXVwSzc4M0FCWmJrUEZaTGpwU09JZlNKd1M1?=
 =?utf-8?B?TGlOSjVMckZ1Qm8zaXBjb2J3QVhjdUU5QTdxcGdCYmRUejVsOENVUDRQMVpW?=
 =?utf-8?B?ODlORGhJaHU2RDYzYUJObVdPeXdFY0krcFFpOXVFa1c5bkxBeDhpcjhQZDNE?=
 =?utf-8?B?NUdEbE1GYXNvTXFMekNtQmFGWG15cDh3a2ZxSVNoWTVZeDZXTXl6R2dxdFAw?=
 =?utf-8?B?UHlJNGFjNHJ6VVhIYmo0TVBMYTBZT2dOWThadU9TY3pPRzNDNCtnNlhCV3pQ?=
 =?utf-8?B?dXF0b2o2Y0J5MzlnbnprSVV5dGpSYk04OUNoRkpPV0F3VDZzajdjd0laaktz?=
 =?utf-8?B?NEpaVXpoYm41bytvcEhqU3h0SngyZm9wS2ZVL3ZhNHc4RnFlSVBWVEdvN1hs?=
 =?utf-8?B?aU4zalVjZFV5TlM0SlY2d1UwOEtjYUYwd016SlFOOXJrY1FVYWFBeW5BU2lV?=
 =?utf-8?B?TWZSNlA2ZTZkMXVZVHZUR012VHphUWVTdWtYWDRObzRURE03R0ZVUGkwWlVt?=
 =?utf-8?B?UklKNC9kNjhPbGdRNXd5L0J4MHRLSVRIcGNlQ09qZVRaSkRYZGNsczFLUVhD?=
 =?utf-8?B?TFA3TE96aFhJZHB1dFp4ZGpvdXp5NFNlL0tFZWR1UkpsNlYwU0R1c25DZEJt?=
 =?utf-8?B?NWtBRmtEY0lXMU9mNktDTG9XM0tpcERuaDU3M0pLRFlwVnc1YWZNMTZBM2FM?=
 =?utf-8?B?Z0JMWlI1R0J3aSt3Y2MwUXNvQ1J3eGxkVDRnYngwSzZHWHdwbDltTXBQamhs?=
 =?utf-8?B?ME0rWnUzcXJCOWZCc2NSdm8xMUtzeEJNSUxKVk9JQk9ldVIyZjV1R29hNlFy?=
 =?utf-8?B?UG5sQ3I2YXFTNjkwdkdOcXpwQlR6NUF1Y3lIdXhJQzBabHR4dzJyaGxDdk5i?=
 =?utf-8?B?K2crVzlMa2xDcDcvdUJMS25jVVhIbjNFV2tXMXI1K20rTVB0Q2FxRFJFbGJt?=
 =?utf-8?B?MlhhU0RHTGVTTXRuamR4eXM1eXFSZFpQRU5KdXJWN0dNc2YxS2Z4SWJaMkZ0?=
 =?utf-8?B?STJNY0FXSDAvd3F2TSt2ZnFZZ2UxbEpHK01KWjVENjhSTEhMZGZXaG0wR1d0?=
 =?utf-8?B?VjJKMjV1czlwTkpKcU9MRU9VaDF6cWhtTDBBemlDWENHbXdoOUNTODVOSnBL?=
 =?utf-8?B?V0dON2RVY25yVzliQ3dPWnpSU1NqcGlJQWpRb0hraVZnbzhWSXRwUVFhMGhz?=
 =?utf-8?B?UlhSVDc2SS95RG9uTElhOHN0VmFHZGUrVkRaRTcrcFVJd1NEUm13Z1ZjcGpB?=
 =?utf-8?B?M2t5UElQNHRLQjlONzdOVnE4bFRibWRKMlJWOGN2SStNZHo2QVRodzJYY2xC?=
 =?utf-8?B?SWdGNE5IN042YTVGbFV0RFJLd3hKQnlNSFlsZXFDRDZDdEkvYURyZjdqSFZE?=
 =?utf-8?B?b1VpTGtaZCs4VXVMOEJYOXpPaFJtVCtRS09LVTd0ZnI1cFArN01zV1B2L2VE?=
 =?utf-8?B?d0M0QjUrd3FDakIwQmVoVERMT1BBb3lPcUMveW1MU09aWXoxdkZwUTNTMngy?=
 =?utf-8?B?RTh1Ulk4eHJIeGg3YWQrbVRDRmxTNnhlUWRDZlVTdG5MeFZHZUZLQmMrUHVv?=
 =?utf-8?B?NEgxMnV4R3hwek0zelB2NTZPeEx2dFowaFJKdnpxNnY0UHZzMTVBYjN3VEEx?=
 =?utf-8?B?bzVSWW5IWHFuWnFlR1BRVTFKUmNDa0RZWnJkMkVIN1NqeXZKbTlRNStuNGIx?=
 =?utf-8?B?WE1IdzNmQXpoQlRUZVh0RjVuVnlTZHhlMU9SQldQd25OZVdiQWpqeXZNWnVi?=
 =?utf-8?B?UU1xcG8wSE5GVmlZYk1qaHdEQno1aGJ4bzg5R0pJUHZvUW8yWE1tWkNNKzRx?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7424472-ad81-47c3-a302-08dbfa3dc147
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8597.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2023 11:38:54.9063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wHoD27iqfgehc0ACoq6g3NxBnC3QopeU1XVcrzOhMO9bb0WAsN4mXnZchm7NznhEy9ej7jq3il14ArRb+8a0+o1a9rP6qd53SMlci/IIr/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6061
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/6/2023 1:54 AM, Matt Roper wrote:
> On Tue, Dec 05, 2023 at 02:41:05PM +0530, Haridhar Kalvala wrote:
>> Enable Force Dispatch Ends Collection for DG2.
>>
>> BSpec: 46001
>>
>> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>>   2 files changed, 6 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> index 9de41703fae5..85ba62639807 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> @@ -469,6 +469,9 @@
>>   #define XEHP_PSS_MODE2				MCR_REG(0x703c)
>>   #define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
>>   
>> +#define	XEHP_PSS_CHICKEN			MCR_REG(0x7044)
>> +#define	  FD_END_COLLECT			REG_BIT(5)
> Looks like the whitespace between '#define' and the names isn't correct
> here.
>
> Aside from that,
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> Hi Matt,

Thank you. I verified with checkpatch and it did not shown any warning. 
I will check again.

Thanks & regards,

Haridhar Kalvala

>> +
>>   #define GEN7_SC_INSTDONE			_MMIO(0x7100)
>>   #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
>>   #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 4cbf9e512645..3eacbc50caf8 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -777,6 +777,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>>   
>>   	/* Wa_18019271663:dg2 */
>>   	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>> +
>> +	/* Wa_14019877138:dg2 */
>> +	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
>>   }
>>   
>>   static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>> -- 
>> 2.25.1
>>
-- 
Regards,
Haridhar Kalvala

