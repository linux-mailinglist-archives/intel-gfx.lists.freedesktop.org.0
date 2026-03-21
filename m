Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HDPkDRLhvWnKDAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2026 01:06:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB852E2732
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2026 01:06:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D5C10E12A;
	Sat, 21 Mar 2026 00:06:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="ck50Y3A0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com
 (mail-westusazon11012060.outbound.protection.outlook.com [52.101.43.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A88710E12A;
 Sat, 21 Mar 2026 00:06:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ofm+bshZPKsVzkhS4G/eqhlytwcLo2sdD70PJW5kUAZ0RDqeu4q5PE+uWyenoAVktNnIrWgsShos/rSEG/5LwPu+D7CP+oGTyRZOmMhU06SfErFMsTLOq7szdB0/lyuXnLMOX0pS27lOQlEreAQnYN0LJDmxcT41V4/y6MzB/7vLkRjzgV0YXHtsch026Nt7LNEHjx8x2EWTMtFQzSSbAPNN8aw6A8bBOXR5X1s36535/OTpiXJZuPXQEsR/S9EMssekptZI3dtq5+3QqNLhN6KCfQSgOZ+UDZW2fBQqLTMQgROgZFP4h9o+LEAxR8ku3udAVHnr9qj1+jHvCK8zQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MPe0rge1WKsxgBFo549+3nELOcKrdvGnKsiNyaqjsP4=;
 b=onm91WbjbcSqQhtJIDccfD2XpO/9gnTJD3R6FoFkZYfY3G9eKiPhpX9ky+zlc0/SLavmW4nKmHItEIMbkr6ZWIM6hcxWRDpr3Bz9JZfDbkVmzogCu/Al4VQedvn4al8WfH1NLq6DUPawC8jq4ai+6/0LuBFWbNrlebv4deCuUZjVOsM8siPtZVK5Gc0IA/f6ilfp919tXOTa7hBMbiZH29cW41WZphTCeDO2z2pgCVtREZm+VL2myPpdNEqUN4OtGYjQX+zcaI+7yl0JcA8f2ZgwBOaIUEnFXaL0qs0EgOOJpNN+8YqlFf8gR83E1K6aAcaxE22Z/eHeZ03B3jGpKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MPe0rge1WKsxgBFo549+3nELOcKrdvGnKsiNyaqjsP4=;
 b=ck50Y3A0gP5zOglQ26qP/SuKWUdGAAmyjO7aunRGqYWqfQzu5u8Rmc9YMUS04iWN6310mWiwFOovtDwyM0l0CklZUsdf7wlk6arTutR0Q9kF8ZKJ5T8ZkJRWmhwFVsjEoLiu2vCRrPVhaov1MsmHsCBqfpoz5bRCYt3QXn3bk0IIaSFx4XBlP1IlqD19ga+ekjH1bzMNjCFOMRuNGTuUKfjwGGaFrWXEgkurW2C1BZ7T5uZKR1F8oG2OiNmTYuTqzY/ZRULpXox5DLO6P1nn+wqkAFcWrSJox4BJxm5cNf+V25T6HE5UxxBBnMZ+ggosVaDwR83GT91L3MFKpFUxdA==
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SJ2PR12MB8805.namprd12.prod.outlook.com (2603:10b6:a03:4d0::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.15; Sat, 21 Mar
 2026 00:06:31 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9745.007; Sat, 21 Mar 2026
 00:06:31 +0000
From: Joel Fernandes <joelagnelf@nvidia.com>
To: Alexandre Courbot <acourbot@nvidia.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Miguel
 Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo
 <gary@garyguo.net>, =?utf-8?B?QmrDtnJuIFJveSBCYXJvbg==?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas
 Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor
 Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Dave Airlie
 <airlied@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Koen
 Koning <koen.koning@linux.intel.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "rust-for-linux@vger.kernel.org"
 <rust-for-linux@vger.kernel.org>, Nikola Djukic <ndjukic@nvidia.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet
 <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Vivi Rodrigo <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Rui Huang <ray.huang@amd.com>, Matthew
 Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Lucas
 De Marchi <lucas.demarchi@intel.com>, =?utf-8?B?VGhvbWFzIEhlbGxzdHLDtm0=?=
 <thomas.hellstrom@linux.intel.com>, Helge Deller <deller@gmx.de>, Alex Gaynor
 <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, John Hubbard
 <jhubbard@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Timur Tabi
 <ttabi@nvidia.com>, Edwin Peer <epeer@nvidia.com>, Andrea Righi
 <arighi@nvidia.com>, Andy Ritger <ARitger@nvidia.com>, Zhi Wang
 <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>, Philipp Stanner
 <phasta@kernel.org>, Elle Rhumsaa <elle@weathered-steel.dev>, Alexey Ivanov
 <alexeyi@nvidia.com>, Eliot Courtney <ecourtney@nvidia.com>,
 "joel@joelfernandes.org" <joel@joelfernandes.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v14 2/2] MAINTAINERS: gpu: buddy: Update reviewer
Thread-Topic: [PATCH v14 2/2] MAINTAINERS: gpu: buddy: Update reviewer
Thread-Index: AQHcuCYJpk4kz77CC0+Kkr7kSII3UrW3Vl6AgADGeec=
Date: Sat, 21 Mar 2026 00:06:31 +0000
Message-ID: <67D3DBE2-643E-411A-9C21-245926E6EAAA@nvidia.com>
References: <20260320045711.43494-1-joelagnelf@nvidia.com>
 <20260320045711.43494-3-joelagnelf@nvidia.com>
 <DH7LP20OY5TJ.3ICBGXWHA7LQV@nvidia.com>
In-Reply-To: <DH7LP20OY5TJ.3ICBGXWHA7LQV@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR12MB6486:EE_|SJ2PR12MB8805:EE_
x-ms-office365-filtering-correlation-id: 363fd863-ec41-4ad9-dc46-08de86ddb4ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 9gG6dmWjYdsWWBLLUhe5SokRo29IXR2ETO5CvwBHpKbfEA3AX9YJgWfvQ5TVcO9I2kVtOUce7HKmeDTYLrN5VuCeCOQezoRvnd3xADpAirSFbu8O12u0RNSRc/w8Ho4B9NHW1VxaPSBo/0epkhLegRmTjvx7I/jAFIgW32cSV3yfZijvCYBJGOuAo9+Trvb6hZXjH2ySCvs44nZME8aaAz6JqWtLjK5qM1ZzTvPIaaSyK8nmc3ahXy0Ewo3gFpW2uz+j8bEc0DeJbOcrnCnTOuR0JOQv/eAQGszk8wwZ6dOLOpMfztAAuhg5rjIoapoD7z8HmTb/SljFmbZjmLBMJVE/szaVi0m7QorPMjqwviRjdGf5rt0SF8kaNUaJvL5ZLYeSF5Pu1ynTIT+4SBHzKzXFijv5Qzqinkjwr8OP8wyp9HdsrLpOwcT9cpUIhTikMNl0GGwcu3jOEhP3d0TJxiponJ4Ljvopo33dWrMQ4cx7YICTc9Dpundxxvt4tdiEXgIGi82zARnk0rBYplQAyaeXDzqi3boSAdabzIj1F982waiGxS6Yoqq5oMzQF1QgxtfGqySu+J3tpW8+6ZHNRYGzdJEbuxMrOpKlAUFp2rgG+itjhlKfz/ueZ5a7JEcpLzIecCDSmjcDkMcrQ+T5Az3zo8GS+NiB0ad/Jzp6Qi5o7nWXb6b0muzOFmZfAmG2pxQ1nV6OYhXZyVB6wEWWm43+cV+s6hAKeEgt3nN3NkfF7B/dvkvd/troKqALOBIMfRqkf5uEgwBc/FeGUxacFIlrshhW8jHNeSnBL3Pk2cM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjlHVXFGcmdlSWZQRVZtUWQ1NVRnbDFjWjE5dElaTFN5L3d3K3VTZTFtdVRY?=
 =?utf-8?B?S0V2VWdTVE1DdmlUMDdrdnBDNE1QcVg4NlA1dFRqV3pBLzU1L0xhbFFRNEtn?=
 =?utf-8?B?QUZaUWl4djVhVnBEOEpScHNZSC8rSjlVVHE0NVFnVnUwS2Yrd29PMHlGTnJk?=
 =?utf-8?B?ZkUxbysrbVpHQXlacVVzcy90SFMxeHJ1amxoTi92cDVJRHEzblpGMzMyUzk2?=
 =?utf-8?B?cWUxVTY0N2RtUldwTWZLdjc4V2pTclN1bVRJUEJGUTNmcWNOOTU3MklQTXZO?=
 =?utf-8?B?QWg3cER6VGg1UnVuUEtEZXRQUTBuWXJrSmpyQndJY3VQeUtCUXI1UG00c1c1?=
 =?utf-8?B?WVpGZys2K2NxUW8vSW1XdTRzcnZqNTVuNEkrQlRrTUo3S05QS3A4eFc0aU85?=
 =?utf-8?B?YVQ5Y0NuQVpmSHFnUFhEUktWMW5WcFZzTVJ3UlhrNWkvc3gwY3hYN1AvU0Rx?=
 =?utf-8?B?TzJKZytsMkZsaDVqMmZJSTN4bkRNQnZqYkR2V3EySXBhcTltUFZtRmlod2dB?=
 =?utf-8?B?ZlFyWkNDUTVDQWJPZmtHMkxRMVNFK3JhVmp3R2xjTXF2czNFcXpsL1RpQ0E4?=
 =?utf-8?B?eTBUYnBtU3h6b041QlRya3hENGJVRERJTnI2MUwvS2hETms0R1B0d1NFSGRW?=
 =?utf-8?B?dUpYaFdlcjVzcEtLRXdzMU9xTnpmeVBOU0tKVjY5ZHI1OTBCZkEzR2N5RmZY?=
 =?utf-8?B?cklmK0RDZEhLNWc0YWRGVzJkRGkxbkxjSWtDYXpPdnJlcmNIQWRXMkhaQXFE?=
 =?utf-8?B?Wkg3VmkyNmNoUUtyNmpLWlErZ3BYbmlvanJCYWJOdzcxM0ZINVJoSUFMaHQ0?=
 =?utf-8?B?eWRMVzFzWUI0b1lSVVpBNkYxZEtSYUFERjlRMk1VSTJPUjJvRFR3OFA1Vjhq?=
 =?utf-8?B?dW5YZmp5elNlcktHemdoVnRvNDJxODRhWkhhWmZGbFZNdGFRMXR6V1dZcnZZ?=
 =?utf-8?B?ZUlqUGNMRmUvVkk5emk3a3BiRTEwYjJ5a3BkNWdJL0lYZHg1bktCaG1vdU1o?=
 =?utf-8?B?ci9NRXN5aWVpbGR1M2pJazVxbDRWc1Rucm1jd2FVS0xMUmZRMHJsT3dSK1h5?=
 =?utf-8?B?Rzg0NFJuMHlUQUJOSTF5dWVDbFNwRXFxWHpmWGJwaGpyZDRiOTFIREJjUkNq?=
 =?utf-8?B?UWpkQlphRWp4N29PMUgvak5mTTk2OFB4aTdaUExsVUtibmtMNDBNQnVzRTNy?=
 =?utf-8?B?UlE4ZmFxTnhNdmw0N2JtbTU1NTF4OHdtWjY4c0RDYmIxSjIyMmRQZnhXcHpl?=
 =?utf-8?B?anp1T0M3MUdOMy9wcmZBdGd3TGpjSVI2VkdaSUY0QUNyR0xoMENHWHd4YkZV?=
 =?utf-8?B?azY1dmpVczBqTDZUWGZBZEgxOXloUU91STA5cGN1MEc1Q3Z2b0hBRUVkWitk?=
 =?utf-8?B?Rk9lM1I4ZVNKMy9YRVM3S1hWZ2F3OURMcDJyYisyTlJJUXdYTmxTL2x1NlNG?=
 =?utf-8?B?U3VyazZsOVpqbkJqZUxLQ0FVaHlscDlpYytNYW1weWU3WjdVZjZsbXE2djBl?=
 =?utf-8?B?WU95bUxoVTBVUnkrSmsySERiTEJGZGROWmVDQ1lpemsvckdPRmRZbUJsd0F3?=
 =?utf-8?B?WFJBYVhKWE9od2dYQktGTUZPL1ZpWVppa0tjT2ExeHZ1U0tUYUxiWmh5NWZu?=
 =?utf-8?B?Nk05NFBueUo3bnNzMEE4UGpSaVpzMTh6aFp4czJURi84TURkSmJvY2hBRmJC?=
 =?utf-8?B?UHdjNkdaQmRYMjBRckRtbUk2VHJ1aWkyd3ZGNm9qQjJkazdqOVF2V1loMVYv?=
 =?utf-8?B?WDN6azVBRW83WThEL085QkdkQ2J0Y3JZenZ2a1ZrUC9Pamhwck1oeTROT2Nn?=
 =?utf-8?B?ZmxMV3FVSVpxWUlmY3UzLzI5MW9wVkF4ZTRwanVDcHBRNTVjejFsTUdnbzg4?=
 =?utf-8?B?cWRBNmFoVi9hT1RkOGZ1SjJkWExvZld3SEt3RVZiQlQ5M2MvRXpjMTdpemJq?=
 =?utf-8?B?K2NUR3RsTEVKOWk2MHc5VWZtdnFkU2RXKzhxSHhTR3I5amFSOFVKTk1pODRS?=
 =?utf-8?B?Z3hjdlFOb2xHaWthbUZlZFhRS2J6KzdKbVpMeHk2bVFMN0d4T0p6eFI0SmpN?=
 =?utf-8?B?Q09Lb25zV3B3SjFjeHFjV3ZMNDBNSVFvamxmblRhWXc5Rzd5NmhHNFc3MHp2?=
 =?utf-8?B?QkdWZmdhci9HOFJrNHZSbFUyRUkrUENhdjBrWUZYNGdKQVlIMUlLK3prRk8v?=
 =?utf-8?B?bUtpM1dHbG1hYzAxdzRmajluT1dZNEZ6ZTlqN0NReTVjdXdvNnVZNHZrdk9N?=
 =?utf-8?B?UVRaUGJtcXNuVjBxMWxLSWFDVXJ0ZmwrelVuWG9PeFJMTHN0UlVtRjdaak5B?=
 =?utf-8?B?d1NrcGQzNFY1WTZQWjYzMlpMM2xMQW81bkp4WEtmdFJPWlBhQ3ZSdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 363fd863-ec41-4ad9-dc46-08de86ddb4ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2026 00:06:31.0866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n7F+OPPJUgqtpdW+R3zpb7IOjL6w7xa7ua9yidMgxabatFEwKkoktof4SQQAcUQKd0QFsuMl80Ly+ty6uoa3gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8805
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.945];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: 7DB852E2732
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gT24gTWFyIDIwLCAyMDI2LCBhdCA4OjE24oCvQU0sIEFsZXhhbmRyZSBDb3VyYm90IDxh
Y291cmJvdEBudmlkaWEuY29tPiB3cm90ZToNCj4gDQo+IO+7v09uIEZyaSBNYXIgMjAsIDIwMjYg
YXQgMTo1NyBQTSBKU1QsIEpvZWwgRmVybmFuZGVzIHdyb3RlOg0KPj4gQ2hyaXN0aWFuIEtvZW5p
ZyBtZW50aW9uZWQgaGUnZCBsaWtlIHRvIHN0ZXAgZG93biBmcm9tIHRoZSByZXZpZXdlcg0KPj4g
cm9sZSBmb3IgdGhlIEdQVSBidWRkeSBhbGxvY2F0b3IuIEpvZWwgRmVybmFuZGVzIGlzIHN0ZXBw
aW5nIGluIGFzDQo+PiByZXZpZXdlciB3aXRoIGFncmVlbWVudCBmcm9tIE1hdHRoZXcgQXVsZCBh
bmQgQXJ1biBQcmF2aW4uDQo+PiANCj4+IFNpZ25lZC1vZmYtYnk6IEpvZWwgRmVybmFuZGVzIDxq
b2VsYWduZWxmQG52aWRpYS5jb20+DQo+IA0KPiBUaGlzIGlzIG1pc3NpbmcgdGhlIEFja2VkLWJ5
cyB5b3UgY29sbGVjdGVkIG9uIHYxMy4NCg0KVGhhbmsgeW91LCB3b3VsZCBEYW5pbG8gYmUgd2ls
bGluZyB0byBhZGQgaXQgb25seSBhcHBseSBzbyBJIGRvIG5vdCBuZWVkIHRvIHJlc2VuZD8gQWNr
cyBhcmUgZnJvbSBNYXRoZXcsIEFydW4gYW5kIENocmlzdGlhbi4NCg0KDQoNCg==
