Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C33C9A747
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:32:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F20B610E54B;
	Tue,  2 Dec 2025 07:32:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VC20Y6R1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18BC10E15A;
 Tue,  2 Dec 2025 07:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764660738; x=1796196738;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dqbLzJo+v/2gpoG0XO7gmNL4UCr7DzvNmdUOkNQOXak=;
 b=VC20Y6R1GXlreeShxBIKpwBdNZXi5PATpwBLKWtd4TGltKjsro473SQJ
 /PGeysbO2GWuvgQCy0pbEx72F7j3sXfpaa5DkEMSGwf/GS6uwLexX+Taz
 KId0I6AbrNgoYcP1xbNtsnsmpBZO//ZI4QbO0Da3vW8BVp7Z9DifU6soP
 RkO/U+bWxZ7bssTWQJ6RfeU60RnHqESYLOL/6/ZKTecDxQH1nY0jlUDQX
 DiJH5LKZqVGutVFqYKq8GEerVLKuPFK1A9OD3AAJ1vnIRTWSGVspmO//y
 6RpeJj64sciYzD8gTa39Wex3ePLm4BCIqe+gVy9e7psWA3hvVLMqBzn9K g==;
X-CSE-ConnectionGUID: NczMu+dXRdOwKB5uXy7ZJA==
X-CSE-MsgGUID: P+fCWoUfTZKSxwkFi2yUOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="54170118"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="54170118"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:32:17 -0800
X-CSE-ConnectionGUID: 5cZKTJU1Td+ZYp3gfBWtsw==
X-CSE-MsgGUID: i29neepwQUCf29YeMnbE6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="193596772"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:32:17 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 23:32:16 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 23:32:16 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.62) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 23:32:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ATd3oy/ZaCLNqWJohQxuzolD/1mEITjAqya6ZVV/4aCQnqgci85UF3zKxGVJNmtvWHcxG82xfUxa5lIsi5Mss+Qrgp5wzJCjav08HB28IFTOThAy2Bme1ZnePqvKZ9ORBTH+71XH+3yBaPBLUAFWGWvyCN4j5rJqtRC0izw1xvAElFIcyVlgnXCFKIfUTJbXMOa+pS1yPyU8prpazfr6JoxUo3uoU6Tlfxt3Qz3nQJc14oeVbg6vsyvuKLAyPRo3XjcfJ9/qOwhfM1rN5fllUi0RTFNnreEzzuPK/4EzeIp9mprVtIIyiri1FZNFWq0QYjjXqNKX4SeHiB13i5PR9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dqbLzJo+v/2gpoG0XO7gmNL4UCr7DzvNmdUOkNQOXak=;
 b=bfIRHHcTuLeg0v1V9OrJCLdRE4AufbLuvssAq0vsBN3R6zNvhzAwkI2+2wdWKjmFpaHWUm1YoRwuw1XPFBX+SUTki/yDseegB26asonouqg8UYsiPAkNx7j8KOl8Q6djrR0her61Y10BgRJOP1e00ykPLOtC7QJfYNtf2GFrkqszuRLewDtzV57PJuc0cewawH+Q9kqXeGLR+haJ5qKsb+qiBRIUwBxgCDNCYGi0Px3WFjnh7HIyCmjF7izoi7HaEjE0wCJdq3t9EpjbMpExoUPcwjzxj0nNzGgxjEX2dEYUenYNtJs8dgctL5GMyh9Chr1PIE7lPgfz9/nKckYKSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN0PR11MB6231.namprd11.prod.outlook.com (2603:10b6:208:3c4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 07:32:14 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.9388.003; Tue, 2 Dec 2025
 07:32:14 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v9 07/17] drm/i915/vrr: Add compute config for DC Balance
 params
Thread-Topic: [PATCH v9 07/17] drm/i915/vrr: Add compute config for DC Balance
 params
Thread-Index: AQHcX358WTGJ7bw0QkC3zMjjkOhorrUIEaYAgAAFrACABeTb4A==
Date: Tue, 2 Dec 2025 07:32:14 +0000
Message-ID: <IA1PR11MB6348801201655E9868D16516B2D8A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-8-mitulkumar.ajitkumar.golani@intel.com>
 <15ccb5b6-2e28-4b93-a907-0eb314cb5a1f@intel.com>
 <e89f8d2c-c40a-4fa1-a9c5-e458d6d8c806@intel.com>
In-Reply-To: <e89f8d2c-c40a-4fa1-a9c5-e458d6d8c806@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN0PR11MB6231:EE_
x-ms-office365-filtering-correlation-id: d5cb2c1b-3d0a-442e-ee19-08de3174ea0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NFo5TkdoWjh5ZCtUQ2hpQWxDOHBjYUIwWXJld1hmemYyRXk1Q043TXJKbVNk?=
 =?utf-8?B?ZFRDOVJsY0l3eUszaEN0RmhoL2U4enR2ZWF6cU94ak1JNDNod2wzRGE4MlFo?=
 =?utf-8?B?VjNrdFk5VFR1SE43cnJYQk5wb3lIN2VLeVFZUFdTWVJYRGhMbmRYdURjai91?=
 =?utf-8?B?Y0FzNHk4Uk81d2trVnI5V0h3ZzFZUlMrOWdQRkljKzN2VE5Hcm93Q3IzVGx4?=
 =?utf-8?B?Tld6bzFOTXhDcC9DRit2dmUrU2NGRlppUGQ3ZkRyaTBsMEFaR2RYc1NxckFI?=
 =?utf-8?B?dG1MNHFzY3M1RXVYU3JEUDMzWWFEZE5GZ0ZiejMwZXgzeWJzZzJWbGEyQldP?=
 =?utf-8?B?dllmMDZIc1U4TldBZzJoWGs1VW4xZUpTajE2bkV0MkNJYjVBbERkWUp3V0lo?=
 =?utf-8?B?RGdkMGVXVGtPbDFVWVM4Q1BIVExzazBvSzhZdDJTZ2pXWXdjMFp2REFZTDR5?=
 =?utf-8?B?RjV3aXRhZk9aNWhKd1ZnN0JWZWxqeE9QN29SNUFSK3ArQVh0S3hpLzlsbFV5?=
 =?utf-8?B?NnRzV0g5elRjOFRIbVBCUEVDVnV1NFNmdEdjMGZld0NucllycU9MTHVDOHFK?=
 =?utf-8?B?amdaYlZpUWdYNWJjdktXYnhxTCtTQ3ljTjRFdU5PenpncGhGejVDNE5Kam5W?=
 =?utf-8?B?VmtXTWhJTXNpc0duRk1WUjJ6Y0UyWXRpUldBaHhSRFlUMHdKOVhIdkl4a0pz?=
 =?utf-8?B?dHZDQnozYXNWVU5tWWg0RGNsRjY1TmI4dWtQQmVSYlIrYWNIY3pweEVvUFdL?=
 =?utf-8?B?WE5rNlVRMklHWDc3bmQzaHo1Uko5b1lqS2VvOUpwVm4xTmVnUEE4VC82NGJX?=
 =?utf-8?B?cVFLN0ljVkE2RERLYnRzN1FvM3ZlY2JiZHI3Zkcxc21PU1dKQUlveHNtVkJX?=
 =?utf-8?B?OGRpeG5ySnNjOFBXYzRrUElLMC9NOWpvTzFKZHZDc0VSWTE5YmdQY2QwQUVY?=
 =?utf-8?B?T1QrMWx1ZHVDRjF5NFZSUzhocGZZRkhRdTZiZkJUdGVpeFFFUnBIWVdIMUdM?=
 =?utf-8?B?MFFxMHZjSWd0eTVnaFVjaEthQ2orMTF5bmtWZkc0bnNsTEFrakhpQnRXcHNW?=
 =?utf-8?B?czNxQjREcndSL3Y2K093c3hVODVxci9CZ2RqZ1J2dWFaV1FXYm1NSHRuSFZC?=
 =?utf-8?B?WWdjRkd2b2F5WEdRNWZCeVNweGVISGJpeGY0YnlpNWo1blNTTXB0dis3VVRt?=
 =?utf-8?B?THpkK0JMZjhNdVRJK3NNQmF0Z2ZoZzFBejdDUzhvRThiMGUxWUdWMjFlV1pv?=
 =?utf-8?B?dWNuenlCTU5UM0lRcWtramVXUUlObUhiVWhyUERMeEc3S2RvZFpZb2xNVGg4?=
 =?utf-8?B?WmxMd2IvR2w4RmVqMmJoSHo3MWozbmJ6Tnd6SWk0bVE3UFhuZ093bHZGUklK?=
 =?utf-8?B?eTY0bmdyZEI2OXd5YStIYTNvTXpRQzgrOG54QXdxa2phdlpSSHR6SHBWZDV5?=
 =?utf-8?B?NVEwMzA0QThVVDEralVQWWRXb1BJUXlLUWJhWDhQNitSTzNnU0M1WVdQTHZY?=
 =?utf-8?B?MEQ3RkdLNkNKOElrSDU4eGprM2FpQXdZN0phb3hBNVF2dTdoM1FMOHRuNzB1?=
 =?utf-8?B?cEdxN3hBb1lqT1ZNT2FnR1lPcXZWOS9hM0FSZFBiRTU4eHEyeGxibTdYbjF1?=
 =?utf-8?B?cEJnRUl5WkxucHJiZ2M3L2FORTR0WVM5ekZnMkNFcDUrRkdoQmhCbzl3RG5W?=
 =?utf-8?B?c29JdjNtNU9KUE1xaFMzRHNlZzBrSWlzRmxjSmJPZWE0QmRNSmxQaklScjZH?=
 =?utf-8?B?QzhlS0JVajdQSVRabFA5VGdnMWtXL3loMmd2OVBPd25OZjhIcE9FMGFDQ2xM?=
 =?utf-8?B?UUdoOVZMcVBWNXdBZ0RkeGlUQUJPaE1ncjkyNHo3aFk5V0FpTHlsYWF5U1J2?=
 =?utf-8?B?M1BYWDdqYjE3VEdOQzVjaUxCU00xdk5uanEzaWFybXJGeVdkSE56QkZ4dFBN?=
 =?utf-8?B?OTJqMjVleHZvVGNaRjFqKzlHNmhNaE5kZWxNaFVkMmFkdndFNE5ZcHlTOE40?=
 =?utf-8?B?S0NwQytNcmNBcTlWM2p0LzZ0NkRkdGdObmExUmI3ZklJWUhrdytLdEg0bHVx?=
 =?utf-8?Q?8x5O4g?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2hPTUZSYmZuMTFodzRqdVZBaFBNVjRDWTlOd2ZQSEloZzJ4SHZWalBCQmc3?=
 =?utf-8?B?c3JiSExsTzduemtGWGxrNEg2OWxrbGkrd01Bdmk3YncyT2ZVNmJINjBuQXF6?=
 =?utf-8?B?S0VJZHRFd1lzSkpYa0dQcVUrUW1LYjcrV0FnMXBOU1FVeFhiNkNmbGR0cmsr?=
 =?utf-8?B?YUc2bUIvcXdOdW1QcVBIcEJvWlpVejVvOVFYSHRzUmE5TUpySGNNQVlUZEFs?=
 =?utf-8?B?M1crZkhEeEU4NXV6SWk4bDgrR1NLdlhmeCt6WWFmTStMbDVGUHRUb1J1RS9a?=
 =?utf-8?B?cGxObG4xOCtRd0hTd21SZGgxY3dSYWt2RGloRG1UK1gveHVPeDlqaXNZMTF2?=
 =?utf-8?B?U05obnFjUmN1SDd6TUNFdXJaMUZGU0IzeWhzalJsVEpDd1NweHo3WVFNZnhW?=
 =?utf-8?B?aDJPaFA1enA5WFZGb2ZZL09FYTRzb0xBeUJZMWZ1cTJRLzdoK0xWeGhrejJU?=
 =?utf-8?B?MU5wN05JUk9CbXBLbk1BUFMxeTdiR2x6ZDNTSDNXeW9BUFZZV3VSaXZxaG1H?=
 =?utf-8?B?QzBhQTVzdm82dVBMVGx5dW40aE1TL3RiU2d0UkJkYkF1WVlQM1pvSFh5dUtD?=
 =?utf-8?B?ckUvM3Z6eVFGQ2J0UFVYZTJoUjVraUxwLzlVS1FnbHZzaGpLM0FESURnSjJQ?=
 =?utf-8?B?bmZsWXZzSTNncklBa0pOT2FRMERLazlQWFlOcUVjQitRRUNjR0xuMmRUMzc3?=
 =?utf-8?B?cWxwZWlNMk4xVDhtNDZKMFFHVnJxYVgvR2lRSG1STFpRVGc3YkZQVXBjQVIr?=
 =?utf-8?B?UUM3eExYdzQxY2FmTEJFaFp0VmpvQ3N0TnpCZnM1WnVwQmJIWFdaZ1AvK2VP?=
 =?utf-8?B?NFg5THZVTFpEamRuTitHbkdRZU1aeFROUWNZT2dmNTd0ZldGdXVQME0wODV6?=
 =?utf-8?B?bm1qaDcvakQ1d2s5eFV1ZjA2eHRvVGs2VTA3QTNOQTNUOVR6UlEvc0E2RDVI?=
 =?utf-8?B?K0hnVkhkN3pNVTZGV3g2RktPTzF5MzhVWnZLUkhPYnpVd2lYRnI4TFlhWTN2?=
 =?utf-8?B?d2tOeGxFSXVuUEt6UFhhdlY5UW15MjhWdmhKcXpUbTZvb3hjdlgwMjVlSjJS?=
 =?utf-8?B?Y3M1NU9mUi9TTGRRR0p3a3lMbDFjamRoY0I5SWF2Z1NydzVrVytod3Uyb3VU?=
 =?utf-8?B?MUVzbU5vYWovd0hVNnVQd1lVKzhRdEJ6V0kzYS9zcmNuSTU4cHdZRHloZFll?=
 =?utf-8?B?ZDQ1SkhNYmh4a0xEWEpCTG5YWHEzR0Evbm5rSUdUQlhqVmVTRm5oREprVXBI?=
 =?utf-8?B?cXZQMEVHVDhqMDFFeng3VGkwaTBMUXRKYlpJL2l5eXdTS3I1dmNFbUc2NlZG?=
 =?utf-8?B?a2p3ZGw4V3pkYnJDckovWU5tcDdoTSttN3hURllEdGhPclhDOWdkbEVZR3BK?=
 =?utf-8?B?ZnRnQ0hxWTVZQ1FKaWNTeWJ0MlFnbzNiVVpLMEJUd0plZytFRzI0VkQ1ZVU3?=
 =?utf-8?B?SjFsR1h0Q2pCck1oWGpnZ2E1ODh0RXQzQ0sxdHJVbFd3UUZxYVVGcERseWFt?=
 =?utf-8?B?R3N2bnJlOWhGVmh0QjI0YXlaRk9LNGIrN3FVSDZNcEs2WDFFVEFQRFU4OGV1?=
 =?utf-8?B?TXJZb1Nid0I1Nkt3aWhsSXJueUlPK3Ewdis3SnovYzZrRXgzUFFtTGVQQkx6?=
 =?utf-8?B?UDlSc1VVbEZvSW1zQTFjZHRGRlhMNzg0VUE1ZmoxRVRhNGRjL0JpSXZTak1F?=
 =?utf-8?B?RkNLUFdRREh1cXRzSWRDR1pLNXJjaStyL1k0NXdDbldzVU9ndzFDVkJyeEtP?=
 =?utf-8?B?WVhSdFJBT0JpUGVYRDl3TmJLWm1FcjVNNTJBbzVTZndUSTVSdURzdFJ6b3hQ?=
 =?utf-8?B?d2I2YXZGdmtpNUREb3RwcGlPNlEzdlU2NjFDR3FVbVg3SFY0RFhhRUdZOTJB?=
 =?utf-8?B?R0VQWDE3YlZLZXRqR1FUL3VjYTVGd0R0WlZJYmpvZFVXRHZ6Mk1BdkdFYmF6?=
 =?utf-8?B?YXV3SUdVeGRhbS84bUd2ODNIcWdQWTJNSHJXR0lMaVZmNGZlZmtJaVovS0Ru?=
 =?utf-8?B?RklON01oVzhHSXdUanh3blUxa1FYbWRPcjNFOWNJclIrVUdza0dDVnc3RXA4?=
 =?utf-8?B?MWJvNUtoMGx4UU85STVSNzVMdkN2ZEpSMmxoYVpFQXA4R0pvT3ZCb21VenNk?=
 =?utf-8?B?UHRnd3ZvWVhFdjREcFpmbFZuamJXTS9IS1BIdUZDUXcxNTB3SFprc1VHTnYy?=
 =?utf-8?Q?m/JV1OUo0Guki5KvAW5C1C4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5cb2c1b-3d0a-442e-ee19-08de3174ea0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2025 07:32:14.5455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GlwycSJXpKPer6R2QJVtUYpXvrffH6assz3BLAAsWXzoJZ+vafCf9PBIMd2U56S0K8ePQJJOPr1ZzN8MKmxv0ZKZcSfIWFeHgWt6YQJun2P3jgVI1x4Oy9/kt+347dwQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6231
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
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiAyOCBOb3ZlbWJlciAyMDI1
IDE5OjAwDQo+IFRvOiBHb2xhbmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1bWFyLmFq
aXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyB2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY5IDA3LzE3XSBkcm0vaTkx
NS92cnI6IEFkZCBjb21wdXRlIGNvbmZpZyBmb3IgREMNCj4gQmFsYW5jZSBwYXJhbXMNCj4gDQo+
IA0KPiBPbiAxMS8yOC8yMDI1IDY6NDAgUE0sIE5hdXRpeWFsLCBBbmtpdCBLIHdyb3RlOg0KPiA+
DQo+ID4gT24gMTEvMjcvMjAyNSAyOjQ2IFBNLCBNaXR1bCBHb2xhbmkgd3JvdGU6DQo+ID4+IENv
bXB1dGUgREMgQmFsYW5jZSBwYXJhbWV0ZXJzIGFuZCB0dW5hYmxlIHBhcmFtcyBiYXNlZCBvbg0K
PiA+PiBleHBlcmltZW50cy4NCj4gPj4NCj4gPj4gLS12MjoNCj4gPj4gLSBEb2N1bWVudCB0dW5h
YmxlIHBhcmFtcy4gKEFua2l0KQ0KPiA+Pg0KPiA+PiAtLXYzOg0KPiA+PiAtIEFkZCBsaW5lIHNw
YWNlcyB0byBjb21wdXRlIGNvbmZpZy4gKEFua2l0KQ0KPiA+PiAtIFJlbW92ZSByZWR1bmRhbmN5
IGNoZWNrcy4NCj4gPj4NCj4gPj4gLS12NDoNCj4gPj4gLSBTZXBhcmF0ZSBvdXQgY29ucHV0ZSBj
b25maWcgdG8gc2VwYXJhdGUgZnVuY3Rpb24uDQo+ID4+IC0gQXMgYWxsIHRoZSB2YWx1c2UgYXJl
IGJlaW5nIGNvbXB1dGVkIGluIHNjYW5saW5lcywgYW5kIHNsb3BlIGlzDQo+ID4+IHN0aWxsIGlu
IHVzZWMsIGNvbnZlcnQgYW5kIHN0b3JlIGl0IHRvIHNjYW5saW5lcy4NCj4gPj4NCj4gPj4gLS12
NToNCj4gPj4gLSBVcGRhdGUgYW5kIGFkZCBjb21tZW50cyBmb3Igc2xvcGUgY2FsY3VsYXRpb24u
IChBbmtpdCkNCj4gPj4gLSBVcGRhdGUgZWFybHkgcmV0dXJuIGNvbmRpdGlvbnMgZm9yIGRjIGJh
bGFuY2UgY29tcHV0ZS4gKEFua2l0KQ0KPiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBNaXR1bCBH
b2xhbmkgPG1pdHVsa3VtYXIuYWppdGt1bWFyLmdvbGFuaUBpbnRlbC5jb20+DQo+ID4+IC0tLQ0K
PiA+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jIHwgNDYNCj4g
Pj4gKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0NiBp
bnNlcnRpb25zKCspDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92cnIuYw0KPiA+PiBpbmRleCA2NTAwNzdlYjI4MGYuLjQ1ZTYzMmU4YTk4MSAxMDA2
NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0K
PiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4+
IEBAIC02LDYgKzYsNyBAQA0KPiA+PiDCoCDCoCAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0K
PiA+PiDCoCArI2luY2x1ZGUgImludGVsX2NydGMuaCINCj4gPj4gwqAgI2luY2x1ZGUgImludGVs
X2RlLmgiDQo+ID4+IMKgICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JlZ3MuaCINCj4gPj4gwqAg
I2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCINCj4gPj4gQEAgLTIwLDYgKzIxLDE0IEBA
DQo+ID4+IMKgICNkZWZpbmUgRklYRURfUE9JTlRfUFJFQ0lTSU9OwqDCoMKgwqDCoMKgwqAgMTAw
DQo+ID4+IMKgICNkZWZpbmUgQ01SUl9QUkVDSVNJT05fVE9MRVJBTkNFwqDCoMKgIDEwDQo+ID4+
IMKgICsvKg0KPiA+PiArICogVHVuYWJsZSBwYXJhbWV0ZXJzIGZvciBEQyBCYWxhbmNlIGNvcnJl
Y3Rpb24uDQo+ID4+ICsgKiBUaGVzZSBhcmUgY2FwdHVyZWQgYmFzZWQgb24gZXhwZXJpbWVudGF0
aW9ucy4NCj4gPj4gKyAqLw0KPiA+PiArI2RlZmluZSBEQ0JfQ09SUkVDVElPTl9TRU5TSVRJVklU
WcKgwqDCoCAzMCAjZGVmaW5lDQo+ID4+ICtEQ0JfQ09SUkVDVElPTl9BR0dSRVNTSVZFTkVTU8Kg
wqDCoCAxMDAwICNkZWZpbmUNCj4gRENCX0JMQU5LX1RBUkdFVA0KPiA+PiArNTANCj4gPj4gKw0K
PiA+PiDCoCBib29sIGludGVsX3Zycl9pc19jYXBhYmxlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3Ig
KmNvbm5lY3RvcikNCj4gPj4gwqAgew0KPiA+PiDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0b3IpOyBAQA0KPiA+PiAtMzQy
LDYgKzM1MSw0MSBAQCBpbnQgaW50ZWxfdnJyX2NvbXB1dGVfdm1heChzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yDQo+ID4+ICpjb25uZWN0b3IsDQo+ID4+IMKgwqDCoMKgwqAgcmV0dXJuIHZtYXg7DQo+
ID4+IMKgIH0NCj4gPj4gwqAgK3N0YXRpYyB2b2lkDQo+ID4+ICtpbnRlbF92cnJfZGNfYmFsYW5j
ZV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+PiAqY3J0Y19zdGF0
ZSkNCj4gPj4gK3sNCj4gPj4gK8KgwqDCoCBpbnQgZ3VhcmRiYW5kX3VzZWMsIGFkanVzdG1lbnRf
dXNlYzsNCj4gPj4gK8KgwqDCoCBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ID4+ICvCoMKgwqAgc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgKmFkanVzdGVkX21vZGUgPQ0KPiA+PiAmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9k
ZTsNCj4gPj4gKw0KPiA+PiArwqDCoMKgIGlmICghKEhBU19WUlJfRENfQkFMQU5DRShkaXNwbGF5
KSAmJiBjcnRjX3N0YXRlLT52cnIuZW5hYmxlKSkNCj4gPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
bjsNCj4gPg0KPiA+IENhbiBzaW1wbGlmeSB0bzoNCj4gPg0KPiA+IGlmICghSEFTX1ZSUl9EQ19C
QUxBTkNFKGRpc3BsYXkpIHx8ICFjcnRjX3N0YXRlLT52cnIuZW5hYmxlKQ0KPiA+DQo+ID4gwqAg
wqAgcmV0dXJuOw0KPiANCj4gDQo+IEkgdGhpbmsgd2UgY2FuIGludHJvZHVjZSBpbnRlbF92cnJf
ZGNfYmFsYW5jZV9wb3NzaWJsZSgpIGhlcmUgaXRzZWxmLCByYXRoZXINCj4gdGhhbiBsYXRlci4N
Cj4gDQo+IFNvOg0KPiANCj4gaWYgKCFpbnRlbF92cnJfZGNfYmFsYW5jZV9wb3NzaWJsZSgpIHx8
ICFjcnRjX3N0YXRlLT52cnIuZW5hYmxlKQ0KPiANCj4gIMKgIMKgIHJldHVybjsNCj4gDQo+IA0K
PiBSZWdhcmRzLA0KPiANCj4gQW5raXQNCj4gDQo+ID4NCj4gPiBJTU8sIGlmIChub3RBIG9yIG5v
dCBCKSBpcyBtb3JlIHJlYWRhYmxlIHRoYW46IGlmIG5vdCAoQSBhbmQgQikNCg0KU3VyZSwgSSB3
aWxsIGFkZCBpbiBuZXh0IHJldmlzaW9uLg0KDQpUaGFua3MuDQoNCg0KPiA+DQo+ID4NCj4gPj4g
Kw0KPiA+PiArwqDCoMKgIGNydGNfc3RhdGUtPnZyci5kY19iYWxhbmNlLnZtYXggPSBjcnRjX3N0
YXRlLT52cnIudm1heDsNCj4gPj4gK8KgwqDCoCBjcnRjX3N0YXRlLT52cnIuZGNfYmFsYW5jZS52
bWluID0gY3J0Y19zdGF0ZS0+dnJyLnZtaW47DQo+ID4+ICvCoMKgwqAgY3J0Y19zdGF0ZS0+dnJy
LmRjX2JhbGFuY2UubWF4X2luY3JlYXNlID0NCj4gPj4gK8KgwqDCoMKgwqDCoMKgIGNydGNfc3Rh
dGUtPnZyci52bWF4IC0gY3J0Y19zdGF0ZS0+dnJyLnZtaW47DQo+ID4+ICvCoMKgwqAgY3J0Y19z
dGF0ZS0+dnJyLmRjX2JhbGFuY2UubWF4X2RlY3JlYXNlID0NCj4gPj4gK8KgwqDCoMKgwqDCoMKg
IGNydGNfc3RhdGUtPnZyci52bWF4IC0gY3J0Y19zdGF0ZS0+dnJyLnZtaW47DQo+ID4+ICvCoMKg
wqAgY3J0Y19zdGF0ZS0+dnJyLmRjX2JhbGFuY2UuZ3VhcmRiYW5kID0NCj4gPj4gK8KgwqDCoMKg
wqDCoMKgIERJVl9ST1VORF9VUChjcnRjX3N0YXRlLT52cnIuZGNfYmFsYW5jZS52bWF4ICoNCj4g
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERDQl9DT1JSRUNUSU9OX1NFTlNJ
VElWSVRZLCAxMDApOw0KPiA+PiArwqDCoMKgIGd1YXJkYmFuZF91c2VjID0NCj4gPj4gK8KgwqDC
oMKgwqDCoMKgIGludGVsX3NjYW5saW5lc190b191c2VjcyhhZGp1c3RlZF9tb2RlLA0KPiA+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLT52cnIu
ZGNfYmFsYW5jZS5ndWFyZGJhbmQpOw0KPiA+PiArwqDCoMKgIC8qDQo+ID4+ICvCoMKgwqDCoCAq
wqAgVGhlIGNvcnJlY3Rpb25fYWdncmVzc2l2ZW5lc3MvMTAwIGlzIHRoZSBudW1iZXIgb2YNCj4g
Pj4gbWlsbGlzZWNvbmRzIHRvDQo+ID4+ICvCoMKgwqDCoCAqwqAgYWRqdXN0IGJ5IHdoZW4gdGhl
IGJhbGFuY2UgaXMgYXQgdHdpY2UgdGhlIGd1YXJkYmFuZC4NCj4gPj4gK8KgwqDCoMKgICrCoCBn
dWFyZGJhbmRfc2xvcGUgPSBjb3JyZWN0aW9uX2FnZ3Jlc3NpdmVuZXNzIC8gKGd1YXJkYmFuZCAq
DQo+ID4+ICsxMDApDQo+ID4+ICvCoMKgwqDCoCAqLw0KPiA+PiArwqDCoMKgIGFkanVzdG1lbnRf
dXNlYyA9IERDQl9DT1JSRUNUSU9OX0FHR1JFU1NJVkVORVNTICogMTA7DQo+ID4NCj4gPiBUaGUg
Y3VycmVudCB2YWx1ZSByZXByZXNlbnRzIG1pbGxpc2Vjb25kcyB4IDEwMCwgc28gMTAgbXNlY3Mg
YmVjb21lcw0KPiA+IDEwMDAuDQo+ID4gVGhpcyBzY2FsaW5nIGNhbiBiZSBjb25mdXNpbmcgY29t
cGFyZWQgdG8gd29ya2luZyBkaXJlY3RseSB3aXRoDQo+ID4gbWljcm9zZWNvbmRzIG9yIG1pbGxp
c2Vjb25kcy4NCj4gPiBJTU8gaWRlYWxseSB3ZSBjb3VsZCBkZWZpbmUgdGhlIGNvcnJlY3Rpb24g
YWdncmVzc2l2ZW5lc3MgaW4gZWl0aGVyDQo+ID4gdXNlY3Mgb3IgbXNlY3MgZm9yIGNsYXJpdHks
IGJ1dCB0aGF0IG1pZ2h0IG1ha2UgaXQgaGFyZGVyIHRvIG1hdGNoDQo+ID4gdmFsdWVzIGZyb20g
dGhlIHNwZWMuDQo+ID4gSWYgdGhpcyBmYWN0b3IgY2hhbmdlcyBpbiB0aGUgZnV0dXJlIChlLmcu
LCB0byA0MDAgb3IgMTQwMCBiYXNlZCBvbg0KPiA+IGV4cGVyaW1lbnRhdGlvbiksIHdlIG1pZ2h0
IG5lZWQgdG8gcmVjYWxjdWxhdGUgaWYgd2Ugc3dpdGNoIHRvIHB1cmUNCj4gPiBtc2VjcyBvciB1
c2Vjcy4NCj4gPg0KPiA+IEhvd2V2ZXIsIEkgdGhpbmsgaXQgd291bGQgc3RpbGwgYmUgY2xlYXJl
ciBpZiB3ZSByZW5hbWUgdGhlIG1hY3JvIHRvOg0KPiA+ICNkZWZpbmUgRENCX0NPUlJFQ1RJT05f
QUdHUkVTU0lWRU5FU1NfbXNlY3NfWDEwMCAxMDAwDQo+ID4NCj4gPiBUaGVuLCB3aGVuIHdlIHVz
ZToNCj4gPiBhZGp1c3RtZW50X3VzZWMgPSBEQ0JfQ09SUkVDVElPTl9BR0dSRVNTSVZFTkVTU19t
c2Vjc19YMTAwICogMTA7DQo+ID4NCj4gPiBpdCBiZWNvbWVzIG1vcmUgaW50dWl0aXZlIGJlY2F1
c2Ugd2UgY2FuIHNlZSB0aGUgY29udmVyc2lvbjogbXNlY3MgeA0KPiA+IDEwMCB4IDEwIC0+IHVz
ZWNzDQoNClRoYW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb24uIEkgYWdyZWUgdGhhdCBjbGFyaWZ5aW5n
IHRoZSB1bml0cyBoZWxwcyByZWFkYWJpbGl0eS4NCknigJl2ZSBrZXB0IHRoZSBtYWNybyBuYW1l
IGFzIERDQl9DT1JSRUNUSU9OX0FHR1JFU1NJVkVORVNTIGFuZCBhZGRlZCBhIGNsZWFyIHVuaXQg
Y29tbWVudCAoLyogbXMgw5cgMTAwOyAxMCBtcyAqLykgaW5zdGVhZCBvZiByZW5hbWluZyBpdCB0
byBpbmNsdWRlIF9tc2Vjc19YMTAwLCB0aGlzIGtlZXBzIHRoZSBuYW1lIGNvbnNpc3RlbnQgd2l0
aCBzdXJyb3VuZGluZyBkZWZpbmVzIHdoaWxlIHN0aWxsIG1ha2luZyB0aGUgdW5pdCBleHBsaWNp
dC4NCg0KPiA+DQo+ID4NCj4gPiBSZWdhcmRzLA0KPiA+DQo+ID4gQW5raXQNCj4gPg0KPiA+PiAr
wqDCoMKgIGNydGNfc3RhdGUtPnZyci5kY19iYWxhbmNlLnNsb3BlID0NCj4gPj4gK8KgwqDCoMKg
wqDCoMKgIERJVl9ST1VORF9VUChhZGp1c3RtZW50X3VzZWMsIGd1YXJkYmFuZF91c2VjKTsNCj4g
Pj4gK8KgwqDCoCBjcnRjX3N0YXRlLT52cnIuZGNfYmFsYW5jZS52YmxhbmtfdGFyZ2V0ID0NCj4g
Pj4gK8KgwqDCoMKgwqDCoMKgIERJVl9ST1VORF9VUCgoY3J0Y19zdGF0ZS0+dnJyLnZtYXggLSBj
cnRjX3N0YXRlLT52cnIudm1pbikgKg0KPiA+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgRENCX0JMQU5LX1RBUkdFVCwgMTAwKTsgfQ0KPiA+PiArDQo+ID4+IMKgIHZvaWQNCj4g
Pj4gwqAgaW50ZWxfdnJyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLA0KPiA+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1f
Y29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKSBAQCAtMzk5LDYNCj4gPj4gKzQ0Myw4IEBAIGlu
dGVsX3Zycl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+PiAqY3J0
Y19zdGF0ZSwNCj4gPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGNydGNfc3RhdGUtPmh3
LmFkanVzdGVkX21vZGUuY3J0Y192dG90YWwgLQ0KPiA+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192c3luY19lbmQpOw0KPiA+
PiDCoMKgwqDCoMKgIH0NCj4gPj4gKw0KPiA+PiArwqDCoMKgIGludGVsX3Zycl9kY19iYWxhbmNl
X2NvbXB1dGVfY29uZmlnKGNydGNfc3RhdGUpOw0KPiA+PiDCoCB9DQo+ID4+IMKgIMKgIHN0YXRp
YyBpbnQNCg==
