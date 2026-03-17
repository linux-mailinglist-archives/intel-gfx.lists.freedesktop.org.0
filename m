Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA4eDz2nuGkthAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 01:58:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A972A263C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 01:58:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3DA010E2F0;
	Tue, 17 Mar 2026 00:58:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="XTNxl4wG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012045.outbound.protection.outlook.com [52.101.53.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6484A10E06B;
 Tue, 17 Mar 2026 00:58:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dk5CprP2HTcQjOp0aoto1NSOFz98EUxDaRwHJfBBV4MqM3OsYKeQ8q7lIgv4WFGt9q7das5mF5bNNxy3hmQSgWULgIs2iqHZmpNcgMgHEjccmkMCFm1bO5LFvr6zycGyyklECCq/jrPt48jq+omGFITCPfH20eifStlwW+VBo8m6Xcv+0HPeUG/Qyod0c8XZ8GykNMSpCBdtS0UV/uIkU6v1ruIMprJo7yz5Gooe1eQCAN8p+tdaek6higM+5np0mOyhD6tdvtg+EmJm7HzjqvQL5hG7MkAyXRslGb6SB0vRNG4Bm+urY/ZHm+pz9lMTmRBNoHJ19Xnm1FwA3/WzAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t7lVJ2V/lJ22ZLVyzx9t1sVpDNY6GdHiePpfj4xcrnc=;
 b=Snmeyf49KM2/bYFb9cBNq0whISLV2sH8gHNXWsvXfD1fPdz8oba6xdreOLovWh6L9aoj4PN0HnqvJXgY+nNGC9mCxOwm95ubnUmrONiohsomBbtkb8MtAZoHUgbJY0d+xckdfTVmy5NT9AerUpzwghsw41QDvApwfHUKTQ1Zknh/A+FDdk7COoXoIguKQqCRBuaaNMBsNgY+LfUtdG2AHnGRRX3uJCdZbY6iAxcOmKrtHcQLYho2kL+9tA8RQytCUbKuJrRPYJoSVihlYuFG4lrsmwta4T8ayN4TnyQseJv8bzXnoZZGIB2iWQrVHc9TPKt0OvUuh7wVCx4eJ61GxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t7lVJ2V/lJ22ZLVyzx9t1sVpDNY6GdHiePpfj4xcrnc=;
 b=XTNxl4wGiHSU1SYd6sEqaBO8ORppZspSk4u9tW+h2eG5Rpa7RZAiRE/v/IWD9MUjtONO6osRpunE2gF3G8isq4RTlAJPcLAw8B2VcrvCmBZveA3Amc7VPRdQWmvdexIaQRI2HRA36J9LmNtd8updmwDhglFlzHRqQbf4Iefvo6DpTKBlpEseoESbAyHefW+utmL24dVaEOM/G9L0R1SEuUxQrCPNCSwC/HGppqj4gG5VT/5kfV2ZGongigdXrUQfvw/MWF16FHdCwZ6OeoYCvNiVzVDbmuXdRwLbO3N7nt67W+CV9mwX++R1toAuBYZXy8ikWsc/IxhFPxnhAjGSaw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by MW4PR12MB6779.namprd12.prod.outlook.com (2603:10b6:303:20f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.14; Tue, 17 Mar
 2026 00:58:24 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9723.016; Tue, 17 Mar 2026
 00:58:24 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 17 Mar 2026 09:58:19 +0900
Message-Id: <DH4NEFIDGPRD.2DBE9RXHATRNX@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
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
References: <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
 <c750e3ce-db4b-4cf4-9254-c381c118d103@nvidia.com>
In-Reply-To: <c750e3ce-db4b-4cf4-9254-c381c118d103@nvidia.com>
X-ClientProxiedBy: OS3P286CA0125.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:604:1f7::13) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|MW4PR12MB6779:EE_
X-MS-Office365-Filtering-Correlation-Id: 879c5e64-79e3-4afc-d90c-08de83c04a92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|10070799003|1800799024|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: z9Dd53bd/ZufP0rW9Fn/P3fFC+7gFIOyMccub1FflNAcbv0IEBOabKo8oL455L9JzrRfLHSt12nUtk47PPbrOsaeBZWL4yvK4UOexYegi2NQisDHmfcmqvmtJ8H2ql9Dah6f3VuAR0qj/BxXsCA2Cf2boq8841/oplEsXkZLvf0fgs1qU7bbS5Tr43p8+9Aqe+M1o5wz4BGZDJEnD1rdq1Yd0YJtQWW0B0zjEiqcALydKHTIzfTFDVC9TnDe2L21ya/vN6f6tRKvl6a+jZ97dlj373A+ljHkV41nXm3VBf7Rz7z2kKagUcd6JP5R4cI0vJIJgRZmMLcs0hpCZ+sUqLj+gEPLRj0tA/BaeXhbwb4Houmq4mtGCxhOERUQSGcdfKaa/VYomvg+/tpo2MIvnW2xpiO3znRy+FhZMCK2B5wf03wY0QYjdElDGYHGKuvAB0fNVp5NpnNfAmoDXRI7luIIrTlnNCvpbmcle8BUfJxSAswoAqcQZ0USm8CBOejVicUPPUHIOGFVnb5ZRbay59JGvzHVMDxcbCamYoQ5AdPbZE0ZEm+Aj6cqkVjtPngMexObEaJiN+81e3YLQ/nUfdT9RE9/sAU5D+uOr58DrhcUKIuqij2IZkjVr58qlcfcsLVMwvkrVtWcX53Mq68sFamR8E/HFY/bbPlTzUBfGsaMM/BForErLST0XM4WZ4AwqCSWXFFvZC2JwDps4aJm42pvzfNi2MXB7sKc4e8nopo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(10070799003)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0lLZ0VqZkVEVDQ1ckhvL0NHRUJsY0JLVlc3aTdyZkt5S09FdndGVzRxWjRs?=
 =?utf-8?B?RXpwVzNGcHRkUmV6djJPU1lXYStsTGh6UHRjN1FndDNHZHZtWGcyMHlHMVR6?=
 =?utf-8?B?YVpCL0UzS3JNV1R3eE9yVkQ3bkFhVXlVcUVVR0hJVFFOMkNRUnBxVjRFempv?=
 =?utf-8?B?WVVhRHRHZVpHR2ZCVE1uUTNmeStuOUVCaE8zaFlTam5telkzZkFGcTdpNlBo?=
 =?utf-8?B?YVlLYysvMi9JWHBvWWNyTmJnRGRHUkRZQjlPWXJCdUMyd2t1aHB0Q3VzMlVE?=
 =?utf-8?B?S0pVeXQvNWlQWjIrM0gwc0RrbFJaZ2orMENLeG1KTVJENllvVkVuL1U4NnhV?=
 =?utf-8?B?WjJjRjRnbWNOVktWR1VSNnpTS0tzSkR1dzMxcENJUDNTbmNGTlhpSXdNV2to?=
 =?utf-8?B?Tld0VFhYSXk2aWxSdGtRNFdBb05IV29ldXltdVFEdEJud3B3R0hZYWNBU1VL?=
 =?utf-8?B?clBxSE9PbVhtYmpqMjgzTFRzTUUwREFVUFUwU2Exbk9VUWw5a2cyTzRsbTgv?=
 =?utf-8?B?YlFOZ1A4ZjVwVkQyYU9Bc25YQ1Q4UHJ5L1ZEcVNXa09iTUZhaHpNTnhYL3RD?=
 =?utf-8?B?M0tJRFdzU0JGL1RIVTUrbkNXaGdLMktOSmZDbkVTRWVmQXZNVkdoZVNMT2Iz?=
 =?utf-8?B?dnhXS1VLM1VncCtHWlVIeU9YN1k3Vm9NQkoyd0ZsSmZ5MDUyNlEyZEFPbzR0?=
 =?utf-8?B?dUdmeVlacTdxbEphQkFsRzdqb2EzSk1MUjVKSjAyemprYVQ3SjVUTCtqbFVq?=
 =?utf-8?B?WWRGZjVrWTNaNzA3eFRSM2dMVUVCSWhRc2hSRktYQjhQNzJxTVRUZmZkSEVu?=
 =?utf-8?B?d3NVdzBQVTBKREZ3VSsvdzBGdEt0bFNrUis0bGNVOElmandIM3pxOFRPbklR?=
 =?utf-8?B?dXF2bkhJWXlXQXRqOUt4WFAxUnFFaUVMbnltc3hBUlV1UHQwaURFcVh3clRQ?=
 =?utf-8?B?TDh4bjBnaU9FMVp1MjlLeGhWVk41REdBQ1hVeWpUcExXbDJmQzIyMTUvdWY3?=
 =?utf-8?B?ZC9aa3hldDBxZjdBamtCVi9oa05XZE95OXJBM3MvM0JOMmZKczhFaUZvbDV6?=
 =?utf-8?B?bEI0VC9FUFNhb09MMjh6N3NQWW9NWWRlSis3RkVHdzVWVjZLN0ppUXFWVkJY?=
 =?utf-8?B?ckRNUmJ6dFQycVdlbXR1SkFaYTZweXkvY1hsM3MxcFJ4b0RWMWU0b295NmxN?=
 =?utf-8?B?SU03cXZDL2RZOHU4MyszV3BNWkE3WFY0dTg5OWNmUjVCTTRYSmhrRjhQWkVx?=
 =?utf-8?B?UG5INnRNMXRZcCtoaXZFbU9lWFp1aE5lWTNMU2MwbHFjS1QzSnBVbE91Tk9E?=
 =?utf-8?B?WUVWYU1NUVJxdHFmVWNrK3B2ZHNJUGN4T2JvSndxNGhqY0FKbnh3NmFiYnFn?=
 =?utf-8?B?UU4rTjdjSU1pSU05WFdlMHBwdHhIb01ONlhpM253SHVocEpyQ1llS2RYUTRZ?=
 =?utf-8?B?R2dvaHBkZXQ0dGViV3orVisvYlI4clIreTVDOXNTUHpHVTNzbHJGNkQrenF2?=
 =?utf-8?B?eGNTZDIwbWIveWQ1NWg0QnNWOEFLelU4V3YySUs5MWF1TXNweWdvaU1JUkJy?=
 =?utf-8?B?UjU1YkFqdDJHNHBHQnpNVzU3UFZPUDhZdENDQ05wekdjdGlXSisrd2VPWWNR?=
 =?utf-8?B?OUlJUlYwQktzVWNmeHNsUmh1d1JYMFh0dkwwU0FkZTArZ09QangzdlFSekRD?=
 =?utf-8?B?dlYwZGtFSXdWZXdZVmJISGwzMGtHZUFXeDR2VlFhR2RYeFBxL0wxazNnUlpm?=
 =?utf-8?B?azlJWS9XYWVyb0tGbHdYTTkwQVpjOTMrNXdEZVE2S2NyMVJRcGlGMEdhK2U4?=
 =?utf-8?B?M3p6UHkrRTFHMVpCZTVRYUxVVHdTNkRKSWhFZFE2Z0dzL0lEN1pnbDFySHEr?=
 =?utf-8?B?YXk5RUhoN2ttcjdmVVlMS2ZFK21JN1hsWmZGVWlBeDlJUWs1M1Avc0o0SlNi?=
 =?utf-8?B?TDNSTzVwbXkwSjdmaFIvRXdvK09qbldGRTdhOG8wa0RWUDNFSDUrMk1GRG5I?=
 =?utf-8?B?MHZQcVBhWlMyYmJoUnJuMHBtZHZhNkR3S0hzaklJbmxtQmRsdHByRjM3V3lm?=
 =?utf-8?B?b2ZHSmJDMm5zcDA2L3NqSDZDUy9reThLNUlRVFdzRzlmM3ptUjJiRWlOOU1p?=
 =?utf-8?B?d05pdmR1MzFPK3ZhK25UUXBhaUZFTEhkN3ZSNHhrZTJNNk1qV2ZuSDVmOUhh?=
 =?utf-8?B?MzJ6ZEJIbGRZTVpmb3RvSTlYcGR0a0prVmpJNEJMMDhzOENzakYzbU90SnMr?=
 =?utf-8?B?VHRNV0ttbXNZa2Y2TTI0Y3luakpxdzlGZzBvdG10dDV0TzZncGlMNEp2TVhH?=
 =?utf-8?B?QTRFQWc4Zjg1WVVWenZLUUJPYVhZWXQxS2g2Rmo5MWFYdVkxMkVERldHZXho?=
 =?utf-8?Q?zpYP+4pXZQY7rNWf72X4pWYCEStPFIrKx3W/aNGbfJGb0?=
X-MS-Exchange-AntiSpam-MessageData-1: 8M2gR4r5qYuE7Q==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 879c5e64-79e3-4afc-d90c-08de83c04a92
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 00:58:24.4194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wz1zh8q56kNITw7RQzpxKdqqarqQ/5JMEPLDC2F8mml/hH79qJye7A8njpurr3rwsmyTofc/9ZvaR0KGmU8waQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6779
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
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
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
X-Rspamd-Queue-Id: 70A972A263C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Mar 17, 2026 at 3:43 AM JST, Joel Fernandes wrote:
<snip>
>>> +//!     ptr::Alignment,
>>> +//!     sizes::*, //
>>> +//! };
>>> +//!
>>> +//! // Create a 1GB buddy allocator with 4KB minimum chunk size.
>>> +//! let buddy =3D GpuBuddy::new(GpuBuddyParams {
>>> +//!     base_offset: 0,
>>> +//!     physical_memory_size: SZ_1G as u64,
>>> +//!     chunk_size: SZ_4K,
>>
>> `chunk_size` is an interesting case. The C API uses a `u64`, but I think
>> we can reasonably consider that we won't ever need chunks larger than
>> 4GB (or can we :O). I'm actually ok with using a `usize` for this one.
>>
>> One of the first things the C code does is throwing an error if it is
>> not a power of 2, so maybe we can even request an `Alignment`?
>>
>> I'm a bit torn as to whether we should use a `u64` to conform with the C
>> API, but doing so would mean we cannot use an `Alignment`...
>
> I prefer to keep it simple and use `usize` for now. I cannot imagine
> chunk_size ever exceeding 4GB, and given our stance on rejecting invalid
> inputs, this sounds reasonable. Regarding `Alignment`, I still prefer
> `usize` here since it makes the caller-side simpler and as you noted the
> C code already does error-checking. Let's revisit if needed once this
> lands.

I would like to insist a bit here re: Alignment. We are not trying to
make the caller side simpler - we are trying to make it correct and to
turn runtime failures into build-time ones as much as possible. This is
a good case for that.

The additional burden, if you can call it so, to the caller is just in
the initial call to `GpuBuddy::new` - i.e. typically once per driver.
The most important API, `alloc_blocks`, will be unaffected - and
actually this one already has one `Alignment` as a parameter, for the
minimal block size! So if anything it would be illogical not to follow
suit on the buddy's `block_size` parameter.

<snip>
>>> +//! let (mut count, mut total) =3D (0u32, 0usize);
>>> +//! for block in fragmented.iter() {
>>> +//!     assert_eq!(block.size(), SZ_4M);
>>> +//!     total +=3D block.size();
>>> +//!     count +=3D 1;
>>> +//! }
>>
>> Note that we can avoid mutable variables with this:
>>
>> //! let total_size: usize =3D fragmented.iter()
>> //!      .inspect(|block| assert_eq!(block.size(), SZ_4M))
>> //!      .map(|block| block.size())
>> //!      .sum();
>> //! assert_eq!(total_size, SZ_8M);
>> //! assert_eq!(fragmented.iter().count(), 2);
>>
>> But your call as to whether this is an improvement.
>
> I feel the current for-loop version is slightly more readable,
> especially in a doc example aimed at new users, so I'd like to keep
> it as-is.

Sounds good.

<snip>
>> For this parameter I am pretty sure we want to conform to the C API and
>> use a `u64` - there is no benefit in not doing so, and buffers larger
>> than 4GB *are* a reality nowadays, (maybe not for graphics, but this
>> will also be used in compute scenarios).
>
> Agreed. Though, note this adds 7 more `as` usages, but I guess there's
> nothing we can do till the IntoSafe stuff is moved to core rust, I think.

How so? This parameter is just passed to the C function.

If you are referring to the examples, then yes that's unfortunate but
there are at least two ways where this could be eventually fixed (John's
SZ_* rework and the IntoSafe stuff), so we can update these when either
lands.

