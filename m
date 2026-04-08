Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFaMLmUG1mnbAQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:40:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4193B86FC
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 920D610E54E;
	Wed,  8 Apr 2026 07:40:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Ctv/z80x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011058.outbound.protection.outlook.com
 [40.93.194.58])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2618710E0CD;
 Wed,  8 Apr 2026 07:40:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=groEWSPlFFRK8H+t8BtDvMCDvX7cIFTUCrEStnRcF2qoXti06g7YUGAAIyZKofxZo+F1DgoT3KzTWyVXQUUeKOM7t/Spf5oPHACge3XhRfmkMkRHyfW9S3biVN2iEyc+4Cqyj3RyF4qAys2NUoqOCQLzFcxpateagmzxV9H9xkX+nmo9Fb3IcjB1fuIGlHUgKYFstZiWPPV2Aw5KaK0+TGPdOAz2vRdJWDdB73kmIPEf6m76VzJAFIhzXxZHb+w0LZa59mjYPdsz+eQsa3tgRrCuPSJmSMLyRQJSJxycjUpmQV+yfzYOoTuDo6DUULY2tEyLWZhhm7vkGmtf86iECA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/PCWW/ZREQfE6c/7hE8bv2du9ib4XbEeassn94rkzPU=;
 b=tjwtW9VZc++xLqJnxUQNlFT3uL4eA1uvEo3z8n1w7AM3fAxMELnDbsCyReq7tYMOcKFti7F6oaGx043JBI/5a6fDA7oWPos/FuW4NpeOQcmDjpo5Iw9Xb1XGHsN5TailxAJPeHRELzb1b2gfzquVV5sb3pxB56y0NlnrzhwkSOfNp9zWWHDkMCASNPCGfv/OcCEq5OmsxwLwcja+6FXh4ORKX3NVapvVi0tUlvMflkKHbIdbE9cCekwVneRPtoVuWfU7ZLFnPYXxqxMWgCJPFZhBpTMf+Hbsx7lMwHoBCqUY/WSLJ5TXmu4Bh2R0tk3dGY/G4oN5do2vmSumoVFw5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/PCWW/ZREQfE6c/7hE8bv2du9ib4XbEeassn94rkzPU=;
 b=Ctv/z80xmO1PRfF6/ogXabFmU5PxHE3tvsouW8eJ5KSSxXKLV5igxeuQwIJKA4NYev0r+sMIEof1+2grA5vHZqTjIJhvNCiE65eGIePDa1/RRUvkNHD9BwTyWKqfD4HDgm1lGyryfT5g9w/fMHhQgAsTRuPSAzmqEohkhFYQXlKU2Nre5CWLg5pvDstde7AVSAZZYi8CdYNkEvGMHoXEHkqDb+ACgFKBI569ky8NNcTIbLE588Jy+SdKW2YICZH1Dqp/bCvfoqir73BvIlop6tKUTWZ0c99YF9drlYSM/oUBIzgce7/jObxpVB309viXsBkSKNV7daS/LwbfEcej2A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by MN0PR12MB6246.namprd12.prod.outlook.com (2603:10b6:208:3c2::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 07:40:11 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 07:40:11 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 08 Apr 2026 16:40:07 +0900
Message-Id: <DHNLQ1UDW1W3.KXLFLCCGWA8P@nvidia.com>
Cc: "Joel Fernandes" <joelagnelf@nvidia.com>,
 <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>, "Boqun
 Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>, "Bjorn Roy Baron"
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
 "Matthew Auld" <matthew.auld@intel.com>, "Lucas De Marchi"
 <lucas.demarchi@intel.com>, "Thomas Hellstrom"
 <thomas.hellstrom@linux.intel.com>, "Helge Deller" <deller@gmx.de>, "Alex
 Gaynor" <alex.gaynor@gmail.com>, "Boqun Feng" <boqun.feng@gmail.com>, "John
 Hubbard" <jhubbard@nvidia.com>, "Alistair Popple" <apopple@nvidia.com>,
 "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer" <epeer@nvidia.com>, "Andrea
 Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>, "Zhi Wang"
 <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>, "Philipp Stanner"
 <phasta@kernel.org>, "Elle Rhumsaa" <elle@weathered-steel.dev>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <joel@joelfernandes.org>, <linux-doc@vger.kernel.org>,
 <amd-gfx@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 07/21] gpu: nova-core: mm: Add TLB flush support
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Matthew Brost" <matthew.brost@intel.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-8-joelagnelf@nvidia.com>
 <ac4FpcD29XnbbsdD@gsse-cloud1.jf.intel.com>
 <0f5605c1-32e8-4a62-b852-b1db01e42817@nvidia.com>
 <39a476f4-ecac-4313-a59f-e00e72d2b426@nvidia.com>
 <adSSrZp6a551xNTu@gsse-cloud1.jf.intel.com>
In-Reply-To: <adSSrZp6a551xNTu@gsse-cloud1.jf.intel.com>
X-ClientProxiedBy: OS0P286CA0093.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:604:b1::8) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|MN0PR12MB6246:EE_
X-MS-Office365-Filtering-Correlation-Id: 42a7515c-2af7-427f-c50f-08de95421048
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|10070799003|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: Gx8zMH+7eDswU+oNYGcuKH3pzEuxCdgNM/YHbNt/OgVfd6hLr65fuoM2iiryo8DS006A2YzudIWpIlUKBhrteSoJmApOhNipAxz5rOXdQA42IOxS0OipPM1PtI8//n3vvAUC3bSfvOLcRkb31zzgHQYGJ7Iq6rz2XINn+BSadMZSiUf0v1ciOSRSLWTwIGUdnx4TZG/S0Z+KcVDvZl3a/hc/tbgzx9txuHj2uFYrFWF3jT5QFzjdGIoW/u4N55vwhY451e5IRhCVyPYxoKst33Tt74S5OuQ4yMmNa34f9Nz+2RuUU0D3BcCMR3khlA0wRD8UcRzyLhke0hjkx/8jeKbeCzxf2YbotJis7ST6F5chZ/x0NHf8KoIE1x8B1UOQs+y4QaAFAvfD85C/lEU8cU7anyfQAoe7nfBSIYOLSFNm7zmmoxeDxyN08b1NxsNaaYhr+VJmx8IAgH8rM3DuWnzbEQnrcetOfhLrbhno1zsUO3+7rgxwTdc0iucrO00SNTdTFZp2QnuA/ayY3Nj8S86IQXn1XLpwnoP/LPMhX0xSk03lSVFT6amfCqaq70Drxm/8iRpeDOxlAFKsAw/IIC5fdFYu3A/vJWeNnEfelXQeXyGLUYSnhHx7JoPrg39IVgTj491934zAilOQwtdpHe08gV5hJokuVfenCVcU2Uq0c7Cy1zAB1C7De690gBeqBnAI2IStT5XGbw8RLw8SeioctRVbqL2JrZaK/Ks6w5c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(10070799003)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFNITXlEY0JNNWR5M1JlQUd4UmMzSHZ0WHVVeDZJbFlEM1NpREFLaVFPM0lF?=
 =?utf-8?B?UjQ0TGoxaWE1WExwZW1QM3h0bkQzYWtXbmRNVFgzZTRWd3JybVMwbTNicXNa?=
 =?utf-8?B?cmZSOG93RlFobHdlWGRmYTUxTWVHaEllL0d5c1RqdThoZG1EZ2NmMnNjcEJU?=
 =?utf-8?B?Tm5RTjlrM0h1Vk5FZk1MQTNGUndkaEhwT3RtemhwZTVudkVIRjZxZi91RHRZ?=
 =?utf-8?B?Y3dxTW4waGgyTzdDUzhVRGVMR0gyWGVodkVOOS9yTDkxNjZzUk1vSEYvdjF6?=
 =?utf-8?B?dFQ4cW8wbHNlMEJqcXExL3VPVXBzcEZxNFlzZ0FaVkJpL3RheVVTSG9PYjlj?=
 =?utf-8?B?anVaVGZablp4SXJRRnc1ZldBSXFyR1pwRG9MRGhPQjk1R1ZtdWJDd2oweXhz?=
 =?utf-8?B?b0o3WlJITE5odG5QQi96NVNaOFd4ZnpobkQvSnE3TXlmT1pwbFVhVWk0blVp?=
 =?utf-8?B?RjBndWFBWGlZYWZKTnFWQzFwM05UeUtyZi9DVEQxeEdPb2JST0FqY25SemNG?=
 =?utf-8?B?eGFjNERabUtXQ0w2cU9XaFZkdFpFUzg5NytxQmxCK2daTFl2ZW9BU0ZYVmRL?=
 =?utf-8?B?MUR0SHlFaEQ0WEJ3aDdwVUp3RHJNL0pQUUd3MHlYN3V0ZzNPbm8rTHdFVjQ4?=
 =?utf-8?B?eS92Nmw5RkRZbGdqeGd4bjFTVjBMOFdZSXI2Rlp3cC9OMUJXMXlOckNRbXpF?=
 =?utf-8?B?cGRPdDdtWWIydlRLcHNxREE0MGtLWFErYUpFd2VRZUVuRHFmdytaKzZ6eGxU?=
 =?utf-8?B?MlQ3dFgzR1NsRUFTcXdWVEJWalZ1VmRtTHVmU0l6UlFvb1R1djQ3cWRUZkdH?=
 =?utf-8?B?MWxQaVRWNzJtOHdpOTBIS2xuS3BhdkM5NlRDT3VUMUdmcXBaaUVJNUJVNzd3?=
 =?utf-8?B?cmhRc1QyN3F4OURzNVlMSVRUZmRnbzBBZW44OUFSczh2RExOYTkwZk1EeTdz?=
 =?utf-8?B?WWV3SmRTb3pFTmE4TWNyb21wZERMVlV2UG45bTdmbE5salEyQ2NUSC9vdFJZ?=
 =?utf-8?B?VTJ4eFdtcjh6N1NwV1drWVdDL2F1Q2lTZi9LZ1ZOdDhJTHRTUDJ6ZWphT0dK?=
 =?utf-8?B?MlMrdmVNUzFoZ3NVZG1Rd0pyczRoaG0xWTliM1NSc1piZVBvYm00Vm14MGVJ?=
 =?utf-8?B?SytsSVlFVkRINElMT1VZd1lqL2ZFbStpWFJpYVg2TkVORElnRnZxeU01VVc4?=
 =?utf-8?B?ZmthQWppZCsrb09YYnN3YkhPMm1qcTdqMURydEtieG5xeG5kRktuaEFCWG10?=
 =?utf-8?B?d21tYjlMVlVsdUFqL2JCbEkreTM3TXkwVnNKektBb1F1U3BvdjdPVndjZmoz?=
 =?utf-8?B?bnNDdWJLaXZucEZLbVdJNW9UTzZ3U25JUERuSjVlZWxWREpDeWdxVnVIc1JO?=
 =?utf-8?B?SXV2aE9UWWUxZjRDWTBRQksxcWpMbDc3Q3krSXJ6K1JLakZScEMyaE1RVHQ1?=
 =?utf-8?B?dU1LRmJER2M5SXVFUkx3RTMraXRMNGprb1lUbFJkSVZPNE9YTElRRUtTalQ5?=
 =?utf-8?B?TEFoNDNFd0JOTGVIUGtJZkxKRFI3UERoQm5qSFBjbG94ckJKZW1hVGVBallN?=
 =?utf-8?B?MzBadnd2NC9XMGJ5TFZJbkd0OFJFczB0ai9EN0dORjZHbHJvRUUwNyszWE5F?=
 =?utf-8?B?T0dSVy9QQUpxdjR5UU9qZ2VlTjk0enJMVW5HSFFCUDJyYldWcVk1cFFlNjRn?=
 =?utf-8?B?NjZCNTdIdGt3UzF1OHpGYzN5N3J0ZmZZY3c1NVJLMU5YeGl1MVoyV2VxbDNB?=
 =?utf-8?B?Y2ZUU3dhVDA0M0hyUDFpSXR1enpvUTZDdFNtSXBwd0ZWclJIL29OaEQzT0hY?=
 =?utf-8?B?S3RUaS9zSGRzamFSc240M0MzMG1hS0RjRmk5VnlwSTF2OW5ZM21TSlFUNUNv?=
 =?utf-8?B?NnhPVC9ramxaYWpua2lNV0dFMlVoclFnRFNmMlJqenhRRFUzMkc5STNmbDFW?=
 =?utf-8?B?L1d5WWI0YmxGQk9RcTBZemJVUWhNMlg3OCtMektHRkdlOG1FclU0L3ZmV1Fu?=
 =?utf-8?B?TkVhTlFZWnhLaHpYaWkrRmdnbzhvY0JMNElkcVZaWmZXb1NJaTR6UmdaUGFP?=
 =?utf-8?B?cGJ5OVBEOTdxTTZMV1ZwZnFLQW9vbDVrSTNrektYQ1ZvVUtwdnVhN3YwTWpq?=
 =?utf-8?B?ZzJSRytkR0cwRllnaEVZR1dIU0JYMFFtbjR2UGxqWGM5Zk94dmRtYmltMUlE?=
 =?utf-8?B?M2wzZnBDbEdxS0lPLzNYM0FJYTdjdlcrTE8rUUo4bENkeElQNG1CdXpodjhK?=
 =?utf-8?B?cXM3eExUY1dDcFpLNWp5SUxyVGFkMWJoeXl2VUpYbUdLOVdsOEVwcXoyU2RD?=
 =?utf-8?B?cnF3cGpqb1JlOEpSRVYzbnZRTC91M0R0K1Y4am1IN0g2OVdxZnduOGU4WU9k?=
 =?utf-8?Q?tvhaltohJpEQv6Rv4P+1Cic+RZSkeX9G+CUQ97MnbH+1n?=
X-MS-Exchange-AntiSpam-MessageData-1: RR8iIVaCXYzfkQ==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42a7515c-2af7-427f-c50f-08de95421048
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 07:40:11.0313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GeRoihS+uUPkwBhbndiNr+XtoYN0wwA7qcyM53lYLpn6R0K/gHng7NU9MhrYwpJVfN128YJy8AzRSrP9esCHmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6246
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
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: BB4193B86FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Apr 7, 2026 at 2:14 PM JST, Matthew Brost wrote:
> On Mon, Apr 06, 2026 at 06:10:07PM -0400, Joel Fernandes wrote:
>>=20
>>=20
>> On 4/6/2026 5:24 PM, Joel Fernandes wrote:
>> >=20
>> >=20
>> > On 4/2/2026 1:59 AM, Matthew Brost wrote:
>> >> On Tue, Mar 31, 2026 at 05:20:34PM -0400, Joel Fernandes wrote:
>> >>> Add TLB (Translation Lookaside Buffer) flush support for GPU MMU.
>> >>>
>> >>> After modifying page table entries, the GPU's TLB must be invalidate=
d
>> >>> to ensure the new mappings take effect. The Tlb struct provides flus=
h
>> >>> functionality through BAR0 registers.
>> >>>
>> >>> The flush operation writes the page directory base address and trigg=
ers
>> >>> an invalidation, polling for completion with a 2 second timeout matc=
hing
>> >>> the Nouveau driver.
>> >>>
>> >>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>> >>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>> >>> ---
>> >>>  drivers/gpu/nova-core/mm.rs     |  1 +
>> >>>  drivers/gpu/nova-core/mm/tlb.rs | 95 ++++++++++++++++++++++++++++++=
+++
>> >>>  drivers/gpu/nova-core/regs.rs   | 42 +++++++++++++++
>> >>>  3 files changed, 138 insertions(+)
>> >>>  create mode 100644 drivers/gpu/nova-core/mm/tlb.rs
>> >>>
>> >>> diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.=
rs
>> >>> index 8f3089a5fa88..cfe9cbe11d57 100644
>> >>> --- a/drivers/gpu/nova-core/mm.rs
>> >>> +++ b/drivers/gpu/nova-core/mm.rs
>> >>> @@ -5,6 +5,7 @@
>> >>>  #![expect(dead_code)]
>> >>> =20
>> >>>  pub(crate) mod pramin;
>> >>> +pub(crate) mod tlb;
>> >>> =20
>> >>>  use kernel::sizes::SZ_4K;
>> >>> =20
>> >>> diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core=
/mm/tlb.rs
>> >>> new file mode 100644
>> >>> index 000000000000..cd3cbcf4c739
>> >>> --- /dev/null
>> >>> +++ b/drivers/gpu/nova-core/mm/tlb.rs
>> >>> @@ -0,0 +1,95 @@
>> >>> +// SPDX-License-Identifier: GPL-2.0
>> >>> +
>> >>> +//! TLB (Translation Lookaside Buffer) flush support for GPU MMU.
>> >>> +//!
>> >>> +//! After modifying page table entries, the GPU's TLB must be flush=
ed to
>> >>> +//! ensure the new mappings take effect. This module provides TLB f=
lush
>> >>> +//! functionality for virtual memory managers.
>> >>> +//!
>> >>> +//! # Example
>> >>> +//!
>> >>> +//! ```ignore
>> >>> +//! use crate::mm::tlb::Tlb;
>> >>> +//!
>> >>> +//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Resul=
t<()> {
>> >>> +//!     // ... modify page tables ...
>> >>> +//!
>> >>> +//!     // Flush TLB to make changes visible (polls for completion)=
.
>> >>> +//!     tlb.flush(pdb_addr)?;
>> >>> +//!
>> >>> +//!     Ok(())
>> >>> +//! }
>> >>> +//! ```
>> >>> +
>> >>> +use kernel::{
>> >>> +    devres::Devres,
>> >>> +    io::poll::read_poll_timeout,
>> >>> +    io::Io,
>> >>> +    new_mutex,
>> >>> +    prelude::*,
>> >>> +    sync::{
>> >>> +        Arc,
>> >>> +        Mutex, //
>> >>> +    },
>> >>> +    time::Delta, //
>> >>> +};
>> >>> +
>> >>> +use crate::{
>> >>> +    driver::Bar0,
>> >>> +    mm::VramAddress,
>> >>> +    regs, //
>> >>> +};
>> >>> +
>> >>> +/// TLB manager for GPU translation buffer operations.
>> >>> +#[pin_data]
>> >>> +pub(crate) struct Tlb {
>> >>> +    bar: Arc<Devres<Bar0>>,
>> >>> +    /// TLB flush serialization lock: This lock is acquired during =
the
>> >>> +    /// DMA fence signalling critical path. It must NEVER be held a=
cross any
>> >>> +    /// reclaimable CPU memory allocations because the memory recla=
im path can
>> >>> +    /// call `dma_fence_wait()`, which would deadlock with this loc=
k held.
>> >>> +    #[pin]
>> >>> +    lock: Mutex<()>,
>> >>> +}
>> >>> +
>> >>> +impl Tlb {
>> >>> +    /// Create a new TLB manager.
>> >>> +    pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self>=
 {
>> >>> +        pin_init!(Self {
>> >>> +            bar,
>> >>> +            lock <- new_mutex!((), "tlb_flush"),
>> >>> +        })
>> >>> +    }
>> >>> +
>> >>> +    /// Flush the GPU TLB for a specific page directory base.
>> >>> +    ///
>> >>> +    /// This invalidates all TLB entries associated with the given =
PDB address.
>> >>> +    /// Must be called after modifying page table entries to ensure=
 the GPU sees
>> >>> +    /// the updated mappings.
>> >>> +    pub(crate) fn flush(&self, pdb_addr: VramAddress) -> Result {
>> >>
>> >> This landed on my list randomly, so I took a look.
>> >>
>> >> Wouldn=E2=80=99t you want to virtualize the invalidation based on you=
r device?
>> >> For example, what if you need to register interface changes on future=
 hardware?
>> >=20
>> > Good point, for future hardware it indeed makes sense. I will do that.
>> Actually, at least in the future as far as I can see, the register defin=
itions
>> are the same for TLB invalidation are the same, so we are good and I wil=
l not be
>> making any change in this regard.
>>=20
>> But, thanks for raising the point and forcing me to double check!
>>=20
>
> Not my driver, but this looks like a classic =E2=80=9Cworks now=E2=80=9D =
change that may
> not hold up later, which is why I replied to something that isn=E2=80=99t=
 really
> my business.
>
> Again, not my area, but I=E2=80=99ve been through this before. Generally,
> getting the abstractions right up front pays off.

Our policy so far has been to introduce abstractions when there is a
justifiable hardware difference within the (reduced) set of GPUs that we
support. Adding HALs imply using virtual calls, which are harder to
trace, or monomorphization using generic types, which complicate the
code (and are hard to justify when there is only one implementation).

`Tlb` is already an abstraction of sorts; the register accesses are
well-contained within this leaf module, so if the need arises to support
a different scheme this can be done transparently to callers, which is
what matter imho.
