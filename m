Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AB28D1463
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 08:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2561210E1D9;
	Tue, 28 May 2024 06:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VWdrZLi7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06F3A10E1D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 06:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716877741; x=1748413741;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Nva9SQjMQlvwEoRoCkjelsSP6SQpRuhaTrzCvi9j/l0=;
 b=VWdrZLi7Zj4K7iArDAB7/l6UDI/2Lilzd3o3SJ4Ny5LsklhbGDrtaTR5
 rTCzxvdUFti8lDoCcucjsk5979vKceMFV+hlkZuINwXrRa59izVVfMOcJ
 7iB6GSeqhz0mrYx+gSIKC/7gjWeyg9tFmoOZVl+hs8GyZ86hpnZcEq1KU
 +HageIPIBSBlnpFhsm7/bVNYprBQipuYxzDprJ/P5dGxU9jThl9Td5Gjh
 4UCzOEf5LrVzPiiSZFN8ms6uyNhl//T3wCpKW1GU5F5Nt/TRuWcIaCqe/
 KeIv9rxswYjKzbqIfuG45FeR0+ixNR41GpG40sw6Ysai3yGacb1CL9qqc g==;
X-CSE-ConnectionGUID: tFtE4F7jSiiNt7WTEsL3OA==
X-CSE-MsgGUID: In2O9i5hSMKtQ5UouRzoGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17035525"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="17035525"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 23:29:01 -0700
X-CSE-ConnectionGUID: lIyWcXHAQLOh7XyJrD4iBQ==
X-CSE-MsgGUID: 2QM4WU6PSnC5sv1KU9o+lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="65787155"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 23:29:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 23:29:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 23:29:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 23:28:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cMxP+EEjFlHgPolqUk5SW7LOkiGTWuX5Q9f786uWSBejHFL1XqyT44SfiCHWUrpkV7UbfyVG7qE/Homd0iDTFQYw9FJzyOq2xBkRbBTuY0qfaAOr89CuBLSMUfJb7ThM+QKmrG/OWGVS4ywVcvs8Zr0zkdhzHbCd89J40nktJga5Wp8vpaJTKEqQI+JEta5CtdMJmaDuzQ6h1m+kZNdUIA+nQ5/Qr1ZH3ieb8JsxuKVZd+DZ/1oDnz53DBzjInbTwwzjn6lyZ9dtXaNzrmIqVfYhj2QGlwvn5DqdCPwXONqQi/KOr+4sTMoislAglDAv7F9zX1xyLKdG6YV6xMOK3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nva9SQjMQlvwEoRoCkjelsSP6SQpRuhaTrzCvi9j/l0=;
 b=QT+hFqsLwRjEiZnE0H700a0DgQGbxn0K+SCLlP4nZM/cC6EUXDqCHWM+MduOTXUUw3cmPZIIqIo40iJaBggBOcLNi2tCIP0bBX8MJr6KTb1eCwYThT5+CstmL5LGCqi3tMzs5PGhtUHOPKUr1uXjgQnwTSkqqLOv3wjHqSdw7fZDLG2cZ9EikMIG/MkSe6LxzBZFrV9uQTFSTpVg6oalyspWYvUcCCCDYsVxF8nXGr/jMFRWjEqkMir8hmU0DG5RNxCqhex+CLR7FTnOOejX3iqQPymzAzszcgbnv/X9z6diuqYYvenWKDcNKTdrYl5cPD9/5FEZSC3g7GdczkQ9jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB4974.namprd11.prod.outlook.com (2603:10b6:a03:2d6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 06:28:57 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 06:28:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v3 02/20] drm/panel replay: Add edp1.5 Panel Replay bits
 and register
Thread-Topic: [PATCH v3 02/20] drm/panel replay: Add edp1.5 Panel Replay bits
 and register
Thread-Index: AQHasAavq8UQLoTJdUSeyWl07JCuXrGsMHqQ
Date: Tue, 28 May 2024 06:28:57 +0000
Message-ID: <PH7PR11MB59815588FB93878A692ED15BF9F12@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
 <20240527072220.3294769-3-jouni.hogander@intel.com>
In-Reply-To: <20240527072220.3294769-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB4974:EE_
x-ms-office365-filtering-correlation-id: 97a6fe11-768e-44b9-0a2e-08dc7edf7443
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?eUZqUThnQTJ4cFpUbXF2eVV0anZLOTNld1hDRmt5eEQ1Q0xmWFZFcnNsVDVa?=
 =?utf-8?B?TnZuN0h6aFpld05mc201azMydUw2NDhsOEgxaWlJQjAweFpaS2RPdk9rVWpU?=
 =?utf-8?B?dS9LU1ZlWk5yRVFQNHdWc3M2SnRVOVlOWGlDc0xrck9hcFJQYWtvNDJ2ZzNj?=
 =?utf-8?B?WHFIcituSnV4dEpFcHJyZlhYWVlISGlBUzU0UlZDWU1oUDg2QTFtUTJDbzZM?=
 =?utf-8?B?WHBPZkN1TzRnVlBMRjJYdHBKSW1CSUY2T25xS2ZnY3MxZUNwVU9RcWV3WFJJ?=
 =?utf-8?B?b3BWaDN3S3ExMmgzMTZsVXhsT1lXbmtvRFVId1NiYXViN05TUXAxNTVlemR0?=
 =?utf-8?B?WVlEYkM1d3BVTEFzZVpIRFhtN0JDNUxFcTFJZWgwRkFsMTlYRjBOLzdqSk1v?=
 =?utf-8?B?cWJJc3lDcmN3V2xocjZDaXZxVk43NmZnczdaRjFRVGx4bGhiKzhBTm55eWxN?=
 =?utf-8?B?TjFuQ1FrTmtHT2l1WUo5TkhSYWN3cUdVcm5hdUJPN1o2Wlc2SjNITFk5Qlln?=
 =?utf-8?B?Y2NOOVBrSWllM3Q5SjQzM09tY3N1RVAydGlwbStwcExRZ01FeFl5c050cFdu?=
 =?utf-8?B?bVduQVVFYjlnRjZZWGpiSlp1K3JjUVJ1ZStHTHRtSnJYRHhocExaRnUzaFEw?=
 =?utf-8?B?RW1YaUJBY3FRdjFPcjZmN3lPei9lRG15SDVodzQ1TDR1N29oRTFLTkRBUDIr?=
 =?utf-8?B?U0FFS0RhMFpJRklydXZJeGR2ajFUZmgxMXFWNFRSREVPQlArQzJ2SG5KVGdp?=
 =?utf-8?B?b201cmZQbWN0YXlkWmJ5YnBudmdTMExmRk1JV3A1Y3dZL25IUjFKd3R0Mkt0?=
 =?utf-8?B?SEFnUmtjalBRelhxRk1aUmtOV3crL3RzMUNuRTM5cVZlRGRSL1hsN0pVK05l?=
 =?utf-8?B?R1puN0lzejJGNUQ0bC9lKzZ3dFNiZkxHb3VicXRQRUw2V3l2WGM1Y0xSL08w?=
 =?utf-8?B?RGo3d2cvNlAxeEV5MVBEMWI3RmZadHVYd0hVM0ZvNjN5UVhlRUtXdk1KZkU2?=
 =?utf-8?B?VldsV1dqSlRLbkZ5SjlDc3BqV2JhWXlXS1ZEakE5VVNzeUdlSk5QVE91Z3Zq?=
 =?utf-8?B?K1h2Tk14dlZGNmJHaTJqZGhWM09uSEljTjBJbnJibnZrS1VFV3FiNUNrVGg1?=
 =?utf-8?B?elo3OU00cUZGWlpRejFmb252QWhJU0RxUmNvcjZNdkN2bG5tRjVvQWVMcWhB?=
 =?utf-8?B?M3ZheUcxWE9aQ3MrN1NVN3U0Q0xvdHZKYUI2NUl4cFduTUJsZ01DV3BaUHZW?=
 =?utf-8?B?Q0dVbEY4RmZybVF5K3p6MGV6ZHpPVXNvcUs4b0hXSktPWkpEUVY0VnE2ZkdR?=
 =?utf-8?B?UlZ0WlV1T1lGR0RQb09xY2VBSDJxRVE1NjhRaGNuTEpqZFZsRGpsUUorTTZK?=
 =?utf-8?B?RjdmWm00NHRucUxtVGVrWGVJTEdnU3RDNi93VmV0VmdhS2pzZ21wMVBvYUZ6?=
 =?utf-8?B?OUNhcjZqM2JxckRkVmNjVkw5a2dSRVczcW5nQy8wMzVQWEVjZmN1YmJmZXFs?=
 =?utf-8?B?MTkvMUZTWHE5Z0s3Wi8vdEFwSGM5MUdUY253VzJzeWhTMElWWnZJenJGL2kr?=
 =?utf-8?B?WEpWdm9NaXoxV04zbnU2aENiWVlvbzRUcEFhT2ptbGZNVUwyUS9lNlFTcmxl?=
 =?utf-8?B?dzRKOWF5cCtqOUpqZ1Vja2R4QlBQVU00N044UHpuWFE1VEhRejl5UE12Qm5n?=
 =?utf-8?B?NXV5RnJOb3NncWtHUjJ3NVE5b0N4MXpnRURKdTN2SjhBUDV6ZkpuZ0tPT1po?=
 =?utf-8?B?b3RGMDZMSEtBZ042Y1pES0JjS3ZpYnoxQm1GN3ZkUVdodnFRcEpyZW95eTJz?=
 =?utf-8?B?c0RzWVh1bjY2UEtaNU80UT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K25BZ0lEc1VJYmgwTHVidmkvWVJKRTYvQ1EwNDEyZGZXSmQwWDFycmxwai9l?=
 =?utf-8?B?eEJ1OXFOTCt2d3Z0RVZiRzdKZ3RTcjEzbjdtclhWcWp3MzE0NGl6aHF4L291?=
 =?utf-8?B?R3hGNnZpY0NvRVovZzJKYy9tOGFDTVdtOTlOaFk5bXVRVFloY1RNZCtPeEtu?=
 =?utf-8?B?bUl0bXM2cndRV0FHMTRRRzA2ZW9ndERubGEvd1M4Y3E2Zm8zMUl6YVNJQkJN?=
 =?utf-8?B?VWVNTnJ2UVp4d3V1U1ZBTnBxNUtidXcyc2t4Vlg5Q3FyYnJUSmI3b1ZEdElB?=
 =?utf-8?B?Nnl1VExPVHN4RW0zOCtyY3pERFdHSFNZQ2oxdStWZDdpaU9jdHpFdFRSWEVn?=
 =?utf-8?B?eEFPSDlkUXBvTUJjVFpsc3dDQXExTTN1MWt2YTRWMmRIV1p5Y1RzVEsrWUpv?=
 =?utf-8?B?VFFUWnN3Z01SUG1zZjllWnB3WVFrZ1RMMFkwL0FkM1JpR0NQUVhZMmhRQWp6?=
 =?utf-8?B?RDA2eDBVMFlLUEpxMzM5dE5XaGxObk01a1dNQ2o2OGxsVm9xK1NHRmY5ZG9n?=
 =?utf-8?B?bDROSFFtQWxtcFJMa2hBZzZ1V2FGZlhCeW1qaENQNGZNNnhIU3V1Rlpya0tP?=
 =?utf-8?B?MVhGVDYyTkQxZVIzdktSYzZncmVHQVlWVmlkc1JKb3Z1T3ZDc0R4R0lHUi8v?=
 =?utf-8?B?bGNLQWV5WC9Hb0lCQnhXMzBQbnU1YkJ6cHJjZ1V2Ry9yTEVsV0ZQRVlHbzlY?=
 =?utf-8?B?WEwxTXltV3dzM0VRQnI4Y3lqQnRZZE5oNFZ1Qm9YRVE0NUllaHp0a1VJck1l?=
 =?utf-8?B?ejgrL0tNV3JYeFBrQ2hxK0hmT3FxTEs1Wlc2TGs2TTFoWEYxZTMxb1dvM0Fi?=
 =?utf-8?B?UXlOTkhta0lFa2YxV2plMU9WVUJHTGlCeE5zSnRuNUUvQWQ2eis3a0N2TUJI?=
 =?utf-8?B?aVJ3RXgwRktzT1lkUEQzZlF4T0VrTW5WL3BMcW1mQThucFo0M3JOTFIrWEdG?=
 =?utf-8?B?WGVIVW9vcEEyZllRUFNwYUVDZGtyMmhvWFBsUnBIUWJ0TUQvTis3azZOSUFm?=
 =?utf-8?B?WU1hUTVLQk1hK0NVdG9TUnJ4TDYzMGJuSXpKUGlZS2Vaei9ydTVCeUxBbk9i?=
 =?utf-8?B?ZEVBQ3VxSjI0YkF5K3UxeEtSbHZHdHpTSWEzS21NTklYMG9SckhxZkdweG16?=
 =?utf-8?B?YzNvbHZSM0NKQnFLbHpJS1NiK0tkZSs4S1ZVOTlqZVArcjJIUUs1QkQ3a3Zw?=
 =?utf-8?B?SnZiclA3ZGZlb3N1R3Jac3RUVnhiQUJBSkpjOFBhMkluWHlnNDZQUU16TDhk?=
 =?utf-8?B?RXBGcmRlc0RIWVdPWG1DZ1N5bW5UdXIvT2RCRVE2dEFPcVlVMUJRcGdXYld0?=
 =?utf-8?B?WTVlNnlJb29ieWxvMzBQOXlGOFpILzhWYmZYc0x5NlVVVUJ2cHRhOUxSV1Vz?=
 =?utf-8?B?KzcySjdSTU0xdWVOMUlRdEJMSE91M2dJRnVSSUR3eHVueEIrQWZIUFBZZ2lz?=
 =?utf-8?B?c2JRU1h4ZVN4L1l3SWkwMmRBNC9CTG45U1RMd1lrcWJLUXBQc0lvMDEzdWgy?=
 =?utf-8?B?RDFUMGUvVlF5dFN0eEVzVTNsMytCMGJPYkt5R0xacW1pZFgvdkZqVTFza2hB?=
 =?utf-8?B?ZnNMeFBYbzN2UGpOWXJkMUV2ODl5QWJUT1NuR0xSNmNSSURHNnpYeUhzeWp1?=
 =?utf-8?B?R0tFeFNCTFJ0UDNNeWpIRUh3TUpsZkZSSDNsYVlPbXBiTkV1RmNLdVg3MjE5?=
 =?utf-8?B?U0NvR283SHovMGk1U0g3S0dWSmtRU1dzdHgwaXgrSUtWNXorQTB6blFvVEhZ?=
 =?utf-8?B?bTBIeFF6VVNEYld6Y0lTZktXOTA4SGRpd2lodjUyREFBUTRSc29SNkpLRWhI?=
 =?utf-8?B?R0lMQmc0SEJJOGo5dkd3V3BKSVBtUW94WHlNa1VkU3MxTUppYlA4cDNJUHFq?=
 =?utf-8?B?dkFuekIxWTBpdFVaSUdxVjdoUVdjbWxSb3gyNzlUcnErOEIvTzFOMDhBV1VN?=
 =?utf-8?B?TWxpMHFYTStobERBczVuM0lZQUZ3K3BZOEJ0bnNHbXpzYkZtREp5L2cxQXV0?=
 =?utf-8?B?M2g1Q1QzWjl3T05mWGozMXJEYk1mRDA0S0VtdC9STnY2d29vR01rUTcrMmc2?=
 =?utf-8?B?bk40MTRvQk5XM1BzdnpFMXlrV2dNYlB1bnlYTk1lN1JxSHBjRVhDWlVFeVoy?=
 =?utf-8?Q?Wt1ZCLpg9wkrI6dTbWS3S1de3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97a6fe11-768e-44b9-0a2e-08dc7edf7443
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 06:28:57.2556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9IftvU6qkJOaM6rAbSRI1ndc/jbuRy13F1hrN3qR8sdpLKgbypcE/myyquHDBHyspTeKzJ9dZ6VxKgKLfYzYkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4974
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWF5IDI3LCAyMDI0
IDEyOjUyIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
YW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4g
PG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDIvMjBdIGRybS9wYW5lbCByZXBsYXk6
IEFkZCBlZHAxLjUgUGFuZWwgUmVwbGF5IGJpdHMNCj4gYW5kIHJlZ2lzdGVyDQo+IA0KPiBBZGQg
UEFORUxfUkVQTEFZX0NPTkZJR1VSQVRJT05fMiByZWdpc3RlciBhbmQgc29tZSBtaXNzaW5nIFBh
bmVsDQo+IFJlcGxheSBiaXRzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5h
IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGluY2x1ZGUvZHJtL2Rpc3Bs
YXkvZHJtX2RwLmggfCAxNiArKysrKysrKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTMg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9kaXNwbGF5L2RybV9kcC5oIGIvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaA0KPiBp
bmRleCA5MDY5NDljYTNjZWUuLjc5YmRlMzcyYjE1MiAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9k
cm0vZGlzcGxheS9kcm1fZHAuaA0KPiArKysgYi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5o
DQo+IEBAIC01NDQsOSArNTQ0LDEwIEBADQo+ICAvKiBERlAgQ2FwYWJpbGl0eSBFeHRlbnNpb24g
Ki8NCj4gICNkZWZpbmUgRFBfREZQX0NBUEFCSUxJVFlfRVhURU5TSU9OX1NVUFBPUlQJMHgwYTMJ
LyogMi4wICovDQo+IA0KPiAtI2RlZmluZSBEUF9QQU5FTF9SRVBMQVlfQ0FQICAgICAgICAgICAg
ICAgICAweDBiMCAgLyogRFAgMi4wICovDQo+IC0jIGRlZmluZSBEUF9QQU5FTF9SRVBMQVlfU1VQ
UE9SVCAgICAgICAgICAgICgxIDw8IDApDQo+IC0jIGRlZmluZSBEUF9QQU5FTF9SRVBMQVlfU1Vf
U1VQUE9SVCAgICAgICAgICgxIDw8IDEpDQo+ICsjZGVmaW5lIERQX1BBTkVMX1JFUExBWV9DQVAJ
CQkJMHgwYjAgIC8qIERQDQo+IDIuMCAqLw0KPiArIyBkZWZpbmUgRFBfUEFORUxfUkVQTEFZX1NV
UFBPUlQJCQkoMSA8PCAwKQ0KPiArIyBkZWZpbmUgRFBfUEFORUxfUkVQTEFZX1NVX1NVUFBPUlQJ
CQkoMSA8PCAxKQ0KPiArIyBkZWZpbmUgRFBfUEFORUxfUkVQTEFZX0VBUkxZX1RSQU5TUE9SVF9T
VVBQT1JUCSgxIDw8IDIpIC8qDQo+IGVEUCAxLjUgKi8NCj4gDQo+ICAjZGVmaW5lIERQX1BBTkVM
X1BBTkVMX1JFUExBWV9DQVBBQklMSVRZCQkweGIxDQo+ICAjIGRlZmluZSBEUF9QQU5FTF9QQU5F
TF9SRVBMQVlfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQJKDEgPDwNCj4gNSkNCj4gQEAgLTczNCwx
MSArNzM1LDIwIEBADQo+IA0KPiAgI2RlZmluZSBQQU5FTF9SRVBMQVlfQ09ORklHICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAweDFiMCAgLyogRFAgMi4wICovDQo+ICAjIGRlZmluZSBEUF9Q
QU5FTF9SRVBMQVlfRU5BQkxFICAgICAgICAgICAgICAgICAgICAgICAgICgxIDw8IDApDQo+ICsj
IGRlZmluZSBEUF9QQU5FTF9SRVBMQVlfVlNDX1NEUF9DUkNfRU4gICAgICAgICAgICAgICAgICgx
IDw8IDEpIC8qIGVEUCAxLjUNCj4gKi8NCj4gICMgZGVmaW5lIERQX1BBTkVMX1JFUExBWV9VTlJF
Q09WRVJBQkxFX0VSUk9SX0VOICAgICAgICAgKDEgPDwgMykNCj4gICMgZGVmaW5lIERQX1BBTkVM
X1JFUExBWV9SRkJfU1RPUkFHRV9FUlJPUl9FTiAgICAgICAgICAgKDEgPDwgNCkNCj4gICMgZGVm
aW5lIERQX1BBTkVMX1JFUExBWV9BQ1RJVkVfRlJBTUVfQ1JDX0VSUk9SX0VOICAgICAgKDEgPDwg
NSkNCj4gICMgZGVmaW5lIERQX1BBTkVMX1JFUExBWV9TVV9FTkFCTEUgICAgICAgICAgICAgICAg
ICAgICAgKDEgPDwgNikNCj4gDQo+ICsjZGVmaW5lIFBBTkVMX1JFUExBWV9DT05GSUcyICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MWIxIC8qIGVEUCAxLjUgKi8NCj4gKyMg
ZGVmaW5lIERQX1BBTkVMX1JFUExBWV9TSU5LX1JFRlJFU0hfUkFURV9VTkxPQ0tfR1JBTlRFRA0K
PiAJICgxIDw8IDApDQo+ICsjIGRlZmluZSBEUF9QQU5FTF9SRVBMQVlfQ1JDX1ZFUklGSUNBVElP
TgkJCSAoMSA8PA0KPiAxKQ0KPiArIyBkZWZpbmUgRFBfUEFORUxfUkVQTEFZX1NVX1lfR1JBTlVM
QVJJVFlfRVhURU5ERURfRU4NCj4gCSAoMSA8PCAyKQ0KPiArIyBkZWZpbmUNCj4gRFBfUEFORUxf
UkVQTEFZX1NVX1lfR1JBTlVMQVJJVFlfRVhURU5ERURfVkFMX1NFTF9TSElGVCAzICMNCj4gK2Rl
ZmluZSBEUF9QQU5FTF9SRVBMQVlfU1VfWV9HUkFOVUxBUklUWV9FWFRFTkRFRF9WQUxfU0VMX01B
U0sNCj4gKDB4ZiA8PCAzKQ0KPiArIyBkZWZpbmUgRFBfUEFORUxfUkVQTEFZX1NVX1JFR0lPTl9T
Q0FOTElORV9DQVBUVVJFDQo+IAkgKDEgPDwgNykNCj4gKw0KPiAgI2RlZmluZSBEUF9QQVlMT0FE
X0FMTE9DQVRFX1NFVAkJICAgIDB4MWMwDQo+ICAjZGVmaW5lIERQX1BBWUxPQURfQUxMT0NBVEVf
U1RBUlRfVElNRV9TTE9UIDB4MWMxICAjZGVmaW5lDQo+IERQX1BBWUxPQURfQUxMT0NBVEVfVElN
RV9TTE9UX0NPVU5UIDB4MWMyDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
