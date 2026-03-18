Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOLmJE6pumlpaQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 14:31:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FCE2BC27F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 14:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6848510E81D;
	Wed, 18 Mar 2026 13:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=garyguo.net header.i=@garyguo.net header.b="ODihMFd0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CWXP265CU008.outbound.protection.outlook.com
 (mail-ukwestazon11020076.outbound.protection.outlook.com [52.101.195.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4027810E200;
 Wed, 18 Mar 2026 13:31:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ycxnemnl44b0t3uEjbWLPiSNjHlYG+HxU1LCr/6hsYXd4/8eW/WnVJTucp6CTWJCy19RVAmojYpMZ64zgpHMeZmuUQOtRC1qhtyqNjfIgtWE6GJ1qoLVw9sS6GtDnKhZWDbM6q98mjnQkNoW9Nka9Zss8ryukjuFp47bZG1FoMwfGp5Gj7/h7xO+TTwFu8D6sCBk0lyiK1AuI4kpMMTy9u/BX/vXrpo8h6V19TfC1I1IhwzMMRaZ0EbLjUW9keqsHXFKXur2J47FKuKZPnrTk8VQ7nL8+4YD6E4y+BMigflYRA4wEO36i3hNGMAbxRRSK6D7YuFtmOVqn9ri5OeLdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iE/SZ4is6qP7GdR+zljFgyHRAIhVcJTHNA3oOC/SGHY=;
 b=ECNor2LirfJ4cc644a65NK9MRpFUJMSLIetnm6ZsDJ8K4AsALrlCZR9yTs+hFnOcqrJPrRyU/G0rT5JASbtwGODmpCSll84Os2+TadWISFC811UgW+g8MixLqDeeeyDEybAv7GsWROZ/+TKYvq8CsbbY3Vxt2NlR2/mSHmYnCMALoHCLGNB9u12r1A8JVBjdKcPo3VRo413VRc/aU/L5iAGSuioGtcIUfFVJryVOdJInkA1VBS0+UpbQC4Z0XI/FFtNxAPyUukSgJCcNdKuslLFarG+JXtX4GUiZrV22b2ROd5MylReaqSFUVgQ+p3Mmn4S3sUZSs66aWWKP7QGMqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iE/SZ4is6qP7GdR+zljFgyHRAIhVcJTHNA3oOC/SGHY=;
 b=ODihMFd0bTnOsO5wh0aXQfd7DddYCNtmvVUUHhPCrijmVxEi5GokOiF7eM0qv46CCtKn88ikfGs1Kyvpd8zOuO9bJT2JPnahhndWRF9tL9Tjlm2ABmnUSiKLFenFJu+9iHyqeQaCflvip90+ihCJeqEM5p5LiI5duh6KI2bVttE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:488::16)
 by LO0P265MB3146.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:15d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 13:31:50 +0000
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986]) by LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986%5]) with mapi id 15.20.9723.018; Wed, 18 Mar 2026
 13:31:50 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 18 Mar 2026 13:31:46 +0000
Message-Id: <DH5Y1UR318WP.VNY18WXEZHDI@garyguo.net>
To: "Alice Ryhl" <aliceryhl@google.com>, "Joel Fernandes"
 <joelagnelf@nvidia.com>
Cc: <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>,
 "Boqun Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, "Benno Lossin"
 <lossin@kernel.org>, "Andreas Hindborg" <a.hindborg@kernel.org>, "Trevor
 Gross" <tmgross@umich.edu>, "Alex Gaynor" <alex.gaynor@gmail.com>, "Danilo
 Krummrich" <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>, "David
 Airlie" <airlied@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Simona Vetter"
 <simona@ffwll.ch>, "Daniel Almeida" <daniel.almeida@collabora.com>, "Koen
 Koning" <koen.koning@linux.intel.com>, "Nikola Djukic"
 <ndjukic@nvidia.com>, "Alexandre Courbot" <acourbot@nvidia.com>, "Philipp
 Stanner" <phasta@kernel.org>, "Elle Rhumsaa" <elle@weathered-steel.dev>,
 "Jonathan Corbet" <corbet@lwn.net>, "Alex Deucher"
 <alexander.deucher@amd.com>, =?utf-8?q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, "Jani Nikula" <jani.nikula@linux.intel.com>,
 "Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi"
 <rodrigo.vivi@intel.com>, "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang
 Rui" <ray.huang@amd.com>, "Matthew Auld" <matthew.auld@intel.com>, "Matthew
 Brost" <matthew.brost@intel.com>, "Lucas De Marchi"
 <lucas.demarchi@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, "Helge Deller" <deller@gmx.de>, "John
 Hubbard" <jhubbard@nvidia.com>, "Alistair Popple" <apopple@nvidia.com>,
 "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer" <epeer@nvidia.com>, "Andrea
 Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>, "Zhi Wang"
 <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <dri-devel@lists.freedesktop.org>, <rust-for-linux@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked
 list interface
From: "Gary Guo" <gary@garyguo.net>
X-Mailer: aerc 0.21.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
 <abppV3e91iVzplcv@google.com>
In-Reply-To: <abppV3e91iVzplcv@google.com>
X-ClientProxiedBy: VI1P194CA0052.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::41) To LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:488::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LOVP265MB8871:EE_|LO0P265MB3146:EE_
X-MS-Office365-Filtering-Correlation-Id: a38b5ff7-0185-4403-b4de-08de84f2b610
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|13003099007|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: kxEdSKVFVdn47/Y3txtisW6tm7TmQ50M1tL5IBiVE2wdANCPkk4+zFzAWXJ4ACRpjg4dGSjHQdhAeJ0c66Nt8MX3ECMq9+G2ZjO+4zyc27ie9t6dv5eqIYfWK+pnbX0AnxHF2F4mqaJ6eHRvwNlbGd5UMQ3PeFQuMQ8Ffww4Q+T1R3Rnrmp5JNA1QiNCNVucVj71+4yDdilWWLcuh1Ve25bui/c8FHyeZzib50IKt1U7Xj30geWz/VQ/iUn5grPjozPz45i3fzzEaH9pM4CIpU6R/q3ne3aKGMqfZCksdOGD56QQ7Q2iAbSgEQxvuzjy9tKkjGgHGNCa3GLlgeYhyR/7UnM2TSKNJI2prEnQ/O58BWJGUEGmRbKD+IxvYdjLAj2GaIpK+p4LYWqrWtiTfAJIk4sQ+2fC/1z3gwQ3VXxR6Z7MTeKH5Rs/vQuetRfx1/EIq61OPbKrJD2g8ZdDTj0IIonRZsiqPwIZZrl7QceKMIHyJFpjqI9FdRcNpPDeHN6UtfYyjQOhnQ/idAgbLnkW0rx5cbBSsyj+jfQKfObnEqVuNGzpfoZlhU0ePNRkEelWsgz2VxR8WpFU4LBZweLMFsvsSumzWwTSS2WIffox04AAwHtXbhIC3nCHJHSOumRakCdIVJQzen8qs6CzeOFQf6YnhOpN3pmhI6qnf5de6MHkOUslbJyO7wH13dfVxkZC7TIkR3AYgPCXECojxnhrqIQCgCFCxjolfEwZKZ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(13003099007)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUh3MGp2dUFhb3J1K2FzVDNMU21EYzFzYUFJN2lDNHRiQjlwbkZVd2o1NDZl?=
 =?utf-8?B?NVhkaHJMU0E5N1VVNmEvK0t3bit3VHd3WUpqSXlZS2Jsa1kwdHdlbHhiczZP?=
 =?utf-8?B?bGZ4ai91WW9zQWcyWm4rb2JmMEoxOWxrK0U3ekhVaEFoZnVxT3J1V0lnZFdz?=
 =?utf-8?B?Zy9nZ1NEUWxqenhZQ3lDaG9UOGhXU1lPSzFhRVg0dVRLN1lobWJyd0N3TjBl?=
 =?utf-8?B?R0MxdWJYRGJ3ZEYzbmNIelpwWllDUzdBRkpjQ2I1c0o1c3Fld2ZtWlZrdnJV?=
 =?utf-8?B?ZGRLTmNXSnNnYklFazNiREIzSFdOYmZUZHp2dndKVzBxYVhTMTNLZS9CR3Br?=
 =?utf-8?B?ZURrVWJNRS9IenhTZ3JPaDBMZUFvbzJUWjJYRlhGbWNuTDQ2bDlybUFwNC85?=
 =?utf-8?B?NERBblVpQkRiYWZXOEJ0NTlSb0hGN2RDY1EyQmdoUlYyRnVqUXdhRnAzSGNt?=
 =?utf-8?B?cGErY0F3b0ZqUnc2Mm5TRTIzZWpHZm5OckZkK0o0aHFYeU5idHIyVDd2SDNH?=
 =?utf-8?B?TkZDNWoxTXBQYUdUVVZiWkRwdkxvUUxjdEVvYlh2UjBQeEtwMjB5WnRPRUdD?=
 =?utf-8?B?ZE51ZitVMFN0SVo5V3NHY3FHMGs4R0VzTDNOcFZJTk0rTVdLK3FucTdzN09z?=
 =?utf-8?B?N21rYmZhRERHeW0yR2FzVWN1WVlpcW55WHJCMXB0NUhvY0hNL0xmK0grZE4z?=
 =?utf-8?B?b3YxazM3TmtMQ1ZuMjJHeWpNeDVJL0Rqa0R3QWlwckxObWprS2VBWlFIVmEy?=
 =?utf-8?B?N0RzYkhIc1d3ZDc1YVBQL0k3WE5EU0JyZGtuTDE4ak9LSnk4WUMzYkh4bHVG?=
 =?utf-8?B?eGJJbDF5UEFUNXFqS08veWpDWk53b1JyR1pjZmtUREo3eHo4Vk1WOGRlaXlL?=
 =?utf-8?B?NFFkMkJxNThKTDdxVHFJMi82YzlZSE82bjR1UnE5RXU4TEp4U2VZaUM5S1gr?=
 =?utf-8?B?MTh1YzZVRG1TYUg4U0VNdVFlVC9sM0ExRFovTUN6Ym1MMkcyRFBnZkpGYVBs?=
 =?utf-8?B?S3Aybm43dGhuendlOEx6YThEZmV2UitFcEZ5eHhLdG1kRk9FSjFvMWNxK1Uw?=
 =?utf-8?B?Qm1xOTFYOE9aM0gwMjYzUk5yK1E5bW1jc2ZPSVBGOSswV3p0WlVkUWhLQ3lE?=
 =?utf-8?B?ajZyaE1qcWRrL0phWUpkRkZ1QTJCODhOZFovaXdmcDZFRCtvbUo5NzVnME5N?=
 =?utf-8?B?SnJqdytHVVdtaGdDUUhJc1QxaUV0a3p6OG92Vy9tSThMT2lVQ25tTXk0bGdK?=
 =?utf-8?B?N2tKalhrSDV0VHFjd0RPbGM2NHRKNkpnZ3A3THpBR0dQVkxwTEhmNE54S0Uw?=
 =?utf-8?B?LzdYdnRkeXFObXBBTTVhWU9FUXNNd1Y5U1hjWFFkamtLWW56eTVtbitidXFU?=
 =?utf-8?B?UTFQbFhadFhEZzFLZk1MRk1Sc2NKZTRXMU9OV09EZXZTdzlXeVZPNEdmTERo?=
 =?utf-8?B?UVF0ZGlYNFg0UUFIVTFpY1VxZzEzQ1pHTDVmRkFDTC9YTllsdXBPMmgrNG0w?=
 =?utf-8?B?V0cvdXIyeUlZZ1pnb0s2V21uQkxidjg0ZUJHYmhGNlZldW9NZDhJdDlRUkJi?=
 =?utf-8?B?ellscG1pK2pncFdvdFFvTkRaMUI5R0ZCVGhpa0gwQ1JZUnNHM2JqY0V2dmlw?=
 =?utf-8?B?aXIxenJKRWNMUzFjTXFZVytleFAzY0ZXWjIyeEs4WmJQcmx3eEFCa3BOeU9q?=
 =?utf-8?B?Wm1VNnI3SDJyYnN3cERzMGRtT0ZDUllqMGsyUXQrU0hobVBKdGRVb1R3dndl?=
 =?utf-8?B?VFpnL1NtdXNFRVNjajlBdXcvVisrN3NIQ2R4MVVGY0NYcHVJdnpWMzVhZzJn?=
 =?utf-8?B?UXJISWNrNEhIQVhkME5DQnFFK0g4NVFQWDFoWDk3bndjWmtRUTNMdjYrOTI0?=
 =?utf-8?B?YzUzdWRKQllaOXN2RGZ6YVc3UFdCVWpUVS9ydG94SXl2MEtCcmRqdnU2aWZh?=
 =?utf-8?B?VXdEaGg3b3dkZDYxaHpBVXFOdGZEQkF5ZCtWZGxvaGpOajFQK1NKSTBFbVA4?=
 =?utf-8?B?R0VtKzB5Z1JLb3VLUk0xTHlxYkJuZG9qMmxxS2JyT0NkNXZwSTREUUtSK1By?=
 =?utf-8?B?S0I2WkU0UnpmZXAvSGc3VjhMdUxHMHl2Q3g3U2Z2eWNzdnRWVkphQWlIYmVE?=
 =?utf-8?B?K1VNNHBvV3dlNVNsZE1TUWRNWjRWeGFrWWVXNjYyMVo5aUQwd2Y3RGxibVE0?=
 =?utf-8?B?dnFGd1g5UXRiaE5PUXJEZHFuU0NuMUxJRk96QzVkZG0zT3lVYTU4S0ZSbzl1?=
 =?utf-8?B?WUtON2x6WXpiRVRQM1dVMGN6a0hsajcreXhZNWVuS3BuS0tFdUpZUDRrQWh6?=
 =?utf-8?Q?B8Ge7X5xh9Pox8eZHJ?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: a38b5ff7-0185-4403-b4de-08de84f2b610
X-MS-Exchange-CrossTenant-AuthSource: LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 13:31:50.5642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E5YStbEOaO5CKMO2Vcr9VB+joSwSOEe0ysDbn+13CqaguEm1dqMgo33RyHPvCeC7zzexF0P3oXSpSptLTpvoVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P265MB3146
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
	DMARC_POLICY_ALLOW(-0.50)[garyguo.net,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[garyguo.net:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[gary@garyguo.net,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[garyguo.net:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[module_name.rs:url,mod.rs:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email,collabora.com:email,garyguo.net:dkim,garyguo.net:email,garyguo.net:mid]
X-Rspamd-Queue-Id: 44FCE2BC27F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Mar 18, 2026 at 8:59 AM GMT, Alice Ryhl wrote:
> On Tue, Mar 17, 2026 at 04:18:46PM -0400, Joel Fernandes wrote:
>>=20
>>=20
>> On 3/17/2026 4:17 PM, Joel Fernandes wrote:
>> > Add a new module `kernel::interop::list` for working with C's doubly
>> > circular linked lists. Provide low-level iteration over list nodes.
>> >=20
>> > Typed iteration over actual items is provided with a `clist_create`
>> > macro to assist in creation of the `CList` type.
>> >=20
>> > Cc: Nikola Djukic <ndjukic@nvidia.com>
>> > Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
>> > Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
>> > Acked-by: Alexandre Courbot <acourbot@nvidia.com>
>> > Acked-by: Gary Guo <gary@garyguo.net>
>> > Acked-by: Miguel Ojeda <ojeda@kernel.org>
>> > Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>> > ---
>> >  MAINTAINERS                 |   8 +
>> >  rust/helpers/helpers.c      |   1 +
>> >  rust/helpers/list.c         |  17 ++
>> >  rust/kernel/interop.rs      |   9 +
>> >  rust/kernel/interop/list.rs | 342 +++++++++++++++++++++++++++++++++++=
+
>> >  rust/kernel/lib.rs          |   2 +
>> >  6 files changed, 379 insertions(+)
>> >  create mode 100644 rust/helpers/list.c
>> >  create mode 100644 rust/kernel/interop.rs
>> >  create mode 100644 rust/kernel/interop/list.rs
>> >=20
>> > diff --git a/MAINTAINERS b/MAINTAINERS
>> > index 4bd6b538a51f..e847099efcc2 100644
>> > --- a/MAINTAINERS
>> > +++ b/MAINTAINERS
>> > @@ -23251,6 +23251,14 @@ T:	git https://github.com/Rust-for-Linux/linu=
x.git alloc-next
>> >  F:	rust/kernel/alloc.rs
>> >  F:	rust/kernel/alloc/
>> > =20
>> > +RUST [INTEROP]
>> > +M:	Joel Fernandes <joelagnelf@nvidia.com>
>> > +M:	Alexandre Courbot <acourbot@nvidia.com>
>> > +L:	rust-for-linux@vger.kernel.org
>> > +S:	Maintained
>> > +T:	git https://github.com/Rust-for-Linux/linux.git interop-next
>> > +F:	rust/kernel/interop/
>>=20
>> Sorry, I forgot to add an additional F: for the rust/kernel/interop.rs f=
ile.
>> Danilo/Miguel, do you mind adding this when applying?
>
> I think you should consider a mod.rs file to avoid this. It's tiny, and
> just re-exports submodules, so I don't think the "mod.rs name in file
> view" concern is that big, and IMO having files related to interop/
> inside the directory is much better than having them outside.
>
> Alice

I wanted this for all modules in general. For modules that grow into multip=
le
files we should really use mod.rs and avoid both module_name.rs and the
module_name directory.

Best,
Gary

