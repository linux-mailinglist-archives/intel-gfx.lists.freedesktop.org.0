Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qESzHlHyumkBdQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 19:43:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 157F52C17E8
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 19:43:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D135110E712;
	Wed, 18 Mar 2026 18:43:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="KAYl3pMC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011023.outbound.protection.outlook.com [40.107.208.23])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF0EB10E481;
 Wed, 18 Mar 2026 18:43:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rf20mv4D2eshhMyQVwO66Y7GpKUJGU8ZVwTgda3oI2dSrEEEr2hzavt0XvFCS6h4wW0s+KQtoFH17td/WeRirPqrfkHBFDwdob8pGHbqugrGy/id1us+P4J1PjhWsT7E54pBAcHqw21OlprqkG+mVkkIEbCjPVtZDVSH8NFUL7rsFrpmSEJxOGoBU7wI0yvFCueIwA70lF3XQqHkFVGm5twptElcU5JQ77LIf4eRXl4c1KdPgMMkdkb7oUZoAAjvq8z7B+pknTLJyWmexXRvRx80FO9n0mKb+phwY3ahwAqs2AGwMj9bx8e/p3//GusogNiz1lyokdDkec+bIyvH/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KDmXe+fLpovnXVh5IWeiaUuArwbnzwgViwnkWlB3tyg=;
 b=cvBUfS4Z6Hk7uzxbrU9WlLGsJv+Tp8QagZ/RpwQpytzNOLwUbPFp+wTvhInLFIKRPu6nZck64YN2ARROuJHhl4L+3R8Z4qH7OcYBSyEhQ0WXG0bl9U3MeMKSgYaKtBmSThOr2VJbzYOc8t7s15am+rSueQhxadtSW9bs1V1iFhvjjgQWQqNixS6ackYh5EgHMkA3YwaC/DKAuMQhQQ0B0PuMjKJH/4XaLuUeHohTwOAuts+A6otLEHWe4QG4lEpThLiJzJlahwcrNEwG+9KKR32zEgTseQtVdOX21lqcjVF3cmCibsfvk5KYOXZRMw9IMsj1EnL7yrqB7XeXE9nuXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KDmXe+fLpovnXVh5IWeiaUuArwbnzwgViwnkWlB3tyg=;
 b=KAYl3pMCohvhvdLUx/oHdnyOZEvsJvzcAsI3V0r6oRUqFTkQ0oXE/etgx5ktJ8GJSepS2hdosJ0qbuz4xoaVEd5LFGZnfSiPxEE97t64mDwposBn8f06+fLZj6AZlxhY7xQPHHmnKy8MldwsuG5VR0JZaGV7h+W1eRatit5/J63mINxwEMBq/EOPUL7kYFuvvjJUWw0M9RswMqXJQnTnjn/IwbcDtRi5+FQXb1oGG/WqyYLNO//ThX+lx/AicJp1oXodR/MRhAzIPO3dlgwC1UYLdGU6mZwTy93cT21caXLW+jSUZdMYLapSxakbvSIDhSkTsnzfwuw1EsrOn93EVA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 PH7PR12MB7987.namprd12.prod.outlook.com (2603:10b6:510:27c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Wed, 18 Mar
 2026 18:43:17 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.016; Wed, 18 Mar 2026
 18:43:17 +0000
Message-ID: <2fc5435c-bcfa-4677-8930-eb646593c2bb@nvidia.com>
Date: Wed, 18 Mar 2026 14:43:11 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
From: Joel Fernandes <joelagnelf@nvidia.com>
To: Alice Ryhl <aliceryhl@google.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Trevor Gross <tmgross@umich.edu>, Alex Gaynor <alex.gaynor@gmail.com>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Simona Vetter <simona@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, Nikola Djukic
 <ndjukic@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com> <abqdUBqchnVFo7Qk@google.com>
 <71b6a115-98f1-4b09-9c04-a99349f51e49@nvidia.com>
Content-Language: en-US
In-Reply-To: <71b6a115-98f1-4b09-9c04-a99349f51e49@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CY8PR11CA0022.namprd11.prod.outlook.com
 (2603:10b6:930:48::6) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|PH7PR12MB7987:EE_
X-MS-Office365-Filtering-Correlation-Id: 6476308b-3c3c-4fea-007d-08de851e3846
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|13003099007|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: aQz8SUppTPOMB+w0ZF51b0qAEthAFRAZvxHNNEKAnJkVqltwegY0y2f0gtcEmwvSKydyfiNKhgcj/AYB2QttyNR/bQoTx18p5vbPf8Ewx8L0lhE5IFEZjMv5DedXhKwPTmRb67JAclgr7m0dEifu2LpcyJs6FumaxOp3cF+sj32CP1Y0Hm0BzCLs+C3IrbviP5vhMKmBDe+dPGiGkaMSOA9F/cAYYEAuZrj6k+d0KWOyjZRxE0KVSRKt05mF1NZ8ZFxmC/j96gGmNLfvpIN9rSseBlPffV/Lwagy/GSiHb+FZEzjs8kOz/YVau32o/bE1p/h0mg5EVSeooS8ZMk7JYup1z3Lphk0i5Y25kKjInyPQQBRz2OlI5+bGdonqSLvuL+8RN64LVwJsv0/cLwNyvozZtOpryVb0chHdHEJRFRo5DnuCeI8bB9lHWK5oY8sCM30c6alXD449Bm7k3OYtiCPNLthXHhY1+v79l4N/7k4RwBATDiO1kQQ/3/i4OSk7FXyqrZdVZdTKIbd2392vjTKYOxNJbDUbTIC3NKnkMg3o8WQmU75VeSn7/IQP5JIdHOWbZhDt8ffFlQ0fSVNRi9k4OX56+rUibUh8qkwlc4juyQ3Gdj850jBw6oUW3v2raaFSOIEEMYDMPoRYAZjMcb4QfVcNS2vxQgIM0mwtc7FWPKC5TYN8vfX0W9CDu3dYbiF6OJ2t3ZGKpEqX7PRFjvJMWn/nOBm26XMo6oML/TKTCUq6a6SzvkTZNq49gwU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(13003099007)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWE0MEFKZTdrbnl2cmU5VEhEUllwSkxaUkx5MDV6ZVpQUGNNN1Y3SUM5V2RX?=
 =?utf-8?B?UWFhSDR3NmI4RkVrTWtleUozbmxCdU1EUjNXTmlxcE5wdFRLTEpPK3k5ejNH?=
 =?utf-8?B?REtNWmo0cTlYSVJ5NFVaM3M4d0pRalh4M1Y4Q1VWVFRZeStGZHVkdmVLVmlI?=
 =?utf-8?B?QnZHYkR0WEQvdTRNY3YvVm1FWlRFNDZFUkxoYkVaK2M1TW5hUk9iRDFQdjE1?=
 =?utf-8?B?VnRJRmRBZEpLYXg0VlZ1Z1JPWnBmaERXYmIvNkhKdE1heVNGeUxGUis2K2JB?=
 =?utf-8?B?YUhxbHgyeHhrSjkxS1QwVGlYejVLSU9pbCsyODIyR0ZmSU1maS9sN1RTWldV?=
 =?utf-8?B?cnhaRi9aRlgzRkhHNGJGbGZYTTFJK2s3dlBaVTVMOG1yajEzbGpiTlNlMEIw?=
 =?utf-8?B?bGFGYWxNVjgwQWJuMHNydWlSSEtHWEJSbFprQ2M3YmJCdFNKcVVNd24vMytU?=
 =?utf-8?B?dWIrOXBSeDhhQkQ5bUhFaTV2QlJvLzlPUExNbGRuSkR1MU1Pa0oyc1FIZnQz?=
 =?utf-8?B?YnJXc3BYaXdIVEtGNmFhYUNiNnRJTFF6Zk9iZ0tKSENVdEhTSngrNCt4N0Rz?=
 =?utf-8?B?TnZIV2FZdDRNcUIyUWZaZEdiY0E5QnAzc0oyL0J1RytzNHNlUmtScEY2cHRw?=
 =?utf-8?B?N21ZclBuVG9UZ0FOS2QyYkpqa2VMYjZ5dWJoNGRSbElla0NJbzVQVGI3dFQz?=
 =?utf-8?B?a3dnWjI5NTFkYUttSGZJZDBDM0JuZDAvNFF5WDJxM0IyVnFtNDd4bXdXQXBi?=
 =?utf-8?B?bkNzWWh3ZWlkZTVpUVUxRERKTENyRzJPT2djNElhUy9xRkZDYVZlNmplZWk0?=
 =?utf-8?B?K2JDOHF6dUZKQm16TGh6dFdESDlPNDVYS2cyYkdXQlhlaHR0SWp1NXUwSEg3?=
 =?utf-8?B?WmFkZyswYzhkNVZRZ1ltbUxtWS83SDN3M2ZFUkhwN3grTXIrcUFKUDN0dy9p?=
 =?utf-8?B?MFp4NCtKSzlxVmJ2eWdoZEgvditoUFFVWlRKWUcyUTNKVlRkREtLSldaM2Y5?=
 =?utf-8?B?R0NVci9NblEyVEJaSlBrS0ppcGJhdWd2MVpQd2lUMUZISFZVT0pvcTRSamx2?=
 =?utf-8?B?K2hYNTc0VUkxQ2ZsRHZrSFpFeFRjdkdrNU52UE85SDIrZzl1MVF3cGNObEI2?=
 =?utf-8?B?YytWSkpuUUdUdDFPNG5GVitUZFExOVZnR3gxQXFUdkhkVjdUQlJJUHFsbHJs?=
 =?utf-8?B?dG5FcVBkNUNELzR0dWY3b0NMNVl3UkEzL0daNnQrYk81NlJNcS9lNVV1SDJK?=
 =?utf-8?B?UUpwMnpadFFvRTV0YzJJZDV5dG41QzM4ekQ2cExqSGlJdjUvd1gwYzR0TUdF?=
 =?utf-8?B?WTZtWHpVNER0ZkhlTUpDZ2dZbzE1emh0TDg1R05oMG05bXkwR1QxNzlnV05o?=
 =?utf-8?B?Yk4vMlJkZ2k1VFNvK3hVTTF0YmZROVk4ZlRRSHk3dW1KOVNrZHFLdzJLT1dY?=
 =?utf-8?B?OE45RkVqKyttUEozbldaTHVaTnJmaXdPMGgyMUpmTmxvRlNUUmdEaE5JTU5T?=
 =?utf-8?B?a2dSQW8yK0kzd0hnNkFPWlp0VUg1dkRzSlMzR1NzMkNCeEE1TFRvYUsxK09O?=
 =?utf-8?B?Wjk4cDd3d0JSTXZleW1FV2tEU0FHeExlUFFSaVFWRWZPemxTUXdmVHF6N1dx?=
 =?utf-8?B?Sk5GeXlCSFNMT2Nhcjk3TDBKbUFEWk4reVBGNjlaN05CQUFxSzRCWG9KMHZC?=
 =?utf-8?B?NkJuMWgrbHU4WXFLRkt5NXVLbmwvMDJWSWxpaFIyaVFTaDlZRGMyS1VHYTJC?=
 =?utf-8?B?TFU1dlRxb2U1TExhbWxKaE1wR0dWS09paFNzRU9JYXNxSW9IalVHSTZHYU8r?=
 =?utf-8?B?MHUvQVZRNVFVWUNwRnRNRHc3UEFIL3cwcmp5c2dPZGUxTkNUWHlkQXRTTzFT?=
 =?utf-8?B?V0dmdnU4RThOalJIQlppRURSVTlYR0JiKzFnN2tFa2ppaGhBN1U2OTcrcEF2?=
 =?utf-8?B?U0p2bmp2VnBjT09ydHpERWt0NFB2UVpZYVRWQWN3WlF4eFBQdGh4cGFMcWEy?=
 =?utf-8?B?SlpCWWZwVnlibDZUVU1CaW5SeDdwWCtWTmVJa2VHYVROb291YzZiVmVCSGEw?=
 =?utf-8?B?aHJnWi9FVE1mMHp4bnB5SklLMWV5K215SjgzeHhEMWt0MC8rWlVGZk04c1hQ?=
 =?utf-8?B?N3lWS09tclZYMkY2L2E1VXg1dkhlV2VpMC9JRlVWbGxWUWFaWXd6VUpmWDNk?=
 =?utf-8?B?QUVwNU8vdzduTnpOYzBLWDhXWUNrRW9LbktvdDcvMmtnMGU0LzFackFnVFg5?=
 =?utf-8?B?VThRdHNzVEdWZEZUNDN3aXZwVDJJekQvQmZxQzhrMVh3UXhSdXRaNktNU2hN?=
 =?utf-8?B?aU45SnB2TlNpTzNYMGZSTnFpV3FkRVZ4UkpPSmpmbDA5V2NrWkszdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6476308b-3c3c-4fea-007d-08de851e3846
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 18:43:17.5340 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sqqhFXm1Op2RyvWcWwIMgzzmL9Y1WL6uN31J4h6Z+LOVi0c1Rx5tyJ3NW5sCjco2Ts8JR57/GI3CkO9eoYVLCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7987
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[garyguo.net:server fail,collabora.com:server fail,nvidia.com:server fail,Nvidia.com:server fail,gabe.freedesktop.org:server fail,rust-lang.github.io:server fail];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_GT_50(0.00)[53];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 157F52C17E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 2:31 PM, Joel Fernandes wrote:
> 
> 
> On 3/18/2026 8:40 AM, Alice Ryhl wrote:
>> On Tue, Mar 17, 2026 at 04:17:10PM -0400, Joel Fernandes wrote:
>>> Add a new module `kernel::interop::list` for working with C's doubly
>>> circular linked lists. Provide low-level iteration over list nodes.
>>>
>>> Typed iteration over actual items is provided with a `clist_create`
>>> macro to assist in creation of the `CList` type.
>>>
>>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>>> Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
>>> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
>>> Acked-by: Alexandre Courbot <acourbot@nvidia.com>
>>> Acked-by: Gary Guo <gary@garyguo.net>
>>> Acked-by: Miguel Ojeda <ojeda@kernel.org>
>>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>>> ---
>>>  MAINTAINERS                 |   8 +
>>>  rust/helpers/helpers.c      |   1 +
>>>  rust/helpers/list.c         |  17 ++
>>>  rust/kernel/interop.rs      |   9 +
>>>  rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
>>>  rust/kernel/lib.rs          |   2 +
>>>  6 files changed, 379 insertions(+)
>>>  create mode 100644 rust/helpers/list.c
>>>  create mode 100644 rust/kernel/interop.rs
>>>  create mode 100644 rust/kernel/interop/list.rs
>>>
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index 4bd6b538a51f..e847099efcc2 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -23251,6 +23251,14 @@ T:	git https://github.com/Rust-for-Linux/linux.git alloc-next
>>>  F:	rust/kernel/alloc.rs
>>>  F:	rust/kernel/alloc/
>>>  
>>> +RUST [INTEROP]
>>> +M:	Joel Fernandes <joelagnelf@nvidia.com>
>>> +M:	Alexandre Courbot <acourbot@nvidia.com>
>>> +L:	rust-for-linux@vger.kernel.org
>>> +S:	Maintained
>>> +T:	git https://github.com/Rust-for-Linux/linux.git interop-next
>>> +F:	rust/kernel/interop/
>>> +
>>>  RUST [NUM]
>>>  M:	Alexandre Courbot <acourbot@nvidia.com>
>>>  R:	Yury Norov <yury.norov@gmail.com>
>>> diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
>>> index a3c42e51f00a..724fcb8240ac 100644
>>> --- a/rust/helpers/helpers.c
>>> +++ b/rust/helpers/helpers.c
>>> @@ -35,6 +35,7 @@
>>>  #include "io.c"
>>>  #include "jump_label.c"
>>>  #include "kunit.c"
>>> +#include "list.c"
>>>  #include "maple_tree.c"
>>>  #include "mm.c"
>>>  #include "mutex.c"
>>> diff --git a/rust/helpers/list.c b/rust/helpers/list.c
>>> new file mode 100644
>>> index 000000000000..18095a5593c5
>>> --- /dev/null
>>> +++ b/rust/helpers/list.c
>>> @@ -0,0 +1,17 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +
>>> +/*
>>> + * Helpers for C circular doubly linked list implementation.
>>> + */
>>> +
>>> +#include <linux/list.h>
>>> +
>>> +__rust_helper void rust_helper_INIT_LIST_HEAD(struct list_head *list)
>>> +{
>>> +	INIT_LIST_HEAD(list);
>>> +}
>>> +
>>> +__rust_helper void rust_helper_list_add_tail(struct list_head *new, struct list_head *head)
>>> +{
>>> +	list_add_tail(new, head);
>>> +}
>>> diff --git a/rust/kernel/interop.rs b/rust/kernel/interop.rs
>>> new file mode 100644
>>> index 000000000000..b88140cf76dc
>>> --- /dev/null
>>> +++ b/rust/kernel/interop.rs
>>> @@ -0,0 +1,9 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +
>>> +//! Infrastructure for interfacing Rust code with C kernel subsystems.
>>> +//!
>>> +//! This module is intended for low-level, unsafe Rust infrastructure code
>>> +//! that interoperates between Rust and C. It is NOT for use directly in
>>> +//! Rust drivers.
>>> +
>>> +pub mod list;
>>> diff --git a/rust/kernel/interop/list.rs b/rust/kernel/interop/list.rs
>>> new file mode 100644
>>> index 000000000000..328f6b0de2ce
>>> --- /dev/null
>>> +++ b/rust/kernel/interop/list.rs
>>> @@ -0,0 +1,342 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +
>>> +//! Rust interface for C doubly circular intrusive linked lists.
>>> +//!
>>> +//! This module provides Rust abstractions for iterating over C `list_head`-based
>>> +//! linked lists. It should only be used for cases where C and Rust code share
>>> +//! direct access to the same linked list through a C interop interface.
>>> +//!
>>> +//! Note: This *must not* be used by Rust components that just need a linked list
>>> +//! primitive. Use [`kernel::list::List`] instead.
>>> +//!
>>> +//! # Examples
>>> +//!
>>> +//! ```
>>> +//! use kernel::{
>>> +//!     bindings,
>>> +//!     clist_create,
>>> +//!     types::Opaque,
>>> +//! };
>>> +//! # // Create test list with values (0, 10, 20) - normally done by C code but it is
>>> +//! # // emulated here for doctests using the C bindings.
>>> +//! # use core::mem::MaybeUninit;
>>> +//! #
>>> +//! # /// C struct with embedded `list_head` (typically will be allocated by C code).
>>> +//! # #[repr(C)]
>>> +//! # pub struct SampleItemC {
>>> +//! #     pub value: i32,
>>> +//! #     pub link: bindings::list_head,
>>> +//! # }
>>> +//! #
>>> +//! # let mut head = MaybeUninit::<bindings::list_head>::uninit();
>>> +//! #
>>> +//! # let head = head.as_mut_ptr();
>>> +//! # // SAFETY: `head` and all the items are test objects allocated in this scope.
>>> +//! # unsafe { bindings::INIT_LIST_HEAD(head) };
>>> +//! #
>>> +//! # let mut items = [
>>> +//! #     MaybeUninit::<SampleItemC>::uninit(),
>>> +//! #     MaybeUninit::<SampleItemC>::uninit(),
>>> +//! #     MaybeUninit::<SampleItemC>::uninit(),
>>> +//! # ];
>>> +//! #
>>> +//! # for (i, item) in items.iter_mut().enumerate() {
>>> +//! #     let ptr = item.as_mut_ptr();
>>> +//! #     // SAFETY: `ptr` points to a valid `MaybeUninit<SampleItemC>`.
>>> +//! #     unsafe { (*ptr).value = i as i32 * 10 };
>>> +//! #     // SAFETY: `&raw mut` creates a pointer valid for `INIT_LIST_HEAD`.
>>> +//! #     unsafe { bindings::INIT_LIST_HEAD(&raw mut (*ptr).link) };
>>> +//! #     // SAFETY: `link` was just initialized and `head` is a valid list head.
>>> +//! #     unsafe { bindings::list_add_tail(&mut (*ptr).link, head) };
>>> +//! # }
>>> +//!
>>> +//! //
>>> +//! /// Rust wrapper for the C struct.
>>> +//! ///
>>> +//! /// The list item struct in this example is defined in C code as:
>>> +//! ///
>>> +//! /// ```c
>>> +//! /// struct SampleItemC {
>>> +//! ///     int value;
>>> +//! ///     struct list_head link;
>>> +//! /// };
>>> +//! /// ```
>>> +//! #[repr(transparent)]
>>> +//! pub struct Item(Opaque<SampleItemC>);
>>> +//!
>>> +//! impl Item {
>>> +//!     pub fn value(&self) -> i32 {
>>> +//!         // SAFETY: `Item` has same layout as `SampleItemC`.
>>> +//!         unsafe { (*self.0.get()).value }
>>> +//!     }
>>> +//! }
>>> +//!
>>> +//!
>>> +//! // Create typed [`CList`] from sentinel head.
>>> +//! // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
>>> +//! // embedded `link` field, and `Item` is `#[repr(transparent)]` over `SampleItemC`.
>>> +//! let list = clist_create!(unsafe { head, Item, SampleItemC, link });
>>
>> Bad news.
>>
>> My build triggers this warning:
>>
>> error: statement has unnecessary safety comment
>>     --> rust/doctests_kernel_generated.rs:7103:1
>>      |
>> 7103 | let list = clist_create!(unsafe { head, Item, SampleItemC, link });
>>      | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>      |
>> help: consider removing the safety comment
>>     --> rust/doctests_kernel_generated.rs:7101:4
>>      |
>> 7101 | // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
>>      |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>      = help: for further information visit https://rust-lang.github.io/rust-clippy/rust-1.94.0/index.html#unnecessary_safety_comment
>>      = note: `-D clippy::unnecessary-safety-comment` implied by `-D warnings`
>>      = help: to override `-D warnings` add `#[allow(clippy::unnecessary_safety_comment)]`
>>
>> This probably needs to be:
>>
>> 	unsafe { clist_create!(head, Item, SampleItemC, link) }
> 
> Oops, I sometimes run clippy wrong. I did: "CLIPPY=1 make" instead of "make
> CLIPPY=1", the reason is habit. I have been doing "LLVM=1 make" for llvm
> builds since many years.
> 
> Anyway, the fix is simple, just need to do // SAFETY*: as Miguel suggests
> here, instead of // SAFETY:
> https://lore.kernel.org/all/CANiq72kEnDyUpnWMZmheJytjioeiJUK_C-yQJk77dPid89LExw@mail.gmail.com/
> 
> Should be easy to do on apply if Danilo doesn't mind. :) I verified on my
> setup that it fixes it.
Here is the clist fixup fixing both the clippy errors in list.rs:

https://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git/commit/?h=nova/mm&id=226e1c75932aec3fde66b4b4a36abd8de919c6da

Thanks.

