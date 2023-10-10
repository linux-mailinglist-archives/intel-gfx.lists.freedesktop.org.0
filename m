Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6B77C42FA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 23:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F347710E3E7;
	Tue, 10 Oct 2023 21:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF9010E3E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 21:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696974696; x=1728510696;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5uieYmCK0FW2LuCVf6YeKK4FHUEuNvssXYdu1zwfyBM=;
 b=Uks00LjWzQT4s3BTI6OegYlHyW5l/JCWXaK4IsOrOQW7vuRtPNVPnCJf
 HnUhDqkiRBYUhfc0ZMSIa2NJSQRuSaT7fxLcMuJK1os6+hZcwpBsvTOR0
 t1NusH7RMRIOQ3vYE3oJ6q35oGt0abPFkAisQSmJe92KxJG+65XkwNt/e
 A7x0xcAOrpIsdtw3ruPdr4VGkROb2ZQkj4/VfVUMWD/foY3OOUbx1Mkdx
 tdtxavEX7D/KfnqYOPPeKhxTtYRTnsoqB3JS/0JXkg9pAM2E5Q/uvJrWS
 hcXnlP5sCQqQ9V2wReJ7XzqOj/f89/TPxE8ihYlic2W0yVff0qgDAwTYy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="470777681"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="470777681"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 14:51:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="877394385"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="877394385"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 14:51:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 14:51:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 14:51:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 14:51:34 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 14:51:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JGgLsLLEEkKHJcKjpUXbEGinB2GbzbIkwdX52s9UrOnbRBpSzsP6VybTB9aF/sGPVFEpwGetiNEIjvhUIvurAetmKZlssDDG7U+p36ahLob7wBYqK05IpYmQvRcn+wNW8Jv08xNetObUNIDwgf4GLClEv41v5TwIOPPsJesTFVOHSJfmGDf9ELsw/CAmy2LHDY8YZ2UiBrDoTrupC42xRQR1PH2T3JhNfygZ1a2BL5d/oWApYLaHr1BhEOgPWpDNpIAFnb50yqTBy6n+x/Gt5F8hRepoDer75SzIgIKm7WacOmCRAw4Tml6Z74XYkyjFAfeVkWInZx7ro0ZJvhkxrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cr4lcpKVvv7zT0km8uPjq9rVXp2+iscp1tIsVITFtOE=;
 b=P9UCNdAvgPwMDcKKVGMjYbKfOLseDHkt/tPyYD4owChvTjrWY54Iadf2/3NaZGI4V7haaxmN3zPvq5VIAHKwLOrnD4lStLA/RyB8BA/Adomp3Z9WjYW7Fsl+w0CNcenj41qVb4KJbMEQ5jKVRGUM18ip9YRp9qoJDMQC9dGsO776V8ozN4AaxORIoL9FWR7w+LZUjtzMx/+iRnWEC1Q6nPVZOLkZT5MAY7WTjCXhO6CBLD/GPtwZSIH5ipT/n3cVN4Gqne0/vSymdyccfWW9yb+3lLzG26e9UpDdXHfLZ3jbrmHlViSvIDYMWFLlm9OqkEIjbd9UQiNG9FWJlqme6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SJ2PR11MB7476.namprd11.prod.outlook.com (2603:10b6:a03:4c4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 21:51:26 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 21:51:26 +0000
Message-ID: <04d0b046-0c72-4df7-b027-385ea825eae3@intel.com>
Date: Tue, 10 Oct 2023 14:51:22 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231010150244.2021420-1-jonathan.cavitt@intel.com>
 <20231010150244.2021420-4-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231010150244.2021420-4-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0281.namprd03.prod.outlook.com
 (2603:10b6:303:b5::16) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SJ2PR11MB7476:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ab43a97-1813-42c8-4c74-08dbc9db0cec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Kji0Igk9287xw5IPYNxOyBhjelmiTnnWrupEYS9gaq18BIQNfo1FuLY5pAm4kH0IPsalyZd/8mjCNHMPNcv3wIEZG1ZzpS7/pgPr7tlVPn4pO7WHSF6Y7ZgYfWbgLHgo7JcRxpFcaC477TshHUIM9qbYBmppcAPfoJkK7XtRm5vYLMGJRJg9XiGKvjYl6W1TCTI3K5MG2M07LYj6fQb5Zqp0BEc8e1dfsyiyPwUoSWoUVVYQNEXFpKEa3+gROhUZ2Qcz69p5NETyrjmjdUsH6uVV5yI0bJSzhRjs6Q7xHoJ9+3wogL2+Q7kWMO6aMHK1jcNisnVHBdMP5dZuQxb017pgJH9rEjHBdYEfFmDfIASryMKywsdCMpgdEDIFQG41vhNCTCSzKBaIIZGP2rzR8nIkQyJ5hXL4Ou3cPUjy8ZEp24bBjuwwZQLrngz5P15zvNiQrJaAKtvuikj+yN8Y3Rn+xoBPBPAdAzwL3r/uIo03CEIKpRLiLvTY4Q0oI81RmlUvo8AcJ7RcrBtap4QHHd+ybV5at+u1T+iusEsS2jf6zdEOtJzpPCLmUvfxKtqlpdmd4UUNPxibb41ykO0pdXCBp7XQk5yE4BTP0mttSY0jwVycjyFIKSOkHG6oQHlKtcQdOphIcvEhGcvsT7GZFw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(376002)(396003)(136003)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(31686004)(53546011)(6512007)(82960400001)(31696002)(36756003)(6506007)(86362001)(38100700002)(26005)(2906002)(83380400001)(30864003)(66556008)(2616005)(6666004)(478600001)(6486002)(8936002)(8676002)(4326008)(41300700001)(5660300002)(66946007)(66476007)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L08wTXpKYWdrOTFlTmppbUZsS29xSVYzZ2dpNGJYOUlkcHJWZU11S3lHUUJB?=
 =?utf-8?B?U0Z0Q21JVUZKaWhUSUd4dzg5c0ttWi9sc1Q3eWhyclBmSEdKTHhmd3ZvQjBI?=
 =?utf-8?B?b3JxQmZqK3NyMHVjdXArL21vcGQ4K2tzK01OZGZDSGYzN1RSRmpKUzd3QkNV?=
 =?utf-8?B?UkVXcXNxTDQwWmE4TnBIeW1Yc2tEdUxMQXE3RmI3R3M3WWw3U3BUM1RKK2dp?=
 =?utf-8?B?TlJ6c2R0K0hNcHNqZnE4NmozbUVwMnBZUFRBcXBEVk83eXJCbVRvYWVDTkVJ?=
 =?utf-8?B?S3VacGtSaXdpWDArL0gzbjFiNTVIWGgrS1B3NUErb2dvcmZvQXRYUWFEMWVI?=
 =?utf-8?B?TjVzTEIxWG51ZUNIQmRSNURFREVFRk8zWDhBdDRqdmdXOXo0Ky9YRDJiTjFI?=
 =?utf-8?B?SForaThuM2J2MDIxRmNzUmk5UjJ4Ky90d2Z3b2JlTCtZMHlPbFlhbFNXams3?=
 =?utf-8?B?QTZIa3ZxUnBMNlBSR1hkNnFXYk10ZTNLbWJ3QXU3UFF4NGhWSlB3QkF6dlRQ?=
 =?utf-8?B?V3MzME9BRXpKOFBhL3hJVThwU3NCS2NzUFRROU9jQ1EzSy9COHc4MUovLzlr?=
 =?utf-8?B?WFVVck5PYXhiNG1laG1xTXJLdloxb0lJZHhtb2I0R2ZYUXVwTWZlbG9tTGU0?=
 =?utf-8?B?UThMRkdIWXptM2owcmFYMnYvYks4NzVwcGlsVmJKZkt1SjJWTmZRMzRrSVFr?=
 =?utf-8?B?VVh6b3VtOU4zT1BTMCt6clpicEVwMEpEL2NlRlltWVhQbVlURTNYY2JzYVJX?=
 =?utf-8?B?YUJSbzlBa0xURi9KQXJQMzFGKzBiR0dVUW9aeUc3OTZrWU5vOHN2VmlNSlJi?=
 =?utf-8?B?TTNXSEQ3SEtEdGRQQmRPRldCcGtlV0psKzBUNExLSjFSWklSZEdKSmt1VUF4?=
 =?utf-8?B?Z1Ryc3JsYXFSWGxGMGg1VDhwQmMyekVuRUl4TDEyOXZHNlNTVEFjK0pSN1Zp?=
 =?utf-8?B?clhweC8rY2NtWkIxY0pFTGZlY2xkYW9sd1F5bldLMTFyNDlUeEpOa3V3eE9E?=
 =?utf-8?B?SmdiZE1rcFhiOWJuREYrZGFOeE42VUUvSTJlQUNKM21OL3pvOWM3K3EzWTlC?=
 =?utf-8?B?K3hsQ0NuaHEvVFBMUDdhSEtGUHFHektZTXg4NjBadVZIbUNZUDkzN0JTT3BQ?=
 =?utf-8?B?QTJwOWU4dUpBaGJIRGVZQk45S2I3QndjN0lzRnA2MHpQNWM2UW0rQktrZGJE?=
 =?utf-8?B?eUVFb2JFMjZzcG5aMTFxTTc4Tk40amtBTUQwcS9iQk5TWDRxNTF1d1hCRVM0?=
 =?utf-8?B?MGF1OXo3aytkOE9JbVNUaEppaGkzSEZFYlNxZEVUcXFUUUhjLyt0cXY5bDNQ?=
 =?utf-8?B?VkZQZ09JQlFZZWIxVjdIT1lORmJiVkRJMzlHR3FsRXlRUS93Tzh6Q3dxSHh0?=
 =?utf-8?B?QmVWUTEyR1kzQ2s3dXVkT21WME5jenIycjNxT3h3dTBXWjRBSHk3cVJFZEk1?=
 =?utf-8?B?WWloWUNqSVZZOENpMUptY1FVN0gwb0VTVGxpb0k5R0lLSXVnSFRFYWhrVjRW?=
 =?utf-8?B?MXBrTlAzYTdMekFoNHZKbXVsV0ZwdXdvdlpCSTFUaGMvdjB4TnNEL1ZwMHRw?=
 =?utf-8?B?bHgrRUl0UG1BVWx3a3FlK0Q1M0EyYmNodXFIZU5IWGw2MkdPYlhXYjFuTFhF?=
 =?utf-8?B?NWRWU25BbUVpYTh5NXEyQVF5aVFWdjRDM1ZJKzBPdllkVWhiNHlsbG9JeW1u?=
 =?utf-8?B?RGlPZXZmQjZRWFR2QjhRaFJsUW9uYWJBeGZ1QTNPVXFzNVg0Skx4UWpQKzFO?=
 =?utf-8?B?aS84Nmd3SHBLNUpucVIvWmwyZ1JKeDZaa2pSZ1gvN0RMMEl3SjA2VnV0M1dK?=
 =?utf-8?B?NXNEa1pwVmdZU1dvTk9XT25DV1FUZEU0dENNbjZMeUk3RFpEY3dJa0lDSkJl?=
 =?utf-8?B?U2lCRTFDcTdjSThOK0h6alRrL2xSR2VuNlBHOVEwYmJSVE9nNk5sMXIwMWxt?=
 =?utf-8?B?ZGpicWZqUm1lM1FaZHpNZG00WDMwcU51MXJCQllDSjYyYnJWZDl4UUl2NFpS?=
 =?utf-8?B?SmFENkVmM05lNG9xRXNZZ2VZUlg4QlBncnpub0JUUjF6QkcvMXB1Sm51L1p5?=
 =?utf-8?B?a0ZOSG4wbVpReDU0dHozZVEwQXlOcVc2emhGWFAwTGN6UjNRUnA0VGt6eXVX?=
 =?utf-8?B?WFNHTEJmSmFjU1djOGI3aXlDSU5YVWlqRG9xTk1pTmRxLzZITFdObkZJbXlX?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ab43a97-1813-42c8-4c74-08dbc9db0cec
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 21:51:25.6558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iX5N56sg9aqxEHNN7mDKOPuBwq5rmwSLJnkeSLJYI3IlTvGljkbXOV67eWHXj0AvUt5sgP035/JMWJml8SHqFJTM+VC5/7ZOX6zPKiem05w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7476
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 3/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/10/2023 08:02, Jonathan Cavitt wrote:
> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>
> The GuC firmware had defined the interface for Translation Look-Aside
> Buffer (TLB) invalidation.  We should use this interface when
> invalidating the engine and GuC TLBs.
> Add additional functionality to intel_gt_invalidate_tlb, invalidating
> the GuC TLBs and falling back to GT invalidation when the GuC is
> disabled.
> The invalidation is done by sending a request directly to the GuC
> tlb_lookup that invalidates the table.  The invalidation is submitted as
> a wait request and is performed in the CT event handler.  This means we
> cannot perform this TLB invalidation path if the CT is not enabled.
> If the request isn't fulfilled in two seconds, this would constitute
> an error in the invalidation as that would constitute either a lost
> request or a severe GuC overload.
>
> With this new invalidation routine, we can perform GuC-based GGTT
> invalidations.  GuC-based GGTT invalidation is incompatible with
> MMIO invalidation so we should not perform MMIO invalidation when
> GuC-based GGTT invalidation is expected.
>
> The additional complexity incurred in this patch will be necessary for
> range-based tlb invalidations, which will be platformed in the future.
>
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 +++-
>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 ++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 +++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 186 +++++++++++++++++-
>   7 files changed, 284 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 4d7d88b92632b..a1f7bdc602996 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -206,22 +206,38 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>   	intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
>   }
>   
> +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
> +{
> +	struct intel_uncore *uncore = gt->uncore;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
> +		struct intel_guc *guc = &gt->uc.guc;
> +
> +		intel_guc_invalidate_tlb_guc(guc);
> +	}
> +}
> +
>   static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>   {
>   	struct drm_i915_private *i915 = ggtt->vm.i915;
> +	struct intel_gt *gt;
>   
> -	gen8_ggtt_invalidate(ggtt);
> -
> -	if (GRAPHICS_VER(i915) >= 12) {
> -		struct intel_gt *gt;
> +	if (!HAS_GUC_TLB_INVALIDATION(i915))
> +		gen8_ggtt_invalidate(ggtt);
>   
> -		list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
> +		if (HAS_GUC_TLB_INVALIDATION(i915) &&
> +		    intel_guc_is_ready(&gt->uc.guc)) {
> +			guc_ggtt_ct_invalidate(gt);
> +		} else if (GRAPHICS_VER(i915) >= 12) {
>   			intel_uncore_write_fw(gt->uncore,
>   					      GEN12_GUC_TLB_INV_CR,
>   					      GEN12_GUC_TLB_INV_CR_INVALIDATE);
> -	} else {
> -		intel_uncore_write_fw(ggtt->vm.gt->uncore,
> -				      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		} else {
> +			intel_uncore_write_fw(gt->uncore,
> +					      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		}
>   	}
>   }
>   
> @@ -1243,7 +1259,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>   		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>   	}
>   
> -	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
> +	if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>   		ggtt->invalidate = guc_ggtt_invalidate;
>   	else
>   		ggtt->invalidate = gen8_ggtt_invalidate;
> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
> index 139608c30d978..4bb13d1890e37 100644
> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
> @@ -12,6 +12,7 @@
>   #include "intel_gt_print.h"
>   #include "intel_gt_regs.h"
>   #include "intel_tlb.h"
> +#include "uc/intel_guc.h"
>   
>   /*
>    * HW architecture suggest typical invalidation time at 40us,
> @@ -131,11 +132,24 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
>   		return;
>   
>   	with_intel_gt_pm_if_awake(gt, wakeref) {
> +		struct intel_guc *guc = &gt->uc.guc;
> +
>   		mutex_lock(&gt->tlb.invalidate_lock);
>   		if (tlb_seqno_passed(gt, seqno))
>   			goto unlock;
>   
> -		mmio_invalidate_full(gt);
> +		if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
> +			/*
> +			 * Only perform GuC TLB invalidation if GuC is ready.
> +			 * The only time GuC could not be ready is on GT reset,
> +			 * which would clobber all the TLBs anyways, making
> +			 * any TLB invalidation path here unnecessary.
> +			 */
> +			if (intel_guc_is_ready(guc))
> +				intel_guc_invalidate_tlb_engines(guc);
> +		} else {
> +			mmio_invalidate_full(gt);
> +		}
>   
>   		write_seqcount_invalidate(&gt->tlb.seqno);
>   unlock:
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index f359bef046e0b..33f253410d0c8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> @@ -138,6 +138,8 @@ enum intel_guc_action {
>   	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>   	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>   	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION = 0x7000,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION_DONE = 0x7001,
>   	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>   	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>   	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
> @@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
>   
>   #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x000000FF
>   
> +#define INTEL_GUC_TLB_INVAL_TYPE_MASK	REG_GENMASK(7, 0)
> +#define INTEL_GUC_TLB_INVAL_MODE_MASK	REG_GENMASK(11, 8)
> +#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
> +
> +enum intel_guc_tlb_invalidation_type {
> +	INTEL_GUC_TLB_INVAL_ENGINES = 0x0,
> +	INTEL_GUC_TLB_INVAL_GUC = 0x3,
> +};
> +
> +/*
> + * 0: Heavy mode of Invalidation:
> + * The pipeline of the engine(s) for which the invalidation is targeted to is
> + * blocked, and all the in-flight transactions are guaranteed to be Globally
> + * Observed before completing the TLB invalidation
> + * 1: Lite mode of Invalidation:
> + * TLBs of the targeted engine(s) are immediately invalidated.
> + * In-flight transactions are NOT guaranteed to be Globally Observed before
> + * completing TLB invalidation.
> + * Light Invalidation Mode is to be used only when
> + * it can be guaranteed (by SW) that the address translations remain invariant
> + * for the in-flight transactions across the TLB invalidation. In other words,
> + * this mode can be used when the TLB invalidation is intended to clear out the
> + * stale cached translations that are no longer in use. Light Invalidation Mode
> + * is much faster than the Heavy Invalidation Mode, as it does not wait for the
> + * in-flight transactions to be GOd.
> + */
> +enum intel_guc_tlb_inval_mode {
> +	INTEL_GUC_TLB_INVAL_MODE_HEAVY = 0x0,
> +	INTEL_GUC_TLB_INVAL_MODE_LITE = 0x1,
> +};
> +
>   #endif /* _ABI_GUC_ACTIONS_ABI_H */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 6c392bad29c19..06c44f5c28776 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -79,6 +79,18 @@ struct intel_guc {
>   	 */
>   	atomic_t outstanding_submission_g2h;
>   
> +	/** @tlb_lookup: xarray to store all pending TLB invalidation requests */
> +	struct xarray tlb_lookup;
> +
> +	/**
> +	 * @serial_slot: id to the initial waiter created in tlb_lookup,
> +	 * which is used only when failed to allocate new waiter.
> +	 */
> +	u32 serial_slot;
> +
> +	/** @next_seqno: the next id (sequence no.) to allocate. */
The explanation of an abbreviation should not include the same abbreviation!

> +	u32 next_seqno;
> +
>   	/** @interrupts: pointers to GuC interrupt-managing functions. */
>   	struct {
>   		bool enabled;
> @@ -296,6 +308,11 @@ struct intel_guc {
>   #define MAKE_GUC_VER_STRUCT(ver)	MAKE_GUC_VER((ver).major, (ver).minor, (ver).patch)
>   #define GUC_SUBMIT_VER(guc)		MAKE_GUC_VER_STRUCT((guc)->submission_version)
>   
> +struct intel_guc_tlb_wait {
> +	struct wait_queue_head wq;
> +	bool busy;
> +};
Why add this after the version macro definitions? Would it not be more 
consistent to keep all the structure definitions together?

> +
>   static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
>   {
>   	return container_of(log, struct intel_guc, log);
> @@ -418,6 +435,11 @@ static inline bool intel_guc_is_supported(struct intel_guc *guc)
>   	return intel_uc_fw_is_supported(&guc->fw);
>   }
>   
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> +				    const u32 *payload, u32 len);
> +
Why are these being added in the middle of two related in-line functions 
rather than next to other similar protoypes? Or simply, right at the end 
of the file?

>   static inline bool intel_guc_is_wanted(struct intel_guc *guc)
>   {
>   	return intel_uc_fw_is_enabled(&guc->fw);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index c33210ead1ef7..8114b12ac91e3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1115,6 +1115,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>   	case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>   		ret = intel_guc_crash_process_msg(guc, action);
>   		break;
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
> +		ret = intel_guc_tlb_invalidation_done(guc, payload, len);
> +		break;
>   	default:
>   		ret = -EOPNOTSUPP;
>   		break;
> @@ -1186,6 +1189,7 @@ static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming_msg *requ
>   	switch (action) {
>   	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>   	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>   		g2h_release_space(ct, request->size);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index b4d56eccfb1f0..a7c9874e122a3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -22,6 +22,7 @@
>   /* Payload length only i.e. don't include G2H header length */
>   #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET	2
>   #define G2H_LEN_DW_DEREGISTER_CONTEXT		1
> +#define G2H_LEN_DW_INVALIDATE_TLB		1
>   
>   #define GUC_CONTEXT_DISABLE		0
>   #define GUC_CONTEXT_ENABLE		1
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 2cce5ec1ff00d..e9854652c2b52 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1798,9 +1798,11 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>   
>   void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
>   {
> +	struct intel_guc_tlb_wait *wait;
>   	struct intel_context *ce;
>   	unsigned long index;
>   	unsigned long flags;
> +	unsigned long i;
>   
>   	if (unlikely(!guc_submission_initialized(guc))) {
>   		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1826,6 +1828,15 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   
>   	/* GuC is blown away, drop all references to contexts */
>   	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * The full GT reset will have cleared the TLB caches and flushed the
> +	 * G2H message queue; we can release all the blocked waiters.
> +	 */
> +	xa_lock_irq(&guc->tlb_lookup);
> +	xa_for_each(&guc->tlb_lookup, i, wait)
> +		wake_up(&wait->wq);
> +	xa_unlock_irq(&guc->tlb_lookup);
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1948,6 +1959,46 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
>   static void destroyed_worker_func(struct work_struct *w);
>   static void reset_fail_worker_func(struct work_struct *w);
>   
> +static int init_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	int err;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return 0;
> +
> +	xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
> +
> +	wait = kzalloc(sizeof(*wait), GFP_KERNEL);
> +	if (!wait)
> +		return -ENOMEM;
> +
> +	init_waitqueue_head(&wait->wq);
> +
> +	/* Preallocate a shared id for use under memory pressure. */
> +	err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, wait,
> +				  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
> +	if (err < 0) {
> +		kfree(wait);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static void fini_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return;
> +
> +	wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
> +	kfree(wait);
There was originally a error being printed if wait->busy was still set, 
i.e. someone was still waiting on the object that is about to be 
destroyed. There were review comments about that being broken in an 
intermediate patch set. I don't recall seeing any explanation as to why 
the error message should be completely removed.


> +
> +	xa_destroy(&guc->tlb_lookup);
> +}
> +
>   /*
>    * Set up the memory resources to be shared with the GuC (via the GGTT)
>    * at firmware loading time.
> @@ -1966,11 +2017,15 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   			return ret;
>   	}
>   
> +	ret = init_tlb_lookup(guc);
> +	if (ret)
> +		goto destroy_pool;
> +
>   	guc->submission_state.guc_ids_bitmap =
>   		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
>   	if (!guc->submission_state.guc_ids_bitmap) {
>   		ret = -ENOMEM;
> -		goto destroy_pool;
> +		goto destroy_tlb;
>   	}
>   
>   	guc->timestamp.ping_delay = (POLL_TIME_CLKS / gt->clock_frequency + 1) * HZ;
> @@ -1979,9 +2034,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   
>   	return 0;
>   
> +destroy_tlb:
> +	fini_tlb_lookup(guc);
>   destroy_pool:
>   	guc_lrc_desc_pool_destroy_v69(guc);
> -
>   	return ret;
>   }
>   
> @@ -1994,6 +2050,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
>   	guc_lrc_desc_pool_destroy_v69(guc);
>   	i915_sched_engine_put(guc->sched_engine);
>   	bitmap_free(guc->submission_state.guc_ids_bitmap);
> +	fini_tlb_lookup(guc);
>   	guc->submission_initialized = false;
>   }
>   
> @@ -4624,6 +4681,131 @@ g2h_context_lookup(struct intel_guc *guc, u32 ctx_id)
>   	return ce;
>   }
>   
> +static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, u32 seqno)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	unsigned long flags;
> +
> +	xa_lock_irqsave(&guc->tlb_lookup, flags);
> +	wait = xa_load(&guc->tlb_lookup, seqno);
> +
> +	if (wait)
> +		wake_up(&wait->wq);
> +	else
> +		guc_dbg(guc,
> +			"Stale TLB invalidation response with seqno %d\n", seqno);
> +
> +	xa_unlock_irqrestore(&guc->tlb_lookup, flags);
> +}
> +
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> +				    const u32 *payload, u32 len)
> +{
> +	wait_wake_outstanding_tlb_g2h(guc, payload[0]);
> +	return 0;
> +}
> +
> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
> +{
> +	/*
> +	 * This is equivalent to wait_woken() with the exception that
> +	 * we do not wake up early if the kthread task has been completed.
> +	 * As we are called from page reclaim in any task context,
> +	 * we may be invoked from stopped kthreads, but we *must*
> +	 * complete the wait from the HW.
> +	 */
> +	do {
> +		set_current_state(TASK_UNINTERRUPTIBLE);
> +		if (wq_entry->flags & WQ_FLAG_WOKEN)
> +			break;
> +
> +		timeout = schedule_timeout(timeout);
> +	} while (timeout);
> +	__set_current_state(TASK_RUNNING);
Shouldn't this restore the previous state rather than assume what the 
previous might have been?

> +
> +	/* See wait_woken() and woken_wake_function() */
> +	smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
> +
> +	return timeout;
> +}
> +
> +static int guc_send_invalidate_tlb(struct intel_guc *guc,
> +				   enum intel_guc_tlb_invalidation_type type)
> +{
> +	struct intel_guc_tlb_wait _wq, *wq = &_wq;
> +	DEFINE_WAIT_FUNC(wait, woken_wake_function);
> +	int err;
> +	u32 seqno;
> +	u32 action[] = {
> +		INTEL_GUC_ACTION_TLB_INVALIDATION,
> +		0,
> +		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
> +			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
> +				       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
> +			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
> +	};
> +	u32 size = ARRAY_SIZE(action);
> +
> +	init_waitqueue_head(&_wq.wq);
> +
> +	if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
> +				xa_limit_32b, &guc->next_seqno,
> +				GFP_ATOMIC | __GFP_NOWARN) < 0) {
> +		/* Under severe memory pressure? Serialise TLB allocations */
> +		xa_lock_irq(&guc->tlb_lookup);
> +		wq = xa_load(&guc->tlb_lookup, guc->serial_slot);
> +		wait_event_lock_irq(wq->wq,
> +				    !READ_ONCE(wq->busy),
> +				    guc->tlb_lookup.xa_lock);
> +		/*
> +		 * Update wq->busy under lock to ensure only one waiter can
> +		 * issue the TLB invalidation command using the serial slot at a
> +		 * time. The condition is set to true before releasing the lock
> +		 * so that other caller continue to wait until woken up again.
> +		 */
> +		wq->busy = true;
> +		xa_unlock_irq(&guc->tlb_lookup);
> +
> +		seqno = guc->serial_slot;
> +	}
> +
> +	action[1] = seqno;
> +
> +	add_wait_queue(&wq->wq, &wait);
> +
> +	/*
> +	 * This is a critical reclaim path and thus we must loop here:
> +	 * We cannot block for anything that is on the GPU.
> +	 */
I'm not following this comment. If you are waiting until the GPU 
responds then surely you are, by definition, blocked by whatever the GPU 
is currently doing. Not blocking would require not looping and early 
exiting if you don't get an instantaneous result.

> +	err = intel_guc_send_busy_loop(guc, action, size, G2H_LEN_DW_INVALIDATE_TLB, true);
> +	if (err)
> +		goto out;
> +
> +	if (!must_wait_woken(&wait, intel_guc_ct_expected_delay(&guc->ct))) {
> +		guc_err(guc,
> +			"TLB invalidation response timed out for seqno %u\n", seqno);
> +		err = -ETIME;
> +	}
> +out:
> +	remove_wait_queue(&wq->wq, &wait);
> +	if (seqno != guc->serial_slot)
> +		xa_erase_irq(&guc->tlb_lookup, seqno);
> +
> +	return err;
> +}
> +
> +/* Full TLB invalidation */
The function and flag are now called 'engines' so having the comment say 
'full' seems incorrect.

Also, for both this comment and the one below, a comment that simply 
restates a function name is a bad comment. Maybe this one could be "Send 
a H2G command to invalidate the TLBs at engine level and beyond".

> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_ENGINES);
> +}
> +
> +/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
This reads as repeating exactly the same thing twice in the comment and 
a third time in the function name. The comment should at least make it 
clear that 'a:b' means 'mechanism a:action b'. E.g. "/* Send a H2G 
command to invalidate the GuC's internal TLB. */".

John.

> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
> +}
> +
>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>   					  const u32 *msg,
>   					  u32 len)

