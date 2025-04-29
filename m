Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD8DAA13E8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 19:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 465BE10E1BF;
	Tue, 29 Apr 2025 17:11:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m3qH3B8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026EE10E1BF;
 Tue, 29 Apr 2025 17:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745946662; x=1777482662;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nbk2zYps7K4DgVr6dp9Ks7xIlKbC9+13sISV4FeNyaY=;
 b=m3qH3B8EywoyWt86VahkMRyYMiXXBOBKe5sshQs9G+Tfv/2XKOWheF+u
 3eK6P4iVz/07WKsBbItssStM6JjiXKeDmhq/5jqXfihxhbvLNIEU4B17d
 wqz5fStTFjutvrNyVUVJj4s7b7Zq3P/bRfGO7X2UobcRn0FKahjzn0hlT
 d9fma2Q6WB1Xoi+RpASZZIU2XCHj0zP/+cKx+MhysbCiw2QfbzHHeoNfv
 xLo6xNaikvCAId1uajoU27VR0J2alva9nWIk83U38Q/pi8u22t0RaTPAT
 HzkXOHmNl9HkFwhi0i1abQr8Jt+kP4AG3j2fRkKt5xAaDaMTsuPkoqYTo g==;
X-CSE-ConnectionGUID: jdaQZ1hdRgWmOM9lO59dBA==
X-CSE-MsgGUID: 7q4HazahSfOzji0wAulqcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="58958374"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="58958374"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 10:11:01 -0700
X-CSE-ConnectionGUID: ydci01X4QzGJziXHdB1vmQ==
X-CSE-MsgGUID: SJt725+GRJCHBAtr/nPpKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="171117407"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 10:11:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 10:11:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 10:11:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 10:11:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dN0JinoB9zMDuCf2YpJlfGHjNVxopdVdVTIk58S1aSRHgrJSr4ImEXlMeofEEtEcqwuZEzokAfpBBYFffVCrgCvwtODd8zsuOIY8cq+lXuPDthnzO205W8Dd315PnkKMj4h6AP2yRkdUL4m3TV1JNDofhfPLrSTrCne/lyZ8X+Xf+w//xiOI5y5QP9q2U6dECCkRB7z3+wIHHyx1KO8bMGjhiEhku8opb5rAvEvYsAfM417Dw3T61lfks06+Iru/xGm2/pltVPHGZTcZ349gDbVX9duij9M+oV3Or27+k3lN5ZWkuyH5ID3YuKdhpVbOLCfeFP/nR9TCLbv5oyx4Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nbk2zYps7K4DgVr6dp9Ks7xIlKbC9+13sISV4FeNyaY=;
 b=aRi1qSkPRMwVxJqUbYGgKHYgMC2iA+bT4hHgWkdHiDdqH7moljtVy4iJhutgO2aYQgGZht7/LqCNkJHD1UJfX8lhDIe311SAP1tocpvvYOn2uN9dpINdJWLECfHYtF/6AuoGxsniOZ7AthdhvDAizEKVQxX/GZiIU4noeHp9B4HErEWGKyTI0ePZElrkJhQbxBniBZROWRC6soDkomMJiybDL6jagwnzQqDwyg3In5Dqv4gelK6kNA8jYvF5tK+kxtwn4+PFeDUR9a6Zdp/9cFB9vLtZsPtDag9ZaibtWfM2Dr8QY+Vwa8dW9WHU9OXn+Y0DyWtgB6flGUk5b4VKdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7687.namprd11.prod.outlook.com (2603:10b6:930:74::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8699.19; Tue, 29 Apr 2025 17:10:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8678.028; Tue, 29 Apr 2025
 17:10:44 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
Thread-Topic: [PATCH] drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
Thread-Index: AQHbuRT1TNSKaO0sZUyB9uJMdgNiqbO64RwA
Date: Tue, 29 Apr 2025 17:10:44 +0000
Message-ID: <f47f134cef01b38b53cb4b3ce07710ffcc8069f7.camel@intel.com>
References: <20250429143055.130701-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250429143055.130701-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7687:EE_
x-ms-office365-filtering-correlation-id: a637b8a2-85b9-43ca-143e-08dd8740c704
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Z1prL3BSNW4zUjloaVhyV2xvcmUxNkhFWDVTcStDTmJuNzZnWExCRlBWUmhT?=
 =?utf-8?B?RVI2VUg4VkRoMGp1UTViZUlPOXY1UG81b1JoVFJtV2UxdlJyMTY0TkpwSFBj?=
 =?utf-8?B?bmRXcU11L2ZGalNRQWorbjlOb3pHMnlGWVQyNnVEUnhJajJuTTg1V0pyMjFV?=
 =?utf-8?B?Wnp0MllCY3lYZXZVR2hIM3p1YjFpbGNVN0FXSU1OaTZHTkc1MU9EYm5HeGp3?=
 =?utf-8?B?WVppNG4zbXRPSHNzdCtJbjFVNWY1dVAzZkttUDlMT0JJcForL2tzR3R5RGR1?=
 =?utf-8?B?bUpNVW5ld2d6SlBYeGRtOFppUm1uUTBBcnpxYUkxdFUreDJueHBlWm5KUzh4?=
 =?utf-8?B?dHFYM1Z0WnZXNzFWaUd0RXQ0dEc3Wkh4V01zcE5Rc1RBUlBUNW5Ld2RWTjBG?=
 =?utf-8?B?ZmFSYURjMXh0Rms4dTBOS00xR0dlWkpTVEdCU21zc1F4bHFkT0JSZldOcWI2?=
 =?utf-8?B?ZlJEcU9MeEdaajhTT1U0eDlKUjVBNzlLcHlPU1dxNW51RkMrUk5CUDVIdE51?=
 =?utf-8?B?RmtnWCtEaDZqMno2UXE4ZnZINWxOa0tQOE02QXMxak9HN2tzMksxVjEzaEg3?=
 =?utf-8?B?ekwyWDNKRldJd2p5QXpnYVhGMTEzVzkybnhMaFhFTUZQS1BTb2VpL0JmRWpT?=
 =?utf-8?B?QUlkUFlRbXhrbmtPaFVEVDJwREVKQWt5bmxhclNyVFp3VVNQeEtoNWhhVXQr?=
 =?utf-8?B?MXNVQVlGaFNHVktmaGpDSnNHT25vZnNiaDUzbEZiRit2SThlZ05aaWZVWjNJ?=
 =?utf-8?B?eEhaeEd4ZFlRVGtDNFhiZ0dIL09mQ3lLVHFaK2kzTHNOYlVUanV3MWtwRXJF?=
 =?utf-8?B?dGZJOTkvSCtSNlk4UnNnMlozQnRkQVprTkhaNGlsemlvMFZ2QUM0cmZtdkpU?=
 =?utf-8?B?NURhTFJNdFdIbDhIK1p5U0V4SzBQNW93bTJFQmp4QmpPVWVySk52N2tvRndl?=
 =?utf-8?B?d0QzY3ZSTkhmNkZtaEVYWFFyT0h5Q09Vc0t0MXNiMzVvVnAzcW9OSTI0MW5W?=
 =?utf-8?B?WVVOYVNKcnMrcE10RjZMeXFMbVFraWo0RHE0cFhoQWhIeW15RXExTWxGWnJz?=
 =?utf-8?B?N3F3TCszUEo1bkVTaWhWZkdFd1VUai9IeXJEaU5ra0RQdHJQV01GVCszTjR3?=
 =?utf-8?B?RTBZOEZKbUVGV0Z3VVgzY0VMS2RyVnRxV1FnditKeUtVT0kzSGtDMSs5OS82?=
 =?utf-8?B?WGY1SXZpVUFCS2tGeTZ0L2V6WDRCRDRpeHBBMTJDa3ZTNWgxNGQ3VUxITWdv?=
 =?utf-8?B?c0dUblJVNytuNTJHbEtjaklZNDlTUzBIb2ZwME5INFc3MndpR1pvZDlsdmFF?=
 =?utf-8?B?OCtLem9DMkFlWEU2RVZDZWNidG00QjJRRENPYVc0cWRmVVR3WDV1cXhNc2RD?=
 =?utf-8?B?LzRkVTRBUzllbi9kcGJJQWFDcFdITWVibnp4WHUreEJNU1lLbEQwZUtYZmFm?=
 =?utf-8?B?WG0wOHVUbzVPMkR1UE1vbEs2d05odWdIOWx0RzJFOExYNlNHeTFSS3lQUmt6?=
 =?utf-8?B?VkxMcEhSNW1MMVBNRHVkLzdmRzZDSTdPbmxDdkR2Nit0WDJ3RmM3ajM2MzFi?=
 =?utf-8?B?K3pUTGR5aEpIejhsOFlBckJTaGFFU3RmVFlLSHZXNzhuMGxDV3ZPdVVqWVJj?=
 =?utf-8?B?aTBGN1c4OWlBcU1sUVRHL09UZ3p6am52M2tFUFZmM0N6MW8vSllRWithcjF0?=
 =?utf-8?B?L2FWWUdFN0xKeHdXYXpMdFVoRzNFcjJ4S1dpUWJOWU41bUMzQlIwYWJER0ds?=
 =?utf-8?B?akRjOGlxWW0rN0JSUmIvNGRyRjVGSm4xWVZsWjk1a3pEbnlDTmRETDlKTGJl?=
 =?utf-8?B?UEZZVGJsNXRkWDlqRTlDNkNwdjJiOG0xeHBrQStKcU1mNGhmT0dxRW5jd1Av?=
 =?utf-8?B?aHlCRUZUVjZLcVp1aVZjOFBlZGNGdThFK2lBOFJNN1k5ZFVMY3VLbWswZ1Vu?=
 =?utf-8?B?V2EzU3dyMDFVUS9ueTBQNnBuNndKSFVVazlNRUFnOVBrZXVYdGF0MnZOUks3?=
 =?utf-8?B?ekIya3VRVXdBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YSs2YzFPS1RTT253Z2NlQ3RMWDltN296aWd2YlF5TjdKMEppRURzelRncmwx?=
 =?utf-8?B?RXh6VENYRUVubXdFNWFIcVdrdnFRMFR5Rm0wMkZ0TnZudWpuY2JNeEsxWUU2?=
 =?utf-8?B?d1ZlalJJZmtBcW9HR09hVDNmSVZZWEMrNUE1U2N6dmY5c1dYT0doLzVvdkRs?=
 =?utf-8?B?ZDg5MUtTOWNzTEtIS3FnSGVWZ1E3RFpLaFFwT24yYVFhNU9Nazd2emxYcXNt?=
 =?utf-8?B?VG96ckFhNVFKWmFoMnZUV3hsRyt3MjNGZlZ4eVJaYkNIa0tFTURML1RFakpS?=
 =?utf-8?B?alRUTTFydCtQcWlIY09JNFZZa3VEQlBHK1dpWWt3eFAvYnljRGhNb043L1hq?=
 =?utf-8?B?ZFYwQ1ZjRHF4RFdvMnZsdk9NMWVreU5mSzhlMWtiZTF4QkRNTjE4SUtIcWFI?=
 =?utf-8?B?cE9mOTZYclpBT3pLa052VFlqUUVmUTF2UzVhRDM4T2gzdU5YRnBranp2V21Z?=
 =?utf-8?B?QlVoMFNhYmV1UXo3cDNsTG9xd2FQVy9qemM1ME5KTjZqV0hpRXRLWWFkbG14?=
 =?utf-8?B?ZjY0M3N4TEl2Q01vYWFLeGZFY05uVFR5OSsxejRlRVN4K2IwUTFCdm5WVDUz?=
 =?utf-8?B?VEJhTml6cm9CWm94bERtVnFaWGxnaktac2tsc3J1emZndWI1NmJ4d2tyL05Z?=
 =?utf-8?B?WlhJdGx2Tk5nL25BY3ZQcExlSUZCSVEybXJBTjhtT01DZ3FxZ3k5THFZaGhq?=
 =?utf-8?B?Um04TDd1VDVIQjZ2Y0Zvb3MycWdleHBvMThrS1J4T2hwYXh2Q082TXhtQlkw?=
 =?utf-8?B?empXSjNyRjdFc1FrSTBTbVpUaXFWRXh3N1htKzI3dzJKem91QzRxb3Bqd1No?=
 =?utf-8?B?aXFwV2pMbElpNDM0eU0rUEkrWWxjanNIYlRpd1NoampZUlJhTXlXN0RoWXhX?=
 =?utf-8?B?alhmSXdXS0hybjAwdk12em83aTcwT0laREhzM0JpcnhJV2dZbkxtWW5NRXJ3?=
 =?utf-8?B?MDRJZk85eGRpbmNaL280RlF3RnBsQlA4Y3FDcW12aTNjK0ZPdTd4ck56TklY?=
 =?utf-8?B?c3BZcitGMGJDNnNnaE9zQWd5ZnlpeDNLaVZ2YWJyK3o0L2NSbHJST1UyMjVF?=
 =?utf-8?B?Ti9lMFlsd0F4L01FeXNhcW9iUDhyY04vQ1FnSHI3QWp2eVNtRTU5dlk3N3d6?=
 =?utf-8?B?NHhHeUVsUzh6R2c2VFlWdy9udm50dWlCSGpvRjNNNHo4d0VvVVhyNDN2aFhi?=
 =?utf-8?B?em8walNBaDcrQnQ2MFBUK1VGWWg0OVZIWU1uNGxnSGQ4dVBLZWwzUCtQRlJD?=
 =?utf-8?B?T1FsbE1rRXNWODNSNDBnM2JuNFB1ZC8yc1MwVDgvalJpUkhhM3RmeDlnakRx?=
 =?utf-8?B?YkJnOE1zNTczdEV1QmtVSjJJUUVDRnFPcEFhOEgxL0lFL3k0aXE0SlBBNW5T?=
 =?utf-8?B?R1orSGNmR1BlenlYS3ZHN3d4SmhVc2cxa3ZIN1FUalgramI0cXRXYXhDdHkz?=
 =?utf-8?B?Z0dVNVdKaXFnMVNmaGVRbzN0SE5ObzhFMUNLUno4emVwcTM1TmFmMEg1dzNw?=
 =?utf-8?B?RmJUeUZUWGhHc25tdHE4Snl1Z3cyRWQwdW9CTVFqZGJJekJTQ2UxN0toNmlk?=
 =?utf-8?B?ci9RdVI2SG5mdVRxNStmcTZuYVZwM1Y2OGsvQ3k0YWZENGFpZ0x2bG0zbWs1?=
 =?utf-8?B?K2dJV1U2QWNWOVBJT0p5emhzYStaTnNKOTVlRmMveFV6TUs5TjRYR1BMZUpo?=
 =?utf-8?B?TDZNWjV2MGxFTDNZZ2R1bTdZOUpRZmNJUmprSERCbndrRzAwZnBZUjh5MDFV?=
 =?utf-8?B?WmJpclZZbWpSUEVJdU0vcXpDbFY1dm00T2N2K2pVbEx1akk5NjM0aHlHM2RB?=
 =?utf-8?B?K2NDdVk0Z1o3NEZtUEtrRm9YNmNiazVqR3IvY1cyL2VEeGM5b2dxOXVJWXNU?=
 =?utf-8?B?ZFNvdVRES2FTTXdRR1NZeEczckJTeUZZem5uQ0pIcm5pbWw4MnpyT09Ra2JL?=
 =?utf-8?B?WmwwODlyVFdFNFlsNDQ2Nm1nci9tTmQzWnk5ckF4OS82MFp1aFRHTk1jUnVw?=
 =?utf-8?B?SmdzQi9aYnNMcjJlN2FZb2R4eDJFL1Q0dnFqL3lKbzlTbXdnbGY4U1c4U2Nn?=
 =?utf-8?B?cUs5UHdBMGZiZnIvK2IvUFdNTUoxK0o2Ry8xZ2JQV0VPdnUwa21vVnBiVTNU?=
 =?utf-8?B?RUx1UWFETHhMRUdQWktHSDdrdW4zRC9NaGM4UFNKZlAvN1J6WDZkY00wK3ds?=
 =?utf-8?B?MFdOUzdZbE5FYnlzaFErMVc2VXNkQkQ1REN6TXJGV1R4enBQL2gvL2xCTzBE?=
 =?utf-8?B?TEVhOWJpdXp2dlJvVVAzd3kvMXp3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EAF37C953519E64E92284F358A3A7988@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a637b8a2-85b9-43ca-143e-08dd8740c704
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2025 17:10:44.2587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YrUuCZxOE9B24u9K+YYb4xjS2qNc47vdzHjuId6M35agDIBnD8VdHtj8rJxW6TBofEIQBRJGLHRqSKbrnqD+i4JTEbWeOKgVSoOhrbW9d+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7687
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

T24gVHVlLCAyMDI1LTA0LTI5IGF0IDIwOjAwICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gVGhlIHJlZ2lzdGVyIEVNUF9BU19TRFBfVEwgKE1UTCkgd2FzIGludHJvZHVjZWQgZm9yIGNv
bmZpZ3VyaW5nIHRoZQ0KPiBkb3VibGUgYnVmZmVyaW5nIHBvaW50IGFuZCB0cmFuc21pc3Npb24g
bGluZSBmb3INCj4gSERNSSBWaWRlbyBUaW1pbmcgRXh0ZW5kZWQgTWV0YWRhdGEgUGFja2V0IChW
VEVNUCkgZm9yIFZSUi4NCj4gVGhpcyB3YXMgYWxzbyBpbnRlbmRlZCB0byBiZSBjb25maWd1cmVk
IGZvciBEUCB0byBIRE1JMi4xIFBDT04gdG8NCj4gc3VwcG9ydCBWUlIuDQo+IA0KPiBGcm9tIEJN
RyBhbmQgTE5MKyBvbndhcmRzLCB0aGlzIHJlZ2lzdGVyIHdhcyBleHRlbmRlZCB0byBEaXNwbGF5
IFBvcnQNCj4gQWRhcHRpdmUgU3luYyBTRFAgdG8gaGF2ZSBhIGNvbW1vbiByZWdpc3RlciB0byBj
b25maWd1cmUgZG91YmxlDQo+IGJ1ZmZlcmluZyBwb2ludCBhbmQgdHJhbnNtaXNzaW9uIGxpbmUg
Zm9yIGJvdGggSERNSSBhbmQgRFAgVlJSDQo+IHJlbGF0ZWQNCj4gcGFja2V0cy4NCj4gDQo+IEN1
cnJlbnRseSwgd2UgZG8gbm90IHN1cHBvcnQgVlJSIGZvciBlaXRoZXIgbmF0aXZlIEhETUkgb3Ig
dmlhIFBDT04uDQo+IEhvd2V2ZXIgd2UgbmVlZCB0byBjb25maWd1cmUgdGhpcyBmb3IgRFAgU0RQ
IGNhc2UuIEFzIHBlciB0aGUgc3BlYywNCj4gcHJvZ3JhbSB0aGUgcmVnaXN0ZXIgdG8gc2V0IFZz
eW5jIHN0YXJ0IGFzIHRoZSBkb3VibGUgYnVmZmVyaW5nIHBvaW50DQo+IGZvciBEUCBBUyBTRFAu
DQo+IA0KPiBCc3BlYzo3MDk4NCwgNzExOTcNCj4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5
YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KDQpXaXRoIHRoaXMgcGF0Y2ggSSdtIG5v
dCBzZWVpbmcgUFNSIGlkbGUgdGltZW91dHMgd2hlbiBoYXZpbmcgUGFuZWwNClJlcGxheSBhbmQg
VlJSIGVuYWJsZWQgc2ltdWx0YW5lb3VzbHk6DQoNClRlc3RlZC1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92cnIuY8KgwqDCoMKgwqAgfCAyMA0KPiArKysrKysrKysrKysr
KysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnJfcmVncy5o
IHzCoCA2ICsrKysrKw0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+IGluZGV4IGM2
NTY1YmFmODE1YS4uMjQ0N2JkZmRlNWFmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdnJyLmMNCj4gQEAgLTU3Niw2ICs1NzYsMjIgQEAgYm9vbCBpbnRlbF92cnJf
YWx3YXlzX3VzZV92cnJfdGcoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IMKg
CXJldHVybiBmYWxzZTsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0aWMNCj4gK3ZvaWQgaW50ZWxfdnJy
X3NldF9lbXBfYXNfc2RwX3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRj
X3N0YXRlKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gdG9f
aW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5z
Y29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gKw0KPiArCS8qDQo+ICsJICog
Rm9yIEJNRyBhbmQgTE5MKyBvbndhcmRzIHRoZSBFTVBfQVNfU0RQX1RMIGlzIHVzZWQgZm9yDQo+
IHByb2dyYW1taW5nDQo+ICsJICogZG91YmxlIGJ1ZmZlcmluZyBwb2ludCBhbmQgdHJhbnNtaXNz
aW9uIGxpbmUgZm9yIEFkYXB0aXZlDQo+IFN5bmMgU0RQLg0KPiArCSAqLw0KPiArCWlmIChESVNQ
TEFZX1ZFUngxMDAoZGlzcGxheSkgPT0gMTQwMSB8fCBESVNQTEFZX1ZFUihkaXNwbGF5KQ0KPiA+
PSAyMCkNCj4gKwkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwNCj4gKwkJCcKgwqDCoMKgwqDCoCBF
TVBfQVNfU0RQX1RMKGRpc3BsYXksDQo+IGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJCcKgwqDCoMKg
wqDCoCBFTVBfQVNfU0RQX0RCX1RMKGNydGNfc3RhdGUtDQo+ID52cnIudnN5bmNfc3RhcnQpKTsN
Cj4gK30NCj4gKw0KPiDCoHZvaWQgaW50ZWxfdnJyX2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5ID0NCj4gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gQEAgLTU5NSw2
ICs2MTEsOCBAQCB2b2lkIGludGVsX3Zycl9lbmFibGUoY29uc3Qgc3RydWN0DQo+IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IMKgCQnCoMKgwqDCoMKgwqAgVFJBTlNfUFVTSF9FTik7
DQo+IMKgDQo+IMKgCWlmICghaW50ZWxfdnJyX2Fsd2F5c191c2VfdnJyX3RnKGRpc3BsYXkpKSB7
DQo+ICsJCWludGVsX3Zycl9zZXRfZW1wX2FzX3NkcF90bChjcnRjX3N0YXRlKTsNCj4gKw0KPiDC
oAkJaWYgKGNydGNfc3RhdGUtPmNtcnIuZW5hYmxlKSB7DQo+IMKgCQkJaW50ZWxfZGVfd3JpdGUo
ZGlzcGxheSwNCj4gVFJBTlNfVlJSX0NUTChkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+IMKg
CQkJCcKgwqDCoMKgwqDCoCBWUlJfQ1RMX1ZSUl9FTkFCTEUgfA0KPiBWUlJfQ1RMX0NNUlJfRU5B
QkxFIHwNCj4gQEAgLTY0Niw2ICs2NjQsOCBAQCB2b2lkIGludGVsX3Zycl90cmFuc2NvZGVyX2Vu
YWJsZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gwqAJ
aW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgVFJBTlNfUFVTSChkaXNwbGF5LCBjcHVfdHJhbnNjb2Rl
ciksDQo+IMKgCQnCoMKgwqDCoMKgwqAgVFJBTlNfUFVTSF9FTik7DQo+IMKgDQo+ICsJaW50ZWxf
dnJyX3NldF9lbXBfYXNfc2RwX3RsKGNydGNfc3RhdGUpOw0KPiArDQo+IMKgCWludGVsX2RlX3dy
aXRlKGRpc3BsYXksIFRSQU5TX1ZSUl9DVEwoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLA0K
PiDCoAkJwqDCoMKgwqDCoMKgIFZSUl9DVExfVlJSX0VOQUJMRSB8DQo+IHRyYW5zX3Zycl9jdGwo
Y3J0Y19zdGF0ZSkpOw0KPiDCoH0NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdnJyX3JlZ3MuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdnJyX3JlZ3MuaA0KPiBpbmRleCA2ZWQwZTBkYzk3ZTcuLmQyYWYxYjY3MTBiZiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnJfcmVn
cy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyX3JlZ3Mu
aA0KPiBAQCAtMTA4LDYgKzEwOCwxMiBAQA0KPiDCoCNkZWZpbmUgVlJSX1ZTWU5DX1NUQVJUX01B
U0sJCQlSRUdfR0VOTUFTSygxMiwgMCkNCj4gwqAjZGVmaW5lDQo+IFZSUl9WU1lOQ19TVEFSVCh2
c3luY19zdGFydCkJCVJFR19GSUVMRF9QUkVQKFZSUl9WU1lOQ19TVEFSVF9NQVNLLCAodnN5bmNf
c3RhcnQpKQ0KPiDCoA0KPiArLyogQ29tbW9uIHJlZ2lzdGVyIGZvciBIRE1JIFZURU1QIGFuZCBE
UCBBUyBTRFAgKi8NCj4gKyNkZWZpbmUgX0VNUF9BU19TRFBfVExfQQkJCTB4NjAyMDQNCj4gKyNk
ZWZpbmUgRU1QX0FTX1NEUF9EQl9UTF9NQVNLCQkJUkVHX0dFTk1BU0soMTIsIDApDQo+ICsjZGVm
aW5lIEVNUF9BU19TRFBfVEwoZGV2X3ByaXYsDQo+IHRyYW5zKQkJX01NSU9fVFJBTlMyKGRldl9w
cml2LCB0cmFucywgX0VNUF9BU19TRFBfVExfQSkNCj4gKyNkZWZpbmUNCj4gRU1QX0FTX1NEUF9E
Ql9UTChkYl90cmFuc21pdF9saW5lKQlSRUdfRklFTERfUFJFUChFTVBfQVNfU0RQX0RCX1RMX01B
U0ssKGRiX3RyYW5zbWl0X2xpbmUpKQ0KPiArDQo+IMKgLypDTVJSIFJlZ2lzdGVycyovDQo+IMKg
DQo+IMKgI2RlZmluZSBfVFJBTlNfQ01SUl9NX0xPX0EJCQkweDYwNEYwDQoNCg==
