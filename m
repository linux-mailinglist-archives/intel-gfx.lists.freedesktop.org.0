Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 599F49410F9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 13:45:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E90910E509;
	Tue, 30 Jul 2024 11:45:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HY7PP8IY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB58010E507;
 Tue, 30 Jul 2024 11:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722339912; x=1753875912;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kczCoqzRvm3PTGfJMzVsSoYq1dmPLtAn1W4hsy9VqXQ=;
 b=HY7PP8IYWKBIQ+vBsFH1aMuLBqYsrgqN+8k70ww8j4dgBgKQwjOZN22j
 by/b8sxTiTxQ85YkUgCSPtAw/K3oWxAF13sRebFweqK511D93F+RL8sEp
 by6UBUSZzC1/NsghapTsK7L2fT8vebfQ0mshXxAkY7wnIUGFSdfdQkc2P
 XSqvP7tS6kYAgf2WUKsdXIWfS1GShCh7hMjxc68YDrsJgABdCz2f7KEMa
 xqL8FE1SwD7FDMaNy9UCVY/VylDuacIAXFun0KvrVhG1ZePYn/X/6eHfK
 MSYbBpx0JjnaLQStA+IKXoB0KJmoSyiUl4/MflyYgbl+SblilgH7qIW5h Q==;
X-CSE-ConnectionGUID: MRHdZQN6TsKtXziwrXYshg==
X-CSE-MsgGUID: 06IM+qeRRlaen5IcM9qrcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19745652"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="19745652"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 04:45:12 -0700
X-CSE-ConnectionGUID: DdLzf055SRKEHmSxm0rmlA==
X-CSE-MsgGUID: gf9YW/yHQOGZao3wlYJe6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="58946691"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 04:45:11 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 04:45:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 04:45:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 04:45:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I5fNAm6UQhExYeShTB4Dh8dVFuqNDjaFyEJZXEr9CBw40TIfqhc2P8abN+yeS7dgbR4y9bcbmgJSjSCIRuEfOj44Si6mvVRIBLsvt9UMGd8fR37uEeDTQIGFLMP9M81p2Uc4l9D+g/OObqSaSN8XLjr4GaPX1w2PVGAeThX249cXt0GDwdkVSmeJgd9+XFeAsOk/T8HV7w0gBNAgIBWUmd+ZWhEb1aYJZhXpKsK3AtmlzwpaREafyhnHBkCoEVBiyECZ8hUJi7gDi2SvgglZxgWehuZZ+quHZoCSBTSvu5s7kbrvYjs8S7RUyKoKZf7RiLWlwsgZmVCz64H7MiHVsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a0MaCfPvFE6SZX/yiuIQRdBiyr579y1h/gzPovw8FQs=;
 b=PA0vsyNaCfolNFnkW+kpAH0egOT6QdXNKWlIdT1CWa3JJX5PnQY28qYeoRlvH5Vg/aVQmn/hbnULl+exwpj1dCq8ROLW4SO0vJpP8THJsIZMorES2VGWnM00XIO8iYs9/ZyHuEJEV27Eg8jIPeymAiWvyDJQ+SvZg137aUVyy68BfqvbHpRuuZSNmpihtH//9UuygpDAVMa5SRjWFsJmaaSejsIan7AT+/0oBIlx3wGkROEjKaBLEZvodoRiAW/MuLJiEcuW2tfnCiM8/ExrKVSf2pH+3S+p0F6sAo5cK1H69xeOYcyTquuzw6mouOen8FDMQuXkdC+0Drwx1Vl9Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5075.namprd11.prod.outlook.com (2603:10b6:303:9e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 11:45:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 11:45:03 +0000
Message-ID: <9973e91f-e6ca-49b7-b8bc-06bf20603377@intel.com>
Date: Tue, 30 Jul 2024 17:14:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] i915/display/dp: Compute AS SDP when vrr is also
 enabled
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <arun.r.murthy@intel.com>,
 <intel-xe@lists.freedesktop.org>, <jani.nikula@intel.com>
References: <20240726085012.277687-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240730040941.396862-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240730040941.396862-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0009.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5075:EE_
X-MS-Office365-Filtering-Correlation-Id: c0d3c376-1a3d-4c53-7a2f-08dcb08d0cba
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dEdJWWo5NGxnYjR6QTZ2V1dlZFlad3plcVJRUUxJOEhaTjJpbEw0WExUQzBZ?=
 =?utf-8?B?ZFFPWm5KZXpXc0xmeVNrUGgxN1FqWlowRjlXU2puRzNrQU1kU2Mxc2hLUXVu?=
 =?utf-8?B?U1Z0YndyOVVEdGExMW9tV3pkQU5XblZTMkdnV0NSMnAzdVdrOG1RdkJyT0hC?=
 =?utf-8?B?UEJBVWhQM1ZvUnQ2SStyRktSZnhrSmlOcGFoRHEvYWZzdVIrQ1UrSHB0cFpC?=
 =?utf-8?B?UkhMWWdWd0VzTk1tdFhGMkpoT3JxdDErdHE2S1BFRVNtWW1HQWRGRkhLSTho?=
 =?utf-8?B?RVhEREZmRlVJQjBCUnhyK3hFYlZWaWxwcWd6MWExa0R6RUYzcXFEaEE1WWtR?=
 =?utf-8?B?ck5GWnRIakcrYVNBVkdidmJ4Q0NOZ0wvcXAvNGJzSG9SZVNncm9LbTB4NDZ5?=
 =?utf-8?B?NmM5ZXRQVXMzczlURERrSVMzZnZ6YUgzTW5Md24vVzMvUjNvaFhBbnFCaGFj?=
 =?utf-8?B?L1U3QzdRd0tqZFFJU3Vham0vTFJmektzVklQMW5VZEpQZm5HRmEzbStSSzM3?=
 =?utf-8?B?WUxVUlhUS2s2bVJzVVRSNWtsK1NpQlFlVWxHSFBHUFFkRmlLN0I0QUdPSzVO?=
 =?utf-8?B?ZTdJSkh5dHlNcXhjSzdVYVppT2dFM1lscFdSSEZhT1AxTXJZdk10QlhXSTNu?=
 =?utf-8?B?S0RJNTQ0MWFEbWd6bnBwZnQzWTVSS3ZkUk4zMyttK21GYm5GUlBMRldOK3hV?=
 =?utf-8?B?anY2aGZOVXhTRVRVRlZCdGJqUXVzcmw4MlZBc202ZVZXT0FwdmFSckg2dmlK?=
 =?utf-8?B?eTNsTUZaOUhsRHhOOFRkdHBnZmdsQXpxV2dEdkNnQnV1QkxDVUJSWElZOHF4?=
 =?utf-8?B?QjBUTlhqWm94WFdYckpxTkg0Vm51VlhpZFBLNGpIdjNPZ2M3clpKbmdlUzNt?=
 =?utf-8?B?YSsxWE9DRmh4SFA3UWljaHc3TGRJSHF4YlMycUVtVkNBKzFTUnBxVUNsMXhD?=
 =?utf-8?B?Zk0vYkljMmR1SzUyNUZMOUxXdTRMdFFjWkdIcmVOaklVQ2RtYW1DR1BuMVBQ?=
 =?utf-8?B?a0NUUCtSQjBxd2l2YkpBWC9ReUVSR0c5ZmpPODNiMmRzVlF2Y0tCNy9vamlo?=
 =?utf-8?B?dDJyYlFZNzFjbjNvRUlGQU0rdFhjbENCUzRjb2JJMDNUZUNveW11M0s1ZFkx?=
 =?utf-8?B?djh2bi9qUk1GUWprbzdtUDBMejdqbVpzeTVJMUw5MVhyKzdGUVRuUDlYak9V?=
 =?utf-8?B?V1BSQXZxeUo5UG1XbHFJYzE4UW5xd0tJZUZCcE5hZ0dlKzFJYm9KTE9TZ3NV?=
 =?utf-8?B?aS8zVmJpVW9TbGg2M2E3dGxuUjZWWTNtT0hwTUJOVlJoTWYzQTk3MFJsYmNF?=
 =?utf-8?B?U21lYm9GWGx4aWZiWjh4U1YxQjdCNFRhUlJPczFRWDFXc2JkUTNVNEtHOFBu?=
 =?utf-8?B?UzQrZ0FtWUkwNnowc010NEQrS21kc1pMMDhsbGhRK09XTG5YZVVzN2tHd0JQ?=
 =?utf-8?B?OEVFdFpTb3JJTUcxMUJ3bS9BcW9QTm1BRmhQbGxEQkRFUnVMaXQyT216bGdo?=
 =?utf-8?B?SExVVHpLbmMyMEVPYm8vaFNZQ0tXUXoxYytIYnBkeCtjVTNpOVR4cFlkQUNP?=
 =?utf-8?B?cXV6SU5BYWZhaGUveGlUcmdwejRYY0tlQ09QTlRqL21VK3NXcXpZd1ZqYWE2?=
 =?utf-8?B?Qm45M0NhNDVxMGRnQWtpZGFkc21yZnBDemFHdUZuL3pxb0YzSU1Jb0g1Z2N0?=
 =?utf-8?B?enluT1NHUVR5SWd4S0hQZGNnTFVURitGTlpWUUtNU1RmOW9icUVCK3VFaFd3?=
 =?utf-8?B?eTI0elgrMTE4OTdCcy9JdU1YR1hhVUtKRDl3aDdrS1IzWjRjakNmbFhQT0ls?=
 =?utf-8?B?MTVMSXFNdmdOZkRZQnluZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFhoZzRCOVR2UVkxZkFVSmc4Nk1DRGdiRUVDaTVqS1BpelQxQU1nelBXZGlp?=
 =?utf-8?B?WkpVcmV2NFc1Ly8rL2ZDSzloWHBnMjJaOGV3TkRuV2lUYm4rL3JKdDUveWkz?=
 =?utf-8?B?Wk1vdmk2WGJlRFNoNmtLaVN2MVN2K1Nnb2FqRW1kSUsxUGhuU1haNkxHZy9U?=
 =?utf-8?B?N1dtQ0toWlY1MWJSYXpxQnZtNkk0cEZ4SExnZ2krejlIVUtFbnpJelZpV0lQ?=
 =?utf-8?B?NXhveW9SYmJRSndJdW12cnRsa1dXbzJtWkx1YjhvWUhzSmJORFhWYTd1SkNF?=
 =?utf-8?B?dVh1Q3hZaytFZVFwU3pZOWdQYlRNdnlTZnRPZGRGVnlJZklmRTdOT2FqQmJC?=
 =?utf-8?B?UVh0UzlNdVlzTEoybjdYVkswTkY2RXFHS0Z5THBSTjJRbFg0NFY1UVdQbEp2?=
 =?utf-8?B?bHRORXQ4Wk5mVmhWYUpVMTcvVXUrc2pESlplSTlYWGg4OUx6K1FIVlRxeW9a?=
 =?utf-8?B?YUoyN1BmSkFJSGVrYmdTK0Zkd1RTTCs5Y2VNVFZpV3VzaVBjMVVWVmRVMGox?=
 =?utf-8?B?bUhhVU9CaEkzYTIvSHM5TTc4cnpNN09jZzVETTVIKzdxS2pVcUFBeXFELzZ6?=
 =?utf-8?B?VitNaUJvN1JuTGxqQXBpMzlnWFFUdnBoUlQ3S2JyejdybDVDbjR4K2tIcEdr?=
 =?utf-8?B?M0g5NDNDcmxmTENNdW1lVjdodDlUWFFvVFl4bzJYbUNQQ3R4a1A1VndjcFBN?=
 =?utf-8?B?ejJLcUhvRTdoV1FRZXM1NDN0emZiYzBDYXZkTDhROFhPd2FIeUlNQXNEUGVz?=
 =?utf-8?B?NC8zSW5XdDVSYlJXa1IxZkhTWGJ3YlBZRkVaZ05ZZFNQUUhjc1VmMElLc2dp?=
 =?utf-8?B?M0x6K2N2Nzg4emZxWmVuNlo5WXdRRjVFTVB0S3lFcTUvNzVOVG9Qa3MyaVln?=
 =?utf-8?B?a0RZbTFYU3BJUU1WeTJFYTlxdWtYZ09JSS9hRkZGcE9rbHUycmlhYkVNcnVN?=
 =?utf-8?B?STNoWHprTSsvM1dxK2JjVUpnMUlKS0J1VUd3M2l2V3d4b2h0c3Y2M0YwSXJt?=
 =?utf-8?B?YUlNYXN2Q0YvZHg1Y2dNVjQvRmhzR1NPVmZzMTdXWkRGNXBoVkcxN2JxOERm?=
 =?utf-8?B?eGs5Yk0xOUlaSFU5cGhCbEJwcVU4cVpvaFMvTWlKa2dyTncrc3dGMCtwRVVM?=
 =?utf-8?B?Tm9SWURtQnRyV3VVbmNXSXUyUHlPbXdVZjdIMTdWcG1YS1hiTlhBQ0ZxemVN?=
 =?utf-8?B?dUpLZ2tmZVJ2aldlckVFVDYyeW9lSTFjWHZNNGNaRUpyb1pqUXVWb09mbkk0?=
 =?utf-8?B?ak9HL0I5T1VyalpIUnU3RitmdXlRMnZ5eWdKSDdWZGMycTZCY0prWGFXTFk5?=
 =?utf-8?B?N0ZMQUM1SUVoYVp1K2pCMWJ1ZUtrYXRzSHVsalJ3TCtES0xRWFo5MGk0SkhD?=
 =?utf-8?B?UXFBSEV5TG5CUkNIUExDdTFKK3EwbXdYcURjZ1FhcU9rNmMvamRJeEdkOGIx?=
 =?utf-8?B?S2tZeTYwcUVzNjFpbWNRZlB4M25XQWxFVEdYaXhxTVZ4SVBaWk1IbmVyT3NK?=
 =?utf-8?B?TjBNZ1FHeTJDU0kvYnpUZ0pWTk9TMW44NVhETGdpYzZ3RnV3eldZcWdpcU9L?=
 =?utf-8?B?dUh1Nm9lVFpROHNvREN5ODZsMlRLWWZBMFFEQXJ6RVF3NnA4c21xdGova3NP?=
 =?utf-8?B?MXZDV3FSYk1ObStRTnNKZmg2Qkc1OVMwSEtzc0xWMGdwUjRENkdCQnpaVUc0?=
 =?utf-8?B?NXBXUXhOV1dONCtBYWxZV3kxN0lJMDcveXVKQUd0a1pLdVFOWGt5Um1qVW9a?=
 =?utf-8?B?aDBlN05waTBFVTkxV3FiMXZTekNJYnlQSGNNZ05IM0o5Sk9NRmdVTDhNWUw4?=
 =?utf-8?B?SlROZnViMXpwU0JzdHFnTks1RzdtVWRXMmJ1NGhydDV1MnA1UlA2Wm8yZlBQ?=
 =?utf-8?B?ZWs2NVZjb2xMZ04rUUtSWnJxOTBjYnlwMGJDZGtzbEhzVWJBUUN0dXFBc0Jr?=
 =?utf-8?B?VUxwS25TUjRQdnhDZXp6SXVwaktZSGJHenZramllVEYxYk9UcGVUOTgzQWNp?=
 =?utf-8?B?azBlemptWTUzYnd3QlpUSGJ5cTZaOC9TQnZvMnpKV2wvbHNxRHhUdTJPNXpp?=
 =?utf-8?B?MW8wYmRBVVY3ek9MZktQN1dBYk9KNlhMakZqeTFRNHU1bTRQcWJlazhxZ0tr?=
 =?utf-8?B?b0QrRlN4a3Fkcm83eVdOK2JwN1FvT0c3cy9ESmErb3VFM1hGN3hDQUptQUlM?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0d3c376-1a3d-4c53-7a2f-08dcb08d0cba
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 11:45:03.3813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tCGSlOxf8Wp4XOvbbyKYnF0+4qWZAQS3sZhSDbFBVTUSTmYHW/bS5inkj1RBUeUml2xhZC9u0IW+moYJjDZ6HwmzC8yiKiPtR1G6mAHzI7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5075
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


On 7/30/2024 9:39 AM, Mitul Golani wrote:
> AS SDP should be computed when VRR timing generator is also enabled.
> Correct the compute condition to compute params of Adaptive sync SDP
> when VRR timing genrator is enabled along with sink support indication.
>
> --v2:
> Modify if condition (Jani).
>
> Fixes: b2013783c445 ("drm/i915/display: Cache adpative sync caps to use it later")
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks for the patch. Added prefix drm to the subject and pushed to 
drm-intel-next.

Regards,

Ankit

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5d6568c8e186..86412ae7b48f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2617,7 +2617,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
> +	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
>   		return;
>   
>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
