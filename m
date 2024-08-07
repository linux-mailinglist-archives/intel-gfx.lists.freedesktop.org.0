Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D30494B03F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 21:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21BBB10E131;
	Wed,  7 Aug 2024 19:03:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DREsCEfc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DDDB10E12D;
 Wed,  7 Aug 2024 19:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723057422; x=1754593422;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=MwWgZISpPF1Xn5dMmM67IW+ZMDT82V4PytxxnS4CAzE=;
 b=DREsCEfcCeUzyRh8WOVOm1IgHqwWFtkttpUMsIUOdt8yPnsJFlE4j4NN
 NqPZmqMthDcabl+zwSa/tOrMdD/BJBv4UUrbKXt8v6qamuob0bQAiaMSe
 +fojAd3J/16A/2SBxWde2ia5gj4z5V2eJP1XOr7sxnffpUBPPkg4+ezGm
 DDHLZJzIvZQfuyXQDe5AUMxKUn/BueQA8lRCOG3CYlAPH8CtJB65PMssA
 LPEFZgFY4tJ6d4a29i3N/b/v+6oBxy3pcY9fVxQHFZ3YTCGYWBPwW3zC2
 eNB8Kbo8MCZ3Q4NboO/bnBBpnVA560RhjUl/EdIwBBsUfjBIzdCffuLdy w==;
X-CSE-ConnectionGUID: LcEhUT/2Qlerdh9AE7d6ug==
X-CSE-MsgGUID: nlZx/pEJQpy1AoO65nmoDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="20816317"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="20816317"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 12:03:41 -0700
X-CSE-ConnectionGUID: hnLkpFvDTEmJK2dVmwtRvQ==
X-CSE-MsgGUID: hHs7o5o6SfyIjz1515ENKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="87617955"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 12:03:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 12:03:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 12:03:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 12:03:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ltu3sLevPUDZR4yWDihg2uSFpgAPgqATura5S7VB4MXQ/nbLnRoQGFDrihBCcAgZJo2PGE0RQzM05+1qcQ7JISdWTSbjnvuSNMAeLEowO2MXUF6mcNqfN59FjHerklJliw/xs67mqr/4FyeEqoCQhyE8yI3R/8ChpQpXUF9hLV6mmPz8XQt1//joxSqiV7fpFcju0mqgF0SbIkT2FExvRpKUzKJjQ5zmfRHKHJ43xqxvkM2zM9q6EncFrfOlswoncrE3cR8huj5A28tj9wtoahOSFtfywE3XlOzZSJDPDdRUVbsFdQQ6JOSUJsLUZpHRkyz0ypXCM0sdwUWe8JfRsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0JsyVBeHAFul5mk9jM6G68W1eoL8hsiJskMq/rfcPYc=;
 b=IUF/rFu3jTx2fqzZH/tmQBjylei4zoBsIxsVnSS2yuQhrW3qumdreUzPzkamzPQLq/mv2/nTb7IL6n+EVboco29nIAFpKWSsL7LqP5AE25r/KMlTxXLiv8ngFgbRjbDuMQ26pCdMP3usL1TlmZ75x67zXXAwhxXp/ok243wLhIlJebzn7OhLjM46jtsB40FwX3DCzacfD43V+JoeWx8J8UAjcUr91h8F0GLinNOiLiJHY/rrQu8uLuIbJisontofGsnEEHCCPXlB58I1mkyIq5swvnt5hxd/rQQ+4fQX3TqTOs1zjb1R2456ZS56aDC3c7fzqAbtNEm6qNaVqFsQ/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB6690.namprd11.prod.outlook.com (2603:10b6:303:1e8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Wed, 7 Aug
 2024 19:03:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 19:03:37 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <875xsd68nr.fsf@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <3e32cbf601f367e353637afc22dc84436aaaf06f.1722263308.git.jani.nikula@intel.com>
 <172253577624.5121.4958252043028255730@gjsousa-mobl2>
 <878qx9695l.fsf@intel.com> <875xsd68nr.fsf@intel.com>
Subject: Re: [PATCH 09/10] drm/i915/hdcp: migrate away from kdev_to_i915() in
 GSC messaging
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 7 Aug 2024 16:03:31 -0300
Message-ID: <172305741147.63948.9759163729781395075@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0031.namprd04.prod.outlook.com
 (2603:10b6:303:6a::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB6690:EE_
X-MS-Office365-Filtering-Correlation-Id: 53267229-6aba-43a1-d97f-08dcb713a468
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmxKRWMzOFd5cmpEaVkrQytxNEwyRHhHdzNQd2RrK0ZiZmVYK3doMDNhdnNC?=
 =?utf-8?B?RVlQUDYydlA3RTdnQnhPdVFPQWVJK2N3YjJ4bWFEODd2a29kODNzaXJNSkhy?=
 =?utf-8?B?eUF1c1NVRWN4QUxjNUpBekxUcnVLb09JVU8xU1pFMmVLdzNQcjBUNFlVcDcr?=
 =?utf-8?B?K3d1UmJlVHhFOGFrM0xGZDg2a1BqNEtuakd0VFVCWTJwL3dqK2diaU00RTRK?=
 =?utf-8?B?SWl1UkpweHVKWFBsc20vY3YzTEMrSm5qVW1jL3gvYUF3Y2dRbUVoS3R0d1A5?=
 =?utf-8?B?amViT1RYbDFPeElTYjhjV21TbDFTNE5HTy8zdEhzVzNjUUlua2VWeTA0RFEw?=
 =?utf-8?B?RVZ3Wk1YOXVmVlVMbG9yNi9MbTh6M01sUkF1MzFZWmlvNG1WZG5qOTl1OW01?=
 =?utf-8?B?YzdoWFljSm9yVjg1QnpwVGxRVDBEWkJPUFl5Sm1nQlRFeUJ6V1ZQZkpDU2NY?=
 =?utf-8?B?bXRYdE0wYzZhQTlwNHpJdVJKcGdjaTFNemlHT1lQL3Vacy9Fd3NSbGNISE56?=
 =?utf-8?B?QS9rbFhIaVc5YW1INnczSEpyTDhvOGptTHBNQWgzU3R1WnBFeXRncm9xUXVU?=
 =?utf-8?B?bTJYc0swTDVLRHRIaUhqUUtudzBZQ3I4UHV3WTFCREcrcGhtV0lhbm0wMWVt?=
 =?utf-8?B?eGlFNlNqMXhobWFMZnJRNG5pMUJwZkI0Yzl4Y1loc3NUUDdPc2JlYWpiOUNu?=
 =?utf-8?B?SHYvMVc2VHJBR1RVTjd1SXNJZFc2NVdSWkRON0lLMTI5TStKR2c3MUIyUHNq?=
 =?utf-8?B?K0l4VzVFczNXb1hPRzZpODNVWlFNdlZrWlYvcGlSSytOYmlCdW9ZemhXa0VN?=
 =?utf-8?B?SW1kckxJZXgyZ2Y0TTZTQTRxSHJEem92eG45SGhKTm5pSGZXRmhtWk95Wnor?=
 =?utf-8?B?VmcyZHp1YlJhQ2dKUk5ERGY5TkJKNW9ZRmJXa2pQa1ROdXBuSlVkUjBEZnBB?=
 =?utf-8?B?c08zek40dXkzaFY3aXZoMUx1VmpObVRRNlcyQnhabWJzb3AxTk5GdmFFODhN?=
 =?utf-8?B?TzZJT1AwNWdKQkptSTgzMi9hQWx5RzhWYzJxZ015MitaeUw4QXlVWklyaFZx?=
 =?utf-8?B?cUcrdmZtOEtVa0NhOUQ4NGtRNnZyWU1ieFZiaS9GTWVPZWJmUmVWK0dYWThl?=
 =?utf-8?B?T3VuR3hQQ2VMZGdJVEFWNXN4UDIzd25ZM0R4bmJSNmZiM0JKUzFNQjlDN2Zu?=
 =?utf-8?B?L1p6SnJvNmpzMmMwUW1VZFVYcUJOa3NFRHVrMHBWZnMzb2xoUXkzSjdWWWE1?=
 =?utf-8?B?Q2M1dDhjTmVEMXB2dzNMMTFRcXJvYURGY1RBQy9Sd3hzSjc4a2lSYVVXOWlU?=
 =?utf-8?B?RldOYi93U2J2Qkl5YmNjdUlXZDRjRVpjZ0t0Tm4xWTRpcDNFRVp4cTNXRVFQ?=
 =?utf-8?B?ZlBiaGc1OE8yVHgyeXV4S0IyNVN3a3hMVnIzdmpSTzB0N3NjZE5kZWVlYWgx?=
 =?utf-8?B?NmQxSzk1TWhxbURjak5KU1R6dGpxVXlYWk9jVHVYSUU4ZG1Pb2dpTmxvK2pQ?=
 =?utf-8?B?Yk52OXBINTdTWXFQZ0RwWjl1TXd4RmRhNGExT1ZqMW50bVdqUGpPTUE0Sm1o?=
 =?utf-8?B?bHFQVlhheUN0YWY3d0NJK21ucHp0UDdKU3Uya1FoMW8xRzFUcm41b2JDaVV4?=
 =?utf-8?B?RklQakFuQmtndE9WRXNrT0tBZlptRUNmVGJ0ZTM3dXlyODd2UEpVc0xTMm5E?=
 =?utf-8?B?dEYzNU1MTUVSVDloQm96MEtJc1NkR2ZHVVJhS2tDa3krcUE3bTNJcTBMWFY2?=
 =?utf-8?B?QWhiTlNiWklqNS94dUVtbzlVQXF6dnB3dllBWllXZWVTanlkYytHSU1xUkd3?=
 =?utf-8?B?a2VrcEQ3L2xEK3Y2NVh2bHpxcFRyUDQ2ZWVsSW11QkJpWDRMVDlLNUpIMWJH?=
 =?utf-8?B?YWJZM1pDZUhGS2NhVklMV29UbkFNSEtlWEp1MTNFcVRTNkE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXcxeUtTWFQzSytBSjlqWjhLQ09PRXlaMk5QNFoyQ3pOSXJUNDVKNTAyalNq?=
 =?utf-8?B?RUhSK2VSTjNSbmtpempPRkluNzZBcTRiajR3TWNPSktXd1V3UjAycjVlN01m?=
 =?utf-8?B?TGVoZUVGR3UzSUhUOS9lWVAyUGh5cFprTzRMSkR5MzU5Yk5pNFM1amx5TWIx?=
 =?utf-8?B?a21zV1duVTR3eGlsa3p5TldQSUZ3bVVsbEhMajNuRWx5c05JT0JlTC91Q3dh?=
 =?utf-8?B?UUM4WFhFOWFSR0t6RnRXN2owZ2xpNlFJRXhWek5wamJSVk9SOE42eEVyRUlP?=
 =?utf-8?B?ZTE3aVcrOXowNXdkMUxzYjY5WHI4ejk1QVRVWE44bWxmc3J0TnFkdzRmQ1JT?=
 =?utf-8?B?SEkrVlliZlpLWGNIR1BwVmovVUhjYkkzRC9XNHY3R1dyeGE0S3hyMGZuT2pq?=
 =?utf-8?B?aGRaaXFMUnhYMTQzWEdXY2U0VU1iLzNUTFRnL1VOYVRhQmM0YTFlNWk1UFdN?=
 =?utf-8?B?RGVaSXVGaVVDdERjNlFSa2VGM2hoM010anM0NDNoalpCcHFpSEg2TnIvR2hv?=
 =?utf-8?B?UjJiZFgvUk9Kb1k5MC9rZXdKa01vSFFEMGFqdFV1cStxRFVCc1N6R21lVU9X?=
 =?utf-8?B?VmtmOUM3MzF3SDZnSnpkdVZRUko5d1dmNWQrTytKenF4L1FrcmxXVEpxMHox?=
 =?utf-8?B?M3RuY0FMZ0hOdHFFdysrajllSmhkQy8vTHZTRXFDSWQ2cVhwaU4xcVlseUdD?=
 =?utf-8?B?UXVXbUtEZE1wMDZOanovaEREL0FIZmRQSnVwV09mTHBSY3ZMd1ZrWnlDN3R1?=
 =?utf-8?B?cU5CMFFFRTBaM2d2cVZLcjlHSGM3eGJwU3JBa1FLdlJVdWhoaThlQU8va0JQ?=
 =?utf-8?B?eWRJd2ZHVDQ0c2JYR2RVbW5yTXNXVTY0Qm1YMlRpNit3VndnUStIdXZEcGI3?=
 =?utf-8?B?eTBCdkVvR25KSE9rWXJvNDZpU3ZkWWQ0TWpGcnFNaElZZ21FT0g0WE1ISkhI?=
 =?utf-8?B?ZVBHVWpIVysyNngzWndiRGZQcWhRUkNwNGRpT0FWSlZIQnF4MjJRdkZxalho?=
 =?utf-8?B?SUhpK2gwM0RYejFLaWVSNlkweGZLVklaRGlESGd2VDFtVVl3RzNYREdJUEJW?=
 =?utf-8?B?UC9tT0txVXhKelJ1SkdENEZYWnliZHU4bVVZNnR0RkVWUWx4OFRiSVpSNzRP?=
 =?utf-8?B?NEUxaVJWcm82SExWNTV4ZFpNWGkraFMxQk5iRTBIUzZkSzV5SE5mYVhRd2w2?=
 =?utf-8?B?dkl4VlcxdS9yaTVwSWdXbXI3SElkMXAyTWRDd2RWcEMzcTJBYUpubXpUNkpr?=
 =?utf-8?B?VXMvaWQvQjgvRmtVMTRBRldnVkhGVUZ5N0trT0FSUWt1d08rN3pXYUhSOUZp?=
 =?utf-8?B?dlBPTUVHN0duVzFLbXUyUlduT1AxOERGNktFVU5WM2x4aXM4NWlTSzNuVmhH?=
 =?utf-8?B?YUZrTjJIb1g0TGNzSE12OVp0UVNkYWlDY3dyenJkUVJ2Q1Q1U0N5QU1KZmdr?=
 =?utf-8?B?aGYzd1UzbTVWS2JzeG5iL2UvU3FPcERoOTZXa0wvbUNMaWhRRVYzcE8yaXk0?=
 =?utf-8?B?RndrWTYwZ3FSaURCekYrT09SUTViMVVWUUxNbDRzWVF6SGl1Y2FnUWs5TWVm?=
 =?utf-8?B?UllKRk1xeEg3YU1WeXU0TDM0UmgyTEZ3eGZEZ044MkVBdkU0MDFTUU90dW9a?=
 =?utf-8?B?VEZBR2JTMy9VdWx6UjNLNzB6RTZBSlBFN1BxaU4reFBUWXVXdHp5Um8xaUQw?=
 =?utf-8?B?MjcwK1Bhc2RRS0hISDNxZDh2YlJXRjlXS2hweStXUUFMM21lZFBFa2dhK0FW?=
 =?utf-8?B?aWtrVC83ZEF5d2U5aFVIOGI0TmhXd25GUG1SVXl0NzhvakpXNmc0UlExL0pR?=
 =?utf-8?B?V1lweERGbEFibXMxQkpLa0RlRnZoNVI0UTVBdEtnVGFXU21RaXdSeVJVT0wv?=
 =?utf-8?B?Qk9yeDNZUGx0Tmw5enAvVGgwNmZKOTF0WEhuR0dYT0pqNzlWdUZxQWJPTUsy?=
 =?utf-8?B?ZE9aOHRsWWVLWDY4NGpGaklINEFzdUl5MTdLUFZVbjFyQjQwbUJPa0pHcWJS?=
 =?utf-8?B?d1ZVMTlKR25DZ2hxR3hzR1VmSDJJY0tJZGs5Z3FOWm5aZCtQeWdSNW9KWG05?=
 =?utf-8?B?R3BaQTZQU3pwalBBVVc0RjVITzc1bnpEM2JncnFTck5YVjVyOXpKRklMbUcw?=
 =?utf-8?B?WDI5UFJRUFRqNzNpeGJCMEdRSU40blJ6MHQ2VGUrbzhPTXFMWEN6NnRjUXlK?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53267229-6aba-43a1-d97f-08dcb713a468
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2024 19:03:37.3799 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rRZxpD/TM3lajlx0PaL0RLuT+MBCVsyjhyL3dOcjTVlplqm1ydyqBAvlwpKo+SHPoXYTXxCs7OhrlTiRGMsB0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6690
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

Quoting Jani Nikula (2024-08-06 11:14:00-03:00)
>On Tue, 06 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> On Thu, 01 Aug 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> Quoting Jani Nikula (2024-07-29 11:30:10-03:00)
>>>>Use to_intel_display() instead of kdev_to_i915() in the HDCP component
>>>>API hooks. Avoid further drive-by changes at this point, and just
>>>>convert the display pointer to i915, and leave the struct intel_display
>>>>conversion for later.
>>>>
>>>>The NULL error checking in the hooks make this a bit cumbersome. I'm no=
t
>>>>actually sure they're really required, but don't go down that rabbit
>>>>hole just now.
>>>>
>>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>---
>>>> .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
>>>> 1 file changed, 45 insertions(+), 22 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/dr=
ivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>>>>index 6548e71b4c49..35bdb532bbb3 100644
>>>>--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>>>>+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>>>>@@ -7,6 +7,7 @@
>>>> #include <drm/intel/i915_hdcp_interface.h>
>>>>=20
>>>> #include "i915_drv.h"
>>>>+#include "intel_display_types.h"
>>>> #include "intel_hdcp_gsc_message.h"
>>>>=20
>>>> int
>>>>@@ -15,17 +16,19 @@ intel_hdcp_gsc_initiate_session(struct device *dev,=
 struct hdcp_port_data *data,
>>>> {
>>>>         struct wired_cmd_initiate_hdcp2_session_in session_init_in =3D=
 {};
>>>>         struct wired_cmd_initiate_hdcp2_session_out session_init_out =
=3D {};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>=20
>>>>         if (!dev || !data || !ake_data)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>
>>> Hm... I'm afraid that wouldn't really work if drvdata was NULL, would
>>> it?
>>>
>>> With a NULL drvdata, I believe we would probably get a non-zero offset
>>> here.
>>
>> Right, good catch. Not sure I want to add that check to everything in
>> to_intel_display() macro, because in most cases the passed in value
>> can't be NULL. Driver data is a bit different, though I don't think it
>> should really be NULL either.
>
>Decided to fix this in __drm_device_to_intel_display() like this:
>
> #define __drm_device_to_intel_display(p) \
>-       (&to_i915(p)->display)
>+       ((p) ? &to_i915(p)->display : NULL)
>
>That'll have to change anyway when we can no longer use struct
>drm_i915_private when going from drm_device to intel_display.

Yep, seems like a reasonable approach.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>
>> BR,
>> Jani.
>>
>>
>>
>>>
>>> --
>>> Gustavo Sousa
>>>
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         session_init_in.header.api_version =3D HDCP_API_VERSION;
>>>>         session_init_in.header.command_id =3D WIRED_INITIATE_HDCP2_SES=
SION;
>>>>@@ -72,17 +75,19 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(stru=
ct device *dev,
>>>> {
>>>>         struct wired_cmd_verify_receiver_cert_in verify_rxcert_in =3D =
{};
>>>>         struct wired_cmd_verify_receiver_cert_out verify_rxcert_out =
=3D {};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>=20
>>>>         if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !=
msg_sz)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
>>>>         verify_rxcert_in.header.command_id =3D WIRED_VERIFY_RECEIVER_C=
ERT;
>>>>@@ -135,17 +140,19 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, =
struct hdcp_port_data *data,
>>>> {
>>>>         struct wired_cmd_ake_send_hprime_in send_hprime_in =3D {};
>>>>         struct wired_cmd_ake_send_hprime_out send_hprime_out =3D {};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>=20
>>>>         if (!dev || !data || !rx_hprime)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         send_hprime_in.header.api_version =3D HDCP_API_VERSION;
>>>>         send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
>>>>@@ -183,17 +190,19 @@ intel_hdcp_gsc_store_pairing_info(struct device *=
dev, struct hdcp_port_data *dat
>>>> {
>>>>         struct wired_cmd_ake_send_pairing_info_in pairing_info_in =3D =
{};
>>>>         struct wired_cmd_ake_send_pairing_info_out pairing_info_out =
=3D {};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>=20
>>>>         if (!dev || !data || !pairing_info)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         pairing_info_in.header.api_version =3D HDCP_API_VERSION;
>>>>         pairing_info_in.header.command_id =3D WIRED_AKE_SEND_PAIRING_I=
NFO;
>>>>@@ -234,17 +243,19 @@ intel_hdcp_gsc_initiate_locality_check(struct dev=
ice *dev,
>>>> {
>>>>         struct wired_cmd_init_locality_check_in lc_init_in =3D {};
>>>>         struct wired_cmd_init_locality_check_out lc_init_out =3D {};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>=20
>>>>         if (!dev || !data || !lc_init_data)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         lc_init_in.header.api_version =3D HDCP_API_VERSION;
>>>>         lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
>>>>@@ -280,17 +291,19 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, =
struct hdcp_port_data *data,
>>>> {
>>>>         struct wired_cmd_validate_locality_in verify_lprime_in =3D {};
>>>>         struct wired_cmd_validate_locality_out verify_lprime_out =3D {=
};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>=20
>>>>         if (!dev || !data || !rx_lprime)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
>>>>         verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY=
;
>>>>@@ -330,17 +343,19 @@ int intel_hdcp_gsc_get_session_key(struct device =
*dev,
>>>> {
>>>>         struct wired_cmd_get_session_key_in get_skey_in =3D {};
>>>>         struct wired_cmd_get_session_key_out get_skey_out =3D {};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>=20
>>>>         if (!dev || !data || !ske_data)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         get_skey_in.header.api_version =3D HDCP_API_VERSION;
>>>>         get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY;
>>>>@@ -382,17 +397,19 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(st=
ruct device *dev,
>>>> {
>>>>         struct wired_cmd_verify_repeater_in verify_repeater_in =3D {};
>>>>         struct wired_cmd_verify_repeater_out verify_repeater_out =3D {=
};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>=20
>>>>         if (!dev || !rep_topology || !rep_send_ack || !data)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
>>>>         verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER=
;
>>>>@@ -442,6 +459,7 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev=
,
>>>> {
>>>>         struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in=
;
>>>>         struct wired_cmd_repeater_auth_stream_req_out verify_mprime_ou=
t =3D {};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>         size_t cmd_size;
>>>>@@ -449,11 +467,12 @@ int intel_hdcp_gsc_verify_mprime(struct device *d=
ev,
>>>>         if (!dev || !stream_ready || !data)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         cmd_size =3D struct_size(verify_mprime_in, streams, data->k);
>>>>         if (cmd_size =3D=3D SIZE_MAX)
>>>>@@ -504,17 +523,19 @@ int intel_hdcp_gsc_enable_authentication(struct d=
evice *dev,
>>>> {
>>>>         struct wired_cmd_enable_auth_in enable_auth_in =3D {};
>>>>         struct wired_cmd_enable_auth_out enable_auth_out =3D {};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>=20
>>>>         if (!dev || !data)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         enable_auth_in.header.api_version =3D HDCP_API_VERSION;
>>>>         enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH;
>>>>@@ -549,17 +570,19 @@ intel_hdcp_gsc_close_session(struct device *dev, =
struct hdcp_port_data *data)
>>>> {
>>>>         struct wired_cmd_close_session_in session_close_in =3D {};
>>>>         struct wired_cmd_close_session_out session_close_out =3D {};
>>>>+        struct intel_display *display;
>>>>         struct drm_i915_private *i915;
>>>>         ssize_t byte;
>>>>=20
>>>>         if (!dev || !data)
>>>>                 return -EINVAL;
>>>>=20
>>>>-        i915 =3D kdev_to_i915(dev);
>>>>-        if (!i915) {
>>>>+        display =3D to_intel_display(dev);
>>>>+        if (!display) {
>>>>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>>>>                 return -ENODEV;
>>>>         }
>>>>+        i915 =3D to_i915(display->drm);
>>>>=20
>>>>         session_close_in.header.api_version =3D HDCP_API_VERSION;
>>>>         session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
>>>>--=20
>>>>2.39.2
>>>>
>
>--=20
>Jani Nikula, Intel
