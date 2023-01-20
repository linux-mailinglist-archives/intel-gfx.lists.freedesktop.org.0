Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096486752CC
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC78410E0EA;
	Fri, 20 Jan 2023 10:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C428210E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 10:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674211948; x=1705747948;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0pWySsEkp6+biK2f7Q7oDFZ2Cav8hUGUgs5nyYqT56Y=;
 b=ASz2kRFUWXx0ZlFtgqOgqR+/gGOMbRqx+SqlKF+1kiTyKVt0iQpfu30s
 D5Jr/gvx92IJhuJWy+Koe0aakDiNBajashD65YnRYJHH+GSorxFyL7LZI
 ofp929GtWXePU8gSmFTjbDCUGMui6T+35sZOFTM/57mV6pAgRphGgTGRg
 7WqkNnBnohRtG4bwPo8LlsyXr9zOP1foi0dxW0E+hsQymPR+JtTqmS+tR
 RabMpVakf6QMLPMKVMvPE/ByZLg7lwuSA+iC85UgNWAXyWCDEslqV5Aky
 sIf1RLeGhEtttn3sv1a9Isj9XNjjbzgCAzOy5GA25CPvsAem26h28c8KN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="326830976"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="326830976"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:52:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="803034733"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="803034733"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2023 02:52:27 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 02:52:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 02:52:27 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 02:52:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZvPVLBoe4dI5mivGY5pRonwo+3MXRSFUNPQZ1MOMX3VxRFh8enl1WVLgUtBuROdSex7tdPMmTIxLOQYjq+VinljFOB2fL8akuCqcIhh3WO/FyJmE/ZCzCUv9dHmxsxIJOCcXuTTircOYrdO/C0IPwFRo69oAC/HgkzWuLhdEnyjpJSjOnbbrtcKcgxYktUaCw9MN79BHsbChl/MsDehQIEpZf+cd5hzghMKdw6vyDmu07lVv4syrCV54/MmNK3LgfY9xqYhQ/x8S3zCWAYPb6c6C1Wl5JssW4U/wSVOtI/3JssEp78zbiuWD1GmjNlA7hQzVb8hH2dV0NrRa0qcolA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Od8kBWmXFAbRNASyJknuOagYwagCtEtH6n+qvQqnmw=;
 b=TQ09eWbs/CTyp17O38QKatVwtSKfk+n9PKAW5jEt7d3k7Wh2wAKf0+0bTmodYMfnrHRD7NrehUtZjWg0awJCW7r1QxHeLN1A0iiLbF13ht7++XAWfWHr2utDeaXCsyP1u1ZnY2zX5UIxwXfBBdVt17vUGStQhjo57OyECpO6Ke5hye7oKMAV9n8DqiPtSNLl1fQRsw7gWbZui6va6NRUDgTw4sTtdz2IPP4YVlz5fU3ZDjqZjHbouumzPh1MFYhtaU/xWguGIL1mi1ZfXwuWhvf/M5R+0EQaf3ik7O8FrSxYzbtcDIKQEaaVdQM3Tp1ex+SiwqD6rO7TwYsUcPvzCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Fri, 20 Jan
 2023 10:52:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3998:4e46:9501:2786]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3998:4e46:9501:2786%9]) with mapi id 15.20.6002.027; Fri, 20 Jan 2023
 10:52:19 +0000
Message-ID: <59b891b5-1d78-4cb1-9ad4-7ac19975de58@intel.com>
Date: Fri, 20 Jan 2023 16:22:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230110105732.1390596-1-suraj.kandpal@intel.com>
 <20230110105732.1390596-3-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230110105732.1390596-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0138.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM8PR11MB5621:EE_
X-MS-Office365-Filtering-Correlation-Id: 54fbb98f-20ce-4c29-5d21-08dafad4669e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dDOWZU/YOJuMRE6L3Fwi7z5nWWiD0xeBpBJDm+P3NSSl9yust5d7GALUtzoGDXAy+48KQSPaWKOf+XqMnsyYegb9hRTd7s1718t+pRIb/qaJ4BB6C6ZcgRbt5NgUdOSMCN6wZ+VGqjDNHnW8WBYC9Ek5+YroUQJ/3bj9ePcG1BrbjTSYeaKtRiQiw7v4OkybOAPkemvklwWqs7/1fEi2bk58/I+S3G76xopFsTlhxzT0VqUeO8k87EVnEGYPKZqd1dcM0dCETczVDkJQVmLQH4sHqjOnOy5dmFSO9slHWqUZxC6b6Vux/agyEgD7z3ADc49wSOyMpMLoZPkU2tD1qm8YVRHMOPVTS0bnI3xBQ25fvqByiaS+K7wxK8tcWGSgKscYSoXVzSfeUFcyV5oryAnf+y0dn2pLJ1L7J6slhUcC6Xu9FsTtDjuxyn3a74GQHU3mNnZ6ptRuLHE5/d2+3MJHt7F0821cSMa38/HSmu3y5vcUO9iLSH2WhffwbhT/jaeKzCR8VWiRRq2m8Lcn5B78f5Hf3VH7YwiFPWF+uuVoww01XhbGB2nri24FdnR425R++zEmEktE3ApyBTiBEZ8kBHz/IrPjOmqllL5yzxL0zldjd2A9Xp7K4jbXhfM73F8936beojW4s6fE0mrU0kSvPkzXuk+7KsP6SIrHgdlNwf7faaVzzL7JrHkrupkmze6sLp1mNQO+VU9TBJ/sUmZdXQH9lGRfENRfNeN9GGI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(136003)(366004)(376002)(346002)(451199015)(6666004)(53546011)(6506007)(26005)(6486002)(107886003)(8676002)(478600001)(66556008)(186003)(6512007)(66946007)(2906002)(5660300002)(30864003)(4326008)(8936002)(41300700001)(66476007)(36756003)(38100700002)(31696002)(83380400001)(316002)(82960400001)(54906003)(31686004)(86362001)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEF5YmtidlZmK3Q1eXFCTUsrbGRtQzVDRmtZdGVHNjVSK3M4TnAzc0RJTllB?=
 =?utf-8?B?UVplazYzMXQ3Z1Ezc2ZsN3VQK3gxdjdjbmtibVFwVHNuanh2QkUvOUxkdkVN?=
 =?utf-8?B?b3liYVgvTDhWK1kydzgvT2p6SGdDK1J2VUVqZnNUMnIyRC9FVWV1VkZRbk9E?=
 =?utf-8?B?anhDT3NlcXFGRDJBYVd2TmRBL2hZckNtWXpFQWJtbjY2aXFja0VkMDRuekhX?=
 =?utf-8?B?aHRlWDQyL0dPUjFVRGdnR3ByTGZFSS9WQkV3OU1lVG5USHBaSU5QYmJ1NGp4?=
 =?utf-8?B?R0RhM2ZNZTd3dUhSNnhwZ2hqeVI4K3VoN29kL1BLaXIwTTBwcnpzcEt5UGZm?=
 =?utf-8?B?K3JCWlFHVWMrbHF4czJONWdrcUpPRzZHMFIvbWc4aXBuOGdsMHhHaFhiZlBt?=
 =?utf-8?B?K0RibCtrY2ZxUGxJNlliVlJrdjVGWG5lK1oweERBUUc4R1ZLN1JaN0huYldT?=
 =?utf-8?B?Si9CV1FWak0rOEptTXN1TjZxbitLWmluQlhzZVV5ZncycWNWNmRhREdOUUFu?=
 =?utf-8?B?LzVSNHFBNjZtYUllMzB5cFE1S0hKZzlyLzhQRHRTOUF1Ry9ZVjBrbVBGMGx1?=
 =?utf-8?B?aHY2NCt6SlVtbHhPRU5IZlVPMXNLZktHM3ZQb1lyY0tXS0YrT2s4Y3dYRmJS?=
 =?utf-8?B?R3pyNkVPUFNoU3JDcUw1WVFNMzN6YzBad3NCTFRiZ0MrQXV5RzMzMWM5RkZs?=
 =?utf-8?B?R1UwSk5pcTM2SExhWW9oWDF3aWxwZlcyUUVodmJHV0FIK2hDTzMyUjA2UGtJ?=
 =?utf-8?B?MWdrcG5Ma25uc091YlQrOVpsa0dqbGtFU09EU0o4R0s4ZTIrNkVUZnh1alVH?=
 =?utf-8?B?WElsZXdUd1llZ3pCVkp1Wlc1SmZ3L0pEZ2FyZjhNdEV2bnlGanhaby9VQXJq?=
 =?utf-8?B?LzZuN3pvMmRTQmt0TTBIVzNKdHczVys1bnJnTHkwMjNLaHJqQlpaK0FiaVlM?=
 =?utf-8?B?andRWnhWcW0rcVVpd29oWENnMkZFMUlwSG8wTU83NEY3QlNORlVCUWpWa2kv?=
 =?utf-8?B?blJoU1BSVlBQeHdWRXBVSGNBRDlibFBNaUZjTlNQaHZHRlMyZTdmcllOTzhW?=
 =?utf-8?B?SERTWTVCdFUxVFIyM00ySjV2VGFOTXdVOVlBanhRa0trNGI5eS9kMWJFNE56?=
 =?utf-8?B?a0lyV2pLd2gvTHgyTEtpdVdtV0dvb29QaXVlYUZZc0c0QXFzL1ZJTUtienVT?=
 =?utf-8?B?TEJ0VWhrOXZRaTdFaVFkVXBmL2YvU1ozSm4zcm9QQzVhYSs0SGJFNlJWdHl5?=
 =?utf-8?B?WWdzRmo2T1h3OEw5SFlrSTZiOFRQRVRkN2FnUE1xN2E2Y2hMRE92QU5JM21S?=
 =?utf-8?B?bGlLVXJOSnB5aGE1SFNZc29Fb2tBVFd5K3d3K2gyVllYbDhQU2kyY2lkLzQy?=
 =?utf-8?B?ODRFY3ZhYTY4RXBoYUdHWUVJT1JyQTVyalFvT0NuMFRGUTNPUS84aTlTc1Ny?=
 =?utf-8?B?YWRiaFo2SFNxMk5DNElEcVlxbDkyaWYzY0ljbFpKZ01mbFQ2RHFTcmVlZUxp?=
 =?utf-8?B?ck1sUWVUZUtYaFNnRWg2bzliM1N3QXQyUnNIem5kZW5ZSXpxNnk2aml2emZX?=
 =?utf-8?B?WW50cUZYd2NDYkVXZnYrK1U4d1A5NUU3OUdGY1ZnNFA3UmpVdTdKOTlIQ1g4?=
 =?utf-8?B?T2ZtT0RnRTN1emFlTDF6YzNSNDJYVzhUb3cxTlo2Rzkxd29MbE1TZzVya3JC?=
 =?utf-8?B?VWNETFMrc0FqeE96d28vMitjL29kTXRBYjkwT2xkUy82RzYwdVp1alZ2anR0?=
 =?utf-8?B?VFI3UjhVc1YwZWVnUVhJd0JVaTgzT0pGVVlWc2Q4NFBwaGx2M0hQTy94NUlR?=
 =?utf-8?B?d3FtUFFxS01qcXZTMjhTVTE4WFNnYU5WVUhhYVdOODRHQW5JdE1kSG1XK2N6?=
 =?utf-8?B?RFVLdFd5dkhmSGNLMy9SdHE2TDFsYkhwang1eFlCWVBQZG1GQytPWWN4TGl2?=
 =?utf-8?B?WWlIcW1HSjR1c3JIQmxiT3R5WnhPNDVSMW9PcUI4Mm96T2lCY1NvQmlHNFBu?=
 =?utf-8?B?QW9QWnpOWWpma2xGWERicEoyL0lGZGsyNG1Od1JkNWk1aFp6L0RQQ2c3Y2E0?=
 =?utf-8?B?RFpOcmloL3Z1bU42YUpUT1lDaHY4S1NmOVNaeW43WlhQNE9YRjRZUURvVm45?=
 =?utf-8?B?YzdXOU56NEdGQzRsd212TUdJb3pybms3eE8yMWFSZVIrRG5wNUp0MDRTaXZ5?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 54fbb98f-20ce-4c29-5d21-08dafad4669e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 10:52:19.1604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t98gpNJ4bViszA6LkFxXbK7P9zwIPHCrn56abUJ0ttM8R+9W5awBW0SJFNOq03Z+hhj3SE1Fi7WKVksQQG0I9AaQNIY2tgSqC1+CUi0Zluk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5621
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 2/6] drm/i915/hdcp: Keep hdcp agonstic
 naming convention
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
Cc: jani.nikula@intel.com, Tomas
 Winkler <tomas.winkler@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Patch looks good. But I see there are few formatting issues and places 
where documentation is still mentions MEI FW, I have mentioned the same 
inline.

With that fixed:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 1/10/2023 4:27 PM, Suraj Kandpal wrote:
> From: Anshuman Gupta <anshuman.gupta@intel.com>
>
> Change the include/drm/i915_mei_hdcp_interface.h to
> include/drm/i915_hdcp_interface.h
>
> --v6
> -make each patch build individually [Jani]
>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Acked-by: Tomas Winkler <tomas.winkler@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_display_core.h |  2 +-
>   .../drm/i915/display/intel_display_types.h    |  2 +-
>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 81 ++++++++---------
>   drivers/misc/mei/hdcp/mei_hdcp.c              | 58 ++++++-------
>   ...hdcp_interface.h => i915_hdcp_interface.h} | 86 +++++++++----------
>   5 files changed, 115 insertions(+), 114 deletions(-)
>   rename include/drm/{i915_mei_hdcp_interface.h => i915_hdcp_interface.h} (75%)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 57ddce3ba02b..de71ff6ad80a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -368,7 +368,7 @@ struct intel_display {
>   	} gmbus;
>   
>   	struct {
> -		struct i915_hdcp_comp_master *master;
> +		struct i915_hdcp_master *master;
>   		bool comp_added;
>   
>   		/* Mutex to protect the above hdcp component related values. */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 32e8b2fc3cc6..81d195ef5e57 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -43,7 +43,7 @@
>   #include <drm/drm_rect.h>
>   #include <drm/drm_vblank.h>
>   #include <drm/drm_vblank_work.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_hdcp_interface.h>
>   #include <media/cec-notifier.h>
>   
>   #include "i915_vma.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 6406fd487ee5..262c76f21801 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1143,7 +1143,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1154,7 +1154,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->initiate_hdcp2_session(comp->mei_dev, data, ake_data);
> +	ret = comp->ops->initiate_hdcp2_session(comp->hdcp_dev, data, ake_data);
>   	if (ret)
>   		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
>   			    ret);
> @@ -1173,7 +1173,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1184,7 +1184,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->verify_receiver_cert_prepare_km(comp->mei_dev, data,
> +	ret = comp->ops->verify_receiver_cert_prepare_km(comp->hdcp_dev, data,
>   							 rx_cert, paired,
>   							 ek_pub_km, msg_sz);
>   	if (ret < 0)
> @@ -1201,7 +1201,7 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1212,7 +1212,7 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
> +	ret = comp->ops->verify_hprime(comp->hdcp_dev, data, rx_hprime);
>   	if (ret < 0)
>   		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n", ret);
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1227,7 +1227,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1238,7 +1238,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->store_pairing_info(comp->mei_dev, data, pairing_info);
> +	ret = comp->ops->store_pairing_info(comp->hdcp_dev, data, pairing_info);
>   	if (ret < 0)
>   		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
>   			    ret);
> @@ -1254,7 +1254,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1265,7 +1265,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->initiate_locality_check(comp->mei_dev, data, lc_init);
> +	ret = comp->ops->initiate_locality_check(comp->hdcp_dev, data, lc_init);
>   	if (ret < 0)
>   		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
>   			    ret);
> @@ -1281,7 +1281,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1292,7 +1292,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->verify_lprime(comp->mei_dev, data, rx_lprime);
> +	ret = comp->ops->verify_lprime(comp->hdcp_dev, data, rx_lprime);
>   	if (ret < 0)
>   		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
>   			    ret);
> @@ -1307,7 +1307,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1318,7 +1318,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->get_session_key(comp->mei_dev, data, ske_data);
> +	ret = comp->ops->get_session_key(comp->hdcp_dev, data, ske_data);
>   	if (ret < 0)
>   		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
>   			    ret);
> @@ -1336,7 +1336,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1347,7 +1347,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->repeater_check_flow_prepare_ack(comp->mei_dev, data,
> +	ret = comp->ops->repeater_check_flow_prepare_ack(comp->hdcp_dev, data,
>   							 rep_topology,
>   							 rep_send_ack);
>   	if (ret < 0)
> @@ -1365,7 +1365,7 @@ hdcp2_verify_mprime(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1376,7 +1376,7 @@ hdcp2_verify_mprime(struct intel_connector *connector,
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->verify_mprime(comp->mei_dev, data, stream_ready);
> +	ret = comp->ops->verify_mprime(comp->hdcp_dev, data, stream_ready);
>   	if (ret < 0)
>   		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n", ret);
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1389,7 +1389,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1400,7 +1400,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->enable_hdcp_authentication(comp->mei_dev, data);
> +	ret = comp->ops->enable_hdcp_authentication(comp->hdcp_dev, data);
>   	if (ret < 0)
>   		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
>   			    ret);
> @@ -1413,7 +1413,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_master *comp;
>   	int ret;
>   
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1424,7 +1424,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
>   		return -EINVAL;
>   	}
>   
> -	ret = comp->ops->close_hdcp_session(comp->mei_dev,
> +	ret = comp->ops->close_hdcp_session(comp->hdcp_dev,
>   					     &dig_port->hdcp_port_data);
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>   
> @@ -2145,8 +2145,8 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
>   
>   	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	dev_priv->display.hdcp.master = (struct i915_hdcp_comp_master *)data;
> -	dev_priv->display.hdcp.master->mei_dev = mei_kdev;
> +	dev_priv->display.hdcp.master = (struct i915_hdcp_master *)data;
> +	dev_priv->display.hdcp.master->hdcp_dev = mei_kdev;
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>   
>   	return 0;
> @@ -2163,30 +2163,30 @@ static void i915_hdcp_component_unbind(struct device *i915_kdev,
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>   }
>   
> -static const struct component_ops i915_hdcp_component_ops = {
> +static const struct component_ops i915_hdcp_ops = {
>   	.bind   = i915_hdcp_component_bind,
>   	.unbind = i915_hdcp_component_unbind,
>   };
>   
> -static enum mei_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
> +static enum hdcp_ddi intel_get_hdcp_ddi_index(enum port port)
>   {
>   	switch (port) {
>   	case PORT_A:
> -		return MEI_DDI_A;
> +		return HDCP_DDI_A;
>   	case PORT_B ... PORT_F:
> -		return (enum mei_fw_ddi)port;
> +		return (enum hdcp_ddi)port;
>   	default:
> -		return MEI_DDI_INVALID_PORT;
> +		return HDCP_DDI_INVALID_PORT;
>   	}
>   }
>   
> -static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
> +static enum hdcp_transcoder intel_get_hdcp_transcoder(enum transcoder cpu_transcoder)
>   {
>   	switch (cpu_transcoder) {
>   	case TRANSCODER_A ... TRANSCODER_D:
> -		return (enum mei_fw_tc)(cpu_transcoder | 0x10);
> +		return (enum hdcp_transcoder)(cpu_transcoder | 0x10);
>   	default: /* eDP, DSI TRANSCODERS are non HDCP capable */
> -		return MEI_INVALID_TRANSCODER;
> +		return HDCP_INVALID_TRANSCODER;
>   	}
>   }
>   
> @@ -2200,20 +2200,20 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
>   	enum port port = dig_port->base.port;
>   
>   	if (DISPLAY_VER(dev_priv) < 12)
> -		data->fw_ddi = intel_get_mei_fw_ddi_index(port);
> +		data->hdcp_ddi = intel_get_hdcp_ddi_index(port);
>   	else
>   		/*
> -		 * As per ME FW API expectation, for GEN 12+, fw_ddi is filled
> +		 * As per ME FW API expectation, for GEN 12+, hdcp_ddi is filled
>   		 * with zero(INVALID PORT index).
>   		 */
> -		data->fw_ddi = MEI_DDI_INVALID_PORT;
> +		data->hdcp_ddi = HDCP_DDI_INVALID_PORT;
>   
>   	/*
> -	 * As associated transcoder is set and modified at modeset, here fw_tc
> +	 * As associated transcoder is set and modified at modeset, here hdcp_transcoder
>   	 * is initialized to zero (invalid transcoder index). This will be
>   	 * retained for <Gen12 forever.
>   	 */
> -	data->fw_tc = MEI_INVALID_TRANSCODER;
> +	data->hdcp_transcoder = HDCP_INVALID_TRANSCODER;
>   
>   	data->port_type = (u8)HDCP_PORT_TYPE_INTEGRATED;
>   	data->protocol = (u8)shim->protocol;
> @@ -2256,7 +2256,7 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
>   
>   	dev_priv->display.hdcp.comp_added = true;
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> -	ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_component_ops,
> +	ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
>   				  I915_COMPONENT_HDCP);
>   	if (ret < 0) {
>   		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
> @@ -2350,7 +2350,8 @@ int intel_hdcp_enable(struct intel_connector *connector,
>   	}
>   
>   	if (DISPLAY_VER(dev_priv) >= 12)
> -		dig_port->hdcp_port_data.fw_tc = intel_get_mei_fw_tc(hdcp->cpu_transcoder);
> +		dig_port->hdcp_port_data.hdcp_transcoder =
> +			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
>   
>   	/*
>   	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
> @@ -2485,7 +2486,7 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
>   	dev_priv->display.hdcp.comp_added = false;
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>   
> -	component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
> +	component_del(dev_priv->drm.dev, &i915_hdcp_ops);
>   }
>   
>   void intel_hdcp_cleanup(struct intel_connector *connector)
> diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> index e889a8bd7ac8..0ff0bd07e385 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -23,7 +23,7 @@
>   #include <linux/component.h>
>   #include <drm/drm_connector.h>
>   #include <drm/i915_component.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_hdcp_interface.h>
>   
>   #include "mei_hdcp.h"
>   
> @@ -57,8 +57,8 @@ mei_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
>   				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
>   
>   	session_init_in.port.integrated_port_type = data->port_type;
> -	session_init_in.port.physical_port = (u8)data->fw_ddi;
> -	session_init_in.port.attached_transcoder = (u8)data->fw_tc;
> +	session_init_in.port.physical_port = (u8)data->hdcp_ddi;
> +	session_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
>   	session_init_in.protocol = data->protocol;
>   
>   	byte = mei_cldev_send(cldev, (u8 *)&session_init_in,
> @@ -127,8 +127,8 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
>   				WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
>   
>   	verify_rxcert_in.port.integrated_port_type = data->port_type;
> -	verify_rxcert_in.port.physical_port = (u8)data->fw_ddi;
> -	verify_rxcert_in.port.attached_transcoder = (u8)data->fw_tc;
> +	verify_rxcert_in.port.physical_port = (u8)data->hdcp_ddi;
> +	verify_rxcert_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
>   
>   	verify_rxcert_in.cert_rx = rx_cert->cert_rx;
>   	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> @@ -198,8 +198,8 @@ mei_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
>   	send_hprime_in.header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
>   
>   	send_hprime_in.port.integrated_port_type = data->port_type;
> -	send_hprime_in.port.physical_port = (u8)data->fw_ddi;
> -	send_hprime_in.port.attached_transcoder = (u8)data->fw_tc;
> +	send_hprime_in.port.physical_port = (u8)data->hdcp_ddi;
> +	send_hprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
>   
>   	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
>   	       HDCP_2_2_H_PRIME_LEN);
> @@ -256,8 +256,8 @@ mei_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
>   					WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
>   
>   	pairing_info_in.port.integrated_port_type = data->port_type;
> -	pairing_info_in.port.physical_port = (u8)data->fw_ddi;
> -	pairing_info_in.port.attached_transcoder = (u8)data->fw_tc;
> +	pairing_info_in.port.physical_port = (u8)data->hdcp_ddi;
> +	pairing_info_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
>   
>   	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
>   	       HDCP_2_2_E_KH_KM_LEN);
> @@ -315,8 +315,8 @@ mei_hdcp_initiate_locality_check(struct device *dev,
>   	lc_init_in.header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
>   
>   	lc_init_in.port.integrated_port_type = data->port_type;
> -	lc_init_in.port.physical_port = (u8)data->fw_ddi;
> -	lc_init_in.port.attached_transcoder = (u8)data->fw_tc;
> +	lc_init_in.port.physical_port = (u8)data->hdcp_ddi;
> +	lc_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
>   
>   	byte = mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init_in));
>   	if (byte < 0) {
> @@ -371,8 +371,8 @@ mei_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
>   					WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
>   
>   	verify_lprime_in.port.integrated_port_type = data->port_type;
> -	verify_lprime_in.port.physical_port = (u8)data->fw_ddi;
> -	verify_lprime_in.port.attached_transcoder = (u8)data->fw_tc;
> +	verify_lprime_in.port.physical_port = (u8)data->hdcp_ddi;
> +	verify_lprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
>   
>   	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
>   	       HDCP_2_2_L_PRIME_LEN);
> @@ -429,8 +429,8 @@ static int mei_hdcp_get_session_key(struct device *dev,
>   	get_skey_in.header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
>   
>   	get_skey_in.port.integrated_port_type = data->port_type;
> -	get_skey_in.port.physical_port = (u8)data->fw_ddi;
> -	get_skey_in.port.attached_transcoder = (u8)data->fw_tc;
> +	get_skey_in.port.physical_port = (u8)data->hdcp_ddi;
> +	get_skey_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
>   
>   	byte = mei_cldev_send(cldev, (u8 *)&get_skey_in, sizeof(get_skey_in));
>   	if (byte < 0) {
> @@ -494,8 +494,8 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
>   					WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
>   
>   	verify_repeater_in.port.integrated_port_type = data->port_type;
> -	verify_repeater_in.port.physical_port = (u8)data->fw_ddi;
> -	verify_repeater_in.port.attached_transcoder = (u8)data->fw_tc;
> +	verify_repeater_in.port.physical_port = (u8)data->hdcp_ddi;
> +	verify_repeater_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
>   
>   	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
>   	       HDCP_2_2_RXINFO_LEN);
> @@ -572,8 +572,8 @@ static int mei_hdcp_verify_mprime(struct device *dev,
>   	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
>   
>   	verify_mprime_in->port.integrated_port_type = data->port_type;
> -	verify_mprime_in->port.physical_port = (u8)data->fw_ddi;
> -	verify_mprime_in->port.attached_transcoder = (u8)data->fw_tc;
> +	verify_mprime_in->port.physical_port = (u8)data->hdcp_ddi;
> +	verify_mprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
>   
>   	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime, HDCP_2_2_MPRIME_LEN);
>   	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data->seq_num_m);
> @@ -634,8 +634,8 @@ static int mei_hdcp_enable_authentication(struct device *dev,
>   	enable_auth_in.header.buffer_len = WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
>   
>   	enable_auth_in.port.integrated_port_type = data->port_type;
> -	enable_auth_in.port.physical_port = (u8)data->fw_ddi;
> -	enable_auth_in.port.attached_transcoder = (u8)data->fw_tc;
> +	enable_auth_in.port.physical_port = (u8)data->hdcp_ddi;
> +	enable_auth_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
>   	enable_auth_in.stream_type = data->streams[0].stream_type;
>   
>   	byte = mei_cldev_send(cldev, (u8 *)&enable_auth_in,
> @@ -689,8 +689,8 @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
>   				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
>   
>   	session_close_in.port.integrated_port_type = data->port_type;
> -	session_close_in.port.physical_port = (u8)data->fw_ddi;
> -	session_close_in.port.attached_transcoder = (u8)data->fw_tc;
> +	session_close_in.port.physical_port = (u8)data->hdcp_ddi;
> +	session_close_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
>   
>   	byte = mei_cldev_send(cldev, (u8 *)&session_close_in,
>   			      sizeof(session_close_in));
> @@ -715,7 +715,7 @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
>   	return 0;
>   }
>   
> -static const struct i915_hdcp_component_ops mei_hdcp_ops = {
> +static const struct i915_hdcp_ops mei_hdcp_ops = {
>   	.owner = THIS_MODULE,
>   	.initiate_hdcp2_session = mei_hdcp_initiate_session,
>   	.verify_receiver_cert_prepare_km =
> @@ -735,13 +735,13 @@ static const struct i915_hdcp_component_ops mei_hdcp_ops = {
>   static int mei_component_master_bind(struct device *dev)
>   {
>   	struct mei_cl_device *cldev = to_mei_cl_device(dev);
> -	struct i915_hdcp_comp_master *comp_master =
> +	struct i915_hdcp_master *comp_master =
>   						mei_cldev_get_drvdata(cldev);

Formatting looks odd here. Can be in the same line.

Same for other places below.


>   	int ret;
>   
>   	dev_dbg(dev, "%s\n", __func__);
>   	comp_master->ops = &mei_hdcp_ops;
> -	comp_master->mei_dev = dev;
> +	comp_master->hdcp_dev = dev;
>   	ret = component_bind_all(dev, comp_master);
>   	if (ret < 0)
>   		return ret;
> @@ -752,7 +752,7 @@ static int mei_component_master_bind(struct device *dev)
>   static void mei_component_master_unbind(struct device *dev)
>   {
>   	struct mei_cl_device *cldev = to_mei_cl_device(dev);
> -	struct i915_hdcp_comp_master *comp_master =
> +	struct i915_hdcp_master *comp_master =
>   						mei_cldev_get_drvdata(cldev);
>   
>   	dev_dbg(dev, "%s\n", __func__);
> @@ -801,7 +801,7 @@ static int mei_hdcp_component_match(struct device *dev, int subcomponent,
>   static int mei_hdcp_probe(struct mei_cl_device *cldev,
>   			  const struct mei_cl_device_id *id)
>   {
> -	struct i915_hdcp_comp_master *comp_master;
> +	struct i915_hdcp_master *comp_master;
>   	struct component_match *master_match;
>   	int ret;
>   
> @@ -846,7 +846,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev,
>   
>   static void mei_hdcp_remove(struct mei_cl_device *cldev)
>   {
> -	struct i915_hdcp_comp_master *comp_master =
> +	struct i915_hdcp_master *comp_master =
>   						mei_cldev_get_drvdata(cldev);
>   	int ret;
>   
> diff --git a/include/drm/i915_mei_hdcp_interface.h b/include/drm/i915_hdcp_interface.h
> similarity index 75%
> rename from include/drm/i915_mei_hdcp_interface.h
> rename to include/drm/i915_hdcp_interface.h
> index f441cbcd95a4..d24f6726e50c 100644
> --- a/include/drm/i915_mei_hdcp_interface.h
> +++ b/include/drm/i915_hdcp_interface.h
> @@ -6,8 +6,8 @@
>    * Ramalingam C <ramalingam.c@intel.com>
>    */
>   
> -#ifndef _I915_MEI_HDCP_INTERFACE_H_
> -#define _I915_MEI_HDCP_INTERFACE_H_
> +#ifndef _I915_HDCP_INTERFACE_H_
> +#define _I915_HDCP_INTERFACE_H_
>   
>   #include <linux/mutex.h>
>   #include <linux/device.h>
> @@ -41,44 +41,44 @@ enum hdcp_wired_protocol {
>   	HDCP_PROTOCOL_DP
>   };
>   
> -enum mei_fw_ddi {
> -	MEI_DDI_INVALID_PORT = 0x0,
> +enum hdcp_ddi {
> +	HDCP_DDI_INVALID_PORT = 0x0,
>   
> -	MEI_DDI_B = 1,
> -	MEI_DDI_C,
> -	MEI_DDI_D,
> -	MEI_DDI_E,
> -	MEI_DDI_F,
> -	MEI_DDI_A = 7,
> -	MEI_DDI_RANGE_END = MEI_DDI_A,
> +	HDCP_DDI_B = 1,
> +	HDCP_DDI_C,
> +	HDCP_DDI_D,
> +	HDCP_DDI_E,
> +	HDCP_DDI_F,
> +	HDCP_DDI_A = 7,
> +	HDCP_DDI_RANGE_END = HDCP_DDI_A,
>   };
>   
>   /**
> - * enum mei_fw_tc - ME Firmware defined index for transcoders
> - * @MEI_INVALID_TRANSCODER: Index for Invalid transcoder
> - * @MEI_TRANSCODER_EDP: Index for EDP Transcoder
> - * @MEI_TRANSCODER_DSI0: Index for DSI0 Transcoder
> - * @MEI_TRANSCODER_DSI1: Index for DSI1 Transcoder
> - * @MEI_TRANSCODER_A: Index for Transcoder A
> - * @MEI_TRANSCODER_B: Index for Transcoder B
> - * @MEI_TRANSCODER_C: Index for Transcoder C
> - * @MEI_TRANSCODER_D: Index for Transcoder D
> + * enum hdcp_tc - ME Firmware defined index for transcoders

ME/GSC FW, perhaps?


> + * @HDCP_INVALID_TRANSCODER: Index for Invalid transcoder
> + * @HDCP_TRANSCODER_EDP: Index for EDP Transcoder
> + * @HDCP_TRANSCODER_DSI0: Index for DSI0 Transcoder
> + * @HDCP_TRANSCODER_DSI1: Index for DSI1 Transcoder
> + * @HDCP_TRANSCODER_A: Index for Transcoder A
> + * @HDCP_TRANSCODER_B: Index for Transcoder B
> + * @HDCP_TRANSCODER_C: Index for Transcoder C
> + * @HDCP_TRANSCODER_D: Index for Transcoder D
>    */
> -enum mei_fw_tc {
> -	MEI_INVALID_TRANSCODER = 0x00,
> -	MEI_TRANSCODER_EDP,
> -	MEI_TRANSCODER_DSI0,
> -	MEI_TRANSCODER_DSI1,
> -	MEI_TRANSCODER_A = 0x10,
> -	MEI_TRANSCODER_B,
> -	MEI_TRANSCODER_C,
> -	MEI_TRANSCODER_D
> +enum hdcp_transcoder {
> +	HDCP_INVALID_TRANSCODER = 0x00,
> +	HDCP_TRANSCODER_EDP,
> +	HDCP_TRANSCODER_DSI0,
> +	HDCP_TRANSCODER_DSI1,
> +	HDCP_TRANSCODER_A = 0x10,
> +	HDCP_TRANSCODER_B,
> +	HDCP_TRANSCODER_C,
> +	HDCP_TRANSCODER_D
>   };
>   
>   /**
>    * struct hdcp_port_data - intel specific HDCP port data
> - * @fw_ddi: ddi index as per ME FW
> - * @fw_tc: transcoder index as per ME FW
> + * @hdcp_ddi: ddi index as per ME FW

> + * @hdcp_transcoder: transcoder index as per ME FW
>    * @port_type: HDCP port type as per ME FW classification
>    * @protocol: HDCP adaptation as per ME FW
>    * @k: No of streams transmitted on a port. Only on DP MST this is != 1

Documentation should drop ME FW.


> @@ -90,8 +90,8 @@ enum mei_fw_tc {
>    *	     streams
>    */
>   struct hdcp_port_data {
> -	enum mei_fw_ddi fw_ddi;
> -	enum mei_fw_tc fw_tc;
> +	enum hdcp_ddi hdcp_ddi;
> +	enum hdcp_transcoder hdcp_transcoder;
>   	u8 port_type;
>   	u8 protocol;
>   	u16 k;
> @@ -100,7 +100,7 @@ struct hdcp_port_data {
>   };
>   
>   /**
> - * struct i915_hdcp_component_ops- ops for HDCP2.2 services.
> + * struct i915_hdcp_ops- ops for HDCP2.2 services.
>    * @owner: Module providing the ops
>    * @initiate_hdcp2_session: Initiate a Wired HDCP2.2 Tx Session.
>    *			    And Prepare AKE_Init.
> @@ -119,9 +119,9 @@ struct hdcp_port_data {
>    * @close_hdcp_session: Close the Wired HDCP Tx session per port.
>    *			This also disables the authenticated state of the port.
>    */
> -struct i915_hdcp_component_ops {
> +struct i915_hdcp_ops {
>   	/**
> -	 * @owner: mei_hdcp module
> +	 * @owner: hdcp module
>   	 */
>   	struct module *owner;
>   
> @@ -169,16 +169,16 @@ struct i915_hdcp_component_ops {
>   
>   /**
>    * struct i915_hdcp_component_master - Used for communication between i915
> - * and mei_hdcp drivers for the HDCP2.2 services
> - * @mei_dev: device that provide the HDCP2.2 service from MEI Bus.
> - * @hdcp_ops: Ops implemented by mei_hdcp driver, used by i915 driver.
> + * and hdcp drivers for the HDCP2.2 services
> + * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
> + * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used by i915 driver.
>    */
> -struct i915_hdcp_comp_master {
> -	struct device *mei_dev;
> -	const struct i915_hdcp_component_ops *ops;
> +struct i915_hdcp_master {
> +	struct device *hdcp_dev;
> +	const struct i915_hdcp_ops *ops;
>   
>   	/* To protect the above members. */
>   	struct mutex mutex;
>   };
>   
> -#endif /* _I915_MEI_HDCP_INTERFACE_H_ */
> +#endif /* _I915_HDCP_INTERFACE_H_ */
