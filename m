Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD98A3BFA7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 14:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC2710E7E9;
	Wed, 19 Feb 2025 13:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8rh8+vU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DBB810E7E5;
 Wed, 19 Feb 2025 13:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739971052; x=1771507052;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4w7fIuUMRFEpNUVfOMEGB7d6yZ5EgleHZZQhamUk2Lc=;
 b=T8rh8+vUGkdSUuIRq0Q4mPFTvIhFR55fYnQfUaXtb7UKwnSrqupac4zX
 grAzTOcfcYeR+gcIYo4IwONMgyEJBYTqkZri5lNP2zfrUk/0t1oYWKubl
 dy2e/mMnxuc1j0DNEZsLNd1dFof2FRBhep1z7IE/eoNJFyJQdlWVbesZn
 itYRK8hsXDj1mCpD06mvjHvrZTDAeSu65whsySJKnUOKjf8eWNiqkpalO
 NaqMRWdOBTBVW/fKsAQC9dQVIyN+9MuvN7gzwFvL/1mBSQLHcgQXpzpr/
 qEYPHWb7V45m+/g67rGfOcZ/lICdRunQMrxFkOIIzLAGMK56UjyddnoDr A==;
X-CSE-ConnectionGUID: pVJjIr4zQXeOJbdZs5MQhA==
X-CSE-MsgGUID: /yze2GAAT7C0FJ8WmBd0yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="58111855"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="58111855"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 05:17:31 -0800
X-CSE-ConnectionGUID: 09R8gbKHQfWmQyL0/jdDfw==
X-CSE-MsgGUID: TAFyohY0SPmmr8CoCET74w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="145577480"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Feb 2025 05:17:30 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Feb 2025 05:17:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 05:17:30 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 05:17:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xnI5Ef2dvXimmphsSVbDAZfDBVhBtHI58yXfqg2lHRj36agFwF5ujSG7s2Vix7ZzjQA32GhG9hzoap5QBCABDqvuMF8r0wAV83hrtb5UqKm6YKS51QzJP/Uy10asSs2Q2x69Z03kdqtbsEx9/0GVBVk58YNIhpT6EAXgEtrNHoskjN18caFhue+dgcA6879JYzeo7deX4oKRyE8IOeOKcjl2kZqEHi7JUVSbjKtrIjewEBney9jA6oE6JawELdgcOOosTghy8I9aVPPsQI0CiAcWtO0QZXQfr3HxvTTWq+meV8qx4C6oUsOvIgGWqSvgsXD7lDMTEfLlPcA8WByLFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iis0OCPiEMP3LzMHEkTxH7RPXVm2vsQhM7n5iRJDziE=;
 b=r4Pb7nRjU97wflU9l7KcjOv8jqSl1nS9lBB5r9y8SsCVxakKTp9+FlG4VYqbXtxtkyRVcPsgMwBDVPAG1mg1yede9I8/pAiW5jmsG6ZVXPeuWcbJl6K4uXb+K6fxAnt03hNDZ8H1UemMw8h6oad7TOja5Z+BZAHcL3c2TyXJ9XfCH7ERK55Xhy8HrbEMdKLXRu6ZfWJ9K0NnGSxCRmQP9mDiCTWl+KY6jTukDwns49uM9/xK1hpXXBfhBuoTTDFPWPVjJlRcohoDL+HE5XVndJZKA5HUN2u0dQhkljdGQ6mAl4EOgjW1Hg8qwoegpSozguIcS/tVPdZlQeOmfw6Iqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6007.namprd11.prod.outlook.com (2603:10b6:510:1e2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.18; Wed, 19 Feb
 2025 13:17:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8466.013; Wed, 19 Feb 2025
 13:17:27 +0000
Message-ID: <b68b1bab-9e33-4035-a680-24ad861b957f@intel.com>
Date: Wed, 19 Feb 2025 18:47:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/19] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-17-ankit.k.nautiyal@intel.com>
 <Z7OBP8kdGZLtWCAK@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z7OBP8kdGZLtWCAK@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0177.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6007:EE_
X-MS-Office365-Filtering-Correlation-Id: 060d122a-7db7-444b-3b83-08dd50e7c16c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VEx4dkVZajhRdy81bnJGRCsvU2F3WE14Ly9uRnBkSjg5ZHNHTW5sY3dLYmR2?=
 =?utf-8?B?clhqSXJTM1ZMWFJTZkJaU1RNeTJHdjlsVWcza3FMaHIyaVJyaEEzK25Sd295?=
 =?utf-8?B?UGpzUnY3NnJWdTR1NkdKOXdLSythb1ZNMjY3cERoVmZtMlB4TmNSUnVQU2R1?=
 =?utf-8?B?Z3VoaWhQWFF5SmQyVytycWlIczErZkZpS3BwSzY2UE9NaDM3ZU1kMWJCZE52?=
 =?utf-8?B?WFBiRGUvMUFqd080SjFLNkV6Z2x2N1IxSXlXaG5udC80UzdjWC9HWWFpWkts?=
 =?utf-8?B?MHR1b0Y4eUpWQ0xON1RCcThNWE0yNXZhWlFTMXJ5cTMwaHhDaG5pb0R3K0Rx?=
 =?utf-8?B?TnUzZi9FN2NZcjJ5TTZTZk81RXhNS0xHVWR0QXdtRXN1TVgweXVGcFhSMGxm?=
 =?utf-8?B?MTY4VmZNSmJoZTd3RVBRWlc1bTNQS1pyZnFSeDB3WGtLdDNrT2FZNHJtV08y?=
 =?utf-8?B?MC81Znh6TmVWNEVRb3o0VytmcXEvaDRITnduck94akhielRBYmI1T3FlNGYy?=
 =?utf-8?B?SnIyQXFGYW1maEUrcHh2UGFFT2UwQ1JGS244MHVzU09jWGd2MU1zeUVSRmox?=
 =?utf-8?B?dXF0RDY3T1U4RnFVNUxxaGtZekxJZ0tEQ0N3MTNJamltbWR2ZUZJMFFrVFVH?=
 =?utf-8?B?eklkb1RaWEdKOUJjYXpIZndvUkJNT2s5TzdhbjBTSTE4UnN2SnUrTkQ4aUlZ?=
 =?utf-8?B?WWNBckMwY0RveExsdGNhbEdtMG9hTDd3bGVxNDhaTG13MDhaUlJBK0lvNlI3?=
 =?utf-8?B?UERMejQ2QkY5alJRMThZSlpDbUpKVE5lQ2tzU2lHL1JpVk53K2hxNXpEcVNs?=
 =?utf-8?B?Ym41RFhwSVM4Zm55N1Y5anVvRDlQVzNGbUFOb09Kbk10SWw1T1BaczN3Skc1?=
 =?utf-8?B?NzlNcVJZRTBWR25qVzAyeklZR3pXRlBGQXh2T2xiZlQrNG1HbDd6RzQrSFRn?=
 =?utf-8?B?NzBzK1A3OTdmRzJSVDF5OGlvZVRZNVJqUUpMcTBySjhOMXlqSzZ6TEdvZFd0?=
 =?utf-8?B?eEdWWW5NWnlvdjI3VWR0MDB3ZW5DWERoZ1Fzd2tDMnl5VFhUWXdPU0NTdjZT?=
 =?utf-8?B?Q1habkY4ZW1sTkNhUTZkeFg5ZElBeHI1aEZ5U1dGZVN3Zis0UDU2UjR3WGdx?=
 =?utf-8?B?enk1TlBrMU9VbTgxY050dkt5Q0tjV0Z3YU5ndndTMmcyMkhPdm01Q2NWU0Rj?=
 =?utf-8?B?TGpmVU1oM1hIK3Ayblp0cUdCcHAvc3BhS0E0bDR2NE1aMWVQS0VDOGxPUDBE?=
 =?utf-8?B?OWxQYlVuUDBUVmt5alNuQWZEcnpvRFlRR3JsTkZ6dEhLWnpQM1p5WkdDVnpt?=
 =?utf-8?B?ZDd4d0tmNnY5cjRpM0tRUFhPems5VEZRVHZnbUxRSHJxNHdnUmdmRkkwM3Vl?=
 =?utf-8?B?YkR4NDdlOVdMbWt5V3lNT3J3aDBuelh6emZFYmRpbW9JOE9jS2had2ZEM1Bw?=
 =?utf-8?B?WUthRWFCb2dWL2FiTitBVitIM3o3YlFlQXY5OU9RL1JxZjZtQU5DajVWSXZq?=
 =?utf-8?B?NlI5YlRlZ3pLOXgrUW1QaGV6SkVnVHprWUV1amtCTXc5WGRGSisvVVJpUkxS?=
 =?utf-8?B?bUJPcXYvQTZkWlZqVHl6SkVMa3dDQ1REL0hBcmxqZVA1b2k4alVTdk1sUEp6?=
 =?utf-8?B?TVZBWVdmVlNHT3JiMC9acDBERXA3Rzl3UkJGdlBGRVNsc25yVVN5WndoT3Nh?=
 =?utf-8?B?MVFvcjJBSXB1NFdob0JDWGc2di9LMGIyTEVZWkVPUWhDQ2hzazRRTSt2UWJQ?=
 =?utf-8?B?bTNKcld5aWNtSkhsdDZhU2VNQVdqOGcyMk1qc01jc0FEcUJVOWUzQnFiaUlq?=
 =?utf-8?B?bkN3SlNmd3VHTDZSUEh1UExham05eDd5OVg1dXNScWtRSk5BajRFcm9DWmMr?=
 =?utf-8?Q?hS2XapjycLT6T?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDh4eEZlS0JTS2RxTGh2emNjMXEyZ2hjM0dYQlF3Y2NPcGFpTHJxdlJyMEtq?=
 =?utf-8?B?WjBidytwVlRYVjhsa0lRNUZQcVhwWkRLWm1uTGVsVXc2ZGRIYmd4WlBSNUtw?=
 =?utf-8?B?eWZSeHdGSkU0OHFyVVBObVNaSlN0SU5zcytabUhxQU0wbXJIV1lnN3FSVjVs?=
 =?utf-8?B?czl5bVUvTHZ2bjRubnZCM1owUUt4dW5PVERGY1Q3dkxwa0NjMGlYRmhQdFZl?=
 =?utf-8?B?MGR6bUFaZ0hIM2c3OE5WSzZBbWJsL1VMVTFwQVpyTG9MZ0ZNZWluR0ZtbDh5?=
 =?utf-8?B?ZFlZc2ZDbkRrS3FDZmtjRVd4REYyQUtuaVFVRHZyNnRsRUpoNS9JbXY1Q0xx?=
 =?utf-8?B?ajhKR1lIZ1BheEtIcS9qV3oxQmo1dVRPakFrbkRaRnV2YnpwSW9nd2Rtd3JI?=
 =?utf-8?B?V3ZuYnVXOVhnVWZRb25VNlE5M1JpSHFwUUczanFpVlBIMUUzc2xkaUVsOGZH?=
 =?utf-8?B?SStMdmhoVWFQNFcvNzhydW9Jb1Jod3U5dFh0Nkc4YndMZXBWMytrdHhjSHBj?=
 =?utf-8?B?ZC9ZZkx0UFVLTXJkNDVnVkJRb09sczNQZUc1aXd2K2QwV3NrTk1XVzRWeFRP?=
 =?utf-8?B?aFZTWnhWL3VmeDh6MFB1WXE1bXh2dXNveVI3RlA0VFdkL2ZCekh3QWlyemsz?=
 =?utf-8?B?Z0FnTmtHeWI5V0IyRndoaGlad3p0NXpmL1g1NDRvQmwwYVVFZjJiaHNaZ2gr?=
 =?utf-8?B?elY0bTlIcElhWitPVlZxY244NHdzSmNvOWg1WFJwQXhYWkk2V3dBZkF3UTRN?=
 =?utf-8?B?MjZKS1EvZy9GU1BLdkZXQVdZY2xWS3VFMGhYR2lrdi9iUzZCTyt5Ylo3M0pm?=
 =?utf-8?B?eTBRLzl6MjR3UDNHUDdXSEp6YmU1NXdHTGVZWHhBanlPUGxPb3YxcGx6ZjA2?=
 =?utf-8?B?N0ttZ3k4SWc4dHV1OENQeG5yVUFIYVowTFJpZmEveHZWMWlvbkxIT0VYNVM3?=
 =?utf-8?B?ekJIM0x1eFNZeDI0Zmg0MUsvOEJNN1lQdTUxU2gwTUVkdko1VS9BS1k2Y1Fm?=
 =?utf-8?B?K1lMRWh1M1BhRFNPMzVNNkFQOWxia1ExUHBDOWVidjRJS2tlQVRkUVNiVFFk?=
 =?utf-8?B?bFl3SFNDQ0w1MUZNOVVPaFJFMGdtNEN6eXhKR3NsckJUQUYrN2ZmZDU0Qk9q?=
 =?utf-8?B?S0VGUEpoUlg5UkRaL0pzcEJFOUhvY1ZZbmFBZGdxWGJMZE0zN2lZa1BUUHM3?=
 =?utf-8?B?RHBobUlncW9BbjVzZVZsc2xvcGF1WGFSQ0R1c2tRTTUyLzBSZmM3YjJwb2cv?=
 =?utf-8?B?aGZlem1jNkwrY09GdVgvd1Q2RmNtS1pQWWJOc1JDV01MUzZEWm1VM2dJTVps?=
 =?utf-8?B?c2J1bmhKSzdrYklsQ2VSbGRJNGw4NTI1TEV1QURQMGMvaEg2Q2s5V2hQOE5P?=
 =?utf-8?B?b2RmbUNsOHB4dHIwSFBnQkxaaEpHUEtjSGJsNUZUcml2N3hzMDZiaFhlK2Y4?=
 =?utf-8?B?TGJQSVpWc3FUaWRQYVhTU3MvTGFOUUJjSWprWEFXbDZyb1JvSy9sTFpqVllB?=
 =?utf-8?B?NWo4NDdmVEpCVXV3TnZDaEZFR3FlRzllTEtLS0NaY1A1UjcyT3hWL1U1cjZP?=
 =?utf-8?B?YzBGM1ZBQUhxSm5MY2lGblQzL1YwbzUxYWFEcXR6bUxZcm83NGVjVUp6emVQ?=
 =?utf-8?B?U1dSeUxJOWl5dE40SXRxaC9XazhzTUVxcXo3cllWK2FleFJ4L25CTSsyYklT?=
 =?utf-8?B?UlRnTEFSd1ZEQ2RqTUlXVlA1bjdVOWpVU2JtV3VMbFRjaFBKZy9CQXhvU0k2?=
 =?utf-8?B?ZS9VaXVJaHJ1ZTdBL0dsUzJDWTJMYkZ5Q3ZnTlY1anBnb05ZdW5mNkl5Z1Vh?=
 =?utf-8?B?RUt3b3NaRVhXaGYwK0JNNlVLZWFUN3FnMHRzZ1RPVHVrVEpKRUtZZHhaMHhx?=
 =?utf-8?B?N2tQZm92YkY1NjJocEU1cTZnajlkcnZBZVlCQlpUcjVra084V2dMSHphd0ZR?=
 =?utf-8?B?amJjaE1LU0pSa2FIQVcrc2xibzlDelBDemhEcXZXY1lmSW1kaURmUzJVZ3Bt?=
 =?utf-8?B?YkVjMmdBbmNhcG5CWlhTUVlLM3huV0lPZ0h1eVd4Z0tmREpWNTdtZldrc1ow?=
 =?utf-8?B?WC94bzlJVE5ITWNYQmIrb1ZlUzNYbW5KbU9JeGJFR2hNK1l1VnZmVy9ZWUxR?=
 =?utf-8?B?ZGpmOUxsZG5vYks2M2IwUmFNVVNOb3QrSHBtVkxyMG5yUnNueHlsQ0FPemJ0?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 060d122a-7db7-444b-3b83-08dd50e7c16c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 13:17:27.2860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZWW1dFGtitMDCWKYyt2L2oFGokMo2JVpIkrXsy9wC06l+5rwzmlEiM5NdpBZ1/hdXiRf1cf6Z7JZlQlaIOS9OIXEpPZkBpEJcJfdSH1UFjw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6007
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


On 2/18/2025 12:04 AM, Ville Syrjälä wrote:
> On Fri, Feb 14, 2025 at 05:41:26PM +0530, Ankit Nautiyal wrote:
>> During modeset enable sequence, program the fixed timings,
>> and turn on the VRR Timing Generator (VRR TG) for platforms
>> that always use VRR TG.
>>
>> Later if vrr timings are required, vrr_enable() will switch
>> to the real VRR timings.
>>
>> With this we dont want to reset TRANS_CTL_VRR Enable bit while updating
>> the vrr transcoder timings.
>>
>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>>      Add TRANS_PUSH while enabling VRR for fixed_rr.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 10 +++++--
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 29 ++++++++++++++++++--
>>   drivers/gpu/drm/i915/display/intel_vrr.h     |  3 ++
>>   3 files changed, 36 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 66c5ad46bfea..c9d1c091b109 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1755,6 +1755,7 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
>>   
>>   static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
>>   {
>> +	struct intel_display *display = to_intel_display(crtc_state);
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> @@ -1770,9 +1771,12 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>>   	}
>>   
>>   	intel_set_transcoder_timings(crtc_state);
>> -	if (HAS_VRR(dev_priv))
>> -		intel_vrr_set_transcoder_timings(crtc_state);
>> -
>> +	if (HAS_VRR(dev_priv)) {
>> +		if (intel_vrr_always_use_vrr_tg(display))
>> +			intel_vrr_enable_fixed_rr_timings(crtc_state);
>> +		else
>> +			intel_vrr_set_transcoder_timings(crtc_state);
> I think intel_vrr_set_transcoder_timings() should just program the
> fixed timings always. And we shouldn't do anything else here.
>
> And I think the VRR_CTL enable/disable for the always_use_vrr_tg==true
> case should be done at some more appropriate spot in the modeset
> sequence. We can add eg. intel_vrr_trancoder_{enable,disable}() for
> that part.

Alright. So will do the following changes:
In intel_vrr_set_transcoder:
-Avoid modifying VRR_CTL, currently, it disables VRR_VTL if flipline is 
not set, and also writes guardband and other settings in VRR_CTL.

-Instead of setting variable timings, just set the fixed timings always.

Use separate functions for enabling/disabling VRR CTL:
-As suggested will create intel_vrr_transcoder_enable and 
intel_vrr_transcoder_disable functions.
-These functions should handle VRR_CTL settings for platforms where TG 
is not always used.
-I am thinking to call these functions based on vrr.flipline:

if (is_enabling(vrr.flipline, old_crtc_state, new_crtc_state))
     intel_vrr_transcoder_enable(new_crtc_state)

Thinking to add this in commit_pipe_post_planes() just before 
intel_vrr_enable().

if (is_disabling(vrr.flipline, old_crtc_state, new_crtc_state))
     intel_vrr_transcoder_disable(new_crtc_state)

Will try adding this in intel_pre_plane_update() after intel_vrr_disable().

Please correct me if I have missed something or got something wrong.

Regards,

Ankit

>> +	}
>>   	if (cpu_transcoder != TRANSCODER_EDP)
>>   		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
>>   			       crtc_state->pixel_multiplier - 1);
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index e247055bc486..4151fcd0f978 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -456,8 +456,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   		       crtc_state->vrr.vmin - 1);
>>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>>   		       crtc_state->vrr.vmax - 1);
>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> -		       trans_vrr_ctl(crtc_state));
>> +	if (intel_vrr_always_use_vrr_tg(display))
>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>> +	else
>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +			       trans_vrr_ctl(crtc_state));
> We should probably remove this VRR_CTL frobbing from here entirely,
> and just always do it from the intel_vrr_trancoder_{enable,disable}().
> And obviously for the !always_use_vrr_tg case we just skip setting
> the enable bit there.
>
>>   	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>>   		       crtc_state->vrr.flipline - 1);
>>   
>> @@ -536,7 +540,6 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>>   	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
>>   }
>>   
>> -static
>>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>>   {
>>   	if (!HAS_VRR(display))
>> @@ -616,6 +619,26 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>   }
>>   
>> +void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>> +
>> +	if (HAS_AS_SDP(display))
>> +		intel_de_write(display,
>> +			       TRANS_VRR_VSYNC(display, cpu_transcoder),
>> +			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
>> +			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>> +
>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> +		       TRANS_PUSH_EN);
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>> +}
>> +
>>   static
>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 514822577e8a..9259964978b1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -12,6 +12,7 @@ struct drm_connector_state;
>>   struct intel_atomic_state;
>>   struct intel_connector;
>>   struct intel_crtc_state;
>> +struct intel_display;
>>   struct intel_dsb;
>>   
>>   bool intel_vrr_is_capable(struct intel_connector *connector);
>> @@ -35,5 +36,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>> +bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>> +void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> -- 
>> 2.45.2
