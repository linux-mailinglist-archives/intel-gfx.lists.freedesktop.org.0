Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CAB69B67B
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Feb 2023 00:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFDA010E473;
	Fri, 17 Feb 2023 23:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F2210E473
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 23:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676677082; x=1708213082;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=7U/zmOHRhJBxWlqVm2IA1yhbabWqczwiRwXGKZAPcsI=;
 b=mu8nft41jHbu70GYRvtGaIVbOckgC/BpMHM/vQgPyDqvVK55NDljURSR
 y3zQbROssj2m0Q4PLq30j30tvtuf4vmn6zaJ22bvgflZC/PN/VOpsBx0l
 58LDLsVgKwWa8TvsRIM8sKU9+CA6o8f2mPrPj8bq+kCKNx30UBvZmqWtu
 BsXUOCqj6qxJcquxTOPX65Yq2QEVvB2xkNz9FPpLa+m3g7R1h4V1COYwf
 Pvgq41vV4yCpiCN6pzGh5N6tYJrHu/psiX9Y0YrhUDoRlzLq9515iU6f0
 yj0QVtI8BN7c9+DO//M9r2gvh5w/ajlZDva4zW6rI8siVfEDIuIM96svz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="329834825"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="329834825"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 15:38:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="701087348"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="701087348"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 17 Feb 2023 15:38:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 15:38:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 17 Feb 2023 15:37:59 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 17 Feb 2023 15:37:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EZ/K9ec2ys9I5C1kEgdTr8vN8LZo7TnqTDFu7XHhO4nmv6b7fpmFE9prgEa5GRYCKK8E5yKxcP5RpgI/qklzBBKHSx8/IOQJMpZhlaTre4j6GkbWJPIt2IvbAJZnyb0UWfw/0Q/eG95zrpplFvoov/47USEQRssaN1hbp09T2lwJHQipvOKtTGo1lkMtoBIUR8RjCvT2aAAjReQ/yAIwT91/Os+CABsFaV+6+IgynagJO5fsP63JJ52TwwyAVtILA2SEHTy5jJqblZ7KIwf5uJecyhqf/JcQ9fDqroV/R5otH9eJR5CCErRoDHehHkPDPMiDkouk6BKvhu/ukOCatw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FUvLdAv8vy7+MaaLI56WXIrtV+fET/0K72zPRUMUuD4=;
 b=R5D1cbTL+xeTq2tjWPe58I8hi6O5J2SDwU72M9uYpHoI3pQ/uwQDa9LqyyZh/5OAyweRy+UW+tgMIohDNFvKPn4GlmQ4682NrihcYuQ5KlCmj381qVDVAJH7k6iprN7oG2YKaol9Vwgb6SCW21Dt1qd8Ahgdyxa/JyIXayFfMQ9B8qSaApfSUU4i8qRhQ+WrW64LEFOik3lQd6N+cPjn6KFTAt+9t+1C1rWnb1jGsuJ9P6nu/9W/2Y4fAxHqNG0TOAlECjICDgIqilwqZTXieJOroIQF8pY6OH86TPexrYKzTWC6SUw318PMy/WjOaB6LlUm2vdge6D05RCASpOfzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 MW3PR11MB4731.namprd11.prod.outlook.com (2603:10b6:303:2f::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.13; Fri, 17 Feb 2023 23:37:57 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 23:37:57 +0000
Date: Fri, 17 Feb 2023 15:37:55 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y/AP05XtSEL81WG7@orsosgc001.jf.intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
 <20230217005850.2511422-10-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230217005850.2511422-10-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BYAPR05CA0043.namprd05.prod.outlook.com
 (2603:10b6:a03:74::20) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|MW3PR11MB4731:EE_
X-MS-Office365-Filtering-Correlation-Id: 8afb6935-08be-4d6c-0550-08db113fff62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OAtTyDFanLhbx6iXrSaiijCGKAVMqNrpA2O0FVvxfWJFAXBexBFWtxnwZKW+bpq17Q+a+wPt00z8Wfwv/D8CA7lY+f9blW1cLmqlMMetyN/29GQ3sGbNnNQe7bJOeIIKioJgbKaKpUYPo7q2KRv4CNOzXSj/C1ovEwnNMPGltbiLcATsKvLrs3/mcfmW7Oi+PICa1yQCy5LbSQehiAKPuZIv5Mw8S1LA/myPexikZ2RozV08xpZq3RIimLqUfQv47tKXEdoUYIE2rj84EHL3A8+Y8T//Wuj3WkiDZqQJw7yNMVY4DOnGnMrq7nqXB7BEiz7BQ1183rhFGYicT/dkJVHdNOPHuPZHQC+pqoy/P9ZSRKaPUtDoOM5/3uAJSGbUhYhAxo8sYfyDVw+TtPLXCCjKP2dkJHLGDuL0JuCyTqOwJX6FIiAk4iVMPuNnHWX4PJWb79YrjyDeI6oTZT/Jm0kaUM0Z37f4XCJgXPwCPLnFoaYjUaz1tOk/hqetMb0fHbpL4boRJP2SJ0aPATaf/RBDoIP0ahVogx73FVRjY25yixpMz1lLCKs9L/5viHjFpQTQQOYlkpT16BzCKYWgMOOqy0K9TQHYzrIQFrpicmIr/+TGxhowFonF0cziZvRh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199018)(6916009)(86362001)(478600001)(38100700002)(82960400001)(66946007)(30864003)(66556008)(8936002)(5660300002)(8676002)(66476007)(2906002)(6512007)(26005)(186003)(6506007)(83380400001)(316002)(966005)(6486002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmNkeVNzTkFHdGtxVDFiTVdzKzFFQlF2SytRQjZkNWdnVms1bjBNdmdUTlJQ?=
 =?utf-8?B?STFYSitTcmZTcVByZ2c5QmYvWHJ3V0VYZkZrV1J3aXVBVkFJUFR2SXpyUFha?=
 =?utf-8?B?OUlkVFVmaTRCcGtzNjNNYW0xaVdKeG9KTWR5QVUzMVhGTTdzcVFKZ2xuSlZ2?=
 =?utf-8?B?Z210aExSQXVrZDdyWmRPOC8xajRWMEF2Sks1cUJsT1paWXI5N3lqbXBmSnR1?=
 =?utf-8?B?dVNDWnBIdWNEckN6VHpZVUQ2QWZNczNqZHhwUzhKbCtUTmZ4dFV0LzRabWMy?=
 =?utf-8?B?R2J2MEsvdEppeVIxOTE2dk9nbEJQQTQ2bkQzVTB0LzgyeGo1R3RIeWNrTU4x?=
 =?utf-8?B?aEprRDl1M0V1cDl2eENSc2Fia1ZqRTdqQ1c2L3NlQTR3OUp0Qi8wcWRURHFj?=
 =?utf-8?B?RlZ6ZWgwSGFuOGE1dXNIM3hCWE9GUHNBb0U3NkRlZFNRTHJIc1VvY1dHalJG?=
 =?utf-8?B?MDJLU1QwOTNNMlJBUVlKS01kOVlwSEo4TDBLc3hmdGloYTJ4NGM4eWYvYXBX?=
 =?utf-8?B?ckI5Q1NYaEFER3lvZzc4VzBweEhFbEtBU2RJYnljdk5kdVRjeTUwYTF2WEJN?=
 =?utf-8?B?dFI3UDVVdVVVN2p1RFJsZ1NlZ2pEWTZWVHZyYXpBSlhvZVY5czJ4Vmx0OEZK?=
 =?utf-8?B?a0hVb3hTRUliazFOSTV2NUlTM3E0aUZWL1p1bVBIbEQ2ejVBY1FaemZ6UDNj?=
 =?utf-8?B?bHBSWDZqRUZXNys5dE13SC9XQkpzU0ZrcDFNOW03WTlWR2FJb2dxNnFBa1E2?=
 =?utf-8?B?MU9nb1Y4WisyYjNuMmhQQTlTT0ZvWWVkdTN3YndFcHRocTd5Y3paQlAxTU1a?=
 =?utf-8?B?M1lpN3hOSkFUbVhQWi9NdkRXTUJHc1MzTGtkZWJsdjA5cmRoOFJiYjlvWkcz?=
 =?utf-8?B?RVorczNpaXc0eGh1a1lJWE9JdTQ3cDIzU3ZxZFNwbWhvb3FSNzZTVWxhbmhy?=
 =?utf-8?B?RWE2V3dhTkh5ZVVVWUtSaHgyUXFvMWtmQUxZYk9iL1FRRW9MQ0UyS3NOd05y?=
 =?utf-8?B?RXI4bXorcmdPQ2IxMmpydzMyOEg3aW8xZ3U3UmY4bThWTWdTbXphWlVINDZX?=
 =?utf-8?B?OFBXUDdOWGZFOFB5VDlaTXRrUWNRTUI5Y3NQVmtjeXdIRG5palcyV29vN010?=
 =?utf-8?B?ZmxDUXkyajFxbVFHN3A1YWlvVE1sZUFiNmFMU3FoUmRoVjU5d3lyeE54WTdk?=
 =?utf-8?B?UWs0elIxakFqd1BGRkVPM1MzS1ZjN3NnbU1JUmlQNTRFL0hldGtHREdXT3ll?=
 =?utf-8?B?K0k0ZmFwdnVYSWxCZXdWWnJscThpMVhnaTl1UnVNUmFYZ2NIdUwvQ2x4TGZl?=
 =?utf-8?B?V0dQUzF0TXJKVkorQjN5NFRHNGxJWkV5eTZMRjlkVTlDaXZ5Y3A0aWc4OTUv?=
 =?utf-8?B?RTBpalpBVjFFWGJXRkRtcnVmcnJpcUViL2ZaRnUzVFNYZ1lyd1lJbHk3UHhn?=
 =?utf-8?B?OGRHN0hoUzk4MUlLbGRmU1dOdTdYWXdiMWp5SzVaMkxsRUtRdWNkaUorWWgw?=
 =?utf-8?B?c0lDY2pvQmFnVXNLVjZZK1I5MzViUUx6MjFFSUFQenVKUGlTcXVvT0ZEbXk4?=
 =?utf-8?B?VGhSMW9IL0g1Q3RwZlBlNkhoMkl2OVRncTFGS1FhZEZ2TGNkSHNjenJvbXpX?=
 =?utf-8?B?Y3c2VGJodUg4VmRnUHVUeExYTXVpVjRzQ3Q2U1JaY25nZDhPSmxkV0ZpRVhq?=
 =?utf-8?B?U1NBWmZ2STN4SlNZb1RVc2UvVityZkdJVW1iRWc1TERmamtFVlZXdUlrYWl0?=
 =?utf-8?B?S3pMRVM3RkZwSXBQVWRzc2tuQ3ZmTDR2S1FsRWl3UWhHc2oyRFEwVW5JQjlN?=
 =?utf-8?B?QkI3THBicGgvNnhVNjQ5ZkxDVmplNlFKUHE2ZW5EZTA4MVY5MWFJZWVBa2pD?=
 =?utf-8?B?ZDFOY3FGcnJPVE5qa2RCQ0VLcmUrRnQ4QnpxODk1OENmQ3JNRkJ3R3JWdk5J?=
 =?utf-8?B?ZEY2WndXWDdMNDZxMHZ5Z3MwK1ZYNkJGZjA0UU5pNXpqNUZRUnRMRE9rRWRV?=
 =?utf-8?B?UFc5ckRhaGZKZW9aNzVxNGFiREIvUEJLY1BqNEtZTGpYcjU3MysvRzZReGwv?=
 =?utf-8?B?QXJyMTdPV0hieFVlM0NUN0VDdHhCTHFUWEZGd3dTZXBDL1d4aFh0VFkyZkRH?=
 =?utf-8?B?VWp3MVVJODJLLytwOWNvcGxFMWovclVnZUpvbjRlS1ZFTDIwcjRtTlF4SlJR?=
 =?utf-8?Q?axGcD0pP/Mr/hmDJC3bGqao=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8afb6935-08be-4d6c-0550-08db113fff62
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 23:37:57.7501 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WhvpX74OyCv0h3PoVG4NMIp/bQ2seia64GikV/WpUP0Lsbf/LUvaFWDAYr8qoKJF8EpibUtxlL6kUYoejJ9MSgXCZCx2xBmbsj9OPnWcKvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4731
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 9/9] drm/i915/perf: Add support for OA
 media units
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

On Thu, Feb 16, 2023 at 04:58:50PM -0800, Umesh Nerlige Ramappa wrote:
>MTL introduces additional OA units dedicated to media use cases. Add
>support for programming these OA units by passing the media engine class
>and instance parameters.
>
>UMD specific changes for GPUvis support:
>https://patchwork.freedesktop.org/patch/522827/?series=114023
>https://patchwork.freedesktop.org/patch/522822/?series=114023
>https://patchwork.freedesktop.org/patch/522826/?series=114023
>https://patchwork.freedesktop.org/patch/522828/?series=114023
>https://patchwork.freedesktop.org/patch/522816/?series=114023
>https://patchwork.freedesktop.org/patch/522825/?series=114023

GPUvis PR is here - https://github.com/mikesart/gpuvis/pull/81

Regards,
Umesh

>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_drv.h          |   2 +
> drivers/gpu/drm/i915/i915_pci.c          |   1 +
> drivers/gpu/drm/i915/i915_perf.c         | 247 ++++++++++++++++++++---
> drivers/gpu/drm/i915/i915_perf_oa_regs.h |  78 +++++++
> drivers/gpu/drm/i915/i915_perf_types.h   |  40 ++++
> drivers/gpu/drm/i915/intel_device_info.h |   1 +
> include/uapi/drm/i915_drm.h              |   4 +
> 7 files changed, 347 insertions(+), 26 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index 0393273faa09..f3cacbf41c86 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -856,6 +856,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> 	(INTEL_INFO(dev_priv)->has_oa_bpc_reporting)
> #define HAS_OA_SLICE_CONTRIB_LIMITS(dev_priv) \
> 	(INTEL_INFO(dev_priv)->has_oa_slice_contrib_limits)
>+#define HAS_OAM(dev_priv) \
>+	(INTEL_INFO(dev_priv)->has_oam)
>
> /*
>  * Set this flag, when platform requires 64K GTT page sizes or larger for
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index a8d942b16223..621730b6551c 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -1028,6 +1028,7 @@ static const struct intel_device_info adl_p_info = {
> 	.has_mslice_steering = 1, \
> 	.has_oa_bpc_reporting = 1, \
> 	.has_oa_slice_contrib_limits = 1, \
>+	.has_oam = 1, \
> 	.has_rc6 = 1, \
> 	.has_reset_engine = 1, \
> 	.has_rps = 1, \
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index f028df812067..a57690f4c531 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -192,6 +192,7 @@
>  */
>
> #include <linux/anon_inodes.h>
>+#include <linux/nospec.h>
> #include <linux/sizes.h>
> #include <linux/uuid.h>
>
>@@ -326,6 +327,13 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
> 	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
> 	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
> 	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
>+	[I915_OAM_FORMAT_MPEC8u64_B8_C8]	= { 1, 192, TYPE_OAM, HDR_64_BIT },
>+	[I915_OAM_FORMAT_MPEC8u32_B8_C8]	= { 2, 128, TYPE_OAM, HDR_64_BIT },
>+};
>+
>+/* PERF_GROUP_OAG is unused for oa_base, drop it for mtl */
>+static const u32 mtl_oa_base[] = {
>+	[PERF_GROUP_OAM_SAMEDIA_0] = 0x393000,
> };
>
> #define SAMPLE_OA_REPORT      (1<<0)
>@@ -418,11 +426,17 @@ static void free_oa_config_bo(struct i915_oa_config_bo *oa_bo)
> 	kfree(oa_bo);
> }
>
>+static inline const
>+struct i915_perf_regs *__oa_regs(struct i915_perf_stream *stream)
>+{
>+	return &stream->oa_buffer.group->regs;
>+}
>+
> static u32 gen12_oa_hw_tail_read(struct i915_perf_stream *stream)
> {
> 	struct intel_uncore *uncore = stream->uncore;
>
>-	return intel_uncore_read(uncore, GEN12_OAG_OATAILPTR) &
>+	return intel_uncore_read(uncore, __oa_regs(stream)->oa_tail_ptr) &
> 	       GEN12_OAG_OATAILPTR_MASK;
> }
>
>@@ -886,7 +900,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
> 		i915_reg_t oaheadptr;
>
> 		oaheadptr = GRAPHICS_VER(stream->perf->i915) == 12 ?
>-			    GEN12_OAG_OAHEADPTR : GEN8_OAHEADPTR;
>+			    __oa_regs(stream)->oa_head_ptr :
>+			    GEN8_OAHEADPTR;
>
> 		spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
>
>@@ -939,7 +954,8 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
> 		return -EIO;
>
> 	oastatus_reg = GRAPHICS_VER(stream->perf->i915) == 12 ?
>-		       GEN12_OAG_OASTATUS : GEN8_OASTATUS;
>+		       __oa_regs(stream)->oa_status :
>+		       GEN8_OASTATUS;
>
> 	oastatus = intel_uncore_read(uncore, oastatus_reg);
>
>@@ -1643,16 +1659,46 @@ free_noa_wait(struct i915_perf_stream *stream)
> 	i915_vma_unpin_and_release(&stream->noa_wait, 0);
> }
>
>+/*
>+ * intel_engine_lookup_user ensures that most of engine specific checks are
>+ * taken care of, however, we can run into a case where the OA unit catering to
>+ * the engine passed by the user is disabled for some reason. In such cases,
>+ * ensure oa unit corresponding to an engine is functional. If there are no
>+ * engines in the group, the unit is disabled.
>+ */
>+static bool oa_unit_functional(const struct intel_engine_cs *engine)
>+{
>+	return engine->oa_group && engine->oa_group->num_engines;
>+}
>+
> static bool engine_supports_oa(const struct intel_engine_cs *engine)
> {
> 	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
>
> 	switch (platform) {
>+	case INTEL_METEORLAKE:
>+		return engine->class == RENDER_CLASS ||
>+		       ((engine->class == VIDEO_DECODE_CLASS ||
>+			 engine->class == VIDEO_ENHANCEMENT_CLASS) &&
>+			engine->gt->type == GT_MEDIA);
> 	default:
> 		return engine->class == RENDER_CLASS;
> 	}
> }
>
>+static bool engine_class_supports_oa_format(struct intel_engine_cs *engine, int type)
>+{
>+	switch (engine->class) {
>+	case RENDER_CLASS:
>+		return type == TYPE_OAG;
>+	case VIDEO_DECODE_CLASS:
>+	case VIDEO_ENHANCEMENT_CLASS:
>+		return type == TYPE_OAM;
>+	default:
>+		return false;
>+	}
>+}
>+
> static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
> {
> 	struct i915_perf *perf = stream->perf;
>@@ -1680,7 +1726,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
> 		drm_WARN_ON(&gt->i915->drm,
> 			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
>
>-	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
>+	intel_uncore_forcewake_put(stream->uncore, g->fw_domains);
> 	intel_engine_pm_put(stream->engine);
>
> 	if (stream->ctx)
>@@ -1804,8 +1850,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
>
> 	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
>
>-	intel_uncore_write(uncore, GEN12_OAG_OASTATUS, 0);
>-	intel_uncore_write(uncore, GEN12_OAG_OAHEADPTR,
>+	intel_uncore_write(uncore, __oa_regs(stream)->oa_status, 0);
>+	intel_uncore_write(uncore, __oa_regs(stream)->oa_head_ptr,
> 			   gtt_offset & GEN12_OAG_OAHEADPTR_MASK);
> 	stream->oa_buffer.head = gtt_offset;
>
>@@ -1817,9 +1863,9 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
> 	 *  to enable proper functionality of the overflow
> 	 *  bit."
> 	 */
>-	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
>+	intel_uncore_write(uncore, __oa_regs(stream)->oa_buffer, gtt_offset |
> 			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
>-	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
>+	intel_uncore_write(uncore, __oa_regs(stream)->oa_tail_ptr,
> 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
>
> 	/* Mark that we need updated tail pointers to read from... */
>@@ -2579,7 +2625,8 @@ gen8_modify_self(struct intel_context *ce,
> 	return err;
> }
>
>-static int gen8_configure_context(struct i915_gem_context *ctx,
>+static int gen8_configure_context(struct i915_perf_stream *stream,
>+				  struct i915_gem_context *ctx,
> 				  struct flex *flex, unsigned int count)
> {
> 	struct i915_gem_engines_iter it;
>@@ -2589,7 +2636,8 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
> 	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
> 		GEM_BUG_ON(ce == ce->engine->kernel_context);
>
>-		if (!engine_supports_oa(ce->engine))
>+		if (!engine_supports_oa(ce->engine) ||
>+		    ce->engine->class != stream->engine->class)
> 			continue;
>
> 		/* Otherwise OA settings will be set upon first use */
>@@ -2720,7 +2768,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
>
> 		spin_unlock(&i915->gem.contexts.lock);
>
>-		err = gen8_configure_context(ctx, regs, num_regs);
>+		err = gen8_configure_context(stream, ctx, regs, num_regs);
> 		if (err) {
> 			i915_gem_context_put(ctx);
> 			return err;
>@@ -2740,7 +2788,8 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
> 	for_each_uabi_engine(engine, i915) {
> 		struct intel_context *ce = engine->kernel_context;
>
>-		if (!engine_supports_oa(ce->engine))
>+		if (!engine_supports_oa(ce->engine) ||
>+		    ce->engine->class != stream->engine->class)
> 			continue;
>
> 		regs[0].value = intel_sseu_make_rpcs(engine->gt, &ce->sseu);
>@@ -2765,6 +2814,9 @@ gen12_configure_all_contexts(struct i915_perf_stream *stream,
> 		},
> 	};
>
>+	if (stream->engine->class != RENDER_CLASS)
>+		return 0;
>+
> 	return oa_configure_all_contexts(stream,
> 					 regs, ARRAY_SIZE(regs),
> 					 active);
>@@ -2894,7 +2946,7 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
> 				   _MASKED_BIT_ENABLE(GEN12_DISABLE_DOP_GATING));
> 	}
>
>-	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
>+	intel_uncore_write(uncore, __oa_regs(stream)->oa_debug,
> 			   /* Disable clk ratio reports, like previous Gens. */
> 			   _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
> 					      GEN12_OAG_OA_DEBUG_INCLUDE_CLK_RATIO) |
>@@ -2904,7 +2956,7 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
> 			    */
> 			   oag_report_ctx_switches(stream));
>
>-	intel_uncore_write(uncore, GEN12_OAG_OAGLBCTXCTRL, periodic ?
>+	intel_uncore_write(uncore, __oa_regs(stream)->oa_ctx_ctrl, periodic ?
> 			   (GEN12_OAG_OAGLBCTXCTRL_COUNTER_RESUME |
> 			    GEN12_OAG_OAGLBCTXCTRL_TIMER_ENABLE |
> 			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
>@@ -3058,8 +3110,8 @@ static void gen8_oa_enable(struct i915_perf_stream *stream)
>
> static void gen12_oa_enable(struct i915_perf_stream *stream)
> {
>-	struct intel_uncore *uncore = stream->uncore;
>-	u32 report_format = stream->oa_buffer.format->format;
>+	const struct i915_perf_regs *regs;
>+	u32 val;
>
> 	/*
> 	 * If we don't want OA reports from the OA buffer, then we don't even
>@@ -3070,9 +3122,11 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
>
> 	gen12_init_oa_buffer(stream);
>
>-	intel_uncore_write(uncore, GEN12_OAG_OACONTROL,
>-			   (report_format << GEN12_OAG_OACONTROL_OA_COUNTER_FORMAT_SHIFT) |
>-			   GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE);
>+	regs = __oa_regs(stream);
>+	val = (stream->oa_buffer.format->format << regs->oa_ctrl_counter_format_shift) |
>+	      GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE;
>+
>+	intel_uncore_write(stream->uncore, regs->oa_ctrl, val);
> }
>
> /**
>@@ -3124,9 +3178,9 @@ static void gen12_oa_disable(struct i915_perf_stream *stream)
> {
> 	struct intel_uncore *uncore = stream->uncore;
>
>-	intel_uncore_write(uncore, GEN12_OAG_OACONTROL, 0);
>+	intel_uncore_write(uncore, __oa_regs(stream)->oa_ctrl, 0);
> 	if (intel_wait_for_register(uncore,
>-				    GEN12_OAG_OACONTROL,
>+				    __oa_regs(stream)->oa_ctrl,
> 				    GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE, 0,
> 				    50))
> 		drm_err(&stream->perf->i915->drm,
>@@ -3329,6 +3383,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>
> 	stream->sample_size = sizeof(struct drm_i915_perf_record_header);
>
>+	stream->oa_buffer.group = g;
> 	stream->oa_buffer.format = &perf->oa_formats[props->oa_format];
> 	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.format->size == 0))
> 		return -EINVAL;
>@@ -3379,7 +3434,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
> 	 *   references will effectively disable RC6.
> 	 */
> 	intel_engine_pm_get(stream->engine);
>-	intel_uncore_forcewake_get(stream->uncore, FORCEWAKE_ALL);
>+	intel_uncore_forcewake_get(stream->uncore, g->fw_domains);
>
> 	/*
> 	 * Wa_16011777198:dg2: GuC resets render as part of the Wa. This causes
>@@ -3440,7 +3495,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
> 		intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc);
>
> err_gucrc:
>-	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
>+	intel_uncore_forcewake_put(stream->uncore, g->fw_domains);
> 	intel_engine_pm_put(stream->engine);
>
> 	free_oa_configs(stream);
>@@ -4033,6 +4088,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
> 				    struct perf_open_properties *props)
> {
> 	struct drm_i915_gem_context_param_sseu user_sseu;
>+	const struct i915_oa_format *f;
> 	u64 __user *uprop = uprops;
> 	bool config_sseu = false;
> 	u8 class, instance;
>@@ -4203,6 +4259,17 @@ static int read_properties_unlocked(struct i915_perf *perf,
> 	if (!engine_supports_oa(props->engine))
> 		return -EINVAL;
>
>+	if (!oa_unit_functional(props->engine))
>+		return -ENODEV;
>+
>+	i = array_index_nospec(props->oa_format, I915_OA_FORMAT_MAX);
>+	f = &perf->oa_formats[i];
>+	if (!engine_class_supports_oa_format(props->engine, f->type)) {
>+		DRM_DEBUG("Invalid OA format %d for class %d\n",
>+			  f->type, props->engine->class);
>+		return -EINVAL;
>+	}
>+
> 	if (config_sseu) {
> 		ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
> 		if (ret) {
>@@ -4383,6 +4450,14 @@ static const struct i915_range gen12_oa_b_counters[] = {
> 	{}
> };
>
>+static const struct i915_range mtl_oam_b_counters[] = {
>+	{ .start = 0x393000, .end = 0x39301c },	/* GEN12_OAM_STARTTRIG1[1-8] */
>+	{ .start = 0x393020, .end = 0x39303c },	/* GEN12_OAM_REPORTTRIG1[1-8] */
>+	{ .start = 0x393040, .end = 0x39307c },	/* GEN12_OAM_CEC[0-7][0-1] */
>+	{ .start = 0x393200, .end = 0x39323C },	/* MPES[0-7] */
>+	{}
>+};
>+
> static const struct i915_range xehp_oa_b_counters[] = {
> 	{ .start = 0xdc48, .end = 0xdc48 },	/* OAA_ENABLE_REG */
> 	{ .start = 0xdd00, .end = 0xdd48 },	/* OAG_LCE0_0 - OAA_LENABLE_REG */
>@@ -4429,13 +4504,16 @@ static const struct i915_range gen12_oa_mux_regs[] = {
>
> /*
>  * Ref: 14010536224:
>- * 0x20cc is repurposed on MTL, so use a separate array for MTL.
>+ * 0x20cc is repurposed on MTL, so use a separate array for MTL. Also add the
>+ * MPES/MPEC registers.
>  */
> static const struct i915_range mtl_oa_mux_regs[] = {
> 	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
> 	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
> 	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
> 	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
>+	{ .start = 0x38d100, .end = 0x38d114},	/* VISACTL */
>+	{}
> };
>
> static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>@@ -4473,10 +4551,26 @@ static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> 	return reg_in_range_table(addr, gen12_oa_b_counters);
> }
>
>+static bool xehp_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
>+{
>+	enum intel_platform platform = INTEL_INFO(perf->i915)->platform;
>+
>+	if (!HAS_OAM(perf->i915))
>+		return false;
>+
>+	switch (platform) {
>+	case INTEL_METEORLAKE:
>+		return reg_in_range_table(addr, mtl_oam_b_counters);
>+	default:
>+		return false;
>+	}
>+}
>+
> static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> {
> 	return reg_in_range_table(addr, xehp_oa_b_counters) ||
>-		reg_in_range_table(addr, gen12_oa_b_counters);
>+		reg_in_range_table(addr, gen12_oa_b_counters) ||
>+		xehp_is_valid_oam_b_counter_addr(perf, addr);
> }
>
> static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>@@ -4846,11 +4940,39 @@ static u32 __num_perf_groups_per_gt(struct intel_gt *gt)
> 	enum intel_platform platform = INTEL_INFO(gt->i915)->platform;
>
> 	switch (platform) {
>+	case INTEL_METEORLAKE:
>+		return 1;
> 	default:
> 		return 1;
> 	}
> }
>
>+static u32 __oam_engine_group(struct intel_engine_cs *engine)
>+{
>+	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
>+	struct intel_gt *gt = engine->gt;
>+	u32 group = PERF_GROUP_INVALID;
>+
>+	switch (platform) {
>+	case INTEL_METEORLAKE:
>+		/*
>+		 * There's 1 SAMEDIA gt and 1 OAM per SAMEDIA gt. All media slices
>+		 * within the gt use the same OAM. All MTL SKUs list 1 SA MEDIA.
>+		 */
>+		drm_WARN_ON(&engine->i915->drm,
>+			    engine->gt->type != GT_MEDIA);
>+
>+		group = PERF_GROUP_OAM_SAMEDIA_0;
>+		break;
>+	default:
>+		break;
>+	}
>+
>+	drm_WARN_ON(&gt->i915->drm, group >= __num_perf_groups_per_gt(gt));
>+
>+	return group;
>+}
>+
> static u32 __oa_engine_group(struct intel_engine_cs *engine)
> {
> 	if (!engine_supports_oa(engine))
>@@ -4860,11 +4982,58 @@ static u32 __oa_engine_group(struct intel_engine_cs *engine)
> 	case RENDER_CLASS:
> 		return PERF_GROUP_OAG;
>
>+	case VIDEO_DECODE_CLASS:
>+	case VIDEO_ENHANCEMENT_CLASS:
>+		return __oam_engine_group(engine);
>+
> 	default:
> 		return PERF_GROUP_INVALID;
> 	}
> }
>
>+static struct i915_perf_regs __oam_regs(u32 base)
>+{
>+	return (struct i915_perf_regs) {
>+		base,
>+		GEN12_OAM_HEAD_POINTER(base),
>+		GEN12_OAM_TAIL_POINTER(base),
>+		GEN12_OAM_BUFFER(base),
>+		GEN12_OAM_CONTEXT_CONTROL(base),
>+		GEN12_OAM_CONTROL(base),
>+		GEN12_OAM_DEBUG(base),
>+		GEN12_OAM_STATUS(base),
>+		GEN12_OAM_CONTROL_COUNTER_FORMAT_SHIFT,
>+	};
>+}
>+
>+static struct i915_perf_regs __oag_regs(void)
>+{
>+	return (struct i915_perf_regs) {
>+		0,
>+		GEN12_OAG_OAHEADPTR,
>+		GEN12_OAG_OATAILPTR,
>+		GEN12_OAG_OABUFFER,
>+		GEN12_OAG_OAGLBCTXCTRL,
>+		GEN12_OAG_OACONTROL,
>+		GEN12_OAG_OA_DEBUG,
>+		GEN12_OAG_OASTATUS,
>+		GEN12_OAG_OACONTROL_OA_COUNTER_FORMAT_SHIFT,
>+	};
>+}
>+
>+static void oa_init_regs(struct intel_gt *gt, u32 id)
>+{
>+	struct i915_perf_group *group = &gt->perf.group[id];
>+	struct i915_perf_regs *regs = &group->regs;
>+
>+	if (id == PERF_GROUP_OAG && gt->type != GT_MEDIA)
>+		*regs = __oag_regs();
>+	else if (IS_METEORLAKE(gt->i915))
>+		*regs = __oam_regs(mtl_oa_base[id]);
>+	else
>+		drm_WARN(&gt->i915->drm, 1, "Unsupported platform for OA\n");
>+}
>+
> static void oa_init_groups(struct intel_gt *gt)
> {
> 	int i, num_groups = gt->perf.num_perf_groups;
>@@ -4881,6 +5050,24 @@ static void oa_init_groups(struct intel_gt *gt)
> 		g->oa_unit_id = perf->oa_unit_ids++;
>
> 		g->gt = gt;
>+		oa_init_regs(gt, i);
>+		g->fw_domains = FORCEWAKE_ALL;
>+		if (i == PERF_GROUP_OAG) {
>+			g->type = TYPE_OAG;
>+
>+			/*
>+			 * Enabling all fw domains for OAG caps the max GT
>+			 * frequency to media FF max. This could be less than
>+			 * what the user sets through the sysfs and perf
>+			 * measurements could be skewed. Since some platforms
>+			 * have separate OAM units to measure media perf, do not
>+			 * enable media fw domains for OAG.
>+			 */
>+			if (HAS_OAM(gt->i915))
>+				g->fw_domains = FORCEWAKE_GT | FORCEWAKE_RENDER;
>+		} else {
>+			g->type = TYPE_OAM;
>+		}
> 	}
> }
>
>@@ -4970,9 +5157,15 @@ static void oa_init_supported_formats(struct i915_perf *perf)
> 		break;
>
> 	case INTEL_DG2:
>+		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
>+		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
>+		break;
>+
> 	case INTEL_METEORLAKE:
> 		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
> 		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
>+		oa_format_add(perf, I915_OAM_FORMAT_MPEC8u64_B8_C8);
>+		oa_format_add(perf, I915_OAM_FORMAT_MPEC8u32_B8_C8);
> 		break;
>
> 	default:
>@@ -5217,8 +5410,10 @@ int i915_perf_ioctl_version(void)
> 	 *
> 	 * 6: Add DRM_I915_PERF_PROP_OA_ENGINE_CLASS and
> 	 *    DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE
>+	 *
>+	 * 7: Add support for video decode and enhancement classes.
> 	 */
>-	return 6;
>+	return 7;
> }
>
> #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>index 381d94101610..ba103875e19f 100644
>--- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>+++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>@@ -138,4 +138,82 @@
> #define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> #define   GEN12_SQCNT1_OABPC			REG_BIT(29)
>
>+/* Gen12 OAM unit */
>+#define GEN12_OAM_HEAD_POINTER_OFFSET   (0x1a0)
>+#define  GEN12_OAM_HEAD_POINTER_MASK    0xffffffc0
>+
>+#define GEN12_OAM_TAIL_POINTER_OFFSET   (0x1a4)
>+#define  GEN12_OAM_TAIL_POINTER_MASK    0xffffffc0
>+
>+#define GEN12_OAM_BUFFER_OFFSET         (0x1a8)
>+#define  GEN12_OAM_BUFFER_SIZE_MASK     (0x7)
>+#define  GEN12_OAM_BUFFER_SIZE_SHIFT    (3)
>+#define  GEN12_OAM_BUFFER_MEMORY_SELECT REG_BIT(0) /* 0: PPGTT, 1: GGTT */
>+
>+#define GEN12_OAM_CONTEXT_CONTROL_OFFSET              (0x1bc)
>+#define  GEN12_OAM_CONTEXT_CONTROL_TIMER_PERIOD_SHIFT 2
>+#define  GEN12_OAM_CONTEXT_CONTROL_TIMER_ENABLE       REG_BIT(1)
>+#define  GEN12_OAM_CONTEXT_CONTROL_COUNTER_RESUME     REG_BIT(0)
>+
>+#define GEN12_OAM_CONTROL_OFFSET                (0x194)
>+#define  GEN12_OAM_CONTROL_COUNTER_FORMAT_SHIFT 1
>+#define  GEN12_OAM_CONTROL_COUNTER_ENABLE       REG_BIT(0)
>+
>+#define GEN12_OAM_DEBUG_OFFSET                      (0x198)
>+#define  GEN12_OAM_DEBUG_BUFFER_SIZE_SELECT         REG_BIT(12)
>+#define  GEN12_OAM_DEBUG_INCLUDE_CLK_RATIO          REG_BIT(6)
>+#define  GEN12_OAM_DEBUG_DISABLE_CLK_RATIO_REPORTS  REG_BIT(5)
>+#define  GEN12_OAM_DEBUG_DISABLE_GO_1_0_REPORTS     REG_BIT(2)
>+#define  GEN12_OAM_DEBUG_DISABLE_CTX_SWITCH_REPORTS REG_BIT(1)
>+
>+#define GEN12_OAM_STATUS_OFFSET            (0x19c)
>+#define  GEN12_OAM_STATUS_COUNTER_OVERFLOW REG_BIT(2)
>+#define  GEN12_OAM_STATUS_BUFFER_OVERFLOW  REG_BIT(1)
>+#define  GEN12_OAM_STATUS_REPORT_LOST      REG_BIT(0)
>+
>+#define GEN12_OAM_MMIO_TRG_OFFSET	(0x1d0)
>+
>+#define GEN12_OAM_MMIO_TRG(base) \
>+	_MMIO((base) + GEN12_OAM_MMIO_TRG_OFFSET)
>+
>+#define GEN12_OAM_HEAD_POINTER(base) \
>+	_MMIO((base) + GEN12_OAM_HEAD_POINTER_OFFSET)
>+#define GEN12_OAM_TAIL_POINTER(base) \
>+	_MMIO((base) + GEN12_OAM_TAIL_POINTER_OFFSET)
>+#define GEN12_OAM_BUFFER(base) \
>+	_MMIO((base) + GEN12_OAM_BUFFER_OFFSET)
>+#define GEN12_OAM_CONTEXT_CONTROL(base) \
>+	_MMIO((base) + GEN12_OAM_CONTEXT_CONTROL_OFFSET)
>+#define GEN12_OAM_CONTROL(base) \
>+	_MMIO((base) + GEN12_OAM_CONTROL_OFFSET)
>+#define GEN12_OAM_DEBUG(base) \
>+	_MMIO((base) + GEN12_OAM_DEBUG_OFFSET)
>+#define GEN12_OAM_STATUS(base) \
>+	_MMIO((base) + GEN12_OAM_STATUS_OFFSET)
>+
>+#define GEN12_OAM_CEC0_0_OFFSET		(0x40)
>+#define GEN12_OAM_CEC7_1_OFFSET		(0x7c)
>+#define GEN12_OAM_CEC0_0(base) \
>+	_MMIO((base) + GEN12_OAM_CEC0_0_OFFSET)
>+#define GEN12_OAM_CEC7_1(base) \
>+	_MMIO((base) + GEN12_OAM_CEC7_1_OFFSET)
>+
>+#define GEN12_OAM_STARTTRIG1_OFFSET	(0x00)
>+#define GEN12_OAM_STARTTRIG8_OFFSET	(0x1c)
>+#define GEN12_OAM_STARTTRIG1(base) \
>+	_MMIO((base) + GEN12_OAM_STARTTRIG1_OFFSET)
>+#define GEN12_OAM_STARTTRIG8(base) \
>+	_MMIO((base) + GEN12_OAM_STARTTRIG8_OFFSET)
>+
>+#define GEN12_OAM_REPORTTRIG1_OFFSET	(0x20)
>+#define GEN12_OAM_REPORTTRIG8_OFFSET	(0x3c)
>+#define GEN12_OAM_REPORTTRIG1(base) \
>+	_MMIO((base) + GEN12_OAM_REPORTTRIG1_OFFSET)
>+#define GEN12_OAM_REPORTTRIG8(base) \
>+	_MMIO((base) + GEN12_OAM_REPORTTRIG8_OFFSET)
>+
>+#define GEN12_OAM_PERF_COUNTER_B0_OFFSET	(0x84)
>+#define GEN12_OAM_PERF_COUNTER_B(base, idx) \
>+	_MMIO((base) + GEN12_OAM_PERF_COUNTER_B0_OFFSET + 4 * (idx))
>+
> #endif /* __INTEL_PERF_OA_REGS__ */
>diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
>index 8ccb0b89d019..5b2c3bab60f8 100644
>--- a/drivers/gpu/drm/i915/i915_perf_types.h
>+++ b/drivers/gpu/drm/i915/i915_perf_types.h
>@@ -20,6 +20,7 @@
> #include "gt/intel_engine_types.h"
> #include "gt/intel_sseu.h"
> #include "i915_reg_defs.h"
>+#include "intel_uncore.h"
> #include "intel_wakeref.h"
>
> struct drm_i915_private;
>@@ -33,6 +34,7 @@ struct intel_engine_cs;
>
> enum {
> 	PERF_GROUP_OAG = 0,
>+	PERF_GROUP_OAM_SAMEDIA_0 = 0,
>
> 	PERF_GROUP_MAX,
> 	PERF_GROUP_INVALID = U32_MAX,
>@@ -43,9 +45,27 @@ enum report_header {
> 	HDR_64_BIT,
> };
>
>+struct i915_perf_regs {
>+	u32 base;
>+	i915_reg_t oa_head_ptr;
>+	i915_reg_t oa_tail_ptr;
>+	i915_reg_t oa_buffer;
>+	i915_reg_t oa_ctx_ctrl;
>+	i915_reg_t oa_ctrl;
>+	i915_reg_t oa_debug;
>+	i915_reg_t oa_status;
>+	u32 oa_ctrl_counter_format_shift;
>+};
>+
>+enum {
>+	TYPE_OAG,
>+	TYPE_OAM,
>+};
>+
> struct i915_oa_format {
> 	u32 format;
> 	int size;
>+	int type;
> 	enum report_header header;
> };
>
>@@ -317,6 +337,11 @@ struct i915_perf_stream {
> 		 * @tail: The last verified tail that can be read by userspace.
> 		 */
> 		u32 tail;
>+
>+		/**
>+		 * @group: The group object for this OA buffer.
>+		 */
>+		struct i915_perf_group *group;
> 	} oa_buffer;
>
> 	/**
>@@ -431,6 +456,21 @@ struct i915_perf_group {
> 	 * @engine_mask: A mask of engines using a single OA buffer.
> 	 */
> 	intel_engine_mask_t engine_mask;
>+
>+	/*
>+	 * @regs: OA buffer register group for programming the OA unit.
>+	 */
>+	struct i915_perf_regs regs;
>+
>+	/*
>+	 * @type: Type of OA buffer, OAM, OAG etc.
>+	 */
>+	int type;
>+
>+	/*
>+	 * @fw_domains: forcewake domains required for this group.
>+	 */
>+	enum forcewake_domains fw_domains;
> };
>
> struct i915_perf_gt {
>diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>index 80bda653d61b..45e218327f44 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.h
>+++ b/drivers/gpu/drm/i915/intel_device_info.h
>@@ -166,6 +166,7 @@ enum intel_ppgtt_type {
> 	func(has_mslice_steering); \
> 	func(has_oa_bpc_reporting); \
> 	func(has_oa_slice_contrib_limits); \
>+	func(has_oam); \
> 	func(has_one_eu_per_fuse_bit); \
> 	func(has_pxp); \
> 	func(has_rc6); \
>diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>index b6922b52d85c..70bfa6530dbc 100644
>--- a/include/uapi/drm/i915_drm.h
>+++ b/include/uapi/drm/i915_drm.h
>@@ -2676,6 +2676,10 @@ enum drm_i915_oa_format {
> 	I915_OAR_FORMAT_A32u40_A4u32_B8_C8,
> 	I915_OA_FORMAT_A24u40_A14u32_B8_C8,
>
>+	/* MTL OAM */
>+	I915_OAM_FORMAT_MPEC8u64_B8_C8,
>+	I915_OAM_FORMAT_MPEC8u32_B8_C8,
>+
> 	I915_OA_FORMAT_MAX	    /* non-ABI */
> };
>
>-- 
>2.36.1
>
