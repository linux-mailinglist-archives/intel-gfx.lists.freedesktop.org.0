Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wM0EGJn2DmoSDwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 14:12:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B21355A493F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 14:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F9310E173;
	Thu, 21 May 2026 12:12:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jujrPogh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA93B10E173;
 Thu, 21 May 2026 12:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779365524; x=1810901524;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qB5F4waB+MczIaWAUf+yDFRD7siWblZU5DraQckjkb4=;
 b=jujrPoghIiYRSfOkYfbgyZL6pGgHBynMf8CfbovlEIdORiZhxHnub941
 bYNUoaIgweFbS3jqITt0+35HX24hnj51SFctPSvxLTSEeUCARy0qeG6XZ
 /eAUIr5V6+Po5GcDr22UtLBRRAD6RPa5T2BiJ/Q1sv1Lmk4GyprumcN0w
 ft757eCIrG/I8etZTSaaNnMDW0S+W+gVlWGan53nP9jZl5BI+xKoY8mdR
 j9dWrMomBdseyQ9wZ3aRmJA96s1b45FxFMP3fWvepIcnKijTya87NB9tf
 WVd/BAYFK1FirOYhip1Dkhbuxw2nCBWoX2gPO25XMq9nxy8JEi34bv4aF Q==;
X-CSE-ConnectionGUID: Jqzy4TQdS/Gai5e6YadYeQ==
X-CSE-MsgGUID: aZ+TmvKsSJmZ7/rKpsLLIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="84165417"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="84165417"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:12:04 -0700
X-CSE-ConnectionGUID: qkP4xZN+SdiB1vodJYOimg==
X-CSE-MsgGUID: rIGfp7x7T6qDbv8sn8USYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="245541855"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:12:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 05:12:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 05:12:03 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.3) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 05:12:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fOcfVsVqV9gQ1ZD76GDi5T47qnD67PhBS1rNVWaCnE8QppNbLCkYnCtyjB/luFa1t9K5sFfuz9wyMR5W/hoIFRoznhY/3pWTPsWv0qZCkkPbU/2a2CnYIfgLeedEikPIGsuj4mxz1SAqSK8auWSvNCCjXT7MSwxBaF0GI2wnYcJCSfmt75ubwYrJv3f+aEATI1Yn1XpcxmctJzScQdUcVSP00ftsgXpQoDE0/Jqvq3+IsOs7TXY0LY9t9v8TWA5ZrmCPA6wspCE5YKXwDBlJC0cGALe5D/3igQeNaPtjoIJNnlWyMXbr2DAYdeCu9I+PCoM1m9N6d6AY9IorJsGbrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qB5F4waB+MczIaWAUf+yDFRD7siWblZU5DraQckjkb4=;
 b=KBrW43Ei41cdlPfmScoc7/hpBo3od0pRHbwft3FgZKKE0qbYXkp4NE9RUS2PCJo2Iz/YOALF6vKNvUVmdJH5u7SqbmuVCCCeLELun/ULZThxKsBWysAzCzh1yH8yHqeC7nE6LFBhevulgtGOHvABoEu0QggF113dQKDnYFWRZ6QfiAVLoi5nyc9a2eyDYCBWM5lz4953wjzUG4XQnw7O4IyimJSGTQkOtnFbKd0p3k7dF50HbcBTXT3A7rIqmYSo/nNmHClnx9EyZZhTuJGydYZeJ+ACQC47RNq8AmUYl/awrbXLWBMPlyIlH0+2BBNjJd49Z6dfWLKErCaE3bme6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 DS0PR11MB7788.namprd11.prod.outlook.com (2603:10b6:8:f5::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.48.14; Thu, 21 May 2026 12:11:42 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0048.016; Thu, 21 May 2026
 12:11:42 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v6 02/16] drm/i915/cmtg: Set CMTG clock select
Thread-Topic: [PATCH v6 02/16] drm/i915/cmtg: Set CMTG clock select
Thread-Index: AQHc4vtnH3z6gEyntkqGGQerqkjKIrYYMl2AgAAwKvA=
Date: Thu, 21 May 2026 12:11:42 +0000
Message-ID: <DS0PR11MB8049D2B45198589AD80248F1F90E2@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-3-animesh.manna@intel.com>
 <79f55f66-805f-473c-b7f6-f3e9b1fead37@intel.com>
In-Reply-To: <79f55f66-805f-473c-b7f6-f3e9b1fead37@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|DS0PR11MB7788:EE_
x-ms-office365-filtering-correlation-id: 99c025c4-6b49-4978-1891-08deb7321eb6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|4143699003|18002099003|56012099003|11063799006|22082099003;
x-microsoft-antispam-message-info: pGQ/jiEK/srs6zUvYnishifOkQo3N82uXo0OipTAsqD8NvNrps/qT9LC3idTX511UcnuJBN37Izb/3ygNqTJtwfpT6i8OQkGMh7rA8wQOVSLIGfD0Hy3jMz4w8Z3hdTLCpZgelbN7NIpsv3n2mCrWd5LQ2DVxD0I0UgQxyNx0YxshTTTGTkkUeiUrj513epL6AeO3B4pYc0MXDl8/3ayNgRSUZq8n6Xqb7iQEuJNky6slJYStu2Qlo9aRm2LrgureNdoFpJjF2issUrfqO5lpQgcST9YXXQ4q8MNUldiA7NL0x2TLSfHjvJX2gBByg3gMjxsLp4Ljhtfpxj9gkX4qbXnQ6X28+NWRG9QzRJjvP4vIeXzeBP8dObCnYrCMxEGcrDn60lAeHpFSFN2+Y8/0JxbZU6FQZe6QMTaRx5m+6nHY7Fs0zNBMXGK1i0REWzLlkfK/kp/BbvRJswS/yGV+ZVNKT6qn/dRW6efYJ5i/ItHGVMKIZJATD1H3hBiF5uFSvszoJsohujlvqiOxaDg2tnJW2nXiKmdIEvFhLzJM+uP+v/gI/BEcxIH5ziZuUvtZyadKvML88F2HSqYovlLKK293b3xHbvVnfotWwrBsBNN1qGQBgukQyQ2AJszeuR8BawPObUnEGKSiSS5uQXBphu4byFj7f6ElsXbgeFaPgvvGMrLHIX0sNl4GatxOEYT9LbFCiOHKF4l3lI5dI/jgyySZznpSX0iJoLnoY301fRSgOM+23GMpRevmDWYyPIq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(4143699003)(18002099003)(56012099003)(11063799006)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3hUcnV1ZHhyMi8xaStaczNQa0ozRFB3c09EeFBTRTJQMlhtc3ZxdExpWGRU?=
 =?utf-8?B?bFZqWlZhQitVN3lKaWxoS2FIL2xaa015RXRQSUVYdDVWeTZEcm1GOFlMQk5r?=
 =?utf-8?B?d2tnQU5QSzByNHB4RjA2MUNkdlcwRVZpVVA5bGtSZ1FBbHVxZTcvdDJaalpL?=
 =?utf-8?B?VzFxSTI4KzBZYklFVm1LNE5Gbm1UYm1nWnVjbUtBRkdqenBmNzdrY3VzM3J5?=
 =?utf-8?B?ZGE3dTFkQzd3RWdOWTc4c0pTYkdOZ2hHSlVDeXpJeWpKSjA4YXFrSkVZUnI4?=
 =?utf-8?B?MEFlMzZXanlucmxSZjhYVnpvVE9FTlVBS1pLVWFYd2xMb0E0YXI1VTQzOVNo?=
 =?utf-8?B?Y1VhMXlzK0VoZWd3eEtzMHI0OG5mT2JMODR1R1VuUWgyQnhqV0s4QllyaW9M?=
 =?utf-8?B?cGxIWTVLTUVmMjZ3RUtVZnNyaGJJZU1lRnBVWEp2WWdVYXlTVzFZME9vVlR4?=
 =?utf-8?B?bTMwazdsTWpnUXlPZFdsbW40dGhrM1ZuSjJadnk5RHFNYm5Td3VtN0NXUnpV?=
 =?utf-8?B?cWRBdzRRZTYwNmpESGlRR3NvVFk1anJkRmtQQTRONVgwWi9SSC85VG1XWU1W?=
 =?utf-8?B?bGgxWWdFbFBSaE1VS3hsN2FRQ1R3bjNlZ0UyallhUjBjUHVtNFU3SXJBWWd1?=
 =?utf-8?B?dS9lR3M2eFhvaFVINXNYZExhRFZPMWdYL2pxZWhPblhZZG53ZE1zVytQVTY3?=
 =?utf-8?B?bVA0L3F2Uk51cWwyVllPTzlsVGRNek5iT1RHWTRjQ2JCaTZ4Njl4Vlo4Zzhq?=
 =?utf-8?B?RG5BazhyMGlkOWZ0Zmk2Tkc0NG5mSVhkS3NpcTQzS0VudVNOMVlWVDVRakI5?=
 =?utf-8?B?RVVkR2pqL296UG9hMzNHOE9FYlNTVkkwQWNNb2hzcTV2dDJGT0d4Nkkzc2Zz?=
 =?utf-8?B?SWxCT0RPeWplTktQRmZ6RDhUVGZQVUZDeTZZVnR2cXd5V0lIODhRcTNjbGQ5?=
 =?utf-8?B?NklzcU0zZDJ0SFBGYU9QazlXK01aaHMwRk9CU2JBZ0NpSlBxQkhZZXJ2dngz?=
 =?utf-8?B?RGhyL3EvWTJ0Vysydy9GbEdTR0Fpa0tvcDRCenZPUUgvVlF1aWowQmR5MXJx?=
 =?utf-8?B?WGZBTWQrRzJQRTB1d0VBcW1UQ2p2aHNrYmRnbWhpZ0JQZll0QWo1Y3dzRGY5?=
 =?utf-8?B?ZWtQb2dVUVFrU0J5MGVRWjI4NnRmVlpEQUJRK28rZW5hN3dUUnpwbU54QkFI?=
 =?utf-8?B?dElIYndSakhjS2pwaW42eUJ4VkplZXV1M2xaOGllTzB6M25oUlVVUE5SN2Ry?=
 =?utf-8?B?Q1oxYWw3RHRqZzh2UG5aQjRnUjNtYk1iRU1Kai9Yci9FYVgxOXRhZ0RqS2ti?=
 =?utf-8?B?bGdNeG9iUFhXSStmek8zUkdxQXhIcmhRVVBVczZmQk5pWEUzbGZpUk03dHpV?=
 =?utf-8?B?SkNCTlRubEl3WmFiTllIdS9jczg4aTFHMjFQWFZjcTNFaXlQelhGemhkM0dT?=
 =?utf-8?B?eGFoTkcybnV5OW1tbTBTb0MyQjNhR3Z3Tkx1RkJNcFYrcGpIYk5WeVM4Rlpq?=
 =?utf-8?B?MnpBcSs5dE5Wc3RpNUh1RXpvRlByTFRWUkhUTzRMem1hSVkySU1wSWs4YzVW?=
 =?utf-8?B?S0pOUHcrbmJtRVFmZ2RkdUh1TmJhelV3aHp6YU1rWlVKbHc2bEludjF1VEZh?=
 =?utf-8?B?L1lQV3htb2pISUhudGFiVVVJZGFYRUFRV2RQazRySHZIK0NCZ2MvVVZHTEM2?=
 =?utf-8?B?UTZkZTQvYUNzZkJ2UVlMeUtkZlViVWEyNitFdUVtWG51Wndhbzk3Rjl5c1Q4?=
 =?utf-8?B?ME5sSjVQbXRyNEN6REZJUGRKOFNobVY1WnFaanArYyt6VGVNY2NUc3ZZcW1M?=
 =?utf-8?B?eERucERBdnZZUzFRY0x0VzFhTTVXV0NIaEthdXBEek5rRkJicnE2clRLa2RS?=
 =?utf-8?B?WE1rWEVUQ0kyZ0svM1dzdFg3UHJ5MHBWNjJhamlRWHVTUDV0SU11emxPMmZJ?=
 =?utf-8?B?YmxhRTY1b2lrMzBrMDNWQ0FoOVpvZjFFUG1wVmVBdnpxOVhOK214aG9LVjJ6?=
 =?utf-8?B?VVJyWWlhSXJ4TmZHVEpwN3hSOE4xb29Wd2ZZWmVaMnpsNjBqL2w4clpPcmps?=
 =?utf-8?B?MUt5dTJ6RFVXNjk2dFpEQ2VMQkt3bWdXMWh2SW5KakdPcFF1SEthUEI1QkQ4?=
 =?utf-8?B?NTFlMmFjOVhLOE56bnRjcWYzM1hqaktSS3Rrc0VGcWhPRVdLb1QvNjcrUnhM?=
 =?utf-8?B?Vmg1UjZUeWwxRXd4akZpZXE5Q1JjKzhsMDN0Q2dnOXZEWFVobmNJRFAwK1hL?=
 =?utf-8?B?anNjUEIxYkMrRWlTcGdET0x5MGdFaGtac0RobStZNFc1QWJmWHpCVXJxVjBv?=
 =?utf-8?B?eExWSHN0MWE2S09nSTZ4TUtJeE9LK3RkdUlBQ3hnSy9vcnRFRGEydz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mW1W7p5wEWXMDkIW/mgTSDQOnAMeSWun94O8a0/zbRR80RwFkDIlS349c2I4Jrwuy8IC/rWdedtUPK/ywLGTubbtVTKgbU0xv6edIRV8z8EAkr4xTowCVB5qBXYamROOHumvpnNG1unyhdRqXMXAxRnSPjyEdkCDWXCeGagRoPtYmjNtOX0IEUATgYb+FgGd6yd2kFFphzR7FJ02zpme0tShofVvGcaAcM7AG1lLJs4aDY/YPalP+4fil3JjM6qmZIFxIyPNOB0opv/+Z1akKSvOwIXbOi5o79/pop1p/oC6dhrBr08BByc+sq9LNOCd4RBwsDpTqxtr4XBDSKYgCw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99c025c4-6b49-4978-1891-08deb7321eb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2026 12:11:42.4546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w/Wy43sKdGvSsmRPbTwXfFUq1ayb/hvPHpNH3PqISe0TdLVQ01KMHN+Z1+yL3mhW2TCsTvdycw5V5WeoGfIc1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7788
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B21355A493F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGliaW4gTW9vbGFrYWRh
biBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNv
bT4NCj4gU2VudDogVGh1cnNkYXksIE1heSAyMSwgMjAyNiAyOjAxIFBNDQo+IFRvOiBNYW5uYSwg
QW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTaGFu
a2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tOw0KPiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtQQVRDSCB2NiAwMi8xNl0gZHJtL2k5MTUvY210ZzogU2V0IENNVEcgY2xvY2sgc2Vs
ZWN0DQo+IA0KPiANCj4gT24gMTMtMDUtMjAyNiAyMjowOCwgQW5pbWVzaCBNYW5uYSB3cm90ZToN
Cj4gPiBQcm9ncmFtIHRoZSBDTVRHIENsb2NrIFNlbGVjdCByZWdpc3RlciBiYXNlZCBvbiB0aGUg
dHJhbnNjb2RlciB1c2VkLg0KPiA+DQo+ID4gdjI6DQo+ID4gLSBDb3JyZWN0IG1hc2sgZm9yIFBI
WSBCLiBbSmFuaV0NCj4gPiAtIFVzZSBSRUdfRklFTERfUFJFUCgpIGZvciBlbmFibGUgdmFsdWUu
IFtEaWJpbl0NCj4gPiAtIEV4dGVuZCBjbXRnIGNsb2NrIHNlbGVjdCBmb3IgeGUzcGxwZC4gW0Rp
YmluXQ0KPiA+DQo+ID4gdjM6DQo+ID4gLSBDTVRHIHN1cHBvcnQgcmVtb3ZlZCBmb3Igb2xkIHBs
YXRmb3JtLg0KPiA+DQo+ID4gdjQ6DQo+ID4gLSBPcHRpbWl6ZSBmdXJ0aGVyIHdpdGggZWxzZS1p
Zi4gW1VtYV0NCj4gPiAtIENvcnJlY3QgQ01UR19DTEtfU0VMX0JfTUFTSy4gW1VtYV0NCj4gPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IERpYmluIE1vb2xha2FkYW4gU3VicmFobWFuaWFuDQo+ID4g
PGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5jICAgICB8IDIyICsrKysr
KysrKysrKysrKysrKysNCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y210Zy5oICAgICB8ICAxICsNCj4gPiAgIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
bXRnX3JlZ3MuaCAgICB8ICAyICsrDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N4MF9waHkuYyAgfCAgNSArKysrKw0KPiA+ICAgNCBmaWxlcyBjaGFuZ2VkLCAzMCBp
bnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jbXRnLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY210Zy5jDQo+ID4gaW5kZXggZGMwMzliZWE0NTJjLi5jZmU1OWM2MDQ1MDYgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuYw0KPiA+IEBA
IC0xOTgsMyArMTk4LDI1IEBAIGJvb2wgaW50ZWxfY210Z19pc19hbGxvd2VkKGNvbnN0IHN0cnVj
dA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4NCj4gPiAgIAlyZXR1cm4g
ZmFsc2U7DQo+ID4gICB9DQo+ID4gKw0KPiA+ICt2b2lkIGludGVsX2NtdGdfc2V0X2Nsa19zZWxl
Y3QoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiArKmNydGNfc3RhdGUpIHsNCj4g
PiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRj
X3N0YXRlKTsNCj4gPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3Rh
dGUtPmNwdV90cmFuc2NvZGVyOw0KPiA+ICsJdTMyIGNsa19zZWxfY2xyID0gMDsNCj4gPiArCXUz
MiBjbGtfc2VsX3NldCA9IDA7DQo+ID4gKw0KPiA+ICsJaWYgKCFpbnRlbF9jbXRnX2lzX2FsbG93
ZWQoY3J0Y19zdGF0ZSkpDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCWlmIChjcHVfdHJh
bnNjb2RlciA9PSBUUkFOU0NPREVSX0EpIHsNCj4gPiArCQljbGtfc2VsX2NsciA9IENNVEdfQ0xL
X1NFTF9BX01BU0s7DQo+ID4gKwkJY2xrX3NlbF9zZXQgPSBDTVRHX0NMS19TRUxFQ1RfUEhZQV9F
TkFCTEU7DQo+ID4gKwl9IGVsc2UgaWYgKGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfQikg
ew0KPiA+ICsJCWNsa19zZWxfY2xyID0gQ01UR19DTEtfU0VMX0JfTUFTSzsNCj4gPiArCQljbGtf
c2VsX3NldCA9IENNVEdfQ0xLX1NFTEVDVF9QSFlCX0VOQUJMRTsNCj4gPiArCX0NCj4gPiArDQo+
ID4gKwlpZiAoY2xrX3NlbF9zZXQpDQo+ID4gKwkJaW50ZWxfZGVfcm13KGRpc3BsYXksIENNVEdf
Q0xLX1NFTCwgY2xrX3NlbF9jbHIsDQo+IGNsa19zZWxfc2V0KTsgfQ0KPiANCj4gVGhpcyBjb21t
ZW50IGFwcGxpZXMgdG8gdGhlIGVudGlyZSBDTVRHIHByb2dyYW1taW5nIHNlcmllcywgYnV0IGFk
ZGluZyBpdA0KPiBoZXJlIHNpbmNlIHRoaXMgaXMgdGhlIGZpcnN0IFRSQU5TQ09ERVIvUEhZIHBy
b2dyYW1taW5nIHN0ZXAuDQo+IA0KPiBUaGVyZSBhcmUgSUdUIGNhc2VzIHdoZXJlIFRSQU5TQ09E
RVJfQiBpcyBub3QgbWFwcGVkIHRvIFBPUlRfQiwgc28gdGhlDQo+IGN1cnJlbnR8ZWxzZSBpZnwg
ZmxvdyBjYW4gZmFpbCBiZWNhdXNlIFBIWSBCIG1heSBub3QgYmUgZW5hYmxlZC4NCj4gDQo+IFBs
ZWFzZSBjaGVjayB3aGV0aGVyIHRoZSBwcm9ncmFtbWluZyBzZXF1ZW5jZSBoZXJlIGlzIGNvcnJl
Y3QgYW5kIHdoYXQNCj4gVFJBTlNDT0RFUi9QT1JUL1BIWSBjb21iaW5hdGlvbnMgYXJlIHN1cHBv
cnRlZCBmb3IgQ01URy4NCg0KV2Ugc2hvdWxkIHJlc3RyaWN0IENNVEcgdXNhZ2UgaWYgcG9ydCBh
bmQgdHJhbnNjb2RlciBpcyBub3QgbWF0Y2hpbmcuIFRoaXMgaXMgbGltaXRhdGlvbiBmcm9tIGhh
cmR3YXJlLg0KVGhlIERjM2NvIHNob3VsZCBub3QgYmUgYWxsb3dlZCBpZiB0cmFuc2NvZGVyIGFu
ZCBwb3J0IGlzIG5vdCBtYXRjaGluZy4NCkNNVEcgd2lsbCByZWx5IG9uIHRhcmdldF9kY19zdGF0
ZSB3aGljaCB3aWxsIGJlIHNldCBpZiBkYzNjbyBpcyBhbGxvd2VkLg0KDQpSZWdhcmRzLA0KQW5p
bWVzaA0KIA0KPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jbXRnLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y210Zy5oDQo+ID4gaW5kZXggZWQ1NDA1ODE3MzhmLi44NzA5MmNlNmQ2N2IgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmgNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuaA0KPiA+IEBAIC0xMSw2
ICsxMSw3IEBADQo+ID4gICBzdHJ1Y3QgaW50ZWxfZGlzcGxheTsNCj4gPiAgIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlOw0KPiA+DQo+ID4gK3ZvaWQgaW50ZWxfY210Z19zZXRfY2xrX3NlbGVjdChj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICsqY3J0Y19zdGF0ZSk7DQo+ID4gICB2
b2lkIGludGVsX2NtdGdfc2FuaXRpemUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0K
PiA+ICAgYm9vbCBpbnRlbF9jbXRnX2lzX2FsbG93ZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnX3JlZ3MuaA0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnX3JlZ3MuaA0KPiA+IGluZGV4IDk0NWEzNTU3ODI4
NC4uNGE4MGI4OGQ4OGZkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY210Z19yZWdzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NtdGdfcmVncy5oDQo+ID4gQEAgLTEwLDggKzEwLDEwIEBADQo+ID4NCj4g
PiAgICNkZWZpbmUgQ01UR19DTEtfU0VMCQkJX01NSU8oMHg0NjE2MCkNCj4gPiAgICNkZWZpbmUg
Q01UR19DTEtfU0VMX0FfTUFTSwkJUkVHX0dFTk1BU0soMzEsIDI5KQ0KPiA+ICsjZGVmaW5lIENN
VEdfQ0xLX1NFTEVDVF9QSFlBX0VOQUJMRQ0KPiAJUkVHX0ZJRUxEX1BSRVAoQ01UR19DTEtfU0VM
X0FfTUFTSywgMHg0KQ0KPiA+ICAgI2RlZmluZSBDTVRHX0NMS19TRUxfQV9ESVNBQkxFRA0KPiAJ
UkVHX0ZJRUxEX1BSRVAoQ01UR19DTEtfU0VMX0FfTUFTSywgMCkNCj4gPiAgICNkZWZpbmUgQ01U
R19DTEtfU0VMX0JfTUFTSwkJUkVHX0dFTk1BU0soMTUsIDEzKQ0KPiA+ICsjZGVmaW5lIENNVEdf
Q0xLX1NFTEVDVF9QSFlCX0VOQUJMRQ0KPiAJUkVHX0ZJRUxEX1BSRVAoQ01UR19DTEtfU0VMX0Jf
TUFTSywgMHg2KQ0KPiA+ICAgI2RlZmluZSBDTVRHX0NMS19TRUxfQl9ESVNBQkxFRA0KPiAJUkVH
X0ZJRUxEX1BSRVAoQ01UR19DTEtfU0VMX0JfTUFTSywgMCkNCj4gPg0KPiA+ICAgI2RlZmluZSBU
UkFOU19DTVRHX0NUTF9BCQlfTU1JTygweDZmYTg4KQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBpbmRleCBkODMyZTQ0ZWY2MmEu
LjZhNzQ4MTU3OGU2MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gQEAgLTksNiArOSw3IEBADQo+ID4gICAjaW5jbHVkZSA8
ZHJtL2RybV9wcmludC5oPg0KPiA+DQo+ID4gICAjaW5jbHVkZSAiaW50ZWxfYWxwbS5oIg0KPiA+
ICsjaW5jbHVkZSAiaW50ZWxfY210Zy5oIg0KPiA+ICAgI2luY2x1ZGUgImludGVsX2N4MF9waHku
aCINCj4gPiAgICNpbmNsdWRlICJpbnRlbF9jeDBfcGh5X3JlZ3MuaCINCj4gPiAgICNpbmNsdWRl
ICJpbnRlbF9kaXNwbGF5X3JlZ3MuaCINCj4gPiBAQCAtMzQxOCwxMCArMzQxOSwxNCBAQCB2b2lk
IGludGVsX210bF9wbGxfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyLA0K
PiA+ICAgdm9pZCBpbnRlbF9tdGxfcGxsX2VuYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwNCj4gPiAgIAkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkNCj4gPiAgIHsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
dG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiAgIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsNCj4gPg0KPiA+ICAgCWlm
IChpbnRlbF90Y19wb3J0X2luX3RidF9hbHRfbW9kZShkaWdfcG9ydCkpDQo+ID4gICAJCWludGVs
X210bF90YnRfcGxsX2VuYWJsZV9jbG9jayhlbmNvZGVyLCBjcnRjX3N0YXRlLQ0KPiA+cG9ydF9j
bG9jayk7DQo+ID4gKw0KPiA+ICsJaWYgKEhBU19MVF9QSFkoZGlzcGxheSkpDQo+ID4gKwkJaW50
ZWxfY210Z19zZXRfY2xrX3NlbGVjdChjcnRjX3N0YXRlKTsNCj4gPiAgIH0NCj4gPg0KPiA+ICAg
LyoNCg==
