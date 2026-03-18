Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHF2FvbnumkpdAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 18:59:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF282C0CD0
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 18:58:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95DD10E44C;
	Wed, 18 Mar 2026 17:58:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="e/4yGZmN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013047.outbound.protection.outlook.com
 [40.93.201.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 417FA10E70F;
 Wed, 18 Mar 2026 17:58:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EXtEd3PbgkXn8fejm201gOfVAXsSGgNRnsc1t+NbZzkpcxgOQ2o588ub4689KFTqY5r9hn/E2c5Z1IpkhgwKDuXCCf5YkToRAOTMTv59adG3r7uMU9tDwJMgOZotyCcCmiasfuaTbXAe8cJLAdbSYlDwM7pS+W9xWRYiAJDncH3cVmNH/CnRJiu03J52tZBWR2hwZJgCCavOG+TPF605QVMTMsD3d8k1vIz2HAqQ/aoM4V5yyU2o92ykLepkah63i6uKRDOfeZZm2535WWwaqx5p9YpL9u3lfF+Wn9YP68PcOlhfANM6QfQa7mI8wdv41wiHWy0AheF8QU4cXTLipA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x3wh9yhYD38Gto0xfRWcHKzhbBx5g/ha95WJcFnrnac=;
 b=J9HxHJRfln3eye7X39giZpnITd0yqMuO9IhRCDF3aIjEwvGD+y6EZPQjvy1IBNjb2gJl9q4Bc0k/U2drSr/bK4/zf9JuULPU17bWrDcl/r2N/qlpoGPm6t65/kga0fgmlqVe6QlRDWe243yLq1ibbHE00hL4YqdqqGlH+RbQQamCIq6OHohqodhcO6hR7pXp6qJ7SwqCeL7yQWiJOlMeaJcglQlxOBNf6xH+OSGdcn87QaXVptQuFkgsbUGppHwj4t5TBoou3QH+Zh9bfejh3O5R0IAjN3qXIWnOcunYfrxN9pnZJFfIjSW6p6AWz3QtHk09A7FoMc8w/Fa2zQjWyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x3wh9yhYD38Gto0xfRWcHKzhbBx5g/ha95WJcFnrnac=;
 b=e/4yGZmNza8CxsYjeoZTc7qb2Rt0AVYG3T2z7mHfxzpddSjz2rKlTHmGYPnYa6LYUMjYJH1eF1BwpdsJa2tjwerkXgMUluZkKMSUqg27258tcWpL2YOovTOQsAbgI1lu+q3a+PCkPnOjqVrpWovXSldmZF8gAqHkxWzLkiqVGAfYoyQSNqnLp/i0WnoMv9nqX16rpho/SkZC6PURmZHInbvfPI9BUbA5AXANeuSvClhHKuCaOv7Lv1jhF4Vy+xC5X/1mBS77M227AcmOs72BzMCiohFNb/nt1wBQG3zOWkY0yA8+h3JYtJTy8+yg8gsCUkEv/B214hPPOGaB8RVKQw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BN7PPFED9549B84.namprd12.prod.outlook.com (2603:10b6:40f:fc02::6e7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.8; Wed, 18 Mar
 2026 17:58:20 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.016; Wed, 18 Mar 2026
 17:58:20 +0000
Message-ID: <111cf11a-af95-4dec-994c-ebec6af35625@nvidia.com>
Date: Wed, 18 Mar 2026 13:58:15 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
To: Gary Guo <gary@garyguo.net>, Alice Ryhl <aliceryhl@google.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>,
 Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>,
 Alex Gaynor <alex.gaynor@gmail.com>, Danilo Krummrich <dakr@kernel.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@gmail.com>,
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
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
 <abppV3e91iVzplcv@google.com> <DH5Y1UR318WP.VNY18WXEZHDI@garyguo.net>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DH5Y1UR318WP.VNY18WXEZHDI@garyguo.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1PR13CA0117.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::32) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BN7PPFED9549B84:EE_
X-MS-Office365-Filtering-Correlation-Id: 0dd37e4e-849f-44b7-8f0e-08de8517f05f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|13003099007|22082099003|18002099003|56012099003|7053199007;
X-Microsoft-Antispam-Message-Info: kU06GA3Cw0CBCGvFO23LnHW/5iCxuQ0dMVue4VEVh92paVZWUaOY/pjKKGfA0mkNeMs81IqKxkS2d1FRJGvRe2pwJpE0sRaQvlmJvTvpprYLYoJQFTvKdThXUEgDzbsobxfFhBGpbbi8buQ9wbHCPIgYmrra79KFBSPaMk9q1G+B1WXnQybAyqWCJMOnxkSFvhorMz5Yh5ia3lGQPLw60eCUB3YyDR2yHszK12qJvoC4TwptPMkG6xEvF8t/UPbJuwdmzC3MxFBA7B+aTXlEED9wMan4Vwwax9R/uTyc6tby+Zw5rACNrSYDlWFeasb3Hsqft6u8Xen88gc5ffGeYjJvTRXfe+FbQQNYFsQvnAbFXAhBjcRZ4t002uZ/kpZHhjeqjxP1P4pPTSaZ7XGe58NKbHBjLPiewQskc1lvuzTbRpbMkUksXDEbHysE6+G/HpZtKvCJNkNwNk0IQoY+d300aIqpOxS3xRIjemUKALqvQYHjAwLDBwAjSG4FuqYi3zsWUu28LFr9aipIpBPYW/r/3CvmJ2JtE1aDVKZPB8BeNSFYKDM6uJlZHkT6XK7jyLtcRsU/WNFwhIVaBRB8aC8dX9KdGaZyvHk7LRzhhEr5kwvZWx+S+cWBRS0ximYbqZZjmuDZpJ668hf9TwEUc8P5L1dWBgC/c+15QTS9MgRoM4IgCBL+BbRXtw0JLoirXEZWECzNtufHvmp5nuEjWbp7vTCd6yTK5bPFaa6fm7HliH4I4npepLQmjuSSmTHh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(13003099007)(22082099003)(18002099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2RzUnR6V0VLMURuS05OWERWc2YzbmhUYUo4UVZVNWZGamxlbTh5ZkttUEhs?=
 =?utf-8?B?MG90ZW5XMTY3d1k0VGhZYVZPZE1UUHNHZ1M5M3FVdDk5cHl1WGw5WktWZ0NZ?=
 =?utf-8?B?MzZkelZLVWgvQXowYmJmRWQ4a2RyNHBzYTZYclVKY1liankxdG9GeVhJZHky?=
 =?utf-8?B?cEJMbFJldUpZU1NuM0djRGZNNWFXa0k0cnFCSmZWeVhtL1VoK3VGU1pRVnA4?=
 =?utf-8?B?MjVLVXFjVjljVVdQR1d6TWUrUzBvNWhZWUppOXNwZkRQYnYxaDQzTUtkSjV0?=
 =?utf-8?B?Mm9NMHg1VzQ0ODk5Qm5EZTViQ280TWptdXBsbnJwR2hNaWdUZzV2dllGMlo4?=
 =?utf-8?B?M0xMMGc5M28zOGxXZUdaWjNOQmpWM3ExT2UyaCs5cmhsNjZjVTIxUUNWWEFJ?=
 =?utf-8?B?aGIwNHBaa2dMRldCbGdrNFVkSlZUVDU3QjVhNjYvTHc0Z3grczZUQmx5b1No?=
 =?utf-8?B?bkRQNk5lbE53clBwZzdYeGg2dE1oQ25qd1FRR2NiNnlzaHBKWW5leGpKVkVz?=
 =?utf-8?B?TDVnaWYxaTZna3VGSUgvYy9Vb0FUSEZpUURjaVdpdHdIRmpsaWs4Tk9NaFJi?=
 =?utf-8?B?a2RPY09oaEFBZ0lLZW5YTkJwNFFoRjFiWEdLN1JhMmd1NEFJby9GRHdlaFQ5?=
 =?utf-8?B?YVk1Mm5iMEdkNElCN0ZYRkh0b0hTb3h4SE9WY2RacTRXK2VNQkZoVjRiVFdy?=
 =?utf-8?B?d1FMc1J4TTVad25nQWtzSmlpbCtjdU1OZ2lwTnI3NytmeFRxakpRaXZkK3NP?=
 =?utf-8?B?OFJLYkRITEc2cE0wVlB5eDY2bTllYks4UmVQSWc4UzFJVjB1cTduU2g5WHNX?=
 =?utf-8?B?aE9YVDVPaGlsOXpRalFmVUlKWHdPTUt2ZlBBT09EV3c4SWlnZEhMT2svNXNs?=
 =?utf-8?B?OEZIOC96QmVKNDVBQ3d1N1pPWGlneTc1ZUpObUp1c2ZoM0dPVGovWHZLOFRK?=
 =?utf-8?B?b2VjalhuVjA1RFY3bkw3cFM5S2o0SUpuaitwRnJlbGlMRlNxTXM2VFZlL3c4?=
 =?utf-8?B?SXVnQThMbWdpYWx0V1hCMGJqcy9yRTFRcTBUb1ZPRlNTUTZ6UnRVUlBucnI0?=
 =?utf-8?B?YzZpRjVGa0lxNUlneXBmYWRPMWp2ODJkRlhHU2dHWU5haDVqbXVYTlJ5M0lz?=
 =?utf-8?B?cjFEU3NVL011MjVpNUlXaEtqeGxqZ0VkNG5oUWVKTFdqN2lKcFBHRTFCSU1L?=
 =?utf-8?B?Ujh0TEQzR1h1YTBwZkVMb3FiZm91RElmZEpXRlV0TnlFcE1OdmVNSDZqd0lO?=
 =?utf-8?B?NlJULzNJYk1rVnV1MUd1cEFPSDBXcTlBOXdQVlIrYUkvNHRaT1hWRGg1Rzk3?=
 =?utf-8?B?dnF4SDhuSDJ6NEwvV0RsSS9oRWFQcmM5a1ByYldwTzJMYURKdmlnb0NySUFR?=
 =?utf-8?B?dGRxMmxDWURNWW1MRUVXaHpISHFoMTNnaVFRbHA2SDNjZFRnWjQ4OWQ1bnNM?=
 =?utf-8?B?cTZzb2NMeXZIS0V0b0R3WnRpd081MFFXNktHUFd3ektNZnArWTQ1Wnh3Y1Vr?=
 =?utf-8?B?eVBtaktDOWFpdXdSNmRxUjNodzBkYUZtVE0yM1cvaGx0WTd1TmpibGpjTkdm?=
 =?utf-8?B?RFpISTZ5R0N5YU9BVDJSeThaV3IzbWtmK0oyWXdEYTQvUlNoYVFFZjA3eklD?=
 =?utf-8?B?MllKTEhNQkxiVGxwY283L21XZW1PelZWNXQydDV1T2dYdWFCdnhNY3REZ3Q0?=
 =?utf-8?B?NFdXejRmNTc1YVBJQWFya2FCK0Z3d1VFamxxSDdBOWI1QVpQMGV5TmMvb2hl?=
 =?utf-8?B?WFU0WTVlSGphcTZkVVJoeVVMK1BGeENLeW1CTDVaU1BGb1pJVWN3SkZBanM5?=
 =?utf-8?B?Qk9HZEk2bFVmbEl5dFUxd3hNdzNKV2haMTBmUHoxNWpqVm5FYnJKdnBkUkVh?=
 =?utf-8?B?OEUyY3A3OE1oVkszWkR5Z1FxY0xRdElKMVVldUhjOW5yU3hDZUMwNkxKMXR3?=
 =?utf-8?B?eHRta2U1VzZCbHFyRFVwVkFzUzdzblhZdkRyOHpId041ZzF1ZVpNZUFJbmR3?=
 =?utf-8?B?TlFscmdnUXNDUzd6Yi85dDhRNHBhYXpUcjJXUHFFTlk3bUJ4bUZmQTJtem1N?=
 =?utf-8?B?TUNkb2ZXeThuOVAwdUovb3I2VTFRc1I3b0RsSUt2MFJndE54YXhTbEo5MWJy?=
 =?utf-8?B?NEFRcDVrSXRrcHFsYklVMmNXS2xFZzdEamZDd1MyV3hWZndyc2U5RytETXNK?=
 =?utf-8?B?TllNcExRZUdLaklHN2F0cFJzNHg1aHdod1RtdG1oVUp1dk1ReENQaU9CSzFq?=
 =?utf-8?B?UVl4a29RcCtHQVZ0QlJWdUVuQ3l6RngvbC9SZDVpTHJqMENxVEdiUktXNGJO?=
 =?utf-8?B?VDNTWmRJTFBOdDhDWE1OblBydlB1azFHUFM3WWM3bTVXdTNsbUVzdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dd37e4e-849f-44b7-8f0e-08de8517f05f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 17:58:20.0628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AzvL4QMf2fR2kknjnNIzU8IrvT1l/gFsLt/OnvZKOKUf/hbH3i8XzUc+k9T2o0fdnmgjxfNTKJhbHnv8Skk6XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPFED9549B84
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
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[53];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,garyguo.net:email,mod.rs:url,module_name.rs:url]
X-Rspamd-Queue-Id: DEF282C0CD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 9:31 AM, Gary Guo wrote:
> On Wed Mar 18, 2026 at 8:59 AM GMT, Alice Ryhl wrote:
>> On Tue, Mar 17, 2026 at 04:18:46PM -0400, Joel Fernandes wrote:
>>>
>>>
>>> On 3/17/2026 4:17 PM, Joel Fernandes wrote:
>>>> Add a new module `kernel::interop::list` for working with C's doubly
>>>> circular linked lists. Provide low-level iteration over list nodes.
>>>>
>>>> Typed iteration over actual items is provided with a `clist_create`
>>>> macro to assist in creation of the `CList` type.
>>>>
>>>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>>>> Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
>>>> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
>>>> Acked-by: Alexandre Courbot <acourbot@nvidia.com>
>>>> Acked-by: Gary Guo <gary@garyguo.net>
>>>> Acked-by: Miguel Ojeda <ojeda@kernel.org>
>>>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>>>> ---
>>>>  MAINTAINERS                 |   8 +
>>>>  rust/helpers/helpers.c      |   1 +
>>>>  rust/helpers/list.c         |  17 ++
>>>>  rust/kernel/interop.rs      |   9 +
>>>>  rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
>>>>  rust/kernel/lib.rs          |   2 +
>>>>  6 files changed, 379 insertions(+)
>>>>  create mode 100644 rust/helpers/list.c
>>>>  create mode 100644 rust/kernel/interop.rs
>>>>  create mode 100644 rust/kernel/interop/list.rs
>>>>
>>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>>> index 4bd6b538a51f..e847099efcc2 100644
>>>> --- a/MAINTAINERS
>>>> +++ b/MAINTAINERS
>>>> @@ -23251,6 +23251,14 @@ T:	git https://github.com/Rust-for-Linux/linux.git alloc-next
>>>>  F:	rust/kernel/alloc.rs
>>>>  F:	rust/kernel/alloc/
>>>>  
>>>> +RUST [INTEROP]
>>>> +M:	Joel Fernandes <joelagnelf@nvidia.com>
>>>> +M:	Alexandre Courbot <acourbot@nvidia.com>
>>>> +L:	rust-for-linux@vger.kernel.org
>>>> +S:	Maintained
>>>> +T:	git https://github.com/Rust-for-Linux/linux.git interop-next
>>>> +F:	rust/kernel/interop/
>>>
>>> Sorry, I forgot to add an additional F: for the rust/kernel/interop.rs file.
>>> Danilo/Miguel, do you mind adding this when applying?
>>
>> I think you should consider a mod.rs file to avoid this. It's tiny, and
>> just re-exports submodules, so I don't think the "mod.rs name in file
>> view" concern is that big, and IMO having files related to interop/
>> inside the directory is much better than having them outside.
>>
>> Alice
> 
> I wanted this for all modules in general. For modules that grow into multiple
> files we should really use mod.rs and avoid both module_name.rs and the
> module_name directory.
> 

This is how it was, and I changed it based on Alex's feedback:

https://lore.kernel.org/all/DH3XD8NUDJNG.2IMPYC40D8DXI@nvidia.com/

I am Ok with both approaches. I would request Danilo if he's applying it,
that if he could do so without my additional re-send.

thanks,

--
Joel Fernandes



