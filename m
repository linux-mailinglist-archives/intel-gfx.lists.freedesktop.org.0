Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAX3GF0DuGlpYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 14:19:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1822A29A35F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 14:19:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2FF710E50B;
	Mon, 16 Mar 2026 13:19:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="b3XDidlq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010003.outbound.protection.outlook.com
 [40.93.198.3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25ACE10E196;
 Mon, 16 Mar 2026 13:19:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cYH/JxFensDA8boLhzoMXg7xcPiMbjpAzbPxWs2ZB97WQPjaMQC5ihXAeCVE5wXHfXPxmDipM6/3AGWEtuhxTxvq5iotzNFkkWRtI6pYOdHwJwaAXqC6WKrwSeWVVFDsEWqjHuSJ+l5ZIO6pQpL+YmzCyK0d1l+AOeUTy6ZcCchA0Bo3ovUD7YyQaPJShQwITyH5N9Loizg5Tg0PpUWn1dUpG6Dr69XWGfhjKf52If9zPB6NBFnFksPkuPP/mVBoPNA9gUfCT/S+UOnaiNpqayLCbebq1DG6ounFAajHOpn0QgPFRuH7IRkd/2tSevf96QSCsvPD/HpMB0ewBXKBqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M7COxVHa2vwPcZ0LhUbw9E25wyR9hV02Y5rZIikgRos=;
 b=P46SbIgN7M4cLGeEoN+mpejB8i83vrE/CQVnfeaUsM47FMkB6JbXheF2a41OQvya8WDC/LFPJvRlyzaAJixhWqbZr44dXlKJKJBICmsMJhXVv3fcBQEWU4zbNgCKNF6cCE4Aslm9ucycD9w5ox5TfojfkMNZeWvqLxLAlHo3DXQAVNj3Kkp9SUYzwYAmPgD/FDEruHjH+FkrZWYG6xsIh+isgYIOH3FRuXQYo/MPLFxdYMl2bbvQOVWegfs/eKy8xkcNVGa0IzjEM1946gnk0Bl0iAirUn2pWHVm3DGSRMKQ+8gxioPkjwbq6Kvyp1yBH0Ci4RLfvbQ7jcCghPpAZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M7COxVHa2vwPcZ0LhUbw9E25wyR9hV02Y5rZIikgRos=;
 b=b3XDidlq5+L208uMCFTzSrZcjbrGxe6k7lS5Dk8NMf6Ktq++TK4W/WMVanq2/H0y5aEoPRiReQdPKTd7Pihahxi6lyUtpJJhMHSJaoolJTECfSyW7+WigoTzpYy33bhrw4iSuqp8Gov7nuxrZJewR6Gj4wnyGraMhiR1/OxFm9R/m6HRMN1Rnjc10Y7YJRfEfldVc4FY4T30s6Ig8NEv4jKDjZMm0/SpHmSSdWyArKP+YQpDv4nODsiS0NlAYtR5Fw5d0PY7bYZ+WBqhCcbo6OcrV2m9JfDhLkjvxYAf3a3p40Bq6sPYjHVE9DpHKEgDSr49mHHoHYvUuFFmrYOk0A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by MW4PR12MB7013.namprd12.prod.outlook.com (2603:10b6:303:218::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Mon, 16 Mar
 2026 13:19:14 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 13:19:14 +0000
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Mar 2026 22:19:10 +0900
Message-Id: <DH48J45RRVJC.15YBFZ05IGIWB@nvidia.com>
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
Subject: Re: [PATCH v9 05/23] gpu: nova-core: gsp: Expose total physical
 VRAM end from FB region info
From: "Alexandre Courbot" <acourbot@nvidia.com>
Content-Transfer-Encoding: quoted-printable
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260311004008.2208806-6-joelagnelf@nvidia.com>
In-Reply-To: <20260311004008.2208806-6-joelagnelf@nvidia.com>
X-ClientProxiedBy: TY4PR01CA0120.jpnprd01.prod.outlook.com
 (2603:1096:405:379::12) To MN2PR12MB3997.namprd12.prod.outlook.com
 (2603:10b6:208:161::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|MW4PR12MB7013:EE_
X-MS-Office365-Filtering-Correlation-Id: 614f462c-66af-4d1b-7515-08de835e9e1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|7416014|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: WsUiJTti41xOglmYq2GkGNG24rNTWDWwJBlAzlv08nYiMzooq2BnISS25r3z/ZbBWA84dVkH/i/qGwlbyJQM5Y2XjrxFew8QrypjP99JiXpt6AMwygnwwmJYqUeMC+x7BxLb9oHYGBKwnbs4tcjx839tWpFW1aWfRcV87meSfJnSa9UTs70N3lF4RtL5kmrQsYa6EOUa5bGtBLkwDvuiSo7WnH8N++rVkTnTilDZ8EEdmWqb5ebb3QPbx/BLyVss3rXciY/hOk7UcFhifOYCxNHCbb864bK+lCqOJfEPi2WJ7mCnqkeqAQPQtT/P1VCAaTjuLdkeWXz09fZICBhIHa5zC9TVTxPaFQsVfEIubdKVMKqDFGLcSVBucvHV4ZVuH6iFjlXGau4S6DlZFR0RFmlAmsvyI/NgjGp9tRAvXkXPnkT4lZO5GbbJw8D2kAoZqp8Bi57ELwQNTvvkVfmio/PZlzkddlpwIQNdDaT19DYAh+rE+c5mcKHUoP8qT+U1cw2+K6uJfgNB7EygVNWmn+HXxNqkDnMC/zPUegaGHrFN/UBw+2scKfB3blawX63+l4Jrbj7pklEce3d7zYz3CKaO7X5MhNcY7fCVSfEsNPFyriGSEf71IcStlnCOUPVkv4Zt/4nrzHc8qwFTMG7MwU0luwmEiknSBH0jF3OAp0sNB/VgyNjf5NdgNPIR3Bnqm0Nqzc6s5C3BObFAniBDCAyqyJhvSRhhg4X+91sx0os=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(7416014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEdZOWwyUjlQR1pDZmNpNEh6UzJtNTA4bVhpY1ZzUkp4QkhjNXE5Y0huS2Rr?=
 =?utf-8?B?dzlWOUMvc3ZmejFKK0Y5VCtxc0VSMkFLUWl1RkdFT3pDNnVwclNJQXJkUUd3?=
 =?utf-8?B?Tytlb2ZUamRITUwzT29jU0VJSyt4M0gyeEViRCtNb0VuOFkrSFBvcXZ2OWh6?=
 =?utf-8?B?bFdSTEowbkJWVkdia3NHb250R0I0RGh2aDBwcWtkOGFTWkpFVnBUTUxsSHpR?=
 =?utf-8?B?UWR0TE9LTnZVOS9wdnBaekFLcytxRlhLQUlCM0kzZ1NScWowb3J5T3VIUHZ6?=
 =?utf-8?B?N1RZSWZCamZTSnc5N05aZUczL21lV2NvQ05uSzlibXdYWXlUcHkzNEw2WTRm?=
 =?utf-8?B?NGVEblZodUdOL0ZQSUdFeUN6ODV4L0VLNE51SFlsSUx1cHBQVHl2aGhKYjFx?=
 =?utf-8?B?TkIrQXNiSFE1SVZPOFRydlR1SllneWsxckpIWk9UMzhhT2JoeHdoTDQ2VFZF?=
 =?utf-8?B?RlIzbzVqamVlSlJ6M0JabmI4Wnpna2lTU1pDTFpWZTg3WnlvbDhJRUI3MGRx?=
 =?utf-8?B?Nk5jelhzR29sNHFnYmpja0hnYWFkMk5RNWg2MVp4bGduNmZKZWd6STB0ejRM?=
 =?utf-8?B?NTNSZ3ZsVEV6R1dtanZ3OEtSSmtWRmFzQU01azhIYi90VzNZSU05dytKZkNv?=
 =?utf-8?B?cVNmT2psWTl1blRuQzlNYktZWk9ydHo1MDFROS8yckE2cy9xNUxOVmd1K1Nx?=
 =?utf-8?B?bHpkWTR5K0JSMFBUUlFLYlZUUUo5UVpiMTNVZVluTXcxTDR3eStqSTRleEky?=
 =?utf-8?B?Q0JiZHFVaDR6eDBnQzdTd0Vod3hhcHB4TmxyMEIrWThkYVU5Q3ZjRjBBVVdv?=
 =?utf-8?B?WTBpTzl1Z2JPNWZZWFBxY3V4dVRPUjk2U2FaZWFnOVcrOUZiUGhMQ2lZWHlw?=
 =?utf-8?B?b09mSmFhZHBOWnlVQXdNeVVPWkxxc29zNVdvMTZmSWs5N3dYVld0cERxZHBY?=
 =?utf-8?B?TTFlR0dsZnUzZ3YxSDhYVEd5ZW51MC9RcWxHNVVUUmV6T1ZTbFdVNlpCdWx1?=
 =?utf-8?B?WGdKQnYxaFl5TW5xN0VXQ0YvOHpvTUlBYUhzU0ZlYnMzZ2ROVEFVMGRRU1Jy?=
 =?utf-8?B?Q3FwRHNFOUNRZjl5ay9FOXVScmdQb2RPS0diZDRuVGZBbUF6T3dtb2d6MTVJ?=
 =?utf-8?B?THNMSlJ5YzN5ckVhdEQrNkJNbkYyQ0RuS0x2V21xMExObmZMUTJoOWJoOWtI?=
 =?utf-8?B?ZHljYVc3RGt6VndiRW5EL1l6Sm95UjBua2Y4aWJTL1BXa2NmTE1IK3c0QVZV?=
 =?utf-8?B?SDY5b0tUcWNVeVNvMjF4MngwMFJvb2xhK0VqdXZVTjRYenVmeUZUS2lZSVpx?=
 =?utf-8?B?aWlLSWk5UUpaS0dOcGZuL0NoTEFlMTlPS2Vsak1GRzhMbVVmaVhkcVdMN0hp?=
 =?utf-8?B?cWRkTzVCR05EZ21EYnBkR0dTRDN1RDRiTTc3VDJROEYrQkJsQ3hMQ09SNmNU?=
 =?utf-8?B?aXphbHhUTDUxeXUyR3c0VzV0Ujk0Q1JXS2QwOVp1WERYR1hBbVUwUVNTYmpu?=
 =?utf-8?B?TTUyaWxjT08wZVJLb2o3WFpqU3VDeGZ6cVRmWEM2OFFBVUZtV2lMeUUvVTl4?=
 =?utf-8?B?YkVqRndCcVhVSFVlNnA4akxCSnJ4NTRWbFFFQ3FwVCtBU2hUNEh5VTk4dzIv?=
 =?utf-8?B?TmdIK2hCZ3dSY21LeXVnb3RxUll4RTNiN0tyTmVYR1Nzdk0zR2grTFlGMy9O?=
 =?utf-8?B?Z1E1MXo4bUo1VS9CNjNLZW9JNU8yOXpOOFJoeGMyKzFoSW81cjZ5SW9UeWxG?=
 =?utf-8?B?N0pyYWQ3RHJuMTRQcmV5Y0RXSnJUUXVBdVF6cThpajlNUTJBN1g4cGhXdEp6?=
 =?utf-8?B?eFRwZHBJM3VLSkMrWXBZWVRsYWgyd3EyTXhWb3VPOUZTZjIrTm8rTGNuQmxY?=
 =?utf-8?B?T0dxOEt0SHRBUHJZU3YwL0hXcVNrWHQvN1d4b2FMdlpoTlJnUFZNRmJGR1RD?=
 =?utf-8?B?UjgvWDlPY08rZ1A5VU9aVmc5dHhGcUhPRStxRndhTjdTVXVPOHI0dmJMQU1N?=
 =?utf-8?B?MVlSbkZuQVQxMDV4THZ0UjA4aGV5R2hidmZKNnBzWEIyNm9YaFYvSGpGeVlM?=
 =?utf-8?B?cU9MQ1h5a2xJdTJtdGxhNVpsMm1sdENyZE1qbGo5YU4wZStrSVh3aEJaQ3FT?=
 =?utf-8?B?S3QzQjI2b2xBbXc1VlhXWWFIdUZCcy9wMmNxeUJ3NmVDN254WXMveWgyZ1dL?=
 =?utf-8?B?amNHbFlucVlrNVJPZi9VNEtsYkt0bGNYOXJPTEh3NW5jdjlVWHUyZmNnOFFV?=
 =?utf-8?B?dE02QmJqbzRLV0FGS0NFV2xtdHd5YzNwUHIwanBNYnp6amRqMnh3N01LZnRH?=
 =?utf-8?B?SkxJQXlibmErOHJnNHJtSGFHN1hnNnBHdGlMZWdwRnUwYUhmSW9qYWhudzll?=
 =?utf-8?Q?fzUuKgRAnYdiMeI3VfKbhdAcO4Q3dKClYRXwwdRcnN2pM?=
X-MS-Exchange-AntiSpam-MessageData-1: bwMuh7+hFs089Q==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 614f462c-66af-4d1b-7515-08de835e9e1c
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3997.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 13:19:14.0354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nM0wr68eA+gE98eocIk5V48FuTtUo/YEyCBnn3MWCqQBfwis9pwWncDm2Ne5rUKdDZo9nX1UESTxC0wLRTZvFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7013
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
X-Rspamd-Queue-Id: 1822A29A35F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Mar 11, 2026 at 9:39 AM JST, Joel Fernandes wrote:
> Add `total_fb_end()` to `GspStaticConfigInfo` that computes the exclusive=
 end
> address of the highest valid FB region covering both usable and GSP-reser=
ved
> areas.
>
> This allows callers to know the full physical VRAM extent, not just the
> allocatable portion.
>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/gsp/commands.rs    |  6 ++++++
>  drivers/gpu/nova-core/gsp/fw/commands.rs | 19 +++++++++++++++++++
>  2 files changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-cor=
e/gsp/commands.rs
> index 8d5780d9cace..389d215098c6 100644
> --- a/drivers/gpu/nova-core/gsp/commands.rs
> +++ b/drivers/gpu/nova-core/gsp/commands.rs
> @@ -193,6 +193,9 @@ pub(crate) struct GetGspStaticInfoReply {
>      /// Usable FB (VRAM) region for driver memory allocation.
>      #[expect(dead_code)]
>      pub(crate) usable_fb_region: Range<u64>,
> +    /// End of VRAM.
> +    #[expect(dead_code)]
> +    pub(crate) total_fb_end: u64,
>  }
> =20
>  impl MessageFromGsp for GetGspStaticInfoReply {
> @@ -206,9 +209,12 @@ fn read(
>      ) -> Result<Self, Self::InitError> {
>          let (base, size) =3D msg.first_usable_fb_region().ok_or(ENODEV)?=
;
> =20
> +        let total_fb_end =3D msg.total_fb_end().ok_or(ENODEV)?;
> +
>          Ok(GetGspStaticInfoReply {
>              gpu_name: msg.gpu_name_str(),
>              usable_fb_region: base..base.saturating_add(size),
> +            total_fb_end,
>          })
>      }
>  }
> diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-=
core/gsp/fw/commands.rs
> index cef86cab8a12..acaf92cd6735 100644
> --- a/drivers/gpu/nova-core/gsp/fw/commands.rs
> +++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
> @@ -147,6 +147,25 @@ pub(crate) fn first_usable_fb_region(&self) -> Optio=
n<(u64, u64)> {
>          }
>          None
>      }
> +
> +    /// Compute the end of physical VRAM from all FB regions.
> +    pub(crate) fn total_fb_end(&self) -> Option<u64> {
> +        let fb_info =3D &self.0.fbRegionInfoParams;
> +        let mut max_end: Option<u64> =3D None;
> +        for i in 0..fb_info.numFBRegions.into_safe_cast() {
> +            if let Some(reg) =3D fb_info.fbRegion.get(i) {
> +                if reg.limit < reg.base {
> +                    continue;
> +                }

This is basically a repeat of the code of the previous patch. Let's
implement an iterator over the FB memory regions (that filters out
invalid regions) that we can leverage in both places so we don't need to
repeat ourselves.

