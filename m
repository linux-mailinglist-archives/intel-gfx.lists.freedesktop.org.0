Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F09C15B9081
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 00:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78AF810EA20;
	Wed, 14 Sep 2022 22:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B3910E0EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 22:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663194401; x=1694730401;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=A7Z2lC00gpDcrB0YFgcwbISo9TF2SsEIJ9114HVvb/U=;
 b=NuA/lnP+93iIiZ5Tfam3d5o2dquad11EnCOkdUW4WzAOf/iCcmlMt7m1
 Er+KQUici8v/hZUXkluN8/WtHOix0YG2ssXhgwRXGCV7TjUrA1VuzshqS
 iL6qG30vweyWsQWzEskeK04gHOQeJNZfZBJdwhYEmUOrcyQ0ZyisOoIcU
 gAeW9Tz4lg/H2iOE7hP8b+KQW5YKKI4aQqQQMIKmyBS14dXX/bVuDuENx
 ZjVKbbVzZZXGO+qu0B1x2NuL9izuTC0RefVIVaxrm2/JbYfZwM1JTFmtX
 ZzMZGQCCT98IJzZUfvMECL4V9tUMOcuQaQCj/z/nbjA2bADZk/j0J4GxP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="285596901"
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="285596901"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 15:26:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="792475671"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 14 Sep 2022 15:26:40 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 15:26:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 15:26:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 15:26:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HLNGnu7E4aBlnEY5rnsqBA6mvAS02Mu0xwa2tHJyZtOB7rYw9R4h1KOF/XBZX4+3Tyh8RWF5sXFxXaMrzsEOEC0UDEoJ12/7uWXNPN2KY//Wix+GlfINLbCGGI2wxCorG93Rqo+e++a5X4Zsi58Vv5LSr/M8YCEPKmO8r6kMr4tGTyXFVJayHH6LAwRnkmpyHR3yoytz9Wyhu+iBopJm6E77wMgLy8jxzxmlCDxOYG2jpGstKnQh0YRtMepiY84MCbLFPj7hd074efgKC8tBptimgWKtFjsYvgx8swLwf3Bk3WIydxzYBDQ94IutHNuubxQmqO6LyM5v977HPY7R+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P2GSynPHMTAksZr1kFrXs+tG5VPDinF+Zaza7CBmsos=;
 b=KRqCwnkYLv+0RwDach46/oWTdJraBfP0ZWqD0kenDKjfA76nQWIrNmox5fY/d+hFRD4qtGVO1srBk7WoF7qjsL7c3n2IBSkRufzhDEd5CuZsfN+V+rp0ujjE710wCPYG0IueFkdot8Sh/FFYUZTx+AVYs4S8u34zTkhfeffaPAMsa6vJF1sB08woT14i+00vVnpJWQA0V6iuOh99/ofRpFh19YQJlmOpSUi18tALZjXs7lohx8Ss+9RRParL2DEG8IzIglB5xXYkF1wX2G74kji3kKxM1qBF2tdX4fGlJVuVd/RZLElynUn9PfIxmEYOhkPuKY3CoBrRqpBwE7fGMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DS0PR11MB7215.namprd11.prod.outlook.com (2603:10b6:8:13a::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.20; Wed, 14 Sep 2022 22:26:33 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 22:26:32 +0000
Date: Wed, 14 Sep 2022 15:26:15 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <YyJVB9DpKwhqqCHR@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-2-umesh.nerlige.ramappa@intel.com>
 <9afc705a-87a1-c51e-b223-e32accbcd2fe@intel.com>
 <YxeF0b6ohtFcDXf6@unerlige-ril>
 <f1e9e230-2626-0f6c-02a7-e063122b759b@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f1e9e230-2626-0f6c-02a7-e063122b759b@intel.com>
X-ClientProxiedBy: BY5PR03CA0030.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::40) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DS0PR11MB7215:EE_
X-MS-Office365-Filtering-Correlation-Id: 184efe29-5bc7-4880-3e7a-08da96a02d36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oX4sgmtigV9wPbuDfgKCYuehcBtsOQiME4vJzZTfVxEzNGeagLdOtE645OgGHugBaHS2ekZ0GaXQiDU3nyuWZAhrcvhXIIsCz2M2mnP8B6k5z2Lj0ekPydi4JK/lCJnoiD/+EU+veTAqdGPnXQ7UlZfH+158ZWSM2MMucHME7btrDd+9jtaVCaoTYrJf+j+UdhkEQw+NfZ+HNy9K5Hq7nJ0SxfTQhOnPoGqKSHwWxayEjEuZwDuBl7e4d1OFG958kc0Y1HVBJ/Sl2BPqu/zdUe13J4wOV0ijKKneKzK+Kxi+aGHXJuhtIkMp6SVv0HTrWWqP1q3rZV/Kni7AM/Oq9xugjQo6JqB1j3ERFhRzkzaHsVFoDXoy0Dhx/4YH6iSJEa8HxyndOLFa4lmIHbfXeuJs5xWktmmk/XrIQxF80e00wT9SjnBBHgimJKbGgCHKs1TafgatGfIa/E6ePqyyFTzO+QTe8tGxKesAgTjqeCIZs9bSrUR9BIMAc7xVD+W8N5/8cMtuAXtdWiUk3lr5L/aMYMd9HTWtKc+VXhfoskWz50WIgrOwYSFGFQeHq2QAlxpF7CtKSJka4Vwgc9EHT1RX2E2QElBeqnzVedjsT0jSunmlzTOka31BG6Ee4NB8pfCrLTq0n8FmqaIrYv2y7Fvrl9DFeNutY6cmUC/tR0sHMsRWQ+PhgrODdNl2nXapdYZPGD+fV4LtzH0+fAqgF5DAecnaIPW/720+kBQEKAiOx0i1IZEhDP9hXeqapzYEY2TcVLN/+NOmc20xD+Vvuw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(346002)(396003)(136003)(39860400002)(366004)(451199015)(86362001)(8936002)(6862004)(41300700001)(8676002)(2906002)(33716001)(6486002)(6636002)(478600001)(83380400001)(107886003)(6506007)(66556008)(26005)(186003)(38100700002)(4326008)(6666004)(5660300002)(6512007)(316002)(9686003)(66476007)(82960400001)(66946007)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHlRdDN6TFA5WHVDUkUzbDNmcnJsTnozTFRkTEEwSE5TNFp2ZnNWaUh1WXUv?=
 =?utf-8?B?U2lkekVmTHlCckhuUGpkK0N4RjFoT3JWNEcyWnc3bk13aVE1T2QvQUdGeWFG?=
 =?utf-8?B?RlU3K2szb3hodEczWjFRWEV5UzlFR2JYM0N3NGhQSHRwVWExUWFyQTROUTE2?=
 =?utf-8?B?SktNZXRQV0lTUW85ZkY2NDBtYkFNdjZGdWp6SzNkQ1JDZHB0dGxUMzJMbjVR?=
 =?utf-8?B?S3QraGd2eUFYQ0JJZnBNRU1XTHVRdXZWOWJuNVlWdVJ4a2xodTNvbnBvVFJh?=
 =?utf-8?B?U0t4WGtJUjErTUxidzdrM25YZlMrckgydnNYZUEveWRaWmVyRmZnR0N4TFZI?=
 =?utf-8?B?RytRNmVEZkEwa3p3b0wwelFrejBMSUlLT1o0cGFVK0NpclNLMjUvb3VaVnJ0?=
 =?utf-8?B?blZjeWpnUUR2MUtOSmZpeDFZVmdUOVJ0UGFaWEhWYVlTNWhvMk5CNjc5SmdC?=
 =?utf-8?B?dk8vM29OUDErK1RjbFlWVkFodU5XNk5obCs4VzdqOEs4QXFRNElhZ2RCVm1z?=
 =?utf-8?B?U2xGR3c5MTJjRyt6ZjM2WjBhc2RBUGthVFhSeUp3cGJHUTdmWm1CcVNVQzNk?=
 =?utf-8?B?QUdSRWRJS0pFVzdINmgvdTlnN1I0YTh4TzNZWTR3QUZ0MjFuSy9RMncwMkR0?=
 =?utf-8?B?THpzNW1tYjRuc1c3R2g5ZnY3dW5GYVRveEdRSTNWZkdjeTNNSTBCT3k2Sk8x?=
 =?utf-8?B?TkhhS0dLa0kyZ3JCVWh2aGswaXppMU5oN0hvVmlNUUgvWWY1TVhia1Y2aHVi?=
 =?utf-8?B?KzVKdTNwd3lJd0wwOGdUNHltTTVOajRsVmQvaHFxRmQ3MjNlc2lLcjNFN0Z0?=
 =?utf-8?B?bUgvcWlQM3ZkVFRKeFhrQVRsRnNQb2xqSTY0bEdWaGJUUFQ4U3N0VE1xb1VJ?=
 =?utf-8?B?YU1SaFdhSktpOHZQeERSK01jYkhlRjI2VHFZc1RDTEFVMTJ1WFdwNytkTFFO?=
 =?utf-8?B?V3UrcEJvRzhxSFF0R3pVV1UrNlVsL1cvTDNtb0xjQlJXdFh4dThtcjJkdG5v?=
 =?utf-8?B?TTEyelVBdnNnY1d5WVRlaGZZVEU0d1JYT0xobm9YWVJNM3NRZkVuNWdacjNY?=
 =?utf-8?B?c2ZlaHNMeUZCN0hwT1BMQXNiSjM2UVpnVnhsWDZnbldpM2IyRUx6SGhoZkps?=
 =?utf-8?B?SnErYWY5TG5EeXlHbmUzREc0cTBtUEtjQm1lMzNXVkE0U2xQcG5iRzdOZzlx?=
 =?utf-8?B?T3d6K29LMzZsaFlYMVVoclI2Rnk3dmtXeHJKUi9md3poellMeDBvTDVSY09E?=
 =?utf-8?B?bGxKcEl5Q2VVSjBEM3F3YmFWRWdxS1JHZzlsQkk1Tk8rcTVRY0pZV1VtNEZv?=
 =?utf-8?B?RTlwajIxajF3SXM5Q0Ira3BkSXZvanl4aEhWbXRGVE9iMXIvREpiOVNpd0xL?=
 =?utf-8?B?SGxOeGNRb1ppT2gyRjJVM0RSN1BuTHhzWjFuY3BnVnkreDM4QmdXaHBHbWxX?=
 =?utf-8?B?L2VyRUFhNDY0RHVJVWNPald4RGh6YmcvOFY2ZWdrYW01K0ppZXlJcXptdWdV?=
 =?utf-8?B?MHpyUUV3ZVV5dUpkNGJjZm5OT092Rk9ZNWtjNDNnRW1IWU9VdnRaUHgyTS9a?=
 =?utf-8?B?TXlRT0V5RWpoRjJHOHUxemozUmRqRGNiQmhtMzIvdFZnaWxXays0RmZiam9E?=
 =?utf-8?B?U3pvSUFGZ0YrbmxkZUM4OGR5WS8yd0s0cTlGcDRJdzhHU0xCQWxBTFZRTG12?=
 =?utf-8?B?ZUxoWEhHYVJiQ3FFMHBMQ0w0VDluZGJtREI5SHcyaVVvQmw1SEc2bWdwTjF6?=
 =?utf-8?B?emNOeUFpNm5VR0dRZjNDNDJKRllvMG5OOWpJdFNEN0dlK0FSTTVBamRsOVlH?=
 =?utf-8?B?K0pCSU9keUNBNU1kN3RjR0xIcXA5YzhFTktFd1pxaUplcUpWVXk4eGJDL0dn?=
 =?utf-8?B?d2crOStrVElLWUhFQ0J2czRXNEdpVUdwdVMvOXBWOXAxZUtvc0psNmhKR1N6?=
 =?utf-8?B?SlV6MzdZTHlOaGV6VlpPYnZUM3FiQWFCektRcUdKMzdjTy8ycE9QenRMU2Ri?=
 =?utf-8?B?WjYyS2xUNjBKMEZYTUhmSlh5UzBoa0pJVVdVODgzbTFvblNkbzRZTm11MkU4?=
 =?utf-8?B?YWhtOGJseXd3bU1NUEVLY1ZDMk5nRmtSSjhpT3BYTHZXa1c4ZkZzMzdTWEFE?=
 =?utf-8?B?OG41QlllTEY4U2VqZmNHVEJVcExDSHFUNUpPVDVLb0pBdHJNNEtyK3Q5cXF4?=
 =?utf-8?Q?Q0s1P4NOg3pZKvQBQi+gG/k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 184efe29-5bc7-4880-3e7a-08da96a02d36
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 22:26:32.5841 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AY68HhCdRzSRTVsPwPn2k+g5ylAVXgB0yjGm0BcNClpKnCjh2RwLF70/qtS6GBm92rTgo/F31wozD09FVYTZaFJMMVg5rqdfhSPXW6kZxCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7215
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915/perf: Fix OA filtering logic
 for GuC mode
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

On Tue, Sep 06, 2022 at 09:39:33PM +0300, Lionel Landwerlin wrote:
>On 06/09/2022 20:39, Umesh Nerlige Ramappa wrote:
>>On Tue, Sep 06, 2022 at 05:33:00PM +0300, Lionel Landwerlin wrote:
>>>On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>>>With GuC mode of submission, GuC is in control of defining the 
>>>>context id field
>>>>that is part of the OA reports. To filter reports, UMD and KMD 
>>>>must know what sw
>>>>context id was chosen by GuC. There is not interface between KMD 
>>>>and GuC to
>>>>determine this, so read the upper-dword of EXECLIST_STATUS to 
>>>>filter/squash OA
>>>>reports for the specific context.
>>>>
>>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>
>>>
>>>I assume you checked with GuC that this doesn't change as the 
>>>context is running?
>>
>>Correct.
>>
>>>
>>>With i915/execlist submission mode, we had to ask i915 to pin the 
>>>sw_id/ctx_id.
>>>
>>
>>From GuC perspective, the context id can change once KMD 
>>de-registers the context and that will not happen while the context 
>>is in use.
>>
>>Thanks,
>>Umesh
>
>
>Thanks Umesh,
>
>
>Maybe I should have been more precise in my question :
>
>
>Can the ID change while the i915-perf stream is opened?
>
>Because the ID not changing while the context is running makes sense.
>
>But since the number of available IDs is limited to 2k or something on 
>Gfx12, it's possible the GuC has to reuse IDs if too many apps want to 
>run during the period of time while i915-perf is active and filtering.
>

available guc ids are 64k with 4k reserved for multi-lrc, so GuC may 
have to reuse ids once 60k ids are used up.

Thanks,
Umesh

>
>-Lionel
>
>
>>
>>>
>>>If that's not the case then filtering is broken.
>>>
>>>
>>>-Lionel
>>>
>>>
>>>>---
>>>> drivers/gpu/drm/i915/gt/intel_lrc.h |   2 +
>>>> drivers/gpu/drm/i915/i915_perf.c    | 141 ++++++++++++++++++++++++----
>>>> 2 files changed, 124 insertions(+), 19 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h 
>>>>b/drivers/gpu/drm/i915/gt/intel_lrc.h
>>>>index a390f0813c8b..7111bae759f3 100644
>>>>--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
>>>>+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
>>>>@@ -110,6 +110,8 @@ enum {
>>>> #define XEHP_SW_CTX_ID_WIDTH            16
>>>> #define XEHP_SW_COUNTER_SHIFT            58
>>>> #define XEHP_SW_COUNTER_WIDTH            6
>>>>+#define GEN12_GUC_SW_CTX_ID_SHIFT        39
>>>>+#define GEN12_GUC_SW_CTX_ID_WIDTH        16
>>>> static inline void lrc_runtime_start(struct intel_context *ce)
>>>> {
>>>>diff --git a/drivers/gpu/drm/i915/i915_perf.c 
>>>>b/drivers/gpu/drm/i915/i915_perf.c
>>>>index f3c23fe9ad9c..735244a3aedd 100644
>>>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>>>@@ -1233,6 +1233,125 @@ static struct intel_context 
>>>>*oa_pin_context(struct i915_perf_stream *stream)
>>>>     return stream->pinned_ctx;
>>>> }
>>>>+static int
>>>>+__store_reg_to_mem(struct i915_request *rq, i915_reg_t reg, u32 
>>>>ggtt_offset)
>>>>+{
>>>>+    u32 *cs, cmd;
>>>>+
>>>>+    cmd = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
>>>>+    if (GRAPHICS_VER(rq->engine->i915) >= 8)
>>>>+        cmd++;
>>>>+
>>>>+    cs = intel_ring_begin(rq, 4);
>>>>+    if (IS_ERR(cs))
>>>>+        return PTR_ERR(cs);
>>>>+
>>>>+    *cs++ = cmd;
>>>>+    *cs++ = i915_mmio_reg_offset(reg);
>>>>+    *cs++ = ggtt_offset;
>>>>+    *cs++ = 0;
>>>>+
>>>>+    intel_ring_advance(rq, cs);
>>>>+
>>>>+    return 0;
>>>>+}
>>>>+
>>>>+static int
>>>>+__read_reg(struct intel_context *ce, i915_reg_t reg, u32 ggtt_offset)
>>>>+{
>>>>+    struct i915_request *rq;
>>>>+    int err;
>>>>+
>>>>+    rq = i915_request_create(ce);
>>>>+    if (IS_ERR(rq))
>>>>+        return PTR_ERR(rq);
>>>>+
>>>>+    i915_request_get(rq);
>>>>+
>>>>+    err = __store_reg_to_mem(rq, reg, ggtt_offset);
>>>>+
>>>>+    i915_request_add(rq);
>>>>+    if (!err && i915_request_wait(rq, 0, HZ / 2) < 0)
>>>>+        err = -ETIME;
>>>>+
>>>>+    i915_request_put(rq);
>>>>+
>>>>+    return err;
>>>>+}
>>>>+
>>>>+static int
>>>>+gen12_guc_sw_ctx_id(struct intel_context *ce, u32 *ctx_id)
>>>>+{
>>>>+    struct i915_vma *scratch;
>>>>+    u32 *val;
>>>>+    int err;
>>>>+
>>>>+    scratch = 
>>>>__vm_create_scratch_for_read_pinned(&ce->engine->gt->ggtt->vm, 
>>>>4);
>>>>+    if (IS_ERR(scratch))
>>>>+        return PTR_ERR(scratch);
>>>>+
>>>>+    err = i915_vma_sync(scratch);
>>>>+    if (err)
>>>>+        goto err_scratch;
>>>>+
>>>>+    err = __read_reg(ce, 
>>>>RING_EXECLIST_STATUS_HI(ce->engine->mmio_base),
>>>>+             i915_ggtt_offset(scratch));
>>>>+    if (err)
>>>>+        goto err_scratch;
>>>>+
>>>>+    val = i915_gem_object_pin_map_unlocked(scratch->obj, I915_MAP_WB);
>>>>+    if (IS_ERR(val)) {
>>>>+        err = PTR_ERR(val);
>>>>+        goto err_scratch;
>>>>+    }
>>>>+
>>>>+    *ctx_id = *val;
>>>>+    i915_gem_object_unpin_map(scratch->obj);
>>>>+
>>>>+err_scratch:
>>>>+    i915_vma_unpin_and_release(&scratch, 0);
>>>>+    return err;
>>>>+}
>>>>+
>>>>+/*
>>>>+ * For execlist mode of submission, pick an unused context id
>>>>+ * 0 - (NUM_CONTEXT_TAG -1) are used by other contexts
>>>>+ * XXX_MAX_CONTEXT_HW_ID is used by idle context
>>>>+ *
>>>>+ * For GuC mode of submission read context id from the upper 
>>>>dword of the
>>>>+ * EXECLIST_STATUS register.
>>>>+ */
>>>>+static int gen12_get_render_context_id(struct i915_perf_stream 
>>>>*stream)
>>>>+{
>>>>+    u32 ctx_id, mask;
>>>>+    int ret;
>>>>+
>>>>+    if (intel_engine_uses_guc(stream->engine)) {
>>>>+        ret = gen12_guc_sw_ctx_id(stream->pinned_ctx, &ctx_id);
>>>>+        if (ret)
>>>>+            return ret;
>>>>+
>>>>+        mask = ((1U << GEN12_GUC_SW_CTX_ID_WIDTH) - 1) <<
>>>>+            (GEN12_GUC_SW_CTX_ID_SHIFT - 32);
>>>>+    } else if (GRAPHICS_VER_FULL(stream->engine->i915) >= 
>>>>IP_VER(12, 50)) {
>>>>+        ctx_id = (XEHP_MAX_CONTEXT_HW_ID - 1) <<
>>>>+            (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>+
>>>>+        mask = ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>>>>+            (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>+    } else {
>>>>+        ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) <<
>>>>+             (GEN11_SW_CTX_ID_SHIFT - 32);
>>>>+
>>>>+        mask = ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) <<
>>>>+            (GEN11_SW_CTX_ID_SHIFT - 32);
>>>>+    }
>>>>+    stream->specific_ctx_id = ctx_id & mask;
>>>>+    stream->specific_ctx_id_mask = mask;
>>>>+
>>>>+    return 0;
>>>>+}
>>>>+
>>>> /**
>>>>  * oa_get_render_ctx_id - determine and hold ctx hw id
>>>>  * @stream: An i915-perf stream opened for OA metrics
>>>>@@ -1246,6 +1365,7 @@ static struct intel_context 
>>>>*oa_pin_context(struct i915_perf_stream *stream)
>>>> static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>>> {
>>>>     struct intel_context *ce;
>>>>+    int ret = 0;
>>>>     ce = oa_pin_context(stream);
>>>>     if (IS_ERR(ce))
>>>>@@ -1292,24 +1412,7 @@ static int oa_get_render_ctx_id(struct 
>>>>i915_perf_stream *stream)
>>>>     case 11:
>>>>     case 12:
>>>>-        if (GRAPHICS_VER_FULL(ce->engine->i915) >= IP_VER(12, 50)) {
>>>>-            stream->specific_ctx_id_mask =
>>>>-                ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>>>>-                (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>-            stream->specific_ctx_id =
>>>>-                (XEHP_MAX_CONTEXT_HW_ID - 1) <<
>>>>-                (XEHP_SW_CTX_ID_SHIFT - 32);
>>>>-        } else {
>>>>-            stream->specific_ctx_id_mask =
>>>>-                ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << 
>>>>(GEN11_SW_CTX_ID_SHIFT - 32);
>>>>-            /*
>>>>-             * Pick an unused context id
>>>>-             * 0 - BITS_PER_LONG are used by other contexts
>>>>-             * GEN12_MAX_CONTEXT_HW_ID (0x7ff) is used by idle context
>>>>-             */
>>>>-            stream->specific_ctx_id =
>>>>-                (GEN12_MAX_CONTEXT_HW_ID - 1) << 
>>>>(GEN11_SW_CTX_ID_SHIFT - 32);
>>>>-        }
>>>>+        ret = gen12_get_render_context_id(stream);
>>>>         break;
>>>>     default:
>>>>@@ -1323,7 +1426,7 @@ static int oa_get_render_ctx_id(struct 
>>>>i915_perf_stream *stream)
>>>>         stream->specific_ctx_id,
>>>>         stream->specific_ctx_id_mask);
>>>>-    return 0;
>>>>+    return ret;
>>>> }
>>>> /**
>>>
>>>
>
