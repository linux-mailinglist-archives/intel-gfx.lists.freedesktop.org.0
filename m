Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GvPPF/AB1GkwpQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 20:56:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FE33A66C3
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 20:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF5910E2B1;
	Mon,  6 Apr 2026 18:56:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="uYRjDov8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BYAPR05CU005.outbound.protection.outlook.com
 (mail-westusazon11010009.outbound.protection.outlook.com [52.101.85.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6837C10E221;
 Mon,  6 Apr 2026 18:56:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lH/nJHQr0La/n96pdDpDKqbZrs3xPz93MJjjrEBUaUW/B7mO7AhP4WT4vOhAU0bORZny4Kpi+xEF/DH6Gc18JS8PWsBJlKij02akk9zohs2B1GfkgDvkXNw2mwLmhf9ITyiE6tbb2W+L5nA+3x0PxVqitvqj8WeuF9o5MBX6EdPO9GRSTkdhXamZUC9k6YqFqeq+HxEG6ngacAENQpOahPzRlxEbQ6SCVmktlEitRDiV+g/oVBsF8NzrjcYfv6iuq516Cs3FJfikKos7bvlBSaR9xRcHS4XnEUX4Ret1opa0S/SCg0vKUgOCHnd1DPEDje20+ZlqEtu8zrsmGVaGrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hFWkhT6TlqKRq3FGL8m5k/6797p02XerARx+SwYeyeQ=;
 b=F+IkZsHQqpCy/2VImDgzBJZmlQ+0O0Zn1eqEZ+aff9ZcP/ztEoOP+P69QQBVf8J7ikKdvOLbSmQ02uChLvqKv0r7/zv9yxErnifBXyDw9jcMlVkMHj7Xhi655uidMW7ygtI29jPYyOSx34yQj/IALoxCi03nGzDG0HMa+JrguEc/5gUyqfj1el6jEJ8RC66xiw8I5SEuHoc4ZKYcPf/gkai6wDS3fulqryvmtZAAowbPL2ZPO4BnpkWU20B7yIeprXPW/xau0Kp0R1/ca3/NF1gSF7gHWfypgmUxWwE7Sw4jZjmmZCPxOYTx3VHWduvDc23uMCnt7AAaVHQ8gTt85Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hFWkhT6TlqKRq3FGL8m5k/6797p02XerARx+SwYeyeQ=;
 b=uYRjDov8oVuTcO2+c/J/a9dcwGpE35sZme92QStC/8pugQcZDU6cMSj3r3mzAYp/kqn1BMmU0ucGRrcP9PCXtweI4VtXqXUj5b3kZEPP8V96uagOY0lQbeovIwHKnXyZA+Hc5qPuqUPC5jxenZTUs1bcSAhpc4k2XdqfcBxbHXepJIhdNWb81LnbQZP2n/nsb1zt3wihoKb9IsEYzWOktY1T7N2/awp7Gy0XhR89mRAKRHx4MWjcEWTXiewgfH+obmQYmJFqdLBUP5kH/+Ar7Af6dXQmLgziTYLEESpo4A9Q5bIeZ2ZCQDe+bdfGHmJIqEEbNJgH/CdMu/8VGE+xtA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 LV2PR12MB5989.namprd12.prod.outlook.com (2603:10b6:408:171::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Mon, 6 Apr
 2026 18:56:36 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 6 Apr 2026
 18:56:36 +0000
Message-ID: <4bbba516-7e89-40a0-ad5f-c3c7c03a4b51@nvidia.com>
Date: Mon, 6 Apr 2026 14:56:33 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 02/21] gpu: nova-core: gsp: Extract usable FB region
 from GSP
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
 <20260331212048.2229260-3-joelagnelf@nvidia.com>
 <DHHOCGNIYDW3.1P7YIMVLW93IY@nvidia.com>
 <d6fe3e40-0310-4b90-ac8c-8beeec886f90@nvidia.com>
 <DHIFMDLKTUSR.14QI5EHNMK18I@nvidia.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHIFMDLKTUSR.14QI5EHNMK18I@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN0PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:208:52d::11) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|LV2PR12MB5989:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f3732bd-7282-425a-9aeb-08de940e3a4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 57eMG5KTWnE1KFbN/SGxyVajPGStJcWpqMmqzlrXWDIjUP5HswnRXZn0/16F9U6knDx/vlL6xnJxANLgiznWZGBk43GzoMW/I5zjxGeELbxb7O8cWHjNWthb1m3g/UGBb4XnQ6GyRphQxq/HMbVwVFDPBmPbQHAEHVwvyBmujB776A1UuO/amwZNuiHvdjeK4zw4bp/Ys8VWBuV3yMkMQN4f9uvx4ffKhmxrTJa+xCQGEOOcDDLKpdK/D8c4rbWouo4joXJzH9yazbgWWadQmQBZxtRGvT0oQEomBHiSDix5H115l7Xi91POiJOW+jTvHuA4PDAiRJAeX8ZbLsTBiXco5MiOP0LIqQhWdyGcn+u5sUZJQaKqzbcYT5ytNLk7NROtdbEBM47ggijXKscfWHqGq+qMHNdCrniCd+/+b5EQHB4wF0ejbIoRK1YQNnSrj8x1JUqhYAcJOUBsqgtjMY7U0UBSYPreoEVdgnAM9eDnNQdSYUsfbjEmZIN1GhPBc2ouJCqh0rPCoNQ5+Dr0vcaM5RdIt60aYwrWJSciUqm1E1gLo0dubELeZweXjucFZdPi7OX6XrTinM8xSE01/LVSVs1gge2OvlPTX8zyQZOWtTkX+UJa0Ks9jL0rM1gQF0oDe8WYstU3X1sac7xCGqIDq2crbGmTWG0uXrku+S6y1wxV/voBAzDAzPI0CsQVotBKwNQApZjWRmsgt4qSOld9aM+Az1OK9ozIkz/Zi64=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTBFaHpOZHJoYmxyZEhYQUUxVVUydDlZT2JIZmM2cS8vK1hNeXk2dlFIZ3Zq?=
 =?utf-8?B?VjV4dXZhTVBZUWhUTlA2N1EwSmIvVHNjRXlQaUNIa2xmOU5pcjNWL0pXYWhh?=
 =?utf-8?B?U0lEaXd2WEUySStFYUJ0N0l5cTEySFBDQ0NqNVJoODZQRjR1aFN6MXJzTXlY?=
 =?utf-8?B?dGUzS2xmWGhZcWpnQXFKRmNyclBmUzU4dUg4TGFTaWcrYWxpbitEaWJjd2x2?=
 =?utf-8?B?NzNnVHA1b2xHcjRlNnM2ZVhqVzI0WG9lV1RCdFVpTDhsVG93UnJLT2VUK3gr?=
 =?utf-8?B?N05MN3VuQ25BOGJ2VzR3c1RLaXBzWFp1anQ1MUhwKzFwc2lYeEJxSENiSklu?=
 =?utf-8?B?eVlna2JYbHJGRS9aRFQ1M2hnWlRoWGxpWXY3UDcyYUtKYmh6RHhFbHEzYUQz?=
 =?utf-8?B?M0dXZ3lNUFdzcFM1TTd1VCsyZENGOU9YQ0IxbUpJN1JXNlNLek83ckVpRTdY?=
 =?utf-8?B?VXhWL2RoRjF2MWF2TTZ4ZEVzL2J4Z1M0cUNyYW9iOURWSUFxMk5xV1JtRXc3?=
 =?utf-8?B?dDZEb2lhM044WXk5MGhCL1RLZE5LVG9sYlFrcFlpZi9pUVpiMHlyRURQaXpW?=
 =?utf-8?B?Z2YrNEY5ZlptM2lJN0xibTF6aDZEaHY5RXlQaFNwUzNpZ0hqN3FRTy9nVmND?=
 =?utf-8?B?UWN4L3JaV2p0Ym9PSi9zOWY0aGc4YjhVNFU1MU15UkZmTHpVZUhBWDdBQmpM?=
 =?utf-8?B?d01vbEx5OERQN01SdWVCT1NSUmhtVWNoVHFoeVpWSVQ2RXVrSjJjUE5oSVhs?=
 =?utf-8?B?bVBJTzRibC95cEtaSi92TktVTXBnVERGZVBCdzBQd2t5bnhXbUNZYU9OM3pJ?=
 =?utf-8?B?QVdxUDk0UWRRVjFSN3hTdDR6aW9yRlpvNStZeWtvWGN1ZFA3V1dGRG5BNU1o?=
 =?utf-8?B?eFZMMXRmMGtBMEtJLzM3VnR0dCt3YUUvZ3dPc3ovQkpLT0Q2RlRXUzZ5V1A5?=
 =?utf-8?B?amIyU2owZFpaSXNvMjFSS2R1SlhpS3FrRXQ1amRZTVNBRmdjK1pHQXJDUXo2?=
 =?utf-8?B?VHZMVGZwL3J5ZDMrWmVSL2hhUDJvMEVIV0NjYUtQSW1BMzJkbktaMnU5RG9p?=
 =?utf-8?B?VFhYUTJJV2xPYXVkS3Y2aGVCcGt6V2JrUXhONzFvTGl0RkQ4R1NmRW1ZVmt4?=
 =?utf-8?B?TnoxMzliMWh5dnErdTJFdDdnMDRhcnJKQUVHTTVFM2ZVV29uWFpweGlpL0hh?=
 =?utf-8?B?WUFrZkpKWU1KeWNodWNrRHI5MFl5T0gwbStiN0Y3ZkNDUmN0dzZmV0RBVXJj?=
 =?utf-8?B?bTVJaW1PUjQ3UjZ6Zlc5UlBNN1BJVmN2SEh5aWVVbDFTMlNHeURWN1hidyt5?=
 =?utf-8?B?dEUyMFNtOFQ4ZjBScW13TTA2S0pab29MeDFDVmNjYWJGQ3dtTWFCZjBGVUJm?=
 =?utf-8?B?WmEwTUNFeG02ZHBTL3p5WWJFWVhmYXErTDlwdENBUkRHdjUrNHRQWVk4OWh0?=
 =?utf-8?B?R2lvVzNkc2g0ejVuUlhMWjIzVXVOZ1NlV2gyYTk2TVEycVZFUGh6Wlhad05u?=
 =?utf-8?B?b0xhd2diT2tGTjk2WEJxQ0Fxc2ZwWm1TWlYrS2JuY0FKbUMxZG10ZDJaSUQz?=
 =?utf-8?B?MnEvL0hVaXlLaXZiL3ZWZm05SUgraDhEeXp2K2lPQ0tsUkhYRlZWZE5pQTZW?=
 =?utf-8?B?MlBBYk9vMGVCdHpQY2F6ODNlK3N6TEk2L0QzaXljU00xU21Sa2IwbmlCUndw?=
 =?utf-8?B?YTdSa0o2a2xSQW8veERYVCs1d29mejdoNklTR0d6R0poQ1BuSXk4ZVVtcDdu?=
 =?utf-8?B?bWFqMWpOcG5FNWhFM21XeUhSbFFqQXdOemRTcmswWit1TVdKdmRna2lxSEpy?=
 =?utf-8?B?MnNCeENlNVppOEtjUWU0OW00N1RwUWZoNjVxcUNPZDdZYjdjUk52eXhMMGhZ?=
 =?utf-8?B?cVhMbHJBYXJUZHRYZjBkSnBPT1JDK1FWZWtIOTRRSHJOSko4ZmVpNG5HMmdv?=
 =?utf-8?B?TkU5U3FUL0gzbEptczRjd0RHOW9BS3hsNjlVcG1mcHpFd3Blcmd3UTc0Q09a?=
 =?utf-8?B?clljWUZlc1djWXdWcmFKMTBleERLbXlyOS9ldWY4MktvVkxwWW5NK1lob2g0?=
 =?utf-8?B?WnpqZjFBYlBVeGprd0NaZ3JQS2JESDhhaVFCV3AwK0tFclQ5NWZzMHhUZExK?=
 =?utf-8?B?TS8ycENORFRxY0pQSDUrZUtmbG82U3RtM25LKzk5ZEtiWjllbmlzalEzMlZW?=
 =?utf-8?B?Z3F1UHU2WmJHVWllcnMrTnd2Mk1rc2l2MiswQ0VYN1VnRDU0a284eWJzdmt4?=
 =?utf-8?B?ZmdBUTV5Zlp6UGUydmNJRlVnYlRmaElUcUcrZDBjSHNxZzE3aU1QMkttT2Vi?=
 =?utf-8?B?dU8zWWN3elFsR3lCc0lQUml0enZRRTJiZnErbGNNSno3cDI4ZjZSUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f3732bd-7282-425a-9aeb-08de940e3a4c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 18:56:36.3553 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2sXsGsyaBJvhYMra8C/Jyh8ecZR9zG6lr3ClFnT1ynCzj8n/C9EUFZMsvBcJGGgGzWF3yfQtxCXazMAO/CWuPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB5989
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 91FE33A66C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/2/2026 1:49 AM, Eliot Courtney wrote:
> On Thu Apr 2, 2026 at 8:24 AM JST, Joel Fernandes wrote:
>>
>>
>> On 4/1/2026 4:27 AM, Eliot Courtney wrote:
>>> On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
>>>> Add first_usable_fb_region() to GspStaticConfigInfo to extract the first
>>>> usable FB region from GSP's fbRegionInfoParams. Usable regions are those
>>>> that are not reserved or protected.
>>>>
>>>> The extracted region is stored in GetGspStaticInfoReply and exposed as
>>>> usable_fb_region field for use by the memory subsystem.
>>>>
>>>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>>>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>>>> ---
>>>
>>> Please see my feedback from v9[1] which still applies.
>>>
>>> [1]: https://lore.kernel.org/all/DH1GK30TUB4V.2GR6ANXIZDFFQ@nvidia.com/
>>
>> Yeah, I am seeing it now. Amidst making the earlier 7.1 merge window for
>> the DRM buddy and earlier patches in the series, I missed this. They seem
>> to be simple nits and I will address them in the next revision. thanks,
>>
>> --
>> Joel Fernandes
> 
> No worries. Sorry I have not gotten to more of the patches yet. Trying
> to get through some more now. Thanks!
So far all the comments have been good ones, so thanks. ;-)


--
Joel Fernandes

