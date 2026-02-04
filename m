Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOoWISo5g2ngjwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 13:18:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0E9E5B50
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 13:18:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB1B310E194;
	Wed,  4 Feb 2026 12:18:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G1R4i/nk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 332CB89A5E;
 Wed,  4 Feb 2026 12:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770207526; x=1801743526;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1bu6ODSmflWf9NxkI3QciOgh0fudAionybfw6KJe/rE=;
 b=G1R4i/nklqfGcL9Th/Z6ObOSUMnBtYYZu+GRHMP5Dt7HblmOPw3SSjQ8
 jTmyECZjQLEfz0lm9hSss1ORteJEqXaplgslXKPOUU6hpTGPZ0skj++7B
 oeuEpiFO1KPLEuAU1WxO784fnvMuA3LF0anOgu6SiUfGMtlm0KOq/keow
 QOIALYJ9WdCmsfJpK7DheR80IA4DtvifhZsay4SWqbn+xWMZdJiLLL8xS
 EkIpDnGf1jhWef3YuR4L0XPOJ+mc/YPvSBJb/5J2GSwCxQnmqsQcGqNvW
 HMiTCdCH3IFSp6D1f9WK7TETDz+RxrrNkboVmRzwQ7Bc7wTYrJwmBTaAn A==;
X-CSE-ConnectionGUID: r7RGq2xmQhWJtM5xqTNtrQ==
X-CSE-MsgGUID: +YQLEBmITeCm2PbxXqIXUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71295802"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="71295802"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 04:18:46 -0800
X-CSE-ConnectionGUID: ki+cRqP7RLO9ut7eOgp9yA==
X-CSE-MsgGUID: UyzqgbfIQsenwgrqWYZv3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="247743216"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 04:18:46 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 04:18:45 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 04:18:45 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.44) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 04:18:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KI2DeSm+UzNb9IKyUdviQAtERfxMzUWqvezqmhUsZ15zt+2UVScLX19K7qRLtaWmiBW3L8yvxv73Ga3hWAXZIc81ERbyM6cOnvqlvnkxdxUjqsbg7Yf5jcbWj87VW7aULxGN8SrgLKvXUXfIqHWymbBIpFYf8+sWhZ2ivzCXUL/wtVxjM0Z8WZpCx90N20ekkLN3PDz0rWO4TiKz+VHzeAxtrMJeeBQFHs8IqfTdxtlo/yv/ogqvmNN3c7pOqTeySVjAPevlJih6psdBa6mqZ3EvD2i0h07zE0l8cl2dOOrrJvV24RKIk9g+cbHepPRIwIX4TcuBdrhHbWOAb6T64g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1bu6ODSmflWf9NxkI3QciOgh0fudAionybfw6KJe/rE=;
 b=drxJvYbIVcZfDPg6Y9XvWRZfqkdqc4IEdg3cfMh7m1gpeuwlYqnY0kWTbLvLwU2NNok2hUc0TUc8LeIQ9iU2lqGREr00rTLYZrWZRmyXzuZyRiPjksX8tj8RFtDpen519UkDVivX4YjM6uyXNl67hEep0wG9rWm/fYpV4+9iHAkieZuBTxe+JK4P/Z+v0g3U0R0Q43wZPSd8Zd2GAQoU0iok+DGUs/fqpXJ5RQiEgZkQ+w7IIEn1CRpN5X8EjnTCbozIDw2n/oRKzz1Syn8B28icoFrcrJ7IMfpzgbsllsCNjbQ+seAt8BQvGVlI9T4a6mNHfZoDJP1gJfWYBabv/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CH3PR11MB8155.namprd11.prod.outlook.com (2603:10b6:610:164::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Wed, 4 Feb
 2026 12:18:32 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%5]) with mapi id 15.20.9587.013; Wed, 4 Feb 2026
 12:18:31 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Subject: RE: [PATCH 09/16] drm/xe/xe3p_lpg: Extend 'group ID' mask size
Thread-Topic: [PATCH 09/16] drm/xe/xe3p_lpg: Extend 'group ID' mask size
Thread-Index: AQHclI47hpxZw6ZNXU+vKV9bzQBJDLVyd4sw
Date: Wed, 4 Feb 2026 12:18:31 +0000
Message-ID: <IA1PR11MB626617F4DC280A29DBEFBA21E298A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-9-653e4ff105dc@intel.com>
In-Reply-To: <20260202-nvl-p-upstreaming-v1-9-653e4ff105dc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|CH3PR11MB8155:EE_
x-ms-office365-filtering-correlation-id: e89ac117-bab9-4781-000d-08de63e782fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NjIrT3JSVWFXcmszQ1JOZmNJVENzbXBYTURoRHBNZCtPUEs3TFE2MnFuc2VV?=
 =?utf-8?B?V2N1Skh5K1lLb1Z4aGZNL01zNXpXTHlZQ0JWTENRSnRibzhKRlNrQnpSemlV?=
 =?utf-8?B?eFdaN2ZYZWdOalhJNnJvRlZGVERNQmNwQWRtZDVUeTNqTFV3VngxQmRrajVr?=
 =?utf-8?B?dUNpN1FwZWt5bTlXeTV5L1duTlZQR0ViRmtWV2dNaGdoUGhhL05CMW0rQ1k0?=
 =?utf-8?B?SkJaMVJtajQyanRud1VleXVCQXBqZWNvT1VrNGVaOTk3WjZZcG83Qnc3Mlo4?=
 =?utf-8?B?ZW8xRGFGTXRHWmExTmt4Nmc2eVlwM1JBNloyR2hNR25XRTd4WmxrbGk4MHdj?=
 =?utf-8?B?bFVrM1p5RGhkalpkQzBwNFYveWNzWDBGNGVmRFo4bWhUTGhTQUpCNWFtVkZ6?=
 =?utf-8?B?WGtEQ293ZkpqdENSYnFPcUJJT2VieWptdXBHaVFmaEllbEl3SUxxcTVvcmpN?=
 =?utf-8?B?ZUdKa0g0cDcvT2pvUVR6M0p0K0VKMlA0MG0rTW84bnU2ZjJZRU1HQ0tMdVIr?=
 =?utf-8?B?cjlXNGk4NXRFWFZObFdMUmZFamVtdC9UWHU0K3Z2Yi9HL3h6N1krL2JZcTJh?=
 =?utf-8?B?VXU5N0JxOElyYTduWVE2STRUWW9JdjgxbXFubVhwUzNxT0p3NnJoRm1CRllw?=
 =?utf-8?B?WGc2L2NvbEZxV1VsaHpKSW9QRmtIZDNuRjFzY0pGQ3JIUDQvdWRoK1hsQ0t1?=
 =?utf-8?B?TGJMT3R6eGh3TUdmdzRFSSsvWHFuV2VuT1ZMMjAwWUZJSUtkY3hISldFNE1W?=
 =?utf-8?B?REM3YzR2Y09PLzBpSmlnTXNXd3VzajFrSWRNakV2QlNLZjgzbWcrenQrSWd5?=
 =?utf-8?B?SkYzQTZ6dUxDQklPNkxuNVRhRFMvbmtHTkdvc1FNb3hGcGVqTHErd04yYmtV?=
 =?utf-8?B?NzN2Z3FTVVFhNk9aZWNDc1hHK3pMYUdsSWVTcnFFR3BYMituVFVnS3IyakxK?=
 =?utf-8?B?anprOW9IS1RKS2MvR2M4QnJaN0tGbVQ5SUtpSXRXcVpvL2NLb1U5ZkYybXQ2?=
 =?utf-8?B?S0gyZUVCNVE2UERwbFc2TUVMdVJ6T2Zmc2c1d2UzTFZCV0Q3cFR5Nkl0TFVl?=
 =?utf-8?B?VFRHckwyaVlETVpwRFB3NnRtSmVOUjcxK0pZanhPd3FIeFBCZ0d5NFVnL01B?=
 =?utf-8?B?eitzRXdLVGFGaG5sSjcrbmlISUNEUnJZTnVYZWN1Zno3aG1wR0VKMlJSRkpT?=
 =?utf-8?B?b1Z6RE5qN3kzSkZrTWdVRXNUdEdnU2lQNE8vUVhIQkhOU2FqV2pxNjBOUlVo?=
 =?utf-8?B?enc1VVllbUZBTUtaaUNNY0ZzdzJLSzc2UEU0R3RSalJ0Y2p0eGFxM0REZ0sv?=
 =?utf-8?B?dkZha2lucmNFVHJSbU15bHZDOXZPNDNneCtwck0wTmZONzB4bXdYclgxN2pS?=
 =?utf-8?B?NHdZc09TYUxBNHQ5NXZReEE1eUtQOFl4SVgwdWloOGJPd0JORXNrZWEwSnBV?=
 =?utf-8?B?RHlYelpodUlzakxhTUNQRmZRSkhzV2dxT3lmNTVUeWlYb0lxQXdmQW1SZVlT?=
 =?utf-8?B?U3dDWGtVSVpDRWFmZ2tWaktTVENYTjZxYWg1eU5ZZzlxUlVyZzIvNEdCYkl6?=
 =?utf-8?B?YXRWdW1IOHJvT0hrSldTQVQ4TUwrb1J0d0wzaVpoM213VERzT0dCR1dBeGVQ?=
 =?utf-8?B?WDFOdndYai80NWFJdG5BYmcrUUJZdzVSbVNlUEFKa28vRVNnd2pKVkswQzJz?=
 =?utf-8?B?dWlqU0FrcVZLa0FUYmpPS0NRKzlMV1pCV04rcUdYR3VjWTZYWi9jNzFUVjlD?=
 =?utf-8?B?UGdVRHFScFhtSStLVndWSnNTMXRjaDZuZkdRKzZ3Qk5WSkVUUTBSWlcwVVY4?=
 =?utf-8?B?UjJ0WW5hQlQ3bnJoSG5yektqMUc0b0dTL3NsdHhsU2JkY2Z0b1NFSVNpZUV6?=
 =?utf-8?B?eUszdkdCRDFZNzdFOVFTak12ekhQM2NVN1dZak81Q0VvY3RnaWo4MElSREh3?=
 =?utf-8?B?RTdTcDV5SkF0MmNGdDdGbzFDckR1enZUU1U1TE9lZ0NRODNSTGwwWVpRK0FI?=
 =?utf-8?B?K1U3NktSTGlDWFF1aVhQNzNCOUFtUElmcVRSaFNRTnFvRjVYQXlzNThVOUhI?=
 =?utf-8?B?RWtBSnRXWklVRGE1VWdtS1J5WjhZdFlJK3JGdXZZTnBhL0FYamJMYWFiRWh2?=
 =?utf-8?B?ZHIrTVE0QUpaUVNsdC9qZStndXpOUW5zVldoWEcrSjhjWmpTeXJmNnhTSU5E?=
 =?utf-8?Q?lGPlXwrOb/f1f12RBEcotzQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K0dsSlZtUE02Uk9FREtaR2VGdEtqZjVKZHBqM1R4akcvZjM1TnR6dzdJSW5m?=
 =?utf-8?B?cDR4c1ZGMUlZQ1YyTGVTMDVNbG9NQ3dQR3NSUCtjK2xGaXI4Zm5MeDBVdW1m?=
 =?utf-8?B?bVVnVlVhRHp2MDE5OWp4UWtCZlZoUE5CcGlGWnpqM001UDh5Y010NXd6RWRY?=
 =?utf-8?B?aU1RZ0Y4QWVheVFQbjAyQ0REYjF5WXR4R1FDY3Z5S1lJM3h2bEJ2Uk1HbGhm?=
 =?utf-8?B?bURoNC8ybHE3bE1vT2RrWTZIN2xjYm8xcEM4M1RlYnMwNENkV3plQjF1Kzhs?=
 =?utf-8?B?bGduWitBOUJIVHVIRjh4c3RzNnJvQ2FndFI5VWRqOGZtdjBNZzdnUTl2ZEpl?=
 =?utf-8?B?WE5kZ2VmZ0xCU1pqSjNDTVdTQkVCU3drOXpyVXJMOFo3eC83dGJsbit1amxn?=
 =?utf-8?B?WnYwRTJwWTdEZnN5SnpFWXV1NHhzRkljcEhKcmZackZZVTVYZ1FpYnpCQ2pC?=
 =?utf-8?B?UzU0SnpXWEl4NmVZMlpIaXZWdHhhVVRZOENzemxEWlVPRGtaWXdtYkFZNmJJ?=
 =?utf-8?B?dkZ5b1VYNWphcktDVFNLV1RSc1RJcGFhdGk5STJhT2lMOFlGanZKWlVhS2kx?=
 =?utf-8?B?YUVMTm5UQjAxSXhuM0swNG5LejRFemlYMEdxNDh6Q04wQmhmbGlCQmk4YnNN?=
 =?utf-8?B?WW9CZWNUR1FwejhtL0RFekxnM3JiNkwza1V0M2tBT1RGU3RVYjErZ1N3UlZy?=
 =?utf-8?B?ckJGS1RYVG1lajJjZEtxcHN2YzJ4R0xzZTVlNU4vNVJWa2oycWJrM0M2clFK?=
 =?utf-8?B?a25DOTh6aXE2NUt0TWdzalUvQmhqMS9jQk9aeVhxUzlqdkMrSEpkUyt5WEQy?=
 =?utf-8?B?alZqb3BmK3VvTko2SGdObHZmeDQybWVDaTVBbGRHK2RVOENEZVBTN1MwbFdq?=
 =?utf-8?B?c3grNnFHOFEyd1JFV1lwUmdRTHB4azlLbE5CeXdPWnBuci9iRXFVby9QeTE1?=
 =?utf-8?B?T256bGlmZFVHZ3NQeDVpa0ZCUDF0YjdhOTlYcUtDK21sV01abkVIV2tmRURk?=
 =?utf-8?B?NGRvL29POEV2NE5ZVFhYM1p3cnZrNGFDdTVOcXUzODkrbDk1OWFkTVJ6YWZS?=
 =?utf-8?B?cnY4UnlRdEd6SVY2T3ZuZ0tKL1hRQ2NVWkYzb3VtMStZK0hzRXd6cW1rRDZV?=
 =?utf-8?B?RURjUFZseXBnK0lvWG93MUpWSVFSL0tITFJiVUpkeVFtQUdRWjRhMFpwdElx?=
 =?utf-8?B?WjZocnRKR3lzeUlrNmphdzdRMk8xQlhhT093eEFBeWl1YXJaQkdyQmFVdzRX?=
 =?utf-8?B?WURCTlpnRW9pMElVZjFORDIwS0FvR2U4R1NmamkxSS9ybVhXVEpLeDdjMFpR?=
 =?utf-8?B?MFNuOGkzUmw0alZVWXVoK2p1Z3VBY1FRa1NiL1dHbHNCM1dWQmdiN3NDRysy?=
 =?utf-8?B?c0x1c3daL3E4SDV2VmpUTVZQS3FVYWkwNWRUSXhjdXRRK1c1bGNLMFEyS2Fv?=
 =?utf-8?B?czF1dEtEOGx1NlllTmlDUzN6Q3FXQ0I3TjZLMldadmlFMVAvSllEUk9OVkN0?=
 =?utf-8?B?RUJvZUM5U0VNSXF0bXluRTZJWWduNjdPYk9EQlpvd1M4RlVYaEJkWWZ6blZm?=
 =?utf-8?B?Q0hDU2k2b3REYWFDT1F5SWhJUW5yemhhdktibFMzanNWWGNSR1dUV3NFYmcr?=
 =?utf-8?B?aW1MV1JXTkZ5bG9MUVFldWMxbTM2ejhJaUNnUUZrdWpqd0dKSWdTOE01Vnh0?=
 =?utf-8?B?Y1lHeThjbmVNY3JpK05EOU1xU2ZYUGgyYksrdUFmS3d5bVM0ditiemNEU3Bi?=
 =?utf-8?B?K3VHbUo2L1Q5S3Q1ZXNaVU9oT0tjWlcvS2hkYW1KZW9wZyt3a2doM2xKRlEw?=
 =?utf-8?B?UFVoVEFIYnFQQmhoaGpKMEVLRmpyaVkxZWEyU21DNWhqc2F6TElZTzQxVklL?=
 =?utf-8?B?bXhGR01DdUJhZTBWTWp5Y3p1cHhHWnBpRjh6ZEZ5WGJxb0NIMWZWUjJOZGlW?=
 =?utf-8?B?enU2MDBTMVRyeXZMYzNZWW5BVVBKRkpaTFpFSC9DS0JZeHVGM3JFaGFyWUxh?=
 =?utf-8?B?L29xUTlXTStVbTE0c2hNbFFyVGNTN1lxZHU5RVNneGlici9BVTlFSE5UQmFk?=
 =?utf-8?B?SHhPb1c5SUlzRmFkdmRCRnNMZDNMQnlwMVRlN1doRERtbnZFMkN1ZXpGbHNa?=
 =?utf-8?B?UDhsczdST2hEQ01SSlgvaUZTc0tFaSsrMVh5MXRCOWhlQ3lITHBhVFB5UFV4?=
 =?utf-8?B?d21FM0l5N3pMV3dEZ1NIRnB3MVZKR3RBZlZxVkxRRHJYaGdqQ3ZVWlE3bFky?=
 =?utf-8?B?eG9yS0NvWVFwNGxBNFNqeEZBQWUxOUFxMlZTM3JKZEtybHl6WWQ1T3FKVzFS?=
 =?utf-8?B?ZDBwU1hXV1FJMEgrYjRlVjQ3MVFoWW5lcEJ0OVZsRDVwc2VrVE1DUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e89ac117-bab9-4781-000d-08de63e782fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2026 12:18:31.9122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h60kvQQHdg3JZocVvCy50jlbX3TJyjcGSKQn33GbGAcyG5Bigu/1nBANe99I7zKygY1yHgOV3vvpjjzm3rDIQlW5WtnnlX1at6vA6sunpn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8155
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,IA1PR11MB6266.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dnyaneshwar.bhadane@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AC0E9E5B50
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgR3VzdGF2bw0K
PiBTb3VzYQ0KPiBTZW50OiBUdWVzZGF5LCBGZWJydWFyeSAzLCAyMDI2IDM6MTMgQU0NCj4gVG86
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBDYzogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPjsg
Um9wZXIsIE1hdHRoZXcgRA0KPiA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIDA5LzE2XSBkcm0veGUveGUzcF9scGc6IEV4dGVuZCAnZ3JvdXAgSUQnIG1hc2sg
c2l6ZQ0KPiANCj4gRnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4N
Cj4gDQo+IFhlM3BfTFBHIGV4dGVuZHMgdGhlICdncm91cCBJRCcgcmVnaXN0ZXIgbWFzayBieSBv
bmUgYml0LiAgU2luY2UgdGhlIG5ldyB1cHBlcg0KPiBiaXQgKDEyKSB3YXMgdW51c2VkIG9uIHBy
ZXZpb3VzIHBsYXRmb3Jtcywgd2UgY2FuIHNhZmVseSBleHRlbmQgdGhlIGV4aXN0aW5nIG1hc2sN
Cj4gc2l6ZSB3aXRob3V0IHdvcnJ5aW5nIGFib3V0IGFkZGluZyBjb25kaXRpb25hbCB2ZXJzaW9u
IGNoZWNrcyB0byB0aGUgcmVnaXN0ZXINCj4gcHJvZ3JhbW1pbmcuDQo+IA0KPiBCc3BlYzogNjcx
NzUNCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5j
b20+DQoNCkxHVE0sDQpSZXZpZXdlZC1ieTogRG55YW5lc2h3YXIgQmhhZGFuZSA8ZG55YW5lc2h3
YXIuYmhhZGFuZUBpbnRlbC5jb20+DQoNCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS94ZS9y
ZWdzL3hlX2d0X3JlZ3MuaCB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS9y
ZWdzL3hlX2d0X3JlZ3MuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9yZWdzL3hlX2d0X3JlZ3Mu
aA0KPiBpbmRleCBiNWE3Y2M0NWYxM2QuLjE5ZjA1M2E3ZjliZSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3hlL3JlZ3MveGVfZ3RfcmVncy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS94ZS9yZWdzL3hlX2d0X3JlZ3MuaA0KPiBAQCAtNTgsNyArNTgsNyBAQA0KPiAgI2RlZmluZSAg
IE1DUl9TTElDRShzbGljZSkNCj4gCVJFR19GSUVMRF9QUkVQKE1DUl9TTElDRV9NQVNLLCBzbGlj
ZSkNCj4gICNkZWZpbmUgICBNQ1JfU1VCU0xJQ0VfTUFTSwkJCVJFR19HRU5NQVNLKDI2LCAyNCkN
Cj4gICNkZWZpbmUgICBNQ1JfU1VCU0xJQ0Uoc3Vic2xpY2UpDQo+IAlSRUdfRklFTERfUFJFUChN
Q1JfU1VCU0xJQ0VfTUFTSywgc3Vic2xpY2UpDQo+IC0jZGVmaW5lICAgTVRMX01DUl9HUk9VUElE
CQkJUkVHX0dFTk1BU0soMTEsIDgpDQo+ICsjZGVmaW5lICAgTVRMX01DUl9HUk9VUElECQkJUkVH
X0dFTk1BU0soMTIsIDgpDQo+ICAjZGVmaW5lICAgTVRMX01DUl9JTlNUQU5DRUlECQkJUkVHX0dF
Tk1BU0soMywgMCkNCj4gDQo+ICAjZGVmaW5lIFBTX0lOVk9DQVRJT05fQ09VTlQJCQlYRV9SRUco
MHgyMzQ4KQ0KPiANCj4gLS0NCj4gMi41Mi4wDQoNCg==
