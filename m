Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4ADELRWquGkthAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 02:10:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAFA2A2780
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 02:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814DE10E3DF;
	Tue, 17 Mar 2026 01:10:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="QTJsDxe2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11012046.outbound.protection.outlook.com
 [40.93.195.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E75310E3CA;
 Tue, 17 Mar 2026 01:10:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lfkE/RHrRPp4LT0kmIlnYH4mbnGLOLhMffXqXUKILGPqk8E6A/y5sCITFcMZ6Vzy+2ktIh+VGVBqwYT1o+Yky3HQCB6f3usVZPDVOkatA8dv+kHtU4j+igqfLd1l0UnRdPaKayF+4SFmqqmFfnZ22r+wWPEBILbFFNh00ZwVb98+DzAhxwGpQ9NEKn39T0OD/79IZo/fYApLVYdPoCTVxGTyoXaf2SBnH/F8MzXCCvc9zcblFPOXcH69oxL67xmCATc1WtxJ72Lk69YElJYUEyWDxdx8P8osqOEX1UmBj6bCXJKnyyD+ztTCiC26NAVVfAnT09Vvwt5cuDogqUud7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RsHxtcLLXcoEW9WsuZvGRNic8F4GVmE57YXI+iNAHWU=;
 b=YSh7jbPV9MdPdNSOFgi6jNPL5F8SoPJLThMGjcdKvJntoA06e8X9PHjrqAYR+v24zI1lQenGoL9SO+b0Wwo7jzpCYT8eBoXMa3zaEY575RmVdyekCLT+x+Ew6JudWUKKEPhayDTRQJ8+wN9dkCIoN2wNOpSkj8ZvNGKPCurYD6Lpy8DaiPBJuuua97TxNzACMKTdTw266XD2MmITT/N8ASRj6GNlghf3a3GpO67QyWuG5HKKpL9XMDQE0F6eccb4GApPAfbOKp3s6CPf5B/DuReQC94/kRGg5Q344j8TB6Xl2MZs81Am/rcRhNeMMqq9kZxprpZQqZo+/d0yLdeeRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RsHxtcLLXcoEW9WsuZvGRNic8F4GVmE57YXI+iNAHWU=;
 b=QTJsDxe2StqAbJ+8SUhj9g9J2eRjjPHJ96nFqMZPW7q5NnaAG1i+zwskF1cm+Uvz0J6XcDbZ/vxG3upoNHfeTqM7xojua2Bk9sL0uuYwloMkbPS4Bx6/mzipDnx2OBlV90yYjwrpLfwj6isrSm0PdEpo7XsgZtl4FiUQZtyieiX8XyUmLw3qnRJ/l2jeZa+W2YphQSDV1QsbS7u3A2kORjE2wpRd5y/DQlk4sEkcRQB+S6mGER4n0Fh+SW1QhcZNLFWkMmpIVn/ufOaTVWoOTDndX+kbWJgYvMqx5g1XY170VEXdCtdrIPvgrPwKTAYiVIu5hEu8pTow9NnHyHMKew==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 DM6PR12MB4297.namprd12.prod.outlook.com (2603:10b6:5:211::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.17; Tue, 17 Mar 2026 01:10:32 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%7]) with mapi id 15.20.9723.016; Tue, 17 Mar 2026
 01:10:32 +0000
Message-ID: <d7e618ce-4e1e-47c7-9633-b36809d33bd7@nvidia.com>
Date: Mon, 16 Mar 2026 18:10:28 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12.1 1/1] rust: gpu: Add GPU buddy allocator bindings
To: Alexandre Courbot <acourbot@nvidia.com>
Cc: Joel Fernandes <joelagnelf@nvidia.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>,
 Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
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
 Boqun Feng <boqun.feng@gmail.com>, Alistair Popple <apopple@nvidia.com>,
 Timur Tabi <ttabi@nvidia.com>, Edwin Peer <epeer@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-2-joelagnelf@nvidia.com>
 <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
 <efc10902-2ee9-4cb3-a4cc-442998eef01a@nvidia.com>
 <DH4NHGJ54F7M.2R42KYTV1700M@nvidia.com>
Content-Language: en-US
From: John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <DH4NHGJ54F7M.2R42KYTV1700M@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0063.namprd07.prod.outlook.com
 (2603:10b6:a03:60::40) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|DM6PR12MB4297:EE_
X-MS-Office365-Filtering-Correlation-Id: 499f232f-f282-42f6-f5df-08de83c1fc8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 7H2mCU+AgzzsnA1d8MbZPoYmLYz5xw5HOky+GN5miYbpdmIUxiTssc5JplzLXcediBTS7AzTpQpAcdF7tJBc5f6jabOSxtz5rPvM4CHPOodgmQKr4ZyV0s3fUfth3XAVlf4N4GDMKwJUp+acOuGZaVYiPq8Ve1kBUxuGECmGphRuFlctIdT06tzqWVpNvPPiMZex2ZJvYMJ56U4HrCNS/g2VGfnsg7dFho1+7CwoZwdErLk/mIJpHO4HAsZIoNvKrchcpkpEVShLycW/eHfDkPv7m2leCwiy2PWC96K24tH3DcJcrz+1U2RFOy4ZwSB655CRgkGBivINvqQSJ30eEGcqmEaCzWs75gsROD9ExMKZBEF8lNwo67NdBi8YwyvuoSRry9RHXpYlDHR54WjxLjAwApE3VRkEzlYUUnIcPGK7oULjSLPDcRyxsrxrHgQ6aQ5MJQAFBAzqwTf/58NuDuDapgwrlKiG+KpwgmUZKLcrvt6nNdxk9Iy1YlflISUc8FHxMhqc2g/Seg1IIfefAETLddrXLgS53y3gzuxT09g/QyV34IHuCEb6bq+h0PYOrB2SPE4VU72z0DVuiBe4vUb3XJPk5l16+XBRjJCejQZ/M0N33EBs5zZwJZAj0707VfGc+S0k/2G7XcqlZxttUuVXOaiklF6kw6Rm+ajaT4SGDe95+PgDwwPnK3uRm0RqlOeFezqij2i1dPPcHD1cax5Gp7S7FiEnvgqdMRUvuVw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PR12MB9416.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUFjSmV4RUNMbUcySm96RmJBcmtSdHZJNWhvangxVGplVkxqSFZVZnZxNzFX?=
 =?utf-8?B?NnE3Yyt3T2R1amdYRFpvczV4ZkErSjJueEtpSDFSaTZxQU9EK21nRVNlK1Z5?=
 =?utf-8?B?WDM0U203T29oQmlkbmdOL2dXLzFFZ0FPdzBTV0JXS0U3TUF3a01Qbkc1WjM3?=
 =?utf-8?B?VTEzWjFDT0JQVzJXa2kzS3djYVdkYnFNbUtxSjJQdzhJT1YwYkF3UmNPbG9v?=
 =?utf-8?B?ajl0bFlQRXZCTzMwWmV0S1VKOG5yL2luVU1FSjJQL0tYdmUzelRxREpZL2pz?=
 =?utf-8?B?VzR4K2NJbDdWYnZDWCtHS0l2S0Z1NzduK0dkNGo0c1g3aHorbStLVVJDbXFI?=
 =?utf-8?B?Uk1YU2xObDdZNDA1ZXI5cEllS29kb1RwMWZheW1mQ1d1L3RQcU12Q2xZTTV1?=
 =?utf-8?B?TUlHaHJjbnRKTmpJRWhJeWRGaHNucmFlN2NTZ1UxdjZrMjUyS3o1eENWNS94?=
 =?utf-8?B?TS9OaTFpeVZSWTJaSi95ajJ0cDlmRENvZ3FSNFoxemt0SEZnQUYwNUlFNWxK?=
 =?utf-8?B?Ri85bE9PcGhYZ215R3lmNkRhSEh5M3hTTHdXenM3ZGsvcEFwLzZneUVUSkRh?=
 =?utf-8?B?NUV2czNzUlVwOHArbXpUWnlrdjlZWjZGSzR4SWhqRW56OE1oc0I2OFNFTkM0?=
 =?utf-8?B?ajBHUkNEeStxdWd1ZzN4cnhLcmhaaWw4Vmx6SUNEakZRUEZzcHhmbEt2QUZD?=
 =?utf-8?B?NEs2RzVaSG90dXZTZnY2R3FWU3ZGaHlBbDZENllTMjluaUNCV0ZaK3ZaU0Vj?=
 =?utf-8?B?K0xKN25nMy83blJrWUM4bEpMcnlpdlJ4WkprTnljb2x0cm9kczQzRHBHOVJk?=
 =?utf-8?B?QmZZSWREanNYb3JPcEoyK1hzTlNRdWlPTWIwa3NmK1ROTlF5WEl1ZGloWm5E?=
 =?utf-8?B?eC9sSFJxMWMzbzVlYWpZUHVsdGRFQ3FFM3ZaeFNaL3F4WHlzMnRnRCt6Ti9t?=
 =?utf-8?B?RDNsc04yMHl5ZVdHMjFWRFBjZ2ZtYWplZW5oWDQ4VXkxbUlaNU9NUmpmUFJp?=
 =?utf-8?B?Z3hXbjA5NFg4SW02R09DU08vOGhheFg5US9neXo3cU1pS0RmWmFXay9rL0lH?=
 =?utf-8?B?MzVudXoxN3JPTXN6azA4QkRpTXYzQitPUHFyNTRQeTdrWEJ5dW51d0NZWUYv?=
 =?utf-8?B?WnhzKzlzc2I0UHIrTFFhWWsrWFJ3NU1vUFg5UG4wVUY0OW9lcXBKWk4rMXVG?=
 =?utf-8?B?aXZrd0lVUTF6RUdObld4dDBUb0xYd0FuZFJITmpkbkVKcS9vemhBMnJpTmEz?=
 =?utf-8?B?ZnN0NHlEWUVPbmVoTEszc2NaWGJ6N1RkTTRGREFJd1MweWc0WDgySWVzK3FX?=
 =?utf-8?B?U2NkS01IOWdCK3VlOEFpVW9aOGszcVFlSHkzTnc2QUo4YlRjMlVXUm1LbTVa?=
 =?utf-8?B?MWx3V1FFZURxR1pqV2JOZ0VQc0ZGV21JVW1zOGgrUlUyb1prUjZBZWNmN3NL?=
 =?utf-8?B?ay96RUMxck5oYWdsaXhha3piYkQ0TDZCeHpPcWp6eHd2RE1jRjNJaFBiWUNR?=
 =?utf-8?B?Z3VmSHJTZHc4dTFzd3JTQmc5dGVScU50ZDYweFZJVkFXbEpXZkpDaUhWVkZm?=
 =?utf-8?B?RElZRXY4dnl0RTJoajZpdXIvSENKdTYxOVNERDRQRkw3TjFBMGpyT09HRVp1?=
 =?utf-8?B?V0pabVNaUGZ5d0kwVXRwKzFXRzlIZm9PUHVpc2NQUUpEclpVZHc0TWZRQVY0?=
 =?utf-8?B?dUN3bldobDAvN1paZzJNc1kxZUI5aVcyd2ZDYlFOZTh5ZlNIb1dVM0VoYk05?=
 =?utf-8?B?NHRXZ0RqOTlrcGR2K1htYjBxWUo3VkpIYlluNmpyek1DYnhvUERieTlpNGJS?=
 =?utf-8?B?bUxDSTVReml5aVlIekVxamNUOU9XNU0vdkZPb0ZLMHIvSWhiUjh4OWJiQVZl?=
 =?utf-8?B?dmZ1N2pTSXI2ejQ4UjJQSHEyeTRrMjZlL3hqbEp4Y1UreEpPd2tCdDUxK1kx?=
 =?utf-8?B?Wk4vWjZYY0hoOHkzNEpwbVJHcE5xMVM2NCtlenY4bmNWS0lGaHdEOFRGanRi?=
 =?utf-8?B?ZEZEWW9zRnhvMmhGcWRmSFhRd1EwSTBBd0pCTnVFVVAzZFdlUStPS043TUhs?=
 =?utf-8?B?R0djdVp4MEEzNzdoN2JRZjEwZThucFFwS0djdVdFeFhpeGJqeHRxZy9yQnps?=
 =?utf-8?B?RjBFTHMvbWMxdmwzRk8wTENWOElnY2tydmdLTjRNcGxEQUJKeXRBNGRYM24w?=
 =?utf-8?B?YWN1M0lIWUYvNkZIVStEVFUwTXNQT0tVWmtNR0wyY3BCa0RTZGRIZlpldjFG?=
 =?utf-8?B?ZTJ0bDFSZnRXQmNzZVUyMUIrZi9GU0tWVEVCcGk3dVNWWVZVVUhXQlBDaTda?=
 =?utf-8?B?L1VaNmp6RmZVNDlKd080RnlYSmtoMkgrRkgybXZnMGczRWpoTDYwZz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 499f232f-f282-42f6-f5df-08de83c1fc8f
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 01:10:32.5619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4nLE+C42pHK9aY4VubJx8EAptU1hEdQoBmR4owVAkvX0pMzsTnIz3XBOR2SqbxRQpmgpaYPJU1lXqqGu13+Xnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4297
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
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[jhubbard@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 1DAFA2A2780
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 6:02 PM, Alexandre Courbot wrote:
> On Tue Mar 17, 2026 at 3:51 AM JST, John Hubbard wrote:
>> On 3/16/26 6:12 AM, Alexandre Courbot wrote:
>>> On Mon Mar 9, 2026 at 10:53 PM JST, Joel Fernandes wrote:
>> ...
>>> I'm a bit torn as to whether we should use a `u64` to conform with the C
>>> API, but doing so would mean we cannot use an `Alignment`...
>>
>> Alex, have you seen my Alignment patch [1], for that? It's sitting 
>> around with only Miguel having responded, but seems like exactly
>> what you're talking about here.
> 
> Not exactly - this patch provides a shortcut for creating an Alignment
> from a u64, but it doesn't allow to store alignments larger than 4GB on
> a 32-bit architecture since the value itself is still stored as a `usize`.
> 
> But that's really a theoretical worry of mine anyway - nobody will ever
> work with buffers larger than 4GB on a 32-bit arch to begin with.

Actually, in the CPU world, this claim was made early and often, but
turned out to be wildly wrong! That's why we have "high mem" in
linux-mm (a constant source of suffering for kernel devs).

The 32-bit systems designer do not feel constrained to keep their
memory sizes below that which they can directly address. :)


thanks,
-- 
John Hubbard

