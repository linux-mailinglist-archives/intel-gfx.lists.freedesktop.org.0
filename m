Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3209B2428F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 09:24:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54ED010E4C3;
	Wed, 13 Aug 2025 07:24:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dLPmEV3w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32AF10E1C3;
 Wed, 13 Aug 2025 07:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755069897; x=1786605897;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i5QPEz6M3oKaGZXxLURm5vRnVmeE608kXK+SzbsQvuA=;
 b=dLPmEV3wEQiTJHw1aFZ/3l0yTHH3AA5ESfgBBwETnlOCqKLX+z8zT4L0
 zH3uZnETHydMwOVvIshB0kKK30K2Yac4BpFcwmNAYaJRb+Z6csrbGa1KD
 Akn6gZgjdT9xQ0TrR1TeoLCJxSWbrRaEawQNs2qscgqMBPzAqFBVMdsnt
 Iuj0YDWhVX+PlEY15rNEXzwcq5GhDU3Znn99d7mRyaNo66Es3VNOu5JxH
 eVrtXJAF+yI3ariA7IUkOSBNZF+2ZHRBT4IL83I6c5k/nTTYkq4uA8J7f
 0pplfQLkA0sTH2CGR+PFiE1GuHFbmMZ13d2MjAHfdmUWm2aNdyh6Wp1rA Q==;
X-CSE-ConnectionGUID: SSeMM3rjSWi6jDNsi1cVUQ==
X-CSE-MsgGUID: 5GXNoE3ATTSVdaKsbrjDtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="60977229"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="60977229"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:24:57 -0700
X-CSE-ConnectionGUID: gQISOnmGSZ6tgmeXvYj/0w==
X-CSE-MsgGUID: vZtQHkj2QOiGX6VzWgdRhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166393412"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:24:57 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 00:24:56 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 00:24:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.86) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 00:24:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mwEaoRG+61z85ZPufZXCb82yvpM+GXGHteMhx+GP4v7T5vYxM0Yx1Bd49m1wecRvSKfM40ig+8b+MmnRin7frnOcBut6KIwz+w9h9JNLUXmHrY7xyCbp7U8P1luIne9CD4vWLvqHRSTJpdKGd349qWYJpOxA1aeUC2nVv803CR5UIlyscw3/TF5reJfJ3tFHIer5cnHFG4VlacoU+9oiR0S04KuEMlRGHe1frMa/OiUoWSrKaSSY6+CHWYhkyp6VhqxuG2uIvXileIcYsdQfoRUY+VWrGmOjnDUoCT2rvTkroh9SCkcWRLjPh3nz4296/HkP/umFKc7PgXiCmqF17w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i5QPEz6M3oKaGZXxLURm5vRnVmeE608kXK+SzbsQvuA=;
 b=YU4D5s1EIdOJ+2DFk52rm+b3gAFlO/mF9teLqmo6o65yPJPHSiBE5Y6Q8NiL1OgFb5rHjj9uBfzCMvhC1KrRuGfqoAsdCykDEN13/5RqPuYIKwsLsK7/FguQeV34lrVeK+7eC7QzJoA46pUWLiaeywWAM2HRNDQIlLEzRhp+K4cacGiqCqs2KmYdNZsgNcobFl2xRFayLKxGx8EYIhgGSSAhfzVaanIES8nagR57rE6mI5OqbrZw6qq0v5ibIHGqtSSmS3msLl/NSpTqPjz0kjYEhtypMb8HeGLAk85++kmKimqsw0Y6uf6S50Cbsszj9nMHzEi/DpSwJAqCF7oFUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB4885.namprd11.prod.outlook.com
 (2603:10b6:510:35::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.16; Wed, 13 Aug
 2025 07:24:54 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Wed, 13 Aug 2025
 07:24:53 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 1/4] drm/i915/psr: Pass intel_crtc_state instead of
 intel_dp in wait_for_idle
Thread-Topic: [PATCH v2 1/4] drm/i915/psr: Pass intel_crtc_state instead of
 intel_dp in wait_for_idle
Thread-Index: AQHcBpInGJOsbfhvFUuYaXU0rwtPkbRgOX9A
Date: Wed, 13 Aug 2025 07:24:53 +0000
Message-ID: <DS4PPF69154114F535C26BCA3275FA511ADEF2AA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250806052213.1800559-1-jouni.hogander@intel.com>
 <20250806052213.1800559-2-jouni.hogander@intel.com>
In-Reply-To: <20250806052213.1800559-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB4885:EE_
x-ms-office365-filtering-correlation-id: 32e5a0a6-e6ee-4b8c-7420-08ddda3a7f72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?MXhnVmp6K0tZSWJsZGFUcHlxQ01sd0JnKzhtRm12aU1pUDhuU0lmMndGTWht?=
 =?utf-8?B?UEt2VVZPYzZzUHpDN211S1dzeVJ3TFh0QzgyN0pxNG9YcTZBQktLR3VMWmhV?=
 =?utf-8?B?eDNpOG5rT0VhNkdEMHBwYzZoem1RbjZ5SUErYi84dUFyenBjOFF1S2JxQlBE?=
 =?utf-8?B?QWpzMk1tNmJQR0tKbDgrekhvZEFWbVN3aUJaMWF3Sk5jNm9oZTRyL0Y3Q2Ru?=
 =?utf-8?B?ZnpSU0NoTjRkVnVzYUVhNWhCcVE4bXJ3T3RIWFJWM1lmUTR3eURXblhDdUdh?=
 =?utf-8?B?VWJ3bjcwZVNiV0xnUTdiOW85YWVYMlJYd0dDKzRhcXFDU08vMGJELzh0cXRN?=
 =?utf-8?B?bUM3VHBMN2M1a20vZXlHbDN6ZEdTQ2xURUh0VFI1WTB6V2VZNXJUdU50K0FV?=
 =?utf-8?B?SHdGdHE4bnQ4YTFZNzlkYTRmU3B4KzJrbDhLWUpSYWxBRktIL1N4cjU2QTVL?=
 =?utf-8?B?Tko2MFpPQVM1SDEzUWxjWVlwNWNJaHFiai92ZlZwSCtUdjJ2NkZHUXpUQ2VG?=
 =?utf-8?B?bm1YWTBjc1hsM0VzYkxoMGlJaEQ3MEhJK29pNXpzZUE0RVBleG0wYk8vSG51?=
 =?utf-8?B?dTlFZXJrRUt5cTFoNlNHVFNhK1VSRTVmVi9VLzhBb1RCZjZlZjZUd212MmI3?=
 =?utf-8?B?KytIdGs4Ujl5YTUrK2F0a2RJQ1BYMEZFMjJaT3p2SGRZTm54SGtTY2ZWREFp?=
 =?utf-8?B?enZZN1JPQWE0bHcvRk8xclNjM0laL0tIQ1NDNTdyZlBWcDJlbG1nSGVLUmNz?=
 =?utf-8?B?dnZSOHVna0drQlBVdkVPVGg5alZLVnEyZFh2eTZZRzNHYVdMY3E5RGRKb2lz?=
 =?utf-8?B?TkE2dE5kVTdleXRCcUcxRE5jQ09obm1hQnBjSFhiMHQ2RWlLWlpJYUFQYXQx?=
 =?utf-8?B?MmFoTFNKclVFV3c2VXZONHZNdW52SVJ3ZEovNmx6TitkSTJaeFRIVUswSitz?=
 =?utf-8?B?TkdUVHQ3bkUrTkQwVzJDd1hoWDN2SEVIQkg5WktiS3JnelRrNGltNWNibDUy?=
 =?utf-8?B?Z0wwUjN6LzJtb0tjWkNoRGMrUkZITmxRSnRSMkdrUEtJYmVDTVZvS1lJd3Nv?=
 =?utf-8?B?eVJvakwrTlJ1YTFRWjdxS0loTzZ3SHFFMG9VM1QrQWxiejJZdEFlME5MVXNy?=
 =?utf-8?B?byt0aFpmRnlEZTl1b1pLTy9wckZldGtBWWNHT3hST1hxbjZzQnora2NQeWlU?=
 =?utf-8?B?a0VsaW9MaGRDZEJDTVVKMEFreW1EQkNXVmZ3SlRZZDRsQmduMHB6bVZaSGNR?=
 =?utf-8?B?N0Y4K1NpS2l6VUw1ekVjZDFsSmJmVEdMelliR1QydGpmSitaZmk1TUF2OU16?=
 =?utf-8?B?ME02YUxUTnJaWENIMFprc1ZGTDlydk0rZTBPWkNlV0sxY2hXSmZNalVNUjkr?=
 =?utf-8?B?NXhLNUpOcTVMNmFlWVYxc3VzNmttaENGVTFKSU9reVplMHp3WkZ0bUV5c29q?=
 =?utf-8?B?YUZNR1NidjloYUJWYzNPQ3Q3MmJYclJBM2VleS9namdqS2lvVGJmdzZyc1hD?=
 =?utf-8?B?b1lNSWtBWVYwaVFVUTJ4YU1lZU80QzNzWGR3d1VrQlBtNkpWdzFFR2JWUGZk?=
 =?utf-8?B?V2JMcDRmVEkxay9uYmZHODYzdGNnaUxrRW5Mc1lKUUJRczNuZ1IveThMSms0?=
 =?utf-8?B?L0ZOYkF1NEtiSmlUMEVWNDduaDRhWkpVZXRiUzVGUzNaaVJYZkVYcDlHSzIr?=
 =?utf-8?B?RXY4RmZ0UHVRRjN1Yk1KcUdYbm5xQ2FtelJVWFRibHVCV09LZkFnVVpMU1lw?=
 =?utf-8?B?ejhXY1AzdmVlK3BOa1lHdjFwaWdINWNHV2t0b2hwMmxIS2E3SUtIUE5PZlFn?=
 =?utf-8?B?eFpuM2xTb2EwbjRVL0dWb09lOWNEc1hsampHRmtkajdQakx0ZkJlekVGcHg3?=
 =?utf-8?B?SHRvaTB4bkNTcUY3Q0FReXhKNzNOWUJWMlFsMlI3d3VEZ0laWE1JaU1yTnJZ?=
 =?utf-8?B?bktvQUhhVkRvcSs4NGUwdmt6eUd0cjFnbHNTK1IvQWRJWGx0MWl3T2JJbXZU?=
 =?utf-8?Q?zoyuGW5m5emrFkpv9hVFVRr3Jxs1us=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c1lZWHBpRlBlTmhJdWlxY2lJczYyVE9icU5qNXFkb1ZvZm01MThDVDFWOFZN?=
 =?utf-8?B?cE1Xamh4dWc4ekkyWCt4SG02TVB3SlB0ZTh2U1BXOHpiRmQwbkZZOXA5RU5T?=
 =?utf-8?B?UHdpdDcwVWl5WVdMazNDeENMMmdNai84WkxYc1JzQ0gvdW94NW9Kbkc1dWlW?=
 =?utf-8?B?cEkxdXpnb1Jsc1FzcXppeG5SelFRc1dGMnRQcDI3d0pubGw0ZXc1M01SR2lS?=
 =?utf-8?B?SDd1bE4rVWVRdm16UUF3amYzeTkyeEx5dTNiQWxEY2FJZWRZNUR4Tkoybmkw?=
 =?utf-8?B?YzYvUVY1cnJzQUE5TnFlRURscmVYcWlGdlJVK0I4U0Q1NWUvTHFHVnVxNHFB?=
 =?utf-8?B?eEQ2c3NERlp3OW5JUTVvRlJHMTZNWjVkUmJIL3R3dkh2bGcwVmJJemJQM3VK?=
 =?utf-8?B?UU0waGl5bWQxSkhnUEYvckp5VE1tL0Q2Q3lpbFlFTmxyQ3NmejdTTjNMcGNI?=
 =?utf-8?B?ZVE5TzJaVDFBN2lFaXcyckZhOHJiMTc4YmpuZEdoaEVOdk9kMXVZbVdPRE1s?=
 =?utf-8?B?empGSkwvWUI2TWxqbDE0Ums5bWpwb2dla3FMWDQwRW9WV3o4WTFuTm9tRENZ?=
 =?utf-8?B?VmYrRXpackZqSnFydmVOUngvOFFWeXNmdUV1RVhrazZGWDZSeC9nS0pTc3NR?=
 =?utf-8?B?OUtFNDJjL2lIbzZjQUY0Z2JPZWVhM1crbXl4anNHcjFNMlFSNVRIRGx5ZDdZ?=
 =?utf-8?B?eGNTaUJWQmhXUFg4WFhGZ0VGTEpabGVZU28wZGZZenNPVUdSWjA4aUozVTlZ?=
 =?utf-8?B?UmRGbkw0c3Q5MjBTcmVsczJ6cmx1Q0ZVbFlQYVZkY0dMSm9hZGJTTDY4dFBj?=
 =?utf-8?B?bnBLZGJOamVqOUEyWjFjUWtucE5DVGpYMlJRayt0NkovOUpnRVdsVmVHVGpO?=
 =?utf-8?B?L1laYWNmYm01YzQzMWtMOVNyUnd1S0N5OFB5OXMySlFjT3B0eUZDcFRING5L?=
 =?utf-8?B?NUEvRzc3TXJIZm95NlNvWGlmVmRjOXlUUmhuWHFQNjVKekNwcjRBUUdTSUhE?=
 =?utf-8?B?RnFnSkRybG9XT2FSb0pSTVVsbHp3eTJwR3NJTGd0SWhtV25JMzJIeE1FY3Vy?=
 =?utf-8?B?cHVTNUR5d012ME4zeEVrNjU4VzBGellMYk02dlhGOWJhcFFHaXNPSjFHY1Bp?=
 =?utf-8?B?TUowbmRJSjdWYkxDOTJlVU9xYkhSNmxYMnpRckRkL3M1dGIycjRPN0owNFE5?=
 =?utf-8?B?czl0WGI4NnBJNDVRSktOYW8yOWlKSXJ3cHFvK3JqalRodUVodCtpZm9ST1dz?=
 =?utf-8?B?dENIQTVsN2dzVzdpV2ljbVNQdmFLZGNDMUJOU3RnN1V0M3YyY1pGUnFEazNx?=
 =?utf-8?B?a0lwUTNwY2N3a2hhZzJadmxLSFEzejFCK0hkL1kwc0RLazVrdEZ1RlN5QVA3?=
 =?utf-8?B?NUx3c3hRYW92NndWNnYzWjdnallIT0Y3Nis4WmNFVGF1bDhjdDZvNHdzanRW?=
 =?utf-8?B?akhDRXBmZlNlM09PV1JrTmZqUEg4eThSeUpMcGZpbmdOdHVIeUtjRkxieDZU?=
 =?utf-8?B?a3hsdU1vNDU4NXlXUmdnOWZnMDNOS3REbWZMUjQ3em1FcjJjZ3dCVFVmVjJp?=
 =?utf-8?B?R1c3V3FxNVJ1Mkt4N1gzejJvZnRoWDRCbUt2RE1xT1pUUS8wV0kyeTlBcEZQ?=
 =?utf-8?B?WmM0amJyeStIZUE0VCtKSVM5Qk15OURFUDRkUi84c3YvYlNNSUxuTlRqYXgv?=
 =?utf-8?B?a3RrM2xIaEM0eGM4STFKaHp5UDhzaDRYNkJEMkVvbTEraG5kZTdQblF2b3RP?=
 =?utf-8?B?TDM1MDErekpsd29obHVQUVZZQWNqZFN4OUxCL25weGNsR1Vsd1hKaW4xbjdQ?=
 =?utf-8?B?Y0wxNWIzY2h2eHA0NnBQTWc1TElETkRpcmFna1dUTldKREkzL2ZsZ2gzNWtn?=
 =?utf-8?B?TlJod3FYdy9PdVVtZnE0akVnN3I1c1VxQjNub3BPVi9NNGd3TGdoSFQrSmcx?=
 =?utf-8?B?TkNXK1dlNFIzaGplV09Gd2NNeWFLVWtubXZEc0RVTUpxRXFSZGw5YkVySjQw?=
 =?utf-8?B?eW0vOVFVcG8yRVVScHM1aTJRSTNMWGgyZVEySkd4REpzb3hwYzFGZnBVTzBF?=
 =?utf-8?B?bEZFeTExZnd0d0hwZUtLSWtrTlpOQjA4S0JBYXhQYzJNSXpGWjlheGRNZ0RB?=
 =?utf-8?Q?+eO4IboxFe+20LPJKdp7zhzv2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32e5a0a6-e6ee-4b8c-7420-08ddda3a7f72
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2025 07:24:53.7108 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1YcDAfatAjyi89LKGuO5LLHJlxgYS8MGKPlT9hTeq2EHjYp0WxbA+vOrf6Wm/I29iT71+E8O3+FNJobEMcVL5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4885
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaSBIw7ZnYW5k
ZXINCj4gU2VudDogV2VkbmVzZGF5LCA2IEF1Z3VzdCAyMDI1IDguMjINCj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSCB2MiAxLzRdIGRybS9pOTE1L3BzcjogUGFzcyBpbnRlbF9jcnRjX3N0YXRlIGlu
c3RlYWQgb2YgaW50ZWxfZHAgaW4gd2FpdF9mb3JfaWRsZQ0KPiANCj4gVGhpcyBpcyBwcmVwYXJh
dGlvbiB0byBhZGQgb3duIGZ1bmN0aW9uIGZvciBwb2xsaW5nIFBTUiBiZWluZyByZWFkeSBmb3Ig
dXBkYXRlIHdoZW4gZG9pbmcgZHNiIGNvbW1pdC4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxOCArKysrKysrKysrLS0tLS0tLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDZiZDM0NTRi
YjAwZS4uYzJhYjAwZmUyYzIwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gQEAgLTI5ODIsMTAgKzI5ODIsMTEgQEAgdm9pZCBpbnRlbF9wc3JfcG9z
dF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJfQ0K
PiAgfQ0KPiANCj4gLXN0YXRpYyBpbnQgX3BzcjJfcmVhZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tl
ZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiArc3RhdGljIGludA0KPiArX3BzcjJfcmVh
ZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tlZChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0K
PiArKm5ld19jcnRjX3N0YXRlKQ0KPiAgew0KPiAtCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+IC0JZW51bSB0cmFuc2NvZGVyIGNw
dV90cmFuc2NvZGVyID0gaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyOw0KPiArCXN0cnVjdCBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShuZXdfY3J0Y19zdGF0ZSk7DQo+
ICsJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gbmV3X2NydGNfc3RhdGUtPmNwdV90
cmFuc2NvZGVyOw0KPiANCj4gIAkvKg0KPiAgCSAqIEFueSBzdGF0ZSBsb3dlciB0aGFuIEVEUF9Q
U1IyX1NUQVRVU19TVEFURV9ERUVQX1NMRUVQIGlzIGVub3VnaC4NCj4gQEAgLTI5OTcsMTAgKzI5
OTgsMTEgQEAgc3RhdGljIGludCBfcHNyMl9yZWFkeV9mb3JfcGlwZV91cGRhdGVfbG9ja2VkKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCQkJICAgICAgIEVEUF9QU1IyX1NUQVRVU19T
VEFURV9ERUVQX1NMRUVQLCA1MCk7ICB9DQo+IA0KPiAtc3RhdGljIGludCBfcHNyMV9yZWFkeV9m
b3JfcGlwZV91cGRhdGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICtzdGF0
aWMgaW50DQo+ICtfcHNyMV9yZWFkeV9mb3JfcGlwZV91cGRhdGVfbG9ja2VkKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqbmV3X2NydGNfc3RhdGUpDQo+ICB7DQo+IC0Jc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4g
LQllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29k
ZXI7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5
KG5ld19jcnRjX3N0YXRlKTsNCj4gKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBu
ZXdfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+IA0KPiAgCS8qDQo+ICAJICogRnJvbSBi
c3BlYzogUGFuZWwgU2VsZiBSZWZyZXNoIChCRFcrKSBAQCAtMzAzOSw5ICszMDQxLDkgQEAgdm9p
ZCBpbnRlbF9wc3Jfd2FpdF9mb3JfaWRsZV9sb2NrZWQoY29uc3Qgc3RydWN0DQo+IGludGVsX2Ny
dGNfc3RhdGUgKm5ld19jcnRjX3N0YXQNCj4gIAkJCWNvbnRpbnVlOw0KPiANCj4gIAkJaWYgKGlu
dGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkKQ0KPiAtCQkJcmV0ID0gX3BzcjJfcmVhZHlf
Zm9yX3BpcGVfdXBkYXRlX2xvY2tlZChpbnRlbF9kcCk7DQo+ICsJCQlyZXQgPSBfcHNyMl9yZWFk
eV9mb3JfcGlwZV91cGRhdGVfbG9ja2VkKG5ld19jcnRjX3N0YXRlKTsNCj4gIAkJZWxzZQ0KPiAt
CQkJcmV0ID0gX3BzcjFfcmVhZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tlZChpbnRlbF9kcCk7DQo+
ICsJCQlyZXQgPSBfcHNyMV9yZWFkeV9mb3JfcGlwZV91cGRhdGVfbG9ja2VkKG5ld19jcnRjX3N0
YXRlKTsNCj4gDQo+ICAJCWlmIChyZXQpDQo+ICAJCQlkcm1fZXJyKGRpc3BsYXktPmRybSwNCj4g
LS0NCj4gMi40My4wDQoNCg==
