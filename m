Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF06A1339F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 08:15:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 069C010E8BA;
	Thu, 16 Jan 2025 07:15:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DSi0HtpG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 949D810E8BA;
 Thu, 16 Jan 2025 07:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737011749; x=1768547749;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vF9q/mpmsH4YEjqnkSlBD+i+W758VsY4xhtoHLo8YAs=;
 b=DSi0HtpG5Y3FKnqGKVNIOJxWlhOov+ZmyF4k8Lh1JmXbpbzvAt/YFCRB
 zcVFswYdL1DrvkeBxCyGtfRu2u/4CkttkQ8AW0Bx9jKPcGg3kQIQCmwIE
 K1hTuKoerV09C9+GTrpUhEiKJclc2yCCSI9ttFLqAzjO/9cqwcbO0OPxf
 a/+2D2JjS4534REE3SOXH3jjJ+IKcFGCDlsaH5IAKhwjMFdmNR9UvXpBR
 hfESxtAXmosgMMWtQtR+OYSLCFSYNzVwN0ROh+u9kb7dEtcjKM6vr+GVm
 jBitqlNFRrrAIUE0jQq5T+1FiMF+RCU6EUBhoYzKGNr9pxfQjc2ksxIiu g==;
X-CSE-ConnectionGUID: ng1wqtQIRNO4A45ZOtlVVg==
X-CSE-MsgGUID: ryLL+KOPR+6LSs0keHPoOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37263706"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="37263706"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 23:15:37 -0800
X-CSE-ConnectionGUID: eW5aNMgNRPWq2NAJelqVTA==
X-CSE-MsgGUID: 58sBlmk4RACDCzTpySAh9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="110367152"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 23:15:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 23:15:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 23:15:36 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 23:15:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZcORL1YEbEy3aAl4Dr38CGzhDCQjZsLxV482yv+9kZetj9nYb8fDSuc4enQ8BDyrSqCJsy8xmyqBptj+o5DFU0sxL5EYwrpse5OWzCNsvECtZZ4POc5QSw4bRCjW3HJiQNhzaL8qeL4W0FdYgZzJbx0UWxoTkyh4I6B/BGadoDNCkkeBVLfHC/4N245k4aNpwrbuSFDJKxsVtox6cqgCZ0mHarflMN5wHdDBj0oPTk5orUvM+B1z+SMk3jecMufifE1yhbbd4HD2+BnANvLwwU7nKRhOhN4Xi4jPA+RK0b5MP1F9H7f5CZK65LEDqUPbsEA9TUax5z3Ba1XBGhTB0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vF9q/mpmsH4YEjqnkSlBD+i+W758VsY4xhtoHLo8YAs=;
 b=CctHtMMRH4AKfHIiCSAecCxICcnhckBI/ACSQzaEKY+Kv2qgaef7WUJ0HRNvJUP9VfyU9104PQriZHINWkqy3shmWFfND5OH2ySaE7WplidADuNQtDjPrCyH9ro27O2MQXGZggew7QQMkwVvwK0lxP1VYvq+NCDnPuZGzNkNqRdH0mX0dB5Ze0lEgGxHBvSOta2N2Cu/eiJphBbAHX6Q+ob7UVVeV58mpwoNgefa/GO1KiiHRzI1UpokgQ+oQB2ujaBou4dhchMkbOZ1SHMOHZOh4oKg9/juSm81INlKOfppb43Kv4K1xdLMh5XX+hwLkJuXndkW5GcKk6JWV1S7hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) by
 CH3PR11MB7723.namprd11.prod.outlook.com (2603:10b6:610:127::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 07:15:20 +0000
Received: from DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7]) by DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 07:15:20 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 08/10] drm/i915/psr: Add intel_psr_is_psr_mode_changing
Thread-Topic: [PATCH v3 08/10] drm/i915/psr: Add intel_psr_is_psr_mode_changing
Thread-Index: AQHbYmioK8CCgVrE2U+45kxkl++9ELMZB7ww
Date: Thu, 16 Jan 2025 07:15:20 +0000
Message-ID: <DS7PR11MB59905198CA6E7F8317A9DD79F91A2@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-9-jouni.hogander@intel.com>
In-Reply-To: <20250109073137.1977494-9-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_|CH3PR11MB7723:EE_
x-ms-office365-filtering-correlation-id: 5b138c98-9112-41a6-63e3-08dd35fd893d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cElwMVJSTTBqSXdpYUxDalRHVlg4c0poNjloOTZCSzNWMHVsL1RyZG9kT2lw?=
 =?utf-8?B?cTEzeGpEeGVNZWtJaUowL2lUTXJET1NlZlozc0FPUFNiem9MOGRhN2hNb2ty?=
 =?utf-8?B?VjRDdE5XNG1ZN2h0dkN6TjFhSDBLR1pOQkRtQ2Iwa0xzTGQ1QlIzVllrY1Av?=
 =?utf-8?B?RkFUUUsyWTJ2alJUU3pmNG5uKzRNZzdGeENZY2pVY0dpelN3R2VZMEN1bFoy?=
 =?utf-8?B?SzRkYWFEZmQwOFlYSkowWXUyRTF4ZGdocUhTNHZTUkpKdEpsTUJEQVZRSkxu?=
 =?utf-8?B?YUJiSXhCTm5GcGxRa0R5SHNHMEFyR1VIM2xYaTJEY1FsYTJ1UnJqcWw4Rko3?=
 =?utf-8?B?NUpyZjFRYW1uRWl2VXppYXZCZ3FsT1hXVEEwdW1IdGtzOWdaUUl3NVJJaUZE?=
 =?utf-8?B?SVhKNFlJbVRxNXdtMHl4RE94VUx5QUk0RUF0dzNpRG9ZNksrZmVmSHJ4UGhU?=
 =?utf-8?B?NFpvRGNlMFB3VXlTUXJrTVM4VUdxaUJRVkhuNDJYbVFraFRSS09CZGpiayts?=
 =?utf-8?B?ZUtvdzc0ak5LQ3FsTnNSUytPSzN3eGlBWWd4clEyazdmWDJ1T25HQ0pWbjJK?=
 =?utf-8?B?ZWhWSzFKNVNHVEhZc0ZlVUJ0ZkJ4anlYdGFnOURpbE9XVWtrUmkzTkIxRmJj?=
 =?utf-8?B?ZVpyQ29jT3JlZXZsUlRyYkJTZHpNa1VWb2JpNHNlWVFIMlFmVHloVHcvelht?=
 =?utf-8?B?S1U3T3lKeklndWVhUDlIREJKQjIwVkRvN0FCN0RzYVF3Qk9peHJxallSUGxV?=
 =?utf-8?B?dVNNOXorampTSWVaY3RTWitqTzVldlR2WWlnVmptMEVIQ1RKWGJkcDRQcnNi?=
 =?utf-8?B?dk9EdVJTQSswdTZqNEFmcmhlL1dmLzFjb1Jjem02K1NQRzFpSHNVZUJZWE40?=
 =?utf-8?B?c1gvNDZBaTdRKysyRTFKbU55YVJtZzFweFp4OG02MkFia3Q3azBLTzBKdHZr?=
 =?utf-8?B?MWUwc3RzMTNjYmNlb0dPYWlLclpEanBkUUp6azhkdnExMHA1dGdsNlV0aHpD?=
 =?utf-8?B?VGhUNDBFOFNobHRnQlBSOEtYVGMwRnNyRFVrakNPVGlETFhSUmRIK1l4bkVo?=
 =?utf-8?B?SVBzakttRW1SbnBBS2FKOEplaEJmMENXbW5tVkZndXlLdjdibE5yTFowSEt4?=
 =?utf-8?B?dEwwRFdyWFh1T2NRNjJueGFXT29nR1E0a1RPZEQxelBMSnYydHU4b25ONkFV?=
 =?utf-8?B?RWhEVjRQaXc1YmxJMzdsZnAyWnBaaXhjOXo3d0hORlQvZ0l0bjgyS010N2hu?=
 =?utf-8?B?UmpvbEdGYThXR1lHazNOOFlHZVI1aHQ2MWljNzBWR1AxcVhlREthaW5TT1Uy?=
 =?utf-8?B?WEYvSHNVd2pLZVAvZWwxbW9uMUsrZXN6RmpqTExWZzZKcHR4bHdCV3Q1a2pX?=
 =?utf-8?B?R1ZGZVROZisxRFFyUTZRcHhIYS9ZQk84dDJOQXlmdnp1Sk1ZeEJDQUk5M01N?=
 =?utf-8?B?TWs4YjdLTW9KMFZ5K1h2djB5Um5YTHNTVnBMaTFHNUFneTArelZTZGxkSFJD?=
 =?utf-8?B?QndzYm1pNjg3ZkFlYXMyUUZDbm5oalRvdXNCaXd3aW04ekN0NkFCK254TVBp?=
 =?utf-8?B?M2hOalp0ZUFCSENjU3MvMmZaYUs3UDk5VjBSczBBRDA2RFRLNGpQek15NmJ6?=
 =?utf-8?B?NktTRVVBSTJxWkxHTHZoclprSmxsS1Jxc2s5WEg4UmRaQUNaRGFjUVJ3WTBH?=
 =?utf-8?B?alNNZExrdVRhZ1NxUXdPTVpuSFFsYVRFMXA2a1AzS3lLT3l1aE94TUZWU0s1?=
 =?utf-8?B?OVFPT2NuMnlHSzQ5bnRqdFdWckZ5Mjl3aXI1TkovNVZTS1ErTDR6R0VFMUdZ?=
 =?utf-8?B?SDFKeVBxR295WnlDck0zeWJscmNnQzNpRGlMaWpPK2hqN0RjcUJMdDZvT29I?=
 =?utf-8?B?QVRTRHNyTXdyNUNya2grSXoxcElkU2dVT1lCQ09JTS9remk4RFh1cWREL3A5?=
 =?utf-8?Q?QDe0Lq3YkMS4z0gz247/M0sbpHwXmfbH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB5990.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmdQeTRIL0RzUmRaMk8vYmQrWDBaVEc4S3VBZWRMNG14bFRWYTZEV09NbHA1?=
 =?utf-8?B?dFNIR0hIUjhQRmtnYmRTYzJHbmxxbkF3bzZpbnpmUXBqVG1XY3RQMUxXSDBM?=
 =?utf-8?B?VjNORlhjMldod2ZqalFvK0lWcUFiWitZNXE2RTdQeGpDRE9HQXZiQnpNeHVQ?=
 =?utf-8?B?dnVHZjQwV2pTVEVTNkpvV0YvMHdrTlVzdTNkVng1ai9UVS9XUU5jdG9UcTVU?=
 =?utf-8?B?NzArNlg3ZktFOUVhWkZQWkZIN1E1QkpoSnlwTU5jZ2pwVzJNU0J5bGlOZFZO?=
 =?utf-8?B?eE05VmtyRDVHOXJBVTh5RW5lbnZrNk45Q2hLSGdWK1gwUmdOQXpRVjVZdGE5?=
 =?utf-8?B?YWZ3aDdiV203QW9QNzkxZjR4emlDODNRMCtuK0R1eXBNU1JDdW01cWNkcFc3?=
 =?utf-8?B?S1htQk5HUk54dnc3Um54WnlUM1RkVUE0QTl1MzVhdG1MMDRZTTVZZU1iZ3h6?=
 =?utf-8?B?dU4vMzhyd09mYzRDKzNyTCtXeEdHR0swbDExTFJaNzlhcDVsSTdBTmphRHZr?=
 =?utf-8?B?Y3hFaEtOTFZ2dWVyKzh3SStMRUxJRkNEbW1rbndhbHJCRHJ0M3ZMRHlDTGkr?=
 =?utf-8?B?bnZRRnlmaXlpV2lWZDRCVk5MZlNEL04vMkxzakt1RmJNRjZ0WFk5aDQ0NkxI?=
 =?utf-8?B?ZGRTSkc4aDhnckMvZm5xaFJLNE5FY1Q1TG9yTXN5YUpJNnVoZVV2S2NVU2cx?=
 =?utf-8?B?NnNuRnZhdlV2MFRVTkdmbzl2TTNvSjRrSktzYUpOMmluT1lJbHd5TVhyZVhG?=
 =?utf-8?B?eTF6a21FSTRhNmM5NUw5TDFpYm1ianh5Rzdic2MxNGZvTVduOUdXMUpNTDBz?=
 =?utf-8?B?WG9Za256ZHgyMzN2eDBxRGphdjl0UC9kVDM0TFNhR3Q5clJiVW02QXAyb0hz?=
 =?utf-8?B?RW1mZDNEckxSVCtWcFlsK1p6RGhGbHRKMTdFcTRucEVVbWs0cCs5R0lpd09i?=
 =?utf-8?B?Y1h2cExMQ0ZOdUsxMHR6eDRkNHNPOXczZHIrMzYxOHNiR09jdkRmMFR5U1RW?=
 =?utf-8?B?L2FmU0pTZEFteFZnRk5oemdKU3RubWlPdnBMb29KZmF6c2lKaGd5WjdQaDQx?=
 =?utf-8?B?eDlYMzlkSEwwQjZTa29ZdUs4RUNtR3FWK2psZTdFZjhPdVFkQy9oSEh2RjFT?=
 =?utf-8?B?a3NqQkwrUzlHYmRVVkVHZkU4emt4WmphSkMvODRWekdSdjJ4R09kaXhSRnhh?=
 =?utf-8?B?aXNIWWxVSytLM2hzSVFMNkZTZzI0Ly9vOGg1WWh3emZNUkw2THpFMm9nSm8x?=
 =?utf-8?B?a2xaYkJqVVFIUXEvZW5YdEV4K2pVSGxVRnZYOUU5Wm1HaTE2alA5WHpWS2ZT?=
 =?utf-8?B?T1VrS2twZFpoNmpHaTRRcXhnbzdURG03RVlWOUhtNG5vZ25QYXVIN2V3YmZN?=
 =?utf-8?B?WkF2dFJ6VjQxNmhXWTB4dExBVTdZd0xibmJPeWxGUm5RZC9MdTZ1ZzRRNXBa?=
 =?utf-8?B?L2tLQ0dGeC9aK1N6OXhTYm05WGRnTXQ5RDNHMzdvQ0hDbFlhOEtjam5wUHR6?=
 =?utf-8?B?TmxMamFpLy8ybG1DMFFIcXRMQWZBVldleEtqTk1wTFhnMThJRFhiOFV5dnFm?=
 =?utf-8?B?aFh1UFVXNDF4SnpKOVYvSWhyempYNG1DeU1takRsZzF4N1hPQTc4MzNIMWhU?=
 =?utf-8?B?cFo3Z3RsR29kd0xQRUFlWUR2eGtiTjZMWmdaQ295ZFNaOHZoZTBDOXBKUWFK?=
 =?utf-8?B?VFhDc0NrcmtPYnpESHVFTk1QZXJkSk8yelVuSDlXVG81WitZVEZRc09iRXVq?=
 =?utf-8?B?TnFoc2xWQWJUOWZtRkh6YWc2M0NKZzZLbTYrb3EzbkNEMUFtOGJRbUkraVRX?=
 =?utf-8?B?eHRLTU51ZXBJYWhPUzE0N1Zid0xZbStDVk9peWpoOE16ekVPRmpGR05CWklx?=
 =?utf-8?B?WXk0SFNvOVFUUDM5LzNNTERsRHQzN3lIWWFYNFA0WnhUdXJJSFVnQkJRVUds?=
 =?utf-8?B?cTNMQTRjc2Y5YXlXSFBxME9rcC9CR3p0NUFxdjN5dVlEb280RFlxcTJKenZO?=
 =?utf-8?B?SnJIYjFQMWx3ZFhoM1VKZi9haG1BT0lYYVBjZm9aS3VYTmM5MUwxWElSZi9O?=
 =?utf-8?B?Ty9GMTA5NFdjcTdzTk1TeXBpODRlRTF3OW05L0o0RjJDclBQRHFtRDlSQllQ?=
 =?utf-8?Q?I2K6lB6vobotnx/3yOyShFk2v?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB5990.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b138c98-9112-41a6-63e3-08dd35fd893d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 07:15:20.1439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sK6EWD6Otq5BempfZodsJ/vYvxZfdYn2NjiYdYpANDjhHZkMf95CRO3ztOWCt32uC07O/M+NAvbti55JiXNCrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7723
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogVGh1cnNkYXksIEphbnVhcnkgOSwgMjAyNSAxOjAyIFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDgvMTBdIGRybS9pOTE1L3BzcjogQWRkDQo+IGlu
dGVsX3Bzcl9pc19wc3JfbW9kZV9jaGFuZ2luZw0KPiANCj4gQWRkIG5ldyBpbnRlcmZhY2UgZm9y
IGNoZWNraW5nIHBvc3NpYmxlIFBTUi9QUiBtb2RlIGNoYW5nZS4gV2UgbmVlZCB0aGlzDQo+IGlu
Zm9ybWF0aW9uIHRvIGRlY2lkZSBpZiBEU0IgY2FuIGJlIHVzZWQuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIwICsrKysrKysr
KysrKysrKysrKysrDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgg
fCAgMiArKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMWU5OTMyOWI3
MGExLi45MGUzNmUzNGUwYzcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBAQCAtMjI1LDYgKzIyNSwyNiBAQCBib29sIGludGVsX3Bzcl9uZWVkc19h
dXhfaW9fcG93ZXIoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJICAgICAg
IGludGVsX2VuY29kZXJfY2FuX3BzcihlbmNvZGVyKTsgIH0NCj4gDQo+ICsvKioNCj4gKyAqIGlu
dGVsX3Bzcl9pc19wc3JfbW9kZV9jaGFuZ2luZyAtIENoZWNrIGlmIFBTUi9QUiBtb2RlIGlzIGNo
YW5naW5nDQo+ICsgKiBAb2xkX2NydGNfc3RhdGU6IHBvaW50ZXIgdG8gb2xkIGludGVsX2NydGNf
c3RhdGUNCj4gKyAqIEBuZXdfY3J0Y19zdGF0ZTogcG9pbnRlciB0byBuZXcgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiArICoNCj4gKyAqIFRoaXMgY2FuIGJlIHVzZWQgdG8gZmlndXJlIG91dCBpZiBQU1Iv
UFIgbW9kZSBpcyBjaGFuZ2luZyBiZXR3ZWVuDQo+ICtvbGQgYW5kIG5ldw0KPiArICogY3J0YyBz
dGF0ZS4NCj4gKyAqDQo+ICsgKiBSZXR1cm5zIHRydWUgaWYgbW9kZSBpcyBjaGFuZ2luZywgZmFs
c2UgaWYgbW9kZSBpcyBub3QgY2hhbmdpbmcuDQo+ICsgKi8NCj4gK2Jvb2wgaW50ZWxfcHNyX2lz
X3Bzcl9tb2RlX2NoYW5naW5nKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpvbGRf
Y3J0Y19zdGF0ZSwNCj4gKwkJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
Km5ld19jcnRjX3N0YXRlKSB7DQo+ICsJcmV0dXJuIG9sZF9jcnRjX3N0YXRlLT5oYXNfcHNyICE9
IG5ld19jcnRjX3N0YXRlLT5oYXNfcHNyIHx8DQo+ICsJCW9sZF9jcnRjX3N0YXRlLT5oYXNfc2Vs
X3VwZGF0ZSAhPSBuZXdfY3J0Y19zdGF0ZS0NCj4gPmhhc19zZWxfdXBkYXRlIHx8DQo+ICsJCW9s
ZF9jcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ICE9IG5ld19jcnRjX3N0YXRlLQ0KPiA+aGFz
X3BhbmVsX3JlcGxheSB8fA0KPiArCQlvbGRfY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc3VfcmVn
aW9uX2V0ICE9DQo+ICsJCW5ld19jcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQ7
DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBib29sIHBzcl9nbG9iYWxfZW5hYmxlZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKSAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
dG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuaA0KPiBpbmRleCBmYzgwNzgxNzg2M2UuLmNjNjI2N2U4NzkzMyAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IEBAIC0yNiw2
ICsyNiw4IEBAIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZTsNCj4gIAkJCQkgICAgKGludGVsX2Rw
KS0NCj4gPnBzci5zb3VyY2VfcGFuZWxfcmVwbGF5X3N1cHBvcnQpDQo+IA0KPiAgYm9vbCBpbnRl
bF9lbmNvZGVyX2Nhbl9wc3Ioc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOw0KPiArYm9v
bCBpbnRlbF9wc3JfaXNfcHNyX21vZGVfY2hhbmdpbmcoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUNCj4gKm9sZF9jcnRjX3N0YXRlLA0KPiArCQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUpOw0KPiAgYm9vbCBpbnRlbF9wc3JfbmVlZHNf
YXV4X2lvX3Bvd2VyKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCQkJCSAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiB2b2lkIGludGVsX3Bz
cl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+IC0tDQo+IDIuNDMuMA0K
DQo=
