Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A55A59F4A5
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 10:00:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA4510EA7F;
	Wed, 24 Aug 2022 08:00:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8294110E87E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 07:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661327949; x=1692863949;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u1xZvF1bCoK2osCEc0JNbBXfKdQI/HLBY6tlmafp0sE=;
 b=GkEl7+DLO7pw8l7NjkVVmK/ctJ7WPwLkmWdPhcJh9vl+LTjb3zBpyZIn
 IqMyEipNHMnjdnFdZXrrKvd9xk9WKvacnz17dnYDeChFLCHgOmNRYTd/T
 Z4gGapg57PKuknu1z8BXVdCrCiAZ6ObOOQjS/5Q7ZwE71YIIDxSPOUDCo
 kdHtSfNHjsBGs3VgcQ28jEZoy4YoTkd5jCdiyNwrGFjaoOUfDyE3Sx4k3
 gkS3Wcm7o6c2WANqSUDK6ZUHlT+bc1K9PYbF1EtuPnwgk70bWBidyehCk
 S/QXnUHUJAkOsQVTA65Kcc/OCaGOVGou0ZXK392FaavM7WkgnkVrMsFiB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="380188857"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="380188857"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 00:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="670393243"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 24 Aug 2022 00:59:02 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 24 Aug 2022 00:59:02 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 24 Aug 2022 00:59:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 24 Aug 2022 00:59:01 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 24 Aug 2022 00:59:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K8lYmAA1WOY1A/5kt3+8f5JJFBakI1o7kxO04zSESakEf6VlNIxgyNz8cwZdcUBY5+mtTZr3nIlK+gQ4rTlp2pnGJtMPHnz1mO4e1uFsADjY4RKleUFJSmJ0yiXx8zDDV6ytGocZbQBbCH/8X0rB79NDtfMQIK0JTmEpVnPQ9HqL9RSuiiBZ+/FWIV08rc83B9tXEboHGoNC2OwW5EQ9nf4ouXwN8Y74gNMVnUSrz+kfhKPQvut/QJVM1MmW/JtFmNH6lJhUo3RfYcbl6uor1CqqtkoIoEcg2jqHSeyJ+ecqiae8oHhVT7/gKLlT0BLrVBaCtgNogbX2KtDbIfYYZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ButktFvAQNyn+7UmAcRfatwWmuoB0KUdmKtu0Gognw=;
 b=G6Rhwk1vtV+VENpOFoxYRgzSzJXxcwcpwiIBNe1vZAAM8shr5ti/E2vuS247P+sBOux2VUTdxr0EIuEN7t2JDf5gRsX9zjv68n/pjw8xDT9tBvl7o+Fli/0UAo3fbBQz4uoR2YVNX2H/MOf0QGLIXIRumqtRjqJ3ZmiWJqBioVyzXkU1CvfhGPaVzYCgw3zXElX64HskCx9eF+H5gMJT6qAn8WKozi5ITljioGldGRhU2aSloVd3dU0GpdmcyZFFEg4s/00jcm/czQyaexsXCoLbORF/abpfbWATm8TOUZT2fEdWWv8rbH2xDM2IZFnVBRWj/pfeMutWVEGowmqBaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM5PR11MB1915.namprd11.prod.outlook.com (2603:10b6:3:110::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Wed, 24 Aug
 2022 07:58:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5566.014; Wed, 24 Aug 2022
 07:58:59 +0000
Message-ID: <14c5533d-4100-0bf2-9024-38b595381e51@intel.com>
Date: Wed, 24 Aug 2022 13:28:50 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
 <20220822105426.3521960-4-ankit.k.nautiyal@intel.com>
 <87edx7kyqq.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87edx7kyqq.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0144.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fb5330d3-1754-43c6-5f6c-08da85a6807d
X-MS-TrafficTypeDiagnostic: DM5PR11MB1915:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VcBWpMyiqP3cgl9LXDgGEG7wjhzeV17f6JtguJy+gYk8vCrZdxlE4R4J+Hwc2C4iaMH+ZcLAhAQgX0kIu3Z7LB93Cl4l4XJaEgNilikEQaWIbMeCjQE16Uab+86M+b8IvljmpOqdIIl6Jvi/Zc610TBg/2UdBqA5KPOWL9pq2Wb307ji/7XJdhx0+m8lR5C78suvlmXIe8FPTkCdGqFAMvGcLODE/+YbBZSlcYjgzu9mJwT0hmujsT+kyLSYTT/ONjnUb1JA9FEGssyCpdBkVTk7QsjQyXTk+OwoxAcU9DfxJ/5JykApsPkQ3rQNf6409NcItUboXb0mru8Qi6cV+WYBOhSjzwWkxnMPC4wqdkrzXb73RY+Bg/0D6xINsdAGxzaKqddk1ZmZ6S8UjwNLvSUovhTcZUVHoMmPbLqWqcj6joFQDSlFbqf1CO5wxZ1BkH9wWC4T3cGM+eVKnpmjgjYAsVSL+rofn/jdbE02kWE28A9eQC461+Ed/IzTE78hxZ9di46bjWdm90YbN1/QrYjHPHcyIwdIPEuu5953xemMLraIVL0MhDnPu00PCd19gDllB8YMfX/Y9WNuqMvAXJN3bNkJnlBkgoWnSh5h/c/FRMIbm1sUZhrSZxq5BppMwug2K+IhJUECWWqzuTPVYS3eq3MW55nfXvMooZsWWN/q4ORtnJV+osMuUjQT8VrhyywTcny9E2zDTFXqVx4tBzSAn9NglSuKoVi5+MOc3GB/5wxWZxb41LWodcGJXIkAylhvRd4d6jU67Hp9mwj+5gqn4VvrcGDPn2ekm2ngoV0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(396003)(346002)(39860400002)(366004)(53546011)(5660300002)(6486002)(66556008)(4326008)(66946007)(8676002)(8936002)(66476007)(26005)(478600001)(6506007)(6512007)(2616005)(36756003)(186003)(6666004)(83380400001)(55236004)(41300700001)(86362001)(82960400001)(31696002)(31686004)(316002)(2906002)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGxHdjJwV2wxQXRLOXk4NVNOb1pua3A5KzhuVm1iUjEyS25rVnFIaEFKSUFx?=
 =?utf-8?B?Znp4bmJwQzBackw4cms5S1pIZjVtbExyVTI0ZkJsRVJ4ejFzdTVrQWVlVHJt?=
 =?utf-8?B?NnJNaGREdUxibzBrbXdIWHBuRzFRQWpybGRwdmQ0MGM5OXFpdm0vcFlSbFVM?=
 =?utf-8?B?YndKQjB1RzcyRStkZDJHeCtnOVU2M3BKalExUm5VTW1xNk1nd3E4SXN2Mkpk?=
 =?utf-8?B?Y2xPcmRydWNub2R1b1BacU5JWnluQXZ0ZENMMWhCT3pja2tKekxWVmpreG02?=
 =?utf-8?B?RU9qc1JuUHl0eHJaWHJqeG5xaTJEY05tY0ZxZm1JN2k3RHJmYjVwVTFJdk9R?=
 =?utf-8?B?d3V1c3VoZUU4cElHcGtwQ25PMlNKYlV1Z1NYb1pMaEhsaDh5aTltWHQzRnBK?=
 =?utf-8?B?ZzhCdzlmVlpucll1bWVCN3JjcnNwYis2bFpBaEQ3WUx3eUtqT2I2QlYzNU4r?=
 =?utf-8?B?cHZyYlIwcUt5Z083TGgwaGZJN21NVW9DeW1iZzN3RFJGaDBxeldrakQ0L3dH?=
 =?utf-8?B?dkpxbm14RiszVWRIMFp6K3lpMXZDMzZ2emU2RWtaT0FsUnNQSnY4c21wZXJl?=
 =?utf-8?B?ZTE1aFRmTC93M2lUc1oybTFzZS8zT0svVTh3dVlzNWMyZlR6V2lyazFZemFa?=
 =?utf-8?B?OXdnaUpuV1NxT01zbkV2UWErbExjempGbU8vWkdmTW1xbHAvUFRLRzIwQUJk?=
 =?utf-8?B?S2YxTUVLVjZHbEdFUUFqSGJRNE0xdXl1dlF6TEc0TGlVWk81Zk5INVJGUkoz?=
 =?utf-8?B?K3RiVjZNQUEzNnFrQ24zT2VJYXljS29vRlpQTzlCY0QrTGlaOEVEbzI4blZ2?=
 =?utf-8?B?emZqc3BIMEhocHpLL0N1YUpJalJzSGY5NHNzeUxCRDR6dnAxMXlIcVJGcTdO?=
 =?utf-8?B?dEJvTUptc2tNTmZydmJXc2FoM3dlQWtjc0N3N0xtMVowOXRuaG1xaTBqSjh0?=
 =?utf-8?B?VUJ6L2lKQk5Ecll0OGtxOGFOay9iWjNwNWJ0bi9ucDhRNlVSUmlCZjgvUnM2?=
 =?utf-8?B?WVdIeXhWdlhIZElEL2JTNEpzT0pHREdPVkpHNmlXRUgzcElia2M5Z0I2MEtl?=
 =?utf-8?B?THp5N09INmxySU45alRJelhLZUVNOEJuQ21wV3JtYTljYlJZR2UxQWM2RXBF?=
 =?utf-8?B?aEhSdm9WR0V2YjgyOWhySzlLeHI5RnN5K2x0aExCY2o2Wm1VUk5lbmRNc3F1?=
 =?utf-8?B?ZG9JYWZHNDByM3JrKzFYTURBbkFCUjI5NkZ2SDVKaEdHOFBvYVd0ZEZXbi9r?=
 =?utf-8?B?NUMwWjBRanlQa1J2WFVDajZNbkIrbkdqdTd5eXZBVU00RGJPSVM0dHhvYXNQ?=
 =?utf-8?B?aWhvcXRyaSswSXhJQ2JXYkhvM3FoNDhuWFBXcWRtb1l0MmRGaENqWEoyTXBV?=
 =?utf-8?B?YkNCWFVyWnp0RXBtY0VGb1JkcFJJUEZaOWF4S2dmVU84bko4djVIa1JlWjVZ?=
 =?utf-8?B?MHdEWFczMDkzUk5RS0FGRThCOU96UzFJVFNxcFFxM05xOTRjRXUyZmp1M2dm?=
 =?utf-8?B?eEt4SWhjS2Y3bTNqV3htNUxZOHZoN1I2WGFqQVhiK0I3b2g5YjV3ZWRrRFpa?=
 =?utf-8?B?UHBmc0lGSVY3TndSSlpyNE12MUxZd0tBUFdNRitjQnNpajNUMHEva2pIaXB4?=
 =?utf-8?B?QjluVndiK014dThEKzhNUndRR1Y2S2xsaG9NYUJ2a3lrR05tUVVUSWJQc3hv?=
 =?utf-8?B?K2Izd2UraVRucnp5TVA1eVRqR3pkaWhtNWZ0UzJFR2tTLzZzVFl2dHNTcy8y?=
 =?utf-8?B?ak9qRkE3K0MwN3pXUVZEZnpwUDFWR0EzbG5RVlR6NXNWYWhvSExLYzZkK3FB?=
 =?utf-8?B?YzduUit0cFFmdXBuOGpYbUVHUUd3N1FQc2RGSGx1T3B4bU1MNFE3dHZqUmlY?=
 =?utf-8?B?UlBwQTlvbkJpZVREYmRwOXN1cGdsT0oxaUFSK1N6RzYrU01aTkdTU0pnQ09X?=
 =?utf-8?B?MWwvUmhMeis0dmZYMkVBWmJ6YzUveUwxQlRwM3J3TnhvdVpjR3hNNWdtZG9U?=
 =?utf-8?B?VDRqNElHc01aamJ6SE1USDhINFowWlVSNThSdkNSMEFDNWY0UzVMNHhnbktm?=
 =?utf-8?B?T1ltMDhPNXhiUHNNUXA1NUpmaTRrMWVNZ2xoSzFxaGVjSHVOT3JicDA0Ti9q?=
 =?utf-8?B?VzlMVDE3S1VEUzNEV1VNZkJXUHZvZmpnYlhxMUtoRWpwSkY4Zk9CZWdvQVhm?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb5330d3-1754-43c6-5f6c-08da85a6807d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 07:58:59.4361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GAAQIUtKEMkrAhFY0j3+FDG9dJeTCJDk7w0aDHWlL20N2Pw/tSP/as1FNGCN6LtaUuFk0+hUNKvuYIh5vB6Yc3oorgATQDyk28IjqAy/JB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1915
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/dp: Fix DFP RGB->YCBCR
 conversion
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


On 8/23/2022 4:33 PM, Jani Nikula wrote:
> On Mon, 22 Aug 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> The decision to use DFP output format conversion capabilities should be
>> during compute_config phase.
>>
>> This patch:
>> -uses the members of intel_dp->dfp to only store the
>> format conversion capabilities of the DP device.
>> -adds new members to crtc_state to help configure the DFP
>> output related conversions.
>> -pulls the decision making to use DFP conversion capabilities
>> for every mode during compute config.
> The fact that you have a list here probably indicates it's doing too
> much at once.
>
> BR,
> Jani.

Alright, perhaps adding new members as a separate patch and using them 
in another patch will be better.

Will split this into smaller patches.

Thanks & Regards,

Ankit

>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_types.h    |  7 ++
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 88 +++++++++++--------
>>   2 files changed, 59 insertions(+), 36 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 0da9b208d56e..065ed19a5dd3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1311,6 +1311,12 @@ struct intel_crtc_state {
>>   
>>   	/* for loading single buffered registers during vblank */
>>   	struct drm_vblank_work vblank_work;
>> +
>> +	/* DP DFP color configuration */
>> +	struct {
>> +		bool rgb_to_ycbcr;
>> +		bool ycbcr_444_to_420;
>> +	} dp_dfp_config;
>>   };
>>   
>>   enum intel_pipe_crc_source {
>> @@ -1704,6 +1710,7 @@ struct intel_dp {
>>   		int pcon_max_frl_bw;
>>   		u8 max_bpc;
>>   		bool ycbcr_444_to_420;
>> +		bool ycbcr420_passthrough;
>>   		bool rgb_to_ycbcr;
>>   	} dfp;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index fc082a933d59..8ccbe591b9e2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1201,19 +1201,21 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>>   		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
>>   }
>>   
>> -static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
>> -				 const struct intel_crtc_state *crtc_state)
>> +static bool intel_dp_is_ycbcr420(const struct intel_crtc_state *crtc_state)
>>   {
>>   	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>   		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>> -		 intel_dp->dfp.ycbcr_444_to_420);
>> +		 crtc_state->dp_dfp_config.ycbcr_444_to_420) ||
>> +		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_RGB &&
>> +		 crtc_state->dp_dfp_config.ycbcr_444_to_420 &&
>> +		 crtc_state->dp_dfp_config.rgb_to_ycbcr);
>>   }
>>   
>>   static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>>   				     const struct intel_crtc_state *crtc_state,
>>   				     int bpc, bool respect_downstream_limits)
>>   {
>> -	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
>> +	bool ycbcr420_output = intel_dp_is_ycbcr420(crtc_state);
>>   	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
>>   
>>   	/*
>> @@ -1966,6 +1968,30 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
>>   		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
>>   }
>>   
>> +static void
>> +intel_dp_compute_dfp_ycbcr420(struct intel_encoder *encoder,
>> +			      struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> +
>> +	if (!drm_dp_is_branch(intel_dp->dpcd))
>> +		return;
>> +
>> +	/* Mode is YCBCR420, output_format is also YCBCR420: Passthrough */
>> +	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>> +		return;
>> +
>> +	/* Mode is YCBCR420, output_format is YCBCR444: Downsample */
>> +	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
>> +		crtc_state->dp_dfp_config.ycbcr_444_to_420 = true;
>> +		return;
>> +	}
>> +
>> +	/* Mode is YCBCR420, output_format is RGB: Convert to YCBCR444 and Downsample */
>> +	crtc_state->dp_dfp_config.rgb_to_ycbcr = true;
>> +	crtc_state->dp_dfp_config.ycbcr_444_to_420 = true;
>> +}
>> +
>>   static int
>>   intel_dp_compute_output_format(struct intel_encoder *encoder,
>>   			       struct intel_crtc_state *crtc_state,
>> @@ -1984,7 +2010,10 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>   
>>   	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
>>   
>> -	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
>> +	if (ycbcr_420_only)
>> +		intel_dp_compute_dfp_ycbcr420(encoder, crtc_state);
>> +
>> +	if (ycbcr_420_only && !intel_dp_is_ycbcr420(crtc_state)) {
>>   		drm_dbg_kms(&i915->drm,
>>   			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>>   		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>> @@ -1993,12 +2022,13 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>   	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>   					   respect_downstream_limits);
>>   	if (ret) {
>> -		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
>> +		if (intel_dp_is_ycbcr420(crtc_state) ||
>>   		    !connector->base.ycbcr_420_allowed ||
>>   		    !drm_mode_is_420_also(info, adjusted_mode))
>>   			return ret;
>>   
>>   		crtc_state->output_format = intel_dp_output_format(connector, true);
>> +		intel_dp_compute_dfp_ycbcr420(encoder, crtc_state);
>>   		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>   						   respect_downstream_limits);
>>   	}
>> @@ -2668,8 +2698,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
>>   			    str_enable_disable(intel_dp->has_hdmi_sink));
>>   
>> -	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>> -		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>> +	tmp = crtc_state->dp_dfp_config.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>>   
>>   	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>>   			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
>> @@ -2677,7 +2706,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
>>   			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
>>   
>> -	tmp = intel_dp->dfp.rgb_to_ycbcr ?
>> +	tmp = crtc_state->dp_dfp_config.rgb_to_ycbcr ?
>>   		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
>>   
>>   	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
>> @@ -2686,7 +2715,6 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   			   str_enable_disable(tmp));
>>   }
>>   
>> -
>>   bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>>   {
>>   	u8 dprx = 0;
>> @@ -4534,7 +4562,6 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>   {
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>   	struct intel_connector *connector = intel_dp->attached_connector;
>> -	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
>>   
>>   	/* No YCbCr output support on gmch platforms */
>>   	if (HAS_GMCH(i915))
>> @@ -4547,39 +4574,28 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>   	if (IS_IRONLAKE(i915))
>>   		return;
>>   
>> -	is_branch = drm_dp_is_branch(intel_dp->dpcd);
>> -	ycbcr_420_passthrough =
>> +	if (!drm_dp_is_branch(intel_dp->dpcd)) {
>> +		connector->base.ycbcr_420_allowed = true;
>> +		return;
>> +	}
>> +
>> +	intel_dp->dfp.ycbcr420_passthrough =
>>   		drm_dp_downstream_420_passthrough(intel_dp->dpcd,
>>   						  intel_dp->downstream_ports);
>> +
>>   	/* on-board LSPCON always assumed to support 4:4:4->4:2:0 conversion */
>> -	ycbcr_444_to_420 =
>> +	intel_dp->dfp.ycbcr_444_to_420 =
>>   		dp_to_dig_port(intel_dp)->lspcon.active ||
>>   		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
>>   							intel_dp->downstream_ports);
>> -	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>> -								 intel_dp->downstream_ports,
>> -								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>> -
>> -	if (DISPLAY_VER(i915) >= 11) {
>> -		/* Let PCON convert from RGB->YCbCr if possible */
>> -		if (is_branch && rgb_to_ycbcr && ycbcr_444_to_420) {
>> -			intel_dp->dfp.rgb_to_ycbcr = true;
>> -			intel_dp->dfp.ycbcr_444_to_420 = true;
>> -			connector->base.ycbcr_420_allowed = true;
>> -		} else {
>> -		/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
>> -			intel_dp->dfp.ycbcr_444_to_420 =
>> -				ycbcr_444_to_420 && !ycbcr_420_passthrough;
>>   
>> -			connector->base.ycbcr_420_allowed =
>> -				!is_branch || ycbcr_444_to_420 || ycbcr_420_passthrough;
>> -		}
>> -	} else {
>> -		/* 4:4:4->4:2:0 conversion is the only way */
>> -		intel_dp->dfp.ycbcr_444_to_420 = ycbcr_444_to_420;
>> +	intel_dp->dfp.rgb_to_ycbcr =
>> +		drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>> +							  intel_dp->downstream_ports,
>> +							  DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>>   
>> -		connector->base.ycbcr_420_allowed = ycbcr_444_to_420;
>> -	}
>> +	if (intel_dp->dfp.ycbcr420_passthrough || intel_dp->dfp.ycbcr_444_to_420)
>> +		connector->base.ycbcr_420_allowed = true;
>>   
>>   	drm_dbg_kms(&i915->drm,
>>   		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
