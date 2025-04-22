Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7BAA96158
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 10:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED2910E191;
	Tue, 22 Apr 2025 08:26:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qa+aw199";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE2B710E18F;
 Tue, 22 Apr 2025 08:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745310385; x=1776846385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2xhwZOzwTKhhwj5PCHhm1go4E7kouMFl3ZQ7lDSPAOY=;
 b=Qa+aw199A1xvd5hIYY4Wh/RfqgtdSWVvV6Ffi+T7YMI+ivGN6yMsqNcP
 xxC3H82PrDgLyYwzrsm+8tV38kLiQwtILVpeUEB69ZGaVKLJnakjiPm2U
 EbTfdVKmsHlQO+m/3hKuVF1xcwRiITukwVf5XYF/Edrxa1Bz/chJayQTU
 Vysq/YALa6sIJ4jUlTtHJK+1RkRNcdkJsK1rXS3lkAX4nXzlTBraSZdtx
 pbnz5a6N5b7nvLbUyADhhvGLUxbbsxYMYfzp/w40McWMtNsRH9Wr3he0G
 NgdQybE6Mtj8YG44TD4hiSitQ6ALLxsAqRjCf71Xm9pjjjVhgkFxyIiSI w==;
X-CSE-ConnectionGUID: n7bpUmSqTL6rD95yi++N/g==
X-CSE-MsgGUID: WuWPWFy6TWK9ocdu6bOsjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="64269653"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="64269653"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 01:26:24 -0700
X-CSE-ConnectionGUID: LT/uS6rGRLOh6KXIsnNOkQ==
X-CSE-MsgGUID: nX3wZjwjR1W5Fr98ZidfEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="132909527"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 01:26:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 01:26:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 01:26:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 01:26:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kH2xJ8rKw4Qa1R+6j/j6qAYR58wLBJFibbjIlncbCj56teTq1BpXovvzyq0dFQ9Co+Ya/UOAE7NjL2qemnlyIT54mjXdO52qMmil4mfDr4BAUlNM95jp5xxyDZYhL3QNU0LPSBC8yRlQVqxcmYabZakGh8ZoijF1AybT8iJpJOAksqiFoKx4ozuasuf0JxGpHvZhAL3P1rrrxf0cn+gSAdhMxSStiw0EPSGsVntKbCssooboRmj3uDxNTVmMCEwjeNV80Yva9wesT1SRIu+2jazquR5FL/6fqRgGFzay/bVIrIdXKgIYlA7N1nApNewROEoQ4MPQsMQjVkBI/AY9IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2xhwZOzwTKhhwj5PCHhm1go4E7kouMFl3ZQ7lDSPAOY=;
 b=eBBFXu77deGIMyfz8FVCUNfo4n0GqShGFfvCJ80O7IyloOv7B720m201Szk6hrGhpwmxdxNkLxN9NB55meNYMEP3SEg6905h/8Z6LvnR4swdS07kIvqlKWSVjeIkSQCcXP9rct/ajZYcEOw5ZGByRL+678scw/UVMRTSfkdmcgO29ins4+miKcgNOEEpYYc2HfPrEzBb+kxHBcqOAJTNjnfc5JDHdh2oS0dgFkZ66XlsRvzf5yD8S0BRoPW8G+0pbd1h26Mou6LqYPGx8+wV9YDwUUwtIhSxgq7XyTCtj9tAWnGBM9sAWReaAQmJjtHexn7bs/Kt+JDpVjfUk8DGAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW4PR11MB5824.namprd11.prod.outlook.com (2603:10b6:303:187::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Tue, 22 Apr
 2025 08:26:06 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 08:26:06 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 03/13] drm/i915/dmc: Add PIPEDMC_EVT_CTL register
 definition
Thread-Topic: [PATCH v3 03/13] drm/i915/dmc: Add PIPEDMC_EVT_CTL register
 definition
Thread-Index: AQHbrSTLw3oZw9KYA0WH4475BPvbfbOvZgJg
Date: Tue, 22 Apr 2025 08:26:06 +0000
Message-ID: <MW4PR11MB70546D3FE825A5F0407F2B53EFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
 <20250414100508.1208774-4-jouni.hogander@intel.com>
In-Reply-To: <20250414100508.1208774-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW4PR11MB5824:EE_
x-ms-office365-filtering-correlation-id: 5534fafe-28e3-4dc5-8c2c-08dd817753e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?QUpQQ2ZTV3BoKzJEd1QwN3lYWExVb3lxR0lkSmFSOXFEblBXY0x5enpDbmdT?=
 =?utf-8?B?RFg3Q3NTZ2t2SmRtSUtlZzdSREtLWUVuVE5tdVJ0OTBVSmhQMm1jVkFIRCtH?=
 =?utf-8?B?ZE9qK1piRmtxWVFvb3NXWkhIc3BGNDVTVzF0QU1QaWYveU4zcmRPcHJFUjcz?=
 =?utf-8?B?UGd5clA5OWx6OHBVNS9CVlZWd1FVMW5HWkh3aFR6S0lRT2dxSUEzZWdsREJp?=
 =?utf-8?B?UitUck9UaUhLRTQ4NDljR1MvczRsRjZIWUllWFgxQXY5WnNnRFZKak9hNTRS?=
 =?utf-8?B?K0tveWRmMFBtQ25vT1VSSVNxbUlBUUVKM0doSDJmaTdjMkJFUFo2NDM0NlBW?=
 =?utf-8?B?TmVXdWRMR2l5MENzWnljYmN1QTlKSWd2cjJObWpxNUtMbGNDOWJDZ09qN0tu?=
 =?utf-8?B?SkpFeTV1M1pvMFRrRlozUUJJVVFhbTEzczFyRDBFNmx4ZG5kVjM4cjM3WmZr?=
 =?utf-8?B?TTQyelNFVFJVdHhjd3JGenJ2dnNhZGlzUXlXOTEzWTYwWXFtaUYrR0h1Zno4?=
 =?utf-8?B?Q0NoZzU2N1ZtcGhoRnEwOVBZSzY0UCtnSEFXVVBsU2RMN0J4emI1YTlYNDRZ?=
 =?utf-8?B?T1pUTHhjeGlQR05MYnBhNnVJekY3SVdra2s0TEowTDdXWndCem0zSHhXbHFL?=
 =?utf-8?B?dUU0MDRXU0NIM002Y0l4L043TEhsTmJZZEhVR0tvWVRtei85VnV0bVIwWE9q?=
 =?utf-8?B?Mk9QdDk5UG01aCtZWUV0bUtGcnRSTG9OVStSTjZmb2VZRkVKV0Nkc2t4YmVB?=
 =?utf-8?B?Q1k1anpLTVBrZSs2T3dFQjlQUnRWaTI4VTlIV3lxWFkvdjg0NmNaWXRvOUI4?=
 =?utf-8?B?akw2NXRtZ1lSRDlzL1N4S2RKK2c4TnRRTzNvajltckY5REhDS3hUeTl4L2ZQ?=
 =?utf-8?B?VHlZNC96NGR0OHN0c3B6TWE5cGJRaU5YbnpvcGVpTFg1bnZWTjEwZERieWdZ?=
 =?utf-8?B?Mng3LzRacGlRZklldk4weWhHM011MDlUbjE2M1Zmb3UvT01xamZrdXBtVnhL?=
 =?utf-8?B?blBYOXMycUo4YXFkVUloSmpXWG9mUmZOUFlFVExPOXpEMG0zZ3p3ZmVSeVQ4?=
 =?utf-8?B?MmovaEZzZ0xYL1l1QkhtZ2xlUXNORkdGTzMzRnJwNVd0bUp5ZkVyM3p1cXlG?=
 =?utf-8?B?MzNDV3QvUVhkWDlkQThNaEtZcEljM1FxM1RUOTVIYlg3T1ZUd0hlRUdjeElL?=
 =?utf-8?B?SHkzamxjc25DeGtYZ05yODJlbWcxeU5TM1FkQ3Btd1pOb0pwSVJBRmFXVkhm?=
 =?utf-8?B?OFc2cU1XbzV2M0ZtU2J0Y2lhNEp2Zm5zY0pDTW9ERFZvTzN5YWc2RHd5dlJv?=
 =?utf-8?B?Nm5tNmR5VEg0MHBsc204NlVSNlF2TDM5N3QwMWpDU3F6N05CWWs5bjJMbmJm?=
 =?utf-8?B?dFVCMERHS2xrMWZRS3pReU1WR0Q3NUMyU2N1ZXFTSld0OVFEMTRFcW9NM2VO?=
 =?utf-8?B?S0dSRnBQU2ZTZzZzSE00cU9ZSFlRNlpUSGhnSllUbGNEY21TQkF3OVVKTXN4?=
 =?utf-8?B?elVNZkZlaG5qOUVob0JHTmRiOC9KVjBNLzdlRzdwNXdvb0tEV05wYWw2OE50?=
 =?utf-8?B?U0hsd0t4L2JnVmZtT0k0MUp5dGpwU1VYcnFWTFRYREdBYjZMVzZ3ZnZ3TEZC?=
 =?utf-8?B?dTVwVVRnK2ltc3hvUTBkRENHTC9RTFdHMHYrbUV6ZDZkMmtqZzEyZ3dMNTlY?=
 =?utf-8?B?Yml3R3RCTWpERW4wbyswbkZRRWc2bnk5V1hkRE1kbCtVNkJWVlVqMmU0TkU3?=
 =?utf-8?B?cW1sN0Z1M3pCU016Y3U5QmpHQkhxRWpiYTd5UlU2eHc2TDRGODJZbFZFQnFk?=
 =?utf-8?B?MTBFbU5jZUtPOEJvbHUxZS9tS2dHSG5qRzVTZDlUQ0NWbVdEZU56d3JFdHRW?=
 =?utf-8?B?aEQ1eExONmJ0Vjh6NHpoc29Pc29NQ2RHWjlPdzE4YkxiRWE1UW9iVTRHenBK?=
 =?utf-8?B?eS8vRTh0dk1uY0dtOHdIL2R1aUN2U0U2TUIrQTkvTWtuTGtaeEFlamsrcS9k?=
 =?utf-8?B?a2packdVaEFBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UTRyeGRZR0ZTMTcxTlBnSkR3TndxRVVja2l3VVJnOTFvUWFLbmFtRkhPaXpY?=
 =?utf-8?B?NzFqdnJjMk51aFZYYzVPd2NabTlEeHpySzRLVTIxbTRlcFpGWjhxQk9EOW9X?=
 =?utf-8?B?UEJSbkFPbUkvTFlVMHZSTHB6MnJ3dmJpdkR4MXhtaGJBc254Vkphby9iMFJn?=
 =?utf-8?B?eGJ0OUhXaFRaZWJYNUQ2U0NETVJRUUpmbHlwUmUrQnFITjJKaDl4VjMxZG1I?=
 =?utf-8?B?VTUrZWd3VGN1OUpXZ0grcnBHWmlrWXpoK2FzQklXZ08xK0gzbkhYdVBLdCtK?=
 =?utf-8?B?ZGVIL3pVdXljL2o1ZytNRUFnYXZYZG9ISUxmQm9yVm9ZSGFabzNlQ1R5eU5m?=
 =?utf-8?B?K2NWdmlwckcvaHljZXRsVllrVjcwcWViVXRSRU1qRFNnMlFpTHg2OEhoQXlj?=
 =?utf-8?B?ZHVaWVJrZE1UYXdsLzE1RGZ1UEJZd0hVZkZDeGJFQU95VmdXVlUrdHVPZFQ3?=
 =?utf-8?B?emtQYU80Q3hVYjE1NFFLcGRnRDJvSjJHS0ZEVmRmRVpOTzYyTXQrZWlnUFlU?=
 =?utf-8?B?TDU5bEcybTZyWCtPODFzSU1aYUtPYXkvSXF0TkRkcVI0VTM4V21wRythdUpI?=
 =?utf-8?B?NC91bHRQbS9mc251VWlUa04zZ2hqMmRmSXVGQi85dSsyTGYwSXBoNFliL2Jw?=
 =?utf-8?B?YTRTQXVjZDMzVm5YRW41K0JTZUsvR2R0Zk1Hc2J4NVFQUWxLZXROc2oyU2FL?=
 =?utf-8?B?WTRDS2NJTGxycFlpMjRldmNid2doRWFoNFR4VDVOMlhCRFkvYlliTlcrdE1k?=
 =?utf-8?B?VmhUS0JJcUpWRzUwVkNxa0pFa1pTR3RMdDlDL2l3UGtibU0zaHJnYWlKWWhj?=
 =?utf-8?B?NmlIT3BDQkJzdW9lZnprY2FNcDlVME5BRHpXM0syQXRCWVN1aDNCVE9Cc0ti?=
 =?utf-8?B?ckJXM3oydVM5blc5eG1ueXgrdHNjbGdtSnhIZ2VwRmhMREoxdG5PMmdEV1VE?=
 =?utf-8?B?cHd5KzV0MWpyUnVNcmV0Z3VMWFoxZVB5ZHRRZ2hlb0pMd3cwNUVQYTYrMWlM?=
 =?utf-8?B?V2tXS1JPeG9jakY5Q3NCVkdJQ1pacjV1SmdjY0RoY2MxbjFVWHhkWmIrTnNY?=
 =?utf-8?B?SDcvdnB0QXdUZ0F5M2Ztc2h5RkwrTzhzU3Iydy95WWh6VEJzZjVvTmNPWHZi?=
 =?utf-8?B?OXc4S3ZvUWRtUm4xMVJkRDJiNnBIOXNreVZCRmRsZ0txbndQQkpNdDV0Rjl2?=
 =?utf-8?B?VDFMbUhNVVJGUUx1U2JtV0Nld2JsQUo5ajZ2V21GdFZqL2FEd3ZzeWNRSkNp?=
 =?utf-8?B?Vnc1YktwK3NvQ1VYZUpmMHc5ZGVnc25PcWd1bXIvcXE3VGtKVE52TnpjUUts?=
 =?utf-8?B?c2UrSWVucUZOdTd6SzZZemtGakdVT0YxMjdBR2tNc2RMcU54NnEzbFAzUnpO?=
 =?utf-8?B?YWNqc3JyVjVpdXkxNUpDaE10MG85b2krcldJMTdVTDhLTlg1Uk9paWdjUzJB?=
 =?utf-8?B?MkhqUzd0WmJhdm92R1lVWWRLSUlOdUxOMWx4VVRhYnNNTkJBTzYzWnNQcTQ1?=
 =?utf-8?B?dFFpNEZqdkdudUtCajRMcFZSY3kra0Z1ZWZhSzJ2V1BxVWVwY3B3OGljTWZV?=
 =?utf-8?B?NnI1V1dwUnAxTkpxNTBKUkxicXk1S2FKTHV5MHZuS09YNGVKTlc3MU54ZHA4?=
 =?utf-8?B?K2VubUVWbFM2WVh2dHZ1NFZ0UVFkdmY3UXAxRE55cnp0M2dQWXFGbUIydUxM?=
 =?utf-8?B?UVlJOUNPamlWMFNkbkNjNFlZd0diRlk2b1pXYkkwejcyNGp5dGdxUHgzdllB?=
 =?utf-8?B?dXZYRFdFZmxmSEVCTlhoN1pFNjZ2WGlqWjcwaUR0bUs0SjhhdWNiNWhoOVpi?=
 =?utf-8?B?Mlh5NjNRc3RJSldJNHczRjU0Ukh2Y0t5Zml2NVd6d2lFZGFncTJoWkFrZ0J2?=
 =?utf-8?B?MmdvSWtQUHhBTWJ5bzN5RTQ5QUlyYU1raE5FaWliM3ZnYkV2eUUzdzVZWjhY?=
 =?utf-8?B?L20rRVlLWjYyYThuaTh3TThNVlVZNGNwRzgwZFNOZmVYRkY4dXdnL3IwbXpF?=
 =?utf-8?B?MW1nZFVOa3J4R21HaVBVUllDaTUycFE3c2FxdG1PZmxxUzBXZzY3TzRWYWNi?=
 =?utf-8?B?cThLM2RaTXJ2Mzl3bmw5TmM5SExiTk44K1pneVhQTG5VRUM4T3l1MjR3ek5J?=
 =?utf-8?Q?gYzVYdd2OR6xS3xo4NSgPa1vz?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5534fafe-28e3-4dc5-8c2c-08dd817753e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 08:26:06.4922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AZ7uKyn+Fs1P1+YIcl1DFwt5iBnynXXvyITeiq3n/2rt5e8lxARciW2z+rCa9WVyxbUzwsY5XwsOI8rUJCxwvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5824
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBNb25kYXksIDE0IEFwcmlsIDIwMjUgMTMuMDUNCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFtQQVRDSCB2MyAwMy8xM10gZHJtL2k5MTUvZG1jOiBBZGQgUElQRURNQ19FVlRfQ1RM
IHJlZ2lzdGVyDQo+IGRlZmluaXRpb24NCj4gDQo+IFRvIGltcGxlbWVudCB3b3JrYXJvdW5kIGZv
ciB1bmRlcnJ1biBvbiBpZGxlIFBTUiBIVyBpc3N1ZSAoV2FfMTYwMjU1OTY2NDcpDQo+IHdlIG5l
ZWQgUElQRURNQ19FVlRfQ1RMXzQgcmVnaXN0ZXIuIEFkZCBQSVBFRE1DX0VWVF9DVExfNCByZWdp
c3Rlcg0KPiBkZWZpbml0aW9ucy4NCj4gDQo+IEJzcGVjOiA2NzU3Ng0KPiANCg0KUmV2aWV3ZWQt
Ynk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWNfcmVncy5oIHwgNiArKysrKysN
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtY19yZWdzLmgNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtY19yZWdzLmgNCj4gaW5kZXggMWJmNDQ2Zjk2
YTEwLi4yZjFlM2NiMWEyNDcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZG1jX3JlZ3MuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RtY19yZWdzLmgNCj4gQEAgLTIxLDYgKzIxLDEyIEBADQo+ICAjZGVmaW5lIE1U
TF9QSVBFRE1DX0NPTlRST0wJCV9NTUlPKDB4NDUyNTApDQo+ICAjZGVmaW5lICBQSVBFRE1DX0VO
QUJMRV9NVEwocGlwZSkJUkVHX0JJVCgoKHBpcGUpIC0gUElQRV9BKSAqIDQpDQo+IA0KPiArI2Rl
ZmluZSBfTVRMX1BJUEVETUNfRVZUX0NUTF80X0EJMHg1ZjA0NA0KPiArI2RlZmluZSBfTVRMX1BJ
UEVETUNfRVZUX0NUTF80X0IJMHg1ZjQ0NA0KPiArI2RlZmluZSBNVExfUElQRURNQ19FVlRfQ1RM
XzQocGlwZSkJX01NSU9fUElQRShwaXBlLA0KPiAJXA0KPiArDQo+IF9NVExfUElQRURNQ19FVlRf
Q1RMXzRfQSwgXA0KPiArDQo+IF9NVExfUElQRURNQ19FVlRfQ1RMXzRfQikNCj4gKw0KPiAgI2Rl
ZmluZSBfQURMUF9QSVBFRE1DX1JFR19NTUlPX0JBU0VfQQkweDVmMDAwDQo+ICAjZGVmaW5lIF9U
R0xfUElQRURNQ19SRUdfTU1JT19CQVNFX0EJMHg5MjAwMA0KPiANCj4gLS0NCj4gMi40My4wDQoN
Cg==
