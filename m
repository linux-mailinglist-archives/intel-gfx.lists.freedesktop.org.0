Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 308BDA96497
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 11:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B8E10E2C1;
	Tue, 22 Apr 2025 09:39:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YixTREOp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28EBE10E1EA;
 Tue, 22 Apr 2025 09:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745314757; x=1776850757;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H1G7e2WZuAHwY+m6EOn5F5/RD0gsp5i0hvhqBXX0Yk0=;
 b=YixTREOpyh358wZk+SKUVMcQJRFXkDalqy5R2i6x/8sdu0QMgYRt7Neg
 kSuShZymvx79NiIsMR+lFbx+3PCYO2YFulS8EB7j5tP53kukseg7xo4Z5
 U08B3f3b9rRV+/ZEoelcTRmrDCTlpzscEZKESdrztUKa53+di3Kacy+++
 5h0rfaemdGRqlJhhf8wnqeFwFwLDfWrqUEZW+5yIUfKgmyzs1QA1MSKay
 qi7FjmGCu+u6k54VFEJUf2wkaJZZaE/ja3E8nFCHqNAc8x/WznJ0sqCpq
 UQH0ZhinS0h9uWhdlZyIeQsWZMEztR4t9Nok3QJLiBWnlZhqFZnE01vXs Q==;
X-CSE-ConnectionGUID: lpbT5PigTySidJUsiBwQKw==
X-CSE-MsgGUID: pzKNLXxySPyy4HSKSOZRlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="50668224"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="50668224"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 02:39:15 -0700
X-CSE-ConnectionGUID: dof3ojgSSUuusdK3uBJsgg==
X-CSE-MsgGUID: c0QCjfXERhy1rnKXNIgk1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="137051513"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 02:39:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 02:39:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 02:39:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 02:39:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SwLcxWQjlVc1PtHsHnQuCxd1cS1oG7HODEmW0gVMvsgQm4xvFSHU9IrO13R0JSpJaRn95VDi5mFwbzZbYFme3BUnkj2y7GbhuZCtlxRjKwJaSKNln1GcQxOjnoCACrI/bH8sZxjytCv1QmkoCtlTM3SWDaoAN3NP0F7A9Y0zy2sKUU9xwpYA7xsRf11sqoLHNxlHLCAg1FHoRu0fMkShfntisU819+JDcCQ6JxelSlUkhpID1+y6Pa3wtyjYFGW44IE2jJBjBHklbrN1oQDo5jkWdKTUp8UBSnUR03Fn6aPBXRTd4OEWrrgxjRJ9yeUJhspnxfNF7n07Dt5aYOjpzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H1G7e2WZuAHwY+m6EOn5F5/RD0gsp5i0hvhqBXX0Yk0=;
 b=wASCamoJk+WaDcoaZw1C8U/mLOViDnqB8ZgZ/KezOwukiqME49c4nGnwqehgmYc9a71eGSUaxQBP8iHYszTp5awHpktufdcxmiP73rG1t0I6oNmMQkIIadkZuZIELpVn2f2QQj2LM4N9ob8apxVniD13jqiY4I+FCh2fUQheX+NqZbLXNvd0JgE8ovp6sLUHKwd1z7j+SwactIxd1EmeMAhwTfM8TRsXoSuVWpiUh2DkiFDqvZDveY59l6NKXubzmqZmBUzl6D0js55xdhxqnJlJJp+4XoF1a2jG841q8EwgkA3iBHvqoz/c66ACqaLh7vU+PEL+uCzALmO0F1/XTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH0PR11MB5251.namprd11.prod.outlook.com (2603:10b6:610:e2::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.23; Tue, 22 Apr
 2025 09:38:49 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 09:38:49 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 06/13] drm/i915/psr: Block PKG C-State when enabling PSR
Thread-Topic: [PATCH v3 06/13] drm/i915/psr: Block PKG C-State when enabling
 PSR
Thread-Index: AQHbrSXenkuTxNQqqECExLuiSOgkNbOvelDw
Date: Tue, 22 Apr 2025 09:38:49 +0000
Message-ID: <MW4PR11MB705454EB6937B57E8DA90D77EFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
 <20250414100508.1208774-7-jouni.hogander@intel.com>
In-Reply-To: <20250414100508.1208774-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH0PR11MB5251:EE_
x-ms-office365-filtering-correlation-id: eca2573b-8414-487b-62ae-08dd81817c58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Tlk5UW1jOFdXcEthRXVhYzM4cE8yWHlVVXo0T0dzZEJtT244VmNIZ3g0bkE4?=
 =?utf-8?B?MTQ2a3c1bzVERGtyTFFXOTg0N0VOOWV2dytYQi9JZ3pUQSs0N2lqUDhRTWtK?=
 =?utf-8?B?elZtMjZtOFNxNmt0anlld1FpVXkyZmtqOWRhZkl0aDh3YXMyTDdSaTRNWmhp?=
 =?utf-8?B?dWFROEpkZ292RFlXMGNkVEY1b1RtMm1yZFNmd1dOR1NOYlExQXZnV1dMeEcv?=
 =?utf-8?B?bkVHVHkrTytaYlExaEV3YS9Zam5SQUtQWDVFaVRXb2NCdU1TeDZOZE96Y1Nr?=
 =?utf-8?B?cmd0bjF1S0NLcGJrWFZDbzI5bzJFN0tUUHY0RFE0Tmt0ZnkvUVJieG14MGh4?=
 =?utf-8?B?OTNCcGs4SDBFZ3Z4OXZqMkFEMlJYZlFIL0tPYmJvOGl6ZnAvK3ZrL0paTUhi?=
 =?utf-8?B?aFlrSTFibm83UVF0eHAzdmt5Ky9tdndia0pFRFgvbThWQlU0b2RNOHByUWRW?=
 =?utf-8?B?Mk5VNVNLc3I3eTA1SXg5ak13RytqN0UwTlY3WnR0Y2dXbk45QTEra0NZTlhu?=
 =?utf-8?B?SmhndnZsdEczSFJrcXVRK1BieEdyZEc2YkZBRjFyeVUza0VzMDBYRmtmdGJq?=
 =?utf-8?B?SmJnNTNVYWRwMzlYdTh3elhGR3RwQlZXYlFCajRMdFk0TE9LSjVDdjFQbktq?=
 =?utf-8?B?dlgwWWp3U1cwTVp3NlhGN1c2TXY5dUNZVm1YeUcvWkRKcHhmNkpGS3FFT1Zq?=
 =?utf-8?B?ajc4bzFtb2dpNW03azRMU21FTmJPSFFCajNFMS9jOFZVcFYxSkFXMWEyVEpq?=
 =?utf-8?B?ZnB1c0xhd2NhV2pxcXVxMCtJNWJLRjhQaHFnTGtWbUNtKzZUdWxnNm5PMmNC?=
 =?utf-8?B?V1JDV2x1OFFob1dpMzJBQnlZM0FUYjFraHVab1hidjdoMTRlS2RhQTQrWFJ5?=
 =?utf-8?B?ZDVXam1zUW9pZTVFbTdjdytmREdNYWwwNm9TK290MCt0ZEhXcXhrYTg4Q28z?=
 =?utf-8?B?NXh6SlVVc0RBTkFkY2ZJN3ROalB6WlVVdzZRM2lWKzZoeVBBV3pFNVZlZ3dt?=
 =?utf-8?B?SmtYRUIydE5sZm96a0NKRGtHSmNRa0xrQWhPYkNZcTVTOU5PS3NjVVJrVjAv?=
 =?utf-8?B?K1dFcW5rb0NHMnplUGhKZU80ZFQxMVpvWndvM0RzcVpaSXo4R2FBeGRaL0Vx?=
 =?utf-8?B?ZUpQUjBuakRzY01pZjZHL3hOUkFBV1hudlNWTlpuMGk2ZGo1aDd2LzhVWmRE?=
 =?utf-8?B?NUJDZkQ1NTBObnRyVVZjK0REY3dRbUg4WU1Lam1kNzRoSFBBNllBRHN3QkQ0?=
 =?utf-8?B?OFlMY1hYR1gyeFR4NUg3dkFZZmR0aDVQb0paWkhBSk94ZDYzMnlTL2N4Wmc5?=
 =?utf-8?B?SDZOd09xNi9DdFM5ZDdGV01XK0xNYTkzajFIQVQxUlJjakpzUWZwdkp4d0pU?=
 =?utf-8?B?MFJTT3hsTm1xQ0FmV2p0V01qT3NHdFpkdjBpZ1VKNEpVZHBLOWt2dWhvakNk?=
 =?utf-8?B?YmJ2bUlocHQrRlBXT0NBdm83M3M1a1hzQzFZVGx3V0wyZVdmNVRsRXgwMHY0?=
 =?utf-8?B?U0g2WmNmNmxwdmtRbmowY2hFMUhqTDVVME1GYVNNV25OVkJ0TWQ2b0RzN1lq?=
 =?utf-8?B?R1FONkpBSHJkc01hWTA2R3UwRGlWTGZqaERmbXprbWs0bmo4K2lSSmJPcURS?=
 =?utf-8?B?M2R3c1ZHQ1Zmb3hzSXpLN3hPUklUWFBOc1YveVovU2RlVHpCNmdEWlpvTGlN?=
 =?utf-8?B?ZUJWaVlMMWFBeC9Bamo2VjNlSmZiOVkxWGd1aldjZW55T25sRzUxNmVPdGdj?=
 =?utf-8?B?VXJUczZ3M3BXV0hRbGlNekQ1emdJYTlPRkZkanQ3TG1DbXdhcU0wVFhDbU9n?=
 =?utf-8?B?QlI3VFlHVkF0MWZKLy9LdmlmcGc1UTBxcjF0MW1ETFFkQU5lTFVlbFpQZnFk?=
 =?utf-8?B?bTR3UUU5ck5mSW54NVc1eFdaV0pYNUtrRHdzTksra0dTS29oQ0RBajgxRVp1?=
 =?utf-8?B?U2UzeGhXZlBCRDMweGhJQ2tJZTlCZlVlQkZGM1dTczhOc1ZYNmUwZUI4RUNz?=
 =?utf-8?B?alE4dUd1NnRBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bjN2b0NaemtHR0U3Z3Q1T3FodU1Sc3BEVjlRU0dNWlh4RkJLcnR1N0x1S1pL?=
 =?utf-8?B?U21pelRvb01Ia2E0R2dpejdJaGtWREFkV0ZhQ3NZL0U4Umh0RldGYUxseS8z?=
 =?utf-8?B?QkRMRHBSR1dtSEFsbEs2V3JVN0hnVTBlSURucERwQ3p0NG83enZzY3FnZERr?=
 =?utf-8?B?YU1qbUJidXY2ZnRiVENlZGxVZDhCTlpIZFprVldEaGhoWklQVUxEQTN5S2d5?=
 =?utf-8?B?Vy81THhRN29wa201K1FES1JrYXBqVjVycXI1ZEhCTC8wdXVpUzlDTllRajhB?=
 =?utf-8?B?dW0wK1NyVWZML0VEODQwckRQU1VmMkJtSEs2NnV0MGpRY3RnT3orUUcyOVBP?=
 =?utf-8?B?YXNYRElaTHBmU2Mxby9zL3lQRW9TN1JJMHhCUFNrZjNGM2VFdEVKKzEwS0wv?=
 =?utf-8?B?L0ZValFTN0pOTEQ3M0owcDVLbTZaV2NrT0pqVG1XN2F5TStpeHdqeVFheFo5?=
 =?utf-8?B?SXZYajFLVWxPWmo2MDd4bjE2YXBwNkNyYkdRSUxhWHJxOXB2REpTWWdwdmxR?=
 =?utf-8?B?c2RKbDNIR1R4K3NRQXFtdnNFeGZXWnU1azVxRk01a3V5cXdKdFZPM1E4QTJa?=
 =?utf-8?B?SUp3MWpNTWNnbWQrZHhlVDZKdE9oYUF6Z09XRTZrNUhmbkQvNVA0cnRHaEtj?=
 =?utf-8?B?ODJsbWRKU3llTFByMmJrS0RzQWduNmEvbXQ1SVlJWlZoclJjSExwNjlpQ1Vj?=
 =?utf-8?B?UEJFREtLaHRjd3pZcTlKSG1HK3JoQW1Sd0N6TXlzenEwRVdJSUVhdTRCc0xT?=
 =?utf-8?B?RVhyZVgzZDhyOExqUjVHenVxdUpLT1djaEdzdnNNZnVMNGZzY0lRRVlTbnF4?=
 =?utf-8?B?NkRhaE4xYkJaZHBYL0MvOHM4Sno0VmFuMzl0aE1SNHdtOWtJUGhFSCtHMDZW?=
 =?utf-8?B?Q1F4ZVpxZHNMMEpVbU5qMVlEN0FaSTRJN25nZVk3NE1Uc0hHL0xzZnJmb3JQ?=
 =?utf-8?B?OE5wTjVQNHNrZXVkN1duZG1KR1gvQWYyaTlZcUlWdU1VRHA2MUltWW9RaFdN?=
 =?utf-8?B?YkFQTFpGZ1NnUEE0VkZqY0MzUkRyRWNZR0hOaE14UkgwZzBCcHNSTTlyd1dy?=
 =?utf-8?B?ZXoxbENtRmJOVjBGTTUxZzhpUnNIUnk1TCtDYys5TStrU0hiRWNFSXkyZnJS?=
 =?utf-8?B?SVF5WTZtUkQ1d0QrSnN0dmxvZTFBODFIY2ZQQ0FSbE1VYVhWcnpoWitsZ05p?=
 =?utf-8?B?SGxKK3JycktISnBMYittNEo5dndMK25aY0hrZW1LOG14bVF5TkJCajROTkt5?=
 =?utf-8?B?NWU0R3U1REN0T1NkNmNxMTZQbEovcjQ3U3RSdXh3cERJVkVNcEpsRzJBdlZG?=
 =?utf-8?B?aEZqWjBlcS9kU2NzbUxVT3JESEpGTUp1c0pvMWY2bzNuN1JmVG1JUzZMNGxC?=
 =?utf-8?B?NndBcUVNS0p6Q1l0UTFyUzhua09QV1FTYVp1b1J6V0hoQkNHV2VBcldwK2s2?=
 =?utf-8?B?aTZRdmlXYnFFaE1zT21NVXpISlRXQ2UvWUYyZlFIYTk2cWNZMUVLV1VLdG90?=
 =?utf-8?B?OW1JUTFPU0grMVNvRU1uN1hpMmFTTWRvdDFaKzc3emo0RERMeGdkQkdOWGtS?=
 =?utf-8?B?TGx0TVZwN1dWTEo1d1phUUhPdUpZZGFzcThaNVdpTVBkU2N6TVdsT005RFRU?=
 =?utf-8?B?ZkQ5NGNvR1NkMVhNNXUxR0NhL1d1MWVZRis1R1BpU3JNTUg1QkdSSmhSUFpo?=
 =?utf-8?B?YTgzRE44eTdEL1hUSm1JYUgyTU5hZnYwbjJLNkdhbXpDajRpWHdrOVNnLzE0?=
 =?utf-8?B?VEJ1QUlzcC82QkF5NVA0WklYRkdyRG02QW5oNnIvNnU1OWxyR2t6Y0NNNWk1?=
 =?utf-8?B?dVpIWDVHbXRiYXJwNEJIRkdpT0hCaVNjdS8rZCtpa1o3SVhSYkJwTHEyRXdU?=
 =?utf-8?B?aDkvU0ZKRU4rNlduekhaUFNTTmZzRW52bENsTm1vdXNFc2Z0RXV1c05PSVNQ?=
 =?utf-8?B?M3JZSWVtRk1GbzlrZ1F3S2d3UFRUdkhGZzFrRUtjc2pxbGdBYS9wSWJBQTVY?=
 =?utf-8?B?TmtZck9vdnFCU1RqM1hYU2pDSkw5Y09mZXEycUxNbVFYNEpnT0Z1VUxMZHhZ?=
 =?utf-8?B?dnhrK3dSRFJ3VG9adHlpZ2NVN1lCNG92cWJSYU5UM3E4TkxsZnpCc3BDNlNh?=
 =?utf-8?Q?lse+mufiZkcJTXfe0ADUGo9Zp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eca2573b-8414-487b-62ae-08dd81817c58
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 09:38:49.3306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ThVrVsgJYz2VhLeDrh7kMdtyXaYpN2Bv5J564GHN9/amrhX9WQ51JMaUFgIwMuvLEikBu7RYJWc/WJ3WZdYpxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5251
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
YmplY3Q6IFtQQVRDSCB2MyAwNi8xM10gZHJtL2k5MTUvcHNyOiBCbG9jayBQS0cgQy1TdGF0ZSB3
aGVuIGVuYWJsaW5nIFBTUg0KPiANCj4gQmxvY2sgUEtHIEMtU3RhdGUgd2hlbiBlbmFibGluZyBQ
U1Igd2hlbiBlbmFibGluZyBQU1IgYXMgZGVzY3JpYmVkIGluDQo+IHdvcmthcm91bmQgZm9yIHVu
ZGVycnVuIG9uIGlkbGUgUFNSIEhXIGlzc3VlIChXYV8xNjAyNTU5NjY0NykuDQo+IA0KPiB2Mjog
dXNlIGludGVsX2RtY19ibG9ja19wa2djIGluc3RlYWQgb2YgZGlyZWN0bHkgd3JpdGluZyBkbWMg
cmVnaXN0ZXINCj4gDQo+IEJzcGVjOiA3NDE1MQ0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5k
ZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTMgKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAyMGQ1MzI5MmMzYjMuLjQ0YWRlZTA4NzM1MCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0zOCw2
ICszOCw3IEBADQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9pcnEuaCINCj4gICNpbmNsdWRl
ICJpbnRlbF9kaXNwbGF5X3JwbS5oIg0KPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMu
aCINCj4gKyNpbmNsdWRlICJpbnRlbF9kbWMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kcC5oIg0K
PiAgI2luY2x1ZGUgImludGVsX2RwX2F1eC5oIg0KPiAgI2luY2x1ZGUgImludGVsX2Zyb250YnVm
ZmVyLmgiDQo+IEBAIC0xOTUxLDYgKzE5NTIsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Vu
YWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAkJCWludGVsX2Rl
X3JtdyhkaXNwbGF5LCBDTEtHQVRFX0RJU19NSVNDLCAwLA0KPiAgCQkJCSAgICAgQ0xLR0FURV9E
SVNfTUlTQ19ETUFTQ19HQVRJTkdfRElTKTsNCj4gIAl9DQo+ICsNCj4gKwkvKiBXYV8xNjAyNTU5
NjY0NyAqLw0KPiArCWlmICgoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjAgfHwNCj4gKwkgICAg
IElTX0RJU1BMQVlfVkVSeDEwMF9TVEVQKGRpc3BsYXksIDMwMDAsIFNURVBfQTAsIFNURVBfQjAp
KSAmJg0KPiArCSAgICAhaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gKwkJ
aW50ZWxfZG1jX2Jsb2NrX3BrZ2MoZGlzcGxheSwgaW50ZWxfZHAtPnBzci5waXBlLCB0cnVlKTsN
Cj4gIH0NCj4gDQo+ICBzdGF0aWMgYm9vbCBwc3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApIEBAIC0yMTc1LDYNCj4gKzIxODIsMTIgQEAgc3RhdGljIHZv
aWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ICAJCQkJCSAgIERQX1JFQ0VJVkVSX0FMUE1fQ09ORklHLCAwKTsNCj4gIAl9DQo+IA0KPiArCS8q
IFdhXzE2MDI1NTk2NjQ3ICovDQo+ICsJaWYgKChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAyMCB8
fA0KPiArCSAgICAgSVNfRElTUExBWV9WRVJ4MTAwX1NURVAoZGlzcGxheSwgMzAwMCwgU1RFUF9B
MCwgU1RFUF9CMCkpICYmDQo+ICsJICAgICFpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFi
bGVkKQ0KPiArCQlpbnRlbF9kbWNfYmxvY2tfcGtnYyhkaXNwbGF5LCBpbnRlbF9kcC0+cHNyLnBp
cGUsIGZhbHNlKTsNCj4gKw0KPiAgCWludGVsX2RwLT5wc3IuZW5hYmxlZCA9IGZhbHNlOw0KPiAg
CWludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgPSBmYWxzZTsNCj4gIAlpbnRlbF9k
cC0+cHNyLnNlbF91cGRhdGVfZW5hYmxlZCA9IGZhbHNlOw0KPiAtLQ0KPiAyLjQzLjANCg0K
