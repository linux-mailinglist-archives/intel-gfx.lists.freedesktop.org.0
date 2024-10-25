Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0519A9AFA39
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 08:44:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4851A10EA03;
	Fri, 25 Oct 2024 06:44:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N5dMwVaf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC10910E1A5;
 Fri, 25 Oct 2024 06:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729838670; x=1761374670;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=arSgHYjm0eIdKOEtD+8KYOee8xwVa1/uWDWZ4S5PKYs=;
 b=N5dMwVafMmTcK/8C+SIXjhrJB6lZoL1/T3VXNZ0BibWhYc2di7LTp9jj
 sJfAIsfiSerBVeLrFMvCpYSNUjCMKto9ELPglxkbSfdUhhB3UAZOT+AZ0
 iIvprWu7g2M7VRfLEIJow/DWBZruMJ6ZS4AiND6I8ZdBVv1oFKEUabY77
 ji/+82yvxkzRpxizDJYWeYLrWj87OInEsG2q3ZBLJ/N4tZpDjbvb7Uh2s
 oBgXvtpC9v47totVs+lztizRh+3tRQiTUscL+b4qdrWXmsyfEAjoTEcM4
 MIc8Hl3UUBlbUmDHIbk2tjS2+SmgJ8+F3+XCH1XxVrjT+BQp6k7v0TBzy A==;
X-CSE-ConnectionGUID: fsABjUQARNqk+ObguXL3Kw==
X-CSE-MsgGUID: nUhbzikbS5qu149Q0lU7xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52052474"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52052474"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 23:44:29 -0700
X-CSE-ConnectionGUID: N9wVmmRQT0ytsFl8LjDSqg==
X-CSE-MsgGUID: thEtBTksTC2eUWUu3Lftnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="118293102"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 23:44:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 23:44:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 23:44:28 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 23:44:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IzMUmhLwlCpeWaR/LF8dyeauhiDb1RxNwu+hgyOwLul/ob08azHiBgzJc54DRUCGYySSirrE5avX/YqUxPRTY8gkUBHDkWaJ0TqV5zzjchz+wAM2B2aofWY43CL+zpVxhnVLHjBzgzwZ4GUbNRHdCEeHxI/7w6ctBM5fBBEra4STUtWUNeIffVCHsW8zp0TDuwJsUioagh2T7FvuSAcZ4tlsvo2nuA/BrWkmi1U5cjjQB51NjKbH87g6Gl9myqaoDgmwmpvtxiSVpGyJ2bHav+rn1Y67K3YttSTAVnmO50mN3HRuCUA1q5bwqyduvZ6xJwRL7UoH7Yt/eD9wj47jow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=arSgHYjm0eIdKOEtD+8KYOee8xwVa1/uWDWZ4S5PKYs=;
 b=oGdl1TFbP9Y2Qf9Mw4c/pcipLX2LmRe9w+ymJPwkZfgtNKc5xohcqCsz2yKGzXN7w0jHSQw6Ne6Xly0H3SW0gXkBzOvc5pm/dUc7bJPWZM549maYBEl+pvOfvspN88cX69Xt3f7m3sCr9Ot+vYUxew9DYWYPwKUSu+wt7Vnv6kFVkLqAa0kdw8A4F2lrFakmhxMC+hMCzJ/7wyvjfj2Lyv1B4OLenfGfaoQenx4P5BdQbBqV3Im44GOj+lRPcr//LorakCTmUlW0Qutud7p4x42uhcJ5O8uAIx2dsaqhNilejhHNgr3TdUSw0biMDAVkmnH6IygofS2I9gpaoKEgtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA3PR11MB7414.namprd11.prod.outlook.com (2603:10b6:806:31c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Fri, 25 Oct
 2024 06:44:26 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 06:44:25 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Taylor, Clinton A"
 <clinton.a.taylor@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
Thread-Topic: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
Thread-Index: AQHbJZUpr4GIMr+JO0WmPbiVEPW11bKVapnAgADdXgCAADFAgIAAAcGAgACKhYA=
Date: Fri, 25 Oct 2024 06:44:25 +0000
Message-ID: <MW4PR11MB7054405AE20D3D74CEFDB202EF4F2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-8-clinton.a.taylor@intel.com>
 <MW4PR11MB705444C75DA8CE151657E689EF4E2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <20241024191854.GM5725@mdroper-desk1.amr.corp.intel.com>
 <fc292e32fac2e9f36a474d9c2b3f2bb009a40f73.camel@intel.com>
 <20241024222127.GR4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241024222127.GR4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA3PR11MB7414:EE_
x-ms-office365-filtering-correlation-id: a0e32ef3-1379-4935-7cf0-08dcf4c077b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dWhDZW9hQUJPWCtKcTlqMWVHYXhoTUhITkZEQklQZ0dKYVlTekNGZGFCV3Yv?=
 =?utf-8?B?amJzZVl4YWJNOWVWZEZJaXRjT2k1MHl5N0JwQnRzSXZFUHJwSnZwR212bG4v?=
 =?utf-8?B?aHJUYkJBcW5yaGhMMDJmTXBLZ3g2RDVsaEN2TUNBYjFPVzVaUnZzcW93ODF1?=
 =?utf-8?B?YXJ4UjBOOFVVYnU5b3BFWVZmKzFod0VaRFROdW5sK1I5ekNtU0ZYK25qNjlo?=
 =?utf-8?B?emVaOGVHbHRtSVZFY1ZZNXlpNzdyUU1HSTVITERyMTYxQ040b3A0Umx1Tm1z?=
 =?utf-8?B?Z2c1RWJRcDIxOWdCVmZtQ0JtZkQ3SlZLZFBMRXkvY0IycDJJZ0pRbTdJWjNG?=
 =?utf-8?B?QVBUcXFNMTArQmoxNW85TUxpY2dVVGljbWloMWVCMzhScEcyd3ZidW5qWnNa?=
 =?utf-8?B?ZVhyNmpjVER3aURHeGdJNVJZMnM3OFRld20vb1JFV295ekJUVjZ2Q29BT1lV?=
 =?utf-8?B?cVVmZ3pwWWdPTXZPaXhFSW5IL2J4ZW1mZlRQcHlReGhrZk5zSW1UNytXRENU?=
 =?utf-8?B?cFN2STVKeXg5Y3NlWkdDRGFjQ3Z4SXhkQVJXd1VHTndvdHZ0eGVWdWgraXBm?=
 =?utf-8?B?eHpPSnhrN1Z3b2pkNnRGcG5PSHEwWmozSGEwUVdqeEJwbFFCWkF0N28rRmcr?=
 =?utf-8?B?c1RpMG50NEVQU084dHVhSFh2NFhzY3VyRllrVzNxSnB2ZHNxR3VrZWwwNS9j?=
 =?utf-8?B?MGNmd01HekUxTkdkdUtwT0sxK2hFYjg1R0NOZTNDQ0RmRkdXL2Fqb285dm13?=
 =?utf-8?B?aUR6Ykw0VFBtTDE4cXdpQ2pKVGNRRVdGTTZFUnJzR21UNzRXMEh1Y3VVQ0Zx?=
 =?utf-8?B?T2gyV0FpbEhoSi82VDllWnVwcXlBdHhHMzQ4NGkwNUFudktsamt3Y0V0YnVu?=
 =?utf-8?B?bzVZWVJwRkplSkhFWUNuL1lDeG54bXdCY0hjL2RqN1dIbDhMamw5VmI1UzdY?=
 =?utf-8?B?elFoSVk0bjc5VDR1MW9qVUFpRUtTV1NmQm1ndGtCZnlEeGJwN2h2SFI1WWc3?=
 =?utf-8?B?OTMvMGJkSjVJa1h0WU41aFVQSTMyTjdmb1VocWNraHNtQm95NTJvb2hSU29V?=
 =?utf-8?B?RjkyWGcvMHB0Wm1oMVlPeTJNdnVsVmJVOTFmclNVR0UxQ2lCcUUvQktsbEkv?=
 =?utf-8?B?VG80NDFJU1plUU9ScWxzWUpVWitneUdkZC82dHN0MFNzd2IzTFVQakt2Rlpa?=
 =?utf-8?B?VUpwZXh5ek1ETHFGUEdQRmdWTm1tVjJ3bE9YVWJwRkljNm1ERFp5dDd6MkhX?=
 =?utf-8?B?b2x2QWJlVVBsREhINHZ0MTkrTlBxbVBSb2pDeHdKenM4N2dXLzJTaHg5MmJE?=
 =?utf-8?B?SUtEV01tY2ppb045Qk5IVW5haVlxeEVuTFlzOFZzTURwWW10VTMzako4aXl4?=
 =?utf-8?B?S3JVamkxZGVlWFAzL3NvQUNZQTVlL3JDUnBWUkdRb2loQnNES2tFUk94bXhv?=
 =?utf-8?B?clA0UGMzWGg3WW1LWFhJdzFIKzV3RXlFTXkzcEgwYmxJYWpETzBmZmVCakds?=
 =?utf-8?B?cUREcjRNVU9zWEVLUTVkNkFMV04zNGJ5ZFE2a0hxazE5U1RGUTE4bGJuOG4z?=
 =?utf-8?B?YmVWTWRjL2d1NldyTG93c0psRjI0RytpYUd4WVcxUnVNbmU4ejNnelh0UUtt?=
 =?utf-8?B?Ym0zdmRxV28zYzlDcjBTbUVJdlhIK1VvVis4ZFBiVGFwWi9RcEsvTk5PMzRT?=
 =?utf-8?B?RlVTTkZjL21kVi81elowWXNSQWZOV01MVlBmY0I4Y2I5VFJkaE1ZRURwWkJC?=
 =?utf-8?Q?R1uBV3+Vg4LyPuxm0nQWJl9qYFxWzIm/LivChAa?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjdFWlB5Wjk0TUFlQ3lDVG1aeTFNTGxmSmdhbE9lMmhuQjVpdDQrejlMcE9n?=
 =?utf-8?B?WUpiUW9STmYxR1Z2OWN0TTdiOXZnRjAvV2xwbTBoRkNFd0syUVVwVGM4Mmpi?=
 =?utf-8?B?czA5dExoNDdBTHFNUnlDa1p5Slc2MTdkRzN5T2Y2NjJIaVVpd0tkZC9ORVF1?=
 =?utf-8?B?MnNwUU1GWEFFeG9FUmhtTlQ2dEpVaHRaaG1sRThBejhxb2ZITmR0bzRjbWNR?=
 =?utf-8?B?MGNpZjBZYmhIcmpkejJlNnd3SHRnNURuUzNaNUt0M1Q3YUduR1l3dkFVM2N3?=
 =?utf-8?B?ZEpiZ0hGTGtLQ0NEajhLWERiUDV6WWhMM0w0cjlDZDdta2JuMks3SmtjTUJI?=
 =?utf-8?B?dzNIM3k3MG4yTFd2dit4YWFsaDVpZmg4SDB4eEI1b2k4cy83Q2xSUEVRTmVk?=
 =?utf-8?B?NlJoOVdHYWdCY1lxQlhpWm1SRnFWR291NllpOWpjVEpza1FkL1FLcE0vMEk2?=
 =?utf-8?B?VkhKVVRUdDRrMGRkd3BsSGJOeDgzOG1sckNvMG1QZE1xc0JNcjllT2c5L2Fl?=
 =?utf-8?B?aWVrUVVZL3laYXlLbW1rd3haK01RSkorNE5ISUpORCs4dlo1Sk5xRi9VVTJF?=
 =?utf-8?B?aG0zWjlwc0JlWmY5SUF0c3dBZUJaM24vb0NlOFA1QUQxZDdBYkRzeEdiQ01D?=
 =?utf-8?B?bDAyblp5RXZhTU1mdTVUTXhlWUdrMDcyTVZqTHNiUFV3NGZMa0RuUi9HQ21I?=
 =?utf-8?B?RERtdGQ5NUxYZjhhS3BFaU9vL0plWFVxb0NlRXJTbmJFSi90WjZLWWF5Z3Nl?=
 =?utf-8?B?b1dKMkU3c0ZsQkMwQVdxeDN0MGxuZHBDcEZWbm1pdnB2ajBOYndvQ1k5V3Ur?=
 =?utf-8?B?Rlk2eFpuQW05bWp4NC9icVlJN204K1BVVG1ISDVKdjhmcEtPUC90RTgyQU1w?=
 =?utf-8?B?aHQxeHhvRGplZ3cvWGNNMTZnRDR2cDJmaGNCZGl4MUlCRHgyS25zdnFsMVAz?=
 =?utf-8?B?c3NKdTFmaHFGRjVlbWRCeTI0N1prSmEzdGRqbGg4SVRVOFNPTFJDNG5WU3pz?=
 =?utf-8?B?bE9JcHhPS2l3eElzcGxHVzJ6aTVvTTAwZEhoZUhpVlFBUDl2b1ZHR3dTRDIy?=
 =?utf-8?B?b1d1WUdUcE10WVdnMG4yUWRrakpPNWFIRHRZSXRBaTF2OHp4MW1iaWhlUTNI?=
 =?utf-8?B?RGErdTVDWC9CNjEzNy9PQ3U1Tlc0bTBvdjdRdDBaUklWYjVUNWxDQ1drelFq?=
 =?utf-8?B?RUEyMVYrenJUVFJRUCtFemhkaHA0UzM2NlBBVG8yZDVzdXdUVmJkeEZhZkhH?=
 =?utf-8?B?T1gxQVNlSFJVdmVPV2JYOTY3ODVDdzF2OUJVeWsxTkljQTEwSDcvZG42Qloy?=
 =?utf-8?B?T05mRG96a2VHMWF2TlBaRjk1bWZQQ01lMnlOSGpiV1c0c0xwRVYwZk5iNVor?=
 =?utf-8?B?MXlWeUphdmMwY2pLbXRTbE1VTHZ2TGJJcjQ2N050cnE4L1MvNUpPNnczeU1l?=
 =?utf-8?B?dWlleWVsbURGdUdyWTQ4QXVlcWQ1VTdUTnRaeVBsazJEdjJjTG95cmQ2L1pp?=
 =?utf-8?B?WWV3allpZUs3cFhEaW1DbFdlS2c1ZFNsekIxTERRczF0MHJKTjVneE0yQXRS?=
 =?utf-8?B?c1lYSlFFOEx0OHBPaEh4aDJQQ3lRMWNPbUxBUGpyOGRPYlhUa3hQbDFBSTB3?=
 =?utf-8?B?cGx2N2llZ2o4NHc0WFlIZzVKYTViT2lOMjVYcUkwbXc1KzFhbE9xU3ViZmda?=
 =?utf-8?B?cTB2NWxzK2tESUpaSno4VCt2aGlCbmEyaDNPTSt6TlVscmQ5L0VTTWlSOXp2?=
 =?utf-8?B?ZXZqK3FBM3BhQmFndEFOSzZYWkpEWHlTeHJtMW00N2tvLzZJeGR1Z3phTEUz?=
 =?utf-8?B?bllDMkdMVlpiV2M4cU0yTGswdVhXbTJHWVdWcG1LRDdFTkw2WW1YckVETHVW?=
 =?utf-8?B?RFFDV0RWZFFSTVlFS3ZYZVdBY3Z0d3lBQWJmOUpMNzZwbDFVcjQweEdzcmc2?=
 =?utf-8?B?cHdVOXUyRDRtVXRsUjhLbVRGUW5KTWtJL0lERnR3RE5xUzZHNGhPTTAyRjZX?=
 =?utf-8?B?OU1UaWpTVjYxUmMvMElsdW1DRWp4cE1EUVlQb2FRQUxJNDRlWTNWbFZUUjhV?=
 =?utf-8?B?a3dnQkdEZXE1SFZUdnlSem9RVTVnR3krd0pzTERQem8veXh4ZnlEcWQydHlK?=
 =?utf-8?Q?A6Ax+KDu2MTqw/lFJKXAu1ma9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0e32ef3-1379-4935-7cf0-08dcf4c077b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2024 06:44:25.8516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: waATztx4tmGfp579dsneDeTfLxWCOyAv+YPcugM5fj5m4vgbjZRJYM5MQzQR5IIkfTMdJTOfayt2YlGVJsPr0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7414
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSb3BlciwgTWF0dGhldyBEIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIDI1IE9jdG9iZXIgMjAy
NCAxLjIxDQo+IFRvOiBUYXlsb3IsIENsaW50b24gQSA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5j
b20+DQo+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLXhl
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAwNy8xMl0gZHJtL2k5MTUvY3gwOiBSZW1vdmUg
YnVzIHJlc2V0IGFmdGVyIGV2ZXJ5IGMxMA0KPiB0cmFuc2FjdGlvbg0KPiANCj4gT24gVGh1LCBP
Y3QgMjQsIDIwMjQgYXQgMTA6MTU6MTFQTSArMDAwMCwgVGF5bG9yLCBDbGludG9uIEEgd3JvdGU6
DQo+ID4gT24gVGh1LCAyMDI0LTEwLTI0IGF0IDEyOjE4IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3Rl
Og0KPiA+ID4gT24gVGh1LCBPY3QgMjQsIDIwMjQgYXQgMDY6MDg6NDZBTSArMDAwMCwgS2Fob2xh
LCBNaWthIHdyb3RlOg0KPiA+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4g
PiA+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3Rv
cC5vcmc+IE9uDQo+ID4gPiA+ID4gQmVoYWxmIE9mIENsaW50IFRheWxvcg0KPiA+ID4gPiA+IFNl
bnQ6IFRodXJzZGF5LCAyNCBPY3RvYmVyIDIwMjQgMC40Nw0KPiA+ID4gPiA+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiA+ID4gPiA+IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiA+ID4gPiA+IFN1YmplY3Q6IFtQQVRDSCB2MiAwNy8xMl0gZHJtL2k5MTUv
Y3gwOiBSZW1vdmUgYnVzIHJlc2V0IGFmdGVyDQo+ID4gPiA+ID4gZXZlcnkgYzEwIHRyYW5zYWN0
aW9uDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBDMTAgcGh5IHRpbWVvdXRzIG9jY3VyIG9uIHhlM2xw
ZCBpZiB0aGUgYzEwIGJ1cyBpcyByZXNldCBldmVyeSB0cmFuc2FjdGlvbi4NCj4gPiA+ID4gPiBT
dGFydGluZyB3aXRoIHhlM2xwZCB0aGlzIGlzIGJ1cyByZXNldCBub3QgbmVjZXNzYXJ5DQo+ID4g
PiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gVGhpcyBDMTAvQzIwIGJ1cyByZXNldCB3YXMgb3JpZ2lu
YWxseSBwbGFjZWQgYXMgYSB3b3JrYXJvdW5kIHRvIHByZXZlbnQNCj4gYnVzIHRpbWVvdXRzLg0K
PiA+ID4gPiBUaGVzZSB0aW1lb3V0cyB3ZXJlIGZpeGVkIGVsc2V3aGVyZSBhbmQgdGhlcmVmb3Jl
IHRoZXNlIGFyZSB1bm5lY2Vzc2FyeQ0KPiBsaW5lcy4NCj4gPiA+DQo+ID4gPiBJJ20gYSBiaXQg
Y29uZnVzZWQgYnkgdGhlIHBhdGNoIC8gZXhwbGFuYXRpb24gaGVyZS4gIEJlZm9yZSB0aGlzDQo+
ID4gPiBwYXRjaCB3ZSBkaWQgdGhlIHJlc2V0IG9uIGFsbCBwbGF0Zm9ybXMsIHVuY29uZGl0aW9u
YWxseS4gIFRoZSBjb2RlDQo+ID4gPiBjaGFuZ2UgYmVsb3cgaXMgcmVtb3ZpbmcgdGhlIHJlc2V0
IGZyb20gdGhlIGV4aXN0aW5nIHBsYXRmb3Jtcw0KPiA+ID4gKE1UTC9BUkwgYW5kDQo+ID4gPiBY
ZTIpIGJ1dCBrZWVwaW5nIGl0IG9ubHkgb24gdGhlIG5ldyBYZTMgcGxhdGZvcm1zLg0KPiA+ID4N
Cj4gPiA+IElmIHRoZSB0aW1lb3V0IG15c3Rlcnkgd2FzIHNvbHZlZCBhbmQgdGhlc2UgcmVzZXRz
IGFyZSBubyBsb25nZXINCj4gPiA+IG5lZWRlZCwgc2hvdWxkbid0IHdlIGJlIHJlbW92aW5nIHRo
ZSBsaW5lIGNvbXBsZXRlbHkgcmF0aGVyIHRoYW4NCj4gPiA+IG1ha2luZyBpdCBjb25kaXRpb25h
bCB0byB0aGUgbmV3IHBsYXRmb3Jtcz8gIE9yIGRvIHdlIGhhdmUgbm93IGhhdmUNCj4gPiA+IG5l
dywgdW5leHBsYWluZWQgZmFpbHVyZXMgc3BlY2lmaWNhbGx5IG9uIFhlMyB0aGF0IHJlcXVpcmVz
IHRoYXQgd2UNCj4gPiA+IGJyaW5nIGJhY2sgdGhpcyBoYWNrIGF0IHRoZSBzYW1lIHRpbWUgd2Un
cmUgcmVtb3ZpbmcgaXQgZnJvbSB0aGUNCj4gPiA+IG9sZGVyIHBsYXRmb3Jtcz8NCj4gPiA+DQo+
ID4gSSByZXZlcnNlZCB0aGUgY29uZGl0aW9uYWwgd2hlbiBzcGxpdHRpbmcgdGhlIGMxMCBwYXRj
aGVzLiBXaWxsDQo+ID4gY29ycmVjdCBhbmQgc2VuZCBhIG5ldyBzZXJpZXMuDQo+IA0KPiBPa2F5
LCBldmVuIGlmIHRoZSBjb25kaXRpb24gZ290IHJldmVyc2VkIGJ5IGFjY2lkZW50LCBJJ20gc3Rp
bGwgdW5jbGVhciBvbiB3aGV0aGVyDQo+IHdlIHRydWx5IHN0aWxsIG5lZWQgdGhpcyBvbiBwcmUt
WGUzIHBsYXRmb3JtcyBvciBub3QuICBCYXNlZCBvbiBNaWthJ3MgZXhwbGFuYXRpb24NCj4gaXMg
c291bmRzIGxpa2UgbWF5YmUgdGhlc2UgbGluZXMgc2hvdWxkIHNpbXBseSBiZSBnZXR0aW5nIHJl
bW92ZWQgY29tcGxldGVseSwgYW5kDQo+IHRoYXQgdGhhdCdzIGluZGVwZW5kZW50IG9mIHRoZSBY
ZTMgd29yayBnb2luZyBvbj8gIFdlIGNhbiBzZWUgd2hhdCBoZSB0aGlua3MNCj4gdG9tb3Jyb3cu
DQoNCldlIGNvdWxkIHNpbXBseSByZW1vdmUgdGhlc2UgaW50ZWxfY3gwX2J1c19yZXNldCgpIGZy
b20gcmVhZC93cml0ZSBvcGVyYXRpb25zLiBUaGVzZSB3ZXJlIG9yaWdpbmFsbHkgYWRkZWQgYXMg
YSB3b3JrYXJvdW5kIGFzIHdlIGhhZCByZWFkIGZhaWx1cmVzIGZyb20gdGhlIGJ1cyBhcyB3ZWxs
IGFzIHdyaXRlIGZhaWx1cmVzIHRvIHRoZSBidXMuDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9wYXRjaC81NjI4NjkvP3Nlcmllcz0xMjQ2MDImcmV2PTUNCg0KVGhlIHJlYWQv
d3JpdGUgc2VxdWVuY2UgZG9lc24ndCByZXF1aXJlIGJ1cyByZXNldCBhZnRlciBldmVyeSByZWFk
L3dyaXRlIG9wZXJhdGlvbiBlaXRoZXIuDQoNCi1NaWthLQ0KPiANCj4gDQo+IE1hdHQNCj4gDQo+
ID4NCj4gPiAtQ2xpbnQNCj4gPg0KPiA+ID4NCj4gPiA+IE1hdHQNCj4gPiA+DQo+ID4gPiA+IFJl
dmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gPg0K
PiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENsaW50IFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBp
bnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwgNiArKysrLS0NCj4gPiA+ID4gPiAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiA+ID4gPg0KPiA+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYw0KPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBf
cGh5LmMNCj4gPiA+ID4gPiBpbmRleCBjMTM1N2JkYjhhM2IuLmE4OTY2YTdhOTkyNyAxMDA2NDQN
Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYw0KPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3gwX3BoeS5jDQo+ID4gPiA+ID4gQEAgLTIyNCw3ICsyMjQsOCBAQCBzdGF0aWMgaW50IF9faW50
ZWxfY3gwX3JlYWRfb25jZShzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiA+ID4gPiA+ICAJICogZG93biBhbmQgbGV0IHRoZSBtZXNzYWdlIGJ1cyB0byBlbmQgdXAN
Cj4gPiA+ID4gPiAgCSAqIGluIGEga25vd24gc3RhdGUNCj4gPiA+ID4gPiAgCSAqLw0KPiA+ID4g
PiA+IC0JaW50ZWxfY3gwX2J1c19yZXNldChlbmNvZGVyLCBsYW5lKTsNCj4gPiA+ID4gPiArCWlm
ICgoRElTUExBWV9WRVIoaTkxNSkgPj0gMzApKQ0KPiA+ID4gPiA+ICsJCWludGVsX2N4MF9idXNf
cmVzZXQoZW5jb2RlciwgbGFuZSk7DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAgCXJldHVybiBSRUdf
RklFTERfR0VUKFhFTFBEUF9QT1JUX1AyTV9EQVRBX01BU0ssIHZhbCk7ICB9IEBAIC0NCj4gPiA+
ID4gPiAzMTMsNyArMzE0LDggQEAgc3RhdGljIGludCBfX2ludGVsX2N4MF93cml0ZV9vbmNlKHN0
cnVjdA0KPiA+ID4gPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gPiA+ID4gIAkgKiBk
b3duIGFuZCBsZXQgdGhlIG1lc3NhZ2UgYnVzIHRvIGVuZCB1cA0KPiA+ID4gPiA+ICAJICogaW4g
YSBrbm93biBzdGF0ZQ0KPiA+ID4gPiA+ICAJICovDQo+ID4gPiA+ID4gLQlpbnRlbF9jeDBfYnVz
X3Jlc2V0KGVuY29kZXIsIGxhbmUpOw0KPiA+ID4gPiA+ICsJaWYgKChESVNQTEFZX1ZFUihpOTE1
KSA+PSAzMCkpDQo+ID4gPiA+ID4gKwkJaW50ZWxfY3gwX2J1c19yZXNldChlbmNvZGVyLCBsYW5l
KTsNCj4gPiA+ID4gPg0KPiA+ID4gPiA+ICAJcmV0dXJuIDA7DQo+ID4gPiA+ID4gIH0NCj4gPiA+
ID4gPiAtLQ0KPiA+ID4gPiA+IDIuMjUuMQ0KPiANCj4gLS0NCj4gTWF0dCBSb3Blcg0KPiBHcmFw
aGljcyBTb2Z0d2FyZSBFbmdpbmVlcg0KPiBMaW51eCBHUFUgUGxhdGZvcm0gRW5hYmxlbWVudA0K
PiBJbnRlbCBDb3Jwb3JhdGlvbg0K
