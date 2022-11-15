Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8561B629F4D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 17:42:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35E310E1C4;
	Tue, 15 Nov 2022 16:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADA410E13C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 16:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668530571; x=1700066571;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SA2CosSitfn3FbcKAskGX0SchkJZHJzlc68sdP3Kn00=;
 b=axvQHSicX8Jw2cjCDdXy1UcUHAhOm1BOvKfqxdC9GTawWMjmtbNTeQgZ
 2rDOUmnnVt1GUc6kxiNo7mDVpBjGPUfTvriLskCV7Vm4Gp7ncWgPMHlrT
 ATeXKIReOu36RO39aK0BJfX0BquObtEJrkaMXxTIIA4UjUAasyRizXF0l
 AQoEueMJKn0d8sIzG6CkamtqsG7LsJzoAmPOI94N2zYBMLI//tFcubXWy
 3n38nmZHS/1i5kPIiJJj7vDYBZnFRtgRiNogicUKGJwY5/xQ3+ePRy7o+
 xRbFAP+8/np5qkwLCOIF03uelS3zBG+8REoGmDBX78ZjTZifOm1UDBaJ8 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="292695192"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="292695192"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 08:42:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="616815352"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="616815352"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 15 Nov 2022 08:42:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 08:42:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 15 Nov 2022 08:42:49 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 15 Nov 2022 08:42:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDizwwuwVm27ntWmf7e8rTpXWwzfhu+p15eT+cqXoHk76FoePmxidm9QgB87UvblllzRzK4chr3k+zDlR4zGmyyDyL5hrYVr5PDJdt3sp96NsCftRB+Bhv4n3+uDcBuKTE4u2+/qNqwB1BTfLaXFe/RRmGZ3Q2fQwFtLfArc8f9rG+TUHev/HhBEF9Bu4w9ziQ9tTf982FLVAzd2eR1VhTy1fgI02+H7+itCGmrq88yyXQyqndbJsfYLdtoRLAqn5SigoRzmztkra7w8rXBsdqugg5BvjkrfdMiZBYhYG2E0pXgy+X2JCuBeC82CZExlRoy1mEHr7WOIgZdQt+c3aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=69zsF1SPYyt46xitT204XxSBYt6RvbdvjhZ/A1/UKBc=;
 b=KaiKTmhNkq+aLHoE61EboxsScdfyDY55wkishMhEQEBUSbLDDjjXBh9ssCYj81BNlZIzViJzj9EHYlN6V6ulWoOQ3+LqO2LKU1hWu4c3YgR8fYA9vrlvnCKaBxz3ATvPEqyP7WNp/lfFDLZTFyCy/VSES11VkoT+0rx/1VK+JLDl38eN032fnqTgitFCzbYaZv5SZlUdRHefWhpwZpUrPEYCMfuaQxIhemmOlU5mCTK/e67081oRVFMpL7S3e0jEflOv2HlIAmGoM0vEjP5U3QL/PtK+qbELpngXe2xrc8WZC3savUu7xzAQ1MxHGZ7JOm9fTziAzY9wtMCxLqKnzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4966.namprd11.prod.outlook.com (2603:10b6:510:42::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 16:42:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%8]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 16:42:47 +0000
Message-ID: <24879f72-4de7-e3a9-9df2-7773ab3e5af1@intel.com>
Date: Tue, 15 Nov 2022 22:12:37 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
 <20221028094411.3673476-4-ankit.k.nautiyal@intel.com>
 <Y21nzJlANRVahZ0+@intel.com> <c8d47583-2bd6-7383-14f4-d622b9eefa36@intel.com>
 <Y3NxXuHncySq1aok@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y3NxXuHncySq1aok@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0065.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4966:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ebf2c6e-178c-4cc0-61df-08dac7286d20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wiGcA3Od5amYWiytHDZe2vfZ86CRvfgtf9ddV6onBjEJXryo/rShPs3GIg27glNtUKcyJaZe+DiYK2sk9w8hBYa45qyYhR/K91De6zCw9E+0jUetUSCUIUhP5qAUWQlQVDW3tLvySrouDpjNdKuYNyq5NHwz6p/0Tlzu5sCaCPyzEjXOfKdu0Ez2ORkuzZ+tOMPPecgpZt7SrOgaFX9CER+og1Iikd2APMGf/MszMER1/6bFW25xoIR/hCNydCnpnEulN3KulzQkd/1JXZorJKowEJQRiIH/XfJ1GahWBnY9SJIycrq/0qpWw09V5ylYWc6d/FF7hvrinOiZsBPdcIZIbs9owZs6nQzGUY3wwYCMUiIuxH5a2HgVeb4ix8WuEB4vLQeOQRguYuKPPUEY3o2cVw8kGxE0tVEJ/rHLubrqeaLEteZh/BF63R/UL5SxvZc4KYVEsncKHGucc+gS96uj5JMekn3lgN/pHG9Nj1YHHF78rWng1tXEQ42UK1/1roMbUegOTocwIbysPX2jpEa089cLlS1c7o0+xWVyWE87RIwwOKhZ2e/RuxWIRaL0m/qZ8RzvH5CI+1Cy+InD8o/HHtgtMiBvSz6OB6EBTcqtAbxf8vp/Tp1yC78Yt8tOBm+zC08uzY2LrmznrrJL7xYj3xeCK3Vab2BHb8naPRpofsZ1+U5glLzV8Ymrg2e0UUPkBsGC9tjZpxSukEo+yE6iSFaJfxDiI1swp4rHaoFGUgr/1M/ajfdTjPsGSFB2Q97Kj5ypcspPGdyk+hHcn+eb3ZcOGWHldQFM/4gk44A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(39860400002)(346002)(376002)(366004)(451199015)(31686004)(2906002)(66476007)(66946007)(66556008)(8936002)(5660300002)(4326008)(8676002)(41300700001)(6666004)(6916009)(26005)(53546011)(6506007)(82960400001)(55236004)(316002)(66574015)(186003)(6512007)(2616005)(83380400001)(478600001)(36756003)(6486002)(86362001)(31696002)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTQxK2RRMGhRWFJuaTk4OHA1MlF4MUFPMVZtVWM2WnZPSzY5YkU5bjF5Ykhi?=
 =?utf-8?B?LzdNRWw4UjdheXFqSnpTSUpEU08rcy9FdkRFMlB6MHVtY0VCNDlSLzVBTHZL?=
 =?utf-8?B?RjdBblVSY1dhY09GOVF3WHlSQ0hLS3ZwOVBGNys4Z2pOQ2FhQVYvVU02Wlgv?=
 =?utf-8?B?QVFyWHRPa2gwMWtVeFNCT1NwVE0vc1lHMjFhT3BhcHMrQ3ZYNTloOG5pa2hS?=
 =?utf-8?B?TVNJR2hvb1FvSVU4ZVU4YkhYTTFxZXRNWEJPb1lxSVBEeHYyMXIzVytKTHUx?=
 =?utf-8?B?bG9aOVdjY1BLQ1FYRUxoekY4NnZiUUh5M2NPSW8rNnIwaGlmTmpmWnBrclhM?=
 =?utf-8?B?VkszcFB5ck0rdnF0eEg3aDdPLzY1QktCYzVXcHNjM0RiMzliaHBWd0VCUWtn?=
 =?utf-8?B?Z0xIV21ENWtBelg2ZWZSM0oxaXF4RVJuRm85WTQ2ODdmUmtVMG1FMEt3Nk8v?=
 =?utf-8?B?RUsrOGdHQTJYUUg1aDZsa3ZDUDI0TTlpTytRMVRJQ0ZDQVNmTi8wV0prckJN?=
 =?utf-8?B?MlZ0YXRFeXpiajdSRktXZzg5NXNYenAvVVA3YzYrcnZ3ZjIxeUk4SEYvdmpI?=
 =?utf-8?B?ZytOL0ZiRldnVkJJWlZ2eCsyK0VGZ2g0eXFieUlnTGswUmVFZzB2cUN3cEtq?=
 =?utf-8?B?ODFsbHRJNWxQQjdzbDFpUzJxQ3FLTWtPM084djRSVlAvM0ZZMXovS0VPQUJG?=
 =?utf-8?B?OHNOY2xmNmZ5S2FuMVQ3Q2t0bXhRanZHazRDbkJhWjg0eHpoL0RTWFJ4YVlI?=
 =?utf-8?B?UlNEVFp6Y2IvNFNRRkNvSDdFdXVORkE3RHUyQkkxYWdrYUxxRXJrY2lxRjVZ?=
 =?utf-8?B?QlZxdDRlQXpqY1RmRkdHcS9Nb2FkZWpOdjNVdW4raUZEN0xwdncybW9kUWlL?=
 =?utf-8?B?MkYzYVNvMWRPLzMwRGc5YjRVMTU1aFRCd2tocWMxeUowNWtaN0dlaktKSk82?=
 =?utf-8?B?RDhOQ2NXSTIxUjBRSnFISktDN0ZRMmd4SDFEN1FKU3pqT0FLa1ZiN0JRZ1E4?=
 =?utf-8?B?V3h1OUxBNk1IK3BYM3JXNVNzWXJsNGtZY1MvdytnNnRiK1BkL0M2SGc1MDVX?=
 =?utf-8?B?MjRXY2I2R1J2a244VVN1TDRrOG1qY3RIeGxwZ3A1UjVsSko1a0hBZENFQnRY?=
 =?utf-8?B?bjJMRnA5Tit4QU1YemF1TE0vWXliSEk0TGtQVWs3a1cwN3luaUMvQ3RiTjVi?=
 =?utf-8?B?SWh1MlVKejBVK2hSc1hVUmdiNUw2cmk2bFdGSS9YWkhGdDNUb2NRRzhxdytZ?=
 =?utf-8?B?NWN6MzhuWVB5KzZOWXhPTVpZWnpqaTdvVDNzODVzS0luSmFjUUxibU4wb0J1?=
 =?utf-8?B?QkwyZG1waHM0am9vQkFSNnZ6ZDNxbmRpd05DS3J6WjhpSGwvRXVTL09zVmlX?=
 =?utf-8?B?TVEwRy9wY2ZQaWdGL1I5UEhxeVVJTCtOWERYT1Qva3l3b0JlL1VtV0E5eGxT?=
 =?utf-8?B?UE9sbEhwZFN0cG9vcVpCNkFDNHVxMSt4L01mV1hRdU1ib3JlenN6NzdjcDdl?=
 =?utf-8?B?T05YRnlaMWt4R1hMZlVQMVJLdi9hN24yUjE2WFNLNG5YL05hSkdvdEc1QTNN?=
 =?utf-8?B?ZTlCZXFzaHpjeWtHUjNlaEVSSTNMcDYyRnRtWnU0bjBDU0ZmT2o3M1JiKzc0?=
 =?utf-8?B?c3kwb0ZnMjNvMFNTSGtydGVPZWVPV2RUVk9kdjQzTXJUOWVSaUNkWmR6Q1dQ?=
 =?utf-8?B?M2NOYVB4a2J2WnpWSm91UXpkdDIvT2NESGVHaXUzTE1XQmh4R0RZdEF3K3dF?=
 =?utf-8?B?VGgzaXUyMnovNi9pU0FPNEVXRjM1ekkwbCs5UVFkdzF3anFUWERKS2tvczBj?=
 =?utf-8?B?c0U4QmNVRHU4Y2tuQm5kUDBuam41czJES3J0UnhRS3hLVTBWWTh2MDlCK0Nq?=
 =?utf-8?B?L3V2TDdYbWIrMmx5VVVsUVNpY3BMWG8vTy9TeDJ2UVBIYVNmU05heEt2SXg4?=
 =?utf-8?B?OVVicDVVUVJ4dTVjYUFKQytvMkkwWXd0cGVscUNobDRzWThBc0YxdVBuK25Y?=
 =?utf-8?B?bFhTa1NzRzlKckMyRkhNS2Irc2hCdWN5WTVYaFhQQllQdEYyanFueGlkY1Uz?=
 =?utf-8?B?amVDOWE0RDhjS0ZaamwwQTZoZjRkZ3QvL3R1TjFlWk00TFBjM0lMRGNaNkxZ?=
 =?utf-8?B?NGQ2THRnUlhmMENRQ2xGdWw5TkE3dVhOTkwvbFFVQUp2Z1JKYmdmMjZicERY?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ebf2c6e-178c-4cc0-61df-08dac7286d20
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 16:42:47.1054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TpWkOKy9VEcMRSkIuKU/i5phPMesQjwK+bxyUcjMfUKYvVgxCyR2oNwez57WSnngY1QXcNBMjhHkQSd4DQuC30OpU/VUSoINM2tM6OU1Wz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4966
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 3/9] drm/i915/dp: Replace intel_dp.dfp
 members with the new crtc_state sink_format
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


On 11/15/2022 4:30 PM, Ville Syrjälä wrote:
> On Tue, Nov 15, 2022 at 12:23:53PM +0530, Nautiyal, Ankit K wrote:
>> On 11/11/2022 2:36 AM, Ville Syrjälä wrote:
>>> On Fri, Oct 28, 2022 at 03:14:05PM +0530, Ankit Nautiyal wrote:
>>>> The decision to use DFP output format conversion capabilities should be
>>>> during compute_config phase.
>>>>
>>>> This patch uses the members of intel_dp->dfp to only store the
>>>> format conversion capabilities of the DP device and uses the crtc_state
>>>> sink_format member, to program the protocol-converter for
>>>> colorspace/format conversion.
>>>>
>>>> v2: Use sink_format to determine the color conversion config for the
>>>> pcon (Ville).
>>>>
>>>> v3: Fix typo: missing 'break' in switch case (lkp kernel test robot).
>>>>
>>>> v4: Add helper to check if DP supports YCBCR420.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c | 122 ++++++++++++++++--------
>>>>    1 file changed, 84 insertions(+), 38 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 0e4f7b467970..95d0c653db7f 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -790,6 +790,7 @@ intel_dp_output_format(struct intel_connector *connector,
>>>>    		       enum intel_output_format sink_format)
>>>>    {
>>>>    	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>>>    
>>>>    	if (!connector->base.ycbcr_420_allowed ||
>>>>    	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>>>> @@ -799,6 +800,10 @@ intel_dp_output_format(struct intel_connector *connector,
>>>>    	    intel_dp->dfp.ycbcr_444_to_420)
>>>>    		return INTEL_OUTPUT_FORMAT_RGB;
>>>>    
>>>> +	/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
>>>> +	if (DISPLAY_VER(i915) >= 11 && intel_dp->dfp.ycbcr420_passthrough)
>>>> +		return INTEL_OUTPUT_FORMAT_YCBCR420;
>>>> +
>>>>    	if (intel_dp->dfp.ycbcr_444_to_420)
>>>>    		return INTEL_OUTPUT_FORMAT_YCBCR444;
>>>>    	else
>>> The else branch here is also 420, so the whole logic
>>> here doesn't seem to flow entirely sensibly.
>>>
>>> Thinking a bit more abstractly, could we restate
>>> this whole problem as something more like this?
>>>
>>> if (source_can_output(sink_format))
>>> 	return sink_format;
>>>
>>> if (source_can_output(RGB) &&
>>>       dfp_can_convert_from_rgb(sink_format))
>>> 	return RGB;
>>>
>>> if (source_can_output(YCBCR444) &&
>>>       dfp_can_convert_from_ycbcr444(sink_format))
>>> 	return YCBCR444;
>> This make sense and will also help to add 422 support easier.
>>
>> I am only seeing one problem: about how to have DSC considerations
>> during source_can_output( ).
>>
>> Gen 11+ should support YCBCR420. So for any ycbcr420_only mode we should
>> have sink_format, and output_format : YCbCr420.
>>
>> This works well for cases where DSC doesn't get in picture. When higher
>> modes like 8k60 ycbcr420_only are involved, we need to use DSC.
>>
>> Currently, our DSC1.1 does not support YCbCr420. The problem is that we
>> go for, dsc_compute_config at a later time.
>>
>> This issue might have been masked, due to the messy order of checks in
>> intel_dp_output_format.
>>
>> Specifically With HDMI2.1 PCONs supporting color conv, for such a case
>> we can have output_format as RGB, and sink_format as YCbCr420.
>>
>> The DSC compression with RGB and then configure PCON to Decompress,
>> conv. to YCbCr420.
>>
>> So can we put a check in source_can_output for Gen11+ where DSC might be
>> required, so that with source_can_output(YCBCR420) returns false in such
>> case, where DSC is the only way?
> I'm thinking it should work well enough without any extra checks
> since we'll always try RGB before YCbC4 4:2:0. I guess the only
> case where it could fail is if the sink only supports 4:2:0 for
> that particular mode. Then we'd also try direct YCbC4 4:2:0 output
> on icl+. Dunno if such sinks are still a thing when DSC is in the
> picture.

There indeed are some HDMI 8k Panels that have 8k@60 in Ycbcr420 only mode.

These do not have DSC, so without DSC these can support 8k@60 only in 
YCbCr420.

(We have a SONY XBR-Z8H in lab, and there are some in market from 
Samsung too, which support 8k@60 in YCbcr420 only).

With PCON we can support these. As mentioned above, we need to send 
compressed stream in RGB to PCON.

PCON decompresses, converts RGB444 to Ycbcr420. The sink is sent 8k@60 
Ycbcr420 uncompressed.

>
> Hmm. Do PCONs even support DSC + color conversion/etc. at the
> same time? They'd have to decompress and potentially recompress
> the data in that case.


Yes there are PCONs that support 3 modes of operations along with color 
conversion.

DSC1.2 pass-through: A DSC1.2 compressed just gets forwarded to DSC1.2 
supporting HDMI2.1sink.

DSC1.1->DSC1.2 : DSC1.1 compressed stream is decompressed and then 
re-compressed again with DSC1.2 and forward to DSC1.2 supporting HDMI2.1 
sink.

DSC1.x->uncompress: DSC1.x is decompressed and sent to HDMI sink that 
does not support DSC.

(the case mentioned above, uses this 3rd option)

>
> The problem with adding DSC checks into source_can_output() is
> that we'd need to express those in a way that is also usable in
> .mode_valid() since we'd want to use the same code there I think.
> Looks like we do have some DSC stuff in there already, but it
> doesn't seem to take that into account in the link bandwidth
> check. So to me it looks like the whole DSC support is incomplete
> anyway.

Hmm. We were not getting this earlier, due to the order in which 
YCbCr420 sink_format was chosen.

When sink format isYCbCr420, and DFP supports RGB444->YCBCR420, always 
go with the conv via PCON.

This seems crude though, because if source supports YCBCR20, it is 
natural to go with that first, and if not then try conv via PCON.

DSC consideration and the above case of 8k@60 YCbcr420 makes this 
problematic.


Regards,

Ankit

