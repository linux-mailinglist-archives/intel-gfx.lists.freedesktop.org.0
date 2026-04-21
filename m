Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +O5JH4Wy52lZ/QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 19:23:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB79C43DE22
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 19:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31ADF10E8DB;
	Tue, 21 Apr 2026 17:23:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="TkQX0zeQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011011.outbound.protection.outlook.com [52.101.52.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C332E10E25E;
 Tue, 21 Apr 2026 17:23:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P5bJXsyk28zvK2vEcgK9A2qHrUEzaCV6CU1nOKbbNFN8pVjBEhTl48aMVYMKBY6Q0HsjmNuLHqIl6iz9f0CZF4DK8fh8zryW0cDw2RBeRkOpBzQ0MjnHuIFB9qL4LilCENGH3w0x4DgwXNkur7XG6OOfla7nDcUGyuuUA84+MOlM+SyEbrJCgwsEJoYaHJK8NUdD3zIr6zFtLCRBrZwUAeZkn8agnQPSe2hNaWk4ie1hIK+hUEQ/3xD3yF+sABTeSyATn/caRopnnn8jvg4WLAfYfUUuwVMpZBvW1M/iAKM3ehLPuDIgj75HEhKS+rc4J6Boo0Z980itZS7NrMI9Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vopnOB/WWITfZL/OxyGcwL8Zb9YDQk8oZcn6VJEfsVI=;
 b=AM/MhXLAI5dqWCxv/Jxm2PAiV1JBQDOy5s02R84OlfwF16fVFDH+qftoCqXRhhIJaTvrCAK+8G+P3sv2IXG/DYvt5ant4XbSvTyxUsLiX7UMptx2nqhBh1qxfHiXrWR9+iQz246sZlrRwpFiHFTMsP6f2tJW0ZM4RFpBYBbCp37zVEKS25v+1jLUtY+VtGbnbjS5TXGo4QSjHIqGi5JfkmycaafdjSFSQD79YAJKcoi038iX3q0iVwIoeaYKVDqo0L7wdbmq3uyon1IQ61HxqXuH2rDeONQdMH3gnKohdnC3mq7pYKQYD0+YEQkFTZhfUobTuuUsJeUnXP7tcQHj5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vopnOB/WWITfZL/OxyGcwL8Zb9YDQk8oZcn6VJEfsVI=;
 b=TkQX0zeQ5RvxQJ0b9gJyzE3ZifrAjFliKRzbWX5gRw/vGgPFLjtD2q2IY9HpVrUgSsEwOtPdieXvo8PrLl9WkeYxW2f0UBoYUNZD+3ltxcozJITeg7S0FVxapv7S+VY7HQxJIaYmm93WDNWsdkTO5WoY/fMLinCddQbUVFWeJ9Jwc8fS7TxjpNe0QieowfF8r3e8SEVhlhA1edwz2+zNqwWsBYA6BR75XphzIbw0NlVXAzVBhXp9WHgFn2LOp8yWgBvxEF+QZgYAeXSojhsDYir3wOpb8Y5YLdu/32dkek/2jrapjWE8cHfDkPEq06jL2tBhuGdK56yJnxKSehQjgQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 PH7PR12MB5807.namprd12.prod.outlook.com (2603:10b6:510:1d3::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.16; Tue, 21 Apr 2026 17:23:02 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9846.016; Tue, 21 Apr 2026
 17:23:02 +0000
Date: Tue, 21 Apr 2026 13:23:00 -0400
From: Joel Fernandes <joelagnelf@nvidia.com>
To: Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>,
 dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v11 07/20] gpu: nova-core: mm: Add TLB flush support
Message-ID: <20260421172300.GA2038908@joelbox2>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
 <20260415210548.3776595-7-joelagnelf@nvidia.com>
 <20260416212312.GA667928@joelbox2>
 <DHUWPQX14ZGZ.26BV7GQCJDZQI@kernel.org>
 <1e3c423e-1cf5-48b1-b012-c4af0eb6b95f@nvidia.com>
 <DHUY5IGHGE49.Z2UVYJ23KX2Y@kernel.org>
 <9f30b572-04be-4adc-b5f0-a286ea601996@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9f30b572-04be-4adc-b5f0-a286ea601996@nvidia.com>
X-ClientProxiedBy: BL0PR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:208:91::14) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|PH7PR12MB5807:EE_
X-MS-Office365-Filtering-Correlation-Id: a503980e-1a72-4816-566c-08de9fcaa43a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: wO3FPb0VG/qzArdggiCZwmG4tghcN8nKX7T+8ZNc6+wq2L5f/r33EpPVXOES6Gi5FOVJevmSuoQ0txKoRr0t+Ah0aO4nUgWh3LLMy/l6SSpxUeK07Bp+k7tFOkHwuvc726RKEW6ZN1VrLxmteTLlPyW9Njdp6msWE2kiFcY0IaDRez1aTiWkC6sJlApbNOcZS1h1Di5/3y4QatAj/yIMy/3BZvEdAVmqlPkyeabSLcRrlt6AZIGuhI5S2H4ciQcNhVKlxy/MUJ8q2gK1G0ktD48Dbgl6uJZ0eLUTb9b5X4zv2gteJS6fasN4FkreV7XRacl361QlnDjWtVpNk6JWwmdcfLZwDWO783NNT6y4GAUPPsf+YgPxehoBHNXdik6q5BaYW180240bSEqxTHjojib9mNcqvkidGyjZxonhkHM7crHTu0JP1twtxjmYT4Whv6A6/2NzBJ6dRqeZWjBIjmb2GePGTwqS0gEAHRtgvcbR8iQD8c6Nmb5PsiVB/LiYuz1XqzEv5uBNu2AvvbnyR/ridLqEX/Rt+HfA92xuA1uha8RJBJuu5BGfBxblOMbfzmmqOw9nNuHyGzOispGAp6BQbqHzj6SJvrES3OoeIHB6y7kPptbboZz/DEYKfIiKYkFkj6SFomX8nH8iqDZsBadLU04f74r6vzPAI32y9lgxTCrppvZ7bJfktdH2fxO4N1rY+YYiqbZipvta9PiY4ZtKspGK47++R1g3c9LfHQY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekRzMWh5VnhVcWVTSGQraU5Tc0wrS0VrWGRyZWV3cmlqTlNUSmdNckdOV0lF?=
 =?utf-8?B?citVcUtPNW1RcDc1UFhyUFR3ZEk5NzlnNmRydElmRjlPZVZRNkwvWVp0aS9o?=
 =?utf-8?B?ZGszMGczVXk2RmNBb3p5dmFxZSs0aDVqdFMrZmJnRSsyWWxCZXlZYjVsek42?=
 =?utf-8?B?UlF6cXJ0WVd6OENyeWhlUlVQZUVNMmFYKzJYbnhiR05sODhlZ0NiK3VJTDkv?=
 =?utf-8?B?TFZUb29JZ04rRFppRHpURnNVZ0pmU0FOQmJGcTRSaE51THpxUHZpM25NdDFQ?=
 =?utf-8?B?ZkFUanlNdURmZXNENG5mRjVFbC9Cd3RhK3NibXNtQWJ3QnM1THJPNkt5OUFz?=
 =?utf-8?B?VEFpejN3M3kxUFdvNzZuamFlVSs4aW10QlI0NkVoV2YycDZFM2lBQ2tLRWtS?=
 =?utf-8?B?WGFoS3Z2SENiY2R1Nk1CWHd5MkczcmFuSlNCeExEaU5XMGROTXJTU3J6ZDVw?=
 =?utf-8?B?ZlMvZXFoT2twOVQwNTVMQlNHOThSY1NwWUtUM1R2TXhDYzh5YUVaM0ZSTnhU?=
 =?utf-8?B?eCs0VjVLMkJLT2FYczVUb21XeEVKdzJZME5oUGdRQmdGNHM4M29vTTA4NkNv?=
 =?utf-8?B?OUhtVDk5d0pzdmgyVDhLT0I4aDJjNUx1ZjNNditDVXdTRzJuclQ5aEdzLy9u?=
 =?utf-8?B?L1JZVThCa3pFRUYzTFB6M2VJRjIzQnlBeHhFYTBMcTZJSlVJNjYzRDFCSy9a?=
 =?utf-8?B?Q21sSGdKRUM0eCt3dlZUWEd1WlBXcXdRSHdBN21VZnhZWlh2R05vT0YyNjky?=
 =?utf-8?B?WUo1RWw3RHdWaWhWc1ZsK2kxMDdPcytTSjQzU3R0WW9NQS9DSU9LMURDSmpN?=
 =?utf-8?B?bldhRnBuMkZyaGFqV2tUaDdhTDRtYitFUnJBbnVrZFJzYjFlQTNON3J3cUdR?=
 =?utf-8?B?TVMrdWI3S1F5VDN4RnZGeDhDZG1zcGRPUmRta3YvR0JXdWNIY3JnZ2M5bEtF?=
 =?utf-8?B?dTVQbk1rc3F4Tm03RDVwWmNuWml5a3NTVXJtbElOS0Fnc1cvMGFNWHFHYWFk?=
 =?utf-8?B?TUpvRU0vQ3llZFJSa0UvSjBDMHFvVk9oRldnVTU2eWJvc05tOGljTDByUnlD?=
 =?utf-8?B?YzdOVzNYZStZaVN6TTEvZm4yaFE4NlNqMWlpbUFyYVo5dXJGZVlBeC9tdHEy?=
 =?utf-8?B?bkpVSURzZGpadTBSK0MyTW8zdnB1U0hVNjd0Sjh4bTZQZytRSjYrYXQwd3pv?=
 =?utf-8?B?cTF1WFFrWWQwcjYrNHdCVzZZdDdCaUN5cWxLbW54Vkp1RUlrMUpmb2RtbVEy?=
 =?utf-8?B?ZGtrdFpFUVgwSjBQbC9reGJWK0F5MzBMWmIxamhsK09BakNValo0Y085dkRU?=
 =?utf-8?B?T2VQNkJOYjlTQzFHSCtGYXFCcTg4TE5sSGpVM0pCUXNhdHN4aS9vclJQTTE2?=
 =?utf-8?B?bmduSlR1RW02ZXdxbElKTDZZNzdVKzVMRU93N250K3V4TGJaK0Qrd083SnAz?=
 =?utf-8?B?OEJqTmEvaGhrb1VCVnViMjA1c3BBMkE3NkRJMVBhUFcwUmJrL1lva1lUWFFH?=
 =?utf-8?B?YnNCVjh2RTJDVUpDNUhZSFlwaHU1bS9FcDZWMis2R1VzNncwQm5CNWp0VEEr?=
 =?utf-8?B?YjkxbE81NFQyamdEVktoU21pcFhpczVmcStUZ0xCWmhLblNwUHE2bTdsR2Nu?=
 =?utf-8?B?R3A5bjl4OVh1RGJUYjUzdS9xbStqMnRRUytjLzAwSUloTUJmdmhvd0Z3NU5m?=
 =?utf-8?B?dkJrSW1GeGQzOFlOU1d2cDBkbGcyUnlYZWJFcXNub2ZDMW8rN1d0dFZpay9y?=
 =?utf-8?B?ZUNZTEJZUnJ3RUUvWmlxQTU4TlBGanNKd2lSdHExSy9YK0ZFVk03ZDQvNFBW?=
 =?utf-8?B?T0crVjVhUndGNGRqbU1CdzgvbzR3Y05Kdzh5NjdFT1RmeHNPVHR5bkN4a0h3?=
 =?utf-8?B?UGlsRkJMMXYvVlBIRDVELy9rYnpSUVJ2STVDQURULzBjcVd2M3k0ZDVaOE1E?=
 =?utf-8?B?Tzl3SGV3WDJ5aFlLcUIxR3hqYlZ1bVdBZFE5N0x6RmdObDVRQzQ5cmE0OWlQ?=
 =?utf-8?B?UU00ZEZQS1ZyQ295ZHIwa2IyZ3NMOWZzelA4S3hNVG1yV0g5NTV1Y1BRK2hy?=
 =?utf-8?B?azdkM1JPUzEzWXlhOGVrSVhaSm1Nb2dJdzkybmsvZVA5cDdRV0pITWNBQjZP?=
 =?utf-8?B?M1lqcHQzV1V1ODU5YVplN096V296K2tEQW5WenVHaytFbEZQcGpEVFpiRTA4?=
 =?utf-8?B?UVk3ZElFaThtSlFMakp4eDRJdHJKMkVIVUE3VHFYNlRFYW1DL0RhMmpoaEk1?=
 =?utf-8?B?ZVMzSkVFRnFvRGx2TmU5eE1tWS9aMTdndGpIRHVzeDlESlNhbVNiazBRd3oz?=
 =?utf-8?B?OEJEUHVSNnJXVHVzQjcwbmp2Vkt3Vk04MVVoNyt3UHhNVXV2NXkrdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a503980e-1a72-4816-566c-08de9fcaa43a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 17:23:02.3257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dtQ/CphyWrCHNAZxyTlAQqqWohwnnv6u+6xPaKJufNLO4ttKEU3WfQYqjWalsJKbRtX5fDzZsmxv1ABWZri5YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5807
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim]
X-Rspamd-Queue-Id: AB79C43DE22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 09:47:39AM -0400, Joel Fernandes wrote:
> 
> 
> On 4/16/2026 6:53 PM, Danilo Krummrich wrote:
> > On Fri Apr 17, 2026 at 12:18 AM CEST, Joel Fernandes wrote:
> >> On 4/16/2026 5:45 PM, Danilo Krummrich wrote:
> >>> Why do we need the try_access() dance in the first place? I assume this ends up
> >>> being called from the BarAccess destructor?
> >>
> >> BarAccess is different. The try_access() calls here are in tlb.rs and
> >> pramin.rs for Bar0.
> > 
> > Yes, and we shouldn't need them in the first place; we should have a
> > &Device<Bound> in all call paths this is called from.

So it causes a bit more threading of the device, but agreed it is an improvement.
Here is a preview, let me know if this is not what you had in mind, thanks!

---8<-----------------------

diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 6ea9ab7647ced..c2756525dffad 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -322,7 +322,7 @@ pub(crate) fn new<'a>(
                 // PRAMIN covers all physical VRAM (including GSP-reserved areas
                 // above the usable region, e.g. the BAR1 page directory).
                 let pramin_vram_region = 0..gsp_static_info.total_fb_end;
-                GpuMm::new(devres_bar.clone(), spec.chipset, GpuBuddyParams {
+                GpuMm::new(devres_bar.clone(), pdev.as_ref(), spec.chipset, GpuBuddyParams {
                     base_offset: usable_vram.start,
                     size: usable_vram.end - usable_vram.start,
                     chunk_size: Alignment::new::<SZ_4K>(),
diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index 2583e32fb5dc1..1c0d076a785d5 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -32,6 +32,7 @@ fn from(pfn: Pfn) -> Self {
 
 use kernel::{
     bitfield,
+    device,
     devres::Devres,
     gpu::buddy::{
         GpuBuddy,
@@ -75,13 +76,14 @@ impl GpuMm {
     /// areas). PRAMIN window accesses are validated against this range.
     pub(crate) fn new(
         bar: Arc<Devres<Bar0>>,
+        dev: &device::Device<device::Bound>,
         chipset: Chipset,
         buddy_params: GpuBuddyParams,
         pramin_vram_region: core::ops::Range<u64>,
     ) -> Result<impl PinInit<Self>> {
         let buddy = GpuBuddy::new(buddy_params)?;
         let tlb_init = Tlb::new(bar.clone());
-        let pramin_init = pramin::Pramin::new(bar, chipset, pramin_vram_region)?;
+        let pramin_init = pramin::Pramin::new(bar, dev, chipset, pramin_vram_region)?;
 
         Ok(pin_init!(Self {
             buddy,
diff --git a/drivers/gpu/nova-core/mm/bar_user.rs b/drivers/gpu/nova-core/mm/bar_user.rs
index 086d33776c48a..172f9c0f5b4d8 100644
--- a/drivers/gpu/nova-core/mm/bar_user.rs
+++ b/drivers/gpu/nova-core/mm/bar_user.rs
@@ -4,6 +4,7 @@
 //! for GPU work submission, and applications to access GPU buffers via mmap().
 
 use kernel::{
+    device,
     io::Io,
     prelude::*, //
 };
@@ -45,6 +46,7 @@ pub(crate) fn new(pdb_addr: VramAddress, chipset: Chipset, va_size: u64) -> Resu
     /// Map physical pages to a contiguous BAR1 virtual range.
     pub(crate) fn map<'a>(
         &'a mut self,
+        dev: &'a device::Device<device::Bound>,
         mm: &'a GpuMm,
         bar: &'a Bar1,
         pfns: &[Pfn],
@@ -54,10 +56,11 @@ pub(crate) fn map<'a>(
             return Err(EINVAL);
         }
 
-        let mapped = self.vmm.map_pages(mm, pfns, None, writable)?;
+        let mapped = self.vmm.map_pages(dev, mm, pfns, None, writable)?;
 
         Ok(BarUserAccess {
             vmm: &mut self.vmm,
+            dev,
             mm,
             bar,
             mapped: Some(mapped),
@@ -72,6 +75,7 @@ pub(crate) fn map<'a>(
 /// [`Vmm::unmap_pages()`], which consumes it).
 pub(crate) struct BarUserAccess<'a> {
     vmm: &'a mut Vmm,
+    dev: &'a device::Device<device::Bound>,
     mm: &'a GpuMm,
     bar: &'a Bar1,
     /// Needs to be an `Option` so that we can `take()` it and call `Drop`
@@ -144,7 +148,7 @@ pub(crate) fn try_write64(&self, value: u64, offset: usize) -> Result {
 impl Drop for BarUserAccess<'_> {
     fn drop(&mut self) {
         if let Some(mapped) = self.mapped.take() {
-            if self.vmm.unmap_pages(self.mm, mapped).is_err() {
+            if self.vmm.unmap_pages(self.dev, self.mm, mapped).is_err() {
                 kernel::pr_warn_once!("BarUserAccess: unmap_pages failed.\n");
             }
         }
@@ -158,7 +162,7 @@ fn drop(&mut self) {
 /// and test pages as needed.
 #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
 pub(crate) fn run_self_test(
-    dev: &kernel::device::Device,
+    pdev: &device::Device<device::Bound>,
     mm: &GpuMm,
     bar1: &Bar1,
     bar1_pdb: u64,
@@ -180,12 +184,13 @@ pub(crate) fn run_self_test(
     const PATTERN_PRAMIN: u32 = 0xDEAD_BEEF;
     const PATTERN_BAR1: u32 = 0xCAFE_BABE;
 
+    let dev = pdev.as_ref();
     dev_info!(dev, "MM: Starting self-test...\n");
 
     let pdb_addr = VramAddress::new(bar1_pdb);
 
     // Check if initial page tables are in VRAM.
-    if crate::mm::pagetable::check_pdb_valid(mm.pramin(), pdb_addr, chipset).is_err() {
+    if crate::mm::pagetable::check_pdb_valid(pdev, mm.pramin(), pdb_addr, chipset).is_err() {
         dev_info!(dev, "MM: Self-test SKIPPED - no valid VRAM page tables\n");
         return Ok(());
     }
@@ -208,7 +213,7 @@ pub(crate) fn run_self_test(
     let mut vmm = Vmm::new(pdb_addr, chipset.mmu_version(), SZ_64K.into_safe_cast())?;
 
     // Create a test mapping.
-    let mapped = vmm.map_pages(mm, &[test_pfn], None, true)?;
+    let mapped = vmm.map_pages(pdev, mm, &[test_pfn], None, true)?;
     let test_vfn = mapped.vfn_start;
 
     // Pre-compute test addresses for the PRAMIN to BAR1 read test.
@@ -219,7 +224,7 @@ pub(crate) fn run_self_test(
 
     // Test 1: Write via PRAMIN, read via BAR1.
     {
-        let mut window = mm.pramin().get_window()?;
+        let mut window = mm.pramin().get_window(pdev)?;
         window.try_write32(vram_read_addr, PATTERN_PRAMIN)?;
     }
 
@@ -239,19 +244,19 @@ pub(crate) fn run_self_test(
     };
 
     // Cleanup - invalidate PTE.
-    vmm.unmap_pages(mm, mapped)?;
+    vmm.unmap_pages(pdev, mm, mapped)?;
 
     // Test 2: Two-phase prepare/execute API.
-    let prepared = vmm.prepare_map(mm, 1, None)?;
-    let mapped2 = vmm.execute_map(mm, prepared, &[test_pfn], true)?;
-    let readback = vmm.read_mapping(mm, mapped2.vfn_start)?;
+    let prepared = vmm.prepare_map(pdev, mm, 1, None)?;
+    let mapped2 = vmm.execute_map(pdev, mm, prepared, &[test_pfn], true)?;
+    let readback = vmm.read_mapping(pdev, mm, mapped2.vfn_start)?;
     let test2_passed = if readback == Some(test_pfn) {
         true
     } else {
         dev_err!(dev, "MM: Test 2 FAILED - Two-phase map readback mismatch\n");
         false
     };
-    vmm.unmap_pages(mm, mapped2)?;
+    vmm.unmap_pages(pdev, mm, mapped2)?;
 
     // Test 3: Range-constrained allocation with a hole — exercises block.size()-driven
     // BAR1 mapping. A 4K hole is punched at base+16K, then a single 32K allocation
@@ -311,7 +316,7 @@ pub(crate) fn run_self_test(
             )?;
         }
 
-        let mapped = vmm.map_pages(mm, &pfns, None, true)?;
+        let mapped = vmm.map_pages(pdev, mm, &pfns, None, true)?;
         let bar1_base_vfn: usize = mapped.vfn_start.raw().into_safe_cast();
         let bar1_base = bar1_base_vfn.checked_mul(PAGE_SIZE).ok_or(EOVERFLOW)?;
 
@@ -326,7 +331,7 @@ pub(crate) fn run_self_test(
             bar1.try_write32(PATTERN_BAR1, page_bar1_off)?;
 
             let pramin_val = {
-                let mut window = mm.pramin().get_window()?;
+                let mut window = mm.pramin().get_window(pdev)?;
                 window.try_read32(page_phys.into_safe_cast())?
             };
 
@@ -342,7 +347,7 @@ pub(crate) fn run_self_test(
             }
         }
 
-        vmm.unmap_pages(mm, mapped)?;
+        vmm.unmap_pages(pdev, mm, mapped)?;
     }
 
     // Verify aggregate: all returned block sizes must sum to allocation size.
@@ -363,11 +368,11 @@ pub(crate) fn run_self_test(
     // Test 4: Exercise `BarUser::map()` end-to-end.
     let mut bar_user = BarUser::new(pdb_addr, chipset, SZ_64K.into_safe_cast())?;
     let test4_passed = {
-        let access = bar_user.map(mm, bar1, &[test_pfn], true)?;
+        let access = bar_user.map(pdev, mm, bar1, &[test_pfn], true)?;
 
         // Write pattern via PRAMIN, read via BarUserAccess.
         {
-            let mut window = mm.pramin().get_window()?;
+            let mut window = mm.pramin().get_window(pdev)?;
             window.try_write32(test_vram.raw(), PATTERN_BAR1)?;
         }
 
diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 922ff8bd4f0fd..b267dcf4dd8ba 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -22,7 +22,10 @@
     VirtualAddress,
     VramAddress, //
 };
-use kernel::prelude::*;
+use kernel::{
+    device,
+    prelude::*, //
+};
 
 /// Extracts the page table index at a given level from a virtual address.
 pub(super) trait VaLevelIndex {
@@ -386,10 +389,11 @@ fn from(val: AperturePde) -> Self {
 /// Check if the PDB has valid, VRAM-backed page tables.
 #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
 fn check_pdb_inner<M: MmuConfig>(
+    dev: &device::Device<device::Bound>,
     pramin: &pramin::Pramin,
     pdb_addr: VramAddress,
 ) -> Result {
-    let mut window = pramin.get_window()?;
+    let mut window = pramin.get_window(dev)?;
     let raw = window.try_read64(pdb_addr.raw())?;
 
     if !M::Pde::new(raw).is_valid_vram() {
@@ -401,12 +405,13 @@ fn check_pdb_inner<M: MmuConfig>(
 /// Check if the PDB has valid, VRAM-backed page tables, dispatching by MMU version.
 #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
 pub(super) fn check_pdb_valid(
+    dev: &device::Device<device::Bound>,
     pramin: &pramin::Pramin,
     pdb_addr: VramAddress,
     chipset: crate::gpu::Chipset,
 ) -> Result {
     match MmuVersion::from(chipset.arch()) {
-        MmuVersion::V2 => check_pdb_inner::<MmuV2>(pramin, pdb_addr),
-        MmuVersion::V3 => check_pdb_inner::<MmuV3>(pramin, pdb_addr),
+        MmuVersion::V2 => check_pdb_inner::<MmuV2>(dev, pramin, pdb_addr),
+        MmuVersion::V3 => check_pdb_inner::<MmuV3>(dev, pramin, pdb_addr),
     }
 }
diff --git a/drivers/gpu/nova-core/mm/pagetable/map.rs b/drivers/gpu/nova-core/mm/pagetable/map.rs
index a9719580143e1..16af491472dbc 100644
--- a/drivers/gpu/nova-core/mm/pagetable/map.rs
+++ b/drivers/gpu/nova-core/mm/pagetable/map.rs
@@ -5,6 +5,7 @@
 use core::marker::PhantomData;
 
 use kernel::{
+    device,
     gpu::buddy::{
         AllocatedBlocks,
         GpuBuddyAllocFlags,
@@ -73,7 +74,11 @@ pub(super) fn new(pdb_addr: VramAddress) -> Self {
     }
 
     /// Allocate and zero a physical page table page.
-    fn alloc_and_zero_page(mm: &GpuMm, level: PageTableLevel) -> Result<PreparedPtPage> {
+    fn alloc_and_zero_page(
+        dev: &device::Device<device::Bound>,
+        mm: &GpuMm,
+        level: PageTableLevel,
+    ) -> Result<PreparedPtPage> {
         let blocks = KBox::pin_init(
             mm.buddy().alloc_blocks(
                 GpuBuddyAllocMode::Simple,
@@ -87,7 +92,7 @@ fn alloc_and_zero_page(mm: &GpuMm, level: PageTableLevel) -> Result<PreparedPtPa
         let page_vram = VramAddress::new(blocks.iter().next().ok_or(ENOMEM)?.offset());
 
         // Zero via PRAMIN.
-        let mut window = mm.pramin().get_window()?;
+        let mut window = mm.pramin().get_window(dev)?;
         let base = page_vram.raw();
         for off in (0..PAGE_SIZE).step_by(8) {
             window.try_write64(base + off, 0)?;
@@ -106,6 +111,7 @@ fn alloc_and_zero_page(mm: &GpuMm, level: PageTableLevel) -> Result<PreparedPtPa
     /// the fence signalling critical path.
     fn ensure_single_pte_path(
         &self,
+        dev: &device::Device<device::Bound>,
         mm: &GpuMm,
         vfn: Vfn,
         pt_pages: &mut RBTree<VramAddress, PreparedPtPage>,
@@ -113,7 +119,7 @@ fn ensure_single_pte_path(
         let max_iter = 2 * M::PDE_LEVELS.len();
 
         for _ in 0..max_iter {
-            let mut window = mm.pramin().get_window()?;
+            let mut window = mm.pramin().get_window(dev)?;
 
             let result = self
                 .walker
@@ -133,7 +139,7 @@ fn ensure_single_pte_path(
                 } => {
                     // Drop PRAMIN before allocation.
                     drop(window);
-                    let page = Self::alloc_and_zero_page(mm, level)?;
+                    let page = Self::alloc_and_zero_page(dev, mm, level)?;
                     let node = RBTreeNode::new(install_addr, page, GFP_KERNEL)?;
                     let old = pt_pages.insert(node);
                     if old.is_some() {
@@ -160,6 +166,7 @@ fn ensure_single_pte_path(
     /// per-VFN to prepare pages for all missing PDEs.
     pub(super) fn prepare_map(
         &self,
+        dev: &device::Device<device::Bound>,
         mm: &GpuMm,
         vfn_start: Vfn,
         num_pages: usize,
@@ -175,7 +182,7 @@ pub(super) fn prepare_map(
         for i in 0..num_pages {
             let i_u64: u64 = i.into_safe_cast();
             let vfn = Vfn::new(vfn_start.raw() + i_u64);
-            self.ensure_single_pte_path(mm, vfn, pt_pages)?;
+            self.ensure_single_pte_path(dev, mm, vfn, pt_pages)?;
         }
         Ok(())
     }
@@ -185,6 +192,7 @@ pub(super) fn prepare_map(
     /// Drains `pt_pages` and moves allocations into `page_table_allocs`.
     pub(super) fn install_mappings(
         &self,
+        dev: &device::Device<device::Bound>,
         mm: &GpuMm,
         pt_pages: &mut RBTree<VramAddress, PreparedPtPage>,
         page_table_allocs: &mut KVec<Pin<KBox<AllocatedBlocks>>>,
@@ -192,7 +200,7 @@ pub(super) fn install_mappings(
         pfns: &[Pfn],
         writable: bool,
     ) -> Result {
-        let mut window = mm.pramin().get_window()?;
+        let mut window = mm.pramin().get_window(dev)?;
 
         // Drain prepared PT pages, install all pending PDEs.
         let mut cursor = pt_pages.cursor_front_mut();
@@ -239,14 +247,20 @@ pub(super) fn install_mappings(
         drop(window);
 
         // Flush TLB.
-        mm.tlb().flush(self.pdb_addr)
+        mm.tlb().flush(dev, self.pdb_addr)
     }
 
     /// Invalidate PTEs for a range and flush TLB.
-    pub(super) fn invalidate_ptes(&self, mm: &GpuMm, vfn_start: Vfn, num_pages: usize) -> Result {
+    pub(super) fn invalidate_ptes(
+        &self,
+        dev: &device::Device<device::Bound>,
+        mm: &GpuMm,
+        vfn_start: Vfn,
+        num_pages: usize,
+    ) -> Result {
         let invalid_pte = M::Pte::invalid();
 
-        let mut window = mm.pramin().get_window()?;
+        let mut window = mm.pramin().get_window(dev)?;
         for i in 0..num_pages {
             let i_u64: u64 = i.into_safe_cast();
             let vfn = Vfn::new(vfn_start.raw() + i_u64);
@@ -265,7 +279,7 @@ pub(super) fn invalidate_ptes(&self, mm: &GpuMm, vfn_start: Vfn, num_pages: usiz
         }
         drop(window);
 
-        mm.tlb().flush(self.pdb_addr)
+        mm.tlb().flush(dev, self.pdb_addr)
     }
 }
 
@@ -298,6 +312,7 @@ pub(in crate::mm) fn new(pdb_addr: VramAddress, version: MmuVersion) -> Self {
     /// Prepare page table resources for a mapping.
     pub(in crate::mm) fn prepare_map(
         &self,
+        dev: &device::Device<device::Bound>,
         mm: &GpuMm,
         vfn_start: Vfn,
         num_pages: usize,
@@ -306,13 +321,14 @@ pub(in crate::mm) fn prepare_map(
     ) -> Result {
         pt_map_dispatch!(
             self,
-            prepare_map(mm, vfn_start, num_pages, page_table_allocs, pt_pages)
+            prepare_map(dev, mm, vfn_start, num_pages, page_table_allocs, pt_pages)
         )
     }
 
     /// Install prepared PDEs and write PTEs, then flush TLB.
     pub(in crate::mm) fn install_mappings(
         &self,
+        dev: &device::Device<device::Bound>,
         mm: &GpuMm,
         pt_pages: &mut RBTree<VramAddress, PreparedPtPage>,
         page_table_allocs: &mut KVec<Pin<KBox<AllocatedBlocks>>>,
@@ -322,17 +338,18 @@ pub(in crate::mm) fn install_mappings(
     ) -> Result {
         pt_map_dispatch!(
             self,
-            install_mappings(mm, pt_pages, page_table_allocs, vfn_start, pfns, writable)
+            install_mappings(dev, mm, pt_pages, page_table_allocs, vfn_start, pfns, writable)
         )
     }
 
     /// Invalidate PTEs for a range and flush TLB.
     pub(in crate::mm) fn invalidate_ptes(
         &self,
+        dev: &device::Device<device::Bound>,
         mm: &GpuMm,
         vfn_start: Vfn,
         num_pages: usize,
     ) -> Result {
-        pt_map_dispatch!(self, invalidate_ptes(mm, vfn_start, num_pages))
+        pt_map_dispatch!(self, invalidate_ptes(dev, mm, vfn_start, num_pages))
     }
 }
diff --git a/drivers/gpu/nova-core/mm/pagetable/walk.rs b/drivers/gpu/nova-core/mm/pagetable/walk.rs
index 89d4426bcf144..fedb8b4f33e58 100644
--- a/drivers/gpu/nova-core/mm/pagetable/walk.rs
+++ b/drivers/gpu/nova-core/mm/pagetable/walk.rs
@@ -36,7 +36,10 @@
 
 use core::marker::PhantomData;
 
-use kernel::prelude::*;
+use kernel::{
+    device,
+    prelude::*, //
+};
 
 use super::{
     DualPdeOps,
@@ -168,8 +171,13 @@ pub(super) fn walk_pde_levels(
     /// Walk to PTE for lookup only (no allocation).
     ///
     /// Returns [`WalkResult::PageTableMissing`] if intermediate tables don't exist.
-    pub(super) fn walk_to_pte_lookup(&self, mm: &GpuMm, vfn: Vfn) -> Result<WalkResult> {
-        let mut window = mm.pramin().get_window()?;
+    pub(super) fn walk_to_pte_lookup(
+        &self,
+        dev: &device::Device<device::Bound>,
+        mm: &GpuMm,
+        vfn: Vfn,
+    ) -> Result<WalkResult> {
+        let mut window = mm.pramin().get_window(dev)?;
         self.walk_to_pte_lookup_with_window(&mut window, vfn)
     }
 
@@ -236,7 +244,12 @@ pub(in crate::mm) fn new(pdb_addr: VramAddress, version: MmuVersion) -> Self {
     }
 
     /// Walk to PTE for lookup.
-    pub(in crate::mm) fn walk_to_pte(&self, mm: &GpuMm, vfn: Vfn) -> Result<WalkResult> {
-        pt_walk_dispatch!(self, walk_to_pte_lookup(mm, vfn))
+    pub(in crate::mm) fn walk_to_pte(
+        &self,
+        dev: &device::Device<device::Bound>,
+        mm: &GpuMm,
+        vfn: Vfn,
+    ) -> Result<WalkResult> {
+        pt_walk_dispatch!(self, walk_to_pte_lookup(dev, mm, vfn))
     }
 }
diff --git a/drivers/gpu/nova-core/mm/pramin.rs b/drivers/gpu/nova-core/mm/pramin.rs
index f56d6c3d4e255..c16717a73ecba 100644
--- a/drivers/gpu/nova-core/mm/pramin.rs
+++ b/drivers/gpu/nova-core/mm/pramin.rs
@@ -75,11 +75,11 @@
 };
 
 use kernel::{
+    device,
     devres::Devres,
     io::Io,
     new_mutex,
     prelude::*,
-    revocable::RevocableGuard,
     sizes::{
         SZ_1M,
         SZ_64K, //
@@ -117,7 +117,7 @@ pub(crate) fn $name(&mut self, vram_offset: usize) -> Result<$ty> {
                 self.compute_window(vram_offset, ::core::mem::size_of::<$ty>())?;
 
             if let Some(base) = new_base {
-                regs::pramin_window_write_base(self.chipset.arch(), &self.bar, base)?;
+                regs::pramin_window_write_base(self.chipset.arch(), self.bar, base)?;
                 *self.state = base;
             }
             self.bar.$name(bar_offset)
@@ -134,7 +134,7 @@ pub(crate) fn $name(&mut self, vram_offset: usize, value: $ty) -> Result {
                 self.compute_window(vram_offset, ::core::mem::size_of::<$ty>())?;
 
             if let Some(base) = new_base {
-                regs::pramin_window_write_base(self.chipset.arch(), &self.bar, base)?;
+                regs::pramin_window_write_base(self.chipset.arch(), self.bar, base)?;
                 *self.state = base;
             }
             self.bar.$name(value, bar_offset)
@@ -169,11 +169,12 @@ impl Pramin {
     /// `vram_region` specifies the valid VRAM address range.
     pub(crate) fn new(
         bar: Arc<Devres<Bar0>>,
+        dev: &device::Device<device::Bound>,
         chipset: Chipset,
         vram_region: Range<u64>,
     ) -> Result<impl PinInit<Self>> {
-        let bar_access = bar.try_access().ok_or(ENODEV)?;
-        let current_base = regs::pramin_window_read_base(chipset.arch(), &bar_access);
+        let bar_access = bar.access(dev)?;
+        let current_base = regs::pramin_window_read_base(chipset.arch(), bar_access);
 
         Ok(pin_init!(Self {
             bar,
@@ -192,8 +193,11 @@ fn vram_region(&self) -> &Range<u64> {
     ///
     /// Returns a [`PraminWindow`] guard that provides VRAM read/write accessors.
     /// The [`PraminWindow`] is exclusive and only one can exist at a time.
-    pub(crate) fn get_window(&self) -> Result<PraminWindow<'_>> {
-        let bar = self.bar.try_access().ok_or(ENODEV)?;
+    pub(crate) fn get_window<'a>(
+        &'a self,
+        dev: &'a device::Device<device::Bound>,
+    ) -> Result<PraminWindow<'a>> {
+        let bar = self.bar.access(dev)?;
         let state = self.state.lock();
         Ok(PraminWindow {
             bar,
@@ -212,7 +216,7 @@ pub(crate) fn get_window(&self) -> Result<PraminWindow<'_>> {
 /// Only one [`PraminWindow`] can exist at a time per [`Pramin`] instance (enforced by the
 /// internal `MutexGuard`).
 pub(crate) struct PraminWindow<'a> {
-    bar: RevocableGuard<'a, Bar0>,
+    bar: &'a Bar0,
     chipset: Chipset,
     vram_region: Range<u64>,
     state: MutexGuard<'a, u64>,
@@ -433,14 +437,15 @@ fn test_misaligned_access(
 
 /// Run PRAMIN self-tests during boot if self-tests are enabled.
 #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
-pub(crate) fn run_self_test(dev: &kernel::device::Device, pramin: &Pramin) -> Result {
+pub(crate) fn run_self_test(pdev: &device::Device<device::Bound>, pramin: &Pramin) -> Result {
+    let dev = pdev.as_ref();
     dev_info!(dev, "PRAMIN: Starting self-test...\n");
 
     let vram_region = pramin.vram_region();
     let base: usize = vram_region.start.into_safe_cast();
     let base = base + SELFTEST_REGION_OFFSET;
     let vram_end = vram_region.end;
-    let mut win = pramin.get_window()?;
+    let mut win = pramin.get_window(pdev)?;
 
     test_byte_readwrite(dev, &mut win, base)?;
     test_u32_as_bytes(dev, &mut win, base)?;
diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/tlb.rs
index 8d36e1552792d..53c6fe6084b81 100644
--- a/drivers/gpu/nova-core/mm/tlb.rs
+++ b/drivers/gpu/nova-core/mm/tlb.rs
@@ -11,17 +11,22 @@
 //! ```ignore
 //! use crate::mm::tlb::Tlb;
 //!
-//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Result<()> {
+//! fn page_table_update(
+//!     dev: &device::Device<device::Bound>,
+//!     tlb: &Tlb,
+//!     pdb_addr: VramAddress,
+//! ) -> Result<()> {
 //!     // ... modify page tables ...
 //!
 //!     // Flush TLB to make changes visible (polls for completion).
-//!     tlb.flush(pdb_addr)?;
+//!     tlb.flush(dev, pdb_addr)?;
 //!
 //!     Ok(())
 //! }
 //! ```
 
 use kernel::{
+    device,
     devres::Devres,
     io::poll::read_poll_timeout,
     io::Io,
@@ -92,39 +97,29 @@ pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
     /// This invalidates all TLB entries associated with the given PDB address.
     /// Must be called after modifying page table entries to ensure the GPU sees
     /// the updated mappings.
-    pub(super) fn flush(&self, pdb_addr: VramAddress) -> Result {
+    pub(super) fn flush(
+        &self,
+        dev: &device::Device<device::Bound>,
+        pdb_addr: VramAddress,
+    ) -> Result {
         let _guard = self.lock.lock();
+        let bar = self.bar.access(dev)?;
 
-        // Broken into 2 phases with scopes (Write and Poll) to avoid holding
-        // RevecablableGuard (and hence RCU read-side critical section) across
-        // the read_poll_timeout() call that can sleep.
+        // Write PDB address.
+        bar.write_reg(regs::NV_TLB_FLUSH_PDB_LO::from_pdb_addr(pdb_addr.raw_u64()));
+        bar.write_reg(regs::NV_TLB_FLUSH_PDB_HI::from_pdb_addr(pdb_addr.raw_u64()));
 
-        // Write phase — hold bar access briefly for register writes only.
-        {
-            let bar = self.bar.try_access().ok_or(ENODEV)?;
+        // Trigger flush.
+        bar.write_reg(
+            regs::NV_TLB_FLUSH_CTRL::zeroed()
+                .with_all_va(true)
+                .with_ack(TlbAckMode::None)
+                .with_trigger(true),
+        );
 
-            // Write PDB address.
-            bar.write_reg(regs::NV_TLB_FLUSH_PDB_LO::from_pdb_addr(pdb_addr.raw_u64()));
-            bar.write_reg(regs::NV_TLB_FLUSH_PDB_HI::from_pdb_addr(pdb_addr.raw_u64()));
-
-            // Trigger flush: invalidate all virtual addresses, require global
-            // acknowledgment from all engines before completion. See
-            // [`TlbAckMode::Globally`] for why this scope is used unconditionally.
-            bar.write_reg(
-                regs::NV_TLB_FLUSH_CTRL::zeroed()
-                    .with_all_va(true)
-                    .with_ack(TlbAckMode::None)
-                    .with_trigger(true),
-            );
-        }
-
-        // Poll for completion — re-acquire bar access each iteration to avoid
-        // holding the RCU read-side lock (via RevocableGuard) across sleep.
+        // Poll for completion.
         read_poll_timeout(
-            || {
-                let bar = self.bar.try_access().ok_or(ENODEV)?;
-                Ok(bar.read(regs::NV_TLB_FLUSH_CTRL))
-            },
+            || Ok(bar.read(regs::NV_TLB_FLUSH_CTRL)),
             |ctrl: &regs::NV_TLB_FLUSH_CTRL| !ctrl.trigger(),
             Delta::ZERO,
             Delta::from_secs(2),
diff --git a/drivers/gpu/nova-core/mm/vmm.rs b/drivers/gpu/nova-core/mm/vmm.rs
index 45da443211583..35caaed56007e 100644
--- a/drivers/gpu/nova-core/mm/vmm.rs
+++ b/drivers/gpu/nova-core/mm/vmm.rs
@@ -6,6 +6,7 @@
 //! virtual address spaces (Channels, BAR1, BAR2).
 
 use kernel::{
+    device,
     gpu::buddy::AllocatedBlocks,
     maple_tree::MapleTreeAlloc,
     prelude::*,
@@ -207,8 +208,13 @@ fn free_vfn(&self, vfn: Vfn) {
     }
 
     /// Read the [`Pfn`] for a mapped [`Vfn`] if one is mapped.
-    pub(super) fn read_mapping(&self, mm: &GpuMm, vfn: Vfn) -> Result<Option<Pfn>> {
-        match self.pt_walk.walk_to_pte(mm, vfn)? {
+    pub(super) fn read_mapping(
+        &self,
+        dev: &device::Device<device::Bound>,
+        mm: &GpuMm,
+        vfn: Vfn,
+    ) -> Result<Option<Pfn>> {
+        match self.pt_walk.walk_to_pte(dev, mm, vfn)? {
             WalkResult::Mapped { pfn, .. } => Ok(Some(pfn)),
             WalkResult::Unmapped { .. } | WalkResult::PageTableMissing => Ok(None),
         }
@@ -223,6 +229,7 @@ pub(super) fn read_mapping(&self, mm: &GpuMm, vfn: Vfn) -> Result<Option<Pfn>> {
     /// to call outside the fence signalling critical path.
     pub(crate) fn prepare_map(
         &mut self,
+        dev: &device::Device<device::Bound>,
         mm: &GpuMm,
         num_pages: usize,
         va_range: Option<Range<u64>>,
@@ -235,6 +242,7 @@ pub(crate) fn prepare_map(
         let vfn_start = self.alloc_vfn_range(num_pages, va_range)?;
 
         if let Err(e) = self.pt_map.prepare_map(
+            dev,
             mm,
             vfn_start,
             num_pages,
@@ -257,6 +265,7 @@ pub(crate) fn prepare_map(
     /// Installs all prepared PDEs and writes PTEs into the page table, then flushes TLB.
     pub(crate) fn execute_map(
         &mut self,
+        dev: &device::Device<device::Bound>,
         mm: &GpuMm,
         prepared: PreparedMapping,
         pfns: &[Pfn],
@@ -275,6 +284,7 @@ pub(crate) fn execute_map(
         _drop_guard.disarm();
 
         if let Err(e) = self.pt_map.install_mappings(
+            dev,
             mm,
             &mut self.pt_pages,
             &mut self.page_table_allocs,
@@ -300,6 +310,7 @@ pub(crate) fn execute_map(
     /// [`Vmm::execute_map()`] will be called separately.
     pub(crate) fn map_pages(
         &mut self,
+        dev: &device::Device<device::Bound>,
         mm: &GpuMm,
         pfns: &[Pfn],
         va_range: Option<Range<u64>>,
@@ -322,15 +333,20 @@ pub(crate) fn map_pages(
             }
         }
 
-        let prepared = self.prepare_map(mm, pfns.len(), va_range)?;
-        self.execute_map(mm, prepared, pfns, writable)
+        let prepared = self.prepare_map(dev, mm, pfns.len(), va_range)?;
+        self.execute_map(dev, mm, prepared, pfns, writable)
     }
 
     /// Unmap all pages in a [`MappedRange`] with a single TLB flush.
-    pub(crate) fn unmap_pages(&mut self, mm: &GpuMm, range: MappedRange) -> Result {
+    pub(crate) fn unmap_pages(
+        &mut self,
+        dev: &device::Device<device::Bound>,
+        mm: &GpuMm,
+        range: MappedRange,
+    ) -> Result {
         let result = self
             .pt_map
-            .invalidate_ptes(mm, range.vfn_start, range.num_pages);
+            .invalidate_ptes(dev, mm, range.vfn_start, range.num_pages);
 
         // TODO: Internal page table pages (PDE, PTE pages) are still kept around.
         // This is by design as repeated maps/unmaps will be fast. As a future TODO,
-- 
2.34.1

