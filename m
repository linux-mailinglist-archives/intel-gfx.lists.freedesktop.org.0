Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHxNLpvvumkBdQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 19:31:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1443C2C14F2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 19:31:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B16F410E4F2;
	Wed, 18 Mar 2026 18:31:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="aYvbAkJj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com
 (mail-westusazon11012019.outbound.protection.outlook.com [52.101.43.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25F3110E44B;
 Wed, 18 Mar 2026 18:31:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BL9l/dQLANhGwRbJ1to0Dxraa5VK1IQupMWNU/3ux3L03zSVpIXdaIYNyoCbWHByecDYSqKlfGf6MneHKxA36PSoaxukc8Eu+SvM6Y6UwK5IdU4r2VJAww1SZrcXwFqxPXv4xYRaMG9Ud7MHstHj0h9HvTw3y8nZ9Irr+j71grNMB8rGLjuXKtC62LnPzY6Anm+I+HVZ5LppaU1XwBISRIbe2rzTuJA6cr/l0Sbl+MqSw5agILsiIEQBbB2NtHdne9UytsUlWU8UYH/JqdvjDokyI2lqkTEqDFDdtdLg7R7yU5EZfuM2qrd+eyo+jOh43o2e/dlsH6hVVweQu5E/xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D4AkG5cRtnPgWmqUJTVT65dV47m4s54uQtF2MkJlhN4=;
 b=n4jwwL+IEZ68nvq2+K8yb50Jt9DmEO+kskR4QS025hrIiRu4OomypbHyWPg298IGqD4R9dLxdpFa2HWEW2cSUKNv9JmR5LVk3/42ak2j7KGsFkaaI6L3gfKoBJZkERGdIXGYFypADkDIUlQ8dF7Rcqdqo2LTDd/JAr3JYVG5BM1a8vLZa+RLcHKtDNv9bzCcoLUMhYjwb9MSWu6NKn4nyN2XaDFwm8Jrg/EjzLQRgWUT7pvduoLpSg7LRRtkgjtGXcrCPDrivR4e3QxwZLe8NVz31CUuslvcLq46FPpJyka8jL1iMUd/2oo5mUtOSt6gsAAmeAL6EAm082DEF/3vug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D4AkG5cRtnPgWmqUJTVT65dV47m4s54uQtF2MkJlhN4=;
 b=aYvbAkJjGaG1ZrlLmrzSr5qJI7o7OX3trbQSziX+kOs8s0PNw8PmPNuAdMTpqiF3P021HAAfOtjK+Og8LyNRJPqUE6W/3c9soTs2plIgK14GSj5wxkGGYZzttNFGCc7DmD8H1KKnvH74E671lTu9bD8sXk1f3nxNtNh1cVu37PsnQ6XcUgw6ceE8OzpI1LWXRp4C6qXU6wR3z/FsaRenmaI1/IydJTWn3ftML2Qpu9TpZgdPEbAAhSY8aMM7Jnw9zDeDkI5YF6CXL61cGwLbj+6vscaI2/u2o9P1TpmZPTM25rajby9CcymuPUDKmoaIpovmRR08Oe+4lc5GbBnvZQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 IA0PR12MB8373.namprd12.prod.outlook.com (2603:10b6:208:40d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 18:31:40 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.016; Wed, 18 Mar 2026
 18:31:39 +0000
Message-ID: <71b6a115-98f1-4b09-9c04-a99349f51e49@nvidia.com>
Date: Wed, 18 Mar 2026 14:31:35 -0400
User-Agent: Mozilla Thunderbird
From: Joel Fernandes <joelagnelf@nvidia.com>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
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
Content-Language: en-US
In-Reply-To: <abqdUBqchnVFo7Qk@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BN9PR03CA0514.namprd03.prod.outlook.com
 (2603:10b6:408:131::9) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|IA0PR12MB8373:EE_
X-MS-Office365-Filtering-Correlation-Id: f833a112-5658-4f8a-e273-08de851c97ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|56012099003|22082099003|18002099003|13003099007;
X-Microsoft-Antispam-Message-Info: N/VKZLJw7OR5lDMwCThwp0vnoty1XmLMbm4zAM45gBYfHJQBp3jDg/aN0GlXb7OxXHn+DXDAHWWgtxYbpn1syJUMK/E/8p5IeSyv2laOZG0//PvT5GMMtqFvTG3nynBTVRTRkbEA71npzKiH9YBOkmWhptpmCfcCfCFlOf646sjv3bMkAZwRm2q2W55tXWUpWrHGVZYpZ6RdG36lxp2MyWBC1Vz9Ku7WGw9KJZ30/7+xum00Z2wX+GoZ6A/mqru8tr+vD3mzRrzin9Job1TeHFWTNdot8skfO+/7PQKGEp2prbkpbpscQj63c1sX2qAtE8Majyb2WzdRLMHHvO0JJ44t8dUpPAKp8IGS92m57iPTycGwlc4unD4KnoeSngboe+ouzYkn5TORItXpLMw2cUyySOGF3VjxHh1m5eBJHHM9iC1diB7//5ww6TyrnTgTBLdYVoMTvJ94BKCmxe8/OQ5A3Lmmgjw3rF9pfTSk3GtTIF4IeHUbeW1FvMhA6WCO95uvuUR5yQgsDWpQ1rzJXbqVOrpjoMq+AH0Newaf4XR77BERyQTeb5MtQwDw5XA0AfsqMQOLYGZ1MLUAlt6Jjql2pF/xT9/xaj/OUEj0ZssPyKoW6cqi3L185rugKO3/nBcoEHb3xu7N6ucwrvcXH3N3+ixnFIzDPdHbcXwR9DE/7QhxALAWJGPJf1FawumAC6dhwyDTNqKwT9FGe5OpgHvdwYgWo4EobwwGAyRfN3c6jk31N6BmHeWO1NvZbP9+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHpjZms4KzNXSVdYSjFZc3ZpNDU1eW52bmlVMlgwc2pKa2Q1QUJxWFFiZFFZ?=
 =?utf-8?B?MFcvR3NkWUVsdUU3VVRkOTNDU0NnZ0JYSEZDcmFLZ09jV0NYVk5YdXpoNkhF?=
 =?utf-8?B?QTRqb1VNYmh5R3VuTWJzWDdDVC9NeStHMVBqWjBnMTZwRnRNQXpBTk51M2Rp?=
 =?utf-8?B?OVI1UGdIQnJxbWsvaXZWNGlBL3B3bUx2b2FMc21HTk9YZ3VvMmJQN3dsMDJr?=
 =?utf-8?B?OXd1SEp5Z0RtWUlteUgrSWxBd2tTdllBaFM3VWlCSWlURlVQRFNaN2c2T203?=
 =?utf-8?B?OTRMTERiZ25jc3RVMFF3dDNTamN1UjNRVVdnc2RFWHhuRGdWZGhBWW1tRDYx?=
 =?utf-8?B?TEVmL0dWS0JmUmsvcUE5Y1c4MlJST1dWRlA4VFVSQWxTT0YxdFpvMXdENWVM?=
 =?utf-8?B?QlpRWG43L1p1WXVXWnJXYzRvZlQxSGhQblF5bys5dll3clZ4MExLYjBnb1o3?=
 =?utf-8?B?MGM5WHJNaC9NUTU4UmEvWUQ5M3dUVVREMldNM05MZDFsbzRVOUxoQ3ZnYkRm?=
 =?utf-8?B?Z1krRXJQcWNKVUo4QnpDYVJ5bWVzdEZSQ2Y2a0dSdURNbTFKRGNyY1ErS3NZ?=
 =?utf-8?B?Rmg5OFc4UnNzRTBieGVmU0NUVkd6SHN5cTFGNHRTdFdvZXE5MndhS0hPQkpT?=
 =?utf-8?B?eHpSMmQyZE1rb1lCdFJLYlJVT2hxRFFncGd1MlVkcFVYbGxYTnBWMEdvMTNZ?=
 =?utf-8?B?cnpHSEhlUEg0RS9VbDE0b0xXOW1wQzJhQlBuMXc4ZWtlRFdxdTBpTVFxeUoz?=
 =?utf-8?B?MERaOG56VkxVVHRUSWNGVHdNUnZnNUt3M0FSVFNyRy9aNkhyTTNveWV0Q29I?=
 =?utf-8?B?L05hOUZHRDRHdXBJaUZzQk5ycndMaXNxQW92Q25LY0xiK2NxUmhWZEJncllP?=
 =?utf-8?B?cDVjVFJKeWVHRnZpaEhUa250MVpLWFYrSVdCN214OHdEbUhtNzBaajYwaVk4?=
 =?utf-8?B?MzFjbHhMVUJsb1ZFdHpIUDJQa0lsQjBaWUV4TjBBbjBXSzlWeUZxM2Jlb0Z0?=
 =?utf-8?B?czREb2t2RWNyRWFEY3A4SzE0eHNlK2hSTEtpSndURk5JT1NOaGZ1VkttcVht?=
 =?utf-8?B?RldMNHF1UzJtR2hPS2lnNGVDVVY1Y1N3bFN5elZzcVVYNE5BYncyelJ6TU93?=
 =?utf-8?B?MzF1blNkUmhVZWkyelFaTkw5aUQ1YzhWaTNaSFV0NUNKclJxbExFTXdxWUVv?=
 =?utf-8?B?ejMvQnQyRWxhWWtrcHNnY1dQNXZ0ZnZZNU5lV0FrbjNHZ3JLeHJoLzVGOTRO?=
 =?utf-8?B?MVk5WFE0TXYvQnBDZVVTRFNFT0k5cEtJZGtnYWlBektvTHowMlVYZ1dKVXE5?=
 =?utf-8?B?dmk0S29vN1ptN0xxMXZ3WE5pdDZLeUZFVVByMmMxYytBcldIU3RnbHFNNm5J?=
 =?utf-8?B?STBYZitXY0hydkg1RDRDWVJJMHkwRStZdmdob0FlMkdVYUs1ZEduMkZqbE9p?=
 =?utf-8?B?bXMySFEyRzkwUlEzV2VyUVczdmxmYzdqVkZXbHd5UHFwck5PdTY2QWxBY3dq?=
 =?utf-8?B?bzBwSkFETm9TMno0WnRKVzlTTDlVYXpRU1BBbHZwQk5GM0E5Uy92UGZqRWtP?=
 =?utf-8?B?WFV3VDFERi9DenhQVG9oTlQzeFR5bWtmMU9YdHJ3MnJJbmxtVU5hN0pGcUpM?=
 =?utf-8?B?dnA3S3VMTTNqSHhOQ29odjcyT1pMNFJSYTRnN2M4aE1wMEZ2cnkvZHhMdVAr?=
 =?utf-8?B?SGtmMHdoMCtpVTdSckhEQlRpVkhtWmY0eUp4TmxITXkvWDgvdk1xWFJyUGti?=
 =?utf-8?B?OVlkbHd1YXJjS2Fzc0h4VS9JbjFLVVFtWlhEWHpYYnZhY3FxdENsVXJ1aUpY?=
 =?utf-8?B?em1tdEdrTXJYS2RPckxCbEUxeTJKNVZVdm9EaE83Mm9CSlhaNDY5cjlSTjdv?=
 =?utf-8?B?TzJhUzh3M0EwRVhITlg3NEN4a3RMRlAvV1kwa2VETVhXazFKM3dielZDK1Bx?=
 =?utf-8?B?S2xreFNYTTV4cTFZdmlUSE16VXpPRHpmVHlBYUlXYkFYWFFJSkJTekVLQmtB?=
 =?utf-8?B?OS9JOUlFK1Z5clQ5VmpmQmxuQWRLd0hJVGNCL0dOZThZb2dDT2ZrZzE3ZWha?=
 =?utf-8?B?RWtVZWhXRGZPU2ZHam9GNzRTWTlvZ0d0ajkwN3I3RjhxUGZDcHIwQXBseXg1?=
 =?utf-8?B?VmY0a3JVNkNDV1gyRzVWczNoaVlmOHFNN3p3cHhhZTBYR2NmcEUzYWlGOW50?=
 =?utf-8?B?YXBNVkZtcHl1NkVkcVV5ZitBUjhkN1lxNlNJdlpFaW9sWUlBRkR6aGlKWnhi?=
 =?utf-8?B?WjZHdDJFN3FSdWtUODlrTXBobzhjelFXeWJlUDFPOHcraThjS3FJK1g2L2VO?=
 =?utf-8?B?bm1ldzRRaVJSckUwenltZldvNHRjRTZDSVNyZjU0UVN0UDQ4VmJMZz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f833a112-5658-4f8a-e273-08de851c97ee
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 18:31:39.3045 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WAnMFH+Cud/kLxIZiETdrQiq029r8Cx7OH4EfeqF/1p8/yPvsKEYv2YHbdLNov+Y6W9sbAQOlJhJGFdOXW6AhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8373
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
X-Spamd-Result: default: False [8.69 / 15.00];
	URIBL_BLACK(7.50)[rust-lang.github.io:url];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[Nvidia.com:s=selector2];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_GT_50(0.00)[53];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DMARC_POLICY_ALLOW(0.00)[nvidia.com,reject];
	R_SPF_ALLOW(0.00)[+ip4:131.252.210.177:c];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_ALLOW(0.00)[microsoft.com:s=arcselector10001:i=1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.668];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email,garyguo.net:email]
X-Rspamd-Queue-Id: 1443C2C14F2
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes



On 3/18/2026 8:40 AM, Alice Ryhl wrote:
> On Tue, Mar 17, 2026 at 04:17:10PM -0400, Joel Fernandes wrote:
>> Add a new module `kernel::interop::list` for working with C's doubly
>> circular linked lists. Provide low-level iteration over list nodes.
>>
>> Typed iteration over actual items is provided with a `clist_create`
>> macro to assist in creation of the `CList` type.
>>
>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>> Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
>> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
>> Acked-by: Alexandre Courbot <acourbot@nvidia.com>
>> Acked-by: Gary Guo <gary@garyguo.net>
>> Acked-by: Miguel Ojeda <ojeda@kernel.org>
>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>> ---
>>  MAINTAINERS                 |   8 +
>>  rust/helpers/helpers.c      |   1 +
>>  rust/helpers/list.c         |  17 ++
>>  rust/kernel/interop.rs      |   9 +
>>  rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
>>  rust/kernel/lib.rs          |   2 +
>>  6 files changed, 379 insertions(+)
>>  create mode 100644 rust/helpers/list.c
>>  create mode 100644 rust/kernel/interop.rs
>>  create mode 100644 rust/kernel/interop/list.rs
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 4bd6b538a51f..e847099efcc2 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -23251,6 +23251,14 @@ T:	git https://github.com/Rust-for-Linux/linux.git alloc-next
>>  F:	rust/kernel/alloc.rs
>>  F:	rust/kernel/alloc/
>>  
>> +RUST [INTEROP]
>> +M:	Joel Fernandes <joelagnelf@nvidia.com>
>> +M:	Alexandre Courbot <acourbot@nvidia.com>
>> +L:	rust-for-linux@vger.kernel.org
>> +S:	Maintained
>> +T:	git https://github.com/Rust-for-Linux/linux.git interop-next
>> +F:	rust/kernel/interop/
>> +
>>  RUST [NUM]
>>  M:	Alexandre Courbot <acourbot@nvidia.com>
>>  R:	Yury Norov <yury.norov@gmail.com>
>> diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
>> index a3c42e51f00a..724fcb8240ac 100644
>> --- a/rust/helpers/helpers.c
>> +++ b/rust/helpers/helpers.c
>> @@ -35,6 +35,7 @@
>>  #include "io.c"
>>  #include "jump_label.c"
>>  #include "kunit.c"
>> +#include "list.c"
>>  #include "maple_tree.c"
>>  #include "mm.c"
>>  #include "mutex.c"
>> diff --git a/rust/helpers/list.c b/rust/helpers/list.c
>> new file mode 100644
>> index 000000000000..18095a5593c5
>> --- /dev/null
>> +++ b/rust/helpers/list.c
>> @@ -0,0 +1,17 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +
>> +/*
>> + * Helpers for C circular doubly linked list implementation.
>> + */
>> +
>> +#include <linux/list.h>
>> +
>> +__rust_helper void rust_helper_INIT_LIST_HEAD(struct list_head *list)
>> +{
>> +	INIT_LIST_HEAD(list);
>> +}
>> +
>> +__rust_helper void rust_helper_list_add_tail(struct list_head *new, struct list_head *head)
>> +{
>> +	list_add_tail(new, head);
>> +}
>> diff --git a/rust/kernel/interop.rs b/rust/kernel/interop.rs
>> new file mode 100644
>> index 000000000000..b88140cf76dc
>> --- /dev/null
>> +++ b/rust/kernel/interop.rs
>> @@ -0,0 +1,9 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +
>> +//! Infrastructure for interfacing Rust code with C kernel subsystems.
>> +//!
>> +//! This module is intended for low-level, unsafe Rust infrastructure code
>> +//! that interoperates between Rust and C. It is NOT for use directly in
>> +//! Rust drivers.
>> +
>> +pub mod list;
>> diff --git a/rust/kernel/interop/list.rs b/rust/kernel/interop/list.rs
>> new file mode 100644
>> index 000000000000..328f6b0de2ce
>> --- /dev/null
>> +++ b/rust/kernel/interop/list.rs
>> @@ -0,0 +1,342 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +
>> +//! Rust interface for C doubly circular intrusive linked lists.
>> +//!
>> +//! This module provides Rust abstractions for iterating over C `list_head`-based
>> +//! linked lists. It should only be used for cases where C and Rust code share
>> +//! direct access to the same linked list through a C interop interface.
>> +//!
>> +//! Note: This *must not* be used by Rust components that just need a linked list
>> +//! primitive. Use [`kernel::list::List`] instead.
>> +//!
>> +//! # Examples
>> +//!
>> +//! ```
>> +//! use kernel::{
>> +//!     bindings,
>> +//!     clist_create,
>> +//!     types::Opaque,
>> +//! };
>> +//! # // Create test list with values (0, 10, 20) - normally done by C code but it is
>> +//! # // emulated here for doctests using the C bindings.
>> +//! # use core::mem::MaybeUninit;
>> +//! #
>> +//! # /// C struct with embedded `list_head` (typically will be allocated by C code).
>> +//! # #[repr(C)]
>> +//! # pub struct SampleItemC {
>> +//! #     pub value: i32,
>> +//! #     pub link: bindings::list_head,
>> +//! # }
>> +//! #
>> +//! # let mut head = MaybeUninit::<bindings::list_head>::uninit();
>> +//! #
>> +//! # let head = head.as_mut_ptr();
>> +//! # // SAFETY: `head` and all the items are test objects allocated in this scope.
>> +//! # unsafe { bindings::INIT_LIST_HEAD(head) };
>> +//! #
>> +//! # let mut items = [
>> +//! #     MaybeUninit::<SampleItemC>::uninit(),
>> +//! #     MaybeUninit::<SampleItemC>::uninit(),
>> +//! #     MaybeUninit::<SampleItemC>::uninit(),
>> +//! # ];
>> +//! #
>> +//! # for (i, item) in items.iter_mut().enumerate() {
>> +//! #     let ptr = item.as_mut_ptr();
>> +//! #     // SAFETY: `ptr` points to a valid `MaybeUninit<SampleItemC>`.
>> +//! #     unsafe { (*ptr).value = i as i32 * 10 };
>> +//! #     // SAFETY: `&raw mut` creates a pointer valid for `INIT_LIST_HEAD`.
>> +//! #     unsafe { bindings::INIT_LIST_HEAD(&raw mut (*ptr).link) };
>> +//! #     // SAFETY: `link` was just initialized and `head` is a valid list head.
>> +//! #     unsafe { bindings::list_add_tail(&mut (*ptr).link, head) };
>> +//! # }
>> +//!
>> +//! //
>> +//! /// Rust wrapper for the C struct.
>> +//! ///
>> +//! /// The list item struct in this example is defined in C code as:
>> +//! ///
>> +//! /// ```c
>> +//! /// struct SampleItemC {
>> +//! ///     int value;
>> +//! ///     struct list_head link;
>> +//! /// };
>> +//! /// ```
>> +//! #[repr(transparent)]
>> +//! pub struct Item(Opaque<SampleItemC>);
>> +//!
>> +//! impl Item {
>> +//!     pub fn value(&self) -> i32 {
>> +//!         // SAFETY: `Item` has same layout as `SampleItemC`.
>> +//!         unsafe { (*self.0.get()).value }
>> +//!     }
>> +//! }
>> +//!
>> +//!
>> +//! // Create typed [`CList`] from sentinel head.
>> +//! // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
>> +//! // embedded `link` field, and `Item` is `#[repr(transparent)]` over `SampleItemC`.
>> +//! let list = clist_create!(unsafe { head, Item, SampleItemC, link });
> 
> Bad news.
> 
> My build triggers this warning:
> 
> error: statement has unnecessary safety comment
>     --> rust/doctests_kernel_generated.rs:7103:1
>      |
> 7103 | let list = clist_create!(unsafe { head, Item, SampleItemC, link });
>      | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>      |
> help: consider removing the safety comment
>     --> rust/doctests_kernel_generated.rs:7101:4
>      |
> 7101 | // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
>      |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>      = help: for further information visit https://rust-lang.github.io/rust-clippy/rust-1.94.0/index.html#unnecessary_safety_comment
>      = note: `-D clippy::unnecessary-safety-comment` implied by `-D warnings`
>      = help: to override `-D warnings` add `#[allow(clippy::unnecessary_safety_comment)]`
> 
> This probably needs to be:
> 
> 	unsafe { clist_create!(head, Item, SampleItemC, link) }

Oops, I sometimes run clippy wrong. I did: "CLIPPY=1 make" instead of "make
CLIPPY=1", the reason is habit. I have been doing "LLVM=1 make" for llvm
builds since many years.

Anyway, the fix is simple, just need to do // SAFETY*: as Miguel suggests
here, instead of // SAFETY:
https://lore.kernel.org/all/CANiq72kEnDyUpnWMZmheJytjioeiJUK_C-yQJk77dPid89LExw@mail.gmail.com/

Should be easy to do on apply if Danilo doesn't mind. :) I verified on my
setup that it fixes it.

thanks,

--
Joel Fernandes
