Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1467947B92
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 15:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB47D10E1FE;
	Mon,  5 Aug 2024 13:09:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FQ3Dgp8o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 038A910E1FE
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 13:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722863382; x=1754399382;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4jGOArEAm9mlHpkPkkExJOkwvW19V8TZzbqVSeavuZw=;
 b=FQ3Dgp8oxXBvOj0cyYK0rir0Dwrtaqcr8TxIxVwDjYjmCiEPDo6z6gyX
 10s4+6Qlu5EcFGhX3lYP1VK8JwDtk7YIaLtKTlV2w2fKtaAbVw4aC60je
 F8xmVnt7PABX6/t+rfoaJ1k7+mu+VDpmv1oK15B9eCKU5cQqCHBhx3o5b
 bknfdbWWXiZw1j8znTYxWFynqutXHw+qyOMkAbGzxMkBAxY+bQXea1inM
 H4jZDKvCoAlu8fm1MmJsnvMHxlLlzo9OmWNw8l7qk2lU7pP5D3VIyyxdK
 0qjKpT6OtbuM1xFmVaB895L0VUt//IBGPjOEzlwtme6B/hMHjL3Hizjn3 g==;
X-CSE-ConnectionGUID: hb5+VgU4Sf+Zis0fC5h4Wg==
X-CSE-MsgGUID: s+8gWA/SQsG+YjPXiU0omg==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="20978168"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="20978168"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 06:09:41 -0700
X-CSE-ConnectionGUID: +GtC+JGgSLiIfMtHh3RYiw==
X-CSE-MsgGUID: 2m5E3jjwTDWTNy9mBFwTTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="56381463"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Aug 2024 06:09:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 5 Aug 2024 06:09:40 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 5 Aug 2024 06:09:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 5 Aug 2024 06:09:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 5 Aug 2024 06:09:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PHuqvz+ftzEkmHX91/q7WBAErPo9HKcX2EnqDr4OsXFKLCvXc95+b88yKUZxw9pm0/xGAObr9IVQt3XAUJzI5JVt0DLqYiFpXEoEMNe7RBBnfTDzZV6YdlJ6WnqXKF6KHvVg3BZkCZjtO2t3iPKycqrChemUB7rDYfs0ki4ecFneC/dACkU3tZ5iPb4slkj30ojavQJsHaL+2f+BznsLFU7BsS7+45ICUetJfvyufExehCkZKesocb90Itj3736kc8tbqm0sMmCdFGgz/50R5hmbugWyO8JBBt3nGqbFmbffDUGnSUu1ygyV0+5wSXVapJdeiFrUoosZXPU7zTWj6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4jGOArEAm9mlHpkPkkExJOkwvW19V8TZzbqVSeavuZw=;
 b=TveXwzwL/yfc8+q6mcKXxRMrgkrprudPlkMXnnSsDvh/O4Aq1kZBAYSa8R86sBEXZ5qNNCF//A9LXNo6wWexhJ214MxOvXgE0KWLVEFovkke2fmv9Co2c/ya3N3inz4ebtDuW72sfxuZDvky6VC4WFjIhz80UoY7Hbb2YyvHZuyZFyBUI6zB+AgJLL6mYHeBMrlguRgBUF+8eXbSGTE6kUQozJAA4ZzpY7+66bN4Y9gcNLXpxYkoy1O23lAzFeMGPY1ssB0PSZsT+8pDJVTC0Nmw0kv//yAjtltXBFBuA/Fp/qX4BFYvUbn6fQOEcmRm1HCtZsO3E8kkJH0pTl1T4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH0PR11MB4775.namprd11.prod.outlook.com (2603:10b6:510:34::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Mon, 5 Aug
 2024 13:09:30 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%5]) with mapi id 15.20.7828.023; Mon, 5 Aug 2024
 13:09:29 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: [PATCH] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Thread-Topic: [PATCH] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Thread-Index: AQHa5y9IOYLrj2JMN0i88WwfUiVjarIYoweA
Date: Mon, 5 Aug 2024 13:09:29 +0000
Message-ID: <44cb0985a2abeb56603c0362fcd31769e17a5709.camel@intel.com>
References: <20240805120031.1265-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240805120031.1265-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH0PR11MB4775:EE_
x-ms-office365-filtering-correlation-id: 8c4dc19c-95c0-4370-b2c8-08dcb54fd6e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MUo4VitINktWWmVaMHJMYVdWYVRGT0RycTdDTy9VRDhDWWZPOElHUkFBNzUz?=
 =?utf-8?B?eklCSXFEV1BMa1pQV2NRa3R5S21BSThoblFVOXlsUjdIM1VhMFVNTm1pc1Zx?=
 =?utf-8?B?RHFabWJLK2QvdHZheHBBeTFwSm95d0U4OC9zQnNTT2Fjd1hUODlna0NoOC9U?=
 =?utf-8?B?MVZ5NjVwUFJ2WEtIVk5wM1NuMWl3cTk4OERRcGw1cCtQV0RsZWN6Uys0czJ1?=
 =?utf-8?B?UU9uYm9pdHpCM1NHVmlONmNaYkVId3o0bXB1NG15ck5USGFqeTVWVG93TkhH?=
 =?utf-8?B?UFp0b0dWcW1VQmZoSFFnc0VZS1I4eVk2SWVLVnM0MjVhbC85aXhZRFRWbTFO?=
 =?utf-8?B?cmw1WUZkWFJveTBHNkxhSzdPeUZVZ0ZXUllRbE5tWURHTWdCQy9LTEkwTG5P?=
 =?utf-8?B?TFRKaFpwZnlsRDBiaksrbFlBWW1JTG90WHM5Zk9CcVQ4dHRLUVlnWkJxNnNU?=
 =?utf-8?B?dWtvdGlydGwwTk1yU3F3ZDhQd0ZDMHovTXpycVkxWC96dUdmRmRCeVBqSmVG?=
 =?utf-8?B?dnNUaXdUeUl0ODdsaFlIQ0theFQza3MyMWJPV2RscTNUTWZsVkdwZitjQllp?=
 =?utf-8?B?Z0I2WGVzeVA3Z1RVd0xaZlVnc0ZacHNwLzdlMDUyK3pwYW1VanVkUWJxSjhu?=
 =?utf-8?B?bHRoWDhMOVpielQ3R0tIdFRKdzZxN2RSUzNrQkJCd21XMm5RQkR0eDlOcEdB?=
 =?utf-8?B?cXYwRkROcWRYOXBFbnN3VmRmZDR2T3VwYnBrYkpXc2l3SEtDbUhSRVljOUZ0?=
 =?utf-8?B?cXhTOVREZzYzT0xFSGk3Y3czdGkxODl6bGhTZ3Eya1VrZDdPZExleCtQRUll?=
 =?utf-8?B?bFNqbGUvSXRMaFhYR1Q3aXcrNThQWldvQ0d2dDQxVTdhNFNiMVdtWGFqV0tF?=
 =?utf-8?B?Q1gxY1g1ZGNwN3JLYllyMVhIdVBiNjN6RGl6ZlJpQzVNRlA0TkJEemlaQ25R?=
 =?utf-8?B?SkxrSndJdnFKK0hqakY0UlVSNVgwR0ZuQi92WHZPZWlpR3FxNDE4TDQxZk9S?=
 =?utf-8?B?TWxDdnViK1pkbXRZZUlIVFlzSVhMYStKYmRxWlNLRU9aMFZIcm1wSEVsRW4y?=
 =?utf-8?B?dWpBVFRsbWN0aFFheDM3OVhNOU1qOC9VVHFvVUNQYnFmR1JOUEROSXlvaC9O?=
 =?utf-8?B?NzN0N0FkSDFVQVd5ZkFMSVE2TlFUSkorblVxb1A1cTJtd2JCT0d6OXZXU2F2?=
 =?utf-8?B?V2Q1d05YVEtFTlM3MlpHOHNzNHk5Z2tSdTF1aXd5QkVabVkvUy9TUFFlcjI1?=
 =?utf-8?B?MThrZENFRmRBcEFHSjR3YWtjUnF0cHY3YVhVY2hUU29uYncyUC90TUJYOUg3?=
 =?utf-8?B?c09lQVRFaTVjRy9uS1NPei9zL1o3SDdnOGVJMkhjT0xTdDY0Y1ZqR0RMVUZS?=
 =?utf-8?B?d2NqTGxVUUREaVFiOHJQTFpIZlRyM1Y2b1RSVDFHMzdzNFlKRjd4eGJPazVa?=
 =?utf-8?B?MkRUKzBRbVdRdU1VVXJVSjQ3ME41TDJqd0tQVmlLMTQ3Q1I1ak1yZ3BsZkNQ?=
 =?utf-8?B?Ull6a3hreGFTMmVuR0t5Rk5Ock1yckxLVXpzNVp2Tk5MNm9GM05Ua1VkRHJZ?=
 =?utf-8?B?eGg1NVpvbkdQdm5CTWF4QVl5aEh2V1lSOTBjaFk5bDl6Q2VJb2VLdjVqMGJh?=
 =?utf-8?B?MHUzYmExdmlTd2NUdTg5S0x5c1dkSDFMamw4YnA1QXJ4NlBOWEV0cnR3M01v?=
 =?utf-8?B?eVQ0cWhzTkIxdUhudXNHdDNQdnhmUWZpTFIwVXMybHgxYkZGcExZTmlTWHBL?=
 =?utf-8?B?cXZPbVByU3pKakR4STRnRk04d3FYQk1HTGxRN2tIWlorNmdPOU9wTWlZSGVv?=
 =?utf-8?B?SXJPNDhBby9SZUdkVmFhMFphT1grYk9rWEhJMmtmWFBucjI2VTBjS0ZtNlEv?=
 =?utf-8?B?N0N3TFN4eTNuRnduY09rdlgxMlk5R1hHTWZONVRYK0dTdnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2wzNXhtQ2x6MmFOQnR4MTQwT3A2T3AwMjRHWU1KRHZsdVZnbzJqRU9HOFBj?=
 =?utf-8?B?UUZNVGxLSjhVVHdWSzFtTUNzSlNmeERrMVZkWDFZZU5TYm9CenpXc0xxbUJo?=
 =?utf-8?B?MUdEdnZNdi95M1pwQ2tidGRBdDNtWENBSk1tYm5tTzVob0dPN0p0MVNRTjdQ?=
 =?utf-8?B?TkhVbUxwUGdjbFdFKzJUNjR1amlITlNTRHROZWRCU0t4Q0JuZkFGVTIyNVQw?=
 =?utf-8?B?eHlIOW5vcHVlNGJTWEVMVWpOTEh5VXB0c202WGRSLzNsUWZTSzhTbzBuSk16?=
 =?utf-8?B?akE3eE5jVGxnZldHbklyWHFDUk5XeEZzQ0kxZ1ZETjM5cXBhOEg0MWdoeGcv?=
 =?utf-8?B?VG9aUXQrU0ZqTlZPdndyYXRPUlhlZzFjWC9Eb3pmeGk3NWFMTVdZS0krNGpJ?=
 =?utf-8?B?TUtXb2toaE03ZGszcWZyVWxtZ2ZMSkNQN09vdzlHbnlRck95dWNaelVacEZx?=
 =?utf-8?B?Vnd6WDN3OU05eDRkM3ZtRFRxbFNwWDczWXp1QkFTNWVOelpKMXNmc1dQaWJQ?=
 =?utf-8?B?Z0FSamRDUGlJODBZSXgxbG1uV3o4RlJtRExUT0N0dk5ueTR2WDM5YWh5NVFT?=
 =?utf-8?B?M1EvZE1VMllHaW9LdS9CaE5WY0ZTWEdBeUFxS25ORW92Nll3eXlXQUhnMlAw?=
 =?utf-8?B?K0VZNWNpU3AvQzF6L0JSQ3pkNFJ2MFByU1UrYmMwUmp1cDZQbWg2R1dNcnNO?=
 =?utf-8?B?UjRNbURoR1FqS3hpRE5yYTlWTGoxOFk3K1FreGdiWk9PNzk0ajdvOXpHR3ND?=
 =?utf-8?B?Y0pvd1Fia01Eb1BrV0c3MThnRmRPeVFmRHpwWUk2dnB0WVcyYitEWjEzelRu?=
 =?utf-8?B?YWtVSEdYdHpra1NERkVESlhhTjA0Vmp4a3FLWXlyYUVWSkduMnUxd3h0b3Rx?=
 =?utf-8?B?UjNqUFc4WFhsSFF4bG9FdEEzKzIxZnVsS01pblNNaHJFSFZCcWw1eFVETnpC?=
 =?utf-8?B?aWlQMFRsbjE3U21Kd1F2b3ZueVhpTnFtOHJnam1uUnV5b08rVDJhN1ZtTWVR?=
 =?utf-8?B?UEM2eXZhY3ZOWTJVVEtNT2JDeERubTlXUlhWWHQ5SUhXMnlhNnB6Zk1zRjll?=
 =?utf-8?B?MXBSa0hWUklSMGRlVHNraUxrN3hCR2tWdEZVTWJyZWZycjJkNHFPYVpWeDZj?=
 =?utf-8?B?YTFCcStyT1BtcVRQQTJOK3FkYTJYRzM0SC91VklIamUvc0hGbWlvLys4d1oy?=
 =?utf-8?B?SVY0VGVTWXQxbHV3YmorcjRoeVUxMFhrc0srM0VOb240VktucXViSWlqcmhO?=
 =?utf-8?B?b05seTRENnl6RGc4ZjV3WXdBNW02ZHFqTk9kcUJqWVVoWXJnT1RWMCtqblFE?=
 =?utf-8?B?VHpzdlRUUGMvSm40VVAyN1luTHByVTYrNDZBbTlOYTFTNnRvOWxrUEw3U09S?=
 =?utf-8?B?SlhPTE9aSzZOWUIyTTFNamVheWFSamhyWXBJY3c3aW02MzdueWJQakpDOWx6?=
 =?utf-8?B?ZWVpQ2ovclZ0dmVBS0YrSnRXeTFLS0YwSy9vdGFPRUptSnBHU1BSTVcxckhh?=
 =?utf-8?B?ZHVJWnY5QjU5Z3NBQVovVmtJWFNkS2lkQlZVR0FRN2hUL3lGcGZhb3dJU0V6?=
 =?utf-8?B?b1hUTWNBRmdGTU5kTFE3QkVZVU9DRnQwUnNSNUNuMTdYQVllZm9RK1djdjRr?=
 =?utf-8?B?VlBjQXZvWmkwejRiMVhLVm1DMDFNb1loL2FnWERkL2pBQlZSdVNHeHlvR2Fx?=
 =?utf-8?B?S0RKOWQzS3JONW5YQ0szQk5CUXZBRHBKNVhuK3dYNzJaU01MOElIck1ZZUox?=
 =?utf-8?B?NFZjeGN3VGNhaWsvUldyNW90V3pvaktmR2l4WnhqYmZNaW5PSnJ2WEsyR0hr?=
 =?utf-8?B?UDFBeG5QS1A5UzJaVjNiNzViMmdSSTc5S3p2Yko3Q3dzMFkvR2YxdG41SkJG?=
 =?utf-8?B?eldHaGh5ajZrZkpnZ1RiTUQrV01USHJVNlNqT3U1b3crc3drUEpMY242TytN?=
 =?utf-8?B?ajBoUEtPNHU0M3Rra0dSbkNNSC9udVRNY2FISUJ0SkZWZGpMaGR5S1RxcXlK?=
 =?utf-8?B?TkNRa1Qzam83Z0o1Yy9qQ0syK0lsNGcxQkJwbEZ6K016alVFZjZLdjdZblM5?=
 =?utf-8?B?ejhPYWdpSnJoeHBsK2M4NHNFM0JYRjJUUmh2dmVReUcycDg5ZTJuOXRBOVJI?=
 =?utf-8?B?aUdpVVU2QUlISmQza0licU9TRUUxV3p4Nks5SlY3dkFzR1kzSWZIUkdOYkF6?=
 =?utf-8?Q?WW6N4qjDK/Bs6aIEm9+IXJY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D687291C60FE39488169F85D8E0B1F72@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c4dc19c-95c0-4370-b2c8-08dcb54fd6e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2024 13:09:29.1468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8+vMIOslcLS+2blfOi/oMejb/cIK7qG3GEY0GvaAFMrclpQuXL50MiZxZezoRkh87zC/o2V25llwzLSt+9QpKrTwhhZNG7tJ+hRNI7M+M0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4775
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

T24gTW9uLCAyMDI0LTA4LTA1IGF0IDE1OjAwICswMzAwLCBTdGFuaXNsYXYgTGlzb3Zza2l5IHdy
b3RlOgo+IEZyb20gTE5MIG9ud2FyZHMgdGhlcmUgaXMgYSBuZXcgaGFyZHdhcmUgZmVhdHVyZSwg
d2hpY2gKPiBhbGxvd3MgdG8gZGV0ZWN0IGlmIHRoZSBkcml2ZXIgd3JvbmdseSBhbGxvY2F0ZWQg
REJ1Zgo+IGVudHJpZXMgYW5kIHRoZXkgaGFwcGVuIHRvIG92ZXJsYXAuIElmIGVuYWJsZWQgdGhp
cyB3aWxsCj4gY2F1c2UgYSBzcGVjaWZpYyBpbnRlcnJ1cHQgdG8gb2NjdXIuCj4gV2Ugbm93IGhh
bmRsZSBpdCBpbiB0aGUgZHJpdmVyLCBieSB3cml0aW5nIGNvcnJlc3BvbmRlbnQKPiBlcnJvciBt
ZXNzYWdlIHRvIGtlcm5lbCBsb2cuCj4gCj4gU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292
c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMgfCA2ICsrKysrKwo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oIHwgMiAr
Kwo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jwqDC
oMKgIHwgNyArKysrKysrCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5owqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDIgKysKPiDCoDQgZmlsZXMgY2hh
bmdlZCwgMTcgaW5zZXJ0aW9ucygrKQo+IAoKSXQgd291bGQgYmUgYmVuZWZpY2lhbCB0byBhZGQg
dGhlIEJzcGVjIHJlZmVyZW5jZXMgNjk0NjQsIDY5NDUwLgoKUmV2aWV3ZWQgYnk6IFZpbm9kIEdv
dmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPgoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiBp
bmRleCBkZDdkY2U0YjBlN2EuLmI0Zjk3OWJjNTljZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiBAQCAtMTQ1Nyw2
ICsxNDU3LDEyIEBAIHN0YXRpYyB2b2lkIF9faW50ZWxfZGlzcGxheV9kZXZpY2VfaW5mb19ydW50
aW1lX2luaXQoc3RydWN0Cj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmIChJU19ESVNQTEFZX1ZFUihpOTE1LCAxMCwgMTIpICYmCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGRmc20gJiBHTEtfREZTTV9ESVNQ
TEFZX0RTQ19ESVNBQkxFKSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBkaXNwbGF5X3J1bnRpbWUtPmhhc19kc2MgPSAwOwo+ICsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDIwICYmCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAhKGRmc20gJiBYRTJMUERfREZTTV9E
QlVGX09WRVJMQVBfRElTQUJMRSkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBkaXNwbGF5X3J1bnRpbWUtPmhhc19kYnVmX292ZXJsYXBfZGV0ZWN0aW9u
ID0gMTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZWxzZQo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGlzcGxheV9ydW50aW1lLT5oYXNf
ZGJ1Zl9vdmVybGFwX2RldGVjdGlvbiA9IDA7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+IMKg
wqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMjApIHsKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiBp
bmRleCAxMzQ1M2VhNGRhZWEuLjZiOTRjY2QzODFiYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiBAQCAtMTIyLDYg
KzEyMiw3IEBAIGVudW0gaW50ZWxfZGlzcGxheV9zdWJwbGF0Zm9ybSB7Cj4gwqAjZGVmaW5lIEhB
U19DRENMS19TUVVBU0goaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9JTkZPKGk5MTUp
LT5oYXNfY2RjbGtfc3F1YXNoKQo+IMKgI2RlZmluZSBIQVNfQ1VSX0ZCQyhpOTE1KcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAoIUhBU19HTUNIKGk5MTUpICYmIElTX0RJU1BMQVlfVkVSKGk5
MTUsIDcsIDEzKSkKPiDCoCNkZWZpbmUgSEFTX0QxMl9QTEFORV9NSU5JTUlaQVRJT04oaTkxNSkg
KElTX1JPQ0tFVExBS0UoaTkxNSkgfHwgSVNfQUxERVJMQUtFX1MoaTkxNSkpCj4gKyNkZWZpbmUg
SEFTX0RCVUZfT1ZFUkxBUF9ERVRFQ1RJT04oX19pOTE1KSAoRElTUExBWV9SVU5USU1FX0lORk8o
X19pOTE1KS0KPiA+aGFzX2RidWZfb3ZlcmxhcF9kZXRlY3Rpb24pCj4gwqAjZGVmaW5lIEhBU19E
REkoaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9JTkZP
KGk5MTUpLT5oYXNfZGRpKQo+IMKgI2RlZmluZSBIQVNfRElTUExBWShpOTE1KcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9SVU5USU1FX0lORk8oaTkxNSktPnBpcGVfbWFzayAh
PSAwKQo+IMKgI2RlZmluZSBIQVNfRE1DKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgKERJU1BMQVlfUlVOVElNRV9JTkZPKGk5MTUpLT5oYXNfZG1jKQo+IEBAIC0yMTYs
NiArMjE3LDcgQEAgc3RydWN0IGludGVsX2Rpc3BsYXlfcnVudGltZV9pbmZvIHsKPiDCoMKgwqDC
oMKgwqDCoMKgYm9vbCBoYXNfaGRjcDsKPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBoYXNfZG1jOwo+
IMKgwqDCoMKgwqDCoMKgwqBib29sIGhhc19kc2M7Cj4gK8KgwqDCoMKgwqDCoMKgYm9vbCBoYXNf
ZGJ1Zl9vdmVybGFwX2RldGVjdGlvbjsKPiDCoH07Cj4gwqAKPiDCoHN0cnVjdCBpbnRlbF9kaXNw
bGF5X2RldmljZV9pbmZvIHsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2lycS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfaXJxLmMKPiBpbmRleCA1MjE5YmEyOTVjNzQuLmUwZjFiNTRkOTE3NSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
aXJxLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
aXJxLmMKPiBAQCAtODk2LDYgKzg5NiwxMyBAQCBnZW44X2RlX21pc2NfaXJxX2hhbmRsZXIoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgaWlyKQo+IMKgewo+IMKgwqDCoMKg
wqDCoMKgwqBib29sIGZvdW5kID0gZmFsc2U7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqBpZiAoSEFT
X0RCVUZfT1ZFUkxBUF9ERVRFQ1RJT04oZGV2X3ByaXYpKSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGlmIChpaXIgJiBYRTJMUERfREJVRl9PVkVSTEFQX0RFVEVDVEVEKSB7Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fd2Fybigm
ZGV2X3ByaXYtPmRybSzCoCAiREJ1ZiBvdmVybGFwIGRldGVjdGVkXG4iKTsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZvdW5kID0gdHJ1ZTsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+ICvCoMKgwqDCoMKgwqDCoH0KPiArCj4gwqDC
oMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTQpIHsKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChpaXIgJiAoWEVMUERQX1BNREVNQU5EX1JTUCB8
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBY
RUxQRFBfUE1ERU1BTkRfUlNQVE9VVF9FUlIpKSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4g
aW5kZXggMGUzZDc5MjI3ZTNjLi4xZThiMDRkMmY3MjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPiBAQCAtMjU3OCw2ICsyNTc4LDcgQEAKPiDCoCNkZWZpbmXCoCBHRU44X0RFX01JU0Nf
R1NFwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19CSVQoMjcpCj4gwqAjZGVmaW5lwqAg
R0VOOF9ERV9FRFBfUFNSwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0JJVCgxOSkK
PiDCoCNkZWZpbmXCoCBYRUxQRFBfUE1ERU1BTkRfUlNQwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJF
R19CSVQoMykKPiArI2RlZmluZcKgIFhFMkxQRF9EQlVGX09WRVJMQVBfREVURUNURUTCoMKgUkVH
X0JJVCgxKQo+IMKgCj4gwqAjZGVmaW5lIEdFTjhfUENVX0lTUiBfTU1JTygweDQ0NGUwKQo+IMKg
I2RlZmluZSBHRU44X1BDVV9JTVIgX01NSU8oMHg0NDRlNCkKPiBAQCAtMjg2Myw2ICsyODY0LDcg
QEAKPiDCoCNkZWZpbmXCoMKgIFNLTF9ERlNNX1BJUEVfQ19ESVNBQkxFwqDCoMKgwqDCoMKgKDEg
PDwgMjgpCj4gwqAjZGVmaW5lwqDCoCBUR0xfREZTTV9QSVBFX0RfRElTQUJMRcKgwqDCoMKgwqDC
oCgxIDw8IDIyKQo+IMKgI2RlZmluZcKgwqAgR0xLX0RGU01fRElTUExBWV9EU0NfRElTQUJMRcKg
KDEgPDwgNykKPiArI2RlZmluZcKgwqAgWEUyTFBEX0RGU01fREJVRl9PVkVSTEFQX0RJU0FCTEXC
oMKgwqDCoMKgKDEgPDwgMykKPiDCoAo+IMKgI2RlZmluZSBYRTJMUERfREVfQ0FQwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgX01NSU8oMHg0MTEwMCkKPiDCoCNkZWZpbmXCoMKg
IFhFMkxQRF9ERV9DQVBfM0RMVVRfTUFTS8KgwqDCoMKgwqBSRUdfR0VOTUFTSygzMSwgMzApCgo=
