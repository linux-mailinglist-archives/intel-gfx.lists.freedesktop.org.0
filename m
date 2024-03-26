Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE2C88BF3A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 11:21:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69FC010E535;
	Tue, 26 Mar 2024 10:21:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDYxQ+kY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A622710E535
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711448486; x=1742984486;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=joP7InXwXzVThcZ+bdIZoq3UeqOpaXAhYrmFE4evUNU=;
 b=SDYxQ+kYgOgZjJAny47aPcF5eboJDYNgkCRWswz6snvWK+CbOlPEkgAX
 ttDFdYjwyb5/0vOmP1lBB6gD5wuSCWnwCCZ4cMW1ymvDe6kKJBItwMU8k
 VAVr3Po8IV5EMEHAXydMupibzrEtw/zjdQ+j/goL27xoWdVO2U3l3mR+K
 soFmp07ch6saG9sti2FE1mMhsqZfGn3D7Ha7xXr9DA8amcEcAV1QHYvTZ
 rg4N6W4Ot2i0AJlOBCuj3koq94E83lf5GwwBmouWPdiqcYXKPTqHp582F
 pMORDIPF26zLLNAL1UMBzqTKk8247bWZs8cmCUrITgyuGF21mWfAbFVsS A==;
X-CSE-ConnectionGUID: LybxNmZMRI+vfczeIVZRSg==
X-CSE-MsgGUID: pQNNHM8kRNaQPTYQKcNnaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="9457748"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="9457748"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 03:21:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16303671"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 03:21:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 03:21:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 03:21:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 03:21:23 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 03:21:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jMwghT+2K61sPKu6n60UI6hHfVTL0NrLVxQsJWU/31HeQ+Gdk21ffg5qKPN1iUxgK3xBliYCVoNmLoMP9fgvWzu0jC+CdSFGgBNWgwQ5Kk+bMGqlvDGse1mILwwbkx5k1dG2PONLHgfb1/y5lA6ENrNf9KpbuU0Y1rjXwfU36Kv4LBshDJ589bmh536M5ySikcwNoQMx1W94x/qHuC2f/K3Zef9DvWbe8C6Q15YNKMKmMnVkBqTxZkgDUZrWMdblIclzES8LZA4QP+0i962x+VJAq15q/URpDUZ5qXlkoqj3RP33ZBoLuWgDbTR7Ab0EpBNlplDorcMm3NTleHFA9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j0FFkLEhg6NChZ4rmj97Z9rEkO+rOnRsNW/7dzH9VHA=;
 b=InwfqkYBpiSCyAOpp3AGbnDICiH4Z+tYXgMO6Y+Uk1z1ZQPie+lkVep/FuLFNEv3/Qju6OAe3GQUT8/9FKzxv6MGQiitB0cmFpNgliWRdsV9iSnPIHawo/F074peGnGFKhwBFoEB+0A8KobrUAXxuKXZsYD7MFg0MEi1NPSreN4TvvVTNZgxiRoYe3fC3xblkBz6ip/g7PXdsPoVLwbvc40KrUZauxg2FH++8vdEdb98q0K0HtyVNCCwauV44JeLp070VUDemX5UMebIf+K9VG9FTZZtUmhXqE8j2XSpJwnQPJ74iIHiBIAPx01819ZY2uH6OgH9S61PQkNTABxLRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6831.namprd11.prod.outlook.com (2603:10b6:510:22d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.28; Tue, 26 Mar
 2024 10:21:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 10:21:21 +0000
Message-ID: <96eddc8a-d416-49f0-8b9a-fcc28aec49a8@intel.com>
Date: Tue, 26 Mar 2024 15:51:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/11] drm/i915/dp_mst: Account with the DSC DPT bpp limit
 on MTL
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-6-imre.deak@intel.com>
 <32c89f1b-852b-4d49-8439-45fddc80c5db@intel.com>
Content-Language: en-US
In-Reply-To: <32c89f1b-852b-4d49-8439-45fddc80c5db@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0084.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6831:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s/2N768pRRCXXOKW3IoG6uFsvApO67RVk0Jd8teSBQsP65WaLdhscrxN1l+54xRBm5PXLZi21EoCjw/WlqI6G7RvXnhnHjWcu65gJu/RuWcOc7j4JMIYhOMLzljisvMLCj/LOsnH5qhpmBrf4BKPR66P+vxppBr5KHUHxQf+HgdGLTfB8xfQQmGj56UXLjCfywKLNaplgkBhLxVhUrWEchxNV4twPTnBtbVOKH1393OFvzv1SMr2TMIzBcFboSOTjCUHj1pR/K4kjHbmFmNA+I/5NGBxZSyYxVjyKNz+69rGVrW0RWN0Ht6qhKVvft4LOqCtf45Hwm5oEW5SAjEt8n+LRe9NE0uZ2FSs9fedKUOUvuNIWWskD8G7ZWfhvQN7Ne4V4dHJYE8pvexkZ5x1NHzRjhRao4quNOAIgFZ74R/0d6pPPGec5NxPwV0zHaXPiduAbx4hxlcIu0WDVmX7Yx/LD+MFRGI8wd+W9jMNM3ykw3hCK6G68/++grhF8itR/IJd3bnA/bRzRTOecNRXWVKkTDAf0Ss31puzuJIuQOZar768dskyHWJ3+bpykt/m4I5CCz7p1rIgOxrKk4I9dE5jJ7JQK7SDC8bczNmTpv9uoPuU8VPxOPWnhERrTZUBfgGkZ8wTpcu849XUeBtTQg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVpVQXlwUVZaUkozRmxTaGxOZUI4WmlvQjFZUlpORXdLV2tuKzg4emFJSVFo?=
 =?utf-8?B?L0FaOTg1MDJnaE5WQ2pKbHJ6TkpsTzE4ZHd1QkxZRGtQZG9wSlNCWkZCbTdi?=
 =?utf-8?B?bjl4L0pmd3B4aS8zaDdVdVlXZHI0VzJLQlpwRmdhQXFlZWlwNUs0L1ExRVVk?=
 =?utf-8?B?TEc0bDV6eWhudncyTGJzTlY2NXdqd3VlWFUrazhkQ1BRMndpSmVrdCtrNjJK?=
 =?utf-8?B?Y1RCWTVwV0w5SSs1VmtDZy9NSFkyMVIra2lBTERuSkhYaVozaW13VFBnZ05o?=
 =?utf-8?B?a1ZjeG5PbTBaZ1BxeW9BNndodUZoTDkrSjRONlBTMUNIUzZSSEpUUStXM042?=
 =?utf-8?B?RUNjcXNrVTJIMlowZmFtRGtaUnpwRWtPQ25oSEp3c3kvNUxoeEN2QWxmcUxO?=
 =?utf-8?B?NUJacWV3YXA4SDZER1lJVkozNTl4THlJUkphRlI5cU1xcGo2K3dncXRaTzhH?=
 =?utf-8?B?YkFQZGlrVjg1b1J2eWhRVjErcWlIMFQwbkczMnlBaVlCbk9vSE1oMWZJOElK?=
 =?utf-8?B?aTBzZjJjNWZKV1pqMEhWSUpxdWtOZldjVUhFZ1JQazdEZk03WVh4TUkwMFJk?=
 =?utf-8?B?bFc3RHd1d0hSRWthQ2NyZVlDN0JQdTNjYUJ0ZlJDdzhEakc3VHU5SHJaOG9K?=
 =?utf-8?B?bHdBcC92Qm0ybm9YdmVLNlN4ZWpJWlF0R1VXNkRTNUlJVngyL1h3VEt6alNv?=
 =?utf-8?B?K2JSWVdJSDY4U1BNanlRZzVidVM4L0tiZ1l3UlV6VXB3eUhsS0FSd0VGblk0?=
 =?utf-8?B?WHRUUXFEVWZnNjlpTlM4aTEvQmdBQXBURzFnYW5aVjNqRE1OeFlpMTVvRUdQ?=
 =?utf-8?B?NmN1RTBiUDVrM29NNmxGTUpyRURSWFovZWtuSkFYNTYwUVBxT3hFOUtFM3ZT?=
 =?utf-8?B?Wks2cnF1T3hFczgzVCsyOHNmUVN2NFR5RWdOTlZ3UkpPY1pzb2lxVFZQaDht?=
 =?utf-8?B?d1pIaVFtQTJFS0U0ejQxWW5XTUZMTXU1VndXMUdKcEtWdzNiVVYyOHVVOGYz?=
 =?utf-8?B?RlNrS2ZJVjVYSEduVHg5aWpQWTRFT2YzQ3ppTEdGaEtpWU5CelVxZnhFZy8r?=
 =?utf-8?B?YVZQaldySGo1bjBqY0hFWE11RGpNSmh2Y0wvOUc2Z1ZrNXk5L3BmUVpZZGoz?=
 =?utf-8?B?N2hRM1lYUkJudVByTStCSVcvd1BuaWdZNHpqdUFOWWJxUXVnamVGSHNuWkxk?=
 =?utf-8?B?MzB4VW1nT2d2d0F3Si9TaVNrNm01Vmc3VTRQMHdGa2xEeFlsVU5DTkNSK1M5?=
 =?utf-8?B?OTZ5OEJDcmpVblJHOVp6WDNubHhnV2djemFIdUhQRWtTbjlZSHUzVi85VVBo?=
 =?utf-8?B?OFYrSGlDWDVJNEhtTUNqN0s5S1M4RWtKdXk1bytZUU1CcTZydWExbnlpd0c4?=
 =?utf-8?B?VjdOUVZxRktjd05ISW9mTWwzcGk2NTUwRGRPbVZCUEV0MzU1UGYvZnA0RFpL?=
 =?utf-8?B?TjZIallPNFdxNXZBUVNRUmx4VDFBL1lEbGZVT2ljejh2aHhRa0ErakRYWk1K?=
 =?utf-8?B?U0dKTmN4K2tVOSt4a29CZVB4akhJbTNycFZSQy9JVllZNzdzem04RFRZSUs1?=
 =?utf-8?B?dHZiT3JVaWhtMExTUDE5b1lzVjhTUjlXd29DNGRHNXVUelBMNXNEejdLUlZH?=
 =?utf-8?B?b0Q2ZUxkdzJickFUQlVKS3pRbFAvVHl3K2hKREgzK0kyNzZLaXJ0djlwc3B2?=
 =?utf-8?B?OFdQVnFDSFFzaFBwTkhvVkRxVVBIaDJjaGV0Y1pTTVdsYXNvcG1ia2IvRmtB?=
 =?utf-8?B?Qm9DcGdvcFBIYXB2ZHlJZ1JUMHc0bWZxa2lIV2JjaDhvUkxZZnhuWW1UUjcy?=
 =?utf-8?B?MStkZkpzazlVc0RIWmltL1dpeEpzekwrKzI1ZWg3c3htSWs4MXJtYVNNNWdq?=
 =?utf-8?B?UXNhc3ZBUW4rNXdUOUN6RWZOeFpGQndiT3N6bFJsaXZwNVNFMjllbGxwNWdJ?=
 =?utf-8?B?aUdRUkFuQzNNLzhZNG55OHd3cVV4dVVNWDhSbW56czFZeTJSdHViUEF0WTFS?=
 =?utf-8?B?Q2hDQ1ZyWnhaRC80Z01SN3M1Wll1Sm1tNUhxSGREbEJrYit4RlIreFFiV0Mw?=
 =?utf-8?B?UjNKTlJ4RUhXa3B1eTg3Z0lBclNVUXVQN0dIbjhxbEZtT2JkeGNuNW9qZFps?=
 =?utf-8?B?SFc5YnpvdHNtYjJCS0NnZ3FxNDR2bFpXdHRla0I3N1hZKzJlcHk0QS8vSUZp?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 540b097f-8303-46e4-bb34-08dc4d7e7b7f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 10:21:21.6544 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PVnuLaM/ZJI3yJgk35bY7tMqDGONZNbGxBuaVjcD+wrksWMyxslze1Yyd1gxNrcCNne9/UVyqvNZErwX/oqfQh1qT4N0l1VcucTkUFkwvvo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6831
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


On 3/26/2024 3:47 PM, Nautiyal, Ankit K wrote:
>
> On 3/21/2024 1:41 AM, Imre Deak wrote:
>> The DPT/DSC bpp limit should be accounted for on MTL platforms as well,
>> do so.
>>
>> Bspec: 49259
>>
>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c 
>> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 79f34be5c89da..40660dc5edb45 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -56,7 +56,7 @@ static int intel_dp_mst_check_constraints(struct 
>> drm_i915_private *i915, int bpp
>>                         struct intel_crtc_state *crtc_state,
>>                         bool dsc)
>>   {
>> -    if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && 
>> dsc) {
>
> Should this be DISPLAY_VER() <= 14 to include MTL?
>
> For DISPLAY_VER 20, is there another check?
>
> in Bspec:68912 it mentions output bpp * pixel clock < DDICLK * 144 bits


Please ignore the above, I see you are addressing this in next patch.

The patch looks good as it is.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Regards,

Ankit


>
>
> Regards,
>
> Ankit
>
>> +    if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && 
>> dsc) {
>>           int output_bpp = bpp;
>>           int symbol_clock = 
>> intel_dp_link_symbol_clock(crtc_state->port_clock);
>>           int available_bw = mul_u32_u32(symbol_clock * 72,
