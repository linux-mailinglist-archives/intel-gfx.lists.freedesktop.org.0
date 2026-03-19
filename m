Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJDZEbEqvGn4twIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 17:56:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC3F2CF366
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 17:56:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 860B310E143;
	Thu, 19 Mar 2026 16:56:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="MXh9lJGJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011010.outbound.protection.outlook.com [52.101.57.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E854110E143;
 Thu, 19 Mar 2026 16:56:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sFUGysjmjTqIj3N7MNrCxDJdWdWDQfK5LNns8vlM2Jx0J6STCa/ih+n9vEdP2U/dutIR2YKaIeEUbvEQiItETFOofiX1ZWd736Agb/q2xOsrxHsp0uLWY3m4sSv4S38KFplGU5B0+DptlvQaYnUdf+WxrBrQ5uMqVVXVT1tRUOXMc9L4X8o4MIrk6U5q+cDYX6ZEamK4dpuM9vOkp6T1FN5VK+YLHk9KqjbhQobeEKTsyWs5v2ZQoxPKfSAY9S6TLCOwCS8cOOUWmcjTqA5JGcy/XnfzYPEE0ZsrhDA7AV4LDWZlMHbaTUE4fYZhuBq4k/cNLQUJnef+9sQp2R+2qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3J65qkoTYaMl8xOkSyRfQfykNclAHX6diJ+gQjej5sg=;
 b=U9KVo1aicvSSRNourz0IUnGNgUz1L6wg6rZr2z2pd3jKNb77V4MGWx5dcp5ZPwk57qMyZnNxeVXKsAEMIRXd5XsBfi6Mn4+5HiA7M4ESuxhXJtJoxbBaClrAnNcFIp12Dk6P0vhrhOC91u+ojThCFxWQVwfJG5e/pNmob/4DIC/4zywmNNdh7+OKCNP44T88Ni3YyqqMofH9VdWJGoa8aML4aTSLQlMC+6XTw6mpTIu1OxKZ5dZDJblXfb+0nhHuXg4YxCcm8iX2a06zg0hMATw9m0tsAzZNUC2wKQp3bQG33BUJJ2t2HbSnJpk6efADZT1HpiQ1Ne5DA20mME3gxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3J65qkoTYaMl8xOkSyRfQfykNclAHX6diJ+gQjej5sg=;
 b=MXh9lJGJvRK55HYXz5diuCfAZp5Khl+XNZu42LooApg+kG2tZiKcozZfNBhZPw+Nps8WnIRUUJnYGdcAank5PaeTzIq47Ri2aqSP0bpbFQkwJH2bX6gfC8FMbQJ/yaWgGRCCWJomrsgdxVQ13YYz0Z9w2aI3vxJmimqSUxS+/YvaxDpgUOJdUSBDc2GX+TgNxAEp4rLs7QrHBDlpJCQTDQEHmIgusHhVYza7SxRaIoNdHIiBqhjvUvGoe8hlPj9rmAfZ5X7EC0atECtkcWIAoj8Ho/C8d7M1KkLnFgAcJLhjFg5mkQ6lJgKJKsNvxvE8Z5jTR2IHFc311eBhfHobmQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SN7PR12MB7786.namprd12.prod.outlook.com (2603:10b6:806:349::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Thu, 19 Mar
 2026 16:56:06 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.016; Thu, 19 Mar 2026
 16:56:06 +0000
Message-ID: <4728e901-df27-4685-a21a-d33a84946558@nvidia.com>
Date: Thu, 19 Mar 2026 12:56:00 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
To: Gary Guo <gary@garyguo.net>, Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Alex Gaynor <alex.gaynor@gmail.com>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Simona Vetter <simona@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, Nikola Djukic
 <ndjukic@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <DH6QAR1HHXRV.1Y7IZ22HC9FZ3@garyguo.net>
 <DH6QUO2T941E.2S1UP7EABOP42@kernel.org>
 <DH6R6GB10S07.AG2EY39F0P85@garyguo.net>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DH6R6GB10S07.AG2EY39F0P85@garyguo.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BN9PR03CA0844.namprd03.prod.outlook.com
 (2603:10b6:408:13d::9) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SN7PR12MB7786:EE_
X-MS-Office365-Filtering-Correlation-Id: 074ba107-42fe-44b0-1f05-08de85d8690e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|18002099003|56012099003|22082099003|7053199007;
X-Microsoft-Antispam-Message-Info: tyJqTbeSSGm6mQ4oaQ2oUJykJvQQcD4R6eWf03U+fvq2FgQ0Ab/HJdJ9VuT+oTpLNUYjuU7GrdSqAxgnQ+vJmt9Bp/e8Dzjlee54cjdvcQkX+xbjeMDqmvIeoHiWrZ0kJAtYj3kz9c1xOtWcA4inLapJZLVAYaBrsGOrVVucqSTFUY+h22UyPz3Yln0DLTXgo3nkh6pnNeXQBaReEjV/pS8gqDmceHXnSpkbx+BbhShK/rCBIQMVREHyGzz4TQtAJ7Zp26fSTPlpucBePAf04fh0c+4oGzJozN6/x9A3UB+KFJE9qWSYDW7pRKMGgYvvGrr/Ek2ul5R5aqGtcOZmymgRn9X4CcBgMTxdMgA4lNBfUN6G32dV0jSz0jwN1bdIzAH2VVRwvbeCnAKIpDa48OPtX2VLSRf8DR9zqOkEFsk7FR0P3I3Nz8iHtWY/gl/wqZYpzjsRLT+cG+aF8kjA1vFGgw1lkWJxJcXH9rYWrJTu0qEpGiWuPCAVDipN26Bjgo9uZPsQ2nYKeVY20q4z4OHx68K/n5SlDG8AUVorL8mlDZtTn27eeMvi64F4mFKRvbdBRI/Rh4SenNClGGdojgeuUTnWBCr9pVP9kGvNLoCCB0sPTKG7rfxG8O1xvDb23BcE3pmZQhwF2qqWd+Q0FdAG/ULn7lZuKFW6s/g+hefSlTc3hlwSN9UTiq4p8mYJ/l3H+RVwlbTKbN2IhN5rD9m7s2zYYgOXtUnnHKU28u4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(18002099003)(56012099003)(22082099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWZVK09hcENMVEx6anJjdE5WUHdkK0YyZCtxVWVQYW53RFlVYUVoTTdRNkJa?=
 =?utf-8?B?QVhzaWg3bHpUNkpCZEhoQWsrRlUwdWRCYnVNSGpkMTUyRmE2UnQvamt6WHNN?=
 =?utf-8?B?U1Y1MjlHNkoyODV4MENaMGIrc3owRERqWkliNlU2Y25SVnZrc0JPY1hZTGVi?=
 =?utf-8?B?YVVSK2JJRzFpNWFhNHdteGtrMHZyaVdLTnZmb0FzbUM3dFhER0doVmhCV3Zy?=
 =?utf-8?B?ejZMUG9zcmRibzBEVVVySCs0aGgyRFhKUXY1YStQbjREdFlXeGpNb1J5dnc4?=
 =?utf-8?B?eVVwWGFMOVZ0SzNxM2FSdVhYV0VrUmFrcThDaW5WWU5hdTJFZkRtbm9LaGpU?=
 =?utf-8?B?bHpPaDlRUVp5c2tCSUluS2RiS0w5VlJZb0hZVGxOczBHeis5N0hBZjJZaHhD?=
 =?utf-8?B?NTdZblZENFVHdkR0M3d2bVVLUzArSmJkNDRUQ2lkT3Brc1h3Q3pOMWVROFVa?=
 =?utf-8?B?cVFwS2wyOEhXVDhYcGVSc0IrSWNHcnQyK2srTDFUZVVyNDVNdVk1UzF2TjVK?=
 =?utf-8?B?TlQ3WUFSRUEvVHNVaEFDWDM5a1hBVlVubzBSdmhiN3oxeWNDYm5za3duV3Yx?=
 =?utf-8?B?bmV1MkFSOWZLaTFHdUp5K01iWGxUL0Vqc0J5MW5KRUpqL1k4MjdoUUVaTVlr?=
 =?utf-8?B?S3VwaW91MWZoMGg4WmF1bGJIWDRDRjJqekFjSkdBSitPYUdmd2w2ZTh1Mjlr?=
 =?utf-8?B?SzRRZThxRGRrdHhONWt3eUdZVmNlU01YUlpCVm5RYXM5NDJxalhBMmR2TUZV?=
 =?utf-8?B?WjhlU0VYUVFyY0lvZGx5N1JMQkVOWFlzbWV5elFRck1JcWN2R2dzaVhpMzFQ?=
 =?utf-8?B?RGwrcElEMHU5VkN1bzU0OUN2azJ4NzM5d3R5ZllYeVVEbUdpRWhlK3pRcFpR?=
 =?utf-8?B?ZVZ0ZkdiLzJuYm1ZZTdxOFArMUZGekVkK21oRzkzYVJ3bFZwbjA1SVdwZlZI?=
 =?utf-8?B?MElaajE1NEpEdmF6bXNWSEh6MmNqdzZLNWk4V2owODJiQkptTGxlNlI4MzJx?=
 =?utf-8?B?QWxYSGZxVkt2ZFlmeUFIaTZMRERsY2d1SDFXQ2Q3NzRUd1JNUDVtS1hSV0VS?=
 =?utf-8?B?Nms2U2wrZnZMaU1vUmkvMFNnNDNVQ1o3cFljRGFHaUpXOU90YWlWV00rZkJy?=
 =?utf-8?B?dHNXd1hWc2NIWklvYmExZDlWbXFHWElDRXF0dFI0U1Y0UFVNV0tiWjVXejlr?=
 =?utf-8?B?c1NXRFU5ZWZvTGVGejA4MVJYcnA1c1dTQThHMzdsSHRwSXNVMDBkVDNIQ2JU?=
 =?utf-8?B?NFJBWVl4anZITk5wMzFWdnBQbUNBZkFTMEY3TFhtQlM3VzNzQ1hkUmhZY0k0?=
 =?utf-8?B?TWpaTnU1TUdhdXJUQklCakprOThjVlV5Si9pb2F0WjQ5TDN1YlJLak5mYzFz?=
 =?utf-8?B?SHluMnM0UEpwTGtmMHVGbGNjQVF5UTVOc1czNzFWU2t3MFlyZXZWd21NaWVK?=
 =?utf-8?B?ZVMvU0FOUzBSMURFUC9KeWMvWDduN0Q2dHViUGxGbi9SamFkc2NxNlh5NnAz?=
 =?utf-8?B?Z2JNdHZiMFc1Qi9BQWUzOG9RTkJxRmZBZWtmN08xVWcvNmF1dWlUem5HNHJw?=
 =?utf-8?B?TVFWNzdORk9oL29abXVTM2dWOERNdnh0ZFFBc0FGRzFRQXJqSmdUL2E4NHNj?=
 =?utf-8?B?bnVwYk9qZkgxZnRmSjl5U3BqSWRDTDlhQkZvbHFWVDdxcHJ3OXlYYkliMkpJ?=
 =?utf-8?B?WmhKVXJZNlpsajNSUnd6Wk5KVzREOHR2c3YvYm5hTjFpakNpUDdjbm5VNzVI?=
 =?utf-8?B?SUJCaHRUVnFyZ2hBMTFSNlVxNzNUVzRTMDVLZFRKakJhSHpscmtoK0F3NWZT?=
 =?utf-8?B?N2tSWTdnVE81WUZOcWNXVndUMFprNndJckR1bUprdUJYUXZwWDU1WVNKR1NQ?=
 =?utf-8?B?MHV1WEFNL1VkekViVW84RFJhTGhWNTl1QnZZamNyalhFTThzWVZCdlVPZ2Ra?=
 =?utf-8?B?RjI4aDQ4ZWNLYzluUUF3M25PNlNkTCtFWkJJUkowY3ZPOU1BR3VMN3ZHR0pY?=
 =?utf-8?B?S2JxdDl1azB1amNZZWxkak5WK3QxLzdmTHlxV1hua0dFRWhzSmVOaU9mWFpD?=
 =?utf-8?B?ZzdGb1B1dXBpbWFxTitQeFYzNERHUFdtZ0dibzZtY3IvQjdaQSs4dEMxVmhu?=
 =?utf-8?B?dDVWRnB2ZlZpejFRRFU0Zm1MS3ZuVFlXQ1ZvR0R0MEY0MzlLUnFmak1RUHo3?=
 =?utf-8?B?Y1N1dE1pcHR5eXlMUzFPRm4zWFZJcVlHSzd1R2VCVTl4amxlVXovZHdUN2FM?=
 =?utf-8?B?SXczdU40ckNMdDNpU2VZR3R1YUowbldtdWhLeVA5OHhDK3UybXdRRjdqWUJ1?=
 =?utf-8?B?em8rdmUzdXV6ZkVUTGFLQmZIREo2dUVkSE1oSW13UGVYMW1CQkJrQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 074ba107-42fe-44b0-1f05-08de85d8690e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 16:56:05.8406 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NaDyZlMC/OmnPSWOSEjkNAvGdzS3pvi7NY2xaMwiX/msp0uNwEagsp1tPdnp7o1Dkb2Nv67OzmFyiYinJjNLlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7786
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
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,protonmail.com,google.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[53];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid,garyguo.net:email,collabora.com:email]
X-Rspamd-Queue-Id: 8DC3F2CF366
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/19/2026 8:21 AM, Gary Guo wrote:
> On Thu Mar 19, 2026 at 12:05 PM GMT, Danilo Krummrich wrote:
>> On Thu Mar 19, 2026 at 12:39 PM CET, Gary Guo wrote:
>>> On Tue Mar 17, 2026 at 8:17 PM GMT, Joel Fernandes wrote:
>>>> Add a new module `kernel::interop::list` for working with C's doubly
>>>> circular linked lists. Provide low-level iteration over list nodes.
>>>>
>>>> Typed iteration over actual items is provided with a `clist_create`
>>>> macro to assist in creation of the `CList` type.
>>>>
>>>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>>>> Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
>>>> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
>>>> Acked-by: Alexandre Courbot <acourbot@nvidia.com>
>>>> Acked-by: Gary Guo <gary@garyguo.net>
>>>> Acked-by: Miguel Ojeda <ojeda@kernel.org>
>>>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>>>> ---
>>>>  MAINTAINERS                 |   8 +
>>>>  rust/helpers/helpers.c      |   1 +
>>>>  rust/helpers/list.c         |  17 ++
>>>>  rust/kernel/interop.rs      |   9 +
>>>>  rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
>>>>  rust/kernel/lib.rs          |   2 +
>>>>  6 files changed, 379 insertions(+)
>>>>  create mode 100644 rust/helpers/list.c
>>>>  create mode 100644 rust/kernel/interop.rs
>>>>  create mode 100644 rust/kernel/interop/list.rs
>>>>
>>>> +/// Create a C doubly-circular linked list interface [`CList`] from a raw `list_head` pointer.
>>>> +///
>>>> +/// This macro creates a `CList<T, OFFSET>` that can iterate over items of type `$rust_type`
>>>> +/// linked via the `$field` field in the underlying C struct `$c_type`.
>>>> +///
>>>> +/// # Arguments
>>>> +///
>>>> +/// - `$head`: Raw pointer to the sentinel `list_head` object (`*mut bindings::list_head`).
>>>> +/// - `$rust_type`: Each item's rust wrapper type.
>>>> +/// - `$c_type`: Each item's C struct type that contains the embedded `list_head`.
>>>> +/// - `$field`: The name of the `list_head` field within the C struct.
>>>> +///
>>>> +/// # Safety
>>>> +///
>>>> +/// The caller must ensure:
>>>> +///
>>>> +/// - `$head` is a valid, initialized sentinel `list_head` (e.g. via `INIT_LIST_HEAD()`)
>>>> +///   pointing to a list that is not concurrently modified for the lifetime of the [`CList`].
>>>> +/// - The list contains items of type `$c_type` linked via an embedded `$field`.
>>>> +/// - `$rust_type` is `#[repr(transparent)]` over `$c_type` or has compatible layout.
>>>> +///
>>>> +/// # Examples
>>>> +///
>>>> +/// Refer to the examples in the [`crate::interop::list`] module documentation.
>>>> +#[macro_export]
>>>> +macro_rules! clist_create {
>>>> +    (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }) => {{
>>>> +        // Compile-time check that field path is a `list_head`.
>>>> +        // SAFETY: `p` is a valid pointer to `$c_type`.
>>>> +        let _: fn(*const $c_type) -> *const $crate::bindings::list_head =
>>>> +            |p| unsafe { &raw const (*p).$($field).+ };
>>>
>>> Actually, this check is insufficient, you should create a reference instead
>>> (just in case people put this inside `repr(packed)`.
>>>
>>> This could be something like
>>>
>>>     let _ = |p: &$c_type| { _ = &p.$($field).+ }
>>>
>>> ?
>>>
>>>> +
>>>> +        // Calculate offset and create `CList`.
>>>> +        const OFFSET: usize = ::core::mem::offset_of!($c_type, $($field).+);
>>>> +        // SAFETY: The caller of this macro is responsible for ensuring safety.
>>>> +        unsafe { $crate::interop::list::CList::<$rust_type, OFFSET>::from_raw($head) }
>>>
>>> Given that this is unsafe, I am not sure why the macro should have unsafe
>>> keyword in it, rather than just being `clist_create(a, b, c, d)` and just have
>>> user write unsafe.
>>
>> Either you are proposing to not wrap unsafe code within unsafe {} within the
>> macro, such that the user is forced to write an unsafe {} around the macro, but
>> then they calls within the macro are not justified individually, or you propose
>> to let the user write an unsafe {} around the macro regardless of the inner
>> unsafe {} blocks, but then then the compiler warns about an unnecessary unsafe
>> and nothing forces the user to actually wrap it in unsafe {}.
> 
> The former.
> 
> "The caller of this macro is responsible for ensuring safety" justification is
> not really useful here IMO.
> 
> If there're cases where we do want to justify unsafe code that's not immediately
> deferring to the user inside the macro, we could use the SAFETY* trick proposed
> in the thread, without writing an actual `unsafe {}` block.
> 
>>
>> Is there a third option I'm not aware of? I.e. for the above reason
>> impl_device_context_deref!() was designed the same way.
> 
> impl_device_context_deref!() expands to an item, so the user couldn't put an
> `unsafe {}` on the outside. This macro expands to an expression, so users can
> add `unsafe` themselves.
> 
I like Gary's idea. I will drop the unsafe { } blocks within the macro and
we can force the caller to clear the lint. That's the cleanest and most
reasonable IMO, instead of working around the linter.

Unless someone yells, this is what I'll do for the next iteration.

--
Joel Fernandes

