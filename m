Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C04B1A3D59E
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 10:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E4010E8FE;
	Thu, 20 Feb 2025 09:58:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gBw2gASB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAE610E8FE;
 Thu, 20 Feb 2025 09:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740045538; x=1771581538;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zMb4GI3/ShYghUjLbHjNQzqy0Z8RpEM3P+EVKIF2tLY=;
 b=gBw2gASBwoarfhGsmqQFDMeiH99BGWCjTqEDc+WIE3b5NvCyFSw521vc
 3OWKHvWMpaRwNjDpkOSZU97FjmUlknceq3I8fnGcaJMvb9PUfi7ODUMaC
 ZAFd68HxpYLZINovjKRT84709j0wESJFsZlxVRpvkW6VbdSkVGNhJaB2H
 sFQ5mOgm8/D0nn21CHONzIHqXZHIFeTx4+oQNQLL5rMHXXyBy1OpLlj3m
 oxkV4vHK14fdqTNJGgYsH0ICp7/rCDOBLdiUzMZ37wt1UGmeXRLomQgnF
 6YNcaLp6x0C+REPAeynoyEKoT5exqCiAPn4NLS0RoborFi9zeBDdaNYPY w==;
X-CSE-ConnectionGUID: BmxKgTT1Sy2LgfXBKJhhwA==
X-CSE-MsgGUID: 82aC6QR4SPe3LOq1ebKYZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="40005787"
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="40005787"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 01:58:57 -0800
X-CSE-ConnectionGUID: 0HoDpY3TQgeD9qvnwt58XA==
X-CSE-MsgGUID: 2x22yoN1RdGiS2JfrS5+iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120219632"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2025 01:58:57 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Feb 2025 01:58:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 01:58:57 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 01:58:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j9+aEh3AZtbyd1fEiwuF6UA9wvCH5GzQoSsghZ14Pl+6cIGMUt94SI2/1poAB2rx+/eH8ympdVM/mCphcEfhlh9J1CCRpPL7rqCOjSUULl4hNgZkpv3tI7Ie4GL+nEjAyPFQjuRMl7dExe+6vSgnD9c1OXitd7XAu4Vv6aAq193+tetKrwjhs7wgwF5q2LjxmQ5jWlPJanVjmYnOWQZ2QVo/zZla9MGEbZMp6ua7bDaaRuZo4RlLQC+tXpuPNi8Wdi0TP2ZE7zRXy0LN1cYzLw5C082yUbBI5KhFbFW1GkRcL8y0IihLmSfbDU1XtQu7XkLQxcGOyhuLGIKOK2EwiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zMb4GI3/ShYghUjLbHjNQzqy0Z8RpEM3P+EVKIF2tLY=;
 b=oaDSY+y6ygrlyFY30YUdFGuRNuHzaYszYI8o1+fYwPulg66xibCkzxxFgVvsbaIPzfYMgxI/4dqRmkD0U2UZ3xu4+F2QcMY0X4CCzrQSYWYGBol7WwqU40SfhiEFe2wfgoiQJE0X3eMHxHsnobz5vKp8F1AxLLzXljp0ELPDUL/2ES9+L2Ewp0drmMlc7Ym2xvvghN9Pm2m9Y+Wo5ZEi5txoceSK0Mo+NejUtQMfv1nUgQ/I5rYqDe0lpWUvY5OKv7ZQj72JRmmQCSi+KvqgkOrAOU+PyATZ+bqkpzIkWS+qcs3c8zcl9L6YUmcP8NJvPzr8wpnoh9WDRpJS8yLfOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4771.namprd11.prod.outlook.com (2603:10b6:303:9f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8466.15; Thu, 20 Feb 2025 09:58:50 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8445.017; Thu, 20 Feb 2025
 09:58:50 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915: Replace the HAS_DDI() in
 intel_crtc_scanline_offset() with specific platform checks
Thread-Topic: [PATCH 3/3] drm/i915: Replace the HAS_DDI() in
 intel_crtc_scanline_offset() with specific platform checks
Thread-Index: AQHbear2Kt6qZD8WJ0u28uuB1dph4bNQCLwA
Date: Thu, 20 Feb 2025 09:58:49 +0000
Message-ID: <3f25917c951a6cbcd26c17ba28e53f4b37aacaad.camel@intel.com>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
 <20250207215406.19348-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20250207215406.19348-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4771:EE_
x-ms-office365-filtering-correlation-id: e22e444c-65c3-451f-b61f-08dd51952cd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cTVNUTVoM1J4SE5CYUlQOE5OYTZIVTBnVjJSZ29TRnA2OWRCWkVPKy8wWlNE?=
 =?utf-8?B?blhCVmgzVFlCY1R3Q1lHWVJVaS9YT3d4dVJ5ajVQYktoTnhlTXhsQkN0Q3ZG?=
 =?utf-8?B?N1NjRHVSNjVxdWJUMnp2R21TRStHY0kwUW9mMllwKytwL2FkcWVVbXB5WWgv?=
 =?utf-8?B?TVI1Wi9IMU9xSVBaQVJWamVJaHI2ck9ubzdIWU14eFIzM1F1TEhnKzkrRHVv?=
 =?utf-8?B?MjJZZE9nTkplS0pNeXpxN0I1N0o5VW8xQmZkcFlGOEprNmlET0NqdzB5YTBW?=
 =?utf-8?B?S2pjSFVrZkMwMlltTGVVcmt5eVZNdk43cDl0dU43bDlqZDBBdWMzMHphbldj?=
 =?utf-8?B?ZXltb1AybzcyZ0twT20wZVd3clpJZmtVbGkvMVM5OXJXZFE5dWlVSkFHaUFH?=
 =?utf-8?B?OTltQ0lYc3NiUkEyL3YxQS90K21nMFUvUzhIUjJjeFZKbmlQZnh2QnJMWFVJ?=
 =?utf-8?B?dEJNYnJOcnFTblBINmFlcW9XQ1NZNU9TSnVCYmhWZVRxQ0tyMGNlT2Z2Rnpl?=
 =?utf-8?B?R0diTUp5Qnl6SEI3RCtXN3JSR3lkMVRVNkxQeVZuQlpiL2tUSFdKRUtDbkJ5?=
 =?utf-8?B?SkcxWnU0VGFHWU03dE5Cc3k5SEw4ZXRGWGo2YnFPcDhDV29TWlhLL21MakJv?=
 =?utf-8?B?VUdzalFFTG55UGZiVEhHN3JFcjVGbFc3SW9lekpxNHJLTmdCZEE0NUFTUHZO?=
 =?utf-8?B?MC9PL3kxa3RBdHcybVF3Y2NGdUgyK1lEamN1U2dBUkRqQUQxbUNNcmdTSXBL?=
 =?utf-8?B?RVY5dVkvRVJ0eDZwL2dBeTdTQnRibitVUUVLMlh1T0xRZlI5YW1jQzhFN0ZF?=
 =?utf-8?B?K2VaVU1yWmFOeUpNOWNFNWplYnowWldZNzZXUmtwaUJqbXRCSXlKT2xrcHBH?=
 =?utf-8?B?WnRaU25xK21KUXRoRGR5Wk8zTmp3T3oxNXpPbUFZVk0vUFNGVk1vVkQrZFBP?=
 =?utf-8?B?TWl0eXNSUTFKUVBzTDlCSnhyUERFbStqR25Yditab3lhTlV6cFM1SkxpdThE?=
 =?utf-8?B?QnNDTG5yK2dSeDBCUXliYzR2Ni9KTkxqRkVraDEvbHkwWEswellna09JckdQ?=
 =?utf-8?B?K2NqUUxITkZSRUJtLy91SDR3cyt3TFMvbGY5YTJzOVBld1ZtdHVXY2gzRHBy?=
 =?utf-8?B?djFQREhBRTRCV1V2YlN2NThUdWhjWGYrak91TFRiRVFIbkFRL2lPdjN2Ylpm?=
 =?utf-8?B?ZGQ0VUtXYTdNaGtidEM5SVdCdzMxemdyc3YwdlIwWHp1aDlSanQ5RzlkSnNz?=
 =?utf-8?B?dEFEczdnaDkyQ041YTRkaGVnV2NyWkNPcG40VFNreWxueUszc0JDWWd2T1I5?=
 =?utf-8?B?OElGNTc1RnhQSGRWUk9OampWQlNKaEVPUjBCTGp1eUx6U1R6b1gvOUxXMWRO?=
 =?utf-8?B?QnR4N3RoVEF5dUFwYzRhSmtGemo4U0E3VTMwTVkrOGpuays5ZVRIaS9uVGtj?=
 =?utf-8?B?ZDZzUHlNRkJYeGdLUEZjYmxYbGpyR3VyclV1Rm9uWE1aYWxIQzl3WGYzMlB6?=
 =?utf-8?B?SWtTckM2Z3ovY2tOTnE0dnUvZnRuVnMvTDQ0NmNtcElxTFYwcmtQaUNyUWFN?=
 =?utf-8?B?emYzclBCdnpQYTltMGs1b3dDK1lFdGFtT0hnT2pSbURIZFNEazdqbzdzd05s?=
 =?utf-8?B?Ujhob2x3a1VSeHZIZHl2NWRLcG5xVmY2bEF3V3BzMlRzVEovd3k4QmtycTRT?=
 =?utf-8?B?Y3VJajlnQU9Wb1lMMDJ6aXptRzFyaWFjN0w2a0g1Rm1Za212TlNtVzltQlFG?=
 =?utf-8?B?aC9yZThyanV0QkRCYm5tdWF6Vy9RRE9idW02MVNkTW5KTjRmaTRuQmZ0eGFX?=
 =?utf-8?B?WnAwTVNVSjVHV3pyazdOSG1tUWo3RnpSVVdoT3VCSEpZczJLNnFHMzIyRUNV?=
 =?utf-8?B?eW5DS2FlcHJzRCs2SjRxNFBYWkxQcWg0KzlnZTBCUFhrT2N3cklzL1AzdW10?=
 =?utf-8?Q?OLprYeo0SBsBF1gmKm6f8wDONx61OJix?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWNkM09EdFplNDgyRDVVeW4xK28vQlk0cUtybUdRYW5hM3FSYnJFeVRYbTd0?=
 =?utf-8?B?MTBmd0p4MWMxalFVN3QvV3RYMU8zTnNFNTZpdm9SSkJzRzdmcTRISnNJV3ZJ?=
 =?utf-8?B?dEZCUzl3cnA4aHo0bzVDUy80WStwelhiNjZ1cUZtZ2tvVUxSNnRrOWxYY3Qy?=
 =?utf-8?B?NVQvRkxBa0F2ajR3M0V1Ui93NkhLRDJINDhOUFV4d1RHQ21QOTI3TW1NL2sw?=
 =?utf-8?B?TXEzOUVxVUp0SlFJUUtwLzQ1TElqQzhhQzROSUE1YmNHQ3F2VGdINlBUWVJO?=
 =?utf-8?B?aCtzYjRyaWl2b2wrT1FNaEZlaUNUSlM2ZjhnWUM0WjhVbDdxV3p3Q0lJUWtZ?=
 =?utf-8?B?WEllVHd1MTFZOXA2R1N3b2hkeVYwZWV4c3daMVlFajh1bkxRb2JiRDYvWWJ5?=
 =?utf-8?B?MTNYWFQrNnBxemptamtPOStwUGJ0RHNidmZiREVKTE11OVNTdm94bTdDVGNh?=
 =?utf-8?B?cS84OEJYVGlabW1HWTBPY3lyTGNTRU5FOFp5NzZiaGNSZW05UFA2bmMxTTcr?=
 =?utf-8?B?bW1QRzczR3ZLTzV5aG1YelpMcnAraVM2ZnpFTEswcVRMYWZOODBXUkJ5cHdG?=
 =?utf-8?B?U2FxaFphL3ErT1ZhUnNBWGF4R1laTHh5YTdmQVowS3c5Q2dJWW41ZUhZWnUw?=
 =?utf-8?B?UjdENFArNnUwbG9UcVNoMjlmcW52bHI3TkRXZGthLzd4SDJxYmN0SDlUdHdJ?=
 =?utf-8?B?UGxXMVJSaW9XbGRBM2thNUZrenpqYU9ZRE1yVnlvalk4MEdXUWxMcGNjNHBZ?=
 =?utf-8?B?UG03WmM0ZWd4dzl5ZHpWYi9pZHhpQmc1K05iRFRjQWNKbXRSVDV0UGhMVGFE?=
 =?utf-8?B?SmRZNmc2d1hOV2QxWUgxZ1hZT0R0L1lrWFBwL2tjUENRZU9lYVhNd3FoNjhU?=
 =?utf-8?B?VzFEczhTWTJyQmRBZzNZSXk2c29EN3ByRTJ6SkdoZ1ByUHkrUkd5bm5Oc2xJ?=
 =?utf-8?B?UVlOejBLeU03RVY1U0MrdXdWNUpuU1VLQkJ5a29RZ1JtWjNLVCtDb00rSG9k?=
 =?utf-8?B?ZUxjU3ZGUnF5djBQL0tvTThtNmJHTXlIZjNTL0hkTnh3WGcySE10R0EycFln?=
 =?utf-8?B?TzQ4c1pobCtzUitmdktURVpoYjJGUHhibS9IcUVwMUtZSTl3VkM1MDBqNGJZ?=
 =?utf-8?B?bEpXemUwaEVxK25ybW05WXlWNTgwdWRBcGMweFIvQlhRL2RQWi93U2JMR21o?=
 =?utf-8?B?YTJOTzFVNDVxSkdKOEVIclRha2FCSUlFQzRLWG5hRjRNYWJlUlZHRGdabkw5?=
 =?utf-8?B?SUVFUytnRGtia3pZQ0Q2S0tmSHRxcWF0K3NBVkpVbERZT0Rhc05PazZmdzIz?=
 =?utf-8?B?NlhlVnVJZW9WaU54RE04aTIvVnE5b1hkUXZ5S2dtVi9oQWgvcDMrVkpkWVhF?=
 =?utf-8?B?RHF4L09panV4OVdCYnJVcWhzZS9vM0VzbHRyQnE5eE9SVlRhUkRPa2Jobzhz?=
 =?utf-8?B?Z015M1dIR1pWcHBUNXVpeU9sbzhidTRPcTgzZzFHUWJFMDF2dU43ajY4STNT?=
 =?utf-8?B?RmNzL1Q2NVRkUC9vd0UybkVZUFRML09HOTJmcEtRbFN1cFFjYlYzdzlaU0dT?=
 =?utf-8?B?bysrRDRYZVFrRXFOLzhIMjJ0bkpQTUIwNVZmLys0bEFLZEVQemtsMFJEU0xx?=
 =?utf-8?B?U3BicEtpU1VVL1ZXMzRHR29tVUVQQnhRMHBxOE9xT1JwanNJVDlRNWMyM29T?=
 =?utf-8?B?N2sybUpYSnhkb3NZRTBHOWlwUWY3cEZ6L1phcWMrWnpYa3oxeDV3SHUzbGZG?=
 =?utf-8?B?WDZaY2tUbmt2UDUxbVhiK1FnakZUeVlvaHBrVVd3aDMrdWNxNHkxQUdTeUlv?=
 =?utf-8?B?TU56QlFYRENKeW1KbXY2M1U0cXo1aGRMRTdjVVJ1N3VIdkhzRFZjSEZFL2Vt?=
 =?utf-8?B?bW9NOEZrNDlzZWdFOFN5b2NtYnlwK2dkL2dLeWx0VEk5TmdJc0hnc09YQkla?=
 =?utf-8?B?SUp3VlpXTUdaeUFhZGpZQ2VJbnZ2OE9pSUd4R254ZjYzSnpWMThzdzFTWXYy?=
 =?utf-8?B?TTcxU3ZEczU4b2F5SDdkNzdNMzBKRFFWUUpHckYyRm9idFEyUVNIczNsaDcy?=
 =?utf-8?B?UHE2S1cxWGoyRENuajdNMlowYU84RVVJN1pGTVpveHI0TnVGY2hkZFFJWE05?=
 =?utf-8?B?WUFxTWoyN1hQeThvRklLeXNVMExLMWlqSEgvVklJYnFDeTJ1dTFtTEdDcHdj?=
 =?utf-8?B?SVRGa0pCMDcrWWZTb3RwejVPSFRSa2h4cTF1aC84M3B5SkY1b0luenFzcWlw?=
 =?utf-8?B?c0t2MDd2OWlhZ1dXdmRuMXlTbUZnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9B1ED3418789454998A04ADEF38C3FDD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e22e444c-65c3-451f-b61f-08dd51952cd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2025 09:58:49.9681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XfbaSmYngNfMeU1BDC/ms2w85W6xJABOoGQRbmj/zBTzmYHLQ6cO4sUyir+I1pJ49n6k3TDk71d1NbFfMhKdqOXOpnL+kUw17C2pVzoQ6qE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4771
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

T24gRnJpLCAyMDI1LTAyLTA3IGF0IDIzOjU0ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIEhETUkgdnMuIG5vdCBzY2FubGluZSBvZmZzZXQgc3R1ZmYgbm8gbG9uZ2VyIGFw
cGxpZXMgdG8gdGhlDQo+IGxhdGVzdCBwbGF0Zm9ybXMsIHNvIHVzaW5nIEhBU19EREkoKSBpcyBh
IGJpdCBjb25mdXNpbmcuIFJlcGxhY2UNCj4gd2l0aCBhIG1vcmUgc3BlY2lmaWMgc2V0IG9mIGNv
bmRpdGlvbnMuDQo+IA0KPiBBbHNvIGxldCdzIGp1c3QgZGVhbCB3aXRoIHRoZSBwbGF0Zm9ybSB0
eXBlcyBpbiB0aGUgaWYgbGFkZGVyDQo+IGl0c2VsZiwgYW5kIGhhbmRsZSB0aGUgSERNSSB2cy4g
bm90IHdpdGhpbiB0aGUgc3BlY2lmaWMgYnJhbmNoDQo+IGZvciB0aG9zZSBwbGF0Zm9ybXMuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92YmxhbmsuYyB8IDUgKysrLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3ZibGFuay5jDQo+IGluZGV4IGRkOTI4ZDg5MGUzYS4uMTM5ZmE1ZGViYTgwIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4g
QEAgLTIyNCw4ICsyMjQsOSBAQCBpbnQgaW50ZWxfY3J0Y19zY2FubGluZV9vZmZzZXQoY29uc3Qg
c3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IMKgCSAqLw0KPiDCoAlp
ZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMjAgfHwgZGlzcGxheS0NCj4gPnBsYXRmb3JtLmJh
dHRsZW1hZ2UpDQo+IMKgCQlyZXR1cm4gMTsNCj4gLQllbHNlIGlmIChIQVNfRERJKGRpc3BsYXkp
ICYmIGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwNCj4gSU5URUxfT1VUUFVUX0hETUkp
KQ0KPiAtCQlyZXR1cm4gMjsNCj4gKwllbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSA5
IHx8DQo+ICsJCSBkaXNwbGF5LT5wbGF0Zm9ybS5icm9hZHdlbGwgfHwgZGlzcGxheS0NCj4gPnBs
YXRmb3JtLmhhc3dlbGwpDQo+ICsJCXJldHVybiBpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3Rh
dGUsDQo+IElOVEVMX09VVFBVVF9IRE1JKSA/IDIgOiAxOw0KPiDCoAllbHNlIGlmIChESVNQTEFZ
X1ZFUihkaXNwbGF5KSA+PSAzKQ0KPiDCoAkJcmV0dXJuIDE7DQo+IMKgCWVsc2UNCg0K
