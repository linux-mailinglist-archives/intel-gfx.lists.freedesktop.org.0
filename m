Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMfwOSPmgmnNeQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 07:24:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CB3E24CF
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 07:24:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7D2110E1F9;
	Wed,  4 Feb 2026 06:24:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KFDhMKel";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC86A10E1F9;
 Wed,  4 Feb 2026 06:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770186272; x=1801722272;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qvt0WhqzDUv0HzDGWQ6UDRC3uxN6PXi2JxjWBKiiObA=;
 b=KFDhMKeli0Pm5oTVfPsPLTP392KL+c3kIkOHAIYWGtSELHWnQtMs5CjK
 oeRsQeHs1U9cYX+oP9UuLJuAvkuK6RPz55ckywnS2CFeicrmVnUepom4E
 QnYvKerKBRxQgLlQ6Elr1E8YimBejRrejz/fZ7gQ14z01czt4L6BY4IkY
 pImhjB7suJRa03bekUfSwT0AWzUJp1/IUKF7N02tcaeq+k/EveFmOefhf
 9AqcaD8xxswcFpKRZbiEp4/Ntqp8O0WoQ05RO953ZJjwEynT7zQha9rs7
 fI53VxmqrlYETEiEwic3+4D0ejX+S9bdSgLU0a1Wy8lvhWBkIms2uJN7n w==;
X-CSE-ConnectionGUID: edhdMYQ7SxuRTuZ89Zx5yA==
X-CSE-MsgGUID: ViR5rld1Q3KvIITTeuYn7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71426533"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="71426533"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 22:24:32 -0800
X-CSE-ConnectionGUID: VeizD8PyTCyTqwfSh3SaAQ==
X-CSE-MsgGUID: G8fpcUvbSNWxfidssvalgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="214236240"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 22:24:33 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 22:24:31 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 22:24:31 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.22) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 22:24:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QGZ1iIjsgzcs4yfucPkMfNAwWtizR5Nb3+F4pIAS0PSX3XI0b/+ouJK4qoXrieOnpiOIU7OQbFUfZg4DfM9Bo7LSpKziEBl+PXJDIzYV6dV2CpbSvBYNZQjW4WGbc2nO5YW0YuuB27gEAozv2jrxNatARzmdmKIPR005dPKvQRk7wZ3kegACBzowp9qhdmNzFG8jK36B2iOA32wid9QBv2n/4N4xdL4iOrDJ2el1Y/9c96mlFRc78FJ9JLrBx5HgR1IRcXhhGBYazHDCdLevwIKuvx+FzVslK407T9+NF6anUPzoeqeFtcPAPL6ic027RpThAuSANRUKTXF7RnailA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qvt0WhqzDUv0HzDGWQ6UDRC3uxN6PXi2JxjWBKiiObA=;
 b=eVDc/pzzSlK8DTQgcnnJZ3FvedE45bT5iT30DkfFS6mrY0nGqf7CeDluZdZHyO4iKWTNUr9pZ2lC9z3xmf6iK87X/QNj0RZPnbKsGEkKgggVaVd/VH7dMA2TGE8U9jLIAKEleqWNIKe/+rVMBQkN05QSGfCDXiE16gzz/vZFQ717BuXlyhM67IQp/GSstHJivzdRdr5yGvWadV6tmLsbcoV9zxwPIOYjQu1bmdyR8NPJJH2pYZ49OsCGEAHbMqnLsNd6RcrCugAcEgom/MlQSKeN7NHfjUYadJzyapvJ53XdvYnvN213v2XpAMs0Yfzzqxc6zW3E4q7VQ2ZMy9NRug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB5797.namprd11.prod.outlook.com (2603:10b6:303:184::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Wed, 4 Feb
 2026 06:24:28 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%2]) with mapi id 15.20.9587.013; Wed, 4 Feb 2026
 06:24:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Grzelak, 
 Michal" <michal.grzelak@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>
Subject: Re: [RESEND 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
Thread-Topic: [RESEND 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
Thread-Index: AQHclZW8gQdLz5c63EWaq82Vpx4TsLVyEqeA
Date: Wed, 4 Feb 2026 06:24:28 +0000
Message-ID: <700f3028d036c3fd887a1ed7dfcc30d76f711a64.camel@intel.com>
References: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
 <20260204050250.762718-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260204050250.762718-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB5797:EE_
x-ms-office365-filtering-correlation-id: db7def2b-db7a-4897-6507-08de63b60d02
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?amw4WDRNTXFXNmdJZEJseVR6bHNzWjV0cEtvRHZSclhDaHRUd3NMcGxkK0F3?=
 =?utf-8?B?cEpYOFE3L0JDQ1prb2Y3RVlZVzE5QVU1MVpCNWR3VVMvaWU1eWQxamtpSm1L?=
 =?utf-8?B?UldDaGt1UUdsU2ZSajRyeTFJVElWKy9PeEdVOWJ1bVpoWjdDUEttTWx5d0Ry?=
 =?utf-8?B?Y0cvTWdtK0tYOCtDYzZHeGRUK3BXcDZRaGlLeDdVV2JrOE54Tm5NUzVuVEJx?=
 =?utf-8?B?RHZVU0ZYbWwybmFyQTV4ZnVXYnR5NFQxSWtFYnF5cFNrdndWUDhuL01wYkJ3?=
 =?utf-8?B?TlN0WUZXeDVlbkUvb0QxVE9YYTFCOGc3TzBYSXV6aHM1U2FIRWNYMEtBZ0x1?=
 =?utf-8?B?cGhGYUlvcFp2SisvdnlvUldlM1I1bGYxeHhPVDhGK2ErVGxkcnd0anJMTG05?=
 =?utf-8?B?OUhSSFkrUVgwSWZ5b2F6a1kwWWFKUXJBcGZDaDdvZGV0OU5mS0JlWGx4OEZZ?=
 =?utf-8?B?eXF2djFjZUJBRmZURlcyT1NndnNqZFh3RFM2bXl3VzYvN09pQnUwVG43QTln?=
 =?utf-8?B?anJlbS9XVUhWc083SlI2cDN4KzVlNGpMZFFGcjZuTDlFdEpBOWxvSmFSOW10?=
 =?utf-8?B?anYwNUFnQkNtbjAxaWdwM3JNdXZ6eUEvRmdyM3FlZXk0Sk5KNnpHODVtb1Nq?=
 =?utf-8?B?OXpJNzhHWTdHZ3A4WkhxSm1ZaFo4MWlxdjVBaXNyNE4zV3VaS2hlQzBXbmtD?=
 =?utf-8?B?WUZjdzQyN25UQW5uakFyZVZ6Q1E2WThPR09UWThNcFdVelVQeVBKRWZMWFRD?=
 =?utf-8?B?YjJleVdVbjVZem5WQ2d0MTAzV1lUc2Q3OE9OeTludUkvc1l5cTNhK0xDTWpw?=
 =?utf-8?B?WS9CUXB2dHhlVDliMnlVakdqc3lxM09ZWlNUdHNOam9Fc1hiMEtrdDFuNFdK?=
 =?utf-8?B?YlBFL0RHdTl3Y0xVL2RiMFdXT0VpYnNoVDhqbXFEOTJqbk4xN3NaSEJPL3ZR?=
 =?utf-8?B?L3dBdm5IOUVaS3BQT0RjMGhlSEUxTjF4dTZ2SjRnTUhCdnQrOVRFdVFHMkdS?=
 =?utf-8?B?bzJ2VmhVdkYxbzBqbkdEQ3l6TGpqMDZ1OFJWalpsNCtBVXRpRTdZdm1nZjMy?=
 =?utf-8?B?WUVSVk83VmxaRDNmVHhsaVZKU0QrOFdmdW5qakozaHR3MFhRSW5QT25xT1Ew?=
 =?utf-8?B?ODBvNUJmNW5sVU5VLzV1QTRtbHVzQzg2djhWUTZ6QTd4RkFlZGFkWHVmdUNo?=
 =?utf-8?B?cEw2bXgvb2ZUYmJaRys3Uzg4ZFlyQjA0bkpRaWRuM0g5WnNySjgzY3U2ZTAy?=
 =?utf-8?B?RjJuc0NqbWEyMlhGeHIwN0dhU0IzUCtLWGZGSC9zODZGV2ZJL0NORnpPVVNy?=
 =?utf-8?B?WGtubG95ZnhkR1VxZFJnUjY3dW9GRGpqK3kzMTdldTVQY3ZVZ2tQcnZET21S?=
 =?utf-8?B?TW5CVjNja3BUWmZJSzRhVTNnWm5ocU5uNDFtZTF5WE9XRXRVOHNwOGR0bG5w?=
 =?utf-8?B?V2k1UjBVUndHQ3BWL1BnYlgzQkZYTmtNckV0blVzd2luQzlyNkJ2clI2a0N6?=
 =?utf-8?B?U1BJZ1FrYUF0QTJSWGNtSmRpQjJTU0IzK3JIMjFLWXVmY3B6OFh5YWtDa2Iv?=
 =?utf-8?B?eVdpckRLM3NOWlVYSU9ua3RpYzc4ci9tbTlOY0ZDMXF1aWlLMXhUMzRmcUdU?=
 =?utf-8?B?WjAyNitLb2dZckRQZjBjZmc2d1p2QVFzdnlGZEt1bVVUTFZhcW4xZTdmZkNw?=
 =?utf-8?B?cVkxMEdidWw3SWwxRGRUalc5bGo3T2lpVjV6SWFYbzlmclpiYTA2OVpCYWhy?=
 =?utf-8?B?bUlLMmN3clFZMkkvWm8zK0tCTmFhMVJ1QWJRakxBQW5tVEQ0MFkvRC9wUFZE?=
 =?utf-8?B?SFVndkNYVk9mUmtmQTNUQVFUdG91bkZFMlFyY2hVYjlZQmVCTVVHbGJybWhE?=
 =?utf-8?B?Yll3NUtsdjVDY3JKZjl5bEVjRnVHcUx2SnJJTDNUUGJMdU9pTzJHUUJqWFht?=
 =?utf-8?B?eHY3ZkxLVFp0RVpSeWJ6dmZPSm81dVc4cG5MNGNhVnN4Y1l3MzBVT3pJUHF4?=
 =?utf-8?B?QUsrZWIyVm81UEVNTUk5dHZOSWNHdlNRQ2ZYeUJjQjRrd0Q2b013aFVRTlNn?=
 =?utf-8?B?SjN4TjN3THRkaTFVVGRiY2tES1pkQzBUall0N1gyaitUTmdQTGdtZXpFTmRE?=
 =?utf-8?B?cGRaSElWU0xIdTVuUmVsYWllR2Z5aFhxRWtaTHU5K0tyS21MV0psbGtMdWJs?=
 =?utf-8?Q?Gtq06gAiZ0HDoI1qxh924Xg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S1cyNGJNdHZ6clEwR0grR2c1WXhNeDh5TDEraDdWSEF0WEtnUG1uMTA5ZXRP?=
 =?utf-8?B?TVFtVFdyK3FiTUZZb3ZNS3k1N3lvSmFNVmhZM3RBclBxT3R4ZW5uZHVBVXRK?=
 =?utf-8?B?enpHa1NKQzcyVUlDaVkyaEt2bmljMWNadStYZGV3Z3RGT20zTThtaWllZFNR?=
 =?utf-8?B?WGRFbzFEOVczUkpYVS96L3haMVFzMkFxYUg5dXlBWndtRE1hOWhPZnpIWUpJ?=
 =?utf-8?B?VGVKMmJlcWJLdmN3MXNoUXROc2FGVTVWRTk5V0N6bnlQSmlNOWpaNXNlc2FW?=
 =?utf-8?B?eFVqSjBKQUVwaGRwQ0xyZHF2UUhDbHJJWDhPUFRyOUNhczhMaGtjTHRVRktv?=
 =?utf-8?B?RFl3NHozdUJlUU5ZaGJVK00xUTd2TkNnWTVna3pDK25TL2ViTWgwVTZDZ3J4?=
 =?utf-8?B?bFlxVGRqanVVK3hSK2h1QlcycGlUU1NxZlhrK3JsUmozTitONGhkK3Z5VVZx?=
 =?utf-8?B?T1pwbkxsaTYvendyQkxxa2haMXY3UjRFU21aWUxTL3E3WWFPdDZ6dFF2QVp0?=
 =?utf-8?B?bDZQcUp2WUo1QmZ5Um5CVnZKTU8yOTdDckdWZ3dMNmErZ1NyYTBqUzFPakM2?=
 =?utf-8?B?YWdKNzBwL0RaUFEwNmd5N3JQRFVxTDlkQURPYStCY3llQXhyYTI1WnYxY1dE?=
 =?utf-8?B?bUJEeVdWdDVkQjkwOTdXSWZvOTV0TDdvY1IxSEtuMThRdUxveDJzRUpZNERO?=
 =?utf-8?B?TTA5aDE4TTlkZXVCNmVESG4yNjEyTFpXQk5IOWJTMnAvaDNVSzV4QXI2YUVU?=
 =?utf-8?B?bERWMkxCWmYvYW52aUc2b0RaOGZIbGZ2UElQcjZWU2xHUDE5alltYjNqK1I0?=
 =?utf-8?B?RVUvMnExenYxUm8xdmE3bUdwWk05YkZya1o5QkIrU1Zoa2pNVHJzR2JyeUVw?=
 =?utf-8?B?cXVkMnVqVTlQd3REREFuOUNwN0tHYk00TFl2b3U2NFpIckExejhJOEo2em03?=
 =?utf-8?B?VDJ1OTFhaXBSYU1CM2xyT09CMlZjbmJ6V1hmMmNZVm1LRXBUQnpodWlRUEhs?=
 =?utf-8?B?OWxTRmpMVDloSzBzSkFjcEJITXppVENIRE4zM3VjeU44R3JVeFYwYUlicS9Z?=
 =?utf-8?B?bElwL2V4NkNMWXlzdWxQQ2JGN3hWcndNN0FJZXhUTVQzNUtUa1NJK2x3T1F0?=
 =?utf-8?B?ZTcxYmM3TmFGbU90TXJUVVFBcm9ZRTFDeUczTGkzZ04yUEw3K2Z1aklCbml0?=
 =?utf-8?B?dnhwNUJteE1oeXNhaHp2MjJjTlVRbDBqMW8vc0grRGdPNG1CODJhcFVuR0Nu?=
 =?utf-8?B?L3hKN3h0T1Rra0FhSmJEYVc4eTc3ZWV3Y055Q1htWWFMREplczA2QkJTc2Rv?=
 =?utf-8?B?aTQzai8zK2hEWjJ4WXNYdHM3UjVzKzIrWlhrNE5wTjVVYmZwUGxGNURQR3NO?=
 =?utf-8?B?UG4xYmpKZmRxZnhTOHU0OW9BZ0tTYlorUERlYUNRK3haYzArN3R0UUY4djVr?=
 =?utf-8?B?eElTTVVNa3NybE5EU3QzU01zd0Z2MEZCZExvVHhFSjh5L3BJWFYxRnBvL0Jh?=
 =?utf-8?B?alVWaTNnVW0xNUw0d0c0cnJ2MjZmd085SEdFbWN0b3ZGZ0dLU2p5WkYyS09P?=
 =?utf-8?B?OUczVWtmU2ZXQ3ZXMWcvZzBmd3Z5cHM2Wm5PbU5WRkFZbFBMM1lvbjR2LzZ0?=
 =?utf-8?B?VGw1cXhGdWE4alBuUXJRU2MydGtQVDRaWHNKeGtkVURtQUttTFhSN1BsZnlk?=
 =?utf-8?B?VmxmWkRkbnlqSGNWZ0JYTmZoNkxSZERjOUQxQVdkWjFDR29LWWNwZE5JL1Uz?=
 =?utf-8?B?Y3ozWGVYUWZkOUVCRWNQazZWb2lrZHNsZXpOeXV1Yk5aRWJRdDNwUEJMTmxO?=
 =?utf-8?B?aXVPZldsZCtYVHNkSkVwY01yN2I3M0N0dGxsUENlbGRhZjhJVUV2akdiYytp?=
 =?utf-8?B?cWhsTkVnbVBFajlhTXpOeEs5bHB6dk9xUm9kb1NZSmtEMnRjUnpDK3QxOVN5?=
 =?utf-8?B?REgxSFpwSEZrd1ZWanE2bG5UWFQ2YTlsaGNDajQ1T09FenA0bUtsVlYrTmtx?=
 =?utf-8?B?L0JoMHFlVk5Hd1RWQ1E1V09wSEtNL29QSUg5RlVadHFwbnFZRGRMbDN4bXF5?=
 =?utf-8?B?STdCNUFaaHVIMnRaQUY4SDNBSEFaTjd1M29HNWdoZWdzb2Y5aUR4WFpiQ1Zl?=
 =?utf-8?B?dUVCbTc5TDkxQkNVeGxEMW01cFpGMmZQN1lIaGRSN2pvTFF4ck94Q0hWdUdG?=
 =?utf-8?B?YVNobW16UGZUWFBrRmNNd0ZVeDVJQWRNWlFwREk2YnpESUNDZEgwODA1dDNz?=
 =?utf-8?B?cEhMcXpsMGdaQ3ZIUjJWNFkxZWZlWEUwYmtpN2dqVWpzeEJIK0tVc2wzNXZv?=
 =?utf-8?B?SFVnNGVjMm5nR2lSWklaekxnYmwycElRREx5WHlKdzE5cHJWNzFJQVF3OGNi?=
 =?utf-8?Q?Sl9tGXCYwYZFt+mcGfS53At+NZSYG/STAAoAYp8vbUJzL?=
x-ms-exchange-antispam-messagedata-1: l2cpWpRCcRlEFSMNsfgc+/kJQTuUYNR93uw=
Content-Type: text/plain; charset="utf-8"
Content-ID: <577221967E313542AFA07E02492E483D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db7def2b-db7a-4897-6507-08de63b60d02
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2026 06:24:28.6606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HCnWHgyu6vzemPqb195KLK1LwChhP9dpGp5sS+LLV856eZHYuBZPE/1ipOnuMURlPellewODunD3sDpxuBXJ2HvW6tq4OB4o/X11zZ5fZqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5797
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 63CB3E24CF
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAyLTA0IGF0IDEwOjMyICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gQ3VycmVudGx5IGludGVsX2FscG1fbG9iZl9jb21wdXRlX2NvbmZpZygpIHRyaWVzIHRvIGFj
Y291bnQgZm9yDQo+IGd1YXJkYmFuZCArU0NMIHJlcXVpcmVtZW50cyBkdXJpbmcgZW5jb2Rlci0+
Y29tcHV0ZV9jb25maWcoKSBwaGFzZSwNCj4gZXZlbiBiZWZvcmUgZ3VhcmRiYW5kIGlzIGNvbXB1
dGVkLg0KPiBBbHNvLCBMT0JGIGRlcGVuZHMgb24gY3J0Y19zdGF0ZS0+aGFzX3BzciB3aGljaCBj
YW4gYmUgbW9kaWZpZWQgaW4NCj4gZW5jb2Rlci0+Y29tcHV0ZV9jb25maWdfbGF0ZSgpLg0KPiAN
Cj4gQWNjb3VudCBmb3IgbG9iZiByZXF1aXJlbWVudHMgd2hpbGUgb3B0aW1pemluZyB0aGUgZ3Vh
cmRiYW5kIGFuZCBhZGQNCj4gY2hlY2tzIGZvciBmaW5hbCBndWFyZGJhbmQgaW4gZW5jb2Rlci0+
Y29tcHV0ZV9jb25maWdfbGF0ZSgpIHBoYXNlDQo+IGFmdGVyDQo+IHRoZSBndWFyZGJhbmQgYW5k
IHRoZSBmaW5hbCBzdGF0ZSBvZiBjcnRjX3N0YXRlLT5oYXNfcHNyIGFyZSBhbHJlYWR5DQo+IGNv
bXB1dGVkLg0KPiANCj4gVXNlIGNydGNfc3RhdGUtPnZyci5ndWFyZGJhbmQgYW5kIGNydGNfc3Rh
dGUtPnNldF9jb250ZXh0X2xhdGVuY3kgZm9yDQo+IHRoZSBjb21wdXRhdGlvbiBhbmQgYWRkIG1v
cmUgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIGRlcGVuZGVuY3kgb2YNCj4gZmlyc3QNCj4gc2RwIHBv
c2l0aW9uLCBndWFyZGJhbmQsIHNldCBjb250ZXh0IGxhdGVuY3kgYW5kIHdha2UgbGluZXMuDQo+
IA0KPiB2MjogQWRkIGhlbHBlciB0byB1c2UgbWluIGd1YXJkYmFuZCByZXF1aXJlZCBmb3IgbG9i
Zi4NCj4gdjM6IFJlbW92ZSB1bnJlbGF0ZWQgaW5hZHZlcnRlbnQgY2hhbmdlcy4gKE1pY2hhxYIp
DQo+IHY0OiBBZGQgYSAjRklYTUUgbm90ZSBmb3IgY29tcHV0aW5nIHdha2VsaW5lcyBiYXNlZCBv
biBmZWF0dXJlLg0KPiAoSm91bmkpDQo+IA0KPiBCc3BlYzo3MTA0MQ0KPiBTaWduZWQtb2ZmLWJ5
OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IFJldmlld2Vk
LWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5ncnplbGFrQGludGVsLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0t
LQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgNzAgKysr
KysrKysrKysrKysrKysrLS0tDQo+IC0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmggfMKgIDMgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuY8KgwqAgfMKgIDIgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdnJyLmPCoCB8wqAgMiArDQo+IMKgNCBmaWxlcyBjaGFuZ2VkLCA2MyBpbnNlcnRpb25z
KCspLCAxNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4IDdjZThjNjc0YmIwMy4uMDU1MTg0YTNjN2Q1IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtMTUs
NiArMTUsNyBAQA0KPiDCoCNpbmNsdWRlICJpbnRlbF9kcF9hdXguaCINCj4gwqAjaW5jbHVkZSAi
aW50ZWxfcHNyLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX3Bzcl9yZWdzLmgiDQo+ICsjaW5jbHVk
ZSAiaW50ZWxfdnJyLmgiDQo+IMKgDQo+IMKgI2RlZmluZSBTSUxFTkNFX1BFUklPRF9NSU5fVElN
RQk4MA0KPiDCoCNkZWZpbmUgU0lMRU5DRV9QRVJJT0RfTUFYX1RJTUUJMTgwDQo+IEBAIC0yNDgs
MTQgKzI0OSw2NSBAQCBib29sIGludGVsX2FscG1fY29tcHV0ZV9wYXJhbXMoc3RydWN0IGludGVs
X2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJcmV0dXJuIHRydWU7DQo+IMKgfQ0KPiDCoA0KPiAraW50
IGludGVsX2FscG1fbG9iZl9taW5fZ3VhcmRiYW5kKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+
ICpjcnRjX3N0YXRlKQ0KPiArew0KPiArCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3Rl
ZF9tb2RlID0gJmNydGNfc3RhdGUtDQo+ID5ody5hZGp1c3RlZF9tb2RlOw0KPiArCWludCBmaXJz
dF9zZHBfcG9zaXRpb24gPSBhZGp1c3RlZF9tb2RlLT5jcnRjX3Z0b3RhbCAtDQo+ICsJCQkJIGFk
anVzdGVkX21vZGUtPmNydGNfdnN5bmNfc3RhcnQ7DQo+ICsJaW50IHdha2V0aW1lX2luX2xpbmVz
Ow0KPiArDQo+ICsJLyoNCj4gKwkgKiAjRklYTUU6IE5lZWQgdG8gY2hlY2sgaWYgaW9fd2FrZV9s
aW5lcyBvcg0KPiBhdXhfbGVzc193YWtlX2xpbmVzDQo+ICsJICogaXMgYXBwbGljYWJsZS4gQ3Vy
cmVudGx5IHRoaXMgaW5mb3JtYXRpb24gaXMgbm90IHJlYWRpbHkNCj4gKwkgKiBhdmFpbGFibGUg
aW4gY3J0Y19zdGF0ZSwgc28gbWF4IHdpbGwgc3VmZmljZSBmb3Igbm93Lg0KPiArCSAqLw0KPiAr
CXdha2V0aW1lX2luX2xpbmVzID0gbWF4KGNydGNfc3RhdGUtDQo+ID5hbHBtX3N0YXRlLmlvX3dh
a2VfbGluZXMsDQo+ICsJCQkJY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuYXV4X2xlc3Nfd2Fr
ZV9saW5lcyk7DQo+ICsNCj4gKwlpZiAoIWNydGNfc3RhdGUtPmhhc19sb2JmKQ0KPiArCQlyZXR1
cm4gMDsNCj4gKw0KPiArCXJldHVybiBmaXJzdF9zZHBfcG9zaXRpb24gKyB3YWtldGltZV9pbl9s
aW5lcyArIGNydGNfc3RhdGUtDQo+ID5zZXRfY29udGV4dF9sYXRlbmN5Ow0KPiArfQ0KPiArDQo+
ICt2b2lkIGludGVsX2FscG1fbG9iZl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ICsJCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19z
dGF0ZSkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9
ICZjcnRjX3N0YXRlLQ0KPiA+aHcuYWRqdXN0ZWRfbW9kZTsNCj4gKwlpbnQgd2FrZXRpbWVfaW5f
bGluZXMsIGZpcnN0X3NkcF9wb3NpdGlvbjsNCj4gKw0KPiArCWlmICghY3J0Y19zdGF0ZS0+aGFz
X2xvYmYpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCS8qDQo+ICsJICogTE9CRiBjYW4gb25seSBi
ZSBlbmFibGVkIGlmIHRoZSB0aW1lIGZyb20gdGhlIHN0YXJ0IG9mDQo+IHRoZSBTQ0wrR3VhcmRi
YW5kDQo+ICsJICogd2luZG93IHRvIHRoZSBwb3NpdGlvbiBvZiB0aGUgZmlyc3QgU0RQIGlzIGdy
ZWF0ZXIgdGhhbg0KPiB0aGUgdGltZSBpdCB0YWtlcw0KPiArCSAqIHRvIHdha2UgdGhlIG1haW4g
bGluay4NCj4gKwkgKg0KPiArCSAqIFBvc2l0aW9uIG9mIGZpcnN0IHNkcCA6IHZzeW5jX3N0YXJ0
DQo+ICsJICogc3RhcnQgb2Ygc2NsICsgZ3VhcmRiYW5kIDogdnRvdGFsIC0gKHNjbCArIGd1YXJk
YmFuZCkNCj4gKwkgKiB0aW1lIGluIGxpbmVzIHRvIHdha2UgbWFpbiBsaW5rIDogd2FrZXRpbWVf
aW5fbGluZXMNCj4gKwkgKg0KPiArCSAqIFBvc2l0aW9uIG9mIGZpcnN0IHNkcCAtIHN0YXJ0IG9m
IChzY2wgKyBndWFyZGJhbmQpID4gdGltZQ0KPiBpbiBsaW5lcyB0byB3YWtlIG1haW4gbGluaw0K
PiArCSAqIHZzeW5jX3N0YXJ0IC0gKHZ0b3RhbCAtIChzY2wgKyBndWFyZGJhbmQpKSA+DQo+IHdh
a2V0aW1lX2luX2xpbmVzDQo+ICsJICogdnN5bmNfc3RhcnQgLSB2dG90YWwgKyBzY2wgKyBndWFy
ZGJhbmQgPg0KPiB3YWtldGltZV9pbl9saW5lcw0KPiArCSAqIHNjbCArIGd1YXJkYmFuZCA+IHdh
a2V0aW1lX2luX2xpbmVzICsgKHZ0b3RhbCAtDQo+IHZzeW5jX3N0YXJ0KQ0KPiArCSAqLw0KPiAr
CWZpcnN0X3NkcF9wb3NpdGlvbiA9IGFkanVzdGVkX21vZGUtPmNydGNfdnRvdGFsIC0NCj4gYWRq
dXN0ZWRfbW9kZS0+Y3J0Y192c3luY19zdGFydDsNCj4gKwlpZiAoaW50ZWxfYWxwbV9hdXhfbGVz
c193YWtlX3N1cHBvcnRlZChpbnRlbF9kcCkpDQo+ICsJCXdha2V0aW1lX2luX2xpbmVzID0gY3J0
Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuaW9fd2FrZV9saW5lczsNCj4gKwllbHNlDQo+ICsJCXdh
a2V0aW1lX2luX2xpbmVzID0gY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuYXV4X2xlc3Nfd2Fr
ZV9saW5lczsNCj4gKw0KPiArCWNydGNfc3RhdGUtPmhhc19sb2JmID0gKGNydGNfc3RhdGUtPnNl
dF9jb250ZXh0X2xhdGVuY3kgKw0KPiBjcnRjX3N0YXRlLT52cnIuZ3VhcmRiYW5kKSA+DQo+ICsJ
CQnCoMKgwqDCoMKgwqAgKGZpcnN0X3NkcF9wb3NpdGlvbiArDQo+IHdha2V0aW1lX2luX2xpbmVz
KTsNCj4gK30NCj4gKw0KPiDCoHZvaWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJCcKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gwqAJCQkJwqDCoMKgIHN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlDQo+ICpjb25uX3N0YXRlKQ0KPiDCoHsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gLQlzdHJ1Y3QgZHJt
X2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLQ0KPiA+aHcuYWRqdXN0
ZWRfbW9kZTsNCj4gLQlpbnQgd2FrZXRpbWVfaW5fbGluZXMsIGZpcnN0X3NkcF9wb3NpdGlvbjsN
Cj4gLQlpbnQgY29udGV4dF9sYXRlbmN5LCBndWFyZGJhbmQ7DQo+IMKgDQo+IMKgCWlmIChpbnRl
bF9kcC0+YWxwbS5sb2JmX2Rpc2FibGVfZGVidWcpIHsNCj4gwqAJCWRybV9kYmdfa21zKGRpc3Bs
YXktPmRybSwgIkxPQkYgaXMgZGlzYWJsZWQgYnkgZGVidWcNCj4gZmxhZ1xuIik7DQo+IEBAIC0y
ODgsMTcgKzM0MCw3IEBAIHZvaWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVj
dA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCWlmICghaW50ZWxfYWxwbV9jb21wdXRlX3Bh
cmFtcyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpDQo+IMKgCQlyZXR1cm47DQo+IMKgDQo+IC0JY29u
dGV4dF9sYXRlbmN5ID0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192Ymxhbmtfc3RhcnQgLQ0KPiBhZGp1
c3RlZF9tb2RlLT5jcnRjX3ZkaXNwbGF5Ow0KPiAtCWd1YXJkYmFuZCA9IGFkanVzdGVkX21vZGUt
PmNydGNfdnRvdGFsIC0NCj4gLQkJwqDCoMKgIGFkanVzdGVkX21vZGUtPmNydGNfdmRpc3BsYXkg
LSBjb250ZXh0X2xhdGVuY3k7DQo+IC0JZmlyc3Rfc2RwX3Bvc2l0aW9uID0gYWRqdXN0ZWRfbW9k
ZS0+Y3J0Y192dG90YWwgLQ0KPiBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZzeW5jX3N0YXJ0Ow0KPiAt
CWlmIChpbnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vfc3VwcG9ydGVkKGludGVsX2RwKSkNCj4gLQkJ
d2FrZXRpbWVfaW5fbGluZXMgPSBjcnRjX3N0YXRlLQ0KPiA+YWxwbV9zdGF0ZS5pb193YWtlX2xp
bmVzOw0KPiAtCWVsc2UNCj4gLQkJd2FrZXRpbWVfaW5fbGluZXMgPSBjcnRjX3N0YXRlLQ0KPiA+
YWxwbV9zdGF0ZS5hdXhfbGVzc193YWtlX2xpbmVzOw0KPiAtDQo+IC0JY3J0Y19zdGF0ZS0+aGFz
X2xvYmYgPSAoY29udGV4dF9sYXRlbmN5ICsgZ3VhcmRiYW5kKSA+DQo+IC0JCShmaXJzdF9zZHBf
cG9zaXRpb24gKyB3YWtldGltZV9pbl9saW5lcyk7DQo+ICsJY3J0Y19zdGF0ZS0+aGFzX2xvYmYg
PSB0cnVlOw0KPiDCoH0NCj4gwqANCj4gwqBzdGF0aWMgdm9pZCBsbmxfYWxwbV9jb25maWd1cmUo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hbHBtLmgNCj4gaW5kZXggYzZhNGVjNWI5NTYxLi5iNjk4OTc5ZDFmMTMgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+IEBAIC0z
OCw0ICszOCw3IEBAIGJvb2wgaW50ZWxfYWxwbV9pc19hbHBtX2F1eF9sZXNzKHN0cnVjdCBpbnRl
bF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+IMKgdm9pZCBpbnRlbF9hbHBtX2Rpc2FibGUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCk7DQo+IMKgYm9vbCBpbnRlbF9hbHBtX2dldF9lcnJvcihzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKTsNCj4gK3ZvaWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29u
ZmlnX2xhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCQkJIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gK2ludCBpbnRlbF9hbHBtX2xvYmZfbWlu
X2d1YXJkYmFuZChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+IMKg
I2VuZGlmDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5k
ZXggZTJmZDAxZDFhMWU0Li4yYjhmNDNlMjExNzQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTcxNjMsNiArNzE2Myw4IEBAIGludCBpbnRlbF9k
cF9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0K
PiDCoAlpZiAocmV0KQ0KPiDCoAkJcmV0dXJuIHJldDsNCj4gwqANCj4gKwlpbnRlbF9hbHBtX2xv
YmZfY29tcHV0ZV9jb25maWdfbGF0ZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ICsNCj4gwqAJ
cmV0dXJuIDA7DQo+IMKgfQ0KPiDCoA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdnJyLmMNCj4gaW5kZXggOWQ4MTRjYzJkNjA4Li4wMGNhNzZkYmRkNmMgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBAQCAtNiw2ICs2LDcg
QEANCj4gwqANCj4gwqAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0KPiDCoA0KPiArI2luY2x1
ZGUgImludGVsX2FscG0uaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfY3J0Yy5oIg0KPiDCoCNpbmNs
dWRlICJpbnRlbF9kZS5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JlZ3MuaCINCj4g
QEAgLTUyMCw2ICs1MjEsNyBAQCBpbnQgaW50ZWxfdnJyX2NvbXB1dGVfb3B0aW1pemVkX2d1YXJk
YmFuZChzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gwqAJaWYgKGlu
dGVsX2NydGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpIHsNCj4gwqAJCWd1YXJkYmFuZCA9
IG1heChndWFyZGJhbmQsDQo+IGludGVsX3Bzcl9taW5fZ3VhcmRiYW5kKGNydGNfc3RhdGUpKTsN
Cj4gwqAJCWd1YXJkYmFuZCA9IG1heChndWFyZGJhbmQsDQo+IGludGVsX2RwX3NkcF9taW5fZ3Vh
cmRiYW5kKGNydGNfc3RhdGUsIHRydWUpKTsNCj4gKwkJZ3VhcmRiYW5kID0gbWF4KGd1YXJkYmFu
ZCwNCj4gaW50ZWxfYWxwbV9sb2JmX21pbl9ndWFyZGJhbmQoY3J0Y19zdGF0ZSkpOw0KPiDCoAl9
DQo+IMKgDQo+IMKgCXJldHVybiBndWFyZGJhbmQ7DQoNCg==
