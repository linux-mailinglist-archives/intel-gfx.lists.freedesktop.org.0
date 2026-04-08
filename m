Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAKZHkGJ1mmwFwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 18:58:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69703BF33D
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 18:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A610C10E6AC;
	Wed,  8 Apr 2026 16:58:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="B9y1wsa4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SA9PR02CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11013008.outbound.protection.outlook.com
 [40.93.196.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 569AD10E6AC;
 Wed,  8 Apr 2026 16:58:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qy+QCg/qgwgtJQ5F8wCu84UCeeig0KiTykG8A69+9Ly14S2zi67k0+Ni8qrubae9paP/FRWO5WaaQcLJqnZTBveX3infXHvMH0aUFZNUJBMsU2a/TnSC08hc64aG8uMgd+eD0c3Pwtxu/f8JDbvzMI9+Ppw1/ahziveniXOFYv1u6hAySgueI0Eu1+wIh4qL72qpsXbuVd+E4F1p4TKtIVY30ejgLvAcCf9kOkpqjd51fD8z87VYD0yhujvCpfbfsgHfAIKo9GtHiaAqvHPWkYGUzALxiNt6Q/3mBs3IxBCv2h+LUfdQ4nW/9imy30AG6A2dIHFe3q/AF2LZeNklbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B4UIIFe7hnORmJdJe/nlxBQbnnmr/iopnsTSASGFnCk=;
 b=yHNidUmRwd8PzP8XS5hYmA1fAzo7eAxNrB325ip4Q+OVzjPDdgE2+wIhvjD8ZRCkIs7E7v9FSWkW8EZTmfJuKwH4KFKtBs5tBgxIQJV8LYR/MiK/0sDTWMH3/zcSYpl3/fjTL7qwRracOEqj/Byjq2wAo6i6HsolVNbmF6rNoXK5ulSqWNmDVJU7BnbTxI9+3vpwkMmf739guHLfUoTGax7hsQN3c1fl2Q8Tk1bVe1y7My+oE2JIjlaBVyyhCmMt4ymSQSER6ELg89+BGxZjm2FuZ1+UxAxhIMG4Q3I5/XqHabVkprZCdii0F3eHz/HXrO/tvSU6P1Zr5dl3kTq/Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4UIIFe7hnORmJdJe/nlxBQbnnmr/iopnsTSASGFnCk=;
 b=B9y1wsa4xxOKB0PRVwULxSkEuu0wPoey852Ea8fINBN3UHssCvjd/dlBMVb7xOtE1URcnmKNh7hNTDiP7VEAFitrCg2DA/tRHnC0Y3eFfq80lBrpi7SEsVW8rUATA6ZuWQSkFC+Z2kopv8OUyge8SNPO/PPdDiFatoHcp6aMtS58crGbZtFfXTxmyCpW5vAYGLDn4v+FAw0u4IkF2zMUujJ4v+BdpGMhG83WTNmteEA8xawgoJrmPyVzJ52oTlMA5+fPZ86cda5zm5bpBVVALtq15+vbtMhu/zrucb5UdZGU872XlfEbngsKdXnZRHi6hWHorMDE7Wdtz4kcu4jGUA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB8233.namprd12.prod.outlook.com (2603:10b6:610:129::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 16:58:24 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Wed, 8 Apr 2026
 16:58:24 +0000
Message-ID: <da8d03f8-0294-417b-b684-2c20d577f94a@nvidia.com>
Date: Wed, 8 Apr 2026 12:58:18 -0400
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
 <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
 <DHMYSTLVHIFJ.A2BDMPVNZNLS@nvidia.com>
 <537a8c5a-3885-4c47-99f6-963b48ddf87d@nvidia.com>
 <DHNT32C2Q5HN.LLME0RV17Z8V@nvidia.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHNT32C2Q5HN.LLME0RV17Z8V@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CYXPR03CA0086.namprd03.prod.outlook.com
 (2603:10b6:930:d3::29) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB8233:EE_
X-MS-Office365-Filtering-Correlation-Id: e9a4b664-2289-45e0-e0ba-08de95900be3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 7ULpv9Luii9kOK1rkAzJfD6Sh2yrVMFunSPJ7jzwSLOKIo1L0+674iHAxQnmpabtirQud6wTHcc4D01+/OOvT5KmK3TXV2DztbWtPtVVIXdrKcusPsg2iHv64WmvVKhWMGjCYkdj2M/XAoVoT9dWNIzTpZt2+U0reMjwnNDxZbF7e2c4TAncsbQFRPBtIQnOY5UdrwLb7cYYnJy7MH7bQL69AizfDiEqWgg4CaASGWpmz62n/jwwQ65g5cFtwFIf/TjGtqm3svXPgNUczFdn5j2QplVWWN0cjU61hEAdtUmNQE9ednWEnY67DtmShXFDG7dAqklVCMan4GltNCH5669qxg2QSu0+xvHLuaPCULG0shewVkRolhsuuu+UCuMKv9Mf68w19llW4oQ0B/A9JXCxYh1BYfgf+itVIhXIXq/Mt0Wlcemg3VQrfZzGB3+lkP2l3cRMIiEL8rsrqPZjyxFxyKT0QzSYdOMHFzHiB95jjvxfUjKiRHBMICvk8/w1C8rjN7nWqzvsd8Cv1f8RsSqcpOtdjmhmxSld1ngBeHO0sWr/iktC6QBKjwEDwc8YeDZl0c9KFga+c4URA1GE+hz3wEWbYKfR0Jhpee3CsQZbKox9W0S2a23Vg263HlGgLlh7kJr7GEc0VEQC8SreeyyaKTtpcoK74ZcgvBpP+e+kzVZn8JTjyVqk7B8ax61Tn+BxNhUz7ktXNuBgkwdpatVznhB5zTWoxxpdDCstL9U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWEvVzg1QzZiQUEvalF3WGlTeHlaUTJSSCtaN0s3SnhCbXc5ZW5GckZkeWt0?=
 =?utf-8?B?ZkIyeUFQdVRocUxNQ3g2bGNSRWo1VEd6NXpGWmRKSGI2RkJ5R1h5NUpPRW5H?=
 =?utf-8?B?NXV0UUtaRGtWaEZrNm82NEt4dUF1ZVlYeTg1N1Rpa01FbDVNdlMwQ0liVG9q?=
 =?utf-8?B?UDdpTFY2a3VZNFVERnB5ZWcrRUdXWXFLalZRYWowQzhqOHhQS0pTV1NTQ3NM?=
 =?utf-8?B?OEpyZnh2RHgvTElMaGcyOFdEUEl1bjh5Q2pacTBxU0hLaUZzTTVVVGROVjFD?=
 =?utf-8?B?S3BIWkpNelA3bzRTS2o2UVlwdTV3amdrcjd3M1lXN0tkdDVCZUkyMjFmeHdm?=
 =?utf-8?B?eGZRQlhPT3F0WnMrZGo5NnZrYXVPUjQ4UVhuYzE1S1EyTDBuTFZ5MDNPOG1z?=
 =?utf-8?B?bzBnMUc4NEZPNUxQK0F3OWhRZ0N4NFVJL3FtNDdreER2NFZtdzVBTWttelZB?=
 =?utf-8?B?ejJOMm9tdllpTk15TzJld0tMZ2FyUkN4VHgwaUtubzhBeTlGeFl6M2NJa2JO?=
 =?utf-8?B?QW40YzVDdFJSUHVsajRkbHM1a2tqVjFXdFEyZGc1dG5KOU8za1dqSzhqK3Fy?=
 =?utf-8?B?ZlhWTUcyVEtiZmxNQ0hPT0ZjN0JaUTBjK1ljZTF0WC9DQnV4SGVJaFlBKzll?=
 =?utf-8?B?QjJlK2lrL2NsWGg0MHFSVnJvOWw2QWdNeEVGSFFXM1hEWVFBZlVYd1kyeFdR?=
 =?utf-8?B?dnkyYjV1TkUxSFF6Z1Vja2dkLzczWjIvTERpaEtjaThJcDM3UU1tZVVtcEgy?=
 =?utf-8?B?SDVIQ0ZSN2tsb1FReFlueXpOY3NkZFFNUHZ2czBGUlZTeXJURWtkQ3ZqY09t?=
 =?utf-8?B?cmdQVE1sRXIxaGJVOVVIZW9VeEYyeGJmMWlMdGR3VVFnV0RNbkJmbi9idTNi?=
 =?utf-8?B?dVp5OVp0Mll0Wm5adDRhUTdRY2kxSDBlTzlDM1g4OE5DU0dqTmVtN2J3QjJp?=
 =?utf-8?B?eE9nUkl2STlPd3o4YVhURkFHWVdSdlFMK0xzbHZsMldFY3psSUFLZW1nWHU3?=
 =?utf-8?B?UEhHNUUrVlB1MmQvWlIvVVZsTy8vWmlNbHRrWFN1d2pSanpDblVkMGxweVJJ?=
 =?utf-8?B?VEFURWJNM1RVU0VscGpQQVFoN0Znck52WktRcThrV0FMQUhpdStlcnFVR3Ru?=
 =?utf-8?B?N3NWTFVJcUt5Zngvd3k1b0xhSG40MDZNWU42SEFacFRMNVVkeEdHS0RVMDNI?=
 =?utf-8?B?OXFsQkFZeEVuWTNXcEppMmphQllWQjRZOFZtanoyK1A0REliSm5Bc21Za2lL?=
 =?utf-8?B?WkhucThuK3lvVTJTK0RSNFVqcDdmNWdndnIwNlJqNjY5RTFWZWI3bVlFSmxn?=
 =?utf-8?B?YkV5bXhIQWFjdmkxenZlM1pWUFVpVHhHZUZ5eE5aSGgxVWtZaDRaZW1BQit1?=
 =?utf-8?B?dkZwR1U1VlVNQmppcWlVWk1MTmk5S3pNRTYzVVhsWHRZc0N2VnFtalNFb2VN?=
 =?utf-8?B?dkgycFNzblpWUkMyUWliTnE0MDN0a3MrZU5iOVYvM1ZlT3ZFMWc3UmFRdGtp?=
 =?utf-8?B?ODRhb1dEclE3aTlOTDJSWSsveCtkaXo0cEFoRm9JWVZ3NUU1MjlpR2srUXdG?=
 =?utf-8?B?STB6TUFZVjUwSkNZSXhSbUxQekdOSDczYmtMM2dZYVkyNzlpVi9nTTZjY0l6?=
 =?utf-8?B?c0VzKzg3aVYyaWR0VGovOXZxeGRsWWZXbURsVjlDNHRqbjlOMmJlbjEvODZ2?=
 =?utf-8?B?Zm5DaXBBL0dzOXBYMFRwZFFTWndzaC8vWXJUUkdpNlMvdFlBSFVobWI3YkUy?=
 =?utf-8?B?TFZQOW9jb25nRDhQdmpuK2IyWXRITktHWEJQczhjWmtVYmtEYkNtL3RPL3F6?=
 =?utf-8?B?RCttTXBucEZIZ2tOVnoydllSaS9mWDNDQW9ISmMybnFNS0EveVAxRXZuS0NE?=
 =?utf-8?B?K1ViZHFicGtPc295UERnaW9SMDErTStadUQyM0RLQU5ZWnN3bXF4cCtoTFdp?=
 =?utf-8?B?NHBDWEdCamFNQ1NKNU1la1RkUDU5OEdLYzd6UjVqRnlLSGdQRW5La0J1b2R0?=
 =?utf-8?B?dm9rOGY3VHFoZjU2STJBWDVOaHd4SkgzcU1PSlBUc2lMMXVrYmpuZjRUNDd1?=
 =?utf-8?B?TGdJVllBQ2RrdFQ3K3RIcWpCQmMzTEhuQTM3VVFaRUU3WXhVUjJMVTNuYUMx?=
 =?utf-8?B?TnR2YWtFUnpKdGFLNE83bVhUNjZHc25mdXU2SVVxcm1VcG5tQis3VkpHSGRm?=
 =?utf-8?B?OTgveUUyWkVMa2JJTWl6NncwYitITGFTK1ozRHpFWWN2ZXVaNFIxUGp5Rktx?=
 =?utf-8?B?SVlwT2VZUzE5OS9DdFNwZkdHTmVWYXZ6SGlhcFRjMDlVb2tyTWkzRVpDMlUy?=
 =?utf-8?B?OUlZVTFwNkkvVzR6TmFnVzd1NzFqeVFTdXlLcnExM3p6Wk8wU1IxQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9a4b664-2289-45e0-e0ba-08de95900be3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 16:58:24.2839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mNCF8VH6Bg823LaNqROh1eXZQ2G8Uxa81wu5UBFXK5odJD8lVbUvvz0AUDNvmpFKb5lbK6elBBRoHRF0ta+W7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8233
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D69703BF33D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Eliot,

On 4/8/2026 9:26 AM, Eliot Courtney wrote:
> On Tue Apr 7, 2026 at 10:59 PM JST, Joel Fernandes wrote:
>> Hi Eliot,
>>
>> On 4/7/2026 9:42 AM, Eliot Courtney wrote:
>>> On Tue Apr 7, 2026 at 6:55 AM JST, Joel Fernandes wrote:
>>>>>> +    /// Compute upper bound on page table pages needed for `num_virt_pages`.
>>>>>> +    ///
>>>>>> +    /// Walks from PTE level up through PDE levels, accumulating the tree.
>>>>>> +    pub(crate) fn pt_pages_upper_bound(&self, num_virt_pages: usize) -> usize {
>>>>>> +        let mut total = 0;
>>>>>> +
>>>>>> +        // PTE pages at the leaf level.
>>>>>> +        let pte_epp = self.entries_per_page(self.pte_level());
>>>>>> +        let mut pages_at_level = num_virt_pages.div_ceil(pte_epp);
>>>>>> +        total += pages_at_level;
>>>>>> +
>>>>>> +        // Walk PDE levels bottom-up (reverse of pde_levels()).
>>>>>> +        for &level in self.pde_levels().iter().rev() {
>>>>>> +            let epp = self.entries_per_page(level);
>>>>>> +
>>>>>> +            // How many pages at this level do we need to point to
>>>>>> +            // the previous pages_at_level?
>>>>>> +            pages_at_level = pages_at_level.div_ceil(epp);
>>>>>> +            total += pages_at_level;
>>>>>> +        }
>>>>>> +
>>>>>> +        total
>>>>>> +    }
>>>>>> +}
>>>>>> +
>>>>>
>>>>> We have a lot of matches on the MMU version here (and below in Pte, Pde,
>>>>> DualPde). What about making MmuVersion into a trait (e.g. Mmu) with
>>>>> associated types for Pte, Pde, DualPde which can implement traits
>>>>> defining their common operations too?
>>>>
>>>> I coded this up and it did not look pretty, there's not much LOC savings and the
>>>> code becomes harder to read because of parametrization of several functions. Also:
>>>
>>> Thanks for looking into it. Sorry to be a bother, but would you have a
>>> branch around with the code? I'm curious what didn't look good about it.
>>
>> Sorry but I already mentioned that above, the parameterizing of dozens of
>> function call sites, 3-4 new traits (because each struct like
>> Pte/Pde/DualPde etc each need their own trait which different MMU versions
>> implement) etc. The code because hard to read and readability is the top
>> critical criteria for me - I am personally strictly against "Lets use shiny
>> features in language at the cost of making code unreadable". Because that
>> translates into bugs and nightmare for maintainability.
>>
>> I don't have the code at the moment, but if you still want to spend on time
>> on this direction, feel free to share a tree. I am happy to take a look.
> 
> I had a go at this, you can see the branch here [1] - it might not be
> perfect, but I think the shape is directionally good. It's structured so
> the HEAD commit has the diff from the current approach to the
> parametrised approach. The main decision is where to do the type
> erasure, I chose in `Vmm` since it looks like the main top level API for
> this code, but could do `BarUser` instead. I think it's overall better.
> I also think Alex's point about associated types making it easier to use
> the appropriate Bounded type is a good one.
> 
> [1]: https://github.com/Edgeworth/linux/commits/review/nova-mm-v10/
First, thanks for the effort. I looked through this, its pretty much what I
had before when I used traits. I don't think it is better to be honest. In
fact your version is worse, it adds many new types and things like the
following which I did not need before.

To put it mildly, the following suggestion should not be anywhere near my code:

/// Type-erased MMU-specific [`Vmm`] implementations.
enum VmmInner {
    /// `Vmm` implementation for MMU v2.
    V2(VmmImpl<MmuV2>),
    /// `Vmm` implementation for MMU v3.
    V3(VmmImpl<MmuV3>),
}

/// MMU-specific [`Vmm`] implementation.
struct VmmImpl<M: Mmu> {

Seriously, I have to pass on this. :-)

And, you unfortunately seem to have ignored my point about requiring 4 NEW
traits (Mmu, PteOps, PdeOps, DualPdeOps etc), which I did not need before.
So you're making the code much much worse than before actually. We don't
new traits and types pointlessly.

The only positive thing I could take away from your diff is the following
(I thought I had already done that, but I'll double check).

-    fn level_index(&self, level: u64) -> u64 {
+    fn level_index(&self, level: PageTableLevel) -> u64 {

Also you're parametrizing VirtualAddress as well which I did not have before:

-     let va = VirtualAddress::from(vfn);
+     let va = M::va(VirtualAddress::from(vfn));

This is another step back.

> I also think Alex's point about associated types making it easier to use
> the appropriate Bounded type is a good one.

I will reply to Alex thread, separately. I have some good data that should
hopefully convince you and Alex that my approach in this patch is better
(Version struct based dispatch than monomorphization). I would emphasize,
as we all know, that we should make optimizations and changes based on real
data and proper technical arguments so in the spirit of that, I have
collected data with both approaches and I will reply to Alex's email with
all that in there.

Also, the bounded types usage is orthogonal to version-parameterization.
That can be done regardless, we already use bitfield macro in this code and
can use bounded types within that if needed to restrict type creation. So I
don't think we should mix the 2 concepts "bounded types" and
"parameterization".

thanks,

--
Joel Fernandes


