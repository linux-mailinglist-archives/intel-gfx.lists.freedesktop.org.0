Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2809D847F
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 12:31:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C8B10E60F;
	Mon, 25 Nov 2024 11:31:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mb9xiB+E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159CC10E60B
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2024 11:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732534278; x=1764070278;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vtcuLJutd2OVONivDg0+ZXgG9oUoq0hdS4WK99Wv6K4=;
 b=Mb9xiB+EL0ix7aPeiNgYuvFeaIqXPeoP+uYcEPnTV7Balu7hrx+XUqC5
 nTd1MDzHtu5uUzTc+lO8pWwMYK21MdkYLwaV1tAlDEyf1g9reL6mChmIV
 x4Rox2FierLQGGNkAp9Qm4QL4o2KHz+QBNkkDmkc9or0YEworVBfeVFE8
 211aNA8LOtPmGDyOSeBc0SdKdRCA9cKzyJUvu4TxfLBQuildYn/B1z9tI
 7mfBAAWVYgP/2MgH5Vs0sp0K8jrV/n5ko3iRuflIv1NhmmNWYpgwdBV6l
 +zYoXuGlds98iOauCHVPuXqeyAuAmzYN6Y+YdE34ZIftTKNS1qbeMfm8i Q==;
X-CSE-ConnectionGUID: 56F+xcCTSUOyolzoA+svIg==
X-CSE-MsgGUID: 7h1k4U2uR9qQQ6fgTnClKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11266"; a="44015266"
X-IronPort-AV: E=Sophos;i="6.12,182,1728975600"; d="scan'208";a="44015266"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 03:31:18 -0800
X-CSE-ConnectionGUID: E6/QZANqTga0a1NlANHPCQ==
X-CSE-MsgGUID: LKuPCmkdS2y/TEs1dOmr7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,182,1728975600"; d="scan'208";a="92027752"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Nov 2024 03:31:18 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 25 Nov 2024 03:31:17 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 25 Nov 2024 03:31:17 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 25 Nov 2024 03:31:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U5Y8K8fUUeIJNlwCsFKvgahNr8JdOKDZNNH+Fr9HPN3WVQkCX926W5Ye4Pv9AGn1T6reFvi/WznrsGPjC0LQqraBtvxycOIDSpVKUO86maf490Qyxd8VT7ENkIhXSHHZrUWKkCAAT8bv3u0ETvtjsMJOme7TxQZtPibilVd2xYjhmiXIbnvGHp4L6boqCe7Ua/VSYd9DRNGOgtTilrzjpVCItbz58mrzKpXxbad00k9+PnuB4JNVo/LFnpbje36Li4w6bG4gHJv5gW3Xpmamz3VW+nb6Tp8Z0/rQGN33HeivrquDPewrY8T3U0RgXhF9W5LiGl2ccw0nwm2jWltflA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vtcuLJutd2OVONivDg0+ZXgG9oUoq0hdS4WK99Wv6K4=;
 b=ePdjEEv6UG9ViQozDT9gBCscl07pLxebyWexdYr+BiKWS8LAYiPsIrUnsQWR1MxyL6Lz2yNLC0JCps0r/zn6B1YObZ+5UWccO43knKL2B9yTibhPeocLlkajzcPj8cgY3pVtQVmS00Q607i+uGUqawnJVfpgQ0i4aTsONu3QufNOKwd4sU82BC1Y2ERPaZpS+FDIiK1NXIWtkClJVEOOzIno9WwtgaqxEsLkG+wWuqLV0DHoVHE9UI8U8nTd1Pn6GFcWPEW8zp0BIEMi6LpINDJDNIlGVDcQs2zdpCKuSyuoul99e/z4Xrjj8X5qY68YRSFZxjPlqPvIndl1RSOg8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by PH8PR11MB6951.namprd11.prod.outlook.com (2603:10b6:510:225::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.27; Mon, 25 Nov
 2024 11:31:14 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8182.019; Mon, 25 Nov 2024
 11:31:14 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Brian Geffon <bgeffon@google.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Lee, Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH 2/2] [RFC] drm/i915: Unbind the vma in suspend if it was
 bound
Thread-Topic: [PATCH 2/2] [RFC] drm/i915: Unbind the vma in suspend if it was
 bound
Thread-Index: AQHbPwaG/8MUi6zjtUa9ADSCDT79ibLH2uaAgAABw9A=
Date: Mon, 25 Nov 2024 11:31:14 +0000
Message-ID: <PH7PR11MB82522BF88DA5886DD3ACF0E9892E2@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241125062804.412536-1-vidya.srinivas@intel.com>
 <20241125062804.412536-2-vidya.srinivas@intel.com>
 <CADyq12yoA2=eHNxnNibKvNw6+A81XyAXvq_8KRh+AHeoNfOZFw@mail.gmail.com>
In-Reply-To: <CADyq12yoA2=eHNxnNibKvNw6+A81XyAXvq_8KRh+AHeoNfOZFw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|PH8PR11MB6951:EE_
x-ms-office365-filtering-correlation-id: 7b39e834-8390-41a5-6860-08dd0d44ab95
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?blZFYVlZbEtLSzlzMExBV1lvMzREUGZrbnF0dStxMjRvM0NudlJBWTJ3TS9B?=
 =?utf-8?B?c0tqQXAzNjQyWlIwZzd5aW0rT3hoRnpTc2MreE5ocTlhd2hCSWhxbGxtMC9m?=
 =?utf-8?B?ZkNOcHdrRVFnQU03T2NrTzFIdTZTVkFEQ0REemh6VzVPd3hhbVZOSXg3VnNp?=
 =?utf-8?B?NFBhWm5VZzdYeEdTZ2Nzbno2MnhCRUJ2cWZxZWZOL2E2TjJyZmVGN212a0g5?=
 =?utf-8?B?bEdvMmhyaGpuMnRUdVYvejZWLzVJOXNSVDQ3T3g3ZUczTFRvZGltWDN6Wkta?=
 =?utf-8?B?d3BhODlONEVwOEEyZGxUSS9lVDAxd1Jjd0gxaXprSmgyYnMzZGNtZmNMVUZs?=
 =?utf-8?B?ZXlhTWNJRFA0a0Nzc1Y5bHptQ1Z6Q1pFVEJiYkh2WUEwbEthNFdoN1hZZ3Jr?=
 =?utf-8?B?MnUrbXhsektZd0xCQnV2SGorS012RlpQOHZIdjg2cXBnN1N2b1hSN0tYRitD?=
 =?utf-8?B?UGJPS0kwUmp1VUpBMFNPb0ZIYjFvNkhsT3NRVmgrLzdMVFNSN0t1aDF3WjFs?=
 =?utf-8?B?NkgwMXg0eitzYVZ2Qmo1Uy9abTRMWHFFNVRiaU9sc0FLUTRJMGt3eU9hRGVx?=
 =?utf-8?B?bmJ0bTZhY1gycGZBdFJOWFRZd1dQdW4vUldZRlhzYW5IOWNKMEgySlU1R1M0?=
 =?utf-8?B?MlFoVkphR1NDMWZ1WlRDSU9WaTk0T1QzZXlVMzkzM3R1eC9MSm9PejhqelU2?=
 =?utf-8?B?RjJaYWVwazJHSnVPMUxYdWY4NmE0T25EYjZGZmRORWJkV3dQbFN5cElDM2Nx?=
 =?utf-8?B?NVZsTVRFM0g2SDBZb0VlZENGNkFOQmlLT1o2bU1GeVYvdHJLTzYwNVV6ZnpD?=
 =?utf-8?B?eXBBR0N3Ui8rbUxGQVdVK1A3SzZiR2pSa1dYNm5jcWFrc3lyOHB0SDBRZHNY?=
 =?utf-8?B?WXhUaXJpYW1hZEJjTEErb29lbHRva1J4bW9GcGJEUU1PSFNzL2NlNmlZNGhx?=
 =?utf-8?B?Vy9GSTVOaWlFcDB4OE03dDBNOGRyVEY4OHplT0ZtcVh6SldGNExuaitwNVJW?=
 =?utf-8?B?eXpWaFlGUlZjTDV2MWdaWElQT2U2ZUgxQ0phaVdIalVzOEt2bDhIQ2Y4WWFv?=
 =?utf-8?B?WTVYOExoak9iZWZsKzc0SGk4MmRQby9rTjArR0NvcWVmMHQ5RzFHTnFLYkJx?=
 =?utf-8?B?eEpPY1NRaTh5Mlo5RE10YW1ZRXIzbXZueG1oUFhMaVY2M1JPaWx1OFpnN3Rz?=
 =?utf-8?B?SlNsWk5JTnY5MEEyL0c0QUovbmZQTXJtY0w4U005Q2x1T3pCRGtER21DVUtR?=
 =?utf-8?B?em4zcnZBb1dJWmJsODY4U2d6ZmlKeFF1K0oxMHNPaEZTRkovalhvenl2Zk01?=
 =?utf-8?B?ZVNqZ1A4cDlhN1JCcjZvbEZQUFkyUEtDT3dEbWloVjVLc05SZ0F1ejdVMDNN?=
 =?utf-8?B?dm56dHdrNy9xZUpjYmFBYmRuLzJNQTFTOEFKck1RNVhDQzZXYjBwc1pHdkdh?=
 =?utf-8?B?WFQ2R1FKQmRSTndpMFUyTU05YXdidUtjajVZMmxDM3pTTC9BNmxBQ0ZuRTF0?=
 =?utf-8?B?WFl5Q1d2Q3lSdXJFKzdQclJnYVJnSEFXaFdRVGprcGtqWXlmVmNNQThIQ0Fu?=
 =?utf-8?B?RmE4ZHJ3MDNzbzJIOVBWMXRxbXVqRTUvVTFUaXlwZkx3d2xzMTNSbWxCakl0?=
 =?utf-8?B?NmpOTm1FaVVsdkd2bGNzWU5TSGVUa1VFRkhzR3AxeGJNb3JDUWZudGJGRjM1?=
 =?utf-8?B?cG9NeTBlU21mOHI5UC8yNEtQNnpPWmhTSktVb0UyRktUOXhFOEdMQnZOcU1E?=
 =?utf-8?B?NnBKN3pKSkdjVHlqaTlyQ3VmRjFneUt2bHl5YThXWU1GdEtwdmNoOXMveGRT?=
 =?utf-8?B?ZFI5QTRyNDRRTDgwa1R6S2ExLzJQMVRsbHBWQmRCS2Q5M3pUZFkyWVdSZWRx?=
 =?utf-8?B?NEdwN01GUHJUNkx6MlBCem96NmhrNVlNT1N3eVczL0Jncnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGZNd3lPUUNiZXVzdktKb1NHRU1GRmpEUTVEWmQydkhGN0JpTjNuQ3AyVjNH?=
 =?utf-8?B?R21WeHB2RldpMGQ4UVdKdUFKb09jTzUwS01oVzVBTlVqcGc4cXo4SjRtZ2tL?=
 =?utf-8?B?aWFCMVYvdGFkc2hNc1RLM2Q5MHNxMVg5Ym4wNzROeE4yeGkwMXRTcnhYUmV2?=
 =?utf-8?B?NXBxRVVkRGRyRjlJSmFMTVRKaVdwUHUxZ3ZiMU9hR2dyTlVuTFo5aHVncThW?=
 =?utf-8?B?cVZMSGdTVDJQWkxadElJaHpUOFREdzk0a2cwajFGN3ljZ3J2NER5YzB3QU5t?=
 =?utf-8?B?cnRTQ3ROK2dYVUQ4eXFrQkNEVHFNUFFvZTVEcnMyM1Eybk1oajZMeUNlU1FK?=
 =?utf-8?B?L1VORENrV1I1Y3JsQU9xVHNQRUduUklQZ3EzZjZCdElKbXQ0SmtNdkpIQUYw?=
 =?utf-8?B?cFB6cjdWVmg1UWlUYXdzMVZaNk9iazNrWTFvL0JQNDh2RUhMUnEreEdGV1NP?=
 =?utf-8?B?L2NHdHU2ZWZnYVo3Tkx1Y1VHRXdDaUdNdC83V3JnbmpRWFZuVmxzcEJ5VWRJ?=
 =?utf-8?B?aTBpSzlyaERYclhEemZXdnpNMnJnMmZTTEQ2M0EwbHRIRUFuVC83Um9Fakx4?=
 =?utf-8?B?TWIvSGhwK1pjNnZzWGoyY216bG05QUZxUUFVWnk1alhqYkcvOUJRazlld0RR?=
 =?utf-8?B?S2xFVWpGOUJ6UUVQaDhHVFhHNkNpU3dzdy9QTnlVWjJycjJFSEtwd00vMk1S?=
 =?utf-8?B?MnVFSC81VEFJWWpkeVEwcW5oWjJtbklBc240dGg2Qk5oODVEZDZGRVFOL0s2?=
 =?utf-8?B?amJzZnVvQm14T01USWM0YWVUWU1FYUtKeHNkeGY4dWw4TkVJai9SNytvUGp5?=
 =?utf-8?B?WHE1WDVibzhtdWhkemx4VzZqejEvT0NNNlRlbWVKWVRwaUxKdTd6Z3hTTTk2?=
 =?utf-8?B?QVA1Mm1yNU5rUHlsZlpVNWI1RDRBNURwUnJ4UEU1RTlkenc2clBtOFJTbGJy?=
 =?utf-8?B?ek9XaEJ5VHg4eDNRMEhVL1pVWXNJbjJRZkdoTTc3d0xPbXM5eHVCM0M4UFUy?=
 =?utf-8?B?NkJOdmVCVHdpd0FGdFVYd0Q1c0xyRzF1emNnSzJncDQyNVMyd1N2Z3ZMcVZp?=
 =?utf-8?B?Vzh6ZHNadGEyWUttcHllR1pmMkRGZlNDYlpKL0pHZzVyTVlBQ2lQam5WcnA4?=
 =?utf-8?B?RUdlczFBUnpQM0hONFJhVmplMU10ZHF5eWYxZGRGMlRHZGlSekNiOVovdUQr?=
 =?utf-8?B?bTYxcEM1Y3ZwOHhkQUdMNDV0cVFGb0xVZXRlcEhFdFNaRmsvU1ZqS2Uxa3l6?=
 =?utf-8?B?NE0zQk9tVmc5VUlhRUVMSXdXbkxCQWVsK0JGVm1QUUlDRk9RQk9xZlk0L0cy?=
 =?utf-8?B?SWlsN1p4ekxTTXRJL0JiZk81cHlyZm52Sm5JV3FtRzR3VnZpRVp6VC8wZVRp?=
 =?utf-8?B?U2tBU0pIR2g2aXk2Ym9hSWJSblJPZU9rSTRnM1U3MEFSaG9KcXBSNGFFY2ly?=
 =?utf-8?B?ZE11NjJnZE1SSE1KV1FOUk5LUFBBb1I2YVF6b3JPKy92Y1h6UnphcWJEZ3F1?=
 =?utf-8?B?N3lUd3N5QUIxc2JvVSt5SW5ha1hFR09McVFzVWpsZm5IbjdpUWxsdGZUeGl6?=
 =?utf-8?B?MzZwVklBdlY4TDVoSkpIYWNJUm5yaUkyM1hTbkhaUHJJdElNMUx6UnhCd2dl?=
 =?utf-8?B?aFNnNlVxT3VBeXk2WDh6bVpCZDZLOVJGN1kzRXFYMW9WTlJMNk9adWNYTmNC?=
 =?utf-8?B?Qjh2QmxLRldmWHhOVVI4R3dpT1hwNllCakRKRXEyWDYrc1VvOEtUc1JIZnBQ?=
 =?utf-8?B?Z0FRTmhWZkdRY1k5bFI1RkZvRDN6K0trMm5EdmFvMGJ6VWU0RHlMWG1qSXNh?=
 =?utf-8?B?d0d5U1dZUStNdDVYOS9aa2NYQU1zVDNyQ080V0JodnNWZGVKMTR5T2FYMjJH?=
 =?utf-8?B?eXVobzRpYzFCa1B4Y3dpUzg2cUhRajRpUXNvM0V0cTIvNnpoamFTS3lFMnZy?=
 =?utf-8?B?QUdNTjRtUXdsbDhqYUtaK2Y1MlNFOThyS2RiUnh6cVltODlZcTh5dlIzZnZ1?=
 =?utf-8?B?TnlKbEJYQXFCbWpBa21rVDIwdW9HSVU0ZnF3a0pSZy9ITFEwVEkwYkR5WGpI?=
 =?utf-8?B?R2xVaDlJU2dDNG1Sd0czc3FpMi92TThaVXFvTHlkRFZ5bVRDNHlDWmI2bGxj?=
 =?utf-8?B?aDZGbkxNRnZ3cFFtQWxUekJ2T0czc3RYZjJWZXE2eFlKNFBKd1RzcmxOSmpy?=
 =?utf-8?Q?yik2qCBLGbJzs2k137bbMOi+vj47W072RkcWceUi6/WX?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b39e834-8390-41a5-6860-08dd0d44ab95
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2024 11:31:14.3853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h7uLbc6+7fisWvxgf2BX4/Qp+totG/ts+VDvIFT9bv2mVD6nIwCX2lBq8DJ+25pShbwiDhy6JMlXzHCR71FBDHghgcntaIARG99AvNUf2vY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6951
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnJpYW4gR2VmZm9uIDxi
Z2VmZm9uQGdvb2dsZS5jb20+DQo+IFNlbnQ6IDI1IE5vdmVtYmVyIDIwMjQgMTY6NTQNCj4gVG86
IFNyaW5pdmFzLCBWaWR5YSA8dmlkeWEuc3Jpbml2YXNAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgU3lyamFsYSwgVmlsbGUgPHZpbGxlLnN5cmphbGFA
aW50ZWwuY29tPjsNCj4gdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IExlZSwgU2hhd24g
QyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gW1JG
Q10gZHJtL2k5MTU6IFVuYmluZCB0aGUgdm1hIGluIHN1c3BlbmQgaWYgaXQgd2FzDQo+IGJvdW5k
DQo+IA0KPiBPbiBNb24sIE5vdiAyNSwgMjAyNCBhdCAzOjUx4oCvUE0gVmlkeWEgU3Jpbml2YXMg
PHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCj4gd3JvdGU6DQo+ID4NCj4gPiBJbiBpOTE1X2dn
dHRfc3VzcGVuZF92bSwgaWYgdGhlIHZtYSB3YXMgYm91bmQsIHRoZSBwYXRoIHRvDQo+ID4gdW5i
aW5kL2V2aWN0IGlzIG5vdCBoaXR0aW5nIGR1cmluZyBzdXNwZW5kLiBUaGlzIGlzIGNhdXNpbmcg
aXNzdWVzDQo+ID4gd2l0aCBEUFQgd2hlcmUgRFBUIGdldHMgc2hydW5rIGJ1dCB0aGUgZnJhbWVi
dWZmZXIgaXMgc3RpbGwgb24gdGhlDQo+ID4gRFBUJ3MgYm91bmQgbGlzdC4gVGhpcyBjYXVzZXMg
c3lzdGVtIHJlYm9vdCBpbiBzb21lIHNjZW5hcmlvcyBvZg0KPiA+IHN1c3BlbmQvcmVzdW1lIHdo
ZXJlIGl0IHRyaWVzIHRvIHJld3JpdGUgdGhlIFBURXMgdmlhIGEgc3RhbGUgbWFwcGluZy4NCj4g
Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQu
YyB8IDggKysrLS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9nZ3R0LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQu
Yw0KPiA+IGluZGV4IGQ2MGE2Y2EwY2FlNS4uODQ5OWFhMTJhNzg3IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYw0KPiA+IEBAIC0xNTcsMTMgKzE1NywxMSBAQCB2
b2lkIGk5MTVfZ2d0dF9zdXNwZW5kX3ZtKHN0cnVjdA0KPiBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
KQ0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gcmV0cnk7DQo+ID4gICAgICAgICAg
ICAgICAgIH0NCj4gPg0KPiA+IC0gICAgICAgICAgICAgICBpZiAoIWk5MTVfdm1hX2lzX2JvdW5k
KHZtYSwgSTkxNV9WTUFfR0xPQkFMX0JJTkQpKSB7DQo+ID4gKyAgICAgICAgICAgICAgIGlmICgh
aTkxNV92bWFfaXNfYm91bmQodm1hLCBJOTE1X1ZNQV9HTE9CQUxfQklORCkpDQo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgaTkxNV92bWFfd2FpdF9mb3JfYmluZCh2bWEpOw0KPiA+DQo+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgX19pOTE1X3ZtYV9ldmljdCh2bWEsIGZhbHNlKTsNCj4g
PiAtICAgICAgICAgICAgICAgICAgICAgICBkcm1fbW1fcmVtb3ZlX25vZGUoJnZtYS0+bm9kZSk7
DQo+ID4gLSAgICAgICAgICAgICAgIH0NCj4gPiAtDQo+ID4gKyAgICAgICAgICAgICAgIF9faTkx
NV92bWFfZXZpY3Qodm1hLCBmYWxzZSk7DQo+ID4gKyAgICAgICAgICAgICAgIGRybV9tbV9yZW1v
dmVfbm9kZSgmdm1hLT5ub2RlKTsNCj4gPiAgICAgICAgICAgICAgICAgaTkxNV9nZW1fb2JqZWN0
X3VubG9jayhvYmopOw0KPiA+ICAgICAgICAgfQ0KPiANCj4gSSB0aGluayBhbGwgeW91IG5lZWQg
aXMgaW4gdGhlIGVsc2UgcGF0aCBvZiBpZiAoIWk5MTVfdm1hX2lzX2JvdW5kKHZtYSwNCj4gSTkx
NV9WTUFfR0xPQkFMX0JJTkQpKSBpcyBhIGNhbGwgdG8NCj4gX19pOTE1X3ZtYV91bmJpbmQodm1h
KQ0KDQoNCkhlbGxvIEJyaWFuLCB0aGFuayB5b3Ugc28gbXVjaC4gV2lsbCBzdWJtaXQgdjIgdmVy
c2lvbiB3aXRoIHJldmlldyBjb21tZW50cw0KYWRkcmVzc2VkLg0KDQo+IA0KPiBCdXQgd2UgbmVl
ZCBWaWxsZSB0byBjb25maXJtIHRoaXMgbWFrZXMgc2Vuc2U/DQpZZXMsIG5lZWQgVmlsbGUgdG8g
c2VlIGlmIHRoaXMgbWlnaHQgYmUgdGhlIHJlYWwgY2F1c2Ugb2YgRFBUIGlzc3VlLg0KVGhhbmsg
eW91Lg0KDQpSZWdhcmRzDQpWaWR5YQ0KDQo+IA0KPiA+DQo+ID4gLS0NCj4gPiAyLjM0LjENCj4g
Pg0K
