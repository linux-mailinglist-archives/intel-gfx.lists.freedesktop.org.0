Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D19AACDE43
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 14:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C54E510E127;
	Wed,  4 Jun 2025 12:45:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BXo3CSOS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9245510E127;
 Wed,  4 Jun 2025 12:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749041148; x=1780577148;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TyIbCaen0Qsyp2agCnjcltxftiqP2ui+ySH+gi3MUf8=;
 b=BXo3CSOSC77lGOJbIYtxRUfeOGSQEs/2YpuMxZFZoG0ohcVqRdbQ/wTh
 vQFLfyAF+aky8Agyv48zg1RMijjrUeXs6O4xlsAm/WzyrFocKOteXukmi
 Tn3f8uuTwiX26XuLsOUw3pb0G7BTyEPkfU0PR3WQ1dX+tnKKosI5Twpt5
 Z2OOZOWcKo/bbBJtgKDuFqHxfNtUjjOiiUneq+5RVl9dzUfzYBiViqnPS
 mvLHSUdzOBF9w2sf5RfS47wbddJdvDUbKaOOw+1CAyHZvtNPv2q4RuJof
 V/zIZmL5RtcZVE+v+IjFo5MtU1hD5cVSqDIUrYtTvJkkayGvO59mTj5Ww A==;
X-CSE-ConnectionGUID: 4pbNths4R9izg/6t3fk1XQ==
X-CSE-MsgGUID: wUOxnxthRr22s+MMPV/8eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51034499"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="51034499"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 05:45:47 -0700
X-CSE-ConnectionGUID: LBDIErExSoydygAGnafD1A==
X-CSE-MsgGUID: Vy8MxI4uQMmErVERwBcOrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="145140199"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 05:45:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 05:45:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 05:45:47 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.66)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 4 Jun 2025 05:45:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nN2Ki7X9zz3uDcZTDz85Ge2EqOxn3+z3wCvd0v5qfEJujHA2XxJIvLvQSpO3MyNwX3QAHH7usfxsdRAGYp9m7Eef8Y+FU3pH5THT9gDalJgpcUWhIUP3iNvctYNa0d/O6IBlXxmPcfsnFseMUHlTsE0XJu2YTRxZ3onKG/NvlitTpHoPCObaQQXJTNtLRfghZgv7JmpaEGNsN1pZwPWHit2jrr2CyzGcWyuLcJsQJNX4tmS6kuTJLApCEiqgsHwtzUsJq5gHK1Po6QvdpuwvvpmS8i074lCnXJCmzFpD7bt6xIOdFG0jx+kDsAIzZbDrXJkLnyMSoZkj74RBiwcUPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TyIbCaen0Qsyp2agCnjcltxftiqP2ui+ySH+gi3MUf8=;
 b=jll1Nll/zgTaHY4VSUA3AS8CGfhlN0shhjHI41JCtyqP82wj1wz3hmsoXl8+gQEzMbYUNbVa2s09/n4PxvjsGMmcgN65hDqZ/lpZ8ZKg8h18dEp/oo+nRbvoVzh3XaCBp7ApJhI8Ic0rqAQfukymDZWsStfv5qX1R2DB2SumiNrSdMDWYV8Fpx9YPv+/vT4Eux++vhCxEMP8qg7yGHyNheCJi+IZl/y5BEuGm2vnPkQnVSq8Bsf1Mtemq9/MNY6bENNbGg86Z9UD427uDuO/Fi7kuRU43N6LJiTkHCZa+hy5RopPf55GOnq3vBEEoY+26KZmW+X5sBGXfyasQbSRlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB8375.namprd11.prod.outlook.com (2603:10b6:806:38b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Wed, 4 Jun
 2025 12:45:17 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.8769.035; Wed, 4 Jun 2025
 12:45:17 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 1/6] drm/i915/bw: pass struct dram_info pointer around
Thread-Topic: [RESEND 1/6] drm/i915/bw: pass struct dram_info pointer around
Thread-Index: AQHbzulWk6btGgvmSkKisUP1FcWpW7Py/ywA
Date: Wed, 4 Jun 2025 12:45:17 +0000
Message-ID: <38816ee29422d032499465ec7cb6d4ec2a8d40ca.camel@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
 <1752b4987ff39a685c28cebae1be4ce326b67c7b.1748337870.git.jani.nikula@intel.com>
In-Reply-To: <1752b4987ff39a685c28cebae1be4ce326b67c7b.1748337870.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB8375:EE_
x-ms-office365-filtering-correlation-id: 37a53205-1fe2-4df1-9090-08dda365a8b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SWN2d2FGVWNkbTd1Mlo1QXFyTXphS3ZJQW1VNFpLQ003M3NxbUY1RW1uS2ZH?=
 =?utf-8?B?T1NLMi9ORmNDcUpUbVJiWXlGMWlyYUorYWZxOFkzRkRMTjRmeHJodFA3cEhM?=
 =?utf-8?B?M3pJci96R1BlNGpidjhDdWwzbDYvNW9hTU1PWU95MTIrTUVWYzhFU0lMYUc3?=
 =?utf-8?B?eTlaK1M3ZnpCOHg5MU83S1l4TnJUQ1ptT1hDZDgyUzV2VStCRE9VclVTNExq?=
 =?utf-8?B?NmRxc1lhRFNMZTdSNGtNNmpPdGJlRSt4bkM5VmYzaEswWUlVQklvZzRKSUdo?=
 =?utf-8?B?eEU3SlRDTHNCY00vV3E2Q1g3NHgxdGlDTXc2b0hRZEpxMmVnNlFUUW8zcHpB?=
 =?utf-8?B?Q21adDFRSjVXNlJ0SVI5Y2NzS25lajF6Q1FVQ3o5K3Zweit6ZzU2clhGMmFQ?=
 =?utf-8?B?b0o0QytudS9YbVJpTk56STZVaTA0OCtMTDhObE9XUzlBUnNKUElycGlpQmlz?=
 =?utf-8?B?bHZaWXBiTElPWk9Mdk5CaTVsOXU0NlQ5VnhiZ3oveFlLWjVnc3UydE5zTytR?=
 =?utf-8?B?eFMwUm9CTzRCaWQ3bGpVZ2o1YTdHRkdKVGxpeTVhdm9VTU1PU1Z4TWpZcEpi?=
 =?utf-8?B?YmRBRy9aYVJQS3pqcXA1SjMrZkF2TDFFMU9xNE5ibVhGVm95cXNFN0Z2N0Ex?=
 =?utf-8?B?eHV4SG1mTmxYdTduU1BsV1NSeVNwblduUTl4RDVKY1VWdHlVV1VZL29MNVA3?=
 =?utf-8?B?cjZMM3lHZlVBMCtoTHZNUWhwTkc2REkwY0tnSGtQNC9uRHJzQitCRVRXUmdJ?=
 =?utf-8?B?djRqZS9FS0hzaC9mZG9oZzRPaGYwNjJON3FRSWhPTjE4UllHa1M0VjhhaEVJ?=
 =?utf-8?B?ZmpxMExSbk45c1Bid2xRRFYrMVRvRStYTWNBSFh3enRkQzd6OFppU0UrRWRQ?=
 =?utf-8?B?dFRXZnZwOUw4WEN2Z3dkUUJBUm4vQW9IaTZzNUJpNmRaMkZ3ZGRkcXU3eVRM?=
 =?utf-8?B?T3BLdXUza2IydzRBczRYSUV6VDZrYWpZcUJYQTVyZ3cvT1F6Z3NDZ2d6Zm5z?=
 =?utf-8?B?aFJTczhGWHZKWUtvckNpbkxCQlJRKzdQTXZuZFlPSWdSSWJhaUlaK1dsSDEy?=
 =?utf-8?B?MEdva2lDVkJOWnRxb29ZcWxVM1VFZ3JuKzVrNkRHTXN1ZVpFT0V6UUZwRTBv?=
 =?utf-8?B?MjEwdCt0NmYwVWc5R255RU5Vb1dGbVhmY0VvcHlaSUFuU1hRcE13Zzlucnhv?=
 =?utf-8?B?T0V4OGxaSzBxeTBFTS9KZEZDalh5blIrem1NcFZ6N0F4WEE5RkxxMnd6TVVX?=
 =?utf-8?B?a0UycWVkNVdFandCalVwaEhDTjFyTWF1ME5mWWFXbVZ6SGNvVFhaM3NwYWVJ?=
 =?utf-8?B?UWYrRVp1ZHJSd0kyZmJ4UjYwR0lMU3ZNTzU4bmRiMnhpdXh2SHd0Z2ZLMjlZ?=
 =?utf-8?B?TkJYc3FnUGE2azRJS1dKS0ZLa1c5R0lSUGwwdHkwd2xvalYzbUxaWmRSeElF?=
 =?utf-8?B?Zy9ZNUJNcW94K1dORlZUeE1qakw4eE9TemtMYlhPSHlVcmdHRms4Qm9lQUlN?=
 =?utf-8?B?STQwQmFWdlJZdlREREFlZEZDTjhKUC91bS9OQXVNK0pUbTR5eE5YbHdLTmc4?=
 =?utf-8?B?WjA4SVdXVFJ2VHREYThJSTB4dnRFWWdiUitzUU1GMVRBaktSRXRMdlJNOUw5?=
 =?utf-8?B?a1dSK3JKY0x2WWhIWUNHaFhLZ2NqVEJpMi9zYkpkd0h4d2lLamEzM2dCd2k5?=
 =?utf-8?B?cDJaQUNiaWRzbWpKSU5SVEd5UzFqcGRVT3pqd0t5TkRtRGlFSXFIMjZGYjJp?=
 =?utf-8?B?NWRselJaYjVsR09rTUpJSG5pZzZNRTUzcmNpRkVJQVh0MFJxaEJ4Y09oYVBs?=
 =?utf-8?B?eXdKUDNYQ3NsWGxqbURyd0dTejJjalVZRUxvVFVLbE1YSy9YUnNMeTRya0kv?=
 =?utf-8?B?anFDYU5FNjg0TlRhUVh2RWh2K2dkM0N4clhqcmhaLzdEc3ZxNkU1bjZaR2Rl?=
 =?utf-8?B?M3hOdTFKdnNWSDhGOGpmUWxxcWFiQTIwNXRpSk5iVHFTbldCczArSjMrM1o0?=
 =?utf-8?Q?j3X+ttvMPtMVVSJKbCf/Urwo/sgVy8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHpqSk1VMEdLYklHbGNkM0tVVW0wOTlLSzExYXBBTHVLVlhta3V2T3VPQjJY?=
 =?utf-8?B?YVQvbE5LaGw0M2NiZEhPK0x4TDhjeXlCNE1UaWQ5bnZmWk5YMm1COVpsYzQz?=
 =?utf-8?B?NDR0OFZkZzBLTFV5VlBWb0xCZkFzb1Rkd0hkR3VRZ3hKSnNKK01yYXNaTmlv?=
 =?utf-8?B?dHdBejNyZXROUDlVazhJU1JxNDIxYWx5TmN3SmVnMnJ4S25oSnRabnVZK3c2?=
 =?utf-8?B?Z0VDSk5mRXBNRjhCS2VPelpMYTRXbWpiYktHK1pLZXJ5YWpUOG80R1ZGcVN2?=
 =?utf-8?B?cHorUlRSQ3F0cVZHYXN4bURoNkJSOTdibkVsTFdBdHdBZW8vNzNITmh2c0o5?=
 =?utf-8?B?cGRuazZTWmw3TmFPRThFRkJ3eUY3QU9TSEhmVExVb0pJOEI2ZlJseTJEQnJ0?=
 =?utf-8?B?NmlUMHpudExiSmxlb0FxVnV6eW5kMnVGWkxWeWx5SkNLWDNSNW53RVlIeGMw?=
 =?utf-8?B?cUhoaWtUV3YxbmlUbGtBNDN0TGVDVnphY0lzckViMkdsN3FQOVF5dlNqZmhu?=
 =?utf-8?B?YzdlaWlrZDRDZkg0d1FzakN1MUF2cVFGWHVuSXROZDdzVXFocGJBS01DTWEw?=
 =?utf-8?B?bllISzZrWDRPUkVzbytkaU96OHZyanlFNlluVldHZEViLzUrNU1BaGphR2dq?=
 =?utf-8?B?ODVBYm1xTFdRMHBBK1BnLzlwK2doNVlyNWFncXptRWdIRjgrK0FwdmlFVUor?=
 =?utf-8?B?amtzT2FwZEFBdHdLU2tHWEpXV2tTb0VWL1kzdkJ1cEM0Ylp4YTN3RGlnNG9u?=
 =?utf-8?B?ZElOcFhLMmpnbGpqemhveWtrSjlvR2lxMU80cUVzdGFsRUNvN2VIcHpUMWlX?=
 =?utf-8?B?b3ZLbTBBUTlHbGJEWDE2MTVzQkhsSzRheldLQlFGVWd4UWRKS0Z0RnBuOVo5?=
 =?utf-8?B?TXlmSGlIdDdaZDZtQnJpVTVGSUN2T2w0cEptWHN2Sm5BakVUQnZNcmY3eTBq?=
 =?utf-8?B?RzJQNjlDc3dkbXM3OGlGM3NVa1lHYWRUbnpHSDZQc1Z4U1hPcWFGTnpUMXdN?=
 =?utf-8?B?Z2JVRzZsVGNkQUthMXk5MitEK1RWb3liTkFuUTFMcFgwN1p1bjhCN0hRYWIz?=
 =?utf-8?B?WHFaK2taT2JNaUtzU3RXR2M4YnVCL2xIclAvR1FOZXBjM0JRdllHc3VsNWV5?=
 =?utf-8?B?Y2V1K3IrK0MyNk5Od3ovaXMzK3VraG1RWHQ2VlQxS0VQUDBjMXY4UnFJeUFX?=
 =?utf-8?B?VkNSYVhyRGZtTU1KdG50QzFTY0w5UGJzeG9lMGZia0Zyd1N1bmpkRkJER0s4?=
 =?utf-8?B?cHBsbFI0M0FaVXNxbS9WU2x3aE1scTVGcmFTZnJqUXpXM1NJKy8rQ2ptSDh1?=
 =?utf-8?B?WlhhNElTNDdyMGxsTit6TTVFcHBCekJQcmFoTm1BNm00SmxzbVNseFhLNkdo?=
 =?utf-8?B?Yjd2cWh3TnU3MFVWck9udmhNTTV4ZmJzR01Zd1BGcWpiZTNnTWh6WVVxV1JB?=
 =?utf-8?B?aGtiVTd5eUwrWFEzRSsrM2liRkJRRU1uaXdTV2VLdExRUGsvdldId3k0dUx3?=
 =?utf-8?B?WjZpMkZzY003MWdxR0I0ciszdWwvbTFBL1o1emhHc2NLdCtEMitJeFcxOTRm?=
 =?utf-8?B?d2F4SW1LT3FCQ1loWkNrSTNOTzN5aVVDUWdsdTJ0MUV1bmM1SmRFQ3RQV1NJ?=
 =?utf-8?B?d2tsUHZIcktOZXRLZ1JvUk9PUE5pL2hkc2ErRk4zSEtTN0VkQ1JLWDdRWUpW?=
 =?utf-8?B?UmpFOXlWVjIvR2RpelJGS2xkQnhjMnlwT05BQW5nci9NN2dlVDVaV1ZuUExU?=
 =?utf-8?B?QUZ4K0ZQYWdYZU1GdHRLWi9uWS9sTGE0bWtGdUVlRHl4c09iUVhBMWYzYzNJ?=
 =?utf-8?B?MzRhZUNOVGl0Q3lFbktONXA1L1loSC9pYVhTMC9tSnh6QURQTkZwTW1FYUt6?=
 =?utf-8?B?SEh1TGlOWUFXaE9NQWd5cHplYysrL1hlSGpJQjBYTWVBakdLRDdDK0g2Nmsw?=
 =?utf-8?B?Rmt2cjZiVzFyMmUvQVlpVVlsM2FhSUZpcmFhOGh2SnJYK3FZdU9oSlpqN0ti?=
 =?utf-8?B?aDk3V2xxeDhSa0Nsb3BrVWlUaDlPMGkrTUFtTGZ4L3VtSk5HZXVmSm1zMGNL?=
 =?utf-8?B?Zk41b3JINGNodVkxUU5lMkdETkZEQXJOdkVpQ0Urc01HVm9IdG8wamxvK2NJ?=
 =?utf-8?B?NzdkVUVFaGE3eUlyODZlVk40bWdrODhRazl5cCtrYy9Sb2RHRmwvTytER3Vi?=
 =?utf-8?Q?5r6GsT8Fe9/aZGucJxTzzKk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A14747A871B11A418FAE9CBCAB8ED992@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37a53205-1fe2-4df1-9090-08dda365a8b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 12:45:17.4138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mq6frtZUsq5iYGZAvegXbVqOz2RGOz63FyZpdq/CQ6fDint5LtFl5FOmwVgnZd+eldB5XR9ulE4VoBkzQo+mi9kf2zCNsgfZdDhmDRIdxG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8375
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

T24gVHVlLCAyMDI1LTA1LTI3IGF0IDEyOjI1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
SGF2ZSBqdXN0IG9uZSBwbGFjZSB0byBmaWd1cmUgb3V0IHRoZSBwb2ludGVyIHRvIHN0cnVjdCBk
cmFtX2luZm8sIGFuZA0KPiBwYXNzIHRoYXQgYXJvdW5kLiBUaGlzIHNpbXBsaWZpZXMgZnV0dXJl
IGNoYW5nZXMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMgfCA0NCArKysrKysrKysrKystLS0tLS0tLS0tLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQs
IDIyIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZp
bm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQoNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBpbmRleCBhNWRkMjkzMmI4
NTIuLjZjNTM3NjM1YjEyMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYncuYw0KPiBAQCAtMjE4LDExICsyMTgsMTAgQEAgaW50ZWxfcmVhZF9xZ3ZfcG9pbnRfaW5m
byhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGlj
IGludCBpY2xfZ2V0X3Fndl9wb2ludHMoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+
ICsJCQnCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBkcmFtX2luZm8gKmRyYW1faW5mbywNCj4gwqAJ
CQnCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9xZ3ZfaW5mbyAqcWksDQo+IMKgCQkJwqDCoMKgwqDC
oCBib29sIGlzX3lfdGlsZSkNCj4gwqB7DQo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB0b19pOTE1KGRpc3BsYXktPmRybSk7DQo+IC0JY29uc3Qgc3RydWN0IGRyYW1faW5mbyAq
ZHJhbV9pbmZvID0gJmk5MTUtPmRyYW1faW5mbzsNCj4gwqAJaW50IGksIHJldDsNCj4gwqANCj4g
wqAJcWktPm51bV9wb2ludHMgPSBkcmFtX2luZm8tPm51bV9xZ3ZfcG9pbnRzOw0KPiBAQCAtNDE4
LDE5ICs0MTcsMjAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9zYV9pbmZvIHhlM2xwZF9z
YV9pbmZvID0gew0KPiDCoAkuZGVyYXRpbmcgPSAxMCwNCj4gwqB9Ow0KPiDCoA0KPiAtc3RhdGlj
IGludCBpY2xfZ2V0X2J3X2luZm8oc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGNvbnN0
IHN0cnVjdCBpbnRlbF9zYV9pbmZvICpzYSkNCj4gK3N0YXRpYyBpbnQgaWNsX2dldF9id19pbmZv
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiArCQkJwqDCoCBjb25zdCBzdHJ1Y3Qg
ZHJhbV9pbmZvICpkcmFtX2luZm8sDQo+ICsJCQnCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9zYV9p
bmZvICpzYSkNCj4gwqB7DQo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19p
OTE1KGRpc3BsYXktPmRybSk7DQo+IMKgCXN0cnVjdCBpbnRlbF9xZ3ZfaW5mbyBxaSA9IHt9Ow0K
PiDCoAlib29sIGlzX3lfdGlsZSA9IHRydWU7IC8qIGFzc3VtZSB5IHRpbGUgbWF5IGJlIHVzZWQg
Ki8NCj4gLQlpbnQgbnVtX2NoYW5uZWxzID0gbWF4X3QodTgsIDEsIGk5MTUtPmRyYW1faW5mby5u
dW1fY2hhbm5lbHMpOw0KPiArCWludCBudW1fY2hhbm5lbHMgPSBtYXhfdCh1OCwgMSwgZHJhbV9p
bmZvLT5udW1fY2hhbm5lbHMpOw0KPiDCoAlpbnQgaXBxZGVwdGgsIGlwcWRlcHRocGNoID0gMTY7
DQo+IMKgCWludCBkY2xrX21heDsNCj4gwqAJaW50IG1heGRlYnc7DQo+IMKgCWludCBudW1fZ3Jv
dXBzID0gQVJSQVlfU0laRShkaXNwbGF5LT5idy5tYXgpOw0KPiDCoAlpbnQgaSwgcmV0Ow0KPiDC
oA0KPiAtCXJldCA9IGljbF9nZXRfcWd2X3BvaW50cyhkaXNwbGF5LCAmcWksIGlzX3lfdGlsZSk7
DQo+ICsJcmV0ID0gaWNsX2dldF9xZ3ZfcG9pbnRzKGRpc3BsYXksIGRyYW1faW5mbywgJnFpLCBp
c195X3RpbGUpOw0KPiDCoAlpZiAocmV0KSB7DQo+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5k
cm0sDQo+IMKgCQkJwqDCoMKgICJGYWlsZWQgdG8gZ2V0IG1lbW9yeSBzdWJzeXN0ZW0gaW5mb3Jt
YXRpb24sIGlnbm9yaW5nIGJhbmR3aWR0aA0KPiBsaW1pdHMiKTsNCj4gQEAgLTQ4OCwxMSArNDg4
LDExIEBAIHN0YXRpYyBpbnQgaWNsX2dldF9id19pbmZvKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5LCBjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfc2FfDQo+IMKgCXJldHVybiAwOw0KPiDCoH0N
Cj4gwqANCj4gLXN0YXRpYyBpbnQgdGdsX2dldF9id19pbmZvKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LCBjb25zdCBzdHJ1Y3QgaW50ZWxfc2FfaW5mbyAqc2EpDQo+ICtzdGF0aWMgaW50
IHRnbF9nZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gKwkJCcKg
wqAgY29uc3Qgc3RydWN0IGRyYW1faW5mbyAqZHJhbV9pbmZvLA0KPiArCQkJwqDCoCBjb25zdCBz
dHJ1Y3QgaW50ZWxfc2FfaW5mbyAqc2EpDQo+IMKgew0KPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0gdG9faTkxNShkaXNwbGF5LT5kcm0pOw0KPiDCoAlzdHJ1Y3QgaW50ZWxfcWd2
X2luZm8gcWkgPSB7fTsNCj4gLQljb25zdCBzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtX2luZm8gPSAm
aTkxNS0+ZHJhbV9pbmZvOw0KPiDCoAlib29sIGlzX3lfdGlsZSA9IHRydWU7IC8qIGFzc3VtZSB5
IHRpbGUgbWF5IGJlIHVzZWQgKi8NCj4gwqAJaW50IG51bV9jaGFubmVscyA9IG1heF90KHU4LCAx
LCBkcmFtX2luZm8tPm51bV9jaGFubmVscyk7DQo+IMKgCWludCBpcHFkZXB0aCwgaXBxZGVwdGhw
Y2ggPSAxNjsNCj4gQEAgLTUwMiw3ICs1MDIsNyBAQCBzdGF0aWMgaW50IHRnbF9nZXRfYndfaW5m
byhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgY29uc3Qgc3RydWN0DQo+IGludGVsX3Nh
Xw0KPiDCoAlpbnQgbnVtX2dyb3VwcyA9IEFSUkFZX1NJWkUoZGlzcGxheS0+YncubWF4KTsNCj4g
wqAJaW50IGksIHJldDsNCj4gwqANCj4gLQlyZXQgPSBpY2xfZ2V0X3Fndl9wb2ludHMoZGlzcGxh
eSwgJnFpLCBpc195X3RpbGUpOw0KPiArCXJldCA9IGljbF9nZXRfcWd2X3BvaW50cyhkaXNwbGF5
LCBkcmFtX2luZm8sICZxaSwgaXNfeV90aWxlKTsNCj4gwqAJaWYgKHJldCkgew0KPiDCoAkJZHJt
X2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCcKgwqDCoCAiRmFpbGVkIHRvIGdldCBtZW1v
cnkgc3Vic3lzdGVtIGluZm9ybWF0aW9uLCBpZ25vcmluZyBiYW5kd2lkdGgNCj4gbGltaXRzIik7
DQo+IEBAIC02MzIsMTUgKzYzMiwxNSBAQCBzdGF0aWMgdm9pZCBkZzJfZ2V0X2J3X2luZm8oc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRpYyBpbnQg
eGUyX2hwZF9nZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gKwkJ
CcKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtX2luZm8sDQo+IMKgCQkJ
wqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9zYV9pbmZvICpzYSkNCj4gwqB7DQo+IC0J
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpc3BsYXktPmRybSk7DQo+
IMKgCXN0cnVjdCBpbnRlbF9xZ3ZfaW5mbyBxaSA9IHt9Ow0KPiAtCWludCBudW1fY2hhbm5lbHMg
PSBpOTE1LT5kcmFtX2luZm8ubnVtX2NoYW5uZWxzOw0KPiArCWludCBudW1fY2hhbm5lbHMgPSBk
cmFtX2luZm8tPm51bV9jaGFubmVsczsNCj4gwqAJaW50IHBlYWtidywgbWF4ZGVidzsNCj4gwqAJ
aW50IHJldCwgaTsNCj4gwqANCj4gLQlyZXQgPSBpY2xfZ2V0X3Fndl9wb2ludHMoZGlzcGxheSwg
JnFpLCB0cnVlKTsNCj4gKwlyZXQgPSBpY2xfZ2V0X3Fndl9wb2ludHMoZGlzcGxheSwgZHJhbV9p
bmZvLCAmcWksIHRydWUpOw0KPiDCoAlpZiAocmV0KSB7DQo+IMKgCQlkcm1fZGJnX2ttcyhkaXNw
bGF5LT5kcm0sDQo+IMKgCQkJwqDCoMKgICJGYWlsZWQgdG8gZ2V0IG1lbW9yeSBzdWJzeXN0ZW0g
aW5mb3JtYXRpb24sIGlnbm9yaW5nIGJhbmR3aWR0aA0KPiBsaW1pdHMiKTsNCj4gQEAgLTc2OSwy
NiArNzY5LDI2IEBAIHZvaWQgaW50ZWxfYndfaW5pdF9odyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gwqAJaWYgKERJU1BMQVlfVkVSKGRpc3Bs
YXkpID49IDMwKQ0KPiAtCQl0Z2xfZ2V0X2J3X2luZm8oZGlzcGxheSwgJnhlM2xwZF9zYV9pbmZv
KTsNCj4gKwkJdGdsX2dldF9id19pbmZvKGRpc3BsYXksIGRyYW1faW5mbywgJnhlM2xwZF9zYV9p
bmZvKTsNCj4gwqAJZWxzZSBpZiAoRElTUExBWV9WRVJ4MTAwKGRpc3BsYXkpID49IDE0MDEgJiYg
ZGlzcGxheS0+cGxhdGZvcm0uZGdmeCAmJg0KPiDCoAkJIGRyYW1faW5mby0+dHlwZSA9PSBJTlRF
TF9EUkFNX0dERFJfRUNDKQ0KPiAtCQl4ZTJfaHBkX2dldF9id19pbmZvKGRpc3BsYXksICZ4ZTJf
aHBkX2VjY19zYV9pbmZvKTsNCj4gKwkJeGUyX2hwZF9nZXRfYndfaW5mbyhkaXNwbGF5LCBkcmFt
X2luZm8sICZ4ZTJfaHBkX2VjY19zYV9pbmZvKTsNCj4gwqAJZWxzZSBpZiAoRElTUExBWV9WRVJ4
MTAwKGRpc3BsYXkpID49IDE0MDEgJiYgZGlzcGxheS0+cGxhdGZvcm0uZGdmeCkNCj4gLQkJeGUy
X2hwZF9nZXRfYndfaW5mbyhkaXNwbGF5LCAmeGUyX2hwZF9zYV9pbmZvKTsNCj4gKwkJeGUyX2hw
ZF9nZXRfYndfaW5mbyhkaXNwbGF5LCBkcmFtX2luZm8sICZ4ZTJfaHBkX3NhX2luZm8pOw0KPiDC
oAllbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxNCkNCj4gLQkJdGdsX2dldF9id19p
bmZvKGRpc3BsYXksICZtdGxfc2FfaW5mbyk7DQo+ICsJCXRnbF9nZXRfYndfaW5mbyhkaXNwbGF5
LCBkcmFtX2luZm8sICZtdGxfc2FfaW5mbyk7DQo+IMKgCWVsc2UgaWYgKGRpc3BsYXktPnBsYXRm
b3JtLmRnMikNCj4gwqAJCWRnMl9nZXRfYndfaW5mbyhkaXNwbGF5KTsNCj4gwqAJZWxzZSBpZiAo
ZGlzcGxheS0+cGxhdGZvcm0uYWxkZXJsYWtlX3ApDQo+IC0JCXRnbF9nZXRfYndfaW5mbyhkaXNw
bGF5LCAmYWRscF9zYV9pbmZvKTsNCj4gKwkJdGdsX2dldF9id19pbmZvKGRpc3BsYXksIGRyYW1f
aW5mbywgJmFkbHBfc2FfaW5mbyk7DQo+IMKgCWVsc2UgaWYgKGRpc3BsYXktPnBsYXRmb3JtLmFs
ZGVybGFrZV9zKQ0KPiAtCQl0Z2xfZ2V0X2J3X2luZm8oZGlzcGxheSwgJmFkbHNfc2FfaW5mbyk7
DQo+ICsJCXRnbF9nZXRfYndfaW5mbyhkaXNwbGF5LCBkcmFtX2luZm8sICZhZGxzX3NhX2luZm8p
Ow0KPiDCoAllbHNlIGlmIChkaXNwbGF5LT5wbGF0Zm9ybS5yb2NrZXRsYWtlKQ0KPiAtCQl0Z2xf
Z2V0X2J3X2luZm8oZGlzcGxheSwgJnJrbF9zYV9pbmZvKTsNCj4gKwkJdGdsX2dldF9id19pbmZv
KGRpc3BsYXksIGRyYW1faW5mbywgJnJrbF9zYV9pbmZvKTsNCj4gwqAJZWxzZSBpZiAoRElTUExB
WV9WRVIoZGlzcGxheSkgPT0gMTIpDQo+IC0JCXRnbF9nZXRfYndfaW5mbyhkaXNwbGF5LCAmdGds
X3NhX2luZm8pOw0KPiArCQl0Z2xfZ2V0X2J3X2luZm8oZGlzcGxheSwgZHJhbV9pbmZvLCAmdGds
X3NhX2luZm8pOw0KPiDCoAllbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAxMSkNCj4g
LQkJaWNsX2dldF9id19pbmZvKGRpc3BsYXksICZpY2xfc2FfaW5mbyk7DQo+ICsJCWljbF9nZXRf
YndfaW5mbyhkaXNwbGF5LCBkcmFtX2luZm8sICZpY2xfc2FfaW5mbyk7DQo+IMKgfQ0KPiDCoA0K
PiDCoHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfYndfY3J0Y19udW1fYWN0aXZlX3BsYW5lcyhj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCg0K
