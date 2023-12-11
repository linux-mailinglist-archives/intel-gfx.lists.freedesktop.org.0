Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 177EC80CDD7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 15:14:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5284410E448;
	Mon, 11 Dec 2023 14:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A1C410E459
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 14:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702304079; x=1733840079;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CLS6uCSmUb0Tab21xJw2nBfomN1Z4LsH8BvpIB28LIM=;
 b=J7/4AUaNL7BvhqPMxnjlulJ/Ts1eJjubI/eHSnSb7C+PunQTxF2sg4pL
 4jo16Kv/ATYiJXNi99XeGwMjRy+T6cHMY07lJWAoU+ZL9jPrnZVfYb3T3
 stfqjeIIgCtceCQAJWvqfvE+3GNkcu1TVk1gkUVHlG7EQB8T/mk9u5x1E
 AFlF8WUPdS7uwBcR7oTzVF9kxQL4zfCF0yvxl+x4S3XK7zat65ZjqOYVH
 9pKXMF+jPBuYmut25/G6ruymDXj9S6lLXpBlnqHrvvJjIpfZF3Vw8M3ox
 SPWo/iYjMWq+qo/SQHKI6Ic39d6nPMHZxnCXVL8/GJCM6+zwz6njuhCp1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="8014397"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; 
   d="scan'208";a="8014397"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 06:14:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="891140598"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="891140598"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 06:14:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 06:14:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 06:14:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 06:14:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JiA2odqi6voIGWbi2LheL0vp6NN4VdDojORPHG5m7dmRY+OixCEOA0hNab6L1f2e+3NhwKwNFG2r+MF5OFlKQxfryvzAWoLyxrXi/MaBOXcgthB4TVr95C0rdOQFQqTpXVs7Jfnvr3dDT69IMGpZFkjIxrzBlAoLhYqYpcgHDioGnSq773T4H69tpe5WuvdHT+5JCk1ilkb3AD0LNsGPs0uJRL+pdDHEOdrh8qGTwgE/zPI84WeQPvXEBsRIvfd+NhkR7bBlg82W2u1iIXgw5A9h0NEFw6zd5U3NJdCVnxZP3xvPhsEP33Jl6I3o6fbq21li/ogGihG9XlQ9Sdtrjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lcHJmRRA3BBKdyIKFPGfPqwcDOjI9kjbZ+D7PxuhNZQ=;
 b=j2WJ5pDOfic5J3UjXUV8W0ofo1ojYGmQVoN3sMJbzujDlHFjXdZDyoCX/I2WFrKNG2kcV1QGIq5XD9qgxL+dHqjd2Q2VnwDL/NvMU7JPpL0Luoi+E17hHi+ONmkabvD8juvl4wwRSO6akPmc3Zcjzn7ty7rx0e6oow9ETF0Xvf9xo7qdW3EZUm7EHV1ApkC5fW84KROOdMPGCrRMS6yHgdtPnNVWOai9lOe1aMI1AQ2ge/SGJLPEZqKW5ld3eyV4871FHeC8lRT9V7am5lX0MX49CxLUuNdUMEO1tx5TJ01sJ9+eL6rRpvrSJSdgEjRn2/lXXFIr4/WMIXka8IQObw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW5PR11MB5785.namprd11.prod.outlook.com (2603:10b6:303:197::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 14:14:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c%7]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 14:14:33 +0000
Message-ID: <79edf8bb-351b-4c99-905c-c97d6e0c5cf1@intel.com>
Date: Mon, 11 Dec 2023 19:44:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Update dfp caps only if its a branch device
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231211051127.2774407-1-ankit.k.nautiyal@intel.com>
 <87zfyhxgp8.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87zfyhxgp8.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0193.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW5PR11MB5785:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a069052-46a1-44cb-6956-08dbfa537f03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l4c9F4bNUFjwjc61Yn1zji2KNb51THzkgpKlgd9c8H5GvnEXlQzAW6TqTxjgffK+UByIeQeP+6weaZF3Igf0/fQ5D3aFfb1jJwNIEvAaBBJtfCML6eOAeUms95HYgtKSAzUJsrhfEsHGBy+x6C8b0ruUEyPRkQ/eAne31SDNpGv/TUNe2PW9oK7ZE10VETYt0yf9eSs6bkHIwt+V8Tei5dZcyhI4DbQIF4Zipge2ygd3v72LePwbKXBtQAMeCDGGmTwK6vHyGzr/tImDx0Vk80setpg7m7f0k25eVMvzzBTPYKuIYYbx2KgLkr+zB1DiW4U7+K56vEekNQYN+n0DJ576GXqZb5HvYyx/1O+3S3Vu9asv0AYJmlJcEwkqMIpN+6k7UurjOAJOj7fq6yt4NzyIdjyPGGyfn5d+x2GtU6I5XBx765SdKiDQKw8k49+u6UzsoDLIrOMmDyvPxNgKO8jmpW9GKY8sfShY14xZLm84w2O0IrI789wrCeA4rYOzROzmJAcnvGkdzA3gG4d40s5t6IDE95N0xGt7VbW4EiBRP8sgZCnSbckoDV5YmsuaTxk+jQ4UXD57rxfBBigMb38pswjZ/cX7WYzxDM4YKNDjvQLHUM6Pp8RpbGqoNKeJE6/rYYlfbZT9uiGg9skROw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(136003)(376002)(346002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(6512007)(55236004)(53546011)(6506007)(5660300002)(26005)(2616005)(36756003)(66946007)(6486002)(66476007)(66556008)(2906002)(83380400001)(31686004)(82960400001)(41300700001)(478600001)(86362001)(8676002)(8936002)(31696002)(15650500001)(316002)(38100700002)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFNWMjc3MkpOaElVNVNpS21pUUo2NDRKak84a0xMV1UrRkRXOENwNmlZTXVi?=
 =?utf-8?B?WTBZSnJ0TGZSd1RBV3lXQ1QwRUMzRUZvZEs5SkpGUytkekxQL1czenhBL0VB?=
 =?utf-8?B?NEkwMnlEdkpQYTVYbHUwKzVFWGhwZ3VLam8vMlhQOFNIRE9zeWF3MzdkYy8z?=
 =?utf-8?B?U3BILzYyNWZCYnkzYWJrL08vUThZVDlUQVZPTnJEYkdzMFJvN1F5ekNHOHRZ?=
 =?utf-8?B?MUJZMEV6VTRYdDVSa1NONGloeUt3emYwN0hCR3MrYmNFL0pQVjNHM0tjcjFo?=
 =?utf-8?B?cVF5YXVnWjdXV1R5RzQvRGJSa2pjbC9rMVZNaisrQmg2N3FWZC9yb1djM053?=
 =?utf-8?B?dVJKUWFXYzVCN0tTZUZGZERudy9jZktldkRPQnIzRHdscFBHWlRiSXlGQzVt?=
 =?utf-8?B?T3FqTVU4OXR6bE9lYko1ZGJwd3E1L2w3WXlTUFZuM0xHeldWc0pqRERDSXpM?=
 =?utf-8?B?TDNvZUgwQUllUGZXOGVBL2Z5ZkFZZytGOG93L0EvOFRNNmFaUjdvd1FtNnUv?=
 =?utf-8?B?ZEwzT0N0bm55amVGZUxmT0hsdzYyTGkwZExzSmpCR0VERWVzVG9mdkF1TmJ3?=
 =?utf-8?B?aFhrazdyZ1lDbEZmaFdQK1FrcTNUMWV1bkV6cHFXSkhsOGRTWVpuRHRnY3Vz?=
 =?utf-8?B?aE91SmJZOG5Pa0p1UkxkOHJoNVhXVXVDRGFZdWsxMkhBbmVrc0VZQTlWVHBv?=
 =?utf-8?B?Wk1ib1RyaWdTdk5YRDhlRFRMa0xkMjRqK254MFRNVmxiS29SUWh5bTdwcVFk?=
 =?utf-8?B?TUM4UGVFdGRzZUUyYUE1YkVVMDQ4WDBJcjRwT3N2ek91aHgvUklpcWhvcEVr?=
 =?utf-8?B?WnhkaUdpTDUrUUM4ZlR5dVFyVnl0OGdJMmNoVWdWUmx1bnZSWkEvb01qbHg2?=
 =?utf-8?B?TlRpUEY3K2JKazUxbWFvbG5DUXBFc3NuZlBPOHZYODgweWswN1hxMkx2cG1s?=
 =?utf-8?B?Qy82b2E3RFpOVXBaTGdFMW8zeHdId1ZHUFkwOUZXRWhiR0dSSGRkNTR6QjRQ?=
 =?utf-8?B?cktVRlVISFpiUW1PdTJMTWw0S2o1dlh6cVVaVHhLRG5YTjc2Qk5tRXZKaWRE?=
 =?utf-8?B?RnZGSXRuRGZtS2xzeWczWDZmZkUxeHRUSWdmeHl5RzFHK3FRWnAxWWY5bzdm?=
 =?utf-8?B?RFlnOHM0MHp0NUhpVVhHdVYzdWM3QlNOMnM4RGhsU1NYMktzbFVoYUlVU2hI?=
 =?utf-8?B?dU9GVGlUWWJOV0ZxL3hsZG95b1NYdklGazhIT1RqdEJoL3Jub0MrenkzMW1X?=
 =?utf-8?B?ZTZGTFdXeE5TcHlIUldiTk1GWTZhZVJiN25qMklwdHlQTjFKa1lYS1AydnJo?=
 =?utf-8?B?TUk2NUQxb3RzbEJZZzJ0eHU2cSt1bUFTRkJ0OU9RUTgwRnJzRElocDYybUxS?=
 =?utf-8?B?ZWdoTW1kYTZZdFJWeVdwYng4ZWpEU0t1RUh2cjNIRHlRYU5zL21hTVlZaUpU?=
 =?utf-8?B?a0NpRDZYc2RIenZXend5R2c3ZWYxNEJEclpjeTJoUWN2YjNCdXRmYUNEb2JE?=
 =?utf-8?B?QkVsdWQwZ3A4RjhmMUdnZ2grWE96aFA2anJMZkVsek9jUStzZ1JXemF1ODdu?=
 =?utf-8?B?bUU4c1ArSjVBYXJwRUVHY25MbXBQeFF1NkpiOGFhZlZVV01EekkyWHJaUnNo?=
 =?utf-8?B?UW1mZmZXTlVWVmVXazF4UW96UmRxZU93clY1TUh5N1ZEc2VLQ0xxdGIxczBT?=
 =?utf-8?B?V1lBQjJhaFVLaGtBL3F4alhLSVlpMXVhMkhTNyt6SXExSWZLNjhIa25ueHhm?=
 =?utf-8?B?ZzVGYWZUdEZTQ3dNMGdVVWl4eWdWSCtaU0ovdVJjZTJkeE5ZQlYvbm02Mk4r?=
 =?utf-8?B?LzJPSng1ME1uQUdDcXIrZVdzUUhBaERtNDFMUWJTUDFIMkRpRzUxZjV2QWtL?=
 =?utf-8?B?cSt1dHJnZVJUTVNKMXpFbDFuQmZSdGoxNEZZRHA3czVtUHl4c09UUFRCTmpJ?=
 =?utf-8?B?bS8rd2EvbTFyNFZiaExGd25LTVloN251b0hNTXV6eWZCY0gwOTUyYWw5dmVx?=
 =?utf-8?B?VStBMkRJak9LWTdSN0J4bktGV2tGekV3UHcwK1ZsMkE3Rk15UUcwblFlZFN3?=
 =?utf-8?B?Zk1jN3VpL2pMTDJzVmhiaUhPV0N0T3VMaW1UT09CK2MwTzFSNVM3Q2wyeVhy?=
 =?utf-8?B?V3MxQXN0aWdkdmY2TlZEZEZMVkFDZHFjL3MxekZlek1NdDJLbFJ1SXNlYlVh?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a069052-46a1-44cb-6956-08dbfa537f03
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2023 14:14:32.7034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H/VJFSyDqYfSYC47J5PTVhH4DbFenMJuwQ/afERadbit2FZPdA7teOIxQE/QDHJ+bgFG26dj5fX381s9gw0gd/u5LR3bm9dgIRqfJS3IK1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5785
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


On 12/11/2023 2:24 PM, Jani Nikula wrote:
> On Mon, 11 Dec 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Avoid checking for Downstream Facing Port capabilities,
>> if its not a DP branch device.
> Why?
>
> The commit message *always* needs to answer the question why. This
> commit message describes what the patch does in English.

Hi Jani,

This was in response to a failure seen sometimes with some DP/eDP panels 
while reading DPCDs  meant for PCON capabilities.

Perhaps, I Should have started with this, instead of being lazy, 
apologies for that.

Since downward facing port capabilities are for DP branch device, I 
wondered if some panels would have problems if we read this.

However, I am realizing, that the DPCD read should still work and 
perhaps read 0x0 even if the device do not have the capabilities.


Regards,

Ankit


>
>
> BR,
> Jani.
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 3b2482bf683f..bef797b63000 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5502,6 +5502,9 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>   	struct intel_connector *connector = intel_dp->attached_connector;
>>   
>> +	if (!drm_dp_is_branch(intel_dp->dpcd))
>> +		return;
>> +
>>   	intel_dp->dfp.max_bpc =
>>   		drm_dp_downstream_max_bpc(intel_dp->dpcd,
>>   					  intel_dp->downstream_ports, drm_edid);
