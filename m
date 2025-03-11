Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25843A5BB33
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 09:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C16510E530;
	Tue, 11 Mar 2025 08:54:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/QhGZAg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0361610E530;
 Tue, 11 Mar 2025 08:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741683266; x=1773219266;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZQHKSUQRu7lZQT7az+Xw7nOe+WFOXa+npzSnTWktW8o=;
 b=h/QhGZAgEdEYBiWIyj3FPSYv+SzkDvPYbx/D2yT/jU0R+eR8cJLXEvZW
 HstILUlm4hhpr1O9xrRnTqmsRZQjAj3r+0lEmZZtlFrli8BVUCfzcfUJB
 jlaFCasp2ObhuqFf5txKKPn5Jsy9PJru8yZn8ZWQa7aqJ1E009abKtsuC
 IRtqMczSv7ZJpuoMXFM231m/LDE38Ef73Ga2SXwRX7qJ3BdptX+hN3yyT
 Cqya86O9Icqm7H6HjtkS0IGcyfsuKDaktP51R2fVRwzaMHWBt/W8qqxE5
 IDB6FXohGtb8ZZF7ZUtFqG1ykVTjW7kIGZWziOao7jz2etjkF1jC78c1Q A==;
X-CSE-ConnectionGUID: ch83x07YT8qxBJsM5qeeuw==
X-CSE-MsgGUID: cTAFby5xSiaalcVoJoO3gA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42742324"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42742324"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 01:54:22 -0700
X-CSE-ConnectionGUID: I2ho7CCkRC+VuMAqOlDyBw==
X-CSE-MsgGUID: 01twTYWCTUih74PU651uvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="151050813"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 01:54:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 01:54:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 01:54:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 01:54:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wRYrXN3yDD5YLO3NYVZ9Hvg1KLZDhqz2403+kI2LW/FtE82zQ9tGJCEpVH/MhVciOGzsi4ZxdfDr+epcdJmSvov2vyuju11Iyij3pqC4elpIXhReHyNZU/wHC+r5KEcAO1I9E4ebFGJDd+dn6bSI/NFLX1nGCNTfr+2nte7vhUfiIWfOD7+mgXOfwaYAugWL1nBmYrwaBG9MMpEov5gTmnw492rFeqWmSvfGvd3G1LPKKwcOE/z+0aaTTSv9qy8HFNhYg8IqTMEdb9MhgcJGFU0/iJsdEjOnHHQMAj9Xotl1ikVnoZzFf3JBE9iMiuCzqedbFRGhQn1Nur98r6wWAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2nKowQeaEmUmvIiOb4RHT3JuKD0VzetQoK+9XBdW2iE=;
 b=kk5hkirTvNySHQ/Cp5ahhYDQqZH/dfmZFTcoPoEN/RrBbEdYMj1nFG1Uj3egm4o2byRM8g0IISEQrq5TDHg2HXFub5PDo3uRekjZe0obY/Kj8TfJAdh0pLM6hXjTuW0WRM7BIbD7r55HZPHwgwEP9+6Kk6n+S+0mZg1XWLH9efmprsHRdCsk4EjHkVVn2YMDKBS5p7RRHq1To+a5bA/1GMB00idh4eCDOGT1Y1Oo3keSnEigZkaro4aPmfqugoJArNKEoMt5+vxB7THYA96uDFgYi47LA7Jl2v14bK+FK3pJ45w/lQBixvusMJm2L1FkJsPkU84NIIsON/qlscNjYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7624.namprd11.prod.outlook.com (2603:10b6:8:141::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 08:54:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Tue, 11 Mar 2025
 08:54:19 +0000
Message-ID: <0043dcd0-1236-4231-a189-855a7fe32251@intel.com>
Date: Tue, 11 Mar 2025 14:24:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/21] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
 <20250310121615.1077079-16-ankit.k.nautiyal@intel.com>
 <Z88qbNRLv4u6YOua@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z88qbNRLv4u6YOua@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0105.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7624:EE_
X-MS-Office365-Filtering-Correlation-Id: db5fcd63-c16b-4ef3-8ac1-08dd607a4f7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SmlJMnREVm9HTHZuQ2xqQkxzU3RqZ2FGMnZNM053ZDdnbXZ0Y1hCanI5YjR6?=
 =?utf-8?B?azhXUU9IMjZyZ2dtR2N1RkRqWHNOV2Z0UlFvUTRpUGlIVHpMc0cwc0luUzhD?=
 =?utf-8?B?Z3VFTzFKV1gvd1d0N1BDbnFlb2RzVytUUnpwNDFVRktKbjFZR1E2Nm0vZ0lm?=
 =?utf-8?B?NmVZbGwydVlSOHBMOGY5aVJRM2NiOEdDYzY3ditlelg1dTQvZFArdU1EWXgz?=
 =?utf-8?B?NWhPZEFUV1dmNVp6QU1FTlBZWlZsTnNFYzdINkF5ODYrVlVYYUovb210V2dm?=
 =?utf-8?B?U1JRNnJ3NnlaQWdJMHZ4dDRPcWRtVkpTMUpQL09LYmhpVmJ3cG5rRTFUUWND?=
 =?utf-8?B?ZS9CL20vRjcyeUo1WEFmZ0FNQTU2NWlYKzZNMkorbmxDTXBJRTdibERncnBC?=
 =?utf-8?B?azBaM3R0VWNHM0o4emtlRkFYNXlMMDgzRkZlbjhFQUpIVHJmdmxKdmJOZHRQ?=
 =?utf-8?B?NGlmekdJNU85dTJNekVacENubmdYRnlLRVhPVHF0UlBvRTVtdmZJMVRxT0hz?=
 =?utf-8?B?dEpkeHRPbEY3endLMlV5S1RsK3Ixd1JHZnI4cEtyUU1ZOXkxL29mb2dJV1VX?=
 =?utf-8?B?M29mRzhZV3FaZURmbVYxcGJYeWpqTnoxZWNhc1NZQWtldlVKWndFbGQ3S251?=
 =?utf-8?B?eVcvUUV5UGdaNVROeUp0MzU2VlpzUE5UTzFvc0ZBZkhyWXlZelkwU3V2L3gy?=
 =?utf-8?B?eHlXakRFR3RDUzhiWHRRbkdWYTBHd1ROMktvZkpraWFQT0dZSXdHc3dvVmNx?=
 =?utf-8?B?bnBUTVNoVkFlUTZYM0FrUHkrblNycS94bWpGajlZN20wZlFNZUkrVjVnajZz?=
 =?utf-8?B?T0R6bkUwdHpQMWsvNXpUZjMxUDhqNmRGclROcmtWTmJLSVlqa1Y3elU4S1VQ?=
 =?utf-8?B?UGQ2OFV5eHBsRjV1Vzl2UDlZMVdOQzFFTTNnMVZMTW5WTHh0RktBVXNlcDFu?=
 =?utf-8?B?U1RsV2hQby82bUZKYTFwN0txQzNiNlpSOVRSRHBhbEJDUmFpRzlRYnI2TU1H?=
 =?utf-8?B?Nm5Dc21QWmFIeEk5R0Y0eFpqYXh2S2ZPRUdqdEVYNlFBOENQdjFoUUlCR0sr?=
 =?utf-8?B?NzczVGYzdEJZamxrZzh6aE5yVGxtMHhpcjZXVDkzekErREJWTk0vZXdjM0pi?=
 =?utf-8?B?TWZCMGV3M1RScDZhcWhIdlZqb21OYUlPUFJCQkdYYmdOMEgydXJJRXFJRlhQ?=
 =?utf-8?B?NXZWYUZxL1Z1L3RJSk9nRVR6MmdwSEVaMXExS3RGL0NKd0dTR0FzbXpyZVd6?=
 =?utf-8?B?aG0wOWwyY1pwUmJFMXVSQnZSSndDQlRpSjh5aDBsWERDbktrMWtDbFhGSDJt?=
 =?utf-8?B?clR3UHA4NU9CaFRmcWJKSUZYZUxFWG5JT29zMXZWNUNMQ0JOamdmS0dQNFJC?=
 =?utf-8?B?dWU4aGdWaTd2L1VIMG50S2FnV1Y2OUhMN1g4L25FekZyM0N5b1RKOUxINGRr?=
 =?utf-8?B?bjZ2YlhYL21HbWtDTUpPRjF1Y2FiM2V6Q1ByM2lRMzdGbjYxeE4vNkNScW5H?=
 =?utf-8?B?aXdVMSs4RSs1V1dKckhHZWFzQUZlZ2dCaGw1dVVDZXNadVBOTlVDK0JPek5K?=
 =?utf-8?B?M09nbTBVdWUyOWcxMkFOaG1NN2Jwa0MyOTJvYUZHMHlJUTVGUFVrcUlsU01X?=
 =?utf-8?B?MmFKYjk5UGNFZHpOVzA0Z3BacEZWc1UyUnA0WkhMTC9lWlpMcEhISWRiczVn?=
 =?utf-8?B?WUhFSTlXbEkvdmtGVEdqd3FoQjNnZjNabk1lY21sTkhQNWVCVmR6azFIRGlF?=
 =?utf-8?B?Vjd3MDVJbmxFN09FOE9HRm93MklEL1JRaitUaEk2TVpKWmdFOW1mS25DWlhB?=
 =?utf-8?B?Q1k1ZWxHRGY0eS92WFhBZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ays5K2NyUEVFait1R2VLZjQ4Z09LSHF2YzlSY2VIamxNUFdkVVBwc2NOTENO?=
 =?utf-8?B?Tmc5R3FhaHBsY043Zk1lT1ltamlmNHpkZ2l3U3Y4SmRFTzdKdU51bzlGU25m?=
 =?utf-8?B?ZXJoZythZE9QRGFWRkVVS0xpMklSMWNXRzJEM1NYbDl1RTJUeXNrUmh1eEN5?=
 =?utf-8?B?QkN4anNRaFlMcElKVDlwNFF5dmhDSzVlQlZIaHh0dHkxdXMzYjVZVmtzVHVB?=
 =?utf-8?B?VXN3Yy9aaVVyMnBsK0NpUmxua2Yxdnlnbkgvdm1YUm9xZDFzaENhZERxUkhw?=
 =?utf-8?B?Y1l6eDd2bFA0bkpzMHpBb2ZTSStsUHpndUFodWtETlZ4VjVaQTRBWmpWVEQ0?=
 =?utf-8?B?VWZlL1pRUS8vVlo0MllCV041R0IvNzFlcXNnZmxSaWtkRU9JMlh0YzllcXRM?=
 =?utf-8?B?QlBZT2U1eEczdU1LdUk3dXRSWGRXV2RRMDZWeVhmZTlHazhHRml3NjZVNFRl?=
 =?utf-8?B?T0pZQjRhVDJQR0dmbW1XS1VrQ1puY3F6a3hSR1hZYVVJOWpzMEw3M2Q0UmNL?=
 =?utf-8?B?Wk9BdDYvdkdwelhxYm1DMEEyb3ppMG5zYngvb2dqNUdwcTFKc1poM2FncGpG?=
 =?utf-8?B?YXhOREMvOUxCTlh1eGxVZjNab0xSa3ZXaFJLSjhKVnVoeTVCWWJGKytocGxw?=
 =?utf-8?B?YVhZWGpBbmg4cTY3cW9zbk1rQVgvZTY4Mk05Z21yaFJna2xEZzFZejJraXRr?=
 =?utf-8?B?dDVLeUppNUFBb1B1L3RxME5Yb2RWcGI1UXg3NkdZT0tPdTUyOVA2Q1MybENE?=
 =?utf-8?B?TFpGcllMUDU3b3owZ09LZW1Nbm92OGxZekhMMXdRMWFmcjl1bGR6Y3A0Mmcy?=
 =?utf-8?B?TkdmaDNYd285c1VlRkhGQkNna3dXb01ISjFtQ2hDaFRzL3BDM29qZStQMmlp?=
 =?utf-8?B?cmM4dHJMemg0dEwrWWN6T1V6R1VyT1FGWW5jbWJrVU5yM0hnajFzRjhyY1dl?=
 =?utf-8?B?bCtZVUZ0VE1wbVpKME1ld09Va3NRN2o4dGFCMy9jcXZyOGI1dHpIM3VWOHhT?=
 =?utf-8?B?WU51empaTGlmREdKOVRyandINjBtVS9NTGxTSUc3YjNSdVJsd2YxRVo3MmxD?=
 =?utf-8?B?ZlltVDdFSXJqc3VBOU9RUFkrRVkxVmF0ZWdUVFBuWnlBUUNnMDFlMnJEdGZZ?=
 =?utf-8?B?WEZnbXZGWmhzdmJaTWhSNjhoY0RJb1F2QzFmZkpSWmxtU1dQdXg0bXpFWCtU?=
 =?utf-8?B?d3hObE1RUm8yaHA2SjIyeWRhVzBQWDVFNWR1RFdqYUVYYWpIMy9ncnU5SE9o?=
 =?utf-8?B?RDNEUkM0N053QjhHa3FrMGZlZWdEUjdEOVFGTTV6dWZLZ2FjUVVGbVN0MkZ4?=
 =?utf-8?B?WG1MTlZxL3RaQ21PR09taVh5dGZGd2Fnak80MjZCbkFENGdyclRiMmRYSkNi?=
 =?utf-8?B?TW03RjdGZ0RTNjBsRUhqc0ZJK2hDWDBrR29ZQlI3djVQSDk3Z2I3QjVvdHpS?=
 =?utf-8?B?TFloTjhpNGZmVUZtQlJuRm96dGlNRENLUEl5YnhMckorZnpwQy94bEZ3WlYr?=
 =?utf-8?B?R1RWa2FRTzcwMnJmUnJ6bitnV1dFSFI1NTYyd1N3bkxoakl3UmxyYUtPMnl0?=
 =?utf-8?B?QzBvLzJURGg4QmFOTnpWa0g5RFhiMTdzU002OWNsTUFsZm5KZGUvUm5ucFEy?=
 =?utf-8?B?NGNWU1Y5VXdBcGFsQ3ZIWUpROHRlV285dHNKU0R5UEJDTXo3MDJrK3M0R29t?=
 =?utf-8?B?R1Z2NU5BRmM0TjkyVkh6a3h1bklpM25razMwNU9yZVdaUHp1eWFkWUJjSWFn?=
 =?utf-8?B?NlRhVFlDSWlVWXlJUVNBeDdIb0hiQXg5VkNvdis3ZTJ2SmU1ZjdPRDBJMjA3?=
 =?utf-8?B?S0xzTXJjeTIvcTlZN0JzU1N6ajY5clFJdFhaNzlma24yZGMvb0RnSXc1Zk1E?=
 =?utf-8?B?Q3JLMEEydWxSb2s5Sk94SFYvdnNGb2tBVU9NK0lGUzFCZm1wd0RKM2hrNUtR?=
 =?utf-8?B?U2FEZ05UM2JUWVUxSXppQWRQZm5iOHJLL3RRVHdzOW8zU3N2c01GVXZsdDg2?=
 =?utf-8?B?R2R2dHBZOElWZlF3WEJLL3JidEdLbXExUkJ6L0NMMGVTR05UYXVnZHArZWZK?=
 =?utf-8?B?OElkNDdGNVErODQwWFVNTWREUWlFY3MxYU12ejR1cVc0UGRPTW9wYmpMVkIv?=
 =?utf-8?B?MVJ0TzNwWXlRUnFQdnZtUUs0Q3p0OHo0VmQ3ajZoZWNaZ2dDRHBVVUlUVUdr?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db5fcd63-c16b-4ef3-8ac1-08dd607a4f7b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 08:54:19.5566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lr50LQEXWN4IB5EDMsYjv/RcN9GhEYD6ig51/XNFRLDhb79DIvdL8Dh/L2jiLx0QBf/4E8gnFI2WcF1Rr+hCsoxJsvhtUhfNPZhYAWpuRb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7624
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


On 3/10/2025 11:37 PM, Ville Syrjälä wrote:
> On Mon, Mar 10, 2025 at 05:46:09PM +0530, Ankit Nautiyal wrote:
>> During modeset enable sequence, program the fixed timings, and turn on the
>> VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
>>
>> For this intel_vrr_set_transcoder now always programs fixed timings.
>> Later if vrr timings are required, vrr_enable() will switch
>> to the real VRR timings.
>>
>> For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
>> and reset in the transcoder enable/disable path.
>>
>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>> v4: Have separate functions to enable/disable VRR CTL
>> v5:
>> -For platforms that do not always have VRRTG on, do write bits other
>> than enable bit and also use write the TRANS_VRR_PUSH register. (Ville)
>> -Avoid writing trans_ctl_vrr if !vrr_possible().
>> v6:
>> -Disable VRR just before intel_ddi_disable_transcoder_func(). (Ville)
>> -Correct the sequence of configuring PUSH and VRR Enable/Disable. (Ville)
>> v7: Reset trans_vrr_ctl to 0 unconditionally in
>> intel_vrr_transcoder_disable(). (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
>>   drivers/gpu/drm/i915/display/intel_vrr.c    | 57 ++++++++++++++++-----
>>   drivers/gpu/drm/i915/display/intel_vrr.h    |  2 +
>>   4 files changed, 54 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index f38c998935b9..44f4465c27e2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -78,6 +78,7 @@
>>   #include "intel_tc.h"
>>   #include "intel_vdsc.h"
>>   #include "intel_vdsc_regs.h"
>> +#include "intel_vrr.h"
>>   #include "skl_scaler.h"
>>   #include "skl_universal_plane.h"
>>   
>> @@ -3249,6 +3250,8 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>   		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
>>   	}
>>   
>> +	intel_vrr_transcoder_disable(old_crtc_state);
>> +
>>   	intel_ddi_disable_transcoder_func(old_crtc_state);
>>   
>>   	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>> @@ -3522,6 +3525,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>   
>> +	intel_vrr_transcoder_enable(crtc_state);

Hi Ville,

It seems for some case where after boot we don't do a full modeset, 
intel_vrr_transcoder_enable() doesnt get called and trans_vrr_ctl doesnt 
get filled.

I guess other VRR registers get written, but since we check 
VRR_TRANS_CTL.VRR_CTL_FLIP_LINE_EN before reading these registers, we 
are not reading those and getting a state mismatch.

e.g. : 
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134383v13/bat-rplp-1/igt@i915_module_load@load.html

I think we are missing to write trans_vrr_ctl in fastset path for 
platform. I still need to look why is this showing up in this particular 
platform and config.

Regards,

Ankit


>> +
>>   	/* Enable/Disable DP2.0 SDP split config before transcoder */
>>   	intel_audio_sdp_split_update(crtc_state);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index bd47cf127b4c..d2988b9a6e7b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -1065,6 +1065,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>>   	drm_dp_remove_payload_part2(&intel_dp->mst.mgr, new_mst_state,
>>   				    old_payload, new_payload);
>>   
>> +	intel_vrr_transcoder_disable(old_crtc_state);
>> +
>>   	intel_ddi_disable_transcoder_func(old_crtc_state);
>>   
>>   	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>> @@ -1326,6 +1328,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>>   
>> +	intel_vrr_transcoder_enable(pipe_config);
>> +
>>   	intel_ddi_clear_act_sent(encoder, pipe_config);
>>   
>>   	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index f523a48e6186..cefdf1900e43 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -460,12 +460,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>>   			     0, PIPE_VBLANK_WITH_DELAY);
>>   
>> -	if (!intel_vrr_possible(crtc_state)) {
>> -		intel_de_write(display,
>> -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>> -		return;
>> -	}
>> -
>>   	if (crtc_state->cmrr.enable) {
>>   		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>>   			       upper_32_bits(crtc_state->cmrr.cmrr_m));
>> @@ -477,14 +471,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>>   	}
>>   
>> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>> -		       crtc_state->vrr.vmin - 1);
>> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> -		       crtc_state->vrr.vmax - 1);
>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> -		       trans_vrr_ctl(crtc_state));
>> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>> -		       crtc_state->vrr.flipline - 1);
>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>>   
>>   	if (HAS_AS_SDP(display))
>>   		intel_de_write(display,
>> @@ -618,6 +605,48 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>   }
>>   
>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	if (!HAS_VRR(display))
>> +		return;
>> +
>> +	if (!intel_vrr_possible(crtc_state))
>> +		return;
>> +
>> +	if (!intel_vrr_always_use_vrr_tg(display)) {
>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +			       trans_vrr_ctl(crtc_state));
>> +		return;
>> +	}
>> +
>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> +		       TRANS_PUSH_EN);
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>> +}
>> +
>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	if (!HAS_VRR(display))
>> +		return;
>> +
>> +	if (!intel_vrr_possible(crtc_state))
>> +		return;
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
>> +
>> +	intel_de_wait_for_clear(display, TRANS_VRR_STATUS(display, cpu_transcoder),
>> +				VRR_STATUS_VRR_EN_LIVE, 1000);
>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>> +}
>> +
>>   static
>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 514822577e8a..c4ee8a758e19 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -35,5 +35,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> -- 
>> 2.45.2
