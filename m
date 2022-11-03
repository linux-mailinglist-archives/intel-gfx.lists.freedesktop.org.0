Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 585D361762F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 06:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 191E210E596;
	Thu,  3 Nov 2022 05:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE73010E59A
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 05:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667453407; x=1698989407;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fjsb6SIgppqJIO+eF1+BZn8SUyrNsYpah3e7jANx4Uc=;
 b=OiXJXM2hh2gzN4Zj74Xua2s+EedKRhgEJoEs02MRXYQUS7KgTQUNsolD
 p4CKli3CBFgrXvrvyzBnxz/d0mPyt9pRuXaDmr2rM8s1az4MNcTbAVG/h
 ADTrU+jE7JrEVW/sB/0DAV9ON8q22KLtFxsaoO6xPEtKVsvnFAwt9+P7z
 uAqMPIP3HbMBXOWiUSl/oYei7foGDL4VQPp0jEUrA3SXfCJhuPLgtVbqG
 jjWqBmV0ANZteDSKIl+/Es51nC3nSqeSsDywize80w9LuE4lM6dnkjqw4
 nbwi2Q33qhsw1TANNSv1HDfk2oiIe5Nv/VCzAzTPGQ295gGU37msQGwWi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="297045993"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="297045993"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 22:30:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="740041643"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="740041643"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 02 Nov 2022 22:30:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 22:30:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 22:30:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 22:30:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JFXVtmfZ16SRSV8zMg5RCrzMOV6FsqB2vulsIGlMcqyJ9btwWQd3sKMt6IkVtMgMPz0CpRSN45h9ATq6kwcxgXi0wjLVh6LrXxFUy0EIWawU6qHR6C40ciyIu4BWX85j2oyfjesthYnxteTXlUftTeitQn9kRzH54sYIdvx8G7H7nvi3O0SU5LBA+6EjmKAUscsqnBgJYHu8aBtK6XVRtt7wVHOQNb8VCdLnVfpNJvYNvIsE7R9PMDA9ORf1061TJFdFQeAblWV550F5r7Gt/GrC3rCZhgeqLDEg//lp5xpXNBgvH5G/NrjcjopiDpdkha5TU8/r5GUlBJzbUHU6Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AVzqCB1gG/IhJ3VxhfCI0O/YKq7rFnG9spYSQFWhYCY=;
 b=fOP18irPHXkfpmThQ4rONmoJ7nrrnN/JDRjcTSva62TQoshg8nNAPtRLX5k51CKA1CFrCSLq+kwc1qvgznZWd+WWZrVOfjwqxzb296TrpHFEtsg6cJ0kIws0Pszw21dRXcc7L13DjcAUveT6XW2ZYZyFdZ0VbMkSVwbT+DiIRHQBig0zwfFAETwoDI6oiKjuS0kDsmB1WHR5UYuyHoA0BeALYBu9iXjzDjsJZWmj47CJin5S3PFnkLGxUHkY5hDqt5O0MUIx9drUPN9699Tg4mF3ld6jMQQL0OWf33YhLFYwJfel93iihEdtp/DzzQIk00hotuG5UJcxeOdf9WBxkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5632.namprd11.prod.outlook.com (2603:10b6:a03:3bc::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Thu, 3 Nov
 2022 05:30:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 05:30:02 +0000
Message-ID: <8368a804-5692-9935-870a-aeaadda14439@intel.com>
Date: Thu, 3 Nov 2022 10:59:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-2-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0148.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5632:EE_
X-MS-Office365-Filtering-Correlation-Id: 897b2819-e1e5-4ad6-3beb-08dabd5c7502
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1pztnH2iIsOT1TbSs6fPw8fEIgY05CgG8jFDcDUKhOB0ter0zXAa+uj3b22Q3mh/7Z3Hlm/eVZHtWhuKBeb99dGq8LqYZk7gzZFZAnnQNIzAH3+n1Qvu7syv1U+nGf9F5gpZFUtoV+OvFCkyz46C1R/gIVgBDjBxGg3Ib1mx5Hl4rxXAoRlfq3d+3kzWRgKSc5+KXNQuvvQ7PwZ1L0DYClgDjUkmZ978v8pia4evgF399WaKlrC6IJc59RER1jK+jHGF4xcNmkWfRRogEm7kqWdN7h7oXM2kD6hAMleRuA6xDZ1B0WYqXZzqAw8r0S0YiKvoi7BQ6aKkFKqCSBLAOq/HdjmOK4BqHB6pUJrPvSozVdOObnrq4VXPNX8slEzbkqZL7u1nRMd1YBPF6v8vbSEO3Nhw6Q/LK/dG/7OSPwBZQnXc3VcBijjWdxnDEO6YNyKLYEoZOqdNfg6lGMY3tEaExE0TQ0wFmmTHtCRIwhDduBDYlHwsSaJoD54M+sSMskaYoZ4lDLm00gA3y0SYh24vn5M1x5uWzb3p1qcF58fmrftIVy0e2akf1OO4EOIuAVraOqr9zyaW4b4glY+DneEgCAkEydg9JM1KGJgkExzGfgu8noTgcFve8YmhR5caBUTMD0t30c8jAjpuLPu/TMxtGJxzhX8CMaT975amebM2wbJaY8t4dBvs+Yzhmcy+KFX1xJ/k5HX5UNoG5KLf0Cwka/MMEDjcXioVRc1ULlfcFNNapMolFFjh2Gw8oi8YjIg9PnOmW6NKIdS8fIzJtEO+1mBmYpCdlw3++74hlts=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(376002)(136003)(366004)(396003)(451199015)(5660300002)(8936002)(86362001)(2906002)(41300700001)(66556008)(8676002)(316002)(6486002)(478600001)(66476007)(83380400001)(38100700002)(6506007)(6666004)(82960400001)(186003)(31696002)(55236004)(53546011)(2616005)(6512007)(26005)(66946007)(31686004)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXJYMFE0QTdLWGxIa2N2aExpeDdBQ1p3LzVVSWlaZnJJMXJXV2V1SCtlRGEy?=
 =?utf-8?B?eklFSjNiMERIWmJNZ0JJK0xJK0RKb0psSVVRbkxnYncrMWYxbXROMFNVc0M1?=
 =?utf-8?B?QXZvNG4yck5adWdNcjNQTXlCZzE3d2xVQkJhbVNQb054cWFJczRIbmhXQ2o2?=
 =?utf-8?B?N3BxdUI2ZFp0aFZkQWNJZTlacm1CUWRPQ3R0eXg5MU1WMjVkWEJ4WWhubDRu?=
 =?utf-8?B?K2d4bWVpUkdhWS8vaXNYYTVtaWhXaE1LM3Z6WXp1b2ZqWGY3OCtuU0ppeU5B?=
 =?utf-8?B?VVpLblZZU0w1eG5mbWM4S01BYSs4b2Z5WmhHczZscWdweFVuZUU1MmpWZ0Mr?=
 =?utf-8?B?QjhoQWN1bDl5NXE2WHZOYUpBbzZKSkJNOTBNTWlGMFdQa2NyK09QOUt4T29J?=
 =?utf-8?B?akQxZ1NMN1NkQ1N5dEtGQVpqc0ZCY1pHR0ZrVldQdnRTVGVkZmFuc1Rsa2dr?=
 =?utf-8?B?di9kbUdKcE0rRHZqWkdkQ2o5SVArR0xoaitITnlqOXJTR3dTMndJOC9xcDJG?=
 =?utf-8?B?L25uWEJETkZyeTNmWjljN0RHR1lZT3hTT3lYci9yanN1N29sTnZkMTZCdjY0?=
 =?utf-8?B?b1d6RGFtRFRSMzRZNDhPd0NaMUlYeUxJYTZOSUZqSnR1R2hMTzZNZVlYVjV3?=
 =?utf-8?B?QlE3Q29ManBQbFdGNkRxaElJakF0VU1OcFpVSFVYaU50SmlKOW5td2RHckNx?=
 =?utf-8?B?MW1zWW8zR0hXem1DUjhobE92N3JZcVpNQmk2QjRTZ0RnQmV4bHVaMnBkblRI?=
 =?utf-8?B?QzlXb2I3VjBpWlljZkVPSDFQTUhlV3hBTWFhTm9VcWtvN1dyZmttSmJHQXdH?=
 =?utf-8?B?aEg5UjhUdUxsbWFNa2JmclZCejJ2UVJmYmNpdFFLVCtOK0JDK0NrQWdqclZz?=
 =?utf-8?B?V3oxcURyb2EvNzV6TEMvc29PTXdXY2VQOEZLY2RYRG1ia1NtVXN2Z1dTTWZv?=
 =?utf-8?B?SXNJZjlQN0tsZ3NEanM5T1JKNzByRm53N0dvZlZFMzRGNEVaY1hPY004RzJs?=
 =?utf-8?B?Skxtd1JXS0Y5OWtxMWw2cE1hd0U2U0t3MHZ3ZFVZdDFnMkgxdDY5RzdUR0NP?=
 =?utf-8?B?cEpyUXczRE5xdCtKTUNxVWRNbEpPcFBVTUhNMGM3OUM4RldLT1ZMRDJCMkc4?=
 =?utf-8?B?MDJrUk9DOFlONE5CL1ZpNHJSMW5jeVE1WFp0VHBTTFhrU0pLZWpLTm9NVXJZ?=
 =?utf-8?B?NTd6ZkYwOE04emtEMFpyM1J4b3lGNVRYRVdoM2VNL3ZOczRlWnV0K05zeThG?=
 =?utf-8?B?eW9XUjUzbUpJWTQ4RkRhcTFDRktBNGM4U2F4dlRPTFN5b2F1eXJYbDRhQkgr?=
 =?utf-8?B?YmFIZlJIWHlSMDBoaFkvWHFsU1haUVB0TzMxV3A2NHpPYVo1d2ZMWDh2RVlp?=
 =?utf-8?B?N3VldzdiajdSUkZjaG94dmRVTUxzTHJXQUJ2bEg0Y3VsYXpZYXgrU2VDYmlI?=
 =?utf-8?B?dU4ydmwyNkRTM3JGWjF1ck45akloRzZjU3dvN3dmeWo4UGhVUG1jQTVWTVVn?=
 =?utf-8?B?LzZFNXlqQjhJK2d2N1N3d0duOEdBWFVqNmlKbGR6dXRHNHhJQVRoVnU1dlUr?=
 =?utf-8?B?R3N2cCs4T3BYeEN1aWJGMTM3K3g0ak9lcnNCUStKM1RZVUVGNmoyRzhmdHIv?=
 =?utf-8?B?aWZqMndrSzVQVy9NL2JVRkFpckFIcUE2Z1cxVHZxZVNpUFBnaWZYdE1OL0NS?=
 =?utf-8?B?Und4MjdSOWt5ZWdqc2g5QzdtYjZxQnRXbUpvQzl0VU9BNFJNZVkvclAzYUpn?=
 =?utf-8?B?Zkh1dlF2MEZjYWxQdDh6dTVQbnJ1emVNZU5MZE5RaWc4NFR1VnFDeDR4c3Nk?=
 =?utf-8?B?TVRNcElhQVVyOERHRU4vZnE4ZWlxMGhrZ3Y5QjhmLytsWU55NlpFeDNrY2s3?=
 =?utf-8?B?Q0U2QVZvUERYVG1odVQvSUV0QWw0R0N2R1ZuSXhCZlNBNkp5N1R5TThRQ0Z3?=
 =?utf-8?B?dHJsWlVGOHJMWXB3K2ZPZVRPNWpjU3I0TlpNcUVCQ1BwUHEwTStrQTh5d0U1?=
 =?utf-8?B?WTVYYlZiSm1XeENhVGg5ekhtbkNvRGZvVEpTc09STGlsdEJCUTN0d29ocTMx?=
 =?utf-8?B?QW5rLys5ai94K3RCanFsMlVHb3QxcGRaRXhFZkd1bVIvTXJUaTJ6QXAzaHVn?=
 =?utf-8?B?c05jTytlMFM4Y3NSQkc3Sk9hSVBqWk11ZnNnUHFPUFo1eUVIM1U5V0pmOEpL?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 897b2819-e1e5-4ad6-3beb-08dabd5c7502
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 05:30:02.7817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SG2S1VJDXtMjzJLUMd6K4CmfklVgj8G27qw8c+tQE3Fq/H7twaV+q0XaHKItqoMYsL8f46xJk6QhPqsweCzUTAMfcA1PfemmXAKLGlvYg3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5632
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915: Use sizeof(variable)
 instead sizeof(type)
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

Looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 10/26/2022 5:08 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Use sizeof(variable) instead of sizeof(type) in the hopes of
> less chance of screwing things up.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 4bb113c39f4b..92cc43d5bad6 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -565,7 +565,7 @@ create_linear_lut(struct drm_i915_private *i915, int lut_size)
>   	int i;
>   
>   	blob = drm_property_create_blob(&i915->drm,
> -					sizeof(struct drm_color_lut) * lut_size,
> +					sizeof(lut[0]) * lut_size,
>   					NULL);
>   	if (IS_ERR(blob))
>   		return blob;
> @@ -1895,7 +1895,7 @@ static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
>   	int i;
>   
>   	blob = drm_property_create_blob(&dev_priv->drm,
> -					sizeof(struct drm_color_lut) * LEGACY_LUT_LENGTH,
> +					sizeof(lut[0]) * LEGACY_LUT_LENGTH,
>   					NULL);
>   	if (IS_ERR(blob))
>   		return NULL;
> @@ -1930,7 +1930,7 @@ static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
>   	struct drm_color_lut *lut;
>   
>   	blob = drm_property_create_blob(&dev_priv->drm,
> -					sizeof(struct drm_color_lut) * lut_size,
> +					sizeof(lut[0]) * lut_size,
>   					NULL);
>   	if (IS_ERR(blob))
>   		return NULL;
> @@ -1973,7 +1973,7 @@ static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
>   	struct drm_color_lut *lut;
>   
>   	blob = drm_property_create_blob(&dev_priv->drm,
> -					sizeof(struct drm_color_lut) * lut_size,
> +					sizeof(lut[0]) * lut_size,
>   					NULL);
>   	if (IS_ERR(blob))
>   		return NULL;
> @@ -2009,7 +2009,7 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
>   	int i;
>   
>   	blob = drm_property_create_blob(&dev_priv->drm,
> -					sizeof(struct drm_color_lut) * LEGACY_LUT_LENGTH,
> +					sizeof(lut[0]) * LEGACY_LUT_LENGTH,
>   					NULL);
>   	if (IS_ERR(blob))
>   		return NULL;
> @@ -2034,7 +2034,7 @@ static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
>   	struct drm_color_lut *lut;
>   
>   	blob = drm_property_create_blob(&dev_priv->drm,
> -					sizeof(struct drm_color_lut) * lut_size,
> +					sizeof(lut[0]) * lut_size,
>   					NULL);
>   	if (IS_ERR(blob))
>   		return NULL;
> @@ -2087,7 +2087,7 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
>   	drm_WARN_ON(&dev_priv->drm, lut_size != hw_lut_size);
>   
>   	blob = drm_property_create_blob(&dev_priv->drm,
> -					sizeof(struct drm_color_lut) * lut_size,
> +					sizeof(lut[0]) * lut_size,
>   					NULL);
>   	if (IS_ERR(blob))
>   		return NULL;
> @@ -2138,7 +2138,7 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
>   	struct drm_color_lut *lut;
>   
>   	blob = drm_property_create_blob(&dev_priv->drm,
> -					sizeof(struct drm_color_lut) * lut_size,
> +					sizeof(lut[0]) * lut_size,
>   					NULL);
>   	if (IS_ERR(blob))
>   		return NULL;
