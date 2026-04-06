Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCzDOFEi1GlxrgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:14:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 599183A774C
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D329A10E2CE;
	Mon,  6 Apr 2026 21:14:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="IVW0zj4J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH4PR04CU002.outbound.protection.outlook.com
 (mail-northcentralusazon11013069.outbound.protection.outlook.com
 [40.107.201.69])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C76F010E2C7;
 Mon,  6 Apr 2026 21:14:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kQA7GL1nylSqc+IgCdjQqWmJW++tEyH5P1JpsMsJzKm7wYAU7rM6KB7qkJ49/lakVUf+UYltnfnWUhippjjJDqXM5Z5NMTO1qxRoUEnHn5qn/uWJv+ovYj138x1TBkzONFh4y86MEitsoW3RqrBjYBvBKSyIVcrjcbOPjtHi4Awpl1SzCGIHN5I/NO2zHnUQuolqHczGlzDhDm3TXnE77S+2g/eACfmE7xQ+pl5fS/jPE1yur9ZpzTCi2qbz9RncGA9Wmznb3MfEXS189j511PrhIZ0J7YVZJkGGxL+CnIXuhjZyb7nXoQuP13ZDkFJWMJVopVLRIoWBWLymQnfEPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rSwhykR12BFOsYFz1EKHYk5jgpSuh5qcnhmtOJkhKtY=;
 b=wvI2COR/ue/I+kepOYUp+4EmabTcYRLL1QprdWhoTOzN85Y7Agp5inCUDyKjpXk7jofuOwCp2tv+mXTBiit51btBtc+rir0M1snr/DMtwy+KjoLuNCcsSt7tVsa0zpZD1zsnnNWB9I1Tk+T42qsTrziRQTU4JMRiI8yJa6xKIQpQvkB3ooKBRAR7FcWtD9bDc3aulEMs1XEztI3Mybz8ruC988Bqbqaf3vhUyC0pqo1bmwVCn155qsr1ZzBSGQn1KpX5FeRAbvr1Ksv/gOb/xcwAkD/e+fBNxMXzCZq7cVQ/rrLvnLxN5ypKdTcB9hIJEs0eIbJJcEY41VTQ3BbpVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rSwhykR12BFOsYFz1EKHYk5jgpSuh5qcnhmtOJkhKtY=;
 b=IVW0zj4JLWDcg5QE2otyQ+eVgIIVKvzsuxoD7aIDg1IEHyvv0dUkGkxA6gmk2ARuWsWpEeAeAiQXxWLFOyhXKuDi5HUi9fKpdlBgSkBQZ2b1SxOWivxpYgZBLMBq/EFBu/9Cqh0tmfCTBcY0k7+F83CE3NUb3nJ2zTioyPcYMIwqMnVgjn1yn9TyZVxbWFskSUol7UpKBEKUj48I5Xs7ZZj9D9aFapuFs/O4tAiz2DQyXvM3RHgJ21XT6V3lTCe/fB/vSpB+fOz0/tfl1XRiKtB3cUcLlcGRzAokuxBVTGp9POupmORoib2IczwLcY7FMUR4uc+YWOWzA8W/RKdV4Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA1PR12MB7296.namprd12.prod.outlook.com (2603:10b6:806:2ba::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Mon, 6 Apr
 2026 21:14:50 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 6 Apr 2026
 21:14:50 +0000
Message-ID: <7f1aa44b-0414-4bcb-a055-925613e73b5e@nvidia.com>
Date: Mon, 6 Apr 2026 17:14:47 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 10/21] gpu: nova-core: mm: Add MMU v2 page table types
To: Eliot Courtney <ecourtney@nvidia.com>, linux-kernel@vger.kernel.org
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
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-11-joelagnelf@nvidia.com>
 <DHIFGC4E879U.AXIIQKGRZQAF@nvidia.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHIFGC4E879U.AXIIQKGRZQAF@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR06CA0017.namprd06.prod.outlook.com
 (2603:10b6:208:23d::22) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA1PR12MB7296:EE_
X-MS-Office365-Filtering-Correlation-Id: cd2d15aa-edf2-4d01-c35f-08de9421899c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: xjb4HSnGkGOpena5+iZamnzzDRgRjh9/gv0PP/xU6fMBLJbatiSaLUnaKchqAKToycdBbFfL+ubWSq3LvNJGc75Gf4JKqjuRYHK0rBgEu85QUKREAOQj8c9ILCyXz/GI+OGdnhcgCXfCx/zHQirMCy5Yz7Q8+5Qplxlh+yocLRwwHnp2z4L3aFdRwNgsAjT7+Und3oLLbA8YUqCuNo1OTSs18QWRKET2ZPQ8+vePQ3jKzQVukRhRfYQGEpQf73UkLTy9nttlOG5lBUVzeGHqak68pm/JqZwhuidAvzGcoWOxO1Wz5Bs69RCO8/oUAEH1nd0mX4p+feHiKCtIuJGrcKpzVaxqqfcajhVsST0+owm7CgAfzb/sp0MaGJrzFz2y9BDFoyzs4OGH//J+3I5ONuHHWtROQ+Z+d9n347PSlSSB3x/m84R3mUlt5ILjhuOLgIoPEVFE8tVRZJcyf76IOQSEK8i0GT8XoRN7UXnt3LSOBA/HaEv3jyyK8G6h31eHLv5XgGFKc1Bt5NakY6JN57NpJqFhrlffk+igY+V95nenIFdA5QV+NMIFUMa682pMzmqUmWsYeA3GWGQHG8ZpKUo6psz3uhhTgW3gxYNnbeQralLaWKy32Anb+BEdwXKxec2g9Piw3nkm+q52YTRywSXCF3qUC2xKe2WX5HZ1esGscMobDHBMO6vxaEF55F4AGW0hf2Uv+tkO5s/J9oILlm+5E6hSUTUsATcBMqjKnbI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnRpcVVWNjN0NFRoOEtZU2VyN25KYTlvRHNXL24rc3pVMmRRc1p1dldYNzg0?=
 =?utf-8?B?SlQ0WGdZR2RLL3hFMmlPcWJQTnFpWkhqYTZKNGJxOThGUFJ0cTdzcUxVcEU5?=
 =?utf-8?B?bzlJRWxMbk0wdVNVMUtFM2dXUE1VZlZsNnIyT0g4VTArYkQvZDNYZ3NmRE83?=
 =?utf-8?B?T3J2UElWMFo4QzBobnJVVjdvbHJsazh4YjJzZ2hLRng2aFNQT1JXTWwrVGUy?=
 =?utf-8?B?OWhLWmFldEhkTEF1dWxNa2ZJRFdOY3gremx5S2l4Q2NHamMzN0hremc3T2lU?=
 =?utf-8?B?RzFheFpMQlczcjlXZlp0V2duQzc5SldTMGZtTUpiOEVqY21zYU5uV09sMEVo?=
 =?utf-8?B?N0twckpvZW1QR0FhRTAvTjg2cS9rVTMvaUJybHROTHFVYUJFUitmK1QxSm1p?=
 =?utf-8?B?ckcycVFRUGIweDB0bEh6OXNjZkJMMmxxWlF2c2RBbzBtR2l4UERORTlkSi96?=
 =?utf-8?B?N0J0eGlKRlI4MVZJVXJHVTdGa0ZVck5QeTJWUE4zdkcrWmVKcHpGODJVM1lT?=
 =?utf-8?B?OC9kdGpJTG51V0V4QisrdmZCV2JBSTM1SDNEbUdWbVBJYXpqNys1Y0xweFZW?=
 =?utf-8?B?b1Q2SDlZUzVKOGRCNXAwdFYzMkM3azlWcCtXa09hOWNaU1cydUp2Q3lZaWxI?=
 =?utf-8?B?ZFY1WVJoUXdNR2F4NEFmYmQrdFVTV1J1d3NLckRxVlc3YTlzbER2K201MWNQ?=
 =?utf-8?B?RnVoSVNIbHRlcHRaanJ1WHZld3VhKzN3N1VUckdPTldRYk9HREg3dFZRbUNT?=
 =?utf-8?B?bC9WZTQrNWhqUFhOaU9CU0ZTZ1IzeE1uWnNGWVIyUWt1N29nZ21HYnl3K0hh?=
 =?utf-8?B?UHI4OEFjZTU2RFF6NndCMDRRNlE0OUVUQlZrQmlZQUZ0NW85emdGeHp0UXJk?=
 =?utf-8?B?V201dUFXc1ArSUxRVytHdHNHOHlUNHgrMjAzczR2YUhkUDBUM2t0S0YvYmxP?=
 =?utf-8?B?RjlyZEhJd1dOUDVmMVFvR2h1M0lKL0hVUm5sWFJFL2ZMZVlxRnFPdHVVUEEw?=
 =?utf-8?B?V2FYQUl1dzYwNFQ2b3drRWtWRC9sakFKVVNPc1o1NGsyR0hFQnRDWW5XRFJD?=
 =?utf-8?B?T3lDaGlPZkJDRHpTQzFyK0FQWDQvZFUwdlJQQXBSSUlPWndTUXRSVkp3VVlM?=
 =?utf-8?B?VjduWGRUNUZTVjVWaWhheEV5M0FNWGZqdmo2a2tMRGFSZ0FwRHAvNW1JRXp5?=
 =?utf-8?B?WTBHMXFzU2ZjQytac2U1MVNjZXE1U1RhT2VUaFdDbjdsQXF5VDc5ZTFJcHlL?=
 =?utf-8?B?UE9RSEgzK1Jxc2ZlRk1oa3pMeHhqZUk2b0RTNWJyQjZueTNPdWVrR01HRGNx?=
 =?utf-8?B?MXFsMm9UQ2U5NjZ4cTJSdU4vM2tMUEEzdjE1amZvZExRYm5BZEdKeDBTdXZK?=
 =?utf-8?B?ZzFBUEJERjlUMmpMclBYTXJERXZkQWdobDh5MWxpc0FzM2JRSmZQZ29nYUZP?=
 =?utf-8?B?SEhpZ0VPbytpemZwN1FZTHZQTjl2SC9UVk5lWUp2c25ER0NOSTA2TE5MUDlE?=
 =?utf-8?B?bFFVUkRrcnk2MC82cnI5R0Fub1AzblZXVjY3UFZ1aXVQVklvWlRWKzJSOE1L?=
 =?utf-8?B?YU9CWkZkTTRDdGQ5UUdKNi9hT3hoNyt2ZVVPNko1WmttQkcrMzhKaTVhalNM?=
 =?utf-8?B?Ly9QL3UyWWRQbTRObEpVVGVDWVYwSjlXbEJEVno2Z1BkZUliTklFVTRGZmxp?=
 =?utf-8?B?RFVrVytJQWVLcUlTVm1KdWlESnFieWd0K0dKTit5QUhmaVlYck1JTHlzNFgr?=
 =?utf-8?B?ZU1mVEVBRkxaaGxhMTAxelFoWTQyaG1GM3QyNDdBUDNlUVJ2bVJJTWpxVXFN?=
 =?utf-8?B?OHNlYjA2SGluTDA5MElrdmpDRWtQejhqdWNtSElnZmNnRDhaM1hwTU00K1NR?=
 =?utf-8?B?YWJELzVxTGJZeVg5eXNSUndINFdxZGdMZ081OXN4MVNLbGkrdGZISTl1SEw4?=
 =?utf-8?B?M211czFtcittVkFkaTMzdmZKQnBtUVU3VkNTWnNvOWxnekpUOFNiYzNYdWpO?=
 =?utf-8?B?VVlkOEhMTjhjMTlWNnRuUDFGVnhWRnhSSXBrUFRRWmtyb2NXMWY5ejk1M3Zn?=
 =?utf-8?B?TDQzRGN1bXVQNDBwNXF2NGMxc1ZBSDF1L1BQVFViWVZONEswaklFUWZGdWNB?=
 =?utf-8?B?WXF4VWRoOGVyeFpuZCtoSFd2QjEwc1RYSjRtcjZhZGFHZTd5OSs0M1BESHFE?=
 =?utf-8?B?bU9JeFlCN0hkRks5Qzl1MG9PZnRiVTNkUFBUbm0rQm12U0ExV2oxdnlYbVFp?=
 =?utf-8?B?cGN2NFZMNEtYNUxYTXRFcEl4Tk5zNTlPamlpZDBIU0U0R0JWbEVNQnFJcUJl?=
 =?utf-8?B?ZFdaMnVtQWtFRCtiV2dmZUlBV0ZKZ2RnZUJZSWQwbzE1UGhhT0V0QT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd2d15aa-edf2-4d01-c35f-08de9421899c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 21:14:49.8995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J+q+0hU5YWen+NXDw75NIRyAHojwFqxNo25QPNmEpc75ijPP2pUM1rhx6qAzLaI2D+MngPYaXH2MOApk0wz61Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7296
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
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: 599183A774C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/2/2026 1:41 AM, Eliot Courtney wrote:
> On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
>> Add page table entry and directory structures for MMU version 2
>> used by Turing/Ampere/Ada GPUs.
>>
>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>> ---
>>  drivers/gpu/nova-core/mm/pagetable.rs      |   2 +
>>  drivers/gpu/nova-core/mm/pagetable/ver2.rs | 232 +++++++++++++++++++++
>>  2 files changed, 234 insertions(+)
>>  create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver2.rs
>>
>> diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
>> index 50b76d5e5aaf..38d88f8f09a9 100644
>> --- a/drivers/gpu/nova-core/mm/pagetable.rs
>> +++ b/drivers/gpu/nova-core/mm/pagetable.rs
>> @@ -8,6 +8,8 @@
>>  
>>  #![expect(dead_code)]
>>  
>> +pub(crate) mod ver2;
>> +
> 
> This looks like it has more visibility than necessary. And it seems
> incorrect for anyone in the crate to care about MMU version details.
> This can probably be just 'mod ver2'. There are a lot of other types /
> functions in this series that could have tighter visibility. Could you
> go through and see if you can reduce a bunch to private or pub(super)?
> 

Yes, indeed. I am tightening it now, there are several. Thanks!

--
Joel Fernandes

