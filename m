Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOmZBlJPuGlHbwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 19:43:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE64B29F2E3
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 19:43:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3857710E486;
	Mon, 16 Mar 2026 18:43:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="kLzDUHZz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011000.outbound.protection.outlook.com [52.101.57.0])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04F5D10E3D8;
 Mon, 16 Mar 2026 18:43:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XR96MLWyvhvmfOeVUkNZvZJQmyToBf+5EQDneRsm4ydyr54ZclyjliPrmC2UYJHr+dfP9UmGuieoh7TjHMqulZT65Fo331jHRgxMlHVe90j5fRfBQBFSVLHR6TushDb7b9o60dvLspdTb8UP+WfMWoC94or0nlxi3snMp0qqF9NRfCvye+zQ0qayOM4uf8TcuT/73iyICiULm+U9U02lAVxUjsrQ26u9+VAeE19r9ngxa8mLtd7TXbyHsy5kBmRf71UrYoBNrzpkvOHwozAj/fOZfbhqU6yW4hDgCubNgzrclYD5DXdDyszawEZ1lxbhGxEZVSXrWA6bMbBTQfUVQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=897PCkEdDBhRPvr1FE7K3td53l27ejLdHpW+XtQWK/Y=;
 b=j6HJjJk2nnJYVjUlEvIYIsqXEC8aS43uH4You8pMQ8JV3z468ntTAflNBC774ba1OHoRhpVkVr4jztUn5dFY/QU+c2mHhF4QmF057PzCL4Y+7tMED5aMKICdgRNAzkxkmFWp2rtClrafMW7ChgMDb3P4G5Z6BFc7jqOB+qhqGItQ1bl8OfNz3LITlEUb7mrMqALioxgvDsfhE4uxu+GOwyfOlVPF88bO3jP1kZU2M9eBoTtp+Ti2Nth+sKzE5uboG/xMvOJDmgPWFdEmo95SeyoEoYgxhRDPJJgO17fXiRjrGfbw87iDePKNkBsOemLgGwGRjoWIy5Wps/pqQQ6E+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=897PCkEdDBhRPvr1FE7K3td53l27ejLdHpW+XtQWK/Y=;
 b=kLzDUHZzQ1uuLrCUsu6BAil8IfpveQvkElCWFtxPOxwAQEP3P3zMdrOTg1BAgAOceHrezNikwx2hUAewQP+ZlRkKE1708JDJMzSMNtuhMkAyp0fMLsucM7ewrb5p9jCv0MDs8xPw4BJ4S/9KfZGE2N+kmdlUpSOafOsVxxdjg+iRT5caBO74FB9t6yVYZ/UaCw7H30eF7RIzMvDi6L6jSuLh8Aj80DXQc2bHzqYl/xLzIo8LRTynnwnwK3ZWDBhQQTPVqzHEmJMkGGkm+b2DupkR0VH8XNkxN4PCThiSKZFSF63E5VLbUfbBeD2DhDDvQWxcRTtDvk3vsgg35f/oMA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MW4PR12MB5643.namprd12.prod.outlook.com (2603:10b6:303:188::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 18:43:17 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.014; Mon, 16 Mar 2026
 18:43:17 +0000
Message-ID: <c750e3ce-db4b-4cf4-9254-c381c118d103@nvidia.com>
Date: Mon, 16 Mar 2026 14:43:13 -0400
User-Agent: Mozilla Thunderbird
From: Joel Fernandes <joelagnelf@nvidia.com>
Subject: Re: [PATCH v12.1 1/1] rust: gpu: Add GPU buddy allocator bindings
To: Alexandre Courbot <acourbot@nvidia.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
Content-Language: en-US
In-Reply-To: <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR22CA0020.namprd22.prod.outlook.com
 (2603:10b6:208:238::25) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MW4PR12MB5643:EE_
X-MS-Office365-Filtering-Correlation-Id: 8957a09e-e9b9-4046-2e22-08de838be377
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: s9d5wKe+6i0axdSCPJXhzRac4E3m8qVYuUiw+ua0sdkceHfW5BEYDQnzLRAbzScHaKKZfZs5TZgbidXa5/T7WCO+SLFInlzXvl4pUYGGzhEZFbcqajyNcKEYodl8P0AqsaJcFkHEhVpvueWfUD7KoNk8WlGaN3DmXn46G2amiCupYnmZdzsoR5z6+pxrVeIegWOMDbKgkvKr2Wt4jwsvrFn23m7/FyKoSd7OzhegwwlUlmsD1nbcHmZv1do96lTpOHnfu9GT91J7ga5Z/+KFG+0nqg3t6EUxHlupOU+aQuxDxx5kODXj9wFfpTGm2JR72RgQDV0ttEXWIF/WGFLtNFRQunNCM2Efh4B5jmueVGJVDJKZOw2Hb7+dUtH7rOTQtTufVpS2fM88sIKkVBvAielu5T5/RhOVc/EMlmX/S+k2DOkrK9i/gl+hLTEPtCoUuem3NxwDI6OmgKDZwDc15mGOqSERrCgxL5p3t3sWWr3/YHVALTFonInL4w1ihxvVLXQksnRmwvkEWcFXu8BgWRuHTcLkWyCquLjejloBJpjzIZBjIHHYEVhci22DyizwlC7pWJZdk4wYuF+etSeYXQK0N00eT635Q7hJleTr7xFAOgguyQnTU6Zgo83osOwQV4hh222wFVw0CFh9y1RnmcyuJ62Eeo+Ub1Z6hRoc9JA4xgBXqGolVgFY/WnK4/XCoNFc5UKwZjGzOoimh4dIiL9NE8C7GJq7tUGJ7AovaPQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnIremNDZGQ0NEdmdlNzSFVPbEJ5RjdmVlF1UTNKcGMvSFQyNUM3MUhkZUdB?=
 =?utf-8?B?K1VJb3ZsVkFhRFE5b1FiVHN1dkduS3krZzhuaGVWazBNNWpPS2EwNEZmbmlk?=
 =?utf-8?B?OFVub0Y2RUd5eTJhNk9mUUxJbnJCeGVuci9Rd0J3bW9MNXlXbHFZYzBlREQx?=
 =?utf-8?B?eU5JYW11TkN5V2ZyTldnNDBpUGRLWTRGOEtVaUhMdk5SYnFvTFQyZGpmVlVM?=
 =?utf-8?B?KzVVYU5oQnJYVFVUdTkwQ0YxQnlZYndybU5iMVkxd3ZDNDJ4M0RYVGt2RmdL?=
 =?utf-8?B?MHR3OHRTN3JDbi9TTjRDcjB0U3lTTG1pWmFTcWRKM2plOWhSMEkrVmpWRGM0?=
 =?utf-8?B?Q2hDMUlqaXFseSt6RmJSZVRPVnIwSDFqclVKTTk1WDI0a1A1TlJyTEIrTUp0?=
 =?utf-8?B?T2xhQU9KS3NqaW45VGE5dyt4QkloL3YyTkhFc0RTT2I2ai9VSkFTckpoOE9k?=
 =?utf-8?B?Z1k0dnV2cC9hN0pEM0RTUUVlcXpUWS9oTGRzUjZPTkdOVWkxUTQ5bjdUaVFl?=
 =?utf-8?B?VWl6ZWM3L2VEUVl3dWZXNFcwY0IvQll6MmZFQWZsb0tvbHlLbVBPNjE4MGMz?=
 =?utf-8?B?ZlZTMm5FeGZWTmZtQTIzZjM0azZDY2hycjJjRDk0OW1tODNIcTFkSHc1VElz?=
 =?utf-8?B?eGNJSllGNSsyaXRVTFQ4Q1FyUlA0WEIvOVE2ZjJ2YUZGYWZFUlorOVJSQ0dp?=
 =?utf-8?B?Y1ZLb2lscGRXUndmRDNlSXRFNWpldHF6dkR4SG9aZTFzZ1MvZHE1Sy82djV3?=
 =?utf-8?B?SURZTjF0V0NQbUFZWnk5b2VMTmVFMTNkRjRzU282cExiNlpET21JdlMrcndJ?=
 =?utf-8?B?WDJlZkQvNzYxVFc3UkFab2s1K29MTmRHTGVVZjlHSk1wOWczTUE3ak9VdEJv?=
 =?utf-8?B?YXJmYTZhVnUzVDVWQ2dSUk1ZMGRVZjNTcy9WZFl1emlTS2g1clNCYmZ4aHZs?=
 =?utf-8?B?bzhiOXpLYmQ5WU93cldrcW9KcjNxUlgvL3FmazJIZ3M0UEpRNXBiQlpVWktL?=
 =?utf-8?B?OTFueGFaeTFvdW5wemZCTW1mZVErQUozTjd6NFlWTHdpbFpPMzF2ZFJzMmtj?=
 =?utf-8?B?L3pZVkdBdUViYzFqcHdDSWhRYVQvZ3UvbVlFeUV6eDhPbmtEZm9UaWF2R0cr?=
 =?utf-8?B?T2dtYi9zNHFGYzNhWUZNdjVzblN0RU5VaktwY2J0cTdoN3orV0dqd2tDeE85?=
 =?utf-8?B?c3ROYTJMYkxJbWk1ZUtSWWN5ZkptZzJFQmxsYTl2aC85KzhFR2FVTHJqcU1O?=
 =?utf-8?B?K0x6TTZaVjRLR05URS9LRDdKaEthcyt1bVJlSE1JZE5RSVU0Uml0R2FZZEZB?=
 =?utf-8?B?WmljTVpQQ2RMZUNFcXFxS3Y3VEpCTUd0M2pSankrdjNHYzBCWUY2SEwzMUNM?=
 =?utf-8?B?eWtTaFlJeDdCYVlCcmtkd1ZGcFFtOW8vNlBCUkZXR1lZSFNNRVJEYkxjaXJ3?=
 =?utf-8?B?RWFKbVZlcGtDS2J5R2owQ2dOT2tsaTFPNUNvMnZMVlM2RjFYUHFRWm1mTlhh?=
 =?utf-8?B?V0l2bVMwTEJwYUdrQ0tzbC9ITXFOSUp0MmlGOEl5b2lLNWRteHF5VUlXckUy?=
 =?utf-8?B?Wlk3dWRrODhkcmpGNlRXbE12MTRKZFIwcE9COWNkcHhJazdpWkRuNFNLaVNG?=
 =?utf-8?B?cmU2UTU0ZUhtQ0daQ014bjRSS2VMTGYvUitkZWdJZi84cDRXQjRCN041K2xn?=
 =?utf-8?B?cE5sSHNQeGpwUVkzelZjSFN4MW50N3FlaEY5eEdTZDRyUXFVQ2Ywc3JtOVA1?=
 =?utf-8?B?akp0VTBib0s1Uzh3eU9aVzlCcjk0d2ZZY2ZLWW54RlhXWllSSzJtWkVudzF1?=
 =?utf-8?B?czFMcTBZTEk3R2dCTmo0ZGczZTNHaytVb1J2NUovYVhzdzFnRG5XMWFZcGVJ?=
 =?utf-8?B?Mjg2MTRrOVVXZE5jeS9jNURwUE1KZWZET1JFM083bEpZR05nVmpoa2JjOU1Q?=
 =?utf-8?B?VUJRbld6Z3M0cGlmVXBFTXFhV3RKSGsxTk5HajJ6cnJmVDd4MFJYTEJsNWZ4?=
 =?utf-8?B?WXhDVWxwcFpiUEZSczZ5c3Jwb0NkMGZlU0g2OUVPNGpiZ3VmYUlzMzFaczAy?=
 =?utf-8?B?U1ltZG15dkF0Mm11WlBhclZHVWs4U2pMRXkyWHJVMkl3NU9JV25rNkVKbVB0?=
 =?utf-8?B?czZIN1lTWGFFd25EbklrbTQvQUlnQnQvN0l2SEVlNTJjc3dnelRDY3lRMHhh?=
 =?utf-8?B?eTgydlVDZGdoc2ZpVUJpT0FxbUJPYlByY0NWbnhlM3Z2aTRFMDBRYkNVODJE?=
 =?utf-8?B?QzBVYmRYYlJZYUQ1QmdYa0dBM0pTU1pkSHhvL1VwOTB4Q2hpTTZQK2kyT1dK?=
 =?utf-8?B?aFN5Yk05YlErMHUrNnMzbUZBZXJVS0RXL1kyODVJUWZYWnlJc3hkdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8957a09e-e9b9-4046-2e22-08de838be377
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 18:43:17.4989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U6o141cMUmjRNH2EsKLs3aYHZnYv8zq3/XrgZ/FteAOOd6tJ4CuSlgQNZ7DoDHT6KTYdee+jd2KEmkaXvw6REw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB5643
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
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:mid]
X-Rspamd-Queue-Id: BE64B29F2E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Alex,

On Mon Mar 16, 2026 at 10:12 PM JST, Alexandre Courbot wrote:
> This is getting close IMHO. But `make rustdoc` fails on the examples,
> and there are still clippy warnings - please make sure to address them.

Fixed.

>> +//! use kernel::{
>> +//!     gpu::buddy::{GpuBuddy, GpuBuddyAllocMode, GpuBuddyAllocFlags, GpuBuddyParams},
>
> nit: should also use kernel formatting style.

Fixed.

>> +//!     ptr::Alignment,
>> +//!     sizes::*, //
>> +//! };
>> +//!
>> +//! // Create a 1GB buddy allocator with 4KB minimum chunk size.
>> +//! let buddy = GpuBuddy::new(GpuBuddyParams {
>> +//!     base_offset: 0,
>> +//!     physical_memory_size: SZ_1G as u64,
>> +//!     chunk_size: SZ_4K,
>
> `chunk_size` is an interesting case. The C API uses a `u64`, but I think
> we can reasonably consider that we won't ever need chunks larger than
> 4GB (or can we :O). I'm actually ok with using a `usize` for this one.
>
> One of the first things the C code does is throwing an error if it is
> not a power of 2, so maybe we can even request an `Alignment`?
>
> I'm a bit torn as to whether we should use a `u64` to conform with the C
> API, but doing so would mean we cannot use an `Alignment`...

I prefer to keep it simple and use `usize` for now. I cannot imagine
chunk_size ever exceeding 4GB, and given our stance on rejecting invalid
inputs, this sounds reasonable. Regarding `Alignment`, I still prefer
`usize` here since it makes the caller-side simpler and as you noted the
C code already does error-checking. Let's revisit if needed once this
lands.

>> +//!         GpuBuddyAllocMode::Range { start: 0, end: 0 },
>
> This zero-sized range looks confusing for the example. I understand the
> C API allows this, but I don't think we should. Is there a difference
> with just using `GpuBuddyAllocMode::Simple`? If not, let's switch to
> that, and reject zero-sized ranges in the same spirit as we don't allow
> invalid flag combinations.

Good point. Switched to use `GpuBuddyAllocMode::Simple` and
added validation.

>> +//! assert_eq!(block.offset(), 0);
>> +//! assert_eq!(block.order(), 12); // 2^12 pages = 16MB
>> +//! assert_eq!(block.size(), SZ_16M);
>
> Here we should also check that there is not a second block.

Added.

>> +//! // Dropping the allocation returns the memory to the buddy allocator.
>
> s/memory/range - technically we are not returning physical memory.

Fixed.

>> +//! let (mut count, mut total) = (0u32, 0usize);
>> +//! for block in fragmented.iter() {
>> +//!     assert_eq!(block.size(), SZ_4M);
>> +//!     total += block.size();
>> +//!     count += 1;
>> +//! }
>
> Note that we can avoid mutable variables with this:
>
> //! let total_size: usize = fragmented.iter()
> //!      .inspect(|block| assert_eq!(block.size(), SZ_4M))
> //!      .map(|block| block.size())
> //!      .sum();
> //! assert_eq!(total_size, SZ_8M);
> //! assert_eq!(fragmented.iter().count(), 2);
>
> But your call as to whether this is an improvement.

I feel the current for-loop version is slightly more readable,
especially in a doc example aimed at new users, so I'd like to keep
it as-is.

>> +//! # };
>> +//! # let buddy = GpuBuddy::new(GpuBuddyParams {
>> +//! #     base_offset: 0,
>> +//! #     physical_memory_size: SZ_1G as u64,
>> +//! #     chunk_size: SZ_4K,
>> +//! # })?;
>> +//! # let initial_free = buddy.free_memory();
>
> `make rustdoc` fails to build:
>
> error[E0433]: failed to resolve: use of undeclared type `GpuBuddyAllocFlags`

Fixed. I'll try to run this before submissions henceforth.

>> +/// # Synchronization
>> +///
>> +/// The C `gpu_buddy` API requires synchronization (see `include/linux/gpu_buddy.h`).
>> +/// [`GpuBuddyGuard`] ensures that the lock is held for all
>> +/// allocator and free operations, preventing races between concurrent allocations
>> +/// and the freeing that occurs when [`AllocatedBlocks`] is dropped.
>
> `GpuBuddyGuard` is now private, so we should avoid mentioning it in the
> public documentation as it will just confuse users.
>
> Users won't care about such implementation details - we can just say
> that internal locking ensures all operations are properly synchronized.

Done.

>> +    pub fn new(params: GpuBuddyParams) -> Result<Self> {
>> +        Ok(Self(Arc::pin_init(GpuBuddyInner::new(params), GFP_KERNEL)?))
>
> Can be written as:
>
>         Arc::pin_init(GpuBuddyInner::new(params), GFP_KERNEL).map(Self)
>
> I prefer this form as it avoids the `?` and re-wrapping into `Ok` for
> something that is already a `Result`.

Done.

>> +    /// Allocate blocks from the buddy allocator.
>> +    ///
>> +    /// Returns a pin-initializer for [`AllocatedBlocks`].
>> +    ///
>> +    /// Takes `&self` instead of `&mut self` because the internal [`Mutex`] provides
>> +    /// synchronization - no external `&mut` exclusivity needed.
>
> This is another implementation detail - the fact this takes `&self` and
> is not `unsafe` is already proof that synchronization is taken care of.

Removed the comment.

>> +    pub fn alloc_blocks(
>> +        &self,
>> +        mode: GpuBuddyAllocMode,
>> +        size: usize,
>
> For this parameter I am pretty sure we want to conform to the C API and
> use a `u64` - there is no benefit in not doing so, and buffers larger
> than 4GB *are* a reality nowadays, (maybe not for graphics, but this
> will also be used in compute scenarios).

Agreed. Though, note this adds 7 more `as` usages, but I guess there's
nothing we can do till the IntoSafe stuff is moved to core rust, I think.

>> +    fn offset(&self) -> u64 {
>> +        // SAFETY: `self.as_raw()` is valid per the type's invariants.
>> +        unsafe { bindings::gpu_buddy_block_offset(self.as_raw()) }
>> +    }
>> +
>> +    /// Get the block order.
>> +    fn order(&self) -> u32 {
>> +        // SAFETY: `self.as_raw()` is valid per the type's invariants.
>> +        unsafe { bindings::gpu_buddy_block_order(self.as_raw()) }
>> +    }
>
> Speaking of synchronization - I only had a quick look at the C API, but
> are we sure these methods can all be called without holding the lock?

Yes, sure. Locking is only required around alloc/free operations. Additionally,
`AllocatedBlock` borrows a reference to `AllocatedBlocks`, so the borrow checker
prevents `AllocatedBlocks` from being dropped.

>> diff --git a/rust/kernel/gpu/mod.rs b/rust/kernel/gpu/mod.rs
>
> Let's use `gpu.rs` as the file for this module.

Done, renamed and also updated the MAINTAINERS entries.

>> +pub mod buddy;
>
> IMHO we should have a `#[cfg(CONFIG_GPU_BUDDY = "y")]` here for
> defensiveness...

Added.

>> +#[cfg(CONFIG_GPU_BUDDY = "y")]
>> +pub mod gpu;
>
> ... because in the future I suspect the condition for enabling that
> module will become broader. I think it's fine to keep it as-is for now
> though.

Noted, agreed, keeping it as-is for now.

Thanks for the thorough review! Will respin and send likely tomorrow or day after.

thanks,

--
Joel Fernandes
