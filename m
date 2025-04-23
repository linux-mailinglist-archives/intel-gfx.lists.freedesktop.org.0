Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 517ADA98022
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 09:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C781310E1D0;
	Wed, 23 Apr 2025 07:11:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QwrBTqZO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B21A010E1D0;
 Wed, 23 Apr 2025 07:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745392261; x=1776928261;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xhCJXyFHbMHzGTVa6mKSPnGmBzFRbYGjjOqeKdqF0xo=;
 b=QwrBTqZO18rzc76/nzHbCRYHNE2Z33iNpSQyX0pZiWivUV3pORTk/GTN
 +hYN/Ey6OMxYiW7LnmKkR8zlTGjkLm5blYXSP903uJhHRrRMiPoJh3ESj
 tTHmpWLX51LPUcR16D8kFiizB+Yy2kfcx4KXjRsXD4EwpbPdlM02dl6sE
 SXHPPA7JQJnWzCgJ0Yj+kFR4KR1155kUfIy+7J3aqQtSgTj+SA8PRcwbT
 CoFyG0hEAwgujQ2Hc+RfyqVZhP5MwHsTWOaY52D6vZ8apPpHXOa6WOhPU
 96FhHB3mcZ4A7NQA1WvoJ6QUSDpQ3vr7bRAoSDxeUfkA6HA2XsLR/p4mt A==;
X-CSE-ConnectionGUID: WK0h3oLHQ72s5SRRuwQehQ==
X-CSE-MsgGUID: oT+a+Sr5RHaiuDx6rCa63g==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="57955844"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="57955844"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:10:55 -0700
X-CSE-ConnectionGUID: sxuqIlXGQ5S1hNwSqgZXXA==
X-CSE-MsgGUID: tLUvdjOWSvSL4ZGvd82eBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137224526"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:10:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 00:10:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 00:10:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 00:10:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fkrny1pb/HfDiwWE4NxecqietFYYRI8QicX8C+urVhvCdoQk0mzZxF9PyBhVfqaSvvKxyyaXhRFWnc//FHmbUY4XvoVvjOFQ4J9TN7CLnH0YeQgiRH4LJOORnRysPa5aKx6ZFhEGSWWPLto4fAF53ADTa9SFpg+cGAYAlmXynKwt2ugKH6ZGkT46V7+YahSgZp6BvjwaGPT5XzohgJiJikwaRCID3sHNSCSCqSaC1rFmnP32s5oy+kPJgdfMykHOsPEvtmsLwebYVrDvRCPuSsAXKLLKCmQTfwQ7s8GHN7hs+GJ23QqV4GQhvBCM4dX5MgpT0x74gq5sgcdwL42v+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Os2KMVu9qkHtMl11nKQfxoZq2bupv/IuGm5c8ioLpoM=;
 b=pdSHSoA1eXpAewR9WOc1bQlU6IC20TAYS2mt+hIoo9kfrZ04vnJPBejveHk6x2nT5yZV+rPvtjRI/D3a/e1GFJ06xGNDVerMG9cYPu2lJiRGh2W1qH2uCswxg9ZW0CTxPIL55QcfQStUpamUS7wEn+y2UUobBkZM1O8/e1UELCHO6f1hk5y/9QPyD/WsGr100e7diy93rMdVXRcfIRwzld5x/Vg60PlHxvXvDtwztBfhFVXvOLzlNHAoXAL0Fq+IVMi/+ujk6EI5ImY+/3shcUx5JcC3QohFM+onClXY2VcxJR4Y9avoitJE92Iv4GXIG5jBqZen/DkbgNE+sJ/I6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB8183.namprd11.prod.outlook.com (2603:10b6:8:161::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 07:10:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 07:10:51 +0000
Message-ID: <32aae3b6-78bf-4ffe-a11a-a1ff5747ca9d@intel.com>
Date: Wed, 23 Apr 2025 12:40:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/13] drm/i915: Extract vrr_vblank_start()
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0156.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::26) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB8183:EE_
X-MS-Office365-Filtering-Correlation-Id: c436f9d0-6010-4fb9-56f3-08dd8235fab1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NDNmVjlwTVV3VFQ1dmpMeHRaYW9aaWJpOVNwT1Jrc0pwM2lNZ1dML3RhdTVF?=
 =?utf-8?B?ZitoTmZlcUVyL3VFRlBWVVZQNkVQUFZoMmZLVDF1dXJWQUEwS0RHay9CLzlm?=
 =?utf-8?B?dUwveW9EWStWcXpudWJMM2ZtWHY4c0JvMzFKaVJjbWYzZ3NIajFNclNGMm1I?=
 =?utf-8?B?cEUyTTFGTTkwbzRiK0hWampVeFBLaXh6WFVYSUEwVzJ0Y0dTZTl4Zlp6eU9O?=
 =?utf-8?B?L1lmUTMvZysycVBJRldBOUFGYVZtbXZkeWZKM2NLTmxsOEI4Sm44MUtwWWhK?=
 =?utf-8?B?QnpoQU8zZlIrM3RzODZERXVrNzhrVnNwQzQ3bnpvMVBvR1BUTmRaQzdRTjJ3?=
 =?utf-8?B?RHFZYVF5NGVlZ3NKMG5BRjA0ZmhvZFIwUEMwSHpWRStSZ2tMR2R1MWtHdjNa?=
 =?utf-8?B?Z3ZTaFFpNkd1em80MXYwY2hqWWFQTXI5WFlyeUlyQ3BPSW1kVU9RLzhrVUtm?=
 =?utf-8?B?RWkyeVNleWFPQzBFM3NCekU0M3FWRFVHQk0rcE9OOUljL2xZZ0UrSGNFT3JR?=
 =?utf-8?B?Mzhra0ZRQWRsYkRDbU45Ly9ZazdGNGNndFpJRnNZVlFzV2NNV082WXZZYVdZ?=
 =?utf-8?B?MGVKTDVYZWdDVGZwKzhKaVFIc1lHK203OHRsTFcxY1Y5a29OaXB0MUdiOUdr?=
 =?utf-8?B?MXQ0YnpLRmd0eFN0YXF5RkVTUWFRdXVlMzJQcHQ0MW02NWxQQXVNMmxjQUFo?=
 =?utf-8?B?TlB5c2VZcU9hQ05CSC9YTHRMOGw4ZVlPTmJrVDgvcVc2WCs4dnVDM2dyZU1m?=
 =?utf-8?B?N3J0RkM0akRDOG02RjBIeVVrQ1o2RUFNTm1ONmZ5cjk2L0RqQzRPWGVSVzZY?=
 =?utf-8?B?YlNCTkJ5bmpiLzNaZHV2Skc1VEFGTFh6SEJ6bEhjSCttZGltaTN2U0ZyY2dX?=
 =?utf-8?B?TTlVaThSd1NjaVErR0lEckRsOUEyTEdhMFphTURTSm9LejNsSjBTVFc4THVJ?=
 =?utf-8?B?VkViYkQ1NElCbGhjUEg3YnhUWTdxZkhpUkVEM2lZUEdESHVJbmFYUHI1dHZ4?=
 =?utf-8?B?MTZMR2dpc3pPMHE5MkVZYzh6VzdMWEtDUGFaTGZMSUtISFErK0JYc3FmSytQ?=
 =?utf-8?B?NnZpSzJiQUd2MEhXNnFxZmxuZ0xtcmVZbVdPdGZXMDhBbDVsT0RSWGk5RDk4?=
 =?utf-8?B?dmd1NTN1QnV2UTZaMm8yZTNTQmtGcWVPNmJxeWF2aVVEMDhDUnk5RFUrMVBN?=
 =?utf-8?B?RFN0S0dqRXRRSHB6L1g2RXIvVVNQcTRBT2dET1c3UmNsR28xMzkyelBSL3Nl?=
 =?utf-8?B?dkdhZG1UZG5nbTZwaHNkZHhDbkhRMnpmOTlHUytVTE5udlJ1c3RqeURWT2xH?=
 =?utf-8?B?N0FBdkhQdEs2M2NaKzBob1h3V2w0dW1ESVZ5VjcvYnNlaUJYb2ZkeXNVdUoz?=
 =?utf-8?B?djIyT21JdWxDTjBtdlN1UGhqa0RFUk53U3l5KzM4TU1BVlg5d3NTNmJ1NnNU?=
 =?utf-8?B?UE1FeFFyMGxkZmlTY2RBd3FXb3pLbjJEeStUZGExelJYdHRXTFR3YjNVTU9j?=
 =?utf-8?B?VndCMlQ3d0R5Qk56aHR6cHF6UGxya0ROVVZnajl0Y0lsZThMMVZoMGc3M1lU?=
 =?utf-8?B?TmdJZWJyK2ZOQmZFdnlCUXc5SG1jekJIMjFkQ2lZdU4yMlRjRDFyTGJ0TCtK?=
 =?utf-8?B?UVkxRjhKN1pvMmpDeWxkRmxrV1REcUJrb2ZFYjdOUmY2UC9XSmpIOUREdVJE?=
 =?utf-8?B?TUVqMzVza3p1QWJCY0dhWGRRaTJVRkIyTy9xMGMweUJueERWZnZDTVQzMEIv?=
 =?utf-8?B?N2NMVG00L1dGL0RLUG1PYlBjVTdKUDhTd2tpNVhIUjdHeVpFd0lTZWJaakxj?=
 =?utf-8?B?YjdCbTlxNmVGUU9VWXJpdFFlTkdPcUMzeHZjQnByT3JkeXRiejdiSWIybjVv?=
 =?utf-8?B?dUZzY2ZpWGd1a2NtV3VCVW1IWXZQUDBmRUd4R2NHY1k0WFE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFg2VVp1d3BnNC82bTVNa2V4WGdFa3NJZnVuWjhMaHVGWVR3RWE1a21iOGNw?=
 =?utf-8?B?eS9zTkdkd2RZRnJ2UEZvVVVSMEJIK1JjUURYQTRiTEVyMXVBRnRDRHNtaW1F?=
 =?utf-8?B?OVZTY0Rrd1BNV3BBUFByZElDbkhUY0N2SUkxMjZNUzFDNGZtQWI4QnVJRzln?=
 =?utf-8?B?SW5rc2NOdUx4MXFTRklRNmVHZEx3YlBlUy9IM1FXSGN2SGFma3JST21UUzdj?=
 =?utf-8?B?cmg4cEJYenY2OTVEWGVrdGhWUDRMMzJnUzlmQVBTN0I1WDVFUW1oamtkaHZo?=
 =?utf-8?B?UVJLd1hIQlo2WnVPMC9CaUV6NSthZUhCaEpERHVOa25OY1h3Rjk3eittMUVp?=
 =?utf-8?B?azFHakppK013amdnNW55ZzhqVnJFbTFCWVYvNzdmaTJCQzZjRTk1UmNFS04x?=
 =?utf-8?B?K0U5VTNWcWQvZ0xIWGw0T003bGJSbkJ4ZnhWYVRhc09iRm9CNHQrUVpBVnVZ?=
 =?utf-8?B?OEdwU05aNnoxdk5TbXZhNTBQUjR5US9JQTY0Y0xlM002ZWpBbzlzZWpHSG8w?=
 =?utf-8?B?dlpyaTROZ3RQZExPWnpmdUtCMnh6aGFKd1lFRXN0U2JDcE4yK21sUms3MkVK?=
 =?utf-8?B?dzhDYlNKYkFNT0J4eE0vT2VZUklNZHJyL0lHeDVtMnY4OGtCeGtkbVp0Qk9D?=
 =?utf-8?B?YWVhR1JJMkFhanB1dEJtODhMczNvcWRnM1ZKV0RKZnBYRkxXVGszWkZYcWUv?=
 =?utf-8?B?MUlodytXWW9kZHh6eVdnRWpsdEZuUHEzRUIzMFJwVmhFczNqaHgrMWJ4bUw5?=
 =?utf-8?B?ZFFrMm1zUjlFaUhqaWVGNUloekVSQmtEdVRQeVc3VWF6NTh1cC9YclpMMjVE?=
 =?utf-8?B?OFBpcjQrVXNjUjBwTmVMRWZ2UXJCTDJWNVY4S1dCVlp0ZFBUdEhsQkhyRG1x?=
 =?utf-8?B?aFEza213RXNrZzQxZWVmZFF4SkxzS0J3aEpLamNRb1BNc2ZMbktNOWpYbU9W?=
 =?utf-8?B?YzRuS0ZrRjI1UjFjQVhDaDlPVVczcmZiQ2ZsVy8vbnYzaU5sbEZ6TUZpYTU0?=
 =?utf-8?B?WlJKVjhtcEs2bkNkR3RTb1I0S1ZpSEFEQzE4QUN5ZU9ydDdUZW9yN1BCNFIr?=
 =?utf-8?B?cEdnSUVoTW5wQnpTcXVkWXBjR3puamVKU00vSFJIYlFjRkY4eS8yT1gzbFJw?=
 =?utf-8?B?MXZPcWxLaER6WUhmbkl5SDgzaksrM25LbDFDMUl3QVltZ1RFKzYrSFFpNTVu?=
 =?utf-8?B?UTFpWFFxTE53ck5WdDY1SWZKNWlEdWt6dHFvblB0VCtkY0tjY1hKa2hvemJy?=
 =?utf-8?B?Uk5VMFNmK2c0Q0p5c0ozaW5pc2o1cmpwN3F2R29yK1NpczF0SVdNR1ozcW5t?=
 =?utf-8?B?NGNuOHJ0R3BadlFSb0xNRVpDSjlrS2swektlaFErZ213VXM0QS9xNy9hYlNX?=
 =?utf-8?B?UU5qRzNxZ1AyN3U5cVNaY2ZicVZtdmJ6dHBPVXdMdmpXenVWVzNlRjZqRUxC?=
 =?utf-8?B?dTY1WGtrdkdaZEJZSXZvNjc4TVZoVG8rMlR1VU9VOWRmaGlTTnBZV1pXc0pw?=
 =?utf-8?B?Q1hQVHNSTXUvRllsTGpvc0xFYUxWQWhlQlY5ajlFd3d0dXFSV2lMYzNUMUd5?=
 =?utf-8?B?dUVISzUvSzdSUk5NRks5T1dyTlFuRVBFR2gvbDFVTUN1ZGZEcVhJeFFqenNF?=
 =?utf-8?B?RU55d3U0Tkx6NkJlS2xlVEZMdWxDZXVtWUdSVEtFbHdkTVFnMVVXNkpGQ1Av?=
 =?utf-8?B?Z29Wb0Z0b3lpbkNCMHJnZWlrRHFLTHZXenYyUm5WanRtQWtQL0xOczlxTTc0?=
 =?utf-8?B?bE5hUXZzaWh1SWFHWXQzK0FjZXBwd1NoRThvYW9tTzBlV293YzRSTjQrNjZW?=
 =?utf-8?B?dmN6OEhuUVdUYTRhY1FGODR5Vm9pOER6YTJwYk01b2RQL3ZYVmRON2w2L0NX?=
 =?utf-8?B?bUJoVlhYUDFVRWhKQWVSTUdhenhhZjZvWndQeHlPYzdGdlZjR2wvMHB0Z200?=
 =?utf-8?B?OUFJRnh5aGh1NnU3ZkJYOWZ3d3ZkODZpWXphZjhzcGdlRkVFc2xnS1BQOGJC?=
 =?utf-8?B?L1haSktkREViWE05TkRNV282SGhtYjZDRUNuOVI0VkQ2dkJFVm5kZ0cxWG90?=
 =?utf-8?B?Rm1KRmpUYVBoOEQrZXhLSWtUd2p1MGpPdHlVV203dmhkcHdnRHNacTJNYVEz?=
 =?utf-8?B?SXFpUjltQ0pjSFB5d1ZGcTZsQUNxMXFsQlg1QXlMK09WaXZWS1ArTzdySjNG?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c436f9d0-6010-4fb9-56f3-08dd8235fab1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 07:10:51.0801 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hAX337mU0M62bqM7DQ+iEYPj4QqQ+oBX34cLehrbpRPbx4ih7x4MoR7dZcdWePp+0IRliVPkcSYI/S9eFNaqQWc82K+33AOuCBCMZ+GrpUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8183
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Initialise delayed vblank position for evasion logic.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vblank.c | 13 +++++++++----
>   1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 139fa5deba80..680013f00fc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -642,6 +642,14 @@ intel_pre_commit_crtc_state(struct intel_atomic_state *state,
>   	return pre_commit_crtc_state(old_crtc_state, new_crtc_state);
>   }
>   
> +static int vrr_vblank_start(const struct intel_crtc_state *crtc_state)
> +{
> +	if (intel_vrr_is_push_sent(crtc_state))
> +		return intel_vrr_vmin_vblank_start(crtc_state);
> +	else
> +		return intel_vrr_vmax_vblank_start(crtc_state);
> +}
> +
>   void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>   			     const struct intel_crtc_state *new_crtc_state,
>   			     struct intel_vblank_evade_ctx *evade)
> @@ -668,10 +676,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>   		drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
>   			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
>   
> -		if (intel_vrr_is_push_sent(crtc_state))
> -			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
> -		else
> -			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
> +		evade->vblank_start = vrr_vblank_start(crtc_state);
>   
>   		vblank_delay = intel_vrr_vblank_delay(crtc_state);
>   	} else {
