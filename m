Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UC+mIPnWzGnnWwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 10:27:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19062376C34
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 10:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B19910F020;
	Wed,  1 Apr 2026 08:27:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="f9E32yt/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011010.outbound.protection.outlook.com [52.101.52.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3EC10F01A;
 Wed,  1 Apr 2026 08:27:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u0l74vgQUwokEPmmD6fMkDHuMIa8mAIBgsstdTB+ph9kbhqtfl/TQMz0XaGHCgUp8kq1OFLJ+QbLJMayIj1f40zyFg97qcdMV+D1LzUYYuckK+/UjKqAHq7qOvDd3ubKwQt5Yic8jExwMCUnJFwU+nGcCN2r0gA9n3jTeCcNWObGHbo6BwwcDEymoGmid8G7CGq/abZzwmzRFk3Dfv2gJJ/BvtpPtv90J0tC9wl8CDRiOfm4msDVsc61NdJ1/AK03HYxWi2uBD6KtLRm5eKNUxZwXnTMuSvihtxgaX6h0kluHGuFSvSz9QLbVuJY1P6xFiEEA76bQom4cAdgC0keLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X4xmWTD3D3s7lm1ehE5M5j5CRSwwQqT2yCM+ur0zwiU=;
 b=KlnW246l2SRtIR/zwSzv9vZvJmKpoCFu0vs/i/k0LS7puPQcFUFHLi842QDDVV8OHVIzakJjlmRj5M5kIBgPbYPwQJZ2DI7ntyN86H6WOsp49Uonwt2gsF7mh15gExYtPn3BZSV8ncqRXCAY2BOBRRc6SiTH2JmeVRDDAFe5WEHYz3178/6Y0fkkyooAZWg4xGR8fMxfMJMikXyQ6M65RR3t2jumQoFyctyuvpk1KVqBz/ZwNQpAcuKOoVP5Lc0FEs0pigJ4IbzCFyFXwfrYcoaBRDTmKfymGHTVEL89KRiSY1+LVKeGEmyS+2XBJeWhKPaYRarXgxbtyAOeK6etOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X4xmWTD3D3s7lm1ehE5M5j5CRSwwQqT2yCM+ur0zwiU=;
 b=f9E32yt/UVAMVig/Zx39Us1DDcNKJaL0v/Pxex6pJ+Fyb0yC6cG0KiUz7j9XpBFmi0l7zJ/5yHXfOdEcoLJH/fNbETgCQOYP6F2PSXKmOCXqH7ubt/Kw1L+xWRBIq9LZC4tuyybla+2g9jN0O3Og72hYzUpOS1uDSUHGya9MizIl/SgIE0qPkO+zIQ598OPDd4n4lJNCKEfOu6vDxJ76bStW8DPp7/ULWRVvegVUjp2GHQVpMWFWyvR+xwz4WazAX8u3W9yE3aBUINjmyFb0SwRvvCOmcbrS3JY0lEin8E95DxWRnRo6kBawLJJ0VHGSzUq5yZkn+fgKDqwkvkcpbA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by SA1PR12MB8857.namprd12.prod.outlook.com (2603:10b6:806:38d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Wed, 1 Apr
 2026 08:27:29 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9769.016; Wed, 1 Apr 2026
 08:27:29 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 01 Apr 2026 17:27:25 +0900
Message-Id: <DHHOCGNIYDW3.1P7YIMVLW93IY@nvidia.com>
Cc: "Miguel Ojeda" <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>,
 "Gary Guo" <gary@garyguo.net>, "Bjorn Roy Baron"
 <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>, "Andreas
 Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl" <aliceryhl@google.com>,
 "Trevor Gross" <tmgross@umich.edu>, "Danilo Krummrich" <dakr@kernel.org>,
 "Dave Airlie" <airlied@redhat.com>, "Daniel Almeida"
 <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <rust-for-linux@vger.kernel.org>, "Nikola Djukic" <ndjukic@nvidia.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan
 Corbet" <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
 "Christian Koenig" <christian.koenig@amd.com>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang Rui" <ray.huang@amd.com>,
 "Matthew Auld" <matthew.auld@intel.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Lucas De Marchi" <lucas.demarchi@intel.com>,
 "Thomas Hellstrom" <thomas.hellstrom@linux.intel.com>, "Helge Deller"
 <deller@gmx.de>, "Alex Gaynor" <alex.gaynor@gmail.com>, "Boqun Feng"
 <boqun.feng@gmail.com>, "John Hubbard" <jhubbard@nvidia.com>, "Alistair
 Popple" <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer"
 <epeer@nvidia.com>, "Alexandre Courbot" <acourbot@nvidia.com>, "Andrea
 Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>, "Zhi Wang"
 <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>, "Philipp Stanner"
 <phasta@kernel.org>, "Elle Rhumsaa" <elle@weathered-steel.dev>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <joel@joelfernandes.org>, <linux-doc@vger.kernel.org>,
 <amd-gfx@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 02/21] gpu: nova-core: gsp: Extract usable FB region
 from GSP
From: "Eliot Courtney" <ecourtney@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-3-joelagnelf@nvidia.com>
In-Reply-To: <20260331212048.2229260-3-joelagnelf@nvidia.com>
X-ClientProxiedBy: TYCP286CA0267.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:455::10) To BL0PR12MB2353.namprd12.prod.outlook.com
 (2603:10b6:207:4c::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|SA1PR12MB8857:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d1480e1-2b59-4652-13ae-08de8fc88377
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|7416014|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: soQyQLR3YvfFQpkp6hTJk40kE7rc0OHuML4iPuEyzda7pQXajieMKw9Imx7uG6x1RFj8eDqnVuwt6mca52YXH+ZtS+TgcS2vOQu7djY/VmX09Owi4qQaz95H5dICqQL7TIduzTeVrrKvnRXcLU981aQpvZy/z8aBYt7Cfur6kVdTyanyxFtPXZXP6iRStuSqXOc8a7wHnx/87d7GtrOw9mXBkWdC01DUGtFQULD1vhxzSFNOfpfV5PfWBtcm7kBuDDLKSh/5IrIUTSSEoPU8EeR+55fNYift8PNyPAMGRhRj9VbFOsf6QTxLWcHGkUFaVabd6OCGJ8aegrXNWIeyALdeRQNsP4vhN413Kb3SglQ9wiTo3dhVVP9klhT1a2u2yG6yDMyQnFCjFOCPZN0luvWdA7W3mrsLkxAE0AQ+xSc8M6YH1lC1L+pXXEo/ur95d7obyZy9ucakrGanKbSJtsbQbzLC+Y5U1ImiJH9ce+Fro9vIKeN6xt0BI4uiPr5UtrF1mRc019SF9SoyskeOg3a5eNEIWFfod+AIwShfNLUCTjmrBO2kPzSv7NtYTVcbRjDCvWmCKJo3E7q8VMXBIGkFdR8t9+BBsqCLjokXb9DTRjBMYU1W5/Y2SK77cvL6NyfsM30f2faLXuiuWABLGCqKCIVWs3p7EWYmYzGczvZFOKyBSfQ5Dl7IlfBfy4EmZb2JJOLhXy4ZzIlOPdQs7D/8ifKSNMxcyCy9hdiSFNI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(7416014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnhJTmNtM2h0bDducDAvUFpDVDdGZkwrblg1N3krR1k2dTdZb2xDdmNCK2Zp?=
 =?utf-8?B?L05oeDBWcVlYUzc0emtMM0Nhd29ZMHlDOFM3clVZdms0ckowTG04Q0Z5MEJ2?=
 =?utf-8?B?b2Q3b2JWQW11VVlOdVA2Zkt0Y3V4bytQd2pvWERBdktpZlRTR3ZzdWlPRXR2?=
 =?utf-8?B?VVRwc1A1M1F6S05IeGtobEFmQUJCUWw4dldGK0FJcE9PVXdmOFRTeXZWdnJP?=
 =?utf-8?B?bXl2VDAzbE9aM2hUZ0lYUVZqY0k0dkZsSndPbW84bGtYMFZZNllKTXF5ZTg1?=
 =?utf-8?B?TG40M3FDK1BsRmxxZW95T052aTlBellMSGZxYnh3SHBhZWlZb2RQV1lLZnhi?=
 =?utf-8?B?TWY2TGxCSlJ3YmUxUGJuSFgrcFJQYUNubEZsN0NqZGtNOUxPeEMydmN6TDNZ?=
 =?utf-8?B?eXI4MDZiald6aVFxV3c0Y2VQcWMrZGNHdHBFVnl5bkRtRFBVelpqQ21qdG9r?=
 =?utf-8?B?RU9DS0Y1T2p1amtDRHU5QlEzY1A4ZlZoejJlT09vcjNWNFk5eGVOVkRxTlh5?=
 =?utf-8?B?aFlxQVNNRmNSc0x3REJGeFExTldrWGdvbW5xTnRZRXp0dmJEK3NkaEd1RUhm?=
 =?utf-8?B?ZmJSc042NXNIUWZWbjMwRWJ1Tml5V0lXSFlKTDJINWUzVlcyNVcyWHYwODhF?=
 =?utf-8?B?amlEcTUvNkd4S1dVeXZWc0ZrVmJrek9hTjk3UEUxWXhORWxUdVIza1hFRHpV?=
 =?utf-8?B?QXo0Mk9LLyt1UEJ6cFhzT2xzL3grUDhIL0hRZll2RWkyZHF1Q3YzT2hZOEg2?=
 =?utf-8?B?dlpkUmM4bkdwaVZpYmxKb3JxSUJlUXVuMjJZUndaU0o4ak40M0d5cDJqNmJF?=
 =?utf-8?B?cVU1TEUyTXpHT01NWDBJOXVkMFlvVHFpL2lvc2VhYzZ4ZXRMMGVYTUlhTEtN?=
 =?utf-8?B?TE4rVFFjYzJzR2ozeGdwY3cxMEVicGxtUCsrYTBYSTdMZFBqNE9FcHRDdzRU?=
 =?utf-8?B?SjBWaTZPNUdFZStoakNTU3BObGgzR2ZDZm5jcmlXdGlJTjJ4L1cweFN4ZWJG?=
 =?utf-8?B?YzVSNDJaT1hNZC9kMEp5SnEvc1ZCM0w2bFQ3STVrY2xmZVNZQ2QvWTdSNWlx?=
 =?utf-8?B?QW9sNkRIK25hZEh4OFpDR0NUV295QXZhbzdsKzIyeENLQVdjTUNpTmxWRnp6?=
 =?utf-8?B?M2VUUXVzY1JmZmFmSXFpd25XUkUvU0VEcmpUaElTM1g3UTJMck0xU2NVSzBZ?=
 =?utf-8?B?KzlvY0FhaDErWG9SYVJreEw4YWJ4VUFsK2VsMldibS90WlhBdTR3c2pHN3lQ?=
 =?utf-8?B?Mm1SR1BqS3ZmRGNTWXl1a2F6c2xhd2VzNHM2eGNjRndnNVhpTUNlWWZ5RVRs?=
 =?utf-8?B?bUYxQzd5a0FZc0IzUGN1L0xGYzBSbDlTTEpPTnVEL0VYWStBWkpmRHdwdVRt?=
 =?utf-8?B?ZXI1KzRBb1lQNm8vazVXTk04cDVaQjlFaTFSTzdKcC9xNy9nWTcrSUQxbElO?=
 =?utf-8?B?TVJsZm5LMXdQVi9ndStCNGFFc1c1MHpRVDY2V09OVytsTVlzR1g3QTd2Yzdp?=
 =?utf-8?B?MTIvWXhWYmRkVklETDVpblpjZjdyVTZHbU82cUlSNkd6bi8zeFY4dUQ3YzFY?=
 =?utf-8?B?MGU3VDRjRU1DNkhkckp6ZXJ6TmNoM1o3WFBWZFJrWCtWZEowaXIyTTB1emJh?=
 =?utf-8?B?RUhLVkRSRm43WFM0bVJlZ2xKQXdja1NVWnhlS09hMThXbHp4N0RYZGxsUHZX?=
 =?utf-8?B?VGkzZDUzdjFTaVZuL2VscExkdUZnYkFRZ29JWms5cXQ3RHU4Mmh1RjM0MjFi?=
 =?utf-8?B?RGZ0cUpJV215eFd6S2dPNUZLY3hnVlJFUDArbmM1NVNjN0l5UzI4SkR3L0ZU?=
 =?utf-8?B?SGM2dlBoZXhpbTM5a3JJeGg1emk5cDQ4YlgxZ1RYbmtwL3ZaM2puaHhaaDRp?=
 =?utf-8?B?VjhtaDVRZG5OanNTUEdWV2hSbU5UajYrdFgrRWFoem1KcEQ4YitlNVdyZ2Ux?=
 =?utf-8?B?MU81UFJTQ0VqT3pMSWhmVEZWK1pPTzNVejIrKzBIUzRBRTRZWmloNUtmemkw?=
 =?utf-8?B?UzlkMm5uSmErR3oyQWVVMDEvNHJKQ1ZhdEZZcnAzOFVqM0cyTWtocUlxclJi?=
 =?utf-8?B?SmYyQTljT0VTS3Evd245V094OXppWXcva0tqQXg2YVdOZ0RpUDh3QklsRDha?=
 =?utf-8?B?Q2ZnUUhUV3NySXMva09jaWtHUWRYaVhqRE8xVG1ra2hIYXF3Szg4RFB2UXY5?=
 =?utf-8?B?bW13K044OU5aK0VOSjUxd0ZoK0lJT2xCNjU2UTlOK1BiYTl3RGIyRHdNWjJG?=
 =?utf-8?B?M2I5UjhINlJaM1BPL1M1MTVFLzFhM3RLdVRETGNDbjAvaDlMYkdReTF1YVQ5?=
 =?utf-8?B?R0VoN0w3djFCam1ZSmp0WndCem9KSnRxbkVOM3VZSFhDd3FzbXZhRnV0SHd1?=
 =?utf-8?Q?yXP6YlChkSkwbUoNoe1EJb01rerMb2R92O03cn1GpnPAc?=
X-MS-Exchange-AntiSpam-MessageData-1: z/iQP/LVIp0y4Q==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d1480e1-2b59-4652-13ae-08de8fc88377
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB2353.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 08:27:29.7440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yeTiKuRppP/CQVkScaka12vAkIfXNaCMBXNPcdIn0OHTAGhNY4cx3tyZ2cFd4Gok/TLFUy0ztxsmk1tUvy8NDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB8857
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
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[ecourtney@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.982];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 19062376C34
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
> Add first_usable_fb_region() to GspStaticConfigInfo to extract the first
> usable FB region from GSP's fbRegionInfoParams. Usable regions are those
> that are not reserved or protected.
>
> The extracted region is stored in GetGspStaticInfoReply and exposed as
> usable_fb_region field for use by the memory subsystem.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---

Please see my feedback from v9[1] which still applies.

[1]: https://lore.kernel.org/all/DH1GK30TUB4V.2GR6ANXIZDFFQ@nvidia.com/

thanks
