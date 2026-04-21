Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPhYLyDv52mhCwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 23:41:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A4943FCF0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 23:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A144310E236;
	Tue, 21 Apr 2026 21:41:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="mW/hxuvx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH7PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11010026.outbound.protection.outlook.com [52.101.201.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23FA10E221;
 Tue, 21 Apr 2026 21:41:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y0Sy4kHFjxz8LJ2fhiLXfPr8oaI2s8HMU5fCtkSoRoT6loBleraGrRHS6Lsh4OkQRzPZ2X5eWXXVFm/cigQ4MikQ47rgwGqvrdHz9mbi65U25VmNkvX3VUESME5itUHSXFbUlD6EcK06Zei/dbn65SKgtZ1dV6oxvmAs1bVFbM7K/kaqChd4S9PGTEqu+ihvqRUjl4MR7Qjk0XalkEmLDmyKv2ypcxz8gjd57e/pUaOOMzLpLzqVNU5aYDejyeGYSXRkjNBlupUCfxko07qCe0koI6GNBllycXM0yAfyTvRH0rCcm3OLVxfIVMgYWJjCzKbXW25FVQ3CmUQnaGbRTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mfjgBsFYQcSArQfUsSR3r5XeUoRE0fE8lHRz9hWLvQc=;
 b=rcUm/I9ATW8v9kQy++1YNmLyHCN9FJpplCxQekz2uQSs2c9rv6uzJUhSc2GYw3D/vlZlnJ986Y3066Mc/APRbrHJZrgNRmVPYGM89yZLwsw6EeCoW0b58r4fcwob0T6ve8jK3R4UdRtLQI8kTgRXXRq82rB/65gN9oA7tAiSf5TG2BYx2NWcMNKoF3aiTo4KL8ql2z3uah4Ck1Ryf5rYzbRdwqM8WolfM4Ni7ho2fwZALFFf4yw1dhYxkQmmV7hW6hFi9225TeCsC94m8ndL7wG+iWh7xxM7w2fjWqrXgaA7xOb4b8yh1jlzJYUaIH7EsUYCaEPl6kH8OOPNxlfNXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mfjgBsFYQcSArQfUsSR3r5XeUoRE0fE8lHRz9hWLvQc=;
 b=mW/hxuvxWtVJWsIujhqhMIKy4noSArQVFPYAgdlej2mEGU9NgFXDJWUVEsj4wrD4WIg57wsJ5Hg+O4PkLuDQjhgl77u9vx5dUQm78eu4VLtQQj6e8dOq3SIf/WfQml1ySVW3y8ZjbyLPbS8m9jcjrOUoN3UlbSVjvX+6Lvksr9F+zgYlrMVTNshoKuzOYJ0eaoKMI1yMF8RQKCIRExW5TsS1S57LykbevpJE5f95B+h6Rslz6Qicl7VJrZ7y0/OQahyZoWpU7jM+zDbr3LWFWflIPlweOa/6FxfV5ACBr+EnAfCctNDThuFCg16yxnRaUhZzxhoAkjAZ3CojW6kSdg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 PH7PR12MB8779.namprd12.prod.outlook.com (2603:10b6:510:26b::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.15; Tue, 21 Apr 2026 21:41:43 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%5]) with mapi id 15.20.9846.016; Tue, 21 Apr 2026
 21:41:43 +0000
Message-ID: <3387f589-a9f1-45f1-b15f-461582d82660@nvidia.com>
Date: Tue, 21 Apr 2026 14:41:39 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 02/20] gpu: nova-core: gsp: Extract usable FB region
 from GSP
To: David Airlie <airlied@redhat.com>, Joel Fernandes <joelagnelf@nvidia.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 Bjorn Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin
 <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>,
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
 <b0c5267d-ea77-41c5-94d4-39c651761b3c@nvidia.com>
 <20260421145521.GA51176@joelbox2>
 <CAMwc25o2qmaYnfsh-cW4M4PEbmpYb_1x4qg1_2155P0orzCnOQ@mail.gmail.com>
Content-Language: en-US
From: John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <CAMwc25o2qmaYnfsh-cW4M4PEbmpYb_1x4qg1_2155P0orzCnOQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0125.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::10) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|PH7PR12MB8779:EE_
X-MS-Office365-Filtering-Correlation-Id: 8da780e3-fbbf-4257-0542-08de9feec769
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|7416014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: np1Nh2O+V7DWNePOHuQruRSCZ2dUmh8Fy6v0nNZQ03EJ4hP+Nw/Q5XX7DHq6eg6ZYiAcru1IJzMcKiOJiS7FUeca42rqDkSP6GN+HsHj0+eDv/sTVP0x9a7Hmd3yyNtkaTNfZRWXdGGgZbzppXi4kfPh47IAtqxR7cGu0f/H3WoYY75vuxBTzIrwIfCg7XehIgnIvtYgU1ltP9Jd0bNcLYPLVdeU9qPhjdmePVOgwv9cU8Crr9FBi7GdLZ3GV9XD5rnb8bN63mvrs27kLM0gVNX+SVU1N4Y17nVUpJbaOEClZf2lMnpQ4L12he/kauOMvdXnz0Nbk0EPvLxMOGJF+p0us/kH3kPLc1flxl6WGaaRJVAxjp+hlHFNmABqcNEtbu4DbebIISpZJmELi+b6DwH204k1Mmos+wkZtWQzN1IVWbhmWU84oMW91tCd8DHo3+NDfVPS2HmnHSPzeGE78RlbxPCIpxQgUdv1XcoFKT6utfBwmWHdMi8BK6kf28jR1Aw3AJdMoc2L9PsQF3Q43ro+dSKqWcATx6aL6dsVa6wrF4nfMKzKTFGnPeBX7pdSqMliXD4IdJbQNDET3lXl0rgmd1UvpFabBpbkUkKsDJgttXZsCCrVkr6qYB96cZYabpdwfaNOaFyB0BfLFT+y75+7ruOIBTRbh/5mBBPxs9QkedMxrHSPMz9f4+EmNeXJh8guiUVw1NjVTJJdoIWHlkcitaVqiU1tnhy6HMVZeuw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PR12MB9416.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(7416014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2Q5eGppSFV1Yk9nNlZZNDEyZEltWTRscmI1Nk5CUHhVYnNhV0RHNUJSWlBQ?=
 =?utf-8?B?Nm9ZdHdBdFZ4V0NOaWE2SFgzc3dDMmJkZkZPdWZpMVprOC80TmxpWnVmcWs1?=
 =?utf-8?B?ai9OYWhLZXhpR2xyQ0Q3dHRIYjdXWnRQMzM5SW52dlRPd0QyMGlKNWIvcndn?=
 =?utf-8?B?MmRodm9wdEJVdGxnTXFUWHB6bDM5K0QxejY2SkFDN0hId09PUjZGL1JXZXB0?=
 =?utf-8?B?Y3QzUkF6TllTWE9yV2hmM0pRWEdRS082MVU2QW41TGZmazNiMHBYVVErOHhj?=
 =?utf-8?B?QWNzb1puZGk0b0xHN0kxMkNRaDhodU03NzJPSURZV3F5aVl0Q3VPMXhBOXEz?=
 =?utf-8?B?TlJUWHlHTURyRmJFc1VUTVUrbSszUUNSNE83dWcrNDNZY2FPUVJnODBucmg2?=
 =?utf-8?B?d0M1YXM4L0hjNURuN0J5Y08veWNqZ2ZOS0JWQWM4U0Vxb2hRRDVzNEFpZ3dD?=
 =?utf-8?B?MmdxdG96WmNiMytnc0xFVkpndWNQM1VYdmJxd21acWxtUXJCMnkxR2E5UDlM?=
 =?utf-8?B?b2hzSFY3dXdtNUxRSE1NQXBlNXNMN09GMkFpM1pTNkgwUTY4T0ExMXRQSzBL?=
 =?utf-8?B?a3FFNzhtSnRJNXFLY0I4UkZhR2ZUYytvSWU1dWE0Vm5YVXBNVnpKTnFMM25Q?=
 =?utf-8?B?Vml4SnRPVkJCQk5vdG9vSWxHaUdaQmxsY0k0QVNhbG9DM1NrTGVPaHdJTlVR?=
 =?utf-8?B?SldUaEZxK2grYWtBckZFQUJjdG9pcEJ6bkNMTU9kS2V0YXFDanJ1ZkFDYTY5?=
 =?utf-8?B?Ym9pS240YnNpV0xudHhKMmtna25nK2pKUlNtbzQwSW9UQWJjTzJ2QzVCOUEw?=
 =?utf-8?B?N3dtRGQzREJCVUF4MVVja0hPNXRCWjU3VzFONG5KT3gxWXRqRnhOQVVmZlRz?=
 =?utf-8?B?OXVaY0U1MzRkWmt3M2tkSnRuZGdvMERaQlBBWEhzTVBVSVhSRXU5YlZGeVlX?=
 =?utf-8?B?UkxNWGduMytDejRDVFV6TTFWTnlvUW5rRmdiSWwyLy9uanZUdWwrcWtuT3pL?=
 =?utf-8?B?SG10cWRrMTd1UHQyeTlmTFBncENDTkdJWWQ1enQ1TDVJVHBMN0tDZ09yN1VY?=
 =?utf-8?B?WGs4aEZMUUJYT3BCVmFqSFhoakdyVU9vZjQ2VTZJTkJ5VVg0RWdNNjBxVUZW?=
 =?utf-8?B?eHJkWEllV0lKMDVRNno2T0pqWVpJQzRCT1lFY0JLVmlPRUFiTW44OXpsc09o?=
 =?utf-8?B?Qm5neTFzV2pDYXlBUXZld1d5U2FjemdWOFdWOGRGbU8rbE1lV3FqTGlncER5?=
 =?utf-8?B?eDFSMzVOR09nelY2cjQxWU5aYnFTOERJVVdwbGhEdDFqSThwQjZNaHM1cUtm?=
 =?utf-8?B?YVh4QmdWTWp1aWpjdVpaS1lJdFg4NVRmN1Rkb3RaOTltZ0d4MmtmNGxtbEU5?=
 =?utf-8?B?a29jYVFVUUFwaXJFOGhUaDJjeGZUeWhEUzE1VncrWDFPTVV2bDJyN2hmWWli?=
 =?utf-8?B?VER0NnF1Y1F2R0ZzMzNYVlBsZUNtN0RsaFQvN2cxRjhvUFo2U3lTUUorQ1Rl?=
 =?utf-8?B?T3dJcTBBTi94NVh5dHpvQkZsTzZ0UDRDN0pXRHAwTUIyQ3NKeTNIMkhmUHpF?=
 =?utf-8?B?elhYazFaV0dzV0dEOUdBdVIwdDUwdnl1WUVhR0tEM29hVVlmMndkNEY0RHBX?=
 =?utf-8?B?SEk4VVoyNTBHbGNFbTlleVRDSU9JZWp4RmFTQ05ITEN0SVEwcGsxWEpWQmhE?=
 =?utf-8?B?R1pUY2MvOFFGNXlRWm9idy9PYWhucjFhVjhwZGlhb3A5WDlmL3k1N2VkU0RI?=
 =?utf-8?B?UDV5OWRReTRTMzRQK3VFalFiMWRDOXBJZkJnRXpobVV2N1JKZGpaczk4Vll3?=
 =?utf-8?B?WlFkRTZSaWNub25OVUcxWVBveFZjSHhsbDRML29DRmZUYnViaVplZk5ublE1?=
 =?utf-8?B?VDNramt1S3JvZXhIUll3MklmcldzREgwbDdDbU9GNnhxTU9CNThwcTRFdk93?=
 =?utf-8?B?S3B3QUF3SGVBQUZzTVZUQUNjNFFRK3lFamhKb2F0dmpyc0lMdDN4b0JJNlFX?=
 =?utf-8?B?MW9WengvUEdOWHlDL0NKbkpwWHRSTzgwdUpZU0M1Z3k0Zm5DdXE5UGtxRWJi?=
 =?utf-8?B?RkVocGJNWW1LSVpWeXZzMmVJY2tkQVFYOUhTNTV4dGJ3R2IydG9pcDVORmZE?=
 =?utf-8?B?NkQ2UnhldjlaL0FOMXdObjRua0pDN0p3RG0yRm5MYmxhNkg5TytuWUpsS1I2?=
 =?utf-8?B?c2FEeGI3QVNhUmZRMWtKaXRPdDhlWXZ6WWFhUGp5SjhiT2kyb2NhZ2xnTkQw?=
 =?utf-8?B?OEFTRVBHT0RGVnhYRGFFWFAvd25GQVVab0wrdFVDZVNmYUxaNlBMOTJoQ3Fs?=
 =?utf-8?B?WTBNVkIyWGdBUC83UmFjNlNURUc3NEpZUGdyYzJkSW44VE5jVVhEeWNaaGt2?=
 =?utf-8?Q?ZC1f+maK6Il5cF0A=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da780e3-fbbf-4257-0542-08de9feec769
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 21:41:43.2094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sXJcNVjTmdWCmjLKxxg/72MJsgWKCj0ykv+LTGjaN4dd6zjSQcQE4w83LdGS+P8JGC0f/5BFd6LTbajclRWnuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB8779
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
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
X-Rspamd-Queue-Id: 25A4943FCF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/21/26 1:05 PM, David Airlie wrote:
...
>>>> +            usable_fb_region: msg.first_usable_fb_region().ok_or(ENODEV)?,
>>>
>>> OK, failing out is correct here. But in addition, we should also
>>> log this at dev_err!() level. This is rare, surprising, and actionable,
>>> so perfect for that level of logging.
>>
>> Sure, that works for me. Will add it in for v12.
> 
> Just fyi when we get to spark later this will not matter, we will have
> no usable_fb_region, though maybe it could just return 0s in that
> case.
> 

Hi Dave,

The "no FB on this SKU" is a separate case, at least as I recall from
specifically looking into that during the patch review. We already have
cases like that (in Open RM) and those are not error cases.

This one here is a real error, though: "expected an FB and got nothing
useful".

thanks,
-- 
John Hubbard

