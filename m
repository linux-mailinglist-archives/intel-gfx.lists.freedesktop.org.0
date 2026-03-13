Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SWcZEsqRs2kNYQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 05:25:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 899B427D415
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 05:25:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E004D10E03A;
	Fri, 13 Mar 2026 04:25:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uzffph7M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA92010E03A;
 Fri, 13 Mar 2026 04:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773375941; x=1804911941;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1eHd+n4in7IWglJE7xEjPTM/pzOGlR2PX4oDCzAA+Lw=;
 b=Uzffph7MWeVfslmgqi3dsOc4GqCNWoB/6rH+he3gYgqnbQMCpqVlHHID
 czezQJxTBegOuH7ROHcFqq4UtUwuJz+4iIu4l4cYB+uogq7RmtrX4+ITP
 SITWWbmatFmACpKtA9WebJMbbWHl6cd1RJX8N8/36Y/GZjAkQQkxXqWwH
 Slsr31Sv6H964TGwdQpHizniO9j1NkSlASgD1oMvIP0dTi5yYRxMkels6
 3dJzCww+ZLk0NZayL3kYifqXUV3PR6mKlYnZelXEBGCCSAAzjmuBoGc29
 x1r8fmzcZ0wbJErfwn0vrFpMoY6GBX+vU60o8xLjVMkUKFYh8TxZ2EBJc Q==;
X-CSE-ConnectionGUID: absIFU2BSga61Xn6GmfD0Q==
X-CSE-MsgGUID: bkCFmU+MSH+YtWHw1sS/lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="99943824"
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="99943824"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 21:25:37 -0700
X-CSE-ConnectionGUID: 4uFWcyK5TbKHDkGw73m5pw==
X-CSE-MsgGUID: ERngjrO2RIWlzCjDUV6dZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="244076562"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 21:25:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 21:25:35 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 21:25:35 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 21:25:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mj1TeR1/c5fUrIWJTn4T3aQ67Xs/AqgA1DIFS5NGFyXUNqeLe30jxBkdfolIg8b35cSULcSIgRQT4W8Yc11KnCFYnkg3cAEQNnbrhZ8VqWPrD8Q0vV0mKoiUEoCDq/rgv/9x3st6XCmW+zWFMqT4/zaEvO6jExEZ6HOE8p88HlGFy+tc+p0gDEvya7W6hzNxDlihitwCICFpX+S8ZX+2DcPltTKREHd/4tsfULejtMruU9ug5RaAqN2v75+xBzh44CfaNxlf5Zj+X6zjwO+Ps61HlrZ/uBvd5ye39Cc/63EhOUDqafnE/aSq4Mdy+FmhJxUFy0RSmpNaxVTCG1QIBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EGa9/O9YdvF6TeVHJsjrPqquLGZlIOEaCBFaIYFxtTc=;
 b=aNeht3Iliud1lwiUGI9/++vA5tEvFhjbLUiBFXozLtxYmNvKayWa/rew4S6JYLhgj91C99cV2D7K4bu2zccBdvJjS3klfwAe4TsgpXt92ZgPqRLubsaEJ0bj5+AhTSukSTim8r7S3gG2zcsIBj5ws+BnMeavuF8nD8J6MaLf9M/gIzFOgVM5m+nSbOE/E0DhNc1Tw9MTGWBLyA4Jw3QKqGW1t+dlK1pQziLKbICG9PYsPWbdnOMevey1sk2+uaDtEHSntaTJCI0kiReBosovp9me/kFLW1eUkqpNfqYtn2LX+OwIjA28rmYkKK5l5gJ/RZnHn/HZfFHdv8s1E9eMJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH7PR11MB6607.namprd11.prod.outlook.com (2603:10b6:510:1b2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Fri, 13 Mar
 2026 04:25:32 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9723.000; Fri, 13 Mar 2026
 04:25:32 +0000
Message-ID: <7b072000-0b8d-4910-ae05-0eaac6d9e94a@intel.com>
Date: Fri, 13 Mar 2026 09:55:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D8D1894ECDE4A41681332E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <dcba6eaf-1f57-4094-be69-0c8d116f92a7@intel.com>
 <DM3PPF208195D8D96EA050D075A0AF09F07E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM3PPF208195D8D96EA050D075A0AF09F07E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0144.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::11) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH7PR11MB6607:EE_
X-MS-Office365-Filtering-Correlation-Id: 77faee34-537c-440b-f64b-08de80b89079
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: VfQw/U4PSoPVhw52yKsM6p6UsTd0z72IUaoAmknRRHug5u3c6CBwI8T9nbSXFxioj8O821pzgAh8WneC0o2vodLRTXa/Lfi5KU9vzVenVcccBxaseDZQErFDdK4UDkPuWy0F/aJfF1ekxzk/yydFW5BedZZPnknTGdA6vPmjVM13ZDQarqRmT2TyaWSBn6DKr6ccEzr+YKlszerpnh1vSEUXGt+zHHgF2ri8Dn7GLGHimjhOCiWH4FAqehI1GXE/OtK7/bNC0rVSGXd6/WjS2o68wheYVAIcg/+IVJSKb/lHgB32tTqEAwvQengYsXkjJ8IAlbGg6VBrf8DhWhQnmqkpPaWSE++oe46a7zzTLaKG6QhE+AjWuhBYyAHs3bJShdlnV9e3u86XeRpRNMPns1rwCESbk3sQqf2so7q7OKfh0xbgtu63LR5eXm2nB9fE7yss4Rw1inPmahl+qMc9e5vHomdDarFoN3I4IwZNUzKflY8z08L8Mp4PVucvxgeanMmE84zcIryC6808a+DyUPrw1F8uImlJSxuXQ8rywO5WM2Re9nWI5rDbz1bCqZqDvX+hvYlwBfuTRLJZkYxish1NfmhqXa0sU6T6FSRmO75mS+Dn1CiWNfTenT7FxTgFXppvz3yKgm9Q6afV6RjNtAMc4Xalit43tL0TwEhZSY+TmviRozHhlzbMCXmxgJtYtGWIS3fhQh7Q/3I6IR9Fc0aip24eXBF34eP/tx/KuIw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzlZVjFrNG5VWVlvK1h4SDhBWEF1OUJSTFEwMmUwSFdYVWNSRE1HUFJuMzlV?=
 =?utf-8?B?THpDTzNtazhRblkrZGlXcVJEY2FIdUNRaUlOeWJJYWVhS3l0WXNydkxIYlNa?=
 =?utf-8?B?Tk5KdG1CdkhKcWhDMWlRM2pXWjM1NFg0b0pFVG9QR1ZBaXk0Nzc0MHlYTjRF?=
 =?utf-8?B?KzdvT0swYVBlbjNCZnFJWnV5OHJjSnIwSGJ5RHBtbUljRS80UnJjM3hnOVBj?=
 =?utf-8?B?REVCTlhuSlpWUDJ5RWpMcXJKT0Y1Q20zR3NTU094eTczL1lCM2dlSjNsbVp3?=
 =?utf-8?B?ZG5GMWdYU0ZrbkNSNytvWTNlRmRpUWs2bmx4cWQ3bGRac3AvR3hpR3pKTXc1?=
 =?utf-8?B?NnRkcnNLQncyYUQ4c2gzWTdmY1pkUjN3eElXNEhMcEZkUEZrOW9kUjlyZlZP?=
 =?utf-8?B?RFhrbWFWOEowcnAvQVV6QndwMWk2TlREZDZPNzZUUDdyOXJ1SUdlTm5UWmZl?=
 =?utf-8?B?M0lTTXRRUldHVVRxc3hpb3N6ejR5S1BJTHljQXE5bG8yUTZJZlpDcUg1S3Fq?=
 =?utf-8?B?S2dvem1zdzRaTzYrSkFVc2hVSU1SVFROYk0vcitUQnZHUithZ0NXZnpnUnpj?=
 =?utf-8?B?ajlkY2x6NCtXVDNnd3M0WUNnYnZNTHo0U21nU3FIZ2pGbGZwelNXUzRuR0U4?=
 =?utf-8?B?eGZmWGtBMHpnY2d1QkFseGtrcVVIVWh6M0kzRkhqTkVkV1hXeHoyZFlnSjZl?=
 =?utf-8?B?MUtzOEREV2FKVkFaWW9qTlVWSTdtUzFmY3hFTXFhdWwwQ1FKcWg2MHRtUkdu?=
 =?utf-8?B?d3VTRTdVOERaZmsrQzBUUVVxbzBRSlZZek81WUNuODVqZ2VEZkV3WGlWVXVM?=
 =?utf-8?B?UURxSUNMYmx5c1NiMGhaNE9IeTQyQXlHRklPUndybHdRYWVTYjFTWGF3aFBQ?=
 =?utf-8?B?ZkNNZ2d3cUwzWS9CQXlUWDlrSXM2OXgyUkF5RjFTWHlYQUt1UVdQMlZTeFM0?=
 =?utf-8?B?WERHSnI2c3NEY2wrZTV5NjFlNXpzWkNTNDFLK2ZhZzVjdUJkYVFNNGJUSlFE?=
 =?utf-8?B?a2dyUmxiS1NYaFpFVVdoWjVzaEJwczBQQzVud3FjTW9WM2orbEF2UDlCeGFx?=
 =?utf-8?B?c1FnU0wxcE9PQU5kTjBJUjhGRTh3RnNxaklvblhsblJvNnlLbHVGQW9WbUxO?=
 =?utf-8?B?YmFhZ1VUK3hmTjQ5S0ZyNzltRkY4VDZSLzhpTTlaK0k0UkU1TmZ2aDZZZUNM?=
 =?utf-8?B?RTBNZm5iZHhYSG1FYTNYbnR5ZG43b2RNTHRnRGN3QTJ1YjUrYkQ3ZENHN240?=
 =?utf-8?B?UHJNc1ZnMFliUDFJK2FPK0I2eE1DWlFhSGdJN3RxWkZabE1pMlFiYUxYNFZU?=
 =?utf-8?B?YkNQT2RZdjlad2tKbUJQOFVNQ1VpYUNKUVBaRFZiY3lQak5laGYzRGwxSXRG?=
 =?utf-8?B?WHdoTi9PTjZ2RkVFV0FjRGlmNncxYXIrWVl1THJyckhud3FEdno4UE1lVmpK?=
 =?utf-8?B?NURBU2ZSczh1Z0ZrdGRyd1lHVGZndExCNm5lT0JveVd6Mjc5NU9xRkdIeE5T?=
 =?utf-8?B?TS9FZVpQUS9ub1ZvRGVUSGZ3c3dlS21OaE14c24yMkg0ZDBxU0tqR01jbU44?=
 =?utf-8?B?ckhORE1SQklPLzgwdkVtR1UweFB1SmV1SWE0ZUFBMTl2d3pEWFZPWWx1aTdm?=
 =?utf-8?B?aEFIU1JJbXFuL1JwR05OYjlyQWVPdmEzLzhGUnYvSEhZQU1VK2FSNytzZEpi?=
 =?utf-8?B?Nkx3QW5VTUVDK05kWTR6UTQxU3FOQ29HSU1PVFg0RGEyQTRrNW1tVStnT0pQ?=
 =?utf-8?B?YWxwdDBFUUhxR2xTZm1iVjdKalJRZW1nZlBrSU00b3BHdWZoWU1pTGtoK0Rv?=
 =?utf-8?B?K3hCQ3lCaXJzSWVQL1lhTlZickYxS2VUTGlYOU5xVzhXMVNkSnZmTmliK2dB?=
 =?utf-8?B?b3U1UDVNMlJHUTVhdUh5WW00Y1ExblhCTmZaTGlxY0VSZG84NUhvNGdoeUFZ?=
 =?utf-8?B?RlJSamNDUThLbkVKaml1N1NVeE5heldkb1lvNXVoOVhVcmlwb1M0ejhjU2dP?=
 =?utf-8?B?VzVUUGxqVWx1a09Xa0hwRFR0UkdzVWtxeiszanJJQ3ltRGkvTjd6a1JaUExG?=
 =?utf-8?B?SUNxRHJuSWd6U1IxaEtYUC9melFoQThYUXlCMmcrRHZyNDdkOExDSzV1bURm?=
 =?utf-8?B?eDJwZmhKTVhMWTFyYTBoUDMwWkVxbFVNYVI2UGJ1ejN5T0pzbzY2TUdEc0Ur?=
 =?utf-8?B?N3hnZHFDZDZZQmJGUWF4WG5vWlErelpzd3I4T3pnOElaVzhWUWNPeWFNZDdC?=
 =?utf-8?B?SW9DNjVkL0taZTltTWYrbmJKalpnNnJPa0pWOFFKTzRvTHpHMDF0TU5ZTDBS?=
 =?utf-8?B?MHNqczcxcmdXSXYyeWROa2F0WjJkRnZKZkk5SitDTFQ0MkNybitqcnBCc09J?=
 =?utf-8?Q?Rr/IOHro4XI6zS4KbcQsWYSlP03KHs5zKJmTs?=
X-Exchange-RoutingPolicyChecked: NJLnzv9GVKCRm9JfDKER9yOJB7gUqBZAVw1x7/k0rMHl4J4fsIOANuXxHDC/4RwZr9eTDC0DTLd8gQiklZSN/5dWZphKRkkF5EoknLfxY1n6pGbQ8M9p8k0u3E1xfYva9OohQsyqGYEDVgPUbIjKzq8YJfZ1eiaVISRTAvgfuDxC3warCNOt2XLRqkAKKFTbBFFeRRHG2G6POL6If7+jEHFAZnFy95fhdibDk+gucs9miP/0SxdFFH6B02MIYq5CRBsiBc1VDqGV2CLTcYrXZjSAl5ozAGckL/BqsrfLinqKLA9wdAdi9VL/KwfYN5erm5tjk9IjVb8Acz5zxnJOxQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 77faee34-537c-440b-f64b-08de80b89079
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 04:25:32.1499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CGacm1GjrAZcLMBKHCL/QNdGl+KoIjYzb8CsMQClQuUWBNkZnfaDCRn/ki55Xcr99RHk0lz2n4vlk5vHORESK6gRu/2wpmT9/yWDBJVqhGY2eKzDG5NkxvJ8Xv+lt2bF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6607
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 899B427D415
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 13-03-2026 08:56, Kandpal, Suraj wrote:
>> On 12-03-2026 08:48, Kandpal, Suraj wrote:
>>>> Subject: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
>>>>
>>>> Enable PIPEDMC_ERROR interrupt bit for display version 35+.
>>>>
>>> Add same Bspec link here too
>>>
>>>> Signed-off-by: Dibin Moolakadan Subrahmanian
>>>> <dibin.moolakadan.subrahmanian@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dmc.c | 3 ++-
>>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> index 38b284a0db82..e60f1f977070 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> @@ -510,7 +510,8 @@ static void pipedmc_clock_gating_wa(struct
>>>> intel_display *display, bool enable)  static u32
>>>> pipedmc_interrupt_mask(struct intel_display *display)  {
>>>>    	if (DISPLAY_VER(display) >= 35)
>>>> -		return PIPEDMC_FLIPQ_PROG_DONE;
>>>> +		return PIPEDMC_FLIPQ_PROG_DONE |
>>>> +			PIPEDMC_ERROR;
>>>>
>>> Mostly looks okay but here's my question:
>>> I know LNL pipe B had an issue with PIPEDMC_ERROR being triggered on
>>> LNL pipe B, As I can see from Ville's commit message, but is it still the case for
>> PTL ?
>>> Can we have that tested ?
>>> If that works we can add the PIPEDMC_ERROR from PTL onwards.
>>> Then here we can change code to create a mask and then return it finally like
>> :
>>> mask = PIPEDMC_FLIPQ_PROG_DONE
>>>
>>> if display ver >= 30
>>> mask |= PIPEDMC_ERROR
>>>
>>> if display ver < 35
>>> mask |= PIPEDMC_GTT_FAULT |
>>>                   PIPEDMC_ATS_FAULT;
>>>
>>> Return mask;
>>>
>>> Obviously that is if PIPEDMC_ERROR works on PTL properly.
>> Thank you for spotting this, I think its better to add above  logic in new series
>> rather than combing with 35+ bit mask update.
>>
>> Regards,
>> Dibin
> If that is the case then I think its better to drop this patch altogether.
> We have a justification of why we remove bits in first patch, that was a change in NVL H/w.
> But this change was introduced in LNL.
> Without a strong reasoning of why you are enabling this is in NVL and not in PTL (which I don’t see in this patch series)
> I suggest you add this patch with as a part of the series where you have a use case for it. And if there too you only add it for NVL
> You will need to add a comments as to why this is not enabled for PTL.

This patch intent to fix the interrupt mask for 35+.
I dont see any reason to disable this bit as
1) error bit warning is already present in interrupt handler.
2) bit is defined in bsepc.
3) LNL it was mentioned disabled because pipeB triggering it during first DC state transition
which did not see in this case.

Regards,
Dibin

>
> Regards,
> Suraj Kandpal
>
>
>>> Regards,
>>> Suraj Kandpal
>>>
>>>>    	/*
>>>>    	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
>>>> --
>>>> 2.43.0
