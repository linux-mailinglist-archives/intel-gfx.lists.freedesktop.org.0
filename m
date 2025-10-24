Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A336C067FC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CBA210EA8A;
	Fri, 24 Oct 2025 13:28:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MzWrKmSD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8508E10EA8A;
 Fri, 24 Oct 2025 13:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761312535; x=1792848535;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uHLnH5Fl8Nq5rnwXJOaEaRX+vrgkz3aRIfywOKyNvYs=;
 b=MzWrKmSDPMSofGZUJPlMuMQuCbGF7yl8BXIBtOr/Tx1brWudoLgcjdCZ
 BP7+08pXds2YC9Mr8CC34vxM50145/kNhURBLKcmcfC9/GBIQI2Q+qtuI
 hdwIzDMQG0Cw7P/l28maG7n+FHVu0M8Fqp2b1u7vWgbhFmI15p6bXkusf
 ScFLAQ5LN+Ff9aYI8Io1TAjeW9kjOA4h8/Iu1cXY+RUvc028keI6o6RxJ
 MLyuBSJ8eRRCcnZNFceRsxIO/P934WM8rHg2ACPSDo9TWBnwGubaHPLiG
 TVlEyn2xtEG1JPoMQdFWd1ukUvsRN9Fx3Blkn6DQAdcQIwVXpeI4OODOQ A==;
X-CSE-ConnectionGUID: iYvlaifLQO6mPKURT6uZ4Q==
X-CSE-MsgGUID: 6v7ViXhoS4CdHRrc+OWomw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="88962236"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="88962236"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:28:55 -0700
X-CSE-ConnectionGUID: w0JouX8qTn22FhztZJGMmQ==
X-CSE-MsgGUID: 17gfN0isRryLZpYbOuEK1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="189556731"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:28:54 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:28:54 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:28:54 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.34)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:28:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qNzHLzcTWewvsiRx05Xad02SW2RmSCW0/NLeQS5fWaPlWL3wcMd/Cwqa6OIVdo9+rB03H0fyIQt3X7elePL4xNXB5Gyc0h8nqhCcrAX8LUWfY99k85ndosoxnL2OaZVlxvHEBcj+Ux6HT2h4LUOE+3Eo2eQ64ufGULqWVTbB5coj34bwCiDiDLF3yT2IGFC6Yppe5QX/BWbUdRVsvZI6FGhwXuii3C45e/OCmINUQ0wNTS16ehqmSwmokU/eSspRz2qeGwUWKcsqR0n9vfMJZA6GNH5OxbEwrma4vCfo9QHU8kC7Wk4WGr90RORjeYsbax9RdUb0FPD6Fw2JmSyB7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oWshmq3z8uPKw0+zAAo630uc2ncL6jgR8HSlnylG4pY=;
 b=FCQIXNdLR5UcD+UOQ/A9HCDXCs9aVXv3JLj10dLkfcJewyIzeUWFBLv7bBdH/1u7JL4T+504tF+yZusyH282OYqgFSg8/Teua/niTVksqR0TV5Xnmlgpwq12nOInJYJz/4F0/7/Mozc3DLpbtjXGYH7L3KH4t6ddy+1TDtFjza7+SpCTjJzpCgPIFcYf/W/o01Nrz8SHVdll8qRMYtqt1mYeEm5i7vzEIRm1CrlHCC+UOZVBurvc2x2hEoabBBICeuc5LbF0Bam2B6bBVlLP6w3arSSRv6BtAlE/FeXowmN4yAhrRJNPqdr6XUrLyOaam4/P4Vg2WgAZXfqsp5pIIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6369.namprd11.prod.outlook.com (2603:10b6:208:3af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:28:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:28:50 +0000
Message-ID: <ea8797b8-346d-429b-ac99-4b6ba0b3d470@intel.com>
Date: Fri, 24 Oct 2025 18:58:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/22] drm/i195/vrr: Move crtc_state->vrr.{vmin, vmax}
 update into intel_vrr_compute_vrr_timings()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-7-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6369:EE_
X-MS-Office365-Filtering-Correlation-Id: fd595417-89de-4d9b-8bee-08de1301446d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWNLYVM5SGRvNnk2ekZ1TDVXZUhjVlF5KzRYZXhRYTBIS3FFWjd5dXJURU1o?=
 =?utf-8?B?RmhSTUkxY1ZFK2hwK0o4bmppKzBKTEt3YmtqSFg0aWJYSDBJempZK3gzcVR6?=
 =?utf-8?B?TUgvcGZtUitTalc3RWFWTzRTZVpVTmRPcWNqMG8rbXVDTmhJWFMrV2xYKzhX?=
 =?utf-8?B?MGRDT1kveHRNak8vRWFDdXlxUTZKOTJxaWp0S08zZVdFV09OcTdpK3p5K3Qx?=
 =?utf-8?B?SG9XWWxZUUZsSmprSkh5UUtWZWI1c2Rnd1ZrYVBQTmpKMlZNMlFUOHBqcEFW?=
 =?utf-8?B?MGI0WDVJeU50NzZ6N0FCanJWUXd1RURVdUJUdEVjZmFCQU9LdWY5MmZONFdn?=
 =?utf-8?B?bndEUHlBUS9mWnJkTnhvdzc5SksxUE9qbURpZFJUSVRGSXVJZlorZVBZVGFl?=
 =?utf-8?B?RklmSFJ2cTRGeEl4cXNBL3loaUU5L2tObmRjR0JBRi84Wm5oMkhsbFYraThR?=
 =?utf-8?B?NE5DTVRrMW5QbXJyZVNtS241ejVBTDVCL1FoZ0dwTGg2UEg0WFM4c1hVa1ZJ?=
 =?utf-8?B?YTFzem44WVpOSXhTUFkra2pSU25sVExBSGQ2U01kSkR0bXZ3MFFackJjN2l3?=
 =?utf-8?B?dkdiYkZBa3grSjRqTFdldmdvOVpIN3g1cy95SS9iSW5uMjIrb1J0YXJaODdi?=
 =?utf-8?B?K3Q5T2ZiRGpaMFRSNnhQWXpWekh6N1dTKzdnWjlCOStKNVNNWDROUkM0QUxr?=
 =?utf-8?B?dVN5ampUQ2ROd2FqQ2Q4cUsvbTFvMWU0cWZLd0lOM3NJNXMvbmk0Nk81Wk1T?=
 =?utf-8?B?TzlKd3hWdW1FT3pFTzM2OGl2UFlObnVhUkdQdE1CUTJqRzJNK0s3eFlRZTVQ?=
 =?utf-8?B?K0VMUk1vbXpKNmZoc092ejlNVXN3bk84TE9Sa1FINk9pUU8yQkp5WFdhVmN3?=
 =?utf-8?B?VEtMMmdVUzZQeno0b3ViMmxCQlZ1dy9od2J4alY3NEdPNjRCeTVMbkpYWWtR?=
 =?utf-8?B?czRJb29TT01ua2pLT0d3SmZJcndNRGFkK1NrVmg2YTNIWjNPOWJDVktZcmpQ?=
 =?utf-8?B?R1N1elJHZ2JSeG5US1VHWlpMdmNRSlBpZmdUck5FN2hnUjl5TmRCZ2swQ1VT?=
 =?utf-8?B?YVJwSkQ1ZW43cWZnc1lTNVdmSmxiWGtsa0JlM2FLVkJlUlRodENXSWhSdWVN?=
 =?utf-8?B?eWdqTTNuRTdPZFBueTVZWVRsZGk4QVo1YUpWT0I2aVd6Z282c3Q3a3FMTVMy?=
 =?utf-8?B?ODhSbjBCYXFVM1hrKzdDQjNXMzcrcWJveUFNVDJDRW41TFRHNS9OODNqQStO?=
 =?utf-8?B?TTkvVmZydU5NdmJsbWRxWU8vTkRXa0F0R2k2eHE2dWo5RTBEeFk0UFlOTTR0?=
 =?utf-8?B?bXVXdVlNaTJ6dzc1R1laRy8yZEdnL29OUEFpbGxoOFZ6Mzk4bzl3ckFsMXd0?=
 =?utf-8?B?dWZmeDV6cDAvVktpYXdxaEFyQi9ZekdBWmpXb2RiSGdEcC9BdURNaDJKdFVz?=
 =?utf-8?B?RmNYMmFlM0h3OUJOQ25IVHc0L0JSeDBMVnliR0Nwa1JsTndnS3pySHI0dm1W?=
 =?utf-8?B?Vk9RcUFkY2M4Ulg1ZUgxemNRK0hFYko4UjVBUUVyZ1NlY3Y2Vk1RZjB3dVVs?=
 =?utf-8?B?aDJCSEpTV0ZaTnpocmdmRXF2OVdyYXdkVXltZkdLSVZEU2xmcDZzSVkwWmww?=
 =?utf-8?B?UmtvRHkwcnkyZVQ2QzdNUGVkMUJnQ1V6UXJJVmJjaWwrZjJkZzlKRGdIM3FY?=
 =?utf-8?B?RTY4OEdZWm1wQ1JkZUhvcVczQ0llVlQxejRtM3dhNkZRcVNNMThRenZOcGQ4?=
 =?utf-8?B?UUNuU1MwOWxDcWhVdUxROXlxMFVPNGYxTGdWVDVHRjM5RWYyVjJxQzdUZHJB?=
 =?utf-8?B?d0lsOWdjbEFJdGU0a1Aza1ZSRkpjWGVLb250YnJ2VGxwaWxnVExIWFdNQzA4?=
 =?utf-8?B?a0dVcDgybmx2TWU3OTlkN0tEOTJ5ZmJzbGp5SFBvVVMrbml1VEFPa0hweTJU?=
 =?utf-8?Q?v3106jxsaZfee0vPWFGjbW9MjQ4GwyP2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjhUMWdxenhvaVZrWGcxMU11ajVkMEtRbEJqWUtSbGhOR2JrN2FXTW5qZTJr?=
 =?utf-8?B?WnkvMnNRcDd0N3dTYTlxNHdpM2JNa1Nsa1ZBbGRzY1I5WVBXMldva2VaWllO?=
 =?utf-8?B?cTRxcnFacjhQWHlsOEhzSHVud3gxS01rVllXaUNjWjVuaExPSFVDM3JkUWU3?=
 =?utf-8?B?RCtkc3l4MzRmRlJmVDQ5eWdZSnduMW4wU0JqcjkwWHhZTCtjTExEZEZGUGNm?=
 =?utf-8?B?a0l3cU5ScnFCQ08xbDZEOEovcFdGK2wzYitKMXFIclAyc2QwR3BCUjEyM2VU?=
 =?utf-8?B?dUU2cmtINGd2OGNVdFZuWERGa05QZFZFZlRPV1J3am5HUlJ2UXYrakU3SDZU?=
 =?utf-8?B?amlpTk9LMGlyTGNkRE9xdDBOb3lDb1pnL3JxUGppY21FNkZiZkdNYW1OWDdh?=
 =?utf-8?B?S0tjMHVha1J4bGxBUWxmVGtvOGtOYkh4Ynp5M1h1a29tMHBPMUtjRGZBdmlq?=
 =?utf-8?B?a0tJVGRVaFUyTnY3QU9iTGR2RDNjbjhNdHhuYTlHMDh5ZkRGZXErWVFmTmFF?=
 =?utf-8?B?dU9kUlZLSzh4TG5qMGZPOW9ZK3hTK1RDZWc2azBHNDhvbEp5L0FaVFBmckNp?=
 =?utf-8?B?YzU5VHNzemo1dkx2MVRvZ09kNFFhaGpOQm9qNXpIMFdhNG5iYWVOZS9lc2s0?=
 =?utf-8?B?UmwvczRrQTkxUVlEdURTK2pLelpCNUFJUmFDWmVBQkZ2cHZ2QkR1ekViVVVG?=
 =?utf-8?B?enZNcml1UncrVXhiTHBWemJOa2hwQVZoOUcxak5RV0xjRDBxS0M1T0ZvZ09z?=
 =?utf-8?B?ZWNmbVVDMlZPYzdVZzhhd3c1V1l1NHhxS205alFrNVBJUmZ4RXoxa0p5YXhv?=
 =?utf-8?B?QzJhZnJPRVNxWmZ1cTA1YmgzL0lWK01FRFlGbnMxMGJCdWNFV1k4ZzFIa2Vv?=
 =?utf-8?B?R1BWZlExMU9qWlRhNGJCaCtwRXV2OTUyb2dHR0llM01XRXpYRDhDUE5CUUxj?=
 =?utf-8?B?M3NodzhvU3JZbTVFR2F6OGNpM1pRQzdWbTRpTDZSdjl4cUczUXhOamtsRmNN?=
 =?utf-8?B?TjJGVnRFVTlkcTZ1OWNGd3p3RWxEcVJpanRNeXAwYnh0aXZnUDFVZUpzeDQ1?=
 =?utf-8?B?MnpoRDYzU2dQalptcy9WY1ZGcW1JaUZNOGZYSTMrN1J3T3cvczdubzcvSlZG?=
 =?utf-8?B?ZW5acmpnVmw0bGhuejhFSzFUUjNUaXMyTUZrNVpEVWpNbE5BSkVYRU5JYmNo?=
 =?utf-8?B?Mit5Uk1UUWVobkQ1bVRJU0RLUUR5MklVK2dHS1RhQmV5aW84S0huRFhaQXRR?=
 =?utf-8?B?ajlYd0ZldlNOaGdvaSs5Uy9ZaEV5blVQUzhPVHNkUWh2N0IxdHR4NXpybnA3?=
 =?utf-8?B?VEw2VW82VlpjWTBXUGNNYURxN0c1Q1lwdjZMblNkSTFpSzNabGw0WEVXQng5?=
 =?utf-8?B?TTJKOHFBUzdYMmhXU0FGbDdjRXJOaXdpNDgvZGt4UDFGVk14L3FhNmpISW9B?=
 =?utf-8?B?ZG9oSXEvNW1peFlJV2JneEpHYXNPbks2SzBzaU5haDVSSmxRSWFnU1lwSkhp?=
 =?utf-8?B?aklwVlJRQmtid0txc0tFUFhwR0F3WmJ6UzczdDNZSFErc3ZtQkFKZXpIWW8x?=
 =?utf-8?B?dTNWUG5TY3A0NERVamV5T1JPWWRlNWVjOHRGcEhsWWo3dTEzZWVzR3MyMkcz?=
 =?utf-8?B?NHRCY3ZVdzhwNWRqVTk5aEM0OFkzTG5nOUkzaDVzSEljVGo4a0ViRk9Kb2tD?=
 =?utf-8?B?SlpHbWdmd2R6TXVmcGt1Y3Z6V0M2VkFGZ2E2NHc3aWtyREl3Q3doeG8wYjRZ?=
 =?utf-8?B?NHI5dW83bjRXVWFkRmlZOG1ISnJ0am5qdGlDOWN2U3BDNmhPV0ZaL2F4VVlk?=
 =?utf-8?B?TXpQbXpRTElIWmRXQmF0MzJabTBFaTFnV01INUxBQVNuQkNEeWlRNTN2RS82?=
 =?utf-8?B?azFjNWhBY1NoT2IyYkNvTzRydzg1K0xUZksyOXBFRGl1S0dXUm93cDI0R3JO?=
 =?utf-8?B?TVJiYXd3aVpjL1p0R1RxWDdYWUVtdDZScTMxazhZTWg3Mi82OEptZnhYcWtN?=
 =?utf-8?B?SmlZK3FJb1VMWWJwTlpPWFJ5bHdTc0czd2NpeDU2L3R6Z2ZlTEVvbSt2ZnZq?=
 =?utf-8?B?R2lYcmQ1VXMxQ3FNMWxoTENVd3BORysrTlpRU1lLOURKUnA3WUVNUzFqa2ta?=
 =?utf-8?B?elo4bG9RMGp2Zk04SnE0NHJxZ2x4a244aTlQRUlIMmtEZ2dkZHkrZEt4OWtN?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd595417-89de-4d9b-8bee-08de1301446d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:28:50.4650 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cgw3XijbSGBDoUzpR+HgE7zS82fymL/veDDPgRlhK9L1PHaLLxulcwDI9VoqGmSZhZZ395H44atDBhiQIwKFGz04JZbLrb8SN9xza15WR1U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6369
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> The way intel_vrr_compute_*_timings() works is rather confusing.
> First intel_vrr_compute_config() assigns the computed vmin/vmax
> into crtc_state->vrr.{vmin,vmax}, and then either
> intel_vrr_compute_vrr_timings() leaves them untouched or
> intel_vrr_compute_{cmrr,fixed_rr}_timings() overwrite them with
> something else.
>
> Clean this up by moving all crtc_state->vrr.{vmin,vmax} assignments
> into intel_vrr_compute_*_timings().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 01cb9cfe08e1..9179ad53a2e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -235,8 +235,13 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>   }
>   
>   static
> -void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
> +void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
> +				   int vmin, int vmax)
>   {
> +	crtc_state->vrr.vmax = vmax;
> +	crtc_state->vrr.vmin = vmin;
> +	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> +
>   	crtc_state->vrr.enable = true;
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
> @@ -381,13 +386,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   		vmax = vmin;
>   	}
>   
> -	crtc_state->vrr.vmin = vmin;
> -	crtc_state->vrr.vmax = vmax;
> -
> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> -
>   	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
> -		intel_vrr_compute_vrr_timings(crtc_state);
> +		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
>   	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>   		intel_vrr_compute_cmrr_timings(crtc_state);
>   	else
