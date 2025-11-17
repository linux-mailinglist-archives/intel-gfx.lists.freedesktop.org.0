Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61138C62BE1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 08:36:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA3510E2DE;
	Mon, 17 Nov 2025 07:36:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TfuyklHH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C43A510E2DE;
 Mon, 17 Nov 2025 07:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763364976; x=1794900976;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M9O0uvD4g2om4yiEPzgkkhJoo56EJ6etJmY2gpw3+xM=;
 b=TfuyklHH3242CnFaGo6Lm4TNxo2jNsMLZHLTUPN4wti78wLmGFrcEobq
 toPNeWnyckqW0X4pp0OqXPUOOAm59AdLDEHI4YgtupgwjcJ1ibWNKdG6I
 TiPsos06smeORgc5N79ODysNoxV7zoAKn38Y4B5q22KRt1gmhQJ7xZtOA
 eQuvwo5Lwueh4ykdbbdN4e/9CdKcJ/TGGOEzppz43VRIktLTx7cx0e2Mg
 E0y9hG3GmPqIbtBPSHtahxtRoIwWE+C9c068igL+lzTeUGrom2Fcd5oud
 TuyTeQ/cynzM7iuBIFngqKPYFaghy10l74n/+y9mXpA8YOX9TEYak8t92 w==;
X-CSE-ConnectionGUID: fdYaJnKpSJuqBxaf72Yn9A==
X-CSE-MsgGUID: 0GwmTQ5/R9urupat5wy/2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="67963170"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="67963170"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 23:36:15 -0800
X-CSE-ConnectionGUID: qCSe3BCRRoi0P410nMPuhg==
X-CSE-MsgGUID: YKdR8204SvOps7DIROwAOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190393991"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 23:36:15 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 23:36:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 16 Nov 2025 23:36:14 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 23:36:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A6UmG/nIUoKvWzmysT86TS/xzguQn9hGXjMdenqtCEOJE/WC1XOAE0ZHQquajB8puQ4FYKKyRoR+/Ju0SompokyLxidZ29x+RTj5H1VktPWD8u61QAmrEp6Ltixhr42W75J9zFPDUf2rkJdw++aJ74Uva1jiUCoAymk4K5YRgf68J9eEH6GvRu6jgiLxXa8EMK36VLRtLwZ7h1pDfuYb45bki8BqL9e2IbUDvponhsZ71ZciVoLgY9hQRbc3Q6Rk/HFnByb8j8rLRHrRvVD4TVd5QRnlLkn9p2zBSxxns0jgTVSz4EjdGIEt8Qle/B+DzFr9/dwrURAKk5EpijhVcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lsEJOPb7MSBMXBL2bWXjjFNVQEHCVUR4qCOyUaKdnbI=;
 b=V5E4J6gM0skYUvk1S0zFaR5WerlK2MUKLZMBVJN+qfSzseiHsB/4mXT/zY7OgWBZosC0hEOnyy4bSZG65xh+8g/cZxduPew/moynDm1SuXqcPx2kPIeYTtp2vnluKn5amGH7hRqa8+YuA1aVrQevg/LpbXOTpG5wkOFn6Ly74TUV/fxDk1fwBS4hRxI9PocrVXZZUWboFWTW0oUj3Lf6EcpLt8yFi+Gpuq9pqzQoaygwMuQrt61AmhOgVkkn7/Ylks/J8qaYn+53KQpIlYTAz/4FKvLzcewA8rLnDo0ziz8hzsXr9pAoVwke816GyWY6rKEGnAWqAi9Ph70lUH8D/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6986.namprd11.prod.outlook.com (2603:10b6:930:56::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 07:36:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9298.010; Mon, 17 Nov 2025
 07:36:13 +0000
Message-ID: <84bd6f5d-cab3-4a93-b143-98b220da6d7c@intel.com>
Date: Mon, 17 Nov 2025 13:06:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/i915/alpm: Simplify and align LOBF checks in
 pre/post plane update
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
 <20251114052746.158751-5-ankit.k.nautiyal@intel.com>
 <aRdHoRJaFkanBNt9@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aRdHoRJaFkanBNt9@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0246.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6986:EE_
X-MS-Office365-Filtering-Correlation-Id: 49703c82-2bea-4379-f42e-08de25abfb96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a3ZXdTRFT0dkaWE2U3NjUGg2R0c3N1QxTldJSE1BbmJoZkUrQ2ZSWmxSeDZ0?=
 =?utf-8?B?Z0JrRWRZa0NJaExTNFkzRVlvQmRtUkNDTDJRQzFMOHlodmJma3kzZVRtLzVC?=
 =?utf-8?B?cXYrMURQMVFUSksybEVHMVp1YnVKMzN2VkZ6UFdzVy9EdnNhd1JYbks2cjhj?=
 =?utf-8?B?UGdsSlhkbGQ1OFBPMUZ6QVk0K2VHTHdqWU5YelVPeE1KVytyY0ZBc2ZOd05C?=
 =?utf-8?B?Y2RWeURNSlpmY2FNK2hhL0VweFdrdXdEWkxyV1daQWIzbEVVNVlRNUIvcHpv?=
 =?utf-8?B?dUQybDRNSlo1MTRWTVNPMWlSN1ZYKzB3eW1acmFWVW9FTVcxemNrL2cvbVZs?=
 =?utf-8?B?VU5UNERGdXFDT3c5Y05pbDdQUERWeGxPTUlkSVlyVjk0cVFJNnNWc3BjZnpy?=
 =?utf-8?B?SnRRb3o4N0hLNkxOeWszRDRCbTZZMlJ4UjN1RDRrRGFGVzJucHQ1WG43L2tH?=
 =?utf-8?B?ZjFSenBOTjlYMWtIOFJ0bjgxOWdNUzBzckdzb0hjQ2h1dm5NU1N6SHI4NERW?=
 =?utf-8?B?OGRtUGRuUW82dGNlUng5elY4YWlYRVdwRWplK3h0Rzl0RjZ6RzZZa1lqSUwx?=
 =?utf-8?B?b0YxYUpQcEZ1WE82MXplSC82V2t4WWNBYm9LZ2VMZTJMMDZzNkNnVnN6Um1C?=
 =?utf-8?B?WWhJd09ON0tJVmZGTkZJZjVyQ2tLZ0dKUEExa0ZOOHlBOWtCK2hMaHRjdG4z?=
 =?utf-8?B?QzNoc0lmSDNaN1J1SklUVkRwYmNUcFYycEdzRlFXZWxVS2Z1U0VkMTgwdUZk?=
 =?utf-8?B?NWhlMFJtTTV0WklJSU9Vb1F6bmZIdUt3cDBEV2E4L0s2d1IrNjc1SFdTK1pv?=
 =?utf-8?B?NmN3NEJYKzMybkRPM2JJK25rT21pUnY4MlMyNXg4dVJRa3l1cHRFR2ovT0Vj?=
 =?utf-8?B?bmRNVHlwcEZIQWc0N00rVGFTS0I4eHk3UnpjTXRnc1dad296cjhsVkkySGkx?=
 =?utf-8?B?MSs4Uk0vTmwzbUYyRFZsZC9wZ0pRanlaeHMyL0tDVFBWdWJob1FmeXZrYlJK?=
 =?utf-8?B?RUgrU29ORnJSajY2a1ZDT1UwZGZVdURYTkY4WHRibDVPY3cxVlBWZ3Q4b2tN?=
 =?utf-8?B?amFub1hUekFINmlzaVl6VTE4Vzl0ZjlVa3lUeFRpaXpYZCtUTWZDSTBBTlc5?=
 =?utf-8?B?M2JsSGltVlpQT1RoRVBLbWkwa2VTckJPTG0xdS9yeUlvQS9HMG1zMzY0QUVX?=
 =?utf-8?B?VXV3Vm9RSGUvVmhkcmV5ZkVRNGpLQlpHSEJKYmMxOXhpQmdkNUkrSEdCOCtQ?=
 =?utf-8?B?S1FETEM2bGNpQzI2ejZVcWVPVUNzdTZiZ3E3dFBVLzhNNGUyclI5K2FsT2xI?=
 =?utf-8?B?UGlnNjFCaDNQNExtV3orb040OVhPUmtITlZqWXp4Rm1hWm5nZUUya09raXUx?=
 =?utf-8?B?aW1VUHAraEYrY21NaDloNFNERkF2VUdETTVpZFpCZVkzQmphQWhMSXplblNY?=
 =?utf-8?B?NHVobHpZSHJ6L1lUajhEeVEyTyt1bXB0WEtuV2Nad0dTdW9BWGl1UkE3OWpj?=
 =?utf-8?B?Z2xMSnM4L1NFSlROOTlyK0JhM2V6UjRhRHVycktRbWdzSW1QelE4cWh2ZnZn?=
 =?utf-8?B?a1dVNGV0VGMwWnBCYU10SE5WeUphL3VVUUUzVGd0ek1tamtGbTRqRFArUTl4?=
 =?utf-8?B?bmx0VWlzOWRzMTVqYXhkQ21vVE45TUVqUndkOWYyRGtkbW9TejZsYWVDSG9l?=
 =?utf-8?B?dyt0RzR1STIyMGwrVTVvZGhROHprVkJ6Q1E4U1NLdjZqbFBncWxhcWw1SGFx?=
 =?utf-8?B?d3NOZVhDQkZwNitwblltcTRPVzhSM1ZHU2RYdGZ4L1VmdWhUQ1JZTzN6OFor?=
 =?utf-8?B?V0J2dXpWWmtKblVJcVowRFd5V3VxYVE4QWw2SUpDcE5WNUZtamFVb3AwTG8z?=
 =?utf-8?B?THUxelRVdUw3WFoycmNFMHFkRWRqenlHNkdFeHkvWW1lbHkyMUVUYlpFU2Ny?=
 =?utf-8?Q?74KxnDn2phwT+BrH3FHXZA8VgGTvLfQa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2lodFB3L205d0pRaGxDcm51aTRCbU9Mbks2TCtsa3pHTzRuYU1QdjUwZGpH?=
 =?utf-8?B?MHVYemNHcVQrTDNmUjAvOURPd0ZzdEJWTm9rRzFwWEhnQnBsejhMUVpCdU1H?=
 =?utf-8?B?emhwWFlBazhZSVR0WTZNOFdNYWhtck9YUzVrQkk0Q1hiVkFENGFaSENWOU9V?=
 =?utf-8?B?L1B4Q2xVK3Q1aDFmaW1adENLWVlyWXpzaVhkaWxsY2hJOG55VW0wdUljc1NZ?=
 =?utf-8?B?SHVsMldZR0JOVkJKdkx2SmplOU9JaHRJQ25vaG9MTW1PTGZ3MkgvNG1iQXZv?=
 =?utf-8?B?N3FKUzhPcXY4S0l4YVovVExpRkRCWjBHclRNdEMxU0I5cldLUDFjZVdkNXow?=
 =?utf-8?B?b0gyR3J1S1hjMm12Q1ZGT1dobDV1VVZXcktGbGZXZlpQejcxdkF3UHhlbThr?=
 =?utf-8?B?RGNiUW1rbmJoNmhKMEFwRzQ5K0JLL005dGVGSDdXbFIxdElmZ1R0eDBaVlBI?=
 =?utf-8?B?NmRYZDBXS3BtZkRUV2ErdjZVMmV6cllwTnVKSmlSZmtpZVZWdjRLWXp3eWYr?=
 =?utf-8?B?Z0dMd0FHSFhEaTB6UFBHZUFiL0dUOUd2d2MzYXBJK1NaemdteVRIWXdYdGJM?=
 =?utf-8?B?b2gyRVZGdVdiUzdkZjZRc2lHdVNIVlBsd1JKVVkwVTlOdnBiSUdoY2p3ME83?=
 =?utf-8?B?MUpNSE5PbVU4d0JTMHRTQzkvTmJNY01LZGI3YUwxcjNxTFZES054ekRYS3B0?=
 =?utf-8?B?emhuRlRIUlc3UkMrSHBHZzU0OFBsRU4rWnphaEJ1RjlPcnVWekowZGRCajFS?=
 =?utf-8?B?U3UwNzBHTkFnODNLUE4vOWFJS1B0c09kWTFrSVB1S1FCbm5iUFlnUlJhSHJJ?=
 =?utf-8?B?OWRITTZ5OGJBQ2pJNUJoTXU1NUVwQnNvNXUvbm9QNE8xSjVDc3VGbFhpUnE2?=
 =?utf-8?B?ckRIbklpeW9FSTBYTVU4TTM0TTB6QUNDYThzaE5yM3lBUG5rYlEvQTdyUExQ?=
 =?utf-8?B?Nll4eUZTdkdjZlROcXl4TVhqMmp6bEErWFJjQjZ2cFNleTdxaU9JcHdrR21x?=
 =?utf-8?B?Z1N6b1hUbnFnQi9oQ21VQmNMUWtWVmhBL2dhUHFpZE1VQWRWOUNjQXVOTGg4?=
 =?utf-8?B?RFlMaUVzUkxpN3dodHkxMkdpOWl0WWRBa0hTaGE4QUFWR1RCa2IzeHBIMUJD?=
 =?utf-8?B?UVpTNmJmUmQ5cUlmc2YyWDZWU2pPR2FVL2dpdHljUnpiOFVRMXExYWtMS3pK?=
 =?utf-8?B?R3h2NGJlN0lERGZucTF1Yjhjb0xlQ0xRcFZhS0ZPNFJ5d0kxUk1RbHo3ZnNz?=
 =?utf-8?B?NVU2NHdMWFJRc1J0NXFaOWdBNTFxb25aajF6U1VPSmxsL0RtQndnRnI1R3BT?=
 =?utf-8?B?SGd3dmJaUFRBSEVWOE1lS0R5dWVVNlhhTkxoK2puZmhzRldnclQ5WFhaZW1w?=
 =?utf-8?B?SUJ4bmpxZzJBcXQzYTlqYk9hcXNrU05nUGw1NlpPaGJ3TWx1bWNHSE41a1Ra?=
 =?utf-8?B?cU5WM0ZweDBLSUd0aEVidUZ3WSt6WE5pVGxFZGh2K2tqdGovQjFCaWJJOFVw?=
 =?utf-8?B?empzRE83L1U5Y2R5VGZQSkZTa0tyeFdNY1NBdHlkR1N2ZXVVSVZ2eGJHeGl4?=
 =?utf-8?B?TmovWkxjUDNZajZqbUIzWW5ya0RscWUwK0dTb0FHVUEyK29TSW9EQ0dtNjVn?=
 =?utf-8?B?cXV4cnlXUG9US3Z2L0EwU3h6RWdYRlRudmx6MlNVSzdWekVha1FRUldRWTNv?=
 =?utf-8?B?eDdMS0lqNzhDQ1JBcWlhTlFXeDBSZExSK0EyZEJKNGNlTXJzdEhMY3NPR29a?=
 =?utf-8?B?bUFneUVDL1V4L0R2enBpNlg4SndVNFd2ZnNzUTZyeS9BKzIra2UzcnFJR1gr?=
 =?utf-8?B?RXVlbkM4Vno5SUhOdGlUamdaZzBkbEhBcFdSZzNZS1dzZkp4NlVnY00rYURx?=
 =?utf-8?B?cytiTWV4a1dQMkVNOVdGc0U0UkVmSXdpVzAyVUtxNVVINDAyTStnTjlpeTAz?=
 =?utf-8?B?VG0vSmdGcFhoY1hrQWhnQW5INXpTT1JFdUFkVUhJcUw2eFc4aXZES2JRMkU4?=
 =?utf-8?B?V0poRHEwcmU1Vkxqd1BvbWNyQzJYMktKeVZHUU4zZXpOZU1NQzRrN1NXUTk0?=
 =?utf-8?B?enJZcEw1MXlNdEJwYUJURkR0YXMwZzVwdVpVSm9wMVVQOHdZd1o5akFndnRk?=
 =?utf-8?B?Y1BXRWNPcEk2Z0hibzB5bjZMMzI1Q2R4OHBrT1dYZVQxVTNJcG9TSkhLaE8r?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49703c82-2bea-4379-f42e-08de25abfb96
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 07:36:12.9473 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nx0uPPMwfjGmLRQoFchTGhsvW1ZsYdO5jxmAIIpf7P9Jm9/B0sQ9+QzPVyGkDolwPNztP/P3H2X11ij2NElpqx39Q+GmQDHqBjQx9I/uZGA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6986
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


On 11/14/2025 8:45 PM, Ville Syrjälä wrote:
> On Fri, Nov 14, 2025 at 10:57:45AM +0530, Ankit Nautiyal wrote:
>> The pre_plane_update and post_plane_update hooks used slightly different
>> conditions for LOBF state changes. Rewrite them to be minimal and
>> complementary:
>>
>>    - pre runs only when LOBF is being disabled (old=1 -> new=0)
>>    - post runs only when LOBF is being enabled (old=0 -> new=1),
>>      with an early return if PSR is active.
>>
>> This will help for subsequent changes to handle LOBF during LRR and
>> seamless MN transitions.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c | 8 ++++++--
>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index 5cfb9345776a..db2b9608f7f8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -461,7 +461,8 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
>>   	if (DISPLAY_VER(display) < 20)
>>   		return;
>>   
>> -	if (crtc_state->has_lobf || crtc_state->has_lobf == old_crtc_state->has_lobf)
>> +	if (!old_crtc_state->has_lobf ||
>> +	    crtc_state->has_lobf == old_crtc_state->has_lobf)
>>   		return;
> Looks to me like these should be converted into
>
> if (intel_crtc_lobf_disabling(...))
> 	intel_alpm_lobf_disable(...);
> and
> if (intel_crtc_lobf_enabling(...))
> 	intel_alpm_lobf_enable(...);
>
> and implemented using is_{enabling,disabling}().

Hmm.. I can try that out.


Regards,

Ankit

>
>>   
>>   	for_each_intel_encoder_mask(display->drm, encoder,
>> @@ -512,7 +513,10 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
>>   		intel_atomic_get_old_crtc_state(state, crtc);
>>   	struct intel_encoder *encoder;
>>   
>> -	if (crtc_state->has_psr || !crtc_state->has_lobf ||
>> +	if (crtc_state->has_psr)
>> +		return;
>> +
>> +	if (!crtc_state->has_lobf ||
>>   	    crtc_state->has_lobf == old_crtc_state->has_lobf)
>>   		return;
>>   
>> -- 
>> 2.45.2
