Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5826FCCF089
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 09:49:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2FB10EEE6;
	Fri, 19 Dec 2025 08:49:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d7nXibET";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39FD810E5A1;
 Fri, 19 Dec 2025 08:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766134174; x=1797670174;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WJxH+0UH1d7eXQKexljonouTkFZF2qbnDc1aSJig5ME=;
 b=d7nXibETZxc8d646jzi8AtQhU9eEOBFU5j7W2RaipH3X0P1EVD/zbqst
 cMJstSICr+CLQPGboAtTR5BmWgLz9hO8+fwqUWP4Brz+uZdIM8xzmZRcD
 35WZQUkfePbXrK6Yt+w7Gxncaf0UOuVlUoL26eZI+lA0mKA5FIz+WXMvD
 fGU/1K3ouErsIp1ZQpL2nELn4yg/wz6VrJMeY9Y8wiAxbdz0MiSrQW+JG
 8eYAxiDZAbVoQ7zx4sTOn9q1nJaUz2m/GOeob1PoKfAYBJcHAE2z4LC3b
 EOgpRUDxMSpLU30dBw6veoWYcOyy467a7alDzgBUEQGIaMXShN7IPeTzw A==;
X-CSE-ConnectionGUID: lsnDtQU6QuiuHpoTflFaJw==
X-CSE-MsgGUID: TkPvEWwGR+uLhe5Ba/zwcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="68068792"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="68068792"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 00:47:50 -0800
X-CSE-ConnectionGUID: 6G5fgNsNSLey/5bC3Yp2cQ==
X-CSE-MsgGUID: tGBPBTL+SlqKqk2jh02Ccw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="197962153"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 00:47:50 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 00:47:49 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 19 Dec 2025 00:47:49 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.19) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 00:47:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w+0D2s8eOTsVXk1t50H+43GyekrMp3CKZRbrkY5qFsUMar/QnXaFt5E8MuTL/M6rd5ZD04Ba+jjL71vdjPipxE3Zv76tHhuG/ON7MKwUN8zsSDRt5A9noHjiHhkfDjBKRGNNtihjOOJ5xsrfkrEhEmOG4LIK0zcyNR0LP6pIz5pa19ueJ9BCP9zPpkXqaA8JNKu8cDMG1FSUN2iGknXOtW9/fF4uekI0NwOD5PqhIY8OdMmMvVR1y9ngZSf3qqX+0nrQqJ3JbEXrllE2NOzZa0sKai/S/wufJzIW3xHZQJslBsz1Jq4WtHx6ulXAKbQKYffVDjvnH4JG5KkA6dVjYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WJxH+0UH1d7eXQKexljonouTkFZF2qbnDc1aSJig5ME=;
 b=ulwrmiYDKBwZZQUY/bGUx6AMa6dZzlL0ohJ1eFT6z4dg4dJnROu6OxnyLPVlj36dIqHloiLCnD8KPWYUJRAk63H0TsjzYpxP1a26EPT5L/UoxNpTJ0K8OEahNIjUpHWrkb9TUcJI3ibIcmJ7LtE6TYLt0SOAZK7U9zDa0vB1QASf4+sT1IQ8Bsyb1jiHT6vXK+oyHG0wKmYIlSW2Ybke3376OfU0cfjKJVsz1kwhx2SBtJjhKdeMO1vMprSKvFDbHeWKvSQ4Y83gCSSjGJ88gu5f1/elZ0guZr81AA/xxvR/dJxtnQdWfezGAP/4HG2pUJiRcwW5fHbmQdKjOExazA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7405.namprd11.prod.outlook.com (2603:10b6:8:134::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9434.9; Fri, 19 Dec 2025 08:47:47 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9434.009; Fri, 19 Dec 2025
 08:47:46 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "srinivas.pandruvada@linux.intel.com"
 <srinivas.pandruvada@linux.intel.com>,
 "sathyanarayanan.kuppuswamy@linux.intel.com"
 <sathyanarayanan.kuppuswamy@linux.intel.com>, "Wysocki, Rafael J"
 <rafael.j.wysocki@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Veesam, RavitejaX"
 <ravitejax.veesam@intel.com>, "Borah@freedesktop.org" <Borah@freedesktop.org>
Subject: Re: [core-for-CI] powercap: intel_rapl: Fix possible recursive lock
 warning
Thread-Topic: [core-for-CI] powercap: intel_rapl: Fix possible recursive lock
 warning
Thread-Index: AQHccCfKZxbLPyj6wU24Vnw6QqZna7Ung7YAgAEkRIA=
Date: Fri, 19 Dec 2025 08:47:46 +0000
Message-ID: <d86366a2871025d70cddfcbd73aad57236b288c6.camel@intel.com>
References: <20251218135904.2276976-1-mika.kahola@intel.com>
 <20251218152142.2286655-1-mika.kahola@intel.com>
In-Reply-To: <20251218152142.2286655-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7405:EE_
x-ms-office365-filtering-correlation-id: 880e9426-3179-4173-498f-08de3edb483c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dTlnT1RSU0NxdGJXOGZObEQxaHJ1ZzBCTUw2clA2c2J3VWk5MWp0NVZoRTF2?=
 =?utf-8?B?a1NkYjJScUxHdld2VnprWUIxOVBRVTVOZzNCN2YzZUxXRUhmR1hjSnJ1SXMz?=
 =?utf-8?B?TDl4cmFGdDN0RXlvTFYvL3lHV3VXbzA3VTRraEN1TklYLzkraUVZV0pMV00y?=
 =?utf-8?B?bDhhLzdzSGlkMXZDdmU0SkQxNElTSVpKb2hHT242b2dsbG4vc1hYUTQxQVFl?=
 =?utf-8?B?NERlSDYwR0R1enhyY2FlZjNtRTEybEcyVFJkbjFQUll2RmVYNXZWUVVDZXBu?=
 =?utf-8?B?MStsWjdCMDhBVzFxK2xZZmhVL1pEV1RKTURtVTlyemxXOUVPOFNjT1Y4Y2RD?=
 =?utf-8?B?cUhGdEVlUm50T2dTYzFhalFtU2FZU1BJWFJOc0ZmZGtZeEJ3eENmMXZNRllw?=
 =?utf-8?B?VkphcEhhUDJUYnFnUXRzUmpVYmZXNG8xZEJJVXlmcVFNN0svQ0J3ZzJMYWk5?=
 =?utf-8?B?MHRHQVpEU2prNnc0azBxSkFMN2R6L25iWHloSnZlQ3RXanZ3ZDhYQ2hVQmJC?=
 =?utf-8?B?cEhFOGdUNnN3RENFdVpaeGVSaDhXSGQvc2x3VEtLZzVYKzNDZXF3aURlYjVS?=
 =?utf-8?B?MWhpVGo3SmdKRFlVY3NXVWE0ZjFnWDlzQ3pXOGllQTk3L0dlSVBBMFVmaUlj?=
 =?utf-8?B?RElVRXptZzBxeG9qS2w0UkkxUk5oZ05WYWVzZUZvZWx2S0g4M1dsTDAzeUNZ?=
 =?utf-8?B?NkJwVDVKMTNpQ2dPK2g1V3dqamVPa3ViQzFNaFlLN0xJM0toN1p4ZU9zb2hv?=
 =?utf-8?B?TkZzeUdRdkVzODQ3cWZLeGRzSm4xWVpJOUFESUNzOVFmSVJhSFpJSnRydmNB?=
 =?utf-8?B?VTVESSsxaUNENnJFdjhpWnk2TUp5UFZsdU9idHlmVFFHMjBONUtZaXlWdmxz?=
 =?utf-8?B?UWFnV1NlR09PcXFjaC9UTmZxaklHWEdZdVErd3lKd0JOdzA4aVh2THhTZEpq?=
 =?utf-8?B?TTYwOFVCVkVWVlVNVlNYQzI2Uko2bEEzbGxJdXpmcDVvazJobzFzYTYxdEI0?=
 =?utf-8?B?Q3NwcDQzVnl2ZGhiN0JpaEhvNjZxajhiTWlLVmhOWVJ4ZTljNVVIVkFicmdp?=
 =?utf-8?B?VjRUaDVxSnlTYkFldVBRdFhsN0xISERhM2w3ZXhnMGxsNkhSVUJKN3E2QWZC?=
 =?utf-8?B?cEc0NHRBYkY4S3ByUnlLVXdDZGhweEpnRVhnbWRTa3lHOE1abnd0Z0JVMFZM?=
 =?utf-8?B?VXB3eXhpWUNqRGd3b2tJeC9DQkwvUUZ6ZVZaODkvamVZSlRJalplQ2VpbFhZ?=
 =?utf-8?B?dFlKUThGTWJybFZ0QzJsc3ZSaWsxSG15VHVLYjgrQW8rZExpNWJKUUR6RUh4?=
 =?utf-8?B?amVlVGJNelVzdXMxL3d0eWpHWVBraUx2N0VkVUxtaDV3MHZEWjdoZldmY1BD?=
 =?utf-8?B?QlY4M05VcGNNWXFxNGs3NkdpTU1meWdndWhwY29iV2hUenEyQ0RDNUR5aGNL?=
 =?utf-8?B?V0ZpOGliSFdiUFJpcGZvTmtFTytTZVlwaUtyWEdNUjRieUxiSXp0c0NGR2dE?=
 =?utf-8?B?WHNNSUMvS0svaThMNTZVZCtLMUVOZGZmOFJEVER3MzhGUktGUG9KWU40V3FS?=
 =?utf-8?B?U0Z0bXNkQzNyTkhvdkhmMmc0TVBGZkV1dUp4ODFWVzdsajByR1ZiQjB6L2Rp?=
 =?utf-8?B?enV0Z2QxTjFndnlsYXVVdHp4Tk1vVE1RZm5QdkFpK0ovQkdudU9mMytUcWlT?=
 =?utf-8?B?TXpxTmtHM25LVEQ2WWxkNW0xamFvTFdYY0kycWZCMm05MXZBbmV3VUN6NlRk?=
 =?utf-8?B?QXJIRkRia2Rpc1h6K04wVFRrdUo4aGlUNEVQZlNEQUNaNnBOTmJuWjk4eEdn?=
 =?utf-8?B?cWl6bHc1WjNHSkJhd2g4UHRINjNULzc1V2pBY1J5SU5OeGJZdmVZUXZ3YVUr?=
 =?utf-8?B?S2d1WEN2QjdwcmljemV2NW5mNEpSWTNPbHYwYUNHZCtKVk5kS2NrWS9pRzZV?=
 =?utf-8?B?QmVWTzh3QW5ncVpVSnJSVVJLMlNJR0RBaDgrWkZxMjZwZFVybDhYS1k4bmZw?=
 =?utf-8?B?YjhQd1FvU0F3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVB3SHEvUVFQc3ZHUkZONmZ0dDkvWEt3ckcyeUxpdTZ2eFU0WWhIbVlzUzJT?=
 =?utf-8?B?NnhaVjVIZFBmVmRLWmZFNlJGbUI1bDVVTjRRaEpzaVZ1c1lCWC9lUXZKaXVy?=
 =?utf-8?B?Vnhwd3ZrRFpNcTNVdlNJUlQwN2hCZnFxR0hpRkhRZGx6NU5aZ2d5SXh4TmVY?=
 =?utf-8?B?UGREUWVXenQrUEFTY2NsRHF2d0NTZTVyOE5uY1k3bURmUzBTYjZtc2hjSWZp?=
 =?utf-8?B?Z3pnbS9na09iaThBOEd0cTlhUFJVa3M2ajZZOXpGSGFSbmVUWnRxZnhDeWR3?=
 =?utf-8?B?OWxqZkdDbitHQkdUQ3VueWkrajhLWGp1Z09zajVieC9CeEZONzFYRkpONEhh?=
 =?utf-8?B?dGcvK2U3Vi9pcUxRUWFtZFd2dEpodW9OcG9VcnJZbWw2aTFIU09JbkgrM3NB?=
 =?utf-8?B?WXUzakVwSUdtOFhNOTlSSXlSR2VhNmlrU3prQkJFVllIMk8wdDdyNk5tNlo3?=
 =?utf-8?B?QWhwaVJxdU5PamJmaGhzaTdVTm1OUzV6OGlrSE53Y0xhQ0xoMTdhVXE3YWtW?=
 =?utf-8?B?OUVHV3hGaWtrMnZXRnpQMUZQODJsSy9oa0Q4ZmtKMFZrMGswMGNjZW9EMzBJ?=
 =?utf-8?B?aDA4RFZzekFGNWdqN3FZMXNOd0FYbkdrMmRCUko2WDh4Y29pN2xKbkxmaUdr?=
 =?utf-8?B?a05QbExNL0JXekVDUG1Jd0V5d0d2UXJwenJwWktiUmVOQzk1NnZzUzJyTGlh?=
 =?utf-8?B?bkRDQWRyMGorYnRJcUFZdklycExZb0dQNERWQkZjdllocEUrYi9UcEU3NllN?=
 =?utf-8?B?TjdQS0xCaUFYT1o4U2tJRzlVTEdzVU9BcnppSXRza2VtdXRDTGxPSjV0QU5y?=
 =?utf-8?B?VC95Wkt3aXc1TXh3VkhDZld0a3dhcC91cEdUYWQ5TUExcldxa2F6RVByQmQ5?=
 =?utf-8?B?QkdlREszcWtDeVJYT0s1eWMyVTZDYnB1REVlZWNEUmFSNnpmakdvSXFlYUc4?=
 =?utf-8?B?RlJIbWJHNEorRDBST0Q5NlFWeGUvajd1dDFWblpicThlNGRLRDd6d2UxOU1a?=
 =?utf-8?B?NEF0OFUyRzBaemhReERWMEptd3o4ei9kRXc1N05RZm9pb1Q2TC91NkZJSnBv?=
 =?utf-8?B?VnBjVklKaFlMVTNDWWpwL3h2S2hMLzhEZTZmUGVHOGFURFNhOU13M1lHUis5?=
 =?utf-8?B?bFhvQ3hSdTZNN205R1VpOERSbGwxdXNKbEtaSzNiOVNQWHpsY0t6UFdwdVNV?=
 =?utf-8?B?T2txbXdMTVdCc0luVTliQnl5bEpOMUV2ZXdTeG8wYmNEbGRMOUhibktQUi9Y?=
 =?utf-8?B?TGIzYlB5M3kxR1p6Nm9iS3hNc0p6R0ZtbDBvYzFqTGtlRER5dUxxTDIvM2ZM?=
 =?utf-8?B?WXZaQU9GSVcwSVpDTnlDVmF6QW4rVHNlTUl1b21kUU0rb01GM0k3dU9xMVRP?=
 =?utf-8?B?QXNpY0FpZS9qbFc2cWk1ZlZmOXkxWjlFemRvcGtuQTdtTG1XZkpkMFdLSWUx?=
 =?utf-8?B?RWJLMmtEOEQyWjFtbEtIemdSNW9GNEJjTUY3WEZhcmk1YkN0aTNRWmFoVHB3?=
 =?utf-8?B?Z0RtQTBEaXJvNnBWaHo0S0ttVk9EOEpUQnB6TC9pN0dYRk5HcFBGV05nUkda?=
 =?utf-8?B?WDd1anl6UkdlY2tuZjVWamJpOURCTm95TEhQUlBBNG9sbndERVlFL3NQOGUx?=
 =?utf-8?B?QzdlY1pNdEFZV2hnZWpiZUxHS1EwZHhVUDNlZGdMSVRxTkpPNDNDR0t6YWNj?=
 =?utf-8?B?WWlxbmgrMWVORXRDdEZlTXYzZ2QyWGJUWFJqUDE1bUFGc0ZDSWpGV2ZjUjFu?=
 =?utf-8?B?V0d2VzJmaUs5MjRKbHdqcWg1SU45a0FiQzZBc0ZwckNpMGpqZkFhaFlDRWZ1?=
 =?utf-8?B?SWpXOWQyZE1veERJNzY5T0cyQ1lCTjlMOHdyQXZqTmQ1Uzd3NmJ4REl0Yzl0?=
 =?utf-8?B?L3FhUTZHK2NJWXNXQTJtUVBoSmZ3SUJIbWRqZkJtbGIvcTgvMEtSd25sMTk1?=
 =?utf-8?B?Vm9Hb2NtVldYa014ZkJoRlJlWjdDT1JYRUpmd0ttdWJpY3lZNTV3UDlGT3k4?=
 =?utf-8?B?UG9uSmI0V2U4YS9tQTBvRm11ZUFTak1yUXZCN093MWxRZXVXS0lFaFlSc2ly?=
 =?utf-8?B?NU1zVS8vaDRQWFZuYzlyd1ZUYzRxajFSekEvTmVJRWRua2ZadlQrRlRTYVRD?=
 =?utf-8?B?MWlkbnpJeDBxNmlBT2tVTEc5Q2JwSERONk9kK1E0NDBvOGVBQ3dsbUprOEdq?=
 =?utf-8?B?RnhrVi9EWUJSZWpRenc3aXBYb3dlWGw5ekJjUjFTc01jbjBoYmFZaHU3bEJK?=
 =?utf-8?B?UVZLeWFZVDRTM3ZBdVpGMllORXpnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <325B65EB31A2604488D6080D772259F7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 880e9426-3179-4173-498f-08de3edb483c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2025 08:47:46.3549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kxpMhPmhBURn4a9SGu1wBsLbNVoiG9oSRCz5CLO2Ap6+Ro6oMjv4o0uIRpg7cMroibYRCFs2S2qBliOd8dF/oOgYF4lOlwDVAYXS7unogQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7405
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

T24gVGh1LCAyMDI1LTEyLTE4IGF0IDE3OjIxICswMjAwLCBNaWthIEthaG9sYSB3cm90ZToNCj4g
RnJvbTogU3Jpbml2YXMgUGFuZHJ1dmFkYSA8c3Jpbml2YXMucGFuZHJ1dmFkYUBsaW51eC5pbnRl
bC5jb20+DQo+IA0KPiBXaXRoIHRoZSBSQVBMIFBNVSBhZGRpdGlvbiwgdGhlcmUgaXMgYSByZWN1
cnNpdmUgbG9ja2luZyB3aGVuIENQVQ0KPiBvbmxpbmUNCj4gY2FsbGJhY2sgZnVuY3Rpb24gY2Fs
bHMgcmFwbF9wYWNrYWdlX2FkZF9wbXUoKS4gSGVyZSBjcHVfaG90cGx1Z19sb2NrDQo+IGlzIGFs
cmVhZHkgYWNxdWlyZWQgYnkgY3B1aHBfdGhyZWFkX2Z1bigpIGFuZCByYXBsX3BhY2thZ2VfYWRk
X3BtdSgpDQo+IHRyaWVzIHRvIGFjcXVpcmUgYWdhaW4uDQo+IA0KPiA8ND5bIDguMTk3NDMzXSA9
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiA8ND5bIDguMTk3
NDM3XSBXQVJOSU5HOiBwb3NzaWJsZSByZWN1cnNpdmUgbG9ja2luZyBkZXRlY3RlZA0KPiA8ND5b
IDguMTk3NDQwXSA2LjE5LjAtcmMxLWxnY2kteGUteGUtNDI0Mi0wNWI3YzU4YjMzNjdkY2E4NCsg
IzEgTm90DQo+IHRhaW50ZWQNCj4gPDQ+WyA4LjE5NzQ0NF0gLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPDQ+WyA4LjE5NzQ0N10gY3B1aHAvMC8yMCBpcyB0
cnlpbmcgdG8gYWNxdWlyZSBsb2NrOg0KPiA8ND5bIDguMTk3NDUwXSBmZmZmZmZmZjgzNDg3ODcw
IChjcHVfaG90cGx1Z19sb2NrKXsrKysrfS17MDowfSwgYXQ6DQo+IHJhcGxfcGFja2FnZV9hZGRf
cG11KzB4MzcvMHgzNzAgW2ludGVsX3JhcGxfY29tbW9uXQ0KPiA8ND5bIDguMTk3NDYzXQ0KPiBi
dXQgdGFzayBpcyBhbHJlYWR5IGhvbGRpbmcgbG9jazoNCj4gPDQ+WyA4LjE5NzQ2Nl0gZmZmZmZm
ZmY4MzQ4Nzg3MCAoY3B1X2hvdHBsdWdfbG9jayl7KysrK30tezA6MH0sIGF0Og0KPiBjcHVocF90
aHJlYWRfZnVuKzB4NmQvMHgyOTANCj4gPDQ+WyA4LjE5NzQ3N10NCj4gb3RoZXIgaW5mbyB0aGF0
IG1pZ2h0IGhlbHAgdXMgZGVidWcgdGhpczoNCj4gPDQ+WyA4LjE5NzQ4MF0gUG9zc2libGUgdW5z
YWZlIGxvY2tpbmcgc2NlbmFyaW86DQo+IA0KPiA8ND5bIDguMTk3NDgzXSBDUFUwDQo+IDw0Plsg
OC4xOTc0ODVdIC0tLS0NCj4gPDQ+WyA4LjE5NzQ4N10gbG9jayhjcHVfaG90cGx1Z19sb2NrKTsN
Cj4gPDQ+WyA4LjE5NzQ5MF0gbG9jayhjcHVfaG90cGx1Z19sb2NrKTsNCj4gPDQ+WyA4LjE5NzQ5
M10NCj4gKioqIERFQURMT0NLICoqKg0KPiAuLg0KPiAuLg0KPiA8ND5bIDguMTk3NTQyXSBfX2xv
Y2tfYWNxdWlyZSsweDE0NmUvMHgyNzkwDQo+IDw0PlsgOC4xOTc1NDhdIGxvY2tfYWNxdWlyZSsw
eGM0LzB4MmMwDQo+IDw0PlsgOC4xOTc1NTBdID8gcmFwbF9wYWNrYWdlX2FkZF9wbXUrMHgzNy8w
eDM3MCBbaW50ZWxfcmFwbF9jb21tb25dDQo+IDw0PlsgOC4xOTc1NTZdIGNwdXNfcmVhZF9sb2Nr
KzB4NDEvMHgxMTANCj4gPDQ+WyA4LjE5NzU1OF0gPyByYXBsX3BhY2thZ2VfYWRkX3BtdSsweDM3
LzB4MzcwIFtpbnRlbF9yYXBsX2NvbW1vbl0NCj4gPDQ+WyA4LjE5NzU2MV0gcmFwbF9wYWNrYWdl
X2FkZF9wbXUrMHgzNy8weDM3MCBbaW50ZWxfcmFwbF9jb21tb25dDQo+IDw0PlsgOC4xOTc1NjVd
IHJhcGxfY3B1X29ubGluZSsweDg1LzB4ODcgW2ludGVsX3JhcGxfbXNyXQ0KPiA8ND5bIDguMTk3
NTY4XSA/IF9fcGZ4X3JhcGxfY3B1X29ubGluZSsweDEwLzB4MTAgW2ludGVsX3JhcGxfbXNyXQ0K
PiA8ND5bIDguMTk3NTcwXSBjcHVocF9pbnZva2VfY2FsbGJhY2srMHg0MWYvMHg2YzANCj4gPDQ+
WyA4LjE5NzU3M10gPyBjcHVocF90aHJlYWRfZnVuKzB4NmQvMHgyOTANCj4gPDQ+WyA4LjE5NzU3
NV0gY3B1aHBfdGhyZWFkX2Z1bisweDFlMi8weDI5MA0KPiA8ND5bIDguMTk3NTc4XSA/IHNtcGJv
b3RfdGhyZWFkX2ZuKzB4MjYvMHgyOTANCj4gPDQ+WyA4LjE5NzU4MV0gc21wYm9vdF90aHJlYWRf
Zm4rMHgxMmYvMHgyOTANCj4gPDQ+WyA4LjE5NzU4NF0gPyBfX3BmeF9zbXBib290X3RocmVhZF9m
bisweDEwLzB4MTANCj4gPDQ+WyA4LjE5NzU4Nl0ga3RocmVhZCsweDExZi8weDI1MA0KPiA8ND5b
IDguMTk3NTg5XSA/IF9fcGZ4X2t0aHJlYWQrMHgxMC8weDEwDQo+IDw0PlsgOC4xOTc1OTJdIHJl
dF9mcm9tX2ZvcmsrMHgzNDQvMHgzYTANCj4gPDQ+WyA4LjE5NzU5NV0gPyBfX3BmeF9rdGhyZWFk
KzB4MTAvMHgxMA0KPiA8ND5bIDguMTk3NTk3XSByZXRfZnJvbV9mb3JrX2FzbSsweDFhLzB4MzAN
Cj4gPDQ+WyA4LjE5NzYwNF0gPC9UQVNLPg0KPiANCj4gRml4IHRoaXMgaXNzdWUgaW4gdGhlIHNh
bWUgd2F5IGFzIHJhcGwgcG93ZXJjYXAgcGFja2FnZSBkb21haW4gaXMNCj4gYWRkZWQNCj4gZnJv
bSB0aGUgc2FtZSBDUFUgb25saW5lIGNhbGxiYWNrIGJ5IGludHJvZHVjaW5nIGFub3RoZXIgaW50
ZXJmYWNlDQo+IHdoaWNoDQo+IGRvZXNuJ3QgY2FsbCBjcHVzX3JlYWRfbG9jaygpLiBBZGQgcmFw
bF9wYWNrYWdlX2FkZF9wbXVfbG9ja2VkKCkgYW5kDQo+IHJhcGxfcGFja2FnZV9yZW1vdmVfcG11
X2xvY2tlZCgpIHdoaWNoIGRvbid0IGNhbGwgY3B1c19yZWFkX2xvY2soKS4NCg0KDQpBY2tlZC1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gDQo+IEZp
eGVzOiA3NDhkNmJhNDNhZmQgKCJwb3dlcmNhcDogaW50ZWxfcmFwbDogRW5hYmxlIE1TUi1iYXNl
ZCBSQVBMIFBNVQ0KPiBzdXBwb3J0IikNCj4gUmVwb3J0ZWQtYnk6IEJvcmFoLCBDaGFpdGFueWEg
S3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+DQo+IENsb3NlczoNCj4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcG0vNTQyN2VkZTEtNTdhMC00M2QxLTk5ZjMtOGNh
NGIwNjQzZTgyQGludGVsLmNvbS9ULyN1DQo+IFRlc3RlZC1ieTogS3VwcHVzd2FteSBTYXRoeWFu
YXJheWFuYW4NCj4gPHNhdGh5YW5hcmF5YW5hbi5rdXBwdXN3YW15QGxpbnV4LmludGVsLmNvbT4N
Cj4gVGVzdGVkLWJ5OiBSYXZpdGVqYVggVmVlc2FtIDxyYXZpdGVqYXgudmVlc2FtQGludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogU3Jpbml2YXMgUGFuZHJ1dmFkYQ0KPiA8c3Jpbml2YXMucGFu
ZHJ1dmFkYUBsaW51eC5pbnRlbC5jb20+DQo+IExpbms6DQo+IGh0dHBzOi8vcGF0Y2gubXNnaWQu
bGluay8yMDI1MTIxNzE1MzQ1NS4zNTYwMTc2LTEtc3Jpbml2YXMucGFuZHJ1dmFkYUBsaW51eC5p
bnRlbC5jb20NCj4gU2lnbmVkLW9mZi1ieTogUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbC5qLnd5
c29ja2lAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhv
bGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL3Bvd2VyY2FwL2ludGVsX3JhcGxfY29t
bW9uLmMgfCAyNCArKysrKysrKysrKysrKysrKystLS0tLS0NCj4gwqBkcml2ZXJzL3Bvd2VyY2Fw
L2ludGVsX3JhcGxfbXNyLmPCoMKgwqAgfMKgIDQgKystLQ0KPiDCoGluY2x1ZGUvbGludXgvaW50
ZWxfcmFwbC5owqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQgKysrKw0KPiDCoDMgZmlsZXMgY2hh
bmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3Bvd2VyY2FwL2ludGVsX3JhcGxfY29tbW9uLmMNCj4gYi9kcml2ZXJzL3Bvd2Vy
Y2FwL2ludGVsX3JhcGxfY29tbW9uLmMNCj4gaW5kZXggYjlkODdlNTZjYmJjLi4zZmY2ZGEzYmY0
ZTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvcG93ZXJjYXAvaW50ZWxfcmFwbF9jb21tb24uYw0K
PiArKysgYi9kcml2ZXJzL3Bvd2VyY2FwL2ludGVsX3JhcGxfY29tbW9uLmMNCj4gQEAgLTIwMzIs
NyArMjAzMiw3IEBAIHN0YXRpYyBpbnQgcmFwbF9wbXVfdXBkYXRlKHN0cnVjdCByYXBsX3BhY2th
Z2UNCj4gKnJwKQ0KPiDCoAlyZXR1cm4gcmV0Ow0KPiDCoH0NCj4gwqANCj4gLWludCByYXBsX3Bh
Y2thZ2VfYWRkX3BtdShzdHJ1Y3QgcmFwbF9wYWNrYWdlICpycCkNCj4gK2ludCByYXBsX3BhY2th
Z2VfYWRkX3BtdV9sb2NrZWQoc3RydWN0IHJhcGxfcGFja2FnZSAqcnApDQo+IMKgew0KPiDCoAlz
dHJ1Y3QgcmFwbF9wYWNrYWdlX3BtdV9kYXRhICpkYXRhID0gJnJwLT5wbXVfZGF0YTsNCj4gwqAJ
aW50IGlkeDsNCj4gQEAgLTIwNDAsOCArMjA0MCw2IEBAIGludCByYXBsX3BhY2thZ2VfYWRkX3Bt
dShzdHJ1Y3QgcmFwbF9wYWNrYWdlDQo+ICpycCkNCj4gwqAJaWYgKHJwLT5oYXNfcG11KQ0KPiDC
oAkJcmV0dXJuIC1FRVhJU1Q7DQo+IMKgDQo+IC0JZ3VhcmQoY3B1c19yZWFkX2xvY2spKCk7DQo+
IC0NCj4gwqAJZm9yIChpZHggPSAwOyBpZHggPCBycC0+bnJfZG9tYWluczsgaWR4KyspIHsNCj4g
wqAJCXN0cnVjdCByYXBsX2RvbWFpbiAqcmQgPSAmcnAtPmRvbWFpbnNbaWR4XTsNCj4gwqAJCWlu
dCBkb21haW4gPSByZC0+aWQ7DQo+IEBAIC0yMDkxLDE3ICsyMDg5LDIzIEBAIGludCByYXBsX3Bh
Y2thZ2VfYWRkX3BtdShzdHJ1Y3QgcmFwbF9wYWNrYWdlDQo+ICpycCkNCj4gwqANCj4gwqAJcmV0
dXJuIHJhcGxfcG11X3VwZGF0ZShycCk7DQo+IMKgfQ0KPiArRVhQT1JUX1NZTUJPTF9HUEwocmFw
bF9wYWNrYWdlX2FkZF9wbXVfbG9ja2VkKTsNCj4gKw0KPiAraW50IHJhcGxfcGFja2FnZV9hZGRf
cG11KHN0cnVjdCByYXBsX3BhY2thZ2UgKnJwKQ0KPiArew0KPiArCWd1YXJkKGNwdXNfcmVhZF9s
b2NrKSgpOw0KPiArDQo+ICsJcmV0dXJuIHJhcGxfcGFja2FnZV9hZGRfcG11X2xvY2tlZChycCk7
DQo+ICt9DQo+IMKgRVhQT1JUX1NZTUJPTF9HUEwocmFwbF9wYWNrYWdlX2FkZF9wbXUpOw0KPiDC
oA0KPiAtdm9pZCByYXBsX3BhY2thZ2VfcmVtb3ZlX3BtdShzdHJ1Y3QgcmFwbF9wYWNrYWdlICpy
cCkNCj4gK3ZvaWQgcmFwbF9wYWNrYWdlX3JlbW92ZV9wbXVfbG9ja2VkKHN0cnVjdCByYXBsX3Bh
Y2thZ2UgKnJwKQ0KPiDCoHsNCj4gwqAJc3RydWN0IHJhcGxfcGFja2FnZSAqcG9zOw0KPiDCoA0K
PiDCoAlpZiAoIXJwLT5oYXNfcG11KQ0KPiDCoAkJcmV0dXJuOw0KPiDCoA0KPiAtCWd1YXJkKGNw
dXNfcmVhZF9sb2NrKSgpOw0KPiAtDQo+IMKgCWxpc3RfZm9yX2VhY2hfZW50cnkocG9zLCAmcmFw
bF9wYWNrYWdlcywgcGxpc3QpIHsNCj4gwqAJCS8qIFBNVSBpcyBzdGlsbCBuZWVkZWQgKi8NCj4g
wqAJCWlmIChwb3MtPmhhc19wbXUgJiYgcG9zICE9IHJwKQ0KPiBAQCAtMjExMSw2ICsyMTE1LDE0
IEBAIHZvaWQgcmFwbF9wYWNrYWdlX3JlbW92ZV9wbXUoc3RydWN0DQo+IHJhcGxfcGFja2FnZSAq
cnApDQo+IMKgCXBlcmZfcG11X3VucmVnaXN0ZXIoJnJhcGxfcG11LnBtdSk7DQo+IMKgCW1lbXNl
dCgmcmFwbF9wbXUsIDAsIHNpemVvZihzdHJ1Y3QgcmFwbF9wbXUpKTsNCj4gwqB9DQo+ICtFWFBP
UlRfU1lNQk9MX0dQTChyYXBsX3BhY2thZ2VfcmVtb3ZlX3BtdV9sb2NrZWQpOw0KPiArDQo+ICt2
b2lkIHJhcGxfcGFja2FnZV9yZW1vdmVfcG11KHN0cnVjdCByYXBsX3BhY2thZ2UgKnJwKQ0KPiAr
ew0KPiArCWd1YXJkKGNwdXNfcmVhZF9sb2NrKSgpOw0KPiArDQo+ICsJcmFwbF9wYWNrYWdlX3Jl
bW92ZV9wbXVfbG9ja2VkKHJwKTsNCj4gK30NCj4gwqBFWFBPUlRfU1lNQk9MX0dQTChyYXBsX3Bh
Y2thZ2VfcmVtb3ZlX3BtdSk7DQo+IMKgI2VuZGlmDQo+IMKgDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3Bvd2VyY2FwL2ludGVsX3JhcGxfbXNyLmMNCj4gYi9kcml2ZXJzL3Bvd2VyY2FwL2ludGVs
X3JhcGxfbXNyLmMNCj4gaW5kZXggMGNlMTA5NmI2MzE0Li45YTdlMTUwYjM1MzYgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvcG93ZXJjYXAvaW50ZWxfcmFwbF9tc3IuYw0KPiArKysgYi9kcml2ZXJz
L3Bvd2VyY2FwL2ludGVsX3JhcGxfbXNyLmMNCj4gQEAgLTgyLDcgKzgyLDcgQEAgc3RhdGljIGlu
dCByYXBsX2NwdV9vbmxpbmUodW5zaWduZWQgaW50IGNwdSkNCj4gwqAJCWlmIChJU19FUlIocnAp
KQ0KPiDCoAkJCXJldHVybiBQVFJfRVJSKHJwKTsNCj4gwqAJCWlmIChyYXBsX21zcl9wbXUpDQo+
IC0JCQlyYXBsX3BhY2thZ2VfYWRkX3BtdShycCk7DQo+ICsJCQlyYXBsX3BhY2thZ2VfYWRkX3Bt
dV9sb2NrZWQocnApOw0KPiDCoAl9DQo+IMKgCWNwdW1hc2tfc2V0X2NwdShjcHUsICZycC0+Y3B1
bWFzayk7DQo+IMKgCXJldHVybiAwOw0KPiBAQCAtMTAxLDcgKzEwMSw3IEBAIHN0YXRpYyBpbnQg
cmFwbF9jcHVfZG93bl9wcmVwKHVuc2lnbmVkIGludCBjcHUpDQo+IMKgCWxlYWRfY3B1ID0gY3B1
bWFza19maXJzdCgmcnAtPmNwdW1hc2spOw0KPiDCoAlpZiAobGVhZF9jcHUgPj0gbnJfY3B1X2lk
cykgew0KPiDCoAkJaWYgKHJhcGxfbXNyX3BtdSkNCj4gLQkJCXJhcGxfcGFja2FnZV9yZW1vdmVf
cG11KHJwKTsNCj4gKwkJCXJhcGxfcGFja2FnZV9yZW1vdmVfcG11X2xvY2tlZChycCk7DQo+IMKg
CQlyYXBsX3JlbW92ZV9wYWNrYWdlX2NwdXNsb2NrZWQocnApOw0KPiDCoAl9IGVsc2UgaWYgKHJw
LT5sZWFkX2NwdSA9PSBjcHUpIHsNCj4gwqAJCXJwLT5sZWFkX2NwdSA9IGxlYWRfY3B1Ow0KPiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9pbnRlbF9yYXBsLmggYi9pbmNsdWRlL2xpbnV4L2lu
dGVsX3JhcGwuaA0KPiBpbmRleCBlOWFkZTJmZjRhZjYuLmY0NzllZjViMzM0MSAxMDA2NDQNCj4g
LS0tIGEvaW5jbHVkZS9saW51eC9pbnRlbF9yYXBsLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9p
bnRlbF9yYXBsLmgNCj4gQEAgLTIxNCwxMCArMjE0LDE0IEBAIHZvaWQgcmFwbF9yZW1vdmVfcGFj
a2FnZShzdHJ1Y3QgcmFwbF9wYWNrYWdlDQo+ICpycCk7DQo+IMKgDQo+IMKgI2lmZGVmIENPTkZJ
R19QRVJGX0VWRU5UUw0KPiDCoGludCByYXBsX3BhY2thZ2VfYWRkX3BtdShzdHJ1Y3QgcmFwbF9w
YWNrYWdlICpycCk7DQo+ICtpbnQgcmFwbF9wYWNrYWdlX2FkZF9wbXVfbG9ja2VkKHN0cnVjdCBy
YXBsX3BhY2thZ2UgKnJwKTsNCj4gwqB2b2lkIHJhcGxfcGFja2FnZV9yZW1vdmVfcG11KHN0cnVj
dCByYXBsX3BhY2thZ2UgKnJwKTsNCj4gK3ZvaWQgcmFwbF9wYWNrYWdlX3JlbW92ZV9wbXVfbG9j
a2VkKHN0cnVjdCByYXBsX3BhY2thZ2UgKnJwKTsNCj4gwqAjZWxzZQ0KPiDCoHN0YXRpYyBpbmxp
bmUgaW50IHJhcGxfcGFja2FnZV9hZGRfcG11KHN0cnVjdCByYXBsX3BhY2thZ2UgKnJwKSB7DQo+
IHJldHVybiAwOyB9DQo+ICtzdGF0aWMgaW5saW5lIGludCByYXBsX3BhY2thZ2VfYWRkX3BtdV9s
b2NrZWQoc3RydWN0IHJhcGxfcGFja2FnZQ0KPiAqcnApIHsgcmV0dXJuIDA7IH0NCj4gwqBzdGF0
aWMgaW5saW5lIHZvaWQgcmFwbF9wYWNrYWdlX3JlbW92ZV9wbXUoc3RydWN0IHJhcGxfcGFja2Fn
ZSAqcnApDQo+IHsgfQ0KPiArc3RhdGljIGlubGluZSB2b2lkIHJhcGxfcGFja2FnZV9yZW1vdmVf
cG11X2xvY2tlZChzdHJ1Y3QNCj4gcmFwbF9wYWNrYWdlICpycCkgeyB9DQo+IMKgI2VuZGlmDQo+
IMKgDQo+IMKgI2VuZGlmIC8qIF9fSU5URUxfUkFQTF9IX18gKi8NCg0K
