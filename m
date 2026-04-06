Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JOAB6kk1GlxrgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:24:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5B23A786A
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E0910E290;
	Mon,  6 Apr 2026 21:24:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="ogDpDsLP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012037.outbound.protection.outlook.com [52.101.53.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3015610E0D0;
 Mon,  6 Apr 2026 21:24:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s5z7iiyHQxhayEjH12F/WiwwOpX6VfebdbCtg9kk9VazEyURYrDAnYJFXN66Smktywq199dxztF8p8chIGhspbKhh66oIdlLqmWes1FOoZ6alPcjPEmjtUfGltd9sOTfChjkQs2F014U689Noi+q2X+mhJ3T0rOME3yFXi1EfytFxRArc2ItgnyGImzBe5XQJkQejipYQTTa8z6RUneihpiQq95/r+ZQv3TuwfkUenmi2effRkisH6FZF0bgxnQ89kMCIDHPQ3bxR0T2OHhLkIxxtzLWa1ztd4+p2GiPH0wr5Pyj/8ubCmtq5uhUVU4tj5l2SDn2W9OL2xGGRChRzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8RKdaN1OTKaadjanldjMUs4a0AeoXHERaQ0SRSR4hB4=;
 b=L0RRWkeKS2FhgaRkfj186vyS2hN4oJ78ghp0l07wiIlxQZiK3rqVp9R4Pb6oFZ8aDHa/M+Bv8dGo27n+L61osIz18wgkTaCovvJI0tiuByuL/5CRdktrcOt0CJoXgeam5ORoonKgsC5FCeM6+/3E6yfAATcN4lVJSx4oaXCsdYsBu23egMBe6sXXqnkGRGf2IVK7yXqTMMXSvpgYtkiqH+kYoYY/52wE3NQZHV1ayknxc7s2mOiLbk0SopVdqr0/MsmDFhCC34dEfIOTIg4OmMKrp2S9yoMDDtVdxEXaxzfFitYg4+CFBhJVgTe+Ybyg0JCqZmedUvndtEW4xqCNJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8RKdaN1OTKaadjanldjMUs4a0AeoXHERaQ0SRSR4hB4=;
 b=ogDpDsLP4FDY+6lGdBz2Y8djJnDO98D+nDrECMXOs10hjkMyemHr04nCpJYl8NwQLLhU/MvK6TOZbPCSX3pEEuyxSHx0boos13rBbevW0JCul7foNPTo5rbV76lEknyNUyP5nehhd+moHn/aO08bZkcazq9J4Xtpx23y+8ff1bLVrP3ANTggA5mAhAjLybkwMm6IYIisWq5MStMxmXctD7evFD5mfLDDOzw7IAVM9nbfMYMJoq5EVAKw511DpDLsyiOT8TOlck1WwWRE930oMrm1kZDELobzzeVdIr3WGdLcg2gzsbgsJc3Vyxal9qhky1tn8WdTb908abAnVxP3dA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SJ1PR12MB6242.namprd12.prod.outlook.com (2603:10b6:a03:457::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.20; Mon, 6 Apr 2026 21:24:45 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 6 Apr 2026
 21:24:45 +0000
Message-ID: <0f5605c1-32e8-4a62-b852-b1db01e42817@nvidia.com>
Date: Mon, 6 Apr 2026 17:24:42 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 07/21] gpu: nova-core: mm: Add TLB flush support
To: Matthew Brost <matthew.brost@intel.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 Bjorn Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin
 <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
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
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-8-joelagnelf@nvidia.com>
 <ac4FpcD29XnbbsdD@gsse-cloud1.jf.intel.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <ac4FpcD29XnbbsdD@gsse-cloud1.jf.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MN0PR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:208:52d::16) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SJ1PR12MB6242:EE_
X-MS-Office365-Filtering-Correlation-Id: ae91472f-993d-40bb-712d-08de9422eca5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: S0EBmMA50OaC+PIxnOtDsXK4ANZONwyayP38F/HA0c3oKQ+saC+BZKGW5Pqh/2Hvjg1rYaP3OQaSFtdO20gUAPFU7GcVI9elW/Nj+fVkvU8YHErpQ18qaWN+l9bEJsC/hV9E3CxjrmG4XZLHK61VJCZaclWMn68U+y2Me8Iu5bVAdwVF9EgPvasUvLHSIWLf+svcOOBk2agWmcHQ4gM+3jpoJc+fDd4xDn0p5w+Ti/Tlo9BBgprllx3D+L/aaA8L/0eHIK3j4q9IZAAQdXQfZ6otcoa721vVzWH0OWFP2faDIQ60eZsDyK+lGfDveDa7QvyiyjsxxqaFg3b3ODJppcFhemDzs+AMMph82Lv1oTgnrcoznPXZojEeCHLfDxmwSGbaQmN1nI8mfOjouB+us5mF2aRNaTB4ShsiSsukatDKDtGwI6s0+n08LGPDBAQmUZbzIyzhqFyP6TkXNnraw4kCT3fdx0Z7UIa7Taz1SaNiWo5qq2RZ1ory1NnuZwKDch7GdBUXoqPVUG7M8tGzYhxCvS9T1QulhSMBUfym/T5baKy5o/5MvROhQV+3v1xWILsnK8noAKthSZ3ql5aqngiH/1AcCPHl7XomeL9pklC18gEEsQFLAkJMJoxVGOpAaI7pOnwwiAEWOawT5c7KCXkRrFM/93Z+xL5agNYgXFnDnJ31zbH/MyjzYw0Pc2p7YAgwbvqMw3X6VHW9uL6czDuGhhdFTOPdZ4OH9HhWtqU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bU1iZEZxS2l5VzVabEVRcWZyZzJBUmNtcTUzMGVkYTdBVmczR0JSTGtVTnhB?=
 =?utf-8?B?VnhYL0FKdWVENnFCT1hDV3QrYUdJY2pSOFd0OGlIRkQrU1ZkblJrZjNQd1gv?=
 =?utf-8?B?bFZITEl0Y3B0elBWRjdNOTB3VUpWNjh3QlhHWHB4V3YzbnBMYUlOb1psS1VV?=
 =?utf-8?B?a0tzSUN4cHR6SmpMaGszdW4zVmUrR01RQ0hrMzNjWEFFSHZxRVh5RFB2M0dO?=
 =?utf-8?B?Sm5QUU9Va3Rjc1lxQUlObG8wQ3doV2NaTTF0bURUeElWWHNIb2ZIYnZmUjAy?=
 =?utf-8?B?aDgyWkQrb3hKQ2l6T2RKZjZKNTh1MTRRYUE2cHIvMjhKWTN5V0p0WFFhRlV2?=
 =?utf-8?B?UzRoeWQ4dU9pYUZFbUpIZlRodzZTb1F0Z0ljeWtEa3hiajNQNWN0RUhERXRZ?=
 =?utf-8?B?a0hIdm1Mak9DS1g4c25ybzZHaUVnUVR3RERsaWpvY3czWTBMS0pKekp5aGEz?=
 =?utf-8?B?dGM1T2pRa2dZSi9iOW1aVEl1dkxSYk54WWpPWWJ1dEU0aHgwRE85YldWQnM2?=
 =?utf-8?B?bjR2SVFhbWZiQVpPbTBmejk4YXFBbU5QUGNBekI0NkY4dkZ3WFEwZDBLSkpn?=
 =?utf-8?B?Rk5ObXBPREdEdW0yTlVGYzZFNkJYRWtXVXNBYnp5Q3NGQlM0YXp5M2xPQ2Zh?=
 =?utf-8?B?cHA0YUJDL3l3bGNmR3dpTTNrSXJqdE9uWjdrNnV5SDNUb3l4K1JyMW1EbXJT?=
 =?utf-8?B?ZXVBTnJJa3I2NGxaNnpBSnp1aE9WTzdBNnE5c2QybVdxTzNNcHFBMGhFZ3Rk?=
 =?utf-8?B?TmZITnhCakozWnQ2djRoQjVza2wrYXlKSkVrelgzMi9JaGhFM2Evbndmb0xH?=
 =?utf-8?B?T1JyQi9TWjZMd1c5ZlRIZUtyYU5qTUo4NUN0eEVZWmRnQUNyQWdFb0dMN2tD?=
 =?utf-8?B?blR6a0llSTdnQmJhOFFkNmNqdGZSSEErV1BtMmlta0pUQ0NmZWY3N0pFZCtB?=
 =?utf-8?B?aENQbzAyWFIxUmpuYzBFWVIxcW4yZW5XcUdwS0w2UWVZdDh0THJmcUZidUx3?=
 =?utf-8?B?YzhpSFprUlpObzZCZGFBRlJjWUhiNi9wUHFDTGYzR3ZFMVd3YXhHRXRZaWhO?=
 =?utf-8?B?Nnk2MlFFY21rRGRHUWxUL01vUE1rYkJkdUl3anN1TmFDVkZrRVVBSzdKTHJn?=
 =?utf-8?B?c2RSREpLZGhoMG4xVUtyNWk5ekZtOFk0V29rb1phcXQ3WityeXA4RVp3MDN2?=
 =?utf-8?B?VjRIU2RWUWRtVm8zdWRDSXJMSjFYZ0NzNDRtUis0THVjMUt3d0FPYkx1ems3?=
 =?utf-8?B?d3B2OVJWb1lEVThOTDBBa0ErRWF4RWxTQVJrZENRODZlQ0ZRVk9leG96eEJa?=
 =?utf-8?B?TDlNNFhPNWtMR1Z5SXVzVVJOSmVqTG40YnFTRGZ3aDNoNitUODE3V2hIZGg5?=
 =?utf-8?B?alRGd3VmRHBRYzI3dy9pN2VNVklOcDhPTGZGVFdTNFRvU2dlWXA4YmVjUjdl?=
 =?utf-8?B?K09vRUgxTDRtYzQyeGMzUXZHV2Uvc2lvNitHV3JaSUtidFU4L1pBWFdWclNY?=
 =?utf-8?B?WklUS21jNm5LakpaVVRyTU5tWlVEcVFhcjgwek5UaVgvODBOOGtoYWcwOGxG?=
 =?utf-8?B?WTB0L0YxMGlrais4M3NrUUxnQ3R1dTNHaCtpVHBNNDhyMmRJcVhmMVRYY2h4?=
 =?utf-8?B?TDZYcnlrUGJMZHdwYitxMGdKZlZlc3A0Um5DWk5GZmIrUm53SUZ6TzRoL3Ix?=
 =?utf-8?B?RlBURVVpamsrQlBDN1JEVjJxZ01wYVU3dkZGRnN0aUQycjUwYWVnL3FFYWJq?=
 =?utf-8?B?cGxaY2pucjVyeWZ5ZXJoK1ZaUmVEQ0pnclhUM0haa0tsQkFKV2lOYU9VeUd4?=
 =?utf-8?B?cHVGUFMzZVlWR3pQWlZqR0I4UE9SK3RCOSt0MCtaeVpqQm1BVGZybnJHOUFQ?=
 =?utf-8?B?aG5QNThIYmQyQURWdlppMXVzNXZVRWQwR2JINSsyNXVkK0tRbEtVTTlRaXdF?=
 =?utf-8?B?amtuNVl5enhSdzBpMm4zWWlXZXZVWW5nVTE4eG5oYTZSakp3WkhYTERMZEFh?=
 =?utf-8?B?WXZCYkVPRGRmeEFURzZsMEtyOW0zOTRLVFlCeWdSaFNOdWJ4ZUJjUXZ2S2RN?=
 =?utf-8?B?S0NOd09UOEs1azV4S2p6ckdNblV2Wk5CZTBCQTFqUFFicjBHQzlxSVp2SVpR?=
 =?utf-8?B?UVVZTHlmUzZuSEdyZW1hL2FQdVRMdCtsMzN6cTArQXpuellCVjJwd25ldGcw?=
 =?utf-8?B?VFpremF1S2FsOFcra1lTUHVBd01WalNBT01KOWNWVWlnRG02bzdJWm5obitJ?=
 =?utf-8?B?b1A5ZllFTXArck1ZVzlxdVNTdTJBOVBmNGpsUkV3eW82dm9ZWW56TUh4OEpN?=
 =?utf-8?B?b1dJZk9YR1N2MlhFS2lUM2VhUHZCK3dONVdVMVFhazR6OTZWV0Z4QT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae91472f-993d-40bb-712d-08de9422eca5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 21:24:45.4831 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xIYEay9EQcQIL0OfKhsWq92f2cGLAtCQOJYSZs4FOs16NZGPLSjiqCWqjGPs2MZMnz8ngxu6G38HoEnB/qaibA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6242
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
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6C5B23A786A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/2/2026 1:59 AM, Matthew Brost wrote:
> On Tue, Mar 31, 2026 at 05:20:34PM -0400, Joel Fernandes wrote:
>> Add TLB (Translation Lookaside Buffer) flush support for GPU MMU.
>>
>> After modifying page table entries, the GPU's TLB must be invalidated
>> to ensure the new mappings take effect. The Tlb struct provides flush
>> functionality through BAR0 registers.
>>
>> The flush operation writes the page directory base address and triggers
>> an invalidation, polling for completion with a 2 second timeout matching
>> the Nouveau driver.
>>
>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>> ---
>>  drivers/gpu/nova-core/mm.rs     |  1 +
>>  drivers/gpu/nova-core/mm/tlb.rs | 95 +++++++++++++++++++++++++++++++++
>>  drivers/gpu/nova-core/regs.rs   | 42 +++++++++++++++
>>  3 files changed, 138 insertions(+)
>>  create mode 100644 drivers/gpu/nova-core/mm/tlb.rs
>>
>> diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
>> index 8f3089a5fa88..cfe9cbe11d57 100644
>> --- a/drivers/gpu/nova-core/mm.rs
>> +++ b/drivers/gpu/nova-core/mm.rs
>> @@ -5,6 +5,7 @@
>>  #![expect(dead_code)]
>>  
>>  pub(crate) mod pramin;
>> +pub(crate) mod tlb;
>>  
>>  use kernel::sizes::SZ_4K;
>>  
>> diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/tlb.rs
>> new file mode 100644
>> index 000000000000..cd3cbcf4c739
>> --- /dev/null
>> +++ b/drivers/gpu/nova-core/mm/tlb.rs
>> @@ -0,0 +1,95 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +
>> +//! TLB (Translation Lookaside Buffer) flush support for GPU MMU.
>> +//!
>> +//! After modifying page table entries, the GPU's TLB must be flushed to
>> +//! ensure the new mappings take effect. This module provides TLB flush
>> +//! functionality for virtual memory managers.
>> +//!
>> +//! # Example
>> +//!
>> +//! ```ignore
>> +//! use crate::mm::tlb::Tlb;
>> +//!
>> +//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Result<()> {
>> +//!     // ... modify page tables ...
>> +//!
>> +//!     // Flush TLB to make changes visible (polls for completion).
>> +//!     tlb.flush(pdb_addr)?;
>> +//!
>> +//!     Ok(())
>> +//! }
>> +//! ```
>> +
>> +use kernel::{
>> +    devres::Devres,
>> +    io::poll::read_poll_timeout,
>> +    io::Io,
>> +    new_mutex,
>> +    prelude::*,
>> +    sync::{
>> +        Arc,
>> +        Mutex, //
>> +    },
>> +    time::Delta, //
>> +};
>> +
>> +use crate::{
>> +    driver::Bar0,
>> +    mm::VramAddress,
>> +    regs, //
>> +};
>> +
>> +/// TLB manager for GPU translation buffer operations.
>> +#[pin_data]
>> +pub(crate) struct Tlb {
>> +    bar: Arc<Devres<Bar0>>,
>> +    /// TLB flush serialization lock: This lock is acquired during the
>> +    /// DMA fence signalling critical path. It must NEVER be held across any
>> +    /// reclaimable CPU memory allocations because the memory reclaim path can
>> +    /// call `dma_fence_wait()`, which would deadlock with this lock held.
>> +    #[pin]
>> +    lock: Mutex<()>,
>> +}
>> +
>> +impl Tlb {
>> +    /// Create a new TLB manager.
>> +    pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
>> +        pin_init!(Self {
>> +            bar,
>> +            lock <- new_mutex!((), "tlb_flush"),
>> +        })
>> +    }
>> +
>> +    /// Flush the GPU TLB for a specific page directory base.
>> +    ///
>> +    /// This invalidates all TLB entries associated with the given PDB address.
>> +    /// Must be called after modifying page table entries to ensure the GPU sees
>> +    /// the updated mappings.
>> +    pub(crate) fn flush(&self, pdb_addr: VramAddress) -> Result {
> 
> This landed on my list randomly, so I took a look.
> 
> Wouldn’t you want to virtualize the invalidation based on your device?
> For example, what if you need to register interface changes on future hardware?

Good point, for future hardware it indeed makes sense. I will do that.
> Or, if you’re a VF, can you even do MMIO?

For VFs, TLB flush is typically done directly via VF's BAR0 MMIO. If there is
VF-specific handling for any reason, that should probably be a different
interface than a per-chip interface (more specifically, checking if Nova is
booted on a VF).

thanks,

--
Joel Fernandes

