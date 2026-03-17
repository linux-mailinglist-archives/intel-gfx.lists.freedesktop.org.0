Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIgQHmKiuWmiLQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 19:50:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D802B12ED
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 19:50:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 583CF10E63E;
	Tue, 17 Mar 2026 18:50:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="T1Qwrhsh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012042.outbound.protection.outlook.com [52.101.48.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1118B10E5ED;
 Tue, 17 Mar 2026 18:50:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ORgLJ8OgtvrJ8aAVIdbQpMogh3u/Jnw7BG4peRa6djmDowgokVf0Z3hgNbVU/F2oNoB4DNuOmyoELJnU6vc3Zu0/xLIIN8Fsb6GalDBPSju/wNJz28D0aum7hI3CUDIiGoN7C5IXaFoscvWb+ZZ4jmTiIgitR+SJe0D2GqOpMxcrYWrt0yNsE6TvCWDS4GOg6s66ISgk9fJXXIZ8unlv4fcb4E/IfqU6l8+qXM5Td7owE/Z0DwThK3O+n+PKBj1g9ESNebT801GE+UZmjTi17lcAL6uDYRP6cVCCRL4wcw2Q2Q2sSzWeWCBLQJvin9hQlWEY/r3Sn2FQ417vxdPFQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BUT3xALfsA+vHD2za7QDm/TpNV1svqadIGJivt6rr+c=;
 b=L+U2TLlZysSYTX6FLe3VxYY0KHx4XC2klvZ3/WFIrzqBqx8yGNIdiuXmO045Uh+7c3nf8GR4vVtlaVcrIE7dyIcXg9oFTb8ErAg2383Dm9/1GMfuG6/AZw78cq1/Iv/hisQ5JdCYNzB2ZpZXvLVUjcLPQS9Ik5b9aCkSBsHH/i2KU06IH/xMHJMb1pmw+Wq1IlgPTvZ2gNFqLHEj4FfN4gUDihCeSyfyCx7exjonMkMGmKZGixI0fLGCkt+gW5CNLxOD4iuQyBQUiI7G0Vrtnkz9Da4SU7cPDEm3aZxkO0jdrGGe8qj6Di52q+Gnn0rvyQ3IxUMj+NB5po42bf5/MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BUT3xALfsA+vHD2za7QDm/TpNV1svqadIGJivt6rr+c=;
 b=T1QwrhshxAhFYerBz9G8yfnosVBuh/zybnQ2Ya49yGLySP1XHQ63VpmO9O9GQw+R7mfe9HjHSQ9BhlER4GDxhYaWd6ENeB1aR4e9SvYK2hWksC7tBQ3hSNSGdO2ahdrz7lxxdrhz3C1eHeyPU5alvW6wsah0J6udD7+HOo/MEY7o2C4neI2x8L3+Dr7EGhDmgmzxL8q0RTOF6uRep0ewap6yAnMtqD3kgYH7nvy7jqnVChG3risBu1lRglT8W3ICxdFiqZReQSRt8eneE09OLo+Lju1aFL7g63/WETf4bF0KGMOLvPqDvWAZJnercV19a3CRbd7vrQfDnG2IMsBO6A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SN7PR12MB8004.namprd12.prod.outlook.com (2603:10b6:806:341::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.14; Tue, 17 Mar 2026 18:49:59 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.014; Tue, 17 Mar 2026
 18:49:59 +0000
Date: Tue, 17 Mar 2026 14:49:57 -0400
From: Joel Fernandes <joelagnelf@nvidia.com>
To: Alexandre Courbot <acourbot@nvidia.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>,
 dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
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
Subject: Re: [PATCH v12.1 1/1] rust: gpu: Add GPU buddy allocator bindings
Message-ID: <20260317184957.GA133980@joelbox2>
References: <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
 <c750e3ce-db4b-4cf4-9254-c381c118d103@nvidia.com>
 <DH4NEFIDGPRD.2DBE9RXHATRNX@nvidia.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DH4NEFIDGPRD.2DBE9RXHATRNX@nvidia.com>
X-ClientProxiedBy: CY5PR22CA0023.namprd22.prod.outlook.com
 (2603:10b6:930:16::6) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SN7PR12MB8004:EE_
X-MS-Office365-Filtering-Correlation-Id: cd3290b8-30d8-4005-1c1a-08de8455fd7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: S/cPADKAhA/jEm6lSkyFyAsRJadjelylz1sqYB0vBP0BojjspAG1NQ0/z1HaRO3h/s9NHEnixJm3EmFfStjAD+4kDOoXlMoARrITr072D6LoagAZyJHYImblwpJEJuLhN34d31j+s69hAEgFZmVnj06FOJlBmXb4zkj5S0tPID21LCh0KN1oVQebxO6s1gYU+a52PsccrUiuocdPmnAxUusGI/o9wCcV7+ITO28THcYqr0Hs3CszseBH7YaHqLB+YfFxzKYCWWYZi7OEIOEMMaH6TKEe3f+IPJqAvGqMXct33MpQ7kFUZKrAyUhpKaXVM6k6wBVa5cGa5dDx8UNN15iUcytna0yzbay33wHm7ODOHTjK/ANs+Vms5PLd+S70PSdOJU44BfRZPoDpjJkwnpP8CniVuC5svHOpPDKJqEgimB6vAUv5azWImqscYCTnYZtjpetVL7DZprnG38u1M4JG09tZhEiWs/5UNo4ufT9kiFl5AoR3rhZ0KWqgFVG+1I+oHyq/0rA3diLxc69UgtY1zBKUhgJPWmtdSXfaxN/3JeCOhwTBzjcmSxsc6jVjMFlyH0XZaM/nBowSxyoS+gudsp+lEp/AWKLf6/503bczC3F2RPhjV1KnUAQ7gDfsyNDqVXEbM7lH0JWYdnn/360ToUz5+fwUqJoBq0mFESKG/fntIYo/tXL8Zn+jIvHQ6RhTs1cwalwsR4rhVAgp2yCFNo1MXzmP6MdTud3Sd2o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?c4IPwKOJID8wyRhrDQ1+1quLSbsOId8aGWGHeJ/AuVeGUZXZVS7RoNKGrdeg?=
 =?us-ascii?Q?rCfEEKmz3Uf+hCNw7a2VMb/07z3qMUfHxBxPFiKR54kx+CX77RhLRb9pO5AN?=
 =?us-ascii?Q?g0EGMVehS5xHr7RTKAOFqvA4UhbWQNLYxdwLRiM/1Qet1wSfJRjOka8ts7Nh?=
 =?us-ascii?Q?h1R40u/eImYC2NJyQhreNfYFzwFXlzLH3A60diDSjDPa1UMVzGOtUrAFGI0L?=
 =?us-ascii?Q?7ygwI0DNLU3fGUscas2DUMV6VqAVnZlpkQ9uYyb6mbioOIqSpIf+h86lbynD?=
 =?us-ascii?Q?qopy3BI3efakmiX1Zv26bCYhlqxy8PlgowLH4gYw0YVZqfG8kD7nkQhHkL8m?=
 =?us-ascii?Q?D5q6K+7jP7YdES+GJ99NGLK6qLVTaxKFJ9qXlx4XYsH0Fky+urysoFCMPAir?=
 =?us-ascii?Q?jkB9QRFkcQhKRVR49ddwe5BLFnVYs11cayFTk22sRp12Bl6iSCvaliOqS1KK?=
 =?us-ascii?Q?RxQfsm/UrOBfX3hIMp8hfjY4t9GtPankTc8HAtermZJIkSmRAzY3iHqcgH+W?=
 =?us-ascii?Q?1TeH3eZYc0fM3nVA1GS/3mLFvmBzWuRlmOa3Rtd0VgH1kZXqPh4VrW52UgwX?=
 =?us-ascii?Q?qXjz26XjNCWP0qP6wVwTKrMM90s8sTWBJnVUyvZA7o5m4j72wn9Qjt0FEa10?=
 =?us-ascii?Q?ROnLC4sXjh8LofioUwGca/qkF63cBqrvUUR/k69kMOoixtLDRKvcMLOT8w6i?=
 =?us-ascii?Q?llIaN/MsYjJ6rnQgjOxA3+73AJUrLonK0WR82vUkzR5We1yeO6vmUwo6I2KQ?=
 =?us-ascii?Q?6YAgbZaLCogvjGaq63KEGCTWwzb5/Nt1gjkR5VLpF4GRLx8kLj0wf8IPS9cx?=
 =?us-ascii?Q?RePaUMjcAy4fRH1jpSnnMQvljoDNia9nUXXDdmUEBRNoSAR/sqRWr/yZJWRV?=
 =?us-ascii?Q?/ct/i2EqAN/uviL19VQoufWHcaoM0f6y2oomVYLigo4gOfqIqnyEtwCTQtTC?=
 =?us-ascii?Q?ZUOKvo2kz80+PNJVnn+RjinLcXy9Cmh9SqUbiTXHZCisGDU747jDf/+vrnWa?=
 =?us-ascii?Q?t2SAeRI12e87IVnf4WgFaRjkOsriGF6wxXBN6NLQeuMNIMCfzOWLdd7+DIpC?=
 =?us-ascii?Q?Ic9f9iJKmn9TKk2pm54pEe0ivA5vBD++uB6GdURqc30qkWU7lnYlQA+xMZLO?=
 =?us-ascii?Q?ZWxvim8DBJ5gA0jWBt467UkPbQssDKYu/gwb1iLFqSid2QsJmrVv7OqQUeaI?=
 =?us-ascii?Q?K8NwTQ2VjHrD2n/cUC8nTA/A/HJz7K8goO5QMVP62BZqO3wEb/bUV35ZqXhz?=
 =?us-ascii?Q?j+UcB09fKilIahgdhxkAHtKWixrdVe+NrVnl1NiZj03eXHChV8HBWRHXKwib?=
 =?us-ascii?Q?KCjTCyqvxPqeFMhJaBRLqepESgJY1KC/3pLVyrJE20ngQruPzsGsTyN2w6eS?=
 =?us-ascii?Q?cecb0hOfEqkRgnvZqM28YJnRY81EfiFf3XtXO5JvjNQVJrYBrmNZX87WetsQ?=
 =?us-ascii?Q?xbAN/hT3CWBL0msHx9xlNJZkN4+GiozAWx+gbTIkMFa4UZGaKsJ6tbhpQz7h?=
 =?us-ascii?Q?/lLuCt8KcTTjvLiqNByuIxpL7nnVsH/gpshhobAGzR0TeLWbzabXSWP26quf?=
 =?us-ascii?Q?laj3G6oP8LeI8DZJwsMq0SpQa+dKTtirTPknl7JU6m4RoZAuhniwD05Z4s98?=
 =?us-ascii?Q?dDFxJMvHmGFckEjFiLUlg5Q5Wm9d9+sAHW8ErIEhS8UJkQM69athLxlPs3Ic?=
 =?us-ascii?Q?vSQmKOJxrna1WPJEtXlnwR/dG2PQRFZdLWjnR4Vzxv6+MMS/Lf/yjaROrObn?=
 =?us-ascii?Q?Ot4YUMbfHA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd3290b8-30d8-4005-1c1a-08de8455fd7d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 18:49:59.5436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6TlEZ0d8Z1lS0xZFQomvQf7jjxO8cqCWlzeCYCYHhppjPQBaovGhkpejb+O5C6aWXQlwA/cmCDenoA2+rX4Jzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8004
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B5D802B12ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 09:58:19AM +0900, Alexandre Courbot wrote:
> On Tue Mar 17, 2026 at 3:43 AM JST, Joel Fernandes wrote:
> <snip>
> >>> +//!     ptr::Alignment,
> >>> +//!     sizes::*, //
> >>> +//! };
> >>> +//!
> >>> +//! // Create a 1GB buddy allocator with 4KB minimum chunk size.
> >>> +//! let buddy = GpuBuddy::new(GpuBuddyParams {
> >>> +//!     base_offset: 0,
> >>> +//!     physical_memory_size: SZ_1G as u64,
> >>> +//!     chunk_size: SZ_4K,
> >>
> >> `chunk_size` is an interesting case. The C API uses a `u64`, but I think
> >> we can reasonably consider that we won't ever need chunks larger than
> >> 4GB (or can we :O). I'm actually ok with using a `usize` for this one.
> >>
> >> One of the first things the C code does is throwing an error if it is
> >> not a power of 2, so maybe we can even request an `Alignment`?
> >>
> >> I'm a bit torn as to whether we should use a `u64` to conform with the C
> >> API, but doing so would mean we cannot use an `Alignment`...
> >
> > I prefer to keep it simple and use `usize` for now. I cannot imagine
> > chunk_size ever exceeding 4GB, and given our stance on rejecting invalid
> > inputs, this sounds reasonable. Regarding `Alignment`, I still prefer
> > `usize` here since it makes the caller-side simpler and as you noted the
> > C code already does error-checking. Let's revisit if needed once this
> > lands.
> 
> I would like to insist a bit here re: Alignment. We are not trying to
> make the caller side simpler - we are trying to make it correct and to
> turn runtime failures into build-time ones as much as possible. This is
> a good case for that.
> 
> The additional burden, if you can call it so, to the caller is just in
> the initial call to `GpuBuddy::new` - i.e. typically once per driver.
> The most important API, `alloc_blocks`, will be unaffected - and
> actually this one already has one `Alignment` as a parameter, for the
> minimal block size! So if anything it would be illogical not to follow
> suit on the buddy's `block_size` parameter.

Right, I was on the fence about it, I changed it one place but not the other.
After our recent discussion, I will change it all to Alignment considering
robustness argument, sounds good :)

> 
> <snip>
> >>> +//! let (mut count, mut total) = (0u32, 0usize);
> >>> +//! for block in fragmented.iter() {
> >>> +//!     assert_eq!(block.size(), SZ_4M);
> >>> +//!     total += block.size();
> >>> +//!     count += 1;
> >>> +//! }
> >>
> >> Note that we can avoid mutable variables with this:
> >>
> >> //! let total_size: usize = fragmented.iter()
> >> //!      .inspect(|block| assert_eq!(block.size(), SZ_4M))
> >> //!      .map(|block| block.size())
> >> //!      .sum();
> >> //! assert_eq!(total_size, SZ_8M);
> >> //! assert_eq!(fragmented.iter().count(), 2);
> >>
> >> But your call as to whether this is an improvement.
> >
> > I feel the current for-loop version is slightly more readable,
> > especially in a doc example aimed at new users, so I'd like to keep
> > it as-is.
> 
> Sounds good.
> 
> <snip>
> >> For this parameter I am pretty sure we want to conform to the C API and
> >> use a `u64` - there is no benefit in not doing so, and buffers larger
> >> than 4GB *are* a reality nowadays, (maybe not for graphics, but this
> >> will also be used in compute scenarios).
> >
> > Agreed. Though, note this adds 7 more `as` usages, but I guess there's
> > nothing we can do till the IntoSafe stuff is moved to core rust, I think.
> 
> How so? This parameter is just passed to the C function.
> 
> If you are referring to the examples, then yes that's unfortunate but
> there are at least two ways where this could be eventually fixed (John's
> SZ_* rework and the IntoSafe stuff), so we can update these when either
> lands.
> 

Yes, referring to the examples. Yes we'll need to adapt it later. For now
I'll leave it with the 'as' usage.

--
Joel Fernandes

