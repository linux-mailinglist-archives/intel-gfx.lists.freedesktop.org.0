Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42589A133C5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 08:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F6F210E8CC;
	Thu, 16 Jan 2025 07:27:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DvWvl6wE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8210310E8C8;
 Thu, 16 Jan 2025 07:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737012431; x=1768548431;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rtslmuR+k348zGd1136DxLkmqet7mu3oMDhk7g0s4kE=;
 b=DvWvl6wEPnGERfwMf5T5iASz8tNknnxb1IvcgCxM2hQQWJe6hRLeVMen
 2dgETRBGVdH8WZe6MLLyxrS/J3t/36RCFenOouXOPksQOKt8g7kuiFqbr
 /guBeUL2hA6IdqPrv5NiFl3HRBsRBD3GWDzQsSQFBbLla3BEVkycqynxm
 1tfStbubhaDGUuF81GF2/y1rDs9Jbky4gbzQzdmh1OxyqRowQepYMyVxn
 ytnuk4n0R9LaU0lfZEXC0cEkkqAARMN3yCjo3KR+ahe1sOvUHhhXKlBVj
 9u1ksOmBiRxuS7xBdRWp5vxpDKKQmlmsys9dKmR8JMT0a8C3I2V8f0sMM Q==;
X-CSE-ConnectionGUID: ZvDS4rcgRBGsHWsp6Ubktg==
X-CSE-MsgGUID: 3SHfe9ZNRUC0tca+xgLdyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37076531"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="37076531"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 23:27:11 -0800
X-CSE-ConnectionGUID: 3Ot42+nWR3SGXOtNVlSJhQ==
X-CSE-MsgGUID: 5TocsEQgSRG7zfy2wOfiVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="105327850"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 23:27:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 23:27:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 23:27:10 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 23:27:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YzZUTkXnjqEX0BLU639SuuuDoJd2kcIgzB7pYsnTrZ1aKi/xVFGItrWEUWef+Vk7e5UtIuGPN0f4ZQfy5GKUx4OEJ/oalc305OHO6YyHafvqUh9mOx0hqyQkRPP9PdUeR7aq1V+LZsq4Kp3Cby5wOyw5TF/Xb4ehWW10Vxn4ZLchPOt6Gue9OQu88Plq5h05UiDzUhFqKrPzZpcflduDI7kyhMW+YYoCL0CShBtoCYEia8TT5LgiswrkLwvkwtkzgqSUROD0WsXBHRQ4AwXOkoxvkFNiz/q52+H2E7F+jzZOaLrbmxpbA+TOwENZcwIKlHtCDyxAr66bs6DFktK/vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rtslmuR+k348zGd1136DxLkmqet7mu3oMDhk7g0s4kE=;
 b=lcA1IB/i3yh+t+jwxLpe3vipIzXglkFxTNsnoalr7MAcee7eYbW8I04A3zke9hH1Am+nCPBpKrrTCujEOQYtRqrjrguwqeDuDICIP2HpOddpWfB1Qzy77aSiJw7EVBwZT95pZYDmkzfHTqkOoE8NWh8tv7jDMF3PsEaZpArPGKtNcoGyEq7peOsgZsegGlVeHLDRvAAScDdOC/AIz7VLx8Fw/+mLQ3XhDAEVA3OuzbtDvl3znbvYLIdV5ooUPp/CnmgCTdsYjgQMgyOyCNtE7AXmiI9FkOSkTr90a8zVqx7P82HTk3v97oE1djX9dSdVHtIWX2gqFAAW6pNKcMlC3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) by
 MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.18; Thu, 16 Jan 2025 07:27:03 +0000
Received: from DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7]) by DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 07:27:02 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 10/10] drm/i915/psr: Allow DSB usage when PSR is enabled
Thread-Topic: [PATCH v3 10/10] drm/i915/psr: Allow DSB usage when PSR is
 enabled
Thread-Index: AQHbYmimKsjjzv5rUky7xD9T6xFLTrMZCxew
Date: Thu, 16 Jan 2025 07:27:02 +0000
Message-ID: <DS7PR11MB59907698E7C3ADF111CDC118F91A2@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-11-jouni.hogander@intel.com>
In-Reply-To: <20250109073137.1977494-11-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_|MW4PR11MB6912:EE_
x-ms-office365-filtering-correlation-id: 895c79b7-da28-4314-2113-08dd35ff2c14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?UHZZNytIMldYeHZyeS9mL1pRYzNhMVZ2Y2lnT1lMN3dMUUFwRDhoeVNBcjRj?=
 =?utf-8?B?d0s5dlpTL3JldysyTEcwVCtxTWp0cklJQ1JvRy80azlMTWNIUFpydDdzTHo2?=
 =?utf-8?B?elZ5eGFPNWRPYStOUXVqNWlFRTNlZnJGci9sSUw4dlBFbnYrbVpBSjVlYzVu?=
 =?utf-8?B?ckhIdnA2bGZaZmJCaDJTUzRXVVFXR3NuQ2FlUGZGUy9jcUd3UEtTb3FrTHcx?=
 =?utf-8?B?YXBNZFRkVGdSVHhnUlBycmNOYmEzWnJZK0lvMDZLMzU5QWoxdGVKUFN0NFNk?=
 =?utf-8?B?aUorWDN2eXFyTld2QzVleTFocDlmZzV6Ym55dkdDc2NXRk9QZ0JXUUh6clQy?=
 =?utf-8?B?OWNhSk9kMk5kQzdDVlhCeGtCWlFFdHUzNXkzWmloUHhMaGcyRVlSd2pRVE9J?=
 =?utf-8?B?Tm1Vamtya2I4VkU0NUZ1U3dWNVFNRDdIRlRDNys2NHJZZDltalAyRDVYNjA1?=
 =?utf-8?B?UkVDa3JxRFllNzhsMEdrRnMvbkZCaDc0bGh0Nit4U21kdmhON2JiM2VQSCtU?=
 =?utf-8?B?akdoYmF1QzFVYkdJMkhGMWJsbjFxRjFsbWl6Ri9tUUVmYzlYdTFDN1lWK2Mx?=
 =?utf-8?B?TFhWclo0UC9ZaGllSVlJbHNOdXJJTTdFUjBzUGJrMVVIWnNlbWtlNkExMkJV?=
 =?utf-8?B?VnZkU0Y0YTYxcUhuYWJuWnFiNFNXS0FMTTN2bHVXc0djTVk2cmZ4ZVpJQVl0?=
 =?utf-8?B?cm5oYXdVTEdvZUVDRnlieUFiVU1aRC9kMHE2UUNFc1BQRzJVTW9NUUE3YSt6?=
 =?utf-8?B?a0hGT0wvUjkzZSs4dENFQjJ6UFFiL2dWajduS0NYdngzOUdaN2JpVHlXSEt3?=
 =?utf-8?B?WEpOZHdVZ2dGK2JPLzBqcy9WZHgzV3dEaDZVUW9VeVAzSk9CREN6N0U3ZE0v?=
 =?utf-8?B?b2pHY0dhMnhNTFlSaGorMmx1b0VFVWVuWU1hMEZiQjdKaDUybjlxdW16MUhu?=
 =?utf-8?B?RHY3eFVHamg1VGVURllOaFhHS1U3ZjBYVHhTY2dUZXRLVGtaYU5tZEUvekFi?=
 =?utf-8?B?TkdHd3p1UTZKeGNPZzhyc3ZYckQ3eEFiRGZqakkvb3JpeFdtWjR0ZVIxS1Iz?=
 =?utf-8?B?Z1hRemhNU045U3lKT1lKa1ZtQ1BTN3FReDhWcnE5b1p5WVhndWJvbTVYMXhs?=
 =?utf-8?B?WldmcnFLVnJGTWo3YkF3N1JCb2JKQ0FTTXpJNWlEejhOOFhiZ1o3VytRaFg0?=
 =?utf-8?B?YTM0dk5kQ3QyU3d5OFU4dndPNzhoT0Z0cHhXS0ltSHNESVdCNS93TFRtcGdk?=
 =?utf-8?B?RmJFNCtSaWlhRm1yWHg3cS9aL1hETVU2TzNxWEpFMUVkb0ZLQVpjNXNER2tW?=
 =?utf-8?B?d2NMaXVKYVJpRkIyTkN5Qmtoai85ck1xcWlsYXN4c2M4d2JrUFd3a24vcDdG?=
 =?utf-8?B?NGdLVUh1aHVRY2J1cVlPYlVlWENCSjRSYWg0Rll1cXdoYmExVDNmdUM5ZXpR?=
 =?utf-8?B?Z1ZKSHpJYnBtVE8yRlMwZWhnYStyVFVnY21VdTErZWt0cEswa29PemFjdGc5?=
 =?utf-8?B?RjZZUEFpTUovMkRSTGptaXd1N294TUhXL2JoRUhyZXd5WDZORkU0M0FPb1E1?=
 =?utf-8?B?WXZHcmxFUW9uMzU5UkFqNXpsOG1Ucy9iRXYvVmtNd2FxTFk0ZmVOSkF5N21x?=
 =?utf-8?B?ZHVGdXhoZmtqdkRFb1d1VW12RHRubElvWisyNnNESzJOdHR2YXRjT09sbXlE?=
 =?utf-8?B?ZFd1WjhKTnRmQ1RqZ1h3aUNVQk05S043Z1BOMzFFVjBvYzY1SVhFejIwbWV4?=
 =?utf-8?B?TERpZmw2NWhTcUZBOGFhRmxHWlZoMUp5Q1ZrZk5FUVRrSnZhT1RyUmpHc1Nl?=
 =?utf-8?B?UXhsV0RrcjBReTl4VCtROFlSbEZ5R0xLelUwN1JmWFJZNXVNRnp6M3Y0ZGV5?=
 =?utf-8?B?NUNKMkV0aTA0R0NubGgzemdVNklFaGUzT05sSnFqMHhqenJwVnFJUFBtL05D?=
 =?utf-8?Q?o0YUBXPWg8E84zsq0ZgQKxBIBDyz8Enk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB5990.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkVOZ2RwbzNlQ2FJeWpHNEt5VEcxMHlZd3NVWWVENm1yV0Jzd2JRaFdZNUhT?=
 =?utf-8?B?VlFzbXlzNk1LaWFBa3MvSmdWem8xKzBuTERWSGJiQ3pNdVBRamVXRWxYZndi?=
 =?utf-8?B?NTR5YnFKT2lybnowMDRoU25wRVdpdDYzVDIxWllGNndVUnB2Ky95TFE2cVlx?=
 =?utf-8?B?V1lWakM2aERUMEdYRERWeEtNOUJtY2tUbGtUc1hCZmJNRHZoWGhhL3VIRkRj?=
 =?utf-8?B?TjZ2Q3E4VWpTRGtwK3g4MndoNEg4TU5OaTEvQ01JVHZ0bktsN2dha2ZkU0lI?=
 =?utf-8?B?U0FHWmRMT3VRVm92VENTRzZXN0VSQ0RRTndKYzJRRUpOTGZrQ20vOFdscWtX?=
 =?utf-8?B?d2I1YkE1SXowakxYdlRxSWJsTmpuV2g1aURFMjMxdjFTQXJQRUR6ak1jMTJW?=
 =?utf-8?B?bHBhSHQ3aURQWU5HbVplS21mZFozbUR1WksxUXBVTncxcWtqeGNURzU5bk5k?=
 =?utf-8?B?S2dvTkdOVG5TUjZtRDk1WnI1RHF6K3pkdXkzd3Y4MEJ0ZjVNMStGYzFNUWF2?=
 =?utf-8?B?UVRSeTdsckJhei9sOTZvUTVZRUo5WC96VmtlRTFHTzIyRU9jVkw2akpoWHN2?=
 =?utf-8?B?RjI1cHpyU3ZubGVSVWpJZ1QzR0s0U3B3MzU3YjRneCtadUlwZjY2TEhIbUkx?=
 =?utf-8?B?YVdmSVlCYTdoQzNSK01yWkFRNUNvNHNqME5sRDlkS2NueDJSZW13WGp2Q1F4?=
 =?utf-8?B?Y3UyWnlLcWt6NU9XQXFIVElRbWRxazVPUjRYNm1QbjZ0QU95M25OM0hqOXda?=
 =?utf-8?B?eVpoM3FGajRVRTdTb0gwSFIra2tEUjQreFdCV0cvbW9RSnZpWGY0R2RXMzdP?=
 =?utf-8?B?T2lIQVBKNnV1bzBGUG83Nm91bGVtODVFWHIzb3UwS2daZGhuOWd5b1pmc21x?=
 =?utf-8?B?Nm1TZFBkMW9xNFlHdVVqSU1EUmxFODBMdGlsSkN2VmZmMHNTUmZiVHkwdlFu?=
 =?utf-8?B?dCs4YSt3Z0hzME1XcFdEK0RNeGgwQS94OWF5dmRRYlZMS1loZkdHOHpmRGJu?=
 =?utf-8?B?K00vR3lNRFU0ZTNxUUZ5UCtoS0JCdXlDYVpEZ0h0NVhqczl6RGNaRFpiNmgw?=
 =?utf-8?B?em9zSGpSZkcxUG42Vk1Iam9ON0ZXTDVjeFlIRGNsazZ1NmxqbkZ3TmNEbldU?=
 =?utf-8?B?OHM0OWtGWEVLODJlVFRVdUF0VEJoYmJvejFjQVlySlhnSlNRdlpwa3hQTExV?=
 =?utf-8?B?UUtlN0RqV1M2QXpmd1FoN3RNZWs2SHBVWU5VRElnUlY3SU5vSm9abDJIMkJq?=
 =?utf-8?B?VXVVeTY0OVhXYkNOMDIxempJak5WS2pGZTByaEF3WnYxbks3T1A0U1RrWUxN?=
 =?utf-8?B?eTBaYjFYbGtHUGxWV0VPZmhSQ0tGa3hMM0JBN3BlWXpZWk9GVnZ1YWlYNVNV?=
 =?utf-8?B?YjJiZSswNmZHLzdYR2FvNWJ0eGcyUjQxMkQwd2VsN05XU3RYNy9hcTV4TEt5?=
 =?utf-8?B?SnA0cjBidDV0TlErL2xlRzlzUzIrbEEzUjYrREpsUUJNdUo0SWhadi9oemNQ?=
 =?utf-8?B?Y2lPWlZiREoySm8xZnBHOEI3R0d0VUs1dTkxQVVuZitaQkVhVVc3Q3JkdjVz?=
 =?utf-8?B?U05FQWlRMVE1QUxEejFBaDhuVXI2VE4xblUzUXpRYktKZy84S25ieEJ1aTNU?=
 =?utf-8?B?VC83cUthWWp1QktqMWFXQ3RjMk40OTBMNThPQ2F1aENNbi9NQzZ5U2dHVC9U?=
 =?utf-8?B?RDEvaUdabVpTNFBOZkpReTNkam1nOVgvTm0vaTFwYlBSRUkwbVdDOTBEaVNy?=
 =?utf-8?B?WkFzMTZSdm9SSWdPaGdyR0tPM3BVS2hHM3A2NkNpT0l4Z3drZjJZVnB4SFhM?=
 =?utf-8?B?V2FIb09xSnQ4UUpYeU1HT3JKWFl0aUFWQUdxZzFZWUJ0RzB0eVpHRWdsWVpG?=
 =?utf-8?B?ZUlRVm5zKy8rNUU5bXM1bHVCNVVqOWVGRlFVUWEwYlNURWlmMFJiSmxlNFR6?=
 =?utf-8?B?RzNZM3lmWVlXNnpXZlZobFptWVZUVURCY2QvTy9BdXc3YmxYRzBqOFFqWFp5?=
 =?utf-8?B?R093TVhscWczaHF4dm1ydEYrbjVQR04wMElBQWY4ejhkVC9xVy83K2pVM2t0?=
 =?utf-8?B?bURjVndqckNxc2FsRHVSSDN4K3h3cStFYm92a0ZaODd6NnJKZzQ1SVY5cFps?=
 =?utf-8?Q?rEajPgARjiZLls9wmOzMJprk/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB5990.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 895c79b7-da28-4314-2113-08dd35ff2c14
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 07:27:02.8634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DiuT/tqFlzXLTQZH22+4x0krzFZmxu9ONhY89d19RlhhIxXIBKM9ZyAYcVcurXnW3UuKhS51nLdsaZ/d6/l0lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMTAvMTBdIGRybS9pOTE1L3BzcjogQWxsb3cgRFNC
IHVzYWdlIHdoZW4gUFNSIGlzDQo+IGVuYWJsZWQNCj4gDQo+IE5vdyBhcyB3ZSBoYXZlIGNvcnJl
Y3QgUFNSMl9NQU5fVFJLX0NUTCBoYW5kbGluZyBpbiBwbGFjZSB3ZSBjYW4gYWxsb3cNCj4gRFNC
IHVzYWdlIGFsc28gd2hlbiBQU1IgaXMgZW5hYmxlZCBmb3IgTHVuYXJMYWtlIG9ud2FyZHMuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gaW5kZXggZTQ0OGZmNjQ2NjBhLi41ODU3NTgwMGZhZDIgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC03NjMx
LDYgKzc2MzEsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfZHNiX2ZpbmlzaChzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJaW50ZWxfYXRvbWljX2dldF9vbGRf
Y3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5l
d19jcnRjX3N0YXRlID0NCj4gIAkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0
ZSwgY3J0Yyk7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9k
aXNwbGF5KGNydGMpOw0KPiANCj4gIAlpZiAoIW5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUpDQo+
ICAJCXJldHVybjsNCj4gQEAgLTc2NDMsNyArNzY0NCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0
b21pY19kc2JfZmluaXNoKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAg
CQluZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3BsYW5lcyAmJg0KPiAgCQkhbmV3X2NydGNfc3RhdGUt
PnZyci5lbmFibGUgJiYNCj4gIAkJIW5ld19jcnRjX3N0YXRlLT5kb19hc3luY19mbGlwICYmDQo+
IC0JCSFuZXdfY3J0Y19zdGF0ZS0+aGFzX3BzciAmJg0KPiArCQkoRElTUExBWV9WRVIoZGlzcGxh
eSkgPj0gMjAgfHwgIW5ld19jcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiAmJg0KPiAgCQkhbmV3X2Ny
dGNfc3RhdGUtPnNjYWxlcl9zdGF0ZS5zY2FsZXJfdXNlcnMgJiYNCj4gIAkJIW9sZF9jcnRjX3N0
YXRlLT5zY2FsZXJfc3RhdGUuc2NhbGVyX3VzZXJzICYmDQo+ICAJCSFpbnRlbF9jcnRjX25lZWRz
X21vZGVzZXQobmV3X2NydGNfc3RhdGUpICYmDQo+IC0tDQo+IDIuNDMuMA0KDQo=
