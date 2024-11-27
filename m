Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EA39DA436
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 09:54:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2015C10E439;
	Wed, 27 Nov 2024 08:54:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ou0ZdIJs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C73F510E439
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 08:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732697681; x=1764233681;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pdEQUxWO4fJ2hCllrhyN+GTiRakZRxICKAps8spEvUA=;
 b=Ou0ZdIJs+sllCCVKQtD+FvGWx8MxJfe0AYwRnZ+hnXqHZA8jGHNhfHbB
 co00rnJg5ZEQAHaoMXP94ErXxEtKMaO1cfrPj9+DfnNS6EBqxEPtNAUOt
 ENNNzCw61BmMP1Oce4XjvfoiY/EzZcoP4m/e6APig+2k3++G/P103t0IE
 meRXxcvZNvr0gndQ5R5LV+KQHlSAaox3FFMDBSfRZZj9fJthowws4idSx
 oXCZeMsjgtPrQTq76D7RoWH1wfBSjKu+UVr8BpirMpUwFPePgexZlx4o+
 9Svn77XJgpqthN4r/1ij2USj2sKocVR84yCbh6POjgfKKhUXJs3BpvNy7 A==;
X-CSE-ConnectionGUID: QcEPZ5k9TmOYcUoLBKeT6Q==
X-CSE-MsgGUID: fNOoq/wkQN2lv531hTUWJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36554328"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="36554328"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 00:54:41 -0800
X-CSE-ConnectionGUID: ruYboxo5QD6PEL69XaF9qQ==
X-CSE-MsgGUID: a9pkspW3T4SMmAeDb0sN3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="96303715"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 00:54:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 00:54:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 00:54:39 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 00:54:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xxnwBB6jE5gqIknDkfTYmgX3YjFoEFbWLJRChOV/6iRWNj+crScfcvkEJTWcD7E4J7Z8YiDTTtofUfZC1z/e+2IH0cC/fawcJ+V8Oxj9vtIdAB2uaWQmkRHMpS4NzGZfMuSNcPmAdE1eN9o4Rt5frjmJqyCuafv7JrPcuvuH5wyKwl1Fxh3CknRxLQGr6R8B+jdDZFd7wUzwbONCyO4cseyU3o2w/Si1/oJS4VQ6VPCV4YXvCvfwGRWRticYY9PBg35FzYiI6LhWC4EPPzfmTmMCVadNQtTaKrEdU5xiDCIQRe6BFOSsm02c/RHOw1MvtqY9VpT3pcM1rqhVJ6+LgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pdEQUxWO4fJ2hCllrhyN+GTiRakZRxICKAps8spEvUA=;
 b=MhDO4ve5mg0dWh3FrwknaNhpBpnEo+5+NbIwftLfX/lecOkR/md0LJUI+xv34fRqhOICzjoDYglOOnCisIxdBUTAw9+pyEjxzBIxD6qiECe7QKT7O8vHi+qoddDx+IFlYdRnAkuLSUnLRaLGiEs2ojXkdMaGoUlAZhoBGanjoA//Az/krG1jJvzZ0ugIHOnHgZgjmxHr3SB/aM5Ytq29AUaubVDhMlCko3Tla5EeRp/1quiCX/aQ2bbsqGt+2r2BuncUZwwpMA0TBS3C7fZD4t54+ZN01RgAQdqRUe7ijNN3q7QTdjKjoBjhUyV8mVwdI0RK9Qo5j/u/9Me31qvUEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by IA0PR11MB7839.namprd11.prod.outlook.com (2603:10b6:208:408::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.20; Wed, 27 Nov
 2024 08:54:37 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8207.010; Wed, 27 Nov 2024
 08:54:37 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Brian Geffon <bgeffon@google.com>, "Lee, Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH 0/4] drm/i915/dpt: Try to make DPT shrinkable again
Thread-Topic: [PATCH 0/4] drm/i915/dpt: Try to make DPT shrinkable again
Thread-Index: AQHbQJMxuexXVauvqkqEtJ5dXfQl7rLK0pMQ
Date: Wed, 27 Nov 2024 08:54:37 +0000
Message-ID: <PH7PR11MB8252A402556AAAD37B43D82289282@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|IA0PR11MB7839:EE_
x-ms-office365-filtering-correlation-id: b09f68c7-ceb9-4b74-9d4e-08dd0ec11f47
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NHNXV3N0M2FPM3E2Z0dyeWNzajNLYUF1M2FBUjd2Tm1RcXh6cE8xTU9RbjIv?=
 =?utf-8?B?RUREYXVlU3pVRk1jUG1IRnpaeUlOc085WVVWR2N1WkR1RG5tTEJvUmlWd01B?=
 =?utf-8?B?bzFveDkxejByeW84Z1M0M2pySlJBRGtISjlScmdnWUlmOTdmejFmdi84NXhn?=
 =?utf-8?B?c1BmN084NjgxNXJYSUlUT24vNU15ci83VW5EeUxRTHk2MTRsbUNRVmpEZFBz?=
 =?utf-8?B?a1RKcittWjBmMDV0eGp5VWdwVWsrY0RXTklzakZrc210ZW1yTHZzVFJTcVg3?=
 =?utf-8?B?Z045L2NVNlptQTNGYk5TYTlXYlhhSzIzN011cFc4YUE0YnVUSGRSV3NxRkRF?=
 =?utf-8?B?YytNMlRXMk1UTlhXUy9zS3R2TzM5S3A3SWY2M3hTSUJ1L1lPTVlnbXRoQ0d5?=
 =?utf-8?B?eDVNV3FEQUlpWkYrc2lMU001a0ljMVFJSnk4R2E3ZnZtUDc0cnhiN2Y1K3k3?=
 =?utf-8?B?RkxVeGRaa0JRMG5PQjRmeisxZDNkNEVjV1lWZWhuemtMZ21FWXdHellXWm41?=
 =?utf-8?B?dm1la1Q5eEF0UldXbE1kRGxpVjJ4dHA3cnB4V0VDTjFMNnlCUEJFb0VwKzQv?=
 =?utf-8?B?eHRIQzJrU0kvMXNaeHlkZTBvS2NuT1NkS0RtaWhBUUZFREQvcDVSL0RYR2Vq?=
 =?utf-8?B?bENqNGp1ZkxYZW0zbUYrcm5rL0hFL0QxdW50QUliMTErUGtSbktpQ0xjQzlG?=
 =?utf-8?B?ZGpNb1Q2UW4yd1JWVDA5YlYwWUdMOXpCSVRSWGx6Y2QySGF1ZklGaitzYnFs?=
 =?utf-8?B?VDFHQUpQcUFaRU1QbFhVaWptcCs2alpSV1lscEo3WVRsdSsxR0hoWUREbnNk?=
 =?utf-8?B?dnZBVjdJWWN6Sm5CcFFYMjZIbFRUaGVIVlBSSVRQNkU3VVZKaUg2M1VZTjBV?=
 =?utf-8?B?bG5xTzNvd0JIemR3WWM3TDAvZjUxMUE0THpsZHhJd3ZCSDZRT0haeWVaYjNE?=
 =?utf-8?B?VlFEdzJjTjhKeEtKZUdhR1NYc1JIWWx6RU0rcS9kdGxtYkY1NEpuWUdyY29l?=
 =?utf-8?B?S0M0azJUSE1RaVR1eUdjUlZFakdHUWJTRDlScmV5RHdzMFBCSFNZT2lQZHpC?=
 =?utf-8?B?R0ZYSlg3RjNKTkY5SW1QMmRPdkRFK3M5dCtDcFVuOE5HY1FhRHU4SlArUnIv?=
 =?utf-8?B?YldPa2pPUVo5aGlQVGFCUk9wdnB5UDhuR0g3ZTdFYjRZa1RJK2RqSFdvRGtl?=
 =?utf-8?B?RE1paUNVamUvQmN5OGM0TUxmc3ZtQWFFcWhwajdNV2F1aWtxdk5uZzlSclM0?=
 =?utf-8?B?aGp5bHhMdHpOTmo1Y0ZwTlhnWEkwWUxDdXNyQ3phai8vWTZTQXdLcll2SkNZ?=
 =?utf-8?B?S1ZxL1dkZGY2eHRDYjU3dGV2Zk1EMUVTc0Q4eHZ1VHZFcUY5Q2VuZnEvRTNn?=
 =?utf-8?B?eFNTR3JlK3Yvald2N2czcmpPY05RTFdOK1UwSTJ5dGgxa2hyNDBDQ3hYczlh?=
 =?utf-8?B?N0NFaGx2UGcxdGlIc2I3NFRFczV4bnNPWjU4R1lwMm92eGgyV1RWK1F6eXR6?=
 =?utf-8?B?djEyUG5EMVI3Zkk3S0Z3d2xvcnZVbFBmMWxoeVk4ZGNvWjF6ZFNGVUVlZUxl?=
 =?utf-8?B?ZFdma0Nrckw1ZmlFTEVYRkE0YlowRzJ3bEpYSE9TU3Qwa1pRd3YzaWxMSlBD?=
 =?utf-8?B?TEF6QWJXdXZxdUl6ek1DdENuTzd2MzBPSzMzZHZxQ0oxZ1FzUjRaUmlhaXdS?=
 =?utf-8?B?ZE55VmJpWnNnend0Y3kxOGE1TlZRL0t6YU5jYTZoUTRWaWhmVnhtS1JSbHpH?=
 =?utf-8?B?L2MyejlMZTQ5TFg0aDBjYzQwcElOb21NeWlzbkxsd29HZ1RoVlZXQ082ZTRE?=
 =?utf-8?B?Yko4d0ZvalBjenVlTENGWllNVGc5SS9QTHN3dENxZUxQQTlKYmNUMmVqZmsz?=
 =?utf-8?B?cWRpdk4zdmhVSFZLSzdNUk1ONVExUjEzZHprZmF4NEdjYnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bVlBMy9nTi9mWEc1TGZXQ2g1N3dOZWFsdnRlUWluZExPbWt5SzNucUlkOWFZ?=
 =?utf-8?B?RDVkcE9BMnhKNHZNMU5BUTRKNlV1c0F1bTlQT3JOMDFRbXM3Q2xvT2pmRUta?=
 =?utf-8?B?bGZXemRPa0hIREZFYUx6RGVHSHZxak5Rb3IwR09nd1RWWW4xVko4OFZRbTlO?=
 =?utf-8?B?UGNDVjhyam83a3RTMTJHM3BDd09LQ3JMTlpXeDB0b3JERDRuRTJUQ1VlWVBB?=
 =?utf-8?B?d25jdnJJOEM2ZTZ6R0pGRHRnSFpQSDBaZ3doVUlRNVpsSUhlVThhMHlHRWZL?=
 =?utf-8?B?STRZSFc1anYvb1JmVWROalM1Q0hBSmNySzVYQWphVU9WejZZVWFkRFdJQTRO?=
 =?utf-8?B?NTJhckE2WlZtT25YZmJ3Q2gxVmhZRXNnRXZxd2thaEtRYUdONGNKb0EvSzA0?=
 =?utf-8?B?blBrZFdEVmczTldlV1FPaUZDZVVXNzJqc2pJYURKZ1ArR1UzTGZRcXlBb0xP?=
 =?utf-8?B?WE5iajl4bkJQSHlQQnVDWU9YN1g2WUh4RFA3Vmd4WHB2NlRPWmNiL2xHZlln?=
 =?utf-8?B?a3M3QmUzYVVORnNyMEE0L1dVN09wNGl2MUVvbXlGNEt1SVAzVTh6My81UHVn?=
 =?utf-8?B?UmRZbHA2Uy9adit2aUVRZmtnVTBacmdkelI3VnU1MjA1QXAvN3I2eXljV1Vl?=
 =?utf-8?B?TUJtSWQ3b2NUN0wyc3d4anJFbFg3RFBlVEZGL2NDRnZrUmlhOEcvaE5mRjNQ?=
 =?utf-8?B?enZQWExKcHhtUDY1RWEraTZBVHQ3M3FyTGRUdEVkZ1UwQjMrL0VvMXRjVGp4?=
 =?utf-8?B?ZFdyL3d4alM1TkVlU2puMW00UGpVU3ozdExYL2tocC9tT3RoazJBc1hZcCtP?=
 =?utf-8?B?M2kyR25UalY3YVZGNDIyT1FLbTY5YnhSaEdGS3JyUXNCbEMvMXIwYmx4cGFm?=
 =?utf-8?B?c1NSdjZJQU9kOEdGWDhKWmJhZmcwMnUzZk5SOTMvc05hWkpyeXJhL1NzbFdP?=
 =?utf-8?B?UGJEY1VrUXlXd0dha2dTSzFCSERaUXlwcjlEUVY3eSt1MzIyKzYzQXJFSmdN?=
 =?utf-8?B?aEpMYk53S3dzMlMyclhCTXJ4eld3REtPUlVpYkhURjVXL2M1WExEbWl0elpj?=
 =?utf-8?B?S2xpWEdsSmszK3kvSks0bnRVUTNYUnhaMHp6RCthTTJaeFl5NXJTNjB1Lzln?=
 =?utf-8?B?eWZiT3VyeE1tSHYvVDgrcEgzQWN0dHRGL0R6MWE3QmNyYWl6b1pjU1BRYnRE?=
 =?utf-8?B?K1lzZzNJM2hST0RBM2ZLRktPZUo3UGZEdHlxNmVqZXR1eDFWOC9ZYmJZdk9W?=
 =?utf-8?B?UldGaHNNTHlkdUV5cVA1UFpwTUpwNlZmQnRMTzd6c1IvWUV1NlorS0hxanFt?=
 =?utf-8?B?Sjlub3dlS3FGM1lLMFRYK0JPODNYOERiZEFkVFRQcHkxUStnUm9jck1tRE1I?=
 =?utf-8?B?NENMNlN4QzVrUG9HdlB6LzlqcmoyQ1A4a0wrUjRJUmNleVhYbWx1eDVoUHVV?=
 =?utf-8?B?MGFPTC9Ic3hwenJDcnA0VWxIMHNSdS9qc0lreklYS3FpZHBNbXgvZWVlZzIv?=
 =?utf-8?B?ZHdCQXZYTnUvZzhDWHl5Y3RNV2VTRDVrWWEwSk9OWUo2SVhsN2UrZGpwR0Z4?=
 =?utf-8?B?dHhSeUhHOUUzN2gxUHoyVjZQWDBCZXNIRndUL01WODlWRnRoRE5STStNWGtW?=
 =?utf-8?B?clFhdlkvbGh5OXMzL09Edzlod1JkNnB1blEvQlZ3NTUwMldoaUNrN2ZzT3Rl?=
 =?utf-8?B?bHI0M0JickpYTk80cnRpYzA4UjUyMmkwTS93TVVrZlpYdXFWRU56c3oxQ2hm?=
 =?utf-8?B?UGZDYmZyK2E1REZlWkw3Sml0NTJmd2VDRDVUSU13OFc1dnBZYU8rQWdRS1ZW?=
 =?utf-8?B?SzdMSTkwRExtdC8yT05ocDV2WmF2U0lHZGJOdFZPMk1mTjZ3YzV1dnpyNWVk?=
 =?utf-8?B?VHVzUkZsUlRITjlDQzA1WFpMNzdDZnVSTmdjcmFqMERrU3ZvT2RlVUFwUkdl?=
 =?utf-8?B?cnlOeE01NkQ3NHVIY0V4RzZzTU8zYjFTUGNzdjlzU284UU51NlhhdmJIQS9M?=
 =?utf-8?B?SCtFSW1MZHEwZXR0bzNiMC9sNXc3NXkvTlZrK1lSU0dVenIveTRrZE4rcTdt?=
 =?utf-8?B?Zm45WjJEZDRJamNJQmZuYWY5R3prRm5QKzFEeHBCWnBDZ1NnZy90NWtrQk96?=
 =?utf-8?Q?DdhU0++BvWOjET0b3TgyBztzm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b09f68c7-ceb9-4b74-9d4e-08dd0ec11f47
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 08:54:37.2623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oCsXTBZzLc1VPfG5Xm//IuvWfBMkWm7woY3JgzAgfvQg2no75mnd7LF4b1vRuRyjcEh+2xHZ5qRLdueZlWbJckVSQNKlOs1YmAO1fiCK49k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7839
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

SGVsbG8gVmlsbGUsIFRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHRoZSBzZXJpZXMuIFdpdGggdGhp
cywgd2UgZG9u4oCZdCBzZWUgb2xkZXIgc3VzcGVuZC9yZXN1bWUgaXNzdWUgd2l0aCBEUFQgZW5h
YmxlZC4NClRlc3RlZC1ieTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNv
bT4NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqYWxh
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogMjcgTm92ZW1iZXIgMjAy
NCAxMTo0MQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogQnJp
YW4gR2VmZm9uIDxiZ2VmZm9uQGdvb2dsZS5jb20+OyBTcmluaXZhcywgVmlkeWENCj4gPHZpZHlh
LnNyaW5pdmFzQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDAvNF0gZHJtL2k5MTUvZHB0
OiBUcnkgdG8gbWFrZSBEUFQgc2hyaW5rYWJsZSBhZ2Fpbg0KPiANCj4gRnJvbTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFRyeSB0byBtYWtl
IERQVCBvYmplY3RzIHNocmluYWtibGUgb25jZSBhZ2Fpbi4gVG8gb3ZlcmNvbWUgdGhlIGVhcmxp
ZXINCj4gc3VzcGVuZC9yZXN1bWUgaXNzdWVzIHdlJ2xsIGp1c3QgbWFrZSBzdXJlIGFsbCBEUFQg
Vk1BcyBhcmUgZXZpY3RlZCBkdXJpbmcNCj4gc3VzcGVuZCwgYW5kIHRodXMgcmVzdW1lIHdvbid0
IGNhcmUgd2hldGhlciB0aGUgRFBUIG9iamVjdHMgZ290IGtpY2tlZCBvdXQNCj4gb3Igbm90Lg0K
PiANCj4gVGhlIHByb3BlciBzb2x1dGlvbiB3b3VsZCBwZXJoYXBzIGJlIHRvIGRvIHRoZSBEUFQg
Q1BVIG1hcHBpbmcgb24gZGVtYW5kDQo+IGluIGRwdCBpbnNlcnRfe3BhZ2UscmFuZ2V9KCkgYnV0
IHRoYXQgd291bGQgcmVxdWlyZSBhIGJ1bmNoIG9mIGV4dHJhIHRob3VnaHQNCj4gKGVzcGVjaWFs
bHkgZm9yIERQVHMgYWxsb2NhdGVkIGZyb20gc3RvbGVuKS4NCj4gDQo+IENjOiBCcmlhbiBHZWZm
b24gPGJnZWZmb25AZ29vZ2xlLmNvbT4NCj4gQ2M6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmlu
aXZhc0BpbnRlbC5jb20+DQo+IA0KPiBWaWxsZSBTeXJqw6Rsw6QgKDQpOg0KPiAgIGRybS9pOTE1
OiBEb24ndCByZXVzZSBjb21taXRfd29yayBmb3IgdGhlIGNsZWFudXANCj4gICBkcm0vaTkxNTog
SW50cnVkdWNlIGRpc3BsYXkud3EuY2xlYW51cA0KPiAgIGRybS9pOTE1L2RwdDogRXZpY3QgYWxs
IERQVCBWTUFzIG9uIHN1c3BlbmQNCj4gICBSZXZlcnQgImRybS9pOTE1L2RwdDogTWFrZSBEUFQg
b2JqZWN0IHVuc2hyaW5rYWJsZSINCj4gDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyAgfCAgNiArKystLS0NCj4gLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfY29yZS5oIHwgIDMgKysrDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2RyaXZlci5jICAgfCAgNiArKysrKysNCj4gIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAyICsrDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jICAgICAgfCAgNCArKy0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgfCAgNCArLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMgICAgICAgICAgfCAxOSArKysrKysrKysrKysrKy0t
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuaCAgICAgICAgICAgfCAg
NCArKy0tDQo+ICA4IGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9u
cygtKQ0KPiANCj4gLS0NCj4gMi40NS4yDQoNCg==
