Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D55F3C2D81E
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:42:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B99E10E49B;
	Mon,  3 Nov 2025 17:42:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="meNEWO9o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58C4110E147;
 Mon,  3 Nov 2025 17:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762191734; x=1793727734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=92prLif1UE5O0qFULbJMlRWz3iyxRz/Ydl6Kp33Cb04=;
 b=meNEWO9oorQrC7OudgCyPZTMw9f/chkiV0OJ5SiWcjuqSerAifaEEYlA
 dofhLUqtUfeQ/nTExGDWsKcs4dsmp9Z/ciIWmv6C/uGrZAQ5ceW4xoNJF
 jHsvI9tPTENSjB/gvis+JuRbkzwiNnk3QUPXGm6QIO8h9gh2Ro7JjKEjy
 rO1zJs/bRkEJsMrLePTb6r8XVxwxo7I2R2nxfO8nZyomXorKvsghD4gi4
 pp9dMebghtbzmroc8KbqOXMuBvwdAFoRL2OBebLeiCwSw9GutJGDWdUpj
 v2eQJJv002kRks5L2tjZKDi4akTOJ8Rzmzu8+q2YmEsFGHNrf0wcfSTs2 w==;
X-CSE-ConnectionGUID: 9uDZoWmIQyilBdANlyA4HA==
X-CSE-MsgGUID: RLFLF1M/QV2th7Jclhp1cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="75383651"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="75383651"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:42:14 -0800
X-CSE-ConnectionGUID: HLO3UnQVQtqYp88/TZUHPg==
X-CSE-MsgGUID: 8uvf8lVrRoGTJGAaNdInMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186215890"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:42:13 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:42:12 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 09:42:12 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:42:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MFLZFFoDRP1NlSBoay1ASjo56NteXisLI1qbrbRk8qeMzUHE9MLGUtkr5ED1zDrUard+G4knyyNxEKe/bdt52fB3sf3ERKHRd1cIoS0RGtYlq6j3ZMbttSp0sy08CYZe+dErjNnsHP7+KDjtMIR/BNc7vjBUmLnZyCE9nyvPeeZUknEhiQANpRJv6QCOiufo235LVA97GM+B4PtSJks8mvSg4HoZEhbxppwgoPHZWBwSDE/vKC7amvUKHqA1UhTQ+Wg0wwzdkazwTfPI6GsWqUfzq9rYbsRg2xCQALyYOTee6+axA1idKEeEZtFauOK85tl+lnrN9TNL5+sAIy5DmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=92prLif1UE5O0qFULbJMlRWz3iyxRz/Ydl6Kp33Cb04=;
 b=fY3biJKhyp0rG/jT9iMn2JCKOg7Y9S75j14WK2rysLG+0gqOXUUsEztxZX2VRB5D59k1VjqpBuGy+3mogxTs4oQ1kNC6aoEir8I5ScUUQQDGw3pCBELc9SrxOFkcrvuIN3s4qXU1M1V9G2+09nHOjKIs+1oVUJdOJ4hZI0tD316cj8FY+nJY95w/vQ/VC760MAvL5hUrQ7hzKxxoxVUduN9YXT9QMDtOjSbxCygbGZLPQRB7/z6ywYMNLvx906H8hKkoVYlPQjBUFpNypg4yO4KHaaV9Qb8g+plMfUx9lsXD4HJ9Brt14oU+2OTQP1FdKbsYxFhRj9X02Sz8LanPHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by MW4PR11MB5892.namprd11.prod.outlook.com (2603:10b6:303:16a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 17:42:10 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%4]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 17:42:10 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Vodapalli, Ravi Kumar"
 <ravi.kumar.vodapalli@intel.com>, "Chauhan, Shekhar"
 <shekhar.chauhan@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>, "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH v3 27/29] drm/i915/display: Use platform check in
 HAS_LT_PHY()
Thread-Topic: [PATCH v3 27/29] drm/i915/display: Use platform check in
 HAS_LT_PHY()
Thread-Index: AQHcTOZKEEo0yt41mUyaGY+Wwfc+CLThNH+Q
Date: Mon, 3 Nov 2025 17:42:10 +0000
Message-ID: <IA1PR11MB626693E5D8456D72F6381D23E2C7A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-27-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-27-00e87b510ae7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|MW4PR11MB5892:EE_
x-ms-office365-filtering-correlation-id: 007c1f6a-c2e1-488d-180b-08de1b0050cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WUNtNy9haVVsQ0tpSVdiTytzRFpzMytoYlkzaTJtMnNnczZ5cWNvNklrNVU1?=
 =?utf-8?B?enZVeEJPVW03bVpqSTRlS1I3TzNQZkxMV3Bmd2RDbVpxaDlOQ09iYzA5aGg5?=
 =?utf-8?B?MFM4M1pUZERFRnloVllxMU9GQTRRL0dOSUY1Uitab3FJUEpoODE3akRaUjZl?=
 =?utf-8?B?WnVYVUdNc0pOU0dtRVRsS2cyc0ZJUVR3R2tWcThkSWlWMW9DYWRvRDFYZ0Ev?=
 =?utf-8?B?djBSR0JXRWVUR1lPQ3FRQ2dnd3V5a080NFRXNi90REdXSmZobU4xUUZDOVpS?=
 =?utf-8?B?OCtsTEc1ZDhVdkpNZmtoTUppNVhyZnFhbkoxZUpKN0VER1ZGcFl1R1ZmUmpP?=
 =?utf-8?B?TmdXODlnNXkwTkt6U1lsd0EzMERoaytGU2FqREN1c3FNYzNmRDR4U1ZzckdL?=
 =?utf-8?B?THRBMjVURnJNM1N6NHMvL1VXcjhPTUF5Z2lyMUhHVG9QV2wxUUV2cVF3cC91?=
 =?utf-8?B?RW9WUE16VGZHVE4rSHJzSWJGYmNVWklWQnR4cXdnMHRTWndDMlV2Yk5VTU95?=
 =?utf-8?B?cVNsVGVGZjV4S01mbW41RG56ZHhwdE1nVmtmUi9mUGJiangvbHFlZ3JMK1RJ?=
 =?utf-8?B?dXdzRkZnd2RpUTFMTm5HZXJaNk1mRlpOandnMHFsTGpYbG9aMElIZWdJQmVq?=
 =?utf-8?B?U05uRk1uNGdJNGVzRDh6ZzZ4T1ppVGZOUGJNZW56M1h5V093Uk94eE9GR1Ji?=
 =?utf-8?B?eW9sTzdlODdrcDl4bFhnK0hHWDAzZnMybytmL0xQS3JMcU4vbERBc1ZLU2h6?=
 =?utf-8?B?ZHE5OHNERmQ2dGc3S3Z3czhBdkl4cDZRQ0VNUWlQWVpqdm1NcElpdDJLYTNK?=
 =?utf-8?B?TUtmRk5TeDF1MytqdVVEcUxDUkdPWUVGcnAwanlZb2FDWUpLNHljRXhnWERn?=
 =?utf-8?B?aWVpRG9VZ29CL1FoVGFqcXliMVh3bHJ2WHBueGsxM0ZtTFRJYkxydnZ6czFq?=
 =?utf-8?B?eEVqUXI4MnNwaFVZWTBlSkJsdklqLzRvZEVmVThvRnNsdEhweGN3RDR6ay9r?=
 =?utf-8?B?cFllK3FpUHo0UnVNNDB5MmdFc1dxQkNDM2R6cXR1USt3eWUydkkyNGxmQ0Zu?=
 =?utf-8?B?UkdvV0dlWUx6amgzRzI4RWxvWjlhaDFvcFZqckNYU09hYU5MelZQYnc5Tmo5?=
 =?utf-8?B?YmNESVdKa2Z2YU9VZFRGWUpKSFBjcmRKamFDbk1xbW54TDZDeEdyMFl2N2J6?=
 =?utf-8?B?VVYycEptTklGRVpTR2VMbnphS1QycU15aU01K3YveDc3R1F0VEIyR29jcTJT?=
 =?utf-8?B?Tm1tL01QTUtCOUF4N095VWFhekFOTzZSUFRzbmFSQ0ZVZXBTOFlJT3p2eFlR?=
 =?utf-8?B?NnkzVVgxR2N4dm9lYi92RE1NcW8xQm4wV2NIa1E4QW8xVDdEeXMyMXlPU1lG?=
 =?utf-8?B?bUV6Mm9MdnExaDU0OFFrOXNSdlhxK0pReVpvVVVPaG91UVZHVzhuUThnZm5S?=
 =?utf-8?B?QkFSaXViR1lOVW1hUVVtbmV4OC9oUU1ubklqY3NBaU1aZDlQSXEwdkFtK1J1?=
 =?utf-8?B?Tm1XYy9uU1BBMGRKNGNibXM3OUZkWGxuSjhsamN4c3c2VG84OGFRWUUzdWdN?=
 =?utf-8?B?Vm5HQWhlSGRpVnlXQzJSRzdBK2daWTNUTWljR1hhdWRXQVpkWkxIdzhlLzZG?=
 =?utf-8?B?TERmbkVTOWhJU0JaY3dDMDVybitCRzF6V1VZTDFxUHFvbERMVDVEV0RlQkNx?=
 =?utf-8?B?cWhVcnFsM0p6VlI2SzBCcmptMkE4TEpvUVNtVGRXdmNHQ2YzcXlGQTdQb2VO?=
 =?utf-8?B?QjBHNzgyeEh1c1BreVlIU0k2R09EdDBrbUlXUUZNRDJnL3pzQ1RSTWFES3pr?=
 =?utf-8?B?alF6eEpkZkJIWXIwRm8rdFFHbmJqb2xvczB0MHVCOHJMcnRNaG43Y2NlTEYv?=
 =?utf-8?B?MHhuTXdORG1GY2dyT1QxWGJydm8zNjJLakJYenNLK1BaZ0tnVUllMUVEbURB?=
 =?utf-8?B?K1FheC9LSmI1d0V0aW5vN1VDY3FVZVl4QUVhem1BWjJIRXpWTnpBZlI2aGov?=
 =?utf-8?B?ZnFYQWVyNGRwREY4NTM2Q0VwUk9NMUFqR2NXVXg4SWMwUGJuOVlnWTBBTzY0?=
 =?utf-8?Q?L8LvVX?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXBLemtkZlUyM3IyOWY5SWthZ01KNXF4eGtVOXdSTkVHa0gyUHV4UkxsNElG?=
 =?utf-8?B?TWxHUnlqU0JzRGxaQ3B3TS9jMnJoTVA5eVNKTmV2U3VyNmRSdWIrYWlwU2V5?=
 =?utf-8?B?TmN0endhaTJEUkwzSkFvTFppLy9MSkVDenlacmtiM1JqWHhTYVUzaU1ucXA3?=
 =?utf-8?B?VUN3Z2VLTmV3cHRoR0FySUpUYllwbVVwT1JSWHRDY0x2eGg2VUplR2ROSEoz?=
 =?utf-8?B?c0lSekxxajVZbzY3RkNhK3Z6QmppbWNEMm1iQWpMVDZDK01aWXVrSVBRbGxG?=
 =?utf-8?B?U1FjYnZudHdHRjljTFQzRTdxdnZMclNaMEtnNm5OL2d2b0F0R1hMUUNNd252?=
 =?utf-8?B?SFE3ZG9RS3h1V3JEV3BQdFRGSlAwbXRvN05aZWl4Tkh1UExVK2Zqcit0aEZE?=
 =?utf-8?B?QU9LOVlHYnFKREZzVnhRbGU3bmRtSktXUHR2Sk1iWWFib3VFbWxTamxDUlpC?=
 =?utf-8?B?MUR4K2IzWU9YR05lM212dTk2SSthVDJ4aHVTbHo2dFF2UERrVEpNUkJCcEtO?=
 =?utf-8?B?U0dvWDlBY1ladDU3M21FNU1mck0zRjAxN2NIS05vb0lCeW5Bd3pNaVhOTE9R?=
 =?utf-8?B?bFlrSXBYRWJOS0VJVmhzOTNCeVRWUVdSSVFmNkx3WDhlOWxQRWhmS0ZsVnVN?=
 =?utf-8?B?aTlpUXE4d0ZFL1M5NEI3ZEtwTVBwVDVhck9WUDkwRGFYZzcvdm5lTnM4bTVW?=
 =?utf-8?B?UGNhbnAxTm51OEFrQk1LMkFRaW1ta005MXlSRkZpTXZjQTExeVlkQ3ZlT213?=
 =?utf-8?B?eWJWZ3FjbE5hRVV2WWlYdG1VNUdMSG9adWpBZ1lNOTV1ZHNHS0VkcDBnNHNZ?=
 =?utf-8?B?a3JuMVZnZk53cStJL1UzVldMcFU3OXMzUnF1NE52aUQrWFhNZVNxNUhaQXN6?=
 =?utf-8?B?TlVjdjVHTjA3eVNFYUl6b2JlSWd2MVlOeDlrWlFVbkhEUlUvODVRQXFaYkdP?=
 =?utf-8?B?V3ZRSWdYNyttSmZPN2VFR010cVExclltVFdmL1JrV3lmdXhNUzBQeFlFbHFY?=
 =?utf-8?B?YWFTVlBXZkoxWWVjZThGbENoZktqTVJTNStqclJOWWU0SlNFMGJ0Ull2M0kx?=
 =?utf-8?B?Y2c3Szh0bTdwOXFjUExva0phRmtMZG5nZGRiOGxOUHk2Z1RwQWg5N29KaGtZ?=
 =?utf-8?B?emR5cUw4VWFVNlBCNjREYVlXSXVIM2VOcGp4R0F5dFlPY2x1aGRnR2Q0Sysr?=
 =?utf-8?B?MjljQVFMeFV2NXVFRU4vZFJOc082MzJlbWU0THh4aFJ0Y2c1dGs4YjRMZWxZ?=
 =?utf-8?B?TkFRNVZURGVycmZoeDFna21sYXRwTmphMDUzdkJ5b0psaE5McCtFNC82dGpn?=
 =?utf-8?B?bWI3UG00TGRzTUJra1VKWXdlQW4vRlE0SGxUaFlDeXRENjJKTmlVTG5qaWZv?=
 =?utf-8?B?L0RNM085ZEJ6aTBpbWREY2xKTnA4NTZNMnUzT0dQamlMbmhFeGZDamhXUWVO?=
 =?utf-8?B?R0tRbkN1UytoVGpLNnlKWTI4aHVYQ2FFczl6NjZYb3dGY2lZRnRFQzFET2dZ?=
 =?utf-8?B?VG1BTGh5MnczdGJoZlhvWEhHVXB0VlRCSklFekYzWTJIQkdVdGNIWmUxcHdx?=
 =?utf-8?B?aTZiSTRZUXdQNElHWDZ5d2xpbmFnOWs1bDR1LzE2T0M0aWpJZmZNV3hXNVZP?=
 =?utf-8?B?VEQ5TDVybERuemlZelJJVHhHOTlBN0lUQzQ3anM5VG9Lb3JuZGdIUTNpVjlI?=
 =?utf-8?B?N3lqOFRpWGI1cDllcUhuZndRNEVVdjZZVXNtZmVML054WWI4aVVkMmZ2aEtK?=
 =?utf-8?B?MXpJTVI3MnpkVEduNHJiUEVqU0NMUG1USElDdDkvUU84YjhmSkFiejBmc2k5?=
 =?utf-8?B?M3NrZ3RNeE1BVGpEU2R2N2R6TmM4dDZBWkpuVjN0TTlXNjV3OC82SWpxZXBv?=
 =?utf-8?B?YUlUSjVCamx1bUlPb2VwTWZzVVZ6S0VFYVgrV2kwNDgzbUVEbVlvUktKRnIx?=
 =?utf-8?B?R2RQUXhkNmVZbjhmQUsrM3FSWko0ZmhuUWl1YVNUaWI0eVhKeVVRS3lva0NF?=
 =?utf-8?B?MkpGMVV3THBQVUZmNTViSHZmK0g3cUF0TG0xazB3ZGkvc0hjUUtLZTc2aE96?=
 =?utf-8?B?bldJNmdiMTBiWEUxODl2bjl0dDJCL2U4WFhhc3dDOGlvSHdhaGZTK2wrZ2F3?=
 =?utf-8?B?NFJRQUtFUDJRdHRyaTNrNUdGNGNwRFlBRHN6cEZ2MHNFVnlVTFhqSFh0a2tM?=
 =?utf-8?B?ZGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 007c1f6a-c2e1-488d-180b-08de1b0050cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2025 17:42:10.2307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6GwTUhBCxo4J+tQyQPwutJf+5uo6+tOKepf9FwtsBZ8n68rDNjeYliwSwyimtbjjInMRrAwRXC+GK75euysEMTXp3LVrcaaDbQn1LqNNz4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5892
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291c2EsIEd1c3Rhdm8g
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIE5vdmVtYmVyIDMsIDIw
MjUgMTA6NDggUE0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmF1dGl5YWwsIEFua2l0IEsgPGFua2l0
LmsubmF1dGl5YWxAaW50ZWwuY29tPjsgQmhhZGFuZSwgRG55YW5lc2h3YXINCj4gPGRueWFuZXNo
d2FyLmJoYWRhbmVAaW50ZWwuY29tPjsgU291c2EsIEd1c3Rhdm8NCj4gPGd1c3Rhdm8uc291c2FA
aW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Ow0K
PiBIZWlra2lsYSwgSnVoYS1wZWtrYSA8anVoYS1wZWtrYS5oZWlra2lsYUBpbnRlbC5jb20+OyBD
b2VsaG8sIEx1Y2lhbm8NCj4gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT47IERlIE1hcmNoaSwg
THVjYXMgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT47DQo+IEF0d29vZCwgTWF0dGhldyBTIDxt
YXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT47IFJvcGVyLCBNYXR0aGV3IEQNCj4gPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+OyBWb2RhcGFsbGksIFJhdmkgS3VtYXINCj4gPHJhdmkua3VtYXIu
dm9kYXBhbGxpQGludGVsLmNvbT47IENoYXVoYW4sIFNoZWtoYXINCj4gPHNoZWtoYXIuY2hhdWhh
bkBpbnRlbC5jb20+OyBHb3ZpbmRhcGlsbGFpLCBWaW5vZA0KPiA8dmlub2QuZ292aW5kYXBpbGxh
aUBpbnRlbC5jb20+OyBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFtQQVRDSCB2MyAyNy8yOV0gZHJtL2k5MTUvZGlzcGxheTogVXNlIHBsYXRmb3Jt
IGNoZWNrIGluDQo+IEhBU19MVF9QSFkoKQ0KPiANCj4gTlZMIHVzZXMgdGhlIExha2UgVGFob2Ug
UEhZIGZvciBkaXNwbGF5IG91dHB1dCBhbmQgdGhlIGRyaXZlciByZWNlbnRseSBhZGRlZA0KPiB0
aGUgbWFjcm8gSEFTX0xUX1BIWSgpIHRvIGFsbG93IHNlbGVjdGluZyBjb2RlIHBhdGhzIHNwZWNp
ZmljIGZvciB0aGF0IHR5cGUgb2YNCj4gUEhZLg0KPiANCj4gV2hpbGUgTlZMIHVzZXMgWGUzcF9M
UEQgYXMgZGlzcGxheSBJUCwgdGhlIHR5cGUgb2YgUEhZIGlzIGFjdHVhbGx5IGRlZmluZWQgYXQN
Cj4gdGhlIFNvQyBsZXZlbCwgc28gdXNlIGEgcGxhdGZvcm0gY2hlY2sgaW5zdGVhZCBvZiBkaXNw
bGF5IHZlcnNpb24uDQo+IA0KPiBCc3BlYzogNzQxOTkNCj4gQ2M6IFN1cmFqIEthbmRwYWwgPHN1
cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3Vz
YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9sdF9waHkuaCB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHRfcGh5LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2x0X3BoeS5oDQo+IGluZGV4IGE1MzhkNGM2OTIxMC4uMDM0YzIwYzY2YmFmIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmgNCj4gQEAgLTM5LDYg
KzM5LDYgQEAgdm9pZCBpbnRlbF94ZTNwbHBkX3BsbF9lbmFibGUoc3RydWN0IGludGVsX2VuY29k
ZXINCj4gKmVuY29kZXIsDQo+ICAJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSk7ICB2b2lkDQo+IGludGVsX3hlM3BscGRfcGxsX2Rpc2FibGUoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIpOw0KPiANCj4gLSNkZWZpbmUgSEFTX0xUX1BIWShkaXNw
bGF5KSAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMzUpDQo+ICsjZGVmaW5lIEhBU19MVF9QSFko
ZGlzcGxheSkgKChkaXNwbGF5KS0+cGxhdGZvcm0ubm92YWxha2UpDQoNCkxHVE0sDQpSZXZpZXdl
ZC1ieTogRG55YW5lc2h3YXIgQmhhZGFuZSA8ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+
DQoNCkRueWFuZXNod2FyDQo+IA0KPiAgI2VuZGlmIC8qIF9fSU5URUxfTFRfUEhZX0hfXyAqLw0K
PiANCj4gLS0NCj4gMi41MS4wDQoNCg==
