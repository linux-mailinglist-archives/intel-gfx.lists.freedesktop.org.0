Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGOBIn5vuGn5dgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 22:00:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF982A07BB
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 22:00:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF1A10E4C3;
	Mon, 16 Mar 2026 21:00:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="itqQ0e7i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11012020.outbound.protection.outlook.com
 [40.93.195.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5B4710E4C3;
 Mon, 16 Mar 2026 21:00:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qUf4zHIY1S6UDgztGVoDuZ2h8J6QczTcIzNJEWTJzJultmDqVMSGtWSmmizsGyWlwGf75h8JlyWU0D348CR/5lgEnG4UOFJZM/tVwfz6S0hIdHU+BtdBK7AkAEA/1rkJWgk021JlXd9XfXqNx0dayol0XIRianCXcZ1BLOh8Q26se/Ws5pE1+bTStp1cLyHtnH7/eyrJOHDBPx5UknhHoaJ9QBmIYorlgpG1TcTIMe10wbGGeNGioidfktMlbLO+BPQrJqa9wxdJQ+Ra3nwO0mKe33Eg7ab8ghkjQWH7OvBFCDhzh2+juE1Xroxrqn8iMQDgGpYuBPu1+nRyFEAYNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hsbKBRAQJz4LTUdJxi5W5TsGh7lm4wpRWlEe4rZmRR8=;
 b=CPXdyZoMEbGf3NELrQRAIDimB/ocPUAOLoJW3v3IuCVtDn2DKVrbujJ8ygg69zVmA2IDmmERcNtxD4s3LBZ4rB/4zpy6SsmvEo58NIJuuLr6dYqTWc3tyy8kj1tFaw+doFafhaH7oCxUyu7YgdEOxHE1nzywHZ60oUxEjrhcYd6Gbd97VQhVieI6n543kIEUlsNT8U0IumjYVl+a8svi6mxD/IfNPOaGr8lrLvvh6Hek4qDnZRLaOQ8qVxyO4i0n5aTdeclJ/4yOGxR/Uc3zLV6TpqsHxjD13YOdU9gnycJbTVTNM5uhUDM9MBtV4QCe3IaNjWkAGjPnwuUyNeObdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hsbKBRAQJz4LTUdJxi5W5TsGh7lm4wpRWlEe4rZmRR8=;
 b=itqQ0e7ilAOBel50ixeffFkFYidHWGelOVVDtVFYvAx62xREtlXIzhj7QO3Kdp8btlbxps5STcYfzvHIuaJfvJKXUjKDy7d66mateiDy6cZmhd7O3k1bIZ3W7U0IsfjpUNsT1nnFrW+i/Mfqn0Ki9PltvST1hGLwJP/OwZZ+tjt1mulxbMUKKxWNl4MBbrnYvBwSWWn31ciKaAeGPMMqwbWrx12LtqTIlrjg6EnvKciOE7uOd8CWG0NIx2uZhKBkDDOv6Wrc9MaMRvAoiJHsl/ovJShYPQWfBQMAJFP4tCk1H21cx7bCMFwnIEQyrqDeKtHGRT0Q2dFDoLdze7nzHA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA1PR12MB7444.namprd12.prod.outlook.com (2603:10b6:806:2b3::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 21:00:34 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.014; Mon, 16 Mar 2026
 21:00:34 +0000
Date: Mon, 16 Mar 2026 17:00:33 -0400
From: Joel Fernandes <joelagnelf@nvidia.com>
To: John Hubbard <jhubbard@nvidia.com>
Cc: Alexandre Courbot <acourbot@nvidia.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>,
 =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>,
 dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>,
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
 Boqun Feng <boqun.feng@gmail.com>, Alistair Popple <apopple@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v12.1 1/1] rust: gpu: Add GPU buddy allocator bindings
Message-ID: <1773694747.5c82fbe5a9875889@nvidia.com>
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-2-joelagnelf@nvidia.com>
 <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
 <efc10902-2ee9-4cb3-a4cc-442998eef01a@nvidia.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <efc10902-2ee9-4cb3-a4cc-442998eef01a@nvidia.com>
X-ClientProxiedBy: IA1P220CA0004.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:461::10) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA1PR12MB7444:EE_
X-MS-Office365-Filtering-Correlation-Id: 2be91202-f389-4518-bbfe-08de839f112d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 79yygJUH9iOEgOsGTExSo9q+vFqhfVE6yZAKyEZwp9MYGrMqh6ssDybOT46oZAJbqRg4crlJXEeGBT1/ZWay+6nG+OGlU34g7pvSoYKh8swAYmEK1x49CkWJo8SAF3eh0fCWiaLphdL787BZ2OddM+8cAk7H5kd/0FRucEDcYz/VQSVZK/Pu/RflSJeTu+T7al3/aF4nof3TIsXf+LeKaUqPRJdcUEiHLE76R/jsxAVukoOMQLVouKMyQCYgc0faHnKfQr8acDHx/i44OVTN3aWiHat2C0QC/9qsIr0WRyeXFfZWpq5gbHKNpbdPRphCEGBDxhDceNUdk3PAYV+GUce6o39aTwtSwMgCyc34QsF4FH+D7fJkYT+xLtHvb5oKn0xKS96gJSAYc6d71K8lNbfzvt5dALO+r7okj1q4Suyrliu8QAJwBGs3e6BqvGe3gdxtZPuVAfXr27KubXooITTgw5+v2pTFcyptSUR2laZ6iJ/kBaUPiH7etSDbmPROq7oZcrPba+M3Q1MG2XB5W0auod7k8yecpUABCA4z2Pf1tXw1JTfJm6+NFvOApqohaeSFCQTYXn02VB9Vou+R3pDUI6Xdp/zGYQt40dzIC22mg4dJZ65DmrykW5UnHAiL0kkg3i8gXuCVjUnfSHsordxsa/ngRYLWkCMNPdDj2WrF9ol91pgPFamT7O+JVlTOrStsmoPeeQYH4LunNc0//DGAC+YCRfj/rnUaosHAWns=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SlkwC8rnvBakLurGcs35JNJt27McsFixrSfuBBsM4XzAuf+CXekz1RL90EsE?=
 =?us-ascii?Q?ObxY1Be+0BeXAE7t0X/DJ1mLQjjthZLBEqPJEynt9q2UAA1XplR/OMeQEhrV?=
 =?us-ascii?Q?SKAZ8EMop1pWZ5x8qFSRdX1v/R0PsJtG6DSPWuU2g5imsIqosDeTyH5lCkiG?=
 =?us-ascii?Q?1RZebBDvY8sl+OZD8rTjTcB1Az7iGWZq+8ewAnn+PmpMf7B5+fYWv0Mgx8vW?=
 =?us-ascii?Q?+pehZzNLi35x/lXW5FMzxFALtZsHm4g+1OKLN6qndDaOOYQv77BTkRK3ISdL?=
 =?us-ascii?Q?v3uV3P4VSboR4A3cIXgWwhAXuXyC0Sj1hEP+ETsWpNoXvhEJEZ4KXSYv2p4q?=
 =?us-ascii?Q?RYITVbHC1d7KCilHK0lsUPAEDw7DcVuawi0HDXyuEz2OYHbOSWJiI0Zg1QoY?=
 =?us-ascii?Q?FY3kHqbdljTzIZsUrMQid52Hjg0cQ3NA0sXaGkdf89M6re+pigr1uDARZioD?=
 =?us-ascii?Q?NNE8KAxXXKgLp/M8GrcgVGuojQCiyw+pY8SJDS+P4tB/ag6FsDtX2Wd+cwG8?=
 =?us-ascii?Q?7hhtwgCY7P1uropBquaKp5gmP9QQ0kZgKU22K8K0UfyWIBmGTUEa/JPPFvYh?=
 =?us-ascii?Q?iR5j6y9sYPd16xns0nNIiEwyRDbBfhNI4+g1hWNIq42Lg8q1/AYUHkhfcRd8?=
 =?us-ascii?Q?8eZWQ8wkxpKRcYjec82o0KRMjR1PHjDWhUWIOWf62atLR1QpxKx+jQ0oJwiA?=
 =?us-ascii?Q?Bfn+RQhxbtRobRzmxZfP6mZFgqMXZ0iPrcRIzsJvm6tOnoeWX+zsd6+SlMUp?=
 =?us-ascii?Q?rRe9LZ+40Ue8m/DpSY3btiP1DNKY7z0w5THIsa9Dy8bERxZKW1W2L2T0olzp?=
 =?us-ascii?Q?L3MmpllPNKF2IBXDHGaizFAp5J1ZMvCTjB+I+ctGmPZiG9Bd264ZLoDrMYCR?=
 =?us-ascii?Q?r6ssPYzzGTRTSo+svyckqRe4qA8ap8vxVV4fQPRt+zJ/CDRHllY/W1O6t3C+?=
 =?us-ascii?Q?LBiahFqq7vynTosw4oS3nfw+HII3aE3mVxVf9MySg+ZdG9Q1EQIj0BrUeSBi?=
 =?us-ascii?Q?HoJrpwTWNy4viCncFbMZ65dtrkiFhdeqF2W9uGaozcrdq/yU3afEs1ZgAnSS?=
 =?us-ascii?Q?PwIbviEYVFdGxO/cZ2FMxs0NO0Q55tDQD/XnjVU03TjtjHvMx4XVlglAcQRd?=
 =?us-ascii?Q?294W7Scn6hkW01mzFi2zj7C8DLiIFBO7t6CiWn7RS/m/WYBuj+VNlmrbiL/P?=
 =?us-ascii?Q?RauuKpd11XpQHBeNI/uOQ50M7IY/8kPzaiEvhTQSi22HZ1q0V2JE1slzvC7x?=
 =?us-ascii?Q?kjmpilGzzaCXuurn/67zx2HNxEC0j9VHxrsHc/PC1Izj+3aXzJV7SqfL27WL?=
 =?us-ascii?Q?myLzPV2JfHv0nLwCYD3MV+0w4e2NdtWyQiCGHORsGzA/mIFQefvaYab96E5b?=
 =?us-ascii?Q?g4KaHXjASJOWogzs1B5Njnf62Bc051THz97Jz2xgrTyNsc9fth750/nvnTrp?=
 =?us-ascii?Q?sESZO5reKBkPvknHA9uj57G5Icm1D0u0eiQ7r1YnGs60L88hX/9xHTL5zHkG?=
 =?us-ascii?Q?nDZG2onR1u+rzwCg7pIndKkKu4KwjkRoLS32Vn8WwvRJIsUBFUiATJmaXalE?=
 =?us-ascii?Q?jIyqHts0/BzzZwGaXxt5Ie07zXaTKbLyyUmbqv5L+yfalzEeADM0g/tpul3e?=
 =?us-ascii?Q?A8jgppEKnJlNA4cke/nBHHxp7JunABduvUY0vb0d9f4BCAWjLi4VjNa/M5nX?=
 =?us-ascii?Q?awSOthqIoydIHatsE8cCDz0jURi4joISA7aLmJHrR91jfTHknl35tbFSARAX?=
 =?us-ascii?Q?EACH6mKtKQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2be91202-f389-4518-bbfe-08de839f112d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 21:00:34.5983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aE8v4tAqjUYOoL3corf56PgYhwUydchBsj+uLTGrhyXMPcbMy8uzkNSfjrL6NLhr7tzjhaWy5yih5xFJKF6L2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7444
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
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[49];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,gmail.com,weathered-steel.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:mid]
X-Rspamd-Queue-Id: DEF982A07BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 16 Mar 2026, John Hubbard wrote:

> Alex, have you seen my Alignment patch [1], for that? It's sitting
> around with only Miguel having responded, but seems like exactly
> what you're talking about here.
>
> [1] https://lore.kernel.org/20260312031507.216709-3-jhubbard@nvidia.com

`Alignment` is already in core Rust for Linux
(`rust/kernel/ptr.rs`) and I'm already using it in my nova-core v9
patches.

-- 
Joel Fernandes
