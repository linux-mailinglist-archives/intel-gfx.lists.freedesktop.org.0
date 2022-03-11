Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6264D5F06
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 11:00:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D88B110E885;
	Fri, 11 Mar 2022 10:00:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9CFC10E885
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 10:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646992802; x=1678528802;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6BhSePAmvIdxnaed/eVRpsw/3EZBCh40dLG9Mg0l/1E=;
 b=nmP1Rw+V7C6dbNlR+QRo23ke3qEIB0WrImI/tNLRucJ58f8IeZ4dRufi
 CdHHN3CyZcFsrUcGPUIfIuhJkGWY0O/nH4sOF78MPkXVqENxePvCarBAR
 mBrm4F5pxvKRPdbVX3fymh1vTyqeWhDWHsBM5loFUdpjl51EBP6Qp+7cl
 lZPX9nG1LrD7WwZbqGRXFB9oAnTm/cStpWqrppvb+p3O9QFV9wJNgC1RF
 h1rWXhC9aJb86yvdi5h3ccqo+PHtYtF7hp74Ekt39zWm7KZ12s0WSkEnr
 tkERD7bvAb9ci8cz0Ef8v7ccYraSIlEk2NolCwZwOjE3UIb2CMrCyxDTj g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="237716549"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="237716549"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 01:59:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="642934000"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 11 Mar 2022 01:59:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 01:59:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 01:59:48 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 11 Mar 2022 01:59:48 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 11 Mar 2022 01:59:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hX963i/RzUFJbt9OY3y7L+EHOzJaA3tEpiloJfj+VjtffpEMipy/zjOWHJC4PNOD3O1uewyuzFUHYjIjlgoLgOtOMISK3T0/ewjsM8MuguE4wOkt/DvwaSLs7t3rLsPpHoiD8WLO3lnikGpHdROAvNayvSAedMNsf34BWCNZegeKfb9vYUFJ9CFFDNLzNMgSEUZAwUYw+fXd2sWyejY37WqLpYZE0RQ6M6WXF9kmbZ8Ob23RN6k7GwljPzndCEAtqhVk1Jo7s/x7JU42naYV2KsjSPLzaRID0Pg0iAeL3/ZP00yD3JIRY/ZLs+FID+vwNn0OsVeA5zHnkpcknQShaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FSztiWL0ja5k6CzFV2mm6xVvhlGtNEQzzjQD5ftcKKE=;
 b=KFRQFnQzIHjBwyKiHP1dA+ohszqQi/eHHFgKIaZWNSYtovrbe3NMbXOhNrw9bBYo6rH0/COvtPlNSZw19MxDLZ4r7uP7HJRTOmJ1zbON5SAk+gWrWzMvRg/Kbd2xvcM4V3ZlrrDNpCqxip/4GvkH6M4MCxjAVxuhr6tXghnhTrk2eLBUQXYBK4lv5eEldm4U8gGI5dWTY2ZrZDofjuKiIDWcb1K3k78CFSh/HvkqW2OkVMlUoSXESpYJV9iKTUFwNrndJflJpTVBiIhY0tbLbNfSZPTC9p+fhELDqQWLTK99M3QWuLzKOmit3J9SHiBDAjAqm0etSTvYvzRXfceR1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 SJ0PR11MB5038.namprd11.prod.outlook.com (2603:10b6:a03:2d8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.24; Fri, 11 Mar
 2022 09:59:46 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890%11]) with mapi id 15.20.5061.022; Fri, 11 Mar
 2022 09:59:45 +0000
Message-ID: <00efb6cf-4ea0-7c30-46fa-688e57ac391e@intel.com>
Date: Fri, 11 Mar 2022 01:59:42 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Matthew Brost <matthew.brost@intel.com>
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
 <20220226095541.1010534-2-alan.previn.teres.alexis@intel.com>
 <20220310053055.GA24765@jons-linux-dev-box>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220310053055.GA24765@jons-linux-dev-box>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0PR07CA0044.namprd07.prod.outlook.com
 (2603:10b6:510:e::19) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 380cce16-f619-4041-a4ab-08da0345deda
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5038:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SJ0PR11MB5038CE347D5ED7ECCDB0C9568A0C9@SJ0PR11MB5038.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aukMH/y/qfnPtoosiBjAG2WQV8Z+v/tyBq5U+en9s+2PJkRl+b0/LSsWcQUKLAgMyyHSybecNh2UTgR4blYrt/vwvz+VtHFHSBfV3R1h+ULZjgVPg1MCpoete90Pu/Qcz7Om3LQw2WTTDl2DNNm4C+fd0kxpjvElEzSeNy7u0i4Nd+/X45/i2kf/bsutcd10dkHZGhxRWLOPVXi+GsHqem1BIPGyAAlY6nFdzdju8hJHwN8QasMReZBjaAphh2ZV5DomrGvR0A/eHS3/YnAhrFEQIIjlz4ZIySBbCZN4UD98MZJwDuu3aezl4sbzugM4Vq6BBEXXYQVUyWfoGGb1uheUi/2F3CNAMh644SS7rbd8lJFLcMrHRaxCQTSgSumCrOAR+O8dsqDT1+faCC6Ed/ld9gaA2bb+2p9vjH41CU3exaU1EAEZfhskg+ZqYWBVsSKz0raBe3FsgEbA+VMcnbWJLCPrnDR6O8Pc+uKgpJgqO8o3OqbkOhlmBcMr+L9i52880h+1p3IueR2Bl6mD0p8FDTpH4nzmXg0w/BwEJXst2sV0pfp99yYb77W/Q5XajeJSRxFQMn8pgfUvZk8nAMeHJlmY2jMBXeARw+DuwzUsnE9fLNt4GhcOJyhftKGDMRvzKzR72shuMMG7kWMDkyD40ZdvdGLhIcVRjgdYALTckkW1QrTesebYebgbwkjN/ADSwZR6/79CoDRrsA93E9CovEhpkUBYmyQp6sK6TzM7N+N/ayKKRY9ZE8M3M9Dy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(31686004)(8936002)(2906002)(38100700002)(82960400001)(5660300002)(83380400001)(6636002)(37006003)(6666004)(6512007)(6506007)(31696002)(66946007)(316002)(186003)(8676002)(2616005)(26005)(66476007)(66556008)(6862004)(4326008)(6486002)(36756003)(508600001)(53546011)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmZTdFdONlVpWWdBOWY5VXhRcEMyRWpYRzJqTWt0U3ZXRExRODJhaktZOTVz?=
 =?utf-8?B?R1pEaGJYTUhJWWwwOE9WbDhjMWZ0ZnV1ZkVBaW9rVVN0SFpUOEtkS1ZDTzE3?=
 =?utf-8?B?NnNEWmE5RnBPeDVGSEs3Q09XMmxVZjZESjJoQWc5Z29HQnF5RXAwbjlCRytB?=
 =?utf-8?B?VVpXNkRKMjJXRVV3TTN1VG1BdjhnSHJvbEdkc2Z6Yi9iUGxHZmlrVS96dklP?=
 =?utf-8?B?b0VnRG01V0l2S1RFb1pUSjBHYnk2cFhBNC9PcVRZTXJ0dzRGZ000VzZObk1H?=
 =?utf-8?B?M2NLUnI1ZUg0WTh2eVRpWjdyWVJ5clp2b1lRMWp0MHYyZ3pURm1sK1h5MDho?=
 =?utf-8?B?cGpuM2E3RHIyOC9ZN3lyelE3OGM4V2V6UUNmTFlCU09xK2REWDdYdFhlVFFT?=
 =?utf-8?B?d0kyMXBwRVdCQnUyQk5xeHpGeXY3OXhYVXBDaHg2QlB4YnR4MDBkZWpiY1Jr?=
 =?utf-8?B?cHpOUjhWV2RXSWZ1Nzl5cGJvU3pYUkdMbWZpQWx6VURja2EvdmNqQytEaS9i?=
 =?utf-8?B?NGFXNXoyUmsxYUJ6N1hXODVLZmdueHZqRDV5cUZMbDhYWG5Pd2R0ZnROckQ0?=
 =?utf-8?B?Z09SQzVLQnZnRktkam81a0g3em9LN2g1RXYrdWU3TURhSnBsamlhVDQ3V1ZJ?=
 =?utf-8?B?dDVES2VmUkFnOUxoZjdISGJlSnFTYUxremlDMVhkZWhEeHhQdGkvSXdHSHhi?=
 =?utf-8?B?NW5kRWVDUzhjVkhSQnZ6aVJETzRMYlMycktFUkVLdzVoLzNPMTNXTUhYcUJu?=
 =?utf-8?B?LzJmeXlJYWoweW4vODFMcUtLaVpMY0E5am9RbkRvbGFUWU0wbCsxUlRGcDN6?=
 =?utf-8?B?SWdDeUF3SExCM0tZdko4NXY0MnQ2VlBRVGRqTzg5MUFrd21qMUx0WlhCUHFY?=
 =?utf-8?B?Nk9LRG1VOFdhTkQ0UjZNMVpCcDFKcTR2QmRIMzhUbHdaUXluRjdxWGdxUVdE?=
 =?utf-8?B?bEV1VWxjcnFSdWE2bVJJRVVxeHFUeDIrd2JORjBiRFNTZWJ4ZUtrRHJCTEIv?=
 =?utf-8?B?N2xHS1NaSnJXWEpMN2pTQVFNaDgrY2ZBVTZnSFB6ZXNDNlg4S01EY3JOUjNk?=
 =?utf-8?B?R3piUnlWSDN5OERoNnIyRDBWU3p6RjF2Z0VHWDl3aXJBdVl5UE9HK2Rpa2l6?=
 =?utf-8?B?R2lSbk5hdE9WOFNkb0FuVlRNdGJJMTI4Y2o0N3A1ajUxMUQ5UXJ3dmxFN0RF?=
 =?utf-8?B?NFo1Rm9ZTktnMzJYY0loYzhWUXZaRnJleDJtbVAvWUVoa1lRbGpDMUVGWXJV?=
 =?utf-8?B?MWdFbzBBY0JyLzhrQ0lnV2JNcTBBcnk1TytsUVE5WlV4UW1BVERsMzVCQk5p?=
 =?utf-8?B?OENvWlliSk5FaXJKSEpuNE1sekJXbVlHRzJlWjdqQThzZFZTMlViaW9DZ21B?=
 =?utf-8?B?YzBRVkpvdXZwNERGc00rWGxWL3VqTlNDWVZKdzdMcVEyNkFtM2NUYTkyd2JG?=
 =?utf-8?B?TVdVSkFrYXlmQ3lsQ2N6L1NyVVNYLzltQzNNajdCd1ZMNm15UytDdnJqQkJC?=
 =?utf-8?B?Y3lud3hidjNTVkFmV3hlZml0N3NLMythcmpTV2pxZEJRSWZ6eS9EUVFZV3Jk?=
 =?utf-8?B?eHV3ekd0VXpkZ3A2ZlBMQkFFZnJJN3pKdCsrVHRSSmJwMWtqeVlWU0VUdTd0?=
 =?utf-8?B?dmNMYWJ3T3dIWGhCRk16dldhRlp6NnJ0RllOWjF6bTBoeVlmbVJqT21QelFx?=
 =?utf-8?B?bEIxSVVqMDhwaHErdlcyTkVUTTFKV0FTMmVZa2RiQmxlTWY1b3ptdSt3SGha?=
 =?utf-8?B?L2prK2d2U3BsZlk5KzUvcW1QRnkzaGtoakxsTHNMVlo4bks5dHF2bHlYcjRF?=
 =?utf-8?B?T0dDcUtuTXFKWEVqQ1VUelFpUmFaL3EvcmFhZXFtWFR3dFRrQWM0MnBrTW5h?=
 =?utf-8?B?bXd5dXlwVEFiRnBsa3VSdGlubHlZT1lQSTc4Z2lUYXdkdVJGRi96QUs3UzNh?=
 =?utf-8?B?SGd2WUVtYmtiZXpqUStRU1R6NEdDekNBT3FURkYxQTNlS1Q5ZVRFenlJQ1g0?=
 =?utf-8?Q?hvbwYp7b8QTJBQPLTYatc1UjX6Hk6g=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 380cce16-f619-4041-a4ab-08da0345deda
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2022 09:59:45.4875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jeaC2G4bMhJcPJyeR+vGZbNC4tSP8S3vDJw3dvVVQCxZd1dYVYGTKZEV0sefqs3OAg/fC3WyQmSKXJaoeFBfTeFuGsQDuBZxfmRGE8yPjPnc/2PwDxW44fGlIbtCEw4e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5038
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 01/13] drm/i915/guc: Update GuC ADS size
 for error capture lists
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

Thanks for reviewing Matt.. On one specific open - have replied below. 
Will fix the others.

...alan

On 3/9/2022 9:30 PM, Matthew Brost wrote:
> On Sat, Feb 26, 2022 at 01:55:29AM -0800, Alan Previn wrote:
> +static int
>> +guc_capture_prep_lists(struct intel_guc *guc)
>>   {
>> +	struct intel_gt *gt = guc_to_gt(guc);
>> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +	u32 ggtt, capture_offset, null_ggtt, total_size = 0;
>> +	struct guc_gt_system_info local_info;
>> +	struct iosys_map info_map;
>> +	u32 null_header[2]={0};
>> +	struct file *file;
>> +	size_t size = 0;
>>   	int i, j;
>> -	u32 addr_ggtt, offset;
>>   
>> -	offset = guc_ads_capture_offset(guc);
>> -	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
>> +	if (!iosys_map_is_null(&guc->ads_map)) {
>> +		capture_offset = guc_ads_capture_offset(guc);
>> +		ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + capture_offset;
> This should just be capture_offset, right? ads_map is CPU mapped
> address that has nothing do with the GGTT address, it is just a pointer
> to the base of the ADS structure that can be accessed through the
> iosys_map* macros.

Good catch Matt...

note that "ggtt" is being used two ways in this function: [1] to memcpy 
content (register lists) and [2] to write a GGTT offset into members of 
ADS structure (the ptr to #1).

For the usage of [1] such as above, you are right, we shouldnt be 
including the vma's offset offsetting from ads_map. But for [2] we need 
both ads-offset + capture-offset.

for clarity, i can change the variable  name from "ggtt" to "ads_offset" 
and then reuse "capture_ggtt" with the rolling lists' ggtt offset.

