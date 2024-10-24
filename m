Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5FD9AE30E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD97D10E8F9;
	Thu, 24 Oct 2024 10:52:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AeZ2gqTS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFA3E10E8F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729767142; x=1761303142;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=tVk36my1+RgG/0cqIn4FVUR8yNcegB3rEEZTwSWqydY=;
 b=AeZ2gqTSAGssGMmaYEFmSbF5xLfPwDFLsMmpMYEQMX+LzZCYnPa3SOZ5
 3sVckKhp4quDTxtWwcuHbXJ4pt5nibO1cghl61E5u1t0CQDuqFTZUl0hr
 vtNiiAN+RgJYV229xrx6QyEgiZ4WQ1yD288CAGM5Qb+743lOkDHrM8cJu
 OjOf4outgmAyGGr7n0XPUb13fVk2I2oslf6zh2VQCXs2nL1K7/mCLeII2
 BfpxIBwA42GcUt07UNL/LMwzMDe/PfzPvSamfytQZE0EjD7SExv7IkQ/8
 cz7M+0z5LdcPD1Abe6woRzn9JeIIm/Sg5jNLFj6NkKdCeRi9LOeF+dpiF A==;
X-CSE-ConnectionGUID: AdYOpUtCQFu6+sxG7+xytQ==
X-CSE-MsgGUID: giXnk6g5T26QJArEruGtQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29502085"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="29502085"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:52:21 -0700
X-CSE-ConnectionGUID: cWdW+Ae7SAWgiBp95NGWqA==
X-CSE-MsgGUID: psslWg4qQDC7v+MRX3BIqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85678512"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 03:52:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 03:52:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 03:52:21 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 03:52:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xVSTR2H1X2LlYoqpsV8+774JNuj8Lquf7dmMXJhWRUJbjRzdANDTK+8e37oDzrQAer6AVnl27woHeSE9z2nypt5mAiBdqYhejWNx9zXczphl0/TR8FPVNBxSrM9BlHVtsMsBfaG4OW2hOE9TqfVEYNJWw5wn2QvR+70fFN/k6+fvYjt3KHhrzuyXWG28AOWzMsKlmhPOaElvqRzJh2ravBZqmqbtlBWRUJOUjtF94JldkjMPUsudpg3VIuW7LiNv4rPREJGAByFpua79QANC5/++HRuMzaZC5sypDLidKNLRRI/68UjTAr7KOBHEVdC3wUJrMLoHCy3wg5nCXnt2ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tVk36my1+RgG/0cqIn4FVUR8yNcegB3rEEZTwSWqydY=;
 b=cSyXzHCyEmIDAN6tiuG8ZQ7Sh95KVezl3L1tf2rsCc1BKzI64lfdTeHoJ7gTaE+J+mrFJKPUPRu4RSg0RWKaiAfjhIXN6BaJHEo1KXnUCYsE7Ne682jQus7roGW/VCbFUPK418ucsX7RngnBQ5/JLtu+sr+HvLMcaqy/VVewqlme5cl1sOtRdOKegoB2ypc/zLcMoFPQ0m0iouaAoaQ6GeG+6GL0wB7gvxb74xVbwF20g4DJ7c6z6NypuRuxDmJZTFGm+GoeGokn4LYErNBDk0f55lvzdDsOi22nu+Le6Okd64oO0Ib5DeWd0x3SAxOYLSJqfGUrRD3HYr0nEP3iNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6193.namprd11.prod.outlook.com (2603:10b6:208:3eb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Thu, 24 Oct
 2024 10:52:13 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 10:52:13 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 7/9] drm/i915: Nuke ADL pre-production Wa_22011186057
Thread-Topic: [PATCH 7/9] drm/i915: Nuke ADL pre-production Wa_22011186057
Thread-Index: AQHbGnhCf0LGFlIAVkeRBFq9KWW8ELKV0J2A
Date: Thu, 24 Oct 2024 10:52:13 +0000
Message-ID: <06e016174cfe2768302db0e3e1ed7193665b4fb8.camel@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20241009182207.22900-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6193:EE_
x-ms-office365-filtering-correlation-id: aec1ffdc-1269-41cd-6531-08dcf419eafe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WGhId2NxZmpqZUNLV0NYSFNDdHpNUUxJQzl3Ryt2OHp0RWo2M09OcEFDbU5Q?=
 =?utf-8?B?bU4zZVZDNWJrTDdtbUlicmJpNXNVRnNCWS9ITUhraU9FQUozaWlNN2JMWFN3?=
 =?utf-8?B?b3JUc3RRcENXNzBSaXUyQnBnUUp3NmZ4VjZOUnByeW1scGRucXBmWnB1RGhZ?=
 =?utf-8?B?TWE5WitVWnlLMG9IeERkeGtGVituUWc2ZGdGWGVua1hGOXdCRUhmQkpIYXZr?=
 =?utf-8?B?MlN5UXFBOXdWMFEremVpTUhJOW1CTjdldlhjL0pmMlgrVHA3WXpZUmIzbVVR?=
 =?utf-8?B?Y0xaZHVuc21ua0JSQWtNY1FxNTc3NXdzbSt4a1pDT2pxa3JKczEvRTlsVTFB?=
 =?utf-8?B?NlNXSlJGS1RRSEFBNVpMSU9pWmhCSXREOENDRm01Z3Y0S0p6enBmRmlDaHJq?=
 =?utf-8?B?dU5WNis4VWtKZU5DcWxjandtdS9NREN6YTdaQzVnVGRpaTIrVktUUWFKVmVu?=
 =?utf-8?B?SDN3VWxSZ3U4Nkp2QVdSVjNzeS8xV2diSzdhMVpaQ0V1SWhhMThKQWFJOXBk?=
 =?utf-8?B?Q1N2WSszS1VvaGgyUVB6WHNkc1RHS2RxM09PUkRTdEdSc0M1eE1TWlpRRkZy?=
 =?utf-8?B?TE5tNVRaK0pmRWQyaHArRkdjL0lPK0luYzQzdWJGcUdWZGt0aHdldTk3SW9y?=
 =?utf-8?B?cVFPTXZuUU9Cd0ZodWQwbDVEYU5kMUNMOGpxVHhoY3dseW9qUFdMRDIxV1g5?=
 =?utf-8?B?M2tGUjEyeGwyNDFHTGZrWWlha3JnaEltUWFmVmp4a05ubUJsdzBURHJQWmZV?=
 =?utf-8?B?aGZPWkROLytHVWo4eXpxTEhNWXJhR3BqVVJod250a3RDSlRpRXVzNmpqcVh1?=
 =?utf-8?B?MFQ1UzZWRFFmM25oaVIva3ZyeVdQY2NlUEZ1dEpCWGZFTldHUU02bjA3cFBZ?=
 =?utf-8?B?Q3I5NzhFS3RqWU13YnRJdy82OGkyM2dEZjdEaUkrenQrY0NPT0pidmxoMmFk?=
 =?utf-8?B?RFJRbzUyQisvbkFGbWRTNE9EUm9zaGZHZ3JnWllvSElWVUZiMFZPQ1BWbWc1?=
 =?utf-8?B?dktnRExTQ0J4dkhLSFlOcWhpakRXZGZObnd5cTJjblQwLzFrbExxdUM0YTcw?=
 =?utf-8?B?ZE9DU3Jwa0dNTEtERmRJNmdURXlSWlNKSlA0bWdSRTRFYmVoWVNWMy9FQUNO?=
 =?utf-8?B?QTJFN0dJU2ZLVHh6dmc1VXIvTVJqSFVNOUczWGJTS2dSZ1QvVTFKMUNVTTg5?=
 =?utf-8?B?bzhkR3NiOE5QWXFoT3VzclpmaHZNWjZrWE9icGJoTmhsa0UxRzhBRWlMM0Zx?=
 =?utf-8?B?M29aWGh2R0Rwa21qMTJtTFAzRlFSV0xDL3o1U3lOZ1VXeVRldEMzTmpTKzBp?=
 =?utf-8?B?RXoydkVmeEdGZ3pLOG53dUdjdnlpcytIMEMzbVB3Ty94dW9WMytrY1JxUk9Y?=
 =?utf-8?B?K29aVE90SXNVa0Mvb3VsWHZTL0dSdFRkNGhIQzVSYWZ2TlBkRitaUzNRWG9u?=
 =?utf-8?B?T25IdkhIa2tzbFM4UlFCK0ZFS1BwYWFHQ1orbTlldnZXU1c2UzIzcW1mT0lD?=
 =?utf-8?B?dkZ3TDI2NElwWXBHeXJXWmJwdWtaZ3lHYjdaQmdLcU1NdEVHT1F2cVJibENK?=
 =?utf-8?B?MlBML29lMkJGRmJWZVRCZUsxcnJQbThwNzRSYVIvSHQ0dFNHZWJjMDFwY0J4?=
 =?utf-8?B?RWZEdk1FaEtPRHQrMXgxQ1diNFUxYkVGenZXOWs1elJBQVBIWWtTWERpUm11?=
 =?utf-8?B?cmxRSUFOOUhJUnJaVkZNK2NaaitORVgzdzI0R2VNZnZ5MmJEUEJEQmtUUEY1?=
 =?utf-8?B?L21hZHNwdWd4b2gwTE5BVSs3K3BEdlUwd1RBQkRYc1JhN2RlbEZpb3BLeFB4?=
 =?utf-8?Q?aD2VdVgelEka2kVvQ5+jOijgYC2NLB9TRz8OM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VzFSMXczVm5YZEZlWm45aVYwa1hhbE5BU3QrSzJWV2wvRWVPMFV1Rit1VW5R?=
 =?utf-8?B?bmxEVytwQ0FJSlo4U3lvNG40NFhabEtTcXdUd3hqWVJkL3ZxR2FRdVAzSmJ3?=
 =?utf-8?B?cWRPV2ttRStodEQwRmRJQldhOW9ZeXE2dTJZb1dKOGR2Zk9Pak1xMmRFaVNY?=
 =?utf-8?B?VVlwRGx6VllmY2t0NXZIZ3p2SlR4UVcrNVdUUkgvSEFqbU0vSWx4WmdGMHc1?=
 =?utf-8?B?aXdmN1Fza3dyUHN4by9uVWNva3RHbGJ0eDZtcEphV1I1ZjlQRFZKbGh2YWdY?=
 =?utf-8?B?eE5yUGFtS05Fa3pWbEw4dlU1dUNRZlcyYldqalhDT0xMT25RaU9FTkN0VUQv?=
 =?utf-8?B?b2gxcmJiWnVSanJEUkZNdVRjenVCbkRZVG42WVNvbjNxdUFpOHliYTBkVXZN?=
 =?utf-8?B?cGZyTktnODlEbmdITEl2NmJiMTRqRnZkejVUcGVSMXU2ZjEyMFZHK0Rub0pr?=
 =?utf-8?B?aFpmNTFzYktSbEtkRDFNWVFDTklhT25XUk5Yc244ODg0emhiLysxQVFBUU5J?=
 =?utf-8?B?OFFhUjdJQzkvTWUyM1pmQXd6V2J4S3NVMlJvMkw1a1hWQXRKclZmVVJIeTA0?=
 =?utf-8?B?S1JPNTIyQk1aK0thcndyRzVRZCtYV1M3OVJrS3lLQ24vbkwrNXZ5cDFaUmow?=
 =?utf-8?B?d0tsYjJtMzN4RThPRFNNM0huNE5TNGxVSFFOams1N25COUZaUVQ5R2lNRXZW?=
 =?utf-8?B?M2JqWW1xMzc4bDgxSlNTeGVkL1pLVzhqSENHdVlrbEJzNFJJR1V0VlQ2a0N1?=
 =?utf-8?B?NDlKUUNOVUVqMWc3QUl5WlA2K0lkV0tEVnNoOFlIMkpVQ2lsK2lUR1pLVGtj?=
 =?utf-8?B?bUdyazRWaC83eFZEMHY3amZBOTYzZHpwVjNnQkYyRU04ekdNUzVxQkRvQzU3?=
 =?utf-8?B?MXNGbWVMUkZqT1AyU3A4Lzk3elhDeWp4NjlvM0Y1VjlWY3lUS1Z2dHpsVWxU?=
 =?utf-8?B?cmt0V2t1T2JPaGxvWGFNdStwV2kzN1M0aVNTeVdHeWw1YU1HT0tnNGZUUVVi?=
 =?utf-8?B?ZGkvWVhud2JkTUNjYVEwZXR5UCtWQkNPTWlraENLRTA3VFhhK2lTMHN4TC81?=
 =?utf-8?B?ZHJvb0lrQnE4TkMzSmtnSXk3Nkh1UlJZM1NkNC9nVkFhMDliZGFJem1RZmNC?=
 =?utf-8?B?MC9iakpFejVzMVNORTBlTnJUZlFTdXcvcXhYT09nRkV4VGRXYnZadnhJVTh6?=
 =?utf-8?B?dEMwZmFoYmt6STFFMlY0QWdDZlllOXFVZVBWWDhIVjFLRmd0TU1Jem9lYXF0?=
 =?utf-8?B?Q0kzZVlwS21wUmtQQ00yTm5nOGRSZ1ZpMlBIZW9HMTFjRlRaMGtaUGJtcStW?=
 =?utf-8?B?a1lySHpMZjVUcCt6S3BEQmxjVFpMOVlIRGVYTW5PTmttS2dOKzJCNW1oSk41?=
 =?utf-8?B?VWFmbGZjSW95cWVxUXUwM2gwajIyL2QxcW9iK2JBK0l2QUJjdWZZNUNlT3pH?=
 =?utf-8?B?YXFHQlcyS1Foc2loeUJDV28rTHNzYTRacENZejJwT2djOHRJRENaTXJuZEJQ?=
 =?utf-8?B?VTZNc2JPemFoNDdIWmdnb2xvenduSG5YQ1pJUjUwbm5tVzZLZ0ZSL01FYi9Y?=
 =?utf-8?B?KzRVcGFPWFFSTXV1UVVDeXhoZVpsSTAvVWpoQ25DSHlpNnZ0c0hMZkR4UTJU?=
 =?utf-8?B?UXNMdEZaQXZsampncUxya1NTMG4vK0ZRQS8xUHB2aVVodTlRb0huaEdUNHRL?=
 =?utf-8?B?c1JDYmFCWnFqQzlURDZIbXRYeUpULytibkIybjFMVTJKa3hZRFhxTFRnRmsr?=
 =?utf-8?B?ekpMbFpWSnk4TDBKUDcvSU5sL3BVU0xqQ21FdWFkTHV5bkVEMDBRa01vSVBK?=
 =?utf-8?B?RGp2bXd5MEY3eFN0VTNBOVdLL3lIcUZoY1RRYmREZGYzbEsyc1dIZUxudW1m?=
 =?utf-8?B?NmxIVTFORUNVcEZBbzViWXFkV2xwejNLMit4VDcxSzBTNjNNWHZTVEtpd2pv?=
 =?utf-8?B?SjV5ZjJkanc2MUYzeGdaRUdZTmx2WmtaSkg2c3c2S3dPQkVKamhGMjBrSDM4?=
 =?utf-8?B?alVlREdYYS8xZXJPeGp5dG1NUzlndFp0cm0rbWxHNlFveThTUGZDaHkwcHdM?=
 =?utf-8?B?NzJ1YWhaMXFPRmlROWpKZ3E1RG1VL2V5ajNsWXFnOWkxWmovZnNJT2tHbHd5?=
 =?utf-8?B?eVdlTk5BbG1ZQS9mUEZkdWlTOHBlQmtVOTNUNC8va0xYbFpNWDlvV281WHFB?=
 =?utf-8?B?S0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2A688835268B0F4C8F6CA13DFD23365A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aec1ffdc-1269-41cd-6531-08dcf419eafe
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 10:52:13.3341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YXpmUo1RpaGqhyo9y8CHYyVfwVGcISKioZ6gJ0BSllaYYpvl6nKjlPE0a3yH8pQY/adGQfU3QIV6HLzBT8gMKcs0KUsds+eQaD6QGhfEP20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6193
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

T24gV2VkLCAyMDI0LTEwLTA5IGF0IDIxOjIyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gV2FfMjIwMTExODYwNTcgKHNvbWUgQ0NTIHByb2JsZW0pIG9ubHkgYWZmZWN0ZWQgQURMIEEt
c3RlcHBpbmcsCj4gd2hpY2ggSSBwcmVzdW1lIGlzIHByZS1wcm9kdWN0aW9uIGh3LiBEcm9wIHRo
ZSBkZWFkIGNvZGUuCgpNYXliZSB5b3UgY291bGQgYWRkPyA6CgpCc3BlYzogNTQzNjkKCkJSLAoK
Sm91bmkgSMO2Z2FuZGVyCgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyB8IDggLS0tLS0tLS0KPiDCoDEgZmlsZSBj
aGFuZ2VkLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKPiBpbmRleCBlYTcyYzU0ZTgzMjkuLmM4
NWJiMWZlYTkyZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF91bml2ZXJzYWxfcGxhbmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3VuaXZlcnNhbF9wbGFuZS5jCj4gQEAgLTI1NjIsMTAgKzI1NjIsNiBAQCBza2xfcGxhbmVf
ZGlzYWJsZV9mbGlwX2RvbmUoc3RydWN0IGludGVsX3BsYW5lCj4gKnBsYW5lKQo+IMKgc3RhdGlj
IGJvb2wgc2tsX3BsYW5lX2hhc19yY19jY3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBlbnVtIHBpcGUgcGlwZSwgZW51bSBwbGFuZV9pZAo+IHBsYW5lX2lkKQo+IMKg
ewo+IC3CoMKgwqDCoMKgwqDCoC8qIFdhXzIyMDExMTg2MDU3ICovCj4gLcKgwqDCoMKgwqDCoMKg
aWYgKElTX0FMREVSTEFLRV9QKGk5MTUpICYmIElTX0RJU1BMQVlfU1RFUChpOTE1LCBTVEVQX0Ew
LAo+IFNURVBfQjApKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFs
c2U7Cj4gLQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTEpCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiDCoAo+IEBAIC0y
NTg3LDEwICsyNTgzLDYgQEAgc3RhdGljIGJvb2wgdGdsX3BsYW5lX2hhc19tY19jY3Moc3RydWN0
Cj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoChJU19USUdFUkxBS0UoaTkxNSkgJiYgSVNfRElTUExBWV9TVEVQKGk5MTUsIFNURVBfQTAs
Cj4gU1RFUF9EMCkpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZh
bHNlOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgLyogV2FfMjIwMTExODYwNTcgKi8KPiAtwqDCoMKg
wqDCoMKgwqBpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkgJiYgSVNfRElTUExBWV9TVEVQKGk5MTUs
IFNURVBfQTAsCj4gU1RFUF9CMCkpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybiBmYWxzZTsKPiAtCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBwbGFuZV9pZCA8IFBMQU5F
XzY7Cj4gwqB9Cj4gwqAKCg==
