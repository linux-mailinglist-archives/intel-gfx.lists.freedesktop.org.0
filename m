Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AL55LNMr1GnLrwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:55:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E106A3A7A97
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:55:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C124410E2D3;
	Mon,  6 Apr 2026 21:55:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="it6JVbox";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012071.outbound.protection.outlook.com [52.101.53.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DDDE10E2BF;
 Mon,  6 Apr 2026 21:55:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jd0VTIY5VU1NfkuxSEXH/Wgowi1ZLJhnw5vtw6zVEy2X+EgMbS9jqXKDzO0kd67MScuBGNqxEpT15ro4qtyq0AYcolVALAXFmTyXivI0ScASQ2ORwjpJaiHmtCSnbITLgi61UGmC2I/PwSQmls5qShlaMTkmVAfHWEgZIp/jGzeSDnGtOfQCUOMZXkROk6dbOpMRMItTN/r1vP6E8FXjtgGe4aPGENwADOF9Xzo4fvBCUwCxSIZPLX+9gFhyHJOeOT3qXFGb6KoPCzf4KApYFsGZSfOOgurZhd/gZSQtj3wodvGstKBdgSRyqLiATLuV5DDtX5UW6+W5L/41iQERtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PoZinVtitqlIIWQUFWNH5gwp5G3bV2tCKI6DpzXLUwE=;
 b=XE79uAmW7WVfUzSgnv4OlzC6Xx2kKejonnUQ+Lpmt17C1d4+ht89NwYMfZ5qb8xl5uoUkuCcb/yejqChEqEXu2qSmCUcTyDquHlDD7NaSa62kopeXBBnDoGLZ1mUCrRZhjhpCHBpVZCAU6g6yD80+BBwy69X+GgpxVXrZ/t3faLj8aQQNO3tWzL+9yH4Tqk9yMopbp7301C3YHXFDxY3D6rwMaqac9ZpoRbA5GU+y2Jy5Tf/Z4FxoYUXLt2/wqVe0fjfMzKf2U1wpcpmmKrbDjB+BD8HggGkOn696yInkAJh3OWTg+EeOClWpQ6HoqzzFSA+WF8C0kxYDJBqRm47+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PoZinVtitqlIIWQUFWNH5gwp5G3bV2tCKI6DpzXLUwE=;
 b=it6JVbox4bbTCxjs/9kjgWfKOkeYqlIPP7yxpPX4brXgH/6XhUHw8W65gdpRVTS6Rh34dyKESeA9HfglQ7y6uzdSoUffzwZ2PAX+tTL7GjEQslATcfkWrwG2TobqOGIOVhxq2Nv+6wtVQeo2l8YeFcZMKvWZVWdNl9WJcT3ZWprbwoEV7wcow6nmNx6q683sNyKA7oIpZW/zhkGeTKZKeRFwH5XnR7cIINtBP+nS6MJ/Cvam1CvXG4pS3buSg9hI70csJYQ9W92FJTE8nNRR8xpJRj2nxa+Cytn4G+h2KB0AQgyuk/M/UX52hmhBQvZL8xrFr/dHLAREmcyH+fGAEw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MW3PR12MB4426.namprd12.prod.outlook.com (2603:10b6:303:58::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.12; Mon, 6 Apr 2026 21:55:21 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 6 Apr 2026
 21:55:21 +0000
Message-ID: <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
Date: Mon, 6 Apr 2026 17:55:17 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
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
 <20260331212048.2229260-13-joelagnelf@nvidia.com>
 <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN0P223CA0024.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:52b::31) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MW3PR12MB4426:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fb3457e-f206-4ab1-b6e0-08de94273288
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: wmh3hDslOQz7xdHVqTRMbjvi7fGsSSkOkbQZPja9Zd4pkYl1HPMD/aDWzxrc9L1BRTcdnugnlYSnM2CD5bIiryE9g7FnN94GGYWngXdRC2pHRzYZs10LikZDw4aZdWbisDvpzSZLqlGRovp89bqSw8RQiuMySqDCZS2kr3aTaTG7zBd9CDfsI+LOPViO9eDj8PM0gwX5imKd38KPY9Muu6zn2ZYc8+q+cW3mDNpF/Q4wSGuWMlJkDWw8Hpj0JxhhjcTChEBwHIBp0peHsrwW+rPmW7A+yhLD02hUHdH0PB1Gp4g6j34KKuPYaXE3/cUpuUngQWmWRug4japgm3RqPfLSqA2Te1YBKhDEKYI/oTI8bu10xjUkL4tTwf0NdBejy8YTsRP7a7dEVI6y7rrb9ol/UpRHL8vHbL3dgkbOTthOhUtB2P2DpC7ph2LuoXlXYQ+vRBzQUZpFrC3w1T5A7QkYEPBDc8N11MAwjCZyDV3UgVlDefE6vB4mnnticKGyinHa2OJ+ryQor3Iy4rSKldJQ4FKJtWsiiBkJdrnsN6WoSmAncwXTrPyYB9jevETtmJgbH9TaxNh9jFxyjXK6PcQcYrodOauVI1GAgUMbB2nr+jQQgqF+Yh5tDwOySfWq96YONomOXsUAVUZ6M+j6w8onSclshyvXLiiGtiWuhImwW0lFtXOFd3HmCL0oR9IZ0O87idfIJbWbhxZc6+ZCdEaCtMkIxK8mRw8xJ0w83b0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THBsL2x3dUVnQ2NqT1NaajZJeFNWZW1YQXU2N1VnWU5SekdmVWZYWTQwK3hG?=
 =?utf-8?B?SFgvQnJJVk1jRTFHd3VRMXZ5b0ljMFQ5dlNqQjZ6ZUlmRDZON0YveXc3Nm4r?=
 =?utf-8?B?Y3l2UkpIMzhCM0RwRy91c0k5d3RkOW9uOWNuQXAyZ21MYlVDam1qSk5iV2tR?=
 =?utf-8?B?T3hNWTI5aXRkWUpvYjFQMGVUb0didWxkQ0R0Q0JwdTlJQmRvTjdRR3RxZUZW?=
 =?utf-8?B?V043TGNTMnRVaDFHdzluSEN0WERqcjluUi9zUENUSFg5dzNZNXd3U3Rhc3Jl?=
 =?utf-8?B?c2hkem9JRGd0OHozSmphOXlVRXluTDJ4ZTJsY1lpSm52a1gzaHRVUTJrdlFB?=
 =?utf-8?B?cmFJclo0RHk5bkU2by9TTWNPYVhUTzN0SjgxRkkwamx1c3U0d1N6a0xraHBQ?=
 =?utf-8?B?d2hPTm9IbkttQStUMFVUaTFmMTlsUlFjdzd0THVZV3BLZ2dNbndhYUVEQ0FU?=
 =?utf-8?B?MFNLVWxZTmtRUmhjRWxuZ0FuenVkTCtzb2dxa3JSUkZOV1dxYXcvVGtmdkZD?=
 =?utf-8?B?QUowNm9BRHZUVmdwcEIvb2Z2TmZ6WmdvK2dlU3IxaFlaMVUzQ1ZsNmNNMW1x?=
 =?utf-8?B?SThwNjRKS05BM0RpVnN6aDA3U21vNCs3c3ZpcDBvSnEwbHZoRUtRb3lXUWx1?=
 =?utf-8?B?alpzVXNCcXFjTnFkUVJtVDJzcmpHRWRYTkFqODdIK1dhK0JiWWhEWkpyekVX?=
 =?utf-8?B?dnBUMEoyOEpiQkRTdUlEKzZtdWRPb0VoM2dISjdMbTRhYS9tS2NhS0pHODNt?=
 =?utf-8?B?YkVZQzNxa1dublBXZy9EWlRieUIwbVZVZ0RvZ0V1WHZwTExUbUJXZldGdlR3?=
 =?utf-8?B?eG83KzRZV3VYcHg3U2hQSW9STE84c2RiekFWQXNTYTJRVmhrRHNRSDlzMzd2?=
 =?utf-8?B?MEN2aE5LMk5OSU85VkdPSGdVRnFFUnZTU1lJNjdyQ2JsMUhMT2t3MDZ0Q0dI?=
 =?utf-8?B?QzRpU05OcE1UdHBOUVRyaEtwQTlMUm51clBkMW9sdklJVDcxeklaUlJmRFdw?=
 =?utf-8?B?cStQUmpPMnZwVi9EVFBTaHpnaWJDb1dqZmQyVWRESkJ6MHY0SyszSDgzdXVV?=
 =?utf-8?B?dDFqNkpkbC93eVhaU0F0cTRuTG5jMEJSWk5HbzR0OWJoZEswS1gzN2NuT1Iz?=
 =?utf-8?B?UkJlTFNUWlBqcjBOcXpHQmJLbjQ3TkZ4c0FvdW45Y1hqdDF6TlJCMnR4NzN4?=
 =?utf-8?B?Z0g2bmlreUhmeUZEUnhZMkV0SU41dnNhcy9vZG1BcUhCTXlvT2JqR1RUNWlP?=
 =?utf-8?B?Y3ZGNDB6M3FFdjRwZnROZzlPM2ZINlpXdlVDOHovSUFMZk1majY4djNqZUx2?=
 =?utf-8?B?UDQ4TkNkRGZNT1dScWVKY0tqc3ZOY0k0Y0hlOGJ1VmdoOEFIaGpBekZmYjNP?=
 =?utf-8?B?Si9CZU9COGMzMWlhVGdLMkdMc0VYVkRVWmJFNE16NmJaWU1wMmE4YVBhbk9I?=
 =?utf-8?B?bjRuWHdwQXNZWFozYUFBeXdmUHhGRmsySVR1V1BCK1VDM010QzFjRUF5a21W?=
 =?utf-8?B?UktaSENGcGE4aTNqMi9WRXBOUHNZMldnZ2pFL3FkTXVrQnJ6QnZ5MFd3dzI3?=
 =?utf-8?B?ZTJKUXVrdzdRRTBnQ1EvYy96b1VmSkJUbnNaVitNVGs2ZCtsVVIwWTM2dlJQ?=
 =?utf-8?B?VGZsZHVBWkxlejRES0dweTl4WGQxL1ZDbEhESnl4QTNGdnFiRjVBSmwxRG44?=
 =?utf-8?B?VU42QjVIVmRMK3VwYVdYREkxeUVKT2E2SjRDZHFOQncwVGhEL3pFdnBmRUdX?=
 =?utf-8?B?am54RUdNVnZhakpaZmMrcS8ycW1lSFdERDJOYkxjZXBYSTNxWUhiazUwUU5R?=
 =?utf-8?B?WlpJK3BmY3ZzeXhpdFBoUjI4cjFUbG5TMjEzeUZubFRKSytESFM0MG4zK3VN?=
 =?utf-8?B?K1RZVHhBZXdDVklCREhyazBENS9IQTRncTlpNmpTQXhvMXVqL2JHTUVUSlUz?=
 =?utf-8?B?NmdTMVF2TVlTMGhqR3hWUm9ZNzd3ZVQ3c2ZGcFVKMU9VMFhBMnJxY1hyY1pv?=
 =?utf-8?B?SlJFZGdzbVdJdXZ5QWNaYzNqUFFLNmdPc3R2MGF1TmFSZlVPWjI0akFsT1Qx?=
 =?utf-8?B?OHloWVl2SWRLZm5McUNuSmdsZUlPQnQxa1d4OUE4dm8wOEsyMjc5RlB4WWVi?=
 =?utf-8?B?eFNUOU9LYXhzc0g4aU1CbEkrL0dhalBQR0RvbVczOHBSLzVvbDljbzB0d1Nm?=
 =?utf-8?B?OUpzQVc2cG1wdUwveWdlYUQ5RkU2UW9KNStpVnR0M085VzBDWFFXMEQxL1N1?=
 =?utf-8?B?TFpQa2tUdlhqME9uUFAvWHZYZjRSM3FmY1B3MUhFUFpjcGVldVdjR0NIV2Ir?=
 =?utf-8?B?TlBleC9kanNBbG1WL0M2MGYrSitRVnRJQ2FSenZOdndyb0RHcXJpQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb3457e-f206-4ab1-b6e0-08de94273288
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 21:55:20.7209 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9bBaP82ISgQBxauvSdtPbbczJJDQDUFWR71oFiTzyTSOW5t9Ht82ZtnaEBm9ajRg6apPu5W++th7DZPleGPVOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4426
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: E106A3A7A97
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/2/2026 1:40 AM, Eliot Courtney wrote:
> On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
>> Add unified Pte, Pde, and DualPde wrapper enums that abstract over
>> MMU v2 and v3 page table entry formats. These enums allow the page
>> table walker and VMM to work with both MMU versions.
>>
>> Each unified type:
>> - Takes MmuVersion parameter in constructors
>> - Wraps both ver2 and ver3 variants
>> - Delegates method calls to the appropriate variant
>>
>> This enables version-agnostic page table operations while keeping
>> version-specific implementation details encapsulated in the ver2
>> and ver3 modules.
>>
>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>> ---
>>  drivers/gpu/nova-core/mm/pagetable.rs | 330 ++++++++++++++++++++++++++
>>  1 file changed, 330 insertions(+)
>>
>> diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
>> index 6e01a1af5222..909df37c3ee8 100644
>> --- a/drivers/gpu/nova-core/mm/pagetable.rs
>> +++ b/drivers/gpu/nova-core/mm/pagetable.rs
>> @@ -12,6 +12,13 @@
>>  pub(crate) mod ver3;
>>  
>>  use crate::gpu::Architecture;
>> +use crate::mm::{
>> +    pramin,
>> +    Pfn,
>> +    VirtualAddress,
>> +    VramAddress, //
>> +};
>> +use kernel::prelude::*;
>>  
>>  /// Extracts the page table index at a given level from a virtual address.
>>  pub(crate) trait VaLevelIndex {
>> @@ -84,6 +91,96 @@ pub(crate) const fn as_index(&self) -> u64 {
>>      }
>>  }
>>  
>> +impl MmuVersion {
>> +    /// Get the `PDE` levels (excluding PTE level) for page table walking.
>> +    pub(crate) fn pde_levels(&self) -> &'static [PageTableLevel] {
>> +        match self {
>> +            Self::V2 => ver2::PDE_LEVELS,
>> +            Self::V3 => ver3::PDE_LEVELS,
>> +        }
>> +    }
>> +
>> +    /// Get the PTE level for this MMU version.
>> +    pub(crate) fn pte_level(&self) -> PageTableLevel {
>> +        match self {
>> +            Self::V2 => ver2::PTE_LEVEL,
>> +            Self::V3 => ver3::PTE_LEVEL,
>> +        }
>> +    }
>> +
>> +    /// Get the dual PDE level (128-bit entries) for this MMU version.
>> +    pub(crate) fn dual_pde_level(&self) -> PageTableLevel {
>> +        match self {
>> +            Self::V2 => ver2::DUAL_PDE_LEVEL,
>> +            Self::V3 => ver3::DUAL_PDE_LEVEL,
>> +        }
>> +    }
>> +
>> +    /// Get the number of PDE levels for this MMU version.
>> +    pub(crate) fn pde_level_count(&self) -> usize {
>> +        self.pde_levels().len()
>> +    }
>> +
>> +    /// Get the entry size in bytes for a given level.
>> +    pub(crate) fn entry_size(&self, level: PageTableLevel) -> usize {
>> +        if level == self.dual_pde_level() {
>> +            16 // 128-bit dual PDE
>> +        } else {
>> +            8 // 64-bit PDE/PTE
>> +        }
>> +    }
>> +
>> +    /// Get the number of entries per page table page for a given level.
>> +    pub(crate) fn entries_per_page(&self, level: PageTableLevel) -> usize {
>> +        match self {
>> +            Self::V2 => match level {
>> +                // TODO: Calculate these values from the bitfield dynamically
>> +                // instead of hardcoding them.
>> +                PageTableLevel::Pdb => 4, // PD3 root: bits [48:47] = 2 bits
>> +                PageTableLevel::L3 => 256, // PD0 dual: bits [28:21] = 8 bits
>> +                _ => 512,                 // PD2, PD1, PT: 9 bits each
>> +            },
>> +            Self::V3 => match level {
>> +                PageTableLevel::Pdb => 2,  // PDE4 root: bit [56] = 1 bit, 2 entries
>> +                PageTableLevel::L4 => 256, // PDE0 dual: bits [28:21] = 8 bits
>> +                _ => 512,                  // PDE3, PDE2, PDE1, PT: 9 bits each
>> +            },
>> +        }
>> +    }
>> +
>> +    /// Extract the page table index at `level` from `va` for this MMU version.
>> +    pub(crate) fn level_index(&self, va: VirtualAddress, level: u64) -> u64 {
>> +        match self {
>> +            Self::V2 => ver2::VirtualAddressV2::new(va).level_index(level),
>> +            Self::V3 => ver3::VirtualAddressV3::new(va).level_index(level),
>> +        }
>> +    }
>> +
>> +    /// Compute upper bound on page table pages needed for `num_virt_pages`.
>> +    ///
>> +    /// Walks from PTE level up through PDE levels, accumulating the tree.
>> +    pub(crate) fn pt_pages_upper_bound(&self, num_virt_pages: usize) -> usize {
>> +        let mut total = 0;
>> +
>> +        // PTE pages at the leaf level.
>> +        let pte_epp = self.entries_per_page(self.pte_level());
>> +        let mut pages_at_level = num_virt_pages.div_ceil(pte_epp);
>> +        total += pages_at_level;
>> +
>> +        // Walk PDE levels bottom-up (reverse of pde_levels()).
>> +        for &level in self.pde_levels().iter().rev() {
>> +            let epp = self.entries_per_page(level);
>> +
>> +            // How many pages at this level do we need to point to
>> +            // the previous pages_at_level?
>> +            pages_at_level = pages_at_level.div_ceil(epp);
>> +            total += pages_at_level;
>> +        }
>> +
>> +        total
>> +    }
>> +}
>> +
> 
> We have a lot of matches on the MMU version here (and below in Pte, Pde,
> DualPde). What about making MmuVersion into a trait (e.g. Mmu) with
> associated types for Pte, Pde, DualPde which can implement traits
> defining their common operations too?

I coded this up and it did not look pretty, there's not much LOC savings and the
code becomes harder to read because of parametrization of several functions. Also:

> Then you can parameterise Vmm/PtWalk on this type.

The match still to be done somewhere, so you end up matching on chipset to call
the correct parametrized functions versus just passing in the parameter or
chipset down, in some cases.

For now I am inclined to leave it as is. Also there's a Rust pitfall we all
learnt during the turing and other patch reviews, sometimes doing a bunch of
matches is good especially if the number of variants are expected to be fixed
(in the mm case, version 2 and version 3). Traits have some disadvantages too,
example dyn traits have to heap-allocated, parametrizing can increase code size
(due to monomorphization) etc.

thanks,

--
Joel Fernandes




