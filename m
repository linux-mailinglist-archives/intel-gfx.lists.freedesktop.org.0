Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLOkHecCuGlpYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 14:17:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BD729A269
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 14:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7482D10E1AE;
	Mon, 16 Mar 2026 13:17:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="pzjlYTok";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011020.outbound.protection.outlook.com [52.101.52.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF0910E134;
 Mon, 16 Mar 2026 13:17:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cBt6/QmGLxTHkgMq7CbWFfjU64F1VKspEqzkZ0GB9WucA8b3IdIjMCDCvjl2Arzm3YytuhDY5U4B0DZPvJjNtMW9wuodjgZNnT7ILBYyo9hOIfabyRvoPDHmfIX0c2GXd4bzptuP2UUgTdUIKMXhPytFGxXUtZLw7wH1+i6lMSn1Az4XETz4Ju3XQU9toc3NnN5tm8g7y2xS1bT4Y6ofVeXkUakm1t/xOj28hbYuQLQVITrV0T8RVFCeLFv+XQqf9NmcS4YmN1P1P9wXL417ZuYSYSP13UHC3creOwQVX5SkQAxdy68tuIHmJ71cwr3a23IyZLN++zP3CNBVA6Wm2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=stQ3UiKAHtN552PoR842+kvlFK7gJ6ISUyx927ZMxfs=;
 b=oRWNYHWpjbUbabQ1sDa/XoREinSuui+7DIXsEP/q6/XIa5c/9KoyqcX1TGsIAZGdLwYIoMPCbMqB9dNXTmppGH7iEi+mLWCXZVBjnQhZ2gHhIJaOOIJdP84KsyV4X5PVeWwy9WHkrTF2GBjmJSyYwo9A7Pea2QbGJJRPdcWRpWBIq4+1bmWV9XrQTAn4embMIz0uMB7eNeJoM8C5piNXgEEQyZhHjrDM79SK+ndHYVmYn6Q05LGRhZNRM6JfHGr3WJJZlPyWs7I1JR1a4v3uvwuuo15PQKtC7qaAXXEh/UgQFXNpSTHJUre5S3sOZrppOfqYX/eEa6x3fNmiNiN9hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stQ3UiKAHtN552PoR842+kvlFK7gJ6ISUyx927ZMxfs=;
 b=pzjlYTokGPP9AI+Z2BTUZOfKchRW5+NeanNGrUzH52wmtIUPTqzsQngU5LiNi7BnnxPQYBewAM1bJxWLce8FfjMRgcfw8RXNIQ+1xAk5VQsarvmPIq+Xm2KwzdVRiFoXDCO3TUHBN5T0HnWT5KGbVpeZXto7z07/dwpDfAOmnGFFV2TjUBnslxetBB5zp3cFsfK8F+3ESJ0aaZ8JE+nJYWRnDhP3j9f3+9uS1yaxeVUCmEPovRedRtcn1kKZe9+mEWigN3xLRJ9vgkGDYGwVKHsB/7+Xlmo/IWVs0P7L3L1g5CnnMjVXi58EYBAzvjdeer/F9YITKh9li9Gjd1QWZw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by SN7PR12MB8060.namprd12.prod.outlook.com (2603:10b6:806:343::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Mon, 16 Mar
 2026 13:17:16 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 13:17:16 +0000
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Mar 2026 22:17:12 +0900
Message-Id: <DH48HM5HOGA7.1EUAD2NXQ7PC4@nvidia.com>
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
Subject: Re: [PATCH v9 01/23] gpu: nova-core: Select GPU_BUDDY for VRAM
 allocation
From: "Alexandre Courbot" <acourbot@nvidia.com>
Content-Transfer-Encoding: quoted-printable
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260311004008.2208806-2-joelagnelf@nvidia.com>
In-Reply-To: <20260311004008.2208806-2-joelagnelf@nvidia.com>
X-ClientProxiedBy: TYCP286CA0096.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:2b4::12) To MN2PR12MB3997.namprd12.prod.outlook.com
 (2603:10b6:208:161::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|SN7PR12MB8060:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c3fccf9-3944-42eb-0458-08de835e57a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7416014|10070799003|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: sD6YbeEj4cRhlzU3Sy3cj8sRhB1yewSFl2fAsSX0jYYHGLfzdmsnFy8zqzVo+GbOX2U0lfEoVHrDrxmGJR+4aNt+PXpzJ+4INEXyM2PdOyQIyIQ9VkoB8FMoqUwIvy5o2icwLSlxjRp/lenU8k/bisysEbIygsbuHvl5CvWSfaf42OaSqjw+FM/adR6wuAmd3DzBpsh6qhZhz6iMqHnb3DVy3TxltZv14rOKgQc7W8WrlbonhQfdM81EKP5So+xmGcSksvwO9jrSoeQSagDv0t3eHgP3OqJ5ShDFsI0tW9Gfn8pCx1B/RsfEQVnWCQDWJeuCD5Xk/M1ZAGT9hagFFqKDWbAqdMdLbBirzhZQLTm5o24p1/2Vs/1oOPRiTjGD5yVEvdtR81+ERLM3IGFmwQjgIwAi/FoNndFT6M+RDholtlAbGRI3A7GFbphRwBcnQhRH7R95VB4vESGscS24+UT6zpsqOK2zTMl4MfAoZdRiYWoo+Jym9SqRfX618iPJJ/howUAedNm7WienkiCb8/iQA6ErvW6KVzOwuoSseT4/SOhpXXutBWfI/vWHGUh6/Wn4uVYDg3Okgz/r3pyxPfi9tIt6NElhWwl73hybC0FYGx4gAu4n7hZmhN+nKddmPido9qBk0nitUOwmLGNv3c5Y70454qZD0X1k/CrYcpjg/yDjIc1U3MgYGUYF90j5T6wstSVty1n6cUv0wbYeSZ6hn5QrzByZpiYXsKwrUB0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014)(10070799003)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1ZBNXROTFVoWFlVYWdVcUxWMVhqakdoaE9jSVk5dXBHNDluRW1VNGs0NnFl?=
 =?utf-8?B?UGVuNWprZVAxdTRmbVU5NmU2VHgxSWEzZ3N3R1FZaDRpMnp6Mm1rNG92b3FK?=
 =?utf-8?B?R2JCeXh6Um1VeU5NNit6MDFFVTV4V0xqUGZhNFdwZTJyWnU1UjJZUlljWUEy?=
 =?utf-8?B?bUhqckxmZlJBdVMyREdOK204M3h2ZklqTmJNL3RaTDVsMlVnR2tPVEJHQ3pk?=
 =?utf-8?B?QzJSVU1yL293NWpSNkRDMlVXQzVzVG1GWGRuYnZ4YUJBUmwrWXVLZEhNOHZ4?=
 =?utf-8?B?RzRobnljYURwU1c3Z0RiaTh2bG43Y3p5dWZrZzBCNlhnTmgrRVkvU3VocVdJ?=
 =?utf-8?B?RVgxdzZzY1ZHYWNDRUptWUZPeG5zMzBVQkQ1NHQ4dlZycjdtYjJ1QW9OSzRt?=
 =?utf-8?B?Yzd3M0RadURZZjd5aWlhKzg3anFDbVdrS3dUTXlQcCszc1lJQXRONG9NL2hP?=
 =?utf-8?B?SGk0dEtFUGpNMkliQk9UaFg0WXczNkt3RGVnMFBWbE5vY3MwS0YrUzNQKy9v?=
 =?utf-8?B?cHJ6dFRFbUw4dUx1aUJYVXFGSVJKS1dSNlYrU2JtdHpBQlBjdk0rY0hmZE53?=
 =?utf-8?B?SlNuQXpkMHVhRG9JZWg4bnRKQlFIaElCZVc1b2JqWldLNUVDZmJoWFNNUTNJ?=
 =?utf-8?B?bWo4bWVuMHFmUE80TWJ6UjducjRwS25qM0NxdWhrSWtmZUdXZFVlSEJHNmMr?=
 =?utf-8?B?cFlLWGh3bWVJZm9pVmhtU3NRZDdVbEVWWkI3cXBMM015MmozTDBzMElCb1JK?=
 =?utf-8?B?aVJ2MmU0dk5nS3hDdDhXVkNEdHIySjJiK3Nwb1FOcURFZDJPczFuZ1NkTHlq?=
 =?utf-8?B?SFVBa2pvMTJ1SFUrWk8zRzE2Rmw4SW5mQjZBQWxBclJUWitWbWZOcEU5UVoz?=
 =?utf-8?B?bGZoRXFWeVRvdUlJcVdtNThodkdncGxMdzRRYjh5ckNyZU84eXk3cUNlT3Bo?=
 =?utf-8?B?NklTbHJsQjY1MjJjeXdOWFFUelJmYVJmZFE5Z1hEd1RwbDgzZDlsWXFSeEdD?=
 =?utf-8?B?aTZuOVNxaFRMSGdja3o1WVBJWjVBMGx6eFduK1dBSkc2dEd5dUUvSXJlREMx?=
 =?utf-8?B?NWhITVpLQmdZSkUzdHM3UDFDYm9DWDlkejhLNStTQ2Zkdzl2RWM1MDY3bHZm?=
 =?utf-8?B?ODBTZUJkRE5ENE0wVkxxekJZTXhkbWpMbzJoMkE4Ui84dlNEbTF0UHlrRHI5?=
 =?utf-8?B?alhyR2JWN3g4NUpETEpqY0YzWmV5Q0NNOTlFKzE3WHBZcUFOdnhQS0pYSUdn?=
 =?utf-8?B?dnEzYzRaR2kzVzJydEw2Z1VNVWFHdDkvb1FpUUlYVmNtWWVMRndXcTRRQjhp?=
 =?utf-8?B?QVpqTFdacUpFekp6MmhMblI4d2QxRmJDZ0dob1NsTUZFVTlxL2lkVXFQc2lW?=
 =?utf-8?B?ekxWR28vYXExcFZEWWF2MGk3VCtUTDZ1MnZQS3YxN08rTHo4QkpFRHVMZW9y?=
 =?utf-8?B?R25LZ1hPaUpCUHNjZkg3elBrRVlpL2pBaWdOLzByMnVlUjZ2S1AzWDlvT1hN?=
 =?utf-8?B?RG1qNDJXQ2huZCtBYlFENEJHWDZSdjhtRUtNY2tGSHY1cWxoZVE0WHB3d1JX?=
 =?utf-8?B?TVJwRlV5bEhsenh5cnlUdGROZGVzcG16MHFUVm9hcWxKVlp6SjFHQ3BCYW90?=
 =?utf-8?B?WGxabWpGL1B0UENSSVlzdnN5ODYvU201TFVuVGU5Q1U3eWFIRzYySGtxT01n?=
 =?utf-8?B?S3N1KzRPS25Pend4U2NBSlljVEcrS1Z0dXJ2ajFlSk54dFBQU0xXL1NEM3BY?=
 =?utf-8?B?MUxyaVd2RG42bTFUWUlrTkRnaGd2aTA3R0NiZ2ZyOG5KbllaVUFOL1RPMzdW?=
 =?utf-8?B?a1BQNnVYbHZWL1lnMWtNcVR1Zmp3U2tESkpZeDFBR1VLNUFuaHAxcmcvYUE0?=
 =?utf-8?B?UkliZUEyNndyOUQwd0t6UkwxZGIza3ltK2k5UEdnaDJMSDY4VXNHY0N1QWVy?=
 =?utf-8?B?T1QxQzhHRXdYVjNMWnRnTnp5dEZYVlNINVB3UkdjdlpQT1BUdmtsbW1TYlFu?=
 =?utf-8?B?MUpaaHUraEhYM0lNR3A5Mk9Da3pPQ0VmM1JQdVZmRWlNYy9qY3h0N0I4cm1L?=
 =?utf-8?B?WnpLWnhKWmRPbERqWk80dEwzbEQ4WC85TUU0MEMrWXY0cWd6dFlHRzB0UVlE?=
 =?utf-8?B?akFPSVJSR24yTVJtRDVGMVlwTkRNVUlGM012RzRMdzlyWG13TCtSUmxsVHk5?=
 =?utf-8?B?SW55KzNveVVFQWE1SHhmZEcwalk3YnA1MUZpZXZlbTRSL1M5NWNmM3c0ZHpR?=
 =?utf-8?B?Mjg2REU2U1p3OEM5SDNNTktHY01EdkNkR3NMenA3SE9yUm0vTkVPS0JoRC9U?=
 =?utf-8?B?cERBaHlsSXNFTGg1bkx2Q2JHdzFXWDNua0ZmeW1tQVRpWTBEN2RLdWlud1BP?=
 =?utf-8?Q?yxiiWTOtL2EDZRdphgY36F8wV7//+bKlJdMwOBFjpnbYM?=
X-MS-Exchange-AntiSpam-MessageData-1: yKn1JdIcJygd+Q==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c3fccf9-3944-42eb-0458-08de835e57a3
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3997.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 13:17:15.9243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jjINF/yrsLT6Yo/peBm6fpfg/pkru4uRGwGOgt88aUeV6KWhnllMJ8ufPkLlZI9DqmXfj9Rn6h0Krqm2aAlgjg==
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
X-Rspamd-Queue-Id: D9BD729A269
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Mar 11, 2026 at 9:39 AM JST, Joel Fernandes wrote:
> nova-core will use the GPU buddy allocator for physical VRAM management.
> Enable it in Kconfig.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>

As I said in v8, let's squash this change with the first commit that
actually makes use of GPU_BUDDY.
