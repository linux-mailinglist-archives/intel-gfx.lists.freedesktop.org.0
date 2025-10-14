Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C95ADBD76E9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 07:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7790810E120;
	Tue, 14 Oct 2025 05:33:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uw2PDokT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6333A10E120;
 Tue, 14 Oct 2025 05:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760420029; x=1791956029;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+v37b5hreCkuEh+dZLZun+gNNtI8ryIK/mJtOs27PS0=;
 b=Uw2PDokTc86ZcTukM9J9amHv5kVWMmjoiqHS2bGTYWpkXQtukyw4Auc0
 7ZoLmMwRpsk74XPWRAH7g3zvnlXczoUmBWjUi7rtu4atVSwoNBJ9fWFu0
 gmg+RyDO20/M3XlMceL0/YW9X4m88zQWO6AjKdihFHRjpCG7FXuQMicxX
 DVOUw+z1isBljGacpjqpPRLPLsG8nBiltDeE5q6Xaano+vWE81+8Otz97
 7JT09HpliYeGzUJNf18AAjqEC/W6E4u1txXCWWLUfEPWr3WBCQP+2hI0K
 5QnmRHLDcdcXPZ0mmE3xuPOMOPhol8xXhucAq0clyj9eU584HDgHKoBwu g==;
X-CSE-ConnectionGUID: ZdhQiZS2Qtq13pilm+hN6Q==
X-CSE-MsgGUID: mBwaPzHDT+u/f4L4iZqATQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="85191689"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="85191689"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 22:33:48 -0700
X-CSE-ConnectionGUID: WGBG1pR7TbSVoCFzSklSIQ==
X-CSE-MsgGUID: mn3JFzwnQzW9gy/lCq9N0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="181471918"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 22:33:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 22:33:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 22:33:46 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.52) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 22:33:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uBYGv4l+FsJfI8dsP6pbEBpYyVOtH/4MYnzCOY05KaXkWVSy02gUO87Z4WI82KN5kT9one8iTSryaaea/5FgOblhOKoC57i3qNvez7Z14qWmKx/uKAAjjFmKkB3yR2VZcbnsRq3Om00OlJe4T3+OkvLUBJr2N3OT9UQz9QUq8zSjOCX+fX7GG5nqkSZw50kLjn1afNsZVLlsfe3998ncISf+tUAEoWckOGm9DjbpLxYrSA8M4DqebyVAnwSdRMJG12x6riNpCaeDK6nnLrKXNK9of9Dhpj3yqeE/JKVUtEpmgMrDFHLmSQUy+hUiVGXIdMAtgvz7e8Uzxi178c2Muw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+v37b5hreCkuEh+dZLZun+gNNtI8ryIK/mJtOs27PS0=;
 b=mibMhH09Y4t+KgG02DVuv9SwusVOOqfGAQfjg+3k4k4ojSWwrBTu3nISlZS2Zr2xJ2MFJ7mlmlMf28dXZInrIZxEq0LKP1mhEoe8J0y+DjqM7LbKvHuRqb+wDziZ1rSlgUYOKZWMYym+H4BB/bYhpH7C1xmYIeAx88v+hiBtGpKuj6E/oHJ98d9s7mPqC5dKCf0GC9by75X6KcJea2O33LS0nfbyB9LP9xXbF8PIBsFIlwuJ4GFqzls5DOF2FtJDZmYiE7Y/SiQYrPB9doSKfcKvI0lQJaHM0uR116X8hhlbhV5oW1OlZWU5bBKw4HmE4bCpV/xtQi0RnZtTAKeesw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM3PPFB7F00E099.namprd11.prod.outlook.com (2603:10b6:f:fc00::f47)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Tue, 14 Oct
 2025 05:33:39 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 05:33:39 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 5/8] drm/i915/psr: Consider SCL lines when validating
 vblank for wake latency
Thread-Topic: [PATCH 5/8] drm/i915/psr: Consider SCL lines when validating
 vblank for wake latency
Thread-Index: AQHcPMMz1ORzMX6cxUyjEveHYfjKNrTBHqgA
Date: Tue, 14 Oct 2025 05:33:39 +0000
Message-ID: <9a70db2c2f4cd472356bd543d36dbae763b53c86.camel@intel.com>
References: <20251014041628.1291117-1-ankit.k.nautiyal@intel.com>
 <20251014041628.1291117-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251014041628.1291117-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM3PPFB7F00E099:EE_
x-ms-office365-filtering-correlation-id: 62c76aa9-1f6f-4255-d79a-08de0ae33ae5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?d1pHdFNXbEI4K0pWYWw2U2h4YUtkbUJ4c0JtV2xpUGVQTkU4VHJIY2FIU2pu?=
 =?utf-8?B?N3FSdGZjQ3phTHo5eC9HNzZHYzMxTE03RFpIbWFYeDk5Q085eWVGbEI1UVBQ?=
 =?utf-8?B?MklFV3JkS1Y3aFNQbFU5dDdQWlpUMWhXNWM4Zll0UHpQRnREeDhiazE4eWs5?=
 =?utf-8?B?d0psZVdST0FBRUJCRXF2TnorY2ZTRUZ5VHRoWUc2aFpPaGdoMDNOUitmazRX?=
 =?utf-8?B?SktDcjh0QUFjK0F0SmNpdEFGUDRKS3MwbFd4dXJiS2RDTHVTbGFBNW04Vm81?=
 =?utf-8?B?dEQ2U01VNWE2VWl4clJEbXVhYW5Cb0RGWjE5Skw0VTBJSkNPd0UrdmNibXBu?=
 =?utf-8?B?T3RpZjFoK0xFdDB0Yk9BZjJKZUZ4QXVHMnExby9pSVI4T0hrN0dFOVFEbDk4?=
 =?utf-8?B?cERrVExlK08vZDFxM1RtQ0Q1N3pUZytRTjVFbk8vbUpRN05aMUl4eWdaQSt6?=
 =?utf-8?B?dVBLVExzTjlyUjJkMHgxanhJWkQ2OUR4WlBhKy9rc1VyaFk0VnppbnBySFRU?=
 =?utf-8?B?UmdXREZrUk5MeVJuUExxaVV6RnNJOUd1b2xQWlFvYk1TQlp0ekNFaXJLMERN?=
 =?utf-8?B?bHpBb3JpcURmdmxwc25QZjFyViswVm90aUFuN1AxeUQzR3VQUWNyYXVVamFS?=
 =?utf-8?B?dHZLVWhTbTBRUTgxNjhNUGJiRk5FZmkwazBGdjlUTk5kNDZRaTRucFZZSWZK?=
 =?utf-8?B?a1F1azlBbnE5dTI4MDFSdTVieUVzNlFHdWsweVN5b2Rnd05GSE4vZ3JnOTFB?=
 =?utf-8?B?VVcvRG50QzFnYmxDaGFUY2YxUHFGMnR5YVVzRTVTcVJGS3lzc1NNM3I0Z0w2?=
 =?utf-8?B?MWUrU0RRbFBER2xLSHdoSTB4TE5YSWNwMTF2aEVpQlUwcTl6Nlpxa3RVcHRs?=
 =?utf-8?B?Nk5KNW02alhiZzgvc3BMTlVhTUxpWlJZNjBzc3VEczUzNmozRjdXS1BZdXo1?=
 =?utf-8?B?YzlBMUwrbVVCd3VDMUNiQlRYQS9HYURleDJTNlZ2MUpOWmFGNUpsNmp6c2V2?=
 =?utf-8?B?anlPdlRPUXQvbjZEQlBSNTIzeUdmN0srU1hpNm1wLzRpenZ2VG4yVitwU1hi?=
 =?utf-8?B?K3JHL0w1TTE0dUYvRGgrN1ZRQzIweHUzYUZONDI2aVZ6WW5qRHpxQUIyUFFn?=
 =?utf-8?B?KzBOQm5FcHlsRUppVFpReSt1Z0tWMTMvdWJnWUh3c3k1cVVqbjVhRHFCTitT?=
 =?utf-8?B?MXFNSmNrcmtEUmFCREFTK0h2SjlubEpoSzVsREtzZyt4czJFMXhneFlxeEdX?=
 =?utf-8?B?cWt2aDc4M0Y2TG1FZkVyMnRaS0E5eEN6WFo1RkVhY0tOWFVwTFZXTEtXUldn?=
 =?utf-8?B?TGpBaDRSb1EvUERZSnRteW1Zcmh3bmlpNENFanZQRDBuaHlXWUNZTVFlQ1FK?=
 =?utf-8?B?Wmx5SGVUYnhQOTFLd0RPcFlRd3lQV2ErSlNxenpKWjFKMzI5Y0xPV3BKZmx0?=
 =?utf-8?B?OWVEcnF2VXVrcHZKR25INjFMVEVYUHBTNW1jWWk0akFMdmZWTzJiT2hMcEZ3?=
 =?utf-8?B?cnVzZWNvalBkNWRCQnA0TEU0MXRSRUVWU0lYWnd2eFEyNFdtWVgvNUZDbHVm?=
 =?utf-8?B?RkFvTmp5UjlIdTIzYlR4THEwY1lnNjJZSjBWMjFmeTJUQ1JyclJGWTlRY0Za?=
 =?utf-8?B?cXNyODBURmZWV2ZCZWVrMVEwL21EREJyV1k3TUhVOVdGNUJVQ1RDSzhCaXBk?=
 =?utf-8?B?Y3hHTFhRSHpaTFcvUkFOQUlnRE1LNDlrR3RSczFqazljWGxuWlRMWVVma2FK?=
 =?utf-8?B?bGU2bFQrK1QzRk1SbTVsaWpHc3NZTkdMdEJoT0FKWVp3NWNTeVJyUlVmMEQv?=
 =?utf-8?B?RHM0V1VudlRaUXFkZXM4bE1xYmZMaEQ2eE5jWURCb3Y1alJYYzc0eDRBdnRQ?=
 =?utf-8?B?TmhvUk1LS250NHdZcTFnNkVleU1XeDRaK3MzUFJIc1loTFltYWx0anJCWHBp?=
 =?utf-8?B?SGpZdUluTHVjWE5LNisyMnNSYXBROHMweHpoWCtnamp4UG84bXlmMlg3VkVs?=
 =?utf-8?B?a0d3WnlKMXk0c21iWkRHTm1OSERzMUptZ0NKOUNRSUZJRHdsQnpKLzdzRFJq?=
 =?utf-8?Q?uowGp4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnM0Z0lvcE1BQ29LSUVDUm9hK0llM1ZUOXVwaXdSd2tyOVI0SzArc25EbDlS?=
 =?utf-8?B?Q0F1ejZBZWV1R0xzQmRrc0p2eWhZSFJwc1VRVTlmNGt3dERPRUFLL0VGOXow?=
 =?utf-8?B?UzhWK2FzRklrTGlwWGQxVjYvOFJHSi9ZQ3BXMmo0SXVTbldmK3A4U1Qva096?=
 =?utf-8?B?NVduaUdDL3FGMDV6dVV4WEEvZzlZSmpvaDVHNlBKRkdXbldmNDRHTmltWHlQ?=
 =?utf-8?B?dXJRWi85N2YxUzk2VjM3UDVTcHh6LzA5TjZqYSs3M0Q1TUxUTW5wSDBGbmFU?=
 =?utf-8?B?V2NOd3RiQ3pxL2l3cGtFVkJBOE15SXhZeXNDanJNVXBYcnljbXZCTlgwY25J?=
 =?utf-8?B?dzdJaWZpcEdIMnpMVUJZelRBUEZPcUYrTVBBTGswSEsvTlZpTE9FUkpGTmNp?=
 =?utf-8?B?bm1IMDdYTS80cGVmY29XUDNwY3p6eFUvY2tiWkNybVhnVDBxQ0gxalpYK1p6?=
 =?utf-8?B?RWZZN2hUZU9sZlQ3eHJTQmpST0VGQ3J5MkZ4Q3QwZW5rUU40d2M3YWdxZ01n?=
 =?utf-8?B?cHBEQjhobVNtRVc3MTIvblg2WFN2MFNJcHhwK3ZXczZ0SE1EcWU4aG1KQ01r?=
 =?utf-8?B?V2IzVFNNVDlZdG5FNmhnQ1kvelh0RVZWSXdheGRIVzMzZnhyeWkvV1RYc0Vy?=
 =?utf-8?B?NENWZ3lGb2ZINlAxek5iZUUvSFN2TTl2TGM4a2RCMDZ4TGRrWkI5RHFKRDB5?=
 =?utf-8?B?REpqdGlWcjVHaVdjRjF0cFNWLzhnaDNiQVBhQ20yck1UY29MdTVxT05WTmxh?=
 =?utf-8?B?QkkrVk9iVmdjbWhTdEs2SjZYemxpY083S0RvNkFUbHB2TVpXdnY0aHEwaHh0?=
 =?utf-8?B?TkM3TFhzRVQ1ZTY4WUlNYzJUYWZsMloxd2hHdmFGbElJeFk1cG8zSElyQ3Bt?=
 =?utf-8?B?YzNGMXpDYkVJNWQ1SWFxNW83NUZsazJGSVFMK1VSUXRzbmdxOU9lK2xUdVNo?=
 =?utf-8?B?eU14dlNVSDJCbVdIaHV1MXAwcVA3MWljR3FVU3ViVHlEdnRkdWdwOEJFNVpE?=
 =?utf-8?B?ei80TkdDaUUyMkc1aUs1Q01oTHBKSHdjaFFWVEhXSWFzd2YvZFZLVTEzVkU5?=
 =?utf-8?B?Rm1QKzJLbWgzczdJY2lKRkFQbThCdU9aRmk5dlozd014UGNraTJGNE9MUFJl?=
 =?utf-8?B?QWRsWW5nQ3ZDUG5XLzl0V2lqTTQzbE04aC9SbGNMcUlGTlhLdGd5TnhIT2d5?=
 =?utf-8?B?dGRxdEZHWkczYW50bXRJZmc0MTYvOERQYWQ1YjFhTUE3OFI2K2RFdXNJcGwv?=
 =?utf-8?B?V0xnTVM3NkhqTTFGdlBFNGgwcXY1RjJKU1l0aVFtOVJLNVdoM3ZDa2VEd1g1?=
 =?utf-8?B?VDllODczSUUrVDNEOVBjTjY1NFNnWjQzT3ZtMzc0VmRJUG5iaFhUMDJkbG5G?=
 =?utf-8?B?NlJDaVloMC9EU01LV0pMTUQ0QVQxSW1rb3NQV2t5RW43UWt0SEFrWUpxSlpu?=
 =?utf-8?B?UC9Qd21aU3VzYjR1K0d4ekRDbC9zRFUxa3hDOVpSdG9PemQ2WlJER0p0b1hH?=
 =?utf-8?B?ZHYyNDZoYlhQRUJHYS9yRVh5Nm9IOWRjTitmOXNhRCtwVU5YaTlnZlhCUUpr?=
 =?utf-8?B?N2FlcDlSR3BLNVJKeCs4U2tYSEhSdEcxeGxKOXgzei9YdFlMdjBHM0E2VWFJ?=
 =?utf-8?B?TTUybjdCTFhMb0lvVEgySHFtMW0rS1ljZjljSkRyOWl2SzV2V0Nrb2xLQlJ3?=
 =?utf-8?B?RytSQ0ZKWDkvclNwbmduSGdpdzFyZ0RxUGlaeDB3Z1pJMDJMVzdyZG9XWTRE?=
 =?utf-8?B?QzR5WmtTUWZzeHJ0VGxTcENuMHZicFZ2bzBWWUwzTG9BK0JMenE1S2FCUmQ5?=
 =?utf-8?B?ZThNZi9Lc1RCMDVkNkZqOHBOdXpKRXN4bzZHYmw3K0tXVGxIU0tMYjRvTlJz?=
 =?utf-8?B?dHhvc0t0R1BBNW9qc0RmWUd2Yk5kbXJxaEM0a1RoQlVOUGpSOG0xOHRDbXQx?=
 =?utf-8?B?d3ZkK0krbkdGajdsUWZqT3pmdWhUZE94cmNqSW10Q0VZNE1jZG1EQ3UxbHUy?=
 =?utf-8?B?b25OZVhBbW51eFpBQmE1eWYzL0ZaKzMvMEI0SGdCWlVIMkRCZ2FZTmpPcmxI?=
 =?utf-8?B?eWhoSlNEZFY2TFEyWndyK1BKT0x2K1FQSkFDcm9COVJIWjZqcmFvU3FNeHFF?=
 =?utf-8?B?UXRyQjZVRUc1OUM0QWZiWmZ0MVFCUTlJKzFiT3RvblhJMUhCcElwVFVaMFkx?=
 =?utf-8?B?YWd4T3g1eVY3OEVMY0VSdGQ5TUFMYzlnY1M3Ky8zSlJIMmI2cS9SbW9MWHRV?=
 =?utf-8?B?bkdZQkVSTFhCY1ROdDNaazJaM0lBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9B6AE32FD64E4E4BB1AC6A3CCD366790@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62c76aa9-1f6f-4255-d79a-08de0ae33ae5
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2025 05:33:39.4681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HXp78bMinANFBO5Yle8HkBdyBA/yrNIhBBNtiwM1djuG6N1xyOK35iYm5W+O/izsmyNQKpwJeOoDAsQiCKV0jPRri8xn482TGmBW2YXcfGw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFB7F00E099
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

T24gVHVlLCAyMDI1LTEwLTE0IGF0IDA5OjQ2ICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gUGFuZWwgUmVwbGF5IGFuZCBQU1IyIHNlbGVjdGl2ZSB1cGRhdGUgcmVxdWlyZSBzdWZmaWNp
ZW50IHZibGFuaw0KPiBkdXJhdGlvbg0KPiB0byBhY2NvbW1vZGF0ZSB3YWtlIGxhdGVuY2llcy4g
SG93ZXZlciwgdGhlIGN1cnJlbnQNCj4gd2FrZV9saW5lc19maXRfaW50b192YmxhbmsoKSBsb2dp
YyBkb2VzIG5vdCBhY2NvdW50IGZvciB0aGUgbWluaW11bQ0KPiBTZXQgQ29udGV4dCBMYXRlbmN5
IChTQ0wpIGxpbmVzLg0KPiANCj4gU2VwYXJhdGUgb3V0IF9pbnRlbF9wc3JfbWluX3NldF9jb250
ZXh0X2xhdGVuY3koKSB0byBjb21wdXRlIHRoZQ0KPiBtaW5pbXVtDQo+IFNDTCByZXF1aXJlbWVu
dCBiYXNlZCBvbiBwbGF0Zm9ybSBhbmQgZmVhdHVyZSB1c2FnZS4NCj4gDQo+IFRoZSBhbHBtX2Nv
bmZpZ192YWxpZCgpIGhlbHBlciBpcyB1cGRhdGVkIHRvIHBhc3MgdGhlIG5lY2Vzc2FyeQ0KPiBj
b250ZXh0IGZvcg0KPiBkZXRlcm1pbmluZyB3aGV0aGVyIFBhbmVsIFJlcGxheSBvciBQU1IyIHNl
bGVjdGl2ZSB1cGRhdGUgaXMgZW5hYmxlZC4NCj4gDQo+IHYyOiBXaGlsZSBjYWxsaW5nIGFscG1f
Y29uZmlnX3ZhbGlkKCkgZm9yIHNlbGVjdGl2ZV91cGRhdGUgdXNlIGZhbHNlDQo+IGZsYWcNCj4g
wqDCoMKgIGluc3RlYWQgb2YgaGFzX3BhbmVsX3JlcGxheS4gKEpvdW5pKQ0KPiANCj4gU2lnbmVk
LW9mZi1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBD
YzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IENjOiBKb3VuaSBI
w7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEwMiArKysrKysrKysrKysrKy0tLS0t
LS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNjEgaW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gaW5kZXggMjEzMTQ3M2NlYWQ2Li4yOGVmYTQ0MTBjMmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTM2MSwxNCArMTM2MSw2NCBAQCBz
dGF0aWMgaW50DQo+IGludGVsX3Bzcl9lbnRyeV9zZXR1cF9mcmFtZXMoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwNCj4gwqAJcmV0dXJuIGVudHJ5X3NldHVwX2ZyYW1lczsNCj4gwqB9DQo+IMKg
DQo+ICtzdGF0aWMNCj4gK2ludCBfaW50ZWxfcHNyX21pbl9zZXRfY29udGV4dF9sYXRlbmN5KGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiArCQkJCcKgwqDC
oMKgwqDCoCBib29sIG5lZWRzX3BhbmVsX3JlcGxheSwNCj4gKwkJCQnCoMKgwqDCoMKgwqAgYm9v
bCBuZWVkc19zZWxfdXBkYXRlKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0NCj4gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gKw0KPiArCWlmICghY3J0
Y19zdGF0ZS0+aGFzX3BzcikNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwkvKiBXYV8xNDAxNTQw
MTU5NiAqLw0KPiArCWlmIChpbnRlbF92cnJfcG9zc2libGUoY3J0Y19zdGF0ZSkgJiYNCj4gSVNf
RElTUExBWV9WRVIoZGlzcGxheSwgMTMsIDE0KSkNCj4gKwkJcmV0dXJuIDE7DQo+ICsNCj4gKwkv
KiBSZXN0IGlzIGZvciBTUkRfU1RBVFVTIG5lZWRlZCBvbiBMdW5hckxha2UgYW5kIG9ud2FyZHMg
Ki8NCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCkNCj4gKwkJcmV0dXJuIDA7DQo+
ICsNCj4gKwkvKg0KPiArCSAqIENvbW1lbnQgb24gU1JEX1NUQVRVUyByZWdpc3RlciBpbiBCc3Bl
YyBmb3IgTHVuYXJMYWtlIGFuZA0KPiBvbndhcmRzOg0KPiArCSAqDQo+ICsJICogVG8gZGV0ZXJt
aW5pc3RpY2FsbHkgY2FwdHVyZSB0aGUgdHJhbnNpdGlvbiBvZiB0aGUgc3RhdGUNCj4gbWFjaGlu
ZQ0KPiArCSAqIGdvaW5nIGZyb20gU1JET0ZGQUNLIHRvIElETEUsIHRoZSBkZWxheWVkIFYuIEJs
YW5rIHNob3VsZA0KPiBiZSBhdCBsZWFzdA0KPiArCSAqIG9uZSBsaW5lIGFmdGVyIHRoZSBub24t
ZGVsYXllZCBWLiBCbGFuay4NCj4gKwkgKg0KPiArCSAqIExlZ2FjeSBURzogVFJBTlNfU0VUX0NP
TlRFWFRfTEFURU5DWSA+IDANCj4gKwkgKiBWUlIgVEc6IFRSQU5TX1ZSUl9DVExbIFZSUiBHdWFy
ZGJhbmQgXSA8IChUUkFOU19WUlJfVk1BWFsNCj4gVlJSIFZtYXggXQ0KPiArCSAqIC0gVFJBTlNf
VlRPVEFMWyBWZXJ0aWNhbCBBY3RpdmUgXSkNCj4gKwkgKg0KPiArCSAqIFNSRF9TVEFUVVMgaXMg
dXNlZCBvbmx5IGJ5IFBTUjEgb24gUGFudGhlckxha2UuDQo+ICsJICogU1JEX1NUQVRVUyBpcyB1
c2VkIGJ5IFBTUjEgYW5kIFBhbmVsIFJlcGxheSBEUCBvbg0KPiBMdW5hckxha2UuDQo+ICsJICov
DQo+ICsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMzAgJiYgKG5lZWRzX3BhbmVs
X3JlcGxheSB8fA0KPiArCQkJCQnCoMKgIG5lZWRzX3NlbF91cGRhdGUpKQ0KPiArCQlyZXR1cm4g
MDsNCj4gKwllbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDMwICYmIChuZWVkc19zZWxf
dXBkYXRlIHx8DQo+ICsJCQkJCcKgwqDCoMKgwqDCoA0KPiBpbnRlbF9jcnRjX2hhc190eXBlKGNy
dGNfc3RhdGUsDQo+ICsJCQkJCQkJCcKgwqANCj4gSU5URUxfT1VUUFVUX0VEUCkpKQ0KPiArCQly
ZXR1cm4gMDsNCj4gKwllbHNlDQo+ICsJCXJldHVybiAxOw0KPiArfQ0KPiArDQo+IMKgc3RhdGlj
IGJvb2wgd2FrZV9saW5lc19maXRfaW50b192Ymxhbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwNCj4gwqAJCQkJwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+
ICpjcnRjX3N0YXRlLA0KPiAtCQkJCcKgwqDCoMKgwqDCoCBib29sIGF1eF9sZXNzKQ0KPiArCQkJ
CcKgwqDCoMKgwqDCoCBib29sIGF1eF9sZXNzLA0KPiArCQkJCcKgwqDCoMKgwqDCoCBib29sIG5l
ZWRzX3NlbF91cGRhdGUsDQo+ICsJCQkJwqDCoMKgwqDCoMKgIGJvb2wgbmVlZHNfcGFuZWxfcmVw
bGF5KQ0KPiDCoHsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRl
bF9kaXNwbGF5KGludGVsX2RwKTsNCj4gwqAJaW50IHZibGFuayA9IGNydGNfc3RhdGUtPmh3LmFk
anVzdGVkX21vZGUuY3J0Y192YmxhbmtfZW5kIC0NCj4gwqAJCWNydGNfc3RhdGUtPmh3LmFkanVz
dGVkX21vZGUuY3J0Y192Ymxhbmtfc3RhcnQ7DQo+IMKgCWludCB3YWtlX2xpbmVzOw0KPiArCWlu
dCBzY2wgPSBfaW50ZWxfcHNyX21pbl9zZXRfY29udGV4dF9sYXRlbmN5KGNydGNfc3RhdGUsDQo+
ICsJCQkJCQnCoMKgwqDCoA0KPiBuZWVkc19zZWxfdXBkYXRlLA0KPiArCQkJCQkJwqDCoMKgwqAN
Cj4gbmVlZHNfcGFuZWxfcmVwbGF5KTsNCj4gKwl2YmxhbmsgLT0gc2NsOw0KPiDCoA0KPiDCoAlp
ZiAoYXV4X2xlc3MpDQo+IMKgCQl3YWtlX2xpbmVzID0gY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3Rh
dGUuYXV4X2xlc3Nfd2FrZV9saW5lczsNCj4gQEAgLTEzOTAsNyArMTQ0MCw5IEBAIHN0YXRpYyBi
b29sIHdha2VfbGluZXNfZml0X2ludG9fdmJsYW5rKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxf
ZHAsDQo+IMKgDQo+IMKgc3RhdGljIGJvb2wgYWxwbV9jb25maWdfdmFsaWQoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gwqAJCQnCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLA0KPiAtCQkJwqDCoMKgwqDCoCBib29sIGF1eF9sZXNzKQ0KPiArCQkJwqDC
oMKgwqDCoCBib29sIGF1eF9sZXNzLA0KPiArCQkJwqDCoMKgwqDCoCBib29sIG5lZWRzX3NlbF91
cGRhdGUsDQo+ICsJCQnCoMKgwqDCoMKgIGJvb2wgbmVlZHNfcGFuZWxfcmVwbGF5KQ0KDQpQbGVh
c2Uga2VlcCBvcmRlciBvZiBwYXJhbWV0ZXJzIHNhbWUgaW4gYWxwbV9jb25maWdfdmFsaWQgYW5k
DQppbnRlbF9wc3JfbWluX3NldF9jb250ZXh0X2xhdGVuY3kuIFdpdGggdGhhdCBmaXhlZDoNCg0K
UmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
DQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rp
c3BsYXkoaW50ZWxfZHApOw0KPiDCoA0KPiBAQCAtMTQwMCw3ICsxNDUyLDggQEAgc3RhdGljIGJv
b2wgYWxwbV9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJ
CXJldHVybiBmYWxzZTsNCj4gwqAJfQ0KPiDCoA0KPiAtCWlmICghd2FrZV9saW5lc19maXRfaW50
b192YmxhbmsoaW50ZWxfZHAsIGNydGNfc3RhdGUsDQo+IGF1eF9sZXNzKSkgew0KPiArCWlmICgh
d2FrZV9saW5lc19maXRfaW50b192YmxhbmsoaW50ZWxfZHAsIGNydGNfc3RhdGUsDQo+IGF1eF9s
ZXNzLA0KPiArCQkJCQluZWVkc19zZWxfdXBkYXRlLA0KPiBuZWVkc19wYW5lbF9yZXBsYXkpKSB7
DQo+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IMKgCQkJwqDCoMKgICJQU1IyL1Bh
bmVsIFJlcGxheSBub3QgZW5hYmxlZCwgdG9vDQo+IHNob3J0IHZibGFuayB0aW1lXG4iKTsNCj4g
wqAJCXJldHVybiBmYWxzZTsNCj4gQEAgLTE0OTIsNyArMTU0NSw3IEBAIHN0YXRpYyBib29sIGlu
dGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKg
CQlyZXR1cm4gZmFsc2U7DQo+IMKgCX0NCj4gwqANCj4gLQlpZiAoIWFscG1fY29uZmlnX3ZhbGlk
KGludGVsX2RwLCBjcnRjX3N0YXRlLCBmYWxzZSkpDQo+ICsJaWYgKCFhbHBtX2NvbmZpZ192YWxp
ZChpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgZmFsc2UsIHRydWUsDQo+IGZhbHNlKSkNCj4gwqAJCXJl
dHVybiBmYWxzZTsNCj4gwqANCj4gwqAJaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxf
ZmV0Y2ggJiYNCj4gQEAgLTE2NDMsNyArMTY5Niw3IEBAIF9wYW5lbF9yZXBsYXlfY29tcHV0ZV9j
b25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJCXJldHVybiBmYWxzZTsN
Cj4gwqAJfQ0KPiDCoA0KPiAtCWlmICghYWxwbV9jb25maWdfdmFsaWQoaW50ZWxfZHAsIGNydGNf
c3RhdGUsIHRydWUpKQ0KPiArCWlmICghYWxwbV9jb25maWdfdmFsaWQoaW50ZWxfZHAsIGNydGNf
c3RhdGUsIHRydWUsIGZhbHNlLA0KPiB0cnVlKSkNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gwqAN
Cj4gwqAJcmV0dXJuIHRydWU7DQo+IEBAIC0yMzcxLDQzICsyNDI0LDEwIEBAIHZvaWQNCj4gaW50
ZWxfcHNyX3RyaWdnZXJfZnJhbWVfY2hhbmdlX2V2ZW50KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwN
Cj4gwqAgKi8NCj4gwqBpbnQgaW50ZWxfcHNyX21pbl9zZXRfY29udGV4dF9sYXRlbmN5KGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiDCoHsNCj4gLQlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0
ZSk7DQo+IC0NCj4gLQlpZiAoIWNydGNfc3RhdGUtPmhhc19wc3IpDQo+IC0JCXJldHVybiAwOw0K
PiAtDQo+IC0JLyogV2FfMTQwMTU0MDE1OTYgKi8NCj4gLQlpZiAoaW50ZWxfdnJyX3Bvc3NpYmxl
KGNydGNfc3RhdGUpICYmDQo+IElTX0RJU1BMQVlfVkVSKGRpc3BsYXksIDEzLCAxNCkpDQo+IC0J
CXJldHVybiAxOw0KPiAtDQo+IC0JLyogUmVzdCBpcyBmb3IgU1JEX1NUQVRVUyBuZWVkZWQgb24g
THVuYXJMYWtlIGFuZCBvbndhcmRzICovDQo+IC0JaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwg
MjApDQo+IC0JCXJldHVybiAwOw0KPiDCoA0KPiAtCS8qDQo+IC0JICogQ29tbWVudCBvbiBTUkRf
U1RBVFVTIHJlZ2lzdGVyIGluIEJzcGVjIGZvciBMdW5hckxha2UgYW5kDQo+IG9ud2FyZHM6DQo+
IC0JICoNCj4gLQkgKiBUbyBkZXRlcm1pbmlzdGljYWxseSBjYXB0dXJlIHRoZSB0cmFuc2l0aW9u
IG9mIHRoZSBzdGF0ZQ0KPiBtYWNoaW5lDQo+IC0JICogZ29pbmcgZnJvbSBTUkRPRkZBQ0sgdG8g
SURMRSwgdGhlIGRlbGF5ZWQgVi4gQmxhbmsgc2hvdWxkDQo+IGJlIGF0IGxlYXN0DQo+IC0JICog
b25lIGxpbmUgYWZ0ZXIgdGhlIG5vbi1kZWxheWVkIFYuIEJsYW5rLg0KPiAtCSAqDQo+IC0JICog
TGVnYWN5IFRHOiBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZID4gMA0KPiAtCSAqIFZSUiBURzog
VFJBTlNfVlJSX0NUTFsgVlJSIEd1YXJkYmFuZCBdIDwgKFRSQU5TX1ZSUl9WTUFYWw0KPiBWUlIg
Vm1heCBdDQo+IC0JICogLSBUUkFOU19WVE9UQUxbIFZlcnRpY2FsIEFjdGl2ZSBdKQ0KPiAtCSAq
DQo+IC0JICogU1JEX1NUQVRVUyBpcyB1c2VkIG9ubHkgYnkgUFNSMSBvbiBQYW50aGVyTGFrZS4N
Cj4gLQkgKiBTUkRfU1RBVFVTIGlzIHVzZWQgYnkgUFNSMSBhbmQgUGFuZWwgUmVwbGF5IERQIG9u
DQo+IEx1bmFyTGFrZS4NCj4gLQkgKi8NCj4gLQ0KPiAtCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5
KSA+PSAzMCAmJiAoY3J0Y19zdGF0ZS0NCj4gPmhhc19wYW5lbF9yZXBsYXkgfHwNCj4gLQkJCQkJ
wqDCoCBjcnRjX3N0YXRlLQ0KPiA+aGFzX3NlbF91cGRhdGUpKQ0KPiAtCQlyZXR1cm4gMDsNCj4g
LQllbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDMwICYmIChjcnRjX3N0YXRlLQ0KPiA+
aGFzX3NlbF91cGRhdGUgfHwNCj4gLQkJCQkJwqDCoMKgwqDCoMKgDQo+IGludGVsX2NydGNfaGFz
X3R5cGUoY3J0Y19zdGF0ZSwNCj4gLQkJCQkJCQkJwqDCoA0KPiBJTlRFTF9PVVRQVVRfRURQKSkp
DQo+IC0JCXJldHVybiAwOw0KPiAtCWVsc2UNCj4gLQkJcmV0dXJuIDE7DQo+ICsJcmV0dXJuIF9p
bnRlbF9wc3JfbWluX3NldF9jb250ZXh0X2xhdGVuY3koY3J0Y19zdGF0ZSwNCj4gKwkJCQkJCcKg
IGNydGNfc3RhdGUtDQo+ID5oYXNfcGFuZWxfcmVwbGF5LA0KPiArCQkJCQkJwqAgY3J0Y19zdGF0
ZS0NCj4gPmhhc19zZWxfdXBkYXRlKTsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIHUzMiBtYW5f
dHJrX2N0bF9lbmFibGVfYml0X2dldChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCg0K
