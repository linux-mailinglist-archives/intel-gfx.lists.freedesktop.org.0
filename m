Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGfUNwNr4WmvtAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 01:04:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC3C415704
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 01:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D597710E948;
	Thu, 16 Apr 2026 23:04:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="HR7fZXlC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011011.outbound.protection.outlook.com [40.107.208.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73D9610E943;
 Thu, 16 Apr 2026 23:04:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qs/aU65mQIFttXTEljAuSwSeiAI29CtD3FqQmcclUF5ZZWcdwyVmMJZORtWyow/Beh210TXLmeBmtKRs03iLm9Ta6i8unjvVCpmXLVv8RY+CAsJ4VuLE5qGaGT0gL2vO8uQxycrff/OqOMlBFZuR9ILVu3yoF4ixv1GH2MmOCeEX6HzbrMk4UFYs547eSwCdIbWJy9Rtwi1h0btyQgl87LPF8dcM+9QUv0ax4M0A8oyAG+FrigEQfU/EK7v5KKbme3f3xEEI2mXYcURWOEtC2wznEZ3NlM5RTnirN7yDOknYCNDYEkwwlPy0H/TGYgF+ZG6PVHu3c3X7UBSWSLN0bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UuDgkfJ5IIYy9queJlR1vvg8pABrUza2CJcLo1cZmzw=;
 b=XmICTcUFbbiqR+lkuA5UEm+LenESUDIPusW77QxL32nO518uZ1q+G1+CUGcRjRkYpnajky6XTPkfCtlRJ0cnqnyZwAqcH+e7UBQAN7KqEnNFTf0/W9IM/6H4YpKyoqbEW7qq9FZN95hi4w+eZsNlby4J94B9diZ05wA5ibvdvXi0a1Br5eW/vnNx5tanB/L8GpnedsWZAOD95xkCLlPdHi0BPy/yrPQKeI5gdqqPBTy/EVwf2k5A5BXv8YwJyN2m9+Be+7Yq1wW9sznmjX2AeV++/KWYJL23X17ubVXoFO0b7b5ULcvcIk2qYG2YnJKgj2FcfxOPZwrak6e7rtf/bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UuDgkfJ5IIYy9queJlR1vvg8pABrUza2CJcLo1cZmzw=;
 b=HR7fZXlC4q70mVPEy48ITfgC8hSR5icUw/LtKmGX6fB5yLazWyIjY5xmSZXeV18pL5o3/+bYnsvRh8/AmAowM+XQjDafIqcwNY9O50IOGomXDx2o8ha+pJCXJsOVXycDtPvZ88CHpO5+OooHp9WjeZmqUnqD274VqRa0M0voMAdpeAkC10uQcfKC8+EhSNBXIUDHwdFSGB74nq81bSM4g/XnMAuDKPfK/KqaIhU6iuzIMxSw9dHeJ6PVpQztA+uVRIiWkVuHdkNffcHBpWkffFLtTN/ctYdTk3pLV1AOxVHxRdkhZ7Ltf6N6EBCoQ6J5RnqSad7OB8wKVAnviMzyfg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 IA0PPF12042BF6F.namprd12.prod.outlook.com (2603:10b6:20f:fc04::bc8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Thu, 16 Apr
 2026 23:04:22 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%5]) with mapi id 15.20.9818.023; Thu, 16 Apr 2026
 23:04:22 +0000
Message-ID: <5405cfc5-f80d-41e2-ae36-3cec48025add@nvidia.com>
Date: Thu, 16 Apr 2026 16:04:19 -0700
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
X-ClientProxiedBy: SJ0PR03CA0079.namprd03.prod.outlook.com
 (2603:10b6:a03:331::24) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|IA0PPF12042BF6F:EE_
X-MS-Office365-Filtering-Correlation-Id: 84c4a2b6-04af-48f9-1516-08de9c0c7f69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: rt4R6tNu3JxLbBff2d8bsZEvrtBh69KFDfBCgdQA/SiEFtK3Vr8SyV3HJAePfQ1u9OwC8Dd1RLfViVJZ2QbbzOPZXx3gG9gb0rS/dPcf2ltT4Fp84n3K6ZWi4vLwdNOlk8r9/6gQS04bGDwYbWpCvlxlNw07MWKZp6VY+XTXk+PeAwsuCM96p+lhhuvl6s3xWHrV/kYdBbAM8fQu06DG7aHgLdLyIwMvE+CE/qlr9ko9XuVObNkn49v76Kvnu3qs4REzZng952auM8L7MEIxoBvnp2xrJnzloLdJh/o1k2iqB2o1VYQwTCKobZq7zS/NPFtyjZFH3gzyHU/Q58RSelDfCtcd93438IsaWKkk2TIhZwNrc8D/gRzdoh2pwgaK0jr4SQu86ukx+ZPriXgp9eQ9Vxh9vZmrASwbGNd6cHFRk911vJKgK1PrKC+bEgz+kEi+UQ4zFII9WeNoXkR3tQF+keOFPMSh24TGMK2pi/Erh/d5fcu+CiWYtHZEEGkRQiznmf8sJG4pY4u3/b3Qbuyw30aVlAAfJJTp2t2yW8f2VZkuE0ywzir9VeGQSO60PqXPe+2wxhwdXpXBxF3bUTN7Hpn4BH/6E4JL6grtYvNMOjl4uNncWWyhx+5gzfW5/+KWL6yQ6bH1hhhco1fuLHgGyPehDPj9Xi8nMyPzLaUBKMFbfkNzk5mX67lPZUnF6kznDNYM2nRpl4SbKdv/zlupl8G30IAksNh2yJYtmtM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PR12MB9416.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlNHOWk1MStFMVQ3MnRwZTJzei9OdjMrczdNL1c0dE13UkVJRHZUeE1yVE41?=
 =?utf-8?B?YkZVSHE2TjV6Rkppa005NFRVSWFiV2I3aGNuaWNNMjBvUWZ4WG1GamttMjlR?=
 =?utf-8?B?MGZpbkRzSUJGblJWOVQ0WSthcEN5dkJmOHdURWJMdjlxVEZ4RmpwNEJGTC9y?=
 =?utf-8?B?MjhkVVcwZ0t4cGs5TUYzallvSkdicCt1d1FpczFXMXBNQXZKRjdydXA3NVdD?=
 =?utf-8?B?c0tWWjBzUStleXp5ZkdkaVZBUUNmNWZGWWZWeEVQREZkUWZ1QU9HMFNNd2p3?=
 =?utf-8?B?ZzFyL1NWZTBhN0F6cUJjdHZVNEcwcXJoWjczR2dwa2p5ZjByQWRIbFI1K20y?=
 =?utf-8?B?QnFEWUdkclRvV3JtOXhFMVozNmNWajIxNFVZOENYR1AvL21EVFlkOFRJL1FG?=
 =?utf-8?B?eEVvN1NnQlFqdHZoOWhrUTFmVTJnakNRL2dDSml6SGJqSWhDWUplRGExajUy?=
 =?utf-8?B?MkFFQU4yajRnanBPQkIxejdPNVoweGNoRVFKbXlUZnA3b0hscHZQbXd1bitj?=
 =?utf-8?B?UC80anVXS2JtWUpablpua1p4YXZsazVxMk1rYWdUN3lCNjJzRTZCVkZ6cUpI?=
 =?utf-8?B?QjdJTGtnR2NiZFZlSVZCSE8yWWVvNk9sdG5GT24ydmdHek1UMEtXOXhLNFIy?=
 =?utf-8?B?MEpocVhPd2V4WVMzK3FhZUJRdjhZYi9oK1lUei9wMHdjbnVjLzFLYWFFZHU0?=
 =?utf-8?B?S0RUbVhETktPeHc4TE5kM3F5TUp1aWRYZlFUUzNWWWVXN1FYL1lKamI1U3Bi?=
 =?utf-8?B?WHlBTS9SSlgycUhFV3JHcklmV2sxanl4STZ6WnM4Y1FUMXU0TitaU2xLNWdz?=
 =?utf-8?B?M1ZtOTBHb1Z0bnNwN3o5SWJQbzAzK3FjS0Y2QWNnMUVWQzBVSnlVMTRJK1F0?=
 =?utf-8?B?NFFnYW5STm1RdHAwNE9HMG9DYmp2R3p3a01Va1B0cHpxWGtHSFRUUFo5cDZ6?=
 =?utf-8?B?WGtxK255YW53SUlJSlh0cnJaMnNYdVNNNGZjY2ZzaThubHErOVE3akpsOWlw?=
 =?utf-8?B?Z05RZUxRK2VSek0rcHFQRlNzMUs0UGhudGFGOHNwK2ZsMStWZUx2S3M0YlFq?=
 =?utf-8?B?Sk15eFhhdmJHdW05aFZ6TnRsM3FJUENRUzAvSGpRdnZIdzM4Mm9KL05BZXVY?=
 =?utf-8?B?RGFhNnQ4RWlIV0tNVmxDejg5Q283dmozcmNUSGloOS9UNTZ1RUY4dHJ3cmF3?=
 =?utf-8?B?TWZtc00rRzdvUDBhbGxMVUllYy9rN1pSelNsejNiQWZWczJjMEIyUng0S1dl?=
 =?utf-8?B?Yi9VdXYzdWdqR1NFdTNuOHFLR052alczTDhEbEZqeWIvcnBHM1IveUUxdnhY?=
 =?utf-8?B?NlFLKzU5eVdFMVU0MmxyNzBwQ3hQZVlyMHNZTldVdHFMTVp6UGluY3hrQndH?=
 =?utf-8?B?REJkUWZvclp0d0YrWmV4VVN2ZDBQcjA3c3pybXJyNTVvNlhpVnc5cjBQcnRL?=
 =?utf-8?B?ZG9TeFltOTlBY3c2ZW5QN0VLZGVSd1ZxQldoMWdZREk0Qi9hS0hsUzN0OE0y?=
 =?utf-8?B?NmMwNXEwN3dxU1BoV0FzemlGRVlsMGtBNnRBaGxIMWFuZ1BoQmhiRGdObWpn?=
 =?utf-8?B?bzlrdURncWdnWFNRaENIUHdWNUVZYXQ5SmpYemdQTi9wNUhiNHI3eW45TWN1?=
 =?utf-8?B?WCtlQ0crVzA2cEF4ODlxY1NqdENnTk5EKzVkZnF1YlFQOGR0RUNpc1lWSWJ2?=
 =?utf-8?B?bm5KYmhYVVZXcDIxSHJTKzBKcE1va2VPazdZK3had0xWb2xlVWpwQVZ1d0Jq?=
 =?utf-8?B?emtsbHplNFJxQ3IzMzR0QnlrN2Y4aVdPK010SjNOdlZFd2xTaFdhVGk3eG9W?=
 =?utf-8?B?dzlsWUFuemNvdXhzRVlHcnN4V2ZobmN2bXNwOEQ1c0xwQjRQQ2toV1lHeVdm?=
 =?utf-8?B?eHpQcXd4K3VqQlZDNEZFYWQxSmNuWmhkbUcwTjBHUUY3NnRydmQ0RVQ1T3pH?=
 =?utf-8?B?aXZ2cDA2b0wwTmw3TVJGNzNYdjRlelhTK01wWW5SeFFXb3pnS0RWQkwwa1NI?=
 =?utf-8?B?Rm9JRlNrZVV3NU5YaTRXNFhwUVVRUzJhRmc3WG5YbThtTkg1WVUvVjNkYUZT?=
 =?utf-8?B?dFNOd3pqcG1yZm15Q2VqQ0w3b1M4eGJ3NHF2R1JMam1UUzdGV0dNcjRPRXpO?=
 =?utf-8?B?MWMrU2Z5SEl3d2V2RStxWlBLVzZKRk5nUjhkQWZ6UkFERE9NbmlhM1c0TEpt?=
 =?utf-8?B?bHBZUDFSUElJQ2w1S1AzRHkvRWNFQlZjNkkvOXBPYW1PcEVEOHFxZFA3V1RE?=
 =?utf-8?B?MXJPZVhMS1hPRnJJeTdDdi8yQjZ5WU9Hdm04TXFLaUNqeDFEdkYvYkFUcXVM?=
 =?utf-8?B?MEZhZC9FajZmMHJkWDd1SHIybVlNL0laWU4vcjRieXl6SWppempOZz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84c4a2b6-04af-48f9-1516-08de9c0c7f69
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 23:04:22.6417 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GpT1PnUGCuOcE1uDwqtB2mmHER6u25nmrDJQUIJi/ZSV0DYBh8WlVrmHiKSXP8tuqpVqsumgrW1AZF5sFNNgJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PPF12042BF6F
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 8FC3C415704
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/15/26 2:05 PM, Joel Fernandes wrote:
...
> +    /// Extracts the first usable FB region from GSP firmware data.
> +    ///
> +    /// Returns the first region suitable for driver memory allocation as a [`Range<u64>`].
> +    /// Usable regions are those that satisfy all the following properties:
> +    /// - Are not reserved for firmware internal use.
> +    /// - Are not protected (hardware-enforced access restrictions).
> +    /// - Support compression (can use GPU memory compression for bandwidth).
> +    /// - Support ISO (isochronous memory for display requiring guaranteed bandwidth).
> +    ///
> +    /// TODO: Multiple discontinuous usable regions of RAM are possible in
> +    /// special cases. We need to support it (to also match Nouveau's behavior).

Please let's not (ever) mention Nouveau in in-code comments. So far we
have held the line on that.

I think the TODO itself (again, without referring to Nouveau) could go into

    Documentation/gpu/nova/core/todo.rst

instead of here. But if you really must have it here, then OK.

> +    pub(crate) fn first_usable_fb_region(&self) -> Option<Range<u64>> {
> +        self.fb_regions().find_map(|reg| {
> +            // Filter: not reserved, not protected, supports compression and ISO.
> +            if reg.reserved == 0
> +                && reg.bProtected == 0
> +                && reg.supportCompressed != 0
> +                && reg.supportISO != 0
> +            {
> +                reg.limit.checked_add(1).map(|end| reg.base..end)
> +            } else {
> +                None
> +            }
> +        })
> +    }
>  }
>  
>  // SAFETY: Padding is explicit and will not contain uninitialized data.

With "Nouveau" references removed,

Reviewed-by: John Hubbard <jhubbard@nvidia.com>


thanks,
-- 
John Hubbard

