Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 133B3A47B1B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 12:01:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D20810EA96;
	Thu, 27 Feb 2025 11:01:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K+CU+Qof";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D567D10EA64;
 Thu, 27 Feb 2025 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740654114; x=1772190114;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/7tzfXVwPmxtD8PnQOhy6RrYYFN5KyMZUqJ6Ers1Ohw=;
 b=K+CU+QofbcWbq1AXyKyC5rGDsenlm/bfdIPKdVeQvMLCoZoSseAXIcMo
 aI45sk7fUAHpc9rsen0Wcv/FofjrmzcbDaH51Z2mtRpxsINT6VUq4yBMl
 zOhFoYo8OHUFtGLf0mvKsIAFokcchNMV6GEQ225OP22sD1ECAF2FBloRf
 Ri0hKOqk8ySuou7v3Vv2A3nXl7DSfxpe16CBlbX4AxWrVpQYFxQ3oZqTD
 J+TQ9cAq2+reex6AGfrl1N9JvzGQsd/jFJoteD/WhX4aF1D7Y0pYxR6ro
 /szNOL79WYkYpjeTaBW0QOo8EXS8MxN/wDxgmpP56ZOncImD7+UYgXhM+ w==;
X-CSE-ConnectionGUID: ont8YHlzTailOyiEgTHa/Q==
X-CSE-MsgGUID: JfDlMfaISbS3MFs+qpntdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41420828"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41420828"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 03:01:46 -0800
X-CSE-ConnectionGUID: tuMWwJF2SAegoBJetrNwRQ==
X-CSE-MsgGUID: 3dISbqBMSPGtC4zYbwnUWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="122105925"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 03:01:45 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 03:01:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 03:01:44 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 03:01:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NH/csWaT6UMz52q2lHb1UNdepEMHJlu1RCDBi2/ZcJgpG8RqoAwWDou8nn2r5XhtaJOOH9BCUYT3h4NEsxXiawVqcEdXBjHX4Vb2+Ep+dYsw5nfZYvY1iT/LNApz96E9g8vMS0EMIcJ2V7vFU7tYasNBFEnrtKubW9iIYFfr6tJxdVLyXPPTRsAEcktgjgNE1i1TMJU+OQV8tmPsMILT87iWACprZ6bJNtfpHnpglKO2tzCuLNL63lJMOdzilOwvAxX/DOlh/lCbM46OOOx7jQxQ21eHSumzLPMZ8LATM0ViBRFermCWWl6/lSDqJSHxhFzswZav9ekwDAN/yVmCmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dwcDtTIH38pz4UyQ0iozvT9zP5BTY7t2YXz8IYrZW08=;
 b=Z9kJyxPcaFKISFt88U5ffHQJI95C8+6OnP6FeKX5n7aw5vSVp9iTUODiliTYu/8TmslWuQrm4SsHQVgcX5UfnI6735Cz8fhJxC/oQkTj6iUa+RyD8JM7Ll7gWGi4V24u1ZQQ/LUDnx8GXG/Gnn1TV+fwB9vHqOWxAs3KB7E2m1WyZBDCxsvGqphiWLnfead4rBgLEuUPwbWShiY8Q77hF1kqnqyGkqXJsUD5oopDnJF/koArTIhEliSGN54ukymObVr+vV539y0otbix3J1fTkS5ZdwqjjNZigIGoaWKsvWCP8k8t/BHxoUsiY3NE8aXcgEm6jvOM/qNAo9Q+CXeKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8680.namprd11.prod.outlook.com (2603:10b6:408:208::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.18; Thu, 27 Feb
 2025 11:01:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 11:01:34 +0000
Message-ID: <844651a6-372d-4a1f-8772-e947d61a8559@intel.com>
Date: Thu, 27 Feb 2025 16:31:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/20] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-19-ankit.k.nautiyal@intel.com>
 <Z78vB6J2BWXvXhPK@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78vB6J2BWXvXhPK@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8680:EE_
X-MS-Office365-Filtering-Correlation-Id: abbfcac8-1c32-47b8-f15f-08dd571e1967
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0NwanpwTkVrT0MydEZrY3MvY1FzVm9SYWV5U1JlWWZwT1diWmJsYnBneWhi?=
 =?utf-8?B?TFVjUEZsdG5hV3YvNUJWRmJDRHVCa2dGUTJqVG5wTklFVGRGNFo0VDNJK3V1?=
 =?utf-8?B?VENEYzZ5UHpVamJGcFY4SE5JRTg1SGFKaHg4V05NZGxod2tjTC9mOEVWMGRG?=
 =?utf-8?B?TUVqRTc4eGhaMFZMQmJTeDkwOE1PZEtVUCtsQWFPV1JZaGYvRlFRUDBLZElz?=
 =?utf-8?B?U0lUNjQ2TUswTVV1MXB1UUFVZEx1VWIyazk2R3owa3l1OTJZM2xUT1RPSldu?=
 =?utf-8?B?d2tnVWxSTVgreDV0R09mS2xyWXZsdzBvZTFCTlJOQ0xvZlZxbUx4MmJuZW5r?=
 =?utf-8?B?SzJCbUJjeExkRlJKZU5mQmw2OUQ5V0VKK3d6dFdGRno0bmtYZU1RUFlMeTJX?=
 =?utf-8?B?aGhmUzRJWkRSWEsxa1kwQWJIaDI2cjVpU3hTZU1SRkpBQjNHTjNBdTVoOEZh?=
 =?utf-8?B?L1lLem0xbzFEaGJSUDdrTGdsYWtTRTVzU2RoOFQxeGhxVlNMcUVlUzNyUjZK?=
 =?utf-8?B?YTd3SDd0cUxiQUpxV3pNd3o5QmkzMXI3Z1pNNFJxTWxSNFhvTlRQL01YZ1BJ?=
 =?utf-8?B?ekNsL0Z2NWNFbjVUUy9wNzRtSHFSbXhyMGJoRW54MWk4UVI5OUN1akhRdUha?=
 =?utf-8?B?MG9Xdk1sZXJXWm1Vb2FWc1J5ZTlSbGdKVW1maG5hemZIdmVHdXRLSC9lRll1?=
 =?utf-8?B?ZGpNYTJtUk1CTk5CZUFiZXc0OVFhL2lYWm9ic21lY3hqRHMwUWFBbmZLOEY3?=
 =?utf-8?B?RXlyazREMmhXK09OcjlQK0cxM2NDTjcvZkdPeWdtSUJaSFpRZS9zOWxLaUNQ?=
 =?utf-8?B?UGRxR3VFMW9zS3VaZ25xMmw0dXBjZGM1RGw1MGJ4Z2g0MzRWaEpHWXBGRE1O?=
 =?utf-8?B?QW5EaU9GN0JnampJUWVSOGdtdDhYWEVSOW5vaU8rbGxjb05zNE1MWWRlRldH?=
 =?utf-8?B?aTdyRU10elhBOW5hekxyU016L3RhSDduRWRraDN4eElDMVdlMGJNOG9yS29p?=
 =?utf-8?B?U2RQbmNxQ2M5S1NTVGp0YUpIT0V3UHhPanR6cmF6eE9LMFBOV1hEUXk1Tldr?=
 =?utf-8?B?SVJzN1Rnd3pCRTVVZHJnMW85Y3Bxa1F3SFE0aDR3RDN3S1hwOGM4cy9abWZr?=
 =?utf-8?B?U3NPZjdvcUYrN0lmUWRFOVE0OHg2ano4ZHdQSWZvdVI3Y1Y5MFJLNVN5SVhp?=
 =?utf-8?B?cFZZRWd4MjYxa0pPWG9rZ1ZXUDVLQVowNnRPYlhKYWhuTUhRWHpkMFY3cHZx?=
 =?utf-8?B?amxiYUZWT2w3R0V5bUlYaHIvVTVFa1RvbjA0T0RrcEEvOUFGREdKa1ZUT1p2?=
 =?utf-8?B?aUJDYitob0xWN2xHVGxCV0RXejR2QXBnN2lhRmFCOUJ3Z3RySjh4aWhLbmdK?=
 =?utf-8?B?SE5zYVcxbDhKUFdvQkFUMlFiN3FUOFk4WFo1WFZ6S2lGZVg4Z1dTcDhVZTRH?=
 =?utf-8?B?WnJ1d3NaOGJVTEhwTCtsTHZZNS9LeEtmbFc2bk5oemRmdXd6TmZvc2k3WEpi?=
 =?utf-8?B?SWhDVjQ4eUxBVzQ3SldQQUxsSEdQWENGc1VkL3JoN0dFZU5MU004SFJSNmUv?=
 =?utf-8?B?a2Z4cXdHZmU0YWdCREtGaU5zTDFVdFVFWlVZYnpHRm9yUGIrOU00N3BoNWJw?=
 =?utf-8?B?b0hOUXRmNDV2cmZPSEZhQ1F5TWdLbm1taXd3K1lsQ1VNV2xFd3JKUS9YTTJX?=
 =?utf-8?B?K2MxL0JqM1BwSi9rQkVmVmhIUE1jcEFOUG03SnB6NVpaWTI2WmxsSVV1ejNy?=
 =?utf-8?B?SHN1S1NBRXQ3NnF4ZEpoZUlCaFgwKzVRZHFvL3RHNnd6VTBjeGQ3OEZyV211?=
 =?utf-8?B?aVhzVzRkSkxoa3JtS2tZYlpoN3BVaHdkVk9TTGJYc3Q2MHNhRGVSMkhDdXY4?=
 =?utf-8?Q?XILHdbqO3FOAB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXlyRWtxb3RCVmMzT0QyMjlWcDNmUzFRLzdHWXVZVk5HQUs2NFdDVDgxQTNv?=
 =?utf-8?B?TFB6amd3YUpPaDdESDJta0ZDVzdGOEZoS2F6Sk5iem5RejkwajlUeUMwYWRF?=
 =?utf-8?B?TUlYVzBWOGFubjBIYkJmeGdmTkpzK1RVdDV3UVkyTUthbGhETG9RdE1DR2t5?=
 =?utf-8?B?bU1ONUR2c0NQK3RoNmVLVGE0MTZid0I2WW1NMWFiK0lkMjdZUkZlYXU4T0sr?=
 =?utf-8?B?cDBqcXpIRkorbzZaaXVqSHNYM1dZbFRvZjU1dkgwanVPT2VRa1lLOHFkcEhZ?=
 =?utf-8?B?VmNFT0IvR2Yvd0paTmJQSXJrRWtaZEFWeWVtSWpxeTRKcXNXQ2hMbElNbC9G?=
 =?utf-8?B?UVZkUXR2Ymg2MTNHK1RDTkV4TkJMdlRYT3hyeHZ6M2FyU0ltczJMeDV4UGlJ?=
 =?utf-8?B?SnZXWG1oNGE5VmZ3K2tTeGxNckZvbG1IR1ZwY3g3NTRCaXYvaHdjeUpjL3hR?=
 =?utf-8?B?TDNXRU1hZE9PWmFmZ3pZRDcxMGlQditkMmRFakFaWEhYNFFkYXVEV1FpMmVI?=
 =?utf-8?B?NGNIeU9FU3N1RGZrR3dJNUI0SzUrZEc5TUhONGpGT25rMkcrWVdRcGRweE1O?=
 =?utf-8?B?R3RENmVRZnZEd3VObE1Zc1lwM0VVenJEM3ZNeXdaWnh0N3gyRzZsSlFtL2w5?=
 =?utf-8?B?WVIyWjdOV2NlMnh5c0JPcnN3aTVMRDQwbW5ZeGlCWTFuSjBVNTVjdENOeEd5?=
 =?utf-8?B?SkhxRXdVbTlUTzQwaFlqb3FuRURJVXFqek56VWtkekNQQlp2QjY1Z2dXc3VY?=
 =?utf-8?B?YnAzTCthVlZyRGFMeDFMOU80UitCMWlYeVUyZUtjZHphMmpSODRjUTBoNnBu?=
 =?utf-8?B?SlZGV2V0ZlVyYm9KZ3l2YU5qMURSOGIzeTd2UG1DSlFGUnBYdnJTV0hSS3pa?=
 =?utf-8?B?cXdqUHU4S3dySS9rZE5sUEQybEYrUDF1YnRZYlhHRWRtT3Evbkt2bnZhTFNa?=
 =?utf-8?B?V2RCR015NUtMU1JNTStnQ1NpVUhoWXYzR3BnU0RhV3diN1V0ZFZRSzU2NUlk?=
 =?utf-8?B?QjZ5dG9KSlJtNXdRT3lSTGI5UVlVTkVYTjV5VDZyemFIWG4yaEZTMGNBa0Ns?=
 =?utf-8?B?anRYd2I2VFlSdTdpQVVoM2U3T00zeHlhNHcwajUzSmtRRjl1RW9OaUxIejdB?=
 =?utf-8?B?dHlIc05hT1VnRGZsOUNmV1owb1BMNkZackZzSWNGYXpJRlF6c3hML2l2WklE?=
 =?utf-8?B?d1pwaHJZa2JjYXhZeHNmYVBMbStBdDlwd3B0SDRKd0pZSmRydEpkbEJJMjVU?=
 =?utf-8?B?Rkl0c29HWWlDY1FiNzc0WXlPSDk2QjYzbTgwOWwzaG9YSDB4Um1KRTVhKzdD?=
 =?utf-8?B?azlsTlFUVUJJeW9VelgyQlRxRkgvS1cwSWNQMUlQOTY4NFhGWkZ3UHptNVJ4?=
 =?utf-8?B?RDY5SGhzNzB0RXlXbCsvblN6NXlBa3BXMmtjK2Q1UVZMbEgraVdFbEFKWSsr?=
 =?utf-8?B?NWdxVFNlWGZKZUl1UHB1L0RWcXJpU1IvUHZKRXZCbUpOcGdrdzRLQUlHRndj?=
 =?utf-8?B?WmlIdkxCNjA1V0hYOHNRREMvSkx4dEN6cnVmU2VsdkFOVHdnRVR4T2VBRTlk?=
 =?utf-8?B?ai8vcHZPVUZqZVZFeGFiRlFkNUlhUVl0OXkyRGRQekw5eEE0NHFJdVRvVVpW?=
 =?utf-8?B?aTRjWnJSdHFZT3ZUUURGQ3BwdVZ0MUlycThXNHYvSXlXVmxqNHNnaE4ycWFu?=
 =?utf-8?B?UGtLc1U2YnphZU5UaVBvRU93M2tENXVhVFNjYmlYZzZ3bXpZR1RnVmp3eTdx?=
 =?utf-8?B?bXBUa2VXeUVzRE8vOWtjc2hOaUFPdURMSWt5RmI4Y3ZFcGZaUGxvaGgwRnRj?=
 =?utf-8?B?bXF6VEhpblEySzZYcTZ5RHZSNHR0ZzZ2NVRMTHYvVnZ4a1JwRjJudGZrc3U0?=
 =?utf-8?B?ZFY1bitiYVVRWWs1TGE5RDFhRlhId050b0lkK1U4ekRtMlpFcnhxaWtUbU9B?=
 =?utf-8?B?YWd3b1NUcDVJSG1uTHU3OHEyNGFjcjhzYTR1UlNmQitmc3laTTRQWXZncXh2?=
 =?utf-8?B?MFR3VVBrQXdocWNMN1BrVm9zWW5xZXlJQ25XZVkvMXp3TG4ySG5Sejdta3pn?=
 =?utf-8?B?MzhRaWo5QjVpN1FQMmFrVnkyZVRrSjRueGxNK2hUMVB5VDd0d2tTQ1RSa2hS?=
 =?utf-8?B?S0s0eDVoR28wekQxTm1IbTI4NG85VlE1d3F4WUFVbmdUbTdzSjlyOTh1SW1o?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: abbfcac8-1c32-47b8-f15f-08dd571e1967
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 11:01:34.6492 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3tkBv2wnyxR+494DMzcPadeL3dvSd26S9llPuHlXgX3IvnMSXxlD3QM1q1DuCmuSXWnp68hPdpR9cu4sj6K305nOcXg33A469I2TVQQ19+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8680
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


On 2/26/2025 8:41 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:47:15AM +0530, Ankit Nautiyal wrote:
>> For fixed refresh rate use fixed timings for all platforms that support
>> VRR. For this add checks to avoid computing and reading VRR for
>> platforms that do not support VRR.
>> For platforms that do support VRR, readback vrr timings whether or not
>> VRR_CTL_FLIP_LINE_EN is set in VRR_CTL or not.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 43 ++++++++++++------------
>>   1 file changed, 22 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 551dcc16f0d4..975fed9930c1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -344,6 +344,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>   	int vmin = 0, vmax = 0;
>>   
>> +	if (!HAS_VRR(display))
>> +		return;
>> +
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>>   		return;
>>   
>> @@ -358,9 +361,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   
>>   	vmin = intel_vrr_compute_vmin(crtc_state);
>>   
>> -	if (vmin >= vmax)
>> -		return;
>> -
>>   	crtc_state->vrr.vmin = vmin;
>>   	crtc_state->vrr.vmax = vmax;
> I think your earlier pathc left vmax==0 here for the !in_range so
> this looks a bit wrong. But if you change the earlier patch like I
> suggested to set vmax=vmin then this would be fine.

Right, will set the vmax=vmin, as discussed in the earlier patch.


>
>>   
>> @@ -373,7 +373,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	 */
>>   	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
>>   
>> -	if (crtc_state->uapi.vrr_enabled)
>> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
>>   		intel_vrr_compute_vrr_timings(crtc_state);
>>   	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>>   		intel_vrr_compute_cmrr_timings(crtc_state);
>> @@ -640,6 +640,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   	u32 trans_vrr_ctl, trans_vrr_vsync;
>>   
>> +	if (!HAS_VRR(display))
>> +		return;
> I think the caller is already checking that. But I suppose we could
> move the checks into the VRR code.
>
>> +
>>   	trans_vrr_ctl = intel_de_read(display,
>>   				      TRANS_VRR_CTL(display, cpu_transcoder));
>>   
>> @@ -663,23 +666,21 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   			crtc_state->vrr.pipeline_full =
>>   				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
>>   
>> -	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
>> -		crtc_state->vrr.flipline = intel_de_read(display,
>> -							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
>> -		crtc_state->vrr.vmax = intel_de_read(display,
>> -						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
>> -		crtc_state->vrr.vmin = intel_de_read(display,
>> -						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>> -
>> -		if (HAS_AS_SDP(display)) {
>> -			trans_vrr_vsync =
>> -				intel_de_read(display,
>> -					      TRANS_VRR_VSYNC(display, cpu_transcoder));
>> -			crtc_state->vrr.vsync_start =
>> -				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
>> -			crtc_state->vrr.vsync_end =
>> -				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
>> -		}
> I think you want to keep the VRR_CTL_FLIP_LINE_EN check around the
> TRANS_VRR_FLIPLINE read at least, because we want the state checker
> to catch any misprogrammng of VRR_CTL_FLIP_LINE_EN.

Alright, will remove this change.


There is one more thing I wanted your opinion on:

For PTL+, the support for TRANS_VTOTAL.Vtotal bits is going away. I can 
skip writing it based on the intel_vrr_always_use_vrr_tg(), but how 
should I fill adjusted_mode->crtc_vtotal during readout?

Can we use vrr.vmin for that? Or should we just remove the state checker 
for crtc_vtotal for platforms where this applies?

I am intending to include this change as the last patch of the series.

Thanks again for all the reviews and suggestions.


Regards,

Ankit


>
>> +	crtc_state->vrr.flipline = intel_de_read(display,
>> +						 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
>> +	crtc_state->vrr.vmax = intel_de_read(display,
>> +					     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
>> +	crtc_state->vrr.vmin = intel_de_read(display,
>> +					     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>> +
>> +	if (HAS_AS_SDP(display)) {
>> +		trans_vrr_vsync =
>> +			intel_de_read(display,
>> +				      TRANS_VRR_VSYNC(display, cpu_transcoder));
>> +		crtc_state->vrr.vsync_start =
>> +			REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
>> +		crtc_state->vrr.vsync_end =
>> +			REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
>>   	}
>>   
>>   	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
>> -- 
>> 2.45.2
