Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CEDBFFAFE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78DA210E8A3;
	Thu, 23 Oct 2025 07:49:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZLQ4z2fO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D477F10E092;
 Thu, 23 Oct 2025 07:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761205757; x=1792741757;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dI2kC+oJdecpsoqSQEKxUX1cLF50tzrRdzhk29ssIN8=;
 b=ZLQ4z2fOpOXVz/vApy3hvdgh4sW/c6qfFa/RmsWFdDKrEXkoMiVX3/bn
 UojM9lh3lODpbpxMDnjMNx8G428uecw+ZWuyVdPZ1fw5YMBtdhgSIaDlq
 Xd9KrQcApLBo6HHLKjynDf/megfZGgT1MabwB/Xudzj7K3BLkVfzmbfZV
 5ak8eh1iNfPTwrMVW/DrmoZHhRgecBZM9o7DXTeafmwj0Vzgr6jxGnfdM
 cSHOawNqfu87fFy5eloBG+Eww5ulkcE0CmDZlnYl16oVVOMH8Nied4quC
 GJURv5Ujh84VYZvzcbKOX76lUQ/i0Q3G5/aU7dPWug7OMk+gQ0fkSnBjk A==;
X-CSE-ConnectionGUID: cjFQw97BTPi/tWBjm2KUiQ==
X-CSE-MsgGUID: 0aAUCI1lRsSqENC5XYNHDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63404733"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="63404733"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:49:16 -0700
X-CSE-ConnectionGUID: NLFcRhdySt25myXycl+r+w==
X-CSE-MsgGUID: rNMDz5/pTGq71PcJFg+9sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="183983745"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:49:16 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:49:15 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 00:49:15 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.48) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:49:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uELoi3FpA3J8sD+s6NbTSD5ET+ffuxZYTPaE/1G2n7ysMhJsxQJjIxoyZblueUuCFxQfiTtVOOM70OCnMhle90o8naUgt8qrhD+MHAMaDkiZbX6aVpTNk6hatGglM8Eq68ZLLoBJQ1Mr8Gl79LFKdIQxdNUo82fW2MqjtxSphZJeldlA6BSwZd9IQAQCySLb9iE+e0EBDPX6lUwWJCUW2PuoO1ca1LBBh7srcJZiAeyd/QwKOg5PpV8OaejjZqkjfQOQ9/BrPJP/PJPWCXvUFNlLGDIMNyLP/WSY0U0Kovl2gbqGcZ8w7zVZoZycCZeuNgrtUuxb0s+CniaHLNAJFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vrhvkz7OVU+VSXylsaGaFWR/3IvN9R4vfqN2F0Uy5Ko=;
 b=y9Ez827p04tE8Un/29WrYsLwL9u6Z8h1gW+VeH/JsAKdUKZE7nAiADnqLlXgJxJq8NPyinVWr96bUZ+tJjBuoKAvpEhiLl4I7IEH8ZA8mVGfK8ZQ1frrTmfIcUqAXQtJVC4ejyMSCfRpcPZx3eO9SuY4+yRwG8jfBHvvxzwZGrsDO/rDrjt9CmxBZLZy8MRkM9db0uxg2Pom5wlRMslq85r7MeauTNQomCKvWsJ9bBXML2+v11/Vxw/lnKpBzhSjcEjFY4Kf+QDJcvleyhkhD2s/LCXU9ZU9xpEvhla+SLVNd/vJF70TPtWwSChxvieGSFMBMG1/WGtGWSpBXsgPKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY5PR11MB6187.namprd11.prod.outlook.com (2603:10b6:930:25::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 07:49:13 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 07:49:11 +0000
Message-ID: <212d5122-31ab-4341-b406-877baf36dbef@intel.com>
Date: Thu, 23 Oct 2025 13:19:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/25] drm/i915/ltphy: Enable SSC during port clock
 programming
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-11-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-11-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::11) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CY5PR11MB6187:EE_
X-MS-Office365-Filtering-Correlation-Id: ff5f9323-4a9b-4c68-6216-08de1208a770
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXZTL1hjOENXSXFOVXdVc0gzV3Y2blRmTFplTXZ3dDlzMG15UUQ3M0RmUDh1?=
 =?utf-8?B?SDJhOGJDZHFkM2N6cnNDb2tXdUhNSVIzdVlEN3RaWnFHeWttbExDbi9RN2V2?=
 =?utf-8?B?U0pqWFFlZ0krODlMdU42Y0laODRUeDg5Z1RRcTRLVHdCem01TEZ6U3Q2VU55?=
 =?utf-8?B?citWajFQTTZ6WnhaYjlMWFpDYnpyMldtMm9nSGdacGdhTFZhM1VnVmE0T3Bz?=
 =?utf-8?B?NnhKWEJuVGU2VU9tVjc1ejZmU3dkei9jZ0JrSkVtaFA3cUpZSE44WU1HNW12?=
 =?utf-8?B?TkhHRjJWZ08yaGRSNFZzNkJEV3RwcndvSUlOYnZMMlBBWDB6ZVBTVlBzWXZj?=
 =?utf-8?B?OE1iODBLT2d3UGk5dStkd1dsSlpKYmREU05QbGtqY3hxMmwwNWtnVUZFU1pB?=
 =?utf-8?B?ak5wRFFJa3JmSmRxdFhuL0hnaVNYcmg5ZWRoOVZyUXBDMjByVmh3dzFXYi8r?=
 =?utf-8?B?eGVzcGtDeDhvYmVKZ3dac25wUkpFYjlUWkhPYTBGZEpBMi94UFcwcUlyeDFu?=
 =?utf-8?B?K1o0YUVNRVlFa0pBWjd3eUsxWHJ4OFIzcDFLVHZVL1BKeFNueG4xRG5Td3R5?=
 =?utf-8?B?VE9IT3NLNTVFc2tMQzZmaXRFLzNCU1l3d1ZOTGpJeGRjUlRIYmovNHR0bDV0?=
 =?utf-8?B?VndpMXY5citkOEF0UWFTQ1d4bTg0K3hBTnRMTmoxYVdod1lXdWZEMDVZakdx?=
 =?utf-8?B?WHZjZHg1QjBXaEluRGl6QTNQTjV2UGcyelpKVU52M0t5bTJERitmNnFIZ2lU?=
 =?utf-8?B?eVVnUkxkZDI4L3l3N2d3aGRGWm5vNWNHRTlsL01sb093TE9XSy9TL2VmT3o5?=
 =?utf-8?B?cnExYnFncGJ1SjJDZzlQa3UyT3ZnZGVPb0NudW9nZmc2VXd0WHhaaHNVUUQ2?=
 =?utf-8?B?MDkveEs2SjJFSDdrM3RtRSttWW55di9DalJSSHNoc0ErN3BhWHppNEdJSG15?=
 =?utf-8?B?NXByWlVDMzJqdUxRdjdVQlhRQjFEVnlJclZOdXQxKzhUVXVKTVQ2dDF1aStE?=
 =?utf-8?B?dTMvV1JJYUd4cCtnbmVjWGJHbGhpUno3YWFHVDkwS3hXMHl6UGVCVmtTSnhn?=
 =?utf-8?B?QWZRbmhYSWxpSUkvbUI4eFA0WmZYOWtsTFozdll0bVI4T3BPbmZKcUFEK2Nr?=
 =?utf-8?B?RmJCSThFTElTMnk4U1pzOFM5dElROVpWVmlJZ1NFMEVueXpsWm5rdkpCYWQ2?=
 =?utf-8?B?VytmcTlteWlLaXpOc0pQWlpzc1A0OGY4YUJ3NGp6K1kwZkJJVjBDdUlXdXNj?=
 =?utf-8?B?b1N1S3YvNmE0YW5kdmk0dzBOQ011ZVBhN1dVQy96VmN5L09UV0dnSVZFUS9L?=
 =?utf-8?B?SnZtbWdYN0lqdzhabWRzMHhFbUNBV011VVpHWmtObGJyTnRYYTJwZmdvL2FY?=
 =?utf-8?B?YWRkcEdEdG9veW91SS9TU2RJWWhmZ1pPN0FWVzg5bjFDT0NBcC82RHR5SmJl?=
 =?utf-8?B?c0hOTlFJVHlNKzdrQVBEMkExeXhLYjZXdk9rSWNsRnZrYUwxWVhkN0FDNllo?=
 =?utf-8?B?YW5hZkhLcWtMUjlGVy9lOHVvaFErN1RnVndNZ3RHc1U1TjJJQncweW4wRVFp?=
 =?utf-8?B?T2tTWGpOU0pkdEpUNWVieSszdGdCTGxFUVQ2Njhub21MMmdaTkJoV2hPUzNz?=
 =?utf-8?B?TVJGTFkrMGdhWXN4bnRvalhpdnB5cVdRaXVsK0I5WVRyQXpzbi9PbUxIQnM2?=
 =?utf-8?B?Z1ozaktTcm5IQ2NRajFBYW5RSDdHbkV5N1V0VVQ1WUltb1h6WXhLMldCVURG?=
 =?utf-8?B?TGp5OFNpNXJTajMrKzJyT2ZSWlljS2d1elFFMFNrTUV5NVgzTFF5eTJrT0pa?=
 =?utf-8?B?QklkQXZlVFhzSXozTEdOVXp4VkdKQmFsdWtzM0E5ZkY4OCtaUHhkR09Xc1dP?=
 =?utf-8?B?S080UTBDcktVdVVqZ2FJcWIzcXNiYjNuY092VUdjU0NnTmg1MncxVWV4KzEr?=
 =?utf-8?Q?RVY4gU80+1LKvxm3Su9o65+hX8T/mfBE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SThpTDhtVWowQkFyOVlUeHdEcm1lZDI1ZWJGZ0FKQTJRYVJ0emdWTVhnSWYv?=
 =?utf-8?B?NFZKOHVvS3dxclcwd2dBbENEbXhURkp0NnREaHZYcTNIRVBDcWRobjdmM0RL?=
 =?utf-8?B?MFlVa29yZFFZUHFudEZ1Vy9ia2srSkhPRTd1cjR1VURYWDNLcGFzSmtUM0tX?=
 =?utf-8?B?TCttNCswTmdkcW1Ub0dGWGpPdURSam5PSlFWNnEraGFza0JtMkM4YTRsamQ3?=
 =?utf-8?B?TXhMVUZoVndib2t3K293VnFrbnBVYjlSc1hxTnB0TGpuU3BXSW1KZmlRcFhH?=
 =?utf-8?B?Q2c3L0ZiTldWQVVVT1N6RGxCQVpVajBOZkwyaVozNHRzT0lhTVRtblFrVzNE?=
 =?utf-8?B?a09ZVWxHNHZtYmFoTzNyaGc2NGFYODZCUkFzalFNcTZxQW9Nb0JqQ1kxVXB0?=
 =?utf-8?B?dlhTR21vcXFabDVQalFmNHVUM2FucWV6VHhPemZoUlZ4WEVQZ1M5NDZFQmVt?=
 =?utf-8?B?Q2ZCd05kblNjaUtEQ1Y2QkQrWjVLNkpoaWlMRDRTbFAyb01kRE1vREMrTHZh?=
 =?utf-8?B?bklnZWR0NGEwV1NWZTB2VXU1QndxYURmTWJqMEdJc2lSdlpIc0ZEZWY1S0Fu?=
 =?utf-8?B?LzJoQVRRNzkzTmxPR2ZnN0VPZnJlZkRjR2FrOFRrS3MxZm1QM0RzRXM3cjU3?=
 =?utf-8?B?YVd3TmVuVmFTaUozdWE1cUV0UXhlWUhOQXRnRnNNMHhuMytxY29PcXRGWktC?=
 =?utf-8?B?SWhpNnpMbWZmaTFHWkN5UUtlUUFKN1crM0VKL3dXMFBJMVl1Vmt4dkQvT0lM?=
 =?utf-8?B?ZW9JNnJEbXM0YXlEcyt3MHFRT0phU2NDTVMzYStJaGt4dm5GMGN6R21VdDVm?=
 =?utf-8?B?RzNGTXFlOEkrRDhpaWx5YitzWXpEdW5SUkEwdTdEYWF3TE53YnFzSGlJaE45?=
 =?utf-8?B?V1JSK0JUZkVhcTlnejh0Rmp3NGI0azhuTEJzYkhsVk9JNTRrTU5FUUQzWTMw?=
 =?utf-8?B?bWVaQXh3a3NmaW5NcDN4aFBxMXRFaTU5YzhXeUJDWVROc0Y2eFlNb3puVFBI?=
 =?utf-8?B?UXE3enQ1TGdVa1U0QWdDMlYvUE96QS90bWRucWd2dkVvZkVyMkNTTUpuSWdp?=
 =?utf-8?B?Tk1BbXR4MCtkWUpWL3J1N2Rad1BsdHZ2RDlSakVpdFZ6Qkp4WHdsVm1MblZG?=
 =?utf-8?B?Z3o4cDRRazZPUkxScjRKY2wrcmhnc3htZlZhSXlLMDFnN3UwYmZqLzljZDNW?=
 =?utf-8?B?OVoyNGZUU1NGSVNDTHQ5WFpSYm9acUQxU1JScnIxUjBwUExLTTVIZ0d4ZFVk?=
 =?utf-8?B?Qml2S3FtZlJXWjRFMWlXODkrK0NxRkFMeW1lb0V4aUtNRVhsUG1EM1czbXFH?=
 =?utf-8?B?eVY0dlpxcTBOUVdlZDZlbG5iVXlDaDhMTXZ6ay9mQWZpcVFkR3lOc2d6RWt0?=
 =?utf-8?B?ZXltTGVNV3Y1ajhaL2haWWNkcFd1alFKV2FMdXcySGd3cis1Wkd3OHBtN1Fi?=
 =?utf-8?B?bis0UjNha2pLOUZ0TjNyU3luaGRKb25oWVF2YzVBZTdUUlZlTm5DdFcvb1JY?=
 =?utf-8?B?akdsNnkxZHdxL0NsbHZDaXl2dmNOVmlLcUdjcDlKVVJRdzk4QkxQcS8vVTM4?=
 =?utf-8?B?dlpHN0o3aHB2THpYeHNvOEQ1SEFMU2g4SFhNWitMRnJudnRsTldwVDMvL1Ir?=
 =?utf-8?B?d0szOWVQdExsSnk5ZU54V1lKMi9NTjZ4a2RDN1lSVmF6aGtCN1pWU0U3c3Rw?=
 =?utf-8?B?eDRmRGJpSEVNTDNMckNpT0pWaGxzSHQzQUxwVFd2Umc1YU5TNUtCR3JMdE1i?=
 =?utf-8?B?OEQ5UnJWd2pvMS9KY0dNR3FiSU9zT2FpYll5VWJWcG9EWklUVVVYanM2K3BB?=
 =?utf-8?B?VGxYeUtOK2RTK1RaaG8zVFhycHZLV3Z5YzdBNmZwV2ZGa09teVI5Um96Tkkw?=
 =?utf-8?B?RVpmVjJTdU92R2lJZDFnZUhGbTVBa2lNWUNuOURwdnFFL2ZpcUp3eTZGSWpT?=
 =?utf-8?B?VzhVMmdhZ2hTQXdwSVZZVEM2VGE2NnBuNnhGQ1k0UWY2bnJIa3haUk95dCth?=
 =?utf-8?B?aVhpWnBUNmw4SHNORTZBYWt2STNlUTVuSStteFhBVzNrSEt0VysybkozWE5h?=
 =?utf-8?B?L3F4d04xazd5VEdLVnMvSml5MlVGWTJwZytDSG92ditmNXlzOVZ1dDZOd0V2?=
 =?utf-8?B?aXBRRUFKbUZMMFVXMHdpVlloQlZrTldob1NmR3ZmOEZFV3ArbGluV0lKNGp1?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff5f9323-4a9b-4c68-6216-08de1208a770
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 07:49:11.4998 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7jHJzJILiZYlcq90QvDi93spgK1yHCNG26Wyl50ceU+m6Y7qJGIJfbNC1/hyK15p/ZHn2cCF/D8BYtEtFxPiWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6187
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> We enable SSC when we program PORT_CLOCK_CTL register. We logically
> determine if ssc is enabled or not while we calculate our state.
>
> Bspec: 74492, 74667
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 26 +++++++++++++++++++++
>   1 file changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 8cd0009609d4..6ee785fbcad2 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -15,6 +15,7 @@
>   #include "intel_dpll_mgr.h"
>   #include "intel_lt_phy.h"
>   #include "intel_lt_phy_regs.h"
> +#include "intel_panel.h"
>   #include "intel_psr.h"
>   #include "intel_tc.h"
>   
> @@ -1109,6 +1110,12 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
>   	else
>   		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>   
> +	 /* DP2.0 10G and 20G rates enable MPLLA*/
> +	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
> +		val |= XELPDP_SSC_ENABLE_PLLA;
> +	else
> +		val |= crtc_state->dpll_hw_state.ltpll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> +
>   	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>   		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
>   		     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_SSC_ENABLE_PLLA |
> @@ -1212,6 +1219,23 @@ intel_lt_phy_pll_tables_get(struct intel_crtc_state *crtc_state,
>   	return NULL;
>   }
>   
> +static bool
> +intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
> +				struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		if (intel_panel_use_ssc(display)) {
> +			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +			return (intel_dp->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5);
> +		}
> +	}
> +
> +	return false;
> +}
> +
>   int
>   intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   			    struct intel_encoder *encoder)
> @@ -1230,6 +1254,8 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>   					crtc_state->dpll_hw_state.ltpll.config[2] = 1;
>   			}
> +			crtc_state->dpll_hw_state.ltpll.ssc_enabled =
> +				intel_lt_phy_pll_is_ssc_enabled(crtc_state, encoder);
>   			return 0;
>   		}
>   	}
