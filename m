Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1F2B43621
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 10:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC5F10E9AB;
	Thu,  4 Sep 2025 08:41:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AAWZDgoK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C88710E1BC;
 Thu,  4 Sep 2025 08:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756975302; x=1788511302;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ERli4ScBHzRBp1B784l95xbE5tbt6mdkRDOoVWppoTQ=;
 b=AAWZDgoK6Zx1B3IX/F0vJIgShiqaDSu+dXykDcwGwQtaR4ouTtlAmMgo
 kkYiuWkQsuXHa1qgEJ05TiE53ZxDO7aliip/5/RIQ9/ATrzONrRGtK61/
 bnonsBWT3oHgs6OpFDyIqpCmHFpDkXSggN6HP6MBLt3UAsTauuXQrdsp5
 h/iDNX6AVgmAS4v3eoMdIt5D+sTknetj1CbchRa4a8ZiLL8MweOnd1BBt
 FlW1nuQ4/MDoulJKFXVAIIMeBhf5PHG0EkIVZo+Jv4duUOukHg5CJrnlL
 wVj2BBQ8GS2tMVR0tmq43F4STikld78Eg6kA4qWL5Q/oFSc4o3QNnBoX9 g==;
X-CSE-ConnectionGUID: e5P5SpdATKKys/nzQtmSzQ==
X-CSE-MsgGUID: hYYIt4rsSWmuxcuPpkK2OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="58519834"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="58519834"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 01:41:14 -0700
X-CSE-ConnectionGUID: oRo0+BqQS9Ws1YA04p7F7w==
X-CSE-MsgGUID: VkrWbiOySD2pFrugFe+TUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="177096240"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 01:41:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 01:41:13 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 01:41:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.70) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 01:41:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DDaubt3pSh+Apg/37R12rRCs2iweCzuwV0lqFfK7J3jAlS1rkN4ZIbem881x/lYQniXFhp62OwE68d7TvOWYwNCQdmXRZNokArmTLZOKSfwSzN8u2RceCvQknv2DBJC1XlztOm3Tmvt1IWLC75Sn2AZyoxIBCVK+aiLBaDWXwZDktvI/v7sE2nkL8w23fP8hgzbjQOBuhshBnVvQo11HfpkZhym4Ihod+N9hQ673dFd8pQoQfe1lFuDxyOuP42F85GfET4EM8UBkrYVwXeK5MBL3AKfJ0/U5NUrYHSIQpnNexuOzg/YPo7Wf5b9jBO+4++iFkAScK4jS/rlvulXvMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ERli4ScBHzRBp1B784l95xbE5tbt6mdkRDOoVWppoTQ=;
 b=kUJ+CfcdUJCax1WomyAZlrcDhX6B06ssn+j5UgmL4m6sESLPq1M7yyL2Z9mqP2WjIA8ZOMf1BRpwv4qgiJL4qYSS1F3k/XSx0CluAjD3dfyNcKXC+YSQC5P/n0XLnn2J+tJyIX6YUhw7ZT3S8v2vuvamCqMijJCO+Rwr41695Koq3Yfz1I6/60qN7Oz1zAECHWFBT3LywAe4OhbHTtCvXxwplfw/X7oWzJ9ZXx9Py+tJNEb02p2HXB2Ybz4wSdO+Ac8W+RaGBXPhou5cYWPlCN9rw0LA8Q3yW0lTyiPzcXvyjctKuDNBaXBGDvt8rSrpMCJNHAzB/Ng12HgHGxA0EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB7596.namprd11.prod.outlook.com (2603:10b6:510:27e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.16; Thu, 4 Sep
 2025 08:41:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 08:41:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 15/20] drm/i915/tc: use generic poll_timeout_us() instead
 of wait_for()
Thread-Topic: [PATCH 15/20] drm/i915/tc: use generic poll_timeout_us() instead
 of wait_for()
Thread-Index: AQHcGBZx9T9sTd8FPkO1oPXixHn0MbSCvyWA
Date: Thu, 4 Sep 2025 08:41:10 +0000
Message-ID: <d787ae2c195d29f8bc8882cbad6878663fd08822.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <50cd06b61210f541d5bb52a36af2d8bf059dd3a1.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <50cd06b61210f541d5bb52a36af2d8bf059dd3a1.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB7596:EE_
x-ms-office365-filtering-correlation-id: acc40041-a36e-47ba-aa87-08ddeb8eccb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NURBRW54cUhsU1B4bkw1MWJXK0ViNktJbUVRdUs1eERvZllEeW1GVjZRY2Rm?=
 =?utf-8?B?eEprM1dxVTNRbFM1NVBnRWRlMC9RWUpRdVFaM0w3Zi9OZ05IOVB1UjNIaTZq?=
 =?utf-8?B?YTl4K05HKzJSeTRkcGd3TTRVbTB6Y1ZYaGRHT2V0ZXhPQVRsenJGZS9EMVk1?=
 =?utf-8?B?emxyenZxc0dlQlpKbmFWSHhOLzJJWDluVGh2dWV5Uy9hYWRndXBUVGVEd1p5?=
 =?utf-8?B?VHlYRndRTTF3dnd3cVlvdHlXTE5GK3RveXhxK0ZSQWlWb1ZhMDJtaWRtbVA0?=
 =?utf-8?B?QUpMaFY2WnpNMmRkVUhEVUkxOElrS1lCTTB6ZmU1NWlrN0JBK0FJRzV3ZmEv?=
 =?utf-8?B?NFpGSnVVSFVTTmFTZ0l2VWdlWE1zUElzLy9hdXRDN3IvZGNCMjdmRGI5OVVy?=
 =?utf-8?B?RnNUTU1iUDVXOEcvZkNBdUxMTFpMU3F3aUZyMndYRmk2cEdOallyTS9xMHUr?=
 =?utf-8?B?alZzbWo4RlFKU3hHNzNTcW1ObEtDbUw1cXVzRUZObXNwRk5zcTJPUkYwTmpY?=
 =?utf-8?B?RE14RVI1U3VlRFlhOHRyRmlGUkNUVGZNSDcyQ1dZMnpUS2VWRUNwcEZaaUdk?=
 =?utf-8?B?NkNTV0YrRTZrR1gwRHZEL01vc0lXejJRMUhrOTZtWERVWmFaNW1qaWhRNTh5?=
 =?utf-8?B?cnRQa0hWM0hndXFpYkZqbXBKYmNTb1VIdTMrclhDZkl2aFBWMDlFNjlacU9T?=
 =?utf-8?B?YW9BdkYvSEtra2NRWnNDTFFScHhRdDNnV0pWeVhKZVhVVTJ1LzFpbDlURnMv?=
 =?utf-8?B?cHMycnFUbjBQVWJ0ZG4vVlZ3WTlnNHlMczBtKzAzY0hPd3pjUDBTdFRLY1o1?=
 =?utf-8?B?Tkh1U1Nhb0lIR2ZYVXFLM3dPTTBKWTdrc0t2azVBalAxd1JOVFdtNVhNUXdi?=
 =?utf-8?B?ZlNKbWNTU0NkZ0RJczJ1UGY3YWtRQnBKYk5KdXdDcnNlQnZjdFBoY2xUR2xS?=
 =?utf-8?B?ZmgwKzVzbmN2b1lQWENQTTZOQXF4Tkp2eW1nbEd2WEhmbE9tUVdieTgzczFp?=
 =?utf-8?B?MTNrQWRsUFFwN3R2TC9PV1NORUpQS1ZYQyszNWg4dUdsQnJ6eG5iYmI4Y3BC?=
 =?utf-8?B?V3hqbkFwZ0xtUlZoaHBOZGJOL0NYZlF0YTYzanlmY21qOFI4RFpaSjJxMGV2?=
 =?utf-8?B?K2NUNzV0OGxOQlcyVTdPamFyZ0xLL0JscDhGSWFXMmZBYTRuVzAvR0Q0WGJY?=
 =?utf-8?B?S3J3Ritnb2tkZEd0R3NDQ1E3dWg2M1o1Y2NaZE96M1JPRDMvWXdMN2NyZ0th?=
 =?utf-8?B?clFiQUV3TmhNOGd1bnc5RWpWSFYzZnJmdVVEYTJuR3ZNOFJxTUJmdGhWSVdk?=
 =?utf-8?B?S29JL0lXVXkwaFphYjdRWTVmeUcxN1JDaHpsOUszV2VoZE1OaS95b1BvODlE?=
 =?utf-8?B?dmk3aTJna2piZGxCTG1ZRkRBajBPM1c4cVg2OUlEa3FsU3RhTE0zMFdUVzRq?=
 =?utf-8?B?QXlDaVgvMVNrOWtrVjR0RWVFZVZNRXlaZWxnejNJRjVpWHBUMHpEZFd6aW5i?=
 =?utf-8?B?SWhZb0FiaytQUjNuRVdRY2FOTlE1anBzWGhlOENTS21QUVZtYitxRUtsVlA2?=
 =?utf-8?B?alNwNEYyM3FxUG9BcS9XQkg3RUVNWCs0VkQrVlpUUGF1dkhzZVdLSnlBZE5S?=
 =?utf-8?B?N3BhYWcwNWpEQUZkV2NoWUEyVUhtOG4xZ3dZVFRxQ2d4SHpIZVFBVEsrcjda?=
 =?utf-8?B?RFl6clZNUHR3bVBQRWZQWDdBWHB1TVdhYUpUTGkwQjJ0bWhlZE5wRUxMWWpY?=
 =?utf-8?B?N0lCVXUyYlIxS09FdmhrQ1htYUErSFg2Y3JyNVdpMi9FUUhJWWZJcTQzY0V6?=
 =?utf-8?B?MEdRVEcvZmFGdkloSHUvQkxWVjl3YW5CVG9GeEFHOGRoamNqbC9HOGQ3Ty9O?=
 =?utf-8?B?Zzk5YTRUaDhNdEZYUmdOdkRsOW9OaHI2NG5pNjYyTHZoMkFoZFZoRGgwTStN?=
 =?utf-8?B?aWtRTjBqdVgydXZLMzJjWWZBdG9pTG5ZbXdSU04zZTRXSFdkbkYwdzNmSEJK?=
 =?utf-8?B?TFJCaXpaa1BBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VkdNdk5qcWZxSCtlUk02ZmNYcnFyQmxyT1hRQXg1Vkl1SFBYajhJbmZyZGlu?=
 =?utf-8?B?QWk1eXhrUG5RU25iMEpSemhDVG9XcGFRaGk3YXBkbmd2R2NWaVRqT0xtc1F6?=
 =?utf-8?B?N2U0WkJaUVlYU3dsVC9FemEzOG5sdzlHZDlhYXp6QmlGYkpiMlRJdVZRMUpx?=
 =?utf-8?B?SzVrMUxEUmtrVXFSUnZ2RWpRTkxrMzVtNGY0VFRDUWFCMm9pRVlteFJaRUhM?=
 =?utf-8?B?VDZCYVNyam1tUE1EZnBTUHVwemh4cVA3MTdaTzJ2alI3OE85NXg1WCs0V1hE?=
 =?utf-8?B?TWFPNUdkKzJzYTY1Rm1JSHkzMHhMdUg3SzQ2djJoT2cwcUpLSzRYZldGMlJV?=
 =?utf-8?B?UlB2emRMbkttaXZnQmd3Rll4MStUYzJtOXQ5NEVyc2FBaHJXZWxRdDNoK3Iw?=
 =?utf-8?B?Tk85UXdpK0w0bHJaRmtqaE4zeWJPUmpoODZVQWxodGhxMytONi9tbDZFcjQz?=
 =?utf-8?B?WExpYS9lR1lyS1I0REtFTEN5RDV0eVJudGNIQzZNYmhnNkZxajVPdW8wemJV?=
 =?utf-8?B?MExZOUlGR1pmWnVnOEpQOWNsZ2JvTEFPM2NNMk15YVplNTVURVpVZDZ6djJh?=
 =?utf-8?B?cjlOSzlMTkc0dGVoWDk4Y3A4ZTNDOFE0QU40RTk4ZHFQVk44dTBRQUl2L3Ay?=
 =?utf-8?B?UURaZzVSekY5cnYzbUNOcGp5WCtaK1p6MlBtaWFSL0pNS2FZZ3pYM01pQ2VE?=
 =?utf-8?B?eVFYalBNY0xnSDhxL2dSc056b2tQZzd0dDBCaWMxRDZaNlpzbWZaYVQrZ0pk?=
 =?utf-8?B?WXRUQiticDhucExyWU5NbCtqZXlhaW5SMmFKUTBKMHQxeDJsbVEzYjRpTnlj?=
 =?utf-8?B?Z3Q2QllnZENVR2c1d3haZXcyekJMYnZ1ekpSSlF1MDZBTlJRWlMzS3lYRGhj?=
 =?utf-8?B?OHBUaWN6ajlzSHJGN01HVnlxVzEwbWdOcDB5N3hHc0JYR1lBQ1ExcU4va3JM?=
 =?utf-8?B?Z1NZdFNBWitoZ212NklPUlpnZkJwaGJnQ3VTTVowSDhrNkd1anBwb2pCemFp?=
 =?utf-8?B?WnZBaEk3RDFJcWUrVmkvN0YxRGNSeTFBejFvWkNRc1BaWW5hM3BOeDlkRGov?=
 =?utf-8?B?TU1qWGVORTMyM2hSWkpLOVJZUG9tMXpaSTUwYkQzUnZvSGNtSVAvK3ZnNDJG?=
 =?utf-8?B?aDQ2RFFucXFjQ212cS9yU3hSVmNMUllKUUE4b3VPNlJESzN2M0hDai9uYU5N?=
 =?utf-8?B?QmZ5L3VJMXNGbXNhQVVzZ21qdzBqdkdVUy9UaVY2em03Y1hTOERCd2V3dE81?=
 =?utf-8?B?bllyZzN3KzFGeVhQVlIxMmJrdFE2SVUzU01KaGFqRERpT281b1V6UnNjMGZQ?=
 =?utf-8?B?eGJ5S1Zvb0F4cXRETFdEeGdVRFVCUkVmTWdLYk5vSnY2ajJNanI4UlJuV0g1?=
 =?utf-8?B?LzlrYUEveUJIbHhrTHFWbng1ZE0xUEcyYTFkZ0EvM01vQU5GeTArSlVEem9n?=
 =?utf-8?B?Vmt3c0wxaktOdHFUdVo0MmNuWmtDQWlZTm5qNWY4cHNESWVSeGhrbEhYdmpV?=
 =?utf-8?B?L1pDR0FoLzJIMG9ZNGxJQ1JEOVFjTlFNZ0RSVkdlODZ1ZkhobWJDc1d6Qm9l?=
 =?utf-8?B?Z21WZ2M3TVp6K3Nmd3lSVmpGMWtGaWhIRWNZZG5EeEtJVUpUYjBXbWlKV2E3?=
 =?utf-8?B?TUw3RnBUWGUxYlZwZkwyWWJZemNFbjAzTmlQbTZnT1JsdUxHa3BhL3I1MDdF?=
 =?utf-8?B?cmZ2bmpWNEYwUHRLZzR6YmhrVDBMN0ZRcWJqNjdnUjAwQlVWOG9PTklJL2Jw?=
 =?utf-8?B?ZmpoSHZlRkdobHc4YU5YSFFETDdKeTdiOFhUWHpzckJYdUgwMTUxMlE4dCs4?=
 =?utf-8?B?RGNwbDBIaSsvS3hGSU1xeTlad0NmYmVScTB2Wm5CY25NeXg3aVhQb2c5dEo0?=
 =?utf-8?B?UjZMSXJhOEN6ZzJRT2dzMTgyZkJGVy9QR0VTSmVDcUdCTTZ5MzZla2tvVGd0?=
 =?utf-8?B?VFFIZEdNblBScUx1ZTMwUTNIajltUEFOL0gvZEFVdmZVZzdSeCtWL20rMENO?=
 =?utf-8?B?S0laaXEwaC9zVmZBK2ZuMUxpR2xoNFRzUDkrUjN2bFkxWGdaL0MwZ2pkaDdo?=
 =?utf-8?B?cE1XMnFURWZSeDVvQlhobGFqcXlCTWZ4N1hKZG1ZSTdFU0ZKM0Q0Y1hNRmtR?=
 =?utf-8?B?eUtnSGNkaGQ4RjVBSVRNdDFjZEwra3Erd0t5S3ltNGwrei9aVHNMUnJXU3cy?=
 =?utf-8?B?b2tRK1VSa1FWSmlXMTNJclhiM0xmNW1NY2syeUhCZjRkakpRVzZVUVB2STlB?=
 =?utf-8?B?QzdtanJiQVpJUzVCVGMyendqeFRRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FD47868ED91C62468CE392134DC2DB76@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acc40041-a36e-47ba-aa87-08ddeb8eccb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 08:41:10.8734 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jz9tOOJpDNFGeivKIyiPJ/aQ9VkS1m8TYkVyBuOmhBzxaV03333edqdXgN5zhxIarUODNitCu4OMxmqPYYqKGp8bAqzgLJqMdNFXh6uvjEw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7596
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
MjAwIHVzIHNsZWVwIGZvciB0aGUgNSBtcyB0aW1lb3V0LCBhbmQgMTAwMA0KPiB1cw0KPiBzbGVl
cCBmb3IgdGhlIDUwMCBtcyB0aW1lb3V0LiBUaGUgdGltZW91dHMgcmVtYWluIHRoZSBzYW1lLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4N
Cg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KDQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8
IDE2ICsrKysrKysrKysrKysrLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3RjLmMNCj4gaW5kZXggNTgzZmVkNWEzODZkLi44OTc0ZmZlMmFhYmYgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTMsNiArMyw4IEBADQo+
IMKgICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24NCj4gwqAgKi8NCj4gwqAN
Cj4gKyNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4NCj4gKw0KPiDCoCNpbmNsdWRlIDxkcm0vZHJt
X3ByaW50Lmg+DQo+IMKgDQo+IMKgI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+IEBAIC0xMDQ3LDgg
KzEwNDksMTMgQEAgc3RhdGljIGJvb2wNCj4gwqB4ZWxwZHBfdGNfcGh5X3dhaXRfZm9yX3Rjc3Nf
cG93ZXIoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjLCBib29sDQo+IGVuYWJsZWQpDQo+IMKgew0K
PiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkodGMt
DQo+ID5kaWdfcG9ydCk7DQo+ICsJYm9vbCBpc19lbmFibGVkOw0KPiArCWludCByZXQ7DQo+IMKg
DQo+IC0JaWYgKHdhaXRfZm9yKHhlbHBkcF90Y19waHlfdGNzc19wb3dlcl9pc19lbmFibGVkKHRj
KSA9PQ0KPiBlbmFibGVkLCA1KSkgew0KPiArCXJldCA9IHBvbGxfdGltZW91dF91cyhpc19lbmFi
bGVkID0NCj4geGVscGRwX3RjX3BoeV90Y3NzX3Bvd2VyX2lzX2VuYWJsZWQodGMpLA0KPiArCQkJ
wqDCoMKgwqDCoCBpc19lbmFibGVkID09IGVuYWJsZWQsDQo+ICsJCQnCoMKgwqDCoMKgIDIwMCwg
NTAwMCwgZmFsc2UpOw0KPiArCWlmIChyZXQpIHsNCj4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXkt
PmRybSwNCj4gwqAJCQnCoMKgwqAgIlBvcnQgJXM6IHRpbWVvdXQgd2FpdGluZyBmb3IgVENTUyBw
b3dlcg0KPiB0byBnZXQgJXNcbiIsDQo+IMKgCQkJwqDCoMKgIHN0cl9lbmFibGVkX2Rpc2FibGVk
KGVuYWJsZWQpLA0KPiBAQCAtMTMyOSw4ICsxMzM2LDEzIEBAIHN0YXRpYyBib29sIHRjX3BoeV9p
c19jb25uZWN0ZWQoc3RydWN0DQo+IGludGVsX3RjX3BvcnQgKnRjLA0KPiDCoHN0YXRpYyBib29s
IHRjX3BoeV93YWl0X2Zvcl9yZWFkeShzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpDQo+IMKgew0K
PiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkodGMt
DQo+ID5kaWdfcG9ydCk7DQo+ICsJYm9vbCBpc19yZWFkeTsNCj4gKwlpbnQgcmV0Ow0KPiDCoA0K
PiAtCWlmICh3YWl0X2Zvcih0Y19waHlfaXNfcmVhZHkodGMpLCA1MDApKSB7DQo+ICsJcmV0ID0g
cG9sbF90aW1lb3V0X3VzKGlzX3JlYWR5ID0gdGNfcGh5X2lzX3JlYWR5KHRjKSwNCj4gKwkJCcKg
wqDCoMKgwqAgaXNfcmVhZHksDQo+ICsJCQnCoMKgwqDCoMKgIDEwMDAsIDUwMCAqIDEwMDAsIGZh
bHNlKTsNCj4gKwlpZiAocmV0KSB7DQo+IMKgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIlBvcnQg
JXM6IHRpbWVvdXQgd2FpdGluZyBmb3INCj4gUEhZIHJlYWR5XG4iLA0KPiDCoAkJCXRjLT5wb3J0
X25hbWUpOw0KPiDCoA0KDQo=
