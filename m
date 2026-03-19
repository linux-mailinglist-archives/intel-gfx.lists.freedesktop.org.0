Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCeyMZ1lvGmYyAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 22:07:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 748232D282D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 22:07:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7986C10E8DA;
	Thu, 19 Mar 2026 21:07:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="f6PLC31C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010001.outbound.protection.outlook.com
 [40.93.198.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06AA10E170;
 Thu, 19 Mar 2026 21:07:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VqoWkR9RJ2vNtQ581S3lu0erjcyKrTPhhHjj0bqhV0jivWb1dORkIg+mZN5NiiaDWWxRHZQdTe5QkqwonDxDO5cOLWKAtKKY+PxuEjsLcqJ08Epb9u0+Jr2xcX//E+Qq8PuZwvLujeErEajuquiyApkZVQJbH4KnwX3f3iXlTrhLOOmpFTael15/ZebPzxwql1V+MGyoFSHAr5ytwGh3HX0KtoH97zEXfDi8O2fkWJw/w3u714itwderxN6HlAp2uWo5o1JT6MrmELrg9S3GuH2f8qagZhLmW7qm6czwUskpzjxsCuSP6Y/TGszxDmSRaulSDuJGVzFWXrrO7ESjaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yr4c8iOcCTH18guJk1tOZp52jfGg0DnX0LZwPot8nbs=;
 b=LpdymVU1qnXzfI/xc8RDtEdl823SwtJ2TQBfzfiS8hDw/lK9zQjNTTZHKQqY5uiHxruzZlwQXqUSL71YqLCRW1agc461hqlMEMcFPCH7ExWB+0dfqyOD+ZdIHbAnk//eMD+RYnuuLPV3sdr0iT3oK3CD7k2ZhlB0nJZuOVHzBZejo1k7lbwu8P0rXlazHY8Osf1la895lXGIyRsfFT/0ZTazKmiV5dzJ/xrnUJOyL8wgrMqzfxWUAr8k5SiFwlQAIxeZOrUaOo2K85HRRFfLKys5sT/VmEEuvaUYrD7FtHDCJB7rUuynu9jlJ8T2YZk7dqV40KePGYssWEwK30rrXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yr4c8iOcCTH18guJk1tOZp52jfGg0DnX0LZwPot8nbs=;
 b=f6PLC31Cfs3b0J0gP60jjYb1A0FSsikfd5h/e/j7QbTLWPd/QJfrSnnYBZczb/Et8ePF7dlES0rwvcmv5v9B/R0Usxz5Escr4g3t9kE7k+gMu4Igi4tr+3vZGGOR6phjo9vN6ON6IgpOfQHC1JvCPfTqHYChFXSjPTngWkrDRwZPv9GLxoyb8b5rvJOs3Jk/vW0Wx19kf0BlSCDFGFQHHaQTclPekRvgdyEVugXu9y2yDyek80iA+RXRHqQv7hsYnh4IzLrbrF1OKmJ6U2ZDYIA9kryGCvL8apFkogJS8a6XGOj6yoHnvFA4b+zElP7hyH3Z7jY8BTG15gFn6kzpCg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 DS0PR12MB7679.namprd12.prod.outlook.com (2603:10b6:8:134::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.9; Thu, 19 Mar 2026 21:07:25 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.016; Thu, 19 Mar 2026
 21:07:24 +0000
From: Joel Fernandes <joelagnelf@nvidia.com>
To: linux-kernel@vger.kernel.org
Cc: Gary Guo <gary@garyguo.net>, Danilo Krummrich <dakr@kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Alex Gaynor <alex.gaynor@gmail.com>, Dave Airlie <airlied@redhat.com>,
 David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>,
 Nikola Djukic <ndjukic@nvidia.com>,
 Alexandre Courbot <acourbot@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 Joel Fernandes <joelagnelf@nvidia.com>
Subject: [PATCH v13.1] rust: interop: Add list module for C linked list
 interface
Date: Thu, 19 Mar 2026 17:07:22 -0400
Message-Id: <20260319210722.1543776-1-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR20CA0056.namprd20.prod.outlook.com
 (2603:10b6:208:235::25) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|DS0PR12MB7679:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bd12875-ee82-4cb3-1a15-08de85fb846c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|13003099007;
X-Microsoft-Antispam-Message-Info: iXKRYX7YYBYUUK6j3/EwRbiQDtvHg20ven7HoonVB4E28mOJ4TC0v1gBPhx86hjYL9GGhXwrrVARKoWJhXAHsVeQtLjYj5GJn4T2P3BIV7E8YyS5cpFXYAD5HIw0pm5L/+BKOBN25BQSHRhM1fQ/AcMbDgQrJxbGkA3wI/irfokF6Pc9fwzEH7R4Iq5yUh5VC6DtemFwVS9GOmaB9AqB1eQPuXHqdcgoLwP7xuWUcrxj4f5A8iXj2wJPdto32LC5NXYxjyC2dY+mNfN8gQF9KJEAO4KiqFVXj5lWwHltOIeMB6KHeChvpDOe6wdhjL2a2xmSlJZ61R/fUVkgGErKy2vVqnLeeBxQ91CAvAjIaNsGUZIjvS3KsnTY6o2AkSKRhFo36o1W4jhyZ0VJjkmkxu4aLKwVPuzehUFi+HObM4Q/QjFKKrM5VJ1xmXYcpcr9hVB/ILCzIFV18xJmxk0oFpIqU/hJs7LiX3mQ43OO3yJIjSpVQL1hImqYbLjTI3kq48I6OY3Inmi1CTlU8wx2pt1ZbSvhao0A8LygNjrxSyy5IQARrWfh+6Je7tJC89k7EBL1aLZ5yH5mV5jP6cWWs9WeTefkeykBuznffYyxiqZCHm09UZadQwv60xeBRbdE92xENjFVi8OQ0gH/A2JJJrb/V+Tn1D7krHkdiSQ2KHmhdx5FhYoRPFWvXK14znLolXpdHKx+e7PigWGFwHmKh6pQX/vyTrSruy4NWwEz0Oc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ecX9g88RxiGj4JAfUXw8R6Ts4FZBPsMfkUz88S5lZjaFLTTqnH8PHPmC29kW?=
 =?us-ascii?Q?1b/2zZNaZFLpA2ValKZL/OQ+hxcDSzUDQQ5a7ArqYnwC6gV2fdU1r3Co0nfU?=
 =?us-ascii?Q?G9zwMkQj56z9AfdeV11jK0spoMZ4hQZN2VfpS7gUX+C5ow2zTlfgQaPoVyzB?=
 =?us-ascii?Q?5UrECJ42FwR3gUtx5j6AdO6xj78FYBX+xs4DAY+u8fG2bXyU6px0OiULP3p6?=
 =?us-ascii?Q?tZctEpV8NSZTeg9cQYRVnNGj/xcz7DQ98BZWHvhn6u8h7lpEcc5tGR71kuRC?=
 =?us-ascii?Q?8N0H1Ls5FZX0jBctdPLAdQfluwnJKJRMnlRCGpUWtsd1dyBC5LPwMvzsY1L3?=
 =?us-ascii?Q?rfoKdigdKEPEM0K1djnqAUm2uSn0ffAV6zS8lHBKVpVVTRtckW3YU1atbgvH?=
 =?us-ascii?Q?P9zJ6Uc24eJbT26zZbx8oCwBeUO0iyYubjahLzZCUwRoAtGQj23hu7HBbv6S?=
 =?us-ascii?Q?5BL2F4fPUC6joM/n1gg6687KyAzktzpTQF2byjr8ghw1Gj/bxkoTzjyNPv65?=
 =?us-ascii?Q?+JczTcSqlas2pD28g9RPoUGN7AKGmRFjAhbEVuxPUj+ut20oRw0044/2OtfL?=
 =?us-ascii?Q?I/wUek+QoXFTUYUPXyhxXJBLqiyC/sEh4H/4OI/owfUinB1PFm5Iy4P8zeSu?=
 =?us-ascii?Q?RM3qXnwcc1w9lOipjmzKBfkLcKTUg+bU7UVPuJTau0Vp1X1xpm7fbZfPCuVI?=
 =?us-ascii?Q?R7FqF3fv22m9yKChkag2PvWMAaLEVIoUTKEyje//cdLz0y3EoiSXniGOFpQZ?=
 =?us-ascii?Q?4CBB9uftz6WofYJ/9am8iwoSqT22pxwQrOQp57Yv5t5NbpaYNJSQ88chdqtd?=
 =?us-ascii?Q?SG8V9Pee8clfmgGHnG1BDAxd8XrLaxRnrmCqczAwFuweIaFymsszx+9S/czx?=
 =?us-ascii?Q?GK2sKaurlQUzmnFJPgdvq0dWbyoInPNQa+kfoyoyfBdmBZfwbTg/7y4ZnEWh?=
 =?us-ascii?Q?iwffrnLyR9oAwgngeZBWaERHP8dPOQC50VQrconxIx378yvPK9JqFZL8OPFz?=
 =?us-ascii?Q?dBKv17YP80XNOI75PTlz5ns3B5vqthqEbvxUZHndTuIFAsJEH5JDO8LJT4u8?=
 =?us-ascii?Q?2I6IM5Uh+sDyn2PHTb9gOBKKzrF2WJUlKOiVEW/e3298aUnH7G0/YR3n/a3t?=
 =?us-ascii?Q?VpCP1yx2sLK5ZJNtlzi/FYkZ3w9KVE+FEagkpFfGAvTyk02v+qQ2kXEDRnNO?=
 =?us-ascii?Q?Ph0qQ/dPTO3iSODN5/A2gynnh6XfyefCoU8DRO/4c79m2jEllTZSUUB4jJF9?=
 =?us-ascii?Q?2eR5iAoYHuobT6lsKcge2IsGAXBG8TneXet9yg5NeTHoQvXu9ysgb/Rf++yx?=
 =?us-ascii?Q?do+FHkcl7LHDA2IirLMt44Zcr3VsPD7FCFayUO7OZI4+a4uelKTKaXIKSnV6?=
 =?us-ascii?Q?HT5e1MMYkxWxP670H0+inbFtjwn69Mp+bkzOIYfXQaDQ+Jatnlj/h3aRpDyq?=
 =?us-ascii?Q?xMzDDf+cAWckVyW2VEqwLMKr5WFpgbRs85jvefYAEE1hGTtOdZlIBwOzy9Rx?=
 =?us-ascii?Q?pqJA8HDJ65pJRvul7y1Bkw3Gn3evOqk5ygZM2KJN3f69O4+Nkm4TpEIZXnpt?=
 =?us-ascii?Q?yX/TtZhiNSvgKA4up77+Kwj0B0YIU322st9r0SKkrDCN2E/IN1mhVW9GCfqW?=
 =?us-ascii?Q?on/ymmZnP1tLyKDEjtJ9NQ7wK8WSLkfwXE8XtYDau4ak5Bl4nHGwfMNHHgi9?=
 =?us-ascii?Q?YvABo+vjEtM7FLzTGyp3YFu9g+mPnpgsvaZ5osQ7twoJj2IZYgbFRxkX0vDn?=
 =?us-ascii?Q?dn6p5mhm6g=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bd12875-ee82-4cb3-1a15-08de85fb846c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 21:07:24.1959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EhAIicaCfctFWD5vznwkA+9PELdm2C3KXHd+GG3Uif52u131IS+Jq3PMuJ+fPwYPXj8qeK7aIkMwHuC3syBqYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7679
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[garyguo.net,kernel.org,protonmail.com,google.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	RCPT_COUNT_GT_50(0.00)[54];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.970];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,collabora.com:email,garyguo.net:email,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 748232D282D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a new module `kernel::interop::list` for working with C's doubly
circular linked lists. Provide low-level iteration over list nodes.

Typed iteration over actual items is provided with a `clist_create`
macro to assist in creation of the `CList` type.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
Reviewed-by: Alice Ryhl <aliceryhl@google.com>
Acked-by: Alexandre Courbot <acourbot@nvidia.com>
Acked-by: Gary Guo <gary@garyguo.net>
Acked-by: Miguel Ojeda <ojeda@kernel.org>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
Just resending this with changes to clippy safety lint fix (link:
https://lore.kernel.org/all/4728e901-df27-4685-a21a-d33a84946558@nvidia.com/)

 MAINTAINERS                 |   8 +
 rust/helpers/helpers.c      |   1 +
 rust/helpers/list.c         |  17 ++
 rust/kernel/interop/list.rs | 341 ++++++++++++++++++++++++++++++++++++
 rust/kernel/interop/mod.rs  |   9 +
 rust/kernel/lib.rs          |   2 +
 6 files changed, 378 insertions(+)
 create mode 100644 rust/helpers/list.c
 create mode 100644 rust/kernel/interop/list.rs
 create mode 100644 rust/kernel/interop/mod.rs

diff --git a/MAINTAINERS b/MAINTAINERS
index 4bd6b538a51f..e847099efcc2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23251,6 +23251,14 @@ T:	git https://github.com/Rust-for-Linux/linux.git alloc-next
 F:	rust/kernel/alloc.rs
 F:	rust/kernel/alloc/
 
+RUST [INTEROP]
+M:	Joel Fernandes <joelagnelf@nvidia.com>
+M:	Alexandre Courbot <acourbot@nvidia.com>
+L:	rust-for-linux@vger.kernel.org
+S:	Maintained
+T:	git https://github.com/Rust-for-Linux/linux.git interop-next
+F:	rust/kernel/interop/
+
 RUST [NUM]
 M:	Alexandre Courbot <acourbot@nvidia.com>
 R:	Yury Norov <yury.norov@gmail.com>
diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
index a3c42e51f00a..724fcb8240ac 100644
--- a/rust/helpers/helpers.c
+++ b/rust/helpers/helpers.c
@@ -35,6 +35,7 @@
 #include "io.c"
 #include "jump_label.c"
 #include "kunit.c"
+#include "list.c"
 #include "maple_tree.c"
 #include "mm.c"
 #include "mutex.c"
diff --git a/rust/helpers/list.c b/rust/helpers/list.c
new file mode 100644
index 000000000000..18095a5593c5
--- /dev/null
+++ b/rust/helpers/list.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Helpers for C circular doubly linked list implementation.
+ */
+
+#include <linux/list.h>
+
+__rust_helper void rust_helper_INIT_LIST_HEAD(struct list_head *list)
+{
+	INIT_LIST_HEAD(list);
+}
+
+__rust_helper void rust_helper_list_add_tail(struct list_head *new, struct list_head *head)
+{
+	list_add_tail(new, head);
+}
diff --git a/rust/kernel/interop/list.rs b/rust/kernel/interop/list.rs
new file mode 100644
index 000000000000..ae9692383462
--- /dev/null
+++ b/rust/kernel/interop/list.rs
@@ -0,0 +1,341 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Rust interface for C doubly circular intrusive linked lists.
+//!
+//! This module provides Rust abstractions for iterating over C `list_head`-based
+//! linked lists. It should only be used for cases where C and Rust code share
+//! direct access to the same linked list through a C interop interface.
+//!
+//! Note: This *must not* be used by Rust components that just need a linked list
+//! primitive. Use [`kernel::list::List`] instead.
+//!
+//! # Examples
+//!
+//! ```
+//! use kernel::{
+//!     bindings,
+//!     interop::list::clist_create,
+//!     types::Opaque,
+//! };
+//! # // Create test list with values (0, 10, 20) - normally done by C code but it is
+//! # // emulated here for doctests using the C bindings.
+//! # use core::mem::MaybeUninit;
+//! #
+//! # /// C struct with embedded `list_head` (typically will be allocated by C code).
+//! # #[repr(C)]
+//! # pub struct SampleItemC {
+//! #     pub value: i32,
+//! #     pub link: bindings::list_head,
+//! # }
+//! #
+//! # let mut head = MaybeUninit::<bindings::list_head>::uninit();
+//! #
+//! # let head = head.as_mut_ptr();
+//! # // SAFETY: `head` and all the items are test objects allocated in this scope.
+//! # unsafe { bindings::INIT_LIST_HEAD(head) };
+//! #
+//! # let mut items = [
+//! #     MaybeUninit::<SampleItemC>::uninit(),
+//! #     MaybeUninit::<SampleItemC>::uninit(),
+//! #     MaybeUninit::<SampleItemC>::uninit(),
+//! # ];
+//! #
+//! # for (i, item) in items.iter_mut().enumerate() {
+//! #     let ptr = item.as_mut_ptr();
+//! #     // SAFETY: `ptr` points to a valid `MaybeUninit<SampleItemC>`.
+//! #     unsafe { (*ptr).value = i as i32 * 10 };
+//! #     // SAFETY: `&raw mut` creates a pointer valid for `INIT_LIST_HEAD`.
+//! #     unsafe { bindings::INIT_LIST_HEAD(&raw mut (*ptr).link) };
+//! #     // SAFETY: `link` was just initialized and `head` is a valid list head.
+//! #     unsafe { bindings::list_add_tail(&mut (*ptr).link, head) };
+//! # }
+//!
+//! //
+//! /// Rust wrapper for the C struct.
+//! ///
+//! /// The list item struct in this example is defined in C code as:
+//! ///
+//! /// ```c
+//! /// struct SampleItemC {
+//! ///     int value;
+//! ///     struct list_head link;
+//! /// };
+//! /// ```
+//! #[repr(transparent)]
+//! pub struct Item(Opaque<SampleItemC>);
+//!
+//! impl Item {
+//!     pub fn value(&self) -> i32 {
+//!         // SAFETY: `Item` has same layout as `SampleItemC`.
+//!         unsafe { (*self.0.get()).value }
+//!     }
+//! }
+//!
+//!
+//! // Create typed [`CList`] from sentinel head.
+//! // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
+//! // embedded `link` field, and `Item` is `#[repr(transparent)]` over `SampleItemC`.
+//! let list = unsafe { clist_create!(head, Item, SampleItemC, link) };
+//!
+//! // Iterate directly over typed items.
+//! let mut found_0 = false;
+//! let mut found_10 = false;
+//! let mut found_20 = false;
+//!
+//! for item in list.iter() {
+//!     let val = item.value();
+//!     if val == 0 { found_0 = true; }
+//!     if val == 10 { found_10 = true; }
+//!     if val == 20 { found_20 = true; }
+//! }
+//!
+//! assert!(found_0 && found_10 && found_20);
+//! ```
+
+use core::{
+    iter::FusedIterator,
+    marker::PhantomData, //
+};
+
+use crate::{
+    bindings,
+    types::Opaque, //
+};
+
+use pin_init::{
+    pin_data,
+    pin_init,
+    PinInit, //
+};
+
+/// FFI wrapper for a C `list_head` object used in intrusive linked lists.
+///
+/// # Invariants
+///
+/// - The underlying `list_head` is initialized with valid non-`NULL` `next`/`prev` pointers.
+#[pin_data]
+#[repr(transparent)]
+pub struct CListHead {
+    #[pin]
+    inner: Opaque<bindings::list_head>,
+}
+
+impl CListHead {
+    /// Create a `&CListHead` reference from a raw `list_head` pointer.
+    ///
+    /// # Safety
+    ///
+    /// - `ptr` must be a valid pointer to an initialized `list_head` (e.g. via
+    ///   `INIT_LIST_HEAD()`), with valid non-`NULL` `next`/`prev` pointers.
+    /// - `ptr` must remain valid for the lifetime `'a`.
+    /// - The list and all linked `list_head` nodes must not be modified from
+    ///   anywhere for the lifetime `'a`, unless done so via any [`CListHead`] APIs.
+    #[inline]
+    pub unsafe fn from_raw<'a>(ptr: *mut bindings::list_head) -> &'a Self {
+        // SAFETY:
+        // - `CListHead` has same layout as `list_head`.
+        // - `ptr` is valid and unmodified for `'a` per caller guarantees.
+        unsafe { &*ptr.cast() }
+    }
+
+    /// Get the raw `list_head` pointer.
+    #[inline]
+    pub fn as_raw(&self) -> *mut bindings::list_head {
+        self.inner.get()
+    }
+
+    /// Get the next [`CListHead`] in the list.
+    #[inline]
+    pub fn next(&self) -> &Self {
+        let raw = self.as_raw();
+        // SAFETY:
+        // - `self.as_raw()` is valid and initialized per type invariants.
+        // - The `next` pointer is valid and non-`NULL` per type invariants
+        //   (initialized via `INIT_LIST_HEAD()` or equivalent).
+        unsafe { Self::from_raw((*raw).next) }
+    }
+
+    /// Check if this node is linked in a list (not isolated).
+    #[inline]
+    pub fn is_linked(&self) -> bool {
+        let raw = self.as_raw();
+        // SAFETY: `self.as_raw()` is valid per type invariants.
+        unsafe { (*raw).next != raw && (*raw).prev != raw }
+    }
+
+    /// Pin-initializer that initializes the list head.
+    pub fn new() -> impl PinInit<Self> {
+        pin_init!(Self {
+            // SAFETY: `INIT_LIST_HEAD` initializes `slot` to a valid empty list.
+            inner <- Opaque::ffi_init(|slot| unsafe { bindings::INIT_LIST_HEAD(slot) }),
+        })
+    }
+}
+
+// SAFETY: `list_head` contains no thread-bound state; it only holds
+// `next`/`prev` pointers.
+unsafe impl Send for CListHead {}
+
+// SAFETY: `CListHead` can be shared among threads as modifications are
+// not allowed at the moment.
+unsafe impl Sync for CListHead {}
+
+impl PartialEq for CListHead {
+    #[inline]
+    fn eq(&self, other: &Self) -> bool {
+        core::ptr::eq(self, other)
+    }
+}
+
+impl Eq for CListHead {}
+
+/// Low-level iterator over `list_head` nodes.
+///
+/// An iterator used to iterate over a C intrusive linked list (`list_head`). Caller has to
+/// perform conversion of returned [`CListHead`] to an item (using [`container_of`] or similar).
+///
+/// # Invariants
+///
+/// `current` and `sentinel` are valid references into an initialized linked list.
+struct CListHeadIter<'a> {
+    /// Current position in the list.
+    current: &'a CListHead,
+    /// The sentinel head (used to detect end of iteration).
+    sentinel: &'a CListHead,
+}
+
+impl<'a> Iterator for CListHeadIter<'a> {
+    type Item = &'a CListHead;
+
+    #[inline]
+    fn next(&mut self) -> Option<Self::Item> {
+        // Check if we've reached the sentinel (end of list).
+        if self.current == self.sentinel {
+            return None;
+        }
+
+        let item = self.current;
+        self.current = item.next();
+        Some(item)
+    }
+}
+
+impl<'a> FusedIterator for CListHeadIter<'a> {}
+
+/// A typed C linked list with a sentinel head intended for FFI use-cases where
+/// C subsystem manages a linked list that Rust code needs to read. Generally
+/// required only for special cases.
+///
+/// A sentinel head [`CListHead`] represents the entire linked list and can be used
+/// for iteration over items of type `T`, it is not associated with a specific item.
+///
+/// The const generic `OFFSET` specifies the byte offset of the `list_head` field within
+/// the struct that `T` wraps.
+///
+/// # Invariants
+///
+/// - The sentinel [`CListHead`] has valid non-`NULL` `next`/`prev` pointers.
+/// - `OFFSET` is the byte offset of the `list_head` field within the struct that `T` wraps.
+/// - All the list's `list_head` nodes have valid non-`NULL` `next`/`prev` pointers.
+#[repr(transparent)]
+pub struct CList<T, const OFFSET: usize>(CListHead, PhantomData<T>);
+
+impl<T, const OFFSET: usize> CList<T, OFFSET> {
+    /// Create a typed [`CList`] reference from a raw sentinel `list_head` pointer.
+    ///
+    /// # Safety
+    ///
+    /// - `ptr` must be a valid pointer to an initialized sentinel `list_head` (e.g. via
+    ///   `INIT_LIST_HEAD()`), with valid non-`NULL` `next`/`prev` pointers.
+    /// - `ptr` must remain valid for the lifetime `'a`.
+    /// - The list and all linked nodes must not be concurrently modified for the lifetime `'a`.
+    /// - The list must contain items where the `list_head` field is at byte offset `OFFSET`.
+    /// - `T` must be `#[repr(transparent)]` over the C struct.
+    #[inline]
+    pub unsafe fn from_raw<'a>(ptr: *mut bindings::list_head) -> &'a Self {
+        // SAFETY:
+        // - `CList` has same layout as `CListHead` due to `#[repr(transparent)]`.
+        // - Caller guarantees `ptr` is a valid, sentinel `list_head` object.
+        unsafe { &*ptr.cast() }
+    }
+
+    /// Check if the list is empty.
+    #[inline]
+    pub fn is_empty(&self) -> bool {
+        !self.0.is_linked()
+    }
+
+    /// Create an iterator over typed items.
+    #[inline]
+    pub fn iter(&self) -> CListIter<'_, T, OFFSET> {
+        let head = &self.0;
+        CListIter {
+            head_iter: CListHeadIter {
+                current: head.next(),
+                sentinel: head,
+            },
+            _phantom: PhantomData,
+        }
+    }
+}
+
+/// High-level iterator over typed list items.
+pub struct CListIter<'a, T, const OFFSET: usize> {
+    head_iter: CListHeadIter<'a>,
+    _phantom: PhantomData<&'a T>,
+}
+
+impl<'a, T, const OFFSET: usize> Iterator for CListIter<'a, T, OFFSET> {
+    type Item = &'a T;
+
+    #[inline]
+    fn next(&mut self) -> Option<Self::Item> {
+        let head = self.head_iter.next()?;
+
+        // Convert to item using `OFFSET`.
+        //
+        // SAFETY: The pointer calculation is valid because `OFFSET` is derived
+        // from `offset_of!` per type invariants.
+        Some(unsafe { &*head.as_raw().byte_sub(OFFSET).cast::<T>() })
+    }
+}
+
+impl<'a, T, const OFFSET: usize> FusedIterator for CListIter<'a, T, OFFSET> {}
+
+/// Create a C doubly-circular linked list interface [`CList`] from a raw `list_head` pointer.
+///
+/// This macro creates a `CList<T, OFFSET>` that can iterate over items of type `$rust_type`
+/// linked via the `$field` field in the underlying C struct `$c_type`.
+///
+/// # Arguments
+///
+/// - `$head`: Raw pointer to the sentinel `list_head` object (`*mut bindings::list_head`).
+/// - `$rust_type`: Each item's rust wrapper type.
+/// - `$c_type`: Each item's C struct type that contains the embedded `list_head`.
+/// - `$field`: The name of the `list_head` field within the C struct.
+///
+/// # Safety
+///
+/// The caller must ensure:
+///
+/// - `$head` is a valid, initialized sentinel `list_head` (e.g. via `INIT_LIST_HEAD()`)
+///   pointing to a list that is not concurrently modified for the lifetime of the [`CList`].
+/// - The list contains items of type `$c_type` linked via an embedded `$field`.
+/// - `$rust_type` is `#[repr(transparent)]` over `$c_type` or has compatible layout.
+///
+/// # Examples
+///
+/// Refer to the examples in the [`crate::interop::list`] module documentation.
+#[macro_export]
+macro_rules! clist_create {
+    ($head:expr, $rust_type:ty, $c_type:ty, $($field:tt).+) => {{
+        // Compile-time check that field path is a `list_head`.
+        let _: fn(*const $c_type) -> *const $crate::bindings::list_head =
+            |p| &raw const (*p).$($field).+;
+
+        // Calculate offset and create `CList`.
+        const OFFSET: usize = ::core::mem::offset_of!($c_type, $($field).+);
+        $crate::interop::list::CList::<$rust_type, OFFSET>::from_raw($head)
+    }};
+}
+pub use clist_create;
diff --git a/rust/kernel/interop/mod.rs b/rust/kernel/interop/mod.rs
new file mode 100644
index 000000000000..b88140cf76dc
--- /dev/null
+++ b/rust/kernel/interop/mod.rs
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Infrastructure for interfacing Rust code with C kernel subsystems.
+//!
+//! This module is intended for low-level, unsafe Rust infrastructure code
+//! that interoperates between Rust and C. It is NOT for use directly in
+//! Rust drivers.
+
+pub mod list;
diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
index d93292d47420..bdcf632050ee 100644
--- a/rust/kernel/lib.rs
+++ b/rust/kernel/lib.rs
@@ -29,6 +29,7 @@
 #![feature(lint_reasons)]
 //
 // Stable since Rust 1.82.0.
+#![feature(offset_of_nested)]
 #![feature(raw_ref_op)]
 //
 // Stable since Rust 1.83.0.
@@ -107,6 +108,7 @@
 #[doc(hidden)]
 pub mod impl_flags;
 pub mod init;
+pub mod interop;
 pub mod io;
 pub mod ioctl;
 pub mod iommu;
-- 
2.34.1

