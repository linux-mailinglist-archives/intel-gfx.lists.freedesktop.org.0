Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEE8B4389B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 12:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B9710E22F;
	Thu,  4 Sep 2025 10:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UEKKsVPe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D3810E22F;
 Thu,  4 Sep 2025 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756981439; x=1788517439;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=1mKzORDwLDQOEuKpTvio4iGh/Dfbd/emCIeNy0o87xc=;
 b=UEKKsVPefpdpLVkMY8VBslPNLaI2oQpwwiJrcyHCiq4D3/wKvMFZJn2m
 pR29PRjMVXWhFT115BFlYPJ9t/pOjsJj1D9aPD2VcGeS8uZPfRs7AOonS
 +1v6kIOHtLLV6RkuSseT2tuIqlxw9lBl/u9IBsi/jo2UnXXYBpFflr8uZ
 BvOIKTU+0uRcVljnOVA19omF9fZgxb4/kIUNEirqkByfzw97S1c21HoUk
 W1TyFmpk/6Se0XuMq4hfLpiokO3uet0rickb5UvGw1q7HWRvf6wTBtuK8
 NkHrRbikrT5HDLylk4LcUIf5hJXUG+ys7VZZFuvGie0Gy7KJLeV6+z8C0 Q==;
X-CSE-ConnectionGUID: YXaqGyvTTU+S9egnvi8OhA==
X-CSE-MsgGUID: f9GD0E7MQsu7o9tH+tppGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="84744502"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="84744502"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 03:23:59 -0700
X-CSE-ConnectionGUID: ARYXUN/qSlKEI7jb+8c9LQ==
X-CSE-MsgGUID: Te9cN0r1SxmauOkv/aMj4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="171732099"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 03:23:59 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 03:23:57 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 03:23:57 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.70) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 03:23:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Es/ru8Jz65wkVyCyGoUp27S3OhCR7Cu0psS1yUdfth0NxP8poptbACzafJzjdIaW67nr/bq0+BtNCHKHcd5M0AWAf0Ba7gsrKHdFWaFOP2mwcGxn8H+BpPg+eoFhqYv8dkERrwHM3UlVFsebW4k4IUuf4p/67gpWRNa9Wn4JPT582PBht3b7c1EfqOq+ByaP36RYwDYJqsck64tGK2sZk9sqPbuPku/ImWEvNaLntzF7nO6AvqgqIdSHO7alAqfclIv6rWkIhOysoWhWF4QoX8DNmqjGVJLI4eHmGhxmh866EaSG6O2/P4F7mAzGLzmqYXQUI6mRmnEvPEdS38q5JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1mKzORDwLDQOEuKpTvio4iGh/Dfbd/emCIeNy0o87xc=;
 b=sRKcy2rBw83nB7jR7EA9Vw3UgJ+5wFO30wSPpmUTrf16v+0Mcb2Lc6ZP/12q3OG6hsZ5t4Wb9+r9iZaO4NiXZU3cAFtNSFEWhIH3rIQi38P1R8spmP/fChlSsv4as3qR1NEF6gqa86y1XsmwAB3VXgcpFodKf2CCNZHqORkhYE+6oA7Gj/ff8m6HoTr6CgV8YIOR4TEPyIaKcA1611jloyVVv+EeiFxOUo6VHmNNVou5IerWLZMBvCneacFQxRFzaKHY8c45NoWlb7lw7I0GLUZTmqdsSYu8gqUPHodtWzqkJn4r2mQyUVMgxQUYjpsBumjj2p5YuDDiROmslAkLJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW6PR11MB8337.namprd11.prod.outlook.com (2603:10b6:303:248::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Thu, 4 Sep
 2025 10:23:54 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 10:23:54 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 20/20] drm/i915/pps: prefer poll_timeout_us() over
 read_poll_timeout()
Thread-Topic: [PATCH 20/20] drm/i915/pps: prefer poll_timeout_us() over
 read_poll_timeout()
Thread-Index: AQHcGBZ9EefAO2kJIUegyiMJ4wgvQbSC29mA
Date: Thu, 4 Sep 2025 10:23:54 +0000
Message-ID: <90a3860142afa6a570692cda4d053f93d7f62c1e.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <260fd455df743453f123d96fc01e7ca96a36f0fa.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <260fd455df743453f123d96fc01e7ca96a36f0fa.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW6PR11MB8337:EE_
x-ms-office365-filtering-correlation-id: 90d500bd-f09f-420a-dd62-08ddeb9d2682
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WmNFR0l3N3JGRWVnWUpYamNrVGF0b3F4OUVCbXFDNEorREtCdXAyZG1VMDlJ?=
 =?utf-8?B?ZnVlNDJINU1DT1JKZzRTdS84TmhEWE9vMzY1MS8yMXgvQXY3Sm1HZGVGNlYy?=
 =?utf-8?B?K2V6UGtETkNEZlJRQ29rOTE5THVzZldDQURnR0pKU3dza1MzR1BaOXhRb0g3?=
 =?utf-8?B?OTNBNHZCbE85ampqc1ZvdnFJNFZMckhNRWViUnhsUVZIc2tGSVJLQVBjdDZE?=
 =?utf-8?B?dmpVTFpJUW9kenlrTXAvRHBIL0MxUzJ5bG4zR2RlVnI2STdENnVpUC9TSWdp?=
 =?utf-8?B?bzlRcVh4cnV3WUVCckFXZ2RLWm90N1FReHF0NytLS3lwTnphYjQyZTJ4QW5R?=
 =?utf-8?B?N0tjVS8wWlB2eTYvdlVkaDZicE9tT2djRWFWQmRaVWpwT0tQMmJCVm12bWZm?=
 =?utf-8?B?dXFQbm8xYitQeXN1alF5QzBKdVorQUtQZ3lTR0hDY2h0ZVRPandmTHZiU3NX?=
 =?utf-8?B?R3ZvVlVUTVZaNEtlTlBKRjZqb2YxOVcxRHh4T2hyNnFIMm9GdXdRMmEyMUti?=
 =?utf-8?B?UklxM094cmU5UFhSb1hZa1JyeWlHbDB3SEJ5M2MzL21Dc1RpdzF4cFdzWEE4?=
 =?utf-8?B?WlRjeGdXMTZrSG1FZGdWS3VyaXJiUElqd3BIeG9saHA1TndCZzhZR2tUL2Zy?=
 =?utf-8?B?My9abmRpQTdRMzJpS1JkMG5HemVhTUdrYUdzYktQMEl5ME9wcU9aUTBUMWlK?=
 =?utf-8?B?YkxtMDBLQWJFajBoWGU0VFphU210QjhyRlBLaXVWcGM0STd2T3pnNnZ0MUxw?=
 =?utf-8?B?WXBCREFHbHdFZkUwRmZuQjI4QlBGSGs4NzArZHg3VENJUk9iZnkvMjZtUWN6?=
 =?utf-8?B?U3VxQzdQMTY5eGhaWGxmSFdCRURKUHdnTVFtZTh3WlFtQ3F3KzdjbTFzZzNp?=
 =?utf-8?B?Y3FjOGhTSG12c2tYMnpva0F6TWJZZDFOeWpEdGxabnVYTExLVUNNNzBaVnRx?=
 =?utf-8?B?MXZ1UWFHcUdibS9HNTdRcmVHbmZ5bVpOeEM0MW43NUM5N0h3SzNIa3Z6aC8y?=
 =?utf-8?B?czNYNDNuUkFsZ3hURXI2UFBHTW0xZGRXQmVZRU10cXlXZUFFWnMza2xCTlNY?=
 =?utf-8?B?cEFCeFpHcThWN1N1Nkt2TnRUais5VjRmVi9vYXFMSGNoNFBCZ0Znb0d0STFi?=
 =?utf-8?B?bXJXVlRCWWwySGVGRE1VUzhGTzlIbWM1ZjhjYXVVeE1uWEE0MFdsRDJOUHB3?=
 =?utf-8?B?Ym8yZmpFN081TVZuRmMwTDlLV0FuZmRjRzEzQU0xNVEranFmQmVJNHBLUU5m?=
 =?utf-8?B?anRySVNBTUEwUGRnT2o5UjBsZCs4TTVra1N4cEtZd2NSc0tYRUliZTRkWitM?=
 =?utf-8?B?c1RtZ3R2U0pNOTY0SXZkdFkrS0RGMzkyMnFFWTNqcVhBYUpjT0JQNWh4anQw?=
 =?utf-8?B?bzZhUlNrendBMis2dDZWTGgxQnhYV2s1TEh1SDRwSUJKMUR2Z0hQTEJKdVpJ?=
 =?utf-8?B?THpSRktTUHZIY2hqOFlpY1d1Y21PNkNJdWY0VUUzRW5YYkV6SE5FSXpEaHZJ?=
 =?utf-8?B?aDdSdDNIMzJKU3RaU0VsdDBHZSs3dktPQzhaajJ0UzRRQXZnMk9WWlV0YUk2?=
 =?utf-8?B?N2l3Um1EZWxCMU1BR3pvYzRmaXhnc2JFWnorZUNISEtQdmpqb0N3em16TGgz?=
 =?utf-8?B?d0ZEUVNBTnZSYml6ZEZYYXN6ejV3OU11L2hDRUlsT2JIeEV0ZjFVVkNTYmFy?=
 =?utf-8?B?UVdkNkNsbzU2amowTWRzL2Y1T3psOTlPUzVzdXVOcEVpc1d2eGJ2YzNvdS9W?=
 =?utf-8?B?eHNrZkhxRU8vbERRZWw2a2YrcVlGeGUxS2ZkZjVGS2xqcUxBTzhIazVXVDND?=
 =?utf-8?B?VDBORGp6WC9BWWQvLy9mMndLcWNZcHhKR3VkOU9XLzZSaVU0U3YzSk0xa0Fs?=
 =?utf-8?B?eUJFMXBSRWhEbm9jYUdBaS9WdzR0VWxsQW4yWXhBbEsybVlpU1BmcEpNNXZU?=
 =?utf-8?B?anFmVzhMV0Ryd2luVjlFNFpGNGlmdTNWODJxeXZvT0hBdzJHZWlGVS95MDQy?=
 =?utf-8?B?NlFVN2Rxa3hBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bStaZVpYckVGNjJQWnlNb2N6MlBXRHFHamd2NnNEVGhZMkp1S2pqdTVGdTRj?=
 =?utf-8?B?TG12dTBpdkROeDV3TEhzMytNV1dWUzFDb2ltNmx1SEVQQWVuUHkybHpvKzNJ?=
 =?utf-8?B?cnRRKyt2dUV0UEk4cDk1d3kvYjA5cmhIMEw3azlTMjZ4U216cGMzMkJpQzZm?=
 =?utf-8?B?QThTZERqZ1IzMzR4VUNOSXp0M1oxcnRXci84ZlNjdHAzZFhwVFVMbzVhdjNp?=
 =?utf-8?B?SjBjNWZqM01ML2lNV3B0Unl2MVoyMU9qWGFzaWVaenVEUVVSUUVJakVLUk5O?=
 =?utf-8?B?c0FENVduWExRdDdoSXNOTkZXTGI5YkxseVVwUURFQWZOL1JzR05vNzNqdVQv?=
 =?utf-8?B?RDdOMlpwc2NVeUdSSEZQNERLdWk1Q3hhanFiN1hBUndUbEZuVEJPSGg2by91?=
 =?utf-8?B?TkMrNytzUDBRWEpjRWVLY0w5L2Q2NzRUUUE5aVpLb3Y5dTJJR080V0hWVSs3?=
 =?utf-8?B?VFdMalVIcFlTaXFtMmZYV3R2NnAwdmN2S2phTW9DVDQyclBLZzVjOGFDQnNz?=
 =?utf-8?B?UDUxRUhwV0tueEdEekhUdUJwYkQwTTdoZU5hVDBneEs4MFNXWk9BZjlpd1VW?=
 =?utf-8?B?YkRFcVRCOW5qM1BKNitiNHpTWjBMaVQ1V2ZkUUtBYzJZcGQzbU5EeXNxaUFy?=
 =?utf-8?B?Y1hka3RmaStFMlVSUkVOYjFhYzZKVjJPTFd1RkZFK2w0VHlxaHFMd3VEc21U?=
 =?utf-8?B?cjA1M2gyV2k4VkdzZ2tTZ0g0R1VLaHRiL2NrWGl3by94a2Z2K3Q1a3VlWWlE?=
 =?utf-8?B?UGltQnZKSlhPd2Z1N1c0ZU9HQVppOTBWSTY3clBscUo2UFU5MWxKN2syQXAr?=
 =?utf-8?B?NE1ZOFpEamJ5WWxNa0g4SlppSlIzdEJUckJPdG5xUnY0dW8vYXdSSlhHQ0FE?=
 =?utf-8?B?MUFZZkpDZHQ5L2cvNGZubEFPSjFxNS9NTGsyUFF3MWpZNVRRdzBmM0llTXdi?=
 =?utf-8?B?UktvWVJrb0hzZkhTVXlPRVJkOTg2WXBLTWRuT09CbGlBVjJILzBJWkJxbUlK?=
 =?utf-8?B?cjJZNU8xVytucTM4UFFBb2hzVlRiRlhvUHVWNFZyMEdrcWN6Vjg5Y3dvUXp6?=
 =?utf-8?B?RmM2a1FocFpNSGxTZEQraWV6LzJXbzJoOFdvVmRQdytEbmkxUjM5VllYci9a?=
 =?utf-8?B?TkZ3M2pTL0I2bDhDYXZxSGhxWG52a2srZU95Yy9HVG5JcUVzN3Z4QktSSmJz?=
 =?utf-8?B?dGprZXA1VWd2TVFGSVQ1aituRWUzZFlOSFFIVVZGVzZ2aFNBaS85eE9zU294?=
 =?utf-8?B?WlRJVGNjZlB4UVdWV3pvZjE4aHo5ZTNiU05HM2lacnFSVy9xeUNNODJXV1hj?=
 =?utf-8?B?b3kvRVhDUFBVR0NJNnZUdzlNL0wrZjNaZkszNnhmVXFKRHIzYWhyYXlGTHpM?=
 =?utf-8?B?ckNaSWJJRERiUnN3dUdETTZnQWNRR0pDQkRHRm5jSWIzazhtU3Bnamh2VCs4?=
 =?utf-8?B?aExvR3JwK2N0NStGYWVqMHBPcEh4emcvbjNmV1Y5c2JiVkxGYll6VWJoSXM1?=
 =?utf-8?B?RnJGcEpmYU41c3NZOTRxRHBmZGF5TmI3OW13U1o0ME9LdzNBSTFDMmRzUHBr?=
 =?utf-8?B?MUdVbDBHYVpxVDlodWdXeTVLQTUyNUUxT3FyM0dYVHU3VlRUN3lRY2paZFpB?=
 =?utf-8?B?K0dwYnNEbjZDT053ZEY0aVlHSFkrZjRCNG5JZ1lhMFRWZmFrMVdSclgwU0Qz?=
 =?utf-8?B?T0Q0UFZFTEJMUnl3a3kzbFE2NDBLRWxscDRxV2tBeG5CMjVmVVBHQVFndlo4?=
 =?utf-8?B?SndJRENhWi9mMGNLVnRsL2JvZjM5aUJHcExwY3lPSk1oSU80RVhIRVVQZ2t6?=
 =?utf-8?B?VmRXOWFBd2VMOExYRHlWNTBCaUg1WnZIbitWb2FTV3d0eTlCWk9STEhRaU1o?=
 =?utf-8?B?QTNaaWExNEcxaTJTVkplbGxBTHlvZXdHei9jWmo4WWx6clZDNXo4UW5ta0xs?=
 =?utf-8?B?MzNqeldhVytmekQ3clAzM0VQSUtRbWpTUUcvbEF3TmlBRGtBTzVBeGVkWDJT?=
 =?utf-8?B?TmhRd1Z0WTM1Uk4vR3pNQ3dGc1NTZE9FUHQycmhKUkp0a1ZNWkZQeDdlUVJz?=
 =?utf-8?B?b1JHeWt5M0xSdmYvY1BhOGxQTjdabGxCcWJua1hjbHo2QWhtWTlockJxajA3?=
 =?utf-8?B?L3RUUEpMWml5ZlUyeHJvSEc2UWRBTlRZU2pvcEVNemtQUEZRa2N4RWNjcXRX?=
 =?utf-8?B?QjcrMVB5ZWtFY0JKL2JLZ0FFK3YyaTIzQmlBYTRaUnludFQ0S24xdG14V3VY?=
 =?utf-8?B?ZHFpVGNrQTVtWS9wMWFtbVZPZTJBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2AFE2E92C37E3D488C41C8972DF18BAC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90d500bd-f09f-420a-dd62-08ddeb9d2682
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 10:23:54.4565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y9nwDhYUxxmxub9SewB7XHUcOANudR/BeRj6JLUCYldIA2eHxLC0gUklCVmCmf+gKE/hYbafvsb2ZbC6vP+TMqBC7rvaQykY8JnMzg/iLz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8337
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VW5pZnkgb24gdXNpbmcgcG9sbF90aW1lb3V0X3VzKCkgdGhyb3VnaG91dCBpbnN0ZWFkIG9mIG1p
eGluZyB3aXRoDQo+IHJlYWR4X3BvbGxfdGltZW91dCgpLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMgfCA4ICsrKy0tLS0tDQo+IMKgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiBpbmRleCBiODRlYjQzYmQy
ZDAuLjMyN2UwZGU4NmYxZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wcHMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bwcy5jDQo+IEBAIC02MjcsMTEgKzYyNyw5IEBAIHN0YXRpYyB2b2lkIHdhaXRfcGFuZWxf
c3RhdHVzKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCQnCoMKgwqAgaW50ZWxf
ZGVfcmVhZChkaXNwbGF5LCBwcF9zdGF0X3JlZyksDQo+IMKgCQnCoMKgwqAgaW50ZWxfZGVfcmVh
ZChkaXNwbGF5LCBwcF9jdHJsX3JlZykpOw0KPiDCoA0KPiAtCXJldCA9IHJlYWRfcG9sbF90aW1l
b3V0KGludGVsX2RlX3JlYWQsIHZhbCwNCj4gLQkJCQkodmFsICYgbWFzaykgPT0gdmFsdWUsDQo+
IC0JCQkJMTAgKiAxMDAwLCA1MDAwICogMTAwMCwgdHJ1ZSwNCj4gLQkJCQlkaXNwbGF5LCBwcF9z
dGF0X3JlZyk7DQo+IC0NCj4gKwlyZXQgPSBwb2xsX3RpbWVvdXRfdXModmFsID0gaW50ZWxfZGVf
cmVhZChkaXNwbGF5LA0KPiBwcF9zdGF0X3JlZyksDQo+ICsJCQnCoMKgwqDCoMKgICh2YWwgJiBt
YXNrKSA9PSB2YWx1ZSwNCj4gKwkJCcKgwqDCoMKgwqAgMTAgKiAxMDAwLCA1MDAwICogMTAwMCwg
dHJ1ZSk7DQo+IMKgCWlmIChyZXQpIHsNCj4gwqAJCWRybV9lcnIoZGlzcGxheS0+ZHJtLA0KPiDC
oAkJCSJbRU5DT0RFUjolZDolc10gJXMgcGFuZWwgc3RhdHVzIHRpbWVvdXQ6DQo+IFBQX1NUQVRV
UzogMHglMDh4IFBQX0NPTlRST0w6IDB4JTA4eFxuIiwNCg0K
