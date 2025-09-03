Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 376E4B41ECE
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 14:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9208710E214;
	Wed,  3 Sep 2025 12:22:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WouTRhds";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B1FA10E214;
 Wed,  3 Sep 2025 12:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756902164; x=1788438164;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3O3v4R1KEyAfIRufyDbZe537Lb9f1B+NwDzkeN0BLqI=;
 b=WouTRhdsTYnbTsDowexQP/pW60beogOsP3y9gdEtHuZk1uVkLEzq8gTx
 jAOAfyYhX07uD+4aHsf5VH9hu77RBDFjGTL1upHbtrfNhi4ZtLVJWBNMZ
 YvkO9U+3b4zGKnjrTqcDGdZoarfbJupp/QlIbCLSRmTcRlWbReuraubaF
 g+KUDkSbKndu3z9f4V4VJmpTSGuN6e71bvYJngRnJcFM+w5JN070gE5I1
 nLb212JsZD+8PkUBW+yUa3L4Z0zQq6uYM9QnBk2Ja7OrCRp/leAjjPNKP
 y8Z57LajIgAHIkrq4yN3/VM3WkH/BYPKTDQ0W7C196jbtZIpziC2MJLbe A==;
X-CSE-ConnectionGUID: Uq/bKpojTuCSVqN1DNrb4g==
X-CSE-MsgGUID: JkFyJ0AMQP2lRXlYt7XFSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="46786995"
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="46786995"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:22:44 -0700
X-CSE-ConnectionGUID: cT3jBaCiRWmhyPBdgGKbfw==
X-CSE-MsgGUID: ZBt9gcArRBqrSZcYHybs+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="171715449"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:22:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 05:22:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 05:22:43 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 05:22:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fatgC+k3VGfd7ql7wiavLfkcgzUb8ZMgoYDP7IxbeRT/Tqz3TWU4ANRiueby28pxR00QrWNHb03kAC6w7IF7lV/ZsVgmo49KAwI42xnN5T3UpV9gUsjP+uDiS4kzAD/gs1CBVCiaG4PqnhqcnqnjBdeIuN2CMauk814gx+2gqCQETYIRpfEFa03/HAOkR2gKK/fTV/J+Zb5kyWQnv3KOCCMg95KgHo2Dw8twLfn53BpCXwrX8b7LF8TkkTWq4tds+qz4zzhG+C7avuQiWYEDGusOnPqNT3S1m/xaQ1dXwgy4tbnM6NOYlmZKU2MStDrgClPeBOT9QUmtkYMZeY/ZHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3O3v4R1KEyAfIRufyDbZe537Lb9f1B+NwDzkeN0BLqI=;
 b=laL2IX+eDq0/VtqrxPCjK4x0Rgorq30W/o5OZ6nWKpYEVOyq8SCXZfTUCT+Zzqajn9CT+SWyQrWtVg2r7jZWOL89g1xeXnMMo82VrJJW+0adh+vwnbkuIdI9epE9poMPQD9/a2ET9wcYejijX3aaH4Ogtke/g1iNCk8ZfMIsejyLHg5/IAA9bWxIYSr0fW0Dn8ikE4dbOL72ZngNGrSSFr81Sjie+ygqUQtf/CkYoqgpkAz6wmudO2ZIa2UCyH7+Q4FbWab++up2njH2cUj5qrqV4E7r685odY52vOdUy51Si9Rj9YK36BYbJ6yV7A6sHiZXJaH77tqJgwH0U4BhNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS0PR11MB8161.namprd11.prod.outlook.com
 (2603:10b6:8:164::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Wed, 3 Sep
 2025 12:22:39 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9073.026; Wed, 3 Sep 2025
 12:22:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Initialize phy and ch variables
Thread-Topic: [PATCH] drm/i915/display: Initialize phy and ch variables
Thread-Index: AQHcHMu3cpX4rER23Eic0lYWlRCtxrSBYC2AgAAA8PA=
Date: Wed, 3 Sep 2025 12:22:39 +0000
Message-ID: <DS4PPF69154114F895D5FD0289E7008DC83EF01A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250903120147.1799446-1-mika.kahola@intel.com>
 <4007cf393a333c1ffe62c2245c098bb99751f55e@intel.com>
In-Reply-To: <4007cf393a333c1ffe62c2245c098bb99751f55e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS0PR11MB8161:EE_
x-ms-office365-filtering-correlation-id: 83190b10-fe64-4f59-3219-08ddeae492fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bi9xM0NQdmI2ci8xZ0doS2k0L05ERXZiVm9rNzREUnBqMUFaVXdQQ2lpQ1l5?=
 =?utf-8?B?bklReVNqMFF6Umc1VnRMcFlGbXZyNlg1QWVVcE1ROFo2WXhqQU91OWRkOTdB?=
 =?utf-8?B?RUZyYWloVkUwNDJGQTVDcTFrMVlGelF1bUdIR3k1ZnNrdFB5bEFMbmhNZWtt?=
 =?utf-8?B?eGZnakFIdEgrMUFTckI1cHpLNU83M3FsbzM5NVNtTDRVUE9rSlZoQzFHeVdP?=
 =?utf-8?B?aTlkWXlzcEFnUUxvazJQYUF5QTlybUVyRGRaNFk5bHpwR1d0NC9KUi9EN0tm?=
 =?utf-8?B?SjVHWDkxeVFCdThFcWtzdG1wT0l3MURudFRkemtyQXhhSUdYRTJCNHE3WFI1?=
 =?utf-8?B?MHlFbVBWNmRJeUViSjFPZlBEWkxnZlk2QlpTM1BvSWJiVGZSQ3lCdHFiZE12?=
 =?utf-8?B?QlB3ZGNWRDFCMmFtdURKdWVsd2txZjQ1c0hyR2RibDFjdTZwaEdVNG5KMkRl?=
 =?utf-8?B?STlwYjdqTHpGbGpobjNkZlB2cHpVejF1TzBWUnFlQ3lzYVUxZktUZnh5cnV1?=
 =?utf-8?B?aklQSmo1MFpDWHFRL1czcisrL0VOSGd0N1R1M0ZsY0FERVJVNUY5Um44VXdC?=
 =?utf-8?B?MnJycFBMeUJCTDE0alNyYUU2dWNYSUlZdWwxNVZEQVJRR2JTa2RHSVR3OTEv?=
 =?utf-8?B?Yk96R3hmMzEyeVBIdzlkbWpwZ3ZtU3B3SGdhNWgzR0EwcFQxKzY3NzdsdFY0?=
 =?utf-8?B?dGc3RVNkbG9qRHIyb2d4a3VLb0Fzbzk5ODg0VkNCZklpd2EyM2RYSFV2QUhQ?=
 =?utf-8?B?Z1lvdFQ0OEM2aWNwUHA1Qy9kM2lOZFE4VWkxU25BaWtLb2hUWnJrUXlMUHNk?=
 =?utf-8?B?dlBVeCtxTUQydnE2MERqNDAycWkzbk9jWk1VelhNdlA5Z3ZDcWNTY25ZNFBi?=
 =?utf-8?B?cWFaRGhYbFB0dCswRWF5cXFOZVRmeFk4d3JqTjVWVkVESEVTcko1T21EenFD?=
 =?utf-8?B?TUxlVTNZSnpCTzA4cFQzQmE2cUkyUEhNdnFtRUM2ZUMvU2FxM00vY09WL1hC?=
 =?utf-8?B?cjRMMlFYZG94cVFZMFRMdGhRZmNpSVl3bjNjUml6ZjdhY1drMGNGM3dybHpZ?=
 =?utf-8?B?NDRQbXMyNzVNTFBQTGM2dWhtY3B6MTlxUU5VUUREbjl6U21pakEzbU5BRTRQ?=
 =?utf-8?B?ZWIwcWdudW5Oci9HY3pmQWtmaVowSUU4V0dXOHVIaGZ3VkoxRWYrcGM3YTZ4?=
 =?utf-8?B?TG5KbExxKzFhaENhbTNYM0lCVTRmSW5vbUNhZTh0YzhYUUh6d1FMZ3E5amJV?=
 =?utf-8?B?TGZHcmRqSEI1VFZZR2hmYnlHTkw4a0dEVU1uR25HY1FZU3Y1aGZHVzhUT1A2?=
 =?utf-8?B?cWh3dVpzVlJGZTJ0aWNGQlJnYlBuMWVvU2xYZS8rOXBLN0MxNzJHbnAwM244?=
 =?utf-8?B?N0FVWUhnNFpkTGJRaTkwdFMzR0N4ZFd5T2VkMy90V3MveEljUm52MSttcmY1?=
 =?utf-8?B?dFBDUHpIUG4wWlBxd1pneGFnd0E0d2luMWpaUXhaaHVOdlNSOGNWaldlUVlv?=
 =?utf-8?B?T1dtck5sYnJkNW1EczBseEwvVVQzYWpVLzVYUUlzNjZpUThZRWVpaXFDL3FE?=
 =?utf-8?B?bjU5UGxLekFNTjJUVTd3dEcyTnBOdC9yNWprMDZNNmpyUHBxMSttZzJRdndX?=
 =?utf-8?B?ZGFCUmpENDh0c2ZFcHp0dG1WRDYxL1grMFdkTzBQR3cxYnBVTXF4Q1N2VjZB?=
 =?utf-8?B?bW9IM1ZZN3pGaUZ0VE5pbFhlQWVJaWw2VjBLNkFUck9SNTZZc0R0Wk9kTlJX?=
 =?utf-8?B?T0lCdm43UDl2anZPUkFzSURSMHZTcmJtdmNBYnl0UU8wZHIyekkwMkE4Yk5a?=
 =?utf-8?B?ZGpzdWlrTTk5UTJmeFo1c3FFUUJWV3VaVHV2cWV1TnhDbmE1S0lYeW5xS3JB?=
 =?utf-8?B?bUd0Y0xTVnZtVjRrQzdleU15RlRINHZ0VVU1OW9pdHF2WVQ5UWtlaWo5RjJN?=
 =?utf-8?B?eFhtVmo5d0w3aFVhVHVHWnMzSSs4MC9CUGFkZm9KOVErUkFQa3FPZlZSRlBz?=
 =?utf-8?B?VGd3VG9UNGN3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YThaL215dExXbnkvSTdMVXViU2RuYmhERmJVZE5tOVpPK3JmdUlRR0Q1UHdy?=
 =?utf-8?B?SDdmOCtsUGpBenVjZUduQ1FJOXJYa0FYVGo2Ulo4bUZYUjgvMlN3Wk5UWXF4?=
 =?utf-8?B?YnYvVGRjNm85Vmhra0N4RS9TdHRsRlBjQXlnOVdZY01pUi9HN3hDa1g1OGxK?=
 =?utf-8?B?UTczME9Zbzd5ZDNKSVdYRWl4SGt1QVhpT0NLTVVGM3B6ZjNJbVpNZHZ3WVRv?=
 =?utf-8?B?Sm96eHgySnlrWEpZN29mYkdYWTd6eEh0WDYyWkFIL1R1dG1TUGpvelNYbVQy?=
 =?utf-8?B?RUl0cjJQK2NpNGx2MG1QaXNweWZ2elJOMXNtV0VRbUl3YXgvd3ozMHhPck94?=
 =?utf-8?B?cG5vR2d3MDNHa3VxcUZ0WnZaT2E4NFFSWVF5WUlpK3l4MEdKeitOK1VtS1JE?=
 =?utf-8?B?ZTMwQ0NZeHgwRjFzZVdaRThKU3A2eFl0MGRJTTZtc2Jsb1UyU1hHRUdrM3ZT?=
 =?utf-8?B?U0V2U3hvTS9rWEx4K3pjWHhRQXdXeTJyTVdpdWp5T253VDFCWTAvTVU5OTNl?=
 =?utf-8?B?MG95ZlZsV3dRNkcvcWtYMGFBOWQ4MEUxLy9nUm8xT1I3a2F1dElPaWpxQzEr?=
 =?utf-8?B?STlxdXV4YnR4MlFBcEZNYnRGejdkTTJZYytuY0NEeG9tL2puTnRJalFsYjZ2?=
 =?utf-8?B?cVBFSGk0M3RybWdOSjBDOHVmVGdMZU91TG51aWkreGJJNTFHTXBLak1QREFl?=
 =?utf-8?B?UldLVy9pUEpjY3F4UERucXF4YjNad0ZwNDgwV0dSSDNrQ3hUbHhSemZscTZq?=
 =?utf-8?B?SW5PVGdNREJPd2ZmQXVMNys2a2N1Nk5qVFJJS3Vwd2p0aklWT2laQUYwV2Jl?=
 =?utf-8?B?Z05lSVJDbVJLUTViNUt3dnJXUWN1QnZvSXBmL2FRMDRzV1NFZXhQNXpKck11?=
 =?utf-8?B?b2VFaTJhV1JHcGw1Q2FtcEhRRERrcVYxMEZUTjRGVTVCMWsyb2RtcjZDN2Vm?=
 =?utf-8?B?aEptdEVibmtLYWNFa2p0Wno4aWN3Y3dHR0FVYi9vYjkwdzVzWHdaeWFxOHIz?=
 =?utf-8?B?blN5bUpsak9Hdnl3SDVrMGVSNE1ySS82eCs5VjRhb2lDVkpNclhqZ2VTZ0dT?=
 =?utf-8?B?L1BhYVJlWlVJY1hBU0hIRUY1N0NlQllXd2h0WkdkTWlxTVR5NjBza0JyWjF2?=
 =?utf-8?B?UXRNTHkyK051Zk1lcnpaVjltMVJFVEJUcG9ZUGhjSjd4ZFRqMmZvYXJoNUp5?=
 =?utf-8?B?VTVzSGhHODI4dmhza2EwUElwNmFWTEV6ejc1aHd1NzMrN0QrSjVMbDhZN2tQ?=
 =?utf-8?B?c3h2Qi80YnVqd0VmTnh2dlpGZVFFaTJLTkgrQzk0NDdHQ0NHYzFVVXJYZmdh?=
 =?utf-8?B?STkycjdEVHcwWUoxSy9vWHN0RVNBQ0lyR0FuNXNTZE1hOWRNaUd2Si8veVAv?=
 =?utf-8?B?YU12WVVPRytPN1FhK2gwUnJFZ1YwcmpJa01McjFZZXpTWGR3R25Mbi9pOW1J?=
 =?utf-8?B?c0cvUUJTYjA1VHBmREViaGIwMm5KUWZmRTRtenRLQlkxaWtzTkh3TDl6Y3dC?=
 =?utf-8?B?R3E2TTR2cTY1NzhabHVpRnBFdER5QW9QcjgzYS9WaUNvYWIrYXphUk41ZGd6?=
 =?utf-8?B?WXV5WXBITTRzK3dtaE4rQTdqY2JsdGZBMmVyalRoTUgzMEo4TERKeDAzK2lh?=
 =?utf-8?B?RERLbGtZVEg0L1Y5S1YzMFczOWJvNDEwL3ZCaUtwQWtEQlVBYlcyZFdMaWdY?=
 =?utf-8?B?ZjhjRW1udlp4cG55S1hlNEFyTUNTRm01R2E4NWVZRzJXVGJNcGt4cGNkRnhs?=
 =?utf-8?B?NTlrTFpJM0Nlc2trVVNFajBGbXd6Mmpabmh2cjlldVNMZVJySnJVbHdEeG45?=
 =?utf-8?B?cjZBcXQxeWVCN0kydjQrMFJoYlVNenRoMVlQU2p6K3FGdUVCbGFWQkE3Kzk1?=
 =?utf-8?B?M0xiWCtwcDBYTXRsTDVoNjlzRVI0Z3R0NzVpVVdwVzJOTml3K1FpQVJYOW84?=
 =?utf-8?B?Q09va3hoL29HS20yV0JmVW5udkk3NDk4VEdaQ1R5S0I3THQwTHBTY2VOSzJ5?=
 =?utf-8?B?N2orTHg0bzZOVGt5Wk4xRWt4c0ovV1h4L0Nsc3gwdmJpcW5FT3FSaTF1ZzlB?=
 =?utf-8?B?a25OUlliV0xaU2lOL0I2SG9vVTZMWVBwV3hmenBsdG82bTdBZ0JYeTQxSGor?=
 =?utf-8?Q?JV4xX3n6Sz5Pj2IH3TcHXLWX8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83190b10-fe64-4f59-3219-08ddeae492fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 12:22:39.5632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xZwfAnxxfFPN691+7oPiNptiL9U2pULD7SlTwSHfqYdPEfw3l3Jfm7DC5suvM98Yr11XvzPhD6NsmZ/GGj7A5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

T2sgZ29vZCB0byBrbm93LiBMZXQncyBqdXN0IGlnbm9yZSB0aGlzIHBhdGNoLg0KDQpUaGFua3Mh
DQoNCi1NaWthLQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwg
MyBTZXB0ZW1iZXIgMjAyNSAxNS4xOQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBJbml0aWFsaXpl
IHBoeSBhbmQgY2ggdmFyaWFibGVzDQo+IA0KPiBPbiBXZWQsIDAzIFNlcCAyMDI1LCBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBwaHkgYW5kIGNoIHZhcmlh
YmxlcyBhcmUgcG90ZW50aWFsbHkgdXNlZCB1bmluaXRpYWxpemVkLg0KPiANCj4gVGhleSdyZSBu
b3QsIGJ4dF9wb3J0X3RvX3BoeV9jaGFubmVsKCkgaW5pdGlhbGl6ZXMgdGhlbSBpbiBhbGwgY29k
ZSBwYXRocy4NCj4gDQo+ID4gVG8gbWFrZSBhYnNvbHV0ZWx5IHN1cmUgdGhhdCB0aGVzZSB2YXJp
YWJsZXMgYXJlIG5vdCB1c2VkDQo+ID4gdW5pbml0aWFsaXplZCBsZXQncyBpbml0aWFsaXplIHRo
ZXNlIHdpdGgga25vd24gdmFsdWVzIGFzDQo+ID4gRFBJT19QSFkwIGFuZCBEUElPX0NIMCwgcmVz
cGVjdGl2ZWx5Lg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsX21nci5jIHwgNCArKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiBpbmRleCA4ZWE5NmNjNTI0YTEu
LjQ1YjY3YTM3MTZlOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiBAQCAtMjE3NCw4ICsyMTc0LDggQEAgc3RhdGljIGJv
b2wgYnh0X2RkaV9wbGxfZ2V0X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
LA0KPiA+ICAJc3RydWN0IGJ4dF9kcGxsX2h3X3N0YXRlICpod19zdGF0ZSA9ICZkcGxsX2h3X3N0
YXRlLT5ieHQ7DQo+ID4gIAllbnVtIHBvcnQgcG9ydCA9IChlbnVtIHBvcnQpcGxsLT5pbmZvLT5p
ZDsgLyogMToxIHBvcnQtPlBMTCBtYXBwaW5nICovDQo+ID4gIAlpbnRlbF93YWtlcmVmX3Qgd2Fr
ZXJlZjsNCj4gPiAtCWVudW0gZHBpb19waHkgcGh5Ow0KPiA+IC0JZW51bSBkcGlvX2NoYW5uZWwg
Y2g7DQo+ID4gKwllbnVtIGRwaW9fcGh5IHBoeSA9IERQSU9fUEhZMDsNCj4gPiArCWVudW0gZHBp
b19jaGFubmVsIGNoID0gRFBJT19DSDA7DQo+ID4gIAl1MzIgdmFsOw0KPiA+ICAJYm9vbCByZXQ7
DQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
