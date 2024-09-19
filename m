Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E3797C7B7
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 12:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ACB110E6DC;
	Thu, 19 Sep 2024 10:07:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jm6o4gAx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E400210E6DB;
 Thu, 19 Sep 2024 10:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726740438; x=1758276438;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hDShgwSvdWX2l1/++hnP64ebQXTkZPdeRU9hTTITwdE=;
 b=Jm6o4gAx/xrbuM5Y1aAhmEYCWsLOq8z2sNfNkquViBsxX8pIWEyXD7cW
 fa3Mn8T96uzBCDdPW8FRdiPLclN2YXtAPjzwFCG5GWJ+lW/EQnizCqzIL
 HijQhjS/CFCVkaFd8Ys1e6cZfK9CZ9s4JxvBnOIag3oo6ZbusqrI/VRlU
 HoF3NCoG1TaoCwf7lABAravQPDouZdyJCggkCO28ypr1z+6omRuJvtf40
 09NoJ6W3asl82Ms9/YkaZXG4v8bw/UoO4rc9IaJcbjNIa/XM3OAI9fnrK
 GIkCwS/bR6lyi19zXdCiqbDb3KyCLcvKuI9lu2Opo1vb3qwRUs20DdkNd A==;
X-CSE-ConnectionGUID: D84UPoRQR5axJE7TydkLKQ==
X-CSE-MsgGUID: gqpzMXc6Q6ukSEsev+pdEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25570788"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="25570788"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 03:07:18 -0700
X-CSE-ConnectionGUID: LhgO65enRCiOU9UTnfg2ZQ==
X-CSE-MsgGUID: BrNFHKkuS7m4S+z6ODnT2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="69908380"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 03:07:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 03:07:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 03:07:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 03:07:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mCzlhPVzHBdw893FH61Tp94etP2fnp33FU8WYxxjigYb1a9MT/DsRnvOYCwVgIelPKeI4/+PeO/5w5y3h4nojNPDPMLCe/pfACsMcARWtWhLIecwx1THSMakWNuJLjbi+jIYzcpURBFzD5ltlOngIW+10L7d0cAP6PzNWVwUxgWWg6EbnwImICjf8aXoA6jFZXd5pRiDRfJTHd1gtV0G0zyvSvXx77xbxH46vRrcrH1jMy1Wn2T9lVa/wcURY2eflUHerQQ1wVjFwC5ejbo+feYs8C3EOVZRe9z6v1XOH/pit7wHY/ej3ElnP4QLEEQypy0wdssgH2jwlquab+GQgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dzYMwBaXaUL8t6MgtTJR2v7yI7OEyUGxp5nlKT17KhQ=;
 b=QSJPSvnxDt5H+tyPLKDcDBkmyDTfXuW1ws/mElnJOQYIQWNDXlnU50fL6qIpPL4582vZF461lE46HI+/zuufVjvfGNVyOY5Od6gWAmLiYjZmuxOcqlqbS6HA6kL3PKuJagEIkAKzncYKIIIMU9vmCK4GEYmr6roAN7XLd3H9leSx2KJ7Z3LAKns8QHkrjPe/snI/WBPP194ZJW8pFkricN+x9zzdjBF+RPlORB4ydcRwGuyblVfCa9Wh0KHyXxxAZM33udEWuMOsiqRIwGFNIdAyHDypZoIi1Zx3mCsJrKEnPe6U5/koR4lfUwJijlv3MqN9fpNN3oD9ThD0k6BzRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB7247.namprd11.prod.outlook.com (2603:10b6:208:42d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.16; Thu, 19 Sep
 2024 10:07:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7982.018; Thu, 19 Sep 2024
 10:07:11 +0000
Message-ID: <1f37dfa6-4d32-4708-94c5-0b846b753be5@intel.com>
Date: Thu, 19 Sep 2024 15:37:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Modify iterators to prepare for ultrajoiner
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <suraj.kandpal@intel.com>, <ville.syrjala@linux.intel.com>
References: <20240918063016.2667721-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20240918063016.2667721-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0082.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB7247:EE_
X-MS-Office365-Filtering-Correlation-Id: b1264fb0-dcf3-44ce-0bcd-08dcd892d40a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUhycXZmaHcyUXZ4aVYrclQ5ekNNSEl5Smx2TW5acGVZL2JIeTJTbURnUlpO?=
 =?utf-8?B?QjJuSjB2SDdyS0htZVFET0xJeE8zUkdHWDI5TlVaaVlFOW43Qm5DeGZaaiti?=
 =?utf-8?B?SVFoayt2eWszVVoxcUlja1FLZE5QMHFqaFl2SGNrQ1gzUzZydE9uZjU1Rkg0?=
 =?utf-8?B?SFU1YldETy83ZWM1Qkdxdmw5cjBOV25CQ1hhTUNUazZTaWtmQmRpZGZrMnA2?=
 =?utf-8?B?dWhUZlFTOGdMZGhkaFZ1Smh5RUNoVjFTTTZnQXQ1c2MxUnViS0IwS0JwNFVE?=
 =?utf-8?B?QmpSRWU5M3FPVFNzMEJIV05tcStRMHl6U0Q2ZkxhQ0xnVHZDY3Zkcmk0OWFV?=
 =?utf-8?B?aVVYODF2dXRXL1JKbTIwOCttSlpXRXNpT2IyM2N0a2U4YlJweFRFWVVrcGE0?=
 =?utf-8?B?TDBZZWMvT29iYUxZQ0psT3JnUU5BUFFqQnpMaWQ3c08zYVBFM3VVbFZmRTFz?=
 =?utf-8?B?eHkzVlp3c0tNa1hKQTNObFBpN29VYS8wM3A5WjFCQVBqNzlkWG1KMDZFWjN0?=
 =?utf-8?B?SmNybW5iTy9GVWd2SkZsM25xLzJSWkoyZzVyQjdEYUVSRG80cUtCVkVTZzhw?=
 =?utf-8?B?andPa2NBTmU0NjhFZGIrWDJmSlkwdHlMNVdNNVlBVGJ0YnhaRmV0ZHhKeDRn?=
 =?utf-8?B?RU1TQ3NLVi9BZUJYTjBjQzV4UVZUVVQzSjc3S0N0UFhIcEVuZExNMWhIRDdS?=
 =?utf-8?B?ZlliVm1lcDlWRGl5LzF4VEprcWc2NUxESDZvb2QvTDV5ZkZuWEZ6RU16VmVu?=
 =?utf-8?B?WGlZVUZVbE85eUNFT1VnYjFKcFBmeERQeE5xaDFqdm10T1kzN0JLdlBMM2VD?=
 =?utf-8?B?a3RabHE2V21JNlh0T0dMYjZUc21kTDBJRXZkT3liRitZVmZGTm85SFFobVNN?=
 =?utf-8?B?YjZvL3E0aExidnNYSlpYVFdTWTVBZ25UbVdnOExqMjlvRGxCNkpHMm9nenMr?=
 =?utf-8?B?azhFRVcxZkNvWHBQc3ltUkoyQ3IrSDMxUVRyKzdEemVzNVQyRlZKRXJaR3V0?=
 =?utf-8?B?d0hNTkJHV25XdTVsdU1mN2NCSThMRGdDVFYvVGFhd0JERVR2T3AzT3JOczRv?=
 =?utf-8?B?SjZBSlltYmNhNVIycmVqTUxLbGdyV1MyTVd1TGxlWDB1UlVKM2hVU2o3ZlA0?=
 =?utf-8?B?Nnhxek15WkY3M2s1SzhjSk5WMmpvdTNTOE5uVUg0VVJJUDhoaVMxa3AzeVRq?=
 =?utf-8?B?aE5DTDY5U3VFcmJ6cTNJZTFDYmVNUjRrZEhNaWdYck05MzJmdW1LTFFUd2hL?=
 =?utf-8?B?S0dNQlpRaWdQQXRzY0lpUWdoRkhWL2N0VzE0akR4RXRpVC9RSzZrZFVIeFBm?=
 =?utf-8?B?REkzL0tXaTd6Qlk0K3JjTG51NEs3T0ZxRzdhdWhNOTNOcTNoRmM0ZlhWZENS?=
 =?utf-8?B?Smh1Uk9CaFFlMXR6UE9JNlJMUTc0SzErOUJlK0dTbGFpQUhBUksyaDJNdVNV?=
 =?utf-8?B?MlV0SXdiMldkTnhHaGFjSjAydVFqQ3ZDNXVOK28xTFk5aDYxZERhdi9adlli?=
 =?utf-8?B?dGprNjVzeW1ZRmszV0xZcmJIcTkyOXZPbHVUbG50SzY4cU12NW45cnZMaVdD?=
 =?utf-8?B?bStvTWovTHBDZEFHblEwOERIZjZPWmdabUdyYm90TU9WMk1qYmsvUk54Q25R?=
 =?utf-8?B?ejZpckVYdk4vaG0rYVpBbGVEUExGL1FzZExYL0dHNmY5VUFrNHgyd2JLZlli?=
 =?utf-8?B?NDVHUFRkMHd1MXg2eGFqRUJ5QVJqN0lQSXhsTXdEZ3VGZk43RzFoZnZRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkJOUU1MOHlodDNMUGl5WVhtU0wvZ1FJdlNKdXRJd3FKM3piZURRWkZ4a1hs?=
 =?utf-8?B?ejUxRkhmZDAzZSs3bHlKSzFTZTZGQThIZlRaeUNVQVJaR3E3TnUrZU5WVmNB?=
 =?utf-8?B?REZiUGcyUWdpUlhXd2l2YjlUMGxJb2lCSVRBMXhzbWxRSHpzalB1NWlFb1ox?=
 =?utf-8?B?YXNxWEVUbDRMaS9EZ0NNZkQ5Uk1jUDhybXV4Sy9KaGpaN2lWa0h3VFdnR09X?=
 =?utf-8?B?Q09BUFpMQmllQThKckV1aXRuZjhKVCs0NnVXZW9ra0sxUytwQkVweXoyZzNF?=
 =?utf-8?B?WGJOQXFhMGgyS0VqNVd2bVFYNVdsRUhNUFkwNStjcER2VXZER2ZIZmdmMnoy?=
 =?utf-8?B?QVg4YVZwNm9ZcVdTVkxFTWhHTjg4aDRWUFk1N2Q0RlVoV3R0QzIyQ0FzNkpV?=
 =?utf-8?B?Y3AwYjNvUy83bXQ3ZzhrNzFmMW81cjh5VFV0eVM3Z3VhYUJMdVNZU2o2QkxB?=
 =?utf-8?B?aEVzZ2xQdHo1bEZ0UTZlVzlLY3lNc1ptcWEydXRwQ25kVWppWGFSZ29tKzhD?=
 =?utf-8?B?UE1lMjJrd3BrY0lUT3ovTjd3eTFVOWFxR3h0U0l1RzBpTFFraHNhQzUxMkxs?=
 =?utf-8?B?UDRXYm13TjU4RXNGYk5HR3YxeGJQUjRreGp0RnNXa1poMzJLc2JaNXczbjNB?=
 =?utf-8?B?b2hUS0FBSTRJWXFyVktkQ1E1R3hBMlNvbGpSNW1UWG94dk9XbjUyNTJxem03?=
 =?utf-8?B?RXNwU1JvYkcwRkUvUHBlbFQzcjR1SnNnTURGelBick1uTEo2NlAyRmJmTVhD?=
 =?utf-8?B?ang5ekYzNURCaXhPUGZyRDh5ZHdIcXRGK0VjbVFlRWhhSDROejNQUXc2Qzhs?=
 =?utf-8?B?NCsySlBiUmhCdUJZbXFIVzlLOVdQM1RVaEFqSlhRNklSbjNkaVJQVU44d2l5?=
 =?utf-8?B?MVhJK2N5ZUovb3ZtWURTYU9mb3JVeTltZUpOMTRiRW03ODVxdktsS1RJeWV1?=
 =?utf-8?B?RG9nTVFaRXMwQ2FiTHlsYXhhdElMbGJ6VVlYUWY1WmJrbHVqaG1aSXhKYWlq?=
 =?utf-8?B?VFBLVlYxV3o0VlhSUi9jRGhTbmxGRWpndExZNHdnTkEzT1JUYmVIRGw1Zjd5?=
 =?utf-8?B?aHdzVS9qV1JJK1lwcHZ0ZUxSeGFNY1FSUUt3M2dNeEx2ZHFvakpBLzQxZkpp?=
 =?utf-8?B?KzdDRmhoTWJBQUFzRFBKUUd5ODBqcndhVFBOZ1puT2lDQ29WQTRDUEJDc3FS?=
 =?utf-8?B?RUtzcEFRRE1vNzVwaGwzSnh5a3A1N0lRVW43QnNWSnNOVVl0RTRwUGIrVURp?=
 =?utf-8?B?TTV4dmtOYmhNdGpmbjFrQzFmRzZjMnhVOWhTMkc1NEMrS1BXTEpDRWRlNlor?=
 =?utf-8?B?Yk5HeDVzUDdzR0FTb1RZUklOT0ZVb2lRK2hJSVRscHlhWTVKdVJYeFpqZXFw?=
 =?utf-8?B?M3ZtRXI2L2Q4RUNhNWZvRnBvU2RMOThUVXpRYXA1U0FCa3oySXBtbGJZVGpM?=
 =?utf-8?B?WStqN01IV3NNM0ttVFBuSzMyZVF5bmJtVzRrUFIrb2xXa0R5WlovWnFhcWw3?=
 =?utf-8?B?ZEhUVE41S2F0bDcvQWRzOVFZQzF6MkM2eWpoNGhFVHRiMEJNZUVmMmVBVDBl?=
 =?utf-8?B?dUkzYUQ0dkNOc2lYNTRlenpEZWdaeTA2M3c2QTlpYVpFaVkzbnYvMEpQUjkw?=
 =?utf-8?B?V2JmdEhQd2NrbVkxQVVxQ0o5NHd0MndOb2RSZVBjMGN3Q1d3c1Raa3BrQ0J3?=
 =?utf-8?B?WGFIQytNVnFoeWV2aitxZWcxdmVMZUNLbitZdnZ6eWxSRXNxT0Jua2ZZdXJk?=
 =?utf-8?B?bFVaTkdaYXpsNDgxWndNY3RncWpMMDRDV25idWdxNW01dnlNd2J1Ry96SU1j?=
 =?utf-8?B?S0FUV2daZzRUVlk2ZUo3clR5MWtWMWVoZlkvVDlUVGdhRkxwaHJqSTZSVWpp?=
 =?utf-8?B?dzN1RmEybzk0eFlEYWlDeXhtMDQyMmFjUTFtK1VFaHpOdUpaaWhwWjJQeHZG?=
 =?utf-8?B?b25ETWk5cllFbkVGZGxjQ25RdkhyblBJakQxMFFpVjBCRlN0YjlKdXljU1gx?=
 =?utf-8?B?ZmdkZWJVWDNXTjNYSE1XcmN6aE11bkRCbUZ4d1lRMUNTKzlaTEttRWdOMnlu?=
 =?utf-8?B?VXN4Z0RIYmR4UmFhUnJFSGZ4c2hWbmppUVE2NkpNZ2I2c0F1Slk2SmRRVXB1?=
 =?utf-8?B?K3BXS2hLdisrM0pEZW5OK3lWTkVhSnZxTjlwb2VDaG8ra2hiYS9STGtxeEcv?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1264fb0-dcf3-44ce-0bcd-08dcd892d40a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2024 10:07:11.7264 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dzBihoEPyaLV2rFzh1oMLkMgTVr8aOFGQ++SHpPaOstbiKQafp41Q0WAhtbrZ52sdICiKO7LjoC4bJqT96cmO02sxLOq0OX1koTPVZyxIgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7247
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


On 9/18/2024 12:00 PM, Ankit Nautiyal wrote:
> Modify the iterators for enabling/disabling during modeset that works for
> present and future joiner cases.
>
> This patch series is a spin off from original series for ultrajoiner
> basic functionality [1] and discussion on [2].
> Few of the preparatory patches are taken here for review and merge before
> the other core patches of the series.
>
> [1] https://patchwork.freedesktop.org/patch/613914/
> [2] https://patchwork.freedesktop.org/patch/613914/?series=133800&rev=8


Thanks for the reviews. Patches are pushed to drm-intel-next.

>
> Rev2:
> -Simplified the macros, used struct display and other minor adjustments.
>
> Ankit Nautiyal (1):
>    drm/i915/display: Enhance iterators for modeset en/disable
>
> Stanislav Lisovskiy (1):
>    drm/i915: Add some essential functionality for joiners
>
>   drivers/gpu/drm/i915/display/intel_ddi.c     | 14 ++--
>   drivers/gpu/drm/i915/display/intel_display.c | 85 ++++++++++++++++----
>   drivers/gpu/drm/i915/display/intel_display.h | 28 +++++++
>   drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 ++--
>   drivers/gpu/drm/i915/display/intel_vdsc.c    |  4 +-
>   5 files changed, 113 insertions(+), 32 deletions(-)
>
