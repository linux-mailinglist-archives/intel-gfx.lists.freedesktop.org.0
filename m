Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CFBA3AEFE
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 02:33:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A7210E19A;
	Wed, 19 Feb 2025 01:33:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Be1/Ae+Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DDF710E19A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2025 01:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739928803; x=1771464803;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=XT8Y8kagXaI1hIF6dJnztHKCmD/nYlhh/oBGuhNvOck=;
 b=Be1/Ae+ZlEvCmyag2SX2wCnn2Qukopq57DG4MeZqPSwl3o0w5WxkrtHI
 qnSLyzYYYBxpm8c2d94Pgc+IC/QX8V+aDSvIY9NI/owPM1v3FciiHLe07
 nfLpw/ulBOmX0ivlSd0TwheJjCtiRRfXhCDKrJ+ekrGreUAwk6O91kTXA
 1WhXxJIg7EPocptOZWmI6/XebVr9wRgxdvn12669HQFIFn4DWlDOpJH3P
 HQkgxVMy2DCZqn9MXxA0sMbuQApZy46s7sm+KCMdC5YETMcgr3mu2XeJl
 JIU2HWsZnVtioB4eUcbBYAHtuaCP0u6U3xVlBNuHptu6eC9fMxAHXOykz g==;
X-CSE-ConnectionGUID: k5dlUmVPQs+Nj6+ghLMlwQ==
X-CSE-MsgGUID: pTtn/PkNQAqjabbp473/RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52079212"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52079212"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 17:33:23 -0800
X-CSE-ConnectionGUID: bkvuKv2qTSKuccLaplpa7Q==
X-CSE-MsgGUID: 8OwcR59rQ7KbC7Fy5ZwAwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118698464"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 17:33:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 18 Feb 2025 17:33:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 18 Feb 2025 17:33:22 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Feb 2025 17:33:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mUGan8u5G17596TLfyvS/rsNi44VEZ6TMiXnGFfU3nfM6m+BPTdS1JIYjLYTyu1AuPkcno/gXy/dZKoT/gyBvwtvO9g0pn4SXDcPK98HRrGnYEAPP41hyzSNyxA/Pz9HvRxY56W7+OrYG5JJkLt3GaCZJV3kUJja5LuqXuTX1ytdfbhVB+M1s8g8yHUR1sKLJGnmsL79U7SLLHVpz5KcGp06ZmT1K8KzqWbfD7OQycBSY742NBQPCuwRsKXOGPMEL40txknuxpwk5gKKpDNF+INkrmt5rn2ZewBpvZQw0hrZk5yLsgWBcoZUw+63lm3JAMsE8VXpaHvnuHHgB9i5pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XT8Y8kagXaI1hIF6dJnztHKCmD/nYlhh/oBGuhNvOck=;
 b=c8nrcpWuMc2SK/5/RbC+wFcbC93R6wyChLniqpcrQIKSS11zrp/1GKzQHb7AqG9Y2H0NWKqjx18fJWy13Vhb2fNtTX8fIIO/quqpEVERlTs0arvY5ZnNmlrcWeqUOpihRIjJi9kL55S83iBTNM4+clHWqwNexb5ja09NX8FMU52SPnq9Ky2Vl5AFP7YFRT7HtH6mAXPknTsyyiDwbfvkna21NlJ9McWppvzdhjHS4N1nwOOPdHT19ZOtfCM0zz+qW+nhwtUQ1soIFQk6CflKKN+tuJS747ATKvHrqD6XBcsp0eYRgPDjAcBkE96pcPQTh5qh6GcrBuMZ2YlgVXGw2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by CH2PR11MB8780.namprd11.prod.outlook.com (2603:10b6:610:284::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Wed, 19 Feb
 2025 01:33:11 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::5b47:1b5a:71b2:4f20]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::5b47:1b5a:71b2:4f20%7]) with mapi id 15.20.8445.017; Wed, 19 Feb 2025
 01:33:11 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Thasleem, Mohammed" <mohammed.thasleem@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Lin, Charlton" <charlton.lin@intel.com>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [v2] drm/i915/dmc: Create debugfs entry for dc6 counter
Thread-Topic: [v2] drm/i915/dmc: Create debugfs entry for dc6 counter
Thread-Index: AQHbgm48YeIA6fHlbkG3g5/IXtj5RA==
Date: Wed, 19 Feb 2025 01:33:11 +0000
Message-ID: <20e96e4b79511157ca5f093efcd732a91913d1bb.camel@intel.com>
References: <20250212114935.21231-1-mohammed.thasleem@intel.com>
In-Reply-To: <20250212114935.21231-1-mohammed.thasleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|CH2PR11MB8780:EE_
x-ms-office365-filtering-correlation-id: 33dd37ea-c885-4ef2-e244-08dd50855f32
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TEZaZEE0Z0hLU3p3NXFBOFkrQzJnVWhYVG5IS2F1QzNwVHBXNFJiY2ljWjY1?=
 =?utf-8?B?Qk1qWUg2ZDV5Rk0xRWhDT0JoTnlncXB3Q1hjU3NIU1lmTUN2Q2JJYmwvZTFB?=
 =?utf-8?B?SHdtNDdoVmtDdUdZYlRPdXZJb2lOQmFrRk92NUx0b1hEcWV5RW5yckd1WFpY?=
 =?utf-8?B?L1JRR3BoTmFGbmFuYlZqRVlSYkZ4Q1FIY0NlQXB2QjQvWDBWVmNNU2VQT3Nq?=
 =?utf-8?B?ckI4WkJ5a2JSWHBubzY0KzBSWkZGK0VWd3pHTzk5aXJXTGxNanBvSTZhMHdt?=
 =?utf-8?B?Zm50UTliSmt3ZUVVb1dBMW5uc3N2RHIyeTAvbDIybC84Z1Z6OTNITnM2N1hM?=
 =?utf-8?B?Tm5rTEVRdkk5MHlYRS9sRE0vbXZ4YmhUQnJyWXVKTEZDYXdFVEFYakVmVE9s?=
 =?utf-8?B?b0JNQ2YwSW92YWtJei9rTHIyZGxFUWFwRjhBYTNUeVYwdXF5NzhkMUtUeVdB?=
 =?utf-8?B?bWV1bWx2QVoxRWh2TlJoMWp4cGFOL3FjaEMzSlVZNDNvcEMwNTdVZGQ3MmZL?=
 =?utf-8?B?QkNEVTRLclprRGZRM05XbVNPVkMvWXhTbVgrZW9GSjJ1VzMzRnd6S0xDbXFP?=
 =?utf-8?B?Z1pOb0ZadVdBN0tQaFNVcjcwSXJnTTNhYjhLZTZ6ZGFWQnNrWjR2cllVTldT?=
 =?utf-8?B?VS9qQnIydWp6YVpQaGVqSEdkUzVLNzRPQ3lXckpDd0NYWXpjbmU4a2JZMURx?=
 =?utf-8?B?WitueHAwcjhZbHJBbDNiSjNXZ3ZETk14UC9YV1IveDB2VlNYZjRlZDRaSVpP?=
 =?utf-8?B?U1l4Wmd1SC9jY0ZTblNzMDV0bWF0TFcxUzAvYXAra241VW81Qk9TTFY0c1lz?=
 =?utf-8?B?SEN4eWhrdUR0SWhFaHdSOUloaUNTZjFQSkVzSTIvMTB5TDZvdUs2UUFPS0hm?=
 =?utf-8?B?bDRqV29Bcnd6anNsSUwvNW1vc3l4NDlWcFJya3VrblNYdEcxY1Q2M254c0Z6?=
 =?utf-8?B?anBXU0t2R0srYmFjSEM1bW5HbTY3OFU2WTRReFdJUCtmSUN5SWNGcGc4MWkv?=
 =?utf-8?B?U21Fb3ZxRUR3ZVNqZ09RM21pU1BYcTJMMGxxNVZobnFHQVBnOXhaaW1CMlZs?=
 =?utf-8?B?VGlxZENtMERaMWtSTkdldThmVEpmWDk0WkVyQWxrTlBxYVlMcnNwRkU1ZjN6?=
 =?utf-8?B?MUExQm5QelpoMXJ5TVFpMWJFclUvaE5rQSthSUliWEFsbkdwVUFhMDJ0ZjVo?=
 =?utf-8?B?UlVScUU2UzJTK05HWEV6Q21tZHhXN2xyaS9JcklIS3M0SW9XKzVOWm9HeHNz?=
 =?utf-8?B?d2FWUHNRSUhOVCsxYkVaMTAzUmxVdm50eHFXRmNWdERQQ3RnWUFtemFVMCs3?=
 =?utf-8?B?S0g0TjVVUVdOZ01PQytLb01MQ0FLNGErcU16OWZMalhjVXJNMzBHTHhuS0VM?=
 =?utf-8?B?VHNvY09DSDNwbGFNWlBKeThYZndndTc0aFBJMnEyZ3NwWWlPdTdZSTdiRXlq?=
 =?utf-8?B?RTNabFY1bmdwUVRhL3laU0YwYUd2S3NtczFuV1ZWSm5tODhUSXV1cFpzekor?=
 =?utf-8?B?RUZ5SU42Nmg0aGdLNGI0RCtRQ3RNSHFJbWF6djZUZytyTUF4R01BSkovTG8x?=
 =?utf-8?B?cVYwMzdXNldNSTFZL29mdDUyc2dTNTdNZ0VkQzRwYndxMnRVdTNpczVQeisy?=
 =?utf-8?B?WGlQOXJPejRKNGdXTXdGWXdpbDlCUDZsUHg3RnMwMHFjcmNEYWRIWGo2SVVm?=
 =?utf-8?B?L2IrN2hVYnVOMzlrQStlOGREV29wa3BhQjE5SVFhb3BRaHd2WmtiMVFOeGJE?=
 =?utf-8?B?OGVGU3IxYW1jN2xNM01vZDdMV2UxWFE3dy91Mm00a1orZWZsYnQvY01Vcksy?=
 =?utf-8?B?Ujd5NXQxMjBiNXdHYWNYMWUwUyt6TXJlWDNJS3ErRXVaV2JwUC9RZHJzM0Yv?=
 =?utf-8?B?RGJqc2ZxVERTTVdWZ0JtOHhmTVZRanl2cHlUai8yU092SVhZamZkT3dJZWs2?=
 =?utf-8?Q?kh+DNAE/g+wU6lVivfQfVFFnX+4OHeYc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?djZONU9VNUkyRVhlMkZPbTdWMFlCclphaUZqc0FZM2RsQldMZ3k2VVpVajFP?=
 =?utf-8?B?NG5POHhrUGVMZS9iMzFXN0VaTzNZa2RBUGJPMWtzTGp5Q0hZUk9DaXFhWTBC?=
 =?utf-8?B?SXlpTFhZbjMyd0VZUDRzc05aM3VjbDFVUk9kS2xLU1dQNUtTSkpOaDM2VFdx?=
 =?utf-8?B?cDJia0hNQzkwSWtPb2I2d1BOeWVyWjB0RVkwcnJDR1hCMGc3UWliYTYvTnJ4?=
 =?utf-8?B?Vk9ZYThlYVhHTkFkbkFXNjlQcjJMMVczWEJaVDNJMHRVbHlFL0N1K09lOGRP?=
 =?utf-8?B?eVBVN2pqNXJyZDdXVVFwelAyb1VJZU41dlpGcHhka0s0WUx5UExaYXpReDFs?=
 =?utf-8?B?VEdNdmRqUlFBalBOL3l1dU9UWFZUaTFaN0d4dzJZU2xlckVOVDJ4NURjS3JZ?=
 =?utf-8?B?cGtsQWVCcEVtTVNreDVpb2NkdFRBMDdWU2xOSXR3TWhQV21ha3pRMUFId2FT?=
 =?utf-8?B?M2dyR3IwVjhUOVEwaTdPWUtmVWtTeXBOR0lpYTN4QTFkYit5elpuQmFxTy9o?=
 =?utf-8?B?QXk2bnRPUHlFd1VveUYyWXV5UDFHZ2Zvc3VsdFZtNDAyTnFvUjRGamNRWmtG?=
 =?utf-8?B?QXAwK1kyWFRLNjN6VUJMZWFXQlg1cnFlemora2VHZVZvbkhNMTlGeTdsb1pn?=
 =?utf-8?B?SVJtZnA5cmR4VGFObUUwVTZDUTJvQmwrMytrSHg1SGYybzNxSXQ1UVloMW9C?=
 =?utf-8?B?MlJqZ3EvblhzK0t1by8wcnAxckVGTzVsM0dhUEpwUk1aUmFXS1hkaFRCT1pp?=
 =?utf-8?B?MnVRdGdjNTVLdE8ydzhLb1NqSUJZblJkeldlMGJCL0VJOTQxZHVpa3hRbldM?=
 =?utf-8?B?Uld3dDAvRFk5MVkrRU1hL3VuTTcrZW5kREJZN2E2ODIyYWxFRk9Hc2Rvamc1?=
 =?utf-8?B?M3EwcERaVml6UXBNdDdBQlJsU0tZUkFmZG9mQlBFUDZhRXM3TDR6aXVOQXl5?=
 =?utf-8?B?bnZtQnJFMjY2aU1HYkVGMlFJeTg4bzE4bVJSQi8zR3V5RmNyNGRBbUVadkI4?=
 =?utf-8?B?WlVkNUpmcWZWVU5nWUxVaVNkSkwwRkVibFYyQjYxSGtPZ1Fxc0hEMFJhNWI0?=
 =?utf-8?B?dmowM2xLUGFhMC9CS29CRHYwRkJ6SVowY2FDbW8wdkZ6bTRXcGdqS1R0L3Zo?=
 =?utf-8?B?MGxlNGY1QUdwNi8rbndmRXhDTmdMcUN3YzQ0N1VpWHM1VzhrSHpiTGFMUEQ5?=
 =?utf-8?B?UW50NE1mRHc1alR1akFZb3RrODBrd2VXTCs1SDM5YWkvenlUNkdYVithWHlV?=
 =?utf-8?B?UDl1SFBxenlxVjBWTWs2c0ZQK0w5QThFeG1zL2hEWTdtT1FMZEdDQmZrTkJ6?=
 =?utf-8?B?VzVGbU5PejBKajZlZjkrRURHN1FQZzZ5a1JBYlc0QVFETUc2dmJXRm1JcmdG?=
 =?utf-8?B?Q0thb3ZkYko5akRKeDVsNHpnUHVPNTRyTzNaRXhVZWQyRkozeTdzaHFTRFlj?=
 =?utf-8?B?L05oWjdkcW9vbDh6d0o2cW9aVTlobzAyL3ZCdlNqZHA3Q1VrOGNKK0VwSEJ3?=
 =?utf-8?B?NnM5K2J1QjRMcGR0cmVrY3ZKMG5raVMyc2Q3QWRtWEhwVDZSNGFzaVZzdmww?=
 =?utf-8?B?ZGJVY0pLWTRmVnFYeFRiVEI3WTlyamRpZGFSOENOYnNkRmM1NExMbmxTeTZj?=
 =?utf-8?B?VlRHTUNFUHNuUytPYUJ1WU9hOXVNSW5KNHNVYWFEQ2FXYk1Dc3JHaHJyWXcx?=
 =?utf-8?B?QjNNa2ZBL1M5eDRLZFV4ckVjc1ZuZi9lejc1Ukk5d3lVZVM5SlRhRFQ2QTVP?=
 =?utf-8?B?Wmd2L1c5VndHK3p4TlM0dHY1dThMTDVRWmoxaUdZMTNzdE84YlZ2YStuVkRW?=
 =?utf-8?B?ekdtU0NFRkdSemhaNytIaGZQZFpidEZ2VUxOcjNMM2lEUnJONndqQ01zclFD?=
 =?utf-8?B?K2wxRWJsSVJmcjhPeGJTR2FDUEF4c2VKSklFRjRtVWdoNXcwRW1XTXlYY0JL?=
 =?utf-8?B?U2tPM0FabCtWd2trNlJsZnh0M1ltSytWaGVIV21qODR6eVFaaUpaWlBYOFRO?=
 =?utf-8?B?VlNCd1JyRHJtMml3ckhoVWUrRk93UkNxbkg4eTNhcGZycWdEa2MzV1dTUVVw?=
 =?utf-8?B?OEwyTFBwQXlQSGFyd2RhOVc5M0Fpa2lteUFzUkY1TmpVWXhUbXBVWmJmamM2?=
 =?utf-8?B?ZkRKSjMyWjd1VnRUWVFHZ1d6OUNQOG1vOWJmUmlOMlZMS3Ntemk4RnBhSkFI?=
 =?utf-8?B?U0RQUUk3U2NZcFEvK3R2WGhtS1VPbGhQaDJvMHd2Y3oyYklseUxJNVdYc2VH?=
 =?utf-8?Q?OZMthMhl5uMQVcDT+zyT6lJI1FYxiWhnk+LOM3LlhA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A5A007550E80C2469E3EDECE552443D8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33dd37ea-c885-4ef2-e244-08dd50855f32
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2025 01:33:11.4370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PpxCCRBds1z0psnw3cM6qmpsZLzbh6aQ+o8aygIbA8QqfvnN0FyHyclxTuY6BAGW5Ttfcu2ke7F/xn4+qAfZXpd7dUmQI7sRE4oDbrUkdeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8780
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

T24gV2VkLCAyMDI1LTAyLTEyIGF0IDE3OjE5ICswNTMwLCBNb2hhbW1lZCBUaGFzbGVlbSB3cm90
ZToNCj4gU3RhcnRpbmcgZnJvbSBNVEwgd2UgZG9uJ3QgaGF2ZSBhIHBsYXRmb3JtIGFnbm9zdGlj
IHdheSB0byB2YWxpZGF0ZQ0KPiBEQzYgc3RhdGUgZHVlIHRvIGRjNiBjb3VudGVyIGhhcyBiZWVu
IHJlbW92ZWQgdG8gdmFsaWRhdGUgREMgc3RhdGUuDQo+IA0KPiBUaGUgZ29hbCBpcyB0byB2YWxp
ZGF0ZSB0aGF0IHRoZSBkaXNwbGF5IEhXIGNhbiByZWFjaCB0aGUgREM2IHBvd2VyDQo+IHN0YXRl
LiBUaGVyZSBpcyBubyBIVyBEQzYgcmVzaWRlbmN5IGNvdW50ZXIgKGFuZCB0aGVyZSB3YXNuJ3Qg
c3VjaA0KPiBhIGNvdW50ZXIgZWFybGllciBlaXRoZXIpLCBzbyBhbiBhbHRlcm5hdGl2ZSB3YXkg
aXMgcmVxdWlyZWQuDQo+IEFjY29yZGluZw0KPiB0byB0aGUgSFcgdGVhbSB0aGUgZGlzcGxheSBk
cml2ZXIgaGFzIHByb2dyYW1tZWQgZXZlcnl0aGluZyBjb3JyZWN0bHkNCj4gaW4NCj4gb3JkZXIg
dG8gYWxsb3cgdGhlIERDNiBwb3dlciBzdGF0ZSBpZiB0aGUgREM1IHBvd2VyIHN0YXRlIGlzIHJl
YWNoZWQNCj4gKGluZGljYXRlZCBieSB0aGUgSFcgREM1IHJlc2lkZW5jeSBjb3VudGVyIGluY3Jl
bWVudGluZykgYW5kIERDNiBpcw0KPiBlbmFibGVkIGJ5IHRoZSBkcml2ZXIuDQoNCkhpc3Rvcmlj
YWxseSBzcGVha2luZywgd2hlbiBpdCBjb21lcyB0byBkZWJ1Z2dpbmcgREM2IGlzc3VlcyBhbmQN
Cmludm9sdmUgYWxsIG90aGVyIHRlYW1zLCB0aGUgY29tbXVuaWNhdGlvbiBiZXR3ZWVuIFB1bml0
IGFuZCBERSBpcyB0aGUNCnN1cmUgd2F5IHRvIHByb3ZlIGRpc3BsYXkgaXMgaW5ub2NlbnQgZXNw
ZWNpYWxseSBzdGFydGluZyBmcm9tIE1UTC4NCkxhdGVzdCBpbiBQVEwgSFNEOjE0MDIzNDY5ODA0
DQoNClRyYWNlIG9mIFBNX1JFUV9EQkcvUE1fUlNQX0RCRyByZWdpc3RlcnMgbm9ybWFsbHkgaXMg
dGhlIGZpcnN0IHN0ZXANCm5lZWRlZCB0byBzaG93cyB0aGUgY29tbXMgYmV0d2VlbiBQdW5pdC9E
RSBhbmQgTFRSIGNvbmZpZ3MuIA0KDQpTbywgY2FuIHdlIGNvb2sgc29tZXRoaW5nIHdpdGggdGhl
c2UgcmVnaXN0ZXIgdG8gZm9sbG93IHRoZSBCS00gb2YNCmRlYnVnZ2luZyBEQyBpc3N1ZXMuIA0K
DQpUaGFua3MNCktoYWxlZA0KDQoNCj4gDQo+IERyaXZlciBjb3VsZCB0YWtlIGEgc25hcHNob3Qg
b2YgdGhlIERDNSByZXNpZGVuY3kgY291bnRlciByaWdodA0KPiBhZnRlciBpdCBlbmFibGVzIERD
NiAoZGM1X3Jlc2lkZW5jeV9zdGFydCkgYW5kIGluY3JlbWVudCB0aGUgU1cNCj4gREM2IHJlc2lk
ZW5jeSBjb3VudGVyIHJpZ2h0IGJlZm9yZSBpdCBkaXNhYmxlcyBEQzYgb3Igd2hlbiB1c2VyIHNw
YWNlDQo+IHJlYWRzIHRoZSBEQzYgY291bnRlci4gU28gdGhlIGRyaXZlciB3b3VsZCB1cGRhdGUg
dGhlIGNvdW50ZXIgYXQNCj4gdGhlc2UNCj4gdHdvIHBvaW50cyBpbiB0aGUgZm9sbG93aW5nIHdh
eToNCj4gZGM2X3Jlc2lkZW5jeV9jb3VudGVyICs9IGRjNV9jdXJyZW50X2NvdW50IC0gZGM1X3N0
YXJ0X2NvdW50DQo+IA0KPiB2MjogVXBkYXRlIHRoZSBkaXNjcmlwdGlvbi4gKEltcmUpDQo+IMKg
wqDCoCBSZWFkIGRjNSBjb3VudCBkdXJpbmcgZGM2IGVuYWJsZSBhbmQgZGlzYWJsZSB0aGVuIGFu
ZCB1cGRhdGUNCj4gwqDCoMKgIGRjNiByZXNpZGVuY3kgY291bnRlci4gKEltcmUpDQo+IMKgwqDC
oCBSZW1vdmUgdmFyaWFibGUgZnJvbSBkbWMgc3RydWN0dXJlLiAoSmFuaSkNCj4gwqDCoMKgIFVw
ZGF0ZWQgdGhlIHN1YmplY3QgdGl0bGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNb2hhbW1lZCBU
aGFzbGVlbSA8bW9oYW1tZWQudGhhc2xlZW1AaW50ZWwuY29tPg0KPiAtLS0NCj4gwqAuLi4vZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmggfMKgIDIgKysNCj4gwqAuLi4v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5jwqDCoCB8IDIwDQo+ICsrKysr
KysrKysrKysrKysrKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rt
Yy5jwqDCoMKgwqDCoCB8IDE0ICsrKysrKysrKystLS0NCj4gwqAzIGZpbGVzIGNoYW5nZWQsIDMy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gaW5kZXggNTU0ODcw
ZDI0OTRiLi4wYTFlM2RjMjgwNGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBAQCAtNDkwLDYgKzQ5MCw4IEBAIHN0
cnVjdCBpbnRlbF9kaXNwbGF5IHsNCj4gwqANCj4gwqAJCS8qIHBlcmZvcm0gUEhZIHN0YXRlIHNh
bml0eSBjaGVja3M/ICovDQo+IMKgCQlib29sIGNodl9waHlfYXNzZXJ0WzJdOw0KPiArCQl1bnNp
Z25lZCBpbnQgZGM2X3Jlc2lkZW5jeV9jb3VudGVyOw0KPiArCQl1bnNpZ25lZCBpbnQgZGM1X3N0
YXJ0X2NvdW50Ow0KPiDCoAl9IHBvd2VyOw0KPiDCoA0KPiDCoAlzdHJ1Y3Qgew0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dl
bGwuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
cl93ZWxsLmMNCj4gaW5kZXggZjQ1YTRmOWJhMjNjLi5jZmE1M2VlODQzMjMgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxs
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyX3dlbGwuYw0KPiBAQCAtMTcsNiArMTcsNyBAQA0KPiDCoCNpbmNsdWRlICJpbnRlbF9ka2xf
cGh5LmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2RrbF9waHlfcmVncy5oIg0KPiDCoCNpbmNsdWRl
ICJpbnRlbF9kbWMuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9kbWNfcmVncy5oIg0KPiDCoCNpbmNs
dWRlICJpbnRlbF9kbWNfd2wuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZHBfYXV4X3JlZ3MuaCIN
Cj4gwqAjaW5jbHVkZSAiaW50ZWxfZHBpb19waHkuaCINCj4gQEAgLTc1NSw3ICs3NTYsNyBAQCB2
b2lkIGdlbjlfc2FuaXRpemVfZGNfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3Bs
YXkpDQo+IMKgdm9pZCBnZW45X3NldF9kY19zdGF0ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSwgdTMyIHN0YXRlKQ0KPiDCoHsNCj4gwqAJc3RydWN0IGk5MTVfcG93ZXJfZG9tYWlucyAq
cG93ZXJfZG9tYWlucyA9ICZkaXNwbGF5LQ0KPiA+cG93ZXIuZG9tYWluczsNCj4gLQl1MzIgdmFs
Ow0KPiArCXUzMiB2YWwsIGRjNV9jdXJyZW50X2NvdW50Ow0KPiDCoAl1MzIgbWFzazsNCj4gwqAN
Cj4gwqAJaWYgKCFIQVNfRElTUExBWShkaXNwbGF5KSkNCj4gQEAgLTc3NSwxMSArNzc2LDI4IEBA
IHZvaWQgZ2VuOV9zZXRfZGNfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXks
IHUzMiBzdGF0ZSkNCj4gwqAJCWRybV9lcnIoZGlzcGxheS0+ZHJtLCAiREMgc3RhdGUgbWlzbWF0
Y2ggKDB4JXggLT4NCj4gMHgleClcbiIsDQo+IMKgCQkJcG93ZXJfZG9tYWlucy0+ZGNfc3RhdGUs
IHZhbCAmIG1hc2spOw0KPiDCoA0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxNCkg
ew0KPiArCQkvKiBJZiBkaXNhYmxpbmcgREM2LCB1cGRhdGUgZGM2X2FsbG93ZWQgY291bnRlciAq
Lw0KPiArCQlpZiAoIShzdGF0ZSAmIERDX1NUQVRFX0VOX1VQVE9fREM2KSAmJiAodmFsICYNCj4g
RENfU1RBVEVfRU5fVVBUT19EQzYpKSB7DQo+ICsJCQlkYzVfY3VycmVudF9jb3VudCA9IGludGVs
X2RlX3JlYWQoZGlzcGxheSwNCj4gREcxX0RNQ19ERUJVR19EQzVfQ09VTlQpOw0KPiArCQkJZGlz
cGxheS0+cG93ZXIuZGM2X3Jlc2lkZW5jeV9jb3VudGVyICs9DQo+IGRjNV9jdXJyZW50X2NvdW50
IC0gZGlzcGxheS0+cG93ZXIuZGM1X3N0YXJ0X2NvdW50Ow0KPiArCQkJZGlzcGxheS0+cG93ZXIu
ZGM1X3N0YXJ0X2NvdW50ID0NCj4gZGM1X2N1cnJlbnRfY291bnQ7DQo+ICsJCX0NCj4gKwl9DQo+
ICsNCj4gwqAJdmFsICY9IH5tYXNrOw0KPiDCoAl2YWwgfD0gc3RhdGU7DQo+IMKgDQo+IMKgCWdl
bjlfd3JpdGVfZGNfc3RhdGUoZGlzcGxheSwgdmFsKTsNCj4gwqANCj4gKwlpZiAoRElTUExBWV9W
RVIoZGlzcGxheSkgPj0gMTQpIHsNCj4gKwkJLyogSWYgZW5hYmxpbmcgREM2LCBzdG9yZSBEQzUg
Y291bnQgKi8NCj4gKwkJaWYgKChzdGF0ZSAmIERDX1NUQVRFX0VOX1VQVE9fREM2KSkgew0KPiAr
CQkJZGM1X2N1cnJlbnRfY291bnQgPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksDQo+IERHMV9ETUNf
REVCVUdfREM1X0NPVU5UKTsNCj4gKwkJCWRpc3BsYXktPnBvd2VyLmRjNV9zdGFydF9jb3VudCA9
DQo+IGRjNV9jdXJyZW50X2NvdW50Ow0KPiArCQl9DQo+ICsJfQ0KPiArDQo+IMKgCXBvd2VyX2Rv
bWFpbnMtPmRjX3N0YXRlID0gdmFsICYgbWFzazsNCj4gwqB9DQo+IMKgDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBpbmRleCAyMjFkM2FiZGE3OTEuLmU0
ZDNjZTc5NmM5OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kbWMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rt
Yy5jDQo+IEBAIC0xMjQyLDYgKzEyNDIsNyBAQCBzdGF0aWMgaW50IGludGVsX2RtY19kZWJ1Z2Zz
X3N0YXR1c19zaG93KHN0cnVjdA0KPiBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQ0KPiDCoAlz
dHJ1Y3QgaW50ZWxfZG1jICpkbWMgPSBkaXNwbGF5X3RvX2RtYyhkaXNwbGF5KTsNCj4gwqAJaW50
ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+IMKgCWk5MTVfcmVnX3QgZGM1X3JlZywgZGM2X3JlZyA9
IElOVkFMSURfTU1JT19SRUc7DQo+ICsJdTMyIGRjNV9jdXJyZW50X2NvdW50Ow0KPiDCoA0KPiDC
oAlpZiAoIUhBU19ETUMoZGlzcGxheSkpDQo+IMKgCQlyZXR1cm4gLUVOT0RFVjsNCj4gQEAgLTEy
OTAsOSArMTI5MSwxNiBAQCBzdGF0aWMgaW50DQo+IGludGVsX2RtY19kZWJ1Z2ZzX3N0YXR1c19z
aG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQ0KPiDCoAl9DQo+IMKgDQo+IMKg
CXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUgY291bnQ6ICVkXG4iLA0KPiBpbnRlbF9kZV9yZWFk
KGRpc3BsYXksIGRjNV9yZWcpKTsNCj4gLQlpZiAoaTkxNV9tbWlvX3JlZ192YWxpZChkYzZfcmVn
KSkNCj4gLQkJc2VxX3ByaW50ZihtLCAiREM1IC0+IERDNiBjb3VudDogJWRcbiIsDQo+IC0JCQnC
oMKgIGludGVsX2RlX3JlYWQoZGlzcGxheSwgZGM2X3JlZykpOw0KPiArDQo+ICsJaWYgKERJU1BM
QVlfVkVSKGRpc3BsYXkpID49IDE0KSB7DQo+ICsJCWRjNV9jdXJyZW50X2NvdW50ID0gaW50ZWxf
ZGVfcmVhZChkaXNwbGF5LCBkYzVfcmVnKTsNCj4gKwkJZGlzcGxheS0+cG93ZXIuZGM2X3Jlc2lk
ZW5jeV9jb3VudGVyICs9DQo+IGRjNV9jdXJyZW50X2NvdW50IC0gZGlzcGxheS0+cG93ZXIuZGM1
X3N0YXJ0X2NvdW50Ow0KPiArCQlzZXFfcHJpbnRmKG0sICJEQzYgUmVzaWRlbmN5IENvdW50ZXI6
ICVkXG4iLA0KPiBkaXNwbGF5LT5wb3dlci5kYzZfcmVzaWRlbmN5X2NvdW50ZXIpOw0KPiArCX0g
ZWxzZSB7DQo+ICsJCWlmIChpOTE1X21taW9fcmVnX3ZhbGlkKGRjNl9yZWcpKQ0KPiArCQkJc2Vx
X3ByaW50ZihtLCAiREM1IC0+IERDNiBjb3VudDogJWRcbiIsDQo+ICsJCQkJwqDCoCBpbnRlbF9k
ZV9yZWFkKGRpc3BsYXksIGRjNl9yZWcpKTsNCj4gKwl9DQo+IMKgDQo+IMKgCXNlcV9wcmludGYo
bSwgInByb2dyYW0gYmFzZTogMHglMDh4XG4iLA0KPiDCoAkJwqDCoCBpbnRlbF9kZV9yZWFkKGRp
c3BsYXksIERNQ19QUk9HUkFNKGRtYy0NCj4gPmRtY19pbmZvW0RNQ19GV19NQUlOXS5zdGFydF9t
bWlvYWRkciwgMCkpKTsNCg0K
