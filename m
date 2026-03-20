Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFqoCBylvWm4/wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 20:50:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6DC2E07D1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 20:50:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA83210EBC1;
	Fri, 20 Mar 2026 19:50:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="PrlaqLwW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011069.outbound.protection.outlook.com
 [40.93.194.69])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93FB110EBA1;
 Fri, 20 Mar 2026 19:50:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hnVgpkifiV+oKJdFMqTx7DjLqIYLVvTScVjXOCroOHUWnUxFHeo5I0zTW5FmBdqDNV6BSCyRcg6oAc5c7VhXQSikZMPIjSyNh8ir5ZVipv7CdHghZrSfgm23Im+3LuwMstxMe1FYbHK5pI2+fTY33jqJ6Wh5x9CpHmynqGwgvct5XleCVUknTXaXA1P849tO/RwT3A0jqbRre7BZItvf8Fh6uj3d50gjmir4qVhyhLJq8CgQF3KddQU+6r0qLJoBxcQygW0oni3UYmJOwiCETujBfeVjAjwlnrg3WDD1RbNUEPOW/uzo6ot8oFeQ36aIDH+Gz0D7jB1f0Mh4BG4ijQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wRu9gHQmxPzc1krfNN7V2BHQbGTuwYrXWJJy0WG14XI=;
 b=Tu9AOdYekZyrDOZI55zId/SEhk2x1Yq8ApUBDZvMUQZ7hm1zYEpfU+tQ81uK/oHiVoTcrmhpIWv8jpZG/Se8siEpginMjnRWVpiWjdvXxSAg4DNzxej78o9NAOP4V8x9ILXLgdA0deJ89vagwxg/yK7iE+nOp3//BnShUH2XrMZqG/W6S6zfMBI5cKKtdn83qWfQX+ivjhQGWZ5l6qVXeCyYtw87O4xFbRZG/9WS67ciTtEalxYF85eQ4WXNyU1CkwvmB/t2+dMheEpttKA8r/yssnaRLSnmj8Qne33ng5vQkU1ToNXOzUG877//AZ5Akn4Ddel773O7zvV6Kmqzgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wRu9gHQmxPzc1krfNN7V2BHQbGTuwYrXWJJy0WG14XI=;
 b=PrlaqLwWU0/IVIGZeeur6rtJQGsy34TkKgFS6Z1cmResNTg8QwgIvaNt+RHG8iUHqCvtog0kUZSlVmSsThA7S9ke6pUHc5/fjAaD/11ENEqqjo/BD9NNsX0G4kgXdDKJspqM0MY462xugVJBsoBh6ReePOBNgHkTKWJETNsUJlck8EMnNAC+F9/FXMnvWBs2H91XaF5VyniLhBPSV7b8p8PeU913DPAB3Gj4ECQHFHCD343dLls+rELOEe5selBeDHd6GdjSdmIeY0KGjztEJHqGnm0CgcLv9nc0aTtYOPXBn1eqoQ/eWLraptEduzjQ0OH1zIeon4QW5A2orGoiYw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BN7PPFCE25C719B.namprd12.prod.outlook.com (2603:10b6:40f:fc02::6e1)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Fri, 20 Mar
 2026 19:50:43 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 19:50:43 +0000
Message-ID: <1e35df4d-0f9e-4d4c-8206-4ae8b0d168a8@nvidia.com>
Date: Fri, 20 Mar 2026 15:50:35 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 1/2] rust: gpu: Add GPU buddy allocator bindings
To: Gary Guo <gary@garyguo.net>, linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
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
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260320045711.43494-1-joelagnelf@nvidia.com>
 <20260320045711.43494-2-joelagnelf@nvidia.com>
 <DH7MPTIK5OMK.3GHQAE07J5OO@garyguo.net>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DH7MPTIK5OMK.3GHQAE07J5OO@garyguo.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1PR13CA0441.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::26) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BN7PPFCE25C719B:EE_
X-MS-Office365-Filtering-Correlation-Id: e2b92936-2bf2-41a9-d32e-08de86b9f85b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: nsJBqusRuN1E1vzx/0AMwSXJOPGIvMo3POlkfG13bkJSwhG/Mkc1FnsT6kjJHIQZvzyBd9aQp/p8MQvVLJsrDZiVNF3bJB7wuwMkI4OiRwGrieXWiuuz2yPlMDdbLRYUrA2yzF0vnJuLp0OhE5BHW7QEtG1fM1IKn8JL88Xka2ZkXjlxhH14ql3HoJIcjl8dDJL6+kxrO7OhV7plk9yh4BJS2ocMu7HdEugP5FSJPCPzbHz9wLpMXFwnPtWf8cDeEMBQms8j2+VJ4PiS9dDGpImWhvRt51aqEUsXMhAsJ3qmjHLM2V/mRtsSXV42FxIA0OrS9LDdrAUq3sZJc1u8ouu0VbjemiCmzAdoh9tLUNhLsCAg5LoRGV+rczkHfgYAAZ3tSjUst9cPHSff0GKBbdUMdIrE3FkRAAN7LUQi9vLvcluuDJTXBGIEZujh1W/zO6f/OPN3ha5EpDJTJlNE940o+scZbDpBaayxZ/2sjO523BTkaIQGvaZYYrPE0a2345jGEekq5eIegJDM8eo4yr3DFbPnoclyIcAObxovgUeqNDjA8axsDFSNBwGsmsgHW7ZRJvKn2RMynFTFim1SWq9uE8+mZa6tHFZQCQ/0a5LNb3pKj/S4VrmLRT5jlwYgpiDVSiZcGNskIPKtRcS5pI79vTOEmydlcvC5nga2QeZ6SLJuetGaTk0A9ATqQxSoplsloWy8EMyZHDvmZptgoPsQOmeA+VhhFOpecc9DfsI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czhOSUpCOVM3Z3VzMHVLK0JWU1JMZGlIdVIvV3UwUmRMamYyVW5wQkVFelNi?=
 =?utf-8?B?azE3VTBPa3A2YkdpZFhGanZsakJldktINjIyNVNBWk5COVcwcFh4M3dZQVIz?=
 =?utf-8?B?Z2xNbkEzTGFJdjJtbW1SZi9OVlI1RC82MlZtQ08xdDU2YU1iazR0a2lNa2xJ?=
 =?utf-8?B?eXByQXJWbHd1cnVpbS9kcVgxRDhxekI5aFJKcW1kRU9kbmtoZkw4aGdjeDBG?=
 =?utf-8?B?Q2hobEUyem1IeDhQZnpIbk9VY0t3MCtqRkFZOTY2dVUxbnBXYkJxcVhjSXBa?=
 =?utf-8?B?S0V4OEplWk82SzBGYU4rNGhQUkdwSTVTc2xzOCtLOFNlRUxrdkZ1OHNOV0Ev?=
 =?utf-8?B?eFppM1ZZU3hpT0JPeW53M0JOb2JQemRNaWIwdXdkSWNFV2JzWnd4dEswazUz?=
 =?utf-8?B?dHFJYkR2U3VHWnAxMWg2YWp4MFNVYVdoMDVPcUpyVEdlMXBJVkt4YXc1Ym9m?=
 =?utf-8?B?WVVxaDM3bncvZDR5WXJ2ZURLU0xRNzh4OE50MXNnOE1sTDloUFlmWUZTWWx6?=
 =?utf-8?B?NnFXTnF4bjY4R29ucDBKZ2xBY1Z2b0RDQlFUYXB0YnFqVUhTajhCUndHcVlm?=
 =?utf-8?B?ZTVkcVRtVEJrc25vanAvNnJsTUVKRTZpa2RjZmFsb0wxb05wWURtU3B0S1NC?=
 =?utf-8?B?R0QvVHJKOW44NW5LZUlYV1pJcEhSRE82aFpSdnFGSUJGWm16OVQzTHlUdUVx?=
 =?utf-8?B?alFGbjhPNUdQQkR1UjM4U1hFZzNpR3JMb25pai9acFhkYlI4T0tKZW9yZmMy?=
 =?utf-8?B?SUlabDRkZ2VINklLbW5uV3lUTTI5QTJQZGg0QTlOOEEyRmc3SXdSeUhWMWR4?=
 =?utf-8?B?Tk9MdVJwNXFEMGdhU2E1K2Y0Uml5SDd2SmF3bHJ4RHdtWTJvN3pEdm5YUFVL?=
 =?utf-8?B?RDJHUFdDckw5b3drV3hhZUtwamdicTdqY2dWdXcwNUJpdWNsd3BoazMrZWRn?=
 =?utf-8?B?bUhVRGtjamJPY01kUUtmLy9VTWt1WVljVUVwNlp4K1JUNEpjYzlPdFZEUnBz?=
 =?utf-8?B?ZGY0c3g2Qlk5c2paZkZZZzF2SGYxVXVKUXF3K05QUHh0YnhQUnBCWSt0ejBO?=
 =?utf-8?B?S053dVNWNjJNTDloZUlTTDFjRGV6ZG9sUnNtNnhSUk13OStvUHBndi9KbjVq?=
 =?utf-8?B?S1YvdHlRNWJQejRxcjdJMVF0M1RINWw2cFVsNUlsQzBTYWNENU01SE01c2JK?=
 =?utf-8?B?YkFmVmUwbUlBaGEyMy9RWmVZSXJkMGxWZWV2OGxaODhVSUtqcXArZFIwUzU3?=
 =?utf-8?B?QzBrYk1hZ2NaQkxJYlkxcXFlTXVGTUxPU2dzNzBuSFkzeVdtcFhvd29NZmpJ?=
 =?utf-8?B?aGJIVjBlWHNXM29DdkJ2c25uMGVPeGhDaVEvL2RtWWdmZ3ZVellIaXdjY0pI?=
 =?utf-8?B?NG5qRnd0S2ptWXMzczNBMG9SZXNUVDBpNC9pN2JMUUZzRGxPdE52U3NQNGc3?=
 =?utf-8?B?aVluekVsVEpsdy9NMGlRc1hGMWdsRWdSM2MxWTJyT2o5RExHUmxoQ21DdUZ4?=
 =?utf-8?B?MlNKL0kvbkpudHE4MUw4VHo5aHk4eTJqU3hablJwZ3grUUNUci90eG5RelVw?=
 =?utf-8?B?ZXRwMmZHZVRiZFZSa3V2ZG1pY0lJYTBXbFIwZlZFWDgxY0wzWEJING5zVlR0?=
 =?utf-8?B?blc0Y0lvdkNPT3BOcHJ4UjNkYUhOR3dNSGE1dVdITnh3QUo3VkdEZC9LVzVB?=
 =?utf-8?B?OU00Ymo0a1ZRTXh0OUFrKzJrN2I3YllPTnp4K3hHb2loajNkbUlxRE51Mjdj?=
 =?utf-8?B?bllkQ1N6OUVYajVZMTRNMjY0eGMvWW5xMnFRckhtQlREeUE4YkZYNkhVek5S?=
 =?utf-8?B?MlpjMFVqNXJSWkY4cS9lbXJTNlBjMU1VTUZQd0RDaVBtcXplcVNFOEVqTFhO?=
 =?utf-8?B?SUpsRWtSKytiZVovREU4VUFnNDRnQUpLVkRwcXBwc1g0UERKL0hKQkhjekpC?=
 =?utf-8?B?bGFvL1dTSDNDU2hVMzd3MW9YaFFoS0FrVHNORllkc0o5YW5FWWR5eG1JRWsy?=
 =?utf-8?B?dHBxVk1MTkw1bTZiZGsvZ0ZsS2ovMTNGcHZoajRLdlFXQU9QdllMYU9nd1RC?=
 =?utf-8?B?YU9qMi84Q3YrZVROL3FBdktLMXk5VytwYjBEc2JqdEJzMWhsM0R6clI5R0Js?=
 =?utf-8?B?UkMyUC9DUGdEV0JrQkRrSGpwcS91TDJ5RDg2WEM3VTBPSjZNazFSWUFUekpo?=
 =?utf-8?B?elVNVkwweTBHYVlZMTFPQ0hxUU9sTG04YlViUE04RUxTL2hxU3BraWF1OERZ?=
 =?utf-8?B?cmN5YmthQndvS0RzZFBMUXh4bUtLS2FFVWNiVFMxc29QT2FOM05sMHQzaDNu?=
 =?utf-8?B?RjFGekNETm1zYnFIdFAwVVBUaXY3Zm0xUTRhci9IVEFYbitaTllsdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2b92936-2bf2-41a9-d32e-08de86b9f85b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 19:50:43.0048 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Wsn5bmkDGuORW2RTFQZdiYEAspB4YMRvFA81tJNluJQA7JiHmeFV5EYsLTUMfXUBJUp3WZx0moeTqEMYRuJ9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPFCE25C719B
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
	FREEMAIL_CC(0.00)[kernel.org,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,sashiko.dev:url,nvidia.com:email,nvidia.com:mid,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 7F6DC2E07D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/20/2026 9:04 AM, Gary Guo wrote:
> On Fri Mar 20, 2026 at 4:57 AM GMT, Joel Fernandes wrote:
>> Add safe Rust abstractions over the Linux kernel's GPU buddy
>> allocator for physical memory management. The GPU buddy allocator
>> implements a binary buddy system useful for GPU physical memory
>> allocation. nova-core will use it for physical memory allocation.
>>
>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>> ---
>>  MAINTAINERS                     |   6 +
>>  rust/bindings/bindings_helper.h |  11 +
>>  rust/helpers/gpu.c              |  23 ++
>>  rust/helpers/helpers.c          |   1 +
>>  rust/kernel/gpu.rs              |   6 +
>>  rust/kernel/gpu/buddy.rs        | 613 ++++++++++++++++++++++++++++++++
>>  rust/kernel/lib.rs              |   2 +
>>  7 files changed, 662 insertions(+)
>>  create mode 100644 rust/helpers/gpu.c
>>  create mode 100644 rust/kernel/gpu.rs
>>  create mode 100644 rust/kernel/gpu/buddy.rs
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index e847099efcc2..cd9505d3be60 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -8531,7 +8531,10 @@ T:	git https://gitlab.freedesktop.org/drm/rust/kernel.git
>>  F:	drivers/gpu/drm/nova/
>>  F:	drivers/gpu/drm/tyr/
>>  F:	drivers/gpu/nova-core/
>> +F:	rust/helpers/gpu.c
>>  F:	rust/kernel/drm/
>> +F:	rust/kernel/gpu.rs
>> +F:	rust/kernel/gpu/
>>  
>>  DRM DRIVERS FOR ALLWINNER A10
>>  M:	Chen-Yu Tsai <wens@kernel.org>
>> @@ -8952,6 +8955,9 @@ F:	drivers/gpu/drm/drm_buddy.c
>>  F:	drivers/gpu/tests/gpu_buddy_test.c
>>  F:	include/drm/drm_buddy.h
>>  F:	include/linux/gpu_buddy.h
>> +F:	rust/helpers/gpu.c
>> +F:	rust/kernel/gpu.rs
>> +F:	rust/kernel/gpu/
>>  
>>  DRM AUTOMATED TESTING
>>  M:	Helen Koike <helen.fornazier@gmail.com>
>> diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_helper.h
>> index 083cc44aa952..dbb765a9fdbd 100644
>> --- a/rust/bindings/bindings_helper.h
>> +++ b/rust/bindings/bindings_helper.h
>> @@ -29,6 +29,7 @@
>>  #include <linux/hrtimer_types.h>
>>  
>>  #include <linux/acpi.h>
>> +#include <linux/gpu_buddy.h>
>>  #include <drm/drm_device.h>
>>  #include <drm/drm_drv.h>
>>  #include <drm/drm_file.h>
>> @@ -146,6 +147,16 @@ const vm_flags_t RUST_CONST_HELPER_VM_MIXEDMAP = VM_MIXEDMAP;
>>  const vm_flags_t RUST_CONST_HELPER_VM_HUGEPAGE = VM_HUGEPAGE;
>>  const vm_flags_t RUST_CONST_HELPER_VM_NOHUGEPAGE = VM_NOHUGEPAGE;
>>  
>> +#if IS_ENABLED(CONFIG_GPU_BUDDY)
>> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_RANGE_ALLOCATION = GPU_BUDDY_RANGE_ALLOCATION;
>> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_TOPDOWN_ALLOCATION = GPU_BUDDY_TOPDOWN_ALLOCATION;
>> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CONTIGUOUS_ALLOCATION =
>> +								GPU_BUDDY_CONTIGUOUS_ALLOCATION;
>> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CLEAR_ALLOCATION = GPU_BUDDY_CLEAR_ALLOCATION;
>> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CLEARED = GPU_BUDDY_CLEARED;
>> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_TRIM_DISABLE = GPU_BUDDY_TRIM_DISABLE;
>> +#endif
>> +
>>  #if IS_ENABLED(CONFIG_ANDROID_BINDER_IPC_RUST)
>>  #include "../../drivers/android/binder/rust_binder.h"
>>  #include "../../drivers/android/binder/rust_binder_events.h"
>> diff --git a/rust/helpers/gpu.c b/rust/helpers/gpu.c
>> new file mode 100644
>> index 000000000000..38b1a4e6bef8
>> --- /dev/null
>> +++ b/rust/helpers/gpu.c
>> @@ -0,0 +1,23 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +
>> +#include <linux/gpu_buddy.h>
>> +
>> +#ifdef CONFIG_GPU_BUDDY
>> +
>> +__rust_helper u64 rust_helper_gpu_buddy_block_offset(const struct gpu_buddy_block *block)
>> +{
>> +	return gpu_buddy_block_offset(block);
>> +}
>> +
>> +__rust_helper unsigned int rust_helper_gpu_buddy_block_order(struct gpu_buddy_block *block)
>> +{
>> +	return gpu_buddy_block_order(block);
>> +}
>> +
>> +__rust_helper u64 rust_helper_gpu_buddy_block_size(struct gpu_buddy *mm,
>> +						   struct gpu_buddy_block *block)
>> +{
>> +	return gpu_buddy_block_size(mm, block);
>> +}
> 
> From Sashiko:
> https://sashiko.dev/#/patchset/20260320045711.43494-1-joelagnelf%40nvidia.com
> 
>     Does the Rust wrapper use this helper? It looks like AllocatedBlock::size()
>     manually duplicates the bitwise logic (chunk_size << order) rather than
>     calling this helper, which could create a divergence risk if the underlying C
>     allocator implementation changes.
> 
> Many other review comments there seem to be false positive, but it might worth
> confirming.
If Danilo is applying the patch, can we please remove the helper on apply? I
think in this case we do not need to call the helper. I don't think there is a
divergence risk here.

thanks,

--
Joel Fernandes

