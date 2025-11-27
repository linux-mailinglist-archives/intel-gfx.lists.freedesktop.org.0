Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F94C8F701
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 17:06:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8019410E821;
	Thu, 27 Nov 2025 16:06:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="agyQQfbz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D47610E087;
 Thu, 27 Nov 2025 16:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764259590; x=1795795590;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ieBhQSsJ10FySNJZbYzWWBAK0Y8u2HKOkEy2AwFF3P4=;
 b=agyQQfbzpCqZ6/48GHsU2/WZohyKxA2b97CFHkVUfsi5qSS+kfMb/o4q
 2wY7nzTzb+zbJARy9b7t5odxNka+a0JSQF8GHEj6GxtYpRRNtykCawPGs
 GIQJOQcFpxj/qbijDjF+7pmJ05WEdvrGQqXYTsOglsiHkEHtbzZurNWgg
 BdkiBpM0WYsPJcwmcry3ivF32Q+fkOtKgUJpbaxscQeKnuH+zAn5supwv
 prETYqMYi67K703vbwsXywGktTCbGTVyCS3839tzWZj2FGOuOs86P+OHc
 ir3WWOlH6Lgo3D58bolf2nqPNFIABXs0CPIuRybBIpVRubDoN+Wzjfy2P g==;
X-CSE-ConnectionGUID: W7U9+3uJT1GjoK5UbOPXlQ==
X-CSE-MsgGUID: UoD7BtHSQ5OBEVKAi/QRQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66383202"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66383202"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 08:06:30 -0800
X-CSE-ConnectionGUID: 9PevMd86TSyDiH/VbjiFEg==
X-CSE-MsgGUID: KX4FN+npTtuGSXjUTBcS1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="198213615"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 08:06:29 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 08:06:29 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 08:06:29 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.65) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 08:06:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WjhY6w/DeJ2QtG8UMJSHBd8a6ZmeEbqL4y9xyPm38Vt65oIfuhUpBTuwpQtwNhbSD4bhTemvTRXB3158xkpuqRo2JyJ37Dn2OfUOobuSP+ojjZCvKbADugvYEiFUMlbcTHsUvc0Wbg7zekP0Zmeont4D8R20dC0MdkI/x2N/D5FxnpVbvqSBn3V5Q+8As9l7mZGrMKfIJrVZIVk3xS8Ub1rGHmsnxr+Xmk487TGV4jO3eprQ2a9EtZjZQMVK0SM8kRUVzmAN7pZqKVBzFvmRf/swy42r12G7IBCy6KWGubbNTo5JXX4S8VA8bKEyoCa1gkUScOTH2YDim9zXoY9WIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ieBhQSsJ10FySNJZbYzWWBAK0Y8u2HKOkEy2AwFF3P4=;
 b=OISxPSdv1ExZE6oeDaIiHPNMaFKc4T021/bdgH8P8PAjJiJc9xwzwKBJK6xzliqct4BESMvMPCi9UVbGlTanKGlzYWyLDEf/VFtuCveK/kIQuOXH/lslz+YXXtNYRpbiExKSOr/yJQqwlsGc2/+TJtQUqaiNQLNATwxCSG5wQmX5aC5fniUtbqZQOQzFLzoFYWrcUlvI3vEMGGZoGqKJOQaKp9yijfp82L7gFRJaQbo8J2bPMqnD7cqgGf5+XJ4Fg6LZwkRmpUvCm1l57ZkIT5MvjAOEkzcO81eqrDCEc+K/bMNTTivDQCLj6nAmKikEpqhu4jPhdcGZimmE0NR07A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 CY8PR11MB6913.namprd11.prod.outlook.com (2603:10b6:930:5b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.12; Thu, 27 Nov 2025 16:06:26 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 16:06:26 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "brauner@kernel.org" <brauner@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Subject: RE: REGRESSION on drm-tip
Thread-Topic: REGRESSION on drm-tip
Thread-Index: AQHcX2a0wIOe8SxGHUax1eGbt/7hIrUGrvmwgAABchA=
Date: Thu, 27 Nov 2025 16:06:26 +0000
Message-ID: <DM8PR11MB56550BE7D74FDB72E29B6ECBE0DFA@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
 <DM8PR11MB5655161DB52256F90B1C096CE0DFA@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB5655161DB52256F90B1C096CE0DFA@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|CY8PR11MB6913:EE_
x-ms-office365-filtering-correlation-id: 62d28130-4d1d-49d0-8296-08de2dceeb39
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dC9wZXRHMVVHOWJvdFlyL2hzOW5GWXNMZmlocVZ2czVWOFpIMW96N3lkQXpU?=
 =?utf-8?B?T0tNYlVYTElGbW1WVzZJalNvMEdVdHJiR05ieFdDdjJON3ArdDNhejhaOElH?=
 =?utf-8?B?SEFOd0gybk1RQ3pMVnpIUTV2WlFNR1M3TmlIRUNCeWJCejcyczlTZko5MTBI?=
 =?utf-8?B?cVVmbXcwMk1STmNvN0NXa1FvTGNpV2dXelhOSWdmdzU0YXhTQThlTG1VOVUw?=
 =?utf-8?B?WnN0OGZURzdRUytrZWtEMEh0ZDRQSGxwL3FJMDNzMlUrTlRGeWd1S29xSGJK?=
 =?utf-8?B?NWcwNzBYT2Y3TWJZVitiOStpbnVPNDNmdTd2WU1rR3VzQ3FoZmFVNWNoY1Jh?=
 =?utf-8?B?YnhkaXh4R0ZheUdiOWwzcnN4TU4zUmJ5aG9hRy9wOUdxQ084VVRWWGhZZzFm?=
 =?utf-8?B?TE9jM2NmT3NlZW5GUmFlZXhZdE4wT2NZV253ZEtrbTd1RS9YZFZiYkRRaXVL?=
 =?utf-8?B?Qm8xalVpUnlVQXgvYmxhM0ZuUFNVdGVIbVpGSlE4cFkxQjdYRFJmcGVtaFZ0?=
 =?utf-8?B?Wm9yZG1nVld1MXFyVUhJSFY0bS8yVG52RW9rNHZpQmErbklRQkpQRDcwcTM0?=
 =?utf-8?B?OXZrakFTSW1tNGdER2l4L0cxbFRyTWN4UFdGc21nRy83MXBhWkUvR3dxdWEv?=
 =?utf-8?B?UkFHY3BEb2lYT1lscDdMYjBaZkZPRUc1OXBzeElUQTdWcDhyS2dyODdNSFJH?=
 =?utf-8?B?Si9sb3pzaVRQalZwRWthMDRpWkRaNVVuY2N3NGp2cndZa244RGJ3aGNBM01a?=
 =?utf-8?B?SGVqQ3ZJNHVmMXl4djFPY09jK0VQVzliYXBPblEyWVgzQzVWaldHQklRUUZS?=
 =?utf-8?B?aWlqdmxpMWVsc2JGTXNWVXg0Q0VsV0NCV25Nd0FScGJxYjZ1cEJ4aUtaTEd0?=
 =?utf-8?B?dWdZVWVrQndONEVXejFvNVhRSzF5WE5VaVg2L2l1dzFBc0JiWEN0cVNlWnNF?=
 =?utf-8?B?elpJRTJBamsvZTFHRFBWZlhHUkYybnpHWi9qeEtKVHNrK3JKQ2VPYkRRRzA1?=
 =?utf-8?B?YmxpY0pERlc0dEhwRU1sb21obkYzVFU2YTM0b0R6c281ZWIvNWVWMmR2TUN4?=
 =?utf-8?B?ZU9oSzM3dUZtNzIvWjdqV3BoZGZWdlJkQkRpYnk2bXpCVGljRjNKTkFaZVEv?=
 =?utf-8?B?TFErL1ljRnZzQW9MTitOUGdHN0pnYWlLcENJR3VmOCtlKzRSRE1aWStXRjMw?=
 =?utf-8?B?OVd1NlFJU09pa2lWQlZXQVNRU0VQMXZ5VTVjbE1TQ1Jra203Mi9GVkRNOHU0?=
 =?utf-8?B?aTYyRCs1SnNINDBDaFR5ZExxSmhTaWdWZWdHeXRwZzBzbkJ1L3FFZHZBRnJY?=
 =?utf-8?B?VEY4Q1pLQkxTbG9CdndjK08xaENVWFQ5dDNvanpWTFJNVUdqMTdTRUdGVmVU?=
 =?utf-8?B?Y21iSFFPY3V3WHVaNnROa0c5U2ZQbUVFamtETzVNTjk2ZkthdGZNQjg4cldt?=
 =?utf-8?B?MEZjbG5ZSENNelVGbVlqallQb2FiV0cyZkRobmgwbmdaTWhJNWxTT2Uyb1BR?=
 =?utf-8?B?VENGYUVEbEZ4ZTJzWUtUZkZ3bmNzWjVGRnFncktlQlB0WDhBZUpDSTZETkR2?=
 =?utf-8?B?NVpUa29oQTVOU2xCK242a0FPbm5nWHFNNkhZaHJtWUp1Uk5CVU5ibTV3ZzRh?=
 =?utf-8?B?WDdJSUJiOVNMeUV2d00zUUE4UGdlYWlZc01VRFdSdkw0UnR1SDZIaG81QUMx?=
 =?utf-8?B?aTNpTURreVBsTldUWTY2OHExcWs2dUZlSFU2cEhKYXVOZy9jOVJsMFlzVktJ?=
 =?utf-8?B?YTR5L1NHZm8rYUdUKzRTenFXMEhBV2JzWm0rWU15cUNKV09oWkJRSlZCbXgx?=
 =?utf-8?B?T1crOE1UaXdWZ1ZSWXV0OFBYaTNKeGt1ZDA0eDUrdy8zeGQwY3ljbjhhL0lt?=
 =?utf-8?B?aDRHTDRnb1NvakpjYkNkS3kzYjZxMVpCLzQ5dXdBSUdkVVBJWmlxdjBFZGFw?=
 =?utf-8?B?MUI1b2NHMmRUdW5qekpWUW5XbW9JeDJjV0E4Vkh1cXZGdnlIRENqL1UrOVBF?=
 =?utf-8?B?SHRLZTJLTDRQZ0tBWG9vS2M2WWQwZUJvR3ZhZ2Uxei85aVlnS1pwdlJiK2pB?=
 =?utf-8?B?U3J6UVR2RHBKSUs3WlZqR28vQUxCYXBpM2lOQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Lyt5R3Q5eU00Snd1Y0xnemN5UGdDOE9XMHA5Rm10clBybEtsTzFrZVpKN2lM?=
 =?utf-8?B?OGhlMVpQUW9MamNXSmJHaFQ4eUZmMWNvSjh4bDlLUzdiRjdzaDROSkxEZWd4?=
 =?utf-8?B?RjBrUnRJZHRYdmVnRjM4R3plSUJGRnZ4S283MHVNQXNBWVJZbXlvTzU4Tk1T?=
 =?utf-8?B?WE0zcGxyRGpXcllaem5lVVVzSkVDd3k4NGNaK2JpR09GWFRpL0M0NE8xS0tk?=
 =?utf-8?B?eStiQ0VKNVZEWlBrcDFiMHYzczJsTzY5RlRVSXVnTXJ4WWpRMVpUd0JIbUpr?=
 =?utf-8?B?UzAyQkNCcWk5UGVWK01iYm1FVHdodjdZOFpWTzhNZjRiOGxiWitNczB0a0V1?=
 =?utf-8?B?aEd2aHdFUFBFN1lQY2FUMlpCUmtiaWNqVzlrQmhyemc4MjgzclE4aXMzZTRs?=
 =?utf-8?B?dG5CQjhDRDkyWmlJbWRWSjgyYmJOQ1N3SE5sRkUvZUc0WG00anJpVlZKSnF4?=
 =?utf-8?B?NjVYc1R2MmJwcFo4R2NYdXowb0JwN2NoeE9xRi9MVC9OZDdMMTB2bEVKNUZo?=
 =?utf-8?B?V3ozYnZVcWhKdGlWaFVWa25YdG9qcUE3eTJVWFgyRTRsdUgzcFRERkJkYUJv?=
 =?utf-8?B?UXVkVk1aUjhESTM0cXVTWHV6bTRyNkNpVHF0S3BOZHdabFovY1FPTmxrdk81?=
 =?utf-8?B?WlZZN2NMenJPRnJQdUx6VDU3bWZ4Qk1yZ0hXOWhPcHBpMWMxYTM5ekVwbmVC?=
 =?utf-8?B?U2Uza3ZmM1VXcEZ6QitjalY1MkVlR3NRZHVPK0Y4bVd6Znk3N3RTOWJEWU5W?=
 =?utf-8?B?QkNjNDRlNEZ4a2ZueDdwREVwMm5qMlZjSFhNUFAzd2FhYnd2dkgyK2ZRdHBH?=
 =?utf-8?B?Z1FCRldhMjVZT1I2YzlzTUZPaGRlT2pwSkJCdlJYZzdUTDRRUk9MYjV5ajdl?=
 =?utf-8?B?RFdZRTRCMW5qekpKZ0g3NnY5NE9oeTR5NVB1bitiY0lVWm9UQmNOQnFRREkw?=
 =?utf-8?B?YmdIbHF2QWQ3OHh1WmVUUFJhbEI4MldieUh0aWJ4ZGN5OElSL25NcCtDbTh4?=
 =?utf-8?B?QWlvbUFWdTRMUU04clh0Q1dVREVocFlkZWVzaU94ajdmb2VuWSs2WnFwWWxL?=
 =?utf-8?B?cUozZkdUTEtnK2tmSDlQNkxZbThmY280R3h1d0xQbGZhS0pLZitzSlRaZkx0?=
 =?utf-8?B?NG1zVU5JTzJiNUcxZzhLSG1KcVd4R1ZOQ2NiZHpZR3ZLelRJcGFiR2x5TFE2?=
 =?utf-8?B?K3hQZ0o4MG9FVkV4MjVreWhBYWVIRXgwZ1dsV2habWpBMjBabXp3STFwRGJl?=
 =?utf-8?B?a3U1OEFVOTdscnh0L1p6Q3A5aDAzMHFKKzgrRi8zTGpHSWpmMWtwZEw5R1VS?=
 =?utf-8?B?bktDSEJoZG1xeVZoVVp4TGJ0T0lMZjVvK2VCandNNzFEcUlvSDlhQnJ0WTlO?=
 =?utf-8?B?THliaFVmUC9XYnpLNHhRaExoWFBKMHp4TGVjVXBhVlhkRkR4OVc3QUlnT2xZ?=
 =?utf-8?B?VWk2QkhGeVNzUkhtcnp4NVlnOU1FdkFpVmFybWlzRHgzV09IaEtweTVjR05W?=
 =?utf-8?B?c3BDYjcyQksrQ2VoNnFmaTBBeDZScE1DQktlb1Nsd0pjcnBsZnU3M05VY0do?=
 =?utf-8?B?UmdIcmcvVUtFZVV5WDlmNnRMR0lUL2xhcFpuN0JqdFh3d3d2VktWSnI3UkVu?=
 =?utf-8?B?WkFuQzM0SG5qNzJ3dld2TU1GY0tMT1F2a2szV2szNnl4bWZVN1FyRDF4dHJw?=
 =?utf-8?B?SThUS3ptejh3SVIycHR6bjNhR21DN0VXK3Y0Z0hCcUt3eTRzSWZ6Ykc4eWVU?=
 =?utf-8?B?d2NYUnIzbTU4VFZ0MmllVDBSbXNycVJpQ2VOV0JoYi9HUlNOWEkwQm94UFAr?=
 =?utf-8?B?K29USFZ5ckx0ZGZFTWRaZmhuRW9MMy92ZFpUZ0pwcHlqZzFaVERDdGkvVE90?=
 =?utf-8?B?MzVPbVZEUTlrbWNqNXdjb3pVbk9TUHNLbVAwSndheFJ2dDRlbDJwYjJURllk?=
 =?utf-8?B?UnFxRVZxMG10QklKempKTUtwcUxONFNzSzhsZzVZKzhJVGJHRGhBeVJ1RkUx?=
 =?utf-8?B?eUVUdFR6aWxjWU5oU1ZqM0JNNm1LTVJjT1ZjRVZsK1QxYmZ2a29GajB4WTRr?=
 =?utf-8?B?NzFJYWFONGJxVHNHQnpSMGlwV3pHS2VBclUrZGFaMVMxWjUrZm9iNHkxWXRG?=
 =?utf-8?Q?fTtoKnPpzYuxD78B+O7LcDdJL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62d28130-4d1d-49d0-8296-08de2dceeb39
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2025 16:06:26.5581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uf2ZNVACUXlBPrTcoiWvgRAoZVOkKD2DIPbg2d4PTuJVi36Va4ZZgUPDdQ268m9E8MIjjL6sc4/EueLGr/TaDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6913
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

SGksIA0KQWRkIGFkZGl0aW9uIGJlbG93LiANCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiBGcm9tOiBTYWFyaW5lbiwgSmFuaQ0KPiBTZW50OiBUaHVyc2RheSwgMjcgTm92ZW1iZXIg
MjAyNSAxOC4wMg0KPiBUbzogQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFy
LmJvcmFoQGludGVsLmNvbT47DQo+IGJyYXVuZXJAa2VybmVsLm9yZw0KPiBDYzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBL
dXJtaSwgU3VyZXNoDQo+IEt1bWFyIDxTdXJlc2guS3VtYXIuS3VybWlAaW50ZWwuY29tPjsgRGUg
TWFyY2hpLCBMdWNhcw0KPiA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBS
RTogUkVHUkVTU0lPTiBvbiBkcm0tdGlwDQo+IA0KPiBIaSwNCj4gDQo+ID4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxjaGFpdGFu
eWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFRodXJzZGF5LCAyNyBOb3ZlbWJl
ciAyMDI1IDguMjYNCj4gPiBUbzogYnJhdW5lckBrZXJuZWwub3JnDQo+ID4gQ2M6IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsN
Cj4gPiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+OyBLdXJtaSwgU3Vy
ZXNoIEt1bWFyDQo+ID4gPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+OyBEZSBNYXJjaGks
IEx1Y2FzDQo+ID4gPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBSRUdS
RVNTSU9OIG9uIGRybS10aXANCj4gPg0KPiA+IEhlbGxvIENocmlzdGlhbiwNCj4gPg0KPiA+IFRo
aXMgaXMgQ2hhaXRhbnlhIChhZ2FpbiEpLg0KPiA+DQo+ID4gVGhpcyBtYWlsIGlzIHJlZ2FyZGlu
ZyBhbm90aGVyIHJlZ3Jlc3Npb24gd2UgYXJlIHNlZWluZyBpbiBvdXIgQ0kNCj4gPiBydW5zWzFd
IG9uIGRybS0gdGlwICh3aXRoIGJvdGggeGUgYW5kIGk5MTUpLg0KPiA+DQo+ID4gYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYA0KPiA+IGBgYGBgYGBgYGBgIDw0PiBbMTU3LjY4NzY0NF0gLS0tLS0tLS0tLS0tWyBjdXQg
aGVyZSBdLS0tLS0tLS0tLS0tIDw0Pg0KPiA+IFsxNTcuNjg3NzY4XSBXQVJOSU5HOg0KPiA+IENQ
VTogNSBQSUQ6IDIyNzcgYXQga2VybmVsL2ZyZWV6ZXIuYzoxMzkNCj4gPiBfX3NldF90YXNrX2Zy
b3plbisweDdmLzB4YjANCj4gPiAuLi4NCj4gPiA8ND4gWzE1Ny42ODc5MjNdIFBLUlU6IDU1NTU1
NTU0DQo+ID4gPDQ+IFsxNTcuNjg3OTI0XSBDYWxsIFRyYWNlOg0KPiA+IDw0PiBbMTU3LjY4Nzky
NV0gIDxUQVNLPg0KPiA+IDw0PiBbMTU3LjY4NzkyNl0gID8gX19wZnhfX19zZXRfdGFza19mcm96
ZW4rMHgxMC8weDEwIDw0PiBbMTU3LjY4NzkyOV0NCj4gPiB0YXNrX2NhbGxfZnVuYysweDZkLzB4
MTIwIDw0PiBbMTU3LjY4NzkzMl0gID8NCj4gPiBjZ3JvdXBfZnJlZXppbmcrMHg4OS8weDIwMCA8
ND4gWzE1Ny42ODc5MzddICBmcmVlemVfdGFzaysweDk4LzB4MTAwDQo+ID4gPDQ+IFsxNTcuNjg3
OTQwXQ0KPiA+IHRyeV90b19mcmVlemVfdGFza3MrMHhkMi8weDQ0MCA8ND4gWzE1Ny42ODc5NDZd
DQo+ID4gZnJlZXplX3Byb2Nlc3NlcysweDU2LzB4ZDAgPDQ+IFsxNTcuNjg3OTQ4XSAgaGliZXJu
YXRlKzB4MTI5LzB4NGEwIDw0Pg0KPiA+IFsxNTcuNjg3OTUxXSAgc3RhdGVfc3RvcmUrMHhkMy8w
eGUwIDw0PiBbMTU3LjY4Nzk1NF0NCj4gPiBrb2JqX2F0dHJfc3RvcmUrMHgxMi8weDQwIDw0PiBb
MTU3LjY4Nzk1OV0gIHN5c2ZzX2tmX3dyaXRlKzB4NGQvMHg4MA0KPiA+IDw0PiBbMTU3LjY4Nzk2
M10gIGtlcm5mc19mb3Bfd3JpdGVfaXRlcisweDE4OC8weDI0MCA8ND4gWzE1Ny42ODc5NjddDQo+
ID4gdmZzX3dyaXRlKzB4MjgzLzB4NTQwIDw0PiBbMTU3LjY4Nzk2OV0gID8NCj4gPiBmcmVlX3Rv
X3BhcnRpYWxfbGlzdCsweDQ2ZC8weDY0MCA8ND4gWzE1Ny42ODc5NzZdDQo+ID4ga3N5c193cml0
ZSsweDZmLzB4ZjAgPDQ+IFsxNTcuNjg3OTgwXQ0KPiA+IF9feDY0X3N5c193cml0ZSsweDE5LzB4
MzAgPDQ+IFsxNTcuNjg3OTgyXSAgeDY0X3N5c19jYWxsKzB4NzkvMHgyNmEwDQo+ID4gPDQ+IFsx
NTcuNjg3OTg0XSAgZG9fc3lzY2FsbF82NCsweDkzLzB4ZDYwIDw0PiBbMTU3LjY4Nzk4N10gID8N
Cj4gPiBwdXRuYW1lKzB4NjUvMHg5MCA8ND4gWzE1Ny42ODc5OTBdICA/IGttZW1fY2FjaGVfZnJl
ZSsweDU1My8weDY4MCA8ND4NCj4gPiBbMTU3LjY4Nzk5NV0gID8gcHV0bmFtZSsweDY1LzB4OTAg
PDQ+IFsxNTcuNjg3OTk3XSAgPw0KPiA+IHB1dG5hbWUrMHg2NS8weDkwIDw0PiBbMTU3LjY4Nzk5
OV0gID8gZG9fc3lzX29wZW5hdDIrMHg4Yi8weGQwIDw0Pg0KPiBbMTU3LjY4ODAwM10gID8NCj4g
PiBfX3g2NF9zeXNfb3BlbmF0KzB4NTQvMHhhMCA8ND4gWzE1Ny42ODgwMDddICA/DQo+ID4gZG9f
c3lzY2FsbF82NCsweDFiNy8weGQ2MCA8ND4gWzE1Ny42ODgwMDldICA/IF9fZnB1dCsweDFiZi8w
eDJmMCA8ND4NCj4gWzE1Ny42ODgwMTJdICA/DQo+ID4gZnB1dF9jbG9zZV9zeW5jKzB4M2QvMHhh
MCA8ND4gWzE1Ny42ODgwMTVdICA/DQo+ID4gX194NjRfc3lzX2Nsb3NlKzB4M2UvMHg5MCA8ND4g
WzE1Ny42ODgwMTddICA/IGRvX3N5c2NhbGxfNjQrMHgxYjcvMHhkNjANCj4gPDQ+IFsxNTcuNjg4
MDE5XSAgPw0KPiA+IHB1dG5hbWUrMHg2NS8weDkwIDw0PiBbMTU3LjY4ODAyMV0gID8gcHV0bmFt
ZSsweDY1LzB4OTAgPDQ+DQo+ID4gcHV0bmFtZStbMTU3LjY4ODAyM10NCj4gPiA/IGRvX3N5c19v
cGVuYXQyKzB4OGIvMHhkMCA8ND4gWzE1Ny42ODgwMjRdICA/IF9fZnB1dCsweDFiZi8weDJmMCA8
ND4NCj4gPiBbMTU3LjY4ODAyOF0gID8gX194NjRfc3lzX29wZW5hdCsweDU0LzB4YTAgPDQ+IFsx
NTcuNjg4MDMyXSAgPw0KPiA+IGRvX3N5c2NhbGxfNjQrMHgxYjcvMHhkNjAgPDQ+IFsxNTcuNjg4
MDM0XSAgPw0KPiA+IGRvX3N5c2NhbGxfNjQrMHgxYjcvMHhkNjAgPDQ+IFsxNTcuNjg4MDM2XSAg
PyBpcnFlbnRyeV9leGl0KzB4NzcvMHhiMCA8ND4NCj4gWzE1Ny42ODgwMzhdICA/DQo+ID4gZXhj
X3BhZ2VfZmF1bHQrMHhiZC8weDJjMCA8ND4gWzE1Ny42ODgwNDJdDQo+ID4gZW50cnlfU1lTQ0FM
TF82NF9hZnRlcl9od2ZyYW1lKzB4NzYvMHg3ZQ0KPiA+IDw0PiBbMTU3LjY4ODA0NF0gUklQOiAw
MDMzOjB4NzI1MjNjOTFjNTc0DQo+ID4gYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYA0KPiA+IGBgYGBgYGBgYGBgDQo+
ID4gRGV0YWlscyBsb2cgY2FuIGJlIGZvdW5kIGluIFsyXS4NCj4gPg0KPiA+IEFmdGVyIGJpc2Vj
dGluZyB0aGUgdHJlZSwgdGhlIGZvbGxvd2luZyBwYXRjaCBbM10gc2VlbXMgdG8gYmUgdGhlDQo+
ID4gZmlyc3QgImJhZCIgY29tbWl0DQo+ID4NCj4gPiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgDQo+ID4gYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gPiBjb21taXQgYTNmOGY4NjYyNzcxMjg1
NTExYWUyNmM0YzhkM2JhMWNkMjIxNTliOQ0KPiA+IEF1dGhvcjogQ2hyaXN0aWFuIEJyYXVuZXIg
PGJyYXVuZXJAa2VybmVsLm9yZz4NCj4gPiBEYXRlOiAgIFdlZCBOb3YgNSAxNDozOTo0NSAyMDI1
ICswMTAwDQo+ID4NCj4gPiAgICAgIHBvd2VyOiBhbHdheXMgZnJlZXplIGVmaXZhcmZzDQo+ID4g
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYA0KPiA+IGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgDQo+
ID4NCj4gPiBXZSBhbHNvIHZlcmlmaWVkIHRoYXQgaWYgd2UgcmV2ZXJ0IHRoZSBwYXRjaCB0aGUg
aXNzdWUgaXMgbm90IHNlZW4uDQo+IA0KPiBZZXMsIHJldmVydCB3b3JrcyBhcyB5b3Ugc2VlIGZy
b20gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3Jr
XzE1ODE2M3YyL2luZGV4Lmh0bWw/dGVzdGZpbHRlcj1zdXNwZW5kDQpNaXNzZWQsIHNhbWUgZm9y
IFhlIGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2ludGVsLXhlL3hlLXB3LTE1ODE2
MnYxL2luZGV4Lmh0bWw/dGVzdGZpbHRlcj1zdXNwZW5kIA0KDQpCciwNCkphbmkNCg0KPiBGb3Ig
YW55IGZpeCwgcG9zdCBpdCB0byBpbnRlbC1nZnggYW5kIHhlIGFuZCB5b3Ugc2hvdWxkIGdldCBy
ZXN1bHRzIChpZiBCQVQgcGFzc2VzKQ0KPiA+DQo+ID4gQ291bGQgeW91IHBsZWFzZSBjaGVjayB3
aHkgdGhlIHBhdGNoIGNhdXNlcyB0aGlzIHJlZ3Jlc3Npb24gYW5kIHByb3ZpZGUgYSBmaXggaWYN
Cj4gbmVjZXNzYXJ5Pw0KPiA+DQo+ID4gVGhhbmsgeW91Lg0KPiA+DQo+ID4gUmVnYXJkcw0KPiA+
DQo+ID4gQ2hhaXRhbnlhDQo+ID4NCj4gPiBbMV0NCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL2luZGV4Lmh0bWw/dGVzdGZpbHRlcj1zdXNwZW5kDQo+ID4gWzJd
DQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTc1
OTUvc2hhcmQtbXRscC02L2lndA0KPiA+IEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmlj
ZXMuaHRtbA0KPiA+IFszXSBodHRwczovL2dpdGxhYi5jb20vZnJlZWRlc2t0b3AtbWlycm9yL2Ry
bS10aXAvLT4NCj4gPiAvY29tbWl0L2EzZjhmODY2Mjc3MTI4NTUxMWFlMjZjNGM4ZDNiYTFjZDIy
MTU5YjkNCg==
