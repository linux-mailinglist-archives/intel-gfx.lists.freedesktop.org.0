Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162B06EED8B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 07:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9284F10E889;
	Wed, 26 Apr 2023 05:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4364A10E889
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 05:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682487152; x=1714023152;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IcSG2KOkRyqqBjuu6+naweaXNQkOM/WuaMjguL5JpWI=;
 b=i5kypJ9ZYY3Z/aUBoeeziM8ER4TYlyBWkve69TlpgFSy/M6I8cdSivxU
 dfbGUUoTtmbGoGuRmd25H0SEUvKLeC1GuUaxTFHqKoIk118R3NnI7AvqM
 3fCjKinl7RzXiJIpn0dIjAt191N+7Pv92a1ZnGilVCGoDXhbbU7B1z9s0
 00+nzc2Ky7/Q8kxVIQVAIg+oReyHCPEPksSgFtfYrSW+4lkGZBLAXXo5S
 mvhai5sHQ6N96M5T7NHCTAQtB2w+uIWR8mSb3YeJFMUJYTvxOXAyVQ60k
 RtQN3mChsjO83EC0SiLbXdxAZf9KjJ/okFprVRkNDmfpu2psKPvK2vTmW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="409973031"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="409973031"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 22:32:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="724297805"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="724297805"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 25 Apr 2023 22:32:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 22:32:30 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 22:32:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 22:32:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 22:32:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IkCNCEdro/ViPNaKDkksWXdKgvET78WyaHVET90ZPfpsq8JIjk7vr5qCisdmep93RGuD9Gv2hCUn/M1yXhRYSz+Nr7+GkTxXzBKeW6OfDtnh5rFmOpn4+2ZxeEYAYAMkbhQB4+B7HVF9IGpnpHQtRRZD4tuxR6JNpJNF4EO3Pn+S8S/KLpeWiwTSeh43kvv3neCVPhKV9eaog8NTIy8eHkNlban58KiT8g4qnmMSAGBGXdtq2nuEL4cAGJDuJzpRB9MGUIIpmpkr6tVEp3ugONXxliYcdG0DDFwf+e7V+29xm9x5V10SS3+Naeq59EOaysB9eG3P+wbzry17H5hpZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g1jZuHAnnnDk56X6WwMg4kX7kibmjshJ1CYHNhG1Deg=;
 b=GrfGslBjgSkWWLQVhNoLZSc6pKr22gj81LT9mK1wNu9w/he/rAFwyzXbFuCFZa7s9lOEntARuro1gpwWe6pvlp9BYuth1NY7K08sOhiFy9AuXqNxU/kvG/ZG31shoYNSybLi0xCzGheVbB8/k7m4xc+jfbcLayXzkZE2xvBL1nNqv4V4VGLpCAqefYRKH2UBfAxFVX9xpxBHWLGtQAElpl6K553mczhLwQZfQZtIf635cTTMAM091jyoyALarMLrnSFCCbur/hdReDW/6LuB41ymjvuYDqtLzOOQCPriWD9RGH/JOnKMJvQWdi0hUfk21VNAqqfJNNHjdnunte9iLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB7949.namprd11.prod.outlook.com (2603:10b6:8:eb::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.34; Wed, 26 Apr
 2023 05:32:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%9]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 05:32:27 +0000
Message-ID: <fb9a896d-da9d-82cc-ca1a-5f3090293532@intel.com>
Date: Wed, 26 Apr 2023 11:01:57 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-9-ankit.k.nautiyal@intel.com>
 <ZEZ7Wqy+E9p1xsB6@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZEZ7Wqy+E9p1xsB6@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0073.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB7949:EE_
X-MS-Office365-Filtering-Correlation-Id: 19ce145a-5526-4496-6b9d-08db46179ef5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bp62vO/JnXJwmfjDmphiXBD7Q1z4UsGHjhRSC3QRzRuD6qneqRxMafdmAeXeRXcqgSWhRQLJt64Skro+VWyzw6WD4q0qto2glOmqK+0oFcYBM4tuuMtwXlWCPiEdxHrPsQqM81xs0tmVcGpKPZ25A95ltpnKaB+WZZDd5EZC7M8qDxOqNHVgXYlcMLBoRKxgRU9f12T+Kzbmoq1SO0xKDQALqYc/emZqBIkc4AUXj3XTxOsEb0MvPKUarCoK2z93Vj/ExAdJoqdOvks+NnulDxAjgC1E4JGD8K1I2g9GYKcCFc7BeIYzmTjmBfRBNxqRcsFtQ/u5Caogw0wmadRA/Tu62CT5KNqPkZQv3eocIyJ7XQ2192POViYuv/7eLqhvI/cA3rp+MtSy4wknmivg/vcOs6O895L4t1wKjAyN0XzfGPG7XnsJQPFwx/rBuxXfuBJG0+Q0PoalY6je6YrcauX0/+5w2n9z0AgYjSNazsnpSv8vHFkn+ezBhcYKrF1ye6dep9LEQyiqn+d0X0Bhtqt9ywWkJTzl1E3Kk5y2ulj37cXULoUMxRdW7RuMel9R2wAfoFYGMTkvz8E70gH1iCwqq24hJU6QTNKKHyq68x7HOAeCBW2nKs7cKYQr7u9wzdE2ySk6QB5DGWk/YBtltA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(396003)(136003)(346002)(376002)(451199021)(31686004)(478600001)(66556008)(66946007)(6916009)(4326008)(66476007)(2616005)(55236004)(186003)(83380400001)(66574015)(53546011)(31696002)(86362001)(6512007)(2906002)(6486002)(26005)(6666004)(38100700002)(41300700001)(36756003)(8676002)(8936002)(316002)(82960400001)(5660300002)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OG5Fc1dWb3ZoYnNWc0xLMnNQSFF0UjRSbVdvUGhlT0prYkh0YUErSHM5Q2pF?=
 =?utf-8?B?NWhPL3JvZ1N5NTlaQk8xaWdoSUdvbGdqUGRObHByZlpqcHJxWmR2SVU4V29U?=
 =?utf-8?B?RU5pWnpNTWJsNXA0ZVEvTnhMUkErYUQ2RXk0Vno0NzBDckIvTjNnOVlUcnJ4?=
 =?utf-8?B?VXVwR3lROW9sNlA4bHYxS1ptZGxpVHdSSVpXbFVpemRsdEd6cUhyVnYvMUpI?=
 =?utf-8?B?eDN0aWNkcW5uRjQ2cERGUk9ndlZ4aFZHK3ptU28xL1o0RVI1ejV4UStpRWdj?=
 =?utf-8?B?TG1sS3hqUUllK1hqMHM3KzFRQStsb3k3cTR2VEJVRjQ1UmhIT0RVbFpWdFpY?=
 =?utf-8?B?ZTFZY3ovblViQ0tKeFVkdVJhNTFhTDA1OXlUY1B5MGtQRmpFczJmUG1WdENt?=
 =?utf-8?B?SHB3UElCaEgxTFRuRk9EUTNHOURjazdzakphbm5KOUFhN1h2SHN6MDJoOTE0?=
 =?utf-8?B?UGJPZERDYnlJTksyQ3ZIVUQ4OUtNcWsrRUFkSzUvN2loeVQ4RytFbWR3elM5?=
 =?utf-8?B?OE1MYmRxclhJR0dteE9XOG9aaFFZUk5FcGlGTmFXUDV4Mm1lZ0g4b0Q5RXBV?=
 =?utf-8?B?MnFKWDh3T2lMdUllMzdlZlV2Sld6aWYrMDZpTEsyM3pOdElzbDNBSGpmeFVR?=
 =?utf-8?B?UzZNMzhudjY3aDBEYVczVXNQR3NpWEg1Tkg2TzVTNnBaRFBkVVFwK0NHeXZ2?=
 =?utf-8?B?aUtQdzBsK05LKzFpTTJUTXFjMmNob1FTS3h0SFU2Tlc0YThpWkNRR2ZVWkxK?=
 =?utf-8?B?R3pqemFQMWtvMkFSd0p2cDRaTi9YSmsrL1M4QWlHdDZaRU9qZG10WGw3RktL?=
 =?utf-8?B?UzV4QURrVGtEVzlBZEF6S2J2Vm0zZUFZN0dtbkFzZGxUUGhvL3Q1OXpDb3dF?=
 =?utf-8?B?amx4RG1uZ2tVZG94U3RWbVMvY3ZWcmVUcE1nUm1EL1gvQk05VXI4ck96b040?=
 =?utf-8?B?RWxaR291OHpsa0lXcCtrQzhXWDB5MVNydFV5VVcwd3ZjcFNldk0vOFdZZVdR?=
 =?utf-8?B?ZVZwL0o1S0hIeFM0ZmRuazdFclAxZ3VzTHFrL3NqcUtBUWlablptZlhwTXh1?=
 =?utf-8?B?RVNqWXFZSHQweWVqMk1heExTamd0cGtEL21LKzExakZkT3U1bFYweld1T1Yz?=
 =?utf-8?B?bGRwSmpPU0N1anhSQW1jNmw5d1FqUWtRcEtvQjIzcGd1NHpMWnFycnZFV09M?=
 =?utf-8?B?NmFaVkRNVU5VdnRTMUN2ZnM0NW1EcEcweWU0Y3VQT3JNQzl6R3VpcnhWbFlx?=
 =?utf-8?B?ckk2dm1IY0VTV3Jxb3dPSFUvVUtPbitxVFFSSGZEYmZQcGRTdjBmTzA5Vmgy?=
 =?utf-8?B?UkFQTlhlL1N1dHpRMUdNY1p4VVJBTVN5dExGcS9JakFFb0dPOGxpVWpwZTg3?=
 =?utf-8?B?UVduNG1EZ1Fwczg4cm9Tb0FwQTgydk5KcUNEUkFHU1Z5MUxPRjRycmpMQkI1?=
 =?utf-8?B?enRlaHJTVFkybHJaZVAxQURCdHg4T21YOU1TakVLZ3RUNUYzSE02emgvOTRn?=
 =?utf-8?B?UWF1Tmw5MHZndGtzQ0w2TmFYY2g5NjE0OC9NMnd0YmRnSWhSVldpY2RsZGJ3?=
 =?utf-8?B?VlhGUmdpU01aQXM0T3p5eTZEb2tTL2lzN1FVajQxK1o3cDZUMGgxKzUra3hT?=
 =?utf-8?B?dDFaMFBGOU9SenVkbVZsSmUwd2JpZmJYYTEyaytRSU5OLzZoVCs3cVFTLzVy?=
 =?utf-8?B?T0xtbWcxRkYwc3FiT0t2V0Q5YUJuK1BjcXI0aDZKY0xXcGRKS0VCU25NZDgz?=
 =?utf-8?B?VHVSWEFXRkJLajRqc1ErK2ZtMXJsc3B3Nkp6SWFhL1Zsb2NEVGs1V2l6WGtr?=
 =?utf-8?B?cUhTUHB4VkNSOTNDS0VjZHNKMlpxYW9VUzQwWE5XYXdXcWdzbXc2cENQcjg3?=
 =?utf-8?B?NEpSWmh2VjJ5REQrdXJSZjhYT0JKS0hMMlJFbUs0Wm51cWxndXY5cVFXRks1?=
 =?utf-8?B?WVBvdFlmb1FtMCtuUkhOODRqSWp0aGtmMVl5aUZNejBVMThLamFyWFdKY3ZP?=
 =?utf-8?B?a1J2NkFJY3Ntd3R1SVMrekVWbVhmTGlWZ3pwRmdjUFQrVytUc3pCQ1dzWlo0?=
 =?utf-8?B?OG83Q0lzZlZEWGJwdG5kRDlZZ0cvN3RRVk1reGdPeFZCdzQ0LzZFZUhmcGhv?=
 =?utf-8?B?TDRPRG9jZ3dybEpBZUFWU0FQcDN6MlRjcWN1YzhWR1dCb3ZGdlFQMndDMTF0?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19ce145a-5526-4496-6b9d-08db46179ef5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 05:32:26.9680 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Is4fXc8E8unC9EDd3CxtAybK5sDTWYEH/vDSZBcGjwO5Y1LwkzEIE5rU9IY97H8RKafBkj//qxBrvbFv9j9JCw9qnt6xpkocn6jAiK7q26g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7949
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/dp: Consider output_format
 while computing dsc bpp
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


On 4/24/2023 6:21 PM, Ville Syrjälä wrote:
> On Fri, Mar 31, 2023 at 03:46:08PM +0530, Ankit Nautiyal wrote:
>> While using DSC the compressed bpp is computed assuming RGB output
>> format. Consider the output_format and compute the compressed bpp
>> during mode valid and compute config steps.
>>
>> For DP-MST we currently use RGB output format only, so continue
>> using RGB while computing compressed bpp for MST case.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     | 14 +++++++++++++-
>>   drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  1 +
>>   3 files changed, 15 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 4d5c74a1bd29..e5903b5e511b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -712,6 +712,7 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>   				u32 link_clock, u32 lane_count,
>>   				u32 mode_clock, u32 mode_hdisplay,
>>   				bool bigjoiner,
>> +				enum intel_output_format output_format,
>>   				u32 pipe_bpp,
>>   				u32 timeslots)
>>   {
>> @@ -736,6 +737,10 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>   	bits_per_pixel = ((link_clock * lane_count) * timeslots) /
>>   			 (intel_dp_mode_to_fec_clock(mode_clock) * 8);
>>   
>> +	/* Bandwidth required for 420 is half, that of 444 format */
>> +	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>> +		bits_per_pixel *= 2;
> /2 ?

As per my understanding, we are trying to get the max bits_per_pixel 
that is possible with the link config for a given mode:

Bandwidth required with 444 should be <= Available link Bandwidth

So for a given mode with 444 output format:

ModeClock * bits_per_pixel_444 <= Available Link Bandwidth
bits_per_pixel_444 <= Available Link Bandwidth / ModeClock

For 420 output format, bandwidth required is half that of 444. (So 
bigger bits_per_pixel is possible with the same link config)

(ModeClock * bits_per_pixel_420) / 2 <= Available Link Bandwidth

or bits_per_pixel_420 <= 2 * (Available Link Bandwidth / ModeClock)

or bits_per_pixel_420 <= 2 * bits_per_pixel_444.

Perhaps it will be better to make a helper to do this based on 
output_format.

Regards,

Ankit




>
>> +
>>   	drm_dbg_kms(&i915->drm, "Max link bpp is %u for %u timeslots "
>>   				"total bw %u pixel clock %u\n",
>>   				bits_per_pixel, timeslots,
>> @@ -1133,11 +1138,16 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   
>>   	if (HAS_DSC(dev_priv) &&
>>   	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>> +		enum intel_output_format sink_format, output_format;
>> +		int pipe_bpp;
>> +
>> +		sink_format = intel_dp_sink_format(connector, mode);
>> +		output_format = intel_dp_output_format(connector, sink_format);
>>   		/*
>>   		 * TBD pass the connector BPC,
>>   		 * for now U8_MAX so that max BPC on that platform would be picked
>>   		 */
>> -		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
>> +		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
>>   
>>   		/*
>>   		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>> @@ -1157,6 +1167,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   							    target_clock,
>>   							    mode->hdisplay,
>>   							    bigjoiner,
>> +							    output_format,
>>   							    pipe_bpp, 64) >> 4;
>>   			dsc_slice_count =
>>   				intel_dp_dsc_get_slice_count(intel_dp,
>> @@ -1655,6 +1666,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   							    adjusted_mode->crtc_clock,
>>   							    adjusted_mode->crtc_hdisplay,
>>   							    pipe_config->bigjoiner_pipes,
>> +							    pipe_config->output_format,
>>   							    pipe_bpp,
>>   							    timeslots);
>>   			if (!dsc_max_output_bpp) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index ef39e4f7a329..db86c2b71c1f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -107,6 +107,7 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>   				u32 link_clock, u32 lane_count,
>>   				u32 mode_clock, u32 mode_hdisplay,
>>   				bool bigjoiner,
>> +				enum intel_output_format output_format,
>>   				u32 pipe_bpp,
>>   				u32 timeslots);
>>   u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 2cc4239cfa5b..daa1591a9ae8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -927,6 +927,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>   							    target_clock,
>>   							    mode->hdisplay,
>>   							    bigjoiner,
>> +							    INTEL_OUTPUT_FORMAT_RGB,
>>   							    pipe_bpp, 64) >> 4;
>>   			dsc_slice_count =
>>   				intel_dp_dsc_get_slice_count(intel_dp,
>> -- 
>> 2.25.1
