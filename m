Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 746E0AE4DDE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 22:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 887E710E458;
	Mon, 23 Jun 2025 20:08:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BIktuJcY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7EAD10E452;
 Mon, 23 Jun 2025 20:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750709285; x=1782245285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CjIl+65B7gNV1gOmBzOmED5/VGsbeH3cOnaTiZluxLQ=;
 b=BIktuJcY8rbneABz4maltPosKRtf8uwaB9XlyUYu3kuR6PjFIJvq+sh7
 VtaH0G+q3mqqUetSqRKgcXbXISruLBPUwnYmLFP3zKc5XjPMJvfGolM6K
 po89EkJyi5BFHDPUwbLY9J8FJ1/g5veGaXEucRi6F08pu5xbHG+7T4Lrz
 AeYbeuMS4Fbbgwik8+sfFe3vc6boh/Kcfst5ERqst1oLY4MT4CBcpvuJQ
 u/HK0cQ3+PoKvDL5amhiCkBCUxgUZbJstngq/thYbWs4jqgbIiHrod7Y8
 59LehdKaExNST7Acd6/9vztl4n3+DFT6/Q+syiyK6daBtwZ9VPMAN9rXs w==;
X-CSE-ConnectionGUID: v0fA2BRhTZ2WCSeRuGXn3w==
X-CSE-MsgGUID: gyRLzA4QQFi1Iu6AGtN1Zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="63626329"
X-IronPort-AV: E=Sophos;i="6.16,259,1744095600"; d="scan'208";a="63626329"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 13:08:05 -0700
X-CSE-ConnectionGUID: wmZgwc/qTQaDnOQQH/IXVw==
X-CSE-MsgGUID: 3a/B+BllQ7+xPweA0jr5Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,259,1744095600"; d="scan'208";a="152000544"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 13:08:05 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 13:08:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 13:08:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.52) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 13:08:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J2p6hRHIqGlgLXh3qKnYCVHhjdegfHKrDwPPZHyzXXt8x+rTfu71zhYxAiVdjjpgFlrx7dnaGsjUoJ0YwwvD8xq8ckX5YPF4WcfQO2dUTLD7Jl66+79uvdzY1Uii/7CdmAZFjP3BBkC5a6WyJALX0IsDlZX+n3WNGScFPc11mXCT/6+BUbsjyFermLHTSv42oh+haQMvO3/MO9cwHFDb8/jZphCKc1uyqczNl7745ck/nabflh0w9Hxri5t/LUL8c+BMFo81y2GZyBZ6nGyOpDoYEePn2fSRRkS4smWkHIyVviGYD+3Qn7oA7asbhyI+p2isu2FxzMpZ14MzDn79EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CjIl+65B7gNV1gOmBzOmED5/VGsbeH3cOnaTiZluxLQ=;
 b=ue3Bq0ztQ8lwluNwqWD7egYEfZjR2gEN2b6wNFC2QRLpPtX2nrU65mT/tafgHX232z7FXDhiZz5G4jooF4N9Zqz0uCZhtxbeGZFVJftImUdYq5sef3b7mzbrm+oYVN6IYAoD6d4CYLX7qDj8N0X9RxTyUBBoIn073N9AjJRNLI5JbHNAH1KMMb1BNrn5/za28lqlpDNNT+5M4xP7tsifhQOg7rnVKJJcqzfizNjNW5wjSsuKT88rEnBOHLJ/lzNHyrea4hgl6VCXMlCETxdE0+gOC7huh9IABQoiQA/UBsYdCsqqZxKlSnFL1pEdkmCog/9VqcmqIbr8qlMCkz/5lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB7375.namprd11.prod.outlook.com (2603:10b6:8:101::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8857.28; Mon, 23 Jun 2025 20:08:01 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 20:08:01 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 18/21] drm/i915/flipq: Implement Wa_16018781658 for
 LNL-A0
Thread-Topic: [PATCH v4 18/21] drm/i915/flipq: Implement Wa_16018781658 for
 LNL-A0
Thread-Index: AQHb2Uh8LGsN1D6ej06UqODB35/ytrQRQkDQ
Date: Mon, 23 Jun 2025 20:08:01 +0000
Message-ID: <DM4PR11MB63609D4D82154E64C51CC1F2F479A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-19-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-19-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB7375:EE_
x-ms-office365-filtering-correlation-id: 9d6b34b2-6bf3-409a-6480-08ddb291a7f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RGNPclZDWUdFMmVCWVluRXFiUkxEZTk0YXBmQWtJWm9FOGQ5OHhEdXJSekVE?=
 =?utf-8?B?b1NMYnBpNDh4YjUwenpDZGI4WmYzcUYwWGdPOFAwUXVvRnRvK1pCaWtGMFQr?=
 =?utf-8?B?OTdVSEZhZDJOUmZCTGNTR0xJVkNnWTBvZEo3UUJsaitPZjd2WkVZWmlsNndO?=
 =?utf-8?B?bVJWb2IyUW8xbkkwSzk0TTU0K2xsb0h4NnJPNXFBN01CaUc5dWI4VXRKeEZP?=
 =?utf-8?B?bm4vTW1vbUhIaGZYeXZnNG9pY3lWMzBjc2c3dTRibkN6K2RheUFnb1lPVjFC?=
 =?utf-8?B?V2RjNzJxa3lJNE1TSUJuMkJWWHd0V2lKRHNIK2FpSmpoVml3UTB5YTR0UGVX?=
 =?utf-8?B?WTAxQU0vWm9JNnkyelVhbFdxaGh2SEtIUVcvZWczSkRPQkNpN2JaTDlmV2Fj?=
 =?utf-8?B?TEdYdFVDK0tueFlVc0cwWW5EVGRIVkYwRzcxcGFGOXluODRxOGZtaFlLUzZ4?=
 =?utf-8?B?eFVHQkFGNDZHZ2QwZXlBZlV0Ty90dzBpZC9oeU9lNGdXenlpUHpKc2lvYkY5?=
 =?utf-8?B?UWw1S0VIRldzc0FXUVV3TTVtbm50cVZ3ak9VZXVsV3dDSlllMHJGMUp0bU1h?=
 =?utf-8?B?Um54dDNNUmhFUzE5SHZ1MVc5SDZvWTdMOUtYRFc2UHVJenR3TzBCMkxabUgz?=
 =?utf-8?B?c1hVOHZHOWk4bHFQWGZ4NGFqWnZXUlZqdGhKY1gveVM1NkViZUdLUlVPeU0v?=
 =?utf-8?B?djgrZkYwb0NqMXZCeFNEWkhRRVZRcjhjWkY4SXE0ek5JMlpvcVB2aW1OZWl0?=
 =?utf-8?B?NTFmSnlxaWExaVpvSzFkOGRPaVhjeUhJcFFUVnBsZStjcnY3U0QxbVRLYlVj?=
 =?utf-8?B?c25mcXBBeUhEeTZBaVp0Z3FXWmpaQnA0djZYV1NUSlVCWklyTnBoMkRJbVNw?=
 =?utf-8?B?cXFQUlZ5K0REYmRqNGd6VjhCL1pYcDA0U1FacTRZRW9zWlNFRHlvU1ZabFNB?=
 =?utf-8?B?bmZqWDJFU280VWZuVTJOdHFvTVZ2ZFVOd0xwQVZpa25TVHNjK2Q0YWdHck05?=
 =?utf-8?B?S01jcWgwWkIrZ01qOHh6WEFuMFNCWVBGckRjczF3Sk9IbG5YUFgyRlB3eStl?=
 =?utf-8?B?RkFOYUJyRWxPYzYxMkFGVEhxOEt4ZWtSRWxSOEdzUTlmdlNDZ2pFZlV0WDBC?=
 =?utf-8?B?dE0yZTNUenE4ZlRrMmJIaGRWZzlEY0IyWS92Tm45c1RWN3VBRk1hUkt6WEZW?=
 =?utf-8?B?eURNZEVqeXV3VHVQcjhPeHhSL1cwSFNtRzJKYnBOMi9NZnpyQ3EyZ0Y4WFR0?=
 =?utf-8?B?NVRtK1dSU1RqN2gzVEY2M2xTa2EwNzkzTWE0NlV1QUtQWU9LT21Oc3pueURH?=
 =?utf-8?B?V2lDanE5eUt1bEltUmtvL0tiMnYreVZQOE9oWk1RbENSUWIwcktzbVdxZUp0?=
 =?utf-8?B?NVZWTTRGMmVqZWM3R056RTBFMXFBRURUZ1Fzd3ZqaUZaQlNTbjVTOHNrOWR3?=
 =?utf-8?B?RDIvOEVpUnFhTDdzT2w3YWFxaEIyci9sODFYak5yMTk2cEx2QkJSeTBOdkZC?=
 =?utf-8?B?NnhHVU5uaEFVVERrcFZOMzA3RjFWM3dZd0JWU01IbE9NcDNlNjFndjNxbjI3?=
 =?utf-8?B?aGlXK1lTZ3cyK1JNVXNEZFRnbnNZb0hKT3FyL2JUQ2FnSjhPZmlBSnFnZkpV?=
 =?utf-8?B?Rzg3R3N4UTJGY01sRHdNZ1RMclVlZFozMWQrcVVCVC9WZ0tWeUp2Vzd5aERm?=
 =?utf-8?B?M05PNFgrN3ZNeXl1N1hQQWVBdEIwS21sdWllekFLcHpLNXZ3L202V01ZSCtV?=
 =?utf-8?B?bHZ5Z1FubnFSYzVGWHpWYnFRNEhYa2VzS2xBeTNmZFlYTUxBb0Z5aUY5TnFV?=
 =?utf-8?B?eGZ2b3cybTgva3U2N3gwKzNMSjhJeXo3bTdYUTVka1gwdE5UZW1oWVpPNnU5?=
 =?utf-8?B?dHNGK1pBWTFWbUVTT25oMEQya1hpVTF5Rk9YclpKWThqa2dFMDExRXE0UUJ1?=
 =?utf-8?B?SFJ5Mjl6LzBzelJGNDdzc1R5UjMwNm1reGlrK01Gdlg3ZTNRclVXMytPc29D?=
 =?utf-8?Q?gxvw+wzJEuxxEdgz84UJF9QWcPWefE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SU8wTzF3bUIyZURha2dZRkxLd0U3NlE0M0tMQTk2Q0djOHRsMW82c2M5R04r?=
 =?utf-8?B?YURMaEhSUkZqd2FoMEVlYjhMaitxUWZ4VnZwLzlHYm96VThaeFEwQzlzWDdt?=
 =?utf-8?B?TmU2ckNRRGhPY0ZXZm1nOHFsakFkTG5ldFhrdWpWYXhPOGJDZjllUnFYdjh1?=
 =?utf-8?B?NStFN2NVaU9CRHozM1lzNmczSU1FalF5T1lSZkZCajJBclI1WFMyUFdsbDZB?=
 =?utf-8?B?czJMN1RMSDRCTmdSYjkxNHJwZ0hweHBRS2crTWRTeXJZOXI5THZzb2Fyd3Rs?=
 =?utf-8?B?ZGY2MHNselpQV2IxbVU2TTdONlc3U3hFWnhOVDJUTDlKdmF3OHMvTE11b1M4?=
 =?utf-8?B?Sm13VXBGdGFrczF1WXpWODVtVldWZDJqVkpldnJ1NXMwVlQwNmtIV3FPN1di?=
 =?utf-8?B?eDMzZTNEUzVNc0JZaDk2T25lZGZ5N3h1SHNyS1gxYisvSWNMY1E3U0JNM3gr?=
 =?utf-8?B?U2RlK1IxZllpVThFUk9Pa05JVW1hSVhuUXRUeWh3QWlZTTJ4Q3hXMkViMU1o?=
 =?utf-8?B?UXRZdkhmcWxNZFNUbXdSME9iUUoxTU5LRy9YcmplQ2Jod3M4VVBhOWRWUVBW?=
 =?utf-8?B?TWZaeTNPRnArdlMvTzFPVDNhQWJlVU1MRkt0aEZ3RElJUDJINVJJUmh3REtD?=
 =?utf-8?B?MnFpWTcxL3dvOHFDbHFBRzdyL0h0NDNCcEJuMm5jSW45SXVhdkhxRHNhZ0k5?=
 =?utf-8?B?b0gvbDJMODlnY0k3aTM2b25CdGNTd0RzNUY4WHdYSktYazJ6QVBLN205QVk2?=
 =?utf-8?B?UHpCNjJONzdjWXVMeE85QmxheVNDQ3NqZzIrdzV0ZUJqMjd3bThDa3ZMOEds?=
 =?utf-8?B?dmZtV1Y4cThCam9idkl4VTYvTGx0MjVzTDZRcHBuZUV1T3d0SVhNOXcrOWhQ?=
 =?utf-8?B?b1lZMldLeTFKditoSFM1UjUwODRLa0pva3MvTU1XemdRQ3JVeWIyblR4Zmwz?=
 =?utf-8?B?ZHNZbmJQc2pYUFBvOGc5Z096VGNlNHBLNzMwNkoxQlRjbUVoeTREUU9tLzFG?=
 =?utf-8?B?ZG0wODgwQWlXcWpZK003VWtSWlVjU0hTYW1UNERQVVdHWVlyczdjWlAxcnQ4?=
 =?utf-8?B?bU50ZkwrdXFrcjlEbUUyYUgwSHdwZ2NmcHJBQkw3MlJVUkhZeGlRR1h2Wm5s?=
 =?utf-8?B?M3hTVVBzR28vSVdnNFArclBST0Vrek9wK3piWkZSalJ3eFl2c2VsL21yMnVL?=
 =?utf-8?B?UERHV0h5eXJ5eXg3d0ZWZXVXc29JTDdJM1Z4V2ZSMXpNWHUzenVGOVNya1FV?=
 =?utf-8?B?dHlqS1N6QkdaK0J4SEVzMURIQVV3SndqQlRLR01vcFpTMHk4YmFCQ0tYK3Mx?=
 =?utf-8?B?UHJkWFhYZjFEd3l1cWw4RHI5TytXYk5CZ1g3UFNzU25FSWk1YlpYTmNHSGxJ?=
 =?utf-8?B?VXhERHFYYSsrZHFCVk12MXkycEN3cGlRTnFFTHBUdUFkUld2UTNtbHU4TmJO?=
 =?utf-8?B?QWlxZGdWMmNtb3JsZjNpbUJLNXg2dk1WS1F4Ymg5S0hkSlczbm5zUm5hc2xZ?=
 =?utf-8?B?Znp5SW9qRVZIVHlTa0hKb283eXRReEdXbzZtUHZsb3ZrWlhHR3VDYU1sY01Y?=
 =?utf-8?B?aXZzRnBjUmpIblhQTURiSVM0dE9wQUtqK2FPUzZvVm9LaVJ3ZFhJZGxxNnpz?=
 =?utf-8?B?VjhnRDF4bmJCWi9Zelk5R1pCeFJhVXpGa2RhRTBzbFRlOVIrNGV0YnJhS0lU?=
 =?utf-8?B?eFdUL2l6T0krK2c0RE9VZGpyRjg4elU3QURrNjZ2bGp3VjNXV01zL0RsMXUw?=
 =?utf-8?B?QU1uV1loREJDekxZSmROWERVcy92QjZFcFVxbG1nUVNPSVFLWjQrSHF6Mi9J?=
 =?utf-8?B?MExuSzRJcjdPRTlDRDBQdFdSRTlVbXlxQmtyR3dqL2h1Wk1uOURNazFvR2xK?=
 =?utf-8?B?UmdjRVcrQ2dHOXY1dGZHdzdudm9oOGQ5M0QyUW5ScGxiQUljVjM2ZVJFczhF?=
 =?utf-8?B?MDZrQ0picG9hNkxSZGYrNTVkV1FldzF0TWsyaTBLRDVSY0l3NzJJNzdqcWdK?=
 =?utf-8?B?UEhpV1Z5dkVGTEQrc2tXM3lzdE5YUHN3c1oreksvS1NoaDB4bFo3QnY0d3hr?=
 =?utf-8?B?VFFjNkRJL21DQ2NQNGZZRFd2aExwTnlEc3pFSThYZVNsZit1TWV3SXJXTUdM?=
 =?utf-8?Q?kCoiJxyATFRi1NpuduqwXjBop?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d6b34b2-6bf3-409a-6480-08ddb291a7f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2025 20:08:01.4071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mzVm3d+Hm3XDYmsk8ZSVZhNc4Zn9wNSUA3hND96/sY0nMFEQeQqupgyVWef213eWhoz4xBAel9z/btNg6xtbdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7375
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBNb25kYXksIEp1bmUgOSwgMjAyNSA3OjQxIFBNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIHY0IDE4LzIxXSBkcm0vaTkxNS9mbGlwcTogSW1w
bGVtZW50IFdhXzE2MDE4NzgxNjU4IGZvciBMTkwtDQo+IEEwDQo+IA0KPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVGhlIG5vcm1h
bCBmbGlwIHF1ZXVlIGNvbXBsZXRpb24gaW50ZXJydXB0IGRvZXNuJ3Qgd29yayBvbiBMTkwtQTAs
IGFuZCBpbnN0ZWFkDQo+IHRoZSBmaXJtd2FyZSBpbXBsZW1lbnRzIGEgd29ya2Fyb3VuZCB2aWEg
dGhlIGRlbGF5ZWQgdmJsYW5rIGV2ZW50IGhhbmRsZXIuDQo+IEltcGxlbWVudCBzYWlkIHdvcmth
cm91bmQgb24gdGhlIGRyaXZlciBzaWRlIGJ5IGVuYWJsaW5nIHRoZSBhcHByb3ByaWF0ZSBldmVu
dA0KPiBhbmQgaGFuZGxpbmcgdGhlIHJlc3VsdCBpbnRlcnJ1cHQgdmVjdG9yIHZhbHVlIGluIHRo
ZSBQSVBFRE1DIGlycSBoYW5kbGVyLg0KPiANCj4gSW5jbHVkZWQgaGVyZSBqdXN0IGZvciByZWZl
cmVuY2Ugc2luY2UgTE5MLUEwIGlzIHByZS1wcm9kdWN0aW9uIGFuZCB3ZSBkb24ndA0KPiBhY3R1
YWxseSBjYXJlIGFib3V0IGl0IGFueW1vcmUuDQo+IA0KPiB2MjogSWdub3JlIElOVF9WRUNUT1Ig
aWYgdGhlcmUgaXMgYSByZWFsIFBJUEVETUMgaW50ZXJydXB0DQo+ICAgICAobm90aGluZyBpbiB0
aGUgaHcgYXBwZWFycyB0byBjbGVhciBJTlRfVkVDVE9SKQ0KDQpOb3Qgc3VyZSBpZiB3ZSB3b3Vs
ZCB3YW50IHRvIG1lcmdlIHRoaXMsIGhvd2V2ZXIgY2hhbmdlcyBsb29rIGdvb2QgdG8gbWUuDQpS
ZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMgICB8
IDE5ICsrKysrKysrKysrKysrKysrKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmxpcHEuYyB8IDEyICsrKysrKysrKysrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gaW5kZXggZjc4NjY2NjcyMGRlLi4xMGRiMDk1ZDViMjcg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBAQCAt
MTU1NCw5ICsxNTU0LDI2IEBAIHZvaWQgaW50ZWxfcGlwZWRtY19pcnFfaGFuZGxlcihzdHJ1Y3Qg
aW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwgZW51bSBwaXBlIHBpcGUpDQo+ICAJfQ0KPiANCj4g
IAlpbnRfdmVjdG9yID0gaW50ZWxfZGVfcmVhZChkaXNwbGF5LCBQSVBFRE1DX1NUQVRVUyhwaXBl
KSkgJg0KPiBQSVBFRE1DX0lOVF9WRUNUT1JfTUFTSzsNCj4gLQlpZiAodG1wID09IDAgJiYgaW50
X3ZlY3RvciAhPSAwKQ0KPiArCS8qIFdhXzE2MDE4NzgxNjU4ICovDQo+ICsJaWYgKHRtcCA9PSAw
ICYmIGludF92ZWN0b3IgPT0NCj4gUElQRURNQ19JTlRfVkVDVE9SX0ZMSVBRX1BST0dfRE9ORSkg
ew0KPiArCQlzcGluX2xvY2soJmRpc3BsYXktPmRybS0+ZXZlbnRfbG9jayk7DQo+ICsNCj4gKwkJ
aWYgKGNydGMtPmZsaXBxX2V2ZW50KSB7DQo+ICsJCQkvKg0KPiArCQkJICogVXBkYXRlIHZibGFu
ayBjb3VudGVyL3RpbWVzdGFtcCBpbiBjYXNlIGl0DQo+ICsJCQkgKiBoYXNuJ3QgYmVlbiBkb25l
IHlldCBmb3IgdGhpcyBmcmFtZS4NCj4gKwkJCSAqLw0KPiArCQkJZHJtX2NydGNfYWNjdXJhdGVf
dmJsYW5rX2NvdW50KCZjcnRjLT5iYXNlKTsNCj4gKw0KPiArCQkJZHJtX2NydGNfc2VuZF92Ymxh
bmtfZXZlbnQoJmNydGMtPmJhc2UsIGNydGMtDQo+ID5mbGlwcV9ldmVudCk7DQo+ICsJCQljcnRj
LT5mbGlwcV9ldmVudCA9IE5VTEw7DQo+ICsJCX0NCj4gKw0KPiArCQlzcGluX3VubG9jaygmZGlz
cGxheS0+ZHJtLT5ldmVudF9sb2NrKTsNCj4gKwl9IGVsc2UgaWYgKHRtcCA9PSAwICYmIGludF92
ZWN0b3IgIT0gMCkgew0KPiAgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIltDUlRDOiVkOiVzXV0g
UElQRURNQyBpbnRlcnJ1cHQNCj4gdmVjdG9yIDB4JXhcbiIsDQo+ICAJCQljcnRjLT5iYXNlLmJh
c2UuaWQsIGNydGMtPmJhc2UubmFtZSwgdG1wKTsNCj4gKwl9DQo+ICB9DQo+IA0KPiAgdm9pZCBp
bnRlbF9waXBlZG1jX2VuYWJsZV9ldmVudChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywgZGlmZiAt
LWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuYw0KPiBpbmRleCAzYTVh
MWZkYjg3NmIuLjJiMGZiMWU3OGQ3ZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmxpcHEuYw0KPiBAQCAtMjQ3LDYgKzI0NywxNCBAQCB2b2lkIGludGVsX2Zs
aXBxX2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkN
Cj4gDQo+ICAJaW50ZWxfcGlwZWRtY19lbmFibGVfZXZlbnQoY3J0YywgZmxpcHFfZXZlbnRfaWQo
ZGlzcGxheSkpOw0KPiANCj4gKwkvKg0KPiArCSAqIFdhXzE2MDE4NzgxNjU4DQo+ICsJICogUElQ
RURNQ19GUFFfQ1RMMiBiaXQgMSBpc24ndCB3b3JraW5nLCBmaXJtd2FyZSBpbXBsZW1lbnRzDQo+
ICsJICogYSB3b3JrYXJvdW5kIHZpYSB0aGUgZGVsYXllZCB2YmxhbmsgaGFuZGxlci4NCj4gKwkg
Ki8NCj4gKwlpZiAoZGlzcGxheS0+cGxhdGZvcm0ubHVuYXJsYWtlICYmIElTX0RJU1BMQVlfU1RF
UChkaXNwbGF5LCBTVEVQX0EwLA0KPiBTVEVQX0IwKSkNCj4gKwkJaW50ZWxfcGlwZWRtY19lbmFi
bGVfZXZlbnQoY3J0YywNCj4gUElQRURNQ19FVkVOVF9ERUxBWUVEX1ZCTEFOSyk7DQo+ICsNCj4g
IAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBQSVBFRE1DX0ZRX0NUUkwoY3J0Yy0+cGlwZSksDQo+
IFBJUEVETUNfRlFfQ1RSTF9FTkFCTEUpOyAgfQ0KPiANCj4gQEAgLTI1OSw2ICsyNjcsMTAgQEAg
dm9pZCBpbnRlbF9mbGlwcV9kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+
ICpjcnRjX3N0YXRlKQ0KPiANCj4gIAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBQSVBFRE1DX0ZR
X0NUUkwoY3J0Yy0+cGlwZSksIDApOw0KPiANCj4gKwkvKiBXYV8xNjAxODc4MTY1OCAqLw0KPiAr
CWlmIChkaXNwbGF5LT5wbGF0Zm9ybS5sdW5hcmxha2UgJiYgSVNfRElTUExBWV9TVEVQKGRpc3Bs
YXksIFNURVBfQTAsDQo+IFNURVBfQjApKQ0KPiArCQlpbnRlbF9waXBlZG1jX2Rpc2FibGVfZXZl
bnQoY3J0YywNCj4gUElQRURNQ19FVkVOVF9ERUxBWUVEX1ZCTEFOSyk7DQo+ICsNCj4gIAlpbnRl
bF9waXBlZG1jX2Rpc2FibGVfZXZlbnQoY3J0YywgZmxpcHFfZXZlbnRfaWQoZGlzcGxheSkpOw0K
PiANCj4gIAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBQSVBFRE1DX1NDQU5MSU5FQ01QTE9XRVIo
Y3J0Yy0+cGlwZSksIDApOw0KPiAtLQ0KPiAyLjQ5LjANCg0K
