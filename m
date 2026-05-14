Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCZzLJSFBWqiXwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 10:19:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDB453F302
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 10:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A2FC10E393;
	Thu, 14 May 2026 08:19:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LSDLlO4t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057EA10E384;
 Thu, 14 May 2026 08:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778746768; x=1810282768;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Zc8jaLiOdunkysKPqCeE4pAdMj/mnipxMuepIkOQ4w0=;
 b=LSDLlO4tvxu4mEWuHHloR65OGA7S94xA3HlOrGLoaEpu+pbFRCBjNbYb
 EnGEpG1+xQD6Q5HYwdE5/VMmNQPzfr72jrv42oAxM0ZpYDfEzJ2CJeAbE
 1zE9Hg6VVtwJUKLO3ENTjFnuGnWTbVUAqUq7xc+FZA0F+LZnWULeC6egE
 aGHBY85F6Ex08IDjQWj2aQG3ItWGCO6rW1zwP+l/9tB5pd32R8cdKVMHF
 DSWd6oeBzuVHi+1L0pt0pWwbETcLiuNNgAE3PvyR6sJvR1Nc2ja0wob+Q
 7fCDY0/KFpRy3NPPHkAcGvtHfEWPQU1ludglVkNxDedpn92bmopINe5A4 w==;
X-CSE-ConnectionGUID: lxEAzTf+RYeoFsD0d4VgQw==
X-CSE-MsgGUID: p8YeVI28TYGuVv5HxSSRPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79639018"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="79639018"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 01:19:28 -0700
X-CSE-ConnectionGUID: 0HUX9iUTQNeYh7lzSJ2MSw==
X-CSE-MsgGUID: pzFR8jpkRtqrrvshyIPfCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="238439210"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 01:19:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 01:19:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 01:19:27 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 01:19:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NoN7nNM2ZNnxbyiflEdnP+L8lm9LwcXvjAyexwoQ5aPpXaDebiMJNXfkJmZ6ONQ/euwup2u/nz2VeGb9eEgoNjsBLoHAs99N9WUsIGIDI1LiVJBjdqDAatAbbQzaLUCWWqURI4iweUptk08FQDHy3nAlfS0JUMalK5ugJPl+wM/yFzgvrXMQgu2WNYMfG5KEGFTMRRu7/omJiQKsZPLGJOlgc3lXE6JqR7adEjFrFU94gRj2ayoTxB3L578jum6tS5uSHC4pw48cEduu22mE4gUpvv2SQz26TlYjksK1vTAM+X/+wVe03vQOTOYzt76EFSrE4Su2rXhFLG7EfHPyjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a4yldlJYOFhLAORDFn7+1X+B9dOxfj00eo0u//UjAN4=;
 b=BoJ9HsVYGiF17wge+1yQNR4GUswqNW6prSer6jANYJYfzP/qVrwf5ktrHJLYuy+dVH961xpMkoRxdK/wgqks4Mt4X0mlbVSN6InZ2EEN+MrY5FEgaeLi3+t1KCuuCLN8TW6LT+TqVz5rIDQFtDhDlI+8/Z+1uYv+zN5tWyXKXKLPoqNuIitwmjsXbnyS849Di+a3Ppy/WL0iX1etJD9aCioUvw/wqRAX0k2Pj5zK7QFa2AnkNYz7KajGekTmClCqX7UDRUbQoPCRJSbxxLze9RGo4SZo8ol0DOwpKzo0pHxxpWXwjtoecy27qOb2pHGgJamB3vpRY6zJi1hpP/IVWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW6PR11MB8391.namprd11.prod.outlook.com (2603:10b6:303:243::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 08:19:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 08:19:21 +0000
Message-ID: <e0eb5070-1790-49ff-be2b-895533caafb8@intel.com>
Date: Thu, 14 May 2026 13:49:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/dp: Add DP_DSC_MAX_BPP_DELTA register
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20260423143035.2267634-1-nemesa.garg@intel.com>
 <20260423143035.2267634-2-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260423143035.2267634-2-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0170.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW6PR11MB8391:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d41f91e-1af1-4e4d-a67a-08deb1918031
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|4143699003|22082099003|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: hdg/37KN0CJ2wJ8ENTyt1Tg1kqYIgvutvA3w1G/V6LqDzfjZ4XkKoRb/R0FQuriuYzQ7ZiQ5YUtvGfGut8uFjdf404SvX32jM3hkGv3xy2QOXhzZMdXHcroBBHHkJRewHPlEfg6e1l0WSZOwnIl/wnV6imaUcwP5P4r+XTRtaP64v6Kg2M3fztGc65VOUvpyqaDgYWU+uBA5rP1HJX+U6u2TmFj8yzeRXS/RPvXumQH6+p7i1AjmKKn2hgIafcYuYKv6NepP8dX0XqZSbmec3d9XTeBGxTmHlrE96+x0BlCF8rrsBBDCLWACsxUXeNrD4mUXwHsc2jz2bdGTPezaiOHAdDGCd0Ht4bKTtT0GSYpF/yLQ2eMNBpnW2fuBq2iTtia1dmKg0GkN54gS9KA6fHvxgFBHJbVlL9a0pzvvaiPpB5jZYG/A62UtIofcbVhznkPE+eJVRYwKpATKhxGyYL/yjqjVga/6EpIIGpUQtkcXaWxSHikwTyNK2771YATM7SlIgKU6l5X8AAo0hmBL0wt0llwmr3CTMkDfZwMMvDMGsS5+0rNw7QUD6NpJvhkDxGQM+e8Zuz4nHl0wIBVDxllRhTBP3vcTs2oILIhux1OPu1n7zr6Jpq7/7HcMxbtISAnamqyEfEaHXPFGEC9DvNEYMbCF0op7tFRTRM0Fo2AR7zTFKZ5zlOihGUWLMuVA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(4143699003)(22082099003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUhkclI3aTduM29BQ1lCY1R5d3A0SWxscTczM05KTUk2MGlzQ2FzZ1YwUDMr?=
 =?utf-8?B?UXNCQ0hZTGZQVnRBNS8xa0piUnlqU3d5WjlPaThOUHVYSG5xTE9idVZCYzRK?=
 =?utf-8?B?alYrNVBnRHFRV3NEV1dOUWE0YTJzcG1OdDNKNkJGcHI3RWZOMEhrL0c4d0dK?=
 =?utf-8?B?STZFbjFXZzlwUytnTmFyUzJJR3pTOVVjQThGOTdrSXFNRE5uWjZnb01DSUli?=
 =?utf-8?B?cVRSZHdPaWhQWnRrN0tCSUtTMVVrRDFMN1JmbHVUUDV1Y2xOcjRsNE1kaXhJ?=
 =?utf-8?B?a2x3SEZhOXNQaUN2cThOQWJSVjFLWGxIaGdiRTZRd0NDRWRwOXFLcjlzbDBi?=
 =?utf-8?B?R0FDaFBtbFlFZFpZd3FMWk9xdm13cTh4QnZEKzJUVktSbjRWa01aa0Q5VWpj?=
 =?utf-8?B?d0dNNit0ZkpCT3RrMXF0NnVQZU5SM0V3UnVwc2FUcXNHbUhCNldzTEJxL0wr?=
 =?utf-8?B?dy9Fb1RWYlVlemZlOGVaM1NPVjlScmhHVHNCNTZTS1ZNaHNVdENscGhleVhU?=
 =?utf-8?B?SndZM1cvOUk2ZjE5eHhxbURiWENTYVR0SGdObVlreFFHL2p5YVVMem5BV2xq?=
 =?utf-8?B?SkJaOWg2OXQzVHRZNm5GbVVta28xMHVNRWxvZUd3ZnBUdXI4dGt0VnRqUExa?=
 =?utf-8?B?aHM4U1NtZkRGZXE0aWJ6SGdaK0lLZHp5MVhoU2IrNllSZzFzSW4wNTV4U2Ri?=
 =?utf-8?B?d2VCQ2ZDTDJGbG50ejByOFdCUkFKeEQ3cnA3MjlsbzZkbGV1Q2J5YWt1UXJC?=
 =?utf-8?B?VlRRS1JKL0QrM0tkM29sNnhBUnJpc2pUOEpPN3M2MFlSQm5HVDBXMDFEYzNX?=
 =?utf-8?B?OTBOZ2x1TEpxVUV0TXpHc3ZXMzVHM2ZOUFh3Wno4U0FSZ0RMTkVFa2dYanEv?=
 =?utf-8?B?NjRjUmJPUXBqZVJGa1RyV0ZaZjNmSnZ6eW94bG5jQXlFSTJqUzU3bjYxaUs0?=
 =?utf-8?B?OXljN0ZWNmg2bnB1NTJlQzh0cEVnRGprVmkxV1NMUWU2VTVBRmFIOXpSSCtV?=
 =?utf-8?B?VkxZYXh6NEk1TUpHOWxxaFRBOFZwSjBoek5QRTY0RXV6Rms1b05QREc4eDl2?=
 =?utf-8?B?aUVxTUJsb0Q3K0JmK2h0c1Z0Qm9QZ0VBU0xUS3VPVWZIZmpOZjlKbG5EdVJS?=
 =?utf-8?B?N0JSZUhxaU8raklsTHJ4SDR5VFM5bDhwTi8rblNHODdOK0xKVjhMdFE0bUtV?=
 =?utf-8?B?clRpbmZwU0pSTTVYLzVPVnV2ZE9OMVpOR1pCV1RNZTNBSUdOOXVwK1c4VGV6?=
 =?utf-8?B?REJSZTZVdWx5UU9vMm16ZE9ROHNlWUQxOHhJVktNNjZZTW9Ld3dFSnNMQUN0?=
 =?utf-8?B?bGV4VEI3QTNwNW9XZGxZSE1tdEJYejloeWZUTFhycEF4NmEvRjFmalRzYkNx?=
 =?utf-8?B?cjc0Tk5rZ0tBb0E3NDdGNncvRWlHUWZLcXJ2b1l5UTFHZmpnb256c29jV2du?=
 =?utf-8?B?QUNBV0JJZ3BwajJlRjRaM0tKd2tDbUJ3S1g1Ym0wSU1Oa0NyQ25LSG1QbjY4?=
 =?utf-8?B?TW5vcUtNS3pNWlBOQU56WG1uaVp4aGhaNVJoYVF5Z3ZNcHpQS1loVmdpVjE5?=
 =?utf-8?B?c0l0VzZMQXA3aThOL0dqRFY1OXowVXcvWnRhN1lOK0dDbHVrRFZQYUZ4cGh1?=
 =?utf-8?B?clQ2RU1qWTFOV2E5Wmg2UWdLVWgyVnBMTnZVL1E0NkxWTXJadzZnRlNQZ1Jx?=
 =?utf-8?B?REJPSmNHNHBxMnIxU2crU0U1RG82MGY2NktiQm92b2RHQlcySTJEekJ1U1RU?=
 =?utf-8?B?cDRuanlkWHVsYk5EaFpqOStPNzBoQ3o4K0E3eExkYW9IK1pwTGhaYkpOMTJD?=
 =?utf-8?B?V3EvNjROTHZSdjRVWmxGV29sTG1ZTVI0cEVTSzhPaGM1Uy9aUmZkVElUMWpT?=
 =?utf-8?B?a3R6WWNkcGluYWZiMDFGNG1YQnR2SFlONldYNW83UW4vbE5MU3czU1lMeEhI?=
 =?utf-8?B?aUphQTd4bFArMmp2TFpzbkhDM1V3RXdUa0p6SEo2cHczRHBLZTVoMmZsQy9S?=
 =?utf-8?B?RTJxejBXbC9zUzVDOEV1MjIwcCs4bW11cEZmVmJyS01UaXphaWRYVjB1TFdZ?=
 =?utf-8?B?KzNtczd3OGJ3d1JTRDZzY2RUMExWem80SUdvd0VjVnVQbU0zaThybEJwcFFu?=
 =?utf-8?B?Qi9KUVUrcFJ0VVIxWWdnWnJlakpLRVVuazZWa2JqVkx0RndNNUJobUR4bGxZ?=
 =?utf-8?B?b05SOTI2NDlTUXhuU1MrRHY3Njg2b2xUbEkwMng0TDVQYzkvemE4Z0pyUXh1?=
 =?utf-8?B?NmZtVVN3TDlOOWVwWFFVdWQ1cThHV3kxWXJaMDJZUnU4aEVWVlNCNzFraHhQ?=
 =?utf-8?B?OFVrNGxHTUQxWnFpNDZtNmlha2UvWC93WnB1UFhWM2x1SzYvdjlGai9aVG1G?=
 =?utf-8?Q?nGPfC5V50qTabVWc=3D?=
X-Exchange-RoutingPolicyChecked: G4QjV5+73VSECv/m9WdMYOmZ43M6+LVZCgtaorP9F2rv2LpN963B2PaZVF+6ScrBdTUwtbeN1p2Mfu+ybrrGyRcVCMmaTJU1YsQah3nTUEKEcnT3ECsIBrGtL5tSjm/y5tkFyQYDvTjHbqkYq43WmUejEUQqAu5E+gGhyBVSutltB5ig0hfO/kqdDvPNVnVaFOu8/vQZ3JCk5M8iNats1hKZqqxxf4TxmZBJsbfdz418Ye8RKztIrAU27j5/dL7qp8qM1+RuL+qSpkKXQWQDdZUo4V5UboAU1dupvoR6jpVbJWMKC89GcHtk/diDEcvA3SLge7ZnjTIeKh67kVG64w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d41f91e-1af1-4e4d-a67a-08deb1918031
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 08:19:21.8241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sFxwCqFxBitJ0v86g+dLTiDbcxgClwzImN0/+SHNyofUHdcA6aGC7ZdVGT+1NClVNKR2F4TIhP0WKZsoNu3LdZN1k6Brc5dkymsEfrN/H6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8391
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
X-Rspamd-Queue-Id: BEDB453F302
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


On 4/23/2026 8:00 PM, Nemesa Garg wrote:
> The dsc max bpp delta masks were incorrectly placed
> under the DP_DSC_BITS_PER_PIXEL_INC(0x06F) register.
> Move these under correct DP_DSC_MAX_BPP_DELTA(0x06E)
> register.
>
> v2: Separate patch for correcting register. [Ankit]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   include/drm/display/drm_dp.h | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 8b15d3eeb716..520490ac6778 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -354,9 +354,11 @@
>   # define DP_DSC_20_PER_DP_DSC_SINK          (1 << 1)
>   # define DP_DSC_24_PER_DP_DSC_SINK          (1 << 2)
>   
> -#define DP_DSC_BITS_PER_PIXEL_INC           0x06F
> +#define DP_DSC_MAX_BPP_DELTA		    0x06E
>   # define DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK 0x1f
>   # define DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK 0xe0

This should be called DP_DSC_Native_YCbCr420_MAX_BPP_DELTA_MASK

But that should be yet another patch.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>



> +
> +#define DP_DSC_BITS_PER_PIXEL_INC           0x06F
>   # define DP_DSC_BITS_PER_PIXEL_1_16         0x0
>   # define DP_DSC_BITS_PER_PIXEL_1_8          0x1
>   # define DP_DSC_BITS_PER_PIXEL_1_4          0x2
