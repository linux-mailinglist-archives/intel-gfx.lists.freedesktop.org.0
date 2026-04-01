Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yG6JJjypzWmvfgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 01:24:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09661381A92
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 01:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C2E10EDDB;
	Wed,  1 Apr 2026 23:24:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="ODN6v2d/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012018.outbound.protection.outlook.com
 [40.107.200.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D6B10EDDB;
 Wed,  1 Apr 2026 23:24:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VWUFHmgspyaorXoGI/AiCrAmLxeYSl6Orcn5iAQH1dD6jZfKEz3XaLn62TgBZq7EpwiCjLDVlwss7A8yrcglh6Zys82qVOlWrnEPdknXVEXIySsdxyP3GOXJ5hwdW7qHgQouoVAfVNn1zthK7hfXT2290KtZFXUn3OY2dgH0gCRY/duhRHgTjE1TdsMYF3KA2hpkb6kYfpunIjXMsetUkHL6ozKTZTt+0tjIjOZjVsFbG9mab3JA2TytDmnB3mbvdBDtuJQHmce83Xmr4+5YdJsjYPGqlMrWw1Cg9Cd5bj/WNnBXh5K5hMt0mPaQDyZfgn0xuYGBUavmHTbVyiS+Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KviBdLr6uPK4mR7oLnNU9oLA8ivdB/r7nCije5j1nSA=;
 b=dxv7fvrHlllCDsqccDYRBfuBS0ux4WVflOrbZQzwQ71tlISn4149LGATfBuzn7yJcxVsdnfS0T1dx+YRFQ8pUWiEo0rKvVNejlj6Nq8g2H0aLVFzHo7HduZ5VjtsTNIdGbKUNqbtC7jVNimnPFPQo6I02X7m7iWb/0ztKeQxhg0SkGgvMVg3gZmbfcoQhpNEQvlxfAPOV9dn60tTgGJKkDwU5b/kT/fzbiWJ2rIYZ9CkRyAhmxT/42z/uR+Dw1za0KAKc5nB0eGnE5KLtYe279OMy8O2RJoQ5xLx5/d1o3cPNEptbSHC03Ykh6aDA4Id9zNtqFNmhNhnWrUdrGUXXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KviBdLr6uPK4mR7oLnNU9oLA8ivdB/r7nCije5j1nSA=;
 b=ODN6v2d/0b6JCChXQP6S5Wqx7xCfxJP5qZmd79MIHn+3VKuqZkEMFMs6lSgbK1JOFlYtJUv7DYItibMttCYxJAAR7HfZGTVCNFOEqfNHFoY6NBj0tBEoqpXr6hNe4BqHJSLyZ2oAlF9yQ9BFdlJYsXceSD5NLEsBomBKjjlk1Lq7MO8r1eE9nWxzuXCSgzLbenIXD2Sw/KbpXz7Znb9AQryu+Ml9quNW7jD6+ux2kTDNUQd73G9C8R8pR/TwBDyzZ5m2IhDDXjkBCi9UsU3TEQEbP0llGy55v+qBg9QsYnH75cFpLc93O31YCL6USz0bxhIKGa4bwxpdDExYpCptNA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 IA0PR12MB7530.namprd12.prod.outlook.com (2603:10b6:208:440::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.18; Wed, 1 Apr 2026 23:24:36 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Wed, 1 Apr 2026
 23:24:36 +0000
Message-ID: <d6fe3e40-0310-4b90-ac8c-8beeec886f90@nvidia.com>
Date: Wed, 1 Apr 2026 19:24:28 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 02/21] gpu: nova-core: gsp: Extract usable FB region
 from GSP
To: Eliot Courtney <ecourtney@nvidia.com>, linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-3-joelagnelf@nvidia.com>
 <DHHOCGNIYDW3.1P7YIMVLW93IY@nvidia.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHHOCGNIYDW3.1P7YIMVLW93IY@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1P223CA0031.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:5b6::6) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|IA0PR12MB7530:EE_
X-MS-Office365-Filtering-Correlation-Id: fcd178d0-207e-42e1-65ba-08de9045d663
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: PHa8x363CByz+bVKQX1UlhNnpH13FJA4BFEhChwEAAzh4zHIC9hm3F0nO0zaqsYMXYB0yIBDEKKlBq7iYZefTWRBUk6oLfS/E2c7lhqixurEPKkwPHiALJcZNKL1RPrxYFX7wVrX8JDVbdbpWvFmuhPM2IEtCYnBUSEJwXSr5robqPSoHGP93za8ne+lYUnskPJafDtdNtSDKvsXAddnXD36lb0eJwhFcY7ZmGxQZWquxGe3F4wAUEGtWkFUSOURgB9SxDyBvvKwh38Wp9XZhlz/lrO0dL7iEcV2is9o0rNtpmF+CZghgWktV/QDn/cSNFobaKo6CmW+kZ9d86MZ9Uror291zYOua98DpC8ME08SCtARa0xfPJUzcfBnh/9StJ5Hj/fnVVKj71WxgBgDxUDg+FKBQAbEgjkbxYEQstKpnM1KsvDcffV6i8g40RBOZJtgh16BPX7pg55nl3VRWDqw0uG34segta6kc4HlI5dKcilJBItDXLhIGFEZWUpd5R9vMus85i0zwdPGotQ/b9lOUEZFqa1ri4UBvRpr1SSEnoPz6KFTFoqsfIcU+Kq1g/Nfav7tC1CTSE7glp5X27fNZ9nKpFjsOysoYD9pR2Tjh+nrcu/yTPvMCRS4Op0L8BNUZoh40ZP/9A+NACzOB7wLt/jSH5j6OoHpnZEykMex0th9FJqHMnUHlRacMsXOrnOL2ax67dnvpxGS96CXVL6G9mBSXGes0nw/lFiILqQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTZ4ZDhFSkh1VU9YT3JWNFVqL092TzIxcHhqUVN5SXRwNmJmdURzeXdpZjZl?=
 =?utf-8?B?Q2luTWx0ekV4KzJDTXJIYVg3blU3aURmM1dXTExwZXJRckJhUzJIaXFCM2tO?=
 =?utf-8?B?MDMwN3VneUE3SXRWWGlYSWkvT2Z0VlQzWHlKNEZkMVRZQUEzMno0NURWTE90?=
 =?utf-8?B?M1p3elFpK1VacVNGTjdVbmxmaUtLQnpneTQyWXNRRmtBR2RIdWwxN0JnMEk0?=
 =?utf-8?B?YTFybkZuaEcrNytldGdTekM4ckduNkxZYkQyb1JwbWJuZUNKOHk0L2tUZ1Ju?=
 =?utf-8?B?YWQzYWNxUG1RZk9Kdlc5VHpuazNIZmd1N2hiNXpwRzFMTDhTM2NmeUFKaEtC?=
 =?utf-8?B?dmRBTHBsTmthbW5sNGFVelF6MkwzeGNZMEdRWkZWcFdkZjhUL2JTSU5UOVhH?=
 =?utf-8?B?OFQ2Yi83L3ZaSjFTZDN6VnluRDhMZzJUaXVmN2l4OU5Mb0drUW1kOTVQRnRI?=
 =?utf-8?B?aXhvMW0ra3VZSG4wYzl3b1NFN0tyT3EyQWxmU0l0NjREd3loOWJHOVc1cm05?=
 =?utf-8?B?RVZMbTlGc0x5YytXVEN5NkttR0FWK2lxdXFsZVlmaktYTXpCcTVzRDRqTGZM?=
 =?utf-8?B?NXNsNlo2N1E5OWhFbFRBcVRsRmtzTmpiVkQwbmV4VXNJSUh1bjVIK1RaNjg5?=
 =?utf-8?B?cjNzRVU4ZW1sbWhrTmlxZDNVYStTbGQ5MTNFSmZ2ZmxaTGNQQmg3VnBOUGZD?=
 =?utf-8?B?aFBiYjIxTitKOXk3QytIdWViUzBacEVJY2hjUmNpWGI2TERsSzZ2czZUSCtL?=
 =?utf-8?B?WW83M00xWVA2Ykl3SWJSaWxyMENaYzExMFU0K1hTWm5pUk55WVp2ZXorcVQv?=
 =?utf-8?B?RkMwdmVzK2wxU0hZK2FXLzdaRmJwamVNbTZYRk1reFdPOG94Y1pJNGFTRUtM?=
 =?utf-8?B?UXNFYlk4NlRJaW9ZQTk5NCtvSTNEOFd4QkNoOHhBOUZUNDZCOEtqbklzYmpB?=
 =?utf-8?B?YmNzaHZnVWFnRUVJNXhTTE9SOXM1ajk2bWlyR0hBYlY3eWtNSlZxOXdpZmFv?=
 =?utf-8?B?U2s1RG1DRFViRmZKaG8rMC9Tbjhaa2RQVkNDbWtXUTFxS044Ri9SL0dFUzBJ?=
 =?utf-8?B?UmNLa3pyQ3c2VGtEVnhyZzA3ZCtRUmMwZlo3RTNNMlZSS3QvZUNSN09ONEFB?=
 =?utf-8?B?YVNacXE2QVUwS2hxbDduL3VMZi9hRnlqR3AwVHlWN0RKSUlFYW5xcmNpQzU3?=
 =?utf-8?B?MlFjZ1RsNkh6ZHBlYTNuMUllTVA4a25lWHhMemNzQk5adW5XcVVlc3VZekl0?=
 =?utf-8?B?bTd5TzgzcGRnZjZ6akNMRCsyc1U1a3Q0YW1CVmF2Rnh0VUh6ajR0Wlo3ZHhp?=
 =?utf-8?B?L0ZiNzlxQXFXNWJRRm1tMXlTRVE4Rzc1ZDhUNDYyZHRWM1ZUWkYxWitlYWkr?=
 =?utf-8?B?QU5XOXBvUW5ub1hyNUhXOFIwTmlyakdweFRwd3NPZU93RFhCVUxkTlBaOWl6?=
 =?utf-8?B?S2tsTjdsQkZ6UFV6R0g1MTZ2NW1KZXNKT2o1bFFGdmZZbE9BZDhDT1UvM0dw?=
 =?utf-8?B?SWwwUGhkR200bkg4Q1plM1VteXNkVGpxWjhrZERBN1hQU0ZWTGNraE5xZjdi?=
 =?utf-8?B?cVZ4NU92Q0E2UkRqNTQ3OTBveGZiSHBwRmpvQ3RKTXJLT2owenNzQXBSRGdR?=
 =?utf-8?B?SGVQdWQ0VEE4M3VzVFl3Q2pzSjJWZ2JIWkJtaCt4U0R6SU9mWUcyWGN3UW9R?=
 =?utf-8?B?TnVSV29TWENWakNoZGdjYm1PaFhFcWNQdGJ6UkFxMC9YQWZnQUtZUGhKUS9I?=
 =?utf-8?B?VTFUTEFIUFFMam9DTDJoTjNTS04zQW1XcmNYdlhLMisxN0ViWmdycFNzeVJx?=
 =?utf-8?B?QUpmc1JvRkpIZVdicnFOdVVlVXNSZmY4ek5aME1lQnlpQlF0ZjJCYXhPYnZP?=
 =?utf-8?B?NDRZdkNXOGNwdGZjQ2FvS3l0cTR3SVUyWXNRcms2UWJ6aEgyeGFRWGVoY3NV?=
 =?utf-8?B?UGNUVEZCeDVGbmVDaSsyeEd3QWpVUWNIM3JQcE54UXhFdTMySzgyQ2Fpcmlx?=
 =?utf-8?B?ZW8wY05FS3duelRaU3EwL2VJZXQ3TmJ0ZTdwVXVwaG1ta2FEUnVWRTBDZkRq?=
 =?utf-8?B?REYrZk5vSVhlWjM1Z1BrQzRzTy93cGppVHhucThuODA1NG9BUmJCN0ErNFJN?=
 =?utf-8?B?bG9GZE9ZakZjVjUvKzFVRzJZcXJ4KzRnOVdmS2lZcjdEb0tnWXpUd0dsL3FW?=
 =?utf-8?B?Si9QTEJLYmdnaklhc3oycEhyYUR0V3FBTFA3c2ZXNXpsY0Y2N24vMEtPQ2hO?=
 =?utf-8?B?OUNoQVQvcGF0cHdzSzFtOVl6TVNaNHhML01idkdKMzZiSEdaVzRvdUlkNWpt?=
 =?utf-8?B?cjNPbThaOWJPamk1cUgxalluQVVzYldTUzAyTnIwS21MQkVHSmdjQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcd178d0-207e-42e1-65ba-08de9045d663
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 23:24:35.9722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AK0OLhWC/KtQAxBuhg/Gt2zzV0hvhdFdnUH6xz4A4zFbs3OhHKZWpv8k6J3HWVYP8SbBr75FExyjsZrKfonz8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7530
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.983];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 09661381A92
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/1/2026 4:27 AM, Eliot Courtney wrote:
> On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
>> Add first_usable_fb_region() to GspStaticConfigInfo to extract the first
>> usable FB region from GSP's fbRegionInfoParams. Usable regions are those
>> that are not reserved or protected.
>>
>> The extracted region is stored in GetGspStaticInfoReply and exposed as
>> usable_fb_region field for use by the memory subsystem.
>>
>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>> ---
> 
> Please see my feedback from v9[1] which still applies.
> 
> [1]: https://lore.kernel.org/all/DH1GK30TUB4V.2GR6ANXIZDFFQ@nvidia.com/

Yeah, I am seeing it now. Amidst making the earlier 7.1 merge window for
the DRM buddy and earlier patches in the series, I missed this. They seem
to be simple nits and I will address them in the next revision. thanks,

--
Joel Fernandes

