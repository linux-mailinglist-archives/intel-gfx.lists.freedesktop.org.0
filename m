Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EA2BDC726
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:20:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162D210E72D;
	Wed, 15 Oct 2025 04:20:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZosZVK55";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4DB210E71D;
 Wed, 15 Oct 2025 04:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760502051; x=1792038051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kiXrysdUwoFi8UQiOiPhfpIip7DBJLv5FX0hRyU99/c=;
 b=ZosZVK55hYkpo49qm8js5kYGKLdeqge65WJ1F012IL9sGVCvM0sY8BIj
 8mPmyYZyHXvQy44bDd97/hZ2GL1srie1fd+wdcEdc9Q/YQZpG/mJubwnJ
 s0xoy1iqzHHRvMo6pPIdoif2QMkqJfk7pX7E+09jNXKSGKOSCrxhf7D1H
 d621DpVRpxmTy7r2Ikbp79M7T6yD9k60xpmfUIFokrVs1E2yVDtHM8NjU
 zHvGBmJgNIRS2F7y2zIFs3L4HZ/GEElYTQMO4vdUsKcQhpKRPkveq5iVY
 XMc0NUmUfbTsErTbXPe/sgTlhzpm0BTd38LzH/N5LrUl2eWIsO3l6J19I A==;
X-CSE-ConnectionGUID: P1AZgIy5QoKmeFSAACqHzA==
X-CSE-MsgGUID: weyPrak4S4K74aHEHKK94Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62596155"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62596155"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:20:51 -0700
X-CSE-ConnectionGUID: Iwq0B+UZQhuvsoGrB9kqDw==
X-CSE-MsgGUID: oNWY2AXwTqSYoSOqKbJ6kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="212672166"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:20:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 21:20:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 14 Oct 2025 21:20:50 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 21:20:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CRTwrqbPl6TxJw+M4iarIE8i9VyP5Aas0oXNdh7nMzcsKZ3HGD2bbuHwh8NH0gZsrN8gPjRUb3L1mPilhg4BMvond8NvvtGhoWq/tyxG6LfXhBDEzNT8zJ+gUPQpZPvR8N+azCKflXwPk1wWI/c65jWjPLpsS5jwK5MlfmM/YcQU0tnZTVHL7YkknQhY/MdVtNoXWkzTRj07BsT8DzhquiWl6KZcgzxdiVGv2LPtnTGT7L7RBRXaQnP+/L2e3f6yzGgC8lD36fThY36YBTep7kVNt9zaQi1SlyLWlcQ+Nrb/NFzbXGM8SduJrvGc9L8dV29Il54YVMhXlbdqj4a+kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kiXrysdUwoFi8UQiOiPhfpIip7DBJLv5FX0hRyU99/c=;
 b=TvR4Ny7ZftITijeQVJMTsRbVFRAN6vC0AXj1MARlpZxfR87wJbLOd+eYwjKvMGmPZPPeWBiBlOIxZxBTDGxZuTZaRShePa6XCM3tv7qDVAKgv5/NbcKIqxfxuLGNF0cNMvRUk9PL/lQ3wnl200c/2Z/FSaDXBFJzUZqCP/2XIGEtMBek2AvCMHs8mITktRn5XMkyIfcefZGuKQuLwdVfxfHziWqjrA8qGBSMlc63/zk9BlxAKFJkEj2IcJmr3WWHk1hSsC/CD471ldOWJYZ+L7wBuRI0CM4guv7SPEybiaKDF0qK0rQynxkDN6yU94XC7A3zwciWu0BaBUKh0vUk6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM6PR11MB4707.namprd11.prod.outlook.com
 (2603:10b6:5:2a6::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Wed, 15 Oct
 2025 04:20:39 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9228.009; Wed, 15 Oct 2025
 04:20:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Vodapalli, Ravi Kumar"
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, "Chauhan, Shekhar"
 <shekhar.chauhan@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>
Subject: RE: [PATCH 28/32] drm/i915/power: Use intel_encoder_is_tc()
Thread-Topic: [PATCH 28/32] drm/i915/power: Use intel_encoder_is_tc()
Thread-Index: AQHcPYUIcAtsN5OZ2km3G9BW0mTaN7TCmu4g
Date: Wed, 15 Oct 2025 04:20:39 +0000
Message-ID: <DM3PPF208195D8D59581FAC8BFEFA9EBB9FE3E8A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-28-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-28-d2d1e26520aa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM6PR11MB4707:EE_
x-ms-office365-filtering-correlation-id: 211bb6b1-930e-46e5-15b6-08de0ba2326a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Vy92M1crVTVaTGh5Rmd4aUZtUWlVVS9tMTVOZ0VRNDdGWE4ybHJGMzVmNnd4?=
 =?utf-8?B?ZnBUcTZ3SHRkVjJPeDY1T1RCanR0TDNxWXoxWVB1NVV0YzJweXhSSmlKT2VT?=
 =?utf-8?B?NzZJZWJMM3E0SWVjWkJGQmovWThkSWFCMUJlTk1ROFNJTXV5bVhMOXFNeGsr?=
 =?utf-8?B?a0xRcW1ZTlBFZE5KRG02d0Q1djlaVkVXd0RvcUord1BEVnFaazdUaTJoNU1h?=
 =?utf-8?B?OUU0VDhMQUF6YmpuNkhUalFmanVYUlVRQTM4VktRTXVsNnFaZWJuaGI2anFD?=
 =?utf-8?B?TXNpVHlnNWJ3aVBWWVVzeS9FeGVyMUM0WkJLNVdnUmlpazNQTEd1RmlKd1B6?=
 =?utf-8?B?dUtnRXdaSEF6em9LQStlc1I1MUJhOWZGZVphWkV2K2FOZUlDd2J1QXRGN2Rv?=
 =?utf-8?B?emp4S2E5YTNjK0wvZjZRTzNUaGhWakpwdFVmdm1Pa0lKUEQ2U3dKNEh5QTlK?=
 =?utf-8?B?RSsrL0JOY2hQcHd3RHRwWVhHUXNYL1BOUXRvZHU1dFIrNDhQWE1MMmI2Wmw4?=
 =?utf-8?B?THl1NHYxYVRWZ3psaWtZOFI2ZzVIQSs1Z1NBNVlSZ3ZSYTFYWXJrbmNRQTdP?=
 =?utf-8?B?N2R0Rk5UT2FZSlNJYXBva1p6dklQdGltd01XMzVKcjNFaFVqL1FYbmkxSE13?=
 =?utf-8?B?Ty8vUGVOUE9QYUFkLzVsMlJRSFMva2ZZU0xZYlpvcys2STNEeStxSlVqSUdF?=
 =?utf-8?B?QmtaS1l6eGFJT3pYaG9yRThQSHRKM3F1alk3UnpacEhvd0VOK2pRdVIxZVBT?=
 =?utf-8?B?cjRNc21GN0FCbC8wM0JyVHQ3UTlOSG1UVFNDemJaZEJHdjc5amQrM0MxRVEx?=
 =?utf-8?B?S0kwVlM0Tng4WXRZc25lUFAvNko2K2lSMDRBdFZVbEFTWDEzZTZ6UFN3eWJz?=
 =?utf-8?B?dEV1Ny9zRWVZU0x5QUoxMndOK3dBbll6d3VFU0U4cEt5cGN6UFIvbVUybHJs?=
 =?utf-8?B?WFY2OWxTQ1U3K3gwTTdhKzNJcmJVWXU5UVhaTzNEUXZ2Ri83MzJjRTR5K292?=
 =?utf-8?B?R3d2bWw3WUpkSWVDRWN5REJlWHhFRS9weG42TW5tMFVlWW1uWHRmU2J0bFZj?=
 =?utf-8?B?bWtGS3lUNUFtWEROMEUyN0V3Z3dFRGJFUUxTQ3VHcWlnWVdMbDB6TkxNQWdH?=
 =?utf-8?B?dHpLcUs1MXlpeFErY25nbWk1enNxQzA1YXFnMjUzVlNybitaRVdFU05LZURt?=
 =?utf-8?B?U09aWWlvK3ZNMVRkTUsxMDBObWVUUnYzMzQ5QjZ4bzJIWjdTb1dyTElCUG5G?=
 =?utf-8?B?VzJIZm5FaWJsM0ZXenU5Sk84aWg4MDZSenFWbmh2V2NCbjFVM1lObzBvRW92?=
 =?utf-8?B?QWJNTXZoNGMwT2l0dzNWYXJ4RzJOMlhlcUJ2dHh5dkxPTnFIK0JtVmlaSmRq?=
 =?utf-8?B?RjBPeWlnWDFRSE1EcStJSFY1aEU0bXZXUVdibk5WM01DV2RsZGdlZndTeGEy?=
 =?utf-8?B?Nmc0alBOOHdaVURuUU9IQjRpa0tHdGwzOWlvcDhQcGhoamhGUndYOGpVTXVw?=
 =?utf-8?B?WnIzMExacExSWHZ3aTBVY2doelN5ZXorWXorbThnajQ1NmpDd2JkSnhIZGJv?=
 =?utf-8?B?LzJLVmcwMUxJWkxEcWpPRHU1U3Z4NzliOVVhd2ZpRUpXY1FuWmk0cEgwNXds?=
 =?utf-8?B?QWVCdnFkZUsvZWhDTUFHM00wWTZYaHlUK0Z3NUJFcXhobk4yTm9GQjBoVk55?=
 =?utf-8?B?b3BXTCtDL055RWN5YkNYZGwzOUxrNDA4ZDBZcm9tSEN6RWwyTDlyeHJ6TFcr?=
 =?utf-8?B?b0tEanJaZFgwZmZWc0lIei9JYWYxaGVXK0M5VmVpQ2wwU2VHSzJNUjgwSnJF?=
 =?utf-8?B?LytUOFNUbzlNSXpKdURzVWRMY0J3RHVmVVMvKzRIV1RBUGM2czVsVDJiSjRr?=
 =?utf-8?B?cjJBeFlnOWo3V1RjVTI4dXZHR2s3eUFYUVVKZTkzVFlrWVNxM2p0WFN3eU96?=
 =?utf-8?B?UlZSclNla0tEclNnN2NudHhtcWQ5L3RwRnQrVEZacU4vWk04UDhYR2FNWGU2?=
 =?utf-8?B?NThWNGZZb1gwREtMOXFzNGxYb1NVZnhSanhEQTdaVWNFcnNZODRnWjlXSldz?=
 =?utf-8?Q?u1yh/X?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHZoc2cxVWE4Y3Y0YjZzWHlHenlVRHVVWEZ3aXR5REw5alRwWG83cVlZL0J2?=
 =?utf-8?B?Y1ZsMjE4QnplQ1FFTmN5ZGZqbXN4NFRFajI4UXg4Um5HUEpncWdydTNHUDAw?=
 =?utf-8?B?SmhtRWJNMFNva1ZEaVdyNHRDd2RZeHhnYW1EVy81MldiSXdXV3hVMnQzVHhR?=
 =?utf-8?B?c0JkMHBkQXpNY2NtOFJ1bGtWZmg1SlBBNlNTMHc0Nk5sc1pGTzU2QkY0VC82?=
 =?utf-8?B?T2wwV3dYa29FRFUyY3c2R2VTUTYzanFJR29QNXhvSnZDc2dTUkJ2RWEybDVT?=
 =?utf-8?B?VjRFdDFKb21nRU94bUsreFFEQ0dxVkRhOXBBUFFYR0FBSGEvR2VXNm9ZSTEz?=
 =?utf-8?B?WmJNY1pvcVQrbE8yOXpvMEFmZHBjL1lRR0FvN0FJNFloQ0NRNGUzZTFuU2VI?=
 =?utf-8?B?cDFqYTlFYUxaRG1rU2VNeHNra1VOY2lKWC9uQURrQXZWb0NDa0pIcnRMMllP?=
 =?utf-8?B?OGJhYXBwaUVqYzZrVStOemNIc2lvclhRZG1TdUhObEZXNUNzS2F4bTI2aDM5?=
 =?utf-8?B?Y0kyZ0xtTlFoWTY0K1IzdFlUWVQveTNkcUttd3JNUTdNcFRGQlZteHp4WGpw?=
 =?utf-8?B?UTAvNTJRdUtyUnl0aHVMRjZwelhRc3JJN2xkQk5aU01DZG4wU3EyT3g4Qlg2?=
 =?utf-8?B?Z2YyWTdKa0tPbm5ha2FPbHN3VkxuN2FzL0V5TXBMMVJqTW9PZkoxT0NaQXBr?=
 =?utf-8?B?b3lQZEpHRVErRjZ3V3lOM21ENkY4dE1CQlprVGFLY0tYOHhHL3hMK1U4Nlcx?=
 =?utf-8?B?dkhPeml6VnkxakEwSmVoRmpOV0xFdWJndVBhSlN6dXFaRjhaWmp0b2srQjcw?=
 =?utf-8?B?U0hIMUlLZE1FWTQwTUFRQjBvb0ZOS2U5NXgwWU5RWXY4Nm5zVnBDa2VlemtW?=
 =?utf-8?B?bFRPcVViNlpRa2VzODNPWUlOUXFDcXY4SnR4MmVRSitJYUVINURoamhqMGFn?=
 =?utf-8?B?dHNCV3VGQzUySkxrdnBxaEtrcGlXY1BZTDJhK0JadmdwVGNDUUlhTU1lMm1B?=
 =?utf-8?B?MERSaGorM3QvYWhObEp2bnZ1N2Q5RjlUKzluc0RQeVhhS0d0QWhpMThtZTgz?=
 =?utf-8?B?L1dUVGV1SmdjZFJQSkRDS1BjcUxQQ29ZQ1BkSVE2b2NNcnF2VEFUUko4QWdE?=
 =?utf-8?B?QVlGSkNibDhwMW9ONmVLVForWUhGcnVxSGhCeDlEaG5ITzdpWTJ4NUE2QW1R?=
 =?utf-8?B?eDd5VjZUSzFhTWs5bEt3VlV1VkljZTgzMUNqa3VINEdacXdKaTNlNGRmUnZa?=
 =?utf-8?B?MEh4TFNGYnF3ZWxMb3JBYVVQaW5SSHNsd2c5Z2dXNUlhNDMxSEh0VXk5L0RS?=
 =?utf-8?B?TDZZRmUzTGF0UE96UmNvWmFBOFQxRHZkamFwTHJGYmtkU3BFQThncFE2Z2dR?=
 =?utf-8?B?R08vcDQ1V3lvVDhLeEJLMHBaYjhsbEQ2QXNMamVwc3pMSzVqSkR2NFM5YlN4?=
 =?utf-8?B?d1NWTnF4SU5JRG9uYlBFZlFWWStUS1RSWldMaVk5dFJUWUFaZ2lGNTdxdGl6?=
 =?utf-8?B?eW1HY2wxYU0vd1I2a2sxQXdtblBiSjhGMFJNWjVVNGN2L3dRSVB6d1BRd2hK?=
 =?utf-8?B?d2ZzYVMybVY0WFdaY1pkQitHQjkyaWNZMnlYcG5GNnJVd3g2YXhIQlV4Mm9D?=
 =?utf-8?B?NVNLdmx6OHdpMWtyN0RpK1BWMGxjTTAzY3RqaWZPd083aEUyUzVQMlZHZW44?=
 =?utf-8?B?Q1BYMHlWNUx6MWFmdEdMY2dPN0lCY3JQQlVqYTNtWmM3eWlDL0c2b0t5SkN1?=
 =?utf-8?B?Z1llOFBzWmcxaDJ4RnlBRWVkM1oycXpSSHRNRkFJbFV0czRCR2MvbnJtSjdl?=
 =?utf-8?B?M3Q4ZDZBRms3MHEzbUVqelkrL3JjL3BVUkVoRHltODZWKzhwT2EzbmNFVDNo?=
 =?utf-8?B?dGhuSW1BS2VuMTUrNzlzM3psNDFjNGc4SjJUTnhOTFZHcGZGajQ2N3hncHZ6?=
 =?utf-8?B?aXRDR2FkRGV3MWZqcDIrem9lUG9qaGpUNDVVd0w0cFoyVk1YYklEd2IvbVp1?=
 =?utf-8?B?WVBzM0oyMVN1eE9hY0ppV01FL0dNUHVTaFRIdTdoT0ljOENLcnNuS3g1cTJN?=
 =?utf-8?B?MUhPVU9NV3c1dlhycGZIKzdTU2p2NjR1MUlPWG5hQU4vZ1BXbTIzQ2tBeXNK?=
 =?utf-8?Q?hDrZPoCzA+AOC45NCNzWrMTSX?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 211bb6b1-930e-46e5-15b6-08de0ba2326a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 04:20:39.1132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2iqhYK+8/ABqCdaHsEbb91+tj4+0NLTuPm9dg1FAPVAB0v7syXT9bk3LdZCiEyzFfw75XEzRRNgcbNZ6KqMNJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
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

PiBTdWJqZWN0OiBbUEFUQ0ggMjgvMzJdIGRybS9pOTE1L3Bvd2VyOiBVc2UgaW50ZWxfZW5jb2Rl
cl9pc190YygpDQo+IA0KPiBTdGFydGluZyB3aXRoIFhlM3BfTFBELCB3aGVuIGludGVsX3BoeV9p
c190YygpIHJldHVybnMgdHJ1ZSwgaXQgZG9lcyBub3QNCj4gbmVjZXNzYXJpbHkgbWVhbiB0aGF0
IHRoZSBwb3J0IGlzIGNvbm5lY3RlZCB0byBhIFBIWSBpbiB0aGUgVHlwZS1DIHN1YnN5c3RlbS4N
Cj4gVGhlIHJlYXNvbiBpcyB0aGF0IHRoZXJlIGlzIG5vdyBhIFZCVCBmaWVsZCBjYWxsZWQgZGVk
aWNhdGVkX2V4dGVybmFsIHRoYXQgd2lsbA0KPiBpbmRpY2F0ZSB0aGF0IGEgVHlwZS1DIGNhcGFi
bGUgcG9ydCBpcyBjb25uZWN0ZWQgdG8gYSAobW9zdCBsaWtlbHkpDQo+IGNvbWJvL2RlZGljYXRl
ZCBQSFkuICBXaGVuIHRoYXQncyB0aGUgY2FzZSwgd2UgbXVzdCBub3QgZG8gdGhlIGV4dHJhDQo+
IHByb2dyYW1taW5nIHJlcXVpcmVkIGZvciBUeXBlLUMgY29ubmVjdGlvbnMuDQo+IA0KPiBJbiBh
biB1cGNvbWluZyBjaGFuZ2UsIHdlIHdpbGwgbW9kaWZ5IGludGVsX2VuY29kZXJfaXNfdGMoKSB0
byB0YWtlIHRoZSBWQlQNCj4gZmllbGQgZGVkaWNhdGVkX2V4dGVybmFsIGludG8gY29uc2lkZXJh
dGlvbi4gIFVwZGF0ZSBpbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGwuYw0KPiB0byB1c2UgdGhhdCBm
dW5jdGlvbiBpbnN0ZWFkIG9mIGludGVsX3BoeV9pc190YygpLg0KPiANCj4gTm90ZSB0aGF0LCBl
dmVuIHRob3VnaCBpY2xfYXV4X3Bvd2VyX3dlbGxfe2VuYWJsZSxkaXNhYmxlfSBhcmUgbm90IHBh
cnQgb2YNCj4gWGUzcF9MUEQncyBkaXNwbGF5IHBhdGhzLCB3ZSBtb2RpZnkgdGhlbSBhbnl3YXkg
Zm9yIHVuaWZvcm1pdHkuDQo+IA0KPiBDYzogU2hla2hhciBDaGF1aGFuIDxzaGVraGFyLmNoYXVo
YW5AaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIFNvdXNhIDxndXN0YXZvLnNv
dXNhQGludGVsLmNvbT4NCg0KTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJh
ai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5jICAgIHwgMjYgKysrKysrKysrKysrKysrLS0tLS0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyX3dlbGwuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlcl93ZWxsLmMNCj4gaW5kZXggYmEyNTUyYWRiNThiLi5lODIwMDY3MmRjZjMgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlcl93ZWxsLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyX3dlbGwuYw0KPiBAQCAtMjU2LDggKzI1Niw5IEBAIGF1eF9jaF90b19kaWdp
dGFsX3BvcnQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICAJcmV0dXJuIE5VTEw7
DQo+ICB9DQo+IA0KPiAtc3RhdGljIGVudW0gcGh5IGljbF9hdXhfcHdfdG9fcGh5KHN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiAtCQkJCSAgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJf
d2VsbCAqcG93ZXJfd2VsbCkNCj4gK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqDQo+ICtp
Y2xfYXV4X3B3X3RvX2VuY29kZXIoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICsJ
CSAgICAgIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKnBvd2VyX3dlbGwpDQo+ICB7DQo+
ICAJZW51bSBhdXhfY2ggYXV4X2NoID0gaWNsX2F1eF9wd190b19jaChwb3dlcl93ZWxsKTsNCj4g
IAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGF1eF9jaF90b19kaWdpdGFs
X3BvcnQoZGlzcGxheSwNCj4gYXV4X2NoKTsgQEAgLTI2OSw3ICsyNzAsMTUgQEAgc3RhdGljIGVu
dW0gcGh5IGljbF9hdXhfcHdfdG9fcGh5KHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
LA0KPiAgCSAqIGFzIEhETUktb25seSBhbmQgcm91dGVkIHRvIGEgY29tYm8gUEhZLCB0aGUgZW5j
b2RlciBlaXRoZXIgd29uJ3QNCj4gYmUNCj4gIAkgKiBwcmVzZW50IGF0IGFsbCBvciBpdCB3aWxs
IG5vdCBoYXZlIGFuIGF1eF9jaCBhc3NpZ25lZC4NCj4gIAkgKi8NCj4gLQlyZXR1cm4gZGlnX3Bv
cnQgPyBpbnRlbF9lbmNvZGVyX3RvX3BoeSgmZGlnX3BvcnQtPmJhc2UpIDoNCj4gUEhZX05PTkU7
DQo+ICsJcmV0dXJuIGRpZ19wb3J0ID8gJmRpZ19wb3J0LT5iYXNlIDogTlVMTDsgfQ0KPiArDQo+
ICtzdGF0aWMgZW51bSBwaHkgaWNsX2F1eF9wd190b19waHkoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXksDQo+ICsJCQkJICBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsICpwb3dlcl93
ZWxsKSB7DQo+ICsJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSBpY2xfYXV4X3B3X3Rv
X2VuY29kZXIoZGlzcGxheSwNCj4gK3Bvd2VyX3dlbGwpOw0KPiArDQo+ICsJcmV0dXJuIGVuY29k
ZXIgPyBpbnRlbF9lbmNvZGVyX3RvX3BoeShlbmNvZGVyKSA6IFBIWV9OT05FOw0KPiAgfQ0KPiAN
Cj4gIHN0YXRpYyB2b2lkIGhzd193YWl0X2Zvcl9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSwgQEANCj4gLTU2OCw5ICs1NzcsOSBAQCBzdGF0aWMgdm9pZCAg
aWNsX2F1eF9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxh
eSwNCj4gIAkJCSAgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkgIHsNCj4gLQll
bnVtIHBoeSBwaHkgPSBpY2xfYXV4X3B3X3RvX3BoeShkaXNwbGF5LCBwb3dlcl93ZWxsKTsNCj4g
KwlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciA9IGljbF9hdXhfcHdfdG9fZW5jb2Rlcihk
aXNwbGF5LA0KPiArcG93ZXJfd2VsbCk7DQo+IA0KPiAtCWlmIChpbnRlbF9waHlfaXNfdGMoZGlz
cGxheSwgcGh5KSkNCj4gKwlpZiAoZW5jb2RlciAmJiBpbnRlbF9lbmNvZGVyX2lzX3RjKGVuY29k
ZXIpKQ0KPiAgCQlyZXR1cm4gaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoZGlzcGxh
eSwNCj4gcG93ZXJfd2VsbCk7DQo+ICAJZWxzZSBpZiAoZGlzcGxheS0+cGxhdGZvcm0uaWNlbGFr
ZSkNCj4gIAkJcmV0dXJuIGljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKGRpc3Bs
YXksDQo+IEBAIC01ODMsOSArNTkyLDkgQEAgc3RhdGljIHZvaWQNCj4gIGljbF9hdXhfcG93ZXJf
d2VsbF9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiAgCQkJICAgc3Ry
dWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkgIHsNCj4gLQllbnVtIHBoeSBwaHkgPSBp
Y2xfYXV4X3B3X3RvX3BoeShkaXNwbGF5LCBwb3dlcl93ZWxsKTsNCj4gKwlzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciA9IGljbF9hdXhfcHdfdG9fZW5jb2RlcihkaXNwbGF5LA0KPiArcG93
ZXJfd2VsbCk7DQo+IA0KPiAtCWlmIChpbnRlbF9waHlfaXNfdGMoZGlzcGxheSwgcGh5KSkNCj4g
KwlpZiAoZW5jb2RlciAmJiBpbnRlbF9lbmNvZGVyX2lzX3RjKGVuY29kZXIpKQ0KPiAgCQlyZXR1
cm4gaHN3X3Bvd2VyX3dlbGxfZGlzYWJsZShkaXNwbGF5LCBwb3dlcl93ZWxsKTsNCj4gIAllbHNl
IGlmIChkaXNwbGF5LT5wbGF0Zm9ybS5pY2VsYWtlKQ0KPiAgCQlyZXR1cm4gaWNsX2NvbWJvX3Bo
eV9hdXhfcG93ZXJfd2VsbF9kaXNhYmxlKGRpc3BsYXksDQo+IEBAIC0xODQ3LDEwICsxODU2LDEx
IEBAIHRnbF90Y19jb2xkX29mZl9wb3dlcl93ZWxsX2lzX2VuYWJsZWQoc3RydWN0DQo+IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXksICBzdGF0aWMgdm9pZCB4ZWxwZHBfYXV4X3Bvd2VyX3dlbGxfZW5h
YmxlKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiAgCQkJCQkgc3RydWN0IGk5
MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkNCj4gew0KPiArCXN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyID0gaWNsX2F1eF9wd190b19lbmNvZGVyKGRpc3BsYXksDQo+ICtwb3dlcl93ZWxs
KTsNCj4gIAllbnVtIGF1eF9jaCBhdXhfY2ggPSBpOTE1X3Bvd2VyX3dlbGxfaW5zdGFuY2UocG93
ZXJfd2VsbCktDQo+ID54ZWxwZHAuYXV4X2NoOw0KPiAgCWVudW0gcGh5IHBoeSA9IGljbF9hdXhf
cHdfdG9fcGh5KGRpc3BsYXksIHBvd2VyX3dlbGwpOw0KPiANCj4gLQlpZiAoaW50ZWxfcGh5X2lz
X3RjKGRpc3BsYXksIHBoeSkpDQo+ICsJaWYgKGVuY29kZXIgJiYgaW50ZWxfZW5jb2Rlcl9pc190
YyhlbmNvZGVyKSkNCj4gIAkJaWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKGRpc3BsYXksIHBv
d2VyX3dlbGwsDQo+ICAJCQkJCSAgICBhdXhfY2hfdG9fZGlnaXRhbF9wb3J0KGRpc3BsYXksDQo+
IGF1eF9jaCkpOw0KPiANCj4gDQo+IC0tDQo+IDIuNTEuMA0KDQo=
