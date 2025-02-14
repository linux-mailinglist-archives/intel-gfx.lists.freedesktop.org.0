Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F949A35FEA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D51DE10EC9F;
	Fri, 14 Feb 2025 14:11:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QD6EgEKN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3536C10EC9A;
 Fri, 14 Feb 2025 14:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542281; x=1771078281;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DWSTm0trZ1jIhImUaJwjf2TQS/4903IPWW2Heu1nono=;
 b=QD6EgEKNUCbh0zmwSEJ7sVOD+kdrnPUhvMeRx42d9u7ML1chQOCYAasa
 UaTq/gY1ouoX34fE7wu2e09lbVywnKqq6VdE5e6P2FWct//Haw/iSpGds
 rqzFNVr0hBTtThTXFC8KLYVDfH/hZWRXBHs8LAJrxJ0beoQEyLgWbNg55
 X27mWd/osYsJrSVGplKm9vzcg0FJsxFMr+HUBUuJtd13zpYRV6Wkzuwvq
 77Ts42GROmyGh5aeQAVY5eD2ldOIF84iASVW+CwsGy7IhhhSknVJ4P1up
 VuD57W4NRA9/l5KKxd1CnCojgcoNM50i+SHO5L6gx+3ro/1xkTeWYXjoe g==;
X-CSE-ConnectionGUID: EJ+QMGj+TFyQr5JZGzK8Vg==
X-CSE-MsgGUID: +pZa4PonQ6S5g3kAool5OA==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="57698020"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="57698020"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:11:21 -0800
X-CSE-ConnectionGUID: 4QyRAsc0RFC/wDDk2RADtg==
X-CSE-MsgGUID: SH4r2JP3SGW7y+xDIX4VoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113953352"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2025 06:11:21 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Feb 2025 06:11:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Feb 2025 06:11:20 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 06:11:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ta58ry2P/jjHVKN1e8tCCAy4UDZklHPVWQMKZ14zPRu2gTnANqd7zC5OV9ZQcT3Acl2GzWwcZU7FJmVrTHFNBw8XVd9Lu4C6BMd86KXtbUkbDYE2rAYE5pKMhFFTPFRa5qXTNXjgVHirk8//syaX/Oltha2qZ8lgA8cVwMta/0COO5UyOLUQUJWtQX1VJDHKSvqc+cbABhNE+NN6j5l5ckcoKI3hJPADZTe/O87Bce1Uzk/A06dmxMk7jVCESDzHggPCb5jw6eSqT0K1Zu7rJIZalOEQ0dcfW7PNmTjcZKi8GRAbsyG1QCvBOeymTk5QFFe5jKnMHgcVNEIHuMUNKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DWSTm0trZ1jIhImUaJwjf2TQS/4903IPWW2Heu1nono=;
 b=o2UgCAIVEpQePxodekDCh7gh0/XiwpIbR90g/At7nAPstC0BRpmaCExy1XNDCgx7eVZFRETR4tkA73TYX/10lpcQFV/OtDVKRzoha+GRIeF+7igAQOjUC3wk7cFSk463s0IaEMFr0TuIsX5pNnXP0iiuLTHUtbLn62YhWbbjLGrsTo59HPhq0ALMEcIq4Wd4EsLRYpSMEaQxRTspJWK9Nhpt1NUjW2B5yEGbPtqQ41wf4aVj5I4x2EYwKvWtnPmDpVrhjwPszWZGn590Zu/wClAv10dy7tretZC3c+h4+ETIdxJXg8eGtHx5/WwtJfIwZDc810C8Fx6stscbnRD3rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH8PR11MB7990.namprd11.prod.outlook.com (2603:10b6:510:259::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.17; Fri, 14 Feb
 2025 14:11:18 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%5]) with mapi id 15.20.8445.013; Fri, 14 Feb 2025
 14:11:17 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 3/6] drm/i915/display: Configure the scaler
Thread-Topic: [PATCH 3/6] drm/i915/display: Configure the scaler
Thread-Index: AQHbZal+KVZHSe3dVUeJvU1ybjuAVrM4gIMAgA6HhcA=
Date: Fri, 14 Feb 2025 14:11:17 +0000
Message-ID: <IA1PR11MB6467B14E19987666083D88ECE3FE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20250113104936.1338290-1-nemesa.garg@intel.com>
 <20250113104936.1338290-4-nemesa.garg@intel.com>
 <921818d1-b357-45e6-a189-cd6766eaa278@intel.com>
In-Reply-To: <921818d1-b357-45e6-a189-cd6766eaa278@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH8PR11MB7990:EE_
x-ms-office365-filtering-correlation-id: d34e76aa-3f49-4e98-4066-08dd4d017324
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?a2JySVEwY1FYa2hEcUpnc0hTNTRGbVVNZk9paHBqdTJtdFFTVEhQdGRVYUZw?=
 =?utf-8?B?Z3BkS2NjNnE0VFFza2hZaDZpSExZbkljcHZSUGJsODVIcXBDUFZKZXZXaXlj?=
 =?utf-8?B?d2RwYmlNM3BINnZ6VkpVZkNDNHpLZjA5ZGlCKzhoYXd6S2RVRFRvT0VPblRx?=
 =?utf-8?B?UE1kTTNKaVU1WEJIbENZSFJHZmtET1F5TC9LTmtIRWlEbHZTdnhPUFJYMWJJ?=
 =?utf-8?B?TWhXeWVIVGtPNC9vc2dpUjVJNENkb1Jka3Rhem9YK21abnVYWitwTkx4emNX?=
 =?utf-8?B?d2RBOW55NUp0Rmo4VjhENWQwMXY3aVRJY3p0WWU4UmNjSXhVN3dtWjYyeENT?=
 =?utf-8?B?bHhIR2JpR3NFQlgwWWorYmRBTm5sYmNJanlOR0tsT2V4U3lxM0MzVkZNbGlq?=
 =?utf-8?B?K1g0NGo4MkE2dXJCRmZxcXByOXdhNHlXWm5mRGk5MFVtRnBlN3p1VEh6UXlp?=
 =?utf-8?B?RkJ2TGJVcEptY281bHNsbFlISVJoT0lVVWFnZ3Q2ekNENnA0K2ZrNGh5WmlU?=
 =?utf-8?B?VXExOU1RYVh1U1RhZjVOY1VoSTZqY0ZWdHZtT2g5QVJqQVc5YmdEeU9aN3c5?=
 =?utf-8?B?WkExc2NQU3luR01xNDdTVGJseDNMMXJ4RWM1bnBPWmkzSUF3dFBlcEVJSU1n?=
 =?utf-8?B?Zmp2REt4WG5MOGExREtQZFpQT0pGdCtuMFRoVGJTdkN6NlQxN1N3eUpQSTU0?=
 =?utf-8?B?QlMyUHNMUWRRcmxjb2FYL0hSUXVydVdyV0JoU0M1NE5Ydkg2T1E4aFZnUGNM?=
 =?utf-8?B?OUl2aWJwQnpWcTlYOEZKRktxNVdtbUk5VjNTNXNmZWsyZU1BOFBKV0xTVFgx?=
 =?utf-8?B?bVRSeUJBNkVrUkg2bG5xTUJ3RjhRSDNBQUxFMEdDS3lyK3hlbHZyR0JLWGQr?=
 =?utf-8?B?UkNRdTBRc0xtbStFdzBuM1d2Q2pna0VHTXJnazhhYmNIMkFra1ovbkpuWklo?=
 =?utf-8?B?N2tFeHBYcHA5MHk0SjBKR2p3RGlUN0JhQUxDQUVNbnBWRWppdVAreDZ0N1p0?=
 =?utf-8?B?a1R4RHVGbWp3c0hoWFRycFlPR0RUazF2czBIL1dCQ0t1Y1NhUE5NdWFmdFFP?=
 =?utf-8?B?ekhlNUpQaTlVOWZwaFowaWFla3JPQVRSNHNwM3pNem9vYVhPNWtYOUh2VzVk?=
 =?utf-8?B?dFhSQnJpWUVsMlMzamsxTXJWb3doMnp4bktOK3crczJQMzFySDlTNXpOc3pj?=
 =?utf-8?B?WDFYMGExdXJ6bGFXMkNoMnlhN0hJdE5HVjBMMVJSN0IyVjZLNVl0cHA2SmlY?=
 =?utf-8?B?NlZqS2tPbE1YOXhZVVQwTTAycmtEZVQwQ1ZTWDVaV0loTmI5TGs1aHJCL2I1?=
 =?utf-8?B?OXNmQTljNWJBaVV6VTlrejk5aStsUktnR1RvSDdDYSswODNLaFRVMk9FdjJp?=
 =?utf-8?B?MXZDOUF5ZzVTdzIzd0Z5a2E4andmbEYvYUNaeVpLSmdqWC9SL0xaeDJoTGM2?=
 =?utf-8?B?WDNjMjZoM0VQS1Q0ZzhEd1VoV3RhbWpObVVqRS84dXU3dnFDMWd3eUpkQTBs?=
 =?utf-8?B?dUlTRVdadjhMaXVzVERhUTJuS3lvampvOWloWXdFZzhObm5Nb2pZbGxTZ2Z5?=
 =?utf-8?B?c0xuVUhVcUsvVm1pbkE0VTYwcVFLU3duOVVsbXhSZ01YczRXUFg3MzdkK1FX?=
 =?utf-8?B?eXRvRWhsYmU4TmFneWtLcW5tNldNMXVNWU84RzkxRzd5MkxaeElKbDZBWlB3?=
 =?utf-8?B?dmdQaCtEZ1FIK3lEVEhoQVg0ZVRsQlRPcE84ajVjRjBic0NwNU90OGFYZDJo?=
 =?utf-8?B?ck4wL2MxbHR4Q3YxU2tRbUgxaTN4dU5VMVRGVkh5bmZrLy9Td012dTduNTRk?=
 =?utf-8?B?c1FoMXVncEFyR1k2dTU2ZjIxWmw0NXI2MDJwbmloWHhWOVVRTEc0eGtHdTk0?=
 =?utf-8?B?aDN1aXczeGR4eDV4MFNndkI3bzYzdFh0L1Z5dGlyaWdVVGtCL3VMNWZLSE95?=
 =?utf-8?Q?k9xmwCHardS69Fq5yJElEAmMEtcLNJkc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0NwRll3YXNRUFkvM3p1UzBjbzU3enhFTFFtay8ycHdlQWV2U1BkaTB0ekNr?=
 =?utf-8?B?YzFBVEdRa0ZaQ1EydGIrRGRXNkdXdVlsVjdCN082NUk3K3hUNURNajc4NEsr?=
 =?utf-8?B?TjRYWmV5dSs4akVBV2F6R2xETy95NGNSd2dJUUhyc1dYVCtwUWU2Z1FhdE92?=
 =?utf-8?B?S3dCTFV4SVZtVDNxeE1HZ0s1SGp5N1ZaZ25qNUVta2FEc1VDbFZhLzhMRVUy?=
 =?utf-8?B?ZTgyUWd5YjZhdVlUNHdrZXVzOWpRQ1hWOEFSRG12S2RTdEJWWlh0ZDU2UmFH?=
 =?utf-8?B?d3ZHN01sS0R6blZBZTBlVHE3MmJoM2htRWVjSmVJRTlxay8xWUxvc0NoaUN3?=
 =?utf-8?B?WWIvVGplRmFMaGdJc0R1WmZkNjFWZVY2V3ZUQ0hoZE1UTllvRVB0cmJPcGpz?=
 =?utf-8?B?aVBsYlYxQXZiZ3hjY3lad2VtcUNJMndVOWdlaFBxMENDOTBPNlFLckpIOWN2?=
 =?utf-8?B?WkxCRzdrc2dldSsyQ2F6Y2lSek0ycS9qcHhVcnc5NG0xVTZpTVpMTFBMK2Zx?=
 =?utf-8?B?cGVXZk4yakdWbnpTaEprTER5WmZXS0xuR0lQWGVYUnl0MTZvWkhpQ252UFRj?=
 =?utf-8?B?a3daSHg2YmR3SHpkNHNORzU3NWovdFRIUDg4NTVyZndkU1laVjBRK0dXeFRP?=
 =?utf-8?B?QmJjb01WWmU0NXA1UDJaZGVvMERFeVkzdWh6MVk5L1l0aGh0WlBLNk43YW53?=
 =?utf-8?B?dEM5QlpxYTMvSkd1dThwOEFySldnQXFnTWoreXZLWmpjZDhONmRXbm1QZmJl?=
 =?utf-8?B?VURZVjh6Q2ZnZ05yK250N3dsN1A4bDBOTFBsY0xCYkxpeXdQTU40OUpFeHFS?=
 =?utf-8?B?a0F5UTBpNEZ5UEdPQTlEMXhGNmE4TVkrMUtleC9WWjN2THYrbGN0bDE2TmpH?=
 =?utf-8?B?VWQrYWRLb3FUUURKVnR3VVVkRnVSbTZYeVBDcVMvWmdOWlZDQlNLWGxNcHBu?=
 =?utf-8?B?ZmhKVlg4Ni8wTW1KUFU5ZGh0MkFvb28vdnVNcm1GejFEbHBVaEM3dmxVemww?=
 =?utf-8?B?U1pFQ29uWGFMNXQ0anBGc213dVhROXJCbUdVVWgwNEUyM290ckM0cHdOazUw?=
 =?utf-8?B?TXBzaGhFS05Hb3dEMHY4NDZBODFUOGpMb09zT1JVeVhkVjlGUC9FQmlLYnBJ?=
 =?utf-8?B?cnRtRFJ6RGpnaWM2Mm05Q0dTSGxGSGdMekhiY212aTVrSmFuMVRRcFBkaEMx?=
 =?utf-8?B?UVYzNmhXM0VwVjJyRk1ja3NUTFdFc3NyV29PQlA0L3pUVTFpTW1yVXQ3UUFP?=
 =?utf-8?B?MHRqb25UVnJUY2ZLQjh1cnZ0ZWpuR1V2WDVMMDdwc2JGYU1pTitIMnFwYWlE?=
 =?utf-8?B?UDZXL0FwWEtYVk56OC9sMlRzbSsvOGd4ZW5JSWRTRDBtQWV0MzFJZlRkYkxa?=
 =?utf-8?B?S2x4aGVYbkVRNlVnZVlFK3E4MWs4OWl1NmRlUmxGam54eW1EZlJHRTE1WWtI?=
 =?utf-8?B?RG1SUWFiUEZha2dWNGdyK3pyZ255OFFUYkJxUHhiN0V4cmVLUU03VmhzZTFm?=
 =?utf-8?B?SXVhV1poNHBBemk0cTFydEh5WEU0dEZ6emJmelhyZlhodFdYZ0ZUSXl3Vlpj?=
 =?utf-8?B?MmtFQ2tleVZlUWhPR3d5Qm01cngwZStVREptb2xhSlkzU252Z2pOaDl6NUhF?=
 =?utf-8?B?cHFNQWtmMk5NVzBhVEhnRmJJbUx4TmEzQW1EUFZJNnNObUJnVWZjczlqTkov?=
 =?utf-8?B?bFZIc3dacWV0ejBsZUJxcmdXeEpUR3JEenM5TzVQVk5CQkloTysxVjlDMzFu?=
 =?utf-8?B?TUY4ZGowQnFLWDVSS2xlY3FXakFOQVhxWGN2aWROMzc4Qzc3Y296QVVDaEgx?=
 =?utf-8?B?YUV2dkJ1VHdSSzhVZDlpV1RsUUVDRjlha0FIaW5ZVER4YkVqajB1aWdmUmJV?=
 =?utf-8?B?MjZLb05ySGFWcUdtRW1mWFArSkxFUkdXbDhjWGcxZW9NNXBSTDcyS3p1YlZE?=
 =?utf-8?B?MU1rUldtZkIzWFB4anVaT3kyNkhHSWpWbFZRdmowQ1ZLZkRHODZ4ZHRzVXg2?=
 =?utf-8?B?MGNTVnk0aUhCWjhpeUE1djRvMmNaYXRSQk9naXJEQktiSnFUS24zRGNFNEtm?=
 =?utf-8?B?MmVTVFIzNm1RajJXZnhlMUxnTUF0TXBkMDNpSmlVYS9UMjF2c3RnWk9WYVhB?=
 =?utf-8?Q?V5Yti6rON73qq268hfkYtMgaL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d34e76aa-3f49-4e98-4066-08dd4d017324
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 14:11:17.8408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rzqZCFJUClD+Q/wd4XuMMCLNPBu2Wtl8/ccCbaZyLfWUgjocYeSup+mZTR35tfSNI+1prLhF5MEIi+7onFsHXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7990
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIEZlYnJ1
YXJ5IDUsIDIwMjUgMTo0NCBQTQ0KPiBUbzogR2FyZywgTmVtZXNhIDxuZW1lc2EuZ2FyZ0BpbnRl
bC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCAzLzZdIGRybS9pOTE1L2Rp
c3BsYXk6IENvbmZpZ3VyZSB0aGUgc2NhbGVyDQo+IA0KPiANCj4gDQo+IE9uIDEvMTMvMjAyNSA0
OjE5IFBNLCBOZW1lc2EgR2FyZyB3cm90ZToNCj4gPiBXcml0ZSB0aGUgc2NhbGVyIHJlZ2lzdGVy
cyBmb3Igc2hhcnBuZXNzLg0KPiANCj4gSGVyZSB5b3UgYXJlIGVuYWJsaW5nIHRoZSBzY2FsZXIg
Zm9yIHNoYXJwbmVzcywgc28gc3ViamVjdCBuYW1lIGNvbmZpZ3VyZSB0aGUNCj4gc2NhbGVyIGRv
ZXNudCBzZWVtIHJpZ2h0Lg0KPiANCj4gVGhlIGNvbmZpZ3VyaW5nIGlzIGRvbmUgaW4gUGF0Y2gj
NC4NCj4gDQo+IA0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTmVtZXNhIEdhcmcgPG5lbWVzYS5n
YXJnQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2FzZi5jIHwgIDIgKw0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfc2NhbGVyLmMgfCA0NSArKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfc2NhbGVyLmggfCAgMSArDQo+ID4gICAzIGZpbGVz
IGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nhc2YuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jYXNmLmMNCj4gPiBpbmRleCBiNTA3NDAxNDU3YmYuLjc3M2Fi
YWFkNzRjYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Nhc2YuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2FzZi5jDQo+ID4gQEAgLTk3LDYgKzk3LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfY2FzZl93cml0
ZV9jb2VmZihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gPiAgIHZv
aWQgaW50ZWxfY2FzZl9lbmFibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
DQo+ID4gICB7DQo+ID4gICAJaW50ZWxfY2FzZl93cml0ZV9jb2VmZihjcnRjX3N0YXRlKTsNCj4g
PiArDQo+ID4gKwlza2xfc2NhbGVyX3NldHVwX2Nhc2YoY3J0Y19zdGF0ZSk7DQo+ID4gICB9DQo+
ID4NCj4gPiAgIHN0YXRpYyB2b2lkIGNvbnZlcnRfc2hhcnBuZXNzX2NvZWZfYmluYXJ5KHN0cnVj
dCBzY2FsZXJfZmlsdGVyX2NvZWZmDQo+ID4gKmNvZWZmLCBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfc2NhbGVyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5jDQo+ID4gaW5kZXggYTExZTA5YTE1ZTIzLi4wNzE4MjEw
ZGU5MTAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
c2NhbGVyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2Fs
ZXIuYw0KPiA+IEBAIC0xMzIsNiArMTMyLDEzIEBAIHN0YXRpYyB2b2lkIHNrbF9zY2FsZXJfbWF4
X2RzdF9zaXplKHN0cnVjdCBpbnRlbF9jcnRjDQo+ICpjcnRjLA0KPiA+ICAgCX0NCj4gPiAgIH0N
Cj4gPg0KPiA+ICsjZGVmaW5lIFNDQUxFUl9GSUxURVJfU0VMRUNUIFwNCj4gPiArICAgICAgIChQ
U19GSUxURVJfUFJPR1JBTU1FRCB8IFwNCj4gPiArICAgICAgICBQU19ZX1ZFUlRfRklMVEVSX1NF
TEVDVCgxKSB8IFwNCj4gPiArICAgICAgICBQU19ZX0hPUlpfRklMVEVSX1NFTEVDVCgwKSB8IFwN
Cj4gPiArICAgICAgICBQU19VVl9WRVJUX0ZJTFRFUl9TRUxFQ1QoMSkgfCBcDQo+ID4gKyAgICAg
ICAgUFNfVVZfSE9SWl9GSUxURVJfU0VMRUNUKDApKQ0KPiA+ICsNCj4gPiAgIHN0YXRpYyBpbnQN
Cj4gPiAgIHNrbF91cGRhdGVfc2NhbGVyKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLCBib29sIGZvcmNlX2RldGFjaCwNCj4gPiAgIAkJICB1bnNpZ25lZCBpbnQgc2NhbGVyX3Vz
ZXIsIGludCAqc2NhbGVyX2lkLCBAQCAtNjY3LDYgKzY3NCw0NA0KPiBAQA0KPiA+IHN0YXRpYyB2
b2lkIHNrbF9zY2FsZXJfc2V0dXBfZmlsdGVyKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
LCBlbnVtIHBpcGUNCj4gcGlwDQo+ID4gICAJfQ0KPiA+ICAgfQ0KPiA+DQo+ID4gK3ZvaWQgc2ts
X3NjYWxlcl9zZXR1cF9jYXNmKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7
DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjKTsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShjcnRjKTsNCj4gPiArCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1
c3RlZF9tb2RlID0NCj4gPiArCSZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOw0KPiA+ICsJ
c3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhdGUgPQ0KPiA+ICsJCSZj
cnRjX3N0YXRlLT5zY2FsZXJfc3RhdGU7DQo+ID4gKwlzdHJ1Y3QgZHJtX3JlY3Qgc3JjLCBkZXN0
Ow0KPiA+ICsJaW50IGlkLCB3aWR0aCwgaGVpZ2h0Ow0KPiA+ICsJaW50IHgsIHk7DQo+ID4gKwll
bnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+ID4gKwl1MzIgcHNfY3RybDsNCj4gPiArDQo+
ID4gKwl3aWR0aCA9IGFkanVzdGVkX21vZGUtPmNydGNfaGRpc3BsYXk7DQo+ID4gKwloZWlnaHQg
PSBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZkaXNwbGF5Ow0KPiA+ICsNCj4gPiArCXggPSB5ID0gMDsN
Cj4gPiArCWRybV9yZWN0X2luaXQoJmRlc3QsIHgsIHksIHdpZHRoLCBoZWlnaHQpOw0KPiA+ICsN
Cj4gPiArCXdpZHRoID0gZHJtX3JlY3Rfd2lkdGgoJmRlc3QpOw0KPiA+ICsJaGVpZ2h0ID0gZHJt
X3JlY3RfaGVpZ2h0KCZkZXN0KTsNCj4gPiArCWlkID0gc2NhbGVyX3N0YXRlLT5zY2FsZXJfaWQ7
DQo+ID4gKw0KPiA+ICsJZHJtX3JlY3RfaW5pdCgmc3JjLCAwLCAwLA0KPiA+ICsJCSAgICAgIGRy
bV9yZWN0X3dpZHRoKCZjcnRjX3N0YXRlLT5waXBlX3NyYykgPDwgMTYsDQo+ID4gKwkJICAgICAg
ZHJtX3JlY3RfaGVpZ2h0KCZjcnRjX3N0YXRlLT5waXBlX3NyYykgPDwgMTYpOw0KPiA+ICsNCj4g
PiArCXBzX2N0cmwgPSBQU19TQ0FMRVJfRU4gfCBQU19CSU5ESU5HX1BJUEUgfCBzY2FsZXJfc3Rh
dGUtDQo+ID5zY2FsZXJzW2lkXS5tb2RlIHwNCj4gPiArCQkgIFNDQUxFUl9GSUxURVJfU0VMRUNU
Ow0KPiA+ICsNCj4gPiArCWludGVsX2RlX3dyaXRlX2Z3KGRpc3BsYXksIFNLTF9QU19DVFJMKHBp
cGUsIGlkKSwgcHNfY3RybCk7DQo+IA0KPiANCj4gU2hvdWxkIHdlIG5vdCBkaXNhYmxlIHRoZSBT
S0xfUFNfQ1RMIHdoZW4gc2hhcnBuZXNzIGlzIGRpc2FibGVkPw0KPiANCj4gUmVnYXJkcywNCj4g
DQo+IEFua2l0DQo+IA0KV2UgZG9u4oCZdCBuZWVkIHRvIGV4cGxpY2l0bHkgZGlzYWJsZSB0aGlz
IHJlZ2lzdGVyIGJlY2F1c2UgSSBhbSBzZXR0aW5nIHRoZSBmbGFnIG5lZWRfc2NhbGVyID0gZmFs
c2UNCmluIHNrbF91cGRhdGVfc2NhbGVyIHdoaWNoIHdpbGwgbWFrZSB0aGUgc2NhbGVyX2lkICAt
MSBhbmQgaXQgd2lsbCBkaXNhYmxlIHRoZSBzY2FsZXIgZXZlbnR1YWxseS4NCg0KPiA+ICsJaW50
ZWxfZGVfd3JpdGVfZncoZGlzcGxheSwgU0tMX1BTX1dJTl9QT1MocGlwZSwgaWQpLA0KPiA+ICsJ
CQkgIFBTX1dJTl9YUE9TKHgpIHwgUFNfV0lOX1lQT1MoeSkpOw0KPiA+ICsJaW50ZWxfZGVfd3Jp
dGVfZncoZGlzcGxheSwgU0tMX1BTX1dJTl9TWihwaXBlLCBpZCksDQo+ID4gKwkJCSAgUFNfV0lO
X1hTSVpFKHdpZHRoKSB8IFBTX1dJTl9ZU0laRShoZWlnaHQpKTsgfQ0KPiA+ICsNCj4gPiAgIHZv
aWQgc2tsX3BmaXRfZW5hYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQ0KPiA+ICAgew0KPiA+ICAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsgZGlmZg0KPiA+IC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfc2NhbGVyLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3NjYWxlci5oDQo+ID4gaW5kZXggNGQyZTJkYmIxNjY2Li5lMWZlNmEyZDZj
MzIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfc2Nh
bGVyLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIu
aA0KPiA+IEBAIC0yOCw1ICsyOCw2IEBAIHZvaWQgc2tsX2RldGFjaF9zY2FsZXJzKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gPiAgIHZvaWQgc2tsX3Nj
YWxlcl9kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKm9sZF9jcnRj
X3N0YXRlKTsNCj4gPg0KPiA+ICAgdm9pZCBza2xfc2NhbGVyX2dldF9jb25maWcoc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiA+ICt2b2lkIHNrbF9zY2FsZXJfc2V0dXBf
Y2FzZihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ID4NCj4gPiAgICNl
bmRpZg0K
