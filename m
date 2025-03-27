Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 770F5A72DE5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 11:36:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 680FC10E2C3;
	Thu, 27 Mar 2025 10:36:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EpLJwVyA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC34D10E029;
 Thu, 27 Mar 2025 10:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743071797; x=1774607797;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=omp19ZyNNN3au2lu79gto8rq/4E1cTSIm4IY1i/xkZ4=;
 b=EpLJwVyA0WCr+W7IbmzAv9bYKhOU6IzGaNiB9ywSXB09tPo/sSl1vCR/
 3THjiZaKh1KVP1g8njjUMq0zw81PPTO4DGqXcdDHrYNu0XrslCsyiyMes
 iZAOsBuQHu/Vtwp6AtlpwVW3q0EfS0VDghWaVKIYzyI8683qcIhLmbEUI
 T5nRvaXlk4tiE0Qs7clOZNpVs5q1oidFipUsxvT96z18M0BCSoTgAitwy
 fX9usJs+2hn2hf0p1K+SvLEbSkiqn/JoRy1wMjuYxX8LwtJRKpIJ+ybv/
 3OKfFaxCyeg3bRVuIV8dGo8i4jMUOytVFGZicj69dQS3Ilf/hsTk1tpke Q==;
X-CSE-ConnectionGUID: 8NQkCCkTTOGlTQnuwDixNg==
X-CSE-MsgGUID: 6SMRT1tTRkScGInceI8FJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44519048"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="44519048"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:36:36 -0700
X-CSE-ConnectionGUID: AepGWLg0QiyogyqkL57oYg==
X-CSE-MsgGUID: cAJIlUAzSY+xABq2WnPcwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="130194109"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:36:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 03:36:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 03:36:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 03:36:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w/aMvf+R0nod18tvfbAGwRF2RCzmrZsVibgt+7EPslqar1KlAXgCgph3A8pSLOPdsIG0NbowHNNXw62fIbe0Smorzjk/H/idS49JTN7DoBdap+bc7EgiVWtbHrtOrpJ37NtMOGg5ACl0b1NiIjDs2UIAAwqZZ6nQdOyexSmh8VbvnknCSGDrUdD8f4ITyNl2XAslHraoJSZ8oDEduncvci2bC22pibT0w9y8ZZGJzdH2ruOx4B1BRNbhOlkJJDiJYw5SQjQ93gRDQoDjCG7FNGC13+yQYyJOzMv7tsrtl2+fQkoV/uSkyEqZk30YY8KxAfhRGTrhUWN3fvpeSHolGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=omp19ZyNNN3au2lu79gto8rq/4E1cTSIm4IY1i/xkZ4=;
 b=DkIjmI/fi5eayxKFph6if81RP5DJB4sCa0qmhkvWGno1hsWIa6mJQC/Xu6GGJ4rDKmHcFXiFlmFxQYpyugDPJkb1GBE/UcitGooINYWbfErRGL9xQ3w5W23IRGrY1gWRpTsYLCALuchoeXfh+sPndeEieAof6/ZEDfZ0HAj1KtlD963HgW5o6jpi0kSJNlFrpS4c0kmpWl+ZwDnKz99cUl3kzE4CopK5P0Vzbv8XrjndSxQ+PZJTUQoYT6Pt4bpZZhqdce2QqDKr1bz0Xbhsg9xdqT8aZ8l6Upd5uW5SSpwu/bJ43xc30bDJMYyDkPNlf3bROkKj6kB5Tv7zF3m/jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4SPRMB0056.namprd11.prod.outlook.com (2603:10b6:303:1e1::21)
 by IA1PR11MB6369.namprd11.prod.outlook.com (2603:10b6:208:3af::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 10:36:01 +0000
Received: from MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a]) by MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a%4]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 10:36:01 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Thread-Topic: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Thread-Index: AQHblK1u8aLwISZHqk6cwQxE7Mey+bN9YCuwgABFWQCACOfnsIAAR/UAgAAI4hA=
Date: Thu, 27 Mar 2025 10:36:01 +0000
Message-ID: <MW4SPRMB00566B6E73B9520B5BD11279F9A12@MW4SPRMB0056.namprd11.prod.outlook.com>
References: <20250314065015.879143-1-jouni.hogander@intel.com>
 <BL1PR11MB5979ECA217C60944121BF197F9DB2@BL1PR11MB5979.namprd11.prod.outlook.com>
 <cff2088e6f38bd23a694beee993b070ff0ebee9d.camel@intel.com>
 <BL1PR11MB597966EC25F3724311A5A0CEF9A12@BL1PR11MB5979.namprd11.prod.outlook.com>
 <a075a4e71f93d71c8e830bbfbf538b0fcab755e4.camel@intel.com>
In-Reply-To: <a075a4e71f93d71c8e830bbfbf538b0fcab755e4.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4SPRMB0056:EE_|IA1PR11MB6369:EE_
x-ms-office365-filtering-correlation-id: 6d43330f-feb1-487c-672d-08dd6d1b2b1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?RXc1aDJzTWpFM00vQ2RIVjU2aUdwT2FCdXZlZ2VQbFJabEFaTG14aER3T1ZE?=
 =?utf-8?B?WERLRXRTOTJKbnFTQitZcVF2RDNXZHlBb3RuQjBJaDhkY2t6aGJ5R1BoZ0tm?=
 =?utf-8?B?WmJxbDVkVFdONUdnYXF5WDhnSUhPT2pCYWFNTTEzTVE0bURrR2NzYS85VVNG?=
 =?utf-8?B?aUxEbk5DV0hMU1BhdXFEc1JQdXZ4UXVUUStxS1Nrd3pQWjM5b0IxNEpVNDl1?=
 =?utf-8?B?My92R3A1VGlQb1lFMDRZanlLOTA0ZFJVWUJBd0ZTY2VjWEREU2FCYzBta1Nh?=
 =?utf-8?B?eG9PSW9qR2NWMlRibEk4eFVQcEJocFhHczRWYVdxbWg2Ly9XKzVpNkVGdGFm?=
 =?utf-8?B?VURkUjZZZXQ1ODc5T05nejFXbFQ0WU93NWw4bC85TDl3b1JOaVNTdmsvOUFE?=
 =?utf-8?B?MEJaaXFGL0JPVFBMRFE0azVTVXZFZ05lZDA5dlZ6aDdacklMbWRab2pEdXI0?=
 =?utf-8?B?cER4Ym8vMHE1djhhbVNOV3BBOWZhQ0pheUw5K2pnQ3g2eks2U1ovT0pqOTE2?=
 =?utf-8?B?amdNaTlPQUYrb3FlUGIyUWtsQjBWQjZRNFZ6YlBJalA2UmtFUU5XbWFTMVFx?=
 =?utf-8?B?RnBNN3FsYnFZK3RzNy9YNWFuZElxc1lPMlk1QTU2a25wVmdOaHhTczMxUGRw?=
 =?utf-8?B?VkE3MVlSVDByakREVktXa1BPRUpRcVg0bVBxQUpjWVBZVW81b0NRRFRtVnFh?=
 =?utf-8?B?Y1M5MGhsUXdXS01tSlZRc3RlWlBzRy8rMmJsWkxpNDV3VmVtRmVqZndwYVRs?=
 =?utf-8?B?SEJJUTZ1bFk2a3JJTExLbXlDdlBCOVlSQ2hVQWZmVzlyVktsNUkrNWtiMGlW?=
 =?utf-8?B?d2pLdGtJYWNLK1B6NU5wd0JoQnNvQUU1TWNLVE5XY0xSeEMxWm1RT0xTT1Ax?=
 =?utf-8?B?OE5hd1M1SXVHV3luNmE0R3JuUjUwUEFPclZmQVExOVgrMDZhTVNzOTd6ZWJM?=
 =?utf-8?B?ZStsK3k0NUpKNmQ4Vm5vTFFWMURLbWNuWk13YTdaVmt1WnhoZGQ5Q1lpamRG?=
 =?utf-8?B?UDM1dytMb0tIMXdRTGVZYlFXS1dRdEg3UW90d0hhK3l4b25WUlZuYTVac2dl?=
 =?utf-8?B?MTRENWpUdWJabUNXVzRERTdMTnZ6SitVWUk1TVlCRlg0eWJkbWpsTEt4WHlz?=
 =?utf-8?B?V2laZDNBRDVBaWRHeThuZkxMRkk1TUJ1S2FUblBob0Q1WVg2eW1HZHNJL1lX?=
 =?utf-8?B?VjMrRlRkODhVTkVLbXA4TTd0blhtUjEvRVB2SFFtSXBTMmdPdUQ5MXpCazdo?=
 =?utf-8?B?OExZQjUwVlVKc1g5azNvSGcyTDZpSmtZNkI3dmdnTW5zZDJNL1FsU3I5SmhS?=
 =?utf-8?B?ZVFCUml1amNKVmZFSGlVa1JnYkxtYlV6ME9IV01uQmJKcWpiM083Z0pQbWQv?=
 =?utf-8?B?TU5qMEN5RUJaM3ZHK1krRFp4RE9ZNTVvZ2FpYmxqanhVb2RTOC92ZEN0RmN6?=
 =?utf-8?B?Y0JoQzhVSmNCa2lVMEUvSVAyR3lseFU3eURKeGpyL0phZlhWRGdOVUNERlRj?=
 =?utf-8?B?RFdhR25nU3dzRU82MzByTXJvZXp3aVAzWUMzTXZnL1FjeFFaUkFmZW91OWh1?=
 =?utf-8?B?dXFwa3NkNmRkYTlHV1pPSCtjUmlPenVvZ3R3aGM1U042cnJuVW43REdFLytv?=
 =?utf-8?B?NXVJeWxMZmFZSmNuMlJoaS9mL0dSNy9QMldtTDFHUjQyM1g2bVlmQTdrMXBu?=
 =?utf-8?B?SmFCaklHZytpa1pKZFVGSG44N3dGeGdVdDhudktvQjIwbmcwZmJuNzY3MmJn?=
 =?utf-8?B?ZWxLdDhTV0NQdDhYdG9IMmJ3UFZqTGQ4SzRIbWpyTTkydlFGUVphVnFpQURY?=
 =?utf-8?B?aWo0SlRnTWRlbUNIWmlVKy9IaFQ3WnRBSjZpZU9OaFhzQ3l2SUYwcGpkaXEx?=
 =?utf-8?B?QXN5VEJOZDQrSHFhUGowU3hYaVNZZExseW5sdmFkRExNdzV4dE83akgzSUNK?=
 =?utf-8?Q?7FRvB/PSsBO8dHPXa48lL4pP00XTgykc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4SPRMB0056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aTZEYzAwTzVUSnVsWS9TNlJpRFV2VWFGeHdQdmkvbEFYVVdxbjhJNk9rYW1s?=
 =?utf-8?B?S002MTZmTVlnMUw2eFQ5Y3YxNjJ4dFNZcmZ3SHlZTXdLL3ZUYlcwN0x1SHda?=
 =?utf-8?B?QUYwOHg3Z2hRVkdDOUYzN3hSaDE5NlM1UFV1V1NmSFl5REszSzRVcDBCQk05?=
 =?utf-8?B?cUEzTzlrakJ1NExpaGROVzRUS0hCTHJzL1doQ0o2aDVudldvNTJzZCtzVGhJ?=
 =?utf-8?B?Yk5RY2U4eFlscXFhTjNmTlJqVmVGSHB6bEpac056TlA3VndOaEZlelVBdW94?=
 =?utf-8?B?bjJIbVRNeEZsTDFQaHpjMmFSMG5WWU1IYVorMWw5VDVGZmlIUXJnVys1ajRD?=
 =?utf-8?B?TTRveElSWWFoa3IvMTRYeWpkTnRHemN0b1MvM3VldWozRkRWUlo2OFFSc0pK?=
 =?utf-8?B?YkhkSmg0NlphRGNVZ3ZEanZmWndUODBmSW5aT2VmSUJCSUU2SUo5L2llMU9t?=
 =?utf-8?B?TS9hNkRzeFpLc0E5NEh6OWJocS85VE5rbnB3OUZmam9wZStQNzNxRW1sY3Ar?=
 =?utf-8?B?SjNuMnV4K1pFU3J0MGtLUHBGekpZUjMyelBYdGtxZTJNZEVFRmpxT25NTjVa?=
 =?utf-8?B?b08zWG41RVJrWnV4bHArZ21Ed0ZTZVRoUVRnMTZ5dWI5T3R4Sm1NcGRRTnRa?=
 =?utf-8?B?WGpGUFRXTFFmUWUzd3N0WFVnMmJpY3V0OVFOR3ZrNHAxQUQxY3ZnWm56eXhk?=
 =?utf-8?B?L0M2M0cwR1hCbTQrQzQ0eklqZlR2d2xhQzVMVklIV1M1WEZHN0ZkQUJiVkRJ?=
 =?utf-8?B?YnIyV25SakhMK2xCc3lMMkYzalljQkE2eXpIcXZ0WjJnRHM5NitmNC9XK2F2?=
 =?utf-8?B?R3JHTzNEaTFhdmQ1Wnd2MVBDaUpwUm02cjl1OGpualRzMkh2YUdVeVBka0xK?=
 =?utf-8?B?alhTak9pQTlVVm1BTEhJRk8venQyMTgyejBZcU1lVytLdnNBclJTaFBldkRk?=
 =?utf-8?B?a0ptSkhrMUJBL1AvWXRHQWw5VnIxNXRTV0QxTlMxUFZLY0pvSnFqQjlxUDA1?=
 =?utf-8?B?eXNzRzhhc0VFVUIrTktBbWRWWEdXRCtRUHhwVGVVVTZVdTkzRkE1QmlGR29L?=
 =?utf-8?B?QUR1bGptS1hHbjdRQXpWcVVzMUVoQnF0UjZyTEllbG15RTVMNDFLdXlHT0RC?=
 =?utf-8?B?eXpZNkUwTFZKbHVKa2RCcW16RktUTW9MY2FyR05EWWErZTRIeVM4WjlyNk9n?=
 =?utf-8?B?SjRVZjU2bjJJQTdoNWg1L0UzQUlGb3hOWGFOOU9kOGJyZ1FwNittOGxnd1Zx?=
 =?utf-8?B?dWpxaWdMS2x0NVBiNXlscy9EUWxKYWVxV3V0WkJjYUkzSlo3eWt1a1dUUUxK?=
 =?utf-8?B?VkZza2txejJSR3V0bDl0NXYwOHVhTjdWSjErYVJnb0dNTEdHL2JxZ1M3R2Mr?=
 =?utf-8?B?d25BWnlaekJLNHUvWlUvZ0gvN3lZTzE5ZE5KbTF1WXFZWjB2U0d3emxKdWdi?=
 =?utf-8?B?dm1JR2FCOC9nSFJyVTFrbzYyeDljOGxSZlpHby82L2ozcVd6WEtLdWRSbHFC?=
 =?utf-8?B?TDRDWnAwbU1xcnlDbElrcXJFbmFWQ1V4R3Z5dDFtZ2tzUHhaVzNrTFRZUUNH?=
 =?utf-8?B?UHRqQnM3VkhkM0hXZGFoMytBZEJ0bEx6Ymo2U2RlamI5aStrSTd1bUpINVFn?=
 =?utf-8?B?RHpSYkxOWkVGRW1ueGNTKzR3clJ6VWtxSzM5eHpORXhVeWtzeEtNWEhiZXZJ?=
 =?utf-8?B?RE5qamxHcklydjhEd3U4TmJuUHY3RVQvRUt3a2hjbUdFelZ0dFEybkhac1Vl?=
 =?utf-8?B?NXk5YTZCODlmZHBCNVFqb2Y5Ym9UUmlOSEljV293clNiK1RoRnNyRGJzN3cz?=
 =?utf-8?B?NW16bGw3YW1jZnlJVVpvZ01kSjF4dWNMaFZqRnRuVkdPR3QxaHpUQjZIakt2?=
 =?utf-8?B?bVhWRW5TaVlkS3RXa25GSkRNYjMrS2VnWTJYWW5GWUxpUHhuY1RoN0cxWFRv?=
 =?utf-8?B?aElmQnJDL2ZYQlhRb0N0amZDZHpqQmdkRVA1c3ZrdklBNUdhT1J1MTFtUUFk?=
 =?utf-8?B?TEhPRDEyNWRaaEM1anhGUS9hOUEyQnJEYW5YQk5EUEloeWM1R3FMZ2wvMlhC?=
 =?utf-8?B?enhzdm9kWU84NTU5NDBwWUNhY1lFN1FONUhHS3pCN1lvRE4rTUlZU3BLNzlj?=
 =?utf-8?Q?qzVgYFMwbaJrQtcZ7s77MpsrZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4SPRMB0056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d43330f-feb1-487c-672d-08dd6d1b2b1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 10:36:01.1048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I8/U65h5suanVZEbGwvZhS222/6VLQm7PMcrjyndu6oReo3q4/YVXG5eVsSn9K729RcxFDfgLa0POweEGR5MDQ==
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAyNywg
MjAyNSAzOjMzIFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IE1hbm5h
LCBBbmltZXNoDQo+IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBBZGQg
UFNSIHBhdXNlL3Jlc3VtZSByZWZlcmVuY2UgY291bnQNCj4gDQo+IE9uIFRodSwgMjAyNS0wMy0y
NyBhdCAwNTo1NSArMDAwMCwgTWFubmEsIEFuaW1lc2ggd3JvdGU6DQo+ID4NCj4gPg0KPiA+ID4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEhvZ2FuZGVyLCBKb3VuaSA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gU2VudDogRnJpZGF5LCBNYXJjaCAyMSwg
MjAyNSA3OjE1IFBNDQo+ID4gPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBN
YW5uYSwgQW5pbWVzaA0KPiA+ID4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5
MTUvcHNyOiBBZGQgUFNSIHBhdXNlL3Jlc3VtZSByZWZlcmVuY2UNCj4gPiA+IGNvdW50DQo+ID4g
Pg0KPiA+ID4gT24gRnJpLCAyMDI1LTAzLTIxIGF0IDA5OjQ0ICswMDAwLCBNYW5uYSwgQW5pbWVz
aCB3cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPiA+ID4gPiA+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnPiBPbg0KPiA+ID4gPiA+IEJlaGFsZiBPZiBKb3VuaSBIw7ZnYW5k
ZXINCj4gPiA+ID4gPiBTZW50OiBGcmlkYXksIE1hcmNoIDE0LCAyMDI1IDEyOjIwIFBNDQo+ID4g
PiA+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+ID4gPiA+ID4gaW50
ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiA+ID4gQ2M6IEhvZ2FuZGVyLCBKb3Vu
aSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+IFN1YmplY3Q6IFtQQVRDSF0g
ZHJtL2k5MTUvcHNyOiBBZGQgUFNSIHBhdXNlL3Jlc3VtZSByZWZlcmVuY2UNCj4gPiA+ID4gPiBj
b3VudA0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gV2UgaGF2ZSBub3cgc2VlbiB0aGlzOg0KPiA+ID4g
PiA+DQo+ID4gPiA+ID4gPDQ+IFsyMTIwLjQzNDE1M10gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1d
IGRybV9XQVJOX09OKHBzci0NCj4gPiA+ID4gcGF1c2VkKQ0KPiA+ID4gPiA+IDw0PiBbMjEyMC40
MzQxOTZdIFdBUk5JTkc6IENQVTogMyBQSUQ6IDQ0MzAgYXQNCj4gPiA+ID4gPiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jOjIyMjcNCj4gPiA+ID4gPiBpbnRlbF9wc3Jf
cGF1c2UrMHgxNmUvMHgxODAgW2k5MTVdDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBDb21tZW50IGZv
ciBkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHBzci0+cGF1c2VkKSBpbg0KPiA+ID4gPiA+IGlu
dGVsX3Bzcl9wYXVzZSBzYXlzOg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gIklmIHdlIGV2ZXIgaGl0
IHRoaXMsIHdlIHdpbGwgbmVlZCB0byBhZGQgcmVmY291bnQgdG8NCj4gPiA+ID4gPiBwYXVzZS9y
ZXN1bWUiDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBUaGlzIHBhdGNoIGlzIGltcGxlbWVudGluZyBQ
U1IgcGF1c2UvcmVzdW1lIHJlZmNvdW50Lg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+
ID4gLS0tDQo+ID4gPiA+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmjCoMKgwqAgfMKgIDIgKy0NCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgIHwgMjYgKysrKysrKysrLS0NCj4gPiA+ID4gPiAt
LS0tDQo+ID4gPiA+ID4gLS0tLQ0KPiA+ID4gPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkNCj4gPiA+ID4gPg0KPiA+ID4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0K
PiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gPiA+ID4gPiBpbmRleCA5OWE2ZmQyOTAwYjljLi42NWM4MDhiYmExYzZjIDEwMDY0
NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiA+ID4gPiBAQCAtMTYyMCw3ICsxNjIwLDcgQEAg
c3RydWN0IGludGVsX3BzciB7DQo+ID4gPiA+ID4gwqAJYm9vbCBzaW5rX3N1cHBvcnQ7DQo+ID4g
PiA+ID4gwqAJYm9vbCBzb3VyY2Vfc3VwcG9ydDsNCj4gPiA+ID4gPiDCoAlib29sIGVuYWJsZWQ7
DQo+ID4gPiA+ID4gLQlib29sIHBhdXNlZDsNCj4gPiA+ID4gPiArCWludCBwYXVzZV9jb3VudGVy
Ow0KPiA+ID4gPiA+IMKgCWVudW0gcGlwZSBwaXBlOw0KPiA+ID4gPiA+IMKgCWVudW0gdHJhbnNj
b2RlciB0cmFuc2NvZGVyOw0KPiA+ID4gPiA+IMKgCWJvb2wgYWN0aXZlOw0KPiA+ID4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
PiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+
ID4gaW5kZXggNGU5MzhiYWQ4MDhjYy4uNGQ0ZWNmNzU1NWI2NiAxMDA2NDQNCj4gPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+
IEBAIC0yMDI0LDcgKzIwMjQsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tl
ZChzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiA+ID4NCj4gPiA+
ID4gPiDCoAlpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+
ID4gPiA+ID4gwqAJaW50ZWxfZHAtPnBzci5lbmFibGVkID0gdHJ1ZTsNCj4gPiA+ID4gPiAtCWlu
dGVsX2RwLT5wc3IucGF1c2VkID0gZmFsc2U7DQo+ID4gPiA+ID4gKwlpbnRlbF9kcC0+cHNyLnBh
dXNlX2NvdW50ZXIgPSAwOw0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gwqAJLyoNCj4gPiA+ID4gPiDC
oAkgKiBMaW5rX29rIGlzIHN0aWNreSBhbmQgc2V0IGhlcmUgb24gUFNSIGVuYWJsZS4gV2UgY2Fu
IGFzc3VtZQ0KPiA+ID4gPiA+IGxpbmsgQEAgLTIyMTAsNyArMjIxMCw2IEBAIHZvaWQgaW50ZWxf
cHNyX2Rpc2FibGUoc3RydWN0DQo+ID4gPiA+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4g
PiA+IMKgICovDQo+ID4gPiA+ID4gwqB2b2lkIGludGVsX3Bzcl9wYXVzZShzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKcKgIHsNCj4gPiA+ID4gPiAtCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0NCj4gPiA+ID4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiA+ID4gPiDC
oAlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gPiA+ID4gPg0KPiA+
ID4gPiA+IMKgCWlmICghQ0FOX1BTUihpbnRlbF9kcCkgJiYgIUNBTl9QQU5FTF9SRVBMQVkoaW50
ZWxfZHApKSBAQA0KPiA+ID4gPiA+IC0NCj4gPiA+ID4gPiAyMjIzLDEyICsyMjIyLDEwIEBAIHZv
aWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gPiA+ICppbnRlbF9kcCkN
Cj4gPiA+ID4gPiDCoAkJcmV0dXJuOw0KPiA+ID4gPiA+IMKgCX0NCj4gPiA+ID4gPg0KPiA+ID4g
PiA+IC0JLyogSWYgd2UgZXZlciBoaXQgdGhpcywgd2Ugd2lsbCBuZWVkIHRvIGFkZCByZWZjb3Vu
dA0KPiA+ID4gPiA+IHRvDQo+ID4gPiA+ID4gcGF1c2UvcmVzdW1lDQo+ID4gPiA+ID4gKi8NCj4g
PiA+ID4gPiAtCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgcHNyLT5wYXVzZWQpOw0KPiA+ID4g
PiA+IC0NCj4gPiA+ID4gPiAtCWludGVsX3Bzcl9leGl0KGludGVsX2RwKTsNCj4gPiA+ID4gPiAt
CWludGVsX3Bzcl93YWl0X2V4aXRfbG9ja2VkKGludGVsX2RwKTsNCj4gPiA+ID4gPiAtCXBzci0+
cGF1c2VkID0gdHJ1ZTsNCj4gPiA+ID4gPiArCWlmIChpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50
ZXIrKyA9PSAwKSB7DQo+ID4gPiA+ID4gKwkJaW50ZWxfcHNyX2V4aXQoaW50ZWxfZHApOw0KPiA+
ID4gPiA+ICsJCWludGVsX3Bzcl93YWl0X2V4aXRfbG9ja2VkKGludGVsX2RwKTsNCj4gPiA+ID4g
PiArCX0NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IMKgCW11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsN
Cj4gPiA+ID4gPg0KPiA+ID4gPiA+IEBAIC0yMjUxLDEzICsyMjQ4LDE0IEBAIHZvaWQgaW50ZWxf
cHNyX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ID4gPiAqaW50ZWxfZHApDQo+ID4gPiA+
ID4NCj4gPiA+ID4gPiDCoAltdXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiA+ID4gPiA+DQo+ID4g
PiA+ID4gLQlpZiAoIXBzci0+cGF1c2VkKQ0KPiA+ID4gPiA+IC0JCWdvdG8gdW5sb2NrOw0KPiA+
ID4gPiA+ICsJaWYgKCFwc3ItPmVuYWJsZWQpIHsNCj4gPiA+ID4NCj4gPiA+ID4gQW55IHJlYXNv
biBub3QgdG8gY2hlY2sgaW50ZWxfZHAtPnBzci5wYXVzZV9jb3VudGVyIGhlcmUsIG1heWJlIHdl
DQo+ID4gPiA+IGNhbiBjaGVjayBmb3IgIXBzci0+ZW5hYmxlZCAmJiBwc3ItPnBhdXNlX2NvdW50
ZXIgPiAwLg0KPiA+ID4gPiBPdGhlciBjaGFuZ2VzIGFyZSBMR1RNLg0KPiA+ID4NCj4gPiA+IFdo
ZXJlIHlvdSB3b3VsZCBkZWNyZWFzZSBwYXVzZV9jb3VudGVyPyBBcmUgeW91IGNvbmNlcm5lZCBv
bg0KPiA+ID4gdW5iYWxhbmNlZCBwYXVzZS9yZXN1bWUgY2FsbHM/DQo+ID4NCj4gPiBZZXMgd2l0
aG91dCBpbnRlbF9wc3JfcGF1c2UoKSBnZXR0aW5nIGNhbGxlZCBpZiByZXN1bWUgZnVuY3Rpb24g
aXMNCj4gPiBjYWxsZWQgd2hpbGUgcHNyIGlzIGVuYWJsZWQgaGVyZSBwYXVzZV9jb3VudGVyIHdp
bGwgYmUgZGVjcmVtZW50ZWQNCj4gPiB3aGljaCBtaWdodCByZXN1bHQgdW5iYWxhbmNlZCBzaXR1
YXRpb24uDQo+ID4gV2UgbWF5IG5vdCBoaXQgdGhlIGFib3ZlIHNjZW5hcmlvIGJ1dCBnb29kIHRv
IGFkZCBhIGNoZWNrIGlmDQo+ID4gcGF1c2VfY291bnRlciA+IDAgdGhlbiBvbmx5IGxhdGVyIGRl
Y3JlbWVudCBpdCBpbiB0aGUgc2FtZSBwbGFjZQ0KPiA+IGN1cnJlbnRseSBhZGRlZC4NCj4gDQo+
IFRoYXQgd291bGQgY2F1c2UgcHJvYmxlbXMgYW5kIGJyZWFrIHRoZSB3aG9sZSBpZGVhIHJlZmVy
ZW5jZSBjb3VudC4gSXQNCj4gd291bGQgYWxzbyBoaWRlIHBvc3NpYmxlIGlzc3VlLg0KPiANCj4g
SSBjYW4gYWRkIGRybV9XQVJOX09OKCFwc3ItPnBhdXNlX2NvdW50ZXIpIGludG8gaW50ZWxfcHNy
X3BhdXNlPyBUaGF0DQo+IHdvdWxkIHJldmVhbCBwb3NzaWJsZSB1bmJhbGFuY2UgcHJvYmxlbS4g
SWYgcGF1c2VfY291bnRlciBpcyBub3QgcHJvcGVybHkNCj4gZGVjcmVhc2VkIHRoYXQgd291bGQg
YmUgdmlzaWJsZSBpbiBJR1QgdGVzdGNhc2VzIGNoZWNraW5nIFBTUiBlbnRyeS4gV2hhdCBkbw0K
PiB5b3UgdGhpbms/DQoNClN1cmUsIGdvdCBpdC4uIGxvb2tzIG9rIHRvIG1lLg0KDQpSZWdhcmRz
LA0KQW5pbWVzaA0KPiANCj4gQlIsDQo+IA0KPiBKb3VuaSBIw7ZnYW5kZXINCj4gPg0KPiA+IFJl
Z2FyZHMsDQo+ID4gQW5pbWVzaA0KPiA+DQo+ID4gPg0KPiA+ID4gQlIsDQo+ID4gPg0KPiA+ID4g
Sm91bmkgSMO2Z2FuZGVyDQo+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiBSZWdhcmRzLA0KPiA+ID4g
PiBBbmltZXNoDQo+ID4gPiA+DQo+ID4gPiA+ID4gKwkJbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2sp
Ow0KPiA+ID4gPiA+ICsJCXJldHVybjsNCj4gPiA+ID4gPiArCX0NCj4gPiA+ID4gPg0KPiA+ID4g
PiA+IC0JcHNyLT5wYXVzZWQgPSBmYWxzZTsNCj4gPiA+ID4gPiAtCWludGVsX3Bzcl9hY3RpdmF0
ZShpbnRlbF9kcCk7DQo+ID4gPiA+ID4gKwlpZiAoLS1pbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50
ZXIgPT0gMCkNCj4gPiA+ID4gPiArCQlpbnRlbF9wc3JfYWN0aXZhdGUoaW50ZWxfZHApOw0KPiA+
ID4gPiA+DQo+ID4gPiA+ID4gLXVubG9jazoNCj4gPiA+ID4gPiDCoAltdXRleF91bmxvY2soJnBz
ci0+bG9jayk7DQo+ID4gPiA+ID4gwqB9DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBAQCAtMzMyMiw3
ICszMzIwLDcgQEAgdm9pZCBpbnRlbF9wc3JfZmx1c2goc3RydWN0IGludGVsX2Rpc3BsYXkNCj4g
PiA+ID4gPiAqZGlzcGxheSwNCj4gPiA+ID4gPiDCoAkJICogd2UgaGF2ZSB0byBlbnN1cmUgdGhh
dCB0aGUgUFNSIGlzIG5vdCBhY3RpdmF0ZWQgdW50aWwNCj4gPiA+ID4gPiDCoAkJICogaW50ZWxf
cHNyX3Jlc3VtZSgpIGlzIGNhbGxlZC4NCj4gPiA+ID4gPiDCoAkJICovDQo+ID4gPiA+ID4gLQkJ
aWYgKGludGVsX2RwLT5wc3IucGF1c2VkKQ0KPiA+ID4gPiA+ICsJCWlmIChpbnRlbF9kcC0+cHNy
LnBhdXNlX2NvdW50ZXIpDQo+ID4gPiA+ID4gwqAJCQlnb3RvIHVubG9jazsNCj4gPiA+ID4gPg0K
PiA+ID4gPiA+IMKgCQlpZiAob3JpZ2luID09IE9SSUdJTl9GTElQIHx8DQo+ID4gPiA+ID4gLS0N
Cj4gPiA+ID4gPiAyLjQzLjANCj4gPiA+ID4NCj4gPg0KDQo=
