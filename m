Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C304A85586
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 09:34:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095BF10EB1F;
	Fri, 11 Apr 2025 07:34:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IT/AFuWM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D80BD10EB1F;
 Fri, 11 Apr 2025 07:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744356846; x=1775892846;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RdzpJSb72UkWH8umtJ9qZN3sKbsK0L9dPRYMcanlzuo=;
 b=IT/AFuWMYFaFsuJLRCO1RcQRzUrmHIFqsBwS0LUwJdjqfJhRGkH9Q9gT
 8D9GR20N0lyfMqLB5OrpH7C3n2l/Y2SmYrJpaBXahCPojgXj/d1HfUFJJ
 EpUnH0C8klZqXyLk5rB3lun7B0FblsoBxWlcy5/VMEmi7klak/KDqafSm
 /QBJXzek94riNLI8GiDtzQ3ex+I5TimecCOrvJ+YvRt0kGd10D4SJmBoZ
 xHdLarxPwbOV30Jm3b60lgOmS+/7k5lgs7I6pmCQ4CYM5egvt6d5fnCB4
 wfDORPlrRFCT0RuAi3cJZbMwauPZ1ZC6pIk9xO1q6PWE/Lf4l/JkCFDTV g==;
X-CSE-ConnectionGUID: w5JO7M37QRmlWkBQlBg47Q==
X-CSE-MsgGUID: 7oDRM3QQT5ewGyBiIlr1jA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="33513973"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="33513973"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 00:34:05 -0700
X-CSE-ConnectionGUID: kOA6Q6ASQvGQ+NPdRDbgfQ==
X-CSE-MsgGUID: 9HcozqpkQmqVoE8yZ2O+Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="152311292"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 00:34:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 00:34:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 00:34:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 00:34:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tvyd86AtNc6HncsVV16ncHdLbcrFangr+KVgs7sj7bI4mnjaBq9CS0fNcLuqeidYLpbgVK8Lf7pOBCAmoFphNEgy6VlErvstrgkaa9e+DAN6vMsdeunlJPi4n86eC36Ue4cfBHmqDhHG52NNn5QdZisFgKYhZPigJcnswS+13Pj/72IvvfEx8AKWhYgxduzqOnTNyXMGkHZzgXu2y3LcmI8iT1C6jvxQ48tB9MbMbTYTk/W93pyrj87vH1cK5a2wSISGcAxuSsmKfnq5meInxJYeQGWuBiKL+v5s7Ls1G5kav1+iC7G0dOCbX1tCz2uRcJgET9BKuqFsk4075XWCww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uMKkGXVdJ5CHzUHhp4Wvyk58I6LLI1yk8pzrNWiXHhw=;
 b=iVnp6mPXzd6Hm8MsPMVc1ULjSv/237UhJL0xZqvCNZ+4TbpMQHk5H5WN1KLo+HceYnq5Ox4SiEq+/m2+PphQHUyuQcO58mKnDn+Qp/OwTNrjllJyQydISPGIOMMk6ft0n60og2enYMOgdCXZB2oDOf8eM+1WlN7eOTulA7TrWqKYrdsUIMEmk3qe2pQUoRKuk8daNjIyxOAt7lb7ABiD7/RI3qD81VNpmCYhivTx8XogllxhZ3o5AovMheA11K+t/qSiXLJOAdqiVTTRkVmstaddAlO875/cl2bu0d8+AeUtcwOW/W/I22LiLaQarIIznVwbmlAadqyFdjOfH2wvlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7955.namprd11.prod.outlook.com (2603:10b6:208:3dd::6)
 by MN2PR11MB4645.namprd11.prod.outlook.com (2603:10b6:208:269::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.25; Fri, 11 Apr
 2025 07:34:02 +0000
Received: from IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::7265:46ae:19a8:b31d]) by IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::7265:46ae:19a8:b31d%6]) with mapi id 15.20.8606.033; Fri, 11 Apr 2025
 07:34:02 +0000
Message-ID: <64454a6f-14f0-477b-904c-2637f78ff057@intel.com>
Date: Fri, 11 Apr 2025 13:03:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t 2/2] tests/xe_pmu: Add frequency test
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Kamil Konieczny <kamil.konieczny@linux.intel.com>
References: <20250410013314.613109-1-vinay.belgaumkar@intel.com>
 <20250410013314.613109-3-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20250410013314.613109-3-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::7) To IA0PR11MB7955.namprd11.prod.outlook.com
 (2603:10b6:208:3dd::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7955:EE_|MN2PR11MB4645:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b4acddd-bf35-4246-ea11-08dd78cb3ad5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Yk9Gb2JYMVkrUWRwSE9SYzdjOFRYOERWbTBMNlhvUmZ0OUk0T1RFR3YyeS9G?=
 =?utf-8?B?eHpzU3JidjBLbmh5bHZzeHVZbTdndTNqWWR1ZXE2MVhSQTJwMmFTVGQyQnIw?=
 =?utf-8?B?clhXT3pJZkU2WmZ1UERvT0t6UVluUVF0TEljelNKUkkxVnlVMnZCcFM3MTVH?=
 =?utf-8?B?WlUvaUxFUUhVcWt1ZlZhZHRadENoMENGaDk1YXc0RjNlbHRwbW9GU0tyRnZG?=
 =?utf-8?B?d01MOW5YbG9CQnJlREdGajFzMlJCUkJJZ2pjQkdaNVByMHdmOWFUeVVBVlNO?=
 =?utf-8?B?TVo4QW95QnFUeXhkVlVZeExGcmRScllycjltUjBPbmthcjNZSm9PWklCN2Vp?=
 =?utf-8?B?L3lnUW5mV001a2E3cHdGOVQyLzhiR0dBK25pZGlQMFlvdmlTbHp1QXJGWkYy?=
 =?utf-8?B?MWpyRCtvTDZ5bXlxSzNjbEVJYUsrWmdleHIvemZweGYrWW9pdWljVThQV0J3?=
 =?utf-8?B?Y1J4a1NydmVyTmFOQTg3cCtKdG94aE1LTU14RFkrMEMyZjVPcE1xN0hTOG15?=
 =?utf-8?B?cmpMNlpHWUJRMEVybmU2U3JDVnFiNi9sWFZlR1lyQURnNzhmUGZod3pMQ0xM?=
 =?utf-8?B?QVV0c29UVEs3TzFJVTdVU0VzaEZmMU1XcXNma0xkSEFkcTF1WEF3VjFZR3hm?=
 =?utf-8?B?Q0NDWVFxYzdFWWFkeEVycW4yT1VNc3FRWWMzSk1pRVRDeUhxSnl5V2VvSUpv?=
 =?utf-8?B?dS9SUExBQ1MzSDdUazAvR3dLWWtaTzJXejBodFFiT3kzQ1pkOWRKakI3MkNT?=
 =?utf-8?B?eUN2NXpRWnh6RzI4V0tnclRIL29ITHBuaGVVODBuQmRYZU5QWm1kRkFRK2Rl?=
 =?utf-8?B?NWxnT2UyVk5rVGY0MUEwbkhnMjVzeHpMbTRzNHBIdVJmeEp3WEZ5M0gyZFVY?=
 =?utf-8?B?d3FKMFY4N3VFb1pGKzhpTi96VUdBKzFSdE9ka0JMZm1zTnJLU0paelo0eDBy?=
 =?utf-8?B?eU9uZWMwbVp6eU13R1Q2ZnNyaEFjM2tPQmlLdjlqdkZTQTZGYUVSK0NockNl?=
 =?utf-8?B?b2hVMzlZUFkyS29xMVU4RnN3WHZCd0NqYjNQaVV5RUpwZkFKR005WGx0YlFm?=
 =?utf-8?B?aDRudng3cmxoSm5ESW8rT0RJSDdiUHY0VFpXcFhQUTgrSTIvRG9TVlJ3ZmlW?=
 =?utf-8?B?ODB5cjN4UXN4ZFNnS29yTVVUUldwUkV3Uk8zeU5DVlcrZnF4Qm9VeVJ6UkdG?=
 =?utf-8?B?N0dPWU1PZjMwTkJHaXZSQTRMVElKWC8yOXNiZUV6T0tESGQ4OXJMZTd3R1FS?=
 =?utf-8?B?R1V2c3lVbXk4R1JBSmU1ck9JL05WUjNLNkFzUDVJQU1LZVNTbThRZDFBUjlN?=
 =?utf-8?B?MVVma2pOV1V4TGtKazV6SnlybGV0cTRoRi9jWjVwUkl3eWNNVFNrZzMxVVRa?=
 =?utf-8?B?U0lFTnEvVXhieHk1Wjk1Mk5EZ01YSWNBeVZsSW8weGtFdktRMXBFZGRHbW9Y?=
 =?utf-8?B?TVRYcGFJbG8wU1FkYUhqdGlHSVdXbnNGNXhEMFhqQ1BvZkxtQTlGYVRyVWZI?=
 =?utf-8?B?N3BCbjNEdVJ2emhUZUgvZEYvNTg3UEpGWm9hUUR6cnRLZ0pXVEU5VmVYU2Vu?=
 =?utf-8?B?Y0l2ajV5SldWaGVQUlBHZVBOd3hVQVlFbEFCRStIaXlEeklJd0M4YWNvRzBD?=
 =?utf-8?B?bjhCSUJMU0FDMnRCRHhLeXJYZUR2WTJWYldjMHc1bTN5ZlpBSG94Vk1UdzVw?=
 =?utf-8?B?by9sWGg4dml4TFRFYy9adkdLb1FmUmJEbkxwSXdmSkFnd0VSbUprNEJzVmg1?=
 =?utf-8?B?cmxSNG1CbFlyc3UwMjZFNURxZU1KQVU5K2xSQWtveUZaYVZWT3JGYURtcDcx?=
 =?utf-8?B?ZUpkNEFNU0lHSkZEdnFqTVFFZnd2ajRJdXFBaG9vQm1TWEU0MlE2cnRkUlRM?=
 =?utf-8?B?VGNqQ1lUZkN6TjJiSkRSQWFiT1NwdG11UjhJUlcrM3NsTzVUK2drSHRzWmRv?=
 =?utf-8?Q?XYwTSejkBto=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7955.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWhYQmhKV2h4RTRBY080N2FIbFNKV1RjOVhBNHlVZXVLelVuaXdRdGUzTUdP?=
 =?utf-8?B?TEttbm1Jd3E3ai9xc3krKzFhT1dFdFljT041VWJ3cFB3dVVzbFRsVWZEMlkr?=
 =?utf-8?B?OExuRWx5ektHc2lJS2pMM2lZTzVWb3N5ZU4xUkZJTGZNelNLS0pQNlJwa1Zz?=
 =?utf-8?B?b3pMa0tUWnpUYUF4dWp5TFBYNUhQYUE2YjlEZUVHT3lDRHNYRlVYSlJPWkdr?=
 =?utf-8?B?TCttVHNvTXVUU3pxSXZyVkIrTDhOUy9aYTA1dFdWZnBYR0tZOEh3cWJxb1FS?=
 =?utf-8?B?NVJMZEphTC9IUzFLM1k5S3YyRVErWk9rOW5CWU8rVlZJT0V4VWp6NzdEaC9I?=
 =?utf-8?B?ai9scDNvSkpBbklDa0lmdUlrREtXbEJVaGVPSmQ4MlVsZGV2T1BFbjU4UDhT?=
 =?utf-8?B?V3Z5cHQ1VjI4QWp3VHNyay9yUDlRaUFrMzlhR29vUEtTY09pQmdWdTg0NE92?=
 =?utf-8?B?a0xjQTY5MkhBS29DVlZxVk8ycndHRzIwNUQ5MitnK0FNOUF6UWhPTXFya2tF?=
 =?utf-8?B?M3JIQ0ljc2pqZURiQ2s3d2JUOVQwNzNOT0UwaXpnWDVHUXk3L2xaT1hvbUVI?=
 =?utf-8?B?OTA3TzJzdjZZRFVwYk9TUDMzVk5PQmtmYitHZlY2QUJrU0NYRTFnY0RyTVhQ?=
 =?utf-8?B?MW9seW5ybWc5Z1FZWFo4RGJmbnBTNGJSb1FMNTAzN2xQMmg0cHBacHVsaCtM?=
 =?utf-8?B?WU5BamhTQzU4QkhuQndKUTF1SE9oM2I0bi9PV0NnNnQ5SzhXUENYTEJ4WXdr?=
 =?utf-8?B?U25ZcHdwc3FxUnpNY2RpSXVBZTVGaGZ1S1ExZUpheGNiYnpxeGQzZ2V5TUdJ?=
 =?utf-8?B?NmNnRHZGeXhZajJpK1hBZmYvVnBONldJd1JFWklWNmtVekowNG4yT2tFQXNZ?=
 =?utf-8?B?WWZxTHBQQ0laQWFraDlWekxDaG1mdDFjSHZYelkxS3hwMGlsbUFDK0N5NXNn?=
 =?utf-8?B?VHdKaTA2by9Xa0ljaVZ3NTl0YVRMWGlhM0lmSjB5ZGFlU0I5MWMvTVE5K0o0?=
 =?utf-8?B?Y2MyMFhkSHVNQ3hDVlNqUmxsandWOElxTmlMSkdCWFVlK29WcXFFL3VqZE5T?=
 =?utf-8?B?aG5RVWIzSVFZbU5nUFZCdTF3aGwwN2s3VG9lc1FhQ3p3Rjh0dlF6Mk5GU3Nz?=
 =?utf-8?B?OVV5WmQ2dENud3VPTXBtUmI5czhJWlhqcmNQdjVFd21XNXRnR1BRc1paMkZD?=
 =?utf-8?B?UlFQangzU3pQZzFib2xlWGE5ZzM3aVh4bmJHc1lUcWdBTEhBUnNKNUp0Q2Jv?=
 =?utf-8?B?WVJmb2xJVHNUdmtMS3lZd21odzB0QlhDMVMrTGVvbHp0SE11UHF0QTIrQzFp?=
 =?utf-8?B?dUJrVzdlYmVtd0dsaVNCMytmTlJKNW9KdHB1RmVwUERNLytjMXlXWXh3eUZH?=
 =?utf-8?B?VC95QXF6eEkydWovbDd6Y2EwYjRZMVJscVpUQ3N2b0VzUndMdDVNcWhacnBV?=
 =?utf-8?B?R0w3RXZqcUc4ZjhlYVpnUTNYQ1dpT1J2RnVVd05QTk5TVHp0eXhGazdLVjRI?=
 =?utf-8?B?ZjNMR2plL2hCYlNTbnAwQlNqcGJpTnR6QS95V2RwUlYxOWU0MG0rZ1hFS00z?=
 =?utf-8?B?aGxvOVhhUjB0Z1RGU3R6enZieWZrNm5EQ1U1cG9KYjFDVFVNejdiZ2VoRG54?=
 =?utf-8?B?ckUyL3ZIVGMzQjhUYUNYS25lM1hVZmFHaTliUEFyTFM5aitKK1RBdVJja3k2?=
 =?utf-8?B?c3Q3Nlpmbk14NTFKZDcvd1JLWksyVlNSQVBnUHEvLzRlWGQ1ODI5eXVkT1Fv?=
 =?utf-8?B?UjY2aHVYdU1ncEJIYWp3M2lNb2pNSEZNa0xCSkwwb2N0d3VvbFNZMldrLzdj?=
 =?utf-8?B?N2NtNHJubjNUb3dLQUxPcnRCVlhSRWNRS2JVdlZmclZLMXhtaUVBYStVbHVC?=
 =?utf-8?B?b2RncWV2bENQbG9VZDJNSTRxVHhYak1xZCtpc3NuZXFpckYyQUovSW9WWGlR?=
 =?utf-8?B?LzNqWDBzMi9oSVFvNS96V2IwbEtPM0lZdTl0S3VKZ2ozaEp1U3ZNL1FPK2ph?=
 =?utf-8?B?SE1BL1N2Si9sOFk1eldZSk1KNHVHQUxNSnZFMDZ6enlSN2lMalpWL24rZ3Er?=
 =?utf-8?B?c1NXUkVMNW4xU210T2s3N0t0UGlsejNrb1MwTmduL2hjVjRHRThGczZBa0pa?=
 =?utf-8?Q?S6jclLIUhuoVDCfmTUuEnmqGx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b4acddd-bf35-4246-ea11-08dd78cb3ad5
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7955.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 07:34:02.0573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jGGaRRgfUKRFdbswBftokHA/1gyG/DsFX8bV5YD7K+zWzDC5u7+WDBixxL9fh8GCym62+Pa7vUhMBXgoARxIkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4645
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

Hi Vinay

On 4/10/2025 7:03 AM, Vinay Belgaumkar wrote:
> Add a basic test that uses PMU to read GT actual and requested
> frequencies while running a workload.
> 
> v2: Rebase and comments (Riana)
> v3: Address review comments (Kamil and Riana)
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Riana Tauro <riana.tauro@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/intel/xe_pmu.c | 147 +++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 147 insertions(+)
> 
> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
> index 175bbf374..589c7cbde 100644
> --- a/tests/intel/xe_pmu.c
> +++ b/tests/intel/xe_pmu.c
> @@ -376,6 +376,94 @@ static void test_gt_c6_idle(int xe, unsigned int gt)
>   	close(pmu_fd);
>   }
>   
> +/**
> + * SUBTEST: gt-frequency
> + * Description: Validate we can collect accurate frequency PMU stats
> + *		while running a workload.
> + */
> +static void test_gt_frequency(int fd, struct drm_xe_engine_class_instance *eci)
> +{
> +	struct xe_cork *cork = NULL;
> +	uint64_t end[2], start[2];
> +	unsigned long config_rq_freq, config_act_freq;
> +	double min[2], max[2];
> +	uint32_t gt = eci->gt_id;
> +	uint32_t orig_min = xe_gt_get_freq(fd, eci->gt_id, "min");
> +	uint32_t orig_max = xe_gt_get_freq(fd, eci->gt_id, "max");
> +	uint32_t vm;
> +	int pmu_fd[2];
> +
> +	config_rq_freq = get_event_config(gt, NULL, "gt-requested-frequency");
> +	pmu_fd[0] = open_group(fd, config_rq_freq, -1);
> +
> +	config_act_freq = get_event_config(gt, NULL, "gt-actual-frequency");
> +	pmu_fd[1] = open_group(fd, config_act_freq, pmu_fd[0]);
> +
> +	vm = xe_vm_create(fd, 0, 0);
> +
> +	cork = xe_cork_create_opts(fd, eci, vm, 1, 1);
> +	xe_cork_sync_start(fd, cork);
> +
> +	/*
> +	 * Set GPU to min frequency and read PMU counters.
> +	 */
> +	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_min) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_min);
> +
> +	pmu_read_multi(pmu_fd[0], 2, start);
> +	usleep(SLEEP_DURATION * USEC_PER_SEC);
> +	pmu_read_multi(pmu_fd[0], 2, end);
> +
> +	min[0] = (end[0] - start[0]);
> +	min[1] = (end[1] - start[1]);
> +
> +	/*
> +	 * Set GPU to max frequency and read PMU counters.
> +	 */
> +	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_max) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_max);
> +	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_max) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_max);
> +
> +	pmu_read_multi(pmu_fd[0], 2, start);
> +	usleep(SLEEP_DURATION * USEC_PER_SEC);
> +	pmu_read_multi(pmu_fd[0], 2, end);
> +
> +	max[0] = (end[0] - start[0]);
> +	max[1] = (end[1] - start[1]);
> +
> +	xe_cork_sync_end(fd, cork);
> +
> +	/*
> +	 * Restore min/max.
> +	 */
> +	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_min) > 0);
> +	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_min);
> +
> +	igt_info("Minimum frequency: requested %.1f, actual %.1f\n",
> +		 min[0], min[1]);
> +	igt_info("Maximum frequency: requested %.1f, actual %.1f\n",
> +		 max[0], max[1]);
> +
> +	close(pmu_fd[0]);
> +	close(pmu_fd[1]);
> +
> +	if (cork)
> +		xe_cork_destroy(fd, cork);
> +
> +	xe_vm_destroy(fd, vm);
> +
> +	close(pmu_fd[0]);
> +	close(pmu_fd[1]);
> +
> +	assert_within_epsilon(min[0], orig_min, tolerance);
> +	/*
> +	 * On thermally throttled devices we cannot be sure maximum frequency
> +	 * can be reached so use larger tolerance downwards.
> +	 */
> +	assert_within_epsilon_up_down(max[0], orig_max, tolerance, 0.15f);
> +}
> +
>   static unsigned int enable_and_provision_vfs(int fd)
>   {
>   	unsigned int gt, num_vfs;
> @@ -427,6 +515,35 @@ static void disable_vfs(int fd)
>   		       "Failed to restore sriov_drivers_autoprobe value\n");
>   }
>   
> +static void stash_gt_freq(int fd, uint32_t **stash_min, uint32_t **stash_max)
> +{
> +	int num_gts, gt;
> +
> +	num_gts = xe_number_gt(fd);
> +
> +	*stash_min = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
> +	*stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
> +
> +	igt_skip_on(*stash_min == NULL || *stash_max == NULL);
> +
> +	xe_for_each_gt(fd, gt) {
> +		*stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
> +		*stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
> +	}
> +}
> +
> +static void restore_gt_freq(int fd, uint32_t *stash_min, uint32_t *stash_max)
> +{
> +	int gt;
> +
> +	xe_for_each_gt(fd, gt) {
> +		xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
> +		xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
> +	}
> +	free(stash_min);
> +	free(stash_max);
> +}
> +
>   igt_main
>   {
>   	int fd, gt;
> @@ -482,6 +599,36 @@ igt_main
>   			disable_vfs(fd);
>   	}
>   
> +	igt_subtest_group {
> +		bool has_freq0_node, needs_freq_restore = false;
> +		uint32_t *stash_min, *stash_max;
> +
> +		igt_fixture {
> +			has_freq0_node = xe_sysfs_gt_has_node(fd, 0, "freq0");
> +		}
> +
> +		igt_describe("Validate PMU GT freq measured is within the tolerance");
> +		igt_subtest_with_dynamic("gt-frequency") {
> +			igt_skip_on(!has_freq0_node);
> +			stash_gt_freq(fd, &stash_min, &stash_max);
> +			needs_freq_restore = true;
> +			xe_for_each_gt(fd, gt) {
Since it's one test, i thought it could be something like this, to avoid 
subtest group

	int orig_min = xe_gt_get_freq(fd, gt, "min");
	int orig_max = xe_gt_get_freq(fd, gt, "max");> +			 
igt_dynamic_f("gt%u", gt)
> +				xe_for_each_engine(fd, eci) {
> +					if (gt == eci->gt_id) {
> +						test_gt_frequency(fd, eci);
> +						break;
> +					}
> +				}
		xe_gt_set_freq(fd, gt, "max", orig_max);
		xe_gt_set_freq(fd, gt, "min", orig_min);

But if there are additional tests planned
Reviewed-by: Riana Tauro <riana.tauro@intel.com>>

> +			}
> +		}
> +
> +		igt_fixture {
> +			if (needs_freq_restore)
> +				restore_gt_freq(fd, stash_min, stash_max);
> +		}
> +	}
> +
>   	igt_fixture {
>   		close(fd);
>   	}

