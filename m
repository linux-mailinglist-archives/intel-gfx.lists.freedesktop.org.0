Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EF3901D70
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 10:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF8710E383;
	Mon, 10 Jun 2024 08:58:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TLh472kt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AA2810E37A
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 08:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718009894; x=1749545894;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5+HWnoI/IhEHjv7ZikSaP2sZpqErwVG7+k4PHQSeljs=;
 b=TLh472ktFLJXfIeXjA8qqZzn1Y/sE0SV7anAtWmeEayI5+RG0/NdeH4+
 DIMMpLnMiJ8kgnbfOocPM2GW1Kvq6I1UWmd3+1HBYs2rlD3rBOaUpDcwv
 4+AC5/YTTl8U8/fdkTyrXn1XKnbXxrWT0iLZSIGz7Dc+rcg90nP3JSQuH
 vKq2WHLproszBxSJS/erp1SwfwrDfUzzNnilBJs6lEKRs/avstN4k6p1v
 8wgMz1/H4PqdNj0URzzOBQLENCCe6W5v2KdqJNcfdJCVyGn4Jm3LMr3OF
 ozASFjw7lpDQSRzaRsSVWPyh+tn5VW89LrG5ACt3YykmwXU+/dKqd8hkp g==;
X-CSE-ConnectionGUID: YbtLjP8sRPC/yf4uSA1dmg==
X-CSE-MsgGUID: T+pvqWYqTl+8txyVtvsXWQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="11994698"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="11994698"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 01:58:14 -0700
X-CSE-ConnectionGUID: K5XhjsURQNas6+5+4G40qQ==
X-CSE-MsgGUID: SPAPTIz1TAiYRJZpsFVn5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="44128496"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 01:58:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 01:58:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 01:58:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 01:58:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PtYef20URWhKWD4O2MD1VQAmUmTWyhSAqnfEeEGX/qZxmyA9AsPcvCwKsXTFJmBqvvhAFPXNnOVtwOyJf83S5CvnKMo0QuBX5Gq94a623f4oTFlTNQLgLAUrB3o3yUSKbHU8uBl6B9mmFQi/ixPQPFN4vOq3HMyLE7d64nQsNJMik71aOICi+ZOEFwh8CNYl7Or/eHZDjXODP/cCICh7V7G+XFpL5SkcXD955t/TFzULryuCZvBymQFgjGSPg1PwhDhb3gQAMYrzWjWc2BwkjgRghpWwlwlenV8GPeG8oKKyuyBcOa5iomEkSXgD1aIw/gHK+8big5aInGOPVtqJzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5+HWnoI/IhEHjv7ZikSaP2sZpqErwVG7+k4PHQSeljs=;
 b=cTQK17zi4causUZtUJZfvEH6dJclaRHjKDboFhW402uJfC+vNIqI8ui3SK06Fe83BvSq9x/tLDBrefBQAMsK09sQ9NwCMObiwOKSoZsVrTOtUxdm2v8hJPygARu1DWP+2Yxo1PEfWQ5OH5IHdhPPKmuFOpxoDxkiOzao985NZXuCJtwvNoIE82R5Oq4u4Fv1v3mmORcG20GT/CO6DPVXj+C2wcRJOHtIUxZTwFVHOL3Ui7CUNBBqejvrWpLx6fjNW68OEXsLn1RtsJGOmdDTO2TsinqsqFKDaMOyW2VKcvGCAEGn1nzbwbV/ZcEWhiLvZtDh2ZJ1K1zvJz6vks/4Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 PH7PR11MB7052.namprd11.prod.outlook.com (2603:10b6:510:20f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 08:58:10 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%3]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 08:58:10 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [core-for-CI PATCH] Revert "e1000e: move force SMBUS near the end
 of enable_ulp function"
Thread-Topic: [core-for-CI PATCH] Revert "e1000e: move force SMBUS near the
 end of enable_ulp function"
Thread-Index: AQHauwsnZx/CVsuxN0ufU8EwXvnX3rHAojTwgAAQP8A=
Date: Mon, 10 Jun 2024 08:58:10 +0000
Message-ID: <DM8PR11MB56557918D2562FA54907EBA0E0C62@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20240610074627.3762842-1-chaitanya.kumar.borah@intel.com>
 <DM8PR11MB5655DDD6C1502191D2A38E43E0C62@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB5655DDD6C1502191D2A38E43E0C62@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|PH7PR11MB7052:EE_
x-ms-office365-filtering-correlation-id: fd6f5f40-212c-4ffc-634e-08dc892b73eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?NzNvb2x1SldiSitDTzFCMVRaMlJvQlFiVDhLVUJ4UGowTkVqTHJYczR3Y0JU?=
 =?utf-8?B?QzIvcS8za1V0UG1zT2VHM0lIQXFEMGtnS1RHSVV0TmorUjY4S1NlWHVidEpB?=
 =?utf-8?B?alU1WFB6b1lLZmg1R0N6QkZ1b3NaMjJGT2U1REU3c1ZOSjFYQ1VxRVZ6WE9W?=
 =?utf-8?B?YmtKY1RvNkdLN0tyYzlYR21Dd0ZDb0xZYXcwY2NFN004cWVHNFpTY1p2Q042?=
 =?utf-8?B?enhUUTNvaVVXVWczTG9UMnhQWGdWL1JUYjJDRVhwZEhPQ3V1Q1V3ZGtKUUhP?=
 =?utf-8?B?anFCTkViODk0NzdqUldYQXJwZUxWbHBDZnIrMUZhS1ZaZ0doajBkLzd5U3Ja?=
 =?utf-8?B?eGZwSk9JUVlzNkFYcXNkZzRhQ0V6UDVkQVV5dVN2MllPMml6SVkxeGNwQVp5?=
 =?utf-8?B?bW1Cemx1Wng4USsxeXFPVVBaT2tYamo2MDFieHBSTTRlTVVneHppdXpPWDZ0?=
 =?utf-8?B?QWYrb3VhSDJrMDJiYmRGdUZOY0ZrMEZodlRRNjRaNnc2ZXVCNWFERHAwM013?=
 =?utf-8?B?bUF2V01ucktRSFZhSG12T0M0WlF5K0ZXWDFMUDVRWGpYZ0JCazJYRHpOMGpZ?=
 =?utf-8?B?VEN0ZXIwSXo3SlB3WmIvQ2ZaU0lPWmV1QWJJbXlVQ0pTMjI1M0dPQnZXTFhI?=
 =?utf-8?B?empKTWFxSjFRVWxaRm9yaXhCR2NFM0JKT2lxUXVrd2tHUGE0UVJCRzBqc3di?=
 =?utf-8?B?TTRFNFFyRFltZXlibnY2RldwcG1DKzNVNEtFN2tLV0J2YlJxanBmWldEWGMw?=
 =?utf-8?B?dVYwWk1BYm9qQTQ1eWhjVVRrQ2FHZVVRV2p6UEZhLzFwZzZHNy9sUURodmdh?=
 =?utf-8?B?SEV5VFJGQ0NLSjA5ZmI3M1gxQnZ0dTgxTWw5c0ZaRzVxeXlnYUFjdEF3am56?=
 =?utf-8?B?aEs4cWVaY3ZuWm5sUXVsV3VlMXBlRU4xY1ZIWmZ5NC9JeDJOUEowd0Y5cXNU?=
 =?utf-8?B?dVY4WlBSVmRzSnBBTkJWRzk1Q0ZXcVZ6RHkwdjdBRVczeU9IWGQxUW9mUXVI?=
 =?utf-8?B?aVRndkk5UTZkVkx3KzRNR045TDRnSExkTjdwaytNZDV0VC9aL1BPU3pxVUhG?=
 =?utf-8?B?QjdEaCtFUUpJUDJveitmWEpjWFFCTXF5NTNCV3JldFRyZkF2cHdMdEpub2l4?=
 =?utf-8?B?UmVyQ2haVVlnam1yMXNaOGhWc2xnNU1HdFp2SmVIbTVVd1dHZU9mckVocGJM?=
 =?utf-8?B?bjM3U2I5K0FZYWQvZUszUWxjdlJqYVFnWGkxSFFodEtyQUtvQ1hUbURRVkNM?=
 =?utf-8?B?bWRXOXRhWFB3ZWlFS1dhU2RJQTVWN2FUTjd6cUN0VGh1S3cvSjZkczNRcExC?=
 =?utf-8?B?bVJiSUltN3hKbGhwbEdYblV2Tk5GdDJHNjlSaXZNazRKYk5MdjBUaVpJYU9o?=
 =?utf-8?B?QmFqM3ZIV2FNUWhsVGxiRGx1eGduK0FkYzc4ZTN2TjFhTEZxN0lodVRUNm43?=
 =?utf-8?B?YW1oMXI1ZG5qcW4yN0F6ZlVHT3Fkc0JSRkNRcjVIRUJwNGFwcGQ2KzJrQmdJ?=
 =?utf-8?B?V1FoSkxWVGVFZEI2YVZkZmJXelZtWnd4bitsK09EUGd2YkNaWW9WK0I2S2hq?=
 =?utf-8?B?and4V3NrRXQvejFUUEtjK1dYWWUwZ0hQQmdJWkdUa2Q0OXdSSE1yZ1h2SlRT?=
 =?utf-8?B?NCtrN1oxSGhwQ212YnU5ZDlHTk9jSjRLNlVmWmVqM1UzcGF3ZGJDaHoxOHh1?=
 =?utf-8?B?WXBJMnUwTlg0YThLcmVsbktjSWZlYjJreG40Ymc4Snp0cUZhRGsxZEp6R090?=
 =?utf-8?Q?wvhhNyVQQYBKfOEfDzKIWfWTHPJ4Pd5DhVkvF8u?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czB3QS95K3VQN0xzRHkwbUsrcE9NTlVJaHBXcHo5ZzhwK1BTdDdKcC9wWGNS?=
 =?utf-8?B?bXFzUGw4bHB1S28wa2hiZXJVVDUzNlJzMEFlNTc4dWpJT0pxcVdxcUFjL0Yv?=
 =?utf-8?B?bjRhMVhMdWdUQi8zdTZ2eDRycUl1RVNjQm1yTzFwMTZxR09OMDBKbjJ4V3I2?=
 =?utf-8?B?UnBSV1RFeDllQ21JVmZqVXZGSGkrMFc2clU0eStUTlE2WlFnekRXaUpZVTI3?=
 =?utf-8?B?L2VoNlRuNSswQVdHdUY2cjlIR0pyaHc0R3haUldTNkZ0T2JJeWdpSlIxeEg3?=
 =?utf-8?B?Mm12bkZFSkMvVzVXL3Q0aCsrcnhvMzFyY3NLaGRBYTExV2FZWk5lVTVxdXdL?=
 =?utf-8?B?Ym9PQ3BvRys1SVpWWWl5OUU4blBDYUE4WVorR090eTgwRGN6QS9STG5EbXgz?=
 =?utf-8?B?L2dlNExEZEtkaSt5QW9OeDdQQ25YZnRqY3NySUJQZXhJVVpHS3hXRmhHZTRL?=
 =?utf-8?B?Vzg4K043eXBjTkVpQ2t0YkQxVzd2SVg0SmVXT0FMZ2pqUVFUdzlGRGVmeVls?=
 =?utf-8?B?NnJpbkowMmhRbUpBMUREdzZWZnhtYjBtaS9aQ0FQRGRtVTIrSTlFTnUyclNR?=
 =?utf-8?B?akZmdlNSYk5ZWlpkR1FjTUxJUFdIcXVabCtBUFRIVDU4VGFkMHArUmkrUkp2?=
 =?utf-8?B?djA2WGRFN0tnbWY2Q1RmVHN4alo0RUlaZGJ2ZXAybi9VdVVvazB3UWtFQkp5?=
 =?utf-8?B?ai9xS2g1bDdaOGtneE9rK1ViN0NNK01Ga2V1cSsrWnJVaDA4OWNvditOYXd5?=
 =?utf-8?B?UG5OVTlYMndYTjREaFNSeFZCWjBaOWRZeUVYb3JNOUJRdXR4bHRabU9SdWhR?=
 =?utf-8?B?N3JwcXNSb3lFZDAyWjRsaWJiR0t0T05WQzhReS9IU01admtZQ2FQR3ZVYkpS?=
 =?utf-8?B?ZFB2RTZQR0k5a09DenRXNGxoQVlleGdyQWJwWllYLzQvS0pLbktCVHdUUzAz?=
 =?utf-8?B?YURsYTB4WHkrdnVXNEdlaElVb25sLy8vT3VmMURVSXpJM2dYTGVGZWdPb01s?=
 =?utf-8?B?N1krZW1neW1aSU5GQUlDRVZXN29zdE1xUmxLaDJqY3ZHZ1FOeHRaUDNlMnVI?=
 =?utf-8?B?M0dra29RYTNXUGRHQU9WdjRPaW1Odmg4dGErZHNvZDNJQWFjRFQ0TDRMZDY0?=
 =?utf-8?B?dk42T1Y3L0xOTkxvR3l4WFMxV1V4VE84cGU2cjhEdTExODUrbjJEZHlUS0h0?=
 =?utf-8?B?d05pUVZmNmxzMmwvTnI4TVIzN0VpSllHdHk1VkZSNXR3eVZmNHNzdk54OHgx?=
 =?utf-8?B?VDVCSHR4azFYbDhmLzM3VTZ0WjNzeGQ1TmRJVU9ha3ljOENsZWVXTVFyYm5u?=
 =?utf-8?B?RmIzYmNDUmU3ek40UzFwNkhrUmR6MlJkVlVCSDdRWnB4RGEweXNweWp1d3dk?=
 =?utf-8?B?R2FHUDJUdnpYNWVybUJYV3JWcWt1VDZNaEM0N2c3SGhNSi81VEd3V29oMUpM?=
 =?utf-8?B?VTlZTUhhY0tyU3FnLzd3cUZyUkVPN0pURzdIY1lmNXpvQzRGWW1KWENBRHFH?=
 =?utf-8?B?N2xNcXI1cTFleHpDVlcvNU9YUXpxTHpDS3dsSWZ3ckdCNWI0eTZrNzJkYkF6?=
 =?utf-8?B?clR3VGFtYWtNWXVDS2dEVmRBckh2Z2ZMbTBlQzZVYWZyVHhXak1wQmRqWktz?=
 =?utf-8?B?VUFQc0s5bjljdmxoSFBtdkIrbDIzczZqRjU2RUxWV1N3c3VyYnZVT09kK05L?=
 =?utf-8?B?WEV4M3hWcmxDWHZlN3RvUDRjT09na2JFNDQyZ2pLR2wxN0tzbWVIM3NCUTNR?=
 =?utf-8?B?T0lYWVhVaURmb3E2VkE3Q0xWZVh2V0FTVGd2azY3N2JBQW5qQkUxQVAzTkt2?=
 =?utf-8?B?YmpSWEdGVnpXSVdzeEV2VlFNVDk4YkVTODVOZTRVb3hIWnJhZml6aklhZlha?=
 =?utf-8?B?MmRkU0tUb1E0dXNVYmFlYUNCWit6RWY2dk5LRWtGUCtub2JlRW5YaXFSZnhz?=
 =?utf-8?B?cnFVbGxJR1phV3o0OHVSNkFNTDc0d3pnaXV3bHhVRDUvdExjc1l0SzkvM29z?=
 =?utf-8?B?U1h1d0o3M0MrcEEwRjBzc3hRSXdNbjJaYUNQSWN5b21kRWdZNlBnazh4RHJi?=
 =?utf-8?B?ODJ3RUlGbk9sdWthWHlaamJxWEN2SFlBUGdDS2FEZE9JS0QzRHhkNERWeC9z?=
 =?utf-8?Q?/Dq/HXTmhzIK1ZwCJXjrS8vK4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd6f5f40-212c-4ffc-634e-08dc892b73eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2024 08:58:10.0844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Xl1sI7T0I3kHNwXR2S9X0voIVUh3zlJ4zERY4TPZZNS2uRMbOoS2FaxLqwOYSipC3YfVwbFhGgy1+hLP478Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7052
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

SGksDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50
ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4gU2Fh
cmluZW4sIEphbmkNCj4gU2VudDogTW9uZGF5LCAxMCBKdW5lIDIwMjQgMTEuMjMNCj4gVG86IEJv
cmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+OyBp
bnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6
IFtjb3JlLWZvci1DSSBQQVRDSF0gUmV2ZXJ0ICJlMTAwMGU6IG1vdmUgZm9yY2UgU01CVVMgbmVh
ciB0aGUNCj4gZW5kIG9mIGVuYWJsZV91bHAgZnVuY3Rpb24iDQo+IA0KPiBIaSwNCj4gPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJv
dW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4gPiBDaGFpdGFueWEg
S3VtYXIgQm9yYWgNCj4gPiBTZW50OiBNb25kYXksIDEwIEp1bmUgMjAyNCAxMC40Ng0KPiA+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IEJvcmFoLCBDaGFpdGFu
eWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDog
W2NvcmUtZm9yLUNJIFBBVENIXSBSZXZlcnQgImUxMDAwZTogbW92ZSBmb3JjZSBTTUJVUyBuZWFy
IHRoZQ0KPiA+IGVuZCBvZiBlbmFibGVfdWxwIGZ1bmN0aW9uIg0KPiA+DQo+ID4gVGhpcyByZXZl
cnRzIGNvbW1pdCBiZmQ1NDZhNTUyZTE0MGIwYTRjOGEyMTUyN2MzOWQ2ZDIxYWRkYjI4Lg0KPiA+
DQo+ID4gVGhlIGNvbW1pdCBzZWVtcyB0byBjYXVzZSBwcm9ibGVtcyBpbiBzdXNwZW5kLXJlc3Vt
ZSB0ZXN0cw0KPiA+DQo+ID4gWzIxMi4yMDQ4OTddIGUxMDAwZSAwMDAwOjAwOjFmLjY6IFBNOiBw
Y2lfcG1fc3VzcGVuZCgpOg0KPiA+IGUxMDAwZV9wbV9zdXNwZW5kIFtlMTAwMGVdIHJldHVybnMg
LTIgWzIxMi4yMDQ5MjhdIGUxMDAwZQ0KPiAwMDAwOjAwOjFmLjY6DQo+ID4gUE06IGRwbV9ydW5f
Y2FsbGJhY2soKTogcGNpX3BtX3N1c3BlbmQgcmV0dXJucyAtMiBbMjEyLjIwNDk0M10gZTEwMDBl
DQo+ID4gMDAwMDowMDoxZi42OiBQTTogZmFpbGVkIHRvIHN1c3BlbmQgYXN5bmM6IGVycm9yIC0y
IFsyMTIuMjA1MDkyXSBQTToNCj4gPiBzdXNwZW5kIG9mIGRldmljZXMgYWJvcnRlZCBhZnRlciAz
MDIuMjU0IG1zZWNzDQo+ID4NCj4gPiBSZWZlcmVuY2VzOg0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE0OTA0L3NoYXJkLQ0KPiA+IGRnMi00L2ln
dEBnZW1fY2NzQHN1c3BlbmQtcmVzdW1lQGxpbmVhci1jb21wcmVzc2VkLWNvbXBmbXQwLQ0KPiA+
IGxtZW0wLWxtZW0wLmh0bWwNCj4gPiBSZWZlcmVuY2VzOg0KPiA+IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTEzMDUNCj4gPiBTaWduZWQt
b2ZmLWJ5OiBDaGFpdGFueWEgS3VtYXIgQm9yYWggPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRl
bC5jb20+DQo+IA0KPiBBY2tlZC1CeTogSmFuaSBTYWFyaW5lbiA8amFuaS5zYWFyaW5lbkBpbnRl
bC5jb20+DQo+IA0KPiBXZSBoYXZlIGFscmVhZHkgdHJ5Ym90IHJlc3VsdHMgZnJvbSByZXZlcnQN
Cj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzQ2MDMvI3JldjIg
LyBodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Ucnlib3RfMTM0
NjAzdjIvaW5kZXguaHRtbD90ZXN0ZmlsdGVyPXN1c3BlbmQNCj4gU28gaGVscHMgb24gdGhlc2Uu
IExldCdzIGdldCB0aGlzIG1lcmdlZCBhc2FwLg0KV2hlbiBtZXJnaW5nIHBsZWFzZSByZWZlcmVu
Y2UgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vl
cy8xMTMwOCANCg0KQnIsDQpKYW5pDQoNCj4gDQo+IEJyLA0KPiBKYW5pDQo+IA0KPiA+IC0tLQ0K
PiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIHwgMjINCj4g
PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L25ldGRldi5jICB8IDE4DQo+ID4gKysrKysrKysrKysrKysrKysNCj4gPiAgMiBmaWxlcyBjaGFu
Z2VkLCAxOCBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jDQo+ID4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jDQo+ID4gaW5kZXggMmU5
OGEyYTBiZWFkLi5mOWU5NGJlMzZlOTcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMNCj4gPiBAQCAtMTIyNSwyOCArMTIyNSw2IEBAIHMz
MiBlMTAwMF9lbmFibGVfdWxwX2xwdF9scChzdHJ1Y3QgZTEwMDBfaHcNCj4gPiAqaHcsIGJvb2wg
dG9fc3gpDQo+ID4gIAl9DQo+ID4NCj4gPiAgcmVsZWFzZToNCj4gPiAtCS8qIFN3aXRjaGluZyBQ
SFkgaW50ZXJmYWNlIGFsd2F5cyByZXR1cm5zIE1ESSBlcnJvcg0KPiA+IC0JICogc28gZGlzYWJs
ZSByZXRyeSBtZWNoYW5pc20gdG8gYXZvaWQgd2FzdGluZyB0aW1lDQo+ID4gLQkgKi8NCj4gPiAt
CWUxMDAwZV9kaXNhYmxlX3BoeV9yZXRyeShodyk7DQo+ID4gLQ0KPiA+IC0JLyogRm9yY2UgU01C
dXMgbW9kZSBpbiBQSFkgKi8NCj4gPiAtCXJldF92YWwgPSBlMTAwMF9yZWFkX3BoeV9yZWdfaHZf
bG9ja2VkKGh3LCBDVl9TTUJfQ1RSTCwNCj4gPiAmcGh5X3JlZyk7DQo+ID4gLQlpZiAocmV0X3Zh
bCkgew0KPiA+IC0JCWUxMDAwZV9lbmFibGVfcGh5X3JldHJ5KGh3KTsNCj4gPiAtCQlody0+cGh5
Lm9wcy5yZWxlYXNlKGh3KTsNCj4gPiAtCQlnb3RvIG91dDsNCj4gPiAtCX0NCj4gPiAtCXBoeV9y
ZWcgfD0gQ1ZfU01CX0NUUkxfRk9SQ0VfU01CVVM7DQo+ID4gLQllMTAwMF93cml0ZV9waHlfcmVn
X2h2X2xvY2tlZChodywgQ1ZfU01CX0NUUkwsIHBoeV9yZWcpOw0KPiA+IC0NCj4gPiAtCWUxMDAw
ZV9lbmFibGVfcGh5X3JldHJ5KGh3KTsNCj4gPiAtDQo+ID4gLQkvKiBGb3JjZSBTTUJ1cyBtb2Rl
IGluIE1BQyAqLw0KPiA+IC0JbWFjX3JlZyA9IGVyMzIoQ1RSTF9FWFQpOw0KPiA+IC0JbWFjX3Jl
ZyB8PSBFMTAwMF9DVFJMX0VYVF9GT1JDRV9TTUJVUzsNCj4gPiAtCWV3MzIoQ1RSTF9FWFQsIG1h
Y19yZWcpOw0KPiA+IC0NCj4gPiAgCWh3LT5waHkub3BzLnJlbGVhc2UoaHcpOw0KPiA+ICBvdXQ6
DQo+ID4gIAlpZiAocmV0X3ZhbCkNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMGUvbmV0ZGV2LmMNCj4gPiBpbmRleCBkYTVjNTlkYWY4YmEuLjIyMGQ2MmZjYTU1ZCAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2
LmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMN
Cj4gPiBAQCAtNjYyMyw2ICs2NjIzLDcgQEAgc3RhdGljIGludCBfX2UxMDAwX3NodXRkb3duKHN0
cnVjdCBwY2lfZGV2DQo+ID4gKnBkZXYsIGJvb2wgcnVudGltZSkNCj4gPiAgCXN0cnVjdCBlMTAw
MF9odyAqaHcgPSAmYWRhcHRlci0+aHc7DQo+ID4gIAl1MzIgY3RybCwgY3RybF9leHQsIHJjdGws
IHN0YXR1cywgd3VmYzsNCj4gPiAgCWludCByZXR2YWwgPSAwOw0KPiA+ICsJdTE2IHNtYl9jdHJs
Ow0KPiA+DQo+ID4gIAkvKiBSdW50aW1lIHN1c3BlbmQgc2hvdWxkIG9ubHkgZW5hYmxlIHdha2V1
cCBmb3IgbGluayBjaGFuZ2VzICovDQo+ID4gIAlpZiAocnVudGltZSkNCj4gPiBAQCAtNjY5Niw2
ICs2Njk3LDIzIEBAIHN0YXRpYyBpbnQgX19lMTAwMF9zaHV0ZG93bihzdHJ1Y3QgcGNpX2Rldg0K
PiA+ICpwZGV2LCBib29sIHJ1bnRpbWUpDQo+ID4gIAkJCWlmIChyZXR2YWwpDQo+ID4gIAkJCQly
ZXR1cm4gcmV0dmFsOw0KPiA+ICAJCX0NCj4gPiArDQo+ID4gKwkJLyogRm9yY2UgU01CVVMgdG8g
YWxsb3cgV09MICovDQo+ID4gKwkJLyogU3dpdGNoaW5nIFBIWSBpbnRlcmZhY2UgYWx3YXlzIHJl
dHVybnMgTURJIGVycm9yDQo+ID4gKwkJICogc28gZGlzYWJsZSByZXRyeSBtZWNoYW5pc20gdG8g
YXZvaWQgd2FzdGluZyB0aW1lDQo+ID4gKwkJICovDQo+ID4gKwkJZTEwMDBlX2Rpc2FibGVfcGh5
X3JldHJ5KGh3KTsNCj4gPiArDQo+ID4gKwkJZTFlX3JwaHkoaHcsIENWX1NNQl9DVFJMLCAmc21i
X2N0cmwpOw0KPiA+ICsJCXNtYl9jdHJsIHw9IENWX1NNQl9DVFJMX0ZPUkNFX1NNQlVTOw0KPiA+
ICsJCWUxZV93cGh5KGh3LCBDVl9TTUJfQ1RSTCwgc21iX2N0cmwpOw0KPiA+ICsNCj4gPiArCQll
MTAwMGVfZW5hYmxlX3BoeV9yZXRyeShodyk7DQo+ID4gKw0KPiA+ICsJCS8qIEZvcmNlIFNNQnVz
IG1vZGUgaW4gTUFDICovDQo+ID4gKwkJY3RybF9leHQgPSBlcjMyKENUUkxfRVhUKTsNCj4gPiAr
CQljdHJsX2V4dCB8PSBFMTAwMF9DVFJMX0VYVF9GT1JDRV9TTUJVUzsNCj4gPiArCQlldzMyKENU
UkxfRVhULCBjdHJsX2V4dCk7DQo+ID4gIAl9DQo+ID4NCj4gPiAgCS8qIEVuc3VyZSB0aGF0IHRo
ZSBhcHByb3ByaWF0ZSBiaXRzIGFyZSBzZXQgaW4gTFBJX0NUUkwNCj4gPiAtLQ0KPiA+IDIuMjUu
MQ0KDQo=
