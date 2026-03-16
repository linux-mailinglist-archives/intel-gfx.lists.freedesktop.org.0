Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFnJFMUBuGmCYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 14:12:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B082129A01E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 14:12:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CAE910E25A;
	Mon, 16 Mar 2026 13:12:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="EDdc8HUY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012063.outbound.protection.outlook.com [52.101.53.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB6E610E07F;
 Mon, 16 Mar 2026 13:12:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JrRd4lppcDqqqAg2h4FjU6/RfaivmUKEv5YqnCM3H+dPkJnv2zr0L1bTTTQ2hGyrHGWKKgqRqAe7G5D8WX/4zXm6okrospVF3tmJABEw256Drg1YCFODNGG5vPKPBTOgthZmOIY+ck+jeNSZw4xqUkyB9VmavNenS1urPQUgJk4aHiAse/vw8jdxbf81+PaKzAxq4/Zi/jGTSIrrrzLiLZVlBuD+kq8O/sO486z/NIzmkf/paoBplVpP+D/43uYhEMvtc0m00G6VIQqT9HeNZc8Aegib/RVnZROd8ag435UYR7+KY6d6k5ig26TpnHWKQCvPnxpv3mljEMXKbtXXIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fa9YfK3Ex+IYYWfsUyA/an84YQknAodMf8UNSdWe+JY=;
 b=FV9b3ltDH83iU8Pxrv1Cd4t8zkUgi4M/egSOdphszBz0aW+WRxE2ByuXnBnUvGp5bxvfBCRkFGIL/4B3oZrgW451oFR2mAwuzT8z7jmRfaVRtMN5S1CDIHX1yDzgQjKNRbNtdqSd5BGDLzE2z2cTC1lI4FZPRjGzhgFMzH3MSDB+1bO1flsx0Z3W6FrM2FoU4nNySGHUnmxyFDvX0N29d4Bzhh40zc6nfTswH4AnkIxtfQo4YAdl0Zgp0bVAHk3s/7OMIksm3LYe4acXfHmvdAwdD9zTXpDUFTtvOzBCc3Uw3A3XWXELUswktV/TqMD7eSTCryAkCVkpOTg4cwqCCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fa9YfK3Ex+IYYWfsUyA/an84YQknAodMf8UNSdWe+JY=;
 b=EDdc8HUYvoX9SJzJ+g3IYHexSZ4SydKDw/y7/N7HEiBNE/aCM61SbE1Oo8Ti//LA2/wxPjCV5yzWIqz5hTYjsWPG+ii5baGGPa5qNseeT+Twc5sInK6fIXylMnFLMJoWhyBQB/hcNmY6nTbFejZfk3wdkY8ydwghc1LVHmrn7Y/314RzvEftkr6+BBX4otmMcWWFoQxc5WeSLng8Mv+/SYy2H+e11oS6oxPEaFTTn4XLfheZMoesGyFluZcmEAxw6hBxEQRU+JgvwtD8hDUk4+b6K9AGWOTsgqdpGEzU9bFmOTEyPVVbNrKNT6aKWAlnRlTC79L7I4FjGvUzdu+RFA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by SN7PR12MB8060.namprd12.prod.outlook.com (2603:10b6:806:343::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Mon, 16 Mar
 2026 13:12:09 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 13:12:09 +0000
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Mar 2026 22:12:01 +0900
Message-Id: <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
Cc: <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>,
 "Boqun Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, "Benno Lossin"
 <lossin@kernel.org>, "Andreas Hindborg" <a.hindborg@kernel.org>, "Alice
 Ryhl" <aliceryhl@google.com>, "Trevor Gross" <tmgross@umich.edu>, "Danilo
 Krummrich" <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>, "Daniel
 Almeida" <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <nouveau@lists.freedesktop.org>, <rust-for-linux@vger.kernel.org>, "Nikola
 Djukic" <ndjukic@nvidia.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan Corbet"
 <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang Rui" <ray.huang@amd.com>,
 "Matthew Auld" <matthew.auld@intel.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Lucas De Marchi" <lucas.demarchi@intel.com>,
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 "Helge Deller" <deller@gmx.de>, "Alex Gaynor" <alex.gaynor@gmail.com>,
 "Boqun Feng" <boqun.feng@gmail.com>, "John Hubbard" <jhubbard@nvidia.com>,
 "Alistair Popple" <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>,
 "Edwin Peer" <epeer@nvidia.com>, "Andrea Righi" <arighi@nvidia.com>, "Andy
 Ritger" <aritger@nvidia.com>, "Zhi Wang" <zhiw@nvidia.com>, "Balbir Singh"
 <balbirs@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, <alexeyi@nvidia.com>, "Eliot Courtney"
 <ecourtney@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v12.1 1/1] rust: gpu: Add GPU buddy allocator bindings
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Content-Transfer-Encoding: quoted-printable
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-2-joelagnelf@nvidia.com>
In-Reply-To: <20260309135338.3919996-2-joelagnelf@nvidia.com>
X-ClientProxiedBy: TY4P286CA0112.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:380::11) To MN2PR12MB3997.namprd12.prod.outlook.com
 (2603:10b6:208:161::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|SN7PR12MB8060:EE_
X-MS-Office365-Filtering-Correlation-Id: c0d62afb-8349-4a0c-8319-08de835da05b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7416014|10070799003|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: KDpgKFUuAMeZJXofb4ydIaVwFUvWjMITWhWXfp0W/Fqytim1S0XeN6s47xNHCp0a20A87xP3IBrDs23SlJaR7CWP1DCTYqdp7u9a5SyS9svd/dn0YpAOR3OBr+H6E5ZoP1b4PuSepHG4JtS5em4kfwDeMR2FahUTXMMk1jqJs++9kIHNOElVCqFdInMkKiUGvdzXBngAjZE0kWRNWU0+lu/WHjYvB3g1pZyglv6tzkPxDU+Ll7anUF4T742fih3P1pOyp5/dVl5fCZwn2AWCpblqwtNkGiu9u/H2aZZv62KL3CoUASXl0sFbL1fjsOdAdhkhkdmfNn5ELGddcSJgaxDbqCe99nRrBY6j8Q8P/RKksnFC4j2AnzpPQW2ASlDmtlImE5QpRdzy1JO914E5pLXfVumffK9HSacOGuEBO3YK529wf3MovcKv7sGQ/OZFQZTN7vOWkqmY5OOf1c/w1K5TEQ70omCPOIfWTOaXWg/lyH4F59TS+np3OiP+G2DeKv1a4W2TOxjWa/EjyKxwYbItMn79pDMT/lyuGCNxpmIIEgyexO3a7WLxDOELs5tQimWxf33uSHi2+JgB80zKaXPn/vNism+fbuEUBAlqy/XqHymouk/BOxFKf5kOUwafYU/66wI/cdQ7Efw+pAaciXPAP3AMT7bHKsxJYJKVYzoDevEf6nEW7GeWXmMW/SO2t1gTIfqPwqxrLVMuECfLBF5I4+nfpgPiXuFzgxDbvD4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014)(10070799003)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1RBME9SQzlRbFN3bEVBZUNYWFZSaldnVTZFdkNUY3A0eUZUVlY0cVdEbmxo?=
 =?utf-8?B?WkQxNG5md3gvT3hRcEZlcURYbmV4R1ZPVVlwZ0JMbG5XMno1RklDR2hsbU01?=
 =?utf-8?B?clVBSTJlTDQzZVNtamJYREpSa2VMRGdmckZQYTVKN0IyZmNjY3Y3bmdkZDAv?=
 =?utf-8?B?WWJqRE42UEhabjRxM2E2RzdCYUhLaisvMkcrQUdpUzExa1FxUy95c3hhUVdM?=
 =?utf-8?B?QVU1RjIzWXd1V1RZMVB3eG1oalpkSGNMYUtDam9WblJCOEdaOVUzRkpnam1I?=
 =?utf-8?B?K3c1c1VtMXBRa3lsQmRrSkVDTFRYZ1hFd1RLMG9UZVF3OTJXVDVTMUxRSFV3?=
 =?utf-8?B?WVFqeG10bGE2TUNtN2hmeVFBOFdjU0V0cFAxR2hoREoyWENCZ3dqeGxVbnFO?=
 =?utf-8?B?em90VEFaQVgxVzFoU2gvUktyOUthZXd6cDJnLzRnSDVXeEg4TGh2MXR0MUR2?=
 =?utf-8?B?Q2NQN0VqbVJSLy94UFlJZDJ1T0txNngyOW4xT1l4dnVGQXJJYTQrT1ZMWXRj?=
 =?utf-8?B?MGk0bDZ2L3pSWnVvQS9XOURDbi96blpwQkEzVlk2YWV6REJwL3F4dFNsd2Jx?=
 =?utf-8?B?V3BtbEdRVXdxaDBWSlpGOTJRRE42MDR6Sjh3Y0F5VWxIK1JBeVhUNE5nRDcw?=
 =?utf-8?B?WFQvQ2lCbHV5dWs4eHBpKyt3ZW5RUGdjbVl4d3pJSTh2VTRJbEs3SFI0VXdT?=
 =?utf-8?B?YnBLYUF6dXRGUDI1Rkcya3daWEpwaUFFZFNjYS9JT3RWMjB5OENCS1NqemR0?=
 =?utf-8?B?UUFUN1BmZmxHNEJIelY1MlZtTWphQ2hISlFUN1dQU0N4KzNoS3hUcE83RFBr?=
 =?utf-8?B?dlkzSUhUWDlXZVBVK0lwZzdsa2N5TDlzeFhsbmtCbno2OEVkeXlVeHBnckR5?=
 =?utf-8?B?Y09oYytiWk9xVzJNOEVIbWVtaUJzdm14Q240bVduUG80TnhvbVhGKzdRVjRH?=
 =?utf-8?B?Mkplako4K3lIRnJxRkNFQkxRYU1ORGdDT2RESXpMOWlrV2U4RllLOTRPWXZs?=
 =?utf-8?B?ajR6K3o4RTdWRXB5aENQMDV6OU00ODh1NVpLelYvV2M0eFIzdVZBcFRnTGJh?=
 =?utf-8?B?Wmo5dThsNnYzdUJESmREVmJrRStsdnVZODhCVmdQTDZhVUc5WEU3MlBaSDVs?=
 =?utf-8?B?Yzk1dGZTbE9pQmJINDVQZEp6T1pkT1Z5elR2dEdrY0pyY0lybDFUSk9tWnAy?=
 =?utf-8?B?VGVWYVNzdFRKR0x1NUtMM1ZKdzVtaUxSR1k0aXVDcmZRamFUcm1ZN1JhU1Yw?=
 =?utf-8?B?dDdtaEpIMEJhT00yWjhQZ1ZYZ2NLMHRCZmVtZ2NUdHNiUmZ6NDd5UitFZm1a?=
 =?utf-8?B?Z3dSaTNvL0hhUXpEaFhRVkg2dnNvUXlCbCtSRWU4S1dJem4xM0orTWJNWTYz?=
 =?utf-8?B?NFVyUXFhY2tuTmFqd0NPZXY4NEdqd05qcjFabTlhbjYvSjZmdWhpc0d6UW9i?=
 =?utf-8?B?bTF2M0V4Y3pOaU1VcVhLWk90MWhmR3dsdVJ2QlcvSExvd2FQYXRzTTQrUTk0?=
 =?utf-8?B?QTlLOG9wWTVPQmpiYmJJaVMyUXhLUlhhcExxTEdBRXhjOGp1SlFZcllkQ0lX?=
 =?utf-8?B?RTZzL3B0RVRsaGNLUVlXWm9STVppTGJhY0orL0VzeGlUcVFyNEZyWmw4Ylcz?=
 =?utf-8?B?VDhZUlNTMFJIdUlObHl0aTRkdEV2WFJoY05GamJuWlVQWDEvVjBUZ1hWdVQ0?=
 =?utf-8?B?eHBDMmlvcERNb21IUzRKTjA0b0JlUjVwRng5cjFiMk5mRlVnQXIvMy8rdmpv?=
 =?utf-8?B?YU9zeTdheFZKRks5aE5tTnl0SU9tSVNNRE55Qld0cWt4UjRnaGZETVpybzZp?=
 =?utf-8?B?dUhOZXRyaDNjaUhxNllQeEFsRm5oNkd6NzdvQmZzMkROVERBV2dUSW85cENv?=
 =?utf-8?B?VWo2N1dERkd0bk1rWjJLbVNGUVdlWkhWdExjOWNicFZIZlNzN0Zua0hxSXRR?=
 =?utf-8?B?bVNHM2lVWktJWE5PRVZidGhsNmZGQ1lxbENVSitVSzVFSDd4ZEZ6STNUeHlU?=
 =?utf-8?B?NERpQkpLd0E3enJFME1WdWlDMExwbDJOTStmajRta3Blb240STNNZkR2REk5?=
 =?utf-8?B?YW5NVDREd05OOXdNWVREOGpiNEoxS3owZ0o5TGtUM3Y4SnpZdCtaNUxvRWZC?=
 =?utf-8?B?d3R1Wnd2NzREdmVoc0dNa1hMQU83OHdONHprU21XaCtoWCtURlZaZ0FDNjdu?=
 =?utf-8?B?OWU1VkZRbjJISmhjdG4yVDNlU1dyUzdkWHBLSlIvTC94MDMvbzB5L2IrYm9Q?=
 =?utf-8?B?bmtGZkpqYS9lT0QxM2twYUR3YlA1WFJTcUJGbGUveWZQak91QUVNY2Z2OGJm?=
 =?utf-8?B?blNERlhzUThIdWFjYUVyWXM5K1h6bUtVbzlCODFPc1ZGL25KTTNKS2k3bDIv?=
 =?utf-8?Q?1BhUd4jK+93O2AC4hBIj3iQjiPzA3DpYSXxPB/nAJth2Y?=
X-MS-Exchange-AntiSpam-MessageData-1: huXIhbO7R9iCrw==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0d62afb-8349-4a0c-8319-08de835da05b
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3997.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 13:12:09.2350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oZWKdpmHyd+oFuXd3psTLMDEdslhW2Bx0+zP1X57r6xOzcE/Pb4S7nQCGfKIAZjRpo/ABJeYLpv9x5NMe9OmWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8060
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B082129A01E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon Mar 9, 2026 at 10:53 PM JST, Joel Fernandes wrote:
> Add safe Rust abstractions over the Linux kernel's GPU buddy
> allocator for physical memory management. The GPU buddy allocator
> implements a binary buddy system useful for GPU physical memory
> allocation. nova-core will use it for physical memory allocation.
>
> Christian Koenig mentioned he'd like to step down from reviewer role for
> GPU buddy so updated accordingly. Arun/Matthew agree on the modified entr=
y.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>

This is getting close IMHO. But `make rustdoc` fails on the examples,
and there are still clippy warnings - please make sure to address them.

A few more comments below.

<snip>
> diff --git a/rust/kernel/gpu/buddy.rs b/rust/kernel/gpu/buddy.rs
> new file mode 100644
> index 000000000000..9027c9a7778f
> --- /dev/null
> +++ b/rust/kernel/gpu/buddy.rs
> @@ -0,0 +1,611 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! GPU buddy allocator bindings.
> +//!
> +//! C header: [`include/linux/gpu_buddy.h`](srctree/include/linux/gpu_bu=
ddy.h)
> +//!
> +//! This module provides Rust abstractions over the Linux kernel's GPU b=
uddy
> +//! allocator, which implements a binary buddy memory allocator.
> +//!
> +//! The buddy allocator manages a contiguous address space and allocates=
 blocks
> +//! in power-of-two sizes, useful for GPU physical memory management.
> +//!
> +//! # Examples
> +//!
> +//! Create a buddy allocator and perform a basic range allocation:
> +//!
> +//! ```
> +//! use kernel::{
> +//!     gpu::buddy::{GpuBuddy, GpuBuddyAllocMode, GpuBuddyAllocFlags, Gp=
uBuddyParams},

nit: should also use kernel formatting style.

> +//!     prelude::*,
> +//!     ptr::Alignment,
> +//!     sizes::*, //
> +//! };
> +//!
> +//! // Create a 1GB buddy allocator with 4KB minimum chunk size.
> +//! let buddy =3D GpuBuddy::new(GpuBuddyParams {
> +//!     base_offset: 0,
> +//!     physical_memory_size: SZ_1G as u64,
> +//!     chunk_size: SZ_4K,

`chunk_size` is an interesting case. The C API uses a `u64`, but I think
we can reasonably consider that we won't ever need chunks larger than
4GB (or can we :O). I'm actually ok with using a `usize` for this one.

One of the first things the C code does is throwing an error if it is
not a power of 2, so maybe we can even request an `Alignment`?

I'm a bit torn as to whether we should use a `u64` to conform with the C
API, but doing so would mean we cannot use an `Alignment`...

> +//! })?;
> +//!
> +//! assert_eq!(buddy.size(), SZ_1G as u64);
> +//! assert_eq!(buddy.chunk_size(), SZ_4K);
> +//! let initial_free =3D buddy.free_memory();
> +//!
> +//! // Allocate 16MB, results in a single 16MB block at offset 0.
> +//! let allocated =3D KBox::pin_init(
> +//!     buddy.alloc_blocks(
> +//!         GpuBuddyAllocMode::Range { start: 0, end: 0 },

This zero-sized range looks confusing for the example. I understand the
C API allows this, but I don't think we should. Is there a difference
with just using `GpuBuddyAllocMode::Simple`? If not, let's switch to
that, and reject zero-sized ranges in the same spirit as we don't allow
invalid flag combinations.

> +//!         SZ_16M,
> +//!         Alignment::new::<SZ_16M>(),
> +//!         GpuBuddyAllocFlags::default(),
> +//!     ),
> +//!     GFP_KERNEL,
> +//! )?;
> +//! assert_eq!(buddy.free_memory(), initial_free - SZ_16M as u64);
> +//!
> +//! let block =3D allocated.iter().next().expect("expected one block");
> +//! assert_eq!(block.offset(), 0);
> +//! assert_eq!(block.order(), 12); // 2^12 pages =3D 16MB
> +//! assert_eq!(block.size(), SZ_16M);

Here we should also check that there is not a second block.

> +//!
> +//! // Dropping the allocation returns the memory to the buddy allocator=
.

s/memory/range - technically we are not returning physical memory.

> +//! drop(allocated);
> +//! assert_eq!(buddy.free_memory(), initial_free);
> +//! # Ok::<(), Error>(())
> +//! ```
> +//!
> +//! Top-down allocation allocates from the highest addresses:
> +//!
> +//! ```
> +//! # use kernel::{
> +//! #     gpu::buddy::{GpuBuddy, GpuBuddyAllocMode, GpuBuddyAllocFlags, =
GpuBuddyParams},
> +//! #     prelude::*,
> +//! #     ptr::Alignment,
> +//! #     sizes::*, //

`make rustdoc` fails to build:

error[E0433]: failed to resolve: use of undeclared type `GpuBuddyAllocFlags=
`
    --> rust/doctests_kernel_generated.rs:6182:9
     |
6182 |         GpuBuddyAllocFlags::default(),
     |         ^^^^^^^^^^^^^^^^^^ use of undeclared type `GpuBuddyAllocFlag=
s`
     |
help: an enum with a similar name exists
     |
6182 -         GpuBuddyAllocFlags::default(),
6182 +         GpuBuddyAllocFlag::default(),
     |
help: consider importing this struct
     |
   3 + use kernel::gpu::buddy::GpuBuddyAllocFlags;
     |

error[E0433]: failed to resolve: use of undeclared type `GpuBuddyAllocFlags=
`
    --> rust/doctests_kernel_generated.rs:6195:9
     |
6195 |         GpuBuddyAllocFlags::default(),
     |         ^^^^^^^^^^^^^^^^^^ use of undeclared type `GpuBuddyAllocFlag=
s`
     |
help: an enum with a similar name exists
     |
6195 -         GpuBuddyAllocFlags::default(),
6195 +         GpuBuddyAllocFlag::default(),
     |
help: consider importing this struct
     |
   3 + use kernel::gpu::buddy::GpuBuddyAllocFlags;

> +//! # };
> +//! # let buddy =3D GpuBuddy::new(GpuBuddyParams {
> +//! #     base_offset: 0,
> +//! #     physical_memory_size: SZ_1G as u64,
> +//! #     chunk_size: SZ_4K,
> +//! # })?;
> +//! # let initial_free =3D buddy.free_memory();
> +//! let topdown =3D KBox::pin_init(
> +//!     buddy.alloc_blocks(
> +//!         GpuBuddyAllocMode::TopDown,
> +//!         SZ_16M,
> +//!         Alignment::new::<SZ_16M>(),
> +//!         GpuBuddyAllocFlags::default(),
> +//!     ),
> +//!     GFP_KERNEL,
> +//! )?;
> +//! assert_eq!(buddy.free_memory(), initial_free - SZ_16M as u64);
> +//!
> +//! let block =3D topdown.iter().next().expect("expected one block");
> +//! assert_eq!(block.offset(), (SZ_1G - SZ_16M) as u64);
> +//! assert_eq!(block.order(), 12);
> +//! assert_eq!(block.size(), SZ_16M);
> +//!
> +//! // Dropping the allocation returns the memory to the buddy allocator=
.
> +//! drop(topdown);
> +//! assert_eq!(buddy.free_memory(), initial_free);
> +//! # Ok::<(), Error>(())
> +//! ```
> +//!
> +//! Non-contiguous allocation can fill fragmented memory by returning mu=
ltiple
> +//! blocks:
> +//!
> +//! ```
> +//! # use kernel::{
> +//! #     gpu::buddy::{
> +//! #         GpuBuddy, GpuBuddyAllocFlags, GpuBuddyAllocMode, GpuBuddyP=
arams,
> +//! #     },
> +//! #     prelude::*,
> +//! #     ptr::Alignment,
> +//! #     sizes::*, //
> +//! # };
> +//! # let buddy =3D GpuBuddy::new(GpuBuddyParams {
> +//! #     base_offset: 0,
> +//! #     physical_memory_size: SZ_1G as u64,
> +//! #     chunk_size: SZ_4K,
> +//! # })?;
> +//! # let initial_free =3D buddy.free_memory();
> +//! // Create fragmentation by allocating 4MB blocks at [0,4M) and [8M,1=
2M).
> +//! let frag1 =3D KBox::pin_init(
> +//!     buddy.alloc_blocks(
> +//!         GpuBuddyAllocMode::Range { start: 0, end: SZ_4M as u64 },
> +//!         SZ_4M,
> +//!         Alignment::new::<SZ_4M>(),
> +//!         GpuBuddyAllocFlags::default(),
> +//!     ),
> +//!     GFP_KERNEL,
> +//! )?;
> +//! assert_eq!(buddy.free_memory(), initial_free - SZ_4M as u64);
> +//!
> +//! let frag2 =3D KBox::pin_init(
> +//!     buddy.alloc_blocks(
> +//!         GpuBuddyAllocMode::Range {
> +//!             start: SZ_8M as u64,
> +//!             end: (SZ_8M + SZ_4M) as u64,
> +//!         },
> +//!         SZ_4M,
> +//!         Alignment::new::<SZ_4M>(),
> +//!         GpuBuddyAllocFlags::default(),
> +//!     ),
> +//!     GFP_KERNEL,
> +//! )?;
> +//! assert_eq!(buddy.free_memory(), initial_free - SZ_8M as u64);
> +//!
> +//! // Allocate 8MB, this returns 2 blocks from the holes.
> +//! let fragmented =3D KBox::pin_init(
> +//!     buddy.alloc_blocks(
> +//!         GpuBuddyAllocMode::Range { start: 0, end: SZ_16M as u64 },
> +//!         SZ_8M,
> +//!         Alignment::new::<SZ_4M>(),
> +//!         GpuBuddyAllocFlags::default(),
> +//!     ),
> +//!     GFP_KERNEL,
> +//! )?;
> +//! assert_eq!(buddy.free_memory(), initial_free - SZ_16M as u64);
> +//!
> +//! let (mut count, mut total) =3D (0u32, 0usize);
> +//! for block in fragmented.iter() {
> +//!     assert_eq!(block.size(), SZ_4M);
> +//!     total +=3D block.size();
> +//!     count +=3D 1;
> +//! }

Note that we can avoid mutable variables with this:

//! let total_size: usize =3D fragmented.iter()
//!      .inspect(|block| assert_eq!(block.size(), SZ_4M))
//!      .map(|block| block.size())
//!      .sum();
//! assert_eq!(total_size, SZ_8M);
//! assert_eq!(fragmented.iter().count(), 2);

But your call as to whether this is an improvement.

> +//! assert_eq!(total, SZ_8M);
> +//! assert_eq!(count, 2);
> +//! # Ok::<(), Error>(())
> +//! ```
> +//!
> +//! Contiguous allocation fails when only fragmented space is available:
> +//!
> +//! ```
> +//! # use kernel::{
> +//! #     gpu::buddy::{
> +//! #         GpuBuddy, GpuBuddyAllocFlag, GpuBuddyAllocMode, GpuBuddyPa=
rams,
> +//! #     },
> +//! #     prelude::*,
> +//! #     ptr::Alignment,
> +//! #     sizes::*, //
> +//! # };
> +//! // Create a small 16MB buddy allocator with fragmented memory.
> +//! let small =3D GpuBuddy::new(GpuBuddyParams {
> +//!     base_offset: 0,
> +//!     physical_memory_size: SZ_16M as u64,
> +//!     chunk_size: SZ_4K,
> +//! })?;
> +//!
> +//! let _hole1 =3D KBox::pin_init(
> +//!     small.alloc_blocks(
> +//!         GpuBuddyAllocMode::Range { start: 0, end: SZ_4M as u64 },
> +//!         SZ_4M,
> +//!         Alignment::new::<SZ_4M>(),
> +//!         GpuBuddyAllocFlags::default(),
> +//!     ),
> +//!     GFP_KERNEL,
> +//! )?;
> +//!
> +//! let _hole2 =3D KBox::pin_init(
> +//!     small.alloc_blocks(
> +//!         GpuBuddyAllocMode::Range {
> +//!             start: SZ_8M as u64,
> +//!             end: (SZ_8M + SZ_4M) as u64,
> +//!         },
> +//!         SZ_4M,
> +//!         Alignment::new::<SZ_4M>(),
> +//!         GpuBuddyAllocFlags::default(),
> +//!     ),
> +//!     GFP_KERNEL,
> +//! )?;
> +//!
> +//! // 8MB contiguous should fail, only two non-contiguous 4MB holes exi=
st.
> +//! let result =3D KBox::pin_init(
> +//!     small.alloc_blocks(
> +//!         GpuBuddyAllocMode::Simple,
> +//!         SZ_8M,
> +//!         Alignment::new::<SZ_4M>(),
> +//!         GpuBuddyAllocFlag::Contiguous.into(),
> +//!     ),
> +//!     GFP_KERNEL,
> +//! );
> +//! assert!(result.is_err());
> +//! # Ok::<(), Error>(())
> +//! ```

I think these last two examples are great both as documentation and
tests - the doc has also become much more readable!

> +
> +use crate::{
> +    bindings,
> +    clist_create,
> +    error::to_result,
> +    interop::list::CListHead,
> +    new_mutex,
> +    prelude::*,
> +    ptr::Alignment,
> +    sync::{
> +        lock::mutex::MutexGuard,
> +        Arc,
> +        Mutex, //
> +    },
> +    types::Opaque, //
> +};
> +
> +/// Allocation mode for the GPU buddy allocator.
> +///
> +/// The mode determines the primary allocation strategy. Modes are mutua=
lly
> +/// exclusive: an allocation is either simple, range-constrained, or top=
-down.
> +///
> +/// Orthogonal modifier flags (e.g., contiguous, clear) are specified se=
parately
> +/// via [`GpuBuddyAllocFlags`].
> +#[derive(Copy, Clone, Debug, PartialEq, Eq)]
> +pub enum GpuBuddyAllocMode {
> +    /// Simple allocation without constraints.
> +    Simple,
> +    /// Range-based allocation between `start` and `end` addresses.
> +    Range {
> +        /// Start of the allocation range.
> +        start: u64,
> +        /// End of the allocation range.
> +        end: u64,
> +    },
> +    /// Allocate from top of address space downward.
> +    TopDown,
> +}
> +
> +impl GpuBuddyAllocMode {
> +    // Returns the C flags corresponding to the allocation mode.
> +    fn into_flags(self) -> usize {
> +        match self {
> +            Self::Simple =3D> 0,
> +            Self::Range { .. } =3D> bindings::GPU_BUDDY_RANGE_ALLOCATION=
 as usize,
> +            Self::TopDown =3D> bindings::GPU_BUDDY_TOPDOWN_ALLOCATION as=
 usize,
> +        }
> +    }
> +
> +    // Extracts the range start/end, defaulting to (0, 0) for non-range =
modes.
> +    fn range(self) -> (u64, u64) {
> +        match self {
> +            Self::Range { start, end } =3D> (start, end),
> +            _ =3D> (0, 0),
> +        }
> +    }
> +}
> +
> +crate::impl_flags!(
> +    /// Modifier flags for GPU buddy allocation.
> +    ///
> +    /// These flags can be combined with any [`GpuBuddyAllocMode`] to co=
ntrol
> +    /// additional allocation behavior.
> +    #[derive(Clone, Copy, Default, PartialEq, Eq)]
> +    pub struct GpuBuddyAllocFlags(u32);
> +
> +    /// Individual modifier flag for GPU buddy allocation.
> +    #[derive(Clone, Copy, PartialEq, Eq)]
> +    pub enum GpuBuddyAllocFlag {
> +        /// Allocate physically contiguous blocks.
> +        Contiguous =3D bindings::GPU_BUDDY_CONTIGUOUS_ALLOCATION as u32,
> +
> +        /// Request allocation from cleared (zeroed) memory.
> +        Clear =3D bindings::GPU_BUDDY_CLEAR_ALLOCATION as u32,
> +
> +        /// Disable trimming of partially used blocks.
> +        TrimDisable =3D bindings::GPU_BUDDY_TRIM_DISABLE as u32,
> +    }
> +);
> +
> +/// Parameters for creating a GPU buddy allocator.
> +pub struct GpuBuddyParams {
> +    /// Base offset (in bytes) where the managed memory region starts.
> +    /// Allocations will be offset by this value.
> +    pub base_offset: u64,
> +    /// Total physical memory size (in bytes) managed by the allocator.
> +    pub physical_memory_size: u64,
> +    /// Minimum allocation unit / chunk size (in bytes), must be >=3D 4K=
B.
> +    pub chunk_size: usize,

As I mentioned above, let's consider if we can store this as an `Alignment`=
.

> +}
> +
> +/// Inner structure holding the actual buddy allocator.
> +///
> +/// # Synchronization
> +///
> +/// The C `gpu_buddy` API requires synchronization (see `include/linux/g=
pu_buddy.h`).
> +/// [`GpuBuddyGuard`] ensures that the lock is held for all
> +/// allocator and free operations, preventing races between concurrent a=
llocations
> +/// and the freeing that occurs when [`AllocatedBlocks`] is dropped.

`GpuBuddyGuard` is now private, so we should avoid mentioning it in the
public documentation as it will just confuse users.

Users won't care about such implementation details - we can just say
that internal locking ensures all operations are properly synchronized.

> +///
> +/// # Invariants
> +///
> +/// The inner [`Opaque`] contains an initialized buddy allocator.
> +#[pin_data(PinnedDrop)]
> +struct GpuBuddyInner {
> +    #[pin]
> +    inner: Opaque<bindings::gpu_buddy>,
> +
> +    // TODO: Replace `Mutex<()>` with `Mutex<Opaque<..>>` once `Mutex::n=
ew()`
> +    // accepts `impl PinInit<T>`.
> +    #[pin]
> +    lock: Mutex<()>,
> +    /// Cached creation parameters (do not change after init).
> +    params: GpuBuddyParams,
> +}
> +
> +impl GpuBuddyInner {
> +    /// Create a pin-initializer for the buddy allocator.
> +    fn new(params: GpuBuddyParams) -> impl PinInit<Self, Error> {
> +        let size =3D params.physical_memory_size;
> +        let chunk_size =3D params.chunk_size;
> +
> +        // INVARIANT: `gpu_buddy_init` returns 0 on success, at which po=
int the
> +        // `gpu_buddy` structure is initialized and ready for use with a=
ll
> +        // `gpu_buddy_*` APIs. `try_pin_init!` only completes if all fie=
lds succeed,
> +        // so the invariant holds when construction finishes.
> +        try_pin_init!(Self {
> +            inner <- Opaque::try_ffi_init(|ptr| {
> +                // SAFETY: `ptr` points to valid uninitialized memory fr=
om the pin-init
> +                // infrastructure. `gpu_buddy_init` will initialize the =
structure.
> +                to_result(unsafe { bindings::gpu_buddy_init(ptr, size, c=
hunk_size as u64) })
> +            }),
> +            lock <- new_mutex!(()),
> +            params,
> +        })
> +    }
> +
> +    /// Lock the mutex and return a guard for accessing the allocator.
> +    fn lock(&self) -> GpuBuddyGuard<'_> {
> +        GpuBuddyGuard {
> +            inner: self,
> +            _guard: self.lock.lock(),
> +        }
> +    }
> +}
> +
> +#[pinned_drop]
> +impl PinnedDrop for GpuBuddyInner {
> +    fn drop(self: Pin<&mut Self>) {
> +        let guard =3D self.lock();
> +
> +        // SAFETY: Per the type invariant, `inner` contains an initializ=
ed
> +        // allocator. `guard` provides exclusive access.
> +        unsafe {
> +            bindings::gpu_buddy_fini(guard.as_raw());
> +        }
> +    }
> +}
> +
> +// SAFETY: GpuBuddyInner can be sent between threads.
> +unsafe impl Send for GpuBuddyInner {}
> +
> +// SAFETY: `GpuBuddyInner` is `Sync` because `GpuBuddyInner::lock`
> +// serializes all access to the C allocator, preventing data races.
> +unsafe impl Sync for GpuBuddyInner {}
> +
> +// Guard that proves the lock is held, enabling access to the allocator.
> +// The `_guard` holds the lock for the duration of this guard's lifetime=
.
> +struct GpuBuddyGuard<'a> {
> +    inner: &'a GpuBuddyInner,
> +    _guard: MutexGuard<'a, ()>,
> +}
> +
> +impl GpuBuddyGuard<'_> {
> +    /// Get a raw pointer to the underlying C `gpu_buddy` structure.
> +    fn as_raw(&self) -> *mut bindings::gpu_buddy {
> +        self.inner.inner.get()
> +    }
> +}
> +
> +/// GPU buddy allocator instance.
> +///
> +/// This structure wraps the C `gpu_buddy` allocator using reference cou=
nting.
> +/// The allocator is automatically cleaned up when all references are dr=
opped.
> +///
> +/// Refer to the module-level documentation for usage examples.
> +pub struct GpuBuddy(Arc<GpuBuddyInner>);
> +
> +impl GpuBuddy {
> +    /// Create a new buddy allocator.
> +    ///
> +    /// Creates a buddy allocator that manages a contiguous address spac=
e of the given
> +    /// size, with the specified minimum allocation unit (chunk_size mus=
t be at least 4KB).
> +    pub fn new(params: GpuBuddyParams) -> Result<Self> {
> +        Ok(Self(Arc::pin_init(GpuBuddyInner::new(params), GFP_KERNEL)?))

Can be written as:

        Arc::pin_init(GpuBuddyInner::new(params), GFP_KERNEL).map(Self)

I prefer this form as it avoids the `?` and re-wrapping into `Ok` for
something that is already a `Result`.

>
> +    }
> +
> +    /// Get the base offset for allocations.
> +    pub fn base_offset(&self) -> u64 {
> +        self.0.params.base_offset
> +    }
> +
> +    /// Get the chunk size (minimum allocation unit).
> +    pub fn chunk_size(&self) -> usize {

If my suggestion above works this could return an `Alignment`.

> +        self.0.params.chunk_size
> +    }
> +
> +    /// Get the total managed size.
> +    pub fn size(&self) -> u64 {
> +        self.0.params.physical_memory_size
> +    }
> +
> +    /// Get the available (free) memory in bytes.
> +    pub fn free_memory(&self) -> u64 {
> +        let guard =3D self.0.lock();
> +
> +        // SAFETY: Per the type invariant, `inner` contains an initializ=
ed allocator.
> +        // `guard` provides exclusive access.
> +        unsafe { (*guard.as_raw()).avail }
> +    }
> +
> +    /// Allocate blocks from the buddy allocator.
> +    ///
> +    /// Returns a pin-initializer for [`AllocatedBlocks`].
> +    ///
> +    /// Takes `&self` instead of `&mut self` because the internal [`Mute=
x`] provides
> +    /// synchronization - no external `&mut` exclusivity needed.

This is another implementation detail - the fact this takes `&self` and
is not `unsafe` is already proof that synchronization is taken care of.

> +    pub fn alloc_blocks(
> +        &self,
> +        mode: GpuBuddyAllocMode,
> +        size: usize,

For this parameter I am pretty sure we want to conform to the C API and
use a `u64` - there is no benefit in not doing so, and buffers larger
than 4GB *are* a reality nowadays, (maybe not for graphics, but this
will also be used in compute scenarios).

> +        min_block_size: Alignment,
> +        flags: GpuBuddyAllocFlags,
> +    ) -> impl PinInit<AllocatedBlocks, Error> {
> +        let buddy_arc =3D Arc::clone(&self.0);
> +        let (start, end) =3D mode.range();
> +        let mode_flags =3D mode.into_flags();
> +        let modifier_flags =3D u32::from(flags) as usize;
> +
> +        // Create pin-initializer that initializes list and allocates bl=
ocks.
> +        try_pin_init!(AllocatedBlocks {
> +            buddy: buddy_arc,
> +            list <- CListHead::new(),
> +            _: {
> +                // Lock while allocating to serialize with concurrent fr=
ees.
> +                let guard =3D buddy.lock();
> +
> +                // SAFETY: Per the type invariant, `inner` contains an i=
nitialized
> +                // allocator. `guard` provides exclusive access.
> +                to_result(unsafe {
> +                    bindings::gpu_buddy_alloc_blocks(
> +                        guard.as_raw(),
> +                        start,
> +                        end,
> +                        size as u64,
> +                        min_block_size.as_usize() as u64,
> +                        list.as_raw(),
> +                        mode_flags | modifier_flags,
> +                    )
> +                })?
> +            }
> +        })
> +    }
> +}
> +
> +/// Allocated blocks from the buddy allocator with automatic cleanup.
> +///
> +/// This structure owns a list of allocated blocks and ensures they are
> +/// automatically freed when dropped. Use `iter()` to iterate over all
> +/// allocated blocks.
> +///
> +/// # Invariants
> +///
> +/// - `list` is an initialized, valid list head containing allocated blo=
cks.
> +#[pin_data(PinnedDrop)]
> +pub struct AllocatedBlocks {
> +    #[pin]
> +    list: CListHead,
> +    buddy: Arc<GpuBuddyInner>,
> +}
> +
> +impl AllocatedBlocks {
> +    /// Check if the block list is empty.
> +    pub fn is_empty(&self) -> bool {
> +        // An empty list head points to itself.
> +        !self.list.is_linked()
> +    }
> +
> +    /// Iterate over allocated blocks.
> +    ///
> +    /// Returns an iterator yielding [`AllocatedBlock`] values. Each [`A=
llocatedBlock`]
> +    /// borrows `self` and is only valid for the duration of that borrow=
.
> +    pub fn iter(&self) -> impl Iterator<Item =3D AllocatedBlock<'_>> + '=
_ {
> +        // SAFETY:
> +        // - Per the type invariant, `list` is an initialized sentinel `=
list_head`
> +        //   and is not concurrently modified (we hold a `&self` borrow)=
.
> +        // - The list contains `gpu_buddy_block` items linked via
> +        //   `__bindgen_anon_1.link`.
> +        // - `Block` is `#[repr(transparent)]` over `gpu_buddy_block`.
> +        let clist =3D clist_create!(unsafe {
> +            self.list.as_raw(),
> +            Block,
> +            bindings::gpu_buddy_block,
> +            __bindgen_anon_1.link
> +        });
> +
> +        clist
> +            .iter()
> +            .map(|this| AllocatedBlock { this, blocks: self })
> +    }
> +}
> +
> +#[pinned_drop]
> +impl PinnedDrop for AllocatedBlocks {
> +    fn drop(self: Pin<&mut Self>) {
> +        let guard =3D self.buddy.lock();
> +
> +        // SAFETY:
> +        // - list is valid per the type's invariants.
> +        // - guard provides exclusive access to the allocator.
> +        unsafe {
> +            bindings::gpu_buddy_free_list(guard.as_raw(), self.list.as_r=
aw(), 0);
> +        }
> +    }
> +}
> +
> +/// A GPU buddy block.
> +///
> +/// Transparent wrapper over C `gpu_buddy_block` structure. This type is=
 returned
> +/// as references during iteration over [`AllocatedBlocks`].
> +///
> +/// # Invariants
> +///
> +/// The inner [`Opaque`] contains a valid, allocated `gpu_buddy_block`.
> +#[repr(transparent)]
> +struct Block(Opaque<bindings::gpu_buddy_block>);
> +
> +impl Block {
> +    /// Get a raw pointer to the underlying C block.
> +    fn as_raw(&self) -> *mut bindings::gpu_buddy_block {
> +        self.0.get()
> +    }
> +
> +    /// Get the block's raw offset in the buddy address space (without b=
ase offset).
> +    fn offset(&self) -> u64 {
> +        // SAFETY: `self.as_raw()` is valid per the type's invariants.
> +        unsafe { bindings::gpu_buddy_block_offset(self.as_raw()) }
> +    }
> +
> +    /// Get the block order.
> +    fn order(&self) -> u32 {
> +        // SAFETY: `self.as_raw()` is valid per the type's invariants.
> +        unsafe { bindings::gpu_buddy_block_order(self.as_raw()) }
> +    }

Speaking of synchronization - I only had a quick look at the C API, but
are we sure these methods can all be called without holding the lock?

> +}
> +
> +// SAFETY: `Block` is a wrapper around `gpu_buddy_block` which can be
> +// sent across threads safely.
> +unsafe impl Send for Block {}
> +
> +// SAFETY: `Block` is only accessed through shared references after
> +// allocation, and thus safe to access concurrently across threads.
> +unsafe impl Sync for Block {}
> +
> +/// A buddy block paired with its owning [`AllocatedBlocks`] context.
> +///
> +/// Unlike a raw block, which only knows its offset within the buddy add=
ress
> +/// space, an [`AllocatedBlock`] also has access to the allocator's `bas=
e_offset`
> +/// and `chunk_size`, enabling it to compute absolute offsets and byte s=
izes.
> +///
> +/// Returned by [`AllocatedBlocks::iter()`].
> +pub struct AllocatedBlock<'a> {
> +    this: &'a Block,
> +    blocks: &'a AllocatedBlocks,
> +}
> +
> +impl AllocatedBlock<'_> {
> +    /// Get the block's offset in the address space.
> +    ///
> +    /// Returns the absolute offset including the allocator's base offse=
t.
> +    /// This is the actual address to use for accessing the allocated me=
mory.
> +    pub fn offset(&self) -> u64 {
> +        self.blocks.buddy.params.base_offset + self.this.offset()
> +    }
> +
> +    /// Get the block order (size =3D chunk_size << order).
> +    pub fn order(&self) -> u32 {
> +        self.this.order()
> +    }
> +
> +    /// Get the block's size in bytes.
> +    pub fn size(&self) -> usize {
> +        self.blocks.buddy.params.chunk_size << self.this.order()
> +    }
> +}
> diff --git a/rust/kernel/gpu/mod.rs b/rust/kernel/gpu/mod.rs

Let's use `gpu.rs` as the file for this module.

> new file mode 100644
> index 000000000000..8f25e6367edc
> --- /dev/null
> +++ b/rust/kernel/gpu/mod.rs
> @@ -0,0 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! GPU subsystem abstractions.
> +
> +pub mod buddy;

IMHO we should have a `#[cfg(CONFIG_GPU_BUDDY =3D "y")]` here for
defensiveness...

>
> diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
> index bb741f1e0dfd..63e3f656eb6c 100644
> --- a/rust/kernel/lib.rs
> +++ b/rust/kernel/lib.rs
> @@ -98,6 +98,8 @@
>  pub mod firmware;
>  pub mod fmt;
>  pub mod fs;
> +#[cfg(CONFIG_GPU_BUDDY =3D "y")]
> +pub mod gpu;

... because in the future I suspect the condition for enabling that
module will become broader. I think it's fine to keep it as-is for now
though.
