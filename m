Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E98DBBF4984
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Oct 2025 06:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F061310E2BF;
	Tue, 21 Oct 2025 04:29:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fzINFpUq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D9E10E2BF;
 Tue, 21 Oct 2025 04:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761020977; x=1792556977;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=OAOl2GFjROPooogJ9ArwkJ4Q9lIsiqBGfeN7r0/lJbE=;
 b=fzINFpUqHckNdGS0yIJ5+OTFV9jrmXH44CX2v0uxzljikqGeS1qkD/DO
 dv52ZWoRqCTgFYDXF9Mgq+RF+dsSMghpMsCvMDDcq/B1tOtxxdl8Kvrr1
 EJPQdIcq5PzXxX/z8Fk9R1KMzBl34DGkGX6IZ+iZjTEjK8MSI+Yw/hzeu
 O7ZEjcY4KwRmUxMhNyYXUK8y4DortCqSVdlBHa1aRU7nl3GCx/VeRXO1K
 4ZFXO+ZozauuK9Za03vc94gsHLeSgDLyfdOwWHoR0H2XnkHPTp9X2nmVq
 7+WAJ/Nj9+VEqfFDhZvbd3zB0Cn9CeA33j7w6ZITgOOS7ZDf0OBvFiX7S w==;
X-CSE-ConnectionGUID: LAiqXL7ZSgKyIz7K/bNaQQ==
X-CSE-MsgGUID: /OfX0iUSQ22bRzpRud3Rhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="65757829"
X-IronPort-AV: E=Sophos;i="6.19,244,1754982000"; d="scan'208";a="65757829"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 21:29:37 -0700
X-CSE-ConnectionGUID: 4N2zNAtQS3Kz5caNBdzyTQ==
X-CSE-MsgGUID: V+2Y4FQzSGG8+GFJ+dBFJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,244,1754982000"; d="scan'208";a="182695712"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 21:29:37 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 21:29:36 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 20 Oct 2025 21:29:36 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.14) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 21:29:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N4Och58NcDGT9bQwjFVgE5kWB7AjHQrdUIkaoF8yw1x7u1fLzl6erF48zMjy6kPhisDisWZM7XStCKuvZ3gYz0+LrieWyu/mpMgLk3X0sOrLHtwP6zwHnea7ilZBgGERLF903IxGnUl0dw2qTVdtzWiRLc8+pq8Q0y2ARbaDq6PnGmivJ2rdYin5CUstzQl8ibFhY7m9gPRrXto8PLa79J5A4cKIbVxn1KNcY1NkAWv/8jpf8SHrwqTmn58tz+lXhyHsSb1GUvmwV/RvIfTRsrTBAczPw+tcmni+h0f1NmYrmqMnBrBDVKK+YINldkNMgLU0lr68ob+s8XsIf3yDyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OAOl2GFjROPooogJ9ArwkJ4Q9lIsiqBGfeN7r0/lJbE=;
 b=kc2BJ93uxlXPGgi1qsFmN2E8sA4Sv0gV7ogllTeFYm9xeIy0qzhb9WfKW3HPnxWetJBaFphTQ2Z9fmrkzhfN05iWlm6UJ4S+5FH3bizr3u9WvCU9I6nQsl75pk8pwqpH7pO/7JWicLeTViC6ejpM5np5c5TLGkqmTeoCcKL08W8FcPnzQLX3XgAIhepG+yZi7BBY7tEpHCJ8UsPk82IfwmIji2Zz6bc0zg+Cl0CAv6kef/rZU2Onl8TTBQ4xakjkqpBPM4MXYQbpuf6uHoNy4pnZAwxEAZQGugWuQPvmUT3ZYGiVxJLfmjrSFQRMWMidzhF61ZLRwj+2NxidolllUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6539.namprd11.prod.outlook.com (2603:10b6:208:3a1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.16; Tue, 21 Oct 2025 04:29:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.016; Tue, 21 Oct 2025
 04:29:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Simplify intel_dp_needs_8b10b_fec()
Thread-Topic: [PATCH] drm/i915/dp: Simplify intel_dp_needs_8b10b_fec()
Thread-Index: AQHcQdiENCzwGBPqL0mCa3o0vwfvqLTMAt0A
Date: Tue, 21 Oct 2025 04:29:28 +0000
Message-ID: <6117e1b424e66faae0f9dc3713dea16ed0257e6f.camel@intel.com>
References: <20251020154438.416761-1-imre.deak@intel.com>
In-Reply-To: <20251020154438.416761-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6539:EE_
x-ms-office365-filtering-correlation-id: 4930c52b-04db-4a8e-12a7-08de105a6ca6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?SHhlYjk1T1ZDdTB6SDg4ZmkyUjJmOTZ3alFNRzlxbkk5ZWd1dGlKZUhqY1BM?=
 =?utf-8?B?cU5oeWFVRU9xaE9tUFdKd0lJNFVGd2FIZEZwdHE4ajhnQ29CVmpVQTNYbXRT?=
 =?utf-8?B?RkREUURFaUlZSmJtSWVudHNNVlljMjc4N0pxSTFYT0tGS21Fd3pHMnRaUXQ4?=
 =?utf-8?B?dWNnR2ViRUlEbUdWNU1RSDdMU1o4dmVpMVh1RGFXZmpUS0U4TmVsOTFSZEFE?=
 =?utf-8?B?dVgya0Fra1dUUHJRTTduZTQ5dGRWVWJZSzMvR3M5eWNyNlV3REt5NERIYW9Q?=
 =?utf-8?B?am5DNVZlNk1aaE9vUi95N3VMY1VFQk96QkpBSmtKN2ZXUjkwckgvQXlKWTlr?=
 =?utf-8?B?OFEwSmRva2F3Y2Jtc2ZSanNKN2pMcUU1Z2pnV2VlalpWK1BremtqTGhENDQz?=
 =?utf-8?B?Sm9VYndtc0VoSUM1QXBRcmVDVUlCalBENjZYWHJPaWplbnQ1WmVsR1JSZzMy?=
 =?utf-8?B?UGtyeVdlYWt4NURUSE9BUzVhTWF0a0E4QmFXbTU2SXJhNXFBZTVZZlgzbkps?=
 =?utf-8?B?a241SjhQM2lqYlFoVlhiYms1TXNMd1g2REVvMDJZUDFYQ0V6c2pBM3FQTjBs?=
 =?utf-8?B?bHZvSnoydE9JR3JiTzJyMUU4T05LSHFBQXE2RW9SaUhvcDB2Q01UcnpxamNr?=
 =?utf-8?B?c0lFK1BneHczN3dyci9HMDBVdThQdXpORzJXbVpsT3h6cTE3Q1o4eUFHcmph?=
 =?utf-8?B?UnIyYmhNUFR1RnF1RDcvRnRwTHZGaWlieU9nQTF4T1JlWmt6bDRvTTBIYmtF?=
 =?utf-8?B?QUxYQnMrNVRhNE03b09EV1RLeVdJR0d3THhOTnlKZWMxeFNXcjM2cjNLcHp1?=
 =?utf-8?B?YXZFQUxpVTBhZWNrUUlndktEeFVBZysvN2pnTUhnQ2FzTzIwQVIzdjVRa0ti?=
 =?utf-8?B?MUNLTzRhOG1ZMnR4MEFsU3BNTmdxU25QdytseTRuN3dEVGZsWFZnL1RxcUYr?=
 =?utf-8?B?dG44R0loRWNQN2xsRGdKTUkxNTJXMkFTV1NYTnc0VVlpYWZ0VXhBQnZ0WFhG?=
 =?utf-8?B?YmZBWHhxelVSRnV3LzdUSWNMMFpnZEFNRGNWZmt1T205bFVPbDhSYlo2NDRJ?=
 =?utf-8?B?Q09FN0x5dXJTT0FiWGt1dGFNckhGdHl1VUxnZHNtMDdPc01uWS9PM0ltb3Bn?=
 =?utf-8?B?WVpEc3dNMDVFa250a3VIem9mNjI5TWtzNEJnVXdnM1FaT1pZVVV2aWd2SS9j?=
 =?utf-8?B?dm0xc1haOGxVMEFDdmFFRGo1VFJxeHUzWGRncDBZdVVIbDhCdkVWSm1zSG5Y?=
 =?utf-8?B?RytGYUFUY0liT0k4NlBvWWowV1k2WDBtaWFjUFlMTm4yeFBRaUZ6YVBBVXo4?=
 =?utf-8?B?UVhmdHlZRHNoQWdlVmEwRms5Vkk0WUxDZnZpQ01xMlU2anlrU0Q3SDJCVkdF?=
 =?utf-8?B?Y1VjdzY2NTVOaHUzS2taSWFldGhGNEVDZGo5VWppeVhnVEQzQVVYYTlBZG11?=
 =?utf-8?B?NHQ3UnQzbHArUlBFOVNxYnJHelhzTDhXaG1XUlJGMVBaM2FqK0RIZkVaNlJs?=
 =?utf-8?B?OG1KSWppS3QzZkxMSzl0UzBZeTNHRVhZODlpTXZhQVRWZE1nRm04NXNWZlRF?=
 =?utf-8?B?SEdSM3FpeW1JM053MEt1akxtb0c5MWRscTdjZTRhMkdoWFBEQjYrVHdoMkUv?=
 =?utf-8?B?Q0VPQUwrVXFPR0dsbDBmVTNnQmNsQVpEcTE5S1JDTzFNckN6SlFJeFRSWmw2?=
 =?utf-8?B?amo5YVdOVFlOdTc5Z08zMlNmY0dGT2lBSnlrMCs2VkFadXA2OEFlTFBmZDBa?=
 =?utf-8?B?Yk0yZm9jdndXejc1RHlJUmVBKzJGOUdPQ3R4bzZiQmNtSjNqeC9PTnpOaUVO?=
 =?utf-8?B?R0hLYVhqalJHYUpPZGhZOTFod1A4aHlxUGJmZm1ZTlpPSmxJc2JDRHdlT3Vo?=
 =?utf-8?B?ajR0TnJmTG1MblhXaUF3Z2RGTzFGUy9OODcrUmpFbEs3U1FxNHdvVXlKNEZy?=
 =?utf-8?B?Z1ZvYVpMc3B1ZTZTSFhsaElheEg1ZEtMcnR0a2g2TjNId0JMQW1rM0ZLMXR4?=
 =?utf-8?B?NFFVdk14a1IrWXBzQXB5U1JtdzFidWV6aTlwemZMOUJTSk5uOENYcVFXWVJD?=
 =?utf-8?Q?QMMzOA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXN2WHNqWU13ZGlOYTltNVJKMCsrcFFUSG9hQWQwYTgzL1YrdEhMUituYnNq?=
 =?utf-8?B?Z3orZ0U5a2RtN25JMk9USDdiZkc0eEc1YXdvdHphTC81aytaejNDRUpDaFZX?=
 =?utf-8?B?amc5TCtRQmY2eTF3SUtpbVRONEN4ZHVsZE5jSWEvbzQ2VkFtU3YxWkU0amxi?=
 =?utf-8?B?U3hMVHlqeUVHSW9YamVFYnYvK245cmxldjJHR0swT3l2dHBEYSsxWldHUjN1?=
 =?utf-8?B?N0NZU0pmTUVOdVFUZ3NPZWVyM2kwRWJCNnk3Z3o5dXA5aUFtbnpBYnM0aTVY?=
 =?utf-8?B?eURqUFpkUWpGRTFVNUJQY3RLdllEeHpLaVRkZUhEOTdvMVRnNFdpOERyT0t4?=
 =?utf-8?B?Uk93bWs3Ry9FK3FDYzRYNDVhKzBhUXRtVi85ZjRNYUs0MElVdW9IbkJDZW93?=
 =?utf-8?B?RHB4eUdNY2RPcW9wSFRkZ1AyOGNQTCtPUW1SYUh6TW5haHFUb25JMFp4eVV5?=
 =?utf-8?B?clZkTlZPcTJoMGRaSHJZN0JHT01RRm95aGVRQSt3WFZHSktDSVhNOXRUQjc0?=
 =?utf-8?B?N3ZSamJCZVpsby9OV2FsNDZYWkJsc1NRd3oxR1NnMWo2S0QwUDJEbDZXb3o3?=
 =?utf-8?B?cDhNS0hXRmNuLzhDMkxrdlBRRG93SjRqVmN2blRkb3BuMXlVUVJqdDhCZTc4?=
 =?utf-8?B?ZENwOEo0Y3pkQ1E4WjFqRk1iRm93elYyQUxTTFpXYjJ2czZDbEJFT2Z6Y2NL?=
 =?utf-8?B?MkhLaTI2ZHBpdGZudmg1dyt4MGdhRm1TSEVEU2xRdG5Hd214UHpQRi9TL01l?=
 =?utf-8?B?OFg4bWF1Z3NMUnhkY08xNjVEU0RQZVhBd2FVa0RkU0lLd295Uk0xS0NDSHMy?=
 =?utf-8?B?NXgya3hQU0w1T3hzVkdnYkEzcUNCUERXeUxBOGg2S0ZyMEtjSmdWakpTcW9r?=
 =?utf-8?B?WUtoYnhNUktkVy9nOWhoK3FRRExaUWJ6d2lXc0xpOGNHenJSdVhZTEc4bnNt?=
 =?utf-8?B?M1lvSVFacmM2aFVwUXRpWXlubmUyUU1JU3FaMlVqb20vSTBZZVhYdnNyNWs4?=
 =?utf-8?B?SEpjcVo2RDgwcHlpOXVHY2pmR1dnQVFYQ2JEU0llNTU3aGlTSThFOSt2Rk1h?=
 =?utf-8?B?c1lUZzMrZ0xsNTl3cHNtOStJN1FDRlJaTm1qNkxld0JYdG40bnVGVENmQ3Qy?=
 =?utf-8?B?QTNqenFQa0dOT3ZVeGZzU2xQRTdLQ1JjQWdsQXYyZ3ByTzVMRjh2YkMzcnhy?=
 =?utf-8?B?UzVRdEx6MUd2aDBVazhEaHM2UG1kSkZpbU9kcHFMRnovaVRadEZJRVYvNXBw?=
 =?utf-8?B?RU1MMHJ2VmZYc3V6N0xCcHVlM1Q4Q0VGL1QwTGtldFVyQlE2MldMQ2NiT3hI?=
 =?utf-8?B?UXpoQjd6Z3lzdk5vajNlWStXNlc3d00wY3k4SXc0dHJrVXZ6cmptT0ZmVW5v?=
 =?utf-8?B?TVN0NDE5MGNVNHVtc2QrVnVLQ2JnY2tKT1piaGlybzBES0VnbkVmNjhQZWZ4?=
 =?utf-8?B?Q2JlbklUT3hNYzFiV0RQcWhSOGdhTkxlSEJJWURmY09XcjVEbkJidytHdGk5?=
 =?utf-8?B?VE42MlpGK3ZIakdtSlpJOFJOYjVhK296T01sSmZVQy9idlljRXNzeDZLSGNY?=
 =?utf-8?B?THNtMlZzdU1WaWJYMTJXYkduQk51REdtRDF2TkNTWWlqSEpiWlgzb3lNcUZU?=
 =?utf-8?B?NWVnSFFJMUNoS1BmWjl2bEN4K1lYNWJ5QmhWMWhlcWpGTk8zZ200cG9MR2xh?=
 =?utf-8?B?N3RaNWEwL2M4QnB4aUEyZHlvS3RxdHRGck0wQXNlZCswdVZtRDhvczFDSmNW?=
 =?utf-8?B?ZEZFck5xSmhzY2lsMHFFVnpDdVIzUU9oazJLS2JJa0FBK0t1SitNdmkrVzlP?=
 =?utf-8?B?WUgwbjN3am1VYlBTVmhCWDNFaVIzampENjREdnBtalNHc2RZS3kzNlNaOVI2?=
 =?utf-8?B?anZsQXlyUndVb0ZpVTdJZS9aM2lDU0MwZWdlK0h4dXFreVVMdjY2UDhGSEll?=
 =?utf-8?B?RER3Zjd5b1pGSTQ1b0s5ZDZNWTdYM0QwOHE3OHN1L2xiNnVTTGZxMElnWVRp?=
 =?utf-8?B?TzNBRG1HdUZybUIwZmdtU1NpaThzYkZSM0ZvRjN6cm5iVnY0WlZuVHppaVlU?=
 =?utf-8?B?VytIVzY4b2wyYi9uMUswVFkyRDFkOEdqYk5wcVpYb09ySHU1NWg5ZkpTeEFv?=
 =?utf-8?B?S0loS0dmZEZad1NtTzJZeE9RQWk2S0NDL0RTZWt0ZGNINEhFdHNsRzJ5VjNV?=
 =?utf-8?B?ODJqWTM4RkRnY1AzeUpMdDBkUmk2djFzYmV5ZEJKQUlPTzA1QTUzM1VpMGFG?=
 =?utf-8?B?dEpOenpHL1hQTnZLUjRmbzVCekpRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <53A51D572A2B464D8303B7AE38F1D027@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4930c52b-04db-4a8e-12a7-08de105a6ca6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2025 04:29:28.8629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GQ1cLLWaYkImWhC973M3pTFxiXEJQEV5gaQV7J8tLX5HUpISUErrZ0KiJY0IkbBtxGV6Iev+pxdSgWQxne0Btx2lhFuxuFQBmSuR02yFGu0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6539
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

T24gTW9uLCAyMDI1LTEwLTIwIGF0IDE4OjQ0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBpbnRlbF9jcnRjX3N0YXRlOjpmZWNfZW5hYmxlIGNoZWNrIGluIGludGVsX2RwX25lZWRzXzhi
MTBiX2ZlYygpDQo+IGlzDQo+IHJlZHVuZGFudCBkcm9wIGl0OiBvcmlnaW5hbGx5IGl0IGVuc3Vy
ZWQgdGhhdCB0aGUgRkVDIGVuYWJsZWQgc3RhdGUNCj4gZm9yDQo+IGEgQ1JUQyBvdGhlciB0aGFu
IHRoZSBDUlRDIGludGVsX2RwX25lZWRzXzhiMTBiX2ZlYygpIGNhbGxlZCBmb3IgaXMNCj4gcHJl
c2VydmVkLCBldmVuIGlmIERTQyBpcyBub3QgZW5hYmxlZCBmb3IgdGhlIGxhdHRlciBDUlRDLiBU
aGUgd2F5DQo+IEZFQw0KPiBnZXRzIGVuYWJsZWQgZm9yIGFsbCB0aGUgQ1JUQ3Mgb24gYW4gOGIx
MGIgTVNUIGxpbmsgaXMgY2hhbmdlZCBieQ0KPiANCj4gY29tbWl0IDdjMDI3MDcwZTk4ZCAoImRy
bS9pOTE1L2RwX21zdDogVHJhY2sgRFNDIGVuYWJsZWQgc3RhdHVzIG9uDQo+IHRoZQ0KPiBNU1Qg
bGluayIpIGFuZA0KPiBjb21taXQgNDcwYjg0YWY0NTdlICgiZHJtL2k5MTUvZHBfbXN0OiBSZWNv
bXB1dGUgYWxsIE1TVCBsaW5rIENSVENzDQo+IGlmDQo+IERTQyBnZXRzIGVuYWJsZWQgb24gdGhl
IGxpbmsiKQ0KPiANCj4gZGVwZW5kaW5nIG9uIGludGVsX2RzY19lbmFibGVkX29uX2xpbmsoKSBp
bg0KPiBpbnRlbF9kcF9uZWVkc184YjEwYl9mZWMoKQ0KPiBpbnN0ZWFkIG9mIHRoZSBhYm92ZSBm
ZWNfZW5hYmxlIGNoZWNrLiBEcm9wIHRoZSBjaGVjay4NCj4gDQo+IFN1Z2dlc3RlZC1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDMgLS0tDQo+IMKgMSBmaWxlIGNoYW5n
ZWQsIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+IGluZGV4IGIwYWViNmMyZGU4NmMuLjQ3NTUxOGI0MDQ4YjcgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTIzNzcsOSArMjM3
Nyw2IEBAIGJvb2wgaW50ZWxfZHBfbmVlZHNfOGIxMGJfZmVjKGNvbnN0IHN0cnVjdA0KPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiDCoAlpZiAoaW50ZWxfZHBfaXNfdWhicihjcnRj
X3N0YXRlKSkNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gwqANCj4gLQlpZiAoY3J0Y19zdGF0ZS0+
ZmVjX2VuYWJsZSkNCj4gLQkJcmV0dXJuIHRydWU7DQo+IC0NCj4gwqAJLyoNCj4gwqAJICogVGhv
dWdoIGVEUCB2MS41IHN1cHBvcnRzIEZFQyB3aXRoIERTQywgdW5saWtlIERQLCBpdCBpcw0KPiBv
cHRpb25hbC4NCj4gwqAJICogU2luY2UsIEZFQyBpcyBhIGJhbmR3aWR0aCBvdmVyaGVhZCwgY29u
dGludWUgdG8gbm90DQo+IGVuYWJsZSBpdCBmb3INCg0K
