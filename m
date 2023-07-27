Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7105E765486
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 15:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00A448905A;
	Thu, 27 Jul 2023 13:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16EE8905A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 13:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690463254; x=1721999254;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VndznYtF134ikzyAfai0mMb8r+I82jjZd8k0iPTlkYY=;
 b=HLqn4c0EJbMphkYFSok2mbYb+wg6f/iS6WlgY7hM3wnJGy/PLMPnnz8Y
 Graf4pq2NIt3rMTyaYhOtXHLXLox9pi+FAp+6p6TWi/S8SfSJHhm5JXXG
 VUTawyLO/hyFhVXpx/b000xKaNVVbIZVPj6E+OQB8I3cQ6pQzrCGkZN4N
 /7xXmVawEWypp+tP0B1AR2AqDz5oQnEgH02jIcClMHVHYFXc0LcHAioXH
 B8n0og5K7fhIhA98tSZiEBy3QkfNJihXM31Os2q6AD3oQfW/NtvXt7gJX
 tqF2YH7vzantSx9ME1MLd8zmMxvnFRwH1L1sLqhIoO5AcwE4dddgWGNqJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="399238013"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="399238013"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 06:06:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="850826566"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="850826566"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 27 Jul 2023 06:06:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 06:06:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 06:06:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 06:06:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c0vkdqth4RIHIRNGto0IMr11i4bvxO8/4lGwmlmPJR96wTFUYAf7OYCNCf3LAk9T7DNbFLsvJHx3AeskhgihOQjbXFeiWIm3XvrKg9ROFwUxT7liIx5LgPXb6MoV1Q/NoEWgT1iNM9TlUQWpZaXhr0Xyc7UddwWKURM44vi0+/806dt2ESq2LbRKkmVR7j3WDVRDKIZt7wKzRZktVdVmm9mr/yQ563RR+r+Tt5Sedueimrh+33+uvynOPfq4zOjRgdRGjobtgUUARJ6uhE76LFWamdQdtNQ18kim35qk6gPos6D45X255w+FgGhiJC/yr8wH80+Pamj3yOQ/cXKKYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VndznYtF134ikzyAfai0mMb8r+I82jjZd8k0iPTlkYY=;
 b=Bl2red7hpJ9P/TVX3wci5Zhs1nD8nzGbQ/w/XnKBXoPJIbeG7Zvp0J5kGB8VfWHPCG2y4I0OuVHAYPr4uUnsA6iUtRFeQ6+m8ioKrdp3hMfufw+kxuOwfbmpn8M3OfZsVB6Mthk1hMXACg7Wl1nEUlB8o9xdGuZKYrzTuOITDH05CThKbmxrsbt2n/p4JGFQ571cbmt4wp/15nph7fZiuE9yV7oOFoKB+5kITsamb4hJa2jn/grOyF8YQtusIRQ7c9b8L1E5zJfRcI6mSaAIwnsmoTwnOgrWv9nwxPLqCObUX052SAglCCGEsFRfBCOSVWQZZJnOXLqIwiJDbtQ+BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6484.namprd11.prod.outlook.com (2603:10b6:208:3bf::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Thu, 27 Jul
 2023 13:06:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6631.026; Thu, 27 Jul 2023
 13:06:20 +0000
Message-ID: <055bdc35-b816-e08e-4841-2de825337ef0@intel.com>
Date: Thu, 27 Jul 2023 18:36:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20230725083002.3779717-1-chaitanya.kumar.borah@intel.com>
 <b791db5e-9742-a1fd-b49a-dffeaf0b300c@intel.com>
In-Reply-To: <b791db5e-9742-a1fd-b49a-dffeaf0b300c@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0018.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6484:EE_
X-MS-Office365-Filtering-Correlation-Id: a6bd6d88-cdaf-4fdb-53f1-08db8ea2451e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g2BXRrUj/PsxGDHpUTfcdw1xtyJRskfBcMeGU5h0YlbpeHVdClQg/94HQKli035pY8zYya824cE4YEO6OyiSAudp1KQKQrM69MVtmEFnlpdVoSVn5RFZvY915L+eICsTrt0pWPwk0+18XEAlez8WHKil/dOWvzu8zdxwgTUhUVCUHnAo4vf9Nheaz6uSuDr0VcsIJ0Me8Q9GynM311C+aYEY4TQOC8ki988q9bxWBig4+RW9l04jQCAhbXjgf4qtLkT6iTtoL2zhHvLcEy3/3Cp9B4ETAzkI78owhFzmqPlxVKxYRCyZ2VxN/1TWnftqzPvm+G1eLhibVPLkfDTT4bEnfA99n86kDqjsJEdNRJZxv6/EYfrGpqpAlwgJzYZsXM7GtPfzJbXPMbxkVhdE9jlIVMDPU0fVK6sWutIP/5gZuXLU0BH5P8Tlha2rwsqSYIiFWcxyf7QKJFIiocpOzt+2+A8brRR/EMg7U38IskOqxvcNxTAis/QErRA6y1onmFe9j44oZNHuPuCtBk2eU+HAEIdEXdhi25zxKSJRhIx7ZgS7yekiU3z1rczW2pvdEskvycTo7N+xZGtbWA/LBPD+OMbZyZdL5BGzjG0qIwZrWFhm0Phqt1hfye0e8IvrBfoKtUWPBw4v1p5gYW4gHQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(346002)(376002)(136003)(451199021)(6512007)(38100700002)(6666004)(6486002)(478600001)(316002)(41300700001)(5660300002)(8676002)(6916009)(8936002)(66476007)(66556008)(66946007)(82960400001)(2616005)(186003)(83380400001)(55236004)(53546011)(26005)(6506007)(31696002)(86362001)(2906002)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGFqTWhqL3VwQnMzVkMxSHRaREtnTWlRR2Y0aFpTcW0xb2dHbHZWRXFZQlEw?=
 =?utf-8?B?WkJHS2hiME5iSkhtQWpET3pvT24wdDdvalFHL0JKYWFpWGNqc0dzVE1TN1Ju?=
 =?utf-8?B?Ym9ZeFUxL05QbWZicU1tcVpwTytIVWpxWXJQbk1SUllWZG5JSWZ4dzVVb0hN?=
 =?utf-8?B?T1IyZVBXUFRIaHFOdytNOXl5a1dqemNsdjBKdWdsU1M5QjNvbjhBYkJrb2lq?=
 =?utf-8?B?b0pZWmhZcDJ1YktuZHQrZ3pIclEvS1NWdXRkM2pKclI0eTM5MW1acmZRUzQv?=
 =?utf-8?B?T0NFNFI3cU5zUFcvVVMwZzhRVDkwbW03SUdQUFVITU00Zm5ZTlk1dWZHeGdJ?=
 =?utf-8?B?eW11a05hL3FWNTcyVjMvS2plSFQybks5ZTlTU0o4ZW9rTHE4K3VKamx0M0No?=
 =?utf-8?B?ZlBFMEx1N0tnalc3cHNLMmwzNWVsREROa2kxMEVMMVlCVk1waEJkdURCd1hS?=
 =?utf-8?B?S0VKeVpqMWJTditibWRGOXQrYWMrWWFmYW5mR1JPeGNib1g4eU5hM2JQUHhG?=
 =?utf-8?B?by9jMkdVVDhIN3hPTkQvWWhCdFBBQUpublorTDk2Sk1mYldqb1VLd3MzS3RS?=
 =?utf-8?B?TzM1LythZDg5RjM3ZUREN0hPOWxRL1ppVEdXQlVHaDk0K2srVk9UaWVYR2sz?=
 =?utf-8?B?TmpNY29FVExQc3VIdlVVWHplV2kxZWhZTUNXU2RRZ2w4eVlKNUxsRUJzYkZw?=
 =?utf-8?B?T3NiMmV6SzR1MU54NmRJc2VKZzVwa2RBcXpueStRZWFXeDhidkplZVJhZlJU?=
 =?utf-8?B?eTZTeXNzK0N3NFZmbXg5SGEyVWtzRzM3RGRPc0djelVyK1d1SENoRXM2TEdV?=
 =?utf-8?B?UjdOcUp0S0hoMUR6andaSVZxUHpHcXA3Rk9NTXg0elpjNDdnb0p5cEJ4OGQ2?=
 =?utf-8?B?elNxZDUvUlFrdnExeVh3V1ZvQXFBOHlMeVJtVG5lSG9WSTRIYTAyeU5taSsv?=
 =?utf-8?B?b2pRSzJUM2pJUjNNUWV5cWRSTUJHR0FqZG04TlZkZ2h6ZzNseXY5VEVJRGor?=
 =?utf-8?B?U1kzN0VoampacU94VTBKY3N3ZEVOUE85cHhqOVpGSU1OakVyL1BncFhKd0Z0?=
 =?utf-8?B?Q2ZoclptYXRuWnF6TDBkaVZUTzJyM2d0N2UrQ3FXOCtrWnRkeTN2VXFLREdD?=
 =?utf-8?B?c0pzT3RZa3JVdURkdXZqVWlsTkdzT2luYmhpOGQwRkVjSnNEOTVEbHh1L2NS?=
 =?utf-8?B?NkNOZlpWVlAxemlYMzQ5Rm41ZitHYzUrK3hjNjJoU3pnRGw0OGJWa0VNQnhy?=
 =?utf-8?B?am1pQ2s0endvTFMwMGVzSkM2Nld1TFd1SC9uWW95TWhrYTE5cDhaRSs2T252?=
 =?utf-8?B?TEtGUHZRcS9RdFd5Vk5nVzhDZUZrR2VWaWo0VWI4c0xIS01iS1ZSYnNwdi9s?=
 =?utf-8?B?dHhUZk5HZklNeXlVZXh0OEhvMDlveS9EQmtlNmhZK3hvTTIrSllpWTUyVW1X?=
 =?utf-8?B?eVdoOFVzVjh0bGNQTnNGdFh2a0liQ3g0bmtxbEFDbUhrcWlCbnZpMFJtNkNa?=
 =?utf-8?B?N2RkVzA3TVFGN3Noc1hxRk5GZ1E0SllKRjhWS0NPeUtlM2dDajlKV2pLWnFQ?=
 =?utf-8?B?TGlIOTRSZWlod0RUa0xzVDg0U0ZOSm1hSHE3VXUrblE2TFo2Y2lNOHRNQTRp?=
 =?utf-8?B?MGpYeWNLTlkxUEIybWdjNUo5RlpWVXNnejVHL1lIeW5jeHB5aGhoM1Evd3RG?=
 =?utf-8?B?S1RPU3pCd3FGeC9RVjZrNURjNmh2MmxpNDNnK25JNzRpRCtENUZhTWllSENs?=
 =?utf-8?B?Y0VBMmFiSmgvSWQwYUVrREgzT2dYQUROdW5HZGo2aDN1M2lIVzdtSEhERUlX?=
 =?utf-8?B?Q2hHaUJzNVN0UnBHcnNsSCtyeHlNaTdUNGNDRGt2R3B5MmdPUG9KSklVWVRt?=
 =?utf-8?B?UTZ0d2dkN2w1cjYzTEtZTlk5MkI0M014Yk5UWWN1aTZVRlBRN1JJNlNZZnly?=
 =?utf-8?B?MmF1V3VuV0NFcmtYUDBTNFBwby9XenNNVklwREFGTDMyRUp5dUh0cXdNbEU3?=
 =?utf-8?B?TTRvbmlKbkovQTBmeXFsdFo0bHRDWnJibnRWZERQTkRpeU03QXpUcTllcEhx?=
 =?utf-8?B?OUZiNy92SnhkdnhXeVpCVFdjdll4MVRRSFZMOUJFK01QUkU0QjkxM2xpQW1r?=
 =?utf-8?B?YVI0L242bDZjTTVGVXg3Rmhha05yYVdKVHdDdHpaWC9lb3JJUUhpQ0dPUVBq?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6bd6d88-cdaf-4fdb-53f1-08db8ea2451e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2023 13:06:20.2062 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DmLRCfYSOcV8HY3saxKl8GyrLayv/RObkPSKeOI5S0mCzXCN6bP4ppmh89J1p+p7m6R112I+ppqixu6fm1+PAdY3jyWh6UVVutOJkPL8fv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6484
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

Thanks for the patches and the reviews, pushed to drm-intel-next.

Regards,

Ankit

On 7/27/2023 5:27 PM, Nautiyal, Ankit K wrote:
> LGTM.
>
> Acked-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
> On 7/25/2023 2:00 PM, Chaitanya Kumar Borah wrote:
>> MTL onwards Degamma LUT/PRE-CSC LUT precision has been increased from
>> 16 bits to 24 bits. Currently, drm framework only supports LUTs up to 16
>> bit precision. Until a new uapi comes along to support higher bitdepth,
>> upscale the values sent from userland to 24 bit before writing into the
>> HW to continue supporting degamma on MTL.
>>
>> To avoid pipe config mismatch between 24 bit HW lut values and 16 bit
>> userspace sent values, convert back the 24 bit lut values read from HW
>> to 16 bit values.
>>
>> Chaitanya Kumar Borah (2):
>>    drm/i915/color: Upscale degamma values for MTL
>>    drm/i915/color: Downscale degamma lut values read from hardware
>>
>>   drivers/gpu/drm/i915/display/intel_color.c | 28 +++++++++++++++++++++-
>>   1 file changed, 27 insertions(+), 1 deletion(-)
>>
