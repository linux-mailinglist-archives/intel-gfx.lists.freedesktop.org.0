Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEF/GA0F1mnbAQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:34:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B87A23B8592
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E3A310E563;
	Wed,  8 Apr 2026 07:34:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Nvu2WL07";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM1PR04CU001.outbound.protection.outlook.com
 (mail-centralusazon11010017.outbound.protection.outlook.com [52.101.61.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 203C810E523;
 Wed,  8 Apr 2026 07:34:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dYY1XsUowJQst4FlSYrsg1rYLF4acy3Wdf7Om/ADYDrV//5Tqa0dyehdA6JgDokLoCzYuAjW8JNbs7mV5hzGtstXVy8TuZ7VW+jW5OG75MUFUfPmHOt1ijVNbWR9SlHkRilvcJhlW0VsHRE156NwhfK7+Rve7Bu5P61xbiAehD69hUtB/xK0S0jJi3i7owYfciMScceUWDRhBqaTLin3CDDak0nVqzbaEZCpAk2zS6nQT0uLnrBLEK+XGmsAmVuN9vClD+WqcfmzfbFFy4LLyYNqk7a5CMM4x8qfEGtaktTrAFT/uyfZ3iWFLTxVMD6K43gbgGb8YpoeM3BNFmt9WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+HfUZyx5uwIHp5Uea4Rupv5cwEAmblutQYZ3pZ4RBZs=;
 b=Je8gj/UJfZzc0oyuU9E5x/IA8WJIkklZOWF0C5Axw5DeC3UlLUy4HpeI4a+bspj9CA6fYiE/xPD4erjnu/tSk4cpIkXzAVRDuEaxfO5RkAup4EbFFx24ZnivQpxoK58BgBKu8oWu5L8xWe8ofxqA+cy2Lwo/M88KWSd1U41AleXP46VxHeX7PkUSWyhajaI1t874RyrXcKvRg0aqEWozCJ98UHJ7ow0hzPThWdoqow4WS79RMTgCgmytW/NF3XJ/AxuTf1jBSitzDwzBu+rK+Hw/MI+IOCmsPCCu1leo2jFsPZWcbDrPD3H0hxsOKk0aE9ct5+L/76l4fD7hLYXNQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+HfUZyx5uwIHp5Uea4Rupv5cwEAmblutQYZ3pZ4RBZs=;
 b=Nvu2WL07zVjyNCoBQ6+5lK8opXZpCdXrIep6a64vHBFiaIclOPFkrAV8psSJ5S8Wp/qnkozgZwaO0npHWgHESvNQtuM4CG2DOzIrj+Ejcibfk+jhCnmt2KuvFGij++MPWHHVjrjzOrw4AerUvuoAPFMMSSsnIz+xAIB0RDrDgnvoImGs1h+P+DZfNXtD/UQW9mgKchmlrL8/59/T5vWVhxkrzmhTb9YpgnjnewA9xPZ7/HLjV0P49mBQiRZsKWYjWdyBv35hcM6J6cHZbMwtkXxNYfkvyC+RlrlAnp/U5Ojf9judqrxAwLDwLxmhaOmzk71/K8XQLggDrTsK+LVZbQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by CH3PR12MB9249.namprd12.prod.outlook.com (2603:10b6:610:1bc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 07:34:24 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 07:34:24 +0000
Content-Type: text/plain; charset=UTF-8
Date: Wed, 08 Apr 2026 16:34:20 +0900
Message-Id: <DHNLLMMI629N.3OTJR4H91C8EV@nvidia.com>
Cc: <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>,
 "Boqun Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>, "Bjorn Roy
 Baron" <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>,
 "Andreas Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl"
 <aliceryhl@google.com>, "Trevor Gross" <tmgross@umich.edu>, "Danilo
 Krummrich" <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>, "Daniel
 Almeida" <daniel.almeida@collabora.com>, "Koen Koning"
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
 <epeer@nvidia.com>, "Andrea Righi" <arighi@nvidia.com>, "Andy Ritger"
 <aritger@nvidia.com>, "Zhi Wang" <zhiw@nvidia.com>, "Balbir Singh"
 <balbirs@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, <alexeyi@nvidia.com>, "Eliot Courtney"
 <ecourtney@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 01/21] gpu: nova-core: gsp: Return GspStaticInfo
 from boot()
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Content-Transfer-Encoding: quoted-printable
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-2-joelagnelf@nvidia.com>
In-Reply-To: <20260331212048.2229260-2-joelagnelf@nvidia.com>
X-ClientProxiedBy: TY4P301CA0085.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:405:37a::15) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|CH3PR12MB9249:EE_
X-MS-Office365-Filtering-Correlation-Id: a6202b68-56f1-429e-771e-08de954141a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: nkuTQfVxIaCJ4qoJIJd6fRxAcDqJA/kD7/zncp0WE3Z4JuKop2VxAE8vQwRXpWUHN+sXENwl3pDn2IAXPReQz31bm4G7HOMjHHOFF2HXWlqv5ti+lzeF59f1a9UhZJQVIRXpW9I5tOprlL/60jzvpnl24jzatO1cHlGiWg3qHuDGsK0QqhydMqddopYvWLvJ7QvuUHGklSDNJ1O0+w2XNXQD03grfwA7gpSoRPlSQdmxJ1nlJmAWBp6LL00vm6sciEdPeeo8/06bnI52L6nVkiYRqxuxq1AV1UoCTxLGwOoBI1BIZrYiHavT1x7zVtzLosRLqmojwj3t/9Axy8s+CXMoBspeqlT9oPj4/2xYbbN89yP2JQsJ2ZzYFGjoe4q7pdIX8tZ8M9CXYLE0FF7rYkkK8/N5d4+5CDA8E1ov8zuMVCP61FReZ/+6KTk8/YMeBP5znHmSELS6kcnBSM130byOZSyiaDNH/Xm8mTucVaUTjlMwnCbM5ualhs4pZ/6pqaY9Epv4/CAw+GaaTKIQ/26I+oJwzhwwooTkWbRF8Jrfh1Zvixx+M4AJkh/0vPpBWzedgeneOtn1XteLKdtbqLRyFfc5esZ+zR5NmeOpnxQJrlm2cE/w1DoUIZ74qfVoIYcj4Vnjzk2TerldbHAyLxzu4key5m2uv4s+Ftaw+kWRq4vMiXa9a31c9hWx6kVYy9PgS/SlzPF/aZg3frCnJOhmNYwDDGg20+YUI8k441I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVlYM0pZMEtialE1T1hwTU9sYjhzOHpWVEU4dXd3RUJjVVVSbVQ0eDBrYlBa?=
 =?utf-8?B?RllqbW5sc2pNaWErRkhaUWI4a2Mrd2hFL2RwU2wydmJnSVRQUXVkN29VdUxl?=
 =?utf-8?B?MmFLSXlJMDIra01GaEIwQ3luRmljdC94L2RralNSTEd2dHc4SzRjZlIwT2Jo?=
 =?utf-8?B?amtidE1YSit0NkJxT3o0OUtvY2Zpb1ZOT2Y4UmY1K0VhU0pFcnorYkpqVDUz?=
 =?utf-8?B?VFBFRUthb251RHdRVHlJKzl2WGh1Z1JwemFvcVZuMUFLWmI3Rk5sMmZOK1Nn?=
 =?utf-8?B?SHBkOGN0QTRhb252cCs5RFZNMXBjam9wUnUvR1dHaW9NZjNiWTJDd2o1MVgv?=
 =?utf-8?B?cGJrMTE2Y3ZkSDV2anRyN3FySjUwSERBT0FNNmNSbHRoYnYyWCtzZXJJNWcw?=
 =?utf-8?B?OUVhR2F0VzdxMThiNG5sK0RHWStFTklDQVhkelF2YmZrdXhkSGMrK2psYUt3?=
 =?utf-8?B?Q2doRms5K055aGdBMERUY2xKU3Y1OEExWWxtai9jaS9tb1VOVVkzMU9TMW01?=
 =?utf-8?B?MzZPdTZ2RXN2TnlZVzlDeFNoeFlZMEVBdSs5Zm9MYjE3aURIdVFzRi9QK3dC?=
 =?utf-8?B?bUJ3SFFIS0dHVTRmMmRoSnd3M1ZlUmUzT2dzMWNiRFpBT0NVa24vUi9ZYmpa?=
 =?utf-8?B?TWU2OE9kb2FJRXh0SnlYQVNZakVhRWJvSU1BV3Vib3ExTUV1Qy9NNzZqSUpp?=
 =?utf-8?B?RXBxL01WeWNXa09oWEZGTitGNXZ2Mmt0bFI0UGxRYUUzUkhNQ25EQnFtZ1Bq?=
 =?utf-8?B?dTByUmNRbG5pOHowY011VUF0K0NRTEQ0ZzBMckZHaCsydzBCRmhxT1FiMzNQ?=
 =?utf-8?B?RElPRUtmcjlBMWlRVGZ2K2MrZk1MUjJ1UXYvOGcyZzFLKzlFRXp6MUFCUm5v?=
 =?utf-8?B?K29QZEU4SjVhSzYrWlFtWE5aRkxGSGdHaXRqTkJoQkluS1p1Qmx3dmJCR3dh?=
 =?utf-8?B?dUtPTEZXVVIrbWhweVNQUUJmR3J2NDlsZDBZT0pkV2hYQ1ZxaXhTKzRiS2tW?=
 =?utf-8?B?TlBOQlFIVlVCMWJpaWNJdDZvTEo3OUJCbzRPNU5yaFJVZEdZNlpBT3BLbUdo?=
 =?utf-8?B?ZWtpTlBqTUx1WFRpb3ZpbE5vdVYrZC9ocGtLZGlLdUxKS3VxWWtiSHI5M0RN?=
 =?utf-8?B?R084emNGUTlVczk2OUVFVzBtNFJWN3I1OEgydlpEYkJaV1lQazZ4RHREeldq?=
 =?utf-8?B?R01id2NSWnE4dmZnU25KTFBoZmkxQUk5eXFFQTVLbG1UNkQ5a2RURU5Vc2oz?=
 =?utf-8?B?UG1EMDAwOTZXR3E4Q0NwSmU4ZFNWcUd0c1FMZ2dINGdBRmF3Q2hjbUdhZlJo?=
 =?utf-8?B?aS9ZeENIZjhCa1dUcjBNVjlLcjVDMDNwTTVGdzFkVnhvQ01yTG4vZUcrYjk5?=
 =?utf-8?B?QmNKSUtlN3RqS29XQjh0WEkxc3dJa2xETDIrY3RlODBmaFpMWlpQU2grMWp4?=
 =?utf-8?B?SjJpZ3hXdHVwYUt3RTlMZ3Z5OUswM2VFcjIxN3g4cDk1UENOMTV0MXdXblll?=
 =?utf-8?B?dnlDcGZtU1VyTGEwZnlMYVU4ZENhTmFtSHVsTDB4YUFzWXBRQVBDNTYvSnF4?=
 =?utf-8?B?RW5TdjFvay8zR2xJOUZKS1JiSkFLODF5bUZqdHlsTGd4S3JxcSswcG91dGZ3?=
 =?utf-8?B?R1ZLc2RQcU5HVHVHRTZxM3Zva0YvQ3Y4MTNYeXpKRDVIVUQxcVZrSHY4VXp2?=
 =?utf-8?B?eWFZU0FlMDhLR1I1RkxUeXV4UE92M25jN1Z0ZEowN0ZrYXFxS0w2VlB2czFh?=
 =?utf-8?B?NXdxL0NiUkJRcWNDR3Z0RWJMeDVsOEQ4WnpGSUI5MDNYay9ZajRhU0taL2Yz?=
 =?utf-8?B?NTkxcTMzUXEzVzhHOUIrMlBQRkJJZDZqSE8yRWkwa0VmWklON3RmNUdBbHhl?=
 =?utf-8?B?cmZXTEs4SEc1bTFkU2p1aEJoV2xRSkJxTjUzRFZCTUNMa0FRaU04Z3l4djBs?=
 =?utf-8?B?MzFwQW5MckZmWEJkV3NSQlZYWWMxbyt1S2d6aERjb21OZStQKzMyUjFKRlBM?=
 =?utf-8?B?OEVwalRtZmY5dWdhNzBxSVlBeGhSZ0FvUFFWQ0UwTyttbzZRcWxFaHhrTzE3?=
 =?utf-8?B?TDRUNEtqNUpDeXZ0ZzRoSWlaVTlDVWE1Y2FiMTI4Rzc2SEQ2UmVQYk5jRjFB?=
 =?utf-8?B?T0N2TnJ5MjJ3bmtjZDZQQUFaWWVQSmJvVHV5U1ZQQlV6QU9SRjFvZURQMFpK?=
 =?utf-8?B?azRFb0lSVk5xZitqVUdRUGtEMlM1QTNFNHZLYWVHYUYvWHVOUWZjOXNmSzlF?=
 =?utf-8?B?eVdZejBFS00raXVNamY4NjZtcmVwUHpPRG1WVytqWkw3RlgrWTlydWNtRlJM?=
 =?utf-8?B?ejQ1NHkxUWtERDV0ZUdVeGRwd1NRcS8yZGswUC93T0x2bktLb24xUFcxcGYy?=
 =?utf-8?Q?lM5j1NGRVnnTrnz4YZo1x9BfaruTau5bLV/nz7Mhz0frX?=
X-MS-Exchange-AntiSpam-MessageData-1: 1WzWq2PTMmog6A==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6202b68-56f1-429e-771e-08de954141a0
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 07:34:24.1624 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6D/vSzz6EVnlFVpQwFq4r2sG12+xl1u9hgioCQpN4Sc2mQpJ7ESfYcWr3nNPmQ0tQf8yUQS5ch2FitzN2YMNyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9249
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
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:mid,Nvidia.com:dkim]
X-Rspamd-Queue-Id: B87A23B8592
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
> Refactor the GSP boot function to return only the GspStaticInfo,
> removing the FbLayout from the return tuple.

We are not returning the `FbLayout` - that bit was introduced from an
earlier revision of this series and is not in the original code.
