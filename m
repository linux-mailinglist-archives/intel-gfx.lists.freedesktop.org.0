Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AO3hCCx8sml/MwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:41:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D92F26F128
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12FDE10E448;
	Thu, 12 Mar 2026 08:41:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W4dOEP3Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B064210E448;
 Thu, 12 Mar 2026 08:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773304874; x=1804840874;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uRkaUCoUqtduPDgB5+jWs+w/QSCppV4yltv0EO4rp2Q=;
 b=W4dOEP3QawEXMKEvQ1YQWb7j8kg1jQIlygPI4T/1s3/ZZkYGghdAZzVt
 JzZ3kx/0qknouhpZiW7YdLB77xohLvDV4aphJxMl0XdFgEFDOamC/zqoA
 KqB2bW5aMSpPiTpnn+huLC8yJAWOyXm+fkvbPQBxrol3w12lEOwIpqdGM
 JqQyYMfNbv9R+dgnrusvmjqtX2Btwl0ZFtqI3ztKRtS9rqr2da+FzEMFR
 daQ7wPSgADfb3iS527EI7Lk6EacM0WMmWT575hvPd6qWOe7muSwF8wkQ0
 CtMLyb0vQetRogCFqjBGZaZdCyjbBI1lbiV0cIr/4Z9yjNHRzQWR9Hih2 g==;
X-CSE-ConnectionGUID: oEKd585vTJCXhiSmibnUGw==
X-CSE-MsgGUID: 1Mf4Bk5jSMGYKo9rODH0Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="78280513"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="78280513"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:41:13 -0700
X-CSE-ConnectionGUID: xsW6oaSVQoaYfSmcLmAUPg==
X-CSE-MsgGUID: T29EWtILRZCmeTc8oev4Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="243774664"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:41:13 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:41:12 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 01:41:12 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.37) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:41:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QR1h/ly9BMZJ6X1wq7ccEi2zgMl6+kAgEAdLj5dBKy8gxfe4FpFvuO47hXHmRZzk0lgl/iL64XXi2TAI5awp/spIbFpPBSGC2n7DWYV6qWX8zYUkr/U8FStHwDbPP452Mid/r4Idcluafmb7zEM5RNeE+bGftVzo7pNCMzZxeXVwGw+fiKEnio+irWlXiti1YBDisSvxHUY758V4zfIy57OX7qnLm/jnETqFyiv7O1CFr95LI2N87DFFYjpEoVZR2pTKjgP3w9jWA/NTa1hKlIzsgfntibLWUWF6IeUkWvliTNNCXqN8enQ30fJLgsF7Wse9QIik5b/MS6T3uUXkng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uRkaUCoUqtduPDgB5+jWs+w/QSCppV4yltv0EO4rp2Q=;
 b=uGNk1tdEhm9Fn+eGHN2w6SgEzhTQUnC09E3tYQyR1OCUzGvTq1EbMi34NAMrz79GCR8rBiubj0vflW23p4NIbGXaJTlHhCwFWSIX2cah39GyOJSLj21GMP3+2wGGfIjYyfRKYRyf7v8hRDH4lMKSrQAM4UxMd+4hnVG+nKj6hDk8NGluZoV+qPhbFCvFE2x/bKPsOV9euErGH0mb6OsbJnLFgQK2cxD3ZQK4FywScmPTA9NQBkIPbQrpib6LYDCivEq6/avHSiR2uzw+C+pb+pj3dGMAYX4K31BF6xVu/SDDsv5JfJbbcaXyjBLutITwWQqwuBvRCmFaU8JUsa9u9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH3PPF8B755DBFD.namprd11.prod.outlook.com (2603:10b6:518:1::d36) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 08:41:05 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9723.004; Thu, 12 Mar 2026
 08:41:05 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v7 0/3] Panel Replay BW optimization
Thread-Topic: [PATCH v7 0/3] Panel Replay BW optimization
Thread-Index: AQHcseFmG2ibrE0UzEOcgc7A19D7FbWqij+AgAAI1QA=
Date: Thu, 12 Mar 2026 08:41:05 +0000
Message-ID: <DS0PR11MB80499A087C5EAF931B58F491F944A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <07a6b5ed17b3781aa6f769d92b8409d3519c21ea.camel@intel.com>
In-Reply-To: <07a6b5ed17b3781aa6f769d92b8409d3519c21ea.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH3PPF8B755DBFD:EE_
x-ms-office365-filtering-correlation-id: 1ef6ed1c-ebe4-4a5d-c829-08de80131959
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: XMzjCjIIo6zv5BZ8oOHS7S6rqG8/+zxX93vrIN530JpfpgKqBac8JisXU5UqF5HTLWNr0Lb5kRrqUO8/ssK/pT1hg1xBuUoL7UmCkyek+5SaXsMHwCj+7xyUcjsnSG8Bvi44BhJ3w+E0NkI4mQmOh6MT2oFYKlpizdLn+Lw0mm5LSWUFYx3wlAgZeozwrSrCQqHDn+GQ/KETM55kcJSso+ec/QwUEz4PF3BNDaEJYyNFmF4NjMWP5hG6B0c8Hz8+15ohH8/NtM0B0VL41Uw52EmSBvXAHfyL0719bTsuQMalPh9MZXOlwwkRWexHmSkjIUQ6jiQP8DqZAWE6FjuAYctagYrD+l6pUCErhDKm4xW0cAql3qtrl0H/1UO9u/R4dNIBIVNgYz+NjG0f67z2S+cAHWoKUdFSbrhJ06365d6Ey0JXKQ2V8eBwqAMbDfpUA9G5QC2AgxH+3Wfs5zpGF4pMLKLzpAYJdpghEf7nZGHOrJ4j1JPK34osJF7elRa7nObHhJol0Kz/CFFtYhjlfjhiduqFPDHCF63YfUZK7AdZOq4olCXSW2BOOQs/VEKMTPk3vfokcFyzeUbHGtxXU3O+fzpImM1dhHXaLzNgHgrcSO5EtIcPTboDI3xRKkWgaaJbQ4NYYRZmlKUkqFS6qh65eN510Z06zq3FXulNkUeohVdFvRdlnLD3Tf47szslKhhVgU5M5d2+GwmjN856+wdrn/kalR1vXXUYMv9SlTA1gTcJHlTVsnXbj/JDt06AMAwyTrW0l+TitMw3B60ZJnDaLOsiYfL3xQSTHtPiPxM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T1RDejZNbTcxT0wwL2dRNFVJalN4Tzl4bDhDbWl4a1RnNnJ1bkNlS3ZOcVE1?=
 =?utf-8?B?UDl3RHJPWWxoWE1aWWV3bjJiTUxvZmJYVCtvV3FPajFsM1RHOTJoSFlHQ21o?=
 =?utf-8?B?aEhuOGhLd2ozYzRraEZjaC9MTEtlVzJwM3lxVm81NU1laUU0L2tpaXl5VUdq?=
 =?utf-8?B?QnpJM1JIb0RTWERjM0xLMUZKNG0xZEg0ZE9Sdy9udS8ydUZYVTl1TlVnVC9D?=
 =?utf-8?B?SEZndUlCVEFBZFp1TWI0T2pzeEd4VndsRlk3ekp5SlVqQ0c5QWxZckJ0cUZt?=
 =?utf-8?B?N3ovN3pUYmF1TW9ZWTNkZnpVditmYVZDY1plWGJEVlBNSFRDK0hWYXJpZjZ1?=
 =?utf-8?B?N1dDNHpXTUwyRmRRS2ZkbVV4S0U5elc3V2YrQThNR1RUbk41d2NPMFZranFU?=
 =?utf-8?B?NE51UzlucWl5M0xoc1RkVUhEZU1vTXY1Rjc0Sk55K0YzRVF6MVk4SUJNS3NP?=
 =?utf-8?B?TFl0QzYyTG9mdE5rNzc0SjRrb2lKczBGcVk1andWMmhub0FoTlNwK3VCYmtD?=
 =?utf-8?B?SElHclRwYksvamNYTVZjWHBsd0lRQWJLaXRMR0JWMlVUMmhBSk9hMzRMbjFo?=
 =?utf-8?B?WTVFRk9SdjFySTBPVnVCQVBsZ2ZXZzJBL3pad1hFMVlDUWV1NkJrRHdCNmQ1?=
 =?utf-8?B?YmdBS3BqOHVRNXc4TlZJOThFR1piNFE2Qko1c2F2UFcvNVErOXBMMVRCeFlW?=
 =?utf-8?B?NXV6VC8yL2docks2RytZaEh3d1ZIb2dzRVZWaEVRK1laUGc5eUQxNXJ5eCtZ?=
 =?utf-8?B?YVZxVlRGNE1BbEZVZXVvNURwa0U1MzNjaUFVNHJqNE15YmwrZFJwcEpzNTVo?=
 =?utf-8?B?VVhMd3BBVUJheFcvd2dWUmtYT0dxVlhhZndudm84bjJ6TkJjQ09QSExQUnZK?=
 =?utf-8?B?TERUd3piWGVFbXpHNVppTWNPa0ZyWWFOell0UUZhM1NBbVFFOXJGTWhqUUJT?=
 =?utf-8?B?eUJ6ZnR6ZTQzTnZyS21MOUhPcTR0RzdTZGQxelNPMGNqbG43R2ZUMWg3c3Jm?=
 =?utf-8?B?RnkxdFpUbmcvZjFBek9odnFRcGxOcnlCVEFIQVRQY0g4SmJNNlc2UzZKcHlz?=
 =?utf-8?B?TGRWR21JWFNGbVlsTGlOYmJkUmRPMU1aL21kOVpITi9BaUIrcXZHZ2oweDl4?=
 =?utf-8?B?b1ljdXI3cDRRQVNvVDB3QVh0Y2xtbjZUcWY2V09RQmhQUExkUkViTnRDaFRr?=
 =?utf-8?B?ZlI2OFpsOWpzd3ltNXhDaC8rQ0JhbmZ2RmQvTG9KczIzRUVxRm5CdTVvYnZq?=
 =?utf-8?B?ZTZTRnFrTTl6QnZlQW1lQkNYSWxzdDdBaVhLS01IZG0rYnAvSXhwaHNKMlRY?=
 =?utf-8?B?empzdE8wVlBXbkNzNFpKVEhzeUV0Z3lOUGdvZWZOTzdwZDRtdzJaZXZVWnFX?=
 =?utf-8?B?RzZoMmZBYjRPSTFvcjdoM1VWMjZGSHZkSnpxUVppNVRoWUpCeis0cER5b2RB?=
 =?utf-8?B?bkpUZE5IU0NPc3l4Uzh3Yis3eGphdFJNTSsrRllBMGZvY2V0MnFBN01JV3hM?=
 =?utf-8?B?TXR4V0dBdFBIcCtrWDRMUU9maS96OWsyVVVKYmhRSklXUk5SLzdlNmdLbVVB?=
 =?utf-8?B?RHdBV1d5d1ByRWtKNWJCYW5QK2IyY1ZPVzFMQUNVM2xzQ2pRRlFQdUZkNndZ?=
 =?utf-8?B?NkZ1MHBqUGU2UW45YStncXdNVFdrcE9OMlRmYytrMG53RERqbElseEdEQTJu?=
 =?utf-8?B?ejI3cStlR3Q2K1J3NDViek81Skpqd1BxdjUvbkpqVjNTRFI5WUlyV2Jpd0ly?=
 =?utf-8?B?b0ZiVm1ERzIvOXVxMEp4RU1OaUE4c2VzK25Oa2xHQU1YUVI0b3huZDFxc3hL?=
 =?utf-8?B?bDIvQVhiZ1dpbk5TY3FQazMzV0F3VE9wYjJLQjFxNWIrZERRTjBqZ0tqQWds?=
 =?utf-8?B?TmR2TjhRQ253MlRBcVBQODRJU1BCbUVWWXRwWm1QL2Z2TjlUNlBIc1JNWkJM?=
 =?utf-8?B?eXMrR3FUSXVBNXZXdEhDRjJrbzI3RkZHZ3RrdTY2eDlLUXlNSEVPUTRma3Nm?=
 =?utf-8?B?L1MrUU1LdW1icy84M1NvSHFmNS9oQ1dwNFVoOEFHU1Z1bUROVzNIMDUwVWYz?=
 =?utf-8?B?eXRVbk9OZnlpVUpUbTh2cGN4RDlUR2cwOFpsenR3Nm4yNWduRVJKckRrOHRi?=
 =?utf-8?B?VHlGZTFPYll6MUgrelFiZkQ0UHlNZ2hKTGV3Y1daOWNVQnA1WEh1ZFZBWUkw?=
 =?utf-8?B?ZkpkVWV6QUJvN0dUb2Y3Q2h2citTMEJFdVFsaCt0UGJ5bW42UVZ2Y0hYTVNv?=
 =?utf-8?B?Uy9ZSk4vMnU1eGQ3OFhtOUlQQUs0R2FHREtTSG9jSlNta09RL08yOURsYnhh?=
 =?utf-8?B?TU4yOSttcGN1WGk4cUtOY1F2V0dRaWRQVjVLT1VDTGRiNkFIKy9FQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vfadN6qk8QBrue9q0+3PA/ILkTTbsR+dNC2tuG1AJF2iId+7jjLpdvV1nHYwE8QXLr6H+9GWoonWhInvuUR4acE+aTX3Hy+gSelhIL4+WLaQcDTjGnz9Sp94l2N7RDeiQEpaIJ2Dw0yVRIxVLcc4qIDDISdA27s7Zcz3GEC8tWQfKF8MjfKSAXiZ/jUSEKhnTMAtk0yZtn8U6LbfhSvwJqtzPAd1hwhiKfQ7Izb/pgA1lZ1lT6WqSbB4lbUfw48x6HVuAXJP47C/vTR/nvyblWKbUTsfoN1swLozy8HuNuEQz7DKCy0whz1eOcGStbkzbSqSMvejEZ5hQS4Fq4N2rg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ef6ed1c-ebe4-4a5d-c829-08de80131959
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 08:41:05.0827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kdVboowgEeaka//q4ckXK3eF9UVQuiq7rdBmEdX1yQZJhrD3wcI0OMDQ830XzJcBkfgUnPeqIYKWZleBUY0J4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF8B755DBFD
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS0PR11MB8049.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7D92F26F128
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAxMiwg
MjAyNiAxOjM2IFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGRyaS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IE1hbm5hLA0KPiBBbmltZXNoIDxhbmltZXNoLm1h
bm5hQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE11
cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47IE5pa3VsYSwgSmFuaQ0KPiA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NyAwLzNdIFBhbmVsIFJlcGxheSBCVyBvcHRpbWl6YXRp
b24NCj4gDQo+IE9uIFRodSwgMjAyNi0wMy0xMiBhdCAxMDozMCArMDUzMCwgQW5pbWVzaCBNYW5u
YSB3cm90ZToNCj4gPiBVbnVzZWQgYmFuZHdpZHRoIGNhbiBiZSB1c2VkIGJ5IGV4dGVybmFsIGRp
c3BsYXkgYWdlbnRzIGZvciBQYW5lbA0KPiA+IFJlcGxheSBlbmFibGVkIERQIHBhbmVsIGR1cmlu
ZyBpZGxlbmVzcyB3aXRoIGxpbmsgb24uIFRoaXMgcGF0Y2gNCj4gPiBzZXJpZXMgZW5hYmxpbmcg
dGhlIHNhbWUuDQo+IA0KPiBHZW5lcmljIGNvbW1lbnQgb24gdGhpcyBwYXRjaCBzZXQuIE1heWJl
IHdlIHNob3VsZCBhZGQgb25lIG1vcmUgcGF0Y2gNCj4gd2l0aCAiRml4ZXMiIHRhZzoNCj4gDQo+
IEZpeGVzOiBlNjBjZmY0NTNiODIgKCJkcm0vaTkxNS9kcDogRW5hYmxlIERQIHR1bm5lbCBCVyBh
bGxvY2F0aW9uDQo+IG1vZGUiKQ0KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pg0KPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjYuOSsNCj4gDQo+IFRoaXMgcGF0
Y2ggd291bGQganVzdCBhZGQ6DQo+IA0KPiBpZiAoaW50ZWxfZHBfdHVubmVsX2J3X2FsbG9jX2lz
X2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+IAlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IAkJ
ICAgICJQYW5lbCBSZXBsYXkgaXMgZGlzYWJsZWQgYXMgRFAgdHVubmVsaW5nIGVuYWJsZWRcbiIp
Ow0KPiAJcmV0dXJuIGZhbHNlOw0KPiB9DQo+IA0KPiBpbnRvIF9wYW5lbF9yZXBsYXlfY29tcHV0
ZV9jb25maWcuIHRoaXMgY291bGQgYmUgZmlyc3QgcGF0Y2ggaW4geW91ciBzZXQuDQo+IFdoYXQg
ZG8geW91IHRoaW5rPw0KT2sgdG8gbWUuIFdpbGwgdGFrZSBjYXJlIGluIG5leHQgdmVyc2lvbi4N
Cg0KUmVnYXJkcywNCkFuaW1lc2gNCj4gDQo+IEJSLA0KPiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+
ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4NCj4gPg0KPiA+IEFuaW1lc2ggTWFubmEgKDMpOg0KPiA+IMKgIGRybS9pOTE1L2Rpc3Bs
YXk6IEFkZCBkcm0gaGVscGVyIHRvIGNoZWNrIHByIG9wdGltaXphdGlvbiBzdXBwb3J0DQo+ID4g
wqAgZHJtL2k5MTUvZGlzcGxheTogUGFuZWwgUmVwbGF5IEJXIG9wdGltaXphdGlvbiBmb3IgRFAy
LjAgdHVubmVsaW5nDQo+ID4gwqAgZHJtL2k5MTUvZGlzcGxheTogRGlzYWJsZSBQYW5lbCBSZXBs
YXkgZm9yIERQLXR1bm5lbGluZyB3aXRob3V0DQo+ID4gwqDCoMKgIG9wdGltaXphdGlvbg0KPiA+
DQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZHBfdHVubmVsLmPCoMKgwqDCoMKg
wqAgfCAxNyArKysrKysrKysrDQo+ID4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9yZWdzLmggfMKgIDEgKw0KPiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX3R1bm5lbC5jwqDCoMKgIHwgMTQgKysrKysrKysrDQo+ID4gwqAuLi4vZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmjCoMKgwqAgfMKgIDYgKysrKw0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAzMQ0KPiA+
ICsrKysrKysrKysrKysrKysrLS0NCj4gPiDCoGluY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1
bm5lbC5owqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDYgKysrKw0KPiA+IMKgNiBmaWxlcyBjaGFu
Z2VkLCA3MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQoNCg==
