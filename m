Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A790DA5E385
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 19:14:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0BD10E1C2;
	Wed, 12 Mar 2025 18:14:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMqBNhV6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F1F10E1C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Mar 2025 18:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741803290; x=1773339290;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1odwYgWmn2Ici2X2iR81yzEJ32Tu0eIkBWJWfcvsBrI=;
 b=BMqBNhV628UnsUhlfFjnhD6nDMF/lzYqj0RvjcBT8nZt2zB78KM5h+Gn
 jaTrbIMvTyVH2DMFtb7jVZ5nfrEx4KMjDSNpiurfiBzhlRp2rFXz3SqY/
 uOcwWHMszHlj90oRU5wj3BMF8ndwehRR1c7uKD5R3fUtu8sGG4pfa+igA
 lTgSbXUfvPzQCXM5ivtEb8eT+m018N6bj4w1fpIShFwLNWr1MjiJmVR72
 lhfH/RJRLGSdnWqv5GYtZxBIJkfqvJ7QhZ/UCHNTarpV94Gz3gl3OJJA7
 L1rsf38yMpETWjFULT+GqUlP+u0mefCkd8Q/YSVEHgjfv3jYn4chMGvwS w==;
X-CSE-ConnectionGUID: S8PVTmpwRemLlTedQT7/Qg==
X-CSE-MsgGUID: G43Dd4o3RAOFtb21+afDng==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="46807319"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="46807319"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 11:14:46 -0700
X-CSE-ConnectionGUID: FiCMUCbxQ4G8zBolgoYmSA==
X-CSE-MsgGUID: 1IC4XzyRREikMyBqM0lKXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="120522552"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2025 11:14:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Mar 2025 11:14:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 11:14:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 11:14:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YBCZM4QiOg9qeGNBdZOKBeK6GpY2CGNXko1JCcCHz4a5Lb24oHu5AqcpCRRr8V9ZrxQm6vFPciZOv30ESDfQlFlJS7zpSsEGBxntCHCb6BypagSjXHmv3sJi6RquPpHDiu/k+oOjmMzA3nYR68Lo7Yc/7hOK4nXU1QVf1uf5R5mkQ6rfXs4N2ezaqUsS4t7VUkNCm90zHXA9SeRfnUOLGAVKWq/KYOrkV8BSOMZYRodiifnh7DjoK5DMc8ZhEWPoTHbj8OoqLWleOz5V0xm8jyFKSJljnQF41a+N8ygSGv/dQSypwv9DosUTc1T3bfvU94ABc5uMRw3fzl4CuFw/FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NArxyxtmKpZr7jlzTySULDO18339ryEeQiuM27VIFaQ=;
 b=FWZdPgVhBlFdUV8k728a6EnIb8AZ/itm1dRMmlzOY2sv7SmJtafMUvoBvVK7gWhe/TTOHAHf3Rgim+E7dyOg7s2F8bDNcIUyhSu0w0HIBxi5Ni8VIbDjzaMUM2JmxzFSr/vdQ3zJJ9LhPWM7zBX9HJ9DPPikIDuif8ZuFjge8t2+1w7CQ4YZBujfaiDzecdl7HimE9jy0BI4DVbkrJkMcdMBs1Q/rpgZslttR5DoYHtJmXp9aeDM2K6HxTkT6Wdl3GcnXgGOwHyIr0578MWC4tFlQb7lIsUn9p80tW5hAHUSHRpUQ6iVHtgD1xspMUX8zPTjfdd0fS3RducNk1Pkrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB4738.namprd11.prod.outlook.com (2603:10b6:5:2a3::18)
 by CYYPR11MB8388.namprd11.prod.outlook.com (2603:10b6:930:c2::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Wed, 12 Mar
 2025 18:14:27 +0000
Received: from DM6PR11MB4738.namprd11.prod.outlook.com
 ([fe80::7064:9c9a:d2ca:c6a1]) by DM6PR11MB4738.namprd11.prod.outlook.com
 ([fe80::7064:9c9a:d2ca:c6a1%5]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 18:14:26 +0000
Message-ID: <29cd2d2d-5c10-4188-82e7-be83590426a1@intel.com>
Date: Wed, 12 Mar 2025 23:44:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] drm/i915/dmc: Create debugfs entry for dc6 counter
To: <intel-gfx@lists.freedesktop.org>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <20250312144310.7610-1-mohammed.thasleem@intel.com>
 <Z9GjYgbLPQA0ZM9b@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Naladala, Ramanaidu" <Ramanaidu.naladala@intel.com>
In-Reply-To: <Z9GjYgbLPQA0ZM9b@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0020.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::32) To DM6PR11MB4738.namprd11.prod.outlook.com
 (2603:10b6:5:2a3::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB4738:EE_|CYYPR11MB8388:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a60e34f-5637-42a4-8def-08dd6191b95e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjVWSnliV1BnU3QrVDFMb3B1SFVzN1Q3cU1UVGFUNGFhdlNDa1ZxU2dFZVhk?=
 =?utf-8?B?SUt6enJDQjF1Y2RaT1EzWUZ4MVNRa09tU25ZSkNtYTcrYUN1NERpbFFza2Fa?=
 =?utf-8?B?aWZOM0swM0ppVmtodVpWZC94OGhZdTlMNUJVRTQ4RUZWMVZWL3lwSG5wbEVx?=
 =?utf-8?B?UjZydWRvREFNczB5Q0NFYUgvZnFYQjhFUWNHNGhNM25WbU40azQ0L3dEYmlH?=
 =?utf-8?B?bGJteVN2N2xNWmpWclZHUlhrUTU0WmNkckVCWXlXZ0d6SHErbmdMVlBmejVE?=
 =?utf-8?B?Yit6MFV4b3p0RXNVcDRSMlVMWE5LZDc2SXYwQUJNR2duSENieURvZDk2UllS?=
 =?utf-8?B?ejRqZkNRbSt3M2J3UTZ4em11ampXa2ZISld1WjdPTGhOdGlsNEdZMng2d1NY?=
 =?utf-8?B?Rzl3OHJmdVRwOGM1K01md2dSZy8wWTVRcnhCS0tOL0pid1N4ZW1tRVV4Q1NN?=
 =?utf-8?B?aFozbWNHNUpOR3d3a0pFRXlBcUlxVUp4aVpCdHhOSXhaVUhtL2VVTlRmWG5y?=
 =?utf-8?B?dHRjTXRZZzdBbjV1aTRIR2NpYXlhWkNTS1dUTVh3blJYaUFBc1lsSExUdjZF?=
 =?utf-8?B?R2t3TElRcGh6ZzdHMmJEK0ZPTHdNZlpZYnQ1ZjBxb05DUkorMHU4NDNqN3FS?=
 =?utf-8?B?T2RYY042NTFxZHZmRVdkUUkwZ3FVUjFYQ0tGMHFQMDNrenZHVWZWYldqZG1o?=
 =?utf-8?B?Ujh3Ykh0dmh0ZDJPdUdyL1hlQ2xqUDBQTk5qR0xBVlZxaUMyL0hvUjZFSmZ3?=
 =?utf-8?B?Z2hqSWhIVytMUkJZOUtGZHIvbVIyQi9UbWE0VXJveDd3VTRPNU00VVVuS1Aw?=
 =?utf-8?B?b2h6UllnTURwVnpHQjltVUlSSjNCL0E0N0Zsc252cjFKTnRtbGZpUTFYMGZY?=
 =?utf-8?B?dmJ0LzBQRkRJdzU5ZXNXMnBDQ3ZsTWlIRFN3NXlCY2xQNlVraStxWHlxRG9G?=
 =?utf-8?B?dWUxSzdaRTJWSitobUFuQWN4bkRUTmRHRmsvd0NTMS9zQkNyL0RwNDRmQWVE?=
 =?utf-8?B?WUNMZlFNSlBRMlR1RHZvNmtzTFFLZzRBVHBnVlNvVzY3U1ZycThFUEhvMlFt?=
 =?utf-8?B?TEZ0NS9MQ2E2cllrWjZHSW1WRHhCb3FycXZuVWhmOVhKdFY2RVh4TzB4Nm9Y?=
 =?utf-8?B?S2FhTXN0QXRzTEd5dkkwai9RS201cWM5Y3ZrbW5vaG4yTlExUTZXSERXYWlU?=
 =?utf-8?B?TWlYK3JNZHh6Y2ppeTZLV3RNZlJoV1VjMGpFcnRxME44SWdvK3k1REtaZXcx?=
 =?utf-8?B?cjdVNjRRZWlRemUzQ3ZLUFdmT0xDODJNbXlxU28reHMzQmRuMmwydG1uVmpF?=
 =?utf-8?B?THRWVE9rZ014WGdmV3ZJYzFsQmJXeHVWU0tLVDN0K1YzL2EzMlg2bHJOeUNW?=
 =?utf-8?B?eXo2UFNMMFc5MG5JSHVPekQ3TXFmeFVSUUZJaEhza3IxQWd6OGdyYXlTVlRO?=
 =?utf-8?B?UEdHRTJQNVZzOHZKc1dXcW1XMzZHMTA1RVgyb3FlWC9hNlpoN2xMbTlnUW1m?=
 =?utf-8?B?dkRVd1VMK3VTRmFMWU5yWWFEK0M3MzJQbjM5TlE0aW5HSjRrVi9WNEJHZnpH?=
 =?utf-8?B?SUNYRzRXS2FZQXh4MFlqRnBNM2RqaWkza0NqMEN3aXU1Y2dBc084SHVJQzVy?=
 =?utf-8?B?VG1yM1BRKzRxMzlnUzJDR0hCMWltbFh2T2NLSnA3dTl1TGVxQzdoelRYeVBF?=
 =?utf-8?B?U2U3NUdnb1RNSHJWUHhZekk0eWJycEFydnFSdnUwUTBhYjZXR1JSdmFmQ0pJ?=
 =?utf-8?B?NG15SU1NMERyWTUvTTV2Y2w4Q3RDSUF6aFBYbTN2R1NjVU4wdU5XdjRKNFB0?=
 =?utf-8?B?SG44bnJEZ1hlTGxSbmpTZSt0VDdyUmExM0NrZE5BSEtPemZKbmJYZnpQMUpI?=
 =?utf-8?Q?itccsD5RXC9CM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkxwUVJLL0dKdDFkVmFDOFNMVms5a0Frbm1ZaHRaRy9YRUx6bFdELzZkWDFQ?=
 =?utf-8?B?d3lhckVvcVJza3ZnR0NYV3J3MjY5dEhiSW5FWUs2bHN5a0FDL3ZUT0c3Zll2?=
 =?utf-8?B?R1B1cldKTDlib3daTCtmK1dRZHk4cFFVa0pHME9aNGxkUFQ0M2xpN2c2ZG1Y?=
 =?utf-8?B?eWVJYXVrNmJZZnpEYWdVejh4VGRlcXlQTUQyVVdQbjZNYm00SVJ0eDVuVjlj?=
 =?utf-8?B?Y3dFUis0QVRvNVRYZXJTYU5BUTQ4OHJ3U3RudUEwL0lQbXhtN0tKZVorRlJu?=
 =?utf-8?B?MWE1bCtWMkg4dnNFTWkzMm4rWTB3YjR0a0NkeXJZb2J5ZW45TUQzczBJekdy?=
 =?utf-8?B?ZTJIT3NGeWZId0V6dHJuME5LVHR0RXBZUXdydXBhbVRNVDZCZjliU29JQmxY?=
 =?utf-8?B?VU9mWmhuTnhVUUIzN20rQkpIMWU1YngwODJqOVFCN1ZtbmJiMmVRSU9LSTcz?=
 =?utf-8?B?b3VkancrR2VtamRYOHdFMGVxeWdQYzNtSWppbzd6Yk5MK0tyZjdJak5CTzFh?=
 =?utf-8?B?OVRqeThXcHYwNnZ0b3EzNU9PUU1IMEFNbjVmYnBxSzB1OEt4RnFLaTJGaXFG?=
 =?utf-8?B?OWZ4QXNJc1U1WXl0TnlkMTdiMElFS0wwU1JNSWZ0TEV0Uy9reml0aEVlWW9H?=
 =?utf-8?B?c2REcSszalZCK0hWa0pmL25qNHFyVzFFL1p3KytsMVFuVWlkaDFvUlFKRVNZ?=
 =?utf-8?B?dDZJekN1Rm5GcGpCalBIKzA3MWtKbGJqbU9pbnpGdkpmSmtCOEticHNCbys1?=
 =?utf-8?B?MzZTR1hyRkZicTB4K0JkdEhGVlFYK2tKVnBpTnMrb2xqRkxubERYV1BHeUFq?=
 =?utf-8?B?OEYyUzlaY0VUVmxwSEI0TThkMmlwY0JBd1Z2empTMjBYSEpyTzMzUE5iQkRX?=
 =?utf-8?B?d1pJU0lHQnp4b2lOZnNjcDI1RGQ0bkdZQjZ0TFZYVXV0SjMrRkRnNWhhbi9r?=
 =?utf-8?B?QmJ6N0FJUm5DT0VPOWVxazQ2U1NjdVc1TFZPMm00ZlZteEk1OEtoc1lRVldv?=
 =?utf-8?B?KzZGakx1bDY4MExBRWx2cTBWcklyMnpEdnQ5RnNMQXg0VVQ4Ylk3Z3ZrR0w0?=
 =?utf-8?B?ZlphK1JBZjN0WC9Mb2s3Q2ROWDV5TnQ1Y0VQbERJcHhhc1RENG1zN2dMSllU?=
 =?utf-8?B?OFVMbE00L3JLVk9GQzErSGhycGNaS1h2OWlTWXozK0tVQU9KVHdVbi9QYlNM?=
 =?utf-8?B?bnFSVDhZSVpsWnBvSWpmUFYyZm9hUEVISFk2UDIrWDhFUFhhQnp0UWlYZW5I?=
 =?utf-8?B?bG5sbzRyM2dvOWM1T244cE5RT2pmNTFqc3VBdkladlg5QXhkNUw4T29QSGsy?=
 =?utf-8?B?UnJMcXhERWlScWp3M01TUjV1bS95YjFxeklTY2lLTU1sckZhME9kNzBkWisx?=
 =?utf-8?B?TWh1ZUpwUGdpT2FJampjeXZ2ZzR6bzZOdDQ3UGtJd1hpVER1UjZ4c2RxYnJa?=
 =?utf-8?B?WVpIYmtjWjZyeHo1clorUXRiamhnK200U1JQRjVNNC9vanNIKytlTHlJL3lM?=
 =?utf-8?B?dGMwSFQ2OE9nOXpQS3hhSjRVeTZwRS9zMXpjWWxiWE1kbkR5US8yZ3UwZUNB?=
 =?utf-8?B?THRONlVhOWhlRFUyZmRFNzA0akpFTXF0SmI5T004dXF4amlWU290Q2o0aWUy?=
 =?utf-8?B?ZFBlZk9CSVJqOE1ZOHFuemh2c1AxaUtUeUxCUGdtWXdmSzJNOWI0SmtTQWI2?=
 =?utf-8?B?VEhWMjBrRWZDMXU2SjlKcWVydjM5V3lyUnVPc01BQ1dTMmVMK0x0bXpzWTBI?=
 =?utf-8?B?Y2dtYmx6R0FqYXFNaFQ3N0ZNeXg1ZXY5Q24wN21CdFRGMmtzZnpuMnAxdE9O?=
 =?utf-8?B?NjU0SnVXQzhka1h0ZHpnRXdBc1AyYUdnbHVGSG9UdDV5VDN5M0FoaUdKcTdX?=
 =?utf-8?B?VVRzYkhjS0FqZlZTRithS0ZEb3NYQ0pkY0RPQmpyQ3MwREpJMnowNkhKL20v?=
 =?utf-8?B?Mjd2QjVRWUJoVkg3WVVCYTFsZlQ4QVRuallvblBFM3ZWRVpLcWtoK0JmQVRo?=
 =?utf-8?B?RndBbWlOd2F4OUFEUmRXMnBueXJYZUZheERsa21NTkI1MUIzUlBjODVqK0JT?=
 =?utf-8?B?VVIrODlaRGI1WW52TnE4ekVuRG5DVG8vRFJ5dWRod2Z0WVVmQ3djY2lPNjFY?=
 =?utf-8?B?Wk13aTJ5SE54K0pSL3pOMEpPZjV4Umc0cVRrSGh6b2VPTnhNTXlvaUQ5WFpV?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a60e34f-5637-42a4-8def-08dd6191b95e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 18:14:26.8507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6I7jV7wOlAbR9+b2jKMkaKTkPeEdIiOeIWTM7p50jqqaKL+ckfgnWwc04aEAwQwXqxuh6JDxpBuRGSB6MuVacrrLIOuGkrOyYDA2DtNv6Jk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8388
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

Hi Imre/Thasleem,

On 3/12/2025 8:38 PM, Imre Deak wrote:
> On Wed, Mar 12, 2025 at 08:13:10PM +0530, Mohammed Thasleem wrote:
>> Starting from MTL we don't have a platform agnostic way to validate
>> DC6 state due to dc6 counter has been removed to validate DC state.
>>
>> The goal is to validate that the display HW can reach the DC6 power
>> state. There is no HW DC6 residency counter (and there wasn't such
>> a counter earlier either), so an alternative way is required. According
>> to the HW team the display driver has programmed everything correctly in
>> order to allow the DC6 power state if the DC5 power state is reached
>> (indicated by the HW DC5 residency counter incrementing) and DC6 is
>> enabled by the driver.
>>
>> Driver could take a snapshot of the DC5 residency counter right
>> after it enables DC6 (dc5_residency_start) and increment the SW
>> DC6 residency counter right before it disables DC6 or when user space
>> reads the DC6 counter. So the driver would update the counter at these
>> two points in the following way:
>> dc6_residency_counter += dc5_current_count - dc5_start_count
>>
>> v2: Update the discription. (Imre)
>>      Read dc5 count during dc6 enable and disable then and update
>>      dc6 residency counter. (Imre)
>>      Remove variable from dmc structure. (Jani)
>>      Updated the subject title.
>> v3: Add i915_power_domains lock to updated dc6 count in debugfs. (Imre)
>>      Use flags to check dc6 enable/disable states. (Imre)
>>      Move the display version check and counter read/update to
>>      a helper. (Imre)
>>      Resize the variable length. (Rodrigo)
>>      Use old dc6 debugfs entry for every platform. (Rodrigo)
>> v4: Remove superfluous whitespace. (Jani)
>>      Read DMC registers in intel_dmc.c (Jani)
>>      Rename dc6_en_dis to dc6_enabled and change its type to bool. (Jani)
>>      Rename update_dc6_count and move it to intel_dmc.c (Jani)
>>      Rename dc6_en_dis to start_tracking. (Imre)
>>      Have lock for dc6 state read aswelll. (Imre)
>>      Keep the existing way print 'DC5 -> DC6 count' along with
>>      new 'DC6 Allowed Count' print. (Imre)
>>      Add counters in intel_dmc struct. (Imre)
>>      Have interface to return dc6 allowed count. (Imre)
>>      Rename dc6_count to dc6_allowed_count. (Rodrigo)
>> v5: Rename counters and move in to dc6_allowed structure. (Imre)
>>      Order declaration lines in decreasing line length. (Imre)
>>      Update start_tacking logic. (Imre)
>>      Move get couner inside lock and DISPLAY_VER code to helper. (Imre)
>>
>> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
>> ---
>>   .../i915/display/intel_display_power_well.c   | 11 +++-
>>   drivers/gpu/drm/i915/display/intel_dmc.c      | 54 +++++++++++++++++--
>>   drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
>>   3 files changed, 62 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 8ec87ffd87d2..574352439573 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -752,8 +752,9 @@ void gen9_sanitize_dc_state(struct intel_display *display)
>>   void gen9_set_dc_state(struct intel_display *display, u32 state)
>>   {
>>   	struct i915_power_domains *power_domains = &display->power.domains;
>> -	u32 val;
>> +	bool dc6_was_enabled, enable_dc6;
>>   	u32 mask;
>> +	u32 val;
>>   
>>   	if (!HAS_DISPLAY(display))
>>   		return;
>> @@ -772,11 +773,19 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>>   		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
>>   			power_domains->dc_state, val & mask);
>>   
>> +	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
>> +	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
>> +	if (!dc6_was_enabled && enable_dc6)
>> +		intel_dmc_update_dc6_allowed_count(display, true);
>> +
>>   	val &= ~mask;
>>   	val |= state;
>>   
>>   	gen9_write_dc_state(display, val);
>>   
>> +	if (!enable_dc6 && dc6_was_enabled)
>> +		intel_dmc_update_dc6_allowed_count(display, false);
>> +
>>   	power_domains->dc_state = val & mask;
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index fa6944e55d95..95abeec0586a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -28,6 +28,7 @@
>>   #include "i915_drv.h"
>>   #include "i915_reg.h"
>>   #include "intel_de.h"
>> +#include "intel_display_power_well.h"
>>   #include "intel_dmc.h"
>>   #include "intel_dmc_regs.h"
>>   #include "intel_step.h"
>> @@ -57,6 +58,10 @@ struct intel_dmc {
>>   	const char *fw_path;
>>   	u32 max_fw_size; /* bytes */
>>   	u32 version;
>> +	struct {
>> +		u32 dc5_start;
>> +		u32 count;
>> +	} dc6_allowed;
>>   	struct dmc_fw_info {
>>   		u32 mmio_count;
>>   		i915_reg_t mmioaddr[20];
>> @@ -1232,6 +1237,43 @@ void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct
>>   			   DMC_VERSION_MINOR(snapshot->version));
>>   }
>>   
>> +void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
>> +					bool start_tracking)
>> +{
>> +	struct intel_dmc *dmc = display_to_dmc(display);
>> +	u32 dc5_cur_count;
>> +
>> +	if (DISPLAY_VER(dmc->display) < 14)
>> +		return;
>> +
>> +	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
>> +
>> +	if (!start_tracking)
>> +		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
>> +
>> +	dmc->dc6_allowed.dc5_start = dc5_cur_count;
>> +}
>> +
>> +static u32 intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *count)
> The return type isn't compatible with the -ENODEV returned value. I'd
> just return a bool, since the reason for an error is always the same.
>
>> +{
>> +	struct i915_power_domains *power_domains = &display->power.domains;
>> +	struct intel_dmc *dmc = display_to_dmc(display);
>> +
>> +	if (DISPLAY_VER(display) < 14)
>> +		return -ENODEV;
>> +
>> +	mutex_lock(&power_domains->lock);
>> +	bool dc6_enabled = DC_STATE_EN_UPTO_DC6 &
>> +			   intel_de_read(display, DC_STATE_EN);

The dc6_enabled flag indicates only the DC state limit. If all 
conditions are met, the DMC can entry/exits DC6.

However, if the DC6 conditions are not met, the DMC can perform 
entry/exits up to DC5. Entry/exits from

DC5 to DC3 can also change the DG1_DMC_DEBUG_DC5_COUNT counter values. 
It is better to add a pc10 check

along with the dc6_enabled flag.


Correct me if my understanding is wrong.

>> +	if (dc6_enabled)
>> +		intel_dmc_update_dc6_allowed_count(display, false);
>> +
>> +	*count = dmc->dc6_allowed.count;
>> +	mutex_unlock(&power_domains->lock);
>> +
>> +	return 0;
>> +}
>> +
>>   static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>>   {
>>   	struct intel_display *display = m->private;
>> @@ -1239,6 +1281,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>>   	struct intel_dmc *dmc = display_to_dmc(display);
>>   	intel_wakeref_t wakeref;
>>   	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
>> +	u32 dc6_allowed_count;
>>   
>>   	if (!HAS_DMC(display))
>>   		return -ENODEV;
>> @@ -1287,9 +1330,14 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>>   	}
>>   
>>   	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
>> -	if (i915_mmio_reg_valid(dc6_reg))
>> -		seq_printf(m, "DC5 -> DC6 count: %d\n",
>> -			   intel_de_read(display, dc6_reg));
>> +
>> +	if (intel_dmc_get_dc6_allowed_count(display, &dc6_allowed_count) == 0) {
>> +		seq_printf(m, "DC6 Allowed Count : %d\n", dc6_allowed_count);
> "DC5 -> DC6 allowed count: %d\n" would align better with the other
> entries printed.
>
>> +	} else {
>> +		if (i915_mmio_reg_valid(dc6_reg)) {
> The above else/if could be combined to 'else if (i915_mmio_reg_valid(...))'
> and the {} could be dropped from around both resultant if branches.
>
> With the above fixed the patch looks ok to me:
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>
>
>> +			seq_printf(m, "DC5 -> DC6 count: %d\n",
>> +				   intel_de_read(display, dc6_reg)); }
>> +	}
>>   
>>   	seq_printf(m, "program base: 0x%08x\n",
>>   		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>> index 44cecef98e73..c78426eb4cd5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>> @@ -26,6 +26,7 @@ void intel_dmc_debugfs_register(struct intel_display *display);
>>   
>>   struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display);
>>   void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p);
>> +void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool start_tracking);
>>   
>>   void assert_dmc_loaded(struct intel_display *display);
>>   
>> -- 
>> 2.43.0
>>
