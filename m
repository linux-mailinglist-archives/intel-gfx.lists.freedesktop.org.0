Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A90269FAB84
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2024 09:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E17610E19A;
	Mon, 23 Dec 2024 08:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eyE1H5e+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8225D10E19A;
 Mon, 23 Dec 2024 08:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734942567; x=1766478567;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VxDbPuYdfsel2QEeOqLRGolO8ADpwdRYeb3RBlhdk0E=;
 b=eyE1H5e+OXWANYLBmS+cnNJu6ylqIUzvcRDIkX5jMfD1is9Iq4ZUk4Z/
 XfgIq3qpteiw4NrHwNQaRnU1120++xSxawv7wlU7LK321vMftUoBYLyW4
 obMsZ5x+g8oVdUfUErBe6pOq5LvKiCZx6CxIiqIVtmTYQIYI6Ov/vR4hm
 EQsgNUTtQ2TQCEIhEM4qwjE8GSBTTw+v0GVKm39y9kYeyJBAoAVnx5t+2
 bGRMBdHYRWzZH/RRP5ix9OSFXuWdwvrAB/ly8z/BjUtjr0U8gZmWStG7+
 hd1lxh+1KmO3658XXe50uWLUGNEo5itlwM6CP98xQQMWeq8rvx7h5YEjx Q==;
X-CSE-ConnectionGUID: djYzo5nFQ5KY4g6g6NeqMw==
X-CSE-MsgGUID: UTpY28BhT+6BGwZSx3AXnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11294"; a="39181412"
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="39181412"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 00:29:26 -0800
X-CSE-ConnectionGUID: 02awsLrKTXqboV6ryBkyPg==
X-CSE-MsgGUID: YxyY6Q+/SyuC75EBV7e2cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="98917060"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Dec 2024 00:29:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 23 Dec 2024 00:29:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 23 Dec 2024 00:29:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 23 Dec 2024 00:29:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GLlwQXNSU/NERrkp4pU/6aZ4czLS8511k+hOWBcyrI2D1rNJ22487wHCgY6x9hpgP0VZDlrHE0Q/dxiecdAlLd8hExSqQptvX8nJ8l45loc9EcCng6vAi7FEnRzNf/0jH0s7ynXGoXmOJVBsc+rAVrM7s2CNxLM2tS6kxs4eu8eSayRueIGuq7ZMIdHk8LU/E1l1s7XBQ22yEeky515s0H1K6+3QzidPXxa/kIraf5qy4VFldBJrikTF9kCxBhDJSUhIsGI5ufvMnBUhrMeAoyaMS+Q0TfIJBu+0eZqIxA6cVcZZF3h9qrBVMCr4LwKFQdRTja87fyin79VYy104pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9yg7gZfN20ARzJBEzOuKVxc3vg4KHheZPUyU/N0HGro=;
 b=ijrnm+q8iEhyLiHrOJB9iFPdLa5HOAd11sdRbAF2B0gmKPfn/AVZBNYJIDmYGLGBYULoBgyoPkQiCR/+PU8bx7JmXOBw6dVC1ankGm45RzX50UvlZ1tAu0XAkoLMVwA1xdbZv7CIuePpeuxWjhbwD7ahpNbZeT8qflDnvpa3w0ixFyy6s5LawO8J28cpwq1DRoTtyC9c8+9PXYwIzrspWECsFfCCuO/DaeD03RblEO1A9usU4MIVmXiWNXJxcnCVnwpi7Kre5zz+PODt80VE25lN8OIEB2t/m59fB8/97UI35fnv4xkM0qQcZ89yz9Fg4IslhPH8loxVmskYyj485Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8272.20; Mon, 23 Dec 2024 08:29:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8272.005; Mon, 23 Dec 2024
 08:29:05 +0000
Message-ID: <3843d303-1ced-466f-96b8-eaae33d92ad7@intel.com>
Date: Mon, 23 Dec 2024 13:58:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v2 1/6] drm/i915/scaler: Add and compute scaling factors
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241217180710.1048355-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241217180710.1048355-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PNYP287CA0036.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:23e::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6019:EE_
X-MS-Office365-Filtering-Correlation-Id: cbeb0676-499d-4c70-0533-08dd232bdcac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEZlOTYrTWRMcVo0MndQbEoxNUhBektId3NpdGV4d3M4dDVycnpUZlg0RnVF?=
 =?utf-8?B?YnptYXYzU3VUWU4wNXAzSVNieGpMN2dDOXN6d3FLN0tlaDdmRzd3YUJ4b1Nv?=
 =?utf-8?B?Q0NyS3lLNmMvQXFoNklWeGJBZEU1QVkzeDlBS05UOUVyOFJPRnRqbjVENGxt?=
 =?utf-8?B?bUxFWUdYVHZPQTFhS2FmZHVpa21Gb09MZCtmYURMSHJTNjZ3Z3FFNDhHTk5U?=
 =?utf-8?B?eWtGOHVtNDhIcVpZcVNvMmgvYWpnbFBrcmxxM0xtMHdRR1RidGhlYkk3clBt?=
 =?utf-8?B?bDZJSXNNUmNQaGlMWGUwajdWcnAxM2JPM0RSSldTbXRyQisxblM3U05BaUVM?=
 =?utf-8?B?NmI2QUpLUitvTGpVcDdnSGRzbC90Zzc3bHdiNHhPSFhXMEpOcDJrVVJYYkNs?=
 =?utf-8?B?bVRYNDZZdWJkQ0k0L2FhQ1VSL3k0SWI5aXJMNFEvZFRMK0ZIYXY1QWRTdVB2?=
 =?utf-8?B?azQwbTJTZUthYUtkNW5yN09SeW44SURYbDlrRWpRVHo3ZzNaTHEySU4wOGYx?=
 =?utf-8?B?YURGMTA0MWcvU2NXTVBGc1VabFhYdHVsZTE0QTJ5VnF0YjVQcHE3SzBUdUp5?=
 =?utf-8?B?V2pHTFZMS1FnYlFOdnpWZ2w2d2oxR2d3eGZtQjdyTHdXcUdScElPWm5mTi9t?=
 =?utf-8?B?ZkRMWVltbWdLbHNaR085R0NTZURndVNHVlFDcWt3UWs2cFJGT2lLWXdneFRL?=
 =?utf-8?B?WUV5VkhuSU95T1o1S3FBZzlxdnVrN0h3TzNSb2o0OWJGSTBBVnVlUmRRU05n?=
 =?utf-8?B?QVRZNjhVTEwyay90SndzQzBlSExnd3IrbGtrTjFrVGZBbzRSNnVvc3ZMbWJK?=
 =?utf-8?B?RTVzNjZXbG43V0IzK2JFeUZkWEs4Y0w3VEpTRnpobDF6Uk5sZjY1d1h0RFNX?=
 =?utf-8?B?d1UzV1dta3NWV3Z4Q09SZWQyNGxTU2VqcUVTUjFzenAvZWpWWk5JeWY4cUsy?=
 =?utf-8?B?elUrRUZCdnd1ZzRHNzBMb3l2ZnJaSm1tRDl5VU1td1o5Nm5iVExRQ3U4dUpZ?=
 =?utf-8?B?clZmY2g4RkJNa0hnZnduZitFUWxzejd2MDRNRWRZWDVEc0N2WDV4R0hTUmJP?=
 =?utf-8?B?OW8wWFFlZVBjbERlR1FpcUtzTjNIa2hmRCt3cUpLYWZNcVBpSEJIWUJWc3NL?=
 =?utf-8?B?aU9pcURwUDV1Zm9DV3B6RjE4YWxhQURwcFJZYllRdHNnN05rQ0UrZndERFNW?=
 =?utf-8?B?dnZ4RFNvN0VIK1RnVUllR3hlRDZ1QWlOOTVFc25ySVZEYUZwUFZhMGNxZjQ4?=
 =?utf-8?B?YjN3TEJWcWZ2N3BVZ0NkVnhITmJWVzZnTGlpek5zVEZTZW9RcldqNTVXNTNo?=
 =?utf-8?B?emlZZzlRYi8xNW1YRjVldGpmVyt0SDdkaUJneGxpd0tEalIzSkRyTEVhUWda?=
 =?utf-8?B?UWtiZ2VhaGFVcjB5T0hpQ3h6N0M4c2E4bnlOZXpRTG8wWmpZYkZ1KzUxSHFL?=
 =?utf-8?B?ZVlOci9oSHFKT0txZUhybmRFM1ZrZnY5bFQyMDlObERqY0R2dGdzRnhwT00w?=
 =?utf-8?B?aXp0SHB2WG1oeWNBSk1hd0Jpd0ZvbWRQYUJJRWZhdmEycE4yMUMrLzlBa2dm?=
 =?utf-8?B?N01wNGZkMk5TOWYySlVxVlk0TSs2aHltVkJpR1lCak5JNVVJRXowR0FVNXRo?=
 =?utf-8?B?T0ZZRWV2SVBGaW93VURqQUxlNkJ6WnFMTE15aHdWdFN1bkZ6SU5jc2gxQlJs?=
 =?utf-8?B?ZHFqb3FJM0F5RThnY0hhMHpSdWVKZlYrVXZNM0NpWThlNm9WNkpiOG1aS0Zr?=
 =?utf-8?B?MGQrUXZtZkpNWkZIN0tuWU5iS1N2aDlldkRYKytMVSsrRjVlclc4a1BiSEpK?=
 =?utf-8?B?eU5FeDV3Y1BxZ2krY3hkYTR5Q1kvL2JxcnBkVW93VlFMSWZ0S1dUckZiQzNu?=
 =?utf-8?Q?vp9+rH3v3snWh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEJIUWRTMmQ3V0tncFJXOW54eWZXdDlPQ1dnaW1rMnB6VXY0aHRoa1pWM0xO?=
 =?utf-8?B?SmpheFpUTXhSU09oZVZBY0t1bnhaZ2tIdDVrb2JlTU1acnA2ZlcxeDl5blpB?=
 =?utf-8?B?VVNXdUR0ZHc4MDNhZi9yYW5mZFhaWFo1MjFTWlplaE5GblV6N2Y3eS9GZm1z?=
 =?utf-8?B?T29WZGp4dHV2eWgyV2NMd1lDMlYzQXhrSXcxWVpNZEd0b1lGTWxubDV4Qm9s?=
 =?utf-8?B?cjVzWG5FUno4OVYzSnRBTWlRdFkxWWMzKytTd0dtMFIxMTRiR3ZNNDdEckkz?=
 =?utf-8?B?U0ZIR1AvaFk4anZNMUVuU3Q0RFpEcXdOZ3pOZnVEdnkzME5EanNuZzBsMm9k?=
 =?utf-8?B?amRMRWdGNmxzR3hobUJESzk0bUF1R2czY3JPaVJ0c0ZmL2Y1eGxoTU5NWU9O?=
 =?utf-8?B?M2VZRzNuczJLVEtYZEZLVFlhTC95RHBSQVhlMm1rbGRVektmVElPU3JYd093?=
 =?utf-8?B?K0tDUnNPMmlnUUxkQ2pEWGF0Rm0rbUtBYWdIanNOT3dhNzVmQXR1WUpSam4v?=
 =?utf-8?B?SExicm16VlBMdG9Gck85SnJsbXJ1S0hYY0t4UjRPU1A1M01OSEY0Z2swc1VY?=
 =?utf-8?B?SkhhUFQweHowN2ExV3NkUnF2cnRQMEZROXFVdXhPUzVlejBVaEtaVEpQTnJN?=
 =?utf-8?B?ZjJLSWh1OVdBY2g4VWtLbm1pQ1lKNnJOVkxFeTF5elBLck1VYi96ZEVLbkpy?=
 =?utf-8?B?dHZ1M2dWTFR0V3hFVEgwbnhBUExvaU1aVlJSeFJPUmNzMUNjcTZyODRZbmxk?=
 =?utf-8?B?bHpJUHdHbEZaZ04yY2xKSWQ2TDZhUisyM1cvN2JyRmlTTC9zQW5mWnF4ZVY0?=
 =?utf-8?B?ZCsrRFJ0L0lxSHhJem1NdkRSZkR6S1c4eUJubDRHUTlvbmhWWUEzYkhQWDJO?=
 =?utf-8?B?VEF5cy9ZNWg0Yy9ZN2RVckhnMDlLQUd5dEhHSHRrK2ZpclYvU1pBM3hmQmUx?=
 =?utf-8?B?cFpZUGZYWmJVSE12RGNzSkRRVmhmYzNxL290K3hPQUJIcDRIQ2lWSy9LZ2Fv?=
 =?utf-8?B?MkpzWnc0N0hXUURGc2UxR1pYZXo1ZnFYYVQrS29LOWNXQU9rQk1zMWZYQW9U?=
 =?utf-8?B?aDRITXFzWHFTNFJLNmZMN0hlcGprZEJ4UW9Fc2VGZVgyMHFjNVlDclU0T2d5?=
 =?utf-8?B?ZEdzSzhyLzhrOHFSTlBvSlVTNkpTMGRXOG9zYlo2dk5SQit5QVRGTjhyMTlx?=
 =?utf-8?B?RGVmQStjVjc0SmlPM0tLaUl4Mk4xVk5Sb2FmUkhNLzl3OHBxR2NBSXFtQlEv?=
 =?utf-8?B?RFhtL1ZvTmdUNTVrOUZLQWVnV0VNVDlPZXZkazBMZ0dNS0g5N3NkaS9hblha?=
 =?utf-8?B?MDIxOGtlTUwrT3lzWGF4aTNZOFdxZmpTb2hpLzl0a0Y3MW4zQUt4MFRoNENF?=
 =?utf-8?B?QnFJci9hYXJMZ3lJNWxkeEFsUTlaNml4Q1pmTEhxeDZESUxVd0MySGY2UmJ6?=
 =?utf-8?B?MFB6N05qSjRnRktyR3dUNitoWFJnYkxwR2pzSS9xc0o1dC9CUHd4MFB5WU1n?=
 =?utf-8?B?aDA0V1BqTXVhMXBrTXVLMDFiSlI5NVk3a1ZoQmdiL1crZjFRSFNHbzB0UEQ4?=
 =?utf-8?B?Rm9BalVsODdiZE00Z3Z6a1BKdDlNSDU2cjFuYlJueTNiV0pMRksvd0oyRmN4?=
 =?utf-8?B?ZThKczR0YWttQUpFSy9tditsTllvbFN5TUMrT1dOeUV6SURVeG1mN0NyMkps?=
 =?utf-8?B?dUtBS2gwellQYkdOZzV1K0xuVGY3SWt3eks1eWdvaDdMZTVqWW9HQTgyRXZn?=
 =?utf-8?B?WDNjeVF3U09ZU3MxMDFycG9IaStpSzd3cS9EZG1QeHpZWXlGcFJBZWE1OTYr?=
 =?utf-8?B?OEJFci9adTZPTVJZZVNwcFl1ZTBmMGVvdVB1YnU3YlJuZGtzbXZvZXRqZDB4?=
 =?utf-8?B?MHNkbnY0M0I0MExiUUoxcW1HMG1JU21hNkZxMXlrWDhRZnFKV2JFTnM2QjBG?=
 =?utf-8?B?MWpNZkxRcklXbHMrSzZ2R0pRUWtubnlTSk5ubHNBZHphRGlhYmZYN0d3RjN4?=
 =?utf-8?B?Z01aY3NaTThoc0c3ZGJveDgvOStnME9yL0F0alFrM3ZDNzZKelZQZDYxMnlN?=
 =?utf-8?B?SXFRQnNUbGR6cEIvYmRKSys1TytuQ1RERjNnVXp6dFhCMmNGVTY1N2h2SU10?=
 =?utf-8?B?OXo2NVY3Y0pnZ1lNSTFxT3hKaEZ4OTIvZ3VhYUZDTzZ6TUNvd2FWcVFvR2R5?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbeb0676-499d-4c70-0533-08dd232bdcac
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2024 08:29:05.2866 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6f6nmoId6fhYXNzBwlJSoeKj7L+tXMHsN9l/5LZ2kkNrx11SOI6SJiHSpOtQSWxA7Ty6suGl3YQ++aKC2rJLxgYBAsEs/bqMqKTCgcCSSj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6019
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


On 12/17/2024 11:37 PM, Mitul Golani wrote:
> Add scaling factors to scaler_state for a perticular scaler user,
> use it later to compute scaler prefill latency. Also to extend this
> when either pipe or plane scaler is in use.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
>   drivers/gpu/drm/i915/display/skl_scaler.c          | 3 +++
>   2 files changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index b71416ff5b7f..28b2861df42b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -710,6 +710,8 @@ struct intel_initial_plane_config {
>   struct intel_scaler {
>   	u32 mode;
>   	bool in_use;
> +	int hscale;
> +	int vscale;

Probably should fill these in skl_scaler_get_config() and add in 
intel_pipe_config_compare() to compare.


Regards,

Ankit


>   };
>   
>   struct intel_crtc_scaler_state {
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 11f73659c1b6..e00c6830ef65 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -423,6 +423,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
>   
>   			return -EINVAL;
>   		}
> +
> +		scaler_state->scalers[*scaler_id].hscale = hscale;
> +		scaler_state->scalers[*scaler_id].vscale = vscale;
>   	}
>   
>   	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
