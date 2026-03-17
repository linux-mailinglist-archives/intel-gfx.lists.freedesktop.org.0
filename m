Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAp6N0C1uGmtiAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 02:58:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4972A2B31
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 02:58:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B3510E407;
	Tue, 17 Mar 2026 01:58:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="gNidhsZM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BYAPR05CU005.outbound.protection.outlook.com
 (mail-westusazon11010068.outbound.protection.outlook.com [52.101.85.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 675AE10E407;
 Tue, 17 Mar 2026 01:58:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FUqxFubqcQ+fKj5nW4zC1doouJVGmSQ+ji63RPa5gIc7LWQs4r76rpth47c1tejJMxrYnbCWXSrJcKsUhyj7y+XsreLv3axZOuGR7n8l/ZqQTcnRvClqEVecR7bBZg5o8A6YeRPSv9LJmsuUTlNPjVr1bAlAiJHYtbNDJ/3y1agNGECBFFNB87p1hp1VSAxZ7Rjri36B53H1tu2CpVPvke2RSVfcUsNLJCnBgYl1m7oXHRv6qnHcQjsrG7SZ8X1uELNGcb9kiEqE/rn3J9qf9W/K3H3nwVtiIcnjLqbR+qSj8pLat/IvTHGdK4+aeNy73PCOW4z72ozxeSRTi5kgsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PHcUStEndTFaP7ZEnPa+nUjL+xEC5T7WFlLw66jOQGU=;
 b=WuQXm5CidfbhUmiVxe9s5l+16kE8JzzEJsnSxaQvxjOFUUjxVlJE76/IVTYNNNKieybJyB9zcX4jjYsB/FDhE6CwE+a7yCswIH1FAFR8d0cr+JcuerQNbLrv73T79al9ALTRxgvUBfTTwyGT9hFXTDV8wkTy5o3M5qViipOZzk+EpZasZW7fxrWTsc4mP18yJzkpEI+kxT7uO07ByilmQ6ciSviNrGiQ37o+E83bjhbJGvcJHqJxXaRHFV2h7iyQRTyzpUXP7mO+QaQ8TfQ0If4cDbChyJBave/LjJfdXJgMjPDH8xKC3tcAaWZB7VZgTBb44iXuZXi9tjbLzBEBHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PHcUStEndTFaP7ZEnPa+nUjL+xEC5T7WFlLw66jOQGU=;
 b=gNidhsZMbA3ix3GdCZ162H4KCMaAEAcqkRQSxVYCFvr1tnqeLh4+hCFzDKGDdfN1KkK6cqlWkvspIzZampt+AdZ8hiQsJbwEDvyo0IFqEth0wskXN28VGYSxm3Swl7kE34UHhR96iU+N1B8Tj1moift8zJsQeJ7U4Oz9FVM9LgSa8l6vFUHo18K3t8M4HAgZaCBInQCdJhjF48MSCk1GgkZT3ILmDw4h5hVs3oCxGExDTyT4UAhXUYLofecIrwpI05f3hNCtPHSrKM/QieHagZKn12K9O7WNPNydiBNjvCHjGD8rPQV0vaBBobjDFrjl59858QAqb5j3s00ZV6mUNA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by PH7PR12MB9075.namprd12.prod.outlook.com (2603:10b6:510:2f0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Tue, 17 Mar
 2026 01:58:14 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9723.016; Tue, 17 Mar 2026
 01:58:14 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 17 Mar 2026 10:58:10 +0900
Message-Id: <DH4OO8Y9NQ3E.1QXSL63B225V2@nvidia.com>
Cc: "Joel Fernandes" <joelagnelf@nvidia.com>,
 <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>, "Boqun
 Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>,
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
 "Boqun Feng" <boqun.feng@gmail.com>, "Alistair Popple"
 <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer"
 <epeer@nvidia.com>, "Andrea Righi" <arighi@nvidia.com>, "Andy Ritger"
 <aritger@nvidia.com>, "Zhi Wang" <zhiw@nvidia.com>, "Balbir Singh"
 <balbirs@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, <alexeyi@nvidia.com>, "Eliot Courtney"
 <ecourtney@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v12.1 1/1] rust: gpu: Add GPU buddy allocator bindings
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "John Hubbard" <jhubbard@nvidia.com>
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-2-joelagnelf@nvidia.com>
 <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
 <efc10902-2ee9-4cb3-a4cc-442998eef01a@nvidia.com>
 <DH4NHGJ54F7M.2R42KYTV1700M@nvidia.com>
 <d7e618ce-4e1e-47c7-9633-b36809d33bd7@nvidia.com>
In-Reply-To: <d7e618ce-4e1e-47c7-9633-b36809d33bd7@nvidia.com>
X-ClientProxiedBy: OSTPR01CA0080.jpnprd01.prod.outlook.com
 (2603:1096:604:218::16) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|PH7PR12MB9075:EE_
X-MS-Office365-Filtering-Correlation-Id: ed86cb07-a5d9-426d-17f7-08de83c8a637
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|10070799003|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: eFNq4QJQbOZtrnv686fMdk3XFOyJUcqJRFyykRPXcloS3+KPoQXbsuAOukrVhHEfXJMUBzs3i9QPB6sUkS8oSpuffBcBIku7De2PZn8daVnT9qy5vH7mA+tD77ExTNXjMORoPpX/QG0CrkTfGrj0UJqd213GD8U1H4gXhZirsppC0wMaXHjMySiQ3T1cC+JXZDVj5okfgR6Cbu63wBPe7lN9+0OysACaKLSyyMv5CfpzFmlj0hixUZd/FKdkSPE5clVA+bA52ZzJkhZlyOilpRKAKHyX/401QF1T0GNBWvQklc4W8Kz8BX0fYNPZ8izgtIOQQ16bCq1c8sbdxlhbz9De0IQF+eCL+MrGN3jS/kmbu7v7CMBbD337Tj1DQjfJC36XVNF4LlNStGq+qzHRybyc7u1/v3DImn/pLa7ZTjDPEhOf0GNOsfqJ1xPWSUIoNB97Qe5ZQjALWACYvyFY1Gttya4UG0JGgzEj4knFLeAvXLgRKbc9WPJDvOqDrLEt19Nj5vEBmYtS7M/tPSmyCWLlH3ymysB3E0VhKa60BN3QMB8CzGqDRLx48pi58HSifGtldqdnUHZhc+8hI7QnA7d2zosuAHPxJjTRun0KKvCLvIVs0V65DXgQMWrvE0N0t635bE9AD3PeeDiaFyNqvWcEwLdaQFQPUjJiZVoqcwhyJTON6arR/7NzWxGLFdnNAeXL8s4WoSXs6wutXM1SDp/RtUbxPmIEh4nHc3dHVhw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(10070799003)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnpDS09Ja1JGNEM2dlhkQ3pKQWprMjlNNUlGaXdzNlF0YUN5c05iemMvWjFT?=
 =?utf-8?B?NUNGNVJVSnloZFFzckw0d0NQTDhTanJXcjY5aUI5ZXptZnBPMDFJTXpSaTFY?=
 =?utf-8?B?N2xQeVY3amZ6ZEJqeFpmV1hWSDUvZm9BN0F5akIxS2VOOE1RdHZ4ZVN5a2gy?=
 =?utf-8?B?UC9iTmtvTTdkY2x4c1Q2OHU4WHJ0NC9yZzV0ZHZ6NGVrdisxUHAvM2FFZWd1?=
 =?utf-8?B?Y2Y4MU83RHlrZ1E3SlNGK29NSVlIWUpCUllxMUplaTFaMCsxTVFsMGVyRWh3?=
 =?utf-8?B?T1l4UnI2aWpPMGk1Z1lERGMyZC9qZU80MklKOFAyK0oxc0FDQklEdHVlbUF5?=
 =?utf-8?B?Y3VQWTBkMVNTQmtOSGRGWnZ2M3MxaStLemdEa0VwS0MrK3Y1K1NhNXU4QXE4?=
 =?utf-8?B?QWUxazNDU2JVZHNvMXk5VmI4WkovSU1pY2ZpQ3BTS1A2SzhQVG1VYUU2M2dl?=
 =?utf-8?B?M2xXMEVwRkRCSTVXNExFSm1VbnY2b3I3ZVBaVWhhdkNvTUU0OU8wNTRtSU01?=
 =?utf-8?B?Z1c4RzJWZ3VVNGdaYmhPRkFJNFRTbUdkRkZxekJxSXBtclRCZFl0bndiTE9Q?=
 =?utf-8?B?eW82QW9nZERMb0xmMDhxYmRYNjZtOU41QVVEWnpJYUpZRC8zajcrblhOSC9a?=
 =?utf-8?B?K2lRY05HYVgxL0s3ajRqc0owRVdBTUd4Y29tTlJOYUtKWXpKdHh5VXBVNTN5?=
 =?utf-8?B?YUV0a2c4dG11WnIzUGpwZDFHRXBQUUhxZUtnOXRlV3FuaHpSdTBzSG5lS1pz?=
 =?utf-8?B?QzVIYWh3RWQ5OHJ2M2JLQjJSVnRnQzh2cWlSZFlVcWhJYUxLYnRPZXZwV3dX?=
 =?utf-8?B?Y0pBazEvR1REMUNFeFBQaTI3a2pmWjIwT0c3dGxXRzZBYkswZ1Y5VG54UDRF?=
 =?utf-8?B?anAvc1ZkOGcwTWxqb01sNThXeERRb21ER0VFaDFCbkxQSjFXRmR1bkd6TTEw?=
 =?utf-8?B?bE9CNVB5ZTN5SThickFiNGtzdkU0d2lUcEI0ekVOWDQ1RjNrcHRxQi9aNitp?=
 =?utf-8?B?ejl6aUxGMG5BVGlTb1ZjR094MHNrbWlWaFRFTkFSVE1QbFpyMkxJMU9QR1F1?=
 =?utf-8?B?bWtTZWZHcUl4RFg3VndQcE43dUJZYStMYWkvK1VXeFJ0enBQSWVGeTh6WDV6?=
 =?utf-8?B?aHM4Nm90dHk4S1lxWVd6NXR0V01odElpMlZ3cFIyeVN2dC9nOUgwbTNqZmFJ?=
 =?utf-8?B?RUlyYWtZc2ZvV05rMStFWWxXdXlyZmZkTys5d0FyeFFQUEp3WUVDWEl3YXJm?=
 =?utf-8?B?T25VTkNwY25sa2oweW51UU1odXhUbW9DSXpRVm8rYjVGVzcyd3lIQXA5ZS84?=
 =?utf-8?B?eFlRQll2SFVOT2g1NTB0dmxqMDVsOGdySlZ3WE9oRlpnZ2hPU0xETWw4VTZM?=
 =?utf-8?B?aXBJMUtKdTZzOUM2cUM0UjBpSE5EelE2YXYrQ2k2R2F1a1ZmVzlJanFyTEJ2?=
 =?utf-8?B?dmlhcmIzcnRkeEhxWUVGQmh4YjlRcVYrejE3cVRxRUp3VENTM3ZlNGJhc09X?=
 =?utf-8?B?cU55T2llclhTS01lMWlWTEN3anJ0bDNPNXVTTElUZEZhMHVISktmS050UVl3?=
 =?utf-8?B?Y1FzMzYxemZOYXlQNnVkcUxYZEdWZzlDZHQwQXUzcUEzeWVrS0ptRXFDTVU3?=
 =?utf-8?B?OHBVVENpTXRnMytObEdOdnd3eFMzaWszWS9QNUZFa0lhVmZoWmFhbGdzMlZZ?=
 =?utf-8?B?L0E2MXJhV3VGajN6UENZckMrQmxQanljZE04aU5nSHRPUUJ1WFVvR1VWWW1a?=
 =?utf-8?B?K25KclV3TlcrTEhCWDdETHRFOFQxaVpGS0ZyQ085N2VxV24vNUdFLzdEZmJ3?=
 =?utf-8?B?TE4wWXErbmtTQS9hU21janJRc0JJMEdpMDNRSFJGZUJnWFhSeTg3SkU4OTR6?=
 =?utf-8?B?Tk1ud1dDMktSbEZtblN2RTZSU1RSV2hXL3ZndUpBSGtNL1pta055NmhlWVVo?=
 =?utf-8?B?VTBUMlN2cDRTalpKdHJGQ1R4T3N3Q2VWVjlBZ29rMTZQZVpUbkloZnUwL2ht?=
 =?utf-8?B?U3RDOVcyM0NqUnE3ekZ1ZjFxYmhmNUpmdmFnNWt5blVhcWsrc01mY25QM3Bw?=
 =?utf-8?B?TTM0WkhTc0pWeDVnYzZGcGNlb1JKOGJPejY1eWxjZklwOFNuTzEvWkxKLzdv?=
 =?utf-8?B?TG1va21HSDhxWTB5cjZhc3pMTWlGWlVxYVlkVmxZZnhwblpkZUJwdkpoNVA2?=
 =?utf-8?B?ZUllZ2dYb2pJZk02RUpRMHFFS21taWwyUlVWMWwwaVVBcGZ3Rm1JeVpFcVJ2?=
 =?utf-8?B?eTdIUkU1d2V2dFh6Sm84YUxKVmkyMy9wa2s1SWZGUERnNm9HeURSQ21hclQw?=
 =?utf-8?B?dzcwM1BmcUVNK2U5T3oxRHVaZkNtbFBnL0prUTlZTi9RWmdZdGVkTDBTakt6?=
 =?utf-8?Q?2kD5cgGSgi5A4obJHl/1PpygbhRrrSZm3ygVZFYXPB9Go?=
X-MS-Exchange-AntiSpam-MessageData-1: x4YC56m2S7sfbw==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed86cb07-a5d9-426d-17f7-08de83c8a637
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 01:58:14.0312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JdSUxLzzZuLjA5k//D46+ydMU4xS3O8JFMP2bVtXrw5G2XnkVCFRJem7cDPZQEezmMxP1tUhQ170jRAUQHqVdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB9075
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
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 1D4972A2B31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Mar 17, 2026 at 10:10 AM JST, John Hubbard wrote:
> On 3/16/26 6:02 PM, Alexandre Courbot wrote:
>> On Tue Mar 17, 2026 at 3:51 AM JST, John Hubbard wrote:
>>> On 3/16/26 6:12 AM, Alexandre Courbot wrote:
>>>> On Mon Mar 9, 2026 at 10:53 PM JST, Joel Fernandes wrote:
>>> ...
>>>> I'm a bit torn as to whether we should use a `u64` to conform with the=
 C
>>>> API, but doing so would mean we cannot use an `Alignment`...
>>>
>>> Alex, have you seen my Alignment patch [1], for that? It's sitting=20
>>> around with only Miguel having responded, but seems like exactly
>>> what you're talking about here.
>>=20
>> Not exactly - this patch provides a shortcut for creating an Alignment
>> from a u64, but it doesn't allow to store alignments larger than 4GB on
>> a 32-bit architecture since the value itself is still stored as a `usize=
`.
>>=20
>> But that's really a theoretical worry of mine anyway - nobody will ever
>> work with buffers larger than 4GB on a 32-bit arch to begin with.
>
> Actually, in the CPU world, this claim was made early and often, but
> turned out to be wildly wrong! That's why we have "high mem" in
> linux-mm (a constant source of suffering for kernel devs).
>
> The 32-bit systems designer do not feel constrained to keep their
> memory sizes below that which they can directly address. :)

Yet IIUC PAE still limits a single process to a 4GB address space (and
`usize` is still 32-bit anyway), so hopefully we will be spared that
pain. :)

