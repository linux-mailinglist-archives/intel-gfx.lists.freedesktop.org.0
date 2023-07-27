Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 746D4765300
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 13:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064F710E34B;
	Thu, 27 Jul 2023 11:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BECC010E34B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 11:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690459085; x=1721995085;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KmjCq3K6tsrAPPuJwG2c2dpGTps6BLa3iP19fy/lwWI=;
 b=edVg72tW/tAmJCulXv2nCTy4BpUrvkg2TAGgMw4QRy50oSdxT1neJJa4
 uZHbS/i0BI/+L/0dT0w4L9JGxVLoi6qBDuj8lSbAmQubhWY9RXXyEILzy
 JXAmaAO2V5RCqXEYzfPA70zJO+sm0gE6FBmaSmUbu7KnRLl7AWGSjgUBt
 F7yEB4/WoyCMkx+g9zpmKvDxuPdysnc6CuBRY5X979iOMDGV+S59qqrtr
 Y/YtjJaKpmpgQ6Bj//jrd55wYjdrFFpT3ziUZS8owxnKRHUcJK68ASd+4
 FRiWCO12rf5M8KAKr9o45ZYNyc1iIph6da6ZLZJzamlWB1TZLrhBTpWDl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="454654878"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="454654878"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 04:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="840751200"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="840751200"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jul 2023 04:58:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 04:58:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 04:58:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 04:58:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 04:58:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JaSLnXumOIVz5cSKXeP649GR6pFSkCEoylG9sr/qXAw+aATxM+m8OrPHzuu0+Gdmwr5yMoYi1qLmjsE0iXqLC17+bluwmZhzsytFEZMskzlg54o90xuulPYMeI6DTtFme7/2BftC1wYRvw5dM0hcSz0u3tcB0rz4sBy12DVvdup/XpqHos5DvFb2k7F98S3zccztGCyYDW582TaD1Wms6qHS8C0dHAWDO1ys0cpXXyQfiRjg+9iwpPwCgqU+DR/+t7o5mleD7YVGhOd5eR5tXuzjRBfRqSeoXSjE1XgQxHZ4iFdZZxZVdEaciPBG5i9Fl2oc6+KTaYhYULkdrQMvfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FYLYHS0VT3bwXBVHSFVz+LhilDgTAdZwRfS7gJed69M=;
 b=FglRzNMHpQ8yjDAU8/XbVJ3DQ8Dwp//vX/pW/xpWU2UfB8XbhqGZJF9/QdXHJOIPt58wYcbwIleyrqVvcbz64Fpk98NKqig+86gnZGDJRxgraJlIROe7xRK9EcVCCusg9QXhh5HeW0PViN9APMfQnMQeSDOr3Hg5h2kvksvCq98KKCU8m934hUBuRWukcIMk8MbxB/VDAp0/2ZUhfETsIg0Tu6SqUVH7Vx2EQ0B0VjTM7xrw7duTSfp70Px0mRkImhZCRSEsRX6ZeJzdIv3WV+hFRHyuNvkMcRy+qf1kPXG3MtKbfQn2VF2AFqtxldPG0jwQT6zCFdmYsXWGQKV9gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB6773.namprd11.prod.outlook.com (2603:10b6:806:266::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Thu, 27 Jul
 2023 11:57:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6631.026; Thu, 27 Jul 2023
 11:57:57 +0000
Message-ID: <b791db5e-9742-a1fd-b49a-dffeaf0b300c@intel.com>
Date: Thu, 27 Jul 2023 17:27:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20230725083002.3779717-1-chaitanya.kumar.borah@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230725083002.3779717-1-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0077.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB6773:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a1f4d21-8c68-4488-885d-08db8e98b7b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /l1+K6AHAaCRWmyBB9mbOAVROl4QRwQXE2Njh7c4/5MKHKBUdImFYdxTKr9j7UxGZoUSCMmUvUxahtTBjIAWBT9GaWRNIznMKdYxTl36Yq2oce0sch58+bwN1d+G9/UO2D0U8ZD9q+Rc5toI8yRxwzfajUYsqxfnfwPgh4CeAr22vYSlyuJudrk6oh1N3kS3c5G2TMNxTkYZ4mXGu6qgmoD/2ATE4j/9ur/TfyEAsWNvJAVRf3rCc5KZDElsswzoOVLHpHTMbM6Iu9y4273r+Sf3Qy9H6u0ui+7YSsmn/oPJBOhy2j93E+Rx2+Hbo4LQN8jPkLErUopKtlrzfsZnSEbcDh2a1CC+7cHHfJ0BxfotP/YhsJ1vpjepCEZ612HEb3JhfZdti3o6Za1gzusI9lreJoRl2ajoUU+FVg3DLcU29hjbpT5PA+QL6eaWMqpV8wKfPVVHCXavUMjIWUstfHjDir/pDkjYwAQIq/3W2kcqettIETWgbaRixxzyQFe1jPYqF8tXWw9EDB901LA/VswgF8TxvNHLNefEw6oymSjUc65Q4ajrF1MScjwIYplpkhannd2kW4GyP/pLCnHdCKjBlRoMD51xm2JHSRvz3pb7wv60dSiJWboEwaYIQLjtG+yZv6zThXth9he/QVn3Ig==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(366004)(346002)(136003)(451199021)(41300700001)(26005)(55236004)(53546011)(38100700002)(478600001)(86362001)(6512007)(36756003)(6916009)(8936002)(8676002)(31696002)(186003)(316002)(31686004)(66556008)(66476007)(66946007)(6506007)(5660300002)(2906002)(2616005)(83380400001)(82960400001)(6486002)(6666004)(4744005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WE9wTW1oZHIzS2Q5MHlZREF5RG5odTRGenVqbXdTb2tacUxzcWE2TkRjdndY?=
 =?utf-8?B?VS9Pd0F4NmVzOXJZNEdCVWdLMFpyd2lta0x0KzRsR0cxOXNGSjBodUpnWlAz?=
 =?utf-8?B?SG0wclJMclo3RENraUc0b2drUmUrbmVMWkJqQzU5V1FqS3BOVVBGWWRzbEVC?=
 =?utf-8?B?Z0djb3M5OU8zVTJNbm85bFhyTngvUnBVWFlBQkN4MGlCUHZ0MnV3TmMxWHVH?=
 =?utf-8?B?VkdLcHk2QmpaZUJwMENyeHp0SW9CSWJiM3RZOXJENEUyWS9xMXdDTGJyaC9u?=
 =?utf-8?B?cnVoZkRNRTF3UnNzQkU5VzBEeit5MmJsYmRxUGIrQlNWSFpvV2ZqbFpFNVRk?=
 =?utf-8?B?TW5rT0J0Sm9HQXF5VTBDcGNTdHB3MDhlYlBOV0RUbTlTK1VPVmcyS0UxZnBJ?=
 =?utf-8?B?dXIzM3NnS0RBeHowVm54UFIyL2dQNFdaRml3TGJzcWFBZDRoYjIxM2QxNmg3?=
 =?utf-8?B?RGZmT3p1MENZQ2dBK2pmTmtUMHk1ZGgzYWQzRkJOVDR0TTdya3kwdm1ZY0p2?=
 =?utf-8?B?MEdEZ2pvTytRS1gvYno3Ni90Ui90WDdqR2M0NjFYa2FCVGp3ekZXY3l4THVw?=
 =?utf-8?B?ajVxbHdsKzB2akpWdkNVejBJOHFwMGVBbmsxMUNRaXFGK0tIeXZoRmtyaFpV?=
 =?utf-8?B?cmY3Y0V2NldJWWNQTERzcXV6QUpLVllIUkJtTEViZ0R2LzlxQndkVXFRRTlX?=
 =?utf-8?B?M0ZkWHU4blhPcVBmTW0xSGhsWktUa3VIYms1R01WU3pQODZyVmMrdFVnQXJK?=
 =?utf-8?B?aHRtbUpCYmpyY3dhdXJhckhGeVEwN3p3bmZwYkI3Y0hZbFhzUmhYNnJycFhn?=
 =?utf-8?B?N2crdzRkRTgrRU9VMEtVdHZZZU4vZ2VTWG5xNVkxSlZua3R6ZjJQTjB1ZDNB?=
 =?utf-8?B?dGd2TUxCd0FTN0Y0N2xHSnAwMmZGWVJSNFVIVFpBV0FHUzJMcWErZlNuM3Y5?=
 =?utf-8?B?dFN4U29YZkxKYnhZSlZKYS9JWnNTWWtqN3JEanZKeHozbFNHTU9mN2xGSWE0?=
 =?utf-8?B?eFNYKzNWN0lwSWEyRmZiMmNyTVEyZnBPcU5qZDg0emhuMHoyRGoySTI3bW83?=
 =?utf-8?B?UU4wY1crcmpEd0JJZjFDR0lOY1dmMnlLWEo1VlVzR1poVGxZUjFZNGswdHlh?=
 =?utf-8?B?aFpQZEY0bUVKVHkzTEd5OVM0dFRyQ0Z1WWZ3OWNmWkxBcnl6UXU4a1hoOEh4?=
 =?utf-8?B?QjFkVjVpYkY2d2U3ajc5cVFUVGQrMG5wSldpQ2l4cDdFcHpKQThXSnZFanJE?=
 =?utf-8?B?d1hNSWdubDdaTzRHdHJvNGZMVFVxNnk3aDNKS29UblRzTlJYTmJ3SEtFUmdB?=
 =?utf-8?B?SmlmMGd6K01iNXVZM2dobkd5Z2RvWTRUTFJ5WDA5RlZpa3JDcGZSWnErdjli?=
 =?utf-8?B?UG5kMmNBZ081L0lDTHh6aDFtYmxkeWNEa1lQNGhmQlduZmtWUWNrU1R4RE9C?=
 =?utf-8?B?SU0rR0tjcWtYWC80dG9iOTg4Y2VBZ1pTZEV6c0ZNeFNTQ2F5azJtQTFiY2ln?=
 =?utf-8?B?L044dEc1Vzl6UlVFb3RWZ3g4cFdWWngrNHE1aVAvQ0JWMjY5MW50STJxNElw?=
 =?utf-8?B?Vy9qWmRBc011cnlINEtBR1BrOVh4bWlMZ3IzaFZIRmFHbzJGZ2d3MnpuUGxQ?=
 =?utf-8?B?dEZYSUM5NHRIcUlXVG9XYTZrZzBvRnoxNzN4VDJ3UnlsbVgwVDlXNkhFMjNF?=
 =?utf-8?B?Z0ErRDZmSklPRmdQNWJBWHY4Sy91cXZqcktkVGFhNmNhRjRndlJtcTVaNEVt?=
 =?utf-8?B?ZGZ4VGtoNUhuUnR2OXMzU3h4b0FLejVkTXdyV0J0Q01hSWp5bFRTd1djY3ZM?=
 =?utf-8?B?Y0pQaGxiK1Z3dDllTHdVU0N3UThNT1Z5MHQzSXVrZitQN3ovVUxBYmlQc21E?=
 =?utf-8?B?VjJnSkIyMmlML05WVGNWWklmVjRRQm4xN01KbHh6K2w2WXRKQjd4L3BoOUti?=
 =?utf-8?B?enlZTDBqUU5HWTJQWWxGTjBXdXgrYnI0MWZDUy94VHNWOVlOMDlmTHZWNXpN?=
 =?utf-8?B?TGRTZkpQc0lodGVYNmdzejRTeTFDSzZ5OHFvYW1WQkNjUGp1emF1ZXAxUG0r?=
 =?utf-8?B?am9GT1F3ZmwwS3lKdGJheGxBVHVzekRWNHhsTGtvSlRGeWs5ME1Hb3RRcVQ3?=
 =?utf-8?B?SkN5akEvZmNDMTJ3Q1RUM2lXa0I5TVR3cTQyc3d1NnlSV3BvMkxxVDMyOFps?=
 =?utf-8?B?SGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a1f4d21-8c68-4488-885d-08db8e98b7b4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2023 11:57:57.5297 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rPj3kJyvQUiBfMMKgERTiUc5/R8xvj9pE7fbtnWeOFUFh9JUnSCHvpYw0zRp/KhvC7tn84JuIe1vfl4bg2adqMfG7HQzrAVlj5GvkY532Cg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6773
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/2] MTL Degamma implementation
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

LGTM.

Acked-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 7/25/2023 2:00 PM, Chaitanya Kumar Borah wrote:
> MTL onwards Degamma LUT/PRE-CSC LUT precision has been increased from
> 16 bits to 24 bits. Currently, drm framework only supports LUTs up to 16
> bit precision. Until a new uapi comes along to support higher bitdepth,
> upscale the values sent from userland to 24 bit before writing into the
> HW to continue supporting degamma on MTL.
>
> To avoid pipe config mismatch between 24 bit HW lut values and 16 bit
> userspace sent values, convert back the 24 bit lut values read from HW
> to 16 bit values.
>
> Chaitanya Kumar Borah (2):
>    drm/i915/color: Upscale degamma values for MTL
>    drm/i915/color: Downscale degamma lut values read from hardware
>
>   drivers/gpu/drm/i915/display/intel_color.c | 28 +++++++++++++++++++++-
>   1 file changed, 27 insertions(+), 1 deletion(-)
>
