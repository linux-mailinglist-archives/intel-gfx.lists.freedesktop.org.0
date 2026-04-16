Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOFXKEZw4Wk1tQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 01:27:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC99415925
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 01:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BA810E949;
	Thu, 16 Apr 2026 23:27:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="j2i8G3yy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com
 (mail-westusazon11012004.outbound.protection.outlook.com [52.101.43.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F8310E24A;
 Thu, 16 Apr 2026 23:26:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=grueFMaoQYn/yGq1WEk9b/onXEV48n3I8tcgyf+6QbUJ6I1StvUXNV2RIM7WO4vDIKbLHPDWdHQoTUwaBiFh7E+241hwbK7QAJ09viz/UWqTYXNujfZmiBDz+6HT/pGWcYAwulVfvIrKwfKZOIImV0BZFOtHTSo5nollOOLWYi04E4jjKbhIs04dOSXs38FUigFlzaPqNkmVKYByLWV7q4zwaZ/76ubCK8wzXcoNRzUGi1fzRW4k6CG9zeiMV1kcxUaSOwtYfIBBCh7Ab95/5LAiHoPdXQOwNneD1sw62UrAGqvTm1LDJ86ccLh9NzkatwC9cGggLl/+Joe2pN/pqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bM5joRx2PKTYhPukBkzc60Vnv024VFiPvS/sD72ZAag=;
 b=UyJnjFj15NtZJTFZHkvQUz2I5hvC0gSIl1MHRRHlWkXuOtYP2/MFPwxKw/YTAwxZK9s5HLTTaXOw9ByPnpuEKALsAUrX2NRHCqhrJSmyBVglTzHVh8TUN2ZSCsHWuOLhOAeFFd2UhZrZHaZI47aA28ZqwJX+z/syJPb1u1kIdRHu9/L18KFCj949k/V4uP4Yi6fHacdoJy+mxa5hGTWnpiAlokxPbmUPSpxX4qUxsAcRq9WLcsNXAho5zV6nSxOlYbzryxofwSZEwPaxXH/BH8Gax17CCX9Ohh9fffOgl2klx1kmgepkqmIPGpTMxIfqvORFKFi8et2qfuRSbPDezA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bM5joRx2PKTYhPukBkzc60Vnv024VFiPvS/sD72ZAag=;
 b=j2i8G3yy0s2L1UUjPmgLxfGmlk2IL0iWAAwV7/kPYEsxBkO4DrXvSSJcmurvVC7R4ckrNen2YwBtL1zPwmBFnNN+RMQnfdzCPetdZbM67r3kCSyWVvce0OJHAjyhGYpyPYH1SjwABwbR05Jgtg1If/HuYPT8ytQQd5gzahey0OwJFaUd3csgVqvTjZ14MnJLPVx/D3M5fMX0CtyjNs34rNkF0NKKZcx5IY7Dc6ZmzaIHMKut/4ahABpfMaUXFw75WwLHOztappdosrAa8i1PmeCWMs6J9O34reVkkzPY2tsnw4KsWcF5atLyqRqcFSSXk4ODDqsjCFvtJ8vTLQ6j5Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 PH7PR12MB6787.namprd12.prod.outlook.com (2603:10b6:510:1ad::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Thu, 16 Apr
 2026 23:26:53 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%5]) with mapi id 15.20.9818.023; Thu, 16 Apr 2026
 23:26:53 +0000
Message-ID: <b0c5267d-ea77-41c5-94d4-39c651761b3c@nvidia.com>
Date: Thu, 16 Apr 2026 16:26:48 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 02/20] gpu: nova-core: gsp: Extract usable FB region
 from GSP
To: Joel Fernandes <joelagnelf@nvidia.com>, linux-kernel@vger.kernel.org
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Alistair Popple <apopple@nvidia.com>,
 Timur Tabi <ttabi@nvidia.com>, Edwin Peer <epeer@nvidia.com>,
 Alexandre Courbot <acourbot@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
 <20260415210548.3776595-2-joelagnelf@nvidia.com>
Content-Language: en-US
From: John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <20260415210548.3776595-2-joelagnelf@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0058.namprd02.prod.outlook.com
 (2603:10b6:a03:54::35) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|PH7PR12MB6787:EE_
X-MS-Office365-Filtering-Correlation-Id: a6f3ec1e-b186-4d13-48a5-08de9c0fa460
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: jt1S8HSfdMDQtbOqXTjcJaaCwpvyI55o1nSOSseyaNYR1sX/5xPgr3rzM1fP45yKSIL9S2+tiZmX+8CfEVmSV/NMXXIkIaUTEe6YoRujw6r8DmIv1Q5SPWAQHnf2kTbSNjuGRB2PLNUNPQ7htDDmo/rjdobIiey0n9xJDsC9Q3Xe6qYfCsYq7owILQe+b3cAVFYdZ6ayEtau4XbmDoEsw30NPW+CTdaRyQ6uWIsnr7K9A+jTxXV5/SO0VBwR37goYLPDKvozXVE8BU8XN2+D+J2FG4HNgLQTYgzBO5cbDpqSxYofnO5jTePrwjJkfk82J3IdSjOFT2D582j+22mk9oX76TDb5IsxKRo/yR/JGRpSNpf/UPtWEWpVswv+KCoEdf6FUWrtWbw7Eh0X9KaEmsDqzQhILkG6Jil2xYopMTZva7yo24soACBRYZhXnKZy+NNc48cHJCrWlt+Tf9GwyZuF5uggNQmSQ22vRRnSscWju+hXaBCRGXKNIlJPL4Ns4HZmLg9FjbA80qFOA/uw346bYGsAsOu27LgZm7a9URsI/wDwbhKxspgrB6HjXgJxoK/ldGvdd0y/8vsP1dtVraTJw1SZzxmk9VRt61vF1GBmKAkcvC5fzfjvgZ33+rZO1pnC5DTybhobRVtnXgd5J4YpUmjii0fRNS1XuHCjZVHr2pvYuaepfiSdQGXNPyyi0t2jVuVbcT7An2GGSOLi+1K0wCWFGlYWxpIN3Geur8w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PR12MB9416.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWN0WkZOQzFqWHhIeStzUTdSZ1c3YUxUZE1mazMrdWxnbkw2T0FacWlyZGky?=
 =?utf-8?B?RUpQU3p5OWFaY05RSjlLdXFuaXJ0TjVvTjkvTERkTW9zY2hvWUhGZEhKcjBx?=
 =?utf-8?B?QTBwZmloOVdGaUM2NzhsbzRtaCtPOVE1bmp3SHVFa0syaldLL2lEMmtFbWJp?=
 =?utf-8?B?ditva2RsU1FQRlVsTUhNM3drWWswSmtzL3ZzS3FhTXNBcnVyRkV2czJ3a1Q4?=
 =?utf-8?B?NFgrMmhyQlhIeGUrRXo0a2xOSlpSREh3S0ZpTEdhSWpqcE5ic3ZuMkhSTmxG?=
 =?utf-8?B?d0lCUGFNTVpYZWF4OHN2ZlE2NThsY3F2eWNUWnI5aHlRcVFmVkxxWnI0bGhG?=
 =?utf-8?B?dW0vSzF3cE8yRjl3ZXhMYU03WGFYQVU1UzZIWjN0RkNPOEk4WU9aQnFrUjgv?=
 =?utf-8?B?WnM2WlRFTlNIeVhWTGZTOEdZUXlWa01rVk1IdG84VW8wNzIrMkEzQlJIakpR?=
 =?utf-8?B?TkZhL3ozb29Va3hERmJuaGFmUWhIUHkvMDZaWE1GTHBvTmkwWXhQWUVmRGhB?=
 =?utf-8?B?YnV4bjlZQk5oQ1hoM24wKzN1d2h1eXlReElhVHRNaWJvN1FINFB0T1F5OWd3?=
 =?utf-8?B?VnU2ZDJQM2JHSGRXKzFWL0pTRG5Qdjk4WFB5QzBKdGN5YUZQSHFMWXk5YmxD?=
 =?utf-8?B?U1dGRGFmd0pDVysvNklDMEZkN29iNkdtVFJXKy85U0V1a01haEIzclBaWWZK?=
 =?utf-8?B?aVFWNXg4UDZpczFlY1cvV2FUaWlUa2tHUkdwOURrbi9uMXpTNWFsZUR4OVRU?=
 =?utf-8?B?MWtSNDdEeU8vWnpXdnNNNllyUWYxN2F4ekxzUWFIVzVoUzY1aloxZjZJMXRt?=
 =?utf-8?B?bkQzK3NkYUdnbFovbkhPZ09mbm9kSXc1TmRvdlB0eFhaUkFMN1dRMG4yTlZ3?=
 =?utf-8?B?VkhCcnpCWlVRVFhnZkJrNjJtRmtVWmhEbW54MlYzT1czb0JxeXkxcGpvQzBp?=
 =?utf-8?B?eGFTdm5JRjF1SmJHUHg4TFFBVDlwNXpYNTNJdkEwbDBFQ0pMb2dzTmw4T3RZ?=
 =?utf-8?B?V0o2MVU1MGk0aWJZeTg5a3ZHaGNHU3R0TFIrTzZEMElMTkRhekFnVFgvVGNI?=
 =?utf-8?B?by9NRzdUNXpQUThRRVZ0YXhDdCttUEFwcnBBd2M1MUR0QTkwRi9aV3VqVkY3?=
 =?utf-8?B?T0hXcUtVWUZSbCtSWVpTYWhjdnJkL3V3dXpRVDZFb0trQnZDUVVJcURMNW8z?=
 =?utf-8?B?SmJlemwxWVJhUXZJNStnRHVBcUw4VXVWTHFBcGxqVXEyTi9TOXk4dkxJcmpP?=
 =?utf-8?B?YVhxYXNmakxWMjgyOHFZNjE3MC9zTUhsU0lpSWZBcEY4RVlDSlRYL3RvMnIx?=
 =?utf-8?B?enVEUHVNcU9icS8vdlVZTkZXM3IwZUlYZ2N4aGVMZEpGZnFtR1VJcytTcGlL?=
 =?utf-8?B?SDhxUHIzdDA4YWg2aXJPQmVRZ0VqU1dCUjlZcW5tWlpJSFFhZE42RVVRc1BM?=
 =?utf-8?B?TmJaaUZkUHlnRUFIQUpaREJlVkFCRk53V2UyNVpQV3JrU2J1OHNXZlJnK1Yw?=
 =?utf-8?B?SlZiYk9iWmtETW5qU1VMVVpXVVV3K1NhajdEKzBxdkNCRk5zY3A1Mmx1dFF3?=
 =?utf-8?B?MDk5eVM5T3lhN0cySHpoRVlMbzUzZHcwMGZxWnlzRTNMMDlxend5bXBTU2RR?=
 =?utf-8?B?T2Fwa2hpcjZ0RFJMR3JNZmthOVNGTWhLNDQvaklybFowREtpdEJ5b1NyamY4?=
 =?utf-8?B?cERROUNOZm1CZnc5WnVrQXd2clZLODNUbVVDN2FJNkQyR3hxRjFwOG1ubGl5?=
 =?utf-8?B?VEZMeTN0UGt6QWU5QzM0UkIxZVcvcWQvUEpaTEE2Q3pJL3ZCRmM0Sjh3K0h2?=
 =?utf-8?B?Mzl5VWVaMnFRcFl3QmE1SnFmbjFSNEhwZURadExxTUhvMlQ3TUhKdVFkMVZi?=
 =?utf-8?B?WUo4eE9ncTdBWkN4MmVzZ2ZnTnhGUkd0QTNBeEo2RTE2ZUcvTmFtRHJzelJI?=
 =?utf-8?B?SUNsY3lEclp0a0tqNFBxUHVpK29XK2J5VlNOR3hPV3oya2U4T1g0SWdGb01U?=
 =?utf-8?B?UjZqTWNkWi9OdjNJbVpDVFFMTEdEQk5QSWVrY3BIK0tzSm9tekd4a2lONi9m?=
 =?utf-8?B?ZUU1b1dMR1YvWE1DU3ZoNHNYNnJHcEpaeFRYT21RVFlXSXFZOEdvRUtHdHp2?=
 =?utf-8?B?c1FtQ25mRjhmbkpZN0VqcWk5ejFidHNxQ2p3STIwUDBXQSt5V2hLaTFJM2hV?=
 =?utf-8?B?UDMxM3NuYWNydG5PWXd6MUZ2UVpTSkM5Yll3cFp2OEg0NXltbVlWeC9sc1JN?=
 =?utf-8?B?bGRsd0gzNXYyNmdnMmVmbEp2NjFnZC9uY1NHUm5mdXFIdFVxUnJQWnNDZTRU?=
 =?utf-8?B?a0JTVkVnRDZDSGV1U2xucmc1UG05ZS8wYnNiUkNoaGpqQnhMUEJFQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6f3ec1e-b186-4d13-48a5-08de9c0fa460
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 23:26:53.2013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zQNhVPLwH3V/3RfMnXJU2/SKlRfDRANeSCYyuudDo1pVBzoPwOJyoIO1INO0Vn49Kkz0XvCNxS7An4KucWJkhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6787
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
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[jhubbard@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EBC99415925
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/15/26 2:05 PM, Joel Fernandes wrote:
...

Apologies, I found one more minor thing, while looking at a
subsequent patch in this series:

>  impl MessageFromGsp for GetGspStaticInfoReply {
>      const FUNCTION: MsgFunction = MsgFunction::GetGspStaticInfo;
>      type Message = GspStaticConfigInfo;
> -    type InitError = Infallible;
> +    type InitError = Error;
>  
>      fn read(
>          msg: &Self::Message,
> @@ -205,6 +209,7 @@ fn read(
>      ) -> Result<Self, Self::InitError> {
>          Ok(GetGspStaticInfoReply {
>              gpu_name: msg.gpu_name_str(),
> +            usable_fb_region: msg.first_usable_fb_region().ok_or(ENODEV)?,

OK, failing out is correct here. But in addition, we should also
log this at dev_err!() level. This is rare, surprising, and actionable,
so perfect for that level of logging.


thanks,
-- 
John Hubbard

